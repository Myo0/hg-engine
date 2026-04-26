.nds
.thumb

// Make fishing always auto-hook without requiring A-button timing.

.open "base/overlay/overlay_0001.bin", 0x021E5900

// State 4 button check: always return 0 (not pressed)
.org 0x021FC898
.hword 0x2000  // mov r0, #0      (replaces bl ov01_021FCAE8)
.hword 0x46C0  // mov r8, r8      (ARMv5TE Thumb NOP)

// State 5 button check: always return 0 — A press does nothing, automatically "hooks" a fish.
.org 0x021FC8F2
.hword 0x2000  // mov r0, #0      (replaces bl ov01_021FCAE8)
.hword 0x46C0  // mov r8, r8      (ARMv5TE Thumb NOP)

.org 0x021FC90C
.hword 0x2006  // mov r0, #6      (redirects timeout when the fish gets away to success state, which is hooking the fish)

.close
