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
scrdef_end

scr_seq_D35R0102_000:
	scrcmd_609
	lockall
	apply_movement obj_player, _15AE
	wait_movement
	apply_movement obj_D35R0102_aji_peru, _15DA
	wait_movement
	play_se SEQ_SE_GS_AJITO_SIREN
	scrcmd_709
	stop_se SEQ_SE_GS_AJITO_SIREN
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 4
	goto_if_ne _069B
	addvar VAR_TEMP_x4001, 1
	goto _06A7

scr_seq_D35R0102_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	compare VAR_UNK_40AD, 0
	goto_if_ne _0743
	npc_msg 2
	goto _0759

scr_seq_D35R0102_002:
	end

scr_seq_D35R0102_003:
	end

scr_seq_D35R0102_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_40AC, 9
	goto_if_ge _0761
	goto_if_set FLAG_UNK_0D6, _076C
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0832
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08D3
	play_se SEQ_SE_DP_DENSI01
	npc_msg 7
	closemsg
	setflag FLAG_UNK_0D6
	compare VAR_UNK_40AD, 2
	goto_if_ge _08D9
	setvar VAR_UNK_40AD, 1
	apply_movement obj_D35R0102_aji_peru, _15E6
	compare VAR_UNK_40AE, 2
	goto_if_ge _0952
	setvar VAR_UNK_40AE, 1
	apply_movement obj_D35R0102_aji_peru_2, _15E6
	compare VAR_UNK_40AF, 2
	goto_if_ge _09B0
	setvar VAR_UNK_40AF, 1
	apply_movement obj_D35R0102_aji_peru_3, _15E6
	compare VAR_UNK_40B0, 2
	goto_if_ge _09F3
	setvar VAR_UNK_40B0, 1
	apply_movement obj_D35R0102_aji_peru_4, _15E6
	compare VAR_UNK_40B1, 2
	goto_if_ge _0A1B
	setvar VAR_UNK_40B1, 1
	apply_movement obj_D35R0102_aji_peru_5, _15E6
	wait_movement
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

scr_seq_D35R0102_005:
	scrcmd_609
	lockall
	apply_movement obj_player, _15AE
	wait_movement
	apply_movement obj_D35R0102_aji_peru_2, _15DA
	wait_movement
	play_se SEQ_SE_GS_AJITO_SIREN
	scrcmd_709
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 4
	goto_if_ne _0A26
	addvar VAR_TEMP_x4001, 1
	goto _0A32

scr_seq_D35R0102_006:
	scrcmd_609
	lockall
	apply_movement obj_player, _15AE
	wait_movement
	apply_movement obj_D35R0102_aji_peru_3, _15DA
	wait_movement
	play_se SEQ_SE_GS_AJITO_SIREN
	scrcmd_709
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 11
	goto_if_ne _0AD8
	addvar VAR_TEMP_x4001, 1
	goto _0AE4

scr_seq_D35R0102_007:
	scrcmd_609
	lockall
	apply_movement obj_player, _15AE
	wait_movement
	apply_movement obj_D35R0102_aji_peru_4, _15DA
	wait_movement
	play_se SEQ_SE_GS_AJITO_SIREN
	scrcmd_709
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 29
	goto_if_ne _0B8A
	addvar VAR_TEMP_x4001, 1
	goto _0B96

scr_seq_D35R0102_008:
	scrcmd_609
	lockall
	apply_movement obj_player, _15AE
	wait_movement
	apply_movement obj_D35R0102_aji_peru_5, _15DA
	wait_movement
	play_se SEQ_SE_GS_AJITO_SIREN
	scrcmd_709
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 29
	goto_if_ne _0C3C
	addvar VAR_TEMP_x4001, 1
	goto _0C48

scr_seq_D35R0102_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	compare VAR_UNK_40AE, 0
	goto_if_ne _0CEE
	npc_msg 2
	goto _0759

scr_seq_D35R0102_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	compare VAR_UNK_40AF, 0
	goto_if_ne _0D04
	npc_msg 2
	goto _0759

scr_seq_D35R0102_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	compare VAR_UNK_40B0, 0
	goto_if_ne _0D1A
	npc_msg 2
	goto _0759

scr_seq_D35R0102_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	compare VAR_UNK_40B1, 0
	goto_if_ne _0D30
	npc_msg 2
	goto _0759

