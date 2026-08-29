#include "../../include/types.h"
#include "../../include/config.h"
#include "../../include/battle.h"
#include "../../include/mega.h"
#include "../../include/pokemon.h"
#include "../../include/trainer_ai.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/custom/custom_ai.h"

// Defined in main.c — computes all 4 move scores for a singles attacker
void TrainerAI_ComputeAllMoveScores(struct BattleSystem *bsys, int attacker, unsigned int outScores[4]);

// Defined in calc.c — adjusts raw damage for multi-hit, fixed-damage, etc.
int BattleAI_AdjustUnusualMoveDamage(u32 attackerLevel, u32 attackerHP, u32 defenderHP, u32 damage, u32 moveEffect, u32 attackerAbility, u32 attackerItem);

// Written by TrainerAI_ImmunitySwitch when it decides to switch; read by TrainerAI_Main
// to override PostKO slot selection. -1 means no immunity switch pending.
int gImmunitySwitchTargetSlot = -1;

BOOL TrainerAI_ShouldSwitch(struct BattleSystem *battleSys, int battler);

// Returns TRUE if the party mon's ability or typing grants immunity to the given move.
static BOOL IsPartyMonImmuneToMove(struct BattleSystem *battleSys, struct BattleStruct *ctx, struct AI_sDamageCalc *mon, u16 moveno)
{
    u8 moveType = ctx->moveTbl[moveno].type;
    switch (mon->ability) {
    case ABILITY_FLASH_FIRE:
    case ABILITY_WELL_BAKED_BODY:
        if (moveType == TYPE_FIRE) {
            return TRUE;
        }
        break;
    case ABILITY_LIGHTNING_ROD:
    case ABILITY_VOLT_ABSORB:
    case ABILITY_MOTOR_DRIVE:
        if (moveType == TYPE_ELECTRIC) {
            return TRUE;
        }
        break;
    case ABILITY_WATER_ABSORB:
    case ABILITY_STORM_DRAIN:
    case ABILITY_DRY_SKIN:
        if (moveType == TYPE_WATER) {
            return TRUE;
        }
        break;
    case ABILITY_SAP_SIPPER:
        if (moveType == TYPE_GRASS) {
            return TRUE;
        }
        break;
    case ABILITY_LEVITATE:
    case ABILITY_EELEVATE:
    case ABILITY_EARTH_EATER:
        if (moveType == TYPE_GROUND) {
            return TRUE;
        }
        break;
    case ABILITY_BULLETPROOF:
        if (IsBallOrBombMove(moveno)) {
            return TRUE;
        }
        break;
    case ABILITY_SOUNDPROOF:
        if (IsMoveSoundBased(moveno)) {
            return TRUE;
        }
        break;
    case ABILITY_WIND_RIDER:
        if (IsMoveWindMove(moveno)) {
            return TRUE;
        }
        break;
    default:
        break;
    }
    // Type chart immunity (0x effectiveness)
    struct AI_sDamageCalc dummyAttacker = { 0 };
    u32 flag = 0;
    return BattleAI_GetTypeEffectiveness(battleSys, ctx, moveno, moveType, &flag, &dummyAttacker, mon) == TYPE_MUL_NO_EFFECT;
}

