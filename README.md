# Beast Wars (Game Boy Color) reverse-engineering project

This is a starter workspace for analysing and eventually rebuilding the user-provided
`Kettou Beast Wars - Beast Senshi Saikyou Ketteisen (J) [C][!].gbc` ROM.

## Important: what this project is (and is not)

- The original ROM is **not** modified by the analysis scripts.
- `inspect_rom.py` checks the cartridge header and checksums.
- `split_banks.py` makes byte-for-byte 16 KiB bank files for analysis.
- `extract_tiles.py` decodes Game Boy 2bpp tile data from a range you specify.
- This is an organised reverse-engineering workspace, **not yet a complete decompilation**.
- A raw disassembly is not the same as a verified rebuild. Code/data boundaries, bank
  switching, jump tables, graphics and compressed assets must be identified before
  source files can reproduce the original game.

## 1. Put the ROM in place

Copy the original ROM into:

    rom/original.gbc

Keep an untouched backup elsewhere too. The `.gitignore` excludes ROMs and generated
analysis output so they are not accidentally committed.

## 2. Inspect the ROM

From this directory:

    python3 tools/inspect_rom.py rom/original.gbc

Expected facts for the supplied file:

- File size: 1,048,576 bytes (1 MiB)
- Internal title: `BEAST WARS`
- Cartridge type: `0x19` (MBC5, no cartridge RAM, no battery)
- ROM size code: `0x05` (64 x 16 KiB banks)
- CGB flag: `0x80` (CGB-compatible)
- SGB flag: `0x03` (SGB functions supported)
- Header checksum: stored `0xCF`
- Global checksum: stored `0x1789`

The scripts calculate checksums from the file; they do not trust these expected values.

## 3. Split into banks

    python3 tools/split_banks.py rom/original.gbc

This writes 64 files under `analysis/banks/`, each exactly 16 KiB. The first bank is
`bank_00.bin`; the last is `bank_3F.bin`.

## 4. Graphics exploration

Game Boy graphics commonly use 2bpp tiles: 16 bytes per 8x8 tile. The tile decoder
needs a known ROM offset and byte length; it does not guess where graphics live.

Install Pillow if needed:

    python3 -m pip install pillow

Example (replace the offset and length after locating a likely graphics region):

    python3 tools/extract_tiles.py rom/original.gbc gfx/experiments/tiles.png \
      --offset 0x40000 --length 0x2000 --columns 16

The output is an indexed PNG with four shades. Initially, arbitrary ROM ranges may
look like noise because the range could contain machine code, compressed data, maps,
or non-tile data. We will identify real graphics regions before treating them as assets.

## 5. Planned workflow

1. **Inventory:** header, banks, checksums, mapper and bank references.
2. **Code discovery:** identify entry points, interrupt vectors, routines and bank
   switching; annotate code versus data.
3. **Asset discovery:** locate tile graphics, palettes, tilemaps, maps, text and audio.
4. **Extraction:** create repeatable scripts and document source offsets / formats.
5. **Disassembly:** produce labelled RGBDS assembly with bank and address annotations.
6. **Rebuild validation:** assemble and compare output against the original, resolving
   differences until the rebuild is understood and stable.
7. **Modification:** make small changes, build, test in an emulator, and keep notes.

## 6. Tools

Recommended:

- **RGBDS** (`rgbasm`, `rgblink`, `rgbfix`) for assembling a Game Boy ROM once the
  source has been reconstructed.
- **BGB** or **Emulicious** for emulation, breakpoints, tracing and memory inspection.
- **Ghidra** with a suitable Game Boy / SM83 processor module, or a dedicated SM83
  disassembler, for code analysis. A generic Z80 disassembler is not fully accurate
  for the Game Boy CPU.
- **YY-CHR** or **Tilemap Studio** for inspecting/editing graphics after extraction.

RGBDS is an assembler/linker toolchain, not a one-click decompiler. Do not expect it
to turn this ROM into original source automatically.

## Project folders

- `rom/` — put the original input ROM here (ignored by Git).
- `analysis/banks/` — generated 16 KiB bank dumps (ignored by Git).
- `analysis/notes/` — bank maps, address notes, code/data annotations.
- `src/` — future labelled RGBDS source.
- `gfx/` — extracted and edited graphics.
- `maps/` — map and tilemap exports.
- `audio/` — music and sound-effect research.
- `tools/` — repeatable local scripts.
- `build/` — future rebuilt ROMs (ignored by Git).

## Mac Install

- brew install rgbds
- brew install python
- brew install ghidra

## create virtual python envijronment

- python3 -m venv .venv

python -m pip install --upgrade pip
python -m pip install pillow

run `source .venv/bin/activate` on whenever you open a new vs code terminal

## clone a disassembler

git clone https://github.com/mattcurrie/mgbdis.git tools/mgbdis

python3 tools/mgbdis/mgbdis.py -h

python3 tools/mgbdis/mgbdis.py \
 rom/original.gbc \
 --output-dir analysis/disassembly \
 --print-hex \
 --uppercase-hex
