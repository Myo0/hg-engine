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

.include "data/scr_seq/include/event_R34.inc"


// text archive to grab from: 384.txt

.data


scrdef scr_seq_R34_000
scrdef scr_seq_R34_001
scrdef scr_seq_R34_002
scrdef scr_seq_R34_003
scrdef scr_seq_R34_004
scrdef scr_seq_R34_005
scrdef scr_seq_R34_006
scrdef scr_seq_R34_007
scrdef scr_seq_R34_008
scrdef scr_seq_R34_009
scrdef scr_seq_R34_010
scrdef scr_seq_R34_011
scrdef scr_seq_R34_012
scrdef scr_seq_R34_013
scrdef scr_seq_R34_014
scrdef scr_seq_R34_015
scrdef_end

scr_seq_R34_000:
	get_friend_sprite VAR_OBJ_0
	check_day_care_egg VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _03A6
	set_object_movement_type obj_R34_gsoldman1, 16
	goto _03BD

scr_seq_R34_001:
	scrcmd_609
	lockall
	apply_movement obj_R34_gsoldman1, _0DE4
	apply_movement obj_player, _0DF4
	wait_movement
	npc_msg 46
	buffer_players_name 0
	register_gear_number PHONE_CONTACT_DAY_C_MAN
	npc_msg 47
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_DAY_C_LADY
	npc_msg 48
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	npc_msg 49
	closemsg
	apply_movement obj_R34_gsoldman1, _0E00
	wait_movement
	setvar VAR_UNK_408E, 3
	releaseall
	end

scr_seq_R34_002:
	simple_npc_msg 18
	end

scr_seq_R34_003:
	scrcmd_609
	lockall
	gender_msgbox 36, 41
	closemsg
	apply_movement obj_R34_gsoldman1, _0E10
	wait_movement
	callstd std_play_friend_music
	apply_movement obj_R34_var_1, _0E18
	apply_movement obj_R34_2684, _0E2C
	wait_movement
	apply_movement obj_R34_gsoldman1, _0E3C
	wait_movement
	gender_msgbox 37, 42
	closemsg
	apply_movement obj_R34_var_1, _0E44
	wait_movement
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	copyvar VAR_TEMP_x4010, VAR_SPECIAL_x8004
	buffer_players_name 0
	compare VAR_SPECIAL_x8004, 368
	goto_if_ne _03CE
	apply_movement obj_R34_var_1, _0E4C
	apply_movement obj_R34_2684, _0E58
	apply_movement obj_R34_gsoldman1, _0E60
	goto _03F9

scr_seq_R34_004:
	scrcmd_609
	lockall
	count_alive_mons VAR_TEMP_x4003, 6
	compare VAR_TEMP_x4003, 1
	goto_if_ne _0426
	goto _042C

scr_seq_R34_005:
	scrcmd_609
	lockall
	setvar VAR_TEMP_x4004, 777
	apply_movement obj_R34_gswoman3_3, _0E68
	stop_bgm 0
	play_bgm SEQ_GS_EYE_J_SHOUJO
	wait_movement
	npc_msg 28
	closemsg
	stop_bgm 0
	trainer_battle TRAINER_ACE_TRAINER_F_KATE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _04C6
	setvar VAR_UNK_4097, 2
	npc_msg 30
	goto_if_no_item_space ITEM_POWER_HERB, 1, _04CC
	callstd std_give_item_verbose
	setvar VAR_UNK_4097, 3
	npc_msg 32
	wait_button
	closemsg
	compare VAR_TEMP_x4004, 777
	goto_if_ne _04D8
	releaseall
	goto _04DC

scr_seq_R34_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4097, 1
	goto_if_ne _04DE
	npc_msg 22
	goto _04E9

scr_seq_R34_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_4097, 1
	goto_if_ne _04F1
	npc_msg 26
	goto _04FC

scr_seq_R34_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x4004, 555
	compare VAR_UNK_4097, 2
	goto_if_eq _0504
	npc_msg 32
	wait_button
	closemsg
	releaseall
	end

scr_seq_R34_009:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 34, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R34_010:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 35, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R34_011:
	direction_signpost 33, 1, 4, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R34_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _054E
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0562
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0576
	apply_movement obj_player, _0E74
	apply_movement obj_R34_gsmiddleman1, _0E8C
	goto _0591

