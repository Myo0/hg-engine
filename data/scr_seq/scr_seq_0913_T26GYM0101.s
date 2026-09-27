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

.include "data/scr_seq/include/event_T26GYM0101.inc"


// text archive to grab from: 606.txt

.data


scrdef scr_seq_T26GYM0101_000
scrdef scr_seq_T26GYM0101_001
scrdef scr_seq_T26GYM0101_002
scrdef scr_seq_T26GYM0101_003
scrdef scr_seq_T26GYM0101_004
scrdef scr_seq_T26GYM0101_005
scrdef scr_seq_T26GYM0101_006
scrdef scr_seq_T26GYM0101_007
scrdef_end

scr_seq_T26GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setflag FLAG_MEGA_EVOLUTION_ENABLED
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _025B
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_JASMINE_JASMINE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0284
	setflag FLAG_HIDE_ROUTE_42_HIKER
	setvar VAR_UNK_416F, 58
	setvar VAR_UNK_415D, 1
	setflag FLAG_UNK_A40
	setflag FLAG_MEGA_EVOLUTION_ENABLED
	npc_msg 1
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_MINERAL
	addvar VAR_MIDGAME_BADGES, 1
	add_special_game_stat 22
	compare VAR_MIDGAME_BADGES, 3
	goto_if_ne _028A
	setvar VAR_SCENE_ROCKET_TAKEOVER, 1
	npc_msg 25
	closemsg
	giveitem_no_check ITEM_MEGA_RING, 1
	npc_msg 26
	closemsg
	giveitem_no_check ITEM_STEELIXITE, 1
	npc_msg 27
	closemsg
	npc_msg 3
	goto_if_no_item_space ITEM_TM023, 1, _02C1
	callstd std_give_item_verbose
	npc_msg 5
	wait_button
	closemsg
	releaseall
	setflag FLAG_GOT_TM23_FROM_JASMINE
	end

scr_seq_T26GYM0101_001:
	scrcmd_609
	lockall
	apply_movement obj_T26GYM0101_assistantm, _070A
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 5
	goto_if_ne _02CB
	apply_movement obj_T26GYM0101_assistantm, _0712
	goto _02E6

scr_seq_T26GYM0101_002:
	scrcmd_609
	lockall
	apply_movement obj_T26GYM0101_workman, _070A
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 5
	goto_if_ne _030E
	apply_movement obj_T26GYM0101_workman, _071A
	goto _0329

scr_seq_T26GYM0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0351
	npc_msg 20
	goto _036F

scr_seq_T26GYM0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _038A
	npc_msg 22
	goto _03A8

scr_seq_T26GYM0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03C3
	compare VAR_UNK_410E, 0
	goto_if_ne _03CE
	npc_msg 16
	goto _03D9

scr_seq_T26GYM0101_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _03E1
	npc_msg 23
	goto _03EC

scr_seq_T26GYM0101_007:
	get_phone_book_rematch PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _03F4
	goto_if_unset FLAG_GAME_CLEAR, _03FA
	clearflag FLAG_HIDE_JASMINE_IN_GYM
	check_registered_phone_number PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _03FC
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 13
	goto_if_ne _0417
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _041D

_025B:
	goto_if_unset FLAG_GOT_TM23_FROM_JASMINE, _041F
	check_registered_phone_number PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0453
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

_0284:
	white_out
	releaseall
	end

_028A:
	npc_msg 3
	goto_if_no_item_space ITEM_TM023, 1, _02C1
	callstd std_give_item_verbose
	npc_msg 5
	wait_button
	closemsg
	releaseall
	setflag FLAG_GOT_TM23_FROM_JASMINE
	end

_02C1:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_02CB:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _047C
	apply_movement obj_T26GYM0101_assistantm, _0722
	goto _02E6

_02E6:
	apply_movement obj_player, _072A
	wait_movement
	npc_msg 19
	wait_button
	closemsg
	releaseall
	compare VAR_UNK_410E, 1
	goto_if_ne _04AC
	setvar VAR_UNK_410E, 2
	end

_030E:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _04AE
	apply_movement obj_T26GYM0101_workman, _0732
	goto _0329

_0329:
	apply_movement obj_player, _073A
	wait_movement
	npc_msg 21
	wait_button
	closemsg
	releaseall
	compare VAR_UNK_410E, 2
	goto_if_ne _04DE
	setvar VAR_UNK_410E, 3
	end

_0351:
	npc_msg 19
	wait_button
	closemsg
	releaseall
	compare VAR_UNK_410E, 1
	goto_if_ne _04E0
	setvar VAR_UNK_410E, 2
	end

_036F:
	wait_button
	closemsg
	releaseall
	compare VAR_UNK_410E, 1
	goto_if_ne _04E0
	setvar VAR_UNK_410E, 2
	end

_038A:
	npc_msg 21
	wait_button
	closemsg
	releaseall
	compare VAR_UNK_410E, 2
	goto_if_ne _04E2
	setvar VAR_UNK_410E, 3
	end

_03A8:
	wait_button
	closemsg
	releaseall
	compare VAR_UNK_410E, 2
	goto_if_ne _04E2
	setvar VAR_UNK_410E, 3
	end

_03C3:
	npc_msg 18
	wait_button
	closemsg
	releaseall
	end

