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

.include "data/scr_seq/include/event_T27R0501.inc"


// text archive to grab from: 618.txt

.data


scrdef scr_seq_T27R0501_000
scrdef scr_seq_T27R0501_001
scrdef scr_seq_T27R0501_002
scrdef scr_seq_T27R0501_003
scrdef scr_seq_T27R0501_004
scrdef scr_seq_T27R0501_005
scrdef scr_seq_T27R0501_006
scrdef scr_seq_T27R0501_007
scrdef scr_seq_T27R0501_008
scrdef scr_seq_T27R0501_009
scrdef scr_seq_T27R0501_010
scrdef scr_seq_T27R0501_011
scrdef scr_seq_T27R0501_012
scrdef scr_seq_T27R0501_013
scrdef scr_seq_T27R0501_014
scrdef scr_seq_T27R0501_015
scrdef scr_seq_T27R0501_016
scrdef_end

scr_seq_T27R0501_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_HM03, _0471
	npc_msg 25
	wait_button
	closemsg
	releaseall
	end

scr_seq_T27R0501_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_PSYDUCK, 0
	npc_msg 30
	wait_cry
	wait_button
	closemsg
	releaseall
	end

scr_seq_T27R0501_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_TEMP_x400A, 10
	goto_if_eq _047C
	compare VAR_UNK_410C, 1
	goto_if_eq _0487
	npc_msg 31
	wait_button
	closemsg
	releaseall
	end

scr_seq_T27R0501_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	stop_bgm 0
	play_bgm SEQ_GS_EYE_ROCKET
	npc_msg 5
	closemsg
	setvar VAR_TEMP_x4009, 222
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_26, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _049D
	setflag FLAG_UNK_83F
	npc_msg 6
	closemsg
	get_player_facing VAR_SPECIAL_x8004
	compare VAR_SPECIAL_x8004, 0
	goto_if_ne _04A3
	apply_movement obj_T27R0501_rocketm_2, _0EEC
	goto _04BE

scr_seq_T27R0501_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_410C, 1
	goto_if_eq _04E0
	compare VAR_TEMP_x400A, 10
	goto_if_eq _04EB
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

scr_seq_T27R0501_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_108, _04F9
	goto_if_set FLAG_UNK_109, _04F9
	npc_msg 19
	wait_button
	closemsg
	releaseall
	end

scr_seq_T27R0501_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_108, _0504
	goto_if_set FLAG_UNK_109, _0504
	npc_msg 19
	wait_button
	closemsg
	releaseall
	end

scr_seq_T27R0501_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8000, 77
	goto_if_set FLAG_UNK_108, _050F
	goto_if_set FLAG_UNK_109, _050F
	npc_msg 13
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x8004
	touchscreen_menu_show
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _0521
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	call_if_ne _0530
	goto _0555

scr_seq_T27R0501_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_108, _06B5
	goto_if_set FLAG_UNK_109, _06B5
	npc_msg 19
	wait_button
	closemsg
	releaseall
	end

scr_seq_T27R0501_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_108, _06C0
	goto_if_set FLAG_UNK_109, _06C0
	npc_msg 19
	wait_button
	closemsg
	releaseall
	end

scr_seq_T27R0501_010:
	simple_npc_msg 39
	end

scr_seq_T27R0501_011:
	scrcmd_609
	lockall
	apply_movement obj_T27R0501_gsgentleman, _0EFC
	wait_movement
	npc_msg 26
	goto_if_no_item_space ITEM_HM03, 1, _06CB
	callstd std_give_item_verbose
	setflag FLAG_GOT_HM03
	setvar VAR_UNK_410C, 3
	setvar VAR_UNK_4090, 1
	npc_msg 28
	closemsg
	apply_movement obj_T27R0501_gsgentleman, _0F0C
	wait_movement
	releaseall
	end

scr_seq_T27R0501_012:
	scrcmd_609
	lockall
	apply_movement obj_T27R0501_gsgentleman, _0F20
	wait_movement
	npc_msg 26
	goto_if_no_item_space ITEM_HM03, 1, _06CB
	callstd std_give_item_verbose
	setflag FLAG_GOT_HM03
	setvar VAR_UNK_4090, 1
	setvar VAR_UNK_410C, 3
	npc_msg 28
	closemsg
	apply_movement obj_T27R0501_gsgentleman, _0F30
	wait_movement
	releaseall
	end

