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

.include "data/scr_seq/include/event_D25R0101.inc"


// text archive to grab from: 087.txt

.data


scrdef scr_seq_D25R0101_000
scrdef scr_seq_D25R0101_001
scrdef_end

scr_seq_D25R0101_000:
	end

scr_seq_D25R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	closemsg
	trainer_battle TRAINER_ACE_TRAINER_M_MICKEY_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0060
	npc_msg 1
	closemsg
	goto_if_no_item_space ITEM_DARK_GEM, 1, _0066
	callstd std_give_item_verbose
	releaseall
	end

_0060:
	white_out
	releaseall
	end

_0066:
	npc_msg 2
	wait_button
	closemsg
	releaseall
	end
	.balign 4
