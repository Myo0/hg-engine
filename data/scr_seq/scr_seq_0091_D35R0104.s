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

.include "data/scr_seq/include/event_D35R0104.inc"


// text archive to grab from: 114.txt

.data


scrdef scr_seq_D35R0104_000
scrdef scr_seq_D35R0104_001
scrdef scr_seq_D35R0104_002
scrdef scr_seq_D35R0104_003
scrdef scr_seq_D35R0104_004
scrdef scr_seq_D35R0104_005
scrdef scr_seq_D35R0104_006
scrdef scr_seq_D35R0104_007
scrdef scr_seq_D35R0104_008
scrdef scr_seq_D35R0104_009
scrdef scr_seq_D35R0104_010
scrdef scr_seq_D35R0104_011
scrdef scr_seq_D35R0104_012
scrdef scr_seq_D35R0104_013
scrdef_end

scr_seq_D35R0104_000:
	simple_npc_msg 2
	end

scr_seq_D35R0104_001:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _06CC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D35R0104_wataru, _06D4
	wait_movement
	apply_movement obj_D35R0104_wataru, _06DC
	apply_movement obj_D35R0104_follower_mon_static_dragonite, _06EC
	wait_movement
	buffer_players_name 0
	gender_msgbox 0, 1
	closemsg
	apply_movement obj_D35R0104_wataru, _0704
	apply_movement obj_D35R0104_follower_mon_static_dragonite, _070C
	wait_movement
	hide_person obj_D35R0104_wataru
	hide_person obj_D35R0104_follower_mon_static_dragonite
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_LANCE
	releaseall
	setvar VAR_UNK_40AC, 1
	end

scr_seq_D35R0104_002:
	scrcmd_609
	lockall
	apply_movement obj_player, _06D4
	wait_movement
	callstd std_play_rival_intro_music
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_RIVAL
	show_person obj_D35R0104_gsrivel
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 17
	goto_if_ne _039A
	apply_movement obj_D35R0104_gsrivel, _071C
	goto _03B5

scr_seq_D35R0104_003:
	scrcmd_609
	lockall
	apply_movement obj_player, _06D4
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 23
	goto_if_ne _0421
	apply_movement obj_player, _0728
	goto _04FD

scr_seq_D35R0104_004:
	compare VAR_UNK_40AC, 4
	goto_if_ge _05D1
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_not_defeated TRAINER_TEAM_ROCKET_F_GRUNT_5, _05D3
	goto_if_not_defeated TRAINER_TEAM_ROCKET_GRUNT_19, _05D3
	buffer_players_name 0
	npc_msg 12
	closemsg
	play_se SEQ_SE_DP_DOOR10
	apply_movement obj_D35R0104_babyboy1_9, _0738
	apply_movement obj_D35R0104_babyboy1_9_2, _0738
	wait_movement
	releaseall
	end

scr_seq_D35R0104_005:
	simple_npc_msg 8
	setflag FLAG_UNK_0D3
	end

scr_seq_D35R0104_006:
	goto_if_not_defeated TRAINER_TEAM_ROCKET_F_GRUNT_5, _05DE
	goto_if_not_defeated TRAINER_TEAM_ROCKET_GRUNT_19, _05DE
	compare VAR_UNK_40AC, 3
	goto_if_ge _05DE
	setvar VAR_UNK_40AC, 2
	end

scr_seq_D35R0104_007:
	scrcmd_609
	lockall
	apply_movement obj_D35R0104_follower_mon_static_murkrow_2, _0740
	wait_movement
	npc_msg 10
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D35R0104_follower_mon_static_murkrow_2, _0748
	apply_movement obj_player, _0758
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setvar VAR_UNK_40AC, 6
	hide_person obj_D35R0104_follower_mon_static_murkrow_2
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_MURKROW_2
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_2
	releaseall
	end

scr_seq_D35R0104_008:
	compare VAR_UNK_40AC, 4
	goto_if_ge _05E0
	end

scr_seq_D35R0104_009:
	lockall
	goto_if_set FLAG_UNK_A0A, _05FA
	stop_bgm 0
	play_bgm SEQ_GS_EYE_ROCKET
	faceplayer
	npc_msg 14
	closemsg
	trainer_battle TRAINER_SCIENTIST_GS_ROSS, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0609
	reset_bgm
	npc_msg 15
	wait_button
	closemsg
	setflag FLAG_UNK_A0A
	addvar VAR_UNK_404A, 1
	releaseall
	end

scr_seq_D35R0104_010:
	lockall
	goto_if_set FLAG_UNK_A0B, _060D
	stop_bgm 0
	play_bgm SEQ_GS_EYE_ROCKET
	faceplayer
	npc_msg 16
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_F_GRUNT_5, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0609
	reset_bgm
	npc_msg 17
	wait_button
	closemsg
	setflag FLAG_UNK_A0B
	settrainerflag TRAINER_TEAM_ROCKET_F_GRUNT_5
	addvar VAR_UNK_404A, 1
	releaseall
	end