scr_seq_R34_013:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 9
	setvar VAR_SPECIAL_x8008, 8
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R34_4070
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_R34_014:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 6
	setvar VAR_SPECIAL_x8008, 9
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R34_4067
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_R34_015:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 4
	setvar VAR_SPECIAL_x8008, 10
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R34_4065
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_03A6:
	set_object_movement_type obj_R34_gsoldman1, 15
	goto_if_unset FLAG_UNK_189, _05F2
	clearflag FLAG_UNK_189
	end

_03BD:
	goto_if_unset FLAG_UNK_189, _05F2
	clearflag FLAG_UNK_189
	end

_03CE:
	compare VAR_SPECIAL_x8004, 369
	goto_if_ne _062D
	apply_movement obj_R34_var_1, _0E4C
	apply_movement obj_R34_2684, _0E58
	apply_movement obj_R34_gsoldman1, _0E60
	goto _03F9

_03F9:
	wait_movement
	gender_msgbox 38, 43
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_x8004, 363
	goto_if_ne _0662
	apply_movement obj_player, _0E98
	goto _067D

_0426:
	goto _06A4

_042C:
	apply_movement obj_R34_gswoman3, _0EA4
	stop_bgm 0
	play_bgm SEQ_GS_EYE_J_SHOUJO
	wait_movement
	apply_movement obj_player, _0EB0
	wait_movement
	npc_msg 19
	closemsg
	trainer_battle TRAINER_ACE_TRAINER_F_IRENE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _04C6
	apply_movement obj_R34_gswoman3, _0EB8
	wait_movement
	npc_msg 21
	closemsg
	apply_movement obj_R34_gswoman3_2, _0EC0
	stop_bgm 0
	play_bgm SEQ_GS_EYE_J_SHOUJO
	wait_movement
	apply_movement obj_player, _0ECC
	wait_movement
	npc_msg 24
	closemsg
	trainer_battle TRAINER_ACE_TRAINER_F_JENN, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _04C6
	apply_movement obj_R34_gswoman3_2, _0ED4
	wait_movement
	npc_msg 26
	wait_button
	closemsg
	goto _0739

_04C6:
	white_out
	releaseall
	end

_04CC:
	callstd std_bag_is_full
	closemsg
	goto _0743

_04D8:
	releaseall
	end

_04DC:
	end

_04DE:
	npc_msg 23
	wait_button
	closemsg
	releaseall
	end

_04E9:
	wait_button
	closemsg
	releaseall
	end

_04F1:
	npc_msg 27
	wait_button
	closemsg
	releaseall
	end

_04FC:
	wait_button
	closemsg
	releaseall
	end

_0504:
	npc_msg 30
	goto_if_no_item_space ITEM_POWER_HERB, 1, _04CC
	callstd std_give_item_verbose
	setvar VAR_UNK_4097, 3
	npc_msg 32
	wait_button
	closemsg
	compare VAR_TEMP_x4004, 777
	goto_if_ne _04D8
	releaseall
	goto _04DC

_054E:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button
	closemsg
	releaseall
	end

_0562:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button
	closemsg
	releaseall
	end

_0576:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0758
	apply_movement obj_player, _0EDC
	goto _0591

_0591:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _077B
	apply_movement obj_partner_poke, _0EE8
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 9
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button
	closemsg
	releaseall
	end

_05F2:
	check_badge BADGE_PLAIN, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _07B5
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_eq _07BF
	compare VAR_TEMP_x4000, 4
	goto_if_eq _07BF
	setflag FLAG_HIDE_CAMERON
	goto _07EB

_062D:
	apply_movement obj_R34_var_1, _0EF8
	wait_movement
	gender_msgbox 38, 43
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_x8004, 363
	goto_if_ne _0662
	apply_movement obj_player, _0E98
	goto _0813

_0662:
	compare VAR_SPECIAL_x8004, 364
	goto_if_ne _0825
	apply_movement obj_player, _0F00
	goto _0813

_067D:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_SPECIAL_x8004, 368
	goto_if_ne _0840
	apply_movement obj_R34_var_1, _0E10
	goto _085B

_06A4:
	apply_movement obj_R34_gswoman3, _0EA4
	stop_bgm 0
	play_bgm SEQ_GS_EYE_J_SHOUJO
	wait_movement
	apply_movement obj_player, _0EB0
	wait_movement
	npc_msg 19
	closemsg
	apply_movement obj_R34_gswoman3_2, _0EC0
	play_bgm SEQ_GS_EYE_J_SHOUJO
	wait_movement
	apply_movement obj_player, _0ECC
	wait_movement
	npc_msg 24
	closemsg
	trainer_battle TRAINER_ACE_TRAINER_F_JENN, 120, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _04C6
	apply_movement obj_R34_gswoman3, _0EB8
	wait_movement
	apply_movement obj_player, _0EB0
	wait_movement
	npc_msg 21
	closemsg
	apply_movement obj_R34_gswoman3_2, _0ED4
	wait_movement
	apply_movement obj_player, _0ECC
	wait_movement
	npc_msg 26
	wait_button
	closemsg
	setvar VAR_UNK_4097, 1
	releaseall
	end

