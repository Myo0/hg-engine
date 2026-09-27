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

.include "data/scr_seq/include/event_D42R0101.inc"


// text archive to grab from: 127.txt

.data


scrdef scr_seq_D42R0101_000
scrdef scr_seq_D42R0101_001
scrdef scr_seq_D42R0101_002
scrdef scr_seq_D42R0101_003
scrdef scr_seq_D42R0101_004
scrdef_end

scr_seq_D42R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_BLACKGLASSES_FROM_DARK_CAVE_MAN, _0091
	npc_msg 0
	goto_if_no_item_space ITEM_BLACK_GLASSES, 1, _009C
	callstd std_give_item_verbose
	setflag FLAG_GOT_BLACKGLASSES_FROM_DARK_CAVE_MAN
	npc_msg 2
	wait_button
	closemsg
	releaseall
	end

scr_seq_D42R0101_001:
	lockall
	releaseall
	end

scr_seq_D42R0101_002:
	lockall
	releaseall
	end

scr_seq_D42R0101_003:
	lockall
	releaseall
	end

scr_seq_D42R0101_004:
	lockall
	setflag FLAG_UNK_18D
	setvar VAR_UNK_406A, 1
	apply_movement obj_player, _00A8
	wait_movement
	npc_msg 12
	closemsg
	releaseall
	end

_0091:
	npc_msg 2
	wait_button
	closemsg
	releaseall
	end

_009C:
	npc_msg 3
	wait_button
	closemsg
	releaseall
	end

	.byte 0x00
	.balign 4
_00A8:

	step 75, 1
	step_end
	.balign 4
