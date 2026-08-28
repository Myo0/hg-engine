#include "../../include/types.h"
#include "../../include/config.h"
#include "../../include/battle.h"
#include "../../include/mega.h"
#include "../../include/pokemon.h"
#include "../../include/trainer_ai.h"
#include "../../include/constants/ability.h"
#include "../../include/constants/move_effects.h"
#include "../../include/constants/moves.h"
#include "../../include/constants/species.h"
#include "../../include/constants/battle_script_constants.h"
#include "../../include/constants/battle_message_constants.h"
#include "../../include/constants/item.h"
#include "../../include/item.h"
#include "../../include/custom/custom_ai.h"
#include "../../include/overlay.h"
#include "../../include/constants/file.h"

// Suppress all AI trace prints unless explicitly debugging trainer AI logic.
#ifndef DEBUG_TRAINER_AI_LOGS
#undef debug_printf
#define debug_printf(...) ((void)0)
#endif

#define IS_NO_REPEAT_MOVE(m) ((m) == MOVE_GIGATON_HAMMER \
    || (m) == MOVE_BLOOD_MOON                            \
    || (m) == MOVE_HYPER_BEAM                            \
    || (m) == MOVE_GIGA_IMPACT                           \
    || (m) == MOVE_BLAST_BURN                            \
    || (m) == MOVE_HYDRO_CANNON                          \
    || (m) == MOVE_FRENZY_PLANT                          \
    || (m) == MOVE_ROCK_WRECKER                          \
    || (m) == MOVE_ROAR_OF_TIME                          \
    || (m) == MOVE_PRISMATIC_LASER                       \
    || (m) == MOVE_METEOR_ASSAULT                        \
    || (m) == MOVE_ETERNABEAM)

struct PACKED AIContext {

    struct AI_sDamageCalc attackerMon;
    struct AI_sDamageCalc defenderMon; //"player"

    /*Field/Pokemon state relavent variables*/
    BOOL defenderImmuneToPoison;
    BOOL defenderImmuneToParalysis;
    BOOL defenderImmuneToBurn;
    BOOL defenderImmuneToFrostbite;
    BOOL defenderImmuneToSleep;
    BOOL attackerKnowsPsychUp;
    BOOL attackerHasSupereffectiveMove;
    BOOL defenderHasHazards;
    BOOL trickRoomActive;
    BOOL hasStatChange;
    BOOL attackerHasDamagingMove;
    BOOL defenderHasBadItem;
    u8 attackerMovesFirst;
    u8 defenderMovesFirst;
    u8 isSpeedTie;
    u32 flingPower;
    u32 attackerMoveEffectiveness[4];
    int chosenTarget;
    int attacker;
    int defender;
    int defenderSide;
    int attackerSide;
    int attackerAbility;
    int attackerLevel;
    int defenderAbility;
    int attackerItem;
    int defenderItem;
    int holdEffect;
    int defenderType1;
    int defenderType2;
    int attackerType1;
    int attackerType2;
    int attackerHP;
    int attackerMaxHP;
    int attackerPercentHP;
    int defenderHP;
    int defenderMaxHP;
    int defenderPercentHP;
    int attackerSpeed;
    int defenderSpeed;
    int partySizeAttacker;
    int livingMembersAttacker;
    int partySizeDefender;
    int livingMembersDefender;
    int damagedMonsDefender;
    int statusedMonsAttacker;
    int attackerMovesKnown;
    int attackerPartyIndex;
    int attackerLastUsedMove;
    int defenderLastUsedMove;
    int defenderLastUsedMoveEffect;
    int defenderTurnsOnField;
    int attackerTurnsOnField;
    int differenceInAttackStages;
    int differenceInSpAtkStages;
    int differenceInDefenseStages;
    int differenceInSpDefStages;
    int maxDamageReceived;

    /*Specific to multi/double/tag battles*/
    int partner;
    int partnerHP;
    int partnerPercentHP;
    int partnerAbility;
    int partnerItem;

    /*Move-relevant variables*/
    int attackerMove;
    int attackerMoveEffect;
    int attackerMoveType;
    int attackerMovePPRemaining;
    int attackerAvgRollMoveDamages[4];
    int attackerMaxDamageOutputMinRoll;
    int defenderAvgRollMoveDamages[4];
};

typedef struct {
    u32 flag;
    int (*evaluator)(struct BattleSystem *bsys, int attacker, int moveIndex, struct AIContext *ai);
} MoveEvaluator;

/*Flag functions return a move score, given the index of the current move*/
int BasicFlag(struct BattleSystem *bsys, int attacker, int i, struct AIContext *ai);
int EvaluateAttackFlag(struct BattleSystem *bsys, int attacker, int i, struct AIContext *ai);
int ExpertFlag(struct BattleSystem *bsys, int attacker, int i, struct AIContext *ai);
int BatonPassFlag(struct BattleSystem *bsys, int attacker, int i, struct AIContext *ai);
int TagStrategyFlag(struct BattleSystem *bsys, int attacker, int i, struct AIContext *ai);

/*Add your own custom flags to this list*/
const MoveEvaluator moveEvaluators[] = {
    { AI_FLAG_BASIC, BasicFlag },
    { AI_FLAG_EVAL_ATTACK, EvaluateAttackFlag },
    { AI_FLAG_EXPERT, ExpertFlag },
    { AI_FLAG_BATON_PASS, BatonPassFlag },
    { AI_FLAG_TAG_STRATEGY, TagStrategyFlag },
};

/*Helper Functions*/
int AttackerMonWithHighestDamage(struct BattleSystem *bsys, int attacker, struct AIContext *ai);
int BattlerPositiveStatChangesSum(struct BattleSystem *bsys, u32 battler, struct AIContext *ai);
BOOL BattlerHasStatBoostGreater(struct BattleSystem *bsys, u32 battler, u32 boost_amount, struct AIContext *ai);
BOOL BattlerHasStatBoostLesser(struct BattleSystem *bsys, u32 battler, u32 drop_amount, struct AIContext *ai);
BOOL BattlerKnowsMove(struct BattleSystem *bsys, u32 battler, u32 move, struct AIContext *ai);
BOOL BattlerHasMoveSplit(struct BattleSystem *bsys, u32 battler, u32 move_split, struct AIContext *ai);
BOOL BattlerHasMoveEffect(struct BattleSystem *bsys, u32 battler, u32 move_effect, struct AIContext *ai);
BOOL BattlerHasTypeDamagingMove(struct BattleSystem *bsys, u32 battler, u32 type, struct AIContext *ai);
BOOL ItemIsBadToTrade(u32 item, struct AIContext *ai);
BOOL ItemIsDisruptive(u32 item, struct AIContext *ai);
BOOL IsDesirableAbility(u32 ability);
BOOL LONG_CALL DropsStatsAsStatus(u32 moveEffect);
BOOL LONG_CALL IsInList(u32 moveEffect, const u16 StatList[], u16 ListLength);
BOOL LONG_CALL BattlerKnowsMoveInList(struct BattleSystem *bsys, u32 battler, const u16 MoveList[], u16 listLength, struct AIContext *ai);
BOOL LONG_CALL BattlerMovesFirstDoubles(struct BattleSystem *bsys, struct BattleStruct *ctx, int mainBattler, int flag, struct AIContext *ai);
BOOL LONG_CALL MoveIsStrongest(struct BattleSystem *bsys, struct BattleStruct *ctx, int moveIndex, struct AIContext *ai);
void SetupStateVariables(struct BattleSystem *bsys, int attacker, u32 defender, struct AIContext *ai);
void TrainerAI_ComputeAllMoveScores(struct BattleSystem *bsys, int attacker, unsigned int outScores[4]);
int AdjustUnusualMoveDamage(struct BattleSystem *bsys, int attacker, u32 defender, int damage, int moveEffect, struct AIContext *ai);
int AdjustUnusualMovePower(struct BattleSystem *bsys, int attacker, u32 defender, int moveEffect, struct AIContext *ai);

unsigned int __attribute__((section(".init"))) TrainerAI_Main(struct BattleSystem *bsys, int attacker)
{
    debug_printf("In TrainerAI_Main:\n");
    struct BattleStruct *ctx = bsys->sp;
    struct AIContext aictx = { 0 };
    struct AIContext *ai = &aictx;
    unsigned int result = 0;
    // enum AIActionChoice result = AI_ENEMY_ATTACK_1, highest_damage_something = 0;
    debug_printf("After enum\n");
    unsigned int score = 0;
    if (attacker >= 10) {
        int realBattler = attacker - 10;
        extern int gImmunitySwitchTargetSlot;
        if (ctx->battlemon[realBattler].hp > 0 && gImmunitySwitchTargetSlot >= 0) {
            int slot = gImmunitySwitchTargetSlot + 1;
            gImmunitySwitchTargetSlot = -1;
            return slot;
        }
        return BattleAI_PostKOSwitchIn_Internal(bsys, realBattler, &score);
    }
    debug_printf("After attacker>=10 thing\n");
    unsigned int highest_move_score = 0;
    unsigned int moveScores[4][4];
    for (unsigned int i = 0; i < 4; i++) { // don't want to get negative (unsigned ints) numbers, so start high at 100
        for (unsigned int j = 0; j < 4; j++) {
            moveScores[i][j] = 100;
        }
    }
    debug_printf("After moveScore setup\n");
    unsigned int max_scores[4] = { 0 }; // highest score over all of the 4 moves the attacker has, measured against each mon on the field (self is always 0)
    unsigned int num_defender_ties = 0;
    unsigned int defender_tie_indices[4] = { 0 };
    unsigned int num_move_score_ties = 0;
    unsigned int move_tie_indices[4] = { 0 };
    unsigned int target = 0;
    unsigned int defender = BATTLER_OPPONENT(attacker); // default for singles -- updated in the doubles section
    debug_printf("Before setup vars\n");
    SetupStateVariables(bsys, attacker, defender, ai);
    debug_printf("After Setup state vars\n");
    /*For more than a 1v1 battle, loop over all battlers and compute the highest score for each.
    The highest score among them determines the target.*/
    if (BattleTypeGet(bsys) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLES | BATTLE_TYPE_TAG)) {
        /*ALWAYS turn on tag strategy in double battles. Prevents user errors. Otherwise targeting and scoring will be incorrect.*/
        bsys->trainers[ai->attacker].aibit |= AI_FLAG_TAG_STRATEGY;
        for (unsigned int battler_no = 0; battler_no < CLIENT_MAX; battler_no++) {
            ai->defender = battler_no;
            debug_printf("\nfor Attacker: %d, Defender: %d\n", ai->attacker, ai->defender);
            SetupStateVariables(bsys, attacker, ai->defender, ai); // need to reset the ai vars for each defender

            if (battler_no == ai->attacker || ctx->battlemon[ai->defender].hp == 0) { // edge case for doubles when only one mon remains alive. Not including this causes incorrect scoring.
                for (unsigned int i = 0; i < 4; i++) {
                    moveScores[battler_no][i] = 0; // prevent ai from thinking it is also the defender for calculations
                }
            } else {
                /*Main loop over moves and select the best one*/
                for (unsigned int i = 0; i < 4; i++) {
                    /*Move-relevant variables*/
                    ai->attackerMove = ctx->battlemon[ai->attacker].move[i];
                    ai->attackerMoveEffect = ctx->moveTbl[ai->attackerMove].effect;
                    // ai->attackerMoveEffectiveness = 0;
                    ai->attackerMoveType = (ai->attackerMove == MOVE_HIDDEN_POWER)
                        ? ai->attackerMon.hiddenPowerType
                        : ctx->moveTbl[ai->attackerMove].type;
                    ai->attackerMovePPRemaining = ctx->battlemon[ai->attacker].pp[i];
                    // BattleAI_GetTypeEffectiveness(bsys, ctx, ai->attackerMoveType,  &(ai->attackerMoveEffectiveness), &ai->attackerMon, &ai->defenderMon);
                    // AITypeCalc(ctx, ai->attackerMove, ai->attackerMoveType, ai->attackerAbility, ai->defenderAbility, ai->holdEffect, ai->defenderType1, ai->defenderType2, & ai->attackerMoveEffectiveness);

                    /*
                                        moveScores[battler_no][i] += BasicFlag(bsys, attacker, i, ai);
                                        moveScores[battler_no][i] += EvaluateAttackFlag(bsys, attacker, i, ai);
                                        moveScores[battler_no][i] += ExpertFlag(bsys, attacker, i, ai);
                                        moveScores[battler_no][i] += TagStrategyFlag(bsys, attacker, i, ai);
                    */

                    if (ai->attackerMove != MOVE_NONE && (ai->attackerMove == ctx->battlemon[ai->attacker].moveeffect.moveNoChoice || ai->attackerMove == ctx->battlemon[ai->attacker].moveeffect.encoredMove)) {
                        moveScores[battler_no][i] += 100; // force the user to use the move if choice locked
                    }

                    // No-repeat moves: can't be used twice in a row
                    if (IS_NO_REPEAT_MOVE(ai->attackerMove) && ai->attackerLastUsedMove == ai->attackerMove) {
                        moveScores[battler_no][i] -= 20;
                    }

                    for (unsigned int j = 0; j < sizeof(moveEvaluators) / sizeof(moveEvaluators[0]); j++) {
                        debug_printf("in move evaluators");
                        if (BattleTypeGet(bsys) & BATTLE_TYPE_DOUBLES) {
                            if (bsys->trainers[1].aibit & moveEvaluators[j].flag) { // hardcoding double battles to ONLY read the first trainer's aibit, since a second trainer's does not exist.
                                                                                    // not doing this will result in the left side using random moves. This also fixes the "left side ai problem"
                                // debug_printf("for Move: %d, using Flag: %d\n", i, moveEvaluators[j].flag);
                                moveScores[battler_no][i] += moveEvaluators[j].evaluator(bsys, ai->attacker, i, ai);
                            }
                        } else {
                            if (bsys->trainers[ai->attacker].aibit & moveEvaluators[j].flag) { // grab the associated ai bit for the attacker.
                                // debug_printf("for Move: %d, using Flag: %d\n", i, moveEvaluators[j].flag);
                                moveScores[battler_no][i] += moveEvaluators[j].evaluator(bsys, ai->attacker, i, ai);
                            }
                        }
                        debug_printf("move evaluators loop j=%d\n", j);
                    }
                    debug_printf("after move evaluators");
                    if (moveScores[battler_no][i] > max_scores[battler_no]) {
                        max_scores[battler_no] = moveScores[battler_no][i]; // track the highest score for this potential target
                    }
                    if (max_scores[battler_no] > highest_move_score) {
                        highest_move_score = max_scores[battler_no]; // track the absolute largest score over all potential targets
                    }
                    debug_printf("  Move[%d] ID=%d Score=%d\n", i, ctx->battlemon[ai->attacker].move[i], moveScores[battler_no][i]);
                }
            }
            debug_printf("Max score for defender %d: %d\n", battler_no, max_scores[battler_no]);
        }
        debug_printf("before tie break");
        debug_printf("Highest move score: %d\n", highest_move_score);
        unsigned int j_tie_index = 0;
        for (unsigned int battler_no = 0; battler_no < 4; battler_no++) {
            if (highest_move_score == max_scores[battler_no]) { // find all defenders that tied for the maximum score
                num_defender_ties++;
                defender_tie_indices[j_tie_index] = battler_no;
                j_tie_index++;
            }
        }
        target = defender_tie_indices[BattleRand(bsys) % num_defender_ties]; // randomly pick a target among the tie
        debug_printf("after target");
        ctx->aiWorkTable.ai_dir_select_client[ai->attacker] = target; // assign the correct target for this attacker.
        for (unsigned int i = 0; i < 4; i++) {
            debug_printf("the target for battler %d is %d", i, ctx->aiWorkTable.ai_dir_select_client[i]);
        }
        debug_printf("Target: %d\n", target);

    } else { // single battles

        /*Main loop over moves and select the best one*/
        for (unsigned int i = 0; i < 4; i++) {
            /*Move-relevant variables*/
            ai->attackerMove = ctx->battlemon[ai->attacker].move[i];
            ai->attackerMoveEffect = ctx->moveTbl[ai->attackerMove].effect;
            // ai->attackerMoveEffectiveness = 0;
            ai->attackerMoveType = (ai->attackerMove == MOVE_HIDDEN_POWER)
                ? ai->attackerMon.hiddenPowerType
                : ctx->moveTbl[ai->attackerMove].type;
            ai->attackerMovePPRemaining = ctx->battlemon[ai->attacker].pp[i];
            // AITypeCalc(ctx, ai->attackerMove, ai->attackerMoveType, ai->attackerAbility, ai->defenderAbility, ai->holdEffect, ai->defenderType1, ai->defenderType2, & ai->attackerMoveEffectiveness);
            if (ai->attackerMove != MOVE_NONE && (ai->attackerMove == ctx->battlemon[ai->attacker].moveeffect.moveNoChoice || ai->attackerMove == ctx->battlemon[ai->attacker].moveeffect.encoredMove)) {
                moveScores[target][i] += 100; // force the user to use the move if choice locked
            }

            // No-repeat moves: can't be used twice in a row
            if (IS_NO_REPEAT_MOVE(ai->attackerMove) && ai->attackerLastUsedMove == ai->attackerMove) {
                moveScores[target][i] -= 20;
            }

            for (unsigned int j = 0; j < sizeof(moveEvaluators) / sizeof(moveEvaluators[0]); j++) {
                if (bsys->trainers[ai->attacker].aibit & moveEvaluators[j].flag) {
                    moveScores[target][i] += moveEvaluators[j].evaluator(bsys, ai->attacker, i, ai);
                }
            }
            debug_printf("  Move[%d] ID=%d Score=%d\n", i, ctx->battlemon[ai->attacker].move[i], moveScores[target][i]);
        }
        ctx->aiWorkTable.ai_dir_select_client[ai->attacker] = target; // target is always 0 in single battles (the player)
    }
    for (unsigned int i = 0; i < 4; i++) {
        if (moveScores[target][i] > moveScores[target][result]) {
            result = i;
        }
    }

    highest_move_score = moveScores[target][result];
    unsigned int j_tie_index = 0;

    for (unsigned int moveno = 0; moveno < 4; moveno++) { // check for ties
        if (moveScores[target][moveno] == highest_move_score) {
            num_move_score_ties++;
            move_tie_indices[j_tie_index] = moveno;
            j_tie_index++;
        }
    }
    // Tiebreak: if AI is dying and slower, prefer a priority move over a slow kill
    if (num_move_score_ties > 1
        && ai->maxDamageReceived > ai->attackerHP
        && !ai->attackerMovesFirst
        && !ai->isSpeedTie) {
        for (unsigned int t = 0; t < num_move_score_ties; t++) {
            unsigned int moveno = move_tie_indices[t];
            u16 tieMove = ctx->battlemon[ai->attacker].move[moveno];
            if (ctx->moveTbl[tieMove].priority > 0
                || (tieMove == MOVE_GRASSY_GLIDE && ctx->terrainOverlay.type == GRASSY_TERRAIN && ctx->terrainOverlay.numberOfTurnsLeft > 0)) {
                result = moveno;
                goto ai_move_chosen;
            }
        }
    }
    result = move_tie_indices[BattleRand(bsys) % num_move_score_ties]; // randomly pick a move among the tie
ai_move_chosen:;

    debug_printf("AI (attacker=%d) chooses Move[%d] ID=%d Score=%d\n",
        ai->attacker,
        result,
        ctx->battlemon[ai->attacker].move[result],
        moveScores[target][result]);

    return result;
}

/*Lists of effects, moves, etc...*/
const u16 DropStatList[] = {
    MOVE_EFFECT_ATK_DOWN,
    MOVE_EFFECT_ATK_DOWN_2,
    MOVE_EFFECT_ATK_DOWN_3,
    MOVE_EFFECT_DEF_DOWN,
    MOVE_EFFECT_DEF_DOWN_2,
    MOVE_EFFECT_DEF_DOWN_3,
    MOVE_EFFECT_SPEED_DOWN,
    MOVE_EFFECT_SPEED_DOWN_2,
    MOVE_EFFECT_SPEED_DOWN_3,
    MOVE_EFFECT_SP_ATK_DOWN,
    MOVE_EFFECT_SP_ATK_DOWN_2,
    MOVE_EFFECT_SP_ATK_DOWN_3,
    MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER,
    MOVE_EFFECT_SP_DEF_DOWN,
    MOVE_EFFECT_SP_DEF_DOWN_2,
    MOVE_EFFECT_SP_DEF_DOWN_3,
    MOVE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2,
    MOVE_EFFECT_ATK_SP_ATK_DOWN,
    MOVE_EFFECT_VENOM_DRENCH,
    MOVE_EFFECT_ATK_DEF_DOWN,
    MOVE_EFFECT_EVA_DOWN,
    MOVE_EFFECT_EVA_DOWN_2,
    MOVE_EFFECT_EVA_DOWN_3,
    MOVE_EFFECT_ACC_DOWN,
    MOVE_EFFECT_ACC_DOWN_2,
    MOVE_EFFECT_ACC_DOWN_3
};

const u16 RaiseStatList[] = {
    MOVE_EFFECT_ATK_UP,
    MOVE_EFFECT_ATK_UP_2,
    MOVE_EFFECT_ATK_UP_3,
    MOVE_EFFECT_DEF_UP,
    MOVE_EFFECT_DEF_UP_2,
    MOVE_EFFECT_DEF_UP_3,
    MOVE_EFFECT_SPEED_UP,
    MOVE_EFFECT_SPEED_UP_2,
    MOVE_EFFECT_SPEED_UP_3,
    MOVE_EFFECT_SP_ATK_UP,
    MOVE_EFFECT_SP_ATK_UP_2,
    MOVE_EFFECT_SP_ATK_UP_3,
    MOVE_EFFECT_SP_DEF_UP,
    MOVE_EFFECT_SP_DEF_UP_2,
    MOVE_EFFECT_SP_DEF_UP_3,
    MOVE_EFFECT_ACC_UP,
    MOVE_EFFECT_ACC_UP_2,
    MOVE_EFFECT_ACC_UP_3,
    MOVE_EFFECT_EVA_UP,
    MOVE_EFFECT_EVA_UP_2,
    MOVE_EFFECT_EVA_UP_2_MINIMIZE,
    MOVE_EFFECT_EVA_UP_3,
    MOVE_EFFECT_ATK_SPEED_UP,
    MOVE_EFFECT_ATK_SP_ATK_UP,
    MOVE_EFFECT_DEF_UP_DOUBLE_ROLLOUT_POWER,
    MOVE_EFFECT_DEF_SP_DEF_UP,
    MOVE_EFFECT_SP_ATK_SP_DEF_UP

};
/*Stat increases*/
const u16 RBSetupList[] = {
    MOVE_EFFECT_ATK_UP, // Howl, Meditate, Sharpen
    MOVE_EFFECT_ATK_UP_2, // Swords Dance
    MOVE_EFFECT_ATK_SPEED_UP, // Dragon Dance
    MOVE_EFFECT_SPEED_UP_2_ATK_UP, // Shift Gear
    MOVE_EFFECT_ATK_ACC_UP, // Hone Claws
    MOVE_EFFECT_ATK_DEF_UP, // Bulk Up
    MOVE_EFFECT_ATK_DEF_ACC_UP, // Coil
    MOVE_EFFECT_SP_ATK_SP_DEF_UP, // Calm Mind
    MOVE_EFFECT_SP_ATK_SP_DEF_SPEED_UP, // Quiver Dance
    MOVE_EFFECT_ATK_SP_ATK_UP, // Work Up
    MOVE_EFFECT_SP_ATK_UP, // Growth
    MOVE_EFFECT_SP_ATK_UP_2, // Nasty Plot
    MOVE_EFFECT_SP_ATK_UP_3, // Tail Glow
    MOVE_EFFECT_DEF_UP_2, // Barrier, Acid Armor, Iron Defense
    MOVE_EFFECT_DEF_UP_3, // Cotton Guard
    MOVE_EFFECT_DEF_SP_DEF_UP, // Cosmic Power
    MOVE_EFFECT_STOCKPILE, // Stockpile
    MOVE_EFFECT_ATK_SP_ATK_SPEED_UP_2_DEF_SP_DEF_DOWN, // Shell Smash
    MOVE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP, // Belly Drum
    MOVE_EFFECT_RAISE_ALL_STATS_LOSE_THIRD_MAX_HP, // Clangorous Soul
    MOVE_EFFECT_SPEED_UP_2, // Agility, Rock Polish
    MOVE_EFFECT_AUTOTOMIZE, // Autotomize
    MOVE_EFFECT_STUFF_CHEEKS, // Stuff Cheeks
    MOVE_EFFECT_CURSE, // Curse (non-ghost)
    MOVE_EFFECT_SP_DEF_UP_2, // Amnesia
    MOVE_EFFECT_RANDOM_STAT_UP_2, // Acupressure
};

// Shell Smash, Quiver Dance, Dragon Dance, Tidy Up, Shift Gear
const u16 DualRaiseList[] = {
    MOVE_EFFECT_ATK_SP_ATK_SPEED_UP_2_DEF_SP_DEF_DOWN,
    MOVE_EFFECT_SP_ATK_SP_DEF_SPEED_UP,
    MOVE_EFFECT_ATK_SPEED_UP,
    MOVE_EFFECT_TIDY_UP,
    MOVE_EFFECT_SPEED_UP_2_ATK_UP,
};

const u16 AttackRaiseList[] = {
    MOVE_EFFECT_ATK_UP,
    MOVE_EFFECT_ATK_UP_2,
    MOVE_EFFECT_ATK_UP_3,
    MOVE_EFFECT_ATK_SPEED_UP, // dragon dance
    // MOVE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP, //belly drum
    MOVE_EFFECT_RAISE_ALL_STATS_LOSE_THIRD_MAX_HP, // clangorous soul
    MOVE_EFFECT_ATK_DEF_ACC_UP,
    MOVE_EFFECT_SP_ATK_UP, // growth
    MOVE_EFFECT_ATK_SP_ATK_UP, // work up
    MOVE_EFFECT_ATK_ACC_UP, // hone claws
    // MOVE_EFFECT_RAISE_ATTACK_HIT, //powerup punch
    // MOVE_EFFECT_SPEED_UP_2_ATK_UP, //shift gear is part of speed raise list
    MOVE_EFFECT_ATK_SP_ATK_SPEED_UP_2_DEF_SP_DEF_DOWN, // shell smash
    MOVE_EFFECT_TIDY_UP, // tidy up is basically ddance
    MOVE_EFFECT_ATK_DEF_SPEED_UP, // victory dance
    MOVE_EFFECT_ATK_DEF_ACC_UP, // coil
};

const u16 DefenseRaiseList[] = {
    MOVE_EFFECT_DEF_UP,
    MOVE_EFFECT_DEF_UP_2,
    MOVE_EFFECT_DEF_UP_3,
    MOVE_EFFECT_DEF_UP_DOUBLE_ROLLOUT_POWER,
    MOVE_EFFECT_DEF_SP_DEF_UP,
};