_0739:
	setvar VAR_UNK_4097, 1
	releaseall
	end

_0743:
	compare VAR_TEMP_x4004, 777
	goto_if_ne _04D8
	releaseall
	goto _04DC

_0758:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0948
	apply_movement obj_player, _0F08
	apply_movement obj_R34_gsmiddleman1, _0E8C
	goto _0591

_077B:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 9
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button
	closemsg
	releaseall
	end

_07B5:
	setflag FLAG_HIDE_CAMERON
	goto _07EB

_07BF:
	clearflag FLAG_HIDE_CAMERON
	scrcmd_379 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_eq _09B9
	compare VAR_TEMP_x4000, 4
	goto_if_eq _09B9
	clearflag FLAG_UNK_1D1
	setflag FLAG_UNK_1D2
	end

_07EB:
	scrcmd_379 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_eq _09B9
	compare VAR_TEMP_x4000, 4
	goto_if_eq _09B9
	clearflag FLAG_UNK_1D1
	setflag FLAG_UNK_1D2
	end

_0813:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	goto _085B

_0825:
	compare VAR_SPECIAL_x8004, 365
	goto_if_ne _09C3
	apply_movement obj_player, _0F1C
	goto _0813

_0840:
	compare VAR_SPECIAL_x8004, 369
	goto_if_ne _09DE
	apply_movement obj_R34_var_1, _0E10
	goto _085B

_085B:
	wait_movement
	buffer_players_name 0
	gender_msgbox 39, 44
	closemsg
	apply_movement obj_R34_var_1, _0F28
	wait_movement
	gender_msgbox 50, 51
	closemsg
	get_player_gender VAR_UNK_416E
	compare VAR_UNK_416E, 0
	call_if_ne _0A14
	call_if_eq _0A52
	gender_msgbox 52, 53
	closemsg
	scrcmd_065 0, 0, 0, 0, VAR_SPECIAL_x8009
	scrcmd_066 54, 0
	scrcmd_066 55, 1
	scrcmd_066 56, 2
	scrcmd_066 57, 3
	scrcmd_066 58, 4
	scrcmd_066 59, 5
	scrcmd_066 60, 6
	scrcmd_067
	compare VAR_SPECIAL_x8009, 0
	call_if_eq _0A90
	compare VAR_SPECIAL_x8009, 1
	call_if_eq _0A98
	compare VAR_SPECIAL_x8009, 2
	call_if_eq _0AA0
	compare VAR_SPECIAL_x8009, 3
	call_if_eq _0AA8
	compare VAR_SPECIAL_x8009, 4
	call_if_eq _0AB0
	compare VAR_SPECIAL_x8009, 5
	call_if_eq _0AB8
	compare VAR_SPECIAL_x8009, 6
	call_if_eq _0AC0
	setvar VAR_SPECIAL_x8005, 1
	callstd std_give_item_verbose
	copyvar VAR_SPECIAL_x8004, VAR_TEMP_x4010
	compare VAR_SPECIAL_x8004, 368
	goto_if_ne _0AC8
	apply_movement obj_R34_var_1, _0F30
	apply_movement obj_R34_2684, _0F3C
	goto _0AEB

_0948:
	apply_movement obj_player, _0F44
	apply_movement obj_R34_gsmiddleman1, _0E8C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _077B
	apply_movement obj_partner_poke, _0EE8
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 9
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button
	closemsg
	releaseall
	end

_09B9:
	clearflag FLAG_UNK_1D2
	setflag FLAG_UNK_1D1
	end

_09C3:
	compare VAR_SPECIAL_x8004, 366
	goto_if_ne _0B2B
	apply_movement obj_player, _0F58
	goto _0813

_09DE:
	apply_movement obj_R34_var_1, _0F64
	wait_movement
	buffer_players_name 0
	gender_msgbox 39, 44
	closemsg
	compare VAR_SPECIAL_x8004, 368
	goto_if_ne _0AC8
	apply_movement obj_R34_var_1, _0F30
	apply_movement obj_R34_2684, _0F3C
	goto _0AEB

