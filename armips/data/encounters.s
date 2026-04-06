.nds
.thumb

.include "armips/include/macros.s"

.include "asm/include/species.inc"

// Each encounter data has been labeled with the area it gets used.
// Some are labeled ???, these are most likely not used.

encounterdata   0   // New Bark Town

// ENCOUNTER PERCENTS:
// walklevels specifies the levels of each slot.  each slot gets its own individual level without a range, which is different compared to the encounter format of later entries.
// replace "pokemon SPECIES_*" with "monwithform SPECIES_*, formid" to get the specific form of a pokemon.  if i want a galarian darumaka, i'd put "monwithform SPECIES_DARUMAKA, 1"
// probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_LANTURN, 32, 38
encounter SPECIES_KINGLER, 32, 38
encounter SPECIES_STARMIE, 32, 38
encounter SPECIES_WUGTRIO, 32, 38
encounter SPECIES_LAPRAS, 32, 38

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_TENTACOOL, 10, 10
encounter SPECIES_TENTACOOL, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_CHINCHOU, 20, 20
encounter SPECIES_SHELLDER, 20, 20
encounter SPECIES_CHINCHOU, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_CLAMPERL, 3, 6
encounter SPECIES_TIRTOUGA, 2, 4
encounter SPECIES_SHELLDER, 5, 6
encounter SPECIES_AZURILL, 6, 6
encounter SPECIES_PIPLUP, 5, 5

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata   1   // Route 29

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 3, 4, 3, 3, 5, 4, 4, 4, 5, 5, 5, 3

// morning encounter slots
pokemon SPECIES_PIDGEY
pokemon SPECIES_FLETCHLING
pokemon SPECIES_STARLY
pokemon SPECIES_ROCKRUFF
pokemon SPECIES_MAREEP
pokemon SPECIES_POOCHYENA
monwithform SPECIES_ZIGZAGOON, 1
pokemon SPECIES_STARLY
pokemon SPECIES_AIPOM
pokemon SPECIES_TAILLOW
pokemon SPECIES_RIOLU
pokemon SPECIES_RALTS

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_PIDGEY
pokemon SPECIES_FLETCHLING
pokemon SPECIES_STARLY
pokemon SPECIES_ROCKRUFF
pokemon SPECIES_MAREEP
pokemon SPECIES_POOCHYENA
monwithform SPECIES_ZIGZAGOON, 1
pokemon SPECIES_STARLY
pokemon SPECIES_AIPOM
pokemon SPECIES_TAILLOW
pokemon SPECIES_RIOLU
pokemon SPECIES_RALTS

// night encounter slots
pokemon SPECIES_PIDGEY
pokemon SPECIES_FLETCHLING
pokemon SPECIES_STARLY
pokemon SPECIES_ROCKRUFF
pokemon SPECIES_MAREEP
pokemon SPECIES_POOCHYENA
monwithform SPECIES_ZIGZAGOON, 1
pokemon SPECIES_STARLY
pokemon SPECIES_AIPOM
pokemon SPECIES_TAILLOW
pokemon SPECIES_RIOLU
pokemon SPECIES_RALTS

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_PIDGEY
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata   2   // Cherrygrove City

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 100
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_SEADRA, 33, 34
encounter SPECIES_SHARPEDO, 35, 37
encounter SPECIES_PIDGEOT, 34, 37
encounter SPECIES_SEALEO, 33, 35
encounter SPECIES_SEALEO, 37, 37

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_KRABBY, 10, 10
encounter SPECIES_KRABBY, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_CORSOLA, 20, 20
encounter SPECIES_KRABBY, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_CHINCHOU, 3, 6
encounter SPECIES_TYMPOLE, 4, 6
encounter SPECIES_SQUIRTLE, 5, 6
encounter SPECIES_MAGIKARP, 6, 6
encounter SPECIES_MAGIKARP, 4, 6

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata   3   // Route 30

walkrate 25
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 5, 5, 6, 6, 7, 7, 7, 6, 6, 6, 5, 5

// morning encounter slots
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_LOTAD
pokemon SPECIES_SCATTERBUG
pokemon SPECIES_SCATTERBUG
pokemon SPECIES_YAMPER
pokemon SPECIES_YAMPER
pokemon SPECIES_ZUBAT
pokemon SPECIES_KARRABLAST
pokemon SPECIES_BUDEW
pokemon SPECIES_BUDEW
pokemon SPECIES_CHIKORITA
pokemon SPECIES_CHIKORITA

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_LOTAD
pokemon SPECIES_SCATTERBUG
pokemon SPECIES_SCATTERBUG
pokemon SPECIES_YAMPER
pokemon SPECIES_YAMPER
pokemon SPECIES_ZUBAT
pokemon SPECIES_KARRABLAST
pokemon SPECIES_BUDEW
pokemon SPECIES_BUDEW
pokemon SPECIES_CHIKORITA
pokemon SPECIES_CHIKORITA

// night encounter slots
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_LOTAD
pokemon SPECIES_SCATTERBUG
pokemon SPECIES_SCATTERBUG
pokemon SPECIES_YAMPER
pokemon SPECIES_YAMPER
pokemon SPECIES_ZUBAT
pokemon SPECIES_KARRABLAST
pokemon SPECIES_BUDEW
pokemon SPECIES_BUDEW
pokemon SPECIES_CHIKORITA
pokemon SPECIES_CHIKORITA

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_SHARPEDO, 35, 35
encounter SPECIES_CORVIKNIGHT, 35, 35
encounter SPECIES_PALPITOAD, 35, 35
encounter SPECIES_PALPITOAD, 35, 35
encounter SPECIES_PALPITOAD, 35, 35

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_POLIWAG, 10, 10
encounter SPECIES_POLIWAG, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_BARBOACH, 6, 7
encounter SPECIES_KRABBY, 7, 7
encounter SPECIES_CARVANHA, 7, 7
encounter SPECIES_CARVANHA, 7, 7
encounter SPECIES_CARVANHA, 7, 7

// swarm grass
pokemon SPECIES_PIDGEY
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata   4   // Route 31

walkrate 25
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 7, 6, 6, 6, 8, 7, 8, 8, 8, 8, 7, 7

// morning encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_BOUNSWEET
pokemon SPECIES_SMOLIV
pokemon SPECIES_GOSSIFLEUR
pokemon SPECIES_ABRA
pokemon SPECIES_SHROOMISH
pokemon SPECIES_POOCHYENA
pokemon SPECIES_POOCHYENA
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_ARON
pokemon SPECIES_ARON

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_SHINX
pokemon SPECIES_BOUNSWEET
pokemon SPECIES_SMOLIV
pokemon SPECIES_GOSSIFLEUR
pokemon SPECIES_ABRA
pokemon SPECIES_SHROOMISH
pokemon SPECIES_POOCHYENA
pokemon SPECIES_POOCHYENA
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_ARON
pokemon SPECIES_ARON

// night encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_BOUNSWEET
pokemon SPECIES_SMOLIV
pokemon SPECIES_GOSSIFLEUR
pokemon SPECIES_ABRA
pokemon SPECIES_SHROOMISH
pokemon SPECIES_POOCHYENA
pokemon SPECIES_POOCHYENA
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_ARON
pokemon SPECIES_ARON

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_DREDNAW, 36, 36
encounter SPECIES_LANTURN, 36, 36
encounter SPECIES_LANTURN, 36, 36
encounter SPECIES_LANTURN, 36, 36
encounter SPECIES_LANTURN, 36, 36

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_POLIWAG, 10, 10
encounter SPECIES_POLIWAG, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_PSYDUCK, 8, 8
encounter SPECIES_CLAMPERL, 8, 8
encounter SPECIES_CHINCHOU, 8, 8
encounter SPECIES_CHINCHOU, 8, 8
encounter SPECIES_CHINCHOU, 8, 8

// swarm grass
pokemon SPECIES_PIDGEY
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata   5   // Violet City

walkrate 25
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 8, 7, 9, 9, 7, 7, 5, 5, 9, 8, 8, 8

// morning encounter slots
pokemon SPECIES_PONYTA
pokemon SPECIES_SLUGMA
pokemon SPECIES_MAGBY
pokemon SPECIES_MAGBY
pokemon SPECIES_GROWLITHE
pokemon SPECIES_GROWLITHE
pokemon SPECIES_CYNDAQUIL
pokemon SPECIES_TEPIG
monwithform SPECIES_GROWLITHE, 1
pokemon SPECIES_SIZZLIPEDE
pokemon SPECIES_SIZZLIPEDE
pokemon SPECIES_SIZZLIPEDE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_PONYTA
pokemon SPECIES_SLUGMA
pokemon SPECIES_MAGBY
pokemon SPECIES_MAGBY
pokemon SPECIES_GROWLITHE
pokemon SPECIES_GROWLITHE
pokemon SPECIES_CYNDAQUIL
pokemon SPECIES_TEPIG
monwithform SPECIES_GROWLITHE, 1
pokemon SPECIES_SIZZLIPEDE
pokemon SPECIES_SIZZLIPEDE
pokemon SPECIES_SIZZLIPEDE

// night encounter slots
pokemon SPECIES_PONYTA
pokemon SPECIES_SLUGMA
pokemon SPECIES_MAGBY
pokemon SPECIES_MAGBY
pokemon SPECIES_GROWLITHE
pokemon SPECIES_GROWLITHE
pokemon SPECIES_CYNDAQUIL
pokemon SPECIES_TEPIG
monwithform SPECIES_GROWLITHE, 1
pokemon SPECIES_SIZZLIPEDE
pokemon SPECIES_SIZZLIPEDE
pokemon SPECIES_SIZZLIPEDE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_OCTILLERY, 36, 38
encounter SPECIES_OCTILLERY, 36, 38
encounter SPECIES_STARAPTOR, 39, 39
encounter SPECIES_STARAPTOR, 39, 39
encounter SPECIES_STARAPTOR, 39, 39

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_GEODUDE, 15, 15
encounter SPECIES_GEODUDE, 15, 15

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_POLIWAG, 10, 10
encounter SPECIES_POLIWAG, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_CHEWTLE, 7, 9
encounter SPECIES_REMORAID, 8, 8
encounter SPECIES_BINACLE, 8, 9
encounter SPECIES_HORSEA, 8, 9
encounter SPECIES_HORSEA, 8, 9

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_WHISCASH

.close


encounterdata   6   // Sprout Tower 2F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8

// morning encounter slots
pokemon SPECIES_MAKUHITA
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_MANKEY
monwithform SPECIES_ZIGZAGOON, 1
pokemon SPECIES_MEDITITE
pokemon SPECIES_MIENFOO
pokemon SPECIES_KOFFING
pokemon SPECIES_TYROGUE
pokemon SPECIES_NIDORAN_M
pokemon SPECIES_NIDORAN_F
pokemon SPECIES_EKANS
pokemon SPECIES_EKANS

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_MAKUHITA
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_MANKEY
monwithform SPECIES_ZIGZAGOON, 1
pokemon SPECIES_MEDITITE
pokemon SPECIES_MIENFOO
pokemon SPECIES_KOFFING
pokemon SPECIES_TYROGUE
pokemon SPECIES_NIDORAN_M
pokemon SPECIES_NIDORAN_F
pokemon SPECIES_EKANS
pokemon SPECIES_EKANS

// night encounter slots
pokemon SPECIES_MAKUHITA
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_MANKEY
monwithform SPECIES_ZIGZAGOON, 1
pokemon SPECIES_MEDITITE
pokemon SPECIES_MIENFOO
pokemon SPECIES_KOFFING
pokemon SPECIES_TYROGUE
pokemon SPECIES_NIDORAN_M
pokemon SPECIES_NIDORAN_F
pokemon SPECIES_EKANS
pokemon SPECIES_EKANS

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata   7   // Sprout Tower 3F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7

// morning encounter slots
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_MANKEY
pokemon SPECIES_MASCHIFF
pokemon SPECIES_MEDITITE
pokemon SPECIES_VENIPEDE
pokemon SPECIES_KOFFING
pokemon SPECIES_TYROGUE
pokemon SPECIES_NIDORAN_M
pokemon SPECIES_NIDORAN_F
pokemon SPECIES_KAKUNA
pokemon SPECIES_KAKUNA

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_MANKEY
pokemon SPECIES_MASCHIFF
pokemon SPECIES_MEDITITE
pokemon SPECIES_VENIPEDE
pokemon SPECIES_KOFFING
pokemon SPECIES_TYROGUE
pokemon SPECIES_NIDORAN_M
pokemon SPECIES_NIDORAN_F
pokemon SPECIES_KAKUNA
pokemon SPECIES_KAKUNA

// night encounter slots
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_MANKEY
pokemon SPECIES_MASCHIFF
pokemon SPECIES_MEDITITE
pokemon SPECIES_VENIPEDE
pokemon SPECIES_KOFFING
pokemon SPECIES_TYROGUE
pokemon SPECIES_NIDORAN_M
pokemon SPECIES_NIDORAN_F
pokemon SPECIES_KAKUNA
pokemon SPECIES_KAKUNA

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata   8   // Route 32

walkrate 25
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 8, 8, 9, 7, 7, 7, 8, 8, 8, 8, 8, 8

// morning encounter slots
pokemon SPECIES_MAREEP
pokemon SPECIES_LILLIPUP
monwithform SPECIES_WOOPER, 1
pokemon SPECIES_STARLY
pokemon SPECIES_SEEDOT
pokemon SPECIES_TOGEDEMARU
pokemon SPECIES_CROAGUNK
pokemon SPECIES_CROAGUNK
pokemon SPECIES_MACHOP
pokemon SPECIES_MACHOP 
pokemon SPECIES_EXEGGCUTE
pokemon SPECIES_EXEGGCUTE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_MAREEP
pokemon SPECIES_LILLIPUP
monwithform SPECIES_WOOPER, 1
pokemon SPECIES_STARLY
pokemon SPECIES_SEEDOT
pokemon SPECIES_TOGEDEMARU
pokemon SPECIES_CROAGUNK
pokemon SPECIES_CROAGUNK
pokemon SPECIES_MACHOP
pokemon SPECIES_MACHOP 
pokemon SPECIES_EXEGGCUTE
pokemon SPECIES_EXEGGCUTE

// night encounter slots
pokemon SPECIES_MAREEP
pokemon SPECIES_LILLIPUP
monwithform SPECIES_WOOPER, 1
pokemon SPECIES_STARLY
pokemon SPECIES_SEEDOT
pokemon SPECIES_TOGEDEMARU
pokemon SPECIES_CROAGUNK
pokemon SPECIES_CROAGUNK
pokemon SPECIES_MACHOP
pokemon SPECIES_MACHOP 
pokemon SPECIES_EXEGGCUTE
pokemon SPECIES_EXEGGCUTE

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_TENTACOOL, 10, 20
encounter SPECIES_QUAGSIRE, 15, 25
encounter SPECIES_TENTACRUEL, 15, 25
encounter SPECIES_TENTACRUEL, 15, 25
encounter SPECIES_TENTACRUEL, 36, 36

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_TENTACOOL, 10, 10
encounter SPECIES_TENTACOOL, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_QWILFISH, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_TENTACOOL, 40, 40
encounter SPECIES_TENTACOOL, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_QWILFISH, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_BELLSPROUT
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_TENTACOOL
// swarm super rod
pokemon SPECIES_QWILFISH

.close


encounterdata   9   // Ruins of Alph (Outside)

walkrate 10
surfrate 10
rocksmashrate 20
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38

// morning encounter slots
pokemon SPECIES_XATU
pokemon SPECIES_XATU
pokemon SPECIES_FLETCHINDER
pokemon SPECIES_FLETCHINDER
pokemon SPECIES_SALAZZLE
pokemon SPECIES_STOUTLAND
pokemon SPECIES_ROSELIA
pokemon SPECIES_KROKOROK
pokemon SPECIES_SAWSBUCK
pokemon SPECIES_GARDEVOIR
pokemon SPECIES_GOLETT
pokemon SPECIES_GOLETT

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_XATU
pokemon SPECIES_XATU
pokemon SPECIES_FLETCHINDER
pokemon SPECIES_FLETCHINDER
pokemon SPECIES_SALAZZLE
pokemon SPECIES_STOUTLAND
pokemon SPECIES_ROSELIA
pokemon SPECIES_KROKOROK
pokemon SPECIES_SAWSBUCK
pokemon SPECIES_GARDEVOIR
pokemon SPECIES_GOLETT
pokemon SPECIES_GOLETT

// night encounter slots
pokemon SPECIES_XATU
pokemon SPECIES_XATU
pokemon SPECIES_FLETCHINDER
pokemon SPECIES_FLETCHINDER
pokemon SPECIES_SALAZZLE
pokemon SPECIES_STOUTLAND
pokemon SPECIES_ROSELIA
pokemon SPECIES_KROKOROK
pokemon SPECIES_SAWSBUCK
pokemon SPECIES_GARDEVOIR
pokemon SPECIES_GOLETT
pokemon SPECIES_GOLETT

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_GYARADOS, 38, 38
encounter SPECIES_GASTRODON, 37, 37
encounter SPECIES_CARRACOSTA, 38, 38
encounter SPECIES_MARSHTOMP, 34, 34
encounter SPECIES_MARSHTOMP, 34, 34

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_ONIX, 6, 16
encounter SPECIES_ONIX, 6, 16

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_POLIWAG, 10, 10
encounter SPECIES_POLIWAG, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_MAGIKARP, 9, 9
encounter SPECIES_BUIZEL, 9, 9
encounter SPECIES_SHELLOS, 9, 9
encounterwithform SPECIES_SHELLOS, 1, 9, 9
encounterwithform SPECIES_SHELLOS, 1, 9, 9

// swarm grass
pokemon SPECIES_NATU
// swarm surf
pokemon SPECIES_WOOPER
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  10   // Ruins of Alph (Inside, Main Room)

walkrate 15
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5

// morning encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// night encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// hoenn encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// sinnoh encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_UNOWN
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  11   // Ruins of Alph (Inside, Main Room - Not sure when used?)

walkrate 15
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5

// morning encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// night encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// hoenn encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// sinnoh encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_UNOWN
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  12   // Ruins of Alph (Inside, Main Room - Not sure when used?)

walkrate 15
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5

// morning encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// night encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// hoenn encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// sinnoh encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_UNOWN
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  13   // Ruins of Alph (Inside, Ladder Room - This has no encounter tile permissions though)

walkrate 15
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5

// morning encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// night encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// hoenn encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// sinnoh encounter slots
pokemon SPECIES_UNOWN
pokemon SPECIES_UNOWN

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_UNOWN
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  14   // Union Cave 1F

walkrate 10
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 13, 12, 13, 13, 12, 13, 14, 14, 13, 13, 14, 14

// morning encounter slots
pokemon SPECIES_ONIX
pokemon SPECIES_PHANPY
pokemon SPECIES_RHYHORN
pokemon SPECIES_RHYHORN
pokemon SPECIES_ZUBAT
pokemon SPECIES_MUDBRAY
monwithform SPECIES_DIGLETT, 1 
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_ROGGENROLA
pokemon SPECIES_AMAURA
pokemon SPECIES_SABLEYE
pokemon SPECIES_SABLEYE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_ONIX
pokemon SPECIES_PHANPY
pokemon SPECIES_RHYHORN
pokemon SPECIES_RHYHORN
pokemon SPECIES_ZUBAT
pokemon SPECIES_MUDBRAY
monwithform SPECIES_DIGLETT, 1 
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_ROGGENROLA
pokemon SPECIES_AMAURA
pokemon SPECIES_SABLEYE
pokemon SPECIES_SABLEYE

// night encounter slots
pokemon SPECIES_ONIX
pokemon SPECIES_PHANPY
pokemon SPECIES_RHYHORN
pokemon SPECIES_RHYHORN
pokemon SPECIES_ZUBAT
pokemon SPECIES_MUDBRAY
monwithform SPECIES_DIGLETT, 1 
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_ROGGENROLA
pokemon SPECIES_AMAURA
pokemon SPECIES_SABLEYE
pokemon SPECIES_SABLEYE

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_GOLBAT, 35, 39
encounter SPECIES_GOLBAT, 35, 39
encounter SPECIES_KABUTOPS, 40, 40
encounter SPECIES_KABUTOPS, 40, 40
encounter SPECIES_KABUTOPS, 40, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_CHEWTLE, 8, 15
encounter SPECIES_QWILFISH, 8, 15
encounterwithform SPECIES_GRIMER, 1, 8, 15
encounter SPECIES_MAGIKARP, 8, 15
encounter SPECIES_MAGIKARP, 8, 15

// swarm grass
pokemon SPECIES_GEODUDE
// swarm surf
pokemon SPECIES_WOOPER
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  15   // Union Cave B1F

walkrate 15
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14

// morning encounter slots
monwithform SPECIES_GEODUDE, 1
pokemon SPECIES_DWEBBLE
pokemon SPECIES_ARON
pokemon SPECIES_ARON
pokemon SPECIES_TOGEDEMARU
pokemon SPECIES_MUDBRAY
pokemon SPECIES_SANDILE
pokemon SPECIES_SANDILE
pokemon SPECIES_NOIBAT
pokemon SPECIES_DRILBUR
pokemon SPECIES_SABLEYE
pokemon SPECIES_SABLEYE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
monwithform SPECIES_GEODUDE, 1
pokemon SPECIES_DWEBBLE
pokemon SPECIES_ARON
pokemon SPECIES_ARON
pokemon SPECIES_TOGEDEMARU
pokemon SPECIES_MUDBRAY
pokemon SPECIES_SANDILE
pokemon SPECIES_SANDILE
pokemon SPECIES_NOIBAT
pokemon SPECIES_DRILBUR
pokemon SPECIES_SABLEYE
pokemon SPECIES_SABLEYE

