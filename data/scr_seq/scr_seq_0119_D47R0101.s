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

.include "data/scr_seq/include/event_D47R0101.inc"


// text archive to grab from: 135.txt

.data


scrdef scr_seq_D47R0101_000
scrdef scr_seq_D47R0101_001
scrdef scr_seq_D47R0101_002
scrdef scr_seq_D47R0101_003
scrdef scr_seq_D47R0101_004
scrdef scr_seq_D47R0101_005
scrdef scr_seq_D47R0101_006
scrdef scr_seq_D47R0101_007
scrdef scr_seq_D47R0101_008
scrdef scr_seq_D47R0101_009
scrdef scr_seq_D47R0101_010
scrdef scr_seq_D47R0101_011
scrdef scr_seq_D47R0101_012
scrdef_end

scr_seq_D47R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4057, 6
	goto_if_lt _05DB
	npc_msg 15
	goto _0614

scr_seq_D47R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4057, 7
	goto_if_eq _064A
	compare VAR_UNK_4057, 6
	goto_if_lt _0660
	setvar VAR_SPECIAL_RESULT, 500
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 1
	goto _077E

scr_seq_D47R0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4057, 0
	goto_if_eq _088E
	compare VAR_UNK_4057, 1
	goto_if_eq _088E
	compare VAR_UNK_4057, 2
	goto_if_eq _088E
	compare VAR_UNK_4057, 3
	goto_if_eq _088E
	npc_msg 19
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 457, 255, 0
	menu_item_add 458, 255, 1
	menu_item_add 459, 255, 2
	menu_item_add 460, 255, 3
	menu_item_add 461, 255, 4
	menu_item_add 462, 255, 5
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0899
	case 1, _08A2
	case 2, _08AB
	case 3, _08B4
	case 4, _08BD
	goto _08C6

scr_seq_D47R0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4057, 7
	goto_if_eq _08D3
	scrcmd_247
	nat_dex_flag_action 2, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _08E9
	compare VAR_UNK_4057, 6
	goto_if_lt _08F4
	npc_msg 65
	goto _0929

scr_seq_D47R0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4057, 7
	goto_if_eq _095B
	scrcmd_247
	nat_dex_flag_action 2, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _08E9
	scrcmd_824 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0971
	setvar VAR_TEMP_x4000, 0
	scrcmd_823 VAR_TEMP_x4000
	npc_msg 54
	goto _097C

scr_seq_D47R0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4057, 0
	goto_if_eq _0A8C
	compare VAR_UNK_4057, 1
	goto_if_eq _0A8C
	compare VAR_UNK_4057, 2
	goto_if_eq _0A8C
	compare VAR_UNK_4057, 3
	goto_if_eq _0A8C
	buffer_players_name 0
	npc_msg 27
	closemsg
	clearflag FLAG_UNK_99D
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_716
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	goto_if_set FLAG_UNK_99D, _0A97
	releaseall
	end

scr_seq_D47R0101_006:
	scrcmd_609
	lockall
	apply_movement obj_D47R0101_counterm_3, _18B4
	apply_movement obj_D47R0101_counterm_5, _18B4
	wait_movement
	npc_msg 7
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0AB0
	safari_zone_action 1, 0
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0B0B
	apply_movement obj_player, _18BC
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D47R0102, 0, 79, 100, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	lock obj_partner_poke
	scrcmd_606
	apply_movement obj_partner_poke, _18C4
	wait_movement
	release obj_partner_poke
	releaseall
	end

scr_seq_D47R0101_007:
	scrcmd_609
	lockall
	apply_movement obj_player, _18CC
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 5
	goto_if_ne _0B30
	setvar VAR_TEMP_x4002, 5
	setvar VAR_TEMP_x4003, 5
	goto _0B70

