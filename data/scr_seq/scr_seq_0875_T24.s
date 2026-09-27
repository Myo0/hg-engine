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

.include "data/scr_seq/include/event_T24.inc"


// text archive to grab from: 572.txt

.data


scrdef scr_seq_T24_000
scrdef scr_seq_T24_001
scrdef scr_seq_T24_002
scrdef scr_seq_T24_003
scrdef scr_seq_T24_004
scrdef scr_seq_T24_005
scrdef scr_seq_T24_006
scrdef scr_seq_T24_007
scrdef scr_seq_T24_008
scrdef scr_seq_T24_009
scrdef scr_seq_T24_010
scrdef scr_seq_T24_011
scrdef scr_seq_T24_012
scrdef scr_seq_T24_013
scrdef scr_seq_T24_014
scrdef scr_seq_T24_015
scrdef scr_seq_T24_016
scrdef_end

scr_seq_T24_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GAME_CLEAR, _0336
	goto_if_set FLAG_GOT_HM02, _037D
	npc_msg 0
	npc_msg 1
	wait_button
	closemsg
	releaseall
	end

scr_seq_T24_001:
	end

scr_seq_T24_002:
	scrcmd_609
	lockall
	apply_movement obj_player, _0590
	wait_movement
	play_cry SPECIES_SUICUNE, 0
	release obj_T24_follower_mon_static_suicune
	scrcmd_523 obj_T24_follower_mon_static_suicune, 2, 90, 2, 0
	lock obj_T24_follower_mon_static_suicune
	wait_cry
	apply_movement obj_T24_follower_mon_static_suicune, _059C
	wait_movement
	apply_movement obj_T24_follower_mon_static_suicune, _05A4
	apply_movement obj_player, _05AC
	wait_movement
	wait 30, VAR_SPECIAL_RESULT
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_T24_follower_mon_static_suicune, _05B4
	apply_movement obj_player, _05C0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	hide_person obj_T24_follower_mon_static_suicune
	setflag FLAG_HIDE_CIANWOOD_SUICUNE
	addvar VAR_UNK_4076, 1
	clearflag FLAG_HIDE_CIANWOOD_EUSINE
	show_person obj_T24_minaki
	callstd std_play_eusine_music
	apply_movement obj_T24_minaki, _05D0
	apply_movement obj_player, _05E0
	wait_movement
	buffer_players_name 0
	npc_msg 15
	wait_ab_press
	closemsg
	trainer_battle TRAINER_MYSTERY_MAN_EUSINE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0388
	giveitem_no_check ITEM_SITRUS_BERRY, 50
	giveitem_no_check ITEM_LUM_BERRY, 50
	buffer_players_name 0
	npc_msg 16
	closemsg
	hide_person obj_T24_gsbabyboy1
	setflag FLAG_UNK_A01
	apply_movement obj_T24_minaki, _05EC
	wait_movement
	hide_person obj_T24_minaki
	setflag FLAG_HIDE_CIANWOOD_EUSINE
	clearflag FLAG_HIDE_ROUTE_42_SUICUNE
	setvar VAR_UNK_4092, 1
	releaseall
	end

scr_seq_T24_003:
	end

scr_seq_T24_004:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 22, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T24_005:
	clearflag FLAG_SYS_CIANWOOD_WATERFALL_DISABLE
	setvar VAR_UNK_40EB, 0
	end

scr_seq_T24_006:
	scrcmd_609
	lockall
	apply_movement obj_T24_middlewoman1_2, _05FC
	apply_movement obj_player, _0610
	wait_movement
	npc_msg 2
	goto_if_no_item_space ITEM_HM02, 1, _03A0
	callstd std_give_item_verbose
	setflag FLAG_GOT_HM02
	setvar VAR_UNK_4116, 2
	npc_msg 4
	wait_button
	closemsg
	apply_movement obj_T24_middlewoman1_2, _061C
	wait_movement
	compare VAR_MIDGAME_BADGES, 4
	goto_if_eq _03AA
	releaseall
	end