const u16 SpAtkRaiseList[] = {
    MOVE_EFFECT_SP_ATK_UP,
    MOVE_EFFECT_SP_ATK_UP_2,
    MOVE_EFFECT_SP_ATK_UP_3,
    MOVE_EFFECT_ATK_SP_ATK_UP, // work up
    MOVE_EFFECT_SP_ATK_SP_DEF_UP, // calm mind
    // MOVE_EFFECT_ATK_SP_ATK_SPEED_UP_2_LOSE_HALF_MAX_HP, //fillet away
    MOVE_EFFECT_RAISE_SP_ATK_HIT, // mystical power, torch song
    MOVE_EFFECT_ATK_SP_ATK_SPEED_UP_2_DEF_SP_DEF_DOWN, // shell smash
    MOVE_EFFECT_SP_ATK_SP_DEF_SPEED_UP, // quiver dance
    MOVE_EFFECT_TAKE_HEART,
};

const u16 SpDefRaiseList[] = {
    MOVE_EFFECT_SP_DEF_UP,
    MOVE_EFFECT_SP_DEF_UP_2,
    MOVE_EFFECT_SP_DEF_UP_3,
    // MOVE_EFFECT_SP_ATK_SP_DEF_UP
};

const u16 SpeedRaiseList[] = {
    MOVE_EFFECT_SPEED_UP,
    MOVE_EFFECT_SPEED_UP_2,
    MOVE_EFFECT_SPEED_UP_3, // dragon dance is intentionally excluded
    MOVE_EFFECT_SPEED_UP_2_ATK_UP, // shift gear is considered a speed raise, not attack raise since it give +2 speed
};

const u16 AccRaiseList[] = {
    MOVE_EFFECT_ACC_UP,
    MOVE_EFFECT_ACC_UP_2,
    MOVE_EFFECT_ACC_UP_3
};
const u16 EvaRaiseList[] = {
    MOVE_EFFECT_EVA_UP,
    MOVE_EFFECT_EVA_UP_2,
    MOVE_EFFECT_EVA_UP_2_MINIMIZE,
    MOVE_EFFECT_EVA_UP_3
};

/*Stat decreases*/
const u16 AttackDropList[] = {
    MOVE_EFFECT_ATK_DOWN,
    MOVE_EFFECT_ATK_DOWN_2,
    MOVE_EFFECT_ATK_DOWN_3,
    MOVE_EFFECT_ATK_SP_ATK_DOWN,
    MOVE_EFFECT_ATK_DEF_DOWN,
};

const u16 DefenseDropList[] = {
    MOVE_EFFECT_DEF_DOWN,
    MOVE_EFFECT_DEF_DOWN_2,
    MOVE_EFFECT_DEF_DOWN_3,
    MOVE_EFFECT_ATK_DEF_DOWN
};

const u16 SpAtkDropList[] = {
    MOVE_EFFECT_SP_ATK_DOWN,
    MOVE_EFFECT_SP_ATK_DOWN_2,
    MOVE_EFFECT_SP_ATK_DOWN_3,
    // MOVE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2,
    MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER,
    MOVE_EFFECT_ATK_SP_ATK_DOWN,
    // MOVE_EFFECT_VENOM_DRENCH
};

const u16 SpDefDropList[] = {
    MOVE_EFFECT_SP_DEF_DOWN,
    MOVE_EFFECT_SP_DEF_DOWN_2,
    MOVE_EFFECT_SP_DEF_DOWN_3
};

const u16 SpeedDropList[] = {
    MOVE_EFFECT_SPEED_DOWN,
    MOVE_EFFECT_SPEED_DOWN_2,
    MOVE_EFFECT_SPEED_DOWN_3,
    MOVE_EFFECT_VENOM_DRENCH
};

const u16 AccDropList[] = {
    MOVE_EFFECT_ACC_DOWN,
    MOVE_EFFECT_ACC_DOWN_2,
    MOVE_EFFECT_ACC_DOWN_3
};

const u16 EvaDropList[] = {
    MOVE_EFFECT_EVA_DOWN,
    MOVE_EFFECT_EVA_DOWN_2,
    MOVE_EFFECT_EVA_DOWN_3
};

// Non-attacking moves that always score +6 with no additional bonuses from ExpertFlag.
const u16 FlatSixStatusList[] = {
    MOVE_EFFECT_PREVENT_ESCAPE, // Mean Look
    MOVE_EFFECT_IGNORE_EVASION_REMOVE_GHOST_IMMUNE, // Foresight
    MOVE_EFFECT_LASER_FOCUS, // Laser Focus
    MOVE_EFFECT_INFATUATE, // Attract
    MOVE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL, // Ingrain
    MOVE_EFFECT_RESTORE_HP_EVERY_TURN, // Aqua Ring
};

// Moves that self-lower stats, turning into self-boosts for Contrary users.
// Excluded from EvaluateAttackFlag's highest-damage bonus (ExpertFlag handles it instead).
const u16 ContraryBenefitList[] = {
    MOVE_EFFECT_USER_ATK_DEF_DOWN_HIT, // Superpower
    MOVE_EFFECT_USER_SP_ATK_DOWN_2, // Overheat, Draco Meteor, Leaf Storm, Psycho Boost
    MOVE_EFFECT_USER_DEF_SP_DEF_DOWN_HIT, // Close Combat
    MOVE_EFFECT_USER_DEF_SP_DEF_SPEED_DOWN_HIT, // V-create
    MOVE_EFFECT_USER_SPEED_DOWN_HIT, // Hammer Arm
};

const u16 TagStrategyFlagList_SkillSwap[] = {
    MOVE_FIRE_BLAST,
    MOVE_THUNDER,
    MOVE_CROSS_CHOP,
    MOVE_HYDRO_PUMP,
    MOVE_DYNAMIC_PUNCH,
    MOVE_BLIZZARD,
    MOVE_ZAP_CANNON,
    MOVE_MEGAHORN,
    MOVE_FOCUS_BLAST,
    MOVE_GUNK_SHOT,
    MOVE_MAGMA_STORM,
    MOVE_POWER_WHIP,
    MOVE_SEED_FLARE,
    MOVE_HEAD_SMASH
};

const u16 MovesEffectsWithFlatDamageOrOHKO[] = {
    MOVE_EFFECT_ONE_HIT_KO,
    MOVE_EFFECT_METAL_BURST,
    MOVE_EFFECT_COUNTER,
    MOVE_EFFECT_BIDE,
    MOVE_EFFECT_40_DAMAGE_FLAT,
    MOVE_EFFECT_SET_HP_EQUAL_TO_USER,
    MOVE_EFFECT_HALVE_HP,
    MOVE_EFFECT_MIRROR_COAT,
    MOVE_EFFECT_LEVEL_DAMAGE_FLAT,
    MOVE_EFFECT_10_DAMAGE_FLAT
};

const u16 SetupAttackEffectsList[] = {

};

/*Flag's Scoring:

This next section is the meat of the AI. Each of these flags individually modifies the score of a move,
given an attacker and a defender. The scores start at 100, and are modified accordingly based on the
the power, usefulness, or lackthereof of the move. If you want to add a flag, you can mirror the way
these are written, and add it to the list of moveEvaluators. The flags are all defined in trainer_ai.h,
so change those names there, too.
*/

/*BasicFlag:
Heavily penalize stupid decisions that would fail, do nothing, or objectively hurt the user.*/

