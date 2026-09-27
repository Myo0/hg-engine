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

.include "data/scr_seq/include/event_D37R0105.inc"


// text archive to grab from: 120.txt

.data


scrdef scr_seq_D37R0105_000
scrdef scr_seq_D37R0105_001
scrdef scr_seq_D37R0105_002
scrdef_end

scr_seq_D37R0105_000:
	setflag FLAG_HIDE_ROCKET_TAKEOVER_1
	setflag FLAG_HIDE_ROCKET_TAKEOVER_2
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _0091
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_1
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_2
	end

scr_seq_D37R0105_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	getitemquantity ITEM_CARD_KEY_JOHTO, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0093
	npc_msg 0
	setflag FLAG_UNK_1C1
	giveitem_no_check ITEM_CARD_KEY_JOHTO, 1
	npc_msg 2
	npc_msg 3
	wait_button
	closemsg
	releaseall
	end

scr_seq_D37R0105_002:
	lockall
	play_se SEQ_SE_DP_SELECT
	hide_person obj_D37R0105_monstarball
	giveitem_no_check ITEM_TM215, 1
	setflag FLAG_HIDE_ITEMBALL_D37R0105_TM82
	closemsg
	releaseall
	end

_0091:
	end

_0093:
	npc_msg 2
	npc_msg 3
	wait_button
	closemsg
	releaseall
	end
	.balign 4
