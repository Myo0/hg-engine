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

.include "data/scr_seq/include/event_T20R0201.inc"


// text archive to grab from: 545.txt

.data


scrdef scr_seq_T20R0201_000
scrdef scr_seq_T20R0201_001
scrdef scr_seq_T20R0201_002
scrdef scr_seq_T20R0201_003
scrdef scr_seq_T20R0201_004
scrdef scr_seq_T20R0201_005
scrdef scr_seq_T20R0201_006
scrdef_end

scr_seq_T20R0201_000:
	scrcmd_609
	lockall
	apply_movement obj_player, _04AC
	apply_movement obj_T20R0201_gsmama, _04B8
	wait_movement
	callstd std_play_mom_music
	wait 30, VAR_SPECIAL_RESULT
	apply_movement obj_T20R0201_gsmama, _04C0
	wait_movement
	buffer_players_name 0
	gender_msgbox 0, 1
	setflag FLAG_GOT_BAG
	play_fanfare SEQ_SE_PL_KIRAKIRA
	wait_fanfare
	npc_msg 2
	setflag FLAG_GOT_TRAINER_CARD
	play_fanfare SEQ_SE_PL_KIRAKIRA
	wait_fanfare
	npc_msg 3
	setflag FLAG_GOT_SAVE_BUTTON
	play_fanfare SEQ_SE_PL_KIRAKIRA
	wait_fanfare
	npc_msg 4
	setflag FLAG_GOT_OPTIONS_BUTTON
	play_fanfare SEQ_SE_PL_KIRAKIRA
	wait_fanfare
	npc_msg 5
	closemsg
	wait 15, VAR_SPECIAL_RESULT
	apply_movement obj_T20R0201_gsmama, _04D0
	wait_movement
	callstd std_fade_end_mom_music
	setvar VAR_SCENE_PLAYERS_HOUSE_1F, 1
	releaseall
	end

scr_seq_T20R0201_001:
	goto_if_set FLAG_GAME_CLEAR, _0167
	compare VAR_SCENE_ELMS_LAB, 4
	goto_if_ge _0182
	goto_if_set FLAG_GOT_STARTER, _01B1
	simple_npc_msg 6
	end

scr_seq_T20R0201_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 35
	wait_button
	closemsg
	releaseall
	end

scr_seq_T20R0201_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 36
	wait_button
	closemsg
	releaseall
	end

scr_seq_T20R0201_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 37
	wait_button
	closemsg
	releaseall
	end

scr_seq_T20R0201_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 38
	wait_button
	closemsg
	releaseall
	end

scr_seq_T20R0201_006:
	scrcmd_609
	lockall
	apply_movement obj_player, _04AC
	apply_movement obj_T20R0201_gsmama, _04B8
	wait_movement
	callstd std_play_mom_music
	wait 30, VAR_SPECIAL_RESULT
	apply_movement obj_T20R0201_gsmama, _04C0
	wait_movement
	buffer_players_name 0
	npc_msg 33
	closemsg
	apply_movement obj_T20R0201_gsmama, _04D0
	wait_movement
	callstd std_fade_end_mom_music
	setvar VAR_SCENE_PLAYERS_HOUSE_1F, 4
	releaseall
	end

_0167:
	hasitem ITEM_SS_TICKET, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01FE
	goto _0182

_0182:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_TALKED_TO_MOM_AFTER_NAMING_RIVAL, _0211
	check_badge BADGE_ZEPHYR, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _0279
	npc_msg 15
	goto _02A7

_01B1:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_POKEGEAR, _02CF
	buffer_players_name 0
	npc_msg 7
	buffer_players_name 0
	npc_msg 8
	setflag FLAG_GOT_POKEGEAR
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	npc_msg 9
	npc_msg 10
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _02DA
	npc_msg 11
	goto _02FB

_01FE:
	simple_npc_msg 34
	end

_0211:
	npc_msg 20
	scrcmd_795 1, 1
	touchscreen_menu_hide
	menu_init 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 29, 255, 0
	menu_item_add 30, 255, 1
	menu_item_add 31, 255, 2
	menu_item_add 32, 255, 3
	menu_exec
	switch VAR_SPECIAL_RESULT
	case 0, _0326
	case 1, _037C
	case 2, _03D0
	goto _03F6

