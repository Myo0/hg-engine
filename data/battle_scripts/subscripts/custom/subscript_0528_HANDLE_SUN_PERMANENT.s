#include "constants/battle_constants.h"
.include "asm/include/battle_commands.inc"

.data

_000:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SUN_ALL, _035
    // The sunlight turned harsh!
    PrintMessage 698, TAG_NONE
    Wait
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_WEATHER
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SUN_PERMANENT
    ActivateParadoxAbility ABILITY_PROTOSYNTHESIS
    End

_035:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End