// night encounter slots
monwithform SPECIES_GEODUDE, 1
pokemon SPECIES_DWEBBLE
pokemon SPECIES_ARON
pokemon SPECIES_ARON
pokemon SPECIES_TOGEDEMARU
pokemon SPECIES_MUDBRAY
pokemon SPECIES_SANDILE
pokemon SPECIES_SANDILE
pokemon SPECIES_NOIBAT
pokemon SPECIES_DRILBUR
pokemon SPECIES_SABLEYE
pokemon SPECIES_SABLEYE

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_SEISMITOAD, 37, 39
encounterwithform SPECIES_MUK, 1, 40, 40
encounter SPECIES_OMASTAR, 40, 40
encounter SPECIES_OMASTAR, 40, 40
encounter SPECIES_OMASTAR, 40, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_BARBOACH, 10, 15
encounter SPECIES_MAGIKARP, 10, 15
encounter SPECIES_TYNAMO, 10, 15
encounter SPECIES_TYNAMO, 10, 15
encounter SPECIES_TYNAMO, 10, 15

// swarm grass
pokemon SPECIES_GEODUDE
// swarm surf
pokemon SPECIES_WOOPER
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  16   // Union Cave B2F

walkrate 15
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 22, 22, 22, 22, 22, 22, 21, 21, 20, 23, 20, 23

// morning encounter slots
pokemon SPECIES_ZUBAT
pokemon SPECIES_RATICATE
pokemon SPECIES_ZUBAT
pokemon SPECIES_RATICATE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_RATTATA
pokemon SPECIES_ONIX
pokemon SPECIES_RATTATA
pokemon SPECIES_ONIX

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_ZUBAT
pokemon SPECIES_RATICATE
pokemon SPECIES_ZUBAT
pokemon SPECIES_RATICATE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_RATTATA
pokemon SPECIES_ONIX
pokemon SPECIES_RATTATA
pokemon SPECIES_ONIX

// night encounter slots
pokemon SPECIES_ZUBAT
pokemon SPECIES_RATICATE
pokemon SPECIES_ZUBAT
pokemon SPECIES_RATICATE
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_GEODUDE
pokemon SPECIES_RATTATA
pokemon SPECIES_ONIX
pokemon SPECIES_RATTATA
pokemon SPECIES_ONIX

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_TENTACOOL, 10, 20
encounter SPECIES_QUAGSIRE, 15, 25
encounter SPECIES_TENTACRUEL, 15, 25
encounter SPECIES_TENTACRUEL, 15, 25
encounter SPECIES_TENTACRUEL, 15, 25

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_KRABBY, 10, 10
encounter SPECIES_KRABBY, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_CORSOLA, 20, 20
encounter SPECIES_KRABBY, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_KRABBY, 40, 40
encounter SPECIES_CORSOLA, 40, 40
encounter SPECIES_KRABBY, 40, 40
encounter SPECIES_KINGLER, 40, 40
encounter SPECIES_KRABBY, 40, 40

// swarm grass
pokemon SPECIES_ZUBAT
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_STARYU
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  17   // Route 33

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15

// morning encounter slots
pokemon SPECIES_TAILLOW
pokemon SPECIES_DEERLING
pokemon SPECIES_STARAVIA
pokemon SPECIES_STANTLER
pokemon SPECIES_NATU
pokemon SPECIES_MURKROW
pokemon SPECIES_KARRABLAST
pokemon SPECIES_NUZLEAF
pokemon SPECIES_RUFFLET
pokemon SPECIES_BULBASAUR
pokemon SPECIES_TOGETIC
pokemon SPECIES_CHIKORITA

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_TAILLOW
pokemon SPECIES_DEERLING
pokemon SPECIES_STARAVIA
pokemon SPECIES_STANTLER
pokemon SPECIES_NATU
pokemon SPECIES_MURKROW
pokemon SPECIES_KARRABLAST
pokemon SPECIES_NUZLEAF
pokemon SPECIES_RUFFLET
pokemon SPECIES_BULBASAUR
pokemon SPECIES_TOGETIC
pokemon SPECIES_CHIKORITA

// night encounter slots
pokemon SPECIES_TAILLOW
pokemon SPECIES_DEERLING
pokemon SPECIES_STARAVIA
pokemon SPECIES_STANTLER
pokemon SPECIES_NATU
pokemon SPECIES_MURKROW
pokemon SPECIES_KARRABLAST
pokemon SPECIES_NUZLEAF
pokemon SPECIES_RUFFLET
pokemon SPECIES_BULBASAUR
pokemon SPECIES_TOGETIC
pokemon SPECIES_CHIKORITA

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_HOPPIP
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  18   // Slowpoke Well 1F

walkrate 5
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15

// morning encounter slots
pokemon SPECIES_VENIPEDE
pokemon SPECIES_ZUBAT
monwithform SPECIES_WOOPER, 1
pokemon SPECIES_TEDDIURSA
pokemon SPECIES_MARILL
pokemon SPECIES_TOTODILE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_VENIPEDE
pokemon SPECIES_ZUBAT
monwithform SPECIES_WOOPER, 1
pokemon SPECIES_TEDDIURSA
pokemon SPECIES_MARILL
pokemon SPECIES_TOTODILE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE

// night encounter slots
pokemon SPECIES_VENIPEDE
pokemon SPECIES_ZUBAT
monwithform SPECIES_WOOPER, 1
pokemon SPECIES_TEDDIURSA
pokemon SPECIES_MARILL
pokemon SPECIES_TOTODILE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_SLOWBRO, 40, 40
encounter SPECIES_SLOWKING, 40, 40
encounter SPECIES_SLOWKING, 40, 40
encounter SPECIES_SLOWKING, 40, 40
encounter SPECIES_SLOWKING, 40, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_SLOWPOKE, 15, 15
encounter SPECIES_HORSEA, 15, 15
encounter SPECIES_LILEEP, 15, 15
encounter SPECIES_LILEEP, 15, 15
encounter SPECIES_LILEEP, 15, 15

// swarm grass
pokemon SPECIES_ZUBAT
// swarm surf
pokemon SPECIES_SLOWPOKE
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  19   // Slowpoke Well B2F

walkrate 5
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15

// morning encounter slots
pokemon SPECIES_VENIPEDE
pokemon SPECIES_ZUBAT
monwithform SPECIES_WOOPER, 1
pokemon SPECIES_TEDDIURSA
pokemon SPECIES_MARILL
pokemon SPECIES_TOTODILE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_VENIPEDE
pokemon SPECIES_ZUBAT
monwithform SPECIES_WOOPER, 1
pokemon SPECIES_TEDDIURSA
pokemon SPECIES_MARILL
pokemon SPECIES_TOTODILE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE

// night encounter slots
pokemon SPECIES_VENIPEDE
pokemon SPECIES_ZUBAT
monwithform SPECIES_WOOPER, 1
pokemon SPECIES_TEDDIURSA
pokemon SPECIES_MARILL
pokemon SPECIES_TOTODILE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE
pokemon SPECIES_SLOWPOKE

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_SLOWBRO, 40, 40
encounter SPECIES_SLOWKING, 40, 40
encounter SPECIES_SLOWKING, 40, 40
encounter SPECIES_SLOWKING, 40, 40
encounter SPECIES_SLOWKING, 40, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_SLOWPOKE, 15, 15
encounter SPECIES_HORSEA, 15, 15
encounter SPECIES_LILEEP, 15, 15
encounter SPECIES_LILEEP, 15, 15
encounter SPECIES_LILEEP, 15, 15

// swarm grass
pokemon SPECIES_ZUBAT
// swarm surf
pokemon SPECIES_SLOWPOKE
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  20   // Ilex Forest

walkrate 5
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15

// morning encounter slots
pokemon SPECIES_VIVILLON
pokemon SPECIES_YANMA
pokemon SPECIES_SIZZLIPEDE
pokemon SPECIES_COMBEE
pokemon SPECIES_BEEDRILL
pokemon SPECIES_CUTIEFLY
pokemon SPECIES_JOLTIK
pokemon SPECIES_PARAS
pokemon SPECIES_DEWPIDER
pokemon SPECIES_HERACROSS
pokemon SPECIES_SKORUPI
pokemon SPECIES_SKORUPI

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_VIVILLON
pokemon SPECIES_YANMA
pokemon SPECIES_SIZZLIPEDE
pokemon SPECIES_COMBEE
pokemon SPECIES_BEEDRILL
pokemon SPECIES_CUTIEFLY
pokemon SPECIES_JOLTIK
pokemon SPECIES_PARAS
pokemon SPECIES_DEWPIDER
pokemon SPECIES_HERACROSS
pokemon SPECIES_SKORUPI
pokemon SPECIES_SKORUPI

// night encounter slots
pokemon SPECIES_VIVILLON
pokemon SPECIES_YANMA
pokemon SPECIES_SIZZLIPEDE
pokemon SPECIES_COMBEE
pokemon SPECIES_BEEDRILL
pokemon SPECIES_CUTIEFLY
pokemon SPECIES_JOLTIK
pokemon SPECIES_PARAS
pokemon SPECIES_DEWPIDER
pokemon SPECIES_HERACROSS
pokemon SPECIES_SKORUPI
pokemon SPECIES_SKORUPI

// hoenn encounter slots
pokemon SPECIES_SPOINK
pokemon SPECIES_NUMEL

// sinnoh encounter slots
pokemon SPECIES_BUDEW
pokemon SPECIES_CARNIVINE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_CATERPIE
// swarm surf
pokemon SPECIES_PSYDUCK
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  21   // Route 34

walkrate 25
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 20, 21, 22, 22, 22, 23, 22, 22, 22, 22, 21, 20

// morning encounter slots
pokemon SPECIES_NIDORINO
pokemon SPECIES_CROAGUNK
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_CACNEA
pokemon SPECIES_IVYSAUR
monwithform SPECIES_SNEASEL, 1
pokemon SPECIES_ROSELIA
pokemon SPECIES_ROSELIA
pokemon SPECIES_SKORUPI
pokemon SPECIES_TOXEL
pokemon SPECIES_SALANDIT
pokemon SPECIES_SALANDIT

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NIDORINO
pokemon SPECIES_CROAGUNK
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_IVYSAUR
monwithform SPECIES_SNEASEL, 1
pokemon SPECIES_ROSELIA
pokemon SPECIES_ROSELIA
pokemon SPECIES_SKORUPI
pokemon SPECIES_TOXEL
pokemon SPECIES_SALANDIT
pokemon SPECIES_SALANDIT

// night encounter slots
pokemon SPECIES_NIDORINO
pokemon SPECIES_CROAGUNK
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_IVYSAUR
monwithform SPECIES_SNEASEL, 1
pokemon SPECIES_ROSELIA
pokemon SPECIES_ROSELIA
pokemon SPECIES_SKORUPI
pokemon SPECIES_TOXEL
pokemon SPECIES_SALANDIT
pokemon SPECIES_SALANDIT

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_TENTACRUEL, 40, 40
encounter SPECIES_GYARADOS, 40, 40
encounter SPECIES_GYARADOS, 40, 40
encounter SPECIES_GYARADOS, 40, 40
encounter SPECIES_GYARADOS, 40, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_KRABBY, 10, 10
encounter SPECIES_KRABBY, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_CORSOLA, 20, 20
encounter SPECIES_KRABBY, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_SKRELP, 10, 24
encounter SPECIES_SEADRA, 24, 24
encounterwithform SPECIES_QWILFISH, 1, 10, 24
encounterwithform SPECIES_QWILFISH, 1, 10, 24
encounterwithform SPECIES_QWILFISH, 1, 10, 24

// swarm grass
pokemon SPECIES_RALTS
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_STARYU
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  22   // Route 35

walkrate 25
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 22, 23, 22, 24, 23, 23, 23, 24, 22, 23, 25, 25

// morning encounter slots
pokemon SPECIES_SNUBBULL
pokemon SPECIES_ESPURR
pokemon SPECIES_MIGHTYENA
pokemon SPECIES_NUMEL
pokemon SPECIES_KADABRA
pokemon SPECIES_NACLSTACK
pokemon SPECIES_GROTLE
pokemon SPECIES_FLORAGATO
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_PAWNIARD
pokemon SPECIES_PAWNIARD

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_SNUBBULL
pokemon SPECIES_ESPURR
pokemon SPECIES_MIGHTYENA
pokemon SPECIES_NUMEL
pokemon SPECIES_KADABRA
pokemon SPECIES_NACLSTACK
pokemon SPECIES_GROTLE
pokemon SPECIES_FLORAGATO
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_PAWNIARD
pokemon SPECIES_PAWNIARD

// night encounter slots
pokemon SPECIES_SNUBBULL
pokemon SPECIES_ESPURR
pokemon SPECIES_MIGHTYENA
pokemon SPECIES_NUMEL
pokemon SPECIES_KADABRA
pokemon SPECIES_NACLSTACK
pokemon SPECIES_GROTLE
pokemon SPECIES_FLORAGATO
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_PAWNIARD
pokemon SPECIES_PAWNIARD

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_GOLDUCK, 40, 40
encounter SPECIES_GYARADOS, 40, 40
encounter SPECIES_BASCULIN, 5, 40
encounter SPECIES_BASCULIN, 5, 40
encounter SPECIES_BASCULIN, 5, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_POLIWAG, 10, 10
encounter SPECIES_POLIWAG, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_CORPHISH, 5, 30
encounter SPECIES_BRUXISH, 28, 28
encounterwithform SPECIES_QWILFISH, 1, 10, 30
encounterwithform SPECIES_QWILFISH, 1, 10, 30
encounterwithform SPECIES_QWILFISH, 1, 10, 30

// swarm grass
pokemon SPECIES_YANMA
// swarm surf
pokemon SPECIES_PSYDUCK
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  23   // National Park

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 24, 24, 25, 24, 23, 25, 25, 25, 26, 25, 25, 25

// morning encounter slots
pokemon SPECIES_HATTREM
pokemon SPECIES_SIZZLIPEDE
pokemon SPECIES_CORVISQUIRE
monwithform SPECIES_FARFETCHD, 1
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_YANMA
pokemon SPECIES_LOPUNNY
pokemon SPECIES_MURKROW
pokemon SPECIES_MANECTRIC
pokemon SPECIES_FLAAFFY
pokemon SPECIES_VIVILLON
pokemon SPECIES_VIVILLON

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_HATTREM
pokemon SPECIES_SIZZLIPEDE
pokemon SPECIES_CORVISQUIRE
monwithform SPECIES_FARFETCHD, 1
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_YANMA
pokemon SPECIES_LOPUNNY
pokemon SPECIES_MURKROW
pokemon SPECIES_MANECTRIC
pokemon SPECIES_FLAAFFY
pokemon SPECIES_VIVILLON
pokemon SPECIES_VIVILLON

// night encounter slots
pokemon SPECIES_HATTREM
pokemon SPECIES_SIZZLIPEDE
pokemon SPECIES_CORVISQUIRE
monwithform SPECIES_FARFETCHD, 1
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_YANMA
pokemon SPECIES_LOPUNNY
pokemon SPECIES_MURKROW
pokemon SPECIES_MANECTRIC
pokemon SPECIES_FLAAFFY
pokemon SPECIES_VIVILLON
pokemon SPECIES_VIVILLON

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_CATERPIE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  24   // National Park (Bug Catching Contest - Not Normally Used)

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 10, 10, 10, 10, 12, 12, 12, 12, 10, 14, 10, 14

// morning encounter slots
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE

// night encounter slots
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE

// hoenn encounter slots
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE

// sinnoh encounter slots
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_CATERPIE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  25   // Route 36

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 27, 28, 28, 28, 26, 27, 28, 28, 28, 28, 28, 28

// morning encounter slots
monwithform SPECIES_FLABEBE, 3
pokemon SPECIES_SKIDDO
pokemon SPECIES_STARAVIA
pokemon SPECIES_TRAPINCH
pokemon SPECIES_BRELOOM
pokemon SPECIES_PINSIR
pokemon SPECIES_DOLLIV
pokemon SPECIES_BOLTUND
pokemon SPECIES_SAWSBUCK
monwithform SPECIES_SAWSBUCK, 2
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_DUNSPARCE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
monwithform SPECIES_FLABEBE, 3
pokemon SPECIES_SKIDDO
pokemon SPECIES_STARAVIA
pokemon SPECIES_TRAPINCH
pokemon SPECIES_BRELOOM
pokemon SPECIES_PINSIR
pokemon SPECIES_DOLLIV
pokemon SPECIES_BOLTUND
pokemon SPECIES_SAWSBUCK
monwithform SPECIES_SAWSBUCK, 2
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_DUNSPARCE

// night encounter slots
monwithform SPECIES_FLABEBE, 3
pokemon SPECIES_SKIDDO
pokemon SPECIES_STARAVIA
pokemon SPECIES_TRAPINCH
pokemon SPECIES_BRELOOM
pokemon SPECIES_PINSIR
pokemon SPECIES_DOLLIV
pokemon SPECIES_BOLTUND
pokemon SPECIES_SAWSBUCK
monwithform SPECIES_SAWSBUCK, 2
pokemon SPECIES_DUNSPARCE
pokemon SPECIES_DUNSPARCE

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NIDORAN_M
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  26   // Route 37

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 28, 29, 28, 28, 29, 30, 30, 30, 29, 28, 30, 30

// morning encounter slots
pokemon SPECIES_VULPIX
pokemon SPECIES_MILTANK
pokemon SPECIES_HARIYAMA
pokemon SPECIES_ABSOL
pokemon SPECIES_AIPOM
pokemon SPECIES_DARUMAKA
pokemon SPECIES_MASCHIFF
pokemon SPECIES_MASCHIFF
pokemon SPECIES_ARAQUANID
pokemon SPECIES_GROWLITHE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_SERVINE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_VULPIX
pokemon SPECIES_MILTANK
pokemon SPECIES_HARIYAMA
pokemon SPECIES_ABSOL
pokemon SPECIES_AIPOM
pokemon SPECIES_DARUMAKA
pokemon SPECIES_MASCHIFF
pokemon SPECIES_MASCHIFF
pokemon SPECIES_ARAQUANID
pokemon SPECIES_GROWLITHE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_SERVINE

// night encounter slots
pokemon SPECIES_VULPIX
pokemon SPECIES_MILTANK
pokemon SPECIES_HARIYAMA
pokemon SPECIES_ABSOL
pokemon SPECIES_AIPOM
pokemon SPECIES_DARUMAKA
pokemon SPECIES_MASCHIFF
pokemon SPECIES_MASCHIFF
pokemon SPECIES_ARAQUANID
pokemon SPECIES_GROWLITHE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_SERVINE

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_PIDGEY
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  27   // Ecruteak City

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_SHARPEDO, 30, 40
encounter SPECIES_GYARADOS, 30, 40
encounter SPECIES_GYARADOS, 30, 40
encounter SPECIES_GYARADOS, 30, 40
encounter SPECIES_GYARADOS, 30, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_POLIWAG, 10, 10
encounter SPECIES_POLIWAG, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_SHARPEDO, 30, 30
encounter SPECIES_CRAWDAUNT, 30, 30
encounter SPECIES_ARAQUANID, 30, 30
encounter SPECIES_CROCONAW, 30, 30
encounter SPECIES_CROCONAW, 30, 30

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  28   // Burned Tower 1F

walkrate 10
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 30, 31, 30, 30, 29, 30, 30, 30, 29, 30, 30, 30

// morning encounter slots
pokemon SPECIES_PIKACHU
pokemon SPECIES_GOLBAT
pokemon SPECIES_KOFFING
pokemon SPECIES_KOFFING
pokemon SPECIES_TORKOAL
pokemon SPECIES_ARBOK
pokemon SPECIES_SKUNTANK
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SCOLIPEDE
pokemon SPECIES_NIDOKING
pokemon SPECIES_CYCLIZAR
pokemon SPECIES_CYCLIZAR

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_PIKACHU
pokemon SPECIES_GOLBAT
pokemon SPECIES_KOFFING
pokemon SPECIES_KOFFING
pokemon SPECIES_TORKOAL
pokemon SPECIES_ARBOK
pokemon SPECIES_SKUNTANK
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SCOLIPEDE
pokemon SPECIES_NIDOKING
pokemon SPECIES_CYCLIZAR
pokemon SPECIES_CYCLIZAR

// night encounter slots
pokemon SPECIES_PIKACHU
pokemon SPECIES_GOLBAT
pokemon SPECIES_KOFFING
pokemon SPECIES_KOFFING
pokemon SPECIES_TORKOAL
pokemon SPECIES_ARBOK
pokemon SPECIES_SKUNTANK
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SCOLIPEDE
pokemon SPECIES_NIDOKING
pokemon SPECIES_CYCLIZAR
pokemon SPECIES_CYCLIZAR

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  29   // Burned Tower B1F

walkrate 10
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 30, 31, 30, 30, 30, 29, 30, 30, 31, 30, 30, 30

// morning encounter slots
pokemon SPECIES_MAGMAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_KOFFING
pokemon SPECIES_ARBOK
pokemon SPECIES_TORKOAL
monwithform SPECIES_GRIMER, 1
pokemon SPECIES_SKUNTANK
pokemon SPECIES_SKUNTANK
pokemon SPECIES_HOUNDOOM
pokemon SPECIES_NIDOKING
pokemon SPECIES_CYCLIZAR
pokemon SPECIES_GASTLY

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_MAGMAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_KOFFING
pokemon SPECIES_ARBOK
pokemon SPECIES_TORKOAL
monwithform SPECIES_GRIMER, 1
pokemon SPECIES_SKUNTANK
pokemon SPECIES_SKUNTANK
pokemon SPECIES_HOUNDOOM
pokemon SPECIES_NIDOKING
pokemon SPECIES_CYCLIZAR
pokemon SPECIES_GASTLY

