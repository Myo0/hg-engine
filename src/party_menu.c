#include "../include/party_menu.h"

#include "../include/bag.h"
#include "../include/battle.h"
#include "../include/config.h"
#include "../include/constants/buttons.h"
#include "../include/constants/file.h"
#include "../include/constants/item.h"
#include "../include/constants/moves.h"
#include "../include/constants/species.h"
#include "../include/message.h"
#include "../include/overlay.h"
#include "../include/pokemon.h"
#include "../include/save.h"
#include "../include/script.h"
#include "../include/system.h"
#include "../include/task.h"
#include "../include/types.h"
#include "../include/window.h"

extern const u16 sButtonFrameTileOffsets[];
extern const u8 sButtonRects[][4];
extern const WindowTemplate sButtonWindowTemplates[];
extern const s8 sButtonWindowIDs[][2][8];

// Vanilla action-function dispatch table consumed by GetPartyMenuContextMenuActionFunc
// (0x0207F42C) -- see rom.ld for how this address was confirmed. Index PARTY_MON_CONTEXT_MENU_UNUSED
// is vanilla-inert (LIST_CANCEL), repurposed below for a custom debug button.
extern u32 sPartyContextMenuActionFuncs[];

// Already bound (rom.ld, right after PartyMenu_DisableMainScreenBlend_AfterYesNo) but not declared
// anywhere. Redraws a party slot's whole panel (nickname/level/HP text/HP bar) straight from
// monsDrawState -- pokeheartgold src/party_context_menu.c:606, the same real function the game
// calls after an item changes a mon's HP.
void LONG_CALL sub_0207D5DC(struct PartyMenu *partyMenu, u8 partySlot);

// mirrors the button layout
static const u8 sPartyMenuRotomCatalogFormOrder[] = { 3, 4, 5, /*quit*/ 0, 0, 1, 2 };

u32 LONG_CALL getButtonColorDepressed(int selection);
u32 LONG_CALL getButtonColorRaised(int selection);
void PartyMenu_ShowRotomCatalogList(struct PartyMenu *partyMenu);
void LONG_CALL PartyMonContextMenuAction_SetHP(struct PartyMenu *partyMenu, int *pState);

// Already real, compiled, decompiled functions elsewhere in this repo (src/pokemon.c,
// src/item.c) but never declared in a header, since nothing has called them until now.
BOOL GetMonMachineMoveCompat(struct PartyPokemon *pp, u16 machineMoveIndex);
u16 ItemToMachineMoveIndex(u16 itemId);

