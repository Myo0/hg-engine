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


// text archive to grab from: 211.txt

.data


scrdef scr_seq_0146_000
scrdef scr_seq_0146_001
scrdef scr_seq_0146_002
scrdef scr_seq_0146_003
scrdef scr_seq_0146_004
scrdef scr_seq_0146_005
scrdef scr_seq_0146_006
scrdef scr_seq_0146_007
scrdef scr_seq_0146_008
scrdef scr_seq_0146_009
scrdef scr_seq_0146_010
scrdef scr_seq_0146_011
scrdef scr_seq_0146_012
scrdef scr_seq_0146_013
scrdef scr_seq_0146_014
scrdef scr_seq_0146_015
scrdef scr_seq_0146_016
scrdef scr_seq_0146_017
scrdef scr_seq_0146_018
scrdef_end

scr_seq_0146_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	hasitem ITEM_HM01, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0395
	check_badge BADGE_HIVE, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0395
	goto _03A2

scr_seq_0146_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	hasitem ITEM_HM06, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03B2
	check_badge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03B2
	setvar VAR_SPECIAL_RESULT, 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03BF
	closemsg
	goto _03CF

scr_seq_0146_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	strength_flag_action 2, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _03D3
	call _0401
	goto _03CF

scr_seq_0146_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	hasitem ITEM_HM08, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _040A
	call _0A0B
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _040A
	check_escort_mode VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0417
	npc_msg 20
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0424
	closemsg
	goto _042E

scr_seq_0146_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	check_escort_mode VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0432
	npc_msg 14
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _043F
	closemsg
	goto _042E

scr_seq_0146_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	hasitem ITEM_HM07, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03B2
	check_badge BADGE_RISING, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0458
	npc_msg 24
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0465
	closemsg
	goto _042E

scr_seq_0146_006:
	end

scr_seq_0146_007:
	scrcmd_609
	lockall
	get_follow_poke_party_index VAR_SPECIAL_x8004
	scrcmd_183 VAR_SPECIAL_x8000
	scrcmd_560 0, VAR_SPECIAL_x8005
	goto _047E

scr_seq_0146_008:
	scrcmd_609
	lockall
	get_follow_poke_party_index VAR_SPECIAL_x8004
	scrcmd_183 VAR_SPECIAL_x8000
	scrcmd_560 1, VAR_SPECIAL_x8005
	goto _049F

scr_seq_0146_009:
	scrcmd_609
	lockall
	strength_flag_action 2, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04CC
	call _0401
	goto _04FC

scr_seq_0146_010:
	scrcmd_609
	lockall
	rock_climb VAR_SPECIAL_x8000
	releaseall
	end

scr_seq_0146_011:
	scrcmd_609
	lockall
	release obj_player
	surf VAR_SPECIAL_x8000
	lock obj_player
	releaseall
	end

scr_seq_0146_012:
	scrcmd_609
	lockall
	release obj_player
	waterfall VAR_SPECIAL_x8000
	lock obj_player
	releaseall
	end

scr_seq_0146_013:
	scrcmd_609
	lockall
	bufferpartymonnick 0, VAR_SPECIAL_x8000
	npc_msg 28
	closemsg
	get_follow_poke_party_index VAR_SPECIAL_x8005
	get_player_state VAR_SPECIAL_RESULT
	scrcmd_730 VAR_SPECIAL_x8006
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0500
	scrcmd_183 VAR_SPECIAL_x8000
	goto _0517

scr_seq_0146_014:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_party_slot_with_move VAR_SPECIAL_RESULT, MOVE_HEADBUTT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _0528
	npc_msg 32
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0535
	closemsg
	goto _03CF

scr_seq_0146_015:
	play_se SEQ_SE_GS_IWAOTOSHI01
	wait 12, VAR_SPECIAL_RESULT
	play_se SEQ_SE_GS_IWAOTOSHI02
	screen_shake 0, 4, 2, 8
	screen_shake 0, 2, 1, 8
	wait_se SEQ_SE_GS_IWAOTOSHI02
	npc_msg 13
	wait_button
	closemsg
	end