scr_seq_D47R0101_008:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D47R0101_gsgentleman, _18D4
	apply_movement obj_D47R0101_seven1, _18E8
	apply_movement obj_D47R0101_gsleader6, _18F0
	apply_movement obj_player, _1904
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 29
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0BA4
	npc_msg 30
	wait_button
	closemsg
	apply_movement obj_D47R0101_gsgentleman, _1914
	wait_movement
	npc_msg 97
	closemsg
	apply_movement obj_D47R0101_gsleader6, _1920
	wait_movement
	npc_msg 98
	closemsg
	apply_movement obj_D47R0101_gsleader6, _18B4
	npc_msg 99
	closemsg
	apply_movement obj_D47R0101_seven1, _1930
	npc_msg 100
	closemsg
	apply_movement obj_D47R0101_gsleader6, _1944
	apply_movement obj_D47R0101_seven1, _1950
	wait_movement
	npc_msg 101
	closemsg
	apply_movement obj_D47R0101_seven1, _196C
	wait_movement
	npc_msg 102
	closemsg
	apply_movement obj_D47R0101_seven1, _1978
	wait_movement
	npc_msg 103
	closemsg
	apply_movement obj_D47R0101_seven1, _1984
	wait_movement
	apply_movement obj_D47R0101_seven1, _1978
	wait_movement
	npc_msg 104
	closemsg
	trainer_battle TRAINER_CAMPER_MICKEY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC2
	apply_movement obj_D47R0101_gsleader6, _18E8
	apply_movement obj_D47R0101_seven1, _1990
	npc_msg 105
	closemsg
	npc_msg 106
	apply_movement obj_D47R0101_seven1, _1990
	closemsg
	buffer_players_name 0
	npc_msg 107
	closemsg
	apply_movement obj_D47R0101_seven1, _1984
	wait_movement
	npc_msg 110
	closemsg
	npc_msg 108
	closemsg
	npc_msg 111
	closemsg
	apply_movement obj_D47R0101_seven1, _1998
	apply_movement obj_D47R0101_gsleader6, _19A8
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_D47R0101_seven1
	wait_se SEQ_SE_DP_KAIDAN2
	npc_msg 109
	closemsg
	apply_movement obj_D47R0101_gsleader6, _1998
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_D47R0101_gsleader6
	setflag FLAG_UNK_A5D
	clearflag FLAG_HIDE_JASMINE_IN_GYM
	clearflag FLAG_HIDE_OLIVINE_GYM_GENTLEMAN
	clearflag FLAG_HIDE_OLIVINE_GYM_GIRL
	setvar VAR_UNK_4057, 2
	releaseall
	end

scr_seq_D47R0101_009:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D47R0101_gsgentleman, _18D4
	apply_movement obj_player, _1904
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 34
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D47R0101_gsgentleman, _19B4
	apply_movement obj_player, _19C4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 35
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D47R0101_gsgentleman, _19D4
	apply_movement obj_player, _19EC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 36
	wait_button
	closemsg
	setvar VAR_UNK_4057, 5
	clearflag FLAG_HIDE_SAFARI_ZONE_WORKERS
	releaseall
	end

scr_seq_D47R0101_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_183, _0BC6
	compare VAR_UNK_4057, 2
	goto_if_eq _0C78
	compare VAR_UNK_4057, 3
	goto_if_eq _0C93
	compare VAR_UNK_4057, 5
	goto_if_eq _0C9C
	compare VAR_UNK_4057, 6
	goto_if_eq _0CE6
	compare VAR_UNK_4057, 7
	goto_if_eq _0CEF
	npc_msg 42
	goto _0DAB

scr_seq_D47R0101_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_247
	nat_dex_flag_action 2, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0DB3
	compare VAR_UNK_4057, 6
	goto_if_lt _0DBE
	npc_msg 93
	goto _0DE1

scr_seq_D47R0101_012:
	lockall
	npc_msg 112
	closemsg
	check_badge BADGE_RISING, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0E01
	releaseall
	end

_05DB:
	npc_msg 14
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0EAA
	setvar VAR_SPECIAL_x8004, 30
	buffer_int 1, VAR_SPECIAL_x8004
	setvar VAR_SPECIAL_x8005, 1000
	buffer_int 2, VAR_SPECIAL_x8005
	npc_msg 16
	wait_button
	closemsg
	releaseall
	end

_0614:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0EAA
	setvar VAR_SPECIAL_x8004, 30
	buffer_int 1, VAR_SPECIAL_x8004
	setvar VAR_SPECIAL_x8005, 1000
	buffer_int 2, VAR_SPECIAL_x8005
	npc_msg 16
	wait_button
	closemsg
	releaseall
	end

_064A:
	goto_if_set FLAG_UNK_183, _0EB5
	npc_msg 18
	wait_button
	closemsg
	releaseall
	end

