#include "pokemon.h"
#include "types.h"
#include "save.h"
#include "bag.h"
#include "constants/item.h"
#include "constants/species.h"
#include "constants/file.h"

// One-time-per-tier Bug-Catching Contest rewards. First win of a given placement
// tier gives the real prize and sets its flag; every win after that gives a safe,
// always-valid placeholder (Poke Ball) instead of re-granting the real item.
#define FLAG_BUG_CONTEST_1ST_CLAIMED         2582
#define FLAG_BUG_CONTEST_2ND_CLAIMED         2583
#define FLAG_BUG_CONTEST_3RD_CLAIMED         2584
#define FLAG_BUG_CONTEST_CONSOLATION_CLAIMED 2585

// Full C reimplementation of the vanilla National Park Bug-Catching Contest's
// BugContest_Judge (overlay 24, entry 0x02259940 -- see hooks). Vanilla logic
// ported from pret/pokeheartgold's overlay_bug_contest.c; struct layout below
// mirrors bug_contest_internal.h exactly (field order/sizes matter -- this is
// real engine memory, not our own data).

struct BUGMON {
    u16 species;
    u8 lvlmin;
    u8 lvlmax;
    u8 rate;
    u8 score;
    u8 dummy[2];
};

#define BUGMON_COUNT 10

struct BugContestantData {
    u8 national;
    u8 day;
    u16 species;
    u16 score;
    u16 randmod;
};

struct BugContestant {
    u8 id;
    u16 score;
    struct BugContestantData data;
};

#define BUGCONTESTANT_NPC_COUNT 5
#define BUGCONTESTANT_PLAYER    BUGCONTESTANT_NPC_COUNT
#define BUGCONTESTANT_COUNT     (BUGCONTESTANT_NPC_COUNT + 1)

struct BugContest {
    u32 heapID;
    void *saveData;
    void *party_bak;
    void *party_cur;
    struct PartyPokemon *mon;
    u8 lead_mon_idx;
    u8 party_cur_num;
    u8 day_of_week;
    u8 caught_poke : 1;
    u8 national_dex : 1;
    u8 placement : 6;
    u16 sport_balls;
    u16 prize;
    u32 elapsed_time;
    struct BUGMON encounters[BUGMON_COUNT];
    struct BugContestant contestants[BUGCONTESTANT_COUNT];
    u8 ranking[BUGCONTESTANT_COUNT];
};

// Ported unchanged from BugContest_JudgePlayerMon.
u16 LONG_CALL BugContest_JudgePlayerMon(struct BugContest *bugContest, struct PartyPokemon *mon)
{
    u16 score = 0;
    int i;
    u16 species;
    struct BUGMON *bugmon = NULL;
    u16 stat_total;

    if (!bugContest->caught_poke) {
        return score;
    }
    species = GetMonData(mon, MON_DATA_SPECIES, NULL);
    for (i = 0; i < BUGMON_COUNT; i++) {
        if (bugContest->encounters[i].species == species) {
            bugmon = &bugContest->encounters[i];
            score += bugContest->encounters[i].score;
            break;
        }
    }
    if (bugmon == NULL) {
        return 0;
    }

    score += GetMonData(mon, MON_DATA_LEVEL, NULL) * 100 / bugmon->lvlmax;
    stat_total = 0;
    for (i = 0; i < 6; i++) {
        stat_total += GetMonData(mon, MON_DATA_HP_IV + i, NULL);
    }
    score += stat_total * 100 / (31 * 6);
    score += GetMonData(mon, MON_DATA_HP, NULL) * 100 / GetMonData(mon, MON_DATA_MAXHP, NULL);
    return score;
}

// One-time-per-tier reward gate: first time a placement tier is won, mark its flag
// and hand back the real prize. Every win after that, the flag's already set, so a
// Poke Ball comes back instead -- always a valid item, never touches the untested
// "give nothing" path through the DSPRE results script.
static u16 ClaimOncePerTier(struct BugContest *bugContest, u16 flagId, u16 prizeIfFirstClaim)
{
    struct ScriptState *flags = SavArray_Flags_get(bugContest->saveData);
    if (CheckScriptFlagPassSave(flags, flagId)) {
        return ITEM_POKE_BALL;
    }
    SetScriptFlagPassSave(flags, flagId);
    return prizeIfFirstClaim;
}

