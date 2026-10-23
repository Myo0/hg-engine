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

.include "data/scr_seq/include/event_D35R0103.inc"


// text archive to grab from: 113.txt

.data


scrdef scr_seq_D35R0103_000
scrdef scr_seq_D35R0103_001
scrdef scr_seq_D35R0103_002
scrdef scr_seq_D35R0103_003
scrdef scr_seq_D35R0103_004
scrdef scr_seq_D35R0103_005
scrdef scr_seq_D35R0103_006
scrdef scr_seq_D35R0103_007
scrdef scr_seq_D35R0103_008
scrdef scr_seq_D35R0103_009
scrdef scr_seq_D35R0103_010
scrdef scr_seq_D35R0103_011
scrdef scr_seq_D35R0103_012
scrdef scr_seq_D35R0103_013
scrdef scr_seq_D35R0103_014
scrdef scr_seq_D35R0103_015
scrdef_end

scr_seq_D35R0103_000:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0B40
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 0
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	wait_fanfare
	heal_party
	scrcmd_436
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	buffer_players_name 0
	gender_msgbox 1, 2
	closemsg
	apply_movement obj_D35R0103_wataru, _0B4C
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0B54
	wait_movement
	hide_person obj_D35R0103_wataru
	hide_person obj_D35R0103_follower_mon_static_dragonite
	setflag FLAG_UNK_1E5
	releaseall
	setvar VAR_UNK_40A9, 1
	end

scr_seq_D35R0103_001:
	compare VAR_UNK_40AC, 8
	goto_if_ge _049D
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_UNK_0D3, _049F
	buffer_players_name 0
	npc_msg 21
	closemsg
	play_se SEQ_SE_DP_DOOR10
	apply_movement obj_D35R0103_babyboy1_9, _0B60
	apply_movement obj_D35R0103_babyboy1_9_2, _0B68
	wait_movement
	releaseall
	end

scr_seq_D35R0103_002:
	scrcmd_710
	compare VAR_UNK_40AC, 8
	call_if_eq _0881
	compare VAR_UNK_40A9, 3
	goto_if_ge _04AA
	end

scr_seq_D35R0103_003:
	goto_if_unset FLAG_UNK_1E5, _081B
	scrcmd_609
	lockall
	npc_msg 3
	apply_movement obj_player, _0B74
	wait_movement
	closemsg
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_ARIANA
	show_person obj_D35R0103_rkanbuw
	show_person obj_D35R0103_rocketm_3
	move_person_facing obj_D35R0103_rkanbuw, 32, 1, 30, DIR_EAST
	move_person_facing obj_D35R0103_rocketm_3, 30, 1, 30, DIR_NORTH
	stop_bgm 0
	play_bgm SEQ_GS_EYE_ROCKET
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 30
	goto_if_ne _04DE
	apply_movement obj_player, _0B7C
	goto _04FE

scr_seq_D35R0103_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x400A, 1
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle 1329, 50, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _074C
	static_wild_won_or_caught VAR_TEMP_x4000, 0
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0752
	setflag FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_1
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_2, _0752
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_3, _0752
	goto _0756

scr_seq_D35R0103_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x400A, 2
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle 1329, 50, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _074C
	static_wild_won_or_caught VAR_TEMP_x4000, 0
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0781
	setflag FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_2
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_1, _0781
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_3, _0781
	goto _0756

scr_seq_D35R0103_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x400A, 3
	setvar VAR_UNK_416F, 63
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle 1329, 50, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _074C
	static_wild_won_or_caught VAR_TEMP_x4000, 0
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0785
	setflag FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_3
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_1, _0785
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_2, _0785
	goto _0756

scr_seq_D35R0103_007:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _0789
	end

scr_seq_D35R0103_008:
	scrcmd_609
	lockall
	npc_msg 14
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0B88
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

scr_seq_D35R0103_009:
	scrcmd_609
	lockall
	apply_movement obj_D35R0103_wataru, _0B90
	wait_movement
	npc_msg 14
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0B88
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

scr_seq_D35R0103_010:
	releaseall
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_1, _07BE
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_2, _07BE
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_3, _07BE
	npc_msg 23
	closemsg
	releaseall
	end

