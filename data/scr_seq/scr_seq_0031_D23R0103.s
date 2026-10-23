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
	goto_if_ne _0140
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_1
	goto _0153

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
	goto_if_ne _0155
	npc_msg 1
	goto _0160

scr_seq_D23R0103_004:
	simple_npc_msg 0
	end

scr_seq_D23R0103_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _0168
	getitemquantity ITEM_BASEMENT_KEY, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _016E
	npc_msg 3
	goto _0179

scr_seq_D23R0103_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	getitemquantity ITEM_CARD_KEY_JOHTO, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0181
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

scr_seq_D23R0103_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_090, _01AF
	npc_msg 11
	closemsg
	getitemquantity ITEM_CARD_KEY_JOHTO, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0181
	npc_msg 13
	wait_button
	closemsg
	releaseall
	end

scr_seq_D23R0103_008:
	lockall
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	play_bgm SEQ_GS_EYE_ROCKET
	apply_movement obj_D23R0103_rocketm_2, _rocket_emote
	wait_movement
	compare VAR_TEMP_x4001, 5
	goto_if_eq _rocket_g1_row5
	compare VAR_TEMP_x4001, 6
	goto_if_eq _rocket_g1_row6
	apply_movement obj_D23R0103_rocketm_2, _rocket_g1_walk_row7
	goto _rocket_g1_arrived

_rocket_g1_row5:
	apply_movement obj_D23R0103_rocketm_2, _rocket_g1_walk_row5
	goto _rocket_g1_arrived

_rocket_g1_row6:
	apply_movement obj_D23R0103_rocketm_2, _rocket_g1_walk_row6
	goto _rocket_g1_arrived

_rocket_g1_arrived:
	wait_movement
	apply_movement obj_player, _rocket_face_left
	wait_movement
	npc_msg 18
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_7, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _rocket_lost
	apply_movement obj_D23R0103_rocketm_2, _rocket_g1_after
	wait_movement
	npc_msg 19
	closemsg
	play_bgm SEQ_GS_EYE_ROCKET
	apply_movement obj_D23R0103_rocketw, _rocket_emote
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 5
	goto_if_eq _rocket_g2_row5
	compare VAR_TEMP_x4001, 6
	goto_if_eq _rocket_g2_row6
	apply_movement obj_D23R0103_rocketw, _rocket_g2_row7
	apply_movement obj_player, _rocket_face_right
	goto _rocket_g2_arrived

_rocket_g2_row5:
	apply_movement obj_D23R0103_rocketw, _rocket_g2_row5_walk
	wait_movement
	apply_movement obj_player, _rocket_face_down
	goto _rocket_g2_arrived

_rocket_g2_row6:
	apply_movement obj_D23R0103_rocketw, _rocket_g2_row6_walk
	wait_movement
	apply_movement obj_player, _rocket_face_down
	goto _rocket_g2_arrived

_rocket_g2_arrived:
	wait_movement
	npc_msg 20
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_8, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _rocket_lost
	npc_msg 21
	closemsg
	setvar VAR_UNK_405B, 1
	releaseall
	end

_rocket_lost:
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

_0140:
	compare VAR_SCENE_ROCKET_TAKEOVER, 5
	goto_if_ne _0153
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_2
	end

_0153:
	end

_0155:
	npc_msg 2
	wait_button
	closemsg
	releaseall
	end

_0160:
	wait_button
	closemsg
	releaseall
	end

_0168:
	goto _01BA

_016E:
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

_0179:
	wait_button
	closemsg
	releaseall
	end

_0181:
	buffer_players_name 0
	npc_msg 12
	closemsg
	apply_movement obj_D23R0103_babyboy1_9, _0212
	apply_movement obj_D23R0103_babyboy1_9_2, _021A
	wait_movement
	releaseall
	setflag FLAG_UNK_1BF
	hide_person obj_D23R0103_babyboy1_9
	hide_person obj_D23R0103_babyboy1_9_2
	setflag FLAG_UNK_090
	end

_01AF:
	npc_msg 14
	wait_button
	closemsg
	releaseall
	end

_01BA:
	goto_if_set FLAG_GOT_TM11_FROM_RADIO_TOWER_WOMAN, _01FC
	npc_msg 5
	goto_if_no_item_space ITEM_TM118, 1, _0207
	callstd std_give_item_verbose
	npc_msg 7
	wait_button
	closemsg
	releaseall
	setflag FLAG_GOT_TM11_FROM_RADIO_TOWER_WOMAN
	end

_01FC:
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_0207:
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

	.balign 4
_0212:

	step 14, 2
	step_end
	.balign 4
_021A:

	step 15, 2
	step_end
	.balign 4
_rocket_emote:

	step MOVEMENT_EMOTE_EXCLAMATION, 1
	step_end
	.balign 4
_rocket_g1_walk_row5:

	step MOVEMENT_STEP_RIGHT, 3
	step MOVEMENT_STEP_UP, 4
	step MOVEMENT_FACE_RIGHT, 1
	step_end
	.balign 4
_rocket_g1_walk_row6:

	step MOVEMENT_STEP_RIGHT, 3
	step MOVEMENT_STEP_UP, 3
	step MOVEMENT_FACE_RIGHT, 1
	step_end
	.balign 4
_rocket_g1_walk_row7:

	step MOVEMENT_STEP_RIGHT, 3
	step MOVEMENT_STEP_UP, 2
	step MOVEMENT_FACE_RIGHT, 1
	step_end
	.balign 4
_rocket_g1_after:

	step MOVEMENT_EMOTE_EXCLAMATION, 1
	step MOVEMENT_UNK_71, 1
	step MOVEMENT_STEP_LEFT, 1
	step MOVEMENT_UNK_72, 1
	step_end
	.balign 4
_rocket_g2_row5_walk:

	step MOVEMENT_STEP_LEFT, 1
	step MOVEMENT_STEP_UP, 1
	step_end
	.balign 4
_rocket_g2_row6_walk:

	step MOVEMENT_STEP_LEFT, 1
	step MOVEMENT_FACE_UP, 1
	step_end
	.balign 4
_rocket_g2_row7:

	step MOVEMENT_FACE_LEFT, 1
	step_end
	.balign 4
_rocket_face_left:

	step MOVEMENT_FACE_LEFT, 1
	step_end
	.balign 4
_rocket_face_right:

	step MOVEMENT_FACE_RIGHT, 1
	step_end
	.balign 4
_rocket_face_down:

	step MOVEMENT_FACE_DOWN, 1
	step_end
	.balign 4
