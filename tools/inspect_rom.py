#!/usr/bin/env python3
"""Read-only Game Boy ROM header and checksum inspector."""
import argparse
import hashlib
from pathlib import Path

ROM_SIZES = {
    0x00: 32 * 1024, 0x01: 64 * 1024, 0x02: 128 * 1024,
    0x03: 256 * 1024, 0x04: 512 * 1024, 0x05: 1024 * 1024,
    0x06: 2 * 1024 * 1024, 0x07: 4 * 1024 * 1024,
    0x08: 8 * 1024 * 1024, 0x52: 72 * 16 * 1024,
    0x53: 80 * 16 * 1024, 0x54: 96 * 16 * 1024,
}
CART_TYPES = {
    0x00: "ROM ONLY", 0x01: "MBC1", 0x02: "MBC1 + RAM",
    0x03: "MBC1 + RAM + BATTERY", 0x05: "MBC2",
    0x06: "MBC2 + BATTERY", 0x0F: "MBC3 + TIMER + BATTERY",
    0x10: "MBC3 + TIMER + RAM + BATTERY", 0x11: "MBC3",
    0x12: "MBC3 + RAM", 0x13: "MBC3 + RAM + BATTERY",
    0x19: "MBC5", 0x1A: "MBC5 + RAM", 0x1B: "MBC5 + RAM + BATTERY",
    0x1C: "MBC5 + RUMBLE", 0x1D: "MBC5 + RUMBLE + RAM",
    0x1E: "MBC5 + RUMBLE + RAM + BATTERY",
}
RAM_SIZES = {0: "None", 1: "2 KiB", 2: "8 KiB", 3: "32 KiB", 4: "128 KiB", 5: "64 KiB"}

def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("rom", type=Path)
    ap.add_argument("--check", action="store_true", help="exit nonzero on invalid header checksums or declared size")
    ap.add_argument("--expected-sha256", help="also require this exact SHA-256 (implies --check)")
    args = ap.parse_args()
    data = args.rom.read_bytes()
    if len(data) < 0x150:
        raise SystemExit("File is too small to contain a Game Boy cartridge header.")
    title = data[0x134:0x143].split(b"\0")[0].decode("ascii", "replace")
    cgb = data[0x143]
    sgb = data[0x146]
    cart = data[0x147]
    rom_code = data[0x148]
    ram_code = data[0x149]
    h = 0
    for value in data[0x134:0x14D]:
        h = (h - value - 1) & 0xFF
    global_sum = (sum(data[:0x14E]) + sum(data[0x150:])) & 0xFFFF
    stored_global = int.from_bytes(data[0x14E:0x150], "big")
    expected_size = ROM_SIZES.get(rom_code)
    print(f"File:             {args.rom}")
    print(f"File size:        {len(data):,} bytes")
    sha256 = hashlib.sha256(data).hexdigest()
    print(f"SHA-256:          {sha256}")
    print(f"Title:            {title}")
    print(f"CGB flag:         0x{cgb:02X} ({'CGB-compatible' if cgb in (0x80, 0xC0) else 'DMG / other'})")
    print(f"SGB flag:         0x{sgb:02X} ({'supported' if sgb == 0x03 else 'not flagged'})")
    print(f"Cartridge type:   0x{cart:02X} ({CART_TYPES.get(cart, 'unknown')})")
    print(f"ROM size code:    0x{rom_code:02X} ({expected_size:,} bytes expected)" if expected_size else f"ROM size code: 0x{rom_code:02X} (unknown)")
    print(f"RAM size code:    0x{ram_code:02X} ({RAM_SIZES.get(ram_code, 'unknown')})")
    print(f"16 KiB banks:     {len(data) / 16384:g}")
    print(f"Header checksum:  stored 0x{data[0x14D]:02X}, calculated 0x{h:02X} — {'OK' if h == data[0x14D] else 'MISMATCH'}")
    print(f"Global checksum:  stored 0x{stored_global:04X}, calculated 0x{global_sum:04X} — {'OK' if global_sum == stored_global else 'MISMATCH'}")
    if expected_size and expected_size != len(data):
        print("WARNING: file length does not match the header ROM-size code.")
    if args.expected_sha256 and sha256.lower() != args.expected_sha256.lower():
        print(f"SHA-256 mismatch: expected {args.expected_sha256}, got {sha256}")
    if args.check or args.expected_sha256:
        valid = (
            h == data[0x14D]
            and global_sum == stored_global
            and (expected_size is None or expected_size == len(data))
            and (not args.expected_sha256 or sha256.lower() == args.expected_sha256.lower())
        )
        if not valid:
            raise SystemExit(1)

if __name__ == "__main__":
    main()
