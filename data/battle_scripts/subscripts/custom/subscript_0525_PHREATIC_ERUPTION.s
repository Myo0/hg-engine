#include "constants/battle_constants.h"
.include "battle_commands.inc"

// Electrum: Phreatic Eruption (Mega Heatran). Queued by MoveCheckDamageNegatingAbilities in
// ability.c in place of a negated Water/Ice move. Before this runs, C has already set:
//   - BSCRIPT_VAR_MSG_BATTLER_TEMP (battlerIdTemp) = Heatran (whichever battler actually holds
//     the ability -- itself or the direct target's ally), for the initial AbilityPopup only.
//   - BSCRIPT_VAR_CALC_TEMP (calc_work) = bit0 set if the attacker's burn roll (50%) succeeded,
//     bit1 set if the attacker's ally's burn roll succeeded (irrelevant if no ally).
// This script then repoints MSG_BATTLER_TEMP at the attacker itself for the damage/burn steps,
// and flips it to the attacker's ally (battler ^ 2) afterward if one is alive.

.data

_000:
    AbilityPopup BATTLER_CATEGORY_MSG_BATTLER_TEMP
    // The attack turned to steam\nin an explosion!
    PrintMessage 1790, TAG_NONE
    Wait
    WaitButtonABTime 30

    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_MSG_BATTLER_TEMP, BSCRIPT_VAR_BATTLER_ATTACKER

    // -- damage the attacker: 20% of its own max HP --
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_MAXHP, BSCRIPT_VAR_HP_CALC
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_HP_CALC, -1
    DivideVarByValueRoundUp BSCRIPT_VAR_HP_CALC, 5
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP

    // -- maybe burn the attacker (bit 0 of the pre-rolled flag) --
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_CALC_TEMP, 1, _skipAttackerBurn
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_STATUS, STATUS_NONE, _skipAttackerBurn
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_TYPE_1, TYPE_FIRE, _skipAttackerBurn
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_TYPE_2, TYPE_FIRE, _skipAttackerBurn
    GoToIfThirdType BATTLER_CATEGORY_MSG_BATTLER_TEMP, TYPE_FIRE, _skipAttackerBurn
    UpdateMonData OPCODE_FLAG_ON, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_STATUS, STATUS_BURN
    PlayBattleAnimation BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLE_ANIMATION_BURNED
    Wait
    SetHealthbarStatus BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLE_ANIMATION_BURNED
    WaitButtonABTime 30
    // {0} was burned!
    PrintMessage 85, TAG_NICKNAME, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    WaitButtonABTime 30
_skipAttackerBurn:

    GoToIfValidMon BATTLER_CATEGORY_ATTACKER_PARTNER, _hasAlly
    GoTo _End

_hasAlly:
    UpdateVar OPCODE_BITWISE_XOR, BSCRIPT_VAR_MSG_BATTLER_TEMP, 2

    // -- damage the attacker's ally: 20% of its own max HP --
    UpdateMonDataFromVar OPCODE_GET, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_MAXHP, BSCRIPT_VAR_HP_CALC
    UpdateVar OPCODE_MUL, BSCRIPT_VAR_HP_CALC, -1
    DivideVarByValueRoundUp BSCRIPT_VAR_HP_CALC, 5
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_NO_BLINK
    Call BATTLE_SUBSCRIPT_UPDATE_HP

    // -- maybe burn the ally (bit 1 of the pre-rolled flag) --
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_CALC_TEMP, 2, _skipAllyBurn
    CompareMonDataToValue OPCODE_NEQ, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_STATUS, STATUS_NONE, _skipAllyBurn
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_TYPE_1, TYPE_FIRE, _skipAllyBurn
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_TYPE_2, TYPE_FIRE, _skipAllyBurn
    GoToIfThirdType BATTLER_CATEGORY_MSG_BATTLER_TEMP, TYPE_FIRE, _skipAllyBurn
    UpdateMonData OPCODE_FLAG_ON, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BMON_DATA_STATUS, STATUS_BURN
    PlayBattleAnimation BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLE_ANIMATION_BURNED
    Wait
    SetHealthbarStatus BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLE_ANIMATION_BURNED
    WaitButtonABTime 30
    // {0} was burned!
    PrintMessage 85, TAG_NICKNAME, BATTLER_CATEGORY_MSG_BATTLER_TEMP
    Wait
    WaitButtonABTime 30
_skipAllyBurn:

_End:
    End
