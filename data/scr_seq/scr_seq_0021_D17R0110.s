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

.include "data/scr_seq/include/event_D17R0110.inc"


// text archive to grab from: 058.txt

.data


scrdef scr_seq_D17R0110_000
scrdef scr_seq_D17R0110_001
scrdef scr_seq_D17R0110_002
scrdef scr_seq_D17R0110_003
scrdef scr_seq_D17R0110_004
scrdef scr_seq_D17R0110_005
scrdef scr_seq_D17R0110_006
scrdef_end

scr_seq_D17R0110_000:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	setvar VAR_TEMP_x400A, 250
	play_cry VAR_TEMP_x400A, 0
	npc_msg 4
	wait_cry
	closemsg
	get_game_version VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 7
	goto_if_ne _0698
	setvar VAR_SPECIAL_x8004, 45
	goto _0701

scr_seq_D17R0110_001:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_108, _0764
	npc_msg 1
	wait_button
	closemsg
	releaseall
	end

scr_seq_D17R0110_002:
	goto_if_set FLAG_ENGAGING_STATIC_POKEMON, _077A
	end

scr_seq_D17R0110_003:
	setvar VAR_TEMP_x4003, 111
	setflag FLAG_UNK_105
	end

scr_seq_D17R0110_004:
	play_se SEQ_SE_DP_SELECT
	lockall
	faceplayer
	goto_if_set FLAG_UNK_108, _0788
	npc_msg 1
	wait_button
	closemsg
	releaseall
	end

scr_seq_D17R0110_005:
	compare VAR_TEMP_x400B, 123
	goto_if_ne _0793
	stop_se SEQ_SE_GS_KYOUHUU
	setvar VAR_TEMP_x400B, 0
	goto_if_set FLAG_UNK_108, _07FA
	goto_if_unset FLAG_UNK_10A, _07FA
	compare VAR_TEMP_x4003, 111
	goto_if_ne _07FC
	move_person_facing obj_D17R0110_dancer, 16, 1, 18, DIR_NORTH
	move_person_facing obj_D17R0110_dancer_2, 12, 1, 18, DIR_NORTH
	move_person_facing obj_D17R0110_dancer_3, 12, 1, 12, DIR_SOUTH
	move_person_facing obj_D17R0110_dancer_4, 18, 1, 18, DIR_NORTH
	move_person_facing obj_D17R0110_dancer_5, 18, 1, 12, DIR_SOUTH
	setvar VAR_TEMP_x4003, 0
	end