_03CE:
	npc_msg 17
	wait_button
	closemsg
	releaseall
	end

_03D9:
	wait_button
	closemsg
	releaseall
	end

_03E1:
	npc_msg 24
	wait_button
	closemsg
	releaseall
	end

_03EC:
	wait_button
	closemsg
	releaseall
	end

_03F4:
	setflag FLAG_HIDE_JASMINE_IN_GYM
	end

_03FA:
	end

_03FC:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 12
	goto_if_ne _04E4
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _04EA

_0417:
	goto _04EC

_041D:
	end

_041F:
	goto_if_no_item_space ITEM_TM023, 1, _02C1
	callstd std_give_item_verbose
	npc_msg 5
	wait_button
	closemsg
	releaseall
	setflag FLAG_GOT_TM23_FROM_JASMINE
	end

_0453:
	goto_if_set FLAG_TRADE_JASMINE_STEELIX, _0518
	compare VAR_TEMP_x4000, 77
	goto_if_eq _052E
	setvar VAR_TEMP_x4000, 77
	npc_msg 7
	wait_button
	closemsg
	releaseall
	end

_047C:
	apply_movement obj_T26GYM0101_assistantm, _0742
	apply_movement obj_player, _072A
	wait_movement
	npc_msg 19
	wait_button
	closemsg
	releaseall
	compare VAR_UNK_410E, 1
	goto_if_ne _04AC
	setvar VAR_UNK_410E, 2
	end

_04AC:
	end

_04AE:
	apply_movement obj_T26GYM0101_workman, _074A
	apply_movement obj_player, _073A
	wait_movement
	npc_msg 21
	wait_button
	closemsg
	releaseall
	compare VAR_UNK_410E, 2
	goto_if_ne _04DE
	setvar VAR_UNK_410E, 3
	end

_04DE:
	end

_04E0:
	end

_04E2:
	end

_04E4:
	goto _04EC

_04EA:
	end

_04EC:
	check_registered_phone_number PHONE_CONTACT_ERIKA, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _03FA
	check_badge BADGE_EARTH, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _0615
	goto _03FA

_0518:
	compare VAR_TEMP_x4000, 55
	goto_if_ne _062C
	npc_msg 11
	goto _0637

_052E:
	npc_msg 8
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _063F
	npc_msg 9
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_566
	get_party_selection VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 255
	goto_if_eq _063F
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	get_partymon_species VAR_SPECIAL_x8004, VAR_TEMP_x4003
	get_partymon_forme VAR_SPECIAL_x8004, VAR_TEMP_x4004
	compare VAR_TEMP_x4003, 0
	goto_if_eq _064A
	compare VAR_TEMP_x4004, 0
	goto_if_eq _0658
	compare VAR_TEMP_x4003, 487
	goto_if_eq _0695
	compare VAR_TEMP_x4003, 492
	goto_if_eq _0695
	compare VAR_TEMP_x4003, 172
	goto_if_eq _0695
	compare VAR_TEMP_x4003, 479
	goto_if_eq _0695
	bufferpartymonnick 1, VAR_SPECIAL_x8004
	npc_msg 13
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _063F
	closemsg
	load_npc_trade 5
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	setflag FLAG_TRADE_JASMINE_STEELIX
	setvar VAR_TEMP_x4000, 55
	npc_msg 11
	wait_button
	closemsg
	releaseall
	end

_0615:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _06A0
	goto _06B3

_062C:
	npc_msg 12
	wait_button
	closemsg
	releaseall
	end

_0637:
	wait_button
	closemsg
	releaseall
	end

_063F:
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_064A:
	buffer_players_name 0
	npc_msg 14
	wait_button
	closemsg
	releaseall
	end

_0658:
	bufferpartymonnick 1, VAR_SPECIAL_x8004
	npc_msg 13
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _063F
	closemsg
	load_npc_trade 5
	npc_trade_exec VAR_SPECIAL_x8004
	npc_trade_end
	setflag FLAG_TRADE_JASMINE_STEELIX
	setvar VAR_TEMP_x4000, 55
	npc_msg 11
	wait_button
	closemsg
	releaseall
	end

_0695:
	npc_msg 15
	wait_button
	closemsg
	releaseall
	end

_06A0:
	compare VAR_TEMP_x4000, 0
	goto_if_ne _06CE
	goto _06B3

_06B3:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 14
	goto_if_ne _06D4
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _06EB

_06CE:
	goto _03FA

_06D4:
	compare VAR_TEMP_x4000, 15
	goto_if_ne _06ED
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _06EB

_06EB:
	end

_06ED:
	compare VAR_TEMP_x4000, 16
	goto_if_ne _0704
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _06EB

_0704:
	goto _03FA

	.balign 4
_070A:

	step 75, 1
	step_end
	.balign 4
_0712:

	step 15, 1
	step_end
	.balign 4
_071A:

	step 14, 3
	step_end
	.balign 4
_0722:

	step 15, 2
	step_end
	.balign 4
_072A:

	step 34, 1
	step_end
	.balign 4
_0732:

	step 14, 2
	step_end
	.balign 4
_073A:

	step 35, 1
	step_end
	.balign 4
_0742:

	step 15, 3
	step_end
	.balign 4
_074A:

	step 14, 1
	step_end
	.balign 4
