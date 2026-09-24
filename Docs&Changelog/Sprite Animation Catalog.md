# Sprite Battle-Animation Catalog (`a/0/9/0`)

Catalog of all 143 per-species "extra" battle-animation bytecode programs stored in NARC `a/0/9/0` (`base/root/a/0/9/0`). Each species' `data/SpriteOffsets.c` entry picks one program via `frontHeader.animation` (shown for the opponent / dex-panel "VRM" sprite) and one via `backHeader.animation` (shown for the player's own mon). These are transform programs, not frame playback -- they drive position, rotation, and scale on top of whatever sprite frames the species has.

## How this was generated

Every program was run through the reversed VM (`PKCalc/import/electrum/anim/anim_vm.mjs`) for a 10-second window, and the resulting per-tick transform curve (`dx`, `dy`, `rot`, `sx`, `sy`) was classified automatically:
- **Amplitude words** (tiny/small/moderate/large) are relative thresholds on pixel shift, degrees, or scale %, not hand-tuned per animation -- treat them as a rough visual-weight indicator, not an exact spec.
- **Timing** = ticks/ms until the transform settles and holds (all 143 programs are **one-shot** -- none loop continuously within the 10s window; the dex panel's own driver re-triggers them periodically for display purposes, matching how they only fire once per real send-out in-game).
- **Example Pokemon** are pulled directly from `data/SpriteOffsets.c`. Only animIds 0-23 are ever assigned as a **front** animation across the whole species roster -- those are the only ones actually visible as a PKCalc dex-panel VRM. animIds 24-142 exist as real, working programs but are currently only wired to species' **back** sprites (marked *(back-only)*), or not assigned to any species at all (marked *(unused)*).

| animId | bytes | behaviour | timing | example Pokemon |
|---:|---:|---|---|---|
| 0 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | Pikachu, Nidorina, Clefairy +41 more |
| 1 | 44 | moderate vertical bob (up and down) | one-shot, settles after ~19 ticks (317ms) | Ivysaur, Venusaur, Charmeleon +62 more |
| 2 | 96 | moderate vertical squash-stretch (height only, pulses to 0%) | one-shot, settles after ~20 ticks (333ms) | Bulbasaur, Caterpie, Weedle +946 more |
| 3 | 280 | large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~40 ticks (667ms) | Pidgeot, Alakazam, Haunter +27 more |
| 4 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~48 ticks (800ms) | Vileplume, Chansey, Marill +6 more |
| 5 | 44 | moderate horizontal sway (side to side) | one-shot, settles after ~19 ticks (317ms) | Metapod, Arbok, Exeggcute +27 more |
| 6 | 96 | moderate vertical bob (up and down) | one-shot, settles after ~12 ticks (200ms) | Squirtle, Kakuna, Rattata +20 more |
| 7 | 376 | large sway/bob combining horizontal and vertical movement; large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~34 ticks (567ms) | Victreebel, Farfetchd, Gengar +17 more |
| 8 | 44 | moderate vertical shift | one-shot, settles after ~20 ticks (333ms) | Beedrill, Zubat, Togetic +13 more |
| 9 | 80 | large horizontal sway (side to side); moderate rocking rotation (tilts back and forth, up to ±18°) | one-shot, settles after ~50 ticks (833ms) | Jigglypuff, Shellder, Tangela +18 more |
| 10 | 728 | large sway/bob combining horizontal and vertical movement; large rocking rotation (tilts back and forth, up to ±41°) | one-shot, settles after ~80 ticks (1333ms) | Pichu, Mareep, Sudowoodo +3 more |
| 11 | 392 | large sway/bob combining horizontal and vertical movement | one-shot, settles after ~24 ticks (400ms) | Charmander, Bellsprout, Magikarp +27 more |
| 12 | 728 | large sway/bob combining horizontal and vertical movement; moderate rocking rotation (tilts back and forth, up to ±19°) | one-shot, settles after ~40 ticks (667ms) | Marshtomp, Vigoroth, Cetoddle |
| 13 | 80 | large horizontal sway (side to side); moderate rocking rotation (tilts back and forth, up to ±18°) | one-shot, settles after ~50 ticks (833ms) | Venomoth, Magneton, Voltorb +45 more |
| 14 | 412 | moderate vertical bob (up and down) | one-shot, settles after ~33 ticks (550ms) | Blastoise, Machamp, Cloyster +22 more |
| 15 | 148 | moderate horizontal sway (side to side) | one-shot, settles after ~30 ticks (500ms) | Abra, Hypno, Mewtwo +10 more |
| 16 | 44 | moderate horizontal shift | one-shot, settles after ~40 ticks (667ms) | Seel, Krabby, Jynx +30 more |
| 17 | 80 | large vertical bob (up and down); moderate rocking rotation (tilts back and forth, up to ±18°) | one-shot, settles after ~50 ticks (833ms) | Butterfree, Golbat, Tentacruel +27 more |
| 18 | 80 | large horizontal squash-stretch (width only, pulses to 0%) | one-shot, settles after ~20 ticks (333ms) | Pidgeotto, Fearow, Vulpix +29 more |
| 19 | 192 | Static -- no movement, scaling, or rotation (transform stays at rest the whole time). | never animates | Raichu, Jolteon, Elekid +11 more |
| 20 | 80 | large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~20 ticks (333ms) | Tentacool, Grimer, Mr Mime +7 more |
| 21 | 96 | large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | Qwilfish, Linoone, Cherrim +1 more |
| 22 | 80 | large horizontal sway (side to side); moderate rocking rotation (tilts back and forth, up to ±18°) | one-shot, settles after ~50 ticks (833ms) | Sunkern, Remoraid, Porygon2 +15 more |
| 23 | 728 | large sway/bob combining horizontal and vertical movement; large rocking rotation (tilts back and forth, up to ±37°) | one-shot, settles after ~40 ticks (667ms) | Primeape, Banette |
| 24 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(back-only)* Machamp, Magikarp |
| 25 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(back-only)* Bidoof |
| 26 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(back-only)* Glameow |
| 27 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(back-only)* Bibarel |
| 28 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 29 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(back-only)* Budew |
| 30 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 31 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 32 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 33 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 34 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 35 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 36 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 37 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 38 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 39 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 40 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 41 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 42 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 43 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 44 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 45 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 46 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 47 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 48 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 49 | 132 | moderate vertical bob (up and down); large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 50 | 148 | large horizontal sway (side to side) | one-shot, settles after ~31 ticks (517ms) | *(back-only)* Parasect, Deoxys |
| 51 | 148 | large horizontal sway (side to side) | one-shot, settles after ~30 ticks (500ms) | *(back-only)* Yanma, Sableye |
| 52 | 148 | moderate horizontal sway (side to side) | one-shot, settles after ~30 ticks (500ms) | *(back-only)* Sneasel, Gardevoir, Yanmega +1 more |
| 53 | 44 | moderate horizontal sway (side to side) | one-shot, settles after ~10 ticks (167ms) | *(back-only)* Forretress, Skitty |
| 54 | 44 | moderate horizontal sway (side to side) | one-shot, settles after ~20 ticks (333ms) | *(back-only)* Dunsparce, Tyrogue |
| 55 | 44 | moderate horizontal sway (side to side) | one-shot, settles after ~40 ticks (667ms) | *(back-only)* Slowpoke, Slowbro, Seel +6 more |
| 56 | 44 | moderate vertical bob (up and down) | one-shot, settles after ~16 ticks (267ms) | *(back-only)* Ambipom, Skorupi |
| 57 | 44 | moderate vertical bob (up and down) | one-shot, settles after ~19 ticks (317ms) | *(back-only)* Nidoking, Staryu, Luxray +1 more |
| 58 | 44 | moderate vertical bob (up and down) | one-shot, settles after ~38 ticks (633ms) | *(unused)* |
| 59 | 44 | moderate horizontal sway (side to side) | one-shot, settles after ~16 ticks (267ms) | *(back-only)* Golem, Cyndaquil, Shroomish +5 more |
| 60 | 44 | moderate horizontal sway (side to side) | one-shot, settles after ~19 ticks (317ms) | *(back-only)* Nidorina, Golduck, Rapidash +8 more |
| 61 | 44 | moderate horizontal sway (side to side) | one-shot, settles after ~38 ticks (633ms) | *(back-only)* Metagross |
| 62 | 92 | large vertical squash-stretch (height only, pulses to 0%) | one-shot, settles after ~20 ticks (333ms) | *(unused)* |
| 63 | 80 | large vertical squash-stretch (height only, settles to 0%) | one-shot, settles after ~15 ticks (250ms) | *(back-only)* Xatu, Phanpy, Breloom |
| 64 | 80 | moderate vertical squash-stretch (height only, pulses to 0%) | one-shot, settles after ~20 ticks (333ms) | *(back-only)* Persian, Machoke, Ninjask +2 more |
| 65 | 92 | large horizontal squash-stretch (width only, pulses to 0%) | one-shot, settles after ~20 ticks (333ms) | *(unused)* |
| 66 | 80 | large horizontal squash-stretch (width only, settles to 0%) | one-shot, settles after ~15 ticks (250ms) | *(unused)* |
| 67 | 80 | moderate horizontal squash-stretch (width only, pulses to 0%) | one-shot, settles after ~20 ticks (333ms) | *(back-only)* Grimer, Cloyster, Dratini +1 more |
| 68 | 164 | large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~20 ticks (333ms) | *(back-only)* Shiftry |
| 69 | 152 | large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~15 ticks (250ms) | *(back-only)* Gengar, Sceptile, Exploud +1 more |
| 70 | 152 | moderate overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~20 ticks (333ms) | *(back-only)* Remoraid, Porygon2, Ho Oh +4 more |
| 71 | 412 | moderate vertical bob (up and down) | one-shot, settles after ~36 ticks (600ms) | *(back-only)* Arcanine, Pinsir, Vigoroth +6 more |
| 72 | 412 | moderate vertical bob (up and down) | one-shot, settles after ~35 ticks (583ms) | *(back-only)* Girafarig, Nosepass, Grumpig +2 more |
| 73 | 412 | moderate vertical bob (up and down) | one-shot, settles after ~35 ticks (583ms) | *(back-only)* Poliwrath, Snorlax, Armaldo +1 more |
| 74 | 420 | large sway/bob combining horizontal and vertical movement | one-shot, settles after ~18 ticks (300ms) | *(unused)* |
| 75 | 408 | large sway/bob combining horizontal and vertical movement | one-shot, settles after ~9 ticks (150ms) | *(back-only)* Gligar, Hitmontop, Treecko +2 more |
| 76 | 408 | large diagonal shift | one-shot, settles after ~18 ticks (300ms) | *(back-only)* Mantine, Smeargle, Lombre |
| 77 | 416 | large sway/bob combining horizontal and vertical movement | one-shot, settles after ~32 ticks (533ms) | *(back-only)* Bonsly, Gible, Glaceon |
| 78 | 404 | large sway/bob combining horizontal and vertical movement | one-shot, settles after ~24 ticks (400ms) | *(back-only)* Hitmonchan, Snorunt, Porygon Z |
| 79 | 404 | large sway/bob combining horizontal and vertical movement | one-shot, settles after ~32 ticks (533ms) | *(back-only)* Rattata, Kabuto, Blissey |
| 80 | 416 | moderate sway/bob combining horizontal and vertical movement | one-shot, settles after ~32 ticks (533ms) | *(back-only)* Doduo, Ledyba, Sunkern +3 more |
| 81 | 404 | moderate sway/bob combining horizontal and vertical movement | one-shot, settles after ~24 ticks (400ms) | *(back-only)* Clefable, Marill, Hoppip +4 more |
| 82 | 404 | moderate diagonal shift | one-shot, settles after ~31 ticks (517ms) | *(back-only)* Wooper, Beautifly, Numel |
| 83 | 460 | large sway/bob combining horizontal and vertical movement | one-shot, settles after ~48 ticks (800ms) | *(unused)* |
| 84 | 308 | large sway/bob combining horizontal and vertical movement | one-shot, settles after ~48 ticks (800ms) | *(back-only)* Butterfree, Vibrava, Banette +2 more |
| 85 | 308 | large diagonal shift | one-shot, settles after ~64 ticks (1067ms) | *(back-only)* Hypno, Dragonair |
| 86 | 76 | small rocking rotation (tilts back and forth, up to ±6°) | one-shot, settles after ~30 ticks (500ms) | *(back-only)* Cubone, Kangaskhan |
| 87 | 64 | small rocking rotation (tilts back and forth, up to ±6°) | one-shot, settles after ~30 ticks (500ms) | *(back-only)* Tentacool, Farfetchd, Drowzee +2 more |
| 88 | 64 | small rocking rotation (tilts back and forth, up to ±6°) | one-shot, settles after ~44 ticks (733ms) | *(back-only)* Jynx, Cacturne, Feebas +1 more |
| 89 | 280 | moderate overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~19 ticks (317ms) | *(back-only)* Flareon, Articuno, Murkrow +6 more |
| 90 | 280 | large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~20 ticks (333ms) | *(back-only)* Gastly, Lapras, Feraligatr +4 more |
| 91 | 280 | large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~40 ticks (667ms) | *(back-only)* Froslass |
| 92 | 220 | large horizontal sway (side to side) | one-shot, settles after ~25 ticks (417ms) | *(back-only)* Nidorino, Aerodactyl, Moltres +14 more |
| 93 | 220 | large horizontal sway (side to side) | one-shot, settles after ~23 ticks (383ms) | *(back-only)* Ivysaur, Electrode, Rhyhorn +9 more |
| 94 | 220 | moderate horizontal sway (side to side) | one-shot, settles after ~17 ticks (283ms) | *(back-only)* Wartortle, Omastar, Whiscash +3 more |
| 95 | 92 | moderate horizontal sway (side to side) | one-shot, settles after ~10 ticks (167ms) | *(back-only)* Magcargo, Entei, Blaziken +1 more |
| 96 | 92 | moderate horizontal shift | one-shot, settles after ~12 ticks (200ms) | *(back-only)* Slugma, Heatran |
| 97 | 92 | moderate horizontal shift | one-shot, settles after ~16 ticks (267ms) | *(back-only)* Magby |
| 98 | 92 | moderate horizontal sway (side to side) | one-shot, settles after ~10 ticks (167ms) | *(back-only)* Kingdra, Suicune |
| 99 | 92 | moderate horizontal shift | one-shot, settles after ~12 ticks (200ms) | *(unused)* |
| 100 | 92 | moderate horizontal shift | one-shot, settles after ~16 ticks (267ms) | *(unused)* |
| 101 | 92 | moderate horizontal sway (side to side) | one-shot, settles after ~10 ticks (167ms) | *(unused)* |
| 102 | 92 | moderate horizontal shift | one-shot, settles after ~12 ticks (200ms) | *(unused)* |
| 103 | 92 | moderate horizontal shift | one-shot, settles after ~16 ticks (267ms) | *(unused)* |
| 104 | 516 | small horizontal sway (side to side) | one-shot, settles after ~34 ticks (567ms) | *(back-only)* Raichu, Magneton, Zapdos +2 more |
| 105 | 272 | small horizontal sway (side to side) | one-shot, settles after ~19 ticks (317ms) | *(back-only)* Pikachu, Magnemite, Chinchou +9 more |
| 106 | 624 | small horizontal sway (side to side) | one-shot, settles after ~48 ticks (800ms) | *(back-only)* Electabuzz, Luxio, Magnezone |
| 107 | 208 | large sway/bob combining horizontal and vertical movement | one-shot, settles after ~32 ticks (533ms) | *(unused)* |
| 108 | 196 | large diagonal shift | one-shot, settles after ~24 ticks (400ms) | *(back-only)* Cherrim |
| 109 | 196 | large diagonal shift | one-shot, settles after ~32 ticks (533ms) | *(back-only)* Mime Jr, Croagunk |
| 110 | 104 | large sway/bob combining horizontal and vertical movement | one-shot, settles after ~24 ticks (400ms) | *(back-only)* Starmie, Vespiquen |
| 111 | 104 | large sway/bob combining horizontal and vertical movement | one-shot, settles after ~12 ticks (200ms) | *(unused)* |
| 112 | 104 | large sway/bob combining horizontal and vertical movement | one-shot, settles after ~18 ticks (300ms) | *(unused)* |
| 113 | 92 | large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~32 ticks (533ms) | *(unused)* |
| 114 | 80 | large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~16 ticks (267ms) | *(unused)* |
| 115 | 80 | large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~30 ticks (500ms) | *(unused)* |
| 116 | 96 | large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~48 ticks (800ms) | *(unused)* |
| 117 | 96 | large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 118 | 96 | large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~32 ticks (533ms) | *(unused)* |
| 119 | 168 | large horizontal shift; large horizontal squash-stretch (width only, pulses to 0%) | one-shot, settles after ~48 ticks (800ms) | *(unused)* |
| 120 | 156 | large horizontal shift; large horizontal squash-stretch (width only, pulses to 0%) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 121 | 156 | large horizontal shift; large horizontal squash-stretch (width only, pulses to 0%) | one-shot, settles after ~48 ticks (800ms) | *(unused)* |
| 122 | 320 | large horizontal shift; large horizontal squash-stretch (width only, pulses to 0%) | one-shot, settles after ~48 ticks (800ms) | *(unused)* |
| 123 | 308 | large horizontal shift; large horizontal squash-stretch (width only, pulses to 0%) | one-shot, settles after ~24 ticks (400ms) | *(unused)* |
| 124 | 308 | large horizontal shift; large horizontal squash-stretch (width only, pulses to 0%) | one-shot, settles after ~48 ticks (800ms) | *(unused)* |
| 125 | 96 | moderate vertical bob (up and down) | one-shot, settles after ~20 ticks (333ms) | *(back-only)* Nidoran M, Oddish, Exeggcute +1 more |
| 126 | 96 | moderate vertical bob (up and down) | one-shot, settles after ~12 ticks (200ms) | *(back-only)* Jigglypuff, Minun, Starly |
| 127 | 84 | moderate vertical bob (up and down) | one-shot, settles after ~8 ticks (133ms) | *(back-only)* Vulpix, Shellder, Corsola +1 more |
| 128 | 104 | moderate vertical bob (up and down); moderate rocking rotation (tilts back and forth, up to ±11°) | one-shot, settles after ~30 ticks (500ms) | *(back-only)* Flygon, Luvdisc |
| 129 | 104 | moderate vertical shift; moderate rocking rotation (tilts back and forth, up to ±11°) | one-shot, settles after ~50 ticks (833ms) | *(back-only)* Solrock, Mismagius, Mesprit |
| 130 | 104 | moderate vertical shift; moderate rocking rotation (tilts back and forth, up to ±11°) | one-shot, settles after ~60 ticks (1000ms) | *(back-only)* Koffing, Lumineon |
| 131 | 152 | moderate vertical bob (up and down); small rocking rotation (tilts back and forth, up to ±3°) | one-shot, settles after ~32 ticks (533ms) | *(back-only)* Kadabra, Tauros, Miltank +8 more |
| 132 | 152 | small vertical bob (up and down); tiny rotation to 0° | one-shot, settles after ~30 ticks (500ms) | *(back-only)* Venusaur, Machop, Lickitung +1 more |
| 133 | 152 | small vertical bob (up and down); tiny rocking rotation (tilts back and forth, up to ±1°) | one-shot, settles after ~28 ticks (467ms) | *(back-only)* Paras |
| 134 | 96 | moderate vertical bob (up and down) | one-shot, settles after ~12 ticks (200ms) | *(back-only)* Pidgey, Nidoran F, Venonat +8 more |
| 135 | 376 | large diagonal shift; large overall size pulse (grows/shrinks uniformly) | one-shot, settles after ~34 ticks (567ms) | *(back-only)* Poliwag, Tangela, Omanyte +4 more |
| 136 | 80 | large horizontal sway (side to side); moderate rocking rotation (tilts back and forth, up to ±15°) | one-shot, settles after ~50 ticks (833ms) | *(back-only)* Voltorb, Spinda, Lunatone +4 more |
| 137 | 768 | large diagonal shift; large rocking rotation (tilts back and forth, up to ±41°) | one-shot, settles after ~80 ticks (1333ms) | *(unused)* |
| 138 | 728 | large sway/bob combining horizontal and vertical movement; moderate rocking rotation (tilts back and forth, up to ±19°) | one-shot, settles after ~40 ticks (667ms) | *(back-only)* Mankey, Combee, Cherubi |
| 139 | 80 | large horizontal sway (side to side); moderate rocking rotation (tilts back and forth, up to ±11°) | one-shot, settles after ~50 ticks (833ms) | *(back-only)* Uxie |
| 140 | 80 | moderate vertical bob (up and down); small rocking rotation (tilts back and forth, up to ±5°) | one-shot, settles after ~50 ticks (833ms) | *(back-only)* Tentacruel, Weezing, Seadra +7 more |
| 141 | 80 | large horizontal sway (side to side); moderate rocking rotation (tilts back and forth, up to ±11°) | one-shot, settles after ~50 ticks (833ms) | *(back-only)* Weepinbell, Victreebel, Swablu +4 more |
| 142 | 728 | large sway/bob combining horizontal and vertical movement; moderate rocking rotation (tilts back and forth, up to ±19°) | one-shot, settles after ~40 ticks (667ms) | *(unused)* |