// Electrum: Teleport isn't TM/HM-taught in this hack (absent from sMachineMoves[] in
// src/item.c), so unlike Fly/Dig/Flash there's no compatibility bitfield to check -- this is a
// fixed species list (vanilla-across-generations Teleport learnset, user-supplied 2026-10-07).
// Alolan Raichu / Alolan Exeggutor / female Meowstic need species+form resolved together (a live
// party mon stores species and form as separate fields -- confirmed this session via the save
// format work in PKCalc's moveset_import.js -- unlike Trainers.c's MON_WITH_FORM(...) authoring
// macro, which bakes form into a single resolved species id at compile time). Deoxys intentionally
// checked on raw species alone: all 4 formes share one species id here (form doesn't move it into
// a different numbered slot the way Alolan/Galarian/Hisuian/Paldean forms do), so "all forms"
// falls out for free.
static BOOL CanLearnTeleport(struct PartyPokemon *pp)
{
    u32 species = GetMonData(pp, MON_DATA_SPECIES, NULL);

    switch (species) {
    case SPECIES_ABRA: case SPECIES_KADABRA: case SPECIES_ALAKAZAM:
    case SPECIES_MEWTWO:
    case SPECIES_NATU: case SPECIES_XATU:
    case SPECIES_RALTS: case SPECIES_KIRLIA: case SPECIES_GARDEVOIR: case SPECIES_GALLADE:
    case SPECIES_CLAYDOL:
    case SPECIES_DEOXYS:
    case SPECIES_ELGYEM: case SPECIES_BEHEEYEM:
    case SPECIES_ESPURR:
    case SPECIES_MEOWSTIC: // base/male; female is a separate species+form slot, handled below
    case SPECIES_COSMOG: case SPECIES_COSMOEM: case SPECIES_SOLGALEO: case SPECIES_LUNALA:
    case SPECIES_BUTTERFREE:
    case SPECIES_CLEFAIRY: case SPECIES_CLEFABLE:
    case SPECIES_JIGGLYPUFF: case SPECIES_WIGGLYTUFF:
    case SPECIES_VENOMOTH:
    case SPECIES_ARCANINE:
    case SPECIES_SLOWPOKE: case SPECIES_SLOWBRO:
    case SPECIES_MAGNEMITE: case SPECIES_MAGNETON:
    case SPECIES_SHELLDER: case SPECIES_CLOYSTER:
    case SPECIES_DROWZEE: case SPECIES_HYPNO:
    case SPECIES_VOLTORB: case SPECIES_ELECTRODE:
    case SPECIES_EXEGGCUTE: case SPECIES_EXEGGUTOR: // base Exeggutor; Alolan handled below
    case SPECIES_CHANSEY:
    case SPECIES_STARYU: case SPECIES_STARMIE:
    case SPECIES_MR_MIME:
    case SPECIES_JYNX:
    case SPECIES_ELECTABUZZ:
    case SPECIES_MAGMAR:
    case SPECIES_PORYGON:
    case SPECIES_MEW:
        return TRUE;
    default:
        break;
    }

    {
        u16 form = GetMonData(pp, MON_DATA_FORM, NULL);
        u32 resolvedSpecies = PokeOtherFormMonsNoGet(species, form);
        if (resolvedSpecies == SPECIES_RAICHU_ALOLAN
            || resolvedSpecies == SPECIES_EXEGGUTOR_ALOLAN
            || resolvedSpecies == SPECIES_MEOWSTIC_FEMALE) {
            return TRUE;
        }
    }

    return FALSE;
}

