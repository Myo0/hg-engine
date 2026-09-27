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

.include "data/scr_seq/include/event_T23GYM0101.inc"


// text archive to grab from: 566.txt

.data


scrdef scr_seq_T23GYM0101_000
scrdef scr_seq_T23GYM0101_001
scrdef scr_seq_T23GYM0101_002
scrdef_end

scr_seq_T23GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_HIVE, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _007A
	npc_msg 0
	wait_button
	closemsg
	releaseall
	end

scr_seq_T23GYM0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_HIVE, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0085
	npc_msg 2
	goto _0090

scr_seq_T23GYM0101_002:
	lockall
	clearflag FLAG_UNK_18D
	setvar VAR_UNK_406C, 0
	apply_movement obj_player, _0098
	wait_movement
	npc_msg 4
	closemsg
	releaseall
	end

_007A:
	npc_msg 1
	wait_button
	closemsg
	releaseall
	end

_0085:
	npc_msg 3
	wait_button
	closemsg
	releaseall
	end

_0090:
	wait_button
	closemsg
	releaseall
	end

	.balign 4
_0098:

	step 75, 1
	step_end
	.balign 4
