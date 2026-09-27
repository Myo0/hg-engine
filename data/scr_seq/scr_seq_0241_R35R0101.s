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

.include "data/scr_seq/include/event_R35R0101.inc"


// text archive to grab from: 388.txt

.data


scrdef scr_seq_R35R0101_000
scrdef scr_seq_R35R0101_001
scrdef scr_seq_R35R0101_002
scrdef_end

scr_seq_R35R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_LOAN_SPEAROW, 1
	goto_if_eq _00E5
	compare VAR_LOAN_SPEAROW, 2
	goto_if_ge _010C
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _015A
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0165
	npc_msg 3
	give_loan_mon 7, 20, 101
	setvar VAR_LOAN_SPEAROW, 1
	buffer_players_name 0
	npc_msg 4
	play_fanfare SEQ_ME_PT_SPECIAL
	wait_fanfare
	kenya_check_party_or_mailbox VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0170
	goto_if_set FLAG_UNK_0B5, _0181
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

scr_seq_R35R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_RADIO_CARD, _018C
	npc_msg 13
	wait_button
	closemsg
	releaseall
	end

scr_seq_R35R0101_002:
	lockall
	apply_movement obj_R35R0101_counterm, _01EC
	wait_movement
	npc_msg 18
	closemsg
	apply_movement obj_player, _01F4
	wait_movement
	npc_msg 17
	closemsg
	apply_movement obj_player, _01FC
	releaseall
	end

_00E5:
	kenya_check_party_or_mailbox VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0170
	goto_if_set FLAG_UNK_0B5, _0181
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

_010C:
	compare VAR_LOAN_SPEAROW, 4
	goto_if_ge _01AF
	npc_msg 7
	goto_if_no_item_space ITEM_HP_UP, 1, _01BA
	callstd std_give_item_verbose
	compare VAR_LOAN_SPEAROW, 3
	goto_if_ne _01C4
	setvar VAR_LOAN_SPEAROW, 5
	goto _01D5

_015A:
	npc_msg 1
	wait_button
	closemsg
	releaseall
	end

_0165:
	npc_msg 2
	wait_button
	closemsg
	releaseall
	end

_0170:
	setvar VAR_LOAN_SPEAROW, 6
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_0181:
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

_018C:
	npc_msg 14
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01E0
	npc_msg 15
	wait_button
	closemsg
	releaseall
	end

_01AF:
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_01BA:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_01C4:
	setvar VAR_LOAN_SPEAROW, 4
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

_01D5:
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

_01E0:
	npc_msg 16
	wait_button
	closemsg
	releaseall
	end

	.byte 0x00
	.balign 4
_01EC:

	step 75, 1
	step_end
	.balign 4
_01F4:

	step 2, 1
	step_end
	.balign 4
_01FC:

	step 1, 1
	step 13, 1
	step_end
	.balign 4
