#include "../include/types.h"
#include "../include/script.h"
#include "../include/repel.h"
#include "../include/pokemon.h"
#include "../include/save.h"
#include "../include/bag.h"
#include "../include/map_events_internal.h"
#include "../include/constants/file.h"
#include "../include/constants/save.h"
#include "../include/constants/species.h"
#include "../include/constants/item.h"
#include "../include/roamer.h"

#define SCRIPT_NEW_CMD_REPEL_USE          0
#define SCRIPT_NEW_CMD_BOTTLE_CAP_USE     1
#define SCRIPT_NEW_CMD_SET_NATURE         2
#define SCRIPT_NEW_CMD_GIFT_MON_3PERF_IVS 3
#define SCRIPT_NEW_CMD_GIVE_EGG_3PERF_IVS 4
#define SCRIPT_NEW_CMD_STARTER_3PERF_IVS  5
#define SCRIPT_NEW_CMD_GIVE_STATUS        6
#define SCRIPT_NEW_CMD_PRIME_PARTY_EXP    7
#define SCRIPT_NEW_CMD_BERRY_TREE         8

#define SCRIPT_NEW_CMD_MAX 256

#ifdef PLANT_BERRY_TREES
// --- Berry plants (pre-placed one-time harvest bushes) --------------------------------
// Two DSPRE script vars drive a plant; see Docs&Changelog/Berry Plants.md:
//   VAR_SPECIAL_x8009 = BERRY TYPE  (0..NELEMS(sBerryPlantBerry)-1) -> which berry + range.
//                       Every plant of a given berry uses the same value (and the same
//                       OW Entry ID / Sprite ID from BERRY_PLANT_ENTRY in overworld_table.c).
//   VAR_SPECIAL_x8008 = PLANT ID    (0..BERRY_TREE_FLAG_MAX-1) -> unique per placed object,
//                       drives the one-time flag. Allocate from a pool the same way as any
//                       other Electrum flag; harvested-flag = BERRY_TREE_FLAG_BASE - plantId.
//
// Flags run DOWNWARD from 2700: plant 0 -> 2700 ... plant 99 -> 2601. This block sits in the
// FLAG_UNK_9DA..A9F run in flags.s (2522..2719, between FLAG_TERASTALIZATION_ENABLED at 2521
// and DAILY_FLAG_BASE at 2720), above the DSPRE-side allocations that end at 2581, and stays
// >= 2600 per Electrum's flag map. 738 trainers only reach trainer-flag 2097.
// DSPRE: each berry object's Flag field = BERRY_TREE_FLAG_BASE - its PLANT ID.
#define BERRY_TREE_FLAG_BASE 2700
#define BERRY_TREE_FLAG_MAX  100     // plant ids 0..99 -> flags 2700 down to 2601 (floor 2600)

