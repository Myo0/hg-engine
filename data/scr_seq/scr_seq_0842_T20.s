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

.include "data/scr_seq/include/event_T20.inc"


// text archive to grab from: 542.txt

.data


scrdef scr_seq_T20_000
scrdef scr_seq_T20_001
scrdef scr_seq_T20_002
scrdef scr_seq_T20_003
scrdef scr_seq_T20_004
scrdef scr_seq_T20_005
scrdef scr_seq_T20_006
scrdef scr_seq_T20_007
scrdef scr_seq_T20_008
scrdef scr_seq_T20_009
scrdef scr_seq_T20_010
scrdef scr_seq_T20_011
scrdef scr_seq_T20_012
scrdef scr_seq_T20_013
scrdef scr_seq_T20_014
scrdef scr_seq_T20_015
scrdef scr_seq_T20_016
scrdef scr_seq_T20_017
scrdef scr_seq_T20_018
scrdef_end

scr_seq_T20_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	npc_msg 13
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _04FA
	apply_movement obj_T20_gsrivel, _1304
	goto _0515

scr_seq_T20_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_NEW_BARK_TOWN_OW, 0
	goto_if_ne _053A
	npc_msg 9
	goto _0550

scr_seq_T20_002:
	scrcmd_609
	lockall
	goto_if_set FLAG_GOT_POKEGEAR, _0558
	apply_movement obj_T20_gswoman1, _130C
	wait_movement
	buffer_players_name 0
	gender_msgbox 1, 2
	wait 20, VAR_SPECIAL_RESULT
	closemsg
	apply_movement obj_player, _131C
	wait_movement
	compare VAR_SCENE_NEW_BARK_TOWN_OW, 2
	goto_if_eq _05C4
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 396
	goto_if_ne _05ED
	apply_movement obj_T20_gswoman1, _1324
	goto _0608

scr_seq_T20_003:
	scrcmd_609
	lockall
	release obj_T20_follower_mon_static_marill
	apply_movement obj_T20_follower_mon_static_marill, _1334
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	clearflag FLAG_HIDE_NEW_BARK_FRIEND
	show_person obj_T20_var_1
	wait_se SEQ_SE_DP_KAIDAN2
	callstd std_play_friend_music
	apply_movement obj_T20_var_1, _1364
	wait_movement
	apply_movement obj_T20_follower_mon_static_marill, _1378
	wait_movement
	apply_movement obj_player, _13A0
	apply_movement obj_T20_var_1, _13A8
	wait_movement
	apply_movement obj_T20_follower_mon_static_marill, _13B0
	wait_movement
	apply_movement obj_T20_var_1, _13B8
	apply_movement obj_T20_follower_mon_static_marill, _13CC
	wait_movement
	callstd std_fade_end_friend_music
	setvar VAR_SCENE_PLAYERS_HOUSE_1F, 2
	hide_person obj_T20_follower_mon_static_marill
	hide_person obj_T20_var_1
	setflag FLAG_HIDE_NEW_BARK_MARILL
	setflag FLAG_HIDE_NEW_BARK_FRIEND
	releaseall
	end

scr_seq_T20_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	gender_msgbox 25, 26
	wait_button
	closemsg
	releaseall
	end

scr_seq_T20_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_MARILL, 0
	npc_msg 33
	wait_cry
	closemsg
	apply_movement obj_T20_follower_mon_static_marill_2, _13E8
	wait_movement
	apply_movement obj_T20_var_1_2, _13F4
	wait_movement
	gender_msgbox 31, 32
	wait_button
	closemsg
	releaseall
	end

scr_seq_T20_006:
	get_friend_sprite VAR_OBJ_0
	goto_if_unset FLAG_UNK_189, _0632
	clearflag FLAG_UNK_189
	end

scr_seq_T20_007:
	buffer_players_name 0
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 35, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T20_008:
	scrcmd_609
	lockall
	callstd std_play_friend_music
	apply_movement obj_T20_var_1, _13FC
	apply_movement obj_T20_follower_mon_static_marill, _1434
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _1460
	apply_movement obj_T20_var_1, _146C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	buffer_party_mon_species_name_indef 1, 0
	gender_msgbox 15, 16
	closemsg
	apply_movement obj_T20_var_1, _1478
	apply_movement obj_T20_follower_mon_static_marill, _148C
	apply_movement obj_player, _14B0
	wait_movement
	apply_movement obj_T20_var_1, _14BC
	apply_movement obj_T20_follower_mon_static_marill, _14C4
	wait_movement
	hide_person obj_T20_follower_mon_static_marill
	hide_person obj_T20_var_1
	setflag FLAG_HIDE_NEW_BARK_MARILL
	setflag FLAG_HIDE_NEW_BARK_FRIEND
	callstd std_fade_end_friend_music
	setvar VAR_SCENE_NEW_BARK_TOWN_OW, 2
	releaseall
	end