scr_seq_D35R0104_011:
	lockall
	goto_if_set FLAG_UNK_A0C, _0620
	stop_bgm 0
	play_bgm SEQ_GS_EYE_ROCKET
	faceplayer
	npc_msg 19
	closemsg
	trainer_battle TRAINER_SCIENTIST_GS_MITCH, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0609
	reset_bgm
	npc_msg 20
	wait_button
	closemsg
	setflag FLAG_UNK_A0C
	addvar VAR_UNK_404A, 1
	releaseall
	end

scr_seq_D35R0104_012:
	lockall
	goto_if_set FLAG_UNK_A0D, _062F
	stop_bgm 0
	play_bgm SEQ_GS_EYE_ROCKET
	faceplayer
	npc_msg 22
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_19, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0609
	reset_bgm
	npc_msg 23
	wait_button
	closemsg
	setflag FLAG_UNK_A0D
	settrainerflag TRAINER_TEAM_ROCKET_GRUNT_19
	addvar VAR_UNK_404A, 1
	releaseall
	end

scr_seq_D35R0104_013:
	lockall
	play_se SEQ_SE_DP_SELECT
	compare VAR_UNK_404A, 4
	goto_if_lt _0642
	npc_msg 26
	closemsg
	apply_movement obj_D35R0104_rocketm_3, _06D4
	wait_movement
	npc_msg 27
	closemsg
	apply_movement obj_player, _0764
	apply_movement obj_D35R0104_rocketm_3, _077C
	wait_movement
	hide_person obj_D35R0104_rocketm_3
	setflag FLAG_UNK_A0E
	releaseall
	end

_039A:
	compare VAR_TEMP_x4001, 18
	goto_if_ne _0651
	apply_movement obj_D35R0104_gsrivel, _078C
	goto _03B5

_03B5:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0798
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_rivals_name 0
	npc_msg 3
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_D35R0104_gsrivel, _07A0
	apply_movement obj_player, _07A8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D35R0104_gsrivel, _07BC
	wait_movement
	callstd std_fade_end_rival_intro_music
	hide_person obj_D35R0104_gsrivel
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_RIVAL
	releaseall
	setvar VAR_UNK_40AC, 3
	end

_0421:
	apply_movement obj_player, _07D4
	apply_movement obj_D35R0104_sakaki, _07E4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	npc_msg 4
	closemsg
	apply_movement obj_D35R0104_sakaki, _07F0
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_D35R0104_sakaki, _07FC
	wait_movement
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_PETREL
	show_person obj_D35R0104_rkanbum2
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_GIOVANNI
	hide_person obj_D35R0104_sakaki
	apply_movement obj_D35R0104_rkanbum2, _0820
	wait_movement
	npc_msg 6
	closemsg
	trainer_battle TRAINER_EXECUTIVE_PETREL_PETREL_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06C5
	npc_msg 7
	closemsg
	apply_movement obj_D35R0104_rkanbum2, _0844
	wait_movement
	hide_person obj_D35R0104_rkanbum2
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_PETREL
	apply_movement obj_D35R0104_follower_mon_static_murkrow, _0880
	wait_movement
	npc_msg 8
	closemsg
	npc_msg 9
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D35R0104_follower_mon_static_murkrow, _0890
	apply_movement obj_player, _08B0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setvar VAR_UNK_40AC, 4
	hide_person obj_D35R0104_follower_mon_static_murkrow
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_MURKROW_1
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_1
	releaseall
	end

_04FD:
	apply_movement obj_D35R0104_sakaki, _07E4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	npc_msg 4
	closemsg
	apply_movement obj_D35R0104_sakaki, _07F0
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_D35R0104_sakaki, _07FC
	wait_movement
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_PETREL
	show_person obj_D35R0104_rkanbum2
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_GIOVANNI
	hide_person obj_D35R0104_sakaki
	apply_movement obj_D35R0104_rkanbum2, _0820
	wait_movement
	npc_msg 6
	closemsg
	trainer_battle TRAINER_EXECUTIVE_PETREL_PETREL_2, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06C5
	npc_msg 7
	closemsg
	apply_movement obj_D35R0104_rkanbum2, _0844
	wait_movement
	hide_person obj_D35R0104_rkanbum2
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_PETREL
	apply_movement obj_D35R0104_follower_mon_static_murkrow, _0880
	wait_movement
	npc_msg 8
	closemsg
	npc_msg 9
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D35R0104_follower_mon_static_murkrow, _0890
	apply_movement obj_player, _08B0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setvar VAR_UNK_40AC, 4
	hide_person obj_D35R0104_follower_mon_static_murkrow
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_MURKROW_1
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_1
	releaseall
	end

_05D1:
	end

