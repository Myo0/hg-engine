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

.include "data/scr_seq/include/event_D37R0103.inc"


// text archive to grab from: 118.txt

.data


scrdef scr_seq_D37R0103_000
scrdef scr_seq_D37R0103_001
scrdef scr_seq_D37R0103_002
scrdef scr_seq_D37R0103_003
scrdef scr_seq_D37R0103_004
scrdef_end

scr_seq_D37R0103_000:
	goto_if_set FLAG_UNK_096, _0103
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	closemsg
	apply_movement obj_D37R0103_follower_mon_static_machoke, _0520
	apply_movement obj_D37R0103_babyboy1_5_3, _0520
	apply_movement obj_D37R0103_stop, _0520
	apply_movement obj_D37R0103_stop_2, _0520
	apply_movement obj_D37R0103_stop_3, _0520
	wait_movement
	setflag FLAG_UNK_096
	scrcmd_109 0, 9
	releaseall
	end

scr_seq_D37R0103_001:
	get_person_coords 4, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 15
	goto_if_ne _0116
	goto _0129

scr_seq_D37R0103_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	play_cry SPECIES_MACHOKE, 0
	npc_msg 2
	wait_cry
	wait_button
	closemsg
	releaseall
	end

scr_seq_D37R0103_003:
	make_object_visible obj_D37R0103_stop
	make_object_visible obj_D37R0103_stop_2
	make_object_visible obj_D37R0103_stop_3
	make_object_visible obj_D37R0103_stop_4
	make_object_visible obj_D37R0103_stop_5
	make_object_visible obj_D37R0103_stop_6
	make_object_visible obj_D37R0103_stop_7
	make_object_visible obj_D37R0103_stop_8
	make_object_visible obj_D37R0103_stop_9
	goto_if_set FLAG_UNK_096, _014D
	goto_if_set FLAG_UNK_097, _01A7
	goto_if_set FLAG_UNK_098, _01F0
	end

scr_seq_D37R0103_004:
	lockall
	play_se SEQ_SE_DP_SELECT
	hide_person obj_D37R0103_monstarball_3
	giveitem_no_check ITEM_LINKING_CORD, 1
	setflag FLAG_HIDE_ITEMBALL_D37R0103_ETHER
	closemsg
	releaseall
	end

_0103:
	simple_npc_msg 1
	end

_0116:
	compare VAR_TEMP_x4001, 16
	goto_if_ne _022E
	goto _0234

_0129:
	goto_if_set FLAG_UNK_097, _0103
	scrcmd_622 4, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _0258
	goto _025E

_014D:
	goto_if_set FLAG_UNK_097, _029B
	goto_if_set FLAG_UNK_098, _0326
	scrcmd_109 0, 9
	move_person_facing obj_D37R0103_follower_mon_static_machoke, 19, 0, 16, DIR_SOUTH
	move_person_facing obj_D37R0103_babyboy1_5_3, 19, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop, 19, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_2, 20, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_3, 20, 0, 18, DIR_NORTH
	end

_01A7:
	goto_if_set FLAG_UNK_098, _03A6
	move_person_facing obj_D37R0103_follower_mon_static_machoke_2, 3, 0, 14, DIR_WEST
	move_person_facing obj_D37R0103_babyboy1_5_2, 1, 0, 14, DIR_NORTH
	move_person_facing obj_D37R0103_stop_4, 1, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_5, 2, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_6, 2, 0, 14, DIR_NORTH
	end

_01F0:
	move_person_facing obj_D37R0103_follower_mon_static_machoke_3, 7, 0, 17, DIR_EAST
	move_person_facing obj_D37R0103_babyboy1_5, 8, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop_7, 8, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_8, 9, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_9, 9, 0, 18, DIR_NORTH
	end

_022E:
	goto _0103

_0234:
	goto_if_set FLAG_UNK_098, _0103
	scrcmd_622 4, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _0420
	goto _0426

_0258:
	goto _0103

