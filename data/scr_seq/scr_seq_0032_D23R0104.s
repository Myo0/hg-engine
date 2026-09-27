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

.include "data/scr_seq/include/event_D23R0104.inc"


// text archive to grab from: 068.txt

.data


scrdef scr_seq_D23R0104_000
scrdef scr_seq_D23R0104_001
scrdef scr_seq_D23R0104_002
scrdef scr_seq_D23R0104_003
scrdef scr_seq_D23R0104_004
scrdef scr_seq_D23R0104_005
scrdef scr_seq_D23R0104_006
scrdef scr_seq_D23R0104_007
scrdef scr_seq_D23R0104_008
scrdef_end

scr_seq_D23R0104_000:
	setflag FLAG_HIDE_ROCKET_TAKEOVER_1
	setflag FLAG_HIDE_ROCKET_TAKEOVER_2
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _013B
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_1
	goto _014E

scr_seq_D23R0104_001:
	simple_npc_msg 8
	end

scr_seq_D23R0104_002:
	simple_npc_msg 9
	end

scr_seq_D23R0104_003:
	simple_npc_msg 0
	end

scr_seq_D23R0104_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _0150
	npc_msg 1
	goto _0156

scr_seq_D23R0104_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_MEOWTH, 0
	npc_msg 7
	wait_cry
	wait_button
	closemsg
	releaseall
	end

scr_seq_D23R0104_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _015E
	npc_msg 10
	goto _0169

scr_seq_D23R0104_007:
	goto_if_defeated TRAINER_TEAM_ROCKET_F_GRUNT_4, _0171
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 12
	get_player_facing VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0184
	apply_movement obj_D23R0104_rocketw, _024A
	goto _01BB

scr_seq_D23R0104_008:
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _01EA
	move_person_facing obj_D23R0104_kurumi, 18, 1, 12, DIR_EAST
	move_person_facing obj_D23R0104_follower_mon_static_meowth, 19, 1, 12, DIR_SOUTH
	move_person_facing obj_D23R0104_gsman2, 20, 1, 12, DIR_SOUTH
	end

_013B:
	compare VAR_SCENE_ROCKET_TAKEOVER, 5
	goto_if_ne _014E
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_2
	end

_014E:
	end

_0150:
	goto _01EC

_0156:
	wait_button
	closemsg
	releaseall
	end

_015E:
	npc_msg 11
	wait_button
	closemsg
	releaseall
	end

_0169:
	wait_button
	closemsg
	releaseall
	end

_0171:
	simple_npc_msg 14
	end

_0184:
	apply_movement obj_D23R0104_rocketw, _0256
	wait_movement
	npc_msg 13
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_F_GRUNT_4, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _022E
	settrainerflag TRAINER_TEAM_ROCKET_F_GRUNT_4
	npc_msg 14
	wait_button
	closemsg
	releaseall
	end

_01BB:
	wait_movement
	npc_msg 13
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_F_GRUNT_4, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _022E
	settrainerflag TRAINER_TEAM_ROCKET_F_GRUNT_4
	npc_msg 14
	wait_button
	closemsg
	releaseall
	end

_01EA:
	end

_01EC:
	goto_if_set FLAG_GOT_BRIGHTPOWDER_FROM_MARY, _0234
	npc_msg 2
	goto_if_no_item_space ITEM_COVERT_CLOAK, 1, _023F
	callstd std_give_item_verbose
	npc_msg 4
	wait_button
	closemsg
	releaseall
	setflag FLAG_GOT_BRIGHTPOWDER_FROM_MARY
	end

_022E:
	white_out
	releaseall
	end

_0234:
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

_023F:
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

	.balign 4
_024A:

	step 75, 1
	step 35, 1
	step_end
	.balign 4
_0256:

	step 75, 1
	step 33, 1
	step_end
	.balign 4
