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
#include "../../include/debug.h"

#ifndef DEBUG_TRAINER_AI_LOGS
#undef debug_printf
#define debug_printf(...) ((void)0)
#endif

// Defined in main.c — computes all 4 move scores for a singles attacker
void TrainerAI_ComputeAllMoveScores(struct BattleSystem *bsys, int attacker, unsigned int outScores[4]);

// Defined in calc.c — adjusts raw damage for multi-hit, fixed-damage, etc.
int BattleAI_AdjustUnusualMoveDamage(u32 attackerLevel, u32 attackerHP, u32 defenderHP, u32 damage, u32 moveEffect, u32 attackerAbility, u32 attackerItem);

// Defined in calc.c — scores one switch-in candidate the same way BattleAI_PostKOSwitchIn_Internal
// ranks its whole party. Shared so TrainerAI_ImmunitySwitch can restrict evaluation to just its own
// immune-qualifying candidates using the identical ladder.
int BattleAI_ScoreSwitchInCandidate(struct BattleSystem *bsys, struct BattleStruct *ctx, int attacker, u32 defender, u32 defender2, BOOL isDoublesBattle, BOOL incomingEatsFreeHit, struct PartyPokemon *mon, struct AI_sDamageCalc *defenderMon);

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
// Among all qualifying (immune) candidates, ranks by BattleAI_ScoreSwitchInCandidate (the same
// ladder BattleAI_PostKOSwitchIn_Internal uses) and picks the highest-scoring one that clears a
// +2 floor; if none do, no switch happens at all.
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
    debug_printf("[ImmSwitch] battler=%d def=%d aiHP=%d plHP=%d highestDmgMove=%d (dmg=%d)\n",
        battler, defender, aiMon.hp, playerMon.hp, highestDmgMove, highestDmg);

    // Condition 1: if the active AI mon is GUARANTEED to OHKO the player (min damage roll), and
    // it isn't about to be OHKOd itself before it acts, just stay in and take the KO. Uses the
    // min roll so a lucky-high-roll "maybe OHKO" (e.g. a resisted Choice-boosted hit) does not
    // count -- otherwise the AI passes up a free immunity pivot on a coin flip.
    u32 aiGuaranteedDmg = 0;
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
        if (damages.damageRange[0] > aiGuaranteedDmg) {
            aiGuaranteedDmg = damages.damageRange[0];
        }
    }
    if (aiGuaranteedDmg >= playerMon.hp) {
        BOOL aiFaster = (aiMon.speed >= playerMon.speed);
        BOOL playerOHKOsAI = (highestDmg >= aiMon.hp);
        debug_printf("[ImmSwitch] Cond1: aiGuaranteedDmg=%d >= plHP -> aiFaster=%d playerOHKOsAI=%d\n",
            aiGuaranteedDmg, aiFaster, playerOHKOsAI);
        if (aiFaster || !playerOHKOsAI) {
            debug_printf("[ImmSwitch] -> suppressed by Cond1, return FALSE\n");
            return FALSE;
        }
    }

    u16 playerLastMove = ctx->waza_no_old[defender];
    int partySize = Battle_GetClientPartySize(battleSys, battler);
    debug_printf("[ImmSwitch] playerLastMove=%d partySize=%d\n", playerLastMove, partySize);

    int bestSlot = -1;
    int bestScore = 0;
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

        BOOL qualifies25 = highestDmgMove != MOVE_NONE && IsPartyMonImmuneToMove(battleSys, ctx, &partyMonData, highestDmgMove);
        // Status moves (Recover, etc.) carry a type but deal no damage -- "immune" to one is
        // meaningless and shouldn't trigger a defensive switch. highestDmgMove is already
        // naturally damage-only (see the loop that sets it above), but playerLastMove is
        // whatever the player's previous move was, status or not, so it needs its own check.
        BOOL playerLastMoveIsDamaging = playerLastMove != MOVE_NONE
            && ctx->moveTbl[playerLastMove].split != SPLIT_STATUS
            && ctx->moveTbl[playerLastMove].power;
        BOOL qualifies50 = playerLastMoveIsDamaging && IsPartyMonImmuneToMove(battleSys, ctx, &partyMonData, playerLastMove);
        debug_printf("[ImmSwitch]  cand[%d] sp=%d abil=%d hp=%d recv=%d spd=%d surv=%d q25=%d q50=%d\n",
            i, species, partyMonData.ability, partyMonData.hp, maxDmgReceived, speedCalc, survives, qualifies25, qualifies50);

        if (!survives) {
            continue;
        }
        if (!qualifies25 && !qualifies50) {
            continue;
        }

        // Score this candidate the same way BattleAI_PostKOSwitchIn_Internal ranks any switch-in,
        // restricted here to just the immune-qualifying candidates found above. The point of this
        // switch is to go into an immunity — a candidate that's technically immune to the trigger
        // move but is a mediocre-or-worse matchup overall (weighed against the opponent's whole
        // kit, not just the trigger move) shouldn't get forced in. Only the "+2 or better" tiers
        // (deals more than it takes, or stronger) clear that bar; +1/-1/-2 do not.
        int candidateScore = BattleAI_ScoreSwitchInCandidate(battleSys, ctx, battler, defender, defender, FALSE, TRUE, mon, &playerMon);
        debug_printf("[ImmSwitch]  cand[%d] switchInScore=%d floor102=%d\n", i, candidateScore, candidateScore >= 102);
        if (candidateScore < 102) {
            continue;
        }

        if (bestSlot == -1 || candidateScore > bestScore) {
            bestScore = candidateScore;
            bestSlot = i;
            bestUse50Pct = qualifies50;
        }
    }

    if (bestSlot == -1) {
        debug_printf("[ImmSwitch] no qualifying candidate at +2 or better -> return FALSE (no switch)\n");
        return FALSE;
    }

    // Single roll for the best candidate: 50% if it qualifies on last-used-move, else 25%
    u32 roll = bestUse50Pct ? 2 : 4;
    u32 rollVal = BattleRand(battleSys);
    debug_printf("[ImmSwitch] bestSlot=%d use50=%d roll=1/%d rand=%d -> %s\n",
        bestSlot, bestUse50Pct, roll, rollVal, (rollVal % roll == 0) ? "SWITCH" : "stay");
    if (rollVal % roll == 0) {
        // Unlike a post-KO switch, the whole point here is to go into an immunity -- the general
        // picker (BattleAI_PostKOSwitchIn_Internal) considers the entire party and has no idea
        // WHY this switch is happening, so it can (and did, in practice) pick a non-immune mon
        // over the immune one on a tie. bestSlot already passed the identical scoring ladder,
        // restricted to just the candidates that actually qualify as immune, so commit to it
        // directly instead of falling through to the unrestricted picker.
        gImmunitySwitchTargetSlot = bestSlot;
        return TRUE;
    }

    return FALSE;
}