scr_seq_D17R0110_006:
	scrcmd_609
	lockall
	scrcmd_805
	apply_movement obj_D17R0110_dancer, _0854
	wait_movement
	npc_msg 0
	closemsg
	stop_se SEQ_SE_GS_KYOUHUU
	fade_screen 4, 4, 0, RGB_WHITE
	wait_fade
	legend_cutscene_clear_bell_anim_begin
	legend_cutscene_clear_bell_rise_from_bag
	play_se SEQ_SE_GS_SUZUSYUTUGEN_HO
	fade_screen 4, 4, 1, RGB_WHITE
	wait_fade
	wait_se SEQ_SE_GS_SUZUSYUTUGEN_HO
	apply_movement obj_D17R0110_dancer, _085C
	apply_movement obj_D17R0110_dancer_2, _0868
	apply_movement obj_D17R0110_dancer_3, _0874
	apply_movement obj_D17R0110_dancer_4, _0880
	apply_movement obj_D17R0110_dancer_5, _088C
	wait_movement
	wait 16, VAR_SPECIAL_RESULT
	apply_movement obj_D17R0110_dancer, _0854
	apply_movement obj_D17R0110_dancer_2, _0854
	apply_movement obj_D17R0110_dancer_3, _0854
	apply_movement obj_D17R0110_dancer_4, _0854
	apply_movement obj_D17R0110_dancer_5, _0854
	wait_movement
	wait 16, VAR_SPECIAL_RESULT
	stop_bgm 0
	temp_bgm SEQ_GS_E_MAIKO_MAI
	wait 18, VAR_SPECIAL_RESULT
	apply_movement obj_D17R0110_dancer, _0898
	apply_movement obj_D17R0110_dancer_2, _0898
	apply_movement obj_D17R0110_dancer_3, _0898
	apply_movement obj_D17R0110_dancer_4, _0898
	apply_movement obj_D17R0110_dancer_5, _0898
	wait 12, VAR_SPECIAL_RESULT
	legend_cutscene_clear_bell_shimmer 1
	play_se SEQ_SE_GS_SUZUNOONPA_RU
	wait_movement
	wait 67, VAR_SPECIAL_RESULT
	apply_movement obj_D17R0110_dancer, _0898
	apply_movement obj_D17R0110_dancer_2, _0898
	apply_movement obj_D17R0110_dancer_3, _0898
	apply_movement obj_D17R0110_dancer_4, _0898
	apply_movement obj_D17R0110_dancer_5, _0898
	wait 12, VAR_SPECIAL_RESULT
	legend_cutscene_clear_bell_shimmer 1
	play_se SEQ_SE_GS_SUZUNOONPA_RU
	wait_movement
	fade_screen 4, 6, 1, RGB_WHITE
	legend_cutscene_waves_or_leaves_effect_begin
	wait_fade
	wait 4, VAR_SPECIAL_RESULT
	apply_movement obj_D17R0110_dancer, _08BC
	apply_movement obj_D17R0110_dancer_2, _08C4
	apply_movement obj_D17R0110_dancer_3, _08CC
	apply_movement obj_D17R0110_dancer_4, _08BC
	apply_movement obj_D17R0110_dancer_5, _08D4
	wait_movement
	apply_movement obj_D17R0110_dancer, _08DC
	apply_movement obj_D17R0110_dancer_2, _0900
	apply_movement obj_D17R0110_dancer_3, _0924
	apply_movement obj_D17R0110_dancer_4, _08DC
	apply_movement obj_D17R0110_dancer_5, _0948
	wait 12, VAR_SPECIAL_RESULT
	legend_cutscene_clear_bell_shimmer 1
	play_se SEQ_SE_GS_SUZUNOONPA_RU
	wait_movement
	wait 32, VAR_SPECIAL_RESULT
	apply_movement obj_D17R0110_dancer, _08C4
	apply_movement obj_D17R0110_dancer_2, _08C4
	apply_movement obj_D17R0110_dancer_3, _08CC
	apply_movement obj_D17R0110_dancer_4, _08BC
	apply_movement obj_D17R0110_dancer_5, _08D4
	wait_movement
	apply_movement obj_D17R0110_dancer, _0900
	apply_movement obj_D17R0110_dancer_2, _0900
	apply_movement obj_D17R0110_dancer_3, _0924
	apply_movement obj_D17R0110_dancer_4, _08DC
	apply_movement obj_D17R0110_dancer_5, _0948
	wait 12, VAR_SPECIAL_RESULT
	legend_cutscene_clear_bell_shimmer 1
	play_se SEQ_SE_GS_SUZUNOONPA_RU
	wait_movement
	wait 33, VAR_SPECIAL_RESULT
	apply_movement obj_D17R0110_dancer, _08C4
	apply_movement obj_D17R0110_dancer_2, _08C4
	apply_movement obj_D17R0110_dancer_3, _08CC
	apply_movement obj_D17R0110_dancer_4, _08BC
	apply_movement obj_D17R0110_dancer_5, _08D4
	wait_movement
	apply_movement obj_D17R0110_dancer, _0900
	apply_movement obj_D17R0110_dancer_2, _096C
	apply_movement obj_D17R0110_dancer_3, _0998
	apply_movement obj_D17R0110_dancer_4, _09C4
	apply_movement obj_D17R0110_dancer_5, _09F0
	wait 12, VAR_SPECIAL_RESULT
	legend_cutscene_clear_bell_shimmer 1
	play_se SEQ_SE_GS_SUZUNOONPA_RU
	wait_movement
	wait 32, VAR_SPECIAL_RESULT
	apply_movement obj_D17R0110_dancer, _08CC
	apply_movement obj_D17R0110_dancer_2, _08CC
	apply_movement obj_D17R0110_dancer_3, _08D4
	apply_movement obj_D17R0110_dancer_4, _08C4
	apply_movement obj_D17R0110_dancer_5, _08BC
	wait_movement
	apply_movement obj_D17R0110_dancer, _0924
	apply_movement obj_D17R0110_dancer_2, _0924
	apply_movement obj_D17R0110_dancer_3, _0948
	apply_movement obj_D17R0110_dancer_4, _0900
	apply_movement obj_D17R0110_dancer_5, _08DC
	wait 12, VAR_SPECIAL_RESULT
	legend_cutscene_clear_bell_shimmer 1
	play_se SEQ_SE_GS_SUZUNOONPA_RU
	wait_movement
	legend_cutscene_waves_or_leaves_effect_end
	legend_cutscene_pan_camera_to 0
	wait 32, VAR_SPECIAL_RESULT
	apply_movement obj_D17R0110_dancer, _08CC
	apply_movement obj_D17R0110_dancer_2, _08CC
	apply_movement obj_D17R0110_dancer_3, _08D4
	apply_movement obj_D17R0110_dancer_4, _08C4
	apply_movement obj_D17R0110_dancer_5, _08BC
	wait_movement
	apply_movement obj_D17R0110_dancer, _0924
	apply_movement obj_D17R0110_dancer_2, _0924
	apply_movement obj_D17R0110_dancer_3, _0948
	apply_movement obj_D17R0110_dancer_4, _0900
	apply_movement obj_D17R0110_dancer_5, _08DC
	wait 12, VAR_SPECIAL_RESULT
	legend_cutscene_clear_bell_shimmer 0
	play_se SEQ_SE_GS_SUZUNOONPA2
	wait_movement
	wait 32, VAR_SPECIAL_RESULT
	apply_movement obj_D17R0110_dancer, _08D4
	apply_movement obj_D17R0110_dancer_2, _08CC
	apply_movement obj_D17R0110_dancer_3, _08D4
	apply_movement obj_D17R0110_dancer_4, _08C4
	apply_movement obj_D17R0110_dancer_5, _08BC
	wait_movement
	apply_movement obj_D17R0110_dancer, _0948
	apply_movement obj_D17R0110_dancer_2, _0924
	apply_movement obj_D17R0110_dancer_3, _0948
	apply_movement obj_D17R0110_dancer_4, _0900
	apply_movement obj_D17R0110_dancer_5, _08DC
	wait 12, VAR_SPECIAL_RESULT
	legend_cutscene_clear_bell_shimmer 0
	play_se SEQ_SE_GS_SUZUNOONPA2
	wait_movement
	wait 41, VAR_SPECIAL_RESULT
	legend_cutscene_wait_camera_pan
	wait 8, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	legend_cutscene_move_camera_to 1
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	wait 20, VAR_SPECIAL_RESULT
	legend_cutscene_clear_bell_shimmer 0
	play_se SEQ_SE_GS_SUZUNOONPA2
	release obj_D17R0110_dancer
	release obj_D17R0110_dancer_2
	release obj_D17R0110_dancer_3
	release obj_D17R0110_dancer_4
	release obj_D17R0110_dancer_5
	move_person_facing obj_D17R0110_dancer, 15, 1, 18, DIR_NORTH
	move_person_facing obj_D17R0110_dancer_2, 12, 1, 18, DIR_NORTH
	move_person_facing obj_D17R0110_dancer_3, 12, 1, 12, DIR_SOUTH
	move_person_facing obj_D17R0110_dancer_4, 18, 1, 18, DIR_NORTH
	move_person_facing obj_D17R0110_dancer_5, 18, 1, 12, DIR_SOUTH
	wait 86, VAR_SPECIAL_RESULT
	legend_cutscene_clear_bell_shimmer 0
	play_se SEQ_SE_GS_SUZUNOONPA2
	wait 32, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 0, RGB_BLACK
	wait_fade
	legend_cutscene_move_camera_to 2
	fade_screen 6, 1, 1, RGB_BLACK
	wait_fade
	wait 22, VAR_SPECIAL_RESULT
	apply_movement obj_D17R0110_dancer, _0900
	apply_movement obj_D17R0110_dancer_2, _0900
	apply_movement obj_D17R0110_dancer_3, _0948
	apply_movement obj_D17R0110_dancer_4, _0900
	apply_movement obj_D17R0110_dancer_5, _0948
	wait 12, VAR_SPECIAL_RESULT
	legend_cutscene_clear_bell_shimmer 0
	play_se SEQ_SE_GS_SUZUNOONPA2
	wait_movement
	wait 32, VAR_SPECIAL_RESULT
	wait 34, VAR_SPECIAL_RESULT
	apply_movement obj_D17R0110_dancer, _0900
	apply_movement obj_D17R0110_dancer_2, _0900
	apply_movement obj_D17R0110_dancer_3, _0948
	apply_movement obj_D17R0110_dancer_4, _0900
	apply_movement obj_D17R0110_dancer_5, _0948
	wait 12, VAR_SPECIAL_RESULT
	legend_cutscene_clear_bell_shimmer 0
	play_se SEQ_SE_GS_SUZUNOONPA2
	wait_movement
	wait 60, VAR_SPECIAL_RESULT
	legend_cutscene_pan_camera_to 1
	legend_cutscene_wait_camera_pan
	stop_bgm 0
	legend_cutscene_clear_bell_anim_end
	setvar VAR_TEMP_x400B, 123
	fade_screen 6, 1, 0, RGB_WHITE
	wait_fade
	cinematic 0
	clearflag FLAG_HIDE_BELL_TOWER_HO_OH
	show_person obj_D17R0110_hou_obj01
	make_object_visible obj_D17R0110_hou_obj01
	wait 6, VAR_SPECIAL_RESULT
	fade_screen 6, 1, 1, RGB_WHITE
	wait_fade
	wait 20, VAR_SPECIAL_RESULT
	legend_cutscene_bird_final_approach
	stop_bgm 30
	apply_movement obj_D17R0110_dancer, _0A1C
	wait_movement
	scrcmd_726
	buffer_players_name 0
	npc_msg 2
	closemsg
	apply_movement obj_D17R0110_dancer, _0854
	wait_movement
	buffer_players_name 0
	npc_msg 3
	closemsg
	apply_movement obj_D17R0110_dancer, _0A24
	wait_movement
	releaseall
	setflag FLAG_UNK_10A
	setvar VAR_UNK_40FA, 2
	end

