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

.include "data/scr_seq/include/event_D37R0104.inc"


// text archive to grab from: 119.txt

.data


scrdef scr_seq_D37R0104_000
scrdef scr_seq_D37R0104_001
scrdef scr_seq_D37R0104_002
scrdef scr_seq_D37R0104_003
scrdef scr_seq_D37R0104_004
scrdef scr_seq_D37R0104_005
scrdef scr_seq_D37R0104_006
scrdef scr_seq_D37R0104_007
scrdef scr_seq_D37R0104_008
scrdef_end

scr_seq_D37R0104_000:
	scrcmd_609
	lockall
	compare VAR_BATTLE_TOWER_PRINT_PROGRESS, 1
	goto_if_ne _0263
	play_se SEQ_SE_GS_ZUKAN06
	compare VAR_TEMP_x4002, 0
	goto_if_ne _026C
	apply_movement obj_D37R0104_gate_top, _0A34
	apply_movement obj_D37R0104_gate_bottom, _0A3C
	setvar VAR_TEMP_x4002, 1
	goto _02AB

scr_seq_D37R0104_001:
	scrcmd_609
	lockall
	compare VAR_BATTLE_TOWER_PRINT_PROGRESS, 1
	goto_if_ne _0263
	play_se SEQ_SE_GS_ZUKAN06
	compare VAR_TEMP_x4000, 0
	goto_if_ne _02D4
	apply_movement obj_D37R0104_gate_left, _0A44
	apply_movement obj_D37R0104_gate_right, _0A4C
	apply_movement obj_D37R0104_stop_3, _0A54
	setvar VAR_TEMP_x4000, 1
	goto _031B

scr_seq_D37R0104_002:
	scrcmd_609
	lockall
	compare VAR_BATTLE_TOWER_PRINT_PROGRESS, 1
	goto_if_ne _0263
	play_se SEQ_SE_GS_ZUKAN06
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0344
	apply_movement obj_D37R0104_gate_left_2, _0A44
	apply_movement obj_D37R0104_gate_right_2, _0A4C
	apply_movement obj_D37R0104_stop_2, _0A54
	setvar VAR_TEMP_x4001, 1
	goto _038B

scr_seq_D37R0104_003:
	goto_if_set FLAG_OPENED_GOLDENROD_PURPLE_GATE, _03B4
	scrcmd_609
	lockall
	play_se SEQ_SE_GS_ZUKAN06
	apply_movement obj_D37R0104_gate_left_6, _0A5C
	apply_movement obj_D37R0104_gate_right_6, _0A64
	apply_movement obj_D37R0104_stop_6, _0A6C
	wait_movement
	setflag FLAG_OPENED_GOLDENROD_PURPLE_GATE
	releaseall
	end

scr_seq_D37R0104_004:
	scrcmd_609
	lockall
	callstd std_play_rival_intro_music
	move_person_facing obj_D37R0104_gsrivel, 28, 0, 4, DIR_WEST
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D37R0104_gsrivel, _0A74
	apply_movement obj_player, _0A88
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_rivals_name 0
	npc_msg 0
	closemsg
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 772
	goto_if_ne _03B6
	trainer_battle TRAINER_RIVAL_SILVER_18, 0, 0, 0
	goto _03D1

scr_seq_D37R0104_005:
	make_object_visible obj_D37R0104_stop_3
	make_object_visible obj_D37R0104_stop_2
	make_object_visible obj_D37R0104_stop
	make_object_visible obj_D37R0104_stop_4
	make_object_visible obj_D37R0104_stop_5
	make_object_visible obj_D37R0104_stop_6
	goto_if_set FLAG_OPENED_GOLDENROD_PURPLE_GATE, _0410
	end

scr_seq_D37R0104_006:
	setflag FLAG_HIDE_ROCKET_TAKEOVER_1
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _0436
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_1
	setvar VAR_TEMP_x4000, 0
	setvar VAR_TEMP_x4001, 0
	setvar VAR_TEMP_x4002, 1
	setvar VAR_TEMP_x4003, 0
	setvar VAR_TEMP_x4004, 0
	setvar VAR_TEMP_x4005, 0
	setvar VAR_TEMP_x4006, 0
	setvar VAR_TEMP_x4007, 0
	setvar VAR_TEMP_x4008, 0
	setvar VAR_TEMP_x4009, 1
	end

