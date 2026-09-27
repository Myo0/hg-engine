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

.include "data/scr_seq/include/event_T30GYM0101.inc"


// text archive to grab from: 631.txt

.data


scrdef scr_seq_T30GYM0101_000
scrdef scr_seq_T30GYM0101_001
scrdef scr_seq_T30GYM0101_002
scrdef scr_seq_T30GYM0101_003
scrdef scr_seq_T30GYM0101_004
scrdef scr_seq_T30GYM0101_005
scrdef_end

scr_seq_T30GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0EA, _0187
	goto_if_set FLAG_UNK_0D1, _01CC
	npc_msg 3
	closemsg
	trainer_battle TRAINER_LEADER_CLAIR_CLAIR, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _01D7
	settrainerflag TRAINER_ACE_TRAINER_M_PAULO
	settrainerflag TRAINER_ACE_TRAINER_M_CODY
	settrainerflag TRAINER_ACE_TRAINER_M_MIKE
	settrainerflag TRAINER_ACE_TRAINER_F_FRAN
	settrainerflag TRAINER_ACE_TRAINER_F_LOLA
	setflag FLAG_UNK_A69
	setflag FLAG_UNK_A11
	setvar VAR_UNK_416F, 75
	add_special_game_stat 22
	setflag FLAG_UNK_0D1
	setflag FLAG_HIDE_BLACKTHORN_DEN_GUARD_INFRONT
	clearflag FLAG_HIDE_BLACKTHRON_DEN_GUARD_ASIDE
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

scr_seq_T30GYM0101_001:
	blackthorn_gym_init
	setvar VAR_UNK_4120, 0
	get_phone_book_rematch PHONE_CONTACT_CLAIR, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _01DD
	compare VAR_UNK_40FC, 2
	goto_if_ge _01E3
	end

scr_seq_T30GYM0101_002:
	scrcmd_609
	lockall
	play_se SEQ_SE_DP_GYURU
	apply_movement obj_player, _03E0
	wait_movement
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T30GYM0101, 0, 8, 83, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T30GYM0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0D1, _0211
	npc_msg 0
	scrcmd_600
	set_follow_poke_inhibit_state 1
	scrcmd_607
	scrcmd_109 253, 56
	setvar VAR_UNK_4120, 1
	wait_button
	closemsg
	releaseall
	end

scr_seq_T30GYM0101_004:
	scrcmd_609
	lockall
	goto_if_set FLAG_UNK_138, _021C
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 12
	goto_if_ne _0239
	apply_movement obj_T30GYM0101_sunglasses, _0428
	apply_movement obj_player, _0438
	goto _025C

scr_seq_T30GYM0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_RISING, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0282
	npc_msg 10
	goto _028D

_0187:
	goto_if_set FLAG_GOT_TM59_FROM_CLAIR, _0295
	npc_msg 6
	goto_if_no_item_space ITEM_TM059, 1, _02A0
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM59_FROM_CLAIR
	npc_msg 7
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_01CC:
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

_01D7:
	white_out
	releaseall
	end

_01DD:
	setflag FLAG_UNK_2EF
	end

_01E3:
	check_registered_phone_number PHONE_CONTACT_CLAIR, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _02AB
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _02C6
	setflag FLAG_UNK_2EF
	goto _02DD

_0211:
	npc_msg 1
	wait_button
	closemsg
	releaseall
	end

_021C:
	scrcmd_600
	set_follow_poke_inhibit_state 1
	scrcmd_607
	scrcmd_109 253, 56
	setvar VAR_UNK_4120, 1
	setvar VAR_UNK_4120, 1
	releaseall
	end

_0239:
	compare VAR_TEMP_x4000, 13
	goto_if_ne _02DF
	apply_movement obj_T30GYM0101_sunglasses, _0444
	apply_movement obj_player, _0454
	goto _025C

_025C:
	wait_movement
	npc_msg 2
	closemsg
	setflag FLAG_UNK_138
	compare VAR_TEMP_x4000, 12
	goto_if_ne _0315
	apply_movement obj_T30GYM0101_sunglasses, _0460
	goto _0330

_0282:
	npc_msg 11
	wait_button
	closemsg
	releaseall
	end

_028D:
	wait_button
	closemsg
	releaseall
	end

_0295:
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_02A0:
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

_02AB:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 16
	goto_if_ne _034F
	setflag FLAG_UNK_2EF
	goto _0366

_02C6:
	compare VAR_TEMP_x4000, 7
	goto_if_ne _0368
	setflag FLAG_UNK_2EF
	goto _02DD

_02DD:
	end

_02DF:
	apply_movement obj_T30GYM0101_sunglasses, _046C
	apply_movement obj_player, _0478
	wait_movement
	npc_msg 2
	closemsg
	setflag FLAG_UNK_138
	compare VAR_TEMP_x4000, 12
	goto_if_ne _0315
	apply_movement obj_T30GYM0101_sunglasses, _0460
	goto _0330

_0315:
	compare VAR_TEMP_x4000, 13
	goto_if_ne _037F
	apply_movement obj_T30GYM0101_sunglasses, _0484
	goto _0330

_0330:
	wait_movement
	scrcmd_600
	set_follow_poke_inhibit_state 1
	scrcmd_607
	scrcmd_109 253, 56
	setvar VAR_UNK_4120, 1
	setvar VAR_UNK_4120, 1
	releaseall
	end

_034F:
	compare VAR_TEMP_x4000, 17
	goto_if_ne _03A6
	setflag FLAG_UNK_2EF
	goto _0366

_0366:
	end

_0368:
	compare VAR_TEMP_x4000, 8
	goto_if_ne _03BD
	setflag FLAG_UNK_2EF
	goto _02DD

_037F:
	apply_movement obj_T30GYM0101_sunglasses, _0490
	wait_movement
	scrcmd_600
	set_follow_poke_inhibit_state 1
	scrcmd_607
	scrcmd_109 253, 56
	setvar VAR_UNK_4120, 1
	setvar VAR_UNK_4120, 1
	releaseall
	end

_03A6:
	compare VAR_TEMP_x4000, 18
	goto_if_ne _03D4
	setflag FLAG_UNK_2EF
	goto _0366

_03BD:
	compare VAR_TEMP_x4000, 9
	goto_if_ne _03DA
	setflag FLAG_UNK_2EF
	goto _02DD

_03D4:
	clearflag FLAG_UNK_2EF
	end

_03DA:
	clearflag FLAG_UNK_2EF
	end

	.balign 4
_03E0:

	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 1
	step 69, 0
	step_end
	.balign 4
_0428:

	step 2, 1
	step 75, 1
	step 14, 2
	step_end
	.balign 4
_0438:

	step 63, 5
	step 3, 1
	step_end
	.balign 4
_0444:

	step 2, 1
	step 75, 1
	step 14, 1
	step_end
	.balign 4
_0454:

	step 63, 4
	step 3, 1
	step_end
	.balign 4
_0460:

	step 15, 2
	step 1, 1
	step_end
	.balign 4
_046C:

	step 2, 1
	step 75, 1
	step_end
	.balign 4
_0478:

	step 63, 2
	step 3, 1
	step_end
	.balign 4
_0484:

	step 15, 1
	step 1, 1
	step_end
	.balign 4
_0490:

	step 1, 1
	step_end
	.balign 4
