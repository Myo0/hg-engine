#include "../../include/types.h"
#include "../../include/config.h"
#include "../../include/battle.h"
#include "../../include/mega.h"
#include "../../include/pokemon.h"
#include "../../include/trainer_ai.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/species.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/custom/custom_ai.h"

// Defined in main.c — computes all 4 move scores for a singles attacker
void TrainerAI_ComputeAllMoveScores(struct BattleSystem *bsys, int attacker, unsigned int outScores[4]);

BOOL TrainerAI_ShouldSwitch(struct BattleSystem *battleSys, int battler);

int TrainerAI_PickCommand(struct BattleSystem *battleSys, int battler)
{
    if (TrainerAI_ShouldSwitch(battleSys, battler))
        return PLAYER_INPUT_PARTY;
    return PLAYER_INPUT_FIGHT;
}

BOOL TrainerAI_ShouldSwitch(struct BattleSystem *battleSys, int battler)
{
    struct BattleStruct *ctx = battleSys->sp;

    // Singles only — doubles never voluntarily switch
    if (BattleTypeGet(battleSys) & (BATTLE_TYPE_DOUBLE | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG))
        return FALSE;

    // Condition 1: All available moves must score <= 95 (i.e., net -5 or worse from baseline 100)
    unsigned int moveScores[4] = {0};
    TrainerAI_ComputeAllMoveScores(battleSys, battler, moveScores);
    for (int i = 0; i < 4; i++)
    {
        if (ctx->battlemon[battler].move[i] == MOVE_NONE) continue;
        if (moveScores[i] > 95) return FALSE;
    }

    // Condition 3: AI mon must be above 50% HP
    if (ctx->battlemon[battler].hp * 2 < ctx->battlemon[battler].maxhp)
        return FALSE;

    // Condition 2: There must be a party mon that is either:
    //   - Faster than the player mon AND not OHKOd by the player mon's best move, OR
    //   - Slower than the player mon AND not 2HKOd by the player mon's best move.
    u32 defender = BATTLER_OPPONENT(battler);
    struct AI_sDamageCalc defenderMon = {0};
    FillDamageStructFromBattleMon(battleSys, ctx, &defenderMon, defender);

    int partySize = Battle_GetClientPartySize(battleSys, battler);
    BOOL hasViableSwitch = FALSE;

    for (int i = 0; i < partySize; i++)
    {
        struct PartyPokemon *mon = Battle_GetClientPartyMon(battleSys, battler, i);
        u16 species = GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0);

        // Skip fainted, eggs, current active mon, or already switched in
        if (species == SPECIES_NONE || species == SPECIES_EGG)
            continue;
        if (GetMonData(mon, MON_DATA_HP, 0) == 0)
            continue;
        if (i == ctx->sel_mons_no[battler] || i == ctx->aiSwitchedPartySlot[battler])
            continue;

        struct AI_sDamageCalc partyMon = {0};
        FillDamageStructFromPartyMon(battleSys, ctx, &partyMon, mon);

        // Calculate max damage the defender can deal to this party mon
        u32 maxDmgReceived = 0;
        u8 critical = 0;
        int knownMoves = 4;
        for (int k = 0; k < knownMoves; k++)
        {
            struct AI_damage damages = {0};
            u32 defMoveno = ctx->battlemon[defender].move[k];
            if (defMoveno == MOVE_NONE) continue;
            struct BattleMove defMove = ctx->moveTbl[defMoveno];
            if (defMove.split == SPLIT_STATUS || !defMove.power) continue;

            damages.damageRoll = BattleAI_CalcDamage(battleSys, ctx, defMoveno,
                ctx->side_condition[BATTLER_IS_ENEMY(defender)], ctx->field_condition,
                defMove.power, defMove.type, critical, defender, battler,
                &damages, &defenderMon, &partyMon);

            if (damages.damageRoll > maxDmgReceived)
                maxDmgReceived = damages.damageRoll;
        }

        u8 speedCalc = BattleAI_CalcSpeed(battleSys, ctx, defender, mon, CALCSPEED_FLAG_NO_PRIORITY);

        if (speedCalc > 0)
        {
            // Faster: viable if not OHKOd
            if (maxDmgReceived < partyMon.hp) { hasViableSwitch = TRUE; break; }
        }
        else
        {
            // Slower: viable if not 2HKOd
            if (maxDmgReceived * 2 < partyMon.hp) { hasViableSwitch = TRUE; break; }
        }
    }

    if (!hasViableSwitch)
        return FALSE;

    // 50% chance to actually switch
    return (BattleRand(battleSys) % 2 == 0);
}
