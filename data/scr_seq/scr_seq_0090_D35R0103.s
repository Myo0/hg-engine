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
scrdef scr_seq_D35R0103_016
scrdef scr_seq_D35R0103_017
scrdef scr_seq_D35R0103_018
scrdef_end

scr_seq_D35R0103_000:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0DF6
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
	apply_movement obj_D35R0103_wataru, _0E02
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0E0A
	wait_movement
	hide_person obj_D35R0103_wataru
	hide_person obj_D35R0103_follower_mon_static_dragonite
	setflag FLAG_UNK_1E5
	releaseall
	setvar VAR_UNK_40A9, 1
	end

scr_seq_D35R0103_001:
	compare VAR_UNK_40AC, 8
	goto_if_ge _0623
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_UNK_0D3, _0625
	buffer_players_name 0
	npc_msg 21
	closemsg
	play_se SEQ_SE_DP_DOOR10
	apply_movement obj_D35R0103_babyboy1_9, _0E16
	apply_movement obj_D35R0103_babyboy1_9_2, _0E1E
	wait_movement
	releaseall
	end

scr_seq_D35R0103_002:
	scrcmd_710
	compare VAR_UNK_40A9, 3
	goto_if_ge _0630
	end

scr_seq_D35R0103_003:
	scrcmd_609
	lockall
	npc_msg 3
	apply_movement obj_player, _0E2A
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
	goto_if_ne _0664
	apply_movement obj_player, _0E32
	goto _0873

scr_seq_D35R0103_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x400A, 1
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle 1328, 50, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A7A
	static_wild_won_or_caught VAR_TEMP_x4000, 0
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0A80
	setflag FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_1
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_2, _0A80
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_3, _0A80
	goto _0A84

scr_seq_D35R0103_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x400A, 2
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle 1328, 50, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A7A
	static_wild_won_or_caught VAR_TEMP_x4000, 0
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0AAF
	setflag FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_2
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_1, _0AAF
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_3, _0AAF
	goto _0A84

scr_seq_D35R0103_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x400A, 3
	setvar VAR_UNK_416F, 63
	setflag FLAG_ENGAGING_STATIC_POKEMON
	wild_battle 1328, 50, 0
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0A7A
	static_wild_won_or_caught VAR_TEMP_x4000, 0
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0AB3
	setflag FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_3
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_1, _0AB3
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_2, _0AB3
	goto _0A84

scr_seq_D35R0103_007:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _0AB7
	end

scr_seq_D35R0103_008:
	scrcmd_609
	lockall
	npc_msg 14
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0E3E
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

scr_seq_D35R0103_009:
	scrcmd_609
	lockall
	apply_movement obj_D35R0103_wataru, _0E46
	wait_movement
	npc_msg 14
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0E3E
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

scr_seq_D35R0103_010:
	releaseall
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_1, _0AEC
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_2, _0AEC
	goto_if_unset FLAG_REMOVED_ROCKET_HIDEOUT_B3F_ELECTRODE_3, _0AEC
	npc_msg 23
	closemsg
	releaseall
	end

scr_seq_D35R0103_011:
	scrcmd_609
	lockall
	apply_movement obj_D35R0103_follower_mon_static_murkrow_3, _0E52
	wait_movement
	npc_msg 26
	closemsg
	npc_msg 27
	closemsg
	play_se SEQ_SE_DP_DOOR10
	apply_movement obj_D35R0103_babyboy1_9, _0E16
	apply_movement obj_D35R0103_babyboy1_9_2, _0E1E
	wait_movement
	get_player_coords VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	compare VAR_SPECIAL_x8001, 24
	goto_if_ne _0AF5
	apply_movement obj_D35R0103_follower_mon_static_murkrow_3, _0E5A
	goto _0B23

scr_seq_D35R0103_012:
	goto scr_seq_D35R0103_011

