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

.include "data/scr_seq/include/event_R29.inc"


// text archive to grab from: 373.txt

.data


scrdef scr_seq_R29_000
scrdef scr_seq_R29_001
scrdef scr_seq_R29_002
scrdef scr_seq_R29_003
scrdef scr_seq_R29_004
scrdef scr_seq_R29_005
scrdef scr_seq_R29_006
scrdef scr_seq_R29_007
scrdef scr_seq_R29_008
scrdef scr_seq_R29_009
scrdef_end

scr_seq_R29_000:
	get_friend_sprite VAR_OBJ_1
	check_badge BADGE_ZEPHYR, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_eq _01A0
	setflag FLAG_UNK_207
	end

scr_seq_R29_001:
	scrcmd_609
	lockall
	play_cry SPECIES_MARILL, 0
	wait_cry
	apply_movement obj_R29_follower_mon_static_marill, _079C
	wait_movement
	apply_movement obj_R29_var_2, _07B0
	wait_movement
	callstd std_play_friend_music
	gender_msgbox 17, 18
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	release obj_R29_follower_mon_static_marill
	compare VAR_TEMP_x4001, 396
	goto_if_ne _01BB
	apply_movement obj_R29_var_2, _07BC
	apply_movement obj_R29_follower_mon_static_marill, _07D8
	goto _01DE

scr_seq_R29_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	scrcmd_379 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0239
	npc_msg 12
	goto _024F

scr_seq_R29_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_party_lead_alive VAR_SPECIAL_x8002
	mon_has_ribbon VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002, RIBBON_SHOCK
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0257
	goto_if_set FLAG_DAILY_GOT_SHOCK_RIBBON, _026B
	compare VAR_NUM_MET_WEEKDAY_SIBLINGS, 7
	goto_if_eq _027F
	goto_if_set FLAG_GOT_TWISTEDSPOON_FROM_TUSCANY, _02A2
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _02B6
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 7
	goto _0305

scr_seq_R29_004:
	direction_signpost 16, 1, 1, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R29_005:
	direction_signpost 15, 1, 2, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R29_006:
	simple_npc_msg 9
	end

scr_seq_R29_007:
	simple_npc_msg 11
	end

scr_seq_R29_008:
	simple_npc_msg 10
	end

scr_seq_R29_009:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 0
	callstd 2075
	releaseall
	end

_01A0:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_ne _030D
	clearflag FLAG_UNK_207
	goto _0313

_01BB:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _0315
	apply_movement obj_R29_var_2, _07F8
	apply_movement obj_R29_follower_mon_static_marill, _0808
	goto _01DE

_01DE:
	wait_movement
	lock obj_R29_follower_mon_static_marill
	buffer_players_name 0
	gender_msgbox 0, 1
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	get_player_gender VAR_TEMP_x4002
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4001, 396
	goto_if_ne _0338
	apply_movement obj_R29_var_2, _081C
	apply_movement obj_R29_follower_mon_static_marill, _0828
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0370
	apply_movement obj_player, _0838
	goto _037E

_0239:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _0384
	npc_msg 13
	goto _024F

_024F:
	wait_button
	closemsg
	releaseall
	end

_0257:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 33
	wait_button
	closemsg
	releaseall
	end

_026B:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 35
	wait_button
	closemsg
	releaseall
	end

_027F:
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 2
	goto_if_eq _039A
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 7
	goto _0305

_02A2:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 6
	wait_button
	closemsg
	releaseall
	end

_02B6:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 4
	goto_if_no_item_space ITEM_TWISTED_SPOON, 1, _03C9
	callstd std_give_item_verbose
	setflag FLAG_GOT_TWISTEDSPOON_FROM_TUSCANY
	addvar VAR_NUM_MET_WEEKDAY_SIBLINGS, 1
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button
	closemsg
	releaseall
	end

_0305:
	wait_button
	closemsg
	releaseall
	end

_030D:
	setflag FLAG_UNK_207
	end

_0313:
	end

_0315:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _03D3
	apply_movement obj_R29_var_2, _084C
	apply_movement obj_R29_follower_mon_static_marill, _085C
	goto _01DE

