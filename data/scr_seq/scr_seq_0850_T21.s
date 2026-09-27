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

.include "data/scr_seq/include/event_T21.inc"


// text archive to grab from: 550.txt

.data


scrdef scr_seq_T21_000
scrdef scr_seq_T21_001
scrdef scr_seq_T21_002
scrdef scr_seq_T21_003
scrdef scr_seq_T21_004
scrdef scr_seq_T21_005
scrdef scr_seq_T21_006
scrdef scr_seq_T21_007
scrdef scr_seq_T21_008
scrdef scr_seq_T21_009
scrdef scr_seq_T21_010
scrdef_end

scr_seq_T21_000:
	end

scr_seq_T21_001:
	lock obj_T21_gsoldman1
	apply_movement obj_T21_gsoldman1, _0AE2
	wait_movement
	callstd std_play_follow_music
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 397
	goto_if_ne _022C
	apply_movement obj_T21_gsoldman1, _0AEA
	goto _0247

scr_seq_T21_002:
	scrcmd_609
	lockall
	apply_movement obj_player, _0AF2
	wait_movement
	callstd std_play_follow_music
	clearflag FLAG_HIDE_CHERRYGROVE_GUIDE_GENT
	show_person obj_T21_gsoldman1
	lock obj_T21_gsoldman1
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	move_person_facing obj_T21_gsoldman1, VAR_TEMP_x4000, 1, 394, DIR_NORTH
	compare VAR_TEMP_x4000, 549
	goto_if_ne _0288
	apply_movement obj_T21_gsoldman1, _0AFE
	goto _02A3

scr_seq_T21_003:
	scrcmd_609
	lockall
	fade_out_bgm 0, 3
	apply_movement obj_player, _0AE2
	wait_movement
	callstd std_play_rival_intro_music
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	move_person_facing obj_T21_gsrivel, 583, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_T21_gsrivel, _0B0E
	wait_movement
	npc_msg 13
	closemsg
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 152
	goto_if_ne _02C0
	trainer_battle TRAINER_PASSERBY_BOY_2, 0, 1, 0
	goto _02DB

scr_seq_T21_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_MYSTIC_WATER_FROM_CHERRYGROVE_CITY_MAN, _0317
	npc_msg 20
	goto_if_no_item_space ITEM_MYSTIC_WATER, 1, _0322
	callstd std_give_item_verbose
	setflag FLAG_GOT_MYSTIC_WATER_FROM_CHERRYGROVE_CITY_MAN
	npc_msg 21
	wait_button
	closemsg
	releaseall
	end

scr_seq_T21_005:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 24, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T21_006:
	direction_signpost 23, 0, 12, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T21_007:
	simple_npc_msg 19
	end

scr_seq_T21_008:
	simple_npc_msg 17
	end

scr_seq_T21_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _032D
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0341
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0355
	apply_movement obj_player, _0B16
	apply_movement obj_T21_gsmiddleman1, _0B2E
	goto _0370

scr_seq_T21_010:
	goto_if_unset FLAG_UNK_189, _03D1
	clearflag FLAG_UNK_189
	end

_022C:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _0415
	apply_movement obj_T21_gsoldman1, _0B3A
	goto _0247

_0247:
	apply_movement obj_player, _0B42
	wait_movement
	npc_msg 0
	give_running_shoes
	buffer_players_name 0
	npc_msg 7
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	closemsg
	apply_movement obj_T21_gsoldman1, _0B4A
	wait_movement
	release obj_T21_gsoldman1
	hide_person obj_T21_gsoldman1
	setflag FLAG_HIDE_CHERRYGROVE_GUIDE_GENT
	setvar VAR_SCENE_CHERRYGROVE_CITY_OW, 1
	callstd std_fade_end_mom_music
	releaseall
	end

_0288:
	compare VAR_TEMP_x4000, 550
	goto_if_ne _0430
	apply_movement obj_T21_gsoldman1, _0AFE
	goto _02A3

_02A3:
	wait_movement
	compare VAR_TEMP_x4000, 549
	goto_if_ne _0455
	apply_movement obj_player, _0B66
	goto _0470

_02C0:
	compare VAR_SPECIAL_RESULT, 703
	goto_if_ne _04B0
	trainer_battle TRAINER_PASSERBY_BOY_3, 0, 1, 0
	goto _02DB

_02DB:
	check_battle_won VAR_SPECIAL_RESULT
	callstd std_play_rival_outro_music
	npc_msg 14
	closemsg
	play_se SEQ_SE_DP_WALL_HIT2
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _04F4
	apply_movement obj_player, _0B6E
	goto _0523

_0317:
	npc_msg 21
	wait_button
	closemsg
	releaseall
	end

_0322:
	npc_msg 22
	wait_button
	closemsg
	releaseall
	end