scr_seq_D35R0103_013:
	scrcmd_609
	lockall
	apply_movement obj_D35R0103_follower_mon_static_murkrow, _0E7A
	wait_movement
	npc_msg 24
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D35R0103_follower_mon_static_murkrow, _0E82
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
	apply_movement obj_D35R0103_follower_mon_static_murkrow_2, _0E92
	wait_movement
	npc_msg 25
	closemsg
	apply_movement obj_D35R0103_follower_mon_static_murkrow_2, _0E9A
	wait_movement
	setvar VAR_UNK_40AC, 7
	hide_person obj_D35R0103_follower_mon_static_murkrow_2
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_2
	clearflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_MURKROW_3
	show_person obj_D35R0103_follower_mon_static_murkrow_3
	releaseall
	end

scr_seq_D35R0103_015:
	party_count_not_egg VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_gt _0B49
	get_player_coords VAR_SPECIAL_x8005, VAR_SPECIAL_x8006
	compare VAR_SPECIAL_x8005, 31
	call_if_eq _0B62
	compare VAR_SPECIAL_x8006, 26
	call_if_eq _0B6C
	apply_movement obj_D35R0103_wataru, _0EAA
	apply_movement obj_player, _0EAA
	wait_movement
	npc_msg 6
	closemsg
	apply_movement obj_D35R0103_rkanbuw, _0EB2
	apply_movement obj_D35R0103_rocketm_3, _0EBA
	wait_movement
	multi_battle TRAINER_PKMN_TRAINER_LANCE_LANCE, TRAINER_EXECUTIVE_ARIANA_ARIANA_2, TRAINER_TEAM_ROCKET_GRUNT_25, 1
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0B76
	setvar VAR_UNK_404B, 0
	npc_msg 8
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	move_person_facing obj_D35R0103_wataru, 28, 1, 24, DIR_SOUTH
	move_person_facing obj_D35R0103_follower_mon_static_dragonite, 27, 1, 24, DIR_EAST
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0EC2
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
	apply_movement obj_D35R0103_wataru, _0ED6
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0EDE
	wait_movement
	buffer_players_name 0
	gender_msgbox 10, 11
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0EEA
	apply_movement obj_D35R0103_wataru, _0EF6
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0F22
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_cry SPECIES_DRAGONITE, 0
	wait_cry
	apply_movement obj_D35R0103_wataru, _0F42
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0F52
	wait_movement
	buffer_players_name 0
	gender_msgbox 12, 13
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0F5E
	apply_movement obj_D35R0103_wataru, _0F72
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0F7A
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

scr_seq_D35R0103_016:
	lockall
	apply_movement obj_player, _0F8A
	wait_movement
	npc_msg 29
	closemsg
	apply_movement obj_player, _0F92
	wait_movement
	end

scr_seq_D35R0103_017:
	lockall
	apply_movement obj_player, _0F8A
	wait_movement
	npc_msg 29
	closemsg
	apply_movement obj_player, _0F9A
	wait_movement
	end

scr_seq_D35R0103_018:
	lockall
	apply_movement obj_player, _0F8A
	wait_movement
	npc_msg 29
	closemsg
	apply_movement obj_player, _0FA2
	wait_movement
	end

_0623:
	end

_0625:
	npc_msg 20
	wait_button
	closemsg
	releaseall
	end

_0630:
	move_person_facing obj_D35R0103_babyboy1_9, 29, 0, 22, DIR_NORTH
	move_person_facing obj_D35R0103_babyboy1_9_2, 29, 0, 22, DIR_NORTH
	compare VAR_UNK_40AC, 10
	goto_if_ge _0B84
	compare VAR_UNK_40A9, 4
	goto_if_ge _0B86
	end