_0338:
	compare VAR_TEMP_x4001, 397
	goto_if_ne _03F6
	apply_movement obj_R29_var_2, _0870
	apply_movement obj_R29_follower_mon_static_marill, _087C
	compare VAR_TEMP_x4002, 0
	goto_if_ne _042E
	apply_movement obj_player, _088C
	goto _043C

_0370:
	apply_movement obj_player, _08A0
	goto _0442

_037E:
	goto _0442

_0384:
	compare VAR_SPECIAL_RESULT, 2
	goto_if_ne _04BD
	npc_msg 13
	goto _024F

_039A:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 32
	buffer_mon_species_name 0, VAR_SPECIAL_x8002
	msgbox_extern VAR_SPECIAL_RESULT, 34
	give_ribbon VAR_SPECIAL_x8002, RIBBON_SHOCK
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	setflag FLAG_DAILY_GOT_SHOCK_RIBBON
	wait_button
	closemsg
	releaseall
	end

_03C9:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_03D3:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _04C8
	apply_movement obj_R29_var_2, _08B4
	apply_movement obj_R29_follower_mon_static_marill, _08C4
	goto _01DE

_03F6:
	compare VAR_TEMP_x4001, 398
	goto_if_ne _04EB
	apply_movement obj_R29_var_2, _08D8
	apply_movement obj_R29_follower_mon_static_marill, _08E4
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0523
	apply_movement obj_player, _08F4
	goto _0531

_042E:
	apply_movement obj_player, _0908
	goto _0442

_043C:
	goto _0442

_0442:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_TEMP_x4002, 0
	call_if_eq _0537
	wait 10, VAR_SPECIAL_RESULT
	apply_movement obj_R29_var_2, _091C
	apply_movement obj_R29_follower_mon_static_marill, _0924
	wait_movement
	gender_msgbox 3, 4
	giveitem_no_check ITEM_POKE_BALL, 50
	gender_msgbox 7, 8
	closemsg
	apply_movement obj_R29_var_2, _0930
	apply_movement obj_R29_follower_mon_static_marill, _0944
	wait_movement
	hide_person obj_R29_var_2
	hide_person obj_R29_follower_mon_static_marill
	setflag FLAG_HIDE_ROUTE_29_FRIEND
	setflag FLAG_HIDE_ROUTE_29_MARILL
	setvar VAR_UNK_408B, 0
	setflag FLAG_UNK_09A
	releaseall
	end

_04BD:
	npc_msg 14
	wait_button
	closemsg
	releaseall
	end

_04C8:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _059A
	apply_movement obj_R29_var_2, _095C
	apply_movement obj_R29_follower_mon_static_marill, _0964
	goto _01DE

_04EB:
	compare VAR_TEMP_x4001, 399
	goto_if_ne _05BD
	apply_movement obj_R29_var_2, _0970
	apply_movement obj_R29_follower_mon_static_marill, _097C
	compare VAR_TEMP_x4002, 0
	goto_if_ne _05F5
	apply_movement obj_player, _098C
	goto _0603

_0523:
	apply_movement obj_player, _09A0
	goto _0442

_0531:
	goto _0442

_0537:
	apply_movement obj_R29_var_2, _09B4
	wait_movement
	apply_movement obj_R29_var_2, _09BC
	apply_movement obj_R29_follower_mon_static_marill, _09D8
	wait_movement
	apply_movement obj_R29_var_2, _09F4
	apply_movement obj_R29_follower_mon_static_marill, _09FC
	wait_movement
	npc_msg 2
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_R29_var_2, _0A04
	apply_movement obj_R29_follower_mon_static_marill, _0A0C
	apply_movement obj_player, _0A18
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	return

_059A:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _0609
	apply_movement obj_R29_var_2, _0A24
	apply_movement obj_R29_follower_mon_static_marill, _0A34
	goto _01DE

_05BD:
	compare VAR_TEMP_x4001, 400
	goto_if_ne _0681
	apply_movement obj_R29_var_2, _0A48
	apply_movement obj_R29_follower_mon_static_marill, _0A54
	compare VAR_TEMP_x4002, 0
	goto_if_ne _06B9
	apply_movement obj_player, _0A64
	goto _06C7

_05F5:
	apply_movement obj_player, _0A78
	goto _0442

