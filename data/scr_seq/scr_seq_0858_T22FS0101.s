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

.include "data/scr_seq/include/event_T22FS0101.inc"


// text archive to grab from: 557.txt

.data


scrdef scr_seq_T22FS0101_000
scrdef scr_seq_T22FS0101_001
scrdef scr_seq_T22FS0101_002
scrdef scr_seq_T22FS0101_003
scrdef scr_seq_T22FS0101_004
scrdef_end

scr_seq_T22FS0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 1
	callstd std_pokemart
	releaseall
	end

scr_seq_T22FS0101_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	callstd std_mart_intro
	holdmsg
	setvar VAR_SPECIAL_x8004, 1
	callstd std_special_mart
	releaseall
	end

scr_seq_T22FS0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_06F, _018D
	buffer_players_name 0
	gender_msgbox 2, 3
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01B8
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _01C7
	random VAR_SPECIAL_x8006, 10
	compare VAR_SPECIAL_x8006, 0
	call_if_eq _01D6
	compare VAR_SPECIAL_x8006, 1
	call_if_eq _01EC
	compare VAR_SPECIAL_x8006, 2
	call_if_eq _0202
	compare VAR_SPECIAL_x8006, 3
	call_if_eq _0218
	compare VAR_SPECIAL_x8006, 4
	call_if_eq _022E
	compare VAR_SPECIAL_x8006, 5
	call_if_eq _0244
	compare VAR_SPECIAL_x8006, 6
	call_if_eq _025A
	compare VAR_SPECIAL_x8006, 7
	call_if_eq _0270
	compare VAR_SPECIAL_x8006, 8
	call_if_eq _0286
	compare VAR_SPECIAL_x8006, 9
	call_if_eq _029C
	setflag FLAG_UNK_070
	buffer_players_name 0
	npc_msg 4
	scrcmd_208 3, 0
	play_fanfare SEQ_ME_TAMAGO_GET
	wait_fanfare
	gender_msgbox 5, 6
	closemsg
	giveitem_no_check ITEM_EXP_SHARE, 1
	closemsg
	npc_msg 11
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _02B2
	apply_movement obj_T22FS0101_assistantm, _03E2
	goto _02E4

scr_seq_T22FS0101_003:
	simple_npc_msg 0
	end

scr_seq_T22FS0101_004:
	simple_npc_msg 1
	end

_018D:
	buffer_players_name 0
	gender_msgbox 9, 10
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _030E
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _01B8
	end

_01B8:
	npc_msg 8
	wait_button
	closemsg
	releaseall
	setflag FLAG_UNK_06F
	end

_01C7:
	npc_msg 7
	wait_button
	closemsg
	releaseall
	setflag FLAG_UNK_06F
	end

_01D6:
	setvar VAR_SPECIAL_x8008, 175
	give_mon SPECIES_TOGEPI, 10, 0, 0, 32, VAR_SPECIAL_RESULT
	return

_01EC:
	setvar VAR_SPECIAL_x8008, 439
	give_mon SPECIES_MIME_JR, 10, 0, 0, 111, VAR_SPECIAL_RESULT
	return

_0202:
	setvar VAR_SPECIAL_x8008, 446
	give_mon SPECIES_MUNCHLAX, 10, 0, 0, 47, VAR_SPECIAL_RESULT
	return

_0218:
	setvar VAR_SPECIAL_x8008, 447
	give_mon SPECIES_RIOLU, 10, 0, 0, 39, VAR_SPECIAL_RESULT
	return

_022E:
	setvar VAR_SPECIAL_x8008, 956
	give_mon SPECIES_SPRIGATITO, 10, 0, 0, 65, VAR_SPECIAL_RESULT
	return

_0244:
	setvar VAR_SPECIAL_x8008, 775
	give_mon SPECIES_LITTEN, 10, 0, 0, 66, VAR_SPECIAL_RESULT
	return

_025A:
	setvar VAR_SPECIAL_x8008, 252
	give_mon SPECIES_TREECKO, 10, 0, 0, 65, VAR_SPECIAL_RESULT
	return

_0270:
	setvar VAR_SPECIAL_x8008, 393
	give_mon SPECIES_PIPLUP, 10, 0, 0, 67, VAR_SPECIAL_RESULT
	return

_0286:
	setvar VAR_SPECIAL_x8008, 390
	give_mon SPECIES_CHIMCHAR, 10, 0, 0, 66, VAR_SPECIAL_RESULT
	return

_029C:
	setvar VAR_SPECIAL_x8008, 962
	give_mon SPECIES_QUAXLY, 10, 0, 0, 67, VAR_SPECIAL_RESULT
	return

_02B2:
	apply_movement obj_T22FS0101_assistantm, _03F2
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T22FS0101_assistantm
	wait_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_VIOLET_SHOP_LAB_AIDE
	releaseall
	setvar VAR_SCENE_VIOLET_CITY_OW, 3
	clearflag FLAG_HIDE_VIOLET_KIMONO_GIRL
	clearflag FLAG_HIDE_ELMS_LAB_AIDE
	setvar VAR_SCENE_ELMS_LAB, 7
	end

_02E4:
	wait_movement
	play_se SEQ_SE_DP_KAIDAN2
	hide_person obj_T22FS0101_assistantm
	wait_se SEQ_SE_DP_KAIDAN2
	setflag FLAG_HIDE_VIOLET_SHOP_LAB_AIDE
	releaseall
	setvar VAR_SCENE_VIOLET_CITY_OW, 3
	clearflag FLAG_HIDE_VIOLET_KIMONO_GIRL
	clearflag FLAG_HIDE_ELMS_LAB_AIDE
	setvar VAR_SCENE_ELMS_LAB, 7
	end

_030E:
	get_party_count VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 6
	goto_if_eq _01C7
	random VAR_SPECIAL_x8006, 10
	compare VAR_SPECIAL_x8006, 0
	call_if_eq _01D6
	compare VAR_SPECIAL_x8006, 1
	call_if_eq _01EC
	compare VAR_SPECIAL_x8006, 2
	call_if_eq _0202
	compare VAR_SPECIAL_x8006, 3
	call_if_eq _0218
	compare VAR_SPECIAL_x8006, 4
	call_if_eq _022E
	compare VAR_SPECIAL_x8006, 5
	call_if_eq _0244
	compare VAR_SPECIAL_x8006, 6
	call_if_eq _025A
	compare VAR_SPECIAL_x8006, 7
	call_if_eq _0270
	compare VAR_SPECIAL_x8006, 8
	call_if_eq _0286
	compare VAR_SPECIAL_x8006, 9
	call_if_eq _029C
	setflag FLAG_UNK_070
	buffer_players_name 0
	npc_msg 4
	scrcmd_208 3, 0
	play_fanfare SEQ_ME_TAMAGO_GET
	wait_fanfare
	gender_msgbox 5, 6
	closemsg
	get_player_facing VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 3
	goto_if_ne _02B2
	apply_movement obj_T22FS0101_assistantm, _03E2
	goto _02E4

	.byte 0x00
	.balign 4
_03E2:

	step 13, 2
	step 14, 2
	step 13, 1
	step_end
	.balign 4
_03F2:

	step 14, 2
	step 13, 3
	step_end
	.balign 4
