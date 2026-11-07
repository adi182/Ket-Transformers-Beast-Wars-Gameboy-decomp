; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    ld a, b                                       ; $0000: $78

Jump_000_0001:
    ldh [$FFE0], a                                ; $0001: $E0 $E0

Call_000_0003:
Jump_000_0003:
    ld [$2000], a                                 ; $0003: $EA $00 $20
    jp hl                                         ; $0006: $E9


Call_000_0007:
    rst RST_38                                    ; $0007: $FF

RST_08::
    jp Jump_000_0066                              ; $0008: $C3 $66 $00


Jump_000_000B:
    rst RST_38                                    ; $000B: $FF

Call_000_000C:
    rst RST_38                                    ; $000C: $FF
    rst RST_38                                    ; $000D: $FF
    rst RST_38                                    ; $000E: $FF

Call_000_000F:
Jump_000_000F:
    rst RST_38                                    ; $000F: $FF

RST_10::
    jp Jump_000_008D                              ; $0010: $C3 $8D $00


Call_000_0013:
    rst RST_38                                    ; $0013: $FF

Call_000_0014:
    rst RST_38                                    ; $0014: $FF
    rst RST_38                                    ; $0015: $FF
    rst RST_38                                    ; $0016: $FF
    rst RST_38                                    ; $0017: $FF

RST_18::
    jp Jump_000_00A6                              ; $0018: $C3 $A6 $00


    rst RST_38                                    ; $001B: $FF

Call_000_001C:
Jump_000_001C:
    rst RST_38                                    ; $001C: $FF
    rst RST_38                                    ; $001D: $FF
    rst RST_38                                    ; $001E: $FF

Call_000_001F:
    rst RST_38                                    ; $001F: $FF

RST_20::
    jp Jump_000_007A                              ; $0020: $C3 $7A $00


    rst RST_38                                    ; $0023: $FF
    rst RST_38                                    ; $0024: $FF
    rst RST_38                                    ; $0025: $FF

Jump_000_0026:
    rst RST_38                                    ; $0026: $FF

Call_000_0027:
    rst RST_38                                    ; $0027: $FF

RST_28::
    jp Jump_000_00B1                              ; $0028: $C3 $B1 $00


    rst RST_38                                    ; $002B: $FF

Call_000_002C:
    rst RST_38                                    ; $002C: $FF

Jump_000_002D:
    rst RST_38                                    ; $002D: $FF

Call_000_002E:
    rst RST_38                                    ; $002E: $FF
    rst RST_38                                    ; $002F: $FF

RST_30::
    ldh a, [rIE]                                  ; $0030: $F0 $FF
    and $F7                                       ; $0032: $E6 $F7
    ldh [rIE], a                                  ; $0034: $E0 $FF
    ret                                           ; $0036: $C9


    rst RST_38                                    ; $0037: $FF

RST_38::
    ldh a, [rIE]                                  ; $0038: $F0 $FF
    or $08                                        ; $003A: $F6 $08

Call_000_003C:
Jump_000_003C:
    ldh [rIE], a                                  ; $003C: $E0 $FF
    ret                                           ; $003E: $C9


Call_000_003F:
    rst RST_38                                    ; $003F: $FF

VBlankInterrupt::
    jp Jump_000_05C5                              ; $0040: $C3 $C5 $05


Call_000_0043:
    rst RST_38                                    ; $0043: $FF

Call_000_0044:
Jump_000_0044:
    rst RST_38                                    ; $0044: $FF

Jump_000_0045:
    rst RST_38                                    ; $0045: $FF
    rst RST_38                                    ; $0046: $FF

Call_000_0047:
Jump_000_0047:
    rst RST_38                                    ; $0047: $FF

LCDCInterrupt::
    jp Jump_000_04A5                              ; $0048: $C3 $A5 $04


Call_000_004B:
Jump_000_004B:
    rst RST_38                                    ; $004B: $FF

Call_000_004C:
    rst RST_38                                    ; $004C: $FF
    rst RST_38                                    ; $004D: $FF
    rst RST_38                                    ; $004E: $FF

Jump_000_004F:
    rst RST_38                                    ; $004F: $FF

TimerOverflowInterrupt::
    reti                                          ; $0050: $D9


    rst RST_38                                    ; $0051: $FF

Call_000_0052:
    rst RST_38                                    ; $0052: $FF
    rst RST_38                                    ; $0053: $FF

Call_000_0054:
    rst RST_38                                    ; $0054: $FF
    rst RST_38                                    ; $0055: $FF

Call_000_0056:
Jump_000_0056:
    rst RST_38                                    ; $0056: $FF

Call_000_0057:
Jump_000_0057:
    rst RST_38                                    ; $0057: $FF

SerialTransferCompleteInterrupt::
    jp Jump_000_1BFC                              ; $0058: $C3 $FC $1B


Call_000_005B:
    reti                                          ; $005B: $D9


Call_000_005C:
    rst RST_38                                    ; $005C: $FF
    rst RST_38                                    ; $005D: $FF

Jump_000_005E:
    rst RST_38                                    ; $005E: $FF

Call_000_005F:
    rst RST_38                                    ; $005F: $FF

JoypadTransitionInterrupt::
    reti                                          ; $0060: $D9


Call_000_0061:
    ld b, $32                                     ; $0061: $06 $32
    ld hl, $6398                                  ; $0063: $21 $98 $63

Jump_000_0066:
    ldh a, [$FFE0]                                ; $0066: $F0 $E0

Call_000_0068:
Jump_000_0068:
    push af                                       ; $0068: $F5

Call_000_0069:
Jump_000_0069:
    ld a, b                                       ; $0069: $78
    ldh [$FFE0], a                                ; $006A: $E0 $E0

Call_000_006C:
Jump_000_006C:
    ld [$2000], a                                 ; $006C: $EA $00 $20
    call Call_000_0079                            ; $006F: $CD $79 $00
    pop af                                        ; $0072: $F1
    ldh [$FFE0], a                                ; $0073: $E0 $E0
    ld [$2000], a                                 ; $0075: $EA $00 $20
    ret                                           ; $0078: $C9


Call_000_0079:
    jp hl                                         ; $0079: $E9


Jump_000_007A:
    ldh a, [$FFE0]                                ; $007A: $F0 $E0

Call_000_007C:
    push af                                       ; $007C: $F5
    ld a, b                                       ; $007D: $78
    ldh [$FFE0], a                                ; $007E: $E0 $E0

Call_000_0080:
Jump_000_0080:
    ld [$2000], a                                 ; $0080: $EA $00 $20
    call Call_000_124C                            ; $0083: $CD $4C $12
    pop af                                        ; $0086: $F1
    ldh [$FFE0], a                                ; $0087: $E0 $E0
    ld [$2000], a                                 ; $0089: $EA $00 $20

Call_000_008C:
    ret                                           ; $008C: $C9


Jump_000_008D:
    ldh a, [rIE]                                  ; $008D: $F0 $FF

Call_000_008F:
    and $FE                                       ; $008F: $E6 $FE

Jump_000_0091:
    ldh [rIE], a                                  ; $0091: $E0 $FF
    ldh a, [rLCDC]                                ; $0093: $F0 $40

Jump_000_0095:
    bit 7, a                                      ; $0095: $CB $7F
    jr z, jr_000_00A5                             ; $0097: $28 $0C

jr_000_0099:
    ldh a, [rLY]                                  ; $0099: $F0 $44
    cp $91                                        ; $009B: $FE $91
    jr nz, jr_000_0099                            ; $009D: $20 $FA

    ldh a, [rLCDC]                                ; $009F: $F0 $40
    and $7F                                       ; $00A1: $E6 $7F
    ldh [rLCDC], a                                ; $00A3: $E0 $40

jr_000_00A5:
    ret                                           ; $00A5: $C9


Jump_000_00A6:
    or $80                                        ; $00A6: $F6 $80

Jump_000_00A8:
    ldh [rLCDC], a                                ; $00A8: $E0 $40

Jump_000_00AA:
    ldh a, [rIE]                                  ; $00AA: $F0 $FF

Call_000_00AC:
Jump_000_00AC:
    or $09                                        ; $00AC: $F6 $09
    ldh [rIE], a                                  ; $00AE: $E0 $FF

Call_000_00B0:
    ret                                           ; $00B0: $C9


Call_000_00B1:
Jump_000_00B1:
    push de                                       ; $00B1: $D5
    ld d, $00                                     ; $00B2: $16 $00
    ld e, a                                       ; $00B4: $5F
    add hl, de                                    ; $00B5: $19
    ld e, [hl]                                    ; $00B6: $5E
    inc hl                                        ; $00B7: $23

Jump_000_00B8:
    ld d, [hl]                                    ; $00B8: $56

Jump_000_00B9:
    push de                                       ; $00B9: $D5
    pop hl                                        ; $00BA: $E1
    pop de                                        ; $00BB: $D1
    jp hl                                         ; $00BC: $E9


Call_000_00BD:
    rst RST_38                                    ; $00BD: $FF
    rst RST_38                                    ; $00BE: $FF
    rst RST_38                                    ; $00BF: $FF

Call_000_00C0:
Jump_000_00C0:
    rst RST_38                                    ; $00C0: $FF

Call_000_00C1:
    rst RST_38                                    ; $00C1: $FF

Call_000_00C2:
    rst RST_38                                    ; $00C2: $FF

Call_000_00C3:
Jump_000_00C3:
    rst RST_38                                    ; $00C3: $FF
    rst RST_38                                    ; $00C4: $FF

Call_000_00C5:
    rst RST_38                                    ; $00C5: $FF

Call_000_00C6:
    rst RST_38                                    ; $00C6: $FF

Jump_000_00C7:
    rst RST_38                                    ; $00C7: $FF
    rst RST_38                                    ; $00C8: $FF
    rst RST_38                                    ; $00C9: $FF
    rst RST_38                                    ; $00CA: $FF

Jump_000_00CB:
    rst RST_38                                    ; $00CB: $FF

Call_000_00CC:
    rst RST_38                                    ; $00CC: $FF
    rst RST_38                                    ; $00CD: $FF

Jump_000_00CE:
    rst RST_38                                    ; $00CE: $FF
    rst RST_38                                    ; $00CF: $FF
    rst RST_38                                    ; $00D0: $FF
    rst RST_38                                    ; $00D1: $FF
    rst RST_38                                    ; $00D2: $FF
    rst RST_38                                    ; $00D3: $FF
    rst RST_38                                    ; $00D4: $FF

Call_000_00D5:
    rst RST_38                                    ; $00D5: $FF
    rst RST_38                                    ; $00D6: $FF

Call_000_00D7:
    rst RST_38                                    ; $00D7: $FF
    rst RST_38                                    ; $00D8: $FF
    rst RST_38                                    ; $00D9: $FF

Call_000_00DA:
    rst RST_38                                    ; $00DA: $FF
    rst RST_38                                    ; $00DB: $FF

Call_000_00DC:
Jump_000_00DC:
    rst RST_38                                    ; $00DC: $FF
    rst RST_38                                    ; $00DD: $FF

Call_000_00DE:
    rst RST_38                                    ; $00DE: $FF

Call_000_00DF:
    rst RST_38                                    ; $00DF: $FF

Call_000_00E0:
    rst RST_38                                    ; $00E0: $FF

Jump_000_00E1:
    rst RST_38                                    ; $00E1: $FF
    rst RST_38                                    ; $00E2: $FF
    rst RST_38                                    ; $00E3: $FF
    rst RST_38                                    ; $00E4: $FF

Jump_000_00E5:
    rst RST_38                                    ; $00E5: $FF
    rst RST_38                                    ; $00E6: $FF

Call_000_00E7:
Jump_000_00E7:
    rst RST_38                                    ; $00E7: $FF
    rst RST_38                                    ; $00E8: $FF
    rst RST_38                                    ; $00E9: $FF

Jump_000_00EA:
    rst RST_38                                    ; $00EA: $FF
    rst RST_38                                    ; $00EB: $FF

Call_000_00EC:
    rst RST_38                                    ; $00EC: $FF
    rst RST_38                                    ; $00ED: $FF
    rst RST_38                                    ; $00EE: $FF
    rst RST_38                                    ; $00EF: $FF

Call_000_00F0:
Jump_000_00F0:
    rst RST_38                                    ; $00F0: $FF

Call_000_00F1:
    rst RST_38                                    ; $00F1: $FF
    rst RST_38                                    ; $00F2: $FF
    rst RST_38                                    ; $00F3: $FF
    rst RST_38                                    ; $00F4: $FF
    rst RST_38                                    ; $00F5: $FF

Call_000_00F6:
    rst RST_38                                    ; $00F6: $FF
    rst RST_38                                    ; $00F7: $FF

Call_000_00F8:
    rst RST_38                                    ; $00F8: $FF
    rst RST_38                                    ; $00F9: $FF

Jump_000_00FA:
    rst RST_38                                    ; $00FA: $FF
    rst RST_38                                    ; $00FB: $FF

Call_000_00FC:
Jump_000_00FC:
    rst RST_38                                    ; $00FC: $FF

Jump_000_00FD:
    rst RST_38                                    ; $00FD: $FF

Call_000_00FE:
    rst RST_38                                    ; $00FE: $FF

Call_000_00FF:
Jump_000_00FF:
    rst RST_38                                    ; $00FF: $FF

Boot::
    nop                                           ; $0100: $00

Jump_000_0101:
    jp Jump_000_0150                              ; $0101: $C3 $50 $01


HeaderLogo::
    db $CE, $ED, $66, $66, $CC, $0D, $00, $0B, $03, $73, $00, $83, $00, $0C, $00, $0D
    db $00, $08, $11, $1F, $88, $89, $00, $0E, $DC, $CC, $6E, $E6, $DD, $DD, $D9, $99
    db $BB, $BB, $67, $63, $6E, $0E, $EC, $CC, $DD, $DC, $99, $9F, $BB, $B9, $33, $3E

HeaderTitle::
    db "BEAST WARS", $00

HeaderManufacturerCode::
    db $00, $00, $00, $00

HeaderCGBFlag::
    db $80

HeaderNewLicenseeCode::
    db $41, $37

HeaderSGBFlag::
    db $03

HeaderCartridgeType::
    db $19

HeaderROMSize::
    db $05

HeaderRAMSize::
    db $00

HeaderDestinationCode::
    db $00

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $CF

HeaderGlobalChecksum::
    db $17, $89

Jump_000_0150:
    rst RST_10                                    ; $0150: $D7
    di                                            ; $0151: $F3
    ld sp, $DC00                                  ; $0152: $31 $00 $DC

Jump_000_0155:
    ld a, $0A                                     ; $0155: $3E $0A
    ld [$0000], a                                 ; $0157: $EA $00 $00
    ld a, $01                                     ; $015A: $3E $01
    ldh [$FFE0], a                                ; $015C: $E0 $E0
    ld [$2000], a                                 ; $015E: $EA $00 $20
    ld hl, $C000                                  ; $0161: $21 $00 $C0
    ld de, $0564                                  ; $0164: $11 $64 $05
    ld b, $00                                     ; $0167: $06 $00

jr_000_0169:
    ld a, b                                       ; $0169: $78
    ld [hl+], a                                   ; $016A: $22
    dec de                                        ; $016B: $1B
    ld a, d                                       ; $016C: $7A
    or e                                          ; $016D: $B3

Call_000_016E:
Jump_000_016E:
    jr nz, jr_000_0169                            ; $016E: $20 $F9

    ld hl, $CC00                                  ; $0170: $21 $00 $CC

Call_000_0173:
    ld de, $1400                                  ; $0173: $11 $00 $14

Call_000_0176:
    ld b, $00                                     ; $0176: $06 $00

jr_000_0178:
    ld a, b                                       ; $0178: $78
    ld [hl+], a                                   ; $0179: $22
    dec de                                        ; $017A: $1B
    ld a, d                                       ; $017B: $7A
    or e                                          ; $017C: $B3
    jr nz, jr_000_0178                            ; $017D: $20 $F9

    ld hl, $FF80                                  ; $017F: $21 $80 $FF
    ld de, $007E                                  ; $0182: $11 $7E $00
    ld b, $00                                     ; $0185: $06 $00

jr_000_0187:
    ld a, b                                       ; $0187: $78
    ld [hl+], a                                   ; $0188: $22

Jump_000_0189:
    dec de                                        ; $0189: $1B
    ld a, d                                       ; $018A: $7A
    or e                                          ; $018B: $B3
    jr nz, jr_000_0187                            ; $018C: $20 $F9

    ld c, $80                                     ; $018E: $0E $80
    ld b, $0A                                     ; $0190: $06 $0A
    ld hl, $036E                                  ; $0192: $21 $6E $03

jr_000_0195:
    ld a, [hl+]                                   ; $0195: $2A
    ldh [c], a                                    ; $0196: $E2
    inc c                                         ; $0197: $0C
    dec b                                         ; $0198: $05
    jr nz, jr_000_0195                            ; $0199: $20 $FA

    call Call_000_1BDA                            ; $019B: $CD $DA $1B
    ld hl, $0378                                  ; $019E: $21 $78 $03
    ld de, $C001                                  ; $01A1: $11 $01 $C0
    ld bc, $0013                                  ; $01A4: $01 $13 $00

jr_000_01A7:
    ld a, [hl+]                                   ; $01A7: $2A
    ld [de], a                                    ; $01A8: $12
    inc de                                        ; $01A9: $13
    dec bc                                        ; $01AA: $0B
    ld a, b                                       ; $01AB: $78
    or c                                          ; $01AC: $B1
    jr nz, jr_000_01A7                            ; $01AD: $20 $F8

    ld a, $C0                                     ; $01AF: $3E $C0
    ldh [rLCDC], a                                ; $01B1: $E0 $40
    xor a                                         ; $01B3: $AF
    ldh [rSCX], a                                 ; $01B4: $E0 $43
    ldh [rSCY], a                                 ; $01B6: $E0 $42
    ldh [rOBP0], a                                ; $01B8: $E0 $48
    ldh [rOBP1], a                                ; $01BA: $E0 $49
    ldh [rIF], a                                  ; $01BC: $E0 $0F
    ldh [rSTAT], a                                ; $01BE: $E0 $41
    ld a, $FF                                     ; $01C0: $3E $FF

Jump_000_01C2:
    ldh [rBGP], a                                 ; $01C2: $E0 $47
    call Call_000_137C                            ; $01C4: $CD $7C $13
    ld a, $2C                                     ; $01C7: $3E $2C
    ldh [$FFE0], a                                ; $01C9: $E0 $E0
    ld [$2000], a                                 ; $01CB: $EA $00 $20
    call Call_000_0308                            ; $01CE: $CD $08 $03
    jr c, jr_000_01DB                             ; $01D1: $38 $08

    ld hl, $C037                                  ; $01D3: $21 $37 $C0
    res 7, [hl]                                   ; $01D6: $CB $BE
    jp Jump_000_01F2                              ; $01D8: $C3 $F2 $01


jr_000_01DB:
    ld hl, $C037                                  ; $01DB: $21 $37 $C0
    set 7, [hl]                                   ; $01DE: $CB $FE
    ld bc, $0078                                  ; $01E0: $01 $78 $00
    call Call_000_035D                            ; $01E3: $CD $5D $03
    ld hl, $59A5                                  ; $01E6: $21 $A5 $59
    call Call_000_02C6                            ; $01E9: $CD $C6 $02
    ld bc, $0004                                  ; $01EC: $01 $04 $00
    call Call_000_035D                            ; $01EF: $CD $5D $03

Call_000_01F2:
Jump_000_01F2:
    ei                                            ; $01F2: $FB
    ld a, $2C                                     ; $01F3: $3E $2C
    ldh [$FFE0], a                                ; $01F5: $E0 $E0
    ld [$2000], a                                 ; $01F7: $EA $00 $20
    ld a, $01                                     ; $01FA: $3E $01
    ld bc, $6F70                                  ; $01FC: $01 $70 $6F

Call_000_01FF:
Jump_000_01FF:
    call Call_000_03D4                            ; $01FF: $CD $D4 $03

Call_000_0202:
    jp $038B                                      ; $0202: $C3 $8B $03


Call_000_0205:
    ld hl, $C037                                  ; $0205: $21 $37 $C0
    bit 7, [hl]                                   ; $0208: $CB $7E
    ret z                                         ; $020A: $C8

    ld hl, $C283                                  ; $020B: $21 $83 $C2
    cp [hl]                                       ; $020E: $BE
    ret z                                         ; $020F: $C8

Jump_000_0210:
    ld [hl], a                                    ; $0210: $77
    di                                            ; $0211: $F3
    ldh a, [$FFE0]                                ; $0212: $F0 $E0
    push af                                       ; $0214: $F5
    ld a, $2C                                     ; $0215: $3E $2C
    ldh [$FFE0], a                                ; $0217: $E0 $E0
    ld [$2000], a                                 ; $0219: $EA $00 $20
    ld hl, $5975                                  ; $021C: $21 $75 $59
    call Call_000_02C6                            ; $021F: $CD $C6 $02
    ld bc, $0004                                  ; $0222: $01 $04 $00
    call Call_000_035D                            ; $0225: $CD $5D $03
    ld hl, $59C5                                  ; $0228: $21 $C5 $59
    call Call_000_02C6                            ; $022B: $CD $C6 $02
    ld bc, $0004                                  ; $022E: $01 $04 $00
    call Call_000_035D                            ; $0231: $CD $5D $03
    ld hl, $59D5                                  ; $0234: $21 $D5 $59
    call Call_000_02C6                            ; $0237: $CD $C6 $02
    ld bc, $0004                                  ; $023A: $01 $04 $00
    call Call_000_035D                            ; $023D: $CD $5D $03

Jump_000_0240:
    ld hl, $59E5                                  ; $0240: $21 $E5 $59
    call Call_000_02C6                            ; $0243: $CD $C6 $02
    ld bc, $0004                                  ; $0246: $01 $04 $00
    call Call_000_035D                            ; $0249: $CD $5D $03
    ld hl, $59F5                                  ; $024C: $21 $F5 $59
    call Call_000_02C6                            ; $024F: $CD $C6 $02
    ld bc, $0004                                  ; $0252: $01 $04 $00
    call Call_000_035D                            ; $0255: $CD $5D $03
    ld hl, $5A05                                  ; $0258: $21 $05 $5A
    call Call_000_02C6                            ; $025B: $CD $C6 $02
    ld bc, $0004                                  ; $025E: $01 $04 $00
    call Call_000_035D                            ; $0261: $CD $5D $03
    ld hl, $5A15                                  ; $0264: $21 $15 $5A
    call Call_000_02C6                            ; $0267: $CD $C6 $02
    ld bc, $0004                                  ; $026A: $01 $04 $00
    call Call_000_035D                            ; $026D: $CD $5D $03

Call_000_0270:
    ld hl, $5A25                                  ; $0270: $21 $25 $5A
    call Call_000_02C6                            ; $0273: $CD $C6 $02
    ld bc, $0004                                  ; $0276: $01 $04 $00
    call Call_000_035D                            ; $0279: $CD $5D $03
    ld hl, $5A35                                  ; $027C: $21 $35 $5A
    call Call_000_02C6                            ; $027F: $CD $C6 $02
    ld bc, $0004                                  ; $0282: $01 $04 $00
    call Call_000_035D                            ; $0285: $CD $5D $03
    call Call_000_0FBD                            ; $0288: $CD $BD $0F
    xor a                                         ; $028B: $AF
    ldh [rBGP], a                                 ; $028C: $E0 $47
    ldh [rSCX], a                                 ; $028E: $E0 $43
    ldh [rSCY], a                                 ; $0290: $E0 $42
    ld b, $04                                     ; $0292: $06 $04
    ld hl, $4000                                  ; $0294: $21 $00 $40

Jump_000_0297:
    rst RST_08                                    ; $0297: $CF
    call Call_000_0FBD                            ; $0298: $CD $BD $0F
    ld a, $FF                                     ; $029B: $3E $FF
    ldh [rBGP], a                                 ; $029D: $E0 $47
    xor a                                         ; $029F: $AF
    ldh [rSCX], a                                 ; $02A0: $E0 $43
    ldh [rSCY], a                                 ; $02A2: $E0 $42
    ld a, $C1                                     ; $02A4: $3E $C1
    rst RST_18                                    ; $02A6: $DF
    call Call_000_0452                            ; $02A7: $CD $52 $04

Call_000_02AA:
    ld bc, $0078                                  ; $02AA: $01 $78 $00
    call Call_000_035D                            ; $02AD: $CD $5D $03
    ld hl, $5985                                  ; $02B0: $21 $85 $59
    call Call_000_02C6                            ; $02B3: $CD $C6 $02
    ld bc, $0004                                  ; $02B6: $01 $04 $00
    call Call_000_035D                            ; $02B9: $CD $5D $03
    call Call_000_137C                            ; $02BC: $CD $7C $13
    pop af                                        ; $02BF: $F1
    ldh [$FFE0], a                                ; $02C0: $E0 $E0
    ld [$2000], a                                 ; $02C2: $EA $00 $20
    ret                                           ; $02C5: $C9


Call_000_02C6:
    ld a, [hl]                                    ; $02C6: $7E

Jump_000_02C7:
    and $07                                       ; $02C7: $E6 $07
    ret z                                         ; $02C9: $C8

    ld b, a                                       ; $02CA: $47
    ld c, $00                                     ; $02CB: $0E $00

jr_000_02CD:
    push bc                                       ; $02CD: $C5
    ld a, $00                                     ; $02CE: $3E $00
    ldh [c], a                                    ; $02D0: $E2
    ld a, $30                                     ; $02D1: $3E $30
    ldh [c], a                                    ; $02D3: $E2
    ld b, $10                                     ; $02D4: $06 $10

jr_000_02D6:
    ld e, $08                                     ; $02D6: $1E $08
    ld a, [hl+]                                   ; $02D8: $2A
    ld d, a                                       ; $02D9: $57

jr_000_02DA:
    bit 0, d                                      ; $02DA: $CB $42
    ld a, $10                                     ; $02DC: $3E $10
    jr nz, jr_000_02E2                            ; $02DE: $20 $02

    ld a, $20                                     ; $02E0: $3E $20

jr_000_02E2:
    ldh [c], a                                    ; $02E2: $E2
    ld a, $30                                     ; $02E3: $3E $30
    ldh [c], a                                    ; $02E5: $E2
    rr d                                          ; $02E6: $CB $1A
    dec e                                         ; $02E8: $1D
    jr nz, jr_000_02DA                            ; $02E9: $20 $EF

    dec b                                         ; $02EB: $05
    jr nz, jr_000_02D6                            ; $02EC: $20 $E8

    ld a, $20                                     ; $02EE: $3E $20
    ldh [c], a                                    ; $02F0: $E2
    ld a, $30                                     ; $02F1: $3E $30
    ldh [c], a                                    ; $02F3: $E2
    pop bc                                        ; $02F4: $C1
    dec b                                         ; $02F5: $05
    ret z                                         ; $02F6: $C8

Call_000_02F7:
    call Call_000_02FC                            ; $02F7: $CD $FC $02
    jr jr_000_02CD                                ; $02FA: $18 $D1

Call_000_02FC:
Jump_000_02FC:
    ld de, $1B58                                  ; $02FC: $11 $58 $1B

Jump_000_02FF:
jr_000_02FF:
    nop                                           ; $02FF: $00

Jump_000_0300:
    nop                                           ; $0300: $00

Jump_000_0301:
    nop                                           ; $0301: $00
    dec de                                        ; $0302: $1B

Call_000_0303:
Jump_000_0303:
    ld a, d                                       ; $0303: $7A

Call_000_0304:
Jump_000_0304:
    or e                                          ; $0304: $B3
    jr nz, jr_000_02FF                            ; $0305: $20 $F8

Call_000_0307:
    ret                                           ; $0307: $C9


Call_000_0308:
    ld hl, $59A5                                  ; $0308: $21 $A5 $59
    call Call_000_02C6                            ; $030B: $CD $C6 $02
    call Call_000_02FC                            ; $030E: $CD $FC $02
    ldh a, [rP1]                                  ; $0311: $F0 $00
    and $03                                       ; $0313: $E6 $03
    cp $03                                        ; $0315: $FE $03
    jr nz, jr_000_0352                            ; $0317: $20 $39

    ld a, $20                                     ; $0319: $3E $20
    ldh [rP1], a                                  ; $031B: $E0 $00
    ldh a, [rP1]                                  ; $031D: $F0 $00
    ldh a, [rP1]                                  ; $031F: $F0 $00
    ld a, $30                                     ; $0321: $3E $30
    ldh [rP1], a                                  ; $0323: $E0 $00
    ld a, $10                                     ; $0325: $3E $10
    ldh [rP1], a                                  ; $0327: $E0 $00
    ldh a, [rP1]                                  ; $0329: $F0 $00
    ldh a, [rP1]                                  ; $032B: $F0 $00
    ldh a, [rP1]                                  ; $032D: $F0 $00
    ldh a, [rP1]                                  ; $032F: $F0 $00
    ldh a, [rP1]                                  ; $0331: $F0 $00
    ldh a, [rP1]                                  ; $0333: $F0 $00
    ld a, $30                                     ; $0335: $3E $30
    ldh [rP1], a                                  ; $0337: $E0 $00
    ldh a, [rP1]                                  ; $0339: $F0 $00
    ldh a, [rP1]                                  ; $033B: $F0 $00
    ldh a, [rP1]                                  ; $033D: $F0 $00
    ldh a, [rP1]                                  ; $033F: $F0 $00
    and $03                                       ; $0341: $E6 $03
    cp $03                                        ; $0343: $FE $03
    jr nz, jr_000_0352                            ; $0345: $20 $0B

    ld hl, $5995                                  ; $0347: $21 $95 $59
    call Call_000_02C6                            ; $034A: $CD $C6 $02
    call Call_000_02FC                            ; $034D: $CD $FC $02
    sub a                                         ; $0350: $97
    ret                                           ; $0351: $C9


jr_000_0352:
    ld hl, $5995                                  ; $0352: $21 $95 $59
    call Call_000_02C6                            ; $0355: $CD $C6 $02

Jump_000_0358:
    call Call_000_02FC                            ; $0358: $CD $FC $02
    scf                                           ; $035B: $37
    ret                                           ; $035C: $C9


Call_000_035D:
jr_000_035D:
    ld de, $06D6                                  ; $035D: $11 $D6 $06

jr_000_0360:
    nop                                           ; $0360: $00
    nop                                           ; $0361: $00
    nop                                           ; $0362: $00
    dec de                                        ; $0363: $1B
    ld a, d                                       ; $0364: $7A
    or e                                          ; $0365: $B3
    jr nz, jr_000_0360                            ; $0366: $20 $F8

Jump_000_0368:
    dec bc                                        ; $0368: $0B
    ld a, b                                       ; $0369: $78
    or c                                          ; $036A: $B1
    jr nz, jr_000_035D                            ; $036B: $20 $F0

    ret                                           ; $036D: $C9


    ld a, $DF                                     ; $036E: $3E $DF
    ldh [rDMA], a                                 ; $0370: $E0 $46
    ld a, $28                                     ; $0372: $3E $28

jr_000_0374:
    dec a                                         ; $0374: $3D
    jr nz, jr_000_0374                            ; $0375: $20 $FD

    ret                                           ; $0377: $C9


    nop                                           ; $0378: $00
    nop                                           ; $0379: $00
    add d                                         ; $037A: $82
    ld bc, $0060                                  ; $037B: $01 $60 $00

Jump_000_037E:
    ld [bc], a                                    ; $037E: $02
    nop                                           ; $037F: $00
    jr nc, jr_000_0382                            ; $0380: $30 $00

jr_000_0382:
    nop                                           ; $0382: $00
    nop                                           ; $0383: $00
    ld bc, $0000                                  ; $0384: $01 $00 $00
    jr nc, jr_000_0389                            ; $0387: $30 $00

jr_000_0389:
    nop                                           ; $0389: $00
    ld bc, $0031                                  ; $038A: $01 $31 $00
    call c, $C821                                 ; $038D: $DC $21 $C8
    rst RST_38                                    ; $0390: $FF
    ld de, $0008                                  ; $0391: $11 $08 $00
    ld bc, $0301                                  ; $0394: $01 $01 $03

Jump_000_0397:
    ld a, [$C038]                                 ; $0397: $FA $38 $C0
    set 3, a                                      ; $039A: $CB $DF
    ld [$C038], a                                 ; $039C: $EA $38 $C0
    ld a, [$C037]                                 ; $039F: $FA $37 $C0
    bit 3, a                                      ; $03A2: $CB $5F
    jp nz, Jump_000_03B3                          ; $03A4: $C2 $B3 $03

    ld a, [hl]                                    ; $03A7: $7E
    cp $04                                        ; $03A8: $FE $04
    jp nc, Jump_000_03B9                          ; $03AA: $D2 $B9 $03

    add hl, de                                    ; $03AD: $19
    inc c                                         ; $03AE: $0C

Jump_000_03AF:
    dec b                                         ; $03AF: $05
    jp nz, Jump_000_0397                          ; $03B0: $C2 $97 $03

Jump_000_03B3:
    call Call_000_0462                            ; $03B3: $CD $62 $04
    jp $038E                                      ; $03B6: $C3 $8E $03


Jump_000_03B9:
    ld a, c                                       ; $03B9: $79
    ldh [$FFC1], a                                ; $03BA: $E0 $C1
    ld a, [hl]                                    ; $03BC: $7E
    ld [hl], $02                                  ; $03BD: $36 $02
    inc hl                                        ; $03BF: $23
    ld [hl], $00                                  ; $03C0: $36 $00
    inc hl                                        ; $03C2: $23
    ld e, [hl]                                    ; $03C3: $5E
    inc hl                                        ; $03C4: $23
    ld d, [hl]                                    ; $03C5: $56
    push de                                       ; $03C6: $D5

Call_000_03C7:
Jump_000_03C7:
    pop hl                                        ; $03C7: $E1
    cp $08                                        ; $03C8: $FE $08
    jp nz, Jump_000_03CE                          ; $03CA: $C2 $CE $03

Call_000_03CD:
    jp hl                                         ; $03CD: $E9


Jump_000_03CE:
    ld sp, hl                                     ; $03CE: $F9

Jump_000_03CF:
    pop af                                        ; $03CF: $F1
    pop bc                                        ; $03D0: $C1
    pop de                                        ; $03D1: $D1
    pop hl                                        ; $03D2: $E1
    ret                                           ; $03D3: $C9


Call_000_03D4:
    di                                            ; $03D4: $F3
    push af                                       ; $03D5: $F5
    push bc                                       ; $03D6: $C5
    push de                                       ; $03D7: $D5
    push hl                                       ; $03D8: $E5
    call Call_000_0447                            ; $03D9: $CD $47 $04
    ld [hl], $08                                  ; $03DC: $36 $08
    inc hl                                        ; $03DE: $23
    ld [hl], $00                                  ; $03DF: $36 $00

Jump_000_03E1:
    inc hl                                        ; $03E1: $23
    ld [hl], c                                    ; $03E2: $71
    inc hl                                        ; $03E3: $23
    ld [hl], b                                    ; $03E4: $70
    pop hl                                        ; $03E5: $E1
    pop de                                        ; $03E6: $D1

Jump_000_03E7:
    pop bc                                        ; $03E7: $C1
    pop af                                        ; $03E8: $F1
    ei                                            ; $03E9: $FB
    ret                                           ; $03EA: $C9


Call_000_03EB:
    di                                            ; $03EB: $F3

Call_000_03EC:
    push af                                       ; $03EC: $F5
    push bc                                       ; $03ED: $C5
    push de                                       ; $03EE: $D5
    push hl                                       ; $03EF: $E5
    call Call_000_0447                            ; $03F0: $CD $47 $04
    ld [hl], $00                                  ; $03F3: $36 $00
    inc hl                                        ; $03F5: $23
    ld [hl], $00                                  ; $03F6: $36 $00

Call_000_03F8:
    pop hl                                        ; $03F8: $E1
    pop de                                        ; $03F9: $D1
    pop bc                                        ; $03FA: $C1
    pop af                                        ; $03FB: $F1

Call_000_03FC:
Jump_000_03FC:
    ei                                            ; $03FC: $FB
    ret                                           ; $03FD: $C9


Call_000_03FE:
Jump_000_03FE:
jr_000_03FE:
    push hl                                       ; $03FE: $E5

Call_000_03FF:
Jump_000_03FF:
    push de                                       ; $03FF: $D5

Jump_000_0400:
    push bc                                       ; $0400: $C5
    push af                                       ; $0401: $F5
    push af                                       ; $0402: $F5

Call_000_0403:
    call Call_000_0445                            ; $0403: $CD $45 $04
    ld [hl], $01                                  ; $0406: $36 $01
    inc hl                                        ; $0408: $23

Call_000_0409:
    pop af                                        ; $0409: $F1
    ld [hl+], a                                   ; $040A: $22
    push hl                                       ; $040B: $E5

Call_000_040C:
    ld hl, sp+$02                                 ; $040C: $F8 $02
    push hl                                       ; $040E: $E5
    pop de                                        ; $040F: $D1

Jump_000_0410:
    pop hl                                        ; $0410: $E1
    ld [hl], e                                    ; $0411: $73
    inc hl                                        ; $0412: $23
    ld [hl], d                                    ; $0413: $72

Call_000_0414:
    jp $038B                                      ; $0414: $C3 $8B $03


Call_000_0417:
    ldh a, [$FFE0]                                ; $0417: $F0 $E0

Call_000_0419:
    push af                                       ; $0419: $F5
    call Call_000_0424                            ; $041A: $CD $24 $04
    pop af                                        ; $041D: $F1
    ldh [$FFE0], a                                ; $041E: $E0 $E0
    ld [$2000], a                                 ; $0420: $EA $00 $20
    ret                                           ; $0423: $C9


Call_000_0424:
    ld a, $01                                     ; $0424: $3E $01
    jr jr_000_03FE                                ; $0426: $18 $D6

    ld a, $02                                     ; $0428: $3E $02
    jr jr_000_03FE                                ; $042A: $18 $D2

    ld a, $05                                     ; $042C: $3E $05
    jr jr_000_03FE                                ; $042E: $18 $CE

Call_000_0430:
    ld a, $0A                                     ; $0430: $3E $0A
    jr jr_000_03FE                                ; $0432: $18 $CA

Call_000_0434:
    ld a, $1E                                     ; $0434: $3E $1E
    jr jr_000_03FE                                ; $0436: $18 $C6

Call_000_0438:
    ld a, $3C                                     ; $0438: $3E $3C
    jr jr_000_03FE                                ; $043A: $18 $C2

Jump_000_043C:
    di                                            ; $043C: $F3
    call Call_000_0445                            ; $043D: $CD $45 $04
    ld [hl], $00                                  ; $0440: $36 $00

Call_000_0442:
    jp $038B                                      ; $0442: $C3 $8B $03


Call_000_0445:
    ldh a, [$FFC1]                                ; $0445: $F0 $C1

Call_000_0447:
    ld hl, $FFC0                                  ; $0447: $21 $C0 $FF
    rlca                                          ; $044A: $07
    rlca                                          ; $044B: $07
    rlca                                          ; $044C: $07
    ld e, a                                       ; $044D: $5F
    ld d, $00                                     ; $044E: $16 $00
    add hl, de                                    ; $0450: $19
    ret                                           ; $0451: $C9


Call_000_0452:
    ld a, $01                                     ; $0452: $3E $01
    ld [$C019], a                                 ; $0454: $EA $19 $C0
    jp Jump_000_047B                              ; $0457: $C3 $7B $04


    ld a, $01                                     ; $045A: $3E $01
    ld [$C019], a                                 ; $045C: $EA $19 $C0
    jp Jump_000_047B                              ; $045F: $C3 $7B $04


Call_000_0462:
    ld a, $01                                     ; $0462: $3E $01
    ld [$C019], a                                 ; $0464: $EA $19 $C0
    ld a, [$C037]                                 ; $0467: $FA $37 $C0
    bit 3, a                                      ; $046A: $CB $5F
    jp nz, Jump_000_047B                          ; $046C: $C2 $7B $04

    call Call_000_098F                            ; $046F: $CD $8F $09
    call Call_000_1395                            ; $0472: $CD $95 $13
    call Call_000_090E                            ; $0475: $CD $0E $09
    call Call_000_18B2                            ; $0478: $CD $B2 $18

Jump_000_047B:
    push hl                                       ; $047B: $E5
    ld hl, $C038                                  ; $047C: $21 $38 $C0
    res 3, [hl]                                   ; $047F: $CB $9E
    pop hl                                        ; $0481: $E1
    ei                                            ; $0482: $FB

Jump_000_0483:
    halt                                          ; $0483: $76
    nop                                           ; $0484: $00
    ld a, [$C019]                                 ; $0485: $FA $19 $C0
    or a                                          ; $0488: $B7
    jp nz, Jump_000_0483                          ; $0489: $C2 $83 $04

    ret                                           ; $048C: $C9


Call_000_048D:
    ld [$C2B5], a                                 ; $048D: $EA $B5 $C2
    ld a, b                                       ; $0490: $78
    ld [$C2B6], a                                 ; $0491: $EA $B6 $C2
    ld a, [$C03A]                                 ; $0494: $FA $3A $C0
    or $01                                        ; $0497: $F6 $01
    ld [$C03A], a                                 ; $0499: $EA $3A $C0
    ret                                           ; $049C: $C9


Call_000_049D:
    push hl                                       ; $049D: $E5
    ld hl, $C03A                                  ; $049E: $21 $3A $C0
    res 0, [hl]                                   ; $04A1: $CB $86
    pop hl                                        ; $04A3: $E1

Call_000_04A4:
    ret                                           ; $04A4: $C9


Jump_000_04A5:
    push af                                       ; $04A5: $F5
    ld a, [$C03A]                                 ; $04A6: $FA $3A $C0
    bit 1, a                                      ; $04A9: $CB $4F

Jump_000_04AB:
    jp nz, Jump_000_04E6                          ; $04AB: $C2 $E6 $04

    bit 2, a                                      ; $04AE: $CB $57

Jump_000_04B0:
    jp nz, Jump_000_0533                          ; $04B0: $C2 $33 $05

    bit 0, a                                      ; $04B3: $CB $47
    jp nz, Jump_000_04BA                          ; $04B5: $C2 $BA $04

    pop af                                        ; $04B8: $F1
    reti                                          ; $04B9: $D9


Jump_000_04BA:
    ld a, [$C018]                                 ; $04BA: $FA $18 $C0
    or a                                          ; $04BD: $B7
    jr nz, jr_000_04D7                            ; $04BE: $20 $17

    ld a, $28                                     ; $04C0: $3E $28

jr_000_04C2:
    dec a                                         ; $04C2: $3D
    jr nz, jr_000_04C2                            ; $04C3: $20 $FD

    ldh a, [$FFEB]                                ; $04C5: $F0 $EB
    ldh [rBGP], a                                 ; $04C7: $E0 $47
    ld a, $C7                                     ; $04C9: $3E $C7
    ldh [rLCDC], a                                ; $04CB: $E0 $40
    ld [$C018], a                                 ; $04CD: $EA $18 $C0
    ld a, [$C2B6]                                 ; $04D0: $FA $B6 $C2
    ldh [rLYC], a                                 ; $04D3: $E0 $45
    pop af                                        ; $04D5: $F1

Call_000_04D6:
    reti                                          ; $04D6: $D9


Call_000_04D7:
jr_000_04D7:
    ld a, $0A                                     ; $04D7: $3E $0A

jr_000_04D9:
    dec a                                         ; $04D9: $3D
    jr nz, jr_000_04D9                            ; $04DA: $20 $FD

    ldh a, [$FFEC]                                ; $04DC: $F0 $EC
    ldh [rBGP], a                                 ; $04DE: $E0 $47
    ld a, $E7                                     ; $04E0: $3E $E7
    ldh [rLCDC], a                                ; $04E2: $E0 $40
    pop af                                        ; $04E4: $F1
    reti                                          ; $04E5: $D9


Jump_000_04E6:
    ld a, [$C018]                                 ; $04E6: $FA $18 $C0
    or a                                          ; $04E9: $B7
    jr nz, jr_000_051A                            ; $04EA: $20 $2E

    ld a, $06                                     ; $04EC: $3E $06

jr_000_04EE:
    dec a                                         ; $04EE: $3D
    jr nz, jr_000_04EE                            ; $04EF: $20 $FD

    ldh a, [$FFED]                                ; $04F1: $F0 $ED
    ldh [rBGP], a                                 ; $04F3: $E0 $47
    ldh a, [$FFE8]                                ; $04F5: $F0 $E8
    bit 0, a                                      ; $04F7: $CB $47
    jr nz, jr_000_0503                            ; $04F9: $20 $08

    ldh a, [rLCDC]                                ; $04FB: $F0 $40
    res 3, a                                      ; $04FD: $CB $9F

Jump_000_04FF:
    ldh [rLCDC], a                                ; $04FF: $E0 $40
    jr jr_000_0509                                ; $0501: $18 $06

jr_000_0503:
    ldh a, [rLCDC]                                ; $0503: $F0 $40
    set 3, a                                      ; $0505: $CB $DF

Call_000_0507:
Jump_000_0507:
    ldh [rLCDC], a                                ; $0507: $E0 $40

jr_000_0509:
    ldh a, [$FFE6]                                ; $0509: $F0 $E6
    ldh [rSCY], a                                 ; $050B: $E0 $42

Call_000_050D:
    ld a, $7F                                     ; $050D: $3E $7F
    ldh [rLYC], a                                 ; $050F: $E0 $45
    ld [$C018], a                                 ; $0511: $EA $18 $C0
    ldh a, [$FFE7]                                ; $0514: $F0 $E7
    ldh [rSCX], a                                 ; $0516: $E0 $43

Jump_000_0518:
    pop af                                        ; $0518: $F1
    reti                                          ; $0519: $D9


jr_000_051A:
    ld a, $0A                                     ; $051A: $3E $0A

jr_000_051C:
    dec a                                         ; $051C: $3D
    jr nz, jr_000_051C                            ; $051D: $20 $FD

    ldh a, [$FFEE]                                ; $051F: $F0 $EE
    ldh [rBGP], a                                 ; $0521: $E0 $47
    ldh a, [rLCDC]                                ; $0523: $F0 $40
    res 3, a                                      ; $0525: $CB $9F
    ldh [rLCDC], a                                ; $0527: $E0 $40
    ld a, $70                                     ; $0529: $3E $70
    ldh [rSCY], a                                 ; $052B: $E0 $42
    ld a, $00                                     ; $052D: $3E $00
    ldh [rSCX], a                                 ; $052F: $E0 $43
    pop af                                        ; $0531: $F1
    reti                                          ; $0532: $D9


Jump_000_0533:
    ldh a, [rLY]                                  ; $0533: $F0 $44
    push hl                                       ; $0535: $E5
    ld hl, $C2B5                                  ; $0536: $21 $B5 $C2
    cp [hl]                                       ; $0539: $BE
    jr z, jr_000_0587                             ; $053A: $28 $4B

Jump_000_053C:
    inc hl                                        ; $053C: $23
    cp [hl]                                       ; $053D: $BE
    jr z, jr_000_05A1                             ; $053E: $28 $61

    inc hl                                        ; $0540: $23
    cp [hl]                                       ; $0541: $BE
    jr z, jr_000_054A                             ; $0542: $28 $06

    inc hl                                        ; $0544: $23
    cp [hl]                                       ; $0545: $BE
    jr z, jr_000_0577                             ; $0546: $28 $2F

    jr jr_000_05C2                                ; $0548: $18 $78

Call_000_054A:
jr_000_054A:
    ld a, [$C2B5]                                 ; $054A: $FA $B5 $C2
    cp [hl]                                       ; $054D: $BE
    jr nc, jr_000_055A                            ; $054E: $30 $0A

    ld hl, $C2B6                                  ; $0550: $21 $B6 $C2
    ld a, [$C2B8]                                 ; $0553: $FA $B8 $C2
    cp [hl]                                       ; $0556: $BE
    jr c, jr_000_055A                             ; $0557: $38 $01

    ld a, [hl]                                    ; $0559: $7E

jr_000_055A:
    ldh [rLYC], a                                 ; $055A: $E0 $45
    ld a, $C7                                     ; $055C: $3E $C7
    ldh [rLCDC], a                                ; $055E: $E0 $40

Call_000_0560:
    ld a, [$C2B5]                                 ; $0560: $FA $B5 $C2
    cp [hl]                                       ; $0563: $BE
    jr nc, jr_000_0570                            ; $0564: $30 $0A

    ldh a, [$FFE2]                                ; $0566: $F0 $E2
    ldh [rSCY], a                                 ; $0568: $E0 $42
    ldh a, [$FFE4]                                ; $056A: $F0 $E4
    ldh [rSCX], a                                 ; $056C: $E0 $43
    jr jr_000_05C2                                ; $056E: $18 $52

jr_000_0570:
    xor a                                         ; $0570: $AF

Call_000_0571:
    ldh [rSCX], a                                 ; $0571: $E0 $43
    ldh [rSCY], a                                 ; $0573: $E0 $42
    jr jr_000_05C2                                ; $0575: $18 $4B

jr_000_0577:
    ld a, $0A                                     ; $0577: $3E $0A

jr_000_0579:
    dec a                                         ; $0579: $3D
    jr nz, jr_000_0579                            ; $057A: $20 $FD

    ld a, $CF                                     ; $057C: $3E $CF
    ldh [rLCDC], a                                ; $057E: $E0 $40

Call_000_0580:
    xor a                                         ; $0580: $AF
    ldh [rSCX], a                                 ; $0581: $E0 $43
    ldh [rSCY], a                                 ; $0583: $E0 $42
    jr jr_000_05C2                                ; $0585: $18 $3B

jr_000_0587:
    ld hl, $C2B6                                  ; $0587: $21 $B6 $C2
    ld a, [$C2B8]                                 ; $058A: $FA $B8 $C2
    cp [hl]                                       ; $058D: $BE
    jr c, jr_000_0591                             ; $058E: $38 $01

    ld a, [hl]                                    ; $0590: $7E

jr_000_0591:
    ldh [rLYC], a                                 ; $0591: $E0 $45
    ld a, $C7                                     ; $0593: $3E $C7
    ldh [rLCDC], a                                ; $0595: $E0 $40
    ldh a, [$FFE2]                                ; $0597: $F0 $E2

Jump_000_0599:
    ldh [rSCY], a                                 ; $0599: $E0 $42
    ldh a, [$FFE4]                                ; $059B: $F0 $E4
    ldh [rSCX], a                                 ; $059D: $E0 $43
    jr jr_000_05C2                                ; $059F: $18 $21

jr_000_05A1:
    ld a, [$C2B8]                                 ; $05A1: $FA $B8 $C2
    cp [hl]                                       ; $05A4: $BE
    jr z, jr_000_05B7                             ; $05A5: $28 $10

    ldh [rLYC], a                                 ; $05A7: $E0 $45
    ld a, $C7                                     ; $05A9: $3E $C7
    ldh [rLCDC], a                                ; $05AB: $E0 $40
    ld a, $70                                     ; $05AD: $3E $70
    ldh [rSCY], a                                 ; $05AF: $E0 $42
    ld a, $00                                     ; $05B1: $3E $00
    ldh [rSCX], a                                 ; $05B3: $E0 $43
    jr jr_000_05C2                                ; $05B5: $18 $0B

jr_000_05B7:
    ld a, $CF                                     ; $05B7: $3E $CF
    ldh [rLCDC], a                                ; $05B9: $E0 $40
    xor a                                         ; $05BB: $AF
    ldh [rSCX], a                                 ; $05BC: $E0 $43
    ldh [rSCY], a                                 ; $05BE: $E0 $42
    jr jr_000_05C2                                ; $05C0: $18 $00

jr_000_05C2:
    pop hl                                        ; $05C2: $E1
    pop af                                        ; $05C3: $F1
    reti                                          ; $05C4: $D9


Jump_000_05C5:
    di                                            ; $05C5: $F3
    push af                                       ; $05C6: $F5
    push bc                                       ; $05C7: $C5
    push de                                       ; $05C8: $D5
    push hl                                       ; $05C9: $E5
    ldh a, [$FFE0]                                ; $05CA: $F0 $E0
    push af                                       ; $05CC: $F5
    ld hl, $C037                                  ; $05CD: $21 $37 $C0
    bit 6, [hl]                                   ; $05D0: $CB $76
    jp z, Jump_000_060A                           ; $05D2: $CA $0A $06

    res 3, [hl]                                   ; $05D5: $CB $9E
    ld a, [$C27E]                                 ; $05D7: $FA $7E $C2
    or a                                          ; $05DA: $B7
    jp z, Jump_000_0606                           ; $05DB: $CA $06 $06

    bit 5, [hl]                                   ; $05DE: $CB $6E
    jp nz, Jump_000_05E6                          ; $05E0: $C2 $E6 $05

    jp Jump_000_060A                              ; $05E3: $C3 $0A $06


Jump_000_05E6:
    ld a, [$C275]                                 ; $05E6: $FA $75 $C2
    or a                                          ; $05E9: $B7
    jp nz, Jump_000_0606                          ; $05EA: $C2 $06 $06

    ld hl, $C037                                  ; $05ED: $21 $37 $C0
    set 3, [hl]                                   ; $05F0: $CB $DE
    ld a, $80                                     ; $05F2: $3E $80
    ldh [rSC], a                                  ; $05F4: $E0 $02
    ld hl, $C324                                  ; $05F6: $21 $24 $C3

Call_000_05F9:
    inc [hl]                                      ; $05F9: $34
    ld hl, $C27C                                  ; $05FA: $21 $7C $C2
    call Call_000_16EA                            ; $05FD: $CD $EA $16
    call Call_000_1B8D                            ; $0600: $CD $8D $1B
    jp Jump_000_060A                              ; $0603: $C3 $0A $06


Jump_000_0606:
    xor a                                         ; $0606: $AF

Jump_000_0607:
    ld [$C279], a                                 ; $0607: $EA $79 $C2

Call_000_060A:
Jump_000_060A:
    ld a, [$C03A]                                 ; $060A: $FA $3A $C0
    bit 1, a                                      ; $060D: $CB $4F
    jp nz, Jump_000_0622                          ; $060F: $C2 $22 $06

Call_000_0612:
    bit 2, a                                      ; $0612: $CB $57
    jp nz, Jump_000_0622                          ; $0614: $C2 $22 $06

    ldh a, [$FFE2]                                ; $0617: $F0 $E2
    ldh [rSCY], a                                 ; $0619: $E0 $42
    ldh a, [$FFE4]                                ; $061B: $F0 $E4
    ldh [rSCX], a                                 ; $061D: $E0 $43

Jump_000_061F:
    jp Jump_000_0627                              ; $061F: $C3 $27 $06


Jump_000_0622:
    xor a                                         ; $0622: $AF
    ldh [rSCY], a                                 ; $0623: $E0 $42
    ldh [rSCX], a                                 ; $0625: $E0 $43

Jump_000_0627:
    ld a, [$C038]                                 ; $0627: $FA $38 $C0
    bit 3, a                                      ; $062A: $CB $5F
    jp nz, Jump_000_085B                          ; $062C: $C2 $5B $08

    ld a, [$C037]                                 ; $062F: $FA $37 $C0
    bit 3, a                                      ; $0632: $CB $5F
    jp nz, Jump_000_085B                          ; $0634: $C2 $5B $08

    call $FF80                                    ; $0637: $CD $80 $FF
    ld a, [$C01D]                                 ; $063A: $FA $1D $C0
    or a                                          ; $063D: $B7
    jp nz, Jump_000_085B                          ; $063E: $C2 $5B $08

    xor a                                         ; $0641: $AF
    ld [$C01E], a                                 ; $0642: $EA $1E $C0
    ld a, [$D8C5]                                 ; $0645: $FA $C5 $D8

Call_000_0648:
    or a                                          ; $0648: $B7
    jp nz, Jump_000_0656                          ; $0649: $C2 $56 $06

    ld a, [$D8C9]                                 ; $064C: $FA $C9 $D8
    or a                                          ; $064F: $B7
    jp nz, Jump_000_068F                          ; $0650: $C2 $8F $06

    jp Jump_000_06CA                              ; $0653: $C3 $CA $06


Jump_000_0656:
    ld b, $03                                     ; $0656: $06 $03
    cp b                                          ; $0658: $B8
    jp nc, Jump_000_065D                          ; $0659: $D2 $5D $06

    ld b, a                                       ; $065C: $47

Jump_000_065D:
    sub b                                         ; $065D: $90
    ld [$D8C5], a                                 ; $065E: $EA $C5 $D8
    ld a, [$D8C0]                                 ; $0661: $FA $C0 $D8
    ld e, a                                       ; $0664: $5F
    ld a, [$D8C1]                                 ; $0665: $FA $C1 $D8
    ld d, a                                       ; $0668: $57
    ld a, [$D8C2]                                 ; $0669: $FA $C2 $D8
    ld l, a                                       ; $066C: $6F
    ld a, [$D8C3]                                 ; $066D: $FA $C3 $D8
    ld h, a                                       ; $0670: $67
    ld a, [$D8C4]                                 ; $0671: $FA $C4 $D8
    ldh [$FFE0], a                                ; $0674: $E0 $E0
    ld [$2000], a                                 ; $0676: $EA $00 $20
    call Call_000_1188                            ; $0679: $CD $88 $11
    ld a, e                                       ; $067C: $7B
    ld [$D8C0], a                                 ; $067D: $EA $C0 $D8
    ld a, d                                       ; $0680: $7A
    ld [$D8C1], a                                 ; $0681: $EA $C1 $D8
    ld a, l                                       ; $0684: $7D
    ld [$D8C2], a                                 ; $0685: $EA $C2 $D8
    ld a, h                                       ; $0688: $7C
    ld [$D8C3], a                                 ; $0689: $EA $C3 $D8
    jp Jump_000_06C5                              ; $068C: $C3 $C5 $06


Jump_000_068F:
    ld b, $03                                     ; $068F: $06 $03
    cp b                                          ; $0691: $B8
    jp nc, Jump_000_0696                          ; $0692: $D2 $96 $06

    ld b, a                                       ; $0695: $47

Jump_000_0696:
    sub b                                         ; $0696: $90
    ld [$D8C9], a                                 ; $0697: $EA $C9 $D8
    ld a, [$D8C0]                                 ; $069A: $FA $C0 $D8
    ld e, a                                       ; $069D: $5F
    ld a, [$D8C1]                                 ; $069E: $FA $C1 $D8
    ld d, a                                       ; $06A1: $57
    ld a, [$D8C6]                                 ; $06A2: $FA $C6 $D8
    ld l, a                                       ; $06A5: $6F
    ld a, [$D8C7]                                 ; $06A6: $FA $C7 $D8
    ld h, a                                       ; $06A9: $67
    ld a, [$D8C8]                                 ; $06AA: $FA $C8 $D8
    ldh [$FFE0], a                                ; $06AD: $E0 $E0
    ld [$2000], a                                 ; $06AF: $EA $00 $20
    call Call_000_1188                            ; $06B2: $CD $88 $11
    ld a, e                                       ; $06B5: $7B
    ld [$D8C0], a                                 ; $06B6: $EA $C0 $D8
    ld a, d                                       ; $06B9: $7A
    ld [$D8C1], a                                 ; $06BA: $EA $C1 $D8
    ld a, l                                       ; $06BD: $7D
    ld [$D8C6], a                                 ; $06BE: $EA $C6 $D8
    ld a, h                                       ; $06C1: $7C
    ld [$D8C7], a                                 ; $06C2: $EA $C7 $D8

Jump_000_06C5:
    ld hl, $C01E                                  ; $06C5: $21 $1E $C0
    set 0, [hl]                                   ; $06C8: $CB $C6

Jump_000_06CA:
    ld a, [$D8E5]                                 ; $06CA: $FA $E5 $D8
    or a                                          ; $06CD: $B7
    jp nz, Jump_000_06DB                          ; $06CE: $C2 $DB $06

    ld a, [$D8E9]                                 ; $06D1: $FA $E9 $D8
    or a                                          ; $06D4: $B7
    jp nz, Jump_000_0714                          ; $06D5: $C2 $14 $07

    jp Jump_000_074F                              ; $06D8: $C3 $4F $07


Jump_000_06DB:
    ld b, $03                                     ; $06DB: $06 $03
    cp b                                          ; $06DD: $B8
    jp nc, Jump_000_06E2                          ; $06DE: $D2 $E2 $06

    ld b, a                                       ; $06E1: $47

Jump_000_06E2:
    sub b                                         ; $06E2: $90
    ld [$D8E5], a                                 ; $06E3: $EA $E5 $D8
    ld a, [$D8E0]                                 ; $06E6: $FA $E0 $D8
    ld e, a                                       ; $06E9: $5F
    ld a, [$D8E1]                                 ; $06EA: $FA $E1 $D8
    ld d, a                                       ; $06ED: $57
    ld a, [$D8E2]                                 ; $06EE: $FA $E2 $D8
    ld l, a                                       ; $06F1: $6F
    ld a, [$D8E3]                                 ; $06F2: $FA $E3 $D8
    ld h, a                                       ; $06F5: $67
    ld a, [$D8E4]                                 ; $06F6: $FA $E4 $D8

Call_000_06F9:
Jump_000_06F9:
    ldh [$FFE0], a                                ; $06F9: $E0 $E0
    ld [$2000], a                                 ; $06FB: $EA $00 $20
    call Call_000_1188                            ; $06FE: $CD $88 $11
    ld a, e                                       ; $0701: $7B

Call_000_0702:
    ld [$D8E0], a                                 ; $0702: $EA $E0 $D8
    ld a, d                                       ; $0705: $7A
    ld [$D8E1], a                                 ; $0706: $EA $E1 $D8
    ld a, l                                       ; $0709: $7D
    ld [$D8E2], a                                 ; $070A: $EA $E2 $D8
    ld a, h                                       ; $070D: $7C
    ld [$D8E3], a                                 ; $070E: $EA $E3 $D8
    jp Jump_000_074A                              ; $0711: $C3 $4A $07


Jump_000_0714:
    ld b, $03                                     ; $0714: $06 $03
    cp b                                          ; $0716: $B8
    jp nc, Jump_000_071B                          ; $0717: $D2 $1B $07

    ld b, a                                       ; $071A: $47

Jump_000_071B:
    sub b                                         ; $071B: $90
    ld [$D8E9], a                                 ; $071C: $EA $E9 $D8
    ld a, [$D8E0]                                 ; $071F: $FA $E0 $D8
    ld e, a                                       ; $0722: $5F
    ld a, [$D8E1]                                 ; $0723: $FA $E1 $D8
    ld d, a                                       ; $0726: $57
    ld a, [$D8E6]                                 ; $0727: $FA $E6 $D8
    ld l, a                                       ; $072A: $6F
    ld a, [$D8E7]                                 ; $072B: $FA $E7 $D8
    ld h, a                                       ; $072E: $67
    ld a, [$D8E8]                                 ; $072F: $FA $E8 $D8
    ldh [$FFE0], a                                ; $0732: $E0 $E0
    ld [$2000], a                                 ; $0734: $EA $00 $20
    call Call_000_1188                            ; $0737: $CD $88 $11
    ld a, e                                       ; $073A: $7B
    ld [$D8E0], a                                 ; $073B: $EA $E0 $D8
    ld a, d                                       ; $073E: $7A
    ld [$D8E1], a                                 ; $073F: $EA $E1 $D8

Call_000_0742:
    ld a, l                                       ; $0742: $7D
    ld [$D8E6], a                                 ; $0743: $EA $E6 $D8
    ld a, h                                       ; $0746: $7C
    ld [$D8E7], a                                 ; $0747: $EA $E7 $D8

Jump_000_074A:
    ld hl, $C01E                                  ; $074A: $21 $1E $C0
    set 1, [hl]                                   ; $074D: $CB $CE

Jump_000_074F:
    ld a, [$C01E]                                 ; $074F: $FA $1E $C0
    bit 0, a                                      ; $0752: $CB $47
    jp z, Jump_000_07D5                           ; $0754: $CA $D5 $07

    ld a, [$D8C5]                                 ; $0757: $FA $C5 $D8
    or a                                          ; $075A: $B7
    jp nz, Jump_000_07D5                          ; $075B: $C2 $D5 $07

    ld a, [$D8C9]                                 ; $075E: $FA $C9 $D8
    or a                                          ; $0761: $B7
    jp nz, Jump_000_07D5                          ; $0762: $C2 $D5 $07

    ld hl, $D680                                  ; $0765: $21 $80 $D6
    res 0, [hl]                                   ; $0768: $CB $86
    set 3, [hl]                                   ; $076A: $CB $DE
    ld hl, $D922                                  ; $076C: $21 $22 $D9
    bit 0, [hl]                                   ; $076F: $CB $46
    jp nz, Jump_000_07A0                          ; $0771: $C2 $A0 $07

    ld hl, $D94C                                  ; $0774: $21 $4C $D9
    ld de, $D946                                  ; $0777: $11 $46 $D9
    ld a, [hl]                                    ; $077A: $7E
    or a                                          ; $077B: $B7

Jump_000_077C:
    jp z, Jump_000_07A0                           ; $077C: $CA $A0 $07

    ld [de], a                                    ; $077F: $12
    ld [hl], $00                                  ; $0780: $36 $00
    inc de                                        ; $0782: $13
    inc hl                                        ; $0783: $23
    ld a, [hl]                                    ; $0784: $7E
    ld [de], a                                    ; $0785: $12

Jump_000_0786:
    ld [hl], $00                                  ; $0786: $36 $00
    inc de                                        ; $0788: $13
    inc hl                                        ; $0789: $23
    ld a, [hl]                                    ; $078A: $7E
    ld [de], a                                    ; $078B: $12
    ld [hl], $00                                  ; $078C: $36 $00
    inc de                                        ; $078E: $13
    inc hl                                        ; $078F: $23
    ld a, [hl]                                    ; $0790: $7E
    ld [de], a                                    ; $0791: $12
    ld [hl], $00                                  ; $0792: $36 $00
    inc de                                        ; $0794: $13
    inc hl                                        ; $0795: $23
    ld a, [hl]                                    ; $0796: $7E
    ld [de], a                                    ; $0797: $12
    ld [hl], $00                                  ; $0798: $36 $00
    inc de                                        ; $079A: $13
    inc hl                                        ; $079B: $23
    ld a, [hl]                                    ; $079C: $7E
    ld [de], a                                    ; $079D: $12
    ld [hl], $00                                  ; $079E: $36 $00

Jump_000_07A0:
    ld hl, $D8CA                                  ; $07A0: $21 $CA $D8

Call_000_07A3:
    ld de, $D8D0                                  ; $07A3: $11 $D0 $D8
    ld a, [hl+]                                   ; $07A6: $2A
    ld [de], a                                    ; $07A7: $12
    inc de                                        ; $07A8: $13
    ld a, [hl+]                                   ; $07A9: $2A
    ld [de], a                                    ; $07AA: $12
    inc de                                        ; $07AB: $13
    ld a, [hl+]                                   ; $07AC: $2A
    ld [de], a                                    ; $07AD: $12
    inc de                                        ; $07AE: $13

Jump_000_07AF:
    ld a, [hl+]                                   ; $07AF: $2A
    ld [de], a                                    ; $07B0: $12
    inc de                                        ; $07B1: $13
    ld a, [hl+]                                   ; $07B2: $2A
    ld [de], a                                    ; $07B3: $12
    inc de                                        ; $07B4: $13
    ld a, [hl]                                    ; $07B5: $7E
    ld [de], a                                    ; $07B6: $12
    ld a, [$D682]                                 ; $07B7: $FA $82 $D6
    ld [$D683], a                                 ; $07BA: $EA $83 $D6

Call_000_07BD:
    ld a, [$D691]                                 ; $07BD: $FA $91 $D6
    ld [$D695], a                                 ; $07C0: $EA $95 $D6
    ld a, [$D692]                                 ; $07C3: $FA $92 $D6
    ld [$D696], a                                 ; $07C6: $EA $96 $D6
    ld a, [$D693]                                 ; $07C9: $FA $93 $D6
    ld [$D697], a                                 ; $07CC: $EA $97 $D6

Jump_000_07CF:
    ld a, [$D694]                                 ; $07CF: $FA $94 $D6
    ld [$D698], a                                 ; $07D2: $EA $98 $D6

Jump_000_07D5:
    ld a, [$C01E]                                 ; $07D5: $FA $1E $C0

Jump_000_07D8:
    bit 1, a                                      ; $07D8: $CB $4F
    jp z, Jump_000_085B                           ; $07DA: $CA $5B $08

    ld a, [$D8E5]                                 ; $07DD: $FA $E5 $D8

Jump_000_07E0:
    or a                                          ; $07E0: $B7
    jp nz, Jump_000_085B                          ; $07E1: $C2 $5B $08

    ld a, [$D8E9]                                 ; $07E4: $FA $E9 $D8
    or a                                          ; $07E7: $B7
    jp nz, Jump_000_085B                          ; $07E8: $C2 $5B $08

    ld hl, $D6C0                                  ; $07EB: $21 $C0 $D6

Call_000_07EE:
    res 0, [hl]                                   ; $07EE: $CB $86
    set 3, [hl]                                   ; $07F0: $CB $DE
    ld hl, $DA22                                  ; $07F2: $21 $22 $DA
    bit 0, [hl]                                   ; $07F5: $CB $46
    jp nz, Jump_000_0826                          ; $07F7: $C2 $26 $08

    ld hl, $DA4C                                  ; $07FA: $21 $4C $DA
    ld de, $DA46                                  ; $07FD: $11 $46 $DA
    ld a, [hl]                                    ; $0800: $7E

Call_000_0801:
    or a                                          ; $0801: $B7

Jump_000_0802:
    jp z, Jump_000_0826                           ; $0802: $CA $26 $08

    ld [de], a                                    ; $0805: $12
    ld [hl], $00                                  ; $0806: $36 $00
    inc de                                        ; $0808: $13
    inc hl                                        ; $0809: $23
    ld a, [hl]                                    ; $080A: $7E

Call_000_080B:
    ld [de], a                                    ; $080B: $12

Jump_000_080C:
    ld [hl], $00                                  ; $080C: $36 $00
    inc de                                        ; $080E: $13

Call_000_080F:
    inc hl                                        ; $080F: $23

Jump_000_0810:
    ld a, [hl]                                    ; $0810: $7E
    ld [de], a                                    ; $0811: $12
    ld [hl], $00                                  ; $0812: $36 $00
    inc de                                        ; $0814: $13
    inc hl                                        ; $0815: $23
    ld a, [hl]                                    ; $0816: $7E
    ld [de], a                                    ; $0817: $12

Jump_000_0818:
    ld [hl], $00                                  ; $0818: $36 $00
    inc de                                        ; $081A: $13
    inc hl                                        ; $081B: $23
    ld a, [hl]                                    ; $081C: $7E
    ld [de], a                                    ; $081D: $12
    ld [hl], $00                                  ; $081E: $36 $00

Jump_000_0820:
    inc de                                        ; $0820: $13
    inc hl                                        ; $0821: $23
    ld a, [hl]                                    ; $0822: $7E
    ld [de], a                                    ; $0823: $12

Call_000_0824:
    ld [hl], $00                                  ; $0824: $36 $00

Jump_000_0826:
    ld hl, $D8EA                                  ; $0826: $21 $EA $D8
    ld de, $D8F0                                  ; $0829: $11 $F0 $D8
    ld a, [hl+]                                   ; $082C: $2A
    ld [de], a                                    ; $082D: $12
    inc de                                        ; $082E: $13
    ld a, [hl+]                                   ; $082F: $2A

Call_000_0830:
    ld [de], a                                    ; $0830: $12
    inc de                                        ; $0831: $13

Call_000_0832:
    ld a, [hl+]                                   ; $0832: $2A
    ld [de], a                                    ; $0833: $12
    inc de                                        ; $0834: $13
    ld a, [hl+]                                   ; $0835: $2A
    ld [de], a                                    ; $0836: $12
    inc de                                        ; $0837: $13

Jump_000_0838:
    ld a, [hl+]                                   ; $0838: $2A
    ld [de], a                                    ; $0839: $12
    inc de                                        ; $083A: $13
    ld a, [hl]                                    ; $083B: $7E
    ld [de], a                                    ; $083C: $12
    ld a, [$D6C2]                                 ; $083D: $FA $C2 $D6

Jump_000_0840:
    ld [$D6C3], a                                 ; $0840: $EA $C3 $D6
    ld a, [$D6D1]                                 ; $0843: $FA $D1 $D6
    ld [$D6D5], a                                 ; $0846: $EA $D5 $D6

Jump_000_0849:
    ld a, [$D6D2]                                 ; $0849: $FA $D2 $D6
    ld [$D6D6], a                                 ; $084C: $EA $D6 $D6

Jump_000_084F:
    ld a, [$D6D3]                                 ; $084F: $FA $D3 $D6

Call_000_0852:
Jump_000_0852:
    ld [$D6D7], a                                 ; $0852: $EA $D7 $D6
    ld a, [$D6D4]                                 ; $0855: $FA $D4 $D6
    ld [$D6D8], a                                 ; $0858: $EA $D8 $D6

Jump_000_085B:
    ldh a, [rSTAT]                                ; $085B: $F0 $41
    and $40                                       ; $085D: $E6 $40
    jp z, Jump_000_08C5                           ; $085F: $CA $C5 $08

Call_000_0862:
    ld a, [$C03A]                                 ; $0862: $FA $3A $C0
    bit 1, a                                      ; $0865: $CB $4F
    jr nz, jr_000_0877                            ; $0867: $20 $0E

Call_000_0869:
    bit 2, a                                      ; $0869: $CB $57
    jr nz, jr_000_0892                            ; $086B: $20 $25

    bit 0, a                                      ; $086D: $CB $47
    jr nz, jr_000_0873                            ; $086F: $20 $02

    jr jr_000_08C5                                ; $0871: $18 $52

jr_000_0873:
    ld a, $E7                                     ; $0873: $3E $E7
    ldh [rLCDC], a                                ; $0875: $E0 $40

jr_000_0877:
    ldh a, [$FFE9]                                ; $0877: $F0 $E9
    ldh [$FFE8], a                                ; $0879: $E0 $E8
    ldh a, [$FFE4]                                ; $087B: $F0 $E4
    ldh [$FFE7], a                                ; $087D: $E0 $E7
    ldh a, [$FFE2]                                ; $087F: $F0 $E2
    ldh [$FFE6], a                                ; $0881: $E0 $E6
    ldh a, [$FFEB]                                ; $0883: $F0 $EB
    ldh [$FFED], a                                ; $0885: $E0 $ED
    ldh a, [$FFEC]                                ; $0887: $F0 $EC

Call_000_0889:
    ldh [$FFEE], a                                ; $0889: $E0 $EE
    ld a, [$C2B5]                                 ; $088B: $FA $B5 $C2
    ldh [rLYC], a                                 ; $088E: $E0 $45

Call_000_0890:
    jr jr_000_08BD                                ; $0890: $18 $2B

jr_000_0892:
    ld a, [$C2BB]                                 ; $0892: $FA $BB $C2
    or a                                          ; $0895: $B7
    jr nz, jr_000_08AC                            ; $0896: $20 $14

    ld a, $CF                                     ; $0898: $3E $CF
    ldh [rLCDC], a                                ; $089A: $E0 $40
    ld a, [$C2B9]                                 ; $089C: $FA $B9 $C2
    ld [$C2B7], a                                 ; $089F: $EA $B7 $C2
    ldh [rLYC], a                                 ; $08A2: $E0 $45
    ld a, [$C2BA]                                 ; $08A4: $FA $BA $C2
    ld [$C2B8], a                                 ; $08A7: $EA $B8 $C2
    jr jr_000_08BD                                ; $08AA: $18 $11

jr_000_08AC:
    xor a                                         ; $08AC: $AF

Jump_000_08AD:
    ld [$C2BB], a                                 ; $08AD: $EA $BB $C2
    ld hl, $C03A                                  ; $08B0: $21 $3A $C0
    set 1, [hl]                                   ; $08B3: $CB $CE
    res 2, [hl]                                   ; $08B5: $CB $96
    ld a, $C7                                     ; $08B7: $3E $C7
    ldh [rLCDC], a                                ; $08B9: $E0 $40
    jr jr_000_0877                                ; $08BB: $18 $BA

Jump_000_08BD:
jr_000_08BD:
    xor a                                         ; $08BD: $AF
    ld [$C018], a                                 ; $08BE: $EA $18 $C0
    ldh a, [$FFEA]                                ; $08C1: $F0 $EA

Jump_000_08C3:
    ldh [rBGP], a                                 ; $08C3: $E0 $47

Jump_000_08C5:
jr_000_08C5:
    call Call_000_0958                            ; $08C5: $CD $58 $09
    ld a, [$C038]                                 ; $08C8: $FA $38 $C0
    bit 3, a                                      ; $08CB: $CB $5F
    jp nz, Jump_000_0903                          ; $08CD: $C2 $03 $09

    ld a, [$C037]                                 ; $08D0: $FA $37 $C0
    bit 3, a                                      ; $08D3: $CB $5F
    jp nz, Jump_000_0903                          ; $08D5: $C2 $03 $09

    call Call_000_16D9                            ; $08D8: $CD $D9 $16
    ld hl, $C017                                  ; $08DB: $21 $17 $C0
    inc [hl]                                      ; $08DE: $34
    ld a, [$C019]                                 ; $08DF: $FA $19 $C0
    or a                                          ; $08E2: $B7
    jr z, jr_000_08E9                             ; $08E3: $28 $04

    dec a                                         ; $08E5: $3D
    ld [$C019], a                                 ; $08E6: $EA $19 $C0

jr_000_08E9:
    ld hl, $FFC8                                  ; $08E9: $21 $C8 $FF

Call_000_08EC:
    ld de, $0008                                  ; $08EC: $11 $08 $00
    ld b, $03                                     ; $08EF: $06 $03

Jump_000_08F1:
    bit 0, [hl]                                   ; $08F1: $CB $46
    jp z, Jump_000_08FE                           ; $08F3: $CA $FE $08

    inc hl                                        ; $08F6: $23

Call_000_08F7:
    dec [hl]                                      ; $08F7: $35

Call_000_08F8:
    dec hl                                        ; $08F8: $2B
    jp nz, Jump_000_08FE                          ; $08F9: $C2 $FE $08

    ld [hl], $04                                  ; $08FC: $36 $04

Call_000_08FE:
Jump_000_08FE:
    add hl, de                                    ; $08FE: $19

Call_000_08FF:
Jump_000_08FF:
    dec b                                         ; $08FF: $05
    jp nz, Jump_000_08F1                          ; $0900: $C2 $F1 $08

Jump_000_0903:
    pop af                                        ; $0903: $F1
    ldh [$FFE0], a                                ; $0904: $E0 $E0
    ld [$2000], a                                 ; $0906: $EA $00 $20
    pop hl                                        ; $0909: $E1
    pop de                                        ; $090A: $D1
    pop bc                                        ; $090B: $C1
    pop af                                        ; $090C: $F1

Call_000_090D:
    reti                                          ; $090D: $D9


Call_000_090E:
    ld a, [$C037]                                 ; $090E: $FA $37 $C0
    bit 7, a                                      ; $0911: $CB $7F
    ret z                                         ; $0913: $C8

    ldh a, [rLY]                                  ; $0914: $F0 $44
    cp $76                                        ; $0916: $FE $76
    ret nc                                        ; $0918: $D0

    ld a, [$C03D]                                 ; $0919: $FA $3D $C0
    or a                                          ; $091C: $B7
    jp nz, Jump_000_0928                          ; $091D: $C2 $28 $09

    ld a, [$C04E]                                 ; $0920: $FA $4E $C0
    or a                                          ; $0923: $B7
    jp nz, Jump_000_0933                          ; $0924: $C2 $33 $09

    ret                                           ; $0927: $C9


Jump_000_0928:
    ld hl, $C03E                                  ; $0928: $21 $3E $C0
    call Call_000_02C6                            ; $092B: $CD $C6 $02
    xor a                                         ; $092E: $AF
    ld [$C03D], a                                 ; $092F: $EA $3D $C0
    ret                                           ; $0932: $C9


Call_000_0933:
Jump_000_0933:
    bit 0, a                                      ; $0933: $CB $47
    jr z, jr_000_0943                             ; $0935: $28 $0C

    res 0, a                                      ; $0937: $CB $87
    ld [$C04E], a                                 ; $0939: $EA $4E $C0
    ld hl, $C04F                                  ; $093C: $21 $4F $C0
    call Call_000_02C6                            ; $093F: $CD $C6 $02
    ret                                           ; $0942: $C9


jr_000_0943:
    bit 1, a                                      ; $0943: $CB $4F
    jr z, jr_000_0953                             ; $0945: $28 $0C

    res 1, a                                      ; $0947: $CB $8F
    ld [$C04E], a                                 ; $0949: $EA $4E $C0
    ld hl, $C05F                                  ; $094C: $21 $5F $C0
    call Call_000_02C6                            ; $094F: $CD $C6 $02
    ret                                           ; $0952: $C9


jr_000_0953:
    xor a                                         ; $0953: $AF
    ld [$C04E], a                                 ; $0954: $EA $4E $C0
    ret                                           ; $0957: $C9


Call_000_0958:
    ld a, [$C037]                                 ; $0958: $FA $37 $C0
    bit 7, a                                      ; $095B: $CB $7F

Jump_000_095D:
    ret nz                                        ; $095D: $C0

    ldh a, [$FFBE]                                ; $095E: $F0 $BE
    or a                                          ; $0960: $B7
    jr z, jr_000_0977                             ; $0961: $28 $14

    xor a                                         ; $0963: $AF
    ldh [$FFBE], a                                ; $0964: $E0 $BE
    ld hl, $D380                                  ; $0966: $21 $80 $D3
    ld a, $80                                     ; $0969: $3E $80
    ldh [rBCPS], a                                ; $096B: $E0 $68
    ld b, $40                                     ; $096D: $06 $40

jr_000_096F:
    ld a, [hl+]                                   ; $096F: $2A
    ldh [rBCPD], a                                ; $0970: $E0 $69
    dec b                                         ; $0972: $05
    jr nz, jr_000_096F                            ; $0973: $20 $FA

    jr jr_000_098E                                ; $0975: $18 $17

jr_000_0977:
    ldh a, [$FFBF]                                ; $0977: $F0 $BF
    or a                                          ; $0979: $B7
    jr z, jr_000_098E                             ; $097A: $28 $12

    xor a                                         ; $097C: $AF
    ldh [$FFBF], a                                ; $097D: $E0 $BF
    ld hl, $D3C0                                  ; $097F: $21 $C0 $D3
    ld a, $80                                     ; $0982: $3E $80
    ldh [rOCPS], a                                ; $0984: $E0 $6A
    ld b, $40                                     ; $0986: $06 $40

jr_000_0988:
    ld a, [hl+]                                   ; $0988: $2A
    ldh [rOCPD], a                                ; $0989: $E0 $6B
    dec b                                         ; $098B: $05
    jr nz, jr_000_0988                            ; $098C: $20 $FA

jr_000_098E:
    ret                                           ; $098E: $C9


Call_000_098F:
    push af                                       ; $098F: $F5
    push bc                                       ; $0990: $C5
    push de                                       ; $0991: $D5
    push hl                                       ; $0992: $E5
    ldh a, [$FFE0]                                ; $0993: $F0 $E0
    push af                                       ; $0995: $F5
    ld a, $00                                     ; $0996: $3E $00

Jump_000_0998:
    ld [$C021], a                                 ; $0998: $EA $21 $C0
    ld a, $DF                                     ; $099B: $3E $DF
    ld [$C022], a                                 ; $099D: $EA $22 $C0
    xor a                                         ; $09A0: $AF
    ld [$C020], a                                 ; $09A1: $EA $20 $C0
    ld a, [$C03A]                                 ; $09A4: $FA $3A $C0
    bit 1, a                                      ; $09A7: $CB $4F
    jp z, Jump_000_0A41                           ; $09A9: $CA $41 $0A

    ld a, [$C017]                                 ; $09AC: $FA $17 $C0
    bit 0, a                                      ; $09AF: $CB $47
    jr nz, jr_000_09EB                            ; $09B1: $20 $38

    call Call_000_0A9B                            ; $09B3: $CD $9B $0A
    call Call_000_0B0D                            ; $09B6: $CD $0D $0B
    ld hl, $D700                                  ; $09B9: $21 $00 $D7
    call Call_000_0B7F                            ; $09BC: $CD $7F $0B
    ld hl, $D780                                  ; $09BF: $21 $80 $D7
    call Call_000_0B7F                            ; $09C2: $CD $7F $0B
    ld hl, $D680                                  ; $09C5: $21 $80 $D6
    call Call_000_0B7F                            ; $09C8: $CD $7F $0B
    ld hl, $D740                                  ; $09CB: $21 $40 $D7
    call Call_000_0B7F                            ; $09CE: $CD $7F $0B
    ld hl, $D7C0                                  ; $09D1: $21 $C0 $D7
    call Call_000_0B7F                            ; $09D4: $CD $7F $0B
    ld hl, $D6C0                                  ; $09D7: $21 $C0 $D6
    call Call_000_0B7F                            ; $09DA: $CD $7F $0B
    ld hl, $D800                                  ; $09DD: $21 $00 $D8
    call Call_000_0B7F                            ; $09E0: $CD $7F $0B
    ld hl, $D840                                  ; $09E3: $21 $40 $D8
    call Call_000_0B7F                            ; $09E6: $CD $7F $0B

Call_000_09E9:
    jr jr_000_0A21                                ; $09E9: $18 $36

jr_000_09EB:
    call Call_000_0B0D                            ; $09EB: $CD $0D $0B
    call Call_000_0A9B                            ; $09EE: $CD $9B $0A
    ld hl, $D740                                  ; $09F1: $21 $40 $D7
    call Call_000_0B7F                            ; $09F4: $CD $7F $0B
    ld hl, $D7C0                                  ; $09F7: $21 $C0 $D7
    call Call_000_0B7F                            ; $09FA: $CD $7F $0B
    ld hl, $D6C0                                  ; $09FD: $21 $C0 $D6
    call Call_000_0B7F                            ; $0A00: $CD $7F $0B
    ld hl, $D700                                  ; $0A03: $21 $00 $D7
    call Call_000_0B7F                            ; $0A06: $CD $7F $0B
    ld hl, $D780                                  ; $0A09: $21 $80 $D7

Jump_000_0A0C:
    call Call_000_0B7F                            ; $0A0C: $CD $7F $0B
    ld hl, $D680                                  ; $0A0F: $21 $80 $D6
    call Call_000_0B7F                            ; $0A12: $CD $7F $0B
    ld hl, $D840                                  ; $0A15: $21 $40 $D8
    call Call_000_0B7F                            ; $0A18: $CD $7F $0B
    ld hl, $D800                                  ; $0A1B: $21 $00 $D8
    call Call_000_0B7F                            ; $0A1E: $CD $7F $0B

Jump_000_0A21:
jr_000_0A21:
    ld a, [$C021]                                 ; $0A21: $FA $21 $C0
    ld l, a                                       ; $0A24: $6F
    ld a, [$C022]                                 ; $0A25: $FA $22 $C0
    ld h, a                                       ; $0A28: $67
    ld a, $A0                                     ; $0A29: $3E $A0

jr_000_0A2B:
    cp l                                          ; $0A2B: $BD
    jr c, jr_000_0A36                             ; $0A2C: $38 $08

    ld [hl], $00                                  ; $0A2E: $36 $00
    inc hl                                        ; $0A30: $23
    inc hl                                        ; $0A31: $23
    inc hl                                        ; $0A32: $23
    inc hl                                        ; $0A33: $23
    jr jr_000_0A2B                                ; $0A34: $18 $F5

jr_000_0A36:
    pop af                                        ; $0A36: $F1
    ldh [$FFE0], a                                ; $0A37: $E0 $E0

Jump_000_0A39:
    ld [$2000], a                                 ; $0A39: $EA $00 $20
    pop hl                                        ; $0A3C: $E1
    pop de                                        ; $0A3D: $D1
    pop bc                                        ; $0A3E: $C1
    pop af                                        ; $0A3F: $F1
    ret                                           ; $0A40: $C9


Jump_000_0A41:
    ld a, [$C017]                                 ; $0A41: $FA $17 $C0
    bit 0, a                                      ; $0A44: $CB $47
    jr nz, jr_000_0A62                            ; $0A46: $20 $1A

    ld hl, $D700                                  ; $0A48: $21 $00 $D7
    call Call_000_0B7F                            ; $0A4B: $CD $7F $0B
    ld hl, $D740                                  ; $0A4E: $21 $40 $D7
    call Call_000_0B7F                            ; $0A51: $CD $7F $0B
    ld hl, $D680                                  ; $0A54: $21 $80 $D6
    call Call_000_0B7F                            ; $0A57: $CD $7F $0B
    ld hl, $D6C0                                  ; $0A5A: $21 $C0 $D6

Call_000_0A5D:
    call Call_000_0B7F                            ; $0A5D: $CD $7F $0B
    jr jr_000_0A7A                                ; $0A60: $18 $18

jr_000_0A62:
    ld hl, $D740                                  ; $0A62: $21 $40 $D7
    call Call_000_0B7F                            ; $0A65: $CD $7F $0B
    ld hl, $D700                                  ; $0A68: $21 $00 $D7
    call Call_000_0B7F                            ; $0A6B: $CD $7F $0B
    ld hl, $D6C0                                  ; $0A6E: $21 $C0 $D6
    call Call_000_0B7F                            ; $0A71: $CD $7F $0B
    ld hl, $D680                                  ; $0A74: $21 $80 $D6
    call Call_000_0B7F                            ; $0A77: $CD $7F $0B

jr_000_0A7A:
    ld hl, $D780                                  ; $0A7A: $21 $80 $D7
    call Call_000_0B7F                            ; $0A7D: $CD $7F $0B
    ld hl, $D7C0                                  ; $0A80: $21 $C0 $D7
    call Call_000_0B7F                            ; $0A83: $CD $7F $0B
    ld hl, $D800                                  ; $0A86: $21 $00 $D8
    call Call_000_0B7F                            ; $0A89: $CD $7F $0B
    ld hl, $D840                                  ; $0A8C: $21 $40 $D8
    call Call_000_0B7F                            ; $0A8F: $CD $7F $0B
    ld hl, $D880                                  ; $0A92: $21 $80 $D8
    call Call_000_0B7F                            ; $0A95: $CD $7F $0B
    jp Jump_000_0A21                              ; $0A98: $C3 $21 $0A


Call_000_0A9B:
    ld a, [$D680]                                 ; $0A9B: $FA $80 $D6
    bit 7, a                                      ; $0A9E: $CB $7F
    ret z                                         ; $0AA0: $C8

    xor a                                         ; $0AA1: $AF
    ld [$D6A0], a                                 ; $0AA2: $EA $A0 $D6
    ld a, [$C2C2]                                 ; $0AA5: $FA $C2 $C2
    bit 7, a                                      ; $0AA8: $CB $7F
    jr nz, jr_000_0AE1                            ; $0AAA: $20 $35

    ld a, [$C2AA]                                 ; $0AAC: $FA $AA $C2
    cpl                                           ; $0AAF: $2F
    inc a                                         ; $0AB0: $3C
    ld b, a                                       ; $0AB1: $47
    ld a, [$D684]                                 ; $0AB2: $FA $84 $D6
    add b                                         ; $0AB5: $80
    add $08                                       ; $0AB6: $C6 $08
    cp $10                                        ; $0AB8: $FE $10
    jr c, jr_000_0AC1                             ; $0ABA: $38 $05

    cp $A0                                        ; $0ABC: $FE $A0
    jr nc, jr_000_0AD1                            ; $0ABE: $30 $11

    ret                                           ; $0AC0: $C9


jr_000_0AC1:
    sub $10                                       ; $0AC1: $D6 $10
    cpl                                           ; $0AC3: $2F
    inc a                                         ; $0AC4: $3C
    ld [$D6A0], a                                 ; $0AC5: $EA $A0 $D6
    ld b, a                                       ; $0AC8: $47
    ld a, [$D684]                                 ; $0AC9: $FA $84 $D6
    add b                                         ; $0ACC: $80
    ld [$D684], a                                 ; $0ACD: $EA $84 $D6
    ret                                           ; $0AD0: $C9


jr_000_0AD1:
    sub $A0                                       ; $0AD1: $D6 $A0
    cpl                                           ; $0AD3: $2F
    inc a                                         ; $0AD4: $3C
    ld [$D6A0], a                                 ; $0AD5: $EA $A0 $D6
    ld b, a                                       ; $0AD8: $47
    ld a, [$D684]                                 ; $0AD9: $FA $84 $D6
    add b                                         ; $0ADC: $80
    ld [$D684], a                                 ; $0ADD: $EA $84 $D6
    ret                                           ; $0AE0: $C9


jr_000_0AE1:
    ld a, [$D684]                                 ; $0AE1: $FA $84 $D6
    cp $08                                        ; $0AE4: $FE $08
    jr c, jr_000_0AED                             ; $0AE6: $38 $05

    cp $F8                                        ; $0AE8: $FE $F8
    jr nc, jr_000_0AFD                            ; $0AEA: $30 $11

    ret                                           ; $0AEC: $C9


jr_000_0AED:
    sub $08                                       ; $0AED: $D6 $08
    cpl                                           ; $0AEF: $2F
    inc a                                         ; $0AF0: $3C
    ld [$D6A0], a                                 ; $0AF1: $EA $A0 $D6
    ld b, a                                       ; $0AF4: $47
    ld a, [$D684]                                 ; $0AF5: $FA $84 $D6
    add b                                         ; $0AF8: $80

Jump_000_0AF9:
    ld [$D684], a                                 ; $0AF9: $EA $84 $D6
    ret                                           ; $0AFC: $C9


jr_000_0AFD:
    sub $F8                                       ; $0AFD: $D6 $F8

Jump_000_0AFF:
    cpl                                           ; $0AFF: $2F
    inc a                                         ; $0B00: $3C
    ld [$D6A0], a                                 ; $0B01: $EA $A0 $D6
    ld b, a                                       ; $0B04: $47
    ld a, [$D684]                                 ; $0B05: $FA $84 $D6
    add b                                         ; $0B08: $80
    ld [$D684], a                                 ; $0B09: $EA $84 $D6
    ret                                           ; $0B0C: $C9


Call_000_0B0D:
    ld a, [$D6C0]                                 ; $0B0D: $FA $C0 $D6
    bit 7, a                                      ; $0B10: $CB $7F
    ret z                                         ; $0B12: $C8

    xor a                                         ; $0B13: $AF
    ld [$D6E0], a                                 ; $0B14: $EA $E0 $D6
    ld a, [$C2C2]                                 ; $0B17: $FA $C2 $C2
    bit 7, a                                      ; $0B1A: $CB $7F
    jr nz, jr_000_0B53                            ; $0B1C: $20 $35

    ld a, [$C2AA]                                 ; $0B1E: $FA $AA $C2
    cpl                                           ; $0B21: $2F
    inc a                                         ; $0B22: $3C
    ld b, a                                       ; $0B23: $47
    ld a, [$D6C4]                                 ; $0B24: $FA $C4 $D6
    add b                                         ; $0B27: $80
    add $08                                       ; $0B28: $C6 $08
    cp $10                                        ; $0B2A: $FE $10
    jr c, jr_000_0B33                             ; $0B2C: $38 $05

    cp $A0                                        ; $0B2E: $FE $A0
    jr nc, jr_000_0B43                            ; $0B30: $30 $11

    ret                                           ; $0B32: $C9


jr_000_0B33:
    sub $10                                       ; $0B33: $D6 $10
    cpl                                           ; $0B35: $2F
    inc a                                         ; $0B36: $3C
    ld [$D6E0], a                                 ; $0B37: $EA $E0 $D6

Jump_000_0B3A:
    ld b, a                                       ; $0B3A: $47
    ld a, [$D6C4]                                 ; $0B3B: $FA $C4 $D6
    add b                                         ; $0B3E: $80
    ld [$D6C4], a                                 ; $0B3F: $EA $C4 $D6
    ret                                           ; $0B42: $C9


jr_000_0B43:
    sub $A0                                       ; $0B43: $D6 $A0
    cpl                                           ; $0B45: $2F
    inc a                                         ; $0B46: $3C
    ld [$D6E0], a                                 ; $0B47: $EA $E0 $D6
    ld b, a                                       ; $0B4A: $47
    ld a, [$D6C4]                                 ; $0B4B: $FA $C4 $D6
    add b                                         ; $0B4E: $80
    ld [$D6C4], a                                 ; $0B4F: $EA $C4 $D6
    ret                                           ; $0B52: $C9


jr_000_0B53:
    ld a, [$D6C4]                                 ; $0B53: $FA $C4 $D6
    cp $08                                        ; $0B56: $FE $08
    jr c, jr_000_0B5F                             ; $0B58: $38 $05

    cp $F8                                        ; $0B5A: $FE $F8
    jr nc, jr_000_0B6F                            ; $0B5C: $30 $11

    ret                                           ; $0B5E: $C9


jr_000_0B5F:
    sub $08                                       ; $0B5F: $D6 $08
    cpl                                           ; $0B61: $2F
    inc a                                         ; $0B62: $3C
    ld [$D6E0], a                                 ; $0B63: $EA $E0 $D6
    ld b, a                                       ; $0B66: $47
    ld a, [$D6C4]                                 ; $0B67: $FA $C4 $D6
    add b                                         ; $0B6A: $80
    ld [$D6C4], a                                 ; $0B6B: $EA $C4 $D6
    ret                                           ; $0B6E: $C9


jr_000_0B6F:
    sub $F8                                       ; $0B6F: $D6 $F8
    cpl                                           ; $0B71: $2F
    inc a                                         ; $0B72: $3C
    ld [$D6E0], a                                 ; $0B73: $EA $E0 $D6
    ld b, a                                       ; $0B76: $47
    ld a, [$D6C4]                                 ; $0B77: $FA $C4 $D6
    add b                                         ; $0B7A: $80
    ld [$D6C4], a                                 ; $0B7B: $EA $C4 $D6
    ret                                           ; $0B7E: $C9


Call_000_0B7F:
    ld a, [hl+]                                   ; $0B7F: $2A
    bit 7, a                                      ; $0B80: $CB $7F
    ret z                                         ; $0B82: $C8

Call_000_0B83:
    ld b, a                                       ; $0B83: $47
    ld [$C023], a                                 ; $0B84: $EA $23 $C0
    ld [$C024], a                                 ; $0B87: $EA $24 $C0
    ld a, [hl+]                                   ; $0B8A: $2A
    ld [$C026], a                                 ; $0B8B: $EA $26 $C0
    ld a, [$C020]                                 ; $0B8E: $FA $20 $C0
    cp $29                                        ; $0B91: $FE $29
    ret nc                                        ; $0B93: $D0

    ld a, b                                       ; $0B94: $78
    bit 0, a                                      ; $0B95: $CB $47
    jp nz, Jump_000_0BA2                          ; $0B97: $C2 $A2 $0B

    ld a, [hl+]                                   ; $0B9A: $2A
    ld [$C027], a                                 ; $0B9B: $EA $27 $C0
    inc hl                                        ; $0B9E: $23
    jp Jump_000_0BA7                              ; $0B9F: $C3 $A7 $0B


Jump_000_0BA2:
    inc hl                                        ; $0BA2: $23
    ld a, [hl+]                                   ; $0BA3: $2A
    ld [$C027], a                                 ; $0BA4: $EA $27 $C0

Jump_000_0BA7:
    ld a, [$C026]                                 ; $0BA7: $FA $26 $C0
    bit 1, a                                      ; $0BAA: $CB $4F
    jr z, jr_000_0BB1                             ; $0BAC: $28 $03

    ld a, [hl]                                    ; $0BAE: $7E
    jr jr_000_0BBA                                ; $0BAF: $18 $09

jr_000_0BB1:
    ld c, [hl]                                    ; $0BB1: $4E
    ld a, [$C2AA]                                 ; $0BB2: $FA $AA $C2
    cpl                                           ; $0BB5: $2F
    inc a                                         ; $0BB6: $3C
    add c                                         ; $0BB7: $81
    add $08                                       ; $0BB8: $C6 $08

jr_000_0BBA:
    inc hl                                        ; $0BBA: $23
    inc hl                                        ; $0BBB: $23
    ld [$C028], a                                 ; $0BBC: $EA $28 $C0
    ld a, [$C026]                                 ; $0BBF: $FA $26 $C0
    bit 1, a                                      ; $0BC2: $CB $4F
    jr z, jr_000_0BC9                             ; $0BC4: $28 $03

    ld a, [hl]                                    ; $0BC6: $7E
    jr jr_000_0BD0                                ; $0BC7: $18 $07

jr_000_0BC9:
    ld c, [hl]                                    ; $0BC9: $4E
    ld a, [$C2AC]                                 ; $0BCA: $FA $AC $C2
    cpl                                           ; $0BCD: $2F
    inc a                                         ; $0BCE: $3C
    add c                                         ; $0BCF: $81

jr_000_0BD0:
    inc hl                                        ; $0BD0: $23
    inc hl                                        ; $0BD1: $23
    ld [$C029], a                                 ; $0BD2: $EA $29 $C0
    inc hl                                        ; $0BD5: $23
    inc hl                                        ; $0BD6: $23
    inc hl                                        ; $0BD7: $23
    inc hl                                        ; $0BD8: $23
    ld a, [$C028]                                 ; $0BD9: $FA $28 $C0
    ld [hl+], a                                   ; $0BDC: $22
    ld a, [$C029]                                 ; $0BDD: $FA $29 $C0
    ld [hl+], a                                   ; $0BE0: $22
    ld c, [hl]                                    ; $0BE1: $4E
    inc hl                                        ; $0BE2: $23
    ld a, b                                       ; $0BE3: $78
    bit 0, a                                      ; $0BE4: $CB $47
    jr z, jr_000_0BEA                             ; $0BE6: $28 $02

    xor $02                                       ; $0BE8: $EE $02

jr_000_0BEA:
    bit 1, a                                      ; $0BEA: $CB $4F
    jp z, Jump_000_0BF3                           ; $0BEC: $CA $F3 $0B

    ld a, $20                                     ; $0BEF: $3E $20

Jump_000_0BF1:
    add c                                         ; $0BF1: $81
    ld c, a                                       ; $0BF2: $4F

Jump_000_0BF3:
    inc hl                                        ; $0BF3: $23

Jump_000_0BF4:
    inc hl                                        ; $0BF4: $23
    push bc                                       ; $0BF5: $C5
    bit 0, b                                      ; $0BF6: $CB $40
    jr nz, jr_000_0C0C                            ; $0BF8: $20 $12

    ld a, [hl+]                                   ; $0BFA: $2A
    ldh [$FFE0], a                                ; $0BFB: $E0 $E0
    ld [$2000], a                                 ; $0BFD: $EA $00 $20
    ld e, [hl]                                    ; $0C00: $5E
    inc hl                                        ; $0C01: $23
    ld d, [hl]                                    ; $0C02: $56
    inc hl                                        ; $0C03: $23

Call_000_0C04:
Jump_000_0C04:
    ld c, [hl]                                    ; $0C04: $4E
    inc hl                                        ; $0C05: $23
    inc hl                                        ; $0C06: $23
    inc hl                                        ; $0C07: $23

Call_000_0C08:
    inc hl                                        ; $0C08: $23
    inc hl                                        ; $0C09: $23
    jr jr_000_0C1C                                ; $0C0A: $18 $10

jr_000_0C0C:
    inc hl                                        ; $0C0C: $23
    inc hl                                        ; $0C0D: $23
    inc hl                                        ; $0C0E: $23

Call_000_0C0F:
    inc hl                                        ; $0C0F: $23

Jump_000_0C10:
    ld a, [hl+]                                   ; $0C10: $2A
    ldh [$FFE0], a                                ; $0C11: $E0 $E0
    ld [$2000], a                                 ; $0C13: $EA $00 $20
    ld e, [hl]                                    ; $0C16: $5E
    inc hl                                        ; $0C17: $23
    ld d, [hl]                                    ; $0C18: $56
    inc hl                                        ; $0C19: $23
    ld c, [hl]                                    ; $0C1A: $4E
    inc hl                                        ; $0C1B: $23

jr_000_0C1C:
    push de                                       ; $0C1C: $D5
    push hl                                       ; $0C1D: $E5

Call_000_0C1E:
    pop de                                        ; $0C1E: $D1
    pop hl                                        ; $0C1F: $E1

Call_000_0C20:
Jump_000_0C20:
    ld b, $00                                     ; $0C20: $06 $00
    add hl, bc                                    ; $0C22: $09
    pop bc                                        ; $0C23: $C1
    push hl                                       ; $0C24: $E5
    call Call_000_0C37                            ; $0C25: $CD $37 $0C
    pop hl                                        ; $0C28: $E1
    inc hl                                        ; $0C29: $23
    inc hl                                        ; $0C2A: $23
    ld e, [hl]                                    ; $0C2B: $5E
    inc hl                                        ; $0C2C: $23
    ld a, [hl]                                    ; $0C2D: $7E
    cp $FF                                        ; $0C2E: $FE $FF
    ret z                                         ; $0C30: $C8

    ld d, a                                       ; $0C31: $57
    push de                                       ; $0C32: $D5
    pop hl                                        ; $0C33: $E1
    jp Jump_000_0C63                              ; $0C34: $C3 $63 $0C


Call_000_0C37:
    push de                                       ; $0C37: $D5

Call_000_0C38:
    ld e, [hl]                                    ; $0C38: $5E
    inc hl                                        ; $0C39: $23
    ld d, [hl]                                    ; $0C3A: $56
    push de                                       ; $0C3B: $D5
    pop hl                                        ; $0C3C: $E1
    pop de                                        ; $0C3D: $D1
    ld a, [hl+]                                   ; $0C3E: $2A

Call_000_0C3F:
    ld [$C01F], a                                 ; $0C3F: $EA $1F $C0

Jump_000_0C42:
    and $60                                       ; $0C42: $E6 $60
    ld b, a                                       ; $0C44: $47
    ld a, [$C023]                                 ; $0C45: $FA $23 $C0

Call_000_0C48:
    or b                                          ; $0C48: $B0
    ld [$C023], a                                 ; $0C49: $EA $23 $C0
    ld a, [hl+]                                   ; $0C4C: $2A
    ld [de], a                                    ; $0C4D: $12
    inc de                                        ; $0C4E: $13
    ld a, [hl+]                                   ; $0C4F: $2A
    ld [de], a                                    ; $0C50: $12
    inc hl                                        ; $0C51: $23

Call_000_0C52:
    inc hl                                        ; $0C52: $23
    inc hl                                        ; $0C53: $23
    ld e, [hl]                                    ; $0C54: $5E
    inc hl                                        ; $0C55: $23
    ld d, [hl]                                    ; $0C56: $56
    inc hl                                        ; $0C57: $23
    ld a, [hl+]                                   ; $0C58: $2A

Call_000_0C59:
    ld [$C02D], a                                 ; $0C59: $EA $2D $C0
    ld a, [hl]                                    ; $0C5C: $7E
    ld [$C02E], a                                 ; $0C5D: $EA $2E $C0
    jp Jump_000_0C80                              ; $0C60: $C3 $80 $0C


Jump_000_0C63:
    ld a, [hl+]                                   ; $0C63: $2A

Call_000_0C64:
    ld [$C01F], a                                 ; $0C64: $EA $1F $C0
    and $60                                       ; $0C67: $E6 $60

Jump_000_0C69:
    ld b, a                                       ; $0C69: $47
    ld a, [$C024]                                 ; $0C6A: $FA $24 $C0
    or b                                          ; $0C6D: $B0
    ld [$C023], a                                 ; $0C6E: $EA $23 $C0
    inc hl                                        ; $0C71: $23
    inc hl                                        ; $0C72: $23
    inc hl                                        ; $0C73: $23
    ld e, [hl]                                    ; $0C74: $5E
    inc hl                                        ; $0C75: $23
    ld d, [hl]                                    ; $0C76: $56

Jump_000_0C77:
    inc hl                                        ; $0C77: $23
    ld a, [hl+]                                   ; $0C78: $2A
    ld [$C02D], a                                 ; $0C79: $EA $2D $C0
    ld a, [hl]                                    ; $0C7C: $7E
    ld [$C02E], a                                 ; $0C7D: $EA $2E $C0

Jump_000_0C80:
    push de                                       ; $0C80: $D5
    pop hl                                        ; $0C81: $E1
    ld a, [$C021]                                 ; $0C82: $FA $21 $C0
    ld e, a                                       ; $0C85: $5F
    ld a, [$C022]                                 ; $0C86: $FA $22 $C0
    ld d, a                                       ; $0C89: $57
    ld a, [$C020]                                 ; $0C8A: $FA $20 $C0
    cp $29                                        ; $0C8D: $FE $29
    ret nc                                        ; $0C8F: $D0

    ld a, [$C023]                                 ; $0C90: $FA $23 $C0
    and $60                                       ; $0C93: $E6 $60
    ld b, a                                       ; $0C95: $47
    ld a, [$C027]                                 ; $0C96: $FA $27 $C0
    xor b                                         ; $0C99: $A8
    ld [$C02C], a                                 ; $0C9A: $EA $2C $C0
    and $60                                       ; $0C9D: $E6 $60

Call_000_0C9F:
    cp $20                                        ; $0C9F: $FE $20
    jp z, Jump_000_0CD3                           ; $0CA1: $CA $D3 $0C

    cp $40                                        ; $0CA4: $FE $40
    jp z, Jump_000_0CFB                           ; $0CA6: $CA $FB $0C

    cp $60                                        ; $0CA9: $FE $60
    jp z, Jump_000_0D23                           ; $0CAB: $CA $23 $0D

    call Call_000_0D5D                            ; $0CAE: $CD $5D $0D
    ld b, [hl]                                    ; $0CB1: $46
    inc hl                                        ; $0CB2: $23
    push bc                                       ; $0CB3: $C5

jr_000_0CB4:
    push bc                                       ; $0CB4: $C5
    ld b, [hl]                                    ; $0CB5: $46
    inc hl                                        ; $0CB6: $23
    ld a, [$C02B]                                 ; $0CB7: $FA $2B $C0
    add b                                         ; $0CBA: $80
    ld [de], a                                    ; $0CBB: $12
    inc de                                        ; $0CBC: $13
    ld b, [hl]                                    ; $0CBD: $46
    inc hl                                        ; $0CBE: $23
    ld a, [$C02A]                                 ; $0CBF: $FA $2A $C0
    add b                                         ; $0CC2: $80
    ld [de], a                                    ; $0CC3: $12
    inc de                                        ; $0CC4: $13
    call Call_000_0D84                            ; $0CC5: $CD $84 $0D
    jp nc, Jump_000_0D4E                          ; $0CC8: $D2 $4E $0D

    pop bc                                        ; $0CCB: $C1
    dec b                                         ; $0CCC: $05
    jr nz, jr_000_0CB4                            ; $0CCD: $20 $E5

    pop bc                                        ; $0CCF: $C1
    jp Jump_000_0D50                              ; $0CD0: $C3 $50 $0D


Jump_000_0CD3:
    call Call_000_0D5D                            ; $0CD3: $CD $5D $0D
    ld b, [hl]                                    ; $0CD6: $46
    inc hl                                        ; $0CD7: $23
    push bc                                       ; $0CD8: $C5

jr_000_0CD9:
    push bc                                       ; $0CD9: $C5
    ld b, [hl]                                    ; $0CDA: $46
    inc hl                                        ; $0CDB: $23
    ld a, [$C02B]                                 ; $0CDC: $FA $2B $C0

Jump_000_0CDF:
    add b                                         ; $0CDF: $80
    ld [de], a                                    ; $0CE0: $12
    inc de                                        ; $0CE1: $13
    ld a, [hl+]                                   ; $0CE2: $2A
    cpl                                           ; $0CE3: $2F
    sub $07                                       ; $0CE4: $D6 $07
    ld b, a                                       ; $0CE6: $47
    ld a, [$C02A]                                 ; $0CE7: $FA $2A $C0
    add b                                         ; $0CEA: $80
    ld [de], a                                    ; $0CEB: $12
    inc de                                        ; $0CEC: $13
    call Call_000_0D84                            ; $0CED: $CD $84 $0D
    jp nc, Jump_000_0D4E                          ; $0CF0: $D2 $4E $0D

Call_000_0CF3:
Jump_000_0CF3:
    pop bc                                        ; $0CF3: $C1
    dec b                                         ; $0CF4: $05
    jr nz, jr_000_0CD9                            ; $0CF5: $20 $E2

    pop bc                                        ; $0CF7: $C1
    jp Jump_000_0D50                              ; $0CF8: $C3 $50 $0D


Call_000_0CFB:
Jump_000_0CFB:
    call Call_000_0D5D                            ; $0CFB: $CD $5D $0D
    ld b, [hl]                                    ; $0CFE: $46

Call_000_0CFF:
    inc hl                                        ; $0CFF: $23

Jump_000_0D00:
    push bc                                       ; $0D00: $C5

jr_000_0D01:
    push bc                                       ; $0D01: $C5
    ld a, [hl+]                                   ; $0D02: $2A
    cpl                                           ; $0D03: $2F

Call_000_0D04:
    sub $AF                                       ; $0D04: $D6 $AF
    ld b, a                                       ; $0D06: $47
    ld a, [$C02B]                                 ; $0D07: $FA $2B $C0
    add b                                         ; $0D0A: $80
    ld [de], a                                    ; $0D0B: $12
    inc de                                        ; $0D0C: $13
    ld b, [hl]                                    ; $0D0D: $46
    inc hl                                        ; $0D0E: $23

Jump_000_0D0F:
    ld a, [$C02A]                                 ; $0D0F: $FA $2A $C0
    add b                                         ; $0D12: $80
    ld [de], a                                    ; $0D13: $12
    inc de                                        ; $0D14: $13
    call Call_000_0D84                            ; $0D15: $CD $84 $0D
    jp nc, Jump_000_0D4E                          ; $0D18: $D2 $4E $0D

    pop bc                                        ; $0D1B: $C1
    dec b                                         ; $0D1C: $05
    jr nz, jr_000_0D01                            ; $0D1D: $20 $E2

    pop bc                                        ; $0D1F: $C1
    jp Jump_000_0D50                              ; $0D20: $C3 $50 $0D


Jump_000_0D23:
    call Call_000_0D5D                            ; $0D23: $CD $5D $0D
    ld b, [hl]                                    ; $0D26: $46
    inc hl                                        ; $0D27: $23

Jump_000_0D28:
    push bc                                       ; $0D28: $C5

jr_000_0D29:
    push bc                                       ; $0D29: $C5
    ld a, [hl+]                                   ; $0D2A: $2A
    cpl                                           ; $0D2B: $2F
    sub $AF                                       ; $0D2C: $D6 $AF
    ld b, a                                       ; $0D2E: $47
    ld a, [$C02B]                                 ; $0D2F: $FA $2B $C0
    add b                                         ; $0D32: $80
    ld [de], a                                    ; $0D33: $12
    inc de                                        ; $0D34: $13
    ld a, [hl+]                                   ; $0D35: $2A
    cpl                                           ; $0D36: $2F
    sub $07                                       ; $0D37: $D6 $07
    ld b, a                                       ; $0D39: $47
    ld a, [$C02A]                                 ; $0D3A: $FA $2A $C0
    add b                                         ; $0D3D: $80
    ld [de], a                                    ; $0D3E: $12
    inc de                                        ; $0D3F: $13
    call Call_000_0D84                            ; $0D40: $CD $84 $0D
    jp nc, Jump_000_0D4E                          ; $0D43: $D2 $4E $0D

    pop bc                                        ; $0D46: $C1
    dec b                                         ; $0D47: $05
    jr nz, jr_000_0D29                            ; $0D48: $20 $DF

    pop bc                                        ; $0D4A: $C1
    jp Jump_000_0D50                              ; $0D4B: $C3 $50 $0D


Jump_000_0D4E:
    pop bc                                        ; $0D4E: $C1
    pop bc                                        ; $0D4F: $C1

Jump_000_0D50:
    ld a, e                                       ; $0D50: $7B
    ld [$C021], a                                 ; $0D51: $EA $21 $C0
    ld a, d                                       ; $0D54: $7A
    ld [$C022], a                                 ; $0D55: $EA $22 $C0
    ld a, c                                       ; $0D58: $79
    add b                                         ; $0D59: $80
    add b                                         ; $0D5A: $80
    ld c, a                                       ; $0D5B: $4F
    ret                                           ; $0D5C: $C9


Call_000_0D5D:
    ld a, [$C02E]                                 ; $0D5D: $FA $2E $C0
    ld b, a                                       ; $0D60: $47
    ld a, [$C029]                                 ; $0D61: $FA $29 $C0
    add b                                         ; $0D64: $80
    ld [$C02B], a                                 ; $0D65: $EA $2B $C0
    ld a, [$C027]                                 ; $0D68: $FA $27 $C0
    and $20                                       ; $0D6B: $E6 $20
    jp nz, Jump_000_0D76                          ; $0D6D: $C2 $76 $0D

    ld a, [$C02D]                                 ; $0D70: $FA $2D $C0
    jp Jump_000_0D7B                              ; $0D73: $C3 $7B $0D


Jump_000_0D76:
    ld a, [$C02D]                                 ; $0D76: $FA $2D $C0
    cpl                                           ; $0D79: $2F
    inc a                                         ; $0D7A: $3C

Jump_000_0D7B:
    ld b, a                                       ; $0D7B: $47

Jump_000_0D7C:
    ld a, [$C028]                                 ; $0D7C: $FA $28 $C0
    add b                                         ; $0D7F: $80
    ld [$C02A], a                                 ; $0D80: $EA $2A $C0
    ret                                           ; $0D83: $C9


Call_000_0D84:
    ld a, [$C01F]                                 ; $0D84: $FA $1F $C0
    bit 4, a                                      ; $0D87: $CB $67
    jp nz, Jump_000_0D98                          ; $0D89: $C2 $98 $0D

    ld a, [hl+]                                   ; $0D8C: $2A
    add c                                         ; $0D8D: $81
    ld [de], a                                    ; $0D8E: $12
    inc de                                        ; $0D8F: $13
    ld a, [$C02C]                                 ; $0D90: $FA $2C $C0
    ld [de], a                                    ; $0D93: $12
    inc de                                        ; $0D94: $13
    jp Jump_000_0DAB                              ; $0D95: $C3 $AB $0D


Jump_000_0D98:
    ld a, [hl+]                                   ; $0D98: $2A
    push af                                       ; $0D99: $F5
    and $3F                                       ; $0D9A: $E6 $3F
    add c                                         ; $0D9C: $81
    ld [de], a                                    ; $0D9D: $12
    inc de                                        ; $0D9E: $13
    pop af                                        ; $0D9F: $F1
    and $C0                                       ; $0DA0: $E6 $C0
    srl a                                         ; $0DA2: $CB $3F
    ld b, a                                       ; $0DA4: $47
    ld a, [$C02C]                                 ; $0DA5: $FA $2C $C0
    xor b                                         ; $0DA8: $A8
    ld [de], a                                    ; $0DA9: $12
    inc de                                        ; $0DAA: $13

Jump_000_0DAB:
    ld a, [$C020]                                 ; $0DAB: $FA $20 $C0
    inc a                                         ; $0DAE: $3C
    ld [$C020], a                                 ; $0DAF: $EA $20 $C0
    cp $29                                        ; $0DB2: $FE $29
    ret                                           ; $0DB4: $C9


Call_000_0DB5:
Jump_000_0DB5:
    ldh a, [$FFE0]                                ; $0DB5: $F0 $E0
    push af                                       ; $0DB7: $F5
    res 3, [hl]                                   ; $0DB8: $CB $9E
    push hl                                       ; $0DBA: $E5
    ld de, $0011                                  ; $0DBB: $11 $11 $00
    add hl, de                                    ; $0DBE: $19
    ld a, [hl+]                                   ; $0DBF: $2A
    ldh [$FFE0], a                                ; $0DC0: $E0 $E0
    ld [$2000], a                                 ; $0DC2: $EA $00 $20
    ld e, [hl]                                    ; $0DC5: $5E
    inc hl                                        ; $0DC6: $23
    ld d, [hl]                                    ; $0DC7: $56
    inc hl                                        ; $0DC8: $23
    ld c, [hl]                                    ; $0DC9: $4E
    ld b, $00                                     ; $0DCA: $06 $00
    push de                                       ; $0DCC: $D5
    push hl                                       ; $0DCD: $E5
    pop de                                        ; $0DCE: $D1
    pop hl                                        ; $0DCF: $E1
    add hl, bc                                    ; $0DD0: $09
    jp Jump_000_0E72                              ; $0DD1: $C3 $72 $0E


Call_000_0DD4:
Jump_000_0DD4:
    ldh a, [$FFE0]                                ; $0DD4: $F0 $E0
    push af                                       ; $0DD6: $F5
    res 3, [hl]                                   ; $0DD7: $CB $9E
    ld a, [hl]                                    ; $0DD9: $7E
    and $11                                       ; $0DDA: $E6 $11
    jp nz, Jump_000_0F7D                          ; $0DDC: $C2 $7D $0F

    push hl                                       ; $0DDF: $E5
    ld de, $001C                                  ; $0DE0: $11 $1C $00
    add hl, de                                    ; $0DE3: $19
    ld a, [hl]                                    ; $0DE4: $7E
    or a                                          ; $0DE5: $B7
    jp z, Jump_000_0DEF                           ; $0DE6: $CA $EF $0D

    dec a                                         ; $0DE9: $3D
    ld [hl], a                                    ; $0DEA: $77
    pop hl                                        ; $0DEB: $E1
    jp Jump_000_0F7D                              ; $0DEC: $C3 $7D $0F


Jump_000_0DEF:
    inc hl                                        ; $0DEF: $23
    ld a, [hl-]                                   ; $0DF0: $3A
    ld [hl], a                                    ; $0DF1: $77

Call_000_0DF2:
Jump_000_0DF2:
    pop hl                                        ; $0DF2: $E1

Jump_000_0DF3:
    push hl                                       ; $0DF3: $E5
    ld de, $0011                                  ; $0DF4: $11 $11 $00
    add hl, de                                    ; $0DF7: $19
    ld a, [hl+]                                   ; $0DF8: $2A
    ldh [$FFE0], a                                ; $0DF9: $E0 $E0
    ld [$2000], a                                 ; $0DFB: $EA $00 $20
    ld e, [hl]                                    ; $0DFE: $5E

Call_000_0DFF:
    inc hl                                        ; $0DFF: $23

Jump_000_0E00:
    ld d, [hl]                                    ; $0E00: $56
    inc hl                                        ; $0E01: $23
    ld a, [hl]                                    ; $0E02: $7E
    add $04                                       ; $0E03: $C6 $04
    ld [hl], a                                    ; $0E05: $77
    ld b, $00                                     ; $0E06: $06 $00
    ld c, a                                       ; $0E08: $4F
    push de                                       ; $0E09: $D5
    push hl                                       ; $0E0A: $E5
    pop de                                        ; $0E0B: $D1
    pop hl                                        ; $0E0C: $E1
    push hl                                       ; $0E0D: $E5
    add hl, bc                                    ; $0E0E: $09
    inc hl                                        ; $0E0F: $23
    ld a, [hl]                                    ; $0E10: $7E
    cp $FF                                        ; $0E11: $FE $FF
    jp nz, Jump_000_0E23                          ; $0E13: $C2 $23 $0E

    ld a, [de]                                    ; $0E16: $1A
    sub $04                                       ; $0E17: $D6 $04
    ld [de], a                                    ; $0E19: $12
    pop hl                                        ; $0E1A: $E1
    pop hl                                        ; $0E1B: $E1
    ld a, [hl]                                    ; $0E1C: $7E
    or $10                                        ; $0E1D: $F6 $10
    ld [hl], a                                    ; $0E1F: $77
    jp Jump_000_0F7D                              ; $0E20: $C3 $7D $0F


Jump_000_0E23:
    dec hl                                        ; $0E23: $2B
    pop de                                        ; $0E24: $D1
    jp Jump_000_0E72                              ; $0E25: $C3 $72 $0E


Call_000_0E28:
Jump_000_0E28:
    ldh a, [$FFE0]                                ; $0E28: $F0 $E0
    push af                                       ; $0E2A: $F5
    res 3, [hl]                                   ; $0E2B: $CB $9E
    ld a, [hl]                                    ; $0E2D: $7E
    and $11                                       ; $0E2E: $E6 $11
    jp nz, Jump_000_0F7D                          ; $0E30: $C2 $7D $0F

    push hl                                       ; $0E33: $E5
    ld de, $001C                                  ; $0E34: $11 $1C $00
    add hl, de                                    ; $0E37: $19
    ld a, [hl]                                    ; $0E38: $7E
    or a                                          ; $0E39: $B7
    jp z, Jump_000_0E43                           ; $0E3A: $CA $43 $0E

    dec a                                         ; $0E3D: $3D
    ld [hl], a                                    ; $0E3E: $77
    pop hl                                        ; $0E3F: $E1
    jp Jump_000_0F7D                              ; $0E40: $C3 $7D $0F


Jump_000_0E43:
    inc hl                                        ; $0E43: $23

Call_000_0E44:
    ld a, [hl-]                                   ; $0E44: $3A
    ld [hl], a                                    ; $0E45: $77
    pop hl                                        ; $0E46: $E1
    push hl                                       ; $0E47: $E5
    ld de, $0011                                  ; $0E48: $11 $11 $00
    add hl, de                                    ; $0E4B: $19
    ld a, [hl+]                                   ; $0E4C: $2A
    ldh [$FFE0], a                                ; $0E4D: $E0 $E0
    ld [$2000], a                                 ; $0E4F: $EA $00 $20
    ld e, [hl]                                    ; $0E52: $5E
    inc hl                                        ; $0E53: $23
    ld d, [hl]                                    ; $0E54: $56
    inc hl                                        ; $0E55: $23
    ld a, [hl]                                    ; $0E56: $7E
    add $04                                       ; $0E57: $C6 $04
    ld [hl], a                                    ; $0E59: $77
    ld b, $00                                     ; $0E5A: $06 $00
    ld c, a                                       ; $0E5C: $4F
    push de                                       ; $0E5D: $D5
    push hl                                       ; $0E5E: $E5
    pop de                                        ; $0E5F: $D1
    pop hl                                        ; $0E60: $E1

Call_000_0E61:
    push hl                                       ; $0E61: $E5
    add hl, bc                                    ; $0E62: $09
    inc hl                                        ; $0E63: $23
    ld a, [hl]                                    ; $0E64: $7E
    cp $FF                                        ; $0E65: $FE $FF
    jp nz, Jump_000_0E70                          ; $0E67: $C2 $70 $0E

    xor a                                         ; $0E6A: $AF
    ld [de], a                                    ; $0E6B: $12
    pop hl                                        ; $0E6C: $E1
    jp Jump_000_0E72                              ; $0E6D: $C3 $72 $0E


Jump_000_0E70:
    dec hl                                        ; $0E70: $2B
    pop de                                        ; $0E71: $D1

Jump_000_0E72:
    pop bc                                        ; $0E72: $C1
    ld e, [hl]                                    ; $0E73: $5E
    inc hl                                        ; $0E74: $23
    ld d, [hl]                                    ; $0E75: $56
    inc hl                                        ; $0E76: $23
    push de                                       ; $0E77: $D5
    push hl                                       ; $0E78: $E5
    pop de                                        ; $0E79: $D1
    pop hl                                        ; $0E7A: $E1
    bit 7, [hl]                                   ; $0E7B: $CB $7E
    jp nz, Jump_000_0F7D                          ; $0E7D: $C2 $7D $0F

    push bc                                       ; $0E80: $C5
    ld a, [bc]                                    ; $0E81: $0A
    ld [$C025], a                                 ; $0E82: $EA $25 $C0
    bit 0, a                                      ; $0E85: $CB $47
    jp nz, Jump_000_0E95                          ; $0E87: $C2 $95 $0E

    xor $02                                       ; $0E8A: $EE $02
    or $01                                        ; $0E8C: $F6 $01
    ld [bc], a                                    ; $0E8E: $02
    ld [$C023], a                                 ; $0E8F: $EA $23 $C0
    jp Jump_000_0E9D                              ; $0E92: $C3 $9D $0E


Jump_000_0E95:
    ld [$C023], a                                 ; $0E95: $EA $23 $C0
    xor $02                                       ; $0E98: $EE $02
    ld [$C025], a                                 ; $0E9A: $EA $25 $C0

Jump_000_0E9D:
    push de                                       ; $0E9D: $D5
    push hl                                       ; $0E9E: $E5
    ld hl, $001E                                  ; $0E9F: $21 $1E $00
    add hl, bc                                    ; $0EA2: $09
    ld e, [hl]                                    ; $0EA3: $5E
    inc hl                                        ; $0EA4: $23
    ld d, [hl]                                    ; $0EA5: $56
    pop hl                                        ; $0EA6: $E1
    inc hl                                        ; $0EA7: $23
    inc hl                                        ; $0EA8: $23
    inc hl                                        ; $0EA9: $23
    push hl                                       ; $0EAA: $E5
    ld hl, $000F                                  ; $0EAB: $21 $0F $00
    add hl, bc                                    ; $0EAE: $09
    ld c, [hl]                                    ; $0EAF: $4E
    inc hl                                        ; $0EB0: $23
    ld b, [hl]                                    ; $0EB1: $46
    pop hl                                        ; $0EB2: $E1
    ld a, [$C023]                                 ; $0EB3: $FA $23 $C0
    bit 1, a                                      ; $0EB6: $CB $4F
    jp z, Jump_000_0EBF                           ; $0EB8: $CA $BF $0E

    ld a, $02                                     ; $0EBB: $3E $02
    add b                                         ; $0EBD: $80
    ld b, a                                       ; $0EBE: $47

Jump_000_0EBF:
    ld a, c                                       ; $0EBF: $79

Call_000_0EC0:
    ld [de], a                                    ; $0EC0: $12
    inc de                                        ; $0EC1: $13
    ld a, b                                       ; $0EC2: $78
    ld [de], a                                    ; $0EC3: $12
    inc de                                        ; $0EC4: $13
    call Call_000_0F84                            ; $0EC5: $CD $84 $0F
    ld c, [hl]                                    ; $0EC8: $4E
    inc hl                                        ; $0EC9: $23
    ld b, [hl]                                    ; $0ECA: $46
    ld a, [bc]                                    ; $0ECB: $0A
    add a                                         ; $0ECC: $87

Call_000_0ECD:
    ld [de], a                                    ; $0ECD: $12
    inc de                                        ; $0ECE: $13
    pop hl                                        ; $0ECF: $E1
    ld c, [hl]                                    ; $0ED0: $4E
    inc hl                                        ; $0ED1: $23
    ld b, [hl]                                    ; $0ED2: $46
    ld a, b                                       ; $0ED3: $78
    cp $FF                                        ; $0ED4: $FE $FF
    jp nz, Jump_000_0EE5                          ; $0ED6: $C2 $E5 $0E

    xor a                                         ; $0ED9: $AF
    ld [de], a                                    ; $0EDA: $12
    inc de                                        ; $0EDB: $13
    ld [de], a                                    ; $0EDC: $12
    inc de                                        ; $0EDD: $13
    ld [de], a                                    ; $0EDE: $12

Call_000_0EDF:
    inc de                                        ; $0EDF: $13
    ld [de], a                                    ; $0EE0: $12
    inc de                                        ; $0EE1: $13
    jp Jump_000_0EF2                              ; $0EE2: $C3 $F2 $0E


Jump_000_0EE5:
    push bc                                       ; $0EE5: $C5
    pop hl                                        ; $0EE6: $E1
    inc hl                                        ; $0EE7: $23
    call Call_000_0F84                            ; $0EE8: $CD $84 $0F
    ld c, [hl]                                    ; $0EEB: $4E
    inc hl                                        ; $0EEC: $23
    ld b, [hl]                                    ; $0EED: $46
    ld a, [bc]                                    ; $0EEE: $0A
    add a                                         ; $0EEF: $87
    ld [de], a                                    ; $0EF0: $12
    inc de                                        ; $0EF1: $13

Jump_000_0EF2:
    ld hl, $FFF6                                  ; $0EF2: $21 $F6 $FF
    add hl, de                                    ; $0EF5: $19
    push hl                                       ; $0EF6: $E5
    pop bc                                        ; $0EF7: $C1
    ld hl, $0010                                  ; $0EF8: $21 $10 $00
    add hl, bc                                    ; $0EFB: $09

Jump_000_0EFC:
    push hl                                       ; $0EFC: $E5
    pop de                                        ; $0EFD: $D1
    ld hl, $0002                                  ; $0EFE: $21 $02 $00
    add hl, bc                                    ; $0F01: $09
    ld a, [de]                                    ; $0F02: $1A
    cp [hl]                                       ; $0F03: $BE
    jp nz, Jump_000_0F60                          ; $0F04: $C2 $60 $0F

    inc de                                        ; $0F07: $13

Call_000_0F08:
    inc hl                                        ; $0F08: $23
    ld a, [de]                                    ; $0F09: $1A
    cp [hl]                                       ; $0F0A: $BE
    jp nz, Jump_000_0F60                          ; $0F0B: $C2 $60 $0F

    inc de                                        ; $0F0E: $13
    inc hl                                        ; $0F0F: $23
    ld a, [de]                                    ; $0F10: $1A

Jump_000_0F11:
    cp [hl]                                       ; $0F11: $BE
    jp nz, Jump_000_0F60                          ; $0F12: $C2 $60 $0F

    inc de                                        ; $0F15: $13
    inc hl                                        ; $0F16: $23
    inc hl                                        ; $0F17: $23
    ld a, [de]                                    ; $0F18: $1A
    cp [hl]                                       ; $0F19: $BE
    jp nz, Jump_000_0F60                          ; $0F1A: $C2 $60 $0F

    inc de                                        ; $0F1D: $13
    inc hl                                        ; $0F1E: $23
    ld a, [de]                                    ; $0F1F: $1A
    cp [hl]                                       ; $0F20: $BE
    jp nz, Jump_000_0F60                          ; $0F21: $C2 $60 $0F

    inc de                                        ; $0F24: $13
    inc hl                                        ; $0F25: $23
    ld a, [de]                                    ; $0F26: $1A
    cp [hl]                                       ; $0F27: $BE
    jp nz, Jump_000_0F60                          ; $0F28: $C2 $60 $0F

    ld hl, $0002                                  ; $0F2B: $21 $02 $00
    add hl, bc                                    ; $0F2E: $09
    xor a                                         ; $0F2F: $AF

Call_000_0F30:
    ld [hl+], a                                   ; $0F30: $22
    ld [hl+], a                                   ; $0F31: $22
    ld [hl+], a                                   ; $0F32: $22
    ld [hl+], a                                   ; $0F33: $22
    ld [hl+], a                                   ; $0F34: $22
    ld [hl+], a                                   ; $0F35: $22
    ld [hl+], a                                   ; $0F36: $22
    ld [hl+], a                                   ; $0F37: $22
    pop bc                                        ; $0F38: $C1
    ld a, [$C025]                                 ; $0F39: $FA $25 $C0
    res 0, a                                      ; $0F3C: $CB $87
    set 3, a                                      ; $0F3E: $CB $DF
    ld [bc], a                                    ; $0F40: $02
    ld hl, $0002                                  ; $0F41: $21 $02 $00
    add hl, bc                                    ; $0F44: $09
    ld a, [hl+]                                   ; $0F45: $2A
    ld [hl], a                                    ; $0F46: $77
    ld hl, $0011                                  ; $0F47: $21 $11 $00
    add hl, bc                                    ; $0F4A: $09
    push hl                                       ; $0F4B: $E5
    pop de                                        ; $0F4C: $D1
    ld hl, $0015                                  ; $0F4D: $21 $15 $00
    add hl, bc                                    ; $0F50: $09
    ld a, [de]                                    ; $0F51: $1A

Jump_000_0F52:
    ld [hl+], a                                   ; $0F52: $22
    inc de                                        ; $0F53: $13
    ld a, [de]                                    ; $0F54: $1A
    ld [hl+], a                                   ; $0F55: $22
    inc de                                        ; $0F56: $13
    ld a, [de]                                    ; $0F57: $1A
    ld [hl+], a                                   ; $0F58: $22
    inc de                                        ; $0F59: $13
    ld a, [de]                                    ; $0F5A: $1A
    ld [hl+], a                                   ; $0F5B: $22
    inc de                                        ; $0F5C: $13
    jp Jump_000_0F7D                              ; $0F5D: $C3 $7D $0F


Jump_000_0F60:
    ld hl, $000A                                  ; $0F60: $21 $0A $00
    add hl, bc                                    ; $0F63: $09
    push hl                                       ; $0F64: $E5
    pop de                                        ; $0F65: $D1
    ld hl, $0002                                  ; $0F66: $21 $02 $00
    add hl, bc                                    ; $0F69: $09
    ld a, [hl+]                                   ; $0F6A: $2A
    ld [de], a                                    ; $0F6B: $12
    inc de                                        ; $0F6C: $13
    ld a, [hl+]                                   ; $0F6D: $2A
    ld [de], a                                    ; $0F6E: $12
    inc de                                        ; $0F6F: $13
    ld a, [hl+]                                   ; $0F70: $2A
    ld [de], a                                    ; $0F71: $12
    inc de                                        ; $0F72: $13
    inc hl                                        ; $0F73: $23
    ld a, [hl+]                                   ; $0F74: $2A
    ld [de], a                                    ; $0F75: $12
    inc de                                        ; $0F76: $13
    ld a, [hl+]                                   ; $0F77: $2A
    ld [de], a                                    ; $0F78: $12
    inc de                                        ; $0F79: $13
    ld a, [hl]                                    ; $0F7A: $7E
    ld [de], a                                    ; $0F7B: $12

Jump_000_0F7C:
    pop bc                                        ; $0F7C: $C1

Jump_000_0F7D:
    pop af                                        ; $0F7D: $F1
    ldh [$FFE0], a                                ; $0F7E: $E0 $E0
    ld [$2000], a                                 ; $0F80: $EA $00 $20
    ret                                           ; $0F83: $C9


Call_000_0F84:
    ld a, [hl+]                                   ; $0F84: $2A
    ld [de], a                                    ; $0F85: $12
    inc de                                        ; $0F86: $13
    ld a, [hl+]                                   ; $0F87: $2A
    ld [de], a                                    ; $0F88: $12
    inc de                                        ; $0F89: $13
    ld a, [hl+]                                   ; $0F8A: $2A
    ld [de], a                                    ; $0F8B: $12
    inc de                                        ; $0F8C: $13
    ret                                           ; $0F8D: $C9


Call_000_0F8E:
    ld b, $20                                     ; $0F8E: $06 $20

jr_000_0F90:
    ld a, [de]                                    ; $0F90: $1A
    inc de                                        ; $0F91: $13
    ld [hl+], a                                   ; $0F92: $22
    dec b                                         ; $0F93: $05
    jr nz, jr_000_0F90                            ; $0F94: $20 $FA

    ld b, $1D                                     ; $0F96: $06 $1D
    xor a                                         ; $0F98: $AF

jr_000_0F99:
    ld [hl+], a                                   ; $0F99: $22
    dec b                                         ; $0F9A: $05
    jr nz, jr_000_0F99                            ; $0F9B: $20 $FC

    ret                                           ; $0F9D: $C9


Call_000_0F9E:
    ld hl, $D680                                  ; $0F9E: $21 $80 $D6
    ld de, $0240                                  ; $0FA1: $11 $40 $02
    ld b, $00                                     ; $0FA4: $06 $00

jr_000_0FA6:
    ld a, b                                       ; $0FA6: $78
    ld [hl+], a                                   ; $0FA7: $22
    dec de                                        ; $0FA8: $1B
    ld a, d                                       ; $0FA9: $7A
    or e                                          ; $0FAA: $B3
    jr nz, jr_000_0FA6                            ; $0FAB: $20 $F9

    ld hl, $D8C0                                  ; $0FAD: $21 $C0 $D8
    ld de, $0040                                  ; $0FB0: $11 $40 $00
    ld b, $00                                     ; $0FB3: $06 $00

jr_000_0FB5:
    ld a, b                                       ; $0FB5: $78
    ld [hl+], a                                   ; $0FB6: $22
    dec de                                        ; $0FB7: $1B
    ld a, d                                       ; $0FB8: $7A
    or e                                          ; $0FB9: $B3
    jr nz, jr_000_0FB5                            ; $0FBA: $20 $F9

    ret                                           ; $0FBC: $C9


Call_000_0FBD:
    ld hl, $9800                                  ; $0FBD: $21 $00 $98
    ld d, $00                                     ; $0FC0: $16 $00
    ld e, $00                                     ; $0FC2: $1E $00
    jr jr_000_0FD7                                ; $0FC4: $18 $11

Call_000_0FC6:
    ld hl, $9C00                                  ; $0FC6: $21 $00 $9C
    ld d, $00                                     ; $0FC9: $16 $00
    ld e, $00                                     ; $0FCB: $1E $00
    jr jr_000_0FD7                                ; $0FCD: $18 $08

Call_000_0FCF:
    ld hl, $9800                                  ; $0FCF: $21 $00 $98
    jr jr_000_0FD7                                ; $0FD2: $18 $03

Call_000_0FD4:
    ld hl, $9C00                                  ; $0FD4: $21 $00 $9C

jr_000_0FD7:
    ld bc, $0400                                  ; $0FD7: $01 $00 $04

jr_000_0FDA:
    ld a, $01                                     ; $0FDA: $3E $01
    ldh [rVBK], a                                 ; $0FDC: $E0 $4F

jr_000_0FDE:
    ldh a, [rSTAT]                                ; $0FDE: $F0 $41
    and $03                                       ; $0FE0: $E6 $03
    jr nz, jr_000_0FDE                            ; $0FE2: $20 $FA

    ld [hl], e                                    ; $0FE4: $73
    ld a, $00                                     ; $0FE5: $3E $00
    ldh [rVBK], a                                 ; $0FE7: $E0 $4F

jr_000_0FE9:
    ldh a, [rSTAT]                                ; $0FE9: $F0 $41
    and $03                                       ; $0FEB: $E6 $03
    jr nz, jr_000_0FE9                            ; $0FED: $20 $FA

    ld [hl], d                                    ; $0FEF: $72
    inc hl                                        ; $0FF0: $23
    dec bc                                        ; $0FF1: $0B

Jump_000_0FF2:
    ld a, b                                       ; $0FF2: $78
    or c                                          ; $0FF3: $B1

Jump_000_0FF4:
    jr nz, jr_000_0FDA                            ; $0FF4: $20 $E4

    ret                                           ; $0FF6: $C9


Call_000_0FF7:
Jump_000_0FF7:
jr_000_0FF7:
    push bc                                       ; $0FF7: $C5
    push hl                                       ; $0FF8: $E5

jr_000_0FF9:
    push af                                       ; $0FF9: $F5
    push af                                       ; $0FFA: $F5
    ld a, $01                                     ; $0FFB: $3E $01
    ldh [rVBK], a                                 ; $0FFD: $E0 $4F

jr_000_0FFF:
    ldh a, [rSTAT]                                ; $0FFF: $F0 $41

Call_000_1001:
    and $03                                       ; $1001: $E6 $03
    jr nz, jr_000_0FFF                            ; $1003: $20 $FA

Call_000_1005:
    ld a, [de]                                    ; $1005: $1A
    ld [hl], a                                    ; $1006: $77
    inc de                                        ; $1007: $13
    ld a, $00                                     ; $1008: $3E $00
    ldh [rVBK], a                                 ; $100A: $E0 $4F
    ld a, [de]                                    ; $100C: $1A
    ld c, a                                       ; $100D: $4F

Call_000_100E:
    pop af                                        ; $100E: $F1

Call_000_100F:
    add c                                         ; $100F: $81
    ld c, a                                       ; $1010: $4F

jr_000_1011:
    ldh a, [rSTAT]                                ; $1011: $F0 $41
    and $03                                       ; $1013: $E6 $03
    jr nz, jr_000_1011                            ; $1015: $20 $FA

    ld [hl], c                                    ; $1017: $71

Jump_000_1018:
    inc de                                        ; $1018: $13
    inc hl                                        ; $1019: $23

Call_000_101A:
    pop af                                        ; $101A: $F1
    dec b                                         ; $101B: $05
    jr nz, jr_000_0FF9                            ; $101C: $20 $DB

    pop hl                                        ; $101E: $E1
    ld bc, $0020                                  ; $101F: $01 $20 $00

Jump_000_1022:
    add hl, bc                                    ; $1022: $09
    pop bc                                        ; $1023: $C1
    dec c                                         ; $1024: $0D
    jr nz, jr_000_0FF7                            ; $1025: $20 $D0

    ret                                           ; $1027: $C9


Call_000_1028:
jr_000_1028:
    push bc                                       ; $1028: $C5
    push hl                                       ; $1029: $E5

jr_000_102A:
    push af                                       ; $102A: $F5
    push af                                       ; $102B: $F5

Call_000_102C:
    ld a, [de]                                    ; $102C: $1A
    ld [hl+], a                                   ; $102D: $22
    inc de                                        ; $102E: $13
    ld a, [de]                                    ; $102F: $1A
    ld c, a                                       ; $1030: $4F
    pop af                                        ; $1031: $F1
    add c                                         ; $1032: $81
    ld c, a                                       ; $1033: $4F
    ld [hl], c                                    ; $1034: $71
    inc de                                        ; $1035: $13
    inc hl                                        ; $1036: $23
    pop af                                        ; $1037: $F1
    dec b                                         ; $1038: $05
    jr nz, jr_000_102A                            ; $1039: $20 $EF

    pop hl                                        ; $103B: $E1
    ld bc, $0040                                  ; $103C: $01 $40 $00
    add hl, bc                                    ; $103F: $09

Jump_000_1040:
    pop bc                                        ; $1040: $C1
    dec c                                         ; $1041: $0D

Call_000_1042:
    jr nz, jr_000_1028                            ; $1042: $20 $E4

    ret                                           ; $1044: $C9


Call_000_1045:
jr_000_1045:
    push bc                                       ; $1045: $C5
    push hl                                       ; $1046: $E5
    push de                                       ; $1047: $D5

jr_000_1048:
    push af                                       ; $1048: $F5
    push af                                       ; $1049: $F5
    ld a, $01                                     ; $104A: $3E $01
    ldh [rVBK], a                                 ; $104C: $E0 $4F

jr_000_104E:
    ldh a, [rSTAT]                                ; $104E: $F0 $41
    and $03                                       ; $1050: $E6 $03
    jr nz, jr_000_104E                            ; $1052: $20 $FA

    ld a, [de]                                    ; $1054: $1A
    ld [hl], a                                    ; $1055: $77
    inc de                                        ; $1056: $13
    ld a, $00                                     ; $1057: $3E $00
    ldh [rVBK], a                                 ; $1059: $E0 $4F
    ld a, [de]                                    ; $105B: $1A
    ld c, a                                       ; $105C: $4F
    pop af                                        ; $105D: $F1

Call_000_105E:
    add c                                         ; $105E: $81
    ld c, a                                       ; $105F: $4F

jr_000_1060:
    ldh a, [rSTAT]                                ; $1060: $F0 $41
    and $03                                       ; $1062: $E6 $03
    jr nz, jr_000_1060                            ; $1064: $20 $FA

    ld [hl], c                                    ; $1066: $71
    inc de                                        ; $1067: $13
    inc hl                                        ; $1068: $23
    pop af                                        ; $1069: $F1

Call_000_106A:
    dec b                                         ; $106A: $05
    jr nz, jr_000_1048                            ; $106B: $20 $DB

    pop hl                                        ; $106D: $E1
    ld de, $0040                                  ; $106E: $11 $40 $00
    add hl, de                                    ; $1071: $19
    push hl                                       ; $1072: $E5
    pop de                                        ; $1073: $D1
    pop hl                                        ; $1074: $E1
    ld bc, $0020                                  ; $1075: $01 $20 $00
    add hl, bc                                    ; $1078: $09
    pop bc                                        ; $1079: $C1
    dec c                                         ; $107A: $0D
    jr nz, jr_000_1045                            ; $107B: $20 $C8

    ret                                           ; $107D: $C9


Call_000_107E:
jr_000_107E:
    push af                                       ; $107E: $F5
    push bc                                       ; $107F: $C5

Jump_000_1080:
    push hl                                       ; $1080: $E5
    swap a                                        ; $1081: $CB $37
    and $0F                                       ; $1083: $E6 $0F

jr_000_1085:
    push af                                       ; $1085: $F5
    push bc                                       ; $1086: $C5
    ld a, $01                                     ; $1087: $3E $01
    ldh [rVBK], a                                 ; $1089: $E0 $4F
    ld a, [de]                                    ; $108B: $1A
    add b                                         ; $108C: $80
    ld b, a                                       ; $108D: $47

jr_000_108E:
    ldh a, [rSTAT]                                ; $108E: $F0 $41

Call_000_1090:
    and $03                                       ; $1090: $E6 $03
    jr nz, jr_000_108E                            ; $1092: $20 $FA

    ld [hl], b                                    ; $1094: $70
    inc de                                        ; $1095: $13
    ld a, $00                                     ; $1096: $3E $00

Jump_000_1098:
    ldh [rVBK], a                                 ; $1098: $E0 $4F
    ld a, [de]                                    ; $109A: $1A
    add c                                         ; $109B: $81
    ld c, a                                       ; $109C: $4F

jr_000_109D:
    ldh a, [rSTAT]                                ; $109D: $F0 $41
    and $03                                       ; $109F: $E6 $03
    jr nz, jr_000_109D                            ; $10A1: $20 $FA

    ld [hl], c                                    ; $10A3: $71
    inc de                                        ; $10A4: $13
    inc hl                                        ; $10A5: $23
    pop bc                                        ; $10A6: $C1
    pop af                                        ; $10A7: $F1
    sub $01                                       ; $10A8: $D6 $01

Jump_000_10AA:
    jr nc, jr_000_1085                            ; $10AA: $30 $D9

    pop hl                                        ; $10AC: $E1
    ld bc, $0020                                  ; $10AD: $01 $20 $00
    add hl, bc                                    ; $10B0: $09
    pop bc                                        ; $10B1: $C1
    pop af                                        ; $10B2: $F1
    push af                                       ; $10B3: $F5
    and $0F                                       ; $10B4: $E6 $0F
    sub $01                                       ; $10B6: $D6 $01
    jr c, jr_000_10BE                             ; $10B8: $38 $04

    pop af                                        ; $10BA: $F1
    dec a                                         ; $10BB: $3D
    jr jr_000_107E                                ; $10BC: $18 $C0

jr_000_10BE:
    pop af                                        ; $10BE: $F1
    ret                                           ; $10BF: $C9


Call_000_10C0:
Jump_000_10C0:
jr_000_10C0:
    push bc                                       ; $10C0: $C5
    push hl                                       ; $10C1: $E5

Jump_000_10C2:
    ld a, $01                                     ; $10C2: $3E $01
    ldh [rVBK], a                                 ; $10C4: $E0 $4F

jr_000_10C6:
    ldh a, [rSTAT]                                ; $10C6: $F0 $41
    and $03                                       ; $10C8: $E6 $03
    jr nz, jr_000_10C6                            ; $10CA: $20 $FA

    ld a, [de]                                    ; $10CC: $1A
    ld [hl], a                                    ; $10CD: $77
    inc de                                        ; $10CE: $13
    ld a, $00                                     ; $10CF: $3E $00
    ldh [rVBK], a                                 ; $10D1: $E0 $4F

jr_000_10D3:
    ldh a, [rSTAT]                                ; $10D3: $F0 $41
    and $03                                       ; $10D5: $E6 $03
    jr nz, jr_000_10D3                            ; $10D7: $20 $FA

    ld a, [de]                                    ; $10D9: $1A
    ld [hl+], a                                   ; $10DA: $22
    inc de                                        ; $10DB: $13
    dec b                                         ; $10DC: $05
    jp nz, Jump_000_10C2                          ; $10DD: $C2 $C2 $10

Call_000_10E0:
    pop hl                                        ; $10E0: $E1
    ld bc, $0020                                  ; $10E1: $01 $20 $00
    add hl, bc                                    ; $10E4: $09
    pop bc                                        ; $10E5: $C1
    dec c                                         ; $10E6: $0D
    jr nz, jr_000_10C0                            ; $10E7: $20 $D7

    ret                                           ; $10E9: $C9


Call_000_10EA:
Jump_000_10EA:
jr_000_10EA:
    push bc                                       ; $10EA: $C5
    push hl                                       ; $10EB: $E5

Jump_000_10EC:
    ld a, $01                                     ; $10EC: $3E $01
    ldh [rVBK], a                                 ; $10EE: $E0 $4F

jr_000_10F0:
    ldh a, [rSTAT]                                ; $10F0: $F0 $41

Call_000_10F2:
    and $03                                       ; $10F2: $E6 $03
    jr nz, jr_000_10F0                            ; $10F4: $20 $FA

    ld [hl], e                                    ; $10F6: $73
    ld a, $00                                     ; $10F7: $3E $00
    ldh [rVBK], a                                 ; $10F9: $E0 $4F

jr_000_10FB:
    ldh a, [rSTAT]                                ; $10FB: $F0 $41
    and $03                                       ; $10FD: $E6 $03
    jr nz, jr_000_10FB                            ; $10FF: $20 $FA

    ld [hl], d                                    ; $1101: $72
    inc hl                                        ; $1102: $23
    dec b                                         ; $1103: $05
    jp nz, Jump_000_10EC                          ; $1104: $C2 $EC $10

    pop hl                                        ; $1107: $E1

Jump_000_1108:
    ld bc, $0020                                  ; $1108: $01 $20 $00
    add hl, bc                                    ; $110B: $09
    pop bc                                        ; $110C: $C1
    dec c                                         ; $110D: $0D
    jr nz, jr_000_10EA                            ; $110E: $20 $DA

    ret                                           ; $1110: $C9


Call_000_1111:
Jump_000_1111:
jr_000_1111:
    push bc                                       ; $1111: $C5
    push hl                                       ; $1112: $E5

Jump_000_1113:
    ld a, $01                                     ; $1113: $3E $01
    ldh [rVBK], a                                 ; $1115: $E0 $4F

jr_000_1117:
    ldh a, [rSTAT]                                ; $1117: $F0 $41
    and $03                                       ; $1119: $E6 $03
    jr nz, jr_000_1117                            ; $111B: $20 $FA

    ld [hl], e                                    ; $111D: $73
    ld a, $00                                     ; $111E: $3E $00

Jump_000_1120:
    ldh [rVBK], a                                 ; $1120: $E0 $4F

jr_000_1122:
    ldh a, [rSTAT]                                ; $1122: $F0 $41
    and $03                                       ; $1124: $E6 $03
    jr nz, jr_000_1122                            ; $1126: $20 $FA

    ld [hl], d                                    ; $1128: $72
    inc hl                                        ; $1129: $23
    inc d                                         ; $112A: $14
    dec b                                         ; $112B: $05
    jp nz, Jump_000_1113                          ; $112C: $C2 $13 $11

    pop hl                                        ; $112F: $E1
    ld bc, $0020                                  ; $1130: $01 $20 $00
    add hl, bc                                    ; $1133: $09
    pop bc                                        ; $1134: $C1
    dec c                                         ; $1135: $0D
    jr nz, jr_000_1111                            ; $1136: $20 $D9

    ret                                           ; $1138: $C9


Call_000_1139:
Jump_000_1139:
jr_000_1139:
    push bc                                       ; $1139: $C5
    push hl                                       ; $113A: $E5

Jump_000_113B:
    push bc                                       ; $113B: $C5

Jump_000_113C:
    ld a, $01                                     ; $113C: $3E $01

Jump_000_113E:
    ldh [rVBK], a                                 ; $113E: $E0 $4F

jr_000_1140:
    ldh a, [rSTAT]                                ; $1140: $F0 $41
    and $03                                       ; $1142: $E6 $03
    jr nz, jr_000_1140                            ; $1144: $20 $FA

    ld [hl], e                                    ; $1146: $73
    ld a, $00                                     ; $1147: $3E $00
    ldh [rVBK], a                                 ; $1149: $E0 $4F

jr_000_114B:
    ldh a, [rSTAT]                                ; $114B: $F0 $41
    and $03                                       ; $114D: $E6 $03
    jr nz, jr_000_114B                            ; $114F: $20 $FA

    ld [hl], d                                    ; $1151: $72
    ld bc, $0020                                  ; $1152: $01 $20 $00
    add hl, bc                                    ; $1155: $09
    inc d                                         ; $1156: $14
    pop bc                                        ; $1157: $C1
    dec c                                         ; $1158: $0D
    jp nz, Jump_000_113B                          ; $1159: $C2 $3B $11

    pop hl                                        ; $115C: $E1
    inc hl                                        ; $115D: $23
    pop bc                                        ; $115E: $C1
    dec b                                         ; $115F: $05
    jr nz, jr_000_1139                            ; $1160: $20 $D7

    ret                                           ; $1162: $C9


Call_000_1163:
Jump_000_1163:
    push bc                                       ; $1163: $C5
    ld b, $08                                     ; $1164: $06 $08

Jump_000_1166:
jr_000_1166:
    ldh a, [rSTAT]                                ; $1166: $F0 $41
    and $03                                       ; $1168: $E6 $03
    jr nz, jr_000_1166                            ; $116A: $20 $FA

    ld a, h                                       ; $116C: $7C
    ld [de], a                                    ; $116D: $12
    inc de                                        ; $116E: $13

jr_000_116F:
    ldh a, [rSTAT]                                ; $116F: $F0 $41
    and $03                                       ; $1171: $E6 $03
    jr nz, jr_000_116F                            ; $1173: $20 $FA

    ld a, l                                       ; $1175: $7D
    ld [de], a                                    ; $1176: $12
    inc de                                        ; $1177: $13

Jump_000_1178:
    dec b                                         ; $1178: $05
    jp nz, Jump_000_1166                          ; $1179: $C2 $66 $11

    pop bc                                        ; $117C: $C1
    dec b                                         ; $117D: $05
    jp nz, Jump_000_1163                          ; $117E: $C2 $63 $11

    ret                                           ; $1181: $C9


    ld e, [hl]                                    ; $1182: $5E
    inc hl                                        ; $1183: $23
    ld d, [hl]                                    ; $1184: $56
    inc hl                                        ; $1185: $23
    ld b, [hl]                                    ; $1186: $46
    inc hl                                        ; $1187: $23

Call_000_1188:
Jump_000_1188:
jr_000_1188:
    ld a, [hl+]                                   ; $1188: $2A
    ld [de], a                                    ; $1189: $12
    inc de                                        ; $118A: $13
    ld a, [hl+]                                   ; $118B: $2A
    ld [de], a                                    ; $118C: $12
    inc de                                        ; $118D: $13
    ld a, [hl+]                                   ; $118E: $2A
    ld [de], a                                    ; $118F: $12
    inc de                                        ; $1190: $13
    ld a, [hl+]                                   ; $1191: $2A
    ld [de], a                                    ; $1192: $12
    inc de                                        ; $1193: $13
    ld a, [hl+]                                   ; $1194: $2A
    ld [de], a                                    ; $1195: $12
    inc de                                        ; $1196: $13
    ld a, [hl+]                                   ; $1197: $2A
    ld [de], a                                    ; $1198: $12

Jump_000_1199:
    inc de                                        ; $1199: $13
    ld a, [hl+]                                   ; $119A: $2A
    ld [de], a                                    ; $119B: $12
    inc de                                        ; $119C: $13
    ld a, [hl+]                                   ; $119D: $2A
    ld [de], a                                    ; $119E: $12
    inc de                                        ; $119F: $13
    ld a, [hl+]                                   ; $11A0: $2A
    ld [de], a                                    ; $11A1: $12
    inc de                                        ; $11A2: $13
    ld a, [hl+]                                   ; $11A3: $2A
    ld [de], a                                    ; $11A4: $12
    inc de                                        ; $11A5: $13
    ld a, [hl+]                                   ; $11A6: $2A
    ld [de], a                                    ; $11A7: $12
    inc de                                        ; $11A8: $13
    ld a, [hl+]                                   ; $11A9: $2A

Jump_000_11AA:
    ld [de], a                                    ; $11AA: $12
    inc de                                        ; $11AB: $13
    ld a, [hl+]                                   ; $11AC: $2A
    ld [de], a                                    ; $11AD: $12
    inc de                                        ; $11AE: $13
    ld a, [hl+]                                   ; $11AF: $2A
    ld [de], a                                    ; $11B0: $12
    inc de                                        ; $11B1: $13
    ld a, [hl+]                                   ; $11B2: $2A
    ld [de], a                                    ; $11B3: $12
    inc de                                        ; $11B4: $13
    ld a, [hl+]                                   ; $11B5: $2A
    ld [de], a                                    ; $11B6: $12
    inc de                                        ; $11B7: $13
    dec b                                         ; $11B8: $05
    jr nz, jr_000_1188                            ; $11B9: $20 $CD

    ret                                           ; $11BB: $C9


    ld e, [hl]                                    ; $11BC: $5E
    inc hl                                        ; $11BD: $23
    ld d, [hl]                                    ; $11BE: $56
    inc hl                                        ; $11BF: $23
    ld b, [hl]                                    ; $11C0: $46
    inc hl                                        ; $11C1: $23

Call_000_11C2:
Jump_000_11C2:
    push bc                                       ; $11C2: $C5
    ld b, $10                                     ; $11C3: $06 $10

Jump_000_11C5:
jr_000_11C5:
    ldh a, [rSTAT]                                ; $11C5: $F0 $41
    and $03                                       ; $11C7: $E6 $03
    jr nz, jr_000_11C5                            ; $11C9: $20 $FA

    ld a, [hl+]                                   ; $11CB: $2A
    ld [de], a                                    ; $11CC: $12
    inc de                                        ; $11CD: $13
    dec b                                         ; $11CE: $05
    jp nz, Jump_000_11C5                          ; $11CF: $C2 $C5 $11

    pop bc                                        ; $11D2: $C1
    dec b                                         ; $11D3: $05
    jp nz, Jump_000_11C2                          ; $11D4: $C2 $C2 $11

    ret                                           ; $11D7: $C9


    ld e, [hl]                                    ; $11D8: $5E
    inc hl                                        ; $11D9: $23
    ld d, [hl]                                    ; $11DA: $56
    inc hl                                        ; $11DB: $23
    ld a, [hl]                                    ; $11DC: $7E
    inc hl                                        ; $11DD: $23
    push af                                       ; $11DE: $F5
    push de                                       ; $11DF: $D5
    push hl                                       ; $11E0: $E5
    push bc                                       ; $11E1: $C5
    pop hl                                        ; $11E2: $E1

Jump_000_11E3:
    push af                                       ; $11E3: $F5
    ld a, $10                                     ; $11E4: $3E $10

Jump_000_11E6:
    push af                                       ; $11E6: $F5
    ld a, [de]                                    ; $11E7: $1A
    and [hl]                                      ; $11E8: $A6
    ld [de], a                                    ; $11E9: $12
    inc de                                        ; $11EA: $13
    inc hl                                        ; $11EB: $23
    pop af                                        ; $11EC: $F1
    dec a                                         ; $11ED: $3D

Call_000_11EE:
    jp nz, Jump_000_11E6                          ; $11EE: $C2 $E6 $11

    pop af                                        ; $11F1: $F1
    dec a                                         ; $11F2: $3D
    jp nz, Jump_000_11E3                          ; $11F3: $C2 $E3 $11

    pop hl                                        ; $11F6: $E1
    pop de                                        ; $11F7: $D1
    pop af                                        ; $11F8: $F1

Jump_000_11F9:
    push af                                       ; $11F9: $F5
    ld a, $10                                     ; $11FA: $3E $10

Jump_000_11FC:
    push af                                       ; $11FC: $F5
    ld a, [de]                                    ; $11FD: $1A
    or [hl]                                       ; $11FE: $B6
    ld [de], a                                    ; $11FF: $12
    inc de                                        ; $1200: $13
    inc hl                                        ; $1201: $23
    pop af                                        ; $1202: $F1
    dec a                                         ; $1203: $3D
    jp nz, Jump_000_11FC                          ; $1204: $C2 $FC $11

    pop af                                        ; $1207: $F1
    dec a                                         ; $1208: $3D
    jp nz, Jump_000_11F9                          ; $1209: $C2 $F9 $11

    ret                                           ; $120C: $C9


    ld e, [hl]                                    ; $120D: $5E
    inc hl                                        ; $120E: $23
    ld d, [hl]                                    ; $120F: $56
    inc hl                                        ; $1210: $23
    ld b, [hl]                                    ; $1211: $46
    inc hl                                        ; $1212: $23

Jump_000_1213:
    push bc                                       ; $1213: $C5
    ld b, $10                                     ; $1214: $06 $10

Jump_000_1216:
    push bc                                       ; $1216: $C5
    ld b, $00                                     ; $1217: $06 $00
    ld c, [hl]                                    ; $1219: $4E
    inc hl                                        ; $121A: $23
    call Call_000_1234                            ; $121B: $CD $34 $12
    ld a, b                                       ; $121E: $78
    push af                                       ; $121F: $F5

jr_000_1220:
    ldh a, [rSTAT]                                ; $1220: $F0 $41
    and $03                                       ; $1222: $E6 $03
    jr nz, jr_000_1220                            ; $1224: $20 $FA

    pop af                                        ; $1226: $F1
    ld [de], a                                    ; $1227: $12
    inc de                                        ; $1228: $13
    pop bc                                        ; $1229: $C1
    dec b                                         ; $122A: $05
    jp nz, Jump_000_1216                          ; $122B: $C2 $16 $12

    pop bc                                        ; $122E: $C1
    dec b                                         ; $122F: $05
    jp nz, Jump_000_1213                          ; $1230: $C2 $13 $12

    ret                                           ; $1233: $C9


Call_000_1234:
    ldh a, [$FFE0]                                ; $1234: $F0 $E0
    push af                                       ; $1236: $F5
    ld a, $2D                                     ; $1237: $3E $2D
    ldh [$FFE0], a                                ; $1239: $E0 $E0
    ld [$2000], a                                 ; $123B: $EA $00 $20
    push hl                                       ; $123E: $E5
    ld hl, $40A2                                  ; $123F: $21 $A2 $40
    add hl, bc                                    ; $1242: $09
    ld b, [hl]                                    ; $1243: $46
    pop hl                                        ; $1244: $E1
    pop af                                        ; $1245: $F1
    ldh [$FFE0], a                                ; $1246: $E0 $E0
    ld [$2000], a                                 ; $1248: $EA $00 $20
    ret                                           ; $124B: $C9


Call_000_124C:
    push de                                       ; $124C: $D5
    ld c, [hl]                                    ; $124D: $4E
    inc hl                                        ; $124E: $23
    ld a, [hl+]                                   ; $124F: $2A
    ld b, a                                       ; $1250: $47
    res 7, b                                      ; $1251: $CB $B8
    res 6, b                                      ; $1253: $CB $B0
    inc bc                                        ; $1255: $03
    rlca                                          ; $1256: $07
    rlca                                          ; $1257: $07
    and $03                                       ; $1258: $E6 $03
    sub $04                                       ; $125A: $D6 $04
    cpl                                           ; $125C: $2F
    inc a                                         ; $125D: $3C
    ld [$C327], a                                 ; $125E: $EA $27 $C3
    push bc                                       ; $1261: $C5
    ld b, a                                       ; $1262: $47
    ld a, $01                                     ; $1263: $3E $01

Jump_000_1265:
    sla a                                         ; $1265: $CB $27
    dec b                                         ; $1267: $05
    jp nz, Jump_000_1265                          ; $1268: $C2 $65 $12

    dec a                                         ; $126B: $3D
    ld [$C328], a                                 ; $126C: $EA $28 $C3
    pop bc                                        ; $126F: $C1

Jump_000_1270:
    push bc                                       ; $1270: $C5
    ld a, [hl+]                                   ; $1271: $2A
    ld [$C326], a                                 ; $1272: $EA $26 $C3
    ld b, $08                                     ; $1275: $06 $08

Jump_000_1277:
    ld a, [$C326]                                 ; $1277: $FA $26 $C3
    add a                                         ; $127A: $87
    ld [$C326], a                                 ; $127B: $EA $26 $C3
    jp c, Jump_000_128B                           ; $127E: $DA $8B $12

    ld a, [hl+]                                   ; $1281: $2A
    ld [de], a                                    ; $1282: $12
    inc de                                        ; $1283: $13
    dec b                                         ; $1284: $05
    jp nz, Jump_000_1277                          ; $1285: $C2 $77 $12

    jp Jump_000_12BB                              ; $1288: $C3 $BB $12


Jump_000_128B:
    push bc                                       ; $128B: $C5
    ld a, [hl+]                                   ; $128C: $2A
    push af                                       ; $128D: $F5
    push af                                       ; $128E: $F5
    ld a, [$C327]                                 ; $128F: $FA $27 $C3
    ld b, a                                       ; $1292: $47
    pop af                                        ; $1293: $F1

Jump_000_1294:
    srl a                                         ; $1294: $CB $3F
    dec b                                         ; $1296: $05
    jp nz, Jump_000_1294                          ; $1297: $C2 $94 $12

    cpl                                           ; $129A: $2F
    ld c, a                                       ; $129B: $4F
    ld a, [$C328]                                 ; $129C: $FA $28 $C3
    ld b, a                                       ; $129F: $47
    pop af                                        ; $12A0: $F1

Jump_000_12A1:
    and b                                         ; $12A1: $A0
    inc a                                         ; $12A2: $3C
    ld b, $FF                                     ; $12A3: $06 $FF
    push hl                                       ; $12A5: $E5
    push de                                       ; $12A6: $D5
    pop hl                                        ; $12A7: $E1

Jump_000_12A8:
    push af                                       ; $12A8: $F5
    push hl                                       ; $12A9: $E5
    add hl, bc                                    ; $12AA: $09
    ld a, [hl]                                    ; $12AB: $7E
    pop hl                                        ; $12AC: $E1
    ld [hl+], a                                   ; $12AD: $22
    pop af                                        ; $12AE: $F1
    dec a                                         ; $12AF: $3D
    jp nz, Jump_000_12A8                          ; $12B0: $C2 $A8 $12

    push hl                                       ; $12B3: $E5
    pop de                                        ; $12B4: $D1
    pop hl                                        ; $12B5: $E1
    pop bc                                        ; $12B6: $C1
    dec b                                         ; $12B7: $05
    jp nz, Jump_000_1277                          ; $12B8: $C2 $77 $12

Jump_000_12BB:
    pop bc                                        ; $12BB: $C1
    dec bc                                        ; $12BC: $0B
    ld a, b                                       ; $12BD: $78
    or c                                          ; $12BE: $B1
    jp nz, Jump_000_1270                          ; $12BF: $C2 $70 $12

    pop bc                                        ; $12C2: $C1
    push de                                       ; $12C3: $D5
    push de                                       ; $12C4: $D5
    pop hl                                        ; $12C5: $E1
    ld a, b                                       ; $12C6: $78
    cpl                                           ; $12C7: $2F
    ld b, a                                       ; $12C8: $47
    ld a, c                                       ; $12C9: $79
    cpl                                           ; $12CA: $2F
    ld c, a                                       ; $12CB: $4F
    inc bc                                        ; $12CC: $03
    add hl, bc                                    ; $12CD: $09
    push hl                                       ; $12CE: $E5
    swap h                                        ; $12CF: $CB $34
    ld a, l                                       ; $12D1: $7D
    swap a                                        ; $12D2: $CB $37
    and $0F                                       ; $12D4: $E6 $0F
    or h                                          ; $12D6: $B4
    ld b, a                                       ; $12D7: $47
    pop hl                                        ; $12D8: $E1
    pop de                                        ; $12D9: $D1
    ret                                           ; $12DA: $C9


Call_000_12DB:
    push de                                       ; $12DB: $D5
    push hl                                       ; $12DC: $E5
    ld d, a                                       ; $12DD: $57
    or a                                          ; $12DE: $B7
    jr z, jr_000_12EE                             ; $12DF: $28 $0D

    cp $97                                        ; $12E1: $FE $97
    jr nc, jr_000_12EE                            ; $12E3: $30 $09

    cp $8A                                        ; $12E5: $FE $8A
    jr nc, jr_000_12F5                            ; $12E7: $30 $0C

    ld a, $01                                     ; $12E9: $3E $01
    ld [$C000], a                                 ; $12EB: $EA $00 $C0

jr_000_12EE:
    ldh a, [$FFE0]                                ; $12EE: $F0 $E0
    push af                                       ; $12F0: $F5
    ld a, $2E                                     ; $12F1: $3E $2E
    jr jr_000_12FF                                ; $12F3: $18 $0A

jr_000_12F5:
    ld a, $02                                     ; $12F5: $3E $02
    ld [$C000], a                                 ; $12F7: $EA $00 $C0
    ldh a, [$FFE0]                                ; $12FA: $F0 $E0
    push af                                       ; $12FC: $F5
    ld a, $2F                                     ; $12FD: $3E $2F

jr_000_12FF:
    ldh [$FFE0], a                                ; $12FF: $E0 $E0
    ld [$2000], a                                 ; $1301: $EA $00 $20

Jump_000_1304:
    ld a, d                                       ; $1304: $7A
    call $4000                                    ; $1305: $CD $00 $40
    pop af                                        ; $1308: $F1
    ldh [$FFE0], a                                ; $1309: $E0 $E0
    ld [$2000], a                                 ; $130B: $EA $00 $20
    pop hl                                        ; $130E: $E1
    pop de                                        ; $130F: $D1
    ret                                           ; $1310: $C9


Call_000_1311:
    ld a, [$C037]                                 ; $1311: $FA $37 $C0
    bit 7, a                                      ; $1314: $CB $7F
    jp z, Jump_000_1335                           ; $1316: $CA $35 $13

    push bc                                       ; $1319: $C5
    push de                                       ; $131A: $D5

Call_000_131B:
    push hl                                       ; $131B: $E5
    pop bc                                        ; $131C: $C1
    ld a, $0F                                     ; $131D: $3E $0F
    and c                                         ; $131F: $A1
    ld c, a                                       ; $1320: $4F
    ld hl, $C03F                                  ; $1321: $21 $3F $C0

Jump_000_1324:
    ld [hl], b                                    ; $1324: $70
    inc hl                                        ; $1325: $23
    ld [hl], $00                                  ; $1326: $36 $00
    inc hl                                        ; $1328: $23
    ld a, [hl]                                    ; $1329: $7E
    and $F0                                       ; $132A: $E6 $F0
    or c                                          ; $132C: $B1
    ld [hl], a                                    ; $132D: $77
    ld a, $01                                     ; $132E: $3E $01
    ld [$C03D], a                                 ; $1330: $EA $3D $C0
    pop de                                        ; $1333: $D1
    pop bc                                        ; $1334: $C1

Jump_000_1335:
    ret                                           ; $1335: $C9


Call_000_1336:
    ld a, [$C037]                                 ; $1336: $FA $37 $C0
    bit 7, a                                      ; $1339: $CB $7F
    jp z, Jump_000_135C                           ; $133B: $CA $5C $13

    push bc                                       ; $133E: $C5
    push de                                       ; $133F: $D5
    push hl                                       ; $1340: $E5
    pop bc                                        ; $1341: $C1
    ld a, $0F                                     ; $1342: $3E $0F
    and c                                         ; $1344: $A1
    swap a                                        ; $1345: $CB $37
    ld c, a                                       ; $1347: $4F
    ld hl, $C03F                                  ; $1348: $21 $3F $C0
    ld [hl], $00                                  ; $134B: $36 $00
    inc hl                                        ; $134D: $23
    ld [hl], b                                    ; $134E: $70
    inc hl                                        ; $134F: $23
    ld a, [hl]                                    ; $1350: $7E
    and $0F                                       ; $1351: $E6 $0F

Jump_000_1353:
    or c                                          ; $1353: $B1
    ld [hl], a                                    ; $1354: $77
    ld a, $01                                     ; $1355: $3E $01
    ld [$C03D], a                                 ; $1357: $EA $3D $C0
    pop de                                        ; $135A: $D1
    pop bc                                        ; $135B: $C1

Jump_000_135C:
    ret                                           ; $135C: $C9


Call_000_135D:
    jp Jump_000_1360                              ; $135D: $C3 $60 $13


Call_000_1360:
Jump_000_1360:
    push hl                                       ; $1360: $E5
    push de                                       ; $1361: $D5
    push bc                                       ; $1362: $C5
    ld d, a                                       ; $1363: $57
    ldh a, [$FFE0]                                ; $1364: $F0 $E0
    push af                                       ; $1366: $F5
    ld a, $2D                                     ; $1367: $3E $2D
    ldh [$FFE0], a                                ; $1369: $E0 $E0
    ld [$2000], a                                 ; $136B: $EA $00 $20
    ld a, d                                       ; $136E: $7A
    call $4000                                    ; $136F: $CD $00 $40
    pop af                                        ; $1372: $F1
    ldh [$FFE0], a                                ; $1373: $E0 $E0
    ld [$2000], a                                 ; $1375: $EA $00 $20
    pop bc                                        ; $1378: $C1
    pop de                                        ; $1379: $D1
    pop hl                                        ; $137A: $E1
    ret                                           ; $137B: $C9


Call_000_137C:
    ld a, $41                                     ; $137C: $3E $41
    ld [$C03E], a                                 ; $137E: $EA $3E $C0
    ldh a, [$FFE0]                                ; $1381: $F0 $E0
    push af                                       ; $1383: $F5
    ld a, $2E                                     ; $1384: $3E $2E
    ldh [$FFE0], a                                ; $1386: $E0 $E0
    ld [$2000], a                                 ; $1388: $EA $00 $20
    call $46B9                                    ; $138B: $CD $B9 $46
    pop af                                        ; $138E: $F1
    ldh [$FFE0], a                                ; $138F: $E0 $E0
    ld [$2000], a                                 ; $1391: $EA $00 $20
    ret                                           ; $1394: $C9


Call_000_1395:
    push af                                       ; $1395: $F5
    push bc                                       ; $1396: $C5
    push de                                       ; $1397: $D5
    push hl                                       ; $1398: $E5
    ldh a, [$FFE0]                                ; $1399: $F0 $E0
    push af                                       ; $139B: $F5
    ld a, [$C000]                                 ; $139C: $FA $00 $C0
    cp $02                                        ; $139F: $FE $02
    jr z, jr_000_13A7                             ; $13A1: $28 $04

    ld a, $2E                                     ; $13A3: $3E $2E
    jr jr_000_13A9                                ; $13A5: $18 $02

jr_000_13A7:
    ld a, $2F                                     ; $13A7: $3E $2F

jr_000_13A9:
    ldh [$FFE0], a                                ; $13A9: $E0 $E0
    ld [$2000], a                                 ; $13AB: $EA $00 $20
    call $400E                                    ; $13AE: $CD $0E $40
    pop af                                        ; $13B1: $F1
    ldh [$FFE0], a                                ; $13B2: $E0 $E0
    ld [$2000], a                                 ; $13B4: $EA $00 $20
    pop hl                                        ; $13B7: $E1
    pop de                                        ; $13B8: $D1
    pop bc                                        ; $13B9: $C1
    pop af                                        ; $13BA: $F1
    ret                                           ; $13BB: $C9


Call_000_13BC:
    ld hl, $C017                                  ; $13BC: $21 $17 $C0
    and [hl]                                      ; $13BF: $A6
    jr nz, jr_000_13E9                            ; $13C0: $20 $27

    ld de, $0000                                  ; $13C2: $11 $00 $00
    ldh a, [rNR50]                                ; $13C5: $F0 $24
    ld b, a                                       ; $13C7: $47
    and $77                                       ; $13C8: $E6 $77
    jr z, jr_000_13E7                             ; $13CA: $28 $1B

    and $70                                       ; $13CC: $E6 $70
    jr z, jr_000_13D3                             ; $13CE: $28 $03

    sub $10                                       ; $13D0: $D6 $10
    ld d, a                                       ; $13D2: $57

jr_000_13D3:
    ld a, b                                       ; $13D3: $78
    and $07                                       ; $13D4: $E6 $07
    jr z, jr_000_13DB                             ; $13D6: $28 $03

    sub $01                                       ; $13D8: $D6 $01
    ld e, a                                       ; $13DA: $5F

jr_000_13DB:
    ld a, b                                       ; $13DB: $78
    and $88                                       ; $13DC: $E6 $88
    or d                                          ; $13DE: $B2
    or e                                          ; $13DF: $B3

Jump_000_13E0:
    ldh [rNR50], a                                ; $13E0: $E0 $24
    ldh a, [rNR50]                                ; $13E2: $F0 $24
    and $77                                       ; $13E4: $E6 $77
    ret                                           ; $13E6: $C9


jr_000_13E7:
    xor a                                         ; $13E7: $AF
    ret                                           ; $13E8: $C9


jr_000_13E9:
    ld a, $01                                     ; $13E9: $3E $01
    or a                                          ; $13EB: $B7
    ret                                           ; $13EC: $C9


Call_000_13ED:
    ld hl, $C037                                  ; $13ED: $21 $37 $C0
    bit 7, [hl]                                   ; $13F0: $CB $7E
    ret nz                                        ; $13F2: $C0

    ld a, $80                                     ; $13F3: $3E $80
    ldh [rBCPS], a                                ; $13F5: $E0 $68
    ld b, $40                                     ; $13F7: $06 $40
    xor a                                         ; $13F9: $AF

jr_000_13FA:
    ldh [rBCPD], a                                ; $13FA: $E0 $69
    dec b                                         ; $13FC: $05
    jr nz, jr_000_13FA                            ; $13FD: $20 $FB

    ld a, $80                                     ; $13FF: $3E $80
    ldh [rOCPS], a                                ; $1401: $E0 $6A
    ld b, $40                                     ; $1403: $06 $40
    xor a                                         ; $1405: $AF

jr_000_1406:
    ldh [rOCPD], a                                ; $1406: $E0 $6B
    dec b                                         ; $1408: $05
    jr nz, jr_000_1406                            ; $1409: $20 $FB

    ret                                           ; $140B: $C9


Call_000_140C:
    ld hl, $C037                                  ; $140C: $21 $37 $C0

Call_000_140F:
    bit 7, [hl]                                   ; $140F: $CB $7E
    ret nz                                        ; $1411: $C0

    ld hl, $D380                                  ; $1412: $21 $80 $D3
    ld b, $80                                     ; $1415: $06 $80
    xor a                                         ; $1417: $AF

jr_000_1418:
    ld [hl+], a                                   ; $1418: $22
    dec b                                         ; $1419: $05
    jr nz, jr_000_1418                            ; $141A: $20 $FC

    call Call_000_147A                            ; $141C: $CD $7A $14
    ret                                           ; $141F: $C9


    ld hl, $C037                                  ; $1420: $21 $37 $C0
    bit 7, [hl]                                   ; $1423: $CB $7E
    ret nz                                        ; $1425: $C0

    push bc                                       ; $1426: $C5
    and $0F                                       ; $1427: $E6 $0F
    ld hl, $D380                                  ; $1429: $21 $80 $D3
    ld b, $00                                     ; $142C: $06 $00
    ld c, a                                       ; $142E: $4F
    sla c                                         ; $142F: $CB $21
    rl b                                          ; $1431: $CB $10
    sla c                                         ; $1433: $CB $21
    rl b                                          ; $1435: $CB $10
    sla c                                         ; $1437: $CB $21
    rl b                                          ; $1439: $CB $10
    add hl, bc                                    ; $143B: $09
    pop bc                                        ; $143C: $C1

jr_000_143D:
    ld a, [de]                                    ; $143D: $1A
    inc de                                        ; $143E: $13
    ld [hl+], a                                   ; $143F: $22
    ld a, [de]                                    ; $1440: $1A
    inc de                                        ; $1441: $13
    ld [hl+], a                                   ; $1442: $22
    ld a, [de]                                    ; $1443: $1A
    inc de                                        ; $1444: $13
    ld [hl+], a                                   ; $1445: $22
    ld a, [de]                                    ; $1446: $1A
    inc de                                        ; $1447: $13
    ld [hl+], a                                   ; $1448: $22
    ld a, [de]                                    ; $1449: $1A
    inc de                                        ; $144A: $13
    ld [hl+], a                                   ; $144B: $22
    ld a, [de]                                    ; $144C: $1A
    inc de                                        ; $144D: $13
    ld [hl+], a                                   ; $144E: $22
    ld a, [de]                                    ; $144F: $1A
    inc de                                        ; $1450: $13
    ld [hl+], a                                   ; $1451: $22
    ld a, [de]                                    ; $1452: $1A
    inc de                                        ; $1453: $13
    ld [hl+], a                                   ; $1454: $22
    dec b                                         ; $1455: $05
    jr nz, jr_000_143D                            ; $1456: $20 $E5

    ld a, $FF                                     ; $1458: $3E $FF
    ldh [$FFBE], a                                ; $145A: $E0 $BE

Jump_000_145C:
    ldh [$FFBF], a                                ; $145C: $E0 $BF
    call Call_000_0417                            ; $145E: $CD $17 $04
    call Call_000_0417                            ; $1461: $CD $17 $04
    ret                                           ; $1464: $C9


Call_000_1465:
    ld hl, $C037                                  ; $1465: $21 $37 $C0
    bit 7, [hl]                                   ; $1468: $CB $7E
    ret nz                                        ; $146A: $C0

    ld hl, $D400                                  ; $146B: $21 $00 $D4
    ld de, $D380                                  ; $146E: $11 $80 $D3
    ld b, $80                                     ; $1471: $06 $80

jr_000_1473:
    ld a, [hl+]                                   ; $1473: $2A
    ld [de], a                                    ; $1474: $12
    inc de                                        ; $1475: $13
    dec b                                         ; $1476: $05
    jr nz, jr_000_1473                            ; $1477: $20 $FA

    ret                                           ; $1479: $C9


Call_000_147A:
    ld hl, $C037                                  ; $147A: $21 $37 $C0
    bit 7, [hl]                                   ; $147D: $CB $7E
    ret nz                                        ; $147F: $C0

    ld a, $01                                     ; $1480: $3E $01
    ld [$C01D], a                                 ; $1482: $EA $1D $C0
    call Call_000_0417                            ; $1485: $CD $17 $04
    ld a, $FF                                     ; $1488: $3E $FF
    ldh [$FFBE], a                                ; $148A: $E0 $BE
    ldh [$FFBF], a                                ; $148C: $E0 $BF
    call Call_000_0417                            ; $148E: $CD $17 $04
    call Call_000_0417                            ; $1491: $CD $17 $04
    ld a, $00                                     ; $1494: $3E $00
    ld [$C01D], a                                 ; $1496: $EA $1D $C0
    call Call_000_0417                            ; $1499: $CD $17 $04
    ret                                           ; $149C: $C9


Call_000_149D:
    ld hl, $C037                                  ; $149D: $21 $37 $C0
    bit 7, [hl]                                   ; $14A0: $CB $7E
    ret nz                                        ; $14A2: $C0

    ld a, $01                                     ; $14A3: $3E $01
    ld [$C01D], a                                 ; $14A5: $EA $1D $C0
    call Call_000_0417                            ; $14A8: $CD $17 $04
    ld a, $FF                                     ; $14AB: $3E $FF
    ldh [$FFBF], a                                ; $14AD: $E0 $BF
    call Call_000_0417                            ; $14AF: $CD $17 $04
    ldh [$FFBE], a                                ; $14B2: $E0 $BE
    call Call_000_0417                            ; $14B4: $CD $17 $04
    ld a, $00                                     ; $14B7: $3E $00
    ld [$C01D], a                                 ; $14B9: $EA $1D $C0
    call Call_000_0417                            ; $14BC: $CD $17 $04
    ret                                           ; $14BF: $C9


Call_000_14C0:
    ld hl, $C037                                  ; $14C0: $21 $37 $C0
    bit 7, [hl]                                   ; $14C3: $CB $7E
    jr z, jr_000_14CE                             ; $14C5: $28 $07

    ld b, $2C                                     ; $14C7: $06 $2C
    ld hl, $5A45                                  ; $14C9: $21 $45 $5A
    rst RST_08                                    ; $14CC: $CF
    ret                                           ; $14CD: $C9


jr_000_14CE:
    ld b, $2C                                     ; $14CE: $06 $2C
    ld hl, $61E5                                  ; $14D0: $21 $E5 $61
    rst RST_08                                    ; $14D3: $CF
    ret                                           ; $14D4: $C9


    ld a, $1F                                     ; $14D5: $3E $1F
    ld [$C289], a                                 ; $14D7: $EA $89 $C2
    ld a, $3E                                     ; $14DA: $3E $3E
    ld [$C28A], a                                 ; $14DC: $EA $8A $C2
    ld a, $7C                                     ; $14DF: $3E $7C
    ld [$C28B], a                                 ; $14E1: $EA $8B $C2
    ret                                           ; $14E4: $C9


Call_000_14E5:
jr_000_14E5:
    ldh a, [rLY]                                  ; $14E5: $F0 $44
    cp $70                                        ; $14E7: $FE $70
    jr nz, jr_000_14E5                            ; $14E9: $20 $FA

    ld hl, $C04F                                  ; $14EB: $21 $4F $C0
    call Call_000_02C6                            ; $14EE: $CD $C6 $02
    ret                                           ; $14F1: $C9


jr_000_14F2:
    ld a, [hl+]                                   ; $14F2: $2A
    ld [de], a                                    ; $14F3: $12
    inc de                                        ; $14F4: $13
    dec b                                         ; $14F5: $05
    jr nz, jr_000_14F2                            ; $14F6: $20 $FA

    ret                                           ; $14F8: $C9


    ld hl, $C037                                  ; $14F9: $21 $37 $C0
    bit 7, [hl]                                   ; $14FC: $CB $7E
    jp z, Jump_000_1569                           ; $14FE: $CA $69 $15

Call_000_1501:
    ld a, [$C017]                                 ; $1501: $FA $17 $C0
    and c                                         ; $1504: $A1
    jp nz, Jump_000_1567                          ; $1505: $C2 $67 $15

    push bc                                       ; $1508: $C5
    call Call_000_156E                            ; $1509: $CD $6E $15
    pop bc                                        ; $150C: $C1

Jump_000_150D:
    push bc                                       ; $150D: $C5
    call Call_000_1580                            ; $150E: $CD $80 $15
    call Call_000_15AD                            ; $1511: $CD $AD $15
    ld a, [$C289]                                 ; $1514: $FA $89 $C2
    cp l                                          ; $1517: $BD
    jr nc, jr_000_1520                            ; $1518: $30 $06

    ld a, $01                                     ; $151A: $3E $01
    add c                                         ; $151C: $81
    and $1F                                       ; $151D: $E6 $1F
    ld c, a                                       ; $151F: $4F

jr_000_1520:
    ld a, [$C28A]                                 ; $1520: $FA $8A $C2
    cp e                                          ; $1523: $BB
    jr nc, jr_000_152C                            ; $1524: $30 $06

    ld a, $02                                     ; $1526: $3E $02
    add d                                         ; $1528: $82
    and $3E                                       ; $1529: $E6 $3E
    ld d, a                                       ; $152B: $57

jr_000_152C:
    ld a, [$C28B]                                 ; $152C: $FA $8B $C2
    cp h                                          ; $152F: $BC
    jr nc, jr_000_1538                            ; $1530: $30 $06

    ld a, $04                                     ; $1532: $3E $04
    add b                                         ; $1534: $80
    and $7C                                       ; $1535: $E6 $7C
    ld b, a                                       ; $1537: $47

jr_000_1538:
    call Call_000_15E3                            ; $1538: $CD $E3 $15
    pop bc                                        ; $153B: $C1
    dec b                                         ; $153C: $05
    jp nz, Jump_000_150D                          ; $153D: $C2 $0D $15

    ld a, [$C289]                                 ; $1540: $FA $89 $C2
    or a                                          ; $1543: $B7
    jr z, jr_000_1569                             ; $1544: $28 $23

    ld a, [$C289]                                 ; $1546: $FA $89 $C2
    sub $01                                       ; $1549: $D6 $01
    and $1F                                       ; $154B: $E6 $1F
    ld [$C289], a                                 ; $154D: $EA $89 $C2
    ld a, [$C28A]                                 ; $1550: $FA $8A $C2
    sub $02                                       ; $1553: $D6 $02
    and $3E                                       ; $1555: $E6 $3E
    ld [$C28A], a                                 ; $1557: $EA $8A $C2
    ld a, [$C28B]                                 ; $155A: $FA $8B $C2
    sub $04                                       ; $155D: $D6 $04
    and $7C                                       ; $155F: $E6 $7C
    ld [$C28B], a                                 ; $1561: $EA $8B $C2
    call Call_000_14E5                            ; $1564: $CD $E5 $14

Jump_000_1567:
    xor a                                         ; $1567: $AF
    ret                                           ; $1568: $C9


Jump_000_1569:
jr_000_1569:
    call Call_000_14E5                            ; $1569: $CD $E5 $14
    scf                                           ; $156C: $37
    ret                                           ; $156D: $C9


Call_000_156E:
    push hl                                       ; $156E: $E5
    ld bc, $C050                                  ; $156F: $01 $50 $C0
    ld hl, $C28C                                  ; $1572: $21 $8C $C2
    ld [hl], c                                    ; $1575: $71
    inc hl                                        ; $1576: $23
    ld [hl], b                                    ; $1577: $70
    ld hl, $C28E                                  ; $1578: $21 $8E $C2
    ld [hl], e                                    ; $157B: $73
    inc hl                                        ; $157C: $23
    ld [hl], d                                    ; $157D: $72
    pop hl                                        ; $157E: $E1
    ret                                           ; $157F: $C9


Call_000_1580:
    push hl                                       ; $1580: $E5

Jump_000_1581:
    ld a, [$C28D]                                 ; $1581: $FA $8D $C2
    ld h, a                                       ; $1584: $67
    ld a, [$C28C]                                 ; $1585: $FA $8C $C2
    ld l, a                                       ; $1588: $6F
    ld c, [hl]                                    ; $1589: $4E
    inc hl                                        ; $158A: $23
    ld b, [hl]                                    ; $158B: $46
    push bc                                       ; $158C: $C5
    pop hl                                        ; $158D: $E1
    srl h                                         ; $158E: $CB $3C
    rr l                                          ; $1590: $CB $1D
    srl h                                         ; $1592: $CB $3C
    rr l                                          ; $1594: $CB $1D
    srl h                                         ; $1596: $CB $3C
    rr l                                          ; $1598: $CB $1D
    srl h                                         ; $159A: $CB $3C
    rr l                                          ; $159C: $CB $1D
    ld d, l                                       ; $159E: $55
    ld a, $7C                                     ; $159F: $3E $7C
    and b                                         ; $15A1: $A0
    ld b, a                                       ; $15A2: $47
    ld a, $3E                                     ; $15A3: $3E $3E
    and d                                         ; $15A5: $A2
    ld d, a                                       ; $15A6: $57
    ld a, $1F                                     ; $15A7: $3E $1F
    and c                                         ; $15A9: $A1
    ld c, a                                       ; $15AA: $4F
    pop hl                                        ; $15AB: $E1
    ret                                           ; $15AC: $C9


Call_000_15AD:
    push bc                                       ; $15AD: $C5
    ld a, [$C28F]                                 ; $15AE: $FA $8F $C2
    ld h, a                                       ; $15B1: $67
    ld a, [$C28E]                                 ; $15B2: $FA $8E $C2
    ld l, a                                       ; $15B5: $6F
    ld c, [hl]                                    ; $15B6: $4E
    inc hl                                        ; $15B7: $23
    ld b, [hl]                                    ; $15B8: $46
    inc hl                                        ; $15B9: $23
    ld a, h                                       ; $15BA: $7C
    ld [$C28F], a                                 ; $15BB: $EA $8F $C2
    ld a, l                                       ; $15BE: $7D
    ld [$C28E], a                                 ; $15BF: $EA $8E $C2
    push bc                                       ; $15C2: $C5
    pop hl                                        ; $15C3: $E1
    srl b                                         ; $15C4: $CB $38
    rr c                                          ; $15C6: $CB $19
    srl b                                         ; $15C8: $CB $38
    rr c                                          ; $15CA: $CB $19
    srl b                                         ; $15CC: $CB $38
    rr c                                          ; $15CE: $CB $19
    srl b                                         ; $15D0: $CB $38
    rr c                                          ; $15D2: $CB $19
    ld e, c                                       ; $15D4: $59
    ld a, $7C                                     ; $15D5: $3E $7C
    and h                                         ; $15D7: $A4
    ld h, a                                       ; $15D8: $67
    ld a, $3E                                     ; $15D9: $3E $3E
    and e                                         ; $15DB: $A3
    ld e, a                                       ; $15DC: $5F
    ld a, $1F                                     ; $15DD: $3E $1F
    and l                                         ; $15DF: $A5
    ld l, a                                       ; $15E0: $6F

Jump_000_15E1:
    pop bc                                        ; $15E1: $C1
    ret                                           ; $15E2: $C9


Call_000_15E3:
    push de                                       ; $15E3: $D5
    push hl                                       ; $15E4: $E5
    ld a, [$C28D]                                 ; $15E5: $FA $8D $C2
    ld h, a                                       ; $15E8: $67
    ld a, [$C28C]                                 ; $15E9: $FA $8C $C2
    ld l, a                                       ; $15EC: $6F
    ld e, d                                       ; $15ED: $5A
    swap d                                        ; $15EE: $CB $32
    ld a, $0F                                     ; $15F0: $3E $0F
    and d                                         ; $15F2: $A2
    ld d, a                                       ; $15F3: $57
    ld a, $0F                                     ; $15F4: $3E $0F
    and e                                         ; $15F6: $A3
    swap a                                        ; $15F7: $CB $37
    ld e, a                                       ; $15F9: $5F
    ld a, c                                       ; $15FA: $79

Jump_000_15FB:
    or e                                          ; $15FB: $B3
    ld [hl+], a                                   ; $15FC: $22
    ld a, b                                       ; $15FD: $78
    or d                                          ; $15FE: $B2

Call_000_15FF:
    ld [hl+], a                                   ; $15FF: $22
    ld a, h                                       ; $1600: $7C
    ld [$C28D], a                                 ; $1601: $EA $8D $C2
    ld a, l                                       ; $1604: $7D
    ld [$C28C], a                                 ; $1605: $EA $8C $C2

Jump_000_1608:
    pop hl                                        ; $1608: $E1
    pop de                                        ; $1609: $D1
    ret                                           ; $160A: $C9


Call_000_160B:
    ld hl, $C037                                  ; $160B: $21 $37 $C0
    bit 7, [hl]                                   ; $160E: $CB $7E
    jp z, Jump_000_163E                           ; $1610: $CA $3E $16

    ld a, [$C017]                                 ; $1613: $FA $17 $C0
    and c                                         ; $1616: $A1
    jr nz, jr_000_163C                            ; $1617: $20 $23

    push bc                                       ; $1619: $C5
    call Call_000_156E                            ; $161A: $CD $6E $15
    xor a                                         ; $161D: $AF
    ld [$C289], a                                 ; $161E: $EA $89 $C2
    pop bc                                        ; $1621: $C1

jr_000_1622:
    push bc                                       ; $1622: $C5
    call Call_000_1580                            ; $1623: $CD $80 $15
    call Call_000_15AD                            ; $1626: $CD $AD $15
    call Call_000_1640                            ; $1629: $CD $40 $16
    call Call_000_15E3                            ; $162C: $CD $E3 $15
    pop bc                                        ; $162F: $C1
    dec b                                         ; $1630: $05
    jr nz, jr_000_1622                            ; $1631: $20 $EF

    ld a, [$C289]                                 ; $1633: $FA $89 $C2
    or a                                          ; $1636: $B7
    jr z, jr_000_163E                             ; $1637: $28 $05

    call Call_000_14E5                            ; $1639: $CD $E5 $14

jr_000_163C:
    xor a                                         ; $163C: $AF
    ret                                           ; $163D: $C9


Jump_000_163E:
jr_000_163E:
    scf                                           ; $163E: $37
    ret                                           ; $163F: $C9


Call_000_1640:
    ld a, b                                       ; $1640: $78
    cp h                                          ; $1641: $BC
    jr z, jr_000_1658                             ; $1642: $28 $14

    jr nc, jr_000_164C                            ; $1644: $30 $06

    ld a, $04                                     ; $1646: $3E $04
    add b                                         ; $1648: $80
    jp Jump_000_1650                              ; $1649: $C3 $50 $16


jr_000_164C:
    ld a, b                                       ; $164C: $78
    sub $04                                       ; $164D: $D6 $04
    ld b, a                                       ; $164F: $47

Jump_000_1650:
    and $7C                                       ; $1650: $E6 $7C
    ld b, a                                       ; $1652: $47
    ld a, $01                                     ; $1653: $3E $01
    ld [$C289], a                                 ; $1655: $EA $89 $C2

jr_000_1658:
    ld a, d                                       ; $1658: $7A
    cp e                                          ; $1659: $BB
    jr z, jr_000_1670                             ; $165A: $28 $14

    jr nc, jr_000_1664                            ; $165C: $30 $06

    ld a, $02                                     ; $165E: $3E $02
    add d                                         ; $1660: $82
    jp Jump_000_1668                              ; $1661: $C3 $68 $16


jr_000_1664:
    ld a, d                                       ; $1664: $7A
    sub $02                                       ; $1665: $D6 $02
    ld d, a                                       ; $1667: $57

Jump_000_1668:
    and $3E                                       ; $1668: $E6 $3E
    ld d, a                                       ; $166A: $57
    ld a, $01                                     ; $166B: $3E $01
    ld [$C289], a                                 ; $166D: $EA $89 $C2

jr_000_1670:
    ld a, c                                       ; $1670: $79
    cp l                                          ; $1671: $BD
    jr z, jr_000_1688                             ; $1672: $28 $14

    jr nc, jr_000_167C                            ; $1674: $30 $06

    ld a, $01                                     ; $1676: $3E $01
    add c                                         ; $1678: $81
    jp Jump_000_1680                              ; $1679: $C3 $80 $16


jr_000_167C:
    ld a, c                                       ; $167C: $79
    sub $01                                       ; $167D: $D6 $01
    ld c, a                                       ; $167F: $4F

Jump_000_1680:
    and $1F                                       ; $1680: $E6 $1F
    ld c, a                                       ; $1682: $4F
    ld a, $01                                     ; $1683: $3E $01
    ld [$C289], a                                 ; $1685: $EA $89 $C2

jr_000_1688:
    ret                                           ; $1688: $C9


    ld hl, $C037                                  ; $1689: $21 $37 $C0
    bit 7, [hl]                                   ; $168C: $CB $7E
    jp z, Jump_000_16D7                           ; $168E: $CA $D7 $16

    ld a, [$C017]                                 ; $1691: $FA $17 $C0
    and c                                         ; $1694: $A1
    jr nz, jr_000_16D5                            ; $1695: $20 $3E

    push bc                                       ; $1697: $C5
    call Call_000_156E                            ; $1698: $CD $6E $15
    xor a                                         ; $169B: $AF
    ld [$C289], a                                 ; $169C: $EA $89 $C2
    ld d, h                                       ; $169F: $54
    ld e, l                                       ; $16A0: $5D
    srl d                                         ; $16A1: $CB $3A
    rr e                                          ; $16A3: $CB $1B
    srl d                                         ; $16A5: $CB $3A
    rr e                                          ; $16A7: $CB $1B
    srl d                                         ; $16A9: $CB $3A
    rr e                                          ; $16AB: $CB $1B
    srl d                                         ; $16AD: $CB $3A
    rr e                                          ; $16AF: $CB $1B
    ld a, $7C                                     ; $16B1: $3E $7C
    and h                                         ; $16B3: $A4
    ld h, a                                       ; $16B4: $67
    ld a, $3E                                     ; $16B5: $3E $3E
    and e                                         ; $16B7: $A3
    ld e, a                                       ; $16B8: $5F
    ld a, $1F                                     ; $16B9: $3E $1F
    and l                                         ; $16BB: $A5
    ld l, a                                       ; $16BC: $6F
    pop bc                                        ; $16BD: $C1

jr_000_16BE:
    push bc                                       ; $16BE: $C5
    call Call_000_1580                            ; $16BF: $CD $80 $15
    call Call_000_1640                            ; $16C2: $CD $40 $16
    call Call_000_15E3                            ; $16C5: $CD $E3 $15
    pop bc                                        ; $16C8: $C1
    dec b                                         ; $16C9: $05
    jr nz, jr_000_16BE                            ; $16CA: $20 $F2

    ld a, [$C289]                                 ; $16CC: $FA $89 $C2
    or a                                          ; $16CF: $B7

Call_000_16D0:
    jr z, jr_000_16D7                             ; $16D0: $28 $05

    call Call_000_14E5                            ; $16D2: $CD $E5 $14

jr_000_16D5:
    xor a                                         ; $16D5: $AF
    ret                                           ; $16D6: $C9


Jump_000_16D7:
jr_000_16D7:
    scf                                           ; $16D7: $37
    ret                                           ; $16D8: $C9


Call_000_16D9:
    ld a, [$C037]                                 ; $16D9: $FA $37 $C0
    bit 7, a                                      ; $16DC: $CB $7F
    jp nz, Jump_000_175A                          ; $16DE: $C2 $5A $17

    ld hl, $FF98                                  ; $16E1: $21 $98 $FF
    ld a, [$C278]                                 ; $16E4: $FA $78 $C2
    and a                                         ; $16E7: $A7
    jr nz, jr_000_171A                            ; $16E8: $20 $30

Call_000_16EA:
    ld a, [hl]                                    ; $16EA: $7E
    cpl                                           ; $16EB: $2F
    ld d, a                                       ; $16EC: $57

Jump_000_16ED:
    ld a, $20                                     ; $16ED: $3E $20
    ldh [rP1], a                                  ; $16EF: $E0 $00
    ldh a, [rP1]                                  ; $16F1: $F0 $00
    ldh a, [rP1]                                  ; $16F3: $F0 $00
    and $0F                                       ; $16F5: $E6 $0F
    ld c, a                                       ; $16F7: $4F
    ld a, $30                                     ; $16F8: $3E $30
    ldh [rP1], a                                  ; $16FA: $E0 $00
    ld a, $10                                     ; $16FC: $3E $10
    ldh [rP1], a                                  ; $16FE: $E0 $00
    ldh a, [rP1]                                  ; $1700: $F0 $00
    ldh a, [rP1]                                  ; $1702: $F0 $00
    ldh a, [rP1]                                  ; $1704: $F0 $00
    ldh a, [rP1]                                  ; $1706: $F0 $00
    ldh a, [rP1]                                  ; $1708: $F0 $00
    ldh a, [rP1]                                  ; $170A: $F0 $00
    and $0F                                       ; $170C: $E6 $0F
    swap a                                        ; $170E: $CB $37
    or c                                          ; $1710: $B1
    cpl                                           ; $1711: $2F
    ld [hl+], a                                   ; $1712: $22
    and d                                         ; $1713: $A2
    ld [hl], a                                    ; $1714: $77
    ld a, $30                                     ; $1715: $3E $30
    ldh [rP1], a                                  ; $1717: $E0 $00
    ret                                           ; $1719: $C9


jr_000_171A:
    ld c, a                                       ; $171A: $4F
    ld a, [$C27E]                                 ; $171B: $FA $7E $C2
    and a                                         ; $171E: $A7
    ret z                                         ; $171F: $C8

    ld a, c                                       ; $1720: $79
    ld de, $FF98                                  ; $1721: $11 $98 $FF
    ld hl, $C27A                                  ; $1724: $21 $7A $C2
    cp $02                                        ; $1727: $FE $02
    jr z, jr_000_1731                             ; $1729: $28 $06

    ld hl, $C27C                                  ; $172B: $21 $7C $C2
    ld de, $FFAB                                  ; $172E: $11 $AB $FF

jr_000_1731:
    ld a, [de]                                    ; $1731: $1A
    cpl                                           ; $1732: $2F
    ld c, a                                       ; $1733: $4F
    push de                                       ; $1734: $D5
    push hl                                       ; $1735: $E5
    ld a, [$C274]                                 ; $1736: $FA $74 $C2
    ld e, a                                       ; $1739: $5F
    inc a                                         ; $173A: $3C
    and $FF                                       ; $173B: $E6 $FF
    ld [$C274], a                                 ; $173D: $EA $74 $C2
    xor a                                         ; $1740: $AF
    ld d, a                                       ; $1741: $57
    ld hl, $C171                                  ; $1742: $21 $71 $C1
    add hl, de                                    ; $1745: $19
    ld a, [hl]                                    ; $1746: $7E
    ld [hl], $00                                  ; $1747: $36 $00
    ld hl, $C276                                  ; $1749: $21 $76 $C2
    dec [hl]                                      ; $174C: $35
    pop hl                                        ; $174D: $E1
    pop de                                        ; $174E: $D1
    ld [de], a                                    ; $174F: $12
    inc de                                        ; $1750: $13
    and c                                         ; $1751: $A1
    ld [de], a                                    ; $1752: $12
    call Call_000_16EA                            ; $1753: $CD $EA $16
    call Call_000_1B5A                            ; $1756: $CD $5A $1B
    ret                                           ; $1759: $C9


Jump_000_175A:
    ld a, $30                                     ; $175A: $3E $30
    ldh [rP1], a                                  ; $175C: $E0 $00
    ld b, $02                                     ; $175E: $06 $02

Jump_000_1760:
    ld hl, $FF98                                  ; $1760: $21 $98 $FF
    ldh a, [rP1]                                  ; $1763: $F0 $00
    and $01                                       ; $1765: $E6 $01
    jr nz, jr_000_176C                            ; $1767: $20 $03

    ld hl, $FFAB                                  ; $1769: $21 $AB $FF

jr_000_176C:
    ld a, [hl]                                    ; $176C: $7E
    cpl                                           ; $176D: $2F
    ld d, a                                       ; $176E: $57
    ld a, $20                                     ; $176F: $3E $20
    ldh [rP1], a                                  ; $1771: $E0 $00
    ldh a, [rP1]                                  ; $1773: $F0 $00
    ldh a, [rP1]                                  ; $1775: $F0 $00
    and $0F                                       ; $1777: $E6 $0F
    ld c, a                                       ; $1779: $4F
    ld a, $30                                     ; $177A: $3E $30
    ldh [rP1], a                                  ; $177C: $E0 $00
    ld a, $10                                     ; $177E: $3E $10
    ldh [rP1], a                                  ; $1780: $E0 $00
    ldh a, [rP1]                                  ; $1782: $F0 $00
    ldh a, [rP1]                                  ; $1784: $F0 $00
    ldh a, [rP1]                                  ; $1786: $F0 $00
    ldh a, [rP1]                                  ; $1788: $F0 $00
    ldh a, [rP1]                                  ; $178A: $F0 $00
    ldh a, [rP1]                                  ; $178C: $F0 $00
    and $0F                                       ; $178E: $E6 $0F
    swap a                                        ; $1790: $CB $37
    or c                                          ; $1792: $B1
    cpl                                           ; $1793: $2F
    ld [hl+], a                                   ; $1794: $22
    and d                                         ; $1795: $A2
    ld [hl], a                                    ; $1796: $77
    ld a, $30                                     ; $1797: $3E $30
    ldh [rP1], a                                  ; $1799: $E0 $00
    dec b                                         ; $179B: $05
    jp nz, Jump_000_1760                          ; $179C: $C2 $60 $17

    ret                                           ; $179F: $C9


Call_000_17A0:
    ld hl, $FF98                                  ; $17A0: $21 $98 $FF
    call Call_000_17AD                            ; $17A3: $CD $AD $17
    ld hl, $FFAB                                  ; $17A6: $21 $AB $FF
    call Call_000_17AD                            ; $17A9: $CD $AD $17
    ret                                           ; $17AC: $C9


Call_000_17AD:
    ld d, [hl]                                    ; $17AD: $56
    inc hl                                        ; $17AE: $23
    inc hl                                        ; $17AF: $23
    inc hl                                        ; $17B0: $23
    ld e, $08                                     ; $17B1: $1E $08

Jump_000_17B3:
    ld b, [hl]                                    ; $17B3: $46
    inc hl                                        ; $17B4: $23
    ld c, [hl]                                    ; $17B5: $4E
    dec hl                                        ; $17B6: $2B
    sla b                                         ; $17B7: $CB $20
    sla b                                         ; $17B9: $CB $20
    sla b                                         ; $17BB: $CB $20
    sla b                                         ; $17BD: $CB $20
    rlc d                                         ; $17BF: $CB $02
    jp nc, Jump_000_17D9                          ; $17C1: $D2 $D9 $17

    set 0, b                                      ; $17C4: $CB $C0
    ld a, b                                       ; $17C6: $78
    cp $01                                        ; $17C7: $FE $01
    jp nz, Jump_000_17D1                          ; $17C9: $C2 $D1 $17

    ld c, $11                                     ; $17CC: $0E $11
    jp Jump_000_17D9                              ; $17CE: $C3 $D9 $17


Jump_000_17D1:
    dec c                                         ; $17D1: $0D
    jp nz, Jump_000_17D9                          ; $17D2: $C2 $D9 $17

    ld b, $01                                     ; $17D5: $06 $01
    ld c, $06                                     ; $17D7: $0E $06

Jump_000_17D9:
    ld [hl], b                                    ; $17D9: $70
    inc hl                                        ; $17DA: $23
    ld [hl], c                                    ; $17DB: $71
    inc hl                                        ; $17DC: $23
    dec e                                         ; $17DD: $1D
    jp nz, Jump_000_17B3                          ; $17DE: $C2 $B3 $17

    ret                                           ; $17E1: $C9


Call_000_17E2:
    push bc                                       ; $17E2: $C5
    ld a, [$C01B]                                 ; $17E3: $FA $1B $C0
    ld b, a                                       ; $17E6: $47
    rlca                                          ; $17E7: $07
    rlca                                          ; $17E8: $07
    add b                                         ; $17E9: $80
    inc a                                         ; $17EA: $3C
    ld b, a                                       ; $17EB: $47
    ld a, [$C017]                                 ; $17EC: $FA $17 $C0
    sub b                                         ; $17EF: $90

Jump_000_17F0:
    ld [$C01B], a                                 ; $17F0: $EA $1B $C0
    pop bc                                        ; $17F3: $C1
    ret                                           ; $17F4: $C9


    push bc                                       ; $17F5: $C5
    ld a, [$C01C]                                 ; $17F6: $FA $1C $C0
    ld b, a                                       ; $17F9: $47
    rlca                                          ; $17FA: $07
    rlca                                          ; $17FB: $07
    add b                                         ; $17FC: $80
    inc a                                         ; $17FD: $3C
    ld b, a                                       ; $17FE: $47
    ld a, [$C017]                                 ; $17FF: $FA $17 $C0
    add b                                         ; $1802: $80

Jump_000_1803:
    ld b, a                                       ; $1803: $47
    ldh a, [rLY]                                  ; $1804: $F0 $44
    add b                                         ; $1806: $80
    ld [$C01C], a                                 ; $1807: $EA $1C $C0
    pop bc                                        ; $180A: $C1
    ret                                           ; $180B: $C9


    push bc                                       ; $180C: $C5
    push de                                       ; $180D: $D5
    push hl                                       ; $180E: $E5
    ld c, a                                       ; $180F: $4F
    swap a                                        ; $1810: $CB $37
    and $0F                                       ; $1812: $E6 $0F
    ld hl, $182C                                  ; $1814: $21 $2C $18
    ld d, $00                                     ; $1817: $16 $00
    ld e, a                                       ; $1819: $5F
    add hl, de                                    ; $181A: $19
    ld b, [hl]                                    ; $181B: $46
    ld a, c                                       ; $181C: $79
    and $0F                                       ; $181D: $E6 $0F
    ld hl, $183C                                  ; $181F: $21 $3C $18
    ld d, $00                                     ; $1822: $16 $00
    ld e, a                                       ; $1824: $5F
    add hl, de                                    ; $1825: $19
    ld a, [hl]                                    ; $1826: $7E
    add b                                         ; $1827: $80
    pop hl                                        ; $1828: $E1
    pop de                                        ; $1829: $D1
    pop bc                                        ; $182A: $C1
    ret                                           ; $182B: $C9


    nop                                           ; $182C: $00
    ld a, [bc]                                    ; $182D: $0A
    inc d                                         ; $182E: $14
    ld e, $28                                     ; $182F: $1E $28
    ld [hl-], a                                   ; $1831: $32
    inc a                                         ; $1832: $3C
    ld b, [hl]                                    ; $1833: $46
    ld d, b                                       ; $1834: $50
    ld e, d                                       ; $1835: $5A
    ld e, d                                       ; $1836: $5A
    ld e, d                                       ; $1837: $5A

Call_000_1838:
    ld e, d                                       ; $1838: $5A
    ld e, d                                       ; $1839: $5A
    ld e, d                                       ; $183A: $5A
    ld e, d                                       ; $183B: $5A
    nop                                           ; $183C: $00
    ld bc, $0302                                  ; $183D: $01 $02 $03
    inc b                                         ; $1840: $04

Call_000_1841:
    dec b                                         ; $1841: $05
    ld b, $07                                     ; $1842: $06 $07
    ld [$0909], sp                                ; $1844: $08 $09 $09
    add hl, bc                                    ; $1847: $09
    add hl, bc                                    ; $1848: $09
    add hl, bc                                    ; $1849: $09
    add hl, bc                                    ; $184A: $09
    add hl, bc                                    ; $184B: $09
    cp $64                                        ; $184C: $FE $64
    jp nc, Jump_000_1872                          ; $184E: $D2 $72 $18

    push bc                                       ; $1851: $C5
    push de                                       ; $1852: $D5
    push hl                                       ; $1853: $E5
    ld c, a                                       ; $1854: $4F
    swap a                                        ; $1855: $CB $37
    and $0F                                       ; $1857: $E6 $0F

Call_000_1859:
    ld hl, $1875                                  ; $1859: $21 $75 $18
    ld d, $00                                     ; $185C: $16 $00

Call_000_185E:
    ld e, a                                       ; $185E: $5F

Jump_000_185F:
    add hl, de                                    ; $185F: $19
    ld b, [hl]                                    ; $1860: $46
    ld a, c                                       ; $1861: $79

Jump_000_1862:
    and $0F                                       ; $1862: $E6 $0F
    ld hl, $187C                                  ; $1864: $21 $7C $18
    ld d, $00                                     ; $1867: $16 $00
    ld e, a                                       ; $1869: $5F
    add hl, de                                    ; $186A: $19
    ld a, [hl]                                    ; $186B: $7E
    add b                                         ; $186C: $80
    daa                                           ; $186D: $27
    pop hl                                        ; $186E: $E1
    pop de                                        ; $186F: $D1
    pop bc                                        ; $1870: $C1
    ret                                           ; $1871: $C9


Jump_000_1872:
    ld a, $99                                     ; $1872: $3E $99
    ret                                           ; $1874: $C9


    nop                                           ; $1875: $00
    ld d, $32                                     ; $1876: $16 $32
    ld c, b                                       ; $1878: $48
    ld h, h                                       ; $1879: $64
    add b                                         ; $187A: $80
    sub [hl]                                      ; $187B: $96
    nop                                           ; $187C: $00
    ld bc, $0302                                  ; $187D: $01 $02 $03
    inc b                                         ; $1880: $04
    dec b                                         ; $1881: $05
    ld b, $07                                     ; $1882: $06 $07
    ld [$1009], sp                                ; $1884: $08 $09 $10
    ld de, $1312                                  ; $1887: $11 $12 $13
    inc d                                         ; $188A: $14
    dec d                                         ; $188B: $15

Call_000_188C:
    xor a                                         ; $188C: $AF
    ld hl, $C2BC                                  ; $188D: $21 $BC $C2
    ld [hl+], a                                   ; $1890: $22
    ld [hl+], a                                   ; $1891: $22
    ld [hl+], a                                   ; $1892: $22
    ld [hl+], a                                   ; $1893: $22
    ld [hl+], a                                   ; $1894: $22
    ld [hl+], a                                   ; $1895: $22
    xor a                                         ; $1896: $AF
    ld [$4000], a                                 ; $1897: $EA $00 $40
    ret                                           ; $189A: $C9


Call_000_189B:
    ld hl, $C037                                  ; $189B: $21 $37 $C0
    bit 7, [hl]                                   ; $189E: $CB $7E

Jump_000_18A0:
    ret nz                                        ; $18A0: $C0

    ld hl, $C2BC                                  ; $18A1: $21 $BC $C2
    ld [hl], $01                                  ; $18A4: $36 $01
    inc hl                                        ; $18A6: $23
    ld [hl], a                                    ; $18A7: $77
    inc hl                                        ; $18A8: $23
    ld [hl], $02                                  ; $18A9: $36 $02
    inc hl                                        ; $18AB: $23
    ld [hl], b                                    ; $18AC: $70
    inc hl                                        ; $18AD: $23
    ld [hl], c                                    ; $18AE: $71
    inc hl                                        ; $18AF: $23
    ld [hl], c                                    ; $18B0: $71
    ret                                           ; $18B1: $C9


Call_000_18B2:
    ld de, $C2BC                                  ; $18B2: $11 $BC $C2
    ld hl, $C2BD                                  ; $18B5: $21 $BD $C2
    ld a, [hl]                                    ; $18B8: $7E
    or a                                          ; $18B9: $B7
    jr z, jr_000_18E6                             ; $18BA: $28 $2A

    dec [hl]                                      ; $18BC: $35
    ld a, [de]                                    ; $18BD: $1A
    bit 0, a                                      ; $18BE: $CB $47
    jr z, jr_000_18CE                             ; $18C0: $28 $0C

    ld hl, $C2BE                                  ; $18C2: $21 $BE $C2
    dec [hl]                                      ; $18C5: $35
    jr nz, jr_000_18E0                            ; $18C6: $20 $18

    inc hl                                        ; $18C8: $23
    ld a, [hl]                                    ; $18C9: $7E
    dec hl                                        ; $18CA: $2B
    ld [hl], a                                    ; $18CB: $77
    jr jr_000_18D8                                ; $18CC: $18 $0A

jr_000_18CE:
    ld hl, $C2C0                                  ; $18CE: $21 $C0 $C2
    dec [hl]                                      ; $18D1: $35
    jr nz, jr_000_18E6                            ; $18D2: $20 $12

    inc hl                                        ; $18D4: $23
    ld a, [hl]                                    ; $18D5: $7E
    dec hl                                        ; $18D6: $2B
    ld [hl], a                                    ; $18D7: $77

jr_000_18D8:
    ld a, [de]                                    ; $18D8: $1A
    xor $01                                       ; $18D9: $EE $01
    ld [de], a                                    ; $18DB: $12
    bit 0, a                                      ; $18DC: $CB $47
    jr z, jr_000_18E6                             ; $18DE: $28 $06

Call_000_18E0:
jr_000_18E0:
    ld a, $08                                     ; $18E0: $3E $08
    ld [$4000], a                                 ; $18E2: $EA $00 $40
    ret                                           ; $18E5: $C9


jr_000_18E6:
    xor a                                         ; $18E6: $AF

Call_000_18E7:
Jump_000_18E7:
    ld [$4000], a                                 ; $18E7: $EA $00 $40
    ret                                           ; $18EA: $C9


Call_000_18EB:
    ldh a, [$FFE0]                                ; $18EB: $F0 $E0
    push af                                       ; $18ED: $F5
    ld a, $2C                                     ; $18EE: $3E $2C
    ldh [$FFE0], a                                ; $18F0: $E0 $E0
    ld [$2000], a                                 ; $18F2: $EA $00 $20
    ld hl, $4B93                                  ; $18F5: $21 $93 $4B
    call Call_000_1940                            ; $18F8: $CD $40 $19
    pop af                                        ; $18FB: $F1
    ldh [$FFE0], a                                ; $18FC: $E0 $E0

Call_000_18FE:
    ld [$2000], a                                 ; $18FE: $EA $00 $20
    ret                                           ; $1901: $C9


    ldh a, [$FFE0]                                ; $1902: $F0 $E0
    push af                                       ; $1904: $F5
    ld a, $2C                                     ; $1905: $3E $2C

Call_000_1907:
    ldh [$FFE0], a                                ; $1907: $E0 $E0
    ld [$2000], a                                 ; $1909: $EA $00 $20
    ld hl, $4B93                                  ; $190C: $21 $93 $4B
    ld a, d                                       ; $190F: $7A
    ld [$C285], a                                 ; $1910: $EA $85 $C2
    ld a, e                                       ; $1913: $7B
    ld [$C284], a                                 ; $1914: $EA $84 $C2
    ld e, [hl]                                    ; $1917: $5E
    inc hl                                        ; $1918: $23
    ld d, [hl]                                    ; $1919: $56
    inc hl                                        ; $191A: $23
    ld b, [hl]                                    ; $191B: $46
    inc hl                                        ; $191C: $23
    inc hl                                        ; $191D: $23
    inc hl                                        ; $191E: $23
    call Call_000_194E                            ; $191F: $CD $4E $19
    pop af                                        ; $1922: $F1
    ldh [$FFE0], a                                ; $1923: $E0 $E0
    ld [$2000], a                                 ; $1925: $EA $00 $20
    ret                                           ; $1928: $C9


    ldh a, [$FFE0]                                ; $1929: $F0 $E0
    push af                                       ; $192B: $F5
    ld a, $2C                                     ; $192C: $3E $2C
    ldh [$FFE0], a                                ; $192E: $E0 $E0

Call_000_1930:
    ld [$2000], a                                 ; $1930: $EA $00 $20
    ld hl, $4B96                                  ; $1933: $21 $96 $4B
    call Call_000_1946                            ; $1936: $CD $46 $19
    pop af                                        ; $1939: $F1
    ldh [$FFE0], a                                ; $193A: $E0 $E0
    ld [$2000], a                                 ; $193C: $EA $00 $20
    ret                                           ; $193F: $C9


Call_000_1940:
    ld e, [hl]                                    ; $1940: $5E
    inc hl                                        ; $1941: $23
    ld d, [hl]                                    ; $1942: $56
    inc hl                                        ; $1943: $23
    ld b, [hl]                                    ; $1944: $46
    inc hl                                        ; $1945: $23

Call_000_1946:
    ld a, [hl+]                                   ; $1946: $2A
    ld [$C285], a                                 ; $1947: $EA $85 $C2
    ld a, [hl+]                                   ; $194A: $2A
    ld [$C284], a                                 ; $194B: $EA $84 $C2

Call_000_194E:
jr_000_194E:
    push bc                                       ; $194E: $C5
    ld b, $08                                     ; $194F: $06 $08

jr_000_1951:
    xor a                                         ; $1951: $AF
    ld [$C286], a                                 ; $1952: $EA $86 $C2
    ld [$C287], a                                 ; $1955: $EA $87 $C2
    push bc                                       ; $1958: $C5
    ld a, [hl+]                                   ; $1959: $2A
    ld b, $08                                     ; $195A: $06 $08
    ld c, $01                                     ; $195C: $0E $01

jr_000_195E:
    rrca                                          ; $195E: $0F
    jr c, jr_000_196B                             ; $195F: $38 $0A

    push af                                       ; $1961: $F5
    ld a, [$C285]                                 ; $1962: $FA $85 $C2
    call Call_000_1997                            ; $1965: $CD $97 $19
    jp Jump_000_1972                              ; $1968: $C3 $72 $19


jr_000_196B:
    push af                                       ; $196B: $F5
    ld a, [$C284]                                 ; $196C: $FA $84 $C2
    call Call_000_1997                            ; $196F: $CD $97 $19

Jump_000_1972:
    pop af                                        ; $1972: $F1
    rlc c                                         ; $1973: $CB $01
    dec b                                         ; $1975: $05
    jr nz, jr_000_195E                            ; $1976: $20 $E6

jr_000_1978:
    ldh a, [rSTAT]                                ; $1978: $F0 $41
    bit 1, a                                      ; $197A: $CB $4F
    jr nz, jr_000_1978                            ; $197C: $20 $FA

    ld a, [$C286]                                 ; $197E: $FA $86 $C2
    ld [de], a                                    ; $1981: $12
    inc de                                        ; $1982: $13

jr_000_1983:
    ldh a, [rSTAT]                                ; $1983: $F0 $41
    bit 1, a                                      ; $1985: $CB $4F
    jr nz, jr_000_1983                            ; $1987: $20 $FA

    ld a, [$C287]                                 ; $1989: $FA $87 $C2
    ld [de], a                                    ; $198C: $12
    inc de                                        ; $198D: $13
    pop bc                                        ; $198E: $C1
    dec b                                         ; $198F: $05
    jr nz, jr_000_1951                            ; $1990: $20 $BF

    pop bc                                        ; $1992: $C1
    dec b                                         ; $1993: $05
    jr nz, jr_000_194E                            ; $1994: $20 $B8

    ret                                           ; $1996: $C9


Call_000_1997:
    bit 0, a                                      ; $1997: $CB $47
    jr z, jr_000_19A4                             ; $1999: $28 $09

    push af                                       ; $199B: $F5
    ld a, [$C286]                                 ; $199C: $FA $86 $C2
    or c                                          ; $199F: $B1
    ld [$C286], a                                 ; $19A0: $EA $86 $C2
    pop af                                        ; $19A3: $F1

jr_000_19A4:
    bit 1, a                                      ; $19A4: $CB $4F
    jr z, jr_000_19AF                             ; $19A6: $28 $07

    ld a, [$C287]                                 ; $19A8: $FA $87 $C2
    or c                                          ; $19AB: $B1
    ld [$C287], a                                 ; $19AC: $EA $87 $C2

jr_000_19AF:
    ret                                           ; $19AF: $C9


Call_000_19B0:
    ld e, [hl]                                    ; $19B0: $5E
    inc hl                                        ; $19B1: $23
    ld d, [hl]                                    ; $19B2: $56
    inc hl                                        ; $19B3: $23
    ld b, [hl]                                    ; $19B4: $46
    inc hl                                        ; $19B5: $23

jr_000_19B6:
    push bc                                       ; $19B6: $C5
    ld a, [hl+]                                   ; $19B7: $2A
    add c                                         ; $19B8: $81
    ld b, a                                       ; $19B9: $47

jr_000_19BA:
    ldh a, [rSTAT]                                ; $19BA: $F0 $41
    and $03                                       ; $19BC: $E6 $03
    jr nz, jr_000_19BA                            ; $19BE: $20 $FA

    ld a, b                                       ; $19C0: $78
    ld [de], a                                    ; $19C1: $12
    inc de                                        ; $19C2: $13
    pop bc                                        ; $19C3: $C1
    dec b                                         ; $19C4: $05
    jr nz, jr_000_19B6                            ; $19C5: $20 $EF

    ret                                           ; $19C7: $C9


Call_000_19C8:
    ld e, [hl]                                    ; $19C8: $5E
    inc hl                                        ; $19C9: $23
    ld d, [hl]                                    ; $19CA: $56
    inc hl                                        ; $19CB: $23
    ld b, [hl]                                    ; $19CC: $46
    inc hl                                        ; $19CD: $23

jr_000_19CE:
    push bc                                       ; $19CE: $C5
    ld a, [hl+]                                   ; $19CF: $2A
    push hl                                       ; $19D0: $E5
    ld hl, $41A2                                  ; $19D1: $21 $A2 $41
    ld c, a                                       ; $19D4: $4F
    call Call_000_19E7                            ; $19D5: $CD $E7 $19

jr_000_19D8:
    ldh a, [rSTAT]                                ; $19D8: $F0 $41
    and $03                                       ; $19DA: $E6 $03
    jr nz, jr_000_19D8                            ; $19DC: $20 $FA

    ld a, b                                       ; $19DE: $78
    ld [de], a                                    ; $19DF: $12
    inc de                                        ; $19E0: $13
    pop hl                                        ; $19E1: $E1
    pop bc                                        ; $19E2: $C1
    dec b                                         ; $19E3: $05
    jr nz, jr_000_19CE                            ; $19E4: $20 $E8

    ret                                           ; $19E6: $C9


Call_000_19E7:
    ldh a, [$FFE0]                                ; $19E7: $F0 $E0
    push af                                       ; $19E9: $F5
    ld a, $2D                                     ; $19EA: $3E $2D
    ldh [$FFE0], a                                ; $19EC: $E0 $E0
    ld [$2000], a                                 ; $19EE: $EA $00 $20
    ld b, $00                                     ; $19F1: $06 $00
    add hl, bc                                    ; $19F3: $09
    ld b, [hl]                                    ; $19F4: $46
    pop af                                        ; $19F5: $F1
    ldh [$FFE0], a                                ; $19F6: $E0 $E0
    ld [$2000], a                                 ; $19F8: $EA $00 $20
    ret                                           ; $19FB: $C9


    push af                                       ; $19FC: $F5
    swap a                                        ; $19FD: $CB $37
    and $0F                                       ; $19FF: $E6 $0F
    ld hl, $42A2                                  ; $1A01: $21 $A2 $42
    call Call_000_1A26                            ; $1A04: $CD $26 $1A
    pop af                                        ; $1A07: $F1
    and $0F                                       ; $1A08: $E6 $0F
    ld hl, $42A2                                  ; $1A0A: $21 $A2 $42
    call Call_000_1A26                            ; $1A0D: $CD $26 $1A
    ret                                           ; $1A10: $C9


Call_000_1A11:
    push af                                       ; $1A11: $F5
    swap a                                        ; $1A12: $CB $37
    and $0F                                       ; $1A14: $E6 $0F
    ld hl, $42B2                                  ; $1A16: $21 $B2 $42
    call Call_000_1A26                            ; $1A19: $CD $26 $1A
    pop af                                        ; $1A1C: $F1
    and $0F                                       ; $1A1D: $E6 $0F
    ld hl, $42B2                                  ; $1A1F: $21 $B2 $42
    call Call_000_1A26                            ; $1A22: $CD $26 $1A
    ret                                           ; $1A25: $C9


Call_000_1A26:
    push bc                                       ; $1A26: $C5
    ld c, a                                       ; $1A27: $4F
    call Call_000_19E7                            ; $1A28: $CD $E7 $19
    ld a, b                                       ; $1A2B: $78
    pop bc                                        ; $1A2C: $C1
    add c                                         ; $1A2D: $81
    ld b, a                                       ; $1A2E: $47

jr_000_1A2F:
    ldh a, [rSTAT]                                ; $1A2F: $F0 $41
    and $03                                       ; $1A31: $E6 $03
    jr nz, jr_000_1A2F                            ; $1A33: $20 $FA

    ld a, b                                       ; $1A35: $78
    ld [de], a                                    ; $1A36: $12
    inc de                                        ; $1A37: $13
    ret                                           ; $1A38: $C9


Call_000_1A39:
    ld hl, $C037                                  ; $1A39: $21 $37 $C0
    bit 6, [hl]                                   ; $1A3C: $CB $76
    ret z                                         ; $1A3E: $C8

    di                                            ; $1A3F: $F3
    ld a, $1F                                     ; $1A40: $3E $1F
    ld [$C06F], a                                 ; $1A42: $EA $6F $C0
    ld a, $1C                                     ; $1A45: $3E $1C
    ld [$C070], a                                 ; $1A47: $EA $70 $C0
    xor a                                         ; $1A4A: $AF
    ldh [rSB], a                                  ; $1A4B: $E0 $01
    ld [$C27E], a                                 ; $1A4D: $EA $7E $C2
    ldh a, [rIE]                                  ; $1A50: $F0 $FF
    push af                                       ; $1A52: $F5
    xor a                                         ; $1A53: $AF
    ldh [rIF], a                                  ; $1A54: $E0 $0F
    ld a, $08                                     ; $1A56: $3E $08
    ldh [rIE], a                                  ; $1A58: $E0 $FF
    ei                                            ; $1A5A: $FB
    xor a                                         ; $1A5B: $AF
    ld [$C279], a                                 ; $1A5C: $EA $79 $C2
    ld hl, $C037                                  ; $1A5F: $21 $37 $C0
    bit 5, [hl]                                   ; $1A62: $CB $6E
    jp nz, Jump_000_1A9C                          ; $1A64: $C2 $9C $1A

    ld bc, $0010                                  ; $1A67: $01 $10 $00
    call Call_000_035D                            ; $1A6A: $CD $5D $03
    xor a                                         ; $1A6D: $AF
    ld [$C279], a                                 ; $1A6E: $EA $79 $C2

Jump_000_1A71:
jr_000_1A71:
    di                                            ; $1A71: $F3
    ld a, $43                                     ; $1A72: $3E $43
    ld [$C171], a                                 ; $1A74: $EA $71 $C1
    ld a, $81                                     ; $1A77: $3E $81
    ldh [rSC], a                                  ; $1A79: $E0 $02
    ei                                            ; $1A7B: $FB
    ld bc, $0600                                  ; $1A7C: $01 $00 $06

Jump_000_1A7F:
    ld a, [$C279]                                 ; $1A7F: $FA $79 $C2
    or a                                          ; $1A82: $B7
    jr nz, jr_000_1A8E                            ; $1A83: $20 $09

    dec bc                                        ; $1A85: $0B
    ld a, b                                       ; $1A86: $78
    or c                                          ; $1A87: $B1
    jp nz, Jump_000_1A7F                          ; $1A88: $C2 $7F $1A

    jp Jump_000_1A71                              ; $1A8B: $C3 $71 $1A


jr_000_1A8E:
    xor a                                         ; $1A8E: $AF
    ld [$C279], a                                 ; $1A8F: $EA $79 $C2
    ld a, [$C071]                                 ; $1A92: $FA $71 $C0
    cp $4C                                        ; $1A95: $FE $4C
    jr nz, jr_000_1A71                            ; $1A97: $20 $D8

    jp Jump_000_1AC2                              ; $1A99: $C3 $C2 $1A


Jump_000_1A9C:
jr_000_1A9C:
    ld a, $4C                                     ; $1A9C: $3E $4C
    ld [$C171], a                                 ; $1A9E: $EA $71 $C1
    ld a, $80                                     ; $1AA1: $3E $80
    ldh [rSC], a                                  ; $1AA3: $E0 $02
    ld bc, $0600                                  ; $1AA5: $01 $00 $06

Jump_000_1AA8:
    ld a, [$C279]                                 ; $1AA8: $FA $79 $C2
    or a                                          ; $1AAB: $B7
    jr nz, jr_000_1AB7                            ; $1AAC: $20 $09

    dec bc                                        ; $1AAE: $0B
    ld a, b                                       ; $1AAF: $78
    or c                                          ; $1AB0: $B1
    jp nz, Jump_000_1AA8                          ; $1AB1: $C2 $A8 $1A

    jp Jump_000_1A9C                              ; $1AB4: $C3 $9C $1A


jr_000_1AB7:
    xor a                                         ; $1AB7: $AF
    ld [$C279], a                                 ; $1AB8: $EA $79 $C2
    ld a, [$C071]                                 ; $1ABB: $FA $71 $C0
    cp $43                                        ; $1ABE: $FE $43
    jr nz, jr_000_1A9C                            ; $1AC0: $20 $DA

Jump_000_1AC2:
    di                                            ; $1AC2: $F3
    xor a                                         ; $1AC3: $AF
    ld b, $00                                     ; $1AC4: $06 $00
    ld hl, $C071                                  ; $1AC6: $21 $71 $C0

Jump_000_1AC9:
    ld [hl+], a                                   ; $1AC9: $22
    dec bc                                        ; $1ACA: $0B
    jp nz, Jump_000_1AC9                          ; $1ACB: $C2 $C9 $1A

    ld b, $00                                     ; $1ACE: $06 $00
    ld hl, $C171                                  ; $1AD0: $21 $71 $C1

Jump_000_1AD3:
    ld [hl+], a                                   ; $1AD3: $22
    dec b                                         ; $1AD4: $05
    jp nz, Jump_000_1AD3                          ; $1AD5: $C2 $D3 $1A

    ld [$C017], a                                 ; $1AD8: $EA $17 $C0
    ldh [rSB], a                                  ; $1ADB: $E0 $01
    ldh [$FF98], a                                ; $1ADD: $E0 $98
    ldh [$FFAB], a                                ; $1ADF: $E0 $AB
    ldh [$FF99], a                                ; $1AE1: $E0 $99
    ldh [$FFAC], a                                ; $1AE3: $E0 $AC
    ld [$C27A], a                                 ; $1AE5: $EA $7A $C2
    ld [$C27C], a                                 ; $1AE8: $EA $7C $C2
    ld [$C27B], a                                 ; $1AEB: $EA $7B $C2
    ld [$C27D], a                                 ; $1AEE: $EA $7D $C2
    ld [$C275], a                                 ; $1AF1: $EA $75 $C2
    ld [$C276], a                                 ; $1AF4: $EA $76 $C2
    ld [$C277], a                                 ; $1AF7: $EA $77 $C2
    ld [$C324], a                                 ; $1AFA: $EA $24 $C3

Jump_000_1AFD:
    ld [$C325], a                                 ; $1AFD: $EA $25 $C3

Jump_000_1B00:
    ld a, $80                                     ; $1B00: $3E $80
    ldh [rSC], a                                  ; $1B02: $E0 $02
    ld a, $01                                     ; $1B04: $3E $01
    ld [$C27E], a                                 ; $1B06: $EA $7E $C2
    ld hl, $C037                                  ; $1B09: $21 $37 $C0
    bit 5, [hl]                                   ; $1B0C: $CB $6E
    jp nz, Jump_000_1B32                          ; $1B0E: $C2 $32 $1B

    ld a, $39                                     ; $1B11: $3E $39
    ld [$C06F], a                                 ; $1B13: $EA $6F $C0
    ld a, $1C                                     ; $1B16: $3E $1C
    ld [$C070], a                                 ; $1B18: $EA $70 $C0
    ld a, $01                                     ; $1B1B: $3E $01
    ld [$C271], a                                 ; $1B1D: $EA $71 $C2
    ld a, $00                                     ; $1B20: $3E $00
    ld [$C272], a                                 ; $1B22: $EA $72 $C2
    ld a, $02                                     ; $1B25: $3E $02
    ld [$C273], a                                 ; $1B27: $EA $73 $C2
    ld a, $00                                     ; $1B2A: $3E $00
    ld [$C274], a                                 ; $1B2C: $EA $74 $C2
    jp Jump_000_1B53                              ; $1B2F: $C3 $53 $1B


Jump_000_1B32:
    ld a, $42                                     ; $1B32: $3E $42
    ld [$C06F], a                                 ; $1B34: $EA $6F $C0
    ld a, $1C                                     ; $1B37: $3E $1C
    ld [$C070], a                                 ; $1B39: $EA $70 $C0
    ld a, $01                                     ; $1B3C: $3E $01
    ld [$C271], a                                 ; $1B3E: $EA $71 $C2
    ld a, $00                                     ; $1B41: $3E $00
    ld [$C272], a                                 ; $1B43: $EA $72 $C2
    ld a, $02                                     ; $1B46: $3E $02
    ld [$C273], a                                 ; $1B48: $EA $73 $C2
    ld a, $00                                     ; $1B4B: $3E $00
    ld [$C274], a                                 ; $1B4D: $EA $74 $C2
    call Call_000_1C7F                            ; $1B50: $CD $7F $1C

Call_000_1B53:
Jump_000_1B53:
    xor a                                         ; $1B53: $AF
    ldh [rIF], a                                  ; $1B54: $E0 $0F
    pop af                                        ; $1B56: $F1
    ldh [rIE], a                                  ; $1B57: $E0 $FF
    ret                                           ; $1B59: $C9


Call_000_1B5A:
    ld a, [$C27E]                                 ; $1B5A: $FA $7E $C2
    and a                                         ; $1B5D: $A7
    ret z                                         ; $1B5E: $C8

    ld a, [$C278]                                 ; $1B5F: $FA $78 $C2
    and a                                         ; $1B62: $A7
    ret z                                         ; $1B63: $C8

    ld hl, $FF98                                  ; $1B64: $21 $98 $FF
    cp $02                                        ; $1B67: $FE $02
    jr nz, jr_000_1B6E                            ; $1B69: $20 $03

    ld hl, $FFAB                                  ; $1B6B: $21 $AB $FF

jr_000_1B6E:
    ld a, [hl]                                    ; $1B6E: $7E
    cpl                                           ; $1B6F: $2F
    ld c, a                                       ; $1B70: $4F
    push hl                                       ; $1B71: $E5
    ld a, [$C272]                                 ; $1B72: $FA $72 $C2
    ld e, a                                       ; $1B75: $5F
    inc a                                         ; $1B76: $3C
    ld [$C272], a                                 ; $1B77: $EA $72 $C2
    xor a                                         ; $1B7A: $AF
    ld d, a                                       ; $1B7B: $57
    ld hl, $C071                                  ; $1B7C: $21 $71 $C0
    add hl, de                                    ; $1B7F: $19
    ld a, [hl]                                    ; $1B80: $7E
    ld hl, $C275                                  ; $1B81: $21 $75 $C2
    dec [hl]                                      ; $1B84: $35
    pop hl                                        ; $1B85: $E1
    ld [hl+], a                                   ; $1B86: $22
    and c                                         ; $1B87: $A1
    ld [hl], a                                    ; $1B88: $77
    call Call_000_1B8D                            ; $1B89: $CD $8D $1B
    ret                                           ; $1B8C: $C9


Call_000_1B8D:
    ld a, [$C278]                                 ; $1B8D: $FA $78 $C2
    cp $02                                        ; $1B90: $FE $02
    jr nz, jr_000_1BAE                            ; $1B92: $20 $1A

    ld a, [$C273]                                 ; $1B94: $FA $73 $C2
    ld e, a                                       ; $1B97: $5F
    ld d, $00                                     ; $1B98: $16 $00
    ld hl, $C171                                  ; $1B9A: $21 $71 $C1
    add hl, de                                    ; $1B9D: $19
    ld a, [$C27A]                                 ; $1B9E: $FA $7A $C2
    call Call_000_1BC4                            ; $1BA1: $CD $C4 $1B
    ld [hl], a                                    ; $1BA4: $77
    xor a                                         ; $1BA5: $AF
    ld [$C27A], a                                 ; $1BA6: $EA $7A $C2
    ld a, $81                                     ; $1BA9: $3E $81
    ldh [rSC], a                                  ; $1BAB: $E0 $02
    ret                                           ; $1BAD: $C9


jr_000_1BAE:
    ld a, [$C273]                                 ; $1BAE: $FA $73 $C2
    ld e, a                                       ; $1BB1: $5F
    ld d, $00                                     ; $1BB2: $16 $00
    ld hl, $C171                                  ; $1BB4: $21 $71 $C1
    add hl, de                                    ; $1BB7: $19
    ld a, [$C27C]                                 ; $1BB8: $FA $7C $C2
    call Call_000_1BC4                            ; $1BBB: $CD $C4 $1B
    ld [hl], a                                    ; $1BBE: $77
    xor a                                         ; $1BBF: $AF
    ld [$C27C], a                                 ; $1BC0: $EA $7C $C2
    ret                                           ; $1BC3: $C9


Call_000_1BC4:
    ld b, a                                       ; $1BC4: $47
    and $03                                       ; $1BC5: $E6 $03
    cp $03                                        ; $1BC7: $FE $03
    jp nz, Jump_000_1BCE                          ; $1BC9: $C2 $CE $1B

    res 0, b                                      ; $1BCC: $CB $80

Jump_000_1BCE:
    ld a, b                                       ; $1BCE: $78
    and $0C                                       ; $1BCF: $E6 $0C
    cp $0C                                        ; $1BD1: $FE $0C
    jp nz, Jump_000_1BD8                          ; $1BD3: $C2 $D8 $1B

    res 2, b                                      ; $1BD6: $CB $90

Jump_000_1BD8:
    ld a, b                                       ; $1BD8: $78
    ret                                           ; $1BD9: $C9


Call_000_1BDA:
    xor a                                         ; $1BDA: $AF
    ldh [rSB], a                                  ; $1BDB: $E0 $01
    ld [$C27E], a                                 ; $1BDD: $EA $7E $C2
    ld [$C071], a                                 ; $1BE0: $EA $71 $C0
    ld [$C278], a                                 ; $1BE3: $EA $78 $C2
    ld [$C279], a                                 ; $1BE6: $EA $79 $C2
    ld [$C171], a                                 ; $1BE9: $EA $71 $C1
    ld a, $10                                     ; $1BEC: $3E $10
    ld [$C06F], a                                 ; $1BEE: $EA $6F $C0
    ld a, $1C                                     ; $1BF1: $3E $1C
    ld [$C070], a                                 ; $1BF3: $EA $70 $C0
    ld a, $04                                     ; $1BF6: $3E $04
    ld [$C282], a                                 ; $1BF8: $EA $82 $C2
    ret                                           ; $1BFB: $C9


Jump_000_1BFC:
    push af                                       ; $1BFC: $F5
    push bc                                       ; $1BFD: $C5
    push de                                       ; $1BFE: $D5
    push hl                                       ; $1BFF: $E5

Jump_000_1C00:
    call Call_000_1C08                            ; $1C00: $CD $08 $1C
    pop hl                                        ; $1C03: $E1

Jump_000_1C04:
    pop de                                        ; $1C04: $D1

Call_000_1C05:
    pop bc                                        ; $1C05: $C1
    pop af                                        ; $1C06: $F1
    reti                                          ; $1C07: $D9


Call_000_1C08:
    ld hl, $C06F                                  ; $1C08: $21 $6F $C0
    ld a, [hl+]                                   ; $1C0B: $2A
    ld e, a                                       ; $1C0C: $5F
    ld h, [hl]                                    ; $1C0D: $66
    ld l, e                                       ; $1C0E: $6B
    jp hl                                         ; $1C0F: $E9


    ldh a, [rSB]                                  ; $1C10: $F0 $01
    ld [$C071], a                                 ; $1C12: $EA $71 $C0
    ld a, $01                                     ; $1C15: $3E $01
    ld [$C279], a                                 ; $1C17: $EA $79 $C2
    ld a, $80                                     ; $1C1A: $3E $80
    ldh [rSC], a                                  ; $1C1C: $E0 $02
    ret                                           ; $1C1E: $C9


    ldh a, [rSB]                                  ; $1C1F: $F0 $01
    ld [$C071], a                                 ; $1C21: $EA $71 $C0
    ld a, [$C171]                                 ; $1C24: $FA $71 $C1
    ldh [rSB], a                                  ; $1C27: $E0 $01
    ld a, $01                                     ; $1C29: $3E $01
    ld [$C279], a                                 ; $1C2B: $EA $79 $C2
    ld a, [$C037]                                 ; $1C2E: $FA $37 $C0
    bit 5, a                                      ; $1C31: $CB $6F
    ret z                                         ; $1C33: $C8

    ld a, $80                                     ; $1C34: $3E $80
    ldh [rSC], a                                  ; $1C36: $E0 $02
    ret                                           ; $1C38: $C9


    call Call_000_1C54                            ; $1C39: $CD $54 $1C
    ld a, $01                                     ; $1C3C: $3E $01
    ld [$C279], a                                 ; $1C3E: $EA $79 $C2
    ret                                           ; $1C41: $C9


    call Call_000_1C54                            ; $1C42: $CD $54 $1C
    ld a, $80                                     ; $1C45: $3E $80
    ldh [rSC], a                                  ; $1C47: $E0 $02
    ld a, $01                                     ; $1C49: $3E $01
    ld [$C279], a                                 ; $1C4B: $EA $79 $C2
    ldh a, [rLY]                                  ; $1C4E: $F0 $44
    ld [$C27F], a                                 ; $1C50: $EA $7F $C2
    ret                                           ; $1C53: $C9


Call_000_1C54:
    ld a, [$C271]                                 ; $1C54: $FA $71 $C2
    ld e, a                                       ; $1C57: $5F
    inc a                                         ; $1C58: $3C
    ld [$C271], a                                 ; $1C59: $EA $71 $C2
    ld d, $00                                     ; $1C5C: $16 $00
    ld hl, $C071                                  ; $1C5E: $21 $71 $C0
    add hl, de                                    ; $1C61: $19
    ldh a, [rSB]                                  ; $1C62: $F0 $01
    ld [hl], a                                    ; $1C64: $77
    ld hl, $C275                                  ; $1C65: $21 $75 $C2
    inc [hl]                                      ; $1C68: $34
    ld a, [$C273]                                 ; $1C69: $FA $73 $C2
    ld e, a                                       ; $1C6C: $5F
    inc a                                         ; $1C6D: $3C
    ld [$C273], a                                 ; $1C6E: $EA $73 $C2
    ld d, $00                                     ; $1C71: $16 $00
    ld hl, $C171                                  ; $1C73: $21 $71 $C1
    add hl, de                                    ; $1C76: $19
    ld a, [hl]                                    ; $1C77: $7E
    ldh [rSB], a                                  ; $1C78: $E0 $01
    ld hl, $C276                                  ; $1C7A: $21 $76 $C2
    inc [hl]                                      ; $1C7D: $34
    ret                                           ; $1C7E: $C9


Call_000_1C7F:
    ld a, [$C282]                                 ; $1C7F: $FA $82 $C2
    ld b, a                                       ; $1C82: $47
    ld c, $00                                     ; $1C83: $0E $00

Jump_000_1C85:
    nop                                           ; $1C85: $00
    nop                                           ; $1C86: $00
    dec bc                                        ; $1C87: $0B
    ld a, b                                       ; $1C88: $78
    or c                                          ; $1C89: $B1
    jp nz, Jump_000_1C85                          ; $1C8A: $C2 $85 $1C

Call_000_1C8D:
    ret                                           ; $1C8D: $C9


Call_000_1C8E:
    ld a, [$C037]                                 ; $1C8E: $FA $37 $C0
    bit 6, a                                      ; $1C91: $CB $77
    jr z, jr_000_1CD2                             ; $1C93: $28 $3D

    xor a                                         ; $1C95: $AF
    ldh [rOBP0], a                                ; $1C96: $E0 $48
    ldh [rOBP1], a                                ; $1C98: $E0 $49
    call Call_000_1A39                            ; $1C9A: $CD $39 $1A
    ld a, $C7                                     ; $1C9D: $3E $C7
    rst RST_18                                    ; $1C9F: $DF
    ei                                            ; $1CA0: $FB
    call Call_000_0424                            ; $1CA1: $CD $24 $04
    call Call_000_0424                            ; $1CA4: $CD $24 $04
    ld a, [$C27F]                                 ; $1CA7: $FA $7F $C2
    ld [$C280], a                                 ; $1CAA: $EA $80 $C2
    ld d, a                                       ; $1CAD: $57
    ld bc, $00F0                                  ; $1CAE: $01 $F0 $00

jr_000_1CB1:
    call Call_000_0424                            ; $1CB1: $CD $24 $04
    dec bc                                        ; $1CB4: $0B
    ld a, b                                       ; $1CB5: $78
    or c                                          ; $1CB6: $B1
    jr nz, jr_000_1CB1                            ; $1CB7: $20 $F8

    ld a, [$C27F]                                 ; $1CB9: $FA $7F $C2
    ld [$C281], a                                 ; $1CBC: $EA $81 $C2
    cp d                                          ; $1CBF: $BA
    jr z, jr_000_1CCC                             ; $1CC0: $28 $0A

    jr c, jr_000_1CC8                             ; $1CC2: $38 $04

    ld a, $06                                     ; $1CC4: $3E $06
    jr jr_000_1CCE                                ; $1CC6: $18 $06

jr_000_1CC8:
    ld a, $02                                     ; $1CC8: $3E $02
    jr jr_000_1CCE                                ; $1CCA: $18 $02

jr_000_1CCC:
    ld a, $04                                     ; $1CCC: $3E $04

jr_000_1CCE:
    ld [$C282], a                                 ; $1CCE: $EA $82 $C2
    di                                            ; $1CD1: $F3

jr_000_1CD2:
    ret                                           ; $1CD2: $C9


    jp $4000                                      ; $1CD3: $C3 $00 $40


Call_000_1CD6:
    ld a, $FF                                     ; $1CD6: $3E $FF
    ld [$C2D2], a                                 ; $1CD8: $EA $D2 $C2
    xor a                                         ; $1CDB: $AF
    ld [$D92F], a                                 ; $1CDC: $EA $2F $D9
    ld [$DA2F], a                                 ; $1CDF: $EA $2F $DA

Call_000_1CE2:
    ld [$D93A], a                                 ; $1CE2: $EA $3A $D9
    ld [$DA3A], a                                 ; $1CE5: $EA $3A $DA
    ld [$D936], a                                 ; $1CE8: $EA $36 $D9
    ld [$DA36], a                                 ; $1CEB: $EA $36 $DA
    ld [$D940], a                                 ; $1CEE: $EA $40 $D9
    ld [$DA40], a                                 ; $1CF1: $EA $40 $DA
    ld [$D941], a                                 ; $1CF4: $EA $41 $D9

Call_000_1CF7:
    ld [$DA41], a                                 ; $1CF7: $EA $41 $DA
    ld a, $36                                     ; $1CFA: $3E $36
    ld [$D960], a                                 ; $1CFC: $EA $60 $D9

Call_000_1CFF:
    ld [$DA60], a                                 ; $1CFF: $EA $60 $DA
    ret                                           ; $1D02: $C9


Jump_000_1D03:
    ld sp, $DD00                                  ; $1D03: $31 $00 $DD
    di                                            ; $1D06: $F3
    ld a, $2C                                     ; $1D07: $3E $2C
    ldh [$FFE0], a                                ; $1D09: $E0 $E0
    ld [$2000], a                                 ; $1D0B: $EA $00 $20
    ld hl, $C2D2                                  ; $1D0E: $21 $D2 $C2
    inc [hl]                                      ; $1D11: $34
    rst RST_10                                    ; $1D12: $D7
    ld hl, $C2C2                                  ; $1D13: $21 $C2 $C2
    ld [hl], $03                                  ; $1D16: $36 $03
    ld hl, $C039                                  ; $1D18: $21 $39 $C0
    set 7, [hl]                                   ; $1D1B: $CB $FE
    set 5, [hl]                                   ; $1D1D: $CB $EE
    inc hl                                        ; $1D1F: $23
    set 1, [hl]                                   ; $1D20: $CB $CE
    ld a, $1F                                     ; $1D22: $3E $1F
    ld b, $7F                                     ; $1D24: $06 $7F
    call Call_000_048D                            ; $1D26: $CD $8D $04
    ld a, $FF                                     ; $1D29: $3E $FF
    ld [$C01A], a                                 ; $1D2B: $EA $1A $C0
    xor a                                         ; $1D2E: $AF
    ldh [$FFE9], a                                ; $1D2F: $E0 $E9
    ld a, $FF                                     ; $1D31: $3E $FF
    ld hl, $C037                                  ; $1D33: $21 $37 $C0
    bit 7, [hl]                                   ; $1D36: $CB $7E
    jr z, jr_000_1D3C                             ; $1D38: $28 $02

    ld a, $00                                     ; $1D3A: $3E $00

jr_000_1D3C:
    ldh [rBGP], a                                 ; $1D3C: $E0 $47
    ldh [rOBP0], a                                ; $1D3E: $E0 $48
    ldh [rOBP1], a                                ; $1D40: $E0 $49
    ldh [$FFEA], a                                ; $1D42: $E0 $EA
    ldh [$FFEB], a                                ; $1D44: $E0 $EB
    ldh [$FFEC], a                                ; $1D46: $E0 $EC
    call Call_000_13ED                            ; $1D48: $CD $ED $13
    xor a                                         ; $1D4B: $AF
    ldh [rSTAT], a                                ; $1D4C: $E0 $41
    call Call_000_1465                            ; $1D4E: $CD $65 $14
    ld a, $30                                     ; $1D51: $3E $30
    ldh [$FFE4], a                                ; $1D53: $E0 $E4
    ld [$C2AA], a                                 ; $1D55: $EA $AA $C2
    ld a, $08                                     ; $1D58: $3E $08
    ldh [$FFE2], a                                ; $1D5A: $E0 $E2
    ld a, $40                                     ; $1D5C: $3E $40
    ld [$C2AC], a                                 ; $1D5E: $EA $AC $C2
    call Call_000_0F9E                            ; $1D61: $CD $9E $0F
    call Call_000_1E5B                            ; $1D64: $CD $5B $1E
    ld b, $05                                     ; $1D67: $06 $05
    ld hl, $4000                                  ; $1D69: $21 $00 $40
    rst RST_08                                    ; $1D6C: $CF
    ld b, $2C                                     ; $1D6D: $06 $2C
    ld hl, $4000                                  ; $1D6F: $21 $00 $40
    rst RST_08                                    ; $1D72: $CF
    call Call_000_23E9                            ; $1D73: $CD $E9 $23
    ld hl, $D680                                  ; $1D76: $21 $80 $D6
    ld de, $24CF                                  ; $1D79: $11 $CF $24
    call Call_000_0F8E                            ; $1D7C: $CD $8E $0F
    ld hl, $D6C0                                  ; $1D7F: $21 $C0 $D6
    ld de, $24EF                                  ; $1D82: $11 $EF $24
    call Call_000_0F8E                            ; $1D85: $CD $8E $0F
    ld a, $90                                     ; $1D88: $3E $90
    ldh [rWY], a                                  ; $1D8A: $E0 $4A
    ld a, $07                                     ; $1D8C: $3E $07
    ldh [rWX], a                                  ; $1D8E: $E0 $4B
    call Call_000_1A39                            ; $1D90: $CD $39 $1A
    ld a, $E7                                     ; $1D93: $3E $E7
    rst RST_18                                    ; $1D95: $DF
    ldh a, [rSTAT]                                ; $1D96: $F0 $41
    or $40                                        ; $1D98: $F6 $40
    ldh [rSTAT], a                                ; $1D9A: $E0 $41
    xor a                                         ; $1D9C: $AF
    ldh [rIF], a                                  ; $1D9D: $E0 $0F
    ldh a, [rIE]                                  ; $1D9F: $F0 $FF
    or $03                                        ; $1DA1: $F6 $03
    ldh [rIE], a                                  ; $1DA3: $E0 $FF
    ld a, $02                                     ; $1DA5: $3E $02
    ld bc, $250F                                  ; $1DA7: $01 $0F $25
    call Call_000_03D4                            ; $1DAA: $CD $D4 $03
    ld a, $03                                     ; $1DAD: $3E $03
    ld bc, $251B                                  ; $1DAF: $01 $1B $25
    call Call_000_03D4                            ; $1DB2: $CD $D4 $03

Jump_000_1DB5:
    ld hl, $C039                                  ; $1DB5: $21 $39 $C0
    res 6, [hl]                                   ; $1DB8: $CB $B6
    ei                                            ; $1DBA: $FB
    call Call_000_0417                            ; $1DBB: $CD $17 $04
    call Call_000_0417                            ; $1DBE: $CD $17 $04
    ld b, $0A                                     ; $1DC1: $06 $0A

Jump_000_1DC3:
    call Call_000_0417                            ; $1DC3: $CD $17 $04
    dec b                                         ; $1DC6: $05
    jp nz, Jump_000_1DC3                          ; $1DC7: $C2 $C3 $1D

    ld a, $FF                                     ; $1DCA: $3E $FF
    ld [$C2EB], a                                 ; $1DCC: $EA $EB $C2
    ld hl, $C037                                  ; $1DCF: $21 $37 $C0
    bit 7, [hl]                                   ; $1DD2: $CB $7E
    jr z, jr_000_1E03                             ; $1DD4: $28 $2D

    ld a, $FF                                     ; $1DD6: $3E $FF
    ld [$C2EE], a                                 ; $1DD8: $EA $EE $C2
    ld a, $00                                     ; $1DDB: $3E $00
    ld [$C2ED], a                                 ; $1DDD: $EA $ED $C2
    ld a, $D8                                     ; $1DE0: $3E $D8

Call_000_1DE2:
    ld [$C2EC], a                                 ; $1DE2: $EA $EC $C2
    ld a, $B0                                     ; $1DE5: $3E $B0

Jump_000_1DE7:
    ldh [rOBP0], a                                ; $1DE7: $E0 $48
    ld a, $70                                     ; $1DE9: $3E $70
    ldh [rOBP1], a                                ; $1DEB: $E0 $49
    ld a, $D8                                     ; $1DED: $3E $D8
    ldh [rBGP], a                                 ; $1DEF: $E0 $47
    ldh [$FFEA], a                                ; $1DF1: $E0 $EA
    ldh [$FFEB], a                                ; $1DF3: $E0 $EB
    ldh [$FFEC], a                                ; $1DF5: $E0 $EC
    ld a, $30                                     ; $1DF7: $3E $30
    ld [$C2EF], a                                 ; $1DF9: $EA $EF $C2
    ld a, $0C                                     ; $1DFC: $3E $0C

Jump_000_1DFE:
    ld [$C2F0], a                                 ; $1DFE: $EA $F0 $C2
    jr jr_000_1E2E                                ; $1E01: $18 $2B

jr_000_1E03:
    ld a, $00                                     ; $1E03: $3E $00
    ld [$C2EE], a                                 ; $1E05: $EA $EE $C2
    ld a, $FF                                     ; $1E08: $3E $FF
    ld [$C2ED], a                                 ; $1E0A: $EA $ED $C2
    ld a, $1B                                     ; $1E0D: $3E $1B
    ld [$C2EC], a                                 ; $1E0F: $EA $EC $C2
    ld a, $8C                                     ; $1E12: $3E $8C
    ldh [rOBP0], a                                ; $1E14: $E0 $48
    ld a, $4C                                     ; $1E16: $3E $4C
    ldh [rOBP1], a                                ; $1E18: $E0 $49
    ld a, $1B                                     ; $1E1A: $3E $1B
    ldh [rBGP], a                                 ; $1E1C: $E0 $47
    ldh [$FFEA], a                                ; $1E1E: $E0 $EA
    ldh [$FFEB], a                                ; $1E20: $E0 $EB
    ldh [$FFEC], a                                ; $1E22: $E0 $EC
    ld a, $CF                                     ; $1E24: $3E $CF
    ld [$C2EF], a                                 ; $1E26: $EA $EF $C2
    ld a, $F3                                     ; $1E29: $3E $F3
    ld [$C2F0], a                                 ; $1E2B: $EA $F0 $C2

jr_000_1E2E:
    call Call_000_147A                            ; $1E2E: $CD $7A $14
    call Call_000_248D                            ; $1E31: $CD $8D $24
    call Call_000_0417                            ; $1E34: $CD $17 $04
    ld b, $2C                                     ; $1E37: $06 $2C
    ld hl, $40FE                                  ; $1E39: $21 $FE $40
    rst RST_08                                    ; $1E3C: $CF
    call Call_000_248D                            ; $1E3D: $CD $8D $24
    call Call_000_0417                            ; $1E40: $CD $17 $04
    ld b, $04                                     ; $1E43: $06 $04
    ld hl, $5C42                                  ; $1E45: $21 $42 $5C
    rst RST_08                                    ; $1E48: $CF
    call Call_000_2316                            ; $1E49: $CD $16 $23
    ld hl, $C2C2                                  ; $1E4C: $21 $C2 $C2
    res 7, [hl]                                   ; $1E4F: $CB $BE
    ld a, $01                                     ; $1E51: $3E $01
    ldh [$FFE0], a                                ; $1E53: $E0 $E0
    ld [$2000], a                                 ; $1E55: $EA $00 $20
    jp $4066                                      ; $1E58: $C3 $66 $40


Call_000_1E5B:
    ld a, [$C2C6]                                 ; $1E5B: $FA $C6 $C2
    bit 4, a                                      ; $1E5E: $CB $67

Call_000_1E60:
    jr z, jr_000_1E75                             ; $1E60: $28 $13

    ld hl, $C2F3                                  ; $1E62: $21 $F3 $C2
    ld a, [hl]                                    ; $1E65: $7E
    add $02                                       ; $1E66: $C6 $02
    cp $0F                                        ; $1E68: $FE $0F
    jr c, jr_000_1E6E                             ; $1E6A: $38 $02

    ld a, $0F                                     ; $1E6C: $3E $0F

jr_000_1E6E:
    ld [hl], a                                    ; $1E6E: $77
    ld b, $3F                                     ; $1E6F: $06 $3F
    ld hl, $50BC                                  ; $1E71: $21 $BC $50
    rst RST_08                                    ; $1E74: $CF

jr_000_1E75:
    ld a, [$C2C6]                                 ; $1E75: $FA $C6 $C2
    bit 4, a                                      ; $1E78: $CB $67
    jr z, jr_000_1E83                             ; $1E7A: $28 $07

    xor a                                         ; $1E7C: $AF
    ld [$D92F], a                                 ; $1E7D: $EA $2F $D9
    ld [$DA2F], a                                 ; $1E80: $EA $2F $DA

jr_000_1E83:
    call Call_000_188C                            ; $1E83: $CD $8C $18
    xor a                                         ; $1E86: $AF
    ld [$C2E0], a                                 ; $1E87: $EA $E0 $C2
    ld [$C2DF], a                                 ; $1E8A: $EA $DF $C2
    ld [$C2E1], a                                 ; $1E8D: $EA $E1 $C2
    ld [$C2E2], a                                 ; $1E90: $EA $E2 $C2
    ld [$C2E7], a                                 ; $1E93: $EA $E7 $C2
    ld [$C2E9], a                                 ; $1E96: $EA $E9 $C2
    ld [$C2EA], a                                 ; $1E99: $EA $EA $C2
    ld [$C2B0], a                                 ; $1E9C: $EA $B0 $C2
    ld [$C2AF], a                                 ; $1E9F: $EA $AF $C2
    ld [$C2AE], a                                 ; $1EA2: $EA $AE $C2
    ld [$C2D4], a                                 ; $1EA5: $EA $D4 $C2
    ld [$C2D5], a                                 ; $1EA8: $EA $D5 $C2
    ld [$C2D6], a                                 ; $1EAB: $EA $D6 $C2
    ld [$C2D7], a                                 ; $1EAE: $EA $D7 $C2
    ld [$C2D8], a                                 ; $1EB1: $EA $D8 $C2
    ld [$C2D9], a                                 ; $1EB4: $EA $D9 $C2
    ld [$C2DA], a                                 ; $1EB7: $EA $DA $C2
    ld [$C2DB], a                                 ; $1EBA: $EA $DB $C2
    ld [$C2DC], a                                 ; $1EBD: $EA $DC $C2

Call_000_1EC0:
    xor a                                         ; $1EC0: $AF
    ld [$D92D], a                                 ; $1EC1: $EA $2D $D9
    ld a, $01                                     ; $1EC4: $3E $01
    ld [$DA2D], a                                 ; $1EC6: $EA $2D $DA
    ld a, [$D920]                                 ; $1EC9: $FA $20 $D9
    and $80                                       ; $1ECC: $E6 $80
    ld [$D920], a                                 ; $1ECE: $EA $20 $D9
    ld a, [$DA20]                                 ; $1ED1: $FA $20 $DA
    and $80                                       ; $1ED4: $E6 $80
    ld [$DA20], a                                 ; $1ED6: $EA $20 $DA
    xor a                                         ; $1ED9: $AF
    ld [$D921], a                                 ; $1EDA: $EA $21 $D9
    ld [$D922], a                                 ; $1EDD: $EA $22 $D9
    ld [$D923], a                                 ; $1EE0: $EA $23 $D9
    ld [$D924], a                                 ; $1EE3: $EA $24 $D9
    ld [$DA21], a                                 ; $1EE6: $EA $21 $DA
    ld [$DA22], a                                 ; $1EE9: $EA $22 $DA
    ld [$DA23], a                                 ; $1EEC: $EA $23 $DA
    ld [$DA24], a                                 ; $1EEF: $EA $24 $DA
    ld [$D93C], a                                 ; $1EF2: $EA $3C $D9
    ld [$DA3C], a                                 ; $1EF5: $EA $3C $DA
    ld [$D93F], a                                 ; $1EF8: $EA $3F $D9
    ld [$DA3F], a                                 ; $1EFB: $EA $3F $DA
    ld [$D972], a                                 ; $1EFE: $EA $72 $D9

Jump_000_1F01:
    ld [$DA72], a                                 ; $1F01: $EA $72 $DA
    ld [$D973], a                                 ; $1F04: $EA $73 $D9
    ld [$DA73], a                                 ; $1F07: $EA $73 $DA
    ld [$D96D], a                                 ; $1F0A: $EA $6D $D9
    ld [$DA6D], a                                 ; $1F0D: $EA $6D $DA

Call_000_1F10:
    ld [$D96C], a                                 ; $1F10: $EA $6C $D9
    ld [$DA6C], a                                 ; $1F13: $EA $6C $DA
    ld [$D941], a                                 ; $1F16: $EA $41 $D9
    ld [$DA41], a                                 ; $1F19: $EA $41 $DA
    ld [$D943], a                                 ; $1F1C: $EA $43 $D9
    ld [$DA43], a                                 ; $1F1F: $EA $43 $DA
    ld [$D962], a                                 ; $1F22: $EA $62 $D9
    ld [$DA62], a                                 ; $1F25: $EA $62 $DA
    ld [$D963], a                                 ; $1F28: $EA $63 $D9
    ld [$DA63], a                                 ; $1F2B: $EA $63 $DA
    ld [$D965], a                                 ; $1F2E: $EA $65 $D9
    ld [$DA65], a                                 ; $1F31: $EA $65 $DA
    ld [$D930], a                                 ; $1F34: $EA $30 $D9
    ld [$DA30], a                                 ; $1F37: $EA $30 $DA

Jump_000_1F3A:
    ld [$D931], a                                 ; $1F3A: $EA $31 $D9
    ld [$DA31], a                                 ; $1F3D: $EA $31 $DA
    ld [$D932], a                                 ; $1F40: $EA $32 $D9
    ld [$DA32], a                                 ; $1F43: $EA $32 $DA
    ld [$D934], a                                 ; $1F46: $EA $34 $D9
    ld [$DA34], a                                 ; $1F49: $EA $34 $DA
    ld [$D935], a                                 ; $1F4C: $EA $35 $D9
    ld [$DA35], a                                 ; $1F4F: $EA $35 $DA
    ld [$D952], a                                 ; $1F52: $EA $52 $D9
    ld [$DA52], a                                 ; $1F55: $EA $52 $DA
    ld [$D953], a                                 ; $1F58: $EA $53 $D9
    ld [$DA53], a                                 ; $1F5B: $EA $53 $DA
    ld [$D954], a                                 ; $1F5E: $EA $54 $D9

Jump_000_1F61:
    ld [$DA54], a                                 ; $1F61: $EA $54 $DA
    ld [$D955], a                                 ; $1F64: $EA $55 $D9
    ld [$DA55], a                                 ; $1F67: $EA $55 $DA
    ld [$D956], a                                 ; $1F6A: $EA $56 $D9
    ld [$DA56], a                                 ; $1F6D: $EA $56 $DA
    ld [$D957], a                                 ; $1F70: $EA $57 $D9
    ld [$DA57], a                                 ; $1F73: $EA $57 $DA

Call_000_1F76:
    ld [$D958], a                                 ; $1F76: $EA $58 $D9
    ld [$DA58], a                                 ; $1F79: $EA $58 $DA
    ld [$D959], a                                 ; $1F7C: $EA $59 $D9
    ld [$DA59], a                                 ; $1F7F: $EA $59 $DA
    ld [$D95A], a                                 ; $1F82: $EA $5A $D9

Call_000_1F85:
    ld [$DA5A], a                                 ; $1F85: $EA $5A $DA
    ld [$D99C], a                                 ; $1F88: $EA $9C $D9
    ld [$DA9C], a                                 ; $1F8B: $EA $9C $DA
    ld a, $FF                                     ; $1F8E: $3E $FF

Call_000_1F90:
    ld [$D970], a                                 ; $1F90: $EA $70 $D9
    ld [$DA70], a                                 ; $1F93: $EA $70 $DA
    ld a, [$D92E]                                 ; $1F96: $FA $2E $D9
    ld [$DA82], a                                 ; $1F99: $EA $82 $DA
    ld a, [$DA2E]                                 ; $1F9C: $FA $2E $DA
    ld [$D982], a                                 ; $1F9F: $EA $82 $D9
    xor a                                         ; $1FA2: $AF
    ld hl, $D99F                                  ; $1FA3: $21 $9F $D9
    ld b, $06                                     ; $1FA6: $06 $06

jr_000_1FA8:
    ld [hl+], a                                   ; $1FA8: $22
    dec b                                         ; $1FA9: $05
    jr nz, jr_000_1FA8                            ; $1FAA: $20 $FC

    ld hl, $DA9F                                  ; $1FAC: $21 $9F $DA
    ld b, $06                                     ; $1FAF: $06 $06

jr_000_1FB1:
    ld [hl+], a                                   ; $1FB1: $22
    dec b                                         ; $1FB2: $05
    jr nz, jr_000_1FB1                            ; $1FB3: $20 $FC

    xor a                                         ; $1FB5: $AF
    ld [$C2C3], a                                 ; $1FB6: $EA $C3 $C2
    ld a, [$C2C6]                                 ; $1FB9: $FA $C6 $C2
    bit 4, a                                      ; $1FBC: $CB $67
    jp z, Jump_000_1FF8                           ; $1FBE: $CA $F8 $1F

    ld a, [$C2C5]                                 ; $1FC1: $FA $C5 $C2
    bit 0, a                                      ; $1FC4: $CB $47
    jp nz, Jump_000_1FD3                          ; $1FC6: $C2 $D3 $1F

    ld a, $36                                     ; $1FC9: $3E $36
    ld [$D960], a                                 ; $1FCB: $EA $60 $D9
    ld a, $03                                     ; $1FCE: $3E $03
    ld [$D95E], a                                 ; $1FD0: $EA $5E $D9

Jump_000_1FD3:
    ld a, [$C2C5]                                 ; $1FD3: $FA $C5 $C2
    bit 1, a                                      ; $1FD6: $CB $4F
    jp nz, Jump_000_1FE5                          ; $1FD8: $C2 $E5 $1F

    ld a, $36                                     ; $1FDB: $3E $36
    ld [$DA60], a                                 ; $1FDD: $EA $60 $DA
    ld a, $03                                     ; $1FE0: $3E $03
    ld [$DA5E], a                                 ; $1FE2: $EA $5E $DA

Jump_000_1FE5:
    ld a, [$D936]                                 ; $1FE5: $FA $36 $D9
    cp $03                                        ; $1FE8: $FE $03
    jp z, Jump_000_200D                           ; $1FEA: $CA $0D $20

    ld a, [$DA36]                                 ; $1FED: $FA $36 $DA
    cp $03                                        ; $1FF0: $FE $03
    jp z, Jump_000_200D                           ; $1FF2: $CA $0D $20

    jp Jump_000_202D                              ; $1FF5: $C3 $2D $20


Jump_000_1FF8:
    ld a, [$C2D2]                                 ; $1FF8: $FA $D2 $C2
    cp $03                                        ; $1FFB: $FE $03
    jr z, jr_000_200D                             ; $1FFD: $28 $0E

Jump_000_1FFF:
    cp $00                                        ; $1FFF: $FE $00
    jr nz, jr_000_2025                            ; $2001: $20 $22

Call_000_2003:
    ld a, $03                                     ; $2003: $3E $03
    ld [$D95E], a                                 ; $2005: $EA $5E $D9

Jump_000_2008:
    ld [$DA5E], a                                 ; $2008: $EA $5E $DA
    jr jr_000_2025                                ; $200B: $18 $18

Jump_000_200D:
jr_000_200D:
    ld a, $01                                     ; $200D: $3E $01
    ld [$C2C3], a                                 ; $200F: $EA $C3 $C2
    ld a, $12                                     ; $2012: $3E $12
    ld [$D960], a                                 ; $2014: $EA $60 $D9
    ld [$DA60], a                                 ; $2017: $EA $60 $DA
    ld a, $03                                     ; $201A: $3E $03
    ld [$D95E], a                                 ; $201C: $EA $5E $D9
    ld [$DA5E], a                                 ; $201F: $EA $5E $DA
    jp Jump_000_202D                              ; $2022: $C3 $2D $20


jr_000_2025:
    ld a, $36                                     ; $2025: $3E $36
    ld [$D960], a                                 ; $2027: $EA $60 $D9
    ld [$DA60], a                                 ; $202A: $EA $60 $DA

Jump_000_202D:
    xor a                                         ; $202D: $AF
    ld [$D961], a                                 ; $202E: $EA $61 $D9
    ld [$DA61], a                                 ; $2031: $EA $61 $DA
    ld [$D95F], a                                 ; $2034: $EA $5F $D9
    ld [$DA5F], a                                 ; $2037: $EA $5F $DA
    ld bc, $D900                                  ; $203A: $01 $00 $D9
    ld de, $D680                                  ; $203D: $11 $80 $D6

Call_000_2040:
    call Call_000_2142                            ; $2040: $CD $42 $21
    ld bc, $DA00                                  ; $2043: $01 $00 $DA
    ld de, $D6C0                                  ; $2046: $11 $C0 $D6
    call Call_000_2142                            ; $2049: $CD $42 $21
    call Call_000_2050                            ; $204C: $CD $50 $20
    ret                                           ; $204F: $C9


Call_000_2050:
    ld a, [$D92E]                                 ; $2050: $FA $2E $D9
    ld hl, $20A2                                  ; $2053: $21 $A2 $20
    ld b, $00                                     ; $2056: $06 $00
    ld c, a                                       ; $2058: $4F
    sla c                                         ; $2059: $CB $21
    rl b                                          ; $205B: $CB $10
    sla c                                         ; $205D: $CB $21
    rl b                                          ; $205F: $CB $10
    sla c                                         ; $2061: $CB $21
    rl b                                          ; $2063: $CB $10
    add hl, bc                                    ; $2065: $09
    push hl                                       ; $2066: $E5
    ld de, $D3C0                                  ; $2067: $11 $C0 $D3
    call Call_000_2099                            ; $206A: $CD $99 $20
    pop hl                                        ; $206D: $E1

Call_000_206E:
    ld de, $D440                                  ; $206E: $11 $40 $D4
    call Call_000_2099                            ; $2071: $CD $99 $20
    ld a, [$DA2E]                                 ; $2074: $FA $2E $DA
    ld hl, $20AA                                  ; $2077: $21 $AA $20

Jump_000_207A:
    ld b, $00                                     ; $207A: $06 $00
    ld c, a                                       ; $207C: $4F
    sla c                                         ; $207D: $CB $21
    rl b                                          ; $207F: $CB $10
    sla c                                         ; $2081: $CB $21
    rl b                                          ; $2083: $CB $10
    sla c                                         ; $2085: $CB $21
    rl b                                          ; $2087: $CB $10
    add hl, bc                                    ; $2089: $09
    push hl                                       ; $208A: $E5
    ld de, $D3C8                                  ; $208B: $11 $C8 $D3
    call Call_000_2099                            ; $208E: $CD $99 $20
    pop hl                                        ; $2091: $E1
    ld de, $D448                                  ; $2092: $11 $48 $D4
    call Call_000_2099                            ; $2095: $CD $99 $20
    ret                                           ; $2098: $C9


Call_000_2099:
    ld b, $08                                     ; $2099: $06 $08

jr_000_209B:
    ld a, [hl+]                                   ; $209B: $2A
    ld [de], a                                    ; $209C: $12
    inc de                                        ; $209D: $13
    dec b                                         ; $209E: $05
    jr nz, jr_000_209B                            ; $209F: $20 $FA

    ret                                           ; $20A1: $C9


    nop                                           ; $20A2: $00
    nop                                           ; $20A3: $00
    nop                                           ; $20A4: $00
    nop                                           ; $20A5: $00
    rst RST_38                                    ; $20A6: $FF
    ld a, a                                       ; $20A7: $7F
    rra                                           ; $20A8: $1F
    nop                                           ; $20A9: $00

Jump_000_20AA:
    nop                                           ; $20AA: $00
    nop                                           ; $20AB: $00
    nop                                           ; $20AC: $00
    nop                                           ; $20AD: $00
    ld e, d                                       ; $20AE: $5A
    ld l, e                                       ; $20AF: $6B
    ld c, d                                       ; $20B0: $4A
    add hl, hl                                    ; $20B1: $29
    nop                                           ; $20B2: $00
    nop                                           ; $20B3: $00
    nop                                           ; $20B4: $00
    nop                                           ; $20B5: $00
    rst RST_38                                    ; $20B6: $FF
    ld a, a                                       ; $20B7: $7F
    cp c                                          ; $20B8: $B9
    ld b, b                                       ; $20B9: $40
    nop                                           ; $20BA: $00
    nop                                           ; $20BB: $00
    nop                                           ; $20BC: $00
    nop                                           ; $20BD: $00
    ld a, e                                       ; $20BE: $7B
    ld a, a                                       ; $20BF: $7F
    ei                                            ; $20C0: $FB
    inc e                                         ; $20C1: $1C
    nop                                           ; $20C2: $00
    nop                                           ; $20C3: $00
    nop                                           ; $20C4: $00
    nop                                           ; $20C5: $00
    rst RST_18                                    ; $20C6: $DF
    ld h, e                                       ; $20C7: $63
    ld e, a                                       ; $20C8: $5F
    add hl, hl                                    ; $20C9: $29
    nop                                           ; $20CA: $00
    nop                                           ; $20CB: $00
    nop                                           ; $20CC: $00
    nop                                           ; $20CD: $00
    ld a, e                                       ; $20CE: $7B
    ld a, a                                       ; $20CF: $7F
    adc h                                         ; $20D0: $8C
    ld a, l                                       ; $20D1: $7D
    nop                                           ; $20D2: $00

Jump_000_20D3:
    nop                                           ; $20D3: $00
    nop                                           ; $20D4: $00
    nop                                           ; $20D5: $00
    rst RST_38                                    ; $20D6: $FF
    ld a, a                                       ; $20D7: $7F
    ld b, b                                       ; $20D8: $40
    ld [bc], a                                    ; $20D9: $02
    nop                                           ; $20DA: $00
    nop                                           ; $20DB: $00
    nop                                           ; $20DC: $00
    nop                                           ; $20DD: $00

Call_000_20DE:
    sbc h                                         ; $20DE: $9C

Call_000_20DF:
    ld [hl], e                                    ; $20DF: $73
    ld c, b                                       ; $20E0: $48
    ld hl, $0000                                  ; $20E1: $21 $00 $00
    nop                                           ; $20E4: $00
    nop                                           ; $20E5: $00
    rst RST_38                                    ; $20E6: $FF
    ld a, a                                       ; $20E7: $7F
    rst RST_38                                    ; $20E8: $FF
    ld [bc], a                                    ; $20E9: $02
    nop                                           ; $20EA: $00
    nop                                           ; $20EB: $00
    nop                                           ; $20EC: $00
    nop                                           ; $20ED: $00
    rst RST_18                                    ; $20EE: $DF
    ld a, [hl]                                    ; $20EF: $7E
    rra                                           ; $20F0: $1F
    ld a, h                                       ; $20F1: $7C
    nop                                           ; $20F2: $00
    nop                                           ; $20F3: $00
    nop                                           ; $20F4: $00
    nop                                           ; $20F5: $00
    rst RST_38                                    ; $20F6: $FF
    ld [hl], e                                    ; $20F7: $73
    ld e, a                                       ; $20F8: $5F
    ld [bc], a                                    ; $20F9: $02
    nop                                           ; $20FA: $00
    nop                                           ; $20FB: $00
    nop                                           ; $20FC: $00

Call_000_20FD:
    nop                                           ; $20FD: $00
    sub l                                         ; $20FE: $95

Call_000_20FF:
    ld [hl], e                                    ; $20FF: $73

Call_000_2100:
    ld e, $34                                     ; $2100: $1E $34
    nop                                           ; $2102: $00
    nop                                           ; $2103: $00
    nop                                           ; $2104: $00

Jump_000_2105:
    nop                                           ; $2105: $00
    rst RST_38                                    ; $2106: $FF
    ld a, a                                       ; $2107: $7F

Call_000_2108:
    ret nc                                        ; $2108: $D0

    add hl, hl                                    ; $2109: $29
    nop                                           ; $210A: $00
    nop                                           ; $210B: $00
    nop                                           ; $210C: $00
    nop                                           ; $210D: $00

Jump_000_210E:
    rra                                           ; $210E: $1F
    ld h, e                                       ; $210F: $63
    rra                                           ; $2110: $1F
    nop                                           ; $2111: $00
    nop                                           ; $2112: $00
    nop                                           ; $2113: $00
    nop                                           ; $2114: $00
    nop                                           ; $2115: $00
    rst RST_38                                    ; $2116: $FF
    ld a, a                                       ; $2117: $7F
    sbc b                                         ; $2118: $98
    ld h, c                                       ; $2119: $61
    nop                                           ; $211A: $00

Call_000_211B:
    nop                                           ; $211B: $00
    nop                                           ; $211C: $00
    nop                                           ; $211D: $00
    rst RST_38                                    ; $211E: $FF
    ld [hl], e                                    ; $211F: $73
    ld d, d                                       ; $2120: $52
    ld a, [hl-]                                   ; $2121: $3A
    nop                                           ; $2122: $00
    nop                                           ; $2123: $00
    nop                                           ; $2124: $00
    nop                                           ; $2125: $00
    rst RST_38                                    ; $2126: $FF
    ld [hl], e                                    ; $2127: $73
    db $DB                                        ; $2128: $DB
    add hl, bc                                    ; $2129: $09
    nop                                           ; $212A: $00
    nop                                           ; $212B: $00
    nop                                           ; $212C: $00
    nop                                           ; $212D: $00
    rst RST_38                                    ; $212E: $FF
    ld h, e                                       ; $212F: $63
    ccf                                           ; $2130: $3F
    inc bc                                        ; $2131: $03
    nop                                           ; $2132: $00
    nop                                           ; $2133: $00
    nop                                           ; $2134: $00
    nop                                           ; $2135: $00
    rst RST_38                                    ; $2136: $FF
    ld a, a                                       ; $2137: $7F
    inc c                                         ; $2138: $0C
    inc sp                                        ; $2139: $33
    nop                                           ; $213A: $00
    nop                                           ; $213B: $00
    nop                                           ; $213C: $00
    nop                                           ; $213D: $00
    rst RST_38                                    ; $213E: $FF
    ld a, a                                       ; $213F: $7F
    rra                                           ; $2140: $1F
    ld e, d                                       ; $2141: $5A

Call_000_2142:
    ld a, [$C2C6]                                 ; $2142: $FA $C6 $C2
    bit 4, a                                      ; $2145: $CB $67
    jp z, Jump_000_2164                           ; $2147: $CA $64 $21

    ld hl, $0036                                  ; $214A: $21 $36 $00
    add hl, bc                                    ; $214D: $09
    ld a, [hl]                                    ; $214E: $7E
    cp $03                                        ; $214F: $FE $03
    jr nz, jr_000_2155                            ; $2151: $20 $02

    ld a, $02                                     ; $2153: $3E $02

jr_000_2155:
    ld hl, $0037                                  ; $2155: $21 $37 $00
    add hl, bc                                    ; $2158: $09
    add l                                         ; $2159: $85
    jr nc, jr_000_215D                            ; $215A: $30 $01

    inc h                                         ; $215C: $24

jr_000_215D:
    ld l, a                                       ; $215D: $6F
    ld a, [hl]                                    ; $215E: $7E
    ld hl, $002E                                  ; $215F: $21 $2E $00
    add hl, bc                                    ; $2162: $09
    ld [hl], a                                    ; $2163: $77

Jump_000_2164:
    ld hl, $002F                                  ; $2164: $21 $2F $00
    add hl, bc                                    ; $2167: $09
    ld a, [hl]                                    ; $2168: $7E
    cp $00                                        ; $2169: $FE $00
    jr z, jr_000_216F                             ; $216B: $28 $02

    jr jr_000_2178                                ; $216D: $18 $09

jr_000_216F:
    push de                                       ; $216F: $D5
    ld de, $21D6                                  ; $2170: $11 $D6 $21
    call Call_000_2181                            ; $2173: $CD $81 $21
    pop de                                        ; $2176: $D1
    ret                                           ; $2177: $C9


jr_000_2178:
    push de                                       ; $2178: $D5
    ld de, $2276                                  ; $2179: $11 $76 $22
    call Call_000_2181                            ; $217C: $CD $81 $21
    pop de                                        ; $217F: $D1
    ret                                           ; $2180: $C9


Call_000_2181:
    ld hl, $002E                                  ; $2181: $21 $2E $00
    add hl, bc                                    ; $2184: $09
    ld l, [hl]                                    ; $2185: $6E
    ld h, $00                                     ; $2186: $26 $00
    sla l                                         ; $2188: $CB $25
    rl h                                          ; $218A: $CB $14
    sla l                                         ; $218C: $CB $25
    rl h                                          ; $218E: $CB $14
    sla l                                         ; $2190: $CB $25
    rl h                                          ; $2192: $CB $14
    add hl, de                                    ; $2194: $19
    push hl                                       ; $2195: $E5
    pop de                                        ; $2196: $D1
    ld hl, $0027                                  ; $2197: $21 $27 $00
    call Call_000_21C8                            ; $219A: $CD $C8 $21
    ld hl, $0029                                  ; $219D: $21 $29 $00
    call Call_000_21C8                            ; $21A0: $CD $C8 $21
    ld hl, $002B                                  ; $21A3: $21 $2B $00
    call Call_000_21C8                            ; $21A6: $CD $C8 $21
    ld hl, $002C                                  ; $21A9: $21 $2C $00
    call Call_000_21D0                            ; $21AC: $CD $D0 $21
    ld hl, $0076                                  ; $21AF: $21 $76 $00
    call Call_000_21C8                            ; $21B2: $CD $C8 $21
    ld hl, $0078                                  ; $21B5: $21 $78 $00
    call Call_000_21C8                            ; $21B8: $CD $C8 $21
    ld hl, $007A                                  ; $21BB: $21 $7A $00
    call Call_000_21C8                            ; $21BE: $CD $C8 $21
    ld hl, $007C                                  ; $21C1: $21 $7C $00
    call Call_000_21C8                            ; $21C4: $CD $C8 $21
    ret                                           ; $21C7: $C9


Call_000_21C8:
    add hl, bc                                    ; $21C8: $09
    ld a, [de]                                    ; $21C9: $1A
    inc de                                        ; $21CA: $13
    ld [hl-], a                                   ; $21CB: $32
    ld a, [de]                                    ; $21CC: $1A
    inc de                                        ; $21CD: $13
    ld [hl], a                                    ; $21CE: $77
    ret                                           ; $21CF: $C9


Call_000_21D0:
    add hl, bc                                    ; $21D0: $09
    ld a, [de]                                    ; $21D1: $1A

Jump_000_21D2:
    inc de                                        ; $21D2: $13
    ld [hl], a                                    ; $21D3: $77
    inc de                                        ; $21D4: $13
    ret                                           ; $21D5: $C9


    nop                                           ; $21D6: $00
    ld b, b                                       ; $21D7: $40
    ld [de], a                                    ; $21D8: $12
    ld l, l                                       ; $21D9: $6D
    nop                                           ; $21DA: $00
    ld b, b                                       ; $21DB: $40
    inc h                                         ; $21DC: $24
    nop                                           ; $21DD: $00
    ld [hl], b                                    ; $21DE: $70
    ld bc, $FF00                                  ; $21DF: $01 $00 $FF
    nop                                           ; $21E2: $00
    ld sp, hl                                     ; $21E3: $F9
    ld h, b                                       ; $21E4: $60
    nop                                           ; $21E5: $00
    ld h, $56                                     ; $21E6: $26 $56
    ld c, h                                       ; $21E8: $4C
    ld l, a                                       ; $21E9: $6F
    ld h, c                                       ; $21EA: $61
    ld d, c                                       ; $21EB: $51
    inc h                                         ; $21EC: $24
    nop                                           ; $21ED: $00
    ld [hl], b                                    ; $21EE: $70
    ld bc, $FF00                                  ; $21EF: $01 $00 $FF
    nop                                           ; $21F2: $00
    ld sp, hl                                     ; $21F3: $F9
    ld h, b                                       ; $21F4: $60
    nop                                           ; $21F5: $00
    ld l, [hl]                                    ; $21F6: $6E
    ld b, h                                       ; $21F7: $44
    add h                                         ; $21F8: $84
    ld l, l                                       ; $21F9: $6D
    nop                                           ; $21FA: $00
    ld b, b                                       ; $21FB: $40
    dec h                                         ; $21FC: $25
    nop                                           ; $21FD: $00
    add b                                         ; $21FE: $80
    ld bc, $FF00                                  ; $21FF: $01 $00 $FF

Jump_000_2202:
    nop                                           ; $2202: $00
    ld sp, hl                                     ; $2203: $F9
    ld h, b                                       ; $2204: $60
    nop                                           ; $2205: $00
    sub h                                         ; $2206: $94
    ld e, d                                       ; $2207: $5A
    cp [hl]                                       ; $2208: $BE
    ld l, a                                       ; $2209: $6F
    ld c, l                                       ; $220A: $4D
    ld d, c                                       ; $220B: $51
    dec h                                         ; $220C: $25
    nop                                           ; $220D: $00
    ld [hl], b                                    ; $220E: $70
    ld bc, $FF00                                  ; $220F: $01 $00 $FF
    nop                                           ; $2212: $00
    ld sp, hl                                     ; $2213: $F9
    ld h, b                                       ; $2214: $60
    nop                                           ; $2215: $00
    call c, $F648                                 ; $2216: $DC $48 $F6
    ld l, l                                       ; $2219: $6D
    nop                                           ; $221A: $00
    ld b, b                                       ; $221B: $40
    ld h, $00                                     ; $221C: $26 $00
    add b                                         ; $221E: $80
    ld bc, $FF00                                  ; $221F: $01 $00 $FF
    nop                                           ; $2222: $00
    ld sp, hl                                     ; $2223: $F9
    ld h, b                                       ; $2224: $60
    nop                                           ; $2225: $00
    ld [bc], a                                    ; $2226: $02
    ld e, a                                       ; $2227: $5F
    jr nc, jr_000_229A                            ; $2228: $30 $70

    jp z, $2653                                   ; $222A: $CA $53 $26

    nop                                           ; $222D: $00
    add b                                         ; $222E: $80
    ld bc, $FF00                                  ; $222F: $01 $00 $FF
    nop                                           ; $2232: $00
    ld sp, hl                                     ; $2233: $F9
    ld h, b                                       ; $2234: $60
    nop                                           ; $2235: $00
    ld c, d                                       ; $2236: $4A
    ld c, l                                       ; $2237: $4D
    ld l, b                                       ; $2238: $68
    ld l, [hl]                                    ; $2239: $6E
    nop                                           ; $223A: $00
    ld b, b                                       ; $223B: $40
    daa                                           ; $223C: $27

Jump_000_223D:
    nop                                           ; $223D: $00
    add b                                         ; $223E: $80
    ld bc, $FF00                                  ; $223F: $01 $00 $FF
    nop                                           ; $2242: $00
    ld sp, hl                                     ; $2243: $F9
    ld h, b                                       ; $2244: $60
    nop                                           ; $2245: $00
    ld [hl], b                                    ; $2246: $70
    ld h, e                                       ; $2247: $63
    and d                                         ; $2248: $A2
    ld [hl], b                                    ; $2249: $70
    and $50                                       ; $224A: $E6 $50
    daa                                           ; $224C: $27
    nop                                           ; $224D: $00
    ld [hl], b                                    ; $224E: $70
    ld bc, $FF00                                  ; $224F: $01 $00 $FF
    nop                                           ; $2252: $00
    ld sp, hl                                     ; $2253: $F9
    ld h, b                                       ; $2254: $60
    nop                                           ; $2255: $00
    cp b                                          ; $2256: $B8
    ld d, c                                       ; $2257: $51
    jp c, $006E                                   ; $2258: $DA $6E $00

    ld b, b                                       ; $225B: $40
    jr z, jr_000_225E                             ; $225C: $28 $00

jr_000_225E:
    add b                                         ; $225E: $80
    ld bc, $FF00                                  ; $225F: $01 $00 $FF
    nop                                           ; $2262: $00
    ld sp, hl                                     ; $2263: $F9
    ld h, b                                       ; $2264: $60
    nop                                           ; $2265: $00
    sbc $67                                       ; $2266: $DE $67
    inc d                                         ; $2268: $14
    ld [hl], c                                    ; $2269: $71
    sbc h                                         ; $226A: $9C
    ld c, [hl]                                    ; $226B: $4E
    jr z, jr_000_226E                             ; $226C: $28 $00

jr_000_226E:
    sub b                                         ; $226E: $90
    ld bc, $FEE0                                  ; $226F: $01 $E0 $FE
    nop                                           ; $2272: $00
    ld sp, hl                                     ; $2273: $F9
    ld h, b                                       ; $2274: $60
    nop                                           ; $2275: $00
    scf                                           ; $2276: $37
    ld b, d                                       ; $2277: $42
    ld c, e                                       ; $2278: $4B
    ld l, l                                       ; $2279: $6D
    sbc e                                         ; $227A: $9B
    ld c, d                                       ; $227B: $4A
    inc h                                         ; $227C: $24
    nop                                           ; $227D: $00
    ld b, b                                       ; $227E: $40
    ld bc, $FF70                                  ; $227F: $01 $70 $FF
    nop                                           ; $2282: $00
    ld sp, hl                                     ; $2283: $F9
    ld h, b                                       ; $2284: $60
    nop                                           ; $2285: $00
    ld e, l                                       ; $2286: $5D
    ld e, b                                       ; $2287: $58
    add l                                         ; $2288: $85
    ld l, a                                       ; $2289: $6F
    and l                                         ; $228A: $A5
    ld e, h                                       ; $228B: $5C
    inc h                                         ; $228C: $24
    nop                                           ; $228D: $00
    nop                                           ; $228E: $00
    ld bc, $FF00                                  ; $228F: $01 $00 $FF
    nop                                           ; $2292: $00
    ld sp, hl                                     ; $2293: $F9
    ld h, b                                       ; $2294: $60
    nop                                           ; $2295: $00
    and l                                         ; $2296: $A5
    ld b, [hl]                                    ; $2297: $46
    cp l                                          ; $2298: $BD
    ld l, l                                       ; $2299: $6D

jr_000_229A:
    ld l, h                                       ; $229A: $6C
    ld c, c                                       ; $229B: $49
    dec h                                         ; $229C: $25
    nop                                           ; $229D: $00
    jr nz, jr_000_22A1                            ; $229E: $20 $01

    nop                                           ; $22A0: $00

jr_000_22A1:
    rst RST_38                                    ; $22A1: $FF
    nop                                           ; $22A2: $00
    ld sp, hl                                     ; $22A3: $F9
    ld h, b                                       ; $22A4: $60
    nop                                           ; $22A5: $00
    bit 3, h                                      ; $22A6: $CB $5C
    rst RST_30                                    ; $22A8: $F7
    ld l, a                                       ; $22A9: $6F
    ld h, d                                       ; $22AA: $62
    ld e, h                                       ; $22AB: $5C
    dec h                                         ; $22AC: $25
    nop                                           ; $22AD: $00
    nop                                           ; $22AE: $00
    ld bc, $FF00                                  ; $22AF: $01 $00 $FF
    nop                                           ; $22B2: $00
    ld sp, hl                                     ; $22B3: $F9
    ld h, b                                       ; $22B4: $60
    nop                                           ; $22B5: $00
    inc de                                        ; $22B6: $13
    ld c, e                                       ; $22B7: $4B
    cpl                                           ; $22B8: $2F
    ld l, [hl]                                    ; $22B9: $6E
    db $FC                                        ; $22BA: $FC
    ld c, e                                       ; $22BB: $4B
    ld h, $00                                     ; $22BC: $26 $00
    add b                                         ; $22BE: $80
    ld bc, $FF00                                  ; $22BF: $01 $00 $FF
    nop                                           ; $22C2: $00
    ld sp, hl                                     ; $22C3: $F9
    ld h, b                                       ; $22C4: $60
    nop                                           ; $22C5: $00
    add hl, sp                                    ; $22C6: $39
    ld h, c                                       ; $22C7: $61
    ld l, c                                       ; $22C8: $69
    ld [hl], b                                    ; $22C9: $70
    dec b                                         ; $22CA: $05
    ld e, h                                       ; $22CB: $5C
    ld h, $00                                     ; $22CC: $26 $00
    ld b, b                                       ; $22CE: $40
    ld bc, $FF00                                  ; $22CF: $01 $00 $FF
    nop                                           ; $22D2: $00
    ld sp, hl                                     ; $22D3: $F9
    ld h, b                                       ; $22D4: $60
    nop                                           ; $22D5: $00
    add c                                         ; $22D6: $81
    ld c, a                                       ; $22D7: $4F
    and c                                         ; $22D8: $A1
    ld l, [hl]                                    ; $22D9: $6E
    dec d                                         ; $22DA: $15
    ld c, d                                       ; $22DB: $4A
    daa                                           ; $22DC: $27
    nop                                           ; $22DD: $00
    ld h, b                                       ; $22DE: $60
    ld bc, $FF00                                  ; $22DF: $01 $00 $FF
    nop                                           ; $22E2: $00
    ld sp, hl                                     ; $22E3: $F9
    ld h, b                                       ; $22E4: $60
    nop                                           ; $22E5: $00
    and a                                         ; $22E6: $A7
    ld h, l                                       ; $22E7: $65
    db $DB                                        ; $22E8: $DB

Jump_000_22E9:
    ld [hl], b                                    ; $22E9: $70
    ld e, e                                       ; $22EA: $5B
    ld e, c                                       ; $22EB: $59
    daa                                           ; $22EC: $27
    nop                                           ; $22ED: $00
    ld d, b                                       ; $22EE: $50
    ld bc, $FF00                                  ; $22EF: $01 $00 $FF
    nop                                           ; $22F2: $00
    ld sp, hl                                     ; $22F3: $F9
    ld h, b                                       ; $22F4: $60
    nop                                           ; $22F5: $00
    rst RST_28                                    ; $22F6: $EF
    ld d, e                                       ; $22F7: $53
    inc de                                        ; $22F8: $13
    ld l, a                                       ; $22F9: $6F
    ld e, $47                                     ; $22FA: $1E $47
    jr z, jr_000_22FE                             ; $22FC: $28 $00

jr_000_22FE:
    ld [hl], b                                    ; $22FE: $70
    ld bc, $FF00                                  ; $22FF: $01 $00 $FF
    nop                                           ; $2302: $00
    ld sp, hl                                     ; $2303: $F9
    ld h, b                                       ; $2304: $60
    nop                                           ; $2305: $00
    dec d                                         ; $2306: $15
    ld l, d                                       ; $2307: $6A
    ld c, l                                       ; $2308: $4D
    ld [hl], c                                    ; $2309: $71
    ld l, $59                                     ; $230A: $2E $59
    jr z, jr_000_230E                             ; $230C: $28 $00

jr_000_230E:
    sub b                                         ; $230E: $90
    ld bc, $FED0                                  ; $230F: $01 $D0 $FE
    nop                                           ; $2312: $00
    ld sp, hl                                     ; $2313: $F9
    ld h, b                                       ; $2314: $60
    nop                                           ; $2315: $00

Call_000_2316:
    ld a, [$C2C6]                                 ; $2316: $FA $C6 $C2
    and $F0                                       ; $2319: $E6 $F0
    cp $20                                        ; $231B: $FE $20
    jr z, jr_000_2384                             ; $231D: $28 $65

    call Call_000_0417                            ; $231F: $CD $17 $04
    ldh a, [$FFE0]                                ; $2322: $F0 $E0
    push af                                       ; $2324: $F5
    ld a, $01                                     ; $2325: $3E $01
    ldh [$FFE0], a                                ; $2327: $E0 $E0
    ld [$2000], a                                 ; $2329: $EA $00 $20
    ld a, [$D92E]                                 ; $232C: $FA $2E $D9
    ld de, $8800                                  ; $232F: $11 $00 $88
    ld hl, $CF00                                  ; $2332: $21 $00 $CF
    call Call_000_2385                            ; $2335: $CD $85 $23
    ld a, [$DA2E]                                 ; $2338: $FA $2E $DA
    ld de, $8A60                                  ; $233B: $11 $60 $8A
    ld hl, $D140                                  ; $233E: $21 $40 $D1
    call Call_000_2385                            ; $2341: $CD $85 $23
    ld a, $02                                     ; $2344: $3E $02
    ldh [$FFE0], a                                ; $2346: $E0 $E0
    ld [$2000], a                                 ; $2348: $EA $00 $20
    ld hl, $D700                                  ; $234B: $21 $00 $D7
    ld de, $7307                                  ; $234E: $11 $07 $73
    call Call_000_0F8E                            ; $2351: $CD $8E $0F
    ld hl, $D740                                  ; $2354: $21 $40 $D7
    ld de, $7307                                  ; $2357: $11 $07 $73
    call Call_000_0F8E                            ; $235A: $CD $8E $0F
    ld hl, $D74E                                  ; $235D: $21 $4E $D7
    ld [hl], $A6                                  ; $2360: $36 $A6
    ld hl, $D780                                  ; $2362: $21 $80 $D7
    ld de, $7307                                  ; $2365: $11 $07 $73
    call Call_000_0F8E                            ; $2368: $CD $8E $0F
    ld hl, $D78E                                  ; $236B: $21 $8E $D7
    ld [hl], $CC                                  ; $236E: $36 $CC
    ld hl, $D7C0                                  ; $2370: $21 $C0 $D7
    ld de, $7307                                  ; $2373: $11 $07 $73
    call Call_000_0F8E                            ; $2376: $CD $8E $0F
    ld hl, $D7CE                                  ; $2379: $21 $CE $D7
    ld [hl], $CC                                  ; $237C: $36 $CC
    pop af                                        ; $237E: $F1
    ldh [$FFE0], a                                ; $237F: $E0 $E0
    ld [$2000], a                                 ; $2381: $EA $00 $20

jr_000_2384:
    ret                                           ; $2384: $C9


Call_000_2385:
    push hl                                       ; $2385: $E5
    ld hl, $0000                                  ; $2386: $21 $00 $00
    ld b, $02                                     ; $2389: $06 $02
    call Call_000_1163                            ; $238B: $CD $63 $11
    call Call_000_248D                            ; $238E: $CD $8D $24
    call Call_000_0417                            ; $2391: $CD $17 $04
    pop hl                                        ; $2394: $E1
    ld b, $0C                                     ; $2395: $06 $0C

jr_000_2397:
    push bc                                       ; $2397: $C5
    ld b, $03                                     ; $2398: $06 $03
    call Call_000_11C2                            ; $239A: $CD $C2 $11
    call Call_000_248D                            ; $239D: $CD $8D $24
    call Call_000_0417                            ; $23A0: $CD $17 $04
    pop bc                                        ; $23A3: $C1
    dec b                                         ; $23A4: $05
    jr nz, jr_000_2397                            ; $23A5: $20 $F0

    ret                                           ; $23A7: $C9


Call_000_23A8:
    srl a                                         ; $23A8: $CB $3F

Jump_000_23AA:
    push af                                       ; $23AA: $F5
    ld b, $08                                     ; $23AB: $06 $08

Jump_000_23AD:
    di                                            ; $23AD: $F3

jr_000_23AE:
    ldh a, [rSTAT]                                ; $23AE: $F0 $41
    bit 1, a                                      ; $23B0: $CB $4F
    jr nz, jr_000_23AE                            ; $23B2: $20 $FA

    ld a, [hl+]                                   ; $23B4: $2A
    ld [de], a                                    ; $23B5: $12
    ei                                            ; $23B6: $FB
    inc de                                        ; $23B7: $13
    di                                            ; $23B8: $F3

jr_000_23B9:
    ldh a, [rSTAT]                                ; $23B9: $F0 $41
    bit 1, a                                      ; $23BB: $CB $4F
    jr nz, jr_000_23B9                            ; $23BD: $20 $FA

    ld a, [hl+]                                   ; $23BF: $2A
    ld [de], a                                    ; $23C0: $12
    ei                                            ; $23C1: $FB
    inc de                                        ; $23C2: $13
    di                                            ; $23C3: $F3

jr_000_23C4:
    ldh a, [rSTAT]                                ; $23C4: $F0 $41
    bit 1, a                                      ; $23C6: $CB $4F
    jr nz, jr_000_23C4                            ; $23C8: $20 $FA

    ld a, [hl+]                                   ; $23CA: $2A
    ld [de], a                                    ; $23CB: $12
    ei                                            ; $23CC: $FB
    inc de                                        ; $23CD: $13
    di                                            ; $23CE: $F3

jr_000_23CF:
    ldh a, [rSTAT]                                ; $23CF: $F0 $41
    bit 1, a                                      ; $23D1: $CB $4F
    jr nz, jr_000_23CF                            ; $23D3: $20 $FA

    ld a, [hl+]                                   ; $23D5: $2A
    ld [de], a                                    ; $23D6: $12
    ei                                            ; $23D7: $FB
    inc de                                        ; $23D8: $13
    dec b                                         ; $23D9: $05
    jp nz, Jump_000_23AD                          ; $23DA: $C2 $AD $23

    call Call_000_248D                            ; $23DD: $CD $8D $24
    call Call_000_0417                            ; $23E0: $CD $17 $04
    pop af                                        ; $23E3: $F1
    dec a                                         ; $23E4: $3D
    jp nz, Jump_000_23AA                          ; $23E5: $C2 $AA $23

    ret                                           ; $23E8: $C9


Call_000_23E9:
    ld a, [$C2C6]                                 ; $23E9: $FA $C6 $C2
    and $F0                                       ; $23EC: $E6 $F0
    cp $20                                        ; $23EE: $FE $20
    jr z, jr_000_2414                             ; $23F0: $28 $22

    ldh a, [$FFE0]                                ; $23F2: $F0 $E0
    push af                                       ; $23F4: $F5
    ld a, $01                                     ; $23F5: $3E $01
    ldh [$FFE0], a                                ; $23F7: $E0 $E0
    ld [$2000], a                                 ; $23F9: $EA $00 $20
    ld a, [$D92E]                                 ; $23FC: $FA $2E $D9

Call_000_23FF:
    ld de, $CF00                                  ; $23FF: $11 $00 $CF

Jump_000_2402:
    call Call_000_2415                            ; $2402: $CD $15 $24
    ld a, [$DA2E]                                 ; $2405: $FA $2E $DA
    ld de, $D140                                  ; $2408: $11 $40 $D1
    call Call_000_2415                            ; $240B: $CD $15 $24
    pop af                                        ; $240E: $F1
    ldh [$FFE0], a                                ; $240F: $E0 $E0
    ld [$2000], a                                 ; $2411: $EA $00 $20

jr_000_2414:
    ret                                           ; $2414: $C9


Call_000_2415:
    ld b, $00                                     ; $2415: $06 $00
    ld c, a                                       ; $2417: $4F
    srl a                                         ; $2418: $CB $3F
    add c                                         ; $241A: $81
    ld c, a                                       ; $241B: $4F
    ld hl, $246F                                  ; $241C: $21 $6F $24
    add hl, bc                                    ; $241F: $09
    ld a, [hl+]                                   ; $2420: $2A
    or a                                          ; $2421: $B7
    jp z, Jump_000_245E                           ; $2422: $CA $5E $24

    ld c, [hl]                                    ; $2425: $4E
    inc hl                                        ; $2426: $23
    ld b, [hl]                                    ; $2427: $46
    push bc                                       ; $2428: $C5
    pop hl                                        ; $2429: $E1
    push de                                       ; $242A: $D5
    push hl                                       ; $242B: $E5
    cp $03                                        ; $242C: $FE $03
    jr z, jr_000_243E                             ; $242E: $28 $0E

    cp $02                                        ; $2430: $FE $02
    jr z, jr_000_2439                             ; $2432: $28 $05

    ld hl, $657C                                  ; $2434: $21 $7C $65

Jump_000_2437:
    jr jr_000_2441                                ; $2437: $18 $08

jr_000_2439:
    ld hl, $6CC0                                  ; $2439: $21 $C0 $6C
    jr jr_000_2441                                ; $243C: $18 $03

jr_000_243E:
    ld hl, $734C                                  ; $243E: $21 $4C $73

jr_000_2441:
    ld de, $C329                                  ; $2441: $11 $29 $C3

Call_000_2444:
    call Call_000_124C                            ; $2444: $CD $4C $12
    pop hl                                        ; $2447: $E1
    pop de                                        ; $2448: $D1
    ld a, [hl+]                                   ; $2449: $2A

Jump_000_244A:
    push af                                       ; $244A: $F5
    ld c, [hl]                                    ; $244B: $4E
    inc hl                                        ; $244C: $23

Call_000_244D:
    ld b, [hl]                                    ; $244D: $46
    inc hl                                        ; $244E: $23
    ld a, [hl+]                                   ; $244F: $2A
    push hl                                       ; $2450: $E5
    ld hl, $C329                                  ; $2451: $21 $29 $C3
    add hl, bc                                    ; $2454: $09
    call Call_000_245F                            ; $2455: $CD $5F $24
    pop hl                                        ; $2458: $E1
    pop af                                        ; $2459: $F1
    dec a                                         ; $245A: $3D
    jp nz, Jump_000_244A                          ; $245B: $C2 $4A $24

Jump_000_245E:
    ret                                           ; $245E: $C9


Call_000_245F:
jr_000_245F:
    push af                                       ; $245F: $F5
    ld a, $10                                     ; $2460: $3E $10

jr_000_2462:
    push af                                       ; $2462: $F5
    ld a, [hl+]                                   ; $2463: $2A
    ld [de], a                                    ; $2464: $12
    inc de                                        ; $2465: $13
    pop af                                        ; $2466: $F1
    dec a                                         ; $2467: $3D

Call_000_2468:
    jr nz, jr_000_2462                            ; $2468: $20 $F8

    pop af                                        ; $246A: $F1
    dec a                                         ; $246B: $3D
    jr nz, jr_000_245F                            ; $246C: $20 $F1

    ret                                           ; $246E: $C9


    ld bc, $734C                                  ; $246F: $01 $4C $73
    ld [bc], a                                    ; $2472: $02
    ld h, b                                       ; $2473: $60
    ld [hl], e                                    ; $2474: $73
    ld bc, $7350                                  ; $2475: $01 $50 $73
    ld [bc], a                                    ; $2478: $02
    ld h, h                                       ; $2479: $64
    ld [hl], e                                    ; $247A: $73
    ld bc, $7354                                  ; $247B: $01 $54 $73
    ld [bc], a                                    ; $247E: $02
    ld l, b                                       ; $247F: $68
    ld [hl], e                                    ; $2480: $73
    ld bc, $7358                                  ; $2481: $01 $58 $73
    ld [bc], a                                    ; $2484: $02
    ld l, h                                       ; $2485: $6C
    ld [hl], e                                    ; $2486: $73

Call_000_2487:
    ld bc, $735C                                  ; $2487: $01 $5C $73
    ld [bc], a                                    ; $248A: $02
    ld [hl], b                                    ; $248B: $70
    ld [hl], e                                    ; $248C: $73

Call_000_248D:
    push af                                       ; $248D: $F5
    push bc                                       ; $248E: $C5
    push de                                       ; $248F: $D5
    push hl                                       ; $2490: $E5
    ldh a, [$FFE0]                                ; $2491: $F0 $E0
    push af                                       ; $2493: $F5
    ld a, $01                                     ; $2494: $3E $01
    ldh [$FFE0], a                                ; $2496: $E0 $E0
    ld [$2000], a                                 ; $2498: $EA $00 $20
    call $4093                                    ; $249B: $CD $93 $40
    call $5EA0                                    ; $249E: $CD $A0 $5E
    call $42A9                                    ; $24A1: $CD $A9 $42
    call $47B7                                    ; $24A4: $CD $B7 $47
    call $6491                                    ; $24A7: $CD $91 $64
    call $584A                                    ; $24AA: $CD $4A $58
    call Call_000_2AC3                            ; $24AD: $CD $C3 $2A
    pop af                                        ; $24B0: $F1
    ldh [$FFE0], a                                ; $24B1: $E0 $E0
    ld [$2000], a                                 ; $24B3: $EA $00 $20
    pop hl                                        ; $24B6: $E1
    pop de                                        ; $24B7: $D1
    pop bc                                        ; $24B8: $C1
    pop af                                        ; $24B9: $F1
    ret                                           ; $24BA: $C9


Call_000_24BB:
    ldh a, [$FFE0]                                ; $24BB: $F0 $E0
    push af                                       ; $24BD: $F5
    ld a, $01                                     ; $24BE: $3E $01
    ldh [$FFE0], a                                ; $24C0: $E0 $E0
    ld [$2000], a                                 ; $24C2: $EA $00 $20
    call $6317                                    ; $24C5: $CD $17 $63
    pop af                                        ; $24C8: $F1
    ldh [$FFE0], a                                ; $24C9: $E0 $E0
    ld [$2000], a                                 ; $24CB: $EA $00 $20
    ret                                           ; $24CE: $C9


    add b                                         ; $24CF: $80
    nop                                           ; $24D0: $00
    jr nz, @+$22                                  ; $24D1: $20 $20

    ld e, b                                       ; $24D3: $58
    nop                                           ; $24D4: $00
    adc b                                         ; $24D5: $88
    nop                                           ; $24D6: $00
    nop                                           ; $24D7: $00
    nop                                           ; $24D8: $00
    nop                                           ; $24D9: $00
    nop                                           ; $24DA: $00

Call_000_24DB:
Jump_000_24DB:
    nop                                           ; $24DB: $00
    nop                                           ; $24DC: $00
    nop                                           ; $24DD: $00
    nop                                           ; $24DE: $00
    add b                                         ; $24DF: $80
    rlca                                          ; $24E0: $07
    cp [hl]                                       ; $24E1: $BE
    ld b, b                                       ; $24E2: $40
    nop                                           ; $24E3: $00
    rlca                                          ; $24E4: $07
    cp [hl]                                       ; $24E5: $BE
    ld b, b                                       ; $24E6: $40
    nop                                           ; $24E7: $00
    nop                                           ; $24E8: $00
    nop                                           ; $24E9: $00
    nop                                           ; $24EA: $00
    ld b, $06                                     ; $24EB: $06 $06
    ret nz                                        ; $24ED: $C0

    ret c                                         ; $24EE: $D8

    add b                                         ; $24EF: $80
    nop                                           ; $24F0: $00
    ld de, $A811                                  ; $24F1: $11 $11 $A8
    nop                                           ; $24F4: $00
    adc b                                         ; $24F5: $88
    nop                                           ; $24F6: $00
    nop                                           ; $24F7: $00
    nop                                           ; $24F8: $00
    nop                                           ; $24F9: $00
    nop                                           ; $24FA: $00
    nop                                           ; $24FB: $00
    nop                                           ; $24FC: $00
    ld b, b                                       ; $24FD: $40
    nop                                           ; $24FE: $00
    add h                                         ; $24FF: $84
    rlca                                          ; $2500: $07
    cp [hl]                                       ; $2501: $BE
    ld b, b                                       ; $2502: $40
    nop                                           ; $2503: $00

Jump_000_2504:
    rlca                                          ; $2504: $07
    cp [hl]                                       ; $2505: $BE
    ld b, b                                       ; $2506: $40
    nop                                           ; $2507: $00
    nop                                           ; $2508: $00
    nop                                           ; $2509: $00

Jump_000_250A:
    nop                                           ; $250A: $00
    ld b, $06                                     ; $250B: $06 $06
    ldh [$FFD8], a                                ; $250D: $E0 $D8
    ld sp, $DE00                                  ; $250F: $31 $00 $DE
    ei                                            ; $2512: $FB
    ld bc, $D900                                  ; $2513: $01 $00 $D9
    ld de, $D680                                  ; $2516: $11 $80 $D6
    jr jr_000_2525                                ; $2519: $18 $0A

    ld sp, $DF00                                  ; $251B: $31 $00 $DF
    ei                                            ; $251E: $FB
    ld bc, $DA00                                  ; $251F: $01 $00 $DA
    ld de, $D6C0                                  ; $2522: $11 $C0 $D6

jr_000_2525:
    ld a, $02                                     ; $2525: $3E $02
    ldh [$FFE0], a                                ; $2527: $E0 $E0
    ld [$2000], a                                 ; $2529: $EA $00 $20

Jump_000_252C:
    push bc                                       ; $252C: $C5
    push de                                       ; $252D: $D5
    call Call_000_2539                            ; $252E: $CD $39 $25
    pop de                                        ; $2531: $D1
    pop bc                                        ; $2532: $C1
    call Call_000_0417                            ; $2533: $CD $17 $04
    jp Jump_000_252C                              ; $2536: $C3 $2C $25


Call_000_2539:
    call Call_000_2C45                            ; $2539: $CD $45 $2C
    call Call_000_3748                            ; $253C: $CD $48 $37
    jp c, Jump_000_254E                           ; $253F: $DA $4E $25

    call Call_000_2E39                            ; $2542: $CD $39 $2E
    jp c, Jump_000_254B                           ; $2545: $DA $4B $25

    call Call_000_39AB                            ; $2548: $CD $AB $39

Jump_000_254B:
    call Call_000_39BF                            ; $254B: $CD $BF $39

Jump_000_254E:
    push de                                       ; $254E: $D5
    ld a, $03                                     ; $254F: $3E $03
    ldh [$FFE0], a                                ; $2551: $E0 $E0
    ld [$2000], a                                 ; $2553: $EA $00 $20
    ld hl, $0028                                  ; $2556: $21 $28 $00
    add hl, bc                                    ; $2559: $09
    ld d, [hl]                                    ; $255A: $56
    inc hl                                        ; $255B: $23
    ld e, [hl]                                    ; $255C: $5E
    push de                                       ; $255D: $D5
    ld hl, $003C                                  ; $255E: $21 $3C $00
    add hl, bc                                    ; $2561: $09
    ld a, [hl]                                    ; $2562: $7E
    cp $52                                        ; $2563: $FE $52
    jp nc, Jump_000_2585                          ; $2565: $D2 $85 $25

    cp $2C                                        ; $2568: $FE $2C
    jp nc, Jump_000_258F                          ; $256A: $D2 $8F $25

    ld hl, $002F                                  ; $256D: $21 $2F $00
    add hl, bc                                    ; $2570: $09
    bit 1, [hl]                                   ; $2571: $CB $4E
    jr nz, jr_000_257D                            ; $2573: $20 $08

    pop de                                        ; $2575: $D1
    ld de, $6C4C                                  ; $2576: $11 $4C $6C
    push de                                       ; $2579: $D5
    jp Jump_000_2594                              ; $257A: $C3 $94 $25


jr_000_257D:
    pop de                                        ; $257D: $D1
    ld de, $6C8E                                  ; $257E: $11 $8E $6C
    push de                                       ; $2581: $D5
    jp Jump_000_2594                              ; $2582: $C3 $94 $25


Jump_000_2585:
    pop de                                        ; $2585: $D1
    ld de, $6CD0                                  ; $2586: $11 $D0 $6C
    push de                                       ; $2589: $D5
    sub $52                                       ; $258A: $D6 $52
    jp Jump_000_2594                              ; $258C: $C3 $94 $25


Jump_000_258F:
    sub $2C                                       ; $258F: $D6 $2C
    jp Jump_000_2594                              ; $2591: $C3 $94 $25


Jump_000_2594:
    ld h, $00                                     ; $2594: $26 $00
    ld l, a                                       ; $2596: $6F
    srl a                                         ; $2597: $CB $3F
    add l                                         ; $2599: $85
    ld l, a                                       ; $259A: $6F
    pop de                                        ; $259B: $D1
    add hl, de                                    ; $259C: $19
    ld e, [hl]                                    ; $259D: $5E
    inc hl                                        ; $259E: $23
    ld d, [hl]                                    ; $259F: $56
    inc hl                                        ; $25A0: $23
    ld a, [hl]                                    ; $25A1: $7E
    ldh [$FFE0], a                                ; $25A2: $E0 $E0
    ld [$2000], a                                 ; $25A4: $EA $00 $20
    push de                                       ; $25A7: $D5
    pop hl                                        ; $25A8: $E1
    pop de                                        ; $25A9: $D1
    jp hl                                         ; $25AA: $E9


Call_000_25AB:
    ld a, [hl+]                                   ; $25AB: $2A
    and $80                                       ; $25AC: $E6 $80
    push af                                       ; $25AE: $F5
    ld a, [hl]                                    ; $25AF: $7E
    and $80                                       ; $25B0: $E6 $80
    push af                                       ; $25B2: $F5
    push hl                                       ; $25B3: $E5
    dec hl                                        ; $25B4: $2B
    ldh a, [$FFE0]                                ; $25B5: $F0 $E0
    push af                                       ; $25B7: $F5
    ld a, $3F                                     ; $25B8: $3E $3F
    ldh [$FFE0], a                                ; $25BA: $E0 $E0
    ld [$2000], a                                 ; $25BC: $EA $00 $20
    call $4CB0                                    ; $25BF: $CD $B0 $4C
    pop af                                        ; $25C2: $F1
    ldh [$FFE0], a                                ; $25C3: $E0 $E0
    ld [$2000], a                                 ; $25C5: $EA $00 $20
    pop hl                                        ; $25C8: $E1
    pop af                                        ; $25C9: $F1
    or [hl]                                       ; $25CA: $B6
    ld [hl], a                                    ; $25CB: $77
    dec hl                                        ; $25CC: $2B
    pop af                                        ; $25CD: $F1
    or [hl]                                       ; $25CE: $B6
    ld [hl], a                                    ; $25CF: $77
    ret                                           ; $25D0: $C9


Call_000_25D1:
    ld hl, $002D                                  ; $25D1: $21 $2D $00
    add hl, bc                                    ; $25D4: $09
    ld a, [hl]                                    ; $25D5: $7E
    push de                                       ; $25D6: $D5
    pop bc                                        ; $25D7: $C1
    ld hl, $0080                                  ; $25D8: $21 $80 $00
    add hl, bc                                    ; $25DB: $09
    push hl                                       ; $25DC: $E5
    pop de                                        ; $25DD: $D1
    jp Jump_000_25FE                              ; $25DE: $C3 $FE $25


Call_000_25E1:
    ld hl, $002D                                  ; $25E1: $21 $2D $00
    add hl, bc                                    ; $25E4: $09
    ld a, [hl]                                    ; $25E5: $7E
    push de                                       ; $25E6: $D5
    pop bc                                        ; $25E7: $C1
    ld hl, $0100                                  ; $25E8: $21 $00 $01
    add hl, bc                                    ; $25EB: $09
    push hl                                       ; $25EC: $E5
    pop de                                        ; $25ED: $D1
    jp Jump_000_25FE                              ; $25EE: $C3 $FE $25


Call_000_25F1:
    ld hl, $002D                                  ; $25F1: $21 $2D $00
    add hl, bc                                    ; $25F4: $09
    ld a, [hl]                                    ; $25F5: $7E
    push de                                       ; $25F6: $D5
    pop bc                                        ; $25F7: $C1
    ld hl, $0180                                  ; $25F8: $21 $80 $01
    add hl, bc                                    ; $25FB: $09
    push hl                                       ; $25FC: $E5
    pop de                                        ; $25FD: $D1

Jump_000_25FE:
    ld [hl], $80                                  ; $25FE: $36 $80
    or a                                          ; $2600: $B7
    jp nz, Jump_000_260D                          ; $2601: $C2 $0D $26

    ld hl, $000E                                  ; $2604: $21 $0E $00
    add hl, de                                    ; $2607: $19
    ld [hl], $80                                  ; $2608: $36 $80
    jp Jump_000_2613                              ; $260A: $C3 $13 $26


Jump_000_260D:
    ld hl, $000E                                  ; $260D: $21 $0E $00
    add hl, de                                    ; $2610: $19
    ld [hl], $A6                                  ; $2611: $36 $A6

Jump_000_2613:
    ret                                           ; $2613: $C9


Call_000_2614:
    push bc                                       ; $2614: $C5
    ld hl, $0004                                  ; $2615: $21 $04 $00
    add hl, bc                                    ; $2618: $09
    push hl                                       ; $2619: $E5
    pop bc                                        ; $261A: $C1
    ld hl, $0004                                  ; $261B: $21 $04 $00
    add hl, de                                    ; $261E: $19
    ld a, [bc]                                    ; $261F: $0A
    inc bc                                        ; $2620: $03
    ld [hl+], a                                   ; $2621: $22
    ld a, [bc]                                    ; $2622: $0A
    inc bc                                        ; $2623: $03
    ld [hl+], a                                   ; $2624: $22
    ld a, [bc]                                    ; $2625: $0A
    inc bc                                        ; $2626: $03
    ld [hl+], a                                   ; $2627: $22
    ld a, [bc]                                    ; $2628: $0A
    inc bc                                        ; $2629: $03
    ld [hl+], a                                   ; $262A: $22
    pop bc                                        ; $262B: $C1
    ld hl, $0002                                  ; $262C: $21 $02 $00
    add hl, bc                                    ; $262F: $09
    ld a, [hl]                                    ; $2630: $7E
    ld hl, $0002                                  ; $2631: $21 $02 $00
    add hl, de                                    ; $2634: $19
    ld [hl], a                                    ; $2635: $77
    ret                                           ; $2636: $C9


Call_000_2637:
    ld a, $88                                     ; $2637: $3E $88
    ld hl, $0006                                  ; $2639: $21 $06 $00
    add hl, de                                    ; $263C: $19
    ld [hl+], a                                   ; $263D: $22
    xor a                                         ; $263E: $AF
    ld [hl+], a                                   ; $263F: $22
    ret                                           ; $2640: $C9


Call_000_2641:
    ld a, $88                                     ; $2641: $3E $88
    ld hl, $0006                                  ; $2643: $21 $06 $00
    add hl, de                                    ; $2646: $19
    cp [hl]                                       ; $2647: $BE
    ret                                           ; $2648: $C9


    ld a, $88                                     ; $2649: $3E $88
    ld hl, $009A                                  ; $264B: $21 $9A $00
    add hl, bc                                    ; $264E: $09
    cp [hl]                                       ; $264F: $BE
    ret                                           ; $2650: $C9


    push de                                       ; $2651: $D5
    ld hl, $0002                                  ; $2652: $21 $02 $00
    add hl, de                                    ; $2655: $19
    ld a, [hl]                                    ; $2656: $7E
    and $20                                       ; $2657: $E6 $20
    ld d, a                                       ; $2659: $57
    ld hl, $002D                                  ; $265A: $21 $2D $00
    add hl, bc                                    ; $265D: $09
    ld a, [hl]                                    ; $265E: $7E
    or a                                          ; $265F: $B7
    jp nz, Jump_000_2669                          ; $2660: $C2 $69 $26

    ld hl, $D6C2                                  ; $2663: $21 $C2 $D6
    jp Jump_000_266C                              ; $2666: $C3 $6C $26


Jump_000_2669:
    ld hl, $D682                                  ; $2669: $21 $82 $D6

Jump_000_266C:
    ld a, [hl]                                    ; $266C: $7E
    and $DF                                       ; $266D: $E6 $DF
    or d                                          ; $266F: $B2
    ld [hl], a                                    ; $2670: $77
    pop de                                        ; $2671: $D1
    ret                                           ; $2672: $C9


Call_000_2673:
    push bc                                       ; $2673: $C5
    push de                                       ; $2674: $D5
    ld hl, $0022                                  ; $2675: $21 $22 $00
    add hl, bc                                    ; $2678: $09
    set 0, [hl]                                   ; $2679: $CB $C6
    ld hl, $003C                                  ; $267B: $21 $3C $00
    add hl, bc                                    ; $267E: $09
    ld [hl], a                                    ; $267F: $77
    ld hl, $0058                                  ; $2680: $21 $58 $00
    add hl, bc                                    ; $2683: $09
    ld [hl], $00                                  ; $2684: $36 $00
    ld hl, $0026                                  ; $2686: $21 $26 $00
    add hl, bc                                    ; $2689: $09
    push hl                                       ; $268A: $E5
    ld hl, $0045                                  ; $268B: $21 $45 $00
    add hl, bc                                    ; $268E: $09
    push hl                                       ; $268F: $E5
    pop bc                                        ; $2690: $C1
    ld hl, $0011                                  ; $2691: $21 $11 $00
    add hl, de                                    ; $2694: $19
    push hl                                       ; $2695: $E5
    pop de                                        ; $2696: $D1
    pop hl                                        ; $2697: $E1
    push de                                       ; $2698: $D5
    push af                                       ; $2699: $F5
    ld a, $03                                     ; $269A: $3E $03
    ld [$2000], a                                 ; $269C: $EA $00 $20
    pop af                                        ; $269F: $F1
    ld d, [hl]                                    ; $26A0: $56
    inc hl                                        ; $26A1: $23
    ld e, [hl]                                    ; $26A2: $5E
    ld h, $00                                     ; $26A3: $26 $00
    ld l, a                                       ; $26A5: $6F
    add hl, hl                                    ; $26A6: $29
    add hl, hl                                    ; $26A7: $29
    srl a                                         ; $26A8: $CB $3F
    add l                                         ; $26AA: $85
    jr nc, jr_000_26AE                            ; $26AB: $30 $01

    inc h                                         ; $26AD: $24

jr_000_26AE:
    ld l, a                                       ; $26AE: $6F
    add hl, de                                    ; $26AF: $19
    pop de                                        ; $26B0: $D1
    ld a, [hl+]                                   ; $26B1: $2A
    ld [de], a                                    ; $26B2: $12
    inc de                                        ; $26B3: $13
    ld a, [hl+]                                   ; $26B4: $2A
    ld [de], a                                    ; $26B5: $12
    inc de                                        ; $26B6: $13
    ld a, [hl+]                                   ; $26B7: $2A
    ld [de], a                                    ; $26B8: $12
    inc de                                        ; $26B9: $13
    ld a, [hl+]                                   ; $26BA: $2A
    ld [bc], a                                    ; $26BB: $02
    inc bc                                        ; $26BC: $03
    xor a                                         ; $26BD: $AF
    ld [de], a                                    ; $26BE: $12
    inc de                                        ; $26BF: $13
    push hl                                       ; $26C0: $E5
    ld hl, $0007                                  ; $26C1: $21 $07 $00
    add hl, de                                    ; $26C4: $19
    push hl                                       ; $26C5: $E5
    pop de                                        ; $26C6: $D1
    pop hl                                        ; $26C7: $E1
    ld a, [hl+]                                   ; $26C8: $2A
    ld [de], a                                    ; $26C9: $12
    inc de                                        ; $26CA: $13
    ld [de], a                                    ; $26CB: $12
    xor a                                         ; $26CC: $AF
    ld [bc], a                                    ; $26CD: $02
    inc bc                                        ; $26CE: $03
    ld [bc], a                                    ; $26CF: $02
    inc bc                                        ; $26D0: $03
    ld [bc], a                                    ; $26D1: $02
    inc bc                                        ; $26D2: $03
    ld [bc], a                                    ; $26D3: $02
    inc bc                                        ; $26D4: $03
    ld [bc], a                                    ; $26D5: $02
    inc bc                                        ; $26D6: $03
    ld [bc], a                                    ; $26D7: $02
    inc bc                                        ; $26D8: $03
    ld a, [hl+]                                   ; $26D9: $2A
    ld [bc], a                                    ; $26DA: $02
    inc bc                                        ; $26DB: $03
    ld a, [hl+]                                   ; $26DC: $2A
    ld [bc], a                                    ; $26DD: $02
    inc bc                                        ; $26DE: $03
    ld a, [hl+]                                   ; $26DF: $2A
    ld [bc], a                                    ; $26E0: $02
    inc bc                                        ; $26E1: $03
    ld a, [hl]                                    ; $26E2: $7E
    ld [bc], a                                    ; $26E3: $02
    inc bc                                        ; $26E4: $03
    ld a, [hl]                                    ; $26E5: $7E
    ld [bc], a                                    ; $26E6: $02
    inc bc                                        ; $26E7: $03
    ld a, [hl]                                    ; $26E8: $7E
    ld [bc], a                                    ; $26E9: $02
    inc bc                                        ; $26EA: $03
    ldh a, [$FFE0]                                ; $26EB: $F0 $E0
    ld [$2000], a                                 ; $26ED: $EA $00 $20
    pop de                                        ; $26F0: $D1
    pop bc                                        ; $26F1: $C1
    ret                                           ; $26F2: $C9


Call_000_26F3:
    push bc                                       ; $26F3: $C5
    push hl                                       ; $26F4: $E5
    pop bc                                        ; $26F5: $C1
    ld hl, $000C                                  ; $26F6: $21 $0C $00
    add hl, de                                    ; $26F9: $19
    ld a, [hl]                                    ; $26FA: $7E
    cp $11                                        ; $26FB: $FE $11
    jp c, Jump_000_272E                           ; $26FD: $DA $2E $27

    cp $9F                                        ; $2700: $FE $9F
    jp nc, Jump_000_272E                          ; $2702: $D2 $2E $27

    ld hl, $0028                                  ; $2705: $21 $28 $00
    add hl, de                                    ; $2708: $19
    ld a, [hl]                                    ; $2709: $7E
    cp $01                                        ; $270A: $FE $01
    jp z, Jump_000_271D                           ; $270C: $CA $1D $27

    cp $02                                        ; $270F: $FE $02
    jp z, Jump_000_2738                           ; $2711: $CA $38 $27

Jump_000_2714:
    push bc                                       ; $2714: $C5
    pop hl                                        ; $2715: $E1
    call Call_000_3078                            ; $2716: $CD $78 $30

Jump_000_2719:
    xor a                                         ; $2719: $AF
    jp Jump_000_27BA                              ; $271A: $C3 $BA $27


Jump_000_271D:
    ld hl, $0029                                  ; $271D: $21 $29 $00
    add hl, de                                    ; $2720: $19
    ld a, [hl]                                    ; $2721: $7E
    cp $01                                        ; $2722: $FE $01

Call_000_2724:
    jp nc, Jump_000_2714                          ; $2724: $D2 $14 $27

    ld a, $01                                     ; $2727: $3E $01
    or a                                          ; $2729: $B7
    scf                                           ; $272A: $37
    jp Jump_000_27BA                              ; $272B: $C3 $BA $27


Jump_000_272E:
    push bc                                       ; $272E: $C5
    pop hl                                        ; $272F: $E1
    call Call_000_3078                            ; $2730: $CD $78 $30
    xor a                                         ; $2733: $AF
    scf                                           ; $2734: $37
    jp Jump_000_27BA                              ; $2735: $C3 $BA $27


Jump_000_2738:
    ld hl, $0029                                  ; $2738: $21 $29 $00
    add hl, de                                    ; $273B: $19
    ld a, [hl]                                    ; $273C: $7E

Jump_000_273D:
    cp $01                                        ; $273D: $FE $01
    jp nc, Jump_000_2714                          ; $273F: $D2 $14 $27

    ld a, e                                       ; $2742: $7B
    cp $00                                        ; $2743: $FE $00
    jp z, Jump_000_275A                           ; $2745: $CA $5A $27

    cp $40                                        ; $2748: $FE $40
    jp z, Jump_000_278A                           ; $274A: $CA $8A $27

    cp $80                                        ; $274D: $FE $80
    jp z, Jump_000_2772                           ; $274F: $CA $72 $27

    cp $C0                                        ; $2752: $FE $C0
    jp z, Jump_000_27A2                           ; $2754: $CA $A2 $27

    jp Jump_000_2719                              ; $2757: $C3 $19 $27


Jump_000_275A:
    ld hl, $D740                                  ; $275A: $21 $40 $D7
    bit 7, [hl]                                   ; $275D: $CB $7E
    jp nz, Jump_000_2719                          ; $275F: $C2 $19 $27

    call Call_000_27BC                            ; $2762: $CD $BC $27
    ld hl, $D700                                  ; $2765: $21 $00 $D7
    res 7, [hl]                                   ; $2768: $CB $BE
    ld hl, $D71A                                  ; $276A: $21 $1A $D7
    ld [hl], $00                                  ; $276D: $36 $00
    jp Jump_000_2719                              ; $276F: $C3 $19 $27


Jump_000_2772:
    ld hl, $D7C0                                  ; $2772: $21 $C0 $D7
    bit 7, [hl]                                   ; $2775: $CB $7E
    jp nz, Jump_000_2719                          ; $2777: $C2 $19 $27

    call Call_000_27BC                            ; $277A: $CD $BC $27
    ld hl, $D780                                  ; $277D: $21 $80 $D7
    res 7, [hl]                                   ; $2780: $CB $BE
    ld hl, $D79A                                  ; $2782: $21 $9A $D7
    ld [hl], $00                                  ; $2785: $36 $00
    jp Jump_000_2719                              ; $2787: $C3 $19 $27


Jump_000_278A:
    ld hl, $D700                                  ; $278A: $21 $00 $D7
    bit 7, [hl]                                   ; $278D: $CB $7E
    jp nz, Jump_000_2719                          ; $278F: $C2 $19 $27

    call Call_000_27BC                            ; $2792: $CD $BC $27
    ld hl, $D740                                  ; $2795: $21 $40 $D7
    res 7, [hl]                                   ; $2798: $CB $BE
    ld hl, $D75A                                  ; $279A: $21 $5A $D7
    ld [hl], $00                                  ; $279D: $36 $00
    jp Jump_000_2719                              ; $279F: $C3 $19 $27


Jump_000_27A2:
    ld hl, $D780                                  ; $27A2: $21 $80 $D7
    bit 7, [hl]                                   ; $27A5: $CB $7E
    jp nz, Jump_000_2719                          ; $27A7: $C2 $19 $27

    call Call_000_27BC                            ; $27AA: $CD $BC $27
    ld hl, $D7C0                                  ; $27AD: $21 $C0 $D7
    res 7, [hl]                                   ; $27B0: $CB $BE
    ld hl, $D7DA                                  ; $27B2: $21 $DA $D7
    ld [hl], $00                                  ; $27B5: $36 $00
    jp Jump_000_2719                              ; $27B7: $C3 $19 $27


Jump_000_27BA:
    pop bc                                        ; $27BA: $C1
    ret                                           ; $27BB: $C9


Call_000_27BC:
    push bc                                       ; $27BC: $C5
    push de                                       ; $27BD: $D5
    push hl                                       ; $27BE: $E5
    ld b, $40                                     ; $27BF: $06 $40

Jump_000_27C1:
    ld a, [de]                                    ; $27C1: $1A
    ld [hl+], a                                   ; $27C2: $22
    inc de                                        ; $27C3: $13

Call_000_27C4:
    dec b                                         ; $27C4: $05
    jp nz, Jump_000_27C1                          ; $27C5: $C2 $C1 $27

    pop bc                                        ; $27C8: $C1
    ld hl, $0028                                  ; $27C9: $21 $28 $00
    add hl, bc                                    ; $27CC: $09
    ld [hl], $00                                  ; $27CD: $36 $00
    ld hl, $0002                                  ; $27CF: $21 $02 $00
    add hl, bc                                    ; $27D2: $09
    ld a, [hl]                                    ; $27D3: $7E
    xor $30                                       ; $27D4: $EE $30
    ld [hl], a                                    ; $27D6: $77
    push de                                       ; $27D7: $D5

Jump_000_27D8:
    ld hl, $0008                                  ; $27D8: $21 $08 $00
    add hl, bc                                    ; $27DB: $09
    ld d, [hl]                                    ; $27DC: $56
    inc hl                                        ; $27DD: $23
    ld e, [hl]                                    ; $27DE: $5E
    ld a, d                                       ; $27DF: $7A
    cpl                                           ; $27E0: $2F
    ld d, a                                       ; $27E1: $57
    ld a, e                                       ; $27E2: $7B
    cpl                                           ; $27E3: $2F
    ld e, a                                       ; $27E4: $5F
    inc e                                         ; $27E5: $1C
    jr nz, jr_000_27E9                            ; $27E6: $20 $01

    inc d                                         ; $27E8: $14

jr_000_27E9:
    ld [hl], e                                    ; $27E9: $73
    dec hl                                        ; $27EA: $2B
    ld [hl], d                                    ; $27EB: $72
    pop de                                        ; $27EC: $D1
    ld a, $0F                                     ; $27ED: $3E $0F
    call Call_000_1360                            ; $27EF: $CD $60 $13
    pop de                                        ; $27F2: $D1
    pop bc                                        ; $27F3: $C1
    ret                                           ; $27F4: $C9


Call_000_27F5:
    xor a                                         ; $27F5: $AF
    ld hl, $0000                                  ; $27F6: $21 $00 $00
    add hl, de                                    ; $27F9: $19
    ld [hl], a                                    ; $27FA: $77
    ret                                           ; $27FB: $C9


    call Call_000_2EE0                            ; $27FC: $CD $E0 $2E
    call Call_000_2C5C                            ; $27FF: $CD $5C $2C
    call Call_000_3517                            ; $2802: $CD $17 $35
    jp c, Jump_000_2A5E                           ; $2805: $DA $5E $2A

    ld hl, $0018                                  ; $2808: $21 $18 $00
    add hl, de                                    ; $280B: $19
    ld a, [hl]                                    ; $280C: $7E
    cp $00                                        ; $280D: $FE $00
    jp z, Jump_000_28A8                           ; $280F: $CA $A8 $28

    cp $1C                                        ; $2812: $FE $1C
    jp z, Jump_000_2A50                           ; $2814: $CA $50 $2A

    call Call_000_2641                            ; $2817: $CD $41 $26
    jp z, Jump_000_2848                           ; $281A: $CA $48 $28

    ld hl, $0053                                  ; $281D: $21 $53 $00
    add hl, bc                                    ; $2820: $09
    bit 6, [hl]                                   ; $2821: $CB $76
    jp nz, Jump_000_2894                          ; $2823: $C2 $94 $28

    bit 4, [hl]                                   ; $2826: $CB $66
    jp nz, Jump_000_2881                          ; $2828: $C2 $81 $28

    bit 5, [hl]                                   ; $282B: $CB $6E
    jp nz, Jump_000_286E                          ; $282D: $C2 $6E $28

    ld hl, $0058                                  ; $2830: $21 $58 $00
    add hl, bc                                    ; $2833: $09

Jump_000_2834:
    bit 4, [hl]                                   ; $2834: $CB $66
    jp nz, Jump_000_2881                          ; $2836: $C2 $81 $28

    bit 5, [hl]                                   ; $2839: $CB $6E
    jp nz, Jump_000_286E                          ; $283B: $C2 $6E $28

    bit 6, [hl]                                   ; $283E: $CB $76
    jp nz, Jump_000_2881                          ; $2840: $C2 $81 $28

    bit 7, [hl]                                   ; $2843: $CB $7E
    jp nz, Jump_000_286E                          ; $2845: $C2 $6E $28

Jump_000_2848:
    ld hl, $0018                                  ; $2848: $21 $18 $00
    add hl, de                                    ; $284B: $19

Jump_000_284C:
    ld a, [hl]                                    ; $284C: $7E
    cp $04                                        ; $284D: $FE $04
    jp z, Jump_000_2936                           ; $284F: $CA $36 $29

    cp $08                                        ; $2852: $FE $08
    jp z, Jump_000_2A03                           ; $2854: $CA $03 $2A

    cp $0C                                        ; $2857: $FE $0C
    jp z, Jump_000_2A0D                           ; $2859: $CA $0D $2A

    cp $10                                        ; $285C: $FE $10
    jp z, Jump_000_2A17                           ; $285E: $CA $17 $2A

    cp $14                                        ; $2861: $FE $14
    jp z, Jump_000_2A21                           ; $2863: $CA $21 $2A

    cp $18                                        ; $2866: $FE $18
    jp z, Jump_000_2A2B                           ; $2868: $CA $2B $2A

    jp Jump_000_2A34                              ; $286B: $C3 $34 $2A


Jump_000_286E:
    ld a, $08                                     ; $286E: $3E $08
    call Call_000_1360                            ; $2870: $CD $60 $13
    ld a, $38                                     ; $2873: $3E $38
    call Call_000_2EA3                            ; $2875: $CD $A3 $2E
    ld hl, $0021                                  ; $2878: $21 $21 $00
    add hl, bc                                    ; $287B: $09
    res 3, [hl]                                   ; $287C: $CB $9E
    jp Jump_000_2A34                              ; $287E: $C3 $34 $2A


Jump_000_2881:
    ld a, $09                                     ; $2881: $3E $09
    call Call_000_1360                            ; $2883: $CD $60 $13
    ld a, $3A                                     ; $2886: $3E $3A
    call Call_000_2EA3                            ; $2888: $CD $A3 $2E
    ld hl, $0021                                  ; $288B: $21 $21 $00
    add hl, bc                                    ; $288E: $09
    res 3, [hl]                                   ; $288F: $CB $9E
    jp Jump_000_2A34                              ; $2891: $C3 $34 $2A


Jump_000_2894:
    ld hl, $009C                                  ; $2894: $21 $9C $00
    add hl, bc                                    ; $2897: $09
    ld [hl], $00                                  ; $2898: $36 $00
    ld a, $26                                     ; $289A: $3E $26
    call Call_000_2E6E                            ; $289C: $CD $6E $2E
    ld hl, $0021                                  ; $289F: $21 $21 $00
    add hl, bc                                    ; $28A2: $09
    res 3, [hl]                                   ; $28A3: $CB $9E
    jp Jump_000_2A5E                              ; $28A5: $C3 $5E $2A


Jump_000_28A8:
    call Call_000_2CA9                            ; $28A8: $CD $A9 $2C
    jp nc, Jump_000_2A5B                          ; $28AB: $D2 $5B $2A

    inc hl                                        ; $28AE: $23
    ld [hl], $FF                                  ; $28AF: $36 $FF
    ld hl, $003F                                  ; $28B1: $21 $3F $00
    add hl, bc                                    ; $28B4: $09
    ld a, [hl]                                    ; $28B5: $7E
    cp $0C                                        ; $28B6: $FE $0C
    jp nz, Jump_000_28BE                          ; $28B8: $C2 $BE $28

    jp Jump_000_28F4                              ; $28BB: $C3 $F4 $28


Jump_000_28BE:
    ld hl, $0056                                  ; $28BE: $21 $56 $00
    add hl, bc                                    ; $28C1: $09
    ld a, [hl]                                    ; $28C2: $7E
    ld hl, $0054                                  ; $28C3: $21 $54 $00
    add hl, bc                                    ; $28C6: $09
    or [hl]                                       ; $28C7: $B6
    ld hl, $009D                                  ; $28C8: $21 $9D $00
    add hl, bc                                    ; $28CB: $09
    ld [hl], a                                    ; $28CC: $77
    bit 1, a                                      ; $28CD: $CB $4F
    jr nz, jr_000_28D9                            ; $28CF: $20 $08

    bit 0, a                                      ; $28D1: $CB $47
    jr nz, jr_000_28E8                            ; $28D3: $20 $13

    ld a, $0A                                     ; $28D5: $3E $0A
    jr jr_000_28F4                                ; $28D7: $18 $1B

jr_000_28D9:
    ld a, $0E                                     ; $28D9: $3E $0E
    ld hl, $0002                                  ; $28DB: $21 $02 $00
    add hl, de                                    ; $28DE: $19
    bit 5, [hl]                                   ; $28DF: $CB $6E
    jr nz, jr_000_28F4                            ; $28E1: $20 $11

    ld a, $0C                                     ; $28E3: $3E $0C
    jp Jump_000_28F4                              ; $28E5: $C3 $F4 $28


jr_000_28E8:
    ld a, $0C                                     ; $28E8: $3E $0C
    ld hl, $0002                                  ; $28EA: $21 $02 $00
    add hl, de                                    ; $28ED: $19
    bit 5, [hl]                                   ; $28EE: $CB $6E
    jr nz, jr_000_28F4                            ; $28F0: $20 $02

    ld a, $0E                                     ; $28F2: $3E $0E

Call_000_28F4:
Jump_000_28F4:
jr_000_28F4:
    ld hl, $003C                                  ; $28F4: $21 $3C $00
    add hl, bc                                    ; $28F7: $09
    ld [hl], a                                    ; $28F8: $77
    push de                                       ; $28F9: $D5
    ld hl, $0012                                  ; $28FA: $21 $12 $00
    add hl, de                                    ; $28FD: $19
    push hl                                       ; $28FE: $E5
    pop de                                        ; $28FF: $D1
    push de                                       ; $2900: $D5
    push af                                       ; $2901: $F5

Jump_000_2902:
    ld a, $03                                     ; $2902: $3E $03
    ld [$2000], a                                 ; $2904: $EA $00 $20
    pop af                                        ; $2907: $F1
    ld hl, $0026                                  ; $2908: $21 $26 $00
    add hl, bc                                    ; $290B: $09
    ld d, [hl]                                    ; $290C: $56
    inc hl                                        ; $290D: $23
    ld e, [hl]                                    ; $290E: $5E
    ld h, $00                                     ; $290F: $26 $00
    ld l, a                                       ; $2911: $6F
    add hl, hl                                    ; $2912: $29
    add hl, hl                                    ; $2913: $29
    srl a                                         ; $2914: $CB $3F
    add l                                         ; $2916: $85
    jr nc, jr_000_291A                            ; $2917: $30 $01

    inc h                                         ; $2919: $24

jr_000_291A:
    ld l, a                                       ; $291A: $6F
    add hl, de                                    ; $291B: $19
    pop de                                        ; $291C: $D1
    inc hl                                        ; $291D: $23
    ld a, [hl+]                                   ; $291E: $2A
    ld [de], a                                    ; $291F: $12
    inc de                                        ; $2920: $13
    inc de                                        ; $2921: $13
    inc de                                        ; $2922: $13
    inc de                                        ; $2923: $13
    dec de                                        ; $2924: $1B
    dec de                                        ; $2925: $1B
    dec de                                        ; $2926: $1B
    ld a, [hl+]                                   ; $2927: $2A
    ld [de], a                                    ; $2928: $12
    inc de                                        ; $2929: $13
    inc de                                        ; $292A: $13
    inc de                                        ; $292B: $13
    inc de                                        ; $292C: $13
    ldh a, [$FFE0]                                ; $292D: $F0 $E0
    ld [$2000], a                                 ; $292F: $EA $00 $20
    pop de                                        ; $2932: $D1
    jp Jump_000_2A5B                              ; $2933: $C3 $5B $2A


Jump_000_2936:
    ld hl, $0000                                  ; $2936: $21 $00 $00
    add hl, de                                    ; $2939: $19
    bit 3, [hl]                                   ; $293A: $CB $5E
    jp z, Jump_000_29F9                           ; $293C: $CA $F9 $29

    ld hl, $0020                                  ; $293F: $21 $20 $00
    add hl, bc                                    ; $2942: $09
    set 2, [hl]                                   ; $2943: $CB $D6
    ld hl, $003F                                  ; $2945: $21 $3F $00
    add hl, bc                                    ; $2948: $09
    ld a, [hl]                                    ; $2949: $7E
    cp $0C                                        ; $294A: $FE $0C
    jp nz, Jump_000_2963                          ; $294C: $C2 $63 $29

    ld a, $B6                                     ; $294F: $3E $B6
    call Call_000_1360                            ; $2951: $CD $60 $13
    ld hl, $F800                                  ; $2954: $21 $00 $F8
    call Call_000_305D                            ; $2957: $CD $5D $30
    ld hl, $0200                                  ; $295A: $21 $00 $02
    call Call_000_2FEB                            ; $295D: $CD $EB $2F
    jp Jump_000_2A34                              ; $2960: $C3 $34 $2A


Jump_000_2963:
    ld hl, $0054                                  ; $2963: $21 $54 $00
    add hl, bc                                    ; $2966: $09
    ld a, [hl]                                    ; $2967: $7E
    ld hl, $0079                                  ; $2968: $21 $79 $00
    call Call_000_2A5F                            ; $296B: $CD $5F $2A
    bit 2, a                                      ; $296E: $CB $57
    jr nz, jr_000_297F                            ; $2970: $20 $0D

    sra h                                         ; $2972: $CB $2C
    rr l                                          ; $2974: $CB $1D
    push de                                       ; $2976: $D5
    push hl                                       ; $2977: $E5
    pop de                                        ; $2978: $D1
    sra d                                         ; $2979: $CB $2A
    rr e                                          ; $297B: $CB $1B
    add hl, de                                    ; $297D: $19
    pop de                                        ; $297E: $D1

jr_000_297F:
    call Call_000_305D                            ; $297F: $CD $5D $30
    ld hl, $009D                                  ; $2982: $21 $9D $00
    add hl, bc                                    ; $2985: $09
    bit 1, [hl]                                   ; $2986: $CB $4E
    jr nz, jr_000_2991                            ; $2988: $20 $07

    bit 0, [hl]                                   ; $298A: $CB $46
    jr nz, jr_000_29CA                            ; $298C: $20 $3C

    jp Jump_000_2A34                              ; $298E: $C3 $34 $2A


jr_000_2991:
    ld hl, $009C                                  ; $2991: $21 $9C $00
    add hl, bc                                    ; $2994: $09
    ld a, [hl]                                    ; $2995: $7E
    or a                                          ; $2996: $B7
    jp nz, Jump_000_29AB                          ; $2997: $C2 $AB $29

    ld hl, $3BB6                                  ; $299A: $21 $B6 $3B
    call Call_000_2B78                            ; $299D: $CD $78 $2B
    jp c, Jump_000_29AB                           ; $29A0: $DA $AB $29

    ld hl, $0075                                  ; $29A3: $21 $75 $00
    call Call_000_2A5F                            ; $29A6: $CD $5F $2A
    jr jr_000_29BA                                ; $29A9: $18 $0F

Jump_000_29AB:
    ld a, $B6                                     ; $29AB: $3E $B6
    call Call_000_1360                            ; $29AD: $CD $60 $13
    ld hl, $0075                                  ; $29B0: $21 $75 $00
    call Call_000_2A5F                            ; $29B3: $CD $5F $2A
    sla l                                         ; $29B6: $CB $25
    rl h                                          ; $29B8: $CB $14

jr_000_29BA:
    ld a, h                                       ; $29BA: $7C
    cpl                                           ; $29BB: $2F
    ld h, a                                       ; $29BC: $67
    ld a, l                                       ; $29BD: $7D
    cpl                                           ; $29BE: $2F
    ld l, a                                       ; $29BF: $6F
    inc l                                         ; $29C0: $2C
    jr nz, jr_000_29C4                            ; $29C1: $20 $01

    inc h                                         ; $29C3: $24

jr_000_29C4:
    call Call_000_3051                            ; $29C4: $CD $51 $30
    jp Jump_000_2A34                              ; $29C7: $C3 $34 $2A


jr_000_29CA:
    ld hl, $009C                                  ; $29CA: $21 $9C $00
    add hl, bc                                    ; $29CD: $09
    ld a, [hl]                                    ; $29CE: $7E
    or a                                          ; $29CF: $B7
    jp nz, Jump_000_29E4                          ; $29D0: $C2 $E4 $29

    ld hl, $3BB6                                  ; $29D3: $21 $B6 $3B
    call Call_000_2B78                            ; $29D6: $CD $78 $2B
    jp c, Jump_000_29E4                           ; $29D9: $DA $E4 $29

    ld hl, $0075                                  ; $29DC: $21 $75 $00
    call Call_000_2A5F                            ; $29DF: $CD $5F $2A
    jr jr_000_29F3                                ; $29E2: $18 $0F

Jump_000_29E4:
    ld a, $B6                                     ; $29E4: $3E $B6
    call Call_000_1360                            ; $29E6: $CD $60 $13
    ld hl, $0075                                  ; $29E9: $21 $75 $00
    call Call_000_2A5F                            ; $29EC: $CD $5F $2A
    sla l                                         ; $29EF: $CB $25
    rl h                                          ; $29F1: $CB $14

jr_000_29F3:
    call Call_000_3051                            ; $29F3: $CD $51 $30
    jp Jump_000_2A34                              ; $29F6: $C3 $34 $2A


Jump_000_29F9:
    ld a, $F9                                     ; $29F9: $3E $F9
    ld h, $FF                                     ; $29FB: $26 $FF
    call Call_000_2D33                            ; $29FD: $CD $33 $2D
    jp Jump_000_2A2E                              ; $2A00: $C3 $2E $2A


Jump_000_2A03:
    ld a, $FB                                     ; $2A03: $3E $FB
    ld h, $FF                                     ; $2A05: $26 $FF
    call Call_000_2D33                            ; $2A07: $CD $33 $2D
    jp Jump_000_2A2E                              ; $2A0A: $C3 $2E $2A


Jump_000_2A0D:
    ld a, $FD                                     ; $2A0D: $3E $FD
    ld h, $FF                                     ; $2A0F: $26 $FF
    call Call_000_2D33                            ; $2A11: $CD $33 $2D
    jp Jump_000_2A2E                              ; $2A14: $C3 $2E $2A


Jump_000_2A17:
    ld a, $FF                                     ; $2A17: $3E $FF
    ld h, $FF                                     ; $2A19: $26 $FF
    call Call_000_2D33                            ; $2A1B: $CD $33 $2D
    jp Jump_000_2A2E                              ; $2A1E: $C3 $2E $2A


Jump_000_2A21:
    ld a, $01                                     ; $2A21: $3E $01
    ld h, $FF                                     ; $2A23: $26 $FF
    call Call_000_2D33                            ; $2A25: $CD $33 $2D
    jp Jump_000_2A2E                              ; $2A28: $C3 $2E $2A


Jump_000_2A2B:
    jp Jump_000_2A2E                              ; $2A2B: $C3 $2E $2A


Jump_000_2A2E:
    call Call_000_2A68                            ; $2A2E: $CD $68 $2A
    jp c, Jump_000_2A5E                           ; $2A31: $DA $5E $2A

Jump_000_2A34:
    ld hl, $007B                                  ; $2A34: $21 $7B $00
    call Call_000_2A5F                            ; $2A37: $CD $5F $2A
    call Call_000_30FF                            ; $2A3A: $CD $FF $30
    jp nc, Jump_000_2A5B                          ; $2A3D: $D2 $5B $2A

    ld hl, $0021                                  ; $2A40: $21 $21 $00
    add hl, bc                                    ; $2A43: $09
    res 2, [hl]                                   ; $2A44: $CB $96
    ld a, $1C                                     ; $2A46: $3E $1C
    ld h, $00                                     ; $2A48: $26 $00
    call Call_000_2CBA                            ; $2A4A: $CD $BA $2C
    jp Jump_000_2A5E                              ; $2A4D: $C3 $5E $2A


Jump_000_2A50:
    call Call_000_2CA9                            ; $2A50: $CD $A9 $2C
    jp nc, Jump_000_2A5B                          ; $2A53: $D2 $5B $2A

    call Call_000_2DB6                            ; $2A56: $CD $B6 $2D
    jr jr_000_2A5E                                ; $2A59: $18 $03

Jump_000_2A5B:
    jp Jump_000_2E25                              ; $2A5B: $C3 $25 $2E


Jump_000_2A5E:
jr_000_2A5E:
    ret                                           ; $2A5E: $C9


Call_000_2A5F:
    push de                                       ; $2A5F: $D5
    add hl, bc                                    ; $2A60: $09
    ld d, [hl]                                    ; $2A61: $56
    inc hl                                        ; $2A62: $23
    ld e, [hl]                                    ; $2A63: $5E
    push de                                       ; $2A64: $D5
    pop hl                                        ; $2A65: $E1
    pop de                                        ; $2A66: $D1
    ret                                           ; $2A67: $C9


Call_000_2A68:
    ld hl, $002F                                  ; $2A68: $21 $2F $00
    add hl, bc                                    ; $2A6B: $09
    ld a, [hl]                                    ; $2A6C: $7E
    cp $01                                        ; $2A6D: $FE $01
    jr nz, jr_000_2AA7                            ; $2A6F: $20 $36

    ld hl, $0020                                  ; $2A71: $21 $20 $00
    add hl, de                                    ; $2A74: $19
    ld a, [hl]                                    ; $2A75: $7E
    or a                                          ; $2A76: $B7
    jp z, Jump_000_2AA7                           ; $2A77: $CA $A7 $2A

    bit 7, a                                      ; $2A7A: $CB $7F
    jp nz, Jump_000_2A93                          ; $2A7C: $C2 $93 $2A

    ld hl, $0054                                  ; $2A7F: $21 $54 $00
    add hl, bc                                    ; $2A82: $09
    bit 0, [hl]                                   ; $2A83: $CB $46
    jp z, Jump_000_2AA7                           ; $2A85: $CA $A7 $2A

    ld hl, $0056                                  ; $2A88: $21 $56 $00
    add hl, bc                                    ; $2A8B: $09
    set 0, [hl]                                   ; $2A8C: $CB $C6
    res 1, [hl]                                   ; $2A8E: $CB $8E
    jp Jump_000_2AAA                              ; $2A90: $C3 $AA $2A


Jump_000_2A93:
    ld hl, $0054                                  ; $2A93: $21 $54 $00
    add hl, bc                                    ; $2A96: $09
    bit 1, [hl]                                   ; $2A97: $CB $4E
    jp z, Jump_000_2AA7                           ; $2A99: $CA $A7 $2A

    ld hl, $0056                                  ; $2A9C: $21 $56 $00
    add hl, bc                                    ; $2A9F: $09
    set 1, [hl]                                   ; $2AA0: $CB $CE
    res 0, [hl]                                   ; $2AA2: $CB $86
    jp Jump_000_2AAA                              ; $2AA4: $C3 $AA $2A


Jump_000_2AA7:
jr_000_2AA7:
    scf                                           ; $2AA7: $37
    ccf                                           ; $2AA8: $3F
    ret                                           ; $2AA9: $C9


Jump_000_2AAA:
    ld hl, $0001                                  ; $2AAA: $21 $01 $00
    add hl, de                                    ; $2AAD: $19
    bit 3, [hl]                                   ; $2AAE: $CB $5E
    jp z, Jump_000_2AB9                           ; $2AB0: $CA $B9 $2A

    inc hl                                        ; $2AB3: $23
    set 5, [hl]                                   ; $2AB4: $CB $EE
    jp Jump_000_2ABC                              ; $2AB6: $C3 $BC $2A


Jump_000_2AB9:
    inc hl                                        ; $2AB9: $23
    res 5, [hl]                                   ; $2ABA: $CB $AE

Jump_000_2ABC:
    ld a, $0A                                     ; $2ABC: $3E $0A
    call Call_000_2E6E                            ; $2ABE: $CD $6E $2E
    scf                                           ; $2AC1: $37
    ret                                           ; $2AC2: $C9


Call_000_2AC3:
    ldh a, [$FFE0]                                ; $2AC3: $F0 $E0
    push af                                       ; $2AC5: $F5
    ld bc, $D900                                  ; $2AC6: $01 $00 $D9
    ld de, $D700                                  ; $2AC9: $11 $00 $D7
    ld a, $06                                     ; $2ACC: $3E $06

jr_000_2ACE:
    push af                                       ; $2ACE: $F5
    ld a, [de]                                    ; $2ACF: $1A

Call_000_2AD0:
    and $80                                       ; $2AD0: $E6 $80
    jp z, Jump_000_2AE7                           ; $2AD2: $CA $E7 $2A

    xor a                                         ; $2AD5: $AF
    ld hl, $0022                                  ; $2AD6: $21 $22 $00
    add hl, de                                    ; $2AD9: $19
    push bc                                       ; $2ADA: $C5
    ld c, [hl]                                    ; $2ADB: $4E
    inc hl                                        ; $2ADC: $23
    ld b, [hl]                                    ; $2ADD: $46
    push bc                                       ; $2ADE: $C5
    pop hl                                        ; $2ADF: $E1
    pop bc                                        ; $2AE0: $C1
    or l                                          ; $2AE1: $B5
    jr nz, jr_000_2AFE                            ; $2AE2: $20 $1A

    or h                                          ; $2AE4: $B4
    jr nz, jr_000_2AFE                            ; $2AE5: $20 $17

Jump_000_2AE7:
jr_000_2AE7:
    ld hl, $0040                                  ; $2AE7: $21 $40 $00
    add hl, de                                    ; $2AEA: $19
    push hl                                       ; $2AEB: $E5
    pop de                                        ; $2AEC: $D1
    ld hl, $0100                                  ; $2AED: $21 $00 $01
    add hl, bc                                    ; $2AF0: $09
    push hl                                       ; $2AF1: $E5
    pop bc                                        ; $2AF2: $C1
    pop af                                        ; $2AF3: $F1
    dec a                                         ; $2AF4: $3D
    jr nz, jr_000_2ACE                            ; $2AF5: $20 $D7

    pop af                                        ; $2AF7: $F1
    ldh [$FFE0], a                                ; $2AF8: $E0 $E0
    ld [$2000], a                                 ; $2AFA: $EA $00 $20

Jump_000_2AFD:
    ret                                           ; $2AFD: $C9


jr_000_2AFE:
    ld a, [$C2E1]                                 ; $2AFE: $FA $E1 $C2
    or a                                          ; $2B01: $B7
    jr z, jr_000_2B0B                             ; $2B02: $28 $07

    ld a, d                                       ; $2B04: $7A
    cp $D8                                        ; $2B05: $FE $D8
    jr z, jr_000_2B0B                             ; $2B07: $28 $02

    jr jr_000_2AE7                                ; $2B09: $18 $DC

jr_000_2B0B:
    push bc                                       ; $2B0B: $C5
    push de                                       ; $2B0C: $D5
    call Call_000_2B14                            ; $2B0D: $CD $14 $2B
    pop de                                        ; $2B10: $D1
    pop bc                                        ; $2B11: $C1
    jr jr_000_2AE7                                ; $2B12: $18 $D3

Call_000_2B14:
    push hl                                       ; $2B14: $E5
    ld hl, $0021                                  ; $2B15: $21 $21 $00
    add hl, de                                    ; $2B18: $19
    ld a, [hl]                                    ; $2B19: $7E
    ldh [$FFE0], a                                ; $2B1A: $E0 $E0
    ld [$2000], a                                 ; $2B1C: $EA $00 $20
    pop hl                                        ; $2B1F: $E1
    jp hl                                         ; $2B20: $E9


    ret                                           ; $2B21: $C9


Call_000_2B22:
    push bc                                       ; $2B22: $C5
    push de                                       ; $2B23: $D5
    push hl                                       ; $2B24: $E5
    ld hl, $005C                                  ; $2B25: $21 $5C $00
    add hl, bc                                    ; $2B28: $09
    ld a, [hl]                                    ; $2B29: $7E
    ld hl, $0000                                  ; $2B2A: $21 $00 $00
    add hl, bc                                    ; $2B2D: $09
    or l                                          ; $2B2E: $B5
    ld l, a                                       ; $2B2F: $6F
    jp Jump_000_2B41                              ; $2B30: $C3 $41 $2B


Call_000_2B33:
    push bc                                       ; $2B33: $C5
    push de                                       ; $2B34: $D5
    push hl                                       ; $2B35: $E5
    ld hl, $005B                                  ; $2B36: $21 $5B $00
    add hl, bc                                    ; $2B39: $09
    ld a, [hl]                                    ; $2B3A: $7E
    ld hl, $0010                                  ; $2B3B: $21 $10 $00
    add hl, bc                                    ; $2B3E: $09
    or l                                          ; $2B3F: $B5
    ld l, a                                       ; $2B40: $6F

Jump_000_2B41:
    push hl                                       ; $2B41: $E5
    pop de                                        ; $2B42: $D1
    pop hl                                        ; $2B43: $E1
    ld a, [hl+]                                   ; $2B44: $2A
    ld b, a                                       ; $2B45: $47

Jump_000_2B46:
    ld a, [de]                                    ; $2B46: $1A
    ld c, [hl]                                    ; $2B47: $4E
    inc hl                                        ; $2B48: $23
    and [hl]                                      ; $2B49: $A6
    cp c                                          ; $2B4A: $B9
    jp nz, Jump_000_2B74                          ; $2B4B: $C2 $74 $2B

    inc de                                        ; $2B4E: $13
    ld a, [de]                                    ; $2B4F: $1A
    inc hl                                        ; $2B50: $23
    cp [hl]                                       ; $2B51: $BE
    jp c, Jump_000_2B74                           ; $2B52: $DA $74 $2B

    inc hl                                        ; $2B55: $23
    cp [hl]                                       ; $2B56: $BE
    jp z, Jump_000_2B5D                           ; $2B57: $CA $5D $2B

    jp nc, Jump_000_2B74                          ; $2B5A: $D2 $74 $2B

Jump_000_2B5D:
    inc hl                                        ; $2B5D: $23
    ld a, e                                       ; $2B5E: $7B
    dec a                                         ; $2B5F: $3D
    dec a                                         ; $2B60: $3D
    dec a                                         ; $2B61: $3D
    and $0F                                       ; $2B62: $E6 $0F
    push af                                       ; $2B64: $F5
    ld a, $F0                                     ; $2B65: $3E $F0
    and e                                         ; $2B67: $A3
    ld e, a                                       ; $2B68: $5F
    pop af                                        ; $2B69: $F1
    or e                                          ; $2B6A: $B3
    ld e, a                                       ; $2B6B: $5F
    dec b                                         ; $2B6C: $05
    jp nz, Jump_000_2B46                          ; $2B6D: $C2 $46 $2B

    scf                                           ; $2B70: $37
    pop de                                        ; $2B71: $D1
    pop bc                                        ; $2B72: $C1
    ret                                           ; $2B73: $C9


Jump_000_2B74:
    xor a                                         ; $2B74: $AF
    pop de                                        ; $2B75: $D1
    pop bc                                        ; $2B76: $C1
    ret                                           ; $2B77: $C9


Call_000_2B78:
    push bc                                       ; $2B78: $C5
    push de                                       ; $2B79: $D5
    push hl                                       ; $2B7A: $E5
    ld hl, $005B                                  ; $2B7B: $21 $5B $00
    add hl, bc                                    ; $2B7E: $09
    ld a, [hl]                                    ; $2B7F: $7E
    ld hl, $0010                                  ; $2B80: $21 $10 $00
    add hl, bc                                    ; $2B83: $09
    or l                                          ; $2B84: $B5
    ld l, a                                       ; $2B85: $6F
    push hl                                       ; $2B86: $E5
    pop de                                        ; $2B87: $D1
    pop hl                                        ; $2B88: $E1
    ld a, [hl+]                                   ; $2B89: $2A
    ld b, a                                       ; $2B8A: $47
    ld c, $10                                     ; $2B8B: $0E $10
    ld a, [de]                                    ; $2B8D: $1A
    or a                                          ; $2B8E: $B7
    jp nz, Jump_000_2BAA                          ; $2B8F: $C2 $AA $2B

    inc de                                        ; $2B92: $13
    ld a, [de]                                    ; $2B93: $1A
    cp $0A                                        ; $2B94: $FE $0A
    jp nc, Jump_000_2C1F                          ; $2B96: $D2 $1F $2C

    dec c                                         ; $2B99: $0D
    ld a, e                                       ; $2B9A: $7B
    dec a                                         ; $2B9B: $3D
    dec a                                         ; $2B9C: $3D
    dec a                                         ; $2B9D: $3D
    and $0F                                       ; $2B9E: $E6 $0F
    push af                                       ; $2BA0: $F5
    ld a, $F0                                     ; $2BA1: $3E $F0
    and e                                         ; $2BA3: $A3
    ld e, a                                       ; $2BA4: $5F
    pop af                                        ; $2BA5: $F1
    or e                                          ; $2BA6: $B3
    ld e, a                                       ; $2BA7: $5F
    ld a, [de]                                    ; $2BA8: $1A
    dec c                                         ; $2BA9: $0D

Jump_000_2BAA:
    push bc                                       ; $2BAA: $C5
    ld c, [hl]                                    ; $2BAB: $4E
    inc hl                                        ; $2BAC: $23
    and [hl]                                      ; $2BAD: $A6
    cp c                                          ; $2BAE: $B9
    pop bc                                        ; $2BAF: $C1
    jp z, Jump_000_2BF5                           ; $2BB0: $CA $F5 $2B

    jp Jump_000_2C1F                              ; $2BB3: $C3 $1F $2C


Jump_000_2BB6:
    ld a, [de]                                    ; $2BB6: $1A
    or a                                          ; $2BB7: $B7
    jp nz, Jump_000_2BD7                          ; $2BB8: $C2 $D7 $2B

    inc de                                        ; $2BBB: $13
    ld a, [de]                                    ; $2BBC: $1A
    cp $05                                        ; $2BBD: $FE $05
    jp nc, Jump_000_2C1F                          ; $2BBF: $D2 $1F $2C

    dec c                                         ; $2BC2: $0D
    jp z, Jump_000_2C1F                           ; $2BC3: $CA $1F $2C

    ld a, e                                       ; $2BC6: $7B
    dec a                                         ; $2BC7: $3D
    dec a                                         ; $2BC8: $3D
    dec a                                         ; $2BC9: $3D
    and $0F                                       ; $2BCA: $E6 $0F
    push af                                       ; $2BCC: $F5
    ld a, $F0                                     ; $2BCD: $3E $F0
    and e                                         ; $2BCF: $A3
    ld e, a                                       ; $2BD0: $5F
    pop af                                        ; $2BD1: $F1
    or e                                          ; $2BD2: $B3
    ld e, a                                       ; $2BD3: $5F
    jp Jump_000_2BB6                              ; $2BD4: $C3 $B6 $2B


Jump_000_2BD7:
    push bc                                       ; $2BD7: $C5
    ld c, [hl]                                    ; $2BD8: $4E
    inc hl                                        ; $2BD9: $23
    and [hl]                                      ; $2BDA: $A6
    cp c                                          ; $2BDB: $B9

Call_000_2BDC:
    pop bc                                        ; $2BDC: $C1
    jp z, Jump_000_2BF5                           ; $2BDD: $CA $F5 $2B

    dec hl                                        ; $2BE0: $2B
    dec c                                         ; $2BE1: $0D
    jp z, Jump_000_2C1F                           ; $2BE2: $CA $1F $2C

    ld a, e                                       ; $2BE5: $7B
    dec a                                         ; $2BE6: $3D
    dec a                                         ; $2BE7: $3D
    and $0F                                       ; $2BE8: $E6 $0F
    push af                                       ; $2BEA: $F5
    ld a, $F0                                     ; $2BEB: $3E $F0
    and e                                         ; $2BED: $A3
    ld e, a                                       ; $2BEE: $5F
    pop af                                        ; $2BEF: $F1
    or e                                          ; $2BF0: $B3
    ld e, a                                       ; $2BF1: $5F
    jp Jump_000_2BB6                              ; $2BF2: $C3 $B6 $2B


Call_000_2BF5:
Jump_000_2BF5:
    inc de                                        ; $2BF5: $13
    ld a, [de]                                    ; $2BF6: $1A
    inc hl                                        ; $2BF7: $23
    cp [hl]                                       ; $2BF8: $BE
    jp c, Jump_000_2C1F                           ; $2BF9: $DA $1F $2C

    inc hl                                        ; $2BFC: $23
    cp [hl]                                       ; $2BFD: $BE
    jp z, Jump_000_2C04                           ; $2BFE: $CA $04 $2C

    jp nc, Jump_000_2C1F                          ; $2C01: $D2 $1F $2C

Jump_000_2C04:
    inc hl                                        ; $2C04: $23
    dec c                                         ; $2C05: $0D
    jp z, Jump_000_2C1F                           ; $2C06: $CA $1F $2C

    ld a, e                                       ; $2C09: $7B
    dec a                                         ; $2C0A: $3D
    dec a                                         ; $2C0B: $3D
    dec a                                         ; $2C0C: $3D
    and $0F                                       ; $2C0D: $E6 $0F
    push af                                       ; $2C0F: $F5
    ld a, $F0                                     ; $2C10: $3E $F0
    and e                                         ; $2C12: $A3
    ld e, a                                       ; $2C13: $5F
    pop af                                        ; $2C14: $F1
    or e                                          ; $2C15: $B3
    ld e, a                                       ; $2C16: $5F
    dec b                                         ; $2C17: $05
    jp nz, Jump_000_2BB6                          ; $2C18: $C2 $B6 $2B

    scf                                           ; $2C1B: $37
    pop de                                        ; $2C1C: $D1
    pop bc                                        ; $2C1D: $C1
    ret                                           ; $2C1E: $C9


Jump_000_2C1F:
    xor a                                         ; $2C1F: $AF
    pop de                                        ; $2C20: $D1
    pop bc                                        ; $2C21: $C1
    ret                                           ; $2C22: $C9


Call_000_2C23:
    push hl                                       ; $2C23: $E5
    push bc                                       ; $2C24: $C5
    xor a                                         ; $2C25: $AF
    ld hl, $0010                                  ; $2C26: $21 $10 $00
    add hl, bc                                    ; $2C29: $09
    ld b, $10                                     ; $2C2A: $06 $10

Jump_000_2C2C:
    ld [hl+], a                                   ; $2C2C: $22
    dec b                                         ; $2C2D: $05
    jp nz, Jump_000_2C2C                          ; $2C2E: $C2 $2C $2C

    pop bc                                        ; $2C31: $C1
    pop hl                                        ; $2C32: $E1
    ret                                           ; $2C33: $C9


Call_000_2C34:
    push hl                                       ; $2C34: $E5
    push bc                                       ; $2C35: $C5
    xor a                                         ; $2C36: $AF
    ld hl, $0000                                  ; $2C37: $21 $00 $00
    add hl, bc                                    ; $2C3A: $09
    ld b, $10                                     ; $2C3B: $06 $10

Jump_000_2C3D:
    ld [hl+], a                                   ; $2C3D: $22
    dec b                                         ; $2C3E: $05
    jp nz, Jump_000_2C3D                          ; $2C3F: $C2 $3D $2C

    pop bc                                        ; $2C42: $C1
    pop hl                                        ; $2C43: $E1
    ret                                           ; $2C44: $C9


Call_000_2C45:
    ld hl, $0054                                  ; $2C45: $21 $54 $00
    add hl, bc                                    ; $2C48: $09
    push bc                                       ; $2C49: $C5
    ld a, [hl+]                                   ; $2C4A: $2A
    and $0F                                       ; $2C4B: $E6 $0F
    ld b, a                                       ; $2C4D: $47
    ld a, [hl+]                                   ; $2C4E: $2A
    inc hl                                        ; $2C4F: $23
    inc hl                                        ; $2C50: $23
    or [hl]                                       ; $2C51: $B6
    and $F0                                       ; $2C52: $E6 $F0
    or b                                          ; $2C54: $B0
    pop bc                                        ; $2C55: $C1
    ld hl, $0052                                  ; $2C56: $21 $52 $00
    add hl, bc                                    ; $2C59: $09
    ld [hl], a                                    ; $2C5A: $77
    ret                                           ; $2C5B: $C9


Call_000_2C5C:
    ld hl, $0055                                  ; $2C5C: $21 $55 $00
    add hl, bc                                    ; $2C5F: $09
    ld a, [hl]                                    ; $2C60: $7E
    and $F0                                       ; $2C61: $E6 $F0
    jr z, jr_000_2C6D                             ; $2C63: $28 $08

    ld hl, $0058                                  ; $2C65: $21 $58 $00
    add hl, bc                                    ; $2C68: $09
    or [hl]                                       ; $2C69: $B6
    ld [hl], a                                    ; $2C6A: $77
    scf                                           ; $2C6B: $37
    ret                                           ; $2C6C: $C9


jr_000_2C6D:
    or a                                          ; $2C6D: $B7
    ret                                           ; $2C6E: $C9


Call_000_2C6F:
    ld hl, $0054                                  ; $2C6F: $21 $54 $00
    add hl, bc                                    ; $2C72: $09
    ld l, [hl]                                    ; $2C73: $6E
    bit 4, l                                      ; $2C74: $CB $65
    jp z, Jump_000_2C7E                           ; $2C76: $CA $7E $2C

    bit 5, l                                      ; $2C79: $CB $6D
    jp nz, Jump_000_2C80                          ; $2C7B: $C2 $80 $2C

Jump_000_2C7E:
    or a                                          ; $2C7E: $B7
    ret                                           ; $2C7F: $C9


Jump_000_2C80:
    scf                                           ; $2C80: $37
    ret                                           ; $2C81: $C9


Call_000_2C82:
    ld hl, $0054                                  ; $2C82: $21 $54 $00
    add hl, bc                                    ; $2C85: $09
    ld a, [hl]                                    ; $2C86: $7E
    and $0F                                       ; $2C87: $E6 $0F
    jp z, Jump_000_2C99                           ; $2C89: $CA $99 $2C

    ld hl, $0002                                  ; $2C8C: $21 $02 $00
    add hl, de                                    ; $2C8F: $19
    bit 5, [hl]                                   ; $2C90: $CB $6E
    jp nz, Jump_000_2C97                          ; $2C92: $C2 $97 $2C

    xor $03                                       ; $2C95: $EE $03

Jump_000_2C97:
    scf                                           ; $2C97: $37
    ret                                           ; $2C98: $C9


Jump_000_2C99:
    or a                                          ; $2C99: $B7
    ret                                           ; $2C9A: $C9


Call_000_2C9B:
    ld hl, $0000                                  ; $2C9B: $21 $00 $00
    add hl, de                                    ; $2C9E: $19
    bit 0, [hl]                                   ; $2C9F: $CB $46
    ret                                           ; $2CA1: $C9


Call_000_2CA2:
    ld hl, $0000                                  ; $2CA2: $21 $00 $00
    add hl, de                                    ; $2CA5: $19
    bit 3, [hl]                                   ; $2CA6: $CB $5E
    ret                                           ; $2CA8: $C9


Call_000_2CA9:
    call Call_000_2C9B                            ; $2CA9: $CD $9B $2C
    jr nz, jr_000_2CB8                            ; $2CAC: $20 $0A

Call_000_2CAE:
    ld hl, $001C                                  ; $2CAE: $21 $1C $00
    add hl, de                                    ; $2CB1: $19
    ld a, [hl]                                    ; $2CB2: $7E
    or a                                          ; $2CB3: $B7
    jr nz, jr_000_2CB8                            ; $2CB4: $20 $02

    scf                                           ; $2CB6: $37
    ret                                           ; $2CB7: $C9


jr_000_2CB8:
    xor a                                         ; $2CB8: $AF
    ret                                           ; $2CB9: $C9


Call_000_2CBA:
    push bc                                       ; $2CBA: $C5
    ld b, h                                       ; $2CBB: $44
    ld hl, $0014                                  ; $2CBC: $21 $14 $00
    add hl, de                                    ; $2CBF: $19
    cp [hl]                                       ; $2CC0: $BE
    jp z, Jump_000_2CE8                           ; $2CC1: $CA $E8 $2C

    ld [hl], a                                    ; $2CC4: $77
    ld hl, $001C                                  ; $2CC5: $21 $1C $00
    add hl, de                                    ; $2CC8: $19
    ld [hl], b                                    ; $2CC9: $70
    inc hl                                        ; $2CCA: $23
    ld [hl], b                                    ; $2CCB: $70
    call Call_000_2E2F                            ; $2CCC: $CD $2F $2E
    pop bc                                        ; $2CCF: $C1
    push bc                                       ; $2CD0: $C5
    ld hl, $002F                                  ; $2CD1: $21 $2F $00
    add hl, bc                                    ; $2CD4: $09
    bit 1, [hl]                                   ; $2CD5: $CB $4E
    jr z, jr_000_2CE0                             ; $2CD7: $28 $07

    ld a, $B5                                     ; $2CD9: $3E $B5
    call Call_000_1360                            ; $2CDB: $CD $60 $13
    jr jr_000_2CE5                                ; $2CDE: $18 $05

jr_000_2CE0:
    ld a, $B7                                     ; $2CE0: $3E $B7
    call Call_000_1360                            ; $2CE2: $CD $60 $13

jr_000_2CE5:
    ld a, $01                                     ; $2CE5: $3E $01
    or a                                          ; $2CE7: $B7

Jump_000_2CE8:
    pop bc                                        ; $2CE8: $C1
    ret                                           ; $2CE9: $C9


Call_000_2CEA:
    push bc                                       ; $2CEA: $C5
    ld b, h                                       ; $2CEB: $44
    ld hl, $0014                                  ; $2CEC: $21 $14 $00
    add hl, de                                    ; $2CEF: $19
    cp [hl]                                       ; $2CF0: $BE
    jp z, Jump_000_2D17                           ; $2CF1: $CA $17 $2D

    ld [hl], a                                    ; $2CF4: $77
    ld hl, $001C                                  ; $2CF5: $21 $1C $00

Call_000_2CF8:
    add hl, de                                    ; $2CF8: $19
    ld [hl], b                                    ; $2CF9: $70
    inc hl                                        ; $2CFA: $23
    ld [hl], b                                    ; $2CFB: $70
    call Call_000_2E2F                            ; $2CFC: $CD $2F $2E
    pop bc                                        ; $2CFF: $C1
    call Call_000_3973                            ; $2D00: $CD $73 $39
    jp nz, Jump_000_2D0E                          ; $2D03: $C2 $0E $2D

    ld a, $B5                                     ; $2D06: $3E $B5
    call Call_000_1360                            ; $2D08: $CD $60 $13
    jp Jump_000_2D13                              ; $2D0B: $C3 $13 $2D


Jump_000_2D0E:
    ld a, $01                                     ; $2D0E: $3E $01
    call Call_000_1360                            ; $2D10: $CD $60 $13

Jump_000_2D13:
    ld a, $01                                     ; $2D13: $3E $01
    or a                                          ; $2D15: $B7
    ret                                           ; $2D16: $C9


Jump_000_2D17:
    pop bc                                        ; $2D17: $C1
    ret                                           ; $2D18: $C9


Call_000_2D19:
    push bc                                       ; $2D19: $C5
    ld b, h                                       ; $2D1A: $44
    ld hl, $0014                                  ; $2D1B: $21 $14 $00
    add hl, de                                    ; $2D1E: $19
    cp [hl]                                       ; $2D1F: $BE
    jp z, Jump_000_2D31                           ; $2D20: $CA $31 $2D

    ld [hl], a                                    ; $2D23: $77
    ld hl, $001C                                  ; $2D24: $21 $1C $00
    add hl, de                                    ; $2D27: $19
    ld [hl], b                                    ; $2D28: $70
    inc hl                                        ; $2D29: $23
    ld [hl], b                                    ; $2D2A: $70
    call Call_000_2E2F                            ; $2D2B: $CD $2F $2E
    ld a, $01                                     ; $2D2E: $3E $01
    or a                                          ; $2D30: $B7

Jump_000_2D31:
    pop bc                                        ; $2D31: $C1
    ret                                           ; $2D32: $C9


Call_000_2D33:
    push bc                                       ; $2D33: $C5
    ld b, h                                       ; $2D34: $44
    add $40                                       ; $2D35: $C6 $40
    push af                                       ; $2D37: $F5
    ld hl, $000A                                  ; $2D38: $21 $0A $00
    add hl, de                                    ; $2D3B: $19
    ld a, [hl]                                    ; $2D3C: $7E
    add $40                                       ; $2D3D: $C6 $40
    ld c, a                                       ; $2D3F: $4F
    pop af                                        ; $2D40: $F1
    cp c                                          ; $2D41: $B9
    jp c, Jump_000_2D48                           ; $2D42: $DA $48 $2D

    jp Jump_000_2D59                              ; $2D45: $C3 $59 $2D


Jump_000_2D48:
    call Call_000_2C9B                            ; $2D48: $CD $9B $2C
    jp nz, Jump_000_2D59                          ; $2D4B: $C2 $59 $2D

    ld hl, $001C                                  ; $2D4E: $21 $1C $00
    add hl, de                                    ; $2D51: $19
    ld [hl], $00                                  ; $2D52: $36 $00
    inc hl                                        ; $2D54: $23
    ld [hl], b                                    ; $2D55: $70
    scf                                           ; $2D56: $37
    pop bc                                        ; $2D57: $C1
    ret                                           ; $2D58: $C9


Jump_000_2D59:
    or a                                          ; $2D59: $B7
    pop bc                                        ; $2D5A: $C1
    ret                                           ; $2D5B: $C9


Call_000_2D5C:
    push bc                                       ; $2D5C: $C5
    ld b, h                                       ; $2D5D: $44
    add $40                                       ; $2D5E: $C6 $40
    push af                                       ; $2D60: $F5
    ld hl, $000A                                  ; $2D61: $21 $0A $00
    add hl, de                                    ; $2D64: $19
    ld a, [hl]                                    ; $2D65: $7E
    add $40                                       ; $2D66: $C6 $40
    ld c, a                                       ; $2D68: $4F
    pop af                                        ; $2D69: $F1
    cp c                                          ; $2D6A: $B9
    jp c, Jump_000_2D71                           ; $2D6B: $DA $71 $2D

    jp Jump_000_2D7C                              ; $2D6E: $C3 $7C $2D


Jump_000_2D71:
    ld hl, $001C                                  ; $2D71: $21 $1C $00
    add hl, de                                    ; $2D74: $19
    ld [hl], $00                                  ; $2D75: $36 $00
    inc hl                                        ; $2D77: $23
    ld [hl], b                                    ; $2D78: $70
    scf                                           ; $2D79: $37
    pop bc                                        ; $2D7A: $C1
    ret                                           ; $2D7B: $C9


Jump_000_2D7C:
    or a                                          ; $2D7C: $B7
    pop bc                                        ; $2D7D: $C1
    ret                                           ; $2D7E: $C9


Call_000_2D7F:
    push bc                                       ; $2D7F: $C5

Call_000_2D80:
    ld b, h                                       ; $2D80: $44
    add $40                                       ; $2D81: $C6 $40
    push af                                       ; $2D83: $F5
    ld hl, $000A                                  ; $2D84: $21 $0A $00
    add hl, de                                    ; $2D87: $19
    ld a, [hl]                                    ; $2D88: $7E
    add $40                                       ; $2D89: $C6 $40
    ld c, a                                       ; $2D8B: $4F
    pop af                                        ; $2D8C: $F1
    cp c                                          ; $2D8D: $B9
    jp nc, Jump_000_2D94                          ; $2D8E: $D2 $94 $2D

    jp Jump_000_2D9F                              ; $2D91: $C3 $9F $2D


Jump_000_2D94:
    ld hl, $001C                                  ; $2D94: $21 $1C $00
    add hl, de                                    ; $2D97: $19
    ld [hl], $00                                  ; $2D98: $36 $00
    inc hl                                        ; $2D9A: $23
    ld [hl], b                                    ; $2D9B: $70
    scf                                           ; $2D9C: $37
    pop bc                                        ; $2D9D: $C1
    ret                                           ; $2D9E: $C9


Jump_000_2D9F:
    or a                                          ; $2D9F: $B7
    pop bc                                        ; $2DA0: $C1
    ret                                           ; $2DA1: $C9


Call_000_2DA2:
    cp $4C                                        ; $2DA2: $FE $4C
    jr nc, jr_000_2DAF                            ; $2DA4: $30 $09

    ld hl, $0060                                  ; $2DA6: $21 $60 $00
    add hl, bc                                    ; $2DA9: $09
    ld a, [hl]                                    ; $2DAA: $7E
    cp $13                                        ; $2DAB: $FE $13
    jr c, jr_000_2DB5                             ; $2DAD: $38 $06

jr_000_2DAF:
    xor a                                         ; $2DAF: $AF
    ld hl, $0062                                  ; $2DB0: $21 $62 $00
    add hl, bc                                    ; $2DB3: $09
    ld [hl], a                                    ; $2DB4: $77

jr_000_2DB5:
    ret                                           ; $2DB5: $C9


Call_000_2DB6:
    call Call_000_2637                            ; $2DB6: $CD $37 $26
    ld [hl+], a                                   ; $2DB9: $22
    ld [hl+], a                                   ; $2DBA: $22
    ld [hl+], a                                   ; $2DBB: $22
    ld [hl], a                                    ; $2DBC: $77

Call_000_2DBD:
    ld hl, $0020                                  ; $2DBD: $21 $20 $00
    add hl, bc                                    ; $2DC0: $09
    ld a, [hl]                                    ; $2DC1: $7E
    and $42                                       ; $2DC2: $E6 $42
    jp z, Jump_000_2DCF                           ; $2DC4: $CA $CF $2D

    push hl                                       ; $2DC7: $E5
    ld hl, $0058                                  ; $2DC8: $21 $58 $00
    add hl, bc                                    ; $2DCB: $09
    ld [hl], $00                                  ; $2DCC: $36 $00
    pop hl                                        ; $2DCE: $E1

Jump_000_2DCF:
    res 1, [hl]                                   ; $2DCF: $CB $8E
    res 2, [hl]                                   ; $2DD1: $CB $96

Jump_000_2DD3:
    res 3, [hl]                                   ; $2DD3: $CB $9E
    res 4, [hl]                                   ; $2DD5: $CB $A6
    res 5, [hl]                                   ; $2DD7: $CB $AE
    res 6, [hl]                                   ; $2DD9: $CB $B6
    inc hl                                        ; $2DDB: $23
    res 0, [hl]                                   ; $2DDC: $CB $86
    res 1, [hl]                                   ; $2DDE: $CB $8E
    res 2, [hl]                                   ; $2DE0: $CB $96
    res 4, [hl]                                   ; $2DE2: $CB $A6
    res 6, [hl]                                   ; $2DE4: $CB $B6
    res 7, [hl]                                   ; $2DE6: $CB $BE
    inc hl                                        ; $2DE8: $23
    res 2, [hl]                                   ; $2DE9: $CB $96
    res 3, [hl]                                   ; $2DEB: $CB $9E

Call_000_2DED:
    res 4, [hl]                                   ; $2DED: $CB $A6
    res 5, [hl]                                   ; $2DEF: $CB $AE
    res 6, [hl]                                   ; $2DF1: $CB $B6

Jump_000_2DF3:
    res 7, [hl]                                   ; $2DF3: $CB $BE
    inc hl                                        ; $2DF5: $23
    ld [hl], $00                                  ; $2DF6: $36 $00
    inc hl                                        ; $2DF8: $23
    ld [hl], $00                                  ; $2DF9: $36 $00
    ld hl, $0043                                  ; $2DFB: $21 $43 $00
    add hl, bc                                    ; $2DFE: $09

Call_000_2DFF:
    ld [hl], $00                                  ; $2DFF: $36 $00
    ld hl, $003C                                  ; $2E01: $21 $3C $00
    add hl, bc                                    ; $2E04: $09
    ld a, [hl]                                    ; $2E05: $7E
    ld [hl], $00                                  ; $2E06: $36 $00
    ld hl, $003F                                  ; $2E08: $21 $3F $00
    add hl, bc                                    ; $2E0B: $09
    cp [hl]                                       ; $2E0C: $BE
    jr nz, jr_000_2E11                            ; $2E0D: $20 $02

    ld [hl], $00                                  ; $2E0F: $36 $00

jr_000_2E11:
    ret                                           ; $2E11: $C9


Call_000_2E12:
    ld hl, $0001                                  ; $2E12: $21 $01 $00
    add hl, de                                    ; $2E15: $19
    bit 3, [hl]                                   ; $2E16: $CB $5E
    jp z, Jump_000_2E21                           ; $2E18: $CA $21 $2E

    inc hl                                        ; $2E1B: $23
    set 5, [hl]                                   ; $2E1C: $CB $EE
    jp Jump_000_2E24                              ; $2E1E: $C3 $24 $2E


Jump_000_2E21:
    inc hl                                        ; $2E21: $23
    res 5, [hl]                                   ; $2E22: $CB $AE

Jump_000_2E24:
    ret                                           ; $2E24: $C9


Call_000_2E25:
Jump_000_2E25:
    push bc                                       ; $2E25: $C5
    push de                                       ; $2E26: $D5
    push de                                       ; $2E27: $D5

Call_000_2E28:
    pop hl                                        ; $2E28: $E1
    call Call_000_0E28                            ; $2E29: $CD $28 $0E
    pop de                                        ; $2E2C: $D1
    pop bc                                        ; $2E2D: $C1
    ret                                           ; $2E2E: $C9


Call_000_2E2F:
    push bc                                       ; $2E2F: $C5
    push de                                       ; $2E30: $D5
    push de                                       ; $2E31: $D5
    pop hl                                        ; $2E32: $E1
    call Call_000_0DB5                            ; $2E33: $CD $B5 $0D
    pop de                                        ; $2E36: $D1
    pop bc                                        ; $2E37: $C1
    ret                                           ; $2E38: $C9


Call_000_2E39:
    ld a, [$C2C6]                                 ; $2E39: $FA $C6 $C2
    and $F0                                       ; $2E3C: $E6 $F0
    cp $20                                        ; $2E3E: $FE $20
    jr z, jr_000_2E51                             ; $2E40: $28 $0F

    ldh a, [$FFE0]                                ; $2E42: $F0 $E0
    push af                                       ; $2E44: $F5
    call Call_000_2E5B                            ; $2E45: $CD $5B $2E
    jp c, Jump_000_2E53                           ; $2E48: $DA $53 $2E

    pop af                                        ; $2E4B: $F1
    ldh [$FFE0], a                                ; $2E4C: $E0 $E0
    ld [$2000], a                                 ; $2E4E: $EA $00 $20

jr_000_2E51:
    xor a                                         ; $2E51: $AF
    ret                                           ; $2E52: $C9


Jump_000_2E53:
    pop af                                        ; $2E53: $F1
    ldh [$FFE0], a                                ; $2E54: $E0 $E0
    ld [$2000], a                                 ; $2E56: $EA $00 $20
    scf                                           ; $2E59: $37
    ret                                           ; $2E5A: $C9


Call_000_2E5B:
    ld hl, $002A                                  ; $2E5B: $21 $2A $00
    add hl, bc                                    ; $2E5E: $09
    push de                                       ; $2E5F: $D5
    ld d, [hl]                                    ; $2E60: $56
    inc hl                                        ; $2E61: $23
    ld e, [hl]                                    ; $2E62: $5E
    inc hl                                        ; $2E63: $23
    ld a, [hl]                                    ; $2E64: $7E
    ldh [$FFE0], a                                ; $2E65: $E0 $E0
    ld [$2000], a                                 ; $2E67: $EA $00 $20
    push de                                       ; $2E6A: $D5
    pop hl                                        ; $2E6B: $E1
    pop de                                        ; $2E6C: $D1
    jp hl                                         ; $2E6D: $E9


Call_000_2E6E:
    push bc                                       ; $2E6E: $C5
    push de                                       ; $2E6F: $D5
    ld hl, $003C                                  ; $2E70: $21 $3C $00
    add hl, bc                                    ; $2E73: $09
    ld h, [hl]                                    ; $2E74: $66
    push hl                                       ; $2E75: $E5
    call Call_000_2673                            ; $2E76: $CD $73 $26
    pop hl                                        ; $2E79: $E1
    ld a, h                                       ; $2E7A: $7C
    cp $16                                        ; $2E7B: $FE $16
    jr z, jr_000_2E88                             ; $2E7D: $28 $09

    ld hl, $0008                                  ; $2E7F: $21 $08 $00
    add hl, de                                    ; $2E82: $19
    xor a                                         ; $2E83: $AF
    ld [hl+], a                                   ; $2E84: $22
    ld [hl+], a                                   ; $2E85: $22
    ld [hl+], a                                   ; $2E86: $22
    ld [hl], a                                    ; $2E87: $77

jr_000_2E88:
    push de                                       ; $2E88: $D5
    pop hl                                        ; $2E89: $E1
    call Call_000_0DB5                            ; $2E8A: $CD $B5 $0D
    pop de                                        ; $2E8D: $D1
    pop bc                                        ; $2E8E: $C1
    ret                                           ; $2E8F: $C9


Call_000_2E90:
    push bc                                       ; $2E90: $C5
    push de                                       ; $2E91: $D5
    call Call_000_2673                            ; $2E92: $CD $73 $26
    ld hl, $0055                                  ; $2E95: $21 $55 $00
    add hl, bc                                    ; $2E98: $09
    ld [hl], $00                                  ; $2E99: $36 $00
    push de                                       ; $2E9B: $D5
    pop hl                                        ; $2E9C: $E1
    call Call_000_0DB5                            ; $2E9D: $CD $B5 $0D
    pop de                                        ; $2EA0: $D1
    pop bc                                        ; $2EA1: $C1
    ret                                           ; $2EA2: $C9


Call_000_2EA3:
    push bc                                       ; $2EA3: $C5
    push de                                       ; $2EA4: $D5
    call Call_000_2673                            ; $2EA5: $CD $73 $26
    push de                                       ; $2EA8: $D5
    pop hl                                        ; $2EA9: $E1
    call Call_000_0DB5                            ; $2EAA: $CD $B5 $0D
    pop de                                        ; $2EAD: $D1
    pop bc                                        ; $2EAE: $C1
    ret                                           ; $2EAF: $C9


Call_000_2EB0:
    push bc                                       ; $2EB0: $C5
    push de                                       ; $2EB1: $D5
    call Call_000_2673                            ; $2EB2: $CD $73 $26
    ld hl, $0008                                  ; $2EB5: $21 $08 $00
    add hl, de                                    ; $2EB8: $19
    xor a                                         ; $2EB9: $AF
    ld [hl+], a                                   ; $2EBA: $22
    ld [hl+], a                                   ; $2EBB: $22
    ld [hl+], a                                   ; $2EBC: $22
    ld [hl], a                                    ; $2EBD: $77
    push de                                       ; $2EBE: $D5
    pop hl                                        ; $2EBF: $E1
    call Call_000_0DB5                            ; $2EC0: $CD $B5 $0D
    pop de                                        ; $2EC3: $D1
    pop bc                                        ; $2EC4: $C1
    ld hl, $C2AF                                  ; $2EC5: $21 $AF $C2
    ld [hl], $00                                  ; $2EC8: $36 $00
    ld hl, $0046                                  ; $2ECA: $21 $46 $00
    add hl, bc                                    ; $2ECD: $09
    xor a                                         ; $2ECE: $AF

Call_000_2ECF:
    ld [hl+], a                                   ; $2ECF: $22
    ld [hl+], a                                   ; $2ED0: $22
    ld [hl+], a                                   ; $2ED1: $22
    ld [hl+], a                                   ; $2ED2: $22
    ld [hl+], a                                   ; $2ED3: $22
    ld [hl+], a                                   ; $2ED4: $22
    ld hl, $004C                                  ; $2ED5: $21 $4C $00
    add hl, bc                                    ; $2ED8: $09
    ld [hl+], a                                   ; $2ED9: $22
    ld [hl+], a                                   ; $2EDA: $22
    ld [hl+], a                                   ; $2EDB: $22
    ld [hl+], a                                   ; $2EDC: $22
    ld [hl+], a                                   ; $2EDD: $22
    ld [hl+], a                                   ; $2EDE: $22
    ret                                           ; $2EDF: $C9


Call_000_2EE0:
    ld a, [$C2E2]                                 ; $2EE0: $FA $E2 $C2
    or a                                          ; $2EE3: $B7
    ret nz                                        ; $2EE4: $C0

    push bc                                       ; $2EE5: $C5
    ld hl, $0073                                  ; $2EE6: $21 $73 $00
    add hl, bc                                    ; $2EE9: $09
    ld a, [hl]                                    ; $2EEA: $7E
    cp $00                                        ; $2EEB: $FE $00
    jr z, jr_000_2F09                             ; $2EED: $28 $1A

    ld hl, $0001                                  ; $2EEF: $21 $01 $00
    add hl, de                                    ; $2EF2: $19
    ld b, [hl]                                    ; $2EF3: $46
    ld h, a                                       ; $2EF4: $67
    ld l, $00                                     ; $2EF5: $2E $00
    bit 3, b                                      ; $2EF7: $CB $58
    jr z, jr_000_2F02                             ; $2EF9: $28 $07

Call_000_2EFB:
    ld a, h                                       ; $2EFB: $7C
    cpl                                           ; $2EFC: $2F
    ld h, a                                       ; $2EFD: $67
    ld a, l                                       ; $2EFE: $7D
    cpl                                           ; $2EFF: $2F

Jump_000_2F00:
    ld l, a                                       ; $2F00: $6F
    inc hl                                        ; $2F01: $23

jr_000_2F02:
    sra h                                         ; $2F02: $CB $2C
    rr l                                          ; $2F04: $CB $1D
    call Call_000_2F0B                            ; $2F06: $CD $0B $2F

jr_000_2F09:
    pop bc                                        ; $2F09: $C1
    ret                                           ; $2F0A: $C9


Call_000_2F0B:
    push bc                                       ; $2F0B: $C5
    push de                                       ; $2F0C: $D5
    push hl                                       ; $2F0D: $E5
    pop bc                                        ; $2F0E: $C1
    ld hl, $0004                                  ; $2F0F: $21 $04 $00
    add hl, de                                    ; $2F12: $19
    push hl                                       ; $2F13: $E5
    pop de                                        ; $2F14: $D1
    push de                                       ; $2F15: $D5
    ld a, [de]                                    ; $2F16: $1A
    ld h, a                                       ; $2F17: $67
    inc de                                        ; $2F18: $13
    ld a, [de]                                    ; $2F19: $1A
    ld l, a                                       ; $2F1A: $6F
    bit 7, b                                      ; $2F1B: $CB $78
    jp nz, Jump_000_2F2A                          ; $2F1D: $C2 $2A $2F

    add hl, bc                                    ; $2F20: $09
    jp nc, Jump_000_2F39                          ; $2F21: $D2 $39 $2F

    ld hl, $FF00                                  ; $2F24: $21 $00 $FF
    jp Jump_000_2F39                              ; $2F27: $C3 $39 $2F


Jump_000_2F2A:
    ld a, h                                       ; $2F2A: $7C
    add hl, bc                                    ; $2F2B: $09
    push af                                       ; $2F2C: $F5
    ld a, b                                       ; $2F2D: $78
    cpl                                           ; $2F2E: $2F
    inc a                                         ; $2F2F: $3C
    ld b, a                                       ; $2F30: $47
    pop af                                        ; $2F31: $F1
    sub b                                         ; $2F32: $90
    jp nc, Jump_000_2F39                          ; $2F33: $D2 $39 $2F

    ld hl, $0000                                  ; $2F36: $21 $00 $00

Jump_000_2F39:
    pop de                                        ; $2F39: $D1
    ld a, h                                       ; $2F3A: $7C
    ld [de], a                                    ; $2F3B: $12
    inc de                                        ; $2F3C: $13
    ld a, l                                       ; $2F3D: $7D
    ld [de], a                                    ; $2F3E: $12
    pop de                                        ; $2F3F: $D1
    pop bc                                        ; $2F40: $C1
    ret                                           ; $2F41: $C9


Call_000_2F42:
    push bc                                       ; $2F42: $C5
    push de                                       ; $2F43: $D5
    push hl                                       ; $2F44: $E5
    pop bc                                        ; $2F45: $C1
    ld hl, $0006                                  ; $2F46: $21 $06 $00
    add hl, de                                    ; $2F49: $19
    push hl                                       ; $2F4A: $E5
    pop de                                        ; $2F4B: $D1
    push de                                       ; $2F4C: $D5
    ld a, [de]                                    ; $2F4D: $1A
    ld h, a                                       ; $2F4E: $67
    inc de                                        ; $2F4F: $13
    ld a, [de]                                    ; $2F50: $1A
    ld l, a                                       ; $2F51: $6F
    add hl, bc                                    ; $2F52: $09
    pop de                                        ; $2F53: $D1
    ld a, h                                       ; $2F54: $7C
    ld [de], a                                    ; $2F55: $12
    inc de                                        ; $2F56: $13
    ld a, l                                       ; $2F57: $7D
    ld [de], a                                    ; $2F58: $12
    bit 7, b                                      ; $2F59: $CB $78
    jr z, jr_000_2F69                             ; $2F5B: $28 $0C

    dec de                                        ; $2F5D: $1B
    ld a, [de]                                    ; $2F5E: $1A
    cp $88                                        ; $2F5F: $FE $88
    jr c, jr_000_2F76                             ; $2F61: $38 $13

    xor a                                         ; $2F63: $AF
    ld [de], a                                    ; $2F64: $12
    inc de                                        ; $2F65: $13
    ld [de], a                                    ; $2F66: $12
    jr jr_000_2F76                                ; $2F67: $18 $0D

jr_000_2F69:
    dec de                                        ; $2F69: $1B
    ld a, [de]                                    ; $2F6A: $1A
    cp $88                                        ; $2F6B: $FE $88
    jp c, Jump_000_2F76                           ; $2F6D: $DA $76 $2F

    ld a, $88                                     ; $2F70: $3E $88
    ld [de], a                                    ; $2F72: $12
    inc de                                        ; $2F73: $13
    xor a                                         ; $2F74: $AF
    ld [de], a                                    ; $2F75: $12

Jump_000_2F76:
jr_000_2F76:
    pop de                                        ; $2F76: $D1
    pop bc                                        ; $2F77: $C1
    ret                                           ; $2F78: $C9


Call_000_2F79:
    push bc                                       ; $2F79: $C5
    push de                                       ; $2F7A: $D5
    push hl                                       ; $2F7B: $E5
    pop bc                                        ; $2F7C: $C1
    ld hl, $0002                                  ; $2F7D: $21 $02 $00
    add hl, de                                    ; $2F80: $19
    bit 5, [hl]                                   ; $2F81: $CB $6E
    jp nz, Jump_000_2F8D                          ; $2F83: $C2 $8D $2F

    ld a, b                                       ; $2F86: $78
    cpl                                           ; $2F87: $2F
    ld b, a                                       ; $2F88: $47
    ld a, c                                       ; $2F89: $79
    cpl                                           ; $2F8A: $2F
    ld c, a                                       ; $2F8B: $4F
    inc bc                                        ; $2F8C: $03

Jump_000_2F8D:
    push bc                                       ; $2F8D: $C5
    pop hl                                        ; $2F8E: $E1
    call Call_000_2F0B                            ; $2F8F: $CD $0B $2F
    pop de                                        ; $2F92: $D1
    pop bc                                        ; $2F93: $C1
    ret                                           ; $2F94: $C9


Call_000_2F95:
    push bc                                       ; $2F95: $C5
    push de                                       ; $2F96: $D5
    push hl                                       ; $2F97: $E5
    pop bc                                        ; $2F98: $C1
    ld hl, $0001                                  ; $2F99: $21 $01 $00
    add hl, de                                    ; $2F9C: $19
    bit 3, [hl]                                   ; $2F9D: $CB $5E
    jp nz, Jump_000_2FA9                          ; $2F9F: $C2 $A9 $2F

    ld a, b                                       ; $2FA2: $78
    cpl                                           ; $2FA3: $2F
    ld b, a                                       ; $2FA4: $47
    ld a, c                                       ; $2FA5: $79
    cpl                                           ; $2FA6: $2F
    ld c, a                                       ; $2FA7: $4F
    inc bc                                        ; $2FA8: $03

Jump_000_2FA9:
    push bc                                       ; $2FA9: $C5
    pop hl                                        ; $2FAA: $E1
    call Call_000_2F0B                            ; $2FAB: $CD $0B $2F
    pop de                                        ; $2FAE: $D1
    pop bc                                        ; $2FAF: $C1

Call_000_2FB0:
    ret                                           ; $2FB0: $C9


Call_000_2FB1:
    push bc                                       ; $2FB1: $C5
    push de                                       ; $2FB2: $D5
    push hl                                       ; $2FB3: $E5
    pop de                                        ; $2FB4: $D1
    ld hl, $0098                                  ; $2FB5: $21 $98 $00
    add hl, bc                                    ; $2FB8: $09
    bit 5, [hl]                                   ; $2FB9: $CB $6E
    jp z, Jump_000_2FC5                           ; $2FBB: $CA $C5 $2F

    ld a, d                                       ; $2FBE: $7A
    cpl                                           ; $2FBF: $2F
    ld d, a                                       ; $2FC0: $57
    ld a, e                                       ; $2FC1: $7B
    cpl                                           ; $2FC2: $2F
    ld e, a                                       ; $2FC3: $5F
    inc de                                        ; $2FC4: $13

Jump_000_2FC5:
    push de                                       ; $2FC5: $D5
    pop hl                                        ; $2FC6: $E1
    pop de                                        ; $2FC7: $D1
    push de                                       ; $2FC8: $D5
    call Call_000_2F0B                            ; $2FC9: $CD $0B $2F
    pop de                                        ; $2FCC: $D1
    pop bc                                        ; $2FCD: $C1
    ret                                           ; $2FCE: $C9


Call_000_2FCF:
    push bc                                       ; $2FCF: $C5

Jump_000_2FD0:
    push de                                       ; $2FD0: $D5
    push hl                                       ; $2FD1: $E5
    pop bc                                        ; $2FD2: $C1
    ld hl, $0001                                  ; $2FD3: $21 $01 $00
    add hl, de                                    ; $2FD6: $19
    bit 2, [hl]                                   ; $2FD7: $CB $56
    jp nz, Jump_000_2FE3                          ; $2FD9: $C2 $E3 $2F

    ld a, b                                       ; $2FDC: $78
    cpl                                           ; $2FDD: $2F
    ld b, a                                       ; $2FDE: $47

Call_000_2FDF:
    ld a, c                                       ; $2FDF: $79
    cpl                                           ; $2FE0: $2F
    ld c, a                                       ; $2FE1: $4F
    inc bc                                        ; $2FE2: $03

Jump_000_2FE3:
    push bc                                       ; $2FE3: $C5
    pop hl                                        ; $2FE4: $E1
    call Call_000_2F0B                            ; $2FE5: $CD $0B $2F
    pop de                                        ; $2FE8: $D1
    pop bc                                        ; $2FE9: $C1
    ret                                           ; $2FEA: $C9


Call_000_2FEB:
    push bc                                       ; $2FEB: $C5
    push hl                                       ; $2FEC: $E5
    pop bc                                        ; $2FED: $C1
    ld hl, $0002                                  ; $2FEE: $21 $02 $00
    add hl, de                                    ; $2FF1: $19
    bit 5, [hl]                                   ; $2FF2: $CB $6E

Call_000_2FF4:
    jp nz, Jump_000_2FFE                          ; $2FF4: $C2 $FE $2F

    ld a, b                                       ; $2FF7: $78
    cpl                                           ; $2FF8: $2F
    ld b, a                                       ; $2FF9: $47
    ld a, c                                       ; $2FFA: $79
    cpl                                           ; $2FFB: $2F
    ld c, a                                       ; $2FFC: $4F
    inc bc                                        ; $2FFD: $03

Jump_000_2FFE:
    ld hl, $0008                                  ; $2FFE: $21 $08 $00
    add hl, de                                    ; $3001: $19

Call_000_3002:
    ld [hl], b                                    ; $3002: $70

Call_000_3003:
    inc hl                                        ; $3003: $23
    ld [hl], c                                    ; $3004: $71
    pop bc                                        ; $3005: $C1
    ret                                           ; $3006: $C9


Call_000_3007:
    push bc                                       ; $3007: $C5
    push hl                                       ; $3008: $E5
    pop bc                                        ; $3009: $C1
    ld hl, $0001                                  ; $300A: $21 $01 $00
    add hl, de                                    ; $300D: $19
    bit 3, [hl]                                   ; $300E: $CB $5E
    jp z, Jump_000_301A                           ; $3010: $CA $1A $30

    ld a, b                                       ; $3013: $78
    cpl                                           ; $3014: $2F
    ld b, a                                       ; $3015: $47
    ld a, c                                       ; $3016: $79
    cpl                                           ; $3017: $2F
    ld c, a                                       ; $3018: $4F
    inc bc                                        ; $3019: $03

Jump_000_301A:
    ld hl, $0008                                  ; $301A: $21 $08 $00
    add hl, de                                    ; $301D: $19
    ld [hl], b                                    ; $301E: $70
    inc hl                                        ; $301F: $23
    ld [hl], c                                    ; $3020: $71
    pop bc                                        ; $3021: $C1
    ret                                           ; $3022: $C9


Call_000_3023:
    ld hl, $0020                                  ; $3023: $21 $20 $00
    add hl, bc                                    ; $3026: $09
    bit 3, [hl]                                   ; $3027: $CB $5E
    ret z                                         ; $3029: $C8

    ld hl, $0001                                  ; $302A: $21 $01 $00
    add hl, de                                    ; $302D: $19
    ld a, [hl]                                    ; $302E: $7E
    ld hl, $0025                                  ; $302F: $21 $25 $00
    add hl, bc                                    ; $3032: $09
    ld [hl], a                                    ; $3033: $77
    ret                                           ; $3034: $C9


Call_000_3035:
    push bc                                       ; $3035: $C5
    push hl                                       ; $3036: $E5
    ld hl, $0025                                  ; $3037: $21 $25 $00
    add hl, bc                                    ; $303A: $09
    pop bc                                        ; $303B: $C1
    bit 2, [hl]                                   ; $303C: $CB $56
    jp z, Jump_000_3048                           ; $303E: $CA $48 $30

    ld a, b                                       ; $3041: $78
    cpl                                           ; $3042: $2F
    ld b, a                                       ; $3043: $47
    ld a, c                                       ; $3044: $79
    cpl                                           ; $3045: $2F
    ld c, a                                       ; $3046: $4F
    inc bc                                        ; $3047: $03

Jump_000_3048:
    ld hl, $0008                                  ; $3048: $21 $08 $00
    add hl, de                                    ; $304B: $19
    ld [hl], b                                    ; $304C: $70
    inc hl                                        ; $304D: $23
    ld [hl], c                                    ; $304E: $71
    pop bc                                        ; $304F: $C1
    ret                                           ; $3050: $C9


Call_000_3051:
    push bc                                       ; $3051: $C5
    push hl                                       ; $3052: $E5
    pop bc                                        ; $3053: $C1
    ld hl, $0008                                  ; $3054: $21 $08 $00
    add hl, de                                    ; $3057: $19
    ld [hl], b                                    ; $3058: $70
    inc hl                                        ; $3059: $23
    ld [hl], c                                    ; $305A: $71

Jump_000_305B:
    pop bc                                        ; $305B: $C1
    ret                                           ; $305C: $C9


Call_000_305D:
    push bc                                       ; $305D: $C5
    push hl                                       ; $305E: $E5
    pop bc                                        ; $305F: $C1
    ld hl, $000A                                  ; $3060: $21 $0A $00
    add hl, de                                    ; $3063: $19
    ld [hl], b                                    ; $3064: $70
    inc hl                                        ; $3065: $23
    ld [hl], c                                    ; $3066: $71
    pop bc                                        ; $3067: $C1
    ret                                           ; $3068: $C9


Call_000_3069:
    push bc                                       ; $3069: $C5
    ld hl, $0008                                  ; $306A: $21 $08 $00
    add hl, de                                    ; $306D: $19
    ld b, [hl]                                    ; $306E: $46
    inc hl                                        ; $306F: $23
    ld c, [hl]                                    ; $3070: $4E
    push bc                                       ; $3071: $C5
    pop hl                                        ; $3072: $E1
    call Call_000_2F0B                            ; $3073: $CD $0B $2F
    pop bc                                        ; $3076: $C1
    ret                                           ; $3077: $C9


Call_000_3078:
Jump_000_3078:
    push bc                                       ; $3078: $C5
    push de                                       ; $3079: $D5
    push hl                                       ; $307A: $E5
    pop bc                                        ; $307B: $C1
    ld hl, $0002                                  ; $307C: $21 $02 $00
    add hl, de                                    ; $307F: $19
    bit 5, [hl]                                   ; $3080: $CB $6E
    jp nz, Jump_000_308C                          ; $3082: $C2 $8C $30

    ld a, b                                       ; $3085: $78
    cpl                                           ; $3086: $2F
    ld b, a                                       ; $3087: $47
    ld a, c                                       ; $3088: $79
    cpl                                           ; $3089: $2F
    ld c, a                                       ; $308A: $4F
    inc bc                                        ; $308B: $03

Jump_000_308C:
    push de                                       ; $308C: $D5
    ld hl, $0008                                  ; $308D: $21 $08 $00

Call_000_3090:
    add hl, de                                    ; $3090: $19
    push hl                                       ; $3091: $E5
    pop de                                        ; $3092: $D1
    push de                                       ; $3093: $D5
    ld a, [de]                                    ; $3094: $1A
    ld h, a                                       ; $3095: $67
    inc de                                        ; $3096: $13
    ld a, [de]                                    ; $3097: $1A
    ld l, a                                       ; $3098: $6F
    add hl, bc                                    ; $3099: $09
    pop de                                        ; $309A: $D1
    ld a, h                                       ; $309B: $7C
    ld [de], a                                    ; $309C: $12
    inc de                                        ; $309D: $13
    ld a, l                                       ; $309E: $7D
    ld [de], a                                    ; $309F: $12
    pop de                                        ; $30A0: $D1
    ld hl, $0008                                  ; $30A1: $21 $08 $00
    add hl, de                                    ; $30A4: $19
    ld b, [hl]                                    ; $30A5: $46
    inc hl                                        ; $30A6: $23
    ld c, [hl]                                    ; $30A7: $4E
    push bc                                       ; $30A8: $C5
    pop hl                                        ; $30A9: $E1

Call_000_30AA:
    call Call_000_2F0B                            ; $30AA: $CD $0B $2F
    pop de                                        ; $30AD: $D1
    pop bc                                        ; $30AE: $C1
    ret                                           ; $30AF: $C9


Call_000_30B0:
    call Call_000_30BD                            ; $30B0: $CD $BD $30
    ret c                                         ; $30B3: $D8

    call Call_000_3069                            ; $30B4: $CD $69 $30
    or a                                          ; $30B7: $B7
    ret                                           ; $30B8: $C9


    call Call_000_30BD                            ; $30B9: $CD $BD $30
    ret                                           ; $30BC: $C9


Call_000_30BD:
    push bc                                       ; $30BD: $C5
    push de                                       ; $30BE: $D5
    push hl                                       ; $30BF: $E5
    pop bc                                        ; $30C0: $C1
    ld hl, $0008                                  ; $30C1: $21 $08 $00
    add hl, de                                    ; $30C4: $19
    ld a, [hl]                                    ; $30C5: $7E
    or a                                          ; $30C6: $B7

Call_000_30C7:
    jr nz, jr_000_30D3                            ; $30C7: $20 $0A

    inc hl                                        ; $30C9: $23
    ld a, [hl]                                    ; $30CA: $7E
    dec hl                                        ; $30CB: $2B

Call_000_30CC:
    and $FF                                       ; $30CC: $E6 $FF

Call_000_30CE:
    jr nz, jr_000_30D3                            ; $30CE: $20 $03

    jp Jump_000_30F0                              ; $30D0: $C3 $F0 $30


jr_000_30D3:
    ld a, [hl]                                    ; $30D3: $7E
    bit 7, a                                      ; $30D4: $CB $7F
    jp nz, Jump_000_30E0                          ; $30D6: $C2 $E0 $30

    ld a, b                                       ; $30D9: $78
    cpl                                           ; $30DA: $2F
    ld b, a                                       ; $30DB: $47
    ld a, c                                       ; $30DC: $79
    cpl                                           ; $30DD: $2F
    ld c, a                                       ; $30DE: $4F

Jump_000_30DF:
    inc bc                                        ; $30DF: $03

Jump_000_30E0:
    push hl                                       ; $30E0: $E5

Call_000_30E1:
    ld d, [hl]                                    ; $30E1: $56
    inc hl                                        ; $30E2: $23
    ld e, [hl]                                    ; $30E3: $5E
    push de                                       ; $30E4: $D5
    pop hl                                        ; $30E5: $E1
    add hl, bc                                    ; $30E6: $09
    push hl                                       ; $30E7: $E5
    pop de                                        ; $30E8: $D1
    pop hl                                        ; $30E9: $E1
    ld [hl], d                                    ; $30EA: $72
    inc hl                                        ; $30EB: $23
    ld [hl], e                                    ; $30EC: $73
    jp Jump_000_30FB                              ; $30ED: $C3 $FB $30


Jump_000_30F0:
    pop de                                        ; $30F0: $D1
    pop bc                                        ; $30F1: $C1
    ld hl, $0008                                  ; $30F2: $21 $08 $00
    add hl, de                                    ; $30F5: $19
    xor a                                         ; $30F6: $AF
    ld [hl+], a                                   ; $30F7: $22
    ld [hl], a                                    ; $30F8: $77
    scf                                           ; $30F9: $37
    ret                                           ; $30FA: $C9


Jump_000_30FB:
    pop de                                        ; $30FB: $D1
    pop bc                                        ; $30FC: $C1
    or a                                          ; $30FD: $B7

Call_000_30FE:
    ret                                           ; $30FE: $C9


Call_000_30FF:
    push bc                                       ; $30FF: $C5
    push hl                                       ; $3100: $E5
    pop bc                                        ; $3101: $C1
    push de                                       ; $3102: $D5
    ld hl, $000A                                  ; $3103: $21 $0A $00
    add hl, de                                    ; $3106: $19
    push hl                                       ; $3107: $E5
    pop de                                        ; $3108: $D1
    push de                                       ; $3109: $D5
    ld a, [de]                                    ; $310A: $1A
    ld h, a                                       ; $310B: $67
    inc de                                        ; $310C: $13
    ld a, [de]                                    ; $310D: $1A
    ld l, a                                       ; $310E: $6F
    add hl, bc                                    ; $310F: $09

Jump_000_3110:
    pop de                                        ; $3110: $D1
    push de                                       ; $3111: $D5
    ld a, h                                       ; $3112: $7C
    ld [de], a                                    ; $3113: $12
    inc de                                        ; $3114: $13
    ld a, l                                       ; $3115: $7D
    ld [de], a                                    ; $3116: $12
    pop de                                        ; $3117: $D1
    push hl                                       ; $3118: $E5
    dec de                                        ; $3119: $1B
    dec de                                        ; $311A: $1B
    dec de                                        ; $311B: $1B
    dec de                                        ; $311C: $1B
    push de                                       ; $311D: $D5
    ld a, [de]                                    ; $311E: $1A
    ld b, a                                       ; $311F: $47
    inc de                                        ; $3120: $13
    ld a, [de]                                    ; $3121: $1A
    ld c, a                                       ; $3122: $4F
    add hl, bc                                    ; $3123: $09
    pop de                                        ; $3124: $D1
    ld a, h                                       ; $3125: $7C
    ld [de], a                                    ; $3126: $12
    inc de                                        ; $3127: $13
    ld a, l                                       ; $3128: $7D
    ld [de], a                                    ; $3129: $12
    pop hl                                        ; $312A: $E1
    bit 7, h                                      ; $312B: $CB $7C
    jp z, Jump_000_313E                           ; $312D: $CA $3E $31

Call_000_3130:
    dec de                                        ; $3130: $1B
    ld a, [de]                                    ; $3131: $1A
    cp $88                                        ; $3132: $FE $88
    jp c, Jump_000_3156                           ; $3134: $DA $56 $31

    xor a                                         ; $3137: $AF
    ld [de], a                                    ; $3138: $12
    inc de                                        ; $3139: $13
    ld [de], a                                    ; $313A: $12
    jp Jump_000_3156                              ; $313B: $C3 $56 $31


Jump_000_313E:
    dec de                                        ; $313E: $1B
    ld a, [de]                                    ; $313F: $1A
    cp $88                                        ; $3140: $FE $88
    jp c, Jump_000_3156                           ; $3142: $DA $56 $31

    pop de                                        ; $3145: $D1
    pop bc                                        ; $3146: $C1
    ld hl, $0006                                  ; $3147: $21 $06 $00
    add hl, de                                    ; $314A: $19
    ld [hl], $88                                  ; $314B: $36 $88
    inc hl                                        ; $314D: $23
    xor a                                         ; $314E: $AF
    ld [hl+], a                                   ; $314F: $22
    inc hl                                        ; $3150: $23
    inc hl                                        ; $3151: $23
    ld [hl+], a                                   ; $3152: $22
    ld [hl+], a                                   ; $3153: $22
    scf                                           ; $3154: $37
    ret                                           ; $3155: $C9


Jump_000_3156:
    pop de                                        ; $3156: $D1
    pop bc                                        ; $3157: $C1
    call Call_000_3069                            ; $3158: $CD $69 $30
    xor a                                         ; $315B: $AF
    ret                                           ; $315C: $C9


Call_000_315D:
    push bc                                       ; $315D: $C5
    push hl                                       ; $315E: $E5
    pop bc                                        ; $315F: $C1
    push de                                       ; $3160: $D5
    ld hl, $000A                                  ; $3161: $21 $0A $00
    add hl, de                                    ; $3164: $19
    push hl                                       ; $3165: $E5
    pop de                                        ; $3166: $D1
    push de                                       ; $3167: $D5
    ld a, [de]                                    ; $3168: $1A
    ld h, a                                       ; $3169: $67
    inc de                                        ; $316A: $13
    ld a, [de]                                    ; $316B: $1A
    ld l, a                                       ; $316C: $6F
    add hl, bc                                    ; $316D: $09
    pop de                                        ; $316E: $D1
    push de                                       ; $316F: $D5
    ld a, h                                       ; $3170: $7C
    ld [de], a                                    ; $3171: $12
    inc de                                        ; $3172: $13
    ld a, l                                       ; $3173: $7D
    ld [de], a                                    ; $3174: $12
    pop de                                        ; $3175: $D1
    push hl                                       ; $3176: $E5
    dec de                                        ; $3177: $1B
    dec de                                        ; $3178: $1B
    dec de                                        ; $3179: $1B
    dec de                                        ; $317A: $1B
    push de                                       ; $317B: $D5
    ld a, [de]                                    ; $317C: $1A
    ld b, a                                       ; $317D: $47
    inc de                                        ; $317E: $13
    ld a, [de]                                    ; $317F: $1A
    ld c, a                                       ; $3180: $4F
    add hl, bc                                    ; $3181: $09
    pop de                                        ; $3182: $D1
    ld a, h                                       ; $3183: $7C
    ld [de], a                                    ; $3184: $12
    inc de                                        ; $3185: $13
    ld a, l                                       ; $3186: $7D
    ld [de], a                                    ; $3187: $12
    pop hl                                        ; $3188: $E1
    bit 7, h                                      ; $3189: $CB $7C
    jp z, Jump_000_319C                           ; $318B: $CA $9C $31

    dec de                                        ; $318E: $1B
    ld a, [de]                                    ; $318F: $1A
    cp $88                                        ; $3190: $FE $88
    jp c, Jump_000_31B2                           ; $3192: $DA $B2 $31

    xor a                                         ; $3195: $AF
    ld [de], a                                    ; $3196: $12
    inc de                                        ; $3197: $13
    ld [de], a                                    ; $3198: $12
    jp Jump_000_31B2                              ; $3199: $C3 $B2 $31


Jump_000_319C:
    dec de                                        ; $319C: $1B
    ld a, [de]                                    ; $319D: $1A
    cp $88                                        ; $319E: $FE $88
    jp c, Jump_000_31B2                           ; $31A0: $DA $B2 $31

    pop de                                        ; $31A3: $D1
    pop bc                                        ; $31A4: $C1
    ld hl, $0006                                  ; $31A5: $21 $06 $00
    add hl, de                                    ; $31A8: $19
    ld [hl], $88                                  ; $31A9: $36 $88
    inc hl                                        ; $31AB: $23
    xor a                                         ; $31AC: $AF
    ld [hl+], a                                   ; $31AD: $22
    inc hl                                        ; $31AE: $23
    inc hl                                        ; $31AF: $23
    scf                                           ; $31B0: $37
    ret                                           ; $31B1: $C9


Jump_000_31B2:
    pop de                                        ; $31B2: $D1
    pop bc                                        ; $31B3: $C1
    xor a                                         ; $31B4: $AF
    ret                                           ; $31B5: $C9


Call_000_31B6:
    ld hl, $003F                                  ; $31B6: $21 $3F $00
    add hl, bc                                    ; $31B9: $09
    ld a, [hl]                                    ; $31BA: $7E
    or a                                          ; $31BB: $B7
    jp nz, Jump_000_3207                          ; $31BC: $C2 $07 $32

    ld hl, $0020                                  ; $31BF: $21 $20 $00
    add hl, bc                                    ; $31C2: $09
    bit 1, [hl]                                   ; $31C3: $CB $4E
    jp nz, Jump_000_3207                          ; $31C5: $C2 $07 $32

    inc hl                                        ; $31C8: $23
    bit 3, [hl]                                   ; $31C9: $CB $5E
    jp nz, Jump_000_31D9                          ; $31CB: $C2 $D9 $31

    bit 4, [hl]                                   ; $31CE: $CB $66
    jp nz, Jump_000_3207                          ; $31D0: $C2 $07 $32

    call Call_000_3973                            ; $31D3: $CD $73 $39
    jp nz, Jump_000_3207                          ; $31D6: $C2 $07 $32

Jump_000_31D9:
    ld hl, $003C                                  ; $31D9: $21 $3C $00
    add hl, bc                                    ; $31DC: $09
    ld a, [hl]                                    ; $31DD: $7E
    cp $4E                                        ; $31DE: $FE $4E
    jp z, Jump_000_3207                           ; $31E0: $CA $07 $32

    cp $50                                        ; $31E3: $FE $50
    jp z, Jump_000_3207                           ; $31E5: $CA $07 $32

    ld hl, $0021                                  ; $31E8: $21 $21 $00
    add hl, bc                                    ; $31EB: $09
    bit 6, [hl]                                   ; $31EC: $CB $76
    jp nz, Jump_000_31F6                          ; $31EE: $C2 $F6 $31

    bit 2, [hl]                                   ; $31F1: $CB $56
    jp nz, Jump_000_3207                          ; $31F3: $C2 $07 $32

Jump_000_31F6:
    xor a                                         ; $31F6: $AF
    call Call_000_2641                            ; $31F7: $CD $41 $26
    jp z, Jump_000_3202                           ; $31FA: $CA $02 $32

    ld a, $01                                     ; $31FD: $3E $01
    jp Jump_000_3203                              ; $31FF: $C3 $03 $32


Jump_000_3202:
    xor a                                         ; $3202: $AF

Jump_000_3203:
    or a                                          ; $3203: $B7
    scf                                           ; $3204: $37
    ccf                                           ; $3205: $3F
    ret                                           ; $3206: $C9


Jump_000_3207:
    scf                                           ; $3207: $37
    ret                                           ; $3208: $C9


Call_000_3209:
    ld a, [$C001]                                 ; $3209: $FA $01 $C0
    bit 3, a                                      ; $320C: $CB $5F
    jp z, Jump_000_3228                           ; $320E: $CA $28 $32

    ld hl, $0062                                  ; $3211: $21 $62 $00
    add hl, bc                                    ; $3214: $09
    ld a, [hl]                                    ; $3215: $7E
    cp $10                                        ; $3216: $FE $10
    jp nz, Jump_000_3251                          ; $3218: $C2 $51 $32

    ld hl, $0060                                  ; $321B: $21 $60 $00
    add hl, bc                                    ; $321E: $09
    ld a, [hl]                                    ; $321F: $7E
    cp $13                                        ; $3220: $FE $13
    jp c, Jump_000_3259                           ; $3222: $DA $59 $32

    jp Jump_000_3255                              ; $3225: $C3 $55 $32


Jump_000_3228:
    ld hl, $0030                                  ; $3228: $21 $30 $00
    add hl, bc                                    ; $322B: $09
    ld a, [hl]                                    ; $322C: $7E
    or a                                          ; $322D: $B7
    jp nz, Jump_000_325E                          ; $322E: $C2 $5E $32

    ld hl, $0062                                  ; $3231: $21 $62 $00
    add hl, bc                                    ; $3234: $09
    ld a, [hl]                                    ; $3235: $7E
    cp $10                                        ; $3236: $FE $10
    jp z, Jump_000_3247                           ; $3238: $CA $47 $32

    ld hl, $0060                                  ; $323B: $21 $60 $00
    add hl, bc                                    ; $323E: $09
    ld a, [hl]                                    ; $323F: $7E
    cp $13                                        ; $3240: $FE $13
    jp c, Jump_000_3251                           ; $3242: $DA $51 $32

    jr jr_000_325E                                ; $3245: $18 $17

Jump_000_3247:
    ld hl, $0060                                  ; $3247: $21 $60 $00
    add hl, bc                                    ; $324A: $09
    ld a, [hl]                                    ; $324B: $7E
    cp $13                                        ; $324C: $FE $13
    jp c, Jump_000_3255                           ; $324E: $DA $55 $32

Jump_000_3251:
    ld a, $01                                     ; $3251: $3E $01
    jr jr_000_325B                                ; $3253: $18 $06

Jump_000_3255:
    ld a, $02                                     ; $3255: $3E $02
    jr jr_000_325B                                ; $3257: $18 $02

Jump_000_3259:
    ld a, $03                                     ; $3259: $3E $03

jr_000_325B:
    scf                                           ; $325B: $37
    ccf                                           ; $325C: $3F
    ret                                           ; $325D: $C9


Jump_000_325E:
jr_000_325E:
    ld a, $00                                     ; $325E: $3E $00

Call_000_3260:
    scf                                           ; $3260: $37
    ret                                           ; $3261: $C9


Call_000_3262:
    ld hl, $0072                                  ; $3262: $21 $72 $00
    add hl, bc                                    ; $3265: $09

Call_000_3266:
    bit 1, [hl]                                   ; $3266: $CB $4E
    jr z, jr_000_32A0                             ; $3268: $28 $36

    jr jr_000_3274                                ; $326A: $18 $08

Call_000_326C:
    ld hl, $007D                                  ; $326C: $21 $7D $00
    add hl, bc                                    ; $326F: $09
    bit 3, [hl]                                   ; $3270: $CB $5E
    jr nz, jr_000_32A0                            ; $3272: $20 $2C

jr_000_3274:
    ld hl, $0083                                  ; $3274: $21 $83 $00
    add hl, bc                                    ; $3277: $09
    ld a, [hl]                                    ; $3278: $7E
    cp $02                                        ; $3279: $FE $02
    jr nz, jr_000_3290                            ; $327B: $20 $13

    ld hl, $0020                                  ; $327D: $21 $20 $00
    add hl, bc                                    ; $3280: $09
    bit 6, [hl]                                   ; $3281: $CB $76
    jr z, jr_000_32A0                             ; $3283: $28 $1B

    ld hl, $0072                                  ; $3285: $21 $72 $00
    add hl, bc                                    ; $3288: $09
    bit 1, [hl]                                   ; $3289: $CB $4E
    jr z, jr_000_32A0                             ; $328B: $28 $13

    xor a                                         ; $328D: $AF
    jr jr_000_329E                                ; $328E: $18 $0E

jr_000_3290:
    ld hl, $007E                                  ; $3290: $21 $7E $00
    add hl, bc                                    ; $3293: $09
    bit 7, [hl]                                   ; $3294: $CB $7E
    jr nz, jr_000_32A0                            ; $3296: $20 $08

    bit 4, [hl]                                   ; $3298: $CB $66
    jr z, jr_000_32A0                             ; $329A: $28 $04

    bit 3, [hl]                                   ; $329C: $CB $5E

jr_000_329E:
    scf                                           ; $329E: $37
    ret                                           ; $329F: $C9


jr_000_32A0:
    scf                                           ; $32A0: $37
    ccf                                           ; $32A1: $3F
    ret                                           ; $32A2: $C9


Call_000_32A3:
    ld hl, $0083                                  ; $32A3: $21 $83 $00
    add hl, bc                                    ; $32A6: $09
    ld a, [hl]                                    ; $32A7: $7E
    cp $02                                        ; $32A8: $FE $02
    jr z, jr_000_32C2                             ; $32AA: $28 $16

    ld hl, $0086                                  ; $32AC: $21 $86 $00
    add hl, bc                                    ; $32AF: $09
    ld a, [hl]                                    ; $32B0: $7E
    cp $0B                                        ; $32B1: $FE $0B
    jp z, Jump_000_32C2                           ; $32B3: $CA $C2 $32

    cp $0C                                        ; $32B6: $FE $0C
    jp z, Jump_000_32C2                           ; $32B8: $CA $C2 $32

    cp $0D                                        ; $32BB: $FE $0D
    jp z, Jump_000_32C2                           ; $32BD: $CA $C2 $32

    scf                                           ; $32C0: $37
    ret                                           ; $32C1: $C9


Jump_000_32C2:
jr_000_32C2:
    scf                                           ; $32C2: $37
    ccf                                           ; $32C3: $3F
    ret                                           ; $32C4: $C9


Call_000_32C5:
    ld hl, $0020                                  ; $32C5: $21 $20 $00
    add hl, bc                                    ; $32C8: $09
    bit 0, [hl]                                   ; $32C9: $CB $46
    ret                                           ; $32CB: $C9


Call_000_32CC:
    ld hl, $0030                                  ; $32CC: $21 $30 $00
    add hl, bc                                    ; $32CF: $09
    ld a, [hl]                                    ; $32D0: $7E
    or a                                          ; $32D1: $B7
    jr z, jr_000_32D7                             ; $32D2: $28 $03

    scf                                           ; $32D4: $37
    jr jr_000_32D9                                ; $32D5: $18 $02

jr_000_32D7:
    scf                                           ; $32D7: $37
    ccf                                           ; $32D8: $3F

jr_000_32D9:
    push af                                       ; $32D9: $F5
    ld hl, $0022                                  ; $32DA: $21 $22 $00
    add hl, bc                                    ; $32DD: $09
    pop af                                        ; $32DE: $F1
    bit 1, [hl]                                   ; $32DF: $CB $4E
    ret                                           ; $32E1: $C9


Call_000_32E2:
    push af                                       ; $32E2: $F5
    pop af                                        ; $32E3: $F1
    call Call_000_2E12                            ; $32E4: $CD $12 $2E
    push af                                       ; $32E7: $F5
    ld hl, $003C                                  ; $32E8: $21 $3C $00
    add hl, bc                                    ; $32EB: $09
    ld a, [hl]                                    ; $32EC: $7E
    cp $1C                                        ; $32ED: $FE $1C

Call_000_32EF:
    jr nz, jr_000_32F7                            ; $32EF: $20 $06

    ld hl, $0043                                  ; $32F1: $21 $43 $00
    add hl, bc                                    ; $32F4: $09
    ld [hl], $02                                  ; $32F5: $36 $02

jr_000_32F7:
    pop af                                        ; $32F7: $F1
    ld hl, $0021                                  ; $32F8: $21 $21 $00
    add hl, bc                                    ; $32FB: $09
    res 7, [hl]                                   ; $32FC: $CB $BE
    dec hl                                        ; $32FE: $2B
    cp $4A                                        ; $32FF: $FE $4A
    jp c, Jump_000_3316                           ; $3301: $DA $16 $33

    set 6, [hl]                                   ; $3304: $CB $F6
    push af                                       ; $3306: $F5
    push hl                                       ; $3307: $E5
    inc hl                                        ; $3308: $23
    set 7, [hl]                                   ; $3309: $CB $FE
    call Call_000_2DA2                            ; $330B: $CD $A2 $2D
    ld hl, $0000                                  ; $330E: $21 $00 $00

Call_000_3311:
    call Call_000_338A                            ; $3311: $CD $8A $33
    pop hl                                        ; $3314: $E1
    pop af                                        ; $3315: $F1

Jump_000_3316:
    set 1, [hl]                                   ; $3316: $CB $CE
    inc hl                                        ; $3318: $23
    set 0, [hl]                                   ; $3319: $CB $C6
    set 1, [hl]                                   ; $331B: $CB $CE
    set 2, [hl]                                   ; $331D: $CB $D6
    res 3, [hl]                                   ; $331F: $CB $9E
    res 4, [hl]                                   ; $3321: $CB $A6
    res 5, [hl]                                   ; $3323: $CB $AE
    inc hl                                        ; $3325: $23
    res 6, [hl]                                   ; $3326: $CB $B6
    res 7, [hl]                                   ; $3328: $CB $BE
    push hl                                       ; $332A: $E5
    call Call_000_2E6E                            ; $332B: $CD $6E $2E
    pop hl                                        ; $332E: $E1
    dec hl                                        ; $332F: $2B
    bit 6, [hl]                                   ; $3330: $CB $76
    jp z, Jump_000_3352                           ; $3332: $CA $52 $33

    inc hl                                        ; $3335: $23
    set 2, [hl]                                   ; $3336: $CB $D6
    ld hl, $0043                                  ; $3338: $21 $43 $00
    add hl, bc                                    ; $333B: $09
    ld [hl], $01                                  ; $333C: $36 $01
    ld hl, $001C                                  ; $333E: $21 $1C $00
    add hl, de                                    ; $3341: $19
    ld a, [hl]                                    ; $3342: $7E
    bit 7, a                                      ; $3343: $CB $7F
    jr nz, jr_000_3352                            ; $3345: $20 $0B

    ld a, [$C2E2]                                 ; $3347: $FA $E2 $C2
    or a                                          ; $334A: $B7
    jr nz, jr_000_3352                            ; $334B: $20 $05

    ld [hl], $00                                  ; $334D: $36 $00
    inc hl                                        ; $334F: $23
    ld [hl], $00                                  ; $3350: $36 $00

Jump_000_3352:
jr_000_3352:
    ret                                           ; $3352: $C9


Call_000_3353:
    push de                                       ; $3353: $D5
    ld d, a                                       ; $3354: $57
    ld hl, $0065                                  ; $3355: $21 $65 $00
    add hl, bc                                    ; $3358: $09
    ld a, [hl]                                    ; $3359: $7E
    cp $00                                        ; $335A: $FE $00
    jr nz, jr_000_3371                            ; $335C: $20 $13

    ld hl, $0062                                  ; $335E: $21 $62 $00
    add hl, bc                                    ; $3361: $09
    ld a, [hl]                                    ; $3362: $7E
    cp $10                                        ; $3363: $FE $10
    jr z, jr_000_3371                             ; $3365: $28 $0A

    add d                                         ; $3367: $82
    cp $10                                        ; $3368: $FE $10
    jr nc, jr_000_336F                            ; $336A: $30 $03

    ld [hl], a                                    ; $336C: $77
    jr jr_000_3371                                ; $336D: $18 $02

jr_000_336F:
    ld [hl], $10                                  ; $336F: $36 $10

jr_000_3371:
    pop de                                        ; $3371: $D1
    ret                                           ; $3372: $C9


Call_000_3373:
    push de                                       ; $3373: $D5
    ld d, a                                       ; $3374: $57
    ld hl, $0060                                  ; $3375: $21 $60 $00
    add hl, bc                                    ; $3378: $09
    ld a, [hl]                                    ; $3379: $7E
    cp $36                                        ; $337A: $FE $36
    jr z, jr_000_3388                             ; $337C: $28 $0A

    add d                                         ; $337E: $82
    cp $36                                        ; $337F: $FE $36
    jr nc, jr_000_3386                            ; $3381: $30 $03

    ld [hl], a                                    ; $3383: $77
    jr jr_000_3388                                ; $3384: $18 $02

jr_000_3386:
    ld [hl], $36                                  ; $3386: $36 $36

jr_000_3388:
    pop de                                        ; $3388: $D1
    ret                                           ; $3389: $C9


Call_000_338A:
    ld a, $AD                                     ; $338A: $3E $AD
    call Call_000_1360                            ; $338C: $CD $60 $13
    push bc                                       ; $338F: $C5
    push de                                       ; $3390: $D5
    push hl                                       ; $3391: $E5
    push de                                       ; $3392: $D5
    pop bc                                        ; $3393: $C1
    ld hl, $0180                                  ; $3394: $21 $80 $01
    add hl, bc                                    ; $3397: $09
    push hl                                       ; $3398: $E5
    pop de                                        ; $3399: $D1
    ld [hl], $80                                  ; $339A: $36 $80
    ld hl, $0021                                  ; $339C: $21 $21 $00
    add hl, de                                    ; $339F: $19
    ld [hl], $02                                  ; $33A0: $36 $02
    inc hl                                        ; $33A2: $23
    ld [hl], $16                                  ; $33A3: $36 $16
    inc hl                                        ; $33A5: $23
    ld [hl], $4A                                  ; $33A6: $36 $4A
    ld hl, $0011                                  ; $33A8: $21 $11 $00
    add hl, de                                    ; $33AB: $19
    ld [hl], $02                                  ; $33AC: $36 $02
    inc hl                                        ; $33AE: $23
    ld [hl], $08                                  ; $33AF: $36 $08
    inc hl                                        ; $33B1: $23
    ld [hl], $63                                  ; $33B2: $36 $63
    inc hl                                        ; $33B4: $23
    ld [hl], $00                                  ; $33B5: $36 $00
    ld hl, $001C                                  ; $33B7: $21 $1C $00
    add hl, de                                    ; $33BA: $19
    ld [hl], $00                                  ; $33BB: $36 $00
    inc hl                                        ; $33BD: $23
    ld [hl], $00                                  ; $33BE: $36 $00
    ld hl, $002A                                  ; $33C0: $21 $2A $00
    add hl, de                                    ; $33C3: $19
    ld [hl], $10                                  ; $33C4: $36 $10
    ld hl, $000E                                  ; $33C6: $21 $0E $00
    add hl, de                                    ; $33C9: $19
    ld [hl], $CC                                  ; $33CA: $36 $CC

Call_000_33CC:
    call Call_000_2614                            ; $33CC: $CD $14 $26

Call_000_33CF:
Jump_000_33CF:
    pop hl                                        ; $33CF: $E1
    push hl                                       ; $33D0: $E5
    ld l, $00                                     ; $33D1: $2E $00
    call Call_000_2F79                            ; $33D3: $CD $79 $2F
    pop hl                                        ; $33D6: $E1
    ld h, l                                       ; $33D7: $65
    ld l, $00                                     ; $33D8: $2E $00
    call Call_000_2F42                            ; $33DA: $CD $42 $2F
    pop de                                        ; $33DD: $D1
    pop bc                                        ; $33DE: $C1
    ret                                           ; $33DF: $C9


Call_000_33E0:
    ld a, $AD                                     ; $33E0: $3E $AD
    call Call_000_1360                            ; $33E2: $CD $60 $13
    push bc                                       ; $33E5: $C5
    push de                                       ; $33E6: $D5
    push hl                                       ; $33E7: $E5
    call Call_000_25E1                            ; $33E8: $CD $E1 $25
    ld hl, $0021                                  ; $33EB: $21 $21 $00
    add hl, de                                    ; $33EE: $19
    ld [hl], $02                                  ; $33EF: $36 $02
    inc hl                                        ; $33F1: $23
    ld [hl], $37                                  ; $33F2: $36 $37
    inc hl                                        ; $33F4: $23
    ld [hl], $4A                                  ; $33F5: $36 $4A
    ld hl, $0011                                  ; $33F7: $21 $11 $00
    add hl, de                                    ; $33FA: $19
    ld [hl], $02                                  ; $33FB: $36 $02

Call_000_33FD:
    inc hl                                        ; $33FD: $23
    ld [hl], $8E                                  ; $33FE: $36 $8E
    inc hl                                        ; $3400: $23
    ld [hl], $63                                  ; $3401: $36 $63
    inc hl                                        ; $3403: $23

Jump_000_3404:
    ld [hl], $00                                  ; $3404: $36 $00
    ld hl, $001C                                  ; $3406: $21 $1C $00
    add hl, de                                    ; $3409: $19
    ld [hl], $00                                  ; $340A: $36 $00
    inc hl                                        ; $340C: $23
    ld [hl], $00                                  ; $340D: $36 $00
    ld hl, $0029                                  ; $340F: $21 $29 $00
    add hl, de                                    ; $3412: $19
    ld [hl], $02                                  ; $3413: $36 $02
    ld hl, $000E                                  ; $3415: $21 $0E $00
    add hl, de                                    ; $3418: $19
    ld [hl], $CC                                  ; $3419: $36 $CC
    call Call_000_2614                            ; $341B: $CD $14 $26
    pop hl                                        ; $341E: $E1
    push hl                                       ; $341F: $E5

Jump_000_3420:
    ld l, $00                                     ; $3420: $2E $00
    call Call_000_2F79                            ; $3422: $CD $79 $2F
    pop hl                                        ; $3425: $E1
    ld h, l                                       ; $3426: $65

Jump_000_3427:
    ld l, $00                                     ; $3427: $2E $00
    call Call_000_2F42                            ; $3429: $CD $42 $2F
    ld hl, $0100                                  ; $342C: $21 $00 $01
    call Call_000_2FEB                            ; $342F: $CD $EB $2F
    ld hl, $0000                                  ; $3432: $21 $00 $00
    call Call_000_305D                            ; $3435: $CD $5D $30
    pop de                                        ; $3438: $D1
    pop bc                                        ; $3439: $C1
    ret                                           ; $343A: $C9


Call_000_343B:
    ld a, $AD                                     ; $343B: $3E $AD
    call Call_000_1360                            ; $343D: $CD $60 $13
    push bc                                       ; $3440: $C5
    push de                                       ; $3441: $D5
    push hl                                       ; $3442: $E5
    push de                                       ; $3443: $D5
    pop bc                                        ; $3444: $C1
    ld hl, $0180                                  ; $3445: $21 $80 $01
    add hl, bc                                    ; $3448: $09
    push hl                                       ; $3449: $E5
    pop de                                        ; $344A: $D1
    ld [hl], $80                                  ; $344B: $36 $80
    ld hl, $0021                                  ; $344D: $21 $21 $00
    add hl, de                                    ; $3450: $19
    ld [hl], $02                                  ; $3451: $36 $02
    inc hl                                        ; $3453: $23
    ld [hl], $26                                  ; $3454: $36 $26
    inc hl                                        ; $3456: $23
    ld [hl], $4A                                  ; $3457: $36 $4A
    ld hl, $0011                                  ; $3459: $21 $11 $00
    add hl, de                                    ; $345C: $19
    ld [hl], $02                                  ; $345D: $36 $02
    inc hl                                        ; $345F: $23
    ld [hl], $6C                                  ; $3460: $36 $6C
    inc hl                                        ; $3462: $23
    ld [hl], $63                                  ; $3463: $36 $63
    inc hl                                        ; $3465: $23
    ld [hl], $00                                  ; $3466: $36 $00
    ld hl, $001C                                  ; $3468: $21 $1C $00
    add hl, de                                    ; $346B: $19
    ld [hl], $00                                  ; $346C: $36 $00
    inc hl                                        ; $346E: $23
    ld [hl], $00                                  ; $346F: $36 $00
    ld hl, $000E                                  ; $3471: $21 $0E $00
    add hl, de                                    ; $3474: $19
    ld [hl], $CC                                  ; $3475: $36 $CC
    call Call_000_2614                            ; $3477: $CD $14 $26
    pop hl                                        ; $347A: $E1
    push hl                                       ; $347B: $E5
    ld l, $00                                     ; $347C: $2E $00
    call Call_000_2F79                            ; $347E: $CD $79 $2F
    pop hl                                        ; $3481: $E1
    ld h, l                                       ; $3482: $65
    ld l, $00                                     ; $3483: $2E $00
    call Call_000_2F42                            ; $3485: $CD $42 $2F
    pop de                                        ; $3488: $D1
    pop bc                                        ; $3489: $C1
    ret                                           ; $348A: $C9


Call_000_348B:
    ld a, $01                                     ; $348B: $3E $01
    ld [$C2EB], a                                 ; $348D: $EA $EB $C2
    ld a, $1B                                     ; $3490: $3E $1B
    call Call_000_1360                            ; $3492: $CD $60 $13
    ret                                           ; $3495: $C9


Call_000_3496:
    push de                                       ; $3496: $D5
    push hl                                       ; $3497: $E5
    pop de                                        ; $3498: $D1
    ld hl, $0050                                  ; $3499: $21 $50 $00
    add hl, bc                                    ; $349C: $09
    ld [hl], d                                    ; $349D: $72
    inc hl                                        ; $349E: $23
    ld [hl], e                                    ; $349F: $73
    pop de                                        ; $34A0: $D1
    ret                                           ; $34A1: $C9


Call_000_34A2:
    push de                                       ; $34A2: $D5
    push hl                                       ; $34A3: $E5
    pop de                                        ; $34A4: $D1
    ld hl, $0046                                  ; $34A5: $21 $46 $00
    add hl, bc                                    ; $34A8: $09
    ld [hl], d                                    ; $34A9: $72
    inc hl                                        ; $34AA: $23
    ld [hl], e                                    ; $34AB: $73
    inc hl                                        ; $34AC: $23
    ld [hl], a                                    ; $34AD: $77
    inc hl                                        ; $34AE: $23
    ld [hl], $00                                  ; $34AF: $36 $00
    pop de                                        ; $34B1: $D1
    ret                                           ; $34B2: $C9


Call_000_34B3:
    push de                                       ; $34B3: $D5
    push hl                                       ; $34B4: $E5
    pop de                                        ; $34B5: $D1
    ld hl, $004C                                  ; $34B6: $21 $4C $00
    add hl, bc                                    ; $34B9: $09
    ld [hl], d                                    ; $34BA: $72
    inc hl                                        ; $34BB: $23
    ld [hl], e                                    ; $34BC: $73
    inc hl                                        ; $34BD: $23
    ld [hl], a                                    ; $34BE: $77
    inc hl                                        ; $34BF: $23
    ld [hl], $00                                  ; $34C0: $36 $00
    pop de                                        ; $34C2: $D1
    ret                                           ; $34C3: $C9


Call_000_34C4:
    push de                                       ; $34C4: $D5
    push hl                                       ; $34C5: $E5
    ld hl, $0080                                  ; $34C6: $21 $80 $00
    add hl, de                                    ; $34C9: $19
    push hl                                       ; $34CA: $E5
    pop de                                        ; $34CB: $D1
    pop hl                                        ; $34CC: $E1
    call Call_000_34E0                            ; $34CD: $CD $E0 $34
    pop de                                        ; $34D0: $D1
    ret                                           ; $34D1: $C9


Call_000_34D2:
    push de                                       ; $34D2: $D5
    push hl                                       ; $34D3: $E5
    ld hl, $0100                                  ; $34D4: $21 $00 $01
    add hl, de                                    ; $34D7: $19
    push hl                                       ; $34D8: $E5
    pop de                                        ; $34D9: $D1
    pop hl                                        ; $34DA: $E1
    call Call_000_34E0                            ; $34DB: $CD $E0 $34
    pop de                                        ; $34DE: $D1
    ret                                           ; $34DF: $C9


Call_000_34E0:
    push bc                                       ; $34E0: $C5
    push hl                                       ; $34E1: $E5
    pop bc                                        ; $34E2: $C1
    ld hl, $0024                                  ; $34E3: $21 $24 $00
    add hl, de                                    ; $34E6: $19
    ld [hl], b                                    ; $34E7: $70
    inc hl                                        ; $34E8: $23
    ld [hl], c                                    ; $34E9: $71
    inc hl                                        ; $34EA: $23
    ld [hl], a                                    ; $34EB: $77
    inc hl                                        ; $34EC: $23
    ld [hl], $00                                  ; $34ED: $36 $00
    pop bc                                        ; $34EF: $C1
    ret                                           ; $34F0: $C9


Call_000_34F1:
    push bc                                       ; $34F1: $C5
    ld hl, $004C                                  ; $34F2: $21 $4C $00
    add hl, bc                                    ; $34F5: $09
    push hl                                       ; $34F6: $E5
    pop bc                                        ; $34F7: $C1
    ld hl, $00A4                                  ; $34F8: $21 $A4 $00
    add hl, de                                    ; $34FB: $19
    jr jr_000_3509                                ; $34FC: $18 $0B

Call_000_34FE:
    push bc                                       ; $34FE: $C5

Call_000_34FF:
Jump_000_34FF:
    ld hl, $004C                                  ; $34FF: $21 $4C $00
    add hl, bc                                    ; $3502: $09
    push hl                                       ; $3503: $E5
    pop bc                                        ; $3504: $C1
    ld hl, $0124                                  ; $3505: $21 $24 $01
    add hl, de                                    ; $3508: $19

jr_000_3509:
    ld a, [bc]                                    ; $3509: $0A
    inc bc                                        ; $350A: $03
    ld [hl+], a                                   ; $350B: $22
    ld a, [bc]                                    ; $350C: $0A
    inc bc                                        ; $350D: $03

Call_000_350E:
    ld [hl+], a                                   ; $350E: $22
    ld a, [bc]                                    ; $350F: $0A
    inc bc                                        ; $3510: $03
    ld [hl+], a                                   ; $3511: $22
    ld a, [bc]                                    ; $3512: $0A
    inc bc                                        ; $3513: $03
    ld [hl+], a                                   ; $3514: $22
    pop bc                                        ; $3515: $C1
    ret                                           ; $3516: $C9


Call_000_3517:
    push de                                       ; $3517: $D5
    push bc                                       ; $3518: $C5
    ld hl, $0011                                  ; $3519: $21 $11 $00
    add hl, de                                    ; $351C: $19
    ld b, [hl]                                    ; $351D: $46
    inc hl                                        ; $351E: $23
    ld c, [hl]                                    ; $351F: $4E
    inc hl                                        ; $3520: $23
    ld d, [hl]                                    ; $3521: $56
    inc hl                                        ; $3522: $23
    inc hl                                        ; $3523: $23
    ld a, [hl+]                                   ; $3524: $2A
    cp b                                          ; $3525: $B8
    jr nz, jr_000_357F                            ; $3526: $20 $57

    ld a, [hl+]                                   ; $3528: $2A
    cp c                                          ; $3529: $B9
    jr nz, jr_000_357F                            ; $352A: $20 $53

    ld a, [hl+]                                   ; $352C: $2A
    cp d                                          ; $352D: $BA
    jr nz, jr_000_357F                            ; $352E: $20 $4F

    pop bc                                        ; $3530: $C1
    pop de                                        ; $3531: $D1
    ld hl, $0022                                  ; $3532: $21 $22 $00
    add hl, bc                                    ; $3535: $09
    bit 0, [hl]                                   ; $3536: $CB $46
    jr z, jr_000_357D                             ; $3538: $28 $43

    ld hl, $0000                                  ; $353A: $21 $00 $00
    add hl, de                                    ; $353D: $19
    bit 0, [hl]                                   ; $353E: $CB $46
    jp nz, Jump_000_3581                          ; $3540: $C2 $81 $35

    ld hl, $0022                                  ; $3543: $21 $22 $00
    add hl, bc                                    ; $3546: $09
    res 0, [hl]                                   ; $3547: $CB $86
    ld hl, $004C                                  ; $3549: $21 $4C $00
    add hl, bc                                    ; $354C: $09
    ld a, [hl]                                    ; $354D: $7E
    or a                                          ; $354E: $B7
    jp z, Jump_000_357D                           ; $354F: $CA $7D $35

    push de                                       ; $3552: $D5
    push hl                                       ; $3553: $E5
    ld hl, $0046                                  ; $3554: $21 $46 $00
    add hl, bc                                    ; $3557: $09
    push hl                                       ; $3558: $E5
    pop de                                        ; $3559: $D1
    pop hl                                        ; $355A: $E1
    ld [de], a                                    ; $355B: $12
    ld [hl], $00                                  ; $355C: $36 $00
    inc de                                        ; $355E: $13
    inc hl                                        ; $355F: $23
    ld a, [hl]                                    ; $3560: $7E
    ld [de], a                                    ; $3561: $12
    ld [hl], $00                                  ; $3562: $36 $00
    inc de                                        ; $3564: $13
    inc hl                                        ; $3565: $23
    ld a, [hl]                                    ; $3566: $7E
    ld [de], a                                    ; $3567: $12
    ld [hl], $00                                  ; $3568: $36 $00
    inc de                                        ; $356A: $13
    inc hl                                        ; $356B: $23
    ld a, [hl]                                    ; $356C: $7E
    ld [de], a                                    ; $356D: $12
    ld [hl], $00                                  ; $356E: $36 $00
    inc de                                        ; $3570: $13
    inc hl                                        ; $3571: $23
    ld a, [hl]                                    ; $3572: $7E
    ld [de], a                                    ; $3573: $12
    ld [hl], $00                                  ; $3574: $36 $00
    inc de                                        ; $3576: $13
    inc hl                                        ; $3577: $23
    ld a, [hl]                                    ; $3578: $7E
    ld [de], a                                    ; $3579: $12
    ld [hl], $00                                  ; $357A: $36 $00
    pop de                                        ; $357C: $D1

Jump_000_357D:
jr_000_357D:
    or a                                          ; $357D: $B7
    ret                                           ; $357E: $C9


jr_000_357F:
    pop bc                                        ; $357F: $C1
    pop de                                        ; $3580: $D1

Jump_000_3581:
    scf                                           ; $3581: $37
    ret                                           ; $3582: $C9


Call_000_3583:
    ld a, [$C2E2]                                 ; $3583: $FA $E2 $C2
    cp $00                                        ; $3586: $FE $00
    jp nz, Jump_000_36B3                          ; $3588: $C2 $B3 $36

    ld hl, $0093                                  ; $358B: $21 $93 $00
    add hl, bc                                    ; $358E: $09
    ld a, [hl]                                    ; $358F: $7E
    or a                                          ; $3590: $B7
    jp nz, Jump_000_36B3                          ; $3591: $C2 $B3 $36

    ld hl, $002F                                  ; $3594: $21 $2F $00
    add hl, bc                                    ; $3597: $09
    bit 1, [hl]                                   ; $3598: $CB $4E
    jp nz, Jump_000_36B3                          ; $359A: $C2 $B3 $36

    ld hl, $0083                                  ; $359D: $21 $83 $00
    add hl, bc                                    ; $35A0: $09
    bit 1, [hl]                                   ; $35A1: $CB $4E
    jp nz, Jump_000_36B3                          ; $35A3: $C2 $B3 $36

    ld hl, $007E                                  ; $35A6: $21 $7E $00

Jump_000_35A9:
    add hl, bc                                    ; $35A9: $09
    bit 4, [hl]                                   ; $35AA: $CB $66
    jp nz, Jump_000_36B3                          ; $35AC: $C2 $B3 $36

    ld hl, $0087                                  ; $35AF: $21 $87 $00
    add hl, bc                                    ; $35B2: $09
    ld a, [hl]                                    ; $35B3: $7E
    or a                                          ; $35B4: $B7
    jr z, jr_000_35CB                             ; $35B5: $28 $14

    ld hl, $002D                                  ; $35B7: $21 $2D $00
    add hl, bc                                    ; $35BA: $09
    ld a, [hl]                                    ; $35BB: $7E
    or a                                          ; $35BC: $B7
    jr nz, jr_000_35C4                            ; $35BD: $20 $05

    ld a, [$D6DA]                                 ; $35BF: $FA $DA $D6
    jr jr_000_35C7                                ; $35C2: $18 $03

jr_000_35C4:
    ld a, [$D69A]                                 ; $35C4: $FA $9A $D6

jr_000_35C7:
    or a                                          ; $35C7: $B7
    jp nz, Jump_000_36B3                          ; $35C8: $C2 $B3 $36

jr_000_35CB:
    call Call_000_2C6F                            ; $35CB: $CD $6F $2C
    jp c, Jump_000_36B3                           ; $35CE: $DA $B3 $36

    call Call_000_2C82                            ; $35D1: $CD $82 $2C
    jp nc, Jump_000_36B3                          ; $35D4: $D2 $B3 $36

    push de                                       ; $35D7: $D5
    ld d, $C0                                     ; $35D8: $16 $C0
    ld hl, $0054                                  ; $35DA: $21 $54 $00
    add hl, bc                                    ; $35DD: $09
    ld a, [hl]                                    ; $35DE: $7E
    and $03                                       ; $35DF: $E6 $03
    jp z, Jump_000_3609                           ; $35E1: $CA $09 $36

    ld e, a                                       ; $35E4: $5F
    inc hl                                        ; $35E5: $23
    ld a, [hl]                                    ; $35E6: $7E
    and d                                         ; $35E7: $A2
    jp z, Jump_000_3609                           ; $35E8: $CA $09 $36

    pop de                                        ; $35EB: $D1
    bit 6, a                                      ; $35EC: $CB $77
    jp nz, Jump_000_35F8                          ; $35EE: $C2 $F8 $35

    xor a                                         ; $35F1: $AF
    ld [$C2E4], a                                 ; $35F2: $EA $E4 $C2
    jp Jump_000_35FD                              ; $35F5: $C3 $FD $35


Jump_000_35F8:
    ld a, $01                                     ; $35F8: $3E $01
    ld [$C2E4], a                                 ; $35FA: $EA $E4 $C2

Jump_000_35FD:
    ld hl, $0020                                  ; $35FD: $21 $20 $00
    add hl, bc                                    ; $3600: $09
    bit 2, [hl]                                   ; $3601: $CB $56

Call_000_3603:
    jp nz, Jump_000_3621                          ; $3603: $C2 $21 $36

    jp Jump_000_360D                              ; $3606: $C3 $0D $36


Jump_000_3609:
    pop de                                        ; $3609: $D1
    jp Jump_000_36B3                              ; $360A: $C3 $B3 $36


Jump_000_360D:
    inc hl                                        ; $360D: $23
    bit 0, [hl]                                   ; $360E: $CB $46
    jp nz, Jump_000_36AF                          ; $3610: $C2 $AF $36

    bit 5, [hl]                                   ; $3613: $CB $6E
    jp nz, Jump_000_36AF                          ; $3615: $C2 $AF $36

    xor a                                         ; $3618: $AF
    ld [$C2E3], a                                 ; $3619: $EA $E3 $C2
    ld a, $04                                     ; $361C: $3E $04
    jp Jump_000_3642                              ; $361E: $C3 $42 $36


Jump_000_3621:
    jp Jump_000_36AF                              ; $3621: $C3 $AF $36


    ld hl, $003C                                  ; $3624: $21 $3C $00
    add hl, bc                                    ; $3627: $09
    ld a, [hl]                                    ; $3628: $7E
    cp $0A                                        ; $3629: $FE $0A
    jp z, Jump_000_363B                           ; $362B: $CA $3B $36

    cp $0C                                        ; $362E: $FE $0C
    jp z, Jump_000_363B                           ; $3630: $CA $3B $36

    cp $0E                                        ; $3633: $FE $0E
    jp z, Jump_000_363B                           ; $3635: $CA $3B $36

    jp Jump_000_36AF                              ; $3638: $C3 $AF $36


Jump_000_363B:
    ld a, $01                                     ; $363B: $3E $01
    ld [$C2E3], a                                 ; $363D: $EA $E3 $C2
    ld a, $04                                     ; $3640: $3E $04

Jump_000_3642:
    ld hl, $001B                                  ; $3642: $21 $1B $00
    add hl, de                                    ; $3645: $19
    ld [hl], a                                    ; $3646: $77
    ld a, $01                                     ; $3647: $3E $01
    ld [$C2E2], a                                 ; $3649: $EA $E2 $C2
    ld hl, $0046                                  ; $364C: $21 $46 $00
    add hl, bc                                    ; $364F: $09
    ld a, $0C                                     ; $3650: $3E $0C
    ld [hl], a                                    ; $3652: $77
    inc hl                                        ; $3653: $23
    ld a, $17                                     ; $3654: $3E $17
    ld [hl], a                                    ; $3656: $77
    ld hl, $0054                                  ; $3657: $21 $54 $00
    add hl, bc                                    ; $365A: $09
    ld a, [hl+]                                   ; $365B: $2A
    push af                                       ; $365C: $F5
    ld a, [hl]                                    ; $365D: $7E
    push af                                       ; $365E: $F5
    push hl                                       ; $365F: $E5
    call Call_000_0417                            ; $3660: $CD $17 $04
    ld hl, $001B                                  ; $3663: $21 $1B $00
    add hl, de                                    ; $3666: $19
    xor a                                         ; $3667: $AF
    ld [hl], a                                    ; $3668: $77
    call Call_000_0417                            ; $3669: $CD $17 $04
    pop hl                                        ; $366C: $E1
    pop af                                        ; $366D: $F1
    ld [hl-], a                                   ; $366E: $32
    pop af                                        ; $366F: $F1
    ld [hl], a                                    ; $3670: $77
    ld a, [$C2E2]                                 ; $3671: $FA $E2 $C2
    cp $02                                        ; $3674: $FE $02
    jp nz, Jump_000_36AF                          ; $3676: $C2 $AF $36

    jp Jump_000_3684                              ; $3679: $C3 $84 $36


    ld a, [$C2E4]                                 ; $367C: $FA $E4 $C2
    xor $01                                       ; $367F: $EE $01
    ld [$C2E4], a                                 ; $3681: $EA $E4 $C2

Jump_000_3684:
    ld a, [$C2E4]                                 ; $3684: $FA $E4 $C2
    or a                                          ; $3687: $B7
    jp z, Jump_000_36A3                           ; $3688: $CA $A3 $36

    push bc                                       ; $368B: $C5
    ld a, [$D6C4]                                 ; $368C: $FA $C4 $D6
    ld b, a                                       ; $368F: $47
    ld a, [$D684]                                 ; $3690: $FA $84 $D6
    ld [$D6C4], a                                 ; $3693: $EA $C4 $D6
    ld a, b                                       ; $3696: $78
    ld [$D684], a                                 ; $3697: $EA $84 $D6
    pop bc                                        ; $369A: $C1
    ld hl, $0002                                  ; $369B: $21 $02 $00
    add hl, de                                    ; $369E: $19
    ld a, [hl]                                    ; $369F: $7E
    xor $20                                       ; $36A0: $EE $20
    ld [hl], a                                    ; $36A2: $77

Jump_000_36A3:
    ld a, $00                                     ; $36A3: $3E $00
    ld [$C2E7], a                                 ; $36A5: $EA $E7 $C2
    ld a, [$C2E3]                                 ; $36A8: $FA $E3 $C2
    scf                                           ; $36AB: $37
    jp Jump_000_36B4                              ; $36AC: $C3 $B4 $36


Jump_000_36AF:
    xor a                                         ; $36AF: $AF
    ld [$C2E2], a                                 ; $36B0: $EA $E2 $C2

Jump_000_36B3:
    xor a                                         ; $36B3: $AF

Jump_000_36B4:
    ret                                           ; $36B4: $C9


Call_000_36B5:
    ld a, [$C2E2]                                 ; $36B5: $FA $E2 $C2
    cp $00                                        ; $36B8: $FE $00
    jp nz, Jump_000_3743                          ; $36BA: $C2 $43 $37

    xor a                                         ; $36BD: $AF
    ld [$C2E4], a                                 ; $36BE: $EA $E4 $C2
    ld a, $02                                     ; $36C1: $3E $02
    ld [$C2E3], a                                 ; $36C3: $EA $E3 $C2
    ld hl, $001B                                  ; $36C6: $21 $1B $00
    add hl, de                                    ; $36C9: $19
    ld [hl], $05                                  ; $36CA: $36 $05
    ld a, $01                                     ; $36CC: $3E $01
    ld [$C2E2], a                                 ; $36CE: $EA $E2 $C2
    ld hl, $0046                                  ; $36D1: $21 $46 $00
    add hl, bc                                    ; $36D4: $09
    ld [hl], $0C                                  ; $36D5: $36 $0C
    inc hl                                        ; $36D7: $23
    ld [hl], $18                                  ; $36D8: $36 $18
    jp Jump_000_3718                              ; $36DA: $C3 $18 $37


Call_000_36DD:
    ld a, [$C2E2]                                 ; $36DD: $FA $E2 $C2
    cp $00                                        ; $36E0: $FE $00
    jp nz, Jump_000_3743                          ; $36E2: $C2 $43 $37

    ld hl, $0093                                  ; $36E5: $21 $93 $00
    add hl, bc                                    ; $36E8: $09

Call_000_36E9:
Jump_000_36E9:
    ld a, [hl]                                    ; $36E9: $7E
    or a                                          ; $36EA: $B7
    jp nz, Jump_000_3743                          ; $36EB: $C2 $43 $37

    ld hl, $007E                                  ; $36EE: $21 $7E $00
    add hl, bc                                    ; $36F1: $09
    bit 4, [hl]                                   ; $36F2: $CB $66
    jp z, Jump_000_36FC                           ; $36F4: $CA $FC $36

    bit 3, [hl]                                   ; $36F7: $CB $5E
    jp nz, Jump_000_3743                          ; $36F9: $C2 $43 $37

Jump_000_36FC:
    xor a                                         ; $36FC: $AF
    ld [$C2E4], a                                 ; $36FD: $EA $E4 $C2
    xor a                                         ; $3700: $AF
    ld [$C2E3], a                                 ; $3701: $EA $E3 $C2
    ld hl, $001B                                  ; $3704: $21 $1B $00
    add hl, de                                    ; $3707: $19
    ld [hl], $03                                  ; $3708: $36 $03
    ld a, $01                                     ; $370A: $3E $01
    ld [$C2E2], a                                 ; $370C: $EA $E2 $C2
    ld hl, $0046                                  ; $370F: $21 $46 $00
    add hl, bc                                    ; $3712: $09
    ld [hl], $0C                                  ; $3713: $36 $0C
    inc hl                                        ; $3715: $23
    ld [hl], $17                                  ; $3716: $36 $17

Jump_000_3718:
    ld hl, $0054                                  ; $3718: $21 $54 $00
    add hl, bc                                    ; $371B: $09
    ld a, [hl+]                                   ; $371C: $2A
    push af                                       ; $371D: $F5
    ld a, [hl]                                    ; $371E: $7E
    push af                                       ; $371F: $F5
    push hl                                       ; $3720: $E5
    call Call_000_0417                            ; $3721: $CD $17 $04
    ld hl, $001B                                  ; $3724: $21 $1B $00
    add hl, de                                    ; $3727: $19
    xor a                                         ; $3728: $AF
    ld [hl], a                                    ; $3729: $77
    call Call_000_0417                            ; $372A: $CD $17 $04
    pop hl                                        ; $372D: $E1
    pop af                                        ; $372E: $F1
    ld [hl-], a                                   ; $372F: $32
    pop af                                        ; $3730: $F1
    ld [hl], a                                    ; $3731: $77
    ld a, [$C2E2]                                 ; $3732: $FA $E2 $C2
    cp $02                                        ; $3735: $FE $02
    jp nz, Jump_000_3743                          ; $3737: $C2 $43 $37

    ld a, $00                                     ; $373A: $3E $00
    ld [$C2E7], a                                 ; $373C: $EA $E7 $C2
    scf                                           ; $373F: $37
    jp Jump_000_3747                              ; $3740: $C3 $47 $37


Jump_000_3743:
    xor a                                         ; $3743: $AF
    ld [$C2E2], a                                 ; $3744: $EA $E2 $C2

Jump_000_3747:
    ret                                           ; $3747: $C9


Call_000_3748:
    ld hl, $0097                                  ; $3748: $21 $97 $00
    add hl, bc                                    ; $374B: $09
    xor a                                         ; $374C: $AF
    ld [hl], a                                    ; $374D: $77
    ld hl, $0096                                  ; $374E: $21 $96 $00
    add hl, bc                                    ; $3751: $09
    ld a, [hl]                                    ; $3752: $7E
    or a                                          ; $3753: $B7
    jp z, Jump_000_375D                           ; $3754: $CA $5D $37

    ld h, a                                       ; $3757: $67
    ld l, $00                                     ; $3758: $2E $00
    call Call_000_2F0B                            ; $375A: $CD $0B $2F

Jump_000_375D:
    ld a, [$C2E1]                                 ; $375D: $FA $E1 $C2
    or a                                          ; $3760: $B7
    jp z, Jump_000_3780                           ; $3761: $CA $80 $37

Jump_000_3764:
    call Call_000_2C5C                            ; $3764: $CD $5C $2C
    call Call_000_2C45                            ; $3767: $CD $45 $2C
    call Call_000_2E39                            ; $376A: $CD $39 $2E
    jp c, Jump_000_3782                           ; $376D: $DA $82 $37

    call Call_000_39BF                            ; $3770: $CD $BF $39
    jp c, Jump_000_3782                           ; $3773: $DA $82 $37

    call Call_000_0417                            ; $3776: $CD $17 $04
    ld a, [$C2E1]                                 ; $3779: $FA $E1 $C2
    or a                                          ; $377C: $B7
    jp nz, Jump_000_3764                          ; $377D: $C2 $64 $37

Jump_000_3780:
    xor a                                         ; $3780: $AF
    ret                                           ; $3781: $C9


Jump_000_3782:
    ret                                           ; $3782: $C9


Call_000_3783:
    ld hl, $0020                                  ; $3783: $21 $20 $00
    add hl, bc                                    ; $3786: $09
    bit 3, [hl]                                   ; $3787: $CB $5E
    jp nz, Jump_000_3796                          ; $3789: $C2 $96 $37

    ld hl, $0020                                  ; $378C: $21 $20 $00
    add hl, de                                    ; $378F: $19
    ld a, [hl]                                    ; $3790: $7E
    ld hl, $0097                                  ; $3791: $21 $97 $00
    add hl, bc                                    ; $3794: $09
    ld [hl], a                                    ; $3795: $77

Jump_000_3796:
    ret                                           ; $3796: $C9


Call_000_3797:
Jump_000_3797:
    ld hl, $0020                                  ; $3797: $21 $20 $00
    add hl, bc                                    ; $379A: $09
    bit 3, [hl]                                   ; $379B: $CB $5E
    jp nz, Jump_000_37AA                          ; $379D: $C2 $AA $37

    ld a, $01                                     ; $37A0: $3E $01
    ld [$C2DF], a                                 ; $37A2: $EA $DF $C2
    ld hl, $0095                                  ; $37A5: $21 $95 $00
    add hl, bc                                    ; $37A8: $09
    ld [hl], a                                    ; $37A9: $77

Jump_000_37AA:
    ld hl, $0021                                  ; $37AA: $21 $21 $00
    add hl, bc                                    ; $37AD: $09
    ld a, [hl]                                    ; $37AE: $7E
    push af                                       ; $37AF: $F5
    set 7, [hl]                                   ; $37B0: $CB $FE
    call Call_000_3854                            ; $37B2: $CD $54 $38
    call Call_000_37C3                            ; $37B5: $CD $C3 $37
    pop af                                        ; $37B8: $F1
    ld hl, $0021                                  ; $37B9: $21 $21 $00
    add hl, bc                                    ; $37BC: $09
    ld [hl], a                                    ; $37BD: $77
    xor a                                         ; $37BE: $AF
    ld [$C2DF], a                                 ; $37BF: $EA $DF $C2
    ret                                           ; $37C2: $C9


Call_000_37C3:
    or a                                          ; $37C3: $B7
    jr z, jr_000_37F9                             ; $37C4: $28 $33

    push af                                       ; $37C6: $F5
    call Call_000_37FA                            ; $37C7: $CD $FA $37
    ld hl, $0004                                  ; $37CA: $21 $04 $00
    add hl, de                                    ; $37CD: $19
    ld a, [hl]                                    ; $37CE: $7E
    cp $80                                        ; $37CF: $FE $80
    jr nc, jr_000_37E7                            ; $37D1: $30 $14

    pop af                                        ; $37D3: $F1

jr_000_37D4:
    push af                                       ; $37D4: $F5
    call Call_000_3850                            ; $37D5: $CD $50 $38
    call Call_000_0417                            ; $37D8: $CD $17 $04
    call Call_000_3852                            ; $37DB: $CD $52 $38
    call Call_000_0417                            ; $37DE: $CD $17 $04
    pop af                                        ; $37E1: $F1
    dec a                                         ; $37E2: $3D
    jr nz, jr_000_37D4                            ; $37E3: $20 $EF

    jr jr_000_37F9                                ; $37E5: $18 $12

jr_000_37E7:
    pop af                                        ; $37E7: $F1

jr_000_37E8:
    push af                                       ; $37E8: $F5
    call Call_000_3852                            ; $37E9: $CD $52 $38
    call Call_000_0417                            ; $37EC: $CD $17 $04
    call Call_000_3850                            ; $37EF: $CD $50 $38
    call Call_000_0417                            ; $37F2: $CD $17 $04
    pop af                                        ; $37F5: $F1
    dec a                                         ; $37F6: $3D
    jr nz, jr_000_37E8                            ; $37F7: $20 $EF

jr_000_37F9:
    ret                                           ; $37F9: $C9


Call_000_37FA:
    ld hl, $C037                                  ; $37FA: $21 $37 $C0
    bit 7, [hl]                                   ; $37FD: $CB $7E
    ret nz                                        ; $37FF: $C0

    bit 6, [hl]                                   ; $3800: $CB $76
    jr nz, jr_000_380E                            ; $3802: $20 $0A

    ld hl, $002D                                  ; $3804: $21 $2D $00
    add hl, bc                                    ; $3807: $09

Call_000_3808:
Jump_000_3808:
    bit 0, [hl]                                   ; $3808: $CB $46
    jr nz, jr_000_3839                            ; $380A: $20 $2D

    jr jr_000_3826                                ; $380C: $18 $18

jr_000_380E:
    ld hl, $002D                                  ; $380E: $21 $2D $00
    add hl, bc                                    ; $3811: $09
    bit 0, [hl]                                   ; $3812: $CB $46
    jr nz, jr_000_381F                            ; $3814: $20 $09

    ld hl, $C037                                  ; $3816: $21 $37 $C0
    bit 5, [hl]                                   ; $3819: $CB $6E
    jr nz, jr_000_3839                            ; $381B: $20 $1C

    jr jr_000_3826                                ; $381D: $18 $07

jr_000_381F:
    ld hl, $C037                                  ; $381F: $21 $37 $C0
    bit 5, [hl]                                   ; $3822: $CB $6E
    jr z, jr_000_3839                             ; $3824: $28 $13

jr_000_3826:
    ld hl, $0021                                  ; $3826: $21 $21 $00
    add hl, bc                                    ; $3829: $09
    bit 3, [hl]                                   ; $382A: $CB $5E
    jr nz, jr_000_3844                            ; $382C: $20 $16

    push bc                                       ; $382E: $C5
    push de                                       ; $382F: $D5
    ld bc, $0201                                  ; $3830: $01 $01 $02
    call Call_000_189B                            ; $3833: $CD $9B $18
    pop de                                        ; $3836: $D1
    pop bc                                        ; $3837: $C1

Call_000_3838:
    ret                                           ; $3838: $C9


jr_000_3839:
    push bc                                       ; $3839: $C5
    push de                                       ; $383A: $D5
    ld bc, $0102                                  ; $383B: $01 $02 $01
    call Call_000_189B                            ; $383E: $CD $9B $18

Jump_000_3841:
    pop de                                        ; $3841: $D1
    pop bc                                        ; $3842: $C1
    ret                                           ; $3843: $C9


jr_000_3844:
    push bc                                       ; $3844: $C5
    push de                                       ; $3845: $D5
    ld bc, $0202                                  ; $3846: $01 $02 $02
    call Call_000_189B                            ; $3849: $CD $9B $18
    pop de                                        ; $384C: $D1
    pop bc                                        ; $384D: $C1
    ret                                           ; $384E: $C9


    ret                                           ; $384F: $C9


Call_000_3850:
    dec [hl]                                      ; $3850: $35
    ret                                           ; $3851: $C9


Call_000_3852:
    inc [hl]                                      ; $3852: $34
    ret                                           ; $3853: $C9


Call_000_3854:
    ld hl, $0020                                  ; $3854: $21 $20 $00
    add hl, bc                                    ; $3857: $09
    bit 3, [hl]                                   ; $3858: $CB $5E
    jp nz, Jump_000_3862                          ; $385A: $C2 $62 $38

    ld a, $0A                                     ; $385D: $3E $0A
    jp Jump_000_3864                              ; $385F: $C3 $64 $38


Jump_000_3862:
    ld a, $08                                     ; $3862: $3E $08

Jump_000_3864:
    ld hl, $0023                                  ; $3864: $21 $23 $00
    add hl, bc                                    ; $3867: $09
    bit 7, [hl]                                   ; $3868: $CB $7E
    jp nz, Jump_000_3877                          ; $386A: $C2 $77 $38

    bit 0, [hl]                                   ; $386D: $CB $46
    jp nz, Jump_000_3879                          ; $386F: $C2 $79 $38

    srl a                                         ; $3872: $CB $3F
    jp Jump_000_3879                              ; $3874: $C3 $79 $38


Jump_000_3877:
    ld a, $01                                     ; $3877: $3E $01

Jump_000_3879:
    ld hl, $0060                                  ; $3879: $21 $60 $00
    add hl, bc                                    ; $387C: $09
    push af                                       ; $387D: $F5
    ld a, [hl]                                    ; $387E: $7E
    or a                                          ; $387F: $B7
    jp nz, Jump_000_3890                          ; $3880: $C2 $90 $38

    pop af                                        ; $3883: $F1
    sla a                                         ; $3884: $CB $27
    cp $0B                                        ; $3886: $FE $0B
    jp c, Jump_000_3891                           ; $3888: $DA $91 $38

    ld a, $0B                                     ; $388B: $3E $0B
    jp Jump_000_3891                              ; $388D: $C3 $91 $38


Jump_000_3890:
    pop af                                        ; $3890: $F1

Jump_000_3891:
    push af                                       ; $3891: $F5
    cp $01                                        ; $3892: $FE $01

Jump_000_3894:
    jr nz, jr_000_3896                            ; $3894: $20 $00

jr_000_3896:
    pop af                                        ; $3896: $F1
    ret                                           ; $3897: $C9


Call_000_3898:
    ld a, $01                                     ; $3898: $3E $01
    ld [$C2DF], a                                 ; $389A: $EA $DF $C2
    ld hl, $0095                                  ; $389D: $21 $95 $00
    add hl, bc                                    ; $38A0: $09
    ld [hl], a                                    ; $38A1: $77
    ld hl, $0021                                  ; $38A2: $21 $21 $00
    add hl, bc                                    ; $38A5: $09
    ld a, [hl]                                    ; $38A6: $7E
    push af                                       ; $38A7: $F5
    set 7, [hl]                                   ; $38A8: $CB $FE
    ld a, $01                                     ; $38AA: $3E $01
    call Call_000_37C3                            ; $38AC: $CD $C3 $37
    pop af                                        ; $38AF: $F1
    ld hl, $0021                                  ; $38B0: $21 $21 $00
    add hl, bc                                    ; $38B3: $09
    ld [hl], a                                    ; $38B4: $77
    xor a                                         ; $38B5: $AF
    ld [$C2DF], a                                 ; $38B6: $EA $DF $C2
    ret                                           ; $38B9: $C9


Call_000_38BA:
    ld hl, $0065                                  ; $38BA: $21 $65 $00
    add hl, bc                                    ; $38BD: $09
    ld a, [hl]                                    ; $38BE: $7E
    or a                                          ; $38BF: $B7
    jp z, Jump_000_3797                           ; $38C0: $CA $97 $37

    ld hl, $0020                                  ; $38C3: $21 $20 $00

Call_000_38C6:
Jump_000_38C6:
    add hl, bc                                    ; $38C6: $09

Call_000_38C7:
    bit 3, [hl]                                   ; $38C7: $CB $5E
    jp nz, Jump_000_38D6                          ; $38C9: $C2 $D6 $38

    ld a, $01                                     ; $38CC: $3E $01
    ld [$C2DF], a                                 ; $38CE: $EA $DF $C2
    ld hl, $0095                                  ; $38D1: $21 $95 $00
    add hl, bc                                    ; $38D4: $09
    ld [hl], a                                    ; $38D5: $77

Jump_000_38D6:
    ld hl, $0021                                  ; $38D6: $21 $21 $00
    add hl, bc                                    ; $38D9: $09
    ld a, [hl]                                    ; $38DA: $7E
    push af                                       ; $38DB: $F5
    set 7, [hl]                                   ; $38DC: $CB $FE
    call Call_000_3854                            ; $38DE: $CD $54 $38
    or a                                          ; $38E1: $B7
    jp z, Jump_000_3948                           ; $38E2: $CA $48 $39

    push af                                       ; $38E5: $F5
    call Call_000_37FA                            ; $38E6: $CD $FA $37
    ld hl, $0004                                  ; $38E9: $21 $04 $00

Call_000_38EC:
    add hl, de                                    ; $38EC: $19
    ld a, [hl]                                    ; $38ED: $7E
    cp $80                                        ; $38EE: $FE $80
    jp nc, Jump_000_391F                          ; $38F0: $D2 $1F $39

    pop af                                        ; $38F3: $F1

Jump_000_38F4:
    push af                                       ; $38F4: $F5
    call Call_000_3850                            ; $38F5: $CD $50 $38

Call_000_38F8:
    call Call_000_0417                            ; $38F8: $CD $17 $04
    push hl                                       ; $38FB: $E5
    call Call_000_2C45                            ; $38FC: $CD $45 $2C

Call_000_38FF:
Jump_000_38FF:
    call Call_000_2E39                            ; $38FF: $CD $39 $2E
    jp c, Jump_000_3954                           ; $3902: $DA $54 $39

    pop hl                                        ; $3905: $E1
    call Call_000_3852                            ; $3906: $CD $52 $38
    call Call_000_0417                            ; $3909: $CD $17 $04
    push hl                                       ; $390C: $E5
    call Call_000_2C45                            ; $390D: $CD $45 $2C
    call Call_000_2E39                            ; $3910: $CD $39 $2E
    jp c, Jump_000_3954                           ; $3913: $DA $54 $39

    pop hl                                        ; $3916: $E1
    pop af                                        ; $3917: $F1
    dec a                                         ; $3918: $3D

Call_000_3919:
    jp nz, Jump_000_38F4                          ; $3919: $C2 $F4 $38

    jp Jump_000_3948                              ; $391C: $C3 $48 $39


Jump_000_391F:
    pop af                                        ; $391F: $F1

Jump_000_3920:
    push af                                       ; $3920: $F5
    call Call_000_3852                            ; $3921: $CD $52 $38
    call Call_000_0417                            ; $3924: $CD $17 $04
    push hl                                       ; $3927: $E5
    call Call_000_2C45                            ; $3928: $CD $45 $2C
    call Call_000_2E39                            ; $392B: $CD $39 $2E
    jp c, Jump_000_3954                           ; $392E: $DA $54 $39

    pop hl                                        ; $3931: $E1
    call Call_000_3850                            ; $3932: $CD $50 $38
    call Call_000_0417                            ; $3935: $CD $17 $04
    push hl                                       ; $3938: $E5
    call Call_000_2C45                            ; $3939: $CD $45 $2C
    call Call_000_2E39                            ; $393C: $CD $39 $2E
    jp c, Jump_000_3954                           ; $393F: $DA $54 $39

    pop hl                                        ; $3942: $E1
    pop af                                        ; $3943: $F1
    dec a                                         ; $3944: $3D
    jp nz, Jump_000_3920                          ; $3945: $C2 $20 $39

Jump_000_3948:
    pop af                                        ; $3948: $F1
    ld hl, $0021                                  ; $3949: $21 $21 $00
    add hl, bc                                    ; $394C: $09
    ld [hl], a                                    ; $394D: $77
    xor a                                         ; $394E: $AF
    ld [$C2DF], a                                 ; $394F: $EA $DF $C2
    xor a                                         ; $3952: $AF
    ret                                           ; $3953: $C9


Jump_000_3954:
    pop hl                                        ; $3954: $E1
    pop af                                        ; $3955: $F1
    pop af                                        ; $3956: $F1
    ld hl, $0043                                  ; $3957: $21 $43 $00

Call_000_395A:
    add hl, bc                                    ; $395A: $09
    ld [hl], $03                                  ; $395B: $36 $03
    xor a                                         ; $395D: $AF
    ld [$C2DF], a                                 ; $395E: $EA $DF $C2
    scf                                           ; $3961: $37
    ret                                           ; $3962: $C9


Call_000_3963:
    ld [$C2B0], a                                 ; $3963: $EA $B0 $C2
    push bc                                       ; $3966: $C5
    push de                                       ; $3967: $D5
    push hl                                       ; $3968: $E5
    ld bc, $0204                                  ; $3969: $01 $04 $02
    call Call_000_189B                            ; $396C: $CD $9B $18
    pop hl                                        ; $396F: $E1
    pop de                                        ; $3970: $D1
    pop bc                                        ; $3971: $C1
    ret                                           ; $3972: $C9


Call_000_3973:
    ld hl, $006C                                  ; $3973: $21 $6C $00
    add hl, bc                                    ; $3976: $09
    ld a, [hl]                                    ; $3977: $7E
    or a                                          ; $3978: $B7
    ret                                           ; $3979: $C9


Call_000_397A:
    ld hl, $0060                                  ; $397A: $21 $60 $00
    add hl, bc                                    ; $397D: $09
    ld a, [hl]                                    ; $397E: $7E
    or a                                          ; $397F: $B7
    jp nz, Jump_000_398C                          ; $3980: $C2 $8C $39

    ld hl, $003C                                  ; $3983: $21 $3C $00
    add hl, bc                                    ; $3986: $09
    ld [hl], $00                                  ; $3987: $36 $00
    jp Jump_000_39AA                              ; $3989: $C3 $AA $39


Jump_000_398C:
    ld hl, $006E                                  ; $398C: $21 $6E $00
    add hl, bc                                    ; $398F: $09
    ld [hl], $32                                  ; $3990: $36 $32
    ld hl, $0020                                  ; $3992: $21 $20 $00
    add hl, bc                                    ; $3995: $09
    res 2, [hl]                                   ; $3996: $CB $96
    res 3, [hl]                                   ; $3998: $CB $9E
    res 4, [hl]                                   ; $399A: $CB $A6
    res 5, [hl]                                   ; $399C: $CB $AE
    inc hl                                        ; $399E: $23
    res 4, [hl]                                   ; $399F: $CB $A6
    res 6, [hl]                                   ; $39A1: $CB $B6
    set 7, [hl]                                   ; $39A3: $CB $FE
    ld a, $1C                                     ; $39A5: $3E $1C
    call Call_000_2E6E                            ; $39A7: $CD $6E $2E

Jump_000_39AA:
    ret                                           ; $39AA: $C9


Call_000_39AB:
    ldh a, [$FFE0]                                ; $39AB: $F0 $E0
    push af                                       ; $39AD: $F5
    ld a, $02                                     ; $39AE: $3E $02
    ldh [$FFE0], a                                ; $39B0: $E0 $E0
    ld [$2000], a                                 ; $39B2: $EA $00 $20
    call $4A50                                    ; $39B5: $CD $50 $4A
    pop af                                        ; $39B8: $F1
    ldh [$FFE0], a                                ; $39B9: $E0 $E0
    ld [$2000], a                                 ; $39BB: $EA $00 $20
    ret                                           ; $39BE: $C9


Call_000_39BF:
    ldh a, [$FFE0]                                ; $39BF: $F0 $E0
    push af                                       ; $39C1: $F5
    ld a, $02                                     ; $39C2: $3E $02
    ldh [$FFE0], a                                ; $39C4: $E0 $E0
    ld [$2000], a                                 ; $39C6: $EA $00 $20
    call $4FF8                                    ; $39C9: $CD $F8 $4F
    pop af                                        ; $39CC: $F1
    ldh [$FFE0], a                                ; $39CD: $E0 $E0
    ld [$2000], a                                 ; $39CF: $EA $00 $20
    ret                                           ; $39D2: $C9


Call_000_39D3:
    ld hl, $0052                                  ; $39D3: $21 $52 $00
    add hl, bc                                    ; $39D6: $09
    ld a, [hl]                                    ; $39D7: $7E
    ld hl, $0022                                  ; $39D8: $21 $22 $00
    add hl, bc                                    ; $39DB: $09
    bit 4, a                                      ; $39DC: $CB $67
    jr nz, jr_000_39EF                            ; $39DE: $20 $0F

    bit 5, a                                      ; $39E0: $CB $6F
    jr nz, jr_000_39FA                            ; $39E2: $20 $16

    bit 6, a                                      ; $39E4: $CB $77
    jr nz, jr_000_39F4                            ; $39E6: $20 $0C

    bit 7, a                                      ; $39E8: $CB $7F
    jr nz, jr_000_39FF                            ; $39EA: $20 $13

    scf                                           ; $39EC: $37
    ccf                                           ; $39ED: $3F

Call_000_39EE:
    ret                                           ; $39EE: $C9


jr_000_39EF:
    res 1, [hl]                                   ; $39EF: $CB $8E
    jp Jump_000_39F6                              ; $39F1: $C3 $F6 $39


jr_000_39F4:
    set 1, [hl]                                   ; $39F4: $CB $CE

Jump_000_39F6:
    xor a                                         ; $39F6: $AF
    inc a                                         ; $39F7: $3C
    scf                                           ; $39F8: $37
    ret                                           ; $39F9: $C9


jr_000_39FA:
    res 1, [hl]                                   ; $39FA: $CB $8E
    jp Jump_000_3A01                              ; $39FC: $C3 $01 $3A


Call_000_39FF:
jr_000_39FF:
    set 1, [hl]                                   ; $39FF: $CB $CE

Jump_000_3A01:
    xor a                                         ; $3A01: $AF
    scf                                           ; $3A02: $37
    ret                                           ; $3A03: $C9


    ld hl, $0058                                  ; $3A04: $21 $58 $00
    add hl, bc                                    ; $3A07: $09
    ld [hl], $00                                  ; $3A08: $36 $00
    ret                                           ; $3A0A: $C9


    ld hl, $0058                                  ; $3A0B: $21 $58 $00
    add hl, bc                                    ; $3A0E: $09
    ld a, [hl]                                    ; $3A0F: $7E
    bit 4, a                                      ; $3A10: $CB $67
    jr nz, jr_000_3A23                            ; $3A12: $20 $0F

    bit 5, a                                      ; $3A14: $CB $6F
    jr nz, jr_000_3A27                            ; $3A16: $20 $0F

    bit 6, a                                      ; $3A18: $CB $77
    jr nz, jr_000_3A23                            ; $3A1A: $20 $07

    bit 7, a                                      ; $3A1C: $CB $7F
    jr nz, jr_000_3A27                            ; $3A1E: $20 $07

    scf                                           ; $3A20: $37
    ccf                                           ; $3A21: $3F
    ret                                           ; $3A22: $C9


jr_000_3A23:
    xor a                                         ; $3A23: $AF
    inc a                                         ; $3A24: $3C
    scf                                           ; $3A25: $37
    ret                                           ; $3A26: $C9


jr_000_3A27:
    xor a                                         ; $3A27: $AF
    scf                                           ; $3A28: $37
    ret                                           ; $3A29: $C9


Call_000_3A2A:
    ld a, [$C001]                                 ; $3A2A: $FA $01 $C0
    bit 2, a                                      ; $3A2D: $CB $57
    jr z, jr_000_3A43                             ; $3A2F: $28 $12

    ld hl, $0054                                  ; $3A31: $21 $54 $00

Jump_000_3A34:
    add hl, bc                                    ; $3A34: $09
    ld a, [hl]                                    ; $3A35: $7E
    and $60                                       ; $3A36: $E6 $60
    cp $60                                        ; $3A38: $FE $60
    jr z, jr_000_3A46                             ; $3A3A: $28 $0A

    ld a, [hl]                                    ; $3A3C: $7E
    and $50                                       ; $3A3D: $E6 $50
    cp $50                                        ; $3A3F: $FE $50
    jr z, jr_000_3A4A                             ; $3A41: $28 $07

jr_000_3A43:
    xor a                                         ; $3A43: $AF
    inc a                                         ; $3A44: $3C
    ret                                           ; $3A45: $C9


jr_000_3A46:
    xor a                                         ; $3A46: $AF
    inc a                                         ; $3A47: $3C
    scf                                           ; $3A48: $37
    ret                                           ; $3A49: $C9


jr_000_3A4A:
    xor a                                         ; $3A4A: $AF
    ret                                           ; $3A4B: $C9


Call_000_3A4C:
    ld hl, $002D                                  ; $3A4C: $21 $2D $00
    add hl, bc                                    ; $3A4F: $09
    ld a, [hl]                                    ; $3A50: $7E
    or a                                          ; $3A51: $B7
    jp nz, Jump_000_3A5B                          ; $3A52: $C2 $5B $3A

    ld hl, $D6DC                                  ; $3A55: $21 $DC $D6
    jp Jump_000_3A5E                              ; $3A58: $C3 $5E $3A


Jump_000_3A5B:
    ld hl, $D69C                                  ; $3A5B: $21 $9C $D6

Jump_000_3A5E:
    ld [hl], $1E                                  ; $3A5E: $36 $1E
    ret                                           ; $3A60: $C9


Call_000_3A61:
    ld hl, $005E                                  ; $3A61: $21 $5E $00
    add hl, bc                                    ; $3A64: $09
    ld a, [hl]                                    ; $3A65: $7E
    or a                                          ; $3A66: $B7
    jr z, jr_000_3A8C                             ; $3A67: $28 $23

    ld hl, $3B87                                  ; $3A69: $21 $87 $3B
    call Call_000_2B33                            ; $3A6C: $CD $33 $2B
    jr c, jr_000_3A72                             ; $3A6F: $38 $01

    ret                                           ; $3A71: $C9


jr_000_3A72:
    ld hl, $0100                                  ; $3A72: $21 $00 $01
    add hl, de                                    ; $3A75: $19
    bit 7, [hl]                                   ; $3A76: $CB $7E
    jr nz, jr_000_3A8C                            ; $3A78: $20 $12

    ld hl, $005E                                  ; $3A7A: $21 $5E $00
    add hl, bc                                    ; $3A7D: $09
    dec [hl]                                      ; $3A7E: $35
    call Call_000_2C23                            ; $3A7F: $CD $23 $2C
    ld a, $48                                     ; $3A82: $3E $48
    call Call_000_32E2                            ; $3A84: $CD $E2 $32
    call Call_000_34FE                            ; $3A87: $CD $FE $34
    scf                                           ; $3A8A: $37
    ret                                           ; $3A8B: $C9


jr_000_3A8C:
    xor a                                         ; $3A8C: $AF
    ret                                           ; $3A8D: $C9


Call_000_3A8E:
    push bc                                       ; $3A8E: $C5
    push de                                       ; $3A8F: $D5
    push af                                       ; $3A90: $F5
    ld hl, $002D                                  ; $3A91: $21 $2D $00
    add hl, bc                                    ; $3A94: $09
    ld a, [hl]                                    ; $3A95: $7E
    or a                                          ; $3A96: $B7
    jr nz, jr_000_3A9E                            ; $3A97: $20 $05

    ld bc, $DA00                                  ; $3A99: $01 $00 $DA
    jr jr_000_3AA1                                ; $3A9C: $18 $03

jr_000_3A9E:
    ld bc, $D900                                  ; $3A9E: $01 $00 $D9

jr_000_3AA1:
    pop af                                        ; $3AA1: $F1
    ld d, a                                       ; $3AA2: $57
    ldh a, [$FFE0]                                ; $3AA3: $F0 $E0
    push af                                       ; $3AA5: $F5
    ld a, $02                                     ; $3AA6: $3E $02
    ldh [$FFE0], a                                ; $3AA8: $E0 $E0
    ld [$2000], a                                 ; $3AAA: $EA $00 $20
    call $5B20                                    ; $3AAD: $CD $20 $5B
    pop af                                        ; $3AB0: $F1
    ldh [$FFE0], a                                ; $3AB1: $E0 $E0
    ld [$2000], a                                 ; $3AB3: $EA $00 $20
    pop de                                        ; $3AB6: $D1
    pop bc                                        ; $3AB7: $C1
    ret                                           ; $3AB8: $C9


    ld [bc], a                                    ; $3AB9: $02
    ld [bc], a                                    ; $3ABA: $02
    ld [bc], a                                    ; $3ABB: $02
    ld bc, $0814                                  ; $3ABC: $01 $14 $08
    ld [$FF01], sp                                ; $3ABF: $08 $01 $FF
    ld [bc], a                                    ; $3AC2: $02
    ld bc, $0101                                  ; $3AC3: $01 $01 $01
    inc d                                         ; $3AC6: $14
    ld [$0108], sp                                ; $3AC7: $08 $08 $01
    rst RST_38                                    ; $3ACA: $FF
    ld [bc], a                                    ; $3ACB: $02
    inc b                                         ; $3ACC: $04
    inc b                                         ; $3ACD: $04
    ld bc, $0814                                  ; $3ACE: $01 $14 $08
    ld [$FF08], sp                                ; $3AD1: $08 $08 $FF
    inc b                                         ; $3AD4: $04
    ld bc, $0101                                  ; $3AD5: $01 $01 $01
    inc d                                         ; $3AD8: $14
    ld [$0108], sp                                ; $3AD9: $08 $08 $01
    ld a, [bc]                                    ; $3ADC: $0A
    ld [bc], a                                    ; $3ADD: $02
    ld [bc], a                                    ; $3ADE: $02
    ld bc, $080A                                  ; $3ADF: $01 $0A $08
    ld [$FF01], sp                                ; $3AE2: $08 $01 $FF
    inc b                                         ; $3AE5: $04
    ld [bc], a                                    ; $3AE6: $02
    ld [bc], a                                    ; $3AE7: $02
    ld bc, $0814                                  ; $3AE8: $01 $14 $08
    ld [$0A01], sp                                ; $3AEB: $08 $01 $0A
    ld bc, $0101                                  ; $3AEE: $01 $01 $01
    ld a, [bc]                                    ; $3AF1: $0A
    ld [$0108], sp                                ; $3AF2: $08 $08 $01
    rst RST_38                                    ; $3AF5: $FF
    inc b                                         ; $3AF6: $04
    ld [bc], a                                    ; $3AF7: $02
    ld [bc], a                                    ; $3AF8: $02
    ld bc, $0814                                  ; $3AF9: $01 $14 $08
    ld [$0A01], sp                                ; $3AFC: $08 $01 $0A
    ld [bc], a                                    ; $3AFF: $02
    ld [bc], a                                    ; $3B00: $02
    ld bc, $080A                                  ; $3B01: $01 $0A $08
    ld [$FF01], sp                                ; $3B04: $08 $01 $FF
    inc bc                                        ; $3B07: $03
    ld bc, $0101                                  ; $3B08: $01 $01 $01
    inc d                                         ; $3B0B: $14
    ld [$0108], sp                                ; $3B0C: $08 $08 $01
    ld a, [bc]                                    ; $3B0F: $0A
    ld [bc], a                                    ; $3B10: $02
    ld [bc], a                                    ; $3B11: $02
    ld bc, $03FF                                  ; $3B12: $01 $FF $03
    ld [bc], a                                    ; $3B15: $02
    ld [bc], a                                    ; $3B16: $02
    ld bc, $0814                                  ; $3B17: $01 $14 $08
    ld [$0A01], sp                                ; $3B1A: $08 $01 $0A
    ld [bc], a                                    ; $3B1D: $02
    ld [bc], a                                    ; $3B1E: $02
    ld bc, $02FF                                  ; $3B1F: $01 $FF $02
    ld [bc], a                                    ; $3B22: $02
    ld [bc], a                                    ; $3B23: $02
    ld bc, $0114                                  ; $3B24: $01 $14 $01
    ld bc, $FF01                                  ; $3B27: $01 $01 $FF
    inc bc                                        ; $3B2A: $03
    ld [bc], a                                    ; $3B2B: $02
    ld [bc], a                                    ; $3B2C: $02
    ld bc, $0814                                  ; $3B2D: $01 $14 $08
    ld [$0A01], sp                                ; $3B30: $08 $01 $0A
    ld bc, $0101                                  ; $3B33: $01 $01 $01
    rst RST_38                                    ; $3B36: $FF
    inc bc                                        ; $3B37: $03
    ld bc, $0101                                  ; $3B38: $01 $01 $01
    inc d                                         ; $3B3B: $14

Call_000_3B3C:
    ld [$0108], sp                                ; $3B3C: $08 $08 $01
    ld a, [bc]                                    ; $3B3F: $0A
    ld bc, $0101                                  ; $3B40: $01 $01 $01
    rst RST_38                                    ; $3B43: $FF
    ld b, $20                                     ; $3B44: $06 $20
    jr nz, @+$03                                  ; $3B46: $20 $01

    ld [$2000], sp                                ; $3B48: $08 $00 $20
    ld bc, $2008                                  ; $3B4B: $01 $08 $20
    jr nz, @+$03                                  ; $3B4E: $20 $01

    ld [$2000], sp                                ; $3B50: $08 $00 $20
    ld bc, $2008                                  ; $3B53: $01 $08 $20
    jr nz, @+$03                                  ; $3B56: $20 $01

    ld [$2000], sp                                ; $3B58: $08 $00 $20
    ld bc, $0608                                  ; $3B5B: $01 $08 $06
    nop                                           ; $3B5E: $00
    jr nz, @+$03                                  ; $3B5F: $20 $01

    ld [$2020], sp                                ; $3B61: $08 $20 $20
    ld bc, $0008                                  ; $3B64: $01 $08 $00
    jr nz, @+$03                                  ; $3B67: $20 $01

    ld [$2020], sp                                ; $3B69: $08 $20 $20
    ld bc, $0008                                  ; $3B6C: $01 $08 $00
    jr nz, @+$03                                  ; $3B6F: $20 $01

    ld [$2020], sp                                ; $3B71: $08 $20 $20
    ld bc, $0408                                  ; $3B74: $01 $08 $04
    jr nz, @+$22                                  ; $3B77: $20 $20

    ld bc, $0008                                  ; $3B79: $01 $08 $00
    jr nz, @+$03                                  ; $3B7C: $20 $01

    ld [$2020], sp                                ; $3B7E: $08 $20 $20
    ld bc, $0008                                  ; $3B81: $01 $08 $00
    jr nz, @+$03                                  ; $3B84: $20 $01

    ld [$0802], sp                                ; $3B86: $08 $02 $08
    rrca                                          ; $3B89: $0F
    ld bc, $0014                                  ; $3B8A: $01 $14 $00
    rrca                                          ; $3B8D: $0F
    ld bc, $0808                                  ; $3B8E: $01 $08 $08
    rrca                                          ; $3B91: $0F
    ld bc, $0408                                  ; $3B92: $01 $08 $04
    ld bc, $010F                                  ; $3B95: $01 $0F $01
    ld [$0F00], sp                                ; $3B98: $08 $00 $0F
    ld bc, $0108                                  ; $3B9B: $01 $08 $01
    rrca                                          ; $3B9E: $0F
    ld bc, $0008                                  ; $3B9F: $01 $08 $00
    rrca                                          ; $3BA2: $0F
    ld bc, $04FF                                  ; $3BA3: $01 $FF $04
    ld [bc], a                                    ; $3BA6: $02
    rrca                                          ; $3BA7: $0F
    ld bc, $0008                                  ; $3BA8: $01 $08 $00
    rrca                                          ; $3BAB: $0F
    ld bc, $0208                                  ; $3BAC: $01 $08 $02
    rrca                                          ; $3BAF: $0F
    ld bc, $0008                                  ; $3BB0: $01 $08 $00
    rrca                                          ; $3BB3: $0F
    ld bc, $02FF                                  ; $3BB4: $01 $FF $02
    inc b                                         ; $3BB7: $04
    inc b                                         ; $3BB8: $04
    ld bc, $0814                                  ; $3BB9: $01 $14 $08
    ld [$FF01], sp                                ; $3BBC: $08 $01 $FF
    rst RST_38                                    ; $3BBF: $FF
    rst RST_38                                    ; $3BC0: $FF
    rst RST_38                                    ; $3BC1: $FF
    rst RST_38                                    ; $3BC2: $FF
    rst RST_38                                    ; $3BC3: $FF

Jump_000_3BC4:
    rst RST_38                                    ; $3BC4: $FF
    rst RST_38                                    ; $3BC5: $FF
    rst RST_38                                    ; $3BC6: $FF

Call_000_3BC7:
    rst RST_38                                    ; $3BC7: $FF
    rst RST_38                                    ; $3BC8: $FF
    rst RST_38                                    ; $3BC9: $FF
    rst RST_38                                    ; $3BCA: $FF
    rst RST_38                                    ; $3BCB: $FF
    rst RST_38                                    ; $3BCC: $FF
    rst RST_38                                    ; $3BCD: $FF
    rst RST_38                                    ; $3BCE: $FF
    rst RST_38                                    ; $3BCF: $FF
    rst RST_38                                    ; $3BD0: $FF
    rst RST_38                                    ; $3BD1: $FF
    rst RST_38                                    ; $3BD2: $FF
    rst RST_38                                    ; $3BD3: $FF
    rst RST_38                                    ; $3BD4: $FF
    rst RST_38                                    ; $3BD5: $FF
    rst RST_38                                    ; $3BD6: $FF
    rst RST_38                                    ; $3BD7: $FF
    rst RST_38                                    ; $3BD8: $FF
    rst RST_38                                    ; $3BD9: $FF
    rst RST_38                                    ; $3BDA: $FF
    rst RST_38                                    ; $3BDB: $FF
    rst RST_38                                    ; $3BDC: $FF
    rst RST_38                                    ; $3BDD: $FF
    rst RST_38                                    ; $3BDE: $FF
    rst RST_38                                    ; $3BDF: $FF
    rst RST_38                                    ; $3BE0: $FF
    rst RST_38                                    ; $3BE1: $FF
    rst RST_38                                    ; $3BE2: $FF
    rst RST_38                                    ; $3BE3: $FF
    rst RST_38                                    ; $3BE4: $FF
    rst RST_38                                    ; $3BE5: $FF
    rst RST_38                                    ; $3BE6: $FF
    rst RST_38                                    ; $3BE7: $FF
    rst RST_38                                    ; $3BE8: $FF
    rst RST_38                                    ; $3BE9: $FF
    rst RST_38                                    ; $3BEA: $FF
    rst RST_38                                    ; $3BEB: $FF
    rst RST_38                                    ; $3BEC: $FF

Jump_000_3BED:
    rst RST_38                                    ; $3BED: $FF
    rst RST_38                                    ; $3BEE: $FF
    rst RST_38                                    ; $3BEF: $FF
    rst RST_38                                    ; $3BF0: $FF
    rst RST_38                                    ; $3BF1: $FF
    rst RST_38                                    ; $3BF2: $FF
    rst RST_38                                    ; $3BF3: $FF
    rst RST_38                                    ; $3BF4: $FF
    rst RST_38                                    ; $3BF5: $FF
    rst RST_38                                    ; $3BF6: $FF
    rst RST_38                                    ; $3BF7: $FF
    rst RST_38                                    ; $3BF8: $FF
    rst RST_38                                    ; $3BF9: $FF
    rst RST_38                                    ; $3BFA: $FF
    rst RST_38                                    ; $3BFB: $FF

Jump_000_3BFC:
    rst RST_38                                    ; $3BFC: $FF
    rst RST_38                                    ; $3BFD: $FF
    rst RST_38                                    ; $3BFE: $FF
    rst RST_38                                    ; $3BFF: $FF

Jump_000_3C00:
    rst RST_38                                    ; $3C00: $FF
    rst RST_38                                    ; $3C01: $FF

Jump_000_3C02:
    rst RST_38                                    ; $3C02: $FF
    rst RST_38                                    ; $3C03: $FF

Jump_000_3C04:
    rst RST_38                                    ; $3C04: $FF
    rst RST_38                                    ; $3C05: $FF
    rst RST_38                                    ; $3C06: $FF

Call_000_3C07:
    rst RST_38                                    ; $3C07: $FF

Call_000_3C08:
    rst RST_38                                    ; $3C08: $FF
    rst RST_38                                    ; $3C09: $FF
    rst RST_38                                    ; $3C0A: $FF
    rst RST_38                                    ; $3C0B: $FF

Call_000_3C0C:
    rst RST_38                                    ; $3C0C: $FF
    rst RST_38                                    ; $3C0D: $FF

Call_000_3C0E:
    rst RST_38                                    ; $3C0E: $FF
    rst RST_38                                    ; $3C0F: $FF
    rst RST_38                                    ; $3C10: $FF
    rst RST_38                                    ; $3C11: $FF
    rst RST_38                                    ; $3C12: $FF
    rst RST_38                                    ; $3C13: $FF
    rst RST_38                                    ; $3C14: $FF
    rst RST_38                                    ; $3C15: $FF
    rst RST_38                                    ; $3C16: $FF
    rst RST_38                                    ; $3C17: $FF
    rst RST_38                                    ; $3C18: $FF
    rst RST_38                                    ; $3C19: $FF
    rst RST_38                                    ; $3C1A: $FF
    rst RST_38                                    ; $3C1B: $FF
    rst RST_38                                    ; $3C1C: $FF
    rst RST_38                                    ; $3C1D: $FF
    rst RST_38                                    ; $3C1E: $FF
    rst RST_38                                    ; $3C1F: $FF
    rst RST_38                                    ; $3C20: $FF
    rst RST_38                                    ; $3C21: $FF
    rst RST_38                                    ; $3C22: $FF
    rst RST_38                                    ; $3C23: $FF

Jump_000_3C24:
    rst RST_38                                    ; $3C24: $FF
    rst RST_38                                    ; $3C25: $FF
    rst RST_38                                    ; $3C26: $FF
    rst RST_38                                    ; $3C27: $FF

Call_000_3C28:
    rst RST_38                                    ; $3C28: $FF
    rst RST_38                                    ; $3C29: $FF
    rst RST_38                                    ; $3C2A: $FF
    rst RST_38                                    ; $3C2B: $FF
    rst RST_38                                    ; $3C2C: $FF
    rst RST_38                                    ; $3C2D: $FF
    rst RST_38                                    ; $3C2E: $FF
    rst RST_38                                    ; $3C2F: $FF
    rst RST_38                                    ; $3C30: $FF
    rst RST_38                                    ; $3C31: $FF
    rst RST_38                                    ; $3C32: $FF
    rst RST_38                                    ; $3C33: $FF
    rst RST_38                                    ; $3C34: $FF
    rst RST_38                                    ; $3C35: $FF
    rst RST_38                                    ; $3C36: $FF
    rst RST_38                                    ; $3C37: $FF

Call_000_3C38:
    rst RST_38                                    ; $3C38: $FF
    rst RST_38                                    ; $3C39: $FF
    rst RST_38                                    ; $3C3A: $FF
    rst RST_38                                    ; $3C3B: $FF

Jump_000_3C3C:
    rst RST_38                                    ; $3C3C: $FF

Call_000_3C3D:
    rst RST_38                                    ; $3C3D: $FF
    rst RST_38                                    ; $3C3E: $FF

Jump_000_3C3F:
    rst RST_38                                    ; $3C3F: $FF
    rst RST_38                                    ; $3C40: $FF
    rst RST_38                                    ; $3C41: $FF
    rst RST_38                                    ; $3C42: $FF
    rst RST_38                                    ; $3C43: $FF
    rst RST_38                                    ; $3C44: $FF
    rst RST_38                                    ; $3C45: $FF
    rst RST_38                                    ; $3C46: $FF
    rst RST_38                                    ; $3C47: $FF
    rst RST_38                                    ; $3C48: $FF
    rst RST_38                                    ; $3C49: $FF
    rst RST_38                                    ; $3C4A: $FF
    rst RST_38                                    ; $3C4B: $FF
    rst RST_38                                    ; $3C4C: $FF
    rst RST_38                                    ; $3C4D: $FF
    rst RST_38                                    ; $3C4E: $FF
    rst RST_38                                    ; $3C4F: $FF
    rst RST_38                                    ; $3C50: $FF
    rst RST_38                                    ; $3C51: $FF
    rst RST_38                                    ; $3C52: $FF
    rst RST_38                                    ; $3C53: $FF
    rst RST_38                                    ; $3C54: $FF
    rst RST_38                                    ; $3C55: $FF
    rst RST_38                                    ; $3C56: $FF
    rst RST_38                                    ; $3C57: $FF
    rst RST_38                                    ; $3C58: $FF
    rst RST_38                                    ; $3C59: $FF
    rst RST_38                                    ; $3C5A: $FF
    rst RST_38                                    ; $3C5B: $FF
    rst RST_38                                    ; $3C5C: $FF
    rst RST_38                                    ; $3C5D: $FF
    rst RST_38                                    ; $3C5E: $FF
    rst RST_38                                    ; $3C5F: $FF

Call_000_3C60:
    rst RST_38                                    ; $3C60: $FF
    rst RST_38                                    ; $3C61: $FF
    rst RST_38                                    ; $3C62: $FF
    rst RST_38                                    ; $3C63: $FF
    rst RST_38                                    ; $3C64: $FF
    rst RST_38                                    ; $3C65: $FF
    rst RST_38                                    ; $3C66: $FF
    rst RST_38                                    ; $3C67: $FF
    rst RST_38                                    ; $3C68: $FF
    rst RST_38                                    ; $3C69: $FF
    rst RST_38                                    ; $3C6A: $FF
    rst RST_38                                    ; $3C6B: $FF
    rst RST_38                                    ; $3C6C: $FF
    rst RST_38                                    ; $3C6D: $FF
    rst RST_38                                    ; $3C6E: $FF
    rst RST_38                                    ; $3C6F: $FF
    rst RST_38                                    ; $3C70: $FF
    rst RST_38                                    ; $3C71: $FF
    rst RST_38                                    ; $3C72: $FF
    rst RST_38                                    ; $3C73: $FF
    rst RST_38                                    ; $3C74: $FF
    rst RST_38                                    ; $3C75: $FF
    rst RST_38                                    ; $3C76: $FF
    rst RST_38                                    ; $3C77: $FF
    rst RST_38                                    ; $3C78: $FF
    rst RST_38                                    ; $3C79: $FF
    rst RST_38                                    ; $3C7A: $FF
    rst RST_38                                    ; $3C7B: $FF
    rst RST_38                                    ; $3C7C: $FF
    rst RST_38                                    ; $3C7D: $FF
    rst RST_38                                    ; $3C7E: $FF
    rst RST_38                                    ; $3C7F: $FF
    rst RST_38                                    ; $3C80: $FF
    rst RST_38                                    ; $3C81: $FF
    rst RST_38                                    ; $3C82: $FF
    rst RST_38                                    ; $3C83: $FF

Jump_000_3C84:
    rst RST_38                                    ; $3C84: $FF
    rst RST_38                                    ; $3C85: $FF
    rst RST_38                                    ; $3C86: $FF
    rst RST_38                                    ; $3C87: $FF
    rst RST_38                                    ; $3C88: $FF
    rst RST_38                                    ; $3C89: $FF
    rst RST_38                                    ; $3C8A: $FF
    rst RST_38                                    ; $3C8B: $FF
    rst RST_38                                    ; $3C8C: $FF
    rst RST_38                                    ; $3C8D: $FF
    rst RST_38                                    ; $3C8E: $FF
    rst RST_38                                    ; $3C8F: $FF
    rst RST_38                                    ; $3C90: $FF
    rst RST_38                                    ; $3C91: $FF
    rst RST_38                                    ; $3C92: $FF
    rst RST_38                                    ; $3C93: $FF
    rst RST_38                                    ; $3C94: $FF
    rst RST_38                                    ; $3C95: $FF
    rst RST_38                                    ; $3C96: $FF
    rst RST_38                                    ; $3C97: $FF
    rst RST_38                                    ; $3C98: $FF
    rst RST_38                                    ; $3C99: $FF
    rst RST_38                                    ; $3C9A: $FF
    rst RST_38                                    ; $3C9B: $FF
    rst RST_38                                    ; $3C9C: $FF
    rst RST_38                                    ; $3C9D: $FF
    rst RST_38                                    ; $3C9E: $FF
    rst RST_38                                    ; $3C9F: $FF
    rst RST_38                                    ; $3CA0: $FF
    rst RST_38                                    ; $3CA1: $FF
    rst RST_38                                    ; $3CA2: $FF
    rst RST_38                                    ; $3CA3: $FF
    rst RST_38                                    ; $3CA4: $FF
    rst RST_38                                    ; $3CA5: $FF
    rst RST_38                                    ; $3CA6: $FF
    rst RST_38                                    ; $3CA7: $FF
    rst RST_38                                    ; $3CA8: $FF
    rst RST_38                                    ; $3CA9: $FF
    rst RST_38                                    ; $3CAA: $FF
    rst RST_38                                    ; $3CAB: $FF
    rst RST_38                                    ; $3CAC: $FF
    rst RST_38                                    ; $3CAD: $FF
    rst RST_38                                    ; $3CAE: $FF
    rst RST_38                                    ; $3CAF: $FF
    rst RST_38                                    ; $3CB0: $FF
    rst RST_38                                    ; $3CB1: $FF
    rst RST_38                                    ; $3CB2: $FF
    rst RST_38                                    ; $3CB3: $FF
    rst RST_38                                    ; $3CB4: $FF
    rst RST_38                                    ; $3CB5: $FF
    rst RST_38                                    ; $3CB6: $FF
    rst RST_38                                    ; $3CB7: $FF
    rst RST_38                                    ; $3CB8: $FF
    rst RST_38                                    ; $3CB9: $FF
    rst RST_38                                    ; $3CBA: $FF
    rst RST_38                                    ; $3CBB: $FF
    rst RST_38                                    ; $3CBC: $FF
    rst RST_38                                    ; $3CBD: $FF
    rst RST_38                                    ; $3CBE: $FF
    rst RST_38                                    ; $3CBF: $FF
    rst RST_38                                    ; $3CC0: $FF
    rst RST_38                                    ; $3CC1: $FF

Call_000_3CC2:
    rst RST_38                                    ; $3CC2: $FF

Jump_000_3CC3:
    rst RST_38                                    ; $3CC3: $FF
    rst RST_38                                    ; $3CC4: $FF
    rst RST_38                                    ; $3CC5: $FF

Call_000_3CC6:
    rst RST_38                                    ; $3CC6: $FF
    rst RST_38                                    ; $3CC7: $FF
    rst RST_38                                    ; $3CC8: $FF
    rst RST_38                                    ; $3CC9: $FF
    rst RST_38                                    ; $3CCA: $FF
    rst RST_38                                    ; $3CCB: $FF
    rst RST_38                                    ; $3CCC: $FF
    rst RST_38                                    ; $3CCD: $FF
    rst RST_38                                    ; $3CCE: $FF
    rst RST_38                                    ; $3CCF: $FF
    rst RST_38                                    ; $3CD0: $FF
    rst RST_38                                    ; $3CD1: $FF
    rst RST_38                                    ; $3CD2: $FF
    rst RST_38                                    ; $3CD3: $FF
    rst RST_38                                    ; $3CD4: $FF
    rst RST_38                                    ; $3CD5: $FF
    rst RST_38                                    ; $3CD6: $FF
    rst RST_38                                    ; $3CD7: $FF
    rst RST_38                                    ; $3CD8: $FF
    rst RST_38                                    ; $3CD9: $FF
    rst RST_38                                    ; $3CDA: $FF
    rst RST_38                                    ; $3CDB: $FF
    rst RST_38                                    ; $3CDC: $FF
    rst RST_38                                    ; $3CDD: $FF
    rst RST_38                                    ; $3CDE: $FF
    rst RST_38                                    ; $3CDF: $FF
    rst RST_38                                    ; $3CE0: $FF
    rst RST_38                                    ; $3CE1: $FF
    rst RST_38                                    ; $3CE2: $FF
    rst RST_38                                    ; $3CE3: $FF
    rst RST_38                                    ; $3CE4: $FF
    rst RST_38                                    ; $3CE5: $FF
    rst RST_38                                    ; $3CE6: $FF
    rst RST_38                                    ; $3CE7: $FF
    rst RST_38                                    ; $3CE8: $FF
    rst RST_38                                    ; $3CE9: $FF
    rst RST_38                                    ; $3CEA: $FF
    rst RST_38                                    ; $3CEB: $FF
    rst RST_38                                    ; $3CEC: $FF
    rst RST_38                                    ; $3CED: $FF
    rst RST_38                                    ; $3CEE: $FF
    rst RST_38                                    ; $3CEF: $FF
    rst RST_38                                    ; $3CF0: $FF
    rst RST_38                                    ; $3CF1: $FF
    rst RST_38                                    ; $3CF2: $FF

Call_000_3CF3:
    rst RST_38                                    ; $3CF3: $FF
    rst RST_38                                    ; $3CF4: $FF
    rst RST_38                                    ; $3CF5: $FF
    rst RST_38                                    ; $3CF6: $FF
    rst RST_38                                    ; $3CF7: $FF

Call_000_3CF8:
    rst RST_38                                    ; $3CF8: $FF
    rst RST_38                                    ; $3CF9: $FF
    rst RST_38                                    ; $3CFA: $FF
    rst RST_38                                    ; $3CFB: $FF

Jump_000_3CFC:
    rst RST_38                                    ; $3CFC: $FF
    rst RST_38                                    ; $3CFD: $FF

Call_000_3CFE:
    rst RST_38                                    ; $3CFE: $FF

Call_000_3CFF:
Jump_000_3CFF:
    rst RST_38                                    ; $3CFF: $FF

Jump_000_3D00:
    rst RST_38                                    ; $3D00: $FF
    rst RST_38                                    ; $3D01: $FF
    rst RST_38                                    ; $3D02: $FF
    rst RST_38                                    ; $3D03: $FF
    rst RST_38                                    ; $3D04: $FF
    rst RST_38                                    ; $3D05: $FF
    rst RST_38                                    ; $3D06: $FF
    rst RST_38                                    ; $3D07: $FF
    rst RST_38                                    ; $3D08: $FF
    rst RST_38                                    ; $3D09: $FF
    rst RST_38                                    ; $3D0A: $FF
    rst RST_38                                    ; $3D0B: $FF
    rst RST_38                                    ; $3D0C: $FF
    rst RST_38                                    ; $3D0D: $FF
    rst RST_38                                    ; $3D0E: $FF
    rst RST_38                                    ; $3D0F: $FF
    rst RST_38                                    ; $3D10: $FF
    rst RST_38                                    ; $3D11: $FF
    rst RST_38                                    ; $3D12: $FF
    rst RST_38                                    ; $3D13: $FF
    rst RST_38                                    ; $3D14: $FF
    rst RST_38                                    ; $3D15: $FF
    rst RST_38                                    ; $3D16: $FF
    rst RST_38                                    ; $3D17: $FF
    rst RST_38                                    ; $3D18: $FF
    rst RST_38                                    ; $3D19: $FF
    rst RST_38                                    ; $3D1A: $FF
    rst RST_38                                    ; $3D1B: $FF
    rst RST_38                                    ; $3D1C: $FF
    rst RST_38                                    ; $3D1D: $FF
    rst RST_38                                    ; $3D1E: $FF
    rst RST_38                                    ; $3D1F: $FF
    rst RST_38                                    ; $3D20: $FF
    rst RST_38                                    ; $3D21: $FF
    rst RST_38                                    ; $3D22: $FF
    rst RST_38                                    ; $3D23: $FF
    rst RST_38                                    ; $3D24: $FF
    rst RST_38                                    ; $3D25: $FF
    rst RST_38                                    ; $3D26: $FF
    rst RST_38                                    ; $3D27: $FF
    rst RST_38                                    ; $3D28: $FF
    rst RST_38                                    ; $3D29: $FF
    rst RST_38                                    ; $3D2A: $FF
    rst RST_38                                    ; $3D2B: $FF
    rst RST_38                                    ; $3D2C: $FF
    rst RST_38                                    ; $3D2D: $FF
    rst RST_38                                    ; $3D2E: $FF
    rst RST_38                                    ; $3D2F: $FF
    rst RST_38                                    ; $3D30: $FF
    rst RST_38                                    ; $3D31: $FF
    rst RST_38                                    ; $3D32: $FF
    rst RST_38                                    ; $3D33: $FF
    rst RST_38                                    ; $3D34: $FF
    rst RST_38                                    ; $3D35: $FF
    rst RST_38                                    ; $3D36: $FF
    rst RST_38                                    ; $3D37: $FF
    rst RST_38                                    ; $3D38: $FF
    rst RST_38                                    ; $3D39: $FF
    rst RST_38                                    ; $3D3A: $FF
    rst RST_38                                    ; $3D3B: $FF
    rst RST_38                                    ; $3D3C: $FF
    rst RST_38                                    ; $3D3D: $FF
    rst RST_38                                    ; $3D3E: $FF
    rst RST_38                                    ; $3D3F: $FF
    rst RST_38                                    ; $3D40: $FF
    rst RST_38                                    ; $3D41: $FF
    rst RST_38                                    ; $3D42: $FF
    rst RST_38                                    ; $3D43: $FF
    rst RST_38                                    ; $3D44: $FF
    rst RST_38                                    ; $3D45: $FF
    rst RST_38                                    ; $3D46: $FF
    rst RST_38                                    ; $3D47: $FF
    rst RST_38                                    ; $3D48: $FF
    rst RST_38                                    ; $3D49: $FF
    rst RST_38                                    ; $3D4A: $FF
    rst RST_38                                    ; $3D4B: $FF
    rst RST_38                                    ; $3D4C: $FF
    rst RST_38                                    ; $3D4D: $FF
    rst RST_38                                    ; $3D4E: $FF
    rst RST_38                                    ; $3D4F: $FF
    rst RST_38                                    ; $3D50: $FF
    rst RST_38                                    ; $3D51: $FF
    rst RST_38                                    ; $3D52: $FF
    rst RST_38                                    ; $3D53: $FF
    rst RST_38                                    ; $3D54: $FF
    rst RST_38                                    ; $3D55: $FF

Call_000_3D56:
    rst RST_38                                    ; $3D56: $FF
    rst RST_38                                    ; $3D57: $FF
    rst RST_38                                    ; $3D58: $FF
    rst RST_38                                    ; $3D59: $FF
    rst RST_38                                    ; $3D5A: $FF
    rst RST_38                                    ; $3D5B: $FF
    rst RST_38                                    ; $3D5C: $FF
    rst RST_38                                    ; $3D5D: $FF
    rst RST_38                                    ; $3D5E: $FF
    rst RST_38                                    ; $3D5F: $FF
    rst RST_38                                    ; $3D60: $FF
    rst RST_38                                    ; $3D61: $FF
    rst RST_38                                    ; $3D62: $FF
    rst RST_38                                    ; $3D63: $FF
    rst RST_38                                    ; $3D64: $FF
    rst RST_38                                    ; $3D65: $FF
    rst RST_38                                    ; $3D66: $FF
    rst RST_38                                    ; $3D67: $FF
    rst RST_38                                    ; $3D68: $FF
    rst RST_38                                    ; $3D69: $FF
    rst RST_38                                    ; $3D6A: $FF
    rst RST_38                                    ; $3D6B: $FF
    rst RST_38                                    ; $3D6C: $FF
    rst RST_38                                    ; $3D6D: $FF
    rst RST_38                                    ; $3D6E: $FF
    rst RST_38                                    ; $3D6F: $FF
    rst RST_38                                    ; $3D70: $FF
    rst RST_38                                    ; $3D71: $FF
    rst RST_38                                    ; $3D72: $FF
    rst RST_38                                    ; $3D73: $FF
    rst RST_38                                    ; $3D74: $FF
    rst RST_38                                    ; $3D75: $FF
    rst RST_38                                    ; $3D76: $FF
    rst RST_38                                    ; $3D77: $FF
    rst RST_38                                    ; $3D78: $FF
    rst RST_38                                    ; $3D79: $FF
    rst RST_38                                    ; $3D7A: $FF
    rst RST_38                                    ; $3D7B: $FF
    rst RST_38                                    ; $3D7C: $FF
    rst RST_38                                    ; $3D7D: $FF
    rst RST_38                                    ; $3D7E: $FF
    rst RST_38                                    ; $3D7F: $FF
    rst RST_38                                    ; $3D80: $FF
    rst RST_38                                    ; $3D81: $FF
    rst RST_38                                    ; $3D82: $FF
    rst RST_38                                    ; $3D83: $FF
    rst RST_38                                    ; $3D84: $FF
    rst RST_38                                    ; $3D85: $FF
    rst RST_38                                    ; $3D86: $FF
    rst RST_38                                    ; $3D87: $FF
    rst RST_38                                    ; $3D88: $FF
    rst RST_38                                    ; $3D89: $FF
    rst RST_38                                    ; $3D8A: $FF
    rst RST_38                                    ; $3D8B: $FF
    rst RST_38                                    ; $3D8C: $FF
    rst RST_38                                    ; $3D8D: $FF
    rst RST_38                                    ; $3D8E: $FF
    rst RST_38                                    ; $3D8F: $FF
    rst RST_38                                    ; $3D90: $FF
    rst RST_38                                    ; $3D91: $FF
    rst RST_38                                    ; $3D92: $FF
    rst RST_38                                    ; $3D93: $FF
    rst RST_38                                    ; $3D94: $FF
    rst RST_38                                    ; $3D95: $FF
    rst RST_38                                    ; $3D96: $FF
    rst RST_38                                    ; $3D97: $FF
    rst RST_38                                    ; $3D98: $FF
    rst RST_38                                    ; $3D99: $FF
    rst RST_38                                    ; $3D9A: $FF
    rst RST_38                                    ; $3D9B: $FF
    rst RST_38                                    ; $3D9C: $FF
    rst RST_38                                    ; $3D9D: $FF
    rst RST_38                                    ; $3D9E: $FF
    rst RST_38                                    ; $3D9F: $FF
    rst RST_38                                    ; $3DA0: $FF
    rst RST_38                                    ; $3DA1: $FF
    rst RST_38                                    ; $3DA2: $FF
    rst RST_38                                    ; $3DA3: $FF
    rst RST_38                                    ; $3DA4: $FF

Call_000_3DA5:
    rst RST_38                                    ; $3DA5: $FF
    rst RST_38                                    ; $3DA6: $FF
    rst RST_38                                    ; $3DA7: $FF
    rst RST_38                                    ; $3DA8: $FF
    rst RST_38                                    ; $3DA9: $FF
    rst RST_38                                    ; $3DAA: $FF
    rst RST_38                                    ; $3DAB: $FF
    rst RST_38                                    ; $3DAC: $FF
    rst RST_38                                    ; $3DAD: $FF
    rst RST_38                                    ; $3DAE: $FF
    rst RST_38                                    ; $3DAF: $FF
    rst RST_38                                    ; $3DB0: $FF
    rst RST_38                                    ; $3DB1: $FF
    rst RST_38                                    ; $3DB2: $FF
    rst RST_38                                    ; $3DB3: $FF
    rst RST_38                                    ; $3DB4: $FF
    rst RST_38                                    ; $3DB5: $FF
    rst RST_38                                    ; $3DB6: $FF
    rst RST_38                                    ; $3DB7: $FF
    rst RST_38                                    ; $3DB8: $FF
    rst RST_38                                    ; $3DB9: $FF
    rst RST_38                                    ; $3DBA: $FF
    rst RST_38                                    ; $3DBB: $FF
    rst RST_38                                    ; $3DBC: $FF
    rst RST_38                                    ; $3DBD: $FF
    rst RST_38                                    ; $3DBE: $FF
    rst RST_38                                    ; $3DBF: $FF
    rst RST_38                                    ; $3DC0: $FF
    rst RST_38                                    ; $3DC1: $FF

Call_000_3DC2:
Jump_000_3DC2:
    rst RST_38                                    ; $3DC2: $FF

Jump_000_3DC3:
    rst RST_38                                    ; $3DC3: $FF
    rst RST_38                                    ; $3DC4: $FF
    rst RST_38                                    ; $3DC5: $FF
    rst RST_38                                    ; $3DC6: $FF
    rst RST_38                                    ; $3DC7: $FF
    rst RST_38                                    ; $3DC8: $FF
    rst RST_38                                    ; $3DC9: $FF
    rst RST_38                                    ; $3DCA: $FF
    rst RST_38                                    ; $3DCB: $FF
    rst RST_38                                    ; $3DCC: $FF
    rst RST_38                                    ; $3DCD: $FF
    rst RST_38                                    ; $3DCE: $FF
    rst RST_38                                    ; $3DCF: $FF
    rst RST_38                                    ; $3DD0: $FF
    rst RST_38                                    ; $3DD1: $FF
    rst RST_38                                    ; $3DD2: $FF
    rst RST_38                                    ; $3DD3: $FF
    rst RST_38                                    ; $3DD4: $FF
    rst RST_38                                    ; $3DD5: $FF
    rst RST_38                                    ; $3DD6: $FF
    rst RST_38                                    ; $3DD7: $FF
    rst RST_38                                    ; $3DD8: $FF
    rst RST_38                                    ; $3DD9: $FF
    rst RST_38                                    ; $3DDA: $FF
    rst RST_38                                    ; $3DDB: $FF
    rst RST_38                                    ; $3DDC: $FF
    rst RST_38                                    ; $3DDD: $FF
    rst RST_38                                    ; $3DDE: $FF
    rst RST_38                                    ; $3DDF: $FF
    rst RST_38                                    ; $3DE0: $FF
    rst RST_38                                    ; $3DE1: $FF
    rst RST_38                                    ; $3DE2: $FF
    rst RST_38                                    ; $3DE3: $FF
    rst RST_38                                    ; $3DE4: $FF
    rst RST_38                                    ; $3DE5: $FF
    rst RST_38                                    ; $3DE6: $FF
    rst RST_38                                    ; $3DE7: $FF
    rst RST_38                                    ; $3DE8: $FF
    rst RST_38                                    ; $3DE9: $FF
    rst RST_38                                    ; $3DEA: $FF
    rst RST_38                                    ; $3DEB: $FF
    rst RST_38                                    ; $3DEC: $FF
    rst RST_38                                    ; $3DED: $FF
    rst RST_38                                    ; $3DEE: $FF
    rst RST_38                                    ; $3DEF: $FF
    rst RST_38                                    ; $3DF0: $FF
    rst RST_38                                    ; $3DF1: $FF
    rst RST_38                                    ; $3DF2: $FF
    rst RST_38                                    ; $3DF3: $FF
    rst RST_38                                    ; $3DF4: $FF
    rst RST_38                                    ; $3DF5: $FF
    rst RST_38                                    ; $3DF6: $FF
    rst RST_38                                    ; $3DF7: $FF
    rst RST_38                                    ; $3DF8: $FF
    rst RST_38                                    ; $3DF9: $FF
    rst RST_38                                    ; $3DFA: $FF
    rst RST_38                                    ; $3DFB: $FF
    rst RST_38                                    ; $3DFC: $FF
    rst RST_38                                    ; $3DFD: $FF

Call_000_3DFE:
    rst RST_38                                    ; $3DFE: $FF
    rst RST_38                                    ; $3DFF: $FF

Call_000_3E00:
    rst RST_38                                    ; $3E00: $FF
    rst RST_38                                    ; $3E01: $FF
    rst RST_38                                    ; $3E02: $FF
    rst RST_38                                    ; $3E03: $FF
    rst RST_38                                    ; $3E04: $FF
    rst RST_38                                    ; $3E05: $FF
    rst RST_38                                    ; $3E06: $FF
    rst RST_38                                    ; $3E07: $FF
    rst RST_38                                    ; $3E08: $FF
    rst RST_38                                    ; $3E09: $FF
    rst RST_38                                    ; $3E0A: $FF
    rst RST_38                                    ; $3E0B: $FF
    rst RST_38                                    ; $3E0C: $FF
    rst RST_38                                    ; $3E0D: $FF
    rst RST_38                                    ; $3E0E: $FF
    rst RST_38                                    ; $3E0F: $FF
    rst RST_38                                    ; $3E10: $FF
    rst RST_38                                    ; $3E11: $FF
    rst RST_38                                    ; $3E12: $FF
    rst RST_38                                    ; $3E13: $FF
    rst RST_38                                    ; $3E14: $FF
    rst RST_38                                    ; $3E15: $FF
    rst RST_38                                    ; $3E16: $FF
    rst RST_38                                    ; $3E17: $FF
    rst RST_38                                    ; $3E18: $FF
    rst RST_38                                    ; $3E19: $FF
    rst RST_38                                    ; $3E1A: $FF
    rst RST_38                                    ; $3E1B: $FF
    rst RST_38                                    ; $3E1C: $FF
    rst RST_38                                    ; $3E1D: $FF
    rst RST_38                                    ; $3E1E: $FF
    rst RST_38                                    ; $3E1F: $FF
    rst RST_38                                    ; $3E20: $FF
    rst RST_38                                    ; $3E21: $FF
    rst RST_38                                    ; $3E22: $FF
    rst RST_38                                    ; $3E23: $FF
    rst RST_38                                    ; $3E24: $FF
    rst RST_38                                    ; $3E25: $FF
    rst RST_38                                    ; $3E26: $FF
    rst RST_38                                    ; $3E27: $FF
    rst RST_38                                    ; $3E28: $FF
    rst RST_38                                    ; $3E29: $FF
    rst RST_38                                    ; $3E2A: $FF
    rst RST_38                                    ; $3E2B: $FF
    rst RST_38                                    ; $3E2C: $FF
    rst RST_38                                    ; $3E2D: $FF
    rst RST_38                                    ; $3E2E: $FF
    rst RST_38                                    ; $3E2F: $FF
    rst RST_38                                    ; $3E30: $FF
    rst RST_38                                    ; $3E31: $FF
    rst RST_38                                    ; $3E32: $FF
    rst RST_38                                    ; $3E33: $FF
    rst RST_38                                    ; $3E34: $FF
    rst RST_38                                    ; $3E35: $FF

Call_000_3E36:
    rst RST_38                                    ; $3E36: $FF
    rst RST_38                                    ; $3E37: $FF

Call_000_3E38:
    rst RST_38                                    ; $3E38: $FF
    rst RST_38                                    ; $3E39: $FF
    rst RST_38                                    ; $3E3A: $FF
    rst RST_38                                    ; $3E3B: $FF

Jump_000_3E3C:
    rst RST_38                                    ; $3E3C: $FF
    rst RST_38                                    ; $3E3D: $FF
    rst RST_38                                    ; $3E3E: $FF
    rst RST_38                                    ; $3E3F: $FF
    rst RST_38                                    ; $3E40: $FF
    rst RST_38                                    ; $3E41: $FF
    rst RST_38                                    ; $3E42: $FF
    rst RST_38                                    ; $3E43: $FF
    rst RST_38                                    ; $3E44: $FF
    rst RST_38                                    ; $3E45: $FF
    rst RST_38                                    ; $3E46: $FF
    rst RST_38                                    ; $3E47: $FF
    rst RST_38                                    ; $3E48: $FF
    rst RST_38                                    ; $3E49: $FF
    rst RST_38                                    ; $3E4A: $FF
    rst RST_38                                    ; $3E4B: $FF
    rst RST_38                                    ; $3E4C: $FF
    rst RST_38                                    ; $3E4D: $FF
    rst RST_38                                    ; $3E4E: $FF
    rst RST_38                                    ; $3E4F: $FF
    rst RST_38                                    ; $3E50: $FF
    rst RST_38                                    ; $3E51: $FF
    rst RST_38                                    ; $3E52: $FF
    rst RST_38                                    ; $3E53: $FF
    rst RST_38                                    ; $3E54: $FF
    rst RST_38                                    ; $3E55: $FF
    rst RST_38                                    ; $3E56: $FF
    rst RST_38                                    ; $3E57: $FF
    rst RST_38                                    ; $3E58: $FF
    rst RST_38                                    ; $3E59: $FF
    rst RST_38                                    ; $3E5A: $FF
    rst RST_38                                    ; $3E5B: $FF
    rst RST_38                                    ; $3E5C: $FF
    rst RST_38                                    ; $3E5D: $FF
    rst RST_38                                    ; $3E5E: $FF
    rst RST_38                                    ; $3E5F: $FF
    rst RST_38                                    ; $3E60: $FF
    rst RST_38                                    ; $3E61: $FF
    rst RST_38                                    ; $3E62: $FF
    rst RST_38                                    ; $3E63: $FF
    rst RST_38                                    ; $3E64: $FF
    rst RST_38                                    ; $3E65: $FF
    rst RST_38                                    ; $3E66: $FF
    rst RST_38                                    ; $3E67: $FF
    rst RST_38                                    ; $3E68: $FF
    rst RST_38                                    ; $3E69: $FF
    rst RST_38                                    ; $3E6A: $FF
    rst RST_38                                    ; $3E6B: $FF
    rst RST_38                                    ; $3E6C: $FF
    rst RST_38                                    ; $3E6D: $FF
    rst RST_38                                    ; $3E6E: $FF
    rst RST_38                                    ; $3E6F: $FF
    rst RST_38                                    ; $3E70: $FF
    rst RST_38                                    ; $3E71: $FF
    rst RST_38                                    ; $3E72: $FF
    rst RST_38                                    ; $3E73: $FF
    rst RST_38                                    ; $3E74: $FF
    rst RST_38                                    ; $3E75: $FF
    rst RST_38                                    ; $3E76: $FF
    rst RST_38                                    ; $3E77: $FF
    rst RST_38                                    ; $3E78: $FF
    rst RST_38                                    ; $3E79: $FF
    rst RST_38                                    ; $3E7A: $FF
    rst RST_38                                    ; $3E7B: $FF
    rst RST_38                                    ; $3E7C: $FF
    rst RST_38                                    ; $3E7D: $FF
    rst RST_38                                    ; $3E7E: $FF
    rst RST_38                                    ; $3E7F: $FF
    rst RST_38                                    ; $3E80: $FF
    rst RST_38                                    ; $3E81: $FF
    rst RST_38                                    ; $3E82: $FF
    rst RST_38                                    ; $3E83: $FF
    rst RST_38                                    ; $3E84: $FF
    rst RST_38                                    ; $3E85: $FF
    rst RST_38                                    ; $3E86: $FF
    rst RST_38                                    ; $3E87: $FF
    rst RST_38                                    ; $3E88: $FF
    rst RST_38                                    ; $3E89: $FF
    rst RST_38                                    ; $3E8A: $FF
    rst RST_38                                    ; $3E8B: $FF
    rst RST_38                                    ; $3E8C: $FF
    rst RST_38                                    ; $3E8D: $FF
    rst RST_38                                    ; $3E8E: $FF
    rst RST_38                                    ; $3E8F: $FF
    rst RST_38                                    ; $3E90: $FF
    rst RST_38                                    ; $3E91: $FF
    rst RST_38                                    ; $3E92: $FF
    rst RST_38                                    ; $3E93: $FF
    rst RST_38                                    ; $3E94: $FF
    rst RST_38                                    ; $3E95: $FF
    rst RST_38                                    ; $3E96: $FF
    rst RST_38                                    ; $3E97: $FF
    rst RST_38                                    ; $3E98: $FF
    rst RST_38                                    ; $3E99: $FF
    rst RST_38                                    ; $3E9A: $FF
    rst RST_38                                    ; $3E9B: $FF
    rst RST_38                                    ; $3E9C: $FF
    rst RST_38                                    ; $3E9D: $FF
    rst RST_38                                    ; $3E9E: $FF
    rst RST_38                                    ; $3E9F: $FF
    rst RST_38                                    ; $3EA0: $FF
    rst RST_38                                    ; $3EA1: $FF
    rst RST_38                                    ; $3EA2: $FF
    rst RST_38                                    ; $3EA3: $FF
    rst RST_38                                    ; $3EA4: $FF
    rst RST_38                                    ; $3EA5: $FF
    rst RST_38                                    ; $3EA6: $FF
    rst RST_38                                    ; $3EA7: $FF
    rst RST_38                                    ; $3EA8: $FF
    rst RST_38                                    ; $3EA9: $FF
    rst RST_38                                    ; $3EAA: $FF
    rst RST_38                                    ; $3EAB: $FF
    rst RST_38                                    ; $3EAC: $FF
    rst RST_38                                    ; $3EAD: $FF
    rst RST_38                                    ; $3EAE: $FF
    rst RST_38                                    ; $3EAF: $FF
    rst RST_38                                    ; $3EB0: $FF
    rst RST_38                                    ; $3EB1: $FF
    rst RST_38                                    ; $3EB2: $FF
    rst RST_38                                    ; $3EB3: $FF
    rst RST_38                                    ; $3EB4: $FF
    rst RST_38                                    ; $3EB5: $FF
    rst RST_38                                    ; $3EB6: $FF
    rst RST_38                                    ; $3EB7: $FF
    rst RST_38                                    ; $3EB8: $FF
    rst RST_38                                    ; $3EB9: $FF
    rst RST_38                                    ; $3EBA: $FF
    rst RST_38                                    ; $3EBB: $FF
    rst RST_38                                    ; $3EBC: $FF
    rst RST_38                                    ; $3EBD: $FF
    rst RST_38                                    ; $3EBE: $FF
    rst RST_38                                    ; $3EBF: $FF
    rst RST_38                                    ; $3EC0: $FF

Call_000_3EC1:
    rst RST_38                                    ; $3EC1: $FF
    rst RST_38                                    ; $3EC2: $FF
    rst RST_38                                    ; $3EC3: $FF
    rst RST_38                                    ; $3EC4: $FF
    rst RST_38                                    ; $3EC5: $FF
    rst RST_38                                    ; $3EC6: $FF
    rst RST_38                                    ; $3EC7: $FF
    rst RST_38                                    ; $3EC8: $FF
    rst RST_38                                    ; $3EC9: $FF
    rst RST_38                                    ; $3ECA: $FF
    rst RST_38                                    ; $3ECB: $FF
    rst RST_38                                    ; $3ECC: $FF
    rst RST_38                                    ; $3ECD: $FF
    rst RST_38                                    ; $3ECE: $FF
    rst RST_38                                    ; $3ECF: $FF
    rst RST_38                                    ; $3ED0: $FF
    rst RST_38                                    ; $3ED1: $FF
    rst RST_38                                    ; $3ED2: $FF
    rst RST_38                                    ; $3ED3: $FF
    rst RST_38                                    ; $3ED4: $FF
    rst RST_38                                    ; $3ED5: $FF
    rst RST_38                                    ; $3ED6: $FF
    rst RST_38                                    ; $3ED7: $FF
    rst RST_38                                    ; $3ED8: $FF
    rst RST_38                                    ; $3ED9: $FF
    rst RST_38                                    ; $3EDA: $FF
    rst RST_38                                    ; $3EDB: $FF
    rst RST_38                                    ; $3EDC: $FF
    rst RST_38                                    ; $3EDD: $FF
    rst RST_38                                    ; $3EDE: $FF
    rst RST_38                                    ; $3EDF: $FF
    rst RST_38                                    ; $3EE0: $FF
    rst RST_38                                    ; $3EE1: $FF
    rst RST_38                                    ; $3EE2: $FF
    rst RST_38                                    ; $3EE3: $FF
    rst RST_38                                    ; $3EE4: $FF
    rst RST_38                                    ; $3EE5: $FF
    rst RST_38                                    ; $3EE6: $FF
    rst RST_38                                    ; $3EE7: $FF
    rst RST_38                                    ; $3EE8: $FF
    rst RST_38                                    ; $3EE9: $FF
    rst RST_38                                    ; $3EEA: $FF
    rst RST_38                                    ; $3EEB: $FF
    rst RST_38                                    ; $3EEC: $FF
    rst RST_38                                    ; $3EED: $FF
    rst RST_38                                    ; $3EEE: $FF
    rst RST_38                                    ; $3EEF: $FF
    rst RST_38                                    ; $3EF0: $FF
    rst RST_38                                    ; $3EF1: $FF
    rst RST_38                                    ; $3EF2: $FF
    rst RST_38                                    ; $3EF3: $FF
    rst RST_38                                    ; $3EF4: $FF
    rst RST_38                                    ; $3EF5: $FF
    rst RST_38                                    ; $3EF6: $FF
    rst RST_38                                    ; $3EF7: $FF
    rst RST_38                                    ; $3EF8: $FF
    rst RST_38                                    ; $3EF9: $FF
    rst RST_38                                    ; $3EFA: $FF
    rst RST_38                                    ; $3EFB: $FF
    rst RST_38                                    ; $3EFC: $FF
    rst RST_38                                    ; $3EFD: $FF
    rst RST_38                                    ; $3EFE: $FF

Call_000_3EFF:
Jump_000_3EFF:
    rst RST_38                                    ; $3EFF: $FF
    rst RST_38                                    ; $3F00: $FF
    rst RST_38                                    ; $3F01: $FF
    rst RST_38                                    ; $3F02: $FF

Jump_000_3F03:
    rst RST_38                                    ; $3F03: $FF
    rst RST_38                                    ; $3F04: $FF
    rst RST_38                                    ; $3F05: $FF
    rst RST_38                                    ; $3F06: $FF
    rst RST_38                                    ; $3F07: $FF
    rst RST_38                                    ; $3F08: $FF
    rst RST_38                                    ; $3F09: $FF
    rst RST_38                                    ; $3F0A: $FF
    rst RST_38                                    ; $3F0B: $FF
    rst RST_38                                    ; $3F0C: $FF
    rst RST_38                                    ; $3F0D: $FF
    rst RST_38                                    ; $3F0E: $FF
    rst RST_38                                    ; $3F0F: $FF
    rst RST_38                                    ; $3F10: $FF
    rst RST_38                                    ; $3F11: $FF
    rst RST_38                                    ; $3F12: $FF
    rst RST_38                                    ; $3F13: $FF
    rst RST_38                                    ; $3F14: $FF
    rst RST_38                                    ; $3F15: $FF
    rst RST_38                                    ; $3F16: $FF
    rst RST_38                                    ; $3F17: $FF
    rst RST_38                                    ; $3F18: $FF
    rst RST_38                                    ; $3F19: $FF
    rst RST_38                                    ; $3F1A: $FF
    rst RST_38                                    ; $3F1B: $FF
    rst RST_38                                    ; $3F1C: $FF
    rst RST_38                                    ; $3F1D: $FF
    rst RST_38                                    ; $3F1E: $FF
    rst RST_38                                    ; $3F1F: $FF

Call_000_3F20:
    rst RST_38                                    ; $3F20: $FF
    rst RST_38                                    ; $3F21: $FF
    rst RST_38                                    ; $3F22: $FF
    rst RST_38                                    ; $3F23: $FF
    rst RST_38                                    ; $3F24: $FF
    rst RST_38                                    ; $3F25: $FF
    rst RST_38                                    ; $3F26: $FF
    rst RST_38                                    ; $3F27: $FF
    rst RST_38                                    ; $3F28: $FF
    rst RST_38                                    ; $3F29: $FF
    rst RST_38                                    ; $3F2A: $FF
    rst RST_38                                    ; $3F2B: $FF
    rst RST_38                                    ; $3F2C: $FF

Jump_000_3F2D:
    rst RST_38                                    ; $3F2D: $FF
    rst RST_38                                    ; $3F2E: $FF
    rst RST_38                                    ; $3F2F: $FF

Call_000_3F30:
    rst RST_38                                    ; $3F30: $FF
    rst RST_38                                    ; $3F31: $FF
    rst RST_38                                    ; $3F32: $FF
    rst RST_38                                    ; $3F33: $FF
    rst RST_38                                    ; $3F34: $FF

Jump_000_3F35:
    rst RST_38                                    ; $3F35: $FF

Call_000_3F36:
    rst RST_38                                    ; $3F36: $FF
    rst RST_38                                    ; $3F37: $FF

Call_000_3F38:
    rst RST_38                                    ; $3F38: $FF
    rst RST_38                                    ; $3F39: $FF
    rst RST_38                                    ; $3F3A: $FF

Call_000_3F3B:
    rst RST_38                                    ; $3F3B: $FF

Jump_000_3F3C:
    rst RST_38                                    ; $3F3C: $FF

Jump_000_3F3D:
    rst RST_38                                    ; $3F3D: $FF
    rst RST_38                                    ; $3F3E: $FF
    rst RST_38                                    ; $3F3F: $FF
    rst RST_38                                    ; $3F40: $FF
    rst RST_38                                    ; $3F41: $FF
    rst RST_38                                    ; $3F42: $FF
    rst RST_38                                    ; $3F43: $FF
    rst RST_38                                    ; $3F44: $FF
    rst RST_38                                    ; $3F45: $FF
    rst RST_38                                    ; $3F46: $FF
    rst RST_38                                    ; $3F47: $FF
    rst RST_38                                    ; $3F48: $FF
    rst RST_38                                    ; $3F49: $FF
    rst RST_38                                    ; $3F4A: $FF
    rst RST_38                                    ; $3F4B: $FF
    rst RST_38                                    ; $3F4C: $FF
    rst RST_38                                    ; $3F4D: $FF
    rst RST_38                                    ; $3F4E: $FF
    rst RST_38                                    ; $3F4F: $FF
    rst RST_38                                    ; $3F50: $FF
    rst RST_38                                    ; $3F51: $FF
    rst RST_38                                    ; $3F52: $FF
    rst RST_38                                    ; $3F53: $FF
    rst RST_38                                    ; $3F54: $FF
    rst RST_38                                    ; $3F55: $FF
    rst RST_38                                    ; $3F56: $FF
    rst RST_38                                    ; $3F57: $FF
    rst RST_38                                    ; $3F58: $FF
    rst RST_38                                    ; $3F59: $FF
    rst RST_38                                    ; $3F5A: $FF
    rst RST_38                                    ; $3F5B: $FF
    rst RST_38                                    ; $3F5C: $FF
    rst RST_38                                    ; $3F5D: $FF
    rst RST_38                                    ; $3F5E: $FF
    rst RST_38                                    ; $3F5F: $FF
    rst RST_38                                    ; $3F60: $FF

Jump_000_3F61:
    rst RST_38                                    ; $3F61: $FF
    rst RST_38                                    ; $3F62: $FF
    rst RST_38                                    ; $3F63: $FF
    rst RST_38                                    ; $3F64: $FF
    rst RST_38                                    ; $3F65: $FF
    rst RST_38                                    ; $3F66: $FF
    rst RST_38                                    ; $3F67: $FF

Call_000_3F68:
    rst RST_38                                    ; $3F68: $FF
    rst RST_38                                    ; $3F69: $FF
    rst RST_38                                    ; $3F6A: $FF
    rst RST_38                                    ; $3F6B: $FF
    rst RST_38                                    ; $3F6C: $FF
    rst RST_38                                    ; $3F6D: $FF
    rst RST_38                                    ; $3F6E: $FF
    rst RST_38                                    ; $3F6F: $FF
    rst RST_38                                    ; $3F70: $FF
    rst RST_38                                    ; $3F71: $FF
    rst RST_38                                    ; $3F72: $FF
    rst RST_38                                    ; $3F73: $FF
    rst RST_38                                    ; $3F74: $FF
    rst RST_38                                    ; $3F75: $FF
    rst RST_38                                    ; $3F76: $FF
    rst RST_38                                    ; $3F77: $FF
    rst RST_38                                    ; $3F78: $FF
    rst RST_38                                    ; $3F79: $FF
    rst RST_38                                    ; $3F7A: $FF
    rst RST_38                                    ; $3F7B: $FF
    rst RST_38                                    ; $3F7C: $FF
    rst RST_38                                    ; $3F7D: $FF
    rst RST_38                                    ; $3F7E: $FF

Call_000_3F7F:
    rst RST_38                                    ; $3F7F: $FF
    rst RST_38                                    ; $3F80: $FF
    rst RST_38                                    ; $3F81: $FF
    rst RST_38                                    ; $3F82: $FF
    rst RST_38                                    ; $3F83: $FF
    rst RST_38                                    ; $3F84: $FF
    rst RST_38                                    ; $3F85: $FF
    rst RST_38                                    ; $3F86: $FF
    rst RST_38                                    ; $3F87: $FF
    rst RST_38                                    ; $3F88: $FF
    rst RST_38                                    ; $3F89: $FF
    rst RST_38                                    ; $3F8A: $FF
    rst RST_38                                    ; $3F8B: $FF
    rst RST_38                                    ; $3F8C: $FF
    rst RST_38                                    ; $3F8D: $FF
    rst RST_38                                    ; $3F8E: $FF
    rst RST_38                                    ; $3F8F: $FF
    rst RST_38                                    ; $3F90: $FF
    rst RST_38                                    ; $3F91: $FF
    rst RST_38                                    ; $3F92: $FF
    rst RST_38                                    ; $3F93: $FF
    rst RST_38                                    ; $3F94: $FF
    rst RST_38                                    ; $3F95: $FF
    rst RST_38                                    ; $3F96: $FF
    rst RST_38                                    ; $3F97: $FF
    rst RST_38                                    ; $3F98: $FF
    rst RST_38                                    ; $3F99: $FF
    rst RST_38                                    ; $3F9A: $FF
    rst RST_38                                    ; $3F9B: $FF
    rst RST_38                                    ; $3F9C: $FF
    rst RST_38                                    ; $3F9D: $FF
    rst RST_38                                    ; $3F9E: $FF
    rst RST_38                                    ; $3F9F: $FF
    rst RST_38                                    ; $3FA0: $FF
    rst RST_38                                    ; $3FA1: $FF
    rst RST_38                                    ; $3FA2: $FF
    rst RST_38                                    ; $3FA3: $FF
    rst RST_38                                    ; $3FA4: $FF
    rst RST_38                                    ; $3FA5: $FF
    rst RST_38                                    ; $3FA6: $FF
    rst RST_38                                    ; $3FA7: $FF
    rst RST_38                                    ; $3FA8: $FF
    rst RST_38                                    ; $3FA9: $FF
    rst RST_38                                    ; $3FAA: $FF
    rst RST_38                                    ; $3FAB: $FF
    rst RST_38                                    ; $3FAC: $FF
    rst RST_38                                    ; $3FAD: $FF
    rst RST_38                                    ; $3FAE: $FF
    rst RST_38                                    ; $3FAF: $FF
    rst RST_38                                    ; $3FB0: $FF
    rst RST_38                                    ; $3FB1: $FF
    rst RST_38                                    ; $3FB2: $FF
    rst RST_38                                    ; $3FB3: $FF
    rst RST_38                                    ; $3FB4: $FF
    rst RST_38                                    ; $3FB5: $FF
    rst RST_38                                    ; $3FB6: $FF
    rst RST_38                                    ; $3FB7: $FF
    rst RST_38                                    ; $3FB8: $FF
    rst RST_38                                    ; $3FB9: $FF
    rst RST_38                                    ; $3FBA: $FF
    rst RST_38                                    ; $3FBB: $FF
    rst RST_38                                    ; $3FBC: $FF
    rst RST_38                                    ; $3FBD: $FF
    rst RST_38                                    ; $3FBE: $FF
    rst RST_38                                    ; $3FBF: $FF
    rst RST_38                                    ; $3FC0: $FF
    rst RST_38                                    ; $3FC1: $FF
    rst RST_38                                    ; $3FC2: $FF
    rst RST_38                                    ; $3FC3: $FF
    rst RST_38                                    ; $3FC4: $FF
    rst RST_38                                    ; $3FC5: $FF
    rst RST_38                                    ; $3FC6: $FF
    rst RST_38                                    ; $3FC7: $FF
    rst RST_38                                    ; $3FC8: $FF
    rst RST_38                                    ; $3FC9: $FF
    rst RST_38                                    ; $3FCA: $FF
    rst RST_38                                    ; $3FCB: $FF
    rst RST_38                                    ; $3FCC: $FF
    rst RST_38                                    ; $3FCD: $FF
    rst RST_38                                    ; $3FCE: $FF
    rst RST_38                                    ; $3FCF: $FF
    rst RST_38                                    ; $3FD0: $FF
    rst RST_38                                    ; $3FD1: $FF
    rst RST_38                                    ; $3FD2: $FF
    rst RST_38                                    ; $3FD3: $FF
    rst RST_38                                    ; $3FD4: $FF
    rst RST_38                                    ; $3FD5: $FF
    rst RST_38                                    ; $3FD6: $FF
    rst RST_38                                    ; $3FD7: $FF
    rst RST_38                                    ; $3FD8: $FF
    rst RST_38                                    ; $3FD9: $FF
    rst RST_38                                    ; $3FDA: $FF
    rst RST_38                                    ; $3FDB: $FF
    rst RST_38                                    ; $3FDC: $FF
    rst RST_38                                    ; $3FDD: $FF
    rst RST_38                                    ; $3FDE: $FF

Call_000_3FDF:
    rst RST_38                                    ; $3FDF: $FF
    rst RST_38                                    ; $3FE0: $FF

Jump_000_3FE1:
    rst RST_38                                    ; $3FE1: $FF
    rst RST_38                                    ; $3FE2: $FF
    rst RST_38                                    ; $3FE3: $FF
    rst RST_38                                    ; $3FE4: $FF
    rst RST_38                                    ; $3FE5: $FF
    rst RST_38                                    ; $3FE6: $FF

Jump_000_3FE7:
    rst RST_38                                    ; $3FE7: $FF
    rst RST_38                                    ; $3FE8: $FF
    rst RST_38                                    ; $3FE9: $FF
    rst RST_38                                    ; $3FEA: $FF
    rst RST_38                                    ; $3FEB: $FF
    rst RST_38                                    ; $3FEC: $FF
    rst RST_38                                    ; $3FED: $FF
    rst RST_38                                    ; $3FEE: $FF
    rst RST_38                                    ; $3FEF: $FF
    rst RST_38                                    ; $3FF0: $FF
    rst RST_38                                    ; $3FF1: $FF
    rst RST_38                                    ; $3FF2: $FF
    rst RST_38                                    ; $3FF3: $FF
    rst RST_38                                    ; $3FF4: $FF
    rst RST_38                                    ; $3FF5: $FF
    rst RST_38                                    ; $3FF6: $FF
    rst RST_38                                    ; $3FF7: $FF
    rst RST_38                                    ; $3FF8: $FF
    rst RST_38                                    ; $3FF9: $FF
    rst RST_38                                    ; $3FFA: $FF
    rst RST_38                                    ; $3FFB: $FF

Jump_000_3FFC:
    rst RST_38                                    ; $3FFC: $FF
    rst RST_38                                    ; $3FFD: $FF
    rst RST_38                                    ; $3FFE: $FF

Call_000_3FFF:
Jump_000_3FFF:
    rst RST_38                                    ; $3FFF: $FF
