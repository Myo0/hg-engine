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

.include "data/scr_seq/include/event_D27R0107.inc"


// text archive to grab from: 094.txt

.data


scrdef scr_seq_D27R0107_000
scrdef scr_seq_D27R0107_001
scrdef scr_seq_D27R0107_002
scrdef scr_seq_D27R0107_003
scrdef scr_seq_D27R0107_004
scrdef scr_seq_D27R0107_005
scrdef_end

scr_seq_D27R0107_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	clearflag FLAG_UNK_A6A
	setflag FLAG_UNK_A6B
	hide_person obj_D27R0107_towerboss
	goto_if_set FLAG_GOT_SECRETPOTION, _017C
	compare VAR_SCENE_LIGHTHOUSE_JASMINE, 0
	goto_if_eq _0242
	npc_msg 1
	closemsg
	apply_movement obj_D27R0107_gsleader6, _02E0
	wait_movement
	releaseall
	end

scr_seq_D27R0107_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_LIGHTHOUSE_JASMINE, 2
	goto_if_lt _029B
	play_cry SPECIES_AMPHAROS, 0
	npc_msg 12
	wait_cry
	goto _02B1

scr_seq_D27R0107_002:
	end

scr_seq_D27R0107_003:
	setvar VAR_UNK_4125, 0
	end

scr_seq_D27R0107_004:
	goto_if_set FLAG_UNK_1D8, _02B9
	make_object_visible obj_D27R0107_stop
	end

scr_seq_D27R0107_005:
	lockall
	npc_msg 13
	apply_movement obj_player, _02E8
	wait_movement
	closemsg
	apply_movement obj_player, _02F0
	clearflag FLAG_UNK_A6B
	show_person obj_D27R0107_towerboss
	apply_movement obj_D27R0107_towerboss, _02F8
	wait_movement
	apply_movement obj_D27R0107_gsleader6, _0318
	apply_movement obj_player, _0324
	wait_movement
	apply_movement obj_D27R0107_towerboss, _0334
	wait_movement
	npc_msg 14
	closemsg
	trainer_battle TRAINER_CAMPER_MICKEY_6, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02BB
	setvar VAR_UNK_416F, 50
	setvar VAR_UNK_4160, 0
	setvar VAR_UNK_4161, 1
	setflag FLAG_UNK_A6A
	apply_movement obj_D27R0107_towerboss, _0340
	wait_movement
	npc_msg 15
	closemsg
	apply_movement obj_D27R0107_towerboss, _034C
	wait_movement
	npc_msg 16
	closemsg
	npc_msg 17
	closemsg
	apply_movement obj_D27R0107_towerboss, _02E8
	wait_movement
	npc_msg 18
	closemsg
	apply_movement obj_D27R0107_towerboss, _035C
	wait_movement
	npc_msg 19
	wait_button
	closemsg
	apply_movement obj_D27R0107_towerboss, _0370
	wait_movement
	hide_person obj_D27R0107_towerboss
	play_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_D27R0107_gsleader6, _0380
	setvar VAR_UNK_4160, 0
	releaseall
	end

_017C:
	npc_msg 2
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02BF
	takeitem ITEM_SECRET_MEDICINE, 1, VAR_SPECIAL_RESULT
	buffer_players_name 0
	npc_msg 3
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	npc_msg 4
	closemsg
	apply_movement obj_D27R0107_gsleader6, _02E0
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_D27R0107_follower_mon_static_ampharos, _0388
	wait_movement
	play_cry SPECIES_AMPHAROS, 0
	npc_msg 6
	wait_cry
	closemsg
	scrcmd_459
	apply_movement obj_D27R0107_follower_mon_static_ampharos, _0390
	wait_movement
	play_cry SPECIES_AMPHAROS, 0
	wait_cry
	apply_movement obj_D27R0107_gsleader6, _0398
	npc_msg 7
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_player, _03A0
	apply_movement obj_D27R0107_gsleader6, _03C0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	hide_person obj_D27R0107_gsleader6
	releaseall
	setflag FLAG_UNK_96A
	setvar VAR_SCENE_LIGHTHOUSE_JASMINE, 2
	setvar VAR_UNK_410E, 1
	setflag FLAG_UNK_1D7
	setflag FLAG_UNK_1DA
	setflag FLAG_UNK_1DB
	setflag FLAG_UNK_998
	end

_0242:
	npc_msg 0
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_player, _03D8
	apply_movement obj_D27R0107_gsleader6, _03F8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_se SEQ_SE_DP_DOOR
	hide_person obj_D27R0107_stop
	hide_person obj_D27R0107_babyboy1_8
	wait_se SEQ_SE_DP_DOOR
	apply_movement obj_D27R0107_gsleader6, _0410
	wait_movement
	releaseall
	setvar VAR_SCENE_LIGHTHOUSE_JASMINE, 1
	setvar VAR_UNK_4160, 1
	setflag FLAG_UNK_1D8
	end

_029B:
	play_cry SPECIES_AMPHAROS, 12
	npc_msg 10
	wait_cry
	npc_msg 11
	wait_button
	closemsg
	releaseall
	end

_02B1:
	wait_button
	closemsg
	releaseall
	end

_02B9:
	end

_02BB:
	white_out
	end

_02BF:
	npc_msg 8
	closemsg
	apply_movement obj_D27R0107_gsleader6, _02E0
	wait_movement
	npc_msg 9
	closemsg
	play_cry SPECIES_AMPHAROS, 12
	wait_cry
	releaseall
	end

	.byte 0x00
	.balign 4
_02E0:

	step 31, 1
	step_end
	.balign 4
_02E8:

	step 75, 1
	step_end
	.balign 4
_02F0:

	step 2, 1
	step_end
	.balign 4
_02F8:

	step 17, 2
	step 18, 5
	step 17, 9
	step 19, 4
	step 71, 1
	step 38, 1
	step 72, 1
	step_end
	.balign 4
_0318:

	step 1, 1
	step 75, 1
	step_end
	.balign 4
_0324:

	step 71, 1
	step 15, 1
	step 72, 1
	step_end
	.balign 4
_0334:

	step 75, 1
	step 15, 1
	step_end
	.balign 4
_0340:

	step 0, 1
	step 75, 1
	step_end
	.balign 4
_034C:

	step 12, 3
	step 14, 1
	step 12, 2
	step_end
	.balign 4
_035C:

	step 13, 2
	step 15, 1
	step 13, 3
	step 3, 1
	step_end
	.balign 4
_0370:

	step 18, 5
	step 16, 9
	step 19, 5
	step_end
	.balign 4
_0380:

	step 3, 1
	step_end
	.balign 4
_0388:

	step 30, 1
	step_end
	.balign 4
_0390:

	step 50, 3
	step_end
	.balign 4
_0398:

	step 1, 1
	step_end
	.balign 4
_03A0:

	step 0, 1
	step 71, 1
	step 13, 1
	step 72, 1
	step 63, 2
	step 62, 1
	step 35, 1
	step_end
	.balign 4
_03C0:

	step 63, 1
	step 13, 1
	step 15, 2
	step 33, 1
	step 13, 1
	step_end
	.balign 4
_03D8:

	step 2, 1
	step 71, 1
	step 15, 1
	step 72, 1
	step 63, 3
	step 62, 1
	step 33, 1
	step_end
	.balign 4
_03F8:

	step 63, 1
	step 13, 3
	step 15, 1
	step 33, 1
	step 65, 1
	step_end
	.balign 4
_0410:

	step 14, 1
	step 12, 3
	step 35, 1
	step_end
	.balign 4