scr_seq_T27R0501_013:
	compare VAR_UNK_410C, 1
	goto_if_gt _06D5
	make_object_visible obj_T27R0501_rocketm_2
	compare VAR_UNK_410C, 0
	goto_if_ne _073A
	move_person_facing obj_T27R0501_rocketm, 6, 0, 6, DIR_EAST
	move_person_facing obj_T27R0501_dancer_3, 8, 0, 6, DIR_WEST
	compare VAR_TEMP_x4009, 222
	goto_if_ne _077A
	move_person_facing obj_T27R0501_rocketm, 29, 0, 29, DIR_SOUTH
	make_object_visible obj_T27R0501_rocketm
	get_player_facing VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _07A2
	move_person_facing obj_T27R0501_rocketm_2, 7, 0, 6, DIR_SOUTH
	goto _07C1

scr_seq_T27R0501_014:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_TEMP_x400A, 10
	goto_if_eq _07F3
	compare VAR_UNK_410C, 1
	goto_if_eq _07FE
	npc_msg 36
	wait_button
	closemsg
	releaseall
	end

scr_seq_T27R0501_015:
	scrcmd_609
	lockall
	npc_msg 0
	closemsg
	apply_movement obj_T27R0501_rocketm, _0F44
	wait_movement
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	apply_movement 241, _0F4C
	wait_movement
	wait 10, VAR_SPECIAL_RESULT
	apply_movement obj_T27R0501_rocketm, _0F54
	wait_movement
	npc_msg 1
	closemsg
	apply_movement obj_T27R0501_dancer_3, _0F5C
	wait_movement
	npc_msg 2
	closemsg
	apply_movement obj_T27R0501_rocketm, _0F64
	wait_movement
	npc_msg 3
	closemsg
	apply_movement obj_T27R0501_dancer_3, _0F6C
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_T27R0501_rocketm, _0F7C
	wait_movement
	apply_movement obj_T27R0501_rocketm, _0F84
	apply_movement 241, _1060
	wait_movement
	scrcmd_103
	releaseall
	setvar VAR_UNK_410C, 1
	end

scr_seq_T27R0501_016:
	scrcmd_609
	lockall
	setvar VAR_SPECIAL_x8000, 11
	setvar VAR_UNK_410C, 5
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _106C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0809
	npc_msg 11
	goto _0983

_0471:
	npc_msg 29
	wait_button
	closemsg
	releaseall
	end

_047C:
	npc_msg 33
	wait_button
	closemsg
	releaseall
	end

_0487:
	compare VAR_TEMP_x400B, 0
	goto_if_ne _0AFA
	npc_msg 32
	goto _0B10

_049D:
	white_out
	releaseall
	end

_04A3:
	compare VAR_SPECIAL_x8004, 1
	goto_if_ne _0B2F
	apply_movement obj_T27R0501_rocketm_2, _1084
	goto _04BE

_04BE:
	wait_movement
	npc_msg 7
	closemsg
	compare VAR_SPECIAL_x8004, 0
	goto_if_ne _0B4A
	apply_movement obj_T27R0501_rocketm_2, _1094
	goto _0B65

_04E0:
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

_04EB:
	buffer_players_name 0
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_04F9:
	npc_msg 40
	wait_button
	closemsg
	releaseall
	end

_0504:
	npc_msg 41
	wait_button
	closemsg
	releaseall
	end

_050F:
	buffer_players_name 0
	npc_msg 42
	wait_button
	closemsg
	setflag FLAG_UNK_107
	releaseall
	end

_0521:
	npc_msg 14
	wait_button
	closemsg
	call _0B7F
	end

_0530:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0B94
	apply_movement obj_player, _10A0
	goto _0BAF

_0555:
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_6, _10B4
	wait_movement
	npc_msg 45
	closemsg
	wait 10, VAR_SPECIAL_RESULT
	trainer_battle TRAINER_KIMONO_GIRL_ZUKI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC5
	apply_movement obj_T27R0501_dancer_6, _10F4
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer, _1100
	wait_movement
	npc_msg 15
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_NAOKO, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC5
	apply_movement obj_T27R0501_dancer, _1130
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_5, _113C
	wait_movement
	npc_msg 16
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_MIKI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC5
	apply_movement obj_T27R0501_dancer_5, _116C
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_2, _1178
	wait_movement
	npc_msg 17
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_SAYO, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC5
	apply_movement obj_T27R0501_dancer_2, _11A4
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_4, _11B4
	wait_movement
	npc_msg 18
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_KUNI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC5
	apply_movement obj_T27R0501_dancer_4, _11E0
	wait_movement
	apply_movement obj_T27R0501_dancer_6, _11F0
	wait_movement
	npc_msg 20
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0BCF
	giveitem_no_check ITEM_CLEAR_BELL, 1
	setflag FLAG_UNK_103
	goto _0C2D

