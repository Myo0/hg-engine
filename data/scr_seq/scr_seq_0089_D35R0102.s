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

.include "data/scr_seq/include/event_D35R0102.inc"


// text archive to grab from: 112.txt

.data


scrdef scr_seq_D35R0102_000
scrdef scr_seq_D35R0102_001
scrdef scr_seq_D35R0102_002
scrdef scr_seq_D35R0102_003
scrdef scr_seq_D35R0102_004
scrdef scr_seq_D35R0102_005
scrdef scr_seq_D35R0102_006
scrdef scr_seq_D35R0102_007
scrdef scr_seq_D35R0102_008
scrdef scr_seq_D35R0102_009
scrdef scr_seq_D35R0102_010
scrdef scr_seq_D35R0102_011
scrdef scr_seq_D35R0102_012
scrdef scr_seq_D35R0102_013
scrdef scr_seq_D35R0102_014
scrdef scr_seq_D35R0102_015
scrdef scr_seq_D35R0102_016
scrdef scr_seq_D35R0102_017
scrdef scr_seq_D35R0102_018
scrdef scr_seq_D35R0102_019
scrdef scr_seq_D35R0102_020
scrdef scr_seq_D35R0102_021
scrdef scr_seq_D35R0102_022
scrdef scr_seq_D35R0102_023
scrdef scr_seq_D35R0102_024
scrdef scr_seq_D35R0102_025
scrdef scr_seq_D35R0102_026
scrdef scr_seq_D35R0102_027
scrdef scr_seq_D35R0102_028
scrdef scr_seq_D35R0102_029
scrdef scr_seq_D35R0102_030
scrdef scr_seq_D35R0102_031
scrdef scr_seq_D35R0102_032
scrdef scr_seq_D35R0102_033
scrdef_end

scr_seq_D35R0102_000:
	scrcmd_609
	lockall
	apply_movement obj_player, _15D8
	wait_movement
	apply_movement obj_D35R0102_aji_peru, _1604
	wait_movement
	play_se SEQ_SE_GS_AJITO_SIREN
	scrcmd_709
	stop_se SEQ_SE_GS_AJITO_SIREN
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 4
	goto_if_ne _06C3
	addvar VAR_TEMP_x4001, 1
	goto _06CF

scr_seq_D35R0102_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	compare VAR_UNK_40AD, 0
	goto_if_ne _076B
	npc_msg 2
	goto _0781

scr_seq_D35R0102_002:
	end

scr_seq_D35R0102_003:
	end

scr_seq_D35R0102_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_40AC, 9
	goto_if_ge _0789
	goto_if_set FLAG_UNK_0D6, _0794
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _085A
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08FB
	play_se SEQ_SE_DP_DENSI01
	npc_msg 7
	closemsg
	setflag FLAG_UNK_0D6
	compare VAR_UNK_40AD, 2
	goto_if_ge _0901
	setvar VAR_UNK_40AD, 1
	apply_movement obj_D35R0102_aji_peru, _1610
	compare VAR_UNK_40AE, 2
	goto_if_ge _097A
	setvar VAR_UNK_40AE, 1
	apply_movement obj_D35R0102_aji_peru_2, _1610
	compare VAR_UNK_40AF, 2
	goto_if_ge _09D8
	setvar VAR_UNK_40AF, 1
	apply_movement obj_D35R0102_aji_peru_3, _1610
	compare VAR_UNK_40B0, 2
	goto_if_ge _0A1B
	setvar VAR_UNK_40B0, 1
	apply_movement obj_D35R0102_aji_peru_4, _1610
	compare VAR_UNK_40B1, 2
	goto_if_ge _0A43
	setvar VAR_UNK_40B1, 1
	apply_movement obj_D35R0102_aji_peru_5, _1610
	wait_movement
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

scr_seq_D35R0102_005:
	scrcmd_609
	lockall
	apply_movement obj_player, _15D8
	wait_movement
	apply_movement obj_D35R0102_aji_peru_2, _1604
	wait_movement
	play_se SEQ_SE_GS_AJITO_SIREN
	scrcmd_709
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 4
	goto_if_ne _0A4E
	addvar VAR_TEMP_x4001, 1
	goto _0A5A