scr_seq_D37R0104_007:
	lockall
	faceplayer
	play_se SEQ_SE_DP_SELECT
	wait_se SEQ_SE_DP_SELECT
	stop_bgm 0
	play_bgm SEQ_GS_EYE_ROCKET
	npc_msg 2
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_23, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0474
	reset_bgm
	npc_msg 3
	closemsg
	setvar VAR_BATTLE_TOWER_PRINT_PROGRESS, 1
	end

scr_seq_D37R0104_008:
	lockall
	play_se SEQ_SE_DP_SELECT
	hide_person obj_D37R0104_3950
	giveitem_no_check ITEM_GOLURKITE, 1
	setflag FLAG_HIDE_ITEMBALL_D37R0104_FULL_HEAL
	closemsg
	releaseall
	end

_0263:
	npc_msg 4
	closemsg
	releaseall
	end

_026C:
	apply_movement obj_D37R0104_gate_top, _0A94
	apply_movement obj_D37R0104_gate_bottom, _0A9C
	setvar VAR_TEMP_x4002, 0
	compare VAR_TEMP_x4003, 0
	goto_if_ne _0478
	apply_movement obj_D37R0104_gate_top_2, _0A34
	apply_movement obj_D37R0104_gate_bottom_2, _0A3C
	setvar VAR_TEMP_x4003, 1
	goto _04BF

_02AB:
	compare VAR_TEMP_x4003, 0
	goto_if_ne _0478
	apply_movement obj_D37R0104_gate_top_2, _0A34
	apply_movement obj_D37R0104_gate_bottom_2, _0A3C
	setvar VAR_TEMP_x4003, 1
	goto _04BF

_02D4:
	apply_movement obj_D37R0104_gate_left, _0A5C
	apply_movement obj_D37R0104_gate_right, _0A64
	apply_movement obj_D37R0104_stop_3, _0A6C
	setvar VAR_TEMP_x4000, 0
	compare VAR_TEMP_x4002, 0
	goto_if_ne _04F0
	apply_movement obj_D37R0104_gate_top, _0A34
	apply_movement obj_D37R0104_gate_bottom, _0A3C
	setvar VAR_TEMP_x4002, 1
	goto _0537

_031B:
	compare VAR_TEMP_x4002, 0
	goto_if_ne _04F0
	apply_movement obj_D37R0104_gate_top, _0A34
	apply_movement obj_D37R0104_gate_bottom, _0A3C
	setvar VAR_TEMP_x4002, 1
	goto _0537

_0344:
	apply_movement obj_D37R0104_gate_left_2, _0A5C
	apply_movement obj_D37R0104_gate_right_2, _0A64
	apply_movement obj_D37R0104_stop_2, _0A6C
	setvar VAR_TEMP_x4001, 0
	compare VAR_TEMP_x4003, 0
	goto_if_ne _0568
	apply_movement obj_D37R0104_gate_top_2, _0A34
	apply_movement obj_D37R0104_gate_bottom_2, _0A3C
	setvar VAR_TEMP_x4003, 1
	goto _05AF

_038B:
	compare VAR_TEMP_x4003, 0
	goto_if_ne _0568
	apply_movement obj_D37R0104_gate_top_2, _0A34
	apply_movement obj_D37R0104_gate_bottom_2, _0A3C
	setvar VAR_TEMP_x4003, 1
	goto _05AF

_03B4:
	end

_03B6:
	compare VAR_SPECIAL_RESULT, 390
	goto_if_ne _05E0
	trainer_battle TRAINER_RIVAL_SILVER_12, 0, 0, 0
	goto _03D1

_03D1:
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0627
	callstd std_play_rival_outro_music
	buffer_rivals_name 0
	npc_msg 1
	closemsg
	setvar VAR_UNK_40A0, 1
	setvar VAR_UNK_416F, 69
	apply_movement obj_D37R0104_gsrivel, _0AA4
	wait_movement
	hide_person obj_D37R0104_gsrivel
	callstd std_fade_end_rival_outro_music
	releaseall
	end

_0410:
	move_person_facing obj_D37R0104_gate_left_6, 18, 0, 14, DIR_NORTH
	move_person_facing obj_D37R0104_gate_right_6, 24, 0, 14, DIR_NORTH
	move_person_facing obj_D37R0104_stop_6, 24, 0, 14, DIR_NORTH
	end

