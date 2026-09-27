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

.include "data/scr_seq/include/event_D23R0106.inc"


// text archive to grab from: 070.txt

.data


scrdef scr_seq_D23R0106_000
scrdef scr_seq_D23R0106_001
scrdef_end

scr_seq_D23R0106_000:
	setflag FLAG_HIDE_ROCKET_TAKEOVER_1
	setflag FLAG_HIDE_ROCKET_TAKEOVER_2
	setvar VAR_UNK_4125, 0
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _00C7
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_1
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_2
	end

scr_seq_D23R0106_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 0
	closemsg
	trainer_battle TRAINER_SWIMMER_M_MICKEY_5, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00C9
	npc_msg 1
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_D23R0106_sakaki
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	clearflag FLAG_ROCKET_TAKEOVER_ACTIVE
	setvar VAR_UNK_416F, 73
	fade_out_bgm 0, 30
	stop_bgm 0
	wait 15, VAR_SPECIAL_RESULT
	reset_bgm
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	move_person_facing obj_D23R0106_gsgentleman, 8, 1, 12, DIR_SOUTH
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 7
	goto_if_ne _00CF
	apply_movement obj_D23R0106_gsgentleman, _03F2
	goto _00FB

_00C7:
	end

_00C9:
	white_out
	releaseall
	end

_00CF:
	compare VAR_TEMP_x4000, 8
	goto_if_ne _0147
	apply_movement obj_D23R0106_gsgentleman, _040E
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	call_if_eq _01A8
	goto _00FB

_00FB:
	wait_movement
	compare VAR_TEMP_x4000, 8
	goto_if_ne _01CD
	apply_movement obj_player, _042A
	wait_movement
	npc_msg 2
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0202
	giveitem_no_check ITEM_RAINBOW_FEATHER, 1
	setflag FLAG_UNK_093
	npc_msg 5
	closemsg
	goto _0236

_0147:
	compare VAR_TEMP_x4000, 9
	goto_if_ne _00FB
	apply_movement obj_D23R0106_gsgentleman, _0432
	wait_movement
	compare VAR_TEMP_x4000, 8
	goto_if_ne _01CD
	apply_movement obj_player, _042A
	wait_movement
	npc_msg 2
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0202
	giveitem_no_check ITEM_RAINBOW_FEATHER, 1
	setflag FLAG_UNK_093
	npc_msg 5
	closemsg
	goto _0236

_01A8:
	get_person_coords 253, VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	compare VAR_SPECIAL_x8004, 7
	goto_if_ne _0251
	wait 112, VAR_SPECIAL_RESULT
	apply_movement obj_partner_poke, _044E
	return

_01CD:
	wait_movement
	npc_msg 2
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0202
	giveitem_no_check ITEM_RAINBOW_FEATHER, 1
	setflag FLAG_UNK_093
	npc_msg 5
	closemsg
	goto _0236

_0202:
	giveitem_no_check ITEM_SILVER_FEATHER, 1
	setflag FLAG_UNK_094
	npc_msg 6
	closemsg
	compare VAR_TEMP_x4000, 7
	goto_if_ne _0253
	apply_movement obj_D23R0106_gsgentleman, _045E
	goto _026E

_0236:
	compare VAR_TEMP_x4000, 7
	goto_if_ne _0253
	apply_movement obj_D23R0106_gsgentleman, _045E
	goto _026E

_0251:
	return

_0253:
	compare VAR_TEMP_x4000, 8
	goto_if_ne _029E
	apply_movement obj_D23R0106_gsgentleman, _046E
	goto _026E

_026E:
	wait_movement
	apply_movement obj_D23R0106_gsgentleman, _047E
	wait_movement
	apply_movement obj_player, _042A
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _02E3
	npc_msg 7
	goto _035E

_029E:
	compare VAR_TEMP_x4000, 9
	goto_if_ne _026E
	apply_movement obj_D23R0106_gsgentleman, _0486
	wait_movement
	apply_movement obj_D23R0106_gsgentleman, _047E
	wait_movement
	apply_movement obj_player, _042A
	wait_movement
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _02E3
	npc_msg 7
	goto _035E

