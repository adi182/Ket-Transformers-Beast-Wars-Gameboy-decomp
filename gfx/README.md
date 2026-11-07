Store extracted graphics, palette notes, source ROM offsets and edited replacements here. Keep an untouched extraction alongside edited assets.

`bank4_627F_2bpp.bin` is an untouched 672-byte extraction from bank 4, CPU `$627F-$651E` (file offset `$01227F`, end-exclusive `$01251F`). The bank-4 setup at `$5E4A` loads 42 tiles from this range through `$23A8` (16 bytes per tile). The file is raw 2bpp tile data; character interpretations belong in notes and should remain evidence-based.

`bank4_627F_tiles.png` is the editable, indexed 7-column tile sheet for that range (56x48 pixels; 42 tiles in row-major order). Its four grayscale palette entries represent Game Boy color indices 0 through 3. `make -C src` converts it with RGBDS `rgbgfx` to the ignored intermediate `build/bank4_627F_2bpp.bin`, then includes those bytes in the ROM. The initial PNG round-trips exactly to the untouched `.bin` reference; edit the PNG to change tiles, and compare the resulting build to the original to review all changed bytes.

The older `analysis/graphics/previews/bank_00.png` through `bank_07.png` sheets show raw bank bytes interpreted as 2bpp tiles; they do not decompress streams and cover only banks 00-07. Bank `$3F`'s startup loader points to compressed graphics in bank `$31`. `tools/decompress_stream.py` implements the bank-0 `$124C` format and can produce both decoded bytes and tile previews. The decoded tile prefixes from `$31:$675D` and `$31:$6CBD` are saved under `graphics/extracted/` and `analysis/graphics/previews/`; their callers transfer only 1,760 and 1,440 bytes respectively, so the previews intentionally show those copied prefixes rather than unused decoded tails.

Example:

```sh
.venv/bin/python tools/decompress_stream.py rom/original.gbc \
  --bank 0x31 --address 0x675D \
  --binary graphics/extracted/bank31_675D_decompressed.bin \
  --png analysis/graphics/previews/bank31_675D_decompressed.png \
  --preview-bytes 1760
```

The stream at `$31:$7027` is also decoded to `graphics/extracted/bank31_7027_decompressed.bin`; its caller routes 720 bytes of interleaved CGB tile attributes and tile IDs to VRAM. It is not rendered as raw tiles.