// Immunity-based proactive switch. Runs every turn, independent of move quality / HP thresholds.
//   25% trigger: player's highest-damage move against current AI mon hits a party mon's immunity.
//   50% trigger: player's last used move hits a party mon's immunity.
// Among all qualifying candidates, picks the one with the highest damage output against the player.
// Survivability check applies to each candidate: not OHKOd if faster, not 2HKOd if slower.
static BOOL TrainerAI_ImmunitySwitch(struct BattleSystem *battleSys, int battler)
{
    gImmunitySwitchTargetSlot = -1;
    struct BattleStruct *ctx = battleSys->sp;
    u32 defender = BATTLER_OPPONENT(battler);

    struct AI_sDamageCalc aiMon = { 0 };
    FillDamageStructFromBattleMon(battleSys, ctx, &aiMon, battler);
    struct AI_sDamageCalc playerMon = { 0 };
    FillDamageStructFromBattleMon(battleSys, ctx, &playerMon, defender);

    // Find the player's highest-damaging move against the current AI mon (for 25% trigger)
    u16 highestDmgMove = MOVE_NONE;
    u32 highestDmg = 0;
    for (int k = 0; k < 4; k++) {
        u16 moveno = ctx->battlemon[defender].move[k];
        if (moveno == MOVE_NONE) {
            continue;
        }
        struct BattleMove mv = ctx->moveTbl[moveno];
        if (mv.split == SPLIT_STATUS || !mv.power) {
            continue;
        }
        struct AI_damage damages = { 0 };
        damages.damageRoll = BattleAI_CalcDamage(battleSys, ctx, moveno, ctx->side_condition[BATTLER_IS_ENEMY(defender)], ctx->field_condition, mv.power, mv.type, 0, defender, battler, &damages, &playerMon, &aiMon);
        if (damages.damageRange[15] > highestDmg) {
            highestDmg = damages.damageRange[15];
            highestDmgMove = moveno;
        }
    }

    // Condition 1: if active AI mon can OHKO player, suppress switch unless AI is slower AND
    // the player also OHKOs the AI (i.e., AI dies before getting to act).
    u32 aiMaxDmg = 0;
    for (int k = 0; k < 4; k++) {
        u16 moveno = ctx->battlemon[battler].move[k];
        if (moveno == MOVE_NONE) {
            continue;
        }
        struct BattleMove mv = ctx->moveTbl[moveno];
        if (mv.split == SPLIT_STATUS || !mv.power) {
            continue;
        }
        struct AI_damage damages = { 0 };
        damages.damageRoll = BattleAI_CalcDamage(battleSys, ctx, moveno, ctx->side_condition[BATTLER_IS_ENEMY(battler)], ctx->field_condition, mv.power, mv.type, 0, battler, defender, &damages, &aiMon, &playerMon);
        if (damages.damageRange[15] > aiMaxDmg) {
            aiMaxDmg = damages.damageRange[15];
        }
    }
    if (aiMaxDmg >= playerMon.hp) {
        BOOL aiFaster = (aiMon.speed >= playerMon.speed);
        BOOL playerOHKOsAI = (highestDmg >= aiMon.hp);
        if (aiFaster || !playerOHKOsAI) {
            return FALSE;
        }
    }

    u16 playerLastMove = ctx->waza_no_old[defender];
    int partySize = Battle_GetClientPartySize(battleSys, battler);

    int bestSlot = -1;
    u32 bestDamage = 0;
    BOOL bestUse50Pct = FALSE;

    for (int i = 0; i < partySize; i++) {
        struct PartyPokemon *mon = Battle_GetClientPartyMon(battleSys, battler, i);
        u16 species = GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0);

        if (species == SPECIES_NONE || species == SPECIES_EGG) {
            continue;
        }
        if (GetMonData(mon, MON_DATA_HP, 0) == 0) {
            continue;
        }
        if (i == ctx->sel_mons_no[battler] || i == ctx->ai_reshuffle_sel_mons_no[battler]) {
            continue;
        }

        struct AI_sDamageCalc partyMonData = { 0 };
        FillDamageStructFromPartyMon(battleSys, ctx, &partyMonData, mon);

        // Survivability: max damage player can deal to this candidate
        u32 maxDmgReceived = 0;
        for (int k = 0; k < 4; k++) {
            u16 moveno = ctx->battlemon[defender].move[k];
            if (moveno == MOVE_NONE) {
                continue;
            }
            struct BattleMove mv = ctx->moveTbl[moveno];
            if (mv.split == SPLIT_STATUS || !mv.power) {
                continue;
            }
            struct AI_damage damages = { 0 };
            damages.damageRoll = BattleAI_CalcDamage(battleSys, ctx, moveno, ctx->side_condition[BATTLER_IS_ENEMY(defender)], ctx->field_condition, mv.power, mv.type, 0, defender, battler, &damages, &playerMon, &partyMonData);
            if (damages.damageRange[8] > maxDmgReceived) {
                maxDmgReceived = damages.damageRange[8];
            }
        }

        u8 speedCalc = BattleAI_CalcSpeed(battleSys, ctx, defender, mon, CALCSPEED_FLAG_NO_PRIORITY);
        BOOL survives = (speedCalc > 0)
            ? (maxDmgReceived < partyMonData.hp)
            : (maxDmgReceived * 2 < partyMonData.hp);
        if (!survives) {
            continue;
        }

        BOOL qualifies25 = highestDmgMove != MOVE_NONE && IsPartyMonImmuneToMove(battleSys, ctx, &partyMonData, highestDmgMove);
        BOOL qualifies50 = playerLastMove != MOVE_NONE && IsPartyMonImmuneToMove(battleSys, ctx, &partyMonData, playerLastMove);

        if (!qualifies25 && !qualifies50) {
            continue;
        }

        // Score: best move this candidate can deal to the player's current mon
        u32 maxDmgDealt = 0;
        for (int k = 0; k < 4; k++) {
            u16 moveno = GetMonData(mon, MON_DATA_MOVE1 + k, NULL);
            if (moveno == MOVE_NONE) {
                continue;
            }
            struct BattleMove mv = ctx->moveTbl[moveno];
            if (mv.split == SPLIT_STATUS || !mv.power) {
                continue;
            }
            struct AI_damage damages = { 0 };
            damages.damageRoll = BattleAI_CalcDamage(battleSys, ctx, moveno, ctx->side_condition[BATTLER_IS_ENEMY(battler)], ctx->field_condition, mv.power, mv.type, 0, battler, defender, &damages, &partyMonData, &playerMon);
            damages.damageRange[15] = BattleAI_AdjustUnusualMoveDamage(partyMonData.level, partyMonData.hp, playerMon.hp, damages.damageRange[15], mv.effect, partyMonData.ability, partyMonData.item);
            if (damages.damageRange[15] > maxDmgDealt) {
                maxDmgDealt = damages.damageRange[15];
            }
        }

        // Require candidate to deal at least 35% of the player's HP — no point switching in a wallmon
        if (playerMon.hp == 0 || maxDmgDealt * 100 / playerMon.hp < 35) {
            continue;
        }

        if (bestSlot == -1 || maxDmgDealt > bestDamage) {
            bestDamage = maxDmgDealt;
            bestSlot = i;
            bestUse50Pct = qualifies50;
        }
    }

    if (bestSlot == -1) {
        return FALSE;
    }

    // Single roll for the best candidate: 50% if it qualifies on last-used-move, else 25%
    u32 roll = bestUse50Pct ? 2 : 4;
    if (BattleRand(battleSys) % roll == 0) {
        gImmunitySwitchTargetSlot = bestSlot;
        return TRUE;
    }

    return FALSE;
}

