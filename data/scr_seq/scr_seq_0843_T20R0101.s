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

.include "data/scr_seq/include/event_T20R0101.inc"


// text archive to grab from: 543.txt

.data


scrdef scr_seq_T20R0101_000
scrdef scr_seq_T20R0101_001
scrdef scr_seq_T20R0101_002
scrdef scr_seq_T20R0101_003
scrdef scr_seq_T20R0101_004
scrdef scr_seq_T20R0101_005
scrdef scr_seq_T20R0101_006
scrdef scr_seq_T20R0101_007
scrdef scr_seq_T20R0101_008
scrdef scr_seq_T20R0101_009
scrdef scr_seq_T20R0101_010
scrdef scr_seq_T20R0101_011
scrdef scr_seq_T20R0101_012
scrdef scr_seq_T20R0101_013
scrdef scr_seq_T20R0101_014
scrdef scr_seq_T20R0101_015
scrdef_end

scr_seq_T20R0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_0F2, _05A7
	goto_if_set FLAG_GAME_CLEAR, _0629
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0653
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 172
	goto_if_ne _0653
	get_partymon_forme VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _069A
	goto_if_set FLAG_UNK_072, _073F
	goto_if_set FLAG_UNK_983, _07A2
	compare VAR_SCENE_ELMS_LAB, 9
	goto_if_ge _073F
	compare VAR_SCENE_ELMS_LAB, 0
	goto_if_ne _07DC
	npc_msg 5
	wait_button
	closemsg
	apply_movement obj_T20R0101_doctor, _11EE
	wait_movement
	goto _07FA

scr_seq_T20R0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_40FC, 3
	goto_if_eq _07FE
	compare VAR_SCENE_ELMS_LAB, 0
	goto_if_ne _0809
	npc_msg 18
	goto _081F

scr_seq_T20R0101_002:
	scrcmd_609
	lockall
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _11F6
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_T20R0101_policeman, _1202
	wait_movement
	npc_msg 23
	closemsg
	clearflag FLAG_HIDE_ELMS_LAB_FRIEND
	play_se SEQ_SE_DP_KAIDAN2
	show_person obj_T20R0101_var_1
	wait_se SEQ_SE_DP_KAIDAN2
	callstd std_play_friend_music
	apply_movement obj_T20R0101_var_1, _120A
	apply_movement obj_T20R0101_policeman, _121A
	wait_movement
	gender_msgbox 24, 25
	closemsg
	apply_movement obj_T20R0101_policeman, _1226
	wait_movement
	npc_msg 26
	closemsg
	callstd std_fade_end_friend_music
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	name_rival VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0827
	apply_movement obj_T20R0101_policeman, _1202
	wait_movement
	buffer_rivals_name 1
	npc_msg 27
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0996
	closemsg
	npc_msg 28
	closemsg
	apply_movement obj_T20R0101_var_1, _1252
	apply_movement obj_T20R0101_policeman, _126E
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T20R0101_policeman
	wait_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_T20R0101_var_1, _128E
	wait_movement
	buffer_players_name 0
	gender_msgbox 30, 31
	closemsg
	apply_movement obj_T20R0101_var_1, _129E
	wait_movement
	setflag FLAG_HIDE_NEW_BARK_FRIENDS_ROOM_FRIEND
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T20R0101_var_1
	wait_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_ELMS_LAB_OFFICER
	setflag FLAG_HIDE_ELMS_LAB_FRIEND
	setflag FLAG_UNK_079
	apply_movement obj_player, _12B2
	wait_movement
	apply_movement obj_T20R0101_doctor, _12BA
	wait_movement
	buffer_players_name 0
	gender_msgbox 32, 33
	closemsg
	npc_msg 34
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	takeitem_no_check ITEM_MYSTERY_EGG, 1
	apply_movement obj_T20R0101_doctor, _12C2
	wait_movement
	npc_msg 35
	closemsg
	apply_movement obj_T20R0101_doctor, _12D6
	wait_movement
	gender_msgbox 36, 37
	closemsg
	apply_movement obj_T20R0101_doctor, _12DE
	wait_movement
	gender_msgbox 38, 39
	closemsg
	npc_msg 106
	closemsg
	giveitem_no_check ITEM_OLD_ROD, 1
	npc_msg 107
	closemsg
	apply_movement obj_T20R0101_doctor, _12F2
	wait_movement
	setflag FLAG_HIDE_ROUTE_30_BATTLERS
	clearflag FLAG_HIDE_ROUTE_30_YOUNGSTER_JOEY
	setvar VAR_SCENE_ELMS_LAB, 4
	setvar VAR_UNK_408B, 1
	clearflag FLAG_HIDE_ROUTE_29_FRIEND
	clearflag FLAG_HIDE_ROUTE_29_MARILL
	setvar VAR_SCENE_MR_POKEMONS_HOUSE, 2
	setvar VAR_SCENE_NEW_BARK_TOWN_OW, 3
	clearflag FLAG_HIDE_CHERRYGROVE_MART_SPECIAL_CLERK
	setvar VAR_SCENE_ROUTE_30_PHONE_CALL, 1
	releaseall
	end

