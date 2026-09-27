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

.include "data/scr_seq/include/event_R46.inc"


// text archive to grab from: 406.txt

.data


scrdef scr_seq_R46_000
scrdef scr_seq_R46_001
scrdef scr_seq_R46_002
scrdef scr_seq_R46_003
scrdef_end

scr_seq_R46_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_079, _007B
	npc_msg 2
	wait_button
	closemsg
	releaseall
	end

scr_seq_R46_001:
	direction_signpost 0, 1, 3, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R46_002:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 1, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R46_003:
	lockall
	clearflag FLAG_UNK_18D
	setvar VAR_UNK_406A, 0
	apply_movement obj_player, _0086
	wait_movement
	npc_msg 4
	closemsg
	releaseall
	end

_007B:
	npc_msg 3
	wait_button
	closemsg
	releaseall
	end

	.balign 4
_0086:

	step 75, 1
	step_end
	.balign 4
