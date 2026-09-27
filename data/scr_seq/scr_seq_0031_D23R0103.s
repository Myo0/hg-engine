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

.include "data/scr_seq/include/event_D23R0103.inc"


// text archive to grab from: 067.txt

.data


scrdef scr_seq_D23R0103_000
scrdef scr_seq_D23R0103_001
scrdef scr_seq_D23R0103_002
scrdef scr_seq_D23R0103_003
scrdef scr_seq_D23R0103_004
scrdef scr_seq_D23R0103_005
scrdef scr_seq_D23R0103_006
scrdef scr_seq_D23R0103_007
scrdef_end

scr_seq_D23R0103_000:
	setflag FLAG_HIDE_ROCKET_TAKEOVER_1
	setflag FLAG_HIDE_ROCKET_TAKEOVER_2
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _0125
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_1
	goto _0138

scr_seq_D23R0103_001:
	simple_npc_msg 15
	end

scr_seq_D23R0103_002:
	simple_npc_msg 16
	end

scr_seq_D23R0103_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _013A
	npc_msg 1
	goto _0145

scr_seq_D23R0103_004:
	simple_npc_msg 0
	end

scr_seq_D23R0103_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _014D
	getitemquantity ITEM_BASEMENT_KEY, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0153
	npc_msg 3
	goto _015E

scr_seq_D23R0103_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	getitemquantity ITEM_CARD_KEY_JOHTO, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0166
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

scr_seq_D23R0103_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_090, _0194
	npc_msg 11
	closemsg
	getitemquantity ITEM_CARD_KEY_JOHTO, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0166
	npc_msg 13
	wait_button
	closemsg
	releaseall
	end

_0125:
	compare VAR_SCENE_ROCKET_TAKEOVER, 5
	goto_if_ne _0138
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_2
	end

_0138:
	end

_013A:
	npc_msg 2
	wait_button
	closemsg
	releaseall
	end

_0145:
	wait_button
	closemsg
	releaseall
	end

_014D:
	goto _019F

_0153:
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

_015E:
	wait_button
	closemsg
	releaseall
	end

_0166:
	buffer_players_name 0
	npc_msg 12
	closemsg
	apply_movement obj_D23R0103_babyboy1_9, _01F8
	apply_movement obj_D23R0103_babyboy1_9_2, _0200
	wait_movement
	releaseall
	setflag FLAG_UNK_1BF
	hide_person obj_D23R0103_babyboy1_9
	hide_person obj_D23R0103_babyboy1_9_2
	setflag FLAG_UNK_090
	end

_0194:
	npc_msg 14
	wait_button
	closemsg
	releaseall
	end

_019F:
	goto_if_set FLAG_GOT_TM11_FROM_RADIO_TOWER_WOMAN, _01E1
	npc_msg 5
	goto_if_no_item_space ITEM_TM118, 1, _01EC
	callstd std_give_item_verbose
	npc_msg 7
	wait_button
	closemsg
	releaseall
	setflag FLAG_GOT_TM11_FROM_RADIO_TOWER_WOMAN
	end

_01E1:
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_01EC:
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

	.byte 0x00
	.balign 4
_01F8:

	step 14, 2
	step_end
	.balign 4
_0200:

	step 15, 2
	step_end
	.balign 4
