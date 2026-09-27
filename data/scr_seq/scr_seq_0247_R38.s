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

.include "data/scr_seq/include/event_R38.inc"


// text archive to grab from: 394.txt

.data


scrdef scr_seq_R38_000
scrdef scr_seq_R38_001
scrdef scr_seq_R38_002
scrdef scr_seq_R38_003
scrdef scr_seq_R38_004
scrdef scr_seq_R38_005
scrdef_end

scr_seq_R38_000:
	end

scr_seq_R38_001:
	direction_signpost 15, 1, 8, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R38_002:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 16, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R38_003:
	lockall
	play_se SEQ_SE_DP_SELECT
	hide_person obj_R38_3936
	giveitem_no_check ITEM_CHIMECHITE, 1
	setflag FLAG_HIDE_ITEMBALL_R38_LAX_INCENSE
	closemsg
	releaseall
	end

scr_seq_R38_004:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 9
	setvar VAR_SPECIAL_x8008, 13
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R38_4070
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_R38_005:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 9
	setvar VAR_SPECIAL_x8008, 14
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R38_4070_2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end
	.balign 4
