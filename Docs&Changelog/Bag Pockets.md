# Bag Pockets

The bag keeps the same screen, 3D bag model and item descriptions, but two pockets changed purpose:

| id | Pocket | Slots | Was |
|---|---|---|---|
| 0 | Items | 126 | Items (245) |
| 1 | Medicine | 40 | Medicine (40) |
| 2 | Poké Balls | 26 | Poké Balls (26) |
| 3 | TMs & HMs | 101 | TMs & HMs (101) |
| 4 | Berries | 64 | Berries (64) |
| 5 | **Held Items** | 117 | Mail (12) |
| 6 | **Mega Stones** | 96 | Battle Items (30) |
| 7 | Key Items | 39 | Key Items (92) |

Real Mail and the old Battle Items (X Attack, Guard Spec., ...) now live in the Items pocket. The in-battle bag still lists
the X-items: it classifies items by their own `battlePocket` flag, not by the field pocket.

## Which items go where

Both lists are plain text files, one `ITEM_*` per line:

- `data/bag_pockets/held_items.txt` - the 117 Held Items (type boosters, gems, Choice items, genes, Leftovers, ...)
- `data/bag_pockets/mega_stones.txt` - the 92 Mega Stones (Z-A stones included)

Everything else keeps the pocket written in `data/itemdata/itemdata.c` (`.fieldPocket`). To move an item:

1. edit the list file (add/remove the `ITEM_*` line; keep the counts in `scripts/bag_pockets_assign.py` in step)
2. run `python3 scripts/bag_pockets_assign.py` (rewrites only the `.fieldPocket` lines; `--check` only verifies)
3. rebuild. Held / Mega items must keep `fieldUseFunc = 0` and `battlePocket = NONE` (the script refuses otherwise).

Items already in a migrated save stay where they are (they still show up and work); only items added afterwards use the
new pocket. Re-sorting an existing save would need a new migration version.

## Slot sizes (do not change the total)

The bag lives inside the general save block, which is already at its page limit, so the bag must stay exactly **610 slots**
(609 pocket slots + 1 layout-marker slot). `NUM_BAG_*` in `include/constants/item.h` are the single source; a compile-time
check in `src/bag.c` fails the build if they stop adding up. To resize a pocket, take the slots from another one.

Also patch the bag UI's capacity tables, which are copies of the same numbers (in `bytereplacement`):
- `0015 022008B0` and `0015 022008C8` (overlay 15): capacities in pocket-id order, one byte each - `7E 28 1A 65 40 75 60 27`
- every pocket must be <= 165 (the bag UI stores at most 165 names per pocket)
- `0014 021F7D14` (overlay 14): pockets offered in the PC box "give item" bag (`00..06 FF`: everything but Key Items)

## Save migration (old saves keep working)

The old layout was Items 245 / Key 92 / TM 101 / Mail 12 / Medicine 40 / Berries 64 / Balls 26 / Battle 30. The new bag has
the same total size, so the rest of the save does not move and checksums stay valid. A new marker slot (`BAG_LAYOUT_MARKER_ID`
0xB46A, never a valid item id) sits just before the two registered-item slots. `Bag_MigrateLegacyLayout` (`src/bag.c`) runs
the first time anything touches a bag without the marker: it copies the old layout, clears the bag and re-adds every stack
by the pocket its item data says (berries/TMs re-sorted). A full target pocket spills into any free slot, so nothing is
discarded. The migrated bag is written back on the next in-game save. Every new bag (`Sav2_Bag_init`) starts with the marker.

The marker takes the 40th Key Items slot (Key Items is 39 slots) instead of using a script flag: it lives in the
bag itself, so it also works in battle/PC/Mart code that has no script state, and it can never get out of step with the bag.

### Testing it
- `python3 scripts/bag_migration_check.py <old.sav> [bag_dump.json]` predicts where every stack must land from the item data
  (and, given a dump taken from the emulator, compares it with the migrated in-RAM bag).
- `stone_tools/bag_rework/emu_bag.py <rom> <sav> <outdir>` (headless DeSmuME) boots a save copy, opens the bag from the
  X menu, dumps the bag and screenshots every pocket; add `save` to also save in game and export the new `.sav`.

## Tab icons

The Held Items (apple core) and Mega Stones (sphere) tab icons are drawn from `data/graphics/bag_tabs/held.txt` and
`mega.txt` (`.`=transparent, `W`/`b`/`l` = the three icon colours) and painted into the bag graphics NARC (`a/0/1/5`
member 51) after the ROM is assembled by `scripts/patch_bag_tabs.py`. Frame colours per pocket are in the OBJ palette
(member 48, unchanged: Held teal, Mega blue).

## Message glyphs

The small icons inside "put away in the <pocket> pocket" messages are font glyphs in the font NARC (`a/0/1/6`): charmap
`0116` (the old Mail envelope) is now the Held Items apple core and `011A` (the old Battle Items burst) is the Mega Stones
sphere. They are 11x11 masks (`data/graphics/bag_tabs/glyph_held.txt` and `glyph_mega.txt`: `X` body, `o` hole) rendered
into the three fonts that carry the pocket glyphs (message font members 0 and 1 with a shadow, member 4 outlined) by
`scripts/patch_pocket_glyphs.py` after the ROM is assembled. `python3 scripts/patch_pocket_glyphs.py --preview out.png`
draws them. The text side is `{COLOR 2}` + glyph in `data/text/custom/226.txt`.

## Not changed
- Mega Stones are not auto-sorted (berries and TMs are)
