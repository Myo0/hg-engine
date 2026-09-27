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
	apply_movement obj_T25SP0101_suit, _1888
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
	case 1, _04D8
	case 2, _0531
	case 3, _0597
	case 4, _05FD
	case 5, _0663
	case 6, _06D6
	case 7, _073C
	case 8, _07AF
	case 9, _081E
	case 10, _089E
	goto _089E

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
	goto_if_eq _08A7
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08BC
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _08D1
	goto _08D1

_02B3:
	npc_msg 38
	apply_movement obj_T25SP0101_suit, _1888
	wait_movement
	npc_msg 39
	goto _08E4

_02C9:
	apply_movement obj_T25SP0101_suit, _1888
	wait_movement
	hasitem ITEM_COIN_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _08EC
	npc_msg 41
	goto _08E4

_02F1:
	get_player_coords VAR_TEMP_x4002, VAR_TEMP_x4003
	compare VAR_TEMP_x4002, 6
	goto_if_ne _08F7
	apply_movement obj_T25SP0101_suit, _1890
	goto _0901

_0312:
	wait_movement
	hasitem ITEM_COIN_CASE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _08EC
	npc_msg 41
	goto _08E4

_0332:
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0903
	npc_msg 28
	goto _093D

_0348:
	compare VAR_TEMP_x4001, 1
	goto_if_ne _0974
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
	case 0, _097F
	case 1, _0A08
	case 2, _0A91
	case 3, _0B1A
	case 4, _0BA3
	case 5, _0C2C
	goto _0CB5

_0402:
	npc_msg 1
	wait_button
	closemsg
	goto _0CE8

_040F:
	goto _0CF4

_0415:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 24, 255, 0
	menu_item_add 25, 255, 1
	menu_item_add 26, 255, 2
	menu_item_add 11, 255, 3
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0D51
	case 1, _0D5D
	case 2, _0D69
	goto _0402

_0472:
	check_badge BADGE_ZEPHYR, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D75
	npc_msg 59
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _0D7E
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _089E
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _0D86
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _0DB9
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _0DEC
	goto _089E

_04D8:
	check_badge BADGE_HIVE, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D75
	npc_msg 62
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _0E1F
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _089E
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _0E27
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _0E5A
	goto _089E

_0531:
	check_badge BADGE_PLAIN, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D75
	npc_msg 64
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _0D7E
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _089E
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _0E8D
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _0EC0
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _0EF3
	goto _089E

_0597:
	check_badge BADGE_FOG, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D75
	npc_msg 65
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _0D7E
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _089E
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _0F26
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _0F59
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _0F8C
	goto _089E

_05FD:
	check_badge BADGE_STORM, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D75
	npc_msg 66
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _0D7E
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _089E
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _0FBF
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _0FF2
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _1025
	goto _089E

_0663:
	check_badge BADGE_MINERAL, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D75
	npc_msg 67
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _1058
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _089E
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _1060
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _1093
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _10C6
	compare VAR_SPECIAL_x8004, 3
	goto_if_eq _10F9
	goto _089E

_06D6:
	check_badge BADGE_GLACIER, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D75
	npc_msg 68
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _0D7E
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _089E
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _112C
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _115F
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _1192
	goto _089E

_073C:
	check_badge BADGE_RISING, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D75
	npc_msg 73
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _1058
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _089E
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _11C5
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _11F8
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _122B
	compare VAR_SPECIAL_x8004, 3
	goto_if_eq _125E
	goto _089E

_07AF:
	check_badge BADGE_RAINBOW, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D75
	npc_msg 69
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _1058
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _089E
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _1291
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _12C4
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _12F7
	compare VAR_SPECIAL_x8004, 3
	goto_if_eq _132A
	end

_081E:
	check_badge BADGE_EARTH, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 0
	goto_if_eq _0D75
	npc_msg 72
	closemsg
	npc_msg 60
	yesno VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _135D
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _089E
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _1365
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _1398
	compare VAR_SPECIAL_x8004, 2
	goto_if_eq _13CB
	compare VAR_SPECIAL_x8004, 3
	goto_if_eq _13FE
	compare VAR_SPECIAL_x8004, 4
	goto_if_eq _1431
	goto _089E