_0603:
	goto _0442

_0609:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _01DE
	apply_movement obj_R29_var_2, _0A8C
	apply_movement obj_R29_follower_mon_static_marill, _0A9C
	wait_movement
	lock obj_R29_follower_mon_static_marill
	buffer_players_name 0
	gender_msgbox 0, 1
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	get_player_gender VAR_TEMP_x4002
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	compare VAR_TEMP_x4001, 396
	goto_if_ne _0338
	apply_movement obj_R29_var_2, _081C
	apply_movement obj_R29_follower_mon_static_marill, _0828
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0370
	apply_movement obj_player, _0838
	goto _037E

_0681:
	compare VAR_TEMP_x4001, 401
	goto_if_ne _06CD
	apply_movement obj_R29_var_2, _0AB0
	apply_movement obj_R29_follower_mon_static_marill, _0ABC
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0705
	apply_movement obj_player, _0ACC
	goto _0713

_06B9:
	apply_movement obj_player, _0AE0
	goto _0442

_06C7:
	goto _0442

_06CD:
	compare VAR_TEMP_x4001, 402
	goto_if_ne _0442
	apply_movement obj_R29_var_2, _0AF4
	apply_movement obj_R29_follower_mon_static_marill, _0AFC
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0719
	apply_movement obj_player, _0B08
	goto _0442

_0705:
	apply_movement obj_player, _0B14
	goto _0442

_0713:
	goto _0442

_0719:
	apply_movement obj_player, _0B28
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	compare VAR_TEMP_x4002, 0
	call_if_eq _0537
	wait 10, VAR_SPECIAL_RESULT
	apply_movement obj_R29_var_2, _091C
	apply_movement obj_R29_follower_mon_static_marill, _0924
	wait_movement
	gender_msgbox 3, 4
	giveitem_no_check ITEM_POKE_BALL, 50
	gender_msgbox 7, 8
	closemsg
	apply_movement obj_R29_var_2, _0930
	apply_movement obj_R29_follower_mon_static_marill, _0944
	wait_movement
	hide_person obj_R29_var_2
	hide_person obj_R29_follower_mon_static_marill
	setflag FLAG_HIDE_ROUTE_29_FRIEND
	setflag FLAG_HIDE_ROUTE_29_MARILL
	setvar VAR_UNK_408B, 0
	setflag FLAG_UNK_09A
	releaseall
	end

	.balign 4
_079C:

	step 17, 1
	step 19, 2
	step 16, 1
	step 50, 2
	step_end
	.balign 4
_07B0:

	step 35, 1
	step 75, 1
	step_end
	.balign 4
_07BC:

	step 16, 4
	step 19, 2
	step 17, 2
	step 18, 2
	step 16, 2
	step 19, 4
	step_end
	.balign 4
_07D8:

	step 18, 1
	step 16, 4
	step 19, 2
	step 17, 2
	step 18, 2
	step 16, 2
	step 19, 3
	step_end
	.balign 4
_07F8:

	step 15, 2
	step 12, 3
	step 15, 2
	step_end
	.balign 4
_0808:

	step 14, 1
	step 15, 2
	step 12, 3
	step 15, 1
	step_end
	.balign 4
_081C:

	step 13, 6
	step 14, 9
	step_end
	.balign 4
_0828:

	step 15, 1
	step 13, 6
	step 14, 8
	step_end
	.balign 4
_0838:

	step 63, 1
	step 14, 1
	step 13, 6
	step 14, 5
	step_end
	.balign 4
_084C:

	step 15, 2
	step 12, 2
	step 15, 2
	step_end
	.balign 4
_085C:

	step 14, 1
	step 15, 2
	step 12, 2
	step 15, 1
	step_end
	.balign 4
_0870:

	step 13, 5
	step 14, 9
	step_end
	.balign 4
_087C:

	step 15, 1
	step 13, 5
	step 14, 8
	step_end
	.balign 4
_088C:

	step 63, 1
	step 14, 1
	step 13, 5
	step 14, 5
	step_end
	.balign 4
_08A0:

	step 63, 1
	step 14, 1
	step 13, 6
	step 14, 7
	step_end
	.balign 4