scr_seq_D35R0102_006:
	scrcmd_609
	lockall
	apply_movement obj_player, _15D8
	wait_movement
	apply_movement obj_D35R0102_aji_peru_3, _1604
	wait_movement
	play_se SEQ_SE_GS_AJITO_SIREN
	scrcmd_709
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 11
	goto_if_ne _0B00
	addvar VAR_TEMP_x4001, 1
	goto _0B0C

scr_seq_D35R0102_007:
	scrcmd_609
	lockall
	apply_movement obj_player, _15D8
	wait_movement
	apply_movement obj_D35R0102_aji_peru_4, _1604
	wait_movement
	play_se SEQ_SE_GS_AJITO_SIREN
	scrcmd_709
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 29
	goto_if_ne _0BB2
	addvar VAR_TEMP_x4001, 1
	goto _0BBE

scr_seq_D35R0102_008:
	scrcmd_609
	lockall
	apply_movement obj_player, _15D8
	wait_movement
	apply_movement obj_D35R0102_aji_peru_5, _1604
	wait_movement
	play_se SEQ_SE_GS_AJITO_SIREN
	scrcmd_709
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 29
	goto_if_ne _0C64
	addvar VAR_TEMP_x4001, 1
	goto _0C70

scr_seq_D35R0102_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	compare VAR_UNK_40AE, 0
	goto_if_ne _0D16
	npc_msg 2
	goto _0781

scr_seq_D35R0102_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	compare VAR_UNK_40AF, 0
	goto_if_ne _0D2C
	npc_msg 2
	goto _0781

scr_seq_D35R0102_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	compare VAR_UNK_40B0, 0
	goto_if_ne _0D42
	npc_msg 2
	goto _0781

scr_seq_D35R0102_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	compare VAR_UNK_40B1, 0
	goto_if_ne _0D58
	npc_msg 2
	goto _0781

scr_seq_D35R0102_013:
	scrcmd_609
	lockall
	scrcmd_708 1
	play_se SEQ_SE_GS_DOKU_TRAP
	rocket_trap_battle SPECIES_WEEZING, 50
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6E
	setvar VAR_ROCKET_TRAP_KOFFING_1, 1
	releaseall
	end

scr_seq_D35R0102_014:
	scrcmd_609
	lockall
	scrcmd_708 0
	play_se SEQ_SE_GS_DENKI_TRAP
	rocket_trap_battle 1328, 50
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6E
	setvar VAR_ROCKET_TRAP_VOLTORB_1, 1
	releaseall
	end

scr_seq_D35R0102_015:
	scrcmd_609
	lockall
	scrcmd_708 2
	play_se SEQ_SE_GS_IWA_TRAP
	rocket_trap_battle 1139, 50
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6E
	setvar VAR_ROCKET_TRAP_GEODUDE_1, 1
	releaseall
	end

scr_seq_D35R0102_016:
	scrcmd_609
	lockall
	scrcmd_708 0
	play_se SEQ_SE_GS_DENKI_TRAP
	rocket_trap_battle 1328, 50
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6E
	setvar VAR_ROCKET_TRAP_VOLTORB_2, 1
	releaseall
	end

scr_seq_D35R0102_017:
	scrcmd_609
	lockall
	scrcmd_708 2
	play_se SEQ_SE_GS_IWA_TRAP
	rocket_trap_battle 1139, 50
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6E
	setvar VAR_ROCKET_TRAP_GEODUDE_2, 1
	releaseall
	end

scr_seq_D35R0102_018:
	scrcmd_609
	lockall
	scrcmd_708 0
	play_se SEQ_SE_GS_DENKI_TRAP
	rocket_trap_battle 1328, 50
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6E
	setvar VAR_ROCKET_TRAP_VOLTORB_3, 1
	releaseall
	end

scr_seq_D35R0102_019:
	scrcmd_609
	lockall
	scrcmd_708 0
	play_se SEQ_SE_GS_DENKI_TRAP
	rocket_trap_battle 1328, 50
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6E
	setvar VAR_ROCKET_TRAP_VOLTORB_4, 1
	releaseall
	end