scr_seq_T20_009:
	compare VAR_SCENE_NEW_BARK_TOWN_OW, 1
	goto_if_eq _0662
	end

scr_seq_T20_010:
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _068C
	scrcmd_596 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _068C
	scrcmd_600
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T20R0102, 0, 12, 6, DIR_WEST
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	wait_se SEQ_SE_DP_KAIDAN2
	scrcmd_582 MAP_T20, 688, 393
	setvar VAR_UNK_407C, 1
	end

scr_seq_T20_011:
	scrcmd_609
	lockall
	compare VAR_TEMP_x4007, 2
	goto_if_eq _06C8
	scrcmd_307 21, 12, 23, 12, 77
	scrcmd_310 77
	scrcmd_308 77
	play_se SEQ_SE_DP_KAIDAN2
	clearflag FLAG_HIDE_NEW_BARK_MOM
	show_person obj_T20_gsmama
	wait_se SEQ_SE_DP_KAIDAN2
	apply_movement obj_T20_gsmama, _14CC
	wait_movement
	compare VAR_TEMP_x4007, 0
	goto_if_ne _06EF
	buffer_players_name 0
	npc_msg 21
	closemsg
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _072B
	apply_movement obj_T20_gsmama, _14D4
	apply_movement obj_player, _14E0
	goto _074E

scr_seq_T20_012:
	scrcmd_609
	lockall
	apply_movement obj_T20_var_1_2, _14EC
	wait_movement
	buffer_players_name 0
	gender_msgbox 27, 28
	closemsg
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _0770
	apply_movement obj_T20_var_1_2, _14F8
	goto _078B

scr_seq_T20_013:
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 36, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T20_014:
	direction_signpost 34, 0, 11, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T20_015:
	buffer_players_name 0
	simple_npc_msg 12
	end

scr_seq_T20_016:
	buffer_friends_name 0
	scrcmd_055 2, 0
	scrcmd_057 3
	scrcmd_058
	trainer_tips 35, VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_T20_017:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _07C3
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _07D7
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _07EB
	apply_movement obj_player, _1500
	apply_movement obj_T20_gsmiddleman1, _1518
	goto _0806

scr_seq_T20_018:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	giveitem_no_check ITEM_MASTER_BALL, 150
	giveitem_no_check ITEM_FULL_RESTORE, 999
	giveitem_no_check ITEM_SACRED_ASH, 999
	giveitem_no_check ITEM_MAX_ELIXIR, 999
	give_mon SPECIES_RAYQUAZA, 100, 188, 0, 0, VAR_SPECIAL_RESULT
	npc_msg 39
	closemsg
	releaseall
	end

_04FA:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0867
	apply_movement obj_T20_gsrivel, _1524
	goto _0515

_0515:
	wait_movement
	npc_msg 14
	closemsg
	goto_if_unset FLAG_GOT_STARTER, _08A1
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _08B4
	goto _08C7

_053A:
	compare VAR_SCENE_NEW_BARK_TOWN_OW, 1
	goto_if_ne _08EF
	npc_msg 5
	goto _0550

_0550:
	wait_button
	closemsg
	releaseall
	end

_0558:
	scrcmd_307 21, 12, 12, 9, 77
	scrcmd_310 77
	scrcmd_308 77
	show_person obj_T20_doctor
	move_person_facing obj_T20_doctor, 684, 0, 393, DIR_SOUTH
	apply_movement obj_T20_doctor, _152C
	wait_movement
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	npc_msg 17
	closemsg
	apply_movement obj_player, _1534
	wait_movement
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 396
	goto_if_ne _0905
	apply_movement obj_T20_doctor, _1540
	apply_movement obj_player, _1550
	goto _0928

_05C4:
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 396
	goto_if_ne _0988
	apply_movement obj_player, _1560
	apply_movement obj_T20_gswoman1, _156C
	goto _09AB

_05ED:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _09DF
	apply_movement obj_T20_gswoman1, _1578
	goto _0608

_0608:
	wait_movement
	npc_msg 3
	closemsg
	compare VAR_TEMP_x4001, 396
	goto_if_ne _09FA
	apply_movement obj_T20_gswoman1, _1588
	apply_movement obj_player, _159C
	goto _0A1D