_025E:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	closemsg
	apply_movement obj_D37R0103_follower_mon_static_machoke_2, _0528
	apply_movement obj_D37R0103_babyboy1_5_2, _0528
	apply_movement obj_D37R0103_stop_4, _0528
	apply_movement obj_D37R0103_stop_5, _0528
	apply_movement obj_D37R0103_stop_6, _0528
	wait_movement
	setflag FLAG_UNK_097
	releaseall
	end

_029B:
	goto_if_set FLAG_UNK_098, _0463
	scrcmd_109 0, 9
	move_person_facing obj_D37R0103_follower_mon_static_machoke, 19, 0, 16, DIR_SOUTH
	move_person_facing obj_D37R0103_babyboy1_5_3, 19, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop, 19, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_2, 20, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_3, 20, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_follower_mon_static_machoke_2, 3, 0, 14, DIR_WEST
	move_person_facing obj_D37R0103_babyboy1_5_2, 1, 0, 14, DIR_NORTH
	move_person_facing obj_D37R0103_stop_4, 1, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_5, 2, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_6, 2, 0, 14, DIR_NORTH
	end

_0326:
	scrcmd_109 0, 9
	move_person_facing obj_D37R0103_follower_mon_static_machoke, 19, 0, 16, DIR_SOUTH
	move_person_facing obj_D37R0103_babyboy1_5_3, 19, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop, 19, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_2, 20, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_3, 20, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_follower_mon_static_machoke_3, 7, 0, 17, DIR_EAST
	move_person_facing obj_D37R0103_babyboy1_5, 8, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop_7, 8, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_8, 9, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_9, 9, 0, 18, DIR_NORTH
	end

_03A6:
	move_person_facing obj_D37R0103_follower_mon_static_machoke_2, 3, 0, 14, DIR_WEST
	move_person_facing obj_D37R0103_babyboy1_5_2, 1, 0, 14, DIR_NORTH
	move_person_facing obj_D37R0103_stop_4, 1, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_5, 2, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_6, 2, 0, 14, DIR_NORTH
	move_person_facing obj_D37R0103_follower_mon_static_machoke_3, 7, 0, 17, DIR_EAST
	move_person_facing obj_D37R0103_babyboy1_5, 8, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop_7, 8, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_8, 9, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_9, 9, 0, 18, DIR_NORTH
	end

_0420:
	goto _0103

_0426:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 0
	closemsg
	apply_movement obj_D37R0103_follower_mon_static_machoke_3, _0530
	apply_movement obj_D37R0103_babyboy1_5, _0530
	apply_movement obj_D37R0103_stop_7, _0530
	apply_movement obj_D37R0103_stop_8, _0530
	apply_movement obj_D37R0103_stop_9, _0530
	wait_movement
	setflag FLAG_UNK_098
	releaseall
	end

_0463:
	scrcmd_109 0, 9
	move_person_facing obj_D37R0103_follower_mon_static_machoke, 19, 0, 16, DIR_SOUTH
	move_person_facing obj_D37R0103_babyboy1_5_3, 19, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop, 19, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_2, 20, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_3, 20, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_follower_mon_static_machoke_2, 3, 0, 14, DIR_WEST
	move_person_facing obj_D37R0103_babyboy1_5_2, 1, 0, 14, DIR_NORTH
	move_person_facing obj_D37R0103_stop_4, 1, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_5, 2, 0, 13, DIR_NORTH
	move_person_facing obj_D37R0103_stop_6, 2, 0, 14, DIR_NORTH
	move_person_facing obj_D37R0103_follower_mon_static_machoke_3, 7, 0, 17, DIR_EAST
	move_person_facing obj_D37R0103_babyboy1_5, 8, 0, 18, DIR_NORTH
	move_person_facing obj_D37R0103_stop_7, 8, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_8, 9, 0, 17, DIR_NORTH
	move_person_facing obj_D37R0103_stop_9, 9, 0, 18, DIR_NORTH
	end

	.byte 0x00
	.balign 4
_0520:

	step 9, 2
	step_end
	.balign 4
_0528:

	step 10, 2
	step_end
	.balign 4
_0530:

	step 11, 2
	step_end
	.balign 4
