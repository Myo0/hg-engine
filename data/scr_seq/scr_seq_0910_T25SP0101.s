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

.include "data/scr_seq/include/event_T25SP0101.inc"


// text archive to grab from: 603.txt

.data


scrdef scr_seq_T25SP0101_000
scrdef scr_seq_T25SP0101_001
scrdef scr_seq_T25SP0101_002
scrdef scr_seq_T25SP0101_003
scrdef scr_seq_T25SP0101_004
scrdef scr_seq_T25SP0101_005
scrdef scr_seq_T25SP0101_006
scrdef_end

scr_seq_T25SP0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	hasitem ITEM_COIN_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02B3
	apply_movement obj_T25SP0101_suit, _18C8
	wait_movement
	npc_msg 40
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	casino_game 0, 0
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	setvar VAR_TEMP_x4001, 2
	releaseall
	end

scr_seq_T25SP0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_player_facing VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_ne _02C9
	call _02F1
	goto _0312

scr_seq_T25SP0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	hasitem ITEM_COIN_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0332
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0348
	npc_msg 34
	setvar VAR_TEMP_x4001, 1
	goto _035E

scr_seq_T25SP0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	script_overlay_cmd 3, 0
	npc_msg 0
	touchscreen_menu_hide
	scrcmd_116 0, 20, 2
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 12, 255, 0
	menu_item_add 11, 255, 1
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0366
	goto _0402

scr_seq_T25SP0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	script_overlay_cmd 3, 0
	npc_msg 9
	touchscreen_menu_hide
	scrcmd_116 0, 20, 2
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _040F
	goto _0415

scr_seq_T25SP0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 49
	scrcmd_069 20, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_070 50, 255, 0
	scrcmd_070 51, 255, 1
	scrcmd_070 52, 255, 2
	scrcmd_070 53, 255, 3
	scrcmd_070 54, 255, 4
	scrcmd_070 55, 255, 5
	scrcmd_070 56, 255, 6
	scrcmd_070 57, 255, 7
	scrcmd_070 70, 255, 8
	scrcmd_070 71, 255, 9
	scrcmd_070 45, 255, 10
	scrcmd_071
	switch VAR_SPECIAL_RESULT
	case 0, _0472
	case 1, _0597
	case 2, _0531
	case 3, _04D8
	case 4, _05FD
	case 5, _0663
	case 6, _06D6
	case 7, _073C
	case 8, _07AF
	case 9, _0829
	case 10, _08A9
	goto _08A9

scr_seq_T25SP0101_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	script_overlay_cmd 3, 0
	touchscreen_menu_hide
	npc_msg 42
	show_money_box 1, 1
	scrcmd_116 0, 1, 7
	scrcmd_065 17, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 43, 0
	scrcmd_066 44, 1
	scrcmd_066 45, 2
	scrcmd_067
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _08B2
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08C7
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _08DC
	goto _08DC

_02B3:
	npc_msg 38
	apply_movement obj_T25SP0101_suit, _18C8
	wait_movement
	npc_msg 39
	goto _08EF

_02C9:
	apply_movement obj_T25SP0101_suit, _18C8
	wait_movement
	hasitem ITEM_COIN_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _08F7
	npc_msg 41
	goto _08EF

_02F1:
	get_player_coords VAR_TEMP_x4002, VAR_TEMP_x4003
	compare VAR_TEMP_x4002, 6
	goto_if_ne _0902
	apply_movement obj_T25SP0101_suit, _18D0
	goto _090C

_0312:
	wait_movement
	hasitem ITEM_COIN_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _08F7
	npc_msg 41
	goto _08EF

_0332:
	compare VAR_TEMP_x4001, 0
	goto_if_ne _090E
	npc_msg 28
	goto _0948

_0348:
	compare VAR_TEMP_x4001, 1
	goto_if_ne _097F
	npc_msg 35
	goto _035E

_035E:
	wait_button
	closemsg
	releaseall
	end

_0366:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 14, 255, 0
	menu_item_add 15, 255, 1
	menu_item_add 16, 255, 2
	menu_item_add 17, 255, 3
	menu_item_add 18, 255, 4
	menu_item_add 19, 255, 5
	menu_item_add 11, 255, 6
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _098A
	case 1, _0A13
	case 2, _0A9C
	case 3, _0B25
	case 4, _0BAE
	case 5, _0C37
	goto _0CC0

_0402:
	npc_msg 1
	wait_button
	closemsg
	goto _0CF3

_040F:
	goto _0CFF

_0415:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 24, 255, 0
	menu_item_add 25, 255, 1
	menu_item_add 26, 255, 2
	menu_item_add 11, 255, 3
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0D5C
	case 1, _0D68
	case 2, _0D74
	goto _0402