_06B5:
	npc_msg 43
	wait_button
	closemsg
	releaseall
	end

_06C0:
	npc_msg 44
	wait_button
	closemsg
	releaseall
	end

_06CB:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_06D5:
	compare VAR_UNK_410C, 0
	goto_if_ne _073A
	move_person_facing obj_T27R0501_rocketm, 6, 0, 6, DIR_EAST
	move_person_facing obj_T27R0501_dancer_3, 8, 0, 6, DIR_WEST
	compare VAR_TEMP_x4009, 222
	goto_if_ne _077A
	move_person_facing obj_T27R0501_rocketm, 29, 0, 29, DIR_SOUTH
	make_object_visible obj_T27R0501_rocketm
	get_player_facing VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _07A2
	move_person_facing obj_T27R0501_rocketm_2, 7, 0, 6, DIR_SOUTH
	goto _07C1

_073A:
	compare VAR_TEMP_x4009, 222
	goto_if_ne _077A
	move_person_facing obj_T27R0501_rocketm, 29, 0, 29, DIR_SOUTH
	make_object_visible obj_T27R0501_rocketm
	get_player_facing VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _07A2
	move_person_facing obj_T27R0501_rocketm_2, 7, 0, 6, DIR_SOUTH
	goto _07C1

_077A:
	compare VAR_TEMP_x400A, 10
	goto_if_eq _0C77
	compare VAR_UNK_410C, 3
	goto_if_ne _0C77
	move_person_facing obj_T27R0501_dancer_3, 7, 0, 6, DIR_SOUTH
	end

_07A2:
	compare VAR_TEMP_x4000, 1
	goto_if_ne _0C79
	move_person_facing obj_T27R0501_rocketm_2, 7, 0, 6, DIR_NORTH
	goto _07C1

_07C1:
	scrcmd_374 obj_T27R0501_rocketm_2
	setvar VAR_TEMP_x4009, 0
	compare VAR_TEMP_x400A, 10
	goto_if_eq _0C77
	compare VAR_UNK_410C, 3
	goto_if_ne _0C77
	move_person_facing obj_T27R0501_dancer_3, 7, 0, 6, DIR_SOUTH
	end

_07F3:
	npc_msg 38
	wait_button
	closemsg
	releaseall
	end

_07FE:
	npc_msg 37
	wait_button
	closemsg
	releaseall
	end

_0809:
	npc_msg 12
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x8004
	touchscreen_menu_show
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _0521
	closemsg
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_6, _10B4
	wait_movement
	npc_msg 45
	closemsg
	wait 10, VAR_SPECIAL_RESULT
	trainer_battle TRAINER_KIMONO_GIRL_ZUKI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC5
	apply_movement obj_T27R0501_dancer_6, _10F4
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer, _1100
	wait_movement
	npc_msg 15
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_NAOKO, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC5
	apply_movement obj_T27R0501_dancer, _1130
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_5, _113C
	wait_movement
	npc_msg 16
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_MIKI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC5
	apply_movement obj_T27R0501_dancer_5, _116C
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_2, _1178
	wait_movement
	npc_msg 17
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_SAYO, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC5
	apply_movement obj_T27R0501_dancer_2, _11A4
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_4, _11B4
	wait_movement
	npc_msg 18
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_KUNI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC5
	apply_movement obj_T27R0501_dancer_4, _11E0
	wait_movement
	apply_movement obj_T27R0501_dancer_6, _11F0
	wait_movement
	npc_msg 20
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0BCF
	giveitem_no_check ITEM_CLEAR_BELL, 1
	setflag FLAG_UNK_103
	goto _0C2D