scr_seq_D35R0102_013:
	scrcmd_609
	lockall
	scrcmd_708 1
	play_se SEQ_SE_GS_DOKU_TRAP
	rocket_trap_battle SPECIES_WEEZING, 50
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0D46
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
	goto_if_eq _0D46
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
	goto_if_eq _0D46
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
	goto_if_eq _0D46
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
	goto_if_eq _0D46
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
	goto_if_eq _0D46
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
	goto_if_eq _0D46
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
	goto_if_eq _0D46
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
	goto_if_eq _0D46
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
	goto_if_eq _0D46
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
	goto_if_eq _0D46
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
	goto_if_eq _0D46
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
	goto_if_eq _0D46
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
	goto_if_eq _0D46
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
	goto_if_eq _0D46
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
	goto_if_eq _0D46
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
	call_if_ge _0D4C
	compare VAR_UNK_40AD, 2
	goto_if_ne _0D6C
	move_person_facing obj_D35R0102_aji_peru, 44, 0, 3, DIR_WEST
	goto _0D8B

scr_seq_D35R0102_031:
	compare VAR_UNK_40AC, 4
	goto_if_eq _0DAA
	compare VAR_UNK_40AC, 5
	goto_if_eq _0DAA
	compare VAR_UNK_40AC, 6
	goto_if_eq _0DAA
	compare VAR_UNK_40AC, 7
	goto_if_eq _0DAA
	end

scr_seq_D35R0102_032:
	end

_069B:
	subvar VAR_TEMP_x4001, 1
	goto _0DC8

_06A7:
	move_person obj_D35R0102_rocketm, 33, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _15EE
	wait_movement
	apply_movement obj_player, _15FA
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _1606
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_EAST
	apply_movement obj_D35R0102_rocketm, _15EE
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _1606
	wait_movement
	goto _0E88

_0743:
	compare VAR_UNK_40AD, 1
	goto_if_ne _0EAC
	npc_msg 3
	goto _0759

_0759:
	wait_button
	closemsg
	releaseall
	end

_0761:
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

_076C:
	npc_msg 6
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0EB7
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _08D3
	play_se SEQ_SE_DP_DENSI01
	npc_msg 7
	closemsg
	clearflag FLAG_UNK_0D6
	compare VAR_UNK_40AD, 2
	goto_if_ge _0F58
	setvar VAR_UNK_40AD, 0
	apply_movement obj_D35R0102_aji_peru, _1612
	compare VAR_UNK_40AE, 2
	goto_if_ge _0FD1
	setvar VAR_UNK_40AE, 0
	apply_movement obj_D35R0102_aji_peru_2, _1612
	compare VAR_UNK_40AF, 2
	goto_if_ge _102F
	setvar VAR_UNK_40AF, 0
	apply_movement obj_D35R0102_aji_peru_3, _1612
	compare VAR_UNK_40B0, 2
	goto_if_ge _1072
	setvar VAR_UNK_40B0, 0
	apply_movement obj_D35R0102_aji_peru_4, _1612
	compare VAR_UNK_40B1, 2
	goto_if_ge _109A
	setvar VAR_UNK_40B1, 0
	apply_movement obj_D35R0102_aji_peru_5, _1612
	wait_movement
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_0832:
	play_se SEQ_SE_DP_DENSI01
	npc_msg 7
	closemsg
	setflag FLAG_UNK_0D6
	compare VAR_UNK_40AD, 2
	goto_if_ge _08D9
	setvar VAR_UNK_40AD, 1
	apply_movement obj_D35R0102_aji_peru, _15E6
	compare VAR_UNK_40AE, 2
	goto_if_ge _0952
	setvar VAR_UNK_40AE, 1
	apply_movement obj_D35R0102_aji_peru_2, _15E6
	compare VAR_UNK_40AF, 2
	goto_if_ge _09B0
	setvar VAR_UNK_40AF, 1
	apply_movement obj_D35R0102_aji_peru_3, _15E6
	compare VAR_UNK_40B0, 2
	goto_if_ge _09F3
	setvar VAR_UNK_40B0, 1
	apply_movement obj_D35R0102_aji_peru_4, _15E6
	compare VAR_UNK_40B1, 2
	goto_if_ge _0A1B
	setvar VAR_UNK_40B1, 1
	apply_movement obj_D35R0102_aji_peru_5, _15E6
	wait_movement
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_08D3:
	closemsg
	releaseall
	end

