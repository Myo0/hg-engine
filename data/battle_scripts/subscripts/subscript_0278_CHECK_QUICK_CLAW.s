.include "asm/include/battle_commands.inc"

.data

_000:
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_MICLE_BERRY_FLAG, 1, _Gem

    UpdateVar OPCODE_SET, BSCRIPT_VAR_BATTLER_SPEED_TEMP, 0
    // backup attacker that we use for the message
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_CALC_TEMP, BSCRIPT_VAR_BATTLER_ATTACKER

_loop:
    GetMonBySpeedOrder BSCRIPT_VAR_MSG_BATTLER_TEMP

    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_CUSTAP_FLAG, 1, _printMessage
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_QUICK_CLAW_FLAG, 1, _printMessage
    GoTo _continue

_printMessage:
    PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_HELD_ITEM
    Wait 
    // {0} can act faster than normal, thanks to its {1}!
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_ATTACKER, BSCRIPT_VAR_MSG_BATTLER_TEMP
    PrintMessage 1254, TAG_NICKNAME_ITEM, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER
    Wait 
    WaitButtonABTime 30
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_MSG_TEMP, BMON_DATA_CUSTAP_FLAG, 1, _removeCustapBerry

_continue:
    // restore attacker from what it was
    UpdateVarFromVar OPCODE_SET, BSCRIPT_VAR_BATTLER_ATTACKER, BSCRIPT_VAR_CALC_TEMP
    UpdateVar OPCODE_ADD, BSCRIPT_VAR_BATTLER_SPEED_TEMP, 1
    GoToIfValidMon BSCRIPT_VAR_BATTLER_SPEED_TEMP, _loop
    End

_removeCustapBerry:
    RemoveItem BATTLER_CATEGORY_ATTACKER
    GoTo _continue



_Gem:
    UpdateMonData OPCODE_SET, BATTLER_CATEGORY_ATTACKER, BMON_DATA_MICLE_BERRY_FLAG, 0
    /* The flag is set at the start of the turn. We check again here in case the item was removed by Incinerate, Knock Off etc. */
    CompareMonDataToValue OPCODE_EQU, BATTLER_CATEGORY_ATTACKER, BMON_DATA_HELD_ITEM, 0, _063
    PlayBattleAnimation BATTLER_CATEGORY_ATTACKER, BATTLE_ANIMATION_HELD_ITEM
    Wait
    PrintMessage 2151, TAG_NICKNAME_ITEM_MOVE, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER, BATTLER_CATEGORY_ATTACKER
    Wait
    WaitButtonABTime 30
    End
    
_063:
    End 