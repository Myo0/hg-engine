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

.include "data/scr_seq/include/event_D40R0106.inc"


// text archive to grab from: 003.txt

.data


scrdef scr_seq_EVERYWHERE_000
scrdef scr_seq_EVERYWHERE_001
scrdef scr_seq_EVERYWHERE_002
scrdef scr_seq_EVERYWHERE_003
scrdef scr_seq_EVERYWHERE_004
scrdef scr_seq_EVERYWHERE_005
scrdef scr_seq_EVERYWHERE_006
scrdef scr_seq_EVERYWHERE_007
scrdef scr_seq_EVERYWHERE_008
scrdef scr_seq_EVERYWHERE_009
scrdef scr_seq_EVERYWHERE_010
scrdef scr_seq_EVERYWHERE_011
scrdef_end

scr_seq_EVERYWHERE_000:
	lockall
	setflag FLAG_UNK_18D
	setvar VAR_OBJ_8, 1
	apply_movement obj_player, _0304
	wait_movement
	npc_msg 12
	closemsg
	releaseall
	end

scr_seq_EVERYWHERE_001:
	lockall
	clearflag FLAG_UNK_18D
	setvar VAR_OBJ_8, 2
	apply_movement obj_player, _0304
	wait_movement
	npc_msg 13
	closemsg
	releaseall
	end

scr_seq_EVERYWHERE_002:
	lockall
	setflag FLAG_UNK_18D
	setvar VAR_OBJ_9, 1
	apply_movement obj_player, _0304
	wait_movement
	npc_msg 12
	closemsg
	releaseall
	end

scr_seq_EVERYWHERE_003:
	lockall
	clearflag FLAG_UNK_18D
	setvar VAR_OBJ_9, 2
	apply_movement obj_player, _0304
	wait_movement
	npc_msg 13
	closemsg
	releaseall
	end

scr_seq_EVERYWHERE_004:
	lockall
	setflag FLAG_UNK_18D
	setvar VAR_UNK_406A, 1
	apply_movement obj_player, _0304
	wait_movement
	npc_msg 12
	closemsg
	releaseall
	end

scr_seq_EVERYWHERE_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 14
	closemsg
	releaseall
	end

scr_seq_EVERYWHERE_006:
	lockall
	clearflag FLAG_UNK_18D
	setvar VAR_UNK_406A, 0
	apply_movement obj_player, _0304
	wait_movement
	npc_msg 13
	closemsg
	releaseall
	end

scr_seq_EVERYWHERE_007:
	lockall
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	apply_movement obj_player, _0304
	wait_movement
	compare VAR_SPECIAL_x8004, 14
	call_if_ne _02DE
	npc_msg 2
	closemsg
	apply_movement 6, _0304
	apply_movement 7, _0304
	wait_movement
	apply_movement 6, _030C
	apply_movement 7, _030C
	wait_movement
	npc_msg 3
	closemsg
	apply_movement 6, _0314
	apply_movement 7, _031C
	wait_movement
	npc_msg 4
	closemsg
	apply_movement 6, _030C
	apply_movement 7, _030C
	wait_movement
	trainer_battle TRAINER_GENTLEMAN_MICKEY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02EA
	apply_movement 6, _0324
	apply_movement 7, _031C
	wait_movement
	apply_movement 7, _030C
	wait_movement
	npc_msg 5
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_UNK_A13
	setflag FLAG_UNK_A14
	setvar VAR_UNK_406D, 1
	setvar VAR_UNK_416F, 80
	hide_person 6
	hide_person 7
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_EVERYWHERE_008:
	lockall
	play_cry SPECIES_CROBAT, 0
	wait_cry
	apply_movement obj_player, _0304
	wait_movement
	play_cry SPECIES_CROBAT, 0
	wait_cry
	apply_movement obj_player, _032C
	wait_movement
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_A14
	show_person 11
	show_person 12
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	setflag FLAG_UNK_18D
	setvar VAR_UNK_406E, 1
	apply_movement obj_player, _0304
	wait_movement
	npc_msg 6
	closemsg
	releaseall
	end

scr_seq_EVERYWHERE_009:
	lockall
	apply_movement obj_player, _0304
	wait_movement
	goto_if_not_defeated TRAINER_BEAUTY_MICKEY_8, _02EE
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_cry SPECIES_CROBAT, 0
	wait_cry
	setflag FLAG_UNK_A14
	hide_person 11
	hide_person 12
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_18D
	setvar VAR_UNK_406E, 2
	npc_msg 7
	closemsg
	releaseall
	end

scr_seq_EVERYWHERE_010:
	lockall
	play_se SEQ_SE_DP_SELECT
	play_cry SPECIES_CROBAT, 0
	wait_cry
	releaseall
	end

scr_seq_EVERYWHERE_011:
	lockall
	play_se SEQ_SE_DP_SELECT
	hide_person 2
	giveitem_no_check ITEM_TM102, 1
	setflag FLAG_HIDE_ITEMBALL_D38R0103_TM40
	closemsg
	releaseall
	end

_02DE:
	apply_movement obj_player, _0340
	wait_movement
	return

_02EA:
	white_out
	end

_02EE:
	npc_msg 8
	closemsg
	apply_movement obj_player, _0348
	wait_movement
	releaseall
	end

	.byte 0x00, 0x00, 0x00
	.balign 4
_0304:

	step 75, 1
	step_end
	.balign 4
_030C:

	step 1, 1
	step_end
	.balign 4
_0314:

	step 3, 1
	step_end
	.balign 4
_031C:

	step 2, 1
	step_end
	.balign 4
_0324:

	step 33, 2
	step_end
	.balign 4
_032C:

	step 30, 1
	step 31, 1
	step 33, 2
	step 75, 1
	step_end
	.balign 4
_0340:

	step 0, 1
	step_end
	.balign 4
_0348:

	step 12, 1
	step_end
	.balign 4
