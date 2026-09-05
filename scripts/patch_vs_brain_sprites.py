#!/usr/bin/env python3
"""
Retarget the Battle Frontier Brain VS-intro busts in NARC a/1/0/9 from the
native overlay-80 renderer's OBJ mapping (1D 128 KB boundary, mappingType 2) to
the Gym-Leader render path's mapping (1D 32 KB boundary, mappingType 0).

src/vs_screen.c reuses OVY_115 (the Gym Leader VS screen) to draw the 5 Frontier
Brain portraits.  That render path runs OBJ VRAM in 1D-32K mode, but the brain
NCGR/NCER resources are authored for 1D-128K, so their NCER OAM tile indices are
read at the wrong granularity and the sprite renders doubled/garbled.

This rewrites, per brain portrait set:
  * NCGR RAHC byte 0x22  : 0x20 -> 0x00   (mapping 128K -> 32K)
  * NCER KBEC mappingType : 0x02 -> 0x00
  * every NCER OAM attr2 tile index : x4  (128 KB / 32 KB = 4; the tile pixel
    data is already laid out contiguously, so this addresses the same bytes)

Idempotent: pristine members are always 0x20 / 0x02, so a member already at
0x00 is skipped.  Run every build (base/ is wiped on `make clean`).

Usage: patch_vs_brain_sprites.py <path to NARC a/1/0/9>
"""
import struct
import sys

# NARC 109 member ids for the 5 Frontier Brain busts (see project_vs_screen_research):
#   169-172 Darach&Caitlin / 173-176 Thorton / 177-180 Dahlia
#   181-184 Argenta        / 185-188 Palmer      (order {NCLR, NCGR, NCER, NANR})
NCGR_MEMBERS = [169, 173, 177, 181, 185]
NCER_MEMBERS = [171, 175, 179, 183, 187]


def main(path):
    d = bytearray(open(path, "rb").read())
    if d[0:4] != b"NARC":
        sys.exit(f"{path}: not a NARC (magic {d[0:4]!r})")

    btaf_size = struct.unpack_from("<I", d, 0x14)[0]
    btnf_off = 0x10 + btaf_size
    btnf_size = struct.unpack_from("<I", d, btnf_off + 4)[0]
    gmif_data = btnf_off + btnf_size + 8

    def member_off(i):
        start, _end = struct.unpack_from("<II", d, 0x1C + i * 8)
        return gmif_data + start

    changed = 0

    for m in NCGR_MEMBERS:
        o = member_off(m)
        if d[o:o + 4] != b"RGCN":
            sys.exit(f"{path}: member {m} is not an NCGR (got {d[o:o+4]!r}) - NARC 109 layout changed?")
        b = d[o + 0x22]
        if b == 0x20:
            d[o + 0x22] = 0x00
            changed += 1
        elif b != 0x00:
            sys.exit(f"{path}: NCGR {m} byte 0x22 unexpected ({b:#x})")

    for m in NCER_MEMBERS:
        o = member_off(m)
        if d[o:o + 4] != b"RECN":
            sys.exit(f"{path}: member {m} is not an NCER (got {d[o:o+4]!r}) - NARC 109 layout changed?")
        kbec = o + 0x10
        if d[kbec:kbec + 4] != b"KBEC":
            sys.exit(f"{path}: NCER {m} has no KBEC chunk")
        map_off = kbec + 0x10
        b = d[map_off]
        if b == 0x02:
            d[map_off] = 0x00
            n_cells = struct.unpack_from("<H", d, kbec + 8)[0]
            cell_arr = kbec + 8 + struct.unpack_from("<I", d, kbec + 0xC)[0]
            num_oam = struct.unpack_from("<H", d, cell_arr)[0]  # bounding-box cells -> 16 bytes each
            oam = cell_arr + 16 * n_cells
            for i in range(num_oam):
                a2_off = oam + i * 6 + 4
                a2 = struct.unpack_from("<H", d, a2_off)[0]
                a2 = (a2 & 0xFC00) | ((a2 & 0x03FF) * 4 & 0x03FF)
                struct.pack_into("<H", d, a2_off, a2)
            changed += 1
        elif b != 0x00:
            sys.exit(f"{path}: NCER {m} mappingType unexpected ({b:#x})")

    if changed:
        open(path, "wb").write(d)
        print(f"patch_vs_brain_sprites: retargeted {changed} member(s) in {path}")
    else:
        print(f"patch_vs_brain_sprites: {path} already patched")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    main(sys.argv[1])
