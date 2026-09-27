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

.include "data/scr_seq/include/event_D18R0102.inc"


// text archive to grab from: 061.txt

.data


scrdef scr_seq_D18R0102_000
scrdef scr_seq_D18R0102_001
scrdef scr_seq_D18R0102_002
scrdef scr_seq_D18R0102_003
scrdef_end

scr_seq_D18R0102_000:
	scrcmd_609
	lockall
	play_cry SPECIES_RAIKOU, 0
	release obj_D18R0102_follower_mon_static_raikou
	scrcmd_523 obj_D18R0102_follower_mon_static_raikou, 2, 90, 2, 0
	lock obj_D18R0102_follower_mon_static_raikou
	wait_cry
	play_cry SPECIES_ENTEI, 0
	release obj_D18R0102_follower_mon_static_entei
	scrcmd_523 obj_D18R0102_follower_mon_static_entei, 2, 90, 2, 0
	lock obj_D18R0102_follower_mon_static_entei
	wait_cry
	play_cry SPECIES_SUICUNE, 0
	release obj_D18R0102_follower_mon_static_suicune
	scrcmd_523 obj_D18R0102_follower_mon_static_suicune, 2, 90, 2, 0
	lock obj_D18R0102_follower_mon_static_suicune
	wait_cry
	apply_movement obj_D18R0102_follower_mon_static_raikou, _03B8
	wait_movement
	apply_movement obj_D18R0102_follower_mon_static_entei, _03C4
	wait_movement
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 16
	goto_if_ne _0134
	apply_movement obj_D18R0102_follower_mon_static_suicune, _03D0
	wait_movement
	play_cry SPECIES_SUICUNE, 0
	apply_movement obj_D18R0102_follower_mon_static_suicune, _03DC
	wait_cry
	goto _01C1

scr_seq_D18R0102_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_SUICUNE, 0
	wait_cry
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_SUICUNE, 40, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0234
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _023A
	compare VAR_TEMP_x4002, 4
	call_if_eq _023E
	releaseall
	end

scr_seq_D18R0102_002:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _0244
	end

scr_seq_D18R0102_003:
	lockall
	play_se SEQ_SE_DP_SELECT
	hide_person obj_D18R0102_3947
	giveitem_no_check ITEM_SCRAFTINITE, 1
	setflag FLAG_HIDE_ITEMBALL_D18R0102_TM12
	closemsg
	releaseall
	end

_0134:
	apply_movement obj_D18R0102_follower_mon_static_suicune, _03EC
	wait_movement
	play_cry SPECIES_SUICUNE, 0
	apply_movement obj_D18R0102_follower_mon_static_suicune, _03F8
	wait_cry
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0408
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setflag FLAG_HIDE_BURNED_TOWER_B1F_RAIKOU
	setflag FLAG_HIDE_BURNED_TOWER_B1F_ENTEI
	setflag FLAG_HIDE_BURNED_TOWER_B1F_SUICUNE
	hide_person obj_D18R0102_follower_mon_static_raikou
	hide_person obj_D18R0102_follower_mon_static_entei
	hide_person obj_D18R0102_follower_mon_static_suicune
	wait 15, VAR_SPECIAL_RESULT
	clearflag FLAG_HIDE_BURNED_TOWER_B1F_EUSINE
	play_se SEQ_SE_DP_KAIDAN2
	show_person obj_D18R0102_minaki
	lock obj_D18R0102_minaki
	wait_se SEQ_SE_DP_KAIDAN2
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 16
	goto_if_ne _0252
	apply_movement obj_D18R0102_minaki, _0414
	goto _0288

_01C1:
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0408
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setflag FLAG_HIDE_BURNED_TOWER_B1F_RAIKOU
	setflag FLAG_HIDE_BURNED_TOWER_B1F_ENTEI
	setflag FLAG_HIDE_BURNED_TOWER_B1F_SUICUNE
	hide_person obj_D18R0102_follower_mon_static_raikou
	hide_person obj_D18R0102_follower_mon_static_entei
	hide_person obj_D18R0102_follower_mon_static_suicune
	wait 15, VAR_SPECIAL_RESULT
	clearflag FLAG_HIDE_BURNED_TOWER_B1F_EUSINE
	play_se SEQ_SE_DP_KAIDAN2
	show_person obj_D18R0102_minaki
	lock obj_D18R0102_minaki
	wait_se SEQ_SE_DP_KAIDAN2
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 16
	goto_if_ne _0252
	apply_movement obj_D18R0102_minaki, _0414
	goto _0288

