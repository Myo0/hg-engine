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

.include "data/scr_seq/include/event_R32.inc"


// text archive to grab from: 380.txt

.data


scrdef scr_seq_R32_000
scrdef scr_seq_R32_001
scrdef scr_seq_R32_002
scrdef scr_seq_R32_003
scrdef scr_seq_R32_004
scrdef scr_seq_R32_005
scrdef scr_seq_R32_006
scrdef scr_seq_R32_007
scrdef scr_seq_R32_008
scrdef scr_seq_R32_009
scrdef scr_seq_R32_010
scrdef scr_seq_R32_011
scrdef_end

scr_seq_R32_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_GOT_TM05_FROM_ROUTE_32_MAN, _02D0
	npc_msg 10
	goto_if_no_item_space ITEM_TM005, 1, _02DB
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM05_FROM_ROUTE_32_MAN
	npc_msg 12
	wait_button
	closemsg
	releaseall
	end

scr_seq_R32_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02E5
	goto_if_unset FLAG_UNK_070, _02EE
	goto_if_unset FLAG_UNK_074, _02FA
	npc_msg 7
	wait_button
	closemsg
	releaseall
	end

scr_seq_R32_002:
	scrcmd_609
	lockall
	apply_movement obj_R32_gsmiddleman1, _083C
	wait_movement
	npc_msg 0
	closemsg
	goto_if_set FLAG_UNK_070, _030A
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 475
	goto_if_ne _0343
	apply_movement obj_R32_gsmiddleman1, _0848
	apply_movement obj_player, _0854
	goto _037B

scr_seq_R32_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	npc_msg 14
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _03A3
	npc_msg 15
	goto _03AE

scr_seq_R32_004:
	goto_if_unset FLAG_UNK_189, _03B6
	clearflag FLAG_UNK_189
	end

scr_seq_R32_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_party_lead_alive VAR_SPECIAL_x8002
	mon_has_ribbon VAR_SPECIAL_RESULT, VAR_SPECIAL_x8002, RIBBON_RELAX
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _03FE
	goto_if_set FLAG_DAILY_GOT_SHOCK_RIBBON, _0412
	compare VAR_NUM_MET_WEEKDAY_SIBLINGS, 7
	goto_if_eq _0426
	goto_if_set FLAG_GOT_POISON_BARB_FROM_FRIEDA, _0449
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _045D
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 19
	goto _04AC

scr_seq_R32_006:
	direction_signpost 18, 1, 2, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R32_007:
	direction_signpost 17, 1, 4, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R32_008:
	direction_signpost 19, 1, 13, VAR_SPECIAL_RESULT
	scrcmd_057 3
	scrcmd_058
	scrcmd_060 VAR_SPECIAL_RESULT
	callstd std_signpost
	end

scr_seq_R32_009:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04B4
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _04C8
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 1
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 55
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _04DC
	apply_movement obj_player, _0864
	apply_movement obj_R32_gsmiddleman1_2, _087C
	goto _04F7

scr_seq_R32_010:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 7
	setvar VAR_SPECIAL_x8008, 4
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R32_4068
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_R32_011:
	lockall
	faceplayer
	setvar VAR_SPECIAL_x8009, 3
	setvar VAR_SPECIAL_x8008, 5
	callstd 2075
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	hide_person obj_R32_4064
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_02D0:
	npc_msg 12
	wait_button
	closemsg
	releaseall
	end

_02DB:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_02E5:
	npc_msg 3
	goto _0558

_02EE:
	buffer_players_name 0
	npc_msg 1
	goto _0558

_02FA:
	setvar VAR_TEMP_x4002, 0
	call _0560
	releaseall
	end

_030A:
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 475
	goto_if_ne _05AF
	apply_movement obj_R32_gsmiddleman1, _0888
	apply_movement obj_player, _0890
	setvar VAR_TEMP_x4002, 1
	goto _05F2

_0343:
	apply_movement obj_R32_gsmiddleman1, _089C
	apply_movement obj_player, _08AC
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	check_badge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _061F
	npc_msg 4
	goto _0648

_037B:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	check_badge BADGE_ZEPHYR, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _061F
	npc_msg 4
	goto _0648

_03A3:
	npc_msg 16
	wait_button
	closemsg
	releaseall
	end

_03AE:
	wait_button
	closemsg
	releaseall
	end

_03B6:
	check_badge BADGE_PLAIN, VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 0
	goto_if_eq _066B
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 2
	goto_if_eq _0675
	compare VAR_TEMP_x4000, 4
	goto_if_eq _0675
	compare VAR_TEMP_x4000, 6
	goto_if_eq _0675
	setflag FLAG_HIDE_CAMERON
	goto _067F

_03FE:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 45
	wait_button
	closemsg
	releaseall
	end

_0412:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 47
	wait_button
	closemsg
	releaseall
	end

_0426:
	get_weekday VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 5
	goto_if_eq _069A
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 19
	goto _04AC

_0449:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 18
	wait_button
	closemsg
	releaseall
	end

_045D:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 16
	goto_if_no_item_space ITEM_POISON_BARB, 1, _06C9
	callstd std_give_item_verbose
	setflag FLAG_GOT_POISON_BARB_FROM_FRIEDA
	addvar VAR_NUM_MET_WEEKDAY_SIBLINGS, 1
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 17
	wait_button
	closemsg
	releaseall
	end

_04AC:
	wait_button
	closemsg
	releaseall
	end

_04B4:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 5
	wait_button
	closemsg
	releaseall
	end