_0983:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_x8004
	touchscreen_menu_show
	compare VAR_SPECIAL_x8004, 1
	goto_if_eq _0521
	closemsg
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_6, _10B4
	wait_movement
	npc_msg 45
	closemsg
	wait 10, VAR_SPECIAL_RESULT
	trainer_battle TRAINER_KIMONO_GIRL_ZUKI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC5
	apply_movement obj_T27R0501_dancer_6, _10F4
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer, _1100
	wait_movement
	npc_msg 15
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_NAOKO, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC5
	apply_movement obj_T27R0501_dancer, _1130
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_5, _113C
	wait_movement
	npc_msg 16
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_MIKI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC5
	apply_movement obj_T27R0501_dancer_5, _116C
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_2, _1178
	wait_movement
	npc_msg 17
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_SAYO, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC5
	apply_movement obj_T27R0501_dancer_2, _11A4
	wait_movement
	stop_bgm 30
	play_bgm SEQ_GS_EYE_MAIKO
	apply_movement obj_T27R0501_dancer_4, _11B4
	wait_movement
	npc_msg 18
	closemsg
	trainer_battle TRAINER_KIMONO_GIRL_KUNI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0BC5
	apply_movement obj_T27R0501_dancer_4, _11E0
	wait_movement
	apply_movement obj_T27R0501_dancer_6, _11F0
	wait_movement
	npc_msg 20
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0BCF
	giveitem_no_check ITEM_CLEAR_BELL, 1
	setflag FLAG_UNK_103
	goto _0C2D

_0AFA:
	compare VAR_TEMP_x400B, 1
	goto_if_ne _0C98
	npc_msg 34
	goto _0B10

_0B10:
	wait_button
	closemsg
	releaseall
	compare VAR_TEMP_x400B, 2
	goto_if_ge _0CBA
	addvar VAR_TEMP_x400B, 1
	goto _0CC2

_0B2F:
	compare VAR_SPECIAL_x8004, 2
	goto_if_ne _0CC4
	apply_movement obj_T27R0501_rocketm_2, _11F8
	goto _04BE

_0B4A:
	compare VAR_SPECIAL_x8004, 1
	goto_if_ne _0CEE
	apply_movement obj_T27R0501_rocketm_2, _1208
	goto _0B65

_0B65:
	wait_movement
	hide_person obj_T27R0501_rocketm_2
	setflag FLAG_UNK_23A
	releaseall
	setvar VAR_UNK_410C, 2
	setvar VAR_TEMP_x400A, 10
	end

_0B7F:
	compare VAR_SPECIAL_x8000, 77
	goto_if_ne _0D09
	releaseall
	goto _0D0D

_0B94:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0D0F
	apply_movement obj_player, _1214
	goto _0BAF

_0BAF:
	apply_movement obj_T27R0501_dancer_6, _1224
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	return

_0BC5:
	white_out
	call _0B7F
	end

_0BCF:
	giveitem_no_check ITEM_TIDAL_BELL, 1
	setflag FLAG_UNK_104
	closemsg
	play_se SEQ_SE_DP_KI_GASYAN
	screen_shake 0, 2, 10, 6
	wait_se SEQ_SE_DP_KI_GASYAN
	clearflag FLAG_HIDE_DANCE_STUDIO_LITTLE_GIRL
	show_person obj_T27R0501_gsbabygirl1
	apply_movement obj_T27R0501_gsbabygirl1, _1230
	wait_movement
	apply_movement obj_T27R0501_dancer_6, _123C
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0D3A
	npc_msg 21
	goto _0D62

_0C2D:
	closemsg
	play_se SEQ_SE_DP_KI_GASYAN
	screen_shake 0, 2, 10, 6
	wait_se SEQ_SE_DP_KI_GASYAN
	clearflag FLAG_HIDE_DANCE_STUDIO_LITTLE_GIRL
	show_person obj_T27R0501_gsbabygirl1
	apply_movement obj_T27R0501_gsbabygirl1, _1230
	wait_movement
	apply_movement obj_T27R0501_dancer_6, _123C
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0D3A
	npc_msg 21
	goto _0D62

_0C77:
	end

_0C79:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0D87
	move_person_facing obj_T27R0501_rocketm_2, 7, 0, 6, DIR_EAST
	goto _07C1

_0C98:
	npc_msg 35
	wait_button
	closemsg
	releaseall
	compare VAR_TEMP_x400B, 2
	goto_if_ge _0CBA
	addvar VAR_TEMP_x400B, 1
	goto _0CC2

_0CBA:
	setvar VAR_TEMP_x400B, 0
	end

_0CC2:
	end

_0CC4:
	apply_movement obj_T27R0501_rocketm_2, _1244
	wait_movement
	npc_msg 7
	closemsg
	compare VAR_SPECIAL_x8004, 0
	goto_if_ne _0B4A
	apply_movement obj_T27R0501_rocketm_2, _1094
	goto _0B65

