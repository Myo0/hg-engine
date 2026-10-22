#include "constants/battle_constants.h"
.include "battle_commands.inc"

.data

_000:
    SetPsychicTerrainMoveUsedFlag
    PrintAttackMessage
    Wait
    PlayMoveAnimation BATTLER_CATEGORY_ATTACKER
    Wait
    // picks the last move used by anybody and writes it to waza_work, moveNoTemp and current_move_index (like Metronome does)
    CopycatLastMove _016
    GotoIfCurrentMoveIsValidForParentalBond _019

_012:
    GoBackToBeforeMove
    GoToMoveScript FALSE
    End

_016:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End

_019:
    Call BATTLE_SUBSCRIPT_HANDLE_PARENTAL_BOND
    GoTo _012