_0632:
	setvar VAR_TEMP_x4007, 0
	check_badge BADGE_PLAIN, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_eq _0A2A
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_eq _0A30
	setflag FLAG_HIDE_CAMERON
	end

_0662:
	clearflag FLAG_HIDE_NEW_BARK_FRIEND
	show_person obj_T20_var_1
	clearflag FLAG_HIDE_NEW_BARK_MARILL
	show_person obj_T20_follower_mon_static_marill
	move_person_facing obj_T20_var_1, 686, 0, 396, DIR_WEST
	move_person_facing obj_T20_follower_mon_static_marill, 685, 0, 396, DIR_SOUTH
	end

_068C:
	play_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T20R0102, 0, 12, 6, DIR_WEST
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	wait_se SEQ_SE_DP_KAIDAN2
	scrcmd_582 MAP_T20, 688, 393
	setvar VAR_UNK_407C, 1
	end

_06C8:
	npc_msg 24
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_player, _15AC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	releaseall
	end

_06EF:
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	get_player_coords VAR_SPECIAL_x8004, VAR_SPECIAL_x8005
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _072B
	apply_movement obj_T20_gsmama, _14D4
	apply_movement obj_player, _14E0
	goto _074E

_072B:
	compare VAR_SPECIAL_x8005, 399
	goto_if_ne _0A36
	apply_movement obj_T20_gsmama, _15B4
	apply_movement obj_player, _15C0
	goto _074E

_074E:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_TEMP_x4007, 0
	goto_if_ne _0A59
	npc_msg 22
	goto _0A7B

_0770:
	compare VAR_SPECIAL_x8005, 399
	goto_if_ne _0A9A
	apply_movement obj_T20_var_1_2, _15CC
	goto _078B

_078B:
	apply_movement obj_player, _15D4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	gender_msgbox 29, 30
	closemsg
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _0AB5
	apply_movement obj_T20_var_1_2, _15DC
	goto _0AD0

_07C3:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button
	closemsg
	releaseall
	end

_07D7:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button
	closemsg
	releaseall
	end

_07EB:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0AD6
	apply_movement obj_player, _15E4
	goto _0806

_0806:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0AF9
	apply_movement obj_partner_poke, _15F0
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 0
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

_0867:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0515
	apply_movement obj_T20_gsrivel, _1600
	wait_movement
	npc_msg 14
	closemsg
	goto_if_unset FLAG_GOT_STARTER, _08A1
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _08B4
	goto _08C7

_08A1:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0B33
	goto _0B46

_08B4:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _08A1
	goto _0B66

_08C7:
	apply_movement obj_T20_gsrivel, _1608
	apply_movement obj_partner_poke, _1620
	apply_movement obj_player, _1630
	wait_movement
	apply_movement obj_T20_gsrivel, _1658
	wait_movement
	releaseall
	end

_08EF:
	compare VAR_SCENE_NEW_BARK_TOWN_OW, 2
	goto_if_ne _0B8E
	npc_msg 5
	goto _0550

_0905:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0BA4
	apply_movement obj_T20_doctor, _166C
	apply_movement obj_player, _167C
	goto _0928

_0928:
	setflag FLAG_UNK_83E
	wait_movement
	npc_msg 18
	register_gear_number PHONE_CONTACT_PROF__ELM
	buffer_players_name 0
	npc_msg 19
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	npc_msg 20
	closemsg
	giveitem_no_check ITEM_POKEMON_BOX_LINK, 1
	setflag FLAG_UNK_18E
	npc_msg 38
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 396
	goto_if_ne _0BC7
	apply_movement obj_player, _131C
	apply_movement obj_T20_doctor, _168C
	goto _0BEA

_0988:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0C29
	apply_movement obj_player, _1560
	apply_movement obj_T20_gswoman1, _1698
	goto _09AB

_09AB:
	wait_movement
	npc_msg 10
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4001, 396
	goto_if_ne _0C4C
	apply_movement obj_T20_gswoman1, _16A4
	apply_movement obj_player, _16B4
	goto _0C6F

_09DF:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _0C86
	apply_movement obj_T20_gswoman1, _16C0
	goto _0608

_09FA:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0CA1
	apply_movement obj_T20_gswoman1, _16D0
	apply_movement obj_player, _16E4
	goto _0A1D

_0A1D:
	wait_movement
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

_0A2A:
	setflag FLAG_HIDE_CAMERON
	end

_0A30:
	clearflag FLAG_HIDE_CAMERON
	end

