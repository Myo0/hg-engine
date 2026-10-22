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
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0250
	party_count_not_egg VAR_SPECIAL_LAST_TALKED
	party_count_mons_at_or_below_level VAR_SPECIAL_RESULT, 49
	compare VAR_SPECIAL_RESULT, VAR_SPECIAL_LAST_TALKED
	goto_if_lt _0279
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_JASMINE_JASMINE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0282
	setflag FLAG_HIDE_ROUTE_42_HIKER
	setvar VAR_UNK_416F, 58
	setvar VAR_UNK_415D, 1
	setflag FLAG_UNK_A40
	npc_msg 1
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	give_badge BADGE_MINERAL
	addvar VAR_MIDGAME_BADGES, 1
	add_special_game_stat 22
	compare VAR_MIDGAME_BADGES, 3
	goto_if_ne _0288
	setvar VAR_SCENE_ROCKET_TAKEOVER, 1
	giveitem_no_check ITEM_STEELIXITE, 1
	npc_msg 27
	closemsg
	npc_msg 3
	goto_if_no_item_space ITEM_TM023, 1, _02BF
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
	apply_movement obj_T26GYM0101_assistantm, _0708
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 5
	goto_if_ne _02C9
	apply_movement obj_T26GYM0101_assistantm, _0710
	goto _02E4

scr_seq_T26GYM0101_002:
	scrcmd_609
	lockall
	apply_movement obj_T26GYM0101_workman, _0708
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 5
	goto_if_ne _030C
	apply_movement obj_T26GYM0101_workman, _0718
	goto _0327

scr_seq_T26GYM0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _034F
	npc_msg 20
	goto _036D

scr_seq_T26GYM0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0388
	npc_msg 22
	goto _03A6

scr_seq_T26GYM0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03C1
	compare VAR_UNK_410E, 0
	goto_if_ne _03CC
	npc_msg 16
	goto _03D7

scr_seq_T26GYM0101_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_MINERAL, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _03DF
	npc_msg 23
	goto _03EA

scr_seq_T26GYM0101_007:
	get_phone_book_rematch PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _03F2
	goto_if_unset FLAG_GAME_CLEAR, _03F8
	clearflag FLAG_HIDE_JASMINE_IN_GYM
	check_registered_phone_number PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _03FA
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 13
	goto_if_ne _0415
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _041B

_0250:
	goto_if_unset FLAG_GOT_TM23_FROM_JASMINE, _041D
	check_registered_phone_number PHONE_CONTACT_JASMINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0451
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

_0279:
	npc_msg 28
	closemsg
	releaseall
	end

_0282:
	white_out
	releaseall
	end

_0288:
	npc_msg 3
	goto_if_no_item_space ITEM_TM023, 1, _02BF
	callstd std_give_item_verbose
	npc_msg 5
	wait_button
	closemsg
	releaseall
	setflag FLAG_GOT_TM23_FROM_JASMINE
	end

_02BF:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_02C9:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _047A
	apply_movement obj_T26GYM0101_assistantm, _0720
	goto _02E4

_02E4:
	apply_movement obj_player, _0728
	wait_movement
	npc_msg 19
	wait_button
	closemsg
	releaseall
	compare VAR_UNK_410E, 1
	goto_if_ne _04AA
	setvar VAR_UNK_410E, 2
	end

_030C:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _04AC
	apply_movement obj_T26GYM0101_workman, _0730
	goto _0327

_0327:
	apply_movement obj_player, _0738
	wait_movement
	npc_msg 21
	wait_button
	closemsg
	releaseall
	compare VAR_UNK_410E, 2
	goto_if_ne _04DC
	setvar VAR_UNK_410E, 3
	end

_034F:
	npc_msg 19
	wait_button
	closemsg
	releaseall
	compare VAR_UNK_410E, 1
	goto_if_ne _04DE
	setvar VAR_UNK_410E, 2
	end

_036D:
	wait_button
	closemsg
	releaseall
	compare VAR_UNK_410E, 1
	goto_if_ne _04DE
	setvar VAR_UNK_410E, 2
	end

_0388:
	npc_msg 21
	wait_button
	closemsg
	releaseall
	compare VAR_UNK_410E, 2
	goto_if_ne _04E0
	setvar VAR_UNK_410E, 3
	end

_03A6:
	wait_button
	closemsg
	releaseall
	compare VAR_UNK_410E, 2
	goto_if_ne _04E0
	setvar VAR_UNK_410E, 3
	end

_03C1:
	npc_msg 18
	wait_button
	closemsg
	releaseall
	end

_03CC:
	npc_msg 17
	wait_button
	closemsg
	releaseall
	end