// Berry TYPE table, indexed by VAR_SPECIAL_x8009. 58 = all 64 gen-4 berries minus the 6
// EV-lowering ones (Pomeg/Kelpsy/Qualot/Hondew/Grepa/Tamato), in item-id order -- matches
// the BERRY_PLANT_ENTRY list in src/field/overworld_table.c and Docs&Changelog/Berry Plants.md.
// qmin/qmax = per-berry harvest amount (inclusive, uniform); stronger berries are rarer.
static const struct {
    u16 item;
    u8  qmin;
    u8  qmax;
} sBerryPlantBerry[] = {
    { ITEM_CHERI_BERRY,   25, 75 }, //  0  cheri
    { ITEM_CHESTO_BERRY,  25, 75 }, //  1  chesto
    { ITEM_PECHA_BERRY,   25, 75 }, //  2  pecha
    { ITEM_RAWST_BERRY,   25, 75 }, //  3  rawst
    { ITEM_ASPEAR_BERRY,  25, 75 }, //  4  aspear
    { ITEM_LEPPA_BERRY,   25, 75 }, //  5  leppa
    { ITEM_ORAN_BERRY,    25, 75 }, //  6  oran
    { ITEM_PERSIM_BERRY,  25, 75 }, //  7  persim
    { ITEM_LUM_BERRY,     10, 30 }, //  8  lum
    { ITEM_SITRUS_BERRY,  15, 45 }, //  9  sitrus
    { ITEM_FIGY_BERRY,    10, 30 }, // 10  figy
    { ITEM_WIKI_BERRY,    10, 30 }, // 11  wiki
    { ITEM_MAGO_BERRY,    10, 30 }, // 12  mago
    { ITEM_AGUAV_BERRY,   10, 30 }, // 13  aguav
    { ITEM_IAPAPA_BERRY,  10, 30 }, // 14  iapapa
    { ITEM_RAZZ_BERRY,    25, 75 }, // 15  razz
    { ITEM_BLUK_BERRY,    25, 75 }, // 16  bluk
    { ITEM_NANAB_BERRY,   25, 75 }, // 17  nanab
    { ITEM_WEPEAR_BERRY,  25, 75 }, // 18  wepear
    { ITEM_PINAP_BERRY,   25, 75 }, // 19  pinap
    { ITEM_CORNN_BERRY,   25, 75 }, // 20  cornn
    { ITEM_MAGOST_BERRY,  25, 75 }, // 21  magost
    { ITEM_RABUTA_BERRY,  25, 75 }, // 22  rabuta
    { ITEM_NOMEL_BERRY,   25, 75 }, // 23  nomel
    { ITEM_SPELON_BERRY,  25, 75 }, // 24  spelon
    { ITEM_PAMTRE_BERRY,  25, 75 }, // 25  pamtre
    { ITEM_WATMEL_BERRY,  25, 75 }, // 26  watmel
    { ITEM_DURIN_BERRY,   25, 75 }, // 27  durin
    { ITEM_BELUE_BERRY,   25, 75 }, // 28  belue
    { ITEM_OCCA_BERRY,     1,  3 }, // 29  occa
    { ITEM_PASSHO_BERRY,   1,  3 }, // 30  passho
    { ITEM_WACAN_BERRY,    1,  3 }, // 31  wacan
    { ITEM_RINDO_BERRY,    1,  3 }, // 32  rindo
    { ITEM_YACHE_BERRY,    1,  3 }, // 33  yache
    { ITEM_CHOPLE_BERRY,   1,  3 }, // 34  chople
    { ITEM_KEBIA_BERRY,    1,  3 }, // 35  kebia
    { ITEM_SHUCA_BERRY,    1,  3 }, // 36  shuca
    { ITEM_COBA_BERRY,     1,  3 }, // 37  coba
    { ITEM_PAYAPA_BERRY,   1,  3 }, // 38  payapa
    { ITEM_TANGA_BERRY,    1,  3 }, // 39  tanga
    { ITEM_CHARTI_BERRY,   1,  3 }, // 40  charti
    { ITEM_KASIB_BERRY,    1,  3 }, // 41  kasib
    { ITEM_HABAN_BERRY,    1,  3 }, // 42  haban
    { ITEM_COLBUR_BERRY,   1,  3 }, // 43  colbur
    { ITEM_BABIRI_BERRY,   1,  3 }, // 44  babiri
    { ITEM_CHILAN_BERRY,   1,  3 }, // 45  chilan
    { ITEM_LIECHI_BERRY,   1,  2 }, // 46  liechi
    { ITEM_GANLON_BERRY,   1,  2 }, // 47  ganlon
    { ITEM_SALAC_BERRY,    1,  2 }, // 48  salac
    { ITEM_PETAYA_BERRY,   1,  2 }, // 49  petaya
    { ITEM_APICOT_BERRY,   1,  2 }, // 50  apicot
    { ITEM_LANSAT_BERRY,   1,  2 }, // 51  lansat
    { ITEM_STARF_BERRY,    1,  2 }, // 52  starf
    { ITEM_ENIGMA_BERRY,   3,  6 }, // 53  enigma
    { ITEM_MICLE_BERRY,    3,  6 }, // 54  micle
    { ITEM_CUSTAP_BERRY,   1,  2 }, // 55  custap
    { ITEM_JABOCA_BERRY,   1,  2 }, // 56  jaboca
    { ITEM_ROWAP_BERRY,    1,  2 }, // 57  rowap
};
#endif // PLANT_BERRY_TREES

