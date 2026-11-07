#!/usr/bin/env python3

import argparse
from pathlib import Path
from PIL import Image, ImageDraw

parser = argparse.ArgumentParser(
    description="Preview sliding 8x16 tile windows from Game Boy 2bpp data."
)
parser.add_argument("rom", type=Path)
parser.add_argument("--offset", type=lambda x: int(x, 0), required=True)
parser.add_argument("--length", type=lambda x: int(x, 0), required=True)
parser.add_argument("--output", type=Path, required=True)
parser.add_argument("--scale", type=int, default=6)

args = parser.parse_args()

if args.offset < 0 or args.length < 32 or args.scale < 1:
    raise SystemExit("Offset must be nonnegative, length at least 32, and scale positive.")

data = args.rom.read_bytes()
if args.offset + args.length > len(data):
    raise SystemExit("Requested ROM range is outside the file.")

raw = data[args.offset:args.offset + args.length]
window_count = 1 + (len(raw) - 32) // 2


def decode_tile(tile_data):
    result = []
    for y in range(8):
        low = tile_data[y * 2]
        high = tile_data[y * 2 + 1]

        for x in range(8):
            bit = 7 - x
            result.append(
                ((low >> bit) & 1) |
                (((high >> bit) & 1) << 1)
            )
    return result


palette = [
    (255, 255, 255),
    (170, 170, 170),
    (85, 85, 85),
    (0, 0, 0)
]

scale = args.scale
cell_w = 8 * scale + 12
cell_h = 16 * scale + 24
columns = 4
rows = (window_count + columns - 1) // columns

image = Image.new(
    "RGB",
    (columns * cell_w, rows * cell_h),
    (205, 205, 205)
)
draw = ImageDraw.Draw(image)

for window in range(window_count):
    byte_offset = window * 2
    top = decode_tile(raw[byte_offset:byte_offset + 16])
    bottom = decode_tile(raw[byte_offset + 16:byte_offset + 32])
    pixels = top + bottom

    col = window % columns
    row = window // columns
    x = col * cell_w
    y = row * cell_h

    for py in range(16):
        for px in range(8):
            colour = pixels[py * 8 + px]
            draw.rectangle(
                (
                    x + px * scale,
                    y + py * scale,
                    x + (px + 1) * scale - 1,
                    y + (py + 1) * scale - 1
                ),
                fill=palette[colour]
            )

    draw.text(
        (x + 2, y + 16 * scale + 3),
        f"W{window} +{byte_offset}",
        fill=(0, 0, 0)
    )

args.output.parent.mkdir(parents=True, exist_ok=True)
image.save(args.output)

print(f"Generated {window_count} sliding windows (32 bytes, 2-byte stride): {args.output}")