scr_seq_0146_016:
	play_se SEQ_SE_DP_SELECT
	lockall
	hasitem ITEM_HM05, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0574
	check_badge BADGE_GLACIER, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0574
	npc_msg 29
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0581
	goto _042E

scr_seq_0146_017:
	scrcmd_609
	lockall
	release obj_player
	whirlpool VAR_SPECIAL_x8000
	lock obj_player
	releaseall
	end

scr_seq_0146_018:
	scrcmd_609
	lockall
	bufferpartymonnick 0, VAR_SPECIAL_x8000
	npc_msg 33
	closemsg
	get_follow_poke_party_index VAR_SPECIAL_x8004
	get_player_state VAR_SPECIAL_RESULT
	scrcmd_730 VAR_SPECIAL_x8006
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0593
	scrcmd_183 VAR_SPECIAL_x8000
	scrcmd_560 4, VAR_SPECIAL_x8005
	goto _05B0

_0395:
	npc_msg 2
	wait_button
	closemsg
	goto _03CF

_03A2:
	get_follow_poke_party_index VAR_SPECIAL_x8005
	scrcmd_560 0, VAR_SPECIAL_x8005
	goto _05D1

_03B2:
	npc_msg 4
	wait_button
	closemsg
	goto _03CF

_03BF:
	get_follow_poke_party_index VAR_SPECIAL_x8005
	scrcmd_560 1, VAR_SPECIAL_x8005
	goto _05F4

_03CF:
	releaseall
	end

_03D3:
	hasitem ITEM_HM04, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0621
	check_badge BADGE_PLAIN, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0621
	goto _062E

_0401:
	npc_msg 10
	wait_button
	closemsg
	return

_040A:
	npc_msg 22
	wait_button
	closemsg
	goto _042E

_0417:
	npc_msg 23
	wait_button
	closemsg
	goto _042E

_0424:
	rock_climb VAR_SPECIAL_x8004
	goto _042E

_042E:
	releaseall
	end

_0432:
	npc_msg 16
	wait_button
	closemsg
	goto _042E

_043F:
	hasitem ITEM_HM01, 1, VAR_SPECIAL_RESULT
	npc_msg 15
	closemsg
	scrcmd_600
	surf VAR_SPECIAL_x8004
	goto _042E

_0458:
	npc_msg 26
	wait_button
	closemsg
	goto _042E

_0465:
	hasitem ITEM_HM07, 1, VAR_SPECIAL_RESULT
	npc_msg 25
	closemsg
	scrcmd_600
	waterfall VAR_SPECIAL_x8004
	goto _042E

_047E:
	wait 7, VAR_SPECIAL_RESULT
	hide_person VAR_SPECIAL_LAST_TALKED
	wait 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, 0
	goto_if_eq _063B
	releaseall
	end

_049F:
	wait 10, VAR_SPECIAL_RESULT
	hide_person VAR_SPECIAL_LAST_TALKED
	wait 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, 0
	goto_if_eq _0652
	releaseall
	scrcmd_rock_smash_item_check VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT, VAR_SPECIAL_x8006
	goto _0675

_04CC:
	strength_flag_action 1, 0
	bufferpartymonnick 0, VAR_SPECIAL_x8000
	npc_msg 11
	closemsg
	get_follow_poke_party_index VAR_SPECIAL_x8004
	get_player_state VAR_SPECIAL_RESULT
	scrcmd_730 VAR_SPECIAL_x8006
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _06B6
	scrcmd_183 VAR_SPECIAL_x8000
	goto _06CD

_04FC:
	releaseall
	end

_0500:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _06DA
	scrcmd_183 VAR_SPECIAL_x8000
	goto _0517

_0517:
	flash_action 1, 0
	flash_effect
	wait 42, VAR_SPECIAL_RESULT
	goto _04FC

_0528:
	npc_msg 34
	wait_button
	closemsg
	goto _03CF

_0535:
	get_party_slot_with_move VAR_SPECIAL_RESULT, MOVE_HEADBUTT
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	get_follow_poke_party_index VAR_SPECIAL_x8005
	bufferpartymonnick 0, VAR_SPECIAL_RESULT
	npc_msg 33
	closemsg
	get_player_state VAR_SPECIAL_RESULT
	scrcmd_730 VAR_SPECIAL_x8006
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _06F1
	scrcmd_183 VAR_SPECIAL_x8004
	scrcmd_560 4, VAR_SPECIAL_x8005
	goto _070E