u8 LONG_CALL sub_0207B0B0(struct PartyMenu *wk, u8 *buf)
{
    struct PartyPokemon *pp = Party_GetMonByIndex(wk->args->party, wk->partyMonIndex);
    u16 move;
    u8 fieldMoveIndex = 0;
    u8 i;
    u8 count = 0;
    u8 fieldEffect;
    u8 j, k;
    BOOL alreadyAdded;
    static const struct { u16 item; u16 move; u8 menuId; } sLearnableMachineFieldMoves[] = {
        { ITEM_HM02, MOVE_FLY, PARTY_MON_CONTEXT_MENU_FLY },
        { ITEM_TM028, MOVE_DIG, PARTY_MON_CONTEXT_MENU_DIG },
        { ITEM_TM070, MOVE_FLASH, PARTY_MON_CONTEXT_MENU_FLASH },
    };

    u8 isEgg = GetMonData(pp, MON_DATA_IS_EGG, NULL);
    u32 item = GetMonData(pp, MON_DATA_HELD_ITEM, NULL);

    buf[count] = PARTY_MON_CONTEXT_MENU_SUMMARY;
    ++count;
    if (!FieldSystem_MapIsBattleTowerMultiPartnerSelectRoom(wk->args->fieldSystem)) {
        buf[count] = PARTY_MON_CONTEXT_MENU_SWITCH;
        ++count;
        if (!isEgg) {
            if (IS_ITEM_MAIL(item)) {
                buf[count] = PARTY_MON_CONTEXT_MENU_MAIL;
            } else {
                buf[count] = PARTY_MON_CONTEXT_MENU_ITEM;
            }
            ++count;
            buf[count] = PARTY_MON_CONTEXT_MENU_QUIT;
            ++count;

            // here is where a custom check would go.  replace the below for loop with your own checks

            // Porta PC HP debug button -- flag 397 clear means the Porta PC is active (same gate
            // field_request.c's R-button handler uses). Patching the vanilla action-func table is
            // idempotent, so just redoing it every time this menu opens is fine.
            if (CheckScriptFlag(397) == FALSE) {
                sPartyContextMenuActionFuncs[PARTY_MON_CONTEXT_MENU_UNUSED] = (u32)PartyMonContextMenuAction_SetHP;
                buf[count] = PARTY_MON_CONTEXT_MENU_UNUSED;
                ++count;
            }

            for (i = 0; i < MAX_MON_MOVES && count < MAX_BUTTONS_IN_PARTY_MENU; ++i) {
                move = GetMonData(pp, MON_DATA_MOVE1 + i, NULL);
                if (move == MOVE_NONE) {
                    break;
                }

                fieldEffect = MoveId_GetFieldEffectId(move);
                if (fieldEffect != 0xFF) {
                    buf[count] = fieldEffect;
                    ++count;
                    PartyMenu_ContextMenuAddFieldMove(wk, move, fieldMoveIndex);
                    ++fieldMoveIndex;
                }
            }

            // Electrum: also offer field moves the mon doesn't currently know but whose species
            // CAN learn -- selecting one runs the exact same real field-move action a mon that
            // genuinely knows it would (PartyMenuContextMenuAction_FieldMoveCommon only re-checks
            // field conditions -- badge, terrain, etc. -- never the mon's own moveset again).
            // Doesn't teach/add the move, just offers the action. See
            // project_fly_without_knowing_feasibility.md for the research this is built from.
            //
            // The on-screen button layout (sButtonRects/sButtonWindowIDs, native vanilla data, not
            // decompiled here) is a hard-capped MAX_BUTTONS_IN_PARTY_MENU (8) slots -- every
            // insertion below (and the real-move loop above) is bounds-checked against that so a
            // mon with several real field moves plus multiple newly-learnable ones can never push
            // past what the menu can actually render; once full, remaining candidates are simply
            // not offered rather than overflowing anything.
            for (j = 0; j < 3 && count < MAX_BUTTONS_IN_PARTY_MENU; ++j) {
                if (!GetMonMachineMoveCompat(pp, ItemToMachineMoveIndex(sLearnableMachineFieldMoves[j].item))) {
                    continue;
                }
                alreadyAdded = FALSE;
                for (k = 0; k < count; ++k) {
                    if (buf[k] == sLearnableMachineFieldMoves[j].menuId) {
                        alreadyAdded = TRUE;
                        break;
                    }
                }
                if (!alreadyAdded) {
                    buf[count] = sLearnableMachineFieldMoves[j].menuId;
                    ++count;
                    // Field-move button text is positional, not keyed by menu id -- PartyMenu_
                    // OpenContextMenu pulls the Nth field-move-range button's label from
                    // contextMenuStrings[FIELD_MOVES_BEGIN + N] in iteration order, regardless of
                    // which move it actually is. Without this call that slot is never populated
                    // and the button renders with blank text (confirmed live 2026-10-07).
                    // fieldMoveIndex must keep counting on from wherever the real-move loop above
                    // left off, not restart at 0.
                    PartyMenu_ContextMenuAddFieldMove(wk, sLearnableMachineFieldMoves[j].move, fieldMoveIndex);
                    ++fieldMoveIndex;
                }
            }

            if (count < MAX_BUTTONS_IN_PARTY_MENU && CanLearnTeleport(pp)) {
                alreadyAdded = FALSE;
                for (k = 0; k < count; ++k) {
                    if (buf[k] == PARTY_MON_CONTEXT_MENU_TELEPORT) {
                        alreadyAdded = TRUE;
                        break;
                    }
                }
                if (!alreadyAdded) {
                    buf[count] = PARTY_MON_CONTEXT_MENU_TELEPORT;
                    ++count;
                    PartyMenu_ContextMenuAddFieldMove(wk, MOVE_TELEPORT, fieldMoveIndex);
                    ++fieldMoveIndex;
                }
            }
        } else {
            buf[count] = PARTY_MON_CONTEXT_MENU_QUIT;
            ++count;
        }
    } else {
        buf[count] = PARTY_MON_CONTEXT_MENU_QUIT;
        ++count;
    }

    return count;
}

