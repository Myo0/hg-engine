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

.include "data/scr_seq/include/event_D17R1101.inc"


// text archive to grab from: 059.txt

.data


scrdef scr_seq_D17R1101_000
scrdef scr_seq_D17R1101_001
scrdef scr_seq_D17R1101_002
scrdef_end

scr_seq_D17R1101_000:
	goto_if_unset FLAG_UNK_189, _0092
	clearflag FLAG_UNK_189
	end

scr_seq_D17R1101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_registered_phone_number PHONE_CONTACT_MORTY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _00DE
	compare VAR_TEMP_x4002, 1
	goto_if_ge _013F
	npc_msg 0
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0148
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _018B
	end

scr_seq_D17R1101_002:
	lockall
	play_se SEQ_SE_DP_SELECT
	hide_person obj_D17R1101_3930
	giveitem_no_check ITEM_VICTREEBELITE, 1
	setflag FLAG_UNK_A1B
	closemsg
	releaseall
	end

_0092:
	goto_if_unset FLAG_GAME_CLEAR, _019C
	get_phone_book_rematch PHONE_CONTACT_MORTY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 0
	goto_if_ne _019C
	check_registered_phone_number PHONE_CONTACT_MORTY, VAR_TEMP_x4001
	compare VAR_TEMP_x4001, 1
	goto_if_eq _01A2
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 1
	goto_if_ne _01BD
	clearflag FLAG_UNK_2CA
	goto _01D4

_00DE:
	npc_msg 5
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01D6
	photo_album_is_full VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01E1
	npc_msg 6
	closemsg
	setflag FLAG_UNK_189
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	cameron_photo 20
	faceplayer
	lockall
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	clearflag FLAG_UNK_189
	npc_msg 7
	wait_button
	closemsg
	releaseall
	end

_013F:
	npc_msg 4
	goto _01EC

_0148:
	buffer_players_name 0
	npc_msg 1
	play_fanfare SEQ_ME_POKEGEAR_REGIST
	wait_fanfare
	register_gear_number PHONE_CONTACT_MORTY
	npc_msg 2
	wait_button
	closemsg
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	setflag FLAG_UNK_2CA
	hide_person obj_D17R1101_gsleader4
	play_se SEQ_SE_DP_KAIDAN2
	wait_se SEQ_SE_DP_KAIDAN2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	releaseall
	end

_018B:
	setvar VAR_TEMP_x4002, 1
	npc_msg 3
	wait_button
	closemsg
	releaseall
	end

_019C:
	setflag FLAG_UNK_2CA
	end

_01A2:
	get_weekday VAR_TEMP_x4000
	compare VAR_TEMP_x4000, 5
	goto_if_ne _0210
	clearflag FLAG_UNK_2CA
	goto _0216

_01BD:
	compare VAR_TEMP_x4000, 2
	goto_if_ne _0218
	clearflag FLAG_UNK_2CA
	goto _01D4

_01D4:
	end

_01D6:
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

_01E1:
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_01EC:
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _0148
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ge _018B
	end

_0210:
	setflag FLAG_UNK_2CA
	end

_0216:
	end

_0218:
	setflag FLAG_UNK_2CA
	end
	.balign 4
