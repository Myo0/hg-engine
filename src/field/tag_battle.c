#include "../../include/config.h"
#include "../../include/types.h"
#include "../../include/script.h"
#include "../../include/pokemon.h"
#include "../../include/save.h"
#include "../../include/task.h"
#include "../../include/party_menu.h"
#include "../../include/bag.h"
#include "../../include/constants/file.h"

#ifdef TAG_BATTLE_PARTY_SELECT

/*
 * "Choose N of your party" for a tag battle (player + AI ally vs. two enemy trainers), used by the Team Rocket HQ Ariana fight.
 * Docs&Changelog/Tag Battle Party Select.md has the script recipe.  Two 0xD0 sub-commands, so the script can put its own scene between them:
 *
 *   TAG_BATTLE_PICK  (arg = result variable): open the game's own "choose N" party screen (Union Room battle-select context, min = max = N).
 *                    Backed out -> result 0.  Confirmed -> the picks (1-based party slots in pick order) are left in x8004..x8009 and result = 1.
 *                    An all-fainted pick is refused (the screen reopens).  Nothing in the party is touched.
 *   TAG_BATTLE_FIGHT (arg = result variable): reads the picks from x8004..x8009, backs up all 6 party Pokemon in a heap block, rewrites the
 *                    SAVE party with just the chosen ones (in pick order) and starts the unmodified native multi-battle
 *                    (SetupAndStartTrainerBattle = the multi_battle script command).  The game copies the battle party back over the
 *                    save party after every battle, which is why the swap has to happen in the save.  When the battle task is done (win or
 *                    loss) the post-battle chosen Pokemon (HP, PP, EXP, level, evolution, held item) go back to their original slots and all 6
 *                    are restored in their original order, BEFORE the script branches (check_battle_won / white_out).  Result 1.
 *                    Invalid picks (nothing picked, an egg, all fainted) -> result 0 and no battle.
 *
 * Script variables: x8000 = ally trainer, x8001 = enemy 1, x8002 = enemy 2 (as multi_battle), x8003 = N for the pick (0 = 3).
 * The battle task's state lives in a heap block: the field overlay (and this code's .bss with it) is unloaded during the battle.
 */

#define TBS_HEAP          HEAPID_WORLD // HEAP_ID_FIELD2: the heap multi_battle's own setup uses; survives the battle
#define TBS_DEFAULT_PICKS 3
#define TBS_MAX_PICKS     6
#define TBS_PICK_VAR      0x8004 // x8004..x8009
#define TBS_BATTLE_ARG    1      // multi_battle's trailing byte; every multi_battle in the game passes 1
#define TBS_MENU_CONTEXT  PARTY_MENU_CONTEXT_UNION_ROOM_BATTLE_SELECT // (not context 23: that one bans Frontier-banned legendaries)

// The game's party slots are 0xEC bytes apart, 8 bytes after the start of struct Party. TBS_MON_SIZE compiles to 0xF0 in this
// repo (padding), so members[] / sizeof must NOT be used for addressing or copying: every slot after the first would be off by 4 * slot.
#define TBS_MON_SIZE 0xEC
#define TBS_MON(party, i) ((struct PartyPokemon *)((u8 *)(party) + 8 + (i) * TBS_MON_SIZE))

#define TBS_PARTY_SLOT_CONFIRMED 6 // PartyMenuArgs.partySlot: 6 = confirmed, 7 = backed out

enum {
    TBS_PICK_OPEN = 0,
    TBS_PICK_WAIT,
    TBS_PICK_OPEN_SUMMARY,
    TBS_PICK_WAIT_SUMMARY,
};

enum {
    TBS_FIGHT_START = 0,
    TBS_FIGHT_WAIT_BATTLE,
};

// Script variables must NOT be written with SetScriptVar from inside a task: for the special variables (x8000+) it resolves the script
// environment through the CURRENT task's environment, i.e. it would write into this task's own heap block.  The pointers into the real script
// environment are taken while the command itself runs (GetVarPointer) and written through later.
struct TagBattlePickEnv {
    FieldSystem *fsys;
    PartyMenuArgs *menu;
    u8 *summary; // PokemonSummaryArgs while the Summary screen is open
    u16 *resultPtr;
    u16 *picksPtr[TBS_MAX_PICKS];
    u8 pickCount;
};