scr_seq_D35R0102_020:
	scrcmd_609
	lockall
	scrcmd_708 1
	play_se SEQ_SE_GS_DOKU_TRAP
	rocket_trap_battle SPECIES_WEEZING, 50
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6E
	setvar VAR_ROCKET_TRAP_KOFFING_2, 1
	releaseall
	end

scr_seq_D35R0102_021:
	scrcmd_609
	lockall
	scrcmd_708 1
	play_se SEQ_SE_GS_DOKU_TRAP
	rocket_trap_battle SPECIES_WEEZING, 50
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6E
	setvar VAR_ROCKET_TRAP_KOFFING_3, 1
	releaseall
	end

scr_seq_D35R0102_022:
	scrcmd_609
	lockall
	scrcmd_708 2
	play_se SEQ_SE_GS_IWA_TRAP
	rocket_trap_battle 1139, 50
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6E
	setvar VAR_ROCKET_TRAP_GEODUDE_3, 1
	releaseall
	end

scr_seq_D35R0102_023:
	scrcmd_609
	lockall
	scrcmd_708 2
	play_se SEQ_SE_GS_IWA_TRAP
	rocket_trap_battle 1139, 50
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6E
	setvar VAR_ROCKET_TRAP_GEODUDE_4, 1
	releaseall
	end

scr_seq_D35R0102_024:
	scrcmd_609
	lockall
	scrcmd_708 1
	play_se SEQ_SE_GS_DOKU_TRAP
	rocket_trap_battle SPECIES_WEEZING, 50
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6E
	setvar VAR_ROCKET_TRAP_KOFFING_4, 1
	releaseall
	end

scr_seq_D35R0102_025:
	scrcmd_609
	lockall
	scrcmd_708 0
	play_se SEQ_SE_GS_DENKI_TRAP
	rocket_trap_battle 1328, 50
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6E
	setvar VAR_ROCKET_TRAP_VOLTORB_5, 1
	releaseall
	end

scr_seq_D35R0102_026:
	scrcmd_609
	lockall
	scrcmd_708 0
	play_se SEQ_SE_GS_DENKI_TRAP
	rocket_trap_battle 1328, 50
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6E
	setvar VAR_ROCKET_TRAP_VOLTORB_6, 1
	releaseall
	end

scr_seq_D35R0102_027:
	scrcmd_609
	lockall
	scrcmd_708 1
	play_se SEQ_SE_GS_DOKU_TRAP
	rocket_trap_battle SPECIES_WEEZING, 50
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6E
	setvar VAR_ROCKET_TRAP_KOFFING_5, 1
	releaseall
	end

scr_seq_D35R0102_028:
	scrcmd_609
	lockall
	scrcmd_708 2
	play_se SEQ_SE_GS_IWA_TRAP
	rocket_trap_battle 1139, 50
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D6E
	setvar VAR_ROCKET_TRAP_GEODUDE_5, 1
	releaseall
	end

scr_seq_D35R0102_029:
	scrcmd_609
	lockall
	play_se SEQ_SE_PL_BOWABOWA
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	wait 15, VAR_SPECIAL_RESULT
	warp MAP_D35R0102, 0, 50, 4, DIR_WEST
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_D35R0102_030:
	compare VAR_UNK_40AC, 9
	call_if_ge _0D74
	compare VAR_UNK_40AD, 2
	goto_if_ne _0D94
	move_person_facing obj_D35R0102_aji_peru, 44, 0, 3, DIR_WEST
	goto _0DB3

scr_seq_D35R0102_031:
	compare VAR_UNK_40AC, 4
	goto_if_eq _0DD2
	compare VAR_UNK_40AC, 5
	goto_if_eq _0DD2
	compare VAR_UNK_40AC, 6
	goto_if_eq _0DD2
	compare VAR_UNK_40AC, 7
	goto_if_eq _0DD2
	end

scr_seq_D35R0102_032:
	end

