# Electrum Yellow TM/HM Ground Ball

A yellow recolour of the vanilla Poke Ball ground-item sprite, for TM/HM pickups (the mainline
games do the same). One shared sprite: TMs and HMs use the same ball. It sits flush on the
ground exactly like the red ball, because it is the same format (see [[Mega Stones.md]] for the
billboard-model explanation).

## DSPRE values

| Field         | Value                                    |
|---------------|------------------------------------------|
| OW Entry ID   | **3916** (= 2500 + 1416)                 |
| Sprite ID     | **1713** (= 297 + 1416)                  |

Place it as an ordinary overworld object whose script gives the TM/HM, same as a red-ball item.

## How it works

- It borrows the follower slot of `SPECIES_GIGANTAMAX_SANDACONDA` (`3_1416`), a battle-only form
  that can never be a real follower. Gigantamax slots `3_1393`-`3_1415` are taken by Berry Plant
  types 35-57 (see [[Berry Plants.md]]), so Sandaconda is the first free one. **Check
  `data/graphics/overworlds/follower_override/` before reusing a slot:** files there overwrite
  the compiled sprite at pack time (a first attempt in the Venusaur slot silently built as a
  Kebia plant for this reason).
- Art lives in `data/graphics/sprites/gigantamax_sandaconda/`: `overworld.png` (16x16, the ball
  with a recoloured palette), `overworld.json` (verbatim copy of `0094.json`), and
  `overworld-monstarball.pal` (the old `tsure_poke` pals were removed).
- Palette entries 3/4/5 (the ball's red) are yellow: (239,204,92), (175,147,55), (92,83,55).
  Everything else (outline, white, greys) is unchanged.
- Table row in `src/field/overworld_table.c`: `MON_FOLLOWER_ENTRY(SPECIES_GIGANTAMAX_SANDACONDA, 0x0420)`.
  `0x0420` is the item ball's `callback_params` (billboard index 1).
- Generator (not repo-tracked): `/home/hgengine/stone_tools/make_tm_ball.py`; the original
  Sandaconda files are backed up in `~/backups/tm_ball/gigantamax_sandaconda/`.

## Changing the shade

Edit `HUE`/`VAL` in `make_tm_ball.py` and re-run it with `gigantamax_sandaconda
SPECIES_GIGANTAMAX_SANDACONDA`, but delete the table row first (the script refuses to add a second).
Or edit the three palette lines in `overworld-monstarball.pal` by hand.