void LONG_CALL sub_0207AFC4(struct PartyMenu *wk)
{
    ClearFrameAndWindow2(&wk->windows[PARTY_MENU_WINDOW_ID_32], TRUE);

    u8 *buf;
    buf = sys_AllocMemory(HEAP_ID_PARTY_MENU, MAX_BUTTONS_IN_PARTY_MENU);
    u8 numItems;

    switch (wk->args->context) //(partyMenu->args->context)
    {
    case PARTY_MENU_CONTEXT_0:
        numItems = sub_0207B0B0(wk, buf);
        break;
    case PARTY_MENU_CONTEXT_UNION_ROOM_BATTLE_SELECT:
    case PARTY_MENU_CONTEXT_17:
        numItems = sub_0207B23C(wk, buf);
        break;
    case PARTY_MENU_CONTEXT_ATTACH_CAPSULE:
        numItems = PartyMenu_SetContextMenuItems_GiveCapsule(wk, buf);
        break;
    case PARTY_MENU_CONTEXT_18:
        numItems = sub_0207B1C8(wk, buf);
        break;
    case PARTY_MENU_CONTEXT_SPIN_TRADE:
        numItems = PartyMenu_SetContextMenuItems_SpinTrade(wk, buf);
        break;
    case PARTY_MENU_CONTEXT_BATTLE_HALL:
        numItems = PartyMenu_SetContextMenuItems_BattleHallEntry(wk, buf);
        break;
    case PARTY_MENU_CONTEXT_23:
        numItems = sub_0207B2DC(wk, buf);
        break;
    default:
        numItems = sub_0207B200(wk, buf);
        break;
    }

    PartyMenu_OpenContextMenu(wk, buf, numItems);
    Heap_FreeExplicit(HEAP_ID_PARTY_MENU, buf);
    sub_0207D1C8(wk);
    PartyMenu_PrintMessageOnWindow33(wk, -1, TRUE);
    thunk_Sprite_SetPalIndex(wk->sprites[PARTY_MENU_SPRITE_ID_CURSOR], 1);
}

/*
 * @brief hooks rare candy usage in the bag to allow for repeated use without returning to the bag between each
 * thanks to yako for the for the format
 */
int PartyMenu_ItemUseFunc_LevelUpLearnMovesLoop_Case6(struct PartyMenu *wk)
{
    struct PartyPokemon *mon = Party_GetMonByIndex(wk->args->party, wk->partyMonIndex);
    wk->args->species = GetMonEvolution(wk->args->party, mon, EVOCTX_LEVELUP, EVO_NONE, (int *)&wk->args->evoMethod);
    if (wk->args->species != SPECIES_NONE) {
        wk->args->selectedAction = 0x9;
        return 0x20;
    }
    wk->args->selectedAction = 0x0;
    if (Bag_HasItem(wk->args->bag, wk->args->itemId, 1, HEAP_ID_PARTY_MENU)) {
        ClearFrameAndWindow2(&wk->windows[34], TRUE);
        PartyMenu_PrintMessageOnWindow32(wk, 33, TRUE); // message index in 300.txt
        return 0x4;
    }
    return 0x20;
}

/*
 * @brief hooks into the ending of pokeheartgold PartyMenu_ItemUseFunc_WaitTextPrinterThenExit
 * to allow for item reuse if not an evo item and the bag has more of the item
 */
int PartyMenu_ItemUseFunc_ReuseItem(struct PartyMenu *wk)
{
    wk->args->selectedAction = 0;
    if (GetItemData(wk->args->itemId, ITEM_PARAM_EVOLUTION, HEAP_ID_PARTY_MENU) == 0 && Bag_HasItem(wk->args->bag, wk->args->itemId, 1, HEAP_ID_PARTY_MENU)) {
        ClearFrameAndWindow2(&wk->windows[34], TRUE);
        PartyMenu_PrintMessageOnWindow32(wk, 33, TRUE); // message index in 300.txt
        return 0x4;
    }
    return 0x20;
}

void PartyMenu_LearnMoveToSlot(struct PartyMenu *partyMenu, struct PartyPokemon *mon, int moveIdx)
{
    int data = partyMenu->args->moveId;
    SetMonData(mon, MON_DATA_MOVE1 + moveIdx, &data);
    data = 0;
    SetMonData(mon, MON_DATA_MOVE1PPUP + moveIdx, &data);
    data = GetMoveMaxPP(partyMenu->args->moveId, 0);
    SetMonData(mon, MON_DATA_MOVE1PP + moveIdx, &data);
    if (partyMenu->args->itemId != ITEM_NONE) {
#ifdef REUSABLE_TMS
        BOOL consumeItem = IS_ITEM_TR(partyMenu->args->itemId);
#else
        BOOL consumeItem = IS_ITEM_TM(partyMenu->args->itemId) || IS_ITEM_TR(partyMenu->args->itemId);
#endif // REUSABLE_TMS
        if (consumeItem) {
            Bag_TakeItem(partyMenu->args->bag, partyMenu->args->itemId, 1, HEAP_ID_PARTY_MENU);
        }
        MonApplyFriendshipMod(mon, 4, PartyMenu_GetCurrentMapSec(partyMenu));
        ApplyMonMoodModifier(mon, 3);
    }
}