_0472:
	check_badge BADGE_ZEPHYR, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D80
	npc_msg 59
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _0D89
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08A9
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _0D91
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _0DC4
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _0DF7
	goto _08A9

_04D8:
	check_badge BADGE_FOG, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D80
	npc_msg 62
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _0E2A
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08A9
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _0E32
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _0E65
	goto _08A9

_0531:
	check_badge BADGE_PLAIN, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D80
	npc_msg 64
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _0D89
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08A9
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _0E98
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _0ECB
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _0EFE
	goto _08A9

_0597:
	check_badge BADGE_HIVE, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D80
	npc_msg 65
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _0D89
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08A9
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _0F31
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _0F64
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _0F97
	goto _08A9

_05FD:
	check_badge BADGE_STORM, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D80
	npc_msg 66
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _0D89
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08A9
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _0FCA
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _0FFD
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _1030
	goto _08A9

_0663:
	check_badge BADGE_MINERAL, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D80
	npc_msg 67
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _1063
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08A9
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _106B
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _109E
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _10D1
	compare VAR_SPECIAL_x8004, 3
	goto_if_eq _1104
	goto _08A9

_06D6:
	check_badge BADGE_GLACIER, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D80
	npc_msg 68
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _0D89
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08A9
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _1137
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _116A
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _119D
	goto _08A9

_073C:
	check_badge BADGE_RISING, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D80
	npc_msg 73
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _1063
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08A9
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _11D0
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _1203
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _1236
	compare VAR_SPECIAL_x8004, 3
	goto_if_eq _1269
	goto _08A9

_07AF:
	count_badges VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 12
	goto_if_lt _0D80
	npc_msg 69
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _139B
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08A9
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _129C
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _12CF
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _1302
	compare VAR_SPECIAL_x8004, 3
	goto_if_eq _1335
	compare VAR_SPECIAL_x8004, 4
	goto_if_eq _1368
	end

_0829:
	check_badge BADGE_EARTH, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D80
	npc_msg 72
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _139B
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08A9
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _13A3
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _13D6
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _1409
	compare VAR_SPECIAL_x8004, 3
	goto_if_eq _143C
	compare VAR_SPECIAL_x8004, 4
	goto_if_eq _146F
	goto _08A9

_08A9:
	npc_msg 48
	closemsg
	releaseall
	end

_08B2:
	give_coins 500
	submoneyimmediate 1000
	scrcmd_118 0
	update_money_box
	goto _14A2

_08C7:
	give_coins 1000
	submoneyimmediate 2000
	scrcmd_118 0
	update_money_box
	goto _14A2

_08DC:
	hide_money_box
	scrcmd_117
	touchscreen_menu_show
	script_overlay_cmd 3, 1
	npc_msg 48
	closemsg
	releaseall
	end

_08EF:
	wait_button
	closemsg
	releaseall
	end

_08F7:
	npc_msg 39
	wait_button
	closemsg
	releaseall
	end

_0902:
	apply_movement obj_T25SP0101_suit, _18D8
	return

_090C:
	return

_090E:
	npc_msg 37
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _14B5
	npc_msg 31
	setvar VAR_TEMP_x4001, 1
	giveitem_no_check ITEM_COIN_CASE, 1
	npc_msg 32
	goto _08EF

_0948:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _14B5
	npc_msg 31
	setvar VAR_TEMP_x4001, 1
	giveitem_no_check ITEM_COIN_CASE, 1
	npc_msg 32
	goto _08EF

_097F:
	npc_msg 36
	wait_button
	closemsg
	releaseall
	end

_098A:
	goto_if_no_item_space ITEM_TM077, 1, _14C4
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _14DC
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0366
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _151C
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0366

_0A13:
	goto_if_no_item_space ITEM_TM080, 1, _14C4
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _1525
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0366
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _151C
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0366

_0A9C:
	goto_if_no_item_space ITEM_TM176, 1, _14C4
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _1565
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0366
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _151C
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0366

_0B25:
	goto_if_no_item_space ITEM_TM006, 1, _14C4
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _15A5
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0366
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _151C
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0366

_0BAE:
	goto_if_no_item_space ITEM_TM061, 1, _14C4
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _15E5
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0366
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _151C
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0366

_0C37:
	goto_if_no_item_space ITEM_TM073, 1, _14C4
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _1625
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0366
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _151C
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 1000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0366

_0CC0:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 12, 255, 0
	menu_item_add 11, 255, 1
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0366
	goto _0402

_0CF3:
	scrcmd_117
	touchscreen_menu_show
	script_overlay_cmd 3, 1
	releaseall
	end

_0CFF:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 24, 255, 0
	menu_item_add 27, 255, 1
	menu_item_add 26, 255, 2
	menu_item_add 11, 255, 3
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0D5C
	case 1, _1665
	case 2, _0D74
	goto _0402

