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
- Berry types 27-57 -> Arceus + Silvally overworld type-forms (Sprite ID 1824-1854, `3_1527`-`3_1557`)
- Sprite IDs 1855-1857 (`3_1558`-`3_1560`, 3 Silvally type-forms) are left untouched = spare.

**Caveat:** these follower slots are borrowed on the assumption that the player never walks
with an Unown / Arceus / Silvally follower. If any of those ever becomes an active follower
Pokemon in Electrum, it will render as a berry bush - re-home those types first.

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
|     35 | Kebia  | `ITEM_KEBIA_BERRY`  |     1-3 |      1832 |     4096 | `3_1535.btx0` |
|     36 | Shuca  | `ITEM_SHUCA_BERRY`  |     1-3 |      1833 |     4097 | `3_1536.btx0` |
|     37 | Coba   | `ITEM_COBA_BERRY`   |     1-3 |      1834 |     4098 | `3_1537.btx0` |
|     38 | Payapa | `ITEM_PAYAPA_BERRY` |     1-3 |      1835 |     4099 | `3_1538.btx0` |
|     39 | Tanga  | `ITEM_TANGA_BERRY`  |     1-3 |      1836 |     4100 | `3_1539.btx0` |
|     40 | Charti | `ITEM_CHARTI_BERRY` |     1-3 |      1837 |     4101 | `3_1540.btx0` |
|     41 | Kasib  | `ITEM_KASIB_BERRY`  |     1-3 |      1838 |     4102 | `3_1541.btx0` |
|     42 | Haban  | `ITEM_HABAN_BERRY`  |     1-3 |      1839 |     4103 | `3_1542.btx0` |
|     43 | Colbur | `ITEM_COLBUR_BERRY` |     1-3 |      1840 |     4104 | `3_1543.btx0` |
|     44 | Babiri | `ITEM_BABIRI_BERRY` |     1-3 |      1841 |     4105 | `3_1544.btx0` |
|     45 | Chilan | `ITEM_CHILAN_BERRY` |     1-3 |      1842 |     4106 | `3_1545.btx0` |
|     46 | Liechi | `ITEM_LIECHI_BERRY` |     1-2 |      1843 |     4107 | `3_1546.btx0` |
|     47 | Ganlon | `ITEM_GANLON_BERRY` |     1-2 |      1844 |     4108 | `3_1547.btx0` |
|     48 | Salac  | `ITEM_SALAC_BERRY`  |     1-2 |      1845 |     4109 | `3_1548.btx0` |
|     49 | Petaya | `ITEM_PETAYA_BERRY` |     1-2 |      1846 |     4110 | `3_1549.btx0` |
|     50 | Apicot | `ITEM_APICOT_BERRY` |     1-2 |      1847 |     4111 | `3_1550.btx0` |
|     51 | Lansat | `ITEM_LANSAT_BERRY` |     1-2 |      1848 |     4112 | `3_1551.btx0` |
|     52 | Starf  | `ITEM_STARF_BERRY`  |     1-2 |      1849 |     4113 | `3_1552.btx0` |
|     53 | Enigma | `ITEM_ENIGMA_BERRY` |     3-6 |      1850 |     4114 | `3_1553.btx0` |
|     54 | Micle  | `ITEM_MICLE_BERRY`  |     3-6 |      1851 |     4115 | `3_1554.btx0` |
|     55 | Custap | `ITEM_CUSTAP_BERRY` |     1-2 |      1852 |     4116 | `3_1555.btx0` |
|     56 | Jaboca | `ITEM_JABOCA_BERRY` |     1-2 |      1853 |     4117 | `3_1556.btx0` |
|     57 | Rowap  | `ITEM_ROWAP_BERRY`  |     1-2 |      1854 |     4118 | `3_1557.btx0` |

