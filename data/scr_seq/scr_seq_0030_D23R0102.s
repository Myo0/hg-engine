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

.include "data/scr_seq/include/event_D23R0102.inc"


// text archive to grab from: 066.txt

.data


scrdef scr_seq_D23R0102_000
scrdef scr_seq_D23R0102_001
scrdef scr_seq_D23R0102_002
scrdef scr_seq_D23R0102_003
scrdef scr_seq_D23R0102_004
scrdef scr_seq_D23R0102_005
scrdef scr_seq_D23R0102_006
scrdef scr_seq_D23R0102_007
scrdef scr_seq_D23R0102_008
scrdef scr_seq_D23R0102_009
scrdef scr_seq_D23R0102_010
scrdef scr_seq_D23R0102_011
scrdef scr_seq_D23R0102_012
scrdef scr_seq_D23R0102_013
scrdef_end

scr_seq_D23R0102_000:
	simple_npc_msg 6
	end

scr_seq_D23R0102_001:
	simple_npc_msg 7
	end

scr_seq_D23R0102_002:
	simple_npc_msg 8
	end

scr_seq_D23R0102_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	play_cry SPECIES_JIGGLYPUFF, 0
	npc_msg 3
	wait_cry
	wait_button
	closemsg
	releaseall
	end

scr_seq_D23R0102_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _021E
	npc_msg 2
	goto _0229

scr_seq_D23R0102_005:
	simple_npc_msg 0
	end

scr_seq_D23R0102_006:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 5
	goto_if_ne _0231
	npc_msg 5
	goto _023C

scr_seq_D23R0102_007:
	setflag FLAG_HIDE_ROCKET_TAKEOVER_1
	setflag FLAG_HIDE_ROCKET_TAKEOVER_2
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _0244
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_1
	goto _025B

scr_seq_D23R0102_008:
	compare VAR_SCENE_ROCKET_TAKEOVER, 5
	goto_if_ne _025D
	move_person_facing obj_D23R0102_policeman, 2, 1, 7, DIR_EAST
	end

scr_seq_D23R0102_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_ne _025F
	npc_msg 9
	goto _0265

scr_seq_D23R0102_010:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_SCENE_ROCKET_TAKEOVER, 4
	goto_if_eq _026D
	hasitem ITEM_BLUE_CARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0290
	npc_msg 33
	wait_button
	closemsg
	releaseall
	end

scr_seq_D23R0102_011:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_UNK_404C, 1
	goto_if_eq _02A0
	npc_msg 70
	closemsg
	releaseall
	end

scr_seq_D23R0102_012:
	lockall
	apply_movement obj_D23R0102_rocketm_4, _0B40
	wait_movement
	apply_movement obj_player, _0B4C
	wait_movement
	npc_msg 71
	closemsg
	play_se SEQ_SE_DP_PC_LOGOFF
	wait_se SEQ_SE_DP_PC_LOGOFF
	setflag FLAG_UNK_18D
	move_person_facing obj_D23R0102_rocketm_3, 3, 0, 5, DIR_EAST
	npc_msg 72
	closemsg
	setvar VAR_UNK_404C, 1
	releaseall
	end

scr_seq_D23R0102_013:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_A0F, _02A9
	npc_msg 73
	closemsg
	trainer_battle TRAINER_TEAM_ROCKET_GRUNT_4, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02B4
	setflag FLAG_UNK_A0F
	apply_movement obj_D23R0102_rocketm_3, _0B58
	wait_movement
	apply_movement obj_player, _0B64
	wait_movement
	clearflag FLAG_UNK_18D
	npc_msg 75
	closemsg
	end

_021E:
	npc_msg 1
	wait_button
	closemsg
	releaseall
	end

_0229:
	wait_button
	closemsg
	releaseall
	end

_0231:
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

_023C:
	wait_button
	closemsg
	releaseall
	end

_0244:
	compare VAR_SCENE_ROCKET_TAKEOVER, 2
	goto_if_ge _02B8
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_2
	goto _025B

_025B:
	end

_025D:
	end

_025F:
	goto _02BE

_0265:
	wait_button
	closemsg
	releaseall
	end

_026D:
	npc_msg 39
	wait_button
	closemsg
	setvar VAR_SPECIAL_x8004, 23
	setvar VAR_SPECIAL_x8005, 300
	giveitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	callstd std_give_item_verbose
	releaseall
	end