_03D7:
	wait_button
	closemsg
	releaseall
	end

_03DF:
	npc_msg 24
	wait_button
	closemsg
	releaseall
	end

_03EA:
	wait_button
	closemsg
	releaseall
	end

_03F2:
	setflag FLAG_HIDE_JASMINE_IN_GYM
	end

_03F8:
	end

_03FA:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 12
	goto_if_ne _04E2
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _04E8

_0415:
	goto _04EA

_041B:
	end

_041D:
	goto_if_no_item_space ITEM_TM023, 1, _02BF
	callstd std_give_item_verbose
	npc_msg 5
	wait_button
	closemsg
	releaseall
	setflag FLAG_GOT_TM23_FROM_JASMINE
	end

_0451:
	goto_if_set FLAG_TRADE_JASMINE_STEELIX, _0516
	compare VAR_TEMP_x4000, 77
	goto_if_eq _052C
	setvar VAR_TEMP_x4000, 77
	npc_msg 7
	wait_button
	closemsg
	releaseall
	end

_047A:
	apply_movement obj_T26GYM0101_assistantm, _0740
	apply_movement obj_player, _0728
	wait_movement
	npc_msg 19
	wait_button
	closemsg
	releaseall
	compare VAR_UNK_410E, 1
	goto_if_ne _04AA
	setvar VAR_UNK_410E, 2
	end

_04AA:
	end

_04AC:
	apply_movement obj_T26GYM0101_workman, _0748
	apply_movement obj_player, _0738
	wait_movement
	npc_msg 21
	wait_button
	closemsg
	releaseall
	compare VAR_UNK_410E, 2
	goto_if_ne _04DC
	setvar VAR_UNK_410E, 3
	end

_04DC:
	end

_04DE:
	end

_04E0:
	end

_04E2:
	goto _04EA

_04E8:
	end

_04EA:
	check_registered_phone_number PHONE_CONTACT_ERIKA, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _03F8
	check_badge BADGE_EARTH, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _0613
	goto _03F8

_0516:
	compare VAR_TEMP_x4000, 55
	goto_if_ne _062A
	npc_msg 11
	goto _0635

_052C:
	npc_msg 8
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _063D
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
	goto_if_eq _063D
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	get_partymon_species VAR_SPECIAL_x8004, VAR_TEMP_x4003
	get_partymon_forme VAR_SPECIAL_x8004, VAR_TEMP_x4004
	compare VAR_TEMP_x4003, 0
	goto_if_eq _0648
	compare VAR_TEMP_x4004, 0
	goto_if_eq _0656
	compare VAR_TEMP_x4003, 487
	goto_if_eq _0693
	compare VAR_TEMP_x4003, 492
	goto_if_eq _0693
	compare VAR_TEMP_x4003, 172
	goto_if_eq _0693
	compare VAR_TEMP_x4003, 479
	goto_if_eq _0693
	bufferpartymonnick 1, VAR_SPECIAL_x8004
	npc_msg 13
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _063D
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

_0613:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _069E
	goto _06B1

_062A:
	npc_msg 12
	wait_button
	closemsg
	releaseall
	end

_0635:
	wait_button
	closemsg
	releaseall
	end

_063D:
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_0648:
	buffer_players_name 0
	npc_msg 14
	wait_button
	closemsg
	releaseall
	end

_0656:
	bufferpartymonnick 1, VAR_SPECIAL_x8004
	npc_msg 13
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _063D
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

_0693:
	npc_msg 15
	wait_button
	closemsg
	releaseall
	end

_069E:
	compare VAR_TEMP_x4000, 0
	goto_if_ne _06CC
	goto _06B1

_06B1:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 14
	goto_if_ne _06D2
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _06E9

_06CC:
	goto _03F8

_06D2:
	compare VAR_TEMP_x4000, 15
	goto_if_ne _06EB
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _06E9

_06E9:
	end

_06EB:
	compare VAR_TEMP_x4000, 16
	goto_if_ne _0702
	setflag FLAG_HIDE_JASMINE_IN_GYM
	goto _06E9

_0702:
	goto _03F8

	.balign 4
_0708:

	step 75, 1
	step_end
	.balign 4
_0710:

	step 15, 1
	step_end
	.balign 4
_0718:

	step 14, 3
	step_end
	.balign 4
_0720:

	step 15, 2
	step_end
	.balign 4
_0728:

	step 34, 1
	step_end
	.balign 4
_0730:

	step 14, 2
	step_end
	.balign 4
_0738:

	step 35, 1
	step_end
	.balign 4
_0740:

	step 15, 3
	step_end
	.balign 4
_0748:

	step 14, 1
	step_end
	.balign 4
