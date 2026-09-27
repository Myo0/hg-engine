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

.include "data/scr_seq/include/event_T30.inc"


// text archive to grab from: 629.txt

.data


scrdef scr_seq_T30_000
scrdef scr_seq_T30_001
scrdef scr_seq_T30_002
scrdef scr_seq_T30_003
scrdef scr_seq_T30_004
scrdef scr_seq_T30_005
scrdef scr_seq_T30_006
scrdef scr_seq_T30_007
scrdef scr_seq_T30_008
scrdef scr_seq_T30_009
scrdef scr_seq_T30_010
scrdef scr_seq_T30_011
scrdef scr_seq_T30_012
scrdef scr_seq_T30_013
scrdef scr_seq_T30_014
scrdef scr_seq_T30_015
scrdef scr_seq_T30_016
scrdef scr_seq_T30_017
scrdef scr_seq_T30_018
scrdef scr_seq_T30_019
scrdef_end

scr_seq_T30_000:
	simple_npc_msg 0
	end

scr_seq_T30_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0D1, _0310
	npc_msg 1
	wait_button
	closemsg
	releaseall
	end

scr_seq_T30_002:
	simple_npc_msg 3
	end

scr_seq_T30_003:
	simple_npc_msg 4
	end

scr_seq_T30_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 2
	goto_if_ne _031B
	npc_msg 5
	goto _0326

scr_seq_T30_005:
	compare VAR_UNK_40C4, 1
	goto_if_ne _032E
	setflag FLAG_HIDE_VICTORY_ROAD_CLAIR
	setvar VAR_UNK_40C4, 2
	goto_if_unset FLAG_UNK_189, _033F
	clearflag FLAG_UNK_189
	end

scr_seq_T30_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_party_lead_alive VAR_SPECIAL_x8002
	mon_has_ribbon VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002, RIBBON_SNOOZE
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _035A
	goto_if_set FLAG_DAILY_GOT_SHOCK_RIBBON, _036E
	compare VAR_NUM_MET_WEEKDAY_SIBLINGS, 7
	goto_if_eq _0382
	goto_if_set FLAG_GOT_SOFT_SAND_FROM_SANTOS, _03A5
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _03B9
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 23
	goto _0408

scr_seq_T30_007:
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8005, 2
	setvar VAR_SPECIAL_x8006, 3
	callstd std_phone_call
	setvar VAR_UNK_407B, 2
	end

scr_seq_T30_008:
	direction_signpost 10, 0, 20, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T30_009:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 11, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T30_010:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 12, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T30_011:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 13, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T30_012:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 14, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T30_013:
	simple_npc_msg 7
	end

scr_seq_T30_014:
	simple_npc_msg 8
	end

scr_seq_T30_015:
	simple_npc_msg 9
	end

scr_seq_T30_016:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0410
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0424
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0438
	apply_movement obj_player, _0606
	apply_movement obj_T30_gsmiddleman1, _061E
	goto _0453

scr_seq_T30_017:
	lockall
	clearflag FLAG_UNK_18D
	setvar VAR_UNK_406A, 0
	apply_movement obj_player, _062A
	wait_movement
	npc_msg 15
	closemsg
	releaseall
	end

scr_seq_T30_018:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 16
	closemsg
	releaseall
	end

scr_seq_T30_019:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	getitemquantity ITEM_SUPER_ROD, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _05EF
	npc_msg 17
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _05FA
	npc_msg 18
	giveitem_no_check ITEM_SUPER_ROD, 1
	npc_msg 19
	wait_button
	closemsg
	releaseall
	end

_0310:
	npc_msg 2
	wait_button
	closemsg
	releaseall
	end

_031B:
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

_0326:
	wait_button
	closemsg
	releaseall
	end

_032E:
	goto_if_unset FLAG_UNK_189, _033F
	clearflag FLAG_UNK_189
	end

_033F:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_ne _04B4
	clearflag FLAG_HIDE_CAMERON
	goto _04CB

_035A:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 49
	wait_button
	closemsg
	releaseall
	end

_036E:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 51
	wait_button
	closemsg
	releaseall
	end

_0382:
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _04E6
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 23
	goto _0408

_03A5:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 22
	wait_button
	closemsg
	releaseall
	end

_03B9:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 20
	goto_if_no_item_space ITEM_SOFT_SAND, 1, _0515
	callstd std_give_item_verbose
	setflag FLAG_GOT_SOFT_SAND_FROM_SANTOS
	addvar VAR_NUM_MET_WEEKDAY_SIBLINGS, 1
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 21
	wait_button
	closemsg
	releaseall
	end

_0408:
	wait_button
	closemsg
	releaseall
	end

_0410:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button
	closemsg
	releaseall
	end

_0424:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button
	closemsg
	releaseall
	end

_0438:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _051F
	apply_movement obj_player, _0632
	goto _0453

_0453:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0590
	apply_movement obj_partner_poke, _063E
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 44
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

_04B4:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _05CA
	clearflag FLAG_HIDE_CAMERON
	goto _04CB

_04CB:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _05E9
	clearflag FLAG_UNK_204
	goto _05EF

_04E6:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 48
	buffer_mon_species_name 0, VAR_SPECIAL_x8002
	msgbox_extern VAR_SPECIAL_RESULT, 50
	give_ribbon VAR_SPECIAL_x8002, RIBBON_SNOOZE
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	setflag FLAG_DAILY_GOT_SHOCK_RIBBON
	wait_button
	closemsg
	releaseall
	end

_0515:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_051F:
	apply_movement obj_player, _064E
	apply_movement obj_T30_gsmiddleman1, _061E
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0590
	apply_movement obj_partner_poke, _063E
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 44
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

_0590:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 44
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

_05CA:
	setflag FLAG_HIDE_CAMERON
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _05E9
	clearflag FLAG_UNK_204
	goto _05EF

_05E9:
	setflag FLAG_UNK_204
	end

_05EF:
	npc_msg 19
	wait_button
	closemsg
	releaseall
	end

_05FA:
	npc_msg 20
	wait_button
	closemsg
	releaseall
	end

	.byte 0x00
	.balign 4
_0606:

	step 14, 1
	step 12, 2
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_061E:

	step 63, 1
	step 32, 1
	step_end
	.balign 4
_062A:

	step 75, 1
	step_end
	.balign 4
_0632:

	step 12, 3
	step 33, 1
	step_end
	.balign 4
_063E:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.balign 4
_064E:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