scr_seq_D35R0102_033:
	lockall
	play_se SEQ_SE_DP_SELECT
	hide_person obj_D35R0102_monstarball_2
	giveitem_no_check ITEM_FAIRY_FEATHER, 1
	setflag FLAG_HIDE_ITEMBALL_D35R0102_GUARD_SPEC_
	closemsg
	releaseall
	end

_06C3:
	subvar VAR_TEMP_x4001, 1
	goto _0DF0

_06CF:
	move_person obj_D35R0102_rocketm, 33, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _1618
	wait_movement
	apply_movement obj_player, _1624
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1630
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_EAST
	apply_movement obj_D35R0102_rocketm, _1618
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1630
	wait_movement
	goto _0EB0

_076B:
	compare VAR_UNK_40AD, 1
	goto_if_ne _0ED4
	npc_msg 3
	goto _0781

_0781:
	wait_button
	closemsg
	releaseall
	end

_0789:
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

_0794:
	npc_msg 6
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EDF
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08FB
	play_se SEQ_SE_DP_DENSI01
	npc_msg 7
	closemsg
	clearflag FLAG_UNK_0D6
	compare VAR_UNK_40AD, 2
	goto_if_ge _0F80
	setvar VAR_UNK_40AD, 0
	apply_movement obj_D35R0102_aji_peru, _163C
	compare VAR_UNK_40AE, 2
	goto_if_ge _0FF9
	setvar VAR_UNK_40AE, 0
	apply_movement obj_D35R0102_aji_peru_2, _163C
	compare VAR_UNK_40AF, 2
	goto_if_ge _1057
	setvar VAR_UNK_40AF, 0
	apply_movement obj_D35R0102_aji_peru_3, _163C
	compare VAR_UNK_40B0, 2
	goto_if_ge _109A
	setvar VAR_UNK_40B0, 0
	apply_movement obj_D35R0102_aji_peru_4, _163C
	compare VAR_UNK_40B1, 2
	goto_if_ge _10C2
	setvar VAR_UNK_40B1, 0
	apply_movement obj_D35R0102_aji_peru_5, _163C
	wait_movement
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_085A:
	play_se SEQ_SE_DP_DENSI01
	npc_msg 7
	closemsg
	setflag FLAG_UNK_0D6
	compare VAR_UNK_40AD, 2
	goto_if_ge _0901
	setvar VAR_UNK_40AD, 1
	apply_movement obj_D35R0102_aji_peru, _1610
	compare VAR_UNK_40AE, 2
	goto_if_ge _097A
	setvar VAR_UNK_40AE, 1
	apply_movement obj_D35R0102_aji_peru_2, _1610
	compare VAR_UNK_40AF, 2
	goto_if_ge _09D8
	setvar VAR_UNK_40AF, 1
	apply_movement obj_D35R0102_aji_peru_3, _1610
	compare VAR_UNK_40B0, 2
	goto_if_ge _0A1B
	setvar VAR_UNK_40B0, 1
	apply_movement obj_D35R0102_aji_peru_4, _1610
	compare VAR_UNK_40B1, 2
	goto_if_ge _0A43
	setvar VAR_UNK_40B1, 1
	apply_movement obj_D35R0102_aji_peru_5, _1610
	wait_movement
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_08FB:
	closemsg
	releaseall
	end