_08D9:
	compare VAR_UNK_40AE, 2
	goto_if_ge _0952
	setvar VAR_UNK_40AE, 1
	apply_movement obj_D35R0102_aji_peru_2, _15E6
	compare VAR_UNK_40AF, 2
	goto_if_ge _09B0
	setvar VAR_UNK_40AF, 1
	apply_movement obj_D35R0102_aji_peru_3, _15E6
	compare VAR_UNK_40B0, 2
	goto_if_ge _09F3
	setvar VAR_UNK_40B0, 1
	apply_movement obj_D35R0102_aji_peru_4, _15E6
	compare VAR_UNK_40B1, 2
	goto_if_ge _0A1B
	setvar VAR_UNK_40B1, 1
	apply_movement obj_D35R0102_aji_peru_5, _15E6
	wait_movement
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_0952:
	compare VAR_UNK_40AF, 2
	goto_if_ge _09B0
	setvar VAR_UNK_40AF, 1
	apply_movement obj_D35R0102_aji_peru_3, _15E6
	compare VAR_UNK_40B0, 2
	goto_if_ge _09F3
	setvar VAR_UNK_40B0, 1
	apply_movement obj_D35R0102_aji_peru_4, _15E6
	compare VAR_UNK_40B1, 2
	goto_if_ge _0A1B
	setvar VAR_UNK_40B1, 1
	apply_movement obj_D35R0102_aji_peru_5, _15E6
	wait_movement
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_09B0:
	compare VAR_UNK_40B0, 2
	goto_if_ge _09F3
	setvar VAR_UNK_40B0, 1
	apply_movement obj_D35R0102_aji_peru_4, _15E6
	compare VAR_UNK_40B1, 2
	goto_if_ge _0A1B
	setvar VAR_UNK_40B1, 1
	apply_movement obj_D35R0102_aji_peru_5, _15E6
	wait_movement
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_09F3:
	compare VAR_UNK_40B1, 2
	goto_if_ge _0A1B
	setvar VAR_UNK_40B1, 1
	apply_movement obj_D35R0102_aji_peru_5, _15E6
	wait_movement
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_0A1B:
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_0A26:
	subvar VAR_TEMP_x4001, 1
	goto _10A5

_0A32:
	move_person obj_D35R0102_rocketm, 27, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 27, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _161A
	wait_movement
	apply_movement obj_player, _15FA
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _1626
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 27, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _161A
	wait_movement
	apply_movement obj_player, _15FA
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _1626
	wait_movement
	goto _1161

_0AD8:
	subvar VAR_TEMP_x4001, 1
	goto _117D

_0AE4:
	move_person obj_D35R0102_rocketm, 33, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _1632
	wait_movement
	apply_movement obj_player, _15FA
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _163E
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _1632
	wait_movement
	apply_movement obj_player, _15FA
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _163E
	wait_movement
	goto _1239

_0B8A:
	subvar VAR_TEMP_x4001, 1
	goto _1255

_0B96:
	move_person obj_D35R0102_rocketm, 33, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _164A
	wait_movement
	apply_movement obj_player, _15FA
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _1656
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _164A
	wait_movement
	apply_movement obj_player, _15FA
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _1656
	wait_movement
	goto _130D

_0C3C:
	subvar VAR_TEMP_x4001, 1
	goto _1325

_0C48:
	move_person obj_D35R0102_rocketm, 27, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 27, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _1662
	wait_movement
	apply_movement obj_player, _15FA
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _166E
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 27, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _1662
	wait_movement
	apply_movement obj_player, _15FA
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _166E
	wait_movement
	goto _13DD

_0CEE:
	compare VAR_UNK_40AE, 1
	goto_if_ne _13F5
	npc_msg 3
	goto _0759

_0D04:
	compare VAR_UNK_40AF, 1
	goto_if_ne _13FE
	npc_msg 3
	goto _0759

_0D1A:
	compare VAR_UNK_40B0, 1
	goto_if_ne _1407
	npc_msg 3
	goto _0759

_0D30:
	compare VAR_UNK_40B1, 1
	goto_if_ne _1410
	npc_msg 3
	goto _0759

_0D46:
	white_out
	releaseall
	end