// night encounter slots
pokemon SPECIES_MAGMAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_KOFFING
pokemon SPECIES_ARBOK
pokemon SPECIES_TORKOAL
monwithform SPECIES_GRIMER, 1
pokemon SPECIES_SKUNTANK
pokemon SPECIES_SKUNTANK
pokemon SPECIES_HOUNDOOM
pokemon SPECIES_NIDOKING
pokemon SPECIES_CYCLIZAR
pokemon SPECIES_GASTLY

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  30   // Bell Tower 2F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 30, 30, 65, 65, 65, 65, 65, 65, 65, 65, 15, 15

// morning encounter slots
pokemon SPECIES_YAMASK
monwithform SPECIES_YAMASK, 1
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SIGILYPH
pokemon SPECIES_HOUNDSTONE
pokemon SPECIES_SCYTHER
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_DRIFBLIM
pokemon SPECIES_GENGAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_CHARCADET
pokemon SPECIES_CHARCADET

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_YAMASK
monwithform SPECIES_YAMASK, 1
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SIGILYPH
pokemon SPECIES_HOUNDSTONE
pokemon SPECIES_SCYTHER
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_DRIFBLIM
pokemon SPECIES_GENGAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_CHARCADET
pokemon SPECIES_CHARCADET

// night encounter slots
pokemon SPECIES_YAMASK
monwithform SPECIES_YAMASK, 1
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SIGILYPH
pokemon SPECIES_HOUNDSTONE
pokemon SPECIES_SCYTHER
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_DRIFBLIM
pokemon SPECIES_GENGAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_CHARCADET
pokemon SPECIES_CHARCADET

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  31   // Bell Tower 3F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 30, 30, 65, 65, 65, 65, 65, 65, 65, 65, 15, 15

// morning encounter slots
pokemon SPECIES_YAMASK
monwithform SPECIES_YAMASK, 1
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SIGILYPH
pokemon SPECIES_HOUNDSTONE
pokemon SPECIES_SCYTHER
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_DRIFBLIM
pokemon SPECIES_GENGAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_CHARCADET
pokemon SPECIES_CHARCADET

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_YAMASK
monwithform SPECIES_YAMASK, 1
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SIGILYPH
pokemon SPECIES_HOUNDSTONE
pokemon SPECIES_SCYTHER
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_DRIFBLIM
pokemon SPECIES_GENGAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_CHARCADET
pokemon SPECIES_CHARCADET

// night encounter slots
pokemon SPECIES_YAMASK
monwithform SPECIES_YAMASK, 1
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SIGILYPH
pokemon SPECIES_HOUNDSTONE
pokemon SPECIES_SCYTHER
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_DRIFBLIM
pokemon SPECIES_GENGAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_CHARCADET
pokemon SPECIES_CHARCADET

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  32   // Bell Tower 4F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 30, 30, 65, 65, 65, 65, 65, 65, 65, 65, 15, 15

// morning encounter slots
pokemon SPECIES_YAMASK
monwithform SPECIES_YAMASK, 1
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SIGILYPH
pokemon SPECIES_HOUNDSTONE
pokemon SPECIES_SCYTHER
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_DRIFBLIM
pokemon SPECIES_GENGAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_CHARCADET
pokemon SPECIES_CHARCADET

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_YAMASK
monwithform SPECIES_YAMASK, 1
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SIGILYPH
pokemon SPECIES_HOUNDSTONE
pokemon SPECIES_SCYTHER
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_DRIFBLIM
pokemon SPECIES_GENGAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_CHARCADET
pokemon SPECIES_CHARCADET

// night encounter slots
pokemon SPECIES_YAMASK
monwithform SPECIES_YAMASK, 1
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SIGILYPH
pokemon SPECIES_HOUNDSTONE
pokemon SPECIES_SCYTHER
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_DRIFBLIM
pokemon SPECIES_GENGAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_CHARCADET
pokemon SPECIES_CHARCADET

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  33   // Bell Tower 5F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 30, 30, 65, 65, 65, 65, 65, 65, 65, 65, 15, 15

// morning encounter slots
pokemon SPECIES_YAMASK
monwithform SPECIES_YAMASK, 1
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SIGILYPH
pokemon SPECIES_HOUNDSTONE
pokemon SPECIES_SCYTHER
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_DRIFBLIM
pokemon SPECIES_GENGAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_CHARCADET
pokemon SPECIES_CHARCADET

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_YAMASK
monwithform SPECIES_YAMASK, 1
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SIGILYPH
pokemon SPECIES_HOUNDSTONE
pokemon SPECIES_SCYTHER
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_DRIFBLIM
pokemon SPECIES_GENGAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_CHARCADET
pokemon SPECIES_CHARCADET

// night encounter slots
pokemon SPECIES_YAMASK
monwithform SPECIES_YAMASK, 1
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SIGILYPH
pokemon SPECIES_HOUNDSTONE
pokemon SPECIES_SCYTHER
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_DRIFBLIM
pokemon SPECIES_GENGAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_CHARCADET
pokemon SPECIES_CHARCADET

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  34   // Bell Tower 6F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 30, 30, 65, 65, 65, 65, 65, 65, 65, 65, 15, 15

// morning encounter slots
pokemon SPECIES_YAMASK
monwithform SPECIES_YAMASK, 1
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SIGILYPH
pokemon SPECIES_HOUNDSTONE
pokemon SPECIES_SCYTHER
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_DRIFBLIM
pokemon SPECIES_GENGAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_CHARCADET
pokemon SPECIES_CHARCADET

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_YAMASK
monwithform SPECIES_YAMASK, 1
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SIGILYPH
pokemon SPECIES_HOUNDSTONE
pokemon SPECIES_SCYTHER
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_DRIFBLIM
pokemon SPECIES_GENGAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_CHARCADET
pokemon SPECIES_CHARCADET

// night encounter slots
pokemon SPECIES_YAMASK
monwithform SPECIES_YAMASK, 1
pokemon SPECIES_MUSHARNA
pokemon SPECIES_SIGILYPH
pokemon SPECIES_HOUNDSTONE
pokemon SPECIES_SCYTHER
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_DRIFBLIM
pokemon SPECIES_GENGAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_CHARCADET
pokemon SPECIES_CHARCADET

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  35   // Bell Tower 7F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65

// morning encounter slots
pokemon SPECIES_GENGAR
pokemon SPECIES_SPIRITOMB
pokemon SPECIES_DRAKLOAK
pokemon SPECIES_CROBAT
pokemon SPECIES_SINISTCHA
monwithform SPECIES_ZOROARK, 1
pokemon SPECIES_BEEDRILL
pokemon SPECIES_VOLCARONA
pokemon SPECIES_DRAGAPULT
pokemon SPECIES_CHESNAUGHT
pokemon SPECIES_MIMIKYU
pokemon SPECIES_MIMIKYU

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_GENGAR
pokemon SPECIES_SPIRITOMB
pokemon SPECIES_DRAKLOAK
pokemon SPECIES_CROBAT
pokemon SPECIES_SINISTCHA
monwithform SPECIES_ZOROARK, 1
pokemon SPECIES_BEEDRILL
pokemon SPECIES_VOLCARONA
pokemon SPECIES_DRAGAPULT
pokemon SPECIES_CHESNAUGHT
pokemon SPECIES_MIMIKYU
pokemon SPECIES_MIMIKYU

// night encounter slots
pokemon SPECIES_GENGAR
pokemon SPECIES_SPIRITOMB
pokemon SPECIES_DRAKLOAK
pokemon SPECIES_CROBAT
pokemon SPECIES_SINISTCHA
monwithform SPECIES_ZOROARK, 1
pokemon SPECIES_BEEDRILL
pokemon SPECIES_VOLCARONA
pokemon SPECIES_DRAGAPULT
pokemon SPECIES_CHESNAUGHT
pokemon SPECIES_MIMIKYU
pokemon SPECIES_MIMIKYU

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  36   // Bell Tower 8F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65

// morning encounter slots
pokemon SPECIES_GENGAR
pokemon SPECIES_SPIRITOMB
pokemon SPECIES_DRAKLOAK
pokemon SPECIES_CROBAT
pokemon SPECIES_SINISTCHA
monwithform SPECIES_ZOROARK, 1
pokemon SPECIES_BEEDRILL
pokemon SPECIES_VOLCARONA
pokemon SPECIES_DRAGAPULT
pokemon SPECIES_CHESNAUGHT
pokemon SPECIES_MIMIKYU
pokemon SPECIES_MIMIKYU

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_GENGAR
pokemon SPECIES_SPIRITOMB
pokemon SPECIES_DRAKLOAK
pokemon SPECIES_CROBAT
pokemon SPECIES_SINISTCHA
monwithform SPECIES_ZOROARK, 1
pokemon SPECIES_BEEDRILL
pokemon SPECIES_VOLCARONA
pokemon SPECIES_DRAGAPULT
pokemon SPECIES_CHESNAUGHT
pokemon SPECIES_MIMIKYU
pokemon SPECIES_MIMIKYU

// night encounter slots
pokemon SPECIES_GENGAR
pokemon SPECIES_SPIRITOMB
pokemon SPECIES_DRAKLOAK
pokemon SPECIES_CROBAT
pokemon SPECIES_SINISTCHA
monwithform SPECIES_ZOROARK, 1
pokemon SPECIES_BEEDRILL
pokemon SPECIES_VOLCARONA
pokemon SPECIES_DRAGAPULT
pokemon SPECIES_CHESNAUGHT
pokemon SPECIES_MIMIKYU
pokemon SPECIES_MIMIKYU

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  37   // Bell Tower 9F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65

// morning encounter slots
pokemon SPECIES_GENGAR
pokemon SPECIES_SPIRITOMB
pokemon SPECIES_DRAKLOAK
pokemon SPECIES_CROBAT
pokemon SPECIES_SINISTCHA
monwithform SPECIES_ZOROARK, 1
pokemon SPECIES_BEEDRILL
pokemon SPECIES_VOLCARONA
pokemon SPECIES_DRAGAPULT
pokemon SPECIES_CHESNAUGHT
pokemon SPECIES_MIMIKYU
pokemon SPECIES_MIMIKYU

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_GENGAR
pokemon SPECIES_SPIRITOMB
pokemon SPECIES_DRAKLOAK
pokemon SPECIES_CROBAT
pokemon SPECIES_SINISTCHA
monwithform SPECIES_ZOROARK, 1
pokemon SPECIES_BEEDRILL
pokemon SPECIES_VOLCARONA
pokemon SPECIES_DRAGAPULT
pokemon SPECIES_CHESNAUGHT
pokemon SPECIES_MIMIKYU
pokemon SPECIES_MIMIKYU

// night encounter slots
pokemon SPECIES_GENGAR
pokemon SPECIES_SPIRITOMB
pokemon SPECIES_DRAKLOAK
pokemon SPECIES_CROBAT
pokemon SPECIES_SINISTCHA
monwithform SPECIES_ZOROARK, 1
pokemon SPECIES_BEEDRILL
pokemon SPECIES_VOLCARONA
pokemon SPECIES_DRAGAPULT
pokemon SPECIES_CHESNAUGHT
pokemon SPECIES_MIMIKYU
pokemon SPECIES_MIMIKYU

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  38   // Route 38

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 32, 32, 31, 32, 33, 32, 33, 34, 32, 33, 32, 31

// morning encounter slots
pokemon SPECIES_MAGNETON
pokemon SPECIES_TURTONATOR
pokemon SPECIES_SNEASEL
pokemon SPECIES_PIDGEOT
pokemon SPECIES_PIDGEOT
pokemon SPECIES_HELIOLISK
monwithform SPECIES_FARFETCHD, 1
pokemon SPECIES_ZOROARK
pokemon SPECIES_KLAWF
pokemon SPECIES_FLORAGATO
pokemon SPECIES_GRANBULL
pokemon SPECIES_GRANBULL

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_MAGNETON
pokemon SPECIES_TURTONATOR
pokemon SPECIES_SNEASEL
pokemon SPECIES_PIDGEOT
pokemon SPECIES_PIDGEOT
pokemon SPECIES_HELIOLISK
monwithform SPECIES_FARFETCHD, 1
pokemon SPECIES_ZOROARK
pokemon SPECIES_KLAWF
pokemon SPECIES_FLORAGATO
pokemon SPECIES_GRANBULL
pokemon SPECIES_GRANBULL

// night encounter slots
pokemon SPECIES_MAGNETON
pokemon SPECIES_TURTONATOR
pokemon SPECIES_SNEASEL
pokemon SPECIES_PIDGEOT
pokemon SPECIES_PIDGEOT
pokemon SPECIES_HELIOLISK
monwithform SPECIES_FARFETCHD, 1
pokemon SPECIES_ZOROARK
pokemon SPECIES_KLAWF
pokemon SPECIES_FLORAGATO
pokemon SPECIES_GRANBULL
pokemon SPECIES_GRANBULL

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_SNUBBULL
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  39   // Route 39

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 33, 32, 33, 34, 34, 33, 33, 33, 32, 33, 15, 15

// morning encounter slots
pokemon SPECIES_PORYGON
pokemon SPECIES_MILTANK
pokemon SPECIES_STANTLER
pokemon SPECIES_MACHOKE
pokemon SPECIES_LOPUNNY
pokemon SPECIES_MANECTRIC
pokemon SPECIES_PERRSERKER
pokemon SPECIES_SCYTHER
pokemon SPECIES_LUCARIO
pokemon SPECIES_CHARMELEON
pokemon SPECIES_BELDUM
pokemon SPECIES_BELDUM

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_PORYGON
pokemon SPECIES_MILTANK
pokemon SPECIES_STANTLER
pokemon SPECIES_MACHOKE
pokemon SPECIES_LOPUNNY
pokemon SPECIES_MANECTRIC
pokemon SPECIES_PERRSERKER
pokemon SPECIES_SCYTHER
pokemon SPECIES_LUCARIO
pokemon SPECIES_CHARMELEON
pokemon SPECIES_BELDUM
pokemon SPECIES_BELDUM

// night encounter slots
pokemon SPECIES_PORYGON
pokemon SPECIES_MILTANK
pokemon SPECIES_STANTLER
pokemon SPECIES_MACHOKE
pokemon SPECIES_LOPUNNY
pokemon SPECIES_MANECTRIC
pokemon SPECIES_PERRSERKER
pokemon SPECIES_SCYTHER
pokemon SPECIES_LUCARIO
pokemon SPECIES_CHARMELEON
pokemon SPECIES_BELDUM
pokemon SPECIES_BELDUM

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  40   // Olivine City

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_LANTURN, 30, 38
encounter SPECIES_TENTACRUEL, 30, 38
encounter SPECIES_LILEEP, 20, 35
encounter SPECIES_LILEEP, 20, 35
encounter SPECIES_LILEEP, 20, 35

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_KRABBY, 10, 10
encounter SPECIES_KRABBY, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_CORSOLA, 20, 20
encounter SPECIES_KRABBY, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_KABUTO, 20, 35
encounter SPECIES_OMANYTE, 20, 35
encounter SPECIES_ANORITH, 20, 35
encounter SPECIES_ANORITH, 20, 35
encounter SPECIES_ANORITH, 20, 35

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_STARYU
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  41   // Route 40

walkrate 0
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_CLAWITZER, 30, 38
encounter SPECIES_BASCULIN, 25, 35
encounter SPECIES_DRAGONAIR, 30, 40
encounter SPECIES_DRAGONAIR, 30, 40
encounter SPECIES_DRAGONAIR, 30, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_KRABBY, 10, 10
encounter SPECIES_KRABBY, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_CORSOLA, 20, 20
encounter SPECIES_KRABBY, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_ARROKUDA, 15, 40
encounterwithform SPECIES_GRIMER, 1, 15, 40
encounter SPECIES_MARSHTOMP, 16, 35
encounter SPECIES_MARSHTOMP, 16, 35
encounter SPECIES_MARSHTOMP, 16, 35

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_STARYU
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  42   // Route 41

walkrate 0
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_FLOATZEL, 30, 40
encounter SPECIES_STARYU, 30, 40
encounter SPECIES_MILOTIC, 40, 40
encounter SPECIES_MILOTIC, 40, 40
encounter SPECIES_MILOTIC, 40, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_TENTACOOL, 10, 10
encounter SPECIES_TENTACOOL, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_CHINCHOU, 20, 20
encounter SPECIES_SHELLDER, 20, 20
encounter SPECIES_CHINCHOU, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_OVERQWIL, 40, 40
encounter SPECIES_KINGDRA, 40, 40
encounter SPECIES_SLOWBRO, 40, 40
encounter SPECIES_SLOWBRO, 40, 40
encounter SPECIES_SLOWBRO, 40, 40

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  43   // Whirl Islands 1F

walkrate 5
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56

// morning encounter slots
pokemon SPECIES_HARIYAMA
pokemon SPECIES_CRAWDAUNT
pokemon SPECIES_ARAQUANID
pokemon SPECIES_HAXORUS
pokemon SPECIES_CRUSTLE
pokemon SPECIES_URSARING
pokemon SPECIES_ABSOL
pokemon SPECIES_ZOROARK
pokemon SPECIES_PANGORO
pokemon SPECIES_AURORUS
monwithform SPECIES_AVALUGG, 1
monwithform SPECIES_AVALUGG, 1

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_HARIYAMA
pokemon SPECIES_CRAWDAUNT
pokemon SPECIES_ARAQUANID
pokemon SPECIES_HAXORUS
pokemon SPECIES_CRUSTLE
pokemon SPECIES_URSARING
pokemon SPECIES_ABSOL
pokemon SPECIES_ZOROARK
pokemon SPECIES_PANGORO
pokemon SPECIES_AURORUS
monwithform SPECIES_AVALUGG, 1
monwithform SPECIES_AVALUGG, 1

// night encounter slots
pokemon SPECIES_HARIYAMA
pokemon SPECIES_CRAWDAUNT
pokemon SPECIES_ARAQUANID
pokemon SPECIES_HAXORUS
pokemon SPECIES_CRUSTLE
pokemon SPECIES_URSARING
pokemon SPECIES_ABSOL
pokemon SPECIES_ZOROARK
pokemon SPECIES_PANGORO
pokemon SPECIES_AURORUS
monwithform SPECIES_AVALUGG, 1
pokemon SPECIES_MALAMAR

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_TENTACRUEL, 40, 58
encounter SPECIES_KINGDRA, 40, 58
encounter SPECIES_OVERQWIL, 40, 58
encounter SPECIES_OVERQWIL, 40, 58
encounter SPECIES_OVERQWIL, 40, 58

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_DHELMISE, 10, 10
encounter SPECIES_MALAMAR, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_KRABBY, 10, 10
encounter SPECIES_KRABBY, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_HORSEA, 20, 20
encounter SPECIES_KRABBY, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_DRAGALGE, 40, 58
encounter SPECIES_DRAGONAIR, 30, 40
encounter SPECIES_RELICANTH, 40, 58
encounter SPECIES_OMASTAR, 40, 58
encounter SPECIES_OMASTAR, 40, 58

// swarm grass
pokemon SPECIES_KRABBY
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_HORSEA
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  44   // Whirl Islands B1F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 30, 30

// morning encounter slots
pokemon SPECIES_DREDNAW
pokemon SPECIES_KROOKODILE
pokemon SPECIES_CROBAT
pokemon SPECIES_SCOLIPEDE
pokemon SPECIES_KABUTOPS 
pokemon SPECIES_DUSCLOPS
pokemon SPECIES_ARCHEOPS
pokemon SPECIES_AGGRON
pokemon SPECIES_KOMMO_O
pokemon SPECIES_RAMPARDOS
pokemon SPECIES_LARVITAR
pokemon SPECIES_LARVITAR

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_DREDNAW
pokemon SPECIES_KROOKODILE
pokemon SPECIES_CROBAT
pokemon SPECIES_SCOLIPEDE
pokemon SPECIES_KABUTOPS 
pokemon SPECIES_DUSCLOPS
pokemon SPECIES_ARCHEOPS
pokemon SPECIES_AGGRON
pokemon SPECIES_KOMMO_O
pokemon SPECIES_RAMPARDOS
pokemon SPECIES_LARVITAR
pokemon SPECIES_LARVITAR

// night encounter slots
pokemon SPECIES_DREDNAW
pokemon SPECIES_KROOKODILE
pokemon SPECIES_CROBAT
pokemon SPECIES_SCOLIPEDE
pokemon SPECIES_KABUTOPS 
pokemon SPECIES_DUSCLOPS
pokemon SPECIES_ARCHEOPS
pokemon SPECIES_AGGRON
pokemon SPECIES_KOMMO_O
pokemon SPECIES_RAMPARDOS
pokemon SPECIES_LARVITAR
pokemon SPECIES_LARVITAR

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_KRABBY
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  45   // Safari Zone Gate

walkrate 15
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40

// morning encounter slots
pokemon SPECIES_ELECTIVIRE
pokemon SPECIES_MAGMORTAR
pokemon SPECIES_DRAGONAIR
pokemon SPECIES_MORGREM
pokemon SPECIES_SCEPTILE
pokemon SPECIES_BLAZIKEN
pokemon SPECIES_DRAKLOAK
pokemon SPECIES_SNEASLER
pokemon SPECIES_GABITE
pokemon SPECIES_GABITE
pokemon SPECIES_GOLISOPOD
pokemon SPECIES_GOLISOPOD

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_ELECTIVIRE
pokemon SPECIES_MAGMORTAR
pokemon SPECIES_DRAGONAIR
pokemon SPECIES_MORGREM
pokemon SPECIES_SCEPTILE
pokemon SPECIES_BLAZIKEN
pokemon SPECIES_DRAKLOAK
pokemon SPECIES_SNEASLER
pokemon SPECIES_GABITE
pokemon SPECIES_GABITE
pokemon SPECIES_GOLISOPOD
pokemon SPECIES_GOLISOPOD