_08B4:

	step 15, 2
	step 12, 1
	step 15, 2
	step_end
	.balign 4
_08C4:

	step 14, 1
	step 15, 2
	step 12, 1
	step 15, 1
	step_end
	.balign 4
_08D8:

	step 13, 4
	step 14, 9
	step_end
	.balign 4
_08E4:

	step 15, 1
	step 13, 4
	step 14, 8
	step_end
	.balign 4
_08F4:

	step 63, 1
	step 14, 1
	step 13, 4
	step 14, 5
	step_end
	.balign 4
_0908:

	step 63, 1
	step 14, 1
	step 13, 5
	step 14, 7
	step_end
	.balign 4
_091C:

	step 15, 1
	step_end
	.balign 4
_0924:

	step 14, 1
	step 35, 1
	step_end
	.balign 4
_0930:

	step 13, 2
	step 14, 4
	step 13, 4
	step 14, 3
	step_end
	.balign 4
_0944:

	step 15, 1
	step 13, 2
	step 14, 4
	step 13, 4
	step 14, 2
	step_end
	.balign 4
_095C:

	step 15, 4
	step_end
	.balign 4
_0964:

	step 14, 1
	step 15, 3
	step_end
	.balign 4
_0970:

	step 13, 3
	step 14, 9
	step_end
	.balign 4
_097C:

	step 15, 1
	step 13, 3
	step 14, 8
	step_end
	.balign 4
_098C:

	step 63, 1
	step 14, 1
	step 13, 3
	step 14, 5
	step_end
	.balign 4
_09A0:

	step 63, 1
	step 14, 1
	step 13, 4
	step 14, 7
	step_end
	.balign 4
_09B4:

	step 75, 1
	step_end
	.balign 4
_09BC:

	step 50, 3
	step 65, 1
	step 50, 3
	step 63, 3
	step 50, 3
	step 63, 3
	step_end
	.balign 4
_09D8:

	step 63, 3
	step 58, 1
	step 63, 3
	step 50, 3
	step 63, 3
	step 50, 3
	step_end
	.balign 4
_09F4:

	step 15, 3
	step_end
	.balign 4
_09FC:

	step 15, 3
	step_end
	.balign 4
_0A04:

	step 14, 3
	step_end
	.balign 4
_0A0C:

	step 15, 1
	step 14, 2
	step_end
	.balign 4
_0A18:

	step 63, 1
	step 14, 2
	step_end
	.balign 4
_0A24:

	step 15, 2
	step 13, 1
	step 15, 2
	step_end
	.balign 4
_0A34:

	step 14, 1
	step 15, 2
	step 13, 1
	step 15, 1
	step_end
	.balign 4
_0A48:

	step 13, 2
	step 14, 9
	step_end
	.balign 4
_0A54:

	step 15, 1
	step 13, 2
	step 14, 8
	step_end
	.balign 4
_0A64:

	step 63, 1
	step 14, 1
	step 13, 2
	step 14, 5
	step_end
	.balign 4
_0A78:

	step 63, 1
	step 14, 1
	step 13, 3
	step 14, 7
	step_end
	.balign 4
_0A8C:

	step 15, 2
	step 13, 2
	step 15, 2
	step_end
	.balign 4
_0A9C:

	step 14, 1
	step 15, 2
	step 13, 2
	step 15, 1
	step_end
	.balign 4
_0AB0:

	step 13, 1
	step 14, 9
	step_end
	.balign 4
_0ABC:

	step 15, 1
	step 13, 1
	step 14, 8
	step_end
	.balign 4
_0ACC:

	step 63, 1
	step 14, 1
	step 13, 1
	step 14, 5
	step_end
	.balign 4
_0AE0:

	step 63, 1
	step 14, 1
	step 13, 2
	step 14, 7
	step_end
	.balign 4
_0AF4:

	step 14, 9
	step_end
	.balign 4
_0AFC:

	step 15, 1
	step 14, 8
	step_end
	.balign 4
_0B08:

	step 63, 1
	step 14, 6
	step_end
	.balign 4
_0B14:

	step 63, 1
	step 14, 1
	step 13, 1
	step 14, 7
	step_end
	.balign 4
_0B28:

	step 63, 1
	step 14, 8
	step_end
	.balign 4