_0A36:
	compare VAR_SPECIAL_x8005, 400
	goto_if_ne _0CC4
	apply_movement obj_T20_gsmama, _16F4
	apply_movement obj_player, _1700
	goto _074E

_0A59:
	npc_msg 23
	closemsg
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _0CE7
	apply_movement obj_T20_gsmama, _170C
	wait_movement
	goto _0D04

_0A7B:
	closemsg
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _0CE7
	apply_movement obj_T20_gsmama, _170C
	wait_movement
	goto _0D04

_0A9A:
	compare VAR_SPECIAL_x8005, 399
	goto_if_ne _0D42
	apply_movement obj_T20_var_1_2, _1714
	goto _078B

_0AB5:
	compare VAR_SPECIAL_x8005, 399
	goto_if_ne _0D5D
	apply_movement obj_T20_var_1_2, _171C
	goto _0AD0

_0AD0:
	wait_movement
	releaseall
	end

_0AD6:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0D78
	apply_movement obj_player, _1724
	apply_movement obj_T20_gsmiddleman1, _1518
	goto _0806

_0AF9:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 0
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

_0B33:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _0B66
	goto _0DE9

_0B46:
	apply_movement obj_T20_gsrivel, _1608
	apply_movement obj_player, _1630
	wait_movement
	apply_movement obj_T20_gsrivel, _1658
	wait_movement
	releaseall
	end

_0B66:
	apply_movement obj_T20_gsrivel, _1738
	apply_movement obj_partner_poke, _1748
	apply_movement obj_player, _1758
	wait_movement
	apply_movement obj_T20_gsrivel, _1658
	wait_movement
	releaseall
	end

_0B8E:
	compare VAR_SCENE_NEW_BARK_WEST_EXIT, 1
	goto_if_ne _0E09
	npc_msg 0
	goto _0550

_0BA4:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _0E18
	apply_movement obj_T20_doctor, _1770
	apply_movement obj_player, _167C
	goto _0928

_0BC7:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0E3B
	apply_movement obj_player, _131C
	apply_movement obj_T20_doctor, _1780
	goto _0BEA

_0BEA:
	wait_movement
	scrcmd_307 21, 12, 12, 9, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_T20_doctor, _178C
	wait_movement
	hide_person obj_T20_doctor
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	setvar VAR_SCENE_NEW_BARK_WEST_EXIT, 1
	setvar VAR_UNK_416F, 13
	npc_msg 39
	closemsg
	releaseall
	end

_0C29:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _0E5E
	apply_movement obj_player, _1560
	apply_movement obj_T20_gswoman1, _1794
	goto _09AB

_0C4C:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0E81
	apply_movement obj_T20_gswoman1, _17A0
	apply_movement obj_player, _17B0
	goto _0C6F

_0C6F:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 11
	wait_button
	closemsg
	releaseall
	end

_0C86:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _0EA4
	apply_movement obj_T20_gswoman1, _17BC
	goto _0608

_0CA1:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _0EBF
	apply_movement obj_T20_gswoman1, _17C4
	apply_movement obj_player, _17D8
	goto _0A1D

_0CC4:
	compare VAR_SPECIAL_x8005, 401
	goto_if_ne _0EE2
	apply_movement obj_T20_gsmama, _16F4
	apply_movement obj_player, _17E8
	goto _074E

_0CE7:
	compare VAR_SPECIAL_x8005, 399
	goto_if_ne _0F14
	apply_movement obj_T20_gsmama, _17F8
	wait_movement
	goto _0D04

_0D04:
	scrcmd_307 21, 12, 23, 12, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_T20_gsmama, _1800
	wait_movement
	setflag FLAG_HIDE_NEW_BARK_MOM
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T20_gsmama
	wait_se SEQ_SE_DP_KAIDAN2
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	addvar VAR_TEMP_x4007, 1
	releaseall
	end

_0D42:
	compare VAR_SPECIAL_x8005, 399
	goto_if_ne _0F5C
	apply_movement obj_T20_var_1_2, _1808
	goto _078B

_0D5D:
	compare VAR_SPECIAL_x8005, 399
	goto_if_ne _0F9C
	apply_movement obj_T20_var_1_2, _1810
	goto _0AD0

_0D78:
	apply_movement obj_player, _1818
	apply_movement obj_T20_gsmiddleman1, _1518
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0AF9
	apply_movement obj_partner_poke, _15F0
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 0
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

_0DE9:
	apply_movement obj_T20_gsrivel, _1738
	apply_movement obj_player, _1758
	wait_movement
	apply_movement obj_T20_gsrivel, _1658
	wait_movement
	releaseall
	end

