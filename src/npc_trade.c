#include "../include/npc_trade.h"

#include "../include/constants/ability.h"
#include "../include/constants/item.h"
#include "../include/constants/species.h"
#include "../include/pokemon.h"
#include "../include/types.h"
#include "../include/save.h"

#define CUSTOM_TRADES

// Electrum: the old randomIV()/arrayShuffle() (3 perfect + 3 random IVs) were removed - every
// in-game trade now gets 6 perfect IVs directly in _CreateTradeMon.

#ifdef CUSTOM_TRADES
// Electrum: per-trade nature. Set an entry to -1 to leave that trade's nature random.
// Every listed trade must have an entry (an omitted one would default to 0 = NATURE_HARDY).
static const s8 sTradeNatures[NPC_TRADE_MAX] = {
    [NPC_TRADE_ROCKY_ONIX]        = NATURE_ADAMANT,
    [NPC_TRADE_MUSCLE_MACHOP]     = -1,
    [NPC_TRADE_BILLY_VOLTORB]     = -1,
    [NPC_TRADE_DORIS_DODRIO]      = -1,
    [NPC_TRADE_SPRINTS_RAPIDASH]  = -1,
    [NPC_TRADE_RUSTY_STEELIX]     = -1,
    [NPC_TRADE_SHUCKIE_SHUCKLE]   = -1,
    [NPC_TRADE_KENYA_SPEAROW]     = -1,
    [NPC_TRADE_MAGGIE_MAGNETON]   = -1,
    [NPC_TRADE_PAUL_XATU]         = -1,
    [NPC_TRADE_VOLTY_PIKACHU]     = -1,
    [NPC_TRADE_HORNLETTE_RHYHORN] = -1,
    [NPC_TRADE_IRON_BELDUM]       = -1,
};
#endif

void LONG_CALL _CreateTradeMon(struct PartyPokemon *mon, struct NPCTrade *trade_dat, u32 level, u32 tradeno, u32 mapno, u32 met_level_strat, u32 heapId)
{
    String *name;
    u8 nickname_flag;
    u32 mapsec;
    int heapId_2;
    int ability = -1;

    // Electrum: every in-game trade Pokemon gets 6 perfect IVs.
    trade_dat->hpIv = 31;
    trade_dat->atkIv = 31;
    trade_dat->defIv = 31;
    trade_dat->speedIv = 31;
    trade_dat->spAtkIv = 31;
    trade_dat->spDefIv = 31;

#ifdef CUSTOM_TRADES
    if (tradeno == NPC_TRADE_ROCKY_ONIX) {
        trade_dat->heldItem = ITEM_BERRY_JUICE;
    }
#endif

    u32 pid = gf_rand();
#ifdef CUSTOM_TRADES
    if (tradeno < NPC_TRADE_MAX && sTradeNatures[tradeno] >= 0) {
        pid = (pid - (pid % 25)) + sTradeNatures[tradeno];
    }
#endif
    PokeParaSet(mon, trade_dat->give_species, level, 32, FALSE, pid, OT_ID_PRESET, trade_dat->otId);

    heapId_2 = (int)heapId;
    name = _GetNpcTradeName(heapId_2, tradeno);
    SetMonData(mon, MON_DATA_NICKNAME_3, name);
    String_Delete(name);

    nickname_flag = TRUE;
    SetMonData(mon, MON_DATA_HAS_NICKNAME, &nickname_flag);

    SetMonData(mon, MON_DATA_HP_IV, &trade_dat->hpIv);
    SetMonData(mon, MON_DATA_ATK_IV, &trade_dat->atkIv);
    SetMonData(mon, MON_DATA_DEF_IV, &trade_dat->defIv);
    SetMonData(mon, MON_DATA_SPEED_IV, &trade_dat->speedIv);
    SetMonData(mon, MON_DATA_SPATK_IV, &trade_dat->spAtkIv);
    SetMonData(mon, MON_DATA_SPDEF_IV, &trade_dat->spDefIv);

    SetMonData(mon, MON_DATA_HELD_ITEM, &trade_dat->heldItem);

    name = _GetNpcTradeName(heapId_2, NPC_TRADE_OT_NUM(tradeno));
    SetMonData(mon, MON_DATA_OT_NAME_2, name);
    String_Delete(name);

    SetMonData(mon, MON_DATA_MET_GENDER, &trade_dat->gender);
    SetMonData(mon, MON_DATA_GAME_LANGUAGE, &trade_dat->language);

    mapsec = MapHeader_GetMapSec(mapno);
    MonSetTrainerMemo(mon, NULL, met_level_strat, mapsec, heapId);

    if (ability != -1) {
        SetMonData(mon, MON_DATA_ABILITY, &ability);
    }

    RecalcPartyPokemonStats(mon);
    ResetPartyPokemonAbility(mon);
}
