#!/usr/bin/env python3
"""Read-only ROM analysis helpers for banked Game Boy ROMs."""
import argparse
import hashlib
import struct
import sys
from pathlib import Path

BANK_SIZE = 0x4000


def parse_int(value):
    return int(value, 0)


def file_offset(bank, cpu_address):
    if bank < 0:
        raise ValueError("Bank must be nonnegative.")
    if bank == 0:
        if not 0 <= cpu_address < BANK_SIZE:
            raise ValueError("Bank 0 CPU addresses must be in $0000-$3FFF.")
        return cpu_address
    if not 0x4000 <= cpu_address < 0x8000:
        raise ValueError("Switchable-bank CPU addresses must be in $4000-$7FFF.")
    return bank * BANK_SIZE + cpu_address - 0x4000


def banked_location(offset):
    bank = offset // BANK_SIZE
    within_bank = offset % BANK_SIZE
    cpu_address = within_bank if bank == 0 else within_bank + 0x4000
    return bank, cpu_address


def require_output(path, source, overwrite):
    if path.resolve() == source.resolve():
        raise ValueError("Output path must not be the source ROM.")
    path.parent.mkdir(parents=True, exist_ok=True)
    if path.exists() and not overwrite:
        raise ValueError(f"Output already exists; choose another path or use --force: {path}")


def find_address(args):
    data = args.rom.read_bytes()
    if args.bank is not None and args.bank >= len(data) // BANK_SIZE:
        raise ValueError(f"Bank {args.bank:02X} is outside this ROM.")
    pattern = struct.pack("<H", args.address)
    hits = []
    pos = 0
    has_more = False
    while True:
        pos = data.find(pattern, pos)
        if pos < 0:
            break
        bank, cpu_address = banked_location(pos)
        if args.bank is None or bank == args.bank:
            if len(hits) == args.max_results:
                has_more = True
                break
            hits.append((bank, cpu_address, pos))
        pos += 1

    print(f"Raw little-endian address bytes: {pattern.hex(' ').upper()}")
    print(f"Matches shown: {len(hits)}" +
          (f" (more matches exist; capped at {args.max_results})" if has_more else ""))
    for bank, cpu_address, offset in hits:
        print(f"bank {bank:02X} CPU ${cpu_address:04X} file 0x{offset:06X}")


def extract_bytes(args):
    data = args.rom.read_bytes()
    if args.bank is None:
        start = args.offset
        if start < 0:
            raise ValueError("File offset must be nonnegative.")
    else:
        start = file_offset(args.bank, args.cpu_start)
    end = start + args.length
    if args.length <= 0 or end > len(data):
        raise ValueError(f"Requested range 0x{start:X}..0x{end:X} is outside the ROM.")
    if args.bank is not None:
        bank_end = (args.bank + 1) * BANK_SIZE
        if end > bank_end:
            raise ValueError("Requested range crosses the selected ROM bank boundary.")
    require_output(args.output, args.rom, args.force)
    args.output.write_bytes(data[start:end])
    bank, cpu_address = banked_location(start)
    print(
        f"Extracted {args.length} bytes from bank {bank:02X}, CPU ${cpu_address:04X}, "
        f"file offset 0x{start:X} to {args.output}"
    )


