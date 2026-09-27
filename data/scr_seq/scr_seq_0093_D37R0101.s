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

.include "data/scr_seq/include/event_D37R0101.inc"


// text archive to grab from: 116.txt

.data


scrdef scr_seq_D37R0101_000
scrdef scr_seq_D37R0101_001
scrdef scr_seq_D37R0101_002
scrdef scr_seq_D37R0101_003
scrdef_end

scr_seq_D37R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 2
	goto_if_ne _0130
	npc_msg 2
	goto _0146

scr_seq_D37R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	rocket_trap_battle 1127, 10
	compare VAR_SCENE_ROCKET_TAKEOVER, 2
	goto_if_ne _014E
	npc_msg 5
	goto _0164

scr_seq_D37R0101_002:
	scrcmd_609
	lockall
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 3
	goto_if_eq _016C
	clearflag FLAG_HIDE_GOLDENROD_UNDERGROUND_FRIEND
	show_person obj_D37R0101_2684
	compare VAR_TEMP_x4001, 30
	goto_if_ne _0249
	move_person_facing obj_D37R0101_2684, 9, 0, 25, DIR_WEST
	play_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_D37R0101_2684, _0518
	wait_movement
	wait 8, VAR_SPECIAL_RESULT
	play_cry SPECIES_MARILL, 0
	wait_cry
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0560
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	clearflag FLAG_HIDE_GOLDENROD_UNDERGROUND_FRIEND
	show_person obj_D37R0101_var_1
	compare VAR_TEMP_x4001, 30
	goto_if_ne _02E7
	move_person_facing obj_D37R0101_var_1, 9, 0, 25, DIR_WEST
	play_se SEQ_SE_DP_KAIDAN2
	callstd std_play_friend_music
	apply_movement obj_D37R0101_var_1, _0568
	wait_movement
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _032A
	apply_movement obj_D37R0101_2684, _0574
	apply_movement obj_player, _0574
	apply_movement obj_partner_poke, _0574
	wait_movement
	goto _03AF

scr_seq_D37R0101_003:
	get_friend_sprite VAR_OBJ_0
	end

_0130:
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _0422
	npc_msg 2
	goto _0146

_0146:
	wait_button
	closemsg
	releaseall
	end

_014E:
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _0438
	npc_msg 5
	goto _0164

_0164:
	wait_button
	closemsg
	releaseall
	end

_016C:
	clearflag FLAG_HIDE_GOLDENROD_UNDERGROUND_FRIEND
	show_person obj_D37R0101_var_1
	clearflag FLAG_HIDE_GOLDENROD_UNDERGROUND_FRIEND
	show_person obj_D37R0101_2684
	lock obj_D37R0101_2684
	callstd std_play_friend_music
	move_person_facing obj_D37R0101_var_1, 25, 0, 9, DIR_NORTH
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_player, _057C
	apply_movement obj_D37R0101_var_1, _0584
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _058C
	apply_movement obj_D37R0101_var_1, _0594
	wait 8, VAR_SPECIAL_RESULT
	move_person_facing obj_D37R0101_2684, 25, 0, 9, DIR_NORTH
	apply_movement obj_D37R0101_2684, _059C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	gender_msgbox 6, 9
	gender_msgbox 7, 10
	giveitem_no_check ITEM_FASHION_CASE, 1
	call _044E
	gender_msgbox 8, 11
	closemsg
	apply_movement obj_D37R0101_var_1, _05A4
	apply_movement obj_D37R0101_2684, _05B8
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_GOLDENROD_UNDERGROUND_FRIEND
	hide_person obj_D37R0101_var_1
	hide_person obj_D37R0101_2684
	wait_se SEQ_SE_DP_KAIDAN2
	callstd std_fade_end_friend_music
	setvar VAR_UNK_40F8, 1
	setflag FLAG_UNK_14C
	releaseall
	end

_0249:
	play_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_D37R0101_2684, _0518
	wait_movement
	wait 8, VAR_SPECIAL_RESULT
	play_cry SPECIES_MARILL, 0
	wait_cry
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0560
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	clearflag FLAG_HIDE_GOLDENROD_UNDERGROUND_FRIEND
	show_person obj_D37R0101_var_1
	compare VAR_TEMP_x4001, 30
	goto_if_ne _02E7
	move_person_facing obj_D37R0101_var_1, 9, 0, 25, DIR_WEST
	play_se SEQ_SE_DP_KAIDAN2
	callstd std_play_friend_music
	apply_movement obj_D37R0101_var_1, _0568
	wait_movement
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _032A
	apply_movement obj_D37R0101_2684, _0574
	apply_movement obj_player, _0574
	apply_movement obj_partner_poke, _0574
	wait_movement
	goto _03AF

_02E7:
	play_se SEQ_SE_DP_KAIDAN2
	callstd std_play_friend_music
	apply_movement obj_D37R0101_var_1, _0568
	wait_movement
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _032A
	apply_movement obj_D37R0101_2684, _0574
	apply_movement obj_player, _0574
	apply_movement obj_partner_poke, _0574
	wait_movement
	goto _03AF

