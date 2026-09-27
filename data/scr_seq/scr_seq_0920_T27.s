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

.include "data/scr_seq/include/event_T27.inc"


// text archive to grab from: 612.txt

.data


scrdef scr_seq_T27_000
scrdef scr_seq_T27_001
scrdef scr_seq_T27_002
scrdef scr_seq_T27_003
scrdef scr_seq_T27_004
scrdef scr_seq_T27_005
scrdef scr_seq_T27_006
scrdef scr_seq_T27_007
scrdef scr_seq_T27_008
scrdef scr_seq_T27_009
scrdef scr_seq_T27_010
scrdef scr_seq_T27_011
scrdef scr_seq_T27_012
scrdef scr_seq_T27_013
scrdef scr_seq_T27_014
scrdef scr_seq_T27_015
scrdef scr_seq_T27_016
scrdef scr_seq_T27_017
scrdef_end

scr_seq_T27_000:
	end

scr_seq_T27_001:
	direction_signpost 11, 0, 18, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T27_002:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 12, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T27_003:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 13, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T27_004:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 14, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T27_005:
	scrcmd_609
	lockall
	clearflag FLAG_HIDE_ECRUTEAK_RIVAL
	show_person obj_T27_gsrivel
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_T27_gsrivel, _04F4
	apply_movement obj_player, _0508
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_se SEQ_SE_DP_WALL_HIT2
	npc_msg 16
	wait 30, VAR_SPECIAL_RESULT
	buffer_rivals_name 1
	npc_msg 17
	closemsg
	apply_movement obj_T27_gsrivel, _051C
	wait_movement
	buffer_players_name 0
	buffer_rivals_name 1
	npc_msg 18
	closemsg
	play_se SEQ_SE_DP_WALL_HIT2
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_T27_gsrivel, _052C
	apply_movement obj_player, _0508
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_T27_gsrivel, _0538
	apply_movement obj_player, _0548
	wait_movement
	hide_person obj_T27_gsrivel
	setflag FLAG_HIDE_ECRUTEAK_RIVAL
	releaseall
	setvar VAR_UNK_4079, 4
	setvar VAR_UNK_410C, 4
	clearflag FLAG_HIDE_DANCE_STUDIO_KIMONO_GIRLS
	setflag FLAG_UNK_241
	end

scr_seq_T27_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GAME_CLEAR, _0302
	compare VAR_UNK_40A1, 0
	goto_if_ne _030D
	npc_msg 5
	goto _0318

scr_seq_T27_007:
	simple_npc_msg 10
	end

scr_seq_T27_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_96A, _0320
	npc_msg 8
	goto _032B

scr_seq_T27_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GAME_CLEAR, _0333
	npc_msg 0
	wait_button
	closemsg
	releaseall
	end

scr_seq_T27_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_410C, 2
	goto_if_gt _033E
	npc_msg 2
	goto _0349

scr_seq_T27_011:
	simple_npc_msg 4
	end

scr_seq_T27_012:
	scrcmd_609
	lockall
	scrcmd_307 11, 5, 25, 23, 1
	scrcmd_310 1
	scrcmd_308 1
	apply_movement obj_player, _0554
	wait_movement
	lock obj_partner_poke
	scrcmd_596 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0351
	scrcmd_606
	goto _036A

scr_seq_T27_013:
	simple_npc_msg 19
	end

scr_seq_T27_014:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0381
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0395
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _03A9
	apply_movement obj_player, _0560
	apply_movement obj_T27_gsmiddleman1, _0578
	goto _03C4

scr_seq_T27_015:
	goto_if_unset FLAG_UNK_189, _0425
	clearflag FLAG_UNK_189
	end

scr_seq_T27_016:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 15, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T27_017:
	simple_npc_msg 20
	end

_0302:
	npc_msg 7
	wait_button
	closemsg
	releaseall
	end

_030D:
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

_0318:
	wait_button
	closemsg
	releaseall
	end

_0320:
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_032B:
	wait_button
	closemsg
	releaseall
	end

_0333:
	npc_msg 1
	wait_button
	closemsg
	releaseall
	end

_033E:
	npc_msg 3
	wait_button
	closemsg
	releaseall
	end

_0349:
	wait_button
	closemsg
	releaseall
	end

_0351:
	scrcmd_607
	release obj_partner_poke
	setvar VAR_UNK_4079, 0
	scrcmd_311 1
	scrcmd_308 1
	scrcmd_309 1
	releaseall
	end

_036A:
	release obj_partner_poke
	setvar VAR_UNK_4079, 0
	scrcmd_311 1
	scrcmd_308 1
	scrcmd_309 1
	releaseall
	end

_0381:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button
	closemsg
	releaseall
	end

_0395:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button
	closemsg
	releaseall
	end

_03A9:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0440
	apply_movement obj_player, _0584
	goto _03C4

_03C4:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04B1
	apply_movement obj_partner_poke, _0590
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 19
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

_0425:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_ne _04EB
	clearflag FLAG_HIDE_CAMERON
	goto _04F1

_0440:
	apply_movement obj_player, _05A0
	apply_movement obj_T27_gsmiddleman1, _0578
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04B1
	apply_movement obj_partner_poke, _0590
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 19
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

_04B1:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 19
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

_04EB:
	setflag FLAG_HIDE_CAMERON
	end

_04F1:
	end

	.byte 0x00
	.balign 4
_04F4:

	step 71, 1
	step 17, 1
	step 36, 1
	step 72, 1
	step_end
	.balign 4
_0508:

	step 0, 1
	step 71, 1
	step 17, 1
	step 72, 1
	step_end
	.balign 4
_051C:

	step 75, 1
	step 63, 1
	step 33, 1
	step_end
	.balign 4
_052C:

	step 17, 1
	step 37, 1
	step_end
	.balign 4
_0538:

	step 10, 3
	step 63, 3
	step 18, 6
	step_end
	.balign 4
_0548:

	step 63, 3
	step 34, 1
	step_end
	.balign 4
_0554:

	step 17, 2
	step 63, 1
	step_end
	.balign 4
_0560:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_0578:

	step 63, 1
	step 32, 1
	step_end
	.balign 4
_0584:

	step 12, 3
	step 33, 1
	step_end
	.balign 4
_0590:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.balign 4
_05A0:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