_0290:
	buffer_int 0, VAR_BLUE_CARD_POINTS
	npc_msg 34
	wait_button
	closemsg
	releaseall
	end

_02A0:
	npc_msg 71
	closemsg
	releaseall
	end

_02A9:
	npc_msg 74
	wait_button
	closemsg
	releaseall
	end

_02B4:
	white_out
	end

_02B8:
	clearflag FLAG_HIDE_ROCKET_TAKEOVER_2
	end

_02BE:
	hasitem ITEM_BLUE_CARD, 1, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0309
	npc_msg 10
	closemsg
	goto_if_no_item_space ITEM_BLUE_CARD, 1, _0323
	callstd std_give_item_verbose
	closemsg
	addvar VAR_NUM_TIMES_GIVEN_BLUE_CARD, 1
	releaseall
	end

_0309:
	compare VAR_NUM_TIMES_GIVEN_BLUE_CARD, 2
	goto_if_lt _032F
	buffer_players_name 0
	gender_msgbox 12, 13
	goto _034A

_0323:
	callstd std_bag_is_full
	closemsg
	goto _0362

_032F:
	npc_msg 11
	closemsg
	goto_if_set FLAG_DAILY_HEARD_BUENAS_PASSWORD, _03AB
	npc_msg 28
	wait_button
	closemsg
	releaseall
	end

_034A:
	closemsg
	goto_if_set FLAG_DAILY_HEARD_BUENAS_PASSWORD, _03AB
	npc_msg 28
	wait_button
	closemsg
	releaseall
	end

_0362:
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_lt _03E8
	npc_msg 36
	closemsg
	play_fanfare SEQ_ME_KEYITEM
	npc_msg 37
	wait_fanfare
	closemsg
	compare VAR_NUM_TIMES_GIVEN_BLUE_CARD, 255
	goto_if_ge _03FB
	addvar VAR_NUM_TIMES_GIVEN_BLUE_CARD, 1
	setvar VAR_BLUE_CARD_POINTS, 0
	npc_msg 38
	closemsg
	apply_movement obj_D23R0102_gswoman2_2, _0B6C
	wait_movement
	releaseall
	end

_03AB:
	goto_if_set FLAG_DAILY_BUENAS_PASSWORD, _0414
	npc_msg 14
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _041F
	buffer_players_name 0
	compare VAR_NUM_TIMES_GIVEN_BLUE_CARD, 2
	goto_if_lt _042A
	gender_msgbox 17, 18
	goto _047C

_03E8:
	npc_msg 38
	closemsg
	apply_movement obj_D23R0102_gswoman2_2, _0B6C
	wait_movement
	releaseall
	end

_03FB:
	setvar VAR_BLUE_CARD_POINTS, 0
	npc_msg 38
	closemsg
	apply_movement obj_D23R0102_gswoman2_2, _0B6C
	wait_movement
	releaseall
	end

_0414:
	npc_msg 29
	wait_button
	closemsg
	releaseall
	end

_041F:
	npc_msg 19
	wait_button
	closemsg
	releaseall
	end

_042A:
	gender_msgbox 15, 16
	closemsg
	apply_movement obj_D23R0102_gswoman1, _0B7C
	wait_movement
	gender_msgbox 20, 21
	closemsg
	get_player_facing VAR_TEMP_x4000
	scrcmd_729 VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_eq _04CA
	release obj_partner_poke
	compare VAR_TEMP_x4000, 2
	goto_if_ne _04E5
	apply_movement obj_player, _0B84
	apply_movement obj_partner_poke, _0B98
	goto _0501

_047C:
	closemsg
	apply_movement obj_D23R0102_gswoman1, _0B7C
	wait_movement
	gender_msgbox 20, 21
	closemsg
	get_player_facing VAR_TEMP_x4000
	scrcmd_729 VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_eq _04CA
	release obj_partner_poke
	compare VAR_TEMP_x4000, 2
	goto_if_ne _04E5
	apply_movement obj_player, _0B84
	apply_movement obj_partner_poke, _0B98
	goto _0501

_04CA:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _050D
	apply_movement obj_player, _0B84
	goto _0652

_04E5:
	apply_movement obj_player, _0BA8
	apply_movement obj_partner_poke, _0BB8
	wait_movement
	lock obj_partner_poke
	goto _078F

