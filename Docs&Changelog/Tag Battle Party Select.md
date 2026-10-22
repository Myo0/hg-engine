# Tag Battle Party Select

Before a tag battle (you + an AI ally vs. two enemy trainers) the player can choose which Pokémon to bring, using the game's own
"choose N of your party" screen (the Union Room / Battle Frontier style one, with the First / Second / Third markers).
Only the chosen Pokémon fight. The rest of the party comes out of the battle exactly as it went in, in the same slots.

First user: the Ariana fight in Team Rocket HQ B2F (Lance + you vs Ariana + a Rocket Grunt, pick 3).

## How it works (src/field/tag_battle.c, overlay 131)

Two `0xD0` script sub-commands (macros in `asm/include/scriptmacros.inc`), so the script can put its own scene between them.
Enabled by `TAG_BATTLE_PARTY_SELECT` in `include/config.h`.

| Macro | Sub-command | What it does |
|---|---|---|
| `TagBattlePick var` | 12 | Opens the party screen (min = max = N). **Backed out → var = 0.** Picked → var = 1 and the picks (1-based party slots, in pick order) are left in `x8004`..`x8009`. A team that is entirely fainted is refused (the screen reopens). Touches nothing in the party. |
| `TagBattleFight var` | 13 | Reads the picks, backs up all six party Pokémon in a heap block, rewrites the **save** party with just the chosen ones (pick order = lead order), runs the unmodified native multi-battle, then merges the post-battle chosen Pokémon (HP, PP, EXP, level, moves, evolution, held item) back into their original slots and restores the other slots untouched. var = 1 when it fought, 0 when it refused (no picks, an Egg, or an all-fainted pick). |

Why the swap is done in the save party: after every trainer battle the game copies the battle party over the save party, so a
3-Pokémon battle party would delete the other three. Swapping first and merging afterwards means the battle engine sees an
ordinary 3-Pokémon party and the copy-back lands in the temporary party.

The restore runs **before** the script continues, so `check_battle_won` / `white_out` see the full party (a whiteout heals all six).
Resetting the console mid-battle loses nothing: the game saves nothing during a battle.

### Script variables
| Variable | Meaning |
|---|---|
| `x8000` | ally trainer (as `multi_battle` arg 1) |
| `x8001` / `x8002` | enemy trainer 1 / 2 (as `multi_battle` args 2 / 3) |
| `x8003` | N for the pick, 0 = 3. Clamped to the number of non-Egg Pokémon. |
| `x8004`..`x8009` | the picks. **Don't use these between `TagBattlePick` and `TagBattleFight`.** |

The script is responsible for requiring enough Pokémon (`party_count_not_egg`, at least N) and for any dialogue.

### Minimal use
```
	setvar VAR_SPECIAL_x8000, TRAINER_PKMN_TRAINER_LANCE_LANCE
	setvar VAR_SPECIAL_x8001, TRAINER_EXECUTIVE_ARIANA_ARIANA_2
	setvar VAR_SPECIAL_x8002, TRAINER_TEAM_ROCKET_GRUNT_25
	setvar VAR_SPECIAL_x8003, 3
	TagBattlePick VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 1
	goto_if_ne _backed_out
	TagBattleFight VAR_SPECIAL_RESULT
	check_battle_won VAR_SPECIAL_RESULT
	compare VAR_SPECIAL_RESULT, 0
	goto_if_eq _lost
```

## The Ariana scene (scr_seq_0090_D35R0103.s, text bank 113)

1. The ambush scene plays as before (trigger at the north door, `VAR_UNK_40AC == 8`); Lance and his Dragonite join.
2. Needs at least 3 non-Egg Pokémon (else Lance says so and the player is free). Otherwise the picker opens straight away (no
   line from Lance first).
3. **Confirm** → Ariana reacts, she and the Grunt step forward, `TagBattleFight`. Win → the usual epilogue (`VAR_UNK_40AC = 9`).
   Loss → `white_out`; the scene replays next time.
4. **Back out** → the scene ends with everyone standing at the battle spot; the player can leave, use the PC, etc.
   Talk to Lance (script 015): "Are you ready?" Yes/No → Yes walks the player next to him and reopens the picker.
5. While the fight is pending (`VAR_UNK_40AC == 8` and Lance visible, `FLAG_UNK_1E5` clear) the map-load script (002) puts Lance (30,25),
   his Dragonite (29,25), Ariana (32,24) and the Grunt (30,27) back at the battle spot every time the map loads, and the ambush trigger
   does not replay. A whiteout sets `FLAG_UNK_1E5` again, which re-arms the full scene.
6. Teams: Ariana = Azelf / Delphox / Mega Altaria; Grunt_25 = Honchkrow / Cinccino / Vileplume; Lance keeps his three.
   The old "party must be 3 or fewer" gate, `VAR_UNK_404B` and the three "you cannot leave" coord events (016-018) were removed.

Text bank 113 (`data/text/custom/113.txt`): 28 = Lance's "Are you ready?" (Yes/No), 29 = Lance's "choose your three, talk to me when ready" line when the player backs out of the picker,
30 = "you need three Pokémon", 31 = "take your time".

## Native pieces used (rom.ld)
`SetupAndStartTrainerBattle` 0x02051370 (the call behind `multi_battle`), `gOverlayTemplate_PartyMenu` 0x0210159C, `Save_Mailbox_Get`
0x0202B50C, plus symbols that were already there (`FieldSystem_LaunchApplication`, `TaskManager_Call`, ...).
The picker uses the Union Room battle-select context (not the Battle Castle one, which bans legendaries) with `maxLevel = 100`.