int BasicFlag(struct BattleSystem *bsys, int attacker, int i, struct AIContext *ai)
{
    int moveScore = 0;
    struct BattleStruct *ctx = bsys->sp;
    /*
    if(ctx->battlemon[ai->defender].hp == 0){
        return -60;
    }
    */
    /*Never use moves that are out of pp*/
    if (ctx->battlemon[ai->attacker].pp[i] == 0) {
        moveScore -= 40;
    }
    if (ctx->battlemon[ai->attacker].moveeffect.tauntTurns > 0 && ctx->moveTbl[ai->attackerMove].split == SPLIT_STATUS) {
        moveScore -= 50; // taunted, so no status moves
    }

    if (ctx->battlemon[ai->attacker].moveeffect.disabledMove == ai->attackerMove && ctx->battlemon[ai->attacker].moveeffect.disabledTurns > 0) {
        moveScore -= 40; // disabled, will softlock
    }

    /*Check for ai->defender type immunities.*/
    if (ai->attackerMoveEffectiveness[i] == TYPE_MUL_NO_EFFECT && ctx->moveTbl[ai->attackerMove].split != SPLIT_STATUS) {
        moveScore -= 25;
    }
    if (ctx->moveTbl[ai->attackerMove].split == SPLIT_STATUS && ai->defenderAbility == ABILITY_MAGIC_BOUNCE) {
        moveScore -= 15; // status moves that bounce back to the user
    }
    if (ai->attackerMove == MOVE_THUNDER_WAVE && HasType(ctx, ai->defender, TYPE_GROUND)) {
        moveScore -= 25;
    }

    /*Check for wonder guard*/
    if (ai->attackerMoveEffectiveness[i] < TYPE_MUL_SUPER_EFFECTIVE && ai->defenderAbility == ABILITY_WONDER_GUARD && ai->attackerAbility != ABILITY_MOLD_BREAKER) {
        moveScore -= 15;
    }

    // Ability immunities
    if (ai->attackerAbility != ABILITY_MOLD_BREAKER) {
        if (ai->attackerMoveType == TYPE_ELECTRIC && // electric
            (ai->defenderAbility == ABILITY_VOLT_ABSORB || ai->defenderAbility == ABILITY_LIGHTNING_ROD || ai->defenderAbility == ABILITY_MOTOR_DRIVE)) {
            moveScore -= 15;
        }
        if (ai->attackerMoveType == TYPE_WATER && // water
            (ai->defenderAbility == ABILITY_STORM_DRAIN || ai->defenderAbility == ABILITY_WATER_ABSORB || ai->defenderAbility == ABILITY_DRY_SKIN || ctx->field_condition & FIELD_CONDITION_EXTREMELY_HARSH_SUNLIGHT)) {
            moveScore -= 15;
        }
        if (ai->attackerMoveType == TYPE_FIRE && // fire
            (ai->defenderAbility == ABILITY_FLASH_FIRE || ai->defenderAbility == ABILITY_WELL_BAKED_BODY || ai->defenderAbility == ABILITY_THERMAL_EXCHANGE || ctx->field_condition & FIELD_CONDITION_HEAVY_RAIN)) {
            moveScore -= 15;
        }
        if (ai->attackerMoveType == TYPE_GRASS && // grass
            (ai->defenderAbility == ABILITY_SAP_SIPPER)) {
            moveScore -= 15;
        }
        if (ai->attackerMoveType == TYPE_GROUND && // ground
            (ai->defenderAbility == ABILITY_LEVITATE || ai->defenderAbility == ABILITY_EARTH_EATER)) {
            moveScore -= 15;
        }
        if (IsMoveSoundBased(ai->attackerMove) && // sound based moves
            ai->defenderAbility == ABILITY_SOUNDPROOF) {
            moveScore -= 15;
        }
        if (ctx->moveTbl[ai->attackerMove].split == SPLIT_STATUS && ai->defenderAbility == ABILITY_GOOD_AS_GOLD && !(ctx->moveTbl[ai->attackerMove].target == RANGE_USER || // do not include things like light screen, stealth rocks, self-targetting moves.
                ctx->moveTbl[ai->attackerMove].target == RANGE_OPPONENT_SIDE || (ctx->moveTbl[ai->attackerMove].target == RANGE_USER_SIDE && ai->attackerMove != MOVE_LIFE_DEW))) {
            moveScore -= 15;
        }
    }

    /*Check for grass immunity to powder moves*/
    // Isnt working????
    if (((IsPowderMove(ai->attackerMove) || ai->attackerMove == MOVE_LEECH_SEED) && HasType(ctx, ai->defender, TYPE_GRASS))
        || ((ai->attackerMove == MOVE_SLEEP_POWDER || ai->attackerMove == MOVE_STUN_SPORE) && HasType(ctx, ai->defender, TYPE_GRASS))) {
        moveScore -= 20;
    }

    if (ai->attackerMoveEffect == MOVE_EFFECT_STATUS_LEECH_SEED) {
        if (HasType(ctx, ai->defender, TYPE_GRASS) || ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED || ctx->battlemon[ai->defender].condition2 & STATUS2_SUBSTITUTE) {
            moveScore -= 20;
        }
    }

    // ai->attackerMove == MOVE_RAGE_POWDER  rage powder is self-targetting, so will grass types never click rage powder?

    /*Prankster:
    Prankster fails if:
    1.) Move target is dark type
    2.) Target is not self
    3.) Move is priority boosted by prankster (i.e. status moves)

    We check if the base priority of the move is zero or greater, since
    it would be boosted by prankster to +1 or higher if it is status*/
    if ((ai->defenderType1 == TYPE_DARK || ai->defenderType2 == TYPE_DARK) && (ctx->moveTbl[ai->attackerMove].split == SPLIT_STATUS && ai->attackerAbility == ABILITY_PRANKSTER && ctx->moveTbl[ai->attackerMove].priority >= 0)
        && attacker != ai->defender) {
        moveScore -= 15;
    }

    /*Parting Shot*/
    if (ai->attackerMoveEffect == MOVE_EFFECT_PARTING_SHOT) {
        // Fails against Dark types
        if (ai->defenderType1 == TYPE_DARK || ai->defenderType2 == TYPE_DARK) {
            moveScore -= 15;
        }
        // Fails against Soundproof (Parting Shot is a sound move)
        else if (ai->defenderAbility == ABILITY_SOUNDPROOF) {
            moveScore -= 15;
        } else {
            // Find best damage and whether any move can KO
            BOOL canKO = FALSE;
            int bestDamage = 0;
            for (int j = 0; j < ai->attackerMovesKnown; j++) {
                if (ai->attackerAvgRollMoveDamages[j] > bestDamage) {
                    bestDamage = ai->attackerAvgRollMoveDamages[j];
                }
                if (ai->attackerAvgRollMoveDamages[j] >= ai->defenderHP) {
                    canKO = TRUE;
                }
            }

            // Don't pivot when a KO is available
            if (canKO) {
                moveScore -= 15;
            }
            // Opponent is low on HP - press for the KO instead
            else if (ai->defenderHP * 100 / ctx->battlemon[ai->defender].maxhp < 30) {
                moveScore -= 8;
            }

            // No party members to switch into - pivot value is lost
            if (ai->livingMembersAttacker == 1) {
                moveScore -= 8;
            }

            // AI has attack boosts it would throw away by pivoting
            if (ctx->battlemon[attacker].states[STAT_ATTACK] > 6 || ctx->battlemon[attacker].states[STAT_SPECIAL_ATTACK] > 6) {
                moveScore -= 10;
            }

            // Best damage is low (< 30% of defender's max HP) - matchup is unfavorable, pivot is smart
            if (bestDamage * 100 / ctx->battlemon[ai->defender].maxhp < 30) {
                moveScore += 8;
            }
            // AI moves first but is threatened with a KO - ideal Parting Shot scenario
            else if (ai->attackerSpeed > ai->defenderSpeed && ai->maxDamageReceived >= ai->attackerHP) {
                moveScore += 8;
            }
        }
    }

    /*Check for immunity to paralysis*/
    if ((ai->attackerMoveEffect == MOVE_EFFECT_STATUS_PARALYZE
            || ai->attackerMove == MOVE_NUZZLE)
        && ai->defenderImmuneToParalysis) {
        moveScore -= 15;
    }

    /*Check for immunity to burn*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_STATUS_BURN) && ai->defenderImmuneToBurn) {
        moveScore -= 15;
    }

    /*Check for immunity to frostbite*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_STATUS_FROSTBITE) && ai->defenderImmuneToFrostbite) {
        moveScore -= 15;
    }

    /*Check for immunity to poison/badly poison*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_STATUS_POISON || ai->attackerMoveEffect == MOVE_EFFECT_STATUS_BADLY_POISON) && ai->defenderImmuneToPoison) {
        moveScore -= 15;
    }

    /*Check for immunity to sleep*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_STATUS_SLEEP || ai->attackerMoveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN) && ai->defenderImmuneToSleep) {
        moveScore -= 15;
    } else if (ai->attackerMoveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN) {
        if (ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_YAWN || !(ctx->battlemon[ai->defender].condition & STATUS_NONE)) {
            moveScore -= 15; // yawn counter is active, or defender is already asleep
        }
    }

    /*Check for immunity to confusion*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_STATUS_CONFUSE || ai->attackerMoveEffect == MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION || // swagger
                 ai->attackerMoveEffect == MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION || // flatter
                 ai->attackerMoveEffect == MOVE_EFFECT_CONFUSE_ALL_ADJACENT)
        && // teeter dance, need to change for double battles
        (ctx->battlemon[ai->defender].condition2 & STATUS2_CONFUSION || ctx->side_condition[ai->defenderSide] & SIDE_STATUS_SAFEGUARD || ai->defenderAbility == ABILITY_OWN_TEMPO)) {
        moveScore -= 15;
    }
    /*Check for immunity to infatuation*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_INFATUATE) && (ctx->battlemon[ai->defender].condition2 & STATUS2_ATTRACT || ai->defenderAbility == ABILITY_OBLIVIOUS || ctx->battlemon[ai->attacker].sex == ctx->battlemon[ai->defender].sex || ctx->battlemon[ai->defender].sex == POKEMON_GENDER_UNKNOWN)) {
        moveScore -= 15;
    }
    /*Terrain Setting*/
    else if (ai->attackerMove == MOVE_GRASSY_TERRAIN) {
        if (ctx->terrainOverlay.type == GRASSY_TERRAIN && ctx->terrainOverlay.numberOfTurnsLeft > 0) {
            moveScore -= 15;
        }
    } else if (ai->attackerMove == MOVE_MISTY_TERRAIN) {
        if (ctx->terrainOverlay.type == MISTY_TERRAIN && ctx->terrainOverlay.numberOfTurnsLeft > 0) {
            moveScore -= 15;
        }
    } else if (ai->attackerMove == MOVE_ELECTRIC_TERRAIN) {
        if (ctx->terrainOverlay.type == ELECTRIC_TERRAIN && ctx->terrainOverlay.numberOfTurnsLeft > 0) {
            moveScore -= 15;
        }
    } else if (ai->attackerMove == MOVE_PSYCHIC_TERRAIN) {
        if (ctx->terrainOverlay.type == PSYCHIC_TERRAIN && ctx->terrainOverlay.numberOfTurnsLeft > 0) {
            moveScore -= 15;
        }
    }
    /*Priority moves on Psychic Terrain*/
    else if (ctx->terrainOverlay.type == PSYCHIC_TERRAIN && ctx->terrainOverlay.numberOfTurnsLeft > 0 && IsClientGrounded(ctx, ai->defender) && (ctx->moveTbl[ai->attackerMove].priority > 0 || (ctx->moveTbl[ai->attackerMove].split == SPLIT_STATUS && ai->attackerAbility == ABILITY_PRANKSTER && ctx->moveTbl[ai->attackerMove].target != RANGE_USER))) {
        moveScore -= 20; // priority moves are negated by psychic terrain
    }
    /*Check for consecutive destiny bonds*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_KO_MON_THAT_DEFEATED_USER && ctx->battlemon[ai->attacker].condition2 & STATUS2_DESTINY_BOND) {
        moveScore -= 15; // destiny bond is already active, don't use it again in a row
    }

    /*Check for self-killing moves */
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_HALVE_DEFENSE) && ((ai->defenderAbility == ABILITY_DAMP && ai->attackerAbility != ABILITY_MOLD_BREAKER) || (ai->livingMembersAttacker == 1 && ai->livingMembersDefender > 1))) {
        moveScore -= 15; // prevents ai auto-losing the battle
    } else if ((ai->attackerMoveEffect == MOVE_EFFECT_HALVE_DEFENSE) && (ai->livingMembersAttacker == 1 && ai->livingMembersDefender == 1)) {
        moveScore = -1; // Ai will consider exploding if both parties have one Pokemon left
    }

    /*Handle nightmare*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_STATUS_NIGHTMARE && (ctx->battlemon[ai->defender].condition2 & STATUS2_NIGHTMARE || ai->defenderAbility == ABILITY_MAGIC_GUARD)) {
        moveScore -= 15;
    } else if (ai->attackerMoveEffect == MOVE_EFFECT_STATUS_NIGHTMARE && !(ctx->battlemon[ai->defender].condition & STATUS_SLEEP)) {
        moveScore -= 15;
    }

    /*Handle dream eater*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_RECOVER_DAMAGE_SLEEP && !(ctx->battlemon[ai->defender].condition & STATUS_SLEEP)) { // must be asleep
        moveScore -= 15;
    }

    /*Handle belly drum*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP && (ai->attackerHP * 100 / ai->attackerMaxHP < 51)) {
        moveScore -= 15;
    }

    /*Handle bad stat boosts*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_SPEED_UP_3 || // trick room + only speed boost status move
                 ai->attackerMoveEffect == MOVE_EFFECT_SPEED_UP_2 || ai->attackerMoveEffect == MOVE_EFFECT_SPEED_UP)
        && (ctx->field_condition & FIELD_CONDITION_TRICK_ROOM)) {
        moveScore -= 15;
    }

    else if ((IsInList(ai->attackerMoveEffect, AccRaiseList, NELEMS(AccRaiseList)) || IsInList(ai->attackerMoveEffect, EvaRaiseList, NELEMS(EvaRaiseList))) && (ai->attackerAbility == ABILITY_NO_GUARD)) {
        moveScore -= 15;
    }

    /*Avoid increasing already maxed stats using status moves*/

    // attack
    else if ((IsInList(ai->attackerMoveEffect, AttackRaiseList, NELEMS(AttackRaiseList))) && (ctx->battlemon[attacker].states[STAT_ATTACK] >= 12)) {
        moveScore -= 15;
    }
    // defense
    else if ((IsInList(ai->attackerMoveEffect, DefenseRaiseList, NELEMS(DefenseRaiseList))) && (ctx->battlemon[attacker].states[STAT_DEFENSE] >= 12)) {
        moveScore -= 15;
    }
    // sp. atk
    else if ((IsInList(ai->attackerMoveEffect, SpAtkRaiseList, NELEMS(SpAtkRaiseList))) && (ctx->battlemon[attacker].states[STAT_SPECIAL_ATTACK] >= 12)) {
        moveScore -= 15;
    }
    // sp.def
    else if ((IsInList(ai->attackerMoveEffect, SpDefRaiseList, NELEMS(SpDefRaiseList))) && (ctx->battlemon[attacker].states[STAT_SPECIAL_DEFENSE] >= 12)) {
        moveScore -= 15;
    }
    // speed
    else if ((IsInList(ai->attackerMoveEffect, SpeedRaiseList, NELEMS(SpeedRaiseList))) && (ctx->battlemon[attacker].states[STAT_SPEED] >= 12)) {
        moveScore -= 15;
    }

    /*Check for abilities preventing atk drop*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_ATK_DOWN_2 || ai->attackerMoveEffect == MOVE_EFFECT_ATK_DOWN) && (ai->defenderAbility == ABILITY_HYPER_CUTTER || ai->defenderAbility == ABILITY_WHITE_SMOKE || ai->defenderAbility == ABILITY_CLEAR_BODY)) {
        moveScore -= 15;
    } else if ((IsInList(ai->attackerMoveEffect, AccDropList, NELEMS(AccDropList)) || IsInList(ai->attackerMoveEffect, EvaDropList, NELEMS(EvaDropList))) && (ai->attackerAbility == ABILITY_NO_GUARD || ai->defenderAbility == ABILITY_NO_GUARD)) {
        moveScore -= 15;
    }

    else if (IsInList(ai->attackerMoveEffect, AccDropList, NELEMS(AccDropList)) && (ai->defenderAbility == ABILITY_KEEN_EYE)) {
        moveScore -= 15;
    }

    /*Handle clear body & white smoke*/
    else if (DropsStatsAsStatus(ai->attackerMoveEffect) && ((ai->defenderAbility == ABILITY_CLEAR_BODY || ai->defenderAbility == ABILITY_WHITE_SMOKE) && ai->attackerAbility != ABILITY_MOLD_BREAKER)) {
        moveScore -= 15;
    }

    /*Handle any status stat-dropping move when at +6 or -6.
    Keep in mind that -6 to +6 goes instead from 0 to 12.*/

    // Attack
    else if ((IsInList(ai->attackerMoveEffect, AttackDropList, NELEMS(AttackDropList))) && (ctx->battlemon[ai->defender].states[STAT_ATTACK] <= 0)) {
        moveScore -= 15;
    }
    // Defense
    else if ((IsInList(ai->attackerMoveEffect, DefenseDropList, NELEMS(DefenseDropList))) && (ctx->battlemon[ai->defender].states[STAT_DEFENSE] <= 0)) {
        moveScore -= 15;
    }
    // Sp. Atk
    else if ((IsInList(ai->attackerMoveEffect, SpAtkDropList, NELEMS(SpAtkDropList))) && (ctx->battlemon[ai->defender].states[STAT_SPECIAL_ATTACK] <= 0)) {
        moveScore -= 15;
    }
    // Sp.Def
    else if ((IsInList(ai->attackerMoveEffect, SpDefDropList, NELEMS(SpDefDropList))) && (ctx->battlemon[ai->defender].states[STAT_SPECIAL_DEFENSE] <= 0)) {
        moveScore -= 15;
    }
    // Speed
    else if ((IsInList(ai->attackerMoveEffect, SpeedDropList, NELEMS(SpeedDropList))) && (ctx->battlemon[ai->defender].states[STAT_SPEED] <= 0)) {
        moveScore -= 15;
    }
    // Evasion
    else if ((IsInList(ai->attackerMoveEffect, EvaDropList, NELEMS(EvaDropList))) && (ctx->battlemon[ai->defender].states[STAT_EVASION] <= 0)) {
        moveScore -= 15;
    }
    // Accuracy
    else if ((IsInList(ai->attackerMoveEffect, AccDropList, NELEMS(AccDropList))) && (ctx->battlemon[ai->defender].states[STAT_ACCURACY] <= 0)) {
        moveScore -= 15;
    }

    /*Check for exclusively speed dropping moves in Trick Room*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_SPEED_DOWN_2 && // string shot and scary face
        (ctx->field_condition & FIELD_CONDITION_TRICK_ROOM)) {
        moveScore -= 15;
    }

    /*Handle Haze, Psych Up, Heart Swap*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_RESET_STAT_CHANGES || ai->attackerMoveEffect == MOVE_EFFECT_SWAP_STAT_CHANGES || ai->attackerMoveEffect == MOVE_EFFECT_COPY_STAT_CHANGES) && !ai->hasStatChange) {
        moveScore -= 15;
    }

    /*Handle forced switching moves*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_FORCE_SWITCH && (ai->livingMembersDefender == 1 || (ai->defenderAbility == ABILITY_SUCTION_CUPS && ai->attackerAbility != ABILITY_MOLD_BREAKER))) {
        moveScore -= 15;
    }

    /*Handle recovery moves*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_RESTORE_HALF_HP || ai->attackerMoveEffect == MOVE_EFFECT_HEAL_HALF_DIFFERENT_IN_WEATHER || ai->attackerMoveEffect == MOVE_EFFECT_SWALLOW || ai->attackerMoveEffect == MOVE_EFFECT_HEAL_HALF_REMOVE_FLYING_TYPE) && ai->attackerHP == ai->attackerMaxHP) {
        moveScore -= 8;
    }

    /*OHKO moves*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_ONE_HIT_KO) && ((ai->defenderAbility == ABILITY_STURDY && ai->attackerAbility != ABILITY_MOLD_BREAKER) || ctx->battlemon[attacker].level < ctx->battlemon[ai->defender].level)) {
        moveScore -= 15;
    }

    /*Misc persistent effects
    Focus Energy / Ingrain / Mud Sport / Water Sport / Camouflage /
    Power Trick / Lucky Chant / Aqua Ring*/
    else if ((ctx->battlemon[ai->attacker].condition2 & STATUS2_FOCUS_ENERGY && ai->attackerMoveEffect == MOVE_EFFECT_CRIT_UP_2) || (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_INGRAIN && ai->attackerMoveEffect == MOVE_EFFECT_GROUND_TRAP_USER_CONTINUOUS_HEAL) || (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_WATER_SPORT && ai->attackerMoveEffect == MOVE_EFFECT_HALVE_ELECTRIC_DAMAGE) || (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_MUD_SPORT && ai->attackerMoveEffect == MOVE_EFFECT_HALVE_FIRE_DAMAGE) || (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_CAMOUFLAGE && ai->attackerMoveEffect == MOVE_EFFECT_CAMOUFLAGE) || (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_POWER_TRICK && ai->attackerMoveEffect == MOVE_EFFECT_SWAP_ATK_DEF) || (ctx->side_condition[ai->attackerSide] & SIDE_STATUS_LUCKY_CHANT && ai->attackerMoveEffect == MOVE_EFFECT_PREVENT_CRITS) || (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_AQUA_RING && ai->attackerMoveEffect == MOVE_EFFECT_RESTORE_HP_EVERY_TURN)) {
        moveScore -= 25;
    } else if (ai->attackerMoveEffect == MOVE_EFFECT_TAUNT) {
        if (ctx->battlemon[ai->defender].moveeffect.tauntTurns > 0) {
            moveScore -= 15; // taunted, so no status moves
        }
    }

    /*Magnet Rise*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_GIVE_GROUND_IMMUNITY && (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_MAGNET_RISE || ai->attackerType1 == TYPE_FLYING || ai->attackerType2 == TYPE_FLYING || ai->attackerAbility == ABILITY_LEVITATE)) {
        debug_printf("Magnet rise effect of moves is %d\n", ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_MAGNET_RISE);
        debug_printf("Attacker type 1 is %d, type 2 is %d\n", ai->attackerType1 == TYPE_FLYING, ai->attackerType2 == TYPE_FLYING);
        debug_printf("Attacker ability is %d\n", ai->attackerAbility == ABILITY_LEVITATE);
        moveScore -= 15; // magnet rise is already active, or flying type, or levitate
    }

    /*Handle substitute*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_SET_SUBSTITUTE && (ctx->battlemon[attacker].condition2 & STATUS2_SUBSTITUTE || ai->attackerHP * 100 / ai->attackerMaxHP < 26)) {
        moveScore -= 15;
    } // might have to consider status moves that are blocked by sub (unrelated)

    /*Handle leech seed*/
    else if (ai->attackerMove == MOVE_LEECH_SEED && (ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED || ai->defenderType1 == TYPE_GRASS || ai->defenderType2 == TYPE_GRASS || ai->defenderAbility == ABILITY_MAGIC_GUARD)) {
        moveScore -= 15;
    }

    /*Handle disable & encore*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_DISABLE && (ctx->battlemon[ai->defender].moveeffect.disabledTurns != 0)) {
        moveScore -= 8;
    } else if (ai->attackerMoveEffect == MOVE_EFFECT_ENCORE) {
        // Already encored or first turn out: never use
        if (ctx->battlemon[ai->defender].moveeffect.encoredTurns != 0
            || ai->attackerTurnsOnField == 0) {
            return -20;
        }
        BOOL encoreable = (ai->defenderLastUsedMove != MOVE_NONE)
            && (ctx->moveTbl[ai->defenderLastUsedMove].split == SPLIT_STATUS);
        if (ai->attackerMovesFirst && encoreable) {
            moveScore += 7;
        } else if (!ai->attackerMovesFirst) {
            if (BattleRand(bsys) % 2 == 0) {
                moveScore += 6;
            } else {
                moveScore += 5;
            }
        } else {
            moveScore += 6; // faster but not encoreable — default
        }
    }

    /*Handle sleep-necessitated moves*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_USE_RANDOM_LEARNED_MOVE_SLEEP || // snore and sleep talk
                 ai->attackerMoveEffect == MOVE_EFFECT_DAMAGE_WHILE_ASLEEP)
        && !(ctx->battlemon[attacker].condition & STATUS_SLEEP)) {
        moveScore -= 15;
    }

    /*Other miscellaneous persistent effects
    Lock On / Mean Look / Foresight / Perish Song /
    Torment / Miracle Eye / Heal Block / Gastro Acid*/
    else if ((ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_LOCK_ON && (ai->attackerMoveEffect == MOVE_EFFECT_NEXT_ATTACK_ALWAYS_HITS || ai->defenderAbility == ABILITY_NO_GUARD || ai->attackerAbility == ABILITY_NO_GUARD)) || (ctx->battlemon[ai->defender].condition2 & STATUS2_MEAN_LOOK && ai->attackerMoveEffect == MOVE_EFFECT_PREVENT_ESCAPE) || (ctx->battlemon[ai->defender].condition2 & STATUS2_FORESIGHT && ai->attackerMoveEffect == MOVE_EFFECT_IGNORE_EVASION_REMOVE_GHOST_IMMUNE) || (ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG && ai->attackerMoveEffect == MOVE_EFFECT_ALL_FAINT_3_TURNS) || (ctx->battlemon[ai->defender].condition2 & STATUS2_TORMENT && ai->attackerMoveEffect == MOVE_EFFECT_TORMENT) || (ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_MIRACLE_EYE && ai->attackerMoveEffect == MOVE_EFFECT_IGNORE_EVATION_REMOVE_DARK_IMMUNE) || (ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_HEAL_BLOCK && ai->attackerMoveEffect == MOVE_EFFECT_PREVENT_HEALING) || (ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_ABILITY_SUPPRESSED && (ai->attackerMoveEffect == MOVE_EFFECT_SUPRESS_ABILITY || ai->defenderAbility == ABILITY_MULTITYPE || ai->defenderAbility == ABILITY_TRUANT || ai->defenderAbility == ABILITY_SLOW_START || ai->defenderAbility == ABILITY_STENCH || ai->defenderAbility == ABILITY_RUN_AWAY || ai->defenderAbility == ABILITY_PICKUP || ai->defenderAbility == ABILITY_HONEY_GATHER))) {
        moveScore -= 15;
    }

    /*Handle Curse*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_CURSE && (ai->attackerType1 == TYPE_GHOST || ai->attackerType2 == TYPE_GHOST || ctx->battlemon[ai->defender].condition2 == STATUS2_CURSE || ai->defenderAbility == ABILITY_MAGIC_GUARD)) || (ai->attackerMoveEffect == MOVE_EFFECT_CURSE && (ai->attackerType1 != TYPE_GHOST || ai->attackerType2 == TYPE_GHOST) && (ctx->battlemon[attacker].states[STAT_ATTACK] >= 12 || ctx->battlemon[attacker].states[STAT_DEFENSE] >= 12))) {
        moveScore -= 15;
    }

    /*Handle hazards*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_STEALTH_ROCK && (ctx->side_condition[ai->defenderSide] & SIDE_STATUS_STEALTH_ROCK || ai->livingMembersDefender == 1)) || (ai->attackerMoveEffect == MOVE_EFFECT_SET_SPIKES && (ctx->scw[ai->defenderSide].spikesLayers >= 3 || ai->livingMembersDefender == 1)) || (ai->attackerMoveEffect == MOVE_EFFECT_TOXIC_SPIKES && (ctx->scw[ai->defenderSide].toxicSpikesLayers >= 2 || ai->livingMembersDefender == 1))) {
        moveScore -= 15;
    }
    /*Sticky Web already up*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_STICKY_WEB && (ctx->side_condition[ai->defenderSide] & SIDE_STATUS_STICKY_WEB)) {
        moveScore -= 20;
    }

    /*Handle weather*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_WEATHER_SANDSTORM && (ctx->field_condition & FIELD_CONDITION_SANDSTORM_ALL)) || (ai->attackerMoveEffect == MOVE_EFFECT_WEATHER_HAIL && (ctx->field_condition & FIELD_CONDITION_HAIL_ALL)) || (ai->attackerMoveEffect == MOVE_EFFECT_WEATHER_SNOW && (ctx->field_condition & FIELD_CONDITION_SNOW_ALL)) || (ai->attackerMoveEffect == MOVE_EFFECT_WEATHER_RAIN && (ctx->field_condition & FIELD_CONDITION_RAIN_ALL)) || (ai->attackerMoveEffect == MOVE_EFFECT_WEATHER_SUN && (ctx->field_condition & FIELD_CONDITION_SUN_ALL))) {
        moveScore -= 8;
    }

    else if ((ai->attackerMoveEffect == MOVE_EFFECT_WEATHER_RAIN && (ai->attackerAbility != ABILITY_SWIFT_SWIM && ai->attackerAbility != ABILITY_HYDRATION)) && (!(ctx->battlemon[ai->defender].condition & STATUS_NONE) && ctx->battlemon[ai->defender].ability == ABILITY_HYDRATION)) {
        moveScore -= 8;
    } // Basically don't cure opponent's status with rain dance

    if ((ai->attackerMove == MOVE_HAIL) && (ai->defenderAbility == ABILITY_ICE_BODY)) {
        moveScore -= 8;
    }
    if ((ai->attackerMove == MOVE_HAIL) && (ai->attackerAbility == ABILITY_ICE_BODY)) {
        moveScore += 8;
    } // Nice logic, gamefreak

    /*Handle doom desire and future sight*/
    if ((ai->attackerMoveEffect == MOVE_EFFECT_HIT_IN_3_TURNS) && ctx->fcc.future_prediction_count[ai->defender] != 0) {
        moveScore -= 12;
    }
    /*Handle baton pass, shed tail*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_PASS_STATS_AND_STATUS || ai->attackerMoveEffect == MOVE_EFFECT_SHED_TAIL) && ai->livingMembersAttacker == 1) {
        moveScore -= 15;
    }
    /*Fake Out*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_ALWAYS_FLINCH_FIRST_TURN_ONLY) {
        if (ai->attackerTurnsOnField > 0) {
            moveScore -= 25; // after turn 1: never use
        } else if (ai->defenderAbility != ABILITY_SHIELD_DUST && ai->defenderAbility != ABILITY_INNER_FOCUS) {
            moveScore += 9; // first turn, target not immune
        }
        // else first turn but target immune: no extra bonus
    }
    /*First Impression*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_FIRST_TURN_ONLY) {
        if (ai->attackerTurnsOnField > 0) {
            moveScore -= 25; // after turn 1: never use
        }
    }
    /*Handle stockpile*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_STOCKPILE && ctx->battlemon[attacker].moveeffect.stockpileCount < 3) {
        moveScore -= 15;
    }
    /*Spit up / Swallow*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_SPIT_UP || ai->attackerMoveEffect == MOVE_EFFECT_SWALLOW)
        && ctx->battlemon[attacker].moveeffect.stockpileCount == 0) {
        moveScore -= 15;
    }
    /*Handle Memento*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2) && (((ai->defenderAbility == ABILITY_WHITE_SMOKE || ai->defenderAbility == ABILITY_CLEAR_BODY) && ai->attackerAbility != ABILITY_MOLD_BREAKER) || (ctx->battlemon[attacker].states[STAT_ATTACK] <= 0 || ctx->battlemon[attacker].states[STAT_SPECIAL_ATTACK] <= 0))) {
        moveScore -= 15;
    }

    /*Handle Helping Hand*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_BOOST_ALLY_POWER_BY_50_PERCENT && !(BattleTypeGet(bsys) & (BATTLE_TYPE_MULTI | BATTLE_TYPE_DOUBLES | BATTLE_TYPE_TAG))) {
        moveScore -= 15;
    }

    /*Trick, Switcheroo, Knock Off*/
    // These checks from game freak make absolutely no sense. Knock off can still do boosted damage
    // against sticky hold targets, and you can still give your item to your opponent if they
    // dont have their own. I'm going to skip these for now.

    /*Poltergeist: fails if defender has no item*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_POLTERGEIST && ai->defenderItem == ITEM_NONE) {
        moveScore -= 15;
    }

    /*Handle imprison*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE && (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_IMPRISONED || ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_IMPRISONED)) {
        moveScore -= 15;
    }

    /*Handle Refresh*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_HEAL_STATUS && !(ctx->battlemon[ai->defender].condition & STATUS_POISON_ALL || ctx->battlemon[ai->defender].condition & STATUS_PARALYSIS || ctx->battlemon[ai->defender].condition & STATUS_BURN)) {
        moveScore -= 15;
    }

    /*Handle moves that change more than one type of stat*/
    /*Tickle*/
    if (ai->attackerMoveEffect == MOVE_EFFECT_ATK_DEF_DOWN && // tickle, in particular
        (ctx->battlemon[ai->defender].states[STAT_ATTACK] <= 0)) {
        moveScore -= 15;
    }
    if (ai->attackerMoveEffect == MOVE_EFFECT_ATK_DEF_DOWN && (ctx->battlemon[ai->defender].states[STAT_DEFENSE] <= 0)) {
        moveScore -= 8;
    } // Punishes each stat if already dropped to the max
    // The clear body interactions are handled above

    /*Bulk Up*/
    if (ai->attackerMoveEffect == MOVE_EFFECT_ATK_DEF_UP && (ctx->battlemon[attacker].states[STAT_ATTACK] <= 0)) {
        moveScore -= 15;
    }
    if (ai->attackerMoveEffect == MOVE_EFFECT_ATK_DEF_UP && (ctx->battlemon[attacker].states[STAT_DEFENSE] <= 0)) {
        moveScore -= 8;
    } // Punishes each stat if already raised to +6

    /*Calm Mind*/
    if (ai->attackerMoveEffect == MOVE_EFFECT_SP_ATK_SP_DEF_UP && (ctx->battlemon[attacker].states[STAT_SPECIAL_ATTACK] <= 0)) {
        moveScore -= 15;
    }
    if (ai->attackerMoveEffect == MOVE_EFFECT_SP_ATK_SP_DEF_UP && (ctx->battlemon[attacker].states[STAT_SPECIAL_DEFENSE] <= 0)) {
        moveScore -= 8;
    } // Punishes each stat if already raised to +6

    /*Dragon Dance*/
    if (ai->attackerMoveEffect == MOVE_EFFECT_ATK_SPEED_UP && (ctx->battlemon[attacker].states[STAT_ATTACK] <= 0)) {
        moveScore -= 15;
    }
    if (ai->attackerMoveEffect == MOVE_EFFECT_ATK_SPEED_UP && (ctx->battlemon[attacker].states[STAT_SPEED] <= 0)) {
        moveScore -= 8;
    } // Punishes each stat if already raised to +6

    /*Tailwind*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_DOUBLE_SPEED_3_TURNS && (ctx->side_condition[ai->attackerSide] & SIDE_STATUS_TAILWIND || ctx->field_condition & FIELD_CONDITION_TRICK_ROOM)) {
        moveScore -= 15;
    }

    /*Gravity*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_GRAVITY && (ctx->field_condition & FIELD_CONDITION_GRAVITY)) {
        moveScore -= 15;
    }

    /*Light Screen / Reflect / Aurora Veil already active*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_SET_LIGHT_SCREEN && (ctx->side_condition[ai->attackerSide] & SIDE_STATUS_LIGHT_SCREEN)) {
        moveScore -= 15;
    } else if (ai->attackerMoveEffect == MOVE_EFFECT_SET_REFLECT && (ctx->side_condition[ai->attackerSide] & SIDE_STATUS_REFLECT)) {
        moveScore -= 15;
    } else if (ai->attackerMoveEffect == MOVE_EFFECT_SET_AURORA_VEIL && (ctx->side_condition[ai->attackerSide] & SIDE_STATUS_AURORA_VEIL)) {
        moveScore -= 15;
    }

    /*Trick Room*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_TRICK_ROOM && (ai->attackerMovesFirst || ai->isSpeedTie)) {
        moveScore -= 15;
    }

    /*Healing Wish and Lunar Dance*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON) {
        moveScore = -20;
    }

    if ((ai->attackerMoveEffect == MOVE_EFFECT_FAINT_AND_FULL_HEAL_NEXT_MON) && (ai->damagedMonsDefender > 0 || ai->statusedMonsAttacker > 0)) {
        moveScore -= 15;
    }
    if ((ai->attackerMoveEffect == MOVE_EFFECT_FAINT_FULL_RESTORE_NEXT_MON) && (ai->livingMembersAttacker == 1)) {
        moveScore -= 15; // can penalize twice
    }

    /*Natural Gift*/
    if (ai->attackerMoveEffect == MOVE_EFFECT_NATURAL_GIFT && (!IS_ITEM_BERRY(ai->attackerItem))) {
        moveScore -= 15;
    }

    /*Acupressure*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_RANDOM_STAT_UP_2 && (ctx->battlemon[attacker].states[STAT_ATTACK] >= 12 || ctx->battlemon[attacker].states[STAT_DEFENSE] >= 12 || ctx->battlemon[attacker].states[STAT_SPECIAL_ATTACK] >= 12 || ctx->battlemon[attacker].states[STAT_SPECIAL_DEFENSE] >= 12 || ctx->battlemon[attacker].states[STAT_SPEED] >= 12 || ctx->battlemon[attacker].states[STAT_EVASION] >= 12 || ctx->battlemon[attacker].states[STAT_ACCURACY] >= 12)) {
        moveScore -= 15;
    }

    /*Metal Burst*/
    if (ai->attackerMoveEffect == MOVE_EFFECT_METAL_BURST && (ai->defenderAbility == ABILITY_STALL || ai->attackerMovesFirst)) {
        moveScore -= 15;
    }
    if (ai->attackerMoveEffect == MOVE_EFFECT_METAL_BURST && ai->attackerAbility == ABILITY_STALL) {
        moveScore += 10;
    }

    /*Embargo*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_PREVENT_ITEM_USE && (ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_EMBARGO)) {
        moveScore -= 15;
    }

    /*Fling*/
    /*TODO: immunities to fling effects like burn from flame orb on a fire type ai->defender*/
    if (ai->attackerMoveEffect == MOVE_EFFECT_FLING && (ai->attackerAbility == ABILITY_MULTITYPE || ai->attackerItem == ITEM_NONE || ai->flingPower == 0)) {
        moveScore -= 15;
    }

    /*Psycho Shift*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_TRANSFER_STATUS) {
        if (!(ctx->battlemon[attacker].condition & STATUS_ALL)) {
            // No status to transfer — move fails
            moveScore -= 15;
        } else if (ctx->battlemon[ai->defender].condition2 & STATUS2_SUBSTITUTE) {
            // Substitute blocks status transfer
            moveScore -= 15;
        } else if ((ctx->battlemon[attacker].condition & STATUS_BURN) && ai->defenderImmuneToBurn) {
            moveScore -= 15;
        } else if ((ctx->battlemon[attacker].condition & STATUS_POISON_ALL) && ai->defenderImmuneToPoison) {
            moveScore -= 15;
        } else if ((ctx->battlemon[attacker].condition & STATUS_PARALYSIS) && ai->defenderImmuneToParalysis) {
            moveScore -= 15;
        } else if ((ctx->battlemon[attacker].condition & STATUS_SLEEP) && ai->defenderImmuneToSleep) {
            moveScore -= 15;
        } else if ((ctx->battlemon[attacker].condition & STATUS_FREEZE) && (ai->defenderType1 == TYPE_ICE || ai->defenderType2 == TYPE_ICE || ai->defenderAbility == ABILITY_MAGMA_ARMOR || ctx->battlemon[ai->defender].condition & STATUS_ALL || ctx->side_condition[ai->defenderSide] & SIDE_STATUS_SAFEGUARD)) {
            moveScore -= 15;
        }
    }

    /*Copycat*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_USE_LAST_USED_MOVE) {
        if (ai->attackerMovesFirst && ctx->total_turn == 0 && ai->attackerMovesFirst) {
            moveScore -= 15;
        }
    }

    /*Power Swap / Guard Swap*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_SWAP_ATK_SP_ATK_STAT_CHANGES && (ctx->battlemon[attacker].states[STAT_ATTACK] > ctx->battlemon[ai->defender].states[STAT_ATTACK] && ctx->battlemon[attacker].states[STAT_SPECIAL_ATTACK] > ctx->battlemon[ai->defender].states[STAT_SPECIAL_ATTACK])) {
        moveScore -= 15;
    } else if (ai->attackerMoveEffect == MOVE_EFFECT_SWAP_DEF_SP_DEF_STAT_CHANGES && (ctx->battlemon[attacker].states[STAT_DEFENSE] > ctx->battlemon[ai->defender].states[STAT_DEFENSE] && ctx->battlemon[attacker].states[STAT_SPECIAL_DEFENSE] > ctx->battlemon[ai->defender].states[STAT_SPECIAL_DEFENSE])) {
        moveScore -= 15;
    }

    /*Last Resort*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_FAIL_IF_NOT_USED_ALL_OTHER_MOVES && (ctx->battlemon[attacker].moveeffect.lastResortCount < ai->attackerMovesKnown - 1)) {
        moveScore -= 15;
    }

    /*Worry Seed*/
    BOOL defender_knows_sleepy_moves = 0;
    for (int i = 0; i < 4; i++) {
        if (ctx->battlemon[ai->defender].move[i] == MOVE_SLEEP_TALK || ctx->battlemon[ai->defender].move[i] == MOVE_SNORE) {
            defender_knows_sleepy_moves = 1;
        }
    }

    if (ai->attackerMoveEffect == MOVE_EFFECT_SET_ABILITY_TO_INSOMNIA && (ai->defenderAbility == ABILITY_TRUANT || ai->defenderAbility == ABILITY_INSOMNIA || ai->defenderAbility == ABILITY_VITAL_SPIRIT || ai->defenderAbility == ABILITY_MULTITYPE || (ctx->battlemon[ai->defender].condition & STATUS_SLEEP && defender_knows_sleepy_moves == 0))) {
        moveScore -= 15;
    }

    /*Defog*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_REMOVE_HAZARDS_SCREENS_EVA_DOWN && (ai->livingMembersDefender == 1 || (ctx->scw[ai->attackerSide].toxicSpikesLayers == 0 && ctx->scw[ai->attackerSide].spikesLayers == 0 && !(ctx->side_condition[ai->defenderSide] & SIDE_STATUS_STEALTH_ROCK)))) {
        moveScore -= 15;
    }

    /*Captivate*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_SP_ATK_DOWN_2_OPPOSITE_GENDER && (ctx->battlemon[ai->defender].sex == ctx->battlemon[ai->attacker].sex || ctx->battlemon[ai->defender].sex == POKEMON_GENDER_UNKNOWN || ctx->battlemon[ai->defender].states[STAT_SPECIAL_ATTACK] == 0)) {
        moveScore -= 15;
    }
    return moveScore;
}

// Returns TRUE if the AI should use its recovery move given the heal amount.
// healAmount is in raw HP units (e.g. attackerMaxHP / 2 for 50% moves).
static BOOL ShouldRecover(struct BattleSystem *bsys, int attacker, struct AIContext *ai, int healAmount)
{
    struct BattleStruct *ctx = bsys->sp;
    if (ctx->battlemon[attacker].condition & STATUS_BAD_POISON) {
        return FALSE;
    }
    if (ai->maxDamageReceived >= healAmount) {
        return FALSE;
    }
    if (ai->attackerMovesFirst) {
        if (ai->maxDamageReceived >= ai->attackerHP
            && ai->maxDamageReceived < ai->attackerHP + healAmount) {
            return TRUE;
        }
        if (ai->maxDamageReceived < ai->attackerHP) {
            if (ai->attackerPercentHP <= 40) {
                return TRUE;
            }
            if (ai->attackerPercentHP < 66) {
                return BattleRand(bsys) % 2 == 0;
            }
        }
    } else {
        if (ai->attackerPercentHP < 50) {
            return TRUE;
        }
        if (ai->attackerPercentHP < 70) {
            return BattleRand(bsys) % 4 < 3;
        }
    }
    return FALSE;
}

// Returns TRUE if the move should not receive the +6/+8 highest-damage bonus.
// Explosion, Final Gambit, and Rollout are also excluded from kill bonuses (checked separately).
static BOOL MoveExcludedFromDamageBonus(int moveno, int moveEffect)
{
    return moveEffect == MOVE_EFFECT_HALVE_DEFENSE // Explosion, Self-Destruct
        || moveEffect == MOVE_EFFECT_DOUBLE_POWER_EACH_TURN_LOCK_INTO // Rollout, Ice Ball
        || moveEffect == MOVE_EFFECT_HIT_IN_3_TURNS // Future Sight, Doom Desire
        || moveEffect == MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP // Meteor Beam
        || moveno == MOVE_RELIC_SONG
        || moveno == MOVE_FINAL_GAMBIT;
}

/*Rank moves based on their damage output per the Run & Bun AI document.*/
int EvaluateAttackFlag(struct BattleSystem *bsys, int attacker, int i, struct AIContext *ai)
{
    int moveScore = 0;
    struct BattleStruct *ctx = bsys->sp;

    // Status moves are handled by ExpertFlag
    if (ctx->moveTbl[ai->attackerMove].split == SPLIT_STATUS) {
        return 0;
    }

    // No-repeat moves: can't be used twice in a row — exclude from damage bonus
    if (IS_NO_REPEAT_MOVE(ai->attackerMove) && ai->attackerLastUsedMove == ai->attackerMove) {
        return 0;
    }

    // Psychic Terrain: priority moves targeting grounded defenders fail
    if (ctx->terrainOverlay.type == PSYCHIC_TERRAIN
        && ctx->terrainOverlay.numberOfTurnsLeft > 0
        && ctx->moveTbl[ai->attackerMove].priority > 0
        && ai->defenderType1 != TYPE_FLYING
        && ai->defenderType2 != TYPE_FLYING
        && ai->defenderAbility != ABILITY_LEVITATE
        && ai->defenderItem != ITEM_AIR_BALLOON) {
        return -20;
    }

    BOOL isExcludedFromDamageBonus = MoveExcludedFromDamageBonus(ai->attackerMove, ai->attackerMoveEffect);

    // Contrary: self-lowering moves become self-boosts — ExpertFlag handles the bonus instead
    if (ai->attackerAbility == ABILITY_CONTRARY
        && IsInList(ai->attackerMoveEffect, ContraryBenefitList, NELEMS(ContraryBenefitList))) {
        isExcludedFromDamageBonus = TRUE;
    }

    // Explosion, Final Gambit, and Rollout also skip kill bonuses
    BOOL isExcludedFromKillBonus = (ai->attackerMoveEffect == MOVE_EFFECT_HALVE_DEFENSE
        || ai->attackerMoveEffect == MOVE_EFFECT_DOUBLE_POWER_EACH_TURN_LOCK_INTO
        || ai->attackerMove == MOVE_FINAL_GAMBIT);

    BOOL isKill = (ai->attackerAvgRollMoveDamages[i] >= ai->defenderHP);

    // Exclude pivot moves from kill bonus if another non-pivot move also kills
    if (ai->attackerMoveEffect == MOVE_EFFECT_SWITCH_HIT && isKill) {
        for (int j = 0; j < ai->attackerMovesKnown; j++) {
            if (i == j) {
                continue;
            }
            u16 movenoJ = ctx->battlemon[attacker].move[j];
            if (movenoJ == MOVE_NONE) {
                continue;
            }
            if (ctx->moveTbl[movenoJ].effect == MOVE_EFFECT_SWITCH_HIT) {
                continue;
            }
            if (ai->attackerAvgRollMoveDamages[j] >= ai->defenderHP) {
                isExcludedFromKillBonus = TRUE;
                break;
            }
        }
    }

    // Find if this is the highest damage move, comparing only against other non-excluded moves
    BOOL isHighestDamage = TRUE;
    if (!isExcludedFromDamageBonus) {
        for (int j = 0; j < ai->attackerMovesKnown; j++) {
            if (i == j) {
                continue;
            }
            u16 movenoJ = ctx->battlemon[attacker].move[j];
            if (movenoJ == MOVE_NONE) {
                continue;
            }
            if (MoveExcludedFromDamageBonus(movenoJ, ctx->moveTbl[movenoJ].effect)) {
                continue;
            }
            if (IS_NO_REPEAT_MOVE(movenoJ) && ai->attackerLastUsedMove == movenoJ) {
                continue;
            }
            if (ai->attackerAvgRollMoveDamages[i] < ai->attackerAvgRollMoveDamages[j]) {
                isHighestDamage = FALSE;
                break;
            }
        }
    }

    // Highest damage move (or any killing move) gets +6 (80%) or +8 (20%)
    // "If multiple moves kill, they are all considered the highest damaging move"
    if (!isExcludedFromDamageBonus && (isHighestDamage || isKill)) {
        if (BattleRand(bsys) % 5 == 0) {
            moveScore += 8;
        } else {
            moveScore += 6;
        }
    }

    // Kill bonuses
    if (!isExcludedFromKillBonus && isKill) {
        // Priority move while slower also qualifies as a fast kill
        BOOL isFastKill = (ai->attackerMovesFirst || ai->isSpeedTie
            || ctx->moveTbl[ai->attackerMove].priority > 0
            || (ai->attackerMove == MOVE_GRASSY_GLIDE && ctx->terrainOverlay.type == GRASSY_TERRAIN && ctx->terrainOverlay.numberOfTurnsLeft > 0));
        if (isFastKill) {
            moveScore += 6;
        } else {
            moveScore += 3;
        }

        // Moxie / Beast Boost / Chilling Neigh / Grim Neigh: +1 on kill
        if (ai->attackerAbility == ABILITY_MOXIE
            || ai->attackerAbility == ABILITY_BEAST_BOOST
            || ai->attackerAbility == ABILITY_CHILLING_NEIGH
            || ai->attackerAbility == ABILITY_GRIM_NEIGH) {
            moveScore += 1;
        }
    }

    // Damaging priority moves: +11 if AI is dying and slower,
    // OR dying and faster but player has a priority move of their own
    if (ai->maxDamageReceived > ai->attackerHP
        && (ctx->moveTbl[ai->attackerMove].priority > 0
            || (ai->attackerMove == MOVE_GRASSY_GLIDE && ctx->terrainOverlay.type == GRASSY_TERRAIN && ctx->terrainOverlay.numberOfTurnsLeft > 0))) {
        if (!ai->attackerMovesFirst && !ai->isSpeedTie) {
            moveScore += 11;
        } else {
            BOOL defenderHasPriority = FALSE;
            for (int j = 0; j < 4; j++) {
                u16 defMove = ctx->battlemon[ai->defender].move[j];
                if (defMove == MOVE_NONE) {
                    continue;
                }
                if (ctx->moveTbl[defMove].priority > 0 || (defMove == MOVE_GRASSY_GLIDE && ctx->terrainOverlay.type == GRASSY_TERRAIN && ctx->terrainOverlay.numberOfTurnsLeft > 0)) {
                    defenderHasPriority = TRUE;
                    break;
                }
            }
            if (defenderHasPriority) {
                moveScore += 11;
            }
        }
    }

    // High crit rate + Super Effective: +1 (50%)
    if (ai->attackerMoveEffect == MOVE_EFFECT_HIGH_CRITICAL) {
        u32 effectiveness = ai->attackerMoveEffectiveness[i];
        if (effectiveness == TYPE_MUL_SUPER_EFFECTIVE
            || effectiveness == TYPE_MUL_DOUBLE_SUPER_EFFECTIVE
            || effectiveness == TYPE_MUL_TRIPLE_SUPER_EFFECTIVE) {
            if (BattleRand(bsys) % 2 == 0) {
                moveScore += 1;
            }
        }
    }

    debug_printf("Move score returned from evaluate attack flag: %d\n", moveScore);
    return moveScore;
}

