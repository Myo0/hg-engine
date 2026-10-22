#!/usr/bin/env python3
"""
Redraw the two small inline pocket glyphs used in "put away in the <pocket> pocket" messages
(data/text/custom/226.txt) for the Bag Pockets rework.

Charmap 0116 (the old Mail envelope)        -> Held Items icon  (apple core)
Charmap 011A (the old Battle Items burst)   -> Mega Stones icon (sphere with a swirl)

The glyphs live in the font NARC a/0/1/6: members 0 and 1 (the message font, identical) draw an
11-px icon on a "background" colour box with a shadow on the lower right; member 4 (the other
UI font, glyph width +1) draws the same icon with an outline instead. Members 2 and 3 have no
pocket glyphs. Glyph format (pret FontData): 16 bytes per 8x8 tile, 4 tiles per 16x16 glyph in
order TL, TR, BL, BR; each tile row is 16 bits, pixel x = bits (14-2x)..(15-2x); pixel values
0 transparent, 1 text, 2 shadow, 3 background colour.

Art source: data/graphics/bag_tabs/glyph_held.txt and glyph_mega.txt, 11x11 masks:
  X = icon body, o = hole (background shows through), . = empty. Row 0 is the blank top row.

In-place, same-size NARC patch; idempotent; run every build (base/ is wiped on `make clean`).

Usage: patch_pocket_glyphs.py <path to NARC a/0/1/6>
       patch_pocket_glyphs.py --preview out.png      (renders the glyphs, needs Pillow)
"""
import struct
import sys
from pathlib import Path

ART = Path(__file__).resolve().parent.parent / "data/graphics/bag_tabs"
GLYPHS = {0x116: "glyph_held.txt", 0x11A: "glyph_mega.txt"}
FONT_MEMBERS_SHADOW = (0, 1)  # message font: solid icon + shadow, background-colour box
FONT_MEMBERS_OUTLINE = (4,)  # outlined variant


def load_mask(name):
    rows = [r for r in (l.rstrip("\r\n") for l in (ART / name).read_text().splitlines()) if r != ""]
    if len(rows) != 11 or any(len(r) != 11 for r in rows):
        sys.exit(f"{name}: mask must be 11 columns x 11 rows")
    if {c for r in rows for c in r} - set("Xo."):
        sys.exit(f"{name}: only X, o and . are allowed")
    return rows


def render_shadow(mask):
    """Fonts 0/1: body 1, shadow 2 on right/bottom edges, background 3 over the 11x11 box at y=2."""
    body = lambda x, y: 0 <= x < 11 and 0 <= y < 11 and mask[y][x] == "X"
    px = [[0] * 16 for _ in range(16)]
    for y in range(11):
        for x in range(11):
            if body(x, y):
                px[y + 2][x] = 2 if (not body(x + 1, y) or not body(x, y + 1)) else 1
            else:
                px[y + 2][x] = 3
    return px


def render_outline(mask):
    """Font 4: body 1 with a 1-px outline of 2 around it (8-neighbourhood), no background box."""
    body = lambda x, y: 0 <= x < 11 and 0 <= y < 11 and mask[y][x] == "X"
    px = [[0] * 16 for _ in range(16)]
    for y in range(-1, 12):
        for x in range(-1, 12):
            if body(x, y):
                px[y + 1][x + 1] = 1
            elif any(body(x + dx, y + dy) for dx in (-1, 0, 1) for dy in (-1, 0, 1)):
                px[y + 1][x + 1] = 2
    return px


def encode(px):
    out = bytearray()
    for ox, oy in ((0, 0), (8, 0), (0, 8), (8, 8)):
        for y in range(8):
            v = 0
            for x in range(8):
                v |= px[oy + y][ox + x] << (14 - 2 * x)
            out += struct.pack("<H", v)
    return bytes(out)


def decode(d, code):
    header_size = struct.unpack_from("<I", d, 0)[0]
    off = header_size + (code - 1) * 64
    px = [[0] * 16 for _ in range(16)]
    for t, (ox, oy) in enumerate(((0, 0), (8, 0), (0, 8), (8, 8))):
        for y in range(8):
            v = struct.unpack_from("<H", d, off + t * 16 + y * 2)[0]
            for x in range(8):
                px[oy + y][ox + x] = (v >> (14 - 2 * x)) & 3
    return px


def narc_members(d):
    btaf_size = struct.unpack_from("<I", d, 0x14)[0]
    btnf_off = 0x10 + btaf_size
    btnf_size = struct.unpack_from("<I", d, btnf_off + 4)[0]
    gmif_data = btnf_off + btnf_size + 8
    count = struct.unpack_from("<H", d, 0x18)[0]
    return [(gmif_data + s, e - s) for s, e in (struct.unpack_from("<II", d, 0x1C + i * 8) for i in range(count))]


def patch(path):
    d = bytearray(open(path, "rb").read())
    if d[0:4] != b"NARC":
        sys.exit(f"{path}: not a NARC (magic {d[0:4]!r})")
    members = narc_members(d)
    masks = {code: load_mask(name) for code, name in GLYPHS.items()}
    changed = False
    for fonts, render in ((FONT_MEMBERS_SHADOW, render_shadow), (FONT_MEMBERS_OUTLINE, render_outline)):
        for m in fonts:
            off, size = members[m]
            header_size, _widths, num_glyphs = struct.unpack_from("<III", d, off)
            if header_size != 16 or size < 32000 or d[off + 14] != 2 or d[off + 15] != 2:
                sys.exit(f"{path}: member {m} is not the expected 16x16 font - a/0/1/6 layout changed?")
            for code, mask in masks.items():
                if code > num_glyphs:
                    sys.exit(f"{path}: glyph {code:#x} out of range in member {m}")
                g = off + header_size + (code - 1) * 64
                data = encode(render(mask))
                if d[g:g + 64] != data:
                    d[g:g + 64] = data
                    changed = True
    if changed:
        open(path, "wb").write(d)
        print("patch_pocket_glyphs: redrew the Held Items / Mega Stones message glyphs")


def preview(out):
    from PIL import Image
    masks = {code: load_mask(name) for code, name in GLYPHS.items()}
    cols = {0: (255, 255, 255), 1: (56, 56, 56), 2: (200, 72, 72), 3: (176, 176, 176)}
    S = 12
    cells = [("shadow", render_shadow), ("outline", render_outline)]
    im = Image.new("RGB", (len(masks) * len(cells) * (16 * S + 10), 16 * S + 10), (30, 30, 30))
    i = 0
    for _name, render in cells:
        for _code, mask in masks.items():
            px = render(mask)
            for y in range(16):
                for x in range(16):
                    for dy in range(S):
                        for dx in range(S):
                            im.putpixel((i * (16 * S + 10) + 5 + x * S + dx, 5 + y * S + dy), cols[px[y][x]])
            i += 1
    im.save(out)
    print("preview written to", out)


if __name__ == "__main__":
    if len(sys.argv) == 3 and sys.argv[1] == "--preview":
        preview(sys.argv[2])
    elif len(sys.argv) == 2:
        patch(sys.argv[1])
    else:
        sys.exit(__doc__)
