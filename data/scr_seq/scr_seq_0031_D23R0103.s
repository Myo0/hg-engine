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

.include "data/scr_seq/include/event_D23R0103.inc"


// text archive to grab from: 067.txt

.data


scrdef scr_seq_D23R0103_000
scrdef scr_seq_D23R0103_001
scrdef scr_seq_D23R0103_002
scrdef scr_seq_D23R0103_003
scrdef scr_seq_D23R0103_004
scrdef scr_seq_D23R0103_005
scrdef scr_seq_D23R0103_006
scrdef scr_seq_D23R0103_007
scrdef scr_seq_D23R0103_008
scrdef scr_seq_D23R0103_009
scrdef_end

scr_seq_D23R0103_000:
	setflag FLAG_HIDE_ROCKET_TAKEOVER_1
	setflag FLAG_HIDE_ROCKET_TAKEOVER_2
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _027A
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_1
	goto _028D

scr_seq_D23R0103_001:
	simple_npc_msg 15
	end

scr_seq_D23R0103_002:
	simple_npc_msg 16
	end

scr_seq_D23R0103_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _028F
	npc_msg 1
	goto _029A

scr_seq_D23R0103_004:
	simple_npc_msg 0
	end

scr_seq_D23R0103_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _02A2
	getitemquantity ITEM_BASEMENT_KEY, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _02A8
	npc_msg 3
	goto _02B3

scr_seq_D23R0103_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	getitemquantity ITEM_CARD_KEY_JOHTO, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _02BB
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

scr_seq_D23R0103_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_090, _02E9
	npc_msg 11
	closemsg
	getitemquantity ITEM_CARD_KEY_JOHTO, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _02BB
	npc_msg 13
	wait_button
	closemsg
	releaseall
	end

scr_seq_D23R0103_008:
	lockall
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	play_bgm SEQ_GS_EYE_ROCKET
	apply_movement obj_D23R0103_rocketm_2, _035C
	wait_movement
	compare VAR_TEMP_x4001, 5
	goto_if_eq _016B
	compare VAR_TEMP_x4001, 6
	goto_if_eq _0179
	apply_movement obj_D23R0103_rocketm_2, _0384
	goto _0187

_016B:
	apply_movement obj_D23R0103_rocketm_2, _0364
	goto _0187

_0179:
	apply_movement obj_D23R0103_rocketm_2, _0374
	goto _0187

_0187:
	wait_movement
	apply_movement obj_player, _03C8
	wait_movement
	npc_msg 18
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_7, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0263
	apply_movement obj_D23R0103_rocketm_2, _0394
	wait_movement
	npc_msg 19
	closemsg
	play_bgm SEQ_GS_EYE_ROCKET
	apply_movement obj_D23R0103_rocketw, _035C
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 5
	goto_if_eq _0204
	compare VAR_TEMP_x4001, 6
	goto_if_eq _021C
	apply_movement obj_D23R0103_rocketw, _03C0
	apply_movement obj_player, _03D0
	goto _0234

_0204:
	apply_movement obj_D23R0103_rocketw, _03A8
	wait_movement
	apply_movement obj_player, _03D8
	goto _0234

_021C:
	apply_movement obj_D23R0103_rocketw, _03B4
	wait_movement
	apply_movement obj_player, _03D8
	goto _0234

_0234:
	wait_movement
	npc_msg 20
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_8, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0263
	npc_msg 21
	closemsg
	setvar VAR_UNK_405B, 1
	releaseall
	end

_0263:
	white_out
	releaseall
	end

scr_seq_D23R0103_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 17
	closemsg
	releaseall
	end

_027A:
	compare VAR_SCENE_ROCKET_TAKEOVER, 5
	goto_if_ne _028D
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_2
	end

_028D:
	end

_028F:
	npc_msg 2
	wait_button
	closemsg
	releaseall
	end

_029A:
	wait_button
	closemsg
	releaseall
	end

_02A2:
	goto _02F4

_02A8:
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

_02B3:
	wait_button
	closemsg
	releaseall
	end

_02BB:
	buffer_players_name 0
	npc_msg 12
	closemsg
	apply_movement obj_D23R0103_babyboy1_9, _034C
	apply_movement obj_D23R0103_babyboy1_9_2, _0354
	wait_movement
	releaseall
	setflag FLAG_UNK_1BF
	hide_person obj_D23R0103_babyboy1_9
	hide_person obj_D23R0103_babyboy1_9_2
	setflag FLAG_UNK_090
	end

_02E9:
	npc_msg 14
	wait_button
	closemsg
	releaseall
	end

_02F4:
	goto_if_set FLAG_GOT_TM11_FROM_RADIO_TOWER_WOMAN, _0336
	npc_msg 5
	goto_if_no_item_space ITEM_TM118, 1, _0341
	callstd std_give_item_verbose
	npc_msg 7
	wait_button
	closemsg
	releaseall
	setflag FLAG_GOT_TM11_FROM_RADIO_TOWER_WOMAN
	end

_0336:
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_0341:
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

	.balign 4
_034C:

	step 14, 2
	step_end
	.balign 4
_0354:

	step 15, 2
	step_end
	.balign 4
_035C:

	step 75, 1
	step_end
	.balign 4
_0364:

	step 15, 3
	step 12, 4
	step 3, 1
	step_end
	.balign 4
_0374:

	step 15, 3
	step 12, 3
	step 3, 1
	step_end
	.balign 4
_0384:

	step 15, 3
	step 12, 2
	step 3, 1
	step_end
	.balign 4
_0394:

	step 75, 1
	step 71, 1
	step 14, 1
	step 72, 1
	step_end
	.balign 4
_03A8:

	step 14, 1
	step 12, 1
	step_end
	.balign 4
_03B4:

	step 14, 1
	step 0, 1
	step_end
	.balign 4
_03C0:

	step 2, 1
	step_end
	.balign 4
_03C8:

	step 2, 1
	step_end
	.balign 4
_03D0:

	step 3, 1
	step_end
	.balign 4
_03D8:

	step 1, 1
	step_end
	.balign 4
