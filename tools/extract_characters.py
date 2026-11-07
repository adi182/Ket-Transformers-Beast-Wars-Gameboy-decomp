#!/usr/bin/env python3

import argparse
from pathlib import Path
from PIL import Image, ImageDraw

parser = argparse.ArgumentParser(
    description="Combine vertically paired Game Boy 2bpp tiles into characters."
)
parser.add_argument("rom", help="Path to the ROM")
parser.add_argument("--offset", type=lambda x: int(x, 0), required=True)
parser.add_argument("--length", type=lambda x: int(x, 0), required=True)
parser.add_argument("--output", required=True)
parser.add_argument("--columns", type=int, default=8)
parser.add_argument("--scale", type=int, default=6)

args = parser.parse_args()

if args.length % 32:
    parser.error("Length must be divisible by 32 (two 16-byte tiles per character).")

rom = Path(args.rom).read_bytes()
data = rom[args.offset:args.offset + args.length]

if len(data) != args.length:
    parser.error("Requested data range extends beyond the ROM.")

def decode_tile(tile_data):
    pixels = []
    for y in range(8):
        low = tile_data[y * 2]
        high = tile_data[y * 2 + 1]

        for x in range(8):
            bit = 7 - x
            colour = ((low >> bit) & 1) | (((high >> bit) & 1) << 1)
            pixels.append(colour)

    return pixels

characters = []

for i in range(0, len(data), 32):
    top = decode_tile(data[i:i + 16])
    bottom = decode_tile(data[i + 16:i + 32])
    characters.append(top + bottom)

count = len(characters)
columns = args.columns
rows = (count + columns - 1) // columns

cell_width = 8 * args.scale
cell_height = 16 * args.scale + 18

image = Image.new(
    "RGB",
    (columns * cell_width, rows * cell_height),
    (190, 190, 190)
)

draw = ImageDraw.Draw(image)
palette = [
    (255, 255, 255),
    (170, 170, 170),
    (85, 85, 85),
    (0, 0, 0)
]

for index, pixels in enumerate(characters):
    column = index % columns
    row = index // columns

    x = column * cell_width
    y = row * cell_height

    for py in range(16):
        for px in range(8):
            colour = pixels[py * 8 + px]
            draw.rectangle(
                (
                    x + px * args.scale,
                    y + py * args.scale,
                    x + (px + 1) * args.scale - 1,
                    y + (py + 1) * args.scale - 1
                ),
                fill=palette[colour]
            )

    draw.text(
        (x + 2, y + 16 * args.scale + 2),
        str(index),
        fill=(0, 0, 0)
    )

output = Path(args.output)
output.parent.mkdir(parents=True, exist_ok=True)
image.save(output)

print(f"Extracted {count} characters")
print(f"Saved: {output}")