_0660:
	setvar VAR_SPECIAL_RESULT, 500
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 0
	show_money_box 20, 2
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0ED6
	count_pc_empty_space VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0EE3
	get_party_count VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 6
	goto_if_eq _0FB6
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 500
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0FCE
	setvar VAR_SPECIAL_RESULT, 500
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 2
	play_se SEQ_SE_DP_REGI
	submoneyimmediate 500
	update_money_box
	npc_msg 4
	buffer_players_name 0
	setvar VAR_SPECIAL_RESULT, 30
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 5
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	npc_msg 6
	closemsg
	hide_money_box
	scrcmd_600
	apply_movement obj_player, _19F4
	wait_movement
	scrcmd_307 0, 0, 5, 5, 77
	call _0FE6
	apply_movement obj_player, _1A00
	wait_movement
	call _0FEE
	setvar VAR_SCENE_SAFARI_ZONE_ENTRANCE, 1
	safari_zone_action 0, 0
	set_dynamic_warp MAP_D47R0101, 1, 5, 2, 1
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D47R0102, 0, 79, 100, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	lock obj_partner_poke
	scrcmd_606
	apply_movement obj_partner_poke, _18C4
	wait_movement
	release obj_partner_poke
	releaseall
	end

_077E:
	show_money_box 20, 2
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0ED6
	count_pc_empty_space VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0EE3
	get_party_count VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 6
	goto_if_eq _0FB6
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 500
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0FCE
	setvar VAR_SPECIAL_RESULT, 500
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 2
	play_se SEQ_SE_DP_REGI
	submoneyimmediate 500
	update_money_box
	npc_msg 4
	buffer_players_name 0
	setvar VAR_SPECIAL_RESULT, 30
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 5
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	npc_msg 6
	closemsg
	hide_money_box
	scrcmd_600
	apply_movement obj_player, _19F4
	wait_movement
	scrcmd_307 0, 0, 5, 5, 77
	call _0FE6
	apply_movement obj_player, _1A00
	wait_movement
	call _0FEE
	setvar VAR_SCENE_SAFARI_ZONE_ENTRANCE, 1
	safari_zone_action 0, 0
	set_dynamic_warp MAP_D47R0101, 1, 5, 2, 1
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D47R0102, 0, 79, 100, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	lock obj_partner_poke
	scrcmd_606
	apply_movement obj_partner_poke, _18C4
	wait_movement
	release obj_partner_poke
	releaseall
	end

_088E:
	npc_msg 25
	wait_button
	closemsg
	releaseall
	end

_0899:
	npc_msg 20
	goto _0FF9

_08A2:
	npc_msg 21
	goto _0FF9

_08AB:
	npc_msg 22
	goto _0FF9

_08B4:
	npc_msg 23
	goto _0FF9

_08BD:
	npc_msg 24
	goto _0FF9

_08C6:
	touchscreen_menu_show
	npc_msg 26
	wait_button
	closemsg
	releaseall
	end

_08D3:
	goto_if_set FLAG_UNK_183, _1080
	npc_msg 18
	wait_button
	closemsg
	releaseall
	end

_08E9:
	npc_msg 84
	wait_button
	closemsg
	releaseall
	end

_08F4:
	npc_msg 66
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _10AA
	callstd std_prompt_save
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _10B7
	goto _1104

_0929:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _10AA
	callstd std_prompt_save
	copyvar VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _10B7
	goto _1104

_095B:
	goto_if_set FLAG_UNK_183, _110F
	npc_msg 18
	wait_button
	closemsg
	releaseall
	end

_0971:
	npc_msg 60
	wait_button
	closemsg
	releaseall
	end

_097C:
	show_money_box 20, 2
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _1147
	count_pc_empty_space VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _1154
	get_party_count VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 6
	goto_if_eq _1227
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 500
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _123F
	setvar VAR_SPECIAL_RESULT, 500
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 55
	play_se SEQ_SE_DP_REGI
	submoneyimmediate 500
	update_money_box
	npc_msg 57
	buffer_players_name 0
	setvar VAR_SPECIAL_RESULT, 30
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 58
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	npc_msg 59
	closemsg
	hide_money_box
	scrcmd_600
	apply_movement obj_player, _19F4
	wait_movement
	scrcmd_307 0, 0, 19, 5, 77
	call _0FE6
	apply_movement obj_player, _1A00
	wait_movement
	call _0FEE
	setvar VAR_SCENE_SAFARI_ZONE_ENTRANCE, 3
	safari_zone_action 0, 1
	set_dynamic_warp MAP_D47R0101, 2, 19, 2, 1
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D47R0102, 0, 79, 100, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	lock obj_partner_poke
	scrcmd_606
	apply_movement obj_partner_poke, _18C4
	wait_movement
	release obj_partner_poke
	releaseall
	end

_0A8C:
	npc_msg 28
	wait_button
	closemsg
	releaseall
	end