_0436:
	setvar VAR_TEMP_x4000, 0
	setvar VAR_TEMP_x4001, 0
	setvar VAR_TEMP_x4002, 1
	setvar VAR_TEMP_x4003, 0
	setvar VAR_TEMP_x4004, 0
	setvar VAR_TEMP_x4005, 0
	setvar VAR_TEMP_x4006, 0
	setvar VAR_TEMP_x4007, 0
	setvar VAR_TEMP_x4008, 0
	setvar VAR_TEMP_x4009, 1
	end

_0474:
	white_out
	end

_0478:
	apply_movement obj_D37R0104_gate_top_2, _0A94
	apply_movement obj_D37R0104_gate_bottom_2, _0A9C
	setvar VAR_TEMP_x4003, 0
	compare VAR_TEMP_x4004, 0
	goto_if_ne _062D
	apply_movement obj_D37R0104_gate_left_3, _0A44
	apply_movement obj_D37R0104_gate_right_3, _0A4C
	apply_movement obj_D37R0104_stop, _0A54
	setvar VAR_TEMP_x4004, 1
	goto _067C

_04BF:
	compare VAR_TEMP_x4004, 0
	goto_if_ne _062D
	apply_movement obj_D37R0104_gate_left_3, _0A44
	apply_movement obj_D37R0104_gate_right_3, _0A4C
	apply_movement obj_D37R0104_stop, _0A54
	setvar VAR_TEMP_x4004, 1
	goto _067C

_04F0:
	apply_movement obj_D37R0104_gate_top, _0A94
	apply_movement obj_D37R0104_gate_bottom, _0A9C
	setvar VAR_TEMP_x4002, 0
	compare VAR_TEMP_x4004, 0
	goto_if_ne _06AD
	apply_movement obj_D37R0104_gate_left_3, _0A44
	apply_movement obj_D37R0104_gate_right_3, _0A4C
	apply_movement obj_D37R0104_stop, _0A54
	setvar VAR_TEMP_x4004, 1
	goto _06FC

_0537:
	compare VAR_TEMP_x4004, 0
	goto_if_ne _06AD
	apply_movement obj_D37R0104_gate_left_3, _0A44
	apply_movement obj_D37R0104_gate_right_3, _0A4C
	apply_movement obj_D37R0104_stop, _0A54
	setvar VAR_TEMP_x4004, 1
	goto _06FC

_0568:
	apply_movement obj_D37R0104_gate_top_2, _0A94
	apply_movement obj_D37R0104_gate_bottom_2, _0A9C
	setvar VAR_TEMP_x4003, 0
	compare VAR_TEMP_x4005, 0
	goto_if_ne _072D
	apply_movement obj_D37R0104_gate_left_4, _0A44
	apply_movement obj_D37R0104_gate_right_4, _0A4C
	apply_movement obj_D37R0104_stop_4, _0A54
	setvar VAR_TEMP_x4005, 1
	goto _077C

_05AF:
	compare VAR_TEMP_x4005, 0
	goto_if_ne _072D
	apply_movement obj_D37R0104_gate_left_4, _0A44
	apply_movement obj_D37R0104_gate_right_4, _0A4C
	apply_movement obj_D37R0104_stop_4, _0A54
	setvar VAR_TEMP_x4005, 1
	goto _077C

_05E0:
	trainer_battle TRAINER_EXECUTIVE_PROTON_PROTON_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0627
	callstd std_play_rival_outro_music
	buffer_rivals_name 0
	npc_msg 1
	closemsg
	setvar VAR_UNK_40A0, 1
	setvar VAR_UNK_416F, 69
	apply_movement obj_D37R0104_gsrivel, _0AA4
	wait_movement
	hide_person obj_D37R0104_gsrivel
	callstd std_fade_end_rival_outro_music
	releaseall
	end

_0627:
	white_out
	releaseall
	end

_062D:
	apply_movement obj_D37R0104_gate_left_3, _0A5C
	apply_movement obj_D37R0104_gate_right_3, _0A64
	apply_movement obj_D37R0104_stop, _0A6C
	setvar VAR_TEMP_x4004, 0
	compare VAR_TEMP_x4005, 0
	goto_if_ne _07AD
	apply_movement obj_D37R0104_gate_left_4, _0A44
	apply_movement obj_D37R0104_gate_right_4, _0A4C
	apply_movement obj_D37R0104_stop_4, _0A54
	setvar VAR_TEMP_x4005, 1
	goto _07F4