// night encounter slots
pokemon SPECIES_ELECTIVIRE
pokemon SPECIES_MAGMORTAR
pokemon SPECIES_DRAGONAIR
pokemon SPECIES_MORGREM
pokemon SPECIES_SCEPTILE
pokemon SPECIES_BLAZIKEN
pokemon SPECIES_DRAKLOAK
pokemon SPECIES_SNEASLER
pokemon SPECIES_GABITE
pokemon SPECIES_GABITE
pokemon SPECIES_GOLISOPOD
pokemon SPECIES_GOLISOPOD

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  46   // Whirl Islands B2F

walkrate 5
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 57, 57, 57, 57, 57, 57, 38, 57, 57, 57, 20, 57

// morning encounter slots
pokemon SPECIES_RHYPERIOR
pokemon SPECIES_HONCHKROW
pokemon SPECIES_SNEASLER
pokemon SPECIES_GENGAR
pokemon SPECIES_TYRANTRUM
pokemon SPECIES_MACHAMP
pokemon SPECIES_VIGOROTH
pokemon SPECIES_GOLURK
pokemon SPECIES_METAGROSS
pokemon SPECIES_DURALUDON
pokemon SPECIES_HONEDGE
pokemon SPECIES_SLAKING

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_RHYPERIOR
pokemon SPECIES_HONCHKROW
pokemon SPECIES_SNEASLER
pokemon SPECIES_GENGAR
pokemon SPECIES_TYRANTRUM
pokemon SPECIES_MACHAMP
pokemon SPECIES_VIGOROTH
pokemon SPECIES_GOLURK
pokemon SPECIES_METAGROSS
pokemon SPECIES_DURALUDON
pokemon SPECIES_HONEDGE
pokemon SPECIES_SLAKING

// night encounter slots
pokemon SPECIES_RHYPERIOR
pokemon SPECIES_HONCHKROW
pokemon SPECIES_SNEASLER
pokemon SPECIES_GENGAR
pokemon SPECIES_TYRANTRUM
pokemon SPECIES_MACHAMP
pokemon SPECIES_VIGOROTH
pokemon SPECIES_GOLURK
pokemon SPECIES_METAGROSS
pokemon SPECIES_DURALUDON
pokemon SPECIES_HONEDGE
pokemon SPECIES_SLAKING

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_FERALIGATR, 70, 75
encounter SPECIES_CARRACOSTA, 70, 75
encounter SPECIES_GOLISOPOD, 70, 75
encounter SPECIES_GOLISOPOD, 70, 75
encounter SPECIES_GOLISOPOD, 70, 75

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_KRABBY, 10, 10
encounter SPECIES_KRABBY, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_HORSEA, 20, 20
encounter SPECIES_KRABBY, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_DHELMISE, 70, 75
encounter SPECIES_MALAMAR, 70, 75
encounter SPECIES_QUAQUAVAL, 70, 75
encounter SPECIES_INTELEON, 70, 75
encounter SPECIES_INTELEON, 70, 75

// swarm grass
pokemon SPECIES_KRABBY
// swarm surf
pokemon SPECIES_HORSEA
// swarm good rod
pokemon SPECIES_HORSEA
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  47   // ???

walkrate 0
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  48   // Whirl Islands B3F (Ledge overlooking Lugia room)

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 23, 24, 23, 24, 25, 25, 23, 23, 24, 25, 24, 25

// morning encounter slots
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_KRABBY
pokemon SPECIES_SEEL
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_KRABBY
pokemon SPECIES_SEEL
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL

// night encounter slots
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_ZUBAT
pokemon SPECIES_KRABBY
pokemon SPECIES_KRABBY
pokemon SPECIES_SEEL
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_SEEL

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_KRABBY
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  49   // ???

walkrate 0
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  50   // ???

walkrate 0
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  51   // Cianwood City

walkrate 0
surfrate 15
rocksmashrate 30
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_CRAWDAUNT, 30, 40
encounter SPECIES_EMPOLEON, 30, 40
encounter SPECIES_FRILLISH, 20, 30
encounter SPECIES_FRILLISH, 20, 30
encounter SPECIES_FRILLISH, 20, 30

// rock smash encounters; probabilities:  90, 10
encounterwithform SPECIES_GRAVELER, 1, 30, 40
encounter SPECIES_ANORITH, 30, 40

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_KRABBY, 10, 10
encounter SPECIES_KRABBY, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_CORSOLA, 20, 20
encounter SPECIES_KRABBY, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_VELUZA, 30, 40
encounter SPECIES_SEALEO, 30, 40
encounter SPECIES_WIMPOD, 10, 20
encounter SPECIES_WIMPOD, 10, 20
encounter SPECIES_WIMPOD, 10, 20

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_STARYU
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  52   // Route 42

walkrate 25
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46

// morning encounter slots
pokemon SPECIES_TSAREENA
pokemon SPECIES_BEWEAR
pokemon SPECIES_TOGEDEMARU
pokemon SPECIES_MEOWSTIC
pokemon SPECIES_DARMANITAN
pokemon SPECIES_MARACTUS
pokemon SPECIES_ROSERADE
pokemon SPECIES_KECLEON
pokemon SPECIES_SERPERIOR
pokemon SPECIES_TYPHLOSION
pokemon SPECIES_HATTERENE
pokemon SPECIES_GARDEVOIR

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_TSAREENA
pokemon SPECIES_BEWEAR
pokemon SPECIES_TOGEDEMARU
pokemon SPECIES_MEOWSTIC
pokemon SPECIES_DARMANITAN
pokemon SPECIES_MARACTUS
pokemon SPECIES_ROSERADE
pokemon SPECIES_KECLEON
pokemon SPECIES_SERPERIOR
pokemon SPECIES_TYPHLOSION
pokemon SPECIES_HATTERENE
pokemon SPECIES_GARDEVOIR

// night encounter slots
pokemon SPECIES_TSAREENA
pokemon SPECIES_BEWEAR
pokemon SPECIES_TOGEDEMARU
pokemon SPECIES_MEOWSTIC
pokemon SPECIES_DARMANITAN
pokemon SPECIES_MARACTUS
pokemon SPECIES_ROSERADE
pokemon SPECIES_KECLEON
pokemon SPECIES_SERPERIOR
pokemon SPECIES_TYPHLOSION
pokemon SPECIES_HATTERENE
pokemon SPECIES_GARDEVOIR

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_WUGTRIO, 30, 46
encounter SPECIES_DRAGALGE, 30, 46
encounter SPECIES_SWAMPERT, 30, 46
encounter SPECIES_SWAMPERT, 30, 46
encounter SPECIES_SWAMPERT, 30, 46

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_BLASTOISE, 30, 46
encounter SPECIES_BARRASKEWDA, 30, 46
encounter SPECIES_GYARADOS, 30, 46
encounter SPECIES_GYARADOS, 30, 46
encounter SPECIES_GYARADOS, 30, 46

// swarm grass
pokemon SPECIES_MANKEY
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  53   // Mt. Mortar (Waterfall room)

walkrate 10
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45

// morning encounter slots
pokemon SPECIES_CROBAT
pokemon SPECIES_PANGORO
pokemon SPECIES_CAMERUPT
pokemon SPECIES_URSARING
monwithform SPECIES_RAICHU, 1
pokemon SPECIES_MACHAMP
pokemon SPECIES_GOLEM
pokemon SPECIES_ABSOL
pokemon SPECIES_HARIYAMA
pokemon SPECIES_WEAVILE
pokemon SPECIES_SNEASLER
pokemon SPECIES_SNEASLER

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_CROBAT
pokemon SPECIES_PANGORO
pokemon SPECIES_CAMERUPT
pokemon SPECIES_URSARING
monwithform SPECIES_RAICHU, 1
pokemon SPECIES_MACHAMP
pokemon SPECIES_GOLEM
pokemon SPECIES_ABSOL
pokemon SPECIES_HARIYAMA
pokemon SPECIES_WEAVILE
pokemon SPECIES_SNEASLER
pokemon SPECIES_SNEASLER

// night encounter slots
pokemon SPECIES_CROBAT
pokemon SPECIES_PANGORO
pokemon SPECIES_CAMERUPT
pokemon SPECIES_URSARING
monwithform SPECIES_RAICHU, 1
pokemon SPECIES_MACHAMP
pokemon SPECIES_GOLEM
pokemon SPECIES_ABSOL
pokemon SPECIES_HARIYAMA
pokemon SPECIES_WEAVILE
pokemon SPECIES_SNEASLER
pokemon SPECIES_SNEASLER

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_SHARPEDO, 45, 45
encounter SPECIES_KINGLER, 45, 45
encounter SPECIES_CARRACOSTA, 45, 45
encounter SPECIES_CARRACOSTA, 45, 45
encounter SPECIES_CARRACOSTA, 45, 45

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_BARBARACLE, 45, 45
encounter SPECIES_OVERQWIL, 45, 45
encounter SPECIES_MILOTIC, 45, 45
encounter SPECIES_MILOTIC, 45, 45
encounter SPECIES_MILOTIC, 45, 45

// swarm grass
pokemon SPECIES_MARILL
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  54   // Mt. Mortar (Central room)

walkrate 10
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46

// morning encounter slots
pokemon SPECIES_AGGRON
pokemon SPECIES_LUCARIO
pokemon SPECIES_LYCANROC
monwithform SPECIES_LYCANROC, 1
monwithform SPECIES_LYCANROC, 2
pokemon SPECIES_HAKAMO_O
pokemon SPECIES_GABITE
pokemon SPECIES_REVAVROOM
pokemon SPECIES_MAGNETON
pokemon SPECIES_GARGANACL
pokemon SPECIES_TINKATON
pokemon SPECIES_TINKATON

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_AGGRON
pokemon SPECIES_LUCARIO
pokemon SPECIES_LYCANROC
monwithform SPECIES_LYCANROC, 1
monwithform SPECIES_LYCANROC, 2
pokemon SPECIES_HAKAMO_O
pokemon SPECIES_GABITE
pokemon SPECIES_REVAVROOM
pokemon SPECIES_MAGNETON
pokemon SPECIES_GARGANACL
pokemon SPECIES_TINKATON
pokemon SPECIES_TINKATON

// night encounter slots
pokemon SPECIES_AGGRON
pokemon SPECIES_LUCARIO
pokemon SPECIES_LYCANROC
monwithform SPECIES_LYCANROC, 1
monwithform SPECIES_LYCANROC, 2
pokemon SPECIES_HAKAMO_O
pokemon SPECIES_GABITE
pokemon SPECIES_REVAVROOM
pokemon SPECIES_MAGNETON
pokemon SPECIES_GARGANACL
pokemon SPECIES_TINKATON
pokemon SPECIES_TINKATON

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GEODUDE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  55   // Mt. Mortar (Room above waterfall)

walkrate 10
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64

// morning encounter slots
pokemon SPECIES_GRANBULL
pokemon SPECIES_CENTISKORCH
pokemon SPECIES_SALAMENCE
monwithform SPECIES_WEEZING, 1
pokemon SPECIES_TYRANTRUM
pokemon SPECIES_INCINEROAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_URSALUNA
pokemon SPECIES_METAGROSS
pokemon SPECIES_GOLURK
pokemon SPECIES_TYRANITAR
pokemon SPECIES_GLIMMORA

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_GRANBULL
pokemon SPECIES_CENTISKORCH
pokemon SPECIES_SALAMENCE
monwithform SPECIES_WEEZING, 1
pokemon SPECIES_TYRANTRUM
pokemon SPECIES_INCINEROAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_URSALUNA
pokemon SPECIES_METAGROSS
pokemon SPECIES_GOLURK
pokemon SPECIES_TYRANITAR
pokemon SPECIES_GLIMMORA

// night encounter slots
pokemon SPECIES_GRANBULL
pokemon SPECIES_CENTISKORCH
pokemon SPECIES_SALAMENCE
monwithform SPECIES_WEEZING, 1
pokemon SPECIES_TYRANTRUM
pokemon SPECIES_INCINEROAR
pokemon SPECIES_HYDREIGON
pokemon SPECIES_URSALUNA
pokemon SPECIES_METAGROSS
pokemon SPECIES_GOLURK
pokemon SPECIES_TYRANITAR
pokemon SPECIES_GLIMMORA

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_WALREIN, 50, 64
encounter SPECIES_STARMIE, 50, 64
encounter SPECIES_INTELEON, 50, 64
encounter SPECIES_INTELEON, 50, 64
encounter SPECIES_INTELEON, 50, 64

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_DHELMISE, 50, 64
encounter SPECIES_BASCULEGION, 50, 64
encounter SPECIES_QUAQUAVAL, 50, 64
encounter SPECIES_QUAQUAVAL, 50, 64
encounter SPECIES_QUAQUAVAL, 50, 64

// swarm grass
pokemon SPECIES_GRAVELER
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  56   // Mt. Mortar B1F

walkrate 10
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46

// morning encounter slots
pokemon SPECIES_TOXICROAK
pokemon SPECIES_WEAVILE
pokemon SPECIES_FALINKS
pokemon SPECIES_NIDOKING
pokemon SPECIES_NIDOQUEEN
pokemon SPECIES_NINETALES
pokemon SPECIES_SIRFETCHD
pokemon SPECIES_BLAZIKEN
pokemon SPECIES_ARMALDO
pokemon SPECIES_TORTERRA
pokemon SPECIES_RAMPARDOS
pokemon SPECIES_SHELGON

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_TOXICROAK
pokemon SPECIES_WEAVILE
pokemon SPECIES_FALINKS
pokemon SPECIES_NIDOKING
pokemon SPECIES_NIDOQUEEN
pokemon SPECIES_NINETALES
pokemon SPECIES_SIRFETCHD
pokemon SPECIES_BLAZIKEN
pokemon SPECIES_ARMALDO
pokemon SPECIES_TORTERRA
pokemon SPECIES_RAMPARDOS
pokemon SPECIES_SHELGON

// night encounter slots
pokemon SPECIES_TOXICROAK
pokemon SPECIES_WEAVILE
pokemon SPECIES_FALINKS
pokemon SPECIES_NIDOKING
pokemon SPECIES_NIDOQUEEN
pokemon SPECIES_NINETALES
pokemon SPECIES_SIRFETCHD
pokemon SPECIES_BLAZIKEN
pokemon SPECIES_ARMALDO
pokemon SPECIES_TORTERRA
pokemon SPECIES_RAMPARDOS
pokemon SPECIES_SHELGON

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_CLOYSTER, 46, 46
encounter SPECIES_WAILORD, 46, 46
encounter SPECIES_BASCULEGION, 46, 46
encounter SPECIES_BASCULEGION, 46, 46
encounter SPECIES_BASCULEGION, 46, 46

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_OMASTAR, 46, 46
encounter SPECIES_KABUTOPS, 46, 46
encounter SPECIES_SAMUROTT, 46, 46
encounter SPECIES_SAMUROTT, 46, 46
encounter SPECIES_SAMUROTT, 46, 46

// swarm grass
pokemon SPECIES_ZUBAT
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  57   // Route 43

walkrate 20
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 47, 46, 47, 47, 48, 46, 46, 47, 47, 48, 48, 48

// morning encounter slots
pokemon SPECIES_FARIGIRAF
pokemon SPECIES_PORYGON2
pokemon SPECIES_GOLDUCK
pokemon SPECIES_KANGASKHAN
pokemon SPECIES_GLISCOR
pokemon SPECIES_SKARMORY
pokemon SPECIES_CONKELDURR
pokemon SPECIES_AUDINO
pokemon SPECIES_HAWLUCHA
monwithform SPECIES_LILLIGANT, 1
pokemon SPECIES_ZOROARK
pokemon SPECIES_ZOROARK

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_FARIGIRAF
pokemon SPECIES_PORYGON2
pokemon SPECIES_GOLDUCK
pokemon SPECIES_KANGASKHAN
pokemon SPECIES_GLISCOR
pokemon SPECIES_SKARMORY
pokemon SPECIES_CONKELDURR
pokemon SPECIES_AUDINO
pokemon SPECIES_HAWLUCHA
monwithform SPECIES_LILLIGANT, 1
pokemon SPECIES_ZOROARK
pokemon SPECIES_ZOROARK

// night encounter slots
pokemon SPECIES_FARIGIRAF
pokemon SPECIES_PORYGON2
pokemon SPECIES_GOLDUCK
pokemon SPECIES_KANGASKHAN
pokemon SPECIES_GLISCOR
pokemon SPECIES_SKARMORY
pokemon SPECIES_CONKELDURR
pokemon SPECIES_AUDINO
pokemon SPECIES_HAWLUCHA
monwithform SPECIES_LILLIGANT, 1
pokemon SPECIES_ZOROARK
pokemon SPECIES_ZOROARK

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_EELEKTROSS, 40, 48
encounterwithform SPECIES_CORSOLA, 1, 25, 30
encounter SPECIES_SLOWBRO, 40, 48
encounter SPECIES_SLOWBRO, 40, 48
encounter SPECIES_SLOWBRO, 40, 48

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_POLIWAG, 10, 10
encounter SPECIES_POLIWAG, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_DHELMISE, 40, 48
encounter SPECIES_DRAGONAIR, 40, 48
encounter SPECIES_MALAMAR, 40, 48
encounter SPECIES_MALAMAR, 40, 48
encounter SPECIES_MALAMAR, 40, 48

// swarm grass
pokemon SPECIES_FLAAFFY
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  58   // Lake of Rage

walkrate 0
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_GYARADOS, 40, 50
encounter SPECIES_FERALIGATR, 40, 50
encounter SPECIES_GOLISOPOD, 40, 50
encounter SPECIES_GOLISOPOD, 40, 50
encounter SPECIES_GOLISOPOD, 40, 50

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GYARADOS, 20, 20
encounter SPECIES_MAGIKARP, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_DONDOZO, 40, 50
encounter SPECIES_WAILMER, 10, 40
encounter SPECIES_GYARADOS, 40, 50
encounterwithform SPECIES_CORSOLA, 1, 25, 30
encounterwithform SPECIES_CORSOLA, 1, 25, 30

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_GYARADOS
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  59   // Route 44

walkrate 25
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 58, 57, 57, 58, 59, 57, 58, 58, 58, 58, 59, 59

// morning encounter slots
monwithform SPECIES_RAPIDASH, 1
pokemon SPECIES_AMBIPOM
pokemon SPECIES_LOPUNNY
pokemon SPECIES_TSAREENA
pokemon SPECIES_DURANT
pokemon SPECIES_HAXORUS
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_CORVIKNIGHT
pokemon SPECIES_ARCANINE
monwithform SPECIES_ARCANINE, 1
pokemon SPECIES_DRAGONITE
pokemon SPECIES_DRAGONITE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
monwithform SPECIES_RAPIDASH, 1
pokemon SPECIES_AMBIPOM
pokemon SPECIES_LOPUNNY
pokemon SPECIES_TSAREENA
pokemon SPECIES_DURANT
pokemon SPECIES_HAXORUS
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_CORVIKNIGHT
pokemon SPECIES_ARCANINE
monwithform SPECIES_ARCANINE, 1
pokemon SPECIES_DRAGONITE
pokemon SPECIES_DRAGONITE

// night encounter slots
monwithform SPECIES_RAPIDASH, 1
pokemon SPECIES_AMBIPOM
pokemon SPECIES_LOPUNNY
pokemon SPECIES_TSAREENA
pokemon SPECIES_DURANT
pokemon SPECIES_HAXORUS
pokemon SPECIES_ALAKAZAM
pokemon SPECIES_CORVIKNIGHT
pokemon SPECIES_ARCANINE
monwithform SPECIES_ARCANINE, 1
pokemon SPECIES_DRAGONITE
pokemon SPECIES_DRAGONITE

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_CROBAT, 59, 59
encounter SPECIES_NOIVERN, 59, 59
encounter SPECIES_DREEPY, 5, 48
encounter SPECIES_DREEPY, 5, 48
encounter SPECIES_DREEPY, 5, 48

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_BARRASKEWDA, 59, 59
encounter SPECIES_BLASTOISE, 59, 59
encounter SPECIES_SHARPEDO, 59, 59
encounter SPECIES_JELLICENT, 59, 59
encounter SPECIES_JELLICENT, 59, 59

// good rod encounters
encounter SPECIES_BARRASKEWDA, 59, 59
encounter SPECIES_BLASTOISE, 59, 59
encounter SPECIES_SHARPEDO, 59, 59
encounter SPECIES_JELLICENT, 59, 59
encounter SPECIES_JELLICENT, 59, 59

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_BARRASKEWDA, 59, 59
encounter SPECIES_BLASTOISE, 59, 59
encounter SPECIES_SHARPEDO, 59, 59
encounter SPECIES_JELLICENT, 59, 59
encounter SPECIES_JELLICENT, 59, 59

// swarm grass
pokemon SPECIES_TANGELA
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_REMORAID

.close


encounterdata  60   // Ice Path 1F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 48, 60

// morning encounter slots
pokemon SPECIES_STARMIE
pokemon SPECIES_GLALIE
pokemon SPECIES_SNEASLER
pokemon SPECIES_HARIYAMA
pokemon SPECIES_WEAVILE
pokemon SPECIES_MILTANK
pokemon SPECIES_SNEASLER
pokemon SPECIES_URSARING
pokemon SPECIES_MORGREM
pokemon SPECIES_METAGROSS
pokemon SPECIES_ARCTIBAX
pokemon SPECIES_BAXCALIBUR

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_STARMIE
pokemon SPECIES_GLALIE
pokemon SPECIES_SNEASLER
pokemon SPECIES_HARIYAMA
pokemon SPECIES_WEAVILE
pokemon SPECIES_MILTANK
pokemon SPECIES_SNEASLER
pokemon SPECIES_URSARING
pokemon SPECIES_MORGREM
pokemon SPECIES_METAGROSS
pokemon SPECIES_ARCTIBAX
pokemon SPECIES_BAXCALIBUR

