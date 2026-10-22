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

.include "data/scr_seq/include/event_R48.inc"


// text archive to grab from: 408.txt

.data


scrdef scr_seq_R48_000
scrdef scr_seq_R48_001
scrdef scr_seq_R48_002
scrdef scr_seq_R48_003
scrdef scr_seq_R48_004
scrdef scr_seq_R48_005
scrdef_end

scr_seq_R48_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0147
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _015B
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _016F
	apply_movement obj_player, _02C0
	apply_movement obj_R48_gsmiddleman1, _02D8
	goto _018A

scr_seq_R48_001:
	goto_if_unset FLAG_UNK_189, _01EB
	clearflag FLAG_UNK_189
	end

scr_seq_R48_002:
	direction_signpost 0, 1, 13, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R48_003:
	lockall
	play_se SEQ_SE_DP_SELECT
	hide_person obj_R48_3946
	giveitem_no_check ITEM_SCOLIPITE, 1
	setflag FLAG_HIDE_ITEMBALL_R48_NUGGET
	closemsg
	releaseall
	end

scr_seq_R48_004:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 8
	setvar VAR_SPECIAL_x8008, 15
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R48_4069
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_R48_005:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 7
	setvar VAR_SPECIAL_x8008, 16
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R48_4068
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0147:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button
	closemsg
	releaseall
	end

_015B:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button
	closemsg
	releaseall
	end

_016F:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _020F
	apply_movement obj_player, _02E4
	goto _018A

_018A:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0280
	apply_movement obj_partner_poke, _02F0
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 37
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

_01EB:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_eq _02BA
	compare VAR_TEMP_x4000, 0
	goto_if_eq _02BA
	setflag FLAG_HIDE_CAMERON
	end

_020F:
	apply_movement obj_player, _0300
	apply_movement obj_R48_gsmiddleman1, _02D8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0280
	apply_movement obj_partner_poke, _02F0
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 37
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

_0280:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 37
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

_02BA:
	clearflag FLAG_HIDE_CAMERON
	end

	.balign 4
_02C0:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_02D8:

	step 63, 1
	step 32, 1
	step_end
	.balign 4
_02E4:

	step 12, 3
	step 33, 1
	step_end
	.balign 4
_02F0:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.balign 4
_0300:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
