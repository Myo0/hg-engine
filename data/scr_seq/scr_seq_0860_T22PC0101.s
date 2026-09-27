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

.include "data/scr_seq/include/event_T22PC0101.inc"


// text archive to grab from: 559.txt

.data


scrdef scr_seq_T22PC0101_000
scrdef scr_seq_T22PC0101_001
scrdef scr_seq_T22PC0101_002
scrdef scr_seq_T22PC0101_003
scrdef scr_seq_T22PC0101_004
scrdef scr_seq_T22PC0101_005
scrdef scr_seq_T22PC0101_006
scrdef_end

scr_seq_T22PC0101_000:
	setvar VAR_SPECIAL_x8007, 3
	callstd std_nurse_joy
	end

scr_seq_T22PC0101_001:
	simple_npc_msg 9
	end

scr_seq_T22PC0101_002:
	simple_npc_msg 10
	end

scr_seq_T22PC0101_003:
	simple_npc_msg 11
	end

scr_seq_T22PC0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 12
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0147
	scrcmd_815 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	prompt_easy_chat VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0154
	npc_msg 13
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	closemsg
	scrcmd_815 0
	prompt_easy_chat VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002, VAR_SPECIAL_x8003
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0154
	primo_password_check_1 VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000, VAR_SPECIAL_x8001, VAR_SPECIAL_x8002, VAR_SPECIAL_x8003
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _015F
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01D9
	goto _01E4

scr_seq_T22PC0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_2C5, _01EF
	npc_msg 21
	goto _01FB

scr_seq_T22PC0101_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 83
	goto _03C6

_0147:
	touchscreen_menu_show
	npc_msg 15
	wait_button
	goto _0282

_0154:
	npc_msg 15
	wait_button
	goto _0282

_015F:
	primo_password_check_2 VAR_SPECIAL_RESULT, VAR_SPECIAL_x8000, VAR_SPECIAL_x8001, VAR_SPECIAL_x8002, VAR_SPECIAL_x8003
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _01D9
	compare VAR_SPECIAL_RESULT, 8
	goto_if_eq _0288
	compare VAR_SPECIAL_RESULT, 9
	goto_if_eq _02C2
	compare VAR_SPECIAL_RESULT, 10
	goto_if_eq _02FC
	goto_if_set FLAG_GOT_MAREEP_EGG_FROM_PRIMO, _01D9
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0336
	setflag FLAG_GOT_MAREEP_EGG_FROM_PRIMO
	npc_msg 18
	buffer_players_name 0
	buffer_species_name 1, SPECIES_MAREEP, 0, 0
	give_egg SPECIES_MAREEP, 14
	goto _0341

_01D9:
	npc_msg 14
	wait_button
	goto _0282

_01E4:
	npc_msg 16
	wait_button
	goto _0282

_01EF:
	buffer_player_union_avatar_class_name 0
	npc_msg 26
	goto _01FB

_01FB:
	npc_msg 22
	touchscreen_menu_hide
	buffer_union_room_avatar_choices
	menu_init_std_gmm 1, 1, 0, 1, VAR_SPECIAL_RESULT
	menu_item_add 53, 255, 0
	menu_item_add 54, 255, 1
	menu_item_add 55, 255, 2
	menu_item_add 56, 255, 3
	menu_item_add 44, 255, 4
	menu_exec
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	switch VAR_SPECIAL_RESULT
	case 4, _0362
	case -2, _0362
	union_room_avatar_idx_to_trainer_class VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	buffer_trainer_class_name_indef 0, VAR_SPECIAL_x8005
	capitalize 0
	npc_msg 23
	getmenuchoice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _036F
	goto _01FB

_0282:
	closemsg
	releaseall
	end

_0288:
	goto_if_set FLAG_GOT_MAREEP_EGG_FROM_PRIMO, _01D9
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0336
	setflag FLAG_GOT_MAREEP_EGG_FROM_PRIMO
	npc_msg 18
	buffer_players_name 0
	buffer_species_name 1, SPECIES_MAREEP, 0, 0
	give_egg SPECIES_MAREEP, 14
	goto _0341

_02C2:
	goto_if_set FLAG_GOT_WOOPER_EGG_FROM_PRIMO, _01D9
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0336
	setflag FLAG_GOT_WOOPER_EGG_FROM_PRIMO
	npc_msg 18
	buffer_players_name 0
	buffer_species_name 1, SPECIES_WOOPER, 0, 0
	give_egg SPECIES_WOOPER, 14
	goto _0341

_02FC:
	goto_if_set FLAG_GOT_SLUGMA_EGG_FROM_PRIMO, _01D9
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0336
	setflag FLAG_GOT_SLUGMA_EGG_FROM_PRIMO
	npc_msg 18
	buffer_players_name 0
	buffer_species_name 1, SPECIES_SLUGMA, 0, 0
	give_egg SPECIES_SLUGMA, 14
	goto _0341

_0336:
	npc_msg 20
	wait_button
	goto _0282

_0341:
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _038D
	apply_movement obj_T22PC0101_instructor, _0994
	goto _03A8

_0362:
	touchscreen_menu_show
	npc_msg 25
	wait_button
	closemsg
	releaseall
	end

_036F:
	touchscreen_menu_show
	buffer_trainer_class_name_indef 0, VAR_SPECIAL_x8005
	npc_msg 24
	setflag FLAG_UNK_2C5
	scrcmd_558 VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	scrcmd_289 VAR_SPECIAL_x8005
	goto _03BB