BOOL Script_RunNewCmd(SCRIPTCONTEXT *ctx)
{
    u8 sw = ScriptReadByte(ctx);
    u16 UNUSED arg0 = ScriptReadHalfword(ctx);

    FieldSystem *fsys = NULL;
    struct Party *party = NULL;
    struct PartyPokemon *pp = NULL;
    u8 pos = 0;

    switch (sw) {
    case SCRIPT_NEW_CMD_REPEL_USE:;
#ifdef IMPLEMENT_REUSABLE_REPELS
        u16 most_recent_repel = Repel_GetMostRecent();
        SetScriptVar(arg0, most_recent_repel);
        Repel_Use(most_recent_repel, HEAPID_MAIN_HEAP);
#endif
        break;

    case SCRIPT_NEW_CMD_BOTTLE_CAP_USE:; // set IVs via DSPRE script
#ifdef GOLD_CAP_MAX_IVS
        fsys = ctx->fsys;
        party = SaveData_GetPlayerPartyPtr(fsys->savedata);
        pos = GetScriptVar(0x8008);
        pp = Party_GetMonByIndex(party, pos);

        {
            u8 statIndex = GetScriptVar(0x8009);
            u8 iv = 31;

            switch (statIndex) {
            case 0:
                SetMonData(pp, MON_DATA_HP_IV, &iv);
                break;
            case 1:
                SetMonData(pp, MON_DATA_ATK_IV, &iv);
                break;
            case 2:
                SetMonData(pp, MON_DATA_DEF_IV, &iv);
                break;
            case 3:
                SetMonData(pp, MON_DATA_SPATK_IV, &iv);
                break;
            case 4:
                SetMonData(pp, MON_DATA_SPDEF_IV, &iv);
                break;
            case 5:
                SetMonData(pp, MON_DATA_SPEED_IV, &iv);
                break;
            case 6:
                SetMonData(pp, MON_DATA_HP_IV, &iv);
                SetMonData(pp, MON_DATA_ATK_IV, &iv);
                SetMonData(pp, MON_DATA_DEF_IV, &iv);
                SetMonData(pp, MON_DATA_SPATK_IV, &iv);
                SetMonData(pp, MON_DATA_SPDEF_IV, &iv);
                SetMonData(pp, MON_DATA_SPEED_IV, &iv);
                break;
            default:
                break;
            }
        }

        RecalcPartyPokemonStats(pp);
        break;
#endif

    case SCRIPT_NEW_CMD_SET_NATURE:;
        fsys = ctx->fsys;
        party = SaveData_GetPlayerPartyPtr(fsys->savedata);
        pos = GetScriptVar(0x8008);
        pp = Party_GetMonByIndex(party, pos);
        SET_MON_NATURE_OVERRIDE(pp, (u8)GetScriptVar(0x8009));
        RecalcPartyPokemonStats(pp);

    default:
        break;

    case SCRIPT_NEW_CMD_GIFT_MON_3PERF_IVS:;
#ifdef GIFT_POKEMON_HAVE_3PERF_IVS
        {
            fsys = ctx->fsys;
            party = SaveData_GetPlayerPartyPtr(fsys->savedata);
            u16 targetSpecies = GetScriptVar(0x8008);

            for (int i = 6 - 1; i >= 0; i--) {
                pp = Party_GetMonByIndex(party, i);
                u16 species = GetMonData(pp, MON_DATA_SPECIES, NULL);
                if (species == targetSpecies) {

                    u8 iv_indices[6] = { 0, 1, 2, 3, 4, 5 };
                    for (int j = 5; j > 0; j--) {
                        int k = gf_rand() % (j + 1);
                        u8 tmp = iv_indices[j];
                        iv_indices[j] = iv_indices[k];
                        iv_indices[k] = tmp;
                    }

                    u8 perfect_iv = 31;
                    for (int j = 0; j < 3; j++) {
                        switch (iv_indices[j]) {
                        case 0:
                            SetMonData(pp, MON_DATA_HP_IV, &perfect_iv);
                            break;
                        case 1:
                            SetMonData(pp, MON_DATA_ATK_IV, &perfect_iv);
                            break;
                        case 2:
                            SetMonData(pp, MON_DATA_DEF_IV, &perfect_iv);
                            break;
                        case 3:
                            SetMonData(pp, MON_DATA_SPATK_IV, &perfect_iv);
                            break;
                        case 4:
                            SetMonData(pp, MON_DATA_SPDEF_IV, &perfect_iv);
                            break;
                        case 5:
                            SetMonData(pp, MON_DATA_SPEED_IV, &perfect_iv);
                            break;
                        }
                    }

                    RecalcPartyPokemonStats(pp);
                    break;
                }
            }
            break;
        }
#endif

    case SCRIPT_NEW_CMD_GIVE_EGG_3PERF_IVS:;
#ifdef EGG_POKEMON_HAVE_3PERF_IVS
        {
            fsys = ctx->fsys;
            party = SaveData_GetPlayerPartyPtr(fsys->savedata);

            for (int i = PARTY_SIZE - 1; i >= 0; i--) {
                pp = Party_GetMonByIndex(party, i);
                u16 species = GetMonData(pp, MON_DATA_SPECIES, NULL);
                u8 isEgg = GetMonData(pp, MON_DATA_IS_EGG, NULL);
                if (species != SPECIES_NONE && isEgg) {

                    u8 iv_indices[6] = { 0, 1, 2, 3, 4, 5 };
                    for (int j = 5; j > 0; j--) {
                        int k = gf_rand() % (j + 1);
                        u8 tmp = iv_indices[j];
                        iv_indices[j] = iv_indices[k];
                        iv_indices[k] = tmp;
                    }

                    u8 perfect_iv = 31;
                    for (int j = 0; j < 3; j++) {
                        switch (iv_indices[j]) {
                        case 0:
                            SetMonData(pp, MON_DATA_HP_IV, &perfect_iv);
                            break;
                        case 1:
                            SetMonData(pp, MON_DATA_ATK_IV, &perfect_iv);
                            break;
                        case 2:
                            SetMonData(pp, MON_DATA_DEF_IV, &perfect_iv);
                            break;
                        case 3:
                            SetMonData(pp, MON_DATA_SPATK_IV, &perfect_iv);
                            break;
                        case 4:
                            SetMonData(pp, MON_DATA_SPDEF_IV, &perfect_iv);
                            break;
                        case 5:
                            SetMonData(pp, MON_DATA_SPEED_IV, &perfect_iv);
                            break;
                        }
                    }

                    RecalcPartyPokemonStats(pp);
                    break;
                }
            }
            break;
        }
#endif

    case SCRIPT_NEW_CMD_STARTER_3PERF_IVS:;
#ifdef STARTER_3PERF_IVS
        {
            fsys = ctx->fsys;
            party = SaveData_GetPlayerPartyPtr(fsys->savedata);
            pp = Party_GetMonByIndex(party, 0);

            u8 iv_indices[6] = { 0, 1, 2, 3, 4, 5 };
            for (int i = 5; i > 0; i--) {
                int j = gf_rand() % (i + 1);
                u8 tmp = iv_indices[i];
                iv_indices[i] = iv_indices[j];
                iv_indices[j] = tmp;
            }

            u8 perfect_iv = 31;
            for (int i = 0; i < 3; i++) {
                switch (iv_indices[i]) {
                case 0:
                    SetMonData(pp, MON_DATA_HP_IV, &perfect_iv);
                    break;
                case 1:
                    SetMonData(pp, MON_DATA_ATK_IV, &perfect_iv);
                    break;
                case 2:
                    SetMonData(pp, MON_DATA_DEF_IV, &perfect_iv);
                    break;
                case 3:
                    SetMonData(pp, MON_DATA_SPATK_IV, &perfect_iv);
                    break;
                case 4:
                    SetMonData(pp, MON_DATA_SPDEF_IV, &perfect_iv);
                    break;
                case 5:
                    SetMonData(pp, MON_DATA_SPEED_IV, &perfect_iv);
                    break;
                }
            }

            RecalcPartyPokemonStats(pp);
            break;
        }
#endif
    case SCRIPT_NEW_CMD_GIVE_STATUS:; // Apply status to a Pokémon in a given party slot
#ifdef APPLY_STATUS_BY_SCRIPT
        {
            fsys = ctx->fsys;
            party = SaveData_GetPlayerPartyPtr(fsys->savedata);
            pos = GetScriptVar(0x8008);
            u8 status = GetScriptVar(0x8009);

            pp = Party_GetMonByIndex(party, pos);
            u16 species = GetMonData(pp, MON_DATA_SPECIES, NULL);

            SetMonData(pp, MON_DATA_STATUS, &status);

            break;
        }
#endif

    case SCRIPT_NEW_CMD_PRIME_PARTY_EXP:; // set every party mon 1 EXP short of its next level,
                                          // so the next kill levels it up mid-battle
#ifdef PRIME_PARTY_EXP_BY_SCRIPT
        {
            fsys = ctx->fsys;
            party = SaveData_GetPlayerPartyPtr(fsys->savedata);

            for (u8 i = 0; i < 6; i++) {
                pp = Party_GetMonByIndex(party, i);

                u16 species = (u16)GetMonData(pp, MON_DATA_SPECIES, NULL);
                if (species == SPECIES_NONE) {
                    continue;
                }
                if (GetMonData(pp, MON_DATA_IS_EGG, NULL)) {
                    continue;
                }

                u8 level = (u8)GetMonData(pp, MON_DATA_LEVEL, NULL);
                if (level >= GetLevelCap() || level >= 100) {
                    continue; // already at the cap / max: can't gain EXP
                }

                u32 growthrate = (u32)PokePersonalParaGet(species, PERSONAL_EXP_GROUP);
                u32 nextExp = (u32)GetExpByGrowthRateAndLevel((int)growthrate, level + 1);
                if (nextExp == 0) {
                    continue;
                }

                u32 primed = nextExp - 1;
                if (primed > (u32)GetMonData(pp, MON_DATA_EXPERIENCE, NULL)) {
                    SetMonData(pp, MON_DATA_EXPERIENCE, &primed);
                }
            }

            break;
        }
#endif

    case SCRIPT_NEW_CMD_BERRY_TREE:; // pre-placed berry plant -> one-time harvest
                                     // in:  VAR_SPECIAL_x8009 = BERRY TYPE (0..NELEMS(sBerryPlantBerry)-1)
                                     //      VAR_SPECIAL_x8008 = PLANT ID   (0..BERRY_TREE_FLAG_MAX-1), unique per plant
                                     // out: VAR_SPECIAL_RESULT 0 = nothing left / bad params
                                     //                         1 = gave berries (x8004 = item, x8005 = qty)
                                     //                         2 = Bag too full
#ifdef PLANT_BERRY_TREES
        {
            fsys = ctx->fsys;
            SetScriptVar(0x800C, 0);

            u16 berryType = GetScriptVar(0x8009); // which berry -> sBerryPlantBerry[]
            u16 plantId   = GetScriptVar(0x8008); // unique per placed plant -> its flag

            if (berryType >= NELEMS(sBerryPlantBerry) || plantId >= BERRY_TREE_FLAG_MAX) {
                break;
            }

            u16 flagId = BERRY_TREE_FLAG_BASE - plantId; // flags allocated downward from 2700
            if (CheckScriptFlag(flagId)) {
                break; // already harvested at some point -> leave RESULT at 0
            }

            u16 berry = sBerryPlantBerry[berryType].item;
            u16 qmin  = sBerryPlantBerry[berryType].qmin;
            u16 qmax  = sBerryPlantBerry[berryType].qmax;
            u16 qty   = qmin + (gf_rand() % (qmax - qmin + 1));

            BAG_DATA *bag = Sav2_Bag_get(fsys->savedata);
            if (!Bag_HasSpaceForItem(bag, berry, qty, HEAPID_WORLD)) {
                SetScriptVar(0x800C, 2);
                break;
            }
            Bag_AddItem(bag, berry, qty, HEAPID_WORLD);

            SetScriptVar(0x8004, berry);
            SetScriptVar(0x8005, qty);
            SetScriptFlag(flagId);
            SetScriptVar(0x800C, 1);
            break;
        }
#endif

        return FALSE;
    }
}

#ifdef EXPAND_ROAMERS
BOOL LONG_CALL ScrCmd_CreateRoamer(SCRIPTCONTEXT *ctx)
{
    u8 roamerNo = ScriptReadByte(ctx);
    Save_CreateRoamerByID(ctx->fsys->savedata, roamerNo);
    return FALSE;
}
#endif // EXPAND_ROAMERS
