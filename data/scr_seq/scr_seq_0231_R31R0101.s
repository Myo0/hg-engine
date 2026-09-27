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

.include "data/scr_seq/include/event_R31R0101.inc"


// text archive to grab from: 379.txt

.data


scrdef scr_seq_R31R0101_000
scrdef scr_seq_R31R0101_001
scrdef scr_seq_R31R0101_002
scrdef_end

scr_seq_R31R0101_000:
	scrcmd_609
	lockall
	callstd std_play_friend_music
	apply_movement obj_R31R0101_follower_mon_static_marill, _0510
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	move_person_facing obj_R31R0101_var_1, 10, 1, 7, DIR_WEST
	move_person_facing obj_R31R0101_follower_mon_static_marill, 10, 1, 7, DIR_WEST
	apply_movement obj_R31R0101_var_1, _0518
	wait_movement
	wait_se SEQ_SE_DP_KAIDAN2
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	scrcmd_729 VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_ne _009D
	compare VAR_TEMP_x4001, 6
	goto_if_ne _00C0
	apply_movement obj_R31R0101_var_1, _0520
	apply_movement obj_R31R0101_follower_mon_static_marill, _0530
	goto _00E3

scr_seq_R31R0101_001:
	get_friend_sprite VAR_OBJ_0
	end

scr_seq_R31R0101_002:
	simple_npc_msg 0
	end

_009D:
	compare VAR_TEMP_x4001, 6
	goto_if_ne _00E9
	apply_movement obj_R31R0101_var_1, _0548
	apply_movement obj_R31R0101_follower_mon_static_marill, _0558
	goto _010C

_00C0:
	compare VAR_TEMP_x4001, 7
	goto_if_ne _01B2
	apply_movement obj_R31R0101_var_1, _0570
	apply_movement obj_R31R0101_follower_mon_static_marill, _0578
	goto _00E3

_00E3:
	goto _010C

_00E9:
	compare VAR_TEMP_x4001, 7
	goto_if_ne _01C8
	apply_movement obj_R31R0101_var_1, _0588
	apply_movement obj_R31R0101_follower_mon_static_marill, _0590
	goto _010C

_010C:
	wait_movement
	apply_movement obj_player, _05A0
	compare VAR_TEMP_x4002, 1
	goto_if_ne _027E
	apply_movement obj_partner_poke, _05A0
	wait_movement
	buffer_players_name 0
	gender_msgbox 2, 3
	giveitem_no_check ITEM_VS_RECORDER, 1
	gender_msgbox 4, 5
	closemsg
	get_player_gender VAR_UNK_416E
	compare VAR_UNK_416E, 0
	call_if_ne _02E7
	call_if_eq _0325
	gender_msgbox 8, 9
	closemsg
	apply_movement obj_R31R0101_var_1, _05A0
	wait_movement
	gender_msgbox 6, 7
	closemsg
	apply_movement obj_R31R0101_follower_mon_static_marill, _05A8
	wait_movement
	compare VAR_TEMP_x4002, 1
	goto_if_ne _0363
	compare VAR_TEMP_x4001, 6
	goto_if_ne _0386
	apply_movement obj_R31R0101_var_1, _05B0
	apply_movement obj_R31R0101_follower_mon_static_marill, _05C0
	goto _03A9

_01B2:
	apply_movement obj_R31R0101_var_1, _05D8
	apply_movement obj_R31R0101_follower_mon_static_marill, _05E8
	goto _010C

_01C8:
	apply_movement obj_R31R0101_var_1, _0600
	apply_movement obj_R31R0101_follower_mon_static_marill, _0610
	wait_movement
	apply_movement obj_player, _05A0
	compare VAR_TEMP_x4002, 1
	goto_if_ne _027E
	apply_movement obj_partner_poke, _05A0
	wait_movement
	buffer_players_name 0
	gender_msgbox 2, 3
	giveitem_no_check ITEM_VS_RECORDER, 1
	gender_msgbox 4, 5
	closemsg
	get_player_gender VAR_UNK_416E
	compare VAR_UNK_416E, 0
	call_if_ne _02E7
	call_if_eq _0325
	gender_msgbox 8, 9
	closemsg
	apply_movement obj_R31R0101_var_1, _05A0
	wait_movement
	gender_msgbox 6, 7
	closemsg
	apply_movement obj_R31R0101_follower_mon_static_marill, _05A8
	wait_movement
	compare VAR_TEMP_x4002, 1
	goto_if_ne _0363
	compare VAR_TEMP_x4001, 6
	goto_if_ne _0386
	apply_movement obj_R31R0101_var_1, _05B0
	apply_movement obj_R31R0101_follower_mon_static_marill, _05C0
	goto _03A9