scr_seq_T20R0101_003:
	scrcmd_609
	lockall
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 3
	goto_if_ne _09A1
	apply_movement obj_T20R0101_assistantm, _12FA
	goto _09BC

scr_seq_T20R0101_004:
	end

scr_seq_T20R0101_005:
	buffer_players_name 0
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 93
	wait_button
	closemsg
	releaseall
	end

scr_seq_T20R0101_006:
	buffer_players_name 0
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 94
	wait_button
	closemsg
	releaseall
	end

scr_seq_T20R0101_007:
	buffer_players_name 0
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 95
	wait_button
	closemsg
	releaseall
	end

scr_seq_T20R0101_008:
	buffer_players_name 0
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 96
	wait_button
	closemsg
	releaseall
	end

scr_seq_T20R0101_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 97
	wait_button
	closemsg
	releaseall
	end

scr_seq_T20R0101_010:
	get_friend_sprite VAR_OBJ_0
	goto_if_set FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE, _0A1E
	compare VAR_SCENE_ELMS_LAB, 0
	goto_if_ne _0A30
	move_person_facing obj_T20R0101_doctor, 4, 0, 5, DIR_SOUTH
	goto _0A4F

scr_seq_T20R0101_011:
	scrcmd_609
	lockall
	goto_if_set FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE, _0A65
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 3
	goto_if_ne _0A8A
	apply_movement obj_player, _130A
	goto _0AA5

scr_seq_T20R0101_012:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setflag FLAG_UNK_A29
	goto_if_set FLAG_GOT_STARTER, _0AF7
	choose_starter
	scrcmd_208 5, 0
	setflag FLAG_GOT_STARTER
	scrcmd_605 3, 2
	toggle_following_pokemon_movement 0
	scrcmd_608
	wait 10, VAR_SPECIAL_RESULT
	toggle_following_pokemon_movement 1
	get_partymon_species 0, VAR_TEMP_x4001
	set_starter_choice VAR_TEMP_x4001
	buffer_players_name 0
	buffer_mon_species_name 1, 0
	npc_msg 7
	play_fanfare SEQ_ME_POKEGET
	wait_fanfare
	touchscreen_menu_hide
	buffer_mon_species_name 1, 0
	npc_msg 8
	getmenuchoice VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 0
	call_if_eq _0B18
	touchscreen_menu_show
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _131A
	apply_movement obj_T20R0101_doctor, _132A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 10
	closemsg
	apply_movement obj_T20R0101_doctor, _1332
	wait_movement
	npc_msg 11
	closemsg
	apply_movement obj_T20R0101_doctor, _133A
	wait_movement
	buffer_players_name 0
	gender_msgbox 12, 13
	wait_button
	closemsg
	setvar VAR_SCENE_ELMS_LAB, 1
	setvar VAR_SCENE_NEW_BARK_TOWN_OW, 1
	clearflag FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE
	releaseall
	end

scr_seq_T20R0101_013:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_unset FLAG_GOT_STARTER, _0B5B
	npc_msg 92
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0B66
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	play_fanfare SEQ_ME_ASA
	heal_party
	scrcmd_436
	restore_overworld
	wait_fanfare
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T20R0101_014:
	scrcmd_609
	lockall
	apply_movement obj_T20R0101_var_1, _1346
	wait_movement
	apply_movement obj_T20R0101_var_1, _1352
	wait_movement
	buffer_players_name 0
	gender_msgbox 58, 59
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _135E
	apply_movement obj_T20R0101_var_1, _1366
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	apply_movement obj_T20R0101_doctor, _12BA
	wait_movement
	buffer_players_name 0
	gender_msgbox 60, 61
	setvar VAR_SPECIAL_x8004, 1
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0B6A
	callstd std_bag_is_full
	goto _0BF0

scr_seq_T20R0101_015:
	scrcmd_609
	lockall
	apply_movement obj_T20R0101_assistantm, _137A
	wait_movement
	buffer_players_name 0
	npc_msg 56
	closemsg
	apply_movement obj_T20R0101_assistantm, _1386
	wait_movement
	setvar VAR_UNK_40FC, 3
	releaseall
	end