_0A14:
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 703
	call_if_eq _0B46
	compare VAR_SPECIAL_RESULT, 258
	call_if_eq _0B50
	compare VAR_SPECIAL_RESULT, 152
	call_if_eq _0B5A
	check_battle_won VAR_UNK_416D
	compare VAR_UNK_416D, 0
	goto_if_eq _0B64
	return

_0A52:
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 703
	call_if_eq _0B6A
	compare VAR_SPECIAL_RESULT, 258
	call_if_eq _0B74
	compare VAR_SPECIAL_RESULT, 152
	call_if_eq _0B7E
	check_battle_won VAR_UNK_416D
	compare VAR_UNK_416D, 0
	goto_if_eq _0B64
	return

_0A90:
	setvar VAR_SPECIAL_x8004, 82
	return

_0A98:
	setvar VAR_SPECIAL_x8004, 84
	return

_0AA0:
	setvar VAR_SPECIAL_x8004, 85
	return

_0AA8:
	setvar VAR_SPECIAL_x8004, 849
	return

_0AB0:
	setvar VAR_SPECIAL_x8004, 83
	return

_0AB8:
	setvar VAR_SPECIAL_x8004, 81
	return

_0AC0:
	setvar VAR_SPECIAL_x8004, 80
	return

_0AC8:
	compare VAR_SPECIAL_x8004, 369
	goto_if_ne _0B88
	apply_movement obj_R34_var_1, _0F30
	apply_movement obj_R34_2684, _0F3C
	goto _0AEB

_0AEB:
	wait_movement
	buffer_players_name 0
	gender_msgbox 40, 45
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_x8004, 368
	goto_if_ne _0BD8
	apply_movement obj_R34_var_1, _0F6C
	apply_movement obj_R34_2684, _0F78
	apply_movement obj_player, _0F80
	goto _0C03

_0B2B:
	compare VAR_SPECIAL_x8004, 367
	goto_if_ne _0CA4
	apply_movement obj_player, _0F90
	goto _0813

_0B46:
	trainer_battle TRAINER_SUPER_NERD_MICKEY_6, 0, 0, 0
	return

_0B50:
	trainer_battle TRAINER_SCHOOL_KID_M_MICKEY, 0, 0, 0
	return

_0B5A:
	trainer_battle TRAINER_SCHOOL_KID_M_MICKEY_2, 0, 0, 0
	return

_0B64:
	white_out
	releaseall
	end

_0B6A:
	trainer_battle TRAINER_ACE_TRAINER_M_MICKEY_4, 0, 0, 0
	return

_0B74:
	trainer_battle TRAINER_LASS_MICKEY, 0, 0, 0
	return

_0B7E:
	trainer_battle TRAINER_LASS_MICKEY_2, 0, 0, 0
	return

_0B88:
	apply_movement obj_R34_var_1, _0F9C
	apply_movement obj_R34_2684, _0FA4
	wait_movement
	buffer_players_name 0
	gender_msgbox 40, 45
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_x8004, 368
	goto_if_ne _0BD8
	apply_movement obj_R34_var_1, _0F6C
	apply_movement obj_R34_2684, _0F78
	apply_movement obj_player, _0F80
	goto _0C03

_0BD8:
	compare VAR_SPECIAL_x8004, 369
	goto_if_ne _0CBF
	apply_movement obj_R34_var_1, _0F6C
	apply_movement obj_R34_2684, _0F78
	apply_movement obj_player, _0F80
	goto _0C03

_0C03:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_307 11, 12, 16, 26, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_R34_var_1, _0FAC
	apply_movement obj_R34_2684, _0FB8
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0FC8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_se SEQ_SE_DP_KAIDAN2
	scrcmd_596 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0D78
	scrcmd_600
	fade_screen 6, 1, 0, RGB_BLACK
	wait_se SEQ_SE_DP_KAIDAN2
	wait_fade
	scrcmd_309 77
	setvar VAR_UNK_408E, 1
	warp MAP_R34R0101, 0, 3, 12, DIR_NORTH
	scrcmd_582 MAP_R34, 368, 411
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0CA4:
	compare VAR_SPECIAL_x8004, 368
	goto_if_ne _0DB5
	apply_movement obj_player, _0FD4
	goto _067D

