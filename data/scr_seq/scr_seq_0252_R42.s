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

.include "data/scr_seq/include/event_R42.inc"


// text archive to grab from: 399.txt

.data


scrdef scr_seq_R42_000
scrdef scr_seq_R42_001
scrdef scr_seq_R42_002
scrdef scr_seq_R42_003
scrdef scr_seq_R42_004
scrdef scr_seq_R42_005
scrdef scr_seq_R42_006
scrdef scr_seq_R42_007
scrdef scr_seq_R42_008
scrdef scr_seq_R42_009
scrdef_end

scr_seq_R42_000:
	scrcmd_609
	lockall
	apply_movement obj_player, _03B0
	wait_movement
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	clearflag FLAG_HIDE_ROUTE_42_HIKER
	show_person obj_R42_mount_2_2
	compare VAR_SPECIAL_x8001, 172
	goto_if_ne _0220
	apply_movement obj_R42_mount_2_2, _03B8
	goto _023B

scr_seq_R42_001:
	scrcmd_609
	lockall
	play_cry SPECIES_SUICUNE, 0
	release obj_R42_follower_mon_static_suicune
	scrcmd_523 obj_R42_follower_mon_static_suicune, 2, 90, 2, 0
	lock obj_R42_follower_mon_static_suicune
	wait_cry
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_R42_follower_mon_static_suicune, _03C4
	apply_movement obj_player, _03E0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	clearflag FLAG_HIDE_ROUTE_42_EUSINE
	show_person obj_R42_minaki
	callstd std_play_eusine_music
	apply_movement obj_R42_minaki, _03FC
	wait_movement
	npc_msg 7
	closemsg
	apply_movement obj_R42_minaki, _040C
	wait_movement
	buffer_players_name 0
	npc_msg 8
	closemsg
	apply_movement obj_R42_minaki, _0418
	wait_movement
	npc_msg 9
	closemsg
	apply_movement obj_R42_minaki, _0420
	wait_movement
	callstd std_fade_end_eusine_music
	hide_person obj_R42_follower_mon_static_suicune
	hide_person obj_R42_minaki
	setflag FLAG_HIDE_ROUTE_42_SUICUNE
	setflag FLAG_HIDE_ROUTE_42_EUSINE
	setvar VAR_UNK_4092, 0
	setvar VAR_UNK_4070, 1
	setvar VAR_UNK_4071, 1
	clearflag FLAG_HIDE_VERMILION_SUICUNE
	releaseall
	end

scr_seq_R42_002:
	direction_signpost 0, 1, 1, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R42_003:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 1, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R42_004:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 2, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R42_005:
	direction_signpost 3, 1, 2, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R42_006:
	lockall
	play_se SEQ_SE_DP_SELECT
	faceplayer
	npc_msg 10
	closemsg
	releaseall
	end

scr_seq_R42_007:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 9
	setvar VAR_SPECIAL_x8008, 17
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R42_4070
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_R42_008:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 51
	setvar VAR_SPECIAL_x8008, 18
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R42_4112
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_R42_009:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 52
	setvar VAR_SPECIAL_x8008, 19
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R42_4113
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0220:
	compare VAR_SPECIAL_x8001, 173
	goto_if_ne _029E
	apply_movement obj_R42_mount_2_2, _0428
	goto _023B

_023B:
	wait_movement
	play_se SEQ_SE_DP_WALL_HIT2
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_player, _0434
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 5
	closemsg
	apply_movement obj_R42_mount_2_2, _0448
	wait_movement
	giveitem_no_check ITEM_HM04, 1
	npc_msg 6
	closemsg
	compare VAR_SPECIAL_x8001, 172
	goto_if_ne _02B9
	apply_movement obj_R42_mount_2_2, _0450
	goto _02D4

_029E:
	compare VAR_SPECIAL_x8001, 174
	goto_if_ne _02E0
	apply_movement obj_R42_mount_2_2, _045C
	goto _023B

_02B9:
	compare VAR_SPECIAL_x8001, 173
	goto_if_ne _02FB
	apply_movement obj_R42_mount_2_2, _0468
	goto _02D4

_02D4:
	wait_movement
	setvar VAR_UNK_4091, 1
	releaseall
	end

_02E0:
	compare VAR_SPECIAL_x8001, 175
	goto_if_ne _0316
	apply_movement obj_R42_mount_2_2, _0478
	goto _023B

_02FB:
	compare VAR_SPECIAL_x8001, 174
	goto_if_ne _0381
	apply_movement obj_R42_mount_2_2, _0484
	goto _02D4

_0316:
	apply_movement obj_R42_mount_2_2, _0494
	wait_movement
	play_se SEQ_SE_DP_WALL_HIT2
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_player, _0434
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 5
	closemsg
	apply_movement obj_R42_mount_2_2, _0448
	wait_movement
	giveitem_no_check ITEM_HM04, 1
	npc_msg 6
	closemsg
	compare VAR_SPECIAL_x8001, 172
	goto_if_ne _02B9
	apply_movement obj_R42_mount_2_2, _0450
	goto _02D4

_0381:
	compare VAR_SPECIAL_x8001, 175
	goto_if_ne _039C
	apply_movement obj_R42_mount_2_2, _04A0
	goto _02D4

_039C:
	apply_movement obj_R42_mount_2_2, _04B0
	wait_movement
	setvar VAR_UNK_4091, 1
	releaseall
	end

	.balign 4
_03B0:

	step 75, 1
	step_end
	.balign 4
_03B8:

	step 17, 1
	step 18, 1
	step_end
	.balign 4
_03C4:

	step 62, 3
	step 22, 2
	step 58, 1
	step 22, 2
	step 56, 2
	step 112, 1
	step_end
	.balign 4
_03E0:

	step 75, 1
	step 71, 1
	step 16, 4
	step 72, 1
	step 65, 1
	step 15, 1
	step_end
	.balign 4
_03FC:

	step 15, 4
	step 12, 3
	step 15, 6
	step_end
	.balign 4
_040C:

	step 12, 1
	step 2, 1
	step_end
	.balign 4
_0418:

	step 15, 1
	step_end
	.balign 4
_0420:

	step 15, 9
	step_end
	.balign 4
_0428:

	step 17, 2
	step 18, 1
	step_end
	.balign 4
_0434:

	step 3, 1
	step 71, 1
	step 58, 1
	step 72, 1
	step_end
	.balign 4
_0448:

	step 14, 2
	step_end
	.balign 4
_0450:

	step 15, 3
	step 1, 1
	step_end
	.balign 4
_045C:

	step 17, 3
	step 18, 1
	step_end
	.balign 4
_0468:

	step 15, 3
	step 12, 1
	step 1, 1
	step_end
	.balign 4
_0478:

	step 17, 4
	step 18, 1
	step_end
	.balign 4
_0484:

	step 15, 3
	step 12, 2
	step 1, 1
	step_end
	.balign 4
_0494:

	step 17, 5
	step 18, 1
	step_end
	.balign 4
_04A0:

	step 15, 3
	step 12, 3
	step 1, 1
	step_end
	.balign 4
_04B0:

	step 15, 3
	step 12, 4
	step 1, 1
	step_end
	.balign 4