_05A7:
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0653
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 172
	goto_if_ne _0653
	get_partymon_forme VAR_TEMP_x4000, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _069A
	goto_if_set FLAG_UNK_072, _073F
	goto_if_set FLAG_UNK_983, _07A2
	compare VAR_SCENE_ELMS_LAB, 9
	goto_if_ge _073F
	compare VAR_SCENE_ELMS_LAB, 0
	goto_if_ne _07DC
	npc_msg 5
	wait_button
	closemsg
	apply_movement obj_T20R0101_doctor, _11EE
	wait_movement
	goto _07FA

_0629:
	buffer_players_name 0
	gender_msgbox 71, 72
	setvar VAR_SPECIAL_x8004, 456
	setvar VAR_SPECIAL_x8005, 1
	setflag FLAG_UNK_0F2
	callstd std_give_item_verbose
	buffer_players_name 0
	gender_msgbox 73, 74
	wait_button
	closemsg
	releaseall
	end

_0653:
	goto_if_set FLAG_UNK_072, _073F
	goto_if_set FLAG_UNK_983, _07A2
	compare VAR_SCENE_ELMS_LAB, 9
	goto_if_ge _073F
	compare VAR_SCENE_ELMS_LAB, 0
	goto_if_ne _07DC
	npc_msg 5
	wait_button
	closemsg
	apply_movement obj_T20R0101_doctor, _11EE
	wait_movement
	goto _07FA

_069A:
	compare VAR_TEMP_x4006, 1
	goto_if_eq _0C72
	compare VAR_UNK_412F, 2
	goto_if_ge _0C83
	compare VAR_UNK_412F, 1
	goto_if_eq _0C8E
	call _0CA7
	apply_movement obj_T20R0101_doctor, _1396
	wait_movement
	npc_msg 75
	closemsg
	apply_movement obj_T20R0101_doctor, _139E
	wait_movement
	apply_movement obj_partner_poke, _13AE
	wait_movement
	npc_msg 76
	closemsg
	apply_movement obj_T20R0101_doctor, _1396
	wait_movement
	npc_msg 77
	closemsg
	apply_movement obj_T20R0101_doctor, _13BE
	wait_movement
	npc_msg 78
	closemsg
	apply_movement obj_T20R0101_doctor, _13CA
	wait_movement
	npc_msg 79
	closemsg
	get_person_coords 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	compare VAR_SPECIAL_x8006, 4
	goto_if_ne _0CEB
	apply_movement obj_T20R0101_doctor, _13DA
	goto _0D17

_073F:
	check_badge BADGE_EARTH, VAR_TEMP_x4003
	compare VAR_TEMP_x4003, 1
	goto_if_eq _0D3B
	goto_if_set FLAG_UNK_0F2, _0D4A
	goto_if_set FLAG_UNK_108, _0D59
	goto_if_set FLAG_UNK_109, _0D59
	check_badge BADGE_RISING, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 1
	goto_if_eq _0D64
	compare VAR_TEMP_x400F, 1
	goto_if_eq _0D6F
	buffer_players_name 0
	gender_msgbox 98, 99
	wait_button
	closemsg
	releaseall
	end

_07A2:
	get_party_lead_alive VAR_TEMP_x4000
	get_partymon_species VAR_TEMP_x4000, VAR_TEMP_x4001
	scrcmd_149 0
	compare VAR_TEMP_x4001, 175
	goto_if_eq _0D7B
	compare VAR_TEMP_x4001, 176
	goto_if_eq _0D7B
	compare VAR_TEMP_x4001, 468
	goto_if_eq _0D7B
	goto _0DB1

_07DC:
	compare VAR_SCENE_ELMS_LAB, 2
	goto_if_gt _0DC4
	buffer_players_name 0
	gender_msgbox 12, 13
	wait_button
	closemsg
	goto _07FA

_07FA:
	releaseall
	end

_07FE:
	npc_msg 57
	wait_button
	closemsg
	releaseall
	end

_0809:
	compare VAR_SCENE_ELMS_LAB, 2
	goto_if_ne _0DDE
	npc_msg 22
	goto _081F

_081F:
	wait_button
	closemsg
	releaseall
	end