_0901:
	compare VAR_UNK_40AE, 2
	goto_if_ge _097A
	setvar VAR_UNK_40AE, 1
	apply_movement obj_D35R0102_aji_peru_2, _1610
	compare VAR_UNK_40AF, 2
	goto_if_ge _09D8
	setvar VAR_UNK_40AF, 1
	apply_movement obj_D35R0102_aji_peru_3, _1610
	compare VAR_UNK_40B0, 2
	goto_if_ge _0A1B
	setvar VAR_UNK_40B0, 1
	apply_movement obj_D35R0102_aji_peru_4, _1610
	compare VAR_UNK_40B1, 2
	goto_if_ge _0A43
	setvar VAR_UNK_40B1, 1
	apply_movement obj_D35R0102_aji_peru_5, _1610
	wait_movement
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_097A:
	compare VAR_UNK_40AF, 2
	goto_if_ge _09D8
	setvar VAR_UNK_40AF, 1
	apply_movement obj_D35R0102_aji_peru_3, _1610
	compare VAR_UNK_40B0, 2
	goto_if_ge _0A1B
	setvar VAR_UNK_40B0, 1
	apply_movement obj_D35R0102_aji_peru_4, _1610
	compare VAR_UNK_40B1, 2
	goto_if_ge _0A43
	setvar VAR_UNK_40B1, 1
	apply_movement obj_D35R0102_aji_peru_5, _1610
	wait_movement
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_09D8:
	compare VAR_UNK_40B0, 2
	goto_if_ge _0A1B
	setvar VAR_UNK_40B0, 1
	apply_movement obj_D35R0102_aji_peru_4, _1610
	compare VAR_UNK_40B1, 2
	goto_if_ge _0A43
	setvar VAR_UNK_40B1, 1
	apply_movement obj_D35R0102_aji_peru_5, _1610
	wait_movement
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_0A1B:
	compare VAR_UNK_40B1, 2
	goto_if_ge _0A43
	setvar VAR_UNK_40B1, 1
	apply_movement obj_D35R0102_aji_peru_5, _1610
	wait_movement
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_0A43:
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_0A4E:
	subvar VAR_TEMP_x4001, 1
	goto _10CD

_0A5A:
	move_person obj_D35R0102_rocketm, 27, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 27, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _1644
	wait_movement
	apply_movement obj_player, _1624
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1650
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 27, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _1644
	wait_movement
	apply_movement obj_player, _1624
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1650
	wait_movement
	goto _1189

_0B00:
	subvar VAR_TEMP_x4001, 1
	goto _11A5

_0B0C:
	move_person obj_D35R0102_rocketm, 33, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _165C
	wait_movement
	apply_movement obj_player, _1624
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1668
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _165C
	wait_movement
	apply_movement obj_player, _1624
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1668
	wait_movement
	goto _1261

_0BB2:
	subvar VAR_TEMP_x4001, 1
	goto _127D

_0BBE:
	move_person obj_D35R0102_rocketm, 33, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _1674
	wait_movement
	apply_movement obj_player, _1624
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1680
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _1674
	wait_movement
	apply_movement obj_player, _1624
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1680
	wait_movement
	goto _1335

_0C64:
	subvar VAR_TEMP_x4001, 1
	goto _134D

_0C70:
	move_person obj_D35R0102_rocketm, 27, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 27, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _168C
	wait_movement
	apply_movement obj_player, _1624
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1698
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 27, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _168C
	wait_movement
	apply_movement obj_player, _1624
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1698
	wait_movement
	goto _1405

_0D16:
	compare VAR_UNK_40AE, 1
	goto_if_ne _141D
	npc_msg 3
	goto _0781

_0D2C:
	compare VAR_UNK_40AF, 1
	goto_if_ne _1426
	npc_msg 3
	goto _0781

_0D42:
	compare VAR_UNK_40B0, 1
	goto_if_ne _142F
	npc_msg 3
	goto _0781

_0D58:
	compare VAR_UNK_40B1, 1
	goto_if_ne _1438
	npc_msg 3
	goto _0781

_0D6E:
	white_out
	releaseall
	end

_0D74:
	setvar VAR_UNK_40AD, 2
	setvar VAR_UNK_40AE, 2
	setvar VAR_UNK_40AF, 2
	setvar VAR_UNK_40B0, 2
	setvar VAR_UNK_40B1, 2
	return

_0D94:
	compare VAR_UNK_40AD, 1
	goto_if_ne _1441
	move_person_facing obj_D35R0102_aji_peru, 44, 0, 3, DIR_SOUTH
	goto _0DB3

_0DB3:
	compare VAR_UNK_40AE, 2
	goto_if_ne _146C
	move_person_facing obj_D35R0102_aji_peru_2, 18, 0, 3, DIR_WEST
	goto _148B

_0DD2:
	setvar VAR_UNK_40AC, 8
	setvar VAR_UNK_40A9, 2
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_1
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_MURKROW_2
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_2
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_3
	end

