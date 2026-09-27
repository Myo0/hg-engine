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

.include "data/scr_seq/include/event_D44R0103.inc"


// text archive to grab from: 130.txt

.data


scrdef scr_seq_D44R0103_000
scrdef scr_seq_D44R0103_001
scrdef scr_seq_D44R0103_002
scrdef scr_seq_D44R0103_003
scrdef scr_seq_D44R0103_004
scrdef scr_seq_D44R0103_005
scrdef_end

scr_seq_D44R0103_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_DRATINI_FROM_MASTER_LONG_AGO, _0388
	goto_if_set FLAG_GOT_DRATINI_FROM_MASTER_JUST_NOW, _0393
	goto_if_set FLAG_GOT_TM59_FROM_CLAIR, _03A2
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _03BF
	npc_msg 20
	goto _03CA

scr_seq_D44R0103_001:
	simple_npc_msg 24
	end

scr_seq_D44R0103_002:
	simple_npc_msg 25
	end

scr_seq_D44R0103_003:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0FB2
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 0
	setvar VAR_SPECIAL_x8004, 0
	npc_msg 1
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 280, 255, 0
	menu_item_add 281, 255, 1
	menu_item_add 282, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 1
	npc_msg 2
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 283, 255, 0
	menu_item_add 284, 255, 0
	menu_item_add 285, 255, 1
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 2
	npc_msg 3
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 286, 255, 1
	menu_item_add 287, 255, 0
	menu_item_add 288, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 3
	npc_msg 4
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 289, 255, 0
	menu_item_add 290, 255, 1
	menu_item_add 291, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 4
	npc_msg 5
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 292, 255, 1
	menu_item_add 293, 255, 0
	menu_item_add 294, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	buffer_players_name 0
	npc_msg 6
	closemsg
	move_person_facing obj_D44R0103_gsleader8, 6, 0, 21, DIR_NORTH
	wait 10, VAR_SPECIAL_x8004
	play_se SEQ_SE_DP_DOOR
	wait 5, VAR_SPECIAL_x8004
	callstd std_play_clair_music
	apply_movement obj_player, _0FBA
	apply_movement obj_D44R0103_gsleader8, _0FD2
	wait_movement
	npc_msg 10
	apply_movement obj_D44R0103_gsleader8, _0FEA
	wait_movement
	npc_msg 11
	apply_movement obj_D44R0103_gsleader8, _0FFA
	wait_movement
	npc_msg 12
	apply_movement obj_D44R0103_chourou, _1006
	wait_movement
	npc_msg 13
	apply_movement obj_D44R0103_gsleader8, _1016
	wait_movement
	npc_msg 14
	apply_movement obj_D44R0103_gsleader8, _101E
	apply_movement obj_D44R0103_chourou, _1026
	wait_movement
	npc_msg 15
	buffer_players_name 0
	npc_msg 16
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_RISING
	npc_msg 17
	closemsg
	cleartrainerflag TRAINER_ACE_TRAINER_M_KOBE
	cleartrainerflag TRAINER_ACE_TRAINER_F_PIPER
	cleartrainerflag TRAINER_TWINS_CLEA_AND_GIL
	npc_msg 33
	closemsg
	giveitem_no_check ITEM_CHARIZARDITE_X, 1
	apply_movement obj_D44R0103_chourou, _1032
	apply_movement obj_player, _1042
	apply_movement obj_D44R0103_gsleader8, _104E
	wait_movement
	npc_msg 18
	closemsg
	wait 15, VAR_SPECIAL_x8005
	npc_msg 19
	closemsg
	apply_movement obj_D44R0103_gsleader8, _105E
	wait_movement
	hide_person obj_D44R0103_gsleader8
	callstd std_fade_end_clair_music
	wait_fanfare
	apply_movement obj_D44R0103_chourou, _107A
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0432
	npc_msg 20
	goto _046F

scr_seq_D44R0103_004:
	goto_if_unset FLAG_UNK_189, _04A9
	clearflag FLAG_UNK_189
	end

scr_seq_D44R0103_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04BA
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04CE
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _04E2
	apply_movement obj_player, _1082
	apply_movement obj_D44R0103_gsmiddleman1, _109A
	goto _04FD

_0388:
	npc_msg 30
	wait_button
	closemsg
	releaseall
	end

_0393:
	setflag FLAG_GOT_DRATINI_FROM_MASTER_JUST_NOW
	npc_msg 29
	wait_button
	closemsg
	releaseall
	end