_0827:
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	name_rival VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0827
	apply_movement obj_T20R0101_policeman, _1202
	wait_movement
	buffer_rivals_name 1
	npc_msg 27
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0996
	closemsg
	npc_msg 28
	closemsg
	apply_movement obj_T20R0101_var_1, _1252
	apply_movement obj_T20R0101_policeman, _126E
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T20R0101_policeman
	wait_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_T20R0101_var_1, _128E
	wait_movement
	buffer_players_name 0
	gender_msgbox 30, 31
	closemsg
	apply_movement obj_T20R0101_var_1, _129E
	wait_movement
	setflag FLAG_HIDE_NEW_BARK_FRIENDS_ROOM_FRIEND
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T20R0101_var_1
	wait_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_ELMS_LAB_OFFICER
	setflag FLAG_HIDE_ELMS_LAB_FRIEND
	setflag FLAG_UNK_079
	apply_movement obj_player, _12B2
	wait_movement
	apply_movement obj_T20R0101_doctor, _12BA
	wait_movement
	buffer_players_name 0
	gender_msgbox 32, 33
	closemsg
	npc_msg 34
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	takeitem_no_check ITEM_MYSTERY_EGG, 1
	apply_movement obj_T20R0101_doctor, _12C2
	wait_movement
	npc_msg 35
	closemsg
	apply_movement obj_T20R0101_doctor, _12D6
	wait_movement
	gender_msgbox 36, 37
	closemsg
	apply_movement obj_T20R0101_doctor, _12DE
	wait_movement
	gender_msgbox 38, 39
	closemsg
	npc_msg 106
	closemsg
	giveitem_no_check ITEM_OLD_ROD, 1
	npc_msg 107
	closemsg
	apply_movement obj_T20R0101_doctor, _12F2
	wait_movement
	setflag FLAG_HIDE_ROUTE_30_BATTLERS
	clearflag FLAG_HIDE_ROUTE_30_YOUNGSTER_JOEY
	setvar VAR_SCENE_ELMS_LAB, 4
	setvar VAR_UNK_408B, 1
	clearflag FLAG_HIDE_ROUTE_29_FRIEND
	clearflag FLAG_HIDE_ROUTE_29_MARILL
	setvar VAR_SCENE_MR_POKEMONS_HOUSE, 2
	setvar VAR_SCENE_NEW_BARK_TOWN_OW, 3
	clearflag FLAG_HIDE_CHERRYGROVE_MART_SPECIAL_CLERK
	setvar VAR_SCENE_ROUTE_30_PHONE_CALL, 1
	releaseall
	end

_0996:
	npc_msg 29
	closemsg
	goto _0827

_09A1:
	compare VAR_TEMP_x4000, 4
	goto_if_ne _0DFA
	apply_movement obj_T20R0101_assistantm, _13FE
	goto _09BC

_09BC:
	wait_movement
	buffer_players_name 0
	gender_msgbox 19, 20
	goto_if_no_item_space ITEM_POTION, 5, _0E15
	setvar VAR_SPECIAL_x8004, 17
	setvar VAR_SPECIAL_x8005, 5
	callstd std_obtain_item_verbose
	closemsg
	setvar VAR_SCENE_ELMS_LAB, 2
	npc_msg 21
	closemsg
	compare VAR_TEMP_x4000, 3
	goto_if_ne _0E1F
	apply_movement obj_T20R0101_assistantm, _140E
	goto _0E3A

_0A1E:
	move_person_facing obj_T20R0101_doctor, 4, 0, 5, DIR_EAST
	goto _0A4F

_0A30:
	compare VAR_SCENE_ELMS_LAB, 3
	goto_if_ne _0E40
	move_person_facing obj_T20R0101_doctor, 4, 0, 5, DIR_SOUTH
	goto _0A4F

_0A4F:
	place_starter_balls_in_elms_lab
	end

	.byte 0x53, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x03, 0x00, 0x16
	.byte 0x00, 0xea, 0xff, 0xff, 0xff
_0A65:
	apply_movement obj_T20R0101_doctor, _141A
	wait_movement
	npc_msg 6
	closemsg
	apply_movement obj_T20R0101_doctor, _11EE
	apply_movement obj_player, _142A
	wait_movement
	releaseall
	end

_0A8A:
	compare VAR_TEMP_x4000, 4
	goto_if_ne _0E7B
	apply_movement obj_player, _1432
	goto _0AA5

_0AA5:
	wait_movement
	buffer_players_name 0
	gender_msgbox 0, 1
	closemsg
	apply_movement obj_T20R0101_doctor, _11EE
	wait_movement
	wait 15, VAR_SPECIAL_x8004
	play_se SEQ_SE_GS_PHONE0
	apply_movement obj_T20R0101_doctor, _143A
	wait_movement
	npc_msg 2
	npc_msg 3
	closemsg
	apply_movement obj_T20R0101_doctor, _144A
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_T20R0101_doctor, _11EE
	wait_movement
	setflag FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE
	releaseall
	end

_0AF7:
	goto_if_set FLAG_GOT_TM51_FROM_FALKNER, _0E96
	goto_if_set FLAG_MET_PASSERBY_BOY, _0EA1
	npc_msg 15
	wait_button
	closemsg
	releaseall
	end

