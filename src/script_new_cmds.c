#include "../include/types.h"
#include "../include/script.h"
#include "../include/repel.h"
#include "../include/constants/file.h"
#include "../include/constants/save.h"

#define SCRIPT_NEW_CMD_REPEL_USE        0
#define SCRIPT_NEW_CMD_BOTTLE_CAP_USE   1
#define SCRIPT_NEW_CMD_SET_NATURE       2

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

        case SCRIPT_NEW_CMD_SET_NATURE:; // set nature via DSPRE script
        #ifdef SET_POKEMON_NATURE
        fsys = ctx->fsys;
        party = SaveData_GetPlayerPartyPtr(fsys->savedata);
        pos = GetScriptVar(0x8008);
        pp = Party_GetMonByIndex(party, pos);
    
        {
            u8 desiredNature = GetScriptVar(0x8009); // Nature index (0–24)
            u32 originalPID;
            GetMonData(pp, MON_DATA_PERSONALITY, &originalPID);
    
    
            u8  ability         = GetMonData(pp, MON_DATA_ABILITY, NULL);
            u16 heldItem        = GetMonData(pp, MON_DATA_HELD_ITEM, NULL);
            u16 species         = GetMonData(pp, MON_DATA_SPECIES, NULL);
            u32 exp             = GetMonData(pp, MON_DATA_EXPERIENCE, NULL);
            u8  friendship      = GetMonData(pp, MON_DATA_FRIENDSHIP, NULL);
            u16 move1           = GetMonData(pp, MON_DATA_MOVE1, NULL);
            u16 move2           = GetMonData(pp, MON_DATA_MOVE2, NULL);
            u16 move3           = GetMonData(pp, MON_DATA_MOVE3, NULL);
            u16 move4           = GetMonData(pp, MON_DATA_MOVE4, NULL);
            u8  move1pp         = GetMonData(pp, MON_DATA_MOVE1PP, NULL);
            u8  move2pp         = GetMonData(pp, MON_DATA_MOVE2PP, NULL);
            u8  move3pp         = GetMonData(pp, MON_DATA_MOVE3PP, NULL);
            u8  move4pp         = GetMonData(pp, MON_DATA_MOVE4PP, NULL);
            u8  move1ppup       = GetMonData(pp, MON_DATA_MOVE1PPUP, NULL);
            u8  move2ppup       = GetMonData(pp, MON_DATA_MOVE2PPUP, NULL);
            u8  move3ppup       = GetMonData(pp, MON_DATA_MOVE3PPUP, NULL);
            u8  move4ppup       = GetMonData(pp, MON_DATA_MOVE4PPUP, NULL);
            u8  move1maxpp      = GetMonData(pp, MON_DATA_MOVE1MAXPP, NULL);
            u8  move2maxpp      = GetMonData(pp, MON_DATA_MOVE2MAXPP, NULL);
            u8  move3maxpp      = GetMonData(pp, MON_DATA_MOVE3MAXPP, NULL);
            u8  move4maxpp      = GetMonData(pp, MON_DATA_MOVE4MAXPP, NULL);
            u8  hasNickname     = GetMonData(pp, MON_DATA_HAS_NICKNAME, NULL);
            u8  gender          = GetMonData(pp, MON_DATA_GENDER, NULL);
            u8  form            = GetMonData(pp, MON_DATA_FORM, NULL);
            u32 metLocation     = GetMonData(pp, MON_DATA_HGSS_MET_LOCATION, NULL);
            u16 nickname[11];
            GetMonData(pp, MON_DATA_NICKNAME, nickname);
            u16 otName[8];
            GetMonData(pp, MON_DATA_OT_NAME, otName);
            u8  metYear        = GetMonData(pp, MON_DATA_MET_YEAR, NULL);
            u8  metMonth       = GetMonData(pp, MON_DATA_MET_MONTH, NULL);
            u8  metDay         = GetMonData(pp, MON_DATA_MET_DAY, NULL);
            u32 otid           = GetMonData(pp, MON_DATA_OTID, NULL);
            u8  isEgg          = GetMonData(pp, MON_DATA_IS_EGG, NULL);
            u8  encounterType  = GetMonData(pp, MON_DATA_ENCOUNTER_TYPE, NULL);
            u8  pokeball       = GetMonData(pp, MON_DATA_POKEBALL, NULL);
            u8  metLevel       = GetMonData(pp, MON_DATA_MET_LEVEL, NULL);
            u8  pokerus        = GetMonData(pp, MON_DATA_POKERUS, NULL);
            u8  level          = GetMonData(pp, MON_DATA_LEVEL, NULL);
            u8  capsule        = GetMonData(pp, MON_DATA_CAPSULE, NULL);
            u16 hpStat         = GetMonData(pp, MON_DATA_HP, NULL);
            u16 atkStat        = GetMonData(pp, MON_DATA_ATTACK, NULL);
            u16 defStat        = GetMonData(pp, MON_DATA_DEFENSE, NULL);
            u16 spdStat        = GetMonData(pp, MON_DATA_SPEED, NULL);
            u16 spatkStat      = GetMonData(pp, MON_DATA_SPECIAL_ATTACK, NULL);
            u16 spdefStat      = GetMonData(pp, MON_DATA_SPECIAL_DEFENSE, NULL);
            u8  speciesExists  = GetMonData(pp, MON_DATA_SPECIES_EXISTS, NULL);
            u8  hpIV           = GetMonData(pp, MON_DATA_HP_IV, NULL);
            u8  atkIV          = GetMonData(pp, MON_DATA_ATK_IV, NULL);
            u8  defIV          = GetMonData(pp, MON_DATA_DEF_IV, NULL);
            u8  spatkIV        = GetMonData(pp, MON_DATA_SPATK_IV, NULL);
            u8  spdefIV        = GetMonData(pp, MON_DATA_SPDEF_IV, NULL);
            u8  speedIV        = GetMonData(pp, MON_DATA_SPEED_IV, NULL);
    
    
            u32 pid = originalPID;
            u8 attempts = 0;
    
            while ((pid % 25) != desiredNature && attempts < 0x20) {
                pid = (originalPID & 0xFFFFFFE0) | attempts;
                attempts++;
            }
    
            if ((pid % 25) != desiredNature) {
                do {
                    pid = gf_rand();
                } while ((pid % 25) != desiredNature);
            }
    
            SetMonData(pp, MON_DATA_PERSONALITY, &pid);
    
    
            SetMonData(pp, MON_DATA_ABILITY, &ability);
            SetMonData(pp, MON_DATA_HELD_ITEM, &heldItem);
            SetMonData(pp, MON_DATA_SPECIES, &species);
            SetMonData(pp, MON_DATA_EXPERIENCE, &exp);
            SetMonData(pp, MON_DATA_FRIENDSHIP, &friendship);
            SetMonData(pp, MON_DATA_MOVE1, &move1);
            SetMonData(pp, MON_DATA_MOVE2, &move2);
            SetMonData(pp, MON_DATA_MOVE3, &move3);
            SetMonData(pp, MON_DATA_MOVE4, &move4);
            SetMonData(pp, MON_DATA_MOVE1, &move1);
            SetMonData(pp, MON_DATA_MOVE2, &move2);
            SetMonData(pp, MON_DATA_MOVE3, &move3);
            SetMonData(pp, MON_DATA_MOVE4, &move4);
            SetMonData(pp, MON_DATA_MOVE1PP, &move1pp);
            SetMonData(pp, MON_DATA_MOVE2PP, &move2pp);
            SetMonData(pp, MON_DATA_MOVE3PP, &move3pp);
            SetMonData(pp, MON_DATA_MOVE4PP, &move4pp);
            SetMonData(pp, MON_DATA_MOVE1PPUP, &move1ppup);
            SetMonData(pp, MON_DATA_MOVE2PPUP, &move2ppup);
            SetMonData(pp, MON_DATA_MOVE3PPUP, &move3ppup);
            SetMonData(pp, MON_DATA_MOVE4PPUP, &move4ppup);
            SetMonData(pp, MON_DATA_MOVE1MAXPP, &move1maxpp);
            SetMonData(pp, MON_DATA_MOVE2MAXPP, &move2maxpp);
            SetMonData(pp, MON_DATA_MOVE3MAXPP, &move3maxpp);
            SetMonData(pp, MON_DATA_MOVE4MAXPP, &move4maxpp);
            SetMonData(pp, MON_DATA_HAS_NICKNAME, &hasNickname);
            SetMonData(pp, MON_DATA_GENDER, &gender);
            SetMonData(pp, MON_DATA_FORM, &form);
            SetMonData(pp, MON_DATA_HGSS_MET_LOCATION, &metLocation);
            SetMonData(pp, MON_DATA_NICKNAME, nickname);
            SetMonData(pp, MON_DATA_OT_NAME, otName);
            SetMonData(pp, MON_DATA_MET_YEAR, &metYear);
            SetMonData(pp, MON_DATA_MET_MONTH, &metMonth);
            SetMonData(pp, MON_DATA_MET_DAY, &metDay);
            SetMonData(pp, MON_DATA_OTID, &otid);
            SetMonData(pp, MON_DATA_IS_EGG, &isEgg);
            SetMonData(pp, MON_DATA_ENCOUNTER_TYPE, &encounterType);
            SetMonData(pp, MON_DATA_POKEBALL, &pokeball);
            SetMonData(pp, MON_DATA_MET_LEVEL, &metLevel);
            SetMonData(pp, MON_DATA_POKERUS, &pokerus);
            SetMonData(pp, MON_DATA_LEVEL, &level);
            SetMonData(pp, MON_DATA_CAPSULE, &capsule);
            SetMonData(pp, MON_DATA_HP, &hpStat);
            SetMonData(pp, MON_DATA_ATTACK, &atkStat);
            SetMonData(pp, MON_DATA_DEFENSE, &defStat);
            SetMonData(pp, MON_DATA_SPEED, &spdStat);
            SetMonData(pp, MON_DATA_SPECIAL_ATTACK, &spatkStat);
            SetMonData(pp, MON_DATA_SPECIAL_DEFENSE, &spdefStat);
            SetMonData(pp, MON_DATA_SPECIES_EXISTS, &speciesExists);
            SetMonData(pp, MON_DATA_HP_IV, &hpIV);
            SetMonData(pp, MON_DATA_ATK_IV, &atkIV);
            SetMonData(pp, MON_DATA_DEF_IV, &defIV);
            SetMonData(pp, MON_DATA_SPATK_IV, &spatkIV);
            SetMonData(pp, MON_DATA_SPDEF_IV, &spdefIV);
            SetMonData(pp, MON_DATA_SPEED_IV, &speedIV);
        }
    
        RecalcPartyPokemonStats(pp);
    #endif

        default: break;
    }

    return FALSE;
}