_03A2:
	npc_msg 26
	get_party_count VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 6
	goto_if_ne _055E
	npc_msg 28
	goto _05AC

_03BF:
	npc_msg 22
	wait_button
	closemsg
	releaseall
	end

_03CA:
	wait_button
	closemsg
	releaseall
	end

_03D2:
	setflag FLAG_FAILED_DRAGONS_DEN_QUIZ
	apply_movement obj_D44R0103_chourou, _10A6
	wait_movement
	npc_msg 7
	apply_movement obj_D44R0103_chourou, _10B6
	wait_movement
	npc_msg 8
	wait_ab_press
	switch VAR_SPECIAL_x8004
	case 0, _05B4
	case 1, _07E7
	case 2, _09DB
	case 3, _0B90
	goto _0D0A

_0432:
	npc_msg 21
	wait_button
	closemsg
	releaseall
	setflag FLAG_UNK_998
	setflag FLAG_UNK_0EA
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	setvar VAR_UNK_40C4, 1
	setflag FLAG_HIDE_NEW_BARK_FRIENDS_ROOM_FRIEND
	setvar VAR_UNK_40C3, 1
	setvar VAR_UNK_407B, 1
	setvar VAR_SCENE_ELMS_LAB, 8
	clearflag FLAG_HIDE_ELMS_LAB_FRIEND
	setvar VAR_SCENE_NEW_BARK_EAST_EXIT, 1
	end

_046F:
	wait_button
	closemsg
	releaseall
	setflag FLAG_UNK_998
	setflag FLAG_UNK_0EA
	clearflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	setvar VAR_UNK_40C4, 1
	setflag FLAG_HIDE_NEW_BARK_FRIENDS_ROOM_FRIEND
	setvar VAR_UNK_40C3, 1
	setvar VAR_UNK_407B, 1
	setvar VAR_SCENE_ELMS_LAB, 8
	clearflag FLAG_HIDE_ELMS_LAB_FRIEND
	setvar VAR_SCENE_NEW_BARK_EAST_EXIT, 1
	end

_04A9:
	goto_if_set FLAG_UNK_0EA, _0E41
	goto _0E69

_04BA:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button
	closemsg
	releaseall
	end

_04CE:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button
	closemsg
	releaseall
	end

_04E2:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0E73
	apply_movement obj_player, _10BE
	goto _04FD

_04FD:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0E96
	apply_movement obj_partner_poke, _10CA
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 46
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

_055E:
	buffer_players_name 0
	npc_msg 27
	play_fanfare SEQ_ME_SHINKAOME
	wait_fanfare
	give_mon SPECIES_LATIAS, 35, 557, 0, 0, VAR_SPECIAL_RESULT
	setvar VAR_SPECIAL_x8008, 380
	scrcmd_208 3, 0
	goto_if_set FLAG_FAILED_DRAGONS_DEN_QUIZ, _0ED0
	npc_msg 32
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0EEE
	goto _0393

_05AC:
	wait_button
	closemsg
	releaseall
	end

_05B4:
	setvar VAR_SPECIAL_x8004, 0
	npc_msg 1
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 280, 255, 0
	menu_item_add 281, 255, 1
	menu_item_add 282, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 1
	npc_msg 2
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 283, 255, 0
	menu_item_add 284, 255, 0
	menu_item_add 285, 255, 1
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 2
	npc_msg 3
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 286, 255, 1
	menu_item_add 287, 255, 0
	menu_item_add 288, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 3
	npc_msg 4
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 289, 255, 0
	menu_item_add 290, 255, 1
	menu_item_add 291, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 4
	npc_msg 5
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 292, 255, 1
	menu_item_add 293, 255, 0
	menu_item_add 294, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	buffer_players_name 0
	npc_msg 6
	closemsg
	move_person_facing obj_D44R0103_gsleader8, 6, 0, 21, DIR_NORTH
	wait 10, VAR_SPECIAL_x8004
	play_se SEQ_SE_DP_DOOR
	wait 5, VAR_SPECIAL_x8004
	callstd std_play_clair_music
	apply_movement obj_player, _0FBA
	apply_movement obj_D44R0103_gsleader8, _0FD2
	wait_movement
	npc_msg 10
	apply_movement obj_D44R0103_gsleader8, _0FEA
	wait_movement
	npc_msg 11
	apply_movement obj_D44R0103_gsleader8, _0FFA
	wait_movement
	npc_msg 12
	apply_movement obj_D44R0103_chourou, _1006
	wait_movement
	npc_msg 13
	apply_movement obj_D44R0103_gsleader8, _1016
	wait_movement
	npc_msg 14
	apply_movement obj_D44R0103_gsleader8, _101E
	apply_movement obj_D44R0103_chourou, _1026
	wait_movement
	npc_msg 15
	buffer_players_name 0
	npc_msg 16
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_RISING
	npc_msg 17
	apply_movement obj_D44R0103_chourou, _1032
	apply_movement obj_player, _1042
	apply_movement obj_D44R0103_gsleader8, _104E
	wait_movement
	npc_msg 18
	closemsg
	wait 15, VAR_SPECIAL_x8005
	npc_msg 19
	closemsg
	apply_movement obj_D44R0103_gsleader8, _105E
	wait_movement
	hide_person obj_D44R0103_gsleader8
	callstd std_fade_end_clair_music
	wait_fanfare
	apply_movement obj_D44R0103_chourou, _107A
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0432
	npc_msg 20
	goto _046F

