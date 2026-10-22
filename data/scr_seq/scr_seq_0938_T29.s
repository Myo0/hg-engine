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

.include "data/scr_seq/include/event_T29.inc"


// text archive to grab from: 626.txt

.data


scrdef scr_seq_T29_000
scrdef scr_seq_T29_001
scrdef scr_seq_T29_002
scrdef scr_seq_T29_003
scrdef scr_seq_T29_004
scrdef scr_seq_T29_005
scrdef scr_seq_T29_006
scrdef scr_seq_T29_007
scrdef scr_seq_T29_008
scrdef scr_seq_T29_009
scrdef scr_seq_T29_010
scrdef scr_seq_T29_011
scrdef scr_seq_T29_012
scrdef scr_seq_T29_013
scrdef scr_seq_T29_014
scrdef scr_seq_T29_015
scrdef scr_seq_T29_016
scrdef scr_seq_T29_017
scrdef scr_seq_T29_018
scrdef scr_seq_T29_019
scrdef_end

scr_seq_T29_000:
	goto_if_set FLAG_GOT_RED_SCALE, _0342
	setflag FLAG_UNK_1FC
	setflag FLAG_UNK_1FE
	setflag FLAG_MAPTEMP_011
	setflag FLAG_MAPTEMP_013
	setflag FLAG_MAPTEMP_014
	setflag FLAG_MAPTEMP_015
	setflag FLAG_UNK_289
	setflag FLAG_UNK_28B
	setflag FLAG_UNK_28C
	end

scr_seq_T29_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_GYARADOS, 0
	npc_msg 0
	wait_cry
	closemsg
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_GYARADOS, 50, 1
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0348
	get_static_encounter_outcome VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 3
	goto_if_eq _034E
	compare VAR_TEMP_x4002, 4
	call_if_eq _0352
	goto_if_set FLAG_GOT_RED_SCALE, _0358
	setflag FLAG_GOT_RED_SCALE
	clearflag FLAG_HIDE_LAKE_OF_RAGE_ACE_TRAINER_LOIS
	releaseall
	end

scr_seq_T29_002:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _0368
	end

scr_seq_T29_003:
	goto_if_set FLAG_UNK_0C3, _0386
	play_se SEQ_SE_DP_SELECT
	lockall
	call _03AC
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _044E
	npc_msg 2
	faceplayer
	buffer_players_name 0
	gender_msgbox 3, 4
	closemsg
	apply_movement obj_T29_brains2, _0922
	wait_movement
	apply_movement obj_player, _092E
	wait_movement
	npc_msg 37
	wait_button
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_MICKEY_3, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0458
	setvar VAR_UNK_416F, 61
	npc_msg 39
	closemsg
	setvar VAR_SPECIAL_x8004, 661
	setvar VAR_SPECIAL_x8005, 1
	call _045C
	apply_movement obj_player, _0936
	wait_movement
	call _0477
	npc_msg 38
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _04AC
	goto _0511

scr_seq_T29_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_RED_GYARADOS_MEET, _0520
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

scr_seq_T29_005:
	goto_if_set FLAG_UNK_139, _052B
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 31, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T29_006:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 30, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T29_007:
	simple_npc_msg 12
	end

scr_seq_T29_008:
	simple_npc_msg 11
	end

scr_seq_T29_009:
	simple_npc_msg 18
	end

scr_seq_T29_010:
	simple_npc_msg 21
	end

scr_seq_T29_011:
	simple_npc_msg 24
	end

scr_seq_T29_012:
	simple_npc_msg 27
	end

scr_seq_T29_013:
	setvar VAR_TEMP_x4001, 1
	setvar VAR_SPECIAL_x8008, 27
	setvar VAR_SPECIAL_x8009, 1
	goto _0561

scr_seq_T29_014:
	setvar VAR_TEMP_x4001, 2
	setvar VAR_SPECIAL_x8008, 29
	setvar VAR_SPECIAL_x8009, 1
	goto _0561

scr_seq_T29_015:
	setvar VAR_TEMP_x4001, 3
	setvar VAR_SPECIAL_x8008, 23
	setvar VAR_SPECIAL_x8009, 1
	goto _0561

scr_seq_T29_016:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_TEMP_x4004, 1
	goto_if_ge _059D
	npc_msg 13
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _05A6
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _05E9
	end

scr_seq_T29_017:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_DRAGONITE, 0
	npc_msg 1
	wait_button
	closemsg
	releaseall
	end

scr_seq_T29_018:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 36
	closemsg
	releaseall
	end

scr_seq_T29_019:
	lockall
	play_se SEQ_SE_DP_SELECT
	hide_person obj_T29_monstarball
	giveitem_no_check ITEM_UTILITY_UMBRELLA, 1
	setflag FLAG_HIDE_ITEMBALL_T29_CHOICE_SPECS
	closemsg
	releaseall
	end

_0342:
	goto _05FA

_0348:
	white_out
	releaseall
	end

_034E:
	releaseall
	end

