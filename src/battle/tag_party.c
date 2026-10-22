#include "../../include/config.h"
#include "../../include/types.h"
#include "../../include/battle.h"
#include "../../include/pokemon.h"
#include "../../include/constants/battle_constants.h"

/*
 * Tag battle partner panels on the in-battle "Choose a Pokemon" screen (TAG_BATTLE_PARTNER_PARTY, see Docs&Changelog/Tag Battle Partner Party.md).
 *
 * The game already knows how to list a partner on that screen (link multi / Frontier AI multi: BattlePartyMenu_IsPartnerMon draws those panels with the
 * partner palette, refuses to switch to them and still lets you open their Summary and moves), but it never does it for an ordinary AI-partner tag battle
 * (type TRAINER | DOUBLES | MULTI | AI): the list builder only copies the player's own Pokemon and the screen's multi checks exclude that type.
 *
 * Two hooks (hooks file):
 *   TagParty_AfterBuild_hook (asm/battle/battle_hooks.s) at overlay 12 0x0225F746, the point where the player's party-list task (0x0225F4E0, state 1) has
 *       built the party for the screen and is about to fill in the rest of the arguments: appends the partner's Pokemon (TagParty_AfterBuild).
 *   TagParty_IsPartnerMon replaces overlay 8 0x0221DB24 (BattlePartyMenu_IsPartnerMon): the partner's slots are the ones from the stored start slot on.
 *
 * Layout: the player's Pokemon stay in the first slots, the partner's go in the LAST slots (3 + 3 -> slots 0-2 and 3-5).  Only when the player has at most
 * 3 Pokemon and player + partner fit in 6.  Applies to the switch screens only (mode 0 / 1); the Bag's item screen and the move-forget screen build their own
 * party and are untouched.
 *
 * BattlePartyMenuArgs (verified in this ROM): +0x00 party, +0x08 battleSystem, +0x28 battlerId, +0x2C partyOrder[6], +0x35 mode, +0x36 done,
 * +0x37 spare byte of the 0x38-byte allocation -> "partner starts at this slot" (0 = no partner panels).
 * Party-list task work: +0 battleSystem, +4 args, +9 battlerId, +0xB mode, +0x1C + 6 * battler = that battler's partyOrder row.
 */

#define TAGPARTY_BATTLE_TYPE (BATTLE_TYPE_TRAINER | BATTLE_TYPE_DOUBLES | BATTLE_TYPE_MULTI | BATTLE_TYPE_AI)

#define ARGS_PARTY_ORDER    0x2C
#define ARGS_MODE           0x35
#define ARGS_PARTNER_START  0x37
#define WORK_BATTLER_ID     9
#define WORK_MODE           0xB
#define WORK_PARTY_ORDER    0x1C
#define MENU_BATTLER_POS    0x8F // BattlePartyMenu.battlerPosition

#define HEAP_ID_BATTLE_PARTY 5

int LONG_CALL BattleSystem_GetBattlerIdPartner(void *bsys, int battlerId); // 0x0223AB6C
int LONG_CALL PokeParty_GetPokeCount(struct Party *party);                 // 0x02074640
void LONG_CALL Heap_Free(void *ptr);
BOOL LONG_CALL BattlePartyMenu_IsMultiBattle(void *menu); // overlay 8 0x0221DB04

void LONG_CALL TagParty_AfterBuild(u8 *work)
{
    void *bsys = *(void **)work;
    u8 *args = *(u8 **)(work + 4);
    struct Party *party = *(struct Party **)args;
    u32 battlerId = work[WORK_BATTLER_ID];
    u32 playerCount;
    u32 partnerCount;
    u32 start;
    u32 i;
    int partner;
    const u8 *row;

    args[ARGS_PARTNER_START] = 0; // always initialise: the allocation is not cleared

    if (BattleTypeGet(bsys) != TAGPARTY_BATTLE_TYPE) {
        return;
    }
    if (work[WORK_MODE] > 1) { // 0 = normal switch, 1 = forced switch; 2 = item, 3 = learn move are left alone
        return;
    }
    playerCount = PokeParty_GetPokeCount(party);
    partner = BattleSystem_GetBattlerIdPartner(bsys, battlerId);
    if (partner == (int)battlerId) {
        return;
    }
    partnerCount = BattleWorkPokeCountGet(bsys, partner);
    if (partnerCount == 0 || playerCount > 3 || playerCount + partnerCount > 6) {
        return;
    }

    start = 6 - partnerCount; // the partner's Pokemon take the last slots
    if (start < playerCount) {
        start = playerCount;
    }
    if (start > playerCount) { // empty panels between the two teams, as the game's own multi list does
        struct PartyPokemon *zero = AllocMonZeroed(HEAP_ID_BATTLE_PARTY);
        for (i = playerCount; i < start; i++) {
            PokeParty_Add(party, zero);
        }
        Heap_Free(zero);
    }
    row = work + WORK_PARTY_ORDER + 6 * partner;
    for (i = 0; i < partnerCount; i++) {
        PokeParty_Add(party, BattleWorkPokemonParamGet(bsys, partner, row[i]));
        args[ARGS_PARTY_ORDER + start + i] = row[i];
    }
    args[ARGS_PARTNER_START] = start;
}

// replaces BattlePartyMenu_IsPartnerMon(menu, slot): menu->context is at +0, battlerPosition at +0x8F
int LONG_CALL TagParty_IsPartnerMon(u8 *menu, u32 slot)
{
    u8 *args = *(u8 **)menu;

    if (BattlePartyMenu_IsMultiBattle(menu) == TRUE) { // the game's own multi handling: the partner's slots are the odd (or even) ones
        if (menu[MENU_BATTLER_POS] == 2) {
            return (slot & 1) ? 1 : 0;
        }
        return (slot & 1) ? 0 : 1;
    }
    if (args[ARGS_MODE] <= 1 && args[ARGS_PARTNER_START] != 0 && slot >= args[ARGS_PARTNER_START]) {
        return 1;
    }
    return 0;
}
