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

.include "data/scr_seq/include/event_D18R0101.inc"


// text archive to grab from: 060.txt

.data


scrdef scr_seq_D18R0101_000
scrdef scr_seq_D18R0101_001
scrdef scr_seq_D18R0101_002
scrdef scr_seq_D18R0101_003
scrdef_end

scr_seq_D18R0101_000:
	scrcmd_609
	lockall
	callstd std_play_eusine_music
	apply_movement obj_D18R0101_minaki, _0176
	wait_movement
	buffer_players_name 0
	npc_msg 2
	wait_button
	closemsg
	callstd std_fade_end_eusine_music
	setvar VAR_UNK_40A2, 1
	releaseall
	end

scr_seq_D18R0101_001:
	simple_npc_msg 3
	end

scr_seq_D18R0101_002:
	simple_npc_msg 4
	end

scr_seq_D18R0101_003:
	scrcmd_609
	lockall
	callstd std_play_rival_intro_music
	apply_movement obj_D18R0101_gsrivel, _0186
	wait_movement
	buffer_rivals_name 0
	npc_msg 0
	closemsg
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 152
	goto_if_ne _009B
	trainer_battle TRAINER_RIVAL_SILVER_8, 0, 0, 0
	goto _00B6

_009B:
	compare VAR_SPECIAL_RESULT, 703
	goto_if_ne _010F
	trainer_battle TRAINER_RIVAL_SILVER_11, 0, 0, 0
	goto _00B6

_00B6:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0170
	callstd std_play_rival_outro_music
	buffer_rivals_name 0
	npc_msg 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_player, _019E
	apply_movement obj_D18R0101_gsrivel, _01AE
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	hide_person obj_D18R0101_gsrivel
	callstd std_fade_end_rival_outro_music
	setflag FLAG_HIDE_BURNED_TOWER_1F_RIVAL
	setvar VAR_UNK_40A6, 1
	releaseall
	end

_010F:
	trainer_battle TRAINER_RIVAL_SILVER_4, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0170
	callstd std_play_rival_outro_music
	buffer_rivals_name 0
	npc_msg 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_player, _019E
	apply_movement obj_D18R0101_gsrivel, _01AE
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	hide_person obj_D18R0101_gsrivel
	callstd std_fade_end_rival_outro_music
	setflag FLAG_HIDE_BURNED_TOWER_1F_RIVAL
	setvar VAR_UNK_40A6, 1
	releaseall
	end

_0170:
	white_out
	releaseall
	end

	.balign 4
_0176:

	step 2, 1
	step 75, 1
	step 14, 3
	step_end
	.balign 4
_0186:

	step 1, 1
	step 75, 1
	step 13, 4
	step 14, 1
	step 1, 1
	step_end
	.balign 4
_019E:

	step 13, 2
	step 15, 1
	step 2, 1
	step_end
	.balign 4
_01AE:

	step 13, 3
	step 14, 1
	step 13, 1
	step 14, 3
	step 13, 1
	step 14, 4
	step 13, 3
	step_end
	.balign 4