_067C:
	compare VAR_TEMP_x4005, 0
	goto_if_ne _07AD
	apply_movement obj_D37R0104_gate_left_4, _0A44
	apply_movement obj_D37R0104_gate_right_4, _0A4C
	apply_movement obj_D37R0104_stop_4, _0A54
	setvar VAR_TEMP_x4005, 1
	goto _07F4

_06AD:
	apply_movement obj_D37R0104_gate_left_3, _0A5C
	apply_movement obj_D37R0104_gate_right_3, _0A64
	apply_movement obj_D37R0104_stop, _0A6C
	setvar VAR_TEMP_x4004, 0
	compare VAR_TEMP_x4006, 0
	goto_if_ne _081D
	apply_movement obj_D37R0104_gate_left_5, _0A44
	apply_movement obj_D37R0104_gate_right_5, _0A4C
	apply_movement obj_D37R0104_stop_5, _0A54
	setvar VAR_TEMP_x4006, 1
	goto _0864

_06FC:
	compare VAR_TEMP_x4006, 0
	goto_if_ne _081D
	apply_movement obj_D37R0104_gate_left_5, _0A44
	apply_movement obj_D37R0104_gate_right_5, _0A4C
	apply_movement obj_D37R0104_stop_5, _0A54
	setvar VAR_TEMP_x4006, 1
	goto _0864

_072D:
	apply_movement obj_D37R0104_gate_left_4, _0A5C
	apply_movement obj_D37R0104_gate_right_4, _0A64
	apply_movement obj_D37R0104_stop_4, _0A6C
	setvar VAR_TEMP_x4005, 0
	compare VAR_TEMP_x4006, 0
	goto_if_ne _088D
	apply_movement obj_D37R0104_gate_left_5, _0A44
	apply_movement obj_D37R0104_gate_right_5, _0A4C
	apply_movement obj_D37R0104_stop_5, _0A54
	setvar VAR_TEMP_x4006, 1
	goto _08D4

_077C:
	compare VAR_TEMP_x4006, 0
	goto_if_ne _088D
	apply_movement obj_D37R0104_gate_left_5, _0A44
	apply_movement obj_D37R0104_gate_right_5, _0A4C
	apply_movement obj_D37R0104_stop_5, _0A54
	setvar VAR_TEMP_x4006, 1
	goto _08D4

_07AD:
	apply_movement obj_D37R0104_gate_left_4, _0A5C
	apply_movement obj_D37R0104_gate_right_4, _0A64
	apply_movement obj_D37R0104_stop_4, _0A6C
	setvar VAR_TEMP_x4005, 0
	compare VAR_TEMP_x4007, 0
	goto_if_ne _08FD
	apply_movement obj_D37R0104_gate_top_3, _0A34
	apply_movement obj_D37R0104_gate_bottom_3, _0A3C
	setvar VAR_TEMP_x4007, 1
	goto _0919

_07F4:
	compare VAR_TEMP_x4007, 0
	goto_if_ne _08FD
	apply_movement obj_D37R0104_gate_top_3, _0A34
	apply_movement obj_D37R0104_gate_bottom_3, _0A3C
	setvar VAR_TEMP_x4007, 1
	goto _0919

_081D:
	apply_movement obj_D37R0104_gate_left_5, _0A5C
	apply_movement obj_D37R0104_gate_right_5, _0A64
	apply_movement obj_D37R0104_stop_5, _0A6C
	setvar VAR_TEMP_x4006, 0
	compare VAR_TEMP_x4008, 0
	goto_if_ne _091F
	apply_movement obj_D37R0104_gate_top_4, _0A34
	apply_movement obj_D37R0104_gate_bottom_4, _0A3C
	setvar VAR_TEMP_x4008, 1
	goto _095E

_0864:
	compare VAR_TEMP_x4008, 0
	goto_if_ne _091F
	apply_movement obj_D37R0104_gate_top_4, _0A34
	apply_movement obj_D37R0104_gate_bottom_4, _0A3C
	setvar VAR_TEMP_x4008, 1
	goto _095E