_027E:
	wait_movement
	buffer_players_name 0
	gender_msgbox 2, 3
	giveitem_no_check ITEM_VS_RECORDER, 1
	gender_msgbox 4, 5
	closemsg
	apply_movement obj_R31R0101_var_1, _05A0
	wait_movement
	gender_msgbox 6, 7
	closemsg
	apply_movement obj_R31R0101_follower_mon_static_marill, _05A8
	wait_movement
	compare VAR_TEMP_x4002, 1
	goto_if_ne _0363
	compare VAR_TEMP_x4001, 6
	goto_if_ne _0386
	apply_movement obj_R31R0101_var_1, _05B0
	apply_movement obj_R31R0101_follower_mon_static_marill, _05C0
	goto _03A9

_02E7:
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 703
	call_if_eq _03AF
	compare VAR_SPECIAL_RESULT, 258
	call_if_eq _03B9
	compare VAR_SPECIAL_RESULT, 152
	call_if_eq _03C3
	check_battle_won VAR_UNK_416D
	compare VAR_UNK_416D, 0
	goto_if_eq _03CD
	return

_0325:
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 703
	call_if_eq _03D3
	compare VAR_SPECIAL_RESULT, 258
	call_if_eq _03DD
	compare VAR_SPECIAL_RESULT, 152
	call_if_eq _03E7
	check_battle_won VAR_UNK_416D
	compare VAR_UNK_416D, 0
	goto_if_eq _03CD
	return

_0363:
	compare VAR_TEMP_x4001, 6
	goto_if_ne _03F1
	apply_movement obj_R31R0101_var_1, _0628
	apply_movement obj_R31R0101_follower_mon_static_marill, _0638
	goto _0414

_0386:
	compare VAR_TEMP_x4001, 7
	goto_if_ne _0467
	apply_movement obj_R31R0101_var_1, _0650
	apply_movement obj_R31R0101_follower_mon_static_marill, _0668
	goto _03A9

_03A9:
	goto _0414

_03AF:
	trainer_battle TRAINER_SUPER_NERD_MICKEY, 0, 0, 0
	return

_03B9:
	trainer_battle TRAINER_SUPER_NERD_MICKEY_4, 0, 0, 0
	return

_03C3:
	trainer_battle TRAINER_SUPER_NERD_MICKEY_5, 0, 0, 0
	return

_03CD:
	white_out
	releaseall
	end

_03D3:
	trainer_battle TRAINER_BIKER_MICKEY, 0, 0, 0
	return

_03DD:
	trainer_battle TRAINER_SUPER_NERD_MICKEY_2, 0, 0, 0
	return

_03E7:
	trainer_battle TRAINER_SUPER_NERD_MICKEY_3, 0, 0, 0
	return

_03F1:
	compare VAR_TEMP_x4001, 7
	goto_if_ne _047D
	apply_movement obj_R31R0101_var_1, _0688
	apply_movement obj_R31R0101_follower_mon_static_marill, _06A0
	goto _0414

_0414:
	wait 16, VAR_SPECIAL_RESULT
	apply_movement obj_player, _06C0
	compare VAR_TEMP_x4002, 1
	goto_if_ne _04E0
	apply_movement obj_partner_poke, _06C0
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	move_person_facing obj_R31R0101_var_1, 12, 0, 28, DIR_NORTH
	move_person_facing obj_R31R0101_follower_mon_static_marill, 12, 0, 28, DIR_NORTH
	callstd std_fade_end_friend_music
	releaseall
	setvar VAR_UNK_4132, 1
	end

_0467:
	apply_movement obj_R31R0101_var_1, _06C8
	apply_movement obj_R31R0101_follower_mon_static_marill, _06D8
	goto _0414