scr_seq_D35R0103_011:
	scrcmd_609
	lockall
	apply_movement obj_D35R0103_follower_mon_static_murkrow_3, _0B9C
	wait_movement
	npc_msg 26
	closemsg
	npc_msg 27
	closemsg
	play_se SEQ_SE_DP_DOOR10
	apply_movement obj_D35R0103_babyboy1_9, _0B60
	apply_movement obj_D35R0103_babyboy1_9_2, _0B68
	wait_movement
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 24
	goto_if_ne _07C7
	apply_movement obj_D35R0103_follower_mon_static_murkrow_3, _0BA4
	goto _07F5

scr_seq_D35R0103_012:
	goto scr_seq_D35R0103_011

scr_seq_D35R0103_013:
	scrcmd_609
	lockall
	apply_movement obj_D35R0103_follower_mon_static_murkrow, _0BC4
	wait_movement
	npc_msg 24
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D35R0103_follower_mon_static_murkrow, _0BCC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	setvar VAR_UNK_40AC, 5
	hide_person obj_D35R0103_follower_mon_static_murkrow
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_1
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_MURKROW_2
	releaseall
	end

scr_seq_D35R0103_014:
	scrcmd_609
	lockall
	apply_movement obj_D35R0103_follower_mon_static_murkrow_2, _0BDC
	wait_movement
	npc_msg 25
	closemsg
	apply_movement obj_D35R0103_follower_mon_static_murkrow_2, _0BE4
	wait_movement
	setvar VAR_UNK_40AC, 7
	hide_person obj_D35R0103_follower_mon_static_murkrow_2
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_2
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_3
	show_person obj_D35R0103_follower_mon_static_murkrow_3
	releaseall
	end

scr_seq_D35R0103_015:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_40AC, 9
	goto_if_ge _0838
	party_count_not_egg VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_lt _082F
	npc_msg 28
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0826
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 26
	call_if_eq _0841
	compare VAR_TEMP_x4001, 25
	call_if_eq _0861
	apply_movement obj_D35R0103_wataru, _0BF4
	apply_movement obj_player, _0BF4
	wait_movement
	goto _058F

_049D:
	end

_049F:
	npc_msg 20
	wait_button
	closemsg
	releaseall
	end

_04AA:
	move_person_facing obj_D35R0103_babyboy1_9, 29, 0, 22, DIR_NORTH
	move_person_facing obj_D35R0103_babyboy1_9_2, 29, 0, 22, DIR_NORTH
	compare VAR_UNK_40AC, 10
	goto_if_ge _08CC
	compare VAR_UNK_40A9, 4
	goto_if_ge _08CE
	end

_04DE:
	apply_movement obj_player, _0CF4
	apply_movement obj_D35R0103_rkanbuw, _0D08
	apply_movement obj_D35R0103_rocketm_3, _0D18
	wait_movement
	goto _0510

_04FE:
	apply_movement obj_D35R0103_rkanbuw, _0D08
	apply_movement obj_D35R0103_rocketm_3, _0D18
	wait_movement
_0510:
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D35R0103_rkanbuw, _0D24
	wait_movement
	npc_msg 4
	closemsg
	clearflag FLAG_UNK_1E5
	show_person obj_D35R0103_wataru
	show_person obj_D35R0103_follower_mon_static_dragonite
	move_person_facing obj_D35R0103_wataru, 20, 1, 25, DIR_EAST
	move_person_facing obj_D35R0103_follower_mon_static_dragonite, 19, 1, 25, DIR_NORTH
	apply_movement obj_D35R0103_wataru, _0D2C
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0D34
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0D40
	play_cry SPECIES_DRAGONITE, 0
	wait_cry
	apply_movement obj_D35R0103_rkanbuw, _0D24
	wait_movement
	party_count_not_egg VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_lt _082F