def parse_pointers(args):
    data = args.rom.read_bytes()
    start = file_offset(args.bank, args.cpu_start)
    if args.bank >= len(data) // BANK_SIZE:
        raise ValueError(f"Bank {args.bank:02X} is outside this ROM.")
    if args.count <= 0 or args.stride < 2:
        raise ValueError("Pointer count must be positive and stride must be at least 2.")
    end = start + (args.count - 1) * args.stride + 2
    if end > len(data) or end > (args.bank + 1) * BANK_SIZE:
        raise ValueError("Pointer table extends beyond the selected bank or ROM.")

    print("index,table_cpu,table_file_offset,value,target_bank,target_file_offset")
    for index in range(args.count):
        entry_offset = start + index * args.stride
        pointer = int.from_bytes(data[entry_offset:entry_offset + 2], "little")
        table_bank, table_cpu = banked_location(entry_offset)
        target_bank = ""
        target_offset = ""
        if pointer < 0x4000:
            target_bank = "00"
            target_offset = f"0x{pointer:06X}"
        elif pointer < 0x8000 and args.target_bank is not None:
            if args.target_bank >= len(data) // BANK_SIZE:
                raise ValueError(f"Target bank {args.target_bank:02X} is outside this ROM.")
            target_bank = f"{args.target_bank:02X}"
            target_offset = f"0x{file_offset(args.target_bank, pointer):06X}"
        print(
            f"{index},{table_cpu:04X},0x{entry_offset:06X},{pointer:04X},"
            f"{target_bank},{target_offset}"
        )


