.nds
.thumb

.include "armips/include/macros.s"

.include "asm/include/moves.inc"
.include "asm/include/species.inc"

// the level up moves for each pokemon


levelup SPECIES_NONE
    terminatelearnset


levelup SPECIES_BULBASAUR
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_ACID, 8
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_TAKE_DOWN, 17
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_SLUDGE_BOMB, 22
    learnset MOVE_SEED_BOMB, 26
    learnset MOVE_TOXIC, 30
    learnset MOVE_DOUBLE_EDGE, 30
    learnset MOVE_LEAF_BLADE, 36
    learnset MOVE_GIGA_DRAIN, 48
    terminatelearnset


levelup SPECIES_IVYSAUR
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_ACID, 8
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_POISON_POWDER, 15
    learnset MOVE_SLEEP_POWDER, 15
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_TAKE_DOWN, 19
    learnset MOVE_MAGICAL_LEAF, 22
    learnset MOVE_SLUDGE_BOMB, 25
    learnset MOVE_SEED_BOMB, 28
    learnset MOVE_TOXIC, 31
    learnset MOVE_DOUBLE_EDGE, 33
    learnset MOVE_GIGA_DRAIN, 55
    terminatelearnset


levelup SPECIES_VENUSAUR
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_ACID, 8
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_POISON_POWDER, 15
    learnset MOVE_SLEEP_POWDER, 15
    learnset MOVE_MEGA_DRAIN, 18
    learnset MOVE_TAKE_DOWN, 21
    learnset MOVE_MAGICAL_LEAF, 25
    learnset MOVE_SLUDGE_BOMB, 28
    learnset MOVE_SEED_BOMB, 32
    learnset MOVE_TOXIC, 35
    learnset MOVE_LEAF_BLADE, 36
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_EARTH_POWER, 45
    terminatelearnset


levelup SPECIES_CHARMANDER
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_SMOKESCREEN, 8
    learnset MOVE_BITE, 11
    learnset MOVE_DRAGON_BREATH, 14
    learnset MOVE_FIRE_FANG, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_FLAME_BURST, 25
    learnset MOVE_DIG, 29
    learnset MOVE_FLAMETHROWER, 32
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_HEAT_WAVE, 40
    learnset MOVE_FLARE_BLITZ, 48
    terminatelearnset


levelup SPECIES_CHARMELEON
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_SMOKESCREEN, 8
    learnset MOVE_BITE, 11
    learnset MOVE_DRAGON_BREATH, 14
    learnset MOVE_FIRE_FANG, 16
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_FLAME_BURST, 25
    learnset MOVE_DIG, 28
    learnset MOVE_DRAGON_CLAW, 33
    learnset MOVE_FLAMETHROWER, 36
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_HEAT_WAVE, 45
    learnset MOVE_FLARE_BLITZ, 55
    terminatelearnset


levelup SPECIES_CHARIZARD
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_HURRICANE, 1
    learnset MOVE_DRAGON_RUSH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_SMOKESCREEN, 8
    learnset MOVE_BITE, 11
    learnset MOVE_DRAGON_BREATH, 14
    learnset MOVE_FIRE_FANG, 16
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_FLAME_BURST, 25
    learnset MOVE_DIG, 28
    learnset MOVE_DRAGON_CLAW, 33
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_CRUNCH, 41
    learnset MOVE_BRICK_BREAK, 47
    learnset MOVE_HEAT_WAVE, 52
    terminatelearnset


levelup SPECIES_SQUIRTLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_TAIL_WHIP, 4
    learnset MOVE_BITE, 9
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_AURORA_BEAM, 16
    learnset MOVE_AQUA_JET, 20
    learnset MOVE_AQUA_TAIL, 24
    learnset MOVE_YAWN, 26
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_ICE_PUNCH, 32
    learnset MOVE_WAVE_CRASH, 38
    learnset MOVE_MIRROR_COAT, 43
    learnset MOVE_WATER_SPOUT, 49
    terminatelearnset


levelup SPECIES_WARTORTLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_TAIL_WHIP, 4
    learnset MOVE_BITE, 9
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_AURORA_BEAM, 16
    learnset MOVE_AQUA_JET, 22
    learnset MOVE_AQUA_TAIL, 26
    learnset MOVE_YAWN, 29
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_ICE_PUNCH, 39
    learnset MOVE_WAVE_CRASH, 44
    learnset MOVE_MIRROR_COAT, 50
    learnset MOVE_WATER_SPOUT, 57
    terminatelearnset


levelup SPECIES_BLASTOISE
    learnset MOVE_WATER_SPOUT, 1
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_MUDDY_WATER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_TAIL_WHIP, 4
    learnset MOVE_BITE, 9
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_AURORA_BEAM, 16
    learnset MOVE_AQUA_JET, 22
    learnset MOVE_AQUA_TAIL, 29
    learnset MOVE_YAWN, 33
    learnset MOVE_BODY_SLAM, 37
    learnset MOVE_BRICK_BREAK, 40
    learnset MOVE_ICE_PUNCH, 42
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_WAVE_CRASH, 50
    terminatelearnset


levelup SPECIES_CATERPIE
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_BUG_BITE, 9
    terminatelearnset


levelup SPECIES_METAPOD
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 7
    terminatelearnset


levelup SPECIES_BUTTERFREE
    learnset MOVE_RAGE_POWDER, 1
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_CONFUSION, 10
    learnset MOVE_MEGA_DRAIN, 10
    learnset MOVE_SUPERSONIC, 12
    learnset MOVE_POISON_POWDER, 13
    learnset MOVE_STUN_SPORE, 13
    learnset MOVE_SLEEP_POWDER, 15
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_SILVER_WIND, 19
    learnset MOVE_SAFEGUARD, 22
    learnset MOVE_U_TURN, 24
    learnset MOVE_AIR_SLASH, 28
    learnset MOVE_GIGA_DRAIN, 31
    learnset MOVE_BUG_BUZZ, 34
    learnset MOVE_HURRICANE, 38
    learnset MOVE_TAILWIND, 42
    terminatelearnset


levelup SPECIES_WEEDLE
    learnset MOVE_POISON_STING, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_BUG_BITE, 9
    terminatelearnset


levelup SPECIES_KAKUNA
    learnset MOVE_POISON_STING, 1
    learnset MOVE_HARDEN, 7
    terminatelearnset


levelup SPECIES_BEEDRILL
    learnset MOVE_FELL_STINGER, 1
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_TWINEEDLE, 1
    learnset MOVE_FURY_ATTACK, 1
    learnset MOVE_TWINEEDLE, 10
    learnset MOVE_RAGE, 12
    learnset MOVE_AERIAL_ACE, 16
    learnset MOVE_TOXIC, 18
    learnset MOVE_ASSURANCE, 21
    learnset MOVE_BRICK_BREAK, 24
    learnset MOVE_ENDEAVOR, 26
    learnset MOVE_X_SCISSOR, 29
    learnset MOVE_POISON_JAB, 31
    learnset MOVE_DRILL_RUN, 34
    learnset MOVE_MEGAHORN, 40
    terminatelearnset


levelup SPECIES_PIDGEY
    learnset MOVE_TACKLE, 1
    learnset MOVE_FEATHER_DANCE, 2
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_GUST, 9
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_WING_ATTACK, 15
    learnset MOVE_SECRET_POWER, 18
    learnset MOVE_AERIAL_ACE, 23
    learnset MOVE_EXTREME_SPEED, 25
    learnset MOVE_AIR_SLASH, 27
    learnset MOVE_DOUBLE_EDGE, 30
    learnset MOVE_BRAVE_BIRD, 35
    terminatelearnset


levelup SPECIES_PIDGEOTTO
    learnset MOVE_TACKLE, 1
    learnset MOVE_FEATHER_DANCE, 2
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_GUST, 9
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_WING_ATTACK, 15
    learnset MOVE_SECRET_POWER, 22
    learnset MOVE_AERIAL_ACE, 28
    learnset MOVE_AIR_SLASH, 33
    learnset MOVE_STEEL_WING, 36
    learnset MOVE_DOUBLE_EDGE, 39
    learnset MOVE_BRAVE_BIRD, 45
    terminatelearnset


levelup SPECIES_PIDGEOT
    learnset MOVE_ROOST, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_FEATHER_DANCE, 2
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_GUST, 9
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_WING_ATTACK, 15
    learnset MOVE_SECRET_POWER, 22
    learnset MOVE_AERIAL_ACE, 30
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_HEAT_WAVE, 40
    learnset MOVE_STEEL_WING, 43
    learnset MOVE_DOUBLE_EDGE, 46
    learnset MOVE_BRAVE_BIRD, 51
    terminatelearnset


levelup SPECIES_RATTATA
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_BITE, 10
    learnset MOVE_PURSUIT, 13
    learnset MOVE_HYPER_FANG, 16
    learnset MOVE_ASSURANCE, 19
    learnset MOVE_CRUNCH, 22
    learnset MOVE_SUCKER_PUNCH, 25
    learnset MOVE_SUPER_FANG, 28
    learnset MOVE_DOUBLE_EDGE, 31
    learnset MOVE_ENDEAVOR, 34
    learnset MOVE_FACADE, 36
    terminatelearnset


levelup SPECIES_RATICATE
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_BITE, 10
    learnset MOVE_PURSUIT, 13
    learnset MOVE_HYPER_FANG, 16
    learnset MOVE_ASSURANCE, 19
    learnset MOVE_CRUNCH, 22
    learnset MOVE_SUCKER_PUNCH, 25
    learnset MOVE_SUPER_FANG, 32
    learnset MOVE_DOUBLE_EDGE, 35
    learnset MOVE_ENDEAVOR, 37
    learnset MOVE_FACADE, 41
    learnset MOVE_REVERSAL, 44
    terminatelearnset


levelup SPECIES_SPEAROW
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEER, 4
    learnset MOVE_PURSUIT, 6
    learnset MOVE_ASSURANCE, 9
    learnset MOVE_SECRET_POWER, 11
    learnset MOVE_AERIAL_ACE, 15
    learnset MOVE_RAGE, 18
    learnset MOVE_QUICK_ATTACK, 21
    learnset MOVE_STEEL_WING, 25
    learnset MOVE_DRILL_PECK, 31
    learnset MOVE_DOUBLE_EDGE, 36
    terminatelearnset


levelup SPECIES_FEAROW
    learnset MOVE_ROOST, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEER, 4
    learnset MOVE_PURSUIT, 6
    learnset MOVE_ASSURANCE, 9
    learnset MOVE_SECRET_POWER, 11
    learnset MOVE_AERIAL_ACE, 15
    learnset MOVE_RAGE, 22
    learnset MOVE_QUICK_ATTACK, 26
    learnset MOVE_STEEL_WING, 29
    learnset MOVE_DRILL_RUN, 34
    learnset MOVE_DRILL_PECK, 39
    learnset MOVE_DOUBLE_EDGE, 43
    terminatelearnset


levelup SPECIES_EKANS
    learnset MOVE_WRAP, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ACID, 4
    learnset MOVE_BITE, 8
    learnset MOVE_GLARE, 12
    learnset MOVE_MUD_SHOT, 15
    learnset MOVE_DIG, 19
    learnset MOVE_SLUDGE_BOMB, 22
    learnset MOVE_BODY_SLAM, 26
    learnset MOVE_CRUNCH, 29
    learnset MOVE_POISON_TAIL, 33
    learnset MOVE_PSYCHIC_FANGS, 35
    learnset MOVE_ROCK_SLIDE, 39
    learnset MOVE_SUCKER_PUNCH, 44
    learnset MOVE_GUNK_SHOT, 47
    terminatelearnset


levelup SPECIES_ARBOK
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ACID, 4
    learnset MOVE_BITE, 8
    learnset MOVE_GLARE, 12
    learnset MOVE_MUD_SHOT, 15
    learnset MOVE_DIG, 19
    learnset MOVE_SLUDGE_BOMB, 22
    learnset MOVE_LEECH_LIFE, 25
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_CRUNCH, 31
    learnset MOVE_THUNDER_FANG, 34
    learnset MOVE_POISON_TAIL, 37
    learnset MOVE_PSYCHIC_FANGS, 41
    learnset MOVE_ROCK_SLIDE, 46
    learnset MOVE_SUCKER_PUNCH, 49
    learnset MOVE_GUNK_SHOT, 52
    terminatelearnset


levelup SPECIES_PIKACHU
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_THUNDER_WAVE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 12
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_SPARK, 22
    learnset MOVE_PLAY_ROUGH, 26
    learnset MOVE_IRON_TAIL, 30
    learnset MOVE_THUNDERBOLT, 33
    learnset MOVE_SURF, 37
    learnset MOVE_VOLT_SWITCH, 42
    learnset MOVE_VOLT_TACKLE, 46
    terminatelearnset


levelup SPECIES_RAICHU
    learnset MOVE_THUNDER_PUNCH, 0
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_THUNDER_WAVE, 7
    learnset MOVE_QUICK_ATTACK, 14
    learnset MOVE_ELECTRO_BALL, 19
    learnset MOVE_SHOCK_WAVE, 25
    learnset MOVE_SPARK, 28
    learnset MOVE_PLAY_ROUGH, 32
    learnset MOVE_IRON_TAIL, 36
    learnset MOVE_THUNDERBOLT, 40
    learnset MOVE_SURF, 45
    learnset MOVE_VOLT_SWITCH, 49
    learnset MOVE_VOLT_TACKLE, 53
    terminatelearnset


levelup SPECIES_SANDSHREW
    learnset MOVE_SCRATCH, 1
    learnset MOVE_POISON_STING, 3
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_BULLDOZE, 11
    learnset MOVE_MAGNITUDE, 14
    learnset MOVE_SLASH, 18
    learnset MOVE_BRICK_BREAK, 22
    learnset MOVE_STOMPING_TANTRUM, 28
    learnset MOVE_ROCK_SLIDE, 31
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_X_SCISSOR, 38
    learnset MOVE_EARTHQUAKE, 42
    terminatelearnset


levelup SPECIES_SANDSLASH
    learnset MOVE_SCRATCH, 1
    learnset MOVE_POISON_STING, 3
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_MAGNITUDE, 19
    learnset MOVE_SLASH, 25
    learnset MOVE_BRICK_BREAK, 29
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_NIGHT_SLASH, 38
    learnset MOVE_X_SCISSOR, 43
    learnset MOVE_CRUSH_CLAW, 45
    learnset MOVE_EARTHQUAKE, 49
    terminatelearnset


levelup SPECIES_NIDORAN_F
    learnset MOVE_GROWL, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SLUDGE, 9
    learnset MOVE_BITE, 13
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_TOXIC, 21
    learnset MOVE_SHADOW_CLAW, 24
    learnset MOVE_SLUDGE_BOMB, 27
    learnset MOVE_CRUNCH, 30
    learnset MOVE_SHADOW_CLAW, 34
    learnset MOVE_POISON_FANG, 38
    terminatelearnset


levelup SPECIES_NIDORINA
    learnset MOVE_GROWL, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SLUDGE, 9
    learnset MOVE_BITE, 13
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_TOXIC, 21
    learnset MOVE_SHADOW_CLAW, 25
    learnset MOVE_SLUDGE_BOMB, 28
    learnset MOVE_CRUNCH, 31
    learnset MOVE_SHADOW_CLAW, 36
    learnset MOVE_POISON_FANG, 40
    terminatelearnset


levelup SPECIES_NIDOQUEEN
    learnset MOVE_SUPER_FANG, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SLUDGE, 9
    learnset MOVE_BITE, 13
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_TOXIC, 21
    learnset MOVE_SHADOW_CLAW, 25
    learnset MOVE_SLUDGE_BOMB, 28
    learnset MOVE_CRUNCH, 35
    learnset MOVE_SHADOW_CLAW, 39
    learnset MOVE_POISON_FANG, 44
    learnset MOVE_EARTHQUAKE, 47
    learnset MOVE_SUPERPOWER, 49
    terminatelearnset


levelup SPECIES_NIDORAN_M
    learnset MOVE_GROWL, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SLUDGE, 9
    learnset MOVE_BITE, 13
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_TOXIC, 21
    learnset MOVE_ROCK_SLIDE, 24
    learnset MOVE_SLUDGE_BOMB, 27
    learnset MOVE_CRUNCH, 30
    learnset MOVE_SHADOW_CLAW, 34
    learnset MOVE_POISON_FANG, 38
    terminatelearnset


levelup SPECIES_NIDORINO
    learnset MOVE_GROWL, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SLUDGE, 9
    learnset MOVE_BITE, 13
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_TOXIC, 21
    learnset MOVE_ROCK_SLIDE, 25
    learnset MOVE_SLUDGE_BOMB, 28
    learnset MOVE_CRUNCH, 31
    learnset MOVE_SHADOW_CLAW, 36
    learnset MOVE_POISON_FANG, 40
    terminatelearnset


levelup SPECIES_NIDOKING
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SLUDGE, 9
    learnset MOVE_BITE, 13
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_TOXIC, 21
    learnset MOVE_ROCK_SLIDE, 25
    learnset MOVE_SLUDGE_BOMB, 28
    learnset MOVE_CRUNCH, 31
    learnset MOVE_SHADOW_CLAW, 36
    learnset MOVE_POISON_FANG, 42
    learnset MOVE_DRILL_RUN, 46
    learnset MOVE_MEGAHORN, 48
    learnset MOVE_HEAD_SMASH, 51
    terminatelearnset


levelup SPECIES_CLEFAIRY
    learnset MOVE_POUND, 1
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_HEADBUTT, 7
    learnset MOVE_ENCORE, 10
    learnset MOVE_MAGICAL_LEAF, 14
    learnset MOVE_FOLLOW_ME, 18
    learnset MOVE_MOONLIGHT, 22
    learnset MOVE_BODY_SLAM, 24
    learnset MOVE_TRI_ATTACK, 28
    learnset MOVE_MISTY_EXPLOSION, 32
    learnset MOVE_HYPER_VOICE, 34
    learnset MOVE_METEOR_MASH, 38
    learnset MOVE_MOONBLAST, 43
    terminatelearnset


levelup SPECIES_CLEFABLE
    learnset MOVE_ENDEAVOR, 1
    learnset MOVE_RECYCLE, 1
    learnset MOVE_SEISMIC_TOSS, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_TRI_ATTACK, 30
    learnset MOVE_HYPER_VOICE, 35
    learnset MOVE_MISTY_EXPLOSION, 35
    learnset MOVE_METEOR_MASH, 40
    terminatelearnset


levelup SPECIES_VULPIX
    learnset MOVE_EMBER, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DISABLE, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_INCINERATE, 11
    learnset MOVE_SECRET_POWER, 13
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_WILL_O_WISP, 20
    learnset MOVE_FEINT_ATTACK, 23
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_FLAME_BURST, 28
    learnset MOVE_EXTRASENSORY, 31
    learnset MOVE_FLAMETHROWER, 35
    learnset MOVE_IMPRISON, 37
    learnset MOVE_SAFEGUARD, 39
    learnset MOVE_FIRE_BLAST, 43
    terminatelearnset


levelup SPECIES_NINETALES
    learnset MOVE_WILL_O_WISP, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DISABLE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_INCINERATE, 15
    learnset MOVE_FEINT_ATTACK, 24
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_FLAME_BURST, 33
    learnset MOVE_EXTRASENSORY, 37
    learnset MOVE_FLAMETHROWER, 40
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_CONFUSE_RAY, 45
    learnset MOVE_HEAT_WAVE, 50
    terminatelearnset


levelup SPECIES_JIGGLYPUFF
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_POUND, 1
    learnset MOVE_DISABLE, 5
    learnset MOVE_SEISMIC_TOSS, 10
    learnset MOVE_BODY_SLAM, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_REST, 24
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_SHADOW_BALL, 27
    learnset MOVE_ZEN_HEADBUTT, 31
    learnset MOVE_HYPER_VOICE, 34
    learnset MOVE_DAZZLING_GLEAM, 36
    learnset MOVE_DOUBLE_EDGE, 39
    terminatelearnset


levelup SPECIES_WIGGLYTUFF
    learnset MOVE_WISH, 1
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_HYPER_VOICE, 37
    learnset MOVE_ZEN_HEADBUTT, 37
    learnset MOVE_DAZZLING_GLEAM, 38
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_FOCUS_BLAST, 45
    terminatelearnset


levelup SPECIES_ZUBAT
    learnset MOVE_ABSORB, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_BITE, 8
    learnset MOVE_WING_ATTACK, 13
    learnset MOVE_MEAN_LOOK, 16
    learnset MOVE_HYPNOSIS, 19
    learnset MOVE_AERIAL_ACE, 22
    learnset MOVE_SWIFT, 24
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_POISON_FANG, 32
    learnset MOVE_STEEL_WING, 35
    learnset MOVE_LEECH_LIFE, 37
    learnset MOVE_AIR_SLASH, 40
    terminatelearnset


levelup SPECIES_GOLBAT
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_BITE, 8
    learnset MOVE_WING_ATTACK, 13
    learnset MOVE_MEAN_LOOK, 16
    learnset MOVE_HYPNOSIS, 19
    learnset MOVE_AERIAL_ACE, 22
    learnset MOVE_SWIFT, 26
    learnset MOVE_CONFUSE_RAY, 30
    learnset MOVE_CROSS_POISON, 32
    learnset MOVE_STEEL_WING, 36
    learnset MOVE_AIR_SLASH, 44
    terminatelearnset


levelup SPECIES_ODDISH
    learnset MOVE_ABSORB, 1
    learnset MOVE_ACID, 4
    learnset MOVE_POISON_POWDER, 8
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_SLEEP_POWDER, 16
    learnset MOVE_SLUDGE_BOMB, 20
    learnset MOVE_SEED_BOMB, 26
    learnset MOVE_TOXIC, 30
    learnset MOVE_MOONLIGHT, 33
    learnset MOVE_PETAL_DANCE, 36
    learnset MOVE_MOONBLAST, 40
    terminatelearnset


levelup SPECIES_GLOOM
    learnset MOVE_ABSORB, 1
    learnset MOVE_ACID, 4
    learnset MOVE_POISON_POWDER, 8
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_STUN_SPORE, 16
    learnset MOVE_SLEEP_POWDER, 19
    learnset MOVE_SLUDGE_BOMB, 25
    learnset MOVE_SEED_BOMB, 29
    learnset MOVE_TOXIC, 34
    learnset MOVE_MOONLIGHT, 37
    learnset MOVE_PETAL_DANCE, 39
    learnset MOVE_MOONBLAST, 45
    learnset MOVE_GIGA_DRAIN, 53
    terminatelearnset


levelup SPECIES_VILEPLUME
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_SLEEP_POWDER, 38
    learnset MOVE_PETAL_DANCE, 40
    learnset MOVE_MOONBLAST, 42
    learnset MOVE_SLUDGE_BOMB, 42
    learnset MOVE_MOONLIGHT, 45
    terminatelearnset


levelup SPECIES_PARAS
    learnset MOVE_SCRATCH, 1
    learnset MOVE_STUN_SPORE, 6
    learnset MOVE_POISON_POWDER, 6
    learnset MOVE_RAZOR_LEAF, 10
    learnset MOVE_BUG_BITE, 14
    learnset MOVE_SPORE, 18
    learnset MOVE_DIG, 22
    learnset MOVE_X_SCISSOR, 24
    learnset MOVE_GIGA_DRAIN, 27
    learnset MOVE_LEAF_BLADE, 30
    learnset MOVE_BRICK_BREAK, 32
    learnset MOVE_SPORE, 35
    learnset MOVE_FELL_STINGER, 40
    terminatelearnset


levelup SPECIES_PARASECT
    learnset MOVE_SCRATCH, 1
    learnset MOVE_STUN_SPORE, 6
    learnset MOVE_POISON_POWDER, 6
    learnset MOVE_RAZOR_LEAF, 10
    learnset MOVE_BUG_BITE, 14
    learnset MOVE_SPORE, 18
    learnset MOVE_DIG, 22
    learnset MOVE_X_SCISSOR, 24
    learnset MOVE_GIGA_DRAIN, 27
    learnset MOVE_LEAF_BLADE, 30
    learnset MOVE_BRICK_BREAK, 32
    learnset MOVE_SPORE, 35
    learnset MOVE_KNOCK_OFF, 39
    learnset MOVE_FELL_STINGER, 44
    terminatelearnset


levelup SPECIES_VENONAT
    learnset MOVE_TACKLE, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_SIGNAL_BEAM, 11
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_STUN_SPORE, 19
    learnset MOVE_BUG_BUZZ, 24
    learnset MOVE_SLEEP_POWDER, 28
    learnset MOVE_LEECH_LIFE, 31
    learnset MOVE_SLUDGE_BOMB, 35
    learnset MOVE_GIGA_DRAIN, 38
    learnset MOVE_PSYCHIC, 41
    learnset MOVE_RAGE_POWDER, 53
    terminatelearnset


levelup SPECIES_VENOMOTH
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_SIGNAL_BEAM, 11
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_STUN_SPORE, 19
    learnset MOVE_BUG_BUZZ, 24
    learnset MOVE_SLEEP_POWDER, 28
    learnset MOVE_LEECH_LIFE, 33
    learnset MOVE_AIR_SLASH, 37
    learnset MOVE_ENERGY_BALL, 42
    learnset MOVE_SLUDGE_BOMB, 45
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_RAGE_POWDER, 60
    terminatelearnset


levelup SPECIES_DIGLETT
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_MAGNITUDE, 10
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_SUCKER_PUNCH, 20
    learnset MOVE_ROCK_SLIDE, 24
    learnset MOVE_SLASH, 27
    learnset MOVE_DIG, 31
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_EARTHQUAKE, 37
    learnset MOVE_STONE_EDGE, 41
    terminatelearnset


levelup SPECIES_DUGTRIO
    learnset MOVE_REVERSAL, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_MAGNITUDE, 10
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_SUCKER_PUNCH, 21
    learnset MOVE_ROCK_SLIDE, 25
    learnset MOVE_SLASH, 29
    learnset MOVE_DIG, 33
    learnset MOVE_BODY_SLAM, 37
    learnset MOVE_EARTHQUAKE, 40
    learnset MOVE_FOUL_PLAY, 43
    learnset MOVE_STONE_EDGE, 48
    terminatelearnset


levelup SPECIES_MEOWTH
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FEINT, 7
    learnset MOVE_PAY_DAY, 10
    learnset MOVE_BITE, 13
    learnset MOVE_FEINT_ATTACK, 18
    learnset MOVE_SLASH, 22
    learnset MOVE_DIG, 27
    learnset MOVE_BODY_SLAM, 31
    learnset MOVE_SHADOW_CLAW, 35
    learnset MOVE_X_SCISSOR, 37
    learnset MOVE_PLAY_ROUGH, 40
    learnset MOVE_DOUBLE_EDGE, 44
    terminatelearnset


levelup SPECIES_PERSIAN
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FEINT, 7
    learnset MOVE_PAY_DAY, 10
    learnset MOVE_BITE, 15
    learnset MOVE_FEINT_ATTACK, 20
    learnset MOVE_SLASH, 24
    learnset MOVE_POWER_GEM, 28
    learnset MOVE_DIG, 30
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_SHADOW_CLAW, 39
    learnset MOVE_X_SCISSOR, 42
    learnset MOVE_PLAY_ROUGH, 45
    learnset MOVE_DOUBLE_EDGE, 50
    terminatelearnset


levelup SPECIES_PSYDUCK
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_CONFUSION, 7
    learnset MOVE_WATER_PULSE, 13
    learnset MOVE_DISABLE, 16
    learnset MOVE_ZEN_HEADBUTT, 21
    learnset MOVE_AQUA_TAIL, 25
    learnset MOVE_BRICK_BREAK, 29
    learnset MOVE_SURF, 34
    learnset MOVE_ICE_BEAM, 37
    learnset MOVE_PSYCHIC, 41
    terminatelearnset


levelup SPECIES_GOLDUCK
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_CONFUSION, 7
    learnset MOVE_WATER_PULSE, 13
    learnset MOVE_DISABLE, 16
    learnset MOVE_ZEN_HEADBUTT, 23
    learnset MOVE_AQUA_TAIL, 27
    learnset MOVE_BRICK_BREAK, 31
    learnset MOVE_HYPNOSIS, 35
    learnset MOVE_SURF, 38
    learnset MOVE_POWER_GEM, 40
    learnset MOVE_ICE_BEAM, 42
    learnset MOVE_PSYCHIC, 46
    learnset MOVE_HYDRO_PUMP, 54
    terminatelearnset


levelup SPECIES_MANKEY
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_KARATE_CHOP, 8
    learnset MOVE_PURSUIT, 11
    learnset MOVE_SEISMIC_TOSS, 15
    learnset MOVE_SWAGGER, 18
    learnset MOVE_BRICK_BREAK, 22
    learnset MOVE_ROCK_SLIDE, 27
    learnset MOVE_POISON_JAB, 31
    learnset MOVE_STOMPING_TANTRUM, 35
    learnset MOVE_CLOSE_COMBAT, 39
    learnset MOVE_STONE_EDGE, 44
    terminatelearnset


levelup SPECIES_PRIMEAPE
    learnset MOVE_REVERSAL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_KARATE_CHOP, 8
    learnset MOVE_PURSUIT, 11
    learnset MOVE_SEISMIC_TOSS, 15
    learnset MOVE_SWAGGER, 18
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_ENDEAVOR, 30
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_POISON_JAB, 34
    learnset MOVE_STOMPING_TANTRUM, 37
    learnset MOVE_RAGE_FIST, 42
    learnset MOVE_CLOSE_COMBAT, 47
    learnset MOVE_STONE_EDGE, 53
    terminatelearnset


levelup SPECIES_GROWLITHE
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROAR, 4
    learnset MOVE_BITE, 5
    learnset MOVE_FLAME_WHEEL, 10
    learnset MOVE_QUICK_ATTACK, 14
    learnset MOVE_FIRE_FANG, 19
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_CRUNCH, 29
    learnset MOVE_FLAMETHROWER, 34
    learnset MOVE_PLAY_ROUGH, 38
    learnset MOVE_PSYCHIC_FANGS, 41
    learnset MOVE_WILD_CHARGE, 44
    learnset MOVE_HEAT_WAVE, 48
    terminatelearnset


levelup SPECIES_ARCANINE 
    learnset MOVE_REVERSAL, 1
    learnset MOVE_FLARE_BLITZ, 1
    learnset MOVE_BITE, 1
    learnset MOVE_BODY_SLAM, 35
    learnset MOVE_FLAMETHROWER, 38
    learnset MOVE_WILD_CHARGE, 40
    learnset MOVE_CRUNCH, 42
    learnset MOVE_EXTREME_SPEED, 46
    learnset MOVE_HEAT_WAVE, 49
    learnset MOVE_CLOSE_COMBAT, 52
    terminatelearnset


levelup SPECIES_POLIWAG
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_POUND, 4
    learnset MOVE_MUD_SHOT, 9
    learnset MOVE_BUBBLE_BEAM, 15
    learnset MOVE_AURORA_BEAM, 20
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_EARTH_POWER, 29
    learnset MOVE_HYDRO_PUMP, 34
    learnset MOVE_DOUBLE_EDGE, 38
    terminatelearnset


levelup SPECIES_POLIWHIRL
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_POUND, 4
    learnset MOVE_MUD_SHOT, 9
    learnset MOVE_BUBBLE_BEAM, 15
    learnset MOVE_AURORA_BEAM, 20
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_ICE_PUNCH, 31
    learnset MOVE_BRICK_BREAK, 35
    learnset MOVE_EARTH_POWER, 38
    learnset MOVE_HYDRO_PUMP, 42
    learnset MOVE_DOUBLE_EDGE, 47
    terminatelearnset


levelup SPECIES_POLIWRATH
    learnset MOVE_WATERFALL, 0
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_REFRESH, 1
    learnset MOVE_ICE_PUNCH, 35
    learnset MOVE_ROCK_SLIDE, 38
    learnset MOVE_BRICK_BREAK, 40
    learnset MOVE_LIQUIDATION, 46
    learnset MOVE_CLOSE_COMBAT, 48
    terminatelearnset


levelup SPECIES_ABRA
    learnset MOVE_TELEPORT, 1
    terminatelearnset


levelup SPECIES_KADABRA
    learnset MOVE_TELEPORT, 1
    learnset MOVE_CONFUSION, 16
    learnset MOVE_REFLECT, 17
    learnset MOVE_DISABLE, 18
    learnset MOVE_PSYBEAM, 22
    learnset MOVE_ALLY_SWITCH, 24
    learnset MOVE_RECOVER, 27
    learnset MOVE_SHOCK_WAVE, 31
    learnset MOVE_PSYCHIC, 37
    learnset MOVE_TELEPORT, 42
    learnset MOVE_SHADOW_BALL, 54
    learnset MOVE_DAZZLING_GLEAM, 58
    terminatelearnset


levelup SPECIES_ALAKAZAM
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_TELEPORT, 1
    learnset MOVE_CONFUSION, 16
    learnset MOVE_REFLECT, 17
    learnset MOVE_DISABLE, 18
    learnset MOVE_PSYBEAM, 22
    learnset MOVE_RECOVER, 27
    learnset MOVE_SHOCK_WAVE, 31
    learnset MOVE_TELEPORT, 40    
    learnset MOVE_PSYCHIC, 45
    learnset MOVE_SHADOW_BALL, 63
    learnset MOVE_DAZZLING_GLEAM, 68
    terminatelearnset


levelup SPECIES_MACHOP
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FOCUS_ENERGY, 3
    learnset MOVE_KARATE_CHOP, 7
    learnset MOVE_LOW_SWEEP, 12
    learnset MOVE_REVENGE, 13
    learnset MOVE_VITAL_THROW, 18
    learnset MOVE_SECRET_POWER, 21
    learnset MOVE_SEISMIC_TOSS, 24
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_STRENGTH, 31
    learnset MOVE_DUAL_CHOP, 34
    learnset MOVE_CROSS_CHOP, 38
    learnset MOVE_DYNAMIC_PUNCH, 43
    learnset MOVE_CLOSE_COMBAT, 46
    terminatelearnset


levelup SPECIES_MACHOKE
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FOCUS_ENERGY, 3
    learnset MOVE_KARATE_CHOP, 7
    learnset MOVE_LOW_SWEEP, 12
    learnset MOVE_REVENGE, 13
    learnset MOVE_VITAL_THROW, 19
    learnset MOVE_SECRET_POWER, 23
    learnset MOVE_SEISMIC_TOSS, 26
    learnset MOVE_BRICK_BREAK, 31
    learnset MOVE_STRENGTH, 34
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_DUAL_CHOP, 38
    learnset MOVE_CROSS_CHOP, 44
    learnset MOVE_DYNAMIC_PUNCH, 49
    learnset MOVE_CLOSE_COMBAT, 55
    terminatelearnset


levelup SPECIES_MACHAMP
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FOCUS_ENERGY, 3
    learnset MOVE_KARATE_CHOP, 7
    learnset MOVE_LOW_SWEEP, 12
    learnset MOVE_REVENGE, 13
    learnset MOVE_VITAL_THROW, 19
    learnset MOVE_SECRET_POWER, 23
    learnset MOVE_SEISMIC_TOSS, 26
    learnset MOVE_BRICK_BREAK, 31
    learnset MOVE_STRENGTH, 34
    learnset MOVE_ROCK_SLIDE, 38
    learnset MOVE_DUAL_CHOP, 43
    learnset MOVE_DOUBLE_EDGE, 47
    learnset MOVE_THROAT_CHOP, 50
    learnset MOVE_DYNAMIC_PUNCH, 53
    learnset MOVE_CLOSE_COMBAT, 60
    terminatelearnset


levelup SPECIES_BELLSPROUT
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_ACID, 8
    learnset MOVE_SLEEP_POWDER, 11
    learnset MOVE_POISON_POWDER, 12
    learnset MOVE_STUN_SPORE, 14
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_TOXIC, 21
    learnset MOVE_SYNTHESIS, 28
    learnset MOVE_POISON_JAB, 34
    learnset MOVE_LEECH_LIFE, 37
    learnset MOVE_SEED_BOMB, 40
    terminatelearnset


levelup SPECIES_WEEPINBELL
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_ACID, 8
    learnset MOVE_SLEEP_POWDER, 11
    learnset MOVE_POISON_POWDER, 12
    learnset MOVE_STUN_SPORE, 14
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_TOXIC, 21
    learnset MOVE_SYNTHESIS, 28
    learnset MOVE_POISON_JAB, 34
    learnset MOVE_LEECH_LIFE, 38
    learnset MOVE_LEAF_BLADE, 41
    terminatelearnset


levelup SPECIES_VICTREEBEL
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_WEATHER_BALL, 25
    learnset MOVE_SLEEP_POWDER, 34
    learnset MOVE_LEECH_LIFE, 40
    learnset MOVE_LEAF_BLADE, 44
    learnset MOVE_GUNK_SHOT, 48
    learnset MOVE_POWER_WHIP, 57
    terminatelearnset


levelup SPECIES_TENTACOOL
    learnset MOVE_POISON_STING, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ACID, 6
    learnset MOVE_CONSTRICT, 7
    learnset MOVE_SUPERSONIC, 8
    learnset MOVE_WATER_PULSE, 13
    learnset MOVE_AURORA_BEAM, 17
    learnset MOVE_BUBBLE_BEAM, 22
    learnset MOVE_TOXIC, 26
    learnset MOVE_SLUDGE_BOMB, 31
    learnset MOVE_CONFUSE_RAY, 34
    learnset MOVE_MUDDY_WATER, 40
    learnset MOVE_ICE_BEAM, 45
    learnset MOVE_SLUDGE_WAVE, 47
    terminatelearnset


levelup SPECIES_TENTACRUEL
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_TOXIC_SPIKES, 1
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ACID, 6
    learnset MOVE_CONSTRICT, 7
    learnset MOVE_SUPERSONIC, 8
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_AURORA_BEAM, 20
    learnset MOVE_BUBBLE_BEAM, 25
    learnset MOVE_TOXIC, 30
    learnset MOVE_SLUDGE_BOMB, 35
    learnset MOVE_CONFUSE_RAY, 39
    learnset MOVE_MUDDY_WATER, 44
    learnset MOVE_ICE_BEAM, 48
    learnset MOVE_SLUDGE_WAVE, 52
    terminatelearnset


levelup SPECIES_GEODUDE
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_ROLLOUT, 10
    learnset MOVE_MAGNITUDE, 12
    learnset MOVE_SMACK_DOWN, 15
    learnset MOVE_BULLDOZE, 20
    learnset MOVE_SELF_DESTRUCT, 24
    learnset MOVE_ROCK_TOMB, 27
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_EARTHQUAKE, 37
    learnset MOVE_EXPLOSION, 40
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_STONE_EDGE, 49
    terminatelearnset


levelup SPECIES_GRAVELER
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_ROLLOUT, 10
    learnset MOVE_MAGNITUDE, 12
    learnset MOVE_SMACK_DOWN, 18
    learnset MOVE_BULLDOZE, 22
    learnset MOVE_SELF_DESTRUCT, 26
    learnset MOVE_ROCK_TOMB, 29
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_EARTHQUAKE, 41
    learnset MOVE_EXPLOSION, 45
    learnset MOVE_DOUBLE_EDGE, 50
    learnset MOVE_STONE_EDGE, 56
    terminatelearnset


levelup SPECIES_GOLEM
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_ROLLOUT, 10
    learnset MOVE_MAGNITUDE, 12
    learnset MOVE_SMACK_DOWN, 18
    learnset MOVE_BULLDOZE, 22
    learnset MOVE_SELF_DESTRUCT, 26
    learnset MOVE_ROCK_TOMB, 33
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_HEAVY_SLAM, 42
    learnset MOVE_EXPLOSION, 48
    learnset MOVE_EARTHQUAKE, 51
    learnset MOVE_DOUBLE_EDGE, 54
    learnset MOVE_STONE_EDGE, 63
    terminatelearnset


levelup SPECIES_PONYTA
    learnset MOVE_TACKLE, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_DOUBLE_KICK, 9
    learnset MOVE_FLAME_WHEEL, 14
    learnset MOVE_STOMP, 16
    learnset MOVE_HYPNOSIS, 19
    learnset MOVE_BOUNCE, 22
    learnset MOVE_FLAMETHROWER, 26
    learnset MOVE_DOUBLE_EDGE, 32
    learnset MOVE_HIGH_HORSEPOWER, 37
    learnset MOVE_HEAT_WAVE, 40
    terminatelearnset


levelup SPECIES_RAPIDASH
    learnset MOVE_OVERHEAT, 1
    learnset MOVE_POISON_JAB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_DOUBLE_KICK, 9
    learnset MOVE_FLAME_WHEEL, 14
    learnset MOVE_STOMP, 16
    learnset MOVE_HYPNOSIS, 19
    learnset MOVE_BOUNCE, 22
    learnset MOVE_SMART_STRIKE, 25
    learnset MOVE_FLAMETHROWER, 26
    learnset MOVE_DOUBLE_EDGE, 32
    learnset MOVE_HIGH_HORSEPOWER, 39
    learnset MOVE_HEAT_WAVE, 42
    learnset MOVE_MEGAHORN, 48
    learnset MOVE_FLARE_BLITZ, 52
    terminatelearnset


levelup SPECIES_SLOWPOKE
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSION,  1
    learnset MOVE_YAWN, 1
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_DISABLE, 11
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_BUBBLE_BEAM, 19
    learnset MOVE_ZEN_HEADBUTT, 23
    learnset MOVE_AURORA_BEAM, 26
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_SLACK_OFF, 34
    learnset MOVE_SURF, 38
    learnset MOVE_PSYCHIC, 41
    learnset MOVE_ICE_BEAM, 43
    terminatelearnset


levelup SPECIES_SLOWBRO
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSION,  1
    learnset MOVE_YAWN, 1
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_DISABLE, 11
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_BUBBLE_BEAM, 19
    learnset MOVE_ZEN_HEADBUTT, 23
    learnset MOVE_AURORA_BEAM, 26
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_SLACK_OFF, 38
    learnset MOVE_SURF, 42
    learnset MOVE_PSYCHIC, 47
    learnset MOVE_FOCUS_BLAST, 50
    terminatelearnset


levelup SPECIES_MAGNEMITE
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SUPERSONIC, 4
    learnset MOVE_THUNDER_WAVE, 7
    learnset MOVE_MAGNET_BOMB, 11
    learnset MOVE_SONIC_BOOM, 14
    learnset MOVE_SHOCK_WAVE, 19
    learnset MOVE_SPARK, 19
    learnset MOVE_ELECTROWEB, 25
    learnset MOVE_FLASH_CANNON, 30
    learnset MOVE_TRI_ATTACK, 33
    learnset MOVE_THUNDERBOLT, 37
    learnset MOVE_FLASH_CANNON, 40
    learnset MOVE_ZAP_CANNON, 45
    learnset MOVE_VOLT_SWITCH, 48
    terminatelearnset


levelup SPECIES_MAGNETON
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SUPERSONIC, 4
    learnset MOVE_THUNDER_WAVE, 7
    learnset MOVE_MAGNET_BOMB, 11
    learnset MOVE_SONIC_BOOM, 14
    learnset MOVE_SHOCK_WAVE, 23
    learnset MOVE_SPARK, 25
    learnset MOVE_ELECTROWEB, 29
    learnset MOVE_FLASH_CANNON, 34
    learnset MOVE_TRI_ATTACK, 37
    learnset MOVE_THUNDERBOLT, 41
    learnset MOVE_FLASH_CANNON, 45
    learnset MOVE_ZAP_CANNON, 49
    learnset MOVE_VOLT_SWITCH, 56
    terminatelearnset


levelup SPECIES_FARFETCHD
    learnset MOVE_FIRST_IMPRESSION, 1
    learnset MOVE_BRAVE_BIRD, 1
    learnset MOVE_POISON_JAB, 1
    learnset MOVE_PECK, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_AERIAL_ACE, 10
    learnset MOVE_CUT, 15
    learnset MOVE_KNOCK_OFF, 19
    learnset MOVE_SLASH, 23
    learnset MOVE_NIGHT_SLASH, 26
    learnset MOVE_ACROBATICS, 28
    learnset MOVE_CLOSE_COMBAT, 32
    learnset MOVE_LEAF_BLADE, 34
    learnset MOVE_THROAT_CHOP, 37
    learnset MOVE_BRAVE_BIRD, 40
    terminatelearnset


levelup SPECIES_DODUO
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_RAGE, 8
    learnset MOVE_PURSUIT, 12
    learnset MOVE_LOW_KICK, 17
    learnset MOVE_PLUCK, 19
    learnset MOVE_DOUBLE_KICK, 22
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_THROAT_CHOP, 29
    learnset MOVE_LUNGE, 31
    learnset MOVE_DRILL_PECK, 34
    learnset MOVE_JUMP_KICK, 38
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_BRAVE_BIRD, 46
    terminatelearnset


levelup SPECIES_DODRIO
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_RAGE, 8
    learnset MOVE_PURSUIT, 12
    learnset MOVE_LOW_KICK, 18
    learnset MOVE_PLUCK, 21
    learnset MOVE_DOUBLE_KICK, 25
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_THROAT_CHOP. 32
    learnset MOVE_LUNGE, 36
    learnset MOVE_DRILL_PECK, 40
    learnset MOVE_JUMP_KICK, 45
    learnset MOVE_DOUBLE_EDGE, 49
    learnset MOVE_BRAVE_BIRD, 54
    terminatelearnset


levelup SPECIES_SEEL
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_WATER_GUN, 3
    learnset MOVE_POWDER_SNOW, 7
    learnset MOVE_ICY_WIND, 11
    learnset MOVE_ICE_SHARD, 15
    learnset MOVE_FAKE_OUT, 18
    learnset MOVE_BUBBLE_BEAM, 21
    learnset MOVE_AURORA_BEAM, 24
    learnset MOVE_SMART_STRIKE, 27
    learnset MOVE_BODY_SLAM, 31
    learnset MOVE_AQUA_TAIL, 35
    learnset MOVE_DRILL_RUN, 39
    learnset MOVE_ICE_BEAM, 42
    terminatelearnset


levelup SPECIES_DEWGONG
    learnset MOVE_ENCORE, 1
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_WATER_GUN, 3
    learnset MOVE_POWDER_SNOW, 7
    learnset MOVE_ICY_WIND, 15
    learnset MOVE_ICE_SHARD, 19
    learnset MOVE_FAKE_OUT, 22
    learnset MOVE_BUBBLE_BEAM, 25
    learnset MOVE_AURORA_BEAM, 28
    learnset MOVE_SMART_STRIKE, 32
    learnset MOVE_BODY_SLAM, 36
    learnset MOVE_AQUA_TAIL, 40
    learnset MOVE_DRILL_RUN, 43
    learnset MOVE_ICE_BEAM, 48
    terminatelearnset


levelup SPECIES_GRIMER
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SECRET_POWER, 7
    learnset MOVE_SLUDGE_BOMB, 12
    learnset MOVE_MUD_BOMB, 16
    learnset MOVE_SHADOW_PUNCH, 20
    learnset MOVE_DRAIN_PUNCH, 25
    learnset MOVE_POISON_JAB, 28
    learnset MOVE_ROCK_SLIDE, 31
    learnset MOVE_SHADOW_SNEAK, 34
    learnset MOVE_FIRE_BLAST, 38
    learnset MOVE_GUNK_SHOT, 44
    terminatelearnset


levelup SPECIES_MUK
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SECRET_POWER, 7
    learnset MOVE_SLUDGE_BOMB, 12
    learnset MOVE_MUD_BOMB, 16
    learnset MOVE_SHADOW_PUNCH, 20
    learnset MOVE_DRAIN_PUNCH, 25
    learnset MOVE_POISON_JAB, 26
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_THUNDER_PUNCH, 36
    learnset MOVE_ROCK_SLIDE, 40
    learnset MOVE_SHADOW_SNEAK, 45
    learnset MOVE_FIRE_BLAST, 48
    learnset MOVE_GUNK_SHOT, 53
    terminatelearnset


levelup SPECIES_SHELLDER
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_ICE_SHARD, 10
    learnset MOVE_ICICLE_SPEAR, 16
    learnset MOVE_BUBBLE_BEAM, 19
    learnset MOVE_AURORA_BEAM, 22
    learnset MOVE_CLAMP, 23
    learnset MOVE_RAZOR_SHELL, 26
    learnset MOVE_SELF_DESTRUCT, 35
    learnset MOVE_ICE_BEAM, 40
    learnset MOVE_HYDRO_PUMP, 44
    learnset MOVE_ICY_WIND, 48
    terminatelearnset


levelup SPECIES_CLOYSTER
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_ICE_SHARD, 10
    learnset MOVE_ICICLE_SPEAR, 16
    learnset MOVE_BUBBLE_BEAM, 19
    learnset MOVE_AURORA_BEAM, 22
    learnset MOVE_CLAMP, 23
    learnset MOVE_RAZOR_SHELL, 26
    learnset MOVE_SELF_DESTRUCT, 35
    learnset MOVE_ICICLE_CRASH, 42
    learnset MOVE_DRILL_RUN, 46
    learnset MOVE_HYDRO_PUMP, 50
    terminatelearnset


levelup SPECIES_GASTLY
    learnset MOVE_LICK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_NIGHT_SHADE, 10
    learnset MOVE_SLUDGE, 14
    learnset MOVE_MEAN_LOOK, 18
    learnset MOVE_SUCKER_PUNCH, 21
    learnset MOVE_HEX, 25
    learnset MOVE_DREAM_EATER, 29
    learnset MOVE_DARK_PULSE, 31
    learnset MOVE_SHADOW_BALL, 35
    learnset MOVE_SLUDGE_BOMB, 38
    terminatelearnset


levelup SPECIES_HAUNTER
    learnset MOVE_LICK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_NIGHT_SHADE, 10
    learnset MOVE_SLUDGE, 14
    learnset MOVE_MEAN_LOOK, 18
    learnset MOVE_SUCKER_PUNCH, 26
    learnset MOVE_HEX, 30
    learnset MOVE_DREAM_EATER, 36
    learnset MOVE_DARK_PULSE, 41
    learnset MOVE_SHADOW_BALL, 46
    learnset MOVE_SLUDGE_BOMB, 49
    learnset MOVE_GIGA_DRAIN, 55
    terminatelearnset


levelup SPECIES_GENGAR
    learnset MOVE_LICK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_NIGHT_SHADE, 10
    learnset MOVE_SLUDGE, 14
    learnset MOVE_MEAN_LOOK, 18
    learnset MOVE_SUCKER_PUNCH, 26
    learnset MOVE_HEX, 30
    learnset MOVE_DREAM_EATER, 36
    learnset MOVE_TOXIC, 45
    learnset MOVE_DARK_PULSE, 48
    learnset MOVE_SHADOW_BALL, 54
    learnset MOVE_SLUDGE_BOMB, 58
    learnset MOVE_ENERGY_BALL, 62
    terminatelearnset


levelup SPECIES_ONIX
    learnset MOVE_TACKLE, 1
    learnset MOVE_MAGNITUDE, 1
    learnset MOVE_BIND, 1
    learnset MOVE_ROCK_THROW, 7
    learnset MOVE_ROCK_TOMB, 11
    learnset MOVE_SMACK_DOWN, 15
    learnset MOVE_DIG, 18
    learnset MOVE_GYRO_BALL, 22
    learnset MOVE_ROCK_SLIDE, 26
    learnset MOVE_BULLDOZE, 30
    learnset MOVE_BODY_PRESS, 32
    learnset MOVE_DRILL_RUN, 36
    learnset MOVE_BODY_SLAM, 39
    learnset MOVE_IRON_TAIL, 42
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_EARTHQUAKE, 49
    learnset MOVE_HEAD_SMASH, 52
    terminatelearnset


levelup SPECIES_DROWZEE
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_POUND, 1
    learnset MOVE_DISABLE, 5
    learnset MOVE_CONFUSION, 9
    learnset MOVE_HEADBUTT, 13
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_WAKE_UP_SLAP, 20
    learnset MOVE_THUNDER_WAVE, 23
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_ICE_PUNCH, 30
    learnset MOVE_PSYCHIC, 35
    learnset MOVE_SHADOW_BALL, 38
    learnset MOVE_DAZZLING_GLEAM, 41
    learnset MOVE_FOCUS_BLAST, 45
    learnset MOVE_FUTURE_SIGHT, 48
    terminatelearnset


levelup SPECIES_HYPNO
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_POUND, 1
    learnset MOVE_DISABLE, 5
    learnset MOVE_CONFUSION, 9
    learnset MOVE_HEADBUTT, 13
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_WAKE_UP_SLAP, 20
    learnset MOVE_THUNDER_WAVE, 23
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_ICE_PUNCH, 30
    learnset MOVE_PSYCHIC, 35
    learnset MOVE_SHADOW_BALL, 38
    learnset MOVE_DAZZLING_GLEAM, 41
    learnset MOVE_FOCUS_BLAST, 45
    learnset MOVE_FUTURE_SIGHT, 48
    terminatelearnset


levelup SPECIES_KRABBY
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_VICE_GRIP, 5
    learnset MOVE_METAL_CLAW, 9
    learnset MOVE_MUD_SHOT, 14
    learnset MOVE_BUBBLE_BEAM, 17
    learnset MOVE_STOMP, 21
    learnset MOVE_RAZOR_SHELL, 25
    learnset MOVE_BRICK_BREAK, 29
    learnset MOVE_NIGHT_SLASH, 32
    learnset MOVE_LIQUIDATION, 35
    learnset MOVE_ROCK_SLIDE, 38
    learnset MOVE_X_SCISSOR, 41
    learnset MOVE_SUPERPOWER, 43
    learnset MOVE_CRABHAMMER, 46
    terminatelearnset


levelup SPECIES_KINGLER
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_VICE_GRIP, 5
    learnset MOVE_METAL_CLAW, 9
    learnset MOVE_MUD_SHOT, 14
    learnset MOVE_BUBBLE_BEAM, 17
    learnset MOVE_STOMP, 21
    learnset MOVE_RAZOR_SHELL, 28
    learnset MOVE_BRICK_BREAK, 32
    learnset MOVE_NIGHT_SLASH, 35
    learnset MOVE_LIQUIDATION, 38
    learnset MOVE_STOMPING_TANTRUM, 41
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_X_SCISSOR, 49
    learnset MOVE_SUPERPOWER, 53
    learnset MOVE_CRABHAMMER, 57
    terminatelearnset


levelup SPECIES_VOLTORB
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_SONIC_BOOM, 5
    learnset MOVE_SPARK, 9
    learnset MOVE_ROLLOUT, 11
    learnset MOVE_CHARGE_BEAM, 16
    learnset MOVE_SWIFT, 20
    learnset MOVE_ELECTRO_BALL, 23
    learnset MOVE_SELF_DESTRUCT, 26
    learnset MOVE_DISCHARGE, 30
    learnset MOVE_EXPLOSION, 34
    learnset MOVE_TRI_ATTACK, 37
    learnset MOVE_THUNDERBOLT, 40
    learnset MOVE_THUNDER, 44
    terminatelearnset


levelup SPECIES_ELECTRODE
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_SONIC_BOOM, 5
    learnset MOVE_SPARK, 9
    learnset MOVE_ROLLOUT, 11
    learnset MOVE_CHARGE_BEAM, 16
    learnset MOVE_SWIFT, 20
    learnset MOVE_ELECTRO_BALL, 23
    learnset MOVE_SELF_DESTRUCT, 29
    learnset MOVE_DISCHARGE, 33
    learnset MOVE_EXPLOSION, 37
    learnset MOVE_TRI_ATTACK, 40
    learnset MOVE_THUNDERBOLT, 43
    learnset MOVE_THUNDER, 49
    terminatelearnset


levelup SPECIES_EXEGGCUTE
    learnset MOVE_ABSORB, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_BARRAGE, 4
    learnset MOVE_UPROAR, 7
    learnset MOVE_LEECH_SEED, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_CONFUSION, 15
    learnset MOVE_STUN_SPORE, 17
    learnset MOVE_POISON_POWDER, 17
    learnset MOVE_MAGICAL_LEAF, 20 
    learnset MOVE_PSYBEAM, 22
    learnset MOVE_GIGA_DRAIN, 24
    learnset MOVE_SYNTHESIS, 26
    learnset MOVE_HYPNOSIS, 30
    learnset MOVE_PSYCHIC, 33
    learnset MOVE_SOLAR_BEAM, 38
    learnset MOVE_ANCIENT_POWER, 44
    learnset MOVE_WORRY_SEED, 55
    terminatelearnset


levelup SPECIES_EXEGGUTOR
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_STOMP, 1
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_PSYCHIC, 45
    learnset MOVE_WOOD_HAMMER, 50
    learnset MOVE_WORRY_SEED, 65
    terminatelearnset


levelup SPECIES_CUBONE
    learnset MOVE_BONE_CLUB, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_HEADBUTT, 7
    learnset MOVE_BULLDOZE, 11
    learnset MOVE_BODY_SLAM, 16
    learnset MOVE_DIG, 19
    learnset MOVE_BRICK_BREAK, 23
    learnset MOVE_BONEMERANG, 26
    learnset MOVE_BONE_RUSH, 30
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_BRUTAL_SWING, 37
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_EARTHQUAKE, 44
    terminatelearnset


levelup SPECIES_MAROWAK
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_BONE_CLUB, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_HEADBUTT, 7
    learnset MOVE_BULLDOZE, 11
    learnset MOVE_BODY_SLAM, 18
    learnset MOVE_DIG, 22
    learnset MOVE_BRICK_BREAK, 25
    learnset MOVE_BONEMERANG, 29
    learnset MOVE_BONE_RUSH, 33
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_BRUTAL_SWING, 40
    learnset MOVE_DOUBLE_EDGE, 44
    learnset MOVE_STONE_EDGE, 49
    learnset MOVE_EARTHQUAKE, 53
    terminatelearnset


levelup SPECIES_HITMONLEE
    learnset MOVE_REVERSAL, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_SECRET_POWER, 5
    learnset MOVE_ROLLING_KICK, 8
    learnset MOVE_LOW_SWEEP, 12
    learnset MOVE_SUCKER_PUNCH, 17
    learnset MOVE_BRICK_BREAK, 20
    learnset MOVE_ROCK_SLIDE, 25
    learnset MOVE_BLAZE_KICK, 29
    learnset MOVE_HIGH_JUMP_KICK, 33
    learnset MOVE_THROAT_CHOP, 36
    learnset MOVE_STOMPING_TANTRUM, 41
    learnset MOVE_CLOSE_COMBAT, 47
    learnset MOVE_STONE_EDGE, 52
    terminatelearnset


levelup SPECIES_HITMONCHAN
    learnset MOVE_REVERSAL, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_COMET_PUNCH, 1
    learnset MOVE_FORCE_PALM, 8
    learnset MOVE_SECRET_POWER, 13
    learnset MOVE_BULLET_PUNCH, 16
    learnset MOVE_MACH_PUNCH, 20
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_THUNDER_PUNCH, 30
    learnset MOVE_ICE_PUNCH, 30
    learnset MOVE_FIRE_PUNCH, 30
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_POISON_JAB, 37
    learnset MOVE_SKY_UPPERCUT, 40
    learnset MOVE_EARTHQUAKE, 43
    learnset MOVE_KNOCK_OFF, 46
    learnset MOVE_STONE_EDGE, 50
    learnset MOVE_CLOSE_COMBAT, 54
    terminatelearnset


levelup SPECIES_LICKITUNG
    learnset MOVE_LICK, 1
    learnset MOVE_SUPERSONIC, 6
    learnset MOVE_STOMP, 10
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_BODY_SLAM, 22
    learnset MOVE_KNOCK_OFF, 25
    learnset MOVE_ROLLOUT, 33
    learnset MOVE_STOMPING_TANTRUM, 36
    learnset MOVE_BODY_PRESS, 40
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_POWER_WHIP, 47
    learnset MOVE_EARTHQUAKE, 50
    terminatelearnset


levelup SPECIES_KOFFING
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOG, 4
    learnset MOVE_SMOKESCREEN, 7
    learnset MOVE_CLEAR_SMOG, 13
    learnset MOVE_ASSURANCE, 14
    learnset MOVE_SLUDGE_BOMB, 19
    learnset MOVE_SELF_DESTRUCT, 25
    learnset MOVE_GYRO_BALL, 27
    learnset MOVE_SHADOW_BALL, 32
    learnset MOVE_TOXIC, 36
    learnset MOVE_EXPLOSION, 40
    learnset MOVE_GUNK_SHOT, 46
    terminatelearnset


levelup SPECIES_WEEZING
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOG, 4
    learnset MOVE_SMOKESCREEN, 7
    learnset MOVE_CLEAR_SMOG, 13
    learnset MOVE_ASSURANCE, 14
    learnset MOVE_SLUDGE_BOMB, 19
    learnset MOVE_SELF_DESTRUCT, 25
    learnset MOVE_DOUBLE_HIT, 28
    learnset MOVE_GYRO_BALL, 31
    learnset MOVE_TOXIC, 36
    learnset MOVE_SHADOW_BALL, 41
    learnset MOVE_HEAT_WAVE, 44
    learnset MOVE_EXPLOSION, 48
    learnset MOVE_GUNK_SHOT, 55
    terminatelearnset


levelup SPECIES_RHYHORN
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMACK_DOWN, 6
    learnset MOVE_HORN_ATTACK, 10
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_STOMP, 21
    learnset MOVE_CHIP_AWAY, 23
    learnset MOVE_BODY_SLAM, 27
    learnset MOVE_DRILL_RUN, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_CRUNCH, 37
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_EARTHQUAKE, 47
    learnset MOVE_MEGAHORN, 52
    learnset MOVE_STONE_EDGE, 58
    terminatelearnset


levelup SPECIES_RHYDON
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMACK_DOWN, 6
    learnset MOVE_HORN_ATTACK, 10
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_STOMP, 21
    learnset MOVE_CHIP_AWAY, 23
    learnset MOVE_BODY_SLAM, 27
    learnset MOVE_DRILL_RUN, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_CRUNCH, 37
    learnset MOVE_HAMMER_ARM, 42
    learnset MOVE_DOUBLE_EDGE, 47
    learnset MOVE_EARTHQUAKE, 53
    learnset MOVE_MEGAHORN, 59
    learnset MOVE_STONE_EDGE, 65
    terminatelearnset


levelup SPECIES_CHANSEY
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_COVET, 1
    learnset MOVE_DISARMING_VOICE, 8
    learnset MOVE_REFRESH, 10
    learnset MOVE_LIFE_DEW, 12
    learnset MOVE_DOUBLE_SLAP, 14
    learnset MOVE_SING, 17
    learnset MOVE_SEISMIC_TOSS, 20
    learnset MOVE_THUNDER_WAVE, 24
    learnset MOVE_SOFT_BOILED, 28
    learnset MOVE_HELPING_HAND, 32
    learnset MOVE_LIGHT_SCREEN, 35
    learnset MOVE_REFLECT, 35
    learnset MOVE_HEAL_PULSE, 38
    learnset MOVE_EGG_BOMB, 41
    learnset MOVE_WHIRLWIND, 44
    learnset MOVE_HYPER_VOICE, 48
    terminatelearnset


levelup SPECIES_TANGELA
    learnset MOVE_ABSORB, 1
    learnset MOVE_STUN_SPORE, 5
    learnset MOVE_VINE_WHIP, 11
    learnset MOVE_SLEEP_POWDER, 15
    learnset MOVE_MEGA_DRAIN, 17
    learnset MOVE_POISON_POWDER, 17
    learnset MOVE_KNOCK_OFF, 20
    learnset MOVE_BODY_SLAM, 24
    learnset MOVE_SEED_BOMB, 28
    learnset MOVE_ANCIENT_POWER, 32
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_SLUDGE_BOMB, 40
    learnset MOVE_POWER_WHIP, 44
    terminatelearnset


levelup SPECIES_KANGASKHAN
    learnset MOVE_REVERSAL, 1
    learnset MOVE_POUND, 1
    learnset MOVE_COMET_PUNCH, 1
    learnset MOVE_FAKE_OUT, 7
    learnset MOVE_BITE, 11
    learnset MOVE_STOMP, 15
    learnset MOVE_BODY_SLAM, 24
    learnset MOVE_BRICK_BREAK, 27
    learnset MOVE_SUCKER_PUNCH, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_CRUNCH, 38
    learnset MOVE_ICE_PUNCH, 41
    learnset MOVE_CRUSH_CLAW, 45
    learnset MOVE_SUPERPOWER, 49
    learnset MOVE_OUTRAGE, 52
    terminatelearnset


levelup SPECIES_HORSEA
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SMOKESCREEN, 5
    learnset MOVE_TWISTER, 9
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_AURORA_BEAM, 17
    learnset MOVE_DRAGON_BREATH, 22
    learnset MOVE_DOUBLE_EDGE, 28
    learnset MOVE_DRAGON_PULSE, 33
    learnset MOVE_MUDDY_WATER, 37
    learnset MOVE_WEATHER_BALL, 40
    learnset MOVE_ICE_BEAM, 43
    learnset MOVE_HYDRO_PUMP, 46
    terminatelearnset


levelup SPECIES_SEADRA
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SMOKESCREEN, 5
    learnset MOVE_TWISTER, 14
    learnset MOVE_BUBBLE_BEAM, 19
    learnset MOVE_AURORA_BEAM, 24
    learnset MOVE_DRAGON_BREATH, 30
    learnset MOVE_DOUBLE_EDGE, 35
    learnset MOVE_DRAGON_PULSE, 39
    learnset MOVE_MUDDY_WATER, 44
    learnset MOVE_WEATHER_BALL, 47
    learnset MOVE_ICE_BEAM, 50
    learnset MOVE_HYDRO_PUMP, 54
    terminatelearnset


levelup SPECIES_GOLDEEN
    learnset MOVE_PECK, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_HORN_ATTACK, 9
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_HEADBUTT, 17
    learnset MOVE_DIVE, 21
    learnset MOVE_ICE_BEAM, 26
    learnset MOVE_SCALD, 30
    learnset MOVE_DRILL_RUN, 33
    learnset MOVE_AQUA_TAIL, 37
    learnset MOVE_BOUNCE, 40
    learnset MOVE_MEGAHORN, 45
    terminatelearnset


levelup SPECIES_SEAKING
    learnset MOVE_MUDDY_WATER, 1
    learnset MOVE_PECK, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_HORN_ATTACK, 9
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_HEADBUTT, 17
    learnset MOVE_DIVE, 21
    learnset MOVE_ICE_BEAM, 26
    learnset MOVE_SCALD, 30
    learnset MOVE_SMART_STRIKE, 33
    learnset MOVE_DRILL_RUN, 37
    learnset MOVE_AQUA_TAIL, 40
    learnset MOVE_BOUNCE, 43
    learnset MOVE_MEGAHORN, 47
    terminatelearnset


levelup SPECIES_STARYU
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_CONFUSE_RAY, 8
    learnset MOVE_PSYWAVE, 13
    learnset MOVE_SWIFT, 15
    learnset MOVE_BUBBLE_BEAM, 18
    learnset MOVE_WHIRLPOOL, 22
    learnset MOVE_PSYBEAM, 25
    learnset MOVE_RECOVER, 29
    learnset MOVE_SCALD, 33
    learnset MOVE_POWER_GEM, 37
    learnset MOVE_TRI_ATTACK, 40
    learnset MOVE_PSYCHIC, 43
    learnset MOVE_SURF, 46
    learnset MOVE_DAZZLING_GLEAM, 50
    learnset MOVE_HYDRO_PUMP, 54
    terminatelearnset


levelup SPECIES_STARMIE
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_REFLECT, 1
    learnset MOVE_RECOVER, 1
    learnset MOVE_POWER_GEM, 42
    learnset MOVE_PSYCHIC, 46
    learnset MOVE_SURF, 51
    learnset MOVE_DAZZLING_GLEAM, 55
    learnset MOVE_HYDRO_PUMP, 60
    terminatelearnset


levelup SPECIES_MR_MIME
    learnset MOVE_MISTY_TERRAIN, 1
    learnset MOVE_PSYCHIC_TERRAIN, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_POUND, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_DOUBLE_SLAP, 7
    learnset MOVE_ENCORE, 10
    learnset MOVE_PSYBEAM, 14
    learnset MOVE_DRAINING_KISS, 19
    learnset MOVE_MIMIC, 24
    learnset MOVE_TEETER_DANCE, 27
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_RECYCLE, 34
    learnset MOVE_FAKE_OUT, 37
    learnset MOVE_SUCKER_PUNCH, 40
    learnset MOVE_PSYCHIC, 41
    learnset MOVE_SHADOW_BALL, 44
    learnset MOVE_DAZZLING_GLEAM, 48
    terminatelearnset


levelup SPECIES_SCYTHER
    learnset MOVE_U_TURN, 1
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_VACUUM_WAVE, 5
    learnset MOVE_PURSUIT, 9
    learnset MOVE_FALSE_SWIPE, 10
    learnset MOVE_WING_ATTACK, 15
    learnset MOVE_SLASH, 20
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_AERIAL_ACE, 31
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_X_SCISSOR, 38
    learnset MOVE_STEEL_WING, 48
    learnset MOVE_ACROBATICS, 54
    terminatelearnset


levelup SPECIES_JYNX
    learnset MOVE_PSYCHIC_TERRAIN, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_LICK, 1
    learnset MOVE_POUND, 1
    learnset MOVE_POWDER_SNOW, 7
    learnset MOVE_FAKE_OUT, 11
    learnset MOVE_CONFUSION, 13
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_SING, 18
    learnset MOVE_HEART_STAMP, 25
    learnset MOVE_AURORA_BEAM, 30
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_WISH, 40
    learnset MOVE_ICE_BEAM, 43
    learnset MOVE_SHADOW_BALL, 47
    learnset MOVE_FOCUS_BLAST, 54
    terminatelearnset


levelup SPECIES_ELECTABUZZ
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_THUNDER_SHOCK, 7
    learnset MOVE_SWIFT, 11
    learnset MOVE_SHOCK_WAVE, 15
    learnset MOVE_THUNDER_WAVE, 19
    learnset MOVE_LOW_KICK, 22
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_THUNDER_PUNCH, 33
    learnset MOVE_FIRE_PUNCH, 40
    learnset MOVE_THUNDER_WAVE, 45
    learnset MOVE_THUNDERBOLT, 49
    learnset MOVE_CROSS_CHOP, 54
    terminatelearnset


levelup SPECIES_MAGMAR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_SMOKESCREEN, 8
    learnset MOVE_FEINT_ATTACK, 12
    learnset MOVE_CLEAR_SMOG, 15
    learnset MOVE_FIRE_SPIN, 15
    learnset MOVE_FLAME_WHEEL, 19
    learnset MOVE_CONFUSE_RAY, 24
    learnset MOVE_FLAME_BURST, 28
    learnset MOVE_FIRE_PUNCH, 33
    learnset MOVE_BRICK_BREAK, 38
    learnset MOVE_LAVA_PLUME, 41
    learnset MOVE_POISON_JAB, 46
    learnset MOVE_FLAMETHROWER, 50
    learnset MOVE_CROSS_CHOP, 56
    terminatelearnset


levelup SPECIES_PINSIR
    learnset MOVE_DOUBLE_EDGE, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SEISMIC_TOSS, 10
    learnset MOVE_REVENGE, 14
    learnset MOVE_BUG_BITE, 18
    learnset MOVE_DOUBLE_HIT, 21
    learnset MOVE_VITAL_THROW, 24
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_STRENGTH, 32
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_X_SCISSOR, 40
    learnset MOVE_SUPERPOWER, 45
    learnset MOVE_EARTHQUAKE, 49
    terminatelearnset


levelup SPECIES_TAUROS
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_RAGE, 5
    learnset MOVE_HORN_ATTACK, 11
    learnset MOVE_ASSURANCE, 14
    learnset MOVE_PURSUIT, 17
    learnset MOVE_SMART_STRIKE, 24
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_ROCK_SLIDE, 39
    learnset MOVE_IRON_TAIL, 42
    learnset MOVE_EARTHQUAKE, 48
    learnset MOVE_DOUBLE_EDGE, 55
    terminatelearnset


levelup SPECIES_MAGIKARP
    learnset MOVE_SPLASH, 1
    learnset MOVE_TACKLE, 10
    learnset MOVE_FLAIL, 15
    terminatelearnset


levelup SPECIES_GYARADOS
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_WAVE_CRASH, 1
    learnset MOVE_BITE, 20
    learnset MOVE_ICE_FANG, 24
    learnset MOVE_DRAGON_RAGE, 28
    learnset MOVE_CRUNCH, 33
    learnset MOVE_WATERFALL, 36
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_BOUNCE, 52
    terminatelearnset


levelup SPECIES_LAPRAS
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_SING, 5
    learnset MOVE_ICE_SHARD, 10
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_WATER_PULSE, 18
    learnset MOVE_BODY_SLAM, 24
    learnset MOVE_CONFUSE_RAY, 29
    learnset MOVE_ANCIENT_POWER, 33
    learnset MOVE_FREEZE_DRY, 37
    learnset MOVE_SCALD, 41
    learnset MOVE_BODY_PRESS, 45
    learnset MOVE_ICE_BEAM, 49
    learnset MOVE_DRILL_RUN, 53
    learnset MOVE_HYDRO_PUMP, 59
    terminatelearnset


levelup SPECIES_DITTO
    learnset MOVE_TRANSFORM, 1
    terminatelearnset
 

levelup SPECIES_EEVEE
    learnset MOVE_COVET, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_DISARMING_VOICE, 5
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_BITE, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_HELPING_HAND, 24
    learnset MOVE_DIG, 27
    learnset MOVE_TAKE_DOWN, 31
    learnset MOVE_DOUBLE_EDGE, 36
    learnset MOVE_LAST_RESORT, 40
    terminatelearnset


levelup SPECIES_VAPOREON
    learnset MOVE_MUDDY_WATER, 1
    learnset MOVE_COVET, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_BITE, 16
    learnset MOVE_WATER_PULSE, 20
    learnset MOVE_HELPING_HAND, 25
    learnset MOVE_DIG, 29
    learnset MOVE_SCALD, 34
    learnset MOVE_HYPER_VOICE, 38
    learnset MOVE_ICE_BEAM, 43
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset


levelup SPECIES_JOLTEON
    learnset MOVE_ZAP_CANNON, 1
    learnset MOVE_COVET, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_BITE, 16
    learnset MOVE_SHOCK_WAVE, 20
    learnset MOVE_HELPING_HAND, 25
    learnset MOVE_DIG, 29
    learnset MOVE_THUNDER_WAVE, 34
    learnset MOVE_THUNDERBOLT, 38
    learnset MOVE_HYPER_VOICE, 43
    learnset MOVE_THUNDER, 48
    terminatelearnset


levelup SPECIES_FLAREON
    learnset MOVE_SACRED_FIRE, 1
    learnset MOVE_FLARE_BLITZ, 1
    learnset MOVE_COVET, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_BITE, 16
    learnset MOVE_FLAME_WHEEL, 20
    learnset MOVE_HELPING_HAND, 25
    learnset MOVE_DIG, 29
    learnset MOVE_LAVA_PLUME, 34
    learnset MOVE_FLAMETHROWER, 38
    learnset MOVE_BODY_SLAM, 43
    learnset MOVE_SUPERPOWER, 48
    terminatelearnset


levelup SPECIES_PORYGON
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONVERSION, 1
    learnset MOVE_CONVERSION_2, 1
    learnset MOVE_SWIFT, 8
    learnset MOVE_PSYBEAM, 12
    learnset MOVE_THUNDER_SHOCK, 15
    learnset MOVE_RECYCLE, 18
    learnset MOVE_RECOVER, 22
    learnset MOVE_SIGNAL_BEAM, 25
    learnset MOVE_TELEPORT, 27
    learnset MOVE_THUNDER_WAVE, 29
    learnset MOVE_TRI_ATTACK, 34
    learnset MOVE_DISCHARGE, 37
    learnset MOVE_PSYSHOCK, 41
    learnset MOVE_ZAP_CANNON, 50
    terminatelearnset


levelup SPECIES_OMANYTE
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_BITE, 7
    learnset MOVE_ROLLOUT, 10
    learnset MOVE_SAND_ATTACK, 12
    learnset MOVE_BUBBLE_BEAM, 15
    learnset MOVE_ROCK_TOMB, 17
    learnset MOVE_MUD_SHOT, 21
    learnset MOVE_AURORA_BEAM, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_SURF, 37
    learnset MOVE_ICE_BEAM, 42
    learnset MOVE_EARTH_POWER, 45
    learnset MOVE_ANCIENT_POWER, 51
    terminatelearnset


levelup SPECIES_OMASTAR
    learnset MOVE_SPIKES, 1
    learnset MOVE_STEALTH_ROCK, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_BITE, 7
    learnset MOVE_ROLLOUT, 10
    learnset MOVE_SAND_ATTACK, 12
    learnset MOVE_BUBBLE_BEAM, 15
    learnset MOVE_ROCK_TOMB, 17
    learnset MOVE_MUD_SHOT, 21
    learnset MOVE_AURORA_BEAM, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_SURF, 37
    learnset MOVE_CRUNCH, 41
    learnset MOVE_MUDDY_WATER, 46
    learnset MOVE_ICE_BEAM, 50
    learnset MOVE_EARTH_POWER, 55
    learnset MOVE_ANCIENT_POWER, 59
    terminatelearnset


levelup SPECIES_KABUTO
    learnset MOVE_ABSORB, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_ROCK_TOMB, 15
    learnset MOVE_WATER_PULSE, 18
    learnset MOVE_MUD_SHOT, 21
    learnset MOVE_AQUA_JET, 25
    learnset MOVE_ANCIENT_POWER, 29
    learnset MOVE_GIGA_DRAIN, 32
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_WATERFALL, 40
    learnset MOVE_STONE_EDGE, 50
    terminatelearnset


levelup SPECIES_KABUTOPS
    learnset MOVE_WAVE_CRASH, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_ROCK_TOMB, 15
    learnset MOVE_WATER_PULSE, 18
    learnset MOVE_MUD_SHOT, 21
    learnset MOVE_AQUA_JET, 25
    learnset MOVE_ANCIENT_POWER, 29
    learnset MOVE_GIGA_DRAIN, 32
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_WATERFALL, 40
    learnset MOVE_BRICK_BREAK, 42
    learnset MOVE_X_SCISSOR, 45
    learnset MOVE_LIQUIDATION, 49
    learnset MOVE_SUPERPOWER, 55
    learnset MOVE_STONE_EDGE, 61
    terminatelearnset


levelup SPECIES_AERODACTYL
    learnset MOVE_ROOST, 1
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_WING_ATTACK, 6
    learnset MOVE_SUPERSONIC, 10
    learnset MOVE_SCARY_FACE, 15
    learnset MOVE_ROCK_SLIDE, 20
    learnset MOVE_FIRE_FANG, 25
    learnset MOVE_THUNDER_FANG, 25
    learnset MOVE_ICE_FANG, 25
    learnset MOVE_CRUNCH, 30
    learnset MOVE_DUAL_WINGBEAT, 34
    learnset MOVE_PSYCHIC_FANGS, 39
    learnset MOVE_DRAGON_CLAW, 43
    learnset MOVE_EARTHQUAKE, 47
    learnset MOVE_STONE_EDGE, 51
    learnset MOVE_BRAVE_BIRD, 59
    terminatelearnset


levelup SPECIES_SNORLAX
    learnset MOVE_HEAT_CRASH, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_LICK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_RECYCLE, 8
    learnset MOVE_BITE, 11
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_CHIP_AWAY, 18
    learnset MOVE_BRICK_BREAK, 23
    learnset MOVE_CRUNCH, 27
    learnset MOVE_HEAVY_SLAM, 30
    learnset MOVE_BODY_SLAM, 33
    learnset MOVE_FACADE, 37
    learnset MOVE_STOMPING_TANTRUM, 41
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_HAMMER_ARM, 54
    learnset MOVE_HIGH_HORSEPOWER, 58
    learnset MOVE_GUNK_SHOT, 62
    learnset MOVE_DOUBLE_EDGE, 66
    terminatelearnset

levelup SPECIES_ARTICUNO
    learnset MOVE_GUST, 1
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_WING_ATTACK, 10
    learnset MOVE_ICE_SHARD, 15
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_ROOST, 25
    learnset MOVE_AURORA_BEAM, 30
    learnset MOVE_REFLECT, 35
    learnset MOVE_AIR_SLASH, 40
    learnset MOVE_LIGHT_SCREEN, 45
    learnset MOVE_FREEZE_DRY, 50
    learnset MOVE_ICE_BEAM, 60
    learnset MOVE_HURRICANE, 70
    learnset MOVE_SHEER_COLD, 100
    terminatelearnset


levelup SPECIES_ZAPDOS
    learnset MOVE_PECK, 1
    learnset MOVE_THUNDER_SHOCK, 5
    learnset MOVE_WING_ATTACK, 10
    learnset MOVE_ELECTROWEB, 15
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_ROOST, 25
    learnset MOVE_SHOCK_WAVE, 30
    learnset MOVE_REFLECT, 35
    learnset MOVE_AIR_SLASH, 40
    learnset MOVE_LIGHT_SCREEN, 45
    learnset MOVE_DISCHARGE, 50
    learnset MOVE_THUNDERBOLT, 60
    learnset MOVE_HURRICANE, 70
    learnset MOVE_ZAP_CANNON, 100
    terminatelearnset


levelup SPECIES_MOLTRES
    learnset MOVE_PECK, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_WING_ATTACK, 10
    learnset MOVE_FIRE_SPIN, 15
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_ROOST, 25
    learnset MOVE_FLAME_BURST, 30
    learnset MOVE_REFLECT, 35
    learnset MOVE_AIR_SLASH, 40
    learnset MOVE_LIGHT_SCREEN, 45
    learnset MOVE_FLAMETHROWER, 50
    learnset MOVE_HEAT_WAVE, 60
    learnset MOVE_HURRICANE, 70
    learnset MOVE_OVERHEAT, 100
    terminatelearnset


levelup SPECIES_DRATINI
    learnset MOVE_WRAP, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TWISTER, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_DRAGON_RAGE, 15
    learnset MOVE_DRAGON_TAIL, 20
    learnset MOVE_BODY_SLAM, 24
    learnset MOVE_AQUA_TAIL, 32
    learnset MOVE_DRAGON_RUSH, 49
    learnset MOVE_OUTRAGE, 56
    learnset MOVE_HYPER_BEAM, 60
    terminatelearnset


levelup SPECIES_DRAGONAIR
    learnset MOVE_WRAP, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TWISTER, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_DRAGON_RAGE, 15
    learnset MOVE_DRAGON_TAIL, 29
    learnset MOVE_BODY_SLAM, 37
    learnset MOVE_AQUA_TAIL, 46
    learnset MOVE_DRAGON_RUSH, 64
    learnset MOVE_OUTRAGE, 80
    learnset MOVE_HYPER_BEAM, 85
    terminatelearnset


levelup SPECIES_DRAGONITE
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_DRACO_METEOR, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TWISTER, 7
    learnset MOVE_THUNDER_WAVE, 10
    learnset MOVE_DRAGON_RAGE, 15
    learnset MOVE_DRAGON_TAIL, 34
    learnset MOVE_BODY_SLAM, 46
    learnset MOVE_AQUA_TAIL, 51
    learnset MOVE_DUAL_WINGBEAT, 55
    learnset MOVE_DRAGON_CLAW, 61
    learnset MOVE_ROCK_SLIDE, 65
    learnset MOVE_BODY_PRESS, 70
    learnset MOVE_EARTHQUAKE, 75
    learnset MOVE_EXTREME_SPEED, 80
    learnset MOVE_DRAGON_RUSH, 85
    terminatelearnset


levelup SPECIES_MEWTWO
    learnset MOVE_DISABLE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_SWIFT, 1
    learnset MOVE_ANCIENT_POWER, 8
    learnset MOVE_PSYCHO_CUT, 16
    learnset MOVE_RECOVER, 24
    learnset MOVE_EARTH_POWER, 32
    learnset MOVE_AURA_SPHERE, 40
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_SHADOW_BALL, 56
    learnset MOVE_FOCUS_BLAST, 64
    learnset MOVE_PSYSTRIKE, 72
    learnset MOVE_HYPER_BEAM, 80
    learnset MOVE_PSYCHO_BOOST, 96
    terminatelearnset


levelup SPECIES_MEW
    learnset MOVE_POUND, 1
    learnset MOVE_PSYBEAM, 10
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_RECOVER, 30
    learnset MOVE_METRONOME, 40
    learnset MOVE_TRANSFORM, 50
    learnset MOVE_AURA_SPHERE, 60
    learnset MOVE_DAZZLING_GLEAM, 70
    learnset MOVE_PSYCHIC, 80
    learnset MOVE_FUTURE_SIGHT, 90
    learnset MOVE_PSYCHO_BOOST, 100
    terminatelearnset


levelup SPECIES_CHIKORITA
    learnset MOVE_TACKLE, 1
    learnset MOVE_RAZOR_LEAF, 6
    learnset MOVE_POISON_POWDER, 9
    learnset MOVE_SYNTHESIS, 12
    learnset MOVE_MAGICAL_LEAF, 15
    learnset MOVE_HEADBUTT, 19
    learnset MOVE_SWEET_SCENT, 21
    learnset MOVE_GIGA_DRAIN, 25
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_SOLAR_BEAM, 34
    learnset MOVE_ENERGY_BALL, 37
    learnset MOVE_ANCIENT_POWER, 40
    terminatelearnset


levelup SPECIES_BAYLEEF
    learnset MOVE_TACKLE, 1
    learnset MOVE_RAZOR_LEAF, 6
    learnset MOVE_POISON_POWDER, 9
    learnset MOVE_SYNTHESIS, 12
    learnset MOVE_MAGICAL_LEAF, 15
    learnset MOVE_HEADBUTT, 19
    learnset MOVE_SWEET_SCENT, 21
    learnset MOVE_GIGA_DRAIN, 25
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_SOLAR_BEAM, 34
    learnset MOVE_STOMPING_TANTRUM, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_ENERGY_BALL, 42
    learnset MOVE_ANCIENT_POWER, 45
    terminatelearnset


levelup SPECIES_MEGANIUM
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_RAZOR_LEAF, 6
    learnset MOVE_POISON_POWDER, 9
    learnset MOVE_SYNTHESIS, 12
    learnset MOVE_MAGICAL_LEAF, 15
    learnset MOVE_HEADBUTT, 19
    learnset MOVE_SWEET_SCENT, 21
    learnset MOVE_GIGA_DRAIN, 25
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_WEATHER_BALL, 32
    learnset MOVE_SOLAR_BEAM, 34
    learnset MOVE_STOMPING_TANTRUM, 36
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_BODY_PRESS, 41
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_ENERGY_BALL, 47
    learnset MOVE_ANCIENT_POWER, 50
    terminatelearnset


levelup SPECIES_CYNDAQUIL
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 6
    learnset MOVE_EMBER, 9
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_FLAME_WHEEL, 17
    learnset MOVE_ROLLOUT, 21
    learnset MOVE_FLAME_BURST, 25
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_DIG, 31
    learnset MOVE_WILD_CHARGE, 35
    learnset MOVE_FLAMETHROWER, 40
    terminatelearnset


levelup SPECIES_QUILAVA
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 6
    learnset MOVE_EMBER, 9
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_FLAME_WHEEL, 17
    learnset MOVE_ROLLOUT, 21
    learnset MOVE_BRICK_BREAK, 24
    learnset MOVE_FLAME_BURST, 28
    learnset MOVE_BODY_SLAM, 31
    learnset MOVE_DIG, 34
    learnset MOVE_PLAY_ROUGH, 38
    learnset MOVE_ZEN_HEADBUTT, 42
    learnset MOVE_FLAMETHROWER, 47
    terminatelearnset


levelup SPECIES_TYPHLOSION
    learnset MOVE_ERUPTION, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 6
    learnset MOVE_EMBER, 9
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_FLAME_WHEEL, 17
    learnset MOVE_ROLLOUT, 21
    learnset MOVE_BRICK_BREAK, 24
    learnset MOVE_FLAME_BURST, 28
    learnset MOVE_BODY_SLAM, 31
    learnset MOVE_DIG, 33
    learnset MOVE_THUNDER_PUNCH, 36
    learnset MOVE_ROCK_SLIDE, 40
    learnset MOVE_PLAY_ROUGH, 44
    learnset MOVE_ZEN_HEADBUTT, 47
    learnset MOVE_EARTHQUAKE, 52
    learnset MOVE_FLAMETHROWER, 58
    terminatelearnset


levelup SPECIES_TOTODILE
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_WATER_GUN, 6
    learnset MOVE_RAGE, 9
    learnset MOVE_BITE, 12
    learnset MOVE_AQUA_JET, 16
    learnset MOVE_ICE_FANG, 20
    learnset MOVE_CRUNCH, 25
    learnset MOVE_SLASH, 28
    learnset MOVE_BRICK_BREAK, 31
    learnset MOVE_WATERFALL, 34
    learnset MOVE_ROCK_SLIDE, 38
    learnset MOVE_AQUA_TAIL, 41
    learnset MOVE_DRAGON_CLAW, 45
    learnset MOVE_SUPERPOWER, 49
    terminatelearnset


levelup SPECIES_CROCONAW
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_WATER_GUN, 6
    learnset MOVE_RAGE, 9
    learnset MOVE_BITE, 12
    learnset MOVE_AQUA_JET, 16
    learnset MOVE_ICE_FANG, 25
    learnset MOVE_CRUNCH, 28
    learnset MOVE_SLASH, 30
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_WATERFALL, 37
    learnset MOVE_ROCK_SLIDE, 41
    learnset MOVE_AQUA_TAIL, 47
    learnset MOVE_DRAGON_CLAW, 52
    learnset MOVE_SUPERPOWER, 56
    terminatelearnset


levelup SPECIES_FERALIGATR
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_WAVE_CRASH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_WATER_GUN, 6
    learnset MOVE_RAGE, 9
    learnset MOVE_BITE, 12
    learnset MOVE_AQUA_JET, 16
    learnset MOVE_ICE_FANG, 25
    learnset MOVE_CRUNCH, 28
    learnset MOVE_SLASH, 30
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_AVALANCHE, 38
    learnset MOVE_WATERFALL, 40
    learnset MOVE_ROCK_SLIDE, 44
    learnset MOVE_STOMPING_TANTRUM, 48
    learnset MOVE_AQUA_TAIL, 52
    learnset MOVE_DRAGON_CLAW, 59
    learnset MOVE_SUPERPOWER, 65
    terminatelearnset


levelup SPECIES_SENTRET
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_FURY_SWIPES, 11
    learnset MOVE_HELPING_HAND, 13
    learnset MOVE_FOLLOW_ME, 16
    learnset MOVE_TAIL_SLAP, 19
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_BRICK_BREAK, 31
    learnset MOVE_SHADOW_CLAW, 35
    learnset MOVE_PLAY_ROUGH, 38
    learnset MOVE_DOUBLE_EDGE, 41
    terminatelearnset


levelup SPECIES_FURRET
    learnset MOVE_REVERSAL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_FURY_SWIPES, 11
    learnset MOVE_HELPING_HAND, 13
    learnset MOVE_FOLLOW_ME, 16
    learnset MOVE_TAIL_SLAP, 19
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_SUCKER_PUNCH, 30
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_THUNDER_PUNCH, 36
    learnset MOVE_FIRE_PUNCH, 36
    learnset MOVE_ICE_PUNCH, 36
    learnset MOVE_SHADOW_CLAW, 39
    learnset MOVE_PLAY_ROUGH, 43
    learnset MOVE_DOUBLE_EDGE, 47
    terminatelearnset


levelup SPECIES_HOOTHOOT
    learnset MOVE_PECK, 1
    learnset MOVE_TACKLE, 3
    learnset MOVE_AERIAL_ACE, 11
    learnset MOVE_CONFUSION, 13
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_EXTRASENSORY, 20
    learnset MOVE_HYPNOSIS, 23
    learnset MOVE_AIR_SLASH, 27
    learnset MOVE_SHADOW_BALL, 30
    learnset MOVE_ROOST, 34
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_MOONBLAST, 39
    learnset MOVE_HURRICANE, 45
    terminatelearnset


levelup SPECIES_NOCTOWL
    learnset MOVE_SKILL_SWAP, 1
    learnset MOVE_DREAM_EATER, 1
    learnset MOVE_PECK, 1
    learnset MOVE_TACKLE, 3
    learnset MOVE_AERIAL_ACE, 11
    learnset MOVE_CONFUSION, 13
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_EXTRASENSORY, 22
    learnset MOVE_HYPNOSIS, 25
    learnset MOVE_AIR_SLASH, 29
    learnset MOVE_SHADOW_BALL, 32
    learnset MOVE_ROOST, 36
    learnset MOVE_PSYCHIC, 40
    learnset MOVE_MOONBLAST, 43
    learnset MOVE_HEAT_WAVE, 47
    learnset MOVE_HURRICANE, 51
    terminatelearnset


levelup SPECIES_LEDYBA
    learnset MOVE_TACKLE, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_SWIFT, 8
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_REFLECT, 12
    learnset MOVE_SAFEGUARD, 12
    learnset MOVE_MACH_PUNCH, 15
    learnset MOVE_SILVER_WIND, 18
    learnset MOVE_DIZZY_PUNCH, 20
    learnset MOVE_BATON_PASS, 22
    learnset MOVE_ENCORE, 22
    learnset MOVE_U_TURN, 23
    learnset MOVE_BRICK_BREAK, 25
    learnset MOVE_AIR_SLASH, 26
    learnset MOVE_BUG_BUZZ, 28
    learnset MOVE_ACROBATICS, 29
    learnset MOVE_DRAIN_PUNCH, 31
    learnset MOVE_DOUBLE_EDGE, 33
    terminatelearnset


levelup SPECIES_LEDIAN
    learnset MOVE_DETECT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_SWIFT, 8
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_REFLECT, 12
    learnset MOVE_SAFEGUARD, 12
    learnset MOVE_MACH_PUNCH, 15
    learnset MOVE_THUNDER_PUNCH, 18
    learnset MOVE_ICE_PUNCH, 18
    learnset MOVE_DIZZY_PUNCH, 20
    learnset MOVE_BATON_PASS, 24
    learnset MOVE_ENCORE, 24
    learnset MOVE_U_TURN, 28
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_AIR_SLASH, 32
    learnset MOVE_BUG_BUZZ, 33
    learnset MOVE_ACROBATICS, 35
    learnset MOVE_DRAIN_PUNCH, 36
    learnset MOVE_DOUBLE_EDGE, 38
    terminatelearnset


levelup SPECIES_SPINARAK
    learnset MOVE_POISON_STING, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_INFESTATION, 5
    learnset MOVE_BUG_BITE, 10
    learnset MOVE_NIGHT_SHADE, 12
    learnset MOVE_SHADOW_SNEAK, 15
    learnset MOVE_SLUDGE_BOMB, 19
    learnset MOVE_SUCKER_PUNCH, 22
    learnset MOVE_PIN_MISSILE, 24
    learnset MOVE_NIGHT_SLASH, 27
    learnset MOVE_GIGA_DRAIN, 29
    learnset MOVE_POISON_JAB, 32
    learnset MOVE_X_SCISSOR, 34
    learnset MOVE_TOXIC, 36
    learnset MOVE_LEECH_LIFE, 40
    terminatelearnset


levelup SPECIES_ARIADOS
    learnset MOVE_TOXIC_SPIKES, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_INFESTATION, 5
    learnset MOVE_BUG_BITE, 10
    learnset MOVE_NIGHT_SHADE, 12
    learnset MOVE_SHADOW_SNEAK, 15
    learnset MOVE_SLUDGE_BOMB, 19
    learnset MOVE_TOXIC_THREAD, 22
    learnset MOVE_PIN_MISSILE, 24
    learnset MOVE_NIGHT_SLASH, 27
    learnset MOVE_GIGA_DRAIN, 29
    learnset MOVE_X_SCISSOR, 37
    learnset MOVE_TOXIC, 40
    learnset MOVE_POISON_JAB, 41
    learnset MOVE_LEECH_LIFE, 42
    learnset MOVE_FOUL_PLAY, 44
    learnset MOVE_MEGAHORN, 46
    terminatelearnset


levelup SPECIES_CROBAT
    learnset MOVE_LEECH_LIFE, 1
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_BITE, 8
    learnset MOVE_WING_ATTACK, 13
    learnset MOVE_MEAN_LOOK, 16
    learnset MOVE_HYPNOSIS, 19
    learnset MOVE_AERIAL_ACE, 22
    learnset MOVE_SWIFT, 26
    learnset MOVE_CONFUSE_RAY, 30
    learnset MOVE_AIR_SLASH, 38
    learnset MOVE_POISON_FANG, 40
    learnset MOVE_STEEL_WING, 42
    learnset MOVE_X_SCISSOR, 45
    learnset MOVE_BRAVE_BIRD, 52
    terminatelearnset


levelup SPECIES_CHINCHOU
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_THUNDER_WAVE, 7
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_SHOCK_WAVE, 19
    learnset MOVE_AURORA_BEAM, 23
    learnset MOVE_SIGNAL_BEAM, 26
    learnset MOVE_DISCHARGE, 30
    learnset MOVE_ICE_BEAM, 36
    learnset MOVE_HYDRO_PUMP, 44
    terminatelearnset


levelup SPECIES_LANTURN
    learnset MOVE_WHIRLPOOL, 1
    learnset MOVE_THUNDER, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_THUNDER_WAVE, 7
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_SHOCK_WAVE, 19
    learnset MOVE_AURORA_BEAM, 23
    learnset MOVE_SIGNAL_BEAM, 26
    learnset MOVE_DISCHARGE, 30
    learnset MOVE_DAZZLING_GLEAM, 34
    learnset MOVE_ICE_BEAM, 39
    learnset MOVE_HYDRO_PUMP, 44
    learnset MOVE_THUNDERBOLT, 49
    terminatelearnset


levelup SPECIES_PICHU
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_DISARMING_VOICE, 4
    learnset MOVE_SWEET_KISS, 8
    learnset MOVE_NUZZLE, 12
    learnset MOVE_THUNDER_WAVE, 14
    learnset MOVE_FAKE_OUT, 18
    learnset MOVE_THUNDERBOLT, 25
    terminatelearnset


levelup SPECIES_CLEFFA
    learnset MOVE_SPLASH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_SWEET_KISS, 3
    learnset MOVE_DISARMING_VOICE, 5
    learnset MOVE_ENCORE, 9
    learnset MOVE_MAGICAL_LEAF, 12
    terminatelearnset


levelup SPECIES_IGGLYBUFF
    learnset MOVE_SING, 1
    learnset MOVE_POUND, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_DRAINING_KISS, 1
    learnset MOVE_ENCORE, 20
    terminatelearnset


levelup SPECIES_TOGEPI
    learnset MOVE_GROWL, 1
    learnset MOVE_POUND, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_SWEET_KISS, 6
    learnset MOVE_METRONOME, 9
    learnset MOVE_SECRET_POWER, 11
    learnset MOVE_YAWN, 16
    learnset MOVE_ENCORE, 17
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_FOLLOW_ME, 22
    learnset MOVE_DOUBLE_EDGE, 24
    learnset MOVE_WISH, 26
    learnset MOVE_BATON_PASS, 27
    learnset MOVE_TELEPORT, 30
    terminatelearnset


levelup SPECIES_TOGETIC
    learnset MOVE_GROWL, 1
    learnset MOVE_POUND, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_SWEET_KISS, 6
    learnset MOVE_METRONOME, 9
    learnset MOVE_SECRET_POWER, 11
    learnset MOVE_YAWN, 16
    learnset MOVE_ENCORE, 17
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_EXTRASENSORY, 24
    learnset MOVE_THUNDER_WAVE, 27
    learnset MOVE_MAGICAL_LEAF, 29
    learnset MOVE_AIR_SLASH, 33
    learnset MOVE_TRI_ATTACK, 36
    learnset MOVE_MYSTICAL_FIRE, 39
    learnset MOVE_MOONBLAST, 42
    terminatelearnset


levelup SPECIES_NATU
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_CONFUSION, 6
    learnset MOVE_NIGHT_SHADE, 10
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_WING_ATTACK, 18
    learnset MOVE_THUNDER_WAVE, 22
    learnset MOVE_DRILL_PECK, 25
    learnset MOVE_WISH, 30
    learnset MOVE_PSYCHIC, 34
    learnset MOVE_AIR_SLASH, 38
    learnset MOVE_HEAT_WAVE, 41
    terminatelearnset


levelup SPECIES_XATU
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_CONFUSION, 6
    learnset MOVE_NIGHT_SHADE, 10
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_PSYBEAM, 21
    learnset MOVE_WING_ATTACK, 24
    learnset MOVE_THUNDER_WAVE, 28
    learnset MOVE_DRILL_PECK, 33
    learnset MOVE_WISH, 37
    learnset MOVE_PSYCHIC, 40
    learnset MOVE_AIR_SLASH, 43
    learnset MOVE_HEAT_WAVE, 47
    terminatelearnset


levelup SPECIES_MAREEP
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_WAVE, 4
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_SHOCK_WAVE, 15
    learnset MOVE_CONFUSE_RAY, 19
    learnset MOVE_POWER_GEM, 25
    learnset MOVE_DISCHARGE, 29
    learnset MOVE_DAZZLING_GLEAM, 37
    learnset MOVE_THUNDERBOLT, 40
    terminatelearnset


levelup SPECIES_FLAAFFY
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_WAVE, 4
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_SHOCK_WAVE, 15
    learnset MOVE_CONFUSE_RAY, 19
    learnset MOVE_ELECTROWEB, 25
    learnset MOVE_POWER_GEM, 30
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_DAZZLING_GLEAM, 41
    learnset MOVE_THUNDERBOLT, 44
    terminatelearnset


levelup SPECIES_AMPHAROS
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_VOLT_SWITCH, 1
    learnset MOVE_THUNDER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_WAVE, 4
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_SHOCK_WAVE, 15
    learnset MOVE_CONFUSE_RAY, 19
    learnset MOVE_ELECTROWEB, 25
    learnset MOVE_STOMPING_TANTRUM, 30
    learnset MOVE_LOW_KICK, 34
    learnset MOVE_POWER_GEM, 39
    learnset MOVE_DAZZLING_GLEAM, 43
    learnset MOVE_DRAGON_PULSE, 47
    learnset MOVE_THUNDERBOLT, 52
    terminatelearnset


levelup SPECIES_BELLOSSOM
    learnset MOVE_ABSORB, 1
    learnset MOVE_ACID, 4
    learnset MOVE_POISON_POWDER, 8
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_STUN_SPORE, 16
    learnset MOVE_SLEEP_POWDER, 19
    learnset MOVE_SLUDGE_BOMB, 25
    learnset MOVE_SEED_BOMB, 29
    learnset MOVE_PETAL_BLIZZARD, 32
    learnset MOVE_MOONLIGHT, 37
    learnset MOVE_DRAIN_PUNCH, 40
    learnset MOVE_MOONBLAST, 45
    learnset MOVE_GIGA_DRAIN, 49
    terminatelearnset


levelup SPECIES_MARILL
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_POUND, 1
    learnset MOVE_WATER_GUN, 3
    learnset MOVE_BUBBLE_BEAM, 9
    learnset MOVE_ICE_PUNCH, 12
    learnset MOVE_BODY_SLAM, 15
    learnset MOVE_AQUA_TAIL, 21
    learnset MOVE_PLAY_ROUGH, 27
    learnset MOVE_ICE_BEAM, 31
    learnset MOVE_DOUBLE_EDGE, 36
    terminatelearnset


levelup SPECIES_AZUMARILL
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_POUND, 1
    learnset MOVE_WATER_GUN, 3
    learnset MOVE_BUBBLE_BEAM, 9
    learnset MOVE_ICE_PUNCH, 12
    learnset MOVE_AQUA_JET, 18
    learnset MOVE_BODY_SLAM, 21
    learnset MOVE_AQUA_TAIL, 26
    learnset MOVE_ICE_BEAM, 31
    learnset MOVE_PLAY_ROUGH, 36
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_SUPERPOWER, 45
    learnset MOVE_HYDRO_PUMP, 50
    terminatelearnset


levelup SPECIES_SUDOWOODO
    learnset MOVE_SPIKES, 1
    learnset MOVE_FAKE_TEARS, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_TACKLE, 4
    learnset MOVE_ROCK_THROW, 8
    learnset MOVE_TRAILBLAZE, 12
    learnset MOVE_ROCK_TOMB, 16
    learnset MOVE_MIMIC, 16
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_BODY_SLAM, 23
    learnset MOVE_LOW_KICK, 25
    learnset MOVE_SUCKER_PUNCH, 29
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_HAMMER_ARM, 38
    learnset MOVE_EARTHQUAKE, 41
    learnset MOVE_WOOD_HAMMER, 46
    learnset MOVE_HEAD_SMASH, 50
    terminatelearnset

levelup SPECIES_POLITOED
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_SCALD, 36
    learnset MOVE_EARTH_POWER, 39
    learnset MOVE_ICE_BEAM, 43
    learnset MOVE_BOUNCE, 46
    learnset MOVE_HYPER_VOICE, 49
    terminatelearnset


levelup SPECIES_HOPPIP
    learnset MOVE_ABSORB, 1
    learnset MOVE_SYNTHESIS, 4
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_POISON_POWDER, 10
    learnset MOVE_STUN_SPORE, 10
    learnset MOVE_SLEEP_POWDER, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_AERIAL_ACE, 16
    learnset MOVE_U_TURN, 20
    learnset MOVE_ACROBATICS, 23
    learnset MOVE_GIGA_DRAIN, 27
    learnset MOVE_RAGE_POWDER, 31
    learnset MOVE_AIR_SLASH, 33
    learnset MOVE_TAILWIND, 36
    terminatelearnset


levelup SPECIES_SKIPLOOM
    learnset MOVE_ABSORB, 1
    learnset MOVE_SYNTHESIS, 4
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_POISON_POWDER, 10
    learnset MOVE_STUN_SPORE, 10
    learnset MOVE_SLEEP_POWDER, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_AERIAL_ACE, 20
    learnset MOVE_U_TURN, 26
    learnset MOVE_ACROBATICS, 30
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_RAGE_POWDER, 37
    learnset MOVE_AIR_SLASH, 39
    learnset MOVE_TAILWIND, 50
    terminatelearnset


levelup SPECIES_JUMPLUFF
    learnset MOVE_STRENGTH_SAP, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_SYNTHESIS, 4
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_POISON_POWDER, 10
    learnset MOVE_STUN_SPORE, 10
    learnset MOVE_SLEEP_POWDER, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_AERIAL_ACE, 23
    learnset MOVE_DAZZLING_GLEAM, 27
    learnset MOVE_U_TURN, 30
    learnset MOVE_ACROBATICS, 33
    learnset MOVE_GIGA_DRAIN, 38
    learnset MOVE_RAGE_POWDER, 41
    learnset MOVE_AIR_SLASH, 45
    terminatelearnset


levelup SPECIES_AIPOM
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_DOUBLE_KICK, 8
    learnset MOVE_AERIAL_ACE, 11
    learnset MOVE_FURY_SWIPES, 14
    learnset MOVE_FAKE_OUT, 17
    learnset MOVE_BODY_SLAM, 20
    learnset MOVE_KNOCK_OFF, 23
    learnset MOVE_BRICK_BREAK, 27
    learnset MOVE_DOUBLE_HIT, 30
    learnset MOVE_SHADOW_CLAW, 34
    learnset MOVE_TAIL_SLAP, 38
    learnset MOVE_BOUNCE, 41
    terminatelearnset


levelup SPECIES_SUNKERN
    learnset MOVE_ABSORB, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_GRASS_WHISTLE, 7
    learnset MOVE_MEGA_DRAIN, 10
    learnset MOVE_LEECH_SEED, 13
    learnset MOVE_SYNTHESIS, 16
    learnset MOVE_GIGA_DRAIN, 23
    learnset MOVE_ENDEAVOR, 25
    learnset MOVE_SOLAR_BEAM, 32
    terminatelearnset


levelup SPECIES_SUNFLORA
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_GRASS_WHISTLE, 7
    learnset MOVE_MEGA_DRAIN, 10
    learnset MOVE_LEECH_SEED, 13
    learnset MOVE_SYNTHESIS, 16
    learnset MOVE_FLAME_BURST, 20
    learnset MOVE_GIGA_DRAIN, 24
    learnset MOVE_SLUDGE_BOMB, 28
    learnset MOVE_EARTH_POWER, 32
    learnset MOVE_SOLAR_BEAM, 35
    learnset MOVE_HEAT_WAVE, 40
    learnset MOVE_SEED_FLARE, 46
    terminatelearnset


levelup SPECIES_YANMA
    learnset MOVE_TACKLE, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_DETECT, 5
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_SONIC_BOOM, 12
    learnset MOVE_BUG_BITE, 17
    learnset MOVE_WING_ATTACK, 19
    learnset MOVE_HYPNOSIS, 24
    learnset MOVE_U_TURN, 27
    learnset MOVE_LEECH_LIFE, 31
    learnset MOVE_ANCIENT_POWER, 35
    learnset MOVE_BUG_BUZZ, 40
    learnset MOVE_AIR_SLASH, 44
    learnset MOVE_GIGA_DRAIN, 47
    terminatelearnset


levelup SPECIES_WOOPER
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_MUD_SHOT, 7
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_SLAM, 15
    learnset MOVE_MUD_BOMB, 18
    learnset MOVE_YAWN, 22
    learnset MOVE_AQUA_TAIL, 25
    learnset MOVE_EARTH_POWER, 30
    learnset MOVE_MUDDY_WATER, 36
    learnset MOVE_TOXIC, 38
    learnset MOVE_ANCIENT_POWER, 41
    learnset MOVE_EARTHQUAKE, 43
    terminatelearnset


levelup SPECIES_QUAGSIRE
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_AVALANCHE, 1
    learnset MOVE_RECOVER, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_MUD_SHOT, 7
    learnset MOVE_BUBBLE_BEAM, 12
    learnset MOVE_SLAM, 15
    learnset MOVE_MUD_BOMB, 18
    learnset MOVE_YAWN, 22
    learnset MOVE_AQUA_TAIL, 27
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_MUDDY_WATER, 39
    learnset MOVE_TOXIC, 42
    learnset MOVE_ANCIENT_POWER, 45
    learnset MOVE_EARTHQUAKE, 48
    terminatelearnset


levelup SPECIES_ESPEON
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_WISH, 1
    learnset MOVE_COVET, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_BITE, 16
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_HELPING_HAND, 25
    learnset MOVE_MAGICAL_LEAF, 29
    learnset MOVE_POWER_GEM, 34
    learnset MOVE_PSYCHIC, 38
    learnset MOVE_HYPER_VOICE, 43
    learnset MOVE_DAZZLING_GLEAM, 48
    terminatelearnset


levelup SPECIES_UMBREON
    learnset MOVE_WISH, 1
    learnset MOVE_COVET, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_BITE, 16
    learnset MOVE_SNARL, 20
    learnset MOVE_HELPING_HAND, 25
    learnset MOVE_MOONLIGHT, 29
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_DARK_PULSE, 38
    learnset MOVE_LIGHT_SCREEN, 43
    learnset MOVE_REFLECT, 43
    learnset MOVE_DOUBLE_EDGE, 48
    terminatelearnset


levelup SPECIES_MURKROW
    learnset MOVE_PECK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_PURSUIT, 5
    learnset MOVE_WING_ATTACK, 10
    learnset MOVE_NIGHT_SHADE, 14
    learnset MOVE_ASSURANCE, 17
    learnset MOVE_AERIAL_ACE, 21
    learnset MOVE_THUNDER_WAVE, 25
    learnset MOVE_SUCKER_PUNCH, 31
    learnset MOVE_DRILL_PECK, 35
    learnset MOVE_CONFUSE_RAY, 38
    learnset MOVE_FOUL_PLAY, 42
    learnset MOVE_SHADOW_BALL, 46
    learnset MOVE_BRAVE_BIRD, 51
    terminatelearnset


levelup SPECIES_SLOWKING
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSION,  1
    learnset MOVE_YAWN, 1
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_DISABLE, 11
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_BUBBLE_BEAM, 19
    learnset MOVE_ZEN_HEADBUTT, 23
    learnset MOVE_AURORA_BEAM, 26
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_FLAMETHROWER, 35
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_SURF, 42
    learnset MOVE_PSYCHIC, 47
    learnset MOVE_FOCUS_BLAST, 50
    terminatelearnset


levelup SPECIES_MISDREAVUS
    learnset MOVE_GROWL, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_ASTONISH, 4
    learnset MOVE_CONFUSE_RAY, 9
    learnset MOVE_SHADOW_SNEAK, 13
    learnset MOVE_HEX, 17
    learnset MOVE_PSYBEAM, 21
    learnset MOVE_SUCKER_PUNCH, 25
    learnset MOVE_HYPER_VOICE, 30
    learnset MOVE_DARK_PULSE, 33
    learnset MOVE_SHADOW_BALL, 37
    learnset MOVE_PSYCHIC, 40
    learnset MOVE_POWER_GEM, 44
    terminatelearnset


levelup SPECIES_UNOWN
    learnset MOVE_HIDDEN_POWER, 1
    learnset MOVE_SECRET_POWER, 10
    learnset MOVE_EARTH_POWER, 15
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_POWER_GEM, 25
    learnset MOVE_COSMIC_POWER, 30
    learnset MOVE_STORED_POWER, 35
    terminatelearnset


levelup SPECIES_WOBBUFFET
    learnset MOVE_COUNTER, 1
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_SAFEGUARD, 1
    learnset MOVE_DESTINY_BOND, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_COUNTER, 15
    learnset MOVE_MIRROR_COAT, 15
    learnset MOVE_SAFEGUARD, 15
    learnset MOVE_DESTINY_BOND, 15
    terminatelearnset


levelup SPECIES_GIRAFARIG
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_CONFUSION, 4
    learnset MOVE_ODOR_SLEUTH, 7
    learnset MOVE_ASSURANCE, 10
    learnset MOVE_STOMP, 13
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_DOUBLE_KICK, 19
    learnset MOVE_BULLDOZE, 23
    learnset MOVE_CONFUSE_RAY, 26
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_TWIN_BEAM, 33
    learnset MOVE_CRUNCH, 37
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_SHADOW_BALL, 43
    learnset MOVE_PSYCHIC, 48
    terminatelearnset


levelup SPECIES_PINECO
    learnset MOVE_TACKLE, 1
    learnset MOVE_PIN_MISSILE, 1
    learnset MOVE_PROTECT, 5
    learnset MOVE_SELF_DESTRUCT, 9
    learnset MOVE_BUG_BITE, 12
    learnset MOVE_TAKE_DOWN, 14
    learnset MOVE_RAPID_SPIN, 18
    learnset MOVE_DRILL_RUN, 23
    learnset MOVE_SPIKES, 26
    learnset MOVE_STEAMROLLER, 31
    learnset MOVE_EXPLOSION, 34
    learnset MOVE_GYRO_BALL, 37
    learnset MOVE_U_TURN, 41
    terminatelearnset


levelup SPECIES_FORRETRESS
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_TOXIC_SPIKES, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_PIN_MISSILE, 1
    learnset MOVE_PROTECT, 5
    learnset MOVE_SELF_DESTRUCT, 9
    learnset MOVE_BUG_BITE, 12
    learnset MOVE_TAKE_DOWN, 14
    learnset MOVE_RAPID_SPIN, 18
    learnset MOVE_DRILL_RUN, 23
    learnset MOVE_SPIKES, 26
    learnset MOVE_HEAVY_SLAM, 31
    learnset MOVE_STEAMROLLER, 34
    learnset MOVE_IRON_HEAD, 38
    learnset MOVE_EXPLOSION, 41
    learnset MOVE_GYRO_BALL, 45
    learnset MOVE_U_TURN, 47
    terminatelearnset


levelup SPECIES_DUNSPARCE
    learnset MOVE_FLAIL, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_ROLLOUT, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_PURSUIT, 10
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_ANCIENT_POWER, 19
    learnset MOVE_YAWN, 22
    learnset MOVE_GLARE, 24
    learnset MOVE_DRILL_RUN, 26
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_HYPER_DRILL, 36
    learnset MOVE_AIR_SLASH, 40
    learnset MOVE_DRAGON_RUSH, 44
    learnset MOVE_DOUBLE_EDGE, 47
    terminatelearnset


levelup SPECIES_GLIGAR
    learnset MOVE_POISON_STING, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_FEINT_ATTACK, 8
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_WING_ATTACK, 18
    learnset MOVE_SLASH, 23
    learnset MOVE_ROCK_SLIDE, 27
    learnset MOVE_X_SCISSOR, 32
    learnset MOVE_SKY_UPPERCUT, 36
    learnset MOVE_CRUNCH, 39
    learnset MOVE_HIGH_HORSEPOWER, 42
    learnset MOVE_ACROBATICS, 46
    terminatelearnset


levelup SPECIES_STEELIX
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_MAGNITUDE, 1
    learnset MOVE_BIND, 1
    learnset MOVE_ROCK_THROW, 7
    learnset MOVE_ROCK_TOMB, 11
    learnset MOVE_SMACK_DOWN, 15
    learnset MOVE_DIG, 18
    learnset MOVE_GYRO_BALL, 22
    learnset MOVE_ROCK_SLIDE, 26
    learnset MOVE_BULLDOZE, 30
    learnset MOVE_BODY_PRESS, 32
    learnset MOVE_DRILL_RUN, 36
    learnset MOVE_BODY_SLAM, 39
    learnset MOVE_CRUNCH, 42
    learnset MOVE_STONE_EDGE, 48
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_EARTHQUAKE, 56
    learnset MOVE_HEAVY_SLAM, 60
    terminatelearnset


levelup SPECIES_SNUBBULL
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 1
    learnset MOVE_BITE, 6
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_ICE_FANG, 18
    learnset MOVE_FIRE_FANG, 18
    learnset MOVE_THUNDER_FANG, 18
    learnset MOVE_BODY_SLAM, 23
    learnset MOVE_CRUNCH, 27
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_STOMPING_TANTRUM, 34
    learnset MOVE_PLAY_ROUGH, 37
    learnset MOVE_SUPERPOWER, 40
    learnset MOVE_DOUBLE_EDGE, 45
    terminatelearnset


levelup SPECIES_GRANBULL
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 1
    learnset MOVE_BITE, 6
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_ICE_FANG, 18
    learnset MOVE_FIRE_FANG, 18
    learnset MOVE_THUNDER_FANG, 18
    learnset MOVE_BODY_SLAM, 23
    learnset MOVE_CRUNCH, 27
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_STOMPING_TANTRUM, 34
    learnset MOVE_PLAY_ROUGH, 37
    learnset MOVE_SUPERPOWER, 40
    learnset MOVE_DOUBLE_EDGE, 45
    terminatelearnset


levelup SPECIES_QWILFISH
    learnset MOVE_SPIKES, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_PIN_MISSILE, 1
    learnset MOVE_WATER_PULSE, 10
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_SLUDGE_BOMB, 23
    learnset MOVE_AQUA_JET, 27
    learnset MOVE_SELF_DESTRUCT, 30
    learnset MOVE_WATERFALL, 33
    learnset MOVE_POISON_JAB, 36
    learnset MOVE_TOXIC, 40
    learnset MOVE_LIQUIDATION, 44
    learnset MOVE_GUNK_SHOT, 48
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_SCIZOR
    learnset MOVE_U_TURN, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_VACUUM_WAVE, 5
    learnset MOVE_PURSUIT, 9
    learnset MOVE_FALSE_SWIPE, 10
    learnset MOVE_WING_ATTACK, 15
    learnset MOVE_SLASH, 20
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_NIGHT_SLASH, 32
    learnset MOVE_X_SCISSOR, 38
    learnset MOVE_REVERSAL, 43
    learnset MOVE_BULLET_PUNCH, 48
    learnset MOVE_IRON_HEAD, 54
    learnset MOVE_SUPERPOWER, 60
    terminatelearnset


levelup SPECIES_SHUCKLE
    learnset MOVE_WRAP, 1
    learnset MOVE_ROLLOUT, 5
    learnset MOVE_ROCK_THROW, 9
    learnset MOVE_BUG_BITE, 14
    learnset MOVE_BULLDOZE, 20
    learnset MOVE_TOXIC, 25
    learnset MOVE_ENCORE, 35
    learnset MOVE_STONE_EDGE, 45
    learnset MOVE_REVERSAL, 50
    terminatelearnset


levelup SPECIES_HERACROSS
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ARM_THRUST, 1
    learnset MOVE_FURY_CUTTER, 6
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_FACADE, 17
    learnset MOVE_ROCK_SLIDE, 22
    learnset MOVE_PIN_MISSILE, 28
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_THROAT_CHOP, 37
    learnset MOVE_X_SCISSOR, 41
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_CLOSE_COMBAT, 64
    learnset MOVE_MEGAHORN, 72
    terminatelearnset


levelup SPECIES_SNEASEL
    learnset MOVE_SCRATCH, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_ICE_SHARD, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_FEINT_ATTACK, 14
    learnset MOVE_METAL_CLAW, 19
    learnset MOVE_BODY_SLAM, 23
    learnset MOVE_BRICK_BREAK, 25
    learnset MOVE_NIGHT_SLASH, 29
    learnset MOVE_FAKE_OUT, 31
    learnset MOVE_ICE_PUNCH, 34
    learnset MOVE_FOUL_PLAY, 38
    learnset MOVE_X_SCISSOR, 41
    learnset MOVE_ICICLE_CRASH, 45
    terminatelearnset


levelup SPECIES_TEDDIURSA
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LICK, 1
    learnset MOVE_FURY_SWIPES, 7
    learnset MOVE_FEINT_ATTACK, 11
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_SLASH, 21
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_SHADOW_CLAW, 34
    learnset MOVE_FACADE, 38
    learnset MOVE_PLAY_ROUGH, 41
    learnset MOVE_CRUNCH, 43
    learnset MOVE_EARTHQUAKE, 46
    terminatelearnset


levelup SPECIES_URSARING
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LICK, 1
    learnset MOVE_FURY_SWIPES, 7
    learnset MOVE_FEINT_ATTACK, 11
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_SLASH, 21
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_SHADOW_CLAW, 34
    learnset MOVE_PLAY_ROUGH, 41
    learnset MOVE_CRUNCH, 44
    learnset MOVE_HAMMER_ARM, 47
    learnset MOVE_FACADE, 50
    learnset MOVE_HIGH_HORSEPOWER, 53
    terminatelearnset


levelup SPECIES_SLUGMA
    learnset MOVE_YAWN, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_ROCK_TOMB, 5
    learnset MOVE_INCINERATE, 9
    learnset MOVE_WILL_O_WISP, 13
    learnset MOVE_RECOVER, 16
    learnset MOVE_FLAME_BURST, 22
    learnset MOVE_ANCIENT_POWER, 30
    learnset MOVE_LAVA_PLUME, 35
    learnset MOVE_EARTH_POWER, 41
    learnset MOVE_HEAT_WAVE, 43
    terminatelearnset


levelup SPECIES_MAGCARGO
    learnset MOVE_YAWN, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_ROCK_TOMB, 5
    learnset MOVE_INCINERATE, 9
    learnset MOVE_WILL_O_WISP, 13
    learnset MOVE_ROCK_SLIDE, 17
    learnset MOVE_FLAME_BURST, 23
    learnset MOVE_ANCIENT_POWER, 32
    learnset MOVE_LAVA_PLUME, 39
    learnset MOVE_EARTH_POWER, 43
    learnset MOVE_OVERHEAT, 49
    learnset MOVE_EXPLOSION, 55
    terminatelearnset


levelup SPECIES_SWINUB
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_POWDER_SNOW, 6
    learnset MOVE_MUD_BOMB, 10
    learnset MOVE_ICE_SHARD, 14
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_BITE, 22
    learnset MOVE_AVALANCHE, 25
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_DOUBLE_EDGE, 37
    learnset MOVE_ROCK_SLIDE, 41
    learnset MOVE_ICICLE_CRASH, 44
    learnset MOVE_EARTHQUAKE, 48
    terminatelearnset


levelup SPECIES_PILOSWINE
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_POWDER_SNOW, 6
    learnset MOVE_MUD_BOMB, 10
    learnset MOVE_ICE_SHARD, 14
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_BITE, 22
    learnset MOVE_AVALANCHE, 25
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_STOMPING_TANTRUM, 33
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_ROCK_SLIDE, 46
    learnset MOVE_ANCIENT_POWER, 50
    learnset MOVE_ICICLE_CRASH, 53
    learnset MOVE_EARTHQUAKE, 57
    terminatelearnset


levelup SPECIES_CORSOLA
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_METEOR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_ROCK_TOMB, 10
    learnset MOVE_AURORA_BEAM, 14
    learnset MOVE_SPIKE_CANNON, 20
    learnset MOVE_RECOVER, 23
    learnset MOVE_BUBBLE_BEAM, 25
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_POWER_GEM, 30
    learnset MOVE_SCALD, 33
    learnset MOVE_ICE_BEAM, 36
    learnset MOVE_ANCIENT_POWER, 39
    learnset MOVE_EARTH_POWER, 42
    learnset MOVE_MUDDY_WATER, 45
    terminatelearnset


levelup SPECIES_REMORAID
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_AURORA_BEAM, 7
    learnset MOVE_PSYBEAM, 11
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_SIGNAL_BEAM, 23
    learnset MOVE_FLAMETHROWER, 26
    learnset MOVE_ICE_BEAM, 30
    learnset MOVE_OCTAZOOKA, 35
    terminatelearnset


levelup SPECIES_OCTILLERY
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_HYDRO_CANNON, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_AURORA_BEAM, 7
    learnset MOVE_PSYBEAM, 13
    learnset MOVE_WATER_PULSE, 18
    learnset MOVE_BUBBLE_BEAM, 22
    learnset MOVE_SIGNAL_BEAM, 25
    learnset MOVE_SLUDGE_BOMB, 28
    learnset MOVE_FLASH_CANNON, 32
    learnset MOVE_ENERGY_BALL, 35
    learnset MOVE_FLAMETHROWER, 39
    learnset MOVE_ICE_BEAM, 42
    learnset MOVE_OCTAZOOKA, 47
    learnset MOVE_WATER_SPOUT, 60
    terminatelearnset


levelup SPECIES_DELIBIRD
    learnset MOVE_PRESENT, 1
    learnset MOVE_ICE_SHARD, 1
    learnset MOVE_PECK, 3
    learnset MOVE_WATER_PULSE, 8
    learnset MOVE_WING_ATTACK, 12
    learnset MOVE_AURORA_BEAM, 16
    learnset MOVE_QUICK_ATTACK, 19
    learnset MOVE_DRILL_PECK, 23
    learnset MOVE_ICE_BEAM, 26
    learnset MOVE_AIR_SLASH, 29
    learnset MOVE_DRILL_RUN, 32
    learnset MOVE_AURORA_VEIL, 40
    terminatelearnset


levelup SPECIES_MANTINE
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_WING_ATTACK, 10
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_HEADBUTT, 23
    learnset MOVE_EARTHQUAKE, 29
    learnset MOVE_AIR_SLASH, 33
    learnset MOVE_ICE_BEAM, 36
    learnset MOVE_SURF, 39
    learnset MOVE_HYDRO_PUMP, 46
    terminatelearnset


levelup SPECIES_SKARMORY
    learnset MOVE_BODY_PRESS, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_PECK, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_METAL_CLAW, 10
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_WING_ATTACK, 19
    learnset MOVE_STEEL_WING, 24
    learnset MOVE_SLASH, 27
    learnset MOVE_DRILL_PECK, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_DRILL_RUN, 38
    learnset MOVE_IRON_HEAD, 40
    learnset MOVE_X_SCISSOR, 44
    learnset MOVE_BRAVE_BIRD, 50
    terminatelearnset


levelup SPECIES_HOUNDOUR
    learnset MOVE_EMBER, 1
    learnset MOVE_PURSUIT, 1
    learnset MOVE_BITE, 8
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_FIRE_FANG, 15
    learnset MOVE_PAYBACK, 20
    learnset MOVE_FLAME_BURST, 24
    learnset MOVE_FEINT_ATTACK, 27
    learnset MOVE_CRUNCH, 30
    learnset MOVE_LAVA_PLUME, 35
    learnset MOVE_DARK_PULSE, 38
    learnset MOVE_SLUDGE_BOMB, 41
    learnset MOVE_PSYCHIC_FANGS, 44
    learnset MOVE_FLAMETHROWER, 48
    terminatelearnset


levelup SPECIES_HOUNDOOM
    learnset MOVE_OVERHEAT, 1
    learnset MOVE_SOLAR_BEAM, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_PURSUIT, 1
    learnset MOVE_BITE, 8
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_FIRE_FANG, 15
    learnset MOVE_PAYBACK, 20
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_FLAME_BURST, 27
    learnset MOVE_FEINT_ATTACK, 30
    learnset MOVE_CRUNCH, 36
    learnset MOVE_LAVA_PLUME, 41
    learnset MOVE_DARK_PULSE, 45
    learnset MOVE_SLUDGE_BOMB, 50
    learnset MOVE_PSYCHIC_FANGS, 55
    learnset MOVE_FLAMETHROWER, 59
    terminatelearnset


levelup SPECIES_KINGDRA
    learnset MOVE_DRACO_METEOR, 1
    learnset MOVE_OCTAZOOKA, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SMOKESCREEN, 11
    learnset MOVE_TWISTER, 20
    learnset MOVE_BUBBLE_BEAM, 24
    learnset MOVE_AURORA_BEAM, 28
    learnset MOVE_DRAGON_BREATH, 35
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_WEATHER_BALL, 46
    learnset MOVE_MUDDY_WATER, 49
    learnset MOVE_DRAGON_PULSE, 53
    learnset MOVE_ICE_BEAM, 57
    learnset MOVE_HYDRO_PUMP, 59
    learnset MOVE_WAVE_CRASH, 63
    terminatelearnset


levelup SPECIES_PHANPY
    learnset MOVE_TACKLE, 1
    learnset MOVE_FLAIL, 5
    learnset MOVE_MUD_SHOT, 9
    learnset MOVE_BULLDOZE, 13
    learnset MOVE_ICE_SHARD, 17
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_STOMPING_TANTRUM, 32
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_PLAY_ROUGH, 38
    learnset MOVE_HIGH_HORSEPOWER, 41
    terminatelearnset


levelup SPECIES_DONPHAN
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_FLAIL, 5
    learnset MOVE_MUD_SHOT, 9
    learnset MOVE_BULLDOZE, 13
    learnset MOVE_ICE_SHARD, 17
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_STOMPING_TANTRUM, 32
    learnset MOVE_BODY_SLAM, 37
    learnset MOVE_PLAY_ROUGH, 41
    learnset MOVE_HIGH_HORSEPOWER, 45
    learnset MOVE_DOUBLE_EDGE, 47
    learnset MOVE_BODY_PRESS, 50
    learnset MOVE_EARTHQUAKE, 55
    learnset MOVE_HEAD_SMASH, 59
    terminatelearnset


levelup SPECIES_PORYGON2
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONVERSION, 1
    learnset MOVE_CONVERSION_2, 1
    learnset MOVE_SWIFT, 8
    learnset MOVE_PSYBEAM, 12
    learnset MOVE_THUNDER_SHOCK, 15
    learnset MOVE_RECYCLE, 20
    learnset MOVE_RECOVER, 24
    learnset MOVE_SIGNAL_BEAM, 28
    learnset MOVE_TELEPORT, 31
    learnset MOVE_THUNDER_WAVE, 35
    learnset MOVE_TRI_ATTACK, 39
    learnset MOVE_DISCHARGE, 44
    learnset MOVE_PSYSHOCK, 48
    learnset MOVE_ZAP_CANNON, 60
    terminatelearnset


levelup SPECIES_STANTLER
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ASTONISH, 6
    learnset MOVE_HYPNOSIS, 10
    learnset MOVE_STOMP, 13
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_SMART_STRIKE, 20
    learnset MOVE_TAKE_DOWN, 23
    learnset MOVE_CONFUSE_RAY, 25
    learnset MOVE_BULLDOZE, 27
    learnset MOVE_ZEN_HEADBUTT, 32
    learnset MOVE_BODY_SLAM, 35
    learnset MOVE_DRILL_RUN, 41
    learnset MOVE_MEGAHORN, 45
    learnset MOVE_JUMP_KICK, 49
    learnset MOVE_DOUBLE_EDGE, 52
    terminatelearnset


levelup SPECIES_SMEARGLE
    learnset MOVE_SKETCH, 1
    learnset MOVE_SKETCH, 11
    learnset MOVE_SKETCH, 21
    learnset MOVE_SKETCH, 31
    learnset MOVE_SKETCH, 41
    learnset MOVE_SKETCH, 51
    learnset MOVE_SKETCH, 61
    learnset MOVE_SKETCH, 71
    learnset MOVE_SKETCH, 81
    learnset MOVE_SKETCH, 91
    terminatelearnset


levelup SPECIES_TYROGUE
    learnset MOVE_TACKLE, 1
    terminatelearnset


levelup SPECIES_HITMONTOP
    learnset MOVE_COUNTER, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_FOCUS_ENERGY, 6
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_PURSUIT, 10
    learnset MOVE_REVENGE, 16
    learnset MOVE_TRIPLE_KICK, 20
    learnset MOVE_ROCK_SLIDE, 22
    learnset MOVE_GYRO_BALL, 25
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_SUCKER_PUNCH, 31
    learnset MOVE_DRILL_RUN, 34
    learnset MOVE_TRIPLE_AXEL, 37
    learnset MOVE_DETECT, 42
    learnset MOVE_ENDEAVOR, 45
    learnset MOVE_EARTHQUAKE, 50
    learnset MOVE_CLOSE_COMBAT, 54
    terminatelearnset


levelup SPECIES_SMOOCHUM
    learnset MOVE_LICK, 1
    learnset MOVE_POUND, 1
    learnset MOVE_POWDER_SNOW, 7
    learnset MOVE_FAKE_OUT, 11
    learnset MOVE_CONFUSION, 13
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_SING, 18
    learnset MOVE_HEART_STAMP, 21
    learnset MOVE_AURORA_BEAM, 25
    learnset MOVE_PSYCHIC, 30
    learnset MOVE_WISH, 35
    learnset MOVE_ICE_BEAM, 39
    learnset MOVE_SHADOW_BALL, 42
    terminatelearnset


levelup SPECIES_ELEKID
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_THUNDER_SHOCK, 7
    learnset MOVE_SWIFT, 11
    learnset MOVE_SHOCK_WAVE, 15
    learnset MOVE_THUNDER_WAVE, 19
    learnset MOVE_LOW_KICK, 22
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_THUNDER_PUNCH, 30
    learnset MOVE_FIRE_PUNCH, 35
    learnset MOVE_THUNDER_WAVE, 37
    learnset MOVE_THUNDERBOLT, 41
    learnset MOVE_CROSS_CHOP, 46
    terminatelearnset


levelup SPECIES_MAGBY
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_SMOKESCREEN, 8
    learnset MOVE_FEINT_ATTACK, 12
    learnset MOVE_CLEAR_SMOG, 15
    learnset MOVE_FIRE_SPIN, 15
    learnset MOVE_FLAME_WHEEL, 16
    learnset MOVE_CONFUSE_RAY, 22
    learnset MOVE_FLAME_BURST, 25
    learnset MOVE_FIRE_PUNCH, 30
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_LAVA_PLUME, 37
    learnset MOVE_POISON_JAB, 40
    learnset MOVE_FLAMETHROWER, 43
    learnset MOVE_CROSS_CHOP, 47
    terminatelearnset


levelup SPECIES_MILTANK
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROLLOUT, 6
    learnset MOVE_STOMP, 10
    learnset MOVE_MILK_DRINK, 16
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_ZEN_HEADBUTT, 25
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_BODY_PRESS, 38
    learnset MOVE_HAMMER_ARM, 42
    learnset MOVE_PLAY_ROUGH, 46
    learnset MOVE_MILK_DRINK, 50
    learnset MOVE_HIGH_HORSEPOWER, 53
    learnset MOVE_DOUBLE_EDGE, 58
    terminatelearnset


levelup SPECIES_BLISSEY
    learnset MOVE_SWEET_KISS, 1
    learnset MOVE_COVET, 1
    learnset MOVE_DISARMING_VOICE, 8
    learnset MOVE_REFRESH, 10
    learnset MOVE_LIFE_DEW, 12
    learnset MOVE_DOUBLE_SLAP, 14
    learnset MOVE_SING, 17
    learnset MOVE_SEISMIC_TOSS, 20
    learnset MOVE_THUNDER_WAVE, 24
    learnset MOVE_SOFT_BOILED, 28
    learnset MOVE_HELPING_HAND, 32
    learnset MOVE_LIGHT_SCREEN, 35
    learnset MOVE_REFLECT, 35
    learnset MOVE_HEAL_PULSE, 38
    learnset MOVE_EGG_BOMB, 42
    learnset MOVE_GRASS_KNOT, 45
    learnset MOVE_WHIRLWIND, 50
    learnset MOVE_HYPER_VOICE, 55
    terminatelearnset


levelup SPECIES_RAIKOU
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_SPARK, 8
    learnset MOVE_BITE, 15
    learnset MOVE_THUNDER_FANG, 22
    learnset MOVE_VOLT_SWITCH, 30
    learnset MOVE_EXTREME_SPEED, 37
    learnset MOVE_CRUNCH, 44
    learnset MOVE_THUNDERBOLT, 50
    learnset MOVE_EXTRASENSORY, 57
    learnset MOVE_SHADOW_BALL, 64
    learnset MOVE_AURA_SPHERE, 70
    learnset MOVE_THUNDER, 78
    terminatelearnset


levelup SPECIES_ENTEI
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_FLAME_WHEEL, 8
    learnset MOVE_BITE, 15
    learnset MOVE_DIG, 22
    learnset MOVE_FIRE_FANG, 30
    learnset MOVE_EXTREME_SPEED, 37
    learnset MOVE_CRUNCH, 44
    learnset MOVE_FLAMETHROWER, 50
    learnset MOVE_BODY_SLAM, 57
    learnset MOVE_STONE_EDGE, 64
    learnset MOVE_STOMPING_TANTRUM, 70
    learnset MOVE_SACRED_FIRE, 78
    terminatelearnset


levelup SPECIES_SUICUNE
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BUBBLE_BEAM, 8
    learnset MOVE_BITE, 15
    learnset MOVE_ICE_FANG, 22
    learnset MOVE_SCALD, 30
    learnset MOVE_EXTREME_SPEED, 37
    learnset MOVE_CRUNCH, 44
    learnset MOVE_MUDDY_WATER, 50
    learnset MOVE_EXTRASENSORY, 57
    learnset MOVE_ICE_BEAM, 64
    learnset MOVE_SHADOW_BALL, 70
    learnset MOVE_HYDRO_PUMP, 78
    terminatelearnset


levelup SPECIES_LARVITAR
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 3
    learnset MOVE_ROCK_THROW, 6
    learnset MOVE_BITE, 9
    learnset MOVE_CHIP_AWAY, 15
    learnset MOVE_BRICK_BREAK, 19
    learnset MOVE_ROCK_SLIDE, 24
    learnset MOVE_STOMPING_TANTRUM, 28
    learnset MOVE_BODY_SLAM, 33
    learnset MOVE_CRUNCH, 35
    learnset MOVE_EARTHQUAKE, 40
    learnset MOVE_STONE_EDGE, 43
    terminatelearnset


levelup SPECIES_PUPITAR
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 3
    learnset MOVE_ROCK_THROW, 6
    learnset MOVE_BITE, 14
    learnset MOVE_CHIP_AWAY, 21
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_STOMPING_TANTRUM, 43
    learnset MOVE_BODY_SLAM, 52
    learnset MOVE_CRUNCH, 59
    learnset MOVE_EARTHQUAKE, 64
    learnset MOVE_STONE_EDGE, 68
    terminatelearnset


levelup SPECIES_TYRANITAR
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_BODY_PRESS, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 3
    learnset MOVE_ROCK_THROW, 6
    learnset MOVE_BITE, 14
    learnset MOVE_CHIP_AWAY, 21
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_STOMPING_TANTRUM, 43
    learnset MOVE_BODY_SLAM, 59
    learnset MOVE_CRUNCH, 64
    learnset MOVE_EARTHQUAKE, 69
    learnset MOVE_FOUL_PLAY, 73
    learnset MOVE_STONE_EDGE, 78
    terminatelearnset


levelup SPECIES_LUGIA
    learnset MOVE_DRAGON_RUSH, 1
    learnset MOVE_GUST, 9
    learnset MOVE_DRAGON_RUSH, 15
    learnset MOVE_EXTRASENSORY, 29
    learnset MOVE_AIR_SLASH, 37
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_AEROBLAST, 48
    learnset MOVE_HYDRO_PUMP, 55
    learnset MOVE_RECOVER, 65
    learnset MOVE_WEATHER_BALL, 70
    learnset MOVE_ANCIENT_POWER, 76
    learnset MOVE_BRAVE_BIRD, 85
    learnset MOVE_SKY_ATTACK, 94
    terminatelearnset


levelup SPECIES_HO_OH
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_GUST, 9
    learnset MOVE_WING_ATTACK, 15
    learnset MOVE_EXTRASENSORY, 29
    learnset MOVE_AIR_SLASH, 37
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_GIGA_DRAIN, 48
    learnset MOVE_SACRED_FIRE, 55
    learnset MOVE_RECOVER, 65
    learnset MOVE_WEATHER_BALL, 70
    learnset MOVE_ANCIENT_POWER, 76
    learnset MOVE_BRAVE_BIRD, 85
    learnset MOVE_OVERHEAT, 94
    terminatelearnset


levelup SPECIES_CELEBI
    learnset MOVE_CONFUSION, 1
    learnset MOVE_LEECH_SEED, 1
    learnset MOVE_RECOVER, 1
    learnset MOVE_MAGICAL_LEAF, 14
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_ANCIENT_POWER, 27
    learnset MOVE_AURA_SPHERE, 32
    learnset MOVE_EARTH_POWER, 38
    learnset MOVE_WEATHER_BALL, 44
    learnset MOVE_GIGA_DRAIN, 52
    learnset MOVE_ANCIENT_POWER, 60
    learnset MOVE_RECOVER, 66
    learnset MOVE_PSYCHIC, 77
    learnset MOVE_LEAF_STORM, 86
    terminatelearnset


levelup SPECIES_TREECKO
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_LEAFAGE, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_PURSUIT, 14
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_ASSURANCE, 19
    learnset MOVE_AERIAL_ACE, 23
    learnset MOVE_MAGICAL_LEAF, 26
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_GIGA_DRAIN, 33
    learnset MOVE_THUNDER_PUNCH, 37
    learnset MOVE_LEAF_BLADE, 40
    terminatelearnset


levelup SPECIES_GROVYLE
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_LEAFAGE, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_PURSUIT, 14
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_ASSURANCE, 19
    learnset MOVE_AERIAL_ACE, 25
    learnset MOVE_MAGICAL_LEAF, 29
    learnset MOVE_BRICK_BREAK, 32
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_CRUNCH, 37
    learnset MOVE_THUNDER_PUNCH, 39
    learnset MOVE_DRAGON_CLAW, 44
    learnset MOVE_LEAF_BLADE, 49
    terminatelearnset


levelup SPECIES_SCEPTILE
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_ROCK_SLIDE, 1
    learnset MOVE_DRAGON_PULSE, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_LEAFAGE, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_PURSUIT, 14
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_ASSURANCE, 19
    learnset MOVE_AERIAL_ACE, 25
    learnset MOVE_MAGICAL_LEAF, 29
    learnset MOVE_BRICK_BREAK, 32
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_CRUSH_CLAW, 36
    learnset MOVE_THUNDER_PUNCH, 39
    learnset MOVE_LEAF_BLADE, 41
    learnset MOVE_CRUNCH, 43
    learnset MOVE_X_SCISSOR, 47
    learnset MOVE_DRAGON_CLAW, 53
    learnset MOVE_ENERGY_BALL, 59
    terminatelearnset


levelup SPECIES_TORCHIC
    learnset MOVE_SCRATCH, 1
    learnset MOVE_EMBER, 3
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_SAND_ATTACK, 10
    learnset MOVE_PECK, 13
    learnset MOVE_FIRE_SPIN, 16
    learnset MOVE_BOUNCE, 19
    learnset MOVE_SLASH, 23
    learnset MOVE_FLAME_BURST, 25
    learnset MOVE_AERIAL_ACE, 28
    learnset MOVE_ROCK_SLIDE, 31
    learnset MOVE_CRUSH_CLAW, 34
    learnset MOVE_FLAMETHROWER, 38
    terminatelearnset


levelup SPECIES_COMBUSKEN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_EMBER, 3
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_SAND_ATTACK, 10
    learnset MOVE_PECK, 13
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_BOUNCE, 19
    learnset MOVE_SLASH, 23
    learnset MOVE_FLAME_BURST, 25
    learnset MOVE_SHADOW_CLAW, 28
    learnset MOVE_AERIAL_ACE, 31
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_CRUSH_CLAW, 39
    learnset MOVE_FLAMETHROWER, 43
    learnset MOVE_SKY_UPPERCUT, 46
    terminatelearnset


levelup SPECIES_BLAZIKEN
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_FLARE_BLITZ, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_EMBER, 3
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_SAND_ATTACK, 10
    learnset MOVE_PECK, 13
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_BOUNCE, 19
    learnset MOVE_SLASH, 23
    learnset MOVE_FLAME_BURST, 25
    learnset MOVE_SHADOW_CLAW, 28
    learnset MOVE_AERIAL_ACE, 31
    learnset MOVE_BLAZE_KICK, 36
    learnset MOVE_STOMPING_TANTRUM, 44
    learnset MOVE_CRUSH_CLAW, 51
    learnset MOVE_SKY_UPPERCUT, 58
    terminatelearnset


levelup SPECIES_MUDKIP
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 3
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_MUD_SLAP, 9
    learnset MOVE_SUPERSONIC, 12
    learnset MOVE_WATER_PULSE, 15
    learnset MOVE_MUD_SHOT, 19
    learnset MOVE_ROCK_SLIDE, 23
    learnset MOVE_BODY_SLAM, 26
    learnset MOVE_SURF, 31
    learnset MOVE_DOUBLE_EDGE, 33
    learnset MOVE_EARTH_POWER, 36
    learnset MOVE_ENDEAVOR, 38
    learnset MOVE_HYDRO_PUMP, 42
    terminatelearnset


levelup SPECIES_MARSHTOMP
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 3
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_MUD_SLAP, 9
    learnset MOVE_SUPERSONIC, 12
    learnset MOVE_MUD_SHOT, 16
    learnset MOVE_ROCK_SLIDE, 23
    learnset MOVE_BODY_SLAM, 26
    learnset MOVE_SURF, 31
    learnset MOVE_DOUBLE_EDGE, 33
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_ICE_PUNCH, 38
    learnset MOVE_MUDDY_WATER, 41
    learnset MOVE_EARTHQUAKE, 45
    learnset MOVE_ENDEAVOR, 48
    terminatelearnset


levelup SPECIES_SWAMPERT
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_SLUDGE_WAVE, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 3
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_MUD_SLAP, 9
    learnset MOVE_SUPERSONIC, 12
    learnset MOVE_MUD_SHOT, 16
    learnset MOVE_ROCK_SLIDE, 23
    learnset MOVE_BODY_SLAM, 26
    learnset MOVE_SURF, 31
    learnset MOVE_DOUBLE_EDGE, 33
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_AVALANCHE, 43
    learnset MOVE_HAMMER_ARM, 47
    learnset MOVE_MUDDY_WATER, 53
    learnset MOVE_EARTHQUAKE, 58
    terminatelearnset


levelup SPECIES_POOCHYENA
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BITE, 7
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_FIRE_FANG, 16
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_DIG, 24
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_BODY_SLAM, 31
    learnset MOVE_CRUNCH, 34
    learnset MOVE_PLAY_ROUGH, 37
    learnset MOVE_POISON_FANG, 40
    learnset MOVE_PSYCHIC_FANGS, 42
    terminatelearnset


levelup SPECIES_MIGHTYENA
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BITE, 7
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_FIRE_FANG, 18
    learnset MOVE_ASSURANCE, 22
    learnset MOVE_DIG, 26
    learnset MOVE_SUCKER_PUNCH, 29
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_CRUNCH, 36
    learnset MOVE_PLAY_ROUGH, 40
    learnset MOVE_POISON_FANG, 43
    learnset MOVE_PSYCHIC_FANGS, 47
    terminatelearnset


levelup SPECIES_ZIGZAGOON
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_HEADBUTT, 9
    learnset MOVE_PIN_MISSILE, 12
    learnset MOVE_FACADE, 16
    learnset MOVE_DIG, 20
    learnset MOVE_BODY_SLAM, 24
    learnset MOVE_SHADOW_BALL, 29
    learnset MOVE_THUNDER_WAVE, 31
    learnset MOVE_DOUBLE_EDGE, 34
    learnset MOVE_EXTREME_SPEED, 37
    terminatelearnset


levelup SPECIES_LINOONE
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_HEADBUTT, 9
    learnset MOVE_PIN_MISSILE, 12
    learnset MOVE_FACADE, 20
    learnset MOVE_DIG, 25
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_SHADOW_BALL, 32
    learnset MOVE_THROAT_CHOP, 34
    learnset MOVE_PLAY_ROUGH, 37
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_EXTREME_SPEED, 44
    terminatelearnset


levelup SPECIES_WURMPLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_POISON_STING, 5
    learnset MOVE_BUG_BITE, 15
    terminatelearnset


levelup SPECIES_SILCOON
    learnset MOVE_POISON_STING, 1
    learnset MOVE_HARDEN, 5
    terminatelearnset


levelup SPECIES_BEAUTIFLY
    learnset MOVE_GUST, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_AERIAL_ACE, 10
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_MORNING_SUN, 17
    learnset MOVE_AIR_CUTTER, 19
    learnset MOVE_LEECH_LIFE, 20
    learnset MOVE_SLEEP_POWDER, 23
    learnset MOVE_BUG_BUZZ, 27
    learnset MOVE_PSYCHIC, 29
    learnset MOVE_GIGA_DRAIN, 31
    learnset MOVE_AIR_SLASH, 32
    learnset MOVE_SILVER_WIND, 35
    terminatelearnset


levelup SPECIES_CASCOON
    learnset MOVE_POISON_STING, 1
    learnset MOVE_HARDEN, 5
    terminatelearnset


levelup SPECIES_DUSTOX
    learnset MOVE_GUST, 1
    learnset MOVE_BUG_BITE, 10
    learnset MOVE_CONFUSION, 12
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_MOONLIGHT, 17
    learnset MOVE_SLUDGE, 20
    learnset MOVE_TOXIC, 21
    learnset MOVE_PSYBEAM, 22
    learnset MOVE_SILVER_WIND, 24
    learnset MOVE_LIGHT_SCREEN, 27
    learnset MOVE_REFLECT, 27
    learnset MOVE_SILVER_WIND, 28
    learnset MOVE_SLUDGE_BOMB, 29
    learnset MOVE_PSYCHIC, 30
    learnset MOVE_SHADOW_BALL, 30
    terminatelearnset


levelup SPECIES_LOTAD
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ABSORB, 4
    learnset MOVE_WATER_GUN, 6
    learnset MOVE_MEGA_DRAIN, 14
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_MAGICAL_LEAF, 23
    learnset MOVE_SCALD, 27
    learnset MOVE_ZEN_HEADBUTT, 29
    learnset MOVE_GIGA_DRAIN, 34
    terminatelearnset


levelup SPECIES_LOMBRE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ABSORB, 4
    learnset MOVE_WATER_GUN, 6
    learnset MOVE_MEGA_DRAIN, 14
    learnset MOVE_FAKE_OUT, 15
    learnset MOVE_TEETER_DANCE, 18
    learnset MOVE_BUBBLE_BEAM, 22
    learnset MOVE_MAGICAL_LEAF, 25
    learnset MOVE_SCALD, 30
    learnset MOVE_ICE_PUNCH, 32
    learnset MOVE_ZEN_HEADBUTT, 35
    learnset MOVE_GIGA_DRAIN, 40
    terminatelearnset


levelup SPECIES_LUDICOLO
    learnset MOVE_TEETER_DANCE, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_SCALD, 44
    learnset MOVE_ICE_BEAM, 49
    learnset MOVE_ENERGY_BALL, 52
    learnset MOVE_HYDRO_PUMP, 55
    terminatelearnset


levelup SPECIES_SEEDOT
    learnset MOVE_TACKLE, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_ABSORB, 3
    learnset MOVE_ASTONISH, 6
    learnset MOVE_ROLLOUT, 11
    learnset MOVE_MEGA_DRAIN, 14
    learnset MOVE_PAYBACK, 18
    learnset MOVE_SYNTHESIS, 21
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_EXPLOSION, 32
    terminatelearnset


levelup SPECIES_NUZLEAF
    learnset MOVE_TACKLE, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_ABSORB, 3
    learnset MOVE_ASTONISH, 6
    learnset MOVE_ROLLOUT, 11
    learnset MOVE_MEGA_DRAIN, 14
    learnset MOVE_FAKE_OUT, 14
    learnset MOVE_PAYBACK, 18
    learnset MOVE_SYNTHESIS, 21
    learnset MOVE_KNOCK_OFF, 24
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_EXPLOSION, 32
    learnset MOVE_SUCKER_PUNCH, 35
    learnset MOVE_BRICK_BREAK, 37
    learnset MOVE_NIGHT_SLASH, 41
    learnset MOVE_LEAF_BLADE, 46
    terminatelearnset


levelup SPECIES_SHIFTRY
    learnset MOVE_SOLAR_BLADE, 1
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_X_SCISSOR, 1
    learnset MOVE_AIR_CUTTER, 1
    learnset MOVE_TORMENT, 1
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_SUCKER_PUNCH, 41
    learnset MOVE_BRICK_BREAK, 44
    learnset MOVE_NIGHT_SLASH, 48
    learnset MOVE_LEAF_BLADE, 51
    terminatelearnset


levelup SPECIES_TAILLOW
    learnset MOVE_PECK, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_SWIFT, 7
    learnset MOVE_WING_ATTACK, 11
    learnset MOVE_STEEL_WING, 17
    learnset MOVE_AERIAL_ACE, 22
    learnset MOVE_AIR_SLASH, 28
    learnset MOVE_ENDEAVOR, 33
    learnset MOVE_FACADE, 36
    learnset MOVE_BRAVE_BIRD, 45
    terminatelearnset


levelup SPECIES_SWELLOW
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_BOOMBURST, 1
    learnset MOVE_DOUBLE_EDGE, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_PECK, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_SWIFT, 9
    learnset MOVE_WING_ATTACK, 15
    learnset MOVE_STEEL_WING, 24
    learnset MOVE_AERIAL_ACE, 31
    learnset MOVE_AIR_SLASH, 39
    learnset MOVE_ENDEAVOR, 48
    learnset MOVE_FACADE, 57
    learnset MOVE_BRAVE_BIRD, 59
    terminatelearnset


levelup SPECIES_WINGULL
    learnset MOVE_PECK, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_WING_ATTACK, 12
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_AIR_CUTTER, 22
    learnset MOVE_PURSUIT, 25
    learnset MOVE_SCALD, 29
    learnset MOVE_AIR_SLASH, 33
    learnset MOVE_ROOST, 36
    learnset MOVE_ICE_BEAM, 38
    learnset MOVE_HYDRO_PUMP, 42
    terminatelearnset


levelup SPECIES_PELIPPER
    learnset MOVE_U_TURN, 1
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_PECK, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_SUPERSONIC, 7
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_WING_ATTACK, 17
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_AIR_CUTTER, 26
    learnset MOVE_PURSUIT, 29
    learnset MOVE_SCALD, 32
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_ROOST, 41
    learnset MOVE_ICE_BEAM, 45
    learnset MOVE_HYDRO_PUMP, 49
    learnset MOVE_HURRICANE, 53
    terminatelearnset


levelup SPECIES_RALTS
    learnset MOVE_GROWL, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_CONFUSION, 7
    learnset MOVE_TELEPORT, 10
    learnset MOVE_DRAINING_KISS, 12
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_HYPNOSIS, 23
    learnset MOVE_PSYCHIC, 27
    learnset MOVE_DAZZLING_GLEAM, 31
    learnset MOVE_DREAM_EATER, 35
    terminatelearnset


levelup SPECIES_KIRLIA
    learnset MOVE_GROWL, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_CONFUSION, 9
    learnset MOVE_TELEPORT, 12
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_MAGICAL_LEAF, 19
    learnset MOVE_PSYBEAM, 24
    learnset MOVE_HYPNOSIS, 29
    learnset MOVE_PSYCHIC, 33
    learnset MOVE_DAZZLING_GLEAM, 37
    learnset MOVE_SHADOW_BALL, 41
    terminatelearnset


levelup SPECIES_GARDEVOIR
    learnset MOVE_ENERGY_BALL, 1
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_CONFUSION, 9
    learnset MOVE_TELEPORT, 12
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_MAGICAL_LEAF, 19
    learnset MOVE_PSYBEAM, 24
    learnset MOVE_HYPNOSIS, 29
    learnset MOVE_WILL_O_WISP, 30
    learnset MOVE_PSYSHOCK, 37
    learnset MOVE_DAZZLING_GLEAM, 42
    learnset MOVE_SHADOW_BALL, 47
    learnset MOVE_AURA_SPHERE, 51
    learnset MOVE_PSYCHIC, 56
    learnset MOVE_MOONBLAST, 60
    learnset MOVE_TELEPORT, 60
    terminatelearnset


levelup SPECIES_SURSKIT
    learnset MOVE_BUBBLE, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_BUG_BITE, 10
    learnset MOVE_BUBBLE_BEAM, 14
    learnset MOVE_MUD_SHOT, 17
    learnset MOVE_AURORA_BEAM, 19
    learnset MOVE_AQUA_JET, 22
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_SIGNAL_BEAM, 29
    learnset MOVE_ICE_BEAM, 31
    learnset MOVE_SCALD, 33
    learnset MOVE_BUG_BUZZ, 36
    terminatelearnset


levelup SPECIES_MASQUERAIN
    learnset MOVE_SILVER_WIND, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_BUG_BITE, 12
    learnset MOVE_BUBBLE_BEAM, 17
    learnset MOVE_MUD_SHOT, 20
    learnset MOVE_AURORA_BEAM, 23
    learnset MOVE_AQUA_JET, 26
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_SIGNAL_BEAM, 34
    learnset MOVE_AIR_SLASH, 37
    learnset MOVE_ICE_BEAM, 39
    learnset MOVE_SCALD, 42
    learnset MOVE_BUG_BUZZ, 44
    terminatelearnset


levelup SPECIES_SHROOMISH
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_STUN_SPORE, 5
    learnset MOVE_MEGA_DRAIN, 10
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_POISON_POWDER, 18
    learnset MOVE_BODY_SLAM, 23
    learnset MOVE_SLUDGE_BOMB, 27
    learnset MOVE_GIGA_DRAIN, 31
    learnset MOVE_SPORE, 33
    terminatelearnset


levelup SPECIES_BRELOOM
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_ZEN_HEADBUTT, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_STUN_SPORE, 5
    learnset MOVE_MEGA_DRAIN, 10
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_POISON_POWDER, 18
    learnset MOVE_MACH_PUNCH, 23
    learnset MOVE_SLUDGE_BOMB, 25
    learnset MOVE_GIGA_DRAIN, 27
    learnset MOVE_THUNDER_PUNCH, 32
    learnset MOVE_BRICK_BREAK, 35
    learnset MOVE_POISON_JAB, 38
    learnset MOVE_ROCK_SLIDE, 41
    learnset MOVE_SKY_UPPERCUT, 44
    learnset MOVE_SEED_BOMB, 48
    terminatelearnset


levelup SPECIES_SLAKOTH
    learnset MOVE_SCRATCH, 1
    learnset MOVE_YAWN, 1
    learnset MOVE_ENCORE, 6
    learnset MOVE_SLACK_OFF, 9
    learnset MOVE_FEINT_ATTACK, 14
    learnset MOVE_CHIP_AWAY, 20
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_BRICK_BREAK, 29
    learnset MOVE_DOUBLE_EDGE, 34
    learnset MOVE_PLAY_ROUGH, 37
    learnset MOVE_HAMMER_ARM, 40
    learnset MOVE_CRUSH_CLAW, 43
    terminatelearnset


levelup SPECIES_VIGOROTH
    learnset MOVE_SCRATCH, 1
    learnset MOVE_YAWN, 1
    learnset MOVE_ENCORE, 6
    learnset MOVE_SLACK_OFF, 9
    learnset MOVE_FEINT_ATTACK, 14
    learnset MOVE_BRICK_BREAK, 18
    learnset MOVE_CHIP_AWAY, 21
    learnset MOVE_BODY_SLAM, 27
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_DOUBLE_EDGE, 36
    learnset MOVE_PLAY_ROUGH, 41
    learnset MOVE_HAMMER_ARM, 47
    learnset MOVE_CRUSH_CLAW, 51
    terminatelearnset


levelup SPECIES_SLAKING
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_YAWN, 1
    learnset MOVE_ENCORE, 6
    learnset MOVE_SLACK_OFF, 9
    learnset MOVE_FEINT_ATTACK, 14
    learnset MOVE_BRICK_BREAK, 18
    learnset MOVE_CHIP_AWAY, 21
    learnset MOVE_BODY_SLAM, 27
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_PLAY_ROUGH, 41
    learnset MOVE_ZEN_HEADBUTT, 47
    learnset MOVE_DOUBLE_EDGE, 54
    learnset MOVE_EARTHQUAKE, 59
    learnset MOVE_SUPERPOWER, 65
    learnset MOVE_CRUSH_CLAW, 71
    terminatelearnset


levelup SPECIES_NINCADA
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_BUG_BITE, 11
    learnset MOVE_ABSORB, 13
    learnset MOVE_FALSE_SWIPE, 16
    learnset MOVE_DIG, 22
    learnset MOVE_METAL_CLAW, 24
    learnset MOVE_GIGA_DRAIN, 27
    learnset MOVE_X_SCISSOR, 31
    terminatelearnset


levelup SPECIES_NINJASK
    learnset MOVE_BATON_PASS, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_BUG_BITE, 11
    learnset MOVE_ABSORB, 13
    learnset MOVE_FALSE_SWIPE, 16
    learnset MOVE_WING_ATTACK, 20
    learnset MOVE_DIG, 25
    learnset MOVE_METAL_CLAW, 26
    learnset MOVE_NIGHT_SLASH, 27
    learnset MOVE_AERIAL_ACE, 29
    learnset MOVE_GIGA_DRAIN, 32
    learnset MOVE_X_SCISSOR, 35
    learnset MOVE_LEECH_LIFE, 39
    learnset MOVE_DUAL_WINGBEAT, 41
    terminatelearnset


levelup SPECIES_SHEDINJA
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_MUD_SLAP, 5
    learnset MOVE_BUG_BITE, 11
    learnset MOVE_SHADOW_SNEAK, 13
    learnset MOVE_FALSE_SWIPE, 16
    learnset MOVE_WING_ATTACK, 20
    learnset MOVE_DIG, 25
    learnset MOVE_METAL_CLAW, 26
    learnset MOVE_NIGHT_SLASH, 27
    learnset MOVE_SHADOW_CLAW, 31
    learnset MOVE_X_SCISSOR, 35
    learnset MOVE_LEECH_LIFE, 39
    learnset MOVE_PHANTOM_FORCE, 45
    terminatelearnset


levelup SPECIES_WHISMUR
    learnset MOVE_ASTONISH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ECHOED_VOICE, 4
    learnset MOVE_HEADBUTT, 10
    learnset MOVE_BITE, 14
    learnset MOVE_STOMP, 18
    learnset MOVE_BRICK_BREAK, 23
    learnset MOVE_ZEN_HEADBUTT, 27
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_SHADOW_BALL, 35
    learnset MOVE_HYPER_VOICE, 39
    learnset MOVE_ROAR, 40
    learnset MOVE_BOOMBURST, 46
    terminatelearnset


levelup SPECIES_LOUDRED
    learnset MOVE_ASTONISH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ECHOED_VOICE, 4
    learnset MOVE_HEADBUTT, 10
    learnset MOVE_BITE, 14
    learnset MOVE_STOMP, 18
    learnset MOVE_BRICK_BREAK, 23
    learnset MOVE_ZEN_HEADBUTT, 27
    learnset MOVE_BODY_SLAM, 33
    learnset MOVE_CRUNCH, 36
    learnset MOVE_SHADOW_BALL, 39
    learnset MOVE_HYPER_VOICE, 43
    learnset MOVE_ROAR, 44
    learnset MOVE_BOOMBURST, 53
    terminatelearnset


levelup SPECIES_EXPLOUD
    learnset MOVE_FIRE_BLAST, 1
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_HYPER_BEAM, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ECHOED_VOICE, 4
    learnset MOVE_HEADBUTT, 10
    learnset MOVE_BITE, 14
    learnset MOVE_STOMP, 18
    learnset MOVE_BRICK_BREAK, 23
    learnset MOVE_ZEN_HEADBUTT, 27
    learnset MOVE_BODY_SLAM, 33
    learnset MOVE_CRUNCH, 38
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_HYPER_VOICE, 46
    learnset MOVE_ROAR, 47
    learnset MOVE_BOOMBURST, 59
    terminatelearnset


levelup SPECIES_MAKUHITA
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ARM_THRUST, 7
    learnset MOVE_FAKE_OUT, 10
    learnset MOVE_FORCE_PALM, 13
    learnset MOVE_KNOCK_OFF, 17
    learnset MOVE_VITAL_THROW, 20
    learnset MOVE_BULLDOZE, 24
    learnset MOVE_SMELLING_SALTS, 26
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_WAKE_UP_SLAP, 34
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_CROSS_CHOP, 39
    learnset MOVE_SHADOW_PUNCH, 41
    learnset MOVE_HEAVY_SLAM, 45
    learnset MOVE_SUPERPOWER, 51
    terminatelearnset


levelup SPECIES_HARIYAMA
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ARM_THRUST, 7
    learnset MOVE_FAKE_OUT, 10
    learnset MOVE_FORCE_PALM, 13
    learnset MOVE_KNOCK_OFF, 17
    learnset MOVE_VITAL_THROW, 20
    learnset MOVE_BULLDOZE, 24
    learnset MOVE_SMELLING_SALTS, 26
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_WAKE_UP_SLAP, 34
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_CROSS_CHOP, 40
    learnset MOVE_SHADOW_PUNCH, 43
    learnset MOVE_STOMPING_TANTRUM, 47
    learnset MOVE_HEAVY_SLAM, 53
    learnset MOVE_SUPERPOWER, 57
    terminatelearnset


levelup SPECIES_AZURILL
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_CHARM, 4
    learnset MOVE_DOUBLE_HIT, 7
    learnset MOVE_HELPING_HAND, 9
    learnset MOVE_BUBBLE_BEAM, 10
    learnset MOVE_BODY_SLAM, 15
    learnset MOVE_BOUNCE, 19
    terminatelearnset


levelup SPECIES_NOSEPASS
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_THUNDER_WAVE, 9
    learnset MOVE_SPARK, 14
    learnset MOVE_SEISMIC_TOSS, 17
    learnset MOVE_ROCK_SLIDE, 22
    learnset MOVE_VOLT_SWITCH, 26
    learnset MOVE_EARTHQUAKE, 30
    learnset MOVE_BODY_PRESS, 33
    learnset MOVE_ANCIENT_POWER, 35
    learnset MOVE_HEAD_SMASH, 41
    learnset MOVE_EXPLOSION, 45
    terminatelearnset


levelup SPECIES_SKITTY
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SING, 6
    learnset MOVE_ATTRACT, 9
    learnset MOVE_DISARMING_VOICE, 11
    learnset MOVE_TAIL_SLAP, 14
    learnset MOVE_HEADBUTT, 17
    learnset MOVE_FEINT_ATTACK, 21
    learnset MOVE_WAKE_UP_SLAP, 25
    learnset MOVE_SHADOW_BALL, 29
    learnset MOVE_ZEN_HEADBUTT, 32
    learnset MOVE_DOUBLE_EDGE, 35
    learnset MOVE_PLAY_ROUGH, 37
    terminatelearnset


levelup SPECIES_DELCATTY
    learnset MOVE_STOMPING_TANTRUM, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_TAIL_SLAP, 15
    learnset MOVE_HEADBUTT, 19
    learnset MOVE_FEINT_ATTACK, 23
    learnset MOVE_WAKE_UP_SLAP, 28
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_ZEN_HEADBUTT, 37
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_PLAY_ROUGH, 43
    terminatelearnset


levelup SPECIES_SABLEYE
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FORESIGHT, 4
    learnset MOVE_ASTONISH, 5
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_NIGHT_SHADE, 14
    learnset MOVE_DISABLE, 15
    learnset MOVE_FAKE_OUT, 17
    learnset MOVE_BRICK_BREAK, 20
    learnset MOVE_FEINT_ATTACK, 22
    learnset MOVE_PUNISHMENT, 24
    learnset MOVE_KNOCK_OFF, 27
    learnset MOVE_SHADOW_CLAW, 30
    learnset MOVE_POWER_GEM, 34
    learnset MOVE_ZEN_HEADBUTT, 36
    learnset MOVE_SHADOW_BALL, 39
    learnset MOVE_FOUL_PLAY, 42
    terminatelearnset


levelup SPECIES_MAWILE
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_PSYCHIC_FANGS, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FAIRY_WIND, 4
    learnset MOVE_BITE, 10
    learnset MOVE_ICE_FANG, 15
    learnset MOVE_SUCKER_PUNCH, 20
    learnset MOVE_FEINT_ATTACK, 23
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_CRUNCH, 31
    learnset MOVE_IRON_HEAD, 33
    learnset MOVE_PLAY_ROUGH, 35
    terminatelearnset


levelup SPECIES_ARON
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_METAL_CLAW, 6
    learnset MOVE_ROCK_TOMB, 10
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_BULLDOZE, 17
    learnset MOVE_DOUBLE_EDGE, 25
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_IRON_HEAD, 34
    learnset MOVE_STOMPING_TANTRUM, 38
    learnset MOVE_HEAD_SMASH, 45
    terminatelearnset


levelup SPECIES_LAIRON
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_METAL_CLAW, 6
    learnset MOVE_ROCK_TOMB, 10
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_BULLDOZE, 24
    learnset MOVE_DOUBLE_EDGE, 29
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_IRON_HEAD, 41
    learnset MOVE_STOMPING_TANTRUM, 48
    learnset MOVE_HEAD_SMASH, 57
    terminatelearnset

levelup SPECIES_AGGRON
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_METAL_BURST, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_METAL_CLAW, 6
    learnset MOVE_ROCK_TOMB, 14
    learnset MOVE_HEADBUTT, 19
    learnset MOVE_BULLDOZE, 29
    learnset MOVE_DOUBLE_EDGE, 36
    learnset MOVE_HEAVY_SLAM, 42
    learnset MOVE_SMART_STRIKE, 45
    learnset MOVE_ROCK_SLIDE, 48
    learnset MOVE_IRON_HEAD, 52
    learnset MOVE_HIGH_HORSEPOWER, 57
    learnset MOVE_SUPERPOWER, 61
    learnset MOVE_HEAD_SMASH, 68
    terminatelearnset


levelup SPECIES_MEDITITE
    learnset MOVE_KARATE_CHOP, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_SEISMIC_TOSS, 9
    learnset MOVE_DETECT, 14
    learnset MOVE_FAKE_OUT, 19
    learnset MOVE_BULLET_PUNCH, 25
    learnset MOVE_PSYCHO_CUT, 29
    learnset MOVE_BRICK_BREAK, 32
    learnset MOVE_ROCK_SLIDE, 40
    learnset MOVE_ZEN_HEADBUTT, 44
    learnset MOVE_HIGH_JUMP_KICK, 46
    learnset MOVE_RECOVER, 49
    learnset MOVE_REVERSAL, 55
    terminatelearnset


levelup SPECIES_MEDICHAM
    learnset MOVE_REVERSAL, 1
    learnset MOVE_AXE_KICK, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_KARATE_CHOP, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_SEISMIC_TOSS, 9
    learnset MOVE_DETECT, 14
    learnset MOVE_FAKE_OUT, 19
    learnset MOVE_BULLET_PUNCH, 25
    learnset MOVE_PSYCHO_CUT, 29
    learnset MOVE_BRICK_BREAK, 37
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_ZEN_HEADBUTT, 46
    learnset MOVE_HIGH_JUMP_KICK, 50
    learnset MOVE_RECOVER, 54
    learnset MOVE_CLOSE_COMBAT, 61
    terminatelearnset


levelup SPECIES_ELECTRIKE
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_THUNDER_SHOCK, 7
    learnset MOVE_QUICK_ATTACK, 11
    learnset MOVE_SPARK, 14
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_BITE, 16
    learnset MOVE_THUNDER_FANG, 22
    learnset MOVE_HEADBUTT, 26
    learnset MOVE_DISCHARGE, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_THUNDER_WAVE, 36
    learnset MOVE_PSYCHIC_FANGS, 39
    learnset MOVE_THUNDERBOLT, 41
    terminatelearnset


levelup SPECIES_MANECTRIC
    learnset MOVE_VOLT_SWITCH, 1
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_THUNDER_SHOCK, 7
    learnset MOVE_QUICK_ATTACK, 11
    learnset MOVE_SPARK, 14
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_BITE, 16
    learnset MOVE_THUNDER_FANG, 23
    learnset MOVE_SNARL, 26
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_DISCHARGE, 35
    learnset MOVE_CRUNCH, 38
    learnset MOVE_THUNDER_WAVE, 41
    learnset MOVE_PSYCHIC_FANGS, 45
    learnset MOVE_THUNDERBOLT, 48
    terminatelearnset


levelup SPECIES_PLUSLE
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_HELPING_HAND, 4
    learnset MOVE_SPARK, 7
    learnset MOVE_ENCORE, 10
    learnset MOVE_SWIFT, 13
    learnset MOVE_THUNDER_WAVE, 19
    learnset MOVE_LIGHT_SCREEN, 24
    learnset MOVE_DISCHARGE, 30
    learnset MOVE_BODY_SLAM, 33
    learnset MOVE_THUNDERBOLT, 38
    learnset MOVE_SIGNAL_BEAM, 41
    learnset MOVE_ENCORE, 43
    terminatelearnset


levelup SPECIES_MINUN
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_HELPING_HAND, 4
    learnset MOVE_SPARK, 7
    learnset MOVE_WISH, 10
    learnset MOVE_SWIFT, 13
    learnset MOVE_THUNDER_WAVE, 19
    learnset MOVE_LIGHT_SCREEN, 24
    learnset MOVE_DISCHARGE, 30
    learnset MOVE_BODY_SLAM, 33
    learnset MOVE_THUNDERBOLT, 38
    learnset MOVE_SIGNAL_BEAM, 41
    learnset MOVE_WISH, 43
    terminatelearnset


levelup SPECIES_VOLBEAT
    learnset MOVE_BRICK_BREAK, 1
    learnset MOVE_FLASH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_CONFUSE_RAY, 11
    learnset MOVE_BUG_BITE, 16
    learnset MOVE_MOONLIGHT, 19
    learnset MOVE_SIGNAL_BEAM, 23
    learnset MOVE_GIGA_DRAIN, 25
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_SEISMIC_TOSS, 30
    learnset MOVE_U_TURN, 32
    learnset MOVE_THUNDER_PUNCH, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_PLAY_ROUGH, 38
    learnset MOVE_DOUBLE_EDGE, 40
    terminatelearnset


levelup SPECIES_ILLUMISE
    learnset MOVE_BRICK_BREAK, 1
    learnset MOVE_FLASH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_CONFUSE_RAY, 11
    learnset MOVE_SEISMIC_TOSS, 13
    learnset MOVE_ENCORE, 16
    learnset MOVE_MOONLIGHT, 19
    learnset MOVE_SIGNAL_BEAM, 23
    learnset MOVE_GIGA_DRAIN, 25
    learnset MOVE_SHADOW_BALL, 28
    learnset MOVE_SEISMIC_TOSS, 30
    learnset MOVE_U_TURN, 32
    learnset MOVE_DAZZLING_GLEAM, 34
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_PLAY_ROUGH, 38
    learnset MOVE_HYPER_VOICE, 40
    terminatelearnset


levelup SPECIES_ROSELIA
    learnset MOVE_ABSORB, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_MEGA_DRAIN, 10
    learnset MOVE_SLEEP_POWDER, 13
    learnset MOVE_SLUDGE, 16
    learnset MOVE_SYNTHESIS, 19
    learnset MOVE_MAGICAL_LEAF, 24
    learnset MOVE_TOXIC, 27
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_EXTRASENSORY, 33
    learnset MOVE_SLUDGE_BOMB, 37
    learnset MOVE_PETAL_DANCE, 41
    learnset MOVE_GIGA_DRAIN, 45
    terminatelearnset


levelup SPECIES_GULPIN
    learnset MOVE_POUND, 1
    learnset MOVE_YAWN, 5
    learnset MOVE_POISON_GAS, 8
    learnset MOVE_SLUDGE, 10
    learnset MOVE_MUD_SHOT, 14
    learnset MOVE_ENCORE, 18
    learnset MOVE_TOXIC, 21
    learnset MOVE_SLUDGE_BOMB, 25
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_SHADOW_BALL, 32
    learnset MOVE_GUNK_SHOT, 37
    terminatelearnset


levelup SPECIES_SWALOT
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_YAWN, 5
    learnset MOVE_POISON_GAS, 8
    learnset MOVE_SLUDGE, 10
    learnset MOVE_MUD_SHOT, 14
    learnset MOVE_ENCORE, 18
    learnset MOVE_TOXIC, 21
    learnset MOVE_SLUDGE_BOMB, 26
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_BRICK_BREAK, 31
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_SHADOW_BALL, 37
    learnset MOVE_EARTHQUAKE, 41
    learnset MOVE_GUNK_SHOT, 46
    terminatelearnset


levelup SPECIES_CARVANHA
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BITE, 5
    learnset MOVE_RAGE, 9
    learnset MOVE_AQUA_JET, 13
    learnset MOVE_WATER_PULSE, 17
    learnset MOVE_BOUNCE, 21
    learnset MOVE_ANCIENT_POWER, 24
    learnset MOVE_ICE_FANG, 27
    learnset MOVE_CRUNCH, 30
    learnset MOVE_SUPER_FANG, 32
    learnset MOVE_PSYCHIC_FANGS, 36
    learnset MOVE_LIQUIDATION, 40
    terminatelearnset


levelup SPECIES_SHARPEDO
    learnset MOVE_FLIP_TURN, 1
    learnset MOVE_DOUBLE_EDGE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BITE, 5
    learnset MOVE_RAGE, 9
    learnset MOVE_AQUA_JET, 13
    learnset MOVE_WATER_PULSE, 17
    learnset MOVE_BOUNCE, 21
    learnset MOVE_ANCIENT_POWER, 24
    learnset MOVE_DIVE, 30
    learnset MOVE_ICE_FANG, 33
    learnset MOVE_CRUNCH, 36
    learnset MOVE_SUPER_FANG, 41
    learnset MOVE_PSYCHIC_FANGS, 47
    learnset MOVE_LIQUIDATION, 51
    terminatelearnset


levelup SPECIES_WAILMER
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_SLAM, 1
    learnset MOVE_ROLLOUT, 9
    learnset MOVE_AURORA_BEAM, 14
    learnset MOVE_WATER_PULSE, 18
    learnset MOVE_BODY_PRESS, 23
    learnset MOVE_HEAVY_SLAM, 31
    learnset MOVE_SURF, 34
    learnset MOVE_BOUNCE, 38
    learnset MOVE_ICE_BEAM, 41
    learnset MOVE_HYPER_VOICE, 45
    learnset MOVE_WATER_SPOUT, 55
    terminatelearnset


levelup SPECIES_WAILORD
    learnset MOVE_HYDRO_PUMP, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_SLAM, 1
    learnset MOVE_ROLLOUT, 9
    learnset MOVE_AURORA_BEAM, 14
    learnset MOVE_WATER_PULSE, 18
    learnset MOVE_BODY_PRESS, 27
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_HEAVY_SLAM, 40
    learnset MOVE_SURF, 43
    learnset MOVE_BOUNCE, 47
    learnset MOVE_DOUBLE_EDGE, 51
    learnset MOVE_ICE_BEAM, 55
    learnset MOVE_HYPER_VOICE, 59
    learnset MOVE_EXPLOSION, 64
    learnset MOVE_WATER_SPOUT, 80
    terminatelearnset


levelup SPECIES_NUMEL
    learnset MOVE_TACKLE, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_MAGNITUDE, 12
    learnset MOVE_FLAME_BURST, 15
    learnset MOVE_ROCK_TOMB, 20
    learnset MOVE_BODY_SLAM, 24
    learnset MOVE_LAVA_PLUME, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_EARTH_POWER, 37
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_FLAMETHROWER, 45
    terminatelearnset


levelup SPECIES_CAMERUPT
    learnset MOVE_HEAVY_SLAM, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_MAGNITUDE, 12
    learnset MOVE_FLAME_BURST, 15
    learnset MOVE_ROCK_TOMB, 20
    learnset MOVE_BODY_SLAM, 24
    learnset MOVE_LAVA_PLUME, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_EARTH_POWER, 41
    learnset MOVE_ANCIENT_POWER, 45
    learnset MOVE_EARTHQUAKE, 50
    learnset MOVE_FLAMETHROWER, 54
    learnset MOVE_ERUPTION, 66
    terminatelearnset


levelup SPECIES_TORKOAL
    learnset MOVE_SLUDGE_BOMB, 1
    learnset MOVE_ERUPTION, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_SMOG, 4
    learnset MOVE_HEADBUTT, 10
    learnset MOVE_FLAME_BURST, 16
    learnset MOVE_YAWN, 19
    learnset MOVE_BODY_SLAM, 23
    learnset MOVE_BODY_PRESS, 25
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_LAVA_PLUME, 32
    learnset MOVE_EXPLOSION, 36
    learnset MOVE_SUPERPOWER, 39
    learnset MOVE_FLAMETHROWER, 43
    learnset MOVE_EARTH_POWER, 45
    learnset MOVE_EXPLOSION, 48
    learnset MOVE_STONE_EDGE, 51
    learnset MOVE_HEAT_WAVE, 54
    terminatelearnset


levelup SPECIES_SPOINK
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PSYWAVE, 7
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_CONFUSE_RAY, 18
    learnset MOVE_BOUNCE, 22
    learnset MOVE_ZEN_HEADBUTT, 26
    learnset MOVE_PSYSHOCK, 32
    learnset MOVE_POWER_GEM, 35
    learnset MOVE_BODY_SLAM, 37
    learnset MOVE_SIGNAL_BEAM, 39
    learnset MOVE_PSYCHIC, 42
    terminatelearnset


levelup SPECIES_GRUMPIG
    learnset MOVE_DAZZLING_GLEAM, 1
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PSYWAVE, 7
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_CONFUSE_RAY, 18
    learnset MOVE_BOUNCE, 22
    learnset MOVE_ZEN_HEADBUTT, 26
    learnset MOVE_PSYSHOCK, 32
    learnset MOVE_SIGNAL_BEAM, 36
    learnset MOVE_POWER_GEM, 39
    learnset MOVE_HYPER_VOICE, 42
    learnset MOVE_EARTH_POWER, 45
    learnset MOVE_PSYCHIC, 47
    terminatelearnset


levelup SPECIES_SPINDA
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_WISH, 1
    learnset MOVE_WILD_CHARGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_FEINT_ATTACK, 7
    learnset MOVE_PSYBEAM, 14
    learnset MOVE_DIZZY_PUNCH, 17
    learnset MOVE_HYPNOSIS, 20
    learnset MOVE_SUCKER_PUNCH, 23
    learnset MOVE_BRICK_BREAK, 25
    learnset MOVE_TEETER_DANCE, 27
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_HYPER_VOICE, 33
    learnset MOVE_BODY_SLAM, 33
    learnset MOVE_FAKE_OUT, 35
    learnset MOVE_SHADOW_BALL, 38
    learnset MOVE_SUPERPOWER, 41
    terminatelearnset


levelup SPECIES_TRAPINCH
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_BITE, 8
    learnset MOVE_MUD_SLAP, 11
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_ROCK_SLIDE, 19
    learnset MOVE_DIG, 23
    learnset MOVE_CRUNCH, 28
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_FIRST_IMPRESSION, 36
    learnset MOVE_DOUBLE_EDGE, 39
    learnset MOVE_SUPERPOWER, 43
    learnset MOVE_EARTHQUAKE, 48
    terminatelearnset


levelup SPECIES_VIBRAVA
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_BITE, 8
    learnset MOVE_MUD_SLAP, 11
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_ROCK_SLIDE, 23
    learnset MOVE_DIG, 27
    learnset MOVE_DRAGON_PULSE, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_FIRST_IMPRESSION, 41
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_SUPERPOWER, 48
    learnset MOVE_EARTHQUAKE, 52
    terminatelearnset


levelup SPECIES_FLYGON
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_BITE, 8
    learnset MOVE_MUD_SLAP, 11
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_ROCK_SLIDE, 23
    learnset MOVE_DIG, 27
    learnset MOVE_DRAGON_PULSE, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_FIRST_IMPRESSION, 41
    learnset MOVE_AIR_SLASH, 46
    learnset MOVE_DRAGON_CLAW, 50
    learnset MOVE_DOUBLE_EDGE, 54
    learnset MOVE_SUPERPOWER, 58
    learnset MOVE_EARTHQUAKE, 61
    terminatelearnset

levelup SPECIES_CACNEA
    learnset MOVE_POISON_STING, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ABSORB, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_MEGA_DRAIN, 10
    learnset MOVE_NEEDLE_ARM, 16
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_PIN_MISSILE, 22
    learnset MOVE_SPIKES, 25
    learnset MOVE_SUCKER_PUNCH, 29
    learnset MOVE_BRICK_BREAK, 32
    learnset MOVE_POISON_JAB, 36
    learnset MOVE_GIGA_DRAIN, 38
    learnset MOVE_DARK_PULSE, 41
    terminatelearnset


levelup SPECIES_CACTURNE
    learnset MOVE_SPIKY_SHIELD, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ABSORB, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_MEGA_DRAIN, 10
    learnset MOVE_NEEDLE_ARM, 16
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_PIN_MISSILE, 22
    learnset MOVE_SPIKES, 26
    learnset MOVE_SUCKER_PUNCH, 29
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_POISON_JAB, 37
    learnset MOVE_GIGA_DRAIN, 41
    learnset MOVE_DARK_PULSE, 45
    learnset MOVE_FOCUS_BLAST, 49
    learnset MOVE_LEAF_STORM, 53
    terminatelearnset


levelup SPECIES_SWABLU
    learnset MOVE_PECK, 1
    learnset MOVE_ASTONISH, 3
    learnset MOVE_DISARMING_VOICE, 9
    learnset MOVE_SECRET_POWER, 12
    learnset MOVE_SAFEGUARD, 16
    learnset MOVE_SING, 19
    learnset MOVE_DRAGON_BREATH, 22
    learnset MOVE_AERIAL_ACE, 24
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_AIR_SLASH, 32
    learnset MOVE_DRAGON_PULSE, 35
    learnset MOVE_HYPER_VOICE, 39
    learnset MOVE_MOONBLAST, 44
    terminatelearnset


levelup SPECIES_ALTARIA
    learnset MOVE_HURRICANE, 1
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_PECK, 1
    learnset MOVE_ASTONISH, 3
    learnset MOVE_DISARMING_VOICE, 9
    learnset MOVE_SECRET_POWER, 12
    learnset MOVE_SAFEGUARD, 16
    learnset MOVE_SING, 19
    learnset MOVE_DRAGON_BREATH, 22
    learnset MOVE_AERIAL_ACE, 24
    learnset MOVE_ROOST, 29
    learnset MOVE_BODY_SLAM, 33
    learnset MOVE_AIR_SLASH, 37
    learnset MOVE_DRAGON_PULSE, 41
    learnset MOVE_HYPER_VOICE, 46
    learnset MOVE_MOONBLAST, 49
    terminatelearnset


levelup SPECIES_ZANGOOSE
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_FURY_CUTTER, 8
    learnset MOVE_PURSUIT, 12
    learnset MOVE_FALSE_SWIPE, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_X_SCISSOR, 24
    learnset MOVE_CRUSH_CLAW, 29
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_ZEN_HEADBUTT, 37
    learnset MOVE_FACADE, 41
    learnset MOVE_SHADOW_CLAW, 43
    learnset MOVE_ROCK_SLIDE, 46
    terminatelearnset


levelup SPECIES_SEVIPER
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_BITE, 4
    learnset MOVE_LICK, 6
    learnset MOVE_SLUDGE, 12
    learnset MOVE_TAIL_SLAP, 17
    learnset MOVE_GLARE, 20
    learnset MOVE_POISON_FANG, 21
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_NIGHT_SLASH, 29
    learnset MOVE_CRUNCH, 32
    learnset MOVE_POISON_JAB, 35
    learnset MOVE_X_SCISSOR, 38
    learnset MOVE_BODY_SLAM, 42
    learnset MOVE_PSYCHIC_FANGS, 46
    learnset MOVE_POISON_TAIL, 50
    terminatelearnset


levelup SPECIES_LUNATONE
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_REFLECT, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_CONFUSION, 8
    learnset MOVE_HYPNOSIS, 12
    learnset MOVE_PSYWAVE, 15
    learnset MOVE_ROCK_SLIDE, 20
    learnset MOVE_MOONLIGHT, 24
    learnset MOVE_BULLDOZE, 27
    learnset MOVE_PSYCHIC, 32
    learnset MOVE_POWER_GEM, 35
    learnset MOVE_MOONBLAST, 41
    learnset MOVE_EXPLOSION, 45
    terminatelearnset


levelup SPECIES_SOLROCK
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_REFLECT, 1
    learnset MOVE_FLARE_BLITZ, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_CONFUSION, 8
    learnset MOVE_HYPNOSIS, 12
    learnset MOVE_PSYWAVE, 15
    learnset MOVE_POWER_GEM, 20
    learnset MOVE_MORNING_SUN, 24
    learnset MOVE_BULLDOZE, 27
    learnset MOVE_ZEN_HEADBUTT, 32
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_HEAT_CRASH, 41
    learnset MOVE_EXPLOSION, 45
    terminatelearnset


levelup SPECIES_BARBOACH
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SHOT, 6
    learnset MOVE_WATER_PULSE, 11
    learnset MOVE_MAGNITUDE, 13
    learnset MOVE_MUD_BOMB, 18
    learnset MOVE_AURORA_BEAM, 22
    learnset MOVE_ROCK_SLIDE, 25
    learnset MOVE_BODY_SLAM, 27
    learnset MOVE_EARTHQUAKE, 31
    learnset MOVE_MUDDY_WATER, 35
    learnset MOVE_ICE_BEAM, 38
    learnset MOVE_LIQUIDATION, 42
    terminatelearnset


levelup SPECIES_WHISCASH
    learnset MOVE_BELCH, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SHOT, 6
    learnset MOVE_WATER_PULSE, 11
    learnset MOVE_MAGNITUDE, 13
    learnset MOVE_MUD_BOMB, 18
    learnset MOVE_AURORA_BEAM, 22
    learnset MOVE_ROCK_SLIDE, 26
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_DOUBLE_EDGE, 35
    learnset MOVE_EARTHQUAKE, 39
    learnset MOVE_MUDDY_WATER, 42
    learnset MOVE_ICE_BEAM, 46
    learnset MOVE_LIQUIDATION, 49
    terminatelearnset


levelup SPECIES_CORPHISH
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_VICE_GRIP, 7
    learnset MOVE_FALSE_SWIPE, 10
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_AERIAL_ACE, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_ROCK_TOMB, 24
    learnset MOVE_RAZOR_SHELL, 27
    learnset MOVE_NIGHT_SLASH, 30
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_AQUA_JET, 34
    learnset MOVE_CRUNCH, 36
    learnset MOVE_X_SCISSOR, 38
    learnset MOVE_CRABHAMMER, 44
    terminatelearnset


levelup SPECIES_CRAWDAUNT
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_VICE_GRIP, 7
    learnset MOVE_FALSE_SWIPE, 10
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_AERIAL_ACE, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_ROCK_TOMB, 24
    learnset MOVE_RAZOR_SHELL, 29
    learnset MOVE_NIGHT_SLASH, 32
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_CRUNCH, 37
    learnset MOVE_AQUA_JET, 40
    learnset MOVE_KNOCK_OFF, 42
    learnset MOVE_X_SCISSOR, 45
    learnset MOVE_CRABHAMMER, 50
    terminatelearnset


levelup SPECIES_BALTOY
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_MUD_SHOT, 10
    learnset MOVE_ROCK_TOMB, 13
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_MUD_BOMB, 20
    learnset MOVE_ANCIENT_POWER, 24
    learnset MOVE_EXTRASENSORY, 29
    learnset MOVE_SELF_DESTRUCT, 31
    learnset MOVE_IMPRISON, 31
    learnset MOVE_GYRO_BALL, 33
    learnset MOVE_EARTH_POWER, 36
    learnset MOVE_PSYCHIC, 39
    learnset MOVE_EXPLOSION, 41
    terminatelearnset


levelup SPECIES_CLAYDOL
    learnset MOVE_HYPER_BEAM, 0
    learnset MOVE_EXPANDING_FORCE, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_MUD_SHOT, 10
    learnset MOVE_ROCK_TOMB, 13
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_MUD_BOMB, 20
    learnset MOVE_ANCIENT_POWER, 24
    learnset MOVE_EXTRASENSORY, 29
    learnset MOVE_SELF_DESTRUCT, 31
    learnset MOVE_IMPRISON, 34
    learnset MOVE_HYPER_BEAM, 36
    learnset MOVE_GYRO_BALL, 40
    learnset MOVE_EARTH_POWER, 43
    learnset MOVE_PSYCHIC, 47
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_LILEEP
    learnset MOVE_WRAP, 1
    learnset MOVE_ACID, 4
    learnset MOVE_ABSORB, 6
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_ROCK_TOMB, 19
    learnset MOVE_BULLET_SEED, 23
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_GIGA_DRAIN, 35
    learnset MOVE_RECOVER, 40
    learnset MOVE_SLUDGE_BOMB, 43
    learnset MOVE_ANCIENT_POWER, 47
    learnset MOVE_ENERGY_BALL, 51
    terminatelearnset


levelup SPECIES_CRADILY
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_SLUDGE_WAVE, 1
    learnset MOVE_POWER_WHIP, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_ACID, 4
    learnset MOVE_ABSORB, 6
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_ROCK_TOMB, 19
    learnset MOVE_BULLET_SEED, 23
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_GIGA_DRAIN, 35
    learnset MOVE_RECOVER, 40
    learnset MOVE_SLUDGE_BOMB, 46
    learnset MOVE_EARTH_POWER, 51
    learnset MOVE_ANCIENT_POWER, 55
    learnset MOVE_ENERGY_BALL, 59
    terminatelearnset


levelup SPECIES_ANORITH
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_SMACK_DOWN, 10
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_BUG_BITE, 18
    learnset MOVE_SLASH, 23
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_CROSS_POISON, 37
    learnset MOVE_X_SCISSOR, 43
    learnset MOVE_THROAT_CHOP, 47
    terminatelearnset


levelup SPECIES_ARMALDO
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_SMACK_DOWN, 11
    learnset MOVE_METAL_CLAW, 15
    learnset MOVE_BUG_BITE, 19
    learnset MOVE_SLASH, 25
    learnset MOVE_LIQUIDATION, 31
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_ROCK_SLIDE, 40
    learnset MOVE_CROSS_POISON, 44
    learnset MOVE_X_SCISSOR, 48
    learnset MOVE_THROAT_CHOP, 53
    learnset MOVE_SUPERPOWER, 57
    learnset MOVE_EARTHQUAKE, 60
    terminatelearnset


levelup SPECIES_FEEBAS
    learnset MOVE_SPLASH, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_FLAIL, 15
    learnset MOVE_BOUNCE, 25
    terminatelearnset


levelup SPECIES_MILOTIC
    learnset MOVE_WATER_PULSE, 0
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_TACKLE, 5
    learnset MOVE_DISARMING_VOICE, 9
    learnset MOVE_WATER_GUN, 11
    learnset MOVE_ATTRACT, 16
    learnset MOVE_WATER_PULSE, 20
    learnset MOVE_AURORA_BEAM, 24
    learnset MOVE_RECOVER, 29
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_DRAGON_PULSE, 36
    learnset MOVE_SCALD, 41
    learnset MOVE_ICE_BEAM, 45
    learnset MOVE_HYDRO_PUMP, 53
    terminatelearnset


levelup SPECIES_CASTFORM
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_EMBER, 10
    learnset MOVE_POWDER_SNOW, 10
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_WEATHER_BALL, 25
    learnset MOVE_SCALD, 30
    learnset MOVE_ICE_BEAM, 35
    learnset MOVE_FLAMETHROWER, 35
    learnset MOVE_HYDRO_PUMP, 45
    learnset MOVE_FIRE_BLAST, 45
    learnset MOVE_BLIZZARD, 45
    learnset MOVE_HURRICANE, 50
    terminatelearnset


levelup SPECIES_KECLEON
    learnset MOVE_ROCK_SLIDE, 1
    learnset MOVE_RECOVER, 1
    learnset MOVE_DRAIN_PUNCH, 1
    learnset MOVE_LICK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SHADOW_SNEAK, 7
    learnset MOVE_FURY_SWIPES, 10
    learnset MOVE_FEINT_ATTACK, 14
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_SLASH, 22
    learnset MOVE_FAKE_OUT, 24
    learnset MOVE_AQUA_TAIL, 27
    learnset MOVE_BRICK_BREAK, 29
    learnset MOVE_SHADOW_CLAW, 31
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_SUCKER_PUNCH, 36
    terminatelearnset


levelup SPECIES_SHUPPET
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_SHADOW_SNEAK, 13
    learnset MOVE_WILL_O_WISP, 16
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_HEX, 24
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_SHADOW_BALL, 31
    learnset MOVE_SUCKER_PUNCH, 34
    learnset MOVE_SHADOW_CLAW, 37
    learnset MOVE_DARK_PULSE, 40
    learnset MOVE_DOUBLE_EDGE, 43
    terminatelearnset


levelup SPECIES_BANETTE
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_WILL_O_WISP, 1
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_SHADOW_SNEAK, 13
    learnset MOVE_WILL_O_WISP, 16
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_HEX, 24
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_SHADOW_BALL, 31
    learnset MOVE_SUCKER_PUNCH, 34
    learnset MOVE_SHADOW_CLAW, 37
    learnset MOVE_BRICK_BREAK, 41
    learnset MOVE_DARK_PULSE, 45
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_PHANTOM_FORCE, 52
    terminatelearnset


levelup SPECIES_DUSKULL
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DISABLE, 4
    learnset MOVE_SHADOW_SNEAK, 11
    learnset MOVE_NIGHT_SHADE, 15
    learnset MOVE_CONFUSE_RAY, 20
    learnset MOVE_WILL_O_WISP, 24
    learnset MOVE_DARK_PULSE, 30
    learnset MOVE_TELEPORT, 35
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_PHANTOM_FORCE, 46
    terminatelearnset


levelup SPECIES_DUSCLOPS
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DISABLE, 4
    learnset MOVE_SHADOW_SNEAK, 11
    learnset MOVE_NIGHT_SHADE, 15
    learnset MOVE_CONFUSE_RAY, 20
    learnset MOVE_WILL_O_WISP, 29
    learnset MOVE_DARK_PULSE, 34
    learnset MOVE_SHADOW_PUNCH, 36
    learnset MOVE_TELEPORT, 39
    learnset MOVE_BRICK_BREAK, 43
    learnset MOVE_PSYCHIC, 50
    learnset MOVE_PHANTOM_FORCE, 59
    terminatelearnset


levelup SPECIES_TROPIUS
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_GUST, 1
    learnset MOVE_RAZOR_LEAF, 1
    learnset MOVE_STOMP, 10
    learnset MOVE_MAGICAL_LEAF, 16
    learnset MOVE_AERIAL_ACE, 20
    learnset MOVE_LEAF_TORNADO, 24
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_LEAF_BLADE, 44
    learnset MOVE_EARTHQUAKE, 46
    learnset MOVE_HURRICANE, 50
    terminatelearnset


levelup SPECIES_CHIMECHO
    learnset MOVE_ASTONISH, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_YAWN, 9
    learnset MOVE_PSYWAVE, 13
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_RECOVER, 21
    learnset MOVE_EXTRASENSORY, 24
    learnset MOVE_THUNDER_WAVE, 28
    learnset MOVE_SHADOW_BALL, 31
    learnset MOVE_ENCORE, 33
    learnset MOVE_WISH, 35
    learnset MOVE_PSYCHIC, 37
    terminatelearnset


levelup SPECIES_ABSOL
    learnset MOVE_PLAY_ROUGH, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 7
    learnset MOVE_KNOCK_OFF, 11
    learnset MOVE_PURSUIT, 14
    learnset MOVE_TAUNT, 17
    learnset MOVE_SLASH, 19
    learnset MOVE_NIGHT_SLASH, 23
    learnset MOVE_BODY_SLAM, 27
    learnset MOVE_CRUNCH, 30
    learnset MOVE_SMART_STRIKE, 33
    learnset MOVE_PSYCHO_CUT, 36
    learnset MOVE_SUCKER_PUNCH, 38
    learnset MOVE_MEGAHORN, 42
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_SUPERPOWER, 49
    terminatelearnset


levelup SPECIES_WYNAUT
    learnset MOVE_COUNTER, 1
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_SAFEGUARD, 1
    learnset MOVE_DESTINY_BOND, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_COUNTER, 15
    learnset MOVE_MIRROR_COAT, 15
    learnset MOVE_SAFEGUARD, 15
    learnset MOVE_DESTINY_BOND, 15
    terminatelearnset


levelup SPECIES_SNORUNT
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ICE_SHARD, 9
    learnset MOVE_ICY_WIND, 12
    learnset MOVE_AURORA_BEAM, 16
    learnset MOVE_BITE, 19
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_CRUNCH, 29
    learnset MOVE_ICE_BEAM, 34
    learnset MOVE_WEATHER_BALL, 38
    terminatelearnset


levelup SPECIES_GLALIE
    learnset MOVE_FREEZE_DRY, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ICE_SHARD, 9
    learnset MOVE_ICY_WIND, 12
    learnset MOVE_AURORA_BEAM, 16
    learnset MOVE_BITE, 19
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_SELF_DESTRUCT, 42
    learnset MOVE_CRUNCH, 49
    learnset MOVE_ICE_BEAM, 53
    learnset MOVE_WEATHER_BALL, 55
    terminatelearnset


levelup SPECIES_SPHEAL
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_BUBBLE_BEAM, 16
    learnset MOVE_BODY_SLAM, 21
    learnset MOVE_AURORA_BEAM, 24
    learnset MOVE_ENCORE, 27
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_SURF, 36
    learnset MOVE_ICE_BEAM, 41
    learnset MOVE_DOUBLE_EDGE, 44
    learnset MOVE_BLIZZARD, 49
    terminatelearnset


levelup SPECIES_SEALEO
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_BUBBLE_BEAM, 16
    learnset MOVE_BODY_SLAM, 21
    learnset MOVE_AURORA_BEAM, 25
    learnset MOVE_ENCORE, 28
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_SURF, 39
    learnset MOVE_ICE_BEAM, 44
    learnset MOVE_DOUBLE_EDGE, 49
    learnset MOVE_BLIZZARD, 54
    terminatelearnset


levelup SPECIES_WALREIN
    learnset MOVE_HEAVY_SLAM, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_BUBBLE_BEAM, 16
    learnset MOVE_BODY_SLAM, 21
    learnset MOVE_AURORA_BEAM, 31
    learnset MOVE_ENCORE, 35
    learnset MOVE_ROCK_SLIDE, 39
    learnset MOVE_SURF, 41
    learnset MOVE_BODY_PRESS, 44
    learnset MOVE_ICE_BEAM, 49
    learnset MOVE_DOUBLE_EDGE, 54
    learnset MOVE_BLIZZARD, 58
    terminatelearnset


levelup SPECIES_CLAMPERL
    learnset MOVE_CLAMP, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WATER_PULSE, 10
    learnset MOVE_AURORA_BEAM, 16
    terminatelearnset


levelup SPECIES_HUNTAIL
    learnset MOVE_HYDRO_CANNON, 1
    learnset MOVE_CLAMP, 1
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_BITE, 24
    learnset MOVE_ICE_FANG, 26
    learnset MOVE_SUCKER_PUNCH, 29
    learnset MOVE_AQUA_TAIL, 32
    learnset MOVE_ICE_BEAM, 35
    learnset MOVE_BOUNCE, 37
    learnset MOVE_MUDDY_WATER, 40
    learnset MOVE_HYDRO_PUMP, 45
    terminatelearnset


levelup SPECIES_GOREBYSS
    learnset MOVE_HYDRO_CANNON, 1
    learnset MOVE_CLAMP, 1
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_PSYBEAM, 24
    learnset MOVE_AURORA_BEAM, 26
    learnset MOVE_HYPNOSIS, 29
    learnset MOVE_SCALD, 32
    learnset MOVE_ICE_BEAM, 35
    learnset MOVE_PSYCHIC, 37
    learnset MOVE_SURF, 40
    learnset MOVE_HYDRO_PUMP, 45
    terminatelearnset


levelup SPECIES_RELICANTH
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_AQUA_TAIL, 1
    learnset MOVE_ZEN_HEADBUTT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 4
    learnset MOVE_WATER_GUN, 9
    learnset MOVE_ANCIENT_POWER, 13
    learnset MOVE_ROCK_TOMB, 17
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_YAWN, 23
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_WATERFALL, 30
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_LIQUIDATION, 49
    learnset MOVE_HEAD_SMASH, 60
    terminatelearnset


levelup SPECIES_LUVDISC
    learnset MOVE_TACKLE, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_WATER_PULSE, 12
    learnset MOVE_ATTRACT, 13
    learnset MOVE_HEART_STAMP, 15
    learnset MOVE_ICE_BEAM, 18
    learnset MOVE_DRAINING_KISS, 20
    learnset MOVE_ICY_WIND, 22
    learnset MOVE_FLAIL, 25
    learnset MOVE_SURF, 28
    learnset MOVE_HYDRO_PUMP, 32
    terminatelearnset


levelup SPECIES_BAGON
    learnset MOVE_EMBER, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_BITE, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_DRAGON_BREATH, 15
    learnset MOVE_CRUNCH, 21
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_DOUBLE_EDGE, 39
    learnset MOVE_ZEN_HEADBUTT, 42
    learnset MOVE_DRAGON_CLAW, 46
    learnset MOVE_FLAMETHROWER, 49
    terminatelearnset


levelup SPECIES_SHELGON
    learnset MOVE_EMBER, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_BITE, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_DRAGON_BREATH, 15
    learnset MOVE_CRUNCH, 21
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_ZEN_HEADBUTT, 51
    learnset MOVE_DRAGON_CLAW, 57
    learnset MOVE_FLAMETHROWER, 61
    terminatelearnset


levelup SPECIES_SALAMENCE
    learnset MOVE_DRACO_METEOR, 1
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_BITE, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_DRAGON_BREATH, 15
    learnset MOVE_CRUNCH, 21
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_ZEN_HEADBUTT, 49
    learnset MOVE_FLY, 55
    learnset MOVE_FLAMETHROWER, 57
    learnset MOVE_DUAL_WINGBEAT, 61
    learnset MOVE_DRAGON_CLAW, 65
    learnset MOVE_PSYCHIC_FANGS, 69
    learnset MOVE_AIR_SLASH, 74
    terminatelearnset


levelup SPECIES_BELDUM
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAKE_DOWN, 10
    terminatelearnset


levelup SPECIES_METANG
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAKE_DOWN, 10
    learnset MOVE_METAL_CLAW, 20
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_BRICK_BREAK, 25
    learnset MOVE_BULLDOZE, 29
    learnset MOVE_IRON_HEAD, 34
    learnset MOVE_BULLET_PUNCH, 38
    learnset MOVE_ZEN_HEADBUTT, 41
    learnset MOVE_ROCK_SLIDE, 46
    learnset MOVE_METEOR_MASH, 50
    learnset MOVE_DOUBLE_EDGE, 53
    terminatelearnset


levelup SPECIES_METAGROSS
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAKE_DOWN, 10
    learnset MOVE_METAL_CLAW, 20
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_BRICK_BREAK, 25
    learnset MOVE_BULLDOZE, 29
    learnset MOVE_IRON_HEAD, 34
    learnset MOVE_BULLET_PUNCH, 38
    learnset MOVE_ZEN_HEADBUTT, 46
    learnset MOVE_ROCK_SLIDE, 53
    learnset MOVE_HAMMER_ARM, 59
    learnset MOVE_METEOR_MASH, 65
    terminatelearnset


levelup SPECIES_REGIROCK
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_STOMP, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_ROCK_THROW, 7
    learnset MOVE_BULLDOZE, 12
    learnset MOVE_STOMP, 18
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_ROCK_SLIDE, 24
    learnset MOVE_HAMMER_ARM, 38
    learnset MOVE_STONE_EDGE, 45
    learnset MOVE_SUPERPOWER, 57
    learnset MOVE_ZAP_CANNON, 60
    learnset MOVE_ROCK_WRECKER, 69
    learnset MOVE_EXPLOSION, 78
    terminatelearnset


levelup SPECIES_REGICE
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_STOMP, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_ROCK_THROW, 7
    learnset MOVE_AURORA_BEAM, 12
    learnset MOVE_STOMP, 18
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_ICE_BEAM, 24
    learnset MOVE_HAMMER_ARM, 38
    learnset MOVE_BLIZZARD, 45
    learnset MOVE_SUPERPOWER, 57
    learnset MOVE_ZAP_CANNON, 60
    learnset MOVE_SHEER_COLD, 69
    learnset MOVE_EXPLOSION, 78
    terminatelearnset


levelup SPECIES_REGISTEEL
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_STOMP, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_ROCK_THROW, 7
    learnset MOVE_MAGNET_BOMB, 12
    learnset MOVE_STOMP, 18
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_IRON_HEAD, 24
    learnset MOVE_HAMMER_ARM, 38
    learnset MOVE_HEAVY_SLAM, 45
    learnset MOVE_SUPERPOWER, 57
    learnset MOVE_ZAP_CANNON, 60
    learnset MOVE_STEEL_BEAM, 69
    learnset MOVE_EXPLOSION, 78
    terminatelearnset


levelup SPECIES_LATIAS
    learnset MOVE_DRACO_METEOR, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_HELPING_HAND, 5
    learnset MOVE_REFRESH, 13
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_RECOVER, 20
    learnset MOVE_AIR_SLASH, 26
    learnset MOVE_WISH, 35
    learnset MOVE_MIST_BALL, 42
    learnset MOVE_DRAGON_PULSE, 47
    learnset MOVE_AURA_SPHERE, 52
    learnset MOVE_THUNDERBOLT, 56
    terminatelearnset


levelup SPECIES_LATIOS
    learnset MOVE_DRACO_METEOR, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_HELPING_HAND, 5
    learnset MOVE_REFRESH, 13
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_RECOVER, 20
    learnset MOVE_AIR_SLASH, 26
    learnset MOVE_WISH, 35
    learnset MOVE_LUSTER_PURGE, 42
    learnset MOVE_DRAGON_PULSE, 47
    learnset MOVE_AURA_SPHERE, 52
    learnset MOVE_LIQUIDATION, 56
    terminatelearnset


levelup SPECIES_KYOGRE
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_AQUA_TAIL, 11
    learnset MOVE_BODY_SLAM, 20
    learnset MOVE_ICE_BEAM, 35
    learnset MOVE_MUDDY_WATER, 42
    learnset MOVE_SHEER_COLD, 54
    learnset MOVE_ORIGIN_PULSE, 54
    learnset MOVE_THUNDER, 73
    learnset MOVE_HYPER_VOICE, 80
    learnset MOVE_WATER_SPOUT, 90
    terminatelearnset


levelup SPECIES_GROUDON
    learnset MOVE_MUD_SHOT, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_EARTH_POWER, 11
    learnset MOVE_BODY_SLAM, 20
    learnset MOVE_LAVA_PLUME, 35
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_FISSURE, 54
    learnset MOVE_PRECIPICE_BLADES, 54
    learnset MOVE_SOLAR_BLADE, 73
    learnset MOVE_HYPER_VOICE, 80
    learnset MOVE_ERUPTION, 90
    terminatelearnset


levelup SPECIES_RAYQUAZA
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_AIR_SLASH, 11
    learnset MOVE_BODY_SLAM, 20
    learnset MOVE_DRAGON_CLAW, 35
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_DRAGON_ASCENT, 54
    learnset MOVE_EARTHQUAKE, 73
    learnset MOVE_HURRICANE, 80
    learnset MOVE_DRACO_METEOR, 90
    terminatelearnset


levelup SPECIES_JIRACHI
    learnset MOVE_CONFUSION, 1
    learnset MOVE_WISH, 1
    learnset MOVE_SWIFT, 8
    learnset MOVE_MAGNET_BOMB, 18
    learnset MOVE_PSYBEAM, 27
    learnset MOVE_PSYCHIC, 35
    learnset MOVE_IRON_HEAD, 42
    learnset MOVE_METEOR_MASH, 50
    learnset MOVE_DOUBLE_EDGE, 59
    learnset MOVE_AURA_SPHERE, 70
    learnset MOVE_DOOM_DESIRE, 82
    terminatelearnset


levelup SPECIES_DEOXYS
    learnset MOVE_CONFUSION, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_TELEPORT, 13
    learnset MOVE_KNOCK_OFF, 19
    learnset MOVE_PURSUIT, 25
    learnset MOVE_PSYCHIC, 31
    learnset MOVE_ANCIENT_POWER, 39
    learnset MOVE_FOCUS_BLAST, 50
    learnset MOVE_RECOVER, 58
    learnset MOVE_PSYCHO_BOOST, 70
    learnset MOVE_OMINOUS_WIND, 80
    terminatelearnset


levelup SPECIES_TURTWIG
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_RAZOR_LEAF, 9
    learnset MOVE_BITE, 13
    learnset MOVE_BODY_SLAM, 18
    learnset MOVE_GIGA_DRAIN, 24
    learnset MOVE_SYNTHESIS, 28
    learnset MOVE_CRUNCH, 32
    learnset MOVE_DOUBLE_EDGE, 37
    learnset MOVE_SEED_BOMB, 40
    terminatelearnset


levelup SPECIES_GROTLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_RAZOR_LEAF, 9
    learnset MOVE_BITE, 13
    learnset MOVE_BODY_SLAM, 18
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_BODY_PRESS, 32
    learnset MOVE_SYNTHESIS, 34
    learnset MOVE_CRUNCH, 39
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_SEED_BOMB, 46
    terminatelearnset


levelup SPECIES_TORTERRA
    learnset MOVE_ZEN_HEADBUTT, 1
    learnset MOVE_FRENZY_PLANT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_RAZOR_LEAF, 9
    learnset MOVE_BITE, 13
    learnset MOVE_BODY_SLAM, 18
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_EARTHQUAKE, 32
    learnset MOVE_SYNTHESIS, 34
    learnset MOVE_SEED_BOMB, 37
    learnset MOVE_ROCK_SLIDE, 40
    learnset MOVE_CRUNCH, 45
    learnset MOVE_DOUBLE_EDGE, 49
    learnset MOVE_WOOD_HAMMER, 53
    learnset MOVE_HEADLONG_RUSH, 66
    terminatelearnset


levelup SPECIES_CHIMCHAR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_FURY_SWIPES, 9
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_FLAME_WHEEL, 17
    learnset MOVE_WILL_O_WISP, 21
    learnset MOVE_FIRE_PUNCH, 24
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_THROAT_CHOP, 35
    learnset MOVE_BLAZE_KICK, 40
    terminatelearnset


levelup SPECIES_MONFERNO
    learnset MOVE_SCRATCH, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_FURY_SWIPES, 9
    learnset MOVE_MACH_PUNCH, 14
    learnset MOVE_FLAME_WHEEL, 21
    learnset MOVE_WILL_O_WISP, 25
    learnset MOVE_FIRE_PUNCH, 29
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_THROAT_CHOP, 40
    learnset MOVE_BLAZE_KICK, 45
    terminatelearnset


levelup SPECIES_INFERNAPE
    learnset MOVE_RAGING_FURY, 1
    learnset MOVE_FLARE_BLITZ, 1
    learnset MOVE_ACROBATICS, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_FURY_SWIPES, 9
    learnset MOVE_MACH_PUNCH, 14
    learnset MOVE_FLAME_WHEEL, 26
    learnset MOVE_WILL_O_WISP, 30
    learnset MOVE_FIRE_PUNCH, 34
    learnset MOVE_BRICK_BREAK, 37
    learnset MOVE_THROAT_CHOP, 43
    learnset MOVE_ROCK_SLIDE, 49
    learnset MOVE_BLAZE_KICK, 53
    learnset MOVE_CLOSE_COMBAT, 64
    terminatelearnset


levelup SPECIES_PIPLUP
    learnset MOVE_POUND, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_PECK, 7
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_DUAL_WINGBEAT, 16
    learnset MOVE_FLIP_TURN, 20
    learnset MOVE_YAWN, 23
    learnset MOVE_AURORA_BEAM, 26
    learnset MOVE_SCALD, 30
    learnset MOVE_DRILL_PECK, 34
    learnset MOVE_ICE_BEAM, 37
    learnset MOVE_HYDRO_PUMP, 41
    terminatelearnset


levelup SPECIES_PRINPLUP
    learnset MOVE_POUND, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_PECK, 7
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_DUAL_WINGBEAT, 18
    learnset MOVE_FLIP_TURN, 24
    learnset MOVE_YAWN, 27
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_AURORA_BEAM, 33
    learnset MOVE_SCALD, 36
    learnset MOVE_DRILL_PECK, 39
    learnset MOVE_ICE_BEAM, 44
    learnset MOVE_HYDRO_PUMP, 48
    terminatelearnset


levelup SPECIES_EMPOLEON
    learnset MOVE_HYDRO_CANNON, 1
    learnset MOVE_ROOST, 1
    learnset MOVE_POUND, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_PECK, 7
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_DUAL_WINGBEAT, 18
    learnset MOVE_FLIP_TURN, 24
    learnset MOVE_YAWN, 27
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_AURORA_BEAM, 33
    learnset MOVE_AQUA_JET, 36
    learnset MOVE_STEEL_WING, 36
    learnset MOVE_SCALD, 40
    learnset MOVE_DRILL_PECK, 43
    learnset MOVE_ICE_BEAM, 47
    learnset MOVE_HYDRO_PUMP, 54
    learnset MOVE_WAVE_CRASH, 62
    learnset MOVE_EARTHQUAKE, 66
    terminatelearnset


levelup SPECIES_STARLY
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_WING_ATTACK, 9
    learnset MOVE_ENDEAVOR, 14
    learnset MOVE_AERIAL_ACE, 18
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_DRILL_PECK, 29
    learnset MOVE_DOUBLE_EDGE, 35
    learnset MOVE_BRAVE_BIRD, 42
    terminatelearnset


levelup SPECIES_STARAVIA
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_WING_ATTACK, 9
    learnset MOVE_ENDEAVOR, 19
    learnset MOVE_AERIAL_ACE, 25
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_DRILL_PECK, 34
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_BRAVE_BIRD, 49
    terminatelearnset


levelup SPECIES_STARAPTOR
    learnset MOVE_ACROBATICS, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_WING_ATTACK, 9
    learnset MOVE_ENDEAVOR, 19
    learnset MOVE_AERIAL_ACE, 25
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_U_TURN, 34
    learnset MOVE_DRILL_PECK, 38
    learnset MOVE_DOUBLE_EDGE, 49
    learnset MOVE_CLOSE_COMBAT, 53
    learnset MOVE_BRAVE_BIRD, 60
    terminatelearnset


levelup SPECIES_BIDOOF
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROLLOUT, 6
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_HYPER_FANG, 17
    learnset MOVE_YAWN, 21
    learnset MOVE_CRUNCH, 25
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_GRASS_KNOT, 33
    learnset MOVE_AQUA_TAIL, 35
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_SUPERPOWER, 40
    terminatelearnset


levelup SPECIES_BIBAREL
    learnset MOVE_THUNDER, 1
    learnset MOVE_FLIP_TURN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROLLOUT, 6
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_WATER_PULSE, 15
    learnset MOVE_HYPER_FANG, 19
    learnset MOVE_YAWN, 22
    learnset MOVE_CRUNCH, 26
    learnset MOVE_BODY_SLAM, 31
    learnset MOVE_GRASS_KNOT, 34
    learnset MOVE_AQUA_TAIL, 37
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_SUPERPOWER, 44
    terminatelearnset


levelup SPECIES_KRICKETOT
    learnset MOVE_GROWL, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_STRUGGLE_BUG, 6
    learnset MOVE_BUG_BITE, 16
    terminatelearnset


levelup SPECIES_KRICKETUNE
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_FURY_CUTTER, 10
    learnset MOVE_SLASH, 13
    learnset MOVE_BRICK_BREAK, 17
    learnset MOVE_FIRST_IMPRESSION, 20
    learnset MOVE_TAUNT, 22
    learnset MOVE_NIGHT_SLASH, 24
    learnset MOVE_X_SCISSOR, 26
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_CROSS_CHOP, 30
    learnset MOVE_LEECH_LIFE, 31
    learnset MOVE_STICKY_WEB, 33
    terminatelearnset


levelup SPECIES_SHINX
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_BITE, 9
    learnset MOVE_SPARK, 13
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_VOLT_SWITCH, 19
    learnset MOVE_THUNDER_FANG, 22
    learnset MOVE_THUNDER_WAVE, 26
    learnset MOVE_CRUNCH, 29
    learnset MOVE_QUICK_ATTACK, 31
    learnset MOVE_WILD_CHARGE, 34
    learnset MOVE_DOUBLE_EDGE, 37
    learnste MOVE_PSYCHIC_FANGS, 40
    terminatelearnset


levelup SPECIES_LUXIO
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_BITE, 9
    learnset MOVE_SPARK, 13
    learnset MOVE_HEADBUTT, 17
    learnset MOVE_VOLT_SWITCH, 21
    learnset MOVE_THUNDER_FANG, 24
    learnset MOVE_THUNDER_WAVE, 28
    learnset MOVE_CRUNCH, 31
    learnset MOVE_QUICK_ATTACK, 35
    learnset MOVE_WILD_CHARGE, 39
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_PSYCHIC_FANGS, 46
    terminatelearnset


levelup SPECIES_LUXRAY
    learnset MOVE_EXTREME_SPEED, 1
    learnset MOVE_PLAY_ROUGH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_BITE, 9
    learnset MOVE_SPARK, 13
    learnset MOVE_HEADBUTT, 17
    learnset MOVE_VOLT_SWITCH, 21
    learnset MOVE_THUNDER_FANG, 24
    learnset MOVE_THUNDER_WAVE, 28
    learnset MOVE_CRUNCH, 35
    learnset MOVE_QUICK_ATTACK, 38
    learnset MOVE_WILD_CHARGE, 43
    learnset MOVE_DOUBLE_EDGE, 47
    learnset MOVE_PSYCHIC_FANGS, 51
    learnset MOVE_VOLT_TACKLE, 60
    terminatelearnset


levelup SPECIES_BUDEW
    learnset MOVE_ABSORB, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_MEGA_DRAIN, 10
    learnset MOVE_SLEEP_POWDER, 13
    learnset MOVE_SLUDGE, 16
    learnset MOVE_SYNTHESIS, 21
    learnset MOVE_SLUDGE_BOMB, 26
    learnset MOVE_GIGA_DRAIN, 30
    terminatelearnset


levelup SPECIES_ROSERADE
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_SHADOW_BALL, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_MEGA_DRAIN, 10
    learnset MOVE_SLEEP_POWDER, 13
    learnset MOVE_SLUDGE, 16
    learnset MOVE_SYNTHESIS, 19
    learnset MOVE_MAGICAL_LEAF, 24
    learnset MOVE_TOXIC, 27
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_EXTRASENSORY, 36
    learnset MOVE_DAZZLING_GLEAM, 41
    learnset MOVE_SLUDGE_BOMB, 47
    learnset MOVE_PETAL_DANCE, 51
    learnset MOVE_GIGA_DRAIN, 56
    terminatelearnset


levelup SPECIES_CRANIDOS
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_PURSUIT, 10
    learnset MOVE_SMACK_DOWN, 14
    learnset MOVE_BITE, 19
    learnset MOVE_TAKE_DOWN, 23
    learnset MOVE_ROCK_SLIDE, 26
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_DOUBLE_EDGE, 35
    learnset MOVE_EARTHQUAKE, 41
    learnset MOVE_HEAD_SMASH, 52
    terminatelearnset


levelup SPECIES_RAMPARDOS
    learnset MOVE_BODY_PRESS, 1
    learnset MOVE_SUPERCELL_SLAM, 1
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_PURSUIT, 10
    learnset MOVE_SMACK_DOWN, 14
    learnset MOVE_BITE, 19
    learnset MOVE_TAKE_DOWN, 27
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_ZEN_HEADBUTT, 39
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_EARTHQUAKE, 51
    learnset MOVE_HEAD_SMASH, 67
    terminatelearnset


levelup SPECIES_SHIELDON
    learnset MOVE_TACKLE, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_HEADBUTT, 10
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_SWAGGER, 18
    learnset MOVE_ROCK_SLIDE, 23
    learnset MOVE_IRON_HEAD, 27
    learnset MOVE_ANCIENT_POWER, 30
    learnset MOVE_METAL_BURST, 34
    learnset MOVE_STONE_EDGE, 38
    learnset MOVE_FLASH_CANNON, 41
    learnset MOVE_EARTHQUAKE, 43
    terminatelearnset


levelup SPECIES_BASTIODON
    learnset MOVE_BODY_PRESS, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_HEADBUTT, 10
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_SWAGGER, 18
    learnset MOVE_ROCK_SLIDE, 27
    learnset MOVE_IRON_HEAD, 31
    learnset MOVE_ANCIENT_POWER, 34
    learnset MOVE_METAL_BURST, 38
    learnset MOVE_STONE_EDGE, 41
    learnset MOVE_FLASH_CANNON, 43
    learnset MOVE_EARTHQUAKE, 47
    terminatelearnset


levelup SPECIES_BURMY
    learnset MOVE_PROTECT, 1
    learnset MOVE_TACKLE, 10
    learnset MOVE_BUG_BITE, 15
    learnset MOVE_HIDDEN_POWER, 20
    terminatelearnset


levelup SPECIES_WORMADAM
    learnset MOVE_TACKLE, 1
    learnset MOVE_BULLET_SEED, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_CONFUSION, 18
    learnset MOVE_RAZOR_LEAF, 23
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_ATTRACT, 32
    learnset MOVE_PSYCHIC, 34
    learnset MOVE_LEAF_STORM, 37
    learnset MOVE_BUG_BUZZ, 39
    terminatelearnset


levelup SPECIES_MOTHIM
    learnset MOVE_TACKLE, 1
    learnset MOVE_AIR_CUTTER, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_CONFUSION, 18
    learnset MOVE_ACROBATICS, 23
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_AIR_SLASH, 32
    learnset MOVE_PSYCHIC, 34
    learnset MOVE_SILVER_WIND, 37
    learnset MOVE_BUG_BUZZ, 39
    terminatelearnset


levelup SPECIES_COMBEE
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_GUST, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_BUG_BITE, 13
    learnset MOVE_BUG_BUZZ, 29
    terminatelearnset


levelup SPECIES_VESPIQUEN
    learnset MOVE_REVERSAL, 1
    learnset MOVE_HURRICANE, 1
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_GUST, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_BUG_BITE, 21
    learnset MOVE_SLASH, 21
    learnset MOVE_SPIKES, 25
    learnset MOVE_POWER_GEM, 28
    learnset MOVE_HEAL_ORDER, 29
    learnset MOVE_AIR_SLASH, 33
    learnset MOVE_TOXIC, 35
    learnset MOVE_SLUDGE_BOMB, 37
    learnset MOVE_ATTACK_ORDER, 40
    terminatelearnset


levelup SPECIES_PACHIRISU
    learnset MOVE_GROWL, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_CHARM, 9
    learnset MOVE_SPARK, 13
    learnset MOVE_ENDURE, 17
    learnset MOVE_NUZZLE, 20
    learnset MOVE_SWIFT, 23
    learnset MOVE_THUNDER_WAVE, 26
    learnset MOVE_DISCHARGE, 31
    learnset MOVE_SUPER_FANG, 33
    learnset MOVE_HYPER_FANG, 35
    learnset MOVE_THUNDERBOLT, 37
    learnset MOVE_VOLT_SWITCH, 39
    learnset MOVE_SEED_BOMB, 42
    terminatelearnset


levelup SPECIES_BUIZEL
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_QUICK_ATTACK, 11
    learnset MOVE_WATER_PULSE, 15
    learnset MOVE_PURSUIT, 18
    learnset MOVE_SWIFT, 20
    learnset MOVE_AURORA_BEAM, 23
    learnset MOVE_AQUA_JET, 26
    learnset MOVE_DOUBLE_HIT, 30
    learnset MOVE_LIQUIDATION, 34
    learnset MOVE_CRUNCH, 37
    learnset MOVE_ICE_PUNCH, 39
    learnset MOVE_WAVE_CRASH, 44
    terminatelearnset


levelup SPECIES_FLOATZEL
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_QUICK_ATTACK, 11
    learnset MOVE_WATER_PULSE, 15
    learnset MOVE_PURSUIT, 18
    learnset MOVE_SWIFT, 20
    learnset MOVE_AURORA_BEAM, 23
    learnset MOVE_AQUA_JET, 26
    learnset MOVE_DOUBLE_HIT, 30
    learnset MOVE_BRICK_BREAK, 35
    learnset MOVE_LIQUIDATION, 40
    learnset MOVE_CRUNCH, 45
    learnset MOVE_ICE_PUNCH, 49
    learnset MOVE_WAVE_CRASH, 57
    terminatelearnset


levelup SPECIES_CHERUBI
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEAFAGE, 5
    learnset MOVE_SWIFT, 10
    learnset MOVE_MAGICAL_LEAF, 14
    learnset MOVE_DRAINING_KISS, 18
    learnset MOVE_TAKE_DOWN, 21
    learnset MOVE_GIGA_DRAIN, 25
    learnset MOVE_ATTRACT, 28
    learnset MOVE_SOLAR_BEAM, 32
    terminatelearnset


levelup SPECIES_CHERRIM
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEAFAGE, 5
    learnset MOVE_SWIFT, 10
    learnset MOVE_MAGICAL_LEAF, 14
    learnset MOVE_DRAINING_KISS, 18
    learnset MOVE_TAKE_DOWN, 21
    learnset MOVE_GIGA_DRAIN, 27
    learnset MOVE_ATTRACT, 31
    learnset MOVE_DAZZLING_GLEAM, 36
    learnset MOVE_SOLAR_BEAM, 39
    learnset MOVE_PETAL_BLIZZARD, 42
    terminatelearnset


levelup SPECIES_SHELLOS
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_MUD_SHOT, 6
    learnset MOVE_WATER_PULSE, 10
    learnset MOVE_MUD_BOMB, 15
    learnset MOVE_ROCK_SLIDE, 21
    learnset MOVE_AURORA_BEAM, 24
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_RECOVER, 32
    learnset MOVE_MUDDY_WATER, 35
    learnset MOVE_ANCIENT_POWER, 38
    learnset MOVE_EARTH_POWER, 41
    terminatelearnset


levelup SPECIES_GASTRODON
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_MUD_SHOT, 6
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_MUD_BOMB, 20
    learnset MOVE_ROCK_SLIDE, 24
    learnset MOVE_AURORA_BEAM, 28
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_ICE_BEAM, 33
    learnset MOVE_RECOVER, 36
    learnset MOVE_MUDDY_WATER, 39
    learnset MOVE_ANCIENT_POWER, 43
    learnset MOVE_EARTH_POWER, 46
    terminatelearnset


levelup SPECIES_AMBIPOM
    learnset MOVE_HAMMER_ARM, 1
    learnset MOVE_ACROBATICS, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_DOUBLE_KICK, 8
    learnset MOVE_AERIAL_ACE, 11
    learnset MOVE_FURY_SWIPES, 14
    learnset MOVE_FAKE_OUT, 17
    learnset MOVE_BODY_SLAM, 20
    learnset MOVE_KNOCK_OFF, 27
    learnset MOVE_BRICK_BREAK, 31
    learnset MOVE_DOUBLE_HIT, 36
    learnset MOVE_SHADOW_CLAW, 40
    learnset MOVE_TAIL_SLAP, 45
    learnset MOVE_BOUNCE, 49
    learnset MOVE_GUNK_SHOT, 54
    terminatelearnset


levelup SPECIES_DRIFLOON
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GUST, 5
    learnset MOVE_SUPERSONIC, 10
    learnset MOVE_NIGHT_SHADE, 13
    learnset MOVE_AERIAL_ACE, 17
    learnset MOVE_HEX, 22
    learnset MOVE_SELF_DESTRUCT, 26
    learnset MOVE_AIR_SLASH, 30
    learnset MOVE_SHADOW_BALL, 33
    learnset MOVE_HYPNOSIS, 37
    learnset MOVE_EXPLOSION, 40
    terminatelearnset


levelup SPECIES_DRIFBLIM
    learnset MOVE_TAILWIND, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GUST, 5
    learnset MOVE_SUPERSONIC, 10
    learnset MOVE_NIGHT_SHADE, 13
    learnset MOVE_AERIAL_ACE, 17
    learnset MOVE_HEX, 22
    learnset MOVE_SELF_DESTRUCT, 30
    learnset MOVE_FLY, 33
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_SHADOW_BALL, 40
    learnset MOVE_HYPNOSIS, 45
    learnset MOVE_EXPLOSION, 48
    terminatelearnset


levelup SPECIES_BUNEARY
    learnset MOVE_POUND, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_SLASH, 18
    learnset MOVE_DIG, 21
    learnset MOVE_FAKE_OUT, 23
    learnset MOVE_BRICK_BREAK, 27
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_BOUNCE, 33
    learnset MOVE_JUMP_KICK, 37
    learnset MOVE_PLAY_ROUGH, 41
    learnset MOVE_DOUBLE_EDGE, 43
    terminatelearnset


levelup SPECIES_LOPUNNY
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_POUND, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_SLASH, 18
    learnset MOVE_DIG, 21
    learnset MOVE_FAKE_OUT, 23
    learnset MOVE_BRICK_BREAK, 27
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_BOUNCE, 33
    learnset MOVE_JUMP_KICK, 37
    learnset MOVE_FIRE_PUNCH, 40
    learnset MOVE_PLAY_ROUGH, 43
    learnset MOVE_DOUBLE_EDGE, 47
    learnset MOVE_HIGH_JUMP_KICK, 51
    terminatelearnset


levelup SPECIES_MISMAGIUS
    learnset MOVE_MYSTICAL_FIRE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_DAZZLING_GLEAM, 38
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_PSYCHIC, 45
    learnset MOVE_POWER_GEM, 50
    terminatelearnset


levelup SPECIES_HONCHKROW
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_HURRICANE, 1
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_PECK, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_PURSUIT, 5
    learnset MOVE_WING_ATTACK, 10
    learnset MOVE_NIGHT_SHADE, 14
    learnset MOVE_ASSURANCE, 17
    learnset MOVE_AERIAL_ACE, 21
    learnset MOVE_THUNDER_WAVE, 31
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_DRILL_PECK, 39
    learnset MOVE_CONFUSE_RAY, 43
    learnset MOVE_FOUL_PLAY, 48
    learnset MOVE_SHADOW_BALL, 51
    learnset MOVE_BRAVE_BIRD, 55
    terminatelearnset


levelup SPECIES_GLAMEOW
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_BITE, 8
    learnset MOVE_HYPNOSIS, 12
    learnset MOVE_FEINT_ATTACK, 14
    learnset MOVE_SLASH, 18
    learnset MOVE_AERIAL_ACE, 22
    learnset MOVE_SUCKER_PUNCH, 27
    learnset MOVE_WAKE_UP_SLAP, 31
    learnset MOVE_SHADOW_CLAW, 34
    learnset MOVE_BODY_SLAM, 36
    learnset MOVE_PLAY_ROUGH, 38
    learnset MOVE_CRUNCH, 40
    terminatelearnset


levelup SPECIES_PURUGLY
    learnset MOVE_U_TURN, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_BITE, 8
    learnset MOVE_HYPNOSIS, 12
    learnset MOVE_FEINT_ATTACK, 14
    learnset MOVE_SLASH, 18
    learnset MOVE_AERIAL_ACE, 22
    learnset MOVE_SUCKER_PUNCH, 27
    learnset MOVE_WAKE_UP_SLAP, 33
    learnset MOVE_SHADOW_CLAW, 36
    learnset MOVE_BODY_SLAM, 39
    learnset MOVE_PLAY_ROUGH, 42
    learnset MOVE_CRUNCH, 44
    learnset MOVE_DOUBLE_EDGE, 46
    terminatelearnset


levelup SPECIES_CHINGLING
    learnset MOVE_WRAP, 1
    learnset MOVE_ASTONISH, 7
    learnset MOVE_CONFUSION, 10
    learnset MOVE_YAWN, 13
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_RECOVER, 20
    learnset MOVE_PSYCHIC, 25
    terminatelearnset


levelup SPECIES_STUNKY
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SMOKESCREEN, 5
    learnset MOVE_FURY_SWIPES, 10
    learnset MOVE_ACID_SPRAY, 13
    learnset MOVE_BITE, 17
    learnset MOVE_SLUDGE, 21
    learnset MOVE_SLASH, 24
    learnset MOVE_TOXIC, 26
    learnset MOVE_FLAMETHROWER, 29
    learnset MOVE_NIGHT_SLASH, 32
    learnset MOVE_SUCKER_PUNCH, 32
    learnset MOVE_CROSS_POISON, 35
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_CRUNCH, 41
    learnset MOVE_EXPLOSION, 43
    terminatelearnset


levelup SPECIES_SKUNTANK
    learnset MOVE_BELCH, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SMOKESCREEN, 5
    learnset MOVE_FURY_SWIPES, 10
    learnset MOVE_ACID_SPRAY, 13
    learnset MOVE_BITE, 17
    learnset MOVE_SLUDGE, 21
    learnset MOVE_SLASH, 24
    learnset MOVE_TOXIC, 27
    learnset MOVE_FLAMETHROWER, 29
    learnset MOVE_NIGHT_SLASH, 33
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_CROSS_POISON, 39
    learnset MOVE_BODY_SLAM, 42
    learnset MOVE_CRUNCH, 45
    learnset MOVE_EXPLOSION, 47
    learnset MOVE_GUNK_SHOT, 53
    terminatelearnset


levelup SPECIES_BRONZOR
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_CONFUSE_RAY, 7
    learnset MOVE_IMPRISON, 10
    learnset MOVE_HYPNOSIS, 13
    learnset MOVE_PSYWAVE, 16
    learnset MOVE_MAGNET_BOMB, 20
    learnset MOVE_PSYBEAM, 22
    learnset MOVE_SAFEGUARD, 25
    learnset MOVE_GYRO_BALL, 27
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_EXTRASENSORY, 33
    learnset MOVE_FLASH_CANNON, 36
    learnset MOVE_HEAVY_SLAM, 40
    learnset MOVE_EARTHQUAKE, 44
    terminatelearnset


levelup SPECIES_BRONZONG
    learnset MOVE_STEEL_BEAM, 1
    learnset MOVE_GRAVITY, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_CONFUSE_RAY, 7
    learnset MOVE_IMPRISON, 10
    learnset MOVE_HYPNOSIS, 13
    learnset MOVE_PSYWAVE, 16
    learnset MOVE_MAGNET_BOMB, 20
    learnset MOVE_PSYBEAM, 22
    learnset MOVE_SAFEGUARD, 25
    learnset MOVE_GYRO_BALL, 27
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_BLOCK, 33
    learnset MOVE_BODY_PRESS, 36
    learnset MOVE_EXTRASENSORY, 38
    learnset MOVE_FLASH_CANNON, 42
    learnset MOVE_HEAVY_SLAM, 45
    learnset MOVE_EARTHQUAKE, 49
    terminatelearnset


levelup SPECIES_BONSLY
    learnset MOVE_FAKE_TEARS, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_TACKLE, 4
    learnset MOVE_ROCK_THROW, 8
    learnset MOVE_TRAILBLAZE, 12
    learnset MOVE_ROCK_TOMB, 16
    learnset MOVE_MIMIC, 16
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_BODY_SLAM, 23
    learnset MOVE_LOW_KICK, 25
    learnset MOVE_SUCKER_PUNCH, 29
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_EARTHQUAKE, 36
    learnset MOVE_SPIKES, 40
    terminatelearnset


levelup SPECIES_MIMEJR
    learnset MOVE_POUND, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_DOUBLE_SLAP, 7
    learnset MOVE_ENCORE, 10
    learnset MOVE_PSYBEAM, 14
    learnset MOVE_DRAINING_KISS, 19
    learnset MOVE_MIMIC, 24
    learnset MOVE_THUNDER_WAVE, 28
    learnset MOVE_RECYCLE, 31
    learnset MOVE_SUCKER_PUNCH, 34
    learnset MOVE_SAFEGUARD, 36
    learnset MOVE_PSYCHIC, 40
    learnset MOVE_SHADOW_BALL, 43
    learnset MOVE_DAZZLING_GLEAM, 47
    terminatelearnset


levelup SPECIES_HAPPINY
    learnset MOVE_POUND, 1
    learnset MOVE_CHARM, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_DISARMING_VOICE, 8
    learnset MOVE_REFRESH, 10
    learnset MOVE_SEISMIC_TOSS, 14
    learnset MOVE_COVET, 16
    terminatelearnset


levelup SPECIES_CHATOT
    learnset MOVE_BRAVE_BIRD, 1
    learnset MOVE_PECK, 1
    learnset MOVE_ECHOED_VOICE, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_WING_ATTACK, 11
    learnset MOVE_SING, 14
    learnset MOVE_AIR_CUTTER, 18
    learnset MOVE_ENCORE, 21
    learnset MOVE_SWIFT, 23
    learnset MOVE_NIGHT_SHADE, 26
    learnset MOVE_HYPER_VOICE, 32
    learnset MOVE_ROOST, 35
    learnset MOVE_AIR_SLASH, 37
    learnset MOVE_HEAT_WAVE, 40
    learnset MOVE_DEFOG, 43
    learnset MOVE_BOOMBURST, 55
    terminatelearnset


levelup SPECIES_SPIRITOMB
    learnset MOVE_DREAM_EATER, 1
    learnset MOVE_OMINOUS_WIND, 1
    learnset MOVE_NIGHT_SHADE, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_SHADOW_SNEAK, 5
    learnset MOVE_FEINT_ATTACK, 10
    learnset MOVE_PAYBACK, 14
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUCKER_PUNCH, 25
    learnset MOVE_HYPNOSIS, 30
    learnset MOVE_SUCKER_PUNCH, 33
    learnset MOVE_SHADOW_BALL, 37
    learnset MOVE_DARK_PULSE, 40
    learnset MOVE_PSYCHIC, 44
    learnset MOVE_WILL_O_WISP, 46
    terminatelearnset


levelup SPECIES_GIBLE
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_BITE, 21
    learnset MOVE_SLASH, 25
    learnset MOVE_DRAGON_RAGE, 30
    learnset MOVE_DIG, 34
    learnset MOVE_BODY_SLAM, 39
    learnset MOVE_DRAGON_CLAW, 48
    learnset MOVE_ROCK_SLIDE, 52
    learnset MOVE_DRAGON_RUSH, 60
    terminatelearnset


levelup SPECIES_GABITE
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_BITE, 21
    learnset MOVE_SLASH, 25
    learnset MOVE_DUAL_CHOP, 30
    learnset MOVE_DIG, 37
    learnset MOVE_BODY_SLAM, 43
    learnset MOVE_THUNDER_FANG, 47
    learnset MOVE_HIGH_HORSEPOWER, 51
    learnset MOVE_ROCK_SLIDE, 56
    learnset MOVE_DRAGON_CLAW, 62
    learnset MOVE_DRAGON_RUSH, 74
    terminatelearnset


levelup SPECIES_GARCHOMP
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_BITE, 21
    learnset MOVE_SLASH, 25
    learnset MOVE_DUAL_CHOP, 30
    learnset MOVE_DIG, 37
    learnset MOVE_BODY_SLAM, 43
    learnset MOVE_CRUNCH, 48
    learnset MOVE_THUNDER_FANG, 52
    learnset MOVE_HIGH_HORSEPOWER, 59
    learnset MOVE_ROCK_SLIDE, 63
    learnset MOVE_DRAGON_CLAW, 71
    terminatelearnset


levelup SPECIES_MUNCHLAX
    learnset MOVE_LICK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_RECYCLE, 8
    learnset MOVE_BITE, 11
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_CHIP_AWAY, 18
    learnset MOVE_BRICK_BREAK, 23
    learnset MOVE_CRUNCH, 27
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_FACADE, 35
    learnset MOVE_STOMPING_TANTRUM, 38
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_GUNK_SHOT, 46
    learnset MOVE_DOUBLE_EDGE, 51
    terminatelearnset


levelup SPECIES_RIOLU
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FORCE_PALM, 1
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_COUNTER, 12
    learnset MOVE_ROCK_SMASH, 15
    learnset MOVE_BITE, 18
    learnset MOVE_BULLET_PUNCH, 21
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_SHADOW_CLAW, 35
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_CROSS_CHOP, 41
    terminatelearnset


levelup SPECIES_LUCARIO
    learnset MOVE_DRAIN_PUNCH, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_HIGH_JUMP_KICK, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FORCE_PALM, 1
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_COUNTER, 12
    learnset MOVE_ROCK_SMASH, 15
    learnset MOVE_BITE, 18
    learnset MOVE_BULLET_PUNCH, 21
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_AURA_SPHERE, 36
    learnset MOVE_SHADOW_CLAW, 39
    learnset MOVE_FLASH_CANNON, 43
    learnset MOVE_EXTREME_SPEED, 47
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_METEOR_MASH, 54
    learnset MOVE_CLOSE_COMBAT, 60
    terminatelearnset


levelup SPECIES_HIPPOPOTAS
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_BITE, 5
    learnset MOVE_YAWN, 10
    learnset MOVE_DIG, 17
    learnset MOVE_SAND_TOMB, 19
    learnset MOVE_ROCK_SLIDE, 22
    learnset MOVE_TAKE_DOWN, 25
    learnset MOVE_CRUNCH, 29
    learnset MOVE_ICE_FANG, 32
    learnset MOVE_SLACK_OFF, 35
    learnset MOVE_EARTHQUAKE, 38
    learnset MOVE_BODY_PRESS, 41
    learnset MOVE_DOUBLE_EDGE, 43
    terminatelearnset


levelup SPECIES_HIPPOWDON
    learnset MOVE_FISSURE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_BITE, 5
    learnset MOVE_YAWN, 10
    learnset MOVE_DIG, 17
    learnset MOVE_SAND_TOMB, 19
    learnset MOVE_ROCK_SLIDE, 22
    learnset MOVE_TAKE_DOWN, 25
    learnset MOVE_CRUNCH, 29
    learnset MOVE_FIRE_FANG, 32
    learnset MOVE_THUNDER_FANG, 32
    learnset MOVE_HEAVY_SLAM, 34
    learnset MOVE_ICE_FANG, 37
    learnset MOVE_SLACK_OFF, 39
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_BODY_PRESS, 46
    learnset MOVE_DOUBLE_EDGE, 49
    terminatelearnset


levelup SPECIES_SKORUPI
    learnset MOVE_POISON_STING, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 4
    learnset MOVE_BITE, 10
    learnset MOVE_SLUDGE, 14
    learnset MOVE_KNOCK_OFF, 18
    learnset MOVE_BUG_BITE, 22
    learnset MOVE_ROCK_TOMB, 26
    learnset MOVE_CROSS_POISON, 32
    learnset MOVE_TOXIC, 34
    learnset MOVE_NIGHT_SLASH, 37
    learnset MOVE_X_SCISSOR, 41
    learnset MOVE_CRUNCH, 43
    learnset MOVE_POISON_JAB, 46
    terminatelearnset


levelup SPECIES_DRAPION
    learnset MOVE_TOXIC_SPIKES, 1
    learnset MOVE_SPIKES, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 4
    learnset MOVE_BITE, 10
    learnset MOVE_SLUDGE, 14
    learnset MOVE_KNOCK_OFF, 18
    learnset MOVE_BUG_BITE, 22
    learnset MOVE_ROCK_TOMB, 26
    learnset MOVE_CROSS_POISON, 32
    learnset MOVE_NIGHT_SLASH, 35
    learnset MOVE_TOXIC, 39
    learnset MOVE_THROAT_CHOP, 42
    learnset MOVE_X_SCISSOR, 46
    learnset MOVE_CRUNCH, 49
    learnset MOVE_POISON_JAB, 52
    terminatelearnset


levelup SPECIES_CROAGUNK
    learnset MOVE_POISON_STING, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_HEADBUTT, 9
    learnset MOVE_PURSUIT, 13
    learnset MOVE_FORCE_PALM, 15
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_SLUDGE, 22
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_BRICK_BREAK, 32
    learnset MOVE_POISON_JAB, 36
    learnset MOVE_THROAT_CHOP, 39
    learnset MOVE_BOUNCE, 41
    terminatelearnset


levelup SPECIES_TOXICROAK
    learnset MOVE_DRAIN_PUNCH, 1
    learnset MOVE_VACUUM_WAVE, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_HEADBUTT, 9
    learnset MOVE_PURSUIT, 13
    learnset MOVE_FORCE_PALM, 15
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_SLUDGE, 25
    learnset MOVE_FAKE_OUT, 28
    learnset MOVE_ROCK_SLIDE, 31
    learnset MOVE_SUCKER_PUNCH, 33
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_POISON_JAB, 39
    learnset MOVE_THROAT_CHOP, 41
    learnset MOVE_BOUNCE, 45
    learnset MOVE_CROSS_CHOP, 50
    terminatelearnset


levelup SPECIES_CARNIVINE
    learnset MOVE_ABSORB, 1
    learnset MOVE_BIND, 1
    learnset MOVE_BITE, 8
    learnset MOVE_VINE_WHIP, 12
    learnset MOVE_INGRAIN, 17
    learnset MOVE_BULLET_SEED, 21
    learnset MOVE_FEINT_ATTACK, 24
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_CRUNCH, 33
    learnset MOVE_SLUDGE_BOMB, 37
    learnset MOVE_RAGE_POWDER, 40
    learnset MOVE_POWER_WHIP, 46
    terminatelearnset


levelup SPECIES_FINNEON
    learnset MOVE_POUND, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_GUST, 7
    learnset MOVE_ATTRACT, 10
    learnset MOVE_WATER_PULSE, 15
    learnset MOVE_AURORA_BEAM, 20
    learnset MOVE_SAFEGUARD, 24
    learnset MOVE_AQUA_RING, 27
    learnset MOVE_BOUNCE, 30
    learnset MOVE_AQUA_TAIL, 34
    learnset MOVE_ICE_BEAM, 37
    learnset MOVE_FLAIL, 39
    terminatelearnset


levelup SPECIES_LUMINEON
    learnset MOVE_TAILWIND, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_POUND, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_GUST, 7
    learnset MOVE_ATTRACT, 10
    learnset MOVE_WATER_PULSE, 19
    learnset MOVE_AURORA_BEAM, 23
    learnset MOVE_SAFEGUARD, 27
    learnset MOVE_AQUA_RING, 30
    learnset MOVE_DAZZLING_GLEAM, 32
    learnset MOVE_BOUNCE, 36
    learnset MOVE_AQUA_TAIL, 39
    learnset MOVE_ICE_BEAM, 42
    learnset MOVE_FLAIL, 44
    terminatelearnset


levelup SPECIES_MANTYKE
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_WING_ATTACK, 10
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_HEADBUTT, 19
    learnset MOVE_AIR_SLASH, 26
    learnset MOVE_ICE_BEAM, 29
    learnset MOVE_SURF, 32
    learnset MOVE_HYDRO_PUMP, 36
    terminatelearnset


levelup SPECIES_SNOVER
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LEAFAGE, 5
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_GRASS_WHISTLE, 16
    learnset MOVE_ICY_WIND, 19
    learnset MOVE_ICE_SHARD, 24
    learnset MOVE_MAGICAL_LEAF, 26
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_GIGA_DRAIN, 33
    learnset MOVE_ICE_PUNCH, 37
    learnset MOVE_DOUBLE_EDGE, 39
    learnset MOVE_WOOD_HAMMER, 42
    learnset MOVE_ICE_BEAM, 45
    terminatelearnset


levelup SPECIES_ABOMASNOW
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LEAFAGE, 5
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_GRASS_WHISTLE, 16
    learnset MOVE_ICY_WIND, 19
    learnset MOVE_ICE_SHARD, 24
    learnset MOVE_MAGICAL_LEAF, 27
    learnset MOVE_BODY_SLAM, 31
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_ICE_PUNCH, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_WOOD_HAMMER, 45
    learnset MOVE_ICE_BEAM, 48
    learnset MOVE_BLIZZARD, 54
    terminatelearnset


levelup SPECIES_WEAVILE
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_ICE_SHARD, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_FEINT_ATTACK, 14
    learnset MOVE_METAL_CLAW, 19
    learnset MOVE_BODY_SLAM, 23
    learnset MOVE_BRICK_BREAK, 25
    learnset MOVE_NIGHT_SLASH, 29
    learnset MOVE_FAKE_OUT, 32
    learnset MOVE_AVALANCHE, 36
    learnset MOVE_ICE_PUNCH, 39
    learnset MOVE_FOUL_PLAY, 45
    learnset MOVE_X_SCISSOR, 49
    learnset MOVE_ICICLE_CRASH, 54
    terminatelearnset


levelup SPECIES_MAGNEZONE
    learnset MOVE_VOLT_SWITCH, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SUPERSONIC, 4
    learnset MOVE_THUNDER_WAVE, 7
    learnset MOVE_MAGNET_BOMB, 11
    learnset MOVE_SONIC_BOOM, 14
    learnset MOVE_SHOCK_WAVE, 23
    learnset MOVE_SPARK, 25
    learnset MOVE_ELECTROWEB, 29
    learnset MOVE_FLASH_CANNON, 34
    learnset MOVE_TRI_ATTACK, 37
    learnset MOVE_EXPLOSION, 40
    learnset MOVE_THUNDERBOLT, 45
    learnset MOVE_FLASH_CANNON, 49
    learnset MOVE_ZAP_CANNON, 57
    terminatelearnset


levelup SPECIES_LICKILICKY
    learnset MOVE_SELF_DESTRUCT, 1
    learnset MOVE_LICK, 1
    learnset MOVE_SUPERSONIC, 6
    learnset MOVE_STOMP, 10
    learnset MOVE_BULLDOZE, 21
    learnset MOVE_BODY_SLAM, 26
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_STOMPING_TANTRUM, 39
    learnset MOVE_BODY_PRESS, 41
    learnset MOVE_MUDDY_WATER, 45
    learnset MOVE_ZEN_HEADBUTT, 48
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_POWER_WHIP, 55
    learnset MOVE_EARTHQUAKE, 59
    terminatelearnset


levelup SPECIES_RHYPERIOR
    learnset MOVE_ROCK_WRECKER, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMACK_DOWN, 6
    learnset MOVE_HORN_ATTACK, 10
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_STOMP, 21
    learnset MOVE_CHIP_AWAY, 23
    learnset MOVE_BODY_SLAM, 27
    learnset MOVE_DRILL_RUN, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_CRUNCH, 37
    learnset MOVE_HAMMER_ARM, 42
    learnset MOVE_POISON_JAB, 49
    learnset MOVE_HEAVY_SLAM, 55
    learnset MOVE_EARTHQUAKE, 60
    learnset MOVE_MEGAHORN, 64
    learnset MOVE_SUPERPOWER, 69
    learnset MOVE_STONE_EDGE, 74
    terminatelearnset


levelup SPECIES_TANGROWTH
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_RAGE_POWDER, 1
    learnset MOVE_SOLAR_BLADE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_STUN_SPORE, 5
    learnset MOVE_VINE_WHIP, 11
    learnset MOVE_SLEEP_POWDER, 15
    learnset MOVE_MEGA_DRAIN, 17
    learnset MOVE_POISON_POWDER, 17
    learnset MOVE_KNOCK_OFF, 20
    learnset MOVE_BODY_SLAM, 24
    learnset MOVE_SEED_BOMB, 28
    learnset MOVE_ANCIENT_POWER, 32
    learnset MOVE_BRICK_BREAK, 37
    learnset MOVE_ROCK_SLIDE, 41
    learnset MOVE_SLUDGE_BOMB, 45
    learnset MOVE_EARTHQUAKE, 50
    learnset MOVE_POWER_WHIP, 57
    terminatelearnset


levelup SPECIES_ELECTIVIRE
    learnset MOVE_VOLT_TACKLE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_THUNDER_SHOCK, 7
    learnset MOVE_SWIFT, 11
    learnset MOVE_SHOCK_WAVE, 15
    learnset MOVE_THUNDER_WAVE, 19
    learnset MOVE_LOW_KICK, 22
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_THUNDER_PUNCH, 33
    learnset MOVE_FIRE_PUNCH, 40
    learnset MOVE_THUNDER_WAVE, 45
    learnset MOVE_THUNDERBOLT, 49
    learnset MOVE_ROCK_SLIDE, 59
    learnset MOVE_CROSS_CHOP, 66
    learnset MOVE_SUPERCELL_SLAM, 75
    terminatelearnset


levelup SPECIES_MAGMORTAR
    learnset MOVE_SOLAR_BEAM, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_SMOKESCREEN, 8
    learnset MOVE_FEINT_ATTACK, 12
    learnset MOVE_CLEAR_SMOG, 15
    learnset MOVE_FIRE_SPIN, 15
    learnset MOVE_FLAME_WHEEL, 19
    learnset MOVE_CONFUSE_RAY, 24
    learnset MOVE_FLAME_BURST, 32
    learnset MOVE_FIRE_PUNCH, 37
    learnset MOVE_BRICK_BREAK, 40
    learnset MOVE_LAVA_PLUME, 45
    learnset MOVE_EARTHQUAKE, 50
    learnset MOVE_HEAT_WAVE, 59
    learnset MOVE_FOCUS_BLAST, 66
    learnset MOVE_FIRE_BLAST, 75
    terminatelearnset


levelup SPECIES_TOGEKISS
    learnset MOVE_FIRE_BLAST, 1
    learnset MOVE_HURRICANE, 1
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_MYSTICAL_FIRE, 36
    learnset MOVE_TRI_ATTACK, 38
    learnset MOVE_MOONBLAST, 42
    terminatelearnset


levelup SPECIES_YANMEGA
    learnset MOVE_REVERSAL, 1
    learnset MOVE_EXTREME_SPEED, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_FORESIGHT, 1
    learnset MOVE_DETECT, 5
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_SONIC_BOOM, 12
    learnset MOVE_BUG_BITE, 17
    learnset MOVE_WING_ATTACK, 19
    learnset MOVE_HYPNOSIS, 24
    learnset MOVE_U_TURN, 27
    learnset MOVE_LEECH_LIFE, 31
    learnset MOVE_ANCIENT_POWER, 37
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_BUG_BUZZ, 45
    learnset MOVE_AIR_SLASH, 48
    learnset MOVE_GIGA_DRAIN, 52
    terminatelearnset


levelup SPECIES_LEAFEON
    learnset MOVE_SOLAR_BLADE, 1
    learnset MOVE_COVET, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_BITE, 16
    learnset MOVE_RAZOR_LEAF, 20
    learnset MOVE_HELPING_HAND, 25
    learnset MOVE_DIG, 29
    learnset MOVE_SEED_BOMB, 34
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_X_SCISSOR, 43
    learnset MOVE_LEAF_BLADE, 48
    terminatelearnset


levelup SPECIES_GLACEON
    learnset MOVE_HYPER_BEAM, 1
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_BLIZZARD, 1
    learnset MOVE_COVET, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_BITE, 16
    learnset MOVE_AURORA_BEAM, 20
    learnset MOVE_HELPING_HAND, 25
    learnset MOVE_ICE_SHARD, 25
    learnset MOVE_MUD_SHOT, 29
    learnset MOVE_FREEZE_DRY, 34
    learnset MOVE_SHADOW_BALL, 38
    learnset MOVE_ICE_BEAM, 43
    learnset MOVE_HYPER_VOICE, 48
    terminatelearnset


levelup SPECIES_GLISCOR
    learnset MOVE_PSYCHIC_FANGS, 1
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_FEINT_ATTACK, 8
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_WING_ATTACK, 18
    learnset MOVE_SLASH, 23
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_X_SCISSOR, 37
    learnset MOVE_SKY_UPPERCUT, 41
    learnset MOVE_CRUNCH, 45
    learnset MOVE_HIGH_HORSEPOWER, 50
    learnset MOVE_ACROBATICS, 54
    learnset MOVE_CRABHAMMER, 58
    terminatelearnset


levelup SPECIES_MAMOSWINE
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_POWDER_SNOW, 6
    learnset MOVE_MUD_BOMB, 10
    learnset MOVE_ICE_SHARD, 14
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_BITE, 22
    learnset MOVE_AVALANCHE, 29
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_DOUBLE_EDGE, 47
    learnset MOVE_ROCK_SLIDE, 51
    learnset MOVE_BODY_PRESS, 55
    learnset MOVE_ICICLE_CRASH, 59
    learnset MOVE_EARTHQUAKE, 64
    terminatelearnset


levelup SPECIES_PORYGON_Z
    learnset MOVE_HYPER_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONVERSION, 1
    learnset MOVE_CONVERSION_2, 1
    learnset MOVE_SWIFT, 8
    learnset MOVE_PSYBEAM, 12
    learnset MOVE_THUNDER_SHOCK, 15
    learnset MOVE_RECYCLE, 20
    learnset MOVE_RECOVER, 24
    learnset MOVE_SIGNAL_BEAM, 28
    learnset MOVE_TELEPORT, 31
    learnset MOVE_THUNDER_WAVE, 35
    learnset MOVE_TRI_ATTACK, 46
    learnset MOVE_DISCHARGE, 51
    learnset MOVE_PSYSHOCK, 56
    learnset MOVE_TELEPORT, 56
    learnset MOVE_SHADOW_BALL, 61
    learnset MOVE_ELECTROWEB, 65
    learnset MOVE_ZAP_CANNON, 70
    terminatelearnset


levelup SPECIES_GALLADE
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_CONFUSION, 9
    learnset MOVE_TELEPORT, 12
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_MAGICAL_LEAF, 19
    learnset MOVE_PSYBEAM, 24
    learnset MOVE_HYPNOSIS, 29
    learnset MOVE_PSYCHO_CUT, 30
    learnset MOVE_NIGHT_SLASH, 37
    learnset MOVE_SACRED_SWORD, 42
    learnset MOVE_LEAF_BLADE, 47
    learnset MOVE_ROCK_SLIDE, 51
    learnset MOVE_ZEN_HEADBUTT, 56
    learnset MOVE_CLOSE_COMBAT, 60
    learnset MOVE_TELEPORT, 60
    terminatelearnset


levelup SPECIES_PROBOPASS
    learnset MOVE_ZAP_CANNON, 1
    learnset MOVE_DAZZLING_GLEAM, 1
    learnset MOVE_ROCK_THROW, 8
    learnset MOVE_THUNDER_WAVE, 20
    learnset MOVE_HEAVY_SLAM, 45
    learnset MOVE_EARTHQUAKE, 51
    learnset MOVE_HEAD_SMASH, 54
    learnset MOVE_EXPLOSION, 58
    terminatelearnset


levelup SPECIES_DUSKNOIR
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_DISABLE, 4
    learnset MOVE_SHADOW_SNEAK, 11
    learnset MOVE_NIGHT_SHADE, 15
    learnset MOVE_CONFUSE_RAY, 20
    learnset MOVE_WILL_O_WISP, 31
    learnset MOVE_DARK_PULSE, 35
    learnset MOVE_SHADOW_PUNCH, 38
    learnset MOVE_BRICK_BREAK, 45
    learnset MOVE_ROCK_SLIDE, 52
    learnset MOVE_PSYCHIC, 58
    learnset MOVE_TELEPORT, 60
    learnset MOVE_PHANTOM_FORCE, 65
    terminatelearnset


levelup SPECIES_FROSLASS
    learnset MOVE_FREEZE_DRY, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ICE_SHARD, 9
    learnset MOVE_ICY_WIND, 12
    learnset MOVE_AURORA_BEAM, 16
    learnset MOVE_BITE, 19
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_PSYCHIC, 49
    learnset MOVE_ICE_BEAM, 53
    learnset MOVE_WEATHER_BALL, 55
    terminatelearnset


levelup SPECIES_ROTOM
    learnset MOVE_WILL_O_WISP, 1
    learnset MOVE_REFLECT, 1
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_THUNDER_WAVE, 6
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_HEX, 22
    learnset MOVE_HYPER_VOICE, 30
    learnset MOVE_THUNDERBOLT, 37
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_THUNDER, 46
    learnset MOVE_OMINOUS_WIND, 60
    terminatelearnset


levelup SPECIES_UXIE
    learnset MOVE_CONFUSION, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_SWIFT, 8
    learnset MOVE_ENDURE, 16
    learnset MOVE_PSYBEAM, 24
    learnset MOVE_HYPNOSIS, 32
    learnset MOVE_RECOVER, 40
    learnset MOVE_EXTRASENSORY, 48
    learnset MOVE_REFLECT, 56
    learnset MOVE_LIGHT_SCREEN, 64
    learnset MOVE_DAZZLING_GLEAM, 72
    learnset MOVE_SHADOW_BALL, 80
    learnset MOVE_PSYCHIC, 88
    learnset MOVE_EXPLOSION, 100
    terminatelearnset


levelup SPECIES_MESPRIT
    learnset MOVE_CONFUSION, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_SWIFT, 8
    learnset MOVE_ENDURE, 16
    learnset MOVE_PSYBEAM, 24
    learnset MOVE_HYPNOSIS, 32
    learnset MOVE_ENERGY_BALL, 40
    learnset MOVE_EXTRASENSORY, 48
    learnset MOVE_REFLECT, 56
    learnset MOVE_ENCORE, 64
    learnset MOVE_DAZZLING_GLEAM, 72
    learnset MOVE_SHADOW_BALL, 80
    learnset MOVE_PSYCHIC, 88
    learnset MOVE_EXPLOSION, 100
    terminatelearnset


levelup SPECIES_AZELF
    learnset MOVE_CONFUSION, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_SWIFT, 8
    learnset MOVE_ENDURE, 16
    learnset MOVE_PSYBEAM, 24
    learnset MOVE_HYPNOSIS, 32
    learnset MOVE_ENERGY_BALL, 40
    learnset MOVE_EXTRASENSORY, 48
    learnset MOVE_GRASS_KNOT, 56
    learnset MOVE_DRAIN_PUNCH, 64
    learnset MOVE_DAZZLING_GLEAM, 72
    learnset MOVE_SHADOW_BALL, 80
    learnset MOVE_PSYCHIC, 88
    learnset MOVE_EXPLOSION, 100
    terminatelearnset


levelup SPECIES_DIALGA
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_ANCIENT_POWER, 13
    learnset MOVE_SLASH, 19
    learnset MOVE_DRAGON_CLAW, 34
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_FLASH_CANNON, 43
    learnset MOVE_AURA_SPHERE, 50
    learnset MOVE_METAL_BURST, 58
    learnset MOVE_EARTH_POWER, 64
    learnset MOVE_IRON_TAIL, 70
    learnset MOVE_ROAR_OF_TIME, 80
    terminatelearnset


levelup SPECIES_PALKIA
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_ANCIENT_POWER, 13
    learnset MOVE_SLASH, 19
    learnset MOVE_DRAGON_PULSE, 34
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_AQUA_TAIL, 43
    learnset MOVE_AURA_SPHERE, 50
    learnset MOVE_MIRROR_COAT, 58
    learnset MOVE_EARTH_POWER, 64
    learnset MOVE_HYDRO_PUMP, 70
    learnset MOVE_SPACIAL_REND, 80
    terminatelearnset


levelup SPECIES_HEATRAN
    learnset MOVE_FIRE_SPIN, 1
    learnset MOVE_LEER, 1
    learnset MOVE_METAL_CLAW, 6
    learnset MOVE_LEER, 9
    learnset MOVE_ANCIENT_POWER, 12
    learnset MOVE_FIRE_FANG, 17
    learnset MOVE_MUD_SHOT, 25
    learnset MOVE_CRUNCH, 34
    learnset MOVE_LAVA_PLUME, 45
    learnset MOVE_IRON_HEAD, 53
    learnset MOVE_EARTH_POWER, 62
    learnset MOVE_HEAT_WAVE, 70
    learnset MOVE_STONE_EDGE, 77
    learnset MOVE_MAGMA_STORM, 85
    terminatelearnset


levelup SPECIES_REGIGIGAS
    learnset MOVE_POUND, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_REVENGE, 9
    learnset MOVE_FACADE, 18
    learnset MOVE_PROTECT, 24
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_CRUSH_CLAW, 36
    learnset MOVE_BODY_PRESS, 42
    learnset MOVE_ZEN_HEADBUTT, 52
    learnset MOVE_HAMMER_ARM, 66
    learnset MOVE_HEAVY_SLAM, 74
    learnset MOVE_CRUSH_GRIP, 76
    learnset MOVE_HEAT_CRASH, 85
    terminatelearnset


levelup SPECIES_GIRATINA
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_ANCIENT_POWER, 13
    learnset MOVE_SLASH, 19
    learnset MOVE_DRAGON_PULSE, 34
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_PHANTOM_FORCE, 43
    learnset MOVE_AURA_SPHERE, 50
    learnset MOVE_PAIN_SPLIT, 58
    learnset MOVE_EARTH_POWER, 64
    learnset MOVE_OUTRAGE, 70
    learnset MOVE_SHADOW_FORCE, 80
    terminatelearnset


levelup SPECIES_CRESSELIA
    learnset MOVE_CONFUSION, 1
    learnset MOVE_LUNAR_DANCE, 1
    learnset MOVE_AURORA_BEAM, 12
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SAFEGUARD, 24
    learnset MOVE_SLASH, 30
    learnset MOVE_EXTRASENSORY, 38
    learnset MOVE_MOONLIGHT, 46
    learnset MOVE_PSYCHO_CUT, 52
    learnset MOVE_FUTURE_SIGHT, 57
    learnset MOVE_SOLAR_BEAM, 63
    learnset MOVE_PSYCHIC, 69
    learnset MOVE_LUNAR_BLESSING, 75
    learnset MOVE_MOONBLAST, 82
    terminatelearnset


levelup SPECIES_PHIONE
    learnset MOVE_BUBBLE, 1
    learnset MOVE_CHARM, 9
    learnset MOVE_SUPERSONIC, 16
    learnset MOVE_BUBBLE_BEAM, 24
    learnset MOVE_AURORA_BEAM, 30
    learnset MOVE_WHIRLPOOL, 35
    learnset MOVE_MUDDY_WATER, 49
    learnset MOVE_ICE_BEAM, 54
    learnset MOVE_DAZZLING_GLEAM, 61
    learnset MOVE_HYDRO_PUMP, 69
    terminatelearnset


levelup SPECIES_MANAPHY
    learnset MOVE_BUBBLE, 1
    learnset MOVE_CHARM, 9
    learnset MOVE_SUPERSONIC, 16
    learnset MOVE_BUBBLE_BEAM, 24
    learnset MOVE_AURORA_BEAM, 30
    learnset MOVE_WHIRLPOOL, 35
    learnset MOVE_ENERGY_BALL, 44
    learnset MOVE_SHADOW_BALL, 51
    learnset MOVE_MUDDY_WATER, 59
    learnset MOVE_ICE_BEAM, 67
    learnset MOVE_DAZZLING_GLEAM, 72
    learnset MOVE_HYDRO_PUMP, 80
    terminatelearnset


levelup SPECIES_DARKRAI
    learnset MOVE_OMINOUS_WIND, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_QUICK_ATTACK, 11
    learnset MOVE_HYPNOSIS, 20
    learnset MOVE_FEINT_ATTACK, 29
    learnset MOVE_NIGHTMARE, 38
    learnset MOVE_DARK_VOID, 50
    learnset MOVE_DREAM_EATER, 62
    learnset MOVE_DARK_PULSE, 71
    terminatelearnset


levelup SPECIES_SHAYMIN
    learnset MOVE_GROWTH, 1
    learnset MOVE_MAGICAL_LEAF, 10
    learnset MOVE_SYNTHESIS, 28
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_NATURAL_GIFT, 46
    learnset MOVE_RAGE_POWDER, 55
    learnset MOVE_ANCIENT_POWER, 64
    learnset MOVE_ENERGY_BALL, 73
    learnset MOVE_SYNTHESIS, 82
    learnset MOVE_EARTH_POWER, 91
    learnset MOVE_SEED_FLARE, 100
    terminatelearnset


levelup SPECIES_ARCEUS
    learnset MOVE_SEISMIC_TOSS, 1
    learnset MOVE_COSMIC_POWER, 1
    learnset MOVE_ANCIENT_POWER
    learnset MOVE_GRAVITY, 10
    learnset MOVE_EARTH_POWER, 20
    learnset MOVE_HYPER_VOICE, 30
    learnset MOVE_EXTREME_SPEED, 40
    learnset MOVE_LIQUIDATION, 50
    learnset MOVE_FUTURE_SIGHT, 60
    learnset MOVE_RECOVER, 70
    learnset MOVE_HYPER_BEAM, 80
    learnset MOVE_PERISH_SONG, 90
    learnset MOVE_JUDGMENT, 100
    terminatelearnset


levelup SPECIES_EGG
    learnset MOVE_SPLASH, 1
    terminatelearnset


levelup SPECIES_BAD_EGG
    learnset MOVE_SPLASH, 1
    terminatelearnset


levelup SPECIES_DEOXYS_ATTACK
    learnset MOVE_CONFUSION, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_TELEPORT, 13
    learnset MOVE_KNOCK_OFF, 19
    learnset MOVE_PURSUIT, 25
    learnset MOVE_PSYCHIC, 31
    learnset MOVE_ANCIENT_POWER, 39
    learnset MOVE_FOCUS_BLAST, 50
    learnset MOVE_RECOVER, 58
    learnset MOVE_PSYCHO_BOOST, 70
    learnset MOVE_OMINOUS_WIND, 80
    terminatelearnset


levelup SPECIES_DEOXYS_DEFENSE
    learnset MOVE_CONFUSION, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_TELEPORT, 13
    learnset MOVE_KNOCK_OFF, 19
    learnset MOVE_PURSUIT, 25
    learnset MOVE_PSYCHIC, 31
    learnset MOVE_ANCIENT_POWER, 39
    learnset MOVE_FOCUS_BLAST, 50
    learnset MOVE_RECOVER, 58
    learnset MOVE_PSYCHO_BOOST, 70
    learnset MOVE_OMINOUS_WIND, 80
    terminatelearnset


levelup SPECIES_DEOXYS_SPEED
    learnset MOVE_CONFUSION, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_TELEPORT, 13
    learnset MOVE_KNOCK_OFF, 19
    learnset MOVE_PURSUIT, 25
    learnset MOVE_PSYCHIC, 31
    learnset MOVE_ANCIENT_POWER, 39
    learnset MOVE_FOCUS_BLAST, 50
    learnset MOVE_RECOVER, 58
    learnset MOVE_PSYCHO_BOOST, 70
    learnset MOVE_OMINOUS_WIND, 80
    terminatelearnset


levelup SPECIES_WORMADAM_SANDY
    learnset MOVE_TACKLE, 1
    learnset MOVE_BULLET_SEED, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_CONFUSION, 18
    learnset MOVE_ROCK_SLIDE, 23
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_ATTRACT, 32
    learnset MOVE_PSYCHIC, 34
    learnset MOVE_EARTHQUAKE, 37
    learnset MOVE_BUG_BUZZ, 39
    terminatelearnset


levelup SPECIES_WORMADAM_TRASHY
    learnset MOVE_STEEL_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BULLET_SEED, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_CONFUSION, 18
    learnset MOVE_MIRROR_SHOT, 23
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_ATTRACT, 32
    learnset MOVE_PSYCHIC, 34
    learnset MOVE_IRON_HEAD, 37
    learnset MOVE_BUG_BUZZ, 39
    terminatelearnset


levelup SPECIES_GIRATINA_ORIGIN
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_ANCIENT_POWER, 13
    learnset MOVE_SLASH, 19
    learnset MOVE_DRAGON_PULSE, 34
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_PHANTOM_FORCE, 43
    learnset MOVE_AURA_SPHERE, 50
    learnset MOVE_PAIN_SPLIT, 58
    learnset MOVE_EARTH_POWER, 64
    learnset MOVE_OUTRAGE, 70
    learnset MOVE_SHADOW_FORCE, 80
    terminatelearnset


levelup SPECIES_SHAYMIN_SKY
    learnset MOVE_GROWTH, 1
    learnset MOVE_MAGICAL_LEAF, 10
    learnset MOVE_SYNTHESIS, 28
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_NATURAL_GIFT, 46
    learnset MOVE_RAGE_POWDER, 55
    learnset MOVE_AIR_SLASH, 64
    learnset MOVE_ENERGY_BALL, 73
    learnset MOVE_SYNTHESIS, 82
    learnset MOVE_EARTH_POWER, 91
    learnset MOVE_SEED_FLARE, 100
    terminatelearnset


levelup SPECIES_ROTOM_HEAT
    learnset MOVE_WILL_O_WISP, 1
    learnset MOVE_REFLECT, 1
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_THUNDER_WAVE, 6
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_FLAME_BURST, 22
    learnset MOVE_HYPER_VOICE, 30
    learnset MOVE_THUNDERBOLT, 37
    learnset MOVE_FLAMETHROWER, 42
    learnset MOVE_THUNDER, 46
    learnset MOVE_FIRE_BLAST, 60
    terminatelearnset


levelup SPECIES_ROTOM_WASH
    learnset MOVE_WHIRLPOOL, 1
    learnset MOVE_REFLECT, 1
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_THUNDER_WAVE, 6
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_BUBBLE_BEAM, 22
    learnset MOVE_HYPER_VOICE, 30
    learnset MOVE_THUNDERBOLT, 37
    learnset MOVE_SCALD, 42
    learnset MOVE_THUNDER, 46
    learnset MOVE_HYDRO_PUMP, 60
    terminatelearnset


levelup SPECIES_ROTOM_FROST
    learnset MOVE_AURORA_VEIL, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_THUNDER_WAVE, 6
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_AURORA_BEAM, 22
    learnset MOVE_HYPER_VOICE, 30
    learnset MOVE_THUNDERBOLT, 37
    learnset MOVE_ICE_BEAM, 42
    learnset MOVE_THUNDER, 46
    learnset MOVE_BLIZZARD, 60
    terminatelearnset


levelup SPECIES_ROTOM_FAN
    learnset MOVE_TAILWIND, 1
    learnset MOVE_REFLECT, 1
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_THUNDER_WAVE, 6
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_AIR_CUTTER, 22
    learnset MOVE_HYPER_VOICE, 30
    learnset MOVE_THUNDERBOLT, 37
    learnset MOVE_AIR_SLASH, 42
    learnset MOVE_THUNDER, 46
    learnset MOVE_HURRICANE, 60
    terminatelearnset


levelup SPECIES_ROTOM_MOW
    learnset MOVE_SLEEP_POWDER, 1
    learnset MOVE_REFLECT, 1
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_THUNDER_WAVE, 6
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_MAGICAL_LEAF, 22
    learnset MOVE_HYPER_VOICE, 30
    learnset MOVE_THUNDERBOLT, 37
    learnset MOVE_ENERGY_BALL, 42
    learnset MOVE_THUNDER, 46
    learnset MOVE_LEAF_STORM, 60
    terminatelearnset




levelup SPECIES_508
    terminatelearnset


levelup SPECIES_509
    terminatelearnset


levelup SPECIES_510
    terminatelearnset


levelup SPECIES_511
    terminatelearnset


levelup SPECIES_512
    terminatelearnset


levelup SPECIES_513
    terminatelearnset


levelup SPECIES_514
    terminatelearnset


levelup SPECIES_515
    terminatelearnset


levelup SPECIES_516
    terminatelearnset


levelup SPECIES_517
    terminatelearnset


levelup SPECIES_518
    terminatelearnset


levelup SPECIES_519
    terminatelearnset


levelup SPECIES_520
    terminatelearnset


levelup SPECIES_521
    terminatelearnset


levelup SPECIES_522
    terminatelearnset


levelup SPECIES_523
    terminatelearnset


levelup SPECIES_524
    terminatelearnset


levelup SPECIES_525
    terminatelearnset


levelup SPECIES_526
    terminatelearnset


levelup SPECIES_527
    terminatelearnset


levelup SPECIES_528
    terminatelearnset


levelup SPECIES_529
    terminatelearnset


levelup SPECIES_530
    terminatelearnset


levelup SPECIES_531
    terminatelearnset


levelup SPECIES_532
    terminatelearnset


levelup SPECIES_533
    terminatelearnset


levelup SPECIES_534
    terminatelearnset


levelup SPECIES_535
    terminatelearnset


levelup SPECIES_536
    terminatelearnset


levelup SPECIES_537
    terminatelearnset


levelup SPECIES_538
    terminatelearnset


levelup SPECIES_539
    terminatelearnset


levelup SPECIES_540
    terminatelearnset


levelup SPECIES_541
    terminatelearnset


levelup SPECIES_542
    terminatelearnset


levelup SPECIES_543
    terminatelearnset


levelup SPECIES_VICTINI
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FLAME_CHARGE, 5
    learnset MOVE_CONFUSION, 9
    learnset MOVE_INCINERATE, 14
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_FLAME_BURST, 39
    learnset MOVE_ZEN_HEADBUTT, 46
    learnset MOVE_REVERSAL, 54
    learnset MOVE_SEARING_SHOT, 63
    learnset MOVE_DOUBLE_EDGE, 67
    learnset MOVE_FLARE_BLITZ, 75
    learnset MOVE_PSYCHIC, 80
    learnset MOVE_V_CREATE, 90
    terminatelearnset


levelup SPECIES_SNIVY
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 4
    learnset MOVE_VINE_WHIP, 7
    learnset MOVE_WRAP, 10
    learnset MOVE_LEAF_TORNADO, 16
    learnset MOVE_MEGA_DRAIN, 22
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_LEAF_BLADE, 28
    learnset MOVE_IRON_TAIL, 32
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_KNOCK_OFF, 40
    learnset MOVE_LEAF_STORM, 43
    terminatelearnset


levelup SPECIES_SERVINE
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 4
    learnset MOVE_VINE_WHIP, 7
    learnset MOVE_WRAP, 10
    learnset MOVE_LEAF_TORNADO, 20
    learnset MOVE_MEGA_DRAIN, 25
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_LEAF_BLADE, 35
    learnset MOVE_IRON_TAIL, 38
    learnset MOVE_GIGA_DRAIN, 42
    learnset MOVE_KNOCK_OFF, 46
    learnset MOVE_LEAF_STORM, 51
    terminatelearnset


levelup SPECIES_SERPERIOR
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 4
    learnset MOVE_VINE_WHIP, 7
    learnset MOVE_WRAP, 10
    learnset MOVE_LEAF_TORNADO, 20
    learnset MOVE_MEGA_DRAIN, 25
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_DRAGON_PULSE, 36
    learnset MOVE_LEAF_BLADE, 41
    learnset MOVE_IRON_TAIL, 46
    learnset MOVE_GIGA_DRAIN, 51
    learnset MOVE_KNOCK_OFF, 57
    learnset MOVE_LEAF_STORM, 62
    terminatelearnset


levelup SPECIES_TEPIG
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 3
    learnset MOVE_EMBER, 7
    learnset MOVE_FLAME_WHEEL, 15
    learnset MOVE_ROLLOUT, 19
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_HEAT_CRASH, 28
    learnset MOVE_SUCKER_PUNCH, 31
    learnset MOVE_FLAMETHROWER, 35
    learnset MOVE_HEAD_SMASH, 41
    learnset MOVE_FLARE_BLITZ, 48
    terminatelearnset


levelup SPECIES_PIGNITE
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 3
    learnset MOVE_EMBER, 7
    learnset MOVE_FLAME_WHEEL, 15
    learnset MOVE_KARATE_CHOP, 16
    learnset MOVE_ROLLOUT, 20
    learnset MOVE_TAKE_DOWN, 25
    learnset MOVE_BRICK_BREAK, 29
    learnset MOVE_HEAT_CRASH, 32
    learnset MOVE_SUCKER_PUNCH, 34
    learnset MOVE_FLAMETHROWER, 40
    learnset MOVE_SUPERPOWER, 49
    learnset MOVE_HEAD_SMASH, 55
    learnset MOVE_FLARE_BLITZ, 62
    terminatelearnset


levelup SPECIES_EMBOAR
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_WILD_CHARGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 3
    learnset MOVE_EMBER, 7
    learnset MOVE_FLAME_WHEEL, 15
    learnset MOVE_KARATE_CHOP, 16
    learnset MOVE_ROLLOUT, 20
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_HEAT_CRASH, 33
    learnset MOVE_SUCKER_PUNCH, 36
    learnset MOVE_FLAMETHROWER, 45
    learnset MOVE_THROAT_CHOP, 50
    learnset MOVE_SUPERPOWER, 57
    learnset MOVE_HEAD_SMASH, 62
    learnset MOVE_FLARE_BLITZ, 69
    terminatelearnset


levelup SPECIES_OSHAWOTT
    learnset MOVE_TACKLE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_TAIL_WHIP, 5
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_FURY_CUTTER, 11
    learnset MOVE_RAZOR_SHELL, 16
    learnset MOVE_AERIAL_ACE, 20
    learnset MOVE_REVENGE, 25
    learnset MOVE_AQUA_JET, 27
    learnset MOVE_AVALANCHE, 31
    learnset MOVE_AQUA_TAIL, 36
    learnset MOVE_NIGHT_SLASH, 39
    learnset MOVE_SACRED_SWORD, 43
    terminatelearnset


levelup SPECIES_DEWOTT
    learnset MOVE_TACKLE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_TAIL_WHIP, 5
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_FURY_CUTTER, 11
    learnset MOVE_RAZOR_SHELL, 19
    learnset MOVE_AERIAL_ACE, 23
    learnset MOVE_REVENGE, 28
    learnset MOVE_AQUA_JET, 32
    learnset MOVE_AVALANCHE, 36
    learnset MOVE_AQUA_TAIL, 41
    learnset MOVE_NIGHT_SLASH, 44
    learnset MOVE_SACRED_SWORD, 48
    terminatelearnset


levelup SPECIES_SAMUROTT
    learnset MOVE_HYDRO_PUMP, 1
    learnset MOVE_DETECT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_TAIL_WHIP, 5
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_FURY_CUTTER, 11
    learnset MOVE_RAZOR_SHELL, 19
    learnset MOVE_AERIAL_ACE, 23
    learnset MOVE_REVENGE, 28
    learnset MOVE_AQUA_JET, 32
    learnset MOVE_BRICK_BREAK, 37
    learnset MOVE_AVALANCHE, 41
    learnset MOVE_AQUA_TAIL, 46
    learnset MOVE_SMART_STRIKE, 50
    learnset MOVE_DRILL_RUN, 54
    learnset MOVE_SACRED_SWORD, 60
    terminatelearnset


levelup SPECIES_PATRAT
    learnset MOVE_TACKLE, 1
    learnset MOVE_BITE, 6
    learnset MOVE_BIDE, 10
    learnset MOVE_DETECT, 12
    learnset MOVE_SAND_ATTACK, 14
    learnset MOVE_CRUNCH, 18
    learnset MOVE_HYPNOSIS, 20
    learnset MOVE_SUPER_FANG, 23
    learnset MOVE_HYPER_FANG, 25
    learnset MOVE_DIG, 27
    learnset MOVE_SEED_BOMB, 29
    learnset MOVE_ZEN_HEADBUTT, 32
    learnset MOVE_DOUBLE_EDGE, 34
    terminatelearnset


levelup SPECIES_WATCHOG
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_GIGA_IMPACT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BITE, 6
    learnset MOVE_BIDE, 10
    learnset MOVE_DETECT, 12
    learnset MOVE_SAND_ATTACK, 14
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_CRUNCH, 23
    learnset MOVE_HYPNOSIS, 25
    learnset MOVE_SUPER_FANG, 27
    learnset MOVE_HYPER_FANG, 30
    learnset MOVE_DIG, 32
    learnset MOVE_SEED_BOMB, 34
    learnset MOVE_ZEN_HEADBUTT, 37
    learnset MOVE_DOUBLE_EDGE, 39
    terminatelearnset


levelup SPECIES_LILLIPUP
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ODOR_SLEUTH, 5
    learnset MOVE_BITE, 8
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_RETALIATE, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_CRUNCH, 25
    learnset MOVE_PLAY_ROUGH, 29
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_PSYCHIC_FANGS, 37
    terminatelearnset


levelup SPECIES_HERDIER
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ODOR_SLEUTH, 5
    learnset MOVE_BITE, 8
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_RETALIATE, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_YAWN, 23
    learnset MOVE_ICE_FANG, 26
    learnset MOVE_CRUNCH, 29
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_WILD_CHARGE, 37
    learnset MOVE_PLAY_ROUGH, 41
    learnset MOVE_PSYCHIC_FANGS, 46
    terminatelearnset


levelup SPECIES_STOUTLAND
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ODOR_SLEUTH, 5
    learnset MOVE_BITE, 8
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_RETALIATE, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_YAWN, 25
    learnset MOVE_ICE_FANG, 29
    learnset MOVE_CRUNCH, 33
    learnset MOVE_BODY_SLAM, 37
    learnset MOVE_WILD_CHARGE, 42
    learnset MOVE_PLAY_ROUGH, 47
    learnset MOVE_PSYCHIC_FANGS, 51
    learnset MOVE_SUPERPOWER, 55
    learnset MOVE_DOUBLE_EDGE, 60
    terminatelearnset


levelup SPECIES_PURRLOIN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_SAND_ATTACK, 6
    learnset MOVE_FAKE_OUT, 12
    learnset MOVE_FURY_SWIPES, 13
    learnset MOVE_PURSUIT, 15
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_SLASH, 23
    learnset MOVE_SUCKER_PUNCH, 27
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_NIGHT_SLASH, 31
    learnset MOVE_PLAY_ROUGH, 34
    learnset MOVE_ENDEAVOR, 36
    learnset MOVE_QUICK_ATTACK, 37
    terminatelearnset


levelup SPECIES_LIEPARD
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_SNARL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_SAND_ATTACK, 6
    learnset MOVE_FAKE_OUT, 12
    learnset MOVE_FURY_SWIPES, 13
    learnset MOVE_PURSUIT, 17
    learnset MOVE_ASSURANCE, 21
    learnset MOVE_SLASH, 25
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_NIGHT_SLASH, 33
    learnset MOVE_PLAY_ROUGH, 36
    learnset MOVE_ENDEAVOR, 39
    learnset MOVE_QUICK_ATTACK, 41
    terminatelearnset


levelup SPECIES_PANSAGE
    learnset MOVE_SCRATCH, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_LEER, 4
    learnset MOVE_LICK, 7
    learnset MOVE_VINE_WHIP, 10
    learnset MOVE_FURY_SWIPES, 13
    learnset MOVE_BITE, 16
    learnset MOVE_SEED_BOMB, 22
    learnset MOVE_FLING, 25
    learnset MOVE_ACROBATICS, 29
    learnset MOVE_GRASS_KNOT, 32
    learnset MOVE_CRUNCH, 35
    learnset MOVE_LEAF_STORM, 39
    terminatelearnset


levelup SPECIES_SIMISAGE
    learnset MOVE_FLAIL, 1
    learnset MOVE_FURY_SWIPES, 1
    learnset MOVE_CRUNCH, 1
    learnset MOVE_SEED_BOMB, 1
    learnset MOVE_LEAF_STORM, 50
    terminatelearnset


levelup SPECIES_PANSEAR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 4
    learnset MOVE_LICK, 7
    learnset MOVE_FLAME_WHEEL, 10
    learnset MOVE_FURY_SWIPES, 13
    learnset MOVE_BITE, 16
    learnset MOVE_FLAME_BURST, 22
    learnset MOVE_FLING, 25
    learnset MOVE_ACROBATICS, 29
    learnset MOVE_FLAMETHROWER, 32
    learnset MOVE_CRUNCH, 35
    learnset MOVE_FIRE_BLAST, 39
    terminatelearnset


levelup SPECIES_SIMISEAR
    learnset MOVE_FLAIL, 1
    learnset MOVE_FURY_SWIPES, 1
    learnset MOVE_CRUNCH, 1
    learnset MOVE_FLAMETHROWER, 1
    learnset MOVE_FIRE_BLAST, 50
    terminatelearnset


levelup SPECIES_PANPOUR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_LEER, 4
    learnset MOVE_LICK, 7
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_FURY_SWIPES, 13
    learnset MOVE_BITE, 16
    learnset MOVE_BUBBLE_BEAM, 22
    learnset MOVE_FLING, 25
    learnset MOVE_ACROBATICS, 29
    learnset MOVE_SCALD, 32
    learnset MOVE_CRUNCH, 35
    learnset MOVE_HYDRO_PUMP, 39
    terminatelearnset


levelup SPECIES_SIMIPOUR
    learnset MOVE_FLAIL, 1
    learnset MOVE_FURY_SWIPES, 1
    learnset MOVE_CRUNCH, 1
    learnset MOVE_SCALD, 1
    learnset MOVE_HYDRO_PUMP, 50
    terminatelearnset


levelup SPECIES_MUNNA
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_SUPERSONIC, 5
    learnset MOVE_PSYBEAM, 10
    learnset MOVE_HYPNOSIS, 13
    learnset MOVE_IMPRISON, 16
    learnset MOVE_MOONLIGHT, 19
    learnset MOVE_YAWN, 23
    learnset MOVE_EXTRASENSORY, 25
    learnset MOVE_NIGHTMARE, 28
    learnset MOVE_ALLY_SWITCH, 32
    learnset MOVE_PSYCHIC, 37
    learnset MOVE_MOONBLAST, 40
    learnset MOVE_THUNDER_WAVE, 43
    learnset MOVE_FUTURE_SIGHT, 45
    terminatelearnset


levelup SPECIES_MUSHARNA
    learnset MOVE_ENERGY_BALL, 1
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_MISTY_EXPLOSION, 1
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_PSYCHIC, 41
    learnset MOVE_MOONBLAST, 46
    learnset MOVE_THUNDER_WAVE, 49
    learnset MOVE_FUTURE_SIGHT, 53
    terminatelearnset


levelup SPECIES_PIDOVE
    learnset MOVE_GUST, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEER, 5
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_WING_ATTACK, 13
    learnset MOVE_HYPNOSIS, 18
    learnset MOVE_ROOST, 21
    learnset MOVE_DUAL_WINGBEAT, 25
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_AIR_SLASH, 33
    learnset MOVE_TAILWIND, 37
    learnset MOVE_FACADE, 41
    learnset MOVE_BRAVE_BIRD, 44
    terminatelearnset


levelup SPECIES_TRANQUILL
    learnset MOVE_GUST, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEER, 5
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_WING_ATTACK, 13
    learnset MOVE_HYPNOSIS, 18
    learnset MOVE_ROOST, 25
    learnset MOVE_DUAL_WINGBEAT, 29
    learnset MOVE_NIGHT_SLASH, 32
    learnset MOVE_BODY_SLAM, 35
    learnset MOVE_AIR_SLASH, 39
    learnset MOVE_TAILWIND, 43
    learnset MOVE_FACADE, 46
    learnset MOVE_BRAVE_BIRD, 48
    terminatelearnset


levelup SPECIES_UNFEZANT
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_WISH, 1
    learnset MOVE_GUST, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEER, 5
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_WING_ATTACK, 14
    learnset MOVE_HYPNOSIS, 20
    learnset MOVE_ROOST, 26
    learnset MOVE_DUAL_WINGBEAT, 30
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_BODY_SLAM, 37
    learnset MOVE_AIR_SLASH, 42
    learnset MOVE_TAILWIND, 46
    learnset MOVE_FACADE, 51
    learnset MOVE_BRAVE_BIRD, 57
    terminatelearnset


levelup SPECIES_BLITZLE
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 4
    learnset MOVE_SHOCK_WAVE, 12
    learnset MOVE_THUNDER_WAVE, 15
    learnset MOVE_FLAME_CHARGE, 19
    learnset MOVE_PURSUIT, 21
    learnset MOVE_SPARK, 24
    learnset MOVE_BODY_SLAM, 27
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_WILD_CHARGE, 37
    learnset MOVE_DRILL_RUN, 41
    learnset MOVE_EXTREME_SPEED, 45
    learnset MOVE_DOUBLE_EDGE, 47
    terminatelearnset


levelup SPECIES_ZEBSTRIKA
    learnset MOVE_VOLT_SWITCH, 1
    learnset MOVE_THUNDER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 4
    learnset MOVE_SHOCK_WAVE, 12
    learnset MOVE_THUNDER_WAVE, 15
    learnset MOVE_FLAME_CHARGE, 19
    learnset MOVE_PURSUIT, 21
    learnset MOVE_SPARK, 27
    learnset MOVE_BODY_SLAM, 31
    learnset MOVE_DISCHARGE, 36
    learnset MOVE_WILD_CHARGE, 41
    learnset MOVE_DRILL_RUN, 46
    learnset MOVE_EXTREME_SPEED, 50
    learnset MOVE_DOUBLE_EDGE, 55
    learnset MOVE_VOLT_TACKLE, 67
    terminatelearnset


levelup SPECIES_ROGGENROLA
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_ROCK_THROW, 10
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_SMACK_DOWN, 20
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_ROCK_SLIDE, 31
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_BODY_PRESS, 37
    learnset MOVE_HEAVY_SLAM, 39
    learnset MOVE_EXPLOSION, 40
    terminatelearnset


levelup SPECIES_BOLDORE
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_ROCK_THROW, 15
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_SMACK_DOWN, 24
    learnset MOVE_BULLDOZE, 29
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_BODY_SLAM, 44
    learnset MOVE_BODY_PRESS, 47
    learnset MOVE_EXPLOSION, 50
    learnset MOVE_HEAVY_SLAM, 52
    terminatelearnset


levelup SPECIES_GIGALITH
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_ROCK_THROW, 15
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_SMACK_DOWN, 24
    learnset MOVE_BULLDOZE, 29
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_BODY_SLAM, 44
    learnset MOVE_EXPLOSION, 50
    learnset MOVE_BODY_PRESS, 52
    learnset MOVE_HEAVY_SLAM, 57
    learnset MOVE_SUPERPOWER, 61
    learnset MOVE_STONE_EDGE, 65
    terminatelearnset


levelup SPECIES_WOOBAT
    learnset MOVE_GUST, 1
    learnset MOVE_ATTRACT, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_HEART_STAMP, 11
    learnset MOVE_AIR_CUTTER, 16
    learnset MOVE_ASSURANCE, 19
    learnset MOVE_IMPRISON, 23
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_AIR_SLASH, 32
    learnset MOVE_PSYCHIC, 35
    learnset MOVE_ROOST, 37
    terminatelearnset


levelup SPECIES_SWOOBAT
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_GUST, 1
    learnset MOVE_ATTRACT, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_HEART_STAMP, 13
    learnset MOVE_AIR_CUTTER, 18
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_IMPRISON, 24
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_CONFUSE_RAY, 32
    learnset MOVE_AIR_SLASH, 35
    learnset MOVE_PSYCHIC, 38
    learnset MOVE_ROOST, 40
    learnset MOVE_HURRICANE, 46
    terminatelearnset


levelup SPECIES_DRILBUR
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_SCRATCH, 4
    learnset MOVE_BULLDOZE, 11
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_SLASH, 20
    learnset MOVE_DIG, 25
    learnset MOVE_CRUSH_CLAW, 28
    learnset MOVE_ROCK_SLIDE, 31
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_DRILL_RUN, 36
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_X_SCISSOR, 42
    learnset MOVE_EARTHQUAKE, 49
    terminatelearnset


levelup SPECIES_EXCADRILL
    learnset MOVE_POISON_JAB, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_SCRATCH, 4
    learnset MOVE_BULLDOZE, 11
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_SLASH, 21
    learnset MOVE_DIG, 26
    learnset MOVE_CRUSH_CLAW, 29
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_BRICK_BREAK, 37
    learnset MOVE_DRILL_RUN, 42
    learnset MOVE_DOUBLE_EDGE, 46
    learnset MOVE_X_SCISSOR, 49
    learnset MOVE_EARTHQUAKE, 59
    terminatelearnset


levelup SPECIES_AUDINO
    learnset MOVE_FOLLOW_ME, 1
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_DISARMING_VOICE, 8
    learnset MOVE_HELPING_HAND, 11
    learnset MOVE_DOUBLE_SLAP, 14
    learnset MOVE_HEADBUTT, 19
    learnset MOVE_ZEN_HEADBUTT, 26
    learnset MOVE_ATTRACT, 29
    learnset MOVE_TAKE_DOWN, 32
    learnset MOVE_HEAL_PULSE, 35
    learnset MOVE_WISH, 37
    learnset MOVE_HYPER_VOICE, 41
    learnset MOVE_PSYCHIC, 44
    learnset MOVE_ENCORE, 47
    terminatelearnset


levelup SPECIES_TIMBURR
    learnset MOVE_POUND, 1
    learnset MOVE_LOW_KICK, 3
    learnset MOVE_ROCK_THROW, 10
    learnset MOVE_WAKE_UP_SLAP, 15
    learnset MOVE_BODY_SLAM, 19
    learnset MOVE_ROCK_SLIDE, 25
    learnset MOVE_DIG, 29
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_MACH_PUNCH, 36
    learnset MOVE_FOCUS_PUNCH, 40
    learnset MOVE_FACADE, 44
    learnset MOVE_HAMMER_ARM, 48
    learnset MOVE_FIRE_PUNCH, 53
    learnset MOVE_STONE_EDGE, 58
    terminatelearnset


levelup SPECIES_GURDURR
    learnset MOVE_POUND, 1
    learnset MOVE_LOW_KICK, 3
    learnset MOVE_ROCK_THROW, 10
    learnset MOVE_WAKE_UP_SLAP, 15
    learnset MOVE_BODY_SLAM, 19
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_DIG, 34
    learnset MOVE_BRICK_BREAK, 37
    learnset MOVE_FOCUS_PUNCH, 41
    learnset MOVE_MACH_PUNCH, 45
    learnset MOVE_FACADE, 49
    learnset MOVE_HAMMER_ARM, 52
    learnset MOVE_FIRE_PUNCH, 58
    learnset MOVE_STONE_EDGE, 64
    terminatelearnset


levelup SPECIES_CONKELDURR
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_POUND, 1
    learnset MOVE_LOW_KICK, 3
    learnset MOVE_ROCK_THROW, 10
    learnset MOVE_WAKE_UP_SLAP, 15
    learnset MOVE_BODY_SLAM, 19
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_DIG, 37
    learnset MOVE_BRICK_BREAK, 41
    learnset MOVE_FOCUS_PUNCH, 44
    learnset MOVE_MACH_PUNCH, 48
    learnset MOVE_FACADE, 51
    learnset MOVE_FIRE_PUNCH, 55
    learnset MOVE_HIGH_HORSEPOWER, 60
    learnset MOVE_HAMMER_ARM, 65
    learnset MOVE_STONE_EDGE, 71
    learnset MOVE_SUPERPOWER, 77
    terminatelearnset


levelup SPECIES_TYMPOLE
    learnset MOVE_ECHOED_VOICE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_ACID, 4
    learnset MOVE_SUPERSONIC, 6
    learnset MOVE_ROUND, 12
    learnset MOVE_MUD_SHOT, 14
    learnset MOVE_BUBBLE_BEAM, 17
    learnset MOVE_AURORA_BEAM, 21
    learnset MOVE_MUD_BOMB, 25
    learnset MOVE_AQUA_RING, 29
    learnset MOVE_FLAIL, 32
    learnset MOVE_SLUDGE_BOMB, 35
    learnset MOVE_MUDDY_WATER, 39
    learnset MOVE_HYPER_VOICE, 42
    learnset MOVE_EARTHQUAKE, 46
    terminatelearnset


levelup SPECIES_PALPITOAD
    learnset MOVE_ECHOED_VOICE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_ACID, 4
    learnset MOVE_SUPERSONIC, 6
    learnset MOVE_ROUND, 12
    learnset MOVE_MUD_SHOT, 14
    learnset MOVE_BUBBLE_BEAM, 17
    learnset MOVE_AURORA_BEAM, 21
    learnset MOVE_MUD_BOMB, 25
    learnset MOVE_AQUA_RING, 29
    learnset MOVE_FLAIL, 33
    learnset MOVE_EARTH_POWER, 36
    learnset MOVE_SLUDGE_BOMB, 42
    learnset MOVE_MUDDY_WATER, 45
    learnset MOVE_HYPER_VOICE, 47
    learnset MOVE_EARTHQUAKE, 50
    terminatelearnset


levelup SPECIES_SEISMITOAD
    learnset MOVE_LIQUIDATION, 1
    learnset MOVE_POWER_WHIP, 1
    learnset MOVE_ECHOED_VOICE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_ACID, 4
    learnset MOVE_SUPERSONIC, 6
    learnset MOVE_ROUND, 12
    learnset MOVE_MUD_SHOT, 14
    learnset MOVE_BUBBLE_BEAM, 17
    learnset MOVE_AURORA_BEAM, 21
    learnset MOVE_MUD_BOMB, 25
    learnset MOVE_AQUA_RING, 29
    learnset MOVE_FLAIL, 33
    learnset MOVE_DRAIN_PUNCH, 36
    learnset MOVE_EARTH_POWER, 40
    learnset MOVE_ICE_PUNCH, 43
    learnset MOVE_SLUDGE_BOMB, 46
    learnset MOVE_MUDDY_WATER, 49
    learnset MOVE_HYPER_VOICE, 53
    learnset MOVE_EARTHQUAKE, 57
    terminatelearnset


levelup SPECIES_THROH
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_BIND, 1
    learnset MOVE_LEER, 1
    learnset MOVE_MAT_BLOCK, 1
    learnset MOVE_FORCE_PALM, 8
    learnset MOVE_REVENGE, 13
    learnset MOVE_BODY_SLAM, 19
    learnset MOVE_VITAL_THROW, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_ZEN_HEADBUTT, 32
    learnset MOVE_BRICK_BREAK, 35
    learnset MOVE_STOMPING_TANTRUM, 39
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_EARTHQUAKE, 47
    learnset MOVE_SUPERPOWER, 54
    terminatelearnset


levelup SPECIES_SAWK
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_DOUBLE_KICK, 7
    learnset MOVE_LOW_SWEEP, 14
    learnset MOVE_CHIP_AWAY, 19
    learnset MOVE_ROCK_SLIDE, 26
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_THROAT_CHOP, 35
    learnset MOVE_MEGA_KICK, 39
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_STONE_EDGE, 46
    learnset MOVE_CLOSE_COMBAT, 52
    terminatelearnset


levelup SPECIES_SEWADDLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_BUG_BITE, 8
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_SYNTHESIS, 20
    learnset MOVE_BUG_BUZZ, 25
    learnset MOVE_STICKY_WEB, 30
    learnset MOVE_FLAIL, 32
    terminatelearnset


levelup SPECIES_SWADLOON
    learnset MOVE_GRASS_WHISTLE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_RAZOR_LEAF, 1
    learnset MOVE_PROTECT, 20
    learnset MOVE_GIGA_DRAIN, 25
    learnset MOVE_BUG_BUZZ, 30
    terminatelearnset


levelup SPECIES_LEAVANNY
    learnset MOVE_LUNGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_RAZOR_LEAF, 1
    learnset MOVE_SLASH, 25
    learnset MOVE_AIR_SLASH, 29
    learnset MOVE_KNOCK_OFF, 33
    learnset MOVE_X_SCISSOR, 37
    learnset MOVE_LEAF_BLADE, 40
    learnset MOVE_SOLAR_BLADE, 45
    learnset MOVE_LEAF_STORM, 50
    terminatelearnset


levelup SPECIES_VENIPEDE
    learnset MOVE_POISON_STING, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_PURSUIT, 9
    learnset MOVE_SLUDGE, 12
    learnset MOVE_BUG_BITE, 15
    learnset MOVE_BIDE, 19
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_GYRO_BALL, 25
    learnset MOVE_STEAMROLLER, 28
    learnset MOVE_TOXIC, 32
    learnset MOVE_DOUBLE_EDGE, 34
    learnset MOVE_POISON_JAB, 37
    terminatelearnset


levelup SPECIES_WHIRLIPEDE
    learnset MOVE_POISON_STING, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_PURSUIT, 9
    learnset MOVE_SLUDGE, 12
    learnset MOVE_BUG_BITE, 17
    learnset MOVE_BIDE, 21
    learnset MOVE_HEADBUTT, 25
    learnset MOVE_STEAMROLLER, 28
    learnset MOVE_GYRO_BALL, 30
    learnset MOVE_TOXIC, 35
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_POISON_JAB, 41
    terminatelearnset


levelup SPECIES_SCOLIPEDE
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_PURSUIT, 9
    learnset MOVE_SLUDGE, 12
    learnset MOVE_BUG_BITE, 17
    learnset MOVE_BIDE, 21
    learnset MOVE_HEADBUTT, 25
    learnset MOVE_STEAMROLLER, 28
    learnset MOVE_SMART_STRIKE, 30
    learnset MOVE_TOXIC, 36
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_POISON_JAB, 44
    learnset MOVE_X_SCISSOR, 48
    learnset MOVE_ROCK_SLIDE, 51
    learnset MOVE_THROAT_CHOP, 55
    learnset MOVE_POISON_TAIL, 59
    learnset MOVE_MEGAHORN, 66
    terminatelearnset


levelup SPECIES_COTTONEE
    learnset MOVE_ABSORB, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_FAIRY_WIND, 3
    learnset MOVE_STUN_SPORE, 7
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_POISON_POWDER, 21
    learnset MOVE_GIGA_DRAIN, 24
    learnset MOVE_COTTON_SPORE, 25
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_ENERGY_BALL, 35
    learnset MOVE_ENDEAVOR, 38
    learnset MOVE_SOLAR_BEAM, 41
    terminatelearnset


levelup SPECIES_WHIMSICOTT
    learnset MOVE_ABSORB, 1
    learnset MOVE_TAILWIND, 1
    learnset MOVE_U_TURN, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_COTTON_SPORE, 34
    learnset MOVE_DAZZLING_GLEAM, 38
    learnset MOVE_ENERGY_BALL, 43
    learnset MOVE_MOONBLAST, 46
    learnset MOVE_SOLAR_BEAM, 50
    terminatelearnset


levelup SPECIES_PETILIL
    learnset MOVE_ABSORB, 1
    learnset MOVE_HELPING_HAND, 5
    learnset MOVE_MEGA_DRAIN, 10
    learnset MOVE_STUN_SPORE, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_MAGICAL_LEAF, 18
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_GIGA_DRAIN, 25
    learnset MOVE_SYNTHESIS, 27
    learnset MOVE_ENERGY_BALL, 32
    learnset MOVE_POLLEN_PUFF, 35
    learnset MOVE_LEAF_STORM, 40
    terminatelearnset


levelup SPECIES_LILLIGANT
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_STUN_SPORE, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_MAGICAL_LEAF, 18
    learnset MOVE_AROMATHERAPY, 20
    learnset MOVE_GIGA_DRAIN, 27
    learnset MOVE_TEETER_DANCE, 30
    learnset MOVE_ENERGY_BALL, 34
    learnset MOVE_PETAL_DANCE, 38
    learnset MOVE_SOLAR_BEAM, 43
    terminatelearnset


levelup SPECIES_BASCULIN
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BITE, 9
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_AQUA_JET, 17
    learnset MOVE_TAKE_DOWN, 21
    learnset MOVE_CRUNCH, 26
    learnset MOVE_SCALD, 31
    learnset MOVE_ICE_FANG, 37
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_LIQUIDATION, 46
    learnset MOVE_PSYCHIC_FANGS, 51
    learnset MOVE_HEAD_SMASH, 59
    terminatelearnset


levelup SPECIES_SANDILE
    learnset MOVE_LEER, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_BITE, 9
    learnset MOVE_SAND_TOMB, 11
    learnset MOVE_TORMENT, 14
    learnset MOVE_ASSURANCE, 18
    learnset MOVE_DIG, 24
    learnset MOVE_CRUNCH, 29
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_FOUL_PLAY, 35
    learnset MOVE_EARTHQUAKE, 41
    learnset MOVE_DOUBLE_EDGE, 44
    terminatelearnset


levelup SPECIES_KROKOROK
    learnset MOVE_LEER, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_BITE, 9
    learnset MOVE_SAND_TOMB, 11
    learnset MOVE_TORMENT, 14
    learnset MOVE_ASSURANCE, 18
    learnset MOVE_DIG, 24
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_CRUNCH, 32
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_ROCK_SLIDE, 41
    learnset MOVE_FOUL_PLAY, 46
    learnset MOVE_EARTHQUAKE, 50
    learnset MOVE_DOUBLE_EDGE, 54
    terminatelearnset


levelup SPECIES_KROOKODILE
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_LEER, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_BITE, 9
    learnset MOVE_SAND_TOMB, 11
    learnset MOVE_TORMENT, 14
    learnset MOVE_ASSURANCE, 23
    learnset MOVE_DIG, 27
    learnset MOVE_BODY_SLAM, 31
    learnset MOVE_CRUNCH, 35
    learnset MOVE_BRICK_BREAK, 38
    learnset MOVE_DRAGON_CLAW, 42
    learnset MOVE_ROCK_SLIDE, 47
    learnset MOVE_FOUL_PLAY, 51
    learnset MOVE_EARTHQUAKE, 56
    learnset MOVE_DOUBLE_EDGE, 61
    terminatelearnset


levelup SPECIES_DARUMAKA
    learnset MOVE_EMBER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROLLOUT, 3
    learnset MOVE_BITE, 8
    learnset MOVE_INCINERATE, 12
    learnset MOVE_FIRE_FANG, 17
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_FACADE, 24
    learnset MOVE_FIRE_PUNCH, 29
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_ZEN_HEADBUTT, 37
    learnset MOVE_BODY_SLAM, 40
    learnset MOVE_SUPERPOWER, 48
    learnset MOVE_FLARE_BLITZ, 55
    terminatelearnset


levelup SPECIES_DARMANITAN
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROLLOUT, 3
    learnset MOVE_BITE, 8
    learnset MOVE_INCINERATE, 12
    learnset MOVE_FIRE_FANG, 17
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_FACADE, 24
    learnset MOVE_FIRE_PUNCH, 29
    learnset MOVE_HAMMER_ARM, 35
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_ZEN_HEADBUTT, 44
    learnset MOVE_BODY_SLAM, 47
    learnset MOVE_SUPERPOWER, 57
    learnset MOVE_FLARE_BLITZ, 65
    terminatelearnset


levelup SPECIES_MARACTUS
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_SOLAR_BEAM, 1
    learnset MOVE_SPIKY_SHIELD, 1
    learnset MOVE_PECK, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_MEGA_DRAIN, 10
    learnset MOVE_PIN_MISSILE, 15
    learnset MOVE_INGRAIN, 18
    learnset MOVE_SPIKE_CANNON, 21
    learnset MOVE_NEEDLE_ARM, 26
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_SYNTHESIS, 33
    learnset MOVE_SUCKER_PUNCH, 35
    learnset MOVE_SPIKES, 37
    learnset MOVE_POISON_JAB, 39
    learnset MOVE_PETAL_DANCE, 43
    learnset MOVE_THROAT_CHOP, 47
    learnset MOVE_WOOD_HAMMER, 51
    terminatelearnset


levelup SPECIES_DWEBBLE
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_SMACK_DOWN, 10
    learnset MOVE_FEINT_ATTACK, 14
    learnset MOVE_BUG_BITE, 18
    learnset MOVE_ROCK_BLAST, 22
    learnset MOVE_SLASH, 26
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_NIGHT_SLASH, 33
    learnset MOVE_X_SCISSOR, 37
    learnset MOVE_EARTHQUAKE, 39
    learnset MOVE_STONE_EDGE, 42
    learnset MOVE_ROCK_WRECKER, 49
    terminatelearnset


levelup SPECIES_CRUSTLE
    learnset MOVE_HEAVY_SLAM, 1
    learnset MOVE_SPIKES, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_SMACK_DOWN, 13
    learnset MOVE_FEINT_ATTACK, 18
    learnset MOVE_BUG_BITE, 21
    learnset MOVE_ROCK_BLAST, 26
    learnset MOVE_SLASH, 29
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_NIGHT_SLASH, 37
    learnset MOVE_X_SCISSOR, 41
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_STONE_EDGE, 49
    learnset MOVE_ROCK_WRECKER, 60
    terminatelearnset


levelup SPECIES_SCRAGGY
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_HEADBUTT, 8
    learnset MOVE_SAND_ATTACK, 11
    learnset MOVE_FEINT_ATTACK, 14
    learnset MOVE_LOW_SWEEP, 19
    learnset MOVE_FAKE_OUT, 23
    learnset MOVE_ROCK_SLIDE, 26
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_FACADE, 34
    learnset MOVE_CRUNCH, 37
    learnset MOVE_HIGH_JUMP_KICK, 41
    learnset MOVE_ROCK_CLIMB, 43
    terminatelearnset


levelup SPECIES_SCRAFTY
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_HEADBUTT, 8
    learnset MOVE_SAND_ATTACK, 11
    learnset MOVE_FEINT_ATTACK, 14
    learnset MOVE_LOW_SWEEP, 23
    learnset MOVE_FAKE_OUT, 26
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_BRICK_BREAK, 32
    learnset MOVE_ZEN_HEADBUTT, 35
    learnset MOVE_FACADE, 38
    learnset MOVE_CRUNCH, 41
    learnset MOVE_HIGH_JUMP_KICK, 45
    learnset MOVE_ROCK_CLIMB, 49
    learnset MOVE_CLOSE_COMBAT, 54
    terminatelearnset


levelup SPECIES_SIGILYPH
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_DAZZLING_GLEAM, 1
    learnset MOVE_GUST, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_HYPNOSIS, 10
    learnset MOVE_PSYWAVE, 13
    learnset MOVE_AIR_CUTTER, 17
    learnset MOVE_PSYBEAM, 21
    learnset MOVE_TAILWIND, 25
    learnset MOVE_ROOST, 29
    learnset MOVE_PSYCHIC, 33
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_ANCIENT_POWER, 40
    learnset MOVE_REFLECT, 50
    learnset MOVE_LIGHT_SCREEN, 50
    terminatelearnset


levelup SPECIES_YAMASK
    learnset MOVE_ASTONISH, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_HAZE, 6
    learnset MOVE_DISABLE, 9
    learnset MOVE_NIGHT_SHADE, 10
    learnset MOVE_WILL_O_WISP, 15
    learnset MOVE_HEX, 20
    learnset MOVE_TRICK, 25
    learnset MOVE_SHADOW_BALL, 31
    learnset MOVE_DARK_PULSE, 34
    learnset MOVE_PSYCHIC, 37
    learnset MOVE_POLTERGEIST, 40
    terminatelearnset


levelup SPECIES_COFAGRIGUS
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_HAZE, 9
    learnset MOVE_DISABLE, 13
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_WILL_O_WISP, 20
    learnset MOVE_HEX, 25
    learnset MOVE_TRICK, 30
    learnset MOVE_BODY_PRESS, 34
    learnset MOVE_SHADOW_BALL, 38
    learnset MOVE_DARK_PULSE, 41
    learnset MOVE_PSYCHIC, 45
    learnset MOVE_POLTERGEIST, 54
    terminatelearnset


levelup SPECIES_TIRTOUGA
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_ROLLOUT, 5
    learnset MOVE_AQUA_JET, 10
    learnset MOVE_BITE, 14
    learnset MOVE_SMACK_DOWN, 19
    learnset MOVE_BRINE, 24
    learnset MOVE_CRUNCH, 28
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_AQUA_TAIL, 38
    learnset MOVE_EARTH_POWER, 40
    learnset MOVE_KNOCK_OFF, 43
    learnset MOVE_LIQUIDATION, 45
    learnset MOVE_STONE_EDGE, 48
    terminatelearnset


levelup SPECIES_CARRACOSTA
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BIDE, 1
    learnset MOVE_ROLLOUT, 5
    learnset MOVE_AQUA_JET, 10
    learnset MOVE_BITE, 18
    learnset MOVE_SMACK_DOWN, 25
    learnset MOVE_BRINE, 28
    learnset MOVE_CRUNCH, 32
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_AQUA_TAIL, 39
    learnset MOVE_EARTH_POWER, 43
    learnset MOVE_KNOCK_OFF, 47
    learnset MOVE_LIQUIDATION, 51
    learnset MOVE_STONE_EDGE, 58
    terminatelearnset


levelup SPECIES_ARCHEN
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PECK, 1
    learnset MOVE_WING_ATTACK, 9
    learnset MOVE_ROCK_THROW, 12
    learnset MOVE_PLUCK, 19
    learnset MOVE_BITE, 22
    learnset MOVE_ROCK_TOMB, 26
    learnset MOVE_BULLDOZE, 28
    learnset MOVE_DUAL_WINGBEAT, 31
    learnset MOVE_CRUNCH, 34
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_BOUNCE, 41
    learnset MOVE_DRAGON_CLAW, 44
    learnset MOVE_EARTHQUAKE, 49
    learnset MOVE_STONE_EDGE, 54
    terminatelearnset


levelup SPECIES_ARCHEOPS
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PECK, 1
    learnset MOVE_WING_ATTACK, 9
    learnset MOVE_ROCK_THROW, 12
    learnset MOVE_PLUCK, 19
    learnset MOVE_BITE, 22
    learnset MOVE_ROCK_TOMB, 27
    learnset MOVE_BULLDOZE, 30
    learnset MOVE_DUAL_WINGBEAT, 33
    learnset MOVE_CRUNCH, 37
    learnset MOVE_ROCK_SLIDE, 43
    learnset MOVE_BOUNCE, 50
    learnset MOVE_DRAGON_CLAW, 58
    learnset MOVE_EARTHQUAKE, 64
    learnset MOVE_STONE_EDGE, 72
    terminatelearnset


levelup SPECIES_TRUBBISH
    learnset MOVE_POUND, 1
    learnset MOVE_RECYCLE, 3
    learnset MOVE_ACID_SPRAY, 8
    learnset MOVE_TOXIC_SPIKES, 9
    learnset MOVE_DOUBLE_SLAP, 13
    learnset MOVE_SLUDGE, 16
    learnset MOVE_TAKE_DOWN, 21
    learnset MOVE_SLUDGE_BOMB, 26
    learnset MOVE_TOXIC, 29
    learnset MOVE_BELCH, 33
    learnset MOVE_DOUBLE_EDGE, 36
    learnset MOVE_GUNK_SHOT, 39
    learnset MOVE_EXPLOSION, 43
    terminatelearnset


levelup SPECIES_GARBODOR
    learnset MOVE_SEED_BOMB, 1
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_POUND, 1
    learnset MOVE_RECYCLE, 3
    learnset MOVE_ACID_SPRAY, 8
    learnset MOVE_TOXIC_SPIKES, 9
    learnset MOVE_DOUBLE_SLAP, 16
    learnset MOVE_SLUDGE, 21
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_SLUDGE_BOMB, 30
    learnset MOVE_TOXIC, 34
    learnset MOVE_BELCH, 37
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_GUNK_SHOT, 45
    learnset MOVE_EXPLOSION, 49
    terminatelearnset


levelup SPECIES_ZORUA
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PURSUIT, 5
    learnset MOVE_SNARL, 11
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_SCARY_FACE, 18
    learnset MOVE_FAKE_TEARS, 19
    learnset MOVE_TAUNT, 22
    learnset MOVE_KNOCK_OFF, 25
    learnset MOVE_DARK_PULSE, 30
    learnset MOVE_FOUL_PLAY, 34
    learnset MOVE_IMPRISON, 37
    learnset MOVE_NIGHT_DAZE, 45
    terminatelearnset


levelup SPECIES_ZOROARK
    learnset MOVE_BRICK_BREAK, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_SUCKER_PUNCH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PURSUIT, 5
    learnset MOVE_SNARL, 11
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_SCARY_FACE, 19
    learnset MOVE_FAKE_TEARS, 22
    learnset MOVE_TAUNT, 25
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_HELPING_HAND, 35
    learnset MOVE_DARK_PULSE, 41
    learnset MOVE_FOUL_PLAY, 47
    learnset MOVE_IMPRISON, 53
    learnset MOVE_NIGHT_DAZE, 58
    terminatelearnset


levelup SPECIES_MINCCINO
    learnset MOVE_POUND, 1
    learnset MOVE_BABY_DOLL_EYES, 3
    learnset MOVE_HELPING_HAND, 5
    learnset MOVE_DOUBLE_SLAP, 9
    learnset MOVE_SING, 13
    learnset MOVE_SWIFT, 16
    learnset MOVE_ENCORE, 19
    learnset MOVE_CHARM, 22
    learnset MOVE_TAIL_SLAP, 27
    learnset MOVE_WAKE_UP_SLAP, 30
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_HYPER_VOICE, 37
    terminatelearnset


levelup SPECIES_CINCCINO
    learnset MOVE_BULLET_SEED, 1
    learnset MOVE_ROCK_BLAST, 1
    learnset MOVE_POUND, 1
    learnset MOVE_HELPING_HAND, 10
    learnset MOVE_CHARM, 20
    learnset MOVE_TAIL_SLAP, 33
    learnset MOVE_HYPER_VOICE, 40
    terminatelearnset


levelup SPECIES_GOTHITA
    learnset MOVE_POUND, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_TICKLE, 6
    learnset MOVE_PSYBEAM, 12
    learnset MOVE_DOUBLE_SLAP, 15
    learnset MOVE_FAKE_TEARS, 18
    learnset MOVE_THUNDER_WAVE, 22
    learnset MOVE_PSYSHOCK, 24
    learnset MOVE_HYPNOSIS, 26
    learnset MOVE_FAKE_OUT, 29
    learnset MOVE_PSYCHIC, 33
    learnset MOVE_FUTURE_SIGHT, 36
    terminatelearnset


levelup SPECIES_GOTHORITA
    learnset MOVE_POUND, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_TICKLE, 9
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_DOUBLE_SLAP, 17
    learnset MOVE_FAKE_TEARS, 20
    learnset MOVE_THUNDER_WAVE, 23
    learnset MOVE_PSYSHOCK, 26
    learnset MOVE_HYPNOSIS, 30
    learnset MOVE_SHADOW_BALL, 33
    learnset MOVE_FAKE_OUT, 35
    learnset MOVE_PSYCHIC, 38
    learnset MOVE_FUTURE_SIGHT, 41
    terminatelearnset


levelup SPECIES_GOTHITELLE
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_POUND, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_TICKLE, 9
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_DOUBLE_SLAP, 17
    learnset MOVE_FAKE_TEARS, 20
    learnset MOVE_THUNDER_WAVE, 23
    learnset MOVE_PSYSHOCK, 27
    learnset MOVE_HYPNOSIS, 30
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_FAKE_OUT, 38
    learnset MOVE_IMPRISON, 41
    learnset MOVE_PSYCHIC, 44
    learnset MOVE_FUTURE_SIGHT, 49
    terminatelearnset


levelup SPECIES_SOLOSIS
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_PSYBEAM, 12
    learnset MOVE_RECOVER, 15
    learnset MOVE_REFLECT, 19
    learnset MOVE_HIDDEN_POWER, 22
    learnset MOVE_CONFUSE_RAY, 25
    learnset MOVE_REFLECT, 29
    learnset MOVE_PSYSHOCK, 32
    learnset MOVE_ALLY_SWITCH, 35
    learnset MOVE_PSYCHIC, 39
    learnset MOVE_TELEPORT, 41
    terminatelearnset


levelup SPECIES_DUOSION
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_ROLLOUT, 7
    learnset MOVE_PSYBEAM, 12
    learnset MOVE_RECOVER, 17
    learnset MOVE_REFLECT, 21
    learnset MOVE_HIDDEN_POWER, 24
    learnset MOVE_CONFUSE_RAY, 28
    learnset MOVE_REFLECT, 32
    learnset MOVE_PSYSHOCK, 36
    learnset MOVE_ALLY_SWITCH, 39
    learnset MOVE_PSYCHIC, 43
    learnset MOVE_TELEPORT, 46
    terminatelearnset


levelup SPECIES_REUNICLUS
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_SKILL_SWAP, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_ROLLOUT, 12
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_RECOVER, 21
    learnset MOVE_REFLECT, 25
    learnset MOVE_HIDDEN_POWER, 29
    learnset MOVE_CONFUSE_RAY, 32
    learnset MOVE_REFLECT, 36
    learnset MOVE_PSYSHOCK, 40
    learnset MOVE_ALLY_SWITCH, 46
    learnset MOVE_PSYCHIC, 50
    learnset MOVE_TELEPORT, 56
    terminatelearnset


levelup SPECIES_DUCKLETT
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_DEFOG, 6
    learnset MOVE_WING_ATTACK, 9
    learnset MOVE_WATER_PULSE, 13
    learnset MOVE_AERIAL_ACE, 15
    learnset MOVE_BUBBLE_BEAM, 19
    learnset MOVE_FEATHER_DANCE, 21
    learnset MOVE_AQUA_RING, 24
    learnset MOVE_AIR_SLASH, 27
    learnset MOVE_ROOST, 30
    learnset MOVE_SCALD, 35
    learnset MOVE_TAILWIND, 40
    learnset MOVE_BRAVE_BIRD, 44
    learnset MOVE_HURRICANE, 48
    terminatelearnset


levelup SPECIES_SWANNA
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_DEFOG, 6
    learnset MOVE_WING_ATTACK, 9
    learnset MOVE_WATER_PULSE, 13
    learnset MOVE_AERIAL_ACE, 15
    learnset MOVE_BUBBLE_BEAM, 21
    learnset MOVE_FEATHER_DANCE, 23
    learnset MOVE_AQUA_RING, 26
    learnset MOVE_AIR_SLASH, 30
    learnset MOVE_ROOST, 34
    learnset MOVE_SCALD, 39
    learnset MOVE_TAILWIND, 44
    learnset MOVE_BRAVE_BIRD, 47
    learnset MOVE_HURRICANE, 52
    terminatelearnset


levelup SPECIES_VANILLITE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_TAUNT, 10
    learnset MOVE_ICY_WIND, 13
    learnset MOVE_ICICLE_SPEAR, 17
    learnset MOVE_AURORA_BEAM, 20
    learnset MOVE_MIRROR_SHOT, 24
    learnset MOVE_SELF_DESTRUCT, 29
    learnset MOVE_FLASH_CANNON, 32
    learnset MOVE_ICE_BEAM, 36
    learnset MOVE_MIRROR_COAT, 39
    learnset MOVE_BLIZZARD, 44
    terminatelearnset


levelup SPECIES_VANILLISH
    learnset MOVE_ASTONISH, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_TAUNT, 10
    learnset MOVE_ICY_WIND, 13
    learnset MOVE_ICICLE_SPEAR, 17
    learnset MOVE_AURORA_BEAM, 25
    learnset MOVE_MIRROR_SHOT, 29
    learnset MOVE_SELF_DESTRUCT, 33
    learnset MOVE_FLASH_CANNON, 37
    learnset MOVE_ICE_BEAM, 41
    learnset MOVE_MIRROR_COAT, 47
    learnset MOVE_BLIZZARD, 50
    terminatelearnset


levelup SPECIES_VANILLUXE
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_HARDEN, 4
    learnset MOVE_TAUNT, 10
    learnset MOVE_ICY_WIND, 16
    learnset MOVE_ICICLE_SPEAR, 25
    learnset MOVE_AURORA_BEAM, 31
    learnset MOVE_MIRROR_SHOT, 36
    learnset MOVE_SELF_DESTRUCT, 40
    learnset MOVE_FLASH_CANNON, 43
    learnset MOVE_ICE_BEAM, 48
    learnset MOVE_MIRROR_COAT, 54
    learnset MOVE_BLIZZARD, 59
    terminatelearnset


levelup SPECIES_DEERLING
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_ENERGY_BALL, 31
    learnset MOVE_DOUBLE_EDGE, 35
    learnset MOVE_SEED_BOMB, 39
    terminatelearnset


levelup SPECIES_SAWSBUCK
    learnset MOVE_PLAY_ROUGH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_HORN_LEECH, 34
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_SEED_BOMB, 43
    learnset MOVE_DRILL_RUN, 46
    terminatelearnset


levelup SPECIES_EMOLGA
    learnset MOVE_NUZZLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_TAIL_WHIP, 7
    learnset MOVE_PURSUIT, 11
    learnset MOVE_SHOCK_WAVE, 17
    learnset MOVE_AIR_CUTTER, 21
    learnset MOVE_ACROBATICS, 25
    learnset MOVE_ENCORE, 29
    learnset MOVE_VOLT_SWITCH, 33
    learnset MOVE_THUNDERBOLT, 37
    learnset MOVE_AIR_SLASH, 40
    learnset MOVE_ELECTROWEB, 42
    terminatelearnset


levelup SPECIES_KARRABLAST
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 8
    learnset MOVE_ACID_SPRAY, 11
    learnset MOVE_FALSE_SWIPE, 14
    learnset MOVE_HEADBUTT, 18
    learnset MOVE_SLASH, 22
    learnset MOVE_BUG_BITE, 24
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_X_SCISSOR, 31
    learnset MOVE_BUG_BUZZ, 36
    learnset MOVE_X_SCISSOR, 37
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_MEGAHORN, 45
    terminatelearnset


levelup SPECIES_ESCAVALIER
    learnset MOVE_METAL_BURST, 1
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 8
    learnset MOVE_ACID_SPRAY, 11
    learnset MOVE_FALSE_SWIPE, 14
    learnset MOVE_HEADBUTT, 18
    learnset MOVE_SLASH, 22
    learnset MOVE_BUG_BITE, 24
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_X_SCISSOR, 31
    learnset MOVE_SMART_STRIKE, 35
    learnset MOVE_X_SCISSOR, 40
    learnset MOVE_IRON_HEAD, 45
    learnset MOVE_DRILL_RUN, 49
    learnset MOVE_MEGAHORN, 54
    terminatelearnset


levelup SPECIES_FOONGUS
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_STUN_SPORE, 8
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_SYNTHESIS, 24
    learnset MOVE_INGRAIN, 28
    learnset MOVE_SLUDGE_BOMB, 32
    learnset MOVE_POLLEN_PUFF, 34
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_TOXIC, 39
    learnset MOVE_ENERGY_BALL, 41
    learnset MOVE_RAGE_POWDER, 45
    learnset MOVE_SOLAR_BEAM, 49
    learnset MOVE_SPORE, 53
    terminatelearnset


levelup SPECIES_AMOONGUSS
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_STUN_SPORE, 8
    learnset MOVE_MEGA_DRAIN, 13
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_SYNTHESIS, 24
    learnset MOVE_INGRAIN, 28
    learnset MOVE_SLUDGE_BOMB, 32
    learnset MOVE_POLLEN_PUFF, 35
    learnset MOVE_GIGA_DRAIN, 40
    learnset MOVE_TOXIC, 43
    learnset MOVE_ENERGY_BALL, 48
    learnset MOVE_SOLAR_BEAM, 54
    learnset MOVE_SPORE, 59
    learnset MOVE_RAGE_POWDER, 63
    terminatelearnset


levelup SPECIES_FRILLISH
    learnset MOVE_ABSORB, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_NIGHT_SHADE, 8
    learnset MOVE_WATER_PULSE, 13
    learnset MOVE_RECOVER, 19
    learnset MOVE_BRINE, 24
    learnset MOVE_AURORA_BEAM, 27
    learnset MOVE_HEX, 32
    learnset MOVE_SCALD, 35
    learnset MOVE_SHADOW_BALL, 39
    learnset MOVE_ICE_BEAM, 43
    learnset MOVE_WILL_O_WISP, 46
    terminatelearnset


levelup SPECIES_JELLICENT
    learnset MOVE_WATER_SPOUT, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_NIGHT_SHADE, 8
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_RECOVER, 24
    learnset MOVE_BRINE, 27
    learnset MOVE_AURORA_BEAM, 31
    learnset MOVE_HEX, 34
    learnset MOVE_SCALD, 38
    learnset MOVE_SURF, 42
    learnset MOVE_SHADOW_BALL, 46
    learnset MOVE_ICE_BEAM, 51
    learnset MOVE_WILL_O_WISP, 55
    terminatelearnset


levelup SPECIES_ALOMOMOLA
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_REFLECT, 1
    learnset MOVE_POUND, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_AQUA_RING, 5
    learnset MOVE_AQUA_JET, 9
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_ICE_BEAM, 19
    learnset MOVE_PROTECT, 23
    learnset MOVE_WAKE_UP_SLAP, 26
    learnset MOVE_ACROBATICS, 29
    learnset MOVE_WISH, 32
    learnset MOVE_BOUNCE, 35
    learnset MOVE_MIRROR_COAT, 39
    learnset MOVE_LIQUIDATION, 43
    terminatelearnset


levelup SPECIES_JOLTIK
    learnset MOVE_ABSORB, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_ELECTROWEB, 8
    learnset MOVE_THUNDER_WAVE, 12
    learnset MOVE_BUG_BITE, 15
    learnset MOVE_SHOCK_WAVE, 20
    learnset MOVE_SLASH, 23
    learnset MOVE_THUNDER_WAVE, 27
    learnset MOVE_DISCHARGE, 31
    learnset MOVE_SUCKER_PUNCH, 33
    learnset MOVE_SIGNAL_BEAM, 36
    learnset MOVE_THUNDERBOLT, 40
    learnset MOVE_BUG_BUZZ, 45
    terminatelearnset


levelup SPECIES_GALVANTULA
    learnset MOVE_ABSORB, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_ELECTROWEB, 8
    learnset MOVE_THUNDER_WAVE, 12
    learnset MOVE_BUG_BITE, 15
    learnset MOVE_SHOCK_WAVE, 20
    learnset MOVE_SLASH, 23
    learnset MOVE_THUNDER_WAVE, 27
    learnset MOVE_DISCHARGE, 31
    learnset MOVE_SUCKER_PUNCH, 35
    learnset MOVE_SIGNAL_BEAM, 41
    learnset MOVE_STICKY_WEB, 45
    learnset MOVE_THUNDERBOLT, 49
    learnset MOVE_BUG_BUZZ, 53
    terminatelearnset


levelup SPECIES_FERROSEED
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROLLOUT, 6
    learnset MOVE_METAL_CLAW, 9
    learnset MOVE_PIN_MISSILE, 13
    learnset MOVE_INGRAIN, 16
    learnset MOVE_BULLET_SEED, 20
    learnset MOVE_MIRROR_SHOT, 24
    learnset MOVE_SPIKES, 28
    learnset MOVE_IRON_HEAD, 32
    learnset MOVE_SELF_DESTRUCT, 34
    learnset MOVE_GYRO_BALL, 37
    learnset MOVE_SEED_BOMB, 40
    learnset MOVE_KNOCK_OFF, 42
    learnset MOVE_EXPLOSION, 44
    terminatelearnset


levelup SPECIES_FERROTHORN
    learnset MOVE_STEEL_ROLLER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROLLOUT, 6
    learnset MOVE_METAL_CLAW, 9
    learnset MOVE_PIN_MISSILE, 13
    learnset MOVE_INGRAIN, 16
    learnset MOVE_BULLET_SEED, 20
    learnset MOVE_MIRROR_SHOT, 24
    learnset MOVE_SPIKES, 30
    learnset MOVE_IRON_HEAD, 35
    learnset MOVE_SELF_DESTRUCT, 38
    learnset MOVE_SEED_BOMB, 41
    learnset MOVE_GYRO_BALL, 44
    learnset MOVE_KNOCK_OFF, 47
    learnset MOVE_EXPLOSION, 50
    learnset MOVE_POWER_WHIP, 53
    terminatelearnset


levelup SPECIES_KLINK
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_BIND, 7
    learnset MOVE_MIRROR_SHOT, 10
    learnset MOVE_SHOCK_WAVE, 17
    learnset MOVE_MAGNET_BOMB, 21
    learnset MOVE_GEAR_GRIND, 26
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_DISCHARGE, 33
    learnset MOVE_IRON_HEAD, 36
    learnset MOVE_POWER_GEM, 39
    learnset MOVE_ZAP_CANNON, 43
    learnset MOVE_WILD_CHARGE, 46
    terminatelearnset


levelup SPECIES_KLANG
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_BIND, 7
    learnset MOVE_MIRROR_SHOT, 14
    learnset MOVE_SHOCK_WAVE, 20
    learnset MOVE_MAGNET_BOMB, 24
    learnset MOVE_GEAR_GRIND, 29
    learnset MOVE_THUNDER_WAVE, 34
    learnset MOVE_DISCHARGE, 36
    learnset MOVE_IRON_HEAD, 41
    learnset MOVE_POWER_GEM, 43
    learnset MOVE_WILD_CHARGE, 47
    learnset MOVE_ZAP_CANNON, 51
    terminatelearnset


levelup SPECIES_KLINKLANG
    learnset MOVE_STEEL_ROLLER, 1
    learnset MOVE_VOLT_SWITCH, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_BIND, 7
    learnset MOVE_MIRROR_SHOT, 14
    learnset MOVE_SHOCK_WAVE, 20
    learnset MOVE_MAGNET_BOMB, 24
    learnset MOVE_GEAR_GRIND, 29
    learnset MOVE_THUNDER_WAVE, 34
    learnset MOVE_DISCHARGE, 38
    learnset MOVE_IRON_HEAD, 42
    learnset MOVE_POWER_GEM, 46
    learnset MOVE_WILD_CHARGE, 51
    learnset MOVE_ZAP_CANNON, 56
    learnset MOVE_VOLT_TACKLE, 61
    terminatelearnset


levelup SPECIES_TYNAMO
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_SPARK, 1
    terminatelearnset


levelup SPECIES_EELEKTRIK
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_SPARK, 1
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_CRUNCH, 39
    learnset MOVE_VOLT_SWITCH, 41
    learnset MOVE_THUNDERBOLT, 44
    learnset MOVE_ACROBATICS, 48
    learnset MOVE_DOUBLE_EDGE, 55
    learnset MOVE_VOLT_TACKLE, 65
    terminatelearnset


levelup SPECIES_EELEKTROSS
    learnset MOVE_CRUNCH, 1
    learnset MOVE_THRASH, 1
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_THUNDERBOLT, 50
    learnset MOVE_BRICK_BREAK, 54
    learnset MOVE_ACROBATICS, 60
    learnset MOVE_DOUBLE_EDGE, 64
    terminatelearnset


levelup SPECIES_ELGYEM
    learnset MOVE_CONFUSION, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_IMPRISON, 10
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_HIDDEN_POWER, 20
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_SIMPLE_BEAM, 27
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_RECOVER, 34
    learnset MOVE_THUNDER_WAVE, 37
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_SHADOW_BALL, 45
    terminatelearnset


levelup SPECIES_BEHEEYEM
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_THUNDERBOLT, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_IMPRISON, 10
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_HIDDEN_POWER, 20
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_SIMPLE_BEAM, 27
    learnset MOVE_ZEN_HEADBUTT, 34
    learnset MOVE_RECOVER, 41
    learnset MOVE_THUNDER_WAVE, 45
    learnset MOVE_PSYCHIC, 51
    learnset MOVE_SHADOW_BALL, 55
    terminatelearnset


levelup SPECIES_LITWICK
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_SMOG, 9
    learnset MOVE_CONFUSE_RAY, 11
    learnset MOVE_FIRE_SPIN, 14
    learnset MOVE_WILL_O_WISP, 18
    learnset MOVE_FLAME_BURST, 22
    learnset MOVE_NIGHT_SHADE, 24
    learnset MOVE_HEX, 29
    learnset MOVE_IMPRISON, 32
    learnset MOVE_FLAMETHROWER, 37
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_MEMENTO, 48
    learnset MOVE_OVERHEAT, 59
    terminatelearnset


levelup SPECIES_LAMPENT
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_SMOG, 9
    learnset MOVE_CONFUSE_RAY, 11
    learnset MOVE_FIRE_SPIN, 14
    learnset MOVE_WILL_O_WISP, 18
    learnset MOVE_FLAME_BURST, 22
    learnset MOVE_NIGHT_SHADE, 24
    learnset MOVE_HEX, 29
    learnset MOVE_IMPRISON, 36
    learnset MOVE_FLAMETHROWER, 42
    learnset MOVE_SHADOW_BALL, 47
    learnset MOVE_MEMENTO, 51
    learnset MOVE_OVERHEAT, 68
    terminatelearnset


levelup SPECIES_CHANDELURE
    learnset MOVE_HEX, 1
    learnset MOVE_WILL_O_WISP, 1
    learnset MOVE_FIRE_SPIN, 1
    learnset MOVE_NIGHT_SHADE, 1
    learnset MOVE_IMPRISON, 41
    learnset MOVE_FLAMETHROWER, 53
    learnset MOVE_SHADOW_BALL, 60
    learnset MOVE_MEMENTO, 66
    learnset MOVE_OVERHEAT, 75
    terminatelearnset


levelup SPECIES_AXEW
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BITE, 8
    learnset MOVE_ASSURANCE, 12
    learnset MOVE_FALSE_SWIPE, 17
    learnset MOVE_SLASH, 21
    learnset MOVE_DUAL_CHOP, 26
    learnset MOVE_DRAGON_RAGE, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_BRICK_BREAK, 38
    learnset MOVE_BODY_SLAM, 42
    learnset MOVE_DRAGON_CLAW, 50
    terminatelearnset


levelup SPECIES_FRAXURE
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BITE, 8
    learnset MOVE_ASSURANCE, 12
    learnset MOVE_FALSE_SWIPE, 17
    learnset MOVE_SLASH, 21
    learnset MOVE_DUAL_CHOP, 26
    learnset MOVE_DRAGON_RAGE, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_DIG, 38
    learnset MOVE_BRICK_BREAK, 43
    learnset MOVE_BODY_SLAM, 48
    learnset MOVE_DRAGON_CLAW, 64
    terminatelearnset


levelup SPECIES_HAXORUS
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_DRAGON_RUSH, 1
    learnset MOVE_FIRST_IMPRESSION, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BITE, 8
    learnset MOVE_ASSURANCE, 12
    learnset MOVE_FALSE_SWIPE, 20
    learnset MOVE_SLASH, 25
    learnset MOVE_DUAL_CHOP, 29
    learnset MOVE_DRAGON_RAGE, 34
    learnset MOVE_CRUNCH, 39
    learnset MOVE_DIG, 44
    learnset MOVE_BRICK_BREAK, 50
    learnset MOVE_ROCK_SLIDE, 58
    learnset MOVE_DOUBLE_EDGE, 64
    learnset MOVE_DRAGON_CLAW, 72
    terminatelearnset


levelup SPECIES_CUBCHOO
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BIDE, 7
    learnset MOVE_ICY_WIND, 10
    learnset MOVE_FURY_SWIPES, 15
    learnset MOVE_PLAY_NICE, 18
    learnset MOVE_BRINE, 21
    learnset MOVE_AURORA_BEAM, 24
    learnset MOVE_SLASH, 28
    learnset MOVE_FLAIL, 31
    learnset MOVE_FROST_BREATH, 33
    learnset MOVE_ICE_PUNCH, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_PLAY_ROUGH, 43
    learnset MOVE_ICICLE_CRASH, 47
    terminatelearnset


levelup SPECIES_BEARTIC
    learnset MOVE_LIQUIDATION, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BIDE, 7
    learnset MOVE_ICY_WIND, 10
    learnset MOVE_FURY_SWIPES, 15
    learnset MOVE_PLAY_NICE, 18
    learnset MOVE_BRINE, 21
    learnset MOVE_AURORA_BEAM, 24
    learnset MOVE_SLASH, 28
    learnset MOVE_FLAIL, 31
    learnset MOVE_FROST_BREATH, 33
    learnset MOVE_ICE_PUNCH, 37
    learnset MOVE_HIGH_HORSEPOWER, 41
    learnset MOVE_CRUNCH, 44
    learnset MOVE_PLAY_ROUGH, 48
    learnset MOVE_ICICLE_CRASH, 51
    learnset MOVE_SUPERPOWER, 57
    terminatelearnset


levelup SPECIES_CRYOGONAL
    learnset MOVE_SOLAR_BEAM, 1
    learnset MOVE_AURORA_VEIL, 1
    learnset MOVE_BIND, 1
    learnset MOVE_ICE_SHARD, 1
    learnset MOVE_RAPID_SPIN, 8
    learnset MOVE_ICY_WIND, 12
    learnset MOVE_HAZE, 15
    learnset MOVE_CONFUSE_RAY, 21
    learnset MOVE_AURORA_BEAM, 24
    learnset MOVE_SLASH, 28
    learnset MOVE_ANCIENT_POWER, 32
    learnset MOVE_LIGHT_SCREEN, 35
    learnset MOVE_REFLECT, 36
    learnset MOVE_ICE_BEAM, 42
    learnset MOVE_FREEZE_DRY, 44
    learnset MOVE_RECOVER, 49
    learnset MOVE_EXPLOSION, 53
    terminatelearnset


levelup SPECIES_SHELMET
    learnset MOVE_ABSORB, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_ACID, 7
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_STRUGGLE_BUG, 17
    learnset MOVE_YAWN, 23
    learnset MOVE_RECOVER, 28
    learnset MOVE_GIGA_DRAIN, 33
    learnset MOVE_BUG_BUZZ, 40
    learnset MOVE_ENCORE, 45
    terminatelearnset


levelup SPECIES_ACCELGOR
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_U_TURN, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_ACID, 7
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_STRUGGLE_BUG, 17
    learnset MOVE_YAWN, 23
    learnset MOVE_RECOVER, 28
    learnset MOVE_WATER_SHURIKEN, 34
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_BUG_BUZZ, 44
    learnset MOVE_ENCORE, 51
    terminatelearnset


levelup SPECIES_STUNFISK
    learnset MOVE_SLUDGE_WAVE, 1
    learnset MOVE_ELECTROWEB, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_MUD_SHOT, 15
    learnset MOVE_ENDURE, 19
    learnset MOVE_SHOCK_WAVE, 23
    learnset MOVE_MUD_BOMB, 28
    learnset MOVE_SUCKER_PUNCH, 31
    learnset MOVE_BOUNCE, 35
    learnset MOVE_DISCHARGE, 38
    learnset MOVE_ROCK_SLIDE, 41
    learnset MOVE_MUDDY_WATER, 45
    learnset MOVE_EARTH_POWER, 49
    learnset MOVE_THUNDERBOLT, 54
    terminatelearnset


levelup SPECIES_MIENFOO
    learnset MOVE_POUND, 1
    learnset MOVE_DETECT, 1
    learnset MOVE_FAKE_OUT, 8
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_SWIFT, 19
    learnset MOVE_FORCE_PALM, 23
    learnset MOVE_ROCK_TOMB, 27
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_JUMP_KICK, 38
    learnset MOVE_U_TURN, 41
    learnset MOVE_BOUNCE, 48
    learnset MOVE_THROAT_CHOP, 51
    learnset MOVE_HIGH_JUMP_KICK, 57
    terminatelearnset


levelup SPECIES_MIENSHAO
    learnset MOVE_DRAIN_PUNCH, 1
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_POUND, 1
    learnset MOVE_DETECT, 1
    learnset MOVE_FAKE_OUT, 8
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_SWIFT, 19
    learnset MOVE_FORCE_PALM, 23
    learnset MOVE_ROCK_TOMB, 27
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_JUMP_KICK, 38
    learnset MOVE_U_TURN, 41
    learnset MOVE_VACUUM_WAVE, 43
    learnset MOVE_FAKE_OUT, 49
    learnset MOVE_BOUNCE, 55
    learnset MOVE_THROAT_CHOP, 61
    learnset MOVE_HIGH_JUMP_KICK, 70
    terminatelearnset


levelup SPECIES_DRUDDIGON
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BITE, 6
    learnset MOVE_METAL_CLAW, 11
    learnset MOVE_SCARY_FACE, 15
    learnset MOVE_DRAGON_TAIL, 21
    learnset MOVE_SLASH, 25
    learnset MOVE_CHIP_AWAY, 28
    learnset MOVE_CRUNCH, 33
    learnset MOVE_FIRE_FANG, 36
    learnset MOVE_IRON_HEAD, 40
    learnset MOVE_ROCK_CLIMB, 43
    learnset MOVE_DRAGON_CLAW, 46
    learnset MOVE_SUPERPOWER, 55
    terminatelearnset


levelup SPECIES_GOLETT
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_NIGHT_SHADE, 13
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_MEGA_PUNCH, 22
    learnset MOVE_ROCK_SLIDE, 26
    learnset MOVE_MAGNITUDE, 29
    learnset MOVE_SHADOW_PUNCH, 34
    learnset MOVE_HEAVY_SLAM, 37
    learnset MOVE_BRICK_BREAK, 40
    learnset MOVE_HIGH_HORSEPOWER, 43
    learnset MOVE_HAMMER_ARM, 47
    learnset MOVE_PHANTOM_FORCE, 51
    learnset MOVE_DYNAMIC_PUNCH, 53
    terminatelearnset


levelup SPECIES_GOLURK
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_NIGHT_SHADE, 16
    learnset MOVE_BULLDOZE, 19
    learnset MOVE_MEGA_PUNCH, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_MAGNITUDE, 32
    learnset MOVE_SHADOW_PUNCH, 37
    learnset MOVE_HEAVY_SLAM, 41
    learnset MOVE_BRICK_BREAK, 45
    learnset MOVE_HIGH_HORSEPOWER, 49
    learnset MOVE_HAMMER_ARM, 53
    learnset MOVE_PHANTOM_FORCE, 58
    learnset MOVE_DYNAMIC_PUNCH, 65
    terminatelearnset


levelup SPECIES_PAWNIARD
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 6
    learnset MOVE_TORMENT, 10
    learnset MOVE_METAL_CLAW, 13
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_ASSURANCE, 24
    learnset MOVE_SLASH, 26
    learnset MOVE_BRICK_BREAK, 31
    learnset MOVE_NIGHT_SLASH, 36
    learnset MOVE_SUCKER_PUNCH, 39
    learnset MOVE_IRON_HEAD, 42
    learnset MOVE_X_SCISSOR, 46
    terminatelearnset


levelup SPECIES_BISHARP
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 7
    learnset MOVE_TORMENT, 11
    learnset MOVE_METAL_CLAW, 13
    learnset MOVE_FEINT_ATTACK, 18
    learnset MOVE_SCARY_FACE, 21
    learnset MOVE_ASSURANCE, 25
    learnset MOVE_SLASH, 28
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_NIGHT_SLASH, 38
    learnset MOVE_SUCKER_PUNCH, 42
    learnset MOVE_IRON_HEAD, 46
    learnset MOVE_THROAT_CHOP, 51
    learnset MOVE_X_SCISSOR, 57
    learnset MOVE_STONE_EDGE, 62
    terminatelearnset


levelup SPECIES_BOUFFALANT
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PURSUIT, 4
    learnset MOVE_RAGE, 10
    learnset MOVE_FURY_ATTACK, 13
    learnset MOVE_FOCUS_ENERGY, 17
    learnset MOVE_HORN_ATTACK, 23
    learnset MOVE_BULLDOZE, 27
    learnset MOVE_BODY_SLAM, 31
    learnset MOVE_HEAD_CHARGE, 38
    learnset MOVE_HIGH_HORSEPOWER, 42
    learnset MOVE_SUPERPOWER, 45
    learnset MOVE_MEGAHORN, 50
    terminatelearnset


levelup SPECIES_RUFFLET
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_ATTACK, 5
    learnset MOVE_WING_ATTACK, 11
    learnset MOVE_ROCK_SMASH, 14
    learnset MOVE_SCARY_FACE, 17
    learnset MOVE_AERIAL_ACE, 23
    learnset MOVE_SLASH, 26
    learnset MOVE_ROOST, 31
    learnset MOVE_CRUSH_CLAW, 36
    learnset MOVE_DUAL_WINGBEAT, 39
    learnset MOVE_BODY_SLAM, 43
    learnset MOVE_ROCK_SLIDE, 46
    learnset MOVE_DOUBLE_EDGE, 51
    learnset MOVE_BRAVE_BIRD, 57
    terminatelearnset


levelup SPECIES_BRAVIARY
    learnset MOVE_ACROBATICS, 1
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_ATTACK, 5
    learnset MOVE_WING_ATTACK, 11
    learnset MOVE_ROCK_SMASH, 14
    learnset MOVE_SCARY_FACE, 17
    learnset MOVE_AERIAL_ACE, 23
    learnset MOVE_SLASH, 26
    learnset MOVE_ROOST, 31
    learnset MOVE_SUPERPOWER, 40
    learnset MOVE_CRUSH_CLAW, 44
    learnset MOVE_DUAL_WINGBEAT, 49
    learnset MOVE_BODY_SLAM, 53
    learnset MOVE_ROCK_SLIDE, 56
    learnset MOVE_DOUBLE_EDGE, 63
    learnset MOVE_BRAVE_BIRD, 69
    terminatelearnset


levelup SPECIES_VULLABY
    learnset MOVE_GUST, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_ATTACK, 5
    learnset MOVE_PLUCK, 11
    learnset MOVE_FLATTER, 15
    learnset MOVE_FEINT_ATTACK, 21
    learnset MOVE_KNOCK_OFF, 25
    learnset MOVE_ROOST, 32
    learnset MOVE_TOXIC, 36
    learnset MOVE_AIR_SLASH, 40
    learnset MOVE_FOUL_PLAY, 44
    learnset MOVE_HEAT_WAVE, 49
    learnset MOVE_BRAVE_BIRD, 55
    terminatelearnset


levelup SPECIES_MANDIBUZZ
    learnset MOVE_ENCORE, 1
    learnset MOVE_TAILWIND, 1
    learnset MOVE_GUST, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_ATTACK, 5
    learnset MOVE_PLUCK, 11
    learnset MOVE_FLATTER, 15
    learnset MOVE_FEINT_ATTACK, 21
    learnset MOVE_KNOCK_OFF, 25
    learnset MOVE_ROOST, 32
    learnset MOVE_TOXIC, 36
    learnset MOVE_BONE_RUSH, 40
    learnset MOVE_AIR_SLASH, 46
    learnset MOVE_FOUL_PLAY, 51
    learnset MOVE_HEAT_WAVE, 55
    learnset MOVE_BRAVE_BIRD, 59
    terminatelearnset


levelup SPECIES_HEATMOR
    learnset MOVE_OVERHEAT, 1
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_LICK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_EMBER, 7
    learnset MOVE_FURY_SWIPES, 11
    learnset MOVE_BUG_BITE, 15
    learnset MOVE_FLAME_BURST, 21
    learnset MOVE_SLASH, 24
    learnset MOVE_THROAT_CHOP, 29
    learnset MOVE_FLAMETHROWER, 38
    learnset MOVE_SUCKER_PUNCH, 41
    learnset MOVE_SCORCHING_SANDS, 44
    learnset MOVE_FIRE_LASH, 55
    terminatelearnset


levelup SPECIES_DURANT
    learnset MOVE_FIRST_IMPRESSION, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_METAL_SOUND, 1
    learnset MOVE_METAL_CLAW, 10
    learnset MOVE_BUG_BITE, 16
    learnset MOVE_BITE, 21
    learnset MOVE_DIG, 25
    learnset MOVE_CRUNCH, 31
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_X_SCISSOR, 39
    learnset MOVE_IRON_HEAD, 43
    learnset MOVE_SUPERPOWER, 47
    terminatelearnset


levelup SPECIES_DEINO
    learnset MOVE_TACKLE, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_BITE, 8
    learnset MOVE_DRAGON_BREATH, 13
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_THUNDER_WAVE, 25
    learnset MOVE_CRUNCH, 31
    learnset MOVE_HYPER_VOICE, 37
    learnset MOVE_DARK_PULSE, 42
    learnset MOVE_DRAGON_PULSE, 48
    terminatelearnset


levelup SPECIES_ZWEILOUS
    learnset MOVE_TACKLE, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_BITE, 8
    learnset MOVE_DRAGON_BREATH, 14
    learnset MOVE_ASSURANCE, 18
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_THUNDER_WAVE, 26
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_CRUNCH, 37
    learnset MOVE_DRAGON_CLAW, 44
    learnset MOVE_HYPER_VOICE, 48
    learnset MOVE_DARK_PULSE, 52
    learnset MOVE_DRAGON_PULSE, 62
    terminatelearnset


levelup SPECIES_HYDREIGON
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_HYDRO_PUMP, 1
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_FOCUS_ENERGY, 4
    learnset MOVE_BITE, 10
    learnset MOVE_DRAGON_BREATH, 15
    learnset MOVE_ASSURANCE, 20
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_THUNDER_WAVE, 29
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_CRUNCH, 43
    learnset MOVE_DRAGON_CLAW, 49
    learnset MOVE_FLAMETHROWER, 52
    learnset MOVE_HYPER_VOICE, 56
    learnset MOVE_DARK_PULSE, 63
    learnset MOVE_DRAGON_PULSE, 68
    terminatelearnset


levelup SPECIES_LARVESTA
    learnset MOVE_EMBER, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_ABSORB, 8
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_FLAME_CHARGE, 17
    learnset MOVE_MEGA_DRAIN, 23
    learnset MOVE_BUG_BITE, 27
    learnset MOVE_LEECH_LIFE, 32
    learnset MOVE_FLAME_BURST, 35
    learnset MOVE_BUG_BUZZ, 43
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_FLAMETHROWER, 55
    learnset MOVE_MORNING_SUN, 60
    terminatelearnset


levelup SPECIES_VOLCARONA
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_SOLAR_BEAM, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_ABSORB, 8
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_FLAME_CHARGE, 17
    learnset MOVE_MEGA_DRAIN, 23
    learnset MOVE_BUG_BITE, 27
    learnset MOVE_LEECH_LIFE, 32
    learnset MOVE_FLAME_BURST, 35
    learnset MOVE_BUG_BUZZ, 44
    learnset MOVE_DOUBLE_EDGE, 51
    learnset MOVE_FLAMETHROWER, 57
    learnset MOVE_AIR_SLASH, 63
    learnset MOVE_HEAT_WAVE, 70
    learnset MOVE_MORNING_SUN, 75
    learnset MOVE_FIERY_DANCE, 85
    terminatelearnset



levelup SPECIES_COBALION
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_DOUBLE_KICK, 7
    learnset MOVE_METAL_CLAW, 11
    learnset MOVE_HELPING_HAND, 15
    learnset MOVE_RETALIATE, 22
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_SACRED_SWORD, 40
    learnset MOVE_METAL_BURST, 46
    learnset MOVE_SMART_STRIKE, 50
    learnset MOVE_IRON_HEAD, 54
    learnset MOVE_CLOSE_COMBAT, 60
    learnset MOVE_STONE_EDGE, 67
    terminatelearnset


levelup SPECIES_TERRAKION
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_DOUBLE_KICK, 7
    learnset MOVE_SMACK_DOWN, 11
    learnset MOVE_HELPING_HAND, 15
    learnset MOVE_RETALIATE, 22
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_SACRED_SWORD, 40
    learnset MOVE_COUNTER, 46
    learnset MOVE_SMART_STRIKE, 50
    learnset MOVE_EXTREME_SPEED, 54
    learnset MOVE_CLOSE_COMBAT, 60
    learnset MOVE_STONE_EDGE, 67
    terminatelearnset


levelup SPECIES_VIRIZION
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_DOUBLE_KICK, 7
    learnset MOVE_MAGICAL_LEAF, 11
    learnset MOVE_HELPING_HAND, 15
    learnset MOVE_RETALIATE, 22
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_SACRED_SWORD, 40
    learnset MOVE_SYNTHESIS, 46
    learnset MOVE_DOUBLE_EDGE, 50
    learnset MOVE_LEAF_BLADE, 54
    learnset MOVE_CLOSE_COMBAT, 60
    learnset MOVE_STONE_EDGE, 67
    terminatelearnset


levelup SPECIES_TORNADUS
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GUST, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SWAGGER, 10
    learnset MOVE_BITE, 14
    learnset MOVE_REVENGE, 17
    learnset MOVE_AIR_CUTTER, 22
    learnset MOVE_AIR_SLASH, 31
    learnset MOVE_EXTRASENSORY, 36
    learnset MOVE_TAILWIND, 42
    learnset MOVE_CRUNCH, 46
    learnset MOVE_HAMMER_ARM, 55
    learnset MOVE_HURRICANE, 63
    learnset MOVE_HEAT_WAVE, 69
    learnset MOVE_BLEAKWIND_STORM, 76
    terminatelearnset


levelup SPECIES_THUNDURUS
    learnset MOVE_ASTONISH, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SWAGGER, 10
    learnset MOVE_BITE, 14
    learnset MOVE_REVENGE, 17
    learnset MOVE_SHOCK_WAVE, 22
    learnset MOVE_VOLT_SWITCH, 31
    learnset MOVE_THUNDERBOLT, 36
    learnset MOVE_TAILWIND, 42
    learnset MOVE_CRUNCH, 46
    learnset MOVE_HAMMER_ARM, 55
    learnset MOVE_THUNDER, 63
    learnset MOVE_HEAT_WAVE, 69
    learnset MOVE_WILDBOLT_STORM, 76
    terminatelearnset


levelup SPECIES_RESHIRAM
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_NOBLE_ROAR, 1
    learnset MOVE_ANCIENT_POWER, 10
    learnset MOVE_SLASH, 21
    learnset MOVE_DRAGON_BREATH, 29
    learnset MOVE_FLAMETHROWER, 37
    learnset MOVE_EXTRASENSORY, 42
    learnset MOVE_CRUNCH, 48
    learnset MOVE_DRAGON_PULSE, 55
    learnset MOVE_FUSION_FLARE, 67
    learnset MOVE_FIRE_BLAST, 78
    learnset MOVE_HYPER_VOICE, 83
    learnset MOVE_OUTRAGE, 86
    learnset MOVE_BLUE_FLARE, 90
    terminatelearnset


levelup SPECIES_ZEKROM
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_NOBLE_ROAR, 1
    learnset MOVE_ANCIENT_POWER, 10
    learnset MOVE_SLASH, 21
    learnset MOVE_DRAGON_BREATH, 29
    learnset MOVE_THUNDERBOLT, 37
    learnset MOVE_EXTRASENSORY, 42
    learnset MOVE_CRUNCH, 48
    learnset MOVE_DRAGON_PULSE, 55
    learnset MOVE_FUSION_BOLT, 67
    learnset MOVE_THUNDER, 78
    learnset MOVE_HYPER_VOICE, 83
    learnset MOVE_OUTRAGE, 86
    learnset MOVE_BOLT_STRIKE, 90
    terminatelearnset


levelup SPECIES_LANDORUS
    learnset MOVE_ASTONISH, 1
    learnset MOVE_MUD_SHOT, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SWAGGER, 10
    learnset MOVE_BITE, 14
    learnset MOVE_REVENGE, 17
    learnset MOVE_BULLDOZE, 22
    learnset MOVE_ROCK_SLIDE, 31
    learnset MOVE_STONE_EDGE, 36
    learnset MOVE_OUTRAGE, 42
    learnset MOVE_CRUNCH, 46
    learnset MOVE_HAMMER_ARM, 55
    learnset MOVE_EARTHQUAKE, 63
    learnset MOVE_SUPERPOWER, 69
    learnset MOVE_SANDSEAR_STORM, 76
    terminatelearnset


levelup SPECIES_KYUREM
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_NOBLE_ROAR, 1
    learnset MOVE_ANCIENT_POWER, 10
    learnset MOVE_SLASH, 21
    learnset MOVE_DRAGON_BREATH, 29
    learnset MOVE_ICE_BEAM, 37
    learnset MOVE_EXTRASENSORY, 42
    learnset MOVE_CRUNCH, 48
    learnset MOVE_DRAGON_PULSE, 55
    learnset MOVE_STONE_EDGE, 67
    learnset MOVE_BLIZZARD, 78
    learnset MOVE_HYPER_VOICE, 83
    learnset MOVE_OUTRAGE, 86
    learnset MOVE_SHEER_COLD, 90
    terminatelearnset


levelup SPECIES_KELDEO
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BUBBLE_BEAM, 9
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_HEADBUTT, 18
    learnset MOVE_RETALIATE, 24
    learnset MOVE_TAKE_DOWN, 31
    learnset MOVE_AQUA_TAIL, 35
    learnset MOVE_SACRED_SWORD, 41
    learnset MOVE_SMART_STRIKE, 50
    learnset MOVE_MUDDY_WATER, 59
    learnset MOVE_POWER_GEM, 65
    learnset MOVE_SECRET_SWORD, 73
    terminatelearnset


levelup SPECIES_MELOETTA
    learnset MOVE_ROUND, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_CONFUSION, 11
    learnset MOVE_SING, 16
    learnset MOVE_TEETER_DANCE, 21
    learnset MOVE_ACROBATICS, 26
    learnset MOVE_PSYBEAM, 31
    learnset MOVE_ECHOED_VOICE, 36
    learnset MOVE_U_TURN, 43
    learnset MOVE_RELIC_SONG, 50
    learnset MOVE_PSYCHIC, 57
    learnset MOVE_HYPER_VOICE, 64
    learnset MOVE_ROLE_PLAY, 71
    learnset MOVE_CLOSE_COMBAT, 78
    learnset MOVE_PERISH_SONG, 85
    terminatelearnset


levelup SPECIES_GENESECT
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_SCREECH, 7
    learnset MOVE_FURY_CUTTER, 7
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_FELL_STINGER, 21
    learnset MOVE_MAGNET_BOMB, 25
    learnset MOVE_FLAME_CHARGE, 29
    learnset MOVE_SLASH, 34
    learnset MOVE_SIGNAL_BEAM, 40
    learnset MOVE_TRI_ATTACK, 44
    learnset MOVE_X_SCISSOR, 51
    learnset MOVE_LOCK_ON, 54
    learnset MOVE_FLASH_CANNON, 61
    learnset MOVE_BUG_BUZZ, 67
    learnset MOVE_ZAP_CANNON, 74
    learnset MOVE_TECHNO_BLAST, 84
    learnset MOVE_SELF_DESTRUCT, 90
    terminatelearnset


levelup SPECIES_CHESPIN
    learnset MOVE_GROWL, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_ROLLOUT, 6
    learnset MOVE_BITE, 11
    learnset MOVE_PIN_MISSILE, 14
    learnset MOVE_TAKE_DOWN, 18
    learnset MOVE_MUD_SHOT, 22
    learnset MOVE_BRICK_BREAK, 25
    learnset MOVE_SEED_BOMB, 29
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_STOMPING_TANTRUM, 35
    learnset MOVE_SPIKY_SHIELD, 39
    learnset MOVE_ROCK_SLIDE, 41
    learnset MOVE_WOOD_HAMMER, 46
    terminatelearnset


levelup SPECIES_QUILLADIN
    learnset MOVE_GROWL, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_ROLLOUT, 6
    learnset MOVE_BITE, 11
    learnset MOVE_PIN_MISSILE, 14
    learnset MOVE_NEEDLE_ARM, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_MUD_SHOT, 23
    learnset MOVE_BRICK_BREAK, 27
    learnset MOVE_SEED_BOMB, 31
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_SPIKES, 36
    learnset MOVE_HIGH_HORSEPOWER, 39
    learnset MOVE_SPIKY_SHIELD, 41
    learnset MOVE_ROCK_SLIDE, 44
    learnset MOVE_WOOD_HAMMER, 48
    terminatelearnset


levelup SPECIES_CHESNAUGHT
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_ROLLOUT, 6
    learnset MOVE_BITE, 11
    learnset MOVE_PIN_MISSILE, 14
    learnset MOVE_NEEDLE_ARM, 16
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_MUD_SHOT, 23
    learnset MOVE_BRICK_BREAK, 27
    learnset MOVE_SEED_BOMB, 31
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_HAMMER_ARM, 36
    learnset MOVE_SPIKES, 41
    learnset MOVE_HIGH_HORSEPOWER, 44
    learnset MOVE_SPIKY_SHIELD, 48
    learnset MOVE_ROCK_SLIDE, 52
    learnset MOVE_WOOD_HAMMER, 57
    terminatelearnset


levelup SPECIES_FENNEKIN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_FLAME_CHARGE, 9
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_MUD_SHOT, 18
    learnset MOVE_FIRE_SPIN, 20
    learnset MOVE_FLAME_BURST, 22
    learnset MOVE_WILL_O_WISP, 26
    learnset MOVE_HYPNOSIS, 29
    learnset MOVE_PSYSHOCK, 32
    learnset MOVE_FLAMETHROWER, 36
    learnset MOVE_IMPRISON, 39
    learnset MOVE_HEAT_WAVE, 43
    terminatelearnset


levelup SPECIES_BRAIXEN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_FLAME_CHARGE, 9
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_MUD_SHOT, 18
    learnset MOVE_FIRE_SPIN, 21
    learnset MOVE_FLAME_BURST, 24
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_HYPNOSIS, 32
    learnset MOVE_PSYSHOCK, 36
    learnset MOVE_FLAMETHROWER, 41
    learnset MOVE_IMPRISON, 44
    learnset MOVE_HEAT_WAVE, 48
    terminatelearnset


levelup SPECIES_DELPHOX
    learnset MOVE_SOLAR_BEAM, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_FLAME_CHARGE, 9
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_MUD_SHOT, 18
    learnset MOVE_FIRE_SPIN, 21
    learnset MOVE_FLAME_BURST, 24
    learnset MOVE_WILL_O_WISP, 28
    learnset MOVE_HYPNOSIS, 32
    learnset MOVE_MYSTICAL_FIRE, 36
    learnset MOVE_PSYSHOCK, 40
    learnset MOVE_FLAMETHROWER, 45
    learnset MOVE_IMPRISON, 48
    learnset MOVE_HEAT_WAVE, 53
    learnset MOVE_FOCUS_BLAST, 57
    terminatelearnset


levelup SPECIES_FROAKIE
    learnset MOVE_POUND, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_QUICK_ATTACK, 11
    learnset MOVE_LICK, 13
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_SMOKESCREEN, 18
    learnset MOVE_AERIAL_ACE, 22
    learnset MOVE_FLING, 25
    learnset MOVE_SMACK_DOWN, 27
    learnset MOVE_BOUNCE, 32
    learnset MOVE_LIQUIDATION, 36
    learnset MOVE_HYDRO_PUMP, 41
    terminatelearnset


levelup SPECIES_FROGADIER
    learnset MOVE_POUND, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 9
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_LICK, 14
    learnset MOVE_WATER_PULSE, 19
    learnset MOVE_SMOKESCREEN, 21
    learnset MOVE_AERIAL_ACE, 24
    learnset MOVE_FLING, 29
    learnset MOVE_SMACK_DOWN, 30
    learnset MOVE_SCALD, 32
    learnset MOVE_BOUNCE, 36
    learnset MOVE_LIQUIDATION, 40
    learnset MOVE_HYDRO_PUMP, 46
    terminatelearnset


levelup SPECIES_GRENINJA
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_SPIKES, 1
    learnset MOVE_HYDRO_CANNON, 1
    learnset MOVE_POUND, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 9
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_LICK, 14
    learnset MOVE_WATER_PULSE, 19
    learnset MOVE_SMOKESCREEN, 21
    learnset MOVE_AERIAL_ACE, 24
    learnset MOVE_FLING, 29
    learnset MOVE_SMACK_DOWN, 30
    learnset MOVE_SCALD, 32
    learnset MOVE_SHADOW_SNEAK, 34
    learnset MOVE_WATER_SHURIKEN, 36
    learnset MOVE_NIGHT_SLASH, 36
    learnset MOVE_FLIP_TURN, 39
    learnset MOVE_BRICK_BREAK, 42
    learnset MOVE_BOUNCE, 46
    learnset MOVE_DARK_PULSE, 50
    learnset MOVE_HYDRO_PUMP, 59
    terminatelearnset


levelup SPECIES_BUNNELBY
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LASER_FOCUS, 6
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_DOUBLE_SLAP, 12
    learnset MOVE_MUD_SHOT, 15
    learnset MOVE_DOUBLE_KICK, 18
    learnset MOVE_BULLDOZE, 21
    learnset MOVE_TAKE_DOWN, 25
    learnset MOVE_DIG, 28
    learnset MOVE_BOUNCE, 32
    learnset MOVE_SUPER_FANG, 34
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_EARTHQUAKE, 39
    terminatelearnset


levelup SPECIES_DIGGERSBY
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_DOUBLE_EDGE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LASER_FOCUS, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_DOUBLE_SLAP, 13
    learnset MOVE_MUD_SHOT, 16
    learnset MOVE_DOUBLE_KICK, 19
    learnset MOVE_BULLDOZE, 22
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_DIG, 31
    learnset MOVE_BOUNCE, 34
    learnset MOVE_SUPER_FANG, 37
    learnset MOVE_ROCK_SLIDE, 40
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_SUPERPOWER, 45
    terminatelearnset


levelup SPECIES_FLETCHLING
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_EMBER, 10
    learnset MOVE_WING_ATTACK, 13
    learnset MOVE_FLAIL, 16
    learnset MOVE_RAZOR_WIND, 20
    learnset MOVE_AERIAL_ACE, 23
    learnset MOVE_ROOST, 26
    learnset MOVE_FLAME_CHARGE, 28
    learnset MOVE_ACROBATICS, 31
    learnset MOVE_TAILWIND, 35
    terminatelearnset


levelup SPECIES_FLETCHINDER
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_EMBER, 10
    learnset MOVE_WING_ATTACK, 13
    learnset MOVE_FLAIL, 17
    learnset MOVE_RAZOR_WIND, 21
    learnset MOVE_AERIAL_ACE, 26
    learnset MOVE_ROOST, 29
    learnset MOVE_FLAME_CHARGE, 31
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_FLAMETHROWER, 37
    learnset MOVE_ACROBATICS, 41
    learnset MOVE_BRAVE_BIRD, 46
    learnset MOVE_TAILWIND, 50
    terminatelearnset


levelup SPECIES_TALONFLAME
    learnset MOVE_U_TURN, 1
    learnset MOVE_SOLAR_BEAM, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_QUICK_ATTACK, 5
    learnset MOVE_EMBER, 10
    learnset MOVE_WING_ATTACK, 14
    learnset MOVE_FLAIL, 18
    learnset MOVE_RAZOR_WIND, 22
    learnset MOVE_AERIAL_ACE, 26
    learnset MOVE_ROOST, 30
    learnset MOVE_FLAME_CHARGE, 33
    learnset MOVE_AIR_SLASH, 37
    learnset MOVE_FLAMETHROWER, 41
    learnset MOVE_ACROBATICS, 44
    learnset MOVE_BRAVE_BIRD, 49
    learnset MOVE_TAILWIND, 53
    learnset MOVE_FLARE_BLITZ, 56
    terminatelearnset


levelup SPECIES_SCATTERBUG
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_STUN_SPORE, 6
    learnset MOVE_BUG_BITE, 15
    terminatelearnset


levelup SPECIES_SPEWPA
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_STUN_SPORE, 6
    learnset MOVE_PROTECT, 10
    terminatelearnset


levelup SPECIES_VIVILLON
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_LITLEO
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_NOBLE_ROAR, 15
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_FIRE_FANG, 23
    learnset MOVE_ENDEAVOR, 28
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_FLAMETHROWER, 36
    learnset MOVE_CRUNCH, 39
    learnset MOVE_HYPER_VOICE, 42
    learnset MOVE_HEAT_WAVE, 44
    learnset MOVE_OVERHEAT, 47
    terminatelearnset


levelup SPECIES_PYROAR
    learnset MOVE_OVERHEAT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_NOBLE_ROAR, 15
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_FIRE_FANG, 23
    learnset MOVE_ENDEAVOR, 28
    learnset MOVE_BODY_SLAM, 33
    learnset MOVE_FLAMETHROWER, 37
    learnset MOVE_CRUNCH, 41
    learnset MOVE_PSYCHIC_FANGS, 45
    learnset MOVE_HYPER_VOICE, 47
    learnset MOVE_HEAT_WAVE, 50
    terminatelearnset


levelup SPECIES_FLABEBE
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 10
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 22
    learnset MOVE_CHARGE_BEAM, 25
    learnset MOVE_PETAL_BLIZZARD, 29
    learnset MOVE_AROMATHERAPY, 33
    learnset MOVE_DAZZLING_GLEAM, 36
    learnset MOVE_GIGA_DRAIN, 39
    learnset MOVE_MOONBLAST, 43
    learnset MOVE_PETAL_DANCE, 46
    terminatelearnset


levelup SPECIES_FLOETTE
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 11
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 23
    learnset MOVE_CHARGE_BEAM, 27
    learnset MOVE_PETAL_BLIZZARD, 31
    learnset MOVE_AROMATHERAPY, 35
    learnset MOVE_DAZZLING_GLEAM, 39
    learnset MOVE_GIGA_DRAIN, 43
    learnset MOVE_MOONBLAST, 48
    learnset MOVE_PETAL_DANCE, 52
    terminatelearnset


levelup SPECIES_FLORGES
    learnset MOVE_WISH, 1
    learnset MOVE_FLOWER_SHIELD, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_AROMATHERAPY, 40
    learnset MOVE_GIGA_DRAIN, 45
    learnset MOVE_MOONBLAST, 50
    learnset MOVE_PETAL_DANCE, 55
    terminatelearnset


levelup SPECIES_SKIDDO
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_VINE_WHIP, 7
    learnset MOVE_TAIL_WHIP, 9
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_SYNTHESIS, 17
    learnset MOVE_TAKE_DOWN, 21
    learnset MOVE_BULLDOZE, 24
    learnset MOVE_MILK_DRINK, 28
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_JUMP_KICK, 35
    learnset MOVE_HORN_LEECH, 38
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_LEAF_BLADE, 41
    learnset MOVE_ZEN_HEADBUTT, 43
    learnset MOVE_DRILL_RUN, 45
    terminatelearnset


levelup SPECIES_GOGOAT
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_PLAY_ROUGH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWTH, 1
    learnset MOVE_VINE_WHIP, 7
    learnset MOVE_TAIL_WHIP, 10
    learnset MOVE_RAZOR_LEAF, 14
    learnset MOVE_SYNTHESIS, 18
    learnset MOVE_TAKE_DOWN, 22
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_MILK_DRINK, 29
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_JUMP_KICK, 36
    learnset MOVE_HORN_LEECH, 39
    learnset MOVE_DOUBLE_EDGE, 42
    learnset MOVE_LEAF_BLADE, 46
    learnset MOVE_ZEN_HEADBUTT, 50
    learnset MOVE_DRILL_RUN, 53
    terminatelearnset


levelup SPECIES_PANCHAM
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ARM_THRUST, 5
    learnset MOVE_TAUNT, 8
    learnset MOVE_KARATE_CHOP, 12
    learnset MOVE_COMET_PUNCH, 15
    learnset MOVE_LOW_SWEEP, 19
    learnset MOVE_CIRCLE_THROW, 23
    learnset MOVE_SLASH, 25
    learnset MOVE_VITAL_THROW, 29
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_CRUNCH, 36
    learnset MOVE_ROCK_SLIDE, 40
    learnset MOVE_SKY_UPPERCUT, 45
    terminatelearnset


levelup SPECIES_PANGORO
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ARM_THRUST, 5
    learnset MOVE_TAUNT, 8
    learnset MOVE_KARATE_CHOP, 12
    learnset MOVE_COMET_PUNCH, 15
    learnset MOVE_LOW_SWEEP, 19
    learnset MOVE_CIRCLE_THROW, 23
    learnset MOVE_SLASH, 25
    learnset MOVE_VITAL_THROW, 29
    learnset MOVE_NIGHT_SLASH, 32
    learnset MOVE_BODY_SLAM, 37
    learnset MOVE_CRUNCH, 41
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_SKY_UPPERCUT, 52
    learnset MOVE_DARKEST_LARIAT, 56
    terminatelearnset


levelup SPECIES_FURFROU
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_SNARL, 24
    learnset MOVE_RETALIATE, 27
    learnset MOVE_WILD_CHARGE, 30
    learnset MOVE_CHARM, 33
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_DOUBLE_EDGE, 41
    terminatelearnset


levelup SPECIES_ESPURR
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_CONFUSION, 9
    learnset MOVE_FAKE_OUT, 10
    learnset MOVE_MAGICAL_LEAF, 11
    learnset MOVE_DISARMING_VOICE, 13
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_SWIFT, 21
    learnset MOVE_PSYSHOCK, 25
    learnset MOVE_LIGHT_SCREEN, 30
    learnset MOVE_REFLECT, 30
    learnset MOVE_HYPER_VOICE, 34
    learnset MOVE_PSYCHIC, 37
    terminatelearnset


levelup SPECIES_MEOWSTIC
    learnset MOVE_SKILL_SWAP, 1
    learnset MOVE_DAZZLING_GLEAM, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_CONFUSION, 9
    learnset MOVE_FAKE_OUT, 10
    learnset MOVE_MAGICAL_LEAF, 14
    learnset MOVE_DISARMING_VOICE, 16
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_SWIFT, 22
    learnset MOVE_FAKE_OUT, 25
    learnset MOVE_PSYSHOCK, 29
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_LIGHT_SCREEN, 36
    learnset MOVE_REFLECT, 36
    learnset MOVE_HYPER_VOICE, 40
    learnset MOVE_PSYCHIC, 44
    terminatelearnset


levelup SPECIES_HONEDGE
    learnset MOVE_TACKLE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SHADOW_SNEAK, 7
    learnset MOVE_PURSUIT, 12
    learnset MOVE_AERIAL_ACE, 16
    learnset MOVE_SLASH, 21
    learnset MOVE_RETALIATE, 24
    learnset MOVE_NIGHT_SLASH, 28
    learnset MOVE_BRICK_BREAK, 32
    learnset MOVE_SMART_STRIKE, 35
    learnset MOVE_SHADOW_CLAW, 37
    learnset MOVE_IRON_HEAD, 40
    learnset MOVE_SACRED_SWORD, 43
    terminatelearnset


levelup SPECIES_DOUBLADE
    learnset MOVE_TACKLE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SHADOW_SNEAK, 7
    learnset MOVE_PURSUIT, 14
    learnset MOVE_AERIAL_ACE, 18
    learnset MOVE_SLASH, 22
    learnset MOVE_RETALIATE, 27
    learnset MOVE_NIGHT_SLASH, 31
    learnset MOVE_BRICK_BREAK, 35
    learnset MOVE_SMART_STRIKE, 38
    learnset MOVE_SHADOW_CLAW, 42
    learnset MOVE_IRON_HEAD, 46
    learnset MOVE_AIR_SLASH, 50
    learnset MOVE_SACRED_SWORD, 54
    terminatelearnset


levelup SPECIES_AEGISLASH
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SHADOW_SNEAK, 7
    learnset MOVE_PURSUIT, 15
    learnset MOVE_AERIAL_ACE, 19
    learnset MOVE_SLASH, 23
    learnset MOVE_RETALIATE, 28
    learnset MOVE_NIGHT_SLASH, 32
    learnset MOVE_BRICK_BREAK, 37
    learnset MOVE_SMART_STRIKE, 41
    learnset MOVE_SHADOW_BALL, 43
    learnset MOVE_KINGS_SHIELD, 45
    learnset MOVE_AIR_SLASH, 50
    learnset MOVE_IRON_HEAD, 54
    learnset MOVE_SACRED_SWORD, 58
    terminatelearnset


levelup SPECIES_SPRITZEE
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_SWEET_KISS, 4
    learnset MOVE_ODOR_SLEUTH, 8
    learnset MOVE_ECHOED_VOICE, 10
    learnset MOVE_DRAINING_KISS, 14
    learnset MOVE_AROMATHERAPY, 18
    learnset MOVE_ATTRACT, 23
    learnset MOVE_PSYBEAM, 26
    learnset MOVE_DAZZLING_GLEAM, 30
    learnset MOVE_CHARM, 33
    learnset MOVE_MOONBLAST, 36
    learnset MOVE_PSYCHIC, 38
    learnset MOVE_SKILL_SWAP, 41
    terminatelearnset


levelup SPECIES_AROMATISSE
    learnset MOVE_WISH, 1
    learnset MOVE_MISTY_EXPLOSION, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_SWEET_KISS, 4
    learnset MOVE_ODOR_SLEUTH, 8
    learnset MOVE_ECHOED_VOICE, 11
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_AROMATHERAPY, 19
    learnset MOVE_ATTRACT, 23
    learnset MOVE_PSYBEAM, 27
    learnset MOVE_DAZZLING_GLEAM, 32
    learnset MOVE_CHARM, 36
    learnset MOVE_MOONBLAST, 39
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_SKILL_SWAP, 48
    terminatelearnset


levelup SPECIES_SWIRLIX
    learnset MOVE_TACKLE, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_PLAY_NICE, 5
    learnset MOVE_FAIRY_WIND, 5
    learnset MOVE_FAKE_TEARS, 12
    learnset MOVE_ROUND, 15
    learnset MOVE_AROMATHERAPY, 17
    learnset MOVE_DRAINING_KISS, 20
    learnset MOVE_ENDEAVOR, 26
    learnset MOVE_ENERGY_BALL, 31
    learnset MOVE_WISH, 34
    learnset MOVE_PLAY_ROUGH, 37
    learnset MOVE_LIGHT_SCREEN, 40
    terminatelearnset


levelup SPECIES_SLURPUFF
    learnset MOVE_DRAIN_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_PLAY_NICE, 5
    learnset MOVE_FAIRY_WIND, 5
    learnset MOVE_FAKE_TEARS, 12
    learnset MOVE_ROUND, 15
    learnset MOVE_AROMATHERAPY, 17
    learnset MOVE_DRAINING_KISS, 20
    learnset MOVE_ENDEAVOR, 26
    learnset MOVE_STICKY_WEB, 31
    learnset MOVE_ENERGY_BALL, 34
    learnset MOVE_WISH, 38
    learnset MOVE_PLAY_ROUGH, 41
    learnset MOVE_LIGHT_SCREEN, 44
    terminatelearnset


levelup SPECIES_INKAY
    learnset MOVE_PECK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONSTRICT, 1
    learnset MOVE_REFLECT, 4
    learnset MOVE_WRAP, 6
    learnset MOVE_HYPNOSIS, 10
    learnset MOVE_PSYWAVE, 13
    learnset MOVE_PAYBACK, 17
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_FOUL_PLAY, 24
    learnset MOVE_PLUCK, 27
    learnset MOVE_SLASH, 31
    learnset MOVE_LIGHT_SCREEN, 34
    learnset MOVE_PSYCHO_CUT, 38
    learnset MOVE_NIGHT_SLASH, 41
    learnset MOVE_SUPERPOWER, 45
    terminatelearnset


levelup SPECIES_MALAMAR
    learnset MOVE_REVERSAL, 1
    learnset MOVE_PECK, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONSTRICT, 1
    learnset MOVE_REFLECT, 4
    learnset MOVE_WRAP, 6
    learnset MOVE_HYPNOSIS, 10
    learnset MOVE_PSYWAVE, 13
    learnset MOVE_PAYBACK, 17
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_FOUL_PLAY, 24
    learnset MOVE_PLUCK, 27
    learnset MOVE_LUNGE, 30
    learnset MOVE_SLASH, 34
    learnset MOVE_LIGHT_SCREEN, 42
    learnset MOVE_PSYCHO_CUT, 45
    learnset MOVE_NIGHT_SLASH, 49
    learnset MOVE_SUPERPOWER, 53
    terminatelearnset


levelup SPECIES_BINACLE
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_WATER_GUN, 9
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_MUD_SHOT, 15
    learnset MOVE_CLAMP, 20
    learnset MOVE_SLASH, 24
    learnset MOVE_ANCIENT_POWER, 27
    learnset MOVE_RAZOR_SHELL, 29
    learnset MOVE_BRICK_BREAK, 32
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_X_SCISSOR, 39
    learnset MOVE_LIQUIDATION, 42
    learnset MOVE_CROSS_CHOP, 45
    terminatelearnset


levelup SPECIES_BARBARACLE
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_WATER_GUN, 9
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_MUD_SHOT, 15
    learnset MOVE_CLAMP, 20
    learnset MOVE_SLASH, 24
    learnset MOVE_ANCIENT_POWER, 27
    learnset MOVE_RAZOR_SHELL, 29
    learnset MOVE_BRICK_BREAK, 35
    learnset MOVE_DRAGON_CLAW, 39
    learnset MOVE_ROCK_SLIDE, 43
    learnset MOVE_X_SCISSOR, 47
    learnset MOVE_LIQUIDATION, 51
    learnset MOVE_CROSS_CHOP, 55
    learnset MOVE_STONE_EDGE, 60
    terminatelearnset


levelup SPECIES_SKRELP
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_FEINT_ATTACK, 5
    learnset MOVE_ACID, 9
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_TAIL_WHIP, 14
    learnset MOVE_CAMOUFLAGE, 19
    learnset MOVE_SLUDGE, 22
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_TOXIC, 29
    learnset MOVE_MUD_SHOT, 31
    learnset MOVE_AQUA_TAIL, 36
    learnset MOVE_SLUDGE_BOMB, 40
    learnset MOVE_DRAGON_PULSE, 45
    learnset MOVE_GUNK_SHOT, 49
    learnset MOVE_HYDRO_PUMP, 52
    terminatelearnset


levelup SPECIES_DRAGALGE
    learnset MOVE_DRACO_METEOR, 1
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_FEINT_ATTACK, 5
    learnset MOVE_ACID, 9
    learnset MOVE_WATER_GUN, 12
    learnset MOVE_TAIL_WHIP, 14
    learnset MOVE_CAMOUFLAGE, 19
    learnset MOVE_SLUDGE, 22
    learnset MOVE_WATER_PULSE, 26
    learnset MOVE_TOXIC, 30
    learnset MOVE_MUD_SHOT, 35
    learnset MOVE_AQUA_TAIL, 41
    learnset MOVE_SLUDGE_BOMB, 46
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_GUNK_SHOT, 57
    learnset MOVE_HYDRO_PUMP, 61
    terminatelearnset


levelup SPECIES_CLAUNCHER
    learnset MOVE_SPLASH, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_VICE_GRIP, 6
    learnset MOVE_FLAIL, 12
    learnset MOVE_BUBBLE_BEAM, 15
    learnset MOVE_SMACK_DOWN, 21
    learnset MOVE_AQUA_JET, 24
    learnset MOVE_BOUNCE, 29
    learnset MOVE_WATER_PULSE, 33
    learnset MOVE_AURA_SPHERE, 38
    learnset MOVE_MUDDY_WATER, 42
    learnset MOVE_DRAGON_PULSE, 45
    terminatelearnset


levelup SPECIES_CLAWITZER
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_VICE_GRIP, 6
    learnset MOVE_FLAIL, 14
    learnset MOVE_BUBBLE_BEAM, 20
    learnset MOVE_SMACK_DOWN, 26
    learnset MOVE_AQUA_JET, 31
    learnset MOVE_BOUNCE, 37
    learnset MOVE_WATER_PULSE, 41
    learnset MOVE_AURA_SPHERE, 45
    learnset MOVE_MUDDY_WATER, 48
    learnset MOVE_DRAGON_PULSE, 52
    terminatelearnset


levelup SPECIES_HELIOPTILE
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_POUND, 1
    learnset MOVE_THUNDER_SHOCK, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_RAZOR_WIND, 14
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_SHOCK_WAVE, 21
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_PARABOLIC_CHARGE, 29
    learnset MOVE_VOLT_SWITCH, 32
    learnset MOVE_THUNDERBOLT, 37
    terminatelearnset


levelup SPECIES_HELIOLISK
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_ELECTROWEB, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_SURF, 35
    learnset MOVE_VOLT_SWITCH, 39
    learnset MOVE_PARABOLIC_CHARGE, 43
    learnset MOVE_THUNDERBOLT, 46
    terminatelearnset


levelup SPECIES_TYRUNT
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BIDE, 6
    learnset MOVE_CHARM, 10
    learnset MOVE_ANCIENT_POWER, 13
    learnset MOVE_BITE, 16
    learnset MOVE_STOMP, 20
    learnset MOVE_DRAGON_TAIL, 23
    learnset MOVE_ROCK_SLIDE, 27
    learnset MOVE_THUNDER_FANG, 30
    learnset MOVE_FIRE_FANG, 31
    learnset MOVE_ICE_FANG, 32
    learnset MOVE_CRUNCH, 34
    learnset MOVE_DRAGON_CLAW, 39
    learnset MOVE_EARTHQUAKE, 43
    learnset MOVE_STONE_EDGE, 47
    terminatelearnset


levelup SPECIES_TYRANTRUM
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_DRAGON_RUSH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BIDE, 6
    learnset MOVE_CHARM, 10
    learnset MOVE_ANCIENT_POWER, 13
    learnset MOVE_BITE, 16
    learnset MOVE_STOMP, 20
    learnset MOVE_DRAGON_TAIL, 23
    learnset MOVE_ROCK_SLIDE, 27
    learnset MOVE_THUNDER_FANG, 33
    learnset MOVE_FIRE_FANG, 35
    learnset MOVE_ICE_FANG, 37
    learnset MOVE_CRUNCH, 42
    learnset MOVE_PSYCHIC_FANGS, 46
    learnset MOVE_DRAGON_CLAW, 49
    learnset MOVE_EARTHQUAKE, 54
    learnset MOVE_STONE_EDGE, 58
    learnset MOVE_HEAD_SMASH, 75
    terminatelearnset


levelup SPECIES_AMAURA
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ROCK_THROW, 9
    learnset MOVE_ICY_WIND, 12
    learnset MOVE_TAKE_DOWN, 16
    learnset MOVE_THUNDER_WAVE, 20
    learnset MOVE_MIST, 22
    learnset MOVE_ENCORE, 25
    learnset MOVE_AURORA_BEAM, 29
    learnset MOVE_AVALANCHE, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_NATURE_POWER, 37
    learnset MOVE_FREEZE_DRY, 39
    learnset MOVE_LIGHT_SCREEN, 42
    learnset MOVE_MIRROR_COAT, 44
    learnset MOVE_ANCIENT_POWER, 47
    learnset MOVE_HYPER_VOICE, 51
    learnset MOVE_BLIZZARD, 54
    terminatelearnset


levelup SPECIES_AURORUS
    learnset MOVE_EARTH_POWER, 1
    learnset MOVE_HYPER_BEAM, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ROCK_THROW, 9
    learnset MOVE_ICY_WIND, 12
    learnset MOVE_TAKE_DOWN, 17
    learnset MOVE_THUNDER_WAVE, 20
    learnset MOVE_MIST, 23
    learnset MOVE_ENCORE, 26
    learnset MOVE_AURORA_BEAM, 29
    learnset MOVE_AVALANCHE, 32
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_NATURE_POWER, 38
    learnset MOVE_FREEZE_DRY, 41
    learnset MOVE_LIGHT_SCREEN, 45
    learnset MOVE_MIRROR_COAT, 48
    learnset MOVE_ANCIENT_POWER, 53
    learnset MOVE_HYPER_VOICE, 57
    learnset MOVE_BLIZZARD, 61
    terminatelearnset


levelup SPECIES_SYLVEON
    learnset MOVE_HYPER_BEAM, 1
    learnset MOVE_COVET, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_BITE, 16
    learnset MOVE_DRAINING_KISS, 20
    learnset MOVE_HELPING_HAND, 25
    learnset MOVE_MAGICAL_LEAF, 29
    learnset MOVE_PSYSHOCK, 34
    learnset MOVE_DAZZLING_GLEAM, 38
    learnset MOVE_HYPER_VOICE, 43
    learnset MOVE_MOONBLAST, 48
    terminatelearnset


levelup SPECIES_HAWLUCHA
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DETECT, 1
    learnset MOVE_KARATE_CHOP, 7
    learnset MOVE_WING_ATTACK, 11
    learnset MOVE_AERIAL_ACE, 17
    learnset MOVE_SUBMISSION, 22
    learnset MOVE_ROOST, 26
    learnset MOVE_FEATHER_DANCE, 28
    learnset MOVE_BRICK_BREAK, 31
    learnset MOVE_BOUNCE, 34
    learnset MOVE_TAUNT, 37
    learnset MOVE_ROCK_SLIDE, 40
    learnset MOVE_ENDEAVOR, 43
    learnset MOVE_ZEN_HEADBUTT, 47
    learnset MOVE_FLYING_PRESS, 53
    learnset MOVE_BRAVE_BIRD, 61
    terminatelearnset


levelup SPECIES_DEDENNE
    learnset MOVE_NUZZLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_CHARM, 12
    learnset MOVE_SHOCK_WAVE, 17
    learnset MOVE_THUNDER_WAVE, 20
    learnset MOVE_DRAINING_KISS, 24
    learnset MOVE_PARABOLIC_CHARGE, 29
    learnset MOVE_VOLT_SWITCH, 34
    learnset MOVE_DISCHARGE, 38
    learnset MOVE_ENTRAINMENT, 42
    learnset MOVE_DAZZLING_GLEAM, 44
    learnset MOVE_THUNDERBOLT, 47
    learnset MOVE_THUNDER, 51
    terminatelearnset


levelup SPECIES_CARBINK
    learnset MOVE_SPIKES, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_SMACK_DOWN, 10
    learnset MOVE_REFLECT, 18
    learnset MOVE_FLAIL, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_STEALTH_ROCK, 32
    learnset MOVE_SKILL_SWAP, 35
    learnset MOVE_DAZZLING_GLEAM, 38
    learnset MOVE_LIGHT_SCREEN, 41
    learnset MOVE_ANCIENT_POWER, 45
    learnset MOVE_MOONBLAST, 48
    terminatelearnset


levelup SPECIES_GOOMY
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_PROTECT, 12
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_FLAIL, 19
    learnset MOVE_WATER_PULSE, 23
    learnset MOVE_MUD_SHOT, 27
    learnset MOVE_BODY_SLAM, 33
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_MUDDY_WATER, 48
    terminatelearnset


levelup SPECIES_SLIGGOO
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_PROTECT, 12
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_FLAIL, 20
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_ACID_SPRAY, 30
    learnset MOVE_MUD_SHOT, 33
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_ROCK_SLIDE, 44
    learnset MOVE_MUDDY_WATER, 50
    learnset MOVE_DRAGON_PULSE, 52
    terminatelearnset


levelup SPECIES_GOODRA
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_PROTECT, 12
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_FLAIL, 20
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_ACID_SPRAY, 30
    learnset MOVE_MUD_SHOT, 33
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_BODY_PRESS, 50
    learnset MOVE_POWER_WHIP, 55
    learnset MOVE_MUDDY_WATER, 61
    learnset MOVE_DRAGON_PULSE, 65
    terminatelearnset


levelup SPECIES_KLEFKI
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_MAGNET_BOMB, 12
    learnset MOVE_SPIKES, 15
    learnset MOVE_METAL_SOUND, 18
    learnset MOVE_TORMENT, 21
    learnset MOVE_MIRROR_SHOT, 23
    learnset MOVE_DRAINING_KISS, 26
    learnset MOVE_RECYCLE, 28
    learnset MOVE_IMPRISON, 30
    learnset MOVE_FLASH_CANNON, 35
    learnset MOVE_FOUL_PLAY, 37
    learnset MOVE_PLAY_ROUGH, 40
    terminatelearnset


levelup SPECIES_PHANTUMP
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BRANCH_POKE, 6
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_HEX, 22
    learnset MOVE_WILL_O_WISP, 26
    learnset MOVE_INGRAIN, 29
    learnset MOVE_HORN_LEECH, 35
    learnset MOVE_SUCKER_PUNCH, 38
    learnset MOVE_PHANTOM_FORCE, 43
    learnset MOVE_WOOD_HAMMER, 47
    terminatelearnset


levelup SPECIES_TREVENANT
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_X_SCISSOR, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BRANCH_POKE, 6
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_HEX, 22
    learnset MOVE_WILL_O_WISP, 26
    learnset MOVE_INGRAIN, 29
    learnset MOVE_SHADOW_CLAW, 35
    learnset MOVE_HORN_LEECH, 39
    learnset MOVE_KNOCK_OFF, 43
    learnset MOVE_SUCKER_PUNCH, 46
    learnset MOVE_PHANTOM_FORCE, 50
    learnset MOVE_WOOD_HAMMER, 54
    terminatelearnset


levelup SPECIES_PUMPKABOO
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_MEGA_DRAIN, 7
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_RAZOR_LEAF, 14
    learnset MOVE_SCARY_FACE, 17
    learnset MOVE_SHADOW_SNEAK, 22
    learnset MOVE_BULLET_SEED, 29
    learnset MOVE_MYSTICAL_FIRE, 35
    learnset MOVE_SHADOW_BALL, 38
    learnset MOVE_SEED_BOMB, 42
    learnset MOVE_DARK_PULSE, 45
    terminatelearnset


levelup SPECIES_GOURGEIST
    learnset MOVE_FIRE_BLAST, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_MEGA_DRAIN, 7
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_RAZOR_LEAF, 17
    learnset MOVE_SCARY_FACE, 21
    learnset MOVE_SHADOW_SNEAK, 26
    learnset MOVE_BULLET_SEED, 31
    learnset MOVE_MYSTICAL_FIRE, 37
    learnset MOVE_SHADOW_BALL, 41
    learnset MOVE_SEED_BOMB, 46
    learnset MOVE_MOONBLAST, 50
    learnset MOVE_EXPLOSION, 55
    terminatelearnset


levelup SPECIES_BERGMITE
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_ICY_WIND, 11
    learnset MOVE_PROTECT, 15
    learnset MOVE_BITE, 20
    learnset MOVE_ICE_FANG, 24
    learnset MOVE_TAKE_DOWN, 27
    learnset MOVE_AVALANCHE, 31
    learnset MOVE_ICE_BALL, 33
    learnset MOVE_CRUNCH, 37
    learnset MOVE_RECOVER, 40
    learnset MOVE_ICICLE_CRASH, 43
    learnset MOVE_DOUBLE_EDGE, 45
    terminatelearnset


levelup SPECIES_AVALUGG
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_ICY_WIND, 11
    learnset MOVE_PROTECT, 15
    learnset MOVE_BITE, 20
    learnset MOVE_ICE_FANG, 24
    learnset MOVE_TAKE_DOWN, 27
    learnset MOVE_AVALANCHE, 31
    learnset MOVE_ICE_BALL, 33
    learnset MOVE_HEAVY_SLAM, 40
    learnset MOVE_CRUNCH, 43
    learnset MOVE_RECOVER, 46
    learnset MOVE_ICICLE_CRASH, 50
    learnset MOVE_DOUBLE_EDGE, 54
    terminatelearnset


levelup SPECIES_NOIBAT
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GUST, 7
    learnset MOVE_SUPERSONIC, 10
    learnset MOVE_WING_ATTACK, 16
    learnset MOVE_BITE, 19
    learnset MOVE_AIR_CUTTER, 23
    learnset MOVE_RAZOR_WIND, 27
    learnset MOVE_ROOST, 33
    learnset MOVE_SUPER_FANG, 36
    learnset MOVE_CRUNCH, 40
    learnset MOVE_AIR_SLASH, 46
    learnset MOVE_HURRICANE, 59
    terminatelearnset


levelup SPECIES_NOIVERN
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_DRACO_METEOR, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GUST, 7
    learnset MOVE_SUPERSONIC, 10
    learnset MOVE_WING_ATTACK, 16
    learnset MOVE_BITE, 21
    learnset MOVE_AIR_CUTTER, 27
    learnset MOVE_RAZOR_WIND, 31
    learnset MOVE_ROOST, 37
    learnset MOVE_SUPER_FANG, 43
    learnset MOVE_CRUNCH, 48
    learnset MOVE_DRAGON_PULSE, 52
    learnset MOVE_AIR_SLASH, 56
    learnset MOVE_HURRICANE, 61
    learnset MOVE_BOOMBURST, 66
    terminatelearnset


levelup SPECIES_XERNEAS
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_LIGHT_SCREEN, 5
    learnset MOVE_AURORA_BEAM, 10
    learnset MOVE_GRAVITY, 18
    learnset MOVE_AROMATHERAPY, 25
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_NATURE_POWER, 41
    learnset MOVE_HORN_LEECH, 40
    learnset MOVE_INGRAIN, 45
    learnset MOVE_MOONBLAST, 48
    learnset MOVE_DOUBLE_EDGE, 50
    learnset MOVE_MEGAHORN, 57
    learnset MOVE_HEAL_PULSE, 65
    learnset MOVE_CLOSE_COMBAT, 77
    learnset MOVE_OUTRAGE, 86
    learnset MOVE_GEOMANCY, 100
    terminatelearnset


levelup SPECIES_YVELTAL
    learnset MOVE_GUST, 1
    learnset MOVE_TAUNT, 5
    learnset MOVE_SNARL, 13
    learnset MOVE_AIR_SLASH, 19
    learnset MOVE_DISABLE, 24
    learnset MOVE_TAILWIND, 25
    learnset MOVE_ROOST, 30
    learnset MOVE_OBLIVION_WING, 38
    learnset MOVE_DARK_PULSE, 41
    learnset MOVE_SUCKER_PUNCH, 47
    learnset MOVE_PSYCHIC, 51
    learnset MOVE_PHANTOM_FORCE, 55
    learnset MOVE_FOUL_PLAY, 60
    learnset MOVE_DRAGON_RUSH, 64
    learnset MOVE_HURRICANE, 70
    learnset MOVE_FOCUS_BLAST, 77
    learnset MOVE_SKY_ATTACK, 86
    terminatelearnset


levelup SPECIES_ZYGARDE
    learnset MOVE_BIND, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_GLARE, 1
    learnset MOVE_DIG, 13
    learnset MOVE_SAFEGUARD, 15
    learnset MOVE_BIND, 18
    learnset MOVE_HAZE, 28
    learnset MOVE_LANDS_WRATH, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_GLARE, 56
    learnset MOVE_CAMOUFLAGE, 62
    learnset MOVE_THOUSAND_WAVES, 70
    learnset MOVE_EARTHQUAKE, 77
    learnset MOVE_OUTRAGE, 84
    learnset MOVE_CORE_ENFORCER, 100
    learnset MOVE_THOUSAND_ARROWS, 100
    terminatelearnset


levelup SPECIES_DIANCIE
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_SHARPEN, 5
    learnset MOVE_SMACK_DOWN, 11
    learnset MOVE_REFLECT, 12
    learnset MOVE_GUARD_SPLIT, 13
    learnset MOVE_FLAIL, 25
    learnset MOVE_ANCIENT_POWER, 27
    learnset MOVE_STEALTH_ROCK, 35
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_LIGHT_SCREEN, 50
    learnset MOVE_POWER_GEM, 52
    learnset MOVE_MOONBLAST, 64
    learnset MOVE_STONE_EDGE, 67
    learnset MOVE_SAFEGUARD, 70
    learnset MOVE_DIAMOND_STORM, 91
    terminatelearnset


levelup SPECIES_HOOPA
    learnset MOVE_TRICK, 1
    learnset MOVE_ALLY_SWITCH, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_ASTONISH, 6
    learnset MOVE_MAGIC_COAT, 10
    learnset MOVE_LIGHT_SCREEN, 15
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_SKILL_SWAP, 25
    learnset MOVE_PHANTOM_FORCE, 35
    learnset MOVE_ZEN_HEADBUTT, 46
    learnset MOVE_WONDER_ROOM, 50
    learnset MOVE_SHADOW_BALL, 64
    learnset MOVE_PSYCHIC, 75
    learnset MOVE_HYPERSPACE_HOLE, 85
    terminatelearnset


levelup SPECIES_VOLCANION
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_LEER, 6
    learnset MOVE_FLAME_CHARGE, 16
    learnset MOVE_WATER_PULSE, 22
    learnset MOVE_WEATHER_BALL, 25
    learnset MOVE_STOMP, 31
    learnset MOVE_INCINERATE, 36
    learnset MOVE_SCALD, 40
    learnset MOVE_DOUBLE_EDGE, 54
    learnset MOVE_HYDRO_PUMP, 58
    learnset MOVE_FLARE_BLITZ, 68
    learnset MOVE_OVERHEAT, 75
    learnset MOVE_EXPLOSION, 85
    learnset MOVE_STEAM_ERUPTION, 100
    terminatelearnset


levelup SPECIES_ROWLET
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_ASTONISH, 6
    learnset MOVE_PECK, 10
    learnset MOVE_SHADOW_SNEAK, 13
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_WING_ATTACK, 19
    learnset MOVE_FORESIGHT, 21
    learnset MOVE_SYNTHESIS, 24
    learnset MOVE_AIR_SLASH, 28
    learnset MOVE_SUCKER_PUNCH, 31
    learnset MOVE_LEAF_BLADE, 34
    learnset MOVE_FEATHER_DANCE, 36
    learnset MOVE_BRAVE_BIRD, 41
    terminatelearnset


levelup SPECIES_DARTRIX
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_ASTONISH, 6
    learnset MOVE_PECK, 11
    learnset MOVE_SHADOW_SNEAK, 14
    learnset MOVE_RAZOR_LEAF, 18
    learnset MOVE_WING_ATTACK, 22
    learnset MOVE_FORESIGHT, 24
    learnset MOVE_SYNTHESIS, 27
    learnset MOVE_KNOCK_OFF, 30
    learnset MOVE_AIR_SLASH, 34
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_FEATHER_DANCE, 40
    learnset MOVE_LEAF_BLADE, 43
    learnset MOVE_BRAVE_BIRD, 46
    terminatelearnset


levelup SPECIES_DECIDUEYE
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_FRENZY_PLANT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_ASTONISH, 6
    learnset MOVE_PECK, 11
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_RAZOR_LEAF, 21
    learnset MOVE_WING_ATTACK, 24
    learnset MOVE_FORESIGHT, 27
    learnset MOVE_SYNTHESIS, 29
    learnset MOVE_KNOCK_OFF, 32
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_SUCKER_PUNCH, 40
    learnset MOVE_FEATHER_DANCE, 43
    learnset MOVE_LEAF_BLADE, 47
    learnset MOVE_SPIRIT_SHACKLE, 51
    learnset MOVE_BRAVE_BIRD, 57
    terminatelearnset


levelup SPECIES_LITTEN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LICK, 6
    learnset MOVE_LEER, 8
    learnset MOVE_BITE, 12
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_FIRE_FANG, 20
    learnset MOVE_FAKE_OUT, 24
    learnset MOVE_BODY_SLAM, 27
    learnset MOVE_FLAMETHROWER, 31
    learnset MOVE_CRUNCH, 35
    learnset MOVE_FLARE_BLITZ, 46
    terminatelearnset


levelup SPECIES_TORRACAT
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LICK, 6
    learnset MOVE_LEER, 10
    learnset MOVE_BITE, 14
    learnset MOVE_DOUBLE_KICK, 19
    learnset MOVE_FIRE_FANG, 23
    learnset MOVE_FAKE_OUT, 28
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_FLAMETHROWER, 39
    learnset MOVE_CRUNCH, 44
    learnset MOVE_FLARE_BLITZ, 58
    terminatelearnset


levelup SPECIES_INCINEROAR
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LICK, 6
    learnset MOVE_LEER, 10
    learnset MOVE_BITE, 14
    learnset MOVE_DOUBLE_KICK, 19
    learnset MOVE_FIRE_FANG, 23
    learnset MOVE_FAKE_OUT, 30
    learnset MOVE_DARKEST_LARIAT, 34
    learnset MOVE_BODY_SLAM, 37
    learnset MOVE_FIRE_PUNCH, 39
    learnset MOVE_BRICK_BREAK, 43
    learnset MOVE_FLAMETHROWER, 47
    learnset MOVE_CRUNCH, 51
    learnset MOVE_DOUBLE_EDGE, 55
    learnset MOVE_KNOCK_OFF, 61
    learnset MOVE_FLARE_BLITZ, 66
    terminatelearnset


levelup SPECIES_POPPLIO
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_DISARMING_VOICE, 6
    learnset MOVE_AQUA_JET, 11
    learnset MOVE_BABY_DOLL_EYES, 13
    learnset MOVE_ICY_WIND, 16
    learnset MOVE_SING, 19
    learnset MOVE_BUBBLE_BEAM, 22
    learnset MOVE_ENCORE, 25
    learnset MOVE_ICE_BEAM, 30
    learnset MOVE_HYPER_VOICE, 34
    learnset MOVE_MOONBLAST, 38
    learnset MOVE_HYDRO_PUMP, 45
    terminatelearnset


levelup SPECIES_BRIONNE
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_DISARMING_VOICE, 6
    learnset MOVE_AQUA_JET, 11
    learnset MOVE_BABY_DOLL_EYES, 17
    learnset MOVE_ICY_WIND, 20
    learnset MOVE_SING, 23
    learnset MOVE_BUBBLE_BEAM, 26
    learnset MOVE_ENCORE, 30
    learnset MOVE_ICY_WIND, 33
    learnset MOVE_ICE_BEAM, 37
    learnset MOVE_HYPER_VOICE, 41
    learnset MOVE_MOONBLAST, 45
    learnset MOVE_HYDRO_PUMP, 53
    terminatelearnset


levelup SPECIES_PRIMARINA
    learnset MOVE_FLIP_TURN, 1
    learnset MOVE_HYDRO_CANNON, 1
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_DISARMING_VOICE, 6
    learnset MOVE_AQUA_JET, 13
    learnset MOVE_BABY_DOLL_EYES, 19
    learnset MOVE_ICY_WIND, 22
    learnset MOVE_SING, 25
    learnset MOVE_BUBBLE_BEAM, 30
    learnset MOVE_SPARKLING_ARIA, 34
    learnset MOVE_ENCORE, 36
    learnset MOVE_ICY_WIND, 40
    learnset MOVE_ICE_BEAM, 47
    learnset MOVE_HYPER_VOICE, 51
    learnset MOVE_MOONBLAST, 55
    learnset MOVE_HYDRO_PUMP, 62
    terminatelearnset


levelup SPECIES_PIKIPEK
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ECHOED_VOICE, 8
    learnset MOVE_ROCK_SMASH, 12
    learnset MOVE_SUPERSONIC, 15
    learnset MOVE_PLUCK, 19
    learnset MOVE_ROOST, 22
    learnset MOVE_FURY_ATTACK, 24
    learnset MOVE_DRILL_PECK, 28
    learnset MOVE_BULLET_SEED, 31
    learnset MOVE_FEATHER_DANCE, 34
    learnset MOVE_HYPER_VOICE, 38
    terminatelearnset


levelup SPECIES_TRUMBEAK
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ECHOED_VOICE, 8
    learnset MOVE_ROCK_SMASH, 12
    learnset MOVE_SUPERSONIC, 15
    learnset MOVE_PLUCK, 19
    learnset MOVE_ROOST, 22
    learnset MOVE_FURY_ATTACK, 24
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_DRILL_PECK, 30
    learnset MOVE_ACROBATICS, 35
    learnset MOVE_BULLET_SEED, 38
    learnset MOVE_FEATHER_DANCE, 41
    learnset MOVE_HYPER_VOICE, 44
    terminatelearnset


levelup SPECIES_TOUCANNON
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_OVERHEAT, 1
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ECHOED_VOICE, 8
    learnset MOVE_ROCK_SMASH, 12
    learnset MOVE_SUPERSONIC, 15
    learnset MOVE_PLUCK, 19
    learnset MOVE_ROOST, 22
    learnset MOVE_FURY_ATTACK, 24
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_DRILL_PECK, 30
    learnset MOVE_FEATHER_DANCE, 32
    learnset MOVE_BEAK_BLAST, 36
    learnset MOVE_ACROBATICS, 41
    learnset MOVE_DRILL_RUN, 44
    learnset MOVE_BULLET_SEED, 47
    learnset MOVE_DOUBLE_EDGE, 52
    terminatelearnset


levelup SPECIES_YUNGOOS
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 3
    learnset MOVE_PURSUIT, 7
    learnset MOVE_SAND_ATTACK, 10
    learnset MOVE_ODOR_SLEUTH, 13
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_BITE, 20
    learnset MOVE_SUPER_FANG, 24
    learnset MOVE_FIRE_FANG, 26
    learnset MOVE_THUNDER_FANG, 27
    learnset MOVE_ICE_FANG, 28
    learnset MOVE_DIG, 31
    learnset MOVE_CRUNCH, 34
    learnset MOVE_HYPER_FANG, 37
    learnset MOVE_PSYCHIC_FANGS, 40
    learnset MOVE_DOUBLE_EDGE, 42
    terminatelearnset


levelup SPECIES_GUMSHOOS
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 3
    learnset MOVE_PURSUIT, 7
    learnset MOVE_SAND_ATTACK, 10
    learnset MOVE_ODOR_SLEUTH, 17
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_BITE, 24
    learnset MOVE_SUPER_FANG, 27
    learnset MOVE_FIRE_FANG, 30
    learnset MOVE_THUNDER_FANG, 31
    learnset MOVE_ICE_FANG, 32
    learnset MOVE_DIG, 36
    learnset MOVE_CRUNCH, 39
    learnset MOVE_HYPER_FANG, 41
    learnset MOVE_PSYCHIC_FANGS, 44
    learnset MOVE_DOUBLE_EDGE, 47
    terminatelearnset


levelup SPECIES_GRUBBIN
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_STRING_SHOT, 4
    learnset MOVE_BUG_BITE, 10
    learnset MOVE_BITE, 15
    learnset MOVE_SPARK, 21
    learnset MOVE_STICKY_WEB, 25
    learnset MOVE_X_SCISSOR, 27
    learnset MOVE_CRUNCH, 28
    learnset MOVE_DIG, 34
    learnset MOVE_DISCHARGE, 36
    terminatelearnset


levelup SPECIES_CHARJABUG
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_STRING_SHOT, 4
    learnset MOVE_BUG_BITE, 10
    learnset MOVE_VOLT_SWITCH, 20
    learnset MOVE_BITE, 24
    learnset MOVE_SPARK, 28
    learnset MOVE_STICKY_WEB, 31
    learnset MOVE_X_SCISSOR, 33
    learnset MOVE_CRUNCH, 36
    learnset MOVE_DIG, 40
    learnset MOVE_DISCHARGE, 43
    terminatelearnset


levelup SPECIES_VIKAVOLT
    learnset MOVE_ENERGY_BALL, 1
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_STRING_SHOT, 4
    learnset MOVE_BUG_BITE, 15
    learnset MOVE_VOLT_SWITCH, 21
    learnset MOVE_BITE, 27
    learnset MOVE_SPARK, 30
    learnset MOVE_STICKY_WEB, 34
    learnset MOVE_BUG_BUZZ, 42
    learnset MOVE_CRUNCH, 46
    learnset MOVE_THUNDERBOLT, 51
    learnset MOVE_ZAP_CANNON, 61
    terminatelearnset


levelup SPECIES_CRABRAWLER
    learnset MOVE_BUBBLE, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_LEER, 9
    learnset MOVE_PURSUIT, 13
    learnset MOVE_BUBBLE_BEAM, 17
    learnset MOVE_BRICK_BREAK, 22
    learnset MOVE_DIZZY_PUNCH, 25
    learnset MOVE_PAYBACK, 29
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_CRABHAMMER, 37
    learnset MOVE_ICE_PUNCH, 40
    learnset MOVE_CLOSE_COMBAT, 49
    terminatelearnset


levelup SPECIES_CRABOMINABLE
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_LEER, 9
    learnset MOVE_PURSUIT, 13
    learnset MOVE_BUBBLE_BEAM, 17
    learnset MOVE_BRICK_BREAK, 22
    learnset MOVE_DIZZY_PUNCH, 25
    learnset MOVE_PAYBACK, 29
    learnset MOVE_ICE_PUNCH, 34
    learnset MOVE_ROCK_SLIDE, 38
    learnset MOVE_CRABHAMMER, 42
    learnset MOVE_ICE_HAMMER, 48
    learnset MOVE_CLOSE_COMBAT, 55
    terminatelearnset


levelup SPECIES_ORICORIO
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_PECK, 6
    learnset MOVE_HELPING_HAND, 10
    learnset MOVE_AIR_CUTTER, 13
    learnset MOVE_BATON_PASS, 16
    learnset MOVE_FEATHER_DANCE, 20
    learnset MOVE_TEETER_DANCE, 25
    learnset MOVE_ROOST, 29
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_REVELATION_DANCE, 40
    learnset MOVE_U_TURN, 45
    learnset MOVE_HURRICANE, 50
    terminatelearnset


levelup SPECIES_CUTIEFLY
    learnset MOVE_ABSORB, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_STUN_SPORE, 6
    learnset MOVE_STRUGGLE_BUG, 11
    learnset MOVE_SWEET_SCENT, 15
    learnset MOVE_DRAINING_KISS, 19
    learnset MOVE_MEGA_DRAIN, 22
    learnset MOVE_AROMATHERAPY, 25
    learnset MOVE_MAGICAL_LEAF, 29
    learnset MOVE_BUG_BUZZ, 32
    learnset MOVE_DAZZLING_GLEAM, 35
    learnset MOVE_STICKY_WEB, 37
    terminatelearnset


levelup SPECIES_RIBOMBEE
    learnset MOVE_ABSORB, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_STUN_SPORE, 6
    learnset MOVE_STRUGGLE_BUG, 11
    learnset MOVE_SWEET_SCENT, 15
    learnset MOVE_DRAINING_KISS, 19
    learnset MOVE_MEGA_DRAIN, 22
    learnset MOVE_POLLEN_PUFF, 25
    learnset MOVE_AROMATHERAPY, 27
    learnset MOVE_MAGICAL_LEAF, 31
    learnset MOVE_BUG_BUZZ, 35
    learnset MOVE_DAZZLING_GLEAM, 38
    learnset MOVE_STICKY_WEB, 40
    terminatelearnset


levelup SPECIES_ROCKRUFF
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ROCK_THROW, 9
    learnset MOVE_BITE, 13
    learnset MOVE_ODOR_SLEUTH, 16
    learnset MOVE_ROCK_TOMB, 20
    learnset MOVE_ROCK_SLIDE, 25
    learnset MOVE_CRUNCH, 29
    learnset MOVE_PSYCHIC_FANGS, 34
    learnset MOVE_PLAY_ROUGH, 37
    learnset MOVE_ROCK_CLIMB, 40
    learnset MOVE_STONE_EDGE, 45
    terminatelearnset


levelup SPECIES_LYCANROC
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ROCK_THROW, 9
    learnset MOVE_BITE, 13
    learnset MOVE_ODOR_SLEUTH, 16
    learnset MOVE_ROCK_TOMB, 20
    learnset MOVE_SUCKER_PUNCH, 25
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_CRUNCH, 33
    learnset MOVE_ACCELEROCK, 36
    learnset MOVE_PSYCHIC_FANGS, 39
    learnset MOVE_PLAY_ROUGH, 42
    learnset MOVE_ROCK_CLIMB, 47
    learnset MOVE_STONE_EDGE, 53
    terminatelearnset


levelup SPECIES_WISHIWASHI
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_HELPING_HAND, 4
    learnset MOVE_FEINT_ATTACK, 9
    learnset MOVE_BRINE, 12
    learnset MOVE_HEADBUTT, 17
    learnset MOVE_DIVE, 21
    learnset MOVE_TAKE_DOWN, 25
    learnset MOVE_FLIP_TURN, 29
    learnset MOVE_ICE_BEAM, 33
    learnset MOVE_AQUA_TAIL, 36
    learnset MOVE_ENDEAVOR, 40
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_HYDRO_PUMP, 52
    terminatelearnset


levelup SPECIES_MAREANIE
    learnset MOVE_POISON_STING, 1
    learnset MOVE_PECK, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BITE, 9
    learnset MOVE_VENOSHOCK, 13
    learnset MOVE_AURORA_BEAM, 16
    learnset MOVE_TOXIC_SPIKES, 20
    learnset MOVE_MUD_SHOT, 23
    learnset MOVE_RECOVER, 27
    learnset MOVE_SPIKE_CANNON, 30
    learnset MOVE_LIQUIDATION, 34
    learnset MOVE_TOXIC, 37
    learnset MOVE_ICE_BEAM, 40
    learnset MOVE_POISON_JAB, 41
    terminatelearnset


levelup SPECIES_TOXAPEX
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_PECK, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BITE, 9
    learnset MOVE_VENOSHOCK, 13
    learnset MOVE_AURORA_BEAM, 16
    learnset MOVE_TOXIC_SPIKES, 20
    learnset MOVE_MUD_SHOT, 23
    learnset MOVE_RECOVER, 27
    learnset MOVE_SPIKE_CANNON, 30
    learnset MOVE_BANEFUL_BUNKER, 34
    learnset MOVE_LIQUIDATION, 39
    learnset MOVE_TOXIC, 43
    learnset MOVE_ICE_BEAM, 45
    learnset MOVE_POISON_JAB, 48
    terminatelearnset


levelup SPECIES_MUDBRAY
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_MUD_SPORT, 3
    learnset MOVE_DOUBLE_KICK, 11
    learnset MOVE_BULLDOZE, 14
    learnset MOVE_STOMP, 19
    learnset MOVE_STRENGTH, 23
    learnset MOVE_HIGH_HORSEPOWER, 27
    learnset MOVE_COUNTER, 33
    learnset MOVE_HEAVY_SLAM, 35
    learnset MOVE_ROCK_SLIDE, 38
    learnset MOVE_EARTHQUAKE, 43
    learnset MOVE_SUPERPOWER, 47
    terminatelearnset


levelup SPECIES_MUDSDALE
    learnset MOVE_ENDEAVOR, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_MUD_SPORT, 3
    learnset MOVE_DOUBLE_KICK, 11
    learnset MOVE_BULLDOZE, 14
    learnset MOVE_STOMP, 19
    learnset MOVE_STRENGTH, 24
    learnset MOVE_HIGH_HORSEPOWER, 29
    learnset MOVE_COUNTER, 36
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_HEAVY_SLAM, 48
    learnset MOVE_EARTHQUAKE, 53
    learnset MOVE_STONE_EDGE, 57
    learnset MOVE_SUPERPOWER, 61
    terminatelearnset


levelup SPECIES_DEWPIDER
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_BUG_BITE, 8
    learnset MOVE_SPIDER_WEB, 11
    learnset MOVE_BUBBLE_BEAM, 14
    learnset MOVE_BITE, 17
    learnset MOVE_AQUA_RING, 19
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_CRUNCH, 27
    learnset MOVE_LUNGE, 32
    learnset MOVE_ENTRAINMENT, 34
    learnset MOVE_LEECH_LIFE, 37
    learnset MOVE_LIQUIDATION, 39
    learnset MOVE_MIRROR_COAT, 41
    terminatelearnset


levelup SPECIES_ARAQUANID
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_BUG_BITE, 8
    learnset MOVE_SPIDER_WEB, 11
    learnset MOVE_BUBBLE_BEAM, 14
    learnset MOVE_BITE, 17
    learnset MOVE_AQUA_RING, 19
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_SURF, 26
    learnset MOVE_CRUNCH, 30
    learnset MOVE_LUNGE, 33
    learnset MOVE_ENTRAINMENT, 36
    learnset MOVE_POISON_JAB, 39
    learnset MOVE_LEECH_LIFE, 43
    learnset MOVE_LIQUIDATION, 46
    learnset MOVE_MIRROR_COAT, 49
    terminatelearnset


levelup SPECIES_FOMANTIS
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_RAZOR_LEAF, 11
    learnset MOVE_INGRAIN, 14
    learnset MOVE_SLASH, 19
    learnset MOVE_GIGA_DRAIN, 24
    learnset MOVE_X_SCISSOR, 29
    learnset MOVE_SYNTHESIS, 34
    learnset MOVE_LEAF_BLADE, 37
    learnset MOVE_SOLAR_BEAM, 40
    terminatelearnset


levelup SPECIES_LURANTIS
    learnset MOVE_LEECH_LIFE, 1
    learnset MOVE_SMART_STRIKE, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_INGRAIN, 18
    learnset MOVE_SLASH, 25
    learnset MOVE_GIGA_DRAIN, 29
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_X_SCISSOR, 36
    learnset MOVE_SYNTHESIS, 41
    learnset MOVE_LEAF_BLADE, 45
    learnset MOVE_SOLAR_BLADE, 53
    terminatelearnset


levelup SPECIES_MORELULL
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FLASH, 8
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_MEGA_DRAIN, 15
    learnset MOVE_INGRAIN, 17
    learnset MOVE_MOONLIGHT, 20
    learnset MOVE_SLEEP_POWDER, 22
    learnset MOVE_GIGA_DRAIN, 24
    learnset MOVE_DAZZLING_GLEAM, 28
    learnset MOVE_SPORE, 31
    learnset MOVE_MOONBLAST, 34
    learnset MOVE_DREAM_EATER, 37
    learnset MOVE_ENERGY_BALL, 39
    terminatelearnset


levelup SPECIES_SHIINOTIC
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FLASH, 8
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_MEGA_DRAIN, 15
    learnset MOVE_INGRAIN, 17
    learnset MOVE_MOONLIGHT, 20
    learnset MOVE_SLEEP_POWDER, 22
    learnset MOVE_GIGA_DRAIN, 24
    learnset MOVE_LIGHT_SCREEN, 25
    learnset MOVE_REFLECT, 25
    learnset MOVE_DAZZLING_GLEAM, 28
    learnset MOVE_SPORE, 31
    learnset MOVE_MOONBLAST, 34
    learnset MOVE_DREAM_EATER, 37
    learnset MOVE_ENERGY_BALL, 39
    terminatelearnset


levelup SPECIES_SALANDIT
    learnset MOVE_SCRATCH, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_EMBER, 7
    learnset MOVE_SMOG, 10
    learnset MOVE_DOUBLE_SLAP, 13
    learnset MOVE_POISON_FANG, 17
    learnset MOVE_FLAME_WHEEL, 20
    learnset MOVE_FLAME_BURST, 24
    learnset MOVE_VENOSHOCK, 27
    learnset MOVE_FAKE_OUT, 29
    learnset MOVE_ENCORE, 32
    learnset MOVE_VENOSHOCK, 34
    learnset MOVE_TOXIC, 36
    learnset MOVE_DRAGON_PULSE, 39
    learnset MOVE_FLAMETHROWER, 42
    learnset MOVE_SLUDGE_BOMB, 44
    terminatelearnset


levelup SPECIES_SALAZZLE
    learnset MOVE_BELCH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_EMBER, 7
    learnset MOVE_SMOG, 10
    learnset MOVE_DOUBLE_SLAP, 13
    learnset MOVE_POISON_FANG, 17
    learnset MOVE_FLAME_WHEEL, 20
    learnset MOVE_FLAME_BURST, 24
    learnset MOVE_VENOSHOCK, 27
    learnset MOVE_FAKE_OUT, 29
    learnset MOVE_FIRE_LASH, 33
    learnset MOVE_ENCORE, 35
    learnset MOVE_VENOSHOCK, 38
    learnset MOVE_TOXIC, 41
    learnset MOVE_DRAGON_PULSE, 45
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_SLUDGE_BOMB, 51
    terminatelearnset


levelup SPECIES_STUFFUL
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BIDE, 5
    learnset MOVE_BABY_DOLL_EYES, 6
    learnset MOVE_BRUTAL_SWING, 12
    learnset MOVE_PAYBACK, 15
    learnset MOVE_STRENGTH, 20
    learnset MOVE_FLAIL, 23
    learnset MOVE_BRICK_BREAK, 27
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_HAMMER_ARM, 34
    learnset MOVE_DOUBLE_EDGE, 37
    learnset MOVE_SUPERPOWER, 41
    terminatelearnset


levelup SPECIES_BEWEAR
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_ZEN_HEADBUTT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BIDE, 5
    learnset MOVE_BABY_DOLL_EYES, 6
    learnset MOVE_BRUTAL_SWING, 12
    learnset MOVE_PAYBACK, 16
    learnset MOVE_STRENGTH, 22
    learnset MOVE_FLAIL, 26
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_HIGH_HORSEPOWER, 38
    learnset MOVE_DARKEST_LARIAT, 42
    learnset MOVE_HAMMER_ARM, 45
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_SUPERPOWER, 51
    terminatelearnset


levelup SPECIES_BOUNSWEET
    learnset MOVE_TACKLE, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_PLAY_NICE, 4
    learnset MOVE_RAPID_SPIN, 8
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_SWEET_SCENT, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_FLAIL, 22
    learnset MOVE_TEETER_DANCE, 23
    learnset MOVE_AROMATHERAPY, 25
    terminatelearnset


levelup SPECIES_STEENEE
    learnset MOVE_TACKLE, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_PLAY_NICE, 4
    learnset MOVE_RAPID_SPIN, 8
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_SWEET_SCENT, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_FLAIL, 22
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_STOMP, 29
    learnset MOVE_TEETER_DANCE, 32
    learnset MOVE_AROMATHERAPY, 35
    terminatelearnset


levelup SPECIES_TSAREENA
    learnset MOVE_TACKLE, 1
    learnset MOVE_SPLASH, 1
    learnset MOVE_PLAY_NICE, 4
    learnset MOVE_RAPID_SPIN, 8
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_SWEET_SCENT, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_FLAIL, 22
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_STOMP, 29
    learnset MOVE_TEETER_DANCE, 31
    learnset MOVE_TROP_KICK, 33
    learnset MOVE_AROMATHERAPY, 35
    learnset MOVE_BOUNCE, 38
    learnset MOVE_PLAY_ROUGH, 42
    learnset MOVE_HIGH_JUMP_KICK, 45
    learnset MOVE_POWER_WHIP, 51
    terminatelearnset


levelup SPECIES_COMFEY
    learnset MOVE_WRAP, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_HELPING_HAND, 6
    learnset MOVE_DRAINING_KISS, 8
    learnset MOVE_MAGICAL_LEAF, 12
    learnset MOVE_SYNTHESIS, 17
    learnset MOVE_NATURAL_GIFT, 21
    learnset MOVE_SWEET_KISS, 23
    learnset MOVE_GRASS_KNOT, 28
    learnset MOVE_LEAF_TORNADO, 30
    learnset MOVE_FLORAL_HEALING, 33
    learnset MOVE_SWEET_SCENT, 35
    learnset MOVE_AROMATHERAPY, 36
    learnset MOVE_PETAL_DANCE, 38
    learnset MOVE_POLLEN_PUFF, 40
    learnset MOVE_DAZZLING_GLEAM, 43
    terminatelearnset


levelup SPECIES_ORANGURU
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_TAUNT, 1
    learnset MOVE_AFTER_YOU, 4
    learnset MOVE_SWIFT, 10
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_DIZZY_PUNCH, 20
    learnset MOVE_FEINT_ATTACK, 24
    learnset MOVE_BRICK_BREAK, 27
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_FUTURE_SIGHT, 33
    learnset MOVE_HYPNOSIS, 36
    learnset MOVE_DREAM_EATER, 39
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_HYPER_VOICE, 46
    terminatelearnset


levelup SPECIES_PASSIMIAN
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_FOCUS_ENERGY, 10
    learnset MOVE_BEAT_UP, 14
    learnset MOVE_SCARY_FACE, 18
    learnset MOVE_TAKE_DOWN, 22
    learnset MOVE_BRICK_BREAK, 27
    learnset MOVE_FLING, 30
    learnset MOVE_THRASH, 33
    learnset MOVE_DOUBLE_EDGE, 36
    learnset MOVE_ROCK_SLIDE, 40
    learnset MOVE_CLOSE_COMBAT, 46
    learnset MOVE_REVERSAL, 50
    learnset MOVE_U_TURN, 53
    terminatelearnset


levelup SPECIES_WIMPOD
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_DEFENSE_CURL, 1
    terminatelearnset


levelup SPECIES_GOLISOPOD
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_THROAT_CHOP, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_BUG_BITE, 14
    learnset MOVE_ROCK_SMASH, 17
    learnset MOVE_MUD_SHOT, 21
    learnset MOVE_IRON_DEFENSE, 27
    learnset MOVE_FIRST_IMPRESSION, 30
    learnset MOVE_SUCKER_PUNCH, 33
    learnset MOVE_RAZOR_SHELL, 36
    learnset MOVE_BRICK_BREAK, 40
    learnset MOVE_AQUA_JET, 42
    learnset MOVE_DRILL_RUN, 47
    learnset MOVE_X_SCISSOR, 52
    learnset MOVE_LIQUIDATION, 56
    terminatelearnset


levelup SPECIES_SANDYGAST
    learnset MOVE_ABSORB, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_SAND_TOMB, 11
    learnset MOVE_SAND_ATTACK, 14
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_MUD_SHOT, 22
    learnset MOVE_HYPNOSIS, 25
    learnset MOVE_GIGA_DRAIN, 31
    learnset MOVE_SHADOW_BALL, 37
    learnset MOVE_EARTH_POWER, 41
    learnset MOVE_SHORE_UP, 44
    learnset MOVE_ANCIENT_POWER, 46
    terminatelearnset


levelup SPECIES_PALOSSAND
    learnset MOVE_ABSORB, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_SAND_TOMB, 13
    learnset MOVE_SAND_ATTACK, 16
    learnset MOVE_MEGA_DRAIN, 21
    learnset MOVE_MUD_SHOT, 26
    learnset MOVE_HYPNOSIS, 31
    learnset MOVE_GIGA_DRAIN, 36
    learnset MOVE_SHADOW_BALL, 41
    learnset MOVE_EARTH_POWER, 45
    learnset MOVE_SHORE_UP, 50
    learnset MOVE_ANCIENT_POWER, 54
    terminatelearnset


levelup SPECIES_PYUKUMUKU
    learnset MOVE_BATON_PASS, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_HELPING_HAND, 5
    learnset MOVE_TAUNT, 9
    learnset MOVE_SAFEGUARD, 14
    learnset MOVE_COUNTER, 18
    learnset MOVE_PURIFY, 23
    learnset MOVE_GASTRO_ACID, 25
    learnset MOVE_PAIN_SPLIT, 28
    learnset MOVE_RECOVER, 31
    learnset MOVE_SOAK, 33
    learnset MOVE_TOXIC, 34
    terminatelearnset


levelup SPECIES_TYPE_NULL
    learnset MOVE_TACKLE, 1
    learnset MOVE_IMPRISON, 1
    learnset MOVE_RAGE, 5
    learnset MOVE_PURSUIT, 10
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_SCARY_FACE, 19
    learnset MOVE_CRUSH_CLAW, 25
    learnset MOVE_X_SCISSOR, 31
    learnset MOVE_AIR_SLASH, 35
    learnset MOVE_IRON_HEAD, 41
    learnset MOVE_TRI_ATTACK, 45
    learnset MOVE_DOUBLE_EDGE, 51
    terminatelearnset


levelup SPECIES_SILVALLY
    learnset MOVE_TACKLE, 1
    learnset MOVE_IMPRISON, 1
    learnset MOVE_RAGE, 5
    learnset MOVE_PURSUIT, 10
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_SCARY_FACE, 19
    learnset MOVE_CRUSH_CLAW, 25
    learnset MOVE_X_SCISSOR, 31
    learnset MOVE_AIR_SLASH, 35
    learnset MOVE_MULTI_ATTACK, 40
    learnset MOVE_IRON_HEAD, 44
    learnset MOVE_TRI_ATTACK, 49
    learnset MOVE_DOUBLE_EDGE, 55
    terminatelearnset


levelup SPECIES_MINIOR
    learnset MOVE_METEOR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_SELF_DESTRUCT, 19
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_COSMIC_POWER, 31
    learnset MOVE_EARTH_POWER, 35
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_ANCIENT_POWER, 47
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_KOMALA
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_DEFENSE_CURL, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_RAPID_SPIN, 8
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_YAWN, 19
    learnset MOVE_BODY_SLAM, 24
    learnset MOVE_FLAIL, 26
    learnset MOVE_BRICK_BREAK, 29
    learnset MOVE_SUCKER_PUNCH, 33
    learnset MOVE_CHARGE, 36
    learnset MOVE_ROCK_SLIDE, 39
    learnset MOVE_PLAY_ROUGH, 42
    learnset MOVE_WOOD_HAMMER, 45
    learnset MOVE_SUPERPOWER, 49
    terminatelearnset


levelup SPECIES_TURTONATOR
    learnset MOVE_SHELL_TRAP, 1
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_EMBER, 4
    learnset MOVE_PROTECT, 8
    learnset MOVE_TWISTER, 12
    learnset MOVE_ENDURE, 15
    learnset MOVE_FLAIL, 18
    learnset MOVE_INCINERATE, 21
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_DRAGON_PULSE, 30
    learnset MOVE_FLAMETHROWER, 34
    learnset MOVE_SCORCHING_SANDS, 37
    learnset MOVE_STONE_EDGE, 42
    learnset MOVE_OVERHEAT, 49
    learnset MOVE_EXPLOSION, 52
    terminatelearnset


levelup SPECIES_TOGEDEMARU
    learnset MOVE_NUZZLE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 5
    learnset MOVE_ROLLOUT, 9
    learnset MOVE_SPARK, 15
    learnset MOVE_FAKE_OUT, 19
    learnset MOVE_BOUNCE, 24
    learnset MOVE_SMART_STRIKE, 27
    learnset MOVE_IRON_HEAD, 30
    learnset MOVE_ZING_ZAP, 36
    learnset MOVE_PIN_MISSILE, 38
    learnset MOVE_SPIKY_SHIELD, 42
    learnset MOVE_VOLT_TACKLE, 47
    terminatelearnset


levelup SPECIES_MIMIKYU
    learnset MOVE_WOOD_HAMMER, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_SHADOW_SNEAK, 9
    learnset MOVE_BABY_DOLL_EYES, 14
    learnset MOVE_MIMIC, 21
    learnset MOVE_FEINT_ATTACK, 24
    learnset MOVE_CHARM, 26
    learnset MOVE_SLASH, 28
    learnset MOVE_X_SCISSOR, 31
    learnset MOVE_SHADOW_CLAW, 34
    learnset MOVE_PLAY_ROUGH, 38
    learnset MOVE_PHANTOM_FORCE, 45
    terminatelearnset


levelup SPECIES_BRUXISH
    learnset MOVE_SUPER_FANG, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ASTONISH, 4
    learnset MOVE_CONFUSION, 9
    learnset MOVE_BITE, 12
    learnset MOVE_AQUA_JET, 17
    learnset MOVE_DISABLE, 21
    learnset MOVE_PSYWAVE, 25
    learnset MOVE_AQUA_TAIL, 31
    learnset MOVE_CRUNCH, 37
    learnset MOVE_ICE_FANG, 41
    learnset MOVE_PSYCHIC_FANGS, 45
    learnset MOVE_WAVE_CRASH, 54
    terminatelearnset


levelup SPECIES_DRAMPA
    learnset MOVE_FIRE_BLAST, 1
    learnset MOVE_HYDRO_PUMP, 1
    learnset MOVE_DRACO_METEOR, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_ECHOED_VOICE, 1
    learnset MOVE_TWISTER, 5
    learnset MOVE_PROTECT, 9
    learnset MOVE_GLARE, 14
    learnset MOVE_DRAGON_BREATH, 18
    learnset MOVE_SAFEGUARD, 24
    learnset MOVE_DRAGON_RAGE, 28
    learnset MOVE_LIGHT_SCREEN, 31
    learnset MOVE_EXTRASENSORY, 34
    learnset MOVE_DRAGON_PULSE, 40
    learnset MOVE_HYPER_VOICE, 45
    learnset MOVE_HURRICANE, 49
    learnset MOVE_FLAMETHROWER, 53
    terminatelearnset


levelup SPECIES_DHELMISE
    learnset MOVE_BODY_PRESS, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_POLTERGEIST, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_WRAP, 7
    learnset MOVE_MEGA_DRAIN, 11
    learnset MOVE_GYRO_BALL, 17
    learnset MOVE_HEX, 21
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_WHIRLPOOL, 29
    learnset MOVE_SHADOW_BALL, 33
    learnset MOVE_ENERGY_BALL, 36
    learnset MOVE_MUDDY_WATER, 40
    learnset MOVE_HEAVY_SLAM, 43
    learnset MOVE_ROCK_SLIDE, 47
    learnset MOVE_ANCHOR_SHOT, 51
    learnset MOVE_PHANTOM_FORCE, 55
    learnset MOVE_POWER_WHIP, 64
    terminatelearnset


levelup SPECIES_JANGMO_O
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PROTECT, 8
    learnset MOVE_DRAGON_TAIL, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_DRAGON_CLAW, 35
    learnset MOVE_OUTRAGE, 50
    terminatelearnset


levelup SPECIES_HAKAMO_O
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PROTECT, 8
    learnset MOVE_DRAGON_TAIL, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_BRICK_BREAK, 35
    learnset MOVE_ROCK_SLIDE, 39
    learnset MOVE_SKY_UPPERCUT, 45
    learnset MOVE_EARTHQUAKE, 52
    learnset MOVE_DRAGON_CLAW, 57
    learnset MOVE_OUTRAGE, 70
    terminatelearnset


levelup SPECIES_KOMMO_O
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PROTECT, 8
    learnset MOVE_DRAGON_TAIL, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_BULLDOZE, 25
    learnset MOVE_BRICK_BREAK, 35
    learnset MOVE_ROCK_SLIDE, 41
    learnset MOVE_CLANGING_SCALES, 45
    learnset MOVE_SKY_UPPERCUT, 50
    learnset MOVE_EARTHQUAKE, 56
    learnset MOVE_DRAGON_CLAW, 60
    learnset MOVE_BOOMBURST, 63
    learnset MOVE_CLOSE_COMBAT, 69
    learnset MOVE_OUTRAGE, 77
    terminatelearnset


levelup SPECIES_TAPU_KOKO
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_FAIRY_WIND, 10
    learnset MOVE_SPARK, 14
    learnset MOVE_FALSE_SWIPE, 18
    learnset MOVE_SHOCK_WAVE, 23
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_IRON_HEAD, 38
    learnset MOVE_WILD_CHARGE, 44
    learnset MOVE_NATURES_MADNESS, 50
    learnset MOVE_MEAN_LOOK, 54
    learnset MOVE_VOLT_TACKLE, 61
    learnset MOVE_BRAVE_BIRD, 66
    terminatelearnset


levelup SPECIES_TAPU_LELE
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_FAIRY_WIND, 10
    learnset MOVE_PSYBEAM, 14
    learnset MOVE_FALSE_SWIPE, 18
    learnset MOVE_DRAINING_KISS, 23
    learnset MOVE_EXTRASENSORY, 32
    learnset MOVE_SHADOW_BALL, 38
    learnset MOVE_PSYCHIC, 44
    learnset MOVE_NATURES_MADNESS, 50
    learnset MOVE_SKILL_SWAP, 54
    learnset MOVE_FUTURE_SIGHT, 61
    learnset MOVE_MOONBLAST, 66
    terminatelearnset


levelup SPECIES_TAPU_BULU
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_DISABLE, 10
    learnset MOVE_MEGA_DRAIN, 14
    learnset MOVE_FALSE_SWIPE, 18
    learnset MOVE_GIGA_DRAIN, 23
    learnset MOVE_HORN_LEECH, 32
    learnset MOVE_DRILL_RUN, 38
    learnset MOVE_ENERGY_BALL, 44
    learnset MOVE_NATURES_MADNESS, 50
    learnset MOVE_SKULL_BASH, 54
    learnset MOVE_WOOD_HAMMER, 61
    learnset MOVE_MEGAHORN, 66
    terminatelearnset


levelup SPECIES_TAPU_FINI
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HAZE, 10
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_FALSE_SWIPE, 18
    learnset MOVE_AURORA_BEAM, 23
    learnset MOVE_BRINE, 32
    learnset MOVE_ICE_BEAM, 38
    learnset MOVE_MUDDY_WATER, 44
    learnset MOVE_NATURES_MADNESS, 50
    learnset MOVE_MOONBLAST, 54
    learnset MOVE_HYDRO_PUMP, 61
    learnset MOVE_BLIZZARD, 66
    terminatelearnset


levelup SPECIES_COSMOG
    learnset MOVE_SPLASH, 1
    learnset MOVE_TELEPORT, 1
    terminatelearnset


levelup SPECIES_COSMOEM
    learnset MOVE_TELEPORT, 1
    learnset MOVE_COSMIC_POWER, 40
    terminatelearnset


levelup SPECIES_SOLGALEO
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_WAKE_UP_SLAP, 1
    learnset MOVE_IRON_HEAD, 7
    learnset MOVE_METAL_SOUND, 13
    learnset MOVE_ZEN_HEADBUTT, 20
    learnset MOVE_FLASH_CANNON, 25
    learnset MOVE_MORNING_SUN, 33
    learnset MOVE_CRUNCH, 39
    learnset MOVE_METAL_BURST, 46
    learnset MOVE_SUNSTEEL_STRIKE, 53
    learnset MOVE_SOLAR_BEAM, 58
    learnset MOVE_WILD_CHARGE, 61
    learnset MOVE_NOBLE_ROAR, 64
    learnset MOVE_FLARE_BLITZ, 70
    learnset MOVE_GIGA_IMPACT, 73
    terminatelearnset


levelup SPECIES_LUNALA
    learnset MOVE_TELEPORT, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_CONFUSE_RAY, 13
    learnset MOVE_AIR_SLASH, 20
    learnset MOVE_SHADOW_BALL, 25
    learnset MOVE_MOONLIGHT, 33
    learnset MOVE_NIGHT_DAZE, 39
    learnset MOVE_MAGIC_COAT, 46
    learnset MOVE_MOONGEIST_BEAM, 53
    learnset MOVE_MOONBLAST, 58
    learnset MOVE_PHANTOM_FORCE, 61
    learnset MOVE_DREAM_EATER, 64
    learnset MOVE_SHADOW_FORCE, 70
    learnset MOVE_HYPER_BEAM, 73
    terminatelearnset


levelup SPECIES_NIHILEGO
    learnset MOVE_WRAP, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ACID, 5
    learnset MOVE_TICKLE, 10
    learnset MOVE_CLEAR_SMOG, 13
    learnset MOVE_PSYWAVE, 16
    learnset MOVE_TOXIC, 20
    learnset MOVE_VENOSHOCK, 26
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_ACID_SPRAY, 32
    learnset MOVE_SAFEGUARD, 35
    learnset MOVE_TOXIC_SPIKES, 39
    learnset MOVE_POWER_GEM, 43
    learnset MOVE_VENOM_DRENCH, 46
    learnset MOVE_MIRROR_COAT, 52
    learnset MOVE_STEALTH_ROCK, 56
    learnset MOVE_SLUDGE_BOMB, 61
    learnset MOVE_ANCIENT_POWER, 65
    terminatelearnset


levelup SPECIES_BUZZWOLE
    learnset MOVE_POWER_UP_PUNCH, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_FELL_STINGER, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_COMET_PUNCH, 7
    learnset MOVE_FELL_STINGER, 10
    learnset MOVE_VITAL_THROW, 16
    learnset MOVE_TAUNT, 19
    learnset MOVE_ENDURE, 24
    learnset MOVE_LEECH_LIFE, 29
    learnset MOVE_REVERSAL, 33
    learnset MOVE_MEGA_PUNCH, 37
    learnset MOVE_LUNGE, 44
    learnset MOVE_COUNTER, 49
    learnset MOVE_HAMMER_ARM, 53
    learnset MOVE_DYNAMIC_PUNCH, 54
    learnset MOVE_HIGH_HORSEPOWER, 59
    learnset MOVE_DARKEST_LARIAT, 64
    learnset MOVE_SUPERPOWER, 70
    terminatelearnset


levelup SPECIES_PHEROMOSA
    learnset MOVE_FEINT, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SWIFT, 7
    learnset MOVE_QUICK_GUARD, 10
    learnset MOVE_BUG_BITE, 15
    learnset MOVE_FEINT, 19
    learnset MOVE_LOW_KICK, 22
    learnset MOVE_SILVER_WIND, 26
    learnset MOVE_STOMP, 29
    learnset MOVE_DOUBLE_KICK, 32
    learnset MOVE_JUMP_KICK, 37
    learnset MOVE_TRIPLE_KICK, 41
    learnset MOVE_AGILITY, 45
    learnset MOVE_BOUNCE, 50
    learnset MOVE_LUNGE, 54
    learnset MOVE_BUG_BUZZ, 58
    learnset MOVE_TRIPLE_AXEL, 64
    learnset MOVE_HIGH_JUMP_KICK, 70
    terminatelearnset


levelup SPECIES_XURKITREE
    learnset MOVE_WRAP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_THUNDER_WAVE, 8
    learnset MOVE_INGRAIN, 16
    learnset MOVE_SHOCK_WAVE, 19
    learnset MOVE_SPARK, 24
    learnset MOVE_SIGNAL_BEAM, 29
    learnset MOVE_THUNDER_PUNCH, 32
    learnset MOVE_HYPNOSIS, 36
    learnset MOVE_DISCHARGE, 42
    learnset MOVE_THUNDERBOLT, 51
    learnset MOVE_DAZZLING_GLEAM, 58
    learnset MOVE_POWER_WHIP, 64
    learnset MOVE_ZAP_CANNON, 71
    terminatelearnset


levelup SPECIES_CELESTEELA
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 5
    learnset MOVE_WIDE_GUARD, 10
    learnset MOVE_SMACK_DOWN, 13
    learnset MOVE_MEGA_DRAIN, 16
    learnset MOVE_INGRAIN, 21
    learnset MOVE_IRON_HEAD, 26
    learnset MOVE_GIGA_DRAIN, 32
    learnset MOVE_AUTOTOMIZE, 36
    learnset MOVE_FLASH_CANNON, 43
    learnset MOVE_SEED_BOMB, 47
    learnset MOVE_AIR_SLASH, 51
    learnset MOVE_SUPERPOWER, 62
    learnset MOVE_HEAVY_SLAM, 67
    learnset MOVE_DOUBLE_EDGE, 70
    terminatelearnset


levelup SPECIES_KARTANA
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_VACUUM_WAVE, 1
    learnset MOVE_RAZOR_LEAF, 8
    learnset MOVE_FALSE_SWIPE, 12
    learnset MOVE_CUT, 16
    learnset MOVE_AERIAL_ACE, 23
    learnset MOVE_SYNTHESIS, 27
    learnset MOVE_NIGHT_SLASH, 31
    learnset MOVE_LASER_FOCUS, 37
    learnset MOVE_DETECT, 41
    learnset MOVE_X_SCISSOR, 47
    learnset MOVE_LEAF_BLADE, 54
    learnset MOVE_SACRED_SWORD, 60
    learnset MOVE_PSYCHO_CUT, 67
    learnset MOVE_GUILLOTINE, 70
    terminatelearnset


levelup SPECIES_GUZZLORD
    learnset MOVE_BITE, 1
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_KNOCK_OFF, 10
    learnset MOVE_STOMP, 13
    learnset MOVE_BRUTAL_SWING, 17
    learnset MOVE_STEAMROLLER, 20
    learnset MOVE_STOMPING_TANTRUM, 25
    learnset MOVE_IRON_TAIL, 31
    learnset MOVE_CRUNCH, 37
    learnset MOVE_BODY_SLAM, 42
    learnset MOVE_HAMMER_ARM, 48
    learnset MOVE_CRUNCH, 53
    learnset MOVE_HEAVY_SLAM, 58
    learnset MOVE_BELCH, 61
    learnset MOVE_DRAGON_RUSH, 70
    learnset MOVE_GIGA_IMPACT, 74
    terminatelearnset


levelup SPECIES_NECROZMA
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_CONFUSION, 8
    learnset MOVE_MIRROR_SHOT, 12
    learnset MOVE_SLASH, 17
    learnset MOVE_NIGHT_SLASH, 23
    learnset MOVE_STORED_POWER, 27
    learnset MOVE_STEALTH_ROCK, 31
    learnset MOVE_PSYCHO_CUT, 37
    learnset MOVE_ROCK_BLAST, 41
    learnset MOVE_POWER_GEM, 47
    learnset MOVE_PHOTON_GEYSER, 60
    learnset MOVE_PRISMATIC_LASER, 70
    terminatelearnset


levelup SPECIES_MAGEARNA
    learnset MOVE_GYRO_BALL, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_DEFENSE_CURL, 6
    learnset MOVE_LUCKY_CHANT, 9
    learnset MOVE_ROLLOUT, 12
    learnset MOVE_MIRROR_SHOT, 18
    learnset MOVE_AURORA_BEAM, 23
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_IRON_DEFENSE, 36
    learnset MOVE_PSYCHIC, 43
    learnset MOVE_CRAFTY_SHIELD, 52
    learnset MOVE_FLASH_CANNON, 59
    learnset MOVE_IRON_HEAD, 65
    learnset MOVE_FLEUR_CANNON, 70
    learnset MOVE_AURA_SPHERE, 76
    learnset MOVE_ZAP_CANNON, 80
    terminatelearnset


levelup SPECIES_MARSHADOW
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_PURSUIT, 1
    learnset MOVE_FEINT, 9
    learnset MOVE_ROLLING_KICK, 13
    learnset MOVE_FORCE_PALM, 17
    learnset MOVE_SHADOW_PUNCH, 22
    learnset MOVE_DRAIN_PUNCH, 30
    learnset MOVE_JUMP_KICK, 35
    learnset MOVE_ASSURANCE, 40
    learnset MOVE_SUCKER_PUNCH, 45
    learnset MOVE_FIRE_PUNCH, 50
    learnset MOVE_ICE_PUNCH, 50
    learnset MOVE_THUNDER_PUNCH, 50
    learnset MOVE_SPECTRAL_THIEF, 60
    learnset MOVE_CLOSE_COMBAT, 70
    terminatelearnset


levelup SPECIES_POIPOLE
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_ACID, 6
    learnset MOVE_FURY_ATTACK, 10
    learnset MOVE_CHARM, 14
    learnset MOVE_VENOSHOCK, 21
    learnset MOVE_VENOM_DRENCH, 27
    learnset MOVE_TOXIC, 31
    learnset MOVE_POISON_JAB, 40
    learnset MOVE_SLUDGE_WAVE, 43
    learnset MOVE_DRAGON_PULSE, 46
    terminatelearnset


levelup SPECIES_NAGANADEL
    learnset MOVE_PECK, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_ACID, 6
    learnset MOVE_FURY_ATTACK, 10
    learnset MOVE_CHARM, 14
    learnset MOVE_VENOSHOCK, 21
    learnset MOVE_VENOM_DRENCH, 27
    learnset MOVE_DRAGON_PULSE, 34
    learnset MOVE_TOXIC, 38
    learnset MOVE_SLUDGE_WAVE, 43
    learnset MOVE_FLAMETHROWER, 47
    learnset MOVE_DRACO_METEOR, 60
    terminatelearnset


levelup SPECIES_STAKATAKA
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_PROTECT, 10
    learnset MOVE_ROCK_THROW, 14
    learnset MOVE_STOMP, 19
    learnset MOVE_ROCK_SLIDE, 25
    learnset MOVE_STEALTH_ROCK, 32
    learnset MOVE_TAKE_DOWN, 38
    learnset MOVE_IRON_HEAD, 44
    learnset MOVE_HEAVY_SLAM, 49
    learnset MOVE_EARTHQUAKE, 56
    learnset MOVE_SUPERPOWER, 61
    learnset MOVE_DOUBLE_EDGE, 65
    learnset MOVE_GYRO_BALL, 70
    terminatelearnset


levelup SPECIES_BLACEPHALON
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FIRE_SPIN, 1
    learnset MOVE_EMBER, 10
    learnset MOVE_LIGHT_SCREEN, 16
    learnset MOVE_MAGIC_COAT, 20
    learnset MOVE_FLAME_BURST, 25
    learnset MOVE_NIGHT_SHADE, 29
    learnset MOVE_CONFUSE_RAY, 33
    learnset MOVE_INCINERATE, 37
    learnset MOVE_HYPNOSIS, 43
    learnset MOVE_MYSTICAL_FIRE, 48
    learnset MOVE_SHADOW_BALL, 59
    learnset MOVE_FIRE_BLAST, 65
    learnset MOVE_WILL_O_WISP, 69
    learnset MOVE_MIND_BLOWN, 77
    terminatelearnset


levelup SPECIES_ZERAORA
    learnset MOVE_POWER_UP_PUNCH, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_SNARL, 17
    learnset MOVE_FAKE_OUT, 22
    learnset MOVE_VOLT_SWITCH, 26
    learnset MOVE_SLASH, 33
    learnset MOVE_THUNDER_PUNCH, 39
    learnset MOVE_BRICK_BREAK, 43
    learnset MOVE_WILD_CHARGE, 51
    learnset MOVE_DISCHARGE, 60
    learnset MOVE_PLASMA_FISTS, 71
    learnset MOVE_CLOSE_COMBAT, 75
    terminatelearnset


levelup SPECIES_MELTAN
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_TAIL_WHIP, 8
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_THUNDER_WAVE, 24
    learnset MOVE_ACID_ARMOR, 32
    learnset MOVE_FLASH_CANNON, 40
    terminatelearnset


levelup SPECIES_MELMETAL
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_THUNDER_WAVE, 15
    learnset MOVE_ACID_ARMOR, 22
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_FLASH_CANNON, 43
    learnset MOVE_THUNDER_PUNCH, 50
    learnset MOVE_PROTECT, 56
    learnset MOVE_DARKEST_LARIAT, 63
    learnset MOVE_DOUBLE_IRON_BASH, 68
    learnset MOVE_SUPERPOWER, 74
    terminatelearnset


levelup SPECIES_GROOKEY
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BRANCH_POKE, 6
    learnset MOVE_TAUNT, 8
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_SCREECH, 17
    learnset MOVE_KNOCK_OFF, 20
    learnset MOVE_SLAM, 24
    learnset MOVE_UPROAR, 27
    learnset MOVE_GRASSY_GLIDE, 31
    learnset MOVE_WOOD_HAMMER, 37
    learnset MOVE_ENDEAVOR, 40
    terminatelearnset


levelup SPECIES_THWACKEY
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BRANCH_POKE, 6
    learnset MOVE_TAUNT, 9
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_SCREECH, 18
    learnset MOVE_KNOCK_OFF, 22
    learnset MOVE_SLAM, 27
    learnset MOVE_UPROAR, 33
    learnset MOVE_GRASSY_GLIDE, 38
    learnset MOVE_WOOD_HAMMER, 42
    learnset MOVE_ENDEAVOR, 47
    terminatelearnset


levelup SPECIES_RILLABOOM
    learnset MOVE_HIGH_HORSEPOWER, 1
    learnset MOVE_DRAIN_PUNCH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BRANCH_POKE, 6
    learnset MOVE_TAUNT, 9
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_SCREECH, 18
    learnset MOVE_KNOCK_OFF, 22
    learnset MOVE_SLAM, 27
    learnset MOVE_UPROAR, 33
    learnset MOVE_DRUM_BEATING, 35
    learnset MOVE_FAKE_OUT, 38
    learnset MOVE_GRASSY_GLIDE, 43
    learnset MOVE_DARKEST_LARIAT, 47
    learnset MOVE_WOOD_HAMMER, 55
    terminatelearnset


levelup SPECIES_SCORBUNNY
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 6
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_DOUBLE_KICK, 13
    learnset MOVE_FLAME_CHARGE, 16
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_SUCKER_PUNCH, 25
    learnset MOVE_FIRE_PUNCH, 28
    learnset MOVE_COUNTER, 32
    learnset MOVE_BOUNCE, 35
    learnset MOVE_DOUBLE_EDGE, 40
    terminatelearnset


levelup SPECIES_RABOOT
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 6
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_DOUBLE_KICK, 13
    learnset MOVE_FLAME_CHARGE, 16
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_SUCKER_PUNCH, 25
    learnset MOVE_FIRE_PUNCH, 28
    learnset MOVE_BOUNCE, 39
    learnset MOVE_DOUBLE_EDGE, 48
    terminatelearnset


levelup SPECIES_CINDERACE
    learnset MOVE_COUNTER, 1
    learnset MOVE_FLARE_BLITZ, 1
    learnset MOVE_HIGH_JUMP_KICK, 1
    learnset MOVE_FEINT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_FLAME_CHARGE, 19
    learnset MOVE_AGILITY, 24
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_BLAZE_KICK, 36
    learnset MOVE_JUMP_KICK, 40
    learnset MOVE_BOUNCE, 46
    learnset MOVE_DOUBLE_EDGE, 54
    learnset MOVE_PYRO_BALL, 63
    terminatelearnset


levelup SPECIES_SOBBLE
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 6
    learnset MOVE_BIND, 8
    learnset MOVE_WATER_PULSE, 12
    learnset MOVE_TEARFUL_LOOK, 17
    learnset MOVE_SUCKER_PUNCH, 20
    learnset MOVE_U_TURN, 24
    learnset MOVE_LIQUIDATION, 28
    learnset MOVE_AQUA_JET, 31
    learnset MOVE_SURF, 35
    terminatelearnset


levelup SPECIES_DRIZZILE
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 6
    learnset MOVE_BIND, 8
    learnset MOVE_WATER_PULSE, 12
    learnset MOVE_TEARFUL_LOOK, 17
    learnset MOVE_SUCKER_PUNCH, 22
    learnset MOVE_U_TURN, 27
    learnset MOVE_LIQUIDATION, 33
    learnset MOVE_AQUA_JET, 38
    learnset MOVE_SURF, 43
    terminatelearnset


levelup SPECIES_INTELEON
    learnset MOVE_HYDRO_CANNON, 1
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_WATER_GUN, 6
    learnset MOVE_BIND, 8
    learnset MOVE_WATER_PULSE, 12
    learnset MOVE_TEARFUL_LOOK, 17
    learnset MOVE_SUCKER_PUNCH, 22
    learnset MOVE_U_TURN, 27
    learnset MOVE_ACROBATICS, 36
    learnset MOVE_LIQUIDATION, 38
    learnset MOVE_AQUA_JET, 42
    learnset MOVE_SURF, 47
    learnset MOVE_SHADOW_BALL, 50
    learnset MOVE_AIR_SLASH, 53
    learnset MOVE_ICE_BEAM, 57
    learnset MOVE_SNIPE_SHOT, 60
    terminatelearnset


levelup SPECIES_SKWOVET
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BITE, 5
    learnset MOVE_ROLLOUT, 12
    learnset MOVE_BODY_SLAM, 17
    learnset MOVE_TRAILBLAZE, 20
    learnset MOVE_COUNTER, 24
    learnset MOVE_BULLET_PUNCH, 28
    learnset MOVE_SUPER_FANG, 31
    learnset MOVE_CRUNCH, 34
    learnset MOVE_SEED_BOMB, 36
    learnset MOVE_BELCH, 38
    terminatelearnset


levelup SPECIES_GREEDENT
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BITE, 5
    learnset MOVE_ROLLOUT, 12
    learnset MOVE_BODY_SLAM, 17
    learnset MOVE_TRAILBLAZE, 20
    learnset MOVE_COUNTER, 24
    learnset MOVE_STOMPING_TANTRUM, 27
    learnset MOVE_FIRE_FANG, 29
    learnset MOVE_BULLET_PUNCH, 32
    learnset MOVE_SUPER_FANG, 35
    learnset MOVE_CRUNCH, 37
    learnset MOVE_SEED_BOMB, 40
    learnset MOVE_BELCH, 42
    terminatelearnset


levelup SPECIES_ROOKIDEE
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_SMASH, 7
    learnset MOVE_FURY_ATTACK, 11
    learnset MOVE_PLUCK, 16
    learnset MOVE_TAUNT, 20
    learnset MOVE_TAKE_DOWN, 25
    learnset MOVE_DRILL_PECK, 29
    learnset MOVE_SWAGGER, 31
    learnset MOVE_BRAVE_BIRD, 36
    terminatelearnset


levelup SPECIES_CORVISQUIRE
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_SMASH, 7
    learnset MOVE_FURY_ATTACK, 11
    learnset MOVE_PLUCK, 18
    learnset MOVE_TAUNT, 23
    learnset MOVE_TAKE_DOWN, 27
    learnset MOVE_DRILL_PECK, 30
    learnset MOVE_SWAGGER, 33
    learnset MOVE_BODY_SLAM, 37
    learnset MOVE_BRAVE_BIRD, 44
    terminatelearnset


levelup SPECIES_CORVIKNIGHT
    learnset MOVE_REVERSAL, 1
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_SMASH, 7
    learnset MOVE_FURY_ATTACK, 11
    learnset MOVE_PLUCK, 18
    learnset MOVE_TAUNT, 23
    learnset MOVE_TAKE_DOWN, 27
    learnset MOVE_DRILL_PECK, 30
    learnset MOVE_SWAGGER, 33
    learnset MOVE_STEEL_WING, 38
    learnset MOVE_BODY_SLAM, 41
    learnset MOVE_BODY_PRESS, 44
    learnset MOVE_BRAVE_BIRD, 50
    terminatelearnset


levelup SPECIES_BLIPBUG
    learnset MOVE_STRUGGLE_BUG, 1
    terminatelearnset


levelup SPECIES_DOTTLER
    learnset MOVE_REFLECT, 10
    learnset MOVE_LIGHT_SCREEN, 10
    learnset MOVE_CONFUSION, 10
    learnset MOVE_STRUGGLE_BUG, 10
    terminatelearnset


levelup SPECIES_ORBEETLE
    learnset MOVE_ENERGY_BALL, 1
    learnset MOVE_REFLECT, 1
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_CONFUSE_RAY, 13
    learnset MOVE_MAGIC_COAT, 15
    learnset MOVE_PSYBEAM, 20
    learnset MOVE_HYPNOSIS, 24
    learnset MOVE_ALLY_SWITCH, 27
    learnset MOVE_BUG_BUZZ, 33
    learnset MOVE_MIRROR_COAT, 36
    learnset MOVE_PSYCHIC, 39
    learnset MOVE_SHADOW_BALL, 42
    terminatelearnset


levelup SPECIES_NICKIT
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BEAT_UP, 4
    learnset MOVE_SNARL, 11
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_MUD_SHOT, 19
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_NIGHT_SLASH, 29
    learnset MOVE_TAIL_SLAP, 32
    learnset MOVE_FOUL_PLAY, 37
    terminatelearnset


levelup SPECIES_THIEVUL
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BEAT_UP, 4
    learnset MOVE_SNARL, 11
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_MUD_SHOT, 19
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_NIGHT_SLASH, 29
    learnset MOVE_TAIL_SLAP, 32
    learnset MOVE_FOUL_PLAY, 37
    learnset MOVE_KNOCK_OFF, 41
    learnset MOVE_PARTING_SHOT, 44
    terminatelearnset


levelup SPECIES_GOSSIFLEUR
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_SING, 1
    learnset MOVE_RAPID_SPIN, 4
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_ROUND, 16
    learnset MOVE_LEAF_TORNADO, 20
    learnset MOVE_SYNTHESIS, 25
    learnset MOVE_HYPER_VOICE, 29
    learnset MOVE_AROMATHERAPY, 32
    learnset MOVE_SLEEP_POWDER, 35
    learnset MOVE_LEAF_STORM, 40
    terminatelearnset


levelup SPECIES_ELDEGOSS
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_SING, 1
    learnset MOVE_RAPID_SPIN, 4
    learnset MOVE_SWEET_SCENT, 8
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_ROUND, 16
    learnset MOVE_LEAF_TORNADO, 20
    learnset MOVE_SYNTHESIS, 27
    learnset MOVE_HYPER_VOICE, 31
    learnset MOVE_AROMATHERAPY, 34
    learnset MOVE_SLEEP_POWDER, 37
    learnset MOVE_ENERGY_BALL, 42
    learnset MOVE_LEAF_STORM, 46
    terminatelearnset


levelup SPECIES_WOOLOO
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DEFENSE_CURL, 4
    learnset MOVE_COPYCAT, 8
    learnset MOVE_DOUBLE_KICK, 13
    learnset MOVE_HEADBUTT, 17
    learnset MOVE_THUNDER_WAVE, 21
    learnset MOVE_BODY_SLAM, 24
    learnset MOVE_REVERSAL, 28
    learnset MOVE_WILD_CHARGE, 31
    learnset MOVE_DOUBLE_EDGE, 40
    terminatelearnset


levelup SPECIES_DUBWOOL
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DEFENSE_CURL, 4
    learnset MOVE_COPYCAT, 8
    learnset MOVE_DOUBLE_KICK, 13
    learnset MOVE_HEADBUTT, 17
    learnset MOVE_THUNDER_WAVE, 21
    learnset MOVE_BODY_SLAM, 24
    learnset MOVE_REVERSAL, 28
    learnset MOVE_SMART_STRIKE, 32
    learnset MOVE_WILD_CHARGE, 37
    learnset MOVE_DRILL_RUN, 41
    learnset MOVE_DOUBLE_EDGE, 45
    terminatelearnset


levelup SPECIES_CHEWTLE
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BITE, 7
    learnset MOVE_PROTECT, 14
    learnset MOVE_HEADBUTT, 19
    learnset MOVE_ICE_FANG, 21
    learnset MOVE_CRUNCH, 25
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_LIQUIDATION, 35
    terminatelearnset


levelup SPECIES_DREDNAW
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BITE, 7
    learnset MOVE_PROTECT, 14
    learnset MOVE_HEADBUTT, 19
    learnset MOVE_ROCK_TOMB, 22
    learnset MOVE_ICE_FANG, 26
    learnset MOVE_CRUNCH, 29
    learnset MOVE_BODY_SLAM, 31
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_BODY_PRESS, 39
    learnset MOVE_LIQUIDATION, 44
    learnset MOVE_STONE_EDGE, 49
    terminatelearnset


levelup SPECIES_YAMPER
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_NUZZLE, 5
    learnset MOVE_BITE, 10
    learnset MOVE_ROAR, 13
    learnset MOVE_SPARK, 17
    learnset MOVE_CHARM, 21
    learnset MOVE_CRUNCH, 25
    learnset MOVE_THUNDER_FANG, 27
    learnset MOVE_SNARL, 30
    learnset MOVE_WILD_CHARGE, 31
    learnset MOVE_PLAY_ROUGH, 33
    terminatelearnset


levelup SPECIES_BOLTUND
    learnset MOVE_VOLT_TACKLE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_NUZZLE, 5
    learnset MOVE_BITE, 10
    learnset MOVE_ROAR, 13
    learnset MOVE_SPARK, 17
    learnset MOVE_CHARM, 21
    learnset MOVE_CRUNCH, 28
    learnset MOVE_PSYCHIC_FANGS, 31
    learnset MOVE_THUNDER_FANG, 33
    learnset MOVE_SNARL, 36
    learnset MOVE_WILD_CHARGE, 38
    learnset MOVE_PLAY_ROUGH, 40
    terminatelearnset


levelup SPECIES_ROLYCOLY
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_RAPID_SPIN, 5
    learnset MOVE_SMACK_DOWN, 10
    learnset MOVE_EMBER, 12
    learnset MOVE_ROCK_TOMB, 16
    learnset MOVE_INCINERATE, 20
    learnset MOVE_ROCK_SLIDE, 24
    learnset MOVE_WILL_O_WISP, 26
    learnset MOVE_ANCIENT_POWER, 29
    learnset MOVE_HEAT_CRASH, 34
    learnset MOVE_EXPLOSION, 37
    terminatelearnset


levelup SPECIES_CARKOL
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_RAPID_SPIN, 5
    learnset MOVE_SMACK_DOWN, 10
    learnset MOVE_EMBER, 12
    learnset MOVE_ROCK_TOMB, 16
    learnset MOVE_FIRE_SPIN, 22
    learnset MOVE_INCINERATE, 26
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_WILL_O_WISP, 34
    learnset MOVE_ANCIENT_POWER, 36
    learnset MOVE_HEAT_CRASH, 39
    learnset MOVE_EXPLOSION, 42
    terminatelearnset


levelup SPECIES_COALOSSAL
    learnset MOVE_SOLAR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_RAPID_SPIN, 5
    learnset MOVE_SMACK_DOWN, 10
    learnset MOVE_EMBER, 12
    learnset MOVE_ROCK_TOMB, 18
    learnset MOVE_FIRE_SPIN, 23
    learnset MOVE_INCINERATE, 27
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_WILL_O_WISP, 40
    learnset MOVE_ANCIENT_POWER, 43
    learnset MOVE_HEAT_CRASH, 47
    learnset MOVE_EXPLOSION, 50
    learnset MOVE_STONE_EDGE, 55
    terminatelearnset


levelup SPECIES_APPLIN
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_ASTONISH, 1
    terminatelearnset


levelup SPECIES_FLAPPLE
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_RECYCLE, 1
    learnset MOVE_TWISTER, 1
    learnset MOVE_ACID_SPRAY, 4
    learnset MOVE_ACROBATICS, 8
    learnset MOVE_BULLET_SEED, 12
    learnset MOVE_PROTECT, 15
    learnset MOVE_DRAGON_BREATH, 20
    learnset MOVE_GIGA_DRAIN, 25
    learnset MOVE_DRAGON_PULSE, 29
    learnset MOVE_GRAV_APPLE, 34
    learnset MOVE_FLY, 38
    learnset MOVE_DRAGON_RUSH, 42
    terminatelearnset


levelup SPECIES_APPLETUN
    learnset MOVE_DRACO_METEOR, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_BULLET_SEED, 8
    learnset MOVE_STOMP, 12
    learnset MOVE_PROTECT, 16
    learnset MOVE_MAGICAL_LEAF, 21
    learnset MOVE_RECOVER, 25
    learnset MOVE_APPLE_ACID, 28
    learnset MOVE_BODY_SLAM, 32
    learnset MOVE_DRAGON_PULSE, 37
    learnset MOVE_ENERGY_BALL, 43
    terminatelearnset


levelup SPECIES_SILICOBRA
    learnset MOVE_WRAP, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_BRUTAL_SWING, 10
    learnset MOVE_BULLDOZE, 14
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_GLARE, 24
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_DIG, 33
    learnset MOVE_BODY_SLAM, 36
    learnset MOVE_POISON_TAIL, 39
    learnset MOVE_STONE_EDGE, 42
    learnset MOVE_EARTHQUAKE, 46
    terminatelearnset


levelup SPECIES_SANDACONDA
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_BRUTAL_SWING, 10
    learnset MOVE_BULLDOZE, 14
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_GLARE, 24
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_DIG, 33
    learnset MOVE_BODY_SLAM, 36
    learnset MOVE_BODY_PRESS, 38
    learnset MOVE_FIRE_FANG, 41
    learnset MOVE_POISON_TAIL, 45
    learnset MOVE_STONE_EDGE, 49
    learnset MOVE_EARTHQUAKE, 53
    terminatelearnset


levelup SPECIES_CRAMORANT
    learnset MOVE_HYDRO_PUMP, 1
    learnset MOVE_HURRICANE, 1
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_PECK, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_WING_ATTACK, 12
    learnset MOVE_PLUCK, 17
    learnset MOVE_BRINE, 22
    learnset MOVE_DIVE, 27
    learnset MOVE_DRILL_PECK, 31
    learnset MOVE_ROOST, 34
    learnset MOVE_AIR_SLASH, 37
    learnset MOVE_BELCH, 41
    learnset MOVE_SURF, 44
    terminatelearnset


levelup SPECIES_ARROKUDA
    learnset MOVE_PECK, 1
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_FURY_ATTACK, 6
    learnset MOVE_BITE, 12
    learnset MOVE_SLASH, 17
    learnset MOVE_DIVE, 21
    learnset MOVE_CRUNCH, 26
    learnset MOVE_ICE_FANG, 29
    learnset MOVE_CRUNCH, 32
    learnset MOVE_PSYCHIC_FANGS, 35
    learnset MOVE_LIQUIDATION, 39
    learnset MOVE_DOUBLE_EDGE, 42
    terminatelearnset


levelup SPECIES_BARRASKEWDA
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_PECK, 1
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_FURY_ATTACK, 6
    learnset MOVE_BITE, 12
    learnset MOVE_SLASH, 17
    learnset MOVE_DIVE, 21
    learnset MOVE_CRUNCH, 26
    learnset MOVE_ICE_FANG, 31
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_CRUNCH, 37
    learnset MOVE_PSYCHIC_FANGS, 41
    learnset MOVE_LIQUIDATION, 44
    learnset MOVE_DOUBLE_EDGE, 47
    terminatelearnset


levelup SPECIES_TOXEL
    learnset MOVE_BELCH, 1
    learnset MOVE_TEARFUL_LOOK, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_FLAIL, 5
    learnset MOVE_ACID, 10
    learnset MOVE_SHOCK_WAVE, 15
    learnset MOVE_SLUDGE, 20
    learnset MOVE_THUNDER_WAVE, 24
    terminatelearnset


levelup SPECIES_TOXTRICITY
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_BELCH, 1
    learnset MOVE_TEARFUL_LOOK, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_FLAIL, 5
    learnset MOVE_ACID, 10
    learnset MOVE_SHOCK_WAVE, 15
    learnset MOVE_SLUDGE, 20
    learnset MOVE_THUNDER_WAVE, 24
    learnset MOVE_TAUNT, 30
    learnset MOVE_POISON_JAB, 33
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_DISCHARGE, 40
    learnset MOVE_VOLT_SWITCH, 43
    learnset MOVE_SLUDGE_BOMB, 46
    learnset MOVE_BOOMBURST, 50
    terminatelearnset


levelup SPECIES_SIZZLIPEDE
    learnset MOVE_EMBER, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_WRAP, 5
    learnset MOVE_BITE, 10
    learnset MOVE_FLAME_WHEEL, 15
    learnset MOVE_BUG_BITE, 20
    learnset MOVE_FLAME_BURST, 25
    learnset MOVE_LUNGE, 30
    learnset MOVE_CRUNCH, 35
    learnset MOVE_FIRE_LASH, 37
    learnset MOVE_LEECH_LIFE, 41
    learnset MOVE_FLARE_BLITZ, 45
    learnset MOVE_BURN_UP, 50
    terminatelearnset


levelup SPECIES_CENTISKORCH
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_WRAP, 5
    learnset MOVE_BITE, 10
    learnset MOVE_FLAME_WHEEL, 15
    learnset MOVE_BUG_BITE, 20
    learnset MOVE_FLAME_BURST, 26
    learnset MOVE_FIRE_FANG, 28
    learnset MOVE_LUNGE, 31
    learnset MOVE_CRUNCH, 37
    learnset MOVE_FIRE_LASH, 41
    learnset MOVE_LEECH_LIFE, 48
    learnset MOVE_FLARE_BLITZ, 55
    learnset MOVE_BURN_UP, 63
    terminatelearnset


levelup SPECIES_CLOBBOPUS
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FEINT, 5
    learnset MOVE_BIND, 10
    learnset MOVE_DETECT, 15
    learnset MOVE_BRICK_BREAK, 20
    learnset MOVE_SUCKER_PUNCH, 26
    learnset MOVE_TAUNT, 30
    learnset MOVE_MEGA_PUNCH, 33
    learnset MOVE_LIQUIDATION, 38
    learnset MOVE_ICE_PUNCH, 41
    learnset MOVE_SUPERPOWER, 47
    terminatelearnset


levelup SPECIES_GRAPPLOCT
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FEINT, 5
    learnset MOVE_BIND, 10
    learnset MOVE_DETECT, 15
    learnset MOVE_BRICK_BREAK, 23
    learnset MOVE_SUCKER_PUNCH, 29
    learnset MOVE_TAUNT, 33
    learnset MOVE_MEGA_PUNCH, 37
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_LIQUIDATION, 44
    learnset MOVE_ICE_PUNCH, 48
    learnset MOVE_SUPERPOWER, 53
    terminatelearnset


levelup SPECIES_SINISTEA
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_MEGA_DRAIN, 11
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUCKER_PUNCH, 21
    learnset MOVE_NIGHT_SHADE, 25
    learnset MOVE_GIGA_DRAIN, 31
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_SHADOW_BALL, 39
    learnset MOVE_MEMENTO, 43
    terminatelearnset


levelup SPECIES_POLTEAGEIST
    learnset MOVE_STRENGTH_SAP, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_MEGA_DRAIN, 11
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUCKER_PUNCH, 25
    learnset MOVE_NIGHT_SHADE, 29
    learnset MOVE_GIGA_DRAIN, 35
    learnset MOVE_TEATIME, 38
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_SHADOW_BALL, 46
    learnset MOVE_MEMENTO, 50
    terminatelearnset


levelup SPECIES_HATENNA
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LIFE_DEW, 5
    learnset MOVE_DISARMING_VOICE, 10
    learnset MOVE_AROMATHERAPY, 14
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_HEAL_PULSE, 23
    learnset MOVE_PLAY_ROUGH, 28
    learnset MOVE_MYSTICAL_FIRE, 32
    learnset MOVE_PSYCHIC, 35
    learnset MOVE_DAZZLING_GLEAM, 38
    terminatelearnset


levelup SPECIES_HATTREM
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LIFE_DEW, 5
    learnset MOVE_DISARMING_VOICE, 11
    learnset MOVE_AROMATHERAPY, 16
    learnset MOVE_PSYBEAM, 21
    learnset MOVE_HEAL_PULSE, 27
    learnset MOVE_BRUTAL_SWING, 32
    learnset MOVE_PLAY_ROUGH, 34
    learnset MOVE_MYSTICAL_FIRE, 38
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_DAZZLING_GLEAM, 45
    terminatelearnset


levelup SPECIES_HATTERENE
    learnset MOVE_DRAINING_KISS, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_LIFE_DEW, 5
    learnset MOVE_DISARMING_VOICE, 11
    learnset MOVE_AROMATHERAPY, 16
    learnset MOVE_PSYBEAM, 21
    learnset MOVE_HEAL_PULSE, 27
    learnset MOVE_BRUTAL_SWING, 33
    learnset MOVE_PLAY_ROUGH, 36
    learnset MOVE_MYSTICAL_FIRE, 39
    learnset MOVE_ZEN_HEADBUTT, 42
    learnset MOVE_PSYCHIC, 46
    learnset MOVE_DAZZLING_GLEAM, 52
    terminatelearnset


levelup SPECIES_IMPIDIMP
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_CONFIDE, 1
    learnset MOVE_BITE, 4
    learnset MOVE_FAKE_TEARS, 11
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_SWAGGER, 20
    learnset MOVE_SUCKER_PUNCH, 26
    learnset MOVE_TORMENT, 29
    learnset MOVE_DARK_PULSE, 32
    learnset MOVE_BRICK_BREAK, 35
    learnset MOVE_PLAY_ROUGH, 38
    learnset MOVE_FOUL_PLAY, 41
    terminatelearnset


levelup SPECIES_MORGREM
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_CONFIDE, 1
    learnset MOVE_BITE, 4
    learnset MOVE_FAKE_TEARS, 11
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_SWAGGER, 20
    learnset MOVE_SUCKER_PUNCH, 26
    learnset MOVE_TORMENT, 29
    learnset MOVE_FALSE_SURRENDER, 32
    learnset MOVE_DARK_PULSE, 36
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_PLAY_ROUGH, 43
    learnset MOVE_FOUL_PLAY, 46
    terminatelearnset


levelup SPECIES_GRIMMSNARL
    learnset MOVE_LEECH_LIFE, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_PARTING_SHOT, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_CONFIDE, 1
    learnset MOVE_BITE, 4
    learnset MOVE_FAKE_TEARS, 11
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_SWAGGER, 20
    learnset MOVE_SUCKER_PUNCH, 26
    learnset MOVE_TORMENT, 29
    learnset MOVE_FALSE_SURRENDER, 32
    learnset MOVE_DARK_PULSE, 38
    learnset MOVE_SPIRIT_BREAK, 42
    learnset MOVE_BRICK_BREAK, 45
    learnset MOVE_PLAY_ROUGH, 48
    learnset MOVE_FOUL_PLAY, 54
    terminatelearnset


levelup SPECIES_OBSTAGOON
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_HEADBUTT, 9
    learnset MOVE_PIN_MISSILE, 11
    learnset MOVE_BITE, 15
    learnset MOVE_NIGHT_SLASH, 20
    learnset MOVE_DIG, 23
    learnset MOVE_BODY_SLAM, 27
    learnset MOVE_SHADOW_BALL, 30
    learnset MOVE_BRICK_BREAK, 35
    learnset MOVE_THROAT_CHOP, 35
    learnset MOVE_SHADOW_CLAW, 37
    learnset MOVE_STOMPING_TANTRUM, 39
    learnset MOVE_X_SCISSOR, 42
    learnset MOVE_CROSS_CHOP, 46
    learnset MOVE_FOUL_PLAY, 49
    learnset MOVE_GUNK_SHOT, 53
    learnset MOVE_SUPERPOWER, 58
    learnset MOVE_DOUBLE_EDGE, 64
    terminatelearnset


levelup SPECIES_PERRSERKER
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FEINT, 7
    learnset MOVE_METAL_CLAW, 10
    learnset MOVE_BITE, 13
    learnset MOVE_BRICK_BREAK, 18
    learnset MOVE_SLASH, 22
    learnset MOVE_DIG, 27
    learnset MOVE_IRON_HEAD, 31
    learnset MOVE_SHADOW_CLAW, 35
    learnset MOVE_X_SCISSOR, 37
    learnset MOVE_PLAY_ROUGH, 40
    learnset MOVE_CLOSE_COMBAT, 44
    terminatelearnset


levelup SPECIES_CURSOLA
    learnset MOVE_METEOR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_ROCK_TOMB, 10
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_SPIKE_CANNON, 20
    learnset MOVE_RECOVER, 26
    learnset MOVE_HEX, 28
    learnset MOVE_POWER_GEM, 32
    learnset MOVE_SCALD, 36
    learnset MOVE_ICICLE_SPEAR, 40
    learnset MOVE_SHADOW_BALL, 44
    learnset MOVE_ANCIENT_POWER, 49
    learnset MOVE_EARTH_POWER, 54
    terminatelearnset


levelup SPECIES_SIRFETCHD
    learnset MOVE_METEOR_ASSAULT, 1
    learnset MOVE_FIRST_IMPRESSION, 1
    learnset MOVE_BRAVE_BIRD, 1
    learnset MOVE_POISON_JAB, 1
    learnset MOVE_PECK, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_AERIAL_ACE, 10
    learnset MOVE_CUT, 19
    learnset MOVE_KNOCK_OFF, 24
    learnset MOVE_SLASH, 27
    learnset MOVE_NIGHT_SLASH, 30
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_LEAF_BLADE, 41
    learnset MOVE_THROAT_CHOP, 46
    learnset MOVE_BRAVE_BIRD, 51
    learnset MOVE_CLOSE_COMBAT, 55
    terminatelearnset


levelup SPECIES_MR_RIME
    learnset MOVE_ICY_WIND, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_ICE_SHARD, 7
    learnset MOVE_ENCORE, 10
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_AURORA_BEAM, 23
    learnset MOVE_MIRROR_COAT, 28
    learnset MOVE_TEETER_DANCE, 32
    learnset MOVE_THUNDER_WAVE, 35
    learnset MOVE_RECYCLE, 38
    learnset MOVE_FAKE_OUT, 42
    learnset MOVE_ICE_BEAM, 46
    learnset MOVE_PSYCHIC, 51
    learnset MOVE_SHADOW_BALL, 55
    learnset MOVE_FREEZE_DRY, 59
    learnset MOVE_BLIZZARD, 70
    terminatelearnset


levelup SPECIES_RUNERIGUS
    learnset MOVE_BODY_PRESS, 1
    learnset MOVE_ROCK_TOMB, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_HAZE, 6
    learnset MOVE_DISABLE, 9
    learnset MOVE_NIGHT_SHADE, 10
    learnset MOVE_WILL_O_WISP, 15
    learnset MOVE_HEX, 20
    learnset MOVE_MUD_SHOT, 24
    learnset MOVE_TRICK, 27
    learnset MOVE_SHADOW_PUNCH, 34
    learnset MOVE_DARK_PULSE, 39
    learnset MOVE_PHANTOM_FORCE, 42
    learnset MOVE_EARTHQUAKE, 47
    learnset MOVE_STONE_EDGE, 51
    learnset MOVE_POLTERGEIST, 55
    terminatelearnset


levelup SPECIES_MILCERY
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_DRAINING_KISS, 12
    learnset MOVE_AROMATHERAPY, 14
    learnset MOVE_ATTRACT, 17
    learnset MOVE_RECOVER, 23
    learnset MOVE_DAZZLING_GLEAM, 29
    learnset MOVE_ENTRAINMENT, 35
    terminatelearnset


levelup SPECIES_ALCREMIE
    learnset MOVE_MISTY_EXPLOSION, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_DRAINING_KISS, 12
    learnset MOVE_AROMATHERAPY, 14
    learnset MOVE_ATTRACT, 17
    learnset MOVE_RECOVER, 23
    learnset MOVE_DAZZLING_GLEAM, 34
    learnset MOVE_ENTRAINMENT, 37
    learnset MOVE_PSYCHIC, 39
    learnset MOVE_LIGHT_SCREEN, 41
    terminatelearnset


levelup SPECIES_FALINKS
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_HEADBUTT, 9
    learnset MOVE_ROCK_TOMB, 13
    learnset MOVE_BRICK_BREAK, 22
    learnset MOVE_ROCK_SLIDE, 27
    learnset MOVE_REVERSAL, 32
    learnset MOVE_SMART_STRIKE, 37
    learnset MOVE_FIRST_IMPRESSION, 41
    learnset MOVE_CLOSE_COMBAT, 44
    learnset MOVE_MEGAHORN, 48
    learnset MOVE_NO_RETREAT, 55
    terminatelearnset


levelup SPECIES_PINCURCHIN
    learnset MOVE_SPIKES, 1
    learnset MOVE_TOXIC_SPIKES, 1
    learnset MOVE_PECK, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_FURY_ATTACK, 11
    learnset MOVE_SPARK, 16
    learnset MOVE_BUBBLE_BEAM, 21
    learnset MOVE_RECOVER, 25
    learnset MOVE_PIN_MISSILE, 29
    learnset MOVE_SUCKER_PUNCH, 32
    learnset MOVE_POISON_JAB, 35
    learnset MOVE_ZING_ZAP, 39
    learnset MOVE_SURF, 43
    terminatelearnset


levelup SPECIES_SNOM
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_STRUGGLE_BUG, 1
    terminatelearnset


levelup SPECIES_FROSMOTH
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_STRUGGLE_BUG, 1
    learnset MOVE_STUN_SPORE, 20
    learnset MOVE_AURORA_BEAM, 21
    learnset MOVE_ICY_WIND, 22
    learnset MOVE_FEATHER_DANCE, 24
    learnset MOVE_TAILWIND, 27
    learnset MOVE_BUG_BUZZ, 29
    learnset MOVE_AURORA_VEIL, 31
    learnset MOVE_ICE_BEAM, 33
    learnset MOVE_HURRICANE, 35
    terminatelearnset


levelup SPECIES_STONJOURNER
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_BLOCK, 1
    learnset MOVE_ROCK_TOMB, 10
    learnset MOVE_STOMP, 15
    learnset MOVE_BULLDOZE, 19
    learnset MOVE_ROCK_SLIDE, 24
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_BODY_PRESS, 33
    learnset MOVE_HEAVY_SLAM, 37
    learnset MOVE_STONE_EDGE, 42
    learnset MOVE_EARTHQUAKE, 45
    terminatelearnset


levelup SPECIES_EISCUE
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_MIST, 6
    learnset MOVE_WEATHER_BALL, 12
    learnset MOVE_ICY_WIND, 18
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_ICE_BEAM, 30
    learnset MOVE_SURF, 34
    learnset MOVE_IRON_HEAD, 38
    learnset MOVE_FREEZE_DRY, 42
    learnset MOVE_ICICLE_CRASH, 46
    terminatelearnset


levelup SPECIES_INDEEDEE
    learnset MOVE_RECOVER, 1
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_ENCORE, 5
    learnset MOVE_DISARMING_VOICE, 10
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_HELPING_HAND, 20
    learnset MOVE_AROMATHERAPY, 24
    learnset MOVE_PSYCHIC, 29
    learnset MOVE_FAKE_OUT, 33
    learnset MOVE_DRAINING_KISS, 37
    learnset MOVE_LAST_RESORT, 42
    terminatelearnset


levelup SPECIES_MORPEKO
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_POWER_TRIP, 6
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_SHOCK_WAVE, 15
    learnset MOVE_BITE, 19
    learnset MOVE_SPARK, 22
    learnset MOVE_BULLET_SEED, 26
    learnset MOVE_FAKE_OUT, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_PSYCHIC_FANGS, 39
    learnset MOVE_AURA_WHEEL, 47
    terminatelearnset


levelup SPECIES_CUFANT
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ROLLOUT, 5
    learnset MOVE_ROCK_SMASH, 10
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_STOMP, 20
    learnset MOVE_DIG, 24
    learnset MOVE_STRENGTH, 28 
    learnset MOVE_IRON_HEAD, 34
    learnset MOVE_PLAY_ROUGH, 37
    learnset MOVE_HIGH_HORSEPOWER, 41
    learnset MOVE_SUPERPOWER, 44
    terminatelearnset


levelup SPECIES_COPPERAJAH
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_ROLLOUT, 5
    learnset MOVE_ROCK_SMASH, 10
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_STOMP, 20
    learnset MOVE_DIG, 24
    learnset MOVE_STRENGTH, 28 
    learnset MOVE_IRON_HEAD, 34
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_PLAY_ROUGH, 39
    learnset MOVE_HEAVY_SLAM, 43
    learnset MOVE_HIGH_HORSEPOWER, 46
    learnset MOVE_SUPERPOWER, 51
    terminatelearnset


levelup SPECIES_DRACOZOLT
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_AERIAL_ACE, 14
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_PLUCK, 28
    learnset MOVE_DRAGON_CLAW, 35
    learnset MOVE_BODY_SLAM, 42
    learnset MOVE_BOLT_BEAK, 50
    learnset MOVE_HIGH_HORSEPOWER, 54
    learnset MOVE_DRAGON_RUSH, 60
    terminatelearnset


levelup SPECIES_ARCTOZOLT
    learnset MOVE_TACKLE, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_AERIAL_ACE, 14
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_PLUCK, 28
    learnset MOVE_FREEZE_DRY, 35
    learnset MOVE_BODY_SLAM, 42
    learnset MOVE_BOLT_BEAK, 50
    learnset MOVE_ICICLE_CRASH, 54
    learnset MOVE_STONE_EDGE, 60
    terminatelearnset


levelup SPECIES_DRACOVISH
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BRUTAL_SWING, 14
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_BITE, 28
    learnset MOVE_DRAGON_PULSE, 35
    learnset MOVE_CRUNCH, 42
    learnset MOVE_LIQUIDATION, 50
    learnset MOVE_DRAGON_CLAW, 54
    learnset MOVE_PSYCHIC_FANGS, 60
    learnset MOVE_FISHIOUS_REND, 70
    terminatelearnset


levelup SPECIES_ARCTOVISH
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ICY_WIND, 14
    learnset MOVE_ANCIENT_POWER, 21
    learnset MOVE_BITE, 28
    learnset MOVE_FREEZE_DRY, 35
    learnset MOVE_CRUNCH, 42
    learnset MOVE_LIQUIDATION, 50
    learnset MOVE_ICICLE_CRASH, 54
    learnset MOVE_PSYCHIC_FANGS, 60
    learnset MOVE_FISHIOUS_REND, 70
    terminatelearnset


levelup SPECIES_DURALUDON
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_SLASH, 12
    learnset MOVE_BREAKING_SWIPE, 22
    learnset MOVE_DRAGON_TAIL, 27
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_DRAGON_CLAW, 46
    learnset MOVE_FLASH_CANNON, 50
    learnset MOVE_METAL_BURST, 57
    learnset MOVE_DRAGON_PULSE, 63
    learnset MOVE_STONE_EDGE, 66
    terminatelearnset


levelup SPECIES_DREEPY
    learnset MOVE_ASTONISH, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 1
    terminatelearnset


levelup SPECIES_DRAKLOAK
    learnset MOVE_ASTONISH, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 1
    learnset MOVE_LOCK_ON, 6
    learnset MOVE_ASSURANCE, 12
    learnset MOVE_HEX, 18
    learnset MOVE_DOUBLE_HIT, 30
    learnset MOVE_U_TURN, 36
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_PHANTOM_FORCE, 57
    learnset MOVE_CRUNCH, 61
    learnset MOVE_PSYCHIC_FANGS, 65
    terminatelearnset


levelup SPECIES_DRAGAPULT
    learnset MOVE_DRACO_METEOR, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_INFESTATION, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 1
    learnset MOVE_LOCK_ON, 6
    learnset MOVE_ASSURANCE, 12
    learnset MOVE_HEX, 18
    learnset MOVE_DOUBLE_HIT, 30
    learnset MOVE_U_TURN, 36
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_DRAGON_DARTS, 60
    learnset MOVE_PHANTOM_FORCE, 63
    learnset MOVE_CRUNCH, 67
    learnset MOVE_PSYCHIC_FANGS, 71
    terminatelearnset


levelup SPECIES_ZACIAN
    learnset MOVE_SACRED_SWORD, 1
    learnset MOVE_QUICK_GUARD, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SLASH, 11
    learnset MOVE_IRON_HEAD, 25
    learnset MOVE_CRUNCH, 40
    learnset MOVE_MOONBLAST, 55
    learnset MOVE_CLOSE_COMBAT, 77
    learnset MOVE_GIGA_IMPACT, 88
    learnset MOVE_BEHEMOTH_BLADE, 99
    terminatelearnset


levelup SPECIES_ZAMAZENTA
    learnset MOVE_PROTECT, 1
    learnset MOVE_QUICK_GUARD, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SLASH, 11
    learnset MOVE_IRON_HEAD, 25
    learnset MOVE_CRUNCH, 40
    learnset MOVE_MOONBLAST, 55
    learnset MOVE_CLOSE_COMBAT, 77
    learnset MOVE_GIGA_IMPACT, 88
    learnset MOVE_BEHEMOTH_BASH, 99
    terminatelearnset


levelup SPECIES_ETERNATUS
    learnset MOVE_POISON_TAIL, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_TOXIC, 8
    learnset MOVE_VENOSHOCK, 16
    learnset MOVE_CROSS_POISON, 32
    learnset MOVE_DRAGON_PULSE, 40
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_DYNAMAX_CANNON, 56
    learnset MOVE_RECOVER, 67
    learnset MOVE_HYPER_BEAM, 75
    learnset MOVE_ETERNABEAM, 90
    terminatelearnset


levelup SPECIES_KUBFU
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_BRICK_BREAK, 24
    learnset MOVE_IRON_HEAD, 35
    learnset MOVE_ROCK_SLIDE, 45
    terminatelearnset


levelup SPECIES_URSHIFU
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_BRICK_BREAK, 24
    learnset MOVE_IRON_HEAD, 35
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_CLOSE_COMBAT, 50
    learnset MOVE_SUCKER_PUNCH, 62
    learnset MOVE_CRUNCH, 73
    learnset MOVE_WICKED_BLOW, 80
    terminatelearnset


levelup SPECIES_ZARUDE
    learnset MOVE_BIND, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 6
    learnset MOVE_VINE_WHIP, 12
    learnset MOVE_FURY_SWIPES, 18
    learnset MOVE_GRASS_KNOT, 30
    learnset MOVE_BITE, 34
    learnset MOVE_U_TURN, 38
    learnset MOVE_ENERGY_BALL, 50
    learnset MOVE_SYNTHESIS, 57
    learnset MOVE_CRUNCH, 62
    learnset MOVE_HAMMER_ARM, 66
    learnset MOVE_POWER_WHIP, 71
    learnset MOVE_JUNGLE_HEALING, 80
    terminatelearnset


levelup SPECIES_REGIELEKI
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_ELECTROWEB, 6
    learnset MOVE_ANCIENT_POWER, 12
    learnset MOVE_SHOCK_WAVE, 18
    learnset MOVE_THUNDER_WAVE, 24
    learnset MOVE_EXTREME_SPEED, 30
    learnset MOVE_THUNDER_CAGE, 36
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_LOCK_ON, 51
    learnset MOVE_ZAP_CANNON, 60
    learnset MOVE_HYPER_BEAM, 65
    learnset MOVE_EXPLOSION, 70
    terminatelearnset


levelup SPECIES_REGIDRAGO
    learnset MOVE_TWISTER, 1
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_BITE, 6
    learnset MOVE_ANCIENT_POWER, 12
    learnset MOVE_DRAGON_BREATH, 18
    learnset MOVE_SWIFT, 24
    learnset MOVE_CRUNCH, 30
    learnset MOVE_DRAGON_CLAW, 36
    learnset MOVE_HAMMER_ARM, 42
    learnset MOVE_PSYCHIC_FANGS, 51
    learnset MOVE_DRAGON_ENERGY, 60
    learnset MOVE_HYPER_BEAM, 65
    learnset MOVE_EXPLOSION, 70
    terminatelearnset


levelup SPECIES_GLASTRIER
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DOUBLE_KICK, 6
    learnset MOVE_AVALANCHE, 12
    learnset MOVE_STOMP, 18
    learnset MOVE_TORMENT, 24
    learnset MOVE_MIST, 30
    learnset MOVE_ICICLE_CRASH, 36
    learnset MOVE_TAKE_DOWN, 42
    learnset MOVE_TAUNT, 50
    learnset MOVE_DOUBLE_EDGE, 55
    terminatelearnset


levelup SPECIES_SPECTRIER
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DOUBLE_KICK, 6
    learnset MOVE_HEX, 12
    learnset MOVE_STOMP, 18
    learnset MOVE_TORMENT, 24
    learnset MOVE_MIST, 30
    learnset MOVE_SHADOW_BALL, 36
    learnset MOVE_TAKE_DOWN, 42
    learnset MOVE_TAUNT, 50
    learnset MOVE_DOUBLE_EDGE, 55
    terminatelearnset


levelup SPECIES_CALYREX
    learnset MOVE_POUND, 1
    learnset MOVE_MEGA_DRAIN, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_LIFE_DEW, 8
    learnset MOVE_GIGA_DRAIN, 16
    learnset MOVE_PSYSHOCK, 24
    learnset MOVE_HELPING_HAND, 32
    learnset MOVE_AROMATHERAPY, 40
    learnset MOVE_ENERGY_BALL, 48
    learnset MOVE_PSYCHIC, 56
    learnset MOVE_SOLAR_BEAM, 64
    learnset MOVE_FUTURE_SIGHT, 72
    terminatelearnset


levelup SPECIES_WYRDEER
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ASTONISH, 6
    learnset MOVE_HYPNOSIS, 10
    learnset MOVE_STOMP, 13
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_SMART_STRIKE, 20
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_CONFUSE_RAY, 30
    learnset MOVE_BULLDOZE, 35
    learnset MOVE_ZEN_HEADBUTT, 38
    learnset MOVE_MEGA_KICK, 40
    learnset MOVE_BODY_SLAM, 44
    learnset MOVE_DRILL_RUN, 48
    learnset MOVE_MEGAHORN, 53
    learnset MOVE_JUMP_KICK, 57
    learnset MOVE_DOUBLE_EDGE, 61
    terminatelearnset


levelup SPECIES_KLEAVOR
    learnset MOVE_SACRED_SWORD, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FURY_CUTTER, 5
    learnset MOVE_PURSUIT, 9
    learnset MOVE_FALSE_SWIPE, 10
    learnset MOVE_SMACK_DOWN, 15
    learnset MOVE_SLASH, 20
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_NIGHT_SLASH, 32
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_X_SCISSOR, 44
    learnset MOVE_STONE_AXE, 55
    learnset MOVE_SUPERPOWER, 60
    terminatelearnset


levelup SPECIES_URSALUNA
    learnset MOVE_HEADLONG_RUSH, 1
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LICK, 1
    learnset MOVE_FURY_SWIPES, 7
    learnset MOVE_FEINT_ATTACK, 11
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_SLASH, 21
    learnset MOVE_BRICK_BREAK, 31
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_SHADOW_CLAW, 44
    learnset MOVE_PLAY_ROUGH, 49
    learnset MOVE_HEAVY_SLAM, 55
    learnset MOVE_CRUNCH, 59
    learnset MOVE_HAMMER_ARM, 61
    learnset MOVE_STONE_EDGE, 66
    learnset MOVE_FACADE, 70
    learnset MOVE_EARTHQUAKE, 75
    terminatelearnset


levelup SPECIES_BASCULEGION
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_BLIZZARD, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BITE, 9
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_AQUA_JET, 17
    learnset MOVE_TAKE_DOWN, 21
    learnset MOVE_CRUNCH, 26
    learnset MOVE_SCALD, 31
    learnset MOVE_ICE_FANG, 37
    learnset MOVE_PHANTOM_FORCE, 42
    learnset MOVE_SHADOW_BALL, 42
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_LIQUIDATION, 52
    learnset MOVE_PSYCHIC_FANGS, 57
    learnset MOVE_HEAD_SMASH, 66
    learnset MOVE_WAVE_CRASH, 71
    terminatelearnset


levelup SPECIES_SNEASLER
    learnset MOVE_ROCK_SLIDE, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_METAL_CLAW, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_FEINT_ATTACK, 14
    learnset MOVE_MACH_PUNCH, 19
    learnset MOVE_BODY_SLAM, 23
    learnset MOVE_BRICK_BREAK, 25
    learnset MOVE_POISON_JAB, 29
    learnset MOVE_FAKE_OUT, 31
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_DIRE_CLAW, 36
    learnset MOVE_ROCK_CLIMB, 42
    learnset MOVE_X_SCISSOR, 46
    learnset MOVE_CLOSE_COMBAT, 50
    terminatelearnset


levelup SPECIES_OVERQWIL
    learnset MOVE_TOXIC_SPIKES, 1
    learnset MOVE_SPIKES, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_PIN_MISSILE, 1
    learnset MOVE_BITE, 10
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_SLUDGE_BOMB, 23
    learnset MOVE_AQUA_JET, 27
    learnset MOVE_SMART_STRIKE, 30
    learnset MOVE_SELF_DESTRUCT, 34
    learnset MOVE_WATERFALL, 37
    learnset MOVE_POISON_JAB, 41
    learnset MOVE_TOXIC, 46
    learnset MOVE_CRUNCH, 50
    learnset MOVE_GUNK_SHOT, 55
    learnset MOVE_EXPLOSION, 60
    terminatelearnset


levelup SPECIES_ENAMORUS
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SWAGGER, 10
    learnset MOVE_BITE, 14
    learnset MOVE_TWISTER, 17
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_GRASS_KNOT, 31
    learnset MOVE_MYSTICAL_FIRE, 36
    learnset MOVE_DAZZLING_GLEAM, 42
    learnset MOVE_EXTRASENSORY, 46
    learnset MOVE_HAMMER_ARM, 55
    learnset MOVE_MOONBLAST, 63
    learnset MOVE_SUPERPOWER, 69
    learnset MOVE_SPRINGTIDE_STORM, 76
    terminatelearnset


levelup SPECIES_SPRIGATITO
    learnset MOVE_LEAFAGE, 1	
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BITE, 7
    learnset MOVE_MAGICAL_LEAF, 11
    learnset MOVE_QUICK_ATTACK, 15
    learnset MOVE_SEED_BOMB, 19
    learnset MOVE_U_TURN, 22
    learnset MOVE_WORRY_SEED, 24
    learnset MOVE_SLASH, 27
    learnset MOVE_ENERGY_BALL, 31
    learnset MOVE_PLAY_ROUGH, 34
    learnset MOVE_SUCKER_PUNCH, 36
    terminatelearnset


levelup SPECIES_FLORAGATO
    learnset MOVE_LEAFAGE, 1	
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BITE, 9
    learnset MOVE_MAGICAL_LEAF, 13
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_SEED_BOMB, 20
    learnset MOVE_U_TURN, 23
    learnset MOVE_WORRY_SEED, 26
    learnset MOVE_SLASH, 29
    learnset MOVE_ENERGY_BALL, 33
    learnset MOVE_PLAY_ROUGH, 36
    learnset MOVE_SUCKER_PUNCH, 39
    learnset MOVE_LEAF_STORM, 48
    terminatelearnset


levelup SPECIES_MEOWSCARADA
    learnset MOVE_AURA_SPHERE, 1
    learnset MOVE_POWER_GEM, 1
    learnset MOVE_LEAFAGE, 1	
    learnset MOVE_SCRATCH, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_BITE, 9
    learnset MOVE_MAGICAL_LEAF, 13
    learnset MOVE_QUICK_ATTACK, 16
    learnset MOVE_SEED_BOMB, 20
    learnset MOVE_U_TURN, 23
    learnset MOVE_WORRY_SEED, 26
    learnset MOVE_SLASH, 29
    learnset MOVE_ENERGY_BALL, 33
    learnset MOVE_FLOWER_TRICK, 36
    learnset MOVE_PLAY_ROUGH, 40
    learnset MOVE_SUCKER_PUNCH, 44
    learnset MOVE_LEAF_STORM, 53
    terminatelearnset


levelup SPECIES_FUECOCO
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROUND, 7
    learnset MOVE_BITE, 12
    learnset MOVE_INCINERATE, 15
    learnset MOVE_YAWN, 18
    learnset MOVE_SNARL, 21
    learnset MOVE_ENCORE, 25
    learnset MOVE_SCORCHING_SANDS, 29
    learnset MOVE_FLAMETHROWER, 33
    learnset MOVE_HYPER_VOICE, 36
    learnset MOVE_FIRE_BLAST, 42
    terminatelearnset

levelup SPECIES_CROCALOR
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROUND, 7
    learnset MOVE_BITE, 12
    learnset MOVE_INCINERATE, 15
    learnset MOVE_YAWN, 18
    learnset MOVE_SNARL, 21
    learnset MOVE_ENCORE, 25
    learnset MOVE_SCORCHING_SANDS, 29
    learnset MOVE_FLAMETHROWER, 34
    learnset MOVE_HYPER_VOICE, 38
    learnset MOVE_WILL_O_WISP, 42
    learnset MOVE_FIRE_BLAST, 49
    terminatelearnset

levelup SPECIES_SKELEDIRGE
    learnset MOVE_EARTH_POWER, 1
    learnset MOVE_SLACK_OFF, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROUND, 7
    learnset MOVE_BITE, 12
    learnset MOVE_INCINERATE, 15
    learnset MOVE_YAWN, 18
    learnset MOVE_SNARL, 21
    learnset MOVE_ENCORE, 25
    learnset MOVE_SCORCHING_SANDS, 29
    learnset MOVE_FLAMETHROWER, 34
    learnset MOVE_HEX, 36
    learnset MOVE_HYPER_VOICE, 41
    learnset MOVE_WILL_O_WISP, 45
    learnset MOVE_HEAT_WAVE, 48
    learnset MOVE_SHADOW_BALL, 52
    learnset MOVE_TORCH_SONG, 70
    terminatelearnset

levelup SPECIES_QUAXLY
    learnset MOVE_GROWL, 1
    learnset MOVE_POUND, 1
    learnset MOVE_WATER_GUN, 1	
    learnset MOVE_WING_ATTACK, 10	
    learnset MOVE_AQUA_JET, 13
    learnset MOVE_DOUBLE_HIT, 17
    learnset MOVE_AQUA_CUTTER, 21
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_FOCUS_ENERGY, 27
    learnset MOVE_ACROBATICS, 31
    learnset MOVE_LIQUIDATION, 35
    learnset MOVE_ROOST, 39
    terminatelearnset

levelup SPECIES_QUAXWELL	
    learnset MOVE_GROWL, 1
    learnset MOVE_POUND, 1
    learnset MOVE_WATER_GUN, 1	
    learnset MOVE_WING_ATTACK, 10	
    learnset MOVE_AQUA_JET, 13
    learnset MOVE_DOUBLE_HIT, 17
    learnset MOVE_LOW_SWEEP, 20
    learnset MOVE_AQUA_CUTTER, 23
    learnset MOVE_AIR_SLASH, 26
    learnset MOVE_FOCUS_ENERGY, 31
    learnset MOVE_ACROBATICS, 35
    learnset MOVE_LIQUIDATION, 39
    learnset MOVE_ROOST, 43
    learnset MOVE_FEATHER_DANCE, 46
    terminatelearnset

levelup SPECIES_QUAQUAVAL
    learnset MOVE_AQUA_STEP, 1
    learnset MOVE_COUNTER, 1	
    learnset MOVE_DOUBLE_HIT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_POUND, 1
    learnset MOVE_WATER_GUN, 1	
    learnset MOVE_WING_ATTACK, 10	
    learnset MOVE_AQUA_JET, 13
    learnset MOVE_DOUBLE_HIT, 17
    learnset MOVE_LOW_SWEEP, 20
    learnset MOVE_AQUA_CUTTER, 23
    learnset MOVE_AIR_SLASH, 27
    learnset MOVE_FOCUS_ENERGY, 31
    learnset MOVE_ACROBATICS, 36
    learnset MOVE_LIQUIDATION, 40
    learnset MOVE_BRICK_BREAK, 43
    learnset MOVE_ROOST, 47
    learnset MOVE_FEATHER_DANCE, 50
    learnset MOVE_CLOSE_COMBAT, 55
    learnset MOVE_WAVE_CRASH, 61
    terminatelearnset

levelup SPECIES_LECHONK
    learnset MOVE_TACKLE, 1	
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DISARMING_VOICE, 5
    learnset MOVE_ECHOED_VOICE, 8
    learnset MOVE_MUD_SHOT, 12
    learnset MOVE_COVET, 15
    learnset MOVE_HEADBUTT, 18
    learnset MOVE_DIG, 21
    learnset MOVE_YAWN, 24
    learnset MOVE_BODY_SLAM, 26
    learnset MOVE_BULLDOZE, 28
    learnset MOVE_IRON_HEAD, 31
    learnset MOVE_DOUBLE_EDGE, 34
    terminatelearnset

levelup SPECIES_OINKOLOGNE
    learnset MOVE_TACKLE, 1	
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DISARMING_VOICE, 5
    learnset MOVE_ECHOED_VOICE, 8
    learnset MOVE_MUD_SHOT, 12
    learnset MOVE_COVET, 15
    learnset MOVE_HEADBUTT, 18
    learnset MOVE_DIG, 22
    learnset MOVE_YAWN, 25
    learnset MOVE_BODY_SLAM, 27
    learnset MOVE_BULLDOZE, 29
    learnset MOVE_PLAY_ROUGH, 32
    learnset MOVE_IRON_HEAD, 35
    learnset MOVE_EARTH_POWER, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_BELCH, 46
    terminatelearnset

levelup SPECIES_TAROUNTULA
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRUGGLE_BUG, 5
    learnset MOVE_ASSURANCE, 8
    learnset MOVE_FEINT, 11
    learnset MOVE_BUG_BITE, 15
    learnset MOVE_COUNTER, 17
    learnset MOVE_HEADBUTT, 19
    learnset MOVE_STICKY_WEB, 22
    learnset MOVE_SKITTER_SMACK, 24
    learnset MOVE_SUCKER_PUNCH, 26
    learnset MOVE_FIRST_IMPRESSION, 29
    terminatelearnset

levelup SPECIES_SPIDOPS
    learnset MOVE_STRING_SHOT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRUGGLE_BUG, 5
    learnset MOVE_ASSURANCE, 8
    learnset MOVE_FEINT, 11
    learnset MOVE_PROTECT, 15
    learnset MOVE_BUG_BITE, 18
    learnset MOVE_COUNTER, 20
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_STICKY_WEB, 25
    learnset MOVE_SKITTER_SMACK, 27
    learnset MOVE_SUCKER_PUNCH, 29
    learnset MOVE_FIRST_IMPRESSION, 32
    learnset MOVE_LUNGE, 34
    learnset MOVE_SILK_TRAP, 35
    terminatelearnset

levelup SPECIES_NYMBLE
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRUGGLE_BUG, 4
    learnset MOVE_ASTONISH, 6
    learnset MOVE_ASSURANCE, 9
    learnset MOVE_DOUBLE_KICK, 11
    learnset MOVE_SCREECH, 14
    learnset MOVE_ENDURE, 18
    learnset MOVE_BUG_BITE, 21
    learnset MOVE_COUNTER, 24
    learnset MOVE_SUCKER_PUNCH, 26
    learnset MOVE_FIRST_IMPRESSION, 29
    learnset MOVE_X_SCISSOR, 31
    terminatelearnset

levelup SPECIES_LOKIX
    learnset MOVE_REVERSAL, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_STRUGGLE_BUG, 4
    learnset MOVE_ASTONISH, 6
    learnset MOVE_ASSURANCE, 9
    learnset MOVE_DOUBLE_KICK, 11
    learnset MOVE_SCREECH, 14
    learnset MOVE_ENDURE, 18
    learnset MOVE_BUG_BITE, 21
    learnset MOVE_COUNTER, 24
    learnset MOVE_SUCKER_PUNCH, 26
    learnset MOVE_DETECT, 28
    learnset MOVE_FIRST_IMPRESSION, 30
    learnset MOVE_X_SCISSOR, 33
    learnset MOVE_BOUNCE, 35
    learnset MOVE_AXE_KICK, 37
    terminatelearnset

levelup SPECIES_PAWMI
    learnset MOVE_GROWL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_THUNDER_SHOCK, 3
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_NUZZLE, 10
    learnset MOVE_DIG, 15
    learnset MOVE_SPARK, 17
    learnset MOVE_BITE, 20
    learnset MOVE_FAKE_OUT, 22
    learnset MOVE_MACH_PUNCH, 24
    learnset MOVE_THUNDER_WAVE, 26
    learnset MOVE_THUNDER_PUNCH, 29
    learnset MOVE_ENTRAINMENT, 31
    learnset MOVE_DISCHARGE, 34
    terminatelearnset

levelup SPECIES_PAWMO
    learnset MOVE_GROWL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_THUNDER_SHOCK, 3
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_NUZZLE, 10
    learnset MOVE_DIG, 15
    learnset MOVE_ARM_THRUST, 18
    learnset MOVE_SPARK, 21
    learnset MOVE_BITE, 23
    learnset MOVE_FAKE_OUT, 26
    learnset MOVE_MACH_PUNCH, 28
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_BRICK_BREAK, 32
    learnset MOVE_CRUNCH, 34
    learnset MOVE_THUNDER_PUNCH, 37
    learnset MOVE_DISCHARGE, 41
    terminatelearnset

levelup SPECIES_PAWMOT
    learnset MOVE_VOLT_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_THUNDER_SHOCK, 3
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_NUZZLE, 10
    learnset MOVE_DIG, 15
    learnset MOVE_ARM_THRUST, 18
    learnset MOVE_SPARK, 21
    learnset MOVE_BITE, 23
    learnset MOVE_FAKE_OUT, 26
    learnset MOVE_MACH_PUNCH, 28
    learnset MOVE_THUNDER_WAVE, 31
    learnset MOVE_BRICK_BREAK, 34
    learnset MOVE_CRUNCH, 38
    learnset MOVE_THUNDER_PUNCH, 41
    learnset MOVE_DISCHARGE, 44
    learnset MOVE_CLOSE_COMBAT, 48
    learnset MOVE_PLASMA_FISTS, 53
    terminatelearnset

levelup SPECIES_TANDEMAUS
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ECHOED_VOICE, 5
    learnset MOVE_HELPING_HAND, 8
    learnset MOVE_SUPER_FANG, 11
    learnset MOVE_DOUBLE_HIT, 14
    learnset MOVE_BULLET_SEED, 18
    learnset MOVE_ENCORE, 22
    learnset MOVE_PLAY_ROUGH, 25
    learnset MOVE_HYPER_VOICE, 29
    learnset MOVE_CHARM, 32
    learnset MOVE_BEAT_UP, 35
    learnset MOVE_POPULATION_BOMB, 42
    terminatelearnset

levelup SPECIES_MAUSHOLD
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ECHOED_VOICE, 5
    learnset MOVE_HELPING_HAND, 8
    learnset MOVE_SUPER_FANG, 11
    learnset MOVE_DOUBLE_HIT, 14
    learnset MOVE_BULLET_SEED, 18
    learnset MOVE_ENCORE, 22
    learnset MOVE_PLAY_ROUGH, 25
    learnset MOVE_HYPER_VOICE, 29
    learnset MOVE_CHARM, 32
    learnset MOVE_BEAT_UP, 41
    learnset MOVE_FOLLOW_ME, 45
    learnset MOVE_U_TURN, 49
    learnset MOVE_POPULATION_BOMB, 55
    terminatelearnset

levelup SPECIES_FIDOUGH
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 3
    learnset MOVE_TAIL_WHIP, 6
    learnset MOVE_COVET, 8
    learnset MOVE_BITE, 11
    learnset MOVE_BABY_DOLL_EYES, 15
    learnset MOVE_HEADBUTT, 18
    learnset MOVE_DIG, 21
    learnset MOVE_BATON_PASS, 24
    learnset MOVE_CRUNCH, 29
    learnset MOVE_DOUBLE_EDGE, 31
    learnset MOVE_CHARM, 33
    learnset MOVE_PSYCHIC_FANGS, 35
    learnset MOVE_PLAY_ROUGH, 37
    terminatelearnset

levelup SPECIES_DACHSBUN
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 3
    learnset MOVE_TAIL_WHIP, 6
    learnset MOVE_COVET, 8
    learnset MOVE_BITE, 11
    learnset MOVE_BABY_DOLL_EYES, 16
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_DIG, 23
    learnset MOVE_BATON_PASS, 27
    learnset MOVE_CRUNCH, 31
    learnset MOVE_DOUBLE_EDGE, 34
    learnset MOVE_CHARM, 37
    learnset MOVE_PSYCHIC_FANGS, 40
    learnset MOVE_PLAY_ROUGH, 43
    terminatelearnset

levelup SPECIES_SMOLIV
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_RAZOR_LEAF, 10
    learnset MOVE_HELPING_HAND, 13
    learnset MOVE_FLAIL, 16
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_SEED_BOMB, 23
    learnset MOVE_ENERGY_BALL, 27
    learnset MOVE_GIGA_DRAIN, 30
    terminatelearnset

levelup SPECIES_DOLLIV
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_RAZOR_LEAF, 10
    learnset MOVE_HELPING_HAND, 13
    learnset MOVE_FLAIL, 16
    learnset MOVE_MEGA_DRAIN, 19
    learnset MOVE_SEED_BOMB, 25
    learnset MOVE_ENERGY_BALL, 30
    learnset MOVE_WEATHER_BALL, 33
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_EARTH_POWER, 41
    terminatelearnset

levelup SPECIES_ARBOLIVA
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_REFLECT, 1
    learnset MOVE_SWEET_SCENT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_RAZOR_LEAF, 10
    learnset MOVE_HELPING_HAND, 13
    learnset MOVE_FLAIL, 19
    learnset MOVE_MEGA_DRAIN, 23
    learnset MOVE_SEED_BOMB, 28
    learnset MOVE_ENERGY_BALL, 33
    learnset MOVE_WEATHER_BALL, 37
    learnset MOVE_GIGA_DRAIN, 40
    learnset MOVE_GRASS_KNOT, 42
    learnset MOVE_DAZZLING_GLEAM, 45
    learnset MOVE_EARTH_POWER, 48
    learnset MOVE_PETAL_DANCE, 52
    terminatelearnset

levelup SPECIES_SQUAWKABILLY
    learnset MOVE_GROWL, 1
    learnset MOVE_MIMIC, 1
    learnset MOVE_PECK, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_TORMENT, 10
    learnset MOVE_AERIAL_ACE, 13
    learnset MOVE_HEADBUTT, 17
    learnset MOVE_TAUNT, 20
    learnset MOVE_UPROAR, 24
    learnset MOVE_FLY, 28
    learnset MOVE_FACADE, 31
    learnset MOVE_U_TURN, 35
    learnset MOVE_BRAVE_BIRD, 42
    learnset MOVE_ROOST, 45
    learnset MOVE_REVERSAL, 49
    terminatelearnset

levelup SPECIES_NACLI
    learnset MOVE_HARDEN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 3
    learnset MOVE_MUD_SHOT, 7
    learnset MOVE_SMACK_DOWN, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_DIG, 21
    learnset MOVE_RECOVER, 25
    learnset MOVE_ROCK_SLIDE, 30
    learnset MOVE_HEAVY_SLAM, 35
    learnset MOVE_EARTHQUAKE, 38
    learnset MOVE_STONE_EDGE, 41
    terminatelearnset

levelup SPECIES_NACLSTACK
    learnset MOVE_HARDEN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 3
    learnset MOVE_MUD_SHOT, 7
    learnset MOVE_SMACK_DOWN, 15
    learnset MOVE_HEADBUTT, 18
    learnset MOVE_DIG, 21
    learnset MOVE_SALT_CURE, 25
    learnset MOVE_RECOVER, 29
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_HEAVY_SLAM, 38
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_STONE_EDGE, 47
    terminatelearnset

levelup SPECIES_GARGANACL
    learnset MOVE_BODY_PRESS, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 3
    learnset MOVE_MUD_SHOT, 7
    learnset MOVE_SMACK_DOWN, 15
    learnset MOVE_HEADBUTT, 18
    learnset MOVE_DIG, 21
    learnset MOVE_SALT_CURE, 25
    learnset MOVE_RECOVER, 29
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_HAMMER_ARM, 38
    learnset MOVE_HEAVY_SLAM, 41
    learnset MOVE_EARTHQUAKE, 45
    learnset MOVE_STONE_EDGE, 51
    learnset MOVE_EXPLOSION, 55
    terminatelearnset

levelup SPECIES_CHARCADET
    learnset MOVE_ASTONISH, 1
    learnset MOVE_EMBER, 1	
    learnset MOVE_LEER, 1
    learnset MOVE_CLEAR_SMOG, 8
    learnset MOVE_FIRE_SPIN, 12
    learnset MOVE_WILL_O_WISP, 16
    learnset MOVE_NIGHT_SHADE, 21
    learnset MOVE_INCINERATE, 27
    learnset MOVE_LAVA_PLUME, 32
    terminatelearnset

levelup SPECIES_ARMAROUGE
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_OVERHEAT, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_EMBER, 1	
    learnset MOVE_LEER, 1		
    learnset MOVE_CLEAR_SMOG, 8
    learnset MOVE_FIRE_SPIN, 12
    learnset MOVE_WILL_O_WISP, 16
    learnset MOVE_NIGHT_SHADE, 21	
    learnset MOVE_INCINERATE, 27
    learnset MOVE_LAVA_PLUME, 32
    learnset MOVE_MYSTICAL_FIRE, 38
    learnset MOVE_AURA_SPHERE, 45
    learnset MOVE_PSYSHOCK, 53
    learnset MOVE_FIRE_BLAST, 58
    learnset MOVE_EXPANDING_FORCE, 63
    learnset MOVE_ARMOR_CANNON, 68
    terminatelearnset

levelup SPECIES_CERULEDGE
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_EMBER, 1	
    learnset MOVE_LEER, 1		
    learnset MOVE_CLEAR_SMOG, 8
    learnset MOVE_FIRE_SPIN, 12
    learnset MOVE_WILL_O_WISP, 16
    learnset MOVE_NIGHT_SHADE, 21	
    learnset MOVE_INCINERATE, 27
    learnset MOVE_LAVA_PLUME, 32
    learnset MOVE_NIGHT_SLASH, 38
    learnset MOVE_SACRED_SWORD, 45
    learnset MOVE_SHADOW_CLAW, 53
    learnset MOVE_FLARE_BLITZ, 58
    learnset MOVE_PHANTOM_FORCE, 63
    learnset MOVE_BITTER_BLADE, 68
    terminatelearnset

levelup SPECIES_TADBULB
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_SLACK_OFF, 1	
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 7
    learnset MOVE_WATER_GUN, 11
    learnset MOVE_SPARK, 16
    learnset MOVE_MUD_SHOT, 20
    learnset MOVE_VOLT_SWITCH, 25	
    learnset MOVE_FLAIL, 29
    learnset MOVE_DISCHARGE, 32
    learnset MOVE_WEATHER_BALL, 35	
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_MUDDY_WATER, 39
    learnset MOVE_ZAP_CANNON, 45
    terminatelearnset

levelup SPECIES_BELLIBOLT
    learnset MOVE_PARABOLIC_CHARGE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_SLACK_OFF, 1	
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 7
    learnset MOVE_WATER_GUN, 14
    learnset MOVE_SPARK, 21
    learnset MOVE_MUD_SHOT, 25
    learnset MOVE_VOLT_SWITCH, 30	
    learnset MOVE_FLAIL, 34
    learnset MOVE_DISCHARGE, 37
    learnset MOVE_WEATHER_BALL, 41	
    learnset MOVE_SUCKER_PUNCH, 45
    learnset MOVE_MUDDY_WATER, 50
    learnset MOVE_ZAP_CANNON, 55
    terminatelearnset

levelup SPECIES_WATTREL
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_PLUCK, 11
    learnset MOVE_SPARK, 14
    learnset MOVE_UPROAR, 18
    learnset MOVE_ROOST, 23
    learnset MOVE_DUAL_WINGBEAT, 25
    learnset MOVE_AIR_SLASH, 30
    learnset MOVE_VOLT_SWITCH, 33
    learnset MOVE_DISCHARGE, 35
    terminatelearnset

levelup SPECIES_KILOWATTREL
    learnset MOVE_EERIE_IMPULSE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_PLUCK, 11
    learnset MOVE_SPARK, 14
    learnset MOVE_UPROAR, 18
    learnset MOVE_ROOST, 24
    learnset MOVE_DUAL_WINGBEAT, 28
    learnset MOVE_ACROBATICS, 32
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_VOLT_SWITCH, 39
    learnset MOVE_DISCHARGE, 42
    learnset MOVE_HURRICANE, 46
    learnset MOVE_THUNDER, 50
    terminatelearnset

levelup SPECIES_MASCHIFF
    learnset MOVE_LEER, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 4
    learnset MOVE_SNARL, 7
    learnset MOVE_BITE, 12
    learnset MOVE_HEADBUTT, 18
    learnset MOVE_PAYBACK, 23
    learnset MOVE_FIRE_FANG, 26
    learnset MOVE_CRUNCH, 30
    learnset MOVE_SWAGGER, 33
    learnset MOVE_BODY_SLAM, 36
    learnset MOVE_JAW_LOCK, 39
    learnset MOVE_REVERSAL, 43
    learnset MOVE_DOUBLE_EDGE, 49
    terminatelearnset

levelup SPECIES_MABOSSTIFF
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 4
    learnset MOVE_SNARL, 7
    learnset MOVE_BITE, 18
    learnset MOVE_HEADBUTT, 23
    learnset MOVE_PAYBACK, 27
    learnset MOVE_DIG, 30
    learnset MOVE_FIRE_FANG, 33
    learnset MOVE_CRUNCH, 37
    learnset MOVE_SWAGGER, 41
    learnset MOVE_BODY_SLAM, 44
    learnset MOVE_JAW_LOCK, 49
    learnset MOVE_REVERSAL, 53
    learnset MOVE_DOUBLE_EDGE, 56
    learnset MOVE_PSYCHIC_FANGS, 60
    terminatelearnset

levelup SPECIES_SHROODLE
    learnset MOVE_LEER, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_ACID_SPRAY, 5
    learnset MOVE_BITE, 8
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_POISON_FANG, 17
    learnset MOVE_FLATTER, 20
    learnset MOVE_SLASH, 24
    learnset MOVE_U_TURN, 28
    learnset MOVE_POISON_JAB, 31
    learnset MOVE_KNOCK_OFF, 34
    learnset MOVE_GUNK_SHOT, 39
    terminatelearnset

levelup SPECIES_GRAFAIAI
    learnset MOVE_LEER, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_ACID_SPRAY, 5
    learnset MOVE_BITE, 8
    learnset MOVE_FURY_SWIPES, 12
    learnset MOVE_POISON_FANG, 21
    learnset MOVE_FLATTER, 25
    learnset MOVE_SLASH, 28
    learnset MOVE_X_SCISSOR, 32
    learnset MOVE_U_TURN, 35
    learnset MOVE_POISON_JAB, 39
    learnset MOVE_KNOCK_OFF, 43
    learnset MOVE_GUNK_SHOT, 50
    terminatelearnset

levelup SPECIES_BRAMBLIN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_RAPID_SPIN, 9
    learnset MOVE_BULLET_SEED, 13
    learnset MOVE_INFESTATION, 16
    learnset MOVE_HEX, 20
    learnset MOVE_MEGA_DRAIN, 23
    learnset MOVE_DISABLE, 27
    learnset MOVE_GIGA_DRAIN, 32
    learnset MOVE_PHANTOM_FORCE, 36
    learnset MOVE_SPIKES, 40
    learnset MOVE_POWER_WHIP, 43
    terminatelearnset

levelup SPECIES_BRAMBLEGHAST
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_RAPID_SPIN, 9
    learnset MOVE_BULLET_SEED, 13
    learnset MOVE_INFESTATION, 16
    learnset MOVE_HEX, 20
    learnset MOVE_MEGA_DRAIN, 27
    learnset MOVE_SHADOW_BALL, 32
    learnset MOVE_DISABLE, 35
    learnset MOVE_GIGA_DRAIN, 39
    learnset MOVE_PHANTOM_FORCE, 43
    learnset MOVE_SPIKES, 46
    learnset MOVE_POWER_WHIP, 49
    terminatelearnset

levelup SPECIES_TOEDSCOOL
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_ABSORB, 4
    learnset MOVE_POISON_POWDER, 8
    learnset MOVE_STUN_SPORE, 8
    learnset MOVE_SUPERSONIC, 12
    learnset MOVE_MEGA_DRAIN, 17
    learnset MOVE_SCREECH, 20
    learnset MOVE_MUD_SHOT, 23
    learnset MOVE_HEX, 26
    learnset MOVE_SEED_BOMB, 30
    learnset MOVE_SPORE, 34
    learnset MOVE_KNOCK_OFF, 36
    learnset MOVE_GIGA_DRAIN, 40
    learnset MOVE_EARTH_POWER, 42
    learnset MOVE_POWER_WHIP, 45
    terminatelearnset

levelup SPECIES_TOEDSCRUEL
    learnset MOVE_RAGE_POWDER, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_ABSORB, 4
    learnset MOVE_POISON_POWDER, 8
    learnset MOVE_STUN_SPORE, 8
    learnset MOVE_SUPERSONIC, 12
    learnset MOVE_MEGA_DRAIN, 17
    learnset MOVE_SCREECH, 20
    learnset MOVE_MUD_SHOT, 23
    learnset MOVE_HEX, 26
    learnset MOVE_SEED_BOMB, 30
    learnset MOVE_SPORE, 34
    learnset MOVE_TOXIC, 38
    learnset MOVE_KNOCK_OFF, 41
    learnset MOVE_GIGA_DRAIN, 45
    learnset MOVE_EARTH_POWER, 49
    learnset MOVE_POWER_WHIP, 54
    terminatelearnset

levelup SPECIES_KLAWF
    learnset MOVE_REVERSAL, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_ROCK_SMASH, 8
    learnset MOVE_ROCK_TOMB, 13
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_PROTECT, 20
    learnset MOVE_ROCK_BLAST, 24
    learnset MOVE_X_SCISSOR, 29
    learnset MOVE_CRUSH_CLAW, 33
    learnset MOVE_ROCK_SLIDE, 37
    learnset MOVE_HIGH_HORSEPOWER, 41
    learnset MOVE_CRABHAMMER, 46
    learnset MOVE_KNOCK_OFF, 49
    learnset MOVE_PROTECT, 53
    learnset MOVE_STONE_EDGE, 56
    terminatelearnset

levelup SPECIES_CAPSAKID
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BITE, 6
    learnset MOVE_RAZOR_LEAF, 11
    learnset MOVE_BULLET_SEED, 15
    learnset MOVE_FLAME_WHEEL, 19
    learnset MOVE_HEADBUTT, 23
    learnset MOVE_ZEN_HEADBUTT, 26
    learnset MOVE_CRUNCH, 30
    learnset MOVE_SEED_BOMB, 34
    learnset MOVE_SOLAR_BEAM, 36
    learnset MOVE_FIRE_BLAST, 40
    terminatelearnset

levelup SPECIES_SCOVILLAIN
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_BITE, 6
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_BULLET_SEED, 18
    learnset MOVE_FLAME_WHEEL, 22
    learnset MOVE_HEADBUTT, 27
    learnset MOVE_ZEN_HEADBUTT, 31
    learnset MOVE_WILL_O_WISP, 36
    learnset MOVE_CRUNCH, 41
    learnset MOVE_FLAMETHROWER, 45
    learnset MOVE_SOLAR_BEAM, 49
    learnset MOVE_OVERHEAT, 53
    terminatelearnset

levelup SPECIES_RELLOR
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_STRUGGLE_BUG, 7
    learnset MOVE_ROLLOUT, 11
    learnset MOVE_MUD_SHOT, 15
    learnset MOVE_BUG_BITE, 20
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_DIG, 29
    learnset MOVE_LUNGE, 35
    terminatelearnset

levelup SPECIES_RABSCA
    learnset MOVE_REFLECT, 1
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_STRUGGLE_BUG, 7
    learnset MOVE_ROLLOUT, 13
    learnset MOVE_MUD_SHOT, 18
    learnset MOVE_BUG_BITE, 21
    learnset MOVE_TAKE_DOWN, 25
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_EARTH_POWER, 34
    learnset MOVE_POWER_GEM, 37
    learnset MOVE_BUG_BUZZ, 41
    learnset MOVE_PSYCHIC, 44
    terminatelearnset

levelup SPECIES_FLITTLE
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_BABY_DOLL_EYES, 8
    learnset MOVE_DISARMING_VOICE, 11
    learnset MOVE_QUICK_ATTACK, 15
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_PLUCK, 24
    learnset MOVE_HYPNOSIS, 28
    learnset MOVE_U_TURN, 31
    learnset MOVE_UPROAR, 35
    learnset MOVE_ROOST, 38
    learnset MOVE_PSYCHIC, 42
    terminatelearnset

levelup SPECIES_ESPATHRA
    learnset MOVE_GROWL, 1
    learnset MOVE_PECK, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_BABY_DOLL_EYES, 8
    learnset MOVE_DISARMING_VOICE, 11
    learnset MOVE_QUICK_ATTACK, 15
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_PLUCK, 24
    learnset MOVE_HYPNOSIS, 28
    learnset MOVE_U_TURN, 32
    learnset MOVE_LUMINA_CRASH, 35
    learnset MOVE_UPROAR, 38
    learnset MOVE_ROOST, 42
    learnset MOVE_PSYCHIC, 47
    learnset MOVE_DAZZLING_GLEAM, 50
    learnset MOVE_AIR_SLASH, 54
    terminatelearnset

levelup SPECIES_TINKATINK
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_BABY_DOLL_EYES, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_COVET, 11
    learnset MOVE_ROCK_SMASH, 14
    learnset MOVE_DRAINING_KISS, 17
    learnset MOVE_SWEET_KISS, 20
    learnset MOVE_BRUTAL_SWING, 23
    learnset MOVE_BODY_SLAM, 26
    learnset MOVE_FLASH_CANNON, 30
    learnset MOVE_PLAY_ROUGH, 33
    learnset MOVE_FAKE_OUT, 36
    learnset MOVE_SKITTER_SMACK, 39
    learnset MOVE_KNOCK_OFF, 42
    terminatelearnset

levelup SPECIES_TINKATUFF
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_BABY_DOLL_EYES, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_COVET, 11
    learnset MOVE_ROCK_SMASH, 14
    learnset MOVE_DRAINING_KISS, 18
    learnset MOVE_SWEET_KISS, 21
    learnset MOVE_BRICK_BREAK, 24
    learnset MOVE_BRUTAL_SWING, 26
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_FLASH_CANNON, 33
    learnset MOVE_PLAY_ROUGH, 36
    learnset MOVE_FAKE_OUT, 40
    learnset MOVE_SKITTER_SMACK, 44
    learnset MOVE_KNOCK_OFF, 47
    terminatelearnset

levelup SPECIES_TINKATON
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FAIRY_WIND, 1
    learnset MOVE_BABY_DOLL_EYES, 5
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_COVET, 11
    learnset MOVE_ROCK_SMASH, 14
    learnset MOVE_DRAINING_KISS, 18
    learnset MOVE_SWEET_KISS, 21
    learnset MOVE_BRICK_BREAK, 24
    learnset MOVE_BRUTAL_SWING, 26
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_FLASH_CANNON, 33
    learnset MOVE_GIGATON_HAMMER, 38
    learnset MOVE_PLAY_ROUGH, 41
    learnset MOVE_FAKE_OUT, 45
    learnset MOVE_ICE_HAMMER, 51
    terminatelearnset

levelup SPECIES_WIGLETT
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_WRAP, 8
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_SLAM, 16
    learnset MOVE_WATER_PULSE, 18
    learnset MOVE_HEADBUTT, 22
    learnset MOVE_DIG, 25
    learnset MOVE_SUCKER_PUNCH, 28
    learnset MOVE_THROAT_CHOP, 31
    learnset MOVE_LIQUIDATION, 35
    learnset MOVE_ICE_BEAM, 39
    terminatelearnset

levelup SPECIES_WUGTRIO
    learnset MOVE_FINAL_GAMBIT, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_WRAP, 8
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_SLAM, 16
    learnset MOVE_WATER_PULSE, 19
    learnset MOVE_HEADBUTT, 23
    learnset MOVE_DIG, 27
    learnset MOVE_AVALANCHE, 31
    learnset MOVE_SUCKER_PUNCH, 35
    learnset MOVE_THROAT_CHOP, 39
    learnset MOVE_LIQUIDATION, 44
    terminatelearnset

levelup SPECIES_BOMBIRDIER
    learnset MOVE_PARTING_SHOT, 1
    learnset MOVE_SUCKER_PUNCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_MEMENTO, 1
    learnset MOVE_PECK, 1
    learnset MOVE_WING_ATTACK, 1
    learnset MOVE_THIEF, 7
    learnset MOVE_ROCK_THROW, 11
    learnset MOVE_WHIRLWIND, 14
    learnset MOVE_PLUCK, 18
    learnset MOVE_TORMENT, 21
    learnset MOVE_ROCK_TOMB, 24
    learnset MOVE_PAYBACK, 28
    learnset MOVE_DUAL_WINGBEAT, 31
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_KNOCK_OFF, 38
    learnset MOVE_FEATHER_DANCE, 41
    learnset MOVE_BRAVE_BIRD, 46
    terminatelearnset

levelup SPECIES_FINIZEN
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ASTONISH, 7
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_DOUBLE_HIT, 17
    learnset MOVE_DIVE, 21
    learnset MOVE_ACROBATICS, 25
    learnset MOVE_ENCORE, 30
    learnset MOVE_AQUA_TAIL, 34
    learnset MOVE_ICE_BEAM, 37
    learnset MOVE_HYDRO_PUMP, 42
    terminatelearnset

levelup SPECIES_PALAFIN
    learnset MOVE_DRAIN_PUNCH, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ASTONISH, 7
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_DOUBLE_HIT, 17
    learnset MOVE_DIVE, 21
    learnset MOVE_ACROBATICS, 34
    learnset MOVE_FLIP_TURN, 38
    learnset MOVE_ENCORE, 44
    learnset MOVE_ICE_BEAM, 54
    learnset MOVE_HYDRO_PUMP, 59
    learnset MOVE_AQUA_TAIL, 63
    learnset MOVE_CLOSE_COMBAT, 72
    learnset MOVE_WAVE_CRASH, 80
    terminatelearnset

levelup SPECIES_VAROOM
    learnset MOVE_LICK, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SMOG, 4
    learnset MOVE_TAUNT, 10
    learnset MOVE_ASSURANCE, 13
    learnset MOVE_SLUDGE, 16
    learnset MOVE_GYRO_BALL, 20
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_IRON_HEAD, 30
    learnset MOVE_SWAGGER, 33
    learnset MOVE_POISON_JAB, 37
    learnset MOVE_SELF_DESTRUCT, 40
    learnset MOVE_SPIN_OUT, 45
    learnset MOVE_GUNK_SHOT, 50
    terminatelearnset

levelup SPECIES_REVAVROOM
    learnset MOVE_HEAVY_SLAM, 1
    learnset MOVE_LICK, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SMOG, 4
    learnset MOVE_TAUNT, 10
    learnset MOVE_ASSURANCE, 13
    learnset MOVE_SLUDGE, 18
    learnset MOVE_GYRO_BALL, 23
    learnset MOVE_HEADBUTT, 28
    learnset MOVE_IRON_HEAD, 34
    learnset MOVE_SWAGGER, 38
    learnset MOVE_POISON_JAB, 43
    learnset MOVE_OVERHEAT, 46
    learnset MOVE_SELF_DESTRUCT, 50
    learnset MOVE_SPIN_OUT, 54
    learnset MOVE_GUNK_SHOT, 59
    terminatelearnset

levelup SPECIES_CYCLIZAR
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_POWER_WHIP, 1
    learnset MOVE_IRON_TAIL, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_RAPID_SPIN, 7
    learnset MOVE_TAUNT, 11
    learnset MOVE_BREAKING_SWIPE, 14
    learnset MOVE_QUICK_ATTACK, 18
    learnset MOVE_BITE, 23
    learnset MOVE_U_TURN, 27
    learnset MOVE_DRAGON_CLAW, 34
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_AQUA_TAIL, 43
    learnset MOVE_KNOCK_OFF, 46
    learnset MOVE_DOUBLE_EDGE, 49
    learnset MOVE_DRAGON_RUSH, 54
    terminatelearnset

levelup SPECIES_ORTHWORM
    learnset MOVE_METAL_BURST, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WRAP, 1
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_SMACK_DOWN, 12
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_IRON_HEAD, 21
    learnset MOVE_TAKE_DOWN, 26
    learnset MOVE_DIG, 30
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_IRON_TAIL, 41
    learnset MOVE_BODY_PRESS, 45
    learnset MOVE_EARTHQUAKE, 48
    terminatelearnset

levelup SPECIES_GLIMMET
    learnset MOVE_SMOG, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_SMACK_DOWN, 11
    learnset MOVE_ACID_SPRAY, 14
    learnset MOVE_VENOSHOCK, 19
    learnset MOVE_SELF_DESTRUCT, 25
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_TOXIC, 32
    learnset MOVE_POWER_GEM, 35
    learnset MOVE_SLUDGE_BOMB, 38
    learnset MOVE_DAZZLING_GLEAM, 41
    learnset MOVE_SLUDGE_WAVE, 43
    learnset MOVE_EXPLOSION, 45
    learnset MOVE_ANCIENT_POWER, 49
    terminatelearnset

levelup SPECIES_GLIMMORA
    learnset MOVE_SPIKY_SHIELD, 1
    learnset MOVE_EARTH_POWER, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_SMACK_DOWN, 11
    learnset MOVE_ACID_SPRAY, 14
    learnset MOVE_VENOSHOCK, 19
    learnset MOVE_SELF_DESTRUCT, 25
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_TOXIC, 32
    learnset MOVE_MORTAL_SPIN, 35
    learnset MOVE_POWER_GEM, 39
    learnset MOVE_SLUDGE_BOMB, 43
    learnset MOVE_DAZZLING_GLEAM, 46
    learnset MOVE_SLUDGE_WAVE, 50
    learnset MOVE_EXPLOSION, 54
    learnset MOVE_ANCIENT_POWER, 59
    terminatelearnset

levelup SPECIES_GREAVARD
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 4
    learnset MOVE_BITE, 9
    learnset MOVE_TAIL_WHIP, 10
    learnset MOVE_ROAR, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_DIG, 20
    learnset MOVE_SHADOW_SNEAK, 25
    learnset MOVE_CRUNCH, 30
    learnset MOVE_PLAY_ROUGH, 34
    learnset MOVE_HELPING_HAND, 36
    learnset MOVE_PSYCHIC_FANGS, 38
    learnset MOVE_PHANTOM_FORCE, 41
    learnset MOVE_CHARM, 43
    learnset MOVE_DOUBLE_EDGE, 47
    terminatelearnset

levelup SPECIES_HOUNDSTONE
    learnset MOVE_BODY_PRESS, 1
    learnset MOVE_WILL_O_WISP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 4
    learnset MOVE_BITE, 9
    learnset MOVE_TAIL_WHIP, 10
    learnset MOVE_ROAR, 12
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_DIG, 20
    learnset MOVE_SHADOW_SNEAK, 27
    learnset MOVE_CRUNCH, 31
    learnset MOVE_PLAY_ROUGH, 34
    learnset MOVE_HELPING_HAND, 37
    learnset MOVE_PSYCHIC_FANGS, 40
    learnset MOVE_PHANTOM_FORCE, 43
    learnset MOVE_CHARM, 48
    learnset MOVE_DOUBLE_EDGE, 51
    learnset MOVE_LAST_RESPECTS, 55
    terminatelearnset

levelup SPECIES_FLAMIGO
    learnset MOVE_REVERSAL, 1
    learnset MOVE_U_TURN, 1
    learnset MOVE_PECK, 1
    learnset MOVE_DOUBLE_KICK, 5
    learnset MOVE_DETECT, 9
    learnset MOVE_WING_ATTACK, 13
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_LOW_KICK, 20
    learnset MOVE_PAYBACK, 24
    learnset MOVE_LOW_SWEEP, 27
    learnset MOVE_ROOST, 30
    learnset MOVE_DRILL_PECK, 34
    learnset MOVE_MEGA_KICK, 37
    learnset MOVE_BOUNCE, 41
    learnset MOVE_THROAT_CHOP, 45
    learnset MOVE_CLOSE_COMBAT, 51
    learnset MOVE_BRAVE_BIRD, 55
    terminatelearnset

levelup SPECIES_CETODDLE
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 6
    learnset MOVE_ECHOED_VOICE, 9
    learnset MOVE_ICE_SHARD, 12
    learnset MOVE_TAKE_DOWN, 18
    learnset MOVE_FLAIL, 22
    learnset MOVE_AVALANCHE, 26
    learnset MOVE_BOUNCE, 30
    learnset MOVE_BODY_SLAM, 33
    learnset MOVE_ICE_HAMMER, 38
    learnset MOVE_DOUBLE_EDGE, 41
    terminatelearnset

levelup SPECIES_CETITAN
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_LIQUIDATION, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 6
    learnset MOVE_ECHOED_VOICE, 9
    learnset MOVE_ICE_SHARD, 12
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_FLAIL, 26
    learnset MOVE_AVALANCHE, 31
    learnset MOVE_BOUNCE, 37
    learnset MOVE_BODY_SLAM, 41
    learnset MOVE_HEAVY_SLAM, 44
    learnset MOVE_ICE_HAMMER, 48
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_ICICLE_CRASH, 56
    learnset MOVE_SUPERPOWER, 60
    terminatelearnset

levelup SPECIES_VELUZA
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_PLUCK, 7
    learnset MOVE_WATER_PULSE, 11
    learnset MOVE_FOCUS_ENERGY, 15
    learnset MOVE_SLASH, 20
    learnset MOVE_AQUA_CUTTER, 25
    learnset MOVE_NIGHT_SLASH, 29
    learnset MOVE_PSYCHO_CUT, 33
    learnset MOVE_RECOVER, 37
    learnset MOVE_LIQUIDATION, 41
    learnset MOVE_CRUNCH, 44
    learnset MOVE_PSYCHIC_FANGS, 49
    terminatelearnset

levelup SPECIES_DONDOZO
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_ROCK_SLIDE, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 5
    learnset MOVE_FLAIL, 9
    learnset MOVE_DIVE, 17
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_AQUA_TAIL, 31
    learnset MOVE_CRUNCH, 37
    learnset MOVE_BODY_PRESS, 41
    learnset MOVE_LIQUIDATION, 44
    learnset MOVE_ORDER_UP, 49
    learnset MOVE_HEAVY_SLAM, 55
    learnset MOVE_DOUBLE_EDGE, 60
    learnset MOVE_WAVE_CRASH, 66
    terminatelearnset

levelup SPECIES_TATSUGIRI
    learnset MOVE_SPLASH, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HARDEN, 6
    learnset MOVE_HELPING_HAND, 12
    learnset MOVE_WATER_PULSE, 17
    learnset MOVE_SOAK, 23
    learnset MOVE_DRAGON_BREATH, 26
    learnset MOVE_SCALD, 31
    learnset MOVE_ICY_WIND, 35
    learnset MOVE_MUDDY_WATER, 40
    learnset MOVE_MIRROR_COAT, 43
    learnset MOVE_DRAGON_PULSE, 47
    terminatelearnset

levelup SPECIES_ANNIHILAPE
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_KARATE_CHOP, 8
    learnset MOVE_PURSUIT, 11
    learnset MOVE_SEISMIC_TOSS, 15
    learnset MOVE_SWAGGER, 18
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_ENDEAVOR, 30
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_POISON_JAB, 37
    learnset MOVE_STOMPING_TANTRUM, 41
    learnset MOVE_RAGE_FIST, 45
    learnset MOVE_MEMENTO, 50
    learnset MOVE_EARTHQUAKE, 53
    learnset MOVE_CLOSE_COMBAT, 57
    learnset MOVE_STONE_EDGE, 61
    terminatelearnset

levelup SPECIES_CLODSIRE
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_MUD_SHOT, 7
    learnset MOVE_SLUDGE, 12
    learnset MOVE_SLAM, 15
    learnset MOVE_MUD_BOMB, 18
    learnset MOVE_YAWN, 22
    learnset MOVE_SLUDGE_BOMB, 28
    learnset MOVE_LIQUIDATION, 30
    learnset MOVE_EARTH_POWER, 34
    learnset MOVE_SLUDGE_WAVE, 39
    learnset MOVE_TOXIC, 41
    learnset MOVE_MEGAHORN, 45
    learnset MOVE_EARTHQUAKE, 48
    learnset MOVE_GUNK_SHOT, 52
    terminatelearnset

levelup SPECIES_FARIGIRAF
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_DAZZLING_GLEAM, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_CONFUSION, 4
    learnset MOVE_ODOR_SLEUTH, 7
    learnset MOVE_ASSURANCE, 10
    learnset MOVE_STOMP, 13
    learnset MOVE_PSYBEAM, 16
    learnset MOVE_DOUBLE_KICK, 19
    learnset MOVE_BULLDOZE, 23
    learnset MOVE_CONFUSE_RAY, 26
    learnset MOVE_ZEN_HEADBUTT, 30
    learnset MOVE_TWIN_BEAM, 33
    learnset MOVE_CRUNCH, 37
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_SHADOW_BALL, 49
    terminatelearnset

levelup SPECIES_DUDUNSPARCE
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_ROLLOUT, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_PURSUIT, 10
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_ANCIENT_POWER, 19
    learnset MOVE_YAWN, 22
    learnset MOVE_GLARE, 24
    learnset MOVE_DRILL_RUN, 26
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_HYPER_DRILL, 40
    learnset MOVE_WILD_CHARGE, 42
    learnset MOVE_ZEN_HEADBUTT, 45
    learnset MOVE_AIR_SLASH, 49
    learnset MOVE_DRAGON_RUSH, 51
    learnset MOVE_DOUBLE_EDGE, 54
    terminatelearnset

levelup SPECIES_KINGAMBIT
    learnset MOVE_MEGAHORN, 1
    learnset MOVE_SMART_STRIKE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 10
    learnset MOVE_TORMENT, 14
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_FEINT_ATTACK, 20
    learnset MOVE_SCARY_FACE, 23
    learnset MOVE_ASSURANCE, 28
    learnset MOVE_SLASH, 31
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_NIGHT_SLASH, 41
    learnset MOVE_SUCKER_PUNCH, 45
    learnset MOVE_KOWTOW_CLEAVE, 49
    learnset MOVE_IRON_HEAD, 53
    learnset MOVE_SACRED_SWORD, 65
    learnset MOVE_STONE_EDGE, 74
    terminatelearnset

levelup SPECIES_GREAT_TUSK
    learnset MOVE_HORN_ATTACK, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_BULLDOZE, 7
    learnset MOVE_TAUNT, 14
    learnset MOVE_RAPID_SPIN, 21
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_STOMPING_TANTRUM, 35
    learnset MOVE_KNOCK_OFF, 42
    learnset MOVE_EARTHQUAKE, 49
    learnset MOVE_GIGA_IMPACT, 56
    learnset MOVE_CLOSE_COMBAT, 63
    learnset MOVE_ENDEAVOR, 70
    learnset MOVE_MEGAHORN, 75
    learnset MOVE_HEAD_SMASH, 79
    learnset MOVE_HEADLONG_RUSH, 84
    terminatelearnset

levelup SPECIES_SCREAM_TAIL
    learnset MOVE_WISH, 1
    learnset MOVE_DISABLE, 1
    learnset MOVE_POUND, 1
    learnset MOVE_SING, 1
    learnset MOVE_BITE, 10
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_BODY_SLAM, 22
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_PLAY_ROUGH, 34
    learnset MOVE_HYPER_VOICE, 40
    learnset MOVE_PSYCHIC_FANGS, 48
    learnset MOVE_CRUNCH, 56
    learnset MOVE_MOONBLAST, 64
    learnset MOVE_BOOMBURST, 72
    terminatelearnset

levelup SPECIES_BRUTE_BONNET
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_STUN_SPORE, 7
    learnset MOVE_MEGA_DRAIN, 14
    learnset MOVE_SYNTHESIS, 21
    learnset MOVE_PAYBACK, 28
    learnset MOVE_THRASH, 35
    learnset MOVE_GIGA_DRAIN, 42
    learnset MOVE_SUCKER_PUNCH, 48
    learnset MOVE_SPORE, 56
    learnset MOVE_RAGE_POWDER, 64
    learnset MOVE_PETAL_BLIZZARD, 72
    terminatelearnset

levelup SPECIES_FLUTTER_MANE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_PSYBEAM, 7
    learnset MOVE_MEAN_LOOK, 14
    learnset MOVE_PAIN_SPLIT, 21
    learnset MOVE_WISH, 28
    learnset MOVE_DAZZLING_GLEAM, 35
    learnset MOVE_PHANTOM_FORCE, 42
    learnset MOVE_MYSTICAL_FIRE, 49
    learnset MOVE_POWER_GEM, 56
    learnset MOVE_PSYSHOCK, 63
    learnset MOVE_SHADOW_BALL, 70
    learnset MOVE_MOONBLAST, 77
    terminatelearnset

levelup SPECIES_SLITHER_WING
    learnset MOVE_BUG_BITE, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_GUST, 5
    learnset MOVE_POISON_POWDER, 7
    learnset MOVE_STUN_SPORE, 7
    learnset MOVE_FLAME_CHARGE, 14
    learnset MOVE_STOMP, 21
    learnset MOVE_LOW_SWEEP, 28
    learnset MOVE_MORNING_SUN, 35
    learnset MOVE_LUNGE, 42
    learnset MOVE_SUPERPOWER, 49
    learnset MOVE_DUAL_WINGBEAT, 56
    learnset MOVE_FIRST_IMPRESSION, 63
    learnset MOVE_LEECH_LIFE, 70
    terminatelearnset

levelup SPECIES_SANDY_SHOCKS
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_THUNDER_WAVE, 5
    learnset MOVE_SPARK, 7
    learnset MOVE_BULLDOZE, 14
    learnset MOVE_SHOCK_WAVE, 21
    learnset MOVE_TRI_ATTACK, 28
    learnset MOVE_SCREECH, 35
    learnset MOVE_FLASH_CANNON, 42
    learnset MOVE_DISCHARGE, 49
    learnset MOVE_EARTH_POWER, 56
    learnset MOVE_MIRROR_COAT, 63
    learnset MOVE_THUNDERBOLT, 70
    learnset MOVE_ZAP_CANNON, 77
    terminatelearnset

levelup SPECIES_IRON_TREADS
    learnset MOVE_HORN_ATTACK, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_BULLDOZE, 7
    learnset MOVE_RAPID_SPIN, 14
    learnset MOVE_METAL_CLAW, 21
    learnset MOVE_IRON_HEAD, 28
    learnset MOVE_STOMPING_TANTRUM, 35
    learnset MOVE_KNOCK_OFF, 42
    learnset MOVE_EARTHQUAKE, 49
    learnset MOVE_HEAVY_SLAM, 56
    learnset MOVE_WILD_CHARGE, 63
    learnset MOVE_MEGAHORN, 70
    terminatelearnset

levelup SPECIES_IRON_BUNDLE
    learnset MOVE_PRESENT, 1
    learnset MOVE_POWDER_SNOW, 7
    learnset MOVE_WHIRLPOOL, 14
    learnset MOVE_TAKE_DOWN, 21
    learnset MOVE_DRILL_PECK, 28
    learnset MOVE_HELPING_HAND, 35
    learnset MOVE_FREEZE_DRY, 42
    learnset MOVE_FLIP_TURN, 49
    learnset MOVE_ICE_BEAM, 56
    learnset MOVE_HYDRO_PUMP, 63
    learnset MOVE_BLIZZARD, 70
    terminatelearnset

levelup SPECIES_IRON_HANDS
    learnset MOVE_ARM_THRUST, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_FAKE_OUT, 7
    learnset MOVE_WHIRLWIND, 14
    learnset MOVE_THUNDER_PUNCH, 21
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_BRICK_BREAK, 35
    learnset MOVE_SEISMIC_TOSS, 42
    learnset MOVE_WILD_CHARGE, 49
    learnset MOVE_CLOSE_COMBAT, 56
    learnset MOVE_DETECT, 63
    learnset MOVE_HEAVY_SLAM, 70
    terminatelearnset

levelup SPECIES_IRON_JUGULIS
    learnset MOVE_AIR_CUTTER, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_ROAR, 7
    learnset MOVE_ASSURANCE, 14
    learnset MOVE_DRAGON_BREATH, 21
    learnset MOVE_SNARL, 28
    learnset MOVE_CRUNCH, 35
    learnset MOVE_HYPER_VOICE, 42
    learnset MOVE_AIR_SLASH, 56
    learnset MOVE_KNOCK_OFF, 63
    learnset MOVE_DARK_PULSE, 70
    learnset MOVE_TRI_ATTACK, 77
    learnset MOVE_DRAGON_PULSE, 84
    terminatelearnset

levelup SPECIES_IRON_MOTH
    learnset MOVE_ACID_SPRAY, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_GUST, 5
    learnset MOVE_STRUGGLE_BUG, 7
    learnset MOVE_FIRE_SPIN, 14
    learnset MOVE_TAKE_DOWN, 21
    learnset MOVE_LUNGE, 28
    learnset MOVE_DISCHARGE, 35
    learnset MOVE_SLUDGE_WAVE, 42
    learnset MOVE_FIERY_DANCE, 49
    learnset MOVE_MORNING_SUN, 56
    learnset MOVE_HURRICANE, 63
    learnset MOVE_BUG_BUZZ, 70
    learnset MOVE_OVERHEAT, 77
    terminatelearnset

levelup SPECIES_IRON_THORNS
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_SCREECH, 7
    learnset MOVE_THUNDER_FANG, 14
    learnset MOVE_ROCK_TOMB, 21
    learnset MOVE_CRUNCH, 28
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_WILD_CHARGE, 42
    learnset MOVE_PIN_MISSILE, 49
    learnset MOVE_EARTHQUAKE, 56
    learnset MOVE_STONE_EDGE, 63
    learnset MOVE_VOLT_TACKLE, 70
    terminatelearnset

levelup SPECIES_FRIGIBAX
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1	
    learnset MOVE_ICY_WIND, 6
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_FOCUS_ENERGY, 16
    learnset MOVE_BITE, 21
    learnset MOVE_ICE_FANG, 25
    learnset MOVE_TAKE_DOWN, 29
    learnset MOVE_DRAGON_CLAW, 35
    learnset MOVE_BODY_SLAM, 39
    learnset MOVE_CRUNCH, 44
    learnset MOVE_ICICLE_CRASH, 48
    terminatelearnset

levelup SPECIES_ARCTIBAX
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1	
    learnset MOVE_ICY_WIND, 10
    learnset MOVE_DRAGON_BREATH, 19
    learnset MOVE_FOCUS_ENERGY, 25
    learnset MOVE_BITE, 31
    learnset MOVE_ICE_FANG, 36
    learnset MOVE_TAKE_DOWN, 42
    learnset MOVE_DRAGON_CLAW, 46
    learnset MOVE_BODY_SLAM, 51
    learnset MOVE_CRUNCH, 57
    learnset MOVE_ICICLE_CRASH, 61
    terminatelearnset

levelup SPECIES_BAXCALIBUR
    learnset MOVE_DRAGON_RUSH, 1
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TACKLE, 1	
    learnset MOVE_ICY_WIND, 10
    learnset MOVE_DRAGON_BREATH, 19
    learnset MOVE_FOCUS_ENERGY, 25
    learnset MOVE_BITE, 31
    learnset MOVE_ICE_FANG, 36
    learnset MOVE_TAKE_DOWN, 42
    learnset MOVE_DRAGON_CLAW, 46
    learnset MOVE_BODY_SLAM, 51
    learnset MOVE_GLAIVE_RUSH, 54
    learnset MOVE_AQUA_TAIL, 59
    learnset MOVE_CRUNCH, 63
    learnset MOVE_ICICLE_CRASH, 70
    terminatelearnset

levelup SPECIES_GIMMIGHOUL
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_GHOLDENGO
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_CONFUSE_RAY, 14
    learnset MOVE_MAGNET_BOMB, 21
    learnset MOVE_HEX, 28
    learnset MOVE_SHADOW_BALL, 35
    learnset MOVE_RECOVER, 42
    learnset MOVE_POWER_GEM, 49
    learnset MOVE_MAKE_IT_RAIN, 56
    terminatelearnset

levelup SPECIES_WO_CHIEN
    learnset MOVE_ABSORB, 1
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_TICKLE, 5
    learnset MOVE_PAYBACK, 10
    learnset MOVE_POISON_POWDER, 15
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_MEGA_DRAIN, 20
    learnset MOVE_INGRAIN, 25
    learnset MOVE_DARK_PULSE, 30
    learnset MOVE_GIGA_DRAIN, 35
    learnset MOVE_RUINATION, 40
    learnset MOVE_FOUL_PLAY, 45
    learnset MOVE_POWER_WHIP, 50
    learnset MOVE_KNOCK_OFF, 55
    learnset MOVE_LEAF_STORM, 60
    terminatelearnset

levelup SPECIES_CHIEN_PAO
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_TICKLE, 5
    learnset MOVE_PAYBACK, 10
    learnset MOVE_MIST, 15
    learnset MOVE_HAZE, 15
    learnset MOVE_AURORA_BEAM, 20
    learnset MOVE_ICE_SHARD, 25
    learnset MOVE_NIGHT_SLASH, 30
    learnset MOVE_ICICLE_CRASH, 35
    learnset MOVE_RUINATION, 40
    learnset MOVE_RECOVER, 45
    learnset MOVE_SACRED_SWORD, 50
    learnset MOVE_THROAT_CHOP, 55
    learnset MOVE_BLIZZARD, 60
    terminatelearnset

levelup SPECIES_TING_LU
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_TICKLE, 5
    learnset MOVE_PAYBACK, 10
    learnset MOVE_STOMP, 15
    learnset MOVE_TAUNT, 15
    learnset MOVE_BULLDOZE, 20
    learnset MOVE_THRASH, 25
    learnset MOVE_DARK_PULSE, 30
    learnset MOVE_STOMPING_TANTRUM, 35
    learnset MOVE_RUINATION, 40
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_EARTHQUAKE, 50
    learnset MOVE_THROAT_CHOP, 55
    learnset MOVE_HEADLONG_RUSH, 60
    terminatelearnset

levelup SPECIES_CHI_YU
    learnset MOVE_EMBER, 1
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_TICKLE, 5
    learnset MOVE_PAYBACK, 10
    learnset MOVE_FLAME_CHARGE, 15
    learnset MOVE_WILL_O_WISP, 15
    learnset MOVE_INCINERATE, 20
    learnset MOVE_CONFUSE_RAY, 25
    learnset MOVE_DARK_PULSE, 30
    learnset MOVE_LAVA_PLUME, 35
    learnset MOVE_RUINATION, 40
    learnset MOVE_ZEN_HEADBUTT, 45
    learnset MOVE_BOUNCE, 50
    learnset MOVE_INFERNO, 55
    learnset MOVE_OVERHEAT, 60
    terminatelearnset

levelup SPECIES_ROARING_MOON
    learnset MOVE_BITE, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_LEER, 1
    learnset MOVE_INCINERATE, 7
    learnset MOVE_HEADBUTT, 14
    learnset MOVE_SCARY_FACE, 21
    learnset MOVE_DRAGON_CLAW, 28
    learnset MOVE_ZEN_HEADBUTT, 35
    learnset MOVE_FLAMETHROWER, 46
    learnset MOVE_NIGHT_SLASH, 53
    learnset MOVE_FLY, 64
    learnset MOVE_THROAT_CHOP, 69
    learnset MOVE_DRAGON_RUSH, 75
    learnset MOVE_DOUBLE_EDGE, 80
    terminatelearnset

levelup SPECIES_IRON_VALIANT
    learnset MOVE_DISABLE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SHADOW_SNEAK, 1	
    learnset MOVE_HYPNOSIS, 7
    learnset MOVE_FEINT, 14
    learnset MOVE_FUTURE_SIGHT, 21
    learnset MOVE_DAZZLING_GLEAM, 28
    learnset MOVE_PSYCHO_CUT, 35
    learnset MOVE_NIGHT_SLASH, 42
    learnset MOVE_LEAF_BLADE, 49
    learnset MOVE_MOONBLAST, 56
    learnset MOVE_CLOSE_COMBAT, 63
    learnset MOVE_KNOCK_OFF, 70
    learnset MOVE_SPIRIT_BREAK, 77
    terminatelearnset

levelup SPECIES_KORAIDON
    learnset MOVE_BREAKING_SWIPE, 1
    learnset MOVE_ROCK_SMASH, 7
    learnset MOVE_ANCIENT_POWER, 14
    learnset MOVE_DRAIN_PUNCH, 21
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_DRAGON_CLAW, 35
    learnset MOVE_FLAMETHROWER, 42
    learnset MOVE_COUNTER, 49
    learnset MOVE_OUTRAGE, 56
    learnset MOVE_CLOSE_COMBAT, 63
    learnset MOVE_FLARE_BLITZ, 70
    learnset MOVE_COLLISION_COURSE, 90
    terminatelearnset

levelup SPECIES_MIRAIDON
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_SHOCK_WAVE, 7
    learnset MOVE_ANCIENT_POWER, 14
    learnset MOVE_PARABOLIC_CHARGE, 21
    learnset MOVE_DISCHARGE, 28
    learnset MOVE_ZEN_HEADBUTT, 35
    learnset MOVE_DRAGON_PULSE, 42
    learnset MOVE_MIRROR_COAT, 49
    learnset MOVE_DRACO_METEOR, 56
    learnset MOVE_THUNDER, 63
    learnset MOVE_OVERHEAT, 70
    learnset MOVE_ELECTRO_DRIFT, 90
    terminatelearnset

levelup SPECIES_WALKING_WAKE
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_LEER, 1
    learnset MOVE_TWISTER, 1
    learnset MOVE_BITE, 7
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_NOBLE_ROAR, 21
    learnset MOVE_DRAGON_BREATH, 28
    learnset MOVE_BREAKING_SWIPE, 35
    learnset MOVE_DRAGON_RUSH, 42
    learnset MOVE_SCALD, 49
    learnset MOVE_DRAGON_PULSE, 56
    learnset MOVE_OUTRAGE, 63
    learnset MOVE_FLAMETHROWER, 70
    learnset MOVE_HYDRO_STEAM, 77
    terminatelearnset

levelup SPECIES_IRON_LEAVES
    learnset MOVE_CONFUSION, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_BITE, 7
    learnset MOVE_PSYBEAM, 14
    learnset MOVE_NOBLE_ROAR, 21
    learnset MOVE_MAGICAL_LEAF, 28
    learnset MOVE_AERIAL_ACE, 35
    learnset MOVE_NIGHT_SLASH, 42
    learnset MOVE_SACRED_SWORD, 49
    learnset MOVE_LEAF_BLADE, 56
    learnset MOVE_CLOSE_COMBAT, 63
    learnset MOVE_MEGAHORN, 70
    learnset MOVE_PSYBLADE, 77
    terminatelearnset

levelup SPECIES_DIPPLIN
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_RECYCLE, 1
    learnset MOVE_DRAGON_TAIL, 6
    learnset MOVE_VINE_WHIP, 9
    learnset MOVE_DRAGON_BREATH, 13
    learnset MOVE_MAGICAL_LEAF, 17
    learnset MOVE_PROTECT, 20
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_RECOVER, 30
    learnset MOVE_SYRUP_BOMB, 33
    learnset MOVE_LEAF_BLADE, 36
    learnset MOVE_DRAGON_CHEER, 40
    learnset MOVE_DRAGON_PULSE, 43
    learnset MOVE_GIGA_DRAIN, 47
    terminatelearnset

levelup SPECIES_POLTCHAGEIST
    learnset MOVE_ASTONISH, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_LIFE_DEW, 10
    learnset MOVE_FOUL_PLAY, 14
    learnset MOVE_MEGA_DRAIN, 18
    learnset MOVE_HEX, 25
    learnset MOVE_RAGE_POWDER, 29
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_SHADOW_BALL, 38
    learnset MOVE_LEAF_STORM, 48
    terminatelearnset

levelup SPECIES_SINISTCHA
    learnset MOVE_ASTONISH, 1
    learnset MOVE_STUN_SPORE, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_LIFE_DEW, 10
    learnset MOVE_FOUL_PLAY, 17
    learnset MOVE_MEGA_DRAIN, 21
    learnset MOVE_HEX, 26
    learnset MOVE_SCALD, 30
    learnset MOVE_RAGE_POWDER, 33
    learnset MOVE_GIGA_DRAIN, 37
    learnset MOVE_MATCHA_GOTCHA, 41
    learnset MOVE_SHADOW_BALL, 46
    learnset MOVE_LEAF_STORM, 53
    terminatelearnset

levelup SPECIES_OKIDOGI
    learnset MOVE_BITE, 1
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_HOWL, 8
    learnset MOVE_POISON_FANG, 16
    learnset MOVE_FORCE_PALM, 24
    learnset MOVE_COUNTER, 32
    learnset MOVE_POISON_JAB, 40
    learnset MOVE_BRUTAL_SWING, 48
    learnset MOVE_CRUNCH, 56
    learnset MOVE_HIGH_HORSEPOWER, 64
    learnset MOVE_SUPERPOWER, 72
    terminatelearnset

levelup SPECIES_MUNKIDORI
    learnset MOVE_CONFUSION, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_FLATTER, 8
    learnset MOVE_SLUDGE, 16
    learnset MOVE_PSYBEAM, 24
    learnset MOVE_MIRROR_COAT, 32
    learnset MOVE_U_TURN, 40
    learnset MOVE_FOCUS_BLAST, 48
    learnset MOVE_SLUDGE_WAVE, 56
    learnset MOVE_PSYCHIC, 64
    learnset MOVE_PARTING_SHOT, 72
    terminatelearnset

levelup SPECIES_FEZANDIPITI
    learnset MOVE_DOUBLE_KICK, 1
    learnset MOVE_PECK, 1
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_ATTRACT, 16
    learnset MOVE_AERIAL_ACE, 24
    learnset MOVE_LIGHT_SCREEN, 32
    learnset MOVE_TAIL_SLAP, 40
    learnset MOVE_BRAVE_BIRD, 48
    learnset MOVE_POISON_JAB, 56
    learnset MOVE_ROOST, 64
    learnset MOVE_MOONBLAST, 72
    terminatelearnset

levelup SPECIES_OGERPON
    learnset MOVE_FOLLOW_ME, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FOCUS_ENERGY, 6
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_SLAM, 18
    learnset MOVE_LOW_SWEEP, 24
    learnset MOVE_THROAT_CHOP, 30
    learnset MOVE_SYNTHESIS, 36
    learnset MOVE_SPIKY_SHIELD, 42
    learnset MOVE_KNOCK_OFF, 48
    learnset MOVE_SUPERPOWER, 54
    learnset MOVE_WOOD_HAMMER, 58
    learnset MOVE_IVY_CUDGEL, 66
    terminatelearnset

levelup SPECIES_ARCHALUDON
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_AURA_SPHERE, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_SLASH, 14
    learnset MOVE_BREAKING_SWIPE, 23
    learnset MOVE_DRAGON_TAIL, 31
    learnset MOVE_ROCK_SLIDE, 39
    learnset MOVE_BRICK_BREAK, 45
    learnset MOVE_DRAGON_CLAW, 51
    learnset MOVE_THUNDERBOLT, 55
    learnset MOVE_FLASH_CANNON, 59
    learnset MOVE_METAL_BURST, 64
    learnset MOVE_DRAGON_PULSE, 69
    learnset MOVE_STONE_EDGE, 74
    terminatelearnset

levelup SPECIES_HYDRAPPLE
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_RECYCLE, 1
    learnset MOVE_DRAGON_TAIL, 6
    learnset MOVE_VINE_WHIP, 9
    learnset MOVE_DRAGON_BREATH, 13
    learnset MOVE_MAGICAL_LEAF, 17
    learnset MOVE_PROTECT, 20
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_RECOVER, 30
    learnset MOVE_SYRUP_BOMB, 34
    learnset MOVE_LEAF_BLADE, 37
    learnset MOVE_DRAGON_CHEER, 42
    learnset MOVE_DRAGON_PULSE, 45
    learnset MOVE_GIGA_DRAIN, 49
    learnset MOVE_EARTH_POWER, 54
    learnset MOVE_ENERGY_BALL, 57
    terminatelearnset

levelup SPECIES_GOUGING_FIRE
    learnset MOVE_STOMP, 1
    learnset MOVE_FIRE_FANG, 7
    learnset MOVE_ANCIENT_POWER, 14
    learnset MOVE_BITE, 21
    learnset MOVE_DRAGON_CLAW, 28
    learnset MOVE_CRUSH_CLAW, 35
    learnset MOVE_MORNING_SUN, 42
    learnset MOVE_BURNING_BULWARK, 49
    learnset MOVE_DRAGON_RUSH, 56
    learnset MOVE_LAVA_PLUME, 63
    learnset MOVE_OUTRAGE, 70
    learnset MOVE_RAGING_FURY, 84
    terminatelearnset

levelup SPECIES_RAGING_BOLT
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_SHOCK_WAVE, 1
    learnset MOVE_STOMP, 1
    learnset MOVE_TWISTER, 1
    learnset MOVE_DRAGON_BREATH, 21
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_DRAGON_TAIL, 41
    learnset MOVE_THUNDERCLAP, 49
    learnset MOVE_DRAGON_HAMMER, 56
    learnset MOVE_RISING_VOLTAGE, 67
    learnset MOVE_DRAGON_PULSE, 75
    learnset MOVE_BODY_PRESS, 84
    learnset MOVE_THUNDER, 91
    terminatelearnset

levelup SPECIES_IRON_BOULDER
    learnset MOVE_HORN_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_SLASH, 14
    learnset MOVE_PSYCHO_CUT, 21
    learnset MOVE_COUNTER, 28
    learnset MOVE_ROCK_TOMB, 35
    learnset MOVE_SACRED_SWORD, 42
    learnset MOVE_MIGHTY_CLEAVE, 49
    learnset MOVE_MEGAHORN, 56
    learnset MOVE_STONE_EDGE, 63
    learnset MOVE_CLOSE_COMBAT, 70
    terminatelearnset

levelup SPECIES_IRON_CROWN
    learnset MOVE_CONFUSION, 1
    learnset MOVE_LEER, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_SMART_STRIKE, 7
    learnset MOVE_SWIFT, 14
    learnset MOVE_PSYBEAM, 21
    learnset MOVE_MIRROR_COAT, 28
    learnset MOVE_PSYCHO_CUT, 35
    learnset MOVE_AURA_SPHERE, 42
    learnset MOVE_PSYCHIC, 49
    learnset MOVE_TACHYON_CUTTER, 56
    learnset MOVE_FLASH_CANNON, 63
    learnset MOVE_METAL_BURST, 70
    terminatelearnset

levelup SPECIES_TERAPAGOS
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_TRI_ATTACK, 1
    learnset MOVE_WITHDRAW, 1
    learnset MOVE_ANCIENT_POWER, 10
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_PROTECT, 30
    learnset MOVE_EARTH_POWER, 40
    learnset MOVE_HEAVY_SLAM, 50
    learnset MOVE_TERA_STARSTORM, 60
    learnset MOVE_DOUBLE_EDGE, 70
    learnset MOVE_ROCK_POLISH, 80
    learnset MOVE_GYRO_BALL, 90
    terminatelearnset

levelup SPECIES_PECHARUNT
    learnset MOVE_MEAN_LOOK, 1
    learnset MOVE_ROLLOUT, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SMOG, 1
    learnset MOVE_DESTINY_BOND, 10
    learnset MOVE_FAKE_TEARS, 20
    learnset MOVE_PARTING_SHOT, 30
    learnset MOVE_SHADOW_BALL, 40
    learnset MOVE_MALIGNANT_CHAIN, 50
    learnset MOVE_TOXIC, 60
    learnset MOVE_RECOVER, 70
    terminatelearnset


levelup SPECIES_MEGA_VENUSAUR
    learnset MOVE_GIGA_DRAIN, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_GROWL, 3
    learnset MOVE_VINE_WHIP, 5
    learnset MOVE_ACID, 8
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_POISON_POWDER, 15
    learnset MOVE_SLEEP_POWDER, 15
    learnset MOVE_MEGA_DRAIN, 18
    learnset MOVE_TAKE_DOWN, 21
    learnset MOVE_MAGICAL_LEAF, 25
    learnset MOVE_SLUDGE_BOMB, 28
    learnset MOVE_SEED_BOMB, 32
    learnset MOVE_TOXIC, 35
    learnset MOVE_LEAF_BLADE, 36
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_EARTH_POWER, 45
    terminatelearnset


levelup SPECIES_MEGA_CHARIZARD_X
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_HURRICANE, 1
    learnset MOVE_DRAGON_RUSH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_SMOKESCREEN, 8
    learnset MOVE_BITE, 11
    learnset MOVE_DRAGON_BREATH, 14
    learnset MOVE_FIRE_FANG, 16
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_FLAME_BURST, 25
    learnset MOVE_DIG, 28
    learnset MOVE_DRAGON_CLAW, 33
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_CRUNCH, 41
    learnset MOVE_BRICK_BREAK, 47
    learnset MOVE_HEAT_WAVE, 52
    terminatelearnset


levelup SPECIES_MEGA_CHARIZARD_Y
    learnset MOVE_SHADOW_CLAW, 1
    learnset MOVE_HURRICANE, 1
    learnset MOVE_DRAGON_RUSH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_SMOKESCREEN, 8
    learnset MOVE_BITE, 11
    learnset MOVE_DRAGON_BREATH, 14
    learnset MOVE_FIRE_FANG, 16
    learnset MOVE_METAL_CLAW, 16
    learnset MOVE_SLASH, 20
    learnset MOVE_FLAME_BURST, 25
    learnset MOVE_DIG, 28
    learnset MOVE_DRAGON_CLAW, 33
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_CRUNCH, 41
    learnset MOVE_BRICK_BREAK, 47
    learnset MOVE_HEAT_WAVE, 52
    terminatelearnset


levelup SPECIES_MEGA_BLASTOISE
    learnset MOVE_WATER_SPOUT, 1
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_MUDDY_WATER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 4
    learnset MOVE_TAIL_WHIP, 4
    learnset MOVE_BITE, 9
    learnset MOVE_BUBBLE_BEAM, 13
    learnset MOVE_AURORA_BEAM, 16
    learnset MOVE_AQUA_JET, 22
    learnset MOVE_AQUA_TAIL, 29
    learnset MOVE_YAWN, 33
    learnset MOVE_BODY_SLAM, 37
    learnset MOVE_BRICK_BREAK, 40
    learnset MOVE_ICE_PUNCH, 42
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_WAVE_CRASH, 50
    terminatelearnset


levelup SPECIES_MEGA_BEEDRILL
    learnset MOVE_FELL_STINGER, 1
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_TWINEEDLE, 1
    learnset MOVE_FURY_ATTACK, 1
    learnset MOVE_TWINEEDLE, 10
    learnset MOVE_RAGE, 12
    learnset MOVE_AERIAL_ACE, 16
    learnset MOVE_TOXIC, 18
    learnset MOVE_ASSURANCE, 21
    learnset MOVE_BRICK_BREAK, 24
    learnset MOVE_ENDEAVOR, 26
    learnset MOVE_X_SCISSOR, 29
    learnset MOVE_POISON_JAB, 31
    learnset MOVE_DRILL_RUN, 34
    learnset MOVE_MEGAHORN, 40
    terminatelearnset


levelup SPECIES_MEGA_PIDGEOT
    learnset MOVE_ROOST, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_FEATHER_DANCE, 2
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_GUST, 9
    learnset MOVE_QUICK_ATTACK, 12
    learnset MOVE_WING_ATTACK, 15
    learnset MOVE_SECRET_POWER, 22
    learnset MOVE_AERIAL_ACE, 30
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_HEAT_WAVE, 40
    learnset MOVE_STEEL_WING, 43
    learnset MOVE_DOUBLE_EDGE, 46
    learnset MOVE_BRAVE_BIRD, 51
    terminatelearnset


levelup SPECIES_MEGA_ALAKAZAM
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_TELEPORT, 1
    learnset MOVE_CONFUSION, 16
    learnset MOVE_REFLECT, 17
    learnset MOVE_DISABLE, 18
    learnset MOVE_PSYBEAM, 22
    learnset MOVE_RECOVER, 27
    learnset MOVE_SHOCK_WAVE, 31
    learnset MOVE_TELEPORT, 40    
    learnset MOVE_PSYCHIC, 45
    learnset MOVE_SHADOW_BALL, 63
    learnset MOVE_DAZZLING_GLEAM, 68
    terminatelearnset


levelup SPECIES_MEGA_SLOWBRO
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSION,  1
    learnset MOVE_YAWN, 1
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_DISABLE, 11
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_BUBBLE_BEAM, 19
    learnset MOVE_ZEN_HEADBUTT, 23
    learnset MOVE_AURORA_BEAM, 26
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_SLACK_OFF, 38
    learnset MOVE_SURF, 42
    learnset MOVE_PSYCHIC, 47
    learnset MOVE_FOCUS_BLAST, 50
    terminatelearnset


levelup SPECIES_MEGA_GENGAR
    learnset MOVE_LICK, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_NIGHT_SHADE, 10
    learnset MOVE_SLUDGE, 14
    learnset MOVE_MEAN_LOOK, 18
    learnset MOVE_SUCKER_PUNCH, 26
    learnset MOVE_HEX, 30
    learnset MOVE_DREAM_EATER, 36
    learnset MOVE_TOXIC, 45
    learnset MOVE_DARK_PULSE, 48
    learnset MOVE_SHADOW_BALL, 54
    learnset MOVE_SLUDGE_BOMB, 58
    learnset MOVE_ENERGY_BALL, 62
    terminatelearnset


levelup SPECIES_MEGA_KANGASKHAN
    learnset MOVE_REVERSAL, 1
    learnset MOVE_POUND, 1
    learnset MOVE_COMET_PUNCH, 1
    learnset MOVE_FAKE_OUT, 7
    learnset MOVE_BITE, 11
    learnset MOVE_STOMP, 15
    learnset MOVE_BODY_SLAM, 24
    learnset MOVE_BRICK_BREAK, 27
    learnset MOVE_SUCKER_PUNCH, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_CRUNCH, 38
    learnset MOVE_ICE_PUNCH, 41
    learnset MOVE_CRUSH_CLAW, 45
    learnset MOVE_SUPERPOWER, 49
    learnset MOVE_OUTRAGE, 52
    terminatelearnset


levelup SPECIES_MEGA_PINSIR
    learnset MOVE_DOUBLE_EDGE, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_VICE_GRIP, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SEISMIC_TOSS, 10
    learnset MOVE_REVENGE, 14
    learnset MOVE_BUG_BITE, 18
    learnset MOVE_DOUBLE_HIT, 21
    learnset MOVE_VITAL_THROW, 24
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_STRENGTH, 32
    learnset MOVE_ROCK_SLIDE, 36
    learnset MOVE_X_SCISSOR, 40
    learnset MOVE_SUPERPOWER, 45
    learnset MOVE_EARTHQUAKE, 49
    terminatelearnset


levelup SPECIES_MEGA_GYARADOS
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_WAVE_CRASH, 1
    learnset MOVE_BITE, 20
    learnset MOVE_ICE_FANG, 24
    learnset MOVE_DRAGON_RAGE, 28
    learnset MOVE_CRUNCH, 33
    learnset MOVE_WATERFALL, 36
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_BOUNCE, 52
    terminatelearnset


levelup SPECIES_MEGA_AERODACTYL
    learnset MOVE_ROOST, 1
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_BITE, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_WING_ATTACK, 6
    learnset MOVE_SUPERSONIC, 10
    learnset MOVE_SCARY_FACE, 15
    learnset MOVE_ROCK_SLIDE, 20
    learnset MOVE_FIRE_FANG, 25
    learnset MOVE_THUNDER_FANG, 25
    learnset MOVE_ICE_FANG, 25
    learnset MOVE_CRUNCH, 30
    learnset MOVE_DUAL_WINGBEAT, 34
    learnset MOVE_PSYCHIC_FANGS, 39
    learnset MOVE_DRAGON_CLAW, 43
    learnset MOVE_EARTHQUAKE, 47
    learnset MOVE_STONE_EDGE, 51
    learnset MOVE_BRAVE_BIRD, 59
    terminatelearnset


levelup SPECIES_MEGA_MEWTWO_X
    learnset MOVE_DISABLE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_SWIFT, 1
    learnset MOVE_ANCIENT_POWER, 8
    learnset MOVE_PSYCHO_CUT, 16
    learnset MOVE_RECOVER, 24
    learnset MOVE_EARTH_POWER, 32
    learnset MOVE_AURA_SPHERE, 40
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_SHADOW_BALL, 56
    learnset MOVE_FOCUS_BLAST, 64
    learnset MOVE_PSYSTRIKE, 72
    learnset MOVE_HYPER_BEAM, 80
    learnset MOVE_PSYCHO_BOOST, 96
    terminatelearnset


levelup SPECIES_MEGA_MEWTWO_Y
    learnset MOVE_DISABLE, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_SWIFT, 1
    learnset MOVE_ANCIENT_POWER, 8
    learnset MOVE_PSYCHO_CUT, 16
    learnset MOVE_RECOVER, 24
    learnset MOVE_EARTH_POWER, 32
    learnset MOVE_AURA_SPHERE, 40
    learnset MOVE_PSYCHIC, 48
    learnset MOVE_SHADOW_BALL, 56
    learnset MOVE_FOCUS_BLAST, 64
    learnset MOVE_PSYSTRIKE, 72
    learnset MOVE_HYPER_BEAM, 80
    learnset MOVE_PSYCHO_BOOST, 96
    terminatelearnset


levelup SPECIES_MEGA_AMPHAROS
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_VOLT_SWITCH, 1
    learnset MOVE_THUNDER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_WAVE, 4
    learnset MOVE_THUNDER_SHOCK, 8
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_SHOCK_WAVE, 15
    learnset MOVE_CONFUSE_RAY, 19
    learnset MOVE_ELECTROWEB, 25
    learnset MOVE_STOMPING_TANTRUM, 30
    learnset MOVE_LOW_KICK, 34
    learnset MOVE_POWER_GEM, 39
    learnset MOVE_DAZZLING_GLEAM, 43
    learnset MOVE_DRAGON_PULSE, 47
    learnset MOVE_THUNDERBOLT, 52
    terminatelearnset


levelup SPECIES_MEGA_STEELIX
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_MAGNITUDE, 1
    learnset MOVE_BIND, 1
    learnset MOVE_ROCK_THROW, 7
    learnset MOVE_ROCK_TOMB, 11
    learnset MOVE_SMACK_DOWN, 15
    learnset MOVE_DIG, 18
    learnset MOVE_GYRO_BALL, 22
    learnset MOVE_ROCK_SLIDE, 26
    learnset MOVE_BULLDOZE, 30
    learnset MOVE_BODY_PRESS, 32
    learnset MOVE_DRILL_RUN, 36
    learnset MOVE_BODY_SLAM, 39
    learnset MOVE_CRUNCH, 42
    learnset MOVE_STONE_EDGE, 48
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_EARTHQUAKE, 56
    learnset MOVE_HEAVY_SLAM, 60
    terminatelearnset


levelup SPECIES_MEGA_SCIZOR
    learnset MOVE_U_TURN, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_VACUUM_WAVE, 5
    learnset MOVE_PURSUIT, 9
    learnset MOVE_FALSE_SWIPE, 10
    learnset MOVE_WING_ATTACK, 15
    learnset MOVE_SLASH, 20
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_NIGHT_SLASH, 32
    learnset MOVE_X_SCISSOR, 38
    learnset MOVE_REVERSAL, 43
    learnset MOVE_BULLET_PUNCH, 48
    learnset MOVE_IRON_HEAD, 54
    learnset MOVE_SUPERPOWER, 60
    terminatelearnset


levelup SPECIES_MEGA_HERACROSS
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ARM_THRUST, 1
    learnset MOVE_FURY_CUTTER, 6
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_FACADE, 17
    learnset MOVE_ROCK_SLIDE, 22
    learnset MOVE_PIN_MISSILE, 28
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_THROAT_CHOP, 37
    learnset MOVE_X_SCISSOR, 41
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_CLOSE_COMBAT, 64
    learnset MOVE_MEGAHORN, 72
    terminatelearnset


levelup SPECIES_MEGA_HOUNDOOM
    learnset MOVE_OVERHEAT, 1
    learnset MOVE_SOLAR_BEAM, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_PURSUIT, 1
    learnset MOVE_BITE, 8
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_FIRE_FANG, 15
    learnset MOVE_PAYBACK, 20
    learnset MOVE_SUCKER_PUNCH, 24
    learnset MOVE_FLAME_BURST, 27
    learnset MOVE_FEINT_ATTACK, 30
    learnset MOVE_CRUNCH, 36
    learnset MOVE_LAVA_PLUME, 41
    learnset MOVE_DARK_PULSE, 45
    learnset MOVE_SLUDGE_BOMB, 50
    learnset MOVE_PSYCHIC_FANGS, 55
    learnset MOVE_FLAMETHROWER, 59
    terminatelearnset


levelup SPECIES_MEGA_TYRANITAR
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_BODY_PRESS, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 3
    learnset MOVE_ROCK_THROW, 6
    learnset MOVE_BITE, 14
    learnset MOVE_CHIP_AWAY, 21
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_STOMPING_TANTRUM, 43
    learnset MOVE_BODY_SLAM, 59
    learnset MOVE_CRUNCH, 64
    learnset MOVE_EARTHQUAKE, 69
    learnset MOVE_FOUL_PLAY, 73
    learnset MOVE_STONE_EDGE, 78
    terminatelearnset


levelup SPECIES_MEGA_SCEPTILE
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_ROCK_SLIDE, 1
    learnset MOVE_DRAGON_PULSE, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_LEAFAGE, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_MEGA_DRAIN, 12
    learnset MOVE_PURSUIT, 14
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_ASSURANCE, 19
    learnset MOVE_AERIAL_ACE, 25
    learnset MOVE_MAGICAL_LEAF, 29
    learnset MOVE_BRICK_BREAK, 32
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_CRUSH_CLAW, 36
    learnset MOVE_THUNDER_PUNCH, 39
    learnset MOVE_LEAF_BLADE, 41
    learnset MOVE_CRUNCH, 43
    learnset MOVE_X_SCISSOR, 47
    learnset MOVE_DRAGON_CLAW, 53
    learnset MOVE_ENERGY_BALL, 59
    terminatelearnset


levelup SPECIES_MEGA_BLAZIKEN
    learnset MOVE_SUPERPOWER, 1
    learnset MOVE_FLARE_BLITZ, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_EMBER, 3
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_SAND_ATTACK, 10
    learnset MOVE_PECK, 13
    learnset MOVE_DOUBLE_KICK, 16
    learnset MOVE_BOUNCE, 19
    learnset MOVE_SLASH, 23
    learnset MOVE_FLAME_BURST, 25
    learnset MOVE_SHADOW_CLAW, 28
    learnset MOVE_AERIAL_ACE, 31
    learnset MOVE_BLAZE_KICK, 36
    learnset MOVE_STOMPING_TANTRUM, 44
    learnset MOVE_CRUSH_CLAW, 51
    learnset MOVE_SKY_UPPERCUT, 58
    terminatelearnset


levelup SPECIES_MEGA_SWAMPERT
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_SLUDGE_WAVE, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 3
    learnset MOVE_ROCK_SMASH, 6
    learnset MOVE_MUD_SLAP, 9
    learnset MOVE_SUPERSONIC, 12
    learnset MOVE_MUD_SHOT, 16
    learnset MOVE_ROCK_SLIDE, 23
    learnset MOVE_BODY_SLAM, 26
    learnset MOVE_SURF, 31
    learnset MOVE_DOUBLE_EDGE, 33
    learnset MOVE_BRICK_BREAK, 36
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_AVALANCHE, 43
    learnset MOVE_HAMMER_ARM, 47
    learnset MOVE_MUDDY_WATER, 53
    learnset MOVE_EARTHQUAKE, 58
    terminatelearnset


levelup SPECIES_MEGA_GARDEVOIR
    learnset MOVE_ENERGY_BALL, 1
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_CONFUSION, 9
    learnset MOVE_TELEPORT, 12
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_MAGICAL_LEAF, 19
    learnset MOVE_PSYBEAM, 24
    learnset MOVE_HYPNOSIS, 29
    learnset MOVE_WILL_O_WISP, 30
    learnset MOVE_PSYSHOCK, 37
    learnset MOVE_DAZZLING_GLEAM, 42
    learnset MOVE_SHADOW_BALL, 47
    learnset MOVE_AURA_SPHERE, 51
    learnset MOVE_PSYCHIC, 56
    learnset MOVE_MOONBLAST, 60
    learnset MOVE_TELEPORT, 60
    terminatelearnset


levelup SPECIES_MEGA_SABLEYE
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FORESIGHT, 4
    learnset MOVE_ASTONISH, 5
    learnset MOVE_SHADOW_SNEAK, 12
    learnset MOVE_NIGHT_SHADE, 14
    learnset MOVE_DISABLE, 15
    learnset MOVE_FAKE_OUT, 17
    learnset MOVE_BRICK_BREAK, 20
    learnset MOVE_FEINT_ATTACK, 22
    learnset MOVE_PUNISHMENT, 24
    learnset MOVE_KNOCK_OFF, 27
    learnset MOVE_SHADOW_CLAW, 30
    learnset MOVE_POWER_GEM, 34
    learnset MOVE_ZEN_HEADBUTT, 36
    learnset MOVE_SHADOW_BALL, 39
    learnset MOVE_FOUL_PLAY, 42
    terminatelearnset


levelup SPECIES_MEGA_MAWILE
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_PSYCHIC_FANGS, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_FAIRY_WIND, 4
    learnset MOVE_BITE, 10
    learnset MOVE_ICE_FANG, 15
    learnset MOVE_SUCKER_PUNCH, 20
    learnset MOVE_FEINT_ATTACK, 23
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_CRUNCH, 31
    learnset MOVE_IRON_HEAD, 33
    learnset MOVE_PLAY_ROUGH, 35
    terminatelearnset


levelup SPECIES_MEGA_AGGRON
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_OUTRAGE, 1
    learnset MOVE_METAL_BURST, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_MUD_SLAP, 4
    learnset MOVE_METAL_CLAW, 6
    learnset MOVE_ROCK_TOMB, 14
    learnset MOVE_HEADBUTT, 19
    learnset MOVE_BULLDOZE, 29
    learnset MOVE_DOUBLE_EDGE, 36
    learnset MOVE_HEAVY_SLAM, 42
    learnset MOVE_SMART_STRIKE, 45
    learnset MOVE_ROCK_SLIDE, 48
    learnset MOVE_IRON_HEAD, 52
    learnset MOVE_HIGH_HORSEPOWER, 57
    learnset MOVE_SUPERPOWER, 61
    learnset MOVE_HEAD_SMASH, 68
    terminatelearnset


levelup SPECIES_MEGA_MEDICHAM
    learnset MOVE_REVERSAL, 1
    learnset MOVE_AXE_KICK, 1
    learnset MOVE_THUNDER_PUNCH, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_FIRE_PUNCH, 1
    learnset MOVE_KARATE_CHOP, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_SEISMIC_TOSS, 9
    learnset MOVE_DETECT, 14
    learnset MOVE_FAKE_OUT, 19
    learnset MOVE_BULLET_PUNCH, 25
    learnset MOVE_PSYCHO_CUT, 29
    learnset MOVE_BRICK_BREAK, 37
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_ZEN_HEADBUTT, 46
    learnset MOVE_HIGH_JUMP_KICK, 50
    learnset MOVE_RECOVER, 54
    learnset MOVE_CLOSE_COMBAT, 61
    terminatelearnset


levelup SPECIES_MEGA_MANECTRIC
    learnset MOVE_VOLT_SWITCH, 1
    learnset MOVE_LIGHT_SCREEN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_WAVE, 1
    learnset MOVE_THUNDER_SHOCK, 7
    learnset MOVE_QUICK_ATTACK, 11
    learnset MOVE_SPARK, 14
    learnset MOVE_SHOCK_WAVE, 16
    learnset MOVE_BITE, 16
    learnset MOVE_THUNDER_FANG, 23
    learnset MOVE_SNARL, 26
    learnset MOVE_HEADBUTT, 30
    learnset MOVE_DISCHARGE, 35
    learnset MOVE_CRUNCH, 38
    learnset MOVE_THUNDER_WAVE, 41
    learnset MOVE_PSYCHIC_FANGS, 45
    learnset MOVE_THUNDERBOLT, 48
    terminatelearnset


levelup SPECIES_MEGA_SHARPEDO
    learnset MOVE_FLIP_TURN, 1
    learnset MOVE_DOUBLE_EDGE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BITE, 5
    learnset MOVE_RAGE, 9
    learnset MOVE_AQUA_JET, 13
    learnset MOVE_WATER_PULSE, 17
    learnset MOVE_BOUNCE, 21
    learnset MOVE_ANCIENT_POWER, 24
    learnset MOVE_DIVE, 30
    learnset MOVE_ICE_FANG, 33
    learnset MOVE_CRUNCH, 36
    learnset MOVE_SUPER_FANG, 41
    learnset MOVE_PSYCHIC_FANGS, 47
    learnset MOVE_LIQUIDATION, 51
    terminatelearnset


levelup SPECIES_MEGA_CAMERUPT
    learnset MOVE_HEAVY_SLAM, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_MAGNITUDE, 12
    learnset MOVE_FLAME_BURST, 15
    learnset MOVE_ROCK_TOMB, 20
    learnset MOVE_BODY_SLAM, 24
    learnset MOVE_LAVA_PLUME, 31
    learnset MOVE_ROCK_SLIDE, 34
    learnset MOVE_EARTH_POWER, 41
    learnset MOVE_ANCIENT_POWER, 45
    learnset MOVE_EARTHQUAKE, 50
    learnset MOVE_FLAMETHROWER, 54
    learnset MOVE_ERUPTION, 66
    terminatelearnset


levelup SPECIES_MEGA_ALTARIA
    learnset MOVE_HURRICANE, 1
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_PECK, 1
    learnset MOVE_ASTONISH, 3
    learnset MOVE_DISARMING_VOICE, 9
    learnset MOVE_SECRET_POWER, 12
    learnset MOVE_SAFEGUARD, 16
    learnset MOVE_SING, 19
    learnset MOVE_DRAGON_BREATH, 22
    learnset MOVE_AERIAL_ACE, 24
    learnset MOVE_ROOST, 29
    learnset MOVE_BODY_SLAM, 33
    learnset MOVE_AIR_SLASH, 37
    learnset MOVE_DRAGON_PULSE, 41
    learnset MOVE_HYPER_VOICE, 46
    learnset MOVE_MOONBLAST, 49
    terminatelearnset


levelup SPECIES_MEGA_BANETTE
    learnset MOVE_GUNK_SHOT, 1
    learnset MOVE_WILL_O_WISP, 1
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_NIGHT_SHADE, 7
    learnset MOVE_SHADOW_SNEAK, 13
    learnset MOVE_WILL_O_WISP, 16
    learnset MOVE_FEINT_ATTACK, 19
    learnset MOVE_HEX, 24
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_SHADOW_BALL, 31
    learnset MOVE_SUCKER_PUNCH, 34
    learnset MOVE_SHADOW_CLAW, 37
    learnset MOVE_BRICK_BREAK, 41
    learnset MOVE_DARK_PULSE, 45
    learnset MOVE_DOUBLE_EDGE, 48
    learnset MOVE_PHANTOM_FORCE, 52
    terminatelearnset


levelup SPECIES_MEGA_ABSOL
    learnset MOVE_PLAY_ROUGH, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 7
    learnset MOVE_KNOCK_OFF, 11
    learnset MOVE_PURSUIT, 14
    learnset MOVE_TAUNT, 17
    learnset MOVE_SLASH, 19
    learnset MOVE_NIGHT_SLASH, 23
    learnset MOVE_BODY_SLAM, 27
    learnset MOVE_CRUNCH, 30
    learnset MOVE_SMART_STRIKE, 33
    learnset MOVE_PSYCHO_CUT, 36
    learnset MOVE_SUCKER_PUNCH, 38
    learnset MOVE_MEGAHORN, 42
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_SUPERPOWER, 49
    terminatelearnset


levelup SPECIES_MEGA_GLALIE
    learnset MOVE_FREEZE_DRY, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ICE_SHARD, 9
    learnset MOVE_ICY_WIND, 12
    learnset MOVE_AURORA_BEAM, 16
    learnset MOVE_BITE, 19
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_SELF_DESTRUCT, 42
    learnset MOVE_CRUNCH, 49
    learnset MOVE_ICE_BEAM, 53
    learnset MOVE_WEATHER_BALL, 55
    terminatelearnset


levelup SPECIES_MEGA_SALAMENCE
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_THUNDER_FANG, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_BITE, 5
    learnset MOVE_LEER, 10
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_FOCUS_ENERGY, 20
    learnset MOVE_EMBER, 25
    learnset MOVE_PROTECT, 30
    learnset MOVE_DRAGON_BREATH, 32
    learnset MOVE_ZEN_HEADBUTT, 37
    learnset MOVE_SCARY_FACE, 43
    learnset MOVE_FLY, 50
    learnset MOVE_CRUNCH, 53
    learnset MOVE_DRAGON_CLAW, 61
    learnset MOVE_DOUBLE_EDGE, 70
    terminatelearnset


levelup SPECIES_MEGA_METAGROSS
    learnset MOVE_MAGNET_RISE, 1
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_METAL_CLAW, 20
    learnset MOVE_CONFUSION, 20
    learnset MOVE_SCARY_FACE, 24
    learnset MOVE_PURSUIT, 28
    learnset MOVE_BULLET_PUNCH, 32
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_IRON_DEFENSE, 40
    learnset MOVE_AGILITY, 44
    learnset MOVE_HAMMER_ARM, 45
    learnset MOVE_METEOR_MASH, 53
    learnset MOVE_ZEN_HEADBUTT, 62
    learnset MOVE_HYPER_BEAM, 71
    terminatelearnset


levelup SPECIES_MEGA_LATIAS
    learnset MOVE_DRACO_METEOR, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_HELPING_HAND, 5
    learnset MOVE_REFRESH, 13
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_RECOVER, 20
    learnset MOVE_AIR_SLASH, 26
    learnset MOVE_WISH, 35
    learnset MOVE_MIST_BALL, 42
    learnset MOVE_DRAGON_PULSE, 47
    learnset MOVE_AURA_SPHERE, 52
    learnset MOVE_THUNDERBOLT, 56
    terminatelearnset


levelup SPECIES_MEGA_LATIOS
    learnset MOVE_PSYWAVE, 1
    learnset MOVE_HEAL_BLOCK, 5
    learnset MOVE_HELPING_HAND, 10
    learnset MOVE_SAFEGUARD, 15
    learnset MOVE_DRAGON_BREATH, 20
    learnset MOVE_PROTECT, 25
    learnset MOVE_REFRESH, 30
    learnset MOVE_LUSTER_PURGE, 35
    learnset MOVE_ZEN_HEADBUTT, 40
    learnset MOVE_RECOVER, 45
    learnset MOVE_PSYCHO_SHIFT, 50
    learnset MOVE_DRAGON_DANCE, 55
    learnset MOVE_MEMENTO, 60
    learnset MOVE_PSYCHIC, 65
    learnset MOVE_DRAGON_PULSE, 70
    terminatelearnset


levelup SPECIES_MEGA_RAYQUAZA
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_AIR_SLASH, 11
    learnset MOVE_BODY_SLAM, 20
    learnset MOVE_DRAGON_CLAW, 35
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_DRAGON_ASCENT, 54
    learnset MOVE_EARTHQUAKE, 73
    learnset MOVE_HURRICANE, 80
    learnset MOVE_DRACO_METEOR, 90
    terminatelearnset


levelup SPECIES_MEGA_LOPUNNY
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_POUND, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_SLASH, 18
    learnset MOVE_DIG, 21
    learnset MOVE_FAKE_OUT, 23
    learnset MOVE_BRICK_BREAK, 27
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_BOUNCE, 33
    learnset MOVE_JUMP_KICK, 37
    learnset MOVE_FIRE_PUNCH, 40
    learnset MOVE_PLAY_ROUGH, 43
    learnset MOVE_DOUBLE_EDGE, 47
    learnset MOVE_HIGH_JUMP_KICK, 51
    terminatelearnset


levelup SPECIES_MEGA_GARCHOMP
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_DRAGON_BREATH, 12
    learnset MOVE_BULLDOZE, 18
    learnset MOVE_BITE, 21
    learnset MOVE_SLASH, 25
    learnset MOVE_DUAL_CHOP, 30
    learnset MOVE_DIG, 37
    learnset MOVE_BODY_SLAM, 43
    learnset MOVE_CRUNCH, 48
    learnset MOVE_THUNDER_FANG, 52
    learnset MOVE_HIGH_HORSEPOWER, 59
    learnset MOVE_ROCK_SLIDE, 63
    learnset MOVE_DRAGON_CLAW, 71
    terminatelearnset


levelup SPECIES_MEGA_LUCARIO
    learnset MOVE_DRAIN_PUNCH, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_HIGH_JUMP_KICK, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FORCE_PALM, 1
    learnset MOVE_METAL_CLAW, 8
    learnset MOVE_COUNTER, 12
    learnset MOVE_ROCK_SMASH, 15
    learnset MOVE_BITE, 18
    learnset MOVE_BULLET_PUNCH, 21
    learnset MOVE_BRICK_BREAK, 26
    learnset MOVE_ROCK_SLIDE, 33
    learnset MOVE_AURA_SPHERE, 36
    learnset MOVE_SHADOW_CLAW, 39
    learnset MOVE_FLASH_CANNON, 43
    learnset MOVE_EXTREME_SPEED, 47
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_METEOR_MASH, 54
    learnset MOVE_CLOSE_COMBAT, 60
    terminatelearnset


levelup SPECIES_MEGA_ABOMASNOW
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_LEER, 1
    learnset MOVE_LEAFAGE, 5
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_GRASS_WHISTLE, 16
    learnset MOVE_ICY_WIND, 19
    learnset MOVE_ICE_SHARD, 24
    learnset MOVE_MAGICAL_LEAF, 27
    learnset MOVE_BODY_SLAM, 31
    learnset MOVE_GIGA_DRAIN, 34
    learnset MOVE_ICE_PUNCH, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_WOOD_HAMMER, 45
    learnset MOVE_ICE_BEAM, 48
    learnset MOVE_BLIZZARD, 54
    terminatelearnset


levelup SPECIES_MEGA_GALLADE
    learnset MOVE_SHADOW_SNEAK, 1
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_ICE_PUNCH, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_DISARMING_VOICE, 1
    learnset MOVE_CONFUSION, 9
    learnset MOVE_TELEPORT, 12
    learnset MOVE_DRAINING_KISS, 15
    learnset MOVE_MAGICAL_LEAF, 19
    learnset MOVE_PSYBEAM, 24
    learnset MOVE_HYPNOSIS, 29
    learnset MOVE_PSYCHO_CUT, 30
    learnset MOVE_NIGHT_SLASH, 37
    learnset MOVE_SACRED_SWORD, 42
    learnset MOVE_LEAF_BLADE, 47
    learnset MOVE_ROCK_SLIDE, 51
    learnset MOVE_ZEN_HEADBUTT, 56
    learnset MOVE_CLOSE_COMBAT, 60
    learnset MOVE_TELEPORT, 60
    terminatelearnset


levelup SPECIES_MEGA_AUDINO
    learnset MOVE_FOLLOW_ME, 1
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_DISARMING_VOICE, 8
    learnset MOVE_HELPING_HAND, 11
    learnset MOVE_DOUBLE_SLAP, 14
    learnset MOVE_HEADBUTT, 19
    learnset MOVE_ZEN_HEADBUTT, 26
    learnset MOVE_ATTRACT, 29
    learnset MOVE_TAKE_DOWN, 32
    learnset MOVE_HEAL_PULSE, 35
    learnset MOVE_WISH, 37
    learnset MOVE_HYPER_VOICE, 41
    learnset MOVE_PSYCHIC, 44
    learnset MOVE_ENCORE, 47
    terminatelearnset


levelup SPECIES_MEGA_DIANCIE
    learnset MOVE_TACKLE, 1
    learnset MOVE_HARDEN, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_SHARPEN, 5
    learnset MOVE_SMACK_DOWN, 11
    learnset MOVE_REFLECT, 12
    learnset MOVE_GUARD_SPLIT, 13
    learnset MOVE_FLAIL, 25
    learnset MOVE_ANCIENT_POWER, 27
    learnset MOVE_STEALTH_ROCK, 35
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_LIGHT_SCREEN, 50
    learnset MOVE_POWER_GEM, 52
    learnset MOVE_MOONBLAST, 64
    learnset MOVE_STONE_EDGE, 67
    learnset MOVE_SAFEGUARD, 70
    learnset MOVE_DIAMOND_STORM, 91
    terminatelearnset


levelup SPECIES_KYOGRE_PRIMAL
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_AQUA_TAIL, 11
    learnset MOVE_BODY_SLAM, 20
    learnset MOVE_ICE_BEAM, 35
    learnset MOVE_MUDDY_WATER, 42
    learnset MOVE_SHEER_COLD, 54
    learnset MOVE_ORIGIN_PULSE, 54
    learnset MOVE_THUNDER, 73
    learnset MOVE_HYPER_VOICE, 80
    learnset MOVE_WATER_SPOUT, 90
    terminatelearnset


levelup SPECIES_GROUDON_PRIMAL
    learnset MOVE_MUD_SHOT, 1
    learnset MOVE_ANCIENT_POWER, 1
    learnset MOVE_EARTH_POWER, 11
    learnset MOVE_BODY_SLAM, 20
    learnset MOVE_LAVA_PLUME, 35
    learnset MOVE_EARTHQUAKE, 42
    learnset MOVE_FISSURE, 54
    learnset MOVE_PRECIPICE_BLADES, 54
    learnset MOVE_SOLAR_BLADE, 73
    learnset MOVE_HYPER_VOICE, 80
    learnset MOVE_ERUPTION, 90
    terminatelearnset

levelup SPECIES_RATTATA_ALOLAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_BITE, 10
    learnset MOVE_PURSUIT, 13
    learnset MOVE_HYPER_FANG, 16
    learnset MOVE_ASSURANCE, 19
    learnset MOVE_CRUNCH, 22
    learnset MOVE_SUCKER_PUNCH, 25
    learnset MOVE_SUPER_FANG, 28
    learnset MOVE_DOUBLE_EDGE, 31
    learnset MOVE_ENDEAVOR, 34
    learnset MOVE_FACADE, 36
    terminatelearnset


levelup SPECIES_RATICATE_ALOLAN
    learnset MOVE_SCARY_FACE, 0
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_SWORDS_DANCE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_QUICK_ATTACK, 4
    learnset MOVE_FOCUS_ENERGY, 7
    learnset MOVE_BITE, 10
    learnset MOVE_PURSUIT, 13
    learnset MOVE_HYPER_FANG, 16
    learnset MOVE_ASSURANCE, 19
    learnset MOVE_CRUNCH, 24
    learnset MOVE_SUCKER_PUNCH, 29
    learnset MOVE_SUPER_FANG, 34
    learnset MOVE_DOUBLE_EDGE, 39
    learnset MOVE_ENDEAVOR, 44
    terminatelearnset


levelup SPECIES_RAICHU_ALOLAN
    learnset MOVE_PSYCHIC, 0
    learnset MOVE_CHARM, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_THUNDER_WAVE, 7
    learnset MOVE_QUICK_ATTACK, 14
    learnset MOVE_ELECTRO_BALL, 19
    learnset MOVE_SHOCK_WAVE, 25
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_PLAY_ROUGH, 32
    learnset MOVE_GRASS_KNOT, 36
    learnset MOVE_THUNDERBOLT, 40
    learnset MOVE_SURF, 45
    learnset MOVE_VOLT_SWITCH, 49
    learnset MOVE_VOLT_TACKLE, 53
    terminatelearnset


levelup SPECIES_SANDSHREW_ALOLAN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_BIDE, 3
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_ICE_BALL, 7
    learnset MOVE_METAL_CLAW, 9
    learnset MOVE_AURORA_BEAM, 11
    learnset MOVE_BULLDOZE, 14
    learnset MOVE_SWIFT, 17
    learnset MOVE_ICE_PUNCH, 22
    learnset MOVE_SLASH, 26
    learnset MOVE_ICE_SHARD, 30
    learnset MOVE_IRON_HEAD, 33
    learnset MOVE_ICE_SPINNER, 37
    learnset MOVE_EARTHQUAKE, 41
    learnset MOVE_BLIZZARD, 45
    terminatelearnset


levelup SPECIES_SANDSLASH_ALOLAN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_BIDE, 3
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_ICE_BALL, 7
    learnset MOVE_METAL_CLAW, 10
    learnset MOVE_AURORA_BEAM, 12
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_SWIFT, 20
    learnset MOVE_ICE_PUNCH, 25
    learnset MOVE_SLASH, 28
    learnset MOVE_ICE_SHARD, 33
    learnset MOVE_IRON_HEAD, 35
    learnset MOVE_ICE_SPINNER, 40
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_ICICLE_CRASH, 49
    terminatelearnset


levelup SPECIES_VULPIX_ALOLAN
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DISABLE, 4
    learnset MOVE_QUICK_ATTACK, 7
    learnset MOVE_AURORA_BEAM, 11
    learnset MOVE_DRAINING_KISS, 13
    learnset MOVE_CONFUSE_RAY, 16
    learnset MOVE_HYPNOSIS, 20
    learnset MOVE_FEINT_ATTACK, 23
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_FREEZE_DRY, 28
    learnset MOVE_EXTRASENSORY, 31
    learnset MOVE_ICE_BEAM, 35
    learnset MOVE_IMPRISON, 37
    learnset MOVE_DAZZLING_GLEAM, 39
    learnset MOVE_ICE_SHARD, 43
    terminatelearnset


levelup SPECIES_NINETALES_ALOLAN
    learnset MOVE_DAZZLING_GLEAM, 0
    learnset MOVE_HYPNOSIS, 1
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DISABLE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_AURORA_BEAM, 15
    learnset MOVE_DRAINING_KISS, 19
    learnset MOVE_FEINT_ATTACK, 24
    learnset MOVE_BODY_SLAM, 29
    learnset MOVE_FREEZE_DRY, 33
    learnset MOVE_EXTRASENSORY, 37
    learnset MOVE_ICE_BEAM, 40
    learnset MOVE_DARK_PULSE, 42
    learnset MOVE_CONFUSE_RAY, 45
    learnset MOVE_BLIZZARD, 50
    learnset MOVE_MOONBLAST, 54
    terminatelearnset


levelup SPECIES_DIGLETT_ALOLAN
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_MAGNITUDE, 10
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_SUCKER_PUNCH, 20
    learnset MOVE_ROCK_SLIDE, 24
    learnset MOVE_IRON_HEAD, 27
    learnset MOVE_DIG, 31
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_EARTHQUAKE, 37
    learnset MOVE_STONE_EDGE, 41
    terminatelearnset


levelup SPECIES_DUGTRIO_ALOLAN
    learnset MOVE_REVERSAL, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_MUD_SLAP, 7
    learnset MOVE_MAGNITUDE, 10
    learnset MOVE_BULLDOZE, 16
    learnset MOVE_SUCKER_PUNCH, 21
    learnset MOVE_ROCK_SLIDE, 25
    learnset MOVE_IRON_HEAD, 29
    learnset MOVE_DIG, 33
    learnset MOVE_BODY_SLAM, 37
    learnset MOVE_EARTHQUAKE, 40
    learnset MOVE_FOUL_PLAY, 43
    learnset MOVE_STONE_EDGE, 48
    terminatelearnset


levelup SPECIES_MEOWTH_ALOLAN
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FEINT, 7
    learnset MOVE_PAY_DAY, 10
    learnset MOVE_BITE, 13
    learnset MOVE_FEINT_ATTACK, 18
    learnset MOVE_NIGHT_SLASH, 22
    learnset MOVE_DIG, 27
    learnset MOVE_DARK_PULSE, 30
    learnset MOVE_SHADOW_BALL, 35
    learnset MOVE_X_SCISSOR, 37
    learnset MOVE_PLAY_ROUGH, 40
    learnset MOVE_FOUL_PLAY, 44
    terminatelearnset


levelup SPECIES_PERSIAN_ALOLAN
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FEINT, 7
    learnset MOVE_PAY_DAY, 10
    learnset MOVE_BITE, 15
    learnset MOVE_FEINT_ATTACK, 20
    learnset MOVE_NIGHT_SLASH, 24
    learnset MOVE_POWER_GEM, 28
    learnset MOVE_DIG, 30
    learnset MOVE_DARK_PULSE, 34
    learnset MOVE_SHADOW_BALL, 39
    learnset MOVE_X_SCISSOR, 42
    learnset MOVE_PLAY_ROUGH, 45
    learnset MOVE_FOUL_PLAY, 50
    terminatelearnset


levelup SPECIES_GEODUDE_ALOLAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_ROLLOUT, 10
    learnset MOVE_SPARK, 12
    learnset MOVE_SMACK_DOWN, 15
    learnset MOVE_THUNDER_PUNCH, 20
    learnset MOVE_SELF_DESTRUCT, 24
    learnset MOVE_ROCK_TOMB, 27
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_WILD_CHARGE, 37
    learnset MOVE_EXPLOSION, 40
    learnset MOVE_DOUBLE_EDGE, 43
    learnset MOVE_STONE_EDGE, 49
    terminatelearnset


levelup SPECIES_GRAVELER_ALOLAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_ROLLOUT, 10
    learnset MOVE_SPARK, 12
    learnset MOVE_SMACK_DOWN, 18
    learnset MOVE_THUNDER_PUNCH, 22
    learnset MOVE_SELF_DESTRUCT, 26
    learnset MOVE_ROCK_TOMB, 29
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_WILD_CHARGE, 41
    learnset MOVE_EXPLOSION, 45
    learnset MOVE_DOUBLE_EDGE, 50
    learnset MOVE_STONE_EDGE, 56
    terminatelearnset


levelup SPECIES_GOLEM_ALOLAN
    learnset MOVE_VOLT_TACKLE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROCK_THROW, 5
    learnset MOVE_ROLLOUT, 10
    learnset MOVE_SPARK, 12
    learnset MOVE_SMACK_DOWN, 18
    learnset MOVE_THUNDER_PUNCH, 22
    learnset MOVE_SELF_DESTRUCT, 26
    learnset MOVE_ROCK_TOMB, 33
    learnset MOVE_ROCK_SLIDE, 42
    learnset MOVE_WILD_CHARGE, 42
    learnset MOVE_EXPLOSION, 48
    learnset MOVE_EARTHQUAKE, 51
    learnset MOVE_DOUBLE_EDGE, 54
    learnset MOVE_STONE_EDGE, 63
    terminatelearnset


levelup SPECIES_GRIMER_ALOLAN
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_BITE, 7
    learnset MOVE_SLUDGE_BOMB, 12
    learnset MOVE_ASSURANCE, 16
    learnset MOVE_SHADOW_PUNCH, 20
    learnset MOVE_DRAIN_PUNCH, 25
    learnset MOVE_POISON_JAB, 27
    learnset MOVE_CRUNCH, 30
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_SHADOW_SNEAK, 34
    learnset MOVE_FIRE_BLAST, 38
    learnset MOVE_GUNK_SHOT, 44
    terminatelearnset


levelup SPECIES_MUK_ALOLAN
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_POUND, 1
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_SECRET_POWER, 7
    learnset MOVE_SLUDGE_BOMB, 12
    learnset MOVE_MUD_BOMB, 16
    learnset MOVE_SHADOW_PUNCH, 20
    learnset MOVE_DRAIN_PUNCH, 25
    learnset MOVE_POISON_JAB, 26
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_THUNDER_PUNCH, 36
    learnset MOVE_ROCK_SLIDE, 39
    learnset MOVE_CRUNCH, 42
    learnset MOVE_SHADOW_SNEAK, 46
    learnset MOVE_FIRE_BLAST, 48
    learnset MOVE_GUNK_SHOT, 53
    terminatelearnset


levelup SPECIES_EXEGGUTOR_ALOLAN
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_EXPLOSION, 1
    learnset MOVE_STOMP, 1
    learnset MOVE_STOMPING_TANTRUM, 40
    learnset MOVE_DRAGON_HAMMER, 45
    learnset MOVE_WOOD_HAMMER, 50
    learnset MOVE_WORRY_SEED, 65
    terminatelearnset


levelup SPECIES_MAROWAK_ALOLAN
    learnset MOVE_SHADOW_BONE, 0
    learnset MOVE_FALSE_SWIPE, 1
    learnset MOVE_HEADBUTT, 1
    learnset MOVE_RETALIATE, 1
    learnset MOVE_FOCUS_ENERGY, 1
    learnset MOVE_DOUBLE_EDGE, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_FIRE_SPIN, 1
    learnset MOVE_BONE_CLUB, 1
    learnset MOVE_FLAME_WHEEL, 1
    learnset MOVE_TAIL_WHIP, 3
    learnset MOVE_BONE_CLUB, 7
    learnset MOVE_FLAME_WHEEL, 11
    learnset MOVE_LEER, 13
    learnset MOVE_HEX, 16
    learnset MOVE_FLING, 27
    learnset MOVE_SHADOW_BONE, 27
    learnset MOVE_WILL_O_WISP, 29
    learnset MOVE_STOMPING_TANTRUM, 32
    learnset MOVE_BONEMERANG, 35
    learnset MOVE_THRASH, 44
    learnset MOVE_ENDEAVOR, 45
    learnset MOVE_BONE_RUSH, 46
    learnset MOVE_FLARE_BLITZ, 56
    learnset MOVE_RETALIATE, 59
    terminatelearnset


levelup SPECIES_MEOWTH_GALARIAN
    learnset MOVE_FAKE_OUT, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_FEINT, 7
    learnset MOVE_METAL_CLAW, 10
    learnset MOVE_BITE, 13
    learnset MOVE_BRICK_BREAK, 18
    learnset MOVE_SLASH, 22
    learnset MOVE_DIG, 27
    learnset MOVE_IRON_HEAD, 31
    learnset MOVE_SHADOW_CLAW, 35
    learnset MOVE_X_SCISSOR, 37
    learnset MOVE_PLAY_ROUGH, 40
    learnset MOVE_DOUBLE_EDGE, 44
    terminatelearnset


levelup SPECIES_PONYTA_GALARIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSION, 4
    learnset MOVE_DOUBLE_KICK, 9
    learnset MOVE_PSYBEAM, 14
    learnset MOVE_STOMP, 16
    learnset MOVE_HYPNOSIS, 19
    learnset MOVE_BOUNCE, 22
    learnset MOVE_PSYSHOCK, 26
    learnset MOVE_DOUBLE_EDGE, 32
    learnset MOVE_HIGH_HORSEPOWER, 37
    learnset MOVE_PSYCHIC, 40
    terminatelearnset


levelup SPECIES_RAPIDASH_GALARIAN
    learnset MOVE_IRON_TAIL, 1
    learnset MOVE_POISON_JAB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSION, 4
    learnset MOVE_DOUBLE_KICK, 9
    learnset MOVE_PSYBEAM, 14
    learnset MOVE_STOMP, 16
    learnset MOVE_HYPNOSIS, 19
    learnset MOVE_BOUNCE, 22
    learnset MOVE_SMART_STRIKE, 25
    learnset MOVE_PSYCHIC, 26
    learnset MOVE_DOUBLE_EDGE, 32
    learnset MOVE_WILD_CHARGE, 36
    learnset MOVE_HIGH_HORSEPOWER, 39
    learnset MOVE_PLAY_ROUGH, 42
    learnset MOVE_MEGAHORN, 48
    learnset MOVE_ZEN_HEADBUTT, 52
    terminatelearnset


levelup SPECIES_SLOWPOKE_GALARIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSION,  1
    learnset MOVE_YAWN, 1
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_DISABLE, 11
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_SLUDGE, 19
    learnset MOVE_ZEN_HEADBUTT, 23
    learnset MOVE_AURORA_BEAM, 26
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_SLACK_OFF, 34
    learnset MOVE_SURF, 38
    learnset MOVE_PSYCHIC, 41
    learnset MOVE_SLUDGE_BOMB, 43
    terminatelearnset


levelup SPECIES_SLOWBRO_GALARIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSION,  1
    learnset MOVE_YAWN, 1
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_DISABLE, 11
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_SLUDGE, 19
    learnset MOVE_ZEN_HEADBUTT, 23
    learnset MOVE_AURORA_BEAM, 26
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_SLACK_OFF, 36
    learnset MOVE_SHELL_SIDE_ARM, 38
    learnset MOVE_SURF, 42
    learnset MOVE_PSYCHIC, 47
    learnset MOVE_FOCUS_BLAST, 50
    terminatelearnset


levelup SPECIES_FARFETCHD_GALARIAN
    learnset MOVE_PECK, 1
    learnset MOVE_SAND_ATTACK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_AERIAL_ACE, 10
    learnset MOVE_CUT, 15
    learnset MOVE_KNOCK_OFF, 19
    learnset MOVE_SLASH, 23
    learnset MOVE_NIGHT_SLASH, 26
    learnset MOVE_BRICK_BREAK, 28
    learnset MOVE_LEAF_BLADE, 34
    learnset MOVE_THROAT_CHOP, 37
    learnset MOVE_BRAVE_BIRD, 40
    learnset MOVE_CLOSE_COMBAT, 45
    terminatelearnset


levelup SPECIES_WEEZING_GALARIAN
    learnset MOVE_POISON_GAS, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_SMOG, 4
    learnset MOVE_SMOKESCREEN, 7
    learnset MOVE_FAIRY_WIND, 13
    learnset MOVE_ASSURANCE, 14
    learnset MOVE_SLUDGE_BOMB, 19
    learnset MOVE_SELF_DESTRUCT, 25
    learnset MOVE_DOUBLE_HIT, 28
    learnset MOVE_GYRO_BALL, 31
    learnset MOVE_TOXIC, 36
    learnset MOVE_DAZZLING_GLEAM, 41
    learnset MOVE_HEAT_WAVE, 44
    learnset MOVE_MISTY_EXPLOSION, 48
    learnset MOVE_GUNK_SHOT, 55
    terminatelearnset


levelup SPECIES_MR_MIME_GALARIAN
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_ICE_SHARD, 7
    learnset MOVE_ENCORE, 10
    learnset MOVE_PSYBEAM, 14
    learnset MOVE_AURORA_BEAM, 19
    learnset MOVE_MIRROR_COAT, 24
    learnset MOVE_TEETER_DANCE, 27
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_RECYCLE, 34
    learnset MOVE_FAKE_OUT, 37
    learnset MOVE_ICE_BEAM, 40
    learnset MOVE_PSYCHIC, 44
    learnset MOVE_SHADOW_BALL, 47
    learnset MOVE_FREEZE_DRY, 51
    terminatelearnset


levelup SPECIES_ARTICUNO_GALARIAN
    learnset MOVE_GUST, 1
    learnset MOVE_CONFUSION, 5
    learnset MOVE_WING_ATTACK, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_ROOST, 25
    learnset MOVE_PSYBEAM, 30
    learnset MOVE_REFLECT, 35
    learnset MOVE_AIR_SLASH, 40
    learnset MOVE_LIGHT_SCREEN, 45
    learnset MOVE_PSYSHOCK, 50
    learnset MOVE_FREEZING_GLARE, 60
    learnset MOVE_HURRICANE, 70
    learnset MOVE_TRICK_ROOM, 100
    terminatelearnset


levelup SPECIES_ZAPDOS_GALARIAN
    learnset MOVE_PECK, 1
    learnset MOVE_ROCK_SMASH, 5
    learnset MOVE_WING_ATTACK, 10
    learnset MOVE_LOW_KICK, 15
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_ROOST, 25
    learnset MOVE_BRICK_BREAK, 30
    learnset MOVE_REFLECT, 35
    learnset MOVE_DRILL_PECK, 40
    learnset MOVE_LIGHT_SCREEN, 45
    learnset MOVE_STOMPING_TANTRUM, 50
    learnset MOVE_THUNDEROUS_KICK, 60
    learnset MOVE_BRAVE_BIRD, 70
    learnset MOVE_REVERSAL, 100
    terminatelearnset


levelup SPECIES_MOLTRES_GALARIAN
    learnset MOVE_PECK, 1
    learnset MOVE_PAYBACK, 5
    learnset MOVE_WING_ATTACK, 10
    learnset MOVE_SNARL, 15
    learnset MOVE_ANCIENT_POWER, 20
    learnset MOVE_ROOST, 25
    learnset MOVE_SUCKER_PUNCH, 30
    learnset MOVE_U_TURN, 35
    learnset MOVE_AIR_SLASH, 40
    learnset MOVE_NASTY_PLOT, 45
    learnset MOVE_FOUL_PLAY, 50
    learnset MOVE_FIERY_WRATH, 60
    learnset MOVE_HURRICANE, 70
    learnset MOVE_HEAT_WAVE, 100
    terminatelearnset


levelup SPECIES_SLOWKING_GALARIAN
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_CONFUSION,  1
    learnset MOVE_YAWN, 1
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_DISABLE, 11
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_BUBBLE_BEAM, 19
    learnset MOVE_ZEN_HEADBUTT, 23
    learnset MOVE_AURORA_BEAM, 26
    learnset MOVE_THUNDER_WAVE, 30
    learnset MOVE_FLAMETHROWER, 35
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_SURF, 42
    learnset MOVE_PSYCHIC, 47
    learnset MOVE_FOCUS_BLAST, 50
    learnset MOVE_EERIE_SPELL, 52
    terminatelearnset


levelup SPECIES_CORSOLA_GALARIAN
    learnset MOVE_METEOR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ASTONISH, 5
    learnset MOVE_ROCK_TOMB, 10
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_SPIKE_CANNON, 20
    learnset MOVE_RECOVER, 23
    learnset MOVE_HEX, 25
    learnset MOVE_POWER_GEM, 30
    learnset MOVE_SCALD, 33
    learnset MOVE_ICICLE_SPEAR, 36
    learnset MOVE_SHADOW_BALL, 39
    learnset MOVE_ANCIENT_POWER, 42
    learnset MOVE_EARTH_POWER, 45
    terminatelearnset


levelup SPECIES_ZIGZAGOON_GALARIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_HEADBUTT, 9
    learnset MOVE_PIN_MISSILE, 11
    learnset MOVE_BITE, 15
    learnset MOVE_DIG, 20
    learnset MOVE_BODY_SLAM, 24
    learnset MOVE_SHADOW_BALL, 29
    learnset MOVE_CRUNCH, 32
    learnset MOVE_DOUBLE_EDGE, 34
    learnset MOVE_FOUL_PLAY, 37
    learnset MOVE_EXTREME_SPEED, 40
    terminatelearnset


levelup SPECIES_LINOONE_GALARIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_LICK, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_HEADBUTT, 9
    learnset MOVE_PIN_MISSILE, 11
    learnset MOVE_BITE, 15
    learnset MOVE_NIGHT_SLASH, 20
    learnset MOVE_DIG, 23
    learnset MOVE_BODY_SLAM, 27
    learnset MOVE_SHADOW_BALL, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_DOUBLE_EDGE, 38
    learnset MOVE_FOUL_PLAY, 41
    learnset MOVE_EXTREME_SPEED, 46
    terminatelearnset


levelup SPECIES_DARUMAKA_GALARIAN
    learnset MOVE_ICE_SHARD, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROLLOUT, 3
    learnset MOVE_BITE, 8
    learnset MOVE_AVALANCHE, 12
    learnset MOVE_ICE_FANG, 17
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_FACADE, 24
    learnset MOVE_ICE_PUNCH, 29
    learnset MOVE_BRICK_BREAK, 33
    learnset MOVE_ZEN_HEADBUTT, 37
    learnset MOVE_BODY_SLAM, 40
    learnset MOVE_SUPERPOWER, 48
    learnset MOVE_ICICLE_CRASH, 55
    terminatelearnset


levelup SPECIES_DARMANITAN_GALARIAN
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_ICE_SHARD, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROLLOUT, 3
    learnset MOVE_BITE, 8
    learnset MOVE_AVALANCHE, 12
    learnset MOVE_ICE_FANG, 17
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_FACADE, 24
    learnset MOVE_ICE_PUNCH, 29
    learnset MOVE_HAMMER_ARM, 35
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_ZEN_HEADBUTT, 44
    learnset MOVE_ICICLE_CRASH, 47
    learnset MOVE_BODY_SLAM, 52
    learnset MOVE_SUPERPOWER, 57
    terminatelearnset


levelup SPECIES_YAMASK_GALARIAN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_PROTECT, 1
    learnset MOVE_HAZE, 6
    learnset MOVE_DISABLE, 9
    learnset MOVE_NIGHT_SHADE, 10
    learnset MOVE_WILL_O_WISP, 15
    learnset MOVE_HEX, 20
    learnset MOVE_MUD_SHOT, 24
    learnset MOVE_TRICK, 27
    learnset MOVE_SHADOW_BALL, 31
    learnset MOVE_DARK_PULSE, 34
    learnset MOVE_EARTHQUAKE, 38
    learnset MOVE_POLTERGEIST, 42
    terminatelearnset


levelup SPECIES_STUNFISK_GALARIAN
    learnset MOVE_SLUDGE_WAVE, 1
    learnset MOVE_STEEL_BEAM, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_BITE, 8
    learnset MOVE_MUD_SHOT, 15
    learnset MOVE_ENDURE, 19
    learnset MOVE_CRUNCH, 23
    learnset MOVE_MUD_BOMB, 28
    learnset MOVE_SUCKER_PUNCH, 31
    learnset MOVE_BOUNCE, 35
    learnset MOVE_SNAP_TRAP, 38
    learnset MOVE_STONE_EDGE, 41
    learnset MOVE_MUDDY_WATER, 45
    learnset MOVE_EARTH_POWER, 49
    learnset MOVE_IRON_HEAD, 54
    terminatelearnset


levelup SPECIES_PIKACHU_COSPLAY
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_ROCK_STAR
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_BELLE
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_POP_STAR
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_PH_D
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_LIBRE
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_ORIGINAL_CAP
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_HOENN_CAP
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_SINNOH_CAP
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_UNOVA_CAP
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_KALOS_CAP
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_ALOLA_CAP
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_PARTNER_CAP
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_PIKACHU_WORLD_CAP
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_GROWL, 5
    learnset MOVE_PLAY_NICE, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_ELECTRO_BALL, 13
    learnset MOVE_THUNDER_WAVE, 18
    learnset MOVE_FEINT, 21
    learnset MOVE_DOUBLE_TEAM, 23
    learnset MOVE_SPARK, 26
    learnset MOVE_NUZZLE, 29
    learnset MOVE_DISCHARGE, 34
    learnset MOVE_SLAM, 37
    learnset MOVE_THUNDERBOLT, 42
    learnset MOVE_AGILITY, 45
    learnset MOVE_WILD_CHARGE, 50
    learnset MOVE_LIGHT_SCREEN, 53
    learnset MOVE_THUNDER, 58
    terminatelearnset


levelup SPECIES_CASTFORM_SUNNY
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_EMBER, 10
    learnset MOVE_POWDER_SNOW, 10
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_RAIN_DANCE, 20
    learnset MOVE_SUNNY_DAY, 20
    learnset MOVE_HAIL, 20
    learnset MOVE_WEATHER_BALL, 25
    learnset MOVE_HYDRO_PUMP, 35
    learnset MOVE_FIRE_BLAST, 35
    learnset MOVE_BLIZZARD, 35
    learnset MOVE_HURRICANE, 45
    terminatelearnset


levelup SPECIES_CASTFORM_RAINY
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_EMBER, 10
    learnset MOVE_POWDER_SNOW, 10
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_RAIN_DANCE, 20
    learnset MOVE_SUNNY_DAY, 20
    learnset MOVE_HAIL, 20
    learnset MOVE_WEATHER_BALL, 25
    learnset MOVE_HYDRO_PUMP, 35
    learnset MOVE_FIRE_BLAST, 35
    learnset MOVE_BLIZZARD, 35
    learnset MOVE_HURRICANE, 45
    terminatelearnset


levelup SPECIES_CASTFORM_SNOWY
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 10
    learnset MOVE_EMBER, 10
    learnset MOVE_POWDER_SNOW, 10
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_RAIN_DANCE, 20
    learnset MOVE_SUNNY_DAY, 20
    learnset MOVE_HAIL, 20
    learnset MOVE_WEATHER_BALL, 25
    learnset MOVE_HYDRO_PUMP, 35
    learnset MOVE_FIRE_BLAST, 35
    learnset MOVE_BLIZZARD, 35
    learnset MOVE_HURRICANE, 45
    terminatelearnset


levelup SPECIES_CHERRIM_SUNSHINE
    learnset MOVE_WEATHER_BALL, 1
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEAFAGE, 5
    learnset MOVE_SWIFT, 10
    learnset MOVE_MAGICAL_LEAF, 14
    learnset MOVE_DRAINING_KISS, 18
    learnset MOVE_TAKE_DOWN, 21
    learnset MOVE_GIGA_DRAIN, 27
    learnset MOVE_ATTRACT, 31
    learnset MOVE_DAZZLING_GLEAM, 36
    learnset MOVE_SOLAR_BEAM, 39
    learnset MOVE_PETAL_BLIZZARD, 42
    terminatelearnset


levelup SPECIES_SHELLOS_EAST_SEA
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_MUD_SHOT, 6
    learnset MOVE_WATER_PULSE, 10
    learnset MOVE_MUD_BOMB, 15
    learnset MOVE_ROCK_SLIDE, 21
    learnset MOVE_AURORA_BEAM, 24
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_RECOVER, 32
    learnset MOVE_MUDDY_WATER, 35
    learnset MOVE_ANCIENT_POWER, 38
    learnset MOVE_EARTH_POWER, 41
    terminatelearnset


levelup SPECIES_GASTRODON_EAST_SEA
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_COUNTER, 1
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_MUD_SHOT, 6
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_MUD_BOMB, 20
    learnset MOVE_ROCK_SLIDE, 24
    learnset MOVE_AURORA_BEAM, 28
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_ICE_BEAM, 33
    learnset MOVE_RECOVER, 36
    learnset MOVE_MUDDY_WATER, 39
    learnset MOVE_ANCIENT_POWER, 43
    learnset MOVE_EARTH_POWER, 46
    terminatelearnset


levelup SPECIES_DIALGA_ORIGIN
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_ANCIENT_POWER, 13
    learnset MOVE_SLASH, 19
    learnset MOVE_DRAGON_CLAW, 34
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_FLASH_CANNON, 43
    learnset MOVE_AURA_SPHERE, 50
    learnset MOVE_METAL_BURST, 58
    learnset MOVE_EARTH_POWER, 64
    learnset MOVE_IRON_TAIL, 70
    learnset MOVE_ROAR_OF_TIME, 80
    terminatelearnset


levelup SPECIES_PALKIA_ORIGIN
    learnset MOVE_SCARY_FACE, 1
    learnset MOVE_WATER_PULSE, 1
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_ANCIENT_POWER, 13
    learnset MOVE_SLASH, 19
    learnset MOVE_DRAGON_PULSE, 34
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_AQUA_TAIL, 43
    learnset MOVE_AURA_SPHERE, 50
    learnset MOVE_MIRROR_COAT, 58
    learnset MOVE_EARTH_POWER, 64
    learnset MOVE_HYDRO_PUMP, 70
    learnset MOVE_SPACIAL_REND, 80
    terminatelearnset


levelup SPECIES_BASCULIN_RED_STRIPED
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_UPROAR, 3
    learnset MOVE_HEADBUTT, 5
    learnset MOVE_BITE, 7
    learnset MOVE_AQUA_JET, 9
    learnset MOVE_CHIP_AWAY, 11
    learnset MOVE_TAKE_DOWN, 14
    learnset MOVE_CRUNCH, 17
    learnset MOVE_AQUA_TAIL, 20
    learnset MOVE_SOAK, 23
    learnset MOVE_DOUBLE_EDGE, 26
    learnset MOVE_SCARY_FACE, 30
    learnset MOVE_FLAIL, 34
    learnset MOVE_FINAL_GAMBIT, 38
    learnset MOVE_THRASH, 42
    learnset MOVE_HEAD_SMASH, 46
    terminatelearnset


levelup SPECIES_BASCULIN_BLUE_STRIPED
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_UPROAR, 3
    learnset MOVE_HEADBUTT, 5
    learnset MOVE_BITE, 7
    learnset MOVE_AQUA_JET, 9
    learnset MOVE_CHIP_AWAY, 11
    learnset MOVE_TAKE_DOWN, 14
    learnset MOVE_CRUNCH, 17
    learnset MOVE_AQUA_TAIL, 20
    learnset MOVE_SOAK, 23
    learnset MOVE_DOUBLE_EDGE, 26
    learnset MOVE_SCARY_FACE, 30
    learnset MOVE_FLAIL, 34
    learnset MOVE_FINAL_GAMBIT, 38
    learnset MOVE_THRASH, 42
    learnset MOVE_HEAD_SMASH, 46
    terminatelearnset


levelup SPECIES_DARMANITAN_ZEN_MODE
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROLLOUT, 3
    learnset MOVE_BITE, 8
    learnset MOVE_INCINERATE, 12
    learnset MOVE_FIRE_FANG, 17
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_FACADE, 24
    learnset MOVE_FIRE_PUNCH, 29
    learnset MOVE_HAMMER_ARM, 35
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_ZEN_HEADBUTT, 44
    learnset MOVE_BODY_SLAM, 47
    learnset MOVE_SUPERPOWER, 57
    learnset MOVE_FLARE_BLITZ, 65
    terminatelearnset


levelup SPECIES_DARMANITAN_ZEN_MODE_GALARIAN
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_ICE_SHARD, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ROLLOUT, 3
    learnset MOVE_BITE, 8
    learnset MOVE_AVALANCHE, 12
    learnset MOVE_ICE_FANG, 17
    learnset MOVE_HEADBUTT, 21
    learnset MOVE_FACADE, 24
    learnset MOVE_ICE_PUNCH, 29
    learnset MOVE_HAMMER_ARM, 35
    learnset MOVE_BRICK_BREAK, 39
    learnset MOVE_ZEN_HEADBUTT, 44
    learnset MOVE_ICICLE_CRASH, 47
    learnset MOVE_BODY_SLAM, 52
    learnset MOVE_SUPERPOWER, 57
    terminatelearnset


levelup SPECIES_DEERLING_SUMMER
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_ENERGY_BALL, 31
    learnset MOVE_DOUBLE_EDGE, 35
    learnset MOVE_SEED_BOMB, 39
    terminatelearnset


levelup SPECIES_DEERLING_AUTUMN
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_ENERGY_BALL, 31
    learnset MOVE_DOUBLE_EDGE, 35
    learnset MOVE_SEED_BOMB, 39
    terminatelearnset


levelup SPECIES_DEERLING_WINTER
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_ENERGY_BALL, 31
    learnset MOVE_DOUBLE_EDGE, 35
    learnset MOVE_SEED_BOMB, 39
    terminatelearnset


levelup SPECIES_SAWSBUCK_SUMMER
    learnset MOVE_PLAY_ROUGH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_HORN_LEECH, 34
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_SEED_BOMB, 43
    learnset MOVE_DRILL_RUN, 46
    terminatelearnset


levelup SPECIES_SAWSBUCK_AUTUMN
    learnset MOVE_PLAY_ROUGH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_HORN_LEECH, 34
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_SEED_BOMB, 43
    learnset MOVE_DRILL_RUN, 46
    terminatelearnset


levelup SPECIES_SAWSBUCK_WINTER
    learnset MOVE_PLAY_ROUGH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_SAND_ATTACK, 7
    learnset MOVE_DOUBLE_KICK, 10
    learnset MOVE_RAZOR_LEAF, 13
    learnset MOVE_FEINT_ATTACK, 17
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_JUMP_KICK, 24
    learnset MOVE_ZEN_HEADBUTT, 28
    learnset MOVE_BODY_SLAM, 30
    learnset MOVE_HORN_LEECH, 34
    learnset MOVE_DOUBLE_EDGE, 40
    learnset MOVE_SEED_BOMB, 43
    learnset MOVE_DRILL_RUN, 46
    terminatelearnset


levelup SPECIES_TORNADUS_THERIAN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_GUST, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SWAGGER, 10
    learnset MOVE_BITE, 14
    learnset MOVE_REVENGE, 17
    learnset MOVE_AIR_CUTTER, 22
    learnset MOVE_AIR_SLASH, 31
    learnset MOVE_EXTRASENSORY, 36
    learnset MOVE_TAILWIND, 42
    learnset MOVE_CRUNCH, 46
    learnset MOVE_HAMMER_ARM, 55
    learnset MOVE_HURRICANE, 63
    learnset MOVE_HEAT_WAVE, 69
    learnset MOVE_BLEAKWIND_STORM, 76
    terminatelearnset


levelup SPECIES_THUNDURUS_THERIAN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SWAGGER, 10
    learnset MOVE_BITE, 14
    learnset MOVE_REVENGE, 17
    learnset MOVE_SHOCK_WAVE, 22
    learnset MOVE_VOLT_SWITCH, 31
    learnset MOVE_THUNDERBOLT, 36
    learnset MOVE_TAILWIND, 42
    learnset MOVE_CRUNCH, 46
    learnset MOVE_HAMMER_ARM, 55
    learnset MOVE_THUNDER, 63
    learnset MOVE_HEAT_WAVE, 69
    learnset MOVE_WILDBOLT_STORM, 76
    terminatelearnset


levelup SPECIES_LANDORUS_THERIAN
    learnset MOVE_ASTONISH, 1
    learnset MOVE_MUD_SHOT, 1
    learnset MOVE_LEER, 5
    learnset MOVE_SWAGGER, 10
    learnset MOVE_BITE, 14
    learnset MOVE_REVENGE, 17
    learnset MOVE_BULLDOZE, 22
    learnset MOVE_ROCK_SLIDE, 31
    learnset MOVE_STONE_EDGE, 36
    learnset MOVE_OUTRAGE, 42
    learnset MOVE_CRUNCH, 46
    learnset MOVE_HAMMER_ARM, 55
    learnset MOVE_EARTHQUAKE, 63
    learnset MOVE_SUPERPOWER, 69
    learnset MOVE_SANDSEAR_STORM, 76
    terminatelearnset


levelup SPECIES_KYUREM_WHITE
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_NOBLE_ROAR, 1
    learnset MOVE_ANCIENT_POWER, 10
    learnset MOVE_SLASH, 21
    learnset MOVE_DRAGON_BREATH, 29
    learnset MOVE_ICE_BEAM, 37
    learnset MOVE_EXTRASENSORY, 42
    learnset MOVE_CRUNCH, 48
    learnset MOVE_DRAGON_PULSE, 55
    learnset MOVE_FUSION_FLARE, 67
    learnset MOVE_BLIZZARD, 78
    learnset MOVE_HYPER_VOICE, 83
    learnset MOVE_OUTRAGE, 86
    learnset MOVE_ICE_BURN, 90
    terminatelearnset


levelup SPECIES_KYUREM_BLACK
    learnset MOVE_DRAGON_BREATH, 1
    learnset MOVE_NOBLE_ROAR, 1
    learnset MOVE_ANCIENT_POWER, 10
    learnset MOVE_SLASH, 21
    learnset MOVE_DRAGON_TAIL, 29
    learnset MOVE_ICICLE_CRASH, 37
    learnset MOVE_EXTRASENSORY, 42
    learnset MOVE_CRUNCH, 48
    learnset MOVE_DRAGON_CLAW, 55
    learnset MOVE_FUSION_BOLT, 67
    learnset MOVE_BLIZZARD, 78
    learnset MOVE_HYPER_VOICE, 83
    learnset MOVE_OUTRAGE, 86
    learnset MOVE_FREEZE_SHOCK, 90
    terminatelearnset


levelup SPECIES_KELDEO_RESOLUTE
    learnset MOVE_AQUA_JET, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BUBBLE_BEAM, 9
    learnset MOVE_DOUBLE_KICK, 14
    learnset MOVE_HEADBUTT, 18
    learnset MOVE_RETALIATE, 24
    learnset MOVE_TAKE_DOWN, 31
    learnset MOVE_AQUA_TAIL, 35
    learnset MOVE_SACRED_SWORD, 41
    learnset MOVE_SMART_STRIKE, 50
    learnset MOVE_MUDDY_WATER, 59
    learnset MOVE_POWER_GEM, 65
    learnset MOVE_SECRET_SWORD, 73
    terminatelearnset


levelup SPECIES_MELOETTA_PIROUETTE
    learnset MOVE_ROUND, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_SING, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_CONFUSION, 11
    learnset MOVE_SING, 16
    learnset MOVE_TEETER_DANCE, 21
    learnset MOVE_ACROBATICS, 26
    learnset MOVE_PSYBEAM, 31
    learnset MOVE_ECHOED_VOICE, 36
    learnset MOVE_U_TURN, 43
    learnset MOVE_WAKE_UP_SLAP, 50
    learnset MOVE_PSYCHIC, 57
    learnset MOVE_HYPER_VOICE, 64
    learnset MOVE_ROLE_PLAY, 71
    learnset MOVE_CLOSE_COMBAT, 78
    learnset MOVE_PERISH_SONG, 85
    terminatelearnset


levelup SPECIES_GENESECT_DOUSE_DRIVE
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_SCREECH, 7
    learnset MOVE_FURY_CUTTER, 7
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_FELL_STINGER, 21
    learnset MOVE_MAGNET_BOMB, 25
    learnset MOVE_FLAME_CHARGE, 29
    learnset MOVE_SLASH, 34
    learnset MOVE_SIGNAL_BEAM, 40
    learnset MOVE_TRI_ATTACK, 44
    learnset MOVE_X_SCISSOR, 51
    learnset MOVE_LOCK_ON, 54
    learnset MOVE_FLASH_CANNON, 61
    learnset MOVE_BUG_BUZZ, 67
    learnset MOVE_ZAP_CANNON, 74
    learnset MOVE_TECHNO_BLAST, 84
    learnset MOVE_SELF_DESTRUCT, 90
    terminatelearnset


levelup SPECIES_GENESECT_SHOCK_DRIVE
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_SCREECH, 7
    learnset MOVE_FURY_CUTTER, 7
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_FELL_STINGER, 21
    learnset MOVE_MAGNET_BOMB, 25
    learnset MOVE_FLAME_CHARGE, 29
    learnset MOVE_SLASH, 34
    learnset MOVE_SIGNAL_BEAM, 40
    learnset MOVE_TRI_ATTACK, 44
    learnset MOVE_X_SCISSOR, 51
    learnset MOVE_LOCK_ON, 54
    learnset MOVE_FLASH_CANNON, 61
    learnset MOVE_BUG_BUZZ, 67
    learnset MOVE_ZAP_CANNON, 74
    learnset MOVE_TECHNO_BLAST, 84
    learnset MOVE_SELF_DESTRUCT, 90
    terminatelearnset


levelup SPECIES_GENESECT_BURN_DRIVE
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_SCREECH, 7
    learnset MOVE_FURY_CUTTER, 7
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_FELL_STINGER, 21
    learnset MOVE_MAGNET_BOMB, 25
    learnset MOVE_FLAME_CHARGE, 29
    learnset MOVE_SLASH, 34
    learnset MOVE_SIGNAL_BEAM, 40
    learnset MOVE_TRI_ATTACK, 44
    learnset MOVE_X_SCISSOR, 51
    learnset MOVE_LOCK_ON, 54
    learnset MOVE_FLASH_CANNON, 61
    learnset MOVE_BUG_BUZZ, 67
    learnset MOVE_ZAP_CANNON, 74
    learnset MOVE_TECHNO_BLAST, 84
    learnset MOVE_SELF_DESTRUCT, 90
    terminatelearnset


levelup SPECIES_GENESECT_CHILL_DRIVE
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_SCREECH, 7
    learnset MOVE_FURY_CUTTER, 7
    learnset MOVE_METAL_CLAW, 14
    learnset MOVE_FELL_STINGER, 21
    learnset MOVE_MAGNET_BOMB, 25
    learnset MOVE_FLAME_CHARGE, 29
    learnset MOVE_SLASH, 34
    learnset MOVE_SIGNAL_BEAM, 40
    learnset MOVE_TRI_ATTACK, 44
    learnset MOVE_X_SCISSOR, 51
    learnset MOVE_LOCK_ON, 54
    learnset MOVE_FLASH_CANNON, 61
    learnset MOVE_BUG_BUZZ, 67
    learnset MOVE_ZAP_CANNON, 74
    learnset MOVE_TECHNO_BLAST, 84
    learnset MOVE_SELF_DESTRUCT, 90
    terminatelearnset


levelup SPECIES_GRENINJA_BATTLE_BOND
    learnset MOVE_WATER_SHURIKEN, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_HAZE, 1
    learnset MOVE_ROLE_PLAY, 1
    learnset MOVE_MAT_BLOCK, 1
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BUBBLE, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_LICK, 10
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_SMOKESCREEN, 19
    learnset MOVE_SHADOW_SNEAK, 23
    learnset MOVE_SPIKES, 28
    learnset MOVE_FEINT_ATTACK, 33
    learnset MOVE_SUBSTITUTE, 42
    learnset MOVE_EXTRASENSORY, 49
    learnset MOVE_DOUBLE_TEAM, 56
    learnset MOVE_HYDRO_PUMP, 68
    learnset MOVE_HAZE, 70
    learnset MOVE_NIGHT_SLASH, 77
    terminatelearnset


levelup SPECIES_GRENINJA_ASH
    learnset MOVE_WATER_SHURIKEN, 1
    learnset MOVE_NIGHT_SLASH, 1
    learnset MOVE_HAZE, 1
    learnset MOVE_ROLE_PLAY, 1
    learnset MOVE_MAT_BLOCK, 1
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BUBBLE, 5
    learnset MOVE_QUICK_ATTACK, 8
    learnset MOVE_LICK, 10
    learnset MOVE_WATER_PULSE, 14
    learnset MOVE_SMOKESCREEN, 19
    learnset MOVE_SHADOW_SNEAK, 23
    learnset MOVE_SPIKES, 28
    learnset MOVE_FEINT_ATTACK, 33
    learnset MOVE_SUBSTITUTE, 42
    learnset MOVE_EXTRASENSORY, 49
    learnset MOVE_DOUBLE_TEAM, 56
    learnset MOVE_HYDRO_PUMP, 68
    learnset MOVE_HAZE, 70
    learnset MOVE_NIGHT_SLASH, 77
    terminatelearnset


levelup SPECIES_VIVILLON_POLAR
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_TUNDRA
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_CONTINENTAL
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_GARDEN
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_ELEGANT
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_MEADOW
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_MODERN
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_MARINE
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_ARCHIPELAGO
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_HIGH_PLAINS
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_SANDSTORM
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_RIVER
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_MONSOON
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_SAVANNA
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_SUN
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_OCEAN
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_JUNGLE
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_FANCY
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_VIVILLON_POKE_BALL
    learnset MOVE_POLLEN_PUFF, 1
    learnset MOVE_GUST, 12
    learnset MOVE_LIGHT_SCREEN, 12
    learnset MOVE_STRUGGLE_BUG, 13
    learnset MOVE_SLEEP_POWDER, 14
    learnset MOVE_POISON_POWDER, 14
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_PSYBEAM, 18
    learnset MOVE_SUPERSONIC, 20
    learnset MOVE_DRAINING_KISS, 22
    learnset MOVE_AIR_SLASH, 24
    learnset MOVE_GIGA_DRAIN, 26
    learnset MOVE_AROMATHERAPY, 29
    learnset MOVE_BUG_BUZZ, 31
    learnset MOVE_RAGE_POWDER, 34
    terminatelearnset


levelup SPECIES_FLABEBE_YELLOW_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 10
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 22
    learnset MOVE_CHARGE_BEAM, 25
    learnset MOVE_PETAL_BLIZZARD, 29
    learnset MOVE_AROMATHERAPY, 33
    learnset MOVE_DAZZLING_GLEAM, 36
    learnset MOVE_GIGA_DRAIN, 39
    learnset MOVE_MOONBLAST, 43
    learnset MOVE_PETAL_DANCE, 46
    terminatelearnset


levelup SPECIES_FLABEBE_ORANGE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 10
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 22
    learnset MOVE_CHARGE_BEAM, 25
    learnset MOVE_PETAL_BLIZZARD, 29
    learnset MOVE_AROMATHERAPY, 33
    learnset MOVE_DAZZLING_GLEAM, 36
    learnset MOVE_GIGA_DRAIN, 39
    learnset MOVE_MOONBLAST, 43
    learnset MOVE_PETAL_DANCE, 46
    terminatelearnset


levelup SPECIES_FLABEBE_BLUE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 10
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 22
    learnset MOVE_CHARGE_BEAM, 25
    learnset MOVE_PETAL_BLIZZARD, 29
    learnset MOVE_AROMATHERAPY, 33
    learnset MOVE_DAZZLING_GLEAM, 36
    learnset MOVE_GIGA_DRAIN, 39
    learnset MOVE_MOONBLAST, 43
    learnset MOVE_PETAL_DANCE, 46
    terminatelearnset


levelup SPECIES_FLABEBE_WHITE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 10
    learnset MOVE_RAZOR_LEAF, 15
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 22
    learnset MOVE_CHARGE_BEAM, 25
    learnset MOVE_PETAL_BLIZZARD, 29
    learnset MOVE_AROMATHERAPY, 33
    learnset MOVE_DAZZLING_GLEAM, 36
    learnset MOVE_GIGA_DRAIN, 39
    learnset MOVE_MOONBLAST, 43
    learnset MOVE_PETAL_DANCE, 46
    terminatelearnset


levelup SPECIES_FLOETTE_YELLOW_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 11
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 23
    learnset MOVE_CHARGE_BEAM, 27
    learnset MOVE_PETAL_BLIZZARD, 31
    learnset MOVE_AROMATHERAPY, 35
    learnset MOVE_DAZZLING_GLEAM, 39
    learnset MOVE_GIGA_DRAIN, 43
    learnset MOVE_MOONBLAST, 48
    learnset MOVE_PETAL_DANCE, 52
    terminatelearnset


levelup SPECIES_FLOETTE_ORANGE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 11
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 23
    learnset MOVE_CHARGE_BEAM, 27
    learnset MOVE_PETAL_BLIZZARD, 31
    learnset MOVE_AROMATHERAPY, 35
    learnset MOVE_DAZZLING_GLEAM, 39
    learnset MOVE_GIGA_DRAIN, 43
    learnset MOVE_MOONBLAST, 48
    learnset MOVE_PETAL_DANCE, 52
    terminatelearnset


levelup SPECIES_FLOETTE_BLUE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 11
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 23
    learnset MOVE_CHARGE_BEAM, 27
    learnset MOVE_PETAL_BLIZZARD, 31
    learnset MOVE_AROMATHERAPY, 35
    learnset MOVE_DAZZLING_GLEAM, 39
    learnset MOVE_GIGA_DRAIN, 43
    learnset MOVE_MOONBLAST, 48
    learnset MOVE_PETAL_DANCE, 52
    terminatelearnset


levelup SPECIES_FLOETTE_WHITE_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 11
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 23
    learnset MOVE_CHARGE_BEAM, 27
    learnset MOVE_PETAL_BLIZZARD, 31
    learnset MOVE_AROMATHERAPY, 35
    learnset MOVE_DAZZLING_GLEAM, 39
    learnset MOVE_GIGA_DRAIN, 43
    learnset MOVE_MOONBLAST, 48
    learnset MOVE_PETAL_DANCE, 52
    terminatelearnset


levelup SPECIES_FLOETTE_ETERNAL_FLOWER
    learnset MOVE_TACKLE, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FAIRY_WIND, 6
    learnset MOVE_LUCKY_CHANT, 11
    learnset MOVE_RAZOR_LEAF, 16
    learnset MOVE_WISH, 20
    learnset MOVE_MAGICAL_LEAF, 23
    learnset MOVE_CHARGE_BEAM, 27
    learnset MOVE_PETAL_BLIZZARD, 31
    learnset MOVE_AROMATHERAPY, 35
    learnset MOVE_DAZZLING_GLEAM, 39
    learnset MOVE_GIGA_DRAIN, 43
    learnset MOVE_MOONBLAST, 48
    learnset MOVE_PETAL_DANCE, 52
    learnset MOVE_LIGHT_OF_RUIN, 65
    terminatelearnset


levelup SPECIES_FLORGES_YELLOW_FLOWER
    learnset MOVE_WISH, 1
    learnset MOVE_FLOWER_SHIELD, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_AROMATHERAPY, 40
    learnset MOVE_GIGA_DRAIN, 45
    learnset MOVE_MOONBLAST, 50
    learnset MOVE_PETAL_DANCE, 55
    terminatelearnset


levelup SPECIES_FLORGES_ORANGE_FLOWER
    learnset MOVE_WISH, 1
    learnset MOVE_FLOWER_SHIELD, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_AROMATHERAPY, 40
    learnset MOVE_GIGA_DRAIN, 45
    learnset MOVE_MOONBLAST, 50
    learnset MOVE_PETAL_DANCE, 55
    terminatelearnset


levelup SPECIES_FLORGES_BLUE_FLOWER
    learnset MOVE_WISH, 1
    learnset MOVE_FLOWER_SHIELD, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_AROMATHERAPY, 40
    learnset MOVE_GIGA_DRAIN, 45
    learnset MOVE_MOONBLAST, 50
    learnset MOVE_PETAL_DANCE, 55
    terminatelearnset


levelup SPECIES_FLORGES_WHITE_FLOWER
    learnset MOVE_WISH, 1
    learnset MOVE_FLOWER_SHIELD, 1
    learnset MOVE_GRASS_KNOT, 1
    learnset MOVE_AROMATHERAPY, 40
    learnset MOVE_GIGA_DRAIN, 45
    learnset MOVE_MOONBLAST, 50
    learnset MOVE_PETAL_DANCE, 55
    terminatelearnset


levelup SPECIES_FURFROU_HEART
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_SNARL, 24
    learnset MOVE_RETALIATE, 27
    learnset MOVE_WILD_CHARGE, 30
    learnset MOVE_CHARM, 33
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_DOUBLE_EDGE, 41
    terminatelearnset


levelup SPECIES_FURFROU_STAR
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_SNARL, 24
    learnset MOVE_RETALIATE, 27
    learnset MOVE_WILD_CHARGE, 30
    learnset MOVE_CHARM, 33
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_DOUBLE_EDGE, 41
    terminatelearnset


levelup SPECIES_FURFROU_DIAMOND
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_SNARL, 24
    learnset MOVE_RETALIATE, 27
    learnset MOVE_WILD_CHARGE, 30
    learnset MOVE_CHARM, 33
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_DOUBLE_EDGE, 41
    terminatelearnset


levelup SPECIES_FURFROU_DEBUTANTE
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_SNARL, 24
    learnset MOVE_RETALIATE, 27
    learnset MOVE_WILD_CHARGE, 30
    learnset MOVE_CHARM, 33
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_DOUBLE_EDGE, 41
    terminatelearnset


levelup SPECIES_FURFROU_MATRON
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_SNARL, 24
    learnset MOVE_RETALIATE, 27
    learnset MOVE_WILD_CHARGE, 30
    learnset MOVE_CHARM, 33
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_DOUBLE_EDGE, 41
    terminatelearnset


levelup SPECIES_FURFROU_DANDY
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_SNARL, 24
    learnset MOVE_RETALIATE, 27
    learnset MOVE_WILD_CHARGE, 30
    learnset MOVE_CHARM, 33
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_DOUBLE_EDGE, 41
    terminatelearnset


levelup SPECIES_FURFROU_LA_REINE
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_SNARL, 24
    learnset MOVE_RETALIATE, 27
    learnset MOVE_WILD_CHARGE, 30
    learnset MOVE_CHARM, 33
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_DOUBLE_EDGE, 41
    terminatelearnset


levelup SPECIES_FURFROU_KABUKI
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_SNARL, 24
    learnset MOVE_RETALIATE, 27
    learnset MOVE_WILD_CHARGE, 30
    learnset MOVE_CHARM, 33
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_DOUBLE_EDGE, 41
    terminatelearnset


levelup SPECIES_FURFROU_PHARAOH
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_SAND_ATTACK, 5
    learnset MOVE_BABY_DOLL_EYES, 9
    learnset MOVE_HEADBUTT, 12
    learnset MOVE_TAIL_WHIP, 15
    learnset MOVE_BITE, 22
    learnset MOVE_SNARL, 24
    learnset MOVE_RETALIATE, 27
    learnset MOVE_WILD_CHARGE, 30
    learnset MOVE_CHARM, 33
    learnset MOVE_SUCKER_PUNCH, 37
    learnset MOVE_DOUBLE_EDGE, 41
    terminatelearnset


levelup SPECIES_AEGISLASH_BLADE
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_PHANTOM_FORCE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_FURY_CUTTER, 1
    learnset MOVE_SHADOW_SNEAK, 7
    learnset MOVE_PURSUIT, 15
    learnset MOVE_AERIAL_ACE, 19
    learnset MOVE_SLASH, 23
    learnset MOVE_RETALIATE, 28
    learnset MOVE_NIGHT_SLASH, 32
    learnset MOVE_BRICK_BREAK, 37
    learnset MOVE_SMART_STRIKE, 41
    learnset MOVE_SHADOW_BALL, 43
    learnset MOVE_KINGS_SHIELD, 45
    learnset MOVE_AIR_SLASH, 50
    learnset MOVE_IRON_HEAD, 54
    learnset MOVE_SACRED_SWORD, 58
    terminatelearnset


levelup SPECIES_PUMPKABOO_SMALL
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_MEGA_DRAIN, 7
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_RAZOR_LEAF, 14
    learnset MOVE_SCARY_FACE, 17
    learnset MOVE_SHADOW_SNEAK, 22
    learnset MOVE_BULLET_SEED, 29
    learnset MOVE_MYSTICAL_FIRE, 35
    learnset MOVE_SHADOW_BALL, 38
    learnset MOVE_SEED_BOMB, 42
    learnset MOVE_DARK_PULSE, 45
    terminatelearnset


levelup SPECIES_PUMPKABOO_LARGE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_MEGA_DRAIN, 7
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_RAZOR_LEAF, 14
    learnset MOVE_SCARY_FACE, 17
    learnset MOVE_SHADOW_SNEAK, 22
    learnset MOVE_BULLET_SEED, 29
    learnset MOVE_MYSTICAL_FIRE, 35
    learnset MOVE_SHADOW_BALL, 38
    learnset MOVE_SEED_BOMB, 42
    learnset MOVE_DARK_PULSE, 45
    terminatelearnset


levelup SPECIES_PUMPKABOO_SUPER
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_MEGA_DRAIN, 7
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_RAZOR_LEAF, 14
    learnset MOVE_SCARY_FACE, 17
    learnset MOVE_SHADOW_SNEAK, 22
    learnset MOVE_BULLET_SEED, 29
    learnset MOVE_MYSTICAL_FIRE, 35
    learnset MOVE_SHADOW_BALL, 38
    learnset MOVE_SEED_BOMB, 42
    learnset MOVE_DARK_PULSE, 45
    terminatelearnset


levelup SPECIES_GOURGEIST_SMALL
    learnset MOVE_FIRE_BLAST, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_MEGA_DRAIN, 7
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_RAZOR_LEAF, 17
    learnset MOVE_SCARY_FACE, 21
    learnset MOVE_SHADOW_SNEAK, 26
    learnset MOVE_BULLET_SEED, 31
    learnset MOVE_MYSTICAL_FIRE, 37
    learnset MOVE_SHADOW_BALL, 41
    learnset MOVE_SEED_BOMB, 46
    learnset MOVE_MOONBLAST, 50
    learnset MOVE_EXPLOSION, 55
    terminatelearnset


levelup SPECIES_GOURGEIST_LARGE
    learnset MOVE_FIRE_BLAST, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_MEGA_DRAIN, 7
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_RAZOR_LEAF, 17
    learnset MOVE_SCARY_FACE, 21
    learnset MOVE_SHADOW_SNEAK, 26
    learnset MOVE_BULLET_SEED, 31
    learnset MOVE_MYSTICAL_FIRE, 37
    learnset MOVE_SHADOW_BALL, 41
    learnset MOVE_SEED_BOMB, 46
    learnset MOVE_MOONBLAST, 50
    learnset MOVE_EXPLOSION, 55
    terminatelearnset


levelup SPECIES_GOURGEIST_SUPER
    learnset MOVE_FIRE_BLAST, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TRICK, 1
    learnset MOVE_MEGA_DRAIN, 7
    learnset MOVE_CONFUSE_RAY, 12
    learnset MOVE_RAZOR_LEAF, 17
    learnset MOVE_SCARY_FACE, 21
    learnset MOVE_SHADOW_SNEAK, 26
    learnset MOVE_BULLET_SEED, 31
    learnset MOVE_MYSTICAL_FIRE, 37
    learnset MOVE_SHADOW_BALL, 41
    learnset MOVE_SEED_BOMB, 46
    learnset MOVE_MOONBLAST, 50
    learnset MOVE_EXPLOSION, 55
    terminatelearnset


levelup SPECIES_XERNEAS_ACTIVE
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAKE_DOWN, 1
    learnset MOVE_LIGHT_SCREEN, 5
    learnset MOVE_AURORA_BEAM, 10
    learnset MOVE_GRAVITY, 18
    learnset MOVE_AROMATHERAPY, 25
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_NATURE_POWER, 41
    learnset MOVE_HORN_LEECH, 40
    learnset MOVE_INGRAIN, 45
    learnset MOVE_MOONBLAST, 48
    learnset MOVE_DOUBLE_EDGE, 50
    learnset MOVE_MEGAHORN, 57
    learnset MOVE_HEAL_PULSE, 65
    learnset MOVE_CLOSE_COMBAT, 77
    learnset MOVE_OUTRAGE, 86
    learnset MOVE_GEOMANCY, 100
    terminatelearnset


levelup SPECIES_ZYGARDE_10
    learnset MOVE_BIND, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_GLARE, 1
    learnset MOVE_DIG, 13
    learnset MOVE_SAFEGUARD, 15
    learnset MOVE_BIND, 18
    learnset MOVE_HAZE, 28
    learnset MOVE_LANDS_WRATH, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_GLARE, 56
    learnset MOVE_CAMOUFLAGE, 62
    learnset MOVE_THOUSAND_WAVES, 70
    learnset MOVE_EARTHQUAKE, 77
    learnset MOVE_OUTRAGE, 84
    learnset MOVE_CORE_ENFORCER, 100
    learnset MOVE_THOUSAND_ARROWS, 100
    terminatelearnset


levelup SPECIES_ZYGARDE_10_POWER_CONSTRUCT
    learnset MOVE_BIND, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_GLARE, 1
    learnset MOVE_DIG, 13
    learnset MOVE_SAFEGUARD, 15
    learnset MOVE_BIND, 18
    learnset MOVE_HAZE, 28
    learnset MOVE_LANDS_WRATH, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_GLARE, 56
    learnset MOVE_CAMOUFLAGE, 62
    learnset MOVE_THOUSAND_WAVES, 70
    learnset MOVE_EARTHQUAKE, 77
    learnset MOVE_OUTRAGE, 84
    learnset MOVE_CORE_ENFORCER, 100
    learnset MOVE_THOUSAND_ARROWS, 100
    terminatelearnset


levelup SPECIES_ZYGARDE_50_POWER_CONSTRUCT
    learnset MOVE_BIND, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_GLARE, 1
    learnset MOVE_DIG, 13
    learnset MOVE_SAFEGUARD, 15
    learnset MOVE_BIND, 18
    learnset MOVE_HAZE, 28
    learnset MOVE_LANDS_WRATH, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_GLARE, 56
    learnset MOVE_CAMOUFLAGE, 62
    learnset MOVE_THOUSAND_WAVES, 70
    learnset MOVE_EARTHQUAKE, 77
    learnset MOVE_OUTRAGE, 84
    learnset MOVE_CORE_ENFORCER, 100
    learnset MOVE_THOUSAND_ARROWS, 100
    terminatelearnset


levelup SPECIES_ZYGARDE_10_COMPLETE
    learnset MOVE_BIND, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_GLARE, 1
    learnset MOVE_DIG, 13
    learnset MOVE_SAFEGUARD, 15
    learnset MOVE_BIND, 18
    learnset MOVE_HAZE, 28
    learnset MOVE_LANDS_WRATH, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_GLARE, 56
    learnset MOVE_CAMOUFLAGE, 62
    learnset MOVE_THOUSAND_WAVES, 70
    learnset MOVE_EARTHQUAKE, 77
    learnset MOVE_OUTRAGE, 84
    learnset MOVE_CORE_ENFORCER, 100
    learnset MOVE_THOUSAND_ARROWS, 100
    terminatelearnset


levelup SPECIES_ZYGARDE_50_COMPLETE
    learnset MOVE_BIND, 1
    learnset MOVE_BULLDOZE, 1
    learnset MOVE_BITE, 1
    learnset MOVE_GLARE, 1
    learnset MOVE_DIG, 13
    learnset MOVE_SAFEGUARD, 15
    learnset MOVE_BIND, 18
    learnset MOVE_HAZE, 28
    learnset MOVE_LANDS_WRATH, 37
    learnset MOVE_CRUNCH, 40
    learnset MOVE_DRAGON_PULSE, 50
    learnset MOVE_GLARE, 56
    learnset MOVE_CAMOUFLAGE, 62
    learnset MOVE_THOUSAND_WAVES, 70
    learnset MOVE_EARTHQUAKE, 77
    learnset MOVE_OUTRAGE, 84
    learnset MOVE_CORE_ENFORCER, 100
    learnset MOVE_THOUSAND_ARROWS, 100
    terminatelearnset


levelup SPECIES_HOOPA_UNBOUND
    learnset MOVE_TRICK, 1
    learnset MOVE_ALLY_SWITCH, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_ASTONISH, 6
    learnset MOVE_MAGIC_COAT, 10
    learnset MOVE_LIGHT_SCREEN, 15
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_SKILL_SWAP, 25
    learnset MOVE_PHANTOM_FORCE, 35
    learnset MOVE_ZEN_HEADBUTT, 46
    learnset MOVE_WONDER_ROOM, 50
    learnset MOVE_SHADOW_BALL, 64
    learnset MOVE_PSYCHIC, 75
    learnset MOVE_HYPERSPACE_FURY, 85
    terminatelearnset


levelup SPECIES_ORICORIO_POM_POM
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_PECK, 6
    learnset MOVE_HELPING_HAND, 10
    learnset MOVE_AIR_CUTTER, 13
    learnset MOVE_BATON_PASS, 16
    learnset MOVE_FEATHER_DANCE, 20
    learnset MOVE_TEETER_DANCE, 25
    learnset MOVE_ROOST, 29
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_REVELATION_DANCE, 40
    learnset MOVE_U_TURN, 45
    learnset MOVE_HURRICANE, 50
    terminatelearnset


levelup SPECIES_ORICORIO_PAU
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_PECK, 6
    learnset MOVE_HELPING_HAND, 10
    learnset MOVE_AIR_CUTTER, 13
    learnset MOVE_BATON_PASS, 16
    learnset MOVE_FEATHER_DANCE, 20
    learnset MOVE_TEETER_DANCE, 25
    learnset MOVE_ROOST, 29
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_REVELATION_DANCE, 40
    learnset MOVE_U_TURN, 45
    learnset MOVE_HURRICANE, 50
    terminatelearnset


levelup SPECIES_ORICORIO_SENSU
    learnset MOVE_POUND, 1
    learnset MOVE_GROWL, 4
    learnset MOVE_PECK, 6
    learnset MOVE_HELPING_HAND, 10
    learnset MOVE_AIR_CUTTER, 13
    learnset MOVE_BATON_PASS, 16
    learnset MOVE_FEATHER_DANCE, 20
    learnset MOVE_TEETER_DANCE, 25
    learnset MOVE_ROOST, 29
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_REVELATION_DANCE, 40
    learnset MOVE_U_TURN, 45
    learnset MOVE_HURRICANE, 50
    terminatelearnset


levelup SPECIES_ROCKRUFF_OWN_TEMPO
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ROCK_THROW, 9
    learnset MOVE_BITE, 13
    learnset MOVE_ODOR_SLEUTH, 16
    learnset MOVE_ROCK_TOMB, 20
    learnset MOVE_ROCK_SLIDE, 25
    learnset MOVE_CRUNCH, 29
    learnset MOVE_PSYCHIC_FANGS, 34
    learnset MOVE_PLAY_ROUGH, 37
    learnset MOVE_ROCK_CLIMB, 40
    learnset MOVE_STONE_EDGE, 45
    terminatelearnset


levelup SPECIES_LYCANROC_MIDNIGHT
    learnset MOVE_PLAY_ROUGH, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ROCK_THROW, 9
    learnset MOVE_BITE, 13
    learnset MOVE_ODOR_SLEUTH, 16
    learnset MOVE_ROCK_TOMB, 20
    learnset MOVE_COUNTER, 25
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_CRUNCH, 33
    learnset MOVE_BRICK_BREAK, 38
    learnset MOVE_PLAY_ROUGH, 42
    learnset MOVE_ROCK_CLIMB, 47
    learnset MOVE_STONE_EDGE, 53
    terminatelearnset


levelup SPECIES_LYCANROC_DUSK
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SAND_ATTACK, 4
    learnset MOVE_ROCK_THROW, 9
    learnset MOVE_BITE, 13
    learnset MOVE_ODOR_SLEUTH, 16
    learnset MOVE_ROCK_TOMB, 20
    learnset MOVE_CRUSH_CLAW, 25
    learnset MOVE_ROCK_SLIDE, 29
    learnset MOVE_CRUNCH, 33
    learnset MOVE_ACCELEROCK, 36
    learnset MOVE_PSYCHIC_FANGS, 39
    learnset MOVE_THUNDER_FANG, 41
    learnset MOVE_FIRE_FANG, 41
    learnset MOVE_PLAY_ROUGH, 45
    learnset MOVE_DRILL_RUN, 50
    learnset MOVE_STONE_EDGE, 54
    learnset MOVE_CLOSE_COMBAT, 60
    terminatelearnset


levelup SPECIES_WISHIWASHI_SCHOOL
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_HELPING_HAND, 4
    learnset MOVE_FEINT_ATTACK, 9
    learnset MOVE_BRINE, 12
    learnset MOVE_HEADBUTT, 17
    learnset MOVE_DIVE, 21
    learnset MOVE_TAKE_DOWN, 25
    learnset MOVE_FLIP_TURN, 29
    learnset MOVE_ICE_BEAM, 33
    learnset MOVE_AQUA_TAIL, 36
    learnset MOVE_ENDEAVOR, 40
    learnset MOVE_DOUBLE_EDGE, 45
    learnset MOVE_HYDRO_PUMP, 52
    terminatelearnset


levelup SPECIES_MINIOR_METEOR_ORANGE
    learnset MOVE_METEOR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_SELF_DESTRUCT, 19
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_COSMIC_POWER, 31
    learnset MOVE_EARTH_POWER, 35
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_ANCIENT_POWER, 47
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_METEOR_YELLOW
    learnset MOVE_METEOR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_SELF_DESTRUCT, 19
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_COSMIC_POWER, 31
    learnset MOVE_EARTH_POWER, 35
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_ANCIENT_POWER, 47
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_METEOR_GREEN
    learnset MOVE_METEOR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_SELF_DESTRUCT, 19
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_COSMIC_POWER, 31
    learnset MOVE_EARTH_POWER, 35
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_ANCIENT_POWER, 47
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_METEOR_BLUE
    learnset MOVE_METEOR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_SELF_DESTRUCT, 19
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_COSMIC_POWER, 31
    learnset MOVE_EARTH_POWER, 35
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_ANCIENT_POWER, 47
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_METEOR_INDIGO
    learnset MOVE_METEOR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_SELF_DESTRUCT, 19
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_COSMIC_POWER, 31
    learnset MOVE_EARTH_POWER, 35
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_ANCIENT_POWER, 47
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_METEOR_VIOLET
    learnset MOVE_METEOR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_SELF_DESTRUCT, 19
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_COSMIC_POWER, 31
    learnset MOVE_EARTH_POWER, 35
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_ANCIENT_POWER, 47
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_CORE_RED
    learnset MOVE_METEOR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_SELF_DESTRUCT, 19
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_COSMIC_POWER, 31
    learnset MOVE_EARTH_POWER, 35
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_ANCIENT_POWER, 47
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_CORE_ORANGE
    learnset MOVE_METEOR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_SELF_DESTRUCT, 19
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_COSMIC_POWER, 31
    learnset MOVE_EARTH_POWER, 35
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_ANCIENT_POWER, 47
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_CORE_YELLOW
    learnset MOVE_METEOR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_SELF_DESTRUCT, 19
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_COSMIC_POWER, 31
    learnset MOVE_EARTH_POWER, 35
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_ANCIENT_POWER, 47
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_CORE_GREEN
    learnset MOVE_METEOR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_SELF_DESTRUCT, 19
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_COSMIC_POWER, 31
    learnset MOVE_EARTH_POWER, 35
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_ANCIENT_POWER, 47
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_CORE_BLUE
    learnset MOVE_METEOR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_SELF_DESTRUCT, 19
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_COSMIC_POWER, 31
    learnset MOVE_EARTH_POWER, 35
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_ANCIENT_POWER, 47
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_CORE_INDIGO
    learnset MOVE_METEOR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_SELF_DESTRUCT, 19
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_COSMIC_POWER, 31
    learnset MOVE_EARTH_POWER, 35
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_ANCIENT_POWER, 47
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MINIOR_CORE_VIOLET
    learnset MOVE_METEOR_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_DEFENSE_CURL, 3
    learnset MOVE_ROLLOUT, 8
    learnset MOVE_CONFUSE_RAY, 10
    learnset MOVE_SWIFT, 15
    learnset MOVE_SELF_DESTRUCT, 19
    learnset MOVE_TAKE_DOWN, 24
    learnset MOVE_ROCK_SLIDE, 28
    learnset MOVE_COSMIC_POWER, 31
    learnset MOVE_EARTH_POWER, 35
    learnset MOVE_POWER_GEM, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_EARTHQUAKE, 44
    learnset MOVE_ANCIENT_POWER, 47
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_MIMIKYU_BUSTED
    learnset MOVE_WOOD_HAMMER, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_COPYCAT, 1
    learnset MOVE_SHADOW_SNEAK, 9
    learnset MOVE_BABY_DOLL_EYES, 14
    learnset MOVE_MIMIC, 21
    learnset MOVE_FEINT_ATTACK, 24
    learnset MOVE_CHARM, 26
    learnset MOVE_SLASH, 28
    learnset MOVE_X_SCISSOR, 31
    learnset MOVE_SHADOW_CLAW, 34
    learnset MOVE_PLAY_ROUGH, 38
    learnset MOVE_PHANTOM_FORCE, 45
    terminatelearnset


levelup SPECIES_NECROZMA_DUSK_MANE
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_CONFUSION, 8
    learnset MOVE_MIRROR_SHOT, 12
    learnset MOVE_SLASH, 17
    learnset MOVE_NIGHT_SLASH, 23
    learnset MOVE_STORED_POWER, 27
    learnset MOVE_STEALTH_ROCK, 31
    learnset MOVE_PSYCHO_CUT, 37
    learnset MOVE_ROCK_BLAST, 41
    learnset MOVE_POWER_GEM, 47
    learnset MOVE_PHOTON_GEYSER, 60
    learnset MOVE_PRISMATIC_LASER, 70
    terminatelearnset


levelup SPECIES_NECROZMA_DAWN_WINGS
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_CONFUSION, 8
    learnset MOVE_MIRROR_SHOT, 12
    learnset MOVE_SLASH, 17
    learnset MOVE_NIGHT_SLASH, 23
    learnset MOVE_STORED_POWER, 27
    learnset MOVE_STEALTH_ROCK, 31
    learnset MOVE_PSYCHO_CUT, 37
    learnset MOVE_ROCK_BLAST, 41
    learnset MOVE_POWER_GEM, 47
    learnset MOVE_PHOTON_GEYSER, 60
    learnset MOVE_PRISMATIC_LASER, 70
    terminatelearnset


levelup SPECIES_NECROZMA_ULTRA_DUSK_MANE
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_CONFUSION, 8
    learnset MOVE_MIRROR_SHOT, 12
    learnset MOVE_SLASH, 17
    learnset MOVE_NIGHT_SLASH, 23
    learnset MOVE_STORED_POWER, 27
    learnset MOVE_STEALTH_ROCK, 31
    learnset MOVE_PSYCHO_CUT, 37
    learnset MOVE_ROCK_BLAST, 41
    learnset MOVE_POWER_GEM, 47
    learnset MOVE_PHOTON_GEYSER, 60
    learnset MOVE_PRISMATIC_LASER, 70
    terminatelearnset


levelup SPECIES_NECROZMA_ULTRA_DAWN_WINGS
    learnset MOVE_MOONLIGHT, 1
    learnset MOVE_MORNING_SUN, 1
    learnset MOVE_CHARGE_BEAM, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_CONFUSION, 8
    learnset MOVE_MIRROR_SHOT, 12
    learnset MOVE_SLASH, 17
    learnset MOVE_NIGHT_SLASH, 23
    learnset MOVE_STORED_POWER, 27
    learnset MOVE_STEALTH_ROCK, 31
    learnset MOVE_PSYCHO_CUT, 37
    learnset MOVE_ROCK_BLAST, 41
    learnset MOVE_POWER_GEM, 47
    learnset MOVE_PHOTON_GEYSER, 60
    learnset MOVE_PRISMATIC_LASER, 70
    terminatelearnset


levelup SPECIES_MAGEARNA_ORIGINAL
    learnset MOVE_GYRO_BALL, 1
    learnset MOVE_HELPING_HAND, 1
    learnset MOVE_DEFENSE_CURL, 6
    learnset MOVE_LUCKY_CHANT, 9
    learnset MOVE_ROLLOUT, 12
    learnset MOVE_MIRROR_SHOT, 18
    learnset MOVE_AURORA_BEAM, 23
    learnset MOVE_PSYBEAM, 28
    learnset MOVE_IRON_DEFENSE, 36
    learnset MOVE_PSYCHIC, 43
    learnset MOVE_CRAFTY_SHIELD, 52
    learnset MOVE_FLASH_CANNON, 59
    learnset MOVE_IRON_HEAD, 65
    learnset MOVE_FLEUR_CANNON, 70
    learnset MOVE_AURA_SPHERE, 76
    learnset MOVE_ZAP_CANNON, 80
    terminatelearnset


levelup SPECIES_CRAMORANT_GULPING
    learnset MOVE_BELCH, 1
    learnset MOVE_PECK, 1
    learnset MOVE_STOCKPILE, 1
    learnset MOVE_SWALLOW, 1
    learnset MOVE_SPIT_UP, 1
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_FURY_ATTACK, 14
    learnset MOVE_PLUCK, 21
    learnset MOVE_DIVE, 28
    learnset MOVE_DRILL_PECK, 35
    learnset MOVE_AMNESIA, 42
    learnset MOVE_THRASH, 49
    learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset


levelup SPECIES_CRAMORANT_GORGING
    learnset MOVE_BELCH, 1
    learnset MOVE_PECK, 1
    learnset MOVE_STOCKPILE, 1
    learnset MOVE_SWALLOW, 1
    learnset MOVE_SPIT_UP, 1
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_FURY_ATTACK, 14
    learnset MOVE_PLUCK, 21
    learnset MOVE_DIVE, 28
    learnset MOVE_DRILL_PECK, 35
    learnset MOVE_AMNESIA, 42
    learnset MOVE_THRASH, 49
    learnset MOVE_HYDRO_PUMP, 56
    terminatelearnset


levelup SPECIES_TOXTRICITY_LOW_KEY
    learnset MOVE_SPARK, 1
    learnset MOVE_EERIE_IMPULSE, 1
    learnset MOVE_BELCH, 1
    learnset MOVE_TEARFUL_LOOK, 1
    learnset MOVE_NUZZLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_ACID, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_ACID_SPRAY, 1
    learnset MOVE_LEER, 1
    learnset MOVE_NOBLE_ROAR, 1
    learnset MOVE_CHARGE, 4
    learnset MOVE_SHOCK_WAVE, 8
    learnset MOVE_SCARY_FACE, 12
    learnset MOVE_TAUNT, 16
    learnset MOVE_VENOM_DRENCH, 20
    learnset MOVE_SCREECH, 24
    learnset MOVE_SWAGGER, 28
    learnset MOVE_TOXIC, 32
    learnset MOVE_DISCHARGE, 36
    learnset MOVE_POISON_JAB, 40
    learnset MOVE_OVERDRIVE, 44
    learnset MOVE_BOOMBURST, 48
    learnset MOVE_MAGNETIC_FLUX, 52
    terminatelearnset


levelup SPECIES_SINISTEA_ANTIQUE
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_MEGA_DRAIN, 11
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUCKER_PUNCH, 21
    learnset MOVE_NIGHT_SHADE, 25
    learnset MOVE_GIGA_DRAIN, 31
    learnset MOVE_PSYCHIC, 36
    learnset MOVE_SHADOW_BALL, 39
    learnset MOVE_MEMENTO, 43
    terminatelearnset


levelup SPECIES_POLTEAGEIST_ANTIQUE
    learnset MOVE_STRENGTH_SAP, 1
    learnset MOVE_ASTONISH, 1
    learnset MOVE_ABSORB, 5
    learnset MOVE_MEGA_DRAIN, 11
    learnset MOVE_PSYBEAM, 17
    learnset MOVE_SUCKER_PUNCH, 25
    learnset MOVE_NIGHT_SHADE, 29
    learnset MOVE_GIGA_DRAIN, 35
    learnset MOVE_TEATIME, 38
    learnset MOVE_PSYCHIC, 42
    learnset MOVE_SHADOW_BALL, 46
    learnset MOVE_MEMENTO, 50
    terminatelearnset


levelup SPECIES_ALCREMIE_BERRY_SWEET
    learnset MOVE_MISTY_EXPLOSION, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_DRAINING_KISS, 12
    learnset MOVE_AROMATHERAPY, 14
    learnset MOVE_ATTRACT, 17
    learnset MOVE_RECOVER, 23
    learnset MOVE_DAZZLING_GLEAM, 34
    learnset MOVE_ENTRAINMENT, 37
    learnset MOVE_PSYCHIC, 39
    learnset MOVE_LIGHT_SCREEN, 41
    terminatelearnset


levelup SPECIES_ALCREMIE_LOVE_SWEET
    learnset MOVE_MISTY_EXPLOSION, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_DRAINING_KISS, 12
    learnset MOVE_AROMATHERAPY, 14
    learnset MOVE_ATTRACT, 17
    learnset MOVE_RECOVER, 23
    learnset MOVE_DAZZLING_GLEAM, 34
    learnset MOVE_ENTRAINMENT, 37
    learnset MOVE_PSYCHIC, 39
    learnset MOVE_LIGHT_SCREEN, 41
    terminatelearnset


levelup SPECIES_ALCREMIE_STAR_SWEET
    learnset MOVE_MISTY_EXPLOSION, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_DRAINING_KISS, 12
    learnset MOVE_AROMATHERAPY, 14
    learnset MOVE_ATTRACT, 17
    learnset MOVE_RECOVER, 23
    learnset MOVE_DAZZLING_GLEAM, 34
    learnset MOVE_ENTRAINMENT, 37
    learnset MOVE_PSYCHIC, 39
    learnset MOVE_LIGHT_SCREEN, 41
    terminatelearnset


levelup SPECIES_ALCREMIE_CLOVER_SWEET
    learnset MOVE_MISTY_EXPLOSION, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_DRAINING_KISS, 12
    learnset MOVE_AROMATHERAPY, 14
    learnset MOVE_ATTRACT, 17
    learnset MOVE_RECOVER, 23
    learnset MOVE_DAZZLING_GLEAM, 34
    learnset MOVE_ENTRAINMENT, 37
    learnset MOVE_PSYCHIC, 39
    learnset MOVE_LIGHT_SCREEN, 41
    terminatelearnset


levelup SPECIES_ALCREMIE_FLOWER_SWEET
    learnset MOVE_MISTY_EXPLOSION, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_DRAINING_KISS, 12
    learnset MOVE_AROMATHERAPY, 14
    learnset MOVE_ATTRACT, 17
    learnset MOVE_RECOVER, 23
    learnset MOVE_DAZZLING_GLEAM, 34
    learnset MOVE_ENTRAINMENT, 37
    learnset MOVE_PSYCHIC, 39
    learnset MOVE_LIGHT_SCREEN, 41
    terminatelearnset


levelup SPECIES_ALCREMIE_RIBBON_SWEET
    learnset MOVE_MISTY_EXPLOSION, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_DRAINING_KISS, 12
    learnset MOVE_AROMATHERAPY, 14
    learnset MOVE_ATTRACT, 17
    learnset MOVE_RECOVER, 23
    learnset MOVE_DAZZLING_GLEAM, 34
    learnset MOVE_ENTRAINMENT, 37
    learnset MOVE_PSYCHIC, 39
    learnset MOVE_LIGHT_SCREEN, 41
    terminatelearnset


levelup SPECIES_ALCREMIE_FILLER_1
    learnset MOVE_MISTY_EXPLOSION, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_DRAINING_KISS, 12
    learnset MOVE_AROMATHERAPY, 14
    learnset MOVE_ATTRACT, 17
    learnset MOVE_RECOVER, 23
    learnset MOVE_DAZZLING_GLEAM, 34
    learnset MOVE_ENTRAINMENT, 37
    learnset MOVE_PSYCHIC, 39
    learnset MOVE_LIGHT_SCREEN, 41
    terminatelearnset


levelup SPECIES_ALCREMIE_FILLER_2
    learnset MOVE_MISTY_EXPLOSION, 1
    learnset MOVE_ENCORE, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_AROMATIC_MIST, 1
    learnset MOVE_SWEET_KISS, 5
    learnset MOVE_DRAINING_KISS, 12
    learnset MOVE_AROMATHERAPY, 14
    learnset MOVE_ATTRACT, 17
    learnset MOVE_RECOVER, 23
    learnset MOVE_DAZZLING_GLEAM, 34
    learnset MOVE_ENTRAINMENT, 37
    learnset MOVE_PSYCHIC, 39
    learnset MOVE_LIGHT_SCREEN, 41
    terminatelearnset


levelup SPECIES_EISCUE_NOICE_FACE
    learnset MOVE_POWDER_SNOW, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_MIST, 6
    learnset MOVE_WEATHER_BALL, 12
    learnset MOVE_ICY_WIND, 18
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_ICE_BEAM, 30
    learnset MOVE_SURF, 34
    learnset MOVE_IRON_HEAD, 38
    learnset MOVE_FREEZE_DRY, 42
    learnset MOVE_ICICLE_CRASH, 46
    terminatelearnset


levelup SPECIES_MORPEKO_HANGRY
    learnset MOVE_FIRE_FANG, 1
    learnset MOVE_ICE_FANG, 1
    learnset MOVE_KNOCK_OFF, 1
    learnset MOVE_THUNDER_SHOCK, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_POWER_TRIP, 6
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_SHOCK_WAVE, 15
    learnset MOVE_BITE, 19
    learnset MOVE_SPARK, 22
    learnset MOVE_BULLET_SEED, 26
    learnset MOVE_FAKE_OUT, 30
    learnset MOVE_CRUNCH, 34
    learnset MOVE_PSYCHIC_FANGS, 39
    learnset MOVE_AURA_WHEEL, 47
    terminatelearnset


levelup SPECIES_ZACIAN_CROWNED
    learnset MOVE_SACRED_SWORD, 1
    learnset MOVE_QUICK_GUARD, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SLASH, 11
    learnset MOVE_IRON_HEAD, 25
    learnset MOVE_CRUNCH, 40
    learnset MOVE_MOONBLAST, 55
    learnset MOVE_CLOSE_COMBAT, 77
    learnset MOVE_GIGA_IMPACT, 88
    learnset MOVE_BEHEMOTH_BLADE, 99
    terminatelearnset


levelup SPECIES_ZAMAZENTA_CROWNED
    learnset MOVE_PROTECT, 1
    learnset MOVE_QUICK_GUARD, 1
    learnset MOVE_METAL_CLAW, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_BITE, 1
    learnset MOVE_SLASH, 11
    learnset MOVE_IRON_HEAD, 25
    learnset MOVE_CRUNCH, 40
    learnset MOVE_MOONBLAST, 55
    learnset MOVE_CLOSE_COMBAT, 77
    learnset MOVE_GIGA_IMPACT, 88
    learnset MOVE_BEHEMOTH_BASH, 99
    terminatelearnset


levelup SPECIES_ETERNATUS_ETERNAMAX
    learnset MOVE_POISON_TAIL, 1
    learnset MOVE_CONFUSE_RAY, 1
    learnset MOVE_DRAGON_TAIL, 1
    learnset MOVE_TOXIC, 8
    learnset MOVE_VENOSHOCK, 16
    learnset MOVE_CROSS_POISON, 32
    learnset MOVE_DRAGON_PULSE, 40
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_DYNAMAX_CANNON, 56
    learnset MOVE_RECOVER, 67
    learnset MOVE_HYPER_BEAM, 75
    learnset MOVE_ETERNABEAM, 90
    terminatelearnset


levelup SPECIES_URSHIFU_RAPID_STRIKE
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FOCUS_ENERGY, 8
    learnset MOVE_AERIAL_ACE, 12
    learnset MOVE_SCARY_FACE, 16
    learnset MOVE_HEADBUTT, 20
    learnset MOVE_BRICK_BREAK, 24
    learnset MOVE_IRON_HEAD, 35
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_CLOSE_COMBAT, 50
    learnset MOVE_AQUA_JET, 62
    learnset MOVE_LIQUIDATION, 73
    learnset MOVE_SURGING_STRIKES, 80
    terminatelearnset


levelup SPECIES_ZARUDE_DADA
    learnset MOVE_BIND, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 6
    learnset MOVE_VINE_WHIP, 12
    learnset MOVE_FURY_SWIPES, 18
    learnset MOVE_GRASS_KNOT, 30
    learnset MOVE_BITE, 34
    learnset MOVE_U_TURN, 38
    learnset MOVE_ENERGY_BALL, 50
    learnset MOVE_SYNTHESIS, 57
    learnset MOVE_CRUNCH, 62
    learnset MOVE_HAMMER_ARM, 66
    learnset MOVE_POWER_WHIP, 71
    learnset MOVE_JUNGLE_HEALING, 80
    terminatelearnset


levelup SPECIES_CALYREX_ICE_RIDER
    learnset MOVE_POUND, 1
    learnset MOVE_MEGA_DRAIN, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_LIFE_DEW, 8
    learnset MOVE_GIGA_DRAIN, 16
    learnset MOVE_PSYSHOCK, 24
    learnset MOVE_AVALANCHE, 27
    learnset MOVE_HELPING_HAND, 32
    learnset MOVE_AROMATHERAPY, 40
    learnset MOVE_ENERGY_BALL, 48
    learnset MOVE_ICICLE_CRASH, 52
    learnset MOVE_PSYCHIC, 56
    learnset MOVE_SOLAR_BEAM, 64
    learnset MOVE_FUTURE_SIGHT, 72
    learnset MOVE_GLACIAL_LANCE, 90
    terminatelearnset


levelup SPECIES_CALYREX_SHADOW_RIDER
    learnset MOVE_POUND, 1
    learnset MOVE_MEGA_DRAIN, 1
    learnset MOVE_CONFUSION, 1
    learnset MOVE_LIFE_DEW, 8
    learnset MOVE_GIGA_DRAIN, 16
    learnset MOVE_PSYSHOCK, 24
    learnset MOVE_HEX, 27
    learnset MOVE_HELPING_HAND, 32
    learnset MOVE_AROMATHERAPY, 40
    learnset MOVE_ENERGY_BALL, 48
    learnset MOVE_SHADOW_BALL, 52
    learnset MOVE_PSYCHIC, 56
    learnset MOVE_SOLAR_BEAM, 64
    learnset MOVE_FUTURE_SIGHT, 72
    learnset MOVE_ASTRAL_BARRAGE, 90
    terminatelearnset


levelup SPECIES_ENAMORUS_THERIAN
    learnset MOVE_SAND_TOMB, 1
    learnset MOVE_ROCK_THROW, 1
    learnset MOVE_LEER, 5
    learnset MOVE_BLOCK, 10
    learnset MOVE_BULLDOZE, 15
    learnset MOVE_ROCK_TOMB, 20
    learnset MOVE_SWORDS_DANCE, 25
    learnset MOVE_IMPRISON, 30
    learnset MOVE_ROCK_SLIDE, 35
    learnset MOVE_EARTH_POWER, 40
    learnset MOVE_EXTRASENSORY, 45
    learnset MOVE_STONE_EDGE, 50
    learnset MOVE_HAMMER_ARM, 55
    learnset MOVE_SANDSTORM, 60
    learnset MOVE_EARTHQUAKE, 65
    learnset MOVE_OUTRAGE, 70
    learnset MOVE_FISSURE, 75
    terminatelearnset


levelup SPECIES_GROWLITHE_HISUIAN
    learnset MOVE_EMBER, 1
    learnset MOVE_LEER, 1
    learnset MOVE_ROAR, 4
    learnset MOVE_BITE, 5
    learnset MOVE_FLAME_WHEEL, 10
    learnset MOVE_QUICK_ATTACK, 14
    learnset MOVE_FIRE_FANG, 19
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_CRUNCH, 29
    learnset MOVE_FLAMETHROWER, 34
    learnset MOVE_ROCK_SLIDE, 38
    learnset MOVE_PSYCHIC_FANGS, 41
    learnset MOVE_WILD_CHARGE, 44
    learnset MOVE_HEAT_WAVE, 48
    terminatelearnset


levelup SPECIES_ARCANINE_HISUIAN
    learnset MOVE_ROCK_SLIDE, 0
    learnset MOVE_HEAD_SMASH, 1
    learnset MOVE_REVERSAL, 1
    learnset MOVE_FLARE_BLITZ, 1
    learnset MOVE_BITE, 1
    learnset MOVE_BODY_SLAM, 35
    learnset MOVE_FLAMETHROWER, 38
    learnset MOVE_WILD_CHARGE, 40
    learnset MOVE_CRUNCH, 42
    learnset MOVE_EXTREME_SPEED, 46
    learnset MOVE_HEAT_WAVE, 49
    learnset MOVE_CLOSE_COMBAT, 52
    terminatelearnset


levelup SPECIES_VOLTORB_HISUIAN
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_SONIC_BOOM, 5
    learnset MOVE_BULLET_SEED, 9
    learnset MOVE_ROLLOUT, 11
    learnset MOVE_CHARGE_BEAM, 16
    learnset MOVE_SWIFT, 20
    learnset MOVE_ELECTRO_BALL, 23
    learnset MOVE_SELF_DESTRUCT, 26
    learnset MOVE_GIGA_DRAIN, 30
    learnset MOVE_EXPLOSION, 34
    learnset MOVE_TRI_ATTACK, 37
    learnset MOVE_THUNDERBOLT, 40
    learnset MOVE_THUNDER, 44
    terminatelearnset


levelup SPECIES_ELECTRODE_HISUIAN
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_THUNDER_SHOCK, 4
    learnset MOVE_SONIC_BOOM, 5
    learnset MOVE_BULLET_SEED, 9
    learnset MOVE_ROLLOUT, 11
    learnset MOVE_CHARGE_BEAM, 16
    learnset MOVE_SWIFT, 20
    learnset MOVE_ELECTRO_BALL, 23
    learnset MOVE_SELF_DESTRUCT, 29
    learnset MOVE_GIGA_DRAIN, 33
    learnset MOVE_EXPLOSION, 37
    learnset MOVE_TRI_ATTACK, 40
    learnset MOVE_THUNDERBOLT, 43
    learnset MOVE_THUNDER, 49
    terminatelearnset

levelup SPECIES_TYPHLOSION_HISUIAN
    learnset MOVE_ERUPTION, 1
    learnset MOVE_DOUBLE_EDGE, 1
    learnset MOVE_GYRO_BALL, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_SMOKESCREEN, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_SMOKESCREEN, 6
    learnset MOVE_EMBER, 10
    learnset MOVE_QUICK_ATTACK, 13
    learnset MOVE_FLAME_WHEEL, 20
    learnset MOVE_DEFENSE_CURL, 24
    learnset MOVE_SWIFT, 31
    learnset MOVE_HEX, 35
    learnset MOVE_SHADOW_BALL, 43
    learnset MOVE_FLAMETHROWER, 48
    learnset MOVE_INFERNO, 56
    learnset MOVE_ROLLOUT, 61
    learnset MOVE_DOUBLE_EDGE, 69
    learnset MOVE_BURN_UP, 74
    learnset MOVE_ERUPTION, 82
    terminatelearnset


levelup SPECIES_QWILFISH_HISUIAN
    learnset MOVE_SPIKES, 1
    learnset MOVE_POISON_STING, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_PIN_MISSILE, 1
    learnset MOVE_BITE, 10
    learnset MOVE_HEADBUTT, 16
    learnset MOVE_SLUDGE_BOMB, 23
    learnset MOVE_AQUA_JET, 27
    learnset MOVE_SELF_DESTRUCT, 30
    learnset MOVE_WATERFALL, 33
    learnset MOVE_POISON_JAB, 36
    learnset MOVE_TOXIC, 40
    learnset MOVE_CRUNCH, 44
    learnset MOVE_GUNK_SHOT, 48
    learnset MOVE_EXPLOSION, 50
    terminatelearnset


levelup SPECIES_SNEASEL_HISUIAN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_ROCK_SMASH, 1
    learnset MOVE_METAL_CLAW, 7
    learnset MOVE_QUICK_ATTACK, 10
    learnset MOVE_FEINT_ATTACK, 14
    learnset MOVE_MACH_PUNCH, 19
    learnset MOVE_BODY_SLAM, 23
    learnset MOVE_BRICK_BREAK, 25
    learnset MOVE_POISON_JAB, 29
    learnset MOVE_FAKE_OUT, 31
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_SHADOW_CLAW, 38
    learnset MOVE_X_SCISSOR, 41
    learnset MOVE_CLOSE_COMBAT, 45
    terminatelearnset


levelup SPECIES_SAMUROTT_HISUIAN
    learnset MOVE_SLASH, 1
    learnset MOVE_MEGAHORN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_WATER_SPORT, 1
    learnset MOVE_TAIL_WHIP, 5
    learnset MOVE_WATER_GUN, 7
    learnset MOVE_WATER_SPORT, 11
    learnset MOVE_FOCUS_ENERGY, 13
    learnset MOVE_RAZOR_SHELL, 18
    learnset MOVE_FURY_CUTTER, 21
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_REVENGE, 29
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_ENCORE, 39
    learnset MOVE_AQUA_TAIL, 46
    learnset MOVE_DARK_PULSE, 51
    learnset MOVE_SWORDS_DANCE, 58
    learnset MOVE_HYDRO_PUMP, 63
    terminatelearnset


levelup SPECIES_LILLIGANT_HISUIAN
    learnset MOVE_POWER_WHIP, 1
    learnset MOVE_CLOSE_COMBAT, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_LOW_KICK, 1
    learnset MOVE_RAZOR_LEAF, 12
    learnset MOVE_STUN_SPORE, 15
    learnset MOVE_SLEEP_POWDER, 16
    learnset MOVE_MAGICAL_LEAF, 20
    learnset MOVE_BRICK_BREAK, 24
    learnset MOVE_GIGA_DRAIN, 28
    learnset MOVE_TEETER_DANCE, 30
    learnset MOVE_JUMP_KICK, 34
    learnset MOVE_MEGA_KICK, 37
    learnset MOVE_LEAF_BLADE, 41
    learnset MOVE_SOLAR_BLADE, 44
    learnset MOVE_AXE_KICK, 49
    terminatelearnset


levelup SPECIES_ZORUA_HISUIAN
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PURSUIT, 5
    learnset MOVE_SWIFT, 11
    learnset MOVE_SHADOW_SNEAK, 17
    learnset MOVE_SCARY_FACE, 18
    learnset MOVE_FAKE_TEARS, 19
    learnset MOVE_TAUNT, 22
    learnset MOVE_BODY_SLAM, 25
    learnset MOVE_SHADOW_BALL, 30
    learnset MOVE_HYPER_VOICE, 34
    learnset MOVE_IMPRISON, 37
    learnset MOVE_PHANTOM_FORCE, 41
    learnset MOVE_BITTER_MALICE, 50
    terminatelearnset


levelup SPECIES_ZOROARK_HISUIAN
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_U_TURN, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_PURSUIT, 5
    learnset MOVE_SWIFT, 11
    learnset MOVE_SHADOW_SNEAK, 17
    learnset MOVE_SCARY_FACE, 19
    learnset MOVE_FAKE_TEARS, 23
    learnset MOVE_TAUNT, 26
    learnset MOVE_EXTRASENSORY, 30
    learnset MOVE_BODY_SLAM, 34
    learnset MOVE_SHADOW_BALL, 38
    learnset MOVE_HYPER_VOICE, 45
    learnset MOVE_IMPRISON, 50
    learnset MOVE_PHANTOM_FORCE, 58
    learnset MOVE_BITTER_MALICE, 66
    terminatelearnset


levelup SPECIES_BRAVIARY_HISUIAN
    learnset MOVE_ACROBATICS, 1
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_PECK, 1
    learnset MOVE_LEER, 1
    learnset MOVE_FURY_ATTACK, 5
    learnset MOVE_WING_ATTACK, 11
    learnset MOVE_ROCK_SMASH, 14
    learnset MOVE_SCARY_FACE, 17
    learnset MOVE_AERIAL_ACE, 23
    learnset MOVE_SLASH, 26
    learnset MOVE_ROOST, 31
    learnset MOVE_SUPERPOWER, 40
    learnset MOVE_EXTRASENSORY, 44
    learnset MOVE_DUAL_WINGBEAT, 49
    learnset MOVE_AIR_SLASH, 53
    learnset MOVE_ROCK_SLIDE, 56
    learnset MOVE_HYPER_VOICE, 63
    learnset MOVE_HURRICANE, 69
    learnset MOVE_ESPER_WING, 75
    terminatelearnset


levelup SPECIES_SLIGGOO_HISUIAN
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_PROTECT, 12
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_FLAIL, 20
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_ACID_SPRAY, 30
    learnset MOVE_MUD_SHOT, 33
    learnset MOVE_IRON_HEAD, 38
    learnset MOVE_ROCK_SLIDE, 44
    learnset MOVE_MUDDY_WATER, 50
    learnset MOVE_DRAGON_PULSE, 52
    terminatelearnset


levelup SPECIES_GOODRA_HISUIAN
    learnset MOVE_FOCUS_BLAST, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_BUBBLE, 1
    learnset MOVE_WATER_GUN, 8
    learnset MOVE_PROTECT, 12
    learnset MOVE_DRAGON_BREATH, 16
    learnset MOVE_FLAIL, 20
    learnset MOVE_WATER_PULSE, 25
    learnset MOVE_ACID_SPRAY, 30
    learnset MOVE_MUD_SHOT, 33
    learnset MOVE_BODY_SLAM, 38
    learnset MOVE_ROCK_SLIDE, 45
    learnset MOVE_IRON_TAIL, 50
    learnset MOVE_HEAVY_SLAM, 57
    learnset MOVE_MUDDY_WATER, 66
    learnset MOVE_DRAGON_PULSE, 71
    terminatelearnset


levelup SPECIES_AVALUGG_HISUIAN
    learnset MOVE_MIRROR_COAT, 1
    learnset MOVE_RAPID_SPIN, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_POWDER_SNOW, 5
    learnset MOVE_ICY_WIND, 11
    learnset MOVE_PROTECT, 15
    learnset MOVE_BITE, 20
    learnset MOVE_ICE_FANG, 24
    learnset MOVE_ROCK_SLIDE, 27
    learnset MOVE_AVALANCHE, 31
    learnset MOVE_ICE_BALL, 33
    learnset MOVE_HEAVY_SLAM, 40
    learnset MOVE_CRUNCH, 43
    learnset MOVE_RECOVER, 46
    learnset MOVE_ICICLE_CRASH, 50
    learnset MOVE_STONE_EDGE, 54
    terminatelearnset


levelup SPECIES_DECIDUEYE_HISUIAN
    learnset MOVE_LEAF_STORM, 1
    learnset MOVE_FRENZY_PLANT, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEAFAGE, 1
    learnset MOVE_ASTONISH, 6
    learnset MOVE_PECK, 11
    learnset MOVE_SHADOW_SNEAK, 16
    learnset MOVE_RAZOR_LEAF, 21
    learnset MOVE_WING_ATTACK, 24
    learnset MOVE_FORESIGHT, 27
    learnset MOVE_SYNTHESIS, 29
    learnset MOVE_KNOCK_OFF, 32
    learnset MOVE_AIR_SLASH, 36
    learnset MOVE_SUCKER_PUNCH, 40
    learnset MOVE_FEATHER_DANCE, 43
    learnset MOVE_LEAF_BLADE, 47
    learnset MOVE_TRIPLE_ARROWS, 51
    learnset MOVE_BRAVE_BIRD, 57
    terminatelearnset


levelup SPECIES_UNFEZANT_FEMALE
    learnset MOVE_HEAT_WAVE, 1
    learnset MOVE_WISH, 1
    learnset MOVE_GUST, 1
    learnset MOVE_GROWL, 1
    learnset MOVE_LEER, 5
    learnset MOVE_QUICK_ATTACK, 9
    learnset MOVE_WING_ATTACK, 14
    learnset MOVE_HYPNOSIS, 20
    learnset MOVE_ROOST, 26
    learnset MOVE_DUAL_WINGBEAT, 30
    learnset MOVE_NIGHT_SLASH, 34
    learnset MOVE_BODY_SLAM, 37
    learnset MOVE_AIR_SLASH, 42
    learnset MOVE_TAILWIND, 46
    learnset MOVE_FACADE, 51
    learnset MOVE_BRAVE_BIRD, 57
    terminatelearnset


levelup SPECIES_FRILLISH_FEMALE
    learnset MOVE_ABSORB, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_NIGHT_SHADE, 8
    learnset MOVE_WATER_PULSE, 13
    learnset MOVE_RECOVER, 19
    learnset MOVE_BRINE, 24
    learnset MOVE_AURORA_BEAM, 27
    learnset MOVE_HEX, 32
    learnset MOVE_SCALD, 35
    learnset MOVE_SHADOW_BALL, 39
    learnset MOVE_ICE_BEAM, 43
    learnset MOVE_WILL_O_WISP, 46
    terminatelearnset


levelup SPECIES_JELLICENT_FEMALE
    learnset MOVE_WATER_SPOUT, 1
    learnset MOVE_ABSORB, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_NIGHT_SHADE, 8
    learnset MOVE_WATER_PULSE, 16
    learnset MOVE_RECOVER, 24
    learnset MOVE_BRINE, 27
    learnset MOVE_AURORA_BEAM, 31
    learnset MOVE_HEX, 34
    learnset MOVE_SCALD, 38
    learnset MOVE_SURF, 42
    learnset MOVE_SHADOW_BALL, 46
    learnset MOVE_ICE_BEAM, 51
    learnset MOVE_WILL_O_WISP, 55
    terminatelearnset


levelup SPECIES_PYROAR_FEMALE
    learnset MOVE_HYPER_BEAM, 1
    learnset MOVE_TACKLE, 1
    learnset MOVE_LEER, 1
    learnset MOVE_EMBER, 1
    learnset MOVE_WORK_UP, 1
    learnset MOVE_EMBER, 5
    learnset MOVE_WORK_UP, 8
    learnset MOVE_HEADBUTT, 11
    learnset MOVE_NOBLE_ROAR, 15
    learnset MOVE_TAKE_DOWN, 20
    learnset MOVE_FIRE_FANG, 23
    learnset MOVE_ENDEAVOR, 28
    learnset MOVE_ECHOED_VOICE, 33
    learnset MOVE_FLAMETHROWER, 38
    learnset MOVE_CRUNCH, 42
    learnset MOVE_HYPER_VOICE, 48
    learnset MOVE_INCINERATE, 51
    learnset MOVE_OVERHEAT, 57
    terminatelearnset


levelup SPECIES_MEOWSTIC_FEMALE
    learnset MOVE_SKILL_SWAP, 1
    learnset MOVE_DAZZLING_GLEAM, 1
    learnset MOVE_SCRATCH, 1
    learnset MOVE_LEER, 1
    learnset MOVE_CONFUSION, 9
    learnset MOVE_FAKE_OUT, 10
    learnset MOVE_MAGICAL_LEAF, 14
    learnset MOVE_DISARMING_VOICE, 16
    learnset MOVE_PSYBEAM, 19
    learnset MOVE_SWIFT, 22
    learnset MOVE_FAKE_OUT, 25
    learnset MOVE_PSYSHOCK, 29
    learnset MOVE_SHADOW_BALL, 34
    learnset MOVE_LIGHT_SCREEN, 36
    learnset MOVE_REFLECT, 36
    learnset MOVE_HYPER_VOICE, 40
    learnset MOVE_PSYCHIC, 44
    terminatelearnset


levelup SPECIES_INDEEDEE_FEMALE
    learnset MOVE_STORED_POWER, 1
    learnset MOVE_PLAY_NICE, 1
    learnset MOVE_BATON_PASS, 5
    learnset MOVE_DISARMING_VOICE, 10
    learnset MOVE_PSYBEAM, 15
    learnset MOVE_HELPING_HAND, 20
    learnset MOVE_FOLLOW_ME, 25
    learnset MOVE_AROMATHERAPY, 30
    learnset MOVE_PSYCHIC, 35
    learnset MOVE_CALM_MIND, 40
    learnset MOVE_GUARD_SPLIT, 45
    learnset MOVE_PSYCHIC_TERRAIN, 50
    learnset MOVE_HEALING_WISH, 55
    terminatelearnset


levelup SPECIES_BASCULEGION_FEMALE
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_TACKLE, 4
    learnset MOVE_FLAIL, 8
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_BITE, 16
    learnset MOVE_SCARY_FACE, 20
    learnset MOVE_HEADBUTT, 24
    learnset MOVE_SOAK, 28
    learnset MOVE_CRUNCH, 32
    learnset MOVE_TAKE_DOWN, 36
    learnset MOVE_FINAL_GAMBIT, 40
    learnset MOVE_AQUA_TAIL, 44
    learnset MOVE_THRASH, 48
    learnset MOVE_DOUBLE_EDGE, 52
    learnset MOVE_HEAD_SMASH, 56
    terminatelearnset

levelup SPECIES_MAUSHOLD_FAMILY_OF_THREE
    learnset MOVE_BABY_DOLL_EYES, 1
    learnset MOVE_POUND, 1
    learnset MOVE_ECHOED_VOICE, 5
    learnset MOVE_HELPING_HAND, 8
    learnset MOVE_SUPER_FANG, 11
    learnset MOVE_DOUBLE_HIT, 14
    learnset MOVE_BULLET_SEED, 18
    learnset MOVE_ENCORE, 22
    learnset MOVE_PLAY_ROUGH, 25
    learnset MOVE_HYPER_VOICE, 29
    learnset MOVE_CHARM, 32
    learnset MOVE_BEAT_UP, 41
    learnset MOVE_FOLLOW_ME, 45
    learnset MOVE_U_TURN, 49
    learnset MOVE_POPULATION_BOMB, 55
    terminatelearnset

levelup SPECIES_SQUAWKABILLY_BLUE_PLUMAGE
    learnset MOVE_GROWL, 1
    learnset MOVE_MIMIC, 1
    learnset MOVE_PECK, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_TORMENT, 10
    learnset MOVE_AERIAL_ACE, 13
    learnset MOVE_HEADBUTT, 17
    learnset MOVE_TAUNT, 20
    learnset MOVE_UPROAR, 24
    learnset MOVE_FLY, 28
    learnset MOVE_FACADE, 31
    learnset MOVE_U_TURN, 35
    learnset MOVE_BRAVE_BIRD, 42
    learnset MOVE_ROOST, 45
    learnset MOVE_REVERSAL, 49
    terminatelearnset

levelup SPECIES_SQUAWKABILLY_YELLOW_PLUMAGE
    learnset MOVE_GROWL, 1
    learnset MOVE_MIMIC, 1
    learnset MOVE_PECK, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_TORMENT, 10
    learnset MOVE_AERIAL_ACE, 13
    learnset MOVE_HEADBUTT, 17
    learnset MOVE_TAUNT, 20
    learnset MOVE_UPROAR, 24
    learnset MOVE_FLY, 28
    learnset MOVE_FACADE, 31
    learnset MOVE_U_TURN, 35
    learnset MOVE_BRAVE_BIRD, 42
    learnset MOVE_ROOST, 45
    learnset MOVE_REVERSAL, 49
    terminatelearnset

levelup SPECIES_SQUAWKABILLY_WHITE_PLUMAGE
    learnset MOVE_GROWL, 1
    learnset MOVE_MIMIC, 1
    learnset MOVE_PECK, 1
    learnset MOVE_QUICK_ATTACK, 6
    learnset MOVE_TORMENT, 10
    learnset MOVE_AERIAL_ACE, 13
    learnset MOVE_HEADBUTT, 17
    learnset MOVE_TAUNT, 20
    learnset MOVE_UPROAR, 24
    learnset MOVE_FLY, 28
    learnset MOVE_FACADE, 31
    learnset MOVE_U_TURN, 35
    learnset MOVE_BRAVE_BIRD, 42
    learnset MOVE_ROOST, 45
    learnset MOVE_REVERSAL, 49
    terminatelearnset

levelup SPECIES_PALAFIN_HERO
    learnset MOVE_DRAIN_PUNCH, 1
    learnset MOVE_SUPERSONIC, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_ASTONISH, 7
    learnset MOVE_AQUA_JET, 12
    learnset MOVE_DOUBLE_HIT, 17
    learnset MOVE_DIVE, 21
    learnset MOVE_ACROBATICS, 34
    learnset MOVE_FLIP_TURN, 38
    learnset MOVE_ENCORE, 44
    learnset MOVE_ICE_BEAM, 54
    learnset MOVE_HYDRO_PUMP, 59
    learnset MOVE_AQUA_TAIL, 63
    learnset MOVE_CLOSE_COMBAT, 72
    learnset MOVE_WAVE_CRASH, 80
    terminatelearnset

levelup SPECIES_TATSUGIRI_DROOPY
    learnset MOVE_SPLASH, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HARDEN, 6
    learnset MOVE_HELPING_HAND, 12
    learnset MOVE_WATER_PULSE, 17
    learnset MOVE_SOAK, 23
    learnset MOVE_DRAGON_BREATH, 26
    learnset MOVE_SCALD, 31
    learnset MOVE_ICY_WIND, 35
    learnset MOVE_MUDDY_WATER, 40
    learnset MOVE_MIRROR_COAT, 43
    learnset MOVE_DRAGON_PULSE, 47
    terminatelearnset

levelup SPECIES_TATSUGIRI_STRETCHY
    learnset MOVE_SPLASH, 1
    learnset MOVE_WATER_GUN, 1
    learnset MOVE_HARDEN, 6
    learnset MOVE_HELPING_HAND, 12
    learnset MOVE_WATER_PULSE, 17
    learnset MOVE_SOAK, 23
    learnset MOVE_DRAGON_BREATH, 26
    learnset MOVE_SCALD, 31
    learnset MOVE_ICY_WIND, 35
    learnset MOVE_MUDDY_WATER, 40
    learnset MOVE_MIRROR_COAT, 43
    learnset MOVE_DRAGON_PULSE, 47
    terminatelearnset

levelup SPECIES_DUDUNSPARCE_THREE_SEGMENT
    learnset MOVE_STONE_EDGE, 1
    learnset MOVE_EARTHQUAKE, 1
    learnset MOVE_FLAIL, 1
    learnset MOVE_RAGE, 1
    learnset MOVE_ROLLOUT, 5
    learnset MOVE_MUD_SLAP, 8
    learnset MOVE_PURSUIT, 10
    learnset MOVE_HEADBUTT, 15
    learnset MOVE_ANCIENT_POWER, 19
    learnset MOVE_YAWN, 22
    learnset MOVE_GLARE, 24
    learnset MOVE_DRILL_RUN, 26
    learnset MOVE_BODY_SLAM, 28
    learnset MOVE_ROCK_SLIDE, 32
    learnset MOVE_HYPER_DRILL, 40
    learnset MOVE_WILD_CHARGE, 42
    learnset MOVE_ZEN_HEADBUTT, 45
    learnset MOVE_AIR_SLASH, 49
    learnset MOVE_DRAGON_RUSH, 51
    learnset MOVE_DOUBLE_EDGE, 54
    terminatelearnset

levelup SPECIES_GIMMIGHOUL_ROAMING
    learnset MOVE_ASTONISH, 1
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_TERAPAGOS_TERASTAL
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_WOOPER_PALDEAN
    learnset MOVE_SMOG, 1
    learnset MOVE_MUD_SLAP, 1
    learnset MOVE_MUD_SHOT, 7
    learnset MOVE_SLUDGE, 12
    learnset MOVE_SLAM, 15
    learnset MOVE_MUD_BOMB, 18
    learnset MOVE_YAWN, 22
    learnset MOVE_SLUDGE_BOMB, 25
    learnset MOVE_EARTH_POWER, 30
    learnset MOVE_SLUDGE_WAVE, 36
    learnset MOVE_TOXIC, 38
    learnset MOVE_ANCIENT_POWER, 41
    learnset MOVE_EARTHQUAKE, 43
    terminatelearnset

levelup SPECIES_TAUROS_COMBAT
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_TAUROS_BLAZE
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_TAUROS_AQUA
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_OINKOLOGNE_FEMALE
    learnset MOVE_TACKLE, 1	
    learnset MOVE_TAIL_WHIP, 1
    learnset MOVE_DISARMING_VOICE, 5
    learnset MOVE_ECHOED_VOICE, 8
    learnset MOVE_MUD_SHOT, 12
    learnset MOVE_COVET, 15
    learnset MOVE_HEADBUTT, 18
    learnset MOVE_DIG, 22
    learnset MOVE_YAWN, 25
    learnset MOVE_BODY_SLAM, 27
    learnset MOVE_BULLDOZE, 29
    learnset MOVE_PLAY_ROUGH, 32
    learnset MOVE_IRON_HEAD, 35
    learnset MOVE_EARTH_POWER, 38
    learnset MOVE_DOUBLE_EDGE, 41
    learnset MOVE_BELCH, 46
    terminatelearnset

levelup SPECIES_REVAVROOM_SEGIN
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_REVAVROOM_SCHEDAR
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_REVAVROOM_NAVI
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_REVAVROOM_RUCHBAH
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_REVAVROOM_CAPH
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_POLTCHAGEIST_MASTERPIECE
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_SINISTCHA_MASTERPIECE
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_OGERPON_WELLSPRING_MASK
    learnset MOVE_FOLLOW_ME, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FOCUS_ENERGY, 6
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_SLAM, 18
    learnset MOVE_LOW_SWEEP, 24
    learnset MOVE_THROAT_CHOP, 30
    learnset MOVE_SYNTHESIS, 36
    learnset MOVE_SPIKY_SHIELD, 42
    learnset MOVE_KNOCK_OFF, 48
    learnset MOVE_SUPERPOWER, 54
    learnset MOVE_WOOD_HAMMER, 58
    learnset MOVE_IVY_CUDGEL, 66
    terminatelearnset

levelup SPECIES_OGERPON_HEARTHFLAME_MASK
    learnset MOVE_FOLLOW_ME, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FOCUS_ENERGY, 6
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_SLAM, 18
    learnset MOVE_LOW_SWEEP, 24
    learnset MOVE_THROAT_CHOP, 30
    learnset MOVE_SYNTHESIS, 36
    learnset MOVE_SPIKY_SHIELD, 42
    learnset MOVE_KNOCK_OFF, 48
    learnset MOVE_SUPERPOWER, 54
    learnset MOVE_WOOD_HAMMER, 58
    learnset MOVE_IVY_CUDGEL, 66
    terminatelearnset

levelup SPECIES_OGERPON_CORNERSTONE_MASK
    learnset MOVE_FOLLOW_ME, 1
    learnset MOVE_QUICK_ATTACK, 1
    learnset MOVE_VINE_WHIP, 1
    learnset MOVE_FOCUS_ENERGY, 6
    learnset MOVE_DOUBLE_KICK, 12
    learnset MOVE_SLAM, 18
    learnset MOVE_LOW_SWEEP, 24
    learnset MOVE_THROAT_CHOP, 30
    learnset MOVE_SYNTHESIS, 36
    learnset MOVE_SPIKY_SHIELD, 42
    learnset MOVE_KNOCK_OFF, 48
    learnset MOVE_SUPERPOWER, 54
    learnset MOVE_WOOD_HAMMER, 58
    learnset MOVE_IVY_CUDGEL, 66
    terminatelearnset

levelup SPECIES_TERAPAGOS_STELLAR
    learnset MOVE_TACKLE, 1
    terminatelearnset

levelup SPECIES_URSALUNA_BLOODMOON
    learnset MOVE_TACKLE, 1
    terminatelearnset
