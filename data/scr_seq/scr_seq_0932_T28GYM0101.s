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

.include "data/scr_seq/include/event_T28GYM0101.inc"


// text archive to grab from: 622.txt

.data


scrdef scr_seq_T28GYM0101_000
scrdef scr_seq_T28GYM0101_001
scrdef_end

scr_seq_T28GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_GLACIER, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _00D5
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_PRYCE_PRYCE, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _00EB
	setvar VAR_UNK_416F, 66
	settrainerflag TRAINER_BOARDER_DEANDRE
	settrainerflag TRAINER_BOARDER_GERARDO
	settrainerflag TRAINER_SKIER_JILL
	settrainerflag TRAINER_SKIER_DIANA
	settrainerflag TRAINER_BOARDER_PATTON
	npc_msg 1
	give_badge BADGE_GLACIER
	addvar VAR_MIDGAME_BADGES, 1
	add_special_game_stat 22
	compare VAR_MIDGAME_BADGES, 3
	goto_if_ne _00F1
	setvar VAR_SCENE_ROCKET_TAKEOVER, 1
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	npc_msg 3
	goto_if_no_item_space ITEM_TM013, 1, _0134
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM07_FROM_PRYCE
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

scr_seq_T28GYM0101_001:
	goto_if_unset FLAG_UNK_189, _013E
	clearflag FLAG_UNK_189
	end

_00D5:
	goto_if_set FLAG_GAME_CLEAR, _018A
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

_00EB:
	white_out
	releaseall
	end

_00F1:
	buffer_players_name 0
	npc_msg 2
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	npc_msg 3
	goto_if_no_item_space ITEM_TM007, 1, _0134
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM07_FROM_PRYCE
	npc_msg 4
	wait_button
	closemsg
	releaseall
	end

_0134:
	callstd std_bag_is_full
	closemsg
	releaseall
	end

_013E:
	get_phone_book_rematch PHONE_CONTACT_PRYCE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _01EB
	goto_if_unset FLAG_GAME_CLEAR, _01F1
	check_registered_phone_number PHONE_CONTACT_PRYCE, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _01F1
	scrcmd_522 VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 6
	goto_if_ne _01F7
	setflag FLAG_UNK_2EE
	goto _020E

_018A:
	npc_msg 6
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0210
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _021B
	npc_msg 7
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 40
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

_01EB:
	setflag FLAG_UNK_2EE
	end

_01F1:
	clearflag FLAG_UNK_2EE
	end

_01F7:
	compare VAR_TEMP_x4000, 7
	goto_if_ne _0226
	setflag FLAG_UNK_2EE
	goto _020E

_020E:
	end

_0210:
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_021B:
	npc_msg 10
	wait_button
	closemsg
	releaseall
	end

_0226:
	compare VAR_TEMP_x4000, 8
	goto_if_ne _023D
	setflag FLAG_UNK_2EE
	goto _020E

_023D:
	compare VAR_TEMP_x4000, 9
	goto_if_ne _0254
	setflag FLAG_UNK_2EE
	goto _020E

_0254:
	clearflag FLAG_UNK_2EE
	end
	.balign 4