_0DF0:
	move_person obj_D35R0102_rocketm, 33, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _16A4
	wait_movement
	apply_movement obj_player, _16B0
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1630
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_EAST
	apply_movement obj_D35R0102_rocketm, _16A4
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1630
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 37, 0, 0, DIR_WEST
	setflag FLAG_UNK_1E8
	setvar VAR_UNK_40AD, 2
	apply_movement obj_D35R0102_aji_peru, _16BC
	wait_movement
	releaseall
	end

_0EAA:
	white_out
	releaseall
	end

_0EB0:
	move_person_facing obj_D35R0102_rocketm, 37, 0, 0, DIR_WEST
	setflag FLAG_UNK_1E8
	setvar VAR_UNK_40AD, 2
	apply_movement obj_D35R0102_aji_peru, _16BC
	wait_movement
	releaseall
	end

_0ED4:
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

_0EDF:
	play_se SEQ_SE_DP_DENSI01
	npc_msg 7
	closemsg
	clearflag FLAG_UNK_0D6
	compare VAR_UNK_40AD, 2
	goto_if_ge _0F80
	setvar VAR_UNK_40AD, 0
	apply_movement obj_D35R0102_aji_peru, _163C
	compare VAR_UNK_40AE, 2
	goto_if_ge _0FF9
	setvar VAR_UNK_40AE, 0
	apply_movement obj_D35R0102_aji_peru_2, _163C
	compare VAR_UNK_40AF, 2
	goto_if_ge _1057
	setvar VAR_UNK_40AF, 0
	apply_movement obj_D35R0102_aji_peru_3, _163C
	compare VAR_UNK_40B0, 2
	goto_if_ge _109A
	setvar VAR_UNK_40B0, 0
	apply_movement obj_D35R0102_aji_peru_4, _163C
	compare VAR_UNK_40B1, 2
	goto_if_ge _10C2
	setvar VAR_UNK_40B1, 0
	apply_movement obj_D35R0102_aji_peru_5, _163C
	wait_movement
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_0F80:
	compare VAR_UNK_40AE, 2
	goto_if_ge _0FF9
	setvar VAR_UNK_40AE, 0
	apply_movement obj_D35R0102_aji_peru_2, _163C
	compare VAR_UNK_40AF, 2
	goto_if_ge _1057
	setvar VAR_UNK_40AF, 0
	apply_movement obj_D35R0102_aji_peru_3, _163C
	compare VAR_UNK_40B0, 2
	goto_if_ge _109A
	setvar VAR_UNK_40B0, 0
	apply_movement obj_D35R0102_aji_peru_4, _163C
	compare VAR_UNK_40B1, 2
	goto_if_ge _10C2
	setvar VAR_UNK_40B1, 0
	apply_movement obj_D35R0102_aji_peru_5, _163C
	wait_movement
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_0FF9:
	compare VAR_UNK_40AF, 2
	goto_if_ge _1057
	setvar VAR_UNK_40AF, 0
	apply_movement obj_D35R0102_aji_peru_3, _163C
	compare VAR_UNK_40B0, 2
	goto_if_ge _109A
	setvar VAR_UNK_40B0, 0
	apply_movement obj_D35R0102_aji_peru_4, _163C
	compare VAR_UNK_40B1, 2
	goto_if_ge _10C2
	setvar VAR_UNK_40B1, 0
	apply_movement obj_D35R0102_aji_peru_5, _163C
	wait_movement
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_1057:
	compare VAR_UNK_40B0, 2
	goto_if_ge _109A
	setvar VAR_UNK_40B0, 0
	apply_movement obj_D35R0102_aji_peru_4, _163C
	compare VAR_UNK_40B1, 2
	goto_if_ge _10C2
	setvar VAR_UNK_40B1, 0
	apply_movement obj_D35R0102_aji_peru_5, _163C
	wait_movement
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_109A:
	compare VAR_UNK_40B1, 2
	goto_if_ge _10C2
	setvar VAR_UNK_40B1, 0
	apply_movement obj_D35R0102_aji_peru_5, _163C
	wait_movement
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_10C2:
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_10CD:
	move_person obj_D35R0102_rocketm, 27, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 27, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _16C4
	wait_movement
	apply_movement obj_player, _16B0
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1650
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 27, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _16C4
	wait_movement
	apply_movement obj_player, _16B0
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1650
	wait_movement
	hide_person obj_D35R0102_rocketm
	setflag FLAG_UNK_1E8
	setvar VAR_UNK_40AE, 2
	apply_movement obj_D35R0102_aji_peru_2, _16BC
	wait_movement
	releaseall
	end