_088D:
	apply_movement obj_D37R0104_gate_left_5, _0A5C
	apply_movement obj_D37R0104_gate_right_5, _0A64
	apply_movement obj_D37R0104_stop_5, _0A6C
	setvar VAR_TEMP_x4006, 0
	compare VAR_TEMP_x4007, 0
	goto_if_ne _0987
	apply_movement obj_D37R0104_gate_top_3, _0A34
	apply_movement obj_D37R0104_gate_bottom_3, _0A3C
	setvar VAR_TEMP_x4007, 1
	goto _09C6

_08D4:
	compare VAR_TEMP_x4007, 0
	goto_if_ne _0987
	apply_movement obj_D37R0104_gate_top_3, _0A34
	apply_movement obj_D37R0104_gate_bottom_3, _0A3C
	setvar VAR_TEMP_x4007, 1
	goto _09C6

_08FD:
	apply_movement obj_D37R0104_gate_top_3, _0A94
	apply_movement obj_D37R0104_gate_bottom_3, _0A9C
	setvar VAR_TEMP_x4007, 0
	wait_movement
	releaseall
	end

_0919:
	wait_movement
	releaseall
	end

_091F:
	apply_movement obj_D37R0104_gate_top_4, _0A94
	apply_movement obj_D37R0104_gate_bottom_4, _0A9C
	setvar VAR_TEMP_x4008, 0
	compare VAR_TEMP_x4009, 0
	goto_if_ne _09EF
	apply_movement obj_D37R0104_gate_top_5, _0A34
	apply_movement obj_D37R0104_gate_bottom_5, _0A3C
	setvar VAR_TEMP_x4009, 1
	goto _0A0B

_095E:
	compare VAR_TEMP_x4009, 0
	goto_if_ne _09EF
	apply_movement obj_D37R0104_gate_top_5, _0A34
	apply_movement obj_D37R0104_gate_bottom_5, _0A3C
	setvar VAR_TEMP_x4009, 1
	goto _0A0B

_0987:
	apply_movement obj_D37R0104_gate_top_3, _0A94
	apply_movement obj_D37R0104_gate_bottom_3, _0A9C
	setvar VAR_TEMP_x4007, 0
	compare VAR_TEMP_x4008, 0
	goto_if_ne _0A11
	apply_movement obj_D37R0104_gate_top_4, _0A34
	apply_movement obj_D37R0104_gate_bottom_4, _0A3C
	setvar VAR_TEMP_x4008, 1
	goto _0A2D

_09C6:
	compare VAR_TEMP_x4008, 0
	goto_if_ne _0A11
	apply_movement obj_D37R0104_gate_top_4, _0A34
	apply_movement obj_D37R0104_gate_bottom_4, _0A3C
	setvar VAR_TEMP_x4008, 1
	goto _0A2D

_09EF:
	apply_movement obj_D37R0104_gate_top_5, _0A94
	apply_movement obj_D37R0104_gate_bottom_5, _0A9C
	setvar VAR_TEMP_x4009, 0
	wait_movement
	releaseall
	end

_0A0B:
	wait_movement
	releaseall
	end

_0A11:
	apply_movement obj_D37R0104_gate_top_4, _0A94
	apply_movement obj_D37R0104_gate_bottom_4, _0A9C
	setvar VAR_TEMP_x4008, 0
	wait_movement
	releaseall
	end

_0A2D:
	wait_movement
	releaseall
	end

	.byte 0x00
	.balign 4
_0A34:

	step 13, 2
	step_end
	.balign 4
_0A3C:

	step 12, 2
	step_end
	.balign 4
_0A44:

	step 15, 2
	step_end
	.balign 4
_0A4C:

	step 14, 2
	step_end
	.balign 4
_0A54:

	step 15, 2
	step_end
	.balign 4
_0A5C:

	step 14, 2
	step_end
	.balign 4
_0A64:

	step 15, 2
	step_end
	.balign 4
_0A6C:

	step 14, 2
	step_end
	.balign 4
_0A74:

	step 62, 6
	step 14, 3
	step 13, 1
	step 14, 4
	step_end
	.balign 4
_0A88:

	step 75, 1
	step 15, 1
	step_end
	.balign 4
_0A94:

	step 12, 2
	step_end
	.balign 4
_0A9C:

	step 13, 2
	step_end
	.balign 4
_0AA4:

	step 15, 4
	step 12, 1
	step 15, 4
	step_end
	.balign 4