_0E09:
	buffer_players_name 0
	gender_msgbox 6, 7
	wait_button
	closemsg
	releaseall
	end

_0E18:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _0FB7
	apply_movement obj_T20_doctor, _182C
	apply_movement obj_player, _167C
	goto _0928

_0E3B:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _0FDA
	apply_movement obj_player, _183C
	apply_movement obj_T20_doctor, _1844
	goto _0BEA

_0E5E:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _0FF5
	apply_movement obj_player, _1854
	apply_movement obj_T20_gswoman1, _1860
	goto _09AB

_0E81:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _1018
	apply_movement obj_T20_gswoman1, _1874
	apply_movement obj_player, _1880
	goto _0C6F

_0EA4:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _103B
	apply_movement obj_T20_gswoman1, _188C
	goto _0608

_0EBF:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _1056
	apply_movement obj_T20_gswoman1, _189C
	apply_movement obj_player, _18A8
	goto _0A1D

_0EE2:
	apply_movement obj_T20_gsmama, _16F4
	apply_movement obj_player, _18B0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_TEMP_x4007, 0
	goto_if_ne _0A59
	npc_msg 22
	goto _0A7B

_0F14:
	apply_movement obj_T20_gsmama, _18C0
	wait_movement
	scrcmd_307 21, 12, 23, 12, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_T20_gsmama, _1800
	wait_movement
	setflag FLAG_HIDE_NEW_BARK_MOM
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T20_gsmama
	wait_se SEQ_SE_DP_KAIDAN2
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	addvar VAR_TEMP_x4007, 1
	releaseall
	end

_0F5C:
	apply_movement obj_T20_var_1_2, _18C8
	apply_movement obj_player, _15D4
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_players_name 0
	gender_msgbox 29, 30
	closemsg
	compare VAR_SPECIAL_x8005, 398
	goto_if_ne _0AB5
	apply_movement obj_T20_var_1_2, _15DC
	goto _0AD0

_0F9C:
	compare VAR_SPECIAL_x8005, 399
	goto_if_ne _1079
	apply_movement obj_T20_var_1_2, _18D0
	goto _0AD0

_0FB7:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _1087
	apply_movement obj_T20_doctor, _18D8
	apply_movement obj_player, _167C
	goto _0928

_0FDA:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _10AA
	apply_movement obj_T20_doctor, _18E8
	goto _0BEA

_0FF5:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _10C5
	apply_movement obj_player, _1854
	apply_movement obj_T20_gswoman1, _18F8
	goto _09AB

_1018:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _10E8
	apply_movement obj_T20_gswoman1, _1904
	apply_movement obj_player, _1918
	goto _0C6F

_103B:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _110B
	apply_movement obj_T20_gswoman1, _192C
	goto _0608

_1056:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _114A
	apply_movement obj_T20_gswoman1, _193C
	apply_movement obj_player, _1950
	goto _0A1D

_1079:
	apply_movement obj_T20_var_1_2, _1960
	wait_movement
	releaseall
	end

_1087:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _116D
	apply_movement obj_T20_doctor, _1968
	apply_movement obj_player, _183C
	goto _0928

_10AA:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _11CD
	apply_movement obj_T20_doctor, _1978
	goto _0BEA

_10C5:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _11E8
	apply_movement obj_player, _1854
	apply_movement obj_T20_gswoman1, _1988
	goto _09AB

_10E8:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _1239
	apply_movement obj_T20_gswoman1, _1994
	apply_movement obj_player, _19A0
	goto _0C6F

_110B:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _0608
	apply_movement obj_T20_gswoman1, _19AC
	wait_movement
	npc_msg 3
	closemsg
	compare VAR_TEMP_x4001, 396
	goto_if_ne _09FA
	apply_movement obj_T20_gswoman1, _1588
	apply_movement obj_player, _159C
	goto _0A1D

_114A:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _125C
	apply_movement obj_T20_gswoman1, _19BC
	apply_movement obj_player, _19CC
	goto _0A1D

_116D:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _0928
	apply_movement obj_T20_doctor, _19DC
	apply_movement obj_player, _183C
	wait_movement
	npc_msg 18
	register_gear_number PHONE_CONTACT_PROF__ELM
	buffer_players_name 0
	npc_msg 19
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	npc_msg 20
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 396
	goto_if_ne _0BC7
	apply_movement obj_player, _131C
	apply_movement obj_T20_doctor, _168C
	goto _0BEA