_07E7:
	setvar VAR_SPECIAL_x8004, 1
	npc_msg 2
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 283, 255, 0
	menu_item_add 284, 255, 0
	menu_item_add 285, 255, 1
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 2
	npc_msg 3
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 286, 255, 1
	menu_item_add 287, 255, 0
	menu_item_add 288, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 3
	npc_msg 4
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 289, 255, 0
	menu_item_add 290, 255, 1
	menu_item_add 291, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 4
	npc_msg 5
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 292, 255, 1
	menu_item_add 293, 255, 0
	menu_item_add 294, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	buffer_players_name 0
	npc_msg 6
	closemsg
	move_person_facing obj_D44R0103_gsleader8, 6, 0, 21, DIR_NORTH
	wait 10, VAR_SPECIAL_x8004
	play_se SEQ_SE_DP_DOOR
	wait 5, VAR_SPECIAL_x8004
	callstd std_play_clair_music
	apply_movement obj_player, _0FBA
	apply_movement obj_D44R0103_gsleader8, _0FD2
	wait_movement
	npc_msg 10
	apply_movement obj_D44R0103_gsleader8, _0FEA
	wait_movement
	npc_msg 11
	apply_movement obj_D44R0103_gsleader8, _0FFA
	wait_movement
	npc_msg 12
	apply_movement obj_D44R0103_chourou, _1006
	wait_movement
	npc_msg 13
	apply_movement obj_D44R0103_gsleader8, _1016
	wait_movement
	npc_msg 14
	apply_movement obj_D44R0103_gsleader8, _101E
	apply_movement obj_D44R0103_chourou, _1026
	wait_movement
	npc_msg 15
	buffer_players_name 0
	npc_msg 16
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_RISING
	npc_msg 17
	apply_movement obj_D44R0103_chourou, _1032
	apply_movement obj_player, _1042
	apply_movement obj_D44R0103_gsleader8, _104E
	wait_movement
	npc_msg 18
	closemsg
	wait 15, VAR_SPECIAL_x8005
	npc_msg 19
	closemsg
	apply_movement obj_D44R0103_gsleader8, _105E
	wait_movement
	hide_person obj_D44R0103_gsleader8
	callstd std_fade_end_clair_music
	wait_fanfare
	apply_movement obj_D44R0103_chourou, _107A
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0432
	npc_msg 20
	goto _046F

