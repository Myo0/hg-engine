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

.include "data/scr_seq/include/event_T26.inc"


// text archive to grab from: 604.txt

.data


scrdef scr_seq_T26_000
scrdef scr_seq_T26_001
scrdef scr_seq_T26_002
scrdef scr_seq_T26_003
scrdef scr_seq_T26_004
scrdef scr_seq_T26_005
scrdef scr_seq_T26_006
scrdef scr_seq_T26_007
scrdef scr_seq_T26_008
scrdef scr_seq_T26_009
scrdef scr_seq_T26_010
scrdef scr_seq_T26_011
scrdef scr_seq_T26_012
scrdef scr_seq_T26_013
scrdef_end

scr_seq_T26_000:
	end

scr_seq_T26_001:
	scrcmd_609
	lockall
	setflag FLAG_UNK_A6A
	setflag FLAG_UNK_A6B
	fade_out_bgm 0, 3
	scrcmd_307 8, 7, 13, 14, 77
	scrcmd_310 77
	scrcmd_308 77
	clearflag FLAG_HIDE_OLIVINE_RIVAL
	show_person obj_T26_gsrivel
	apply_movement obj_T26_gsrivel, _05B2
	wait_movement
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	apply_movement obj_player, _05BE
	wait_movement
	callstd std_play_rival_intro_music
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 239
	goto_if_ne _0242
	apply_movement obj_T26_gsrivel, _05CA
	goto _025D

scr_seq_T26_002:
	setvar VAR_SCENE_ROCKET_TAKEOVER, 2
	setflag FLAG_UNK_0C5
	setflag FLAG_ROCKET_TAKEOVER_ACTIVE
	compare VAR_UNK_40F8, 0
	goto_if_ne _0292
	setvar VAR_UNK_40F8, 2
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8005, 2
	setvar VAR_SPECIAL_x8006, 2
	callstd std_phone_call
	setvar VAR_MIDGAME_BADGES, 5
	end

scr_seq_T26_003:
	setflag FLAG_UNK_0F5
	setvar VAR_UNK_4057, 1
	setvar VAR_SPECIAL_x8004, 24
	setvar VAR_SPECIAL_x8005, 2
	setvar VAR_SPECIAL_x8006, 0
	callstd std_phone_call
	setflag FLAG_UNK_249
	setvar VAR_SCENE_LIGHTHOUSE_JASMINE, 3
	end

scr_seq_T26_004:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 7, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T26_005:
	direction_signpost 5, 0, 17, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T26_006:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 6, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T26_007:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 8, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T26_008:
	simple_npc_msg 1
	end

scr_seq_T26_009:
	simple_npc_msg 2
	end

scr_seq_T26_010:
	simple_npc_msg 4
	end

scr_seq_T26_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02B0
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02C4
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _02D8
	apply_movement obj_player, _05DA
	apply_movement obj_T26_gsmiddleman1, _05F2
	goto _02F3

scr_seq_T26_012:
	goto_if_unset FLAG_UNK_189, _0354
	clearflag FLAG_UNK_189
	end

scr_seq_T26_013:
	lockall
	npc_msg 9
	closemsg
	apply_movement obj_player, _075A
	wait_movement
	releaseall
	end

_0242:
	compare VAR_TEMP_x4001, 240
	goto_if_ne _036F
	apply_movement obj_T26_gsrivel, _05FE
	goto _025D

_025D:
	wait_movement
	buffer_rivals_name 0
	npc_msg 0
	closemsg
	compare VAR_TEMP_x4001, 239
	goto_if_ne _038A
	apply_movement obj_T26_gsrivel, _0612
	apply_movement obj_player, _0622
	apply_movement obj_partner_poke, _0646
	goto _03B5

_0292:
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8005, 2
	setvar VAR_SPECIAL_x8006, 2
	callstd std_phone_call
	setvar VAR_MIDGAME_BADGES, 5
	end

_02B0:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button
	closemsg
	releaseall
	end

_02C4:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button
	closemsg
	releaseall
	end

_02D8:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _03CD
	apply_movement obj_player, _0662
	goto _02F3

_02F3:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _03F0
	apply_movement obj_partner_poke, _066E
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 23
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

_0354:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _042A
	clearflag FLAG_HIDE_CAMERON
	goto _0441

_036F:
	compare VAR_TEMP_x4001, 241
	goto_if_ne _0443
	apply_movement obj_T26_gsrivel, _067E
	goto _025D

_038A:
	compare VAR_TEMP_x4001, 240
	goto_if_ne _045E
	apply_movement obj_T26_gsrivel, _0692
	apply_movement obj_player, _0622
	apply_movement obj_partner_poke, _0646
	goto _03B5

