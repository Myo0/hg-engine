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

.include "data/scr_seq/include/event_R32PC0101.inc"


// text archive to grab from: 381.txt

.data


scrdef scr_seq_R32PC0101_000
scrdef scr_seq_R32PC0101_001
scrdef scr_seq_R32PC0101_002
scrdef scr_seq_R32PC0101_003
scrdef scr_seq_R32PC0101_004
scrdef_end

scr_seq_R32PC0101_000:
	setvar VAR_SPECIAL_x8007, 3
	callstd std_nurse_joy
	end

scr_seq_R32PC0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_OLD_ROD, _00B4
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00BF
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00F3
	end

scr_seq_R32PC0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_LURE_BALL_FROM_ROUTE_32_KURT_FAN, _00FE
	npc_msg 7
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0109
	npc_msg 8
	goto _0140

scr_seq_R32PC0101_003:
	simple_npc_msg 6
	end

scr_seq_R32PC0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 12
	goto _0188

_00B4:
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

_00BF:
	goto_if_no_item_space ITEM_OLD_ROD, 1, _0174
	callstd std_give_item_verbose
	setflag FLAG_GOT_OLD_ROD
	npc_msg 3
	wait_button
	closemsg
	releaseall
	end

_00F3:
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

_00FE:
	npc_msg 11
	wait_button
	closemsg
	releaseall
	end

_0109:
	npc_msg 9
	goto_if_no_item_space ITEM_LURE_BALL, 2, _017E
	callstd std_give_item_verbose
	npc_msg 10
	wait_button
	closemsg
	releaseall
	setflag FLAG_GOT_LURE_BALL_FROM_ROUTE_32_KURT_FAN
	end

_0140:
	goto_if_no_item_space ITEM_LURE_BALL, 2, _017E
	callstd std_give_item_verbose
	npc_msg 10
	wait_button
	closemsg
	releaseall
	setflag FLAG_GOT_LURE_BALL_FROM_ROUTE_32_KURT_FAN
	end

_0174:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_017E:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0188:
	setvar VAR_UNK_416C, 0
	scrcmd_065 19, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 13, 0
	scrcmd_066 24, 1
	scrcmd_066 26, 2
	scrcmd_066 28, 3
	scrcmd_067
	copyvar VAR_SPECIAL_x8009, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8009, 0
	goto_if_eq _01EB
	compare VAR_SPECIAL_x8009, 1
	goto_if_eq _0302
	compare VAR_SPECIAL_x8009, 2
	goto_if_eq _05AA
	compare VAR_SPECIAL_x8009, 3
	goto_if_eq _0690
	npc_msg 14
	closemsg
	releaseall
	end

_01EB:
	npc_msg 60
	hasitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _074D
	scrcmd_065 19, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 15, 0
	scrcmd_066 16, 1
	scrcmd_066 17, 2
	scrcmd_066 18, 3
	scrcmd_066 19, 4
	scrcmd_066 20, 5
	scrcmd_066 21, 6
	scrcmd_067
	copyvar VAR_SPECIAL_x8009, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8009, 0
	goto_if_eq _0290
	compare VAR_SPECIAL_x8009, 1
	goto_if_eq _0290
	compare VAR_SPECIAL_x8009, 2
	goto_if_eq _0290
	compare VAR_SPECIAL_x8009, 3
	goto_if_eq _0290
	compare VAR_SPECIAL_x8009, 4
	goto_if_eq _0290
	compare VAR_SPECIAL_x8009, 5
	goto_if_eq _0290
	compare VAR_SPECIAL_x8009, 6
	goto_if_eq _02EE
	goto _02EE

_0290:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8008
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	case 255, _02EE
	get_partymon_species VAR_SPECIAL_x8008, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _02F7
	scrcmd_208 1, 0
	npc_msg 22
	closemsg
	takeitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	buffer_players_name 3
	npc_msg 67
	closemsg
	releaseall
	end

_02EE:
	npc_msg 14
	closemsg
	releaseall
	end

_02F7:
	npc_msg 23
	wait_button
	closemsg
	releaseall
	end

_0302:
	npc_msg 62
	hasitem ITEM_HEART_SCALE, 3, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _074D
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
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 1
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 2
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 3
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 4
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 5
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 6
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 7
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 8
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 9
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 10
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 11
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 12
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 13
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 14
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 15
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 16
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 17
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 18
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 19
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 20
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 21
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 22
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 23
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 24
	goto_if_eq _054C
	compare VAR_SPECIAL_x8009, 25
	goto_if_eq _0140
	goto _0140

_054C:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8008
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	case 255, _02EE
	get_partymon_species VAR_SPECIAL_x8008, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _02F7
	scrcmd_208 2, 0
	npc_msg 25
	closemsg
	takeitem ITEM_HEART_SCALE, 3, VAR_SPECIAL_RESULT
	buffer_players_name 3
	npc_msg 68
	closemsg
	releaseall
	end

_05AA:
	npc_msg 27
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
	goto_if_eq _02EE
	get_partymon_species VAR_SPECIAL_x8002, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _02F7
	count_mon_moves VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0668
	npc_msg 57
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
	goto_if_eq _02EE
	buffer_party_mon_move_name 0, VAR_SPECIAL_x8002, VAR_SPECIAL_x8001
	npc_msg 58
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0673
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _068A
	end

_0668:
	npc_msg 56
	closemsg
	goto _05AA

_0673:
	mon_forget_move VAR_SPECIAL_x8002, VAR_SPECIAL_x8001
	play_fanfare SEQ_ME_WASURE
	wait_fanfare
	npc_msg 59
	wait_button
	closemsg
	releaseall
	end

_068A:
	goto _05AA

_0690:
	npc_msg 63
	hasitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _074D
	npc_msg 64
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8005
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8005, 255
	goto_if_eq _02EE
	get_partymon_species VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02F7
	scrcmd_466 VAR_SPECIAL_RESULT, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0744
	npc_msg 66
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	move_relearner_init VAR_SPECIAL_x8005
	move_relearner_get_result VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _02EE
	takeitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	buffer_players_name 3
	npc_msg 67
	end

_0744:
	npc_msg 65
	closemsg
	releaseall
	end

_074D:
	npc_msg 61
	closemsg
	releaseall
	end
	.balign 4