// Ported from BugContest_Judge, with Electrum's prize changes:
//   - First place, pre-National Dex: was always Sun Stone -> now BOTH Sun Stone and Moon Stone.
//   - Third place: Sitrus Berry -> Shed Shell.
//   - Consolation (didn't place): Shed Shell -> Chilan Berry.
//   - Every tier is now a one-time reward (see ClaimOncePerTier); repeat wins give a
//     Poke Ball instead of re-granting the tier's real item.
void LONG_CALL BugContest_Judge(struct BugContest *bugContest)
{
    int i, j, cur_max;
    u16 score, score2;
    u8 temp;
    struct BugContestant *player;

    player = &bugContest->contestants[BUGCONTESTANT_PLAYER];
    player->id = BUGCONTESTANT_PLAYER;
    player->score = BugContest_JudgePlayerMon(bugContest, bugContest->mon);
    player->data.species = GetMonData(bugContest->mon, MON_DATA_SPECIES, NULL);

    for (i = 0; i < BUGCONTESTANT_COUNT; i++) {
        bugContest->ranking[i] = i;
    }

    for (i = 0; i < BUGCONTESTANT_COUNT - 1; i++) {
        temp = bugContest->ranking[i];
        cur_max = i;
        score = bugContest->contestants[bugContest->ranking[i]].score;
        for (j = i + 1; j < BUGCONTESTANT_COUNT; j++) {
            score2 = bugContest->contestants[bugContest->ranking[j]].score;
            if (score2 >= score) {
                cur_max = j;
                score = score2;
            }
        }
        bugContest->ranking[i] = bugContest->ranking[cur_max];
        bugContest->ranking[cur_max] = temp;
    }

    bugContest->placement = 3;
    for (i = 0; i < 3; i++) {
        if (bugContest->ranking[i] == BUGCONTESTANT_PLAYER) {
            bugContest->placement = i;
            break;
        }
    }

    // Placing anywhere (any of the 4 tiers -- placement is always 0-3, never "nothing")
    // claims ALL 4 tiers at once, not just the one matching this run's actual result.
    // National Dex is unlocked from the start in this hack, so the old
    // national_dex-gated 10-stone pool never mattered for 1st place; now always both stones.
    {
        u16 prizes[4];
        u16 firstPlaceExtra = ITEM_NONE;
        BAG_DATA *bag;
        int tier;

        // First place hands out BOTH stones on first claim, not one or the other. The
        // Moon Stone always rides along as a silent bag-add (see below), same as the
        // other tiers' non-placement prizes -- the results script can only announce one
        // item, so it stays tied to prizes[0]/ITEM_SUN_STONE.
        {
            struct ScriptState *flags = SavArray_Flags_get(bugContest->saveData);
            if (CheckScriptFlagPassSave(flags, FLAG_BUG_CONTEST_1ST_CLAIMED)) {
                prizes[0] = ITEM_POKE_BALL;
            } else {
                SetScriptFlagPassSave(flags, FLAG_BUG_CONTEST_1ST_CLAIMED);
                prizes[0] = ITEM_SUN_STONE;
                firstPlaceExtra = ITEM_MOON_STONE;
            }
        }
        prizes[1] = ClaimOncePerTier(bugContest, FLAG_BUG_CONTEST_2ND_CLAIMED, ITEM_EVERSTONE);
        prizes[2] = ClaimOncePerTier(bugContest, FLAG_BUG_CONTEST_3RD_CLAIMED, ITEM_SHED_SHELL);
        prizes[3] = ClaimOncePerTier(bugContest, FLAG_BUG_CONTEST_CONSOLATION_CLAIMED, ITEM_CHILAN_BERRY);

        // The tier matching this run's actual placement still goes through the normal
        // script-driven hand-off + "You received X!" message, same as before.
        bugContest->prize = prizes[bugContest->placement];

        // The other three are silently added straight to the bag -- the DSPRE results
        // script only knows how to announce a single `prize` item, so there's no message
        // for these, they just show up.
        bag = Sav2_Bag_get(bugContest->saveData);
        for (tier = 0; tier < 4; tier++) {
            if (tier == bugContest->placement) {
                continue;
            }
            if (Bag_HasSpaceForItem(bag, prizes[tier], 1, HEAPID_WORLD)) {
                Bag_AddItem(bag, prizes[tier], 1, HEAPID_WORLD);
            }
        }
        if (firstPlaceExtra != ITEM_NONE && Bag_HasSpaceForItem(bag, firstPlaceExtra, 1, HEAPID_WORLD)) {
            Bag_AddItem(bag, firstPlaceExtra, 1, HEAPID_WORLD);
        }
    }
}

// BugContest_InitEncounters is intentionally NOT hooked (see hooks -- 0x02259DF0
// crashes even as a no-op replacement). Instead, base/root/data/mushi/mushi_encount.bin
// -- the plain file the untouched vanilla function already reads -- is edited directly
// to contain Electrum's own National Park bug-contest species.