_0574:
	npc_msg 31
	wait_button
	closemsg
	goto _042E

_0581:
	buffer_players_name 0
	npc_msg 30
	closemsg
	whirlpool VAR_SPECIAL_x8004
	goto _042E

_0593:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _072F
	scrcmd_183 VAR_SPECIAL_x8000
	scrcmd_560 4, VAR_SPECIAL_x8005
	goto _05B0

_05B0:
	wait 7, VAR_SPECIAL_RESULT
	wait 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, 0
	goto_if_eq _074C
	releaseall
	try_headbutt_encounter VAR_SPECIAL_RESULT
	end

_05D1:
	wait 7, VAR_SPECIAL_RESULT
	hide_person VAR_SPECIAL_LAST_TALKED
	wait 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, 0
	goto_if_eq _0767
	goto _03CF

_05F4:
	wait 10, VAR_SPECIAL_RESULT
	hide_person VAR_SPECIAL_LAST_TALKED
	wait 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, 0
	goto_if_eq _0780
	releaseall
	scrcmd_rock_smash_item_check VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT, VAR_SPECIAL_x8006
	goto _0675

_0621:
	npc_msg 9
	wait_button
	closemsg
	goto _03CF

_062E:
	strength_flag_action 1, 0
	get_follow_poke_party_index VAR_SPECIAL_x8005
	goto _07A3

_063B:
	wait 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, 0
	goto_if_eq _063B
	releaseall
	end

_0652:
	wait 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, 0
	goto_if_eq _0652
	releaseall
	scrcmd_rock_smash_item_check VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT, VAR_SPECIAL_x8006
	goto _0675

_0675:
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _07B0
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_x8006
	setvar VAR_SPECIAL_x8005, 1
	buffer_item_name_indef 1, VAR_SPECIAL_x8004
	capitalize 1
	npc_msg 6
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _07B2
	callstd std_obtain_item_verbose
	closemsg
	end

_06B6:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _07BA
	scrcmd_183 VAR_SPECIAL_x8000
	goto _06CD

_06CD:
	npc_msg 12
	wait_button
	closemsg
	goto _04FC

_06DA:
	compare VAR_SPECIAL_x8000, VAR_SPECIAL_x8005
	goto_if_eq _07D1
	scrcmd_183 VAR_SPECIAL_x8000
	goto _0517

_06F1:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _07E8
	scrcmd_183 VAR_SPECIAL_x8004
	scrcmd_560 4, VAR_SPECIAL_x8005
	goto _070E

_070E:
	wait 7, VAR_SPECIAL_RESULT
	wait 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, 0
	goto_if_eq _0805
	releaseall
	try_headbutt_encounter VAR_SPECIAL_RESULT
	end

_072F:
	compare VAR_SPECIAL_x8000, VAR_SPECIAL_x8004
	goto_if_eq _0820
	scrcmd_183 VAR_SPECIAL_x8000
	scrcmd_560 4, VAR_SPECIAL_x8005
	goto _05B0

_074C:
	wait 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, 0
	goto_if_eq _074C
	releaseall
	try_headbutt_encounter VAR_SPECIAL_RESULT
	end

_0767:
	wait 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, 0
	goto_if_eq _0767
	goto _03CF

_0780:
	wait 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, 0
	goto_if_eq _0780
	releaseall
	scrcmd_rock_smash_item_check VAR_SPECIAL_x8007, VAR_SPECIAL_RESULT, VAR_SPECIAL_x8006
	goto _0675

_07A3:
	npc_msg 10
	wait_button
	closemsg
	goto _03CF

_07B0:
	end

_07B2:
	callstd std_bag_is_full
	closemsg
	end

_07BA:
	compare VAR_SPECIAL_x8000, VAR_SPECIAL_x8004
	goto_if_eq _083D
	scrcmd_183 VAR_SPECIAL_x8000
	goto _06CD