struct TagBattleFightEnv {
    u32 *winFlag;
    FieldSystem *fsys;
    u16 *resultPtr;
    u16 ally;
    u16 enemy1;
    u16 enemy2;
    u8 pickCount;
    u8 chosen[TBS_MAX_PICKS]; // ORIGINAL party slots (0-based), in pick order
    s32 backupCount;
    u8 backup[6][TBS_MON_SIZE];
};

void LONG_CALL SetupAndStartTrainerBattle(TaskManager *taskManager, u32 opponentTrainer1, u32 opponentTrainer2, u32 followerTrainerNum, u32 a4, u32 a5, u32 heapID, u32 *winFlag);
void LONG_CALL FieldSystem_LaunchApplication(void *fsys, const void *tmpl, void *args);
BOOL LONG_CALL FieldSystem_ApplicationIsRunning(void *fsys);
void *LONG_CALL Save_Mailbox_Get(void *saveData);
void *LONG_CALL Save_PlayerData_GetOptionsAddr(void *saveData);
void *LONG_CALL Heap_Alloc(int heapId, u32 size);
void LONG_CALL Heap_Free(void *ptr);
extern const u8 gOverlayTemplate_PartyMenu[];
extern const u8 gOverlayTemplate_PokemonSummary[];
u8 *LONG_CALL PokemonSummary_CreateArgs(void *fsys, u32 heapId, int a2);
#define TBS_SUMMARY_PARTY_SLOT 0x14 // PokemonSummaryArgs.partySlot

// plain word loops (the compiler must not turn these into memcpy/memset calls: this overlay links against no libc)
__attribute__((optimize("no-tree-loop-distribute-patterns"))) static void TbsCopy(void *dst, const void *src, u32 bytes)
{
    u32 *d = dst;
    const u32 *s = src;
    for (u32 i = 0; i < bytes / 4; i++) {
        d[i] = s[i];
    }
}

__attribute__((optimize("no-tree-loop-distribute-patterns"))) static void TbsZero(void *dst, u32 bytes)
{
    u32 *d = dst;
    for (u32 i = 0; i < bytes / 4; i++) {
        d[i] = 0;
    }
}

static u32 TbsCountNonEgg(struct Party *party)
{
    u32 n = 0;
    for (s32 i = 0; i < party->count && i < 6; i++) {
        if (!GetMonData(TBS_MON(party, i), MON_DATA_IS_EGG, NULL)) {
            n++;
        }
    }
    return n;
}

static void TbsOpenPicker(struct TagBattlePickEnv *env)
{
    FieldSystem *fsys = env->fsys;
    PartyMenuArgs *menu = env->menu;

    if (menu != NULL) { // coming back from the Summary screen: same args, the picks so far are in them
        FieldSystem_LaunchApplication(fsys, gOverlayTemplate_PartyMenu, menu);
        return;
    }
    menu = Heap_Alloc(TBS_HEAP, sizeof(PartyMenuArgs));
    TbsZero(menu, (sizeof(PartyMenuArgs) + 3) & ~3u);
    menu->party = SaveData_GetPlayerPartyPtr(fsys->savedata);
    menu->bag = Sav2_Bag_get(fsys->savedata);
    menu->mailbox = Save_Mailbox_Get(fsys->savedata);
    menu->options = Save_PlayerData_GetOptionsAddr(fsys->savedata);
    menu->context = TBS_MENU_CONTEXT;
    menu->fieldSystem = fsys;
    menu->menuInputStatePtr = (u8 *)fsys + 0x10C; // &fsys->menuInputState
    menu->maxLevel = 100;
    menu->minMonsToSelect = env->pickCount;
    menu->maxMonsToSelect = env->pickCount;
    env->menu = menu;
    FieldSystem_LaunchApplication(fsys, gOverlayTemplate_PartyMenu, menu);
}

static void TbsStorePicks(u16 **picksPtr, const u8 *slots1Based, u32 count)
{
    for (u32 i = 0; i < TBS_MAX_PICKS; i++) {
        *picksPtr[i] = i < count ? slots1Based[i] : 0;
    }
}