// night encounter slots
pokemon SPECIES_STARMIE
pokemon SPECIES_GLALIE
pokemon SPECIES_SNEASLER
pokemon SPECIES_HARIYAMA
pokemon SPECIES_WEAVILE
pokemon SPECIES_MILTANK
pokemon SPECIES_SNEASLER
pokemon SPECIES_URSARING
pokemon SPECIES_MORGREM
pokemon SPECIES_METAGROSS
pokemon SPECIES_ARCTIBAX
pokemon SPECIES_BAXCALIBUR

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_SWINUB
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  61   // Ice Path B1F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60

// morning encounter slots
pokemon SPECIES_CROBAT
pokemon SPECIES_AGGRON
pokemon SPECIES_WEAVILE
pokemon SPECIES_WEAVILE
monwithform SPECIES_DARMANITAN, 1
pokemon SPECIES_VANILLUXE
monwithform SPECIES_SANDSLASH, 1
monwithform SPECIES_SANDSLASH, 1
pokemon SPECIES_SWAMPERT
pokemon SPECIES_SWAMPERT
monwithform SPECIES_MR_MIME, 1
monwithform SPECIES_MR_MIME, 1

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_CROBAT
pokemon SPECIES_AGGRON
pokemon SPECIES_WEAVILE
pokemon SPECIES_WEAVILE
monwithform SPECIES_DARMANITAN, 1
pokemon SPECIES_VANILLUXE
monwithform SPECIES_SANDSLASH, 1
monwithform SPECIES_SANDSLASH, 1
pokemon SPECIES_SWAMPERT
pokemon SPECIES_SWAMPERT
monwithform SPECIES_MR_MIME, 1
monwithform SPECIES_MR_MIME, 1

// night encounter slots
pokemon SPECIES_CROBAT
pokemon SPECIES_AGGRON
pokemon SPECIES_WEAVILE
pokemon SPECIES_WEAVILE
monwithform SPECIES_DARMANITAN, 1
pokemon SPECIES_VANILLUXE
monwithform SPECIES_SANDSLASH, 1
monwithform SPECIES_SANDSLASH, 1
pokemon SPECIES_SWAMPERT
pokemon SPECIES_SWAMPERT
monwithform SPECIES_MR_MIME, 1
monwithform SPECIES_MR_MIME, 1

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_SWINUB
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  62   // Ice Path B2F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60

// morning encounter slots
pokemon SPECIES_AVALUGG
monwithform SPECIES_SANDSLASH, 1
monwithform SPECIES_NINETALES, 1
monwithform SPECIES_NINETALES, 1
pokemon SPECIES_CETITAN
pokemon SPECIES_BEARTIC
pokemon SPECIES_URSALUNA
pokemon SPECIES_ABOMASNOW
pokemon SPECIES_MAMOSWINE
pokemon SPECIES_MAMOSWINE
pokemon SPECIES_BAXCALIBUR
pokemon SPECIES_BAXCALIBUR

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_AVALUGG
monwithform SPECIES_SANDSLASH, 1
monwithform SPECIES_NINETALES, 1
monwithform SPECIES_NINETALES, 1
pokemon SPECIES_CETITAN
pokemon SPECIES_BEARTIC
pokemon SPECIES_URSALUNA
pokemon SPECIES_ABOMASNOW
pokemon SPECIES_MAMOSWINE
pokemon SPECIES_MAMOSWINE
pokemon SPECIES_BAXCALIBUR
pokemon SPECIES_BAXCALIBUR

// night encounter slots
pokemon SPECIES_AVALUGG
monwithform SPECIES_SANDSLASH, 1
monwithform SPECIES_NINETALES, 1
monwithform SPECIES_NINETALES, 1
pokemon SPECIES_CETITAN
pokemon SPECIES_BEARTIC
pokemon SPECIES_URSALUNA
pokemon SPECIES_ABOMASNOW
pokemon SPECIES_MAMOSWINE
pokemon SPECIES_MAMOSWINE
pokemon SPECIES_BAXCALIBUR
pokemon SPECIES_BAXCALIBUR

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_SWINUB
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  63   // Ice Path B3F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61

// morning encounter slots
monwithform SPECIES_AVALUGG, 1
pokemon SPECIES_ABOMASNOW
pokemon SPECIES_AURORUS
pokemon SPECIES_URSALUNA
pokemon SPECIES_METAGROSS
pokemon SPECIES_MR_RIME
pokemon SPECIES_MAMOSWINE
pokemon SPECIES_MAMOSWINE
pokemon SPECIES_BANETTE
pokemon SPECIES_FROSLASS
pokemon SPECIES_FROSLASS
pokemon SPECIES_FROSLASS

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
monwithform SPECIES_AVALUGG, 1
pokemon SPECIES_ABOMASNOW
pokemon SPECIES_AURORUS
pokemon SPECIES_URSALUNA
pokemon SPECIES_METAGROSS
pokemon SPECIES_MR_RIME
pokemon SPECIES_MAMOSWINE
pokemon SPECIES_MAMOSWINE
pokemon SPECIES_FROSLASS
pokemon SPECIES_FROSLASS
pokemon SPECIES_FROSLASS
pokemon SPECIES_FROSLASS

// night encounter slots
monwithform SPECIES_AVALUGG, 1
pokemon SPECIES_ABOMASNOW
pokemon SPECIES_AURORUS
pokemon SPECIES_URSALUNA
pokemon SPECIES_METAGROSS
pokemon SPECIES_MR_RIME
pokemon SPECIES_MAMOSWINE
pokemon SPECIES_MAMOSWINE
pokemon SPECIES_FROSLASS
pokemon SPECIES_FROSLASS
pokemon SPECIES_FROSLASS
pokemon SPECIES_FROSLASS

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_BERGMITE, 5, 60
encounter SPECIES_BERGMITE, 5, 60

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_SWINUB
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  64   // ???

walkrate 0
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  65   // Blackthorn City

walkrate 0
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_ALTARIA, 63, 63
encounter SPECIES_DRAGONITE, 63, 63
encounter SPECIES_HYDREIGON, 63, 63
encounter SPECIES_GARCHOMP, 63, 63
encounter SPECIES_GARCHOMP, 63, 63

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_DRAGONAIR, 30, 55
encounter SPECIES_KINGDRA, 63, 63
encounter SPECIES_DREEPY, 5, 49
encounter SPECIES_SLIGGOO, 30, 50
encounter SPECIES_GOOMY, 5, 49

// good rod encounters
encounter SPECIES_DRAGONAIR, 30, 55
encounter SPECIES_KINGDRA, 63, 63
encounter SPECIES_DREEPY, 5, 49
encounter SPECIES_SLIGGOO, 30, 50
encounter SPECIES_GOOMY, 5, 49

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_DRAGONAIR, 30, 55
encounter SPECIES_KINGDRA, 63, 63
encounter SPECIES_DREEPY, 5, 49
encounter SPECIES_SLIGGOO, 30, 50
encounter SPECIES_GOOMY, 5, 49

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  66   // Dragons Den

walkrate 0
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NOIVERN, 63, 63
encounter SPECIES_SALAMENCE, 63, 63
encounter SPECIES_DRAGALGE, 63, 63
encounter SPECIES_HYDREIGON, 63, 63
encounter SPECIES_HYDREIGON, 63, 63

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_DRATINI, 20, 20
encounter SPECIES_MAGIKARP, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_DRAGONITE, 63, 63
encounter SPECIES_GYARADOS, 63, 63
encounter SPECIES_KINGDRA, 63, 63
encounterwithform SPECIES_SLIGGOO, 1, 30, 50
encounterwithform SPECIES_SLIGGOO, 1, 30, 50

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_DRATINI
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  67   // Route 45

walkrate 25
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63

// morning encounter slots
pokemon SPECIES_ALTARIA
pokemon SPECIES_CLEFABLE
pokemon SPECIES_CHARIZARD
pokemon SPECIES_SCOVILLAIN
pokemon SPECIES_HOUNDOOM
pokemon SPECIES_SCYTHER
pokemon SPECIES_DELPHOX
pokemon SPECIES_OBSTAGOON
pokemon SPECIES_CLAYDOL
pokemon SPECIES_RILLABOOM
pokemon SPECIES_TOGEKISS
pokemon SPECIES_TOGEKISS

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_ALTARIA
pokemon SPECIES_CLEFABLE
pokemon SPECIES_CHARIZARD
pokemon SPECIES_SCOVILLAIN
pokemon SPECIES_HOUNDOOM
pokemon SPECIES_SCYTHER
pokemon SPECIES_DELPHOX
pokemon SPECIES_OBSTAGOON
pokemon SPECIES_CLAYDOL
pokemon SPECIES_RILLABOOM
pokemon SPECIES_TOGEKISS
pokemon SPECIES_TOGEKISS

// night encounter slots
pokemon SPECIES_ALTARIA
pokemon SPECIES_CLEFABLE
pokemon SPECIES_CHARIZARD
pokemon SPECIES_SCOVILLAIN
pokemon SPECIES_HOUNDOOM
pokemon SPECIES_SCYTHER
pokemon SPECIES_DELPHOX
pokemon SPECIES_OBSTAGOON
pokemon SPECIES_CLAYDOL
pokemon SPECIES_RILLABOOM
pokemon SPECIES_TOGEKISS
pokemon SPECIES_TOGEKISS

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_SKARMORY, 63, 63
encounter SPECIES_WUGTRIO, 63, 63
encounter SPECIES_BARBARACLE, 63, 63
encounter SPECIES_BARBARACLE, 63, 63
encounter SPECIES_BARBARACLE, 63, 63

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_EELEKTROSS, 63, 63
encounter SPECIES_FLOATZEL, 63, 63
encounter SPECIES_RELICANTH, 63, 63
encounter SPECIES_RELICANTH, 63, 63
encounter SPECIES_RELICANTH, 63, 63

// good rod encounters
encounter SPECIES_EELEKTROSS, 63, 63
encounter SPECIES_FLOATZEL, 63, 63
encounter SPECIES_RELICANTH, 63, 63
encounter SPECIES_RELICANTH, 63, 63
encounter SPECIES_RELICANTH, 63, 63

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_EELEKTROSS, 63, 63
encounter SPECIES_FLOATZEL, 63, 63
encounter SPECIES_RELICANTH, 63, 63
encounter SPECIES_RELICANTH, 63, 63
encounter SPECIES_RELICANTH, 63, 63

// swarm grass
pokemon SPECIES_SWABLU
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  68   // Route 46

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 5, 5, 6, 6, 4, 5, 7, 7, 5, 5, 5, 5

// morning encounter slots
pokemon SPECIES_GEODUDE
pokemon SPECIES_ROGGENROLA
pokemon SPECIES_POOCHYENA
pokemon SPECIES_GOSSIFLEUR
pokemon SPECIES_LILLIPUP
pokemon SPECIES_NATU
pokemon SPECIES_HOUNDOUR
pokemon SPECIES_TOEDSCOOL
pokemon SPECIES_CLEFAIRY
pokemon SPECIES_GROWLITHE
pokemon SPECIES_DEERLING
pokemon SPECIES_DEERLING

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_GEODUDE
pokemon SPECIES_ROGGENROLA
pokemon SPECIES_POOCHYENA
pokemon SPECIES_GOSSIFLEUR
pokemon SPECIES_LILLIPUP
pokemon SPECIES_NATU
pokemon SPECIES_HOUNDOUR
pokemon SPECIES_TOEDSCOOL
pokemon SPECIES_CLEFAIRY
pokemon SPECIES_GROWLITHE
pokemon SPECIES_DEERLING
pokemon SPECIES_DEERLING

// night encounter slots
pokemon SPECIES_GEODUDE
pokemon SPECIES_ROGGENROLA
pokemon SPECIES_POOCHYENA
pokemon SPECIES_GOSSIFLEUR
pokemon SPECIES_LILLIPUP
pokemon SPECIES_NATU
pokemon SPECIES_HOUNDOUR
pokemon SPECIES_TOEDSCOOL
pokemon SPECIES_CLEFAIRY
pokemon SPECIES_GROWLITHE
pokemon SPECIES_DEERLING
pokemon SPECIES_DEERLING

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GEODUDE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  69   // Dark Cave (Route 31 entrance)

walkrate 10
surfrate 10
rocksmashrate 50
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 8, 8, 7, 7, 9, 9, 7, 7, 7, 7, 8, 9

// morning encounter slots
pokemon SPECIES_GEODUDE
monwithform SPECIES_GEODUDE, 1
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_MURKROW
pokemon SPECIES_SWINUB
pokemon SPECIES_HIPPOPOTAS
pokemon SPECIES_PANCHAM
pokemon SPECIES_MURKROW
pokemon SPECIES_MURKROW
pokemon SPECIES_MAWILE
pokemon SPECIES_MAWILE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_GEODUDE
monwithform SPECIES_GEODUDE, 1
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_MURKROW
pokemon SPECIES_SWINUB
pokemon SPECIES_HIPPOPOTAS
pokemon SPECIES_PANCHAM
pokemon SPECIES_MURKROW
pokemon SPECIES_MURKROW
pokemon SPECIES_MAWILE
pokemon SPECIES_MAWILE

// night encounter slots
pokemon SPECIES_GEODUDE
monwithform SPECIES_GEODUDE, 1
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_MURKROW
pokemon SPECIES_SWINUB
pokemon SPECIES_HIPPOPOTAS
pokemon SPECIES_PANCHAM
pokemon SPECIES_MURKROW
pokemon SPECIES_MURKROW
pokemon SPECIES_MAWILE
pokemon SPECIES_MAWILE

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_GOLBAT, 35, 39
encounter SPECIES_HIPPOPOTAS, 36, 36
encounter SPECIES_HONCHKROW, 37, 39
encounter SPECIES_HONCHKROW, 37, 39
encounter SPECIES_HONCHKROW, 37, 39

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_GEODUDE, 15, 18
encounterwithform SPECIES_DIGLETT, 1, 15, 18

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_TIRTOUGA, 6, 9
encounter SPECIES_TIRTOUGA, 6, 9
encounter SPECIES_WIGLETT, 8, 8
encounter SPECIES_NOIBAT, 6, 6
encounter SPECIES_NOIBAT, 6, 6

// swarm grass
pokemon SPECIES_DUNSPARCE
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  70   // Dark Cave (Route 45 entrance)

walkrate 10
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63

// morning encounter slots
pokemon SPECIES_HIPPOWDON
pokemon SPECIES_CAMERUPT
pokemon SPECIES_ABSOL
pokemon SPECIES_TINKATON
pokemon SPECIES_GARGANACL
pokemon SPECIES_GRIMMSNARL
pokemon SPECIES_DECIDUEYE
pokemon SPECIES_RUNERIGUS
pokemon SPECIES_AERODACTYL
pokemon SPECIES_CHANDELURE
pokemon SPECIES_DUSCLOPS
pokemon SPECIES_AEGISLASH

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_HIPPOWDON
pokemon SPECIES_CAMERUPT
pokemon SPECIES_ABSOL
pokemon SPECIES_TINKATON
pokemon SPECIES_GARGANACL
pokemon SPECIES_GRIMMSNARL
pokemon SPECIES_DECIDUEYE
pokemon SPECIES_RUNERIGUS
pokemon SPECIES_AERODACTYL
pokemon SPECIES_CHANDELURE
pokemon SPECIES_DUSCLOPS
pokemon SPECIES_AEGISLASH

// night encounter slots
pokemon SPECIES_HIPPOWDON
pokemon SPECIES_CAMERUPT
pokemon SPECIES_ABSOL
pokemon SPECIES_TINKATON
pokemon SPECIES_GARGANACL
pokemon SPECIES_GRIMMSNARL
pokemon SPECIES_DECIDUEYE
pokemon SPECIES_RUNERIGUS
pokemon SPECIES_AERODACTYL
pokemon SPECIES_CHANDELURE
pokemon SPECIES_DUSCLOPS
pokemon SPECIES_AEGISLASH

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_CROBAT, 63, 63
encounter SPECIES_GLISCOR, 63, 63
encounter SPECIES_SHARPEDO, 63, 63
encounter SPECIES_SHARPEDO, 63, 63
encounter SPECIES_SHARPEDO, 63, 63

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_OVERQWIL, 63, 63
encounter SPECIES_DHELMISE, 63, 63
encounter SPECIES_BASCULEGION, 63, 63
encounter SPECIES_PRIMARINA, 63, 63
encounter SPECIES_PRIMARINA, 63, 63

// good rod encounters
encounter SPECIES_OVERQWIL, 63, 63
encounter SPECIES_DHELMISE, 63, 63
encounter SPECIES_BASCULEGION, 63, 63
encounter SPECIES_PRIMARINA, 63, 63
encounter SPECIES_PRIMARINA, 63, 63

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_OVERQWIL, 63, 63
encounter SPECIES_DHELMISE, 63, 63
encounter SPECIES_BASCULEGION, 63, 63
encounter SPECIES_PRIMARINA, 63, 63
encounter SPECIES_PRIMARINA, 63, 63

// swarm grass
pokemon SPECIES_GEODUDE
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  71   // Route 47

walkrate 25
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 64, 64, 64, 64, 64, 25, 64, 64, 64, 64, 64, 64

// morning encounter slots
monwithform SPECIES_LILLIGANT, 1
pokemon SPECIES_TAUROS
pokemon SPECIES_GARCHOMP
pokemon SPECIES_GOGOAT
pokemon SPECIES_TORTERRA
pokemon SPECIES_DREEPY
pokemon SPECIES_MACHAMP
pokemon SPECIES_DUDUNSPARCE
pokemon SPECIES_DUDUNSPARCE
pokemon SPECIES_BISHARP
pokemon SPECIES_DUDUNSPARCE
pokemon SPECIES_METAGROSS

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
monwithform SPECIES_LILLIGANT, 1
pokemon SPECIES_TAUROS
pokemon SPECIES_GARCHOMP
pokemon SPECIES_GOGOAT
pokemon SPECIES_TORTERRA
pokemon SPECIES_DREEPY
pokemon SPECIES_MACHAMP
pokemon SPECIES_DUDUNSPARCE
pokemon SPECIES_DUDUNSPARCE
pokemon SPECIES_BISHARP
pokemon SPECIES_DUDUNSPARCE
pokemon SPECIES_METAGROSS

// night encounter slots
monwithform SPECIES_LILLIGANT, 1
pokemon SPECIES_TAUROS
pokemon SPECIES_GARCHOMP
pokemon SPECIES_GOGOAT
pokemon SPECIES_TORTERRA
pokemon SPECIES_DREEPY
pokemon SPECIES_MACHAMP
pokemon SPECIES_DUDUNSPARCE
pokemon SPECIES_DUDUNSPARCE
pokemon SPECIES_BISHARP
pokemon SPECIES_DUDUNSPARCE
pokemon SPECIES_METAGROSS

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_TENTACRUEL, 30, 40
encounter SPECIES_BLASTOISE, 30, 40
encounter SPECIES_OVERQWIL, 30, 40
encounter SPECIES_OVERQWIL, 30, 40
encounter SPECIES_OVERQWIL, 30, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_TENTACOOL, 10, 10
encounter SPECIES_TENTACOOL, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_CHINCHOU, 20, 20
encounter SPECIES_SHELLDER, 20, 20
encounter SPECIES_CHINCHOU, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_MILOTIC, 30, 40
encounter SPECIES_GYARADOS, 30, 40
encounter SPECIES_SAMUROTT, 30, 40
encounterwithform SPECIES_SAMUROTT, 1, 30, 40
encounterwithform SPECIES_SAMUROTT, 1, 30, 40

// swarm grass
pokemon SPECIES_DITTO
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  72   // Mt. Moon (Outside area)

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_POLIWAG, 35, 35
encounter SPECIES_MAGIKARP, 30, 30
encounter SPECIES_MAGIKARP, 35, 35
encounter SPECIES_MAGIKARP, 35, 35
encounter SPECIES_MAGIKARP, 35, 35

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_POLIWAG, 40, 40

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  73   // Mt. Moon (Outside area when Clefairy are active)

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_POLIWAG, 35, 35
encounter SPECIES_POLIWAG, 30, 30
encounter SPECIES_POLIWAG, 35, 35
encounter SPECIES_POLIWAG, 35, 35
encounter SPECIES_POLIWAG, 35, 35

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_POLIWAG, 10, 10
encounter SPECIES_POLIWAG, 10, 10
encounter SPECIES_POLIWAG, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_POLIWAG, 10, 10

// good rod encounters
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_POLIWAG, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_POLIWAG, 40, 40

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_MAGIKARP
// swarm super rod
pokemon SPECIES_POLIWAG

.close


encounterdata  74   // Seafoam Islands 1F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 28, 32, 28, 29, 30, 32, 27, 26, 27, 26, 27, 26

// morning encounter slots
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// night encounter slots
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_ZUBAT
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  75   // Seafoam Islands B1F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 32, 34, 28, 34, 32, 34, 29, 28, 32, 28, 27, 26

// morning encounter slots
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// night encounter slots
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_SEEL
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  76   // Seafoam Islands B2F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 33, 35, 30, 35, 33, 35, 30, 29, 33, 29, 28, 27

// morning encounter slots
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// night encounter slots
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_SEEL
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  77   // Seafoam Islands B3F

walkrate 10
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 35, 36, 32, 34, 34, 36, 32, 31, 34, 36, 32, 31

// morning encounter slots
pokemon SPECIES_DEWGONG
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DEWGONG
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_DEWGONG
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DEWGONG
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// night encounter slots
pokemon SPECIES_DEWGONG
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DEWGONG
pokemon SPECIES_PSYDUCK
pokemon SPECIES_PSYDUCK

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_DEWGONG
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  78   // Seafoam Islands B4F

walkrate 10
surfrate 5
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 37, 40, 34, 34, 38, 38, 39, 38, 37, 38, 40, 40