_0D4C:
	setvar VAR_UNK_40AD, 2
	setvar VAR_UNK_40AE, 2
	setvar VAR_UNK_40AF, 2
	setvar VAR_UNK_40B0, 2
	setvar VAR_UNK_40B1, 2
	return

_0D6C:
	compare VAR_UNK_40AD, 1
	goto_if_ne _1419
	move_person_facing obj_D35R0102_aji_peru, 44, 0, 3, DIR_SOUTH
	goto _0D8B

_0D8B:
	compare VAR_UNK_40AE, 2
	goto_if_ne _1444
	move_person_facing obj_D35R0102_aji_peru_2, 18, 0, 3, DIR_WEST
	goto _1463

_0DAA:
	setvar VAR_UNK_40AC, 8
	setvar VAR_UNK_40A9, 2
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_1
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_MURKROW_2
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_2
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_3
	end

_0DC8:
	move_person obj_D35R0102_rocketm, 33, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _167A
	wait_movement
	apply_movement obj_player, _1686
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _1606
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_EAST
	apply_movement obj_D35R0102_rocketm, _167A
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _1606
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 37, 0, 0, DIR_WEST
	setflag FLAG_UNK_1E8
	setvar VAR_UNK_40AD, 2
	apply_movement obj_D35R0102_aji_peru, _1692
	wait_movement
	releaseall
	end

_0E82:
	white_out
	releaseall
	end

_0E88:
	move_person_facing obj_D35R0102_rocketm, 37, 0, 0, DIR_WEST
	setflag FLAG_UNK_1E8
	setvar VAR_UNK_40AD, 2
	apply_movement obj_D35R0102_aji_peru, _1692
	wait_movement
	releaseall
	end

_0EAC:
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

_0EB7:
	play_se SEQ_SE_DP_DENSI01
	npc_msg 7
	closemsg
	clearflag FLAG_UNK_0D6
	compare VAR_UNK_40AD, 2
	goto_if_ge _0F58
	setvar VAR_UNK_40AD, 0
	apply_movement obj_D35R0102_aji_peru, _1612
	compare VAR_UNK_40AE, 2
	goto_if_ge _0FD1
	setvar VAR_UNK_40AE, 0
	apply_movement obj_D35R0102_aji_peru_2, _1612
	compare VAR_UNK_40AF, 2
	goto_if_ge _102F
	setvar VAR_UNK_40AF, 0
	apply_movement obj_D35R0102_aji_peru_3, _1612
	compare VAR_UNK_40B0, 2
	goto_if_ge _1072
	setvar VAR_UNK_40B0, 0
	apply_movement obj_D35R0102_aji_peru_4, _1612
	compare VAR_UNK_40B1, 2
	goto_if_ge _109A
	setvar VAR_UNK_40B1, 0
	apply_movement obj_D35R0102_aji_peru_5, _1612
	wait_movement
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_0F58:
	compare VAR_UNK_40AE, 2
	goto_if_ge _0FD1
	setvar VAR_UNK_40AE, 0
	apply_movement obj_D35R0102_aji_peru_2, _1612
	compare VAR_UNK_40AF, 2
	goto_if_ge _102F
	setvar VAR_UNK_40AF, 0
	apply_movement obj_D35R0102_aji_peru_3, _1612
	compare VAR_UNK_40B0, 2
	goto_if_ge _1072
	setvar VAR_UNK_40B0, 0
	apply_movement obj_D35R0102_aji_peru_4, _1612
	compare VAR_UNK_40B1, 2
	goto_if_ge _109A
	setvar VAR_UNK_40B1, 0
	apply_movement obj_D35R0102_aji_peru_5, _1612
	wait_movement
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_0FD1:
	compare VAR_UNK_40AF, 2
	goto_if_ge _102F
	setvar VAR_UNK_40AF, 0
	apply_movement obj_D35R0102_aji_peru_3, _1612
	compare VAR_UNK_40B0, 2
	goto_if_ge _1072
	setvar VAR_UNK_40B0, 0
	apply_movement obj_D35R0102_aji_peru_4, _1612
	compare VAR_UNK_40B1, 2
	goto_if_ge _109A
	setvar VAR_UNK_40B1, 0
	apply_movement obj_D35R0102_aji_peru_5, _1612
	wait_movement
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_102F:
	compare VAR_UNK_40B0, 2
	goto_if_ge _1072
	setvar VAR_UNK_40B0, 0
	apply_movement obj_D35R0102_aji_peru_4, _1612
	compare VAR_UNK_40B1, 2
	goto_if_ge _109A
	setvar VAR_UNK_40B1, 0
	apply_movement obj_D35R0102_aji_peru_5, _1612
	wait_movement
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_1072:
	compare VAR_UNK_40B1, 2
	goto_if_ge _109A
	setvar VAR_UNK_40B1, 0
	apply_movement obj_D35R0102_aji_peru_5, _1612
	wait_movement
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_109A:
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_10A5:
	move_person obj_D35R0102_rocketm, 27, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 27, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _169A
	wait_movement
	apply_movement obj_player, _1686
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _1626
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 27, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _169A
	wait_movement
	apply_movement obj_player, _1686
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _1626
	wait_movement
	hide_person obj_D35R0102_rocketm
	setflag FLAG_UNK_1E8
	setvar VAR_UNK_40AE, 2
	apply_movement obj_D35R0102_aji_peru_2, _1692
	wait_movement
	releaseall
	end

