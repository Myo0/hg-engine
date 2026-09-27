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

.include "data/scr_seq/include/event_T24GYM0101.inc"


// text archive to grab from: 574.txt

.data


scrdef scr_seq_T24GYM0101_000
scrdef scr_seq_T24GYM0101_001
scrdef scr_seq_T24GYM0101_002
scrdef scr_seq_T24GYM0101_003
scrdef_end

scr_seq_T24GYM0101_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_TEMP_x4000, 0
	goto_if_eq _00FC
	check_badge BADGE_STORM, VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_eq _0107
	npc_msg 0
	closemsg
	trainer_battle TRAINER_LEADER_CHUCK_CHUCK, 0, 0, 0
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _011D
	npc_msg 3
	settrainerflag TRAINER_BLACK_BELT_YOSHI
	settrainerflag TRAINER_BLACK_BELT_LAO
	settrainerflag TRAINER_BLACK_BELT_NOB
	settrainerflag TRAINER_BLACK_BELT_LUNG
	setvar VAR_UNK_416F, 54
	buffer_players_name 0
	npc_msg 4
	give_badge BADGE_STORM
	play_fanfare SEQ_ME_BADGE
	wait_fanfare
	addvar VAR_MIDGAME_BADGES, 1
	add_special_game_stat 22
	setvar VAR_UNK_4116, 1
	compare VAR_MIDGAME_BADGES, 3
	goto_if_ne _0123
	setvar VAR_SCENE_ROCKET_TAKEOVER, 1
	npc_msg 5
	goto _012C

scr_seq_T24GYM0101_001:
	cianwood_gym_init
	clearflag FLAG_SYS_CIANWOOD_WATERFALL_DISABLE
	end

scr_seq_T24GYM0101_002:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	compare VAR_TEMP_x4000, 0
	goto_if_eq _0160
	npc_msg 12
	wait_button
	closemsg
	releaseall
	end

scr_seq_T24GYM0101_003:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	check_badge BADGE_STORM, VAR_SPECIAL_RESULT
	buffer_players_name 0
	compare VAR_SPECIAL_RESULT, 0
	goto_if_ne _017E
	npc_msg 13
	goto _0189

_00FC:
	npc_msg 9
	wait_button
	closemsg
	releaseall
	end

_0107:
	goto_if_unset FLAG_GOT_TM01_FROM_CHUCK, _012C
	npc_msg 8
	wait_button
	closemsg
	releaseall
	end

_011D:
	white_out
	releaseall
	end

_0123:
	npc_msg 5
	goto _012C

_012C:
	goto_if_no_item_space ITEM_TM001, 1, _0191
	callstd std_give_item_verbose
	setflag FLAG_GOT_TM01_FROM_CHUCK
	npc_msg 6
	wait_button
	closemsg
	releaseall
	end

_0160:
	npc_msg 10
	touchscreen_menu_hide
	getmenuchoice VAR_SPECIAL_RESULT
	touchscreen_menu_show
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _019C
	closemsg
	releaseall
	end

_017E:
	npc_msg 14
	wait_button
	closemsg
	releaseall
	end

_0189:
	wait_button
	closemsg
	releaseall
	end

_0191:
	npc_msg 7
	wait_button
	closemsg
	releaseall
	end

_019C:
	buffer_players_name 0
	npc_msg 11
	closemsg
	setflag FLAG_SYS_CIANWOOD_WATERFALL_DISABLE
	stop_se SEQ_SE_GS_N_TAKI
	play_se SEQ_SE_DP_SHIP03
	play_se SEQ_SE_GS_TAKI2
	cianwood_gym_turn_winch VAR_TEMP_x4000
	releaseall
	end
	.balign 4