// morning encounter slots
pokemon SPECIES_DEWGONG
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_JYNX
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DEWGONG
pokemon SPECIES_JYNX
pokemon SPECIES_JYNX

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_DEWGONG
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_JYNX
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DEWGONG
pokemon SPECIES_JYNX
pokemon SPECIES_JYNX

// night encounter slots
pokemon SPECIES_DEWGONG
pokemon SPECIES_GOLBAT
pokemon SPECIES_PSYDUCK
pokemon SPECIES_SEEL
pokemon SPECIES_JYNX
pokemon SPECIES_GOLDUCK
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DEWGONG
pokemon SPECIES_JYNX
pokemon SPECIES_JYNX

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_SEEL, 30, 40
encounter SPECIES_HORSEA, 30, 40
encounter SPECIES_SLOWBRO, 35, 45
encounter SPECIES_SLOWBRO, 50, 50
encounter SPECIES_SLOWBRO, 35, 45

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_KRABBY, 10, 10
encounter SPECIES_KRABBY, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_PSYDUCK, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_HORSEA, 20, 20
encounter SPECIES_KRABBY, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_GYARADOS, 40, 40
encounter SPECIES_HORSEA, 40, 40
encounter SPECIES_KINGLER, 40, 40
encounter SPECIES_SEADRA, 40, 40
encounter SPECIES_SEADRA, 40, 40

// swarm grass
pokemon SPECIES_SEEL
// swarm surf
pokemon SPECIES_SEEL
// swarm good rod
pokemon SPECIES_HORSEA
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  79   // Mt. Silver (Moltres room)

walkrate 5
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 45, 48, 45, 48, 48, 47, 45, 45, 48, 20, 48, 15

// morning encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_STEELIX
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_STEELIX
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// night encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_STEELIX
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_SEAKING, 30, 40
encounter SPECIES_SEAKING, 35, 45
encounter SPECIES_GOLDEEN, 30, 40
encounter SPECIES_GOLDEEN, 30, 40
encounter SPECIES_GOLDEEN, 30, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_SEAKING, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_QUAGSIRE
// swarm surf
pokemon SPECIES_SEAKING
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  80   // Mt. Silver 3F

walkrate 10
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 45, 48, 46, 48, 48, 50, 45, 45, 48, 20, 48, 15

// morning encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_SNEASEL
pokemon SPECIES_PHANPY
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_SNEASEL
pokemon SPECIES_PHANPY
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// night encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_SNEASEL
pokemon SPECIES_PHANPY
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_SEAKING, 30, 40
encounter SPECIES_SEAKING, 35, 45
encounter SPECIES_GOLDEEN, 30, 40
encounter SPECIES_GOLDEEN, 30, 40
encounter SPECIES_GOLDEEN, 30, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_SEAKING, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_QUAGSIRE
// swarm surf
pokemon SPECIES_SEAKING
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  81   // Mt. Silver 4F

walkrate 10
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 50, 48, 45, 48, 47, 47, 45, 45, 48, 20, 48, 15

// morning encounter slots
pokemon SPECIES_SNEASEL
pokemon SPECIES_GOLDUCK
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_SNEASEL
pokemon SPECIES_GOLDUCK
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// night encounter slots
pokemon SPECIES_SNEASEL
pokemon SPECIES_GOLDUCK
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_SEAKING, 30, 40
encounter SPECIES_SEAKING, 35, 45
encounter SPECIES_GOLDEEN, 30, 40
encounter SPECIES_GOLDEEN, 30, 40
encounter SPECIES_GOLDEEN, 30, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_SEAKING, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_SNEASEL
// swarm surf
pokemon SPECIES_SEAKING
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  82   // Cliff Edge Gate

walkrate 15
surfrate 10
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 75
walklevels 37, 38, 38, 37, 38, 37, 38, 37, 37, 39, 39, 39

// morning encounter slots
pokemon SPECIES_DONPHAN
pokemon SPECIES_RHYDON
pokemon SPECIES_LAIRON
pokemon SPECIES_EXCADRILL
pokemon SPECIES_MAWILE
pokemon SPECIES_VAROOM
pokemon SPECIES_FORRETRESS
pokemon SPECIES_FERROTHORN
pokemon SPECIES_KROOKODILE
pokemon SPECIES_GABITE
pokemon SPECIES_FLYGON
pokemon SPECIES_GABITE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_DONPHAN
pokemon SPECIES_RHYDON
pokemon SPECIES_LAIRON
pokemon SPECIES_EXCADRILL
pokemon SPECIES_MAWILE
pokemon SPECIES_VAROOM
pokemon SPECIES_FORRETRESS
pokemon SPECIES_FERROTHORN
pokemon SPECIES_KROOKODILE
pokemon SPECIES_GABITE
pokemon SPECIES_FLYGON
pokemon SPECIES_GABITE

// night encounter slots
pokemon SPECIES_DONPHAN
pokemon SPECIES_RHYDON
pokemon SPECIES_LAIRON
pokemon SPECIES_EXCADRILL
pokemon SPECIES_MAWILE
pokemon SPECIES_VAROOM
pokemon SPECIES_FORRETRESS
pokemon SPECIES_FERROTHORN
pokemon SPECIES_KROOKODILE
pokemon SPECIES_GABITE
pokemon SPECIES_FLYGON
pokemon SPECIES_GABITE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_INTELEON, 85, 85
encounter SPECIES_GYARADOS, 85, 85
encounter SPECIES_EELEKTROSS, 85, 85
encounter SPECIES_EELEKTROSS, 85, 85
encounter SPECIES_EELEKTROSS, 85, 85

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_BASCULEGION, 85, 85
encounter SPECIES_PRIMARINA, 85, 85
encounter SPECIES_WAILORD, 85, 85
encounter SPECIES_WAILORD, 85, 85
encounter SPECIES_WAILORD, 85, 85

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  83   // Cliff Cave

walkrate 10
surfrate 0
rocksmashrate 30
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39

// morning encounter slots
pokemon SPECIES_BARBARACLE
pokemon SPECIES_DONPHAN
pokemon SPECIES_MUDSDALE
pokemon SPECIES_SNEASEL
monwithform SPECIES_SNEASEL, 1
pokemon SPECIES_STEELIX
pokemon SPECIES_FLYGON
pokemon SPECIES_FERROTHORN
pokemon SPECIES_FLYGON
pokemon SPECIES_GABITE
pokemon SPECIES_CORVIKNIGHT
pokemon SPECIES_CORVIKNIGHT

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_BARBARACLE
pokemon SPECIES_DONPHAN
pokemon SPECIES_MUDSDALE
pokemon SPECIES_SNEASEL
monwithform SPECIES_SNEASEL, 1
pokemon SPECIES_STEELIX
pokemon SPECIES_FLYGON
pokemon SPECIES_FERROTHORN
pokemon SPECIES_FLYGON
pokemon SPECIES_GABITE
pokemon SPECIES_CORVIKNIGHT
pokemon SPECIES_CORVIKNIGHT

// night encounter slots
pokemon SPECIES_BARBARACLE
pokemon SPECIES_DONPHAN
pokemon SPECIES_MUDSDALE
pokemon SPECIES_SNEASEL
monwithform SPECIES_SNEASEL, 1
pokemon SPECIES_STEELIX
pokemon SPECIES_FLYGON
pokemon SPECIES_FERROTHORN
pokemon SPECIES_FLYGON
pokemon SPECIES_GABITE
pokemon SPECIES_CORVIKNIGHT
pokemon SPECIES_CORVIKNIGHT

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_KINGLER, 30, 40
encounter SPECIES_DREDNAW, 30, 40

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GOLBAT
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  84   // Bell Tower 10F

walkrate 5
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65

// morning encounter slots
pokemon SPECIES_GENGAR
pokemon SPECIES_SPIRITOMB
pokemon SPECIES_DRAKLOAK
pokemon SPECIES_CROBAT
pokemon SPECIES_SINISTCHA
monwithform SPECIES_ZOROARK, 1
pokemon SPECIES_BEEDRILL
pokemon SPECIES_VOLCARONA
pokemon SPECIES_DRAGAPULT
pokemon SPECIES_CHESNAUGHT
pokemon SPECIES_MIMIKYU
pokemon SPECIES_MIMIKYU

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_GENGAR
pokemon SPECIES_SPIRITOMB
pokemon SPECIES_DRAKLOAK
pokemon SPECIES_CROBAT
pokemon SPECIES_SINISTCHA
monwithform SPECIES_ZOROARK, 1
pokemon SPECIES_BEEDRILL
pokemon SPECIES_VOLCARONA
pokemon SPECIES_DRAGAPULT
pokemon SPECIES_CHESNAUGHT
pokemon SPECIES_MIMIKYU
pokemon SPECIES_MIMIKYU

// night encounter slots
pokemon SPECIES_GENGAR
pokemon SPECIES_SPIRITOMB
pokemon SPECIES_DRAKLOAK
pokemon SPECIES_CROBAT
pokemon SPECIES_SINISTCHA
monwithform SPECIES_ZOROARK, 1
pokemon SPECIES_BEEDRILL
pokemon SPECIES_VOLCARONA
pokemon SPECIES_DRAGAPULT
pokemon SPECIES_CHESNAUGHT
pokemon SPECIES_MIMIKYU
pokemon SPECIES_MIMIKYU

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_SPINDA

// sinnoh encounter slots
pokemon SPECIES_CHATOT
pokemon SPECIES_MEDITITE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  85   // Mt. Silver (Outside area with Pokemon Center)

walkrate 25
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 41, 42, 41, 42, 42, 42, 44, 44, 41, 43, 41, 43

// morning encounter slots
pokemon SPECIES_TANGELA
pokemon SPECIES_PONYTA
pokemon SPECIES_TANGELA
pokemon SPECIES_PONYTA
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_DODUO
pokemon SPECIES_DODRIO
pokemon SPECIES_DODUO
pokemon SPECIES_DODRIO

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_TANGELA
pokemon SPECIES_PONYTA
pokemon SPECIES_TANGELA
pokemon SPECIES_PONYTA
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_DODUO
pokemon SPECIES_DODRIO
pokemon SPECIES_DODUO
pokemon SPECIES_DODRIO

// night encounter slots
pokemon SPECIES_TANGELA
pokemon SPECIES_PONYTA
pokemon SPECIES_TANGELA
pokemon SPECIES_PONYTA
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_SNEASEL
pokemon SPECIES_SNEASEL
pokemon SPECIES_SNEASEL
pokemon SPECIES_SNEASEL

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_POLIWHIRL, 30, 40
encounter SPECIES_POLIWHIRL, 35, 45
encounter SPECIES_POLIWAG, 30, 40
encounter SPECIES_POLIWAG, 30, 40
encounter SPECIES_POLIWHIRL, 48, 48

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_POLIWAG, 10, 10
encounter SPECIES_POLIWAG, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_TANGELA
// swarm surf
pokemon SPECIES_POLIWHIRL
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  86   // Mt. Silver 1F

walkrate 10
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 42, 44, 42, 44, 43, 43, 42, 41, 45, 20, 45, 15

// morning encounter slots
pokemon SPECIES_ONIX
pokemon SPECIES_DONPHAN
pokemon SPECIES_ONIX
pokemon SPECIES_DONPHAN
pokemon SPECIES_PHANPY
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_ONIX
pokemon SPECIES_DONPHAN
pokemon SPECIES_ONIX
pokemon SPECIES_DONPHAN
pokemon SPECIES_PHANPY
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// night encounter slots
pokemon SPECIES_ONIX
pokemon SPECIES_DONPHAN
pokemon SPECIES_ONIX
pokemon SPECIES_DONPHAN
pokemon SPECIES_PHANPY
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_SEAKING, 30, 40
encounter SPECIES_SEAKING, 35, 45
encounter SPECIES_GOLDEEN, 30, 40
encounter SPECIES_GOLDEEN, 30, 40
encounter SPECIES_SEAKING, 50, 50

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_SEAKING, 20, 20
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_SEAKING, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_GYARADOS, 40, 40
encounter SPECIES_SEAKING, 40, 40
encounter SPECIES_SEAKING, 40, 40
encounter SPECIES_GYARADOS, 40, 40
encounter SPECIES_SEAKING, 40, 40

// swarm grass
pokemon SPECIES_ONIX
// swarm surf
pokemon SPECIES_SEAKING
// swarm good rod
pokemon SPECIES_GYARADOS
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  87   // Mt. Silver (Mountainside)

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 51, 48, 51, 48, 48, 48, 50, 50, 51, 20, 51, 15

// morning encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_ONIX
pokemon SPECIES_GOLBAT
pokemon SPECIES_ONIX
pokemon SPECIES_PHANPY
pokemon SPECIES_GOLBAT
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_GOLDUCK
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLDUCK
pokemon SPECIES_LARVITAR

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_GOLBAT
pokemon SPECIES_ONIX
pokemon SPECIES_GOLBAT
pokemon SPECIES_ONIX
pokemon SPECIES_PHANPY
pokemon SPECIES_GOLBAT
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_GOLDUCK
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLDUCK
pokemon SPECIES_LARVITAR

// night encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_ONIX
pokemon SPECIES_GOLBAT
pokemon SPECIES_ONIX
pokemon SPECIES_PHANPY
pokemon SPECIES_GOLBAT
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_GOLDUCK
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLDUCK
pokemon SPECIES_LARVITAR

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GOLBAT
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  88   // Mt. Silver (Expert Belt room)

walkrate 10
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 45, 48, 45, 46, 48, 47, 45, 45, 48, 20, 48, 15

// morning encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_PHANPY
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_PUPITAR
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_PHANPY
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_PUPITAR
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// night encounter slots
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_GOLDUCK
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_PHANPY
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_PUPITAR
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_QUAGSIRE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  89   // Mt. Silver (Top, snowy area)

walkrate 20
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 45, 48, 45, 48, 47, 47, 30, 45, 48, 20, 48, 15

// morning encounter slots
pokemon SPECIES_SNEASEL
pokemon SPECIES_GOLDUCK
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_LARVITAR
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_SNEASEL
pokemon SPECIES_GOLDUCK
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLDUCK
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_LARVITAR
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// night encounter slots
pokemon SPECIES_SNEASEL
pokemon SPECIES_GOLDUCK
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_LARVITAR
pokemon SPECIES_MISDREAVUS
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR
pokemon SPECIES_GOLBAT
pokemon SPECIES_LARVITAR

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_SEAKING, 30, 40
encounter SPECIES_SEAKING, 35, 45
encounter SPECIES_GOLDEEN, 30, 40
encounter SPECIES_GOLDEEN, 30, 40
encounter SPECIES_GOLDEEN, 30, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_SEAKING, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_SNEASEL
// swarm surf
pokemon SPECIES_SEAKING
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  90   // ???

walkrate 0
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata  91   // Safari Zone (Placeholder, not used)

walkrate 20
surfrate 15
rocksmashrate 0
oldrodrate 100
goodrodrate 100
superrodrate 100
walklevels 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20

// morning encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// night encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// hoenn encounter slots
pokemon SPECIES_ZIGZAGOON
pokemon SPECIES_ZIGZAGOON

// sinnoh encounter slots
pokemon SPECIES_BIDOOF
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_MAGIKARP, 10, 20
encounter SPECIES_MAGIKARP, 10, 20
encounter SPECIES_MAGIKARP, 10, 20
encounter SPECIES_MAGIKARP, 10, 20
encounter SPECIES_MAGIKARP, 10, 20

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_GOLDEEN, 10, 20
encounter SPECIES_GOLDEEN, 10, 20
encounter SPECIES_GOLDEEN, 10, 20
encounter SPECIES_GOLDEEN, 10, 20
encounter SPECIES_GOLDEEN, 10, 20

// good rod encounters
encounter SPECIES_GOLDEEN, 10, 20
encounter SPECIES_GOLDEEN, 10, 20
encounter SPECIES_GOLDEEN, 10, 20
encounter SPECIES_GOLDEEN, 10, 20
encounter SPECIES_GOLDEEN, 10, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_GOLDEEN, 10, 20
encounter SPECIES_GOLDEEN, 10, 20
encounter SPECIES_GOLDEEN, 10, 20
encounter SPECIES_GOLDEEN, 10, 20
encounter SPECIES_GOLDEEN, 10, 20

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_GOLDEEN

.close


encounterdata  92   // Route 12

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_TENTACOOL, 25, 25
encounter SPECIES_QUAGSIRE, 25, 25
encounter SPECIES_TENTACRUEL, 25, 25
encounter SPECIES_TENTACRUEL, 25, 25
encounter SPECIES_TENTACRUEL, 25, 25

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_TENTACOOL, 10, 10
encounter SPECIES_TENTACOOL, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_TENTACOOL, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_TENTACOOL, 40, 40
encounter SPECIES_TENTACOOL, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_QWILFISH, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_TENTACOOL
// swarm super rod
pokemon SPECIES_RELICANTH

.close


encounterdata  93   // Route 19

walkrate 0
surfrate 10
rocksmashrate 30
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_TENTACOOL, 35, 35
encounter SPECIES_TENTACOOL, 30, 30
encounter SPECIES_TENTACRUEL, 35, 35
encounter SPECIES_TENTACRUEL, 35, 35
encounter SPECIES_TENTACRUEL, 35, 35

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_KINGLER, 28, 31
encounter SPECIES_KRABBY, 24, 27

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_KRABBY, 10, 10
encounter SPECIES_KRABBY, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_KRABBY, 20, 20
encounter SPECIES_CORSOLA, 20, 20
encounter SPECIES_KRABBY, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_KRABBY, 40, 40
encounter SPECIES_CORSOLA, 40, 40
encounter SPECIES_KRABBY, 40, 40
encounter SPECIES_KINGLER, 40, 40
encounter SPECIES_KRABBY, 40, 40

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_CLAMPERL
// swarm good rod
pokemon SPECIES_STARYU
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  94   // Route 20

walkrate 0
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_TENTACOOL, 35, 35
encounter SPECIES_TENTACOOL, 30, 30
encounter SPECIES_TENTACRUEL, 35, 35
encounter SPECIES_TENTACRUEL, 35, 35
encounter SPECIES_TENTACRUEL, 35, 35

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_TENTACOOL, 10, 10
encounter SPECIES_TENTACOOL, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_CHINCHOU, 20, 20
encounter SPECIES_SHELLDER, 20, 20
encounter SPECIES_CHINCHOU, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_CHINCHOU, 40, 40
encounter SPECIES_SHELLDER, 40, 40
encounter SPECIES_TENTACRUEL, 40, 40
encounter SPECIES_LANTURN, 40, 40
encounter SPECIES_TENTACRUEL, 40, 40

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  95   // Pallet Town

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_TENTACOOL, 35, 35
encounter SPECIES_TENTACOOL, 30, 30
encounter SPECIES_TENTACRUEL, 35, 35
encounter SPECIES_TENTACRUEL, 35, 35
encounter SPECIES_TENTACRUEL, 35, 35

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_TENTACOOL, 10, 10
encounter SPECIES_TENTACOOL, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_CHINCHOU, 20, 20
encounter SPECIES_SHELLDER, 20, 20
encounter SPECIES_CHINCHOU, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_CHINCHOU, 40, 40
encounter SPECIES_SHELLDER, 40, 40
encounter SPECIES_TENTACRUEL, 40, 40
encounter SPECIES_LANTURN, 40, 40
encounter SPECIES_TENTACRUEL, 40, 40

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  96   // Viridian City

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_POLIWAG, 10, 10
encounter SPECIES_POLIWAG, 5, 5
encounter SPECIES_POLIWHIRL, 10, 10
encounter SPECIES_POLIWHIRL, 10, 10
encounter SPECIES_POLIWHIRL, 10, 10

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_POLIWAG, 10, 10
encounter SPECIES_POLIWAG, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  97   // Cerulean City

walkrate 0
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 5, 5
encounter SPECIES_SEAKING, 10, 10
encounter SPECIES_SEAKING, 10, 10
encounter SPECIES_SEAKING, 10, 10

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_SEAKING, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  98   // Vermilion City

walkrate 0
surfrate 15
rocksmashrate 40
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_TENTACOOL, 35, 35
encounter SPECIES_TENTACOOL, 30, 30
encounter SPECIES_TENTACRUEL, 35, 35
encounter SPECIES_TENTACRUEL, 35, 35
encounter SPECIES_TENTACRUEL, 35, 35

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_DIGLETT, 24, 37
encounter SPECIES_SHUCKLE, 32, 35

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_TENTACOOL, 10, 10
encounter SPECIES_TENTACOOL, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_CHINCHOU, 20, 20
encounter SPECIES_SHELLDER, 20, 20
encounter SPECIES_CHINCHOU, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_CHINCHOU, 40, 40
encounter SPECIES_SHELLDER, 40, 40
encounter SPECIES_TENTACRUEL, 40, 40
encounter SPECIES_LANTURN, 40, 40
encounter SPECIES_TENTACRUEL, 40, 40

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_WINGULL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata  99   // Celadon City

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_GRIMER, 20, 20
encounter SPECIES_GRIMER, 15, 15
encounter SPECIES_MUK, 15, 15
encounter SPECIES_MUK, 15, 15
encounter SPECIES_MUK, 15, 15

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_GRIMER
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 100   // Fuchsia City

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_MAGIKARP, 15, 15
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GYARADOS, 20, 20
encounter SPECIES_MAGIKARP, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_GYARADOS, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_MAGIKARP
// swarm good rod
pokemon SPECIES_GYARADOS
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata 101   // Cinnabar Island

walkrate 0
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