_058F:
	setvar VAR_SPECIAL_x8000, 675
	setvar VAR_SPECIAL_x8001, 479
	setvar VAR_SPECIAL_x8002, 499
	setvar VAR_SPECIAL_x8003, 3
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	scrcmd_208 12, VAR_SPECIAL_RESULT
	restore_overworld
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _081D
	npc_msg 6
	closemsg
	apply_movement obj_D35R0103_rkanbuw, _0BFC
	apply_movement obj_D35R0103_rocketm_3, _0C04
	wait_movement
	scrcmd_208 13, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0826
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _08BE
	setvar VAR_UNK_416F, 63
	npc_msg 8
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	move_person_facing obj_D35R0103_wataru, 28, 1, 24, DIR_SOUTH
	move_person_facing obj_D35R0103_follower_mon_static_dragonite, 27, 1, 24, DIR_EAST
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0C0C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	hide_person obj_D35R0103_rkanbuw
	hide_person obj_D35R0103_rocketm_3
	hide_person obj_D35R0103_rocketw
	hide_person obj_D35R0103_rocketm_2
	hide_person obj_D35R0103_rocketm
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_ARIANA
	setflag FLAG_HIDE_MAHOGANY_SHOP_SHADY_SALESMAN
	setflag FLAG_UNK_1E8
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	apply_movement obj_D35R0103_wataru, _0C20
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0C28
	wait_movement
	buffer_players_name 0
	gender_msgbox 10, 11
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0C34
	apply_movement obj_D35R0103_wataru, _0C40
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0C6C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_cry SPECIES_DRAGONITE, 0
	wait_cry
	apply_movement obj_D35R0103_wataru, _0C8C
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0C9C
	wait_movement
	buffer_players_name 0
	gender_msgbox 12, 13
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0CA8
	apply_movement obj_D35R0103_wataru, _0CBC
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0CC4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	move_person_facing obj_D35R0103_wataru, 39, 0, 18, DIR_NORTH
	move_person_facing obj_D35R0103_follower_mon_static_dragonite, 40, 0, 18, DIR_NORTH
	releaseall
	setvar VAR_UNK_40AC, 9
	setvar VAR_UNK_40A9, 4
	setflag FLAG_UNK_998
	end

_074C:
	white_out
	releaseall
	end

_0752:
	releaseall
	end

_0756:
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4001, 16
	goto_if_ne _08FB
	apply_movement obj_player, _0D48
	goto _0916

_0781:
	releaseall
	end

_0785:
	releaseall
	end

_0789:
	static_wild_won_or_caught VAR_TEMP_x4000, 1
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0A06
	compare VAR_TEMP_x400A, 1
	goto_if_ne _0A0C
	setflag FLAG_UNK_96B
	hide_person obj_D35R0103_follower_mon_static_electrode
	hide_person obj_D35R0103_follower_mon_static_electrode_4
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_ELECTRODE_1_AND_4
	goto _0A06

_07BE:
	npc_msg 22
	closemsg
	releaseall
	end

_07C7:
	apply_movement obj_D35R0103_follower_mon_static_murkrow_3, _0D54
	wait_movement
	setvar VAR_UNK_40AC, 8
	hide_person obj_D35R0103_follower_mon_static_murkrow_3
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_3
	setvar VAR_UNK_40A9, 3
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_1
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_MURKROW_2
	setflag FLAG_UNK_0D3
	releaseall
	end

_07F5:
	wait_movement
	setvar VAR_UNK_40AC, 8
	hide_person obj_D35R0103_follower_mon_static_murkrow_3
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_3
	setvar VAR_UNK_40A9, 3
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_1
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_MURKROW_2
	setflag FLAG_UNK_0D3
	releaseall
	end

_081B:
	end

_081D:
	npc_msg 29
	closemsg
	releaseall
	end

_0826:
	npc_msg 31
	closemsg
	releaseall
	end

_082F:
	npc_msg 30
	closemsg
	releaseall
	end

_0838:
	npc_msg 14
	closemsg
	releaseall
	end

_0841:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0DE0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	return

_0861:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0D70
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	return

_0881:
	goto_if_set FLAG_UNK_1E5, _08BC
	move_person_facing obj_D35R0103_wataru, 30, 1, 25, DIR_EAST
	move_person_facing obj_D35R0103_follower_mon_static_dragonite, 29, 1, 25, DIR_EAST
	move_person_facing obj_D35R0103_rkanbuw, 32, 1, 24, DIR_WEST
	move_person_facing obj_D35R0103_rocketm_3, 30, 1, 27, DIR_NORTH
_08BC:
	return

_08BE:
	white_out
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_ARIANA
	setflag FLAG_UNK_1E5
	releaseall
	end

_08CC:
	end

_08CE:
	compare VAR_TEMP_x4007, 0
	goto_if_ne _08CC
	setvar VAR_TEMP_x4007, 77
	move_person_facing obj_D35R0103_wataru, 39, 0, 18, DIR_NORTH
	move_person_facing obj_D35R0103_follower_mon_static_dragonite, 40, 0, 18, DIR_NORTH
	end

_08FB:
	compare VAR_TEMP_x4001, 14
	goto_if_ne _0A2F
	apply_movement obj_player, _0D8C
	goto _0916

