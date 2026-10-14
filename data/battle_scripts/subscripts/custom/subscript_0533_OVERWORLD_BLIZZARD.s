#include "constants/battle_constants.h"
.include "asm/include/battle_commands.inc"

.data

_000:
    PlayBattleAnimation BATTLER_CATEGORY_PLAYER, BATTLE_ANIMATION_WEATHER_SNOW
    Wait
    // It started to snow!
    PrintMessage 1439, TAG_NONE
    Wait
    WaitButtonABTime 30
    UpdateVar OPCODE_FLAG_ON, BSCRIPT_VAR_FIELD_CONDITION, FIELD_CONDITION_SNOW_PERMANENT
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MSG_MOVE_TEMP, MOVE_TAILWIND
    PlayMoveAnimation BATTLER_CATEGORY_MSG_TEMP
    Wait
    UpdateVar OPCODE_SET, BSCRIPT_VAR_MOVE_EFFECT_CHANCE, 0
    UpdateVar OPCODE_FLAG_OFF, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_MOVE_ANIMATIONS_OFF
    // The Tailwind blew from behind the opposing team!
    PrintMessage 1231, TAG_NONE_SIDE, BATTLER_CATEGORY_ATTACKER
    Wait
    WaitButtonABTime 30
    End
