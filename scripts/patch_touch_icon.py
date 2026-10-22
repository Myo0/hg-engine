#!/usr/bin/env python3
"""
Add the Credits button art to NARC a/0/1/4 (bottom-screen touch menu graphics) as a NEW member.

Every X-menu icon is an LZ10-compressed NCGR of 20 tiles (4bpp): the 40x32 button is a 32x32 object (tiles 0-15, 4x4) plus an
8x32 object (tiles 16-19), all sharing member 14's palette (index 9 frame, 2 corner highlight, f/3/4 the button's white-to-green
background, 8 and 5 the glyph). This script builds the credits button from an existing icon's frame (the Options button, member
39): it redraws the plain button background and paints data/graphics/touch_menu/credits_glyph.txt on it.

The new member is appended at index CREDITS_CHAR_FILE (78 = the NARC's current member count); src/field/touch_menu.c loads
resource 10 from that file in the NORMAL layout.

Glyph file: 21 columns x 20 rows, `.` = background, `8` dark outline, `5` fill, `f` highlight. It is placed at (GLYPH_X, GLYPH_Y).

Idempotent: if the NARC already has a member 78 it is replaced. Run every build (base/ is wiped on `make clean`).
Usage: patch_touch_icon.py <path to NARC a/0/1/4>
"""
import sys
from pathlib import Path

import ndspy.lz10
import ndspy.narc

ROOT = Path(__file__).resolve().parent.parent
GLYPH = ROOT / "data/graphics/touch_menu/credits_glyph.txt"
TEMPLATE_MEMBER = 39  # Options icon: used for the frame/headers
CREDITS_CHAR_FILE = 78
GLYPH_X, GLYPH_Y = 10, 3
W, H = 40, 32


def tile_offset(x, y):
    """byte offset of pixel (x, y) inside the 640-byte tile area, and whether it is the high nibble"""
    if x < 32:
        tile = (y // 8) * 4 + (x // 8)
    else:
        tile = 16 + (y // 8)
    return tile * 32 + (y % 8) * 4 + (x % 8) // 2, (x & 1) == 1


def read_pixels(area):
    g = [[0] * W for _ in range(H)]
    for y in range(H):
        for x in range(W):
            o, hi = tile_offset(x, y)
            g[y][x] = (area[o] >> 4) if hi else (area[o] & 15)
    return g


def write_pixels(area, g):
    for y in range(H):
        for x in range(W):
            o, hi = tile_offset(x, y)
            area[o] = ((area[o] & 0x0F) | (g[y][x] << 4)) if hi else ((area[o] & 0xF0) | g[y][x])


def build(template_member):
    raw = bytes(template_member)
    data = bytearray(ndspy.lz10.decompress(raw) if raw[:1] == b"\x10" else raw)
    k = data.find(b"RAHC")
    area_off = k + 0x20
    area = bytearray(data[area_off:area_off + 640])
    g = read_pixels(area)
    # plain button background inside the frame: rows 2-23, columns 2-37 (corner pixels 2, white to green gradient)
    for y in range(2, 24):
        for x in range(2, 38):
            if y in (2, 23) and x in (2, 37):
                v = 2
            elif y <= 12:
                v = 0xF
            elif y <= 14:
                v = 3
            else:
                v = 4
            g[y][x] = v
    rows = [r for r in GLYPH.read_text().splitlines() if r.strip() != ""]
    for j, row in enumerate(rows):
        for i, c in enumerate(row):
            if c != ".":
                g[GLYPH_Y + j][GLYPH_X + i] = int(c, 16)
    write_pixels(area, g)
    data[area_off:area_off + 640] = area
    return bytes(ndspy.lz10.compress(bytes(data)))


def main(path):
    narc = ndspy.narc.NARC(Path(path).read_bytes())
    if len(narc.files) < CREDITS_CHAR_FILE:
        sys.exit(f"{path}: only {len(narc.files)} members, expected at least {CREDITS_CHAR_FILE} (a/0/1/4 layout changed?)")
    new = build(narc.files[TEMPLATE_MEMBER])
    if len(narc.files) == CREDITS_CHAR_FILE:
        narc.files.append(new)
    elif bytes(narc.files[CREDITS_CHAR_FILE]) != new:
        narc.files[CREDITS_CHAR_FILE] = new
    else:
        return
    Path(path).write_bytes(narc.save())
    print("patch_touch_icon: credits button art written to a/0/1/4 member", CREDITS_CHAR_FILE)


if __name__ == "__main__":
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    main(sys.argv[1])