_089E:
	npc_msg 48
	closemsg
	releaseall
	end

_08A7:
	give_coins 500
	submoneyimmediate 1000
	scrcmd_118 0
	update_money_box
	goto _1464

_08BC:
	give_coins 1000
	submoneyimmediate 2000
	scrcmd_118 0
	update_money_box
	goto _1464

_08D1:
	hide_money_box
	scrcmd_117
	touchscreen_menu_show
	script_overlay_cmd 3, 1
	npc_msg 48
	closemsg
	releaseall
	end

_08E4:
	wait_button
	closemsg
	releaseall
	end

_08EC:
	npc_msg 39
	wait_button
	closemsg
	releaseall
	end

_08F7:
	apply_movement obj_T25SP0101_suit, _1898
	return

_0901:
	return

_0903:
	npc_msg 37
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _1477
	npc_msg 31
	setvar VAR_TEMP_x4001, 1
	giveitem_no_check ITEM_COIN_CASE, 1
	npc_msg 32
	goto _08E4

_093D:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _1477
	npc_msg 31
	setvar VAR_TEMP_x4001, 1
	giveitem_no_check ITEM_COIN_CASE, 1
	npc_msg 32
	goto _08E4

_0974:
	npc_msg 36
	wait_button
	closemsg
	releaseall
	end

_097F:
	goto_if_no_item_space ITEM_TM077, 1, _1486
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _149E
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0366
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _14DE
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

_0A08:
	goto_if_no_item_space ITEM_TM080, 1, _1486
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _14E7
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0366
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _14DE
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

_0A91:
	goto_if_no_item_space ITEM_TM176, 1, _1486
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _1527
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0366
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _14DE
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

_0B1A:
	goto_if_no_item_space ITEM_TM006, 1, _1486
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _1567
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0366
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _14DE
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

_0BA3:
	goto_if_no_item_space ITEM_TM061, 1, _1486
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _15A7
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0366
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _14DE
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

_0C2C:
	goto_if_no_item_space ITEM_TM073, 1, _1486
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 3
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _15E7
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0366
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _14DE
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

_0CB5:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 12, 255, 0
	menu_item_add 11, 255, 1
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0366
	goto _0402

_0CE8:
	scrcmd_117
	touchscreen_menu_show
	script_overlay_cmd 3, 1
	releaseall
	end

_0CF4:
	menu_init 1, 1, 0, 1, VAR_TEMP_x4000
	menu_item_add 24, 255, 0
	menu_item_add 27, 255, 1
	menu_item_add 26, 255, 2
	menu_item_add 11, 255, 3
	menu_exec
	switch VAR_TEMP_x4000
	case 0, _0D51
	case 1, _1627
	case 2, _0D69
	goto _0402

_0D51:
	setorcopyvar VAR_TEMP_x4002, 63
	goto _1633

_0D5D:
	setorcopyvar VAR_TEMP_x4002, 23
	goto _1633

_0D69:
	setorcopyvar VAR_TEMP_x4002, 147
	goto _1633

_0D75:
	npc_msg 58
	closemsg
	releaseall
	end

_0D7E:
	random VAR_SPECIAL_x8004, 3
	return

_0D86:
	setvar VAR_SPECIAL_x8008, 172
	give_mon SPECIES_PICHU, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_PICHU, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_0DB9:
	setvar VAR_SPECIAL_x8008, 677
	give_mon SPECIES_RUFFLET, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_RUFFLET, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_0DEC:
	setvar VAR_SPECIAL_x8008, 598
	give_mon SPECIES_PETILIL, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_PETILIL, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_0E1F:
	random VAR_SPECIAL_x8004, 2
	return

