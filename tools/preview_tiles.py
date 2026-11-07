
#!/usr/bin/env python3

import argparse
from pathlib import Path
from PIL import Image, ImageDraw

parser = argparse.ArgumentParser()
parser.add_argument("rom", type=Path)
parser.add_argument("--offset", type=lambda x: int(x, 0), required=True)
parser.add_argument("--length", type=lambda x: int(x, 0), required=True)
parser.add_argument("--output", type=Path, required=True)
parser.add_argument("--scale", type=int, default=4)

args = parser.parse_args()

data = args.rom.read_bytes()
raw = data[args.offset:args.offset + args.length]

if len(raw) != args.length or args.length % 16:
    raise SystemExit("Invalid ROM range or length.")

scale = args.scale
tiles = len(raw) // 16
columns = 8
cell_w = 10 * scale
cell_h = 12 * scale
rows = (tiles + columns - 1) // columns

image = Image.new("RGB", (columns * cell_w, rows * cell_h), "white")
draw = ImageDraw.Draw(image)

palette = [
    (255, 255, 255),
    (170, 170, 170),
    (85, 85, 85),
    (0, 0, 0),
]

for tile in range(tiles):
    chunk = raw[tile * 16:(tile + 1) * 16]
    tx = (tile % columns) * cell_w
    ty = (tile // columns) * cell_h

    for y in range(8):
        lo = chunk[y * 2]
        hi = chunk[y * 2 + 1]

        for x in range(8):
            bit = 7 - x
            colour = ((lo >> bit) & 1) | (((hi >> bit) & 1) << 1)
            draw.rectangle(
                (
                    tx + x * scale,
                    ty + y * scale,
                    tx + (x + 1) * scale - 1,
                    ty + (y + 1) * scale - 1,
                ),
                fill=palette[colour],
            )

    draw.rectangle(
        (tx, ty, tx + 8 * scale - 1, ty + 8 * scale - 1),
        outline=(255, 0, 0),
    )
    draw.text((tx, ty + 8 * scale), str(tile), fill="black")

args.output.parent.mkdir(parents=True, exist_ok=True)
image.save(args.output)

print(f"Created {tiles} enlarged tiles: {args.output}")