_1161:
	hide_person obj_D35R0102_rocketm
	setflag FLAG_UNK_1E8
	setvar VAR_UNK_40AE, 2
	apply_movement obj_D35R0102_aji_peru_2, _1692
	wait_movement
	releaseall
	end

_117D:
	move_person obj_D35R0102_rocketm, 33, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _16A6
	wait_movement
	apply_movement obj_player, _1686
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _163E
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _16A6
	wait_movement
	apply_movement obj_player, _1686
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _163E
	wait_movement
	hide_person obj_D35R0102_rocketm
	setflag FLAG_UNK_1E8
	setvar VAR_UNK_40AF, 2
	apply_movement obj_D35R0102_aji_peru_3, _1692
	wait_movement
	releaseall
	end

_1239:
	hide_person obj_D35R0102_rocketm
	setflag FLAG_UNK_1E8
	setvar VAR_UNK_40AF, 2
	apply_movement obj_D35R0102_aji_peru_3, _1692
	wait_movement
	releaseall
	end

_1255:
	move_person obj_D35R0102_rocketm, 33, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _16B2
	wait_movement
	apply_movement obj_player, _1686
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _1656
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 33, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _16B2
	wait_movement
	apply_movement obj_player, _1686
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _1656
	wait_movement
	hide_person obj_D35R0102_rocketm
	setvar VAR_UNK_40B0, 2
	apply_movement obj_D35R0102_aji_peru_4, _1692
	wait_movement
	releaseall
	end

_130D:
	hide_person obj_D35R0102_rocketm
	setvar VAR_UNK_40B0, 2
	apply_movement obj_D35R0102_aji_peru_4, _1692
	wait_movement
	releaseall
	end

_1325:
	move_person obj_D35R0102_rocketm, 27, 0
	clearflag FLAG_UNK_1E8
	show_person obj_D35R0102_rocketm
	move_person_facing obj_D35R0102_rocketm, 27, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _16BE
	wait_movement
	apply_movement obj_player, _1686
	wait_movement
	npc_msg 0
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_20, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _166E
	wait_movement
	move_person_facing obj_D35R0102_rocketm, 27, 0, VAR_TEMP_x4001, DIR_WEST
	apply_movement obj_D35R0102_rocketm, _16BE
	wait_movement
	apply_movement obj_player, _1686
	wait_movement
	npc_msg 1
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_21, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0E82
	apply_movement obj_D35R0102_rocketm, _166E
	wait_movement
	hide_person obj_D35R0102_rocketm
	setvar VAR_UNK_40B1, 2
	apply_movement obj_D35R0102_aji_peru_5, _1692
	wait_movement
	releaseall
	end

_13DD:
	hide_person obj_D35R0102_rocketm
	setvar VAR_UNK_40B1, 2
	apply_movement obj_D35R0102_aji_peru_5, _1692
	wait_movement
	releaseall
	end

_13F5:
	npc_msg 4
	goto _0759

_13FE:
	npc_msg 4
	goto _0759

_1407:
	npc_msg 4
	goto _0759

_1410:
	npc_msg 4
	goto _0759

_1419:
	move_person_facing obj_D35R0102_aji_peru, 44, 0, 3, DIR_NORTH
	compare VAR_UNK_40AE, 2
	goto_if_ne _1444
	move_person_facing obj_D35R0102_aji_peru_2, 18, 0, 3, DIR_WEST
	goto _1463

