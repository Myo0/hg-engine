.text
.align 2
.arm

.global NNSi_SndArcLoadBank_hook
NNSi_SndArcLoadBank_hook:
ldr r5, =NNSi_SndArcLoadBank_return_address
mov r6, lr
str r6, [r5]
pop {r5-r6}
blx NNSi_SndArcLoadBank
ldr r1, =NNSi_SndArcLoadBank_return_address
ldr r1, [r1]
mov pc, r1

.pool


.global NNS_SndInit_ASM
NNS_SndInit_ASM:
    push {lr}
    blx NNS_SndInit_Hook
    pop {pc}

.global NNS_SndInit_Original
NNS_SndInit_Original:
    push {r3, lr}
    ldr r0, =0x021DD420   
    ldr r1, [r0, #0xc]
    ldr r3, =0x020C78DC
    bx r3
.pool


.global NNS_SndMain_ASM
NNS_SndMain_ASM:
    push {lr}
    blx NNS_SndMain_Hook
    pop {pc}

.global NNS_SndMain_Original
NNS_SndMain_Original:
    push {r4, lr}
    mov r4, #0
    mov r0, r4
    ldr r3, =0x020C7964
    bx r3
.pool





.global NNS_SndPlayerStopSeqByPlayerNo_ASM
NNS_SndPlayerStopSeqByPlayerNo_ASM:
    push {lr}
    blx NNS_SndPlayerStopSeqByPlayerNo_Hook
    pop {pc}

.global NNS_SndPlayerStopSeqByPlayerNo_Original
NNS_SndPlayerStopSeqByPlayerNo_Original:
    push {r3, r4, r5, r6, r7, lr}
    ldr r3, =0x021DFDC4
    mov r2, #36
    ldr ip, =0x020C8074
    bx ip
.pool


.global NNS_SndPlayerPauseByPlayerNo_ASM
NNS_SndPlayerPauseByPlayerNo_ASM:
    push {lr}
    blx NNS_SndPlayerPauseByPlayerNo_Hook
    pop {pc}

.global NNS_SndPlayerPauseByPlayerNo_Original
NNS_SndPlayerPauseByPlayerNo_Original:
    push {r4, r5, r6, r7, r8, lr}
    mov  r2, #0x24
    .inst 0xe0060290   @ mul r6, r0, r2  (3rd clobbered instr; .inst avoids GAS Rd==Rm warning)
    ldr r3, =0x020C8178
    bx r3
.pool

NNSi_SndArcLoadBank_return_address:
.word 0