_0916:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D35R0103_wataru, _0D98
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0DA0
	wait_movement
	npc_msg 15
	giveitem_no_check ITEM_HM05, 1
	npc_msg 17
	closemsg
	apply_movement obj_D35R0103_wataru, _0DAC
	wait_movement
	buffer_players_name 0
	gender_msgbox 18, 19
	closemsg
	apply_movement obj_D35R0103_wataru, _0DB4
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0DC0
	wait_movement
	hide_person obj_D35R0103_wataru
	hide_person obj_D35R0103_follower_mon_static_dragonite
	setflag FLAG_UNK_1E5
	releaseall
	stop_se SEQ_SE_GS_N_MOTER
	setflag FLAG_RED_GYARADOS_MEET
	clearflag FLAG_HIDE_ROUTE_43_GATE_GUARD
	setflag FLAG_HIDE_ROUTE_43_GATE_ROCKETS
	setflag FLAG_UNK_1F9
	setvar VAR_UNK_40AC, 10
	setvar VAR_UNK_410F, 1
	scrcmd_530 0, 1
	setvar VAR_ROCKET_TRAP_KOFFING_1, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_1, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_1, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_2, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_2, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_3, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_4, 1
	setvar VAR_ROCKET_TRAP_KOFFING_2, 1
	setvar VAR_ROCKET_TRAP_KOFFING_3, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_3, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_4, 1
	setvar VAR_ROCKET_TRAP_KOFFING_4, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_5, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_6, 1
	setvar VAR_ROCKET_TRAP_KOFFING_5, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_5, 1
	end

_0A06:
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

_0A0C:
	compare VAR_TEMP_x400A, 2
	goto_if_ne _0B27
	setflag FLAG_UNK_96C
	hide_person obj_D35R0103_follower_mon_static_electrode_2
	hide_person obj_D35R0103_follower_mon_static_electrode_5
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_ELECTRODE_2_AND_5
	goto _0A06

_0A2F:
	apply_movement obj_player, _0DD4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D35R0103_wataru, _0D98
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0DA0
	wait_movement
	npc_msg 15
	giveitem_no_check ITEM_HM05, 1
	npc_msg 17
	closemsg
	apply_movement obj_D35R0103_wataru, _0DAC
	wait_movement
	buffer_players_name 0
	gender_msgbox 18, 19
	closemsg
	apply_movement obj_D35R0103_wataru, _0DB4
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0DC0
	wait_movement
	hide_person obj_D35R0103_wataru
	hide_person obj_D35R0103_follower_mon_static_dragonite
	setflag FLAG_UNK_1E5
	releaseall
	stop_se SEQ_SE_GS_N_MOTER
	setflag FLAG_RED_GYARADOS_MEET
	clearflag FLAG_HIDE_ROUTE_43_GATE_GUARD
	setflag FLAG_HIDE_ROUTE_43_GATE_ROCKETS
	setflag FLAG_UNK_1F9
	setvar VAR_UNK_40AC, 10
	setvar VAR_UNK_410F, 1
	scrcmd_530 0, 1
	setvar VAR_ROCKET_TRAP_KOFFING_1, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_1, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_1, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_2, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_2, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_3, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_4, 1
	setvar VAR_ROCKET_TRAP_KOFFING_2, 1
	setvar VAR_ROCKET_TRAP_KOFFING_3, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_3, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_4, 1
	setvar VAR_ROCKET_TRAP_KOFFING_4, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_5, 1
	setvar VAR_ROCKET_TRAP_VOLTORB_6, 1
	setvar VAR_ROCKET_TRAP_KOFFING_5, 1
	setvar VAR_ROCKET_TRAP_GEODUDE_5, 1
	end

_0B27:
	setflag FLAG_UNK_96D
	hide_person obj_D35R0103_follower_mon_static_electrode_3
	hide_person obj_D35R0103_follower_mon_static_electrode_6
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_ELECTRODE_3_AND_6
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

	.byte 0x00, 0x00, 0x00
	.balign 4
_0B40:

	step 15, 5
	step 12, 4
	step_end
	.balign 4
_0B4C:

	step 15, 11
	step_end
	.balign 4
_0B54:

	step 61, 1
	step 15, 11
	step_end
	.balign 4
_0B60:

	step 14, 2
	step_end
	.balign 4
_0B68:

	step 63, 1
	step 14, 1
	step_end
	.balign 4
_0B74:

	step 75, 1
	step_end
	.balign 4
_0B7C:

	step 13, 5
	step 35, 1
	step_end
	.balign 4
