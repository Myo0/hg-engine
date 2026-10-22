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
scrdef scr_seq_D22R0101_028
scrdef_end

scr_seq_D22R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_QUICK_CLAW_FROM_NATIONAL_PARK_WOMAN, _0403
	npc_msg 2
	goto_if_no_item_space ITEM_QUICK_CLAW, 1, _040E
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
	call_if_eq _0418
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
	goto_if_eq _047E
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0492
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _04A6
	apply_movement obj_player, _0918
	apply_movement obj_D22R0101_gsmiddleman1_2, _0930
	goto _04C1

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
	goto_if_eq _047E
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0492
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0522
	apply_movement obj_player, _0918
	apply_movement obj_D22R0101_gsmiddleman1_3, _0930
	goto _053D

scr_seq_D22R0101_025:
	goto_if_unset FLAG_UNK_189, _059E
	clearflag FLAG_UNK_189
	end

scr_seq_D22R0101_026:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_eq _05FE
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
	goto_if_eq _0662
	npc_msg 90
	closemsg
	setvar VAR_SPECIAL_x8004, 623
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	goto_if_eq _066B
	callstd std_give_item_verbose
	closemsg
	setvar VAR_UNK_405A, 1
	releaseall
	end

scr_seq_D22R0101_028:
	lockall
	play_se SEQ_SE_DP_SELECT
	hide_person obj_D22R0101_monstarball
	giveitem_no_check ITEM_LINKING_CORD, 1
	setflag FLAG_HIDE_ITEMBALL_D22R0101_SOOTHE_BELL
	closemsg
	releaseall
	end

_0403:
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

_040E:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0418:
	move_person_facing obj_D22R0101_counterm, 51, 0, 48, DIR_SOUTH
	setvar VAR_TEMP_x4000, 0
	setvar VAR_TEMP_x4001, 10
	setvar VAR_TEMP_x4002, 48
	script_overlay_cmd 1, 0
	is_npc_bug_contestant_registered VAR_TEMP_x4000, VAR_TEMP_x4004
	compare VAR_TEMP_x4004, 1
	goto_if_ne _0674
	move_person_facing VAR_TEMP_x4001, VAR_TEMP_x4002, 0, 50, DIR_NORTH
	addvar VAR_TEMP_x4002, 2
	addvar VAR_TEMP_x4000, 1
	addvar VAR_TEMP_x4001, 1
	compare VAR_TEMP_x4000, 10
	goto_if_lt _0693
	script_overlay_cmd 1, 1
	return

_047E:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button
	closemsg
	releaseall
	end

_0492:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button
	closemsg
	releaseall
	end

_04A6:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _06D7
	apply_movement obj_player, _093C
	goto _04C1

_04C1:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _06FA
	apply_movement obj_partner_poke, _0948
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

_0522:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0734
	apply_movement obj_player, _093C
	goto _053D

_053D:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0757
	apply_movement obj_partner_poke, _0948
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

_059E:
	compare VAR_UNK_40F7, 1
	goto_if_eq _0791
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _07AE
	compare VAR_TEMP_x4000, 3
	goto_if_eq _07AE
	compare VAR_TEMP_x4000, 2
	goto_if_eq _0791
	compare VAR_TEMP_x4000, 4
	goto_if_eq _0791
	compare VAR_TEMP_x4000, 5
	goto_if_eq _0791
	setflag FLAG_HIDE_CAMERON
	clearflag FLAG_UNK_27F
	goto _07BC

_05FE:
	buffer_players_name 0
	npc_msg 85
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _07CD
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _07D8
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

_0662:
	npc_msg 91
	closemsg
	releaseall
	end

_066B:
	npc_msg 92
	closemsg
	releaseall
	end

_0674:
	addvar VAR_TEMP_x4000, 1
	addvar VAR_TEMP_x4001, 1
	compare VAR_TEMP_x4000, 10
	goto_if_lt _0693
	script_overlay_cmd 1, 1
	return

_0693:
	is_npc_bug_contestant_registered VAR_TEMP_x4000, VAR_TEMP_x4004
	compare VAR_TEMP_x4004, 1
	goto_if_ne _0674
	move_person_facing VAR_TEMP_x4001, VAR_TEMP_x4002, 0, 50, DIR_NORTH
	addvar VAR_TEMP_x4002, 2
	addvar VAR_TEMP_x4000, 1
	addvar VAR_TEMP_x4001, 1
	compare VAR_TEMP_x4000, 10
	goto_if_lt _0693
	script_overlay_cmd 1, 1
	return

_06D7:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _07E3
	apply_movement obj_player, _0958
	apply_movement obj_D22R0101_gsmiddleman1_2, _0930
	goto _04C1

_06FA:
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

_0734:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0854
	apply_movement obj_player, _096C
	apply_movement obj_D22R0101_gsmiddleman1_3, _0930
	goto _053D

_0757:
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

_0791:
	setflag FLAG_HIDE_CAMERON
	setflag FLAG_UNK_27F
	clearflag FLAG_UNK_996
	goto_if_set FLAG_GAME_CLEAR, _08C5
	setflag FLAG_UNK_288
	end

_07AE:
	clearflag FLAG_HIDE_CAMERON
	setflag FLAG_UNK_27F
	goto _07BC

_07BC:
	goto_if_set FLAG_GAME_CLEAR, _08C5
	setflag FLAG_UNK_288
	end

_07CD:
	npc_msg 88
	wait_button
	closemsg
	releaseall
	end

_07D8:
	npc_msg 89
	wait_button
	closemsg
	releaseall
	end

_07E3:
	apply_movement obj_player, _0988
	apply_movement obj_D22R0101_gsmiddleman1_2, _0930
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _06FA
	apply_movement obj_partner_poke, _0948
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

_0854:
	apply_movement obj_player, _0988
	apply_movement obj_D22R0101_gsmiddleman1_3, _0930
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0757
	apply_movement obj_partner_poke, _0948
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

_08C5:
	get_phone_book_rematch PHONE_CONTACT_BUGSY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _0909
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _090F
	compare VAR_TEMP_x4000, 3
	goto_if_eq _090F
	compare VAR_TEMP_x4000, 5
	goto_if_eq _090F
	setflag FLAG_UNK_288
	end

_0909:
	setflag FLAG_UNK_288
	end

_090F:
	clearflag FLAG_UNK_288
	end

	.byte 0x00, 0x00, 0x00
	.balign 4
_0918:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_0930:

	step 63, 1
	step 32, 1
	step_end
	.balign 4
_093C:

	step 12, 3
	step 33, 1
	step_end
	.balign 4
_0948:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.balign 4
_0958:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_096C:

	step 13, 1
	step 15, 2
	step 12, 2
	step 14, 1
	step 12, 2
	step 33, 1
	step_end
	.balign 4
_0988:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
