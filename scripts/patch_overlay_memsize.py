#!/usr/bin/env python3
"""
Sync base/overarm9.bin's (the y9 overlay table) memsize field for overlay 1 to
match the real, current size of base/overlay/overlay_0001.bin.

armips (armips/asm/overworlds.s) can append new code past this overlay's
original end -- that's a normal, supported way to add code when a target
function has no in-place room -- but ndstool packs the ROM using the memsize
already baked into base/overarm9.bin, which is NOT dynamically resynced from
the live .bin file for base/vanilla overlays (unlike newly-added custom
overlays, which scripts/make.py already keeps in sync via os.path.getsize()).
Left stale, any code appended past the old boundary is silently never loaded
into RAM at runtime -- and per the NDS overlay loading convention, BSS
(uninitialized globals) is placed starting at memaddress + memsize, so a
stale (too-small) memsize also means appended code would sit exactly where
BSS lives, not past it.

Run this AFTER armips (so it sees the final, post-patch file size) and BEFORE
ndstool -c (so the ROM it packs uses the corrected table) -- see Makefile.

Table entry layout (32 bytes, matches scripts/make.py's own struct order):
    id(u32) memaddress(u32) memsize(u32) bsssize(u32)
    initstart(u32) initend(u32) fileid(u32) compressed(u32)

Usage: patch_overlay_memsize.py <path to base/> <overlay id>
"""
import os
import struct
import sys


def main():
    if len(sys.argv) != 3:
        print("Usage: patch_overlay_memsize.py <path to base/> <overlay id>")
        sys.exit(1)

    base = sys.argv[1]
    overlay_id = int(sys.argv[2])

    overlay_path = os.path.join(base, "overlay", f"overlay_{overlay_id:04}.bin")
    table_path = os.path.join(base, "overarm9.bin")

    real_size = os.path.getsize(overlay_path)

    entry_off = overlay_id * 0x20
    with open(table_path, "r+b") as f:
        f.seek(entry_off)
        entry = f.read(0x20)
        table_id, memaddress, old_memsize = struct.unpack("<III", entry[:12])
        assert table_id == overlay_id, f"table entry {entry_off:#x} has id {table_id}, expected {overlay_id}"

        if old_memsize == real_size:
            print(f"patch_overlay_memsize: overlay {overlay_id} memsize already {real_size:#x}, nothing to do")
            return

        f.seek(entry_off + 8)
        f.write(struct.pack("<I", real_size))
        print(f"patch_overlay_memsize: overlay {overlay_id} memsize {old_memsize:#x} -> {real_size:#x} "
              f"(memaddress {memaddress:#x}, BSS now starts at {memaddress + real_size:#x})")


if __name__ == "__main__":
    main()