_038D:
	apply_movement obj_T22PC0101_instructor, _09A8
	wait_movement
	play_fanfare SEQ_ME_TAMAGO_GET
	npc_msg 19
	wait_fanfare
	wait_button
	goto _0282

_03A8:
	wait_movement
	play_fanfare SEQ_ME_TAMAGO_GET
	npc_msg 19
	wait_fanfare
	wait_button
	goto _0282

_03BB:
	npc_msg 25
	wait_button
	closemsg
	releaseall
	end

_03C6:
	setvar VAR_UNK_416C, 0
	scrcmd_065 19, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 27, 0
	scrcmd_066 38, 1
	scrcmd_066 40, 2
	scrcmd_066 42, 3
	scrcmd_067
	copyvar VAR_SPECIAL_x8009, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8009, 0
	goto_if_eq _0429
	compare VAR_SPECIAL_x8009, 1
	goto_if_eq _0549
	compare VAR_SPECIAL_x8009, 2
	goto_if_eq _07F7
	compare VAR_SPECIAL_x8009, 3
	goto_if_eq _08D7
	npc_msg 8
	closemsg
	releaseall
	end

_0429:
	npc_msg 74
	hasitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _052C
	scrcmd_065 19, 1, 0, 1, VAR_SPECIAL_RESULT
	scrcmd_066 29, 0
	scrcmd_066 30, 1
	scrcmd_066 31, 2
	scrcmd_066 32, 3
	scrcmd_066 33, 4
	scrcmd_066 34, 5
	scrcmd_066 35, 6
	scrcmd_067
	copyvar VAR_SPECIAL_x8009, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8009, 0
	goto_if_eq _04CE
	compare VAR_SPECIAL_x8009, 1
	goto_if_eq _04CE
	compare VAR_SPECIAL_x8009, 2
	goto_if_eq _04CE
	compare VAR_SPECIAL_x8009, 3
	goto_if_eq _04CE
	compare VAR_SPECIAL_x8009, 4
	goto_if_eq _04CE
	compare VAR_SPECIAL_x8009, 5
	goto_if_eq _04CE
	compare VAR_SPECIAL_x8009, 6
	goto_if_eq _0535
	goto _0535

_04CE:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8008
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	case 255, _0535
	get_partymon_species VAR_SPECIAL_x8008, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _053E
	scrcmd_208 1, 0
	npc_msg 36
	closemsg
	takeitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	buffer_players_name 3
	npc_msg 81
	closemsg
	releaseall
	end

_052C:
	npc_msg 75
	closemsg
	releaseall
	end

_0535:
	npc_msg 28
	closemsg
	releaseall
	end

_053E:
	npc_msg 37
	wait_button
	closemsg
	releaseall
	end

_0549:
	npc_msg 76
	hasitem ITEM_HEART_SCALE, 3, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _052C
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
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 1
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 2
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 3
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 4
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 5
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 6
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 7
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 8
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 9
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 10
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 11
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 12
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 13
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 14
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 15
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 16
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 17
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 18
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 19
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 20
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 21
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 22
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 23
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 24
	goto_if_eq _0799
	compare VAR_SPECIAL_x8009, 25
	goto_if_eq _0799
	goto _0535

_0799:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8008
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	case 255, _0535
	get_partymon_species VAR_SPECIAL_x8008, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _053E
	scrcmd_208 2, 0
	npc_msg 39
	closemsg
	takeitem ITEM_HEART_SCALE, 3, VAR_SPECIAL_RESULT
	buffer_players_name 3
	npc_msg 82
	closemsg
	releaseall
	end

_07F7:
	npc_msg 41
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
	goto_if_eq _0535
	get_partymon_species VAR_SPECIAL_x8002, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 0
	goto_if_eq _053E
	count_mon_moves VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08B5
	npc_msg 71
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
	goto_if_eq _0535
	buffer_party_mon_move_name 0, VAR_SPECIAL_x8002, VAR_SPECIAL_x8001
	npc_msg 72
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _08C0
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08B5
	end

_08B5:
	npc_msg 70
	closemsg
	goto _07F7

_08C0:
	mon_forget_move VAR_SPECIAL_x8002, VAR_SPECIAL_x8001
	play_fanfare SEQ_ME_WASURE
	wait_fanfare
	npc_msg 73
	wait_button
	closemsg
	releaseall
	end

_08D7:
	npc_msg 77
	hasitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _052C
	npc_msg 78
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	party_select_ui
	get_party_selection VAR_SPECIAL_x8005
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_x8005, 255
	goto_if_eq _0535
	get_partymon_species VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _053E
	scrcmd_466 VAR_SPECIAL_RESULT, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _098B
	npc_msg 80
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	move_relearner_init VAR_SPECIAL_x8005
	move_relearner_get_result VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _0535
	takeitem ITEM_HEART_SCALE, 1, VAR_SPECIAL_RESULT
	buffer_players_name 3
	npc_msg 81
	end

_098B:
	npc_msg 59
	closemsg
	releaseall
	end

	.balign 4
_0994:

	step 63, 1
	step 32, 1
	step 63, 2
	step 33, 1
	step_end
	.balign 4
_09A8:

	step 63, 1
	step 32, 1
	step 63, 2
	step 35, 1
	step_end
	.balign 4