_0B88:

	step 14, 1
	step_end
	.balign 4
_0B90:

	step 75, 1
	step 34, 1
	step_end
	.balign 4
_0B9C:

	step 48, 2
	step_end
	.balign 4
_0BA4:

	step 48, 2
	step 2, 1
	step 63, 1
	step 18, 2
	step 50, 2
	step 17, 1
	step 18, 10
	step_end
	.balign 4
_0BC4:

	step 50, 2
	step_end
	.balign 4
_0BCC:

	step 3, 1
	step 51, 1
	step 19, 5
	step_end
	.balign 4
_0BDC:

	step 51, 2
	step_end
	.balign 4
_0BE4:

	step 2, 1
	step 50, 1
	step 18, 10
	step_end
	.balign 4
_0BF4:

	step 3, 1
	step_end
	.balign 4
_0BFC:

	step 18, 1
	step_end
	.balign 4
_0C04:

	step 16, 1
	step_end
	.balign 4
_0C0C:

	step 16, 2
	step 19, 1
	step 17, 2
	step 2, 1
	step_end
	.balign 4
_0C20:

	step 15, 2
	step_end
	.balign 4
_0C28:

	step 61, 1
	step 15, 2
	step_end
	.balign 4
_0C34:

	step 63, 4
	step 12, 5
	step_end
	.balign 4
_0C40:

	step 12, 6
	step 63, 2
	step 14, 2
	step 32, 1
	step 63, 2
	step 35, 1
	step 15, 5
	step 32, 1
	step 63, 2
	step 35, 1
	step_end
	.balign 4
_0C6C:

	step 61, 1
	step 15, 1
	step 12, 5
	step 15, 8
	step 12, 1
	step 63, 4
	step 14, 4
	step_end
	.balign 4
_0C8C:

	step 14, 2
	step 33, 1
	step 33, 1
	step_end
	.balign 4
_0C9C:

	step 62, 1
	step 14, 2
	step_end
	.balign 4
_0CA8:

	step 61, 1
	step 63, 1
	step 12, 1
	step 14, 5
	step_end
	.balign 4
_0CBC:

	step 15, 6
	step_end
	.balign 4
_0CC4:

	step 61, 1
	step 14, 1
	step 15, 5
	step_end
	.byte 0x4b, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00, 0x0f, 0x00, 0x01, 0x00
	.byte 0xfe, 0x00, 0x00, 0x00, 0x0e, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x01, 0x00
	.byte 0xfe, 0x00, 0x00, 0x00
	.balign 4
_0CF4:

	step 13, 2
	step 14, 1
	step 13, 3
	step 35, 1
	step_end
	.balign 4
_0D08:

	step 63, 1
	step 16, 6
	step 34, 1
	step_end
	.balign 4
_0D18:

	step 63, 2
	step 16, 3
	step_end
	.balign 4
_0D24:

	step 34, 1
	step_end
	.balign 4
_0D2C:

	step 19, 10
	step_end
	.balign 4
_0D34:

	step 62, 1
	step 19, 10
	step_end
	.balign 4
_0D40:

	step 51, 1
	step_end
	.balign 4
_0D48:

	step 13, 2
	step 15, 10
	step_end
	.balign 4
_0D54:

	step 48, 2
	step 2, 1
	step 63, 1
	step 18, 12
	step_end
	.byte 0x00, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00
	.balign 4
_0D70:

	step 12, 1
	step 14, 1
	step_end
	.byte 0x0f, 0x00, 0x01, 0x00
	.byte 0x0c, 0x00, 0x01, 0x00, 0x0e, 0x00, 0x01, 0x00, 0xfe, 0x00, 0x00, 0x00
	.balign 4
_0D8C:

	step 13, 4
	step 15, 10
	step_end
	.balign 4
_0D98:

	step 14, 8
	step_end
	.balign 4
_0DA0:

	step 61, 1
	step 14, 8
	step_end
	.balign 4
_0DAC:

	step 33, 1
	step_end
	.balign 4
_0DB4:

	step 17, 6
	step 18, 12
	step_end
	.balign 4
_0DC0:

	step 62, 1
	step 18, 1
	step 17, 6
	step 18, 12
	step_end
	.balign 4
_0DD4:

	step 13, 6
	step 15, 10
	step_end
	.balign 4
_0DE0:

	step 15, 1
	step 12, 2
	step 14, 1
	step_end
	.balign 4
