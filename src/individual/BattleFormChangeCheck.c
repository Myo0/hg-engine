#include "types.h"

#include "constants/ability.h"
#include "constants/battle_message_constants.h"
#include "constants/battle_script_constants.h"
#include "constants/file.h"
#include "constants/game.h"
#include "constants/item.h"
#include "constants/moves.h"
#include "constants/species.h"

#include "bag.h"
#include "battle.h"
#include "pokemon.h"

/**
 *  @brief check if a form change needs to happen.  if so, return TRUE and populate *seq_no with the subscript to run
 *
 *  @see BattleFormChange
 *  @param bw battle work structure; void * because we haven't defined the battle work structure
 *  @param sp global battle structure
 *  @param seq_no battle subscript to run
 *  @return TRUE to load the battle subscript in *seq_no and run it; FALSE otherwise
 */
BOOL BattleFormChangeCheck(void *bw, struct BattleStruct *sp, int *seq_no)
{
    int i, form_no;
    BOOL ret = FALSE;
    u32 client;

    for (i = 0; i < BattleWorkClientSetMaxGet(bw); i++) {
        // TODO: Refactor this, this is wasting time processing the same thing
        if (sp->checkOnlySpecifiedTarget) {
            sp->battlerIdTemp = sp->checkOnlySpecifiedTargetClient;
        } else {
            sp->battlerIdTemp = sp->turnOrder[i];
        }
        client = sp->battlerIdTemp;

        // handle castform
        if ((sp->battlemon[client].species == SPECIES_CASTFORM)
            && (sp->battlemon[client].hp)
            && (GetBattlerAbility(sp, client) == ABILITY_FORECAST)) {
            // Cloud Nine / Air Lock suppress weather's influence on Castform's form as normal, but
            // the Electrum held-item effect below (Heat/Damp/Icy Rock) intentionally overrides
            // them -- it isn't a weather effect, so it isn't something those abilities negate.
            // Utility Umbrella also suppresses weather's influence on the holder's own form (a
            // named Bulbapedia exception), but does NOT override the Rock-item behavior below --
            // holding Umbrella means it isn't holding a Rock anyway, so this falls through to form 0.
            BOOL weatherSuppressed = (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) != 0)
                || (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) != 0)
                || (HeldItemHoldEffectGet(sp, client) == HOLD_EFFECT_UNAFFECTED_BY_RAIN_OR_SUN);
            // Snow is treated the same as Hail for Castform's Snowy form (Electrum decision --
            // unlike vanilla SV, which has no confirmed interaction since Castform can't reach
            // Paldea/Kitakami/Blueberry Academy there).
            u32 weather = weatherSuppressed ? 0
                : (sp->field_condition & (FIELD_CONDITION_RAIN_ALL | FIELD_CONDITION_SUN_ALL | FIELD_CONDITION_HAIL_ALL | FIELD_CONDITION_SNOW_ALL));

            int target_form;
            if (weather & FIELD_CONDITION_SUN_ALL) {
                target_form = 1;
            } else if (weather & FIELD_CONDITION_RAIN_ALL) {
                target_form = 2;
            } else if (weather & (FIELD_CONDITION_HAIL_ALL | FIELD_CONDITION_SNOW_ALL)) {
                target_form = 3;
            } else {
                // No weather driving the form (either genuinely none, or suppressed by Cloud Nine /
                // Air Lock) -- Heat/Damp/Icy Rock take over. Klutz and Embargo are deliberately NOT
                // checked here (Electrum decision -- this isn't treated as a "held item effect").
                switch (sp->battlemon[client].item) {
                case ITEM_HEAT_ROCK:
                    target_form = 1;
                    break;
                case ITEM_DAMP_ROCK:
                    target_form = 2;
                    break;
                case ITEM_ICY_ROCK:
                    target_form = 3;
                    break;
                default:
                    target_form = 0;
                    break;
                }
            }

            if (sp->battlemon[client].form_no != target_form) {
                sp->battlemon[client].form_no = target_form;
                BattleFormChange(client, sp->battlemon[client].form_no, bw, sp, 1);
                *seq_no = BATTLE_SUBSCRIPT_FORM_CHANGE;
                ret = TRUE;
                break;
            }
        }
        // ability is NOT forecast, but is still an alive castform
        else if ((sp->battlemon[client].species == SPECIES_CASTFORM)
            && (sp->battlemon[client].hp)
            && (sp->battlemon[client].form_no != 0)) {
            sp->battlemon[client].form_no = 0;
            BattleFormChange(client, sp->battlemon[client].form_no, bw, sp, 1);
            *seq_no = BATTLE_SUBSCRIPT_FORM_CHANGE;
            ret = TRUE;
            break;
        }

        // handle cherrim
        if ((sp->battlemon[client].species == SPECIES_CHERRIM)
            && (sp->battlemon[client].hp)) {
            // Utility Umbrella: named Bulbapedia exception -- an Umbrella-holding Cherrim can't
            // reach Sunshine Form, and immediately reverts to Overcast if it already was.
            if ((CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_CLOUD_NINE) == 0)
                && (CheckSideAbility(bw, sp, CHECK_ABILITY_ALL_HP, 0, ABILITY_AIR_LOCK) == 0)
                && (HeldItemHoldEffectGet(sp, client) != HOLD_EFFECT_UNAFFECTED_BY_RAIN_OR_SUN)) {
                // Same with Forecast, unknown interaction with Snow
                if (((sp->field_condition & (FIELD_CONDITION_RAIN_ALL | FIELD_CONDITION_SUN_ALL | FIELD_CONDITION_HAIL_ALL)) == 0)
                    && (sp->battlemon[client].form_no == 1)) {
                    sp->battlemon[client].form_no = 0;
                    *seq_no = BATTLE_SUBSCRIPT_FORM_CHANGE;
                    ret = TRUE;
                    break;
                } else if ((sp->field_condition & FIELD_CONDITION_SUN_ALL)
                    && (sp->battlemon[client].form_no == 0)) {
                    sp->battlemon[client].form_no = 1;
                    *seq_no = BATTLE_SUBSCRIPT_FORM_CHANGE;
                    ret = TRUE;
                    break;
                } else if ((sp->field_condition & FIELD_CONDITION_RAIN_ALL)
                    && (sp->battlemon[client].form_no == 1)) {
                    sp->battlemon[client].form_no = 0;
                    *seq_no = BATTLE_SUBSCRIPT_FORM_CHANGE;
                    ret = TRUE;
                    break;
                } else if ((sp->field_condition & FIELD_CONDITION_HAIL_ALL)
                    && (sp->battlemon[client].form_no == 1)) {
                    sp->battlemon[client].form_no = 0;
                    *seq_no = BATTLE_SUBSCRIPT_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
            } else {
                if (sp->battlemon[client].form_no == 1) {
                    sp->battlemon[client].form_no = 0;
                    *seq_no = BATTLE_SUBSCRIPT_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
            }
        }

        // handle arceus
        if ((sp->battlemon[client].species == SPECIES_ARCEUS)
            && (sp->battlemon[client].hp)
            && (GetBattlerAbility(sp, client) == ABILITY_MULTITYPE)) {
            form_no = GetArceusType(BattleItemDataGet(sp, sp->battlemon[client].item, 1));
            if (sp->battlemon[client].form_no != form_no) {
                sp->battlemon[client].form_no = form_no;
                *seq_no = BATTLE_SUBSCRIPT_FORM_CHANGE;
                ret = TRUE;
                break;
            }
        }

        // handle Silvally TODO check if this actually works, eventually change to use the memories instead of plates
        if ((sp->battlemon[client].species == SPECIES_SILVALLY)
            && (sp->battlemon[client].hp)
            && (GetBattlerAbility(sp, client) == ABILITY_RKS_SYSTEM)) {
            form_no = GetArceusType(BattleItemDataGet(sp, sp->battlemon[client].item, 1));
            if (sp->battlemon[client].form_no != form_no) {
                sp->battlemon[client].form_no = form_no;
                *seq_no = BATTLE_SUBSCRIPT_FORM_CHANGE;
                ret = TRUE;
                break;
            }
        }

        // handle giratina
        if ((sp->battlemon[client].species == SPECIES_GIRATINA)
            && (sp->battlemon[client].hp)
            && (sp->battlemon[client].form_no == 1)) {
            if ((sp->battlemon[client].condition2 & STATUS2_TRANSFORM)
                || (((BattleWorkBattleStatusFlagGet(bw) & 0x80) == 0) // probably distortion world check
                    && (sp->battlemon[client].item != ITEM_GRISEOUS_ORB))) {
                if (sp->battlemon[client].condition2 & STATUS2_TRANSFORM) {
                    struct PartyPokemon *pp;
                    int defence;
                    int work;

                    pp = AllocMonZeroed(5);
                    if (BattleTypeGet(bw) & BATTLE_TYPE_DOUBLES) {
                        defence = sp->playerActions[client][1];
                    } else {
                        defence = BATTLER_OPPONENT(client);
                    }
                    PokeCopyPPtoPP(BattleWorkPokemonParamGet(bw, defence, sp->sel_mons_no[defence]), pp);
                    work = 0;
                    SetMonData(pp, MON_DATA_HELD_ITEM, &work);
                    work = 0;
                    SetMonData(pp, MON_DATA_FORM, &work);
                    PokeParaGiratinaFormChange(pp);
                    sp->battlemon[client].attack = GetMonData(pp, MON_DATA_ATTACK, 0);
                    sp->battlemon[client].defense = GetMonData(pp, MON_DATA_DEFENSE, 0);
                    sp->battlemon[client].speed = GetMonData(pp, MON_DATA_SPEED, 0);
                    sp->battlemon[client].spatk = GetMonData(pp, MON_DATA_SPECIAL_ATTACK, 0);
                    sp->battlemon[client].spdef = GetMonData(pp, MON_DATA_SPECIAL_DEFENSE, 0);
                    sp->battlemon[client].ability = GetMonData(pp, MON_DATA_ABILITY, 0);
                    sp->battlemon[client].form_no = 0;
                    sp->server_status_flag2 |= SERVER_STATUS_FLAG2_FORM_CHANGE;
                    SCIO_PSPtoPPCopy(bw, sp, client);
                    sys_FreeMemoryEz(pp);
                    *seq_no = BATTLE_SUBSCRIPT_FORM_CHANGE;
                    ret = TRUE;
                    break;
                } else {
                    *seq_no = BATTLE_SUBSCRIPT_GIRATINA_FORM_CHANGE;
                    ret = TRUE;
                    break;
                }
            }
        }

        // handle darmanitan zen mode
        if ((sp->battlemon[client].species == SPECIES_DARMANITAN)
            && (GetBattlerAbility(sp, client) == ABILITY_ZEN_MODE)
            && (sp->battlemon[client].hp)
            && (sp->battlemon[client].hp <= (s32)(sp->battlemon[client].maxhp / 2))
            && (sp->battlemon[client].form_no < 2)) // forms 0 and 1
        {
            sp->battlemon[client].form_no += 2;
            BattleFormChange(client, sp->battlemon[client].form_no, bw, sp, 1);
            *seq_no = BATTLE_SUBSCRIPT_FORM_CHANGE;
            ret = TRUE;
            break;
        } else if ((sp->battlemon[client].species == SPECIES_DARMANITAN)
            && (sp->battlemon[client].hp)
            && (sp->battlemon[client].hp > (s32)(sp->battlemon[client].maxhp / 2) || (GetBattlerAbility(sp, client) != ABILITY_ZEN_MODE))
            && (sp->battlemon[client].form_no >= 2)) // forms 2 and 3
        {
            sp->battlemon[client].form_no -= 2;
            BattleFormChange(client, sp->battlemon[client].form_no, bw, sp, 1);
            *seq_no = BATTLE_SUBSCRIPT_FORM_CHANGE;
            ret = TRUE;
            break;
        }

        // handle meloetta - change to/from pirouette form when using relic song
        if ((sp->battlemon[client].species == SPECIES_MELOETTA)
            && (sp->battlemon[client].hp)
            && !(sp->waza_status_flag & MOVE_STATUS_FAILED)
            && (sp->current_move_index == MOVE_RELIC_SONG && sp->waza_no_old[client] == MOVE_RELIC_SONG)
            && (sp->battlemon[client].form_no < 2)
            && (sp->relic_song_tracker & No2Bit(client)) // MoveCheckDamageNegatingAbilities triggers meloetta's form change if it can happen
            && (sp->multiHitCount <= 1)) {
            sp->relic_song_tracker &= ~No2Bit(client);
            sp->battlemon[client].form_no ^= 1;
            BattleFormChange(client, sp->battlemon[client].form_no, bw, sp, 1);
            *seq_no = BATTLE_SUBSCRIPT_FORM_CHANGE;
            ret = TRUE;
            break;
        }

        // handle genesect
        if ((sp->battlemon[client].species == SPECIES_GENESECT)
            && (sp->battlemon[client].hp)) {
            form_no = GetGenesectForme(sp->battlemon[client].item);
            if (sp->battlemon[client].form_no != form_no) {
                sp->battlemon[client].form_no = form_no;
                *seq_no = BATTLE_SUBSCRIPT_FORM_CHANGE;
                ret = TRUE;
                break;
            }
        }

        // handle xerneas - force into active mode
        if ((sp->battlemon[client].species == SPECIES_XERNEAS)
            && (sp->battlemon[client].hp)) {
            form_no = 1;
            if (sp->battlemon[client].form_no != form_no) {
                struct PartyPokemon *pp2 = BattleWorkPokemonParamGet(bw, client, sp->sel_mons_no[client]);
                sp->battlemon[client].form_no = form_no;
                *seq_no = BATTLE_SUBSCRIPT_FORM_CHANGE;
                SetMonData(pp2, MON_DATA_FORM, &form_no);
                ret = TRUE;
                break;
            }
        }

        // handle Zygarde TODO test
        if ((sp->battlemon[client].species == SPECIES_ZYGARDE)
            && (sp->battlemon[client].hp)
            && (sp->battlemon[client].hp <= (s32)(sp->battlemon[client].maxhp / 2))
            && (sp->battlemon[client].form_no == 2 || sp->battlemon[client].form_no == 3)) {
            // TODO this has not yet been tested
            sp->battlemon[client].form_no += 2;
            BattleFormChange(client, sp->battlemon[client].form_no, bw, sp, 0);
            sp->hp_calc_work = sp->battlemon[sp->attack_client].maxhp - sp->battlemon[sp->attack_client].hp;
            struct PartyPokemon *pp2 = BattleWorkPokemonParamGet(bw, client, sp->sel_mons_no[client]);
            sp->battlemon[client].maxhp = GetMonData(pp2, MON_DATA_MAXHP, NULL);
            *seq_no = BATTLE_SUBSCRIPT_HANDLE_ZYGARDE_FORM_CHANGE;
            ret = TRUE;
            break;
        }

        // handle Wishiwashi TODO test (also at some point add custom transform text)
        if ((sp->battlemon[client].species == SPECIES_WISHIWASHI)
            && (sp->battlemon[client].hp)
            && (sp->battlemon[client].form_no == 0)
            && (sp->battlemon[client].hp > (s32)(sp->battlemon[client].maxhp / 4))) {
            sp->battlemon[client].form_no = 1;
            BattleFormChange(client, sp->battlemon[client].form_no, bw, sp, 0);
            *seq_no = BATTLE_SUBSCRIPT_FORM_CHANGE;
            ret = TRUE;
            break;
        } else if ((sp->battlemon[client].species == SPECIES_WISHIWASHI)
            && (sp->battlemon[client].hp)
            && (sp->battlemon[client].form_no == 1)
            && (sp->battlemon[client].hp <= (s32)(sp->battlemon[client].maxhp / 4))) {
            sp->battlemon[client].form_no = 0;
            BattleFormChange(client, sp->battlemon[client].form_no, bw, sp, 0);
            *seq_no = BATTLE_SUBSCRIPT_FORM_CHANGE;
            ret = TRUE;
            break;
        }
    }

    return ret;
}
