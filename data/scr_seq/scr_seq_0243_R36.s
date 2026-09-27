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

.include "data/scr_seq/include/event_R36.inc"


// text archive to grab from: 390.txt

.data


scrdef scr_seq_R36_000
scrdef scr_seq_R36_001
scrdef scr_seq_R36_002
scrdef scr_seq_R36_003
scrdef scr_seq_R36_004
scrdef scr_seq_R36_005
scrdef scr_seq_R36_006
scrdef scr_seq_R36_007
scrdef scr_seq_R36_008
scrdef scr_seq_R36_009
scrdef scr_seq_R36_010
scrdef scr_seq_R36_011
scrdef scr_seq_R36_012
scrdef_end

scr_seq_R36_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	goto_if_unset FLAG_HIDE_GOLDENROD_FLOWERSHOP_GIRL, _024D
	hasitem ITEM_SQUIRT_BOTTLE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0282
	apply_movement obj_R36_gsgirl1_2, _0714
	wait_movement
	play_se SEQ_SE_GS_KI_UGOKU
	apply_movement obj_R36_usokky, _071C
	wait_movement
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02A1
	releaseall
	end

scr_seq_R36_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_party_lead_alive VAR_SPECIAL_x8002
	mon_has_ribbon VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002, RIBBON_CARELESS
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02C8
	goto_if_set FLAG_DAILY_GOT_SHOCK_RIBBON, _02DC
	compare VAR_NUM_MET_WEEKDAY_SIBLINGS, 7
	goto_if_eq _02F0
	goto_if_set FLAG_GOT_HARD_STONE_FROM_ARTHUR, _0313
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _0327
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 15
	goto _0376

scr_seq_R36_002:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 4
	goto_if_ne _037E
	clearflag FLAG_UNK_1C4
	goto _0384

scr_seq_R36_003:
	direction_signpost 9, 1, 15, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R36_004:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 10, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R36_005:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 11, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R36_006:
	scrcmd_055 3, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 12, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R36_007:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	hasitem ITEM_SQUIRT_BOTTLE, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0386
	npc_msg 13
	goto _0391

scr_seq_R36_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	getitemquantity ITEM_HM06, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0399
	npc_msg 3
	giveitem_no_check ITEM_HM06, 1
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

scr_seq_R36_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_HIDE_ROUTE_36_SUDOWOODO, _03A4
	npc_msg 7
	goto _03AF

scr_seq_R36_010:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _03B7
	end

scr_seq_R36_011:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 0
	setvar VAR_SPECIAL_x8008, 11
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R36_4061
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_R36_012:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 1
	setvar VAR_SPECIAL_x8008, 12
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R36_4062
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_024D:
	play_se SEQ_SE_GS_KI_UGOKU
	apply_movement obj_R36_usokky, _071C
	wait_movement
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03C5
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03EE
	end

_0282:
	play_se SEQ_SE_GS_KI_UGOKU
	apply_movement obj_R36_usokky, _071C
	wait_movement
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _02A1
	releaseall
	end

_02A1:
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _03F4
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03EE
	end

_02C8:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 41
	wait_button
	closemsg
	releaseall
	end

_02DC:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 43
	wait_button
	closemsg
	releaseall
	end

_02F0:
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 4
	goto_if_eq _041D
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 15
	goto _0376

_0313:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 14
	wait_button
	closemsg
	releaseall
	end

_0327:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 12
	goto_if_no_item_space ITEM_HARD_STONE, 1, _044C
	callstd std_give_item_verbose
	setflag FLAG_GOT_HARD_STONE_FROM_ARTHUR
	addvar VAR_NUM_MET_WEEKDAY_SIBLINGS, 1
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 13
	wait_button
	closemsg
	releaseall
	end

_0376:
	wait_button
	closemsg
	releaseall
	end

_037E:
	setflag FLAG_UNK_1C4
	end

_0384:
	end

_0386:
	npc_msg 14
	wait_button
	closemsg
	releaseall
	end

_0391:
	wait_button
	closemsg
	releaseall
	end

_0399:
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

_03A4:
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

_03AF:
	wait_button
	closemsg
	releaseall
	end

_03B7:
	setflag FLAG_HIDE_ROUTE_36_SUDOWOODO
	hide_person obj_R36_usokky
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

_03C5:
	buffer_players_name 0
	npc_msg 1
	play_se SEQ_SE_GS_ZENIGAME_JOURO
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _0456
	apply_movement obj_player, _0724
	goto _0471

_03EE:
	closemsg
	releaseall
	end

_03F4:
	buffer_players_name 0
	npc_msg 1
	play_se SEQ_SE_GS_ZENIGAME_JOURO
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _04D1
	apply_movement obj_player, _0724
	goto _04EC