_0234:
	white_out
	releaseall
	end

_023A:
	releaseall
	end

_023E:
	setflag FLAG_CAUGHT_SUICUNE
	return

_0244:
	setflag FLAG_HIDE_BURNED_TOWER_STATIC_SUICUNE
	hide_person obj_D18R0102_follower_mon_static_suicune_2
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

_0252:
	apply_movement obj_D18R0102_minaki, _0424
	apply_movement obj_player, _0434
	wait_movement
	npc_msg 0
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 16
	goto_if_ne _02AE
	apply_movement obj_D18R0102_minaki, _0440
	goto _02E9

_0288:
	wait_movement
	npc_msg 0
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 16
	goto_if_ne _02AE
	apply_movement obj_D18R0102_minaki, _0440
	goto _02E9

_02AE:
	apply_movement obj_D18R0102_minaki, _044C
	apply_movement obj_player, _0434
	wait_movement
	buffer_players_name 0
	npc_msg 1
	closemsg
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 16
	goto_if_ne _0314
	apply_movement obj_D18R0102_minaki, _0454
	goto _036A

_02E9:
	wait_movement
	buffer_players_name 0
	npc_msg 1
	closemsg
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 16
	goto_if_ne _0314
	apply_movement obj_D18R0102_minaki, _0454
	goto _036A

_0314:
	apply_movement obj_D18R0102_minaki, _0460
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	wait 2, VAR_SPECIAL_RESULT
	hide_person obj_D18R0102_minaki
	wait_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_BURNED_TOWER_B1F_EUSINE
	setflag FLAG_HIDE_BURNED_TOWER_1F_EUSINE
	setflag FLAG_HIDE_BURNED_TOWER_1F_MORTY
	setflag FLAG_HIDE_BURNED_TOWER_1F_RAIKOU
	setflag FLAG_HIDE_BURNED_TOWER_1F_ENTEI
	setflag FLAG_HIDE_BURNED_TOWER_1F_SUICUNE
	clearflag FLAG_HIDE_CIANWOOD_SUICUNE
	setvar VAR_UNK_40A1, 1
	setvar VAR_UNK_4076, 1
	setvar VAR_UNK_4079, 2
	setflag FLAG_UNK_247
	clearflag FLAG_HIDE_ECRUTEAK_OLD_MAN
	releaseall
	end

_036A:
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	wait 2, VAR_SPECIAL_RESULT
	hide_person obj_D18R0102_minaki
	wait_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_BURNED_TOWER_B1F_EUSINE
	setflag FLAG_HIDE_BURNED_TOWER_1F_EUSINE
	setflag FLAG_HIDE_BURNED_TOWER_1F_MORTY
	setflag FLAG_HIDE_BURNED_TOWER_1F_RAIKOU
	setflag FLAG_HIDE_BURNED_TOWER_1F_ENTEI
	setflag FLAG_HIDE_BURNED_TOWER_1F_SUICUNE
	clearflag FLAG_HIDE_CIANWOOD_SUICUNE
	setvar VAR_UNK_40A1, 1
	setvar VAR_UNK_4076, 1
	setvar VAR_UNK_4079, 2
	setflag FLAG_UNK_247
	clearflag FLAG_HIDE_ECRUTEAK_OLD_MAN
	releaseall
	end

	.balign 4
_03B8:

	step 105, 1
	step 69, 1
	step_end
	.balign 4
_03C4:

	step 106, 1
	step 69, 1
	step_end
	.balign 4
_03D0:

	step 107, 1
	step 3, 1
	step_end
	.balign 4
_03DC:

	step 62, 6
	step 108, 1
	step 69, 1
	step_end
	.balign 4
_03EC:

	step 109, 1
	step 3, 1
	step_end
	.balign 4
_03F8:

	step 62, 6
	step 110, 1
	step 69, 1
	step_end
	.balign 4
_0408:

	step 14, 1
	step 1, 1
	step_end
	.balign 4
_0414:

	step 17, 1
	step 18, 3
	step 1, 1
	step_end
	.balign 4
_0424:

	step 18, 5
	step 17, 1
	step 1, 1
	step_end
	.balign 4
_0434:

	step 62, 6
	step 2, 1
	step_end
	.balign 4
_0440:

	step 18, 1
	step 0, 1
	step_end
	.balign 4
_044C:

	step 3, 1
	step_end
	.balign 4
_0454:

	step 19, 4
	step 16, 1
	step_end
	.balign 4
_0460:

	step 16, 1
	step 19, 5
	step 0, 1
	step_end
	.balign 4