_0E27:
	setvar VAR_SPECIAL_x8008, 127
	give_mon SPECIES_PINSIR, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_PINSIR, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_0E5A:
	setvar VAR_SPECIAL_x8008, 214
	give_mon SPECIES_HERACROSS, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_HERACROSS, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_0E8D:
	setvar VAR_SPECIAL_x8008, 609
	give_mon SPECIES_SCRAGGY, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_SCRAGGY, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_0EC0:
	setvar VAR_SPECIAL_x8008, 674
	give_mon SPECIES_PAWNIARD, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_PAWNIARD, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_0EF3:
	setvar VAR_SPECIAL_x8008, 359
	give_mon SPECIES_ABSOL, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_ABSOL, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_0F26:
	setvar VAR_SPECIAL_x8008, 280
	give_mon SPECIES_RALTS, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_RALTS, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_0F59:
	setvar VAR_SPECIAL_x8008, 203
	give_mon SPECIES_GIRAFARIG, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_GIRAFARIG, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_0F8C:
	setvar VAR_SPECIAL_x8008, 175
	give_mon SPECIES_TOGEPI, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_TOGEPI, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_0FBF:
	setvar VAR_SPECIAL_x8008, 1326
	give_mon 1326, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, 1326, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_0FF2:
	setvar VAR_SPECIAL_x8008, 1332
	give_mon 1332, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, 1332, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_1025:
	setvar VAR_SPECIAL_x8008, 1335
	give_mon 1335, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, 1335, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_1058:
	random VAR_SPECIAL_x8004, 4
	return

_1060:
	setvar VAR_SPECIAL_x8008, 985
	give_mon SPECIES_CHARCADET, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_CHARCADET, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_1093:
	setvar VAR_SPECIAL_x8008, 216
	give_mon SPECIES_TEDDIURSA, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_TEDDIURSA, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_10C6:
	setvar VAR_SPECIAL_x8008, 147
	give_mon SPECIES_DRATINI, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_DRATINI, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_10F9:
	setvar VAR_SPECIAL_x8008, 246
	give_mon SPECIES_LARVITAR, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_LARVITAR, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_112C:
	setvar VAR_SPECIAL_x8008, 374
	give_mon SPECIES_BELDUM, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_BELDUM, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_115F:
	setvar VAR_SPECIAL_x8008, 371
	give_mon SPECIES_BAGON, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_BAGON, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_1192:
	setvar VAR_SPECIAL_x8008, 832
	give_mon SPECIES_JANGMO_O, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_JANGMO_O, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_11C5:
	setvar VAR_SPECIAL_x8008, 443
	give_mon SPECIES_GIBLE, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_GIBLE, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_11F8:
	setvar VAR_SPECIAL_x8008, 1046
	give_mon SPECIES_FRIGIBAX, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_FRIGIBAX, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_122B:
	setvar VAR_SPECIAL_x8008, 754
	give_mon SPECIES_GOOMY, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_GOOMY, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_125E:
	setvar VAR_SPECIAL_x8008, 935
	give_mon SPECIES_DREEPY, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_DREEPY, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_1291:
	setvar VAR_SPECIAL_x8008, 251
	give_mon SPECIES_CELEBI, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_CELEBI, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_12C4:
	setvar VAR_SPECIAL_x8008, 385
	give_mon SPECIES_JIRACHI, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_JIRACHI, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_12F7:
	setvar VAR_SPECIAL_x8008, 544
	give_mon SPECIES_VICTINI, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_VICTINI, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_132A:
	setvar VAR_SPECIAL_x8008, 490
	give_mon SPECIES_MANAPHY, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_MANAPHY, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_135D:
	random VAR_SPECIAL_x8004, 5
	return

_1365:
	setvar VAR_SPECIAL_x8008, 852
	give_mon SPECIES_MARSHADOW, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_MARSHADOW, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_1398:
	setvar VAR_SPECIAL_x8008, 857
	give_mon SPECIES_ZERAORA, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_ZERAORA, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_13CB:
	setvar VAR_SPECIAL_x8008, 492
	give_mon SPECIES_SHAYMIN, 20, 466, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_SHAYMIN, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_13FE:
	setvar VAR_SPECIAL_x8008, 698
	give_mon SPECIES_MELOETTA, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_MELOETTA, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_1431:
	setvar VAR_SPECIAL_x8008, 858
	give_mon SPECIES_MELTAN, 20, 0, 0, 0, VAR_SPECIAL_RESULT
	scrcmd_208 3, 0
	buffer_players_name 0
	buffer_species_name 1, SPECIES_MELTAN, 0, 0
	npc_msg 61
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	goto _089E