_0B18:
	setvar VAR_TEMP_x4000, 0
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	nickname_input 0, VAR_TEMP_x4000
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	touchscreen_menu_hide
	bufferpartymonnick 1, 0
	npc_msg 9
	getmenuchoice VAR_SPECIAL_RESULT
	closemsg
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0B18
	return

_0B5B:
	npc_msg 14
	wait_button
	closemsg
	releaseall
	end

_0B66:
	releaseall
	end

_0B6A:
	callstd std_give_item_verbose
	buffer_players_name 0
	gender_msgbox 62, 63
	buffer_players_name 0
	gender_msgbox 64, 65
	closemsg
	apply_movement obj_T20R0101_var_1, _1452
	apply_movement obj_player, _145E
	wait_movement
	buffer_players_name 0
	gender_msgbox 67, 68
	closemsg
	apply_movement obj_T20R0101_var_1, _146A
	wait_movement
	hide_person obj_T20R0101_var_1
	setflag FLAG_HIDE_ELMS_LAB_FRIEND
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_T20R0101_doctor, _12BA
	apply_movement obj_player, _147A
	wait_movement
	npc_msg 69
	wait_button
	closemsg
	releaseall
	setvar VAR_SCENE_ELMS_LAB, 9
	setvar VAR_UNK_4079, 3
	setflag FLAG_UNK_23B
	clearflag FLAG_HIDE_NEW_BARK_FRIEND_2
	setvar VAR_SCENE_NEW_BARK_EAST_EXIT, 2
	setvar VAR_UNK_407B, 2
	end

_0BF0:
	buffer_players_name 0
	gender_msgbox 62, 63
	buffer_players_name 0
	gender_msgbox 64, 65
	closemsg
	apply_movement obj_T20R0101_var_1, _1452
	apply_movement obj_player, _145E
	wait_movement
	buffer_players_name 0
	gender_msgbox 67, 68
	closemsg
	apply_movement obj_T20R0101_var_1, _146A
	wait_movement
	hide_person obj_T20R0101_var_1
	setflag FLAG_HIDE_ELMS_LAB_FRIEND
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_T20R0101_doctor, _12BA
	apply_movement obj_player, _147A
	wait_movement
	npc_msg 69
	wait_button
	closemsg
	releaseall
	setvar VAR_SCENE_ELMS_LAB, 9
	setvar VAR_UNK_4079, 3
	setflag FLAG_UNK_23B
	clearflag FLAG_HIDE_NEW_BARK_FRIEND_2
	setvar VAR_SCENE_NEW_BARK_EAST_EXIT, 2
	setvar VAR_UNK_407B, 2
	end

_0C72:
	npc_msg 83
	wait_button
	closemsg
	addvar VAR_TEMP_x4006, 1
	releaseall
	end

_0C83:
	npc_msg 91
	wait_button
	closemsg
	releaseall
	end

_0C8E:
	mon_get_friendship VAR_SPECIAL_RESULT, VAR_TEMP_x4000
	compare VAR_SPECIAL_RESULT, 220
	goto_if_ge _0EAC
	goto _0653

_0CA7:
	buffer_players_name 0
	gender_msgbox 84, 85
	closemsg
	get_player_facing VAR_TEMP_x4005
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_person_coords 0, VAR_SPECIAL_x8006, VAR_SPECIAL_x8007
	compare VAR_TEMP_x4005, 0
	goto_if_ne _0EF1
	apply_movement obj_player, _1482
	wait_movement
	apply_movement obj_partner_poke, _148E
	goto _0F16

_0CEB:
	apply_movement obj_T20R0101_doctor, _149E
	wait_movement
	npc_msg 80
	closemsg
	compare VAR_SPECIAL_x8006, 4
	goto_if_ne _0F24
	apply_movement obj_T20R0101_doctor, _14CA
	wait_movement
	goto _0F49

_0D17:
	wait_movement
	npc_msg 80
	closemsg
	compare VAR_SPECIAL_x8006, 4
	goto_if_ne _0F24
	apply_movement obj_T20R0101_doctor, _14CA
	wait_movement
	goto _0F49

_0D3B:
	buffer_players_name 0
	gender_msgbox 102, 103
	wait_button
	closemsg
	releaseall
	end

_0D4A:
	buffer_players_name 0
	gender_msgbox 73, 74
	wait_button
	closemsg
	releaseall
	end

_0D59:
	npc_msg 70
	wait_button
	closemsg
	releaseall
	end

_0D64:
	npc_msg 69
	wait_button
	closemsg
	releaseall
	end

_0D6F:
	gender_msgbox 100, 101
	wait_button
	closemsg
	releaseall
	end