_0CEE:
	compare VAR_SPECIAL_x8004, 2
	goto_if_ne _0DC5
	apply_movement obj_T27R0501_rocketm_2, _1254
	goto _0B65

_0D09:
	releaseall
	return

_0D0D:
	return

_0D0F:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0BAF
	apply_movement obj_player, _1260
	apply_movement obj_T27R0501_dancer_6, _1224
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	return

_0D3A:
	npc_msg 22
	closemsg
	apply_movement obj_T27R0501_dancer_6, _1270
	wait_movement
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0DE7
	npc_msg 23
	goto _0E67

_0D62:
	closemsg
	apply_movement obj_T27R0501_dancer_6, _1270
	wait_movement
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0DE7
	npc_msg 23
	goto _0E67

_0D87:
	move_person_facing obj_T27R0501_rocketm_2, 7, 0, 6, DIR_WEST
	scrcmd_374 obj_T27R0501_rocketm_2
	setvar VAR_TEMP_x4009, 0
	compare VAR_TEMP_x400A, 10
	goto_if_eq _0C77
	compare VAR_UNK_410C, 3
	goto_if_ne _0C77
	move_person_facing obj_T27R0501_dancer_3, 7, 0, 6, DIR_SOUTH
	end

_0DC5:
	apply_movement obj_T27R0501_rocketm_2, _1278
	wait_movement
	hide_person obj_T27R0501_rocketm_2
	setflag FLAG_UNK_23A
	releaseall
	setvar VAR_UNK_410C, 2
	setvar VAR_TEMP_x400A, 10
	end

_0DE7:
	npc_msg 24
	closemsg
	apply_movement obj_T27R0501_dancer, _1288
	apply_movement obj_T27R0501_dancer_2, _1294
	apply_movement obj_T27R0501_dancer_6, _12A4
	apply_movement obj_T27R0501_dancer_4, _12B4
	apply_movement obj_T27R0501_dancer_5, _12C4
	apply_movement obj_T27R0501_gsbabygirl1, _12D0
	wait_movement
	hide_person obj_T27R0501_dancer
	hide_person obj_T27R0501_dancer_2
	hide_person obj_T27R0501_dancer_6
	hide_person obj_T27R0501_dancer_4
	hide_person obj_T27R0501_dancer_5
	hide_person obj_T27R0501_gsbabygirl1
	setflag FLAG_HIDE_DANCE_STUDIO_KIMONO_GIRLS
	setflag FLAG_HIDE_DANCE_STUDIO_LITTLE_GIRL
	call _0B7F
	setvar VAR_UNK_410C, 6
	setvar VAR_UNK_40FA, 1
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0EE4
	clearflag FLAG_HIDE_BELL_TOWER_SUMMIT_KIMONO_GIRLS
	goto _0EEA

_0E67:
	closemsg
	apply_movement obj_T27R0501_dancer, _1288
	apply_movement obj_T27R0501_dancer_2, _1294
	apply_movement obj_T27R0501_dancer_6, _12A4
	apply_movement obj_T27R0501_dancer_4, _12B4
	apply_movement obj_T27R0501_dancer_5, _12C4
	apply_movement obj_T27R0501_gsbabygirl1, _12D0
	wait_movement
	hide_person obj_T27R0501_dancer
	hide_person obj_T27R0501_dancer_2
	hide_person obj_T27R0501_dancer_6
	hide_person obj_T27R0501_dancer_4
	hide_person obj_T27R0501_dancer_5
	hide_person obj_T27R0501_gsbabygirl1
	setflag FLAG_HIDE_DANCE_STUDIO_KIMONO_GIRLS
	setflag FLAG_HIDE_DANCE_STUDIO_LITTLE_GIRL
	call _0B7F
	setvar VAR_UNK_410C, 6
	setvar VAR_UNK_40FA, 1
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0EE4
	clearflag FLAG_HIDE_BELL_TOWER_SUMMIT_KIMONO_GIRLS
	goto _0EEA

_0EE4:
	clearflag FLAG_HIDE_WHIRL_ISLANDS_BOTTOM_KIMONO_GIRLS
	end

_0EEA:
	end

	.balign 4
_0EEC:

	step 71, 1
	step 12, 1
	step 72, 1
	step_end
	.balign 4
_0EFC:

	step 12, 1
	step 14, 5
	step 12, 2
	step_end
	.balign 4