_0501:
	wait_movement
	lock obj_partner_poke
	goto _078F

_050D:
	apply_movement obj_player, _0BA8
	wait_movement
	get_buenas_password VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	touchscreen_menu_hide
	menu_init 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add VAR_SPECIAL_x8000, 255, 0
	addvar VAR_SPECIAL_x8000, 1
	menu_item_add VAR_SPECIAL_x8000, 255, 1
	addvar VAR_SPECIAL_x8000, 1
	menu_item_add VAR_SPECIAL_x8000, 255, 2
	menu_exec
	touchscreen_menu_show
	setflag FLAG_UNK_102
	setflag FLAG_DAILY_BUENAS_PASSWORD
	apply_movement obj_D23R0102_gswoman1, _0BC4
	wait_movement
	compare VAR_SPECIAL_RESULT, VAR_SPECIAL_x8001
	goto_if_ne _08CA
	npc_msg 22
	apply_movement obj_D23R0102_gswoman1, _0BCC
	wait_movement
	apply_movement obj_player, _0BD4
	wait_movement
	play_se SEQ_SE_GS_OKOZUKAI
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_ge _08D5
	addvar VAR_BLUE_CARD_POINTS, 1
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_lt _098B
	compare VAR_NUM_TIMES_GIVEN_BLUE_CARD, 2
	goto_if_ge _098B
	apply_movement obj_D23R0102_gswoman1, _0BC4
	wait_movement
	gender_msgbox 24, 25
	closemsg
	register_gear_number PHONE_CONTACT_BUENA
	npc_msg 26
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	closemsg
	apply_movement obj_D23R0102_gswoman1, _0BC4
	wait_movement
	npc_msg 27
	closemsg
	compare VAR_BLUE_CARD_POINTS, 1
	goto_if_eq _09F9
	compare VAR_BLUE_CARD_POINTS, 3
	goto_if_eq _0A0B
	compare VAR_BLUE_CARD_POINTS, 5
	goto_if_eq _0A1D
	compare VAR_BLUE_CARD_POINTS, 10
	goto_if_eq _0A2F
	compare VAR_BLUE_CARD_POINTS, 15
	goto_if_eq _0A41
	compare VAR_BLUE_CARD_POINTS, 20
	goto_if_eq _0A53
	compare VAR_BLUE_CARD_POINTS, 25
	goto_if_eq _0A65
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_eq _0A77
	goto _0A89

_0652:
	wait_movement
	get_buenas_password VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	touchscreen_menu_hide
	menu_init 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add VAR_SPECIAL_x8000, 255, 0
	addvar VAR_SPECIAL_x8000, 1
	menu_item_add VAR_SPECIAL_x8000, 255, 1
	addvar VAR_SPECIAL_x8000, 1
	menu_item_add VAR_SPECIAL_x8000, 255, 2
	menu_exec
	touchscreen_menu_show
	setflag FLAG_UNK_102
	setflag FLAG_DAILY_BUENAS_PASSWORD
	apply_movement obj_D23R0102_gswoman1, _0BC4
	wait_movement
	compare VAR_SPECIAL_RESULT, VAR_SPECIAL_x8001
	goto_if_ne _08CA
	npc_msg 22
	apply_movement obj_D23R0102_gswoman1, _0BCC
	wait_movement
	apply_movement obj_player, _0BD4
	wait_movement
	play_se SEQ_SE_GS_OKOZUKAI
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_ge _08D5
	addvar VAR_BLUE_CARD_POINTS, 1
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_lt _098B
	compare VAR_NUM_TIMES_GIVEN_BLUE_CARD, 2
	goto_if_ge _098B
	apply_movement obj_D23R0102_gswoman1, _0BC4
	wait_movement
	gender_msgbox 24, 25
	closemsg
	register_gear_number PHONE_CONTACT_BUENA
	npc_msg 26
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	closemsg
	apply_movement obj_D23R0102_gswoman1, _0BC4
	wait_movement
	npc_msg 27
	closemsg
	compare VAR_BLUE_CARD_POINTS, 1
	goto_if_eq _09F9
	compare VAR_BLUE_CARD_POINTS, 3
	goto_if_eq _0A0B
	compare VAR_BLUE_CARD_POINTS, 5
	goto_if_eq _0A1D
	compare VAR_BLUE_CARD_POINTS, 10
	goto_if_eq _0A2F
	compare VAR_BLUE_CARD_POINTS, 15
	goto_if_eq _0A41
	compare VAR_BLUE_CARD_POINTS, 20
	goto_if_eq _0A53
	compare VAR_BLUE_CARD_POINTS, 25
	goto_if_eq _0A65
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_eq _0A77
	goto _0A89

