/* Overlay 10 */
OUTPUT_ARCH(arm)
MEMORY {

        /* Electrum: raised from the vanilla 0xF460. Overlay 10 (TRAINER_AI) physically sits in a
           0x1BAA0 slot (0x0221BE20..0x022378C0); the only battle-co-resident overlay is ov12
           (BATTLE) at 0x022378C0, which is the hard ceiling. 0x18000 leaves a ~0x3AA0 buffer. */
        rom     : ORIGIN = 0x0221BE20, LENGTH = 0x18000
        ewram   : ORIGIN = 0x0221BE20, LENGTH = 0x18000
}

SECTIONS {
        .text : {

                FILL (0xABCD)

                __text_start = . ;
                *(.init)
                *(.text)
                *(.ctors)
                *(.dtors)
                *(.rodata)
                *(.fini)
                *(COMMON)
                __text_end  = . ;

                __bss_start__ = . ;
                *(.bss)
                __bss_end__ = . ;
        _end = __bss_end__ ;
        __end__ = __bss_end__ ;
        } >rom = 0xff
}
