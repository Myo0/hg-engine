.include "asm/include/interop_macros.inc"

.include "asm/include/scriptmacros.inc"
.include "asm/include/flags.inc"
.include "asm/include/soundeffects.inc"
.include "asm/include/vars.inc"

.include "asm/include/events.inc"
.include "asm/include/game_stats.inc"
.include "asm/include/maps.inc"
.include "asm/include/map_sections.inc"
.include "asm/include/movements.inc"
.include "asm/include/rankings.inc"
.include "asm/include/spawns.inc"
.include "asm/include/std_scripts.inc"
.include "asm/include/trainers.inc"

#include "constants/item.h"
#include "constants/moves.h"
#include "constants/species.h"

.include "data/scr_seq/include/event_T21PC0101.inc"


// text archive to grab from: 552.txt

.data


scrdef scr_seq_T21PC0101_000
scrdef scr_seq_T21PC0101_001
scrdef scr_seq_T21PC0101_002
scrdef scr_seq_T21PC0101_003
scrdef scr_seq_T21PC0101_004
scrdef scr_seq_T21PC0101_005
scrdef scr_seq_T21PC0101_006
scrdef_end

scr_seq_T21PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T21PC0101_001:
	simple_npc_msg 0
	end

scr_seq_T21PC0101_002:
	simple_npc_msg 1
	end

scr_seq_T21PC0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ELMS_LAB, 3
	goto_if_lt _00A5
	npc_msg 3
	goto _00B0

scr_seq_T21PC0101_004:
	simple_npc_msg 4
	end

scr_seq_T21PC0101_005:
	simple_npc_msg 5
	end

scr_seq_T21PC0101_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 6
	goto _00B8

_00A5:
	npc_msg 2
	wait_button
	closemsg
	releaseall
	end

_00B0:
	wait_button
	closemsg
	releaseall
	end

_00B8:
	setvar VAR_UNK_416C, 0
	scrcmd_065 19, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 7, 0
	scrcmd_066 18, 1
	scrcmd_066 20, 2
	scrcmd_066 22, 3
	scrcmd_067
	copyvar VAR_SPECIAL_x8009, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8009, 0
	goto_if_eq _011B
	compare VAR_SPECIAL_x8009, 1
	goto_if_eq _0232
	compare VAR_SPECIAL_x8009, 2
	goto_if_eq _04E2
	compare VAR_SPECIAL_x8009, 3
	goto_if_eq _05C2
	npc_msg 8
	closemsg
	releaseall
	end

_011B:
	npc_msg 54
	hasitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0676
	scrcmd_065 19, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 9, 0
	scrcmd_066 10, 1
	scrcmd_066 11, 2
	scrcmd_066 12, 3
	scrcmd_066 13, 4
	scrcmd_066 14, 5
	scrcmd_066 15, 6
	scrcmd_067
	copyvar VAR_SPECIAL_x8009, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8009, 0
	goto_if_eq _01C0
	compare VAR_SPECIAL_x8009, 1
	goto_if_eq _01C0
	compare VAR_SPECIAL_x8009, 2
	goto_if_eq _01C0
	compare VAR_SPECIAL_x8009, 3
	goto_if_eq _01C0
	compare VAR_SPECIAL_x8009, 4
	goto_if_eq _01C0
	compare VAR_SPECIAL_x8009, 5
	goto_if_eq _01C0
	compare VAR_SPECIAL_x8009, 6
	goto_if_eq _021E
	goto _021E

_01C0:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8008
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	case 255, _021E
	get_partymon_species VAR_SPECIAL_x8008, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _0227
	scrcmd_208 1, 0
	npc_msg 16
	closemsg
	takeitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	buffer_players_name 3
	npc_msg 61
	closemsg
	releaseall
	end

_021E:
	npc_msg 8
	closemsg
	releaseall
	end

_0227:
	npc_msg 17
	wait_button
	closemsg
	releaseall
	end

_0232:
	npc_msg 56
	closemsg
	hasitem ITEM_HEART_SCALE, 3, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0676
	scrcmd_068 10, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_070 224, 20, 0
	scrcmd_070 225, 20, 1
	scrcmd_070 226, 20, 2
	scrcmd_070 227, 20, 3
	scrcmd_070 228, 20, 4
	scrcmd_070 229, 20, 5
	scrcmd_070 230, 20, 6
	scrcmd_070 231, 20, 7
	scrcmd_070 232, 20, 8
	scrcmd_070 233, 20, 9
	scrcmd_070 234, 20, 10
	scrcmd_070 235, 20, 11
	scrcmd_070 236, 20, 12
	scrcmd_070 237, 20, 13
	scrcmd_070 238, 20, 14
	scrcmd_070 239, 20, 15
	scrcmd_070 240, 20, 16
	scrcmd_070 241, 20, 17
	scrcmd_070 242, 20, 18
	scrcmd_070 243, 20, 19
	scrcmd_070 244, 20, 20
	scrcmd_070 245, 20, 21
	scrcmd_070 246, 20, 22
	scrcmd_070 247, 20, 23
	scrcmd_070 248, 20, 24
	scrcmd_070 249, 20, 25
	scrcmd_071
	copyvar VAR_SPECIAL_x8009, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8009, 0
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 1
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 2
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 3
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 4
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 5
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 6
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 7
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 8
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 9
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 10
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 11
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 12
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 13
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 14
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 15
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 16
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 17
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 18
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 19
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 20
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 21
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 22
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 23
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 24
	goto_if_eq _0484
	compare VAR_SPECIAL_x8009, 25
	goto_if_eq _021E
	goto _021E

_0484:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8008
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	case 255, _021E
	get_partymon_species VAR_SPECIAL_x8008, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _0227
	scrcmd_208 2, 0
	npc_msg 19
	closemsg
	takeitem ITEM_HEART_SCALE, 3, VAR_SPECIAL_RESULT
	buffer_players_name 3
	npc_msg 62
	closemsg
	releaseall
	end

_04E2:
	npc_msg 21
	wait_button
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8002
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8002, 255
	goto_if_eq _021E
	get_partymon_species VAR_SPECIAL_x8002, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _0227
	count_mon_moves VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _05A0
	npc_msg 51
	wait_button
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_394 VAR_SPECIAL_x8002
	scrcmd_395 VAR_SPECIAL_x8001
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8001, 255
	goto_if_eq _021E
	buffer_party_mon_move_name 0, VAR_SPECIAL_x8002, VAR_SPECIAL_x8001
	npc_msg 52
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _05AB
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _05A0
	end

_05A0:
	npc_msg 50
	closemsg
	goto _04E2

_05AB:
	mon_forget_move VAR_SPECIAL_x8002, VAR_SPECIAL_x8001
	play_fanfare SEQ_ME_WASURE
	wait_fanfare
	npc_msg 53
	wait_button
	closemsg
	releaseall
	end

_05C2:
	npc_msg 57
	hasitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0676
	npc_msg 58
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8005
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8005, 255
	goto_if_eq _021E
	get_partymon_species VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0227
	scrcmd_466 VAR_SPECIAL_RESULT, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _067F
	npc_msg 60
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	move_relearner_init VAR_SPECIAL_x8005
	move_relearner_get_result VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _021E
	takeitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	buffer_players_name 3
	npc_msg 61
	end

_0676:
	npc_msg 55
	closemsg
	releaseall
	end

_067F:
	npc_msg 59
	closemsg
	releaseall
	end
	.balign 4