_0352:
	setflag FLAG_CAUGHT_RED_GYARADOS
	return

_0358:
	clearflag FLAG_HIDE_LAKE_OF_RAGE_LANCE
	hide_person obj_T29_wataru
	hide_person obj_T29_follower_mon_static_dragonite
	releaseall
	end

_0368:
	setflag FLAG_HIDE_LAKE_OF_RAGE_RED_GYARADOS
	hide_person obj_T29_rgyaradosu
	clearflag FLAG_HIDE_LAKE_OF_RAGE_LANCE
	show_person obj_T29_wataru
	show_person obj_T29_follower_mon_static_dragonite
	show_person obj_T29_brains2
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

_0386:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 8
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _04AC
	goto _0511

_03AC:
	goto_if_no_item_space ITEM_BLASTOISINITE, 1, _061E
	goto_if_set FLAG_MEGA_EVOLUTION_ENABLED, _0626
	setvar VAR_SPECIAL_x8004, 696
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _061E
	get_starter_choice VAR_SPECIAL_RESULT
	setvar VAR_SPECIAL_x8004, 0
	compare VAR_SPECIAL_RESULT, 258
	call_if_eq _062E
	compare VAR_SPECIAL_RESULT, 703
	call_if_eq _0636
	compare VAR_SPECIAL_RESULT, 152
	call_if_eq _063E
	compare VAR_SPECIAL_x8004, 0
	goto_if_eq _0626
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _061E
	setvar VAR_SPECIAL_RESULT, 1
	return

_044E:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0458:
	white_out
	end

_045C:
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0646
	callstd std_give_item_verbose
	return

_0477:
	goto_if_set FLAG_MEGA_EVOLUTION_ENABLED, _064E
	buffer_players_name 0
	npc_msg 41
	npc_msg 42
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0650
	npc_msg 43
	npc_msg 44
	goto _06A1

_04AC:
	buffer_players_name 0
	gender_msgbox 5, 6
	wait_button
	closemsg
	apply_movement obj_T29_follower_mon_static_dragonite, _093E
	wait_movement
	apply_movement obj_T29_wataru, _094A
	wait_movement
	apply_movement obj_T29_brains2, _093E
	wait_movement
	scrcmd_775 8, 10
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_HIDE_LAKE_OF_RAGE_LANCE
	hide_person obj_T29_brains2
	hide_person obj_T29_wataru
	hide_person obj_T29_follower_mon_static_dragonite
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_HIDE_MAHOGANY_SHOP_LANCE
	setvar VAR_UNK_40A8, 1
	releaseall
	end

_0511:
	setflag FLAG_UNK_0C3
	npc_msg 7
	wait_button
	closemsg
	releaseall
	end

_0520:
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_052B:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	script_overlay_cmd 0, 0
	buffer_record_size 0, 1, SPECIES_MAGIKARP
	script_overlay_cmd 0, 1
	buffer_players_name 2
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 32, VAR_SPECIAL_RESULT
	callstd std_signpost
	dummy_486
	dummy_486
	releaseall
	end

_0561:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	wait_se SEQ_SE_DP_SELECT
	copyvar VAR_SPECIAL_x8004, VAR_SPECIAL_x8008
	copyvar VAR_SPECIAL_x8005, VAR_SPECIAL_x8009
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _06C2
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _06E1
	end

_059D:
	npc_msg 17
	goto _06F7

_05A6:
	buffer_players_name 0
	npc_msg 14
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_PRYCE
	npc_msg 15
	wait_button
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_HIDE_LAKE_OF_RAGE_PRYCE
	hide_person obj_T29_gsleader7
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_05E9:
	setvar VAR_TEMP_x4004, 1
	npc_msg 16
	wait_button
	closemsg
	releaseall
	end

_05FA:
	check_registered_phone_number PHONE_CONTACT_PRYCE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _071B
	goto_if_set FLAG_GAME_CLEAR, _0725
	goto _071B

_061E:
	setvar VAR_SPECIAL_RESULT, 0
	return

_0626:
	setvar VAR_SPECIAL_RESULT, 1
	return

_062E:
	setvar VAR_SPECIAL_x8004, 752
	return

_0636:
	setvar VAR_SPECIAL_x8004, 2576
	return

_063E:
	setvar VAR_SPECIAL_x8004, 2563
	return

_0646:
	callstd std_bag_is_full
	closemsg
	return

_064E:
	return

_0650:
	npc_msg 45
	closemsg
	setvar VAR_SPECIAL_x8004, 696
	setvar VAR_SPECIAL_x8005, 1
	call _045C
	setflag FLAG_MEGA_EVOLUTION_ENABLED
	npc_msg 46
	get_starter_choice VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 258
	goto_if_eq _0740
	compare VAR_SPECIAL_RESULT, 703
	goto_if_eq _0751
	compare VAR_SPECIAL_RESULT, 152
	goto_if_eq _0762
	closemsg
	goto _064E

_06A1:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0650
	npc_msg 43
	npc_msg 44
	goto _06A1

