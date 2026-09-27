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

.include "data/scr_seq/include/event_R36R0201.inc"


// text archive to grab from: 392.txt

.data


scrdef scr_seq_R36R0201_000
scrdef scr_seq_R36R0201_001
scrdef scr_seq_R36R0201_002
scrdef scr_seq_R36R0201_003
scrdef_end

scr_seq_R36R0201_000:
	get_weekday VAR_TEMP_x4000
	compare VAR_UNK_4118, 1
	goto_if_ne _01ED
	clearflag FLAG_UNK_1C4
	setflag FLAG_UNK_1C3
	goto _0208

scr_seq_R36R0201_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_bug_contest_guard_start
	compare VAR_UNK_4118, 1
	goto_if_ne _020A
	goto_if_set FLAG_UNK_1C4, _020E
	get_player_facing VAR_SPECIAL_RESULT
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0275
	apply_movement obj_player, _03D4
	goto _0290

scr_seq_R36R0201_002:
	scrcmd_609
	lockall
	apply_movement obj_player, _03DC
	wait_movement
	callstd std_bug_contest_guard_ask_end
	compare VAR_UNK_4118, 1
	goto_if_ne _02A2
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _03E4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D22R0102, 0, 75, 39, DIR_WEST
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	lock obj_partner_poke
	scrcmd_596 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _02A6
	scrcmd_606
	goto _02BA

scr_seq_R36R0201_003:
	lockall
	apply_movement obj_player, _03EC
	wait_movement
	clearflag FLAG_UNK_83E
	play_se SEQ_SE_DP_KAIDAN2
	show_person obj_R36R0201_brains4
	wait_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_R36R0201_brains4, _03EC
	wait_movement
	npc_msg 25
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 7
	call_if_eq _02CC
	call_if_lt _02D6
	compare VAR_TEMP_x4001, 8
	call_if_eq _02E0
	wait_movement
	npc_msg 26
	wait_button
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_MICKEY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02EA
	apply_movement obj_R36R0201_brains4, _03F4
	wait_movement
	npc_msg 27
	closemsg
	apply_movement obj_R36R0201_brains4, _03D4
	wait_movement
	giveitem_no_check ITEM_SHELL_BELL, 1
	npc_msg 28
	closemsg
	get_person_coords 2, VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 7
	call_if_eq _02F0
	call_if_lt _02FA
	compare VAR_TEMP_x4001, 8
	call_if_eq _0304
	wait_movement
	setflag FLAG_UNK_83E
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_R36R0201_brains4
	wait_se SEQ_SE_DP_KAIDAN2
	setvar VAR_UNK_415B, 1
	setvar VAR_UNK_416F, 40
	releaseall
	end

_01ED:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _030E
	clearflag FLAG_UNK_1C4
	setflag FLAG_UNK_1C3
	goto _0208

_0208:
	end

_020A:
	releaseall
	end

_020E:
	get_player_facing VAR_SPECIAL_RESULT
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _03FC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D22R0102, 0, 75, 39, DIR_WEST
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	lock obj_partner_poke
	scrcmd_596 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0329
	scrcmd_606
	goto _033D

_0275:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _034F
	apply_movement obj_player, _0408
	goto _0290

_0290:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	goto _0369

_02A2:
	releaseall
	end

_02A6:
	scrcmd_607
	apply_movement obj_partner_poke, _0414
	wait_movement
	release obj_partner_poke
	releaseall
	end

_02BA:
	apply_movement obj_partner_poke, _0414
	wait_movement
	release obj_partner_poke
	releaseall
	end

_02CC:
	apply_movement obj_R36R0201_brains4, _041C
	return

_02D6:
	apply_movement obj_R36R0201_brains4, _0424
	return

_02E0:
	apply_movement obj_R36R0201_brains4, _0434
	return

_02EA:
	white_out
	releaseall
	end

_02F0:
	apply_movement obj_R36R0201_brains4, _0444
	return

_02FA:
	apply_movement obj_R36R0201_brains4, _044C
	return

_0304:
	apply_movement obj_R36R0201_brains4, _0458
	return

_030E:
	compare VAR_TEMP_x4000, 4
	goto_if_ne _03AE
	clearflag FLAG_UNK_1C4
	setflag FLAG_UNK_1C3
	goto _0208

_0329:
	scrcmd_607
	apply_movement obj_partner_poke, _0414
	wait_movement
	release obj_partner_poke
	releaseall
	end

_033D:
	apply_movement obj_partner_poke, _0414
	wait_movement
	release obj_partner_poke
	releaseall
	end

_034F:
	apply_movement obj_player, _0464
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	goto _0369

_0369:
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_D22R0102, 0, 75, 39, DIR_WEST
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	lock obj_partner_poke
	scrcmd_596 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0329
	scrcmd_606
	goto _033D

_03AE:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _03C9
	clearflag FLAG_UNK_1C4
	setflag FLAG_UNK_1C3
	goto _0208

_03C9:
	clearflag FLAG_UNK_1C3
	setflag FLAG_UNK_1C4
	end

	.byte 0x00
	.balign 4
_03D4:

	step 2, 1
	step_end
	.balign 4
_03DC:

	step 0, 1
	step_end
	.balign 4
_03E4:

	step 34, 1
	step_end
	.balign 4
_03EC:

	step 75, 1
	step_end
	.balign 4
_03F4:

	step 11, 1
	step_end
	.balign 4
_03FC:

	step 13, 1
	step 14, 4
	step_end
	.balign 4
_0408:

	step 13, 1
	step 14, 1
	step_end
	.balign 4
_0414:

	step 2, 1
	step_end
	.balign 4
_041C:

	step 14, 5
	step_end
	.balign 4
_0424:

	step 14, 4
	step 12, 1
	step 14, 1
	step_end
	.balign 4
_0434:

	step 14, 4
	step 13, 1
	step 14, 1
	step_end
	.balign 4
_0444:

	step 15, 4
	step_end
	.balign 4
_044C:

	step 13, 1
	step 15, 3
	step_end
	.balign 4
_0458:

	step 12, 1
	step 15, 3
	step_end
	.balign 4
_0464:

	step 15, 1
	step 13, 2
	step 14, 2
	step_end
	.balign 4