_07D1:
	compare VAR_SPECIAL_x8006, 1
	goto_if_ne _0854
	scrcmd_183 VAR_SPECIAL_x8000
	goto _0517

_07E8:
	compare VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	goto_if_eq _0885
	scrcmd_183 VAR_SPECIAL_x8004
	scrcmd_560 4, VAR_SPECIAL_x8005
	goto _070E

_0805:
	wait 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, 0
	goto_if_eq _0805
	releaseall
	try_headbutt_encounter VAR_SPECIAL_RESULT
	end

_0820:
	compare VAR_SPECIAL_x8006, 1
	goto_if_ne _08A2
	scrcmd_183 VAR_SPECIAL_x8004
	scrcmd_560 4, VAR_SPECIAL_x8005
	goto _05B0

_083D:
	compare VAR_SPECIAL_x8006, 1
	goto_if_ne _08DB
	scrcmd_183 VAR_SPECIAL_x8000
	goto _06CD

_0854:
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4000
	call _0902
	play_cry VAR_TEMP_x4000, 0
	wait_cry
	scrcmd_728 16, 2
	scrcmd_728 16, 2
	flash_action 1, 0
	flash_effect
	wait 42, VAR_SPECIAL_RESULT
	goto _04FC

_0885:
	compare VAR_SPECIAL_x8006, 1
	goto_if_ne _0920
	scrcmd_183 VAR_SPECIAL_x8004
	scrcmd_560 4, VAR_SPECIAL_x8005
	goto _070E

_08A2:
	scrcmd_829 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0959
	scrcmd_598 1
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4000
	call _0988
	play_cry VAR_TEMP_x4000, 0
	wait_cry
	scrcmd_560 5, VAR_SPECIAL_x8005
	goto _05B0

_08DB:
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4000
	call _09A9
	play_cry VAR_TEMP_x4000, 0
	wait_cry
	scrcmd_731
	npc_msg 12
	wait_button
	closemsg
	goto _04FC

_0902:
	scrcmd_733 14, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _09C7
	scrcmd_734 2
	scrcmd_732 1
	goto _09CC

_0920:
	scrcmd_829 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _09CE
	scrcmd_598 1
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4000
	call _0988
	play_cry VAR_TEMP_x4000, 0
	wait_cry
	scrcmd_560 5, VAR_SPECIAL_x8005
	goto _070E

_0959:
	scrcmd_600
	scrcmd_606
	scrcmd_183 VAR_SPECIAL_x8004
	scrcmd_560 4, VAR_SPECIAL_x8005
	wait 7, VAR_SPECIAL_RESULT
	wait 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, 0
	goto_if_eq _074C
	releaseall
	try_headbutt_encounter VAR_SPECIAL_RESULT
	end

_0988:
	scrcmd_732 20
	scrcmd_733 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _09FD
	scrcmd_734 2
	scrcmd_732 1
	goto _0A02

_09A9:
	scrcmd_733 0, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0A04
	scrcmd_734 2
	scrcmd_732 1
	goto _0A09

_09C7:
	scrcmd_734 1
	return

_09CC:
	return

_09CE:
	scrcmd_600
	scrcmd_606
	scrcmd_183 VAR_SPECIAL_x8004
	scrcmd_560 4, VAR_SPECIAL_x8005
	wait 7, VAR_SPECIAL_RESULT
	wait 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_x8005, 0
	goto_if_eq _0805
	releaseall
	try_headbutt_encounter VAR_SPECIAL_RESULT
	end

_09FD:
	scrcmd_734 1
	return

_0A02:
	return

_0A04:
	scrcmd_734 1
	return

_0A09:
	return

_0A0B:
	count_badges VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8007, 12
	goto_if_eq _0A58
	compare VAR_SPECIAL_x8007, 13
	goto_if_eq _0A58
	compare VAR_SPECIAL_x8007, 14
	goto_if_eq _0A58
	compare VAR_SPECIAL_x8007, 15
	goto_if_eq _0A58
	compare VAR_SPECIAL_x8007, 16
	goto_if_eq _0A58
	setvar VAR_SPECIAL_RESULT, 0
	return

_0A58:
	setvar VAR_SPECIAL_RESULT, 1
	return
	.balign 4
