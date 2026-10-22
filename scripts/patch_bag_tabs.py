#!/usr/bin/env python3
"""
Paint the Held Items and Mega Stones pocket tab icons into NARC a/0/1/5 (the bag
graphics archive), member 51 (the tab sprite tile data).

The bag's bottom-screen pocket tabs are 16x16 4bpp OBJ tiles drawn over a shared frame.
Colours: palette index 0 transparent, 11 white outline, 12 blue, 13 light blue
(the frame colour of each pocket comes from the OBJ palette in member 48 and is untouched).
Pocket 5 (was Mail)         = cell 5 = tiles 38-41  (16x16)
Pocket 6 (was Battle Items) = cell 6 = tiles 42-45 (16x16) + 46-47 (16x8)

Source art: data/graphics/bag_tabs/held.txt (16 rows x 16) and mega.txt (24 rows x 16);
chars  .=0  W=11  b=12  l=13.

Same-size in-place patch (only tile pixel bytes change), idempotent, run every build
(base/ is wiped on `make clean`).

Usage: patch_bag_tabs.py <path to NARC a/0/1/5>
"""
import struct
import sys
from pathlib import Path

ART = Path(__file__).resolve().parent.parent / "data/graphics/bag_tabs"
TILE_MEMBER = 51
MAP = {".": 0, "W": 11, "b": 12, "l": 13}


def load(name, height):
    rows = [r for r in (l.rstrip("\r\n") for l in (ART / name).read_text().splitlines()) if r != ""]
    if len(rows) != height or any(len(r) != 16 for r in rows):
        sys.exit(f"{name}: must be 16 columns x {height} rows")
    bad = {c for r in rows for c in r} - set(MAP)
    if bad:
        sys.exit(f"{name}: unknown characters {sorted(bad)}")
    return rows


def put(tiles, rows, first_tile):
    """Write 16-wide rows into 8x8 4bpp tiles, row-major, 2 tiles per row."""
    for ty in range(len(rows) // 8):
        for tx in range(2):
            t = first_tile + ty * 2 + tx
            for y in range(8):
                for x in range(8):
                    c = MAP[rows[ty * 8 + y][tx * 8 + x]]
                    o = t * 32 + y * 4 + x // 2
                    tiles[o] = (tiles[o] & 0x0F) | (c << 4) if x & 1 else (tiles[o] & 0xF0) | c


def main(path):
    d = bytearray(open(path, "rb").read())
    if d[0:4] != b"NARC":
        sys.exit(f"{path}: not a NARC (magic {d[0:4]!r})")
    btaf_size = struct.unpack_from("<I", d, 0x14)[0]
    btnf_off = 0x10 + btaf_size
    btnf_size = struct.unpack_from("<I", d, btnf_off + 4)[0]
    gmif_data = btnf_off + btnf_size + 8
    start, end = struct.unpack_from("<II", d, 0x1C + TILE_MEMBER * 8)
    o = gmif_data + start
    if d[o:o + 4] != b"RGCN":
        sys.exit(f"{path}: member {TILE_MEMBER} is not an NCGR (got {d[o:o+4]!r}) - a/0/1/5 layout changed?")
    k = d.find(b"RAHC", o, gmif_data + end)
    if k < 0:
        sys.exit(f"{path}: member {TILE_MEMBER} has no RAHC chunk")
    data_size = struct.unpack_from("<I", d, k + 0x18)[0]
    if 48 * 32 > data_size:
        sys.exit(f"{path}: tile data too small ({data_size} bytes)")
    base = k + 0x20
    tiles = bytearray(d[base:base + data_size])
    before = bytes(tiles)
    put(tiles, load("held.txt", 16), 38)
    mega = load("mega.txt", 24)
    put(tiles, mega[:16], 42)
    put(tiles, mega[16:], 46)
    if bytes(tiles) == before:
        return
    d[base:base + data_size] = tiles
    open(path, "wb").write(d)
    print("patch_bag_tabs: painted Held Items + Mega Stones tab icons")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    main(sys.argv[1])
