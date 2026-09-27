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

.include "data/scr_seq/include/event_T25.inc"


// text archive to grab from: 581.txt

.data


scrdef scr_seq_T25_000
scrdef scr_seq_T25_001
scrdef scr_seq_T25_002
scrdef scr_seq_T25_003
scrdef scr_seq_T25_004
scrdef scr_seq_T25_005
scrdef scr_seq_T25_006
scrdef scr_seq_T25_007
scrdef scr_seq_T25_008
scrdef scr_seq_T25_009
scrdef scr_seq_T25_010
scrdef scr_seq_T25_011
scrdef scr_seq_T25_012
scrdef scr_seq_T25_013
scrdef scr_seq_T25_014
scrdef scr_seq_T25_015
scrdef scr_seq_T25_016
scrdef scr_seq_T25_017
scrdef scr_seq_T25_018
scrdef scr_seq_T25_019
scrdef scr_seq_T25_020
scrdef scr_seq_T25_021
scrdef scr_seq_T25_022
scrdef scr_seq_T25_023
scrdef scr_seq_T25_024
scrdef scr_seq_T25_025
scrdef scr_seq_T25_026
scrdef scr_seq_T25_027
scrdef scr_seq_T25_028
scrdef scr_seq_T25_029
scrdef scr_seq_T25_030
scrdef scr_seq_T25_031
scrdef scr_seq_T25_032
scrdef_end

scr_seq_T25_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_40DA, 1
	goto_if_ne _0420
	compare VAR_UNK_40DB, 0
	goto_if_eq _042B
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

scr_seq_T25_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 2
	goto_if_ge _043A
	npc_msg 4
	goto _0445

scr_seq_T25_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_RADIO_CARD, _044D
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

scr_seq_T25_003:
	simple_npc_msg 8
	end

scr_seq_T25_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	player_on_bike_check VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0458
	npc_msg 2
	wait_button
	closemsg
	releaseall
	end

scr_seq_T25_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_40DA, 1
	goto_if_ne _0463
	compare VAR_UNK_40DB, 0
	goto_if_eq _046E
	npc_msg 0
	wait_button
	closemsg
	releaseall
	end

scr_seq_T25_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_40DA, 1
	goto_if_ne _0479
	compare VAR_UNK_40DB, 0
	goto_if_eq _0484
	npc_msg 11
	wait_button
	closemsg
	releaseall
	end

scr_seq_T25_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 13
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _048F
	apply_movement obj_T25_rocketm, _0894
	wait_movement
	goto _04AC

scr_seq_T25_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _04C2
	npc_msg 17
	goto _04CD

scr_seq_T25_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _04D5
	npc_msg 19
	goto _04E0

scr_seq_T25_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _04E8
	npc_msg 21
	goto _04F3

scr_seq_T25_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _04FB
	npc_msg 23
	goto _0506

scr_seq_T25_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _050E
	npc_msg 25
	goto _0519

scr_seq_T25_013:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _0521
	npc_msg 30
	goto _052C

scr_seq_T25_014:
	simple_npc_msg 31
	end

scr_seq_T25_015:
	simple_npc_msg 32
	end

scr_seq_T25_016:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _0534
	npc_msg 34
	goto _053F

scr_seq_T25_017:
	scrcmd_609
	lockall
	apply_movement obj_T25_rocketm_9, _089C
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 354
	goto_if_ne _0547
	apply_movement obj_T25_rocketm_9, _08A4
	goto _0562

scr_seq_T25_018:
	setflag FLAG_HIDE_ROCKET_TAKEOVER_3
	setflag FLAG_HIDE_ROCKET_TAKEOVER_4
	setflag FLAG_HIDE_ROCKET_TAKEOVER_1
	setflag FLAG_HIDE_ROCKET_TAKEOVER_5
	setflag FLAG_HIDE_ROCKET_TAKEOVER_2
	compare VAR_SCENE_ROCKET_TAKEOVER, 0
	goto_if_ne _05AA
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_2
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_3
	goto _05C9

scr_seq_T25_019:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 36, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T25_020:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 37, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T25_021:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 38, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T25_022:
	direction_signpost 39, 0, 16, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T25_023:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 40, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T25_024:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 41, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T25_025:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 42, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T25_026:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 43, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T25_027:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 44, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T25_028:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 45, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T25_029:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 46, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T25_030:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 26
	wait_button
	closemsg
	releaseall
	end

scr_seq_T25_031:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 27
	wait_button
	closemsg
	releaseall
	end

