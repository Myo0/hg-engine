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

.include "data/scr_seq/include/event_D43R0102.inc"


// text archive to grab from: 003.txt

.data


scrdef scr_seq_D43R0102_000
scrdef scr_seq_D43R0102_001
scrdef scr_seq_D43R0102_002
scrdef scr_seq_D43R0102_003
scrdef scr_seq_D43R0102_004
scrdef_end

scr_seq_D43R0102_000:
	play_se SEQ_SE_GS_RAKKA01
	apply_movement obj_player, _00A6
	scrcmd_374 obj_player
	wait_movement
	screen_shake 0, 1, 1, 8
	play_se SEQ_SE_DP_SUTYA2
	setvar VAR_UNK_40CA, 0
	end

scr_seq_D43R0102_001:
	compare VAR_UNK_40CA, 1
	goto_if_ne _00A3
	make_object_visible obj_player
	end

scr_seq_D43R0102_002:
	lockall
	play_se SEQ_SE_DP_SELECT
	faceplayer
	play_cry SPECIES_CROBAT, 0
	wait_cry
	releaseall
	end

scr_seq_D43R0102_003:
	lockall
	apply_movement obj_player, _00AE
	wait_movement
	npc_msg 9
	closemsg
	apply_movement obj_player, _00B6
	wait_movement
	releaseall
	end

scr_seq_D43R0102_004:
	lockall
	apply_movement obj_player, _00AE
	wait_movement
	clearflag FLAG_UNK_18D
	setvar VAR_UNK_406F, 2
	npc_msg 7
	closemsg
	releaseall
	end

_00A3:
	end

	.byte 0x00
	.balign 4
_00A6:

	step 68, 1
	step_end
	.balign 4
_00AE:

	step 75, 1
	step_end
	.balign 4
_00B6:

	step 13, 1
	step_end
	.balign 4