_0664:
	apply_movement obj_player, _0FAA
	apply_movement obj_D35R0103_rkanbuw, _0FBE
	apply_movement obj_D35R0103_rocketm_3, _0FCE
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D35R0103_rkanbuw, _0FDA
	wait_movement
	npc_msg 4
	closemsg
	clearflag FLAG_UNK_1E5
	show_person obj_D35R0103_wataru
	show_person obj_D35R0103_follower_mon_static_dragonite
	move_person_facing obj_D35R0103_wataru, 20, 1, 25, DIR_EAST
	move_person_facing obj_D35R0103_follower_mon_static_dragonite, 19, 1, 25, DIR_NORTH
	apply_movement obj_D35R0103_wataru, _0FE2
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0FEA
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0FF6
	play_cry SPECIES_DRAGONITE, 0
	wait_cry
	apply_movement obj_D35R0103_rkanbuw, _0FDA
	wait_movement
	party_count_not_egg VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_gt _0B49
	npc_msg 6
	closemsg
	apply_movement obj_D35R0103_rkanbuw, _0EB2
	apply_movement obj_D35R0103_rocketm_3, _0EBA
	wait_movement
	multi_battle TRAINER_PKMN_TRAINER_LANCE_LANCE, TRAINER_EXECUTIVE_ARIANA_ARIANA_2, TRAINER_TEAM_ROCKET_GRUNT_25, 1
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0B76
	setvar VAR_UNK_404B, 0
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
	apply_movement obj_player, _0EC2
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
	apply_movement obj_D35R0103_wataru, _0ED6
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0EDE
	wait_movement
	buffer_players_name 0
	gender_msgbox 10, 11
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0EEA
	apply_movement obj_D35R0103_wataru, _0EF6
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0F22
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_cry SPECIES_DRAGONITE, 0
	wait_cry
	apply_movement obj_D35R0103_wataru, _0F42
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0F52
	wait_movement
	buffer_players_name 0
	gender_msgbox 12, 13
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0F5E
	apply_movement obj_D35R0103_wataru, _0F72
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0F7A
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

_0873:
	apply_movement obj_D35R0103_rkanbuw, _0FBE
	apply_movement obj_D35R0103_rocketm_3, _0FCE
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D35R0103_rkanbuw, _0FDA
	wait_movement
	npc_msg 4
	closemsg
	clearflag FLAG_UNK_1E5
	show_person obj_D35R0103_wataru
	show_person obj_D35R0103_follower_mon_static_dragonite
	move_person_facing obj_D35R0103_wataru, 20, 1, 25, DIR_EAST
	move_person_facing obj_D35R0103_follower_mon_static_dragonite, 19, 1, 25, DIR_NORTH
	apply_movement obj_D35R0103_wataru, _0FE2
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0FEA
	wait_movement
	npc_msg 5
	closemsg
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0FF6
	play_cry SPECIES_DRAGONITE, 0
	wait_cry
	apply_movement obj_D35R0103_rkanbuw, _0FDA
	wait_movement
	party_count_not_egg VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_gt _0B49
	npc_msg 6
	closemsg
	apply_movement obj_D35R0103_rkanbuw, _0EB2
	apply_movement obj_D35R0103_rocketm_3, _0EBA
	wait_movement
	multi_battle TRAINER_PKMN_TRAINER_LANCE_LANCE, TRAINER_EXECUTIVE_ARIANA_ARIANA_2, TRAINER_TEAM_ROCKET_GRUNT_25, 1
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0B76
	setvar VAR_UNK_404B, 0
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
	apply_movement obj_player, _0EC2
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
	apply_movement obj_D35R0103_wataru, _0ED6
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0EDE
	wait_movement
	buffer_players_name 0
	gender_msgbox 10, 11
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0EEA
	apply_movement obj_D35R0103_wataru, _0EF6
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0F22
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	play_cry SPECIES_DRAGONITE, 0
	wait_cry
	apply_movement obj_D35R0103_wataru, _0F42
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0F52
	wait_movement
	buffer_players_name 0
	gender_msgbox 12, 13
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _0F5E
	apply_movement obj_D35R0103_wataru, _0F72
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _0F7A
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

_0A7A:
	white_out
	releaseall
	end

_0A80:
	releaseall
	end

_0A84:
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4001, 16
	goto_if_ne _0BB3
	apply_movement obj_player, _0FFE
	goto _0BCE

