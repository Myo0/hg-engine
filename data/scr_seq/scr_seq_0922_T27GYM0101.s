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

.include "data/scr_seq/include/event_T27GYM0101.inc"


// text archive to grab from: 614.txt

.data


scrdef scr_seq_T27GYM0101_000
scrdef scr_seq_T27GYM0101_001
scrdef scr_seq_T27GYM0101_002
scrdef scr_seq_T27GYM0101_003
scrdef scr_seq_T27GYM0101_004
scrdef scr_seq_T27GYM0101_005
scrdef_end

scr_seq_T27GYM0101_000:
	ecruteak_gym_init
	get_phone_book_rematch PHONE_CONTACT_MORTY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _01C8
	goto_if_unset FLAG_GAME_CLEAR, _01CE
	check_registered_phone_number PHONE_CONTACT_MORTY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _01D4
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _01EF
	setflag FLAG_UNK_2ED
	goto _0206

scr_seq_T27GYM0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_FOG, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0208
	party_count_not_egg VAR_SPECIAL_LAST_TALKED
	party_count_mons_at_or_below_level VAR_SPECIAL_RESULT, 37
	compare VAR_SPECIAL_RESULT, VAR_SPECIAL_LAST_TALKED
	goto_if_lt _0291
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_MORTY_MORTY, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _021E
	npc_msg 1
	give_badge BADGE_FOG
	addvar VAR_MIDGAME_BADGES, 1
	add_special_game_stat 22
	setflag FLAG_UNK_998
	setvar VAR_UNK_415C, 1
	setvar VAR_UNK_416F, 45
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	npc_msg 3
	goto _0224

scr_seq_T27GYM0101_002:
	scrcmd_609
	lockall
	play_se SEQ_SE_DP_GYURU
	apply_movement obj_player, _029A
	wait_movement
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T27GYM0101, 0, 16, 49, DIR_NORTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T27GYM0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_FOG, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0258
	npc_msg 7
	wait_button
	closemsg
	releaseall
	end

scr_seq_T27GYM0101_004:
	scrcmd_609
	lockall
	apply_movement obj_T27GYM0101_gsoldman1, _02E2
	wait_movement
	npc_msg 9
	closemsg
	apply_movement obj_T27GYM0101_gsoldman1, _02F2
	apply_movement obj_player, _0302
	wait_movement
	setvar VAR_UNK_4079, 1
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	warp MAP_T27, 7, 376, 182, DIR_SOUTH
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

scr_seq_T27GYM0101_005:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_FOG, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _0266
	npc_msg 10
	goto _0271

_01C8:
	setflag FLAG_UNK_2ED
	end

_01CE:
	clearflag FLAG_UNK_2ED
	end

_01D4:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_ne _0279
	setflag FLAG_UNK_2ED
	goto _027F

_01EF:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0281
	setflag FLAG_UNK_2ED
	goto _0206

_0206:
	end

_0208:
	goto_if_unset FLAG_GOT_TM30_FROM_MORTY, _0224
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

_021E:
	white_out
	releaseall
	end

_0224:
	goto_if_no_item_space ITEM_TM030, 1, _0287
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM30_FROM_MORTY
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

_0258:
	buffer_players_name 0
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

_0266:
	npc_msg 11
	wait_button
	closemsg
	releaseall
	end

_0271:
	wait_button
	closemsg
	releaseall
	end

_0279:
	clearflag FLAG_UNK_2ED
	end

_027F:
	end

_0281:
	clearflag FLAG_UNK_2ED
	end

_0287:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_0291:
	npc_msg 12
	closemsg
	releaseall
	end

	.balign 4
_029A:

	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 2
	step 1, 2
	step 2, 2
	step 0, 2
	step 3, 1
	step 69, 0
	step_end
	.balign 4
_02E2:

	step 75, 1
	step 13, 3
	step 63, 1
	step_end
	.balign 4
_02F2:

	step 9, 1
	step 71, 1
	step 12, 1
	step_end
	.balign 4
_0302:

	step 63, 1
	step 13, 1
	step 63, 1
	step_end
	.balign 4