_0A97:
	screen_shake 0, 2, 10, 6
	play_se SEQ_SE_DP_KI_GASYAN
	npc_msg 91
	wait_button
	closemsg
	releaseall
	end

_0AB0:
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0B0B
	apply_movement obj_player, _18BC
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D47R0102, 0, 79, 100, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	lock obj_partner_poke
	scrcmd_606
	apply_movement obj_partner_poke, _18C4
	wait_movement
	release obj_partner_poke
	releaseall
	end

_0B0B:
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 5
	goto_if_ne _1257
	setvar VAR_TEMP_x4002, 5
	setvar VAR_TEMP_x4003, 5
	goto _12B4

_0B30:
	setvar VAR_TEMP_x4002, 19
	setvar VAR_TEMP_x4003, 5
	scrcmd_307 0, 0, VAR_TEMP_x4002, VAR_TEMP_x4003, 77
	call _0FE6
	apply_movement obj_player, _1A08
	wait_movement
	call _0FEE
	setvar VAR_SCENE_SAFARI_ZONE_ENTRANCE, 0
	npc_msg 9
	wait_button
	closemsg
	scrcmd_606
	releaseall
	end

_0B70:
	scrcmd_307 0, 0, VAR_TEMP_x4002, VAR_TEMP_x4003, 77
	call _0FE6
	apply_movement obj_player, _1A08
	wait_movement
	call _0FEE
	setvar VAR_SCENE_SAFARI_ZONE_ENTRANCE, 0
	npc_msg 9
	wait_button
	closemsg
	scrcmd_606
	releaseall
	end

_0BA4:
	npc_msg 31
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0BA4
	goto _1305

_0BC2:
	white_out
	end

_0BC6:
	npc_msg 45
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _1417
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 463, 255, 0
	menu_item_add 464, 255, 1
	menu_item_add 465, 255, 2
	menu_item_add 466, 255, 3
	menu_item_add 467, 255, 4
	menu_item_add 468, 255, 5
	menu_item_add 469, 255, 6
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _1424
	case 1, _142D
	case 2, _1436
	case 3, _143F
	case 4, _1448
	case 5, _1451
	goto _1417

_0C78:
	scrcmd_791 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _145A
	npc_msg 33
	goto _146B

_0C93:
	npc_msg 42
	goto _0DAB

_0C9C:
	scrcmd_791 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _1471
	npc_msg 37
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _147A
	apply_movement obj_D47R0101_gsgentleman, _1A18
	apply_movement obj_player, _1A2C
	wait_movement
	goto _149F

_0CE6:
	npc_msg 40
	goto _0DAB

_0CEF:
	setflag FLAG_UNK_183
	npc_msg 43
	npc_msg 44
	npc_msg 45
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _1417
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 463, 255, 0
	menu_item_add 464, 255, 1
	menu_item_add 465, 255, 2
	menu_item_add 466, 255, 3
	menu_item_add 467, 255, 4
	menu_item_add 468, 255, 5
	menu_item_add 469, 255, 6
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _1424
	case 1, _142D
	case 2, _1436
	case 3, _143F
	case 4, _1448
	case 5, _1451
	goto _1417

_0DAB:
	wait_button
	closemsg
	releaseall
	end

_0DB3:
	npc_msg 92
	wait_button
	closemsg
	releaseall
	end

_0DBE:
	npc_msg 94
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _14D1
	npc_msg 95
	wait_button
	closemsg
	releaseall
	end

_0DE1:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _14D1
	npc_msg 95
	wait_button
	closemsg
	releaseall
	end

_0E01:
	goto_if_set FLAG_UNK_A64, _14DC
	npc_msg 114
	closemsg
	apply_movement obj_player, _18E8
	wait_movement
	npc_msg 113
	closemsg
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _14E5
	npc_msg 117
	closemsg
	party_count_not_egg VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _14EE
	npc_msg 119
	closemsg
	random VAR_SPECIAL_x8006, 7
	compare VAR_SPECIAL_x8006, 0
	goto_if_eq _14F7
	compare VAR_SPECIAL_x8006, 1
	goto_if_eq _1526
	compare VAR_SPECIAL_x8006, 2
	goto_if_eq _1555
	compare VAR_SPECIAL_x8006, 3
	goto_if_eq _1584
	compare VAR_SPECIAL_x8006, 4
	goto_if_eq _15B3
	compare VAR_SPECIAL_x8006, 5
	goto_if_eq _15E2
	goto _1611

