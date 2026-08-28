#include "constants/battle_constants.h"
.include "asm/include/battle_commands.inc"

.data

_000:
    UpdateTerrainOverlay FALSE, _045
    GotoIfTerrainOverlayIsType GRASSY_TERRAIN, _019
    GotoIfTerrainOverlayIsType MISTY_TERRAIN, _024
    GotoIfTerrainOverlayIsType ELECTRIC_TERRAIN, _029
    GotoIfTerrainOverlayIsType PSYCHIC_TERRAIN, _034
    GoTo _049

_019:
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_GRASSY_TERRAIN
    Wait
    // Grass grew to cover the battlefield!
    PrintMessage 1388, TAG_NONE
    GoTo _049

_024:
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_MISTY_TERRAIN
    Wait
    // Mist swirled about the battlefield!
    PrintMessage 1390, TAG_NONE
    GoTo _049

_029:
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_ELECTRIC_TERRAIN
    Wait
    // An electric current ran across the battlefield!
    PrintMessage 1392, TAG_NONE
    GoTo _049

_034:
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_PSYCHIC_TERRAIN
    Wait
    // The battlefield got weird!
    PrintMessage 1394, TAG_NONE
    GoTo _049

_045:
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_FAILED

_049:
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    Wait
    WaitButtonABTime 30
    // It started to snow!
    PrintMessage 1439, TAG_NONE
    Wait
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_WEATHER
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SNOW_TEMP
    UpdateVar OPCODE_SET, BSCRIPT_VAR_WEATHER_TURNS, 99
    GetItemEffectParam BATTLER_CATEGORY_ATTACKER, BSCRIPT_VAR_CALC_TEMP
    UpdateVarFromVar OPCODE_ADD, BSCRIPT_VAR_WEATHER_TURNS, BSCRIPT_VAR_CALC_TEMP
    End 