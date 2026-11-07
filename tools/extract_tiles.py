#!/usr/bin/env python3
"""Decode a specified ROM range as Game Boy 2bpp 8x8 tiles into an indexed PNG."""
import argparse
from pathlib import Path

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("rom", type=Path)
    ap.add_argument("output", type=Path)
    ap.add_argument("--offset", type=lambda x: int(x, 0), required=True)
    ap.add_argument("--length", type=lambda x: int(x, 0), required=True)
    ap.add_argument("--columns", type=int, default=16)
    args = ap.parse_args()
    try:
        from PIL import Image
    except ImportError:
        raise SystemExit("Pillow is required: python3 -m pip install pillow")
    data = args.rom.read_bytes()
    if args.offset < 0 or args.length <= 0 or args.offset + args.length > len(data):
        raise SystemExit("Requested range is outside the ROM.")
    if args.length % 16:
        raise SystemExit("Length must be a multiple of 16 bytes (one 2bpp tile).")
    if args.columns < 1:
        raise SystemExit("Columns must be at least 1.")
    raw = data[args.offset:args.offset + args.length]
    count = len(raw) // 16
    rows = (count + args.columns - 1) // args.columns
    image = Image.new("P", (args.columns * 8, rows * 8))
    image.putpalette([255,255,255, 170,170,170, 85,85,85, 0,0,0] + [0,0,0] * 243)
    for tile in range(count):
        chunk = raw[tile * 16:(tile + 1) * 16]
        tx, ty = (tile % args.columns) * 8, (tile // args.columns) * 8
        for y in range(8):
            lo, hi = chunk[y * 2], chunk[y * 2 + 1]
            for x in range(8):
                bit = 7 - x
                colour = ((lo >> bit) & 1) | (((hi >> bit) & 1) << 1)
                image.putpixel((tx + x, ty + y), colour)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    image.save(args.output)
    print(f"Decoded {count} tiles from 0x{args.offset:X}..0x{args.offset + args.length:X} to {args.output}")

if __name__ == "__main__":
    main()
