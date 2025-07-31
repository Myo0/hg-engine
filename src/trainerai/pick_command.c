#include "../../include/types.h"
#include "../../include/config.h"
#include "../../include/battle.h"
#include "../../include/mega.h"
#include "../../include/pokemon.h"
#include "../../include/trainer_ai.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/species.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/custom/custom_ai.h"


BOOL TrainerAI_ShouldSwitch(struct BattleSystem * bsys, int battler);

int TrainerAI_PickCommand(struct BattleSystem * bsys, int battler)
{
    debug_printf("TrainerAI_PickCommand:\n");
    if (TrainerAI_ShouldSwitch(bsys, battler))
        return PLAYER_INPUT_PARTY;
    return PLAYER_INPUT_FIGHT;
}

BOOL TrainerAI_ShouldSwitch(struct BattleSystem * bsys, int attacker)
{
    debug_printf("TrainerAI_ShouldSwitch:\n");
    struct BattleStruct* ctx = bsys->sp;
    u32 battleType = BattleTypeGet(bsys);

    if (battleType & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLE | BATTLE_TYPE_TAG))
        return FALSE;

    if (CantEscape(bsys, ctx, attacker, NULL))
        return FALSE;

    int partySizeAttacker = Battle_GetClientPartySize(bsys, attacker);
    int livingMembersAttacker = 0;

    for (int i = 0; i < partySizeAttacker; i++)
    {
        struct PartyPokemon* current = Battle_GetClientPartyMon(bsys, attacker, i);
        if (!(GetMonData(current, MON_DATA_HP, 0) == 0 ||
            GetMonData(current, MON_DATA_SPECIES_OR_EGG, 0) == 0 ||
            GetMonData(current, MON_DATA_SPECIES_OR_EGG, 0) == SPECIES_EGG))
        {

           livingMembersAttacker++;
        }
    }
    if (livingMembersAttacker < 2)
        return FALSE;

    struct AI_sDamageCalc attackerMon = { 0 };
    struct AI_sDamageCalc defenderMon = { 0 };
    u32 defender = BATTLER_OPPONENT(attacker);
	debug_printf("TrainerAI_ShouldSwitch: Attacker %d, defender %d\n", attacker, defender);

    FillDamageStructFromBattleMon(bsys, ctx, &attackerMon, attacker);
    FillDamageStructFromBattleMon(bsys, ctx, &defenderMon, defender);

    u32 effectivenessFlag = 0;
	u32 effectivenessOnPlayer[CLIENT_MAX] = { 0 };
    int attackerMovesKnown = GetBattlerLearnedMoveCount(bsys, ctx, attacker);
    for (int j = 0; j < attackerMovesKnown; j++)
    {
        u32 attackerMoveno = ctx->battlemon[attacker].move[j];
        struct BattleMove attackerMove = ctx->moveTbl[attackerMoveno];
        if (attackerMove.split != SPLIT_STATUS && attackerMove.power > 1)
        {
            u8 movetype = GetAdjustedMoveTypeBasics(ctx, attackerMoveno, attackerMon.ability, attackerMove.type);
            effectivenessOnPlayer[j] = BattleAI_GetTypeEffectiveness(bsys, ctx, movetype, &effectivenessFlag, &attackerMon, &defenderMon);
        }
        debug_printf("move %d:%d has effectiveness %d\n", j, attackerMoveno, effectivenessOnPlayer[j]);
    }

    BOOL onlyIneffectiveMoves = TRUE;
    for (int k = 0; k < attackerMovesKnown; ++k)
    {
        u32 attackerMoveno = ctx->battlemon[attacker].move[k];
        struct BattleMove attackerMove = ctx->moveTbl[attackerMoveno];
        if (attackerMove.split != SPLIT_STATUS && attackerMove.power > 1)
        {
            switch (effectivenessOnPlayer[k])
            {
            case TYPE_MUL_NORMAL:
            case TYPE_MUL_SUPER_EFFECTIVE:
            case TYPE_MUL_DOUBLE_SUPER_EFFECTIVE:
            case TYPE_MUL_TRIPLE_SUPER_EFFECTIVE:
                onlyIneffectiveMoves = FALSE;
                break;
            case TYPE_MUL_TRIPLE_NOT_EFFECTIVE:
            case TYPE_MUL_DOUBLE_NOT_EFFECTIVE:
            case TYPE_MUL_NOT_EFFECTIVE:
                if (attackerMove.effect == MOVE_EFFECT_SWITCH_HIT) // && consider fastKills/speeds
                    onlyIneffectiveMoves = FALSE;
                break;
            default: //TYPE_MUL_NO_EFFECT
                break;
            }
        }
    }

    if (attackerMon.percenthp > 67
        && (onlyIneffectiveMoves || ((ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG_ACTIVE) && (BattleRand(bsys) % 2))))
    {
        int score = 0;
        int switchToSlot = BattleAI_PostKOSwitchIn_Internal(bsys, attacker, &score);
        int rand = BattleRand(bsys) % 2;
		debug_printf("TrainerAI_ShouldSwitch: Only ineffective moves, consider(%d) switching to slot %d with score %d\n", rand, switchToSlot, score);
        if (score >= 102 && rand == 0)
        {
            ctx->aiSwitchedPartySlot[attacker] = switchToSlot;
            return TRUE;
        }
    }

    return FALSE;
}


BOOL AI_PerishSongKO(struct BattleStruct* battleCtx, int battler)
{
    if (battleCtx->battlemon[battler].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG_ACTIVE) {
        battleCtx->aiSwitchedPartySlot[battler] = 6;
        return TRUE;
    }

    return FALSE;
}