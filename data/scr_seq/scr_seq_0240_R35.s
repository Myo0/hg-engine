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

.include "data/scr_seq/include/event_R35.inc"


// text archive to grab from: 387.txt

.data


scrdef scr_seq_R35_000
scrdef scr_seq_R35_001
scrdef scr_seq_R35_002
scrdef scr_seq_R35_003
scrdef scr_seq_R35_004
scrdef scr_seq_R35_005
scrdef_end

scr_seq_R35_000:
	direction_signpost 28, 1, 4, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R35_001:
	goto_if_unset FLAG_UNK_189, _00F8
	clearflag FLAG_UNK_189
	end

scr_seq_R35_002:
	simple_npc_msg 21
	end

scr_seq_R35_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _012D
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0141
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0155
	apply_movement obj_player, _02DA
	apply_movement obj_R35_gsmiddleman1, _02EE
	goto _0170

scr_seq_R35_004:
	direction_signpost 29, 1, 19, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R35_005:
	lockall
	faceplayer
	play_cry SPECIES_PIDGEY, 0
	npc_msg 30
	closemsg
	releaseall
	end

_00F8:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _01D1
	compare VAR_TEMP_x4000, 2
	goto_if_eq _01D1
	compare VAR_TEMP_x4000, 5
	goto_if_eq _01D1
	setflag FLAG_HIDE_CAMERON
	goto _01FD

_012D:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button
	closemsg
	releaseall
	end

_0141:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button
	closemsg
	releaseall
	end

_0155:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0225
	apply_movement obj_player, _02FA
	goto _0170

_0170:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0296
	apply_movement obj_partner_poke, _0306
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 11
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

_01D1:
	clearflag FLAG_HIDE_CAMERON
	scrcmd_379 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_eq _02D0
	compare VAR_TEMP_x4000, 4
	goto_if_eq _02D0
	clearflag FLAG_UNK_1CD
	setflag FLAG_UNK_1CE
	end

_01FD:
	scrcmd_379 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 3
	goto_if_eq _02D0
	compare VAR_TEMP_x4000, 4
	goto_if_eq _02D0
	clearflag FLAG_UNK_1CD
	setflag FLAG_UNK_1CE
	end

_0225:
	apply_movement obj_player, _0316
	apply_movement obj_R35_gsmiddleman1, _02EE
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0296
	apply_movement obj_partner_poke, _0306
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 11
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

_0296:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 11
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

_02D0:
	clearflag FLAG_UNK_1CE
	setflag FLAG_UNK_1CD
	end

	.balign 4
_02DA:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_02EE:

	step 63, 1
	step 32, 1
	step_end
	.balign 4
_02FA:

	step 12, 3
	step 33, 1
	step_end
	.balign 4
_0306:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.balign 4
_0316:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