_0EAA:
	npc_msg 17
	wait_button
	closemsg
	releaseall
	end

_0EB5:
	compare VAR_UNK_4057, 6
	goto_if_lt _0660
	setvar VAR_SPECIAL_RESULT, 500
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 1
	goto _077E

_0ED6:
	hide_money_box
	npc_msg 3
	wait_button
	closemsg
	releaseall
	end

_0EE3:
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 500
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0FCE
	setvar VAR_SPECIAL_RESULT, 500
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 2
	play_se SEQ_SE_DP_REGI
	submoneyimmediate 500
	update_money_box
	npc_msg 4
	buffer_players_name 0
	setvar VAR_SPECIAL_RESULT, 30
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 5
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	npc_msg 6
	closemsg
	hide_money_box
	scrcmd_600
	apply_movement obj_player, _19F4
	wait_movement
	scrcmd_307 0, 0, 5, 5, 77
	call _0FE6
	apply_movement obj_player, _1A00
	wait_movement
	call _0FEE
	setvar VAR_SCENE_SAFARI_ZONE_ENTRANCE, 1
	safari_zone_action 0, 0
	set_dynamic_warp MAP_D47R0101, 1, 5, 2, 1
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D47R0102, 0, 79, 100, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	lock obj_partner_poke
	scrcmd_606
	apply_movement obj_partner_poke, _18C4
	wait_movement
	release obj_partner_poke
	releaseall
	end

_0FB6:
	hide_money_box
	compare VAR_UNK_4057, 6
	goto_if_lt _1640
	npc_msg 13
	goto _164B

_0FCE:
	hide_money_box
	compare VAR_UNK_4057, 6
	goto_if_lt _1653
	npc_msg 11
	goto _165E

_0FE6:
	scrcmd_310 77
	scrcmd_308 77
	return

_0FEE:
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	return

_0FF9:
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 457, 255, 0
	menu_item_add 458, 255, 1
	menu_item_add 459, 255, 2
	menu_item_add 460, 255, 3
	menu_item_add 461, 255, 4
	menu_item_add 462, 255, 5
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0899
	case 1, _08A2
	case 2, _08AB
	case 3, _08B4
	case 4, _08BD
	goto _08C6

_1080:
	scrcmd_247
	nat_dex_flag_action 2, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _08E9
	compare VAR_UNK_4057, 6
	goto_if_lt _08F4
	npc_msg 65
	goto _0929

_10AA:
	npc_msg 85
	wait_button
	closemsg
	touchscreen_menu_show
	releaseall
	end

_10B7:
	touchscreen_menu_hide
	npc_msg 71
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 14, 255, 0
	menu_item_add 15, 255, 1
	menu_item_add 5, 255, 2
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _1666
	case 1, _16BD
	goto _10AA

_1104:
	npc_msg 85
	wait_button
	closemsg
	releaseall
	end

_110F:
	scrcmd_247
	nat_dex_flag_action 2, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _08E9
	scrcmd_824 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0971
	setvar VAR_TEMP_x4000, 0
	scrcmd_823 VAR_TEMP_x4000
	npc_msg 54
	goto _097C

_1147:
	hide_money_box
	npc_msg 3
	wait_button
	closemsg
	releaseall
	end

_1154:
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 500
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _123F
	setvar VAR_SPECIAL_RESULT, 500
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 55
	play_se SEQ_SE_DP_REGI
	submoneyimmediate 500
	update_money_box
	npc_msg 57
	buffer_players_name 0
	setvar VAR_SPECIAL_RESULT, 30
	buffer_int 1, VAR_SPECIAL_RESULT
	npc_msg 58
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	npc_msg 59
	closemsg
	hide_money_box
	scrcmd_600
	apply_movement obj_player, _19F4
	wait_movement
	scrcmd_307 0, 0, 19, 5, 77
	call _0FE6
	apply_movement obj_player, _1A00
	wait_movement
	call _0FEE
	setvar VAR_SCENE_SAFARI_ZONE_ENTRANCE, 3
	safari_zone_action 0, 1
	set_dynamic_warp MAP_D47R0101, 2, 19, 2, 1
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D47R0102, 0, 79, 100, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	lock obj_partner_poke
	scrcmd_606
	apply_movement obj_partner_poke, _18C4
	wait_movement
	release obj_partner_poke
	releaseall
	end

_1227:
	hide_money_box
	compare VAR_UNK_4057, 6
	goto_if_lt _1714
	npc_msg 13
	goto _171F

