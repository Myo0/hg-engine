#include "constants/battle_constants.h"
.include "asm/include/battle_commands.inc"

.data

_000:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SNOW_ALL, _035
    // It started to snow!
    PrintMessage 1439, TAG_NONE
    Wait
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_WEATHER
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SNOW_PERMANENT
    ResetParadoxAbility ABILITY_PROTOSYNTHESIS
    // Booster Energy
    ActivateParadoxAbility ABILITY_PROTOSYNTHESIS
    End

_035:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED
    End