int TrainerAI_PickCommand(struct BattleSystem *battleSys, int battler)
{
    debug_printf("[PickCmd] TrainerAI_PickCommand battler=%d\n", battler);
    if (TrainerAI_ShouldSwitch(battleSys, battler)) {
        debug_printf("[PickCmd] -> PARTY (switch)\n");
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
        debug_printf("[PerishSwitch] battler=%d perishTurns=1, scanning for a live bench mon\n", battler);
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
                debug_printf("[PerishSwitch] -> slot %d is alive, SWITCH\n", i);
                return TRUE;
            }
        }
        debug_printf("[PerishSwitch] -> no live bench mon, staying in to faint\n");
    }

    // Palafin (Zero to Hero) only, nothing else: guaranteed manual switch so it reaches Hero
    // Form, bypassing the move-quality / HP / RNG gates below. Fires when Palafin is slower
    // than the player's mon, or is faster but its pivot move is walled by an immunity (so a
    // U-turn / Flip Turn wouldn't switch it out). If Palafin is trapped a manual switch is
    // impossible, so we defer to the move scorer (ExpertFlag favors the pivot in that case).
    // Returns without setting a target slot, so BattleAI_PostKOSwitchIn_Internal picks the
    // replacement -- same picker used after any KO.
    {
        int activeSlot = ctx->sel_mons_no[battler];
        struct PartyPokemon *activeMon = Battle_GetClientPartyMon(battleSys, battler, activeSlot);
        if (GetMonData(activeMon, MON_DATA_SPECIES, NULL) == SPECIES_PALAFIN
            && ctx->battlemon[battler].ability == ABILITY_ZERO_TO_HERO
            && ctx->battlemon[battler].form_no == 0
            && CanSwitchMon(battleSys, ctx, battler)) {
            u32 defender = BATTLER_OPPONENT(battler);

            BOOL hasBench = FALSE;
            int partySize = Battle_GetClientPartySize(battleSys, battler);
            for (int i = 0; i < partySize; i++) {
                if (i == activeSlot || i == ctx->ai_reshuffle_sel_mons_no[battler]) {
                    continue;
                }
                struct PartyPokemon *mon = Battle_GetClientPartyMon(battleSys, battler, i);
                u16 sp = GetMonData(mon, MON_DATA_SPECIES_OR_EGG, 0);
                if (sp != SPECIES_NONE && sp != SPECIES_EGG && GetMonData(mon, MON_DATA_HP, 0) > 0) {
                    hasBench = TRUE;
                    break;
                }
            }

            if (hasBench) {
                // ret == 0 -> player moves first -> Palafin is slower
                BOOL palafinSlower = (BattleAI_CalcSpeed(battleSys, ctx, defender, activeMon, CALCSPEED_FLAG_NO_PRIORITY) == 0);

                BOOL pivotWalled = FALSE;
                if (!palafinSlower) {
                    struct AI_sDamageCalc defenderMon = { 0 };
                    FillDamageStructFromBattleMon(battleSys, ctx, &defenderMon, defender);
                    for (int k = 0; k < 4; k++) {
                        u16 moveno = ctx->battlemon[battler].move[k];
                        if (moveno == MOVE_NONE || ctx->moveTbl[moveno].effect != MOVE_EFFECT_SWITCH_HIT) {
                            continue;
                        }
                        pivotWalled = IsPartyMonImmuneToMove(battleSys, ctx, &defenderMon, moveno);
                        break;
                    }
                }

                debug_printf("[PalafinSwitch] battler=%d slower=%d pivotWalled=%d -> %s\n",
                    battler, palafinSlower, pivotWalled, (palafinSlower || pivotWalled) ? "SWITCH" : "no");
                if (palafinSlower || pivotWalled) {
                    return TRUE;
                }
            } else {
                debug_printf("[PalafinSwitch] battler=%d no bench, deferring to move scorer\n", battler);
            }
        }
    }

    // Condition 1: All available moves must score <= 95 (i.e., net -5 or worse from baseline 100)
    unsigned int moveScores[4] = { 0 };
    TrainerAI_ComputeAllMoveScores(battleSys, battler, moveScores);
    debug_printf("[ShouldSwitch] battler=%d moveScores=%d,%d,%d,%d\n",
        battler, moveScores[0], moveScores[1], moveScores[2], moveScores[3]);
    for (int i = 0; i < 4; i++) {
        if (ctx->battlemon[battler].move[i] == MOVE_NONE) {
            continue;
        }
        if (moveScores[i] > 95) {
            debug_printf("[ShouldSwitch] -> move[%d] scored %d > 95, staying in\n", i, moveScores[i]);
            return FALSE;
        }
    }

    // Condition 3: AI mon must be above 50% HP
    if (ctx->battlemon[battler].hp * 2 < ctx->battlemon[battler].maxhp) {
        debug_printf("[ShouldSwitch] -> hp=%d/%d <= 50%%, staying in\n", ctx->battlemon[battler].hp, ctx->battlemon[battler].maxhp);
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
            debug_printf("[ShouldSwitch]  cand[%d] faster, maxDmgReceived=%d hp=%d -> %s\n",
                i, maxDmgReceived, partyMon.hp, (maxDmgReceived < partyMon.hp) ? "viable" : "no");
            if (maxDmgReceived < partyMon.hp) {
                hasViableSwitch = TRUE;
                break;
            }
        } else {
            // Slower: viable if not 2HKOd
            debug_printf("[ShouldSwitch]  cand[%d] slower, maxDmgReceived=%d (x2=%d) hp=%d -> %s\n",
                i, maxDmgReceived, maxDmgReceived * 2, partyMon.hp, (maxDmgReceived * 2 < partyMon.hp) ? "viable" : "no");
            if (maxDmgReceived * 2 < partyMon.hp) {
                hasViableSwitch = TRUE;
                break;
            }
        }
    }

    if (!hasViableSwitch) {
        debug_printf("[ShouldSwitch] -> no viable switch-in candidate, staying in\n");
        return FALSE;
    }

    // 50% chance to actually switch
    u32 roll = BattleRand(battleSys);
    debug_printf("[ShouldSwitch] -> viable candidate found, roll=%d %%2=%d -> %s\n", roll, roll % 2, (roll % 2 == 0) ? "SWITCH" : "stay");
    return roll % 2 == 0;
}
