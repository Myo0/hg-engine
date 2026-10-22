# Frontier Brain intro (native Battle Frontier VS screen, tied to the Brain trainer classes)

Every trainer battle against a Frontier Brain class plays the real Battle Frontier "Frontier Brain" intro: the scene dims, a horizontal band
opens with the VS logo and the purple zig-zag background, the Brain's bust slides in from the right, the Brain's name shows, white flash, battle.
It is the game's own code (overlay 80, `FrontierBrainIntro_Start`); this feature only runs it as a small standalone application. No script
changes are needed: the intro is chosen by trainer class, exactly like the Gym Leader VS screens.

| Trainer class | Brain shown (table number) |
|---|---|
| `TRAINERCLASS_TOWER_TYCOON` | Palmer (1) |
| `TRAINERCLASS_FACTORY_HEAD` | Thorton (2) |
| `TRAINERCLASS_CASTLE_VALET` | Darach & Caitlin (4) |
| `TRAINERCLASS_HALL_MATRON` | Argenta (5) |
| `TRAINERCLASS_ARCADE_STAR` | Dahlia (6) |

Config switch: `FRONTIER_BRAIN_INTRO` in `include/config.h`. With it off the old Gym-Leader-style Brain screens (`src/vs_screen.c`) are used again.

## How a battle runs now

A trainer battle is `transition effect -> leave overworld -> Task_StartBattle` (encounter.c). Two hooks:

1. **Transition effect**: the five Brain classes keep their battle-music combo (`SEQ_GS_BA_BRAIN`) and effect ids 0x31-0x35, but those ids now use
   `VsScreen_NullGetter` (`src/vs_screen.c`): nothing visible, it just lets the transition start the Brain music at once and end in one frame.
2. **`Task_StartBattle`** (arm9 `0x02050660`, hooked through the `hooks` file) is replaced by `Task_StartBattle_Hook` (`src/frontier_intro.c`).
   For a Brain class (opponent slot 1 or 3) it first launches the intro application and waits for it, then does what the vanilla task does
   (`Battle_LaunchApp`). The overworld is already unloaded at that point, so there is no restore, fade-in or second transition between the intro and the battle.

The intro app (`src/frontier_intro.c`, resident in overlay 129 because the field overlays are unloaded while it runs) copies the part of the
game's own `FrontierMap_Init` / `FrontierMap_Free` that the intro needs and reuses the Frontier map's functions (VRAM/BG layout, sprite
system, VBlank) through a fake map block. The scene behind the band is the overworld's last 3D frame, dimmed like the Gym Leader screen;
the screens are handed to the battle fully black.

## Other changes

- `rom.ld`: ~35 vanilla function addresses (list at the end of the file) harvested from the ROM, see below.
- `scripts/patch_vs_brain_sprites.py --revert`, used by the Makefile while `FRONTIER_BRAIN_INTRO` is defined: the old Gym-Leader-style Brain screens
  needed the five Brain busts in NARC `a/1/0/9` rewritten to another OBJ mapping; the native intro needs the original art. The revert is exact
  (verified byte-for-byte against the pristine archive).
- `tools/source/trainerdatagen/trainer_data_gen.c`: the generated trainer-name bank 729 leaves out the `{TRNAME}` marker for trainer ids 707-711, as the
  vanilla ROM does. The intro prints those names with the ordinary text renderer, which cannot draw the marker. These five ids are the
  Frontier-block name carriers; the Brains fought in the overworld use their own ids.
- Test aid: commonscript 2078 (`std_frontier_intro_test`) starts the battle against Argenta (trainer 221); `FRONTIER_BRAIN_INTRO_DEBUG_TRIGGER`
  (off by default) makes the R button run it.

## Known differences from the Frontier's own screen

- The scene behind the band is the overworld's last 3D frame, dimmed; the player and NPC sprites are not shown (the field is unloaded while the app runs).
- Overlay 129 has only ~400 bytes free after this feature.

## How the addresses were found

`/home/hgengine/frontier_tools/harvest.py` pairs the function names in the pret decomp's assembly with the real branch targets decoded from the
vanilla ROM at the same spot (it reproduced every address `rom.ld` already had). `Task_StartBattle` itself was found by its call signature
(`find_startbattle.py`) and confirmed against the decomp's C. `run_harvest.sh`, `ovl.py`, `sym.py`, `emu_intro.py` (headless DeSmuME run with
screenshots, assertion capture and register dumps) are in the same folder.