_05D3:
	npc_msg 11
	wait_button
	closemsg
	releaseall
	end

_05DE:
	end

_05E0:
	move_person_facing obj_D35R0104_babyboy1_9, 22, 0, 15, DIR_NORTH
	move_person_facing obj_D35R0104_babyboy1_9_2, 22, 0, 15, DIR_NORTH
	end

_05FA:
	play_se SEQ_SE_DP_SELECT
	faceplayer
	npc_msg 13
	closemsg
	releaseall
	end

_0609:
	white_out
	end

_060D:
	play_se SEQ_SE_DP_SELECT
	faceplayer
	npc_msg 18
	settrainerflag TRAINER_TEAM_ROCKET_F_GRUNT_5
	closemsg
	releaseall
	end

_0620:
	play_se SEQ_SE_DP_SELECT
	faceplayer
	npc_msg 21
	closemsg
	releaseall
	end

_062F:
	play_se SEQ_SE_DP_SELECT
	faceplayer
	settrainerflag TRAINER_TEAM_ROCKET_GRUNT_19
	npc_msg 24
	closemsg
	releaseall
	end

_0642:
	play_se SEQ_SE_DP_SELECT
	faceplayer
	npc_msg 25
	closemsg
	releaseall
	end

_0651:
	apply_movement obj_D35R0104_gsrivel, _08C4
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0798
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_rivals_name 0
	npc_msg 3
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_D35R0104_gsrivel, _07A0
	apply_movement obj_player, _07A8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D35R0104_gsrivel, _07BC
	wait_movement
	callstd std_fade_end_rival_intro_music
	hide_person obj_D35R0104_gsrivel
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_RIVAL
	releaseall
	setvar VAR_UNK_40AC, 3
	end

_06C5:
	white_out
	releaseall
	end

	.byte 0x00
	.balign 4
_06CC:

	step 14, 1
	step_end
	.balign 4
_06D4:

	step 75, 1
	step_end
	.balign 4
_06DC:

	step 33, 1
	step 13, 3
	step 15, 3
	step_end
	.balign 4
_06EC:

	step 63, 1
	step 61, 1
	step 14, 1
	step 13, 3
	step 15, 2
	step_end
	.balign 4
_0704:

	step 14, 9
	step_end
	.balign 4
_070C:

	step 61, 1
	step 15, 1
	step 14, 9
	step_end
	.balign 4
_071C:

	step 13, 9
	step 15, 2
	step_end
	.balign 4
_0728:

	step 12, 5
	step 14, 1
	step 34, 1
	step_end
	.balign 4
_0738:

	step 14, 3
	step_end
	.balign 4
_0740:

	step 51, 2
	step_end
	.balign 4
_0748:

	step 1, 1
	step 49, 1
	step 17, 10
	step_end
	.balign 4
_0758:

	step 63, 1
	step 33, 1
	step_end
	.balign 4
_0764:

	step 62, 2
	step 71, 1
	step 18, 1
	step 72, 1
	step 1, 1
	step_end
	.balign 4
_077C:

	step 63, 1
	step 22, 1
	step 21, 9
	step_end
	.balign 4
_078C:

	step 13, 10
	step 15, 2
	step_end
	.balign 4
_0798:

	step 14, 2
	step_end
	.balign 4
_07A0:

	step 19, 1
	step_end
	.balign 4
_07A8:

	step 71, 1
	step 19, 1
	step 55, 1
	step 72, 1
	step_end
	.balign 4
_07BC:

	step 40, 1
	step 42, 1
	step 63, 1
	step 14, 2
	step 12, 9
	step_end
	.balign 4
_07D4:

	step 12, 5
	step 14, 2
	step 34, 1
	step_end
	.balign 4
_07E4:

	step 63, 4
	step 35, 1
	step_end
	.balign 4
_07F0:

	step 75, 1
	step 63, 2
	step_end
	.balign 4
_07FC:

	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step_end
	.balign 4
_0820:

	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step 1, 1
	step 2, 1
	step 0, 1
	step 3, 1
	step_end
	.balign 4
_0844:

	step 71, 1
	step 10, 1
	step 72, 1
	step 63, 1
	step 17, 5
	step 71, 1
	step 52, 1
	step 72, 1
	step 17, 1
	step 19, 3
	step 17, 5
	step 18, 7
	step 16, 12
	step 18, 4
	step_end
	.balign 4
_0880:

	step 13, 3
	step 15, 2
	step 51, 2
	step_end
	.balign 4
_0890:

	step 1, 1
	step 17, 1
	step 19, 2
	step 17, 9
	step 18, 7
	step 16, 13
	step 18, 5
	step_end
	.balign 4
_08B0:

	step 63, 3
	step 1, 1
	step 63, 3
	step 13, 3
	step_end
	.balign 4
_08C4:

	step 13, 11
	step 15, 2
	step_end
	.balign 4
