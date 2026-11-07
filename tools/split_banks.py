#!/usr/bin/env python3
"""Split a ROM into raw 16 KiB banks without changing their contents."""
import argparse
from pathlib import Path

BANK_SIZE = 16 * 1024

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("rom", type=Path)
    ap.add_argument("--out", type=Path, default=Path("analysis/banks"))
    args = ap.parse_args()
    data = args.rom.read_bytes()
    if len(data) % BANK_SIZE:
        raise SystemExit("ROM length is not a multiple of 16 KiB; refusing partial bank.")
    args.out.mkdir(parents=True, exist_ok=True)
    count = len(data) // BANK_SIZE
    for bank in range(count):
        start = bank * BANK_SIZE
        target = args.out / f"bank_{bank:02X}.bin"
        target.write_bytes(data[start:start + BANK_SIZE])
    print(f"Wrote {count} banks ({BANK_SIZE:,} bytes each) to {args.out}")

if __name__ == "__main__":
    main()
