# Credits icon (8th X-menu icon)

The X (main) menu has a CREDITS icon in the open spot at the bottom of the right-hand column. It is unlocked by Mom, as the last
button of her starting batch (see "Unlock" below). Touching it, or moving the cursor to it and pressing A, closes the menu and
opens the credits reader (`Docs&Changelog/Credits.md`, common script 2076). It is
controlled by `CREDITS_ICON` in `include/config.h` (needs `CREDITS_READER`).

## Unlock (Mom's script)

The icon is hidden until save flag `CREDITS_UNLOCK_FLAG` (2522, `include/config.h`; alias `FLAG_GOT_CREDITS_BUTTON` in
`asm/include/flags.inc`) is set. In the NORMAL layout the icon, its label and its palette always exist; `CreditsUnlocked()` in
`src/field/touch_menu.c` decides whether they are drawn:

- flag 2522 set, **or**
- a save that finished Mom's scene before the flag existed: Options button flag (286) set and `VAR_SCENE_PLAYERS_HOUSE_1F` (0x4106) non-zero
  (Mom's script sets that variable to 1 as its last command, so during the scene itself only the new flag counts).

When the flag is set while a script runs (Mom's scene), the icon appears with the same animation as the four vanilla buttons
(`TouchMenu_ShowNewIcons`). Message 41 of text bank 545 (`data/text/custom/545.txt`) is Mom's line:
"Here's something to celebrate / everyone who made this possible." (first line 211 px of the 216 px box).

**Mom's script:** scene script 0 of file 845 (T20R0201, `data/scr_seq/scr_seq_0845_T20R0201.s`) now has, after the Options
button's fanfare and before `npc_msg 5` ("Just try touching the buttons..."):

```
npc_msg 41
setflag FLAG_GOT_CREDITS_BUTTON      ; 2522
play_fanfare SEQ_SE_PL_KIRAKIRA      ; 1418, same as the other four
wait_fanfare
```

It reaches the ROM through DSPRE: the edit was built with `BUILD_DUMPED_SCR_SEQ` enabled for that one build (then disabled again), so
open the resulting `test.nds` in DSPRE and save it over `rom.nds`, otherwise the next DSPRE save from the old `rom.nds` drops it.

## What changed, and why it is small

The bottom-screen touch menu is overlay 27 (pret `touchscreen_menu.c`). It was written for 7 icons, but its data already had the
room: the NORMAL layout has an 8th slot set to "none", the label window for it exists (11,21) and the icon art is plain data. Instead
of porting the whole module, `src/field/touch_menu.c` replaces only the **icon-handling functions** (16 of 64) with versions that
know one more icon, and everything else in the overlay (running shoes button, action button, phone ring, Safari / Bug Contest /
Pal Park layouts, Yes/No menus, ...) runs unchanged. The replaced functions are hooked in `hooks` (`0027 TouchMenu_... <address>`;
the addresses are pret `asm/overlay_27.s` labels, the build decompresses overlay 27 for this - `scripts/make.py`).

`TouchscreenMenuData` keeps its original layout (size 0x540, checked with static asserts), so nothing unchanged had to move. The
credits icon borrows what the Safari/Park ball item uses in other layouts, which is free in the NORMAL layout:

| | slot |
|---|---|
| sprite / selection slot | 15 |
| graphic resource | index 10 (instead of the ball item) |
| label window | `iconWindows[7]` |
| label | message 37 of text bank 196 (`data/text/custom/196.txt`: "CREDITS") |
| button art | member 78 appended to NARC `a/0/1/4` by `scripts/patch_touch_icon.py` |
| position / touch rect | (104,142) / rows 142-174, columns 96-156 |
| D-pad | `sNeighbors` in touch_menu.c: down from the last right-column icon goes to credits, up from the first right-column icon wraps to it |

## How a selection reaches the credits reader

The start menu (ARM9 `start_menu.c`) addresses buttons by menu index: 0-6 icons, 7/8 the registered-item buttons, and now **9 =
credits**. Two ROM patches connect it:

1. `bytereplacement`: `StartMenu_BuildActionLists` (0x0203C220) inserted the RUNNING_SHOES action with display position -1; one
   halfword (`0203C356`, `MOVS r0,#9`) puts it at position 9 instead. The start menu also ignores any selection whose menu index is
   not below `numActiveButtons` (`StartMenu_HandleKeyInput` 0x0203C508 / `StartMenu_HandleTouchInput` 0x0203C5A4), and that count is only 7
   at the start of the game (4 icons + the two registered-item slots + this action), so index 9 was rejected until more icons were
   unlocked. Two more halfwords (`0203C516`, `0203C610`: `LDR r0,[rX,#0x2C]` -> `MOVS r0,#10`) make the bound the constant 10;
   the touch menu only selects shown icons, so every index it produces is valid. The running-shoes *button* of the touch screen does not use
   that action, and in the other layouts index 9 is unreachable, so nothing else changes (the action count stays 10, the arrays
   are not overrun).
2. `routinepointers`: the action table entry for that action (0x020FA128) pointed at STARTMENUTASKFUNC_CANCEL; it now points at
   `TouchMenu_CreditsAction`, a copy of the Retire handler (remove the menu, run a script, free the menu task) that runs script 2076.

A touch on the credits icon is turned into an A press on menu index 9 (`gSystem.simulatedInputs`), like the touch screen's action
button does, so keyboard and touch share one path. When the reader closes, `DummyTextTrap 11, 0` (in the common script) sets the menu
state to 2 so the touch screen un-dims and clears the highlight, exactly as after closing the menu normally.

### Touching it while the X menu is closed (fixed)
The other icons can be tapped without pressing X first: they write `menuIndex + 2` to `lastTouchMenuInput`, the field code sees a
non-zero value, opens the start menu and the start menu task runs the action. Index 9 cannot use that route (`lastTouchMenuInput`
11 already means the running-shoes button, 9/10 the registered items), and a simulated A press does nothing when no start menu task
exists. So when the menu is closed (`startMenuState == 0`), a touch on credits first writes 1 to `lastTouchMenuInput` (what a touch
on the MENU bar does, which opens the menu) and then `sCreditsPress` presses A on every other frame (so each press is a fresh edge)
until the menu is up and `TouchMenu_CreditsAction` runs; it gives up after 120 frames.

### The "stuck touch" bug (fixed)
The game sets the touch menu's `selectedIconAnim` flag when a start menu action is launched and only clears it by destroying and
recreating the touch menu, which every app that leaves the field does. The credits reader runs in place, so the flag stayed set and
`HandleTouchInput` ignored every touch afterwards (all icons and the two registered-item buttons) until the menu was recreated. The
replaced `TouchMenu_RestoreAfterStartMenu` now clears it when the touch screen is restored.

## Editing / extending

- Change the icon: edit `data/graphics/touch_menu/credits_glyph.txt` (21x20, `.` background, `8` outline, `5` fill, `f` white) and rebuild.
- Change the label: message 37 of `data/text/custom/196.txt`.
- The credits content itself: `Docs&Changelog/Credits.md`.
- A different action instead of the reader: change `CREDITS_SCRIPT_ID` in `touch_menu.c` (any script id `StartScriptFromMenu` accepts).

## Notes
- Only the NORMAL layout shows the icon. Verified in game: opening the menu, D-pad to the icon and A, touching it, closing the
  reader (menu restored), and every other icon (Pokedex flow not exercised, Pokemon, Bag, Save, Options, Pokegear, Trainer Card).
- The Safari / Bug Contest / Pal Park / Battle Tower / Union Room layouts run through the same replaced functions with the credits
  slot hidden; they were not exercised in game.
