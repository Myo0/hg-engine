#include "constants/battle_constants.h"
.include "asm/include/battle_commands.inc"

.data

_000:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_HAIL_ALL, _035
    // It started to hail!
    PrintMessage 701, TAG_NONE
    Wait
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_WEATHER
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_HAIL_PERMANENT
    End

_035:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End
