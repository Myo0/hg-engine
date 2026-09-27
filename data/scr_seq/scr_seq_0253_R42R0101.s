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

.include "data/scr_seq/include/event_R42R0101.inc"


// text archive to grab from: 400.txt

.data


scrdef scr_seq_R42R0101_000
scrdef scr_seq_R42R0101_001
scrdef scr_seq_R42R0101_002
scrdef_end

scr_seq_R42R0101_000:
	end

scr_seq_R42R0101_001:
	simple_npc_msg 0
	end

scr_seq_R42R0101_002:
	lockall
	apply_movement obj_R42R0101_counterm, _004C
	wait_movement
	apply_movement obj_player, _0054
	wait_movement
	npc_msg 1
	closemsg
	apply_movement obj_player, _005C
	wait_movement
	releaseall
	end

	.balign 4
_004C:

	step 75, 1
	step_end
	.balign 4
_0054:

	step 0, 1
	step_end
	.balign 4
_005C:

	step 14, 1
	step_end
	.balign 4