_123F:
	hide_money_box
	compare VAR_UNK_4057, 6
	goto_if_lt _1727
	npc_msg 11
	goto _1732

_1257:
	setvar VAR_TEMP_x4002, 19
	setvar VAR_TEMP_x4003, 5
	apply_movement obj_player, _1A44
	wait_movement
	scrcmd_307 0, 0, VAR_TEMP_x4002, VAR_TEMP_x4003, 77
	call _0FE6
	apply_movement obj_player, _1A08
	apply_movement obj_D47R0101_counterm_3, _1A4C
	apply_movement obj_D47R0101_counterm_5, _1A4C
	wait_movement
	call _0FEE
	setvar VAR_SCENE_SAFARI_ZONE_ENTRANCE, 0
	npc_msg 8
	npc_msg 9
	wait_button
	closemsg
	scrcmd_606
	releaseall
	end

_12B4:
	apply_movement obj_player, _1A44
	wait_movement
	scrcmd_307 0, 0, VAR_TEMP_x4002, VAR_TEMP_x4003, 77
	call _0FE6
	apply_movement obj_player, _1A08
	apply_movement obj_D47R0101_counterm_3, _1A4C
	apply_movement obj_D47R0101_counterm_5, _1A4C
	wait_movement
	call _0FEE
	setvar VAR_SCENE_SAFARI_ZONE_ENTRANCE, 0
	npc_msg 8
	npc_msg 9
	wait_button
	closemsg
	scrcmd_606
	releaseall
	end

_1305:
	npc_msg 30
	wait_button
	closemsg
	npc_msg 97
	closemsg
	apply_movement obj_D47R0101_gsleader6, _1920
	wait_movement
	npc_msg 98
	closemsg
	apply_movement obj_D47R0101_gsleader6, _18B4
	npc_msg 99
	closemsg
	apply_movement obj_D47R0101_seven1, _1930
	npc_msg 100
	closemsg
	apply_movement obj_D47R0101_gsleader6, _1944
	apply_movement obj_D47R0101_seven1, _1950
	wait_movement
	npc_msg 101
	closemsg
	apply_movement obj_D47R0101_seven1, _196C
	wait_movement
	npc_msg 102
	closemsg
	apply_movement obj_D47R0101_seven1, _1978
	wait_movement
	npc_msg 103
	closemsg
	apply_movement obj_D47R0101_seven1, _18C4
	wait_movement
	apply_movement obj_D47R0101_seven1, _1978
	wait_movement
	npc_msg 104
	closemsg
	trainer_battle TRAINER_CAMPER_MICKEY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC2
	apply_movement obj_D47R0101_gsleader6, _18E8
	apply_movement obj_D47R0101_seven1, _1990
	npc_msg 105
	closemsg
	npc_msg 106
	apply_movement obj_D47R0101_seven1, _1990
	closemsg
	buffer_players_name 0
	npc_msg 107
	closemsg
	npc_msg 108
	closemsg
	apply_movement obj_D47R0101_seven1, _1998
	apply_movement obj_D47R0101_gsleader6, _19A8
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_D47R0101_seven1
	wait_se SEQ_SE_DP_KAIDAN2
	npc_msg 109
	closemsg
	apply_movement obj_D47R0101_gsleader6, _19A8
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_D47R0101_gsleader6
	setflag FLAG_UNK_A5D
	clearflag FLAG_HIDE_JASMINE_IN_GYM
	setvar VAR_UNK_4057, 2
	releaseall
	end

_1417:
	touchscreen_menu_show
	npc_msg 53
	wait_button
	closemsg
	releaseall
	end

_1424:
	npc_msg 47
	goto _173A

_142D:
	npc_msg 48
	goto _173A

_1436:
	npc_msg 49
	goto _173A

_143F:
	npc_msg 50
	goto _173A

_1448:
	npc_msg 51
	goto _173A

_1451:
	npc_msg 52
	goto _173A

_145A:
	npc_msg 32
	setvar VAR_UNK_4057, 3
	scrcmd_792
	goto _0DAB

_146B:
	goto _0DAB

_1471:
	npc_msg 41
	goto _0DAB

_147A:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _17D6
	apply_movement obj_D47R0101_gsgentleman, _1A58
	apply_movement obj_player, _1A68
	wait_movement
	goto _149F

_149F:
	npc_msg 38
	closemsg
	apply_movement obj_D47R0101_gsgentleman, _1A74
	apply_movement obj_player, _1A88
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 39
	setvar VAR_UNK_4057, 6
	scrcmd_792
	goto _0DAB

