#include "../include/npc_trade.h"

#include "../include/constants/ability.h"
#include "../include/constants/item.h"
#include "../include/constants/species.h"
#include "../include/pokemon.h"
#include "../include/types.h"

#define CUSTOM_TRADES

static void arrayShuffle(u8 *array, int len)
{
    for (int i = len - 1; i > 0; i--) {
        int j = gf_rand() % (i + 1);
        u8 tmp = array[i];
        array[i] = array[j];
        array[j] = tmp;
    }
}

void randomIV(struct NPCTrade *trade_dat)
{
    u8 array[] = { 31, 31, 31, 0, 0, 0 };

    int i = gf_rand();
    array[3] = (i & (0x001f << 0)) >> 0;
    array[4] = (i & (0x001f << 5)) >> 5;
    array[5] = (i & (0x001f << 10)) >> 10;

    arrayShuffle(array, 6);

    trade_dat->hpIv = array[0];
    trade_dat->atkIv = array[1];
    trade_dat->defIv = array[2];
    trade_dat->speedIv = array[3];
    trade_dat->spAtkIv = array[4];
    trade_dat->spDefIv = array[5];
}

void LONG_CALL _CreateTradeMon(struct PartyPokemon *mon, struct NPCTrade *trade_dat, u32 level, u32 tradeno, u32 mapno, u32 met_level_strat, u32 heapId)
{
    String *name;
    u8 nickname_flag;
    u32 mapsec;
    int heapId_2;
    int ability = -1;
    BOOL skipRandomIV = FALSE;

#ifdef CUSTOM_TRADES
    if (tradeno == NPC_TRADE_ROCKY_ONIX) {
        trade_dat->hpIv    = 31;
        trade_dat->atkIv   = 31;
        trade_dat->defIv   = 31;
        trade_dat->speedIv = 31;
        trade_dat->spAtkIv = 31;
        trade_dat->spDefIv = 31;
        trade_dat->heldItem = ITEM_BERRY_JUICE;
        skipRandomIV = TRUE;
    }
#endif

    if (!skipRandomIV) {
        randomIV(trade_dat);
    }

    u32 pid = gf_rand();
#ifdef CUSTOM_TRADES
    if (tradeno == NPC_TRADE_ROCKY_ONIX) {
        pid = (pid - (pid % 25)) + NATURE_ADAMANT;
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