_0D7B:
	apply_movement obj_T20R0101_doctor, _14D2
	wait_movement
	npc_msg 46
	buffer_players_name 0
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0F64
	goto_if_unset FLAG_UNK_108, _0F79
	gender_msgbox 104, 105
	goto _0F83

_0DB1:
	buffer_players_name 0
	gender_msgbox 53, 54
	setvar VAR_TEMP_x400F, 1
	goto _073F

_0DC4:
	compare VAR_SCENE_ELMS_LAB, 5
	goto_if_gt _0F89
	npc_msg 40
	wait_button
	closemsg
	goto _07FA

_0DDE:
	compare VAR_SCENE_ELMS_LAB, 4
	goto_if_ne _0FA7
	npc_msg 41
	setvar VAR_SCENE_ELMS_LAB, 5
	goto _081F

_0DFA:
	compare VAR_TEMP_x4000, 5
	goto_if_ne _0FBD
	apply_movement obj_T20R0101_assistantm, _14DE
	goto _09BC

_0E15:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0E1F:
	compare VAR_TEMP_x4000, 4
	goto_if_ne _1034
	apply_movement obj_T20R0101_assistantm, _14EE
	goto _0E3A

_0E3A:
	wait_movement
	releaseall
	end

_0E40:
	compare VAR_SCENE_ELMS_LAB, 8
	goto_if_ne _0A4F
	move_person_facing obj_T20R0101_doctor, 4, 0, 5, DIR_SOUTH
	move_person_facing obj_T20R0101_var_1, 7, 0, 12, DIR_EAST
	place_starter_balls_in_elms_lab
	end

	.byte 0x53, 0x01, 0x00, 0x00, 0x04, 0x00, 0x00
	.byte 0x00, 0x05, 0x00, 0x03, 0x00, 0x16, 0x00, 0xd4, 0xfb, 0xff, 0xff
_0E7B:
	compare VAR_TEMP_x4000, 5
	goto_if_ne _104F
	apply_movement obj_player, _14FA
	goto _0AA5

_0E96:
	npc_msg 17
	wait_button
	closemsg
	releaseall
	end

_0EA1:
	npc_msg 16
	wait_button
	closemsg
	releaseall
	end

_0EAC:
	call _0CA7
	gender_msgbox 86, 87
	closemsg
	apply_movement obj_T20R0101_doctor, _13BE
	wait_movement
	npc_msg 88
	closemsg
	apply_movement obj_T20R0101_doctor, _139E
	wait_movement
	npc_msg 89
	closemsg
	apply_movement obj_T20R0101_doctor, _13CA
	wait_movement
	npc_msg 90
	wait_button
	closemsg
	setvar VAR_UNK_412F, 2
	releaseall
	end

_0EF1:
	compare VAR_TEMP_x4005, 3
	goto_if_ne _10B6
	apply_movement obj_player, _150A
	wait_movement
	apply_movement obj_partner_poke, _151A
	goto _0F16

_0F16:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	return

_0F24:
	apply_movement obj_T20R0101_doctor, _152E
	wait_movement
	buffer_players_name 0
	gender_msgbox 81, 82
	wait_button
	closemsg
	setvar VAR_UNK_412F, 1
	addvar VAR_TEMP_x4006, 1
	releaseall
	end

_0F49:
	buffer_players_name 0
	gender_msgbox 81, 82
	wait_button
	closemsg
	setvar VAR_UNK_412F, 1
	addvar VAR_TEMP_x4006, 1
	releaseall
	end

_0F64:
	goto_if_unset FLAG_UNK_109, _10DB
	gender_msgbox 104, 105
	goto _1124

_0F79:
	gender_msgbox 47, 48
	goto _1124

_0F83:
	goto _1124

_0F89:
	compare VAR_SCENE_ELMS_LAB, 6
	goto_if_ne _1169
	buffer_players_name 0
	gender_msgbox 42, 43
	wait_button
	closemsg
	goto _07FA

_0FA7:
	compare VAR_SCENE_ELMS_LAB, 6
	goto_if_ne _1178
	npc_msg 55
	goto _081F

_0FBD:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _09BC
	apply_movement obj_T20R0101_assistantm, _153E
	wait_movement
	buffer_players_name 0
	gender_msgbox 19, 20
	goto_if_no_item_space ITEM_POTION, 5, _0E15
	setvar VAR_SPECIAL_x8004, 17
	setvar VAR_SPECIAL_x8005, 5
	callstd std_obtain_item_verbose
	closemsg
	setvar VAR_SCENE_ELMS_LAB, 2
	npc_msg 21
	closemsg
	compare VAR_TEMP_x4000, 3
	goto_if_ne _0E1F
	apply_movement obj_T20R0101_assistantm, _140E
	goto _0E3A

