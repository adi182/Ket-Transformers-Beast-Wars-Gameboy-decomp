#!/usr/bin/env python3
"""Decode one Game Boy ROM stream using the game's bank-0 $124C format."""

import argparse
from pathlib import Path

BANK_SIZE = 0x4000
PALETTE = ((255, 255, 255), (170, 170, 170), (85, 85, 85), (0, 0, 0))


def decode_stream(
    rom: bytes, bank: int, address: int, max_output: int
) -> tuple[bytes, int]:
    if bank < 0 or bank >= len(rom) // BANK_SIZE:
        raise ValueError(f"Bank ${bank:02X} is outside this ROM.")
    if bank == 0:
        if not 0 <= address < BANK_SIZE:
            raise ValueError("Bank 0 addresses must be in $0000-$3FFF.")
        start = address
    else:
        if not 0x4000 <= address < 0x8000:
            raise ValueError("Switchable-bank addresses must be in $4000-$7FFF.")
        start = bank * BANK_SIZE + address - 0x4000

    bank_end = (bank + 1) * BANK_SIZE
    if start + 2 > bank_end:
        raise ValueError("Compressed stream header crosses the bank boundary.")

    header = int.from_bytes(rom[start:start + 2], "little")
    group_count = (header & 0x3FFF) + 1
    length_bits = 4 - (header >> 14)
    length_mask = (1 << length_bits) - 1
    cursor = start + 2
    output = bytearray()

    def read_byte() -> int:
        nonlocal cursor
        if cursor >= bank_end:
            raise ValueError(
                f"Compressed stream at bank ${bank:02X}:${address:04X} "
                "reaches the end of its mapped bank."
            )
        value = rom[cursor]
        cursor += 1
        return value

    for _ in range(group_count):
        control = read_byte()
        for bit in range(7, -1, -1):
            if not (control & (1 << bit)):
                output.append(read_byte())
            else:
                token = read_byte()
                length = (token & length_mask) + 1
                distance = (token >> length_bits) + 1
                if distance > len(output):
                    raise ValueError(
                        f"Invalid back-reference distance {distance} "
                        f"with only {len(output)} decoded bytes."
                    )
                if len(output) + length > max_output:
                    raise ValueError(
                        f"Decoded output exceeds the {max_output}-byte limit."
                    )
                source = len(output) - distance
                for _ in range(length):
                    output.append(output[source])
                    source += 1

            if len(output) > max_output:
                raise ValueError(
                    f"Decoded output exceeds the {max_output}-byte limit."
                )

    return bytes(output), cursor - start


def render_tiles(data: bytes, output: Path, columns: int, scale: int) -> None:
    try:
        from PIL import Image, ImageDraw
    except ImportError as exc:
        raise SystemExit("Pillow is required to render PNGs; use the project .venv.") from exc

    if not data or len(data) % 16:
        raise ValueError("2bpp tile output must contain a positive multiple of 16 bytes.")
    if columns < 1 or scale < 1:
        raise ValueError("Columns and scale must be positive.")

    tile_count = len(data) // 16
    rows = (tile_count + columns - 1) // columns
    cell_width = 8 * scale
    image = Image.new("RGB", (columns * cell_width, rows * cell_width), PALETTE[0])
    draw = ImageDraw.Draw(image)

    for tile_index in range(tile_count):
        tile = data[tile_index * 16:(tile_index + 1) * 16]
        tile_x = (tile_index % columns) * cell_width
        tile_y = (tile_index // columns) * cell_width
        for y in range(8):
            low, high = tile[y * 2:y * 2 + 2]
            for x in range(8):
                bit = 7 - x
                color = ((low >> bit) & 1) | (((high >> bit) & 1) << 1)
                x0 = tile_x + x * scale
                y0 = tile_y + y * scale
                draw.rectangle(
                    (x0, y0, x0 + scale - 1, y0 + scale - 1),
                    fill=PALETTE[color],
                )

    image.save(output)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("rom", type=Path)
    parser.add_argument("--bank", type=lambda value: int(value, 0), required=True)
    parser.add_argument("--address", type=lambda value: int(value, 0), required=True)
    parser.add_argument("--binary", type=Path, required=True, help="decoded bytes output")
    parser.add_argument("--png", type=Path, help="optional 2bpp tile preview")
    parser.add_argument(
        "--preview-bytes",
        type=int,
        help="render only this decoded prefix (useful when the caller copies a tile-aligned prefix)",
    )
    parser.add_argument("--columns", type=int, default=16)
    parser.add_argument("--scale", type=int, default=3)
    parser.add_argument("--max-output", type=int, default=0x200000)
    parser.add_argument("--force", action="store_true", help="allow replacing output files")
    args = parser.parse_args()

    if args.max_output <= 0:
        parser.error("--max-output must be positive")
    if args.preview_bytes is not None and not args.png:
        parser.error("--preview-bytes requires --png")
    outputs = [args.binary] + ([args.png] if args.png else [])
    if len({path.resolve() for path in outputs}) != len(outputs):
        parser.error("--binary and --png must be different files")
    for path in outputs:
        if path.resolve() == args.rom.resolve():
            parser.error("output paths must not overwrite the source ROM")
        if path.exists() and not args.force:
            parser.error(f"output already exists; choose another path or use --force: {path}")

    decoded, compressed_size = decode_stream(
        args.rom.read_bytes(), args.bank, args.address, args.max_output
    )
    if args.png:
        preview_bytes = len(decoded) if args.preview_bytes is None else args.preview_bytes
        if preview_bytes <= 0 or preview_bytes > len(decoded) or preview_bytes % 16:
            parser.error("--preview-bytes must be a positive, tile-aligned prefix of decoded output")
        tile_data = decoded[:preview_bytes]
    for path in outputs:
        path.parent.mkdir(parents=True, exist_ok=True)
    if args.png:
        render_tiles(tile_data, args.png, args.columns, args.scale)

    args.binary.write_bytes(decoded)
    detail = f", {len(decoded) // 16} tiles" if len(decoded) % 16 == 0 else ""
    print(
        f"Decoded bank ${args.bank:02X}:${args.address:04X}: "
        f"{compressed_size} compressed -> {len(decoded)} bytes{detail}"
    )
    print(f"Binary: {args.binary}")
    if args.png:
        print(
            f"Tile preview: {args.png} "
            f"({len(tile_data)} bytes / {len(tile_data) // 16} tiles)"
        )


if __name__ == "__main__":
    main()