_0AAF:
	releaseall
	end

_0AB3:
	releaseall
	end

_0AB7:
	static_wild_won_or_caught VAR_TEMP_x4000, 1
	compare VAR_TEMP_x4000, 1
	goto_if_eq _0CBE
	compare VAR_TEMP_x400A, 1
	goto_if_ne _0CC4
	setflag FLAG_UNK_96B
	hide_person obj_D35R0103_follower_mon_static_electrode
	hide_person obj_D35R0103_follower_mon_static_electrode_4
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_ELECTRODE_1_AND_4
	goto _0CBE

_0AEC:
	npc_msg 22
	closemsg
	releaseall
	end

_0AF5:
	apply_movement obj_D35R0103_follower_mon_static_murkrow_3, _100A
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

_0B23:
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

_0B49:
	apply_movement obj_D35R0103_wataru, _101E
	wait_movement
	npc_msg 28
	closemsg
	setvar VAR_UNK_404B, 1
	releaseall
	end

_0B62:
	apply_movement obj_player, _1026
	return

_0B6C:
	apply_movement obj_player, _1032
	return

_0B76:
	white_out
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B2F_ARIANA
	setflag FLAG_UNK_1E5
	releaseall
	end

_0B84:
	end

_0B86:
	compare VAR_TEMP_x4007, 0
	goto_if_ne _0B84
	setvar VAR_TEMP_x4007, 77
	move_person_facing obj_D35R0103_wataru, 39, 0, 18, DIR_NORTH
	move_person_facing obj_D35R0103_follower_mon_static_dragonite, 40, 0, 18, DIR_NORTH
	end

_0BB3:
	compare VAR_TEMP_x4001, 14
	goto_if_ne _0CE7
	apply_movement obj_player, _1042
	goto _0BCE

_0BCE:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D35R0103_wataru, _104E
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _1056
	wait_movement
	npc_msg 15
	giveitem_no_check ITEM_HM05, 1
	npc_msg 17
	closemsg
	apply_movement obj_D35R0103_wataru, _1062
	wait_movement
	buffer_players_name 0
	gender_msgbox 18, 19
	closemsg
	apply_movement obj_D35R0103_wataru, _106A
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _1076
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

_0CBE:
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

_0CC4:
	compare VAR_TEMP_x400A, 2
	goto_if_ne _0DDF
	setflag FLAG_UNK_96C
	hide_person obj_D35R0103_follower_mon_static_electrode_2
	hide_person obj_D35R0103_follower_mon_static_electrode_5
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_ELECTRODE_2_AND_5
	goto _0CBE

_0CE7:
	apply_movement obj_player, _108A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_D35R0103_wataru, _104E
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _1056
	wait_movement
	npc_msg 15
	giveitem_no_check ITEM_HM05, 1
	npc_msg 17
	closemsg
	apply_movement obj_D35R0103_wataru, _1062
	wait_movement
	buffer_players_name 0
	gender_msgbox 18, 19
	closemsg
	apply_movement obj_D35R0103_wataru, _106A
	apply_movement obj_D35R0103_follower_mon_static_dragonite, _1076
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

_0DDF:
	setflag FLAG_UNK_96D
	hide_person obj_D35R0103_follower_mon_static_electrode_3
	hide_person obj_D35R0103_follower_mon_static_electrode_6
	setflag FLAG_HIDE_ROCKET_HIDEOUT_B3F_ELECTRODE_3_AND_6
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

	.byte 0x00
	.balign 4
_0DF6:

	step 15, 5
	step 12, 4
	step_end
	.balign 4
_0E02:

	step 15, 11
	step_end
	.balign 4
_0E0A:

	step 61, 1
	step 15, 11
	step_end
	.balign 4
_0E16:

	step 14, 2
	step_end
	.balign 4
_0E1E:

	step 63, 1
	step 14, 1
	step_end
	.balign 4
_0E2A:

	step 75, 1
	step_end
	.balign 4
_0E32:

	step 13, 5
	step 35, 1
	step_end
	.balign 4
