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

.include "data/scr_seq/include/event_R22R0101.inc"


// text archive to grab from: 361.txt

.data


scrdef scr_seq_R22R0101_000
scrdef scr_seq_R22R0101_001
scrdef scr_seq_R22R0101_002
scrdef scr_seq_R22R0101_003
scrdef scr_seq_R22R0101_004
scrdef scr_seq_R22R0101_005
scrdef scr_seq_R22R0101_006
scrdef scr_seq_R22R0101_007
scrdef scr_seq_R22R0101_008
scrdef_end

scr_seq_R22R0101_000:
	scrcmd_609
	lockall
	apply_movement obj_R22R0101_policeman, _05D0
	wait_movement
	apply_movement obj_player, _05D8
	wait_movement
	npc_msg 0
	wait_button
	closemsg
	clearflag FLAG_UNK_A13
	setvar VAR_UNK_4110, 1
	releaseall
	end

scr_seq_R22R0101_001:
	scrcmd_609
	lockall
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 8
	goto_if_ne _0188
	apply_movement obj_R22R0101_policeman_3, _05E0
	goto _01AD

scr_seq_R22R0101_002:
	scrcmd_609
	lockall
	get_player_coords VAR_TEMP_x4000, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 8
	goto_if_ne _01CA
	apply_movement obj_R22R0101_policeman_2, _05EC
	goto _01EF

scr_seq_R22R0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	clearflag FLAG_UNK_A13
	setflag FLAG_UNK_A14
	npc_msg 0
	wait_button
	closemsg
	releaseall
	end

scr_seq_R22R0101_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNLOCKED_WEST_KANTO, _020C
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

scr_seq_R22R0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNLOCKED_MT_SILVER, _0217
	npc_msg 1
	wait_button
	closemsg
	releaseall
	end

scr_seq_R22R0101_006:
	goto_if_unset FLAG_UNLOCKED_WEST_KANTO, _0222
	move_person_facing obj_R22R0101_policeman_3, 15, 0, 8, DIR_SOUTH
	goto_if_unset FLAG_UNLOCKED_MT_SILVER, _023B
	move_person_facing obj_R22R0101_policeman_2, 7, 0, 8, DIR_SOUTH
	end

scr_seq_R22R0101_007:
	setflag FLAG_SYS_FLYPOINT_VICTORY_ROAD
	goto_if_unset FLAG_UNK_189, _023D
	clearflag FLAG_UNK_189
	end

scr_seq_R22R0101_008:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_registered_phone_number PHONE_CONTACT_JANINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _0269
	compare VAR_TEMP_x4005, 1
	goto_if_ge _02CA
	npc_msg 7
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02D3
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0316
	end

_0188:
	apply_movement obj_R22R0101_policeman_3, _05F8
	wait_movement
	compare VAR_TEMP_x4001, 8
	goto_if_ne _0327
	apply_movement obj_R22R0101_policeman_3, _0604
	goto _0342

_01AD:
	wait_movement
	compare VAR_TEMP_x4001, 8
	goto_if_ne _0327
	apply_movement obj_R22R0101_policeman_3, _0604
	goto _0342

_01CA:
	apply_movement obj_R22R0101_policeman_2, _0614
	wait_movement
	compare VAR_TEMP_x4001, 8
	goto_if_ne _0390
	apply_movement obj_R22R0101_policeman_2, _0620
	goto _03AB

_01EF:
	wait_movement
	compare VAR_TEMP_x4001, 8
	goto_if_ne _0390
	apply_movement obj_R22R0101_policeman_2, _0620
	goto _03AB

_020C:
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

_0217:
	npc_msg 3
	wait_button
	closemsg
	releaseall
	end

_0222:
	goto_if_unset FLAG_UNLOCKED_MT_SILVER, _023B
	move_person_facing obj_R22R0101_policeman_2, 7, 0, 8, DIR_SOUTH
	end

_023B:
	end

_023D:
	check_registered_phone_number PHONE_CONTACT_JANINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _03F9
	check_badge BADGE_SOUL, VAR_TEMP_x4002
	compare VAR_TEMP_x4002, 0
	goto_if_ne _0427
	goto _042D

_0269:
	npc_msg 12
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0433
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _043E
	npc_msg 13
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 70
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 14
	wait_button
	closemsg
	releaseall
	end

_02CA:
	npc_msg 11
	goto _0449

_02D3:
	buffer_players_name 0
	npc_msg 8
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_JANINE
	npc_msg 9
	wait_button
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_UNK_270
	hide_person obj_R22R0101_gsleader13
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_0316:
	setvar VAR_TEMP_x4005, 1
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_0327:
	compare VAR_TEMP_x4001, 10
	goto_if_ne _046D
	apply_movement obj_R22R0101_policeman_3, _0630
	goto _0342

_0342:
	wait_movement
	npc_msg 5
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_R22R0101_policeman_3, _0640
	apply_movement obj_player, _0648
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	wait 16, VAR_SPECIAL_RESULT
	compare VAR_TEMP_x4001, 8
	goto_if_ne _04C3
	apply_movement obj_R22R0101_policeman_3, _0658
	goto _04DE

