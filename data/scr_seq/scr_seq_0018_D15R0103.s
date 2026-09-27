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

.include "data/scr_seq/include/event_D15R0103.inc"


// text archive to grab from: 056.txt

.data


scrdef scr_seq_D15R0103_000
scrdef scr_seq_D15R0103_001
scrdef scr_seq_D15R0103_002
scrdef_end

scr_seq_D15R0103_000:
	clearflag FLAG_UNK_1A3
	goto_if_set FLAG_UNK_078, _010F
	end

scr_seq_D15R0103_001:
	scrcmd_609
	lockall
	setvar VAR_UNK_40A4, 1
	apply_movement obj_player, _0126
	wait_movement
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_102 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	apply_movement 241, _0132
	wait_movement
	apply_movement obj_D15R0103_chourou, _013A
	wait_movement
	npc_msg 0
	closemsg
	wait 15, VAR_SPECIAL_RESULT
	callstd std_play_rival_outro_music
	buffer_rivals_name 0
	apply_movement obj_D15R0103_gsrivel, _0142
	wait_movement
	npc_msg 1
	closemsg
	wait 15, VAR_SPECIAL_RESULT
	buffer_rivals_name 0
	npc_msg 2
	wait_ab_press
	closemsg
	play_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_D15R0103_gsrivel, _014A
	wait_movement
	hide_person obj_D15R0103_gsrivel
	setflag FLAG_UNK_078
	callstd std_fade_end_rival_outro_music
	apply_movement 241, _01A6
	wait_movement
	scrcmd_103
	releaseall
	end

scr_seq_D15R0103_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_076, _0115
	npc_msg 3
	closemsg
	trainer_battle TRAINER_ELDER_LI, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0120
	setvar VAR_UNK_416F, 17
	npc_msg 4
	giveitem_no_check ITEM_TM070, 1
	setflag FLAG_UNK_076
	setflag FLAG_HIDE_VIOLET_GYM_GYM_GUY_AFTER_SPROUT
	clearflag FLAG_HIDE_VIOLET_GYM_GYM_GUY_BEFORE_SPROUT
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

_010F:
	setflag FLAG_UNK_1A3
	end

_0115:
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

_0120:
	white_out
	releaseall
	end

	.balign 4
_0126:

	step 75, 1
	step 63, 1
	step_end
	.balign 4
_0132:

	step 12, 5
	step_end
	.balign 4
_013A:

	step 33, 2
	step_end
	.balign 4
_0142:

	step 13, 1
	step_end
	.balign 4
_014A:

	step 2, 4
	step 0, 4
	step 3, 4
	step 1, 4
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step_end
	.balign 4
_01A6:

	step 13, 5
	step_end
	.balign 4