_078F:
	get_buenas_password VAR_SPECIAL_x8000, VAR_SPECIAL_x8001
	touchscreen_menu_hide
	menu_init 1, 1, 0, 0, VAR_SPECIAL_RESULT
	menu_item_add VAR_SPECIAL_x8000, 255, 0
	addvar VAR_SPECIAL_x8000, 1
	menu_item_add VAR_SPECIAL_x8000, 255, 1
	addvar VAR_SPECIAL_x8000, 1
	menu_item_add VAR_SPECIAL_x8000, 255, 2
	menu_exec
	touchscreen_menu_show
	setflag FLAG_UNK_102
	setflag FLAG_DAILY_BUENAS_PASSWORD
	apply_movement obj_D23R0102_gswoman1, _0BC4
	wait_movement
	compare VAR_SPECIAL_RESULT, VAR_SPECIAL_x8001
	goto_if_ne _08CA
	npc_msg 22
	apply_movement obj_D23R0102_gswoman1, _0BCC
	wait_movement
	apply_movement obj_player, _0BD4
	wait_movement
	play_se SEQ_SE_GS_OKOZUKAI
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_ge _08D5
	addvar VAR_BLUE_CARD_POINTS, 1
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_lt _098B
	compare VAR_NUM_TIMES_GIVEN_BLUE_CARD, 2
	goto_if_ge _098B
	apply_movement obj_D23R0102_gswoman1, _0BC4
	wait_movement
	gender_msgbox 24, 25
	closemsg
	register_gear_number PHONE_CONTACT_BUENA
	npc_msg 26
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	closemsg
	apply_movement obj_D23R0102_gswoman1, _0BC4
	wait_movement
	npc_msg 27
	closemsg
	compare VAR_BLUE_CARD_POINTS, 1
	goto_if_eq _09F9
	compare VAR_BLUE_CARD_POINTS, 3
	goto_if_eq _0A0B
	compare VAR_BLUE_CARD_POINTS, 5
	goto_if_eq _0A1D
	compare VAR_BLUE_CARD_POINTS, 10
	goto_if_eq _0A2F
	compare VAR_BLUE_CARD_POINTS, 15
	goto_if_eq _0A41
	compare VAR_BLUE_CARD_POINTS, 20
	goto_if_eq _0A53
	compare VAR_BLUE_CARD_POINTS, 25
	goto_if_eq _0A65
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_eq _0A77
	goto _0A89

_08CA:
	npc_msg 23
	wait_button
	closemsg
	releaseall
	end

_08D5:
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_lt _098B
	compare VAR_NUM_TIMES_GIVEN_BLUE_CARD, 2
	goto_if_ge _098B
	apply_movement obj_D23R0102_gswoman1, _0BC4
	wait_movement
	gender_msgbox 24, 25
	closemsg
	register_gear_number PHONE_CONTACT_BUENA
	npc_msg 26
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	closemsg
	apply_movement obj_D23R0102_gswoman1, _0BC4
	wait_movement
	npc_msg 27
	closemsg
	compare VAR_BLUE_CARD_POINTS, 1
	goto_if_eq _09F9
	compare VAR_BLUE_CARD_POINTS, 3
	goto_if_eq _0A0B
	compare VAR_BLUE_CARD_POINTS, 5
	goto_if_eq _0A1D
	compare VAR_BLUE_CARD_POINTS, 10
	goto_if_eq _0A2F
	compare VAR_BLUE_CARD_POINTS, 15
	goto_if_eq _0A41
	compare VAR_BLUE_CARD_POINTS, 20
	goto_if_eq _0A53
	compare VAR_BLUE_CARD_POINTS, 25
	goto_if_eq _0A65
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_eq _0A77
	goto _0A89