_14D1:
	npc_msg 96
	wait_button
	closemsg
	releaseall
	end

_14DC:
	npc_msg 115
	closemsg
	releaseall
	end

_14E5:
	npc_msg 116
	closemsg
	releaseall
	end

_14EE:
	npc_msg 118
	closemsg
	releaseall
	end

_14F7:
	rocket_trap_battle SPECIES_RAIKOU, 70
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC2
	npc_msg 120
	closemsg
	setflag FLAG_UNK_A64
	setvar VAR_SPECIAL_x8008, 243
	scrcmd_208 3, 0
	releaseall
	end

_1526:
	rocket_trap_battle SPECIES_ENTEI, 70
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC2
	npc_msg 120
	closemsg
	setflag FLAG_UNK_A64
	setvar VAR_SPECIAL_x8008, 244
	scrcmd_208 3, 0
	releaseall
	end

_1555:
	rocket_trap_battle SPECIES_TORNADUS, 70
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC2
	npc_msg 120
	closemsg
	setflag FLAG_UNK_A64
	setvar VAR_SPECIAL_x8008, 691
	scrcmd_208 3, 0
	releaseall
	end

_1584:
	rocket_trap_battle SPECIES_CRESSELIA, 70
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC2
	npc_msg 120
	closemsg
	setflag FLAG_UNK_A64
	setvar VAR_SPECIAL_x8008, 488
	scrcmd_208 3, 0
	releaseall
	end

_15B3:
	rocket_trap_battle SPECIES_THUNDURUS, 70
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC2
	npc_msg 120
	closemsg
	setflag FLAG_UNK_A64
	setvar VAR_SPECIAL_x8008, 692
	scrcmd_208 3, 0
	releaseall
	end

_15E2:
	rocket_trap_battle SPECIES_REGIELEKI, 70
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC2
	npc_msg 120
	closemsg
	setflag FLAG_UNK_A64
	setvar VAR_SPECIAL_x8008, 944
	scrcmd_208 3, 0
	releaseall
	end

_1611:
	rocket_trap_battle SPECIES_LANDORUS, 70
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC2
	npc_msg 120
	closemsg
	setflag FLAG_UNK_A64
	setvar VAR_SPECIAL_x8008, 695
	scrcmd_208 3, 0
	releaseall
	end

_1640:
	npc_msg 12
	wait_button
	closemsg
	releaseall
	end

_164B:
	wait_button
	closemsg
	releaseall
	end

_1653:
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_165E:
	wait_button
	closemsg
	releaseall
	end

_1666:
	npc_msg 86
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _10B7
	setvar VAR_SPECIAL_x8004, 39
	setvar VAR_SPECIAL_x8005, 0
	scrcmd_226 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _181A
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _1824
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _1833
	goto _1842

_16BD:
	npc_msg 86
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _10B7
	setvar VAR_SPECIAL_x8004, 39
	setvar VAR_SPECIAL_x8005, 0
	scrcmd_227 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _188C
	compare VAR_SPECIAL_RESULT, 3
	goto_if_eq _1896
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _18A5
	goto _1842

_1714:
	npc_msg 12
	wait_button
	closemsg
	releaseall
	end

_171F:
	wait_button
	closemsg
	releaseall
	end

_1727:
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_1732:
	wait_button
	closemsg
	releaseall
	end

_173A:
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 463, 255, 0
	menu_item_add 464, 255, 1
	menu_item_add 465, 255, 2
	menu_item_add 466, 255, 3
	menu_item_add 467, 255, 4
	menu_item_add 468, 255, 5
	menu_item_add 469, 255, 6
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _1424
	case 1, _142D
	case 2, _1436
	case 3, _143F
	case 4, _1448
	case 5, _1451
	goto _1417

_17D6:
	apply_movement obj_D47R0101_gsgentleman, _1A58
	apply_movement obj_player, _1A94
	wait_movement
	npc_msg 38
	closemsg
	apply_movement obj_D47R0101_gsgentleman, _1A74
	apply_movement obj_player, _1A88
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 39
	setvar VAR_UNK_4057, 6
	scrcmd_792
	goto _0DAB

_181A:
	scrcmd_283
	touchscreen_menu_hide
	goto _10B7

_1824:
	scrcmd_283
	touchscreen_menu_show
	npc_msg 87
	wait_button
	closemsg
	releaseall
	end

_1833:
	scrcmd_283
	npc_msg 85
	wait_button
	closemsg
	touchscreen_menu_show
	releaseall
	end