_0F0C:

	step 13, 2
	step 15, 5
	step 13, 1
	step 0, 1
	step_end
	.balign 4
_0F20:

	step 12, 1
	step 15, 3
	step 12, 2
	step_end
	.balign 4
_0F30:

	step 13, 2
	step 14, 3
	step 13, 1
	step 0, 1
	step_end
	.balign 4
_0F44:

	step 3, 1
	step_end
	.balign 4
_0F4C:

	step 76, 9
	step_end
	.balign 4
_0F54:

	step 15, 1
	step_end
	.balign 4
_0F5C:

	step 38, 1
	step_end
	.balign 4
_0F64:

	step 51, 2
	step_end
	.balign 4
_0F6C:

	step 71, 1
	step 15, 2
	step 72, 1
	step_end
	.balign 4
_0F7C:

	step 33, 1
	step_end
	.balign 4
_0F84:

	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step_end
	.balign 4
_1060:

	step 66, 1
	step 77, 9
	step_end
	.balign 4
_106C:

	step 12, 5
	step 14, 4
	step 12, 5
	step 15, 4
	step 32, 1
	step_end
	.balign 4
_1084:

	step 71, 1
	step 13, 1
	step 72, 1
	step_end
	.balign 4
_1094:

	step 18, 4
	step 17, 12
	step_end
	.balign 4
_10A0:

	step 15, 1
	step 13, 2
	step 14, 1
	step 32, 1
	step_end
	.balign 4
_10B4:

	step 2, 1
	step 62, 1
	step 0, 1
	step 62, 1
	step 3, 1
	step 62, 1
	step 1, 1
	step 62, 1
	step 2, 1
	step 62, 1
	step 0, 1
	step 62, 1
	step 3, 1
	step 62, 1
	step 33, 1
	step_end
	.balign 4
_10F4:

	step 12, 1
	step 33, 1
	step_end
	.balign 4
_1100:

	step 3, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 35, 1
	step 15, 5
	step 33, 1
	step_end
	.balign 4
_1130:

	step 14, 5
	step 33, 1
	step_end
	.balign 4
_113C:

	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 34, 1
	step 14, 5
	step 33, 1
	step_end
	.balign 4
_116C:

	step 15, 5
	step 33, 1
	step_end
	.balign 4
_1178:

	step 3, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 33, 1
	step 13, 1
	step 15, 3
	step 33, 1
	step_end
	.balign 4
_11A4:

	step 14, 3
	step 12, 1
	step 33, 1
	step_end
	.balign 4
_11B4:

	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 33, 1
	step 13, 1
	step 14, 3
	step 33, 1
	step_end
	.balign 4
_11E0:

	step 15, 3
	step 12, 1
	step 33, 1
	step_end
	.balign 4
_11F0:

	step 13, 1
	step_end
	.balign 4
_11F8:

	step 71, 1
	step 14, 1
	step 72, 1
	step_end
	.balign 4
_1208:

	step 18, 4
	step 17, 10
	step_end
	.balign 4
_1214:

	step 13, 1
	step 14, 1
	step 32, 1
	step_end
	.balign 4
_1224:

	step 63, 2
	step 33, 1
	step_end
	.balign 4
_1230:

	step 16, 10
	step 19, 3
	step_end
	.balign 4
_123C:

	step 34, 1
	step_end
	.balign 4
_1244:

	step 71, 1
	step 15, 1
	step 72, 1
	step_end
	.balign 4
_1254:

	step 18, 3
	step 17, 10
	step_end
	.balign 4
_1260:

	step 13, 1
	step 15, 1
	step 32, 1
	step_end
	.balign 4
_1270:

	step 75, 1
	step_end
	.balign 4
_1278:

	step 17, 1
	step 19, 3
	step 17, 9
	step_end
	.balign 4
_1288:

	step 15, 1
	step 13, 11
	step_end
	.balign 4
_1294:

	step 63, 1
	step 14, 1
	step 13, 12
	step_end
	.balign 4
_12A4:

	step 63, 1
	step 15, 4
	step 13, 11
	step_end
	.balign 4
_12B4:

	step 63, 1
	step 15, 1
	step 13, 12
	step_end
	.balign 4
_12C4:

	step 14, 1
	step 13, 11
	step_end
	.balign 4
_12D0:

	step 63, 2
	step 15, 5
	step 13, 11
	step_end
	.balign 4
