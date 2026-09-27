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

.include "data/scr_seq/include/event_T25GYM0101.inc"


// text archive to grab from: 582.txt

.data


scrdef scr_seq_T25GYM0101_000
scrdef scr_seq_T25GYM0101_001
scrdef scr_seq_T25GYM0101_002
scrdef scr_seq_T25GYM0101_003
scrdef scr_seq_T25GYM0101_004
scrdef_end

scr_seq_T25GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_PLAIN, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _019B
	goto_if_set FLAG_UNK_0B7, _01B1
	compare VAR_UNK_410A, 1
	goto_if_eq _0219
	party_count_not_egg VAR_SPECIAL_LAST_TALKED
	party_count_mons_at_or_below_level VAR_SPECIAL_RESULT, 29
	compare VAR_SPECIAL_RESULT, VAR_SPECIAL_LAST_TALKED
	goto_if_lt _023C
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_WHITNEY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0245
	settrainerflag TRAINER_LASS_CARRIE
	settrainerflag TRAINER_LASS_CATHY
	settrainerflag TRAINER_BEAUTY_VICTORIA
	settrainerflag TRAINER_BEAUTY_SAMANTHA
	add_special_game_stat 22
	move_person_facing obj_T25GYM0101_gsgirl1, 13, 0, 15, DIR_NORTH
	npc_msg 2
	wait_button
	closemsg
	releaseall
	setvar VAR_UNK_410A, 1
	setflag FLAG_UNK_084
	setvar VAR_UNK_40DA, 1
	clearflag FLAG_HIDE_PARK_SOUTH_GATE_POKEATHLON_ENTHUSIASTS_UNLOCKED
	setflag FLAG_HIDE_PARK_SOUTH_GATE_POKEATHLON_ENTHUSIASTS_LOCKED
	end

scr_seq_T25GYM0101_001:
	scrcmd_609
	lockall
	apply_movement obj_T25GYM0101_gsgirl1, _0352
	wait_movement
	npc_msg 9
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T25GYM0101_gsgirl1, _035E
	apply_movement obj_player, _036A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setflag FLAG_UNK_0B7
	releaseall
	end

scr_seq_T25GYM0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_PLAIN, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _024B
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

scr_seq_T25GYM0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_PLAIN, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0256
	npc_msg 12
	goto _0261

scr_seq_T25GYM0101_004:
	get_phone_book_rematch PHONE_CONTACT_WHITNEY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0269
	goto_if_unset FLAG_GAME_CLEAR, _026F
	check_registered_phone_number PHONE_CONTACT_WHITNEY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0275
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 12
	goto_if_ne _0290
	setflag FLAG_UNK_2EC
	goto _02A7

_019B:
	goto_if_unset FLAG_GOT_TM45_FROM_WHITNEY, _02A9
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

_01B1:
	npc_msg 3
	buffer_players_name 0
	npc_msg 4
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_PLAIN
	setvar VAR_UNK_410A, 2
	setvar VAR_UNK_415A, 1
	setvar VAR_UNK_416F, 36
	setflag FLAG_UNK_843
	clearflag FLAG_UNK_084
	setflag FLAG_UNK_998
	npc_msg 5
	goto_if_no_item_space ITEM_TM045, 1, _02DD
	callstd std_give_item_verbose
	npc_msg 7
	wait_button
	closemsg
	setflag FLAG_GOT_TM45_FROM_WHITNEY
	releaseall
	end

_0219:
	npc_msg 2
	wait_button
	closemsg
	releaseall
	setvar VAR_UNK_410A, 1
	setflag FLAG_UNK_084
	setvar VAR_UNK_40DA, 1
	clearflag FLAG_HIDE_PARK_SOUTH_GATE_POKEATHLON_ENTHUSIASTS_UNLOCKED
	setflag FLAG_HIDE_PARK_SOUTH_GATE_POKEATHLON_ENTHUSIASTS_LOCKED
	end

_023C:
	npc_msg 15
	closemsg
	releaseall
	end

_0245:
	white_out
	releaseall
	end

_024B:
	npc_msg 11
	wait_button
	closemsg
	releaseall
	end

_0256:
	npc_msg 13
	wait_button
	closemsg
	releaseall
	end

_0261:
	wait_button
	closemsg
	releaseall
	end

_0269:
	setflag FLAG_UNK_2EC
	end

_026F:
	clearflag FLAG_UNK_2EC
	end

_0275:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 18
	goto_if_ne _02E7
	setflag FLAG_UNK_2EC
	goto _02FE

_0290:
	compare VAR_TEMP_x4000, 13
	goto_if_ne _0300
	setflag FLAG_UNK_2EC
	goto _02A7

_02A7:
	end

_02A9:
	goto_if_no_item_space ITEM_TM045, 1, _02DD
	callstd std_give_item_verbose
	npc_msg 7
	wait_button
	closemsg
	setflag FLAG_GOT_TM45_FROM_WHITNEY
	releaseall
	end

_02DD:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_02E7:
	compare VAR_TEMP_x4000, 19
	goto_if_ne _0317
	setflag FLAG_UNK_2EC
	goto _02FE

_02FE:
	end

_0300:
	compare VAR_TEMP_x4000, 14
	goto_if_ne _032E
	setflag FLAG_UNK_2EC
	goto _02A7

_0317:
	compare VAR_TEMP_x4000, 20
	goto_if_ne _0345
	setflag FLAG_UNK_2EC
	goto _02FE

_032E:
	compare VAR_TEMP_x4000, 15
	goto_if_ne _034B
	setflag FLAG_UNK_2EC
	goto _02A7

_0345:
	goto _026F

_034B:
	goto _026F

	.byte 0x00
	.balign 4
_0352:

	step 75, 1
	step 12, 3
	step_end
	.balign 4
_035E:

	step 13, 3
	step 32, 1
	step_end
	.balign 4
_036A:

	step 63, 1
	step 12, 1
	step_end
	.balign 4