_1842:
	setvar VAR_UNK_4133, 1
	npc_msg 81
	scrcmd_257 96
	scrcmd_822
	scrcmd_283
	setvar VAR_TEMP_x4000, 0
	scrcmd_823 VAR_TEMP_x4000
	touchscreen_menu_hide
	npc_msg 82
	npc_msg 88
	add_waiting_icon
	save_game_normal VAR_SPECIAL_RESULT
	remove_waiting_icon
	buffer_players_name 0
	npc_msg 89
	play_se SEQ_SE_DP_SAVE
	wait_se SEQ_SE_DP_SAVE
	npc_msg 83
	setvar VAR_UNK_4133, 0
	touchscreen_menu_show
	closemsg
	releaseall
	end

_188C:
	scrcmd_283
	touchscreen_menu_hide
	goto _10B7

_1896:
	scrcmd_283
	npc_msg 87
	wait_button
	closemsg
	touchscreen_menu_show
	releaseall
	end

_18A5:
	scrcmd_283
	npc_msg 85
	wait_button
	closemsg
	touchscreen_menu_show
	releaseall
	end

	.balign 4
_18B4:

	step 3, 1
	step_end
	.balign 4
_18BC:

	step 12, 1
	step_end
	.balign 4
_18C4:

	step 0, 1
	step_end
	.balign 4
_18CC:

	step 13, 2
	step_end
	.balign 4
_18D4:

	step 1, 1
	step 75, 1
	step 65, 1
	step 14, 1
	step_end
	.balign 4
_18E8:

	step 75, 1
	step_end
	.balign 4
_18F0:

	step 75, 1
	step 1, 1
	step 65, 1
	step 2, 1
	step_end
	.balign 4
_1904:

	step 65, 1
	step 12, 3
	step 3, 1
	step_end
	.balign 4
_1914:

	step 12, 1
	step 1, 1
	step_end
	.balign 4
_1920:

	step 14, 2
	step 12, 2
	step 2, 1
	step_end
	.balign 4
_1930:

	step 71, 1
	step 75, 1
	step 34, 1
	step 72, 1
	step_end
	.balign 4
_1944:

	step 12, 1
	step 1, 1
	step_end
	.balign 4
_1950:

	step 13, 1
	step 14, 4
	step 12, 2
	step 14, 1
	step 12, 1
	step 2, 1
	step_end
	.balign 4
_196C:

	step 1, 1
	step 33, 1
	step_end
	.balign 4
_1978:

	step 2, 1
	step 34, 2
	step_end
	.balign 4
_1984:

	step 0, 1
	step 32, 1
	step_end
	.balign 4
_1990:

	step 34, 1
	step_end
	.balign 4
_1998:

	step 13, 2
	step 14, 1
	step 13, 1
	step_end
	.balign 4
_19A8:

	step 13, 1
	step 2, 1
	step_end
	.balign 4
_19B4:

	step 12, 2
	step 15, 3
	step 12, 1
	step_end
	.balign 4
_19C4:

	step 12, 2
	step 15, 4
	step 12, 1
	step_end
	.balign 4
_19D4:

	step 13, 2
	step 14, 2
	step 13, 1
	step 75, 1
	step 0, 1
	step_end
	.balign 4
_19EC:

	step 1, 1
	step_end
	.balign 4
_19F4:

	step 15, 1
	step 0, 1
	step_end
	.balign 4
_1A00:

	step 12, 4
	step_end
	.balign 4
_1A08:

	step 13, 2
	step 14, 1
	step 32, 1
	step_end
	.balign 4
_1A18:

	step 14, 2
	step 12, 4
	step 15, 4
	step 1, 1
	step_end
	.balign 4
_1A2C:

	step 65, 1
	step 0, 1
	step 65, 1
	step 13, 1
	step 0, 1
	step_end
	.balign 4
_1A44:

	step 13, 1
	step_end
	.balign 4
_1A4C:

	step 63, 1
	step 1, 1
	step_end
	.balign 4
_1A58:

	step 12, 4
	step 15, 2
	step 1, 1
	step_end
	.balign 4
_1A68:

	step 15, 1
	step 0, 1
	step_end
	.balign 4
_1A74:

	step 13, 2
	step 15, 1
	step 13, 2
	step 2, 1
	step_end
	.balign 4
_1A88:

	step 65, 3
	step 3, 1
	step_end
	.balign 4
_1A94:

	step 12, 1
	step_end
	.balign 4