_0E3E:

	step 14, 1
	step_end
	.balign 4
_0E46:

	step 75, 1
	step 34, 1
	step_end
	.balign 4
_0E52:

	step 48, 2
	step_end
	.balign 4
_0E5A:

	step 48, 2
	step 2, 1
	step 63, 1
	step 18, 2
	step 50, 2
	step 17, 1
	step 18, 10
	step_end
	.balign 4
_0E7A:

	step 50, 2
	step_end
	.balign 4
_0E82:

	step 3, 1
	step 51, 1
	step 19, 5
	step_end
	.balign 4
_0E92:

	step 51, 2
	step_end
	.balign 4
_0E9A:

	step 2, 1
	step 50, 1
	step 18, 10
	step_end
	.balign 4
_0EAA:

	step 3, 1
	step_end
	.balign 4
_0EB2:

	step 18, 1
	step_end
	.balign 4
_0EBA:

	step 16, 1
	step_end
	.balign 4
_0EC2:

	step 16, 2
	step 19, 1
	step 17, 2
	step 2, 1
	step_end
	.balign 4
_0ED6:

	step 15, 2
	step_end
	.balign 4
_0EDE:

	step 61, 1
	step 15, 2
	step_end
	.balign 4
_0EEA:

	step 63, 4
	step 12, 5
	step_end
	.balign 4
_0EF6:

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
_0F22:

	step 61, 1
	step 15, 1
	step 12, 5
	step 15, 8
	step 12, 1
	step 63, 4
	step 14, 4
	step_end
	.balign 4
_0F42:

	step 14, 2
	step 33, 1
	step 33, 1
	step_end
	.balign 4
_0F52:

	step 62, 1
	step 14, 2
	step_end
	.balign 4
_0F5E:

	step 61, 1
	step 63, 1
	step 12, 1
	step 14, 5
	step_end
	.balign 4
_0F72:

	step 15, 6
	step_end
	.balign 4
_0F7A:

	step 61, 1
	step 14, 1
	step 15, 5
	step_end
	.balign 4
_0F8A:

	step 75, 1
	step_end
	.balign 4
_0F92:

	step 15, 1
	step_end
	.balign 4
_0F9A:

	step 14, 1
	step_end
	.balign 4
_0FA2:

	step 13, 1
	step_end
	.balign 4
_0FAA:

	step 13, 2
	step 14, 1
	step 13, 3
	step 35, 1
	step_end
	.balign 4
_0FBE:

	step 63, 1
	step 16, 6
	step 34, 1
	step_end
	.balign 4
_0FCE:

	step 63, 2
	step 16, 3
	step_end
	.balign 4
_0FDA:

	step 34, 1
	step_end
	.balign 4
_0FE2:

	step 19, 10
	step_end
	.balign 4
_0FEA:

	step 62, 1
	step 19, 10
	step_end
	.balign 4
_0FF6:

	step 51, 1
	step_end
	.balign 4
_0FFE:

	step 13, 2
	step 15, 10
	step_end
	.balign 4
_100A:

	step 48, 2
	step 2, 1
	step 63, 1
	step 18, 12
	step_end
	.balign 4
_101E:

	step 0, 1
	step_end
	.balign 4
_1026:

	step 12, 1
	step 14, 1
	step_end
	.balign 4
_1032:

	step 15, 1
	step 12, 1
	step 14, 1
	step_end
	.balign 4
_1042:

	step 13, 4
	step 15, 10
	step_end
	.balign 4
_104E:

	step 14, 8
	step_end
	.balign 4
_1056:

	step 61, 1
	step 14, 8
	step_end
	.balign 4
_1062:

	step 33, 1
	step_end
	.balign 4
_106A:

	step 17, 6
	step 18, 12
	step_end
	.balign 4
_1076:

	step 62, 1
	step 18, 1
	step 17, 6
	step 18, 12
	step_end
	.balign 4
_108A:

	step 13, 6
	step 15, 10
	step_end
	.balign 4
