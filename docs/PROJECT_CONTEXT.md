# Project context

## Goal
Reverse engineer *Kettou Beast Wars – Beast Senshi Saikyou Ketteisen (Japan)* into an editable source project: assembly, graphics, data tables and a reproducible rebuild workflow.

## Environment
- MacBook Air M4, 16 GB RAM, macOS; VS Code; GitHub Copilot.
- Python `.venv` with Pillow 13.0.0.
- RGBDS v1.0.4; `mgbdis` v3.0; Homebrew installed.
- Expected ROM: `rom/original.gbc`.

## ROM identity (verify locally)
- Size 1,048,576 bytes (1 MiB), 64 banks × 16 KiB.
- SHA-256: `73621246600e5c1cd4b18f55855b7d78f567e4dd6f621154dbbf37690b05276e`.
- Internal title `BEAST WARS`; CGB flag 0x80; SGB flag 0x03.
- Cartridge type 0x19 (MBC5); ROM size code 0x05; RAM size code 0x00.
- Header checksum 0xCF; global checksum 0x1789.

## CPU and mapping
Sharp LR35902 / SM83. Bank 0 maps CPU 0000-3FFF. Switchable bank N maps CPU 4000-7FFF. File offset for bank N and CPU address A in the switchable window: `N*0x4000 + (A-0x4000)`.

## Existing project paths (verify)
- `analysis/banks/`: previously split into 64 files of 16,384 bytes.
- `analysis/disassembly/`: per-bank `mgbdis` output.
- `graphics/extracted/`: PNG previews.
- `tools/inspect_rom.py`, `rom_analysis.py`, `split_banks.py`, `extract_tiles.py`, `preview_tiles.py`, `extract_characters.py`, `preview_tile_pairs.py`.
- Python venv activation: `source .venv/bin/activate`.

## Analysis commands

Use the project environment for Pillow-based contact sheets. Extraction and image commands refuse to overwrite existing files unless `--force` is supplied.

```sh
.venv/bin/python tools/inspect_rom.py rom/original.gbc --check --expected-sha256 73621246600e5c1cd4b18f55855b7d78f567e4dd6f621154dbbf37690b05276e
.venv/bin/python tools/rom_analysis.py find-address rom/original.gbc 0x42B6 --bank 0x2C
.venv/bin/python tools/rom_analysis.py extract rom/original.gbc /tmp/bank2c_42b6.bin --bank 0x2C --cpu-start 0x42B6 --length 20
.venv/bin/python tools/rom_analysis.py pointers rom/original.gbc --bank 0x2C --cpu-start 0x42B6 --count 10 --target-bank 0x2C
.venv/bin/python tools/rom_analysis.py contact-sheet rom/original.gbc /tmp/bank4_607f.png --bank 4 --cpu-start 0x607F --length 0x200
.venv/bin/python tools/rom_analysis.py compare rom/original.gbc analysis/disassembly/game.gbc
```

Address search reports raw little-endian byte matches, not proven code references. Pointer targets in `$4000-$7FFF` require an explicit `--target-bank` to calculate file offsets.

## Staged editable build

`src/Makefile` produces `build/step7.gbc` without changing the existing verified baseline in `analysis/disassembly/`. Editable copies exist for banks 0 and 4; banks 1–3 and 5–63 are included from the verified disassembly. Bank 0 has `$007A` named `DecompressFromBank` and `$124C` named `DecompressBackReferenceStream`, with labeled token/control loops. Decoder return: `DE` is output end, `HL` is decoded byte count. Bank 4 `$627F-$651E` is a 42-tile (672-byte) `INCBIN` generated from editable indexed image `gfx/bank4_627F_tiles.png` by RGBDS `rgbgfx`; its ROM file offset is `$01227F`. The original raw extraction remains at `gfx/bank4_627F_2bpp.bin` as a reference. Other regions remain disassembly, not fully understood source. Build and compare with:

```sh
make -C src
.venv/bin/python tools/rom_analysis.py compare rom/original.gbc build/step7.gbc
```

The reconstruction is intentionally incomplete; raw and disassembled regions still need evidence-backed conversion.

