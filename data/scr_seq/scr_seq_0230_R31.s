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

.include "data/scr_seq/include/event_R31.inc"


// text archive to grab from: 378.txt

.data


scrdef scr_seq_R31_000
scrdef scr_seq_R31_001
scrdef scr_seq_R31_002
scrdef scr_seq_R31_003
scrdef scr_seq_R31_004
scrdef scr_seq_R31_005
scrdef scr_seq_R31_006
scrdef scr_seq_R31_007
scrdef scr_seq_R31_008
scrdef scr_seq_R31_009
scrdef scr_seq_R31_010
scrdef_end

scr_seq_R31_000:
	end

scr_seq_R31_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_LOAN_SPEAROW, 1
	goto_if_ne _018C
	goto _019F

scr_seq_R31_002:
	direction_signpost 13, 1, 2, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R31_003:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 14, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R31_004:
	simple_npc_msg 12
	end

scr_seq_R31_005:
	simple_npc_msg 11
	end

scr_seq_R31_006:
	lockall
	clearflag FLAG_UNK_18D
	setvar VAR_UNK_406A, 0
	apply_movement obj_player, _050A
	wait_movement
	npc_msg 16
	closemsg
	releaseall
	end

scr_seq_R31_007:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 6
	setvar VAR_SPECIAL_x8008, 0
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R31_4067
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_R31_008:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 0
	setvar VAR_SPECIAL_x8008, 1
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R31_4061
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_R31_009:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 2
	setvar VAR_SPECIAL_x8008, 2
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R31_4063
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_R31_010:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 1
	setvar VAR_SPECIAL_x8008, 3
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R31_4062
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_018C:
	compare VAR_LOAN_SPEAROW, 2
	goto_if_ne _0250
	goto _0263

_019F:
	npc_msg 1
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 255
	goto_if_eq _02A1
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_eq _02BA
	kenya_check VAR_SPECIAL_RESULT, VAR_TEMP_x4000, 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02D3
	kenya_check VAR_SPECIAL_RESULT, VAR_TEMP_x4000, 1
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02EC
	check_return_loan_mon 7, VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0305
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _032E
	return_loan_mon VAR_TEMP_x4000
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0347
	apply_movement obj_player, _0512
	goto _0362

_0250:
	compare VAR_LOAN_SPEAROW, 4
	goto_if_ne _03C6
	goto _0263

_0263:
	goto_if_no_item_space ITEM_TM044, 1, _03EF
	callstd std_give_item_verbose
	compare VAR_LOAN_SPEAROW, 2
	goto_if_ne _03F9
	setvar VAR_LOAN_SPEAROW, 3
	goto _040A

_02A1:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_02BA:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 15
	wait_button
	closemsg
	releaseall
	end

_02D3:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 2
	wait_button
	closemsg
	releaseall
	end

_02EC:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 3
	wait_button
	closemsg
	releaseall
	end

_0305:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 4
	closemsg
	buffer_players_name 0
	npc_msg 6
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	mon_give_mail VAR_TEMP_x4000
	goto _0415

_032E:
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_0347:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _046B
	apply_movement obj_player, _051A
	goto _0362

_0362:
	wait_movement
	buffer_players_name 0
	npc_msg 5
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	npc_msg 7
	setvar VAR_LOAN_SPEAROW, 2
	compare VAR_TEMP_x4000, VAR_TEMP_x4001
	goto_if_ne _0263
	scrcmd_606
	goto_if_no_item_space ITEM_TM044, 1, _03EF
	callstd std_give_item_verbose
	compare VAR_LOAN_SPEAROW, 2
	goto_if_ne _03F9
	setvar VAR_LOAN_SPEAROW, 3
	goto _040A

_03C6:
	compare VAR_LOAN_SPEAROW, 6
	goto_if_ne _0486
	kenya_check_party_or_mailbox VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0491
	npc_msg 0
	wait_button
	closemsg
	releaseall
	end

_03EF:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_03F9:
	setvar VAR_LOAN_SPEAROW, 5
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

_040A:
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

_0415:
	npc_msg 7
	setvar VAR_LOAN_SPEAROW, 2
	compare VAR_TEMP_x4000, VAR_TEMP_x4001
	goto_if_ne _0263
	scrcmd_606
	goto_if_no_item_space ITEM_TM044, 1, _03EF
	callstd std_give_item_verbose
	compare VAR_LOAN_SPEAROW, 2
	goto_if_ne _03F9
	setvar VAR_LOAN_SPEAROW, 3
	goto _040A

_046B:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _049D
	apply_movement obj_player, _0522
	goto _0362

_0486:
	npc_msg 0
	wait_button
	closemsg
	releaseall
	end

_0491:
	setvar VAR_LOAN_SPEAROW, 1
	goto _019F

_049D:
	apply_movement obj_player, _052A
	wait_movement
	buffer_players_name 0
	npc_msg 5
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	npc_msg 7
	setvar VAR_LOAN_SPEAROW, 2
	compare VAR_TEMP_x4000, VAR_TEMP_x4001
	goto_if_ne _0263
	scrcmd_606
	goto_if_no_item_space ITEM_TM044, 1, _03EF
	callstd std_give_item_verbose
	compare VAR_LOAN_SPEAROW, 2
	goto_if_ne _03F9
	setvar VAR_LOAN_SPEAROW, 3
	goto _040A

	.byte 0x00
	.balign 4
_050A:

	step 75, 1
	step_end
	.balign 4
_0512:

	step 32, 1
	step_end
	.balign 4
_051A:

	step 33, 1
	step_end
	.balign 4
_0522:

	step 34, 1
	step_end
	.balign 4
_052A:

	step 35, 1
	step_end
	.balign 4