_0CBF:
	apply_movement obj_R34_var_1, _0FE0
	apply_movement obj_R34_2684, _0FEC
	apply_movement obj_player, _0FF8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_307 11, 12, 16, 26, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_R34_var_1, _0FAC
	apply_movement obj_R34_2684, _0FB8
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0FC8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_se SEQ_SE_DP_KAIDAN2
	scrcmd_596 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0D78
	scrcmd_600
	fade_screen 6, 1, 0, RGB_BLACK
	wait_se SEQ_SE_DP_KAIDAN2
	wait_fade
	scrcmd_309 77
	setvar VAR_UNK_408E, 1
	warp MAP_R34R0101, 0, 3, 12, DIR_NORTH
	scrcmd_582 MAP_R34, 368, 411
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0D78:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_se SEQ_SE_DP_KAIDAN2
	wait_fade
	scrcmd_309 77
	setvar VAR_UNK_408E, 1
	warp MAP_R34R0101, 0, 3, 12, DIR_NORTH
	scrcmd_582 MAP_R34, 368, 411
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0DB5:
	apply_movement obj_player, _1008
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_SPECIAL_x8004, 368
	goto_if_ne _0840
	apply_movement obj_R34_var_1, _0E10
	goto _085B

	.balign 4
_0DE4:

	step 75, 1
	step 13, 1
	step 15, 2
	step_end
	.balign 4
_0DF4:

	step 63, 3
	step 34, 1
	step_end
	.balign 4
_0E00:

	step 14, 2
	step 12, 1
	step 33, 1
	step_end
	.balign 4
_0E10:

	step 32, 1
	step_end
	.balign 4
_0E18:

	step 13, 6
	step 15, 3
	step 13, 2
	step 35, 1
	step_end
	.balign 4
_0E2C:

	step 13, 7
	step 15, 3
	step 13, 1
	step_end
	.balign 4
_0E3C:

	step 34, 1
	step_end
	.balign 4
_0E44:

	step 75, 1
	step_end
	.balign 4
_0E4C:

	step 13, 1
	step 35, 1
	step_end
	.balign 4
_0E58:

	step 13, 1
	step_end
	.balign 4
_0E60:

	step 33, 1
	step_end
	.balign 4
_0E68:

	step 75, 1
	step 12, 2
	step_end
	.balign 4
_0E74:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_0E8C:

	step 63, 1
	step 32, 1
	step_end
	.balign 4
_0E98:

	step 15, 1
	step 12, 1
	step_end
	.balign 4
_0EA4:

	step 75, 1
	step 14, 4
	step_end
	.balign 4
_0EB0:

	step 3, 1
	step_end
	.balign 4
_0EB8:

	step 50, 2
	step_end
	.balign 4
_0EC0:

	step 75, 1
	step 15, 4
	step_end
	.balign 4
_0ECC:

	step 2, 1
	step_end
	.balign 4
_0ED4:

	step 51, 2
	step_end
	.balign 4
_0EDC:

	step 12, 3
	step 33, 1
	step_end
	.balign 4
_0EE8:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.balign 4
_0EF8:

	step 33, 1
	step_end
	.balign 4
_0F00:

	step 12, 1
	step_end
	.balign 4
_0F08:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_0F1C:

	step 14, 1
	step 12, 1
	step_end
	.balign 4
_0F28:

	step 1, 1
	step_end
	.balign 4
_0F30:

	step 15, 1
	step 33, 1
	step_end
	.balign 4
_0F3C:

	step 13, 1
	step_end
	.balign 4
_0F44:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_0F58:

	step 14, 2
	step 12, 1
	step_end
	.balign 4
_0F64:

	step 35, 1
	step_end
	.balign 4
_0F6C:

	step 15, 3
	step 32, 1
	step_end
	.balign 4
_0F78:

	step 15, 3
	step_end
	.balign 4
_0F80:

	step 63, 1
	step 15, 3
	step 32, 1
	step_end
	.balign 4
_0F90:

	step 14, 3
	step 12, 1
	step_end
	.balign 4
_0F9C:

	step 13, 1
	step_end
	.balign 4
_0FA4:

	step 13, 1
	step_end
	.balign 4
_0FAC:

	step 12, 1
	step 69, 1
	step_end
	.balign 4
_0FB8:

	step 15, 1
	step 12, 1
	step 69, 1
	step_end
	.balign 4
_0FC8:

	step 12, 2
	step 69, 1
	step_end
	.balign 4
_0FD4:

	step 14, 3
	step 12, 1
	step_end
	.balign 4
_0FE0:

	step 15, 4
	step 32, 1
	step_end
	.balign 4
_0FEC:

	step 13, 1
	step 15, 3
	step_end
	.balign 4
_0FF8:

	step 63, 1
	step 15, 4
	step 32, 1
	step_end
	.balign 4
_1008:

	step 14, 4
	step 12, 1
	step_end
	.balign 4
