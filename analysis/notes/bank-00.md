# Bank 00 - Initial Analysis

## Cartridge

- Game: Beast Wars
- Platform: Game Boy Color
- Mapper: MBC5
- ROM size: 1 MB
- ROM banks: 64
- Bank size: 16 KB

## Startup

- Entry point: 0x0100
- Initial jump: 0x0150
- Stack pointer: 0xDC00

## Restart vectors

- RST 08: 0x0066
- RST 10: 0x008D
- RST 18: 0x00A6
- RST 20: 0x007A
- RST 28: 0x00B1

## Interrupt vectors

- VBlank: 0x05C5
- LCD STAT: 0x04A5
- Timer: RETI
- Serial: 0x1BFC
- Joypad: RETI

## Startup routine references

- 0x1BDA
- 0x137C
- 0x0308
- 0x035D
- 0x02C6

## Status

- [x] ROM verified
- [x] ROM banks extracted
- [x] Header identified
- [x] Startup entry identified
- [ ] Restart routines analysed
- [ ] Interrupt handlers analysed
- [ ] Graphics locations identified
- [ ] Game engine mapped