_03B5:
	wait_movement
	setvar VAR_UNK_4078, 1
	hide_person obj_T26_gsrivel
	setflag FLAG_HIDE_OLIVINE_RIVAL
	callstd std_fade_end_rival_intro_music
	releaseall
	end

_03CD:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0489
	apply_movement obj_player, _06A2
	apply_movement obj_T26_gsmiddleman1, _05F2
	goto _02F3

_03F0:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 23
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

_042A:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _04FA
	clearflag FLAG_HIDE_CAMERON
	goto _0441

_0441:
	end

_0443:
	compare VAR_TEMP_x4001, 242
	goto_if_ne _0500
	apply_movement obj_T26_gsrivel, _06B6
	goto _025D

_045E:
	compare VAR_TEMP_x4001, 241
	goto_if_ne _054A
	apply_movement obj_T26_gsrivel, _06CA
	apply_movement obj_player, _0622
	apply_movement obj_partner_poke, _0646
	goto _03B5

_0489:
	apply_movement obj_player, _06DA
	apply_movement obj_T26_gsmiddleman1, _05F2
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _03F0
	apply_movement obj_partner_poke, _066E
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 23
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
	setflag FLAG_HIDE_CAMERON
	end

_0500:
	compare VAR_TEMP_x4001, 243
	goto_if_ne _025D
	apply_movement obj_T26_gsrivel, _06EE
	wait_movement
	buffer_rivals_name 0
	npc_msg 0
	closemsg
	compare VAR_TEMP_x4001, 239
	goto_if_ne _038A
	apply_movement obj_T26_gsrivel, _0612
	apply_movement obj_player, _0622
	apply_movement obj_partner_poke, _0646
	goto _03B5

_054A:
	compare VAR_TEMP_x4001, 242
	goto_if_ne _0575
	apply_movement obj_T26_gsrivel, _0702
	apply_movement obj_player, _0622
	apply_movement obj_partner_poke, _0646
	goto _03B5

_0575:
	compare VAR_TEMP_x4001, 243
	goto_if_ne _03B5
	apply_movement obj_T26_gsrivel, _0712
	apply_movement obj_player, _0722
	apply_movement obj_partner_poke, _0746
	wait_movement
	setvar VAR_UNK_4078, 1
	hide_person obj_T26_gsrivel
	setflag FLAG_HIDE_OLIVINE_RIVAL
	callstd std_fade_end_rival_intro_music
	releaseall
	end

	.balign 4
_05B2:

	step 13, 1
	step 64, 1
	step_end
	.balign 4
_05BE:

	step 75, 1
	step 63, 1
	step_end
	.balign 4
_05CA:

	step 1, 2
	step 15, 2
	step 64, 1
	step_end
	.balign 4
_05DA:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_05F2:

	step 63, 1
	step 32, 1
	step_end
	.balign 4
_05FE:

	step 13, 1
	step 1, 2
	step 15, 2
	step 64, 1
	step_end
	.balign 4
_0612:

	step 15, 6
	step 0, 2
	step 12, 10
	step_end
	.balign 4
_0622:

	step 0, 2
	step 71, 1
	step 77, 1
	step 72, 1
	step 64, 1
	step 35, 1
	step 64, 1
	step 32, 1
	step_end
	.balign 4
_0646:

	step 0, 2
	step 71, 1
	step 77, 1
	step 72, 1
	step 66, 2
	step 34, 1
	step_end
	.balign 4
_0662:

	step 12, 3
	step 33, 1
	step_end
	.balign 4
_066E:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.balign 4
_067E:

	step 13, 2
	step 1, 2
	step 15, 2
	step 64, 1
	step_end
	.balign 4
_0692:

	step 15, 6
	step 0, 2
	step 12, 11
	step_end
	.balign 4
_06A2:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_06B6:

	step 13, 3
	step 1, 2
	step 15, 2
	step 64, 1
	step_end
	.balign 4
_06CA:

	step 15, 6
	step 0, 2
	step 12, 12
	step_end
	.balign 4
_06DA:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_06EE:

	step 13, 4
	step 1, 2
	step 15, 2
	step 64, 1
	step_end
	.balign 4
_0702:

	step 15, 6
	step 0, 2
	step 12, 13
	step_end
	.balign 4
_0712:

	step 15, 6
	step 0, 2
	step 12, 14
	step_end
	.balign 4
_0722:

	step 1, 2
	step 71, 1
	step 76, 1
	step 72, 1
	step 64, 1
	step 35, 1
	step 64, 1
	step 32, 1
	step_end
	.balign 4
_0746:

	step 1, 2
	step 71, 1
	step 76, 1
	step 72, 1
	step_end
	.balign 4
_075A:

	step 15, 1
	step_end
	.balign 4
