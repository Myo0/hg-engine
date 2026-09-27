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

.include "data/scr_seq/include/event_R33.inc"


// text archive to grab from: 383.txt

.data


scrdef scr_seq_R33_000
scrdef scr_seq_R33_001
scrdef scr_seq_R33_002
scrdef scr_seq_R33_003
scrdef_end

scr_seq_R33_000:
	simple_npc_msg 0
	end

scr_seq_R33_001:
	direction_signpost 1, 1, 2, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R33_002:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 6
	setvar VAR_SPECIAL_x8008, 6
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R33_4067
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_R33_003:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 5
	setvar VAR_SPECIAL_x8008, 7
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R33_4066
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end
	.balign 4