_09DB:
	setvar VAR_SPECIAL_x8004, 2
	npc_msg 3
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 286, 255, 1
	menu_item_add 287, 255, 0
	menu_item_add 288, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 3
	npc_msg 4
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 289, 255, 0
	menu_item_add 290, 255, 1
	menu_item_add 291, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 4
	npc_msg 5
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 292, 255, 1
	menu_item_add 293, 255, 0
	menu_item_add 294, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	buffer_players_name 0
	npc_msg 6
	closemsg
	move_person_facing obj_D44R0103_gsleader8, 6, 0, 21, DIR_NORTH
	wait 10, VAR_SPECIAL_x8004
	play_se SEQ_SE_DP_DOOR
	wait 5, VAR_SPECIAL_x8004
	callstd std_play_clair_music
	apply_movement obj_player, _0FBA
	apply_movement obj_D44R0103_gsleader8, _0FD2
	wait_movement
	npc_msg 10
	apply_movement obj_D44R0103_gsleader8, _0FEA
	wait_movement
	npc_msg 11
	apply_movement obj_D44R0103_gsleader8, _0FFA
	wait_movement
	npc_msg 12
	apply_movement obj_D44R0103_chourou, _1006
	wait_movement
	npc_msg 13
	apply_movement obj_D44R0103_gsleader8, _1016
	wait_movement
	npc_msg 14
	apply_movement obj_D44R0103_gsleader8, _101E
	apply_movement obj_D44R0103_chourou, _1026
	wait_movement
	npc_msg 15
	buffer_players_name 0
	npc_msg 16
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_RISING
	npc_msg 17
	apply_movement obj_D44R0103_chourou, _1032
	apply_movement obj_player, _1042
	apply_movement obj_D44R0103_gsleader8, _104E
	wait_movement
	npc_msg 18
	closemsg
	wait 15, VAR_SPECIAL_x8005
	npc_msg 19
	closemsg
	apply_movement obj_D44R0103_gsleader8, _105E
	wait_movement
	hide_person obj_D44R0103_gsleader8
	callstd std_fade_end_clair_music
	wait_fanfare
	apply_movement obj_D44R0103_chourou, _107A
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0432
	npc_msg 20
	goto _046F

_0B90:
	setvar VAR_SPECIAL_x8004, 3
	npc_msg 4
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 289, 255, 0
	menu_item_add 290, 255, 1
	menu_item_add 291, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	npc_msg 9
	setvar VAR_SPECIAL_x8004, 4
	npc_msg 5
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 292, 255, 1
	menu_item_add 293, 255, 0
	menu_item_add 294, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	buffer_players_name 0
	npc_msg 6
	closemsg
	move_person_facing obj_D44R0103_gsleader8, 6, 0, 21, DIR_NORTH
	wait 10, VAR_SPECIAL_x8004
	play_se SEQ_SE_DP_DOOR
	wait 5, VAR_SPECIAL_x8004
	callstd std_play_clair_music
	apply_movement obj_player, _0FBA
	apply_movement obj_D44R0103_gsleader8, _0FD2
	wait_movement
	npc_msg 10
	apply_movement obj_D44R0103_gsleader8, _0FEA
	wait_movement
	npc_msg 11
	apply_movement obj_D44R0103_gsleader8, _0FFA
	wait_movement
	npc_msg 12
	apply_movement obj_D44R0103_chourou, _1006
	wait_movement
	npc_msg 13
	apply_movement obj_D44R0103_gsleader8, _1016
	wait_movement
	npc_msg 14
	apply_movement obj_D44R0103_gsleader8, _101E
	apply_movement obj_D44R0103_chourou, _1026
	wait_movement
	npc_msg 15
	buffer_players_name 0
	npc_msg 16
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_RISING
	setflag FLAG_UNK_A12
	npc_msg 17
	apply_movement obj_D44R0103_chourou, _1032
	apply_movement obj_player, _1042
	apply_movement obj_D44R0103_gsleader8, _104E
	wait_movement
	npc_msg 18
	closemsg
	wait 15, VAR_SPECIAL_x8005
	npc_msg 19
	closemsg
	apply_movement obj_D44R0103_gsleader8, _105E
	wait_movement
	hide_person obj_D44R0103_gsleader8
	callstd std_fade_end_clair_music
	wait_fanfare
	apply_movement obj_D44R0103_chourou, _107A
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0432
	npc_msg 20
	goto _046F