_02E3:
	npc_msg 8
	closemsg
	apply_movement obj_D23R0106_gsgentleman, _0496
	wait_movement
	npc_msg 9
	closemsg
	apply_movement obj_D23R0106_gsgentleman, _04AE
	wait_movement
	play_se SEQ_SE_DP_DOOR10
	wait_se SEQ_SE_DP_DOOR10
	wait 8, VAR_SPECIAL_RESULT
	hide_person obj_D23R0106_gsgentleman
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	releaseall
	setvar VAR_SCENE_ROCKET_TAKEOVER, 5
	setflag FLAG_BEAT_RADIO_TOWER_ROCKETS
	clearflag FLAG_HIDE_RADIO_TOWER_5F_OFFICE_DIRECTOR
	setflag FLAG_HIDE_RADIO_TOWER_5F_PETREL_REVEALED
	compare VAR_UNK_40F8, 2
	goto_if_ne _03D6
	setvar VAR_UNK_40F8, 0
	setvar VAR_UNK_407A, 1
	clearflag FLAG_HIDE_MAHOGANY_SHOP_SALESWOMAN
	setflag FLAG_HIDE_BLACKTHORN_GYM_GUARD_INFRONT
	clearflag FLAG_HIDE_BLACKTHORN_GYM_GUARD_ASIDE
	setflag FLAG_UNK_998
	setflag FLAG_UNK_97D
	end

_035E:
	closemsg
	apply_movement obj_D23R0106_gsgentleman, _0496
	wait_movement
	npc_msg 9
	closemsg
	apply_movement obj_D23R0106_gsgentleman, _04AE
	wait_movement
	play_se SEQ_SE_DP_DOOR10
	wait_se SEQ_SE_DP_DOOR10
	wait 8, VAR_SPECIAL_RESULT
	hide_person obj_D23R0106_gsgentleman
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	releaseall
	setvar VAR_SCENE_ROCKET_TAKEOVER, 5
	setflag FLAG_BEAT_RADIO_TOWER_ROCKETS
	clearflag FLAG_HIDE_RADIO_TOWER_5F_OFFICE_DIRECTOR
	setflag FLAG_HIDE_RADIO_TOWER_5F_PETREL_REVEALED
	compare VAR_UNK_40F8, 2
	goto_if_ne _03D6
	setvar VAR_UNK_40F8, 0
	setvar VAR_UNK_407A, 1
	clearflag FLAG_HIDE_MAHOGANY_SHOP_SALESWOMAN
	setflag FLAG_HIDE_BLACKTHORN_GYM_GUARD_INFRONT
	clearflag FLAG_HIDE_BLACKTHORN_GYM_GUARD_ASIDE
	setflag FLAG_UNK_998
	setflag FLAG_UNK_97D
	end

_03D6:
	setvar VAR_UNK_407A, 1
	clearflag FLAG_HIDE_MAHOGANY_SHOP_SALESWOMAN
	setflag FLAG_HIDE_BLACKTHORN_GYM_GUARD_INFRONT
	clearflag FLAG_HIDE_BLACKTHORN_GYM_GUARD_ASIDE
	setflag FLAG_UNK_998
	setflag FLAG_UNK_97D
	end

	.balign 4
_03F2:

	step 13, 1
	step 14, 4
	step 12, 7
	step 15, 4
	step 12, 3
	step 34, 1
	step_end
	.balign 4
_040E:

	step 13, 1
	step 14, 4
	step 12, 7
	step 15, 3
	step 12, 2
	step 35, 1
	step_end
	.balign 4
_042A:

	step 34, 1
	step_end
	.balign 4
_0432:

	step 13, 1
	step 14, 4
	step 12, 7
	step 15, 4
	step 12, 3
	step 35, 1
	step_end
	.balign 4
_044E:

	step 12, 1
	step 15, 1
	step 33, 1
	step_end
	.balign 4
_045E:

	step 13, 3
	step 14, 4
	step 75, 1
	step_end
	.balign 4
_046E:

	step 13, 2
	step 14, 3
	step 75, 1
	step_end
	.balign 4
_047E:

	step 15, 1
	step_end
	.balign 4
_0486:

	step 13, 3
	step 14, 4
	step 75, 1
	step_end
	.balign 4
_0496:

	step 14, 1
	step 13, 1
	step 75, 1
	step 63, 3
	step 32, 1
	step_end
	.balign 4
_04AE:

	step 13, 6
	step 15, 4
	step_end
	.balign 4
