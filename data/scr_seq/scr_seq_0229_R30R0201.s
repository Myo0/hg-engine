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

.include "data/scr_seq/include/event_R30R0201.inc"


// text archive to grab from: 377.txt

.data


scrdef scr_seq_R30R0201_000
scrdef scr_seq_R30R0201_001
scrdef scr_seq_R30R0201_002
scrdef scr_seq_R30R0201_003
scrdef_end

scr_seq_R30R0201_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_EMBEDDED_TOWER, 4
	goto_if_ge _018B
	compare VAR_SCENE_EMBEDDED_TOWER, 2
	goto_if_ge _01B9
	goto_if_set FLAG_EXCHANGED_RED_SCALE, _01C4
	goto_if_set FLAG_GOT_RED_SCALE, _01F3
	compare VAR_SCENE_MR_POKEMONS_HOUSE, 2
	goto_if_ge _0252
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

scr_seq_R30R0201_001:
	scrcmd_609
	lockall
	apply_movement obj_R30R0201_gsgentleman, _03A8
	wait_movement
	apply_movement obj_R30R0201_ookido, _03B0
	apply_movement obj_R30R0201_gsgentleman, _03B8
	wait_movement
	buffer_players_name 0
	gender_msgbox 0, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_R30R0201_gsgentleman, _03C8
	apply_movement obj_player, _03D8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_R30R0201_gsgentleman, _03E8
	wait_movement
	npc_msg 2
	giveitem_no_check ITEM_MYSTERY_EGG, 1
	npc_msg 3
	npc_msg 4
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	stop_bgm 0
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	goto _025D

scr_seq_R30R0201_002:
	scrcmd_609
	lockall
	setvar VAR_SCENE_EMBEDDED_TOWER, 2
	apply_movement obj_R30R0201_gsgentleman, _03A8
	wait_movement
	apply_movement obj_R30R0201_gsgentleman, _0408
	wait_movement
	buffer_players_name 0
	gender_msgbox 21, 22
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_R30R0201_gsgentleman, _03C8
	apply_movement obj_player, _03D8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 23
	closemsg
	apply_movement obj_R30R0201_gsgentleman, _03E8
	wait_movement
	buffer_players_name 0
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0320
	setvar VAR_SPECIAL_x8004, 535
	goto _033D

scr_seq_R30R0201_003:
	compare VAR_SCENE_EMBEDDED_TOWER, 1
	goto_if_eq _0354
	end

_018B:
	goto_if_set FLAG_EXCHANGED_RED_SCALE, _01C4
	goto_if_set FLAG_GOT_RED_SCALE, _01F3
	compare VAR_SCENE_MR_POKEMONS_HOUSE, 2
	goto_if_ge _0252
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

_01B9:
	npc_msg 27
	wait_button
	closemsg
	releaseall
	end

_01C4:
	goto_if_unset FLAG_UNK_107, _0252
	npc_msg 7
	closemsg
	get_player_facing VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0362
	apply_movement obj_R30R0201_gsgentleman, _0418
	goto _037D

_01F3:
	buffer_players_name 0
	gender_msgbox 16, 17
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0383
	goto_if_no_item_space ITEM_MASTER_BALL, 1, _038E
	callstd std_give_item_verbose
	closemsg
	setflag FLAG_EXCHANGED_RED_SCALE
	takeitem_no_check ITEM_RED_SCALE, 1
	releaseall
	end

_0252:
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