/*In the case of custom ai hacks, this should probably where edits happen.
A lot of this logic adds in probability.*/

/*Expert Flag is where the meat and bones of moves happens.
It evaluates how good a non-damaging move is, or a move with extra effects that are relevant.*/
int ExpertFlag(struct BattleSystem *bsys, int attacker, int i, struct AIContext *ai)
{
    int moveScore = 0;
    struct BattleStruct *ctx = bsys->sp;
    debug_printf("In expert flag\n");

    // Misty Terrain: status conditions and confusion fail on grounded defenders
    BOOL defenderIsGrounded = (ai->defenderType1 != TYPE_FLYING
        && ai->defenderType2 != TYPE_FLYING
        && ai->defenderAbility != ABILITY_LEVITATE
        && ai->defenderItem != ITEM_AIR_BALLOON);
    if (ctx->terrainOverlay.type == MISTY_TERRAIN
        && ctx->terrainOverlay.numberOfTurnsLeft > 0
        && defenderIsGrounded
        && (ai->attackerMoveEffect == MOVE_EFFECT_STATUS_SLEEP
            || ai->attackerMoveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN
            || ai->attackerMoveEffect == MOVE_EFFECT_STATUS_BURN
            || ai->attackerMoveEffect == MOVE_EFFECT_STATUS_POISON
            || ai->attackerMoveEffect == MOVE_EFFECT_STATUS_BADLY_POISON
            || ai->attackerMoveEffect == MOVE_EFFECT_STATUS_PARALYZE
            || ai->attackerMoveEffect == MOVE_EFFECT_STATUS_CONFUSE
            || ai->attackerMoveEffect == MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION
            || ai->attackerMoveEffect == MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION)) {
        return -20;
    }

    /*Trapping moves (Fire Spin, Sand Tomb, Wrap, etc.)
      If defender is already trapped, EvaluateAttackFlag owns the score entirely (pure damage value).
      If not trapped, only score here when the move isn't the highest damage option and doesn't kill —
      those cases are handled by EvaluateAttackFlag's standard bonuses.*/
    if (ai->attackerMoveEffect == MOVE_EFFECT_BIND_HIT) {
        if (ctx->binding_turns[ai->defender] == 0) {
            BOOL trapIsKill = (ai->attackerAvgRollMoveDamages[i] >= ai->defenderHP);
            BOOL trapIsHighest = TRUE;
            for (int j = 0; j < ai->attackerMovesKnown; j++) {
                if (i == j) {
                    continue;
                }
                u16 mj = ctx->battlemon[attacker].move[j];
                if (mj == MOVE_NONE) {
                    continue;
                }
                if (MoveExcludedFromDamageBonus(mj, ctx->moveTbl[mj].effect)) {
                    continue;
                }
                if (ai->attackerAvgRollMoveDamages[i] < ai->attackerAvgRollMoveDamages[j]) {
                    trapIsHighest = FALSE;
                    break;
                }
            }
            if (!trapIsHighest && !trapIsKill) {
                if (BattleRand(bsys) % 5 == 0) {
                    moveScore += 8;
                } else {
                    moveScore += 6;
                }
            }
        }
    }

    /*Sleep moves*/
    if (ai->attackerMoveEffect == MOVE_EFFECT_STATUS_SLEEP
        || ai->attackerMoveEffect == MOVE_EFFECT_STATUS_SLEEP_NEXT_TURN) {
        moveScore += 6;
        if (BattleRand(bsys) % 4 == 0) // 25%
        {
            if (!ai->defenderImmuneToSleep) {
                moveScore += 1;
                if ((BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_RECOVER_DAMAGE_SLEEP, ai)
                        || BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_STATUS_NIGHTMARE, ai))
                    && !BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_DAMAGE_WHILE_ASLEEP, ai)
                    && !BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_USE_RANDOM_LEARNED_MOVE_SLEEP, ai)) {
                    moveScore += 1;
                }
                if (BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_DOUBLE_DAMAGE_ON_STATUS, ai)
                    || (BattleTypeGet(bsys) & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)
                        && BattlerHasMoveEffect(bsys, ai->partner, MOVE_EFFECT_DOUBLE_DAMAGE_ON_STATUS, ai))) {
                    moveScore += 1;
                }
            }
        }
    }

    /*Will-O-Wisp / Burn*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_STATUS_BURN) {
        moveScore += 6;
        if (BattleRand(bsys) % 8 < 3) // ~37%
        {
            BOOL defenderHasPhysical = FALSE;
            for (int j = 0; j < 4; j++) {
                u16 defMove = ctx->battlemon[ai->defender].move[j];
                if (defMove == MOVE_NONE) {
                    continue;
                }
                if (ctx->moveTbl[defMove].split == SPLIT_PHYSICAL) {
                    defenderHasPhysical = TRUE;
                    break;
                }
            }
            if (defenderHasPhysical) {
                moveScore += 1;
            }
            if (BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_DOUBLE_DAMAGE_ON_STATUS, ai)
                || (BattleTypeGet(bsys) & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)
                    && BattlerHasMoveEffect(bsys, ai->partner, MOVE_EFFECT_DOUBLE_DAMAGE_ON_STATUS, ai))) {
                moveScore += 1;
            }
        }
    }

    /*Sheer Cold / Frostbite*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_STATUS_FROSTBITE) {
        moveScore += 6;
        if (BattleRand(bsys) % 8 < 3) // ~37%
        {
            BOOL defenderHasSpecial = FALSE;
            for (int j = 0; j < 4; j++) {
                u16 defMove = ctx->battlemon[ai->defender].move[j];
                if (defMove == MOVE_NONE) {
                    continue;
                }
                if (ctx->moveTbl[defMove].split == SPLIT_SPECIAL) {
                    defenderHasSpecial = TRUE;
                    break;
                }
            }
            if (defenderHasSpecial) {
                moveScore += 1;
            }
            if (BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_DOUBLE_DAMAGE_ON_STATUS, ai)
                || (BattleTypeGet(bsys) & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)
                    && BattlerHasMoveEffect(bsys, ai->partner, MOVE_EFFECT_DOUBLE_DAMAGE_ON_STATUS, ai))) {
                moveScore += 1;
            }
        }
    }

    /*Power Trick*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_SWAP_ATK_DEF
        && !(ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_POWER_TRICK)) {
        if (ctx->battlemon[attacker].species == SPECIES_SHUCKLE) {
            BOOL defenderThreatensDefense = FALSE;
            for (int j = 0; j < 4; j++) {
                u16 defMove = ctx->battlemon[ai->defender].move[j];
                if (defMove == MOVE_NONE) {
                    continue;
                }
                if (ctx->moveTbl[defMove].power == 0) {
                    continue;
                }
                if (ctx->moveTbl[defMove].split == SPLIT_PHYSICAL
                    || defMove == MOVE_PSYSHOCK
                    || defMove == MOVE_PSYSTRIKE
                    || defMove == MOVE_SECRET_SWORD) {
                    defenderThreatensDefense = TRUE;
                    break;
                }
            }
            if (defenderThreatensDefense) {
                moveScore -= 15;
            } else {
                moveScore += 8;
            }
        } else {
            moveScore += 6;
        }
    }

    /*Poison moves*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_STATUS_POISON
        || ai->attackerMoveEffect == MOVE_EFFECT_STATUS_BADLY_POISON) {
        moveScore += 6;
        if (BattleRand(bsys) % 8 < 3 // ~38%
            && ai->attackerAvgRollMoveDamages[i] < ai->defenderHP) {
            if (!ai->defenderImmuneToPoison && ai->defenderPercentHP > 20) {
                BOOL hasHexOrSynergy = BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_DOUBLE_DAMAGE_ON_STATUS, ai)
                    || BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_VENOM_DRENCH, ai)
                    || BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_POISON_HIT_DOUBLE_POWER_ON_POISONED, ai)
                    || ai->attackerAbility == ABILITY_MERCILESS;
                if (hasHexOrSynergy) {
                    BOOL defenderHasDamaging = FALSE;
                    for (int j = 0; j < 4; j++) {
                        u16 defMove = ctx->battlemon[ai->defender].move[j];
                        if (defMove == MOVE_NONE) {
                            continue;
                        }
                        if (ctx->moveTbl[defMove].split != SPLIT_STATUS) {
                            defenderHasDamaging = TRUE;
                            break;
                        }
                    }
                    if (!defenderHasDamaging) {
                        moveScore += 2;
                    }
                }
            }
        }
    }

    /*Paralysis*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_STATUS_PARALYZE
        || (ai->attackerMoveEffect == MOVE_EFFECT_PARALYZE_HIT
            && ctx->moveTbl[ai->attackerMove].secondaryEffectChance == 100)) {
        BOOL slowedAfterPara = ai->defenderMovesFirst
            && ctx->battlemon[ai->defender].speed / 4 < ctx->battlemon[attacker].speed;
        BOOL hasHexOrFlinch = BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_DOUBLE_DAMAGE_ON_STATUS, ai)
            || BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_FLINCH_HIT, ai);
        BOOL targetWobbly = (ctx->battlemon[ai->defender].condition2 & STATUS2_ATTRACT)
            || (ctx->battlemon[ai->defender].condition2 & STATUS2_CONFUSION);
        if (slowedAfterPara || hasHexOrFlinch || targetWobbly) {
            moveScore += 8;
        } else {
            moveScore += 7;
        }
        if (BattleRand(bsys) % 2 == 0) {
            moveScore -= 1;
        }
    }

    /*Confusion inducing moves*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_STATUS_CONFUSE || ai->attackerMoveEffect == MOVE_EFFECT_SP_ATK_UP_CAUSE_CONFUSION || ai->attackerMoveEffect == MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION) {
        moveScore += 6;
        if (ctx->battlemon[ai->defender].condition & STATUS_PARALYSIS) {
            moveScore += 1;
        }
    }

    /*Electro Shot — electric Meteor Beam, also skips charge in rain*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP_RAIN_SKIPS) {
        if (ai->attackerItem == ITEM_POWER_HERB || (ctx->field_condition & FIELD_CONDITION_RAIN_ALL)) {
            moveScore += 9;
        } else {
            return -20;
        }
    } else if (ai->attackerMoveEffect == MOVE_EFFECT_CHARGE_TURN_SP_ATK_UP) {
        /*Meteor Beam: Power Herb → +9; else never (-20)*/
        if (ai->attackerItem == ITEM_POWER_HERB) {
            moveScore += 9;
        } else {
            return -20;
        }
    }
    /*Geomancy*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_CHARGE_TURN_ATK_SP_ATK_SPEED_UP_2) {
        if (ai->attackerItem == ITEM_POWER_HERB) {
            moveScore += 8;
        } else {
            moveScore -= 20;
        }
    }

    /*Damaging moves that 100% raise AI speed (Trailblaze, Esper Wing, etc.)*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_RAISE_SPEED_HIT
                 || ai->attackerMoveEffect == MOVE_EFFECT_HIGH_CRITICAL_RAISE_SPEED_HIT)
        && ai->attackerAbility != ABILITY_SHEER_FORCE
        && ctx->moveTbl[ai->attackerMove].secondaryEffectChance == 100
        && ai->attackerAvgRollMoveDamages[i] < ai->defenderHP
        && ai->attackerMoveEffectiveness[i] != TYPE_MUL_NO_EFFECT) {
        // Slower and not already at max speed: prioritize for speed control
        if (!ai->attackerMovesFirst && !ai->isSpeedTie
            && ctx->battlemon[attacker].states[STAT_SPEED] < 12) {
            moveScore += 7;
        }
        // Already faster or max speed: let highest-damage calc stand, no extra bonus
    }
    /*Pure speed-drop status moves (Scary Face, String Shot, Cotton Spore, Venom Drench)*/
    else if (IsInList(ai->attackerMoveEffect, SpeedDropList, NELEMS(SpeedDropList))) {
        // Venom Drench does nothing if target is not poisoned
        if (ai->attackerMoveEffect == MOVE_EFFECT_VENOM_DRENCH
            && !(ctx->battlemon[ai->defender].condition & STATUS_POISON_ALL)) {
            moveScore -= 20;
        } else if (ai->maxDamageReceived >= ai->attackerHP) {
            moveScore -= 20;
        } else if (!ai->attackerMovesFirst) {
            moveScore += 6;
        } else {
            moveScore -= 20;
        }
    }

    /*Setup Moves
      General gate: OHKO without Sturdy/Sash → -20; Unaware → -20 (exceptions: SD, Howl, PuP) */
    else if ((IsInList(ai->attackerMoveEffect, RBSetupList, NELEMS(RBSetupList))
                 && !(ai->attackerMoveEffect == MOVE_EFFECT_CURSE && HasType(ctx, attacker, TYPE_GHOST)))
        || (ai->attackerMoveEffect == MOVE_EFFECT_RAISE_ATTACK_HIT
            && ctx->moveTbl[ai->attackerMove].secondaryEffectChance == 100)
        || (ai->attackerMoveEffect == MOVE_EFFECT_RAISE_SP_ATK_HIT
            && ctx->moveTbl[ai->attackerMove].secondaryEffectChance == 100)
        || ai->attackerMove == MOVE_NO_RETREAT) {
        // General gate: player OHKOs AI (Sturdy/Sash not active) → never setup
        BOOL attackerHasSturdy = (ai->attackerAbility == ABILITY_STURDY);
        BOOL attackerHasSash = (ai->attackerItem == ITEM_FOCUS_SASH
            && ai->attackerHP == ai->attackerMaxHP);
        if (!attackerHasSturdy && !attackerHasSash
            && ai->maxDamageReceived >= ai->attackerHP) {
            return -20;
        }

        // Unaware gate: defender has Unaware → never setup, except SD / Howl / PuP
        BOOL bypassesUnaware = (ai->attackerMoveEffect == MOVE_EFFECT_ATK_UP_2 // Swords Dance
            || ai->attackerMoveEffect == MOVE_EFFECT_ATK_UP // Howl
            || (ai->attackerMoveEffect == MOVE_EFFECT_RAISE_ATTACK_HIT
                && ctx->moveTbl[ai->attackerMove].secondaryEffectChance == 100));
        if (ai->defenderAbility == ABILITY_UNAWARE && !bypassesUnaware) {
            return -20;
        }

        // Is defender incapacitated (asleep or recharging)? Frostbite does not incapacitate.
        BOOL defIncapacitated = ((ctx->battlemon[ai->defender].condition & STATUS_SLEEP) != 0)
            || ((ctx->battlemon[ai->defender].condition2 & STATUS2_RECHARGE) != 0);

        // Is AI slower and 2HKO'd?
        BOOL slowerAnd2HKOd = !ai->attackerMovesFirst && !ai->isSpeedTie
            && (ai->maxDamageReceived * 2 >= ai->attackerHP);

        // ---- Belly Drum ----
        if (ai->attackerMoveEffect == MOVE_EFFECT_MAX_ATK_LOSE_HALF_MAX_HP) {
            if (defIncapacitated) {
                moveScore += 9;
            } else {
                int hpAfterDrum = ai->attackerHP - ai->attackerMaxHP / 2;
                if (ai->attackerItem == ITEM_SITRUS_BERRY) {
                    hpAfterDrum += ai->attackerMaxHP / 4;
                }
                if (hpAfterDrum < 0) {
                    hpAfterDrum = 0;
                }
                if (ai->maxDamageReceived < hpAfterDrum) {
                    moveScore += 8;
                } else {
                    moveScore += 4;
                }
            }
        }
        // ---- Shell Smash ----
        else if (ai->attackerMoveEffect == MOVE_EFFECT_ATK_SP_ATK_SPEED_UP_2_DEF_SP_DEF_DOWN) {
            // Never if Atk already +1 or higher, or either attacking stat at +6
            if (ctx->battlemon[attacker].states[STAT_ATTACK] >= 7
                || ctx->battlemon[attacker].states[STAT_SPECIAL_ATTACK] == 12) {
                return -20;
            }

            moveScore += 6;
            if (defIncapacitated) {
                moveScore += 3;
            }

            // Post-smash survival: if faster, factor in def drop (White Herb cancels it)
            int damageAfterSmash = ai->maxDamageReceived;
            if (ai->attackerMovesFirst && ai->attackerItem != ITEM_WHITE_HERB) {
                damageAfterSmash = ai->maxDamageReceived * 3 / 2;
            }

            if (damageAfterSmash < ai->attackerHP) {
                moveScore += 2;
            } else {
                moveScore -= 2;
            }
        }
        // ---- Agility / Rock Polish / Autotomize ----
        else if (ai->attackerMoveEffect == MOVE_EFFECT_SPEED_UP_2
            || ai->attackerMoveEffect == MOVE_EFFECT_AUTOTOMIZE) {
            if (!ai->attackerMovesFirst && !ai->isSpeedTie) {
                moveScore += 7;
            } else {
                return -20;
            }
        }
        // ---- Tail Glow / Nasty Plot / Work Up ----
        else if (ai->attackerMoveEffect == MOVE_EFFECT_SP_ATK_UP_3
            || ai->attackerMoveEffect == MOVE_EFFECT_SP_ATK_UP_2
            || ai->attackerMoveEffect == MOVE_EFFECT_ATK_SP_ATK_UP) {
            moveScore += 6;
            if (defIncapacitated) {
                moveScore += 3;
            } else if (ai->maxDamageReceived * 3 < ai->attackerHP) // player can't 3HKO
            {
                moveScore += 1;
                if (ai->attackerMovesFirst) {
                    moveScore += 1;
                }
            }
            if (slowerAnd2HKOd) {
                moveScore -= 5;
            }
            if (ctx->battlemon[attacker].states[STAT_SPECIAL_ATTACK] >= 8) { // already at +2 SpAtk
                moveScore -= 1;
            }
        }
        // ---- Mixed Physical: Bulk Up / Coil / No Retreat ----
        else if (ai->attackerMoveEffect == MOVE_EFFECT_ATK_DEF_UP
            || ai->attackerMoveEffect == MOVE_EFFECT_ATK_DEF_ACC_UP
            || ai->attackerMove == MOVE_NO_RETREAT) {
            BOOL hasPhysical = BattlerHasMoveSplit(bsys, ai->defender, SPLIT_PHYSICAL, ai);
            BOOL hasSpecial = BattlerHasMoveSplit(bsys, ai->defender, SPLIT_SPECIAL, ai);
            if (hasPhysical && !hasSpecial) {
                // Treat as Defensive Setup
                moveScore += 6;
                if (slowerAnd2HKOd) {
                    moveScore -= 5;
                }
                if (BattleRand(bsys) % 20 < 19) // 95%
                {
                    if (defIncapacitated) {
                        moveScore += 2;
                    }
                    if (ctx->battlemon[attacker].states[STAT_ATTACK] < 8
                        || ctx->battlemon[attacker].states[STAT_DEFENSE] < 8) {
                        moveScore += 2;
                    }
                }
            } else {
                // Treat as Offensive Setup
                moveScore += 6;
                if (defIncapacitated) {
                    moveScore += 3;
                }
                if (slowerAnd2HKOd) {
                    moveScore -= 5;
                }
            }
        }
        // ---- Mixed Special: Calm Mind / Quiver Dance ----
        else if (ai->attackerMoveEffect == MOVE_EFFECT_SP_ATK_SP_DEF_UP
            || ai->attackerMoveEffect == MOVE_EFFECT_SP_ATK_SP_DEF_SPEED_UP) {
            BOOL hasSpecial = BattlerHasMoveSplit(bsys, ai->defender, SPLIT_SPECIAL, ai);
            BOOL hasPhysical = BattlerHasMoveSplit(bsys, ai->defender, SPLIT_PHYSICAL, ai);
            if (hasSpecial && !hasPhysical) {
                // Treat as Defensive Setup
                moveScore += 6;
                if (slowerAnd2HKOd) {
                    moveScore -= 5;
                }
                if (BattleRand(bsys) % 20 < 19) // 95%
                {
                    if (defIncapacitated) {
                        moveScore += 2;
                    }
                    if (ctx->battlemon[attacker].states[STAT_SPECIAL_ATTACK] < 8
                        || ctx->battlemon[attacker].states[STAT_SPECIAL_DEFENSE] < 8) {
                        moveScore += 2;
                    }
                }
            } else {
                // Treat as Offensive Setup
                moveScore += 6;
                if (defIncapacitated) {
                    moveScore += 3;
                }
                if (slowerAnd2HKOd) {
                    moveScore -= 5;
                }
            }
        }
        // ---- Defensive Setup: Barrier / Acid Armor / Iron Defense / Cotton Guard / Stockpile / Cosmic Power ----
        else if (ai->attackerMoveEffect == MOVE_EFFECT_DEF_UP_2
            || ai->attackerMoveEffect == MOVE_EFFECT_DEF_UP_3
            || ai->attackerMoveEffect == MOVE_EFFECT_DEF_SP_DEF_UP
            || ai->attackerMoveEffect == MOVE_EFFECT_STOCKPILE) {
            moveScore += 6;
            if (slowerAnd2HKOd) {
                moveScore -= 5;
            }
            if (BattleRand(bsys) % 20 < 19) // 95%
            {
                if (defIncapacitated) {
                    moveScore += 2;
                }
                // Dual-stat boost: Cosmic Power and Stockpile raise both Def and SpDef
                if (ai->attackerMoveEffect == MOVE_EFFECT_DEF_SP_DEF_UP
                    || ai->attackerMoveEffect == MOVE_EFFECT_STOCKPILE) {
                    if (ctx->battlemon[attacker].states[STAT_DEFENSE] < 8
                        || ctx->battlemon[attacker].states[STAT_SPECIAL_DEFENSE] < 8) {
                        moveScore += 2;
                    }
                } else {
                    if (ctx->battlemon[attacker].states[STAT_DEFENSE] < 8) {
                        moveScore += 2;
                    }
                }
            }
        }
        // ---- Clangorous Soul: raises all stats, costs 1/3 max HP ----
        else if (ai->attackerMoveEffect == MOVE_EFFECT_RAISE_ALL_STATS_LOSE_THIRD_MAX_HP) {
            // Never if already at +2 or higher in both attacking stats
            if (ctx->battlemon[attacker].states[STAT_ATTACK] >= 8
                && ctx->battlemon[attacker].states[STAT_SPECIAL_ATTACK] >= 8) {
                return -20;
            }

            int hpAfterSoul = ai->attackerHP - ai->attackerMaxHP / 3;
            if (hpAfterSoul <= 0) {
                return -20;
            }

            moveScore += 6;
            if (defIncapacitated) {
                moveScore += 3;
            }
            if (slowerAnd2HKOd) {
                moveScore -= 5;
            }
        }
        // ---- Offensive Setup: DD / Shift Gear / SD / Howl / Hone Claws / Growth / Stuff Cheeks / Curse / PuP / Charge Beam / etc. ----
        else {
            // Taunt: status setup moves become useless
            if (BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_TAUNT, ai)
                && ctx->moveTbl[ai->attackerMove].split == SPLIT_STATUS) {
                moveScore -= 20;
            } else {
                moveScore += 6;
                if (defIncapacitated) {
                    moveScore += 3;
                }
                if (slowerAnd2HKOd) {
                    moveScore -= 5;
                }
            }
        }
    }
    /*Handle Terrain setting*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_APPLY_TERRAINS) {
        if (ai->attackerItem == ITEM_TERRAIN_EXTENDER) {
            moveScore += 9;
        } else {
            moveScore += 8;
        }
    }

    /*Attack dropping status moves*/
    else if (IsInList(ai->attackerMoveEffect, AttackDropList, NELEMS(AttackDropList))) {
        if (ai->maxDamageReceived * 2 >= ai->attackerHP) {
            moveScore -= 20;
        } else if (ctx->battlemon[ai->defender].attack >= ctx->battlemon[ai->defender].spatk) {
            moveScore += 6;
        } else {
            moveScore -= 20;
        }
    }

    /*Sp. Atk dropping status moves*/
    else if (IsInList(ai->attackerMoveEffect, SpAtkDropList, NELEMS(SpAtkDropList))) {
        if (ai->maxDamageReceived * 2 >= ai->attackerHP) {
            moveScore -= 20;
        } else if (ctx->battlemon[ai->defender].spatk >= ctx->battlemon[ai->defender].attack) {
            moveScore += 6;
        } else {
            moveScore -= 20;
        }
    }

    /*Defense dropping status moves*/
    else if (IsInList(ai->attackerMoveEffect, DefenseDropList, NELEMS(DefenseDropList))) {
        BOOL hasPhysical = FALSE;
        for (int j = 0; j < 4; j++) {
            u16 m = ctx->battlemon[attacker].move[j];
            if (m == MOVE_NONE) {
                continue;
            }
            if (ctx->moveTbl[m].split == SPLIT_PHYSICAL) {
                hasPhysical = TRUE;
                break;
            }
        }
        if (ai->maxDamageReceived * 2 >= ai->attackerHP || !hasPhysical) {
            moveScore -= 20;
        } else if (ai->attackerMaxDamageOutputMinRoll * 2 < ai->defenderHP) {
            moveScore += 6;
        } else {
            moveScore -= 20;
        }
    }

    /*Sp. Def dropping status moves*/
    else if (IsInList(ai->attackerMoveEffect, SpDefDropList, NELEMS(SpDefDropList))) {
        BOOL hasSpecial = FALSE;
        for (int j = 0; j < 4; j++) {
            u16 m = ctx->battlemon[attacker].move[j];
            if (m == MOVE_NONE) {
                continue;
            }
            if (ctx->moveTbl[m].split == SPLIT_SPECIAL) {
                hasSpecial = TRUE;
                break;
            }
        }
        if (ai->maxDamageReceived * 2 >= ai->attackerHP || !hasSpecial) {
            moveScore -= 20;
        } else if (ai->attackerMaxDamageOutputMinRoll * 2 < ai->defenderHP) {
            moveScore += 6;
        } else {
            moveScore -= 20;
        }
    }
    /*Taunt*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_TAUNT) {
        // Target has Trick Room (not yet active): +9
        if (!ai->trickRoomActive
            && BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_TRICK_ROOM, ai)) {
            moveScore += 9;
        }
        // Target has Defog + Aurora Veil currently active on AI's side + AI faster: +9
        else if (BattlerHasMoveEffect(bsys, ai->defender, MOVE_EFFECT_REMOVE_HAZARDS_SCREENS_EVA_DOWN, ai)
            && (ctx->side_condition[ai->attackerSide] & SIDE_STATUS_AURORA_VEIL)
            && ai->attackerMovesFirst) {
            moveScore += 9;
        } else {
            moveScore += 5;
        }
    }
    /*Destiny Bond*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_KO_MON_THAT_DEFEATED_USER) {
        if (ai->attackerMovesFirst && ai->maxDamageReceived >= ai->attackerHP) {
            // Faster and dies: +7 (~81%), +6 (~19%)
            if (BattleRand(bsys) % 16 < 13) {
                moveScore += 7;
            } else {
                moveScore += 6;
            }
        } else if (!ai->attackerMovesFirst && !ai->isSpeedTie) {
            // Slower: +5 (50%), +6 (50%)
            if (BattleRand(bsys) % 2 == 0) {
                moveScore += 5;
            } else {
                moveScore += 6;
            }
        }
    }

    /*Explosion, Self-destruct, Memento*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_HALVE_DEFENSE) {
        // Never if target is immune or AI is last mon with player having 2+ alive
        if (ai->attackerMoveEffectiveness[i] == TYPE_MUL_NO_EFFECT
            || ai->defenderAbility == ABILITY_DAMP) {
            return -20;
        }
        if (ai->livingMembersAttacker == 1 && ai->livingMembersDefender > 1) {
            return -20;
        }
        if (ai->attackerPercentHP < 10) {
            moveScore += 10;
        } else if (ai->attackerPercentHP < 33) {
            if (BattleRand(bsys) % 10 < 7) {
                moveScore += 8;
            }
        } else if (ai->attackerPercentHP < 66) {
            if (BattleRand(bsys) % 2 == 0) {
                moveScore += 7;
            }
        } else {
            if (BattleRand(bsys) % 20 == 0) {
                moveScore += 7;
            }
        }
        // Both last mon: -1
        if (ai->livingMembersAttacker == 1 && ai->livingMembersDefender == 1) {
            moveScore -= 1;
        }
    }

    /*Memento*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_FAINT_AND_ATK_SP_ATK_DOWN_2) {
        if (ai->livingMembersAttacker == 1) {
            return -20;
        }
        if (ai->attackerPercentHP < 10) {
            moveScore += 16;
        } else if (ai->attackerPercentHP < 33) {
            if (BattleRand(bsys) % 10 < 7) {
                moveScore += 14;
            } else {
                moveScore += 6;
            }
        } else if (ai->attackerPercentHP < 66) {
            if (BattleRand(bsys) % 2 == 0) {
                moveScore += 13;
            } else {
                moveScore += 6;
            }
        } else {
            if (BattleRand(bsys) % 20 == 0) {
                moveScore += 13;
            } else {
                moveScore += 6;
            }
        }
    }
    /*Focus Energy / Laser Focus*/
    if (ai->attackerMoveEffect == MOVE_EFFECT_CRIT_UP_2
        || ai->attackerMoveEffect == MOVE_EFFECT_LASER_FOCUS) {
        if (ai->defenderAbility == ABILITY_SHELL_ARMOR
            || ai->defenderAbility == ABILITY_BATTLE_ARMOR
            || ai->defenderAbility == ABILITY_LEAF_GUARD
            || ai->defenderAbility == ABILITY_MAGMA_ARMOR) {
            return -20;
        }
        if (ai->attackerAbility == ABILITY_SUPER_LUCK
            || ai->attackerAbility == ABILITY_SNIPER
            || ai->attackerItem == ITEM_SCOPE_LENS
            || BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_HIGH_CRITICAL, ai)) {
            moveScore += 7;
        } else {
            moveScore += 6;
        }
    }

    /*Vital Throw*/

    /*Switch forcing moves*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_FORCE_SWITCH) {
        if (ai->defenderTurnsOnField > 3) {
            moveScore += 6;
        } else if (ai->defenderHasHazards == 1) {
            moveScore += 6;
        } else if (BattlerHasStatBoostGreater(bsys, ai->defender, 9, ai)) {
            moveScore += 6;
        } else {
            moveScore -= 20;
        }
    }

    /*Conversion*/

    /*Recovery Moves*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_RESTORE_HALF_HP
        || ai->attackerMoveEffect == MOVE_EFFECT_HEAL_HALF_REMOVE_FLYING_TYPE
        || ai->attackerMoveEffect == MOVE_EFFECT_STRENGTH_SAP
        || ai->attackerMoveEffect == MOVE_EFFECT_HEAL_HALF_DIFFERENT_IN_WEATHER
        || ai->attackerMoveEffect == MOVE_EFFECT_RECOVER_HEALTH_AND_SLEEP) {
        if (ai->attackerMoveEffect == MOVE_EFFECT_RECOVER_HEALTH_AND_SLEEP) {
            // Rest: 100% heal, no full-HP or ≥85% gates
            if (ShouldRecover(bsys, attacker, ai, ai->attackerMaxHP)) {
                BOOL hasSleepCure = (ai->attackerItem == ITEM_LUM_BERRY
                    || ai->attackerItem == ITEM_CHESTO_BERRY
                    || BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_USE_RANDOM_LEARNED_MOVE_SLEEP, ai)
                    || BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_DAMAGE_WHILE_ASLEEP, ai)
                    || ai->attackerAbility == ABILITY_SHED_SKIN
                    || ai->attackerAbility == ABILITY_EARLY_BIRD
                    || (ai->attackerAbility == ABILITY_HYDRATION
                        && (ctx->field_condition & FIELD_CONDITION_RAIN_ALL)));
                moveScore += hasSleepCure ? 8 : 7;
            } else {
                moveScore += 5;
            }
        } else {
            // Full HP → never; ≥85% → -6
            if (ai->attackerHP == ai->attackerMaxHP) {
                return -20;
            }
            if (ai->attackerPercentHP >= 85) {
                return -6;
            }

            if (ai->attackerMoveEffect == MOVE_EFFECT_HEAL_HALF_DIFFERENT_IN_WEATHER) {
                // Morning Sun / Synthesis / Moonlight
                BOOL sunActive = (ctx->field_condition & FIELD_CONDITION_SUN_ALL) != 0;
                if (sunActive && ShouldRecover(bsys, attacker, ai, ai->attackerMaxHP * 2 / 3)) {
                    moveScore += 7;
                } else if (ShouldRecover(bsys, attacker, ai, ai->attackerMaxHP / 2)) {
                    moveScore += 7;
                } else {
                    moveScore += 5;
                }
            } else {
                // Standard: Recover / Roost / Strength Sap / Slack Off / etc.
                if (ShouldRecover(bsys, attacker, ai, ai->attackerMaxHP / 2)) {
                    moveScore += 7;
                } else {
                    moveScore += 5;
                }
            }
        }
    }

    /*Leech Seed*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_STATUS_LEECH_SEED) {
        moveScore += 6;
    }

    /*Light Screen*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_SET_LIGHT_SCREEN) {
        moveScore += 6;
        BOOL defenderHasSpecial = FALSE;
        for (int j = 0; j < 4; j++) {
            u16 defMove = ctx->battlemon[ai->defender].move[j];
            if (defMove == MOVE_NONE) {
                continue;
            }
            if (ctx->moveTbl[defMove].split == SPLIT_SPECIAL) {
                defenderHasSpecial = TRUE;
                break;
            }
        }
        if (defenderHasSpecial) {
            if (ai->attackerItem == ITEM_LIGHT_CLAY) {
                moveScore += 1;
            }
            if (BattleRand(bsys) % 2 == 0) {
                moveScore += 1;
            }
        }
    }

    /*Reflect*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_SET_REFLECT) {
        moveScore += 6;
        BOOL defenderHasPhysical = FALSE;
        for (int j = 0; j < 4; j++) {
            u16 defMove = ctx->battlemon[ai->defender].move[j];
            if (defMove == MOVE_NONE) {
                continue;
            }
            if (ctx->moveTbl[defMove].split == SPLIT_PHYSICAL) {
                defenderHasPhysical = TRUE;
                break;
            }
        }
        if (defenderHasPhysical) {
            if (ai->attackerItem == ITEM_LIGHT_CLAY) {
                moveScore += 1;
            }
            if (BattleRand(bsys) % 2 == 0) {
                moveScore += 1;
            }
        }
    }

    /*Aurora Veil*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_SET_AURORA_VEIL) {
        if (ctx->field_condition & (FIELD_CONDITION_HAIL_ALL | FIELD_CONDITION_SNOW_ALL)) {
            moveScore += 6;
            BOOL defenderHasDamaging = FALSE;
            for (int j = 0; j < 4; j++) {
                u16 defMove = ctx->battlemon[ai->defender].move[j];
                if (defMove == MOVE_NONE) {
                    continue;
                }
                if (ctx->moveTbl[defMove].split != SPLIT_STATUS) {
                    defenderHasDamaging = TRUE;
                    break;
                }
            }
            if (defenderHasDamaging) {
                if (ai->attackerItem == ITEM_LIGHT_CLAY) {
                    moveScore += 1;
                }
                if (BattleRand(bsys) % 2 == 0) {
                    moveScore += 1;
                }
            }
        } else {
            moveScore -= 15;
        }
    }

    /*Recoil moves*/

    /*Speed lowering moves*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_LOWER_SPEED_HIT
        && ctx->moveTbl[ai->attackerMove].secondaryEffectChance == 100) {
        // if highest damage, EvaluateAttackFlag handles it. ExpertFlag only adds speed utility when not highest.
        BOOL isHighestDamage = TRUE;
        for (int j = 0; j < ai->attackerMovesKnown; j++) {
            if (i == j) {
                continue;
            }
            u16 movenoJ = ctx->battlemon[attacker].move[j];
            if (movenoJ == MOVE_NONE) {
                continue;
            }
            if (MoveExcludedFromDamageBonus(movenoJ, ctx->moveTbl[movenoJ].effect)) {
                continue;
            }
            if (ai->attackerAvgRollMoveDamages[i] < ai->attackerAvgRollMoveDamages[j]) {
                isHighestDamage = FALSE;
                break;
            }
        }
        if (!isHighestDamage) {
            if (ai->defenderAbility != ABILITY_CONTRARY
                && ai->defenderAbility != ABILITY_CLEAR_BODY
                && ai->defenderAbility != ABILITY_WHITE_SMOKE
                && !ai->attackerMovesFirst && !ai->isSpeedTie) {
                moveScore += 6;
            } else {
                moveScore += 5;
            }
            if (BattleTypeGet(bsys) & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)) {
                if (ctx->moveTbl[ai->attackerMove].target == RANGE_ADJACENT_OPPONENTS) {
                    moveScore += 1;
                }
            }
        }
    }

    /*Recharge moves*/

    /*Atk/SpAtk reduction hit moves (Trop Kick, Skitter Smack, etc.)*/
    else if ((ai->attackerMoveEffect == MOVE_EFFECT_LOWER_ATTACK_HIT
                 || ai->attackerMoveEffect == MOVE_EFFECT_LOWER_SP_ATK_HIT)
        && ctx->moveTbl[ai->attackerMove].secondaryEffectChance == 100) {
        // if highest damage, EvaluateAttackFlag handles it. ExpertFlag adds stat-drop utility only when not highest.
        BOOL isHighestDamage = TRUE;
        for (int j = 0; j < ai->attackerMovesKnown; j++) {
            if (i == j) {
                continue;
            }
            u16 movenoJ = ctx->battlemon[attacker].move[j];
            if (movenoJ == MOVE_NONE) {
                continue;
            }
            if (MoveExcludedFromDamageBonus(movenoJ, ctx->moveTbl[movenoJ].effect)) {
                continue;
            }
            if (ai->attackerAvgRollMoveDamages[i] < ai->attackerAvgRollMoveDamages[j]) {
                isHighestDamage = FALSE;
                break;
            }
        }
        if (!isHighestDamage) {
            int correspondingSplit = (ai->attackerMoveEffect == MOVE_EFFECT_LOWER_ATTACK_HIT)
                ? SPLIT_PHYSICAL
                : SPLIT_SPECIAL;
            BOOL defenderHasMatchingSplit = FALSE;
            for (int j = 0; j < 4; j++) {
                u16 defMove = ctx->battlemon[ai->defender].move[j];
                if (defMove == MOVE_NONE) {
                    continue;
                }
                if (ctx->moveTbl[defMove].split == correspondingSplit) {
                    defenderHasMatchingSplit = TRUE;
                    break;
                }
            }
            if (ai->defenderAbility != ABILITY_CONTRARY
                && ai->defenderAbility != ABILITY_CLEAR_BODY
                && ai->defenderAbility != ABILITY_WHITE_SMOKE
                && defenderHasMatchingSplit) {
                moveScore += 6;
            } else {
                moveScore += 5;
            }
            if (BattleTypeGet(bsys) & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)) {
                if (ctx->moveTbl[ai->attackerMove].target == RANGE_ADJACENT_OPPONENTS) {
                    moveScore += 1;
                }
            }
        }
    }

    /*Acid Spray: always +6 on top of standard scoring*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_LOWER_SP_DEF_2_HIT) {
        moveScore += 6;
    }

    /*Future Sight / Doom Desire*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_HIT_IN_3_TURNS) {
        if (ai->attackerMovesFirst && ai->maxDamageReceived > ai->attackerHP) {
            moveScore += 8;
        } else {
            moveScore += 6;
        }
    }

    /*Relic Song*/
    else if (ai->attackerMove == MOVE_RELIC_SONG) {
        if (ctx->battlemon[attacker].form_no == 0) { // Aria form (base)
            moveScore += 10;
        } else { // Pirouette form
            moveScore -= 20;
        }
    }

    /*Shadow Sneak / Aqua Jet / Ice Shard
      Doubles: partner has Weakness Policy and move is SE on partner → +12 total*/
    else if (ai->attackerMove == MOVE_SHADOW_SNEAK
        || ai->attackerMove == MOVE_AQUA_JET
        || ai->attackerMove == MOVE_ICE_SHARD) {
        if (BattleTypeGet(bsys) & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)
            && ai->partnerItem == ITEM_WEAKNESS_POLICY
            && ai->partnerHP > 0) {
            u32 effectivenessOnPartner = TYPE_MUL_NORMAL;
            AITypeCalc(ctx, ai->attackerMove, ctx->moveTbl[ai->attackerMove].type, ai->attackerAbility, ai->partnerAbility, BattleItemDataGet(ctx, ai->partnerItem, 1), ctx->battlemon[ai->partner].type1, ctx->battlemon[ai->partner].type2, &effectivenessOnPartner);
            if (effectivenessOnPartner >= TYPE_MUL_SUPER_EFFECTIVE) {
                moveScore += 12;
            }
        }
    }

    /*Helping Hand / Follow Me (Rage Powder)*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_BOOST_ALLY_POWER_BY_50_PERCENT
        || ai->attackerMoveEffect == MOVE_EFFECT_MAKE_GLOBAL_TARGET) {
        if (BattleTypeGet(bsys) & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)) {
            if (ai->partnerHP == 0) {
                return -20;
            }
            moveScore += 6;
        }
        // singles handled by BasicFlag (returns -15)
    }

    /*Coaching*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_COACHING) {
        if (!(BattleTypeGet(bsys) & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG))
            || ai->partnerAbility == ABILITY_CONTRARY) {
            return -20;
        }
        moveScore += 6;
        if (ctx->battlemon[ai->partner].states[STAT_ATTACK] < 8) {
            moveScore += 7 - ctx->battlemon[ai->partner].states[STAT_ATTACK];
        }
        if (ctx->battlemon[ai->partner].states[STAT_DEFENSE] < 8) {
            moveScore += 7 - ctx->battlemon[ai->partner].states[STAT_DEFENSE];
        }
        if (BattleRand(bsys) % 5 < 4) { // 80%
            moveScore += 1;
        }
    }

    /*Final Gambit*/
    else if (ai->attackerMove == MOVE_FINAL_GAMBIT) {
        if (ai->attackerMovesFirst && ai->attackerHP > ai->defenderHP) {
            moveScore += 8;
        } else if (ai->attackerMovesFirst && ai->maxDamageReceived > ai->attackerHP) {
            moveScore += 7;
        } else {
            moveScore += 6;
        }
    }

    /*Disable*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_DISABLE) {
        moveScore += 6;

        // +1 if: last used move would OHKO the AI, no other defender move would also OHKO, and AI moves first
        if (ai->attackerMovesFirst && ai->defenderLastUsedMove != MOVE_NONE) {
            // Find the slot of the last used move
            int lastMoveSlot = -1;
            for (int j = 0; j < 4; j++) {
                if (ctx->battlemon[ai->defender].move[j] == ai->defenderLastUsedMove) {
                    lastMoveSlot = j;
                    break;
                }
            }
            if (lastMoveSlot >= 0
                && ai->defenderAvgRollMoveDamages[lastMoveSlot] >= ai->attackerHP) {
                // Confirm no other move also threatens OHKO
                BOOL onlyThreat = TRUE;
                for (int j = 0; j < 4; j++) {
                    if (j == lastMoveSlot) {
                        continue;
                    }
                    if (ctx->battlemon[ai->defender].move[j] == MOVE_NONE) {
                        continue;
                    }
                    if (ai->defenderAvgRollMoveDamages[j] >= ai->attackerHP) {
                        onlyThreat = FALSE;
                        break;
                    }
                }
                if (onlyThreat) {
                    moveScore += 1;
                }
            }
        }
    }

    /*Counter / Mirror Coat*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_COUNTER || ai->attackerMoveEffect == MOVE_EFFECT_MIRROR_COAT) {
        BOOL attackerHasSturdy = (ai->attackerAbility == ABILITY_STURDY);
        BOOL attackerHasSash = (ai->attackerItem == ITEM_FOCUS_SASH
            && ai->attackerHP == ai->attackerMaxHP);
        if (!attackerHasSturdy && !attackerHasSash
            && ai->maxDamageReceived >= ai->attackerHP) {
            return -20;
        }

        int matchingSplit = (ai->attackerMoveEffect == MOVE_EFFECT_COUNTER)
            ? SPLIT_PHYSICAL
            : SPLIT_SPECIAL;
        BOOL hasMatchingSplit = FALSE;
        BOOL onlyMatchingSplit = TRUE;
        for (int j = 0; j < 4; j++) {
            u16 defMove = ctx->battlemon[ai->defender].move[j];
            if (defMove == MOVE_NONE) {
                continue;
            }
            if (ctx->moveTbl[defMove].split == SPLIT_STATUS) {
                continue;
            }
            if (ctx->moveTbl[defMove].split == matchingSplit) {
                hasMatchingSplit = TRUE;
            } else {
                onlyMatchingSplit = FALSE;
            }
        }
        if (!hasMatchingSplit) {
            return -20;
        }

        moveScore += 6;
        if ((attackerHasSturdy || attackerHasSash)
            && ai->maxDamageReceived >= ai->attackerHP
            && onlyMatchingSplit) {
            moveScore += 2;
        } else if (ai->maxDamageReceived < ai->attackerHP && onlyMatchingSplit) {
            if (BattleRand(bsys) % 5 < 4) {
                moveScore += 2;
            }
        }
        if (ai->attackerMovesFirst && BattleRand(bsys) % 4 == 0) {
            moveScore -= 1;
        }
        BOOL defenderHasStatus = FALSE;
        for (int j = 0; j < 4; j++) {
            u16 defMove = ctx->battlemon[ai->defender].move[j];
            if (defMove == MOVE_NONE) {
                continue;
            }
            if (ctx->moveTbl[defMove].split == SPLIT_STATUS) {
                defenderHasStatus = TRUE;
                break;
            }
        }
        if (defenderHasStatus && BattleRand(bsys) % 4 == 0) {
            moveScore -= 1;
        }
    }

    /*Metal Burst — responds to both splits at 1.5x, similar to Counter/Mirror Coat*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_METAL_BURST) {
        BOOL attackerHasSturdy = (ai->attackerAbility == ABILITY_STURDY);
        BOOL attackerHasSash = (ai->attackerItem == ITEM_FOCUS_SASH
            && ai->attackerHP == ai->attackerMaxHP);
        if (!attackerHasSturdy && !attackerHasSash
            && ai->maxDamageReceived >= ai->attackerHP) {
            return -20;
        }

        BOOL defenderHasDamaging = FALSE;
        for (int j = 0; j < 4; j++) {
            u16 defMove = ctx->battlemon[ai->defender].move[j];
            if (defMove == MOVE_NONE) {
                continue;
            }
            if (ctx->moveTbl[defMove].split != SPLIT_STATUS) {
                defenderHasDamaging = TRUE;
                break;
            }
        }

        moveScore += 6;
        if ((attackerHasSturdy || attackerHasSash)
            && ai->maxDamageReceived >= ai->attackerHP
            && defenderHasDamaging) {
            moveScore += 2;
        } else if (ai->maxDamageReceived < ai->attackerHP && defenderHasDamaging) {
            if (BattleRand(bsys) % 5 < 4) {
                moveScore += 2;
            }
        }
        if (ai->attackerMovesFirst && BattleRand(bsys) % 4 == 0) {
            moveScore -= 1;
        }
        BOOL defenderHasStatus = FALSE;
        for (int j = 0; j < 4; j++) {
            u16 defMove = ctx->battlemon[ai->defender].move[j];
            if (defMove == MOVE_NONE) {
                continue;
            }
            if (ctx->moveTbl[defMove].split == SPLIT_STATUS) {
                defenderHasStatus = TRUE;
                break;
            }
        }
        if (defenderHasStatus && BattleRand(bsys) % 4 == 0) {
            moveScore -= 1;
        }
    }

    /*Pain Split*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_AVERAGE_HP) {
        if (ai->attackerPercentHP >= ai->defenderPercentHP || ai->defenderPercentHP < 40) {
            moveScore -= 20;
        } else {
            moveScore += 6;
        }
    }

    /*Nightmare*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_STATUS_NIGHTMARE) {
        if (ctx->battlemon[ai->defender].condition & STATUS_SLEEP) {
            moveScore += 7;
        } else {
            moveScore -= 20;
        }
    }

    /*Sleep Talk*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_USE_RANDOM_LEARNED_MOVE_SLEEP) {
        if (ctx->battlemon[attacker].condition & STATUS_SLEEP) {
            moveScore += 10;
        } else {
            moveScore -= 20;
        }
    }

    /*Ghost Curse — non-ghost users are routed through the setup block above*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_CURSE) {
        if (ai->attackerPercentHP < 50) {
            return -20;
        }
        moveScore += 6;
    }

    /*Protect / Detect */
    else if (ai->attackerMoveEffect == MOVE_EFFECT_PROTECT) {
        // Never protect if secondary damage (burn/poison) would KO
        {
            int secondaryDamage = 0;
            if (ctx->battlemon[attacker].condition & STATUS_BURN) {
                secondaryDamage = ctx->battlemon[attacker].maxhp / 16;
            } else if (ctx->battlemon[attacker].condition & STATUS_POISON_ALL) {
                secondaryDamage = ctx->battlemon[attacker].maxhp / 8;
            }
            if (secondaryDamage > 0 && ai->attackerHP <= secondaryDamage) {
                return -20;
            }
        }
        moveScore += 6; // base

        // -2 if AI is afflicted
        BOOL attackerAfflicted = (ctx->battlemon[attacker].condition & (STATUS_POISON_ALL | STATUS_BURN))
            || (ctx->battlemon[attacker].condition2 & STATUS2_CURSE)
            || (ctx->battlemon[attacker].condition2 & STATUS2_ATTRACT)
            || (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG)
            || (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED)
            || (ctx->battlemon[attacker].effect_of_moves & MOVE_EFFECT_FLAG_YAWN);
        if (attackerAfflicted) {
            moveScore -= 2;
        }

        // +1 if defender is afflicted
        BOOL defenderAfflicted = (ctx->battlemon[ai->defender].condition & (STATUS_POISON_ALL | STATUS_BURN))
            || (ctx->battlemon[ai->defender].condition2 & STATUS2_CURSE)
            || (ctx->battlemon[ai->defender].condition2 & STATUS2_ATTRACT)
            || (ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_PERISH_SONG)
            || (ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED)
            || (ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_YAWN);
        if (defenderAfflicted) {
            moveScore += 1;
        }

        // -1 if first turn out and not doubles
        if (ai->attackerTurnsOnField == 0
            && !(BattleTypeGet(bsys) & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG))) {
            moveScore -= 1;
        }

        // -20 (50%) if used last turn; always -20 if used last 2 turns
        if (ctx->protectSuccessTurns[ai->attacker] >= 2) {
            moveScore -= 20;
        } else if (ctx->protectSuccessTurns[ai->attacker] >= 1) {
            if (BattleRand(bsys) % 2 == 0) {
                moveScore -= 20;
            }
        }
    }

    /*Endure*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_SURVIVE_WITH_1_HP) {
        if (ctx->protectSuccessTurns[ai->attacker] >= 1) {
            moveScore -= 20;
        } else if (ai->maxDamageReceived > ai->attackerHP) {
            BOOL hasComboMove = BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_SET_HP_EQUAL_TO_USER, ai)
                || BattlerHasMoveEffect(bsys, attacker, MOVE_EFFECT_INCREASE_POWER_WITH_LESS_HP, ai);
            BOOL defenderHasPriority = FALSE;
            for (int j = 0; j < 4; j++) {
                u16 defMove = ctx->battlemon[ai->defender].move[j];
                if (defMove == MOVE_NONE) {
                    continue;
                }
                if (ctx->moveTbl[defMove].priority > 0 || (defMove == MOVE_GRASSY_GLIDE && ctx->terrainOverlay.type == GRASSY_TERRAIN && ctx->terrainOverlay.numberOfTurnsLeft > 0)) {
                    defenderHasPriority = TRUE;
                    break;
                }
            }
            // Endure failed last turn: allow retry but skip +14 conditions this turn
            if (ai->attackerLastUsedMove == MOVE_ENDURE) {
                moveScore += 6;
            }
            // Defender is low enough that Endeavor/Flail combo isn't needed
            else if (ai->defenderPercentHP <= 33) {
                moveScore += 6;
            } else if (hasComboMove && !defenderHasPriority && ai->attackerMovesFirst) {
                moveScore += 14;
            } else {
                moveScore += 6;
            }
        } else {
            moveScore -= 20;
        }
    }

    /*Substitute*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_SET_SUBSTITUTE) {
        if (ai->attackerPercentHP <= 50 || ai->defenderAbility == ABILITY_INFILTRATOR) {
            return -20;
        }
        moveScore += 6;
        if (ctx->battlemon[ai->defender].condition & STATUS_SLEEP) {
            moveScore += 2;
        }
        if ((ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_LEECH_SEED)
            && ai->attackerMovesFirst) {
            moveScore += 2;
        }
        if (BattleRand(bsys) % 2 == 0) {
            moveScore -= 1;
        }
        for (int j = 0; j < 4; j++) {
            u16 defMove = ctx->battlemon[ai->defender].move[j];
            if (defMove == MOVE_NONE) {
                continue;
            }
            if (IsMoveSoundBased(defMove)) {
                moveScore -= 8;
                break;
            }
        }
    }

    /*Baton Pass*/
    // else if(ai->attackerMoveEffect == MOVE_EFFECT_PASS_STATS_AND_STATUS){
    //     if (ai->livingMembersAttacker == 1)
    //         return -20;  // last mon, never BP
    //     BOOL hasSub = (ctx->battlemon[attacker].condition2 & STATUS2_SUBSTITUTE) != 0;
    //     BOOL hasStatRaise = BattlerHasStatBoostGreater(bsys, attacker, 6, ai);
    //     if (hasSub || hasStatRaise)
    //         moveScore += 14;
    //     // else: +0 (alive target but no boost)
    // }

    /*Rain Dance*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_WEATHER_RAIN) {
        moveScore += 8;
        if (ai->attackerItem == ITEM_DAMP_ROCK) {
            moveScore += 2;
        }
        if (!ai->attackerMovesFirst && !ai->isSpeedTie
            && ai->attackerAbility == ABILITY_SWIFT_SWIM && !ai->trickRoomActive) {
            moveScore += 2;
        }
    }

    /*Sandstorm*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_WEATHER_SANDSTORM) {
        moveScore += 8;
        if (ai->attackerItem == ITEM_SMOOTH_ROCK) {
            moveScore += 2;
        }
        if (!ai->attackerMovesFirst && !ai->isSpeedTie
            && ai->attackerAbility == ABILITY_SAND_RUSH && !ai->trickRoomActive) {
            moveScore += 2;
        }
        if (ai->attackerAbility == ABILITY_SAND_FORCE) {
            moveScore += 2;
        }
    }

    /*Sunny Day*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_WEATHER_SUN) {
        moveScore += 8;
        if (ai->attackerItem == ITEM_HEAT_ROCK) {
            moveScore += 2;
        }
        if (!ai->attackerMovesFirst && !ai->isSpeedTie
            && ai->attackerAbility == ABILITY_CHLOROPHYLL && !ai->trickRoomActive) {
            moveScore += 2;
        }
    }

    /*Hail & Snow*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_WEATHER_SNOW || ai->attackerMoveEffect == MOVE_EFFECT_WEATHER_HAIL) {
        moveScore += 8;
        if (ai->attackerItem == ITEM_ICY_ROCK) {
            moveScore += 2;
        }
        if (!ai->attackerMovesFirst && !ai->isSpeedTie
            && ai->attackerAbility == ABILITY_SLUSH_RUSH && !ai->trickRoomActive) {
            moveScore += 2;
        }
    }

    /*Gravity*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_GRAVITY) {
        if (ctx->field_condition & FIELD_CONDITION_GRAVITY) {
            moveScore -= 20;
        } else if (HasType(ctx, attacker, TYPE_FLYING) || ai->attackerAbility == ABILITY_LEVITATE) {
            moveScore -= 20;
        } else {
            BOOL defenderGroundImmune = HasType(ctx, ai->defender, TYPE_FLYING)
                || ai->defenderAbility == ABILITY_LEVITATE
                || (ctx->battlemon[ai->defender].effect_of_moves & MOVE_EFFECT_FLAG_MAGNET_RISE);
            BOOL aiHasGroundMove = FALSE;
            for (int j = 0; j < 4; j++) {
                u16 m = ctx->battlemon[attacker].move[j];
                if (m == MOVE_NONE) {
                    continue;
                }
                if (ctx->moveTbl[m].type == TYPE_GROUND) {
                    aiHasGroundMove = TRUE;
                    break;
                }
            }
            if (defenderGroundImmune || (aiHasGroundMove && defenderGroundImmune)) {
                moveScore += 9;
            } else {
                moveScore -= 20;
            }
        }
    }

    /*Tailwind*/
    /*Modified from vanilla for IRIDIUM.
    Should also get a section in TagStrategy Flag*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_DOUBLE_SPEED_3_TURNS) {
        // Tailwind targets own side — penalize heavily if evaluated against an enemy
        // in doubles so the AI never tries to use it targeting an opponent
        if (ai->defenderSide != ai->attackerSide) {
            moveScore -= 20;
        } else {
            if (!ai->attackerMovesFirst && !ai->isSpeedTie) {
                moveScore += 9;
            } else {
                moveScore += 5;
            }
        }
    }

    /*Trick & Switcheroo*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_SWITCH_HELD_ITEMS) {
        if (ai->attackerItem == ITEM_TOXIC_ORB
            || ai->attackerItem == ITEM_FLAME_ORB
            || ai->attackerItem == ITEM_BLACK_SLUDGE) {
            if (BattleRand(bsys) % 2 == 0) {
                moveScore += 6;
            } else {
                moveScore += 7;
            }
        } else if (ai->attackerItem == ITEM_IRON_BALL
            || ai->attackerItem == ITEM_LAGGING_TAIL
            || ai->attackerItem == ITEM_STICKY_BARB) {
            moveScore += 7;
        } else {
            moveScore += 5;
        }
    }

    /*Role Play*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_COPY_ABILITY) {
        // Partner has Huge/Pure Power, Protean, or Tough Claws, and AI doesn't: +9; else -20
        BOOL partnerHasDesiredAbility = (ai->partnerAbility == ABILITY_HUGE_POWER
            || ai->partnerAbility == ABILITY_PURE_POWER
            || ai->partnerAbility == ABILITY_PROTEAN
            || ai->partnerAbility == ABILITY_TOUGH_CLAWS);
        BOOL attackerHasDesiredAbility = (ai->attackerAbility == ABILITY_HUGE_POWER
            || ai->attackerAbility == ABILITY_PURE_POWER
            || ai->attackerAbility == ABILITY_PROTEAN
            || ai->attackerAbility == ABILITY_TOUGH_CLAWS);
        if (partnerHasDesiredAbility && !attackerHasDesiredAbility) {
            moveScore += 9;
        } else {
            return -20;
        }
    }

    /*Skill Swap*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_SWITCH_ABILITIES) {
        if (IsDesirableAbility(ai->defender)) {
            moveScore += 6;
        } else {
            moveScore -= 20;
        }
    }

    /*Contrary-benefiting moves (Superpower, Overheat, Close Combat, V-create, Hammer Arm, etc.)
      Self-lowering effects become self-boosts for Contrary users. Score like highest-damage move.*/
    else if (ai->attackerAbility == ABILITY_CONTRARY
        && IsInList(ai->attackerMoveEffect, ContraryBenefitList, NELEMS(ContraryBenefitList))) {
        if (BattleRand(bsys) % 5 == 0) {
            moveScore += 8;
        } else {
            moveScore += 6;
        }
    }

    /*Recycle*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_RECYCLE) {
        if (ctx->recycle_item[attacker] != ITEM_NONE && ai->attackerItem == ITEM_NONE) {
            moveScore += 6;
        } else {
            moveScore -= 20;
        }
    }

    /*Avalanche & Revenge*/

    /*Brick Break*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_REMOVE_SCREENS) {
        BOOL screensUp = (ctx->side_condition[ai->defenderSide] & SIDE_STATUS_REFLECT || ctx->side_condition[ai->defenderSide] & SIDE_STATUS_LIGHT_SCREEN || ctx->side_condition[ai->defenderSide] & SIDE_STATUS_AURORA_VEIL);
        if (screensUp) {
            BOOL isHighestDamage = TRUE;
            for (int j = 0; j < ai->attackerMovesKnown; j++) {
                if (i == j) {
                    continue;
                }
                u16 movenoJ = ctx->battlemon[attacker].move[j];
                if (movenoJ == MOVE_NONE) {
                    continue;
                }
                if (MoveExcludedFromDamageBonus(movenoJ, ctx->moveTbl[movenoJ].effect)) {
                    continue;
                }
                if (ai->attackerAvgRollMoveDamages[i] < ai->attackerAvgRollMoveDamages[j]) {
                    isHighestDamage = FALSE;
                    break;
                }
            }
            if (isHighestDamage) {
                moveScore += 1;
            } else {
                moveScore += 6;
            }
        }
    }

    /*Knock Off*/
    // else if(ai->attackerMoveEffect == MOVE_EFFECT_REMOVE_HELD_ITEM){

    // }

    /*Imprison*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_MAKE_SHARED_MOVES_UNUSEABLE) {
        BOOL sharesMove = FALSE;
        for (int j = 0; j < 4 && !sharesMove; j++) {
            u16 myMove = ctx->battlemon[attacker].move[j];
            if (myMove == MOVE_NONE) {
                continue;
            }
            for (int k = 0; k < 4; k++) {
                if (ctx->battlemon[ai->defender].move[k] == myMove) {
                    sharesMove = TRUE;
                    break;
                }
            }
        }
        if (sharesMove) {
            moveScore += 9;
        } else {
            return -20;
        }
    }

    /*Fling
      If fling raises target speed (Salac Berry) + partner has WP + SE: +12
      If fling raises target speed but no WP or not SE: +9*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_FLING) {
        BOOL raisesSpeed = (ai->attackerItem == ITEM_SALAC_BERRY);
        if (raisesSpeed) {
            if (BattleTypeGet(bsys) & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)
                && ai->partnerItem == ITEM_WEAKNESS_POLICY
                && ai->partnerHP > 0
                && ai->attackerMoveEffectiveness[i] >= TYPE_MUL_SUPER_EFFECTIVE) {
                moveScore += 12;
            } else {
                moveScore += 9;
            }
        }
        // else: leave at default +6
    }

    /*Sucker Punch*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING) {
        if (ctx->moveTbl[ai->attackerLastUsedMove].effect == MOVE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING) {
            if (BattleRand(bsys) % 2 == 0) {
                moveScore -= 20;
            }
        }
    }

    /*Pursuit*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_HIT_BEFORE_SWITCH) {
        if (ai->attackerAvgRollMoveDamages[i] >= ai->defenderHP) {
            moveScore += 12;
        } else if (ai->defenderPercentHP < 20) {
            moveScore += 10;
        } else if (ai->defenderPercentHP < 40) {
            if (BattleRand(bsys) % 2 == 0) {
                moveScore += 8;
            }
        }
        if (ai->attackerMovesFirst) {
            moveScore += 3;
        }
    }

    /*Fell Stinger*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_FELL_STINGER) {
        if (ctx->battlemon[attacker].states[STAT_ATTACK] < 12
            && ai->attackerAvgRollMoveDamages[i] >= ai->defenderHP) {
            BOOL isFast = (ai->attackerMovesFirst || ai->isSpeedTie
                || ctx->moveTbl[ai->attackerMove].priority > 0
                || (ai->attackerMove == MOVE_GRASSY_GLIDE && ctx->terrainOverlay.type == GRASSY_TERRAIN && ctx->terrainOverlay.numberOfTurnsLeft > 0));
            if (isFast) {
                moveScore += 9;
            } else {
                moveScore += 6;
            }
        }
        // else: treated as normal damaging move (EvaluateAttackFlag handles scoring)
    }

    /*Rollout / Ice Ball*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_DOUBLE_POWER_EACH_TURN_LOCK_INTO) {
        moveScore += 7;
    }

    /*Stealth Rock*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_STEALTH_ROCK) {
        if (ai->attackerTurnsOnField == 0) {
            if (BattleRand(bsys) % 4 == 0) {
                moveScore += 8;
            } else {
                moveScore += 9;
            }
        } else {
            if (BattleRand(bsys) % 2 == 0) {
                moveScore += 6;
            } else {
                moveScore += 7;
            }
        }
    }

    /*Spikes / Toxic Spikes*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_SET_SPIKES
        || ai->attackerMoveEffect == MOVE_EFFECT_TOXIC_SPIKES) {
        if (ai->attackerTurnsOnField == 0) {
            if (BattleRand(bsys) % 4 == 0) {
                moveScore += 8;
            } else {
                moveScore += 9;
            }
        } else {
            if (BattleRand(bsys) % 2 == 0) {
                moveScore += 6;
            } else {
                moveScore += 7;
            }
        }
        // Lower score if layer already exists
        if (ai->attackerMoveEffect == MOVE_EFFECT_SET_SPIKES
            && ctx->scw[ai->defenderSide].spikesLayers >= 1) {
            moveScore -= 1;
        } else if (ai->attackerMoveEffect == MOVE_EFFECT_TOXIC_SPIKES
            && ctx->scw[ai->defenderSide].toxicSpikesLayers >= 1) {
            moveScore -= 1;
        }
    }

    /*Sticky Web*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_STICKY_WEB) {
        if (ai->attackerTurnsOnField == 0) {
            if (BattleRand(bsys) % 4 == 0) {
                moveScore += 9;
            } else {
                moveScore += 12;
            }
        } else {
            if (BattleRand(bsys) % 4 == 0) {
                moveScore += 6;
            } else {
                moveScore += 9;
            }
        }
    }

    /*Magnet Rise*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_GIVE_GROUND_IMMUNITY) {
        if (BattlerHasTypeDamagingMove(bsys, ai->defender, TYPE_GROUND, ai)) {
            moveScore += 6;
        } else {
            moveScore -= 15;
        }
    }

    /*Flat +6 status moves — no additional bonuses*/
    else if (IsInList(ai->attackerMoveEffect, FlatSixStatusList, NELEMS(FlatSixStatusList))) {
        moveScore += 6;
    }

    /*Trick Room*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_TRICK_ROOM) {
        if (!ai->attackerMovesFirst && !ai->isSpeedTie) {
            moveScore += 10;
        } else {
            moveScore += 5;
        }
        if (ai->trickRoomActive) {
            moveScore -= 20;
        }
    }
    /*Psycho Shift*/
    else if (ai->attackerMoveEffect == MOVE_EFFECT_TRANSFER_STATUS) {
        u32 attackerCondition = ctx->battlemon[attacker].condition;
        u32 attackerAbility = ai->attackerAbility;

        // Attacker is burned and defender uses physical moves: transferring burn is valuable
        if ((attackerCondition & STATUS_BURN) && BattlerHasMoveSplit(bsys, ai->defender, SPLIT_PHYSICAL, ai)) {
            moveScore += 7;
        }
        // Discourage if attacker's ability benefits from their current status condition
        else if (((attackerAbility == ABILITY_GUTS || attackerAbility == ABILITY_QUICK_FEET || attackerAbility == ABILITY_MARVEL_SCALE)
                     && (attackerCondition & STATUS_ALL))
            || (attackerAbility == ABILITY_POISON_HEAL && (attackerCondition & STATUS_POISON_ALL))
            || (attackerAbility == ABILITY_FLARE_BOOST && (attackerCondition & STATUS_BURN))
            || (attackerAbility == ABILITY_TOXIC_BOOST && (attackerCondition & STATUS_POISON_ALL))) {
            moveScore -= 10;
        }
        // Default: good move to use
        else {
            moveScore += 6;
        }
    }

    /*U-turn, Volt Switch, Flip Turn*/
    if (ai->attackerMoveEffect == MOVE_EFFECT_SWITCH_HIT) {
        // Find best damage and whether any move can KO
        BOOL canKO = FALSE;
        int bestDamage = 0;
        for (int j = 0; j < ai->attackerMovesKnown; j++) {
            if (ai->attackerAvgRollMoveDamages[j] > bestDamage) {
                bestDamage = ai->attackerAvgRollMoveDamages[j];
            }
            if (ai->attackerAvgRollMoveDamages[j] >= ai->defenderHP) {
                canKO = TRUE;
            }
        }

        // Don't pivot when a KO is available (EvaluateAttackFlag already handles this
        // as the kill bonus, but reinforce here to avoid pivot preference)
        if (canKO) {
            moveScore -= 10;
        }
        // Opponent is low on HP - press for the KO instead of pivoting
        else if (ai->defenderHP * 100 / ctx->battlemon[ai->defender].maxhp < 30) {
            moveScore -= 8;
        }

        // No party members to switch into - pivot value is lost
        if (ai->livingMembersAttacker == 1) {
            moveScore -= 8;
        }

        // AI has attack boosts it would throw away by pivoting
        if (ctx->battlemon[attacker].states[STAT_ATTACK] > 6 || ctx->battlemon[attacker].states[STAT_SPECIAL_ATTACK] > 6) {
            moveScore -= 10;
        }

        // Matchup is bad - AI's best damage is low relative to opponent's HP
        if (bestDamage * 100 / ctx->battlemon[ai->defender].maxhp < 30) {
            moveScore += 8;
        }
        // AI moves first but is threatened with a KO - ideal pivot scenario
        // Also check opponent has no priority move to intercept the switch
        else if (ai->attackerMovesFirst && ai->maxDamageReceived >= ai->attackerHP
            && ai->livingMembersAttacker > 1) {
            BOOL defenderHasPriority = FALSE;
            for (int j = 0; j < 4; j++) {
                u16 defMove = ctx->battlemon[ai->defender].move[j];
                if (defMove == MOVE_NONE) {
                    continue;
                }
                if (ctx->moveTbl[defMove].priority > 0
                    || (defMove == MOVE_GRASSY_GLIDE
                        && ctx->terrainOverlay.type == GRASSY_TERRAIN
                        && ctx->terrainOverlay.numberOfTurnsLeft > 0)) {
                    defenderHasPriority = TRUE;
                    break;
                }
            }
            if (!defenderHasPriority) {
                moveScore += 8;
            }
        }
    }

    /*Metronome*/
    if (ai->attackerMoveEffect == MOVE_EFFECT_CALL_RANDOM_MOVE) {
        moveScore += (BattleRand(bsys) % 5 == 0) ? 8 : 6;
    }

    // Regenerator: switching out restores 1/3 HP, making pivot moves more valuable
    if (ai->attackerAbility == ABILITY_REGENERATOR && (ai->attackerMoveEffect == MOVE_EFFECT_SWITCH_HIT || ai->attackerMoveEffect == MOVE_EFFECT_PARTING_SHOT || ai->attackerMoveEffect == MOVE_EFFECT_PASS_STATS_AND_STATUS)) {
        moveScore += 1;
    }

    debug_printf("end of expert flag\n");
    return moveScore;
}