_1189:
	hide_person obj_D35R0102_rocketm
	setflag FLAG_UNK_1E8
	setvar VAR_UNK_40AE, 2
	apply_movement obj_D35R0102_aji_peru_2, _16BC
	wait_movement
	releaseall
	end

_11A5:
	move_person obj_D35R0102_rocketm, 33, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _16D0
	wait_movement
	apply_movement obj_player, _16B0
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1668
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _16D0
	wait_movement
	apply_movement obj_player, _16B0
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1668
	wait_movement
	hide_person obj_D35R0102_rocketm
	setflag FLAG_UNK_1E8
	setvar VAR_UNK_40AF, 2
	apply_movement obj_D35R0102_aji_peru_3, _16BC
	wait_movement
	releaseall
	end

_1261:
	hide_person obj_D35R0102_rocketm
	setflag FLAG_UNK_1E8
	setvar VAR_UNK_40AF, 2
	apply_movement obj_D35R0102_aji_peru_3, _16BC
	wait_movement
	releaseall
	end

_127D:
	move_person obj_D35R0102_rocketm, 33, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _16DC
	wait_movement
	apply_movement obj_player, _16B0
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1680
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _16DC
	wait_movement
	apply_movement obj_player, _16B0
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1680
	wait_movement
	hide_person obj_D35R0102_rocketm
	setvar VAR_UNK_40B0, 2
	apply_movement obj_D35R0102_aji_peru_4, _16BC
	wait_movement
	releaseall
	end

_1335:
	hide_person obj_D35R0102_rocketm
	setvar VAR_UNK_40B0, 2
	apply_movement obj_D35R0102_aji_peru_4, _16BC
	wait_movement
	releaseall
	end

_134D:
	move_person obj_D35R0102_rocketm, 27, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 27, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _16E8
	wait_movement
	apply_movement obj_player, _16B0
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1698
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 27, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _16E8
	wait_movement
	apply_movement obj_player, _16B0
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EAA
	apply_movement obj_D35R0102_rocketm, _1698
	wait_movement
	hide_person obj_D35R0102_rocketm
	setvar VAR_UNK_40B1, 2
	apply_movement obj_D35R0102_aji_peru_5, _16BC
	wait_movement
	releaseall
	end

_1405:
	hide_person obj_D35R0102_rocketm
	setvar VAR_UNK_40B1, 2
	apply_movement obj_D35R0102_aji_peru_5, _16BC
	wait_movement
	releaseall
	end

_141D:
	npc_msg 4
	goto _0781

_1426:
	npc_msg 4
	goto _0781

_142F:
	npc_msg 4
	goto _0781

_1438:
	npc_msg 4
	goto _0781

_1441:
	move_person_facing obj_D35R0102_aji_peru, 44, 0, 3, DIR_NORTH
	compare VAR_UNK_40AE, 2
	goto_if_ne _146C
	move_person_facing obj_D35R0102_aji_peru_2, 18, 0, 3, DIR_WEST
	goto _148B

_146C:
	compare VAR_UNK_40AE, 1
	goto_if_ne _14AA
	move_person_facing obj_D35R0102_aji_peru_2, 18, 0, 3, DIR_SOUTH
	goto _148B

_148B:
	compare VAR_UNK_40AF, 2
	goto_if_ne _14D5
	move_person_facing obj_D35R0102_aji_peru_3, 44, 0, 10, DIR_WEST
	goto _14F4