def contact_sheet(args):
    try:
        from PIL import Image, ImageDraw
    except ImportError:
        raise SystemExit("Pillow is required for contact sheets; use the project .venv.")

    data = args.rom.read_bytes()
    start = file_offset(args.bank, args.cpu_start)
    if args.bank >= len(data) // BANK_SIZE:
        raise ValueError(f"Bank {args.bank:02X} is outside this ROM.")
    if args.length <= 0 or args.length % 16:
        raise ValueError("Tile data length must be a positive multiple of 16 bytes.")
    end = start + args.length
    if end > len(data) or end > (args.bank + 1) * BANK_SIZE:
        raise ValueError("Tile data range extends beyond the selected bank or ROM.")
    if args.columns < 1 or args.scale < 1:
        raise ValueError("Columns and scale must be positive.")

    tile_count = args.length // 16
    rows = (tile_count + args.columns - 1) // args.columns
    tile_pixels = 8 * args.scale
    label_height = 14
    cell_width = tile_pixels + 8
    cell_height = tile_pixels + label_height + 6
    image = Image.new("RGB", (args.columns * cell_width, rows * cell_height), (205, 205, 205))
    draw = ImageDraw.Draw(image)
    palette = ((255, 255, 255), (170, 170, 170), (85, 85, 85), (0, 0, 0))

    for tile_index in range(tile_count):
        tile = data[start + tile_index * 16:start + (tile_index + 1) * 16]
        cell_x = (tile_index % args.columns) * cell_width
        cell_y = (tile_index // args.columns) * cell_height
        for y in range(8):
            low, high = tile[y * 2:y * 2 + 2]
            for x in range(8):
                bit = 7 - x
                color = ((low >> bit) & 1) | (((high >> bit) & 1) << 1)
                x0 = cell_x + 4 + x * args.scale
                y0 = cell_y + 2 + y * args.scale
                draw.rectangle(
                    (x0, y0, x0 + args.scale - 1, y0 + args.scale - 1),
                    fill=palette[color],
                )
        draw.text(
            (cell_x + 4, cell_y + tile_pixels + 3),
            f"{tile_index:03X}",
            fill=(0, 0, 0),
        )

    require_output(args.output, args.rom, args.force)
    image.save(args.output)
    print(
        f"Created {tile_count} tile contact sheet from bank {args.bank:02X}, "
        f"CPU ${args.cpu_start:04X}: {args.output}"
    )


def compare_roms(args):
    original = args.original.read_bytes()
    candidate = args.candidate.read_bytes()
    original_hash = hashlib.sha256(original).hexdigest()
    candidate_hash = hashlib.sha256(candidate).hexdigest()
    print(f"Original:  {len(original):,} bytes SHA-256 {original_hash}")
    print(f"Candidate: {len(candidate):,} bytes SHA-256 {candidate_hash}")

    common_length = min(len(original), len(candidate))
    first_difference = next(
        (offset for offset in range(common_length) if original[offset] != candidate[offset]),
        None,
    )
    difference_count = sum(
        left != right for left, right in zip(original, candidate)
    )
    if len(original) != len(candidate):
        print(f"Length difference: {len(candidate) - len(original):+d} bytes")
    if first_difference is not None:
        print(f"First differing file offset: 0x{first_difference:X}")
    print(f"Differing bytes in common range: {difference_count:,}")
    if first_difference is None and len(original) == len(candidate):
        print("Byte-identical.")
        return 0
    print("ROMs differ.")
    return 1


def build_parser():
    parser = argparse.ArgumentParser(description=__doc__)
    commands = parser.add_subparsers(dest="command", required=True)

    search = commands.add_parser(
        "find-address", help="find raw little-endian occurrences of a 16-bit address"
    )
    search.add_argument("rom", type=Path)
    search.add_argument("address", type=parse_int, help="16-bit value, e.g. 0x42B6")
    search.add_argument("--bank", type=parse_int, help="limit hit locations to this bank")
    search.add_argument("--max-results", type=int, default=100)
    search.set_defaults(run=find_address)

    extract = commands.add_parser("extract", help="write a selected ROM byte range")
    extract.add_argument("rom", type=Path)
    extract.add_argument("output", type=Path)
    extract.add_argument("--length", type=parse_int, required=True)
    source = extract.add_mutually_exclusive_group(required=True)
    source.add_argument("--offset", type=parse_int, help="absolute file offset")
    source.add_argument("--bank", type=parse_int, help="ROM bank number, with --cpu-start")
    extract.add_argument("--cpu-start", type=parse_int, help="CPU address within --bank")
    extract.add_argument("--force", action="store_true", help="allow replacing output file")
    extract.set_defaults(run=extract_bytes)

    pointers = commands.add_parser("pointers", help="read a little-endian pointer table")
    pointers.add_argument("rom", type=Path)
    pointers.add_argument("--bank", type=parse_int, required=True)
    pointers.add_argument("--cpu-start", type=parse_int, required=True)
    pointers.add_argument("--count", type=int, required=True)
    pointers.add_argument("--stride", type=parse_int, default=2)
    pointers.add_argument(
        "--target-bank", type=parse_int,
        help="bank context to use when converting $4000-$7FFF pointers to file offsets",
    )
    pointers.set_defaults(run=parse_pointers)

    tiles = commands.add_parser(
        "contact-sheet", help="decode a bank range of 2bpp tiles into a labeled PNG"
    )
    tiles.add_argument("rom", type=Path)
    tiles.add_argument("output", type=Path)
    tiles.add_argument("--bank", type=parse_int, required=True)
    tiles.add_argument("--cpu-start", type=parse_int, required=True)
    tiles.add_argument("--length", type=parse_int, required=True)
    tiles.add_argument("--columns", type=int, default=16)
    tiles.add_argument("--scale", type=int, default=3)
    tiles.add_argument("--force", action="store_true", help="allow replacing output file")
    tiles.set_defaults(run=contact_sheet)

    compare = commands.add_parser("compare", help="compare two ROM files byte-for-byte")
    compare.add_argument("original", type=Path)
    compare.add_argument("candidate", type=Path)
    compare.set_defaults(run=compare_roms)
    return parser


def main():
    parser = build_parser()
    args = parser.parse_args()
    if args.command == "find-address":
        if not 0 <= args.address <= 0xFFFF:
            parser.error("address must be in the range 0..0xFFFF")
        if args.max_results <= 0:
            parser.error("--max-results must be positive")
        if args.bank is not None and args.bank < 0:
            parser.error("--bank must be nonnegative")
    if args.command == "extract":
        if args.length <= 0:
            parser.error("--length must be positive")
        if args.offset is None and args.cpu_start is None:
            parser.error("--cpu-start is required with --bank")
        if args.offset is not None and args.cpu_start is not None:
            parser.error("--cpu-start is only valid with --bank")
    if args.command == "pointers" and args.target_bank is not None and args.target_bank <= 0:
        parser.error("--target-bank must be a switchable ROM bank")
    try:
        return args.run(args)
    except ValueError as exc:
        parser.error(str(exc))


if __name__ == "__main__":
    sys.exit(main())