_0D5C:
	setorcopyvar VAR_TEMP_x4002, 63
	goto _1671

_0D68:
	setorcopyvar VAR_TEMP_x4002, 23
	goto _1671

_0D74:
	setorcopyvar VAR_TEMP_x4002, 147
	goto _1671

_0D80:
	npc_msg 58
	closemsg
	releaseall
	end

_0D89:
	random VAR_SPECIAL_x8004, 3
	return

_0D91:
	setvar VAR_SPECIAL_x8008, 172
	give_mon SPECIES_PICHU, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_PICHU, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_0DC4:
	setvar VAR_SPECIAL_x8008, 677
	give_mon SPECIES_RUFFLET, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_RUFFLET, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_0DF7:
	setvar VAR_SPECIAL_x8008, 598
	give_mon SPECIES_PETILIL, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_PETILIL, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_0E2A:
	random VAR_SPECIAL_x8004, 2
	return

_0E32:
	setvar VAR_SPECIAL_x8008, 127
	give_mon SPECIES_PINSIR, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_PINSIR, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_0E65:
	setvar VAR_SPECIAL_x8008, 214
	give_mon SPECIES_HERACROSS, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_HERACROSS, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_0E98:
	setvar VAR_SPECIAL_x8008, 609
	give_mon SPECIES_SCRAGGY, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_SCRAGGY, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_0ECB:
	setvar VAR_SPECIAL_x8008, 674
	give_mon SPECIES_PAWNIARD, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_PAWNIARD, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_0EFE:
	setvar VAR_SPECIAL_x8008, 359
	give_mon SPECIES_ABSOL, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_ABSOL, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_0F31:
	setvar VAR_SPECIAL_x8008, 280
	give_mon SPECIES_RALTS, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_RALTS, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_0F64:
	setvar VAR_SPECIAL_x8008, 203
	give_mon SPECIES_GIRAFARIG, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_GIRAFARIG, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_0F97:
	setvar VAR_SPECIAL_x8008, 175
	give_mon SPECIES_TOGEPI, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_TOGEPI, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_0FCA:
	setvar VAR_SPECIAL_x8008, 1326
	give_mon 1326, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, 1326, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_0FFD:
	setvar VAR_SPECIAL_x8008, 1332
	give_mon 1332, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, 1332, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_1030:
	setvar VAR_SPECIAL_x8008, 1335
	give_mon 1335, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, 1335, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_1063:
	random VAR_SPECIAL_x8004, 4
	return

_106B:
	setvar VAR_SPECIAL_x8008, 985
	give_mon SPECIES_CHARCADET, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_CHARCADET, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_109E:
	setvar VAR_SPECIAL_x8008, 216
	give_mon SPECIES_TEDDIURSA, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_TEDDIURSA, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_10D1:
	setvar VAR_SPECIAL_x8008, 147
	give_mon SPECIES_DRATINI, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_DRATINI, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_1104:
	setvar VAR_SPECIAL_x8008, 246
	give_mon SPECIES_LARVITAR, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_LARVITAR, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_1137:
	setvar VAR_SPECIAL_x8008, 374
	give_mon SPECIES_BELDUM, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_BELDUM, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_116A:
	setvar VAR_SPECIAL_x8008, 371
	give_mon SPECIES_BAGON, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_BAGON, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_119D:
	setvar VAR_SPECIAL_x8008, 832
	give_mon SPECIES_JANGMO_O, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_JANGMO_O, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_11D0:
	setvar VAR_SPECIAL_x8008, 443
	give_mon SPECIES_GIBLE, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_GIBLE, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_1203:
	setvar VAR_SPECIAL_x8008, 1046
	give_mon SPECIES_FRIGIBAX, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_FRIGIBAX, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_1236:
	setvar VAR_SPECIAL_x8008, 754
	give_mon SPECIES_GOOMY, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_GOOMY, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_1269:
	setvar VAR_SPECIAL_x8008, 935
	give_mon SPECIES_DREEPY, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_DREEPY, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_129C:
	setvar VAR_SPECIAL_x8008, 251
	give_mon SPECIES_CELEBI, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_CELEBI, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_12CF:
	setvar VAR_SPECIAL_x8008, 385
	give_mon SPECIES_JIRACHI, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_JIRACHI, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_1302:
	setvar VAR_SPECIAL_x8008, 544
	give_mon SPECIES_VICTINI, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_VICTINI, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_1335:
	setvar VAR_SPECIAL_x8008, 490
	give_mon SPECIES_MANAPHY, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_MANAPHY, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_1368:
	setvar VAR_SPECIAL_x8008, 151
	give_mon SPECIES_MEW, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_MEW, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_139B:
	random VAR_SPECIAL_x8004, 5
	return