void LONG_CALL PartyMonContextMenuAction_RotomCatalog(struct PartyMenu *partyMenu, int *pState)
{
    u8 form = 0;
    u8 sel = partyMenu->contextMenuButtonAnim.selection;
    if (sel <= 6) {
        form = sPartyMenuRotomCatalogFormOrder[sel];
    }
    partyMenu->args->species = PokeOtherFormMonsNoGet(SPECIES_ROTOM, form);
    Mon_UpdateRotomForm(Party_GetMonByIndex(partyMenu->args->party, partyMenu->partyMonIndex), form, 0);
    // TODO eventually expand PartyMenu_FormChangeScene_Begin with animations for Rotom
    PartyMenu_FormChangeScene_Begin(partyMenu);
    PartyMenu_DeleteContextMenuAndList(partyMenu);
    *pState = PARTY_MENU_STATE_FORM_CHANGE_ANIM;
}

void LONG_CALL PartyMonContextMenuAction_QuitToBag(struct PartyMenu *partyMenu, int *pState)
{
    // clean up submenu UI elements
    ClearFrameAndWindow2(&partyMenu->windows[PARTY_MENU_WINDOW_ID_33], TRUE);
    PartyMenu_DeleteContextMenuAndList(partyMenu);
    PartyMenu_DisableMainScreenBlend_AfterYesNo();

    // fully quit out rather than just quitting the submenu
    partyMenu->args->selectedAction = PARTY_MENU_ACTION_RETURN_0;
    *pState = PARTY_MENU_STATE_BEGIN_EXIT;
}

// --- HP pre-damage live scroller (Phase 2) --------------------------------------------------
//
// Phase 2 previously tried to borrow the field system's own persistent dialogue window
// (SCRIPTENV_WINDOW) from a detached SysTask after fully closing PartyMenu -- see
// project_party_menu_hp_debug_button.md for the full saga (hang, then black screen, then a crash,
// each from a different missing piece of that window's lifecycle). The actual problem was
// architectural: outside of an active dialogue/script session, nothing currently owns or has
// correctly bound that window, so every attempt to use it from a cold context fought unknown
// engine state one layer at a time.
//
// This rewrite instead stays inside PartyMenu entirely, using two things that are already
// correctly initialized the whole time the player is looking at the context menu:
// 1. `partyMenu->itemUseCallback` + PARTY_MENU_STATE_ITEM_USE_CB (pokeheartgold src/party_menu.c:
//    310) -- a real, intentional per-frame extension seam already in PartyMenu's own vanilla
//    switch (PartyMenuApp_Main). Setting the callback and jumping to this state calls our function
//    every frame with no SysTask, no binary patching of the vanilla switch, and no need to exit
//    PartyMenu at all. PartyMonContextMenuAction_RotomCatalog (above) already proves "clean up the
//    context popup, then transition to a different PartyMenu state" is a safe, shipped pattern.
// 2. sub_0207D5DC (pokeheartgold src/party_context_menu.c:606) -- the real vanilla "redraw this
//    party slot's whole panel from monsDrawState" call, the same one the game uses after an item
//    changes a mon's HP. No AddWindow, no AddWindowParameterized, no font/printer lifecycle to get
//    right: write our live-edited value into monsDrawState[partySlot].hp and call this, and the HP
//    text AND the HP bar (color + length) redraw correctly together, live, every tick it changes.
// Classic "tap to step once, hold to auto-repeat, hold longer to go very fast" timing. Always
// steps by 1 HP -- only the rate changes -- so it stays precise right up until release.
#define HP_SCROLL_INITIAL_DELAY 20 // frames (~1/3s at 60fps) before auto-repeat kicks in
#define HP_SCROLL_REPEAT_RATE 4 // frames between steps at the normal auto-repeat tier
#define HP_SCROLL_TURBO_REPEAT_RATE 0 // frames between steps once turbo kicks in -- every tick (60/sec)
#define HP_SCROLL_TURBO_AFTER_REPEATS 7 // normal-tier repeats (~1/2s) before turbo kicks in

