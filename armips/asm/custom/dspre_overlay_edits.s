.nds
.thumb

// ============================================================================
// Original credits:
//   - Surf without a Surf mon: AdAstra (hg-engine discord #research-chamber)
//   - HM cut-in animation removal: Kalaay
// ============================================================================

// ---- Overlay 1 (field), loads at 0x021E5900 ----
.open "base/overlay/overlay_0001.bin", 0x021E5900

// Surf usable with only the badge requirement (no Pokemon knowing Surf in party).
// vanilla @0x1C3C: e8 68 8d f6 e1 f9 39 21 6c f6 d0 fe ff 28 01 d0
.org 0x021E5900 + 0x1C3C
    .byte 0x06, 0xE0, 0xC0, 0x46, 0xC0, 0x46, 0xC0, 0x46, 0xC0, 0x46, 0xC0, 0x46, 0xC0, 0x46, 0xC0, 0x46

// Rock Smash usable with only the badge requirement (NOP an early-return check).
// vanilla @0x1F41A: 40 88 03 28 04 d3 20 f6 fc fb 01 b0 00 20 78 bd
.org 0x021E5900 + 0x1F41A
    .byte 0xC0, 0x46, 0xC0, 0x46, 0xC0, 0x46, 0xC0, 0x46, 0xC0, 0x46, 0xC0, 0x46, 0xC0, 0x46, 0xC0, 0x46

.close

// ---- Overlay 2, loads at 0x02245B80 ----
// Remove the HM cut-in animation (needed alongside the Surf/Rock-Smash edits so
// the game doesn't scramble offsets / show "Bad Egg used <move>" with no mon).
.open "base/overlay/overlay_0002.bin", 0x02245B80

// cut-in #1: vanilla ...1C 00 F0 BD FE 38 BD 50 35 25 02  ->  ...1C C0 46 C0 46 38 BD 84 35 25 02
.org 0x02245B80 + 0x3A2E
    .byte 0xC0, 0x46, 0xC0, 0x46
.org 0x02245B80 + 0x3A34
    .byte 0x84

// cut-in #2: vanilla ...1C 00 F0 A3 FC 38 BD F0 34 25 02  ->  ...1C C0 46 C0 46 38 BD 1C 35 25 02
.org 0x02245B80 + 0x3E62
    .byte 0xC0, 0x46, 0xC0, 0x46
.org 0x02245B80 + 0x3E68
    .byte 0x1C, 0x35

// cut-in #3: vanilla ...1C 00 F0 BD FC 38 BD 88 35 25 02  ->  ...1C C0 46 C0 46 38 BD E0 35 25 02
.org 0x02245B80 + 0x3E2E
    .byte 0xC0, 0x46, 0xC0, 0x46
.org 0x02245B80 + 0x3E34
    .byte 0xE0

.close