_032A:
	apply_movement obj_D37R0101_2684, _0574
	apply_movement obj_player, _0574
	wait_movement
	buffer_players_name 0
	gender_msgbox 6, 9
	closemsg
	apply_movement obj_D37R0101_var_1, _05D0
	apply_movement obj_D37R0101_2684, _05E0
	wait_movement
	gender_msgbox 7, 10
	giveitem_no_check ITEM_FASHION_CASE, 1
	call _044E
	gender_msgbox 8, 11
	closemsg
	apply_movement obj_D37R0101_var_1, _05F0
	apply_movement obj_D37R0101_2684, _0604
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_GOLDENROD_UNDERGROUND_FRIEND
	hide_person obj_D37R0101_var_1
	hide_person obj_D37R0101_2684
	wait_se SEQ_SE_DP_KAIDAN2
	callstd std_fade_end_friend_music
	setvar VAR_UNK_40F8, 1
	setflag FLAG_UNK_14C
	releaseall
	end

_03AF:
	buffer_players_name 0
	gender_msgbox 6, 9
	closemsg
	apply_movement obj_D37R0101_var_1, _05D0
	apply_movement obj_D37R0101_2684, _05E0
	wait_movement
	gender_msgbox 7, 10
	giveitem_no_check ITEM_FASHION_CASE, 1
	call _044E
	gender_msgbox 8, 11
	closemsg
	apply_movement obj_D37R0101_var_1, _05F0
	apply_movement obj_D37R0101_2684, _0604
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_GOLDENROD_UNDERGROUND_FRIEND
	hide_person obj_D37R0101_var_1
	hide_person obj_D37R0101_2684
	wait_se SEQ_SE_DP_KAIDAN2
	callstd std_fade_end_friend_music
	setvar VAR_UNK_40F8, 1
	setflag FLAG_UNK_14C
	releaseall
	end

_0422:
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _04A2
	npc_msg 1
	goto _0146

_0438:
	compare VAR_SCENE_ROCKET_TAKEOVER, 3
	goto_if_ne _04AD
	npc_msg 4
	goto _0164

_044E:
	call _04B8
	call _04B8
	call _04B8
	call _04B8
	call _04B8
	call _04D2
	call _04D2
	call _04D2
	call _04D2
	call _04D2
	scrcmd_406 0
	setvar VAR_TEMP_x4001, 9999
	call _04EC
	call _04EC
	return

_04A2:
	npc_msg 0
	wait_button
	closemsg
	releaseall
	end

_04AD:
	npc_msg 3
	wait_button
	closemsg
	releaseall
	end

_04B8:
	random VAR_SPECIAL_RESULT, 6
	setvar VAR_SPECIAL_x8004, 0
	addvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_403 VAR_SPECIAL_x8004, 1
	return

_04D2:
	random VAR_SPECIAL_RESULT, 6
	setvar VAR_SPECIAL_x8004, 18
	addvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_403 VAR_SPECIAL_x8004, 1
	return

_04EC:
	random VAR_SPECIAL_RESULT, 8
	compare VAR_TEMP_x4001, VAR_SPECIAL_RESULT
	goto_if_eq _04EC
	copyvar VAR_TEMP_x4001, VAR_SPECIAL_RESULT
	setvar VAR_SPECIAL_x8004, 1
	addvar VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	scrcmd_406 VAR_SPECIAL_x8004
	return

	.byte 0x00
	.balign 4
_0518:

	step 78, 1
	step 39, 1
	step 50, 2
	step 18, 3
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step 60, 1
	step 2, 1
	step 60, 1
	step 0, 1
	step 60, 1
	step 3, 1
	step 60, 1
	step 1, 1
	step_end
	.balign 4
_0560:

	step 12, 3
	step_end
	.balign 4
_0568:

	step 14, 1
	step 75, 1
	step_end
	.balign 4
_0574:

	step 35, 1
	step_end
	.balign 4
_057C:

	step 33, 1
	step_end
	.balign 4
_0584:

	step 75, 1
	step_end
	.balign 4
_058C:

	step 13, 2
	step_end
	.balign 4
_0594:

	step 12, 2
	step_end
	.balign 4
_059C:

	step 12, 1
	step_end
	.balign 4
_05A4:

	step 15, 1
	step 12, 4
	step 14, 2
	step 69, 1
	step_end
	.balign 4
_05B8:

	step 12, 1
	step 15, 1
	step 12, 4
	step 14, 2
	step 69, 1
	step_end
	.balign 4
_05D0:

	step 14, 1
	step 13, 2
	step 14, 1
	step_end
	.balign 4
_05E0:

	step 63, 3
	step 15, 1
	step 13, 1
	step_end
	.balign 4
_05F0:

	step 13, 2
	step 14, 1
	step 13, 1
	step 69, 1
	step_end
	.balign 4
_0604:

	step 13, 3
	step 14, 1
	step 13, 1
	step 69, 1
	step_end
	.balign 4
