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

.include "data/scr_seq/include/event_D26R0103.inc"


// text archive to grab from: 092.txt

.data


scrdef scr_seq_D26R0103_000
scrdef scr_seq_D26R0103_001
scrdef_end

scr_seq_D26R0103_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_KINGS_ROCK_FROM_SLOWPOKE_WELL_MAN, _0077
	npc_msg 0
	wait_ab_press
	closemsg
	goto_if_no_item_space ITEM_KINGS_ROCK, 3, _0082
	callstd std_give_item_verbose
	setflag FLAG_GOT_KINGS_ROCK_FROM_SLOWPOKE_WELL_MAN
	goto _0077

scr_seq_D26R0103_001:
	lockall
	play_se SEQ_SE_DP_SELECT
	hide_person obj_D26R0103_monstarball
	giveitem_no_check ITEM_TM209, 1
	setflag FLAG_HIDE_ITEMBALL_D26R0103_TM18
	closemsg
	releaseall
	end

_0077:
	npc_msg 2
	wait_button
	closemsg
	releaseall
	end

_0082:
	callstd std_bag_is_full
	closemsg
	releaseall
	end
	.balign 4
