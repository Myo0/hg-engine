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

.include "data/scr_seq/include/event_R47.inc"


// text archive to grab from: 407.txt

.data


scrdef scr_seq_R47_000
scrdef scr_seq_R47_001
scrdef scr_seq_R47_002
scrdef scr_seq_R47_003
scrdef scr_seq_R47_004
scrdef scr_seq_R47_005
scrdef_end

scr_seq_R47_000:
	setvar VAR_UNK_40EB, 1
	setflag FLAG_UNK_9C9
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _0180
	move_warp 4, 87, 385
	move_warp 5, 87, 389
	move_warp 6, 87, 385
	goto _01D0

scr_seq_R47_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_MET_ROUTE_47_EMBEDDED_TOWER_HIKER, _0208
	npc_msg 0
	wait_button
	closemsg
	setflag FLAG_MET_ROUTE_47_EMBEDDED_TOWER_HIKER
	releaseall
	end

scr_seq_R47_002:
	compare VAR_SCENE_EMBEDDED_TOWER, 5
	goto_if_ge _0213
	get_game_version VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 7
	goto_if_ne _022D
	move_warp 4, 87, 385
	move_warp 5, 87, 389
	move_warp 6, 87, 385
	goto _0247

scr_seq_R47_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_157, _0249
	npc_msg 2
	apply_movement obj_R47_leader3, _0340
	wait_movement
	npc_msg 3
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0263
	apply_movement obj_R47_leader3, _0348
	goto _027E

scr_seq_R47_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _029A
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02A5
	npc_msg 6
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 91
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 7
	wait_button
	closemsg
	releaseall
	end

scr_seq_R47_005:
	lockall
	play_se SEQ_SE_DP_SELECT
	hide_person obj_R47_3959
	giveitem_no_check ITEM_BARBARACITE, 1
	setflag FLAG_HIDE_ITEMBALL_R47_WHITE_FLUTE
	closemsg
	releaseall
	end

_0180:
	move_warp 4, 87, 389
	move_warp 5, 87, 385
	move_warp 6, 87, 385
	compare VAR_SCENE_EMBEDDED_TOWER, 2
	goto_if_eq _02B0
	compare VAR_SCENE_EMBEDDED_TOWER, 3
	goto_if_eq _02B0
	compare VAR_SCENE_EMBEDDED_TOWER, 5
	goto_if_ge _02B6
	goto_if_unset FLAG_UNK_189, _02D4
	clearflag FLAG_UNK_189
	end

_01D0:
	compare VAR_SCENE_EMBEDDED_TOWER, 2
	goto_if_eq _02B0
	compare VAR_SCENE_EMBEDDED_TOWER, 3
	goto_if_eq _02B0
	compare VAR_SCENE_EMBEDDED_TOWER, 5
	goto_if_ge _02B6
	goto_if_unset FLAG_UNK_189, _02D4
	clearflag FLAG_UNK_189
	end

_0208:
	npc_msg 1
	wait_button
	closemsg
	releaseall
	end

_0213:
	move_warp 4, 87, 385
	move_warp 5, 87, 385
	move_warp 6, 87, 389
	end

_022D:
	move_warp 4, 87, 389
	move_warp 5, 87, 385
	move_warp 6, 87, 385
	end

_0247:
	end

_0249:
	buffer_players_name 0
	npc_msg 4
	closemsg
	apply_movement obj_R47_leader3, _0340
	wait_movement
	setflag FLAG_UNK_157
	releaseall
	end

_0263:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _02E5
	apply_movement obj_R47_leader3, _0350
	goto _027E

_027E:
	wait_movement
	buffer_players_name 0
	npc_msg 4
	closemsg
	apply_movement obj_R47_leader3, _0340
	wait_movement
	setflag FLAG_UNK_157
	releaseall
	end

_029A:
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

_02A5:
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_02B0:
	setflag FLAG_UNK_304
	end

_02B6:
	move_warp 4, 87, 385
	move_warp 5, 87, 385
	move_warp 6, 87, 389
	goto _02B0

_02D4:
	goto_if_set FLAG_GAME_CLEAR, _0309
	goto _02B0

_02E5:
	apply_movement obj_R47_leader3, _0358
	wait_movement
	buffer_players_name 0
	npc_msg 4
	closemsg
	apply_movement obj_R47_leader3, _0340
	wait_movement
	setflag FLAG_UNK_157
	releaseall
	end

_0309:
	get_phone_book_rematch PHONE_CONTACT_CHUCK, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _02B0
	get_weekday VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0337
	clearflag FLAG_UNK_304
	goto _033D

_0337:
	setflag FLAG_UNK_304
	end

_033D:
	end

	.byte 0x00
	.balign 4
_0340:

	step 32, 1
	step_end
	.balign 4
_0348:

	step 33, 1
	step_end
	.balign 4
_0350:

	step 34, 1
	step_end
	.balign 4
_0358:

	step 35, 1
	step_end
	.balign 4