_041D:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 40
	buffer_mon_species_name 0, VAR_SPECIAL_x8002
	msgbox_extern VAR_SPECIAL_RESULT, 42
	give_ribbon VAR_SPECIAL_x8002, RIBBON_CARELESS
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	setflag FLAG_DAILY_GOT_SHOCK_RIBBON
	wait_button
	closemsg
	releaseall
	end

_044C:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0456:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0580
	apply_movement obj_player, _072C
	goto _0471

_0471:
	wait_movement
	npc_msg 2
	closemsg
	play_se SEQ_SE_GS_KI_UGOKU
	apply_movement obj_R36_usokky, _0734
	wait_movement
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_SUDOWOODO, 20, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	setflag FLAG_UNK_A10
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _05E8
	get_static_encounter_outcome VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 4
	call_if_eq _05EE
	static_wild_won_or_caught VAR_TEMP_x4000, 0
	compare VAR_TEMP_x4000, 1
	goto_if_eq _05F4
	releaseall
	end

_04D1:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _05F8
	apply_movement obj_player, _072C
	goto _04EC

_04EC:
	wait_movement
	setflag FLAG_UNK_0B4
	npc_msg 2
	closemsg
	play_se SEQ_SE_GS_KI_UGOKU
	apply_movement obj_R36_usokky, _0734
	wait_movement
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_SUDOWOODO, 20, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	setflag FLAG_UNK_A10
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _05E8
	get_static_encounter_outcome VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 3
	goto_if_eq _05F4
	compare VAR_TEMP_x4001, 4
	call_if_eq _05EE
	setflag FLAG_UNK_0B5
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0694
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _073C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	goto _06C4

_0580:
	apply_movement obj_player, _0744
	wait_movement
	npc_msg 2
	closemsg
	play_se SEQ_SE_GS_KI_UGOKU
	apply_movement obj_R36_usokky, _0734
	wait_movement
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_SUDOWOODO, 20, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	setflag FLAG_UNK_A10
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _05E8
	get_static_encounter_outcome VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 4
	call_if_eq _05EE
	static_wild_won_or_caught VAR_TEMP_x4000, 0
	compare VAR_TEMP_x4000, 1
	goto_if_eq _05F4
	releaseall
	end

_05E8:
	white_out
	releaseall
	end

_05EE:
	setflag FLAG_CAUGHT_SUDOWOODO
	return

_05F4:
	releaseall
	end

_05F8:
	apply_movement obj_player, _0744
	wait_movement
	setflag FLAG_UNK_0B4
	npc_msg 2
	closemsg
	play_se SEQ_SE_GS_KI_UGOKU
	apply_movement obj_R36_usokky, _0734
	wait_movement
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle SPECIES_SUDOWOODO, 20, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	setflag FLAG_UNK_A10
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _05E8
	get_static_encounter_outcome VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 3
	goto_if_eq _05F4
	compare VAR_TEMP_x4001, 4
	call_if_eq _05EE
	setflag FLAG_UNK_0B5
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0694
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _073C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	goto _06C4

_0694:
	apply_movement obj_R36_gsgirl1_2, _074C
	wait_movement
	npc_msg 15
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _06EA
	apply_movement obj_R36_gsgirl1_2, _0758
	wait_movement
	goto _0704

_06C4:
	npc_msg 15
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _06EA
	apply_movement obj_R36_gsgirl1_2, _0758
	wait_movement
	goto _0704

_06EA:
	apply_movement obj_R36_gsgirl1_2, _0760
	wait_movement
	hide_person obj_R36_gsgirl1_2
	setflag FLAG_HIDE_ROUTE_36_FLOWERSHOP_GIRL
	clearflag FLAG_HIDE_GOLDENROD_FLOWERSHOP_GIRL
	releaseall
	end

_0704:
	hide_person obj_R36_gsgirl1_2
	setflag FLAG_HIDE_ROUTE_36_FLOWERSHOP_GIRL
	clearflag FLAG_HIDE_GOLDENROD_FLOWERSHOP_GIRL
	releaseall
	end

	.balign 4
_0714:

	step 0, 1
	step_end
	.balign 4
_071C:

	step 32, 3
	step_end
	.balign 4
_0724:

	step 30, 4
	step_end
	.balign 4
_072C:

	step 29, 4
	step_end
	.balign 4
_0734:

	step 36, 6
	step_end
	.balign 4
_073C:

	step 13, 1
	step_end
	.balign 4
_0744:

	step 28, 4
	step_end
	.balign 4
_074C:

	step 12, 3
	step 3, 1
	step_end
	.balign 4
_0758:

	step 14, 10
	step_end
	.balign 4
_0760:

	step 13, 2
	step 14, 10
	step_end
	.balign 4
