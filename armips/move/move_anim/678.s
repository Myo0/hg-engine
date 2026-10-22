.nds
.thumb

.include "armips/include/animscriptcmd.s"

.create "build/move/move_anim/0_678", 0

a010_678:
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspriteresource 3
    loadspritemaybe 4, 0, 0, 0
    loadspritemaybe 5, 0, 1, 1
    loadspritemaybe 6, 0, 2, 2
    loadspritemaybe 7, 0, 3, 3
    callfunction 78, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loadparticle 0, 559
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    jumpifside 0, _fromplayer, _fromenemy
_fromplayer:
// the player attacks: the hand comes in from the left
    addparticle 0, 1, 4
    callfunction 72, 10, 0, 270, 360, 0, 0, 64, 30, 8, 1, 0
    playsepan 2119, 117
    wait 6
    playsepan 1920, 117
    invertpalettes 1
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 24
    playsepan 1828, 117
    invertpalettes 0
    addparticle 0, 2, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, 5160, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, 5160, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    waitstate
    end
_fromenemy:
// the enemy attacks: the hand comes in from the right
    addparticle 0, 1, 4
    callfunction 72, 10, 0, 270, 360, 0, 0, -64, 30, 8, 1, 0
    playsepan 2119, 117
    wait 6
    playsepan 1920, 117
    invertpalettes 1
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    wait 24
    playsepan 1828, 117
    invertpalettes 0
    addparticle 0, 2, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, 5160, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, 5160, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    waitstate
    end

.close
