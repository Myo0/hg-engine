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

.include "data/scr_seq/include/event_D22R0101.inc"


// text archive to grab from: 062.txt

.data


scrdef scr_seq_D22R0101_000
scrdef scr_seq_D22R0101_001
scrdef scr_seq_D22R0101_002
scrdef scr_seq_D22R0101_003
scrdef scr_seq_D22R0101_004
scrdef scr_seq_D22R0101_005
scrdef scr_seq_D22R0101_006
scrdef scr_seq_D22R0101_007
scrdef scr_seq_D22R0101_008
scrdef scr_seq_D22R0101_009
scrdef scr_seq_D22R0101_010
scrdef scr_seq_D22R0101_011
scrdef scr_seq_D22R0101_012
scrdef scr_seq_D22R0101_013
scrdef scr_seq_D22R0101_014
scrdef scr_seq_D22R0101_015
scrdef scr_seq_D22R0101_016
scrdef scr_seq_D22R0101_017
scrdef scr_seq_D22R0101_018
scrdef scr_seq_D22R0101_019
scrdef scr_seq_D22R0101_020
scrdef scr_seq_D22R0101_021
scrdef scr_seq_D22R0101_022
scrdef scr_seq_D22R0101_023
scrdef scr_seq_D22R0101_024
scrdef scr_seq_D22R0101_025
scrdef scr_seq_D22R0101_026
scrdef scr_seq_D22R0101_027
scrdef_end

scr_seq_D22R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_QUICK_CLAW_FROM_NATIONAL_PARK_WOMAN, _03DB
	npc_msg 2
	goto_if_no_item_space ITEM_QUICK_CLAW, 1, _03E6
	callstd std_give_item_verbose
	setflag FLAG_GOT_QUICK_CLAW_FROM_NATIONAL_PARK_WOMAN
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

scr_seq_D22R0101_001:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 22, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D22R0101_002:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 23, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D22R0101_003:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 24, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_D22R0101_004:
	simple_npc_msg 0
	end

scr_seq_D22R0101_005:
	simple_npc_msg 1
	end

scr_seq_D22R0101_006:
	simple_npc_msg 5
	end

scr_seq_D22R0101_007:
	simple_npc_msg 6
	end

scr_seq_D22R0101_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setflag FLAG_UNK_83E
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

scr_seq_D22R0101_009:
	simple_npc_msg 7
	end

scr_seq_D22R0101_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	play_cry SPECIES_PERSIAN, 0
	wait_cry
	wait_button
	closemsg
	releaseall
	end

scr_seq_D22R0101_011:
	compare VAR_UNK_40F7, 1
	call_if_eq _03F0
	end

scr_seq_D22R0101_012:
	simple_npc_msg 45
	end

scr_seq_D22R0101_013:
	simple_npc_msg 48
	end

scr_seq_D22R0101_014:
	simple_npc_msg 51
	end

scr_seq_D22R0101_015:
	simple_npc_msg 54
	end

scr_seq_D22R0101_016:
	simple_npc_msg 57
	end

scr_seq_D22R0101_017:
	simple_npc_msg 60
	end

scr_seq_D22R0101_018:
	simple_npc_msg 63
	end

scr_seq_D22R0101_019:
	simple_npc_msg 66
	end

scr_seq_D22R0101_020:
	simple_npc_msg 69
	end

scr_seq_D22R0101_021:
	simple_npc_msg 72
	end

scr_seq_D22R0101_022:
	simple_npc_msg 42
	end

scr_seq_D22R0101_023:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0456
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _046A
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _047E
	apply_movement obj_player, _08EE
	apply_movement obj_D22R0101_gsmiddleman1_2, _0906
	goto _0499

scr_seq_D22R0101_024:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0456
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _046A
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _04FA
	apply_movement obj_player, _08EE
	apply_movement obj_D22R0101_gsmiddleman1_3, _0906
	goto _0515

scr_seq_D22R0101_025:
	goto_if_unset FLAG_UNK_189, _0576
	clearflag FLAG_UNK_189
	end

scr_seq_D22R0101_026:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_eq _05D6
	buffer_players_name 0
	npc_msg 84
	wait_button
	closemsg
	releaseall
	end

scr_seq_D22R0101_027:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_405A, 1
	goto_if_eq _063A
	npc_msg 90
	closemsg
	setvar VAR_SPECIAL_x8004, 623
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	goto_if_eq _0643
	callstd std_give_item_verbose
	closemsg
	setvar VAR_UNK_405A, 1
	releaseall
	end

_03DB:
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

_03E6:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_03F0:
	move_person_facing obj_D22R0101_counterm, 51, 0, 48, DIR_SOUTH
	setvar VAR_TEMP_x4000, 0
	setvar VAR_TEMP_x4001, 10
	setvar VAR_TEMP_x4002, 48
	script_overlay_cmd 1, 0
	is_npc_bug_contestant_registered VAR_TEMP_x4000, VAR_TEMP_x4004
	compare VAR_TEMP_x4004, 1
	goto_if_ne _064C
	move_person_facing VAR_TEMP_x4001, VAR_TEMP_x4002, 0, 50, DIR_NORTH
	addvar VAR_TEMP_x4002, 2
	addvar VAR_TEMP_x4000, 1
	addvar VAR_TEMP_x4001, 1
	compare VAR_TEMP_x4000, 10
	goto_if_lt _066B
	script_overlay_cmd 1, 1
	return