_1034:
	compare VAR_TEMP_x4000, 5
	goto_if_ne _1183
	apply_movement obj_T20R0101_assistantm, _154E
	goto _0E3A

_104F:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _0AA5
	apply_movement obj_player, _155A
	wait_movement
	buffer_players_name 0
	gender_msgbox 0, 1
	closemsg
	apply_movement obj_T20R0101_doctor, _11EE
	wait_movement
	wait 15, VAR_SPECIAL_x8004
	play_se SEQ_SE_GS_PHONE0
	apply_movement obj_T20R0101_doctor, _143A
	wait_movement
	npc_msg 2
	npc_msg 3
	closemsg
	apply_movement obj_T20R0101_doctor, _144A
	wait_movement
	npc_msg 4
	closemsg
	apply_movement obj_T20R0101_doctor, _11EE
	wait_movement
	setflag FLAG_ELMS_LAB_PREVENT_PLAYER_ESCAPE
	releaseall
	end

_10B6:
	compare VAR_TEMP_x4005, 2
	goto_if_ne _119E
	apply_movement obj_player, _156A
	wait_movement
	apply_movement obj_partner_poke, _157A
	goto _0F16

_10DB:
	gender_msgbox 47, 48
	goto_if_no_item_space ITEM_EVERSTONE, 1, _11C3
	callstd std_give_item_verbose
	setflag FLAG_UNK_072
	setflag FLAG_GOT_EVERSTONE_FROM_ELM
	setvar VAR_TEMP_x400F, 0
	npc_msg 49
	buffer_players_name 0
	gender_msgbox 50, 51
	wait_button
	closemsg
	releaseall
	end

_1124:
	goto_if_no_item_space ITEM_EVERSTONE, 1, _11C3
	callstd std_give_item_verbose
	setflag FLAG_UNK_072
	setflag FLAG_GOT_EVERSTONE_FROM_ELM
	setvar VAR_TEMP_x400F, 0
	npc_msg 49
	buffer_players_name 0
	gender_msgbox 50, 51
	wait_button
	closemsg
	releaseall
	end

_1169:
	buffer_players_name 0
	gender_msgbox 44, 45
	wait_button
	closemsg
	releaseall
	end

_1178:
	npc_msg 55
	wait_button
	closemsg
	releaseall
	end

_1183:
	compare VAR_TEMP_x4000, 6
	goto_if_ne _0E3A
	apply_movement obj_T20R0101_assistantm, _1582
	wait_movement
	releaseall
	end

_119E:
	compare VAR_SPECIAL_x8006, 4
	goto_if_ne _11CD
	apply_movement obj_player, _158E
	wait_movement
	apply_movement obj_partner_poke, _157A
	goto _0F16

_11C3:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_11CD:
	apply_movement obj_player, _15A2
	wait_movement
	apply_movement obj_partner_poke, _151A
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	return

	.byte 0x00
	.balign 4
_11EE:

	step 3, 1
	step_end
	.balign 4
_11F6:

	step 76, 8
	step 2, 1
	step_end
	.balign 4
_1202:

	step 35, 1
	step_end
	.balign 4
_120A:

	step 16, 6
	step 18, 1
	step 48, 2
	step_end
	.balign 4
_121A:

	step 63, 4
	step 33, 1
	step_end
	.balign 4
_1226:

	step 75, 1
	step 60, 1
	step 1, 1
	step 63, 2
	step 3, 1
	step 63, 2
	step 1, 1
	step 63, 2
	step 3, 1
	step 63, 2
	step_end
	.balign 4
_1252:

	step 2, 1
	step 71, 1
	step 15, 1
	step 72, 1
	step 66, 1
	step 1, 1
	step_end
	.balign 4
_126E:

	step 1, 1
	step 62, 1
	step 13, 6
	step 3, 1
	step 15, 1
	step 1, 1
	step 13, 2
	step_end
	.balign 4
_128E:

	step 14, 1
	step 12, 2
	step 35, 1
	step_end
	.balign 4
_129E:

	step 1, 1
	step 13, 6
	step 15, 1
	step 13, 2
	step_end
	.balign 4
_12B2:

	step 0, 1
	step_end
	.balign 4
_12BA:

	step 33, 1
	step_end
	.balign 4
_12C2:

	step 49, 1
	step 71, 1
	step 80, 1
	step 72, 1
	step_end
	.balign 4
_12D6:

	step 77, 1
	step_end
	.balign 4
_12DE:

	step 0, 1
	step 8, 1
	step 64, 1
	step 1, 1
	step_end
	.balign 4