_098B:
	compare VAR_BLUE_CARD_POINTS, 1
	goto_if_eq _09F9
	compare VAR_BLUE_CARD_POINTS, 3
	goto_if_eq _0A0B
	compare VAR_BLUE_CARD_POINTS, 5
	goto_if_eq _0A1D
	compare VAR_BLUE_CARD_POINTS, 10
	goto_if_eq _0A2F
	compare VAR_BLUE_CARD_POINTS, 15
	goto_if_eq _0A41
	compare VAR_BLUE_CARD_POINTS, 20
	goto_if_eq _0A53
	compare VAR_BLUE_CARD_POINTS, 25
	goto_if_eq _0A65
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_eq _0A77
	goto _0A89

_09F9:
	setvar VAR_SPECIAL_x8004, 4
	setvar VAR_SPECIAL_x8005, 1
	goto _0A9C

_0A0B:
	setvar VAR_SPECIAL_x8004, 23
	setvar VAR_SPECIAL_x8005, 1
	goto _0A9C

_0A1D:
	setvar VAR_SPECIAL_x8004, 46
	setvar VAR_SPECIAL_x8005, 1
	goto _0A9C

_0A2F:
	setvar VAR_SPECIAL_x8004, 47
	setvar VAR_SPECIAL_x8005, 1
	goto _0A9C

_0A41:
	setvar VAR_SPECIAL_x8004, 48
	setvar VAR_SPECIAL_x8005, 1
	goto _0A9C

_0A53:
	setvar VAR_SPECIAL_x8004, 92
	setvar VAR_SPECIAL_x8005, 1
	goto _0A9C

_0A65:
	setvar VAR_SPECIAL_x8004, 50
	setvar VAR_SPECIAL_x8005, 1
	goto _0A9C

_0A77:
	setvar VAR_SPECIAL_x8004, 45
	setvar VAR_SPECIAL_x8005, 1
	goto _0A9C

_0A89:
	npc_msg 32
	closemsg
	apply_movement obj_D23R0102_gswoman1, _0BDC
	wait_movement
	releaseall
	end

_0A9C:
	npc_msg 32
	closemsg
	apply_movement obj_D23R0102_gswoman1, _0BDC
	wait_movement
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	apply_movement obj_D23R0102_gswoman2_2, _0BEC
	apply_movement obj_player, _0BF8
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	buffer_int 0, VAR_BLUE_CARD_POINTS
	buffer_item_name 1, VAR_SPECIAL_x8004
	npc_msg 35
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0323
	callstd std_give_item_verbose
	compare VAR_BLUE_CARD_POINTS, 30
	goto_if_lt _03E8
	npc_msg 36
	closemsg
	play_fanfare SEQ_ME_KEYITEM
	npc_msg 37
	wait_fanfare
	closemsg
	compare VAR_NUM_TIMES_GIVEN_BLUE_CARD, 255
	goto_if_ge _03FB
	addvar VAR_NUM_TIMES_GIVEN_BLUE_CARD, 1
	setvar VAR_BLUE_CARD_POINTS, 0
	npc_msg 38
	closemsg
	apply_movement obj_D23R0102_gswoman2_2, _0B6C
	wait_movement
	releaseall
	end

	.balign 4
_0B40:

	step 20, 3
	step 2, 1
	step_end
	.balign 4
_0B4C:

	step 75, 1
	step 3, 1
	step_end
	.balign 4
_0B58:

	step 21, 2
	step 0, 1
	step_end
	.balign 4
_0B64:

	step 75, 1
	step_end
	.balign 4
_0B6C:

	step 14, 3
	step 12, 2
	step 33, 1
	step_end
	.balign 4
_0B7C:

	step 34, 1
	step_end
	.balign 4
_0B84:

	step 1, 1
	step 13, 2
	step 14, 1
	step 34, 1
	step_end
	.balign 4
_0B98:

	step 13, 2
	step 14, 1
	step 32, 1
	step_end
	.balign 4
_0BA8:

	step 1, 1
	step 13, 1
	step 34, 1
	step_end
	.balign 4
_0BB8:

	step 13, 1
	step 32, 1
	step_end
	.balign 4
_0BC4:

	step 33, 1
	step_end
	.balign 4
_0BCC:

	step 13, 1
	step_end
	.balign 4
_0BD4:

	step 32, 1
	step_end
	.balign 4
_0BDC:

	step 0, 1
	step 12, 1
	step 34, 1
	step_end
	.balign 4
_0BEC:

	step 13, 2
	step 15, 3
	step_end
	.balign 4
_0BF8:

	step 13, 1
	step 14, 2
	step_end
	.balign 4