_04C8:
	get_std_msg_naix 2, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 3
	wait_button
	closemsg
	releaseall
	end

_04DC:
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _06D3
	apply_movement obj_player, _08BC
	goto _04F7

_04F7:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _06F6
	apply_movement obj_partner_poke, _08C8
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 5
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

_0558:
	wait_button
	closemsg
	releaseall
	end

_0560:
	compare VAR_UNK_408D, 0
	goto_if_ne _0730
	setvar VAR_UNK_408D, 1
	npc_msg 5
	setvar VAR_SPECIAL_x8004, 239
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _076C
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0783
	npc_msg 8
	wait_button
	goto _078C

_05AF:
	apply_movement obj_R32_gsmiddleman1, _08D8
	apply_movement obj_player, _08E0
	setvar VAR_TEMP_x4002, 0
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	call _0560
	compare VAR_TEMP_x4000, 475
	goto_if_ne _0792
	apply_movement obj_R32_gsmiddleman1, _08E8
	wait_movement
	releaseall
	end

_05F2:
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	call _0560
	compare VAR_TEMP_x4000, 475
	goto_if_ne _0792
	apply_movement obj_R32_gsmiddleman1, _08E8
	wait_movement
	releaseall
	end

_061F:
	buffer_players_name 0
	npc_msg 2
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 475
	goto_if_ne _0796
	apply_movement obj_R32_gsmiddleman1, _08F4
	goto _07A4

_0648:
	closemsg
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4000, 475
	goto_if_ne _0796
	apply_movement obj_R32_gsmiddleman1, _08F4
	goto _07A4

_066B:
	setflag FLAG_HIDE_CAMERON
	goto _067F

_0675:
	clearflag FLAG_HIDE_CAMERON
	goto _067F

_067F:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_ne _07AA
	clearflag FLAG_UNK_208
	goto _07B0

_069A:
	get_std_msg_naix 0, VAR_SPECIAL_RESULT
	msgbox_extern VAR_SPECIAL_RESULT, 44
	buffer_mon_species_name 0, VAR_SPECIAL_x8002
	msgbox_extern VAR_SPECIAL_RESULT, 46
	give_ribbon VAR_SPECIAL_x8002, RIBBON_RELAX
	play_fanfare SEQ_ME_ITEM
	wait_fanfare
	setflag FLAG_DAILY_GOT_SHOCK_RIBBON
	wait_button
	closemsg
	releaseall
	end

_06C9:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_06D3:
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _07B2
	apply_movement obj_player, _0904
	apply_movement obj_R32_gsmiddleman1_2, _087C
	goto _04F7

_06F6:
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 5
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

_0730:
	npc_msg 5
	setvar VAR_SPECIAL_x8004, 239
	setvar VAR_SPECIAL_x8005, 1
	hasspaceforitem VAR_SPECIAL_x8004, VAR_SPECIAL_x8005, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _076C
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0783
	npc_msg 8
	wait_button
	goto _078C

_076C:
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0823
	callstd std_obtain_item_verbose
	goto _082F

_0783:
	npc_msg 9
	goto _0837

_078C:
	goto _0837

_0792:
	releaseall
	end

_0796:
	apply_movement obj_R32_gsmiddleman1, _0918
	wait_movement
	releaseall
	end

_07A4:
	wait_movement
	releaseall
	end

_07AA:
	setflag FLAG_UNK_208
	end

_07B0:
	end

_07B2:
	apply_movement obj_player, _0928
	apply_movement obj_R32_gsmiddleman1_2, _087C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	scrcmd_729 VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _06F6
	apply_movement obj_partner_poke, _08C8
	wait_movement
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 5
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

_0823:
	callstd std_give_item_verbose
	setflag FLAG_UNK_074
	closemsg
	return

_082F:
	setflag FLAG_UNK_074
	closemsg
	return

_0837:
	closemsg
	return

	.byte 0x00
	.balign 4
_083C:

	step 2, 1
	step 75, 1
	step_end
	.balign 4
_0848:

	step 14, 2
	step 12, 1
	step_end
	.balign 4
_0854:

	step 63, 1
	step 12, 2
	step 1, 1
	step_end
	.balign 4
_0864:

	step 15, 1
	step 12, 2
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_087C:

	step 63, 1
	step 32, 1
	step_end
	.balign 4
_0888:

	step 14, 1
	step_end
	.balign 4
_0890:

	step 63, 1
	step 3, 1
	step_end
	.balign 4
_089C:

	step 62, 1
	step 14, 1
	step 12, 1
	step_end
	.balign 4
_08AC:

	step 62, 1
	step 12, 2
	step 1, 1
	step_end
	.balign 4
_08BC:

	step 12, 3
	step 33, 1
	step_end
	.balign 4
_08C8:

	step 15, 1
	step 12, 1
	step 1, 1
	step_end
	.balign 4
_08D8:

	step 62, 1
	step_end
	.balign 4
_08E0:

	step 3, 1
	step_end
	.balign 4
_08E8:

	step 15, 1
	step 2, 1
	step_end
	.balign 4
_08F4:

	step 13, 1
	step 15, 2
	step 2, 1
	step_end
	.balign 4
_0904:

	step 12, 1
	step 15, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
_0918:

	step 13, 1
	step 15, 1
	step 2, 1
	step_end
	.balign 4
_0928:

	step 12, 1
	step 14, 1
	step 12, 3
	step 33, 1
	step_end
	.balign 4