_1464:
	npc_msg 47
	closemsg
	hide_money_box
	scrcmd_117
	script_overlay_cmd 3, 1
	touchscreen_menu_show
	releaseall
	end

_1477:
	setvar VAR_TEMP_x4001, 1
	npc_msg 33
	goto _08E4

_1486:
	npc_msg 5
	closemsg
	compare VAR_SPECIAL_x8004, 417
	goto_if_ne _1651
	goto _0366

_149E:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _14DE
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

_14DE:
	npc_msg 2
	goto _1664

_14E7:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _14DE
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

_1527:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _14DE
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

_1567:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _14DE
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

_15A7:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _14DE
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

_15E7:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 1000
	goto_if_lt _14DE
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

_1627:
	setorcopyvar VAR_TEMP_x4002, 27
	goto _1633

_1633:
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_ne _1677
	npc_msg 6
	wait_button
	closemsg
	goto _0CE8

_1651:
	compare VAR_SPECIAL_x8004, 402
	goto_if_ne _16AC
	goto _0366

_1664:
	compare VAR_SPECIAL_x8004, 417
	goto_if_ne _1651
	goto _0366

_1677:
	buffer_species_name 1, VAR_TEMP_x4002, 0, 0
	npc_msg 7
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _16BF
	closemsg
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _16E3
	goto _0415

_16AC:
	compare VAR_SPECIAL_x8004, 371
	goto_if_ne _16E9
	goto _0366

_16BF:
	compare VAR_TEMP_x4002, 63
	goto_if_ne _16FC
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 200
	goto_if_lt _1720
	goto _173A

_16E3:
	goto _0CF4

_16E9:
	compare VAR_SPECIAL_x8004, 362
	goto_if_ne _1774
	goto _0366

_16FC:
	compare VAR_TEMP_x4002, 23
	goto_if_ne _1787
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 700
	goto_if_lt _1720
	goto _173A

_1720:
	npc_msg 2
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _17AB
	goto _0415

_173A:
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	give_mon VAR_TEMP_x4002, 15, 0, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	buffer_species_name 1, VAR_TEMP_x4002, 0, 0
	npc_msg 8
	compare VAR_TEMP_x4002, 63
	goto_if_ne _17B1
	take_coins 200
	goto _17C8

_1774:
	compare VAR_SPECIAL_x8004, 340
	goto_if_ne _17E2
	goto _0366

_1787:
	compare VAR_TEMP_x4002, 27
	goto_if_ne _17F5
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 700
	goto_if_lt _1720
	goto _173A

_17AB:
	goto _0CF4

_17B1:
	compare VAR_TEMP_x4002, 23
	goto_if_ne _1840
	take_coins 700
	goto _17C8

_17C8:
	scrcmd_118 0
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _1857
	goto _0415

_17E2:
	compare VAR_SPECIAL_x8004, 351
	goto_if_ne _185D
	goto _0366

_17F5:
	get_coin_amount VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8006, 2100
	goto_if_lt _1720
	npc_msg 4
	play_se SEQ_SE_DP_REGI
	give_mon VAR_TEMP_x4002, 15, 0, 0, 0, VAR_SPECIAL_RESULT
	buffer_players_name 0
	buffer_species_name 1, VAR_TEMP_x4002, 0, 0
	npc_msg 8
	compare VAR_TEMP_x4002, 63
	goto_if_ne _17B1
	take_coins 200
	goto _17C8

_1840:
	compare VAR_TEMP_x4002, 27
	goto_if_ne _1863
	take_coins 700
	goto _17C8

_1857:
	goto _0CF4

_185D:
	goto _1881

_1863:
	take_coins 2100
	scrcmd_118 0
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _1857
	goto _0415

_1881:
	goto _089E

	.byte 0x00
	.balign 4
_1888:

	step 1, 1
	step_end
	.balign 4
_1890:

	step 2, 1
	step_end
	.balign 4
_1898:

	step 3, 1
	step_end
	.balign 4