int BatonPassFlag(struct BattleSystem *bsys, int attacker, int i, struct AIContext *ai)
{
    int moveScore = 0;
    struct BattleStruct *ctx = bsys->sp;

    if (ai->attackerMoveEffect != MOVE_EFFECT_PASS_STATS_AND_STATUS) {
        return 0;
    }

    // Last mon: never Baton Pass
    if (ai->livingMembersAttacker == 1) {
        return -20;
    }

    // Check if AI has a Substitute or any raised stat to pass
    BOOL hasBoost = FALSE;
    if (ctx->battlemon[attacker].condition2 & STATUS2_SUBSTITUTE) {
        hasBoost = TRUE;
    } else {
        for (int s = STAT_ATTACK; s <= STAT_EVASION; s++) {
            if (ctx->battlemon[attacker].states[s] > 6) {
                hasBoost = TRUE;
                break;
            }
        }
    }

    if (hasBoost) {
        moveScore += 14;
    }
    // else: alive target but nothing to pass — no bonus, no penalty

    return moveScore;
}
int TagStrategyFlag(struct BattleSystem *bsys, int attacker, int i, struct AIContext *ai)
{
    debug_printf("entering tag strategy\n");
    int moveScore = 0;
    struct BattleStruct *ctx = bsys->sp;
    ai->partner = BATTLER_ALLY(ai->attacker);
    ai->partnerPercentHP = ctx->battlemon[ai->partner].hp * 100 / ctx->battlemon[ai->partner].maxhp;
    ai->partnerHP = ctx->battlemon[ai->partner].hp;
    ai->partnerAbility = ctx->battlemon[ai->partner].ability;
    ai->partnerItem = ctx->battlemon[ai->partner].item;
    u32 effectivenessOnPartner;
    debug_printf("tag strategy\n");
    /*This section of the flag only contributes to move score if attacker has a living partner
    and they are the target of certain moves.*/
    if (ai->defender == ai->partner) {
        if (ctx->battlemon[ai->partner].hp == 0) { // if partner is dead, dont use anything in this flag
            moveScore -= 30;
        } else {
            /*Skill Swap*/
            if (ai->attackerMoveEffect == MOVE_EFFECT_SWITCH_ABILITIES) { // Skill Swap
                if (ai->partnerAbility == ABILITY_TRUANT || ai->partnerAbility == ABILITY_SLOW_START) {
                    moveScore += 10;
                } else if (ai->attackerAbility == ABILITY_LEVITATE) { // give levitate to electric type partner
                    if (HasType(ctx, ai->partner, TYPE_ELECTRIC)) {
                        moveScore += 1;
                        if (ctx->battlemon[ai->partner].type1 == TYPE_ELECTRIC && ctx->battlemon[ai->partner].type2 == TYPE_ELECTRIC) {
                            moveScore += 1; // Extra +1 if mono-electric
                        }
                    }
                } else if (ai->attackerAbility == ABILITY_COMPOUND_EYES || // give these abilities to partner with low acc moves
                    ai->attackerAbility == ABILITY_NO_GUARD) {
                    if (BattlerKnowsMoveInList(bsys, ai->partner, TagStrategyFlagList_SkillSwap, NELEMS(TagStrategyFlagList_SkillSwap), ai)) {
                        moveScore += 3;
                    }
                } else {
                    moveScore -= 30;
                }
            }
            /*Burn*/
            else if (ai->attackerMoveEffect == MOVE_EFFECT_STATUS_BURN) {
                if (ai->partnerAbility == ABILITY_FLASH_FIRE) {
                    if (ctx->battlemon[ai->defender].moveeffect.flashFire == 0) {
                        moveScore += 2;
                    } else {
                        moveScore -= 30;
                    }
                } else if (ctx->battlemon[ai->partner].ability == ABILITY_GUTS && ctx->battlemon[ai->partner].condition & STATUS_NONE && !HasType(ctx, ai->partner, TYPE_FIRE) && ai->partnerItem != ITEM_FLAME_ORB && ai->partnerItem != ITEM_TOXIC_ORB && ai->partnerPercentHP >= 81) {
                    moveScore += 3;
                } else {
                    moveScore -= 30;
                }
            }
            /*Frostbite*/
            else if (ai->attackerMoveEffect == MOVE_EFFECT_STATUS_FROSTBITE) {
                if (ctx->battlemon[ai->partner].ability == ABILITY_GUTS && ctx->battlemon[ai->partner].condition & STATUS_NONE && !HasType(ctx, ai->partner, TYPE_ICE) && ai->partnerItem != ITEM_FLAME_ORB && ai->partnerItem != ITEM_TOXIC_ORB && ai->partnerPercentHP >= 81) {
                    moveScore += 3;
                } else {
                    moveScore -= 30;
                }
            }
            /*Poison*/
            else if (ai->attackerMoveEffect == MOVE_EFFECT_STATUS_BADLY_POISON || ai->attackerMoveEffect == MOVE_EFFECT_STATUS_POISON) {
                if (ctx->battlemon[ai->partner].ability == ABILITY_POISON_HEAL && ctx->battlemon[ai->partner].condition & STATUS_NONE && ctx->battlemon[ai->partner].item != ITEM_TOXIC_ORB && !HasType(ctx, ai->partner, TYPE_POISON) && !HasType(ctx, ai->partner, TYPE_STEEL) && ai->partnerPercentHP >= 81) {
                    moveScore += 3;
                } else {
                    moveScore -= 30;
                }
            }
            /*Swagger*/
            else if (ai->attackerMoveEffect == MOVE_EFFECT_ATK_UP_2_STATUS_CONFUSION) {
                if (ai->partnerItem != ITEM_PERSIM_BERRY && ai->partnerItem != ITEM_LUM_BERRY) {
                    moveScore -= 30;
                } else {
                    if (ctx->battlemon[ai->partner].states[STAT_ATTACK] < 8) { // Less than +2
                        moveScore += 2;
                    } else {
                        moveScore -= 30;
                    }
                }

            }
            /*Gastro Acid*/
            else if (ai->attackerMoveEffect == MOVE_EFFECT_SUPRESS_ABILITY) {
                if (ctx->battlemon[ai->partner].effect_of_moves & MOVE_EFFECT_FLAG_ABILITY_SUPPRESSED) {
                    moveScore -= 30;
                } else if (ai->partnerAbility == ABILITY_TRUANT || ai->partnerAbility == ABILITY_SLOW_START) {
                    moveScore += 10;
                } else {
                    moveScore -= 30;
                }

            }
            /*Shadow Sneak / Aqua Jet / Ice Shard - activate partner Weakness Policy*/
            else if (ai->attackerMove == MOVE_SHADOW_SNEAK || ai->attackerMove == MOVE_AQUA_JET || ai->attackerMove == MOVE_ICE_SHARD) {
                if (ai->partnerItem == ITEM_WEAKNESS_POLICY) {
                    AITypeCalc(ctx, ai->attackerMove, ai->attackerMoveType, ai->attackerAbility, ai->partnerAbility, BattleItemDataGet(ctx, ai->partnerItem, 1), ctx->battlemon[ai->partner].type1, ctx->battlemon[ai->partner].type2, &effectivenessOnPartner);
                    if (effectivenessOnPartner == MOVE_STATUS_SUPER_EFFECTIVE) {
                        moveScore += 12;
                    } else {
                        moveScore -= 30;
                    }
                } else {
                    moveScore -= 30;
                }
            }
            /*DO NOT attack our partner otherwise!*/
            else {
                moveScore -= 30;
            }
        }
    } else {

        /*Skill Swap*/
        if (ai->attackerMoveEffect == MOVE_EFFECT_SWITCH_ABILITIES) {
            if (ai->attackerAbility == ABILITY_TRUANT || ai->attackerAbility == ABILITY_SLOW_START || ai->attackerAbility == ABILITY_KLUTZ || ai->attackerAbility == ABILITY_STALL) {
                moveScore += 5;
            } else if (ai->defenderAbility == ABILITY_SHADOW_TAG || ai->defenderAbility == ABILITY_PURE_POWER || ai->defenderAbility == ABILITY_HUGE_POWER || ai->defenderAbility == ABILITY_MOLD_BREAKER || ai->defenderAbility == ABILITY_SOLID_ROCK || ai->defenderAbility == ABILITY_FILTER || ai->defenderAbility == ABILITY_FLOWER_GIFT) {
                moveScore += 2;
            }
        }
        /*Earthquake and Magnitude*/
        else if ((ai->attackerMoveEffect == MOVE_EFFECT_RANDOM_POWER_10_CASES || ai->attackerMoveEffect == MOVE_EFFECT_DOUBLE_DAMAGE_DIG) && ai->partnerHP != 0) {
            AITypeCalc(ctx, MOVE_EARTHQUAKE, TYPE_GROUND, ai->attackerAbility, ai->partnerAbility, BattleItemDataGet(ctx, ai->partnerItem, 1), ctx->battlemon[ai->partner].type1, ctx->battlemon[ai->partner].type2, &effectivenessOnPartner);
            if (ai->partnerAbility == ABILITY_LEVITATE || HasType(ctx, ai->partner, TYPE_FLYING) || ctx->battlemon[ai->partner].effect_of_moves & MOVE_EFFECT_FLAG_MAGNET_RISE) {
                moveScore += 2;
            } else if (effectivenessOnPartner == MOVE_STATUS_SUPER_EFFECTIVE
                && (HasType(ctx, ai->partner, TYPE_FIRE)
                    || HasType(ctx, ai->partner, TYPE_POISON)
                    || HasType(ctx, ai->partner, TYPE_ELECTRIC)
                    || HasType(ctx, ai->partner, TYPE_ROCK))) {
                moveScore -= 10;
            } else {
                moveScore -= 3;
            }
        }
        /*Future Sight & Doom Desire*/
        else if (ai->attackerMoveEffect == MOVE_EFFECT_HIT_IN_3_TURNS) {
            if (ai->partnerHP == 0) {
                moveScore += 0;
            } else {
                if (BattlerHasMoveEffect(bsys, ai->partner, MOVE_EFFECT_HIT_IN_3_TURNS, ai)) {
                    if (CalcSpeed(bsys, ctx, ai->attacker, ai->partner, 0) == 1) {
                        moveScore -= 3;
                    } else if (CalcSpeed(bsys, ctx, ai->attacker, ai->partner, 0) == 2) {
                        if (BattleRand(bsys) % 2 < 1) {
                            moveScore -= 3;
                        }
                    }
                }
            }
        }

        /*Gravity*/
        else if (ai->attackerMoveEffect == MOVE_EFFECT_GRAVITY) {
            if (ctx->field_condition & FIELD_CONDITION_GRAVITY) {
                moveScore -= 30;
            } else {
                for (int j = 0; j < 4; j++) {
                    if (ctx->battlemon[j].hp != 0) {
                        if (BATTLER_IS_ENEMY(j) == ai->attackerSide) {
                            if (ctx->battlemon[j].ability == ABILITY_LEVITATE || ctx->battlemon[j].effect_of_moves & MOVE_EFFECT_FLAG_MAGNET_RISE || HasType(ctx, j, TYPE_FLYING)) {
                                moveScore -= 5;
                            }
                        } else {
                            if (ctx->battlemon[j].ability == ABILITY_LEVITATE || ctx->battlemon[j].effect_of_moves & MOVE_EFFECT_FLAG_MAGNET_RISE) {
                                if (BattleRand(bsys) % 4 < 3) {
                                    moveScore += 3;
                                }
                            }
                        }
                    }
                }
            }
        }

        /*Spread Electric moves (Discharge, Parabolic Charge, etc.)*/
        else if (ai->attackerMoveType == TYPE_ELECTRIC
            && ctx->moveTbl[ai->attackerMove].target == RANGE_ALL_ADJACENT
            && ai->partnerHP != 0) {
            AITypeCalc(ctx, MOVE_DISCHARGE, TYPE_ELECTRIC, ai->attackerAbility, ai->partnerAbility, BattleItemDataGet(ctx, ai->partnerItem, 1), ctx->battlemon[ai->partner].type1, ctx->battlemon[ai->partner].type2, &effectivenessOnPartner);

            if (ai->partnerAbility == ABILITY_MOTOR_DRIVE
                || ai->partnerAbility == ABILITY_VOLT_ABSORB
                || ai->partnerAbility == ABILITY_LIGHTNING_ROD
                || effectivenessOnPartner == MOVE_STATUS_NO_EFFECT) {
                moveScore += 2;
            } else if (effectivenessOnPartner == MOVE_STATUS_SUPER_EFFECTIVE) {
                moveScore -= 15;
            } else {
                moveScore -= 3;
            }
        }

        /*Single Target Electric Moves*/
        else if (ai->attackerMoveType == TYPE_ELECTRIC && ctx->moveTbl[ai->attackerMove].target == RANGE_SINGLE_TARGET) {
            if (ctx->battlemon[ai->defender].ability == ABILITY_LIGHTNING_ROD || (ctx->battlemon[BATTLER_ALLY(ai->defender)].ability == ABILITY_LIGHTNING_ROD && ctx->battlemon[BATTLER_ALLY(ai->defender)].hp != 0)) {
                moveScore -= 9;
            } else if (ctx->battlemon[ai->partner].ability == ABILITY_LIGHTNING_ROD) {
                moveScore -= 15;
            }
        }

        /*Spread Fire moves (Lava Plume, Heat Wave, etc.)*/
        else if (ai->attackerMoveType == TYPE_FIRE
            && ctx->moveTbl[ai->attackerMove].target == RANGE_ALL_ADJACENT
            && ai->partnerHP != 0) {
            AITypeCalc(ctx, MOVE_LAVA_PLUME, TYPE_FIRE, ai->attackerAbility, ai->partnerAbility, BattleItemDataGet(ctx, ai->partnerItem, 1), ctx->battlemon[ai->partner].type1, ctx->battlemon[ai->partner].type2, &effectivenessOnPartner);

            if (ai->partnerAbility == ABILITY_FLASH_FIRE) {
                moveScore += 2;
            } else if (effectivenessOnPartner == MOVE_STATUS_SUPER_EFFECTIVE
                || ai->partnerAbility == ABILITY_DRY_SKIN
                || ai->partnerAbility == ABILITY_FLUFFY) {
                moveScore -= 15;
            } else {
                moveScore -= 3;
            }
        }

        /*Spread Water moves (Surf, Muddy Water, etc.)*/
        else if (ai->attackerMoveType == TYPE_WATER
            && ctx->moveTbl[ai->attackerMove].target == RANGE_ALL_ADJACENT
            && ai->partnerHP != 0) {
            AITypeCalc(ctx, MOVE_SURF, TYPE_WATER, ai->attackerAbility, ai->partnerAbility, BattleItemDataGet(ctx, ai->partnerItem, 1), ctx->battlemon[ai->partner].type1, ctx->battlemon[ai->partner].type2, &effectivenessOnPartner);

            if (ai->partnerAbility == ABILITY_WATER_ABSORB
                || ai->partnerAbility == ABILITY_DRY_SKIN
                || ai->partnerAbility == ABILITY_STORM_DRAIN) {
                moveScore += 2;
            } else if (effectivenessOnPartner == MOVE_STATUS_SUPER_EFFECTIVE) {
                moveScore -= 15;
            } else {
                moveScore -= 3;
            }
        }

        /*Single Target Water moves*/
        else if (ai->attackerMoveType == TYPE_WATER && ctx->moveTbl[ai->attackerMove].target == RANGE_SINGLE_TARGET) {
            if (ctx->battlemon[ai->defender].ability == ABILITY_STORM_DRAIN || (ctx->battlemon[BATTLER_ALLY(ai->defender)].ability == ABILITY_STORM_DRAIN && ctx->battlemon[BATTLER_ALLY(ai->defender)].hp != 0)) {
                moveScore -= 15;
            } else if (ctx->battlemon[ai->partner].ability == ABILITY_STORM_DRAIN) {
                moveScore -= 15;
            }
        }

        /*Role Play - copy a valuable partner ability*/
        else if (ai->attackerMoveEffect == MOVE_EFFECT_COPY_ABILITY) {
            BOOL partnerHasDesiredAbility = (ai->partnerAbility == ABILITY_HUGE_POWER
                || ai->partnerAbility == ABILITY_PURE_POWER
                || ai->partnerAbility == ABILITY_PROTEAN
                || ai->partnerAbility == ABILITY_TOUGH_CLAWS);
            BOOL attackerHasDesiredAbility = (ai->attackerAbility == ABILITY_HUGE_POWER
                || ai->attackerAbility == ABILITY_PURE_POWER
                || ai->attackerAbility == ABILITY_PROTEAN
                || ai->attackerAbility == ABILITY_TOUGH_CLAWS);
            if (partnerHasDesiredAbility && !attackerHasDesiredAbility) {
                moveScore += 9;
            } else {
                return -20;
            }
        }

        /*Fling (Salac Berry) - speed-raise item fling synergy*/
        else if (ai->attackerMoveEffect == MOVE_EFFECT_FLING && ai->attackerItem == ITEM_SALAC_BERRY) {
            if (ai->partnerItem == ITEM_WEAKNESS_POLICY) {
                moveScore += 12;
            } else {
                moveScore += 9;
            }
        }

        /*Icy Wind / Electroweb - speed-drop moves gain +1 in doubles*/
        else if (ai->attackerMoveEffect == MOVE_EFFECT_LOWER_SPEED_HIT) {
            moveScore += 1;
        }

        /*Spread Atk/SpAtk drop moves (e.g. spread Trop Kick / Skitter Smack effects) - +1 in doubles*/
        else if ((ai->attackerMoveEffect == MOVE_EFFECT_LOWER_ATTACK_HIT || ai->attackerMoveEffect == MOVE_EFFECT_LOWER_SP_ATK_HIT)
            && ctx->moveTbl[ai->attackerMove].target == RANGE_ADJACENT_OPPONENTS) {
            moveScore += 1;
        }

        /*Dark Void - spread sleep move gains +1 in doubles*/
        else if (ai->attackerMove == MOVE_DARK_VOID) {
            moveScore += 1;
        }
    }
    debug_printf("tag strategy end\n");
    // debug_printf("TagStrategyFlag moveScore: %d\n", moveScore);
    return moveScore;
}
/*-------------------------------Helper Functions--------------------------------*/

