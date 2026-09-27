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

.include "data/scr_seq/include/event_T27PC0101.inc"


// text archive to grab from: 615.txt

.data


scrdef scr_seq_T27PC0101_000
scrdef scr_seq_T27PC0101_001
scrdef scr_seq_T27PC0101_002
scrdef scr_seq_T27PC0101_003
scrdef scr_seq_T27PC0101_004
scrdef scr_seq_T27PC0101_005
scrdef_end

scr_seq_T27PC0101_000:
	setvar VAR_SPECIAL_x8007, 0
	callstd std_nurse_joy
	end

scr_seq_T27PC0101_001:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T27PC0101_masaki, _06A2
	apply_movement obj_player, _06BE
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	npc_msg 0
	npc_msg 1
	closemsg
	apply_movement obj_T27PC0101_masaki, _06CA
	apply_movement obj_player, _06DE
	wait_movement
	hide_person obj_T27PC0101_masaki
	setflag FLAG_UNK_1C5
	clearflag FLAG_HIDE_GOLDENROD_BILL
	setflag FLAG_SYS_MET_BILL
	setvar VAR_UNK_410D, 1
	releaseall
	end

scr_seq_T27PC0101_002:
	simple_npc_msg 2
	end

scr_seq_T27PC0101_003:
	simple_npc_msg 3
	end

scr_seq_T27PC0101_004:
	simple_npc_msg 4
	end

scr_seq_T27PC0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	goto _00D1

_00D1:
	setvar VAR_UNK_416C, 0
	scrcmd_065 19, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 63, 0
	scrcmd_066 16, 1
	scrcmd_066 20, 2
	scrcmd_066 22, 3
	scrcmd_067
	copyvar VAR_SPECIAL_x8009, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8009, 0
	goto_if_eq _0134
	compare VAR_SPECIAL_x8009, 1
	goto_if_eq _024D
	compare VAR_SPECIAL_x8009, 2
	goto_if_eq _04FB
	compare VAR_SPECIAL_x8009, 3
	goto_if_eq _05DB
	npc_msg 6
	closemsg
	releaseall
	end

_0134:
	npc_msg 54
	closemsg
	hasitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _068F
	scrcmd_065 19, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 7, 0
	scrcmd_066 8, 1
	scrcmd_066 9, 2
	scrcmd_066 10, 3
	scrcmd_066 11, 4
	scrcmd_066 12, 5
	scrcmd_066 13, 6
	scrcmd_067
	copyvar VAR_SPECIAL_x8009, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8009, 0
	goto_if_eq _01DB
	compare VAR_SPECIAL_x8009, 1
	goto_if_eq _01DB
	compare VAR_SPECIAL_x8009, 2
	goto_if_eq _01DB
	compare VAR_SPECIAL_x8009, 3
	goto_if_eq _01DB
	compare VAR_SPECIAL_x8009, 4
	goto_if_eq _01DB
	compare VAR_SPECIAL_x8009, 5
	goto_if_eq _01DB
	compare VAR_SPECIAL_x8009, 6
	goto_if_eq _0239
	goto _0239

_01DB:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8008
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	case 255, _0239
	get_partymon_species VAR_SPECIAL_x8008, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _0242
	scrcmd_208 1, 0
	npc_msg 14
	closemsg
	takeitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	buffer_players_name 3
	npc_msg 61
	closemsg
	releaseall
	end

_0239:
	npc_msg 6
	closemsg
	releaseall
	end

_0242:
	npc_msg 15
	wait_button
	closemsg
	releaseall
	end

_024D:
	npc_msg 56
	hasitem ITEM_HEART_SCALE, 3, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _068F
	scrcmd_068 10, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_070 224, 20, 0
	scrcmd_070 225, 20, 1
	scrcmd_070 226, 20, 2
	scrcmd_070 227, 20, 3
	scrcmd_070 228, 20, 4
	scrcmd_070 229, 20, 5
	scrcmd_070 230, 20, 6
	scrcmd_070 231, 20, 7
	scrcmd_070 232, 20, 8
	scrcmd_070 233, 20, 9
	scrcmd_070 234, 20, 10
	scrcmd_070 235, 20, 11
	scrcmd_070 236, 20, 12
	scrcmd_070 237, 20, 13
	scrcmd_070 238, 20, 14
	scrcmd_070 239, 20, 15
	scrcmd_070 240, 20, 16
	scrcmd_070 241, 20, 17
	scrcmd_070 242, 20, 18
	scrcmd_070 243, 20, 19
	scrcmd_070 244, 20, 20
	scrcmd_070 245, 20, 21
	scrcmd_070 246, 20, 22
	scrcmd_070 247, 20, 23
	scrcmd_070 248, 20, 24
	scrcmd_070 249, 20, 25
	scrcmd_071
	copyvar VAR_SPECIAL_x8009, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8009, 0
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 1
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 2
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 3
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 4
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 5
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 6
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 7
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 8
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 9
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 10
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 11
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 12
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 13
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 14
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 15
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 16
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 17
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 18
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 19
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 20
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 21
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 22
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 23
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 24
	goto_if_eq _049D
	compare VAR_SPECIAL_x8009, 25
	goto_if_eq _0239
	goto _0239

_049D:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8008
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	case 255, _0239
	get_partymon_species VAR_SPECIAL_x8008, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _0242
	scrcmd_208 2, 0
	npc_msg 17
	closemsg
	takeitem ITEM_HEART_SCALE, 3, VAR_SPECIAL_RESULT
	buffer_players_name 3
	npc_msg 62
	closemsg
	releaseall
	end

_04FB:
	npc_msg 21
	wait_button
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8002
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8002, 255
	goto_if_eq _0239
	get_partymon_species VAR_SPECIAL_x8002, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _0242
	count_mon_moves VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _05B9
	npc_msg 51
	wait_button
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_394 VAR_SPECIAL_x8002
	scrcmd_395 VAR_SPECIAL_x8001
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8001, 255
	goto_if_eq _0239
	buffer_party_mon_move_name 0, VAR_SPECIAL_x8002, VAR_SPECIAL_x8001
	npc_msg 52
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _05C4
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _05B9
	end

_05B9:
	npc_msg 50
	closemsg
	goto _04FB

_05C4:
	mon_forget_move VAR_SPECIAL_x8002, VAR_SPECIAL_x8001
	play_fanfare SEQ_ME_WASURE
	wait_fanfare
	npc_msg 53
	wait_button
	closemsg
	releaseall
	end

_05DB:
	npc_msg 57
	hasitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _068F
	npc_msg 58
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8005
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8005, 255
	goto_if_eq _0239
	get_partymon_species VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0242
	scrcmd_466 VAR_SPECIAL_RESULT, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0698
	npc_msg 60
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	move_relearner_init VAR_SPECIAL_x8005
	move_relearner_get_result VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _0239
	takeitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	buffer_players_name 3
	npc_msg 61
	end

_068F:
	npc_msg 55
	closemsg
	releaseall
	end

_0698:
	npc_msg 59
	closemsg
	releaseall
	end

	.byte 0x00
	.balign 4
_06A2:

	step 13, 4
	step 15, 6
	step 12, 2
	step 62, 12
	step 1, 1
	step 62, 4
	step_end
	.balign 4
_06BE:

	step 62, 20
	step 12, 4
	step_end
	.balign 4
_06CA:

	step 15, 1
	step 13, 4
	step 14, 1
	step 13, 2
	step_end
	.balign 4
_06DE:

	step 62, 6
	step 1, 1
	step_end
	.balign 4