_0698:
	setvar VAR_SPECIAL_x8004, 70
	setflag FLAG_ENGAGING_STATIC_POKEMON
	scrcmd_250 250, 85
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	get_static_encounter_outcome VAR_TEMP_x4005
	compare VAR_TEMP_x4005, 2
	goto_if_eq _0804
	compare VAR_TEMP_x4005, 3
	goto_if_eq _0804
	compare VAR_TEMP_x4005, 4
	call_if_eq _080E
	releaseall
	setflag FLAG_UNK_108
	setvar VAR_SCENE_NEW_BARK_EAST_EXIT, 3
	setflag FLAG_HIDE_NEW_BARK_FRIEND
	setflag FLAG_HIDE_NEW_BARK_MARILL
	setflag FLAG_HIDE_NEW_BARK_FRIEND_2
	clearflag FLAG_HIDE_NEW_BARK_FRIENDS_ROOM_FRIEND
	setflag FLAG_HIDE_BELL_TOWER_SUMMIT_KIMONO_GIRLS
	clearflag FLAG_HIDE_DANCE_STUDIO_KIMONO_GIRLS
	clearflag FLAG_UNK_241
	end

_0701:
	setflag FLAG_ENGAGING_STATIC_POKEMON
	scrcmd_250 250, 85
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	get_static_encounter_outcome VAR_TEMP_x4005
	compare VAR_TEMP_x4005, 2
	goto_if_eq _0804
	compare VAR_TEMP_x4005, 3
	goto_if_eq _0804
	compare VAR_TEMP_x4005, 4
	call_if_eq _080E
	releaseall
	setflag FLAG_UNK_108
	setvar VAR_SCENE_NEW_BARK_EAST_EXIT, 3
	setflag FLAG_HIDE_NEW_BARK_FRIEND
	setflag FLAG_HIDE_NEW_BARK_MARILL
	setflag FLAG_HIDE_NEW_BARK_FRIEND_2
	clearflag FLAG_HIDE_NEW_BARK_FRIENDS_ROOM_FRIEND
	setflag FLAG_HIDE_BELL_TOWER_SUMMIT_KIMONO_GIRLS
	clearflag FLAG_HIDE_DANCE_STUDIO_KIMONO_GIRLS
	clearflag FLAG_UNK_241
	end