/*returns the index of the pokemon on the attacker's (ai's)
team with the largest damage against the target*/
int AttackerMonWithHighestDamage(struct BattleSystem *bsys, int attacker, struct AIContext *ai)
{
    struct BattleStruct *ctx = bsys->sp;
    int maxDamage = 0;
    int maxDamageIndex = 0;
    // loop over party pokemon that aren't fainted
    for (int i = 0; i < ai->partySizeAttacker; i++) {
        struct PartyPokemon *currentMonAttacking = Battle_GetClientPartyMon(bsys, attacker, i);
        // loop over each pokemon's moves
        if (GetMonData(currentMonAttacking, MON_DATA_HP, 0) != 0) {
            for (int attack_index = 0; attack_index < 4; attack_index++) {
                int current_move = GetMonData(currentMonAttacking, MON_DATA_MOVE1 + attack_index, NULL);
                int damage = CalcBaseDamage(bsys, ctx, current_move, ctx->side_condition[ai->defenderSide], ctx->field_condition, 0, 0, attacker, ai->defender, 0);
                if (damage > maxDamage) {
                    maxDamage = damage;
                    maxDamageIndex = i;
                }
            }
        }
    }
    return maxDamageIndex;
}

/*Returns the sum of all stat changes, only looking at boosted moves.*/
int BattlerPositiveStatChangesSum(struct BattleSystem *bsys, u32 battler, struct AIContext *ai)
{
    struct BattleStruct *ctx = bsys->sp;
    int statSum = 0;

    for (int stat = 0; stat < STAT_MAX; stat++) {
        if (ctx->battlemon[battler].states[stat] > 6) {
            statSum += ctx->battlemon[battler].states[stat];
        }
    }
    return statSum;
}