struct SetHPCallbackEnv {
    struct PartyPokemon *pp;
    u8 partySlot;
    int value;
    int originalHp; // restored into monsDrawState on B-cancel.
    int maxHp;
    int lastDrawnValue;
    int holdTimer; // see HP_SCROLL_INITIAL_DELAY/HP_SCROLL_REPEAT_RATE.
    int repeatCount; // consecutive auto-repeat steps fired this hold -- ramps into turbo.
};

static struct SetHPCallbackEnv sSetHPCallbackEnv;

// itemUseCallback shape (int (*)(PartyMenu*)) -- called every frame by PartyMenu's own vanilla
// PartyMenuApp_Main while *pState == PARTY_MENU_STATE_ITEM_USE_CB. Returning that same state keeps
// us ticking; returning PARTY_MENU_STATE_1 hands control back to normal party-list browsing.
static int PartyMenuCallback_SetHP(struct PartyMenu *partyMenu)
{
    struct SetHPCallbackEnv *env = &sSetHPCallbackEnv;

    // No "skip the first tick" guard here: unlike the old SysTask-based design, the context menu's
    // own button-press animation (pokeheartgold src/party_context_menu.c:1169-1224,
    // PartyMenu_HandleInput_ContextMenu) already spans several real frames between the player's
    // A-press and this callback's first invocation, so the A bit in gSystem.newKeys is long gone by
    // then. A guard here was swallowing a real commit press instead, forcing a second one.

    BOOL up = (gSystem.heldKeys & PAD_KEY_UP) != 0;
    BOOL down = (gSystem.heldKeys & PAD_KEY_DOWN) != 0;

    if (gSystem.newKeys & (PAD_KEY_UP | PAD_KEY_DOWN)) {
        env->holdTimer = HP_SCROLL_INITIAL_DELAY; // fresh press -- step now, delay before repeating
        env->repeatCount = 0;
    } else if (up || down) {
        if (env->holdTimer > 0) {
            --env->holdTimer;
            up = down = FALSE; // still within the initial delay -- not time to step yet
        } else {
            BOOL turbo = env->repeatCount >= HP_SCROLL_TURBO_AFTER_REPEATS;
            env->holdTimer = turbo ? HP_SCROLL_TURBO_REPEAT_RATE : HP_SCROLL_REPEAT_RATE;
            ++env->repeatCount;
        }
    } else {
        up = down = FALSE;
    }

    if (up) {
        if (env->value < env->maxHp) {
            ++env->value;
        }
    } else if (down) {
        if (env->value > 1) {
            --env->value;
        }
    }

    // sub_0207D5DC redraws the whole panel (nickname/level/HP text/HP bar) straight from
    // monsDrawState, the same real call the game makes after an item changes a mon's HP -- using it
    // here too means the HP bar's color/length track the live-edited value in real time, not just
    // on commit.
    if (env->value != env->lastDrawnValue) {
        partyMenu->monsDrawState[env->partySlot].hp = env->value;
        sub_0207D5DC(partyMenu, env->partySlot);
        env->lastDrawnValue = env->value;
    }

    if (gSystem.newKeys & PAD_BUTTON_A) {
        SetMonData(env->pp, MON_DATA_HP, (u8 *)&env->value);
        partyMenu->monsDrawState[env->partySlot].hp = env->value;
        sub_0207D5DC(partyMenu, env->partySlot);
        return PARTY_MENU_STATE_1;
    }
    if (gSystem.newKeys & PAD_BUTTON_B) {
        partyMenu->monsDrawState[env->partySlot].hp = env->originalHp;
        sub_0207D5DC(partyMenu, env->partySlot);
        return PARTY_MENU_STATE_1;
    }

    return PARTY_MENU_STATE_ITEM_USE_CB;
}