_047D:
	apply_movement obj_R31R0101_var_1, _06F0
	apply_movement obj_R31R0101_follower_mon_static_marill, _0700
	wait 16, VAR_SPECIAL_RESULT
	apply_movement obj_player, _06C0
	compare VAR_TEMP_x4002, 1
	goto_if_ne _04E0
	apply_movement obj_partner_poke, _06C0
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	move_person_facing obj_R31R0101_var_1, 12, 0, 28, DIR_NORTH
	move_person_facing obj_R31R0101_follower_mon_static_marill, 12, 0, 28, DIR_NORTH
	callstd std_fade_end_friend_music
	releaseall
	setvar VAR_UNK_4132, 1
	end

_04E0:
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	move_person_facing obj_R31R0101_var_1, 12, 0, 28, DIR_NORTH
	move_person_facing obj_R31R0101_follower_mon_static_marill, 12, 0, 28, DIR_NORTH
	callstd std_fade_end_friend_music
	releaseall
	setvar VAR_UNK_4132, 1
	end

	.balign 4
_0510:

	step 69, 1
	step_end
	.balign 4
_0518:

	step 75, 1
	step_end
	.balign 4
_0520:

	step 14, 2
	step 12, 1
	step 14, 1
	step_end
	.balign 4
_0530:

	step 63, 1
	step 70, 1
	step 14, 2
	step 12, 1
	step 34, 1
	step_end
	.balign 4
_0548:

	step 14, 2
	step 12, 1
	step 14, 2
	step_end
	.balign 4
_0558:

	step 63, 1
	step 70, 1
	step 14, 2
	step 12, 1
	step 14, 1
	step_end
	.balign 4
_0570:

	step 14, 3
	step_end
	.balign 4
_0578:

	step 63, 1
	step 70, 1
	step 14, 2
	step_end
	.balign 4
_0588:

	step 14, 4
	step_end
	.balign 4
_0590:

	step 63, 1
	step 70, 1
	step 14, 3
	step_end
	.balign 4
_05A0:

	step 35, 1
	step_end
	.balign 4
_05A8:

	step 50, 2
	step_end
	.balign 4
_05B0:

	step 89, 1
	step 90, 6
	step 69, 1
	step_end
	.balign 4
_05C0:

	step 61, 1
	step 18, 1
	step 17, 1
	step 18, 6
	step 69, 1
	step_end
	.balign 4
_05D8:

	step 14, 2
	step 13, 1
	step 14, 1
	step_end
	.balign 4
_05E8:

	step 63, 1
	step 70, 1
	step 14, 2
	step 13, 1
	step 34, 1
	step_end
	.balign 4
_0600:

	step 14, 2
	step 13, 1
	step 14, 2
	step_end
	.balign 4
_0610:

	step 63, 1
	step 70, 1
	step 14, 2
	step 13, 1
	step 14, 1
	step_end
	.balign 4
_0628:

	step 89, 1
	step 90, 5
	step 69, 1
	step_end
	.balign 4
_0638:

	step 61, 1
	step 18, 1
	step 17, 1
	step 18, 5
	step 69, 1
	step_end
	.balign 4
_0650:

	step 89, 1
	step 90, 4
	step 88, 1
	step 90, 2
	step 69, 1
	step_end
	.balign 4
_0668:

	step 61, 1
	step 18, 1
	step 17, 1
	step 18, 4
	step 16, 1
	step 18, 2
	step 69, 1
	step_end
	.balign 4
_0688:

	step 89, 1
	step 90, 3
	step 88, 1
	step 90, 2
	step 69, 1
	step_end
	.balign 4
_06A0:

	step 61, 1
	step 18, 1
	step 17, 1
	step 18, 3
	step 16, 1
	step 18, 2
	step 69, 1
	step_end
	.balign 4
_06C0:

	step 38, 1
	step_end
	.balign 4
_06C8:

	step 88, 1
	step 90, 6
	step 69, 1
	step_end
	.balign 4
_06D8:

	step 61, 1
	step 18, 1
	step 16, 1
	step 18, 6
	step 69, 1
	step_end
	.balign 4
_06F0:

	step 88, 1
	step 90, 5
	step 69, 1
	step_end
	.balign 4
_0700:

	step 61, 1
	step 18, 1
	step 16, 1
	step 18, 5
	step 69, 1
	step_end
	.balign 4