/*Returns true if the battler has >= boost_amount in any stat*/
BOOL BattlerHasStatBoostGreater(struct BattleSystem *bsys, u32 battler, u32 boost_amount, struct AIContext *ai)
{
    BOOL battlerHasStatBoost = 0;
    struct BattleStruct *ctx = bsys->sp;
    if (ctx->battlemon[battler].states[STAT_ATTACK] >= boost_amount || ctx->battlemon[battler].states[STAT_DEFENSE] >= boost_amount || ctx->battlemon[battler].states[STAT_SPECIAL_ATTACK] >= boost_amount || ctx->battlemon[battler].states[STAT_SPECIAL_DEFENSE] >= boost_amount || ctx->battlemon[battler].states[STAT_SPEED] >= boost_amount || ctx->battlemon[battler].states[STAT_EVASION] >= boost_amount || ctx->battlemon[battler].states[STAT_ACCURACY] >= boost_amount) {
        battlerHasStatBoost = 1;
    }
    return battlerHasStatBoost;
}

/*Returns true if the battler has <= boost_amount in any stat*/
BOOL BattlerHasStatBoostLesser(struct BattleSystem *bsys, u32 battler, u32 drop_amount, struct AIContext *ai)
{
    BOOL battlerHasStatBoost = 0;
    struct BattleStruct *ctx = bsys->sp;
    if (ctx->battlemon[battler].states[STAT_ATTACK] <= drop_amount || ctx->battlemon[battler].states[STAT_DEFENSE] <= drop_amount || ctx->battlemon[battler].states[STAT_SPECIAL_ATTACK] <= drop_amount || ctx->battlemon[battler].states[STAT_SPECIAL_DEFENSE] <= drop_amount || ctx->battlemon[battler].states[STAT_SPEED] <= drop_amount || ctx->battlemon[battler].states[STAT_EVASION] <= drop_amount || ctx->battlemon[battler].states[STAT_ACCURACY] <= drop_amount) {
        battlerHasStatBoost = 1;
    }
    return battlerHasStatBoost;
}

/*Returns true if user has a particular move in their 4 move slots.*/
BOOL BattlerKnowsMove(struct BattleSystem *bsys, u32 battler, u32 move, struct AIContext *ai)
{
    BOOL knowsMove = 0;
    struct BattleStruct *ctx = bsys->sp;
    for (unsigned int i = 0; i < 4; i++) {
        u32 battler_move_check = ctx->battlemon[battler].move[i];
        if (battler_move_check == move) {
            knowsMove = 1;
        }
    }
    return knowsMove;
}

BOOL BattlerHasTypeDamagingMove(struct BattleSystem *bsys, u32 battler, u32 type, struct AIContext *ai)
{
    BOOL hasMove = FALSE;
    struct BattleStruct *ctx = bsys->sp;
    for (int i = 0; i < 4; i++) {
        int battler_move_check = ctx->battlemon[battler].move[i];
        if (ctx->moveTbl[battler_move_check].type == type && ctx->moveTbl[battler_move_check].split != SPLIT_STATUS) {
            hasMove = TRUE;
        }
    }
    return hasMove;
}

/*Returns true if user has a particular move split (physical, special, or status) in their 4 move slots.*/
BOOL BattlerHasMoveSplit(struct BattleSystem *bsys, u32 battler, u32 move_split, struct AIContext *ai)
{
    BOOL hasMoveSplit = 0;
    struct BattleStruct *ctx = bsys->sp;

    for (unsigned int i = 0; i < 4; i++) {
        u32 battler_move_split = ctx->moveTbl[ctx->battlemon[battler].move[i]].split;
        if (battler_move_split == move_split) {
            hasMoveSplit = 1;
        }
    }
    return hasMoveSplit;
}
/*Returns true if user has a particular move effect in their 4 move slots.*/
BOOL BattlerHasMoveEffect(struct BattleSystem *bsys, u32 battler, u32 move_effect, struct AIContext *ai)
{

    BOOL hasMoveEffect = 0;
    struct BattleStruct *ctx = bsys->sp;

    for (int i = 0; i < 4; i++) {
        int battler_move_effect = ctx->moveTbl[ctx->battlemon[battler].move[i]].effect;
        if (battler_move_effect == move_effect) {
            hasMoveEffect = 1;
        }
    }
    return hasMoveEffect;
}

/*Returns true if user has a particular damaging move type.*/
BOOL BattlerHasDamagingMoveType(struct BattleSystem *bsys, u32 battler, u32 type, struct AIContext *ai)
{

    BOOL hasMoveType = FALSE;
    struct BattleStruct *ctx = bsys->sp;

    for (int i = 0; i < 4; i++) {
        u32 battler_move_type = ctx->moveTbl[ctx->battlemon[battler].move[i]].type;
        if (battler_move_type == type && ctx->moveTbl[ctx->battlemon[battler].move[i]].split != SPLIT_STATUS) {
            hasMoveType = TRUE;
        }
    }
    return hasMoveType;
}

/*Returns true if the item has some sort of negative effect on holder.*/
BOOL ItemIsBadToTrade(u32 item, struct AIContext *ai)
{
    if ((item == ITEM_IRON_BALL && !ai->trickRoomActive) || item == ITEM_LAGGING_TAIL || item == ITEM_TOXIC_ORB || item == ITEM_FLAME_ORB || item == ITEM_RING_TARGET || item == ITEM_STICKY_BARB || item == ITEM_CHOICE_SCARF || item == ITEM_CHOICE_SPECS || item == ITEM_CHOICE_BAND || item == ITEM_BLACK_SLUDGE || item == ITEM_MACHO_BRACE || item == ITEM_POWER_BRACER || item == ITEM_POWER_BAND || item == ITEM_POWER_ANKLET || item == ITEM_POWER_BELT || item == ITEM_POWER_LENS || item == ITEM_POWER_WEIGHT) {
        return TRUE;
    } else {
        return FALSE;
    }
}
/*Returns true if the item has some sort of negative effect on holder -- excludes some of the above functions' items.*/
BOOL ItemIsDisruptive(u32 item, struct AIContext *ai)
{
    if ((item == ITEM_IRON_BALL && !ai->trickRoomActive) || item == ITEM_CHOICE_SCARF || item == ITEM_CHOICE_SPECS || item == ITEM_CHOICE_BAND || item == ITEM_STICKY_BARB || item == ITEM_POWER_BRACER || item == ITEM_POWER_BAND || item == ITEM_POWER_ANKLET || item == ITEM_POWER_BELT || item == ITEM_POWER_LENS || item == ITEM_POWER_WEIGHT) {
        return 1;
    } else {
        return 0;
    }
}

