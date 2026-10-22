.nds
.thumb

.include "armips/include/animscriptcmd.s"

.create "build/move/move_anim/0_621", 0

a010_621: //origin pulse (sandbox draft 4: a big blue orb shrinks over the user, six small orbs appear around it, six beams hit the enemy side in a big blast; slower pacing)
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
    loadparticle 0, 556 //NEW particle file: emitters 0-5 = the six small orbs (they live 45,39,..,15 frames so all vanish together), 6 = the big orb that shrinks away (60 frames)
    loadparticle 1, 557 //NEW particle file: emitter 0 = a smooth blue beam that streams for 46 frames (built from the Ice Beam art)
    loadparticle 2, 558 //NEW particle file: emitter 0 = small blue pop, 1 = big blue blast
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3

    cmd43
    cmd0C 7, 1
    changebg 17, 0x800001 //high power water background (the one Hydro Cannon uses)
    waitforchangebg

    //a big blue orb appears over the user and slowly shrinks away (60 frames)
    playsepan 1943, -117
    addparticle 0, 6, 3
    wait 22

    //while it shrinks the six small orbs appear around the user, 6 frames apart, and stay where they are
    playsepan 1999, -117
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 4, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -6880, -5160, 0, "NaN", "NaN", "NaN", "NaN"
    wait 4
    playsepan 1999, -117
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 4, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 2064, -8600, 0, "NaN", "NaN", "NaN", "NaN"
    wait 4
    playsepan 1999, -117
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 4, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 4472, -2064, 0, "NaN", "NaN", "NaN", "NaN"
    wait 4
    playsepan 1999, -117
    addparticle 0, 3, 17
    cmd37 6, 0, 2, 4, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 7912, 3784, 0, "NaN", "NaN", "NaN", "NaN"
    wait 4
    playsepan 1999, -117
    addparticle 0, 4, 17
    cmd37 6, 0, 2, 4, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -1720, 6192, 0, "NaN", "NaN", "NaN", "NaN"
    wait 4
    playsepan 1999, -117
    addparticle 0, 5, 17
    cmd37 6, 0, 2, 4, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -4472, 1032, 0, "NaN", "NaN", "NaN", "NaN"
    wait 13

    //after about half a second, six beams of blue light leave the orbs together for the opposing side (they take about 20 frames to arrive)
    playsepanmod 1949, -117, 117, 4, 2
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 4, 1, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -6880, -5160, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 4, 1, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 2064, -8600, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 4, 1, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 4472, -2064, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 4, 1, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 7912, 3784, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 4, 1, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -1720, 6192, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 1, 0, 17
    cmd37 6, 0, 2, 4, 1, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -4472, 1032, 0, "NaN", "NaN", "NaN", "NaN"
    wait 18

    //the beams land: a run of small blue pops on that side of the field...
    repeatse 2095, 117, 5, 8
    addparticle 2, 0, 17
    cmd37 6, 0, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -2408, -1720, 0, "NaN", "NaN", "NaN", "NaN"
    wait 3
    addparticle 2, 0, 17
    cmd37 6, 0, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 2408, -2408, 0, "NaN", "NaN", "NaN", "NaN"
    wait 3
    addparticle 2, 0, 17
    cmd37 6, 0, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -3096, 1376, 0, "NaN", "NaN", "NaN", "NaN"
    wait 3
    addparticle 2, 0, 17
    cmd37 6, 0, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 2752, 1720, 0, "NaN", "NaN", "NaN", "NaN"
    wait 3
    addparticle 2, 0, 17
    cmd37 6, 0, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -3096, 0, "NaN", "NaN", "NaN", "NaN"
    wait 3
    addparticle 2, 0, 17
    cmd37 6, 0, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -688, 2408, 0, "NaN", "NaN", "NaN", "NaN"
    wait 3
    addparticle 2, 0, 17
    cmd37 6, 0, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 3440, -688, 0, "NaN", "NaN", "NaN", "NaN"
    wait 3
    addparticle 2, 0, 17
    cmd37 6, 0, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -1720, -2752, 0, "NaN", "NaN", "NaN", "NaN"
    wait 3

    //...and then the big blue blast
    playsepan 1942, 117
    addparticle 2, 1, 17
    cmd37 6, 0, 2, 13, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, 0, 0, "NaN", "NaN", "NaN", "NaN"
    flashscreencolor 6, 16, 31
    shakescreen
    shaketargetside 6, 6
    waitparticle
    waitstate

    unloadparticle 0
    unloadparticle 1
    unloadparticle 2
    resetbg 17, 0x1000001
    waitforchangebg
    end

.close
