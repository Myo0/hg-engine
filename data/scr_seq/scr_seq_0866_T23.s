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

.include "data/scr_seq/include/event_T23.inc"


// text archive to grab from: 564.txt

.data


scrdef scr_seq_T23_000
scrdef scr_seq_T23_001
scrdef scr_seq_T23_002
scrdef scr_seq_T23_003
scrdef scr_seq_T23_004
scrdef scr_seq_T23_005
scrdef scr_seq_T23_006
scrdef scr_seq_T23_007
scrdef scr_seq_T23_008
scrdef scr_seq_T23_009
scrdef scr_seq_T23_010
scrdef scr_seq_T23_011
scrdef scr_seq_T23_012
scrdef scr_seq_T23_013
scrdef scr_seq_T23_014
scrdef scr_seq_T23_015
scrdef scr_seq_T23_016
scrdef_end

scr_seq_T23_000:
scr_seq_T23_005:
	simple_npc_msg 3
	end

scr_seq_T23_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 9
	play_cry SPECIES_SLOWPOKE, 0
	npc_msg 10
	wait_cry
	wait_button
	closemsg
	releaseall
	end

scr_seq_T23_002:
	scrcmd_609
	lockall
	fade_out_bgm 0, 3
	apply_movement obj_player, _046C
	wait_movement
	setvar VAR_FARFETCHD1_STICKS1, 1
	callstd std_play_rival_intro_music
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 462
	goto_if_ne _022C
	move_person_facing obj_T23_gsrivel, 404, 0, 463, DIR_WEST
	apply_movement obj_T23_gsrivel, _0474
	apply_movement obj_player, _0480
	goto _025B

scr_seq_T23_003:
	scrcmd_609
	lockall
	apply_movement obj_T23_rocketm_3, _0494
	wait_movement
	npc_msg 16
	play_se SEQ_SE_DP_WALL_HIT
	npc_msg 17
	closemsg
	apply_movement obj_T23_gsmiddleman1_2, _049C
	wait_movement
	move_person_facing obj_T23_gsmiddleman1_2, 23, 0, 16, DIR_EAST
	apply_movement obj_T23_rocketm_3, _04B8
	wait_movement
	hide_person obj_T23_gsmiddleman1_2
	setflag FLAG_AZALEA_HARASSED_CIVILIAN
	setflag FLAG_AZALEA_ROCKET_HARASSING_CIVILIAN
	clearflag FLAG_UNK_19F
	setvar VAR_UNK_4080, 1
	releaseall
	end

scr_seq_T23_004:
	compare VAR_UNK_4080, 0
	goto_if_ne _0284
	setflag FLAG_UNK_19F
	clearflag FLAG_AZALEA_ROCKET_HARASSING_CIVILIAN
	clearflag FLAG_AZALEA_HARASSED_CIVILIAN
	end

scr_seq_T23_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_BEAT_AZALEA_ROCKETS, _0286
	npc_msg 18
	goto _0291

scr_seq_T23_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_BEAT_AZALEA_ROCKETS, _0299
	npc_msg 5
	goto _0291

scr_seq_T23_008:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 12, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T23_009:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 13, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T23_010:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 15, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T23_011:
	direction_signpost 11, 0, 14, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T23_012:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 14, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T23_013:
	direction_signpost 0, 1, 2, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T23_014:
	simple_npc_msg 4
	end

scr_seq_T23_015:
	simple_npc_msg 7
	end

scr_seq_T23_016:
	simple_npc_msg 8
	end

_022C:
	compare VAR_SPECIAL_x8005, 463
	goto_if_ne _02A2
	move_person_facing obj_T23_gsrivel, 404, 0, 464, DIR_WEST
	apply_movement obj_T23_gsrivel, _0474
	apply_movement obj_player, _0480
	goto _025B

_025B:
	wait_movement
	buffer_rivals_name 0
	npc_msg 1
	closemsg
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 152
	goto_if_ne _02D1
	trainer_battle TRAINER_RIVAL_SILVER_7, 0, 0, 0
	goto _02EC

_0284:
	end

_0286:
	npc_msg 19
	wait_button
	closemsg
	releaseall
	end

