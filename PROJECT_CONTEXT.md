# Beast Wars ROM Reverse Engineering

## Project objective

Reverse-engineer the Game Boy Color game:
Kettou Beast Wars - Beast Senshi Saikyou Ketteisen (Japan).

Goal:

- Recover editable assembly source.
- Identify and extract graphics.
- Identify game data, character sprites and backgrounds.
- Make code and graphics editable.
- Rebuild a working ROM using RGBDS.

## Environment

- MacBook Air M4, 16GB RAM
- macOS
- Python 3.15 with virtual environment
- Pillow 13
- RGBDS 1.0.4
- mgbdis 3.0
- VS Code with Continue

## Original ROM

Location: rom/original.gbc

Size: 1,048,576 bytes (1 MiB)
64 banks of 16 KB
Game Boy Color compatible
MBC5 cartridge

Original SHA-256:

73621246600e5c1cd4b18f55855b7d78f567e4dd6f621154dbbf37690b05276e

## Current progress

1. Original ROM inspected.
2. ROM split into 64 banks.
3. mgbdis used to disassemble the ROM.
4. Generated 64 RGBDS assembly bank files.
5. Successfully assembled and linked the disassembly.
6. Rebuilt ROM is BYTE-IDENTICAL to original.

Rebuilt ROM:
analysis/disassembly/game.gbc

The rebuilt ROM SHA-256 matches the original.

## Important files

rom/original.gbc
analysis/banks/
analysis/disassembly/
analysis/graphics/
tools/inspect_rom.py
tools/split_banks.py
tools/extract_tiles.py

## Build

From analysis/disassembly:

rgbasm -o game.o game.asm
rgblink -n game.sym -m game.map -o game.gbc game.o
rgbfix -v -p 255 game.gbc

## Graphics extraction

tools/extract_tiles.py decodes Game Boy 2bpp
graphics into PNG images.

Each tile:

- 8x8 pixels
- 16 bytes
- 4 colour indices

Initial previews were generated for banks 00-07.

These are exploratory previews, not confirmed graphics assets.

## Important precautions

- Never overwrite rom/original.gbc.
- Preserve the byte-identical disassembly as a reference.
- Do not assume every ROM byte is executable code.
- Distinguish graphics, compressed data, tables and code.
- Keep experimental edits separate from the original disassembly.
- Verify every rebuild.

## Current task

Identify actual graphics regions in the ROM.

The first raw tile preview looked noisy, so investigate
whether the graphics are compressed, scattered across
banks, or mixed with other data.

Develop a reliable extraction and editing workflow.
