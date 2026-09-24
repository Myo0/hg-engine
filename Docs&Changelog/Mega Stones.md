# Electrum Mega Stone Overworld Sprites

Cosmetic, static field-item sprites for Mega Stones -- 92 of the 93 real Mega/Primal forms in
this ROM (`SPECIES_MEGA_*`) now render their own stone icon as an overworld object, instead of
falling back to a Bulbasaur placeholder. This doc is the give-item side's reference for which
DSPRE "OW Entry" / Sprite ID goes with which Pokemon -- the flag/give-item scripting itself is
handled by the auto-flag-per-item overworld script pattern already used elsewhere, not by any
new engine code (contrast with [[Berry Plants.md]], which needed its own flag pool because a
berry type is repeatable).

## How it works

- **Source art**: each stone's icon is resized to 16x16 -- matching the vanilla ground item-ball
  sprite's real on-screen footprint (`data/graphics/overworlds/0094.png`, "monstarball": a fully
  opaque 16x16 with zero frame padding), so a mega stone reads as the same size as any other
  ground pickup -- then centered horizontally and **bottom-aligned** (flush with the frame's
  bottom edge, not vertically centered -- ground objects are drawn anchored at that "ground
  contact" line; the first pass centered vertically too and visibly floated above the ground)
  into a static 32x32 frame, duplicated across all 8 follower animation frames
  (`data/graphics/sprites/mega_<name>/overworld.png`, 32x256, 8bpp-indexed, <=16 colours +
  transparent index 0). Both `overworld-tsure_poke0.pal` / `overworld-tsure_poke1.pal` are
  identical -- there's no real "shiny" variant for an item icon, just the format's usual
  two-palette requirement. `overworld.json` is untouched -- it's the generic per-species template
  already scaffolded for every species in the repo, needs no edits.
- **Unlike the berries, no build-output override hack is needed.** Every Mega species already
  has a normal, wired build rule (`data/graphics/pokegra.mk`: `build/pokemonow/3_<species>.btx0:
  data/graphics/sprites/mega_<name>/overworld.png`), so editing the source PNG directly is the
  correct mechanism -- confirmed by grepping `overworld_table.c` for zero pre-existing
  `MON_FOLLOWER_ENTRY()` references to any `SPECIES_MEGA_*`/`SPECIES_PRIMAL_*` constant before
  adding these.
- **Wiring**: `src/field/overworld_table.c`'s `gOWTagToFileNum[]`, one
  `MON_FOLLOWER_ENTRY(SPECIES_MEGA_X, 0x0020)` line per stone (added right after the berry-plant
  block). `0x0020` = the same static/no-idle-hop callback value the berry-plant fix established
  (`SPRITE_TREE`'s graphics-info value) -- a property of the table entry, not the art, so it
  applies identically here.
- **No synthetic tag range**: because these slots were never claimed by anything before, each
  Entry ID is just the macro's ordinary `MON_OVERWORLD_TAG_START(2500) + species` value -- not a
  `BERRY_PLANT_TAG_START`-style block like the berries needed.

## Placing a stone in DSPRE

| DSPRE field                    | Value                                                                                                                                        |
| ------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------- |
| Overworld sprite ("Sprite ID") | the row's **Sprite ID** below                                                                                                                |
| "Entry ID" / OW Entry          | the row's **Entry ID** below                                                                                                                 |
| Movement                       | 0                                                                                                                                            |
| Type                           | None                                                                                                                                         |
| Script                         | whatever give-item overworld script pattern is already standard for this project (auto-flags per item -- see project notes, not engine code) |

## Stone table

`Sprite ID = 297 + species`, `Entry ID = 2500 + species` (the plain `MON_FOLLOWER_ENTRY` formula
-- no offset tricks). **Species numbers were verified against `data/graphics/pokegra.mk`'s actual
build rules, not assumed from `species.h` position** -- its `SPECIES_PLZA_MEGAS_START` header
comment says 1428, but the real value is 1427 (confirmed via `mega_garchomp_z` = species 1439,
`mega_excadrill` = species 1445 in the build rules). Classic block base (1076) was correct as
commented.

| Group       | Pokemon (Mega form) | Species constant            | Item                  | Sprite ID | Entry ID | Source art                                              |
| ----------- | ------------------- | --------------------------- | --------------------- | --------: | -------: | ------------------------------------------------------- |
| Classic     | Venusaurite         | `SPECIES_MEGA_VENUSAUR`     | `ITEM_VENUSAURITE`    |      1373 |     3576 | `data/graphics/sprites/mega_venusaur/overworld.png`     |
| Classic     | Charizardite X      | `SPECIES_MEGA_CHARIZARD_X`  | `ITEM_CHARIZARDITE_X` |      1374 |     3577 | `data/graphics/sprites/mega_charizard_x/overworld.png`  |
| Classic     | Charizardite Y      | `SPECIES_MEGA_CHARIZARD_Y`  | `ITEM_CHARIZARDITE_Y` |      1375 |     3578 | `data/graphics/sprites/mega_charizard_y/overworld.png`  |
| Classic     | Blastoisinite       | `SPECIES_MEGA_BLASTOISE`    | `ITEM_BLASTOISINITE`  |      1376 |     3579 | `data/graphics/sprites/mega_blastoise/overworld.png`    |
| Classic     | Beedrillite         | `SPECIES_MEGA_BEEDRILL`     | `ITEM_BEEDRILLITE`    |      1377 |     3580 | `data/graphics/sprites/mega_beedrill/overworld.png`     |
| Classic     | Pidgeotite          | `SPECIES_MEGA_PIDGEOT`      | `ITEM_PIDGEOTITE`     |      1378 |     3581 | `data/graphics/sprites/mega_pidgeot/overworld.png`      |
| Classic     | Alakazite           | `SPECIES_MEGA_ALAKAZAM`     | `ITEM_ALAKAZITE`      |      1379 |     3582 | `data/graphics/sprites/mega_alakazam/overworld.png`     |
| Classic     | Slowbronite         | `SPECIES_MEGA_SLOWBRO`      | `ITEM_SLOWBRONITE`    |      1380 |     3583 | `data/graphics/sprites/mega_slowbro/overworld.png`      |
| Classic     | Gengarite           | `SPECIES_MEGA_GENGAR`       | `ITEM_GENGARITE`      |      1381 |     3584 | `data/graphics/sprites/mega_gengar/overworld.png`       |
| Classic     | Kangaskhanite       | `SPECIES_MEGA_KANGASKHAN`   | `ITEM_KANGASKHANITE`  |      1382 |     3585 | `data/graphics/sprites/mega_kangaskhan/overworld.png`   |
| Classic     | Pinsirite           | `SPECIES_MEGA_PINSIR`       | `ITEM_PINSIRITE`      |      1383 |     3586 | `data/graphics/sprites/mega_pinsir/overworld.png`       |
| Classic     | Gyaradosite         | `SPECIES_MEGA_GYARADOS`     | `ITEM_GYARADOSITE`    |      1384 |     3587 | `data/graphics/sprites/mega_gyarados/overworld.png`     |
| Classic     | Aerodactylite       | `SPECIES_MEGA_AERODACTYL`   | `ITEM_AERODACTYLITE`  |      1385 |     3588 | `data/graphics/sprites/mega_aerodactyl/overworld.png`   |
| Classic     | Mewtwonite X        | `SPECIES_MEGA_MEWTWO_X`     | `ITEM_MEWTWONITE_X`   |      1386 |     3589 | `data/graphics/sprites/mega_mewtwo_x/overworld.png`     |
| Classic     | Mewtwonite Y        | `SPECIES_MEGA_MEWTWO_Y`     | `ITEM_MEWTWONITE_Y`   |      1387 |     3590 | `data/graphics/sprites/mega_mewtwo_y/overworld.png`     |
| Classic     | Ampharosite         | `SPECIES_MEGA_AMPHAROS`     | `ITEM_AMPHAROSITE`    |      1388 |     3591 | `data/graphics/sprites/mega_ampharos/overworld.png`     |
| Classic     | Steelixite          | `SPECIES_MEGA_STEELIX`      | `ITEM_STEELIXITE`     |      1389 |     3592 | `data/graphics/sprites/mega_steelix/overworld.png`      |
| Classic     | Scizorite           | `SPECIES_MEGA_SCIZOR`       | `ITEM_SCIZORITE`      |      1390 |     3593 | `data/graphics/sprites/mega_scizor/overworld.png`       |
| Classic     | Heracronite         | `SPECIES_MEGA_HERACROSS`    | `ITEM_HERACRONITE`    |      1391 |     3594 | `data/graphics/sprites/mega_heracross/overworld.png`    |
| Classic     | Houndoominite       | `SPECIES_MEGA_HOUNDOOM`     | `ITEM_HOUNDOOMINITE`  |      1392 |     3595 | `data/graphics/sprites/mega_houndoom/overworld.png`     |
| Classic     | Tyranitarite        | `SPECIES_MEGA_TYRANITAR`    | `ITEM_TYRANITARITE`   |      1393 |     3596 | `data/graphics/sprites/mega_tyranitar/overworld.png`    |
| Classic     | Sceptilite          | `SPECIES_MEGA_SCEPTILE`     | `ITEM_SCEPTILITE`     |      1394 |     3597 | `data/graphics/sprites/mega_sceptile/overworld.png`     |
| Classic     | Blazikenite         | `SPECIES_MEGA_BLAZIKEN`     | `ITEM_BLAZIKENITE`    |      1395 |     3598 | `data/graphics/sprites/mega_blaziken/overworld.png`     |
| Classic     | Swampertite         | `SPECIES_MEGA_SWAMPERT`     | `ITEM_SWAMPERTITE`    |      1396 |     3599 | `data/graphics/sprites/mega_swampert/overworld.png`     |
| Classic     | Gardevoirite        | `SPECIES_MEGA_GARDEVOIR`    | `ITEM_GARDEVOIRITE`   |      1397 |     3600 | `data/graphics/sprites/mega_gardevoir/overworld.png`    |
| Classic     | Sablenite           | `SPECIES_MEGA_SABLEYE`      | `ITEM_SABLENITE`      |      1398 |     3601 | `data/graphics/sprites/mega_sableye/overworld.png`      |
| Classic     | Mawilite            | `SPECIES_MEGA_MAWILE`       | `ITEM_MAWILITE`       |      1399 |     3602 | `data/graphics/sprites/mega_mawile/overworld.png`       |
| Classic     | Aggronite           | `SPECIES_MEGA_AGGRON`       | `ITEM_AGGRONITE`      |      1400 |     3603 | `data/graphics/sprites/mega_aggron/overworld.png`       |
| Classic     | Medichamite         | `SPECIES_MEGA_MEDICHAM`     | `ITEM_MEDICHAMITE`    |      1401 |     3604 | `data/graphics/sprites/mega_medicham/overworld.png`     |
| Classic     | Manectite           | `SPECIES_MEGA_MANECTRIC`    | `ITEM_MANECTITE`      |      1402 |     3605 | `data/graphics/sprites/mega_manectric/overworld.png`    |
| Classic     | Sharpedonite        | `SPECIES_MEGA_SHARPEDO`     | `ITEM_SHARPEDONITE`   |      1403 |     3606 | `data/graphics/sprites/mega_sharpedo/overworld.png`     |
| Classic     | Cameruptite         | `SPECIES_MEGA_CAMERUPT`     | `ITEM_CAMERUPTITE`    |      1404 |     3607 | `data/graphics/sprites/mega_camerupt/overworld.png`     |
| Classic     | Altarianite         | `SPECIES_MEGA_ALTARIA`      | `ITEM_ALTARIANITE`    |      1405 |     3608 | `data/graphics/sprites/mega_altaria/overworld.png`      |
| Classic     | Banettite           | `SPECIES_MEGA_BANETTE`      | `ITEM_BANETTITE`      |      1406 |     3609 | `data/graphics/sprites/mega_banette/overworld.png`      |
| Classic     | Absolite            | `SPECIES_MEGA_ABSOL`        | `ITEM_ABSOLITE`       |      1407 |     3610 | `data/graphics/sprites/mega_absol/overworld.png`        |
| Classic     | Glalitite           | `SPECIES_MEGA_GLALIE`       | `ITEM_GLALITITE`      |      1408 |     3611 | `data/graphics/sprites/mega_glalie/overworld.png`       |
| Classic     | Salamencite         | `SPECIES_MEGA_SALAMENCE`    | `ITEM_SALAMENCITE`    |      1409 |     3612 | `data/graphics/sprites/mega_salamence/overworld.png`    |
| Classic     | Metagrossite        | `SPECIES_MEGA_METAGROSS`    | `ITEM_METAGROSSITE`   |      1410 |     3613 | `data/graphics/sprites/mega_metagross/overworld.png`    |
| Classic     | Latiasite           | `SPECIES_MEGA_LATIAS`       | `ITEM_LATIASITE`      |      1411 |     3614 | `data/graphics/sprites/mega_latias/overworld.png`       |
| Classic     | Latiosite           | `SPECIES_MEGA_LATIOS`       | `ITEM_LATIOSITE`      |      1412 |     3615 | `data/graphics/sprites/mega_latios/overworld.png`       |
| Classic     | Rayquazite          | `SPECIES_MEGA_RAYQUAZA`     | `ITEM_RAYQUAZITE`     |        -- |       -- | **NO ART YET -- not wired, needs sourcing**             |
| Classic     | Lopunnite           | `SPECIES_MEGA_LOPUNNY`      | `ITEM_LOPUNNITE`      |      1414 |     3617 | `data/graphics/sprites/mega_lopunny/overworld.png`      |
| Classic     | Garchompite         | `SPECIES_MEGA_GARCHOMP`     | `ITEM_GARCHOMPITE`    |      1415 |     3618 | `data/graphics/sprites/mega_garchomp/overworld.png`     |
| Classic     | Lucarionite         | `SPECIES_MEGA_LUCARIO`      | `ITEM_LUCARIONITE`    |      1416 |     3619 | `data/graphics/sprites/mega_lucario/overworld.png`      |
| Classic     | Abomasite           | `SPECIES_MEGA_ABOMASNOW`    | `ITEM_ABOMASITE`      |      1417 |     3620 | `data/graphics/sprites/mega_abomasnow/overworld.png`    |
| Classic     | Galladite           | `SPECIES_MEGA_GALLADE`      | `ITEM_GALLADITE`      |      1418 |     3621 | `data/graphics/sprites/mega_gallade/overworld.png`      |
| Classic     | Audinite            | `SPECIES_MEGA_AUDINO`       | `ITEM_AUDINITE`       |      1419 |     3622 | `data/graphics/sprites/mega_audino/overworld.png`       |
| Classic     | Diancite            | `SPECIES_MEGA_DIANCIE`      | `ITEM_DIANCITE`       |      1420 |     3623 | `data/graphics/sprites/mega_diancie/overworld.png`      |
| Legends Z-A | Raichunite X        | `SPECIES_MEGA_RAICHU_X`     | `ITEM_RAICHUNITE_X`   |      1724 |     3927 | `data/graphics/sprites/mega_raichu_x/overworld.png`     |
| Legends Z-A | Raichunite Y        | `SPECIES_MEGA_RAICHU_Y`     | `ITEM_RAICHUNITE_Y`   |      1725 |     3928 | `data/graphics/sprites/mega_raichu_y/overworld.png`     |
| Legends Z-A | Clefablite          | `SPECIES_MEGA_CLEFABLE`     | `ITEM_CLEFABLITE`     |      1726 |     3929 | `data/graphics/sprites/mega_clefable/overworld.png`     |
| Legends Z-A | Victreebelite       | `SPECIES_MEGA_VICTREEBEL`   | `ITEM_VICTREEBELITE`  |      1727 |     3930 | `data/graphics/sprites/mega_victreebel/overworld.png`   |
| Legends Z-A | Starminite          | `SPECIES_MEGA_STARMIE`      | `ITEM_STARMINITE`     |      1728 |     3931 | `data/graphics/sprites/mega_starmie/overworld.png`      |
| Legends Z-A | Dragoninite         | `SPECIES_MEGA_DRAGONITE`    | `ITEM_DRAGONINITE`    |      1729 |     3932 | `data/graphics/sprites/mega_dragonite/overworld.png`    |
| Legends Z-A | Meganiumite         | `SPECIES_MEGA_MEGANIUM`     | `ITEM_MEGANIUMITE`    |      1730 |     3933 | `data/graphics/sprites/mega_meganium/overworld.png`     |
| Legends Z-A | Feraligite          | `SPECIES_MEGA_FERALIGATR`   | `ITEM_FERALIGITE`     |      1731 |     3934 | `data/graphics/sprites/mega_feraligatr/overworld.png`   |
| Legends Z-A | Skarmorite          | `SPECIES_MEGA_SKARMORY`     | `ITEM_SKARMORITE`     |      1732 |     3935 | `data/graphics/sprites/mega_skarmory/overworld.png`     |
| Legends Z-A | Chimechite          | `SPECIES_MEGA_CHIMECHO`     | `ITEM_CHIMECHITE`     |      1733 |     3936 | `data/graphics/sprites/mega_chimecho/overworld.png`     |
| Legends Z-A | Absolite Z          | `SPECIES_MEGA_ABSOL_Z`      | `ITEM_ABSOLITE_Z`     |      1734 |     3937 | `data/graphics/sprites/mega_absol_z/overworld.png`      |
| Legends Z-A | Staraptite          | `SPECIES_MEGA_STARAPTOR`    | `ITEM_STARAPTITE`     |      1735 |     3938 | `data/graphics/sprites/mega_staraptor/overworld.png`    |
| Legends Z-A | Garchompite Z       | `SPECIES_MEGA_GARCHOMP_Z`   | `ITEM_GARCHOMPITE_Z`  |      1736 |     3939 | `data/graphics/sprites/mega_garchomp_z/overworld.png`   |
| Legends Z-A | Lucarionite Z       | `SPECIES_MEGA_LUCARIO_Z`    | `ITEM_LUCARIONITE_Z`  |      1737 |     3940 | `data/graphics/sprites/mega_lucario_z/overworld.png`    |
| Legends Z-A | Froslassite         | `SPECIES_MEGA_FROSLASS`     | `ITEM_FROSLASSITE`    |      1738 |     3941 | `data/graphics/sprites/mega_froslass/overworld.png`     |
| Legends Z-A | Heatranite          | `SPECIES_MEGA_HEATRAN`      | `ITEM_HEATRANITE`     |      1739 |     3942 | `data/graphics/sprites/mega_heatran/overworld.png`      |
| Legends Z-A | Darkranite          | `SPECIES_MEGA_DARKRAI`      | `ITEM_DARKRANITE`     |      1740 |     3943 | `data/graphics/sprites/mega_darkrai/overworld.png`      |
| Legends Z-A | Emboarite           | `SPECIES_MEGA_EMBOAR`       | `ITEM_EMBOARITE`      |      1741 |     3944 | `data/graphics/sprites/mega_emboar/overworld.png`       |
| Legends Z-A | Excadrite           | `SPECIES_MEGA_EXCADRILL`    | `ITEM_EXCADRITE`      |      1742 |     3945 | `data/graphics/sprites/mega_excadrill/overworld.png`    |
| Legends Z-A | Scolipite           | `SPECIES_MEGA_SCOLIPEDE`    | `ITEM_SCOLIPITE`      |      1743 |     3946 | `data/graphics/sprites/mega_scolipede/overworld.png`    |
| Legends Z-A | Scraftinite         | `SPECIES_MEGA_SCRAFTY`      | `ITEM_SCRAFTINITE`    |      1744 |     3947 | `data/graphics/sprites/mega_scrafty/overworld.png`      |
| Legends Z-A | Eelektrossite       | `SPECIES_MEGA_EELEKTROSS`   | `ITEM_EELEKTROSSITE`  |      1745 |     3948 | `data/graphics/sprites/mega_eelektross/overworld.png`   |
| Legends Z-A | Chandelurite        | `SPECIES_MEGA_CHANDELURE`   | `ITEM_CHANDELURITE`   |      1746 |     3949 | `data/graphics/sprites/mega_chandelure/overworld.png`   |
| Legends Z-A | Golurkite           | `SPECIES_MEGA_GOLURK`       | `ITEM_GOLURKITE`      |      1747 |     3950 | `data/graphics/sprites/mega_golurk/overworld.png`       |
| Legends Z-A | Chesnaughtite       | `SPECIES_MEGA_CHESNAUGHT`   | `ITEM_CHESNAUGHTITE`  |      1748 |     3951 | `data/graphics/sprites/mega_chesnaught/overworld.png`   |
| Legends Z-A | Delphoxite          | `SPECIES_MEGA_DELPHOX`      | `ITEM_DELPHOXITE`     |      1749 |     3952 | `data/graphics/sprites/mega_delphox/overworld.png`      |
| Legends Z-A | Greninjite          | `SPECIES_MEGA_GRENINJA`     | `ITEM_GRENINJITE`     |      1750 |     3953 | `data/graphics/sprites/mega_greninja/overworld.png`     |
| Legends Z-A | Pyroarite           | `SPECIES_MEGA_PYROAR`       | `ITEM_PYROARITE`      |      1751 |     3954 | `data/graphics/sprites/mega_pyroar/overworld.png`       |
| Legends Z-A | Floettite           | `SPECIES_MEGA_FLOETTE`      | `ITEM_FLOETTITE`      |      1752 |     3955 | `data/graphics/sprites/mega_floette/overworld.png`      |
| Legends Z-A | Meowsticite         | `SPECIES_MEGA_MEOWSTIC`     | `ITEM_MEOWSTICITE`    |      1753 |     3956 | `data/graphics/sprites/mega_meowstic/overworld.png`     |
| Legends Z-A | Malamarite          | `SPECIES_MEGA_MALAMAR`      | `ITEM_MALAMARITE`     |      1755 |     3958 | `data/graphics/sprites/mega_malamar/overworld.png`      |
| Legends Z-A | Barbaracite         | `SPECIES_MEGA_BARBARACLE`   | `ITEM_BARBARACITE`    |      1756 |     3959 | `data/graphics/sprites/mega_barbaracle/overworld.png`   |
| Legends Z-A | Dragalgite          | `SPECIES_MEGA_DRAGALGE`     | `ITEM_DRAGALGITE`     |      1757 |     3960 | `data/graphics/sprites/mega_dragalge/overworld.png`     |
| Legends Z-A | Hawluchanite        | `SPECIES_MEGA_HAWLUCHA`     | `ITEM_HAWLUCHANITE`   |      1758 |     3961 | `data/graphics/sprites/mega_hawlucha/overworld.png`     |
| Legends Z-A | Zygardite           | `SPECIES_MEGA_ZYGARDE`      | `ITEM_ZYGARDITE`      |      1759 |     3962 | `data/graphics/sprites/mega_zygarde/overworld.png`      |
| Legends Z-A | Crabominite         | `SPECIES_MEGA_CRABOMINABLE` | `ITEM_CRABOMINITE`    |      1760 |     3963 | `data/graphics/sprites/mega_crabominable/overworld.png` |
| Legends Z-A | Golisopite          | `SPECIES_MEGA_GOLISOPOD`    | `ITEM_GOLISOPITE`     |      1761 |     3964 | `data/graphics/sprites/mega_golisopod/overworld.png`    |
| Legends Z-A | Drampanite          | `SPECIES_MEGA_DRAMPA`       | `ITEM_DRAMPANITE`     |      1762 |     3965 | `data/graphics/sprites/mega_drampa/overworld.png`       |
| Legends Z-A | Magearnite          | `SPECIES_MEGA_MAGEARNA`     | `ITEM_MAGEARNITE`     |      1763 |     3966 | `data/graphics/sprites/mega_magearna/overworld.png`     |
| Legends Z-A | Zeraorite           | `SPECIES_MEGA_ZERAORA`      | `ITEM_ZERAORITE`      |      1765 |     3968 | `data/graphics/sprites/mega_zeraora/overworld.png`      |
| Legends Z-A | Falinksite          | `SPECIES_MEGA_FALINKS`      | `ITEM_FALINKSITE`     |      1766 |     3969 | `data/graphics/sprites/mega_falinks/overworld.png`      |
| Legends Z-A | Scovillainite       | `SPECIES_MEGA_SCOVILLAIN`   | `ITEM_SCOVILLAINITE`  |      1767 |     3970 | `data/graphics/sprites/mega_scovillain/overworld.png`   |
| Legends Z-A | Glimmoranite        | `SPECIES_MEGA_GLIMMORA`     | `ITEM_GLIMMORANITE`   |      1768 |     3971 | `data/graphics/sprites/mega_glimmora/overworld.png`     |
| Legends Z-A | Tatsugirinite       | `SPECIES_MEGA_TATSUGIRI`    | `ITEM_TATSUGIRINITE`  |      1769 |     3972 | `data/graphics/sprites/mega_tatsugiri/overworld.png`    |
| Legends Z-A | Baxcaliberite       | `SPECIES_MEGA_BAXCALIBUR`   | `ITEM_BAXCALIBRITE`   |      1772 |     3975 | `data/graphics/sprites/mega_baxcalibur/overworld.png`   |

## Not in this table -- share their stone with a primary species above, no separate wiring

`SPECIES_MEGA_MEOWSTIC_FEMALE`, `SPECIES_MEGA_MAGEARNA_ORIGINAL`, `SPECIES_MEGA_TATSUGIRI_DROOPY`,
`SPECIES_MEGA_TATSUGIRI_STRETCHY` -- each represents the same physical stone item as its primary
counterpart in the table (Meowstic, Magearna, Tatsugiri), so there's no separate ground-pickup
sprite/entry for them.

## Source art provenance

- 45 Legends Z-A stones: hand-collected image (`overworld_mega_stones/transparent_stones.png`),
  already pre-cut and transparent.
- 45 Classic (XY/ORAS) stones: `pokemon.fandom.com/wiki/Category:Mega_Stone_sprites` (fetched via
  the MediaWiki API, `action=query&list=categorymembers`/`prop=imageinfo`), 24x24 each.
- 2 more Classic stones (Pinsirite, Lucarionite) not in that Fandom category: manually saved from
  `pokefarm.wiki` (Cloudflare-gated, not fetchable by automated tools).
- **Rayquazite still missing** -- `SPECIES_MEGA_RAYQUAZA` exists as a real, legal mega form in
  this ROM (not a canon exclusion), it's simply the one stone nobody has sourced art for yet.

## Related
[[project_mega_stone_ow_sprites]] -- the research/planning history behind this feature (memory).
[[Berry Plants.md]] -- the sibling feature this reuses the static-sprite/`0x0020` mechanism from.