/*Returns true if the ability passed is "good", which is pretty subjective.*/
BOOL IsDesirableAbility(u32 ability)
{
    if (ability == ABILITY_SPEED_BOOST || ability == ABILITY_BATTLE_ARMOR || ability == ABILITY_SAND_VEIL || ability == ABILITY_STATIC || ability == ABILITY_FLASH_FIRE || ability == ABILITY_WONDER_GUARD || ability == ABILITY_SWIFT_SWIM || ability == ABILITY_HUGE_POWER || ability == ABILITY_RAIN_DISH || ability == ABILITY_CUTE_CHARM || ability == ABILITY_SHED_SKIN || ability == ABILITY_MARVEL_SCALE || ability == ABILITY_PURE_POWER || ability == ABILITY_CHLOROPHYLL || ability == ABILITY_SHIELD_DUST || ability == ABILITY_ADAPTABILITY || ability == ABILITY_MAGIC_GUARD || ability == ABILITY_MOLD_BREAKER || ability == ABILITY_SUPER_LUCK || ability == ABILITY_UNAWARE || ability == ABILITY_TINTED_LENS || ability == ABILITY_FILTER || ability == ABILITY_SOLID_ROCK || ability == ABILITY_RECKLESS || ability == ABILITY_SHELL_ARMOR || ability == ABILITY_LEAF_GUARD || ability == ABILITY_MAGMA_ARMOR) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/**
 * @brief Check if the current move is a stat dropping move (Status moves only)
 * @param moveEffect move's effect
 * @return TRUE if it is a stat dropping move
 */
BOOL LONG_CALL DropsStatsAsStatus(u32 moveEffect)
{
    u8 output = FALSE;
    for (u16 i = 0; i < NELEMS(DropStatList); i++) {
        if (moveEffect == DropStatList[i]) {
            output = TRUE;
            break;
        }
    }
    return output;
}

/*Returns true if a given list has a certain value in it.*/
BOOL LONG_CALL IsInList(u32 value, const u16 list[], u16 ListLength)
{
    u8 output = FALSE;
    for (u16 i = 0; i < ListLength; i++) {
        if (value == list[i]) {
            output = TRUE;
            break;
        }
    }
    return output;
}

/*Returns true if the given battler has a move in a list.*/
BOOL LONG_CALL BattlerKnowsMoveInList(struct BattleSystem *bsys, u32 battler, const u16 MoveList[], u16 listLength, struct AIContext *ai)
{
    struct BattleStruct *ctx = bsys->sp;
    BOOL knowsMove = FALSE;
    for (int i = 0; i < 4; i++) {
        for (int listIndex = 0; listIndex < listLength; listIndex++) {
            if (ctx->battlemon[battler].move[i] == MoveList[listIndex]) {
                knowsMove = TRUE;
                break;
            }
        }
    }
    return knowsMove;
}

/*Returns true if the battler moves first.
This function particularly accounts for 4 battlers, not just 2.*/
BOOL LONG_CALL BattlerMovesFirstDoubles(struct BattleSystem *bsys, struct BattleStruct *ctx, int mainBattler, int flag, struct AIContext *ai)
{
    BOOL movesFirst = TRUE;
    for (int otherBattler = 0; otherBattler < 4; otherBattler++) {
        if (ctx->battlemon[otherBattler].hp != 0 && mainBattler != otherBattler) {
            if (CalcSpeed(bsys, ctx, otherBattler, mainBattler, flag) != 1) {
                return FALSE;
            }
        }
    }
    return movesFirst;
}

/*Returns true if the attacker's move index (0-3) has the highest max damage roll of all other move indices.*/
BOOL LONG_CALL MoveIsStrongest(struct BattleSystem *bsys, struct BattleStruct *ctx, int moveIndex, struct AIContext *ai)
{
    BOOL is_strongest = TRUE;
    for (int i = 0; i < 4; i++) {
        if (i != moveIndex) {
            if (ai->attackerAvgRollMoveDamages[moveIndex] < ai->attackerAvgRollMoveDamages[i]) {
                return FALSE;
            }
        }
    }
    return is_strongest;
}

void SetupStateVariables(struct BattleSystem *bsys, int attacker, u32 defender, struct AIContext *ai)
{
    struct BattleStruct *ctx = bsys->sp;
    u32 effectivenessFlag = 0;
    u8 critical = 0;
    u8 speedCalc;
    int work;
    debug_printf("Before setting up ai->\n");
    ai->attacker = attacker;
    // Initialize partner fields so ExpertFlag can use them in doubles
    if (BattleTypeGet(bsys) & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_MULTI | BATTLE_TYPE_TAG)) {
        ai->partner = BATTLER_ALLY(attacker);
        ai->partnerHP = ctx->battlemon[ai->partner].hp;
        ai->partnerAbility = ctx->battlemon[ai->partner].ability;
        ai->partnerItem = ctx->battlemon[ai->partner].item;
        ai->partnerPercentHP = (ai->partnerHP > 0 && ctx->battlemon[ai->partner].maxhp > 0)
            ? ai->partnerHP * 100 / ctx->battlemon[ai->partner].maxhp
            : 0;
    }
    ai->defender = defender;
    ai->attackerSide = BATTLER_IS_ENEMY(ai->attacker);
    ai->defenderSide = BATTLER_IS_ENEMY(ai->defender);
    ai->attackerLevel = ctx->battlemon[attacker].level;
    ai->attackerAbility = ctx->battlemon[attacker].ability;
    ai->defenderAbility = ctx->battlemon[ai->defender].ability;
    ai->attackerItem = ctx->battlemon[attacker].item;
    ai->defenderItem = ctx->battlemon[ai->defender].item;
    ai->holdEffect = BattleItemDataGet(ctx, ai->defenderItem, 1); // this was mistakenly documented as attacker's held item in ai.c -- fixed now
    ai->defenderType1 = ctx->battlemon[ai->defender].type1;
    ai->defenderType2 = ctx->battlemon[ai->defender].type2;
    ai->attackerType1 = ctx->battlemon[attacker].type1;
    ai->attackerType2 = ctx->battlemon[attacker].type2;
    ai->attackerHP = ctx->battlemon[attacker].hp;
    ai->defenderHP = ctx->battlemon[ai->defender].hp;
    ai->attackerMaxHP = ctx->battlemon[attacker].maxhp;
    ai->defenderMaxHP = ctx->battlemon[ai->defender].maxhp;
    ai->attackerPercentHP = ai->attackerHP * 100 / ai->attackerMaxHP;
    ai->defenderPercentHP = ai->defenderHP * 100 / ai->defenderMaxHP;
    ai->attackerSpeed = ctx->battlemon[attacker].speed;
    ai->defenderSpeed = ctx->battlemon[ai->defender].speed;
    ai->attackerPartyIndex = ctx->sel_mons_no[attacker];
    ai->attackerLastUsedMove = ctx->waza_no_old[ai->attacker];
    ai->defenderLastUsedMove = ctx->waza_no_old[ai->defender];
    ai->defenderLastUsedMoveEffect = ctx->moveTbl[ai->defenderLastUsedMove].effect;
    ai->defenderTurnsOnField = ctx->total_turn - ctx->battlemon[ai->defender].moveeffect.fakeOutCount;
    ai->attackerTurnsOnField = ctx->total_turn - ctx->battlemon[attacker].moveeffect.fakeOutCount;
    ai->flingPower = BattleItemDataGet(ctx, ai->attackerItem, ITEM_PARAM_FLING_POWER);
    ai->differenceInAttackStages = ctx->battlemon[attacker].states[STAT_ATTACK] - ctx->battlemon[ai->defender].states[STAT_ATTACK];
    ai->differenceInSpAtkStages = ctx->battlemon[attacker].states[STAT_SPECIAL_ATTACK] - ctx->battlemon[ai->defender].states[STAT_SPECIAL_ATTACK];
    ai->differenceInDefenseStages = ctx->battlemon[attacker].states[STAT_DEFENSE] - ctx->battlemon[ai->defender].states[STAT_DEFENSE];
    ai->differenceInSpDefStages = ctx->battlemon[attacker].states[STAT_SPECIAL_DEFENSE] - ctx->battlemon[ai->defender].states[STAT_SPECIAL_DEFENSE];
    ai->defenderMovesFirst = 0;
    ai->attackerMovesFirst = 0;
    ai->isSpeedTie = 0;
    ai->trickRoomActive = 0;
    ai->defenderHasBadItem = 0;
    ai->maxDamageReceived = 0;
    ai->attackerMaxDamageOutputMinRoll = 0;
    debug_printf("After setting up ai->\n");
    FillDamageStructFromBattleMon(bsys, ctx, &ai->attackerMon, attacker);
    FillDamageStructFromBattleMon(bsys, ctx, &ai->defenderMon, defender);
    debug_printf("After filldamage struct\n");
    speedCalc = CalcSpeed(bsys, ctx, ai->defender, attacker, CALCSPEED_FLAG_NO_PRIORITY); // checks actual turn order with field state considered
    debug_printf("after calc speed\n");
    // evaluates to 0 if ai->defender > attacker (false)
    // and 1 if ai->defender < attacker (true)
    // if speed tie, then 2.
    if (speedCalc == 0) {
        ai->defenderMovesFirst = 1;
    } else if (speedCalc == 1) {
        ai->attackerMovesFirst = 1;
    } else if (speedCalc == 2) {
        ai->isSpeedTie = 1;
    }

    // Custap Berry: guaranteed to move first when below 25% HP (before normal priority consideration)
    // Only applies when not already moving first and Custap hasn't been consumed yet
    if (ai->attackerItem == ITEM_CUSTAP_BERRY
        && ai->attackerHP * 4 <= ai->attackerMaxHP
        && !ai->attackerMovesFirst) {
        ai->attackerMovesFirst = 1;
        ai->defenderMovesFirst = 0;
        ai->isSpeedTie = 0;
    }

    if (ctx->field_condition & FIELD_CONDITION_TRICK_ROOM) {
        ai->trickRoomActive = 1;
    }
    if ((ai->defenderItem == ITEM_IRON_BALL && !ai->trickRoomActive) || ai->defenderItem == ITEM_LAGGING_TAIL || ai->defenderItem == ITEM_TOXIC_ORB || ai->defenderItem == ITEM_FLAME_ORB || ai->defenderItem == ITEM_RING_TARGET || ai->defenderItem == ITEM_STICKY_BARB || ai->defenderItem == ITEM_CHOICE_SCARF || ai->defenderItem == ITEM_CHOICE_SPECS || ai->defenderItem == ITEM_CHOICE_BAND) {
        ai->defenderHasBadItem = 1;
    }
    debug_printf("before stat change\n");

    /*Check if target or user has stat change*/
    ai->hasStatChange = 0;
    for (int i = 0; i < STAT_MAX; i++) {
        if (ctx->battlemon[attacker].states[i] != 0 || ctx->battlemon[ai->defender].states[i] != 0) {
            ai->hasStatChange = 1;
        }
    }
    debug_printf("before hazards\n");

    /*Check if ai->defender has any IMPACTFUL hazards up (spikes at level 2 or higher)*/
    if (ctx->side_condition[ai->defenderSide] & SIDE_STATUS_STEALTH_ROCK || ctx->scw[ai->defenderSide].spikesLayers >= 2 || ctx->scw[ai->defenderSide].toxicSpikesLayers >= 1) {
        ai->defenderHasHazards = 1;
    } else {
        ai->defenderHasHazards = 0;
    }
    debug_printf("before immunities\n");
    ai->defenderImmuneToPoison = (ai->defenderType1 == TYPE_POISON || ai->defenderType2 == TYPE_POISON || // TODO need to consider corrosion
                                     ai->defenderType1 == TYPE_STEEL || ai->defenderType2 == TYPE_STEEL || ctx->battlemon[ai->defender].condition & STATUS_ALL || ctx->side_condition[ai->defenderSide] & SIDE_STATUS_SAFEGUARD || ai->defenderAbility == ABILITY_MAGIC_GUARD || ai->defenderAbility == ABILITY_IMMUNITY || ai->defenderAbility == ABILITY_POISON_HEAL || (ai->defenderAbility == ABILITY_LEAF_GUARD && ctx->field_condition & FIELD_CONDITION_SUN_ALL) || (ai->defenderAbility == ABILITY_HYDRATION && ctx->field_condition & FIELD_CONDITION_RAIN_ALL))
        || (IsClientGrounded(ctx, ai->defender) && ctx->terrainOverlay.type == MISTY_TERRAIN);
    ai->defenderImmuneToParalysis = (ai->defenderType1 == TYPE_ELECTRIC || ai->defenderType2 == TYPE_ELECTRIC || ctx->battlemon[ai->defender].condition & STATUS_ALL || ctx->side_condition[ai->defenderSide] & SIDE_STATUS_SAFEGUARD || ai->defenderAbility == ABILITY_LIMBER || (ai->defenderAbility == ABILITY_LEAF_GUARD && ctx->field_condition & FIELD_CONDITION_SUN_ALL) || (ai->defenderAbility == ABILITY_HYDRATION && ctx->field_condition & FIELD_CONDITION_RAIN_ALL) || (ai->defenderAbility == ABILITY_MAGIC_GUARD && ctx->battlemon[attacker].speed > ctx->battlemon[ai->defender].speed)) || (IsClientGrounded(ctx, ai->defender) && ctx->terrainOverlay.type == MISTY_TERRAIN);
    ai->defenderImmuneToBurn = (ai->defenderType1 == TYPE_FIRE || ai->defenderType2 == TYPE_FIRE || ctx->battlemon[ai->defender].condition & STATUS_ALL || ctx->side_condition[ai->defenderSide] & SIDE_STATUS_SAFEGUARD || ai->defenderAbility == ABILITY_MAGIC_GUARD || ai->defenderAbility == ABILITY_WATER_VEIL || ai->defenderAbility == ABILITY_THERMAL_EXCHANGE || ai->defenderAbility == ABILITY_WATER_BUBBLE) || (ai->defenderAbility == ABILITY_LEAF_GUARD && ctx->field_condition & FIELD_CONDITION_SUN_ALL) || (ai->defenderAbility == ABILITY_HYDRATION && ctx->field_condition & FIELD_CONDITION_RAIN_ALL) || (IsClientGrounded(ctx, ai->defender) && ctx->terrainOverlay.type == MISTY_TERRAIN);
    ai->defenderImmuneToFrostbite = (ai->defenderType1 == TYPE_ICE || ai->defenderType2 == TYPE_ICE || ctx->battlemon[ai->defender].condition & STATUS_ALL || ctx->side_condition[ai->defenderSide] & SIDE_STATUS_SAFEGUARD || ai->defenderAbility == ABILITY_MAGMA_ARMOR || ai->defenderAbility == ABILITY_PURIFYING_SALT) || (ai->defenderAbility == ABILITY_LEAF_GUARD && ctx->field_condition & FIELD_CONDITION_SUN_ALL) || (ai->defenderAbility == ABILITY_HYDRATION && ctx->field_condition & FIELD_CONDITION_RAIN_ALL) || (IsClientGrounded(ctx, ai->defender) && ctx->terrainOverlay.type == MISTY_TERRAIN);
    ai->defenderImmuneToSleep = (ctx->battlemon[ai->defender].condition & STATUS_ALL || ctx->side_condition[ai->defenderSide] & SIDE_STATUS_SAFEGUARD || ai->defenderAbility == ABILITY_VITAL_SPIRIT || ai->defenderAbility == ABILITY_INSOMNIA || (ai->defenderAbility == ABILITY_LEAF_GUARD && ctx->field_condition & FIELD_CONDITION_SUN_ALL) || (ai->defenderAbility == ABILITY_HYDRATION && ctx->field_condition & FIELD_CONDITION_RAIN_ALL) || (ai->defenderAbility == ABILITY_MAGIC_GUARD && ctx->battlemon[attacker].speed > ctx->battlemon[ai->defender].speed) || (IsClientGrounded(ctx, ai->defender) && (ctx->terrainOverlay.type == ELECTRIC_TERRAIN || ctx->terrainOverlay.type == MISTY_TERRAIN)));
    // ai->attackerMoveEffectiveness = 0;
    ai->partySizeAttacker = Battle_GetClientPartySize(bsys, attacker);
    ai->livingMembersAttacker = 0;
    ai->partySizeDefender = Battle_GetClientPartySize(bsys, ai->defender);
    ai->livingMembersDefender = 0;
    ai->statusedMonsAttacker = 0;
    ai->damagedMonsDefender = 0;
    debug_printf("before partyattacker size loop\n");
    /*Check if attacker's team has anyone that is statused or damaged.
    Also compute number of living members on attacker's team.*/
    for (int i = 0; i < ai->partySizeAttacker; i++) {
        struct PartyPokemon *currentMonAttacking = Battle_GetClientPartyMon(bsys, attacker, i);

        if (!(GetMonData(currentMonAttacking, MON_DATA_HP, 0) == 0 || GetMonData(currentMonAttacking, MON_DATA_SPECIES_OR_EGG, 0) == 0 || GetMonData(currentMonAttacking, MON_DATA_SPECIES_OR_EGG, 0) == 494)) {

            ai->livingMembersAttacker++;
            work = GetMonData(currentMonAttacking, MON_DATA_STATUS, NULL);
            if (GetMonData(currentMonAttacking, MON_DATA_HP, 0) != GetMonData(currentMonAttacking, MON_DATA_MAXHP, 0)) {
                ai->damagedMonsDefender++;
            }
            if (!(work & STATUS_NONE)) {
                ai->statusedMonsAttacker++;
            }
        }
    }
    debug_printf("Before defending team loop\n");
    /*Loop over defending team*/
    for (int i = 0; i < ai->partySizeDefender; i++) {
        struct PartyPokemon *currentMonDefending = Battle_GetClientPartyMon(bsys, ai->defender, i);
        if (!(GetMonData(currentMonDefending, MON_DATA_HP, 0) == 0 || GetMonData(currentMonDefending, MON_DATA_SPECIES_OR_EGG, 0) == 0 || GetMonData(currentMonDefending, MON_DATA_SPECIES_OR_EGG, 0) == 494)) {
            ai->livingMembersDefender++;
        }
    }

    ai->damagedMonsDefender = 0;
    ai->statusedMonsAttacker = 0;
    ai->attackerKnowsPsychUp = 0;
    ai->attackerMovesKnown = GetBattlerLearnedMoveCount(bsys, ctx, attacker);
    ai->attackerHasSupereffectiveMove = 0;
    ai->attackerHasDamagingMove = 0;

    int attackerEffectCheck;
    int specialMovePower = 0;

    /*Loop over defender's moves, and compute the most damage AI can take*/
    int currentReceivedDamage = 0;
    for (int i = 0; i < 4; i++) {
        specialMovePower = 0;
        u32 defenderMoveno = ctx->battlemon[defender].move[i];
        struct BattleMove defenderMove = ctx->moveTbl[defenderMoveno];
        struct AI_damage damages = { 0 };
        if (ctx->moveTbl[ctx->battlemon[ai->defender].move[i]].split != SPLIT_STATUS) {
            // specialMovePower = AdjustUnusualMovePower(bsys, ai->defender, ai->attacker, ctx->moveTbl[ctx->battlemon[ai->defender].move[i]].effect, ai);
            currentReceivedDamage = BattleAI_CalcDamage(bsys, ctx, ctx->battlemon[ai->defender].move[i], ctx->side_condition[BATTLER_IS_ENEMY(ai->attacker)], ctx->field_condition, defenderMove.power, defenderMove.type, 0, ai->defender, ai->attacker, &damages, &ai->defenderMon, &ai->attackerMon);
            // currentReceivedDamage = CalcBaseDamage(bsys, ctx, ctx->battlemon[ai->defender].move[i], ctx->side_condition[ai->attackerSide],ctx->field_condition, specialMovePower, 0, ai->defender, ai->attacker, 0, 0, 0, NULL);
            // currentReceivedDamage = ServerDoTypeCalcMod(bsys, ctx, ctx->battlemon[ai->defender].move[i], 0, ai->defender, ai->attacker, currentReceivedDamage, &temp)*92 / 100; // looking at MIN roll. //*85 / 100 for min roll
            debug_printf("current received damage in main.c done\n");
            // currentReceivedDamage = AdjustUnusualMoveDamage(bsys, ai->defender, ai->attacker, currentReceivedDamage, ctx->moveTbl[ctx->battlemon[ai->defender].move[i]].effect, ai);
            currentReceivedDamage = BattleAI_AdjustUnusualMoveDamage(ai->defenderMon.level, ai->defenderMon.hp, ai->attackerMon.hp, currentReceivedDamage, defenderMove.effect, ai->defenderMon.ability, ai->defenderMon.item);
            debug_printf("damage received for move index %d is: %d\n", i, currentReceivedDamage);
            ai->defenderAvgRollMoveDamages[i] = currentReceivedDamage;
            if (currentReceivedDamage > ai->maxDamageReceived) {
                ai->maxDamageReceived = currentReceivedDamage;
            }
        }
        // debug_printf("Max damage received for move %d is: %d\n",i,currentReceivedDamage);
    }
    // debug_printf("Max damage received PERIOD is: %d\n",ai->maxDamageReceived);

    // Focus Sash: if the AI is at full HP, it cannot be OHKOd — cap received damage at HP-1
    if (ai->attackerItem == ITEM_FOCUS_SASH && ai->attackerHP == ai->attackerMaxHP) {
        if (ai->maxDamageReceived >= ai->attackerHP) {
            ai->maxDamageReceived = ai->attackerHP - 1;
        }
    }

    /*Loop over all moves for checking certain conditions*/
    /*Set up max roll damage calculations for all known moves.
    Also check if user has a super-effective move*/
    for (int i = 0; i < ai->attackerMovesKnown; i++) {
        struct AI_damage damages = { 0 };
        int attackerMoveno = ctx->battlemon[attacker].move[i];
        struct BattleMove attackerMove = ctx->moveTbl[attackerMoveno];
        // attackerMoveCheck = ctx->battlemon[attacker].move[i];
        // attackerEffectCheck = ctx->moveTbl[attackerMoveCheck].effect;
        // attackerMoveTypeCheck = ctx->moveTbl[attackerMoveCheck].type;
        // specialMovePower = 0;
        if (attackerMoveno == MOVE_PSYCH_UP) {
            ai->attackerKnowsPsychUp = 1;
        }
        if (ctx->moveTbl[attackerMoveno].split != SPLIT_STATUS) {
            if (attackerEffectCheck == MOVE_EFFECT_RANDOM_POWER_10_CASES) { // average magnitude power
                specialMovePower = 71;
            }

            u8 moveTypeForCalc;
            if (attackerMoveno == MOVE_HIDDEN_POWER) {
                moveTypeForCalc = ai->attackerMon.hiddenPowerType;
            } else if (attackerMoveno == MOVE_WEATHER_BALL
                && (ctx->field_condition & FIELD_CONDITION_WEATHER)
                && !CheckSideAbility(bsys, ctx, CHECK_ABILITY_ALL_HP, attacker, ABILITY_CLOUD_NINE)
                && !CheckSideAbility(bsys, ctx, CHECK_ABILITY_ALL_HP, attacker, ABILITY_AIR_LOCK)) {
                if (ctx->field_condition & FIELD_CONDITION_RAIN_ALL) {
                    moveTypeForCalc = TYPE_WATER;
                } else if (ctx->field_condition & FIELD_CONDITION_SUN_ALL) {
                    moveTypeForCalc = TYPE_FIRE;
                } else if (ctx->field_condition & FIELD_CONDITION_SANDSTORM_ALL) {
                    moveTypeForCalc = TYPE_ROCK;
                } else if (ctx->field_condition & FIELD_CONDITION_HAIL_ALL) {
                    moveTypeForCalc = TYPE_ICE;
                } else {
                    moveTypeForCalc = attackerMove.type;
                }
            } else {
                moveTypeForCalc = attackerMove.type;
            }
            ai->attackerAvgRollMoveDamages[i] = BattleAI_CalcDamage(bsys, ctx, attackerMoveno, ctx->side_condition[BATTLER_IS_ENEMY(defender)], ctx->field_condition, attackerMove.power, moveTypeForCalc, critical, attacker, defender, &damages, &ai->attackerMon, &ai->defenderMon);

            ai->attackerAvgRollMoveDamages[i] = BattleAI_AdjustUnusualMoveDamage(ai->attackerMon.level, ai->attackerMon.hp, ai->defenderMon.hp, damages.damageRoll, attackerMove.effect, ai->attackerMon.ability, ai->attackerMon.item);

            // specialMovePower = AdjustUnusualMovePower(bsys, attacker, ai->defender, attackerEffectCheck, ai);
            // ai->attackerAvgRollMoveDamages[i] = CalcBaseDamage(bsys, ctx, attackerMoveCheck, ctx->side_condition[ai->defenderSide],ctx->field_condition, specialMovePower, 0, ai->attacker, ai->defender, 0, 0, 0, NULL);
            // ai->attackerAvgRollMoveDamages[i] = ServerDoTypeCalcMod(bsys, ctx, attackerMoveCheck, 0, attacker, ai->defender, ai->attackerAvgRollMoveDamages[i], &temp)*92 / 100; //85% is min roll. // *85 / 100 FOR MIN ROLL
            // ai->attackerAvgRollMoveDamages[i] = AdjustUnusualMoveDamage(bsys, ai->attacker, ai->defender, ai->attackerAvgRollMoveDamages[i], attackerEffectCheck, ai);
        }

        /*Record our highest damage output*/
        if (ai->attackerAvgRollMoveDamages[i] > ai->attackerMaxDamageOutputMinRoll) {
            ai->attackerMaxDamageOutputMinRoll = ai->attackerAvgRollMoveDamages[i];
        }

        if (ai->attackerAvgRollMoveDamages[i] > 0) {
            ai->attackerHasDamagingMove = TRUE;
        }
        u8 moveTypeForEffectiveness = (attackerMoveno == MOVE_HIDDEN_POWER)
            ? ai->attackerMon.hiddenPowerType
            : attackerMove.type;
        ai->attackerMoveEffectiveness[i] = BattleAI_GetTypeEffectiveness(bsys, ctx, attackerMoveno, moveTypeForEffectiveness, &effectivenessFlag, &ai->attackerMon, &ai->defenderMon);
        // AITypeCalc(ctx, attackerMoveCheck, attackerMoveTypeCheck, ai->attackerAbility, ai->defenderAbility, ai->holdEffect, ai->defenderType1, ai->defenderType2, & ai->attackerMoveEffectiveness);
        if (ai->attackerMoveEffectiveness[i] == TYPE_MUL_SUPER_EFFECTIVE) {
            ai->attackerHasSupereffectiveMove = TRUE;
        }
    }
}

/*Adjusts the computed damage for attacks like multihit or flat damage moves.*/
int AdjustUnusualMoveDamage(struct BattleSystem *bsys, int attacker, u32 defender, int damage, int moveEffect, struct AIContext *ai)
{
    struct BattleStruct *ctx = bsys->sp;
    debug_printf("moveeffect in unusualdamage is: %d\n", moveEffect);
    switch (moveEffect) {
    case MOVE_EFFECT_MULTI_HIT: // 2-5 hit moves
        if (ctx->battlemon[attacker].ability == ABILITY_SKILL_LINK) {
            return damage *= 5; // skill link guarantees 5 hits
        }
        if (ctx->battlemon[attacker].item == ITEM_LOADED_DICE) {
            return damage *= 4;
        }
        return damage *= 3;
    case MOVE_EFFECT_LEVEL_DAMAGE_FLAT: // night shade, seismic toss
    case MOVE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL: // psybeam
        debug_printf("Setting defender's HP to attacker's level in AdjustUnusualMoveDamage\n");
        return ctx->battlemon[attacker].level;
    case MOVE_EFFECT_10_DAMAGE_FLAT: // sonic boom
        return 20;
    case MOVE_EFFECT_40_DAMAGE_FLAT: // dragon rage
        return 40;
    case MOVE_EFFECT_POISON_MULTI_HIT: // twinneedle
    case MOVE_EFFECT_HIT_TWICE: // double hit, dual wingbeat, etc...
        debug_printf("Setting defender's HP to half in AdjustUnusualMoveDamage\n");
        return damage *= 2;

    case MOVE_EFFECT_HALVE_HP: // super fang, nature's madness
        debug_printf("Setting defender's HP to half in AdjustUnusualMoveDamage\n");
        return ctx->battlemon[defender].hp / 2;
    case MOVE_EFFECT_SET_HP_EQUAL_TO_USER: // endeavor
        debug_printf("Setting defender's HP equal to attacker's HP in AdjustUnusualMoveDamage\n");
        return ctx->battlemon[defender].hp - ctx->battlemon[attacker].hp;
    case MOVE_EFFECT_DOUBLE_DAMAGE_ON_STATUS:
        if (!(ctx->battlemon[defender].condition & STATUS_NONE)) {
            return damage *= 2;
        }
        __attribute__((fallthrough));
    case MOVE_EFFECT_DOUBLE_POWER_EACH_TURN_LOCK_INTO:
        return damage * 3 / 2; // next two turns average damage
    default:
        return damage;
    }
    return damage;
}

/*Returns the true move power of variable power moves like reversal or magnitude*/
int AdjustUnusualMovePower(struct BattleSystem *bsys, int attacker, u32 defender, int moveEffect, struct AIContext *ai)
{
    struct BattleStruct *ctx = bsys->sp;
    switch (moveEffect) {
    case MOVE_EFFECT_INCREASE_POWER_WITH_WEIGHT: // low kick and grass knot (measured in lbs)
        if (ctx->battlemon[defender].weight < 22) {
            return 20;
        } else if (ctx->battlemon[defender].weight < 55) {
            return 40;
        } else if (ctx->battlemon[defender].weight < 110) {
            return 60;
        } else if (ctx->battlemon[defender].weight < 220) {
            return 80;
        } else if (ctx->battlemon[defender].weight < 440) {
            return 100;
        } else {
            return 120;
        }
    case MOVE_EFFECT_RANDOM_POWER_10_CASES:
        return 71; // average power
    case MOVE_EFFECT_INCREASE_POWER_WITH_LESS_HP:
        if (ai->attackerPercentHP <= 4) {
            return 200;
        } else if (ai->attackerPercentHP <= 10) {
            return 150;
        } else if (ai->attackerPercentHP <= 21) {
            return 100;
        } else if (ai->attackerPercentHP <= 35) {
            return 80;
        } else if (ai->attackerPercentHP <= 69) {
            return 40;
        } else {
            return 20;
        }
    }
    return 0;
}

/*Compute all 4 move scores for a single-battle attacker using the registered evaluators.
  Used by TrainerAI_ShouldSwitch to check whether all moves are ineffective.*/
void TrainerAI_ComputeAllMoveScores(struct BattleSystem *bsys, int attacker, unsigned int outScores[4])
{
    struct BattleStruct *ctx = bsys->sp;
    struct AIContext aictx = { 0 };
    struct AIContext *ai = &aictx;
    u32 defender = BATTLER_OPPONENT(attacker);
    SetupStateVariables(bsys, attacker, defender, ai);

    for (unsigned int i = 0; i < 4; i++) {
        outScores[i] = 100;
        ai->attackerMove = ctx->battlemon[attacker].move[i];
        if (ai->attackerMove == MOVE_NONE) {
            continue;
        }
        ai->attackerMoveEffect = ctx->moveTbl[ai->attackerMove].effect;
        ai->attackerMoveType = ctx->moveTbl[ai->attackerMove].type;
        ai->attackerMovePPRemaining = ctx->battlemon[attacker].pp[i];

        if (ai->attackerMove == ctx->battlemon[attacker].moveeffect.moveNoChoice || ai->attackerMove == ctx->battlemon[attacker].moveeffect.encoredMove) {
            outScores[i] += 100;
        }

        for (unsigned int j = 0; j < sizeof(moveEvaluators) / sizeof(moveEvaluators[0]); j++) {
            if (bsys->trainers[attacker].aibit & moveEvaluators[j].flag) {
                outScores[i] += moveEvaluators[j].evaluator(bsys, attacker, i, ai);
            }
        }
    }
}
