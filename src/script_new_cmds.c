#include "../include/types.h"
#include "../include/script.h"
#include "../include/repel.h"
#include "../include/constants/file.h"
#include "../include/constants/save.h"

#define SCRIPT_NEW_CMD_REPEL_USE            0
#define SCRIPT_NEW_CMD_BOTTLE_CAP_USE       1
#define SCRIPT_NEW_CMD_SET_NATURE           2
#define SCRIPT_NEW_CMD_GIFT_MON_3PERF_IVS   3
#define SCRIPT_NEW_CMD_GIVE_EGG_3PERF_IVS   4
#define SCRIPT_NEW_CMD_STARTER_3PERF_IVS    5
#define SCRIPT_NEW_CMD_GIVE_STATUS          6


#define SCRIPT_NEW_CMD_MAX          256

BOOL Script_RunNewCmd(SCRIPTCONTEXT *ctx) {
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
                    case 0: SetMonData(pp, MON_DATA_HP_IV, &iv); break;
                    case 1: SetMonData(pp, MON_DATA_ATK_IV, &iv); break;
                    case 2: SetMonData(pp, MON_DATA_DEF_IV, &iv); break;
                    case 3: SetMonData(pp, MON_DATA_SPATK_IV, &iv); break;
                    case 4: SetMonData(pp, MON_DATA_SPDEF_IV, &iv); break;
                    case 5: SetMonData(pp, MON_DATA_SPEED_IV, &iv); break;
                    case 6:
                        SetMonData(pp, MON_DATA_HP_IV, &iv);
                        SetMonData(pp, MON_DATA_ATK_IV, &iv);
                        SetMonData(pp, MON_DATA_DEF_IV, &iv);
                        SetMonData(pp, MON_DATA_SPATK_IV, &iv);
                        SetMonData(pp, MON_DATA_SPDEF_IV, &iv);
                        SetMonData(pp, MON_DATA_SPEED_IV, &iv);
                        break;
                    default: break;
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

        default: break;

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
    
                u8 iv_indices[6] = {0, 1, 2, 3, 4, 5};
                for (int j = 5; j > 0; j--) {
                    int k = gf_rand() % (j + 1);
                    u8 tmp = iv_indices[j];
                    iv_indices[j] = iv_indices[k];
                    iv_indices[k] = tmp;
                }
    
                u8 perfect_iv = 31;
                for (int j = 0; j < 3; j++) {
                    switch (iv_indices[j]) {
                        case 0: SetMonData(pp, MON_DATA_HP_IV, &perfect_iv); break;
                        case 1: SetMonData(pp, MON_DATA_ATK_IV, &perfect_iv); break;
                        case 2: SetMonData(pp, MON_DATA_DEF_IV, &perfect_iv); break;
                        case 3: SetMonData(pp, MON_DATA_SPATK_IV, &perfect_iv); break;
                        case 4: SetMonData(pp, MON_DATA_SPDEF_IV, &perfect_iv); break;
                        case 5: SetMonData(pp, MON_DATA_SPEED_IV, &perfect_iv); break;
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
    
                u8 iv_indices[6] = {0, 1, 2, 3, 4, 5};
                for (int j = 5; j > 0; j--) {
                    int k = gf_rand() % (j + 1);
                    u8 tmp = iv_indices[j];
                    iv_indices[j] = iv_indices[k];
                    iv_indices[k] = tmp;
                }
    
                u8 perfect_iv = 31;
                for (int j = 0; j < 3; j++) {
                    switch (iv_indices[j]) {
                        case 0: SetMonData(pp, MON_DATA_HP_IV, &perfect_iv); break;
                        case 1: SetMonData(pp, MON_DATA_ATK_IV, &perfect_iv); break;
                        case 2: SetMonData(pp, MON_DATA_DEF_IV, &perfect_iv); break;
                        case 3: SetMonData(pp, MON_DATA_SPATK_IV, &perfect_iv); break;
                        case 4: SetMonData(pp, MON_DATA_SPDEF_IV, &perfect_iv); break;
                        case 5: SetMonData(pp, MON_DATA_SPEED_IV, &perfect_iv); break;
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

    u8 iv_indices[6] = {0, 1, 2, 3, 4, 5};
    for (int i = 5; i > 0; i--) {
        int j = gf_rand() % (i + 1);
        u8 tmp = iv_indices[i];
        iv_indices[i] = iv_indices[j];
        iv_indices[j] = tmp;
    }

    u8 perfect_iv = 31;
    for (int i = 0; i < 3; i++) {
        switch (iv_indices[i]) {
            case 0: SetMonData(pp, MON_DATA_HP_IV, &perfect_iv); break;
            case 1: SetMonData(pp, MON_DATA_ATK_IV, &perfect_iv); break;
            case 2: SetMonData(pp, MON_DATA_DEF_IV, &perfect_iv); break;
            case 3: SetMonData(pp, MON_DATA_SPATK_IV, &perfect_iv); break;
            case 4: SetMonData(pp, MON_DATA_SPDEF_IV, &perfect_iv); break;
            case 5: SetMonData(pp, MON_DATA_SPEED_IV, &perfect_iv); break;
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

    return FALSE;
}
}