int TrainerAI_PickCommand(struct BattleSystem *battleSys, int battler)
{
    if (TrainerAI_ShouldSwitch(battleSys, battler)) {
        return PLAYER_INPUT_PARTY;
    }
    return PLAYER_INPUT_FIGHT;
}

BOOL TrainerAI_ShouldSwitch(struct BattleSystem *battleSys, int battler)
{
    struct BattleStruct *ctx = battleSys->sp;

    // Singles only — doubles never voluntarily switch
    if (BattleTypeGet(battleSys) & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)) {
        return FALSE;
    }

    // Immunity-based switch (independent of move quality / HP)
    if (TrainerAI_ImmunitySwitch(battleSys, battler)) {
        return TRUE;
    }

    // Perish Song: counter at 1 means the mon faints end of this turn if it stays in
    if ((ctx->battlemon[battler].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG) && ctx->battlemon[battler].moveeffect.perishSongTurns == 1) {
        int partySize = Battle_GetClientPartySize(battleSys, battler);
        for (int i = 0; i < partySize; i++) {
            if (i == ctx->sel_mons_no[battler] || i == ctx->ai_reshuffle_sel_mons_no[battler]) {
                continue;
            }
            struct PartyPokemon *mon = Battle_GetClientPartyMon(battleSys, battler, i);
            u16 species = GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0);
            if (species == SPECIES_NONE || species == SPECIES_EGG) {
                continue;
            }
            if (GetMonData(mon, MON_DATA_HP, 0) > 0) {
                return TRUE;
            }
        }
    }

    // Condition 1: All available moves must score <= 95 (i.e., net -5 or worse from baseline 100)
    unsigned int moveScores[4] = { 0 };
    TrainerAI_ComputeAllMoveScores(battleSys, battler, moveScores);
    for (int i = 0; i < 4; i++) {
        if (ctx->battlemon[battler].move[i] == MOVE_NONE) {
            continue;
        }
        if (moveScores[i] > 95) {
            return FALSE;
        }
    }

    // Condition 3: AI mon must be above 50% HP
    if (ctx->battlemon[battler].hp * 2 < ctx->battlemon[battler].maxhp) {
        return FALSE;
    }

    // Condition 2: There must be a party mon that is either:
    //   - Faster than the player mon AND not OHKOd by the player mon's best move, OR
    //   - Slower than the player mon AND not 2HKOd by the player mon's best move.
    u32 defender = BATTLER_OPPONENT(battler);
    struct AI_sDamageCalc defenderMon = { 0 };
    FillDamageStructFromBattleMon(battleSys, ctx, &defenderMon, defender);

    int partySize = Battle_GetClientPartySize(battleSys, battler);
    BOOL hasViableSwitch = FALSE;

    for (int i = 0; i < partySize; i++) {
        struct PartyPokemon *mon = Battle_GetClientPartyMon(battleSys, battler, i);
        u16 species = GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0);

        // Skip fainted, eggs, current active mon, or already switched in
        if (species == SPECIES_NONE || species == SPECIES_EGG) {
            continue;
        }
        if (GetMonData(mon, MON_DATA_HP, 0) == 0) {
            continue;
        }
        if (i == ctx->sel_mons_no[battler] || i == ctx->ai_reshuffle_sel_mons_no[battler]) {
            continue;
        }

        struct AI_sDamageCalc partyMon = { 0 };
        FillDamageStructFromPartyMon(battleSys, ctx, &partyMon, mon);

        // Calculate max damage the defender can deal to this party mon
        u32 maxDmgReceived = 0;
        u8 critical = 0;
        int knownMoves = 4;
        for (int k = 0; k < knownMoves; k++) {
            struct AI_damage damages = { 0 };
            u32 defMoveno = ctx->battlemon[defender].move[k];
            if (defMoveno == MOVE_NONE) {
                continue;
            }
            struct BattleMove defMove = ctx->moveTbl[defMoveno];
            if (defMove.split == SPLIT_STATUS || !defMove.power) {
                continue;
            }

            damages.damageRoll = BattleAI_CalcDamage(battleSys, ctx, defMoveno, ctx->side_condition[BATTLER_IS_ENEMY(defender)], ctx->field_condition, defMove.power, defMove.type, critical, defender, battler, &damages, &defenderMon, &partyMon);

            if (damages.damageRoll > maxDmgReceived) {
                maxDmgReceived = damages.damageRoll;
            }
        }

        u8 speedCalc = BattleAI_CalcSpeed(battleSys, ctx, defender, mon, CALCSPEED_FLAG_NO_PRIORITY);

        if (speedCalc > 0) {
            // Faster: viable if not OHKOd
            if (maxDmgReceived < partyMon.hp) {
                hasViableSwitch = TRUE;
                break;
            }
        } else {
            // Slower: viable if not 2HKOd
            if (maxDmgReceived * 2 < partyMon.hp) {
                hasViableSwitch = TRUE;
                break;
            }
        }
    }

    if (!hasViableSwitch) {
        return FALSE;
    }

    // 50% chance to actually switch
    return BattleRand(battleSys) % 2 == 0;
}