_032D:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button
	closemsg
	releaseall
	end

_0341:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button
	closemsg
	releaseall
	end

_0355:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _054A
	apply_movement obj_player, _0B82
	goto _0370

_0370:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _056D
	apply_movement obj_partner_poke, _0B8E
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 1
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

_03D1:
	check_badge BADGE_PLAIN, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _05A7
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _05AD
	compare VAR_TEMP_x4000, 3
	goto_if_eq _05AD
	compare VAR_TEMP_x4000, 5
	goto_if_eq _05AD
	setflag FLAG_HIDE_CAMERON
	end

_0415:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _05B3
	apply_movement obj_T21_gsoldman1, _0B9E
	goto _0247

_0430:
	apply_movement obj_T21_gsoldman1, _0BA6
	wait_movement
	compare VAR_TEMP_x4000, 549
	goto_if_ne _0455
	apply_movement obj_player, _0B66
	goto _0470

_0455:
	compare VAR_TEMP_x4000, 550
	goto_if_ne _05FB
	apply_movement obj_player, _0B66
	goto _0470

_0470:
	wait_movement
	npc_msg 9
	buffer_players_name 0
	npc_msg 10
	play_fanfare SEQ_ME_KEYITEM
	wait_fanfare
	npc_msg 11
	npc_msg 12
	closemsg
	apply_movement obj_T21_gsoldman1, _0BB6
	wait_movement
	callstd std_fade_end_mom_music
	release obj_T21_gsoldman1
	hide_person obj_T21_gsoldman1
	setflag FLAG_HIDE_CHERRYGROVE_GUIDE_GENT
	register_pokegear_card 1
	releaseall
	setvar VAR_SCENE_CHERRYGROVE_CITY_OW, 2
	end

_04B0:
	trainer_battle TRAINER_PASSERBY_BOY, 0, 1, 0
	check_battle_won VAR_SPECIAL_RESULT
	callstd std_play_rival_outro_music
	npc_msg 14
	closemsg
	play_se SEQ_SE_DP_WALL_HIT2
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _04F4
	apply_movement obj_player, _0B6E
	goto _0523

_04F4:
	apply_movement obj_player, _0BBE
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _0643
	apply_movement obj_T21_gsrivel, _0BD2
	goto _067D

_0523:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _0643
	apply_movement obj_T21_gsrivel, _0BD2
	goto _067D

_054A:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _06AF
	apply_movement obj_player, _0C06
	apply_movement obj_T21_gsmiddleman1, _0B2E
	goto _0370

_056D:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 1
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

_05A7:
	setflag FLAG_HIDE_CAMERON
	end

_05AD:
	clearflag FLAG_HIDE_CAMERON
	end

_05B3:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _0247
	apply_movement obj_T21_gsoldman1, _0C22
	apply_movement obj_player, _0B42
	wait_movement
	npc_msg 0
	closemsg
	buffer_players_name 0
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0720
	apply_movement obj_T21_gsoldman1, _0B4A
	goto _073B

_05FB:
	apply_movement obj_player, _0C2A
	wait_movement
	npc_msg 9
	buffer_players_name 0
	npc_msg 10
	play_fanfare SEQ_ME_KEYITEM
	wait_fanfare
	npc_msg 11
	npc_msg 12
	closemsg
	apply_movement obj_T21_gsoldman1, _0BB6
	wait_movement
	callstd std_fade_end_mom_music
	release obj_T21_gsoldman1
	hide_person obj_T21_gsoldman1
	setflag FLAG_HIDE_CHERRYGROVE_GUIDE_GENT
	register_pokegear_card 1
	releaseall
	setvar VAR_SCENE_CHERRYGROVE_CITY_OW, 2
	end

_0643:
	apply_movement obj_T21_gsrivel, _0C32
	wait_movement
	npc_msg 15
	closemsg
	get_person_coords 4, VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 401
	goto_if_ne _0779
	apply_movement obj_T21_gsrivel, _0C66
	apply_movement obj_player, _0C76
	goto _07A5

_067D:
	wait_movement
	npc_msg 15
	closemsg
	get_person_coords 4, VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 401
	goto_if_ne _0779
	apply_movement obj_T21_gsrivel, _0C66
	apply_movement obj_player, _0C76
	goto _07A5

_06AF:
	apply_movement obj_player, _0C82
	apply_movement obj_T21_gsmiddleman1, _0B2E
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _056D
	apply_movement obj_partner_poke, _0B8E
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 1
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

_0720:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _07C1
	apply_movement obj_T21_gsoldman1, _0C96
	goto _073B

_073B:
	wait_movement
	apply_movement obj_player, _0B66
	wait_movement
	npc_msg 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4001, 397
	goto_if_ne _07DC
	apply_movement obj_T21_gsoldman1, _0CBA
	apply_movement obj_player, _0CD2
	goto _07FF