_0390:
	compare VAR_TEMP_x4001, 10
	goto_if_ne _04E4
	apply_movement obj_R22R0101_policeman_2, _0664
	goto _03AB

_03AB:
	wait_movement
	npc_msg 2
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_R22R0101_policeman_2, _0674
	apply_movement obj_player, _067C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	wait 16, VAR_SPECIAL_RESULT
	compare VAR_TEMP_x4001, 8
	goto_if_ne _053A
	apply_movement obj_R22R0101_policeman_2, _068C
	goto _0555

_03F9:
	get_phone_book_rematch PHONE_CONTACT_JANINE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _042D
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 18
	goto_if_ne _055B
	clearflag FLAG_UNK_270
	goto _0572

_0427:
	goto _0574

_042D:
	setflag FLAG_UNK_270
	end

_0433:
	npc_msg 15
	wait_button
	closemsg
	releaseall
	end

_043E:
	npc_msg 16
	wait_button
	closemsg
	releaseall
	end

_0449:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _02D3
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _0316
	end

_046D:
	apply_movement obj_R22R0101_policeman_3, _0698
	wait_movement
	npc_msg 5
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_R22R0101_policeman_3, _0640
	apply_movement obj_player, _0648
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	wait 16, VAR_SPECIAL_RESULT
	compare VAR_TEMP_x4001, 8
	goto_if_ne _04C3
	apply_movement obj_R22R0101_policeman_3, _0658
	goto _04DE

_04C3:
	compare VAR_TEMP_x4001, 10
	goto_if_ne _058F
	apply_movement obj_R22R0101_policeman_3, _06A8
	goto _04DE

_04DE:
	wait_movement
	releaseall
	end

_04E4:
	apply_movement obj_R22R0101_policeman_2, _06B4
	wait_movement
	npc_msg 2
	closemsg
	toggle_following_pokemon_movement 0
	wait_following_pokemon_movement
	following_pokemon_movement 56
	apply_movement obj_R22R0101_policeman_2, _0674
	apply_movement obj_player, _067C
	wait_movement
	wait_following_pokemon_movement
	toggle_following_pokemon_movement 1
	following_pokemon_movement 48
	wait 16, VAR_SPECIAL_RESULT
	compare VAR_TEMP_x4001, 8
	goto_if_ne _053A
	apply_movement obj_R22R0101_policeman_2, _068C
	goto _0555

_053A:
	compare VAR_TEMP_x4001, 10
	goto_if_ne _059D
	apply_movement obj_R22R0101_policeman_2, _06C4
	goto _0555

_0555:
	wait_movement
	releaseall
	end

_055B:
	compare VAR_TEMP_x4000, 19
	goto_if_ne _05AB
	clearflag FLAG_UNK_270
	goto _0572

_0572:
	end

_0574:
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 16
	goto_if_ne _05B1
	clearflag FLAG_UNK_270
	goto _05C8

_058F:
	apply_movement obj_R22R0101_policeman_3, _06D0
	wait_movement
	releaseall
	end

_059D:
	apply_movement obj_R22R0101_policeman_2, _06DC
	wait_movement
	releaseall
	end

_05AB:
	goto _042D

_05B1:
	compare VAR_TEMP_x4000, 17
	goto_if_ne _05CA
	clearflag FLAG_UNK_270
	goto _05C8

_05C8:
	end

_05CA:
	goto _042D

	.balign 4
_05D0:

	step 75, 1
	step_end
	.balign 4
_05D8:

	step 34, 1
	step_end
	.balign 4
_05E0:

	step 32, 1
	step 75, 1
	step_end
	.balign 4
_05EC:

	step 32, 1
	step 75, 1
	step_end
	.balign 4
_05F8:

	step 33, 1
	step 75, 1
	step_end
	.balign 4
_0604:

	step 19, 1
	step 16, 1
	step 38, 1
	step_end
	.balign 4
_0614:

	step 33, 1
	step 75, 1
	step_end
	.balign 4
_0620:

	step 18, 1
	step 16, 1
	step 39, 1
	step_end
	.balign 4
_0630:

	step 19, 1
	step 17, 1
	step 38, 1
	step_end
	.balign 4
_0640:

	step 14, 1
	step_end
	.balign 4
_0648:

	step 71, 1
	step 14, 1
	step 72, 1
	step_end
	.balign 4
_0658:

	step 13, 1
	step 34, 1
	step_end
	.balign 4
_0664:

	step 18, 1
	step 17, 1
	step 39, 1
	step_end
	.balign 4
_0674:

	step 15, 1
	step_end
	.balign 4
_067C:

	step 71, 1
	step 15, 1
	step 72, 1
	step_end
	.balign 4
_068C:

	step 13, 1
	step 35, 1
	step_end
	.balign 4
_0698:

	step 19, 1
	step 17, 2
	step 38, 1
	step_end
	.balign 4
_06A8:

	step 12, 1
	step 34, 1
	step_end
	.balign 4
_06B4:

	step 18, 1
	step 17, 2
	step 39, 1
	step_end
	.balign 4
_06C4:

	step 12, 1
	step 35, 1
	step_end
	.balign 4
_06D0:

	step 12, 2
	step 34, 1
	step_end
	.balign 4
_06DC:

	step 12, 2
	step 35, 1
	step_end
	.balign 4