_11CD:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _1286
	apply_movement obj_T20_doctor, _19EC
	goto _0BEA

_11E8:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _09AB
	apply_movement obj_player, _1854
	apply_movement obj_T20_gswoman1, _19FC
	wait_movement
	npc_msg 10
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4001, 396
	goto_if_ne _0C4C
	apply_movement obj_T20_gswoman1, _16A4
	apply_movement obj_player, _16B4
	goto _0C6F

_1239:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _12CF
	apply_movement obj_T20_gswoman1, _1A08
	apply_movement obj_player, _1A18
	goto _0C6F

_125C:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _0A1D
	apply_movement obj_T20_gswoman1, _1A24
	apply_movement obj_player, _1A34
	wait_movement
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

_1286:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _0BEA
	apply_movement obj_T20_doctor, _1A44
	wait_movement
	scrcmd_307 21, 12, 12, 9, 77
	scrcmd_310 77
	scrcmd_308 77
	apply_movement obj_T20_doctor, _178C
	wait_movement
	hide_person obj_T20_doctor
	scrcmd_311 77
	scrcmd_308 77
	scrcmd_309 77
	setvar VAR_SCENE_NEW_BARK_WEST_EXIT, 1
	releaseall
	end

_12CF:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _0C6F
	apply_movement obj_T20_gswoman1, _1A54
	apply_movement obj_player, _1A64
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	npc_msg 11
	wait_button
	closemsg
	releaseall
	end

	.byte 0x00
	.balign 4
_1304:

	step 33, 1
	step_end
	.balign 4
_130C:

	step 34, 1
	step 75, 1
	step 63, 1
	step_end
	.balign 4
_131C:

	step 3, 1
	step_end
	.balign 4
_1324:

	step 14, 3
	step 12, 3
	step 14, 3
	step_end
	.balign 4
_1334:

	step 66, 1
	step 16, 8
	step 71, 1
	step 53, 1
	step 72, 1
	step 3, 5
	step 0, 5
	step 2, 5
	step 0, 5
	step 12, 1
	step 66, 1
	step_end
	.balign 4
_1364:

	step 65, 1
	step 13, 6
	step 3, 1
	step 75, 1
	step_end
	.balign 4
_1378:

	step 2, 1
	step 75, 1
	step 36, 4
	step 1, 2
	step 3, 2
	step 0, 2
	step 2, 2
	step 38, 4
	step 18, 6
	step_end
	.balign 4
_13A0:

	step 2, 4
	step_end
	.balign 4
_13A8:

	step 39, 4
	step_end
	.balign 4
_13B0:

	step 50, 4
	step_end
	.balign 4
_13B8:

	step 1, 1
	step 13, 4
	step 2, 1
	step 14, 2
	step_end
	.balign 4
_13CC:

	step 2, 1
	step 14, 1
	step 1, 1
	step 13, 4
	step 2, 1
	step 14, 2
	step_end
	.balign 4
_13E8:

	step 47, 1
	step 47, 1
	step_end
	.balign 4
_13F4:

	step 34, 1
	step_end
	.balign 4
_13FC:

	step 62, 4
	step 62, 2
	step 37, 1
	step 62, 2
	step 39, 1
	step 62, 1
	step 36, 1
	step 62, 1
	step 37, 1
	step 62, 1
	step 36, 1
	step 62, 1
	step 75, 1
	step_end
	.balign 4
_1434:

	step 51, 3
	step 17, 1
	step 19, 2
	step 16, 2
	step 18, 2
	step 17, 2
	step 16, 2
	step 19, 2
	step 17, 1
	step 34, 1
	step_end
	.balign 4
_1460:

	step 13, 2
	step 15, 1
	step_end
	.balign 4
_146C:

	step 63, 1
	step 34, 1
	step_end
	.balign 4
_1478:

	step 13, 1
	step 14, 2
	step 13, 5
	step 32, 1
	step_end
	.balign 4
_148C:

	step 14, 1
	step 13, 1
	step 14, 2
	step 32, 1
	step 63, 3
	step 33, 1
	step 17, 4
	step 49, 2
	step_end
	.balign 4
_14B0:

	step 63, 2
	step 33, 1
	step_end
	.balign 4
_14BC:

	step 13, 3
	step_end
	.balign 4
_14C4:

	step 13, 4
	step_end
	.balign 4
_14CC:

	step 13, 1
	step_end
	.balign 4
_14D4:

	step 13, 1
	step 35, 1
	step_end
	.balign 4
_14E0:

	step 34, 1
	step 14, 4
	step_end
	.balign 4