_0779:
	apply_movement obj_T21_gsrivel, _0CE2
	apply_movement obj_player, _0C76
	wait_movement
	hide_person obj_T21_gsrivel
	setflag FLAG_HIDE_CHERRYGROVE_RIVAL
	callstd std_fade_end_rival_outro_music
	releaseall
	setvar VAR_SCENE_CHERRYGROVE_CITY_OW, 4
	setflag FLAG_MET_PASSERBY_BOY
	end

_07A5:
	wait_movement
	hide_person obj_T21_gsrivel
	setflag FLAG_HIDE_CHERRYGROVE_RIVAL
	callstd std_fade_end_rival_outro_music
	releaseall
	setvar VAR_SCENE_CHERRYGROVE_CITY_OW, 4
	setflag FLAG_MET_PASSERBY_BOY
	end

_07C1:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _0927
	apply_movement obj_T21_gsoldman1, _0CEA
	goto _073B

_07DC:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _097A
	apply_movement obj_T21_gsoldman1, _0D0E
	apply_movement obj_player, _0D26
	goto _07FF

_07FF:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 2
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T21_gsoldman1, _0D36
	apply_movement obj_player, _0D4A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 3
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T21_gsoldman1, _0D5E
	apply_movement obj_player, _0D7A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 4
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T21_gsoldman1, _0D8A
	apply_movement obj_player, _0DAA
	wait_movement
	play_se SEQ_SE_GS_N_UMIBE
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 5
	closemsg
	stop_se SEQ_SE_GS_N_UMIBE
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T21_gsoldman1, _0DCA
	apply_movement obj_player, _0DE6
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 6
	give_running_shoes
	buffer_players_name 0
	npc_msg 7
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	npc_msg 8
	closemsg
	apply_movement obj_T21_gsoldman1, _0DFE
	wait_movement
	scrcmd_307 17, 12, 14, 17, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_T21_gsoldman1, _0DFE
	wait_movement
	release obj_T21_gsoldman1
	release obj_partner_poke
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T21_gsoldman1
	wait_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_CHERRYGROVE_GUIDE_GENT
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	callstd std_fade_end_mom_music
	setvar VAR_SCENE_CHERRYGROVE_CITY_OW, 1
	end

_0927:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _073B
	apply_movement obj_T21_gsoldman1, _0E06
	wait_movement
	apply_movement obj_player, _0B66
	wait_movement
	npc_msg 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4001, 397
	goto_if_ne _07DC
	apply_movement obj_T21_gsoldman1, _0CBA
	apply_movement obj_player, _0CD2
	goto _07FF

_097A:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _099D
	apply_movement obj_T21_gsoldman1, _0E2A
	apply_movement obj_player, _0E42
	goto _07FF

_099D:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _07FF
	apply_movement obj_T21_gsoldman1, _0E52
	apply_movement obj_player, _0E6A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 2
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T21_gsoldman1, _0D36
	apply_movement obj_player, _0D4A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 3
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T21_gsoldman1, _0D5E
	apply_movement obj_player, _0D7A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 4
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T21_gsoldman1, _0D8A
	apply_movement obj_player, _0DAA
	wait_movement
	play_se SEQ_SE_GS_N_UMIBE
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 5
	closemsg
	stop_se SEQ_SE_GS_N_UMIBE
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T21_gsoldman1, _0DCA
	apply_movement obj_player, _0DE6
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 6
	give_running_shoes
	buffer_players_name 0
	npc_msg 7
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	npc_msg 8
	closemsg
	apply_movement obj_T21_gsoldman1, _0DFE
	wait_movement
	scrcmd_307 17, 12, 14, 17, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_T21_gsoldman1, _0DFE
	wait_movement
	release obj_T21_gsoldman1
	release obj_partner_poke
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T21_gsoldman1
	wait_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_CHERRYGROVE_GUIDE_GENT
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	callstd std_fade_end_mom_music
	setvar VAR_SCENE_CHERRYGROVE_CITY_OW, 1
	end

	.balign 4
_0AE2:

	step 75, 1
	step_end
	.balign 4
_0AEA:

	step 62, 1
	step_end
	.balign 4
_0AF2:

	step 75, 1
	step 37, 1
	step_end
	.balign 4
_0AFE:

	step 18, 1
	step 16, 9
	step 35, 1
	step_end
	.balign 4
_0B0E:

	step 14, 7
	step_end
	.balign 4
_0B16:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_0B2E:

	step 63, 1
	step 32, 1
	step_end
	.balign 4
_0B3A:

	step 13, 1
	step_end
	.balign 4
_0B42:

	step 32, 1
	step_end
	.balign 4
