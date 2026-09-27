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

.include "data/scr_seq/include/event_D43R0103.inc"


// text archive to grab from: 128.txt

.data


scrdef scr_seq_D43R0103_000
scrdef scr_seq_D43R0103_001
scrdef scr_seq_D43R0103_002
scrdef scr_seq_D43R0103_003
scrdef scr_seq_D43R0103_004
scrdef scr_seq_D43R0103_005
scrdef scr_seq_D43R0103_006
scrdef scr_seq_D43R0103_007
scrdef_end

scr_seq_D43R0103_000:
	scrcmd_609
	lockall
	apply_movement obj_player, _0390
	wait_movement
	clearflag FLAG_HIDE_VICTORY_ROAD_RIVAL
	show_person obj_D43R0103_gsrivel
	callstd std_play_rival_intro_music
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 37
	goto_if_ne _00D8
	apply_movement obj_D43R0103_gsrivel, _03A0
	goto _00F3

scr_seq_D43R0103_001:
	end

scr_seq_D43R0103_002:
	setvar VAR_TEMP_x4000, 57
	setvar VAR_TEMP_x4001, 42
	goto _0138

scr_seq_D43R0103_003:
	setvar VAR_TEMP_x4000, 28
	setvar VAR_TEMP_x4001, 38
	goto _0138

scr_seq_D43R0103_004:
	setvar VAR_TEMP_x4000, 31
	setvar VAR_TEMP_x4001, 44
	goto _0138

scr_seq_D43R0103_005:
	setvar VAR_TEMP_x4000, 22
	setvar VAR_TEMP_x4001, 17
	goto _0138

scr_seq_D43R0103_006:
	setvar VAR_TEMP_x4000, 58
	setvar VAR_TEMP_x4001, 28
	goto _0138

scr_seq_D43R0103_007:
	lockall
	apply_movement obj_player, _04B4
	wait_movement
	clearflag FLAG_UNK_18D
	setvar VAR_UNK_406F, 2
	npc_msg 7
	closemsg
	releaseall
	end

_00D8:
	compare VAR_TEMP_x4000, 38
	goto_if_ne _0169
	apply_movement obj_D43R0103_gsrivel, _03B8
	goto _00F3

_00F3:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _03D0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	npc_msg 0
	closemsg
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 152
	goto_if_ne _01B6
	trainer_battle TRAINER_RIVAL_SILVER_9, 0, 0, 0
	goto _01D1

_0138:
	scrcmd_609
	lockall
	setvar VAR_UNK_40CA, 1
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _020C
	apply_movement obj_player, _03D8
	apply_movement obj_partner_poke, _03E4
	goto _022F

_0169:
	apply_movement obj_D43R0103_gsrivel, _03F4
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _03D0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	npc_msg 0
	closemsg
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 152
	goto_if_ne _01B6
	trainer_battle TRAINER_RIVAL_SILVER_9, 0, 0, 0
	goto _01D1

_01B6:
	compare VAR_SPECIAL_RESULT, 155
	goto_if_ne _026A
	trainer_battle TRAINER_RIVAL_SILVER_13, 0, 0, 0
	goto _01D1

_01D1:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02AD
	callstd std_play_rival_outro_music
	npc_msg 1
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 37
	goto_if_ne _02BB
	apply_movement obj_D43R0103_gsrivel, _040C
	goto _02D6

_020C:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _02EE
	apply_movement obj_player, _0428
	apply_movement obj_partner_poke, _0434
	goto _022F

_022F:
	wait_movement
	play_se SEQ_SE_GS_RAKKA01
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D43R0102, 0, VAR_TEMP_x4000, VAR_TEMP_x4001, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_UNK_406F, 1
	goto_if_lt _0311
	releaseall
	end

_026A:
	trainer_battle TRAINER_RIVAL_SILVER_5, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02AD
	callstd std_play_rival_outro_music
	npc_msg 1
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 37
	goto_if_ne _02BB
	apply_movement obj_D43R0103_gsrivel, _040C
	goto _02D6

_02AD:
	hide_person obj_D43R0103_gsrivel
	setflag FLAG_HIDE_VICTORY_ROAD_RIVAL
	white_out
	releaseall
	end

_02BB:
	compare VAR_TEMP_x4000, 38
	goto_if_ne _0324
	apply_movement obj_D43R0103_gsrivel, _0444
	goto _02D6

_02D6:
	wait_movement
	setflag FLAG_HIDE_VICTORY_ROAD_RIVAL
	hide_person obj_D43R0103_gsrivel
	callstd std_fade_end_rival_outro_music
	setvar VAR_UNK_40C5, 1
	releaseall
	end

_02EE:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0344
	apply_movement obj_player, _0460
	apply_movement obj_partner_poke, _046C
	goto _022F

_0311:
	setflag FLAG_UNK_18D
	setvar VAR_UNK_406F, 1
	npc_msg 6
	closemsg
	releaseall
	end

_0324:
	apply_movement obj_D43R0103_gsrivel, _047C
	wait_movement
	setflag FLAG_HIDE_VICTORY_ROAD_RIVAL
	hide_person obj_D43R0103_gsrivel
	callstd std_fade_end_rival_outro_music
	setvar VAR_UNK_40C5, 1
	releaseall
	end

_0344:
	apply_movement obj_player, _0498
	apply_movement obj_partner_poke, _04A4
	wait_movement
	play_se SEQ_SE_GS_RAKKA01
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D43R0102, 0, VAR_TEMP_x4000, VAR_TEMP_x4001, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_UNK_406F, 1
	goto_if_lt _0311
	releaseall
	end

	.byte 0x00
	.balign 4
_0390:

	step 75, 1
	step 63, 2
	step 1, 2
	step_end
	.balign 4
_03A0:

	step 16, 3
	step 3, 2
	step 19, 4
	step 0, 2
	step 16, 3
	step_end
	.balign 4
_03B8:

	step 16, 3
	step 3, 2
	step 19, 5
	step 0, 2
	step 16, 3
	step_end
	.balign 4
_03D0:

	step 9, 1
	step_end
	.balign 4
_03D8:

	step 40, 4
	step 69, 1
	step_end
	.balign 4
_03E4:

	step 62, 3
	step 20, 1
	step 69, 1
	step_end
	.balign 4
_03F4:

	step 16, 3
	step 3, 2
	step 19, 6
	step 0, 2
	step 16, 3
	step_end
	.balign 4
_040C:

	step 1, 2
	step 13, 2
	step 2, 2
	step 14, 5
	step 1, 2
	step 13, 7
	step_end
	.balign 4
_0428:

	step 41, 4
	step 69, 1
	step_end
	.balign 4
_0434:

	step 62, 3
	step 21, 1
	step 69, 1
	step_end
	.balign 4
_0444:

	step 1, 2
	step 13, 2
	step 2, 2
	step 14, 6
	step 1, 2
	step 13, 7
	step_end
	.balign 4
_0460:

	step 43, 4
	step 69, 1
	step_end
	.balign 4
_046C:

	step 62, 3
	step 23, 1
	step 69, 1
	step_end
	.balign 4
_047C:

	step 1, 2
	step 13, 2
	step 2, 2
	step 14, 7
	step 1, 2
	step 13, 7
	step_end
	.balign 4
_0498:

	step 42, 4
	step 69, 1
	step_end
	.balign 4
_04A4:

	step 62, 3
	step 22, 1
	step 69, 1
	step_end
	.balign 4
_04B4:

	step 75, 1
	step_end
	.balign 4