// morning encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// night encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_TENTACOOL, 35, 35
encounter SPECIES_TENTACOOL, 30, 30
encounter SPECIES_TENTACRUEL, 35, 35
encounter SPECIES_TENTACRUEL, 35, 35
encounter SPECIES_TENTACRUEL, 35, 35

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_TENTACOOL, 10, 10
encounter SPECIES_TENTACOOL, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_CHINCHOU, 20, 20
encounter SPECIES_SHELLDER, 20, 20
encounter SPECIES_CHINCHOU, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_CHINCHOU, 40, 40
encounter SPECIES_SHELLDER, 40, 40
encounter SPECIES_TENTACRUEL, 40, 40
encounter SPECIES_LANTURN, 40, 40
encounter SPECIES_TENTACRUEL, 40, 40

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata 102   // Route 48

walkrate 25
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40

// morning encounter slots
pokemon SPECIES_SIRFETCHD
pokemon SPECIES_MEDICHAM
pokemon SPECIES_CROBAT
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_VENUSAUR
pokemon SPECIES_EMBOAR
monwithform SPECIES_ARCANINE, 1
pokemon SPECIES_CACTURNE
pokemon SPECIES_GIRAFARIG
pokemon SPECIES_GURDURR
pokemon SPECIES_GURDURR
pokemon SPECIES_GIRAFARIG

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_SIRFETCHD
pokemon SPECIES_MEDICHAM
pokemon SPECIES_CROBAT
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_VENUSAUR
pokemon SPECIES_EMBOAR
monwithform SPECIES_ARCANINE, 1
pokemon SPECIES_GIRAFARIG
pokemon SPECIES_GIRAFARIG
pokemon SPECIES_GURDURR
pokemon SPECIES_GURDURR
pokemon SPECIES_GIRAFARIG

// night encounter slots
pokemon SPECIES_SIRFETCHD
pokemon SPECIES_MEDICHAM
pokemon SPECIES_CROBAT
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_VENUSAUR
pokemon SPECIES_EMBOAR
monwithform SPECIES_ARCANINE, 1
pokemon SPECIES_GIRAFARIG
pokemon SPECIES_GIRAFARIG
pokemon SPECIES_GURDURR
pokemon SPECIES_GURDURR
pokemon SPECIES_GIRAFARIG

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_TAUROS
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 103   // Route 26

walkrate 25
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65

// morning encounter slots
pokemon SPECIES_FLYGON
pokemon SPECIES_KANGASKHAN
pokemon SPECIES_RHYPERIOR
pokemon SPECIES_CRADILY
pokemon SPECIES_LUCARIO
pokemon SPECIES_TOGEKISS
pokemon SPECIES_ESCAVALIER
monwithform SPECIES_BRAVIARY, 1
pokemon SPECIES_SALAMENCE
pokemon SPECIES_VOLCARONA
pokemon SPECIES_DOUBLADE
pokemon SPECIES_AEGISLASH

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_FLYGON
pokemon SPECIES_KANGASKHAN
pokemon SPECIES_RHYPERIOR
pokemon SPECIES_CRADILY
pokemon SPECIES_LUCARIO
pokemon SPECIES_TOGEKISS
pokemon SPECIES_ESCAVALIER
monwithform SPECIES_BRAVIARY, 1
pokemon SPECIES_SALAMENCE
pokemon SPECIES_VOLCARONA
pokemon SPECIES_DOUBLADE
pokemon SPECIES_AEGISLASH

// night encounter slots
pokemon SPECIES_FLYGON
pokemon SPECIES_KANGASKHAN
pokemon SPECIES_RHYPERIOR
pokemon SPECIES_CRADILY
pokemon SPECIES_LUCARIO
pokemon SPECIES_TOGEKISS
pokemon SPECIES_ESCAVALIER
monwithform SPECIES_BRAVIARY, 1
pokemon SPECIES_SALAMENCE
pokemon SPECIES_VOLCARONA
pokemon SPECIES_DOUBLADE
pokemon SPECIES_AEGISLASH

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_TALONFLAME, 50, 65
encounter SPECIES_GLISCOR, 50, 65
encounter SPECIES_SHARPEDO, 50, 65
encounter SPECIES_SHARPEDO, 50, 65
encounter SPECIES_SHARPEDO, 50, 65

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_TENTACOOL, 10, 10
encounter SPECIES_TENTACOOL, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_CHINCHOU, 20, 20
encounter SPECIES_SHELLDER, 20, 20
encounter SPECIES_CHINCHOU, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_FLOATZEL, 50, 65
encounter SPECIES_STARMIE, 50, 65
encounter SPECIES_MILOTIC, 50, 65
encounter SPECIES_GYARADOS, 50, 65
encounter SPECIES_GYARADOS, 50, 65

// swarm grass
pokemon SPECIES_DODUO
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata 104   // Route 27

walkrate 25
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65

// morning encounter slots
pokemon SPECIES_FLAMIGO
pokemon SPECIES_PERRSERKER
pokemon SPECIES_ALTARIA
pokemon SPECIES_SNORLAX
pokemon SPECIES_TREVENANT
pokemon SPECIES_SCIZOR
pokemon SPECIES_ABSOL
pokemon SPECIES_GARDEVOIR
pokemon SPECIES_CHARIZARD
pokemon SPECIES_CINDERACE
pokemon SPECIES_ANNIHILAPE
pokemon SPECIES_SKELEDIRGE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_FLAMIGO
pokemon SPECIES_PERRSERKER
pokemon SPECIES_ALTARIA
pokemon SPECIES_SNORLAX
pokemon SPECIES_TREVENANT
pokemon SPECIES_SCIZOR
pokemon SPECIES_ABSOL
pokemon SPECIES_GARDEVOIR
pokemon SPECIES_CHARIZARD
pokemon SPECIES_CINDERACE
pokemon SPECIES_ANNIHILAPE
pokemon SPECIES_SKELEDIRGE

// night encounter slots
pokemon SPECIES_FLAMIGO
pokemon SPECIES_PERRSERKER
pokemon SPECIES_ALTARIA
pokemon SPECIES_SNORLAX
pokemon SPECIES_TREVENANT
pokemon SPECIES_SCIZOR
pokemon SPECIES_ABSOL
pokemon SPECIES_GARDEVOIR
pokemon SPECIES_CHARIZARD
pokemon SPECIES_CINDERACE
pokemon SPECIES_ANNIHILAPE
pokemon SPECIES_SKELEDIRGE

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_STARAPTOR, 50, 65
encounter SPECIES_WHISCASH, 50, 65
encounter SPECIES_ARAQUANID, 50, 65
encounter SPECIES_ARAQUANID, 50, 65
encounter SPECIES_ARAQUANID, 50, 65

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_TENTACOOL, 10, 10
encounter SPECIES_TENTACOOL, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_CHINCHOU, 20, 20
encounter SPECIES_SHELLDER, 20, 20
encounter SPECIES_CHINCHOU, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_CLAWITZER, 50, 65
encounter SPECIES_OCTILLERY, 50, 65
encounter SPECIES_DRAGALGE, 50, 65
encounter SPECIES_LUDICOLO, 50, 65
encounter SPECIES_LUDICOLO, 50, 65

// swarm grass
pokemon SPECIES_DODUO
// swarm surf
pokemon SPECIES_LUVDISC
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata 105   // Route 28

walkrate 25
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 39, 40, 39, 40, 40, 40, 42, 42, 41, 43, 41, 43

// morning encounter slots
pokemon SPECIES_TANGELA
pokemon SPECIES_PONYTA
pokemon SPECIES_TANGELA
pokemon SPECIES_PONYTA
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_DODUO
pokemon SPECIES_DODRIO
pokemon SPECIES_DODUO
pokemon SPECIES_DODRIO

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_TANGELA
pokemon SPECIES_PONYTA
pokemon SPECIES_TANGELA
pokemon SPECIES_PONYTA
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_DODUO
pokemon SPECIES_DODRIO
pokemon SPECIES_DODUO
pokemon SPECIES_DODRIO

// night encounter slots
pokemon SPECIES_TANGELA
pokemon SPECIES_PONYTA
pokemon SPECIES_TANGELA
pokemon SPECIES_PONYTA
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_SNEASEL
pokemon SPECIES_SNEASEL
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH
pokemon SPECIES_RAPIDASH

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_POLIWAG, 35, 35
encounter SPECIES_POLIWHIRL, 40, 40
encounter SPECIES_POLIWHIRL, 40, 40
encounter SPECIES_POLIWHIRL, 40, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_POLIWAG, 10, 10
encounter SPECIES_POLIWAG, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_TANGELA
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata 106   // Mt. Moon 1F

walkrate 15
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 6, 8, 6, 8, 8, 8, 12, 12, 10, 8, 10, 8

// morning encounter slots
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_SANDSHREW
pokemon SPECIES_SANDSHREW
pokemon SPECIES_PARAS
pokemon SPECIES_PARAS
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_SANDSHREW
pokemon SPECIES_SANDSHREW
pokemon SPECIES_PARAS
pokemon SPECIES_PARAS
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY

// night encounter slots
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_SANDSHREW
pokemon SPECIES_SANDSHREW
pokemon SPECIES_PARAS
pokemon SPECIES_PARAS
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_ZUBAT
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 107   // Mt. Moon 2F

walkrate 15
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 6, 8, 6, 8, 8, 8, 12, 12, 10, 8, 10, 8

// morning encounter slots
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_SANDSHREW
pokemon SPECIES_SANDSHREW
pokemon SPECIES_PARAS
pokemon SPECIES_PARAS
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_SANDSHREW
pokemon SPECIES_SANDSHREW
pokemon SPECIES_PARAS
pokemon SPECIES_PARAS
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY

// night encounter slots
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_ZUBAT
pokemon SPECIES_GEODUDE
pokemon SPECIES_SANDSHREW
pokemon SPECIES_SANDSHREW
pokemon SPECIES_PARAS
pokemon SPECIES_PARAS
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY
pokemon SPECIES_SANDSLASH
pokemon SPECIES_CLEFAIRY

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_ZUBAT
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 108   // Rock Tunnel 1F

walkrate 15
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 10, 10, 10, 10, 12, 12, 8, 8, 14, 13, 14, 13

// morning encounter slots
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_MACHOP
pokemon SPECIES_MACHOP
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_CUBONE
pokemon SPECIES_MACHOKE
pokemon SPECIES_CUBONE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_MACHOP
pokemon SPECIES_MACHOP
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_CUBONE
pokemon SPECIES_MACHOKE
pokemon SPECIES_CUBONE

// night encounter slots
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_MACHOP
pokemon SPECIES_MACHOP
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_CUBONE
pokemon SPECIES_MACHOKE
pokemon SPECIES_CUBONE

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_CUBONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 109   // Rock Tunnel B1F

walkrate 15
surfrate 0
rocksmashrate 20
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 12, 12, 12, 12, 16, 16, 10, 10, 14, 14, 14, 14

// morning encounter slots
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_MAROWAK
pokemon SPECIES_KANGASKHAN
pokemon SPECIES_MAROWAK
pokemon SPECIES_KANGASKHAN

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_MAROWAK
pokemon SPECIES_KANGASKHAN
pokemon SPECIES_MAROWAK
pokemon SPECIES_KANGASKHAN

// night encounter slots
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_CUBONE
pokemon SPECIES_GEODUDE
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_ZUBAT
pokemon SPECIES_ZUBAT
pokemon SPECIES_MAROWAK
pokemon SPECIES_KANGASKHAN
pokemon SPECIES_MAROWAK
pokemon SPECIES_KANGASKHAN

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_GEODUDE, 12, 16
encounter SPECIES_GEODUDE, 17, 21

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_CUBONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 110   // Victory Road 1F

walkrate 10
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 32, 32, 32, 32, 33, 33, 34, 34, 36, 35, 36, 35

// morning encounter slots
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN

// night encounter slots
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GRAVELER
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 111   // Route 1

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 2, 2, 2, 2, 3, 3, 3, 3, 6, 4, 6, 4

// morning encounter slots
pokemon SPECIES_PIDGEY
pokemon SPECIES_RATTATA
pokemon SPECIES_PIDGEY
pokemon SPECIES_RATTATA
pokemon SPECIES_SENTRET
pokemon SPECIES_SENTRET
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_FURRET
pokemon SPECIES_PIDGEY
pokemon SPECIES_FURRET
pokemon SPECIES_PIDGEY

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_PIDGEY
pokemon SPECIES_RATTATA
pokemon SPECIES_PIDGEY
pokemon SPECIES_RATTATA
pokemon SPECIES_SENTRET
pokemon SPECIES_SENTRET
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_FURRET
pokemon SPECIES_PIDGEY
pokemon SPECIES_FURRET
pokemon SPECIES_PIDGEY

// night encounter slots
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_RATTATA
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_RATTATA
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_RATTATA
pokemon SPECIES_HOOTHOOT

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_POOCHYENA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 112   // Route 2 (South, below Viridian Forest)

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 3, 3, 3, 3, 5, 5, 7, 8, 7, 10, 7, 4

// morning encounter slots
pokemon SPECIES_CATERPIE
pokemon SPECIES_PIDGEY
pokemon SPECIES_CATERPIE
pokemon SPECIES_PIDGEY
pokemon SPECIES_METAPOD
pokemon SPECIES_METAPOD
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_SPINARAK
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_CATERPIE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_CATERPIE
pokemon SPECIES_PIDGEY
pokemon SPECIES_CATERPIE
pokemon SPECIES_PIDGEY
pokemon SPECIES_METAPOD
pokemon SPECIES_METAPOD
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_CATERPIE

// night encounter slots
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_SPINARAK
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_SPINARAK
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_ARIADOS
pokemon SPECIES_NOCTOWL
pokemon SPECIES_ARIADOS
pokemon SPECIES_SPINARAK

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_CATERPIE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 113   // Route 3

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 5, 5, 5, 5, 8, 8, 6, 6, 10, 8, 10, 8

// morning encounter slots
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_SPEAROW
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_SPEAROW
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW

// night encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_ZUBAT
pokemon SPECIES_RATTATA
pokemon SPECIES_ZUBAT
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_BALTOY
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 114   // Route 4

walkrate 20
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 5, 5, 5, 5, 8, 8, 6, 6, 10, 8, 10, 8

// morning encounter slots
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_SPEAROW
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_SPEAROW
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW

// night encounter slots
pokemon SPECIES_SPEAROW
pokemon SPECIES_ZUBAT
pokemon SPECIES_SPEAROW
pokemon SPECIES_ZUBAT
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_JIGGLYPUFF
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 5, 5
encounter SPECIES_SEAKING, 10, 10
encounter SPECIES_SEAKING, 10, 10
encounter SPECIES_SEAKING, 10, 10

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_SEAKING, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_SPEAROW
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata 115   // Route 5

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 13, 13, 13, 13, 14, 14, 15, 15, 12, 14, 12, 14

// morning encounter slots
pokemon SPECIES_PIDGEY
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_PIDGEY
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_PIDGEY
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_PIDGEY
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA

// night encounter slots
pokemon SPECIES_ODDISH
pokemon SPECIES_ODDISH
pokemon SPECIES_ODDISH
pokemon SPECIES_ODDISH
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_GLOOM
pokemon SPECIES_GLOOM
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_PIDGEY
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 116   // Route 6

walkrate 20
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 13, 13, 13, 13, 14, 14, 15, 15, 12, 14, 12, 14

// morning encounter slots
pokemon SPECIES_PIDGEY
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_PIDGEY
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_PIDGEY
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_PIDGEY
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA

// night encounter slots
pokemon SPECIES_ODDISH
pokemon SPECIES_ODDISH
pokemon SPECIES_ODDISH
pokemon SPECIES_ODDISH
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_PSYDUCK, 10, 10
encounter SPECIES_PSYDUCK, 5, 5
encounter SPECIES_GOLDUCK, 10, 10
encounter SPECIES_GOLDUCK, 10, 10
encounter SPECIES_GOLDUCK, 10, 10

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_POLIWAG, 10, 10
encounter SPECIES_POLIWAG, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_PIDGEY
// swarm surf
pokemon SPECIES_PSYDUCK
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata 117   // Route 7

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 17, 17, 17, 17, 18, 18, 19, 19, 19, 15, 19, 15

// morning encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_GROWLITHE
pokemon SPECIES_GROWLITHE
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_GROWLITHE
pokemon SPECIES_GROWLITHE
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_RATTATA
pokemon SPECIES_GROWLITHE
pokemon SPECIES_RATTATA
pokemon SPECIES_GROWLITHE

// night encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_MURKROW
pokemon SPECIES_RATTATA
pokemon SPECIES_MURKROW
pokemon SPECIES_GROWLITHE
pokemon SPECIES_GROWLITHE
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_MURKROW
pokemon SPECIES_HOUNDOUR
pokemon SPECIES_MURKROW
pokemon SPECIES_HOUNDOUR

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 118   // Route 8

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 17, 19, 17, 19, 15, 15, 18, 18, 17, 15, 17, 15

// morning encounter slots
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_GROWLITHE
pokemon SPECIES_GROWLITHE
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_KADABRA
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_KADABRA

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_GROWLITHE
pokemon SPECIES_GROWLITHE
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_KADABRA
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_KADABRA

// night encounter slots
pokemon SPECIES_NOCTOWL
pokemon SPECIES_HAUNTER
pokemon SPECIES_NOCTOWL
pokemon SPECIES_HAUNTER
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_GROWLITHE
pokemon SPECIES_KADABRA
pokemon SPECIES_GROWLITHE
pokemon SPECIES_KADABRA

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_PIDGEOTTO
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 119   // Route 9

walkrate 20
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 13, 15, 13, 15, 13, 13, 15, 15, 15, 15, 15, 15

// morning encounter slots
pokemon SPECIES_MANKEY
pokemon SPECIES_RATTATA
pokemon SPECIES_MANKEY
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_FEAROW
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_FEAROW
pokemon SPECIES_PRIMEAPE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_MANKEY
pokemon SPECIES_RATTATA
pokemon SPECIES_MANKEY
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_FEAROW
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_FEAROW
pokemon SPECIES_PRIMEAPE

// night encounter slots
pokemon SPECIES_MANKEY
pokemon SPECIES_RATTATA
pokemon SPECIES_MANKEY
pokemon SPECIES_RATTATA
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATICATE
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_RATICATE
pokemon SPECIES_PRIMEAPE

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_GOLDEEN, 15, 15
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_SEAKING, 15, 15
encounter SPECIES_SEAKING, 15, 15
encounter SPECIES_SEAKING, 15, 15

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_SEAKING, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_SABLEYE
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata 120   // Route 10

walkrate 20
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 16, 17, 16, 17, 16, 16, 18, 18, 18, 15, 18, 15

// morning encounter slots
pokemon SPECIES_SPEAROW
pokemon SPECIES_VOLTORB
pokemon SPECIES_SPEAROW
pokemon SPECIES_VOLTORB
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_RATICATE
pokemon SPECIES_ELECTABUZZ
pokemon SPECIES_RATICATE
pokemon SPECIES_ELECTABUZZ

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_SPEAROW
pokemon SPECIES_VOLTORB
pokemon SPECIES_SPEAROW
pokemon SPECIES_VOLTORB
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_ELECTABUZZ
pokemon SPECIES_ELECTABUZZ
pokemon SPECIES_ELECTABUZZ
pokemon SPECIES_ELECTABUZZ

// night encounter slots
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_VOLTORB
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_VOLTORB
pokemon SPECIES_RATICATE
pokemon SPECIES_RATICATE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_RATICATE
pokemon SPECIES_ELECTABUZZ
pokemon SPECIES_RATICATE
pokemon SPECIES_ELECTABUZZ

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_GOLDEEN, 15, 15
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_SEAKING, 15, 15
encounter SPECIES_SEAKING, 15, 15
encounter SPECIES_SEAKING, 15, 15

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_SEAKING, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_SPEAROW
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata 121   // Route 11

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 14, 15, 14, 15, 15, 15, 16, 16, 16, 16, 16, 16

// morning encounter slots
pokemon SPECIES_DROWZEE
pokemon SPECIES_RATTATA
pokemon SPECIES_DROWZEE
pokemon SPECIES_RATTATA
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_DROWZEE
pokemon SPECIES_DROWZEE
pokemon SPECIES_HYPNO
pokemon SPECIES_HYPNO
pokemon SPECIES_HYPNO
pokemon SPECIES_HYPNO

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_DROWZEE
pokemon SPECIES_RATTATA
pokemon SPECIES_DROWZEE
pokemon SPECIES_RATTATA
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_DROWZEE
pokemon SPECIES_DROWZEE
pokemon SPECIES_HYPNO
pokemon SPECIES_HYPNO
pokemon SPECIES_HYPNO
pokemon SPECIES_HYPNO

// night encounter slots
pokemon SPECIES_DROWZEE
pokemon SPECIES_RATTATA
pokemon SPECIES_DROWZEE
pokemon SPECIES_RATTATA
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_MAGNEMITE
pokemon SPECIES_DROWZEE
pokemon SPECIES_DROWZEE
pokemon SPECIES_HYPNO
pokemon SPECIES_HYPNO
pokemon SPECIES_HYPNO
pokemon SPECIES_HYPNO

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_DROWZEE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 122   // Route 13

walkrate 20
surfrate 15
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 23, 23, 23, 23, 25, 25, 22, 22, 24, 24, 24, 25

// morning encounter slots
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_CHANSEY

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_CHANSEY

// night encounter slots
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_CHANSEY

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_TENTACOOL, 25, 25
encounter SPECIES_QUAGSIRE, 25, 25
encounter SPECIES_TENTACRUEL, 25, 25
encounter SPECIES_TENTACRUEL, 25, 25
encounter SPECIES_TENTACRUEL, 25, 25

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_TENTACOOL, 10, 10
encounter SPECIES_TENTACOOL, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_TENTACOOL, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_TENTACOOL, 40, 40
encounter SPECIES_TENTACOOL, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_QWILFISH, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_CHANSEY
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_TENTACOOL
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata 123   // Route 14

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 23, 23, 23, 23, 25, 25, 24, 24, 26, 26, 26, 25