_12F2:

	step 77, 1
	step_end
	.balign 4
_12FA:

	step 75, 1
	step 78, 6
	step 32, 1
	step_end
	.balign 4
_130A:

	step 12, 2
	step 15, 1
	step 12, 1
	step_end
	.balign 4
_131A:

	step 13, 2
	step 14, 4
	step 32, 1
	step_end
	.balign 4
_132A:

	step 33, 1
	step_end
	.balign 4
_1332:

	step 32, 1
	step_end
	.balign 4
_133A:

	step 65, 1
	step 33, 1
	step_end
	.balign 4
_1346:

	step 2, 1
	step 75, 1
	step_end
	.balign 4
_1352:

	step 78, 3
	step 33, 1
	step_end
	.balign 4
_135E:

	step 12, 7
	step_end
	.balign 4
_1366:

	step 12, 5
	step 15, 1
	step 12, 1
	step 34, 1
	step_end
	.balign 4
_137A:

	step 14, 5
	step 13, 1
	step_end
	.balign 4
_1386:

	step 12, 1
	step 15, 5
	step 33, 1
	step_end
	.balign 4
_1396:

	step 33, 1
	step_end
	.balign 4
_139E:

	step 13, 1
	step 15, 1
	step 33, 1
	step_end
	.balign 4
_13AE:

	step 49, 1
	step 65, 1
	step 48, 1
	step_end
	.balign 4
_13BE:

	step 75, 1
	step 63, 1
	step_end
	.balign 4
_13CA:

	step 12, 1
	step 14, 1
	step 33, 1
	step_end
	.balign 4
_13DA:

	step 12, 1
	step 63, 2
	step 71, 1
	step 11, 1
	step 32, 1
	step 10, 1
	step 72, 1
	step 63, 2
	step_end
	.balign 4
_13FE:

	step 75, 1
	step 78, 5
	step 32, 1
	step_end
	.balign 4
_140E:

	step 79, 6
	step 34, 1
	step_end
	.balign 4
_141A:

	step 1, 1
	step 75, 1
	step 33, 2
	step_end
	.balign 4
_142A:

	step 12, 1
	step_end
	.balign 4
_1432:

	step 12, 3
	step_end
	.balign 4
_143A:

	step 75, 1
	step 12, 1
	step 65, 1
	step_end
	.balign 4
_144A:

	step 13, 1
	step_end
	.balign 4
_1452:

	step 13, 1
	step 34, 1
	step_end
	.balign 4
_145E:

	step 63, 1
	step 35, 1
	step_end
	.balign 4
_146A:

	step 77, 3
	step 78, 1
	step 77, 4
	step_end
	.balign 4
_147A:

	step 32, 1
	step_end
	.balign 4
_1482:

	step 13, 1
	step 32, 1
	step_end
	.balign 4
_148E:

	step 15, 1
	step 13, 1
	step 32, 1
	step_end
	.balign 4
_149E:

	step 12, 1
	step 14, 2
	step 32, 1
	step 63, 2
	step 71, 1
	step 11, 1
	step 32, 1
	step 10, 1
	step 72, 1
	step 63, 2
	step_end
	.balign 4
_14CA:

	step 13, 1
	step_end
	.balign 4
_14D2:

	step 75, 1
	step 62, 1
	step_end
	.balign 4
_14DE:

	step 75, 1
	step 78, 4
	step 32, 1
	step_end
	.balign 4
_14EE:

	step 79, 5
	step 34, 1
	step_end
	.balign 4
_14FA:

	step 12, 2
	step 14, 1
	step 12, 1
	step_end
	.balign 4
_150A:

	step 13, 2
	step 15, 1
	step 32, 1
	step_end
	.balign 4
_151A:

	step 13, 1
	step 15, 2
	step 12, 1
	step 32, 1
	step_end
	.balign 4
_152E:

	step 13, 1
	step 15, 2
	step 33, 1
	step_end
	.balign 4
_153E:

	step 75, 1
	step 78, 3
	step 32, 1
	step_end
	.balign 4
_154E:

	step 79, 4
	step 34, 1
	step_end
	.balign 4
_155A:

	step 12, 2
	step 14, 2
	step 12, 1
	step_end
	.balign 4
_156A:

	step 13, 2
	step 14, 1
	step 32, 1
	step_end
	.balign 4
_157A:

	step 32, 1
	step_end
	.balign 4
_1582:

	step 79, 3
	step 34, 1
	step_end
	.balign 4
_158E:

	step 15, 1
	step 13, 3
	step 14, 1
	step 32, 1
	step_end
	.balign 4
_15A2:

	step 14, 1
	step 13, 3
	step 15, 1
	step 32, 1
	step_end
	.balign 4