_0291:
	wait_button
	closemsg
	releaseall
	end

_0299:
	npc_msg 6
	goto _0291

_02A2:
	compare VAR_SPECIAL_x8005, 464
	goto_if_ne _0330
	move_person_facing obj_T23_gsrivel, 404, 0, 463, DIR_WEST
	apply_movement obj_T23_gsrivel, _04C4
	apply_movement obj_player, _04D0
	goto _025B

_02D1:
	compare VAR_SPECIAL_RESULT, 703
	goto_if_ne _035F
	trainer_battle TRAINER_RIVAL_SILVER_10, 0, 0, 0
	goto _02EC

_02EC:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03AB
	callstd std_play_rival_outro_music
	buffer_rivals_name 0
	npc_msg 2
	closemsg
	setvar VAR_UNK_4075, 2
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 462
	goto_if_ne _03B1
	apply_movement obj_T23_gsrivel, _04E4
	goto _03CC

_0330:
	compare VAR_SPECIAL_x8005, 465
	goto_if_ne _03DA
	move_person_facing obj_T23_gsrivel, 404, 0, 464, DIR_WEST
	apply_movement obj_T23_gsrivel, _04C4
	apply_movement obj_player, _04D0
	goto _025B

_035F:
	trainer_battle TRAINER_RIVAL_SILVER, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03AB
	callstd std_play_rival_outro_music
	buffer_rivals_name 0
	npc_msg 2
	closemsg
	setvar VAR_UNK_4075, 2
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8005, 462
	goto_if_ne _03B1
	apply_movement obj_T23_gsrivel, _04E4
	goto _03CC

_03AB:
	white_out
	releaseall
	end

_03B1:
	compare VAR_SPECIAL_x8005, 463
	goto_if_ne _041F
	apply_movement obj_T23_gsrivel, _04EC
	goto _03CC

_03CC:
	wait_movement
	hide_person obj_T23_gsrivel
	callstd std_fade_end_rival_outro_music
	releaseall
	end

_03DA:
	move_person_facing obj_T23_gsrivel, 404, 0, 465, DIR_WEST
	apply_movement obj_T23_gsrivel, _04C4
	apply_movement obj_player, _04D0
	wait_movement
	buffer_rivals_name 0
	npc_msg 1
	closemsg
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 152
	goto_if_ne _02D1
	trainer_battle TRAINER_RIVAL_SILVER_7, 0, 0, 0
	goto _02EC

_041F:
	compare VAR_SPECIAL_x8005, 464
	goto_if_ne _043A
	apply_movement obj_T23_gsrivel, _04E4
	goto _03CC

_043A:
	compare VAR_SPECIAL_x8005, 465
	goto_if_ne _0455
	apply_movement obj_T23_gsrivel, _04EC
	goto _03CC

_0455:
	apply_movement obj_T23_gsrivel, _04FC
	wait_movement
	hide_person obj_T23_gsrivel
	callstd std_fade_end_rival_outro_music
	releaseall
	end

	.byte 0x00
	.balign 4
_046C:

	step 75, 1
	step_end
	.balign 4
_0474:

	step 14, 9
	step 0, 1
	step_end
	.balign 4
_0480:

	step 3, 1
	step 62, 6
	step 63, 7
	step 1, 1
	step_end
	.balign 4
_0494:

	step 34, 2
	step_end
	.balign 4
_049C:

	step 71, 1
	step 22, 1
	step 63, 2
	step 10, 2
	step 72, 1
	step 18, 9
	step_end
	.balign 4
_04B8:

	step 12, 2
	step 33, 1
	step_end
	.balign 4
_04C4:

	step 14, 9
	step 1, 1
	step_end
	.balign 4
_04D0:

	step 3, 1
	step 62, 6
	step 63, 7
	step 0, 1
	step_end
	.balign 4
_04E4:

	step 14, 3
	step_end
	.balign 4
_04EC:

	step 14, 1
	step 12, 1
	step 14, 2
	step_end
	.balign 4
_04FC:

	step 14, 1
	step 12, 2
	step 14, 2
	step_end
	.balign 4