// Porta-PC-gated HP debug button. Closes the context list and the main-screen dim/highlight blend
// (same cleanup PartyMonContextMenuAction_QuitToBag uses, just without actually exiting PartyMenu),
// but deliberately leaves the "Do what with X?" message window (windows[PARTY_MENU_WINDOW_ID_33])
// up -- then hands off to PartyMenuCallback_SetHP via the real itemUseCallback seam. PartyMenu
// itself never closes, so there's no window/BG lifecycle to rebuild from scratch.
void LONG_CALL PartyMonContextMenuAction_SetHP(struct PartyMenu *partyMenu, int *pState)
{
    struct PartyPokemon *pp = Party_GetMonByIndex(partyMenu->args->party, partyMenu->partyMonIndex);

    PartyMenu_DeleteContextMenuAndList(partyMenu);
    PartyMenu_DisableMainScreenBlend_AfterYesNo();

    sSetHPCallbackEnv.pp = pp;
    sSetHPCallbackEnv.partySlot = partyMenu->partyMonIndex;
    sSetHPCallbackEnv.value = GetMonData(pp, MON_DATA_HP, NULL);
    sSetHPCallbackEnv.originalHp = sSetHPCallbackEnv.value;
    sSetHPCallbackEnv.maxHp = GetMonData(pp, MON_DATA_MAXHP, NULL);
    if (sSetHPCallbackEnv.value < 1) {
        sSetHPCallbackEnv.value = 1;
    }
    sSetHPCallbackEnv.lastDrawnValue = -1;
    sSetHPCallbackEnv.holdTimer = 0;
    sSetHPCallbackEnv.repeatCount = 0;

    partyMenu->itemUseCallback = PartyMenuCallback_SetHP;
    *pState = PARTY_MENU_STATE_ITEM_USE_CB;
}

int LONG_CALL PartyMenu_HandleUseItemOnMon(struct PartyMenu *partyMenu)
{
    u32 ovyId, target, offset;
    // clang-format off
    u16 (*internalFunc)(struct PartyMenu *);
    // clang-format on

    ovyId = OVERLAY_PARTY_HANDLEUSEITEMONMON;
    offset = 0x023C0400 | 1;

    HandleLoadOverlay(ovyId, 2);
    // clang-format off
    internalFunc = (u16 (*)(struct PartyMenu *))(offset);
    // clang-format on
    target = internalFunc(partyMenu);
    UnloadOverlayByID(ovyId);

    return target;
}

void LONG_CALL PartyMenu_PrintContextMenuItemText(struct PartyMenu *partyMenu, struct PartyMenuContextMenu *contextMenu, int numItems, int selection, int state, BOOL depressed)
{
    u32 color;
    u32 y;
    u32 x = 0;
    u32 fillValue;
    u8 windowId;

    windowId = sButtonWindowIDs[numItems - 1][state][selection];

    if (windowId == 7) {
        if (depressed == FALSE) {
            fillValue = 4;
            color = MAKE_TEXT_COLOR(14, 15, 4);
        } else {
            fillValue = 11;
            color = MAKE_TEXT_COLOR(14, 15, 11);
        }
        y = 4;
        x = FontID_String_GetCenterAlignmentX(4, contextMenu->items[selection].text, 0, GetWindowWidth(&partyMenu->contextMenuButtonWindows[windowId]) * 8);
    } else {
        if (partyMenu->args->itemId == ITEM_ROTOM_CATALOG) {
            // use the normal white colored text instead of blue field move text
            if (depressed == FALSE) {
                fillValue = 4;
                color = MAKE_TEXT_COLOR(14, 15, 4);
            } else {
                fillValue = 11;
                color = MAKE_TEXT_COLOR(14, 15, 11);
            }
        } else {
            if (depressed == FALSE) {
                fillValue = 4;
                color = getButtonColorRaised(selection);
            } else {
                fillValue = 11;
                color = getButtonColorDepressed(selection);
            }
        }
        y = 0;
    }
    FillWindowPixelBuffer(&partyMenu->contextMenuButtonWindows[windowId], fillValue);
    AddTextPrinterParameterizedWithColor(&partyMenu->contextMenuButtonWindows[windowId], 4, contextMenu->items[selection].text, x, y, TEXT_SPEED_NOTRANSFER, color, NULL);
    ScheduleWindowCopyToVram(&partyMenu->contextMenuButtonWindows[windowId]);
}