_0456:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button
	closemsg
	releaseall
	end

_046A:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button
	closemsg
	releaseall
	end

_047E:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _06AF
	apply_movement obj_player, _0912
	goto _0499

_0499:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _06D2
	apply_movement obj_partner_poke, _091E
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 16
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button
	closemsg
	releaseall
	end

_04FA:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _070C
	apply_movement obj_player, _0912
	goto _0515

_0515:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _072F
	apply_movement obj_partner_poke, _091E
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 17
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button
	closemsg
	releaseall
	end

_0576:
	compare VAR_UNK_40F7, 1
	goto_if_eq _0769
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0786
	compare VAR_TEMP_x4000, 3
	goto_if_eq _0786
	compare VAR_TEMP_x4000, 2
	goto_if_eq _0769
	compare VAR_TEMP_x4000, 4
	goto_if_eq _0769
	compare VAR_TEMP_x4000, 5
	goto_if_eq _0769
	setflag FLAG_HIDE_CAMERON
	clearflag FLAG_UNK_27F
	goto _0794

_05D6:
	buffer_players_name 0
	npc_msg 85
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _07A5
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _07B0
	npc_msg 86
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 7
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 87
	wait_button
	closemsg
	releaseall
	end

_063A:
	npc_msg 91
	closemsg
	releaseall
	end

_0643:
	npc_msg 92
	closemsg
	releaseall
	end

_064C:
	addvar VAR_TEMP_x4000, 1
	addvar VAR_TEMP_x4001, 1
	compare VAR_TEMP_x4000, 10
	goto_if_lt _066B
	script_overlay_cmd 1, 1
	return

_066B:
	is_npc_bug_contestant_registered VAR_TEMP_x4000, VAR_TEMP_x4004
	compare VAR_TEMP_x4004, 1
	goto_if_ne _064C
	move_person_facing VAR_TEMP_x4001, VAR_TEMP_x4002, 0, 50, DIR_NORTH
	addvar VAR_TEMP_x4002, 2
	addvar VAR_TEMP_x4000, 1
	addvar VAR_TEMP_x4001, 1
	compare VAR_TEMP_x4000, 10
	goto_if_lt _066B
	script_overlay_cmd 1, 1
	return

_06AF:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _07BB
	apply_movement obj_player, _092E
	apply_movement obj_D22R0101_gsmiddleman1_2, _0906
	goto _0499

_06D2:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 16
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button
	closemsg
	releaseall
	end

_070C:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _082C
	apply_movement obj_player, _0942
	apply_movement obj_D22R0101_gsmiddleman1_3, _0906
	goto _0515

_072F:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 17
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button
	closemsg
	releaseall
	end

_0769:
	setflag FLAG_HIDE_CAMERON
	setflag FLAG_UNK_27F
	clearflag FLAG_UNK_996
	goto_if_set FLAG_GAME_CLEAR, _089D
	setflag FLAG_UNK_288
	end

_0786:
	clearflag FLAG_HIDE_CAMERON
	setflag FLAG_UNK_27F
	goto _0794

_0794:
	goto_if_set FLAG_GAME_CLEAR, _089D
	setflag FLAG_UNK_288
	end

_07A5:
	npc_msg 88
	wait_button
	closemsg
	releaseall
	end

_07B0:
	npc_msg 89
	wait_button
	closemsg
	releaseall
	end

_07BB:
	apply_movement obj_player, _095E
	apply_movement obj_D22R0101_gsmiddleman1_2, _0906
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _06D2
	apply_movement obj_partner_poke, _091E
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 16
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button
	closemsg
	releaseall
	end

_082C:
	apply_movement obj_player, _095E
	apply_movement obj_D22R0101_gsmiddleman1_3, _0906
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _072F
	apply_movement obj_partner_poke, _091E
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 17
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 2
	wait_button
	closemsg
	releaseall
	end

_089D:
	get_phone_book_rematch PHONE_CONTACT_BUGSY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _08E1
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _08E7
	compare VAR_TEMP_x4000, 3
	goto_if_eq _08E7
	compare VAR_TEMP_x4000, 5
	goto_if_eq _08E7
	setflag FLAG_UNK_288
	end

_08E1:
	setflag FLAG_UNK_288
	end

_08E7:
	clearflag FLAG_UNK_288
	end

	.byte 0x00
	.balign 4
_08EE:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_0906:

	step 63, 1
	step 32, 1
	step_end
	.balign 4
_0912:

	step 12, 3
	step 33, 1
	step_end
	.balign 4
_091E:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.balign 4
_092E:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_0942:

	step 13, 1
	step 15, 2
	step 12, 2
	step 14, 1
	step 12, 2
	step 33, 1
	step_end
	.balign 4
_095E:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