## Graphics findings
Bank 4 routine `SetupBank4GraphicsState` at `$5C42` is entered from bank 0 `$1E43-$1E48`: it sets B=`$04`, HL=`$5C42`, and invokes RST `$08` (banked call). The target returns at `$5E10`.
- 28 tiles from `$5E9F` to VRAM `$8800`.
- If `($C2C6 & 0xF0) == 0x20`: 22 tiles from `$605F` to `$8AA0`, and 12 tiles from `$61BF` to `$8C00`.
- Then 2 tiles from `$607F + ((2*SWAP_NIBBLES($C2D2)) & $FF)` to `$89A0`; the valid `$C2D2` selector domain is unknown.
The bank-0 helper `CopyTilesToVram` at `$23A8` receives A=tile count, HL=source, DE=VRAM destination, and transfers 16*A bytes for the even counts used by callers. It waits on `rSTAT` before writes and calls `$248D`/`$0417` after each 32-byte group. Bank 4 `$5E4A` calls the same helper to load 42 tiles from `$627F` to `$8800`.

`$607F` is a sliding 32-byte window with starts advancing by 2 bytes. `preview_tile_pairs.py` now renders every full window at that two-byte stride.

The staged source additionally names bank 0 `$0F8E` `Copy32BytesAndClear29`: it copies 32 bytes from `[DE]` to `[HL]`, clears 29 following bytes, and advances the pointers by 32 and 61 respectively. Bank 4 `$5C42` uses the common template at `$651F` to initialize several `$D7xx` blocks and then patches literal offsets; their field meanings remain unknown. Bank 4 `$5E11` and `$5E8C` routines invoke bank-0 `$0DD4` (`ProcessBankedRecord`) on those blocks. The updater's register/memory flow and MBC5 low-bank save/restore are now traced, but the record's semantic purpose remains unknown. A separate path at `$5E42` loads 42 tiles and initializes three `$D7xx` blocks; its caller has not been found. These code regions and confidence/evidence are recorded in `docs/KNOWN_ROUTINES.md` and `docs/rom_map.csv`.

The raw bank preview sheets currently cover only banks 00-07 and do not decode compressed streams. Bank `$3F`'s startup routine decompresses three streams from bank `$31`; the first two are tile-data prefixes now rendered in `analysis/graphics/previews/`, while the third is interleaved CGB tilemap data. The stream decoder and exact transferred lengths are documented in `docs/KNOWN_ROUTINES.md`; use `tools/decompress_stream.py` to preview further confirmed `$124C` streams.

Readable assembly labels now also identify bank 0's CGB tilemap row/column fill routines at `$10EA`, `$1111`, and `$1139`, repeated-word initializer at `$1163`, and STAT-synchronized 16-byte copy at `$11C2`. Their register inputs and write patterns are documented in `docs/KNOWN_ROUTINES.md`; instruction bytes are preserved.

Visually identified 8x16 sequences:
- `$627F`: `! A C D E F I K L M N O P R S T U W Y 1 2`
- `$5E9F`: `! A D E F G I L N O R U Y`
- `$605F`: `0 1 2 3 4 5 6 7 8 9 "`
- `$61BF`: six 8x16 graphic combinations, not confidently identified as text.

## Other facts
- `$0100` contains `00 C3 50 01`: NOP; JP `$0150`. Startup begins `$0150`.
- RST `$20` vector at `$0020` jumps to `$007A`.
- VBlank `$0040` -> `$05C5`; LCD STAT `$0048` -> `$04A5`; timer `$0050` RETI; serial `$0058` -> `$1BFC`; joypad `$0060` RETI.
- Startup sets SP `$DC00`, enables cartridge RAM, selects bank 1, clears RAM, initializes LCD-related registers, calls `$137C`, selects bank `$2C`, then calls `$0308`.
- `$137C` checks `$C000`, chooses bank `$2E` or `$2F`, and calls `$460E`.

Disassembly contains byte regions likely to be data rendered as bogus instructions. Establish code/data boundaries from control flow, callers, pointer tables and raw bytes.