_1444:
	compare VAR_UNK_40AE, 1
	goto_if_ne _1482
	move_person_facing obj_D35R0102_aji_peru_2, 18, 0, 3, DIR_SOUTH
	goto _1463

_1463:
	compare VAR_UNK_40AF, 2
	goto_if_ne _14AD
	move_person_facing obj_D35R0102_aji_peru_3, 44, 0, 10, DIR_WEST
	goto _14CC

_1482:
	move_person_facing obj_D35R0102_aji_peru_2, 18, 0, 3, DIR_NORTH
	compare VAR_UNK_40AF, 2
	goto_if_ne _14AD
	move_person_facing obj_D35R0102_aji_peru_3, 44, 0, 10, DIR_WEST
	goto _14CC

_14AD:
	compare VAR_UNK_40AF, 1
	goto_if_ne _14EB
	move_person_facing obj_D35R0102_aji_peru_3, 44, 0, 10, DIR_SOUTH
	goto _14CC

_14CC:
	compare VAR_UNK_40B0, 2
	goto_if_ne _1516
	move_person_facing obj_D35R0102_aji_peru_4, 44, 0, 28, DIR_WEST
	goto _1535

_14EB:
	move_person_facing obj_D35R0102_aji_peru_3, 44, 0, 10, DIR_NORTH
	compare VAR_UNK_40B0, 2
	goto_if_ne _1516
	move_person_facing obj_D35R0102_aji_peru_4, 44, 0, 28, DIR_WEST
	goto _1535

_1516:
	compare VAR_UNK_40B0, 1
	goto_if_ne _1554
	move_person_facing obj_D35R0102_aji_peru_4, 44, 0, 28, DIR_SOUTH
	goto _1535

_1535:
	compare VAR_UNK_40B1, 2
	goto_if_ne _157F
	move_person_facing obj_D35R0102_aji_peru_5, 18, 0, 28, DIR_WEST
	goto _159E

_1554:
	move_person_facing obj_D35R0102_aji_peru_4, 44, 0, 28, DIR_NORTH
	compare VAR_UNK_40B1, 2
	goto_if_ne _157F
	move_person_facing obj_D35R0102_aji_peru_5, 18, 0, 28, DIR_WEST
	goto _159E

_157F:
	compare VAR_UNK_40B1, 1
	goto_if_ne _15A0
	move_person_facing obj_D35R0102_aji_peru_5, 18, 0, 28, DIR_SOUTH
	goto _159E

_159E:
	end

_15A0:
	move_person_facing obj_D35R0102_aji_peru_5, 18, 0, 28, DIR_NORTH
	end

	.balign 4
_15AE:

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
_15DA:

	step 75, 1
	step 63, 2
	step_end
	.balign 4
_15E6:

	step 1, 1
	step_end
	.balign 4
_15EE:

	step 23, 11
	step 0, 2
	step_end
	.balign 4
_15FA:

	step 1, 2
	step 63, 2
	step_end
	.balign 4
_1606:

	step 2, 2
	step 22, 10
	step_end
	.balign 4
_1612:

	step 0, 1
	step_end
	.balign 4
_161A:

	step 22, 9
	step 0, 2
	step_end
	.balign 4
_1626:

	step 3, 2
	step 23, 10
	step_end
	.balign 4
_1632:

	step 23, 11
	step 0, 2
	step_end
	.balign 4
_163E:

	step 2, 2
	step 22, 10
	step_end
	.balign 4
_164A:

	step 23, 11
	step 0, 2
	step_end
	.balign 4
_1656:

	step 2, 2
	step 22, 10
	step_end
	.balign 4
_1662:

	step 22, 9
	step 0, 2
	step_end
	.balign 4
_166E:

	step 3, 2
	step 23, 10
	step_end
	.balign 4
_167A:

	step 23, 11
	step 1, 2
	step_end
	.balign 4
_1686:

	step 0, 2
	step 63, 2
	step_end
	.balign 4
_1692:

	step 2, 1
	step_end
	.balign 4
_169A:

	step 22, 9
	step 1, 2
	step_end
	.balign 4
_16A6:

	step 23, 11
	step 1, 2
	step_end
	.balign 4
_16B2:

	step 23, 11
	step 1, 2
	step_end
	.balign 4
_16BE:

	step 22, 9
	step 1, 2
	step_end
	.balign 4