scr_seq_T25_032:
	simple_npc_msg 28
	end

_0420:
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_042B:
	npc_msg 10
	wait_button
	closemsg
	setflag FLAG_UNK_83E
	releaseall
	end

_043A:
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

_0445:
	wait_button
	closemsg
	releaseall
	end

_044D:
	npc_msg 7
	wait_button
	closemsg
	releaseall
	end

_0458:
	npc_msg 3
	wait_button
	closemsg
	releaseall
	end

_0463:
	npc_msg 0
	wait_button
	closemsg
	releaseall
	end

_046E:
	npc_msg 1
	wait_button
	closemsg
	releaseall
	end

_0479:
	npc_msg 11
	wait_button
	closemsg
	releaseall
	end

_0484:
	npc_msg 12
	wait_button
	closemsg
	releaseall
	end

_048F:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _05CB
	apply_movement obj_T25_rocketm, _08AC
	wait_movement
	goto _04AC

_04AC:
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _05F8
	npc_msg 15
	goto _0618

_04C2:
	npc_msg 16
	wait_button
	closemsg
	releaseall
	end

_04CD:
	wait_button
	closemsg
	releaseall
	end

_04D5:
	npc_msg 18
	wait_button
	closemsg
	releaseall
	end

_04E0:
	wait_button
	closemsg
	releaseall
	end

_04E8:
	npc_msg 20
	wait_button
	closemsg
	releaseall
	end

_04F3:
	wait_button
	closemsg
	releaseall
	end

_04FB:
	npc_msg 22
	wait_button
	closemsg
	releaseall
	end

_0506:
	wait_button
	closemsg
	releaseall
	end

_050E:
	npc_msg 24
	wait_button
	closemsg
	releaseall
	end

_0519:
	wait_button
	closemsg
	releaseall
	end

_0521:
	npc_msg 29
	wait_button
	closemsg
	releaseall
	end

_052C:
	wait_button
	closemsg
	releaseall
	end

_0534:
	npc_msg 33
	wait_button
	closemsg
	releaseall
	end

_053F:
	wait_button
	closemsg
	releaseall
	end

_0547:
	compare VAR_TEMP_x4000, 355
	goto_if_ne _0635
	apply_movement obj_T25_rocketm_9, _08B4
	goto _0562

_0562:
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_T25_rocketm_9, _08BC
	apply_movement obj_player, _08C4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 35
	closemsg
	compare VAR_TEMP_x4000, 354
	goto_if_ne _0650
	apply_movement obj_T25_rocketm_9, _08D4
	goto _066B

_05AA:
	compare VAR_SCENE_ROCKET_TAKEOVER, 1
	goto_if_ne _0671
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_2
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_3
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_4
	goto _05C9

_05C9:
	end

_05CB:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _04AC
	apply_movement obj_T25_rocketm, _08E4
	wait_movement
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _05F8
	npc_msg 15
	goto _0618

_05F8:
	npc_msg 14
	closemsg
	compare VAR_TEMP_x4001, 350
	goto_if_eq _0694
	apply_movement obj_T25_rocketm, _08EC
	wait_movement
	releaseall
	end

_0618:
	closemsg
	compare VAR_TEMP_x4001, 350
	goto_if_eq _0694
	apply_movement obj_T25_rocketm, _08EC
	wait_movement
	releaseall
	end

_0635:
	compare VAR_TEMP_x4000, 356
	goto_if_ne _0698
	apply_movement obj_T25_rocketm_9, _08F4
	goto _0562

_0650:
	compare VAR_TEMP_x4000, 355
	goto_if_ne _06B3
	apply_movement obj_T25_rocketm_9, _08FC
	goto _066B

_066B:
	wait_movement
	releaseall
	end

_0671:
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _06CE
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_3
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_4
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_1
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_5
	goto _05C9

_0694:
	releaseall
	end

_0698:
	compare VAR_TEMP_x4000, 357
	goto_if_ne _06E5
	apply_movement obj_T25_rocketm_9, _090C
	goto _0562

_06B3:
	compare VAR_TEMP_x4000, 356
	goto_if_ne _0700
	apply_movement obj_T25_rocketm_9, _0914
	goto _066B

_06CE:
	compare VAR_SCENE_ROCKET_TAKEOVER, 5
	goto_if_ne _071B
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_2
	goto _05C9

_06E5:
	compare VAR_TEMP_x4000, 358
	goto_if_ne _0729
	apply_movement obj_T25_rocketm_9, _0924
	goto _0562