static BOOL Task_TagBattlePick(TaskManager *taskman)
{
    struct TagBattlePickEnv *env = taskman->env;
    struct Party *party = SaveData_GetPlayerPartyPtr(env->fsys->savedata);

    switch (taskman->state) {
    case TBS_PICK_OPEN:
        TbsOpenPicker(env);
        taskman->state = TBS_PICK_WAIT;
        break;

    case TBS_PICK_WAIT: {
        u8 picks[TBS_MAX_PICKS];
        BOOL valid = TRUE;
        BOOL anyAlive = FALSE;
        u32 i;

        if (FieldSystem_ApplicationIsRunning(env->fsys)) {
            break;
        }
        if (env->menu->partySlot < 6) { // the player asked for a Pokemon's Summary: show it, then reopen the picker
            taskman->state = TBS_PICK_OPEN_SUMMARY;
            break;
        }
        if (env->menu->partySlot != TBS_PARTY_SLOT_CONFIRMED) { // backed out (7)
            Heap_Free(env->menu);
            TbsStorePicks(env->picksPtr, NULL, 0);
            *env->resultPtr = 0;
            Heap_Free(env);
            return TRUE;
        }
        for (i = 0; i < env->pickCount; i++) {
            u8 v = env->menu->selectedOrder[i]; // 1-based, 0 = not picked
            if (v == 0 || v > 6) {
                valid = FALSE;
                break;
            }
            picks[i] = v;
            if (GetMonData(TBS_MON(party, v - 1), MON_DATA_HP, NULL) != 0) {
                anyAlive = TRUE;
            }
        }
        Heap_Free(env->menu);
        env->menu = NULL;
        if (!valid || !anyAlive) { // an all-fainted team would end the battle at once: pick again
            taskman->state = TBS_PICK_OPEN;
            break;
        }
        TbsStorePicks(env->picksPtr, picks, env->pickCount);
        *env->resultPtr = 1;
        Heap_Free(env);
        return TRUE;
    }

    case TBS_PICK_OPEN_SUMMARY:
        env->summary = PokemonSummary_CreateArgs(env->fsys, TBS_HEAP, 0);
        env->summary[TBS_SUMMARY_PARTY_SLOT] = env->menu->partySlot;
        FieldSystem_LaunchApplication(env->fsys, gOverlayTemplate_PokemonSummary, env->summary);
        taskman->state = TBS_PICK_WAIT_SUMMARY;
        break;

    case TBS_PICK_WAIT_SUMMARY:
        if (FieldSystem_ApplicationIsRunning(env->fsys)) {
            break;
        }
        env->menu->partySlot = env->summary[TBS_SUMMARY_PARTY_SLOT]; // the slot the player left the Summary on
        Heap_Free(env->summary);
        env->summary = NULL;
        taskman->state = TBS_PICK_OPEN;
        break;
    }
    return FALSE;
}

BOOL TagBattlePick_Start(SCRIPTCONTEXT *ctx, u16 resultVar)
{
    struct Party *party = SaveData_GetPlayerPartyPtr(ctx->fsys->savedata);
    struct TagBattlePickEnv *env;
    u32 picks = GetScriptVar(0x8003);
    u32 nonEgg = TbsCountNonEgg(party);

    if (picks == 0) {
        picks = TBS_DEFAULT_PICKS;
    }
    if (picks > nonEgg) { // the picker could never be confirmed otherwise
        picks = nonEgg;
    }
    if (picks > TBS_MAX_PICKS) {
        picks = TBS_MAX_PICKS;
    }
    for (u32 i = 0; i < TBS_MAX_PICKS; i++) {
        SetScriptVar(TBS_PICK_VAR + i, 0);
    }
    if (picks == 0) {
        SetScriptVar(resultVar, 0);
        return FALSE;
    }
    env = Heap_Alloc(TBS_HEAP, sizeof(struct TagBattlePickEnv));
    env->fsys = ctx->fsys;
    env->menu = NULL;
    env->summary = NULL;
    env->resultPtr = GetVarPointer(ctx->fsys, resultVar);
    for (u32 i = 0; i < TBS_MAX_PICKS; i++) {
        env->picksPtr[i] = GetVarPointer(ctx->fsys, TBS_PICK_VAR + i);
    }
    env->pickCount = picks;
    TaskManager_Call(ctx->taskman, Task_TagBattlePick, env);
    return TRUE;
}