_0D0A:
	setvar VAR_SPECIAL_x8004, 4
	npc_msg 5
	touchscreen_menu_hide
	menu_init_std_gmm 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add 292, 255, 1
	menu_item_add 293, 255, 0
	menu_item_add 294, 255, 0
	menu_exec
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03D2
	buffer_players_name 0
	npc_msg 6
	closemsg
	move_person_facing obj_D44R0103_gsleader8, 6, 0, 21, DIR_NORTH
	wait 10, VAR_SPECIAL_x8004
	play_se SEQ_SE_DP_DOOR
	wait 5, VAR_SPECIAL_x8004
	callstd std_play_clair_music
	apply_movement obj_player, _0FBA
	apply_movement obj_D44R0103_gsleader8, _0FD2
	wait_movement
	npc_msg 10
	apply_movement obj_D44R0103_gsleader8, _0FEA
	wait_movement
	npc_msg 11
	apply_movement obj_D44R0103_gsleader8, _0FFA
	wait_movement
	npc_msg 12
	apply_movement obj_D44R0103_chourou, _1006
	wait_movement
	npc_msg 13
	apply_movement obj_D44R0103_gsleader8, _1016
	wait_movement
	npc_msg 14
	apply_movement obj_D44R0103_gsleader8, _101E
	apply_movement obj_D44R0103_chourou, _1026
	wait_movement
	npc_msg 15
	buffer_players_name 0
	npc_msg 16
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_RISING
	npc_msg 17
	apply_movement obj_D44R0103_chourou, _1032
	apply_movement obj_player, _1042
	apply_movement obj_D44R0103_gsleader8, _104E
	wait_movement
	npc_msg 18
	closemsg
	wait 15, VAR_SPECIAL_x8005
	npc_msg 19
	closemsg
	apply_movement obj_D44R0103_gsleader8, _105E
	wait_movement
	hide_person obj_D44R0103_gsleader8
	callstd std_fade_end_clair_music
	wait_fanfare
	apply_movement obj_D44R0103_chourou, _107A
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0432
	npc_msg 20
	goto _046F

_0E41:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0F1D
	compare VAR_TEMP_x4000, 4
	goto_if_eq _0F1D
	setflag FLAG_HIDE_CAMERON
	goto _0F2E

_0E69:
	setflag FLAG_HIDE_CAMERON
	goto _0F2E

_0E73:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0F3B
	apply_movement obj_player, _10DA
	apply_movement obj_D44R0103_gsmiddleman1, _109A
	goto _04FD

_0E96:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 46
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

_0ED0:
	npc_msg 32
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0EEE
	goto _0393

_0EEE:
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	setflag FLAG_GOT_DRATINI_FROM_MASTER_JUST_NOW
	npc_msg 29
	wait_button
	closemsg
	releaseall
	end

_0F1D:
	clearflag FLAG_HIDE_CAMERON
	goto_if_set FLAG_GOT_DRATINI_FROM_MASTER_JUST_NOW, _0FAC
	end

_0F2E:
	goto_if_set FLAG_GOT_DRATINI_FROM_MASTER_JUST_NOW, _0FAC
	end

_0F3B:
	apply_movement obj_player, _10EE
	apply_movement obj_D44R0103_gsmiddleman1, _109A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0E96
	apply_movement obj_partner_poke, _10CA
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 46
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

_0FAC:
	setflag FLAG_GOT_DRATINI_FROM_MASTER_LONG_AGO
	end

	.balign 4
_0FB2:

	step 12, 8
	step_end
	.balign 4
_0FBA:

	step 63, 1
	step 75, 1
	step 1, 1
	step 63, 8
	step 2, 1
	step_end
	.balign 4
_0FD2:

	step 63, 4
	step 12, 8
	step 14, 1
	step 12, 2
	step 3, 1
	step_end
	.balign 4
_0FEA:

	step 63, 1
	step 71, 1
	step 18, 1
	step_end
	.balign 4
_0FFA:

	step 63, 1
	step 10, 1
	step_end
	.balign 4
_1006:

	step 63, 1
	step 9, 1
	step 10, 1
	step_end
	.balign 4
_1016:

	step 75, 1
	step_end
	.balign 4
_101E:

	step 15, 2
	step_end
	.balign 4
_1026:

	step 63, 2
	step 3, 1
	step_end
	.balign 4
_1032:

	step 8, 1
	step 11, 1
	step 1, 1
	step_end
	.balign 4
_1042:

	step 65, 2
	step 0, 1
	step_end
	.balign 4
_104E:

	step 72, 1
	step 65, 2
	step 0, 1
	step_end
	.balign 4
_105E:

	step 71, 1
	step 13, 1
	step 72, 1
	step 21, 3
	step 23, 1
	step 21, 4
	step_end
	.balign 4
_107A:

	step 33, 1
	step_end
	.balign 4
_1082:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_109A:

	step 63, 1
	step 32, 1
	step_end
	.balign 4
_10A6:

	step 63, 2
	step 3, 1
	step 63, 2
	step_end
	.balign 4
_10B6:

	step 1, 1
	step_end
	.balign 4
_10BE:

	step 12, 3
	step 33, 1
	step_end
	.balign 4
_10CA:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.balign 4
_10DA:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_10EE:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