_0700:
	compare VAR_TEMP_x4000, 357
	goto_if_ne _0744
	apply_movement obj_T25_rocketm_9, _092C
	goto _066B

_071B:
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_3
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_4
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_1
	end

_0729:
	compare VAR_TEMP_x4000, 359
	goto_if_ne _075F
	apply_movement obj_T25_rocketm_9, _093C
	goto _0562

_0744:
	compare VAR_TEMP_x4000, 358
	goto_if_ne _077A
	apply_movement obj_T25_rocketm_9, _0944
	goto _066B

_075F:
	compare VAR_TEMP_x4000, 360
	goto_if_ne _0795
	apply_movement obj_T25_rocketm_9, _0954
	goto _0562

_077A:
	compare VAR_TEMP_x4000, 359
	goto_if_ne _07B0
	apply_movement obj_T25_rocketm_9, _095C
	goto _066B

_0795:
	compare VAR_TEMP_x4000, 361
	goto_if_ne _07CB
	apply_movement obj_T25_rocketm_9, _0968
	goto _0562

_07B0:
	compare VAR_TEMP_x4000, 360
	goto_if_ne _07E6
	apply_movement obj_T25_rocketm_9, _0970
	goto _066B

_07CB:
	compare VAR_TEMP_x4000, 362
	goto_if_ne _0801
	apply_movement obj_T25_rocketm_9, _0980
	goto _0562

_07E6:
	compare VAR_TEMP_x4000, 361
	goto_if_ne _085E
	apply_movement obj_T25_rocketm_9, _0988
	goto _066B

_0801:
	compare VAR_TEMP_x4000, 363
	goto_if_ne _0562
	apply_movement obj_T25_rocketm_9, _0998
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_T25_rocketm_9, _08BC
	apply_movement obj_player, _08C4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 35
	closemsg
	compare VAR_TEMP_x4000, 354
	goto_if_ne _0650
	apply_movement obj_T25_rocketm_9, _08D4
	goto _066B

_085E:
	compare VAR_TEMP_x4000, 362
	goto_if_ne _0879
	apply_movement obj_T25_rocketm_9, _09A0
	goto _066B

_0879:
	compare VAR_TEMP_x4000, 363
	goto_if_ne _066B
	apply_movement obj_T25_rocketm_9, _09B0
	wait_movement
	releaseall
	end

	.balign 4
_0894:

	step 33, 1
	step_end
	.balign 4
_089C:

	step 75, 1
	step_end
	.balign 4
_08A4:

	step 14, 5
	step_end
	.balign 4
_08AC:

	step 35, 1
	step_end
	.balign 4
_08B4:

	step 14, 4
	step_end
	.balign 4
_08BC:

	step 12, 1
	step_end
	.balign 4
_08C4:

	step 71, 1
	step 12, 1
	step 72, 1
	step_end
	.balign 4
_08D4:

	step 13, 1
	step 15, 5
	step 32, 1
	step_end
	.balign 4
_08E4:

	step 34, 1
	step_end
	.balign 4
_08EC:

	step 32, 1
	step_end
	.balign 4
_08F4:

	step 14, 3
	step_end
	.balign 4
_08FC:

	step 13, 1
	step 15, 4
	step 32, 1
	step_end
	.balign 4
_090C:

	step 14, 2
	step_end
	.balign 4
_0914:

	step 13, 1
	step 15, 3
	step 32, 1
	step_end
	.balign 4
_0924:

	step 14, 1
	step_end
	.balign 4
_092C:

	step 13, 1
	step 15, 2
	step 32, 1
	step_end
	.balign 4
_093C:

	step 60, 1
	step_end
	.balign 4
_0944:

	step 13, 1
	step 15, 1
	step 32, 1
	step_end
	.balign 4
_0954:

	step 15, 1
	step_end
	.balign 4
_095C:

	step 13, 1
	step 32, 1
	step_end
	.balign 4
_0968:

	step 15, 2
	step_end
	.balign 4
_0970:

	step 13, 1
	step 14, 1
	step 32, 1
	step_end
	.balign 4
_0980:

	step 15, 3
	step_end
	.balign 4
_0988:

	step 13, 1
	step 14, 2
	step 32, 1
	step_end
	.balign 4
_0998:

	step 15, 4
	step_end
	.balign 4
_09A0:

	step 13, 1
	step 14, 3
	step 32, 1
	step_end
	.balign 4
_09B0:

	step 13, 1
	step 14, 4
	step 32, 1
	step_end
	.balign 4