_06C2:
	callstd std_hidden_item_fanfare
	hide_person VAR_SPECIAL_LAST_TALKED
	compare VAR_TEMP_x4001, 1
	goto_if_ne _077B
	setflag FLAG_UNK_146
	goto _0792

_06E1:
	buffer_item_name 0, VAR_SPECIAL_x8004
	npc_msg 35
	wait_button
	setvar VAR_SPECIAL_RESULT, 0
	goto _07CB

_06F7:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _05A6
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _05E9
	end

_071B:
	setflag FLAG_HIDE_LAKE_OF_RAGE_PRYCE
	goto _07D1

_0725:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _0808
	clearflag FLAG_HIDE_LAKE_OF_RAGE_PRYCE
	goto _081F

_0740:
	npc_msg 47
	closemsg
	setvar VAR_SPECIAL_x8004, 752
	goto _0825

_0751:
	npc_msg 48
	closemsg
	setvar VAR_SPECIAL_x8004, 2576
	goto _0825

_0762:
	npc_msg 49
	closemsg
	setvar VAR_SPECIAL_x8004, 2563
	setvar VAR_SPECIAL_x8005, 1
	call _045C
	return

_077B:
	compare VAR_TEMP_x4001, 2
	goto_if_ne _0833
	setflag FLAG_UNK_147
	goto _0792

_0792:
	giveitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	buffer_players_name 0
	buffer_item_name 1, VAR_SPECIAL_x8004
	npc_msg 33
	wait_fanfare
	buffer_players_name 0
	buffer_item_name 1, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 2, VAR_SPECIAL_RESULT
	npc_msg 34
	wait_button
	setvar VAR_SPECIAL_RESULT, 1
	closemsg
	releaseall
	end

_07CB:
	closemsg
	releaseall
	end

_07D1:
	compare VAR_UNK_4037, 61993
	goto_if_eq _0870
	setflag FLAG_UNK_1FC
	setflag FLAG_UNK_1FE
	clearflag FLAG_HIDE_LAKE_OF_RAGE_FISHERMEN
	setflag FLAG_MAPTEMP_011
	setflag FLAG_MAPTEMP_013
	setflag FLAG_MAPTEMP_014
	setflag FLAG_MAPTEMP_015
	setflag FLAG_UNK_289
	setflag FLAG_UNK_28B
	setflag FLAG_UNK_28C
	end

_0808:
	compare VAR_TEMP_x4000, 7
	goto_if_ne _0899
	clearflag FLAG_HIDE_LAKE_OF_RAGE_PRYCE
	goto _081F

_081F:
	goto _07D1

_0825:
	setvar VAR_SPECIAL_x8005, 1
	call _045C
	return

_0833:
	setflag FLAG_UNK_148
	giveitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	buffer_players_name 0
	buffer_item_name 1, VAR_SPECIAL_x8004
	npc_msg 33
	wait_fanfare
	buffer_players_name 0
	buffer_item_name 1, VAR_SPECIAL_x8004
	getitempocket VAR_SPECIAL_x8004, VAR_SPECIAL_RESULT
	buffer_pocket_name 2, VAR_SPECIAL_RESULT
	npc_msg 34
	wait_button
	setvar VAR_SPECIAL_RESULT, 1
	closemsg
	releaseall
	end

_0870:
	clearflag FLAG_UNK_1FC
	clearflag FLAG_UNK_1FE
	setflag FLAG_HIDE_LAKE_OF_RAGE_FISHERMEN
	clearflag FLAG_UNK_289
	clearflag FLAG_UNK_28B
	clearflag FLAG_UNK_28C
	goto_if_set FLAG_UNK_146, _08B0
	goto _08C5

_0899:
	compare VAR_TEMP_x4000, 8
	goto_if_ne _08D6
	clearflag FLAG_HIDE_LAKE_OF_RAGE_PRYCE
	goto _081F

_08B0:
	setflag FLAG_UNK_289
	goto_if_set FLAG_UNK_147, _08ED
	goto _0902

_08C5:
	goto_if_set FLAG_UNK_147, _08ED
	goto _0902

_08D6:
	compare VAR_TEMP_x4000, 9
	goto_if_ne _0913
	clearflag FLAG_HIDE_LAKE_OF_RAGE_PRYCE
	goto _081F

_08ED:
	setflag FLAG_UNK_28B
	goto_if_set FLAG_UNK_148, _0919
	goto _091F

_0902:
	goto_if_set FLAG_UNK_148, _0919
	goto _091F

_0913:
	goto _071B

_0919:
	setflag FLAG_UNK_28C
	end

_091F:
	end

	.byte 0x00
	.balign 4
_0922:

	step 15, 1
	step 0, 1
	step_end
	.balign 4
_092E:

	step 1, 1
	step_end
	.balign 4
_0936:

	step 2, 1
	step_end
	.balign 4
_093E:

	step 34, 1
	step 50, 2
	step_end
	.balign 4
_094A:

	step 33, 1
	step_end
	.balign 4