_14AA:
	move_person_facing obj_D35R0102_aji_peru_2, 18, 0, 3, DIR_NORTH
	compare VAR_UNK_40AF, 2
	goto_if_ne _14D5
	move_person_facing obj_D35R0102_aji_peru_3, 44, 0, 10, DIR_WEST
	goto _14F4

_14D5:
	compare VAR_UNK_40AF, 1
	goto_if_ne _1513
	move_person_facing obj_D35R0102_aji_peru_3, 44, 0, 10, DIR_SOUTH
	goto _14F4

_14F4:
	compare VAR_UNK_40B0, 2
	goto_if_ne _153E
	move_person_facing obj_D35R0102_aji_peru_4, 44, 0, 28, DIR_WEST
	goto _155D

_1513:
	move_person_facing obj_D35R0102_aji_peru_3, 44, 0, 10, DIR_NORTH
	compare VAR_UNK_40B0, 2
	goto_if_ne _153E
	move_person_facing obj_D35R0102_aji_peru_4, 44, 0, 28, DIR_WEST
	goto _155D

_153E:
	compare VAR_UNK_40B0, 1
	goto_if_ne _157C
	move_person_facing obj_D35R0102_aji_peru_4, 44, 0, 28, DIR_SOUTH
	goto _155D

_155D:
	compare VAR_UNK_40B1, 2
	goto_if_ne _15A7
	move_person_facing obj_D35R0102_aji_peru_5, 18, 0, 28, DIR_WEST
	goto _15C6

_157C:
	move_person_facing obj_D35R0102_aji_peru_4, 44, 0, 28, DIR_NORTH
	compare VAR_UNK_40B1, 2
	goto_if_ne _15A7
	move_person_facing obj_D35R0102_aji_peru_5, 18, 0, 28, DIR_WEST
	goto _15C6

_15A7:
	compare VAR_UNK_40B1, 1
	goto_if_ne _15C8
	move_person_facing obj_D35R0102_aji_peru_5, 18, 0, 28, DIR_SOUTH
	goto _15C6

_15C6:
	end

_15C8:
	move_person_facing obj_D35R0102_aji_peru_5, 18, 0, 28, DIR_NORTH
	end

	.byte 0x00, 0x00
	.balign 4
_15D8:

	step 75, 1
	step 63, 2
	step 3, 2
	step 63, 1
	step 2, 2
	step 63, 1
	step 3, 2
	step 63, 1
	step 0, 2
	step 63, 1
	step_end
	.balign 4
_1604:

	step 75, 1
	step 63, 2
	step_end
	.balign 4
_1610:

	step 1, 1
	step_end
	.balign 4
_1618:

	step 23, 11
	step 0, 2
	step_end
	.balign 4
_1624:

	step 1, 2
	step 63, 2
	step_end
	.balign 4
_1630:

	step 2, 2
	step 22, 10
	step_end
	.balign 4
_163C:

	step 0, 1
	step_end
	.balign 4
_1644:

	step 22, 9
	step 0, 2
	step_end
	.balign 4
_1650:

	step 3, 2
	step 23, 10
	step_end
	.balign 4
_165C:

	step 23, 11
	step 0, 2
	step_end
	.balign 4
_1668:

	step 2, 2
	step 22, 10
	step_end
	.balign 4
_1674:

	step 23, 11
	step 0, 2
	step_end
	.balign 4
_1680:

	step 2, 2
	step 22, 10
	step_end
	.balign 4
_168C:

	step 22, 9
	step 0, 2
	step_end
	.balign 4
_1698:

	step 3, 2
	step 23, 10
	step_end
	.balign 4
_16A4:

	step 23, 11
	step 1, 2
	step_end
	.balign 4
_16B0:

	step 0, 2
	step 63, 2
	step_end
	.balign 4
_16BC:

	step 2, 1
	step_end
	.balign 4
_16C4:

	step 22, 9
	step 1, 2
	step_end
	.balign 4
_16D0:

	step 23, 11
	step 1, 2
	step_end
	.balign 4
_16DC:

	step 23, 11
	step 1, 2
	step_end
	.balign 4
_16E8:

	step 22, 9
	step 1, 2
	step_end
	.balign 4
