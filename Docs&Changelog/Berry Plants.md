# Electrum Berry Plants

Pre-placed, one-time-harvest berry bushes. Not planted, no growth / RTC / watering (none of
pokeplatinum's berry-patch system is ported). Each plant shows the fully-grown Platinum bush
sprite, hands out a random amount of one specific berry when interacted with (per-berry
range, stronger berries are rarer), then is gone forever (its object Flag hides it on the
next map load).

**58 berry types = all 64 Gen-4 berries minus the 6 EV-lowering ones** (Pomeg, Kelpsy,
Qualot, Hondew, Grepa, Tamato). Each type can be placed as many times as you like, anywhere.

## How it works

- Field script command `0xD0` sub-command **8** (`SCRIPT_NEW_CMD_BERRY_TREE`, gated by
  `PLANT_BERRY_TREES` in `include/config.h`). Handler: `src/script_new_cmds.c`.
- Reusable script: **scr_seq file 3, scrdef 75** -> `callstd 2075` -> DSPRE **"Script 76"**
  (`scr_seq_0003_075_berry_tree` in `armips/scr_seq/scr_seq_00003_commonscript.s`). Plays
  `SEQ_ME_KINOMI`, buffers qty + item name, prints bank-40 text 138 (got) / 139 (empty) /
  140 (bag full).
- Two script vars drive a plant:
  - **`VAR_SPECIAL_x8009` = berry type** (`0x8009` column in the table). Picks the berry and
    its harvest range from `sBerryPlantBerry[]` in `src/script_new_cmds.c`. Every plant of a
    given berry uses the same value, the same **Entry ID**, and the same **Sprite ID**.
  - **`VAR_SPECIAL_x8008` = plant ID** (0..99). Unique per placed object. The harvested flag
    is `2700 - plantId`, so plant 0 -> flag 2700, plant 99 -> flag 2601. Allocate plant IDs
    from a pool the same way as any other Electrum flag (see `feedback_flag_allocation` /
    the header comment in `script_new_cmds.c`); 2600-2700 is the reserved window.
- Sprite: each berry type's **Sprite ID** is an unused follower gfx slot whose `btx0` is
  swapped for the berry bush by
  `data/graphics/overworlds/follower_override/3_<SpriteID-297>.btx0` (see `narcs.mk`;
  survives `make clean`). `callback_params = 0x0020` in `gOWTagToFileNum[]`
  (`src/field/overworld_table.c`) = `SPRITE_TREE` static behaviour so the follower idle-hop
  never runs.

## Placing a plant in DSPRE

To place a plant of berry **T** (row `0x8009` = T in the table):

| DSPRE field | Value |
|---|---|
| Overworld sprite ("Sprite ID") | the row's **Sprite ID** |
| "Entry ID" / OW Entry | the row's **Entry ID** |
| Movement | 0 |
| Type | None |
| Flag | `2700 - <this plant's ID>` |
| Script | `LockAll` / `FacePlayer` / `SetVar 0x8009, <T>` / `SetVar 0x8008, <plant ID>` / `CommonScript 2075` / `ReleaseAll` / `End` |

Pick a fresh **plant ID** (0..99) for every physical bush and set the object's **Flag** to
`2700 - plantId` to match. The berry type (`0x8009`) repeats freely; only the plant ID must
be unique. Nothing in the engine needs changing to add more plants -- it is pure DSPRE.

Raising the ceiling past 100 plants = bump `BERRY_TREE_FLAG_MAX` in `script_new_cmds.c`
(and re-check the low end stays >= 2600).

## Sprite-slot blocks

- Berry types 0-26  -> Unown overworld letter forms (Sprite ID 1782-1808, `3_1485`-`3_1511`)
- Berry types 27-34 -> Sprite ID 1824-1831, `3_1527`-`3_1534` (verified unused; see
  `BERRY_PLANT_ENTRY` comments in `overworld_table.c` for the gap at 1809-1823, previously
  used to re-home a Chople-berry collision with the "Following Pichu" event NPC sprite)
- Berry types 35-57 -> `SPECIES_GIGANTAMAX_*` overworld slots (Sprite ID 1690-1712,
  `3_1393`-`3_1415`). **Corrected 2026-10-01** - these were originally Sprite ID 1832-1854,
  which this doc mislabeled "Arceus + Silvally overworld type-forms." There is no Arceus
  entry in that range at all: 1832-1840 actually belong to the 9 `_OVERWORLD_FEMALE` /
  gender-difference species (Venusaur, Pikachu, Meganium, Wobbuffet, Steelix, Heracross,
  **Combee**, Hippopotas, Hippowdon), and 1841-1854 to 14 of the 17 Silvally type-forms.
  Any of those 9 species (or those 14 Silvally forms) rendered as a berry bush whenever used
  as a follower, not just near a placed plant - the override replaces the shared texture
  file, so it was a global collision, not a per-object one. Moved to Gigantamax forms
  instead, which can never be an active follower in any supported game mechanic (same
  rationale as the Unown/Silvally slots above).
- Sprite IDs 1855-1857 (`3_1558`-`3_1560`, Silvally Ice/Dragon/Dark) are left untouched =
  spare.

**Caveat:** these follower slots are borrowed on the assumption that the borrowed species
form can never become an active follower Pokemon in Electrum. If that assumption is ever
broken for Gigantamax, Unown, or the remaining Silvally type-forms, re-home those types
first - see the 2026-10-01 correction above for exactly how this bites.

**Recovering the 9 gender-form species' real sprites (2026-10-01):** `base/root/a/0/8/1`
(and the project's own `rom.nds`) had the Kasib-berry bush permanently baked over Combee-F's
slot by a previous build - this NARC is both the extraction source and the install target
for every build, so once a stale override got packed in there was nothing to revert it back.

First recovery attempt pulled data from `rom - Copy (9).nds` (2026-09-01, the last repo
backup before contamination). That data was structurally valid (real BTX0/TEX0, legitimate
`tsure_poke` internal texture naming) but never rendered in-game even in isolation - it was
some non-standard asset from this project's own history, not genuine baseline hg-engine data
(confirmed because its 9 gender-form entries were a different, inconsistent size from every
neighboring real species, while a true vanilla build gives all of them - and the 14 Silvally
entries, which matched the Sep-1 data exactly - a uniform size and structure).

The real fix: built `~/hg-engine-vanilla` (a pristine clone of `BluRosie/hg-engine` upstream,
maintained going forward at `/home/hgengine/hg-engine-vanilla` for exactly this kind of
recovery) against `rom_default2.nds`/`rom_vanilla.nds` - genuine pre-build 2010 commercial
ROM dumps, never touched by any hg-engine or Electrum build. Extracted species 1535-1557
(Sprite ID 1832-1854) from that build's own `base/root/a/0/8/1` and committed them as
permanent `follower_override/3_1535.btx0`-`3_1557.btx0` files, restoring the real art instead
of relying on `base/root` rather than removing the override block, so this survives
`make clean` and any future re-extraction regardless of whether this repo's own base ROM is
ever fixed. User-confirmed working in-game 2026-10-01.

## Harvest-amount tiers (tune `qmin`/`qmax` in `sBerryPlantBerry[]`, `src/script_new_cmds.c`)

| Range | Berries |
|:--:|---|
| 25-75 | Cheri, Chesto, Pecha, Rawst, Aspear, Leppa, Oran, Persim, Razz, Bluk, Nanab, Wepear, Pinap, Cornn, Magost, Rabuta, Nomel, Spelon, Pamtre, Watmel, Durin, Belue |
| 15-45 | Sitrus |
| 10-30 | Lum, Figy, Wiki, Mago, Aguav, Iapapa |
| 3-6 | Enigma, Micle |
| 1-3 | Occa, Passho, Wacan, Rindo, Yache, Chople, Kebia, Shuca, Coba, Payapa, Tanga, Charti, Kasib, Haban, Colbur, Babiri, Chilan |
| 1-2 | Liechi, Ganlon, Salac, Petaya, Apicot, Lansat, Starf, Custap, Jaboca, Rowap |

## Berry type table

`0x8009` = the `SetVar 0x8009` value. Entry ID / Sprite ID / btx0 are shared by every plant
of that berry.

| 0x8009 | Berry  | Item constant       | Harvest | Sprite ID | Entry ID | btx0          |
|-------:|--------|---------------------|--------:|----------:|---------:|---------------|
|      0 | Cheri  | `ITEM_CHERI_BERRY`  |   25-75 |      1782 |     4061 | `3_1485.btx0` |
|      1 | Chesto | `ITEM_CHESTO_BERRY` |   25-75 |      1783 |     4062 | `3_1486.btx0` |
|      2 | Pecha  | `ITEM_PECHA_BERRY`  |   25-75 |      1784 |     4063 | `3_1487.btx0` |
|      3 | Rawst  | `ITEM_RAWST_BERRY`  |   25-75 |      1785 |     4064 | `3_1488.btx0` |
|      4 | Aspear | `ITEM_ASPEAR_BERRY` |   25-75 |      1786 |     4065 | `3_1489.btx0` |
|      5 | Leppa  | `ITEM_LEPPA_BERRY`  |   25-75 |      1787 |     4066 | `3_1490.btx0` |
|      6 | Oran   | `ITEM_ORAN_BERRY`   |   25-75 |      1788 |     4067 | `3_1491.btx0` |
|      7 | Persim | `ITEM_PERSIM_BERRY` |   25-75 |      1789 |     4068 | `3_1492.btx0` |
|      8 | Lum    | `ITEM_LUM_BERRY`    |   10-30 |      1790 |     4069 | `3_1493.btx0` |
|      9 | Sitrus | `ITEM_SITRUS_BERRY` |   15-45 |      1791 |     4070 | `3_1494.btx0` |
|     10 | Figy   | `ITEM_FIGY_BERRY`   |   10-30 |      1792 |     4071 | `3_1495.btx0` |
|     11 | Wiki   | `ITEM_WIKI_BERRY`   |   10-30 |      1793 |     4072 | `3_1496.btx0` |
|     12 | Mago   | `ITEM_MAGO_BERRY`   |   10-30 |      1794 |     4073 | `3_1497.btx0` |
|     13 | Aguav  | `ITEM_AGUAV_BERRY`  |   10-30 |      1795 |     4074 | `3_1498.btx0` |
|     14 | Iapapa | `ITEM_IAPAPA_BERRY` |   10-30 |      1796 |     4075 | `3_1499.btx0` |
|     15 | Razz   | `ITEM_RAZZ_BERRY`   |   25-75 |      1797 |     4076 | `3_1500.btx0` |
|     16 | Bluk   | `ITEM_BLUK_BERRY`   |   25-75 |      1798 |     4077 | `3_1501.btx0` |
|     17 | Nanab  | `ITEM_NANAB_BERRY`  |   25-75 |      1799 |     4078 | `3_1502.btx0` |
|     18 | Wepear | `ITEM_WEPEAR_BERRY` |   25-75 |      1800 |     4079 | `3_1503.btx0` |
|     19 | Pinap  | `ITEM_PINAP_BERRY`  |   25-75 |      1801 |     4080 | `3_1504.btx0` |
|     20 | Cornn  | `ITEM_CORNN_BERRY`  |   25-75 |      1802 |     4081 | `3_1505.btx0` |
|     21 | Magost | `ITEM_MAGOST_BERRY` |   25-75 |      1803 |     4082 | `3_1506.btx0` |
|     22 | Rabuta | `ITEM_RABUTA_BERRY` |   25-75 |      1804 |     4083 | `3_1507.btx0` |
|     23 | Nomel  | `ITEM_NOMEL_BERRY`  |   25-75 |      1805 |     4084 | `3_1508.btx0` |
|     24 | Spelon | `ITEM_SPELON_BERRY` |   25-75 |      1806 |     4085 | `3_1509.btx0` |
|     25 | Pamtre | `ITEM_PAMTRE_BERRY` |   25-75 |      1807 |     4086 | `3_1510.btx0` |
|     26 | Watmel | `ITEM_WATMEL_BERRY` |   25-75 |      1808 |     4087 | `3_1511.btx0` |
|     27 | Durin  | `ITEM_DURIN_BERRY`  |   25-75 |      1824 |     4088 | `3_1527.btx0` |
|     28 | Belue  | `ITEM_BELUE_BERRY`  |   25-75 |      1825 |     4089 | `3_1528.btx0` |
|     29 | Occa   | `ITEM_OCCA_BERRY`   |     1-3 |      1826 |     4090 | `3_1529.btx0` |
|     30 | Passho | `ITEM_PASSHO_BERRY` |     1-3 |      1827 |     4091 | `3_1530.btx0` |
|     31 | Wacan  | `ITEM_WACAN_BERRY`  |     1-3 |      1828 |     4092 | `3_1531.btx0` |
|     32 | Rindo  | `ITEM_RINDO_BERRY`  |     1-3 |      1829 |     4093 | `3_1532.btx0` |
|     33 | Yache  | `ITEM_YACHE_BERRY`  |     1-3 |      1830 |     4094 | `3_1533.btx0` |
|     34 | Chople | `ITEM_CHOPLE_BERRY` |     1-3 |      1831 |     4095 | `3_1534.btx0` |
|     35 | Kebia  | `ITEM_KEBIA_BERRY`  |     1-3 |      1690 |     4096 | `3_1393.btx0` |
|     36 | Shuca  | `ITEM_SHUCA_BERRY`  |     1-3 |      1691 |     4097 | `3_1394.btx0` |
|     37 | Coba   | `ITEM_COBA_BERRY`   |     1-3 |      1692 |     4098 | `3_1395.btx0` |
|     38 | Payapa | `ITEM_PAYAPA_BERRY` |     1-3 |      1693 |     4099 | `3_1396.btx0` |
|     39 | Tanga  | `ITEM_TANGA_BERRY`  |     1-3 |      1694 |     4100 | `3_1397.btx0` |
|     40 | Charti | `ITEM_CHARTI_BERRY` |     1-3 |      1695 |     4101 | `3_1398.btx0` |
|     41 | Kasib  | `ITEM_KASIB_BERRY`  |     1-3 |      1696 |     4102 | `3_1399.btx0` |
|     42 | Haban  | `ITEM_HABAN_BERRY`  |     1-3 |      1697 |     4103 | `3_1400.btx0` |
|     43 | Colbur | `ITEM_COLBUR_BERRY` |     1-3 |      1698 |     4104 | `3_1401.btx0` |
|     44 | Babiri | `ITEM_BABIRI_BERRY` |     1-3 |      1699 |     4105 | `3_1402.btx0` |
|     45 | Chilan | `ITEM_CHILAN_BERRY` |     1-3 |      1700 |     4106 | `3_1403.btx0` |
|     46 | Liechi | `ITEM_LIECHI_BERRY` |     1-2 |      1701 |     4107 | `3_1404.btx0` |
|     47 | Ganlon | `ITEM_GANLON_BERRY` |     1-2 |      1702 |     4108 | `3_1405.btx0` |
|     48 | Salac  | `ITEM_SALAC_BERRY`  |     1-2 |      1703 |     4109 | `3_1406.btx0` |
|     49 | Petaya | `ITEM_PETAYA_BERRY` |     1-2 |      1704 |     4110 | `3_1407.btx0` |
|     50 | Apicot | `ITEM_APICOT_BERRY` |     1-2 |      1705 |     4111 | `3_1408.btx0` |
|     51 | Lansat | `ITEM_LANSAT_BERRY` |     1-2 |      1706 |     4112 | `3_1409.btx0` |
|     52 | Starf  | `ITEM_STARF_BERRY`  |     1-2 |      1707 |     4113 | `3_1410.btx0` |
|     53 | Enigma | `ITEM_ENIGMA_BERRY` |     3-6 |      1708 |     4114 | `3_1411.btx0` |
|     54 | Micle  | `ITEM_MICLE_BERRY`  |     3-6 |      1709 |     4115 | `3_1412.btx0` |
|     55 | Custap | `ITEM_CUSTAP_BERRY` |     1-2 |      1710 |     4116 | `3_1413.btx0` |
|     56 | Jaboca | `ITEM_JABOCA_BERRY` |     1-2 |      1711 |     4117 | `3_1414.btx0` |
|     57 | Rowap  | `ITEM_ROWAP_BERRY`  |     1-2 |      1712 |     4118 | `3_1415.btx0` |

Oran Berry (Route 31) Flag 2700 0x8008 - 0
Cheri Berry (Route 31) Flag 2699 0x8008 - 1
Pecha Berry (Route 31) Flag 2698 0x8008 - 2
Chesto Berry (Route 31) Flag 2697 0x8008 - 3
Persim Berry (Route 32) Flag 2696 0x8008 - 4
Rawst Berry (Route 32) Flag 2695 0x8008 - 5
Oran Berry (Route 33) Flag 2694 0x8008 - 6
Leppa Berry (Route 33) Flag 2693 0x8008 - 7
Sitrus Berry (Route 34) Flag 2692 0x8008 - 8
Oran Berry (Route 34) Flag 2691 0x8008 - 9
Aspear Berry (Route 34) Flag 2690 0x8008 - 10
Pecha Berry (Route 36) Flag 2689 0x8008 - 11
Chesto Berry (Route 36) Flag 2688 0x8008 - 12
Sitrus Berry (Route 38) Flag 2687 0x8008 - 13
Sitrus Berry (Route 38) Flag 2686 0x8008 - 14
Lum Berry (Route 48) Flag 2685 0x8008 - 15
Persim Berry (Route 48) Flag 2684 0x8008 - 16
Sitrus Berry (Route 42) Flag 2683 0x8008 - 17
Lansat Berry (Route 42) Flag 2682 0x8008 - 18
Starf Berry (Route 42) Flag 2681 0x8008 - 19