_13A3:
	setvar VAR_SPECIAL_x8008, 852
	give_mon SPECIES_MARSHADOW, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_MARSHADOW, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_13D6:
	setvar VAR_SPECIAL_x8008, 857
	give_mon SPECIES_ZERAORA, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_ZERAORA, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_1409:
	setvar VAR_SPECIAL_x8008, 492
	give_mon SPECIES_SHAYMIN, 20, 466, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_SHAYMIN, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_143C:
	setvar VAR_SPECIAL_x8008, 698
	give_mon SPECIES_MELOETTA, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_MELOETTA, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_146F:
	setvar VAR_SPECIAL_x8008, 858
	give_mon SPECIES_MELTAN, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_MELTAN, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _08A9

_14A2:
	npc_msg 47
	closemsg
	hide_money_box
	scrcmd_117
	script_overlay_cmd 3, 1
	touchscreen_menu_show
	releaseall
	end

_14B5:
	setvar VAR_TEMP_x4001, 1
	npc_msg 33
	goto _08EF

_14C4:
	npc_msg 5
	closemsg
	compare VAR_SPECIAL_x8004, 417
	goto_if_ne _168F
	goto _0366

_14DC:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _151C
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 2000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0366

_151C:
	npc_msg 2
	goto _16A2

_1525:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _151C
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 4000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0366

_1565:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _151C
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 6000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0366

_15A5:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _151C
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 10000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0366

_15E5:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _151C
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 10000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0366

_1625:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _151C
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	take_coins 10000
	scrcmd_118 0
	buffer_item_name 0, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 1, VAR_SPECIAL_RESULT
	npc_msg 10
	giveitem VAR_SPECIAL_x8004, 1, VAR_SPECIAL_RESULT
	goto _0366

_1665:
	setorcopyvar VAR_TEMP_x4002, 27
	goto _1671

_1671:
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_ne _16B5
	npc_msg 6
	wait_button
	closemsg
	goto _0CF3

_168F:
	compare VAR_SPECIAL_x8004, 402
	goto_if_ne _16EA
	goto _0366

_16A2:
	compare VAR_SPECIAL_x8004, 417
	goto_if_ne _168F
	goto _0366

_16B5:
	buffer_species_name 1, VAR_TEMP_x4002, 0, 0
	npc_msg 7
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _16FD
	closemsg
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _1721
	goto _0415

_16EA:
	compare VAR_SPECIAL_x8004, 371
	goto_if_ne _1727
	goto _0366

_16FD:
	compare VAR_TEMP_x4002, 63
	goto_if_ne _173A
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 200
	goto_if_lt _175E
	goto _1778

_1721:
	goto _0CFF

_1727:
	compare VAR_SPECIAL_x8004, 362
	goto_if_ne _17B2
	goto _0366

_173A:
	compare VAR_TEMP_x4002, 23
	goto_if_ne _17C5
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 700
	goto_if_lt _175E
	goto _1778

_175E:
	npc_msg 2
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _17E9
	goto _0415

_1778:
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	give_mon VAR_TEMP_x4002, 15, 0, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	buffer_species_name 1, VAR_TEMP_x4002, 0, 0
	npc_msg 8
	compare VAR_TEMP_x4002, 63
	goto_if_ne _17EF
	take_coins 200
	goto _1806

_17B2:
	compare VAR_SPECIAL_x8004, 340
	goto_if_ne _1820
	goto _0366

_17C5:
	compare VAR_TEMP_x4002, 27
	goto_if_ne _1833
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 700
	goto_if_lt _175E
	goto _1778

_17E9:
	goto _0CFF

_17EF:
	compare VAR_TEMP_x4002, 23
	goto_if_ne _187E
	take_coins 700
	goto _1806

_1806:
	scrcmd_118 0
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _1895
	goto _0415

_1820:
	compare VAR_SPECIAL_x8004, 351
	goto_if_ne _189B
	goto _0366

_1833:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 2100
	goto_if_lt _175E
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	give_mon VAR_TEMP_x4002, 15, 0, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	buffer_species_name 1, VAR_TEMP_x4002, 0, 0
	npc_msg 8
	compare VAR_TEMP_x4002, 63
	goto_if_ne _17EF
	take_coins 200
	goto _1806

_187E:
	compare VAR_TEMP_x4002, 27
	goto_if_ne _18A1
	take_coins 700
	goto _1806

_1895:
	goto _0CFF

_189B:
	goto _18BF

_18A1:
	take_coins 2100
	scrcmd_118 0
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _1895
	goto _0415

_18BF:
	goto _08A9

	.byte 0x00, 0x00, 0x00
	.balign 4
_18C8:

	step 1, 1
	step_end
	.balign 4
_18D0:

	step 2, 1
	step_end
	.balign 4
_18D8:

	step 3, 1
	step_end
	.balign 4
