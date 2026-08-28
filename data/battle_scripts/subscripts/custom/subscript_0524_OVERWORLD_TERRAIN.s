#include "constants/battle_constants.h"
.include "asm/include/battle_commands.inc"

// Electrum: battle-start plain terrain preset (DSPRE map-header weather values 16-19).
// current_move_index is set to a MOVE_*_TERRAIN by SwitchInAbilityCheck.c before this runs;
// UpdateTerrainOverlay reads it, sets the overlay, then we play the matching animation + message.
// Terrain-only (no weather) - the 519/520/521 subscripts handle the weather+terrain combos.

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
    End