_0B4A:

	step 18, 2
	step 16, 2
	step 75, 1
	step 37, 1
	step 17, 3
	step 19, 1
	step_end
	.balign 4
_0B66:

	step 34, 1
	step_end
	.balign 4
_0B6E:

	step 0, 1
	step 71, 1
	step 17, 1
	step 72, 1
	step_end
	.balign 4
_0B82:

	step 12, 3
	step 33, 1
	step_end
	.balign 4
_0B8E:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.balign 4
_0B9E:

	step 13, 2
	step_end
	.balign 4
_0BA6:

	step 19, 1
	step 16, 9
	step 34, 1
	step_end
	.balign 4
_0BB6:

	step 17, 9
	step_end
	.balign 4
_0BBE:

	step 1, 1
	step 71, 1
	step 16, 1
	step 72, 1
	step_end
	.balign 4
_0BD2:

	step 14, 6
	step 75, 1
	step 37, 1
	step 63, 1
	step 36, 1
	step 63, 1
	step 37, 1
	step 63, 1
	step 35, 1
	step 63, 1
	step 15, 5
	step 33, 1
	step_end
	.balign 4
_0C06:

	step 13, 1
	step 15, 2
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_0C22:

	step 13, 3
	step_end
	.balign 4
_0C2A:

	step 35, 1
	step_end
	.balign 4
_0C32:

	step 14, 6
	step 75, 1
	step 37, 1
	step 63, 1
	step 36, 1
	step 63, 1
	step 37, 1
	step 63, 1
	step 35, 1
	step 63, 1
	step 15, 5
	step 32, 1
	step_end
	.balign 4
_0C66:

	step 14, 5
	step 12, 1
	step 14, 6
	step_end
	.balign 4
_0C76:

	step 63, 2
	step 34, 1
	step_end
	.balign 4
_0C82:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_0C96:

	step 18, 2
	step 16, 3
	step 63, 1
	step 37, 1
	step 66, 1
	step 75, 1
	step 17, 4
	step 19, 1
	step_end
	.balign 4
_0CBA:

	step 18, 1
	step 16, 3
	step 37, 1
	step 62, 4
	step 36, 1
	step_end
	.balign 4
_0CD2:

	step 14, 2
	step 12, 2
	step 63, 1
	step_end
	.balign 4
_0CE2:

	step 14, 11
	step_end
	.balign 4
_0CEA:

	step 18, 2
	step 16, 4
	step 63, 1
	step 37, 1
	step 66, 1
	step 75, 1
	step 17, 5
	step 19, 1
	step_end
	.balign 4
_0D0E:

	step 18, 1
	step 16, 4
	step 37, 1
	step 62, 5
	step 36, 1
	step_end
	.balign 4
_0D26:

	step 14, 2
	step 12, 3
	step 63, 1
	step_end
	.balign 4
_0D36:

	step 18, 9
	step 39, 1
	step 62, 7
	step 36, 1
	step_end
	.balign 4
_0D4A:

	step 12, 1
	step 14, 8
	step 63, 2
	step 32, 1
	step_end
	.balign 4
_0D5E:

	step 18, 6
	step 16, 2
	step 18, 1
	step 39, 1
	step 62, 7
	step 36, 1
	step_end
	.balign 4
_0D7A:

	step 14, 7
	step 12, 2
	step 63, 1
	step_end
	.balign 4
_0D8A:

	step 17, 2
	step 18, 6
	step 17, 8
	step 14, 6
	step 36, 1
	step 62, 17
	step 38, 1
	step_end
	.balign 4
_0DAA:

	step 14, 1
	step 13, 2
	step 14, 6
	step 13, 7
	step 14, 6
	step 63, 2
	step 34, 1
	step_end
	.balign 4
_0DCA:

	step 19, 16
	step 38, 1
	step 62, 6
	step 17, 2
	step 19, 6
	step 38, 1
	step_end
	.balign 4
_0DE6:

	step 62, 1
	step 13, 1
	step 15, 16
	step 13, 2
	step 15, 5
	step_end
	.balign 4
_0DFE:

	step 12, 2
	step_end
	.balign 4
_0E06:

	step 18, 2
	step 16, 4
	step 63, 1
	step 37, 1
	step 66, 1
	step 75, 1
	step 17, 5
	step 19, 1
	step_end
	.balign 4
_0E2A:

	step 18, 1
	step 16, 5
	step 37, 1
	step 62, 6
	step 36, 1
	step_end
	.balign 4
_0E42:

	step 14, 2
	step 12, 4
	step 63, 1
	step_end
	.balign 4
_0E52:

	step 18, 1
	step 16, 6
	step 37, 1
	step 62, 9
	step 36, 1
	step_end
	.balign 4
_0E6A:

	step 14, 2
	step 12, 5
	step 63, 1
	step_end
	.balign 4