_14EC:

	step 3, 1
	step 75, 1
	step_end
	.balign 4
_14F8:

	step 35, 1
	step_end
	.balign 4
_1500:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_1518:

	step 63, 1
	step 32, 1
	step_end
	.balign 4
_1524:

	step 32, 1
	step_end
	.balign 4
_152C:

	step 13, 1
	step_end
	.balign 4
_1534:

	step 75, 1
	step 63, 1
	step_end
	.balign 4
_1540:

	step 13, 3
	step 14, 8
	step 32, 1
	step_end
	.balign 4
_1550:

	step 3, 1
	step 66, 2
	step 1, 1
	step_end
	.balign 4
_1560:

	step 66, 2
	step 33, 1
	step_end
	.balign 4
_156C:

	step 14, 7
	step 12, 2
	step_end
	.balign 4
_1578:

	step 14, 3
	step 12, 2
	step 14, 3
	step_end
	.balign 4
_1588:

	step 15, 3
	step 13, 3
	step 15, 3
	step 34, 1
	step_end
	.balign 4
_159C:

	step 15, 4
	step 13, 3
	step 15, 2
	step_end
	.balign 4
_15AC:

	step 14, 1
	step_end
	.balign 4
_15B4:

	step 13, 2
	step 35, 1
	step_end
	.balign 4
_15C0:

	step 34, 1
	step 14, 4
	step_end
	.balign 4
_15CC:

	step 35, 1
	step_end
	.balign 4
_15D4:

	step 14, 2
	step_end
	.balign 4
_15DC:

	step 34, 1
	step_end
	.balign 4
_15E4:

	step 12, 3
	step 33, 1
	step_end
	.balign 4
_15F0:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.balign 4
_1600:

	step 34, 1
	step_end
	.balign 4
_1608:

	step 76, 1
	step 2, 1
	step 78, 1
	step 1, 1
	step 77, 3
	step_end
	.balign 4
_1620:

	step 71, 1
	step 77, 6
	step 72, 1
	step_end
	.balign 4
_1630:

	step 3, 1
	step 71, 1
	step 78, 1
	step 72, 1
	step 0, 1
	step 71, 1
	step 77, 3
	step 57, 1
	step 72, 1
	step_end
	.balign 4
_1658:

	step 0, 1
	step 12, 2
	step 3, 1
	step 15, 1
	step_end
	.balign 4
_166C:

	step 13, 2
	step 14, 8
	step 33, 1
	step_end
	.balign 4
_167C:

	step 3, 1
	step 66, 2
	step 0, 1
	step_end
	.balign 4
_168C:

	step 15, 8
	step 12, 3
	step_end
	.balign 4
_1698:

	step 14, 7
	step 12, 1
	step_end
	.balign 4
_16A4:

	step 13, 2
	step 15, 7
	step 34, 1
	step_end
	.balign 4
_16B4:

	step 13, 3
	step 15, 6
	step_end
	.balign 4
_16C0:

	step 14, 3
	step 12, 1
	step 14, 3
	step_end
	.balign 4
_16D0:

	step 15, 3
	step 13, 2
	step 15, 3
	step 34, 1
	step_end
	.balign 4
_16E4:

	step 15, 4
	step 13, 2
	step 15, 2
	step_end
	.balign 4
_16F4:

	step 13, 3
	step 35, 1
	step_end
	.balign 4
_1700:

	step 34, 1
	step 14, 4
	step_end
	.balign 4
_170C:

	step 12, 1
	step_end
	.balign 4
_1714:

	step 15, 1
	step_end
	.balign 4
_171C:

	step 34, 1
	step_end
	.balign 4
_1724:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_1738:

	step 78, 1
	step 1, 1
	step 77, 2
	step_end
	.balign 4
_1748:

	step 71, 1
	step 77, 4
	step 72, 1
	step_end
	.balign 4
_1758:

	step 0, 1
	step 71, 1
	step 77, 2
	step 57, 1
	step 72, 1
	step_end
	.balign 4
_1770:

	step 13, 2
	step 14, 8
	step 13, 1
	step_end
	.balign 4
_1780:

	step 15, 8
	step 12, 2
	step_end
	.balign 4
_178C:

	step 12, 1
	step_end
	.balign 4
_1794:

	step 14, 7
	step 32, 1
	step_end
	.balign 4
_17A0:

	step 13, 1
	step 15, 7
	step 34, 1
	step_end
	.balign 4
_17B0:

	step 13, 2
	step 15, 6
	step_end
	.balign 4
_17BC:

	step 14, 6
	step_end
	.balign 4