void LONG_CALL sub_0207E3A8(struct PartyMenu *partyMenu, int numItems, int selection, int state, int frameType)
{
    u16 tiles[8];
    s8 id = sButtonWindowIDs[numItems - 1][state][selection];

    // shallow copy vanilla rectangle
    u8 tempRect[4];
    const u8 *rect = sButtonRects[id];
    tempRect[0] = rect[0];
    tempRect[1] = rect[1];
    tempRect[2] = rect[2];
    tempRect[3] = rect[3];

    // nudge down one tile to line up columns
    if (partyMenu->args->itemId == ITEM_ROTOM_CATALOG) {
        if (id == 0 || id == 1 || id == 2) {
            tempRect[1] -= 1;
        }
    }

    u32 tileStart;
    if (frameType == 0) {
        tileStart = 0x2000;
    } else if (frameType == 1) {
        tileStart = 0x2009;
    } else {
        tileStart = 0x2012;
    }
    tileStart += 10;
    for (int i = 0; i < 8; ++i) { // MAX_BUTTONS_IN_PARTY_MENU ?
        tiles[i] = tileStart + sButtonFrameTileOffsets[i];
    }

    LoadRectToBgTilemapRect(partyMenu->bgConfig, 0, &tiles[0], tempRect[0], tempRect[1], 1, 1);
    LoadRectToBgTilemapRect(partyMenu->bgConfig, 0, &tiles[1], tempRect[0] + tempRect[2] - 1, tempRect[1], 1, 1);
    LoadRectToBgTilemapRect(partyMenu->bgConfig, 0, &tiles[2], tempRect[0], tempRect[1] + tempRect[3] - 1, 1, 1);
    LoadRectToBgTilemapRect(partyMenu->bgConfig, 0, &tiles[3], tempRect[0] + tempRect[2] - 1, tempRect[1] + tempRect[3] - 1, 1, 1);
    FillBgTilemapRect(partyMenu->bgConfig, 0, tiles[4], tempRect[0], tempRect[1] + 1, 1, tempRect[3] - 2, TILEMAP_FILL_OVWT_PAL);
    FillBgTilemapRect(partyMenu->bgConfig, 0, tiles[5], tempRect[0] + tempRect[2] - 1, tempRect[1] + 1, 1, tempRect[3] - 2, TILEMAP_FILL_OVWT_PAL);
    FillBgTilemapRect(partyMenu->bgConfig, 0, tiles[6], tempRect[0] + 1, tempRect[1], tempRect[2] - 2, 1, TILEMAP_FILL_OVWT_PAL);
    FillBgTilemapRect(partyMenu->bgConfig, 0, tiles[7], tempRect[0] + 1, tempRect[1] + tempRect[3] - 1, tempRect[2] - 2, 1, TILEMAP_FILL_OVWT_PAL);
}

void LONG_CALL PartyMenu_StartContextMenuButtonPressAnim_FromCursorObj(struct PartyMenu *partyMenu, PartyMenuContextMenuCursor *cursor, int followUpState)
{
    int followUpStateTmp = followUpState;

    // intercept cancel signals sent from the B button to properly route to the Quit button for specific items
    u8 idx = cursor->numItems - 1;
    if (partyMenu->args && partyMenu->args->itemId == ITEM_ROTOM_CATALOG && followUpState == LIST_CANCEL) {
        for (int i = 0; i < cursor->numItems; i++) {
            if ((u32)cursor->menu.items[i].value == (u32)PartyMonContextMenuAction_QuitToBag) {
                idx = i;
                break;
            }
        }
        cursor->selection = idx;
        followUpStateTmp = cursor->menu.items[idx].value;
    }

    PartyMenuContextButtonAnimData *animData = &partyMenu->contextMenuButtonAnim;

    animData->autoAnimTimer = 0;
    animData->buttonAnimState = 0;
    animData->template = &cursor->menu;
    animData->numItems = cursor->numItems;
    animData->selection = cursor->selection;
    animData->state = cursor->state;
    animData->followUpState = followUpStateTmp;
    animData->active = TRUE;
}

/**
 *  @brief check if a rotom catalog can be used on a PartyPokemon
 *
 *  @param pp PartyPokemon to check reveal glass against
 *  @return TRUE if rotom catalog can be used; FALSE otherwise
 */
BOOL CanUseRotomCatalog(struct PartyPokemon *pp)
{
    return GetMonData(pp, MON_DATA_SPECIES, NULL) == SPECIES_ROTOM;
}