_025D:
	play_bgm SEQ_GS_OHKIDO
	apply_movement obj_R30R0201_ookido, _042C
	wait_movement
	apply_movement obj_player, _0440
	wait_movement
	buffer_players_name 0
	gender_msgbox 8, 9
	closemsg
	apply_movement obj_R30R0201_ookido, _0448
	wait_movement
	npc_msg 10
	closemsg
	apply_movement obj_R30R0201_ookido, _0454
	wait_movement
	npc_msg 11
	buffer_players_name 0
	npc_msg 12
	give_pokedex
	setflag FLAG_GOT_POKEDEX
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	scrcmd_573
	gender_msgbox 13, 14
	closemsg
	buffer_players_name 0
	npc_msg 15
	register_gear_number PHONE_CONTACT_PROF__OAK
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	closemsg
	apply_movement obj_R30R0201_ookido, _0460
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_R30R0201_ookido
	wait_se SEQ_SE_DP_DOOR
	fade_out_bgm 0, 30
	stop_bgm 0
	reset_bgm
	releaseall
	setvar VAR_SCENE_MR_POKEMONS_HOUSE, 1
	set_spawn SPAWN_CHERRYGROVE
	setflag FLAG_HIDE_MR_POKEMONS_HOUSE_OAK
	setflag FLAG_HIDE_COMM_CLUB_CLOSED_LADIES
	clearflag FLAG_HIDE_COMM_CLUB_RECEPTIONISTS
	setflag FLAG_HIDE_NEW_BARK_RIVAL
	setvar VAR_SCENE_CHERRYGROVE_CITY_OW, 3
	clearflag FLAG_HIDE_CHERRYGROVE_RIVAL
	setvar VAR_SCENE_ELMS_LAB, 3
	clearflag FLAG_HIDE_ELMS_LAB_OFFICER
	setvar VAR_SCENE_ROUTE_30_OW, 2
	end

_0320:
	giveitem_no_check ITEM_MASTER_BALL, 1
	closemsg
	npc_msg 26
	wait_button
	closemsg
	releaseall
	end

_033D:
	setvar VAR_SPECIAL_x8005, 1
	callstd std_give_item_verbose
	closemsg
	npc_msg 26
	wait_button
	closemsg
	releaseall
	end

_0354:
	move_person_facing obj_R30R0201_gsgentleman, 5, 0, 6, DIR_EAST
	end

_0362:
	compare VAR_TEMP_x4000, 3
	goto_if_ne _0399
	apply_movement obj_R30R0201_gsgentleman, _046C
	goto _037D

_037D:
	wait_movement
	releaseall
	end

_0383:
	npc_msg 20
	wait_button
	closemsg
	releaseall
	end

_038E:
	npc_msg 19
	wait_button
	closemsg
	releaseall
	end

_0399:
	apply_movement obj_R30R0201_gsgentleman, _0480
	wait_movement
	releaseall
	end

	.byte 0x00
	.balign 4
_03A8:

	step 75, 1
	step_end
	.balign 4
_03B0:

	step 34, 1
	step_end
	.balign 4
_03B8:

	step 17, 1
	step 18, 5
	step 33, 1
	step_end
	.balign 4
_03C8:

	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_03D8:

	step 12, 1
	step 15, 1
	step 12, 2
	step_end
	.balign 4
_03E8:

	step 18, 3
	step 16, 1
	step 63, 1
	step 24, 1
	step 9, 1
	step 11, 3
	step 29, 1
	step_end
	.balign 4
_0408:

	step 13, 1
	step 14, 1
	step 13, 1
	step_end
	.balign 4
_0418:

	step 1, 3
	step 2, 3
	step 0, 3
	step 3, 3
	step_end
	.balign 4
_042C:

	step 9, 1
	step 10, 4
	step 8, 2
	step 31, 1
	step_end
	.balign 4
_0440:

	step 34, 1
	step_end
	.balign 4
_0448:

	step 9, 1
	step 31, 1
	step_end
	.balign 4
_0454:

	step 8, 1
	step 31, 1
	step_end
	.balign 4
_0460:

	step 9, 3
	step 63, 1
	step_end
	.balign 4
_046C:

	step 1, 3
	step 3, 3
	step 0, 3
	step 2, 3
	step_end
	.balign 4
_0480:

	step 3, 3
	step 0, 3
	step 2, 3
	step 1, 3
	step_end
	.balign 4