static BOOL Task_TagBattleFight(TaskManager *taskman)
{
    struct TagBattleFightEnv *env = taskman->env;
    struct Party *party = SaveData_GetPlayerPartyPtr(env->fsys->savedata);
    u32 i;

    switch (taskman->state) {
    case TBS_FIGHT_START:
        // swap: back up the whole party, then leave only the chosen ones (in pick order) in the save party
        env->backupCount = party->count;
        for (i = 0; i < 6; i++) {
            TbsCopy(&env->backup[i], TBS_MON(party, i), TBS_MON_SIZE);
        }
        for (i = 0; i < env->pickCount; i++) {
            TbsCopy(TBS_MON(party, i), &env->backup[env->chosen[i]], TBS_MON_SIZE);
        }
        for (; i < 6; i++) {
            TbsZero(TBS_MON(party, i), TBS_MON_SIZE);
        }
        party->count = env->pickCount;

        SetupAndStartTrainerBattle(taskman, env->enemy1, env->enemy2, env->ally, 0, TBS_BATTLE_ARG, TBS_HEAP, env->winFlag);
        taskman->state = TBS_FIGHT_WAIT_BATTLE;
        break;

    case TBS_FIGHT_WAIT_BATTLE:
        // the battle task has finished (win or loss): merge the post-battle chosen Pokemon home, restore the rest, before the script branches
        for (i = 0; i < env->pickCount; i++) {
            TbsCopy(&env->backup[env->chosen[i]], TBS_MON(party, i), TBS_MON_SIZE);
        }
        for (i = 0; i < 6; i++) {
            TbsCopy(TBS_MON(party, i), &env->backup[i], TBS_MON_SIZE);
        }
        party->count = env->backupCount;
        *env->resultPtr = 1;
        Heap_Free(env);
        return TRUE;
    }
    return FALSE;
}

BOOL TagBattleFight_Start(SCRIPTCONTEXT *ctx, u16 resultVar)
{
    FieldSystem *fsys = ctx->fsys;
    struct Party *party = SaveData_GetPlayerPartyPtr(fsys->savedata);
    struct TagBattleFightEnv *env;
    u8 chosen[TBS_MAX_PICKS];
    u32 count = 0;
    BOOL anyAlive = FALSE;
    u32 i;

    for (i = 0; i < TBS_MAX_PICKS; i++) {
        u16 v = GetScriptVar(TBS_PICK_VAR + i);
        if (v == 0) {
            break;
        }
        if (v > 6 || v > party->count || GetMonData(TBS_MON(party, v - 1), MON_DATA_IS_EGG, NULL)) {
            count = 0; // not a valid pick (the party changed since the picker): refuse
            break;
        }
        if (GetMonData(TBS_MON(party, v - 1), MON_DATA_HP, NULL) != 0) {
            anyAlive = TRUE;
        }
        chosen[count++] = v - 1;
    }
    if (count == 0 || !anyAlive) {
        SetScriptVar(resultVar, 0);
        return FALSE;
    }

    env = Heap_Alloc(TBS_HEAP, sizeof(struct TagBattleFightEnv));
    TbsZero(env, (sizeof(struct TagBattleFightEnv) + 3) & ~3u);
    env->fsys = fsys;
    env->winFlag = FieldSysGetAttrAddr(fsys, 24); // SCRIPTENV_BATTLE_WIN_FLAG
    env->resultPtr = GetVarPointer(fsys, resultVar);
    env->ally = GetScriptVar(0x8000);
    env->enemy1 = GetScriptVar(0x8001);
    env->enemy2 = GetScriptVar(0x8002);
    env->pickCount = count;
    for (i = 0; i < count; i++) {
        env->chosen[i] = chosen[i];
    }
    TaskManager_Call(ctx->taskman, Task_TagBattleFight, env);
    return TRUE;
}

#endif // TAG_BATTLE_PARTY_SELECT
