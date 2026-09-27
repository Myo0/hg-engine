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

.include "data/scr_seq/include/event_R43R0201.inc"


// text archive to grab from: 403.txt

.data


scrdef scr_seq_R43R0201_000
scrdef scr_seq_R43R0201_001
scrdef scr_seq_R43R0201_002
scrdef scr_seq_R43R0201_003
scrdef_end

scr_seq_R43R0201_000:
	simple_npc_msg 3
	end

scr_seq_R43R0201_001:
	stop_bgm SEQ_GS_R_7_42
	play_bgm SEQ_GS_EYE_ROCKET
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _009D
	goto _0128

scr_seq_R43R0201_002:
	goto_if_set FLAG_RED_GYARADOS_MEET, _015D
	end

scr_seq_R43R0201_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_TM36_FROM_ROUTE_43_GUARD, _015F
	npc_msg 4
	goto_if_no_item_space ITEM_TM036, 1, _016A
	callstd std_obtain_item_verbose
	wait_button
	setflag FLAG_GOT_TM36_FROM_ROUTE_43_GUARD
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

_009D:
	apply_movement obj_R43R0201_rocketm, _01E4
	apply_movement obj_R43R0201_rocketm_2, _01F8
	wait_movement
	npc_msg 7
	closemsg
	trainer_battle TRAINER_BEAUTY_MICKEY_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_x8008
	case 0, _0174
	apply_movement obj_R43R0201_rocketm, _0204
	wait_movement
	apply_movement obj_R43R0201_rocketm_2, _0214
	wait_movement
	npc_msg 8
	closemsg
	trainer_battle TRAINER_BEAUTY_MICKEY_3, 0, 0, 0
	check_battle_won VAR_SPECIAL_x8008
	case 0, _0174
	setvar VAR_UNK_410F, 1
	npc_msg 0
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 1000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0178
	npc_msg 1
	closemsg
	goto _0183

_0128:
	apply_movement obj_R43R0201_rocketm, _0224
	apply_movement obj_R43R0201_rocketm_2, _0240
	wait_movement
	npc_msg 0
	hasenoughmoneyimmediate VAR_SPECIAL_RESULT, 1000
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0199
	npc_msg 1
	closemsg
	goto _01A4

_015D:
	end

_015F:
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

_016A:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0174:
	white_out
	end

_0178:
	npc_msg 2
	closemsg
	goto _0183

_0183:
	submoneyimmediate 1000
	apply_movement obj_R43R0201_rocketm_2, _0254
	wait_movement
	goto _01D0

_0199:
	npc_msg 2
	closemsg
	goto _01A4

_01A4:
	submoneyimmediate 1000
	apply_movement obj_R43R0201_rocketm, _0260
	apply_movement obj_R43R0201_rocketm_2, _0270
	wait_movement
	stop_bgm SEQ_GS_EYE_ROCKET
	play_bgm SEQ_GS_R_7_42
	setvar VAR_UNK_410F, 1
	setflag FLAG_HIDE_ROUTE_43_GATE_ROCKETS
	end

_01D0:
	stop_bgm SEQ_GS_EYE_ROCKET
	play_bgm SEQ_GS_R_7_42
	setvar VAR_UNK_410F, 1
	setflag FLAG_HIDE_ROUTE_43_GATE_ROCKETS
	end

	.balign 4
_01E4:

	step 75, 1
	step 21, 3
	step 23, 2
	step 1, 1
	step_end
	.balign 4
_01F8:

	step 1, 1
	step 75, 1
	step_end
	.balign 4
_0204:

	step 22, 2
	step 20, 3
	step 1, 1
	step_end
	.balign 4
_0214:

	step 21, 3
	step 22, 2
	step 1, 1
	step_end
	.balign 4
_0224:

	step 63, 6
	step 0, 1
	step 75, 1
	step 20, 4
	step 23, 1
	step 0, 1
	step_end
	.balign 4
_0240:

	step 75, 1
	step 20, 4
	step 22, 2
	step 0, 1
	step_end
	.balign 4
_0254:

	step 23, 2
	step 20, 3
	step_end
	.balign 4
_0260:

	step 62, 3
	step 22, 1
	step 21, 4
	step_end
	.balign 4
_0270:

	step 23, 2
	step 21, 4
	step 0, 1
	step_end
	.balign 4