_0279:
	buffer_players_name 0
	npc_msg 16
	setflag FLAG_TALKED_TO_MOM_AFTER_NAMING_RIVAL
	setvar VAR_SCENE_ROUTE_30_PHONE_CALL, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0405
	npc_msg 17
	goto _0414

_02A7:
	setflag FLAG_TALKED_TO_MOM_AFTER_NAMING_RIVAL
	setvar VAR_SCENE_ROUTE_30_PHONE_CALL, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0405
	npc_msg 17
	goto _0414

_02CF:
	npc_msg 14
	wait_button
	closemsg
	releaseall
	end

_02DA:
	npc_msg 12
	npc_msg 13
	wait_button_or_dpad
	closemsg
	npc_msg 39
	giveitem_no_check ITEM_PRIMARIUM_Z_HELD, 1
	releaseall
	end

_02FB:
	npc_msg 13
	wait_button_or_dpad
	closemsg
	npc_msg 39
	giveitem_no_check ITEM_SEED_OF_MASTERY_PLZA, 1
	closemsg
	setvar VAR_UNK_416F, 13
	npc_msg 40
	closemsg
	releaseall
	end

_0326:
	bank_or_wallet_is_full 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _041C
	check_bank_balance VAR_SPECIAL_RESULT, 1
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _042B
	bank_transaction 1, VAR_SPECIAL_RESULT
	scrcmd_796
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _043A
	case 1, _0454
	releaseall
	end

_037C:
	bank_or_wallet_is_full 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _045F
	hasenoughmoneyvar VAR_SPECIAL_RESULT, 1
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _046E
	bank_transaction 0, VAR_SPECIAL_RESULT
	scrcmd_796
	touchscreen_menu_show
	switch VAR_SPECIAL_RESULT
	case 0, _047D
	case 1, _0454
	releaseall
	end

_03D0:
	npc_msg 25
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	scrcmd_796
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0494
	buffer_players_name 0
	npc_msg 17
	goto _04A3

_03F6:
	scrcmd_796
	touchscreen_menu_show
	npc_msg 21
	wait_button
	closemsg
	releaseall
	end

_0405:
	npc_msg 18
	clearflag FLAG_SYS_MOMS_SAVINGS
	wait_button
	closemsg
	releaseall
	end

_0414:
	wait_button
	closemsg
	releaseall
	end

_041C:
	touchscreen_menu_show
	scrcmd_796
	npc_msg 28
	wait_button
	closemsg
	releaseall
	end

_042B:
	touchscreen_menu_show
	scrcmd_796
	npc_msg 22
	wait_button
	closemsg
	releaseall
	end

_043A:
	closemsg
	wait 8, VAR_SPECIAL_RESULT
	play_se SEQ_SE_GS_OKOZUKAI
	buffer_players_name 0
	npc_msg 24
	wait_button
	closemsg
	releaseall
	end

_0454:
	npc_msg 21
	wait_button
	closemsg
	releaseall
	end

_045F:
	touchscreen_menu_show
	scrcmd_796
	npc_msg 27
	wait_button
	closemsg
	releaseall
	end

_046E:
	touchscreen_menu_show
	scrcmd_796
	npc_msg 26
	wait_button
	closemsg
	releaseall
	end

_047D:
	closemsg
	wait 8, VAR_SPECIAL_RESULT
	play_se SEQ_SE_GS_OKOZUKAI
	npc_msg 23
	wait_button
	closemsg
	releaseall
	end

_0494:
	npc_msg 18
	clearflag FLAG_SYS_MOMS_SAVINGS
	wait_button
	closemsg
	releaseall
	end

_04A3:
	wait_button
	closemsg
	releaseall
	end

	.byte 0x00
	.balign 4
_04AC:

	step 62, 1
	step 33, 1
	step_end
	.balign 4
_04B8:

	step 32, 1
	step_end
	.balign 4
_04C0:

	step 12, 2
	step 14, 3
	step 12, 1
	step_end
	.balign 4
_04D0:

	step 33, 1
	step 13, 3
	step 15, 3
	step 32, 1
	step_end
	.balign 4