_17C4:

	step 15, 3
	step 13, 1
	step 15, 3
	step 34, 1
	step_end
	.balign 4
_17D8:

	step 15, 4
	step 13, 1
	step 15, 2
	step_end
	.balign 4
_17E8:

	step 14, 2
	step 12, 1
	step 14, 2
	step_end
	.balign 4
_17F8:

	step 12, 2
	step_end
	.balign 4
_1800:

	step 12, 1
	step_end
	.balign 4
_1808:

	step 35, 1
	step_end
	.balign 4
_1810:

	step 34, 1
	step_end
	.balign 4
_1818:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_182C:

	step 13, 2
	step 14, 8
	step 13, 2
	step_end
	.balign 4
_183C:

	step 0, 1
	step_end
	.balign 4
_1844:

	step 12, 1
	step 15, 8
	step 12, 2
	step_end
	.balign 4
_1854:

	step 66, 2
	step 32, 1
	step_end
	.balign 4
_1860:

	step 14, 3
	step 12, 1
	step 14, 4
	step 33, 1
	step_end
	.balign 4
_1874:

	step 15, 7
	step 34, 1
	step_end
	.balign 4
_1880:

	step 13, 1
	step 15, 6
	step_end
	.balign 4
_188C:

	step 14, 3
	step 13, 1
	step 14, 3
	step_end
	.balign 4
_189C:

	step 15, 6
	step 34, 1
	step_end
	.balign 4
_18A8:

	step 15, 6
	step_end
	.balign 4
_18B0:

	step 14, 2
	step 12, 2
	step 14, 2
	step_end
	.balign 4
_18C0:

	step 12, 3
	step_end
	.balign 4
_18C8:

	step 35, 1
	step_end
	.balign 4
_18D0:

	step 34, 1
	step_end
	.balign 4
_18D8:

	step 13, 2
	step 14, 8
	step 13, 3
	step_end
	.balign 4
_18E8:

	step 12, 2
	step 15, 8
	step 12, 2
	step_end
	.balign 4
_18F8:

	step 14, 7
	step 33, 1
	step_end
	.balign 4
_1904:

	step 15, 3
	step 13, 1
	step 15, 4
	step 34, 1
	step_end
	.balign 4
_1918:

	step 12, 1
	step 15, 3
	step 13, 1
	step 15, 3
	step_end
	.balign 4
_192C:

	step 14, 6
	step 13, 2
	step 2, 1
	step_end
	.balign 4
_193C:

	step 15, 3
	step 12, 1
	step 15, 3
	step 34, 1
	step_end
	.balign 4
_1950:

	step 15, 4
	step 12, 1
	step 15, 2
	step_end
	.balign 4
_1960:

	step 34, 1
	step_end
	.balign 4
_1968:

	step 13, 2
	step 14, 8
	step 13, 4
	step_end
	.balign 4
_1978:

	step 12, 2
	step 15, 8
	step 12, 3
	step_end
	.balign 4
_1988:

	step 14, 7
	step 13, 1
	step_end
	.balign 4
_1994:

	step 15, 7
	step 34, 1
	step_end
	.balign 4
_19A0:

	step 12, 1
	step 15, 6
	step_end
	.balign 4
_19AC:

	step 14, 6
	step 13, 3
	step 2, 1
	step_end
	.balign 4
_19BC:

	step 12, 2
	step 15, 6
	step 34, 1
	step_end
	.balign 4
_19CC:

	step 15, 1
	step 12, 2
	step 15, 5
	step_end
	.balign 4
_19DC:

	step 13, 2
	step 14, 8
	step 13, 5
	step_end
	.balign 4
_19EC:

	step 12, 2
	step 15, 8
	step 12, 4
	step_end
	.balign 4
_19FC:

	step 14, 7
	step 13, 2
	step_end
	.balign 4
_1A08:

	step 12, 1
	step 15, 7
	step 34, 1
	step_end
	.balign 4
_1A18:

	step 12, 2
	step 15, 6
	step_end
	.balign 4
_1A24:

	step 12, 3
	step 15, 6
	step 34, 1
	step_end
	.balign 4
_1A34:

	step 15, 1
	step 12, 3
	step 15, 5
	step_end
	.balign 4
_1A44:

	step 12, 5
	step 15, 8
	step 12, 2
	step_end
	.balign 4
_1A54:

	step 12, 2
	step 15, 7
	step 34, 1
	step_end
	.balign 4
_1A64:

	step 12, 3
	step 15, 6
	step_end
	.balign 4