_0764:
	compare VAR_TEMP_x4005, 5
	goto_if_ne _0814
	npc_msg 8
	goto _082A

_077A:
	setflag FLAG_HIDE_BELL_TOWER_HO_OH
	hide_person obj_D17R0110_hou_obj01
	clearflag FLAG_ENGAGING_STATIC_POKEMON
	end

_0788:
	npc_msg 5
	wait_button
	closemsg
	releaseall
	end

_0793:
	goto_if_set FLAG_UNK_108, _07FA
	goto_if_unset FLAG_UNK_10A, _07FA
	compare VAR_TEMP_x4003, 111
	goto_if_ne _07FC
	move_person_facing obj_D17R0110_dancer, 16, 1, 18, DIR_NORTH
	move_person_facing obj_D17R0110_dancer_2, 12, 1, 18, DIR_NORTH
	move_person_facing obj_D17R0110_dancer_3, 12, 1, 12, DIR_SOUTH
	move_person_facing obj_D17R0110_dancer_4, 18, 1, 18, DIR_NORTH
	move_person_facing obj_D17R0110_dancer_5, 18, 1, 12, DIR_SOUTH
	setvar VAR_TEMP_x4003, 0
	end

_07FA:
	end

_07FC:
	setvar VAR_TEMP_x4003, 0
	end