// morning encounter slots
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_CHANSEY

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_SKIPLOOM
pokemon SPECIES_CHANSEY

// night encounter slots
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_CHANSEY

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NIDORINA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 124   // Route 15

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 23, 23, 23, 23, 25, 25, 22, 22, 24, 24, 24, 25

// morning encounter slots
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_CHANSEY

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_HOPPIP
pokemon SPECIES_CHANSEY

// night encounter slots
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NIDORINA
pokemon SPECIES_NIDORINO
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_QUAGSIRE
pokemon SPECIES_CHANSEY

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NIDORINA
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 125   // Route 16

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 26, 27, 26, 27, 28, 28, 29, 29, 27, 30, 27, 30

// morning encounter slots
pokemon SPECIES_GRIMER
pokemon SPECIES_FEAROW
pokemon SPECIES_GRIMER
pokemon SPECIES_FEAROW
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_GRIMER
pokemon SPECIES_FEAROW
pokemon SPECIES_GRIMER
pokemon SPECIES_FEAROW
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK

// night encounter slots
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_MURKROW
pokemon SPECIES_MURKROW
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GRIMER
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 126   // Route 17

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 28, 27, 28, 27, 29, 29, 30, 30, 29, 32, 29, 32

// morning encounter slots
pokemon SPECIES_FEAROW
pokemon SPECIES_GRIMER
pokemon SPECIES_FEAROW
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_FEAROW
pokemon SPECIES_SLUGMA
pokemon SPECIES_FEAROW
pokemon SPECIES_SLUGMA
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK

// night encounter slots
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_MUK
pokemon SPECIES_MUK
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_FEAROW
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 127   // Route 18

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 26, 27, 26, 27, 28, 28, 29, 29, 27, 30, 27, 30

// morning encounter slots
pokemon SPECIES_GRIMER
pokemon SPECIES_FEAROW
pokemon SPECIES_GRIMER
pokemon SPECIES_FEAROW
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_GRIMER
pokemon SPECIES_FEAROW
pokemon SPECIES_GRIMER
pokemon SPECIES_FEAROW
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_FEAROW
pokemon SPECIES_FEAROW
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK

// night encounter slots
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_GRIMER
pokemon SPECIES_MUK
pokemon SPECIES_MUK
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK
pokemon SPECIES_SLUGMA
pokemon SPECIES_MUK

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GRIMER
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 128   // Route 21

walkrate 20
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 30, 25, 30, 25, 35, 35, 20, 20, 30, 28, 30, 28

// morning encounter slots
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_MR_MIME
pokemon SPECIES_TANGELA
pokemon SPECIES_MR_MIME

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_MR_MIME
pokemon SPECIES_MR_MIME
pokemon SPECIES_MR_MIME
pokemon SPECIES_MR_MIME

// night encounter slots
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_TANGELA
pokemon SPECIES_MR_MIME
pokemon SPECIES_TANGELA
pokemon SPECIES_MR_MIME

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_TENTACOOL, 35, 35
encounter SPECIES_TENTACOOL, 30, 30
encounter SPECIES_TENTACRUEL, 35, 35
encounter SPECIES_TENTACRUEL, 35, 35
encounter SPECIES_TENTACRUEL, 35, 35

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_TENTACOOL, 10, 10
encounter SPECIES_TENTACOOL, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_TENTACOOL, 20, 20
encounter SPECIES_CHINCHOU, 20, 20
encounter SPECIES_SHELLDER, 20, 20
encounter SPECIES_CHINCHOU, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_CHINCHOU, 40, 40
encounter SPECIES_SHELLDER, 40, 40
encounter SPECIES_TENTACRUEL, 40, 40
encounter SPECIES_LANTURN, 40, 40
encounter SPECIES_TENTACRUEL, 40, 40

// swarm grass
pokemon SPECIES_TANGELA
// swarm surf
pokemon SPECIES_TENTACOOL
// swarm good rod
pokemon SPECIES_SHELLDER
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata 129   // Route 22

walkrate 20
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 3, 3, 3, 3, 5, 5, 4, 4, 6, 7, 6, 7

// morning encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_SPEAROW
pokemon SPECIES_SPEAROW
pokemon SPECIES_DODUO
pokemon SPECIES_DODUO
pokemon SPECIES_PONYTA
pokemon SPECIES_FEAROW
pokemon SPECIES_PONYTA
pokemon SPECIES_FEAROW

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_RATTATA
pokemon SPECIES_SPEAROW
pokemon SPECIES_SPEAROW
pokemon SPECIES_SPEAROW
pokemon SPECIES_DODUO
pokemon SPECIES_DODUO
pokemon SPECIES_PONYTA
pokemon SPECIES_FEAROW
pokemon SPECIES_PONYTA
pokemon SPECIES_FEAROW

// night encounter slots
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_RATTATA
pokemon SPECIES_PONYTA
pokemon SPECIES_RATTATA
pokemon SPECIES_PONYTA
pokemon SPECIES_RATTATA

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_POLIWAG, 10, 10
encounter SPECIES_POLIWAG, 5, 5
encounter SPECIES_POLIWHIRL, 10, 10
encounter SPECIES_POLIWHIRL, 10, 10
encounter SPECIES_POLIWHIRL, 10, 10

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_POLIWAG, 10, 10
encounter SPECIES_POLIWAG, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_POLIWAG, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_RATTATA
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata 130   // Route 24

walkrate 20
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 8, 10, 8, 10, 9, 9, 12, 12, 8, 14, 8, 14

// morning encounter slots
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_VENONAT
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_VENONAT
pokemon SPECIES_WEEPINBELL

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_SUNKERN
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_SUNKERN
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_WEEPINBELL

// night encounter slots
pokemon SPECIES_VENONAT
pokemon SPECIES_ODDISH
pokemon SPECIES_VENONAT
pokemon SPECIES_ODDISH
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_VENOMOTH
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_VENOMOTH

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 5, 5
encounter SPECIES_SEAKING, 10, 10
encounter SPECIES_SEAKING, 10, 10
encounter SPECIES_SEAKING, 10, 10

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_SEAKING, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_BELLSPROUT
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata 131   // Route 25

walkrate 20
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 8, 10, 8, 10, 8, 8, 9, 9, 10, 14, 10, 14

// morning encounter slots
pokemon SPECIES_PIDGEY
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_PIDGEY
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_VENONAT
pokemon SPECIES_VENONAT
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_WEEPINBELL

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_PIDGEY
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_PIDGEY
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_WEEPINBELL

// night encounter slots
pokemon SPECIES_VENONAT
pokemon SPECIES_ODDISH
pokemon SPECIES_VENONAT
pokemon SPECIES_ODDISH
pokemon SPECIES_VENOMOTH
pokemon SPECIES_VENOMOTH
pokemon SPECIES_ABRA
pokemon SPECIES_ABRA
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_BELLSPROUT
pokemon SPECIES_WEEPINBELL
pokemon SPECIES_BELLSPROUT

// hoenn encounter slots
pokemon SPECIES_WHISMUR
pokemon SPECIES_LINOONE

// sinnoh encounter slots
pokemon SPECIES_BUIZEL
pokemon SPECIES_BIDOOF

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 5, 5
encounter SPECIES_SEAKING, 10, 10
encounter SPECIES_SEAKING, 10, 10
encounter SPECIES_SEAKING, 10, 10

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_GOLDEEN, 40, 40
encounter SPECIES_MAGIKARP, 40, 40
encounter SPECIES_SEAKING, 40, 40
encounter SPECIES_MAGIKARP, 40, 40

// swarm grass
pokemon SPECIES_BUNEARY
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata 132   // Tohjo Falls

walkrate 15
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65

// morning encounter slots
pokemon SPECIES_GOLEM
pokemon SPECIES_BARBARACLE
pokemon SPECIES_CRADILY
pokemon SPECIES_ARMALDO
pokemon SPECIES_KABUTOPS    
pokemon SPECIES_OMASTAR
pokemon SPECIES_GOODRA
monwithform SPECIES_GOODRA, 1
pokemon SPECIES_HYDREIGON
pokemon SPECIES_SALAMENCE
pokemon SPECIES_BLASTOISE
pokemon SPECIES_EMPOLEON

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_GOLEM
pokemon SPECIES_BARBARACLE
pokemon SPECIES_CRADILY
pokemon SPECIES_ARMALDO
pokemon SPECIES_KABUTOPS    
pokemon SPECIES_OMASTAR
pokemon SPECIES_GOODRA
monwithform SPECIES_GOODRA, 1
pokemon SPECIES_HYDREIGON
pokemon SPECIES_SALAMENCE
pokemon SPECIES_BLASTOISE
pokemon SPECIES_EMPOLEON

// night encounter slots
pokemon SPECIES_GOLEM
pokemon SPECIES_BARBARACLE
pokemon SPECIES_CRADILY
pokemon SPECIES_ARMALDO
pokemon SPECIES_KABUTOPS    
pokemon SPECIES_OMASTAR
pokemon SPECIES_GOODRA
monwithform SPECIES_GOODRA, 1
pokemon SPECIES_HYDREIGON
pokemon SPECIES_SALAMENCE
pokemon SPECIES_BLASTOISE
pokemon SPECIES_EMPOLEON

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_CROBAT, 50, 65
encounter SPECIES_CORVIKNIGHT, 50, 65
encounter SPECIES_AERODACTYL, 50, 65
encounter SPECIES_AERODACTYL, 50, 65
encounter SPECIES_AERODACTYL, 50, 65

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_GOLDEEN, 10, 10
encounter SPECIES_GOLDEEN, 10, 10

// good rod encounters
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_GOLDEEN, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_BASCULEGION, 50, 65
encounter SPECIES_OCTILLERY, 50, 65
encounter SPECIES_PRIMARINA, 50, 65
encounter SPECIES_PRIMARINA, 50, 65
encounter SPECIES_PRIMARINA, 50, 65

// swarm grass
pokemon SPECIES_ZUBAT
// swarm surf
pokemon SPECIES_GOLDEEN
// swarm good rod
pokemon SPECIES_GOLDEEN
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata 133   // Digletts Cave

walkrate 10
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 15, 17, 15, 17, 19, 19, 13, 13, 19, 24, 19, 29

// morning encounter slots
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DUGTRIO
pokemon SPECIES_DUGTRIO
pokemon SPECIES_DUGTRIO
pokemon SPECIES_DUGTRIO

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DUGTRIO
pokemon SPECIES_DUGTRIO
pokemon SPECIES_DUGTRIO
pokemon SPECIES_DUGTRIO

// night encounter slots
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DIGLETT
pokemon SPECIES_DUGTRIO
pokemon SPECIES_DUGTRIO
pokemon SPECIES_DUGTRIO
pokemon SPECIES_DUGTRIO

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_DIGLETT
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 134   // Victory Road 2F

walkrate 10
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 32, 32, 32, 32, 33, 33, 34, 34, 36, 35, 36, 35

// morning encounter slots
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN

// night encounter slots
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GRAVELER
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 135   // Victory Road 3F

walkrate 10
surfrate 0
rocksmashrate 40
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 32, 32, 32, 32, 33, 33, 34, 34, 36, 35, 36, 35

// morning encounter slots
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN

// night encounter slots
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_GRAVELER
pokemon SPECIES_GOLBAT
pokemon SPECIES_DONPHAN
pokemon SPECIES_DONPHAN
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN
pokemon SPECIES_ONIX
pokemon SPECIES_RHYHORN

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_GEODUDE, 24, 32
encounter SPECIES_GRAVELER, 30, 33

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_GRAVELER
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 136   // Route 2 (North, above Viridian Forest)

walkrate 20
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 3, 3, 3, 3, 5, 5, 7, 8, 7, 10, 7, 4

// morning encounter slots
pokemon SPECIES_CATERPIE
pokemon SPECIES_PIDGEY
pokemon SPECIES_CATERPIE
pokemon SPECIES_PIDGEY
pokemon SPECIES_METAPOD
pokemon SPECIES_METAPOD
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_SPINARAK
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_CATERPIE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_CATERPIE
pokemon SPECIES_PIDGEY
pokemon SPECIES_CATERPIE
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEY
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_CATERPIE

// night encounter slots
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_SPINARAK
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_SPINARAK
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_ARIADOS
pokemon SPECIES_NOCTOWL
pokemon SPECIES_ARIADOS
pokemon SPECIES_SPINARAK

// hoenn encounter slots
pokemon SPECIES_PLUSLE
pokemon SPECIES_MINUN

// sinnoh encounter slots
pokemon SPECIES_SHINX
pokemon SPECIES_SHINX

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_CATERPIE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 137   // Viridian Forest

walkrate 15
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 3, 3, 3, 3, 5, 5, 7, 7, 7, 4, 7, 4

// morning encounter slots
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_METAPOD
pokemon SPECIES_PIDGEY
pokemon SPECIES_METAPOD
pokemon SPECIES_METAPOD
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_BUTTERFREE
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIKACHU
pokemon SPECIES_PIKACHU
pokemon SPECIES_PIKACHU

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_CATERPIE
pokemon SPECIES_CATERPIE
pokemon SPECIES_METAPOD
pokemon SPECIES_PIDGEY
pokemon SPECIES_METAPOD
pokemon SPECIES_METAPOD
pokemon SPECIES_PIDGEY
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIDGEOTTO
pokemon SPECIES_PIKACHU
pokemon SPECIES_PIKACHU
pokemon SPECIES_PIKACHU

// night encounter slots
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_HOOTHOOT
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_NOCTOWL
pokemon SPECIES_PIKACHU
pokemon SPECIES_NOCTOWL
pokemon SPECIES_PIKACHU

// hoenn encounter slots
pokemon SPECIES_SPOINK
pokemon SPECIES_NUMEL

// sinnoh encounter slots
pokemon SPECIES_BUDEW
pokemon SPECIES_CARNIVINE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_KRICKETOT
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 138   // Olivine Lighthouse

walkrate 10
surfrate 0
rocksmashrate 0
oldrodrate 0
goodrodrate 0
superrodrate 0
walklevels 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34

// morning encounter slots
pokemon SPECIES_AMPHAROS
pokemon SPECIES_LAIRON
pokemon SPECIES_MAGNETON
pokemon SPECIES_TOGEDEMARU
monwithform SPECIES_RAICHU, 1
pokemon SPECIES_LUXRAY
pokemon SPECIES_LUXRAY
pokemon SPECIES_EELEKTRIK
monwithform SPECIES_ELECTRODE, 1
pokemon SPECIES_TOXTRICITY
monwithform SPECIES_GRAVELER, 1
monwithform SPECIES_GRAVELER, 1


// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_AMPHAROS
pokemon SPECIES_LAIRON
pokemon SPECIES_MAGNETON
pokemon SPECIES_TOGEDEMARU
monwithform SPECIES_RAICHU, 1
pokemon SPECIES_LUXRAY
pokemon SPECIES_LUXRAY
pokemon SPECIES_EELEKTRIK
monwithform SPECIES_ELECTRODE, 1
pokemon SPECIES_TOXTRICITY
monwithform SPECIES_GRAVELER, 1
monwithform SPECIES_GRAVELER, 1

// night encounter slots
pokemon SPECIES_AMPHAROS
pokemon SPECIES_LAIRON
pokemon SPECIES_MAGNETON
pokemon SPECIES_TOGEDEMARU
monwithform SPECIES_RAICHU, 1
pokemon SPECIES_LUXRAY
pokemon SPECIES_LUXRAY
pokemon SPECIES_EELEKTRIK
monwithform SPECIES_ELECTRODE, 1
pokemon SPECIES_TOXTRICITY
monwithform SPECIES_GRAVELER, 1
monwithform SPECIES_GRAVELER, 1

// hoenn encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// sinnoh encounter slots
pokemon SPECIES_NONE
pokemon SPECIES_NONE

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// good rod encounters
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// swarm grass
pokemon SPECIES_NONE
// swarm surf
pokemon SPECIES_NONE
// swarm good rod
pokemon SPECIES_NONE
// swarm super rod
pokemon SPECIES_NONE

.close


encounterdata 139   // Cerulean Cave 1F

walkrate 10
surfrate 10
rocksmashrate 5
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 39, 38, 38, 38, 40, 39, 40, 37, 39, 40, 39, 40

// morning encounter slots
pokemon SPECIES_MACHOKE
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLBAT
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_MAGNETON
pokemon SPECIES_DITTO
pokemon SPECIES_ELECTRODE
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_MACHOKE
pokemon SPECIES_MAGNETON
pokemon SPECIES_DITTO

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_MACHOKE
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLBAT
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_MAGNETON
pokemon SPECIES_DITTO
pokemon SPECIES_ELECTRODE
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_MACHOKE
pokemon SPECIES_MAGNETON
pokemon SPECIES_DITTO

// night encounter slots
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_PARASECT
pokemon SPECIES_MAGNETON
pokemon SPECIES_DITTO
pokemon SPECIES_ELECTRODE
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_PRIMEAPE
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_PSYDUCK, 40, 40
encounter SPECIES_PSYDUCK, 35, 35
encounter SPECIES_GOLDUCK, 40, 40
encounter SPECIES_GOLDUCK, 40, 40
encounter SPECIES_GOLDUCK, 40, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_GEODUDE, 22, 24
encounter SPECIES_GRAVELER, 26, 30

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10

// good rod encounters
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_POLIWAG, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_POLIWHIRL, 40, 40
encounter SPECIES_GYARADOS, 40, 40
encounter SPECIES_GYARADOS, 40, 40
encounter SPECIES_GYARADOS, 40, 40

// swarm grass
pokemon SPECIES_GOLBAT
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata 140   // Cerulean Cave B1F

walkrate 10
surfrate 10
rocksmashrate 0
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 42, 40, 41, 39, 41, 42, 41, 42, 41, 42, 41, 42

// morning encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_MAGNETON
pokemon SPECIES_DITTO
pokemon SPECIES_ELECTRODE
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_KADABRA
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_MAGNETON
pokemon SPECIES_DITTO
pokemon SPECIES_ELECTRODE
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE
pokemon SPECIES_MACHOKE

// night encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_MAGNETON
pokemon SPECIES_DITTO
pokemon SPECIES_ELECTRODE
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT
pokemon SPECIES_GOLBAT

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_PSYDUCK, 40, 40
encounter SPECIES_PSYDUCK, 35, 35
encounter SPECIES_GOLDUCK, 40, 40
encounter SPECIES_GOLDUCK, 40, 40
encounter SPECIES_GOLDUCK, 40, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_NONE, 0, 0
encounter SPECIES_NONE, 0, 0

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10

// good rod encounters
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_POLIWAG, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_POLIWHIRL, 40, 40
encounter SPECIES_GYARADOS, 40, 40
encounter SPECIES_GYARADOS, 40, 40
encounter SPECIES_GYARADOS, 40, 40

// swarm grass
pokemon SPECIES_KADABRA
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close


encounterdata 141   // Cerulean Cave B2F

walkrate 10
surfrate 10
rocksmashrate 5
oldrodrate 25
goodrodrate 50
superrodrate 75
walklevels 46, 45, 47, 45, 45, 45, 46, 47, 47, 49, 47, 49

// morning encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_MAGNETON
pokemon SPECIES_DITTO
pokemon SPECIES_ELECTRODE
pokemon SPECIES_MAGNETON
pokemon SPECIES_PARASECT
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_PARASECT
pokemon SPECIES_WOBBUFFET

// day encounter slots; probabilities:  20, 20, 10, 10, 10, 10, 5, 5, 4, 4, 1, 1
pokemon SPECIES_KADABRA
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_MAGNETON
pokemon SPECIES_DITTO
pokemon SPECIES_ELECTRODE
pokemon SPECIES_MAGNETON
pokemon SPECIES_PARASECT
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_PARASECT
pokemon SPECIES_WOBBUFFET

// night encounter slots
pokemon SPECIES_KADABRA
pokemon SPECIES_PARASECT
pokemon SPECIES_GOLBAT
pokemon SPECIES_MACHOKE
pokemon SPECIES_MAGNETON
pokemon SPECIES_DITTO
pokemon SPECIES_ELECTRODE
pokemon SPECIES_MAGNETON
pokemon SPECIES_PARASECT
pokemon SPECIES_WOBBUFFET
pokemon SPECIES_PARASECT
pokemon SPECIES_WOBBUFFET

// hoenn encounter slots
pokemon SPECIES_ABSOL
pokemon SPECIES_MAKUHITA

// sinnoh encounter slots
pokemon SPECIES_BRONZOR
pokemon SPECIES_CHINGLING

// surf encounters; probabilities:  60, 30, 5, 4, 1
encounter SPECIES_PSYDUCK, 40, 40
encounter SPECIES_PSYDUCK, 35, 35
encounter SPECIES_GOLDUCK, 40, 40
encounter SPECIES_GOLDUCK, 40, 40
encounter SPECIES_GOLDUCK, 40, 40

// rock smash encounters; probabilities:  90, 10
encounter SPECIES_GEODUDE, 22, 24
encounter SPECIES_GRAVELER, 26, 30

// old rod encounters
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10
encounter SPECIES_MAGIKARP, 10, 10

// good rod encounters
encounter SPECIES_POLIWAG, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_MAGIKARP, 20, 20
encounter SPECIES_GOLDEEN, 20, 20
encounter SPECIES_POLIWAG, 20, 20

// super rod encounters; probabilities:  40, 40, 15, 4, 1
encounter SPECIES_POLIWAG, 40, 40
encounter SPECIES_POLIWHIRL, 40, 40
encounter SPECIES_GYARADOS, 40, 40
encounter SPECIES_GYARADOS, 40, 40
encounter SPECIES_GYARADOS, 40, 40

// swarm grass
pokemon SPECIES_KADABRA
// swarm surf
pokemon SPECIES_POLIWAG
// swarm good rod
pokemon SPECIES_POLIWAG
// swarm super rod
pokemon SPECIES_MAGIKARP

.close