scr_seq_T24_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 6
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03EB
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03F1
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 7
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0405
	apply_movement obj_player, _0628
	goto _0420

scr_seq_T24_008:
	direction_signpost 18, 0, 15, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T24_009:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 19, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T24_010:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 20, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T24_011:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 21, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T24_012:
	simple_npc_msg 12
	end

scr_seq_T24_013:
	simple_npc_msg 13
	end

scr_seq_T24_014:
	simple_npc_msg 14
	end

scr_seq_T24_015:
	simple_npc_msg 17
	end

scr_seq_T24_016:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 23
	closemsg
	releaseall
	end

_0336:
	check_registered_phone_number PHONE_CONTACT_CHUCK, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0479
	compare VAR_TEMP_x4002, 1
	goto_if_ge _0484
	npc_msg 7
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _048D
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _04A8
	end

_037D:
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

_0388:
	hide_person obj_T24_minaki
	setflag FLAG_HIDE_CIANWOOD_EUSINE
	clearflag FLAG_HIDE_ROUTE_42_SUICUNE
	setvar VAR_UNK_4092, 1
	white_out
	releaseall
	end

_03A0:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_03AA:
	setvar VAR_SCENE_ROCKET_TAKEOVER, 2
	setflag FLAG_UNK_0C5
	setflag FLAG_ROCKET_TAKEOVER_ACTIVE
	compare VAR_UNK_40F8, 0
	goto_if_ne _04B9
	setvar VAR_UNK_40F8, 2
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8005, 2
	setvar VAR_SPECIAL_x8006, 2
	callstd std_phone_call
	setvar VAR_MIDGAME_BADGES, 5
	releaseall
	end

_03EB:
	closemsg
	releaseall
	end

_03F1:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 9
	wait_button
	closemsg
	releaseall
	end

_0405:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _04D9
	apply_movement obj_player, _0640
	goto _0420

_0420:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _053A
	apply_movement obj_partner_poke, _064C
	wait_movement
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 35
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 8
	wait_button
	closemsg
	releaseall
	end

_0479:
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_0484:
	npc_msg 11
	goto _056C

_048D:
	buffer_players_name 0
	npc_msg 8
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_CHUCK
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_04A8:
	setvar VAR_TEMP_x4002, 1
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_04B9:
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8005, 2
	setvar VAR_SPECIAL_x8006, 2
	callstd std_phone_call
	setvar VAR_MIDGAME_BADGES, 5
	releaseall
	end

_04D9:
	apply_movement obj_player, _065C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _053A
	apply_movement obj_partner_poke, _064C
	wait_movement
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 35
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 8
	wait_button
	closemsg
	releaseall
	end

_053A:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 35
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 8
	wait_button
	closemsg
	releaseall
	end

_056C:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _048D
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _04A8
	end

	.balign 4
_0590:

	step 0, 1
	step 75, 1
	step_end
	.balign 4
_059C:

	step 111, 1
	step_end
	.balign 4
_05A4:

	step 1, 1
	step_end
	.balign 4
_05AC:

	step 0, 1
	step_end
	.balign 4
_05B4:

	step 112, 1
	step 69, 1
	step_end
	.balign 4
_05C0:

	step 3, 1
	step 63, 1
	step 15, 2
	step_end
	.balign 4
_05D0:

	step 12, 5
	step 15, 2
	step 12, 2
	step_end
	.balign 4
_05E0:

	step 63, 6
	step 1, 1
	step_end
	.balign 4
_05EC:

	step 13, 2
	step 14, 2
	step 13, 5
	step_end
	.balign 4
_05FC:

	step 36, 1
	step 75, 1
	step 12, 2
	step 2, 1
	step_end
	.balign 4
_0610:

	step 65, 3
	step 3, 1
	step_end
	.balign 4
_061C:

	step 13, 2
	step 36, 1
	step_end
	.balign 4
_0628:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_0640:

	step 12, 3
	step 33, 1
	step_end
	.balign 4
_064C:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.balign 4
_065C:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