_0804:
	clearflag FLAG_HIDE_BELL_TOWER_HO_OH
	white_out
	releaseall
	end

_080E:
	setflag FLAG_CAUGHT_HO_OH
	return

_0814:
	compare VAR_TEMP_x4005, 6
	goto_if_ne _0832
	npc_msg 8
	goto _082A

_082A:
	wait_button
	closemsg
	releaseall
	end

_0832:
	compare VAR_TEMP_x4005, 4
	goto_if_ne _0848
	npc_msg 6
	goto _082A

_0848:
	npc_msg 7
	wait_button
	closemsg
	releaseall
	end

	.byte 0x00
	.balign 4
_0854:

	step 33, 1
	step_end
	.balign 4
_085C:

	step 63, 6
	step 12, 1
	step_end
	.balign 4
_0868:

	step 63, 5
	step 14, 2
	step_end
	.balign 4
_0874:

	step 14, 1
	step 12, 6
	step_end
	.balign 4
_0880:

	step 63, 5
	step 15, 2
	step_end
	.balign 4
_088C:

	step 15, 1
	step 12, 6
	step_end
	.balign 4
_0898:

	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step_end
	.balign 4
_08BC:

	step 10, 2
	step_end
	.balign 4
_08C4:

	step 8, 2
	step_end
	.balign 4
_08CC:

	step 11, 2
	step_end
	.balign 4
_08D4:

	step 9, 2
	step_end
	.balign 4
_08DC:

	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step_end
	.balign 4
_0900:

	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step_end
	.balign 4
_0924:

	step 1, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step_end
	.balign 4
_0948:

	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step_end
	.balign 4
_096C:

	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step_end
	.balign 4
_0998:

	step 1, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step_end
	.balign 4
_09C4:

	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step_end
	.balign 4
_09F0:

	step 2, 1
	step 61, 1
	step 0, 1
	step 61, 1
	step 3, 1
	step 61, 1
	step 1, 1
	step 61, 1
	step 2, 1
	step 61, 1
	step_end
	.balign 4
_0A1C:

	step 32, 1
	step_end
	.balign 4
_0A24:

	step 2, 1
	step 71, 1
	step 11, 1
	step 72, 1
	step_end
	.balign 4
