; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02a", ROMX[$4000], BANK[$2a]

    ld sp, $DD00                                  ; $4000: $31 $00 $DD
    di                                            ; $4003: $F3
    rst RST_10                                    ; $4004: $D7
    ld a, $FF                                     ; $4005: $3E $FF
    ld hl, $C037                                  ; $4007: $21 $37 $C0
    bit 7, [hl]                                   ; $400A: $CB $7E
    jr z, jr_02A_4010                             ; $400C: $28 $02

    ld a, $00                                     ; $400E: $3E $00

jr_02A_4010:
    ldh [rBGP], a                                 ; $4010: $E0 $47
    ldh [rOBP0], a                                ; $4012: $E0 $48
    ldh [rOBP1], a                                ; $4014: $E0 $49
    ldh [$FFEA], a                                ; $4016: $E0 $EA
    ldh [$FFEB], a                                ; $4018: $E0 $EB
    ldh [$FFEC], a                                ; $401A: $E0 $EC
    call Call_000_13ED                            ; $401C: $CD $ED $13
    xor a                                         ; $401F: $AF
    ldh [rSTAT], a                                ; $4020: $E0 $41
    call Call_000_0FBD                            ; $4022: $CD $BD $0F
    call Call_000_0FC6                            ; $4025: $CD $C6 $0F
    ld a, $30                                     ; $4028: $3E $30
    ldh [$FFE4], a                                ; $402A: $E0 $E4
    ld [$C2AA], a                                 ; $402C: $EA $AA $C2
    ld a, $08                                     ; $402F: $3E $08
    ldh [$FFE2], a                                ; $4031: $E0 $E2
    ld a, $40                                     ; $4033: $3E $40
    ld [$C2AC], a                                 ; $4035: $EA $AC $C2
    xor a                                         ; $4038: $AF
    ld [$C2D2], a                                 ; $4039: $EA $D2 $C2
    ld [$C2BB], a                                 ; $403C: $EA $BB $C2
    ld a, $03                                     ; $403F: $3E $03
    ld [$C2C2], a                                 ; $4041: $EA $C2 $C2
    ld hl, $C039                                  ; $4044: $21 $39 $C0
    set 7, [hl]                                   ; $4047: $CB $FE
    set 6, [hl]                                   ; $4049: $CB $F6
    set 5, [hl]                                   ; $404B: $CB $EE
    inc hl                                        ; $404D: $23
    res 0, [hl]                                   ; $404E: $CB $86
    res 1, [hl]                                   ; $4050: $CB $8E
    res 2, [hl]                                   ; $4052: $CB $96
    ld a, $1F                                     ; $4054: $3E $1F
    ld [$C2B5], a                                 ; $4056: $EA $B5 $C2
    ld a, $7F                                     ; $4059: $3E $7F
    ld [$C2B6], a                                 ; $405B: $EA $B6 $C2
    ld a, $45                                     ; $405E: $3E $45
    ld [$C2B9], a                                 ; $4060: $EA $B9 $C2
    ld a, $47                                     ; $4063: $3E $47
    ld [$C2BA], a                                 ; $4065: $EA $BA $C2
    ld a, $FF                                     ; $4068: $3E $FF
    ld [$C01A], a                                 ; $406A: $EA $1A $C0
    xor a                                         ; $406D: $AF
    ldh [$FFE9], a                                ; $406E: $E0 $E9
    xor a                                         ; $4070: $AF
    ld [$D99C], a                                 ; $4071: $EA $9C $D9
    ld [$DA9C], a                                 ; $4074: $EA $9C $DA
    call Call_000_17E2                            ; $4077: $CD $E2 $17
    and $3F                                       ; $407A: $E6 $3F
    inc a                                         ; $407C: $3C
    ld [$D99D], a                                 ; $407D: $EA $9D $D9
    call Call_000_17E2                            ; $4080: $CD $E2 $17
    and $3F                                       ; $4083: $E6 $3F
    inc a                                         ; $4085: $3C
    ld [$DA9D], a                                 ; $4086: $EA $9D $DA
    ld hl, $43D9                                  ; $4089: $21 $D9 $43
    ld de, $C329                                  ; $408C: $11 $29 $C3
    call Call_000_124C                            ; $408F: $CD $4C $12
    ld hl, $C329                                  ; $4092: $21 $29 $C3
    ld de, $8800                                  ; $4095: $11 $00 $88
    ld b, $1F                                     ; $4098: $06 $1F
    call Call_000_1188                            ; $409A: $CD $88 $11
    ld a, [$D92E]                                 ; $409D: $FA $2E $D9
    sra a                                         ; $40A0: $CB $2F
    ld [$C288], a                                 ; $40A2: $EA $88 $C2
    ld de, $8A10                                  ; $40A5: $11 $10 $8A
    ld c, $30                                     ; $40A8: $0E $30
    ld b, $2D                                     ; $40AA: $06 $2D
    ld hl, $42F6                                  ; $40AC: $21 $F6 $42
    rst RST_08                                    ; $40AF: $CF
    ld a, [$DA2E]                                 ; $40B0: $FA $2E $DA
    sra a                                         ; $40B3: $CB $2F
    ld [$C288], a                                 ; $40B5: $EA $88 $C2
    ld de, $8AF0                                  ; $40B8: $11 $F0 $8A
    ld c, $30                                     ; $40BB: $0E $30
    ld b, $2D                                     ; $40BD: $06 $2D
    ld hl, $42F6                                  ; $40BF: $21 $F6 $42
    rst RST_08                                    ; $40C2: $CF
    ld a, [$C2C6]                                 ; $40C3: $FA $C6 $C2
    ld b, a                                       ; $40C6: $47
    and $F0                                       ; $40C7: $E6 $F0
    cp $10                                        ; $40C9: $FE $10
    jr z, jr_02A_40E4                             ; $40CB: $28 $17

    ld a, b                                       ; $40CD: $78
    and $0F                                       ; $40CE: $E6 $0F
    jr nz, jr_02A_40E4                            ; $40D0: $20 $12

    ld hl, $C2C7                                  ; $40D2: $21 $C7 $C2
    ld a, [$C2F3]                                 ; $40D5: $FA $F3 $C2
    add $01                                       ; $40D8: $C6 $01
    daa                                           ; $40DA: $27
    ld [hl], $00                                  ; $40DB: $36 $00
    inc hl                                        ; $40DD: $23
    ld [hl], $00                                  ; $40DE: $36 $00
    inc hl                                        ; $40E0: $23
    ld [hl], a                                    ; $40E1: $77
    jr jr_02A_40F4                                ; $40E2: $18 $10

jr_02A_40E4:
    ld b, $03                                     ; $40E4: $06 $03
    ld hl, $C2C9                                  ; $40E6: $21 $C9 $C2

jr_02A_40E9:
    ld a, [hl]                                    ; $40E9: $7E
    add $01                                       ; $40EA: $C6 $01
    daa                                           ; $40EC: $27
    ld [hl], a                                    ; $40ED: $77
    jr nc, jr_02A_40F4                            ; $40EE: $30 $04

    dec hl                                        ; $40F0: $2B
    dec b                                         ; $40F1: $05
    jr nz, jr_02A_40E9                            ; $40F2: $20 $F5

jr_02A_40F4:
    ld b, $06                                     ; $40F4: $06 $06
    ld hl, $C2C7                                  ; $40F6: $21 $C7 $C2
    ld de, $C329                                  ; $40F9: $11 $29 $C3

jr_02A_40FC:
    ld a, $00                                     ; $40FC: $3E $00
    ld [de], a                                    ; $40FE: $12
    inc de                                        ; $40FF: $13
    ld a, [hl+]                                   ; $4100: $2A
    push af                                       ; $4101: $F5
    swap a                                        ; $4102: $CB $37
    and $0F                                       ; $4104: $E6 $0F
    ld [de], a                                    ; $4106: $12
    inc de                                        ; $4107: $13
    ld a, $00                                     ; $4108: $3E $00
    ld [de], a                                    ; $410A: $12
    inc de                                        ; $410B: $13
    pop af                                        ; $410C: $F1
    and $0F                                       ; $410D: $E6 $0F
    ld [de], a                                    ; $410F: $12
    inc de                                        ; $4110: $13
    dec b                                         ; $4111: $05
    jr nz, jr_02A_40FC                            ; $4112: $20 $E8

    ld a, $06                                     ; $4114: $3E $06
    ld hl, $C329                                  ; $4116: $21 $29 $C3
    ld de, $C333                                  ; $4119: $11 $33 $C3
    ld b, $00                                     ; $411C: $06 $00
    ld c, $00                                     ; $411E: $0E $00

jr_02A_4120:
    push af                                       ; $4120: $F5
    inc hl                                        ; $4121: $23
    ld a, [hl+]                                   ; $4122: $2A
    or a                                          ; $4123: $B7
    jr nz, jr_02A_412A                            ; $4124: $20 $04

    bit 0, c                                      ; $4126: $CB $41
    jr z, jr_02A_4135                             ; $4128: $28 $0B

jr_02A_412A:
    bit 0, c                                      ; $412A: $CB $41
    jr nz, jr_02A_4134                            ; $412C: $20 $06

    set 0, c                                      ; $412E: $CB $C1
    push hl                                       ; $4130: $E5
    pop de                                        ; $4131: $D1
    dec de                                        ; $4132: $1B
    dec de                                        ; $4133: $1B

jr_02A_4134:
    inc b                                         ; $4134: $04

jr_02A_4135:
    pop af                                        ; $4135: $F1
    dec a                                         ; $4136: $3D
    jr nz, jr_02A_4120                            ; $4137: $20 $E7

    ld a, b                                       ; $4139: $78
    or a                                          ; $413A: $B7
    jr nz, jr_02A_413E                            ; $413B: $20 $01

    inc b                                         ; $413D: $04

jr_02A_413E:
    ld a, b                                       ; $413E: $78
    dec a                                         ; $413F: $3D
    srl a                                         ; $4140: $CB $3F
    cpl                                           ; $4142: $2F
    inc a                                         ; $4143: $3C
    add $4D                                       ; $4144: $C6 $4D
    ld hl, $9C00                                  ; $4146: $21 $00 $9C
    add l                                         ; $4149: $85
    ld l, a                                       ; $414A: $6F
    push hl                                       ; $414B: $E5
    ld c, $01                                     ; $414C: $0E $01
    ld a, $EE                                     ; $414E: $3E $EE
    call Call_000_0FF7                            ; $4150: $CD $F7 $0F
    pop hl                                        ; $4153: $E1
    dec hl                                        ; $4154: $2B
    dec hl                                        ; $4155: $2B
    dec hl                                        ; $4156: $2B
    dec hl                                        ; $4157: $2B
    dec hl                                        ; $4158: $2B
    dec hl                                        ; $4159: $2B
    dec hl                                        ; $415A: $2B
    ld de, $44C7                                  ; $415B: $11 $C7 $44
    ld bc, $0601                                  ; $415E: $01 $01 $06
    ld a, $80                                     ; $4161: $3E $80
    call Call_000_0FF7                            ; $4163: $CD $F7 $0F
    ld de, $44DB                                  ; $4166: $11 $DB $44
    ld hl, $9D45                                  ; $4169: $21 $45 $9D
    ld bc, $0A05                                  ; $416C: $01 $05 $0A
    ld a, $80                                     ; $416F: $3E $80
    call Call_000_0FF7                            ; $4171: $CD $F7 $0F
    call Call_000_0F9E                            ; $4174: $CD $9E $0F
    call Call_000_1E5B                            ; $4177: $CD $5B $1E
    ld b, $05                                     ; $417A: $06 $05
    ld hl, $4000                                  ; $417C: $21 $00 $40
    rst RST_08                                    ; $417F: $CF
    call Call_000_2050                            ; $4180: $CD $50 $20
    ld b, $2C                                     ; $4183: $06 $2C
    ld hl, $4000                                  ; $4185: $21 $00 $40
    rst RST_08                                    ; $4188: $CF
    call Call_000_23E9                            ; $4189: $CD $E9 $23
    ld hl, $D680                                  ; $418C: $21 $80 $D6
    ld de, $24CF                                  ; $418F: $11 $CF $24
    call Call_000_0F8E                            ; $4192: $CD $8E $0F
    ld hl, $D6C0                                  ; $4195: $21 $C0 $D6
    ld de, $24EF                                  ; $4198: $11 $EF $24
    call Call_000_0F8E                            ; $419B: $CD $8E $0F
    ld hl, $D684                                  ; $419E: $21 $84 $D6
    ld [hl], $06                                  ; $41A1: $36 $06
    ld hl, $D6C4                                  ; $41A3: $21 $C4 $D6
    ld [hl], $FA                                  ; $41A6: $36 $FA
    ld a, $00                                     ; $41A8: $3E $00
    ldh [rWY], a                                  ; $41AA: $E0 $4A
    ld a, $07                                     ; $41AC: $3E $07
    ldh [rWX], a                                  ; $41AE: $E0 $4B
    call Call_000_1A39                            ; $41B0: $CD $39 $1A
    ld a, $E7                                     ; $41B3: $3E $E7
    rst RST_18                                    ; $41B5: $DF
    ldh a, [rSTAT]                                ; $41B6: $F0 $41
    or $40                                        ; $41B8: $F6 $40
    ldh [rSTAT], a                                ; $41BA: $E0 $41
    xor a                                         ; $41BC: $AF
    ldh [rIF], a                                  ; $41BD: $E0 $0F
    ld a, $17                                     ; $41BF: $3E $17
    ld a, $8F                                     ; $41C1: $3E $8F
    ldh [rLYC], a                                 ; $41C3: $E0 $45
    ldh a, [rIE]                                  ; $41C5: $F0 $FF
    or $03                                        ; $41C7: $F6 $03
    ldh [rIE], a                                  ; $41C9: $E0 $FF
    ld a, $02                                     ; $41CB: $3E $02
    ld bc, $250F                                  ; $41CD: $01 $0F $25
    call Call_000_03D4                            ; $41D0: $CD $D4 $03
    ld a, $03                                     ; $41D3: $3E $03
    ld bc, $251B                                  ; $41D5: $01 $1B $25
    call Call_000_03D4                            ; $41D8: $CD $D4 $03
    ei                                            ; $41DB: $FB
    ld b, $01                                     ; $41DC: $06 $01

jr_02A_41DE:
    call Call_000_0417                            ; $41DE: $CD $17 $04
    dec b                                         ; $41E1: $05
    jr nz, jr_02A_41DE                            ; $41E2: $20 $FA

    ld hl, $C037                                  ; $41E4: $21 $37 $C0
    bit 7, [hl]                                   ; $41E7: $CB $7E
    jr z, jr_02A_420E                             ; $41E9: $28 $23

    ld a, $FF                                     ; $41EB: $3E $FF
    ld [$C2EE], a                                 ; $41ED: $EA $EE $C2
    ld a, $00                                     ; $41F0: $3E $00
    ld [$C2ED], a                                 ; $41F2: $EA $ED $C2
    ld a, $D8                                     ; $41F5: $3E $D8
    ld [$C2EC], a                                 ; $41F7: $EA $EC $C2
    ld a, $B0                                     ; $41FA: $3E $B0
    ldh [rOBP0], a                                ; $41FC: $E0 $48
    ld a, $70                                     ; $41FE: $3E $70
    ldh [rOBP1], a                                ; $4200: $E0 $49
    ld a, $D8                                     ; $4202: $3E $D8
    ldh [rBGP], a                                 ; $4204: $E0 $47
    ldh [$FFEA], a                                ; $4206: $E0 $EA

Jump_02A_4208:
    ldh [$FFEB], a                                ; $4208: $E0 $EB
    ldh [$FFEC], a                                ; $420A: $E0 $EC
    jr jr_02A_422F                                ; $420C: $18 $21

jr_02A_420E:
    ld a, $00                                     ; $420E: $3E $00
    ld [$C2EE], a                                 ; $4210: $EA $EE $C2

Jump_02A_4213:
    ld a, $FF                                     ; $4213: $3E $FF
    ld [$C2ED], a                                 ; $4215: $EA $ED $C2
    ld a, $1B                                     ; $4218: $3E $1B
    ld [$C2EC], a                                 ; $421A: $EA $EC $C2
    ld a, $8C                                     ; $421D: $3E $8C
    ldh [rOBP0], a                                ; $421F: $E0 $48
    ld a, $4C                                     ; $4221: $3E $4C
    ldh [rOBP1], a                                ; $4223: $E0 $49
    ld a, $1B                                     ; $4225: $3E $1B
    ldh [rBGP], a                                 ; $4227: $E0 $47
    ldh [$FFEA], a                                ; $4229: $E0 $EA
    ldh [$FFEB], a                                ; $422B: $E0 $EB
    ldh [$FFEC], a                                ; $422D: $E0 $EC

jr_02A_422F:
    call Call_000_147A                            ; $422F: $CD $7A $14

jr_02A_4232:
    ld bc, $D900                                  ; $4232: $01 $00 $D9
    call Call_02A_4250                            ; $4235: $CD $50 $42
    ld bc, $DA00                                  ; $4238: $01 $00 $DA
    call Call_02A_4250                            ; $423B: $CD $50 $42
    ld a, [$D99C]                                 ; $423E: $FA $9C $D9
    ld hl, $DA9C                                  ; $4241: $21 $9C $DA
    cp [hl]                                       ; $4244: $BE
    jr nz, jr_02A_424B                            ; $4245: $20 $04

    cp $08                                        ; $4247: $FE $08
    jr z, jr_02A_4265                             ; $4249: $28 $1A

jr_02A_424B:
    call Call_000_0417                            ; $424B: $CD $17 $04
    jr jr_02A_4232                                ; $424E: $18 $E2

Call_02A_4250:
    ld hl, $009C                                  ; $4250: $21 $9C $00
    add hl, bc                                    ; $4253: $09
    ld a, [hl]                                    ; $4254: $7E
    ld hl, $427D                                  ; $4255: $21 $7D $42
    rst RST_28                                    ; $4258: $EF
    ret                                           ; $4259: $C9


    xor a                                         ; $425A: $AF
    ret                                           ; $425B: $C9


Jump_02A_425C:
    ld hl, $009C                                  ; $425C: $21 $9C $00
    add hl, bc                                    ; $425F: $09
    ld a, [hl]                                    ; $4260: $7E
    add $02                                       ; $4261: $C6 $02
    ld [hl], a                                    ; $4263: $77
    ret                                           ; $4264: $C9


jr_02A_4265:
    ld a, [$C2D3]                                 ; $4265: $FA $D3 $C2
    call Call_000_135D                            ; $4268: $CD $5D $13
    xor a                                         ; $426B: $AF
    ld [$D99C], a                                 ; $426C: $EA $9C $D9
    ld [$DA9C], a                                 ; $426F: $EA $9C $DA
    call Call_000_0417                            ; $4272: $CD $17 $04
    ld a, $01                                     ; $4275: $3E $01
    ld [$C2BB], a                                 ; $4277: $EA $BB $C2
    jp Jump_000_1DB5                              ; $427A: $C3 $B5 $1D


    add a                                         ; $427D: $87
    ld b, d                                       ; $427E: $42
    adc $42                                       ; $427F: $CE $42
    dec d                                         ; $4281: $15
    ld b, e                                       ; $4282: $43
    ld d, [hl]                                    ; $4283: $56
    ld b, e                                       ; $4284: $43
    rst RST_00                                    ; $4285: $C7
    ld b, d                                       ; $4286: $42
    call Call_02A_43C7                            ; $4287: $CD $C7 $43
    jp c, Jump_02A_4295                           ; $428A: $DA $95 $42

    ld hl, $009D                                  ; $428D: $21 $9D $00
    add hl, bc                                    ; $4290: $09
    dec [hl]                                      ; $4291: $35
    jr z, jr_02A_4295                             ; $4292: $28 $01

    ret                                           ; $4294: $C9


Jump_02A_4295:
jr_02A_4295:
    ld hl, $002D                                  ; $4295: $21 $2D $00
    add hl, bc                                    ; $4298: $09
    ld a, [hl]                                    ; $4299: $7E
    or a                                          ; $429A: $B7
    jr nz, jr_02A_42AF                            ; $429B: $20 $12

    push bc                                       ; $429D: $C5
    ld de, $45CF                                  ; $429E: $11 $CF $45
    ld hl, $9E02                                  ; $42A1: $21 $02 $9E
    ld bc, $0601                                  ; $42A4: $01 $01 $06
    ld a, $6F                                     ; $42A7: $3E $6F
    call Call_000_0FF7                            ; $42A9: $CD $F7 $0F
    pop bc                                        ; $42AC: $C1
    jr jr_02A_42BF                                ; $42AD: $18 $10

jr_02A_42AF:
    push bc                                       ; $42AF: $C5
    ld de, $45CF                                  ; $42B0: $11 $CF $45
    ld hl, $9E0C                                  ; $42B3: $21 $0C $9E
    ld bc, $0601                                  ; $42B6: $01 $01 $06
    ld a, $75                                     ; $42B9: $3E $75
    call Call_000_0FF7                            ; $42BB: $CD $F7 $0F
    pop bc                                        ; $42BE: $C1

jr_02A_42BF:
    ld a, $0C                                     ; $42BF: $3E $0C
    call Call_02A_42C8                            ; $42C1: $CD $C8 $42
    jp Jump_02A_425C                              ; $42C4: $C3 $5C $42


    ret                                           ; $42C7: $C9


Call_02A_42C8:
    ld hl, $003F                                  ; $42C8: $21 $3F $00
    add hl, bc                                    ; $42CB: $09
    ld [hl], a                                    ; $42CC: $77
    ret                                           ; $42CD: $C9


    ld hl, $003C                                  ; $42CE: $21 $3C $00
    add hl, bc                                    ; $42D1: $09
    ld a, [hl]                                    ; $42D2: $7E
    cp $02                                        ; $42D3: $FE $02
    jr z, jr_02A_42D8                             ; $42D5: $28 $01

    ret                                           ; $42D7: $C9


jr_02A_42D8:
    ld a, $1A                                     ; $42D8: $3E $1A
    call Call_02A_42C8                            ; $42DA: $CD $C8 $42
    ld hl, $002D                                  ; $42DD: $21 $2D $00
    add hl, bc                                    ; $42E0: $09
    ld a, [hl]                                    ; $42E1: $7E
    or a                                          ; $42E2: $B7
    jr nz, jr_02A_42FD                            ; $42E3: $20 $18

    push bc                                       ; $42E5: $C5
    ld de, $453F                                  ; $42E6: $11 $3F $45
    ld hl, $9CA0                                  ; $42E9: $21 $A0 $9C
    ld bc, $0904                                  ; $42EC: $01 $04 $09
    ld a, $80                                     ; $42EF: $3E $80
    call Call_000_0FF7                            ; $42F1: $CD $F7 $0F
    pop bc                                        ; $42F4: $C1
    ld a, $78                                     ; $42F5: $3E $78
    ld [$C312], a                                 ; $42F7: $EA $12 $C3
    jp Jump_02A_425C                              ; $42FA: $C3 $5C $42


jr_02A_42FD:
    push bc                                       ; $42FD: $C5
    ld de, $4587                                  ; $42FE: $11 $87 $45
    ld hl, $9CAB                                  ; $4301: $21 $AB $9C
    ld bc, $0904                                  ; $4304: $01 $04 $09
    ld a, $80                                     ; $4307: $3E $80
    call Call_000_0FF7                            ; $4309: $CD $F7 $0F
    pop bc                                        ; $430C: $C1
    ld hl, $DA9C                                  ; $430D: $21 $9C $DA
    ld [hl], $06                                  ; $4310: $36 $06
    jp Jump_02A_425C                              ; $4312: $C3 $5C $42


    ld a, [$DA9C]                                 ; $4315: $FA $9C $DA
    cp $08                                        ; $4318: $FE $08
    ret nz                                        ; $431A: $C0

    call Call_02A_43C7                            ; $431B: $CD $C7 $43
    jr c, jr_02A_432B                             ; $431E: $38 $0B

    ld hl, $C312                                  ; $4320: $21 $12 $C3
    dec [hl]                                      ; $4323: $35
    jr z, jr_02A_4327                             ; $4324: $28 $01

    ret                                           ; $4326: $C9


jr_02A_4327:
    ld a, $01                                     ; $4327: $3E $01
    jr jr_02A_432D                                ; $4329: $18 $02

jr_02A_432B:
    ld a, $03                                     ; $432B: $3E $03

jr_02A_432D:
    ld [$C312], a                                 ; $432D: $EA $12 $C3
    ld hl, $C03A                                  ; $4330: $21 $3A $C0
    set 2, [hl]                                   ; $4333: $CB $D6
    push bc                                       ; $4335: $C5
    ld a, $1F                                     ; $4336: $3E $1F
    call Call_000_1360                            ; $4338: $CD $60 $13
    call Call_000_0417                            ; $433B: $CD $17 $04
    pop bc                                        ; $433E: $C1
    ld a, $1E                                     ; $433F: $3E $1E

jr_02A_4341:
    push af                                       ; $4341: $F5
    call Call_000_0417                            ; $4342: $CD $17 $04
    pop af                                        ; $4345: $F1
    dec a                                         ; $4346: $3D
    jr nz, jr_02A_4341                            ; $4347: $20 $F8

    push bc                                       ; $4349: $C5
    ld a, $20                                     ; $434A: $3E $20
    call Call_000_1360                            ; $434C: $CD $60 $13
    call Call_000_0417                            ; $434F: $CD $17 $04
    pop bc                                        ; $4352: $C1
    jp Jump_02A_425C                              ; $4353: $C3 $5C $42


    ld a, [$C312]                                 ; $4356: $FA $12 $C3
    ld e, a                                       ; $4359: $5F
    ld a, [$C2B9]                                 ; $435A: $FA $B9 $C2
    cp $06                                        ; $435D: $FE $06
    jr c, jr_02A_4367                             ; $435F: $38 $06

    sub e                                         ; $4361: $93
    ld [$C2B9], a                                 ; $4362: $EA $B9 $C2
    jr jr_02A_436C                                ; $4365: $18 $05

jr_02A_4367:
    ld a, $05                                     ; $4367: $3E $05
    ld [$C2B9], a                                 ; $4369: $EA $B9 $C2

jr_02A_436C:
    ld a, [$C2BA]                                 ; $436C: $FA $BA $C2
    cp $8F                                        ; $436F: $FE $8F
    jr nc, jr_02A_4378                            ; $4371: $30 $05

    add e                                         ; $4373: $83
    ld [$C2BA], a                                 ; $4374: $EA $BA $C2
    ret                                           ; $4377: $C9


jr_02A_4378:
    jp Jump_02A_425C                              ; $4378: $C3 $5C $42


    ld hl, $C2B9                                  ; $437B: $21 $B9 $C2
    ld a, [hl]                                    ; $437E: $7E
    cp $01                                        ; $437F: $FE $01
    jr z, jr_02A_439F                             ; $4381: $28 $1C

    ldh a, [$FF99]                                ; $4383: $F0 $99
    bit 4, a                                      ; $4385: $CB $67
    jr nz, jr_02A_4399                            ; $4387: $20 $10

    bit 5, a                                      ; $4389: $CB $6F
    jr nz, jr_02A_439C                            ; $438B: $20 $0F

    ldh a, [$FF98]                                ; $438D: $F0 $98
    bit 2, a                                      ; $438F: $CB $57
    jr nz, jr_02A_4399                            ; $4391: $20 $06

    bit 3, a                                      ; $4393: $CB $5F
    jr nz, jr_02A_439C                            ; $4395: $20 $05

    jr jr_02A_439F                                ; $4397: $18 $06

jr_02A_4399:
    dec [hl]                                      ; $4399: $35
    jr jr_02A_439F                                ; $439A: $18 $03

jr_02A_439C:
    inc [hl]                                      ; $439C: $34
    jr jr_02A_439F                                ; $439D: $18 $00

jr_02A_439F:
    ld hl, $C2BA                                  ; $439F: $21 $BA $C2
    ld a, [hl]                                    ; $43A2: $7E
    cp $8F                                        ; $43A3: $FE $8F
    jr z, jr_02A_43C4                             ; $43A5: $28 $1D

    ldh a, [$FFAB]                                ; $43A7: $F0 $AB
    bit 4, a                                      ; $43A9: $CB $67
    jr nz, jr_02A_43C0                            ; $43AB: $20 $13

    bit 5, a                                      ; $43AD: $CB $6F
    jr nz, jr_02A_43BD                            ; $43AF: $20 $0C

    ldh a, [$FF98]                                ; $43B1: $F0 $98
    bit 2, a                                      ; $43B3: $CB $57
    jr nz, jr_02A_43C0                            ; $43B5: $20 $09

    bit 3, a                                      ; $43B7: $CB $5F
    jr nz, jr_02A_43BD                            ; $43B9: $20 $02

    jr jr_02A_43C3                                ; $43BB: $18 $06

jr_02A_43BD:
    dec [hl]                                      ; $43BD: $35
    jr jr_02A_43C3                                ; $43BE: $18 $03

jr_02A_43C0:
    inc [hl]                                      ; $43C0: $34
    jr jr_02A_43C3                                ; $43C1: $18 $00

jr_02A_43C3:
    ret                                           ; $43C3: $C9


jr_02A_43C4:
    jp Jump_02A_425C                              ; $43C4: $C3 $5C $42


Call_02A_43C7:
    ldh a, [$FF99]                                ; $43C7: $F0 $99
    bit 7, a                                      ; $43C9: $CB $7F
    jp nz, Jump_02A_43D7                          ; $43CB: $C2 $D7 $43

    ldh a, [$FFAC]                                ; $43CE: $F0 $AC
    bit 7, a                                      ; $43D0: $CB $7F
    jp nz, Jump_02A_43D7                          ; $43D2: $C2 $D7 $43

    xor a                                         ; $43D5: $AF
    ret                                           ; $43D6: $C9


Jump_02A_43D7:
    scf                                           ; $43D7: $37
    ret                                           ; $43D8: $C9


    ld a, [de]                                    ; $43D9: $1A
    nop                                           ; $43DA: $00
    ld d, [hl]                                    ; $43DB: $56
    nop                                           ; $43DC: $00
    ld c, $0F                                     ; $43DD: $0E $0F

jr_02A_43DF:
    ld e, $F0                                     ; $43DF: $1E $F0
    ld e, $01                                     ; $43E1: $1E $01
    ld bc, $10AA                                  ; $43E3: $01 $AA $10
    inc bc                                        ; $43E6: $03
    db $10                                        ; $43E7: $10
    rlca                                          ; $43E8: $07
    db $10                                        ; $43E9: $10
    rrca                                          ; $43EA: $0F
    ld d, $FF                                     ; $43EB: $16 $FF
    push de                                       ; $43ED: $D5
    ld e, $0A                                     ; $43EE: $1E $0A
    ld bc, $0310                                  ; $43F0: $01 $10 $03
    jr nz, jr_02A_43FC                            ; $43F3: $20 $07

    ld a, [$FF6A]                                 ; $43F5: $FA $6A $FF
    inc bc                                        ; $43F8: $03
    ld a, [$1080]                                 ; $43F9: $FA $80 $10

jr_02A_43FC:
    ret nz                                        ; $43FC: $C0

    jr nz, jr_02A_43DF                            ; $43FD: $20 $E0

    inc h                                         ; $43FF: $24
    inc bc                                        ; $4400: $03
    rlca                                          ; $4401: $07
    dec e                                         ; $4402: $1D
    ret nz                                        ; $4403: $C0

    ldh [rNR33], a                                ; $4404: $E0 $1D
    rrca                                          ; $4406: $0F
    nop                                           ; $4407: $00
    xor e                                         ; $4408: $AB
    dec d                                         ; $4409: $15
    rlca                                          ; $440A: $07
    db $10                                        ; $440B: $10
    inc bc                                        ; $440C: $03
    db $10                                        ; $440D: $10
    ld bc, $0310                                  ; $440E: $01 $10 $03
    ld d, l                                       ; $4411: $55
    add b                                         ; $4412: $80
    db $10                                        ; $4413: $10
    ret nz                                        ; $4414: $C0

    db $10                                        ; $4415: $10
    ldh [rNR10], a                                ; $4416: $E0 $10
    ldh a, [rNR21]                                ; $4418: $F0 $16
    ld d, l                                       ; $441A: $55
    rrca                                          ; $441B: $0F
    jr @+$09                                      ; $441C: $18 $07

    db $10                                        ; $441E: $10
    inc bc                                        ; $441F: $03
    db $10                                        ; $4420: $10
    ld bc, $5510                                  ; $4421: $01 $10 $55
    ldh a, [rNR10]                                ; $4424: $F0 $10
    ld hl, sp+$10                                 ; $4426: $F8 $10
    db $FC                                        ; $4428: $FC
    db $10                                        ; $4429: $10
    cp $10                                        ; $442A: $FE $10
    ld l, d                                       ; $442C: $6A
    rst RST_38                                    ; $442D: $FF
    ld d, $09                                     ; $442E: $16 $09
    add c                                         ; $4430: $81
    db $10                                        ; $4431: $10
    jp Jump_000_0FF2                              ; $4432: $C3 $F2 $0F


    xor e                                         ; $4435: $AB
    db $10                                        ; $4436: $10
    rra                                           ; $4437: $1F
    db $10                                        ; $4438: $10
    ccf                                           ; $4439: $3F
    db $10                                        ; $443A: $10
    ld a, a                                       ; $443B: $7F
    sub d                                         ; $443C: $92
    dec d                                         ; $443D: $15
    ld d, l                                       ; $443E: $55
    ldh a, [rNR23]                                ; $443F: $F0 $18
    ldh [rNR10], a                                ; $4441: $E0 $10
    ret nz                                        ; $4443: $C0

    db $10                                        ; $4444: $10
    add b                                         ; $4445: $80
    db $10                                        ; $4446: $10
    ld l, $01                                     ; $4447: $2E $01
    rlca                                          ; $4449: $07
    jr nz, @+$05                                  ; $444A: $20 $03

    ld b, c                                       ; $444C: $41
    db $10                                        ; $444D: $10
    ld [$E8FF], sp                                ; $444E: $08 $FF $E8
    ld [bc], a                                    ; $4451: $02
    ld b, c                                       ; $4452: $41
    db $FD                                        ; $4453: $FD
    inc a                                         ; $4454: $3C
    db $10                                        ; $4455: $10
    inc e                                         ; $4456: $1C
    ld a, $0C                                     ; $4457: $3E $0C
    inc d                                         ; $4459: $14
    ld e, $04                                     ; $445A: $1E $04
    ld c, $C0                                     ; $445C: $0E $C0
    ld b, $F1                                     ; $445E: $06 $F1
    add b                                         ; $4460: $80
    ldh [$FFBA], a                                ; $4461: $E0 $BA
    jr nz, @-$3E                                  ; $4463: $20 $C0

    ld b, c                                       ; $4465: $41
    ld [hl], c                                    ; $4466: $71
    rlca                                          ; $4467: $07
    rst RST_38                                    ; $4468: $FF
    ld [bc], a                                    ; $4469: $02
    inc a                                         ; $446A: $3C
    add c                                         ; $446B: $81
    db $10                                        ; $446C: $10
    jr c, jr_02A_44EB                             ; $446D: $38 $7C

    jr nc, jr_02A_44E9                            ; $446F: $30 $78

    jr nz, @+$72                                  ; $4471: $20 $70

    ret nz                                        ; $4473: $C0

    ld l, d                                       ; $4474: $6A
    ld h, b                                       ; $4475: $60
    ldh a, [c]                                    ; $4476: $F2
    db $10                                        ; $4477: $10
    ld a, a                                       ; $4478: $7F
    db $10                                        ; $4479: $10
    ccf                                           ; $447A: $3F
    db $10                                        ; $447B: $10
    rra                                           ; $447C: $1F
    xor d                                         ; $447D: $AA
    db $10                                        ; $447E: $10
    rrca                                          ; $447F: $0F
    db $10                                        ; $4480: $10
    rlca                                          ; $4481: $07
    db $10                                        ; $4482: $10
    inc bc                                        ; $4483: $03
    db $10                                        ; $4484: $10
    ld bc, $F2AA                                  ; $4485: $01 $AA $F2
    cp $10                                        ; $4488: $FE $10
    db $FC                                        ; $448A: $FC
    db $10                                        ; $448B: $10
    ld hl, sp+$10                                 ; $448C: $F8 $10
    ldh a, [$FFAB]                                ; $448E: $F0 $AB
    db $10                                        ; $4490: $10
    ldh [rNR10], a                                ; $4491: $E0 $10
    ret nz                                        ; $4493: $C0

    db $10                                        ; $4494: $10
    add b                                         ; $4495: $80
    ld [hl], d                                    ; $4496: $72
    dec d                                         ; $4497: $15
    ret nz                                        ; $4498: $C0

    push de                                       ; $4499: $D5
    inc bc                                        ; $449A: $03
    inc a                                         ; $449B: $3C
    jr c, jr_02A_4504                             ; $449C: $38 $66

    ld b, h                                       ; $449E: $44
    ld a, h                                       ; $449F: $7C
    ld a, b                                       ; $44A0: $78
    di                                            ; $44A1: $F3
    ld sp, $9111                                  ; $44A2: $31 $11 $91
    rst RST_30                                    ; $44A5: $F7
    ld a, [hl]                                    ; $44A6: $7E
    ld a, h                                       ; $44A7: $7C
    di                                            ; $44A8: $F3
    ld de, $F3CC                                  ; $44A9: $11 $CC $F3
    or c                                          ; $44AC: $B1
    jr jr_02A_44BF                                ; $44AD: $18 $10

    rla                                           ; $44AF: $17
    di                                            ; $44B0: $F3
    ld h, b                                       ; $44B1: $60
    ld b, b                                       ; $44B2: $40
    sbc h                                         ; $44B3: $9C
    rla                                           ; $44B4: $17
    ld a, $3C                                     ; $44B5: $3E $3C
    di                                            ; $44B7: $F3
    ld d, c                                       ; $44B8: $51
    sub c                                         ; $44B9: $91
    ld a, h                                       ; $44BA: $7C
    ld a, b                                       ; $44BB: $78
    call nz, Call_000_20FD                        ; $44BC: $C4 $FD $20

jr_02A_44BF:
    jr c, jr_02A_44C7                             ; $44BF: $38 $06

    inc b                                         ; $44C1: $04
    ld de, $787C                                  ; $44C2: $11 $7C $78
    add b                                         ; $44C5: $80
    pop de                                        ; $44C6: $D1

jr_02A_44C7:
    nop                                           ; $44C7: $00
    add hl, de                                    ; $44C8: $19
    nop                                           ; $44C9: $00
    ld a, [de]                                    ; $44CA: $1A
    nop                                           ; $44CB: $00
    dec de                                        ; $44CC: $1B
    nop                                           ; $44CD: $00
    dec de                                        ; $44CE: $1B
    nop                                           ; $44CF: $00
    inc e                                         ; $44D0: $1C
    nop                                           ; $44D1: $00
    dec e                                         ; $44D2: $1D
    nop                                           ; $44D3: $00
    inc e                                         ; $44D4: $1C
    nop                                           ; $44D5: $00
    ld a, [de]                                    ; $44D6: $1A
    nop                                           ; $44D7: $00
    ld e, $00                                     ; $44D8: $1E $00
    dec de                                        ; $44DA: $1B
    nop                                           ; $44DB: $00
    ld bc, $0200                                  ; $44DC: $01 $00 $02
    nop                                           ; $44DF: $00
    nop                                           ; $44E0: $00
    nop                                           ; $44E1: $00
    ld bc, $0200                                  ; $44E2: $01 $00 $02
    nop                                           ; $44E5: $00
    inc bc                                        ; $44E6: $03
    nop                                           ; $44E7: $00
    inc b                                         ; $44E8: $04

jr_02A_44E9:
    nop                                           ; $44E9: $00
    inc b                                         ; $44EA: $04

jr_02A_44EB:
    nop                                           ; $44EB: $00
    inc b                                         ; $44EC: $04
    nop                                           ; $44ED: $00
    ld [bc], a                                    ; $44EE: $02
    nop                                           ; $44EF: $00
    ld bc, $0200                                  ; $44F0: $01 $00 $02
    nop                                           ; $44F3: $00
    nop                                           ; $44F4: $00
    nop                                           ; $44F5: $00
    ld bc, $0200                                  ; $44F6: $01 $00 $02
    nop                                           ; $44F9: $00
    ld bc, $0200                                  ; $44FA: $01 $00 $02
    nop                                           ; $44FD: $00
    nop                                           ; $44FE: $00
    nop                                           ; $44FF: $00
    nop                                           ; $4500: $00
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    nop                                           ; $4503: $00

jr_02A_4504:
    ld bc, $0200                                  ; $4504: $01 $00 $02
    nop                                           ; $4507: $00
    nop                                           ; $4508: $00
    nop                                           ; $4509: $00
    ld bc, $0200                                  ; $450A: $01 $00 $02
    nop                                           ; $450D: $00
    ld a, [bc]                                    ; $450E: $0A
    nop                                           ; $450F: $00
    inc b                                         ; $4510: $04
    nop                                           ; $4511: $00
    inc b                                         ; $4512: $04
    nop                                           ; $4513: $00
    inc b                                         ; $4514: $04
    nop                                           ; $4515: $00
    dec bc                                        ; $4516: $0B
    nop                                           ; $4517: $00
    inc c                                         ; $4518: $0C
    nop                                           ; $4519: $00
    dec c                                         ; $451A: $0D
    nop                                           ; $451B: $00
    ld c, $00                                     ; $451C: $0E $00
    rrca                                          ; $451E: $0F
    nop                                           ; $451F: $00
    stop                                          ; $4520: $10 $00
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00
    nop                                           ; $4524: $00
    nop                                           ; $4525: $00
    nop                                           ; $4526: $00
    nop                                           ; $4527: $00
    ld bc, $0200                                  ; $4528: $01 $00 $02
    nop                                           ; $452B: $00
    nop                                           ; $452C: $00
    nop                                           ; $452D: $00
    ld d, $00                                     ; $452E: $16 $00
    inc b                                         ; $4530: $04
    nop                                           ; $4531: $00
    rla                                           ; $4532: $17
    nop                                           ; $4533: $00
    nop                                           ; $4534: $00
    nop                                           ; $4535: $00
    ld bc, $0400                                  ; $4536: $01 $00 $04
    nop                                           ; $4539: $00
    inc b                                         ; $453A: $04
    nop                                           ; $453B: $00
    inc b                                         ; $453C: $04
    nop                                           ; $453D: $00
    jr jr_02A_4540                                ; $453E: $18 $00

jr_02A_4540:
    dec b                                         ; $4540: $05
    nop                                           ; $4541: $00
    ld b, $00                                     ; $4542: $06 $00
    ld b, $00                                     ; $4544: $06 $00
    ld b, $00                                     ; $4546: $06 $00
    ld b, $00                                     ; $4548: $06 $00
    ld b, $00                                     ; $454A: $06 $00
    ld b, $00                                     ; $454C: $06 $00
    ld b, $00                                     ; $454E: $06 $00
    rlca                                          ; $4550: $07
    nop                                           ; $4551: $00
    ld [$2100], sp                                ; $4552: $08 $00 $21
    nop                                           ; $4555: $00
    ld [hl+], a                                   ; $4556: $22
    nop                                           ; $4557: $00
    inc hl                                        ; $4558: $23
    nop                                           ; $4559: $00
    inc h                                         ; $455A: $24
    nop                                           ; $455B: $00
    dec h                                         ; $455C: $25
    nop                                           ; $455D: $00
    ld h, $00                                     ; $455E: $26 $00
    daa                                           ; $4560: $27
    nop                                           ; $4561: $00
    add hl, bc                                    ; $4562: $09
    nop                                           ; $4563: $00
    ld [$2800], sp                                ; $4564: $08 $00 $28
    nop                                           ; $4567: $00
    add hl, hl                                    ; $4568: $29
    nop                                           ; $4569: $00
    ld a, [hl+]                                   ; $456A: $2A
    nop                                           ; $456B: $00
    dec hl                                        ; $456C: $2B
    nop                                           ; $456D: $00
    inc l                                         ; $456E: $2C
    nop                                           ; $456F: $00
    dec l                                         ; $4570: $2D
    nop                                           ; $4571: $00
    ld l, $00                                     ; $4572: $2E $00
    add hl, bc                                    ; $4574: $09
    nop                                           ; $4575: $00
    ld de, $1200                                  ; $4576: $11 $00 $12
    nop                                           ; $4579: $00
    inc de                                        ; $457A: $13
    nop                                           ; $457B: $00
    ld [de], a                                    ; $457C: $12
    nop                                           ; $457D: $00
    ld [de], a                                    ; $457E: $12
    nop                                           ; $457F: $00
    ld [de], a                                    ; $4580: $12
    nop                                           ; $4581: $00
    ld [de], a                                    ; $4582: $12
    nop                                           ; $4583: $00
    ld [de], a                                    ; $4584: $12
    nop                                           ; $4585: $00
    inc d                                         ; $4586: $14
    nop                                           ; $4587: $00
    dec b                                         ; $4588: $05
    nop                                           ; $4589: $00
    ld b, $00                                     ; $458A: $06 $00
    ld b, $00                                     ; $458C: $06 $00
    ld b, $00                                     ; $458E: $06 $00
    ld b, $00                                     ; $4590: $06 $00
    ld b, $00                                     ; $4592: $06 $00
    ld b, $00                                     ; $4594: $06 $00
    ld b, $00                                     ; $4596: $06 $00
    rlca                                          ; $4598: $07
    nop                                           ; $4599: $00
    ld [$2F00], sp                                ; $459A: $08 $00 $2F
    nop                                           ; $459D: $00
    jr nc, jr_02A_45A0                            ; $459E: $30 $00

jr_02A_45A0:
    ld sp, $3200                                  ; $45A0: $31 $00 $32
    nop                                           ; $45A3: $00
    inc sp                                        ; $45A4: $33
    nop                                           ; $45A5: $00
    inc [hl]                                      ; $45A6: $34
    nop                                           ; $45A7: $00
    dec [hl]                                      ; $45A8: $35
    nop                                           ; $45A9: $00
    add hl, bc                                    ; $45AA: $09
    nop                                           ; $45AB: $00
    ld [$3600], sp                                ; $45AC: $08 $00 $36
    nop                                           ; $45AF: $00
    scf                                           ; $45B0: $37
    nop                                           ; $45B1: $00
    jr c, jr_02A_45B4                             ; $45B2: $38 $00

jr_02A_45B4:
    add hl, sp                                    ; $45B4: $39
    nop                                           ; $45B5: $00
    ld a, [hl-]                                   ; $45B6: $3A
    nop                                           ; $45B7: $00
    dec sp                                        ; $45B8: $3B
    nop                                           ; $45B9: $00
    inc a                                         ; $45BA: $3C
    nop                                           ; $45BB: $00
    add hl, bc                                    ; $45BC: $09
    nop                                           ; $45BD: $00
    ld de, $1200                                  ; $45BE: $11 $00 $12
    nop                                           ; $45C1: $00
    ld [de], a                                    ; $45C2: $12
    nop                                           ; $45C3: $00
    ld [de], a                                    ; $45C4: $12
    nop                                           ; $45C5: $00
    ld [de], a                                    ; $45C6: $12
    nop                                           ; $45C7: $00
    ld [de], a                                    ; $45C8: $12
    nop                                           ; $45C9: $00
    dec d                                         ; $45CA: $15
    nop                                           ; $45CB: $00
    ld [de], a                                    ; $45CC: $12
    nop                                           ; $45CD: $00
    inc d                                         ; $45CE: $14
    nop                                           ; $45CF: $00
    nop                                           ; $45D0: $00
    nop                                           ; $45D1: $00
    ld bc, $0200                                  ; $45D2: $01 $00 $02
    nop                                           ; $45D5: $00
    inc bc                                        ; $45D6: $03
    nop                                           ; $45D7: $00
    inc b                                         ; $45D8: $04
    nop                                           ; $45D9: $00
    dec b                                         ; $45DA: $05
    rst RST_10                                    ; $45DB: $D7
    xor a                                         ; $45DC: $AF
    ld [$C03B], a                                 ; $45DD: $EA $3B $C0
    ld a, $FF                                     ; $45E0: $3E $FF
    ldh [rBGP], a                                 ; $45E2: $E0 $47
    ldh [rOBP0], a                                ; $45E4: $E0 $48
    ldh [rOBP1], a                                ; $45E6: $E0 $49
    ldh [$FFEA], a                                ; $45E8: $E0 $EA
    ldh [$FFEB], a                                ; $45EA: $E0 $EB
    ldh [$FFEC], a                                ; $45EC: $E0 $EC
    ldh [$FFE2], a                                ; $45EE: $E0 $E2
    call Call_000_13ED                            ; $45F0: $CD $ED $13
    ld a, $55                                     ; $45F3: $3E $55
    ldh [$FFE4], a                                ; $45F5: $E0 $E4
    ld a, $00                                     ; $45F7: $3E $00
    ldh [$FFE2], a                                ; $45F9: $E0 $E2
    call Call_000_0F9E                            ; $45FB: $CD $9E $0F
    ld de, $0034                                  ; $45FE: $11 $34 $00
    call Call_000_14C0                            ; $4601: $CD $C0 $14
    call Call_000_0FBD                            ; $4604: $CD $BD $0F
    call Call_000_0FC6                            ; $4607: $CD $C6 $0F
    call Call_000_18EB                            ; $460A: $CD $EB $18
    call Call_02A_47F4                            ; $460D: $CD $F4 $47
    call Call_02A_48AB                            ; $4610: $CD $AB $48
    call Call_02A_4B23                            ; $4613: $CD $23 $4B
    call Call_02A_4B8F                            ; $4616: $CD $8F $4B
    ld a, $99                                     ; $4619: $3E $99
    ldh [rWY], a                                  ; $461B: $E0 $4A
    ld a, $57                                     ; $461D: $3E $57
    ldh [rWX], a                                  ; $461F: $E0 $4B
    ld a, $E7                                     ; $4621: $3E $E7
    rst RST_18                                    ; $4623: $DF
    xor a                                         ; $4624: $AF
    ldh [rSTAT], a                                ; $4625: $E0 $41
    ei                                            ; $4627: $FB
    call Call_000_0424                            ; $4628: $CD $24 $04
    ld a, $8C                                     ; $462B: $3E $8C
    ldh [rOBP0], a                                ; $462D: $E0 $48
    ld a, $18                                     ; $462F: $3E $18
    ldh [rOBP1], a                                ; $4631: $E0 $49
    ld a, $1B                                     ; $4633: $3E $1B
    ldh [rBGP], a                                 ; $4635: $E0 $47
    ldh [$FFEA], a                                ; $4637: $E0 $EA
    ldh [$FFEB], a                                ; $4639: $E0 $EB
    ldh [$FFEC], a                                ; $463B: $E0 $EC
    call Call_000_147A                            ; $463D: $CD $7A $14
    ld a, $8F                                     ; $4640: $3E $8F
    call Call_000_135D                            ; $4642: $CD $5D $13
    ld b, $3C                                     ; $4645: $06 $3C

jr_02A_4647:
    call Call_000_0424                            ; $4647: $CD $24 $04
    dec b                                         ; $464A: $05
    jr nz, jr_02A_4647                            ; $464B: $20 $FA

Jump_02A_464D:
    call Call_02A_4CBC                            ; $464D: $CD $BC $4C
    ld a, [$C03B]                                 ; $4650: $FA $3B $C0
    ld hl, $467F                                  ; $4653: $21 $7F $46
    call Call_02A_4662                            ; $4656: $CD $62 $46
    jp c, Jump_02A_4670                           ; $4659: $DA $70 $46

    call Call_000_0424                            ; $465C: $CD $24 $04
    jp Jump_02A_464D                              ; $465F: $C3 $4D $46


Call_02A_4662:
    rst RST_28                                    ; $4662: $EF
    ret                                           ; $4663: $C9


Jump_02A_4664:
    xor a                                         ; $4664: $AF
    ret                                           ; $4665: $C9


Jump_02A_4666:
    ld a, [$C03B]                                 ; $4666: $FA $3B $C0
    add $02                                       ; $4669: $C6 $02
    ld [$C03B], a                                 ; $466B: $EA $3B $C0
    xor a                                         ; $466E: $AF
    ret                                           ; $466F: $C9


Jump_02A_4670:
    ld a, $FF                                     ; $4670: $3E $FF
    ldh [rBGP], a                                 ; $4672: $E0 $47
    ldh [rOBP0], a                                ; $4674: $E0 $48
    ldh [rOBP1], a                                ; $4676: $E0 $49
    call Call_000_13ED                            ; $4678: $CD $ED $13
    xor a                                         ; $467B: $AF
    ldh [rSTAT], a                                ; $467C: $E0 $41
    ret                                           ; $467E: $C9


    sub l                                         ; $467F: $95
    ld b, [hl]                                    ; $4680: $46
    ret                                           ; $4681: $C9


    ld b, [hl]                                    ; $4682: $46
    dec e                                         ; $4683: $1D
    ld b, a                                       ; $4684: $47
    ld e, h                                       ; $4685: $5C
    ld b, a                                       ; $4686: $47
    ld l, d                                       ; $4687: $6A
    ld b, a                                       ; $4688: $47
    add d                                         ; $4689: $82
    ld b, a                                       ; $468A: $47
    and [hl]                                      ; $468B: $A6
    ld b, a                                       ; $468C: $47
    ld hl, $C319                                  ; $468D: $21 $19 $C3
    dec [hl]                                      ; $4690: $35
    ret nz                                        ; $4691: $C0

    jp Jump_02A_4666                              ; $4692: $C3 $66 $46


    ld a, $12                                     ; $4695: $3E $12

jr_02A_4697:
    push af                                       ; $4697: $F5
    ld b, a                                       ; $4698: $47
    ldh a, [$FFE4]                                ; $4699: $F0 $E4
    add b                                         ; $469B: $80
    ldh [$FFE4], a                                ; $469C: $E0 $E4
    call Call_000_0424                            ; $469E: $CD $24 $04
    pop af                                        ; $46A1: $F1
    dec a                                         ; $46A2: $3D
    jr nz, jr_02A_4697                            ; $46A3: $20 $F2

    ld hl, $D700                                  ; $46A5: $21 $00 $D7
    ld [hl], $80                                  ; $46A8: $36 $80
    ld hl, $D740                                  ; $46AA: $21 $40 $D7
    ld [hl], $80                                  ; $46AD: $36 $80
    call Call_000_0424                            ; $46AF: $CD $24 $04
    ld a, $03                                     ; $46B2: $3E $03
    ld [$D729], a                                 ; $46B4: $EA $29 $D7
    ld a, $FD                                     ; $46B7: $3E $FD
    ld [$D769], a                                 ; $46B9: $EA $69 $D7
    ld hl, $C312                                  ; $46BC: $21 $12 $C3
    ld [hl], $5E                                  ; $46BF: $36 $5E
    ld hl, $C319                                  ; $46C1: $21 $19 $C3
    ld [hl], $0A                                  ; $46C4: $36 $0A
    jp Jump_02A_4666                              ; $46C6: $C3 $66 $46


    call Call_02A_47B5                            ; $46C9: $CD $B5 $47
    ld a, [$C319]                                 ; $46CC: $FA $19 $C3
    or a                                          ; $46CF: $B7
    jr z, jr_02A_46D8                             ; $46D0: $28 $06

    dec a                                         ; $46D2: $3D
    ld [$C319], a                                 ; $46D3: $EA $19 $C3
    jr jr_02A_4712                                ; $46D6: $18 $3A

jr_02A_46D8:
    ld hl, $C312                                  ; $46D8: $21 $12 $C3
    dec [hl]                                      ; $46DB: $35
    jr z, jr_02A_4715                             ; $46DC: $28 $37

    ld a, [$D729]                                 ; $46DE: $FA $29 $D7
    add $FD                                       ; $46E1: $C6 $FD
    ld [$D729], a                                 ; $46E3: $EA $29 $D7
    ld hl, $D704                                  ; $46E6: $21 $04 $D7
    ld b, [hl]                                    ; $46E9: $46
    inc hl                                        ; $46EA: $23
    ld c, [hl]                                    ; $46EB: $4E
    call Call_02A_4CC8                            ; $46EC: $CD $C8 $4C
    add hl, bc                                    ; $46EF: $09
    push hl                                       ; $46F0: $E5
    pop bc                                        ; $46F1: $C1
    ld hl, $D704                                  ; $46F2: $21 $04 $D7
    ld [hl], b                                    ; $46F5: $70
    inc hl                                        ; $46F6: $23
    ld [hl], c                                    ; $46F7: $71
    ld a, [$D769]                                 ; $46F8: $FA $69 $D7
    add $03                                       ; $46FB: $C6 $03
    ld [$D769], a                                 ; $46FD: $EA $69 $D7
    ld hl, $D744                                  ; $4700: $21 $44 $D7
    ld b, [hl]                                    ; $4703: $46
    inc hl                                        ; $4704: $23
    ld c, [hl]                                    ; $4705: $4E
    call Call_02A_4CC8                            ; $4706: $CD $C8 $4C
    add hl, bc                                    ; $4709: $09
    push hl                                       ; $470A: $E5
    pop bc                                        ; $470B: $C1
    ld hl, $D744                                  ; $470C: $21 $44 $D7
    ld [hl], b                                    ; $470F: $70
    inc hl                                        ; $4710: $23
    ld [hl], c                                    ; $4711: $71

jr_02A_4712:
    jp Jump_02A_4664                              ; $4712: $C3 $64 $46


jr_02A_4715:
    ld a, $0E                                     ; $4715: $3E $0E
    call Call_02A_4AE8                            ; $4717: $CD $E8 $4A
    jp Jump_02A_4666                              ; $471A: $C3 $66 $46


    call Call_02A_47B5                            ; $471D: $CD $B5 $47
    call $4A9B                                    ; $4720: $CD $9B $4A
    jr c, jr_02A_4728                             ; $4723: $38 $03

    jp Jump_02A_4664                              ; $4725: $C3 $64 $46


jr_02A_4728:
    ld hl, $980A                                  ; $4728: $21 $0A $98
    ld de, $778C                                  ; $472B: $11 $8C $77
    ld a, [de]                                    ; $472E: $1A
    add $34                                       ; $472F: $C6 $34
    ld d, a                                       ; $4731: $57
    ld e, $00                                     ; $4732: $1E $00
    ld b, $01                                     ; $4734: $06 $01
    ld c, $12                                     ; $4736: $0E $12
    call Call_000_10EA                            ; $4738: $CD $EA $10
    ld hl, $9812                                  ; $473B: $21 $12 $98
    ld de, $7790                                  ; $473E: $11 $90 $77
    ld a, [de]                                    ; $4741: $1A
    add $34                                       ; $4742: $C6 $34
    ld d, a                                       ; $4744: $57
    ld e, $00                                     ; $4745: $1E $00
    ld b, $01                                     ; $4747: $06 $01
    ld c, $12                                     ; $4749: $0E $12
    call Call_000_10EA                            ; $474B: $CD $EA $10
    xor a                                         ; $474E: $AF
    ld [$D700], a                                 ; $474F: $EA $00 $D7
    ld [$D740], a                                 ; $4752: $EA $40 $D7
    ld a, $18                                     ; $4755: $3E $18
    ldh [rOBP1], a                                ; $4757: $E0 $49
    jp Jump_02A_4666                              ; $4759: $C3 $66 $46


    ld b, $07                                     ; $475C: $06 $07
    ld c, $00                                     ; $475E: $0E $00
    ld de, $C290                                  ; $4760: $11 $90 $C2
    call Call_000_160B                            ; $4763: $CD $0B $16
    jp c, Jump_02A_4666                           ; $4766: $DA $66 $46

    ret                                           ; $4769: $C9


    ld a, $0B                                     ; $476A: $3E $0B

jr_02A_476C:
    push af                                       ; $476C: $F5
    ld b, a                                       ; $476D: $47
    ldh a, [rWY]                                  ; $476E: $F0 $4A
    sub b                                         ; $4770: $90
    ldh [rWY], a                                  ; $4771: $E0 $4A
    call Call_000_0424                            ; $4773: $CD $24 $04
    pop af                                        ; $4776: $F1
    dec a                                         ; $4777: $3D
    jr nz, jr_02A_476C                            ; $4778: $20 $F2

    ld a, $80                                     ; $477A: $3E $80
    ld [$D6C0], a                                 ; $477C: $EA $C0 $D6
    jp Jump_02A_4666                              ; $477F: $C3 $66 $46


    ld a, $0D                                     ; $4782: $3E $0D

jr_02A_4784:
    push af                                       ; $4784: $F5
    ld b, a                                       ; $4785: $47
    ld a, [$D6C4]                                 ; $4786: $FA $C4 $D6
    add b                                         ; $4789: $80
    ld [$D6C4], a                                 ; $478A: $EA $C4 $D6
    ld a, [$D684]                                 ; $478D: $FA $84 $D6
    add b                                         ; $4790: $80
    ld [$D684], a                                 ; $4791: $EA $84 $D6
    call Call_02A_4996                            ; $4794: $CD $96 $49
    call Call_000_0424                            ; $4797: $CD $24 $04
    pop af                                        ; $479A: $F1
    dec a                                         ; $479B: $3D
    jr nz, jr_02A_4784                            ; $479C: $20 $E6

    ld hl, $C319                                  ; $479E: $21 $19 $C3
    ld [hl], $00                                  ; $47A1: $36 $00
    jp Jump_02A_4666                              ; $47A3: $C3 $66 $46


    call Call_02A_4996                            ; $47A6: $CD $96 $49
    call $4C96                                    ; $47A9: $CD $96 $4C
    jr c, jr_02A_47B3                             ; $47AC: $38 $05

    ld hl, $C319                                  ; $47AE: $21 $19 $C3
    dec [hl]                                      ; $47B1: $35
    ret nz                                        ; $47B2: $C0

jr_02A_47B3:
    scf                                           ; $47B3: $37
    ret                                           ; $47B4: $C9


Call_02A_47B5:
    ldh a, [rOBP1]                                ; $47B5: $F0 $49
    rlca                                          ; $47B7: $07
    ldh [rOBP1], a                                ; $47B8: $E0 $49
    ld a, [$C017]                                 ; $47BA: $FA $17 $C0
    and $03                                       ; $47BD: $E6 $03
    cp $01                                        ; $47BF: $FE $01
    jr z, jr_02A_47D4                             ; $47C1: $28 $11

    cp $02                                        ; $47C3: $FE $02
    jr z, jr_02A_47DD                             ; $47C5: $28 $16

    cp $03                                        ; $47C7: $FE $03
    jr z, jr_02A_47E6                             ; $47C9: $28 $1B

Jump_02A_47CB:
    ld a, [$D702]                                 ; $47CB: $FA $02 $D7
    and $F8                                       ; $47CE: $E6 $F8
    add $02                                       ; $47D0: $C6 $02
    jr jr_02A_47ED                                ; $47D2: $18 $19

jr_02A_47D4:
    ld a, [$D702]                                 ; $47D4: $FA $02 $D7
    and $F8                                       ; $47D7: $E6 $F8
    add $03                                       ; $47D9: $C6 $03
    jr jr_02A_47ED                                ; $47DB: $18 $10

jr_02A_47DD:
    ld a, [$D702]                                 ; $47DD: $FA $02 $D7
    and $F8                                       ; $47E0: $E6 $F8
    add $04                                       ; $47E2: $C6 $04
    jr jr_02A_47ED                                ; $47E4: $18 $07

jr_02A_47E6:
    ld a, [$D702]                                 ; $47E6: $FA $02 $D7
    and $F8                                       ; $47E9: $E6 $F8
    add $05                                       ; $47EB: $C6 $05

jr_02A_47ED:
    ld [$D702], a                                 ; $47ED: $EA $02 $D7
    ld [$D742], a                                 ; $47F0: $EA $42 $D7
    ret                                           ; $47F3: $C9


Call_02A_47F4:
    ld hl, $75D5                                  ; $47F4: $21 $D5 $75
    ld de, $C329                                  ; $47F7: $11 $29 $C3
    call Call_000_124C                            ; $47FA: $CD $4C $12
    ld hl, $C329                                  ; $47FD: $21 $29 $C3
    ld de, $9340                                  ; $4800: $11 $40 $93
    ld b, $34                                     ; $4803: $06 $34
    call Call_000_1188                            ; $4805: $CD $88 $11
    ld hl, $9820                                  ; $4808: $21 $20 $98
    ld de, $773B                                  ; $480B: $11 $3B $77
    ld b, $0A                                     ; $480E: $06 $0A
    ld c, $04                                     ; $4810: $0E $04
    ld a, $34                                     ; $4812: $3E $34
    call Call_000_0FF7                            ; $4814: $CD $F7 $0F
    ld hl, $78A3                                  ; $4817: $21 $A3 $78
    ld de, $8400                                  ; $481A: $11 $00 $84
    ld b, $02                                     ; $481D: $06 $02
    call Call_000_1188                            ; $481F: $CD $88 $11
    ld hl, $D700                                  ; $4822: $21 $00 $D7
    ld de, $78C3                                  ; $4825: $11 $C3 $78

Call_02A_4828:
    call Call_000_0F8E                            ; $4828: $CD $8E $0F
    ld hl, $D700                                  ; $482B: $21 $00 $D7
    ld [hl], $00                                  ; $482E: $36 $00
    ld hl, $D702                                  ; $4830: $21 $02 $D7
    ld [hl], $12                                  ; $4833: $36 $12
    ld hl, $D712                                  ; $4835: $21 $12 $D7
    ld [hl], $F5                                  ; $4838: $36 $F5
    inc hl                                        ; $483A: $23
    ld [hl], $78                                  ; $483B: $36 $78
    ld hl, $D704                                  ; $483D: $21 $04 $D7
    ld [hl], $6E                                  ; $4840: $36 $6E
    ld hl, $D706                                  ; $4842: $21 $06 $D7
    ld [hl], $00                                  ; $4845: $36 $00
    ld hl, $D740                                  ; $4847: $21 $40 $D7
    ld de, $78C3                                  ; $484A: $11 $C3 $78
    call Call_000_0F8E                            ; $484D: $CD $8E $0F
    ld hl, $D740                                  ; $4850: $21 $40 $D7
    ld [hl], $00                                  ; $4853: $36 $00
    ld hl, $D742                                  ; $4855: $21 $42 $D7
    ld [hl], $12                                  ; $4858: $36 $12
    ld hl, $D752                                  ; $485A: $21 $52 $D7
    ld [hl], $F5                                  ; $485D: $36 $F5
    inc hl                                        ; $485F: $23
    ld [hl], $78                                  ; $4860: $36 $78
    ld hl, $D754                                  ; $4862: $21 $54 $D7
    ld [hl], $04                                  ; $4865: $36 $04
    ld hl, $D744                                  ; $4867: $21 $44 $D7
    ld [hl], $72                                  ; $486A: $36 $72
    ld hl, $D746                                  ; $486C: $21 $46 $D7
    ld [hl], $00                                  ; $486F: $36 $00
    ld hl, $9C00                                  ; $4871: $21 $00 $9C
    ld de, $778C                                  ; $4874: $11 $8C $77
    ld a, [de]                                    ; $4877: $1A
    add $34                                       ; $4878: $C6 $34
    ld d, a                                       ; $487A: $57
    ld e, $00                                     ; $487B: $1E $00
    ld b, $01                                     ; $487D: $06 $01
    ld c, $12                                     ; $487F: $0E $12
    call Call_000_10EA                            ; $4881: $CD $EA $10
    ld hl, $9C01                                  ; $4884: $21 $01 $9C
    ld de, $778E                                  ; $4887: $11 $8E $77
    ld a, [de]                                    ; $488A: $1A
    add $34                                       ; $488B: $C6 $34
    ld d, a                                       ; $488D: $57
    ld e, $00                                     ; $488E: $1E $00
    ld b, $07                                     ; $4890: $06 $07
    ld c, $12                                     ; $4892: $0E $12
    call Call_000_10EA                            ; $4894: $CD $EA $10
    ld hl, $9C08                                  ; $4897: $21 $08 $9C
    ld de, $7790                                  ; $489A: $11 $90 $77
    ld a, [de]                                    ; $489D: $1A
    add $34                                       ; $489E: $C6 $34
    ld d, a                                       ; $48A0: $57
    ld e, $00                                     ; $48A1: $1E $00
    ld b, $01                                     ; $48A3: $06 $01
    ld c, $12                                     ; $48A5: $0E $12
    call Call_000_10EA                            ; $48A7: $CD $EA $10
    ret                                           ; $48AA: $C9


Call_02A_48AB:
    ld hl, $D680                                  ; $48AB: $21 $80 $D6
    ld de, $24CF                                  ; $48AE: $11 $CF $24
    call Call_000_0F8E                            ; $48B1: $CD $8E $0F
    ld hl, $D684                                  ; $48B4: $21 $84 $D6
    ld [hl], $CD                                  ; $48B7: $36 $CD
    ld hl, $D686                                  ; $48B9: $21 $86 $D6
    ld [hl], $48                                  ; $48BC: $36 $48
    ld hl, $D6C0                                  ; $48BE: $21 $C0 $D6
    ld de, $78C3                                  ; $48C1: $11 $C3 $78
    call Call_000_0F8E                            ; $48C4: $CD $8E $0F
    ld a, [$C2C5]                                 ; $48C7: $FA $C5 $C2
    bit 0, a                                      ; $48CA: $CB $47
    jr z, jr_02A_48E9                             ; $48CC: $28 $1B

    ld a, [$D92E]                                 ; $48CE: $FA $2E $D9
    ld b, a                                       ; $48D1: $47
    ld a, [$C2C6]                                 ; $48D2: $FA $C6 $C2
    bit 1, a                                      ; $48D5: $CB $4F
    jr nz, jr_02A_4904                            ; $48D7: $20 $2B

Jump_02A_48D9:
    ld a, [$C2D0]                                 ; $48D9: $FA $D0 $C2
    or a                                          ; $48DC: $B7
    jp z, Jump_02A_4962                           ; $48DD: $CA $62 $49

    ld a, [$DA2E]                                 ; $48E0: $FA $2E $DA
    ld b, a                                       ; $48E3: $47
    ld c, $01                                     ; $48E4: $0E $01
    jp Jump_02A_4973                              ; $48E6: $C3 $73 $49


jr_02A_48E9:
    ld a, [$DA2E]                                 ; $48E9: $FA $2E $DA
    ld b, a                                       ; $48EC: $47
    ld c, $01                                     ; $48ED: $0E $01
    ld a, [$C2C6]                                 ; $48EF: $FA $C6 $C2
    bit 1, a                                      ; $48F2: $CB $4F
    jr nz, jr_02A_4922                            ; $48F4: $20 $2C

    ld a, [$C2D0]                                 ; $48F6: $FA $D0 $C2
    or a                                          ; $48F9: $B7
    jr nz, jr_02A_4962                            ; $48FA: $20 $66

    ld a, [$D92E]                                 ; $48FC: $FA $2E $D9
    ld b, a                                       ; $48FF: $47
    ld c, $00                                     ; $4900: $0E $00
    jr jr_02A_4973                                ; $4902: $18 $6F

jr_02A_4904:
    ld a, [$C037]                                 ; $4904: $FA $37 $C0
    bit 7, a                                      ; $4907: $CB $7F
    jr nz, jr_02A_4940                            ; $4909: $20 $35

    ld a, [$C2C6]                                 ; $490B: $FA $C6 $C2
    bit 0, a                                      ; $490E: $CB $47
    jp nz, Jump_02A_4940                          ; $4910: $C2 $40 $49

    ld a, [$C037]                                 ; $4913: $FA $37 $C0
    bit 5, a                                      ; $4916: $CB $6F
    jr z, jr_02A_4962                             ; $4918: $28 $48

    ld a, [$DA2E]                                 ; $491A: $FA $2E $DA
    ld b, a                                       ; $491D: $47
    ld c, $01                                     ; $491E: $0E $01
    jr jr_02A_4973                                ; $4920: $18 $51

jr_02A_4922:
    ld a, [$C037]                                 ; $4922: $FA $37 $C0
    bit 7, a                                      ; $4925: $CB $7F
    jr nz, jr_02A_4951                            ; $4927: $20 $28

    ld a, [$C2C6]                                 ; $4929: $FA $C6 $C2
    bit 0, a                                      ; $492C: $CB $47
    jp nz, Jump_02A_4951                          ; $492E: $C2 $51 $49

    ld a, [$C037]                                 ; $4931: $FA $37 $C0
    bit 5, a                                      ; $4934: $CB $6F
    jr nz, jr_02A_4962                            ; $4936: $20 $2A

    ld a, [$D92E]                                 ; $4938: $FA $2E $D9
    ld b, a                                       ; $493B: $47
    ld c, $00                                     ; $493C: $0E $00
    jr jr_02A_4973                                ; $493E: $18 $33

Jump_02A_4940:
jr_02A_4940:
    ld hl, $4A23                                  ; $4940: $21 $23 $4A
    ld a, b                                       ; $4943: $78
    call Call_02A_49AB                            ; $4944: $CD $AB $49
    ld hl, $D6D4                                  ; $4947: $21 $D4 $D6
    ld [hl], $00                                  ; $494A: $36 $00
    ld hl, $7791                                  ; $494C: $21 $91 $77
    jr jr_02A_4984                                ; $494F: $18 $33

Jump_02A_4951:
jr_02A_4951:
    ld hl, $4A23                                  ; $4951: $21 $23 $4A
    ld a, b                                       ; $4954: $78
    call Call_02A_49AB                            ; $4955: $CD $AB $49
    ld hl, $D6D4                                  ; $4958: $21 $D4 $D6
    ld [hl], $04                                  ; $495B: $36 $04
    ld hl, $77CF                                  ; $495D: $21 $CF $77
    jr jr_02A_4984                                ; $4960: $18 $22

Jump_02A_4962:
jr_02A_4962:
    ld hl, $4A23                                  ; $4962: $21 $23 $4A
    ld a, b                                       ; $4965: $78
    call Call_02A_49AB                            ; $4966: $CD $AB $49
    ld hl, $D6D4                                  ; $4969: $21 $D4 $D6
    ld [hl], $08                                  ; $496C: $36 $08
    ld hl, $7813                                  ; $496E: $21 $13 $78
    jr jr_02A_4984                                ; $4971: $18 $11

Jump_02A_4973:
jr_02A_4973:
    ld hl, $4A4B                                  ; $4973: $21 $4B $4A
    ld a, b                                       ; $4976: $78
    call Call_02A_49AB                            ; $4977: $CD $AB $49
    ld hl, $D6D4                                  ; $497A: $21 $D4 $D6
    ld [hl], $0C                                  ; $497D: $36 $0C
    ld hl, $7859                                  ; $497F: $21 $59 $78
    jr jr_02A_4984                                ; $4982: $18 $00

jr_02A_4984:
    ld de, $C329                                  ; $4984: $11 $29 $C3
    call Call_000_124C                            ; $4987: $CD $4C $12
    ld hl, $C329                                  ; $498A: $21 $29 $C3
    ld de, $8420                                  ; $498D: $11 $20 $84
    ld b, $0E                                     ; $4990: $06 $0E
    call Call_000_1188                            ; $4992: $CD $88 $11
    ret                                           ; $4995: $C9


Call_02A_4996:
    ld a, [$D6D4]                                 ; $4996: $FA $D4 $D6
    cp $0C                                        ; $4999: $FE $0C
    jr nz, jr_02A_49A4                            ; $499B: $20 $07

    ld hl, $D680                                  ; $499D: $21 $80 $D6
    call Call_000_0E28                            ; $49A0: $CD $28 $0E
    ret                                           ; $49A3: $C9


jr_02A_49A4:
    ld hl, $D680                                  ; $49A4: $21 $80 $D6
    call Call_000_0DD4                            ; $49A7: $CD $D4 $0D
    ret                                           ; $49AA: $C9


Call_02A_49AB:
    ld de, $D680                                  ; $49AB: $11 $80 $D6
    push bc                                       ; $49AE: $C5
    sla a                                         ; $49AF: $CB $27
    ld b, $00                                     ; $49B1: $06 $00
    ld c, a                                       ; $49B3: $4F
    add hl, bc                                    ; $49B4: $09
    push hl                                       ; $49B5: $E5
    pop bc                                        ; $49B6: $C1
    ld a, [de]                                    ; $49B7: $1A
    and $EF                                       ; $49B8: $E6 $EF
    ld [de], a                                    ; $49BA: $12
    ld hl, $0011                                  ; $49BB: $21 $11 $00
    add hl, de                                    ; $49BE: $19
    ld a, [bc]                                    ; $49BF: $0A
    ld [hl+], a                                   ; $49C0: $22
    inc bc                                        ; $49C1: $03
    ld a, [bc]                                    ; $49C2: $0A
    ld [hl+], a                                   ; $49C3: $22
    inc bc                                        ; $49C4: $03
    ld a, [bc]                                    ; $49C5: $0A
    ld [hl+], a                                   ; $49C6: $22
    inc bc                                        ; $49C7: $03
    xor a                                         ; $49C8: $AF
    ld [hl], a                                    ; $49C9: $77
    ld hl, $001C                                  ; $49CA: $21 $1C $00
    add hl, de                                    ; $49CD: $19
    ld a, [bc]                                    ; $49CE: $0A
    ld [hl+], a                                   ; $49CF: $22
    ld [hl], a                                    ; $49D0: $77
    push de                                       ; $49D1: $D5
    push de                                       ; $49D2: $D5
    pop hl                                        ; $49D3: $E1
    call Call_000_0DB5                            ; $49D4: $CD $B5 $0D
    pop de                                        ; $49D7: $D1
    ld a, [$C037]                                 ; $49D8: $FA $37 $C0
    bit 7, a                                      ; $49DB: $CB $7F
    jp nz, Jump_02A_4A04                          ; $49DD: $C2 $04 $4A

    pop bc                                        ; $49E0: $C1
    ld a, b                                       ; $49E1: $78
    add c                                         ; $49E2: $81
    ld hl, $20A2                                  ; $49E3: $21 $A2 $20
    ld b, $00                                     ; $49E6: $06 $00
    ld c, a                                       ; $49E8: $4F
    sla c                                         ; $49E9: $CB $21
    rl b                                          ; $49EB: $CB $10
    sla c                                         ; $49ED: $CB $21
    rl b                                          ; $49EF: $CB $10
    sla c                                         ; $49F1: $CB $21
    rl b                                          ; $49F3: $CB $10
    add hl, bc                                    ; $49F5: $09
    ld de, $D3C0                                  ; $49F6: $11 $C0 $D3
    ld b, $08                                     ; $49F9: $06 $08

jr_02A_49FB:
    ld a, [hl+]                                   ; $49FB: $2A
    ld [de], a                                    ; $49FC: $12
    inc de                                        ; $49FD: $13
    dec b                                         ; $49FE: $05
    jr nz, jr_02A_49FB                            ; $49FF: $20 $FA

    jp Jump_02A_4A22                              ; $4A01: $C3 $22 $4A


Jump_02A_4A04:
    pop bc                                        ; $4A04: $C1
    ld a, b                                       ; $4A05: $78
    sla a                                         ; $4A06: $CB $27
    ld hl, $4A73                                  ; $4A08: $21 $73 $4A
    ld b, $00                                     ; $4A0B: $06 $00
    ld c, a                                       ; $4A0D: $4F
    add hl, bc                                    ; $4A0E: $09
    ld de, $C068                                  ; $4A0F: $11 $68 $C0
    ld b, $04                                     ; $4A12: $06 $04

jr_02A_4A14:
    ld a, [hl+]                                   ; $4A14: $2A
    ld [de], a                                    ; $4A15: $12
    inc de                                        ; $4A16: $13
    dec b                                         ; $4A17: $05
    jr nz, jr_02A_4A14                            ; $4A18: $20 $FA

    ld a, [$C04E]                                 ; $4A1A: $FA $4E $C0
    set 1, a                                      ; $4A1D: $CB $CF
    ld [$C04E], a                                 ; $4A1F: $EA $4E $C0

Jump_02A_4A22:
    ret                                           ; $4A22: $C9


    rlca                                          ; $4A23: $07
    cp b                                          ; $4A24: $B8
    ld b, d                                       ; $4A25: $42
    ld b, $07                                     ; $4A26: $06 $07
    rrca                                          ; $4A28: $0F
    ld e, c                                       ; $4A29: $59
    ld b, $08                                     ; $4A2A: $06 $08
    nop                                           ; $4A2C: $00
    ld b, d                                       ; $4A2D: $42
    ld b, $08                                     ; $4A2E: $06 $08
    jr nz, jr_02A_4A90                            ; $4A30: $20 $5E

    ld b, $09                                     ; $4A32: $06 $09
    ld [$0642], sp                                ; $4A34: $08 $42 $06
    add hl, bc                                    ; $4A37: $09
    adc [hl]                                      ; $4A38: $8E
    ld e, c                                       ; $4A39: $59
    ld b, $0A                                     ; $4A3A: $06 $0A
    sbc [hl]                                      ; $4A3C: $9E
    ld b, c                                       ; $4A3D: $41
    ld b, $0A                                     ; $4A3E: $06 $0A
    dec hl                                        ; $4A40: $2B
    ld e, h                                       ; $4A41: $5C
    ld b, $0B                                     ; $4A42: $06 $0B
    ld c, h                                       ; $4A44: $4C
    ld b, d                                       ; $4A45: $42
    ld b, $0B                                     ; $4A46: $06 $0B
    call c, Call_000_035D                         ; $4A48: $DC $5D $03
    rlca                                          ; $4A4B: $07
    ldh [c], a                                    ; $4A4C: $E2
    ld b, d                                       ; $4A4D: $42
    ld b, $07                                     ; $4A4E: $06 $07
    ld c, c                                       ; $4A50: $49
    ld e, c                                       ; $4A51: $59
    ld b, $08                                     ; $4A52: $06 $08
    ld h, $42                                     ; $4A54: $26 $42
    ld b, $08                                     ; $4A56: $06 $08
    ld a, [hl-]                                   ; $4A58: $3A
    ld e, [hl]                                    ; $4A59: $5E
    ld b, $09                                     ; $4A5A: $06 $09
    ld a, [hl+]                                   ; $4A5C: $2A
    ld b, d                                       ; $4A5D: $42
    ld b, $09                                     ; $4A5E: $06 $09
    or b                                          ; $4A60: $B0
    ld e, c                                       ; $4A61: $59
    ld b, $0A                                     ; $4A62: $06 $0A
    cp b                                          ; $4A64: $B8
    ld b, c                                       ; $4A65: $41
    ld b, $0A                                     ; $4A66: $06 $0A
    ld c, l                                       ; $4A68: $4D
    ld e, h                                       ; $4A69: $5C
    ld b, $0B                                     ; $4A6A: $06 $0B
    ld [hl], d                                    ; $4A6C: $72
    ld b, d                                       ; $4A6D: $42
    ld b, $0B                                     ; $4A6E: $06 $0B
    ld a, [de]                                    ; $4A70: $1A
    ld e, [hl]                                    ; $4A71: $5E
    ld b, $3F                                     ; $4A72: $06 $3F
    rla                                           ; $4A74: $17
    cp l                                          ; $4A75: $BD
    inc c                                         ; $4A76: $0C
    ld a, a                                       ; $4A77: $7F
    ld h, l                                       ; $4A78: $65
    ld a, e                                       ; $4A79: $7B
    inc d                                         ; $4A7A: $14
    ld a, a                                       ; $4A7B: $7F
    ld h, $FF                                     ; $4A7C: $26 $FF
    nop                                           ; $4A7E: $00
    cpl                                           ; $4A7F: $2F
    ccf                                           ; $4A80: $3F
    db $E3                                        ; $4A81: $E3
    dec c                                         ; $4A82: $0D
    ld a, e                                       ; $4A83: $7B
    rla                                           ; $4A84: $17
    ld a, e                                       ; $4A85: $7B
    dec d                                         ; $4A86: $15
    ld a, a                                       ; $4A87: $7F
    rra                                           ; $4A88: $1F
    or a                                          ; $4A89: $B7
    dec c                                         ; $4A8A: $0D
    di                                            ; $4A8B: $F3
    ld l, [hl]                                    ; $4A8C: $6E
    xor e                                         ; $4A8D: $AB
    ld h, l                                       ; $4A8E: $65
    ld a, a                                       ; $4A8F: $7F

jr_02A_4A90:
    ld a, [hl]                                    ; $4A90: $7E
    ld l, a                                       ; $4A91: $6F
    ld l, l                                       ; $4A92: $6D
    rst RST_38                                    ; $4A93: $FF
    ld a, $3F                                     ; $4A94: $3E $3F
    dec d                                         ; $4A96: $15
    push af                                       ; $4A97: $F5
    rra                                           ; $4A98: $1F
    ld l, c                                       ; $4A99: $69
    ld c, $FA                                     ; $4A9A: $0E $FA
    inc b                                         ; $4A9C: $04
    rst RST_10                                    ; $4A9D: $D7
    cp $50                                        ; $4A9E: $FE $50
    jr z, jr_02A_4AB8                             ; $4AA0: $28 $16

    dec a                                         ; $4AA2: $3D
    ld [$D704], a                                 ; $4AA3: $EA $04 $D7
    inc a                                         ; $4AA6: $3C
    and $07                                       ; $4AA7: $E6 $07
    jr nz, jr_02A_4AB8                            ; $4AA9: $20 $0D

    ld a, [$D704]                                 ; $4AAB: $FA $04 $D7
    inc a                                         ; $4AAE: $3C
    srl a                                         ; $4AAF: $CB $3F
    srl a                                         ; $4AB1: $CB $3F
    srl a                                         ; $4AB3: $CB $3F
    call Call_02A_4AE8                            ; $4AB5: $CD $E8 $4A

jr_02A_4AB8:
    ld a, [$D744]                                 ; $4AB8: $FA $44 $D7
    cp $90                                        ; $4ABB: $FE $90
    jr z, jr_02A_4AD5                             ; $4ABD: $28 $16

    inc a                                         ; $4ABF: $3C
    ld [$D744], a                                 ; $4AC0: $EA $44 $D7
    dec a                                         ; $4AC3: $3D
    and $07                                       ; $4AC4: $E6 $07
    jr nz, jr_02A_4AD5                            ; $4AC6: $20 $0D

    ld a, [$D744]                                 ; $4AC8: $FA $44 $D7
    dec a                                         ; $4ACB: $3D
    srl a                                         ; $4ACC: $CB $3F
    srl a                                         ; $4ACE: $CB $3F
    srl a                                         ; $4AD0: $CB $3F
    call Call_02A_4AE8                            ; $4AD2: $CD $E8 $4A

jr_02A_4AD5:
    ld a, [$D704]                                 ; $4AD5: $FA $04 $D7
    cp $50                                        ; $4AD8: $FE $50
    jr nz, jr_02A_4AE3                            ; $4ADA: $20 $07

    ld a, [$D744]                                 ; $4ADC: $FA $44 $D7
    cp $90                                        ; $4ADF: $FE $90
    jr z, jr_02A_4AE6                             ; $4AE1: $28 $03

jr_02A_4AE3:
    scf                                           ; $4AE3: $37
    ccf                                           ; $4AE4: $3F
    ret                                           ; $4AE5: $C9


jr_02A_4AE6:
    scf                                           ; $4AE6: $37
    ret                                           ; $4AE7: $C9


Call_02A_4AE8:
    ld hl, $9800                                  ; $4AE8: $21 $00 $98
    ld b, $00                                     ; $4AEB: $06 $00
    ld c, a                                       ; $4AED: $4F
    add hl, bc                                    ; $4AEE: $09
    push hl                                       ; $4AEF: $E5
    sub $0B                                       ; $4AF0: $D6 $0B
    ld d, $00                                     ; $4AF2: $16 $00
    ld e, a                                       ; $4AF4: $5F
    push de                                       ; $4AF5: $D5
    pop hl                                        ; $4AF6: $E1
    sla e                                         ; $4AF7: $CB $23
    rl d                                          ; $4AF9: $CB $12
    sla e                                         ; $4AFB: $CB $23
    rl d                                          ; $4AFD: $CB $12
    sla e                                         ; $4AFF: $CB $23
    rl d                                          ; $4B01: $CB $12
    sla e                                         ; $4B03: $CB $23
    rl d                                          ; $4B05: $CB $12
    sla e                                         ; $4B07: $CB $23
    rl d                                          ; $4B09: $CB $12
    sla l                                         ; $4B0B: $CB $25
    rl h                                          ; $4B0D: $CB $14
    sla l                                         ; $4B0F: $CB $25
    rl h                                          ; $4B11: $CB $14
    add hl, de                                    ; $4B13: $19
    ld de, $C329                                  ; $4B14: $11 $29 $C3
    add hl, de                                    ; $4B17: $19
    push hl                                       ; $4B18: $E5
    pop de                                        ; $4B19: $D1
    pop hl                                        ; $4B1A: $E1
    ld b, $01                                     ; $4B1B: $06 $01
    ld c, $12                                     ; $4B1D: $0E $12
    call Call_000_10C0                            ; $4B1F: $CD $C0 $10
    ret                                           ; $4B22: $C9


Call_02A_4B23:
    call $4B6C                                    ; $4B23: $CD $6C $4B
    ld hl, $9C01                                  ; $4B26: $21 $01 $9C
    ld de, $4B34                                  ; $4B29: $11 $34 $4B
    ld b, $07                                     ; $4B2C: $06 $07
    ld c, $04                                     ; $4B2E: $0E $04
    call Call_000_10C0                            ; $4B30: $CD $C0 $10
    ret                                           ; $4B33: $C9


    nop                                           ; $4B34: $00
    or c                                          ; $4B35: $B1
    nop                                           ; $4B36: $00
    or d                                          ; $4B37: $B2
    nop                                           ; $4B38: $00
    or e                                          ; $4B39: $B3
    nop                                           ; $4B3A: $00
    or h                                          ; $4B3B: $B4
    nop                                           ; $4B3C: $00
    or l                                          ; $4B3D: $B5
    nop                                           ; $4B3E: $00
    or [hl]                                       ; $4B3F: $B6
    nop                                           ; $4B40: $00
    or a                                          ; $4B41: $B7
    nop                                           ; $4B42: $00
    cp b                                          ; $4B43: $B8
    nop                                           ; $4B44: $00
    cp c                                          ; $4B45: $B9
    nop                                           ; $4B46: $00
    cp d                                          ; $4B47: $BA
    nop                                           ; $4B48: $00
    cp e                                          ; $4B49: $BB
    nop                                           ; $4B4A: $00
    cp h                                          ; $4B4B: $BC
    nop                                           ; $4B4C: $00
    cp l                                          ; $4B4D: $BD
    nop                                           ; $4B4E: $00
    cp [hl]                                       ; $4B4F: $BE
    nop                                           ; $4B50: $00
    cp a                                          ; $4B51: $BF
    nop                                           ; $4B52: $00
    ret nz                                        ; $4B53: $C0

    nop                                           ; $4B54: $00
    pop bc                                        ; $4B55: $C1
    nop                                           ; $4B56: $00
    jp nz, $C300                                  ; $4B57: $C2 $00 $C3

    nop                                           ; $4B5A: $00
    call nz, $C500                                ; $4B5B: $C4 $00 $C5
    nop                                           ; $4B5E: $00
    add $00                                       ; $4B5F: $C6 $00
    rst RST_00                                    ; $4B61: $C7
    nop                                           ; $4B62: $00
    ret z                                         ; $4B63: $C8

    nop                                           ; $4B64: $00
    ret                                           ; $4B65: $C9


    nop                                           ; $4B66: $00
    jp z, $CB00                                   ; $4B67: $CA $00 $CB

    nop                                           ; $4B6A: $00
    call z, $C5FA                                 ; $4B6B: $CC $FA $C5
    jp nz, Jump_02A_47CB                          ; $4B6E: $C2 $CB $47

    jp z, Jump_02A_4B79                           ; $4B71: $CA $79 $4B

    ld a, [$D92E]                                 ; $4B74: $FA $2E $D9
    jr jr_02A_4B7C                                ; $4B77: $18 $03

Jump_02A_4B79:
    ld a, [$DA2E]                                 ; $4B79: $FA $2E $DA

jr_02A_4B7C:
    srl a                                         ; $4B7C: $CB $3F
    add $0A                                       ; $4B7E: $C6 $0A
    ld [$C288], a                                 ; $4B80: $EA $88 $C2
    ld de, $8B10                                  ; $4B83: $11 $10 $8B
    ld c, $30                                     ; $4B86: $0E $30
    ld b, $2D                                     ; $4B88: $06 $2D
    ld hl, $42F6                                  ; $4B8A: $21 $F6 $42
    rst RST_08                                    ; $4B8D: $CF
    ret                                           ; $4B8E: $C9


Call_02A_4B8F:
    ld a, [$C2C5]                                 ; $4B8F: $FA $C5 $C2
    bit 0, a                                      ; $4B92: $CB $47
    jp z, Jump_02A_4B9C                           ; $4B94: $CA $9C $4B

    ld a, [$D92E]                                 ; $4B97: $FA $2E $D9
    jr jr_02A_4B9F                                ; $4B9A: $18 $03

Jump_02A_4B9C:
    ld a, [$DA2E]                                 ; $4B9C: $FA $2E $DA

jr_02A_4B9F:
    ld hl, $9C41                                  ; $4B9F: $21 $41 $9C
    ld de, $8800                                  ; $4BA2: $11 $00 $88
    ld c, $80                                     ; $4BA5: $0E $80
    call Call_02A_4BAB                            ; $4BA7: $CD $AB $4B
    ret                                           ; $4BAA: $C9


Call_02A_4BAB:
    push af                                       ; $4BAB: $F5
    push bc                                       ; $4BAC: $C5
    push hl                                       ; $4BAD: $E5
    push de                                       ; $4BAE: $D5
    ld hl, $4C32                                  ; $4BAF: $21 $32 $4C
    ld b, $00                                     ; $4BB2: $06 $00
    ld c, a                                       ; $4BB4: $4F
    add hl, bc                                    ; $4BB5: $09
    ld c, [hl]                                    ; $4BB6: $4E
    inc hl                                        ; $4BB7: $23
    ld b, [hl]                                    ; $4BB8: $46
    push bc                                       ; $4BB9: $C5
    pop hl                                        ; $4BBA: $E1
    ld de, $C329                                  ; $4BBB: $11 $29 $C3
    call Call_000_124C                            ; $4BBE: $CD $4C $12
    ld hl, $C329                                  ; $4BC1: $21 $29 $C3
    pop de                                        ; $4BC4: $D1
    ld b, $31                                     ; $4BC5: $06 $31
    call Call_000_1188                            ; $4BC7: $CD $88 $11
    pop hl                                        ; $4BCA: $E1
    pop bc                                        ; $4BCB: $C1
    pop af                                        ; $4BCC: $F1
    push af                                       ; $4BCD: $F5
    ld hl, $4C46                                  ; $4BCE: $21 $46 $4C
    ld b, $00                                     ; $4BD1: $06 $00
    ld c, a                                       ; $4BD3: $4F
    add hl, bc                                    ; $4BD4: $09
    ld c, [hl]                                    ; $4BD5: $4E
    inc hl                                        ; $4BD6: $23
    ld b, [hl]                                    ; $4BD7: $46
    push bc                                       ; $4BD8: $C5
    pop hl                                        ; $4BD9: $E1
    ld de, $C329                                  ; $4BDA: $11 $29 $C3
    ld b, $FC                                     ; $4BDD: $06 $FC

jr_02A_4BDF:
    ld a, [hl+]                                   ; $4BDF: $2A
    ld [de], a                                    ; $4BE0: $12
    inc de                                        ; $4BE1: $13
    dec b                                         ; $4BE2: $05
    jr nz, jr_02A_4BDF                            ; $4BE3: $20 $FA

    pop af                                        ; $4BE5: $F1
    push af                                       ; $4BE6: $F5
    ld hl, $4C5A                                  ; $4BE7: $21 $5A $4C
    ld b, $00                                     ; $4BEA: $06 $00
    ld c, a                                       ; $4BEC: $4F
    add hl, bc                                    ; $4BED: $09
    ld c, [hl]                                    ; $4BEE: $4E
    inc hl                                        ; $4BEF: $23
    ld b, [hl]                                    ; $4BF0: $46
    push bc                                       ; $4BF1: $C5
    pop hl                                        ; $4BF2: $E1
    ld de, $D3A0                                  ; $4BF3: $11 $A0 $D3
    ld b, $20                                     ; $4BF6: $06 $20

jr_02A_4BF8:
    ld a, [hl+]                                   ; $4BF8: $2A
    ld [de], a                                    ; $4BF9: $12
    inc de                                        ; $4BFA: $13
    dec b                                         ; $4BFB: $05
    jr nz, jr_02A_4BF8                            ; $4BFC: $20 $FA

    pop af                                        ; $4BFE: $F1
    ld hl, $4C6E                                  ; $4BFF: $21 $6E $4C
    sla a                                         ; $4C02: $CB $27
    ld b, $00                                     ; $4C04: $06 $00
    ld c, a                                       ; $4C06: $4F
    add hl, bc                                    ; $4C07: $09
    push hl                                       ; $4C08: $E5
    ld hl, $4C24                                  ; $4C09: $21 $24 $4C
    ld de, $C290                                  ; $4C0C: $11 $90 $C2
    ld b, $0E                                     ; $4C0F: $06 $0E

jr_02A_4C11:
    ld a, [hl+]                                   ; $4C11: $2A
    ld [de], a                                    ; $4C12: $12
    inc de                                        ; $4C13: $13
    dec b                                         ; $4C14: $05
    jr nz, jr_02A_4C11                            ; $4C15: $20 $FA

    pop hl                                        ; $4C17: $E1
    ld de, $C298                                  ; $4C18: $11 $98 $C2
    ld b, $04                                     ; $4C1B: $06 $04

jr_02A_4C1D:
    ld a, [hl+]                                   ; $4C1D: $2A
    ld [de], a                                    ; $4C1E: $12
    inc de                                        ; $4C1F: $13
    dec b                                         ; $4C20: $05
    jr nz, jr_02A_4C1D                            ; $4C21: $20 $FA

    ret                                           ; $4C23: $C9


    sbc h                                         ; $4C24: $9C
    ld [hl], e                                    ; $4C25: $73
    sbc h                                         ; $4C26: $9C
    ld [de], a                                    ; $4C27: $12
    sbc h                                         ; $4C28: $9C
    stop                                          ; $4C29: $10 $00
    nop                                           ; $4C2B: $00
    jr jr_02A_4C91                                ; $4C2C: $18 $63

    adc $39                                       ; $4C2E: $CE $39
    nop                                           ; $4C30: $00
    nop                                           ; $4C31: $00
    di                                            ; $4C32: $F3
    ld c, [hl]                                    ; $4C33: $4E
    cp e                                          ; $4C34: $BB
    ld d, c                                       ; $4C35: $51
    adc c                                         ; $4C36: $89
    ld d, h                                       ; $4C37: $54
    ld a, c                                       ; $4C38: $79
    ld d, a                                       ; $4C39: $57
    inc de                                        ; $4C3A: $13
    ld e, d                                       ; $4C3B: $5A
    adc c                                         ; $4C3C: $89
    ld e, h                                       ; $4C3D: $5C
    adc a                                         ; $4C3E: $8F
    ld e, a                                       ; $4C3F: $5F
    add hl, sp                                    ; $4C40: $39
    ld h, d                                       ; $4C41: $62
    rrca                                          ; $4C42: $0F
    ld h, l                                       ; $4C43: $65
    jp hl                                         ; $4C44: $E9


    ld h, a                                       ; $4C45: $67
    cp l                                          ; $4C46: $BD
    ld l, d                                       ; $4C47: $6A
    cp c                                          ; $4C48: $B9
    ld l, e                                       ; $4C49: $6B
    or l                                          ; $4C4A: $B5
    ld l, h                                       ; $4C4B: $6C
    or c                                          ; $4C4C: $B1
    ld l, l                                       ; $4C4D: $6D
    xor l                                         ; $4C4E: $AD
    ld l, [hl]                                    ; $4C4F: $6E
    xor c                                         ; $4C50: $A9
    ld l, a                                       ; $4C51: $6F
    and l                                         ; $4C52: $A5
    ld [hl], b                                    ; $4C53: $70
    and c                                         ; $4C54: $A1
    ld [hl], c                                    ; $4C55: $71
    sbc l                                         ; $4C56: $9D
    ld [hl], d                                    ; $4C57: $72
    sbc c                                         ; $4C58: $99
    ld [hl], e                                    ; $4C59: $73
    sub l                                         ; $4C5A: $95
    ld [hl], h                                    ; $4C5B: $74
    or l                                          ; $4C5C: $B5
    ld [hl], h                                    ; $4C5D: $74
    push de                                       ; $4C5E: $D5
    ld [hl], h                                    ; $4C5F: $74
    push af                                       ; $4C60: $F5
    ld [hl], h                                    ; $4C61: $74
    dec d                                         ; $4C62: $15
    ld [hl], l                                    ; $4C63: $75
    dec [hl]                                      ; $4C64: $35
    ld [hl], l                                    ; $4C65: $75
    ld d, l                                       ; $4C66: $55
    ld [hl], l                                    ; $4C67: $75
    ld [hl], l                                    ; $4C68: $75
    ld [hl], l                                    ; $4C69: $75
    sub l                                         ; $4C6A: $95
    ld [hl], l                                    ; $4C6B: $75
    or l                                          ; $4C6C: $B5
    ld [hl], l                                    ; $4C6D: $75
    ccf                                           ; $4C6E: $3F
    rla                                           ; $4C6F: $17
    cp l                                          ; $4C70: $BD
    inc c                                         ; $4C71: $0C
    ld a, a                                       ; $4C72: $7F
    ld h, l                                       ; $4C73: $65
    ld a, e                                       ; $4C74: $7B
    inc d                                         ; $4C75: $14
    ld a, a                                       ; $4C76: $7F
    ld h, $FF                                     ; $4C77: $26 $FF
    nop                                           ; $4C79: $00
    cpl                                           ; $4C7A: $2F
    ccf                                           ; $4C7B: $3F
    db $E3                                        ; $4C7C: $E3
    dec c                                         ; $4C7D: $0D
    ld a, e                                       ; $4C7E: $7B
    rla                                           ; $4C7F: $17
    ld a, e                                       ; $4C80: $7B
    dec d                                         ; $4C81: $15
    ld a, a                                       ; $4C82: $7F
    rra                                           ; $4C83: $1F
    or a                                          ; $4C84: $B7
    dec c                                         ; $4C85: $0D
    di                                            ; $4C86: $F3
    ld l, [hl]                                    ; $4C87: $6E
    xor e                                         ; $4C88: $AB
    ld h, l                                       ; $4C89: $65
    ld a, a                                       ; $4C8A: $7F
    ld a, [hl]                                    ; $4C8B: $7E
    ld l, a                                       ; $4C8C: $6F
    ld l, l                                       ; $4C8D: $6D
    rst RST_38                                    ; $4C8E: $FF
    ld a, $3F                                     ; $4C8F: $3E $3F

jr_02A_4C91:
    dec d                                         ; $4C91: $15
    push af                                       ; $4C92: $F5
    rra                                           ; $4C93: $1F
    ld l, c                                       ; $4C94: $69
    ld c, $F0                                     ; $4C95: $0E $F0
    sbc c                                         ; $4C97: $99
    bit 7, a                                      ; $4C98: $CB $7F
    jp nz, Jump_02A_4CA6                          ; $4C9A: $C2 $A6 $4C

    ldh a, [$FFAC]                                ; $4C9D: $F0 $AC
    bit 7, a                                      ; $4C9F: $CB $7F
    jp nz, Jump_02A_4CA6                          ; $4CA1: $C2 $A6 $4C

    xor a                                         ; $4CA4: $AF
    ret                                           ; $4CA5: $C9


Jump_02A_4CA6:
    scf                                           ; $4CA6: $37
    ret                                           ; $4CA7: $C9


Call_02A_4CA8:
    ldh a, [$FF99]                                ; $4CA8: $F0 $99
    bit 6, a                                      ; $4CAA: $CB $77
    jp nz, Jump_02A_4CB8                          ; $4CAC: $C2 $B8 $4C

    ldh a, [$FFAB]                                ; $4CAF: $F0 $AB
    bit 6, a                                      ; $4CB1: $CB $77
    jp nz, Jump_02A_4CBA                          ; $4CB3: $C2 $BA $4C

    xor a                                         ; $4CB6: $AF
    ret                                           ; $4CB7: $C9


Jump_02A_4CB8:
    scf                                           ; $4CB8: $37
    ret                                           ; $4CB9: $C9


Jump_02A_4CBA:
    scf                                           ; $4CBA: $37
    ret                                           ; $4CBB: $C9


Call_02A_4CBC:
    ret                                           ; $4CBC: $C9


jr_02A_4CBD:
    call Call_02A_4CA8                            ; $4CBD: $CD $A8 $4C
    jr c, jr_02A_4CC7                             ; $4CC0: $38 $05

    call Call_000_0424                            ; $4CC2: $CD $24 $04
    jr jr_02A_4CBD                                ; $4CC5: $18 $F6

jr_02A_4CC7:
    ret                                           ; $4CC7: $C9


Call_02A_4CC8:
    push bc                                       ; $4CC8: $C5
    ld b, $00                                     ; $4CC9: $06 $00
    ld c, a                                       ; $4CCB: $4F
    sla c                                         ; $4CCC: $CB $21
    rl b                                          ; $4CCE: $CB $10
    ld hl, $4CF3                                  ; $4CD0: $21 $F3 $4C
    add hl, bc                                    ; $4CD3: $09
    ld c, [hl]                                    ; $4CD4: $4E
    inc hl                                        ; $4CD5: $23
    ld b, [hl]                                    ; $4CD6: $46
    sra b                                         ; $4CD7: $CB $28
    rr c                                          ; $4CD9: $CB $19
    sra b                                         ; $4CDB: $CB $28
    rr c                                          ; $4CDD: $CB $19
    sra b                                         ; $4CDF: $CB $28
    rr c                                          ; $4CE1: $CB $19
    sra b                                         ; $4CE3: $CB $28
    rr c                                          ; $4CE5: $CB $19
    sra b                                         ; $4CE7: $CB $28
    rr c                                          ; $4CE9: $CB $19
    sra b                                         ; $4CEB: $CB $28
    rr c                                          ; $4CED: $CB $19
    push bc                                       ; $4CEF: $C5
    pop hl                                        ; $4CF0: $E1
    pop bc                                        ; $4CF1: $C1
    ret                                           ; $4CF2: $C9


    nop                                           ; $4CF3: $00
    nop                                           ; $4CF4: $00
    sub d                                         ; $4CF5: $92
    ld bc, $0324                                  ; $4CF6: $01 $24 $03
    or l                                          ; $4CF9: $B5
    inc b                                         ; $4CFA: $04
    ld b, [hl]                                    ; $4CFB: $46

jr_02A_4CFC:
    ld b, $D6                                     ; $4CFC: $06 $D6
    rlca                                          ; $4CFE: $07
    ld h, h                                       ; $4CFF: $64
    add hl, bc                                    ; $4D00: $09
    pop af                                        ; $4D01: $F1
    ld a, [bc]                                    ; $4D02: $0A
    ld a, h                                       ; $4D03: $7C
    inc c                                         ; $4D04: $0C

jr_02A_4D05:
    ld b, $0E                                     ; $4D05: $06 $0E
    adc l                                         ; $4D07: $8D
    rrca                                          ; $4D08: $0F
    ld [de], a                                    ; $4D09: $12
    ld de, $1294                                  ; $4D0A: $11 $94 $12
    inc de                                        ; $4D0D: $13
    inc d                                         ; $4D0E: $14
    sub b                                         ; $4D0F: $90
    dec d                                         ; $4D10: $15
    add hl, bc                                    ; $4D11: $09
    rla                                           ; $4D12: $17
    ld a, [hl]                                    ; $4D13: $7E
    jr jr_02A_4D05                                ; $4D14: $18 $EF

    add hl, de                                    ; $4D16: $19
    ld e, l                                       ; $4D17: $5D
    dec de                                        ; $4D18: $1B
    add $1C                                       ; $4D19: $C6 $1C
    dec hl                                        ; $4D1B: $2B
    ld e, $8C                                     ; $4D1C: $1E $8C
    rra                                           ; $4D1E: $1F
    rst RST_20                                    ; $4D1F: $E7
    jr nz, jr_02A_4D5F                            ; $4D20: $20 $3D

    ld [hl+], a                                   ; $4D22: $22
    adc [hl]                                      ; $4D23: $8E
    inc hl                                        ; $4D24: $23
    jp c, $2024                                   ; $4D25: $DA $24 $20

    ld h, $60                                     ; $4D28: $26 $60
    daa                                           ; $4D2A: $27
    sbc d                                         ; $4D2B: $9A
    jr z, jr_02A_4CFC                             ; $4D2C: $28 $CE

    add hl, hl                                    ; $4D2E: $29
    ei                                            ; $4D2F: $FB
    ld a, [hl+]                                   ; $4D30: $2A
    ld hl, $412C                                  ; $4D31: $21 $2C $41
    dec l                                         ; $4D34: $2D
    ld e, d                                       ; $4D35: $5A
    ld l, $6C                                     ; $4D36: $2E $6C
    cpl                                           ; $4D38: $2F
    halt                                          ; $4D39: $76
    jr nc, jr_02A_4DB5                            ; $4D3A: $30 $79

    ld sp, $3274                                  ; $4D3C: $31 $74 $32
    ld l, b                                       ; $4D3F: $68
    inc sp                                        ; $4D40: $33
    ld d, e                                       ; $4D41: $53
    inc [hl]                                      ; $4D42: $34
    scf                                           ; $4D43: $37
    dec [hl]                                      ; $4D44: $35
    ld [de], a                                    ; $4D45: $12
    ld [hl], $E5                                  ; $4D46: $36 $E5
    ld [hl], $AF                                  ; $4D48: $36 $AF
    scf                                           ; $4D4A: $37
    ld [hl], c                                    ; $4D4B: $71
    jr c, jr_02A_4D79                             ; $4D4C: $38 $2B

    add hl, sp                                    ; $4D4E: $39
    db $DB                                        ; $4D4F: $DB
    add hl, sp                                    ; $4D50: $39
    add d                                         ; $4D51: $82
    ld a, [hl-]                                   ; $4D52: $3A
    ld hl, $B63B                                  ; $4D53: $21 $3B $B6

jr_02A_4D56:
    dec sp                                        ; $4D56: $3B
    ld b, d                                       ; $4D57: $42
    inc a                                         ; $4D58: $3C
    push bc                                       ; $4D59: $C5
    inc a                                         ; $4D5A: $3C
    ccf                                           ; $4D5B: $3F
    dec a                                         ; $4D5C: $3D
    xor a                                         ; $4D5D: $AF
    dec a                                         ; $4D5E: $3D

jr_02A_4D5F:
    dec d                                         ; $4D5F: $15
    ld a, $72                                     ; $4D60: $3E $72
    ld a, $C5                                     ; $4D62: $3E $C5
    ld a, $0F                                     ; $4D64: $3E $0F
    ccf                                           ; $4D66: $3F
    ld c, a                                       ; $4D67: $4F
    ccf                                           ; $4D68: $3F
    add l                                         ; $4D69: $85
    ccf                                           ; $4D6A: $3F
    or c                                          ; $4D6B: $B1
    ccf                                           ; $4D6C: $3F
    call nc, $EC3F                                ; $4D6D: $D4 $3F $EC
    ccf                                           ; $4D70: $3F
    ei                                            ; $4D71: $FB
    ccf                                           ; $4D72: $3F
    nop                                           ; $4D73: $00
    ld b, b                                       ; $4D74: $40
    ei                                            ; $4D75: $FB
    ccf                                           ; $4D76: $3F
    db $EC                                        ; $4D77: $EC
    ccf                                           ; $4D78: $3F

jr_02A_4D79:
    call nc, $B13F                                ; $4D79: $D4 $3F $B1
    ccf                                           ; $4D7C: $3F
    add l                                         ; $4D7D: $85
    ccf                                           ; $4D7E: $3F
    ld c, a                                       ; $4D7F: $4F
    ccf                                           ; $4D80: $3F
    rrca                                          ; $4D81: $0F
    ccf                                           ; $4D82: $3F
    push bc                                       ; $4D83: $C5
    ld a, $72                                     ; $4D84: $3E $72
    ld a, $15                                     ; $4D86: $3E $15
    ld a, $AF                                     ; $4D88: $3E $AF
    dec a                                         ; $4D8A: $3D
    ccf                                           ; $4D8B: $3F
    dec a                                         ; $4D8C: $3D
    push bc                                       ; $4D8D: $C5
    inc a                                         ; $4D8E: $3C
    ld b, d                                       ; $4D8F: $42
    inc a                                         ; $4D90: $3C
    or [hl]                                       ; $4D91: $B6
    dec sp                                        ; $4D92: $3B
    ld hl, $823B                                  ; $4D93: $21 $3B $82
    ld a, [hl-]                                   ; $4D96: $3A
    db $DB                                        ; $4D97: $DB
    add hl, sp                                    ; $4D98: $39
    dec hl                                        ; $4D99: $2B
    add hl, sp                                    ; $4D9A: $39
    ld [hl], c                                    ; $4D9B: $71
    jr c, @-$4F                                   ; $4D9C: $38 $AF

    scf                                           ; $4D9E: $37
    push hl                                       ; $4D9F: $E5
    ld [hl], $12                                  ; $4DA0: $36 $12
    ld [hl], $37                                  ; $4DA2: $36 $37
    dec [hl]                                      ; $4DA4: $35
    ld d, e                                       ; $4DA5: $53
    inc [hl]                                      ; $4DA6: $34
    ld l, b                                       ; $4DA7: $68
    inc sp                                        ; $4DA8: $33
    ld [hl], h                                    ; $4DA9: $74
    ld [hl-], a                                   ; $4DAA: $32
    ld a, c                                       ; $4DAB: $79
    ld sp, $3076                                  ; $4DAC: $31 $76 $30
    ld l, h                                       ; $4DAF: $6C
    cpl                                           ; $4DB0: $2F
    ld e, d                                       ; $4DB1: $5A
    ld l, $41                                     ; $4DB2: $2E $41
    dec l                                         ; $4DB4: $2D

jr_02A_4DB5:
    ld hl, $FB2C                                  ; $4DB5: $21 $2C $FB
    ld a, [hl+]                                   ; $4DB8: $2A
    adc $29                                       ; $4DB9: $CE $29
    sbc d                                         ; $4DBB: $9A
    jr z, jr_02A_4E1E                             ; $4DBC: $28 $60

    daa                                           ; $4DBE: $27
    jr nz, jr_02A_4DE7                            ; $4DBF: $20 $26

    jp c, $8E24                                   ; $4DC1: $DA $24 $8E

    inc hl                                        ; $4DC4: $23
    dec a                                         ; $4DC5: $3D
    ld [hl+], a                                   ; $4DC6: $22
    rst RST_20                                    ; $4DC7: $E7
    jr nz, jr_02A_4D56                            ; $4DC8: $20 $8C

    rra                                           ; $4DCA: $1F
    dec hl                                        ; $4DCB: $2B
    ld e, $C6                                     ; $4DCC: $1E $C6
    inc e                                         ; $4DCE: $1C
    ld e, l                                       ; $4DCF: $5D
    dec de                                        ; $4DD0: $1B
    rst RST_28                                    ; $4DD1: $EF
    add hl, de                                    ; $4DD2: $19
    ld a, [hl]                                    ; $4DD3: $7E
    jr @+$0B                                      ; $4DD4: $18 $09

    rla                                           ; $4DD6: $17
    sub b                                         ; $4DD7: $90
    dec d                                         ; $4DD8: $15
    inc de                                        ; $4DD9: $13
    inc d                                         ; $4DDA: $14
    sub h                                         ; $4DDB: $94
    ld [de], a                                    ; $4DDC: $12
    ld [de], a                                    ; $4DDD: $12
    ld de, $0F8D                                  ; $4DDE: $11 $8D $0F
    ld b, $0E                                     ; $4DE1: $06 $0E
    ld a, h                                       ; $4DE3: $7C
    inc c                                         ; $4DE4: $0C
    pop af                                        ; $4DE5: $F1
    ld a, [bc]                                    ; $4DE6: $0A

jr_02A_4DE7:
    ld h, h                                       ; $4DE7: $64
    add hl, bc                                    ; $4DE8: $09
    sub $07                                       ; $4DE9: $D6 $07
    ld b, [hl]                                    ; $4DEB: $46
    ld b, $B5                                     ; $4DEC: $06 $B5
    inc b                                         ; $4DEE: $04
    inc h                                         ; $4DEF: $24
    inc bc                                        ; $4DF0: $03
    sub d                                         ; $4DF1: $92
    ld bc, $0000                                  ; $4DF2: $01 $00 $00
    ld l, [hl]                                    ; $4DF5: $6E
    cp $DC                                        ; $4DF6: $FE $DC
    db $FC                                        ; $4DF8: $FC
    ld c, e                                       ; $4DF9: $4B
    ei                                            ; $4DFA: $FB
    cp d                                          ; $4DFB: $BA
    ld sp, hl                                     ; $4DFC: $F9
    ld a, [hl+]                                   ; $4DFD: $2A
    ld hl, sp-$64                                 ; $4DFE: $F8 $9C
    or $0F                                        ; $4E00: $F6 $0F
    push af                                       ; $4E02: $F5
    add h                                         ; $4E03: $84
    di                                            ; $4E04: $F3
    ld a, [$73F1]                                 ; $4E05: $FA $F1 $73
    ldh a, [$FFEE]                                ; $4E08: $F0 $EE
    xor $6C                                       ; $4E0A: $EE $6C
    db $ED                                        ; $4E0C: $ED
    db $ED                                        ; $4E0D: $ED
    db $EB                                        ; $4E0E: $EB
    ld [hl], b                                    ; $4E0F: $70
    ld [$E8F8], a                                 ; $4E10: $EA $F8 $E8
    add d                                         ; $4E13: $82
    rst RST_20                                    ; $4E14: $E7
    ld de, $A3E6                                  ; $4E15: $11 $E6 $A3
    db $E4                                        ; $4E18: $E4
    ld a, [hl-]                                   ; $4E19: $3A
    db $E3                                        ; $4E1A: $E3
    push de                                       ; $4E1B: $D5
    pop hl                                        ; $4E1C: $E1
    ld [hl], h                                    ; $4E1D: $74

jr_02A_4E1E:
    ldh [rNR24], a                                ; $4E1E: $E0 $19
    rst RST_18                                    ; $4E20: $DF
    jp Jump_02A_72DD                              ; $4E21: $C3 $DD $72


    call c, $DB26                                 ; $4E24: $DC $26 $DB
    ldh [$FFD9], a                                ; $4E27: $E0 $D9
    and b                                         ; $4E29: $A0
    ret c                                         ; $4E2A: $D8

    ld h, [hl]                                    ; $4E2B: $66
    rst RST_10                                    ; $4E2C: $D7
    ld [hl-], a                                   ; $4E2D: $32
    sub $05                                       ; $4E2E: $D6 $05
    push de                                       ; $4E30: $D5
    rst RST_18                                    ; $4E31: $DF
    db $D3                                        ; $4E32: $D3
    cp a                                          ; $4E33: $BF
    jp nc, $D1A6                                  ; $4E34: $D2 $A6 $D1

    sub h                                         ; $4E37: $94
    ret nc                                        ; $4E38: $D0

    adc d                                         ; $4E39: $8A
    rst RST_08                                    ; $4E3A: $CF
    add a                                         ; $4E3B: $87
    adc $8C                                       ; $4E3C: $CE $8C
    call $CC98                                    ; $4E3E: $CD $98 $CC
    xor l                                         ; $4E41: $AD
    set 1, c                                      ; $4E42: $CB $C9
    jp z, $C9EE                                   ; $4E44: $CA $EE $C9

    dec de                                        ; $4E47: $1B
    ret                                           ; $4E48: $C9


    ld d, c                                       ; $4E49: $51
    ret z                                         ; $4E4A: $C8

    adc a                                         ; $4E4B: $8F
    rst RST_00                                    ; $4E4C: $C7
    push de                                       ; $4E4D: $D5
    add $25                                       ; $4E4E: $C6 $25
    add $7E                                       ; $4E50: $C6 $7E
    push bc                                       ; $4E52: $C5
    rst RST_18                                    ; $4E53: $DF
    call nz, $C44A                                ; $4E54: $C4 $4A $C4
    cp [hl]                                       ; $4E57: $BE
    jp $C33B                                      ; $4E58: $C3 $3B $C3


    jp nz, Jump_02A_52C2                          ; $4E5B: $C2 $C2 $52

    jp nz, $C1EB                                  ; $4E5E: $C2 $EB $C1

    adc [hl]                                      ; $4E61: $8E
    pop bc                                        ; $4E62: $C1
    dec sp                                        ; $4E63: $3B
    pop bc                                        ; $4E64: $C1
    pop af                                        ; $4E65: $F1
    ret nz                                        ; $4E66: $C0

    or c                                          ; $4E67: $B1
    ret nz                                        ; $4E68: $C0

    ld a, e                                       ; $4E69: $7B
    ret nz                                        ; $4E6A: $C0

    ld c, a                                       ; $4E6B: $4F
    ret nz                                        ; $4E6C: $C0

    inc l                                         ; $4E6D: $2C
    ret nz                                        ; $4E6E: $C0

    inc d                                         ; $4E6F: $14
    ret nz                                        ; $4E70: $C0

    dec b                                         ; $4E71: $05
    ret nz                                        ; $4E72: $C0

    nop                                           ; $4E73: $00
    ret nz                                        ; $4E74: $C0

    dec b                                         ; $4E75: $05
    ret nz                                        ; $4E76: $C0

    inc d                                         ; $4E77: $14
    ret nz                                        ; $4E78: $C0

    inc l                                         ; $4E79: $2C
    ret nz                                        ; $4E7A: $C0

    ld c, a                                       ; $4E7B: $4F
    ret nz                                        ; $4E7C: $C0

    ld a, e                                       ; $4E7D: $7B
    ret nz                                        ; $4E7E: $C0

    or c                                          ; $4E7F: $B1
    ret nz                                        ; $4E80: $C0

    pop af                                        ; $4E81: $F1
    ret nz                                        ; $4E82: $C0

    dec sp                                        ; $4E83: $3B
    pop bc                                        ; $4E84: $C1
    adc [hl]                                      ; $4E85: $8E
    pop bc                                        ; $4E86: $C1
    db $EB                                        ; $4E87: $EB
    pop bc                                        ; $4E88: $C1
    ld d, d                                       ; $4E89: $52
    jp nz, $C2C2                                  ; $4E8A: $C2 $C2 $C2

    dec sp                                        ; $4E8D: $3B
    jp $C3BE                                      ; $4E8E: $C3 $BE $C3


    ld c, d                                       ; $4E91: $4A

jr_02A_4E92:
    call nz, $C4DF                                ; $4E92: $C4 $DF $C4
    ld a, [hl]                                    ; $4E95: $7E
    push bc                                       ; $4E96: $C5
    dec h                                         ; $4E97: $25
    add $D5                                       ; $4E98: $C6 $D5
    add $8F                                       ; $4E9A: $C6 $8F
    rst RST_00                                    ; $4E9C: $C7
    ld d, c                                       ; $4E9D: $51
    ret z                                         ; $4E9E: $C8

    dec de                                        ; $4E9F: $1B
    ret                                           ; $4EA0: $C9


    xor $C9                                       ; $4EA1: $EE $C9
    ret                                           ; $4EA3: $C9


    jp z, $CBAD                                   ; $4EA4: $CA $AD $CB

    sbc b                                         ; $4EA7: $98
    call z, $CD8C                                 ; $4EA8: $CC $8C $CD
    add a                                         ; $4EAB: $87
    adc $8A                                       ; $4EAC: $CE $8A
    rst RST_08                                    ; $4EAE: $CF
    sub h                                         ; $4EAF: $94
    ret nc                                        ; $4EB0: $D0

    and [hl]                                      ; $4EB1: $A6
    pop de                                        ; $4EB2: $D1
    cp a                                          ; $4EB3: $BF
    jp nc, $D3DF                                  ; $4EB4: $D2 $DF $D3

    dec b                                         ; $4EB7: $05
    push de                                       ; $4EB8: $D5
    ld [hl-], a                                   ; $4EB9: $32
    sub $66                                       ; $4EBA: $D6 $66
    rst RST_10                                    ; $4EBC: $D7
    and b                                         ; $4EBD: $A0
    ret c                                         ; $4EBE: $D8

    ldh [$FFD9], a                                ; $4EBF: $E0 $D9
    ld h, $DB                                     ; $4EC1: $26 $DB
    ld [hl], d                                    ; $4EC3: $72
    call c, $DDC3                                 ; $4EC4: $DC $C3 $DD
    add hl, de                                    ; $4EC7: $19
    rst RST_18                                    ; $4EC8: $DF
    ld [hl], h                                    ; $4EC9: $74
    ldh [$FFD5], a                                ; $4ECA: $E0 $D5
    pop hl                                        ; $4ECC: $E1
    ld a, [hl-]                                   ; $4ECD: $3A
    db $E3                                        ; $4ECE: $E3
    and e                                         ; $4ECF: $A3
    db $E4                                        ; $4ED0: $E4
    ld de, $82E6                                  ; $4ED1: $11 $E6 $82
    rst RST_20                                    ; $4ED4: $E7
    ld hl, sp-$18                                 ; $4ED5: $F8 $E8
    ld [hl], b                                    ; $4ED7: $70
    ld [$EBED], a                                 ; $4ED8: $EA $ED $EB
    ld l, h                                       ; $4EDB: $6C
    db $ED                                        ; $4EDC: $ED
    xor $EE                                       ; $4EDD: $EE $EE
    ld [hl], e                                    ; $4EDF: $73
    ldh a, [$FFFA]                                ; $4EE0: $F0 $FA
    pop af                                        ; $4EE2: $F1
    add h                                         ; $4EE3: $84
    di                                            ; $4EE4: $F3
    rrca                                          ; $4EE5: $0F
    push af                                       ; $4EE6: $F5
    sbc h                                         ; $4EE7: $9C
    or $2A                                        ; $4EE8: $F6 $2A
    ld hl, sp-$46                                 ; $4EEA: $F8 $BA
    ld sp, hl                                     ; $4EEC: $F9
    ld c, e                                       ; $4EED: $4B
    ei                                            ; $4EEE: $FB
    call c, Call_02A_6EFC                         ; $4EEF: $DC $FC $6E
    cp $4E                                        ; $4EF2: $FE $4E
    nop                                           ; $4EF4: $00
    ld e, d                                       ; $4EF5: $5A
    nop                                           ; $4EF6: $00
    nop                                           ; $4EF7: $00
    ld a, a                                       ; $4EF8: $7F
    inc c                                         ; $4EF9: $0C
    pop af                                        ; $4EFA: $F1
    rst RST_38                                    ; $4EFB: $FF
    inc b                                         ; $4EFC: $04
    rst RST_08                                    ; $4EFD: $CF
    xor c                                         ; $4EFE: $A9
    nop                                           ; $4EFF: $00
    or a                                          ; $4F00: $B7
    nop                                           ; $4F01: $00
    cp d                                          ; $4F02: $BA
    nop                                           ; $4F03: $00
    ld [hl], c                                    ; $4F04: $71
    ld a, b                                       ; $4F05: $78
    push af                                       ; $4F06: $F5
    ld b, b                                       ; $4F07: $40
    ld hl, sp+$00                                 ; $4F08: $F8 $00
    pop af                                        ; $4F0A: $F1
    or $E6                                        ; $4F0B: $F6 $E6
    rst RST_28                                    ; $4F0D: $EF
    ld c, a                                       ; $4F0E: $4F
    ld e, a                                       ; $4F0F: $5F
    jr z, jr_02A_4E92                             ; $4F10: $28 $80

    rra                                           ; $4F12: $1F
    push af                                       ; $4F13: $F5
    rlca                                          ; $4F14: $07
    nop                                           ; $4F15: $00
    ld sp, hl                                     ; $4F16: $F9
    ld bc, $85FE                                  ; $4F17: $01 $FE $85
    sub b                                         ; $4F1A: $90
    ccf                                           ; $4F1B: $3F
    ret nz                                        ; $4F1C: $C0

    rst RST_18                                    ; $4F1D: $DF
    ldh [$FFF1], a                                ; $4F1E: $E0 $F1
    db $FC                                        ; $4F20: $FC
    ld [bc], a                                    ; $4F21: $02
    ld [hl], l                                    ; $4F22: $75
    inc c                                         ; $4F23: $0C
    nop                                           ; $4F24: $00
    ld [hl], c                                    ; $4F25: $71
    ld bc, $1082                                  ; $4F26: $01 $82 $10
    jp Jump_02A_5552                              ; $4F29: $C3 $52 $55


    ccf                                           ; $4F2C: $3F
    nop                                           ; $4F2D: $00
    ld e, a                                       ; $4F2E: $5F
    nop                                           ; $4F2F: $00
    ld e, h                                       ; $4F30: $5C

jr_02A_4F31:
    nop                                           ; $4F31: $00
    ld d, e                                       ; $4F32: $53
    nop                                           ; $4F33: $00
    ld a, d                                       ; $4F34: $7A
    ld c, a                                       ; $4F35: $4F
    nop                                           ; $4F36: $00
    ld [hl], c                                    ; $4F37: $71
    ld bc, $FEF1                                  ; $4F38: $01 $F1 $FE
    ld [bc], a                                    ; $4F3B: $02
    ld e, $AD                                     ; $4F3C: $1E $AD
    nop                                           ; $4F3E: $00
    ldh [c], a                                    ; $4F3F: $E2
    nop                                           ; $4F40: $00
    db $FC                                        ; $4F41: $FC
    nop                                           ; $4F42: $00
    sub e                                         ; $4F43: $93
    ld a, a                                       ; $4F44: $7F
    ld c, $10                                     ; $4F45: $0E $10
    inc sp                                        ; $4F47: $33
    ld a, b                                       ; $4F48: $78
    ld b, e                                       ; $4F49: $43
    db $10                                        ; $4F4A: $10
    ld h, c                                       ; $4F4B: $61
    ld a, d                                       ; $4F4C: $7A
    ld h, d                                       ; $4F4D: $62
    ld a, e                                       ; $4F4E: $7B
    ld c, b                                       ; $4F4F: $48
    ld [hl], e                                    ; $4F50: $73
    ld [de], a                                    ; $4F51: $12

jr_02A_4F52:
    or e                                          ; $4F52: $B3
    cp e                                          ; $4F53: $BB
    ld bc, $00C0                                  ; $4F54: $01 $C0 $00
    rst RST_20                                    ; $4F57: $E7
    add c                                         ; $4F58: $81
    db $10                                        ; $4F59: $10
    pop de                                        ; $4F5A: $D1
    ld h, $B2                                     ; $4F5B: $26 $B2
    ld b, a                                       ; $4F5D: $47
    ld a, c                                       ; $4F5E: $79
    add e                                         ; $4F5F: $83
    ld de, $7840                                  ; $4F60: $11 $40 $78
    ld [de], a                                    ; $4F63: $12
    cpl                                           ; $4F64: $2F
    ldh a, [rNR22]                                ; $4F65: $F0 $17
    jr c, jr_02A_4F31                             ; $4F67: $38 $C8

    rra                                           ; $4F69: $1F
    add hl, bc                                    ; $4F6A: $09
    jp nz, $621C                                  ; $4F6B: $C2 $1C $62

    adc h                                         ; $4F6E: $8C
    ld de, $CC22                                  ; $4F6F: $11 $22 $CC
    db $10                                        ; $4F72: $10
    add hl, bc                                    ; $4F73: $09
    ret nz                                        ; $4F74: $C0

    db $E3                                        ; $4F75: $E3
    nop                                           ; $4F76: $00
    di                                            ; $4F77: $F3
    db $10                                        ; $4F78: $10
    inc de                                        ; $4F79: $13
    ldh [rNR10], a                                ; $4F7A: $E0 $10
    or l                                          ; $4F7C: $B5
    jr nc, jr_02A_4F52                            ; $4F7D: $30 $D3

    sub b                                         ; $4F7F: $90
    inc sp                                        ; $4F80: $33
    ld de, $6F30                                  ; $4F81: $11 $30 $6F
    ld b, $2A                                     ; $4F84: $06 $2A
    xor a                                         ; $4F86: $AF
    cpl                                           ; $4F87: $2F
    ld de, $128F                                  ; $4F88: $11 $8F $12
    cp $0A                                        ; $4F8B: $FE $0A
    db $FC                                        ; $4F8D: $FC
    xor d                                         ; $4F8E: $AA
    db $10                                        ; $4F8F: $10
    ld hl, sp+$10                                 ; $4F90: $F8 $10
    ld b, e                                       ; $4F92: $43
    nop                                           ; $4F93: $00
    inc a                                         ; $4F94: $3C
    nop                                           ; $4F95: $00
    ld h, b                                       ; $4F96: $60
    ld bc, $407F                                  ; $4F97: $01 $7F $40
    ld a, h                                       ; $4F9A: $7C
    inc bc                                        ; $4F9B: $03
    ld [hl], e                                    ; $4F9C: $73
    rrca                                          ; $4F9D: $0F
    ld c, a                                       ; $4F9E: $4F
    add b                                         ; $4F9F: $80
    ld d, l                                       ; $4FA0: $55
    ccf                                           ; $4FA1: $3F
    sub c                                         ; $4FA2: $91
    cp e                                          ; $4FA3: $BB
    nop                                           ; $4FA4: $00
    cp l                                          ; $4FA5: $BD
    nop                                           ; $4FA6: $00
    dec a                                         ; $4FA7: $3D
    nop                                           ; $4FA8: $00
    ld d, h                                       ; $4FA9: $54
    dec c                                         ; $4FAA: $0D
    nop                                           ; $4FAB: $00
    pop af                                        ; $4FAC: $F1
    nop                                           ; $4FAD: $00
    db $FD                                        ; $4FAE: $FD
    nop                                           ; $4FAF: $00
    ld [bc], a                                    ; $4FB0: $02
    cp $02                                        ; $4FB1: $FE $02
    nop                                           ; $4FB3: $00
    rst RST_38                                    ; $4FB4: $FF
    ld a, h                                       ; $4FB5: $7C
    add c                                         ; $4FB6: $81
    cp h                                          ; $4FB7: $BC
    pop bc                                        ; $4FB8: $C1
    db $10                                        ; $4FB9: $10
    ret nz                                        ; $4FBA: $C0

    inc c                                         ; $4FBB: $0C
    cp b                                          ; $4FBC: $B8
    jp nz, $C6B0                                  ; $4FBD: $C2 $B0 $C6

    ld [de], a                                    ; $4FC0: $12
    ld [hl], b                                    ; $4FC1: $70
    ld [$4003], sp                                ; $4FC2: $08 $03 $40
    ld a, [hl+]                                   ; $4FC5: $2A
    jr nc, @+$44                                  ; $4FC6: $30 $42

    sbc b                                         ; $4FC8: $98
    ld [bc], a                                    ; $4FC9: $02
    jr @+$15                                      ; $4FCA: $18 $13

    ld hl, sp+$42                                 ; $4FCC: $F8 $42
    ld [hl], h                                    ; $4FCE: $74
    db $10                                        ; $4FCF: $10
    dec sp                                        ; $4FD0: $3B
    db $FC                                        ; $4FD1: $FC
    ld bc, $103E                                  ; $4FD2: $01 $3E $10
    ld b, $45                                     ; $4FD5: $06 $45
    jp nc, Jump_000_17F0                          ; $4FD7: $D2 $F0 $17

    nop                                           ; $4FDA: $00
    rst RST_10                                    ; $4FDB: $D7
    jr nc, jr_02A_500C                            ; $4FDC: $30 $2E

    jr nc, jr_02A_5031                            ; $4FDE: $30 $51

    db $DD                                        ; $4FE0: $DD
    db $10                                        ; $4FE1: $10
    add hl, sp                                    ; $4FE2: $39
    db $10                                        ; $4FE3: $10
    db $F4                                        ; $4FE4: $F4
    inc b                                         ; $4FE5: $04
    push hl                                       ; $4FE6: $E5
    db $10                                        ; $4FE7: $10
    inc bc                                        ; $4FE8: $03
    adc a                                         ; $4FE9: $8F
    cpl                                           ; $4FEA: $2F
    rrca                                          ; $4FEB: $0F
    ld l, a                                       ; $4FEC: $6F
    rra                                           ; $4FED: $1F
    ld e, a                                       ; $4FEE: $5F
    ld de, $4A50                                  ; $4FEF: $11 $50 $4A
    ccf                                           ; $4FF2: $3F
    and b                                         ; $4FF3: $A0
    ld a, a                                       ; $4FF4: $7F
    ld [bc], a                                    ; $4FF5: $02
    db $10                                        ; $4FF6: $10
    add l                                         ; $4FF7: $85
    ld d, b                                       ; $4FF8: $50
    db $E4                                        ; $4FF9: $E4
    ld a, [hl+]                                   ; $4FFA: $2A
    cp $D8                                        ; $4FFB: $FE $D8
    db $10                                        ; $4FFD: $10
    ldh [rNR10], a                                ; $4FFE: $E0 $10
    sub b                                         ; $5000: $90
    db $10                                        ; $5001: $10
    ld h, b                                       ; $5002: $60
    ld [bc], a                                    ; $5003: $02
    db $FC                                        ; $5004: $FC
    add b                                         ; $5005: $80
    ldh a, [rTMA]                                 ; $5006: $F0 $06
    ret nz                                        ; $5008: $C0

    ld c, $40                                     ; $5009: $0E $40
    ld b, b                                       ; $500B: $40

jr_02A_500C:
    nop                                           ; $500C: $00
    ld a, [hl]                                    ; $500D: $7E
    ld bc, $0779                                  ; $500E: $01 $79 $07
    ld h, a                                       ; $5011: $67
    rra                                           ; $5012: $1F
    ld e, a                                       ; $5013: $5F
    ld a, $22                                     ; $5014: $3E $22
    ccf                                           ; $5016: $3F
    jr c, jr_02A_5029                             ; $5017: $38 $10

    ld [hl], b                                    ; $5019: $70
    ld a, a                                       ; $501A: $7F
    ld h, b                                       ; $501B: $60
    stop                                          ; $501C: $10 $00
    xor e                                         ; $501E: $AB
    ldh [$FFFE], a                                ; $501F: $E0 $FE
    nop                                           ; $5021: $00
    rst RST_38                                    ; $5022: $FF
    nop                                           ; $5023: $00
    pop bc                                        ; $5024: $C1
    db $10                                        ; $5025: $10
    ld [hl], b                                    ; $5026: $70
    add c                                         ; $5027: $81
    dec d                                         ; $5028: $15

jr_02A_5029:
    ldh a, [$FF3B]                                ; $5029: $F0 $3B
    add e                                         ; $502B: $83
    dec de                                        ; $502C: $1B
    ld b, e                                       ; $502D: $43
    add c                                         ; $502E: $81
    nop                                           ; $502F: $00
    inc b                                         ; $5030: $04

jr_02A_5031:
    sbc $C0                                       ; $5031: $DE $C0
    ld l, a                                       ; $5033: $6F
    ldh [rNR22], a                                ; $5034: $E0 $17
    or b                                          ; $5036: $B0
    dec bc                                        ; $5037: $0B
    ld hl, sp-$7B                                 ; $5038: $F8 $85
    ldh a, [$FF7C]                                ; $503A: $F0 $7C
    jr nz, jr_02A_5066                            ; $503C: $20 $28

    ld l, h                                       ; $503E: $6C
    nop                                           ; $503F: $00
    sbc [hl]                                      ; $5040: $9E
    nop                                           ; $5041: $00
    ld d, b                                       ; $5042: $50
    ld sp, hl                                     ; $5043: $F9
    nop                                           ; $5044: $00
    inc bc                                        ; $5045: $03
    nop                                           ; $5046: $00
    sub a                                         ; $5047: $97
    scf                                           ; $5048: $37
    rst RST_10                                    ; $5049: $D7
    rla                                           ; $504A: $17
    ld bc, $1BDB                                  ; $504B: $01 $DB $1B
    dec d                                         ; $504E: $15
    inc d                                         ; $504F: $14
    dec c                                         ; $5050: $0D
    ld c, h                                       ; $5051: $4C
    ld [$2C00], sp                                ; $5052: $08 $00 $2C
    add c                                         ; $5055: $81
    or b                                          ; $5056: $B0
    db $10                                        ; $5057: $10
    cp b                                          ; $5058: $B8
    inc d                                         ; $5059: $14
    ld [hl], b                                    ; $505A: $70
    jp nz, Jump_000_061F                          ; $505B: $C2 $1F $06

    add h                                         ; $505E: $84
    rrca                                          ; $505F: $0F
    ld h, b                                       ; $5060: $60
    ld c, $A0                                     ; $5061: $0E $A0
    db $10                                        ; $5063: $10
    ld [hl-], a                                   ; $5064: $32
    inc b                                         ; $5065: $04

jr_02A_5066:
    dec d                                         ; $5066: $15
    ld b, b                                       ; $5067: $40
    nop                                           ; $5068: $00
    add b                                         ; $5069: $80
    db $10                                        ; $506A: $10
    ld e, $10                                     ; $506B: $1E $10
    jr c, jr_02A_507F                             ; $506D: $38 $10

    sub c                                         ; $506F: $91
    or b                                          ; $5070: $B0
    ld b, $4C                                     ; $5071: $06 $4C
    ld h, b                                       ; $5073: $60
    add [hl]                                      ; $5074: $86
    ld a, $A2                                     ; $5075: $3E $A2
    jr nc, jr_02A_507B                            ; $5077: $30 $02

    ld [hl], b                                    ; $5079: $70
    inc c                                         ; $507A: $0C

jr_02A_507B:
    ld [hl], d                                    ; $507B: $72
    ld [bc], a                                    ; $507C: $02
    ld b, b                                       ; $507D: $40
    ld a, a                                       ; $507E: $7F

jr_02A_507F:
    ld de, $0000                                  ; $507F: $11 $00 $00
    ld a, h                                       ; $5082: $7C
    inc bc                                        ; $5083: $03
    ld a, e                                       ; $5084: $7B
    rlca                                          ; $5085: $07
    ld [hl], a                                    ; $5086: $77
    rrca                                          ; $5087: $0F
    ld l, a                                       ; $5088: $6F
    inc e                                         ; $5089: $1C
    ld [hl-], a                                   ; $508A: $32
    ld e, a                                       ; $508B: $5F
    jr jr_02A_509E                                ; $508C: $18 $10

    ld d, b                                       ; $508E: $50
    rst RST_08                                    ; $508F: $CF
    ccf                                           ; $5090: $3F
    nop                                           ; $5091: $00
    rst RST_38                                    ; $5092: $FF
    xor b                                         ; $5093: $A8
    nop                                           ; $5094: $00
    ld hl, sp+$10                                 ; $5095: $F8 $10
    ret nz                                        ; $5097: $C0

    stop                                          ; $5098: $10 $00
    di                                            ; $509A: $F3
    inc b                                         ; $509B: $04
    ld h, $84                                     ; $509C: $26 $84

jr_02A_509E:
    ld c, b                                       ; $509E: $48
    nop                                           ; $509F: $00
    add b                                         ; $50A0: $80

jr_02A_50A1:
    adc [hl]                                      ; $50A1: $8E
    sub b                                         ; $50A2: $90

jr_02A_50A3:
    nop                                           ; $50A3: $00
    ldh a, [$FF80]                                ; $50A4: $F0 $80
    nop                                           ; $50A6: $00
    jr c, jr_02A_50A1                             ; $50A7: $38 $F8

    inc c                                         ; $50A9: $0C
    db $FC                                        ; $50AA: $FC
    inc bc                                        ; $50AB: $03
    rst RST_38                                    ; $50AC: $FF
    nop                                           ; $50AD: $00
    jp nz, $5010                                  ; $50AE: $C2 $10 $50

    dec a                                         ; $50B1: $3D
    ld e, e                                       ; $50B2: $5B
    dec de                                        ; $50B3: $1B
    db $DB                                        ; $50B4: $DB
    db $10                                        ; $50B5: $10
    ld c, l                                       ; $50B6: $4D
    ld e, $0D                                     ; $50B7: $1E $0D
    push bc                                       ; $50B9: $C5
    dec b                                         ; $50BA: $05
    or b                                          ; $50BB: $B0
    ld bc, $10C0                                  ; $50BC: $01 $C0 $10
    ld hl, sp-$78                                 ; $50BF: $F8 $88
    db $10                                        ; $50C1: $10
    ldh [$FF80], a                                ; $50C2: $E0 $80
    or b                                          ; $50C4: $B0
    db $10                                        ; $50C5: $10
    and b                                         ; $50C6: $A0
    ld bc, $0163                                  ; $50C7: $01 $63 $01
    inc bc                                        ; $50CA: $03
    ld b, a                                       ; $50CB: $47
    rlca                                          ; $50CC: $07
    rra                                           ; $50CD: $1F
    ld e, $FE                                     ; $50CE: $1E $FE
    ld sp, hl                                     ; $50D0: $F9
    ldh a, [rNR10]                                ; $50D1: $F0 $10
    ld a, [bc]                                    ; $50D3: $0A
    ld [$0060], sp                                ; $50D4: $08 $60 $00
    ld [$DAE0], a                                 ; $50D7: $EA $E0 $DA
    ret nz                                        ; $50DA: $C0

    nop                                           ; $50DB: $00
    or [hl]                                       ; $50DC: $B6
    add b                                         ; $50DD: $80
    ld l, h                                       ; $50DE: $6C
    nop                                           ; $50DF: $00
    jp nz, $8418                                  ; $50E0: $C2 $18 $84

    jr nc, @+$27                                  ; $50E3: $30 $25

    ld c, d                                       ; $50E5: $4A
    ld h, d                                       ; $50E6: $62
    ldh [rTMA], a                                 ; $50E7: $E0 $06
    ld l, $90                                     ; $50E9: $2E $90
    adc b                                         ; $50EB: $88
    ret nc                                        ; $50EC: $D0

    ld b, b                                       ; $50ED: $40
    ret z                                         ; $50EE: $C8

    ret nz                                        ; $50EF: $C0

    ldh [c], a                                    ; $50F0: $E2
    db $E4                                        ; $50F1: $E4
    db $F4                                        ; $50F2: $F4
    ldh a, [$FFFA]                                ; $50F3: $F0 $FA
    ld hl, sp-$80                                 ; $50F5: $F8 $80
    ld bc, $3E30                                  ; $50F7: $01 $30 $3E
    ld h, c                                       ; $50FA: $61
    ld a, l                                       ; $50FB: $7D
    ld h, b                                       ; $50FC: $60
    ld a, b                                       ; $50FD: $78
    ld b, b                                       ; $50FE: $40
    add b                                         ; $50FF: $80
    db $10                                        ; $5100: $10
    ld b, c                                       ; $5101: $41
    ld [hl], b                                    ; $5102: $70
    dec bc                                        ; $5103: $0B
    ld l, b                                       ; $5104: $68
    dec de                                        ; $5105: $1B
    ld e, b                                       ; $5106: $58
    add hl, sp                                    ; $5107: $39
    ld a, [hl+]                                   ; $5108: $2A
    jr c, jr_02A_50A3                             ; $5109: $38 $98

    nop                                           ; $510B: $00
    stop                                          ; $510C: $10 $00
    ld sp, $4302                                  ; $510E: $31 $02 $43
    jr nz, jr_02A_5116                            ; $5111: $20 $03

    ld h, e                                       ; $5113: $63
    db $10                                        ; $5114: $10
    or b                                          ; $5115: $B0

jr_02A_5116:
    nop                                           ; $5116: $00
    ld c, [hl]                                    ; $5117: $4E
    add b                                         ; $5118: $80
    ld b, [hl]                                    ; $5119: $46
    db $10                                        ; $511A: $10
    ld e, [hl]                                    ; $511B: $5E
    add e                                         ; $511C: $83
    adc a                                         ; $511D: $8F
    ld b, b                                       ; $511E: $40
    add a                                         ; $511F: $87
    ld [$1009], sp                                ; $5120: $08 $09 $10
    xor d                                         ; $5123: $AA
    nop                                           ; $5124: $00
    jr nc, jr_02A_5127                            ; $5125: $30 $00

jr_02A_5127:
    ld h, c                                       ; $5127: $61
    nop                                           ; $5128: $00
    ld h, d                                       ; $5129: $62
    nop                                           ; $512A: $00
    nop                                           ; $512B: $00
    dec de                                        ; $512C: $1B
    inc bc                                        ; $512D: $03
    ld hl, sp-$02                                 ; $512E: $F8 $FE
    jr nc, @+$13                                  ; $5130: $30 $11

    db $FC                                        ; $5132: $FC
    db $10                                        ; $5133: $10
    ld h, b                                       ; $5134: $60
    or l                                          ; $5135: $B5
    db $10                                        ; $5136: $10
    ld h, b                                       ; $5137: $60
    db $10                                        ; $5138: $10
    ld [bc], a                                    ; $5139: $02
    ld [hl], $12                                  ; $513A: $36 $12
    or [hl]                                       ; $513C: $B6
    db $10                                        ; $513D: $10
    ld d, c                                       ; $513E: $51
    xor d                                         ; $513F: $AA
    db $10                                        ; $5140: $10
    and d                                         ; $5141: $A2
    ld [hl], $94                                  ; $5142: $36 $94
    add h                                         ; $5144: $84
    or h                                          ; $5145: $B4
    db $10                                        ; $5146: $10
    jr nz, jr_02A_5171                            ; $5147: $20 $28

    adc b                                         ; $5149: $88
    dec d                                         ; $514A: $15
    dec [hl]                                      ; $514B: $35
    add l                                         ; $514C: $85
    or e                                          ; $514D: $B3
    inc bc                                        ; $514E: $03
    ld a, h                                       ; $514F: $7C
    xor b                                         ; $5150: $A8
    nop                                           ; $5151: $00
    ld a, [hl]                                    ; $5152: $7E
    inc b                                         ; $5153: $04
    cp $06                                        ; $5154: $FE $06
    ld a, [hl-]                                   ; $5156: $3A
    jr c, @+$75                                   ; $5157: $38 $73

    ld a, [hl+]                                   ; $5159: $2A
    ld a, b                                       ; $515A: $78
    ld h, e                                       ; $515B: $63
    db $10                                        ; $515C: $10
    ld h, c                                       ; $515D: $61
    db $10                                        ; $515E: $10
    ld b, d                                       ; $515F: $42
    db $10                                        ; $5160: $10
    ld b, c                                       ; $5161: $41
    or c                                          ; $5162: $B1
    stop                                          ; $5163: $10 $00
    ld de, $1F00                                  ; $5165: $11 $00 $1F
    ldh [rTAC], a                                 ; $5168: $E0 $07
    ld d, b                                       ; $516A: $50
    inc h                                         ; $516B: $24
    add a                                         ; $516C: $87
    jr c, jr_02A_51A0                             ; $516D: $38 $31

    rrca                                          ; $516F: $0F
    ld [hl], b                                    ; $5170: $70

jr_02A_5171:
    db $10                                        ; $5171: $10
    ldh a, [$FF9F]                                ; $5172: $F0 $9F
    ld d, c                                       ; $5174: $51
    ld h, b                                       ; $5175: $60
    pop af                                        ; $5176: $F1
    ld b, $00                                     ; $5177: $06 $00
    add h                                         ; $5179: $84
    inc b                                         ; $517A: $04
    or b                                          ; $517B: $B0
    ld d, b                                       ; $517C: $50
    ld d, l                                       ; $517D: $55
    sbc b                                         ; $517E: $98
    db $10                                        ; $517F: $10
    and $10                                       ; $5180: $E6 $10
    db $FC                                        ; $5182: $FC
    db $10                                        ; $5183: $10
    sbc h                                         ; $5184: $9C
    pop hl                                        ; $5185: $E1
    xor d                                         ; $5186: $AA
    nop                                           ; $5187: $00
    ld bc, $0610                                  ; $5188: $01 $10 $06
    db $10                                        ; $518B: $10
    jr c, @+$12                                   ; $518C: $38 $10

    rlca                                          ; $518E: $07
    and l                                         ; $518F: $A5
    db $10                                        ; $5190: $10
    cp $92                                        ; $5191: $FE $92
    ret nz                                        ; $5193: $C0

    ccf                                           ; $5194: $3F
    pop af                                        ; $5195: $F1
    ld [hl], $10                                  ; $5196: $36 $10
    ld d, b                                       ; $5198: $50
    scf                                           ; $5199: $37
    db $10                                        ; $519A: $10
    ldh [rNR10], a                                ; $519B: $E0 $10
    call nc, Call_000_2003                        ; $519D: $D4 $03 $20

jr_02A_51A0:
    rla                                           ; $51A0: $17
    ld a, [hl+]                                   ; $51A1: $2A
    add b                                         ; $51A2: $80
    ld l, [hl]                                    ; $51A3: $6E
    ld h, b                                       ; $51A4: $60
    xor $F1                                       ; $51A5: $EE $F1
    rlca                                          ; $51A7: $07
    nop                                           ; $51A8: $00
    add a                                         ; $51A9: $87
    and d                                         ; $51AA: $A2
    sub b                                         ; $51AB: $90
    cpl                                           ; $51AC: $2F
    nop                                           ; $51AD: $00
    ld c, a                                       ; $51AE: $4F
    ld l, a                                       ; $51AF: $6F
    ld e, a                                       ; $51B0: $5F
    nop                                           ; $51B1: $00
    sbc a                                         ; $51B2: $9F
    ld l, h                                       ; $51B3: $6C
    rst RST_18                                    ; $51B4: $DF
    ld de, $FEF1                                  ; $51B5: $11 $F1 $FE
    inc c                                         ; $51B8: $0C
    pop af                                        ; $51B9: $F1
    nop                                           ; $51BA: $00
    ld c, a                                       ; $51BB: $4F
    ld b, b                                       ; $51BC: $40
    ld e, l                                       ; $51BD: $5D
    nop                                           ; $51BE: $00
    nop                                           ; $51BF: $00
    ld a, a                                       ; $51C0: $7F
    rlca                                          ; $51C1: $07
    inc b                                         ; $51C2: $04
    ld a, c                                       ; $51C3: $79
    rst RST_38                                    ; $51C4: $FF
    rlca                                          ; $51C5: $07
    or h                                          ; $51C6: $B4
    ld [bc], a                                    ; $51C7: $02
    db $FC                                        ; $51C8: $FC
    nop                                           ; $51C9: $00
    ld a, l                                       ; $51CA: $7D
    ld hl, sp+$00                                 ; $51CB: $F8 $00
    ldh [$FFE6], a                                ; $51CD: $E0 $E6
    ld [bc], a                                    ; $51CF: $02
    ret nz                                        ; $51D0: $C0

    sbc $81                                       ; $51D1: $DE $81
    cp h                                          ; $51D3: $BC
    ld bc, $791C                                  ; $51D4: $01 $1C $79
    adc a                                         ; $51D7: $8F
    adc c                                         ; $51D8: $89
    nop                                           ; $51D9: $00
    ld d, a                                       ; $51DA: $57
    rlca                                          ; $51DB: $07
    ret nc                                        ; $51DC: $D0

    jr z, @-$26                                   ; $51DD: $28 $D8

    inc bc                                        ; $51DF: $03
    add hl, bc                                    ; $51E0: $09
    ld e, l                                       ; $51E1: $5D
    call c, $0470                                 ; $51E2: $DC $70 $04
    ld [$01FD], sp                                ; $51E5: $08 $FD $01
    ccf                                           ; $51E8: $3F
    nop                                           ; $51E9: $00
    dec bc                                        ; $51EA: $0B
    rra                                           ; $51EB: $1F
    sbc a                                         ; $51EC: $9F
    rrca                                          ; $51ED: $0F
    rst RST_08                                    ; $51EE: $CF
    ld [hl], b                                    ; $51EF: $70
    add c                                         ; $51F0: $81
    ld a, a                                       ; $51F1: $7F
    rlca                                          ; $51F2: $07
    xor d                                         ; $51F3: $AA
    ld a, c                                       ; $51F4: $79
    cp $04                                        ; $51F5: $FE $04
    add $00                                       ; $51F7: $C6 $00
    ldh [c], a                                    ; $51F9: $E2
    nop                                           ; $51FA: $00
    add sp, $0D                                   ; $51FB: $E8 $0D
    ldh [$FFF4], a                                ; $51FD: $E0 $F4
    ldh a, [$FF7F]                                ; $51FF: $F0 $7F
    rlca                                          ; $5201: $07
    inc b                                         ; $5202: $04
    ld h, b                                       ; $5203: $60
    nop                                           ; $5204: $00
    ld d, $FB                                     ; $5205: $16 $FB
    ld hl, sp-$06                                 ; $5207: $F8 $FA
    ld [$A8F7], sp                                ; $5209: $08 $F7 $A8
    dec bc                                        ; $520C: $0B
    rst RST_28                                    ; $520D: $EF
    call $09E8                                    ; $520E: $CD $E8 $09
    ld c, $00                                     ; $5211: $0E $00
    db $10                                        ; $5213: $10
    ld [$080D], sp                                ; $5214: $08 $0D $08
    ld d, l                                       ; $5217: $55

jr_02A_5218:
    ld [hl], l                                    ; $5218: $75
    ld [$0882], sp                                ; $5219: $08 $82 $08
    rst RST_38                                    ; $521C: $FF
    ld [$088F], sp                                ; $521D: $08 $8F $08
    ld d, l                                       ; $5220: $55
    ld [hl], b                                    ; $5221: $70
    ld a, [de]                                    ; $5222: $1A
    ret c                                         ; $5223: $D8

    ld [$0ADD], sp                                ; $5224: $08 $DD $0A
    jp c, Jump_02A_5508                           ; $5227: $DA $08 $55

    ld d, a                                       ; $522A: $57
    ld e, h                                       ; $522B: $5C
    rlca                                          ; $522C: $07
    ld [$DA7E], sp                                ; $522D: $08 $7E $DA
    ld [hl], a                                    ; $5230: $77
    ld [$0F6B], sp                                ; $5231: $08 $6B $0F
    ld a, [$FB59]                                 ; $5234: $FA $59 $FB
    ld [$3905], sp                                ; $5237: $08 $05 $39
    nop                                           ; $523A: $00
    ld d, c                                       ; $523B: $51
    ld a, a                                       ; $523C: $7F
    ld [bc], a                                    ; $523D: $02
    ccf                                           ; $523E: $3F
    nop                                           ; $523F: $00
    sbc b                                         ; $5240: $98
    jr @-$37                                      ; $5241: $18 $C7

    ld e, b                                       ; $5243: $58
    ld d, c                                       ; $5244: $51
    sbc $08                                       ; $5245: $DE $08
    db $FC                                        ; $5247: $FC
    ld [$F0F4], sp                                ; $5248: $08 $F4 $F0
    ld hl, sp+$02                                 ; $524B: $F8 $02
    ret nc                                        ; $524D: $D0

    jr nz, jr_02A_5250                            ; $524E: $20 $00

jr_02A_5250:
    stop                                          ; $5250: $10 $00
    jr nz, jr_02A_527A                            ; $5252: $20 $26

    ld h, b                                       ; $5254: $60
    ld l, h                                       ; $5255: $6C
    nop                                           ; $5256: $00
    ret z                                         ; $5257: $C8

    call c, Call_02A_7077                         ; $5258: $DC $77 $70
    ld a, e                                       ; $525B: $7B
    ld a, b                                       ; $525C: $78
    ld a, l                                       ; $525D: $7D
    ld a, h                                       ; $525E: $7C

jr_02A_525F:
    ld d, c                                       ; $525F: $51
    ld a, [hl]                                    ; $5260: $7E
    nop                                           ; $5261: $00
    ld a, a                                       ; $5262: $7F
    ld b, $FD                                     ; $5263: $06 $FD
    nop                                           ; $5265: $00
    ld a, [$5008]                                 ; $5266: $FA $08 $50
    db $F4                                        ; $5269: $F4
    ld a, [bc]                                    ; $526A: $0A
    ld a, [hl-]                                   ; $526B: $3A
    ld [$809D], sp                                ; $526C: $08 $9D $80
    ld b, $60                                     ; $526F: $06 $60
    ld a, l                                       ; $5271: $7D
    db $10                                        ; $5272: $10
    ld [$0030], sp                                ; $5273: $08 $30 $00
    ldh a, [rP1]                                  ; $5276: $F0 $00
    cp $00                                        ; $5278: $FE $00

jr_02A_527A:
    ld e, d                                       ; $527A: $5A
    di                                            ; $527B: $F3
    nop                                           ; $527C: $00
    dec l                                         ; $527D: $2D
    nop                                           ; $527E: $00
    ld c, c                                       ; $527F: $49
    ld de, $5468                                  ; $5280: $11 $68 $54
    add hl, hl                                    ; $5283: $29

jr_02A_5284:
    and h                                         ; $5284: $A4
    ret c                                         ; $5285: $D8

    jr z, jr_02A_528B                             ; $5286: $28 $03

    nop                                           ; $5288: $00
    rlca                                          ; $5289: $07
    scf                                           ; $528A: $37

jr_02A_528B:
    ret z                                         ; $528B: $C8

    ld d, l                                       ; $528C: $55

jr_02A_528D:
    ld [hl], $30                                  ; $528D: $36 $30
    jr nc, jr_02A_5291                            ; $528F: $30 $00

jr_02A_5291:
    add [hl]                                      ; $5291: $86
    jr jr_02A_5218                                ; $5292: $18 $84

    ld e, c                                       ; $5294: $59
    nop                                           ; $5295: $00
    ldh a, [c]                                    ; $5296: $F2
    ldh a, [$FFF9]                                ; $5297: $F0 $F9
    ld hl, sp+$39                                 ; $5299: $F8 $39
    jr c, jr_02A_525F                             ; $529B: $38 $C2

    ret nz                                        ; $529D: $C0

    ld b, d                                       ; $529E: $42
    inc b                                         ; $529F: $04
    ld h, b                                       ; $52A0: $60

jr_02A_52A1:
    ld bc, $2161                                  ; $52A1: $01 $61 $21
    ld e, c                                       ; $52A4: $59
    ld [hl], b                                    ; $52A5: $70
    ld b, e                                       ; $52A6: $43
    ld a, h                                       ; $52A7: $7C
    pop af                                        ; $52A8: $F1
    jr nc, jr_02A_52BB                            ; $52A9: $30 $10

    jr nz, jr_02A_528D                            ; $52AB: $20 $E0

    nop                                           ; $52AD: $00
    ld h, h                                       ; $52AE: $64
    ld h, l                                       ; $52AF: $65
    ld [$E2C1], sp                                ; $52B0: $08 $C1 $E2
    add d                                         ; $52B3: $82
    rst RST_00                                    ; $52B4: $C7
    ldh a, [$FFCB]                                ; $52B5: $F0 $CB

jr_02A_52B7:
    inc c                                         ; $52B7: $0C
    db $D3                                        ; $52B8: $D3
    inc b                                         ; $52B9: $04
    sub b                                         ; $52BA: $90

jr_02A_52BB:
    cp b                                          ; $52BB: $B8
    jr nz, @+$7A                                  ; $52BC: $20 $78

    ld h, b                                       ; $52BE: $60
    jr nz, jr_02A_52A1                            ; $52BF: $20 $E0

    db $10                                        ; $52C1: $10

Jump_02A_52C2:
    jr c, jr_02A_5284                             ; $52C2: $38 $C0

    ld [hl-], a                                   ; $52C4: $32
    ld [$08A8], sp                                ; $52C5: $08 $A8 $08
    ld h, $80                                     ; $52C8: $26 $80
    ld l, h                                       ; $52CA: $6C
    ld d, h                                       ; $52CB: $54
    ld a, a                                       ; $52CC: $7F
    nop                                           ; $52CD: $00
    ld e, a                                       ; $52CE: $5F
    ld [bc], a                                    ; $52CF: $02
    ld c, [hl]                                    ; $52D0: $4E
    nop                                           ; $52D1: $00
    ld d, $06                                     ; $52D2: $16 $06
    inc a                                         ; $52D4: $3C
    ld c, b                                       ; $52D5: $48
    nop                                           ; $52D6: $00
    ld [hl], b                                    ; $52D7: $70
    ld [$C001], sp                                ; $52D8: $08 $01 $C0
    ld h, a                                       ; $52DB: $67
    ld de, $6600                                  ; $52DC: $11 $00 $66
    sub e                                         ; $52DF: $93
    and h                                         ; $52E0: $A4
    jp Jump_02A_72C4                              ; $52E1: $C3 $C4 $72


    ld [hl], l                                    ; $52E4: $75
    sub b                                         ; $52E5: $90
    jr jr_02A_52FF                                ; $52E6: $18 $17

    ld h, b                                       ; $52E8: $60
    rlca                                          ; $52E9: $07
    ld [hl], b                                    ; $52EA: $70
    ld [$27D3], sp                                ; $52EB: $08 $D3 $27
    sub d                                         ; $52EE: $92
    add hl, bc                                    ; $52EF: $09
    ld h, e                                       ; $52F0: $63
    add b                                         ; $52F1: $80
    ld h, h                                       ; $52F2: $64
    jr nz, @-$7E                                  ; $52F3: $20 $80

    ld b, b                                       ; $52F5: $40
    adc b                                         ; $52F6: $88
    ld [$8E60], sp                                ; $52F7: $08 $60 $8E
    jr c, jr_02A_536C                             ; $52FA: $38 $70

    and e                                         ; $52FC: $A3
    inc hl                                        ; $52FD: $23
    ld d, l                                       ; $52FE: $55

jr_02A_52FF:
    rst RST_38                                    ; $52FF: $FF

jr_02A_5300:
    xor d                                         ; $5300: $AA
    ld l, b                                       ; $5301: $68
    cp $30                                        ; $5302: $FE $30
    ld bc, $0867                                  ; $5304: $01 $67 $08
    ret nz                                        ; $5307: $C0

    ld de, $51C1                                  ; $5308: $11 $C1 $51
    db $10                                        ; $530B: $10
    sub b                                         ; $530C: $90
    sub b                                         ; $530D: $90
    sub b                                         ; $530E: $90
    ld [hl+], a                                   ; $530F: $22
    add e                                         ; $5310: $83
    jr nc, jr_02A_5363                            ; $5311: $30 $50

    ld d, l                                       ; $5313: $55
    jr c, @+$2A                                   ; $5314: $38 $28

    inc a                                         ; $5316: $3C
    jr jr_02A_52B7                                ; $5317: $18 $9E

    ld a, b                                       ; $5319: $78
    ld e, $28                                     ; $531A: $1E $28
    ld d, h                                       ; $531C: $54
    rra                                           ; $531D: $1F
    ld a, b                                       ; $531E: $78
    rrca                                          ; $531F: $0F
    jr z, jr_02A_533F                             ; $5320: $28 $1D

    add b                                         ; $5322: $80
    dec l                                         ; $5323: $2D
    ld [hl], d                                    ; $5324: $72
    ld [$F24C], sp                                ; $5325: $08 $4C $F2
    ld [$0876], sp                                ; $5328: $08 $76 $08
    ld [hl], $18                                  ; $532B: $36 $18
    inc h                                         ; $532D: $24
    xor d                                         ; $532E: $AA
    and b                                         ; $532F: $A0
    add hl, de                                    ; $5330: $19
    ld [$0812], sp                                ; $5331: $08 $12 $08
    ret z                                         ; $5334: $C8

    ld [$B8D8], sp                                ; $5335: $08 $D8 $B8
    ld [$D010], sp                                ; $5338: $08 $10 $D0
    xor b                                         ; $533B: $A8
    ret nz                                        ; $533C: $C0

    ld b, $60                                     ; $533D: $06 $60

jr_02A_533F:
    ld c, $1A                                     ; $533F: $0E $1A
    ld [hl], b                                    ; $5341: $70
    inc b                                         ; $5342: $04
    ld a, b                                       ; $5343: $78
    ld d, b                                       ; $5344: $50
    nop                                           ; $5345: $00
    jr nc, jr_02A_5300                            ; $5346: $30 $B8

    ld e, [hl]                                    ; $5348: $5E
    inc l                                         ; $5349: $2C
    ld e, $5F                                     ; $534A: $1E $5F
    ld d, b                                       ; $534C: $50
    ld l, a                                       ; $534D: $6F
    add hl, bc                                    ; $534E: $09
    ld h, b                                       ; $534F: $60
    ld l, h                                       ; $5350: $6C
    ld bc, $80B5                                  ; $5351: $01 $B5 $80
    inc bc                                        ; $5354: $03
    ld [$8378], sp                                ; $5355: $08 $78 $83
    ret z                                         ; $5358: $C8

    ldh [$FFC8], a                                ; $5359: $E0 $C8
    ld [$6474], sp                                ; $535B: $08 $74 $64
    halt                                          ; $535E: $76
    ld h, [hl]                                    ; $535F: $66
    ld [$0A02], sp                                ; $5360: $08 $02 $0A

jr_02A_5363:
    ldh a, [$FFA0]                                ; $5363: $F0 $A0
    ld h, b                                       ; $5365: $60
    add [hl]                                      ; $5366: $86
    ld [$636B], sp                                ; $5367: $08 $6B $63
    ld l, c                                       ; $536A: $69
    pop hl                                        ; $536B: $E1

jr_02A_536C:
    inc l                                         ; $536C: $2C
    cp d                                          ; $536D: $BA
    adc b                                         ; $536E: $88
    adc [hl]                                      ; $536F: $8E
    sub b                                         ; $5370: $90
    ldh a, [rOBP0]                                ; $5371: $F0 $48
    xor a                                         ; $5373: $AF
    ld [$ACCF], sp                                ; $5374: $08 $CF $AC
    ld [$08EF], sp                                ; $5377: $08 $EF $08
    sub b                                         ; $537A: $90
    ldh a, [$FF09]                                ; $537B: $F0 $09
    ld e, b                                       ; $537D: $58
    add b                                         ; $537E: $80
    ld [hl], l                                    ; $537F: $75
    ret c                                         ; $5380: $D8

    jr c, jr_02A_539B                             ; $5381: $38 $18

    ld [$088C], sp                                ; $5383: $08 $8C $08
    and h                                         ; $5386: $A4
    ld [$8A58], sp                                ; $5387: $08 $58 $8A
    ld [$082F], sp                                ; $538A: $08 $2F $08
    ret                                           ; $538D: $C9


    rla                                           ; $538E: $17
    db $10                                        ; $538F: $10
    scf                                           ; $5390: $37
    ld b, a                                       ; $5391: $47
    jr nc, jr_02A_5394                            ; $5392: $30 $00

jr_02A_5394:
    jr c, jr_02A_5399                             ; $5394: $38 $03

    jr @+$0C                                      ; $5396: $18 $0A

    ld e, b                                       ; $5398: $58

jr_02A_5399:
    ret nc                                        ; $5399: $D0

    ld c, a                                       ; $539A: $4F

jr_02A_539B:
    ld b, $08                                     ; $539B: $06 $08
    dec b                                         ; $539D: $05
    ret nz                                        ; $539E: $C0

    jr nc, jr_02A_53A9                            ; $539F: $30 $08

    jr z, @+$0A                                   ; $53A1: $28 $08

    ld a, d                                       ; $53A3: $7A
    inc b                                         ; $53A4: $04
    ld d, b                                       ; $53A5: $50
    nop                                           ; $53A6: $00
    jr @+$0A                                      ; $53A7: $18 $08

jr_02A_53A9:
    pop hl                                        ; $53A9: $E1
    ld [$AA7C], sp                                ; $53AA: $08 $7C $AA
    ld a, [bc]                                    ; $53AD: $0A
    ld a, [hl]                                    ; $53AE: $7E
    ld [$0AFE], sp                                ; $53AF: $08 $FE $0A
    ld a, $08                                     ; $53B2: $3E $08
    sbc $A6                                       ; $53B4: $DE $A6
    ld [$08EE], sp                                ; $53B6: $08 $EE $08
    rlca                                          ; $53B9: $07
    ld [hl], b                                    ; $53BA: $70
    ret nc                                        ; $53BB: $D0

    jr jr_02A_53C0                                ; $53BC: $18 $02

    ld b, a                                       ; $53BE: $47
    ld a, b                                       ; $53BF: $78

jr_02A_53C0:
    ld [$0138], sp                                ; $53C0: $08 $38 $01
    inc c                                         ; $53C3: $0C
    ld [$0038], sp                                ; $53C4: $08 $38 $00
    ld d, c                                       ; $53C7: $51
    ld c, $D1                                     ; $53C8: $0E $D1
    jr @+$5A                                      ; $53CA: $18 $58

    ld a, [hl-]                                   ; $53CC: $3A
    rst RST_38                                    ; $53CD: $FF
    inc [hl]                                      ; $53CE: $34
    ld [$7449], sp                                ; $53CF: $08 $49 $74
    ld [$7F68], sp                                ; $53D2: $08 $68 $7F
    add hl, bc                                    ; $53D5: $09
    sub b                                         ; $53D6: $90
    ccf                                           ; $53D7: $3F
    add hl, bc                                    ; $53D8: $09
    ld d, h                                       ; $53D9: $54
    rst RST_30                                    ; $53DA: $F7
    sub b                                         ; $53DB: $90
    ld [hl], a                                    ; $53DC: $77
    ld a, [bc]                                    ; $53DD: $0A
    ld a, d                                       ; $53DE: $7A
    ld [$803C], sp                                ; $53DF: $08 $3C $80
    adc d                                         ; $53E2: $8A
    add hl, bc                                    ; $53E3: $09
    dec de                                        ; $53E4: $1B
    ret nz                                        ; $53E5: $C0

    rlca                                          ; $53E6: $07
    ld [$48AC], sp                                ; $53E7: $08 $AC $48
    ld l, a                                       ; $53EA: $6F
    xor d                                         ; $53EB: $AA
    ld a, d                                       ; $53EC: $7A
    di                                            ; $53ED: $F3
    ld [$08F9], sp                                ; $53EE: $08 $F9 $08
    or $08                                        ; $53F1: $F6 $08
    halt                                          ; $53F3: $76
    xor d                                         ; $53F4: $AA
    ld [$08AE], sp                                ; $53F5: $08 $AE $08
    ld [$0308], sp                                ; $53F8: $08 $08 $03
    ld a, [bc]                                    ; $53FB: $0A
    add e                                         ; $53FC: $83
    ld [$C008], a                                 ; $53FD: $EA $08 $C0
    ld [$BA23], sp                                ; $5400: $08 $23 $BA
    add a                                         ; $5403: $87
    ld [$AAE3], sp                                ; $5404: $08 $E3 $AA
    ld a, [hl-]                                   ; $5407: $3A
    jp $E108                                      ; $5408: $C3 $08 $E1


    ld [$08E5], sp                                ; $540B: $08 $E5 $08
    ld c, $AA                                     ; $540E: $0E $AA
    ld [$0AFE], sp                                ; $5410: $08 $FE $0A
    db $F4                                        ; $5413: $F4
    ld [$0AF0], sp                                ; $5414: $08 $F0 $0A
    ldh [rHDMA1], a                               ; $5417: $E0 $51
    ld [bc], a                                    ; $5419: $02
    ld hl, sp+$06                                 ; $541A: $F8 $06
    ld [$800C], sp                                ; $541C: $08 $0C $80
    inc e                                         ; $541F: $1C
    ld b, b                                       ; $5420: $40
    ld d, l                                       ; $5421: $55
    ld a, [de]                                    ; $5422: $1A
    ld [$0847], sp                                ; $5423: $08 $47 $08
    rrca                                          ; $5426: $0F
    ld [$0C1E], sp                                ; $5427: $08 $1E $0C
    ld e, b                                       ; $542A: $58
    ld c, [hl]                                    ; $542B: $4E
    ld [$0878], sp                                ; $542C: $08 $78 $08
    nop                                           ; $542F: $00
    ld b, b                                       ; $5430: $40
    rra                                           ; $5431: $1F
    ld h, b                                       ; $5432: $60
    cp [hl]                                       ; $5433: $BE
    jr jr_02A_5475                                ; $5434: $18 $3F

    ld [$00C8], sp                                ; $5436: $08 $C8 $00
    jr c, jr_02A_546B                             ; $5439: $38 $30

    jr nc, @+$79                                  ; $543B: $30 $77

    add hl, sp                                    ; $543D: $39
    ldh a, [$FFF9]                                ; $543E: $F0 $F9
    nop                                           ; $5440: $00
    inc de                                        ; $5441: $13
    ld c, b                                       ; $5442: $48
    jr nc, @+$1A                                  ; $5443: $30 $18

    ld a, h                                       ; $5445: $7C
    and b                                         ; $5446: $A0
    ld [$0858], sp                                ; $5447: $08 $58 $08
    ld d, b                                       ; $544A: $50
    add b                                         ; $544B: $80
    cpl                                           ; $544C: $2F
    jr nz, jr_02A_5479                            ; $544D: $20 $2A

    or a                                          ; $544F: $B7
    or b                                          ; $5450: $B0
    ld a, c                                       ; $5451: $79
    adc [hl]                                      ; $5452: $8E
    ld [$086D], sp                                ; $5453: $08 $6D $08
    inc sp                                        ; $5456: $33
    xor d                                         ; $5457: $AA
    ld [$08CF], sp                                ; $5458: $08 $CF $08
    ld c, a                                       ; $545B: $4F
    ld [$0861], sp                                ; $545C: $08 $61 $08
    ld l, b                                       ; $545F: $68
    push de                                       ; $5460: $D5
    ld [hl], c                                    ; $5461: $71
    nop                                           ; $5462: $00
    rst RST_38                                    ; $5463: $FF
    inc c                                         ; $5464: $0C
    ld hl, sp+$08                                 ; $5465: $F8 $08
    rst RST_30                                    ; $5467: $F7
    ld [$F06A], sp                                ; $5468: $08 $6A $F0

jr_02A_546B:
    ld l, d                                       ; $546B: $6A
    ld bc, $0AFC                                  ; $546C: $01 $FC $0A
    jr jr_02A_5479                                ; $546F: $18 $08

    ldh [$FFAA], a                                ; $5471: $E0 $AA
    ld b, c                                       ; $5473: $41
    inc bc                                        ; $5474: $03

jr_02A_5475:
    ld [$080F], sp                                ; $5475: $08 $0F $08
    ccf                                           ; $5478: $3F

jr_02A_5479:
    add d                                         ; $5479: $82
    ld h, $01                                     ; $547A: $26 $01
    db $10                                        ; $547C: $10
    ld e, $38                                     ; $547D: $1E $38
    ld a, [hl]                                    ; $547F: $7E
    ld e, h                                       ; $5480: $5C
    cp $2C                                        ; $5481: $FE $2C
    ld [$1660], sp                                ; $5483: $08 $60 $16
    ld a, [bc]                                    ; $5486: $0A
    ld [hl], c                                    ; $5487: $71
    nop                                           ; $5488: $00
    ld d, e                                       ; $5489: $53
    ld b, b                                       ; $548A: $40
    ld c, b                                       ; $548B: $48
    nop                                           ; $548C: $00
    nop                                           ; $548D: $00
    jr nc, jr_02A_550C                            ; $548E: $30 $7C

    ld [$187F], sp                                ; $5490: $08 $7F $18
    ccf                                           ; $5493: $3F
    ld de, $5F48                                  ; $5494: $11 $48 $5F
    ld b, h                                       ; $5497: $44
    ld [$6F64], sp                                ; $5498: $08 $64 $6F
    ld h, b                                       ; $549B: $60
    ld [$79B8], sp                                ; $549C: $08 $B8 $79
    rst RST_38                                    ; $549F: $FF
    nop                                           ; $54A0: $00
    ld h, b                                       ; $54A1: $60
    nop                                           ; $54A2: $00
    rrca                                          ; $54A3: $0F
    rst RST_08                                    ; $54A4: $CF
    rlca                                          ; $54A5: $07
    ld bc, $03F7                                  ; $54A6: $01 $F7 $03
    jp $803C                                      ; $54A9: $C3 $3C $80


    inc sp                                        ; $54AC: $33
    adc h                                         ; $54AD: $8C
    ld a, e                                       ; $54AE: $7B
    and c                                         ; $54AF: $A1
    dec b                                         ; $54B0: $05
    cp $00                                        ; $54B1: $FE $00
    ld hl, sp-$07                                 ; $54B3: $F8 $F9
    inc hl                                        ; $54B5: $23
    daa                                           ; $54B6: $27
    ld a, c                                       ; $54B7: $79
    nop                                           ; $54B8: $00
    pop hl                                        ; $54B9: $E1
    push hl                                       ; $54BA: $E5
    ldh [$FFEC], a                                ; $54BB: $E0 $EC
    ret z                                         ; $54BD: $C8

    sbc $10                                       ; $54BE: $DE $10
    ccf                                           ; $54C0: $3F
    ld e, a                                       ; $54C1: $5F
    ld h, b                                       ; $54C2: $60
    adc b                                         ; $54C3: $88
    ret nz                                        ; $54C4: $C0

    ld [$79E1], sp                                ; $54C5: $08 $E1 $79
    cp c                                          ; $54C8: $B9
    ld bc, $7E42                                  ; $54C9: $01 $42 $7E
    nop                                           ; $54CC: $00
    ld e, $9E                                     ; $54CD: $1E $9E
    ld [bc], a                                    ; $54CF: $02
    ldh [c], a                                    ; $54D0: $E2
    ld d, b                                       ; $54D1: $50
    db $FC                                        ; $54D2: $FC
    call z, $007B                                 ; $54D3: $CC $7B $00
    ld c, a                                       ; $54D6: $4F
    ld bc, $1858                                  ; $54D7: $01 $58 $18
    cp b                                          ; $54DA: $B8
    rlca                                          ; $54DB: $07
    ld e, d                                       ; $54DC: $5A
    or b                                          ; $54DD: $B0
    add hl, bc                                    ; $54DE: $09
    add hl, bc                                    ; $54DF: $09
    ld [$2038], sp                                ; $54E0: $08 $38 $20
    ld [hl], c                                    ; $54E3: $71
    ld e, [hl]                                    ; $54E4: $5E
    cp d                                          ; $54E5: $BA
    ret nc                                        ; $54E6: $D0

    inc a                                         ; $54E7: $3C
    nop                                           ; $54E8: $00
    add hl, hl                                    ; $54E9: $29
    pop de                                        ; $54EA: $D1
    cp $0C                                        ; $54EB: $FE $0C
    ld [hl], b                                    ; $54ED: $70
    ld c, a                                       ; $54EE: $4F

jr_02A_54EF:
    ld [hl], a                                    ; $54EF: $77
    ld [$7671], sp                                ; $54F0: $08 $71 $76
    db $10                                        ; $54F3: $10
    add hl, bc                                    ; $54F4: $09
    ld sp, $2009                                  ; $54F5: $31 $09 $20
    ld a, e                                       ; $54F8: $7B
    ld a, b                                       ; $54F9: $78
    add hl, bc                                    ; $54FA: $09
    rla                                           ; $54FB: $17
    ret z                                         ; $54FC: $C8

    rra                                           ; $54FD: $1F
    ret nz                                        ; $54FE: $C0

    rrca                                          ; $54FF: $0F
    ld d, h                                       ; $5500: $54
    ldh [$FF09], a                                ; $5501: $E0 $09
    ld b, $68                                     ; $5503: $06 $68
    ld [bc], a                                    ; $5505: $02
    ld e, b                                       ; $5506: $58
    add c                                         ; $5507: $81

Jump_02A_5508:
    dec a                                         ; $5508: $3D
    db $10                                        ; $5509: $10
    pop bc                                        ; $550A: $C1
    add hl, de                                    ; $550B: $19

jr_02A_550C:
    adc $70                                       ; $550C: $CE $70
    sbc b                                         ; $550E: $98
    ccf                                           ; $550F: $3F
    jr nc, jr_02A_5591                            ; $5510: $30 $7F

    ld b, h                                       ; $5512: $44
    ld h, b                                       ; $5513: $60
    ld [$FF40], sp                                ; $5514: $08 $40 $FF
    add b                                         ; $5517: $80
    add hl, bc                                    ; $5518: $09
    cp $00                                        ; $5519: $FE $00
    ld [hl], b                                    ; $551B: $70
    db $FD                                        ; $551C: $FD
    ld [$0A28], sp                                ; $551D: $08 $28 $0A
    ldh a, [rDIV]                                 ; $5520: $F0 $04
    rst RST_08                                    ; $5522: $CF
    ld [$BF2F], sp                                ; $5523: $08 $2F $BF
    db $10                                        ; $5526: $10
    sbc b                                         ; $5527: $98
    jr nz, @+$4A                                  ; $5528: $20 $48

    cp b                                          ; $552A: $B8
    ld l, e                                       ; $552B: $6B
    add hl, bc                                    ; $552C: $09
    push de                                       ; $552D: $D5
    ld c, b                                       ; $552E: $48
    ld [$089F], sp                                ; $552F: $08 $9F $08

jr_02A_5532:
    rst RST_28                                    ; $5532: $EF
    ld [$08F7], sp                                ; $5533: $08 $F7 $08
    ld b, b                                       ; $5536: $40
    ei                                            ; $5537: $FB
    ld sp, hl                                     ; $5538: $F9
    inc hl                                        ; $5539: $23
    add e                                         ; $553A: $83
    inc de                                        ; $553B: $13
    jp $C21A                                      ; $553C: $C3 $1A $C2


    sub a                                         ; $553F: $97
    add sp, -$20                                  ; $5540: $E8 $E0
    ld bc, $F009                                  ; $5542: $01 $09 $F0
    add hl, bc                                    ; $5545: $09
    ld a, b                                       ; $5546: $78
    ld [$1E40], sp                                ; $5547: $08 $40 $1E
    db $10                                        ; $554A: $10
    ld b, d                                       ; $554B: $42
    ld h, b                                       ; $554C: $60
    jr nc, jr_02A_5587                            ; $554D: $30 $38

    jr jr_02A_54EF                                ; $554F: $18 $9E

    add h                                         ; $5551: $84

Jump_02A_5552:
    jr c, jr_02A_5532                             ; $5552: $38 $DE

    ld c, $CE                                     ; $5554: $0E $CE

jr_02A_5556:
    ld h, $10                                     ; $5556: $26 $10
    ld [bc], a                                    ; $5558: $02
    ld b, $0A                                     ; $5559: $06 $0A
    ld a, e                                       ; $555B: $7B
    ld a, b                                       ; $555C: $78
    ld a, l                                       ; $555D: $7D
    ld a, h                                       ; $555E: $7C
    add hl, bc                                    ; $555F: $09
    ld a, [hl]                                    ; $5560: $7E
    nop                                           ; $5561: $00
    ld a, a                                       ; $5562: $7F
    adc c                                         ; $5563: $89
    ld b, $E1                                     ; $5564: $06 $E1
    inc bc                                        ; $5566: $03
    ldh a, [c]                                    ; $5567: $F2
    add hl, bc                                    ; $5568: $09
    rlca                                          ; $5569: $07
    db $F4                                        ; $556A: $F4
    cp b                                          ; $556B: $B8
    ld b, d                                       ; $556C: $42
    ld h, h                                       ; $556D: $64
    ret c                                         ; $556E: $D8

    adc h                                         ; $556F: $8C
    adc [hl]                                      ; $5570: $8E
    call z, $08CE                                 ; $5571: $CC $CE $08
    rst RST_18                                    ; $5574: $DF
    inc h                                         ; $5575: $24
    nop                                           ; $5576: $00
    ei                                            ; $5577: $FB
    add hl, bc                                    ; $5578: $09
    ld bc, $0AF7                                  ; $5579: $01 $F7 $0A
    ld l, a                                       ; $557C: $6F
    add e                                         ; $557D: $83
    ld bc, $C32F                                  ; $557E: $01 $2F $C3
    rra                                           ; $5581: $1F
    ld h, e                                       ; $5582: $63
    rrca                                          ; $5583: $0F
    ret nz                                        ; $5584: $C0

    rst RST_38                                    ; $5585: $FF
    add hl, bc                                    ; $5586: $09

jr_02A_5587:
    ld d, c                                       ; $5587: $51
    add b                                         ; $5588: $80
    add hl, bc                                    ; $5589: $09
    cp $08                                        ; $558A: $FE $08
    db $FD                                        ; $558C: $FD
    add c                                         ; $558D: $81
    ld a, [$3E09]                                 ; $558E: $FA $09 $3E

jr_02A_5591:
    inc bc                                        ; $5591: $03
    db $F4                                        ; $5592: $F4
    add sp, $48                                   ; $5593: $E8 $48
    ld a, [bc]                                    ; $5595: $0A
    ld a, b                                       ; $5596: $78
    ld a, [bc]                                    ; $5597: $0A
    ld a, a                                       ; $5598: $7F
    cp d                                          ; $5599: $BA

jr_02A_559A:
    adc b                                         ; $559A: $88
    ccf                                           ; $559B: $3F
    ret z                                         ; $559C: $C8

    ld hl, sp+$08                                 ; $559D: $F8 $08
    inc e                                         ; $559F: $1C
    jr c, jr_02A_559A                             ; $55A0: $38 $F8

    ld d, h                                       ; $55A2: $54
    ld bc, $6C09                                  ; $55A3: $01 $09 $6C
    jr z, jr_02A_5556                             ; $55A6: $28 $AE

    ld [$208E], sp                                ; $55A8: $08 $8E $20
    add hl, bc                                    ; $55AB: $09
    adc h                                         ; $55AC: $8C
    ld h, b                                       ; $55AD: $60
    ld [$08E2], sp                                ; $55AE: $08 $E2 $08
    jr jr_02A_55CD                                ; $55B1: $18 $1A

    sub b                                         ; $55B3: $90
    add l                                         ; $55B4: $85
    nop                                           ; $55B5: $00
    sbc [hl]                                      ; $55B6: $9E
    ld e, $BE                                     ; $55B7: $1E $BE
    ld a, $01                                     ; $55B9: $3E $01
    ld a, [hl]                                    ; $55BB: $7E
    inc b                                         ; $55BC: $04
    ld d, d                                       ; $55BD: $52
    ld a, a                                       ; $55BE: $7F
    inc b                                         ; $55BF: $04
    rra                                           ; $55C0: $1F
    nop                                           ; $55C1: $00
    inc bc                                        ; $55C2: $03
    ld h, e                                       ; $55C3: $63
    add sp, $7C                                   ; $55C4: $E8 $7C
    ld d, b                                       ; $55C6: $50
    jr c, jr_02A_5601                             ; $55C7: $38 $38

    inc c                                         ; $55C9: $0C
    ld [$EFE4], sp                                ; $55CA: $08 $E4 $EF

jr_02A_55CD:
    ldh a, [$FFF7]                                ; $55CD: $F0 $F7
    ld c, $F8                                     ; $55CF: $0E $F8
    ei                                            ; $55D1: $FB
    db $FC                                        ; $55D2: $FC
    db $FD                                        ; $55D3: $FD
    ld [$1801], sp                                ; $55D4: $08 $01 $18
    inc a                                         ; $55D7: $3C
    ld [bc], a                                    ; $55D8: $02
    dec a                                         ; $55D9: $3D
    jp nz, $7000                                  ; $55DA: $C2 $00 $70

    ld bc, $187E                                  ; $55DD: $01 $7E $18
    ccf                                           ; $55E0: $3F
    reti                                          ; $55E1: $D9


    ld [$80F0], sp                                ; $55E2: $08 $F0 $80
    db $10                                        ; $55E5: $10
    ld [$CF0F], sp                                ; $55E6: $08 $0F $CF
    jr z, jr_02A_562B                             ; $55E9: $28 $40

    rst RST_18                                    ; $55EB: $DF
    add hl, de                                    ; $55EC: $19
    inc bc                                        ; $55ED: $03
    db $F4                                        ; $55EE: $F4
    rlca                                          ; $55EF: $07
    ld l, b                                       ; $55F0: $68
    add a                                         ; $55F1: $87
    ld [$E754], sp                                ; $55F2: $08 $54 $E7
    ld [hl], b                                    ; $55F5: $70
    ld a, e                                       ; $55F6: $7B
    ld [$889D], sp                                ; $55F7: $08 $9D $88
    xor $E0                                       ; $55FA: $EE $E0
    ld e, [hl]                                    ; $55FC: $5E
    rst RST_30                                    ; $55FD: $F7
    ld [$38EB], sp                                ; $55FE: $08 $EB $38

jr_02A_5601:
    ld e, c                                       ; $5601: $59
    jr c, jr_02A_560C                             ; $5602: $38 $08

    reti                                          ; $5604: $D9


    ld a, [hl+]                                   ; $5605: $2A
    ld bc, $B0D7                                  ; $5606: $01 $D7 $B0
    xor a                                         ; $5609: $AF
    ldh [$FF2F], a                                ; $560A: $E0 $2F

jr_02A_560C:
    ld [$2A5E], sp                                ; $560C: $08 $5E $2A
    rra                                           ; $560F: $1F
    call nz, $D558                                ; $5610: $C4 $58 $D5
    ld e, b                                       ; $5613: $58
    ld de, $1308                                  ; $5614: $11 $08 $13
    ld c, d                                       ; $5617: $4A
    add e                                         ; $5618: $83
    jr nc, @-$3E                                  ; $5619: $30 $C0

    ld [bc], a                                    ; $561B: $02
    ld [$080E], sp                                ; $561C: $08 $0E $08
    ld e, $35                                     ; $561F: $1E $35
    add b                                         ; $5621: $80
    cp $07                                        ; $5622: $FE $07
    nop                                           ; $5624: $00
    ld a, $00                                     ; $5625: $3E $00
    adc $80                                       ; $5627: $CE $80
    jr nz, jr_02A_5661                            ; $5629: $20 $36

jr_02A_562B:
    add $A8                                       ; $562B: $C6 $A8
    ccf                                           ; $562D: $3F
    jr nc, jr_02A_563F                            ; $562E: $30 $0F

    ld [$0707], sp                                ; $5630: $08 $07 $07
    ld b, b                                       ; $5633: $40
    ld [hl], a                                    ; $5634: $77
    ld [hl], b                                    ; $5635: $70
    ld a, a                                       ; $5636: $7F
    inc b                                         ; $5637: $04
    ld [$4A18], sp                                ; $5638: $08 $18 $4A
    or d                                          ; $563B: $B2
    nop                                           ; $563C: $00
    add b                                         ; $563D: $80
    add b                                         ; $563E: $80

jr_02A_563F:
    ld [$C01F], sp                                ; $563F: $08 $1F $C0
    ld b, b                                       ; $5642: $40
    ldh [$FFCA], a                                ; $5643: $E0 $CA

jr_02A_5645:
    add hl, bc                                    ; $5645: $09
    ld c, b                                       ; $5646: $48
    ldh a, [$FF03]                                ; $5647: $F0 $03
    ld [$0800], sp                                ; $5649: $08 $00 $08
    rla                                           ; $564C: $17
    add h                                         ; $564D: $84
    nop                                           ; $564E: $00
    reti                                          ; $564F: $D9


    add hl, de                                    ; $5650: $19
    xor $0E                                       ; $5651: $EE $0E
    ld d, c                                       ; $5653: $51
    call nz, $9510                                ; $5654: $C4 $10 $95
    jr z, @+$06                                   ; $5657: $28 $04

    db $E4                                        ; $5659: $E4
    ld [hl], b                                    ; $565A: $70
    push hl                                       ; $565B: $E5
    jr z, jr_02A_5645                             ; $565C: $28 $E7

    ld d, b                                       ; $565E: $50
    ld a, a                                       ; $565F: $7F
    rst RST_00                                    ; $5660: $C7

jr_02A_5661:
    ld [$38C8], sp                                ; $5661: $08 $C8 $38
    ld [$80E8], sp                                ; $5664: $08 $E8 $80
    jr jr_02A_56BD                                ; $5667: $18 $54

    pop af                                        ; $5669: $F1
    ld [$08E6], sp                                ; $566A: $08 $E6 $08
    sbc $08                                       ; $566D: $DE $08
    ld e, [hl]                                    ; $566F: $5E
    ld e, $0D                                     ; $5670: $1E $0D
    ld b, b                                       ; $5672: $40
    ld bc, $0F48                                  ; $5673: $01 $48 $0F
    jr @+$3A                                      ; $5676: $18 $38

    ld c, c                                       ; $5678: $49
    add sp, $55                                   ; $5679: $E8 $55
    ld l, $18                                     ; $567B: $2E $18
    ld h, [hl]                                    ; $567D: $66
    ld [$28E9], sp                                ; $567E: $08 $E9 $28
    inc e                                         ; $5681: $1C

jr_02A_5682:
    ld d, b                                       ; $5682: $50

jr_02A_5683:
    dec d                                         ; $5683: $15
    inc a                                         ; $5684: $3C
    add c                                         ; $5685: $81
    inc l                                         ; $5686: $2C
    adc b                                         ; $5687: $88

jr_02A_5688:
    sbc b                                         ; $5688: $98
    ld [$28D0], sp                                ; $5689: $08 $D0 $28
    ld c, b                                       ; $568C: $48
    add h                                         ; $568D: $84
    ld l, b                                       ; $568E: $68
    adc b                                         ; $568F: $88
    ld b, $28                                     ; $5690: $06 $28
    adc a                                         ; $5692: $8F
    ld a, [de]                                    ; $5693: $1A
    ldh [c], a                                    ; $5694: $E2
    ld l, $0A                                     ; $5695: $2E $0A
    ldh a, [c]                                    ; $5697: $F2
    and b                                         ; $5698: $A0
    ld hl, sp+$0A                                 ; $5699: $F8 $0A
    ld h, b                                       ; $569B: $60
    ld [hl], b                                    ; $569C: $70
    add b                                         ; $569D: $80
    adc b                                         ; $569E: $88
    ld [$027C], sp                                ; $569F: $08 $7C $02
    ld h, b                                       ; $56A2: $60
    jr jr_02A_5718                                ; $56A3: $18 $73

    ld [hl], b                                    ; $56A5: $70
    ld a, a                                       ; $56A6: $7F
    adc [hl]                                      ; $56A7: $8E
    ldh [$FF7E], a                                ; $56A8: $E0 $7E
    inc c                                         ; $56AA: $0C
    ld b, b                                       ; $56AB: $40
    jr c, jr_02A_56CE                             ; $56AC: $38 $20

    ld [$8003], sp                                ; $56AE: $08 $03 $80
    nop                                           ; $56B1: $00
    rlca                                          ; $56B2: $07
    ld b, a                                       ; $56B3: $47
    ld c, a                                       ; $56B4: $4F
    inc de                                        ; $56B5: $13
    db $E4                                        ; $56B6: $E4
    jr nz, jr_02A_5688                            ; $56B7: $20 $CF

    push af                                       ; $56B9: $F5
    ld c, b                                       ; $56BA: $48
    jr c, @-$55                                   ; $56BB: $38 $A9

jr_02A_56BD:
    ld [$08FD], sp                                ; $56BD: $08 $FD $08
    cp $09                                        ; $56C0: $FE $09
    ld b, [hl]                                    ; $56C2: $46
    add c                                         ; $56C3: $81
    ld [$042E], sp                                ; $56C4: $08 $2E $04
    call nz, $8830                                ; $56C7: $C4 $30 $88
    ret nz                                        ; $56CA: $C0

    add hl, hl                                    ; $56CB: $29
    ld e, $E0                                     ; $56CC: $1E $E0

jr_02A_56CE:
    jr nz, @+$01                                  ; $56CE: $20 $FF

    inc c                                         ; $56D0: $0C
    ld a, a                                       ; $56D1: $7F
    xor $10                                       ; $56D2: $EE $10
    ld e, l                                       ; $56D4: $5D
    or $0A                                        ; $56D5: $F6 $0A
    ld [de], a                                    ; $56D7: $12
    ld [$AA90], sp                                ; $56D8: $08 $90 $AA
    db $10                                        ; $56DB: $10
    xor b                                         ; $56DC: $A8
    sub l                                         ; $56DD: $95
    ldh [$FFE4], a                                ; $56DE: $E0 $E4
    sbc $38                                       ; $56E0: $DE $38
    ret nc                                        ; $56E2: $D0

    ld [$08CC], sp                                ; $56E3: $08 $CC $08
    ld b, l                                       ; $56E6: $45
    dec c                                         ; $56E7: $0D
    ld [$011C], sp                                ; $56E8: $08 $1C $01
    inc a                                         ; $56EB: $3C
    ld [$087C], sp                                ; $56EC: $08 $7C $08
    ld c, b                                       ; $56EF: $48
    db $FC                                        ; $56F0: $FC
    jr c, jr_02A_5683                             ; $56F1: $38 $90

    rrca                                          ; $56F3: $0F
    cp b                                          ; $56F4: $B8
    rra                                           ; $56F5: $1F
    ld b, e                                       ; $56F6: $43
    ccf                                           ; $56F7: $3F
    ld e, b                                       ; $56F8: $58
    inc c                                         ; $56F9: $0C
    ld h, b                                       ; $56FA: $60
    or c                                          ; $56FB: $B1
    ld e, b                                       ; $56FC: $58
    jr z, jr_02A_5682                             ; $56FD: $28 $83

    dec de                                        ; $56FF: $1B
    inc bc                                        ; $5700: $03
    ld [hl], d                                    ; $5701: $72
    dec sp                                        ; $5702: $3B
    ld [$7080], sp                                ; $5703: $08 $80 $70
    add b                                         ; $5706: $80
    cp [hl]                                       ; $5707: $BE
    db $10                                        ; $5708: $10
    sbc b                                         ; $5709: $98
    jr nz, jr_02A_571C                            ; $570A: $20 $10

    ld [$8E28], sp                                ; $570C: $08 $28 $8E
    adc b                                         ; $570F: $88
    add $84                                       ; $5710: $C6 $84
    jp nz, $408B                                  ; $5712: $C2 $8B $40

    ret c                                         ; $5715: $D8

    ld c, a                                       ; $5716: $4F
    ld e, a                                       ; $5717: $5F

jr_02A_5718:
    add hl, bc                                    ; $5718: $09
    rra                                           ; $5719: $1F
    ld hl, sp+$09                                 ; $571A: $F8 $09

jr_02A_571C:
    ld e, $1E                                     ; $571C: $1E $1E
    ld a, a                                       ; $571E: $7F
    inc c                                         ; $571F: $0C
    ld [$09D8], sp                                ; $5720: $08 $D8 $09
    nop                                           ; $5723: $00
    add c                                         ; $5724: $81
    ld e, l                                       ; $5725: $5D
    cp $09                                        ; $5726: $FE $09
    ld bc, $080F                                  ; $5728: $01 $0F $08
    ld a, c                                       ; $572B: $79
    ld b, b                                       ; $572C: $40
    ret z                                         ; $572D: $C8

    nop                                           ; $572E: $00
    ld [hl+], a                                   ; $572F: $22
    ld c, a                                       ; $5730: $4F
    ld de, $0863                                  ; $5731: $11 $63 $08
    ld [hl], b                                    ; $5734: $70
    inc b                                         ; $5735: $04
    ld a, b                                       ; $5736: $78
    jr jr_02A_5786                                ; $5737: $18 $4D

    ld sp, $8039                                  ; $5739: $31 $39 $80
    ld a, c                                       ; $573C: $79
    dec c                                         ; $573D: $0D
    db $EC                                        ; $573E: $EC
    dec de                                        ; $573F: $1B
    ld [$BBD8], sp                                ; $5740: $08 $D8 $BB
    cp b                                          ; $5743: $B8
    ld [hl], e                                    ; $5744: $73
    ld l, b                                       ; $5745: $68
    rst RST_30                                    ; $5746: $F7
    ldh a, [$FFE7]                                ; $5747: $F0 $E7
    sub l                                         ; $5749: $95
    ld [$E0EF], sp                                ; $574A: $08 $EF $E0
    ld a, c                                       ; $574D: $79
    db $FC                                        ; $574E: $FC
    ld [$0AFD], sp                                ; $574F: $08 $FD $0A
    add hl, hl                                    ; $5752: $29
    ld a, [$0902]                                 ; $5753: $FA $02 $09
    ld hl, sp+$08                                 ; $5756: $F8 $08
    pop af                                        ; $5758: $F1
    dec b                                         ; $5759: $05
    ld a, c                                       ; $575A: $79
    ccf                                           ; $575B: $3F
    ei                                            ; $575C: $FB
    inc bc                                        ; $575D: $03
    dec bc                                        ; $575E: $0B
    ld l, b                                       ; $575F: $68
    ld [$68E0], sp                                ; $5760: $08 $E0 $68
    ld e, c                                       ; $5763: $59
    pop hl                                        ; $5764: $E1
    ld a, b                                       ; $5765: $78
    sub b                                         ; $5766: $90
    add hl, de                                    ; $5767: $19
    sbc [hl]                                      ; $5768: $9E
    sbc $3E                                       ; $5769: $DE $3E
    cp [hl]                                       ; $576B: $BE
    add hl, bc                                    ; $576C: $09
    ld d, d                                       ; $576D: $52
    ld b, $00                                     ; $576E: $06 $00
    ld a, d                                       ; $5770: $7A
    ld a, b                                       ; $5771: $78
    call nz, RST_38                               ; $5772: $C4 $38 $00
    inc b                                         ; $5775: $04
    add b                                         ; $5776: $80
    ld a, c                                       ; $5777: $79
    nop                                           ; $5778: $00
    ld c, c                                       ; $5779: $49
    ld b, b                                       ; $577A: $40
    ld b, b                                       ; $577B: $40
    nop                                           ; $577C: $00
    nop                                           ; $577D: $00
    ld a, c                                       ; $577E: $79
    ld a, b                                       ; $577F: $78
    ld [hl], h                                    ; $5780: $74
    ld [hl], d                                    ; $5781: $72
    ld [hl], c                                    ; $5782: $71
    ld [hl], b                                    ; $5783: $70
    dec b                                         ; $5784: $05
    ld h, e                                       ; $5785: $63

jr_02A_5786:
    ld h, b                                       ; $5786: $60
    ld l, l                                       ; $5787: $6D
    ld l, b                                       ; $5788: $68
    ld h, l                                       ; $5789: $65
    ld [$286C], sp                                ; $578A: $08 $6C $28
    or l                                          ; $578D: $B5
    ld a, c                                       ; $578E: $79
    ei                                            ; $578F: $FB
    ld de, $0202                                  ; $5790: $11 $02 $02
    ld [$0803], sp                                ; $5793: $08 $03 $08
    ld [HeaderLogo], sp                           ; $5796: $08 $04 $01
    db $10                                        ; $5799: $10
    ld b, d                                       ; $579A: $42
    ld c, c                                       ; $579B: $49
    ld c, e                                       ; $579C: $4B
    inc e                                         ; $579D: $1C
    ld b, a                                       ; $579E: $47
    ld [bc], a                                    ; $579F: $02
    jr z, @-$5E                                   ; $57A0: $28 $A0

    jr nc, jr_02A_57B0                            ; $57A2: $30 $0C

    ret nz                                        ; $57A4: $C0

    ld d, b                                       ; $57A5: $50
    ret c                                         ; $57A6: $D8

    add hl, de                                    ; $57A7: $19
    dec d                                         ; $57A8: $15
    add c                                         ; $57A9: $81
    and c                                         ; $57AA: $A1
    pop bc                                        ; $57AB: $C1
    ld a, c                                       ; $57AC: $79
    ccf                                           ; $57AD: $3F
    nop                                           ; $57AE: $00
    rrca                                          ; $57AF: $0F

jr_02A_57B0:
    nop                                           ; $57B0: $00
    sub l                                         ; $57B1: $95
    ld [hl], b                                    ; $57B2: $70
    ld [hl], b                                    ; $57B3: $70
    rra                                           ; $57B4: $1F
    nop                                           ; $57B5: $00
    ldh [rP1], a                                  ; $57B6: $E0 $00
    rst RST_38                                    ; $57B8: $FF
    ld [bc], a                                    ; $57B9: $02
    jp hl                                         ; $57BA: $E9


    ld a, c                                       ; $57BB: $79
    dec hl                                        ; $57BC: $2B
    sbc c                                         ; $57BD: $99
    jp $7800                                      ; $57BE: $C3 $00 $78


    ld a, h                                       ; $57C1: $7C
    ld d, b                                       ; $57C2: $50
    ccf                                           ; $57C3: $3F
    add b                                         ; $57C4: $80
    ld a, a                                       ; $57C5: $7F
    ld a, [hl]                                    ; $57C6: $7E
    dec b                                         ; $57C7: $05
    ld l, b                                       ; $57C8: $68
    nop                                           ; $57C9: $00
    cp c                                          ; $57CA: $B9
    ld a, c                                       ; $57CB: $79
    ld l, b                                       ; $57CC: $68
    cp $07                                        ; $57CD: $FE $07
    inc b                                         ; $57CF: $04
    ld b, c                                       ; $57D0: $41
    nop                                           ; $57D1: $00
    ld [de], a                                    ; $57D2: $12
    inc bc                                        ; $57D3: $03
    dec d                                         ; $57D4: $15
    nop                                           ; $57D5: $00
    ld b, $32                                     ; $57D6: $06 $32
    inc h                                         ; $57D8: $24
    dec c                                         ; $57D9: $0D
    jr z, @+$62                                   ; $57DA: $28 $60

    ld c, b                                       ; $57DC: $48
    ld a, [de]                                    ; $57DD: $1A
    ld [bc], a                                    ; $57DE: $02
    ld d, b                                       ; $57DF: $50
    ld b, b                                       ; $57E0: $40
    ld de, $8359                                  ; $57E1: $11 $59 $83
    jp c, Jump_02A_5A78                           ; $57E4: $DA $78 $5A

    and h                                         ; $57E7: $A4
    jr jr_02A_5842                                ; $57E8: $18 $58

    ld [$815C], sp                                ; $57EA: $08 $5C $81
    add hl, bc                                    ; $57ED: $09
    ld e, [hl]                                    ; $57EE: $5E
    add b                                         ; $57EF: $80
    add hl, bc                                    ; $57F0: $09
    jp Jump_000_3D00                              ; $57F1: $C3 $00 $3D


    ld bc, $C100                                  ; $57F4: $01 $00 $C1
    ld [hl], c                                    ; $57F7: $71
    ld c, b                                       ; $57F8: $48
    or [hl]                                       ; $57F9: $B6
    add hl, bc                                    ; $57FA: $09
    ldh [rOBP0], a                                ; $57FB: $E0 $48
    add hl, bc                                    ; $57FD: $09
    ret nz                                        ; $57FE: $C0

    ld [$FF01], sp                                ; $57FF: $08 $01 $FF
    and c                                         ; $5802: $A1
    ld b, $7F                                     ; $5803: $06 $7F
    nop                                           ; $5805: $00
    ld e, $9F                                     ; $5806: $1E $9F
    ld b, $E7                                     ; $5808: $06 $E7
    ld [hl], b                                    ; $580A: $70
    ld [hl], h                                    ; $580B: $74
    ld a, b                                       ; $580C: $78
    jr nc, jr_02A_5858                            ; $580D: $30 $49

    ld c, $F8                                     ; $580F: $0E $F8
    nop                                           ; $5811: $00
    add b                                         ; $5812: $80
    add a                                         ; $5813: $87
    jp nz, Jump_000_3078                          ; $5814: $C2 $78 $30

    ccf                                           ; $5817: $3F
    cp a                                          ; $5818: $BF
    rra                                           ; $5819: $1F
    rst RST_18                                    ; $581A: $DF
    add hl, bc                                    ; $581B: $09
    rrca                                          ; $581C: $0F
    ld d, e                                       ; $581D: $53
    rst RST_28                                    ; $581E: $EF
    inc c                                         ; $581F: $0C
    ld l, a                                       ; $5820: $6F
    ld [$FEAF], sp                                ; $5821: $08 $AF $FE
    rlca                                          ; $5824: $07
    ld b, $11                                     ; $5825: $06 $11
    inc [hl]                                      ; $5827: $34
    ld hl, $0800                                  ; $5828: $21 $00 $08
    ld l, c                                       ; $582B: $69
    ld b, d                                       ; $582C: $42
    dec b                                         ; $582D: $05
    ld [$5107], sp                                ; $582E: $08 $07 $51
    ld [bc], a                                    ; $5831: $02
    inc bc                                        ; $5832: $03
    inc b                                         ; $5833: $04
    ld a, [hl+]                                   ; $5834: $2A
    ld [$0058], sp                                ; $5835: $08 $58 $00
    ld d, l                                       ; $5838: $55
    cp h                                          ; $5839: $BC
    ld [$0887], sp                                ; $583A: $08 $87 $08
    cp b                                          ; $583D: $B8
    ld [$087F], sp                                ; $583E: $08 $7F $08
    ld d, l                                       ; $5841: $55

jr_02A_5842:
    ld a, [hl]                                    ; $5842: $7E
    ld [$0860], sp                                ; $5843: $08 $60 $08
    ret nz                                        ; $5846: $C0

    ld [$8180], sp                                ; $5847: $08 $80 $81
    cpl                                           ; $584A: $2F
    ld bc, $0006                                  ; $584B: $01 $06 $00
    rlca                                          ; $584E: $07
    nop                                           ; $584F: $00
    dec de                                        ; $5850: $1B
    ld b, b                                       ; $5851: $40
    nop                                           ; $5852: $00
    push de                                       ; $5853: $D5
    ldh a, [$FF31]                                ; $5854: $F0 $31
    rla                                           ; $5856: $17
    ld a, b                                       ; $5857: $78

jr_02A_5858:
    sbc a                                         ; $5858: $9F
    ld [$08E7], sp                                ; $5859: $08 $E7 $08
    jr nz, jr_02A_5896                            ; $585C: $20 $38

    jp nz, $3200                                  ; $585E: $C2 $00 $32

    ld [hl], $E2                                  ; $5861: $36 $E2
    and $02                                       ; $5863: $E6 $02
    push de                                       ; $5865: $D5
    ld [hl], b                                    ; $5866: $70
    ld c, b                                       ; $5867: $48
    or $08                                        ; $5868: $F6 $08
    pop af                                        ; $586A: $F1
    ld [$088C], sp                                ; $586B: $08 $8C $08
    ld a, [hl+]                                   ; $586E: $2A
    ld h, b                                       ; $586F: $60
    ld c, $00                                     ; $5870: $0E $00
    ld l, [hl]                                    ; $5872: $6E
    nop                                           ; $5873: $00
    sbc h                                         ; $5874: $9C

jr_02A_5875:
    nop                                           ; $5875: $00
    ld a, b                                       ; $5876: $78
    ld c, b                                       ; $5877: $48
    ld a, d                                       ; $5878: $7A
    adc c                                         ; $5879: $89
    rrca                                          ; $587A: $0F
    xor a                                         ; $587B: $AF
    ld [$17CF], sp                                ; $587C: $08 $CF $17
    rst RST_00                                    ; $587F: $C7
    nop                                           ; $5880: $00
    inc bc                                        ; $5881: $03
    adc e                                         ; $5882: $8B
    ld de, $2105                                  ; $5883: $11 $05 $21
    add hl, de                                    ; $5886: $19
    ld bc, $151D                                  ; $5887: $01 $1D $15
    ld b, c                                       ; $588A: $41
    dec h                                         ; $588B: $25
    cp $06                                        ; $588C: $FE $06
    db $FC                                        ; $588E: $FC
    nop                                           ; $588F: $00

jr_02A_5890:
    ldh a, [rP1]                                  ; $5890: $F0 $00
    nop                                           ; $5892: $00
    ldh [$FFE6], a                                ; $5893: $E0 $E6
    db $EC                                        ; $5895: $EC

jr_02A_5896:
    xor $00                                       ; $5896: $EE $00
    ld a, $3F                                     ; $5898: $3E $3F
    ld b, b                                       ; $589A: $40
    ld a, h                                       ; $589B: $7C
    ld a, a                                       ; $589C: $7F
    jr nz, @+$12                                  ; $589D: $20 $10

    ld [$0828], sp                                ; $589F: $08 $28 $08
    ld [hl], c                                    ; $58A2: $71
    ld c, $3E                                     ; $58A3: $0E $3E
    ld l, l                                       ; $58A5: $6D
    db $10                                        ; $58A6: $10
    add hl, bc                                    ; $58A7: $09
    jr nc, jr_02A_58AC                            ; $58A8: $30 $02

    ld e, c                                       ; $58AA: $59
    add hl, bc                                    ; $58AB: $09

jr_02A_58AC:
    sbc a                                         ; $58AC: $9F
    xor b                                         ; $58AD: $A8
    ld [$4A80], sp                                ; $58AE: $08 $80 $4A
    rrca                                          ; $58B1: $0F
    nop                                           ; $58B2: $00
    ld h, $17                                     ; $58B3: $26 $17
    ld [bc], a                                    ; $58B5: $02
    dec bc                                        ; $58B6: $0B
    ld h, e                                       ; $58B7: $63
    add d                                         ; $58B8: $82
    inc bc                                        ; $58B9: $03
    db $FC                                        ; $58BA: $FC
    ld c, b                                       ; $58BB: $48
    cp $0A                                        ; $58BC: $FE $0A
    inc bc                                        ; $58BE: $03
    jp Jump_000_00A8                              ; $58BF: $C3 $A8 $00


    ld d, b                                       ; $58C2: $50
    ld [hl], b                                    ; $58C3: $70
    dec l                                         ; $58C4: $2D
    ld a, a                                       ; $58C5: $7F
    sbc b                                         ; $58C6: $98
    cp b                                          ; $58C7: $B8
    call c, Call_02A_4828                         ; $58C8: $DC $28 $48
    jr z, jr_02A_5875                             ; $58CB: $28 $A8

    add hl, bc                                    ; $58CD: $09
    jr nz, jr_02A_5890                            ; $58CE: $20 $C0

    ld b, $80                                     ; $58D0: $06 $80
    or b                                          ; $58D2: $B0
    ld l, $3E                                     ; $58D3: $2E $3E
    adc $DE                                       ; $58D5: $CE $DE
    xor h                                         ; $58D7: $AC
    db $EC                                        ; $58D8: $EC
    ld c, b                                       ; $58D9: $48
    ld d, b                                       ; $58DA: $50
    add sp, -$1E                                  ; $58DB: $E8 $E2
    ldh [rNR11], a                                ; $58DD: $E0 $11
    ld bc, $8009                                  ; $58DF: $01 $09 $80
    ld [hl], d                                    ; $58E2: $72
    and e                                         ; $58E3: $A3
    ld [$300A], sp                                ; $58E4: $08 $0A $30
    ld [hl-], a                                   ; $58E7: $32
    jr nc, @+$4C                                  ; $58E8: $30 $4A

    add hl, bc                                    ; $58EA: $09
    jr z, jr_02A_5917                             ; $58EB: $28 $2A

    jr nz, jr_02A_5903                            ; $58ED: $20 $14

    db $10                                        ; $58EF: $10
    xor $02                                       ; $58F0: $EE $02
    and $00                                       ; $58F2: $E6 $00
    jp nz, Jump_000_00A8                          ; $58F4: $C2 $A8 $00

    ret c                                         ; $58F7: $D8

    nop                                           ; $58F8: $00
    cp [hl]                                       ; $58F9: $BE
    ld [bc], a                                    ; $58FA: $02
    call c, Call_02A_5DDE                         ; $58FB: $DC $DE $5D
    jp z, Jump_000_0998                           ; $58FE: $CA $98 $09

    dec a                                         ; $5901: $3D
    ld b, b                                       ; $5902: $40

jr_02A_5903:
    add hl, bc                                    ; $5903: $09

jr_02A_5904:
    ld bc, $78C8                                  ; $5904: $01 $C8 $78
    ld b, e                                       ; $5907: $43
    ld a, h                                       ; $5908: $7C
    ld [$707E], sp                                ; $5909: $08 $7E $70
    ld a, a                                       ; $590C: $7F
    inc e                                         ; $590D: $1C
    nop                                           ; $590E: $00
    ld b, b                                       ; $590F: $40

jr_02A_5910:
    xor l                                         ; $5910: $AD
    nop                                           ; $5911: $00
    rrca                                          ; $5912: $0F
    nop                                           ; $5913: $00
    rra                                           ; $5914: $1F
    ld [bc], a                                    ; $5915: $02
    ld c, e                                       ; $5916: $4B

jr_02A_5917:
    ccf                                           ; $5917: $3F
    nop                                           ; $5918: $00
    ld d, l                                       ; $5919: $55
    ld e, $00                                     ; $591A: $1E $00
    ld c, $00                                     ; $591C: $0E $00
    ldh [rP1], a                                  ; $591E: $E0 $00
    db $FC                                        ; $5920: $FC
    nop                                           ; $5921: $00
    ld c, c                                       ; $5922: $49
    db $FD                                        ; $5923: $FD
    ld [$3C3D], sp                                ; $5924: $08 $3D $3C
    add hl, bc                                    ; $5927: $09
    pop bc                                        ; $5928: $C1
    ret nz                                        ; $5929: $C0

    nop                                           ; $592A: $00
    dec sp                                        ; $592B: $3B
    ld a, $FF                                     ; $592C: $3E $FF
    xor b                                         ; $592E: $A8
    rrca                                          ; $592F: $0F
    dec bc                                        ; $5930: $0B
    rrca                                          ; $5931: $0F
    ld [$1A00], sp                                ; $5932: $08 $00 $1A
    ldh a, [$FFF8]                                ; $5935: $F0 $F8

jr_02A_5937:
    rlca                                          ; $5937: $07
    ld l, a                                       ; $5938: $6F
    add hl, bc                                    ; $5939: $09
    jp c, $6A08                                   ; $593A: $DA $08 $6A

    add e                                         ; $593D: $83
    adc c                                         ; $593E: $89
    add b                                         ; $593F: $80
    ret nz                                        ; $5940: $C0

    inc a                                         ; $5941: $3C
    db $FC                                        ; $5942: $FC
    inc bc                                        ; $5943: $03
    ld a, l                                       ; $5944: $7D
    nop                                           ; $5945: $00
    ld a, e                                       ; $5946: $7B
    ld b, $F0                                     ; $5947: $06 $F0
    db $10                                        ; $5949: $10
    ld hl, sp+$08                                 ; $594A: $F8 $08

jr_02A_594C:
    jr nc, @+$2A                                  ; $594C: $30 $28

    db $10                                        ; $594E: $10
    rlca                                          ; $594F: $07
    add [hl]                                      ; $5950: $86
    adc b                                         ; $5951: $88
    ld a, [bc]                                    ; $5952: $0A
    sbc b                                         ; $5953: $98
    ld a, [de]                                    ; $5954: $1A
    add hl, bc                                    ; $5955: $09
    jr c, jr_02A_5910                             ; $5956: $38 $B8

    ld [hl+], a                                   ; $5958: $22
    ld a, b                                       ; $5959: $78
    ld a, l                                       ; $595A: $7D
    ld [$707E], sp                                ; $595B: $08 $7E $70
    ld a, a                                       ; $595E: $7F
    jr c, jr_02A_5968                             ; $595F: $38 $07

    xor c                                         ; $5961: $A9
    jr jr_02A_59D7                                ; $5962: $18 $73

    ld [$287C], sp                                ; $5964: $08 $7C $28
    inc c                                         ; $5967: $0C

jr_02A_5968:
    ccf                                           ; $5968: $3F
    nop                                           ; $5969: $00
    ld h, d                                       ; $596A: $62
    jr jr_02A_596D                                ; $596B: $18 $00

jr_02A_596D:
    jr z, jr_02A_59AF                             ; $596D: $28 $40

    rrca                                          ; $596F: $0F
    ld l, a                                       ; $5970: $6F
    add hl, bc                                    ; $5971: $09
    ld [$4841], sp                                ; $5972: $08 $41 $48
    jr c, jr_02A_5937                             ; $5975: $38 $C0

    rra                                           ; $5977: $1F
    sbc a                                         ; $5978: $9F
    ld sp, hl                                     ; $5979: $F9
    ld hl, sp-$18                                 ; $597A: $F8 $E8
    add c                                         ; $597C: $81
    nop                                           ; $597D: $00
    dec sp                                        ; $597E: $3B
    jr c, jr_02A_5904                             ; $597F: $38 $83

    add b                                         ; $5981: $80
    rst RST_30                                    ; $5982: $F7
    ldh a, [$FF09]                                ; $5983: $F0 $09
    ld [hl], a                                    ; $5985: $77
    ld h, b                                       ; $5986: $60
    nop                                           ; $5987: $00
    ld [hl], b                                    ; $5988: $70
    jr c, @+$01                                   ; $5989: $38 $FF

    and b                                         ; $598B: $A0
    sbc b                                         ; $598C: $98
    ld [$E075], sp                                ; $598D: $08 $75 $E0
    ld [$0D29], sp                                ; $5990: $08 $29 $0D
    inc bc                                        ; $5993: $03
    inc l                                         ; $5994: $2C
    ld a, a                                       ; $5995: $7F
    ld [$F8DA], sp                                ; $5996: $08 $DA $F8
    ld [$9FFC], sp                                ; $5999: $08 $FC $9F
    ld a, [bc]                                    ; $599C: $0A
    cp $0A                                        ; $599D: $FE $0A
    inc e                                         ; $599F: $1C
    xor e                                         ; $59A0: $AB
    ld [$08E0], sp                                ; $59A1: $08 $E0 $08
    ld hl, sp+$08                                 ; $59A4: $F8 $08

jr_02A_59A6:
    ldh a, [$FF08]                                ; $59A6: $F0 $08
    ld bc, $3C55                                  ; $59A8: $01 $55 $3C
    ld [bc], a                                    ; $59AB: $02
    ld a, $00                                     ; $59AC: $3E $00
    ld a, [hl]                                    ; $59AE: $7E

jr_02A_59AF:
    nop                                           ; $59AF: $00
    jr nc, jr_02A_59B2                            ; $59B0: $30 $00

jr_02A_59B2:
    ld d, d                                       ; $59B2: $52
    ret nz                                        ; $59B3: $C0

    nop                                           ; $59B4: $00
    db $FC                                        ; $59B5: $FC
    nop                                           ; $59B6: $00
    ld h, b                                       ; $59B7: $60
    ld h, l                                       ; $59B8: $65
    ld [$0D70], sp                                ; $59B9: $08 $70 $0D
    ld h, e                                       ; $59BC: $63
    ld a, b                                       ; $59BD: $78
    inc bc                                        ; $59BE: $03
    jr jr_02A_59C9                                ; $59BF: $18 $08

    ld l, b                                       ; $59C1: $68
    rlca                                          ; $59C2: $07
    ret z                                         ; $59C3: $C8

    ld l, l                                       ; $59C4: $6D
    ld c, $EA                                     ; $59C5: $0E $EA
    jr c, jr_02A_594C                             ; $59C7: $38 $83

jr_02A_59C9:
    jp hl                                         ; $59C9: $E9


    ld [hl-], a                                   ; $59CA: $32
    rra                                           ; $59CB: $1F
    ld a, [bc]                                    ; $59CC: $0A
    ld [hl], l                                    ; $59CD: $75
    rrca                                          ; $59CE: $0F
    ld [$0091], sp                                ; $59CF: $08 $91 $00
    ccf                                           ; $59D2: $3F
    ld [$2101], sp                                ; $59D3: $08 $01 $21
    ld d, l                                       ; $59D6: $55

jr_02A_59D7:
    sbc $0A                                       ; $59D7: $DE $0A
    rst RST_18                                    ; $59D9: $DF
    ld [$0887], sp                                ; $59DA: $08 $87 $08
    ld c, e                                       ; $59DD: $4B
    ld d, c                                       ; $59DE: $51
    ld d, d                                       ; $59DF: $52
    db $FC                                        ; $59E0: $FC
    ld [$B2FF], sp                                ; $59E1: $08 $FF $B2
    jr c, jr_02A_59A6                             ; $59E4: $38 $C0

    cp b                                          ; $59E6: $B8
    ld b, b                                       ; $59E7: $40
    sbc l                                         ; $59E8: $9D
    add hl, bc                                    ; $59E9: $09
    rra                                           ; $59EA: $1F
    and b                                         ; $59EB: $A0
    ld a, c                                       ; $59EC: $79
    jr jr_02A_59F7                                ; $59ED: $18 $08

    ldh [$FF8A], a                                ; $59EF: $E0 $8A
    ld d, [hl]                                    ; $59F1: $56
    ld a, $08                                     ; $59F2: $3E $08
    add b                                         ; $59F4: $80
    add hl, bc                                    ; $59F5: $09
    inc a                                         ; $59F6: $3C

jr_02A_59F7:
    ld l, c                                       ; $59F7: $69
    ld bc, $75E1                                  ; $59F8: $01 $E1 $75
    ld bc, $F9D0                                  ; $59FB: $01 $D0 $F9
    nop                                           ; $59FE: $00
    inc bc                                        ; $59FF: $03
    nop                                           ; $5A00: $00
    inc c                                         ; $5A01: $0C
    nop                                           ; $5A02: $00
    sub $19                                       ; $5A03: $D6 $19
    ld a, e                                       ; $5A05: $7B
    cp $00                                        ; $5A06: $FE $00
    adc [hl]                                      ; $5A08: $8E
    nop                                           ; $5A09: $00
    add hl, hl                                    ; $5A0A: $29
    db $FC                                        ; $5A0B: $FC
    ret c                                         ; $5A0C: $D8

    nop                                           ; $5A0D: $00
    add hl, de                                    ; $5A0E: $19
    ldh [rP1], a                                  ; $5A0F: $E0 $00
    ld a, e                                       ; $5A11: $7B
    nop                                           ; $5A12: $00
    ld b, l                                       ; $5A13: $45
    nop                                           ; $5A14: $00
    ld e, e                                       ; $5A15: $5B
    nop                                           ; $5A16: $00
    nop                                           ; $5A17: $00
    ld a, a                                       ; $5A18: $7F
    inc c                                         ; $5A19: $0C
    pop af                                        ; $5A1A: $F1
    ei                                            ; $5A1B: $FB
    inc c                                         ; $5A1C: $0C
    pop af                                        ; $5A1D: $F1
    ld b, h                                       ; $5A1E: $44
    ld a, a                                       ; $5A1F: $7F
    inc b                                         ; $5A20: $04
    inc a                                         ; $5A21: $3C
    cp h                                          ; $5A22: $BC
    cp b                                          ; $5A23: $B8
    nop                                           ; $5A24: $00
    sub e                                         ; $5A25: $93
    rst RST_10                                    ; $5A26: $D7
    ld a, [hl+]                                   ; $5A27: $2A
    rst RST_00                                    ; $5A28: $C7
    rst RST_08                                    ; $5A29: $CF
    pop af                                        ; $5A2A: $F1
    rst RST_38                                    ; $5A2B: $FF
    inc b                                         ; $5A2C: $04
    rlca                                          ; $5A2D: $07
    nop                                           ; $5A2E: $00
    ei                                            ; $5A2F: $FB
    dec b                                         ; $5A30: $05
    inc bc                                        ; $5A31: $03
    ld a, l                                       ; $5A32: $7D
    add c                                         ; $5A33: $81
    cp [hl]                                       ; $5A34: $BE
    ret nz                                        ; $5A35: $C0

    push af                                       ; $5A36: $F5
    cp $04                                        ; $5A37: $FE $04
    ld l, d                                       ; $5A39: $6A
    db $FD                                        ; $5A3A: $FD
    ld [bc], a                                    ; $5A3B: $02
    pop af                                        ; $5A3C: $F1
    ld e, a                                       ; $5A3D: $5F
    ld [bc], a                                    ; $5A3E: $02
    rst RST_18                                    ; $5A3F: $DF
    inc b                                         ; $5A40: $04
    sbc a                                         ; $5A41: $9F
    push de                                       ; $5A42: $D5
    ld [de], a                                    ; $5A43: $12
    pop af                                        ; $5A44: $F1
    cp $0C                                        ; $5A45: $FE $0C
    ld a, a                                       ; $5A47: $7F
    ld c, $FB                                     ; $5A48: $0E $FB
    inc c                                         ; $5A4A: $0C
    ld b, d                                       ; $5A4B: $42
    di                                            ; $5A4C: $F3
    nop                                           ; $5A4D: $00
    pop bc                                        ; $5A4E: $C1
    jp hl                                         ; $5A4F: $E9


    ldh [$FFE6], a                                ; $5A50: $E0 $E6
    db $10                                        ; $5A52: $10
    rst RST_30                                    ; $5A53: $F7
    ld h, d                                       ; $5A54: $62
    ldh a, [$FF90]                                ; $5A55: $F0 $90
    db $10                                        ; $5A57: $10
    db $FD                                        ; $5A58: $FD
    db $F4                                        ; $5A59: $F4
    cp $10                                        ; $5A5A: $FE $10
    rst RST_38                                    ; $5A5C: $FF
    xor c                                         ; $5A5D: $A9
    ld de, $C0DF                                  ; $5A5E: $11 $DF $C0
    rst RST_28                                    ; $5A61: $EF
    and b                                         ; $5A62: $A0
    ld [hl], b                                    ; $5A63: $70
    ld a, a                                       ; $5A64: $7F
    db $10                                        ; $5A65: $10
    ld [$627C], sp                                ; $5A66: $08 $7C $62
    ld a, b                                       ; $5A69: $78
    inc hl                                        ; $5A6A: $23
    db $10                                        ; $5A6B: $10
    daa                                           ; $5A6C: $27
    jr nc, @+$09                                  ; $5A6D: $30 $07

    nop                                           ; $5A6F: $00
    or b                                          ; $5A70: $B0
    add hl, sp                                    ; $5A71: $39
    dec sp                                        ; $5A72: $3B
    sub c                                         ; $5A73: $91
    inc de                                        ; $5A74: $13
    ld hl, $2587                                  ; $5A75: $21 $87 $25

Jump_02A_5A78:
    ld [$058F], sp                                ; $5A78: $08 $8F $05
    ld e, a                                       ; $5A7B: $5F
    inc b                                         ; $5A7C: $04
    inc de                                        ; $5A7D: $13
    cpl                                           ; $5A7E: $2F
    sbc a                                         ; $5A7F: $9F
    rst RST_18                                    ; $5A80: $DF
    xor d                                         ; $5A81: $AA
    inc de                                        ; $5A82: $13
    rra                                           ; $5A83: $1F

jr_02A_5A84:
    jr jr_02A_5A84                                ; $5A84: $18 $FE

    ld c, $7F                                     ; $5A86: $0E $7F
    ld c, $E1                                     ; $5A88: $0E $E1
    ld bc, $C1ED                                  ; $5A8A: $01 $ED $C1
    db $DD                                        ; $5A8D: $DD
    add $D8                                       ; $5A8E: $C6 $D8
    adc [hl]                                      ; $5A90: $8E
    or b                                          ; $5A91: $B0
    inc d                                         ; $5A92: $14
    dec b                                         ; $5A93: $05
    sub b                                         ; $5A94: $90
    add b                                         ; $5A95: $80
    and b                                         ; $5A96: $A0
    db $F4                                        ; $5A97: $F4
    rst RST_38                                    ; $5A98: $FF
    ld de, $1074                                  ; $5A99: $11 $74 $10
    ld a, [bc]                                    ; $5A9C: $0A
    inc b                                         ; $5A9D: $04
    ld a, a                                       ; $5A9E: $7F
    nop                                           ; $5A9F: $00
    cp a                                          ; $5AA0: $BF
    db $10                                        ; $5AA1: $10
    pop bc                                        ; $5AA2: $C1
    db $10                                        ; $5AA3: $10
    cp h                                          ; $5AA4: $BC
    ld c, d                                       ; $5AA5: $4A
    inc a                                         ; $5AA6: $3C
    ld d, b                                       ; $5AA7: $50
    rrca                                          ; $5AA8: $0F
    and b                                         ; $5AA9: $A0
    inc de                                        ; $5AAA: $13
    ld c, $12                                     ; $5AAB: $0E $12
    inc b                                         ; $5AAD: $04
    ld d, l                                       ; $5AAE: $55
    ret nc                                        ; $5AAF: $D0

    ldh a, [rNR10]                                ; $5AB0: $F0 $10
    db $10                                        ; $5AB2: $10
    ret                                           ; $5AB3: $C9


    db $10                                        ; $5AB4: $10
    cpl                                           ; $5AB5: $2F
    inc d                                         ; $5AB6: $14
    ld d, b                                       ; $5AB7: $50
    ld e, a                                       ; $5AB8: $5F
    db $10                                        ; $5AB9: $10

jr_02A_5ABA:
    ld e, h                                       ; $5ABA: $5C
    db $10                                        ; $5ABB: $10
    or b                                          ; $5ABC: $B0
    ld b, $8E                                     ; $5ABD: $06 $8E
    ld [hl-], a                                   ; $5ABF: $32
    rla                                           ; $5AC0: $17
    ld [hl], d                                    ; $5AC1: $72
    rrca                                          ; $5AC2: $0F
    rst RST_08                                    ; $5AC3: $CF
    db $10                                        ; $5AC4: $10
    adc a                                         ; $5AC5: $8F
    ldh [rNR10], a                                ; $5AC6: $E0 $10
    jr nc, jr_02A_5ABA                            ; $5AC8: $30 $F0

    nop                                           ; $5ACA: $00
    jr nc, jr_02A_5AEE                            ; $5ACB: $30 $21

    ld d, b                                       ; $5ACD: $50
    inc hl                                        ; $5ACE: $23
    add e                                         ; $5ACF: $83
    ld bc, $5495                                  ; $5AD0: $01 $95 $54
    cp $0E                                        ; $5AD3: $FE $0E
    ld a, a                                       ; $5AD5: $7F
    ld [$007E], sp                                ; $5AD6: $08 $7E $00
    ld a, b                                       ; $5AD9: $78
    ld a, c                                       ; $5ADA: $79
    ld [bc], a                                    ; $5ADB: $02
    ld [hl], b                                    ; $5ADC: $70
    ld [hl], e                                    ; $5ADD: $73
    adc [hl]                                      ; $5ADE: $8E
    sub b                                         ; $5ADF: $90
    add b                                         ; $5AE0: $80
    and b                                         ; $5AE1: $A0
    inc [hl]                                      ; $5AE2: $34
    or b                                          ; $5AE3: $B0
    inc h                                         ; $5AE4: $24
    ld c, $30                                     ; $5AE5: $0E $30
    db $10                                        ; $5AE7: $10
    stop                                          ; $5AE8: $10 $00
    nop                                           ; $5AEA: $00
    inc a                                         ; $5AEB: $3C
    cp h                                          ; $5AEC: $BC
    nop                                           ; $5AED: $00

jr_02A_5AEE:
    ld e, l                                       ; $5AEE: $5D
    db $DD                                        ; $5AEF: $DD
    ld e, h                                       ; $5AF0: $5C
    call c, $EC4C                                 ; $5AF1: $DC $4C $EC
    ld b, a                                       ; $5AF4: $47
    rst RST_30                                    ; $5AF5: $F7
    ld [$F840], sp                                ; $5AF6: $08 $40 $F8
    ld b, e                                       ; $5AF9: $43
    ei                                            ; $5AFA: $FB
    db $10                                        ; $5AFB: $10
    ld a, [$F6C0]                                 ; $5AFC: $FA $C0 $F6
    ld b, c                                       ; $5AFF: $41
    ldh a, [rSC]                                  ; $5B00: $F0 $02
    ldh [$FFEF], a                                ; $5B02: $E0 $EF
    add a                                         ; $5B04: $87
    sbc a                                         ; $5B05: $9F
    ld a, a                                       ; $5B06: $7F
    nop                                           ; $5B07: $00
    call nz, Call_000_00B0                        ; $5B08: $C4 $B0 $00
    ret                                           ; $5B0B: $C9


    ld c, c                                       ; $5B0C: $49
    adc $00                                       ; $5B0D: $CE $00
    cp h                                          ; $5B0F: $BC
    cp l                                          ; $5B10: $BD
    ld bc, $8D8C                                  ; $5B11: $01 $8C $8D
    ld a, b                                       ; $5B14: $78
    ld a, c                                       ; $5B15: $79
    nop                                           ; $5B16: $00
    add l                                         ; $5B17: $85
    db $FC                                        ; $5B18: $FC
    ld bc, $CC55                                  ; $5B19: $01 $55 $CC
    ld [hl], b                                    ; $5B1C: $70
    ld a, h                                       ; $5B1D: $7C
    ld [hl], b                                    ; $5B1E: $70
    cp [hl]                                       ; $5B1F: $BE
    db $10                                        ; $5B20: $10
    and a                                         ; $5B21: $A7
    db $10                                        ; $5B22: $10
    ld b, c                                       ; $5B23: $41
    add e                                         ; $5B24: $83
    db $10                                        ; $5B25: $10
    add c                                         ; $5B26: $81
    ld h, b                                       ; $5B27: $60
    ld h, c                                       ; $5B28: $61
    ldh a, [$FFF1]                                ; $5B29: $F0 $F1
    db $10                                        ; $5B2B: $10
    ld a, [hl+]                                   ; $5B2C: $2A
    ld hl, sp-$0E                                 ; $5B2D: $F8 $F2
    db $10                                        ; $5B2F: $10
    cp $00                                        ; $5B30: $FE $00
    ld a, [hl]                                    ; $5B32: $7E
    ld [bc], a                                    ; $5B33: $02
    ld a, $79                                     ; $5B34: $3E $79
    cp [hl]                                       ; $5B36: $BE
    db $10                                        ; $5B37: $10
    ld bc, $5231                                  ; $5B38: $01 $31 $52
    ld h, b                                       ; $5B3B: $60
    ld l, c                                       ; $5B3C: $69
    db $10                                        ; $5B3D: $10
    ld de, $4068                                  ; $5B3E: $11 $68 $40
    ld e, l                                       ; $5B41: $5D
    db $10                                        ; $5B42: $10
    ld b, a                                       ; $5B43: $47
    nop                                           ; $5B44: $00
    ld b, $10                                     ; $5B45: $06 $10
    ld d, l                                       ; $5B47: $55
    ld c, $10                                     ; $5B48: $0E $10
    inc c                                         ; $5B4A: $0C

jr_02A_5B4B:
    db $10                                        ; $5B4B: $10
    inc a                                         ; $5B4C: $3C
    db $10                                        ; $5B4D: $10
    ret nz                                        ; $5B4E: $C0

    db $10                                        ; $5B4F: $10
    ld a, [hl+]                                   ; $5B50: $2A
    add b                                         ; $5B51: $80
    rlca                                          ; $5B52: $07
    nop                                           ; $5B53: $00
    rrca                                          ; $5B54: $0F
    nop                                           ; $5B55: $00
    rra                                           ; $5B56: $1F
    nop                                           ; $5B57: $00
    ccf                                           ; $5B58: $3F
    add b                                         ; $5B59: $80
    inc b                                         ; $5B5A: $04
    ld b, e                                       ; $5B5B: $43
    ld a, e                                       ; $5B5C: $7B
    ld bc, $C03A                                  ; $5B5D: $01 $3A $C0
    reti                                          ; $5B60: $D9


    ldh [$FFAB], a                                ; $5B61: $E0 $AB

jr_02A_5B63:
    ld bc, $10F0                                  ; $5B63: $01 $F0 $10
    ld sp, hl                                     ; $5B66: $F9
    db $10                                        ; $5B67: $10
    ei                                            ; $5B68: $FB
    sub b                                         ; $5B69: $90
    db $10                                        ; $5B6A: $10
    ld b, h                                       ; $5B6B: $44
    ret nc                                        ; $5B6C: $D0

    jr nz, jr_02A_5B4B                            ; $5B6D: $20 $DC

    ld b, b                                       ; $5B6F: $40
    sbc $30                                       ; $5B70: $DE $30
    dec l                                         ; $5B72: $2D

jr_02A_5B73:
    ld h, c                                       ; $5B73: $61
    ld b, d                                       ; $5B74: $42
    ld de, $0E00                                  ; $5B75: $11 $00 $0E
    adc $00                                       ; $5B78: $CE $00
    ldh a, [rNR10]                                ; $5B7A: $F0 $10
    ccf                                           ; $5B7C: $3F
    dec b                                         ; $5B7D: $05
    ld [hl], b                                    ; $5B7E: $70
    ld c, b                                       ; $5B7F: $48
    ldh [$FFF1], a                                ; $5B80: $E0 $F1
    add $00                                       ; $5B82: $C6 $00
    rrca                                          ; $5B84: $0F
    inc b                                         ; $5B85: $04
    jr nz, jr_02A_5B8F                            ; $5B86: $20 $07

    rst RST_20                                    ; $5B88: $E7
    db $10                                        ; $5B89: $10
    or a                                          ; $5B8A: $B7
    ld [hl], c                                    ; $5B8B: $71
    ld a, d                                       ; $5B8C: $7A
    inc sp                                        ; $5B8D: $33
    cp b                                          ; $5B8E: $B8

jr_02A_5B8F:
    dec bc                                        ; $5B8F: $0B
    db $10                                        ; $5B90: $10
    db $DB                                        ; $5B91: $DB
    nop                                           ; $5B92: $00
    ld d, e                                       ; $5B93: $53
    db $10                                        ; $5B94: $10
    ld hl, $0010                                  ; $5B95: $21 $10 $00
    ld d, b                                       ; $5B98: $50
    jr nc, jr_02A_5B9B                            ; $5B99: $30 $00

jr_02A_5B9B:
    ld a, c                                       ; $5B9B: $79
    nop                                           ; $5B9C: $00
    sbc [hl]                                      ; $5B9D: $9E
    ld e, $62                                     ; $5B9E: $1E $62
    add d                                         ; $5BA0: $82

jr_02A_5BA1:
    jr nz, jr_02A_5B63                            ; $5BA1: $20 $C0

    inc c                                         ; $5BA3: $0C
    and b                                         ; $5BA4: $A0
    sbc h                                         ; $5BA5: $9C
    ld b, b                                       ; $5BA6: $40
    ld d, [hl]                                    ; $5BA7: $56
    add b                                         ; $5BA8: $80
    or d                                          ; $5BA9: $B2
    xor d                                         ; $5BAA: $AA
    db $10                                        ; $5BAB: $10
    cp [hl]                                       ; $5BAC: $BE
    ld [hl], b                                    ; $5BAD: $70
    ld h, [hl]                                    ; $5BAE: $66
    db $10                                        ; $5BAF: $10
    ld a, h                                       ; $5BB0: $7C
    db $10                                        ; $5BB1: $10
    ld h, h                                       ; $5BB2: $64
    xor b                                         ; $5BB3: $A8
    db $10                                        ; $5BB4: $10
    ld h, b                                       ; $5BB5: $60
    db $10                                        ; $5BB6: $10
    ld [hl], h                                    ; $5BB7: $74
    db $10                                        ; $5BB8: $10
    inc a                                         ; $5BB9: $3C
    ld b, b                                       ; $5BBA: $40
    ld b, [hl]                                    ; $5BBB: $46
    and h                                         ; $5BBC: $A4
    db $10                                        ; $5BBD: $10
    ld b, d                                       ; $5BBE: $42
    add b                                         ; $5BBF: $80
    ld h, e                                       ; $5BC0: $63
    ccf                                           ; $5BC1: $3F
    ld [bc], a                                    ; $5BC2: $02
    ld e, $1F                                     ; $5BC3: $1E $1F
    xor b                                         ; $5BC5: $A8
    ret nc                                        ; $5BC6: $D0

    rrca                                          ; $5BC7: $0F
    db $10                                        ; $5BC8: $10
    rlca                                          ; $5BC9: $07
    db $10                                        ; $5BCA: $10
    ld [$1D01], sp                                ; $5BCB: $08 $01 $1D
    add d                                         ; $5BCE: $82
    db $10                                        ; $5BCF: $10
    dec [hl]                                      ; $5BD0: $35
    ret nz                                        ; $5BD1: $C0

    ldh a, [c]                                    ; $5BD2: $F2
    add b                                         ; $5BD3: $80
    db $EC                                        ; $5BD4: $EC
    sub b                                         ; $5BD5: $90
    rst RST_08                                    ; $5BD6: $CF
    dec b                                         ; $5BD7: $05
    db $10                                        ; $5BD8: $10
    adc a                                         ; $5BD9: $8F
    jr z, jr_02A_5B73                             ; $5BDA: $28 $97

    inc [hl]                                      ; $5BDC: $34
    ldh a, [$FF38]                                ; $5BDD: $F0 $38
    ldh [rNR43], a                                ; $5BDF: $E0 $22
    jr jr_02A_5BE6                                ; $5BE1: $18 $03

    ldh a, [rNR32]                                ; $5BE3: $F0 $1C
    ld b, b                                       ; $5BE5: $40

jr_02A_5BE6:
    inc d                                         ; $5BE6: $14
    ldh a, [$FF33]                                ; $5BE7: $F0 $33
    adc d                                         ; $5BE9: $8A
    db $10                                        ; $5BEA: $10
    or b                                          ; $5BEB: $B0
    ld b, $86                                     ; $5BEC: $06 $86
    ret nz                                        ; $5BEE: $C0

    ld a, c                                       ; $5BEF: $79
    ld d, b                                       ; $5BF0: $50
    cp $8D                                        ; $5BF1: $FE $8D
    db $10                                        ; $5BF3: $10
    rrca                                          ; $5BF4: $0F
    rlca                                          ; $5BF5: $07
    rst RST_00                                    ; $5BF6: $C7
    ld de, $EF40                                  ; $5BF7: $11 $40 $EF
    db $10                                        ; $5BFA: $10
    ld a, [hl+]                                   ; $5BFB: $2A
    adc a                                         ; $5BFC: $8F
    ld h, a                                       ; $5BFD: $67
    nop                                           ; $5BFE: $00
    and a                                         ; $5BFF: $A7
    nop                                           ; $5C00: $00
    inc bc                                        ; $5C01: $03
    ld bc, $42E3                                  ; $5C02: $01 $E3 $42
    ld a, [hl-]                                   ; $5C05: $3A
    nop                                           ; $5C06: $00
    ldh a, [$FFF8]                                ; $5C07: $F0 $F8
    ldh [$FFF2], a                                ; $5C09: $E0 $F2
    db $10                                        ; $5C0B: $10
    pop hl                                        ; $5C0C: $E1
    call nz, Call_02A_6010                        ; $5C0D: $C4 $10 $60
    db $E4                                        ; $5C10: $E4
    or $C4                                        ; $5C11: $F6 $C4
    jr nz, jr_02A_5BA1                            ; $5C13: $20 $8C

    call z, VBlankInterrupt                       ; $5C15: $CC $40 $00
    ld b, b                                       ; $5C18: $40
    ld [bc], a                                    ; $5C19: $02
    ld h, d                                       ; $5C1A: $62
    ld c, $4E                                     ; $5C1B: $0E $4E
    ld a, $BE                                     ; $5C1D: $3E $BE
    ld d, b                                       ; $5C1F: $50
    ld a, [hl]                                    ; $5C20: $7E
    nop                                           ; $5C21: $00
    cp $04                                        ; $5C22: $FE $04
    ld [hl], b                                    ; $5C24: $70
    ld [hl], a                                    ; $5C25: $77
    ld a, b                                       ; $5C26: $78
    ld a, e                                       ; $5C27: $7B
    ret c                                         ; $5C28: $D8

    db $10                                        ; $5C29: $10
    ld bc, $5179                                  ; $5C2A: $01 $79 $51
    sub b                                         ; $5C2D: $90
    ld [hl], e                                    ; $5C2E: $73
    ld h, b                                       ; $5C2F: $60
    ld l, c                                       ; $5C30: $69
    ld c, b                                       ; $5C31: $48
    nop                                           ; $5C32: $00
    nop                                           ; $5C33: $00
    ld bc, $10ED                                  ; $5C34: $01 $ED $10
    sbc l                                         ; $5C37: $9D
    inc bc                                        ; $5C38: $03
    dec de                                        ; $5C39: $1B
    adc b                                         ; $5C3A: $88
    db $10                                        ; $5C3B: $10
    dec sp                                        ; $5C3C: $3B
    rlca                                          ; $5C3D: $07
    rst RST_30                                    ; $5C3E: $F7
    db $10                                        ; $5C3F: $10
    rst RST_00                                    ; $5C40: $C7
    rrca                                          ; $5C41: $0F
    adc a                                         ; $5C42: $8F
    call nz, Call_000_00F1                        ; $5C43: $C4 $F1 $00
    inc hl                                        ; $5C46: $23
    add b                                         ; $5C47: $80
    or e                                          ; $5C48: $B3
    db $10                                        ; $5C49: $10
    or d                                          ; $5C4A: $B2
    ret nz                                        ; $5C4B: $C0

    inc de                                        ; $5C4C: $13
    call z, $EEE0                                 ; $5C4D: $CC $E0 $EE
    db $10                                        ; $5C50: $10
    db $EB                                        ; $5C51: $EB
    call nc, $F260                                ; $5C52: $D4 $60 $F2
    ld d, l                                       ; $5C55: $55
    rrca                                          ; $5C56: $0F
    db $10                                        ; $5C57: $10
    sbc d                                         ; $5C58: $9A
    db $10                                        ; $5C59: $10
    rst RST_38                                    ; $5C5A: $FF
    db $10                                        ; $5C5B: $10
    ld l, h                                       ; $5C5C: $6C
    db $10                                        ; $5C5D: $10
    ld d, l                                       ; $5C5E: $55
    jr c, jr_02A_5C71                             ; $5C5F: $38 $10

    add c                                         ; $5C61: $81
    db $10                                        ; $5C62: $10
    cp $F2                                        ; $5C63: $FE $F2
    jr @-$6C                                      ; $5C65: $18 $92

    ld d, l                                       ; $5C67: $55
    pop bc                                        ; $5C68: $C1
    db $10                                        ; $5C69: $10
    ld de, $FB10                                  ; $5C6A: $11 $10 $FB
    db $10                                        ; $5C6D: $10
    ret nz                                        ; $5C6E: $C0

    db $10                                        ; $5C6F: $10
    ld l, b                                       ; $5C70: $68

jr_02A_5C71:
    inc e                                         ; $5C71: $1C
    pop hl                                        ; $5C72: $E1
    jr nz, jr_02A_5C93                            ; $5C73: $20 $1E

    nop                                           ; $5C75: $00
    sbc a                                         ; $5C76: $9F
    ld l, $AF                                     ; $5C77: $2E $AF
    ld d, $30                                     ; $5C79: $16 $30
    or b                                          ; $5C7B: $B0
    ld a, a                                       ; $5C7C: $7F
    nop                                           ; $5C7D: $00
    rst RST_38                                    ; $5C7E: $FF
    ld [bc], a                                    ; $5C7F: $02
    pop af                                        ; $5C80: $F1
    cp $BC                                        ; $5C81: $FE $BC
    nop                                           ; $5C83: $00
    ld a, [hl]                                    ; $5C84: $7E

jr_02A_5C85:
    ld [bc], a                                    ; $5C85: $02
    ld d, c                                       ; $5C86: $51
    dec b                                         ; $5C87: $05
    pop af                                        ; $5C88: $F1
    ld d, l                                       ; $5C89: $55
    add b                                         ; $5C8A: $80
    ld e, a                                       ; $5C8B: $5F
    nop                                           ; $5C8C: $00
    nop                                           ; $5C8D: $00
    ld a, a                                       ; $5C8E: $7F
    inc bc                                        ; $5C8F: $03
    inc bc                                        ; $5C90: $03
    inc bc                                        ; $5C91: $03
    nop                                           ; $5C92: $00

jr_02A_5C93:
    dec a                                         ; $5C93: $3D
    ld l, d                                       ; $5C94: $6A
    rst RST_38                                    ; $5C95: $FF
    inc bc                                        ; $5C96: $03
    nop                                           ; $5C97: $00
    rst RST_28                                    ; $5C98: $EF
    nop                                           ; $5C99: $00
    rst RST_20                                    ; $5C9A: $E7
    nop                                           ; $5C9B: $00
    db $EB                                        ; $5C9C: $EB
    or d                                          ; $5C9D: $B2
    nop                                           ; $5C9E: $00
    add l                                         ; $5C9F: $85
    nop                                           ; $5CA0: $00
    dec a                                         ; $5CA1: $3D
    db $F4                                        ; $5CA2: $F4
    rst RST_30                                    ; $5CA3: $F7
    inc b                                         ; $5CA4: $04
    or $AA                                        ; $5CA5: $F6 $AA
    dec b                                         ; $5CA7: $05
    ld hl, sp+$00                                 ; $5CA8: $F8 $00
    ld sp, hl                                     ; $5CAA: $F9
    nop                                           ; $5CAB: $00
    push af                                       ; $5CAC: $F5
    nop                                           ; $5CAD: $00
    jp hl                                         ; $5CAE: $E9


    ld d, [hl]                                    ; $5CAF: $56
    db $ED                                        ; $5CB0: $ED
    dec a                                         ; $5CB1: $3D
    ld b, b                                       ; $5CB2: $40
    adc h                                         ; $5CB3: $8C
    add b                                         ; $5CB4: $80
    ld [hl], h                                    ; $5CB5: $74
    ld b, $FE                                     ; $5CB6: $06 $FE
    add l                                         ; $5CB8: $85
    and c                                         ; $5CB9: $A1
    ld c, $F1                                     ; $5CBA: $0E $F1
    jr c, jr_02A_5C85                             ; $5CBC: $38 $C7

    dec a                                         ; $5CBE: $3D
    ld a, h                                       ; $5CBF: $7C
    nop                                           ; $5CC0: $00
    ld d, b                                       ; $5CC1: $50
    ld a, e                                       ; $5CC2: $7B
    nop                                           ; $5CC3: $00
    ld a, d                                       ; $5CC4: $7A
    inc b                                         ; $5CC5: $04
    ld a, [hl-]                                   ; $5CC6: $3A
    cp d                                          ; $5CC7: $BA
    inc d                                         ; $5CC8: $14
    sub $2E                                       ; $5CC9: $D6 $2E
    inc b                                         ; $5CCB: $04
    and $30                                       ; $5CCC: $E6 $30
    pop hl                                        ; $5CCE: $E1
    dec a                                         ; $5CCF: $3D
    ld a, b                                       ; $5CD0: $78
    nop                                           ; $5CD1: $00
    rra                                           ; $5CD2: $1F
    adc b                                         ; $5CD3: $88
    nop                                           ; $5CD4: $00
    rrca                                          ; $5CD5: $0F
    ld l, a                                       ; $5CD6: $6F
    rlca                                          ; $5CD7: $07
    call nc, $FB03                                ; $5CD8: $D4 $03 $FB
    ld bc, $FD5F                                  ; $5CDB: $01 $5F $FD
    jr nc, @-$02                                  ; $5CDE: $30 $FC

    dec a                                         ; $5CE0: $3D
    and b                                         ; $5CE1: $A0
    inc bc                                        ; $5CE2: $03
    inc bc                                        ; $5CE3: $03
    ld [bc], a                                    ; $5CE4: $02
    ld l, b                                       ; $5CE5: $68
    ld b, $00                                     ; $5CE6: $06 $00
    or l                                          ; $5CE8: $B5
    ld a, b                                       ; $5CE9: $78
    xor h                                         ; $5CEA: $AC
    ld [hl], e                                    ; $5CEB: $73
    ld [hl], h                                    ; $5CEC: $74
    ld h, a                                       ; $5CED: $67
    ld h, d                                       ; $5CEE: $62
    ld l, b                                       ; $5CEF: $68
    rlca                                          ; $5CF0: $07
    inc b                                         ; $5CF1: $04
    ld h, b                                       ; $5CF2: $60
    ld b, c                                       ; $5CF3: $41
    ld b, b                                       ; $5CF4: $40
    ld b, b                                       ; $5CF5: $40
    halt                                          ; $5CF6: $76
    add b                                         ; $5CF7: $80
    inc [hl]                                      ; $5CF8: $34
    add e                                         ; $5CF9: $83
    ldh [c], a                                    ; $5CFA: $E2
    dec bc                                        ; $5CFB: $0B
    jp z, $CD13                                   ; $5CFC: $CA $13 $CD

    ld de, $05C4                                  ; $5CFF: $11 $C4 $05
    ld hl, sp+$08                                 ; $5D02: $F8 $08
    ldh [$FF0E], a                                ; $5D04: $E0 $0E
    inc l                                         ; $5D06: $2C
    db $E3                                        ; $5D07: $E3
    ld d, d                                       ; $5D08: $52
    ld [bc], a                                    ; $5D09: $02
    ld e, e                                       ; $5D0A: $5B
    add h                                         ; $5D0B: $84
    add a                                         ; $5D0C: $87
    ld b, h                                       ; $5D0D: $44
    rst RST_00                                    ; $5D0E: $C7
    jr nz, jr_02A_5D2D                            ; $5D0F: $20 $1C

    inc e                                         ; $5D11: $1C
    sbc d                                         ; $5D12: $9A
    db $EC                                        ; $5D13: $EC
    add b                                         ; $5D14: $80
    rst RST_38                                    ; $5D15: $FF
    dec b                                         ; $5D16: $05
    adc b                                         ; $5D17: $88
    sbc a                                         ; $5D18: $9F
    adc b                                         ; $5D19: $88
    or c                                          ; $5D1A: $B1
    add b                                         ; $5D1B: $80
    inc d                                         ; $5D1C: $14
    ld a, [hl]                                    ; $5D1D: $7E
    ld bc, $02E1                                  ; $5D1E: $01 $E1 $02
    di                                            ; $5D21: $F3
    inc b                                         ; $5D22: $04
    rlca                                          ; $5D23: $07
    jp nz, $FC78                                  ; $5D24: $C2 $78 $FC

    db $10                                        ; $5D27: $10
    db $ED                                        ; $5D28: $ED
    ld e, $9E                                     ; $5D29: $1E $9E
    ld b, h                                       ; $5D2B: $44
    ld a, a                                       ; $5D2C: $7F

jr_02A_5D2D:
    sbc a                                         ; $5D2D: $9F
    ld d, l                                       ; $5D2E: $55
    nop                                           ; $5D2F: $00
    rst RST_08                                    ; $5D30: $CF
    inc b                                         ; $5D31: $04
    adc h                                         ; $5D32: $8C
    inc b                                         ; $5D33: $04
    inc a                                         ; $5D34: $3C
    ld c, $A9                                     ; $5D35: $0E $A9
    dec e                                         ; $5D37: $1D
    ld a, h                                       ; $5D38: $7C
    inc b                                         ; $5D39: $04
    cp l                                          ; $5D3A: $BD
    inc b                                         ; $5D3B: $04
    reti                                          ; $5D3C: $D9


    ld b, $E0                                     ; $5D3D: $06 $E0
    ld h, c                                       ; $5D3F: $61
    rrca                                          ; $5D40: $0F
    inc b                                         ; $5D41: $04
    adc h                                         ; $5D42: $8C
    ldh a, [$FF30]                                ; $5D43: $F0 $30
    ret nz                                        ; $5D45: $C0

    ld [hl], b                                    ; $5D46: $70
    ld l, b                                       ; $5D47: $68
    xor d                                         ; $5D48: $AA
    inc l                                         ; $5D49: $2C
    ld e, b                                       ; $5D4A: $58
    inc b                                         ; $5D4B: $04
    add [hl]                                      ; $5D4C: $86
    inc b                                         ; $5D4D: $04
    ld hl, sp+$24                                 ; $5D4E: $F8 $24
    ld c, h                                       ; $5D50: $4C
    db $10                                        ; $5D51: $10
    add h                                         ; $5D52: $84

jr_02A_5D53:
    jr c, @-$76                                   ; $5D53: $38 $88

    db $10                                        ; $5D55: $10
    jp nc, $C20A                                  ; $5D56: $D2 $0A $C2

    ld a, [de]                                    ; $5D59: $1A
    ld d, l                                       ; $5D5A: $55
    ld e, h                                       ; $5D5B: $5C
    ld hl, sp+$2A                                 ; $5D5C: $F8 $2A
    jr c, @+$3C                                   ; $5D5E: $38 $3A

    inc b                                         ; $5D60: $04
    ld e, l                                       ; $5D61: $5D
    inc b                                         ; $5D62: $04
    ld d, l                                       ; $5D63: $55
    scf                                           ; $5D64: $37
    inc b                                         ; $5D65: $04
    cpl                                           ; $5D66: $2F
    inc b                                         ; $5D67: $04
    ld c, l                                       ; $5D68: $4D
    inc l                                         ; $5D69: $2C
    ld h, a                                       ; $5D6A: $67
    ldh a, [$FF8A]                                ; $5D6B: $F0 $8A
    sbc b                                         ; $5D6D: $98
    db $10                                        ; $5D6E: $10
    rst RST_00                                    ; $5D6F: $C7
    jr nz, jr_02A_5D8A                            ; $5D70: $20 $18

    daa                                           ; $5D72: $27
    inc b                                         ; $5D73: $04
    jr jr_02A_5D53                                ; $5D74: $18 $DD

    inc b                                         ; $5D76: $04
    ldh [c], a                                    ; $5D77: $E2
    ld a, l                                       ; $5D78: $7D
    ret z                                         ; $5D79: $C8

    dec b                                         ; $5D7A: $05
    inc e                                         ; $5D7B: $1C
    ld a, a                                       ; $5D7C: $7F
    dec b                                         ; $5D7D: $05
    nop                                           ; $5D7E: $00
    ld hl, $233E                                  ; $5D7F: $21 $3E $23
    inc a                                         ; $5D82: $3C
    ld [de], a                                    ; $5D83: $12
    dec e                                         ; $5D84: $1D
    inc c                                         ; $5D85: $0C
    dec bc                                        ; $5D86: $0B
    xor b                                         ; $5D87: $A8
    ld b, b                                       ; $5D88: $40
    rla                                           ; $5D89: $17

jr_02A_5D8A:
    ld hl, sp-$70                                 ; $5D8A: $F8 $90
    add b                                         ; $5D8C: $80
    sbc d                                         ; $5D8D: $9A
    ret nz                                        ; $5D8E: $C0

jr_02A_5D8F:
    ld sp, $14E0                                  ; $5D8F: $31 $E0 $14
    ld b, h                                       ; $5D92: $44
    inc h                                         ; $5D93: $24
    ld hl, sp+$07                                 ; $5D94: $F8 $07
    rst RST_20                                    ; $5D96: $E7
    rra                                           ; $5D97: $1F
    rst RST_18                                    ; $5D98: $DF
    or $58                                        ; $5D99: $F6 $58
    nop                                           ; $5D9B: $00
    inc e                                         ; $5D9C: $1C
    ld bc, $B83F                                  ; $5D9D: $01 $3F $B8
    inc e                                         ; $5DA0: $1C
    ld d, c                                       ; $5DA1: $51
    ld a, [de]                                    ; $5DA2: $1A
    xor [hl]                                      ; $5DA3: $AE
    rrca                                          ; $5DA4: $0F
    ld [hl], b                                    ; $5DA5: $70
    inc [hl]                                      ; $5DA6: $34
    jr jr_02A_5DC7                                ; $5DA7: $18 $1E

    jr z, @+$06                                   ; $5DA9: $28 $04

    db $DD                                        ; $5DAB: $DD
    or h                                          ; $5DAC: $B4
    ld [$741B], sp                                ; $5DAD: $08 $1B $74
    ld [$3074], sp                                ; $5DB0: $08 $74 $30
    dec b                                         ; $5DB3: $05
    ld [hl], c                                    ; $5DB4: $71
    ld [$B43C], sp                                ; $5DB5: $08 $3C $B4
    inc b                                         ; $5DB8: $04
    add hl, de                                    ; $5DB9: $19
    pop hl                                        ; $5DBA: $E1
    ld d, $8C                                     ; $5DBB: $16 $8C
    ld a, [de]                                    ; $5DBD: $1A
    jr z, jr_02A_5D8F                             ; $5DBE: $28 $CF

    ld [bc], a                                    ; $5DC0: $02
    ldh [rHDMA4], a                               ; $5DC1: $E0 $54
    ld b, $34                                     ; $5DC3: $06 $34
    ld c, $D2                                     ; $5DC5: $0E $D2

jr_02A_5DC7:
    inc [hl]                                      ; $5DC7: $34
    inc d                                         ; $5DC8: $14
    ld a, [hl]                                    ; $5DC9: $7E
    ldh [$FF82], a                                ; $5DCA: $E0 $82
    db $FC                                        ; $5DCC: $FC
    ld l, b                                       ; $5DCD: $68
    cp $AA                                        ; $5DCE: $FE $AA
    dec b                                         ; $5DD0: $05
    ld h, [hl]                                    ; $5DD1: $66
    inc e                                         ; $5DD2: $1C
    ld l, l                                       ; $5DD3: $6D
    inc b                                         ; $5DD4: $04
    dec c                                         ; $5DD5: $0D
    jr jr_02A_5E47                                ; $5DD6: $18 $6F

    sbc d                                         ; $5DD8: $9A
    inc c                                         ; $5DD9: $0C
    dec bc                                        ; $5DDA: $0B
    ld b, b                                       ; $5DDB: $40
    ld h, h                                       ; $5DDC: $64
    inc b                                         ; $5DDD: $04

Call_02A_5DDE:
    db $10                                        ; $5DDE: $10
    sbc l                                         ; $5DDF: $9D
    ld a, b                                       ; $5DE0: $78
    ld l, e                                       ; $5DE1: $6B
    ld a, l                                       ; $5DE2: $7D
    call z, Call_02A_7905                         ; $5DE3: $CC $05 $79
    inc b                                         ; $5DE6: $04
    ld a, d                                       ; $5DE7: $7A
    jr nc, jr_02A_5DEF                            ; $5DE8: $30 $05

    add hl, de                                    ; $5DEA: $19
    ld a, e                                       ; $5DEB: $7B
    inc bc                                        ; $5DEC: $03
    ld hl, sp+$5C                                 ; $5DED: $F8 $5C

jr_02A_5DEF:
    dec b                                         ; $5DEF: $05
    and b                                         ; $5DF0: $A0
    or b                                          ; $5DF1: $B0
    inc b                                         ; $5DF2: $04
    ld b, b                                       ; $5DF3: $40
    cp c                                          ; $5DF4: $B9
    inc b                                         ; $5DF5: $04
    cp b                                          ; $5DF6: $B8
    jr nz, @+$3A                                  ; $5DF7: $20 $38

    ld d, c                                       ; $5DF9: $51
    ld e, c                                       ; $5DFA: $59
    push de                                       ; $5DFB: $D5
    xor d                                         ; $5DFC: $AA
    nop                                           ; $5DFD: $00
    add l                                         ; $5DFE: $85
    ld [bc], a                                    ; $5DFF: $02
    inc a                                         ; $5E00: $3C
    nop                                           ; $5E01: $00
    and $CC                                       ; $5E02: $E6 $CC
    inc e                                         ; $5E04: $1C
    xor l                                         ; $5E05: $AD
    nop                                           ; $5E06: $00
    ldh [c], a                                    ; $5E07: $E2
    ld e, h                                       ; $5E08: $5C
    ld [hl], h                                    ; $5E09: $74
    adc h                                         ; $5E0A: $8C
    ld c, b                                       ; $5E0B: $48
    add e                                         ; $5E0C: $83
    db $10                                        ; $5E0D: $10
    ld d, h                                       ; $5E0E: $54
    rst RST_00                                    ; $5E0F: $C7
    inc b                                         ; $5E10: $04
    rst RST_38                                    ; $5E11: $FF
    inc b                                         ; $5E12: $04
    rra                                           ; $5E13: $1F
    sbc b                                         ; $5E14: $98
    ld a, h                                       ; $5E15: $7C
    call nz, Call_000_3B3C                        ; $5E16: $C4 $3C $3B
    ldh [rNR14], a                                ; $5E19: $E0 $14
    dec b                                         ; $5E1B: $05
    ld l, $B9                                     ; $5E1C: $2E $B9
    ret nz                                        ; $5E1E: $C0

    ld d, b                                       ; $5E1F: $50
    ld d, $9F                                     ; $5E20: $16 $9F
    and c                                         ; $5E22: $A1
    ld a, $B4                                     ; $5E23: $3E $B4
    cp a                                          ; $5E25: $BF
    rlca                                          ; $5E26: $07
    inc b                                         ; $5E27: $04
    ccf                                           ; $5E28: $3F
    db $FC                                        ; $5E29: $FC
    ld l, l                                       ; $5E2A: $6D
    ld b, $B4                                     ; $5E2B: $06 $B4
    dec b                                         ; $5E2D: $05

jr_02A_5E2E:
    ld d, b                                       ; $5E2E: $50
    call z, $8C70                                 ; $5E2F: $CC $70 $8C
    sub d                                         ; $5E32: $92
    or h                                          ; $5E33: $B4
    jp nz, $881A                                  ; $5E34: $C2 $1A $88

    ld b, $F0                                     ; $5E37: $06 $F0
    inc l                                         ; $5E39: $2C
    adc $05                                       ; $5E3A: $CE $05
    jr @+$6A                                      ; $5E3C: $18 $68

    ld d, h                                       ; $5E3E: $54
    inc l                                         ; $5E3F: $2C
    ld b, h                                       ; $5E40: $44
    inc a                                         ; $5E41: $3C
    inc c                                         ; $5E42: $0C
    ld hl, sp-$60                                 ; $5E43: $F8 $A0
    ld [hl], h                                    ; $5E45: $74
    ld e, b                                       ; $5E46: $58

jr_02A_5E47:
    and h                                         ; $5E47: $A4
    jr z, jr_02A_5E8C                             ; $5E48: $28 $42

    ld a, [hl-]                                   ; $5E4A: $3A
    inc b                                         ; $5E4B: $04
    ld b, [hl]                                    ; $5E4C: $46
    rst RST_38                                    ; $5E4D: $FF
    ld c, b                                       ; $5E4E: $48
    ld hl, sp+$74                                 ; $5E4F: $F8 $74
    ld d, b                                       ; $5E51: $50
    ld [$0004], sp                                ; $5E52: $08 $04 $00
    jr nz, jr_02A_5E2E                            ; $5E55: $20 $D7

    inc b                                         ; $5E57: $04
    ld [hl], b                                    ; $5E58: $70
    ld [hl], d                                    ; $5E59: $72
    ld c, h                                       ; $5E5A: $4C
    ldh [c], a                                    ; $5E5B: $E2
    add h                                         ; $5E5C: $84
    inc l                                         ; $5E5D: $2C
    nop                                           ; $5E5E: $00
    db $10                                        ; $5E5F: $10
    ld [$0AEB], a                                 ; $5E60: $EA $EB $0A
    inc b                                         ; $5E63: $04
    ld [$640B], sp                                ; $5E64: $08 $0B $64
    rlca                                          ; $5E67: $07
    and b                                         ; $5E68: $A0
    ld b, b                                       ; $5E69: $40
    add [hl]                                      ; $5E6A: $86

jr_02A_5E6B:
    ld b, h                                       ; $5E6B: $44
    call nc, $9B40                                ; $5E6C: $D4 $40 $9B
    ld c, c                                       ; $5E6F: $49
    sub d                                         ; $5E70: $92
    xor [hl]                                      ; $5E71: $AE
    inc d                                         ; $5E72: $14
    rst RST_38                                    ; $5E73: $FF
    inc b                                         ; $5E74: $04
    db $FC                                        ; $5E75: $FC
    inc b                                         ; $5E76: $04
    ld e, h                                       ; $5E77: $5C
    inc b                                         ; $5E78: $04
    add b                                         ; $5E79: $80
    ld h, c                                       ; $5E7A: $61
    ld e, $8D                                     ; $5E7B: $1E $8D
    ld bc, $246C                                  ; $5E7D: $01 $6C $24
    ld c, b                                       ; $5E80: $48
    rrca                                          ; $5E81: $0F
    db $10                                        ; $5E82: $10
    ld e, d                                       ; $5E83: $5A
    ccf                                           ; $5E84: $3F
    inc b                                         ; $5E85: $04
    ld h, b                                       ; $5E86: $60
    inc b                                         ; $5E87: $04
    sbc b                                         ; $5E88: $98
    rra                                           ; $5E89: $1F
    ld b, b                                       ; $5E8A: $40
    cpl                                           ; $5E8B: $2F

jr_02A_5E8C:
    xor d                                         ; $5E8C: $AA
    inc b                                         ; $5E8D: $04
    rla                                           ; $5E8E: $17
    inc b                                         ; $5E8F: $04
    dec hl                                        ; $5E90: $2B
    inc b                                         ; $5E91: $04
    dec [hl]                                      ; $5E92: $35
    inc b                                         ; $5E93: $04
    ld c, $F1                                     ; $5E94: $0E $F1
    inc l                                         ; $5E96: $2C
    xor h                                         ; $5E97: $AC
    ld a, b                                       ; $5E98: $78
    inc b                                         ; $5E99: $04
    ld [hl], b                                    ; $5E9A: $70
    inc bc                                        ; $5E9B: $03
    jr nc, jr_02A_5EBE                            ; $5E9C: $30 $20

    or h                                          ; $5E9E: $B4
    rlca                                          ; $5E9F: $07
    jr nz, @+$06                                  ; $5EA0: $20 $04

    call c, $F43A                                 ; $5EA2: $DC $3A $F4
    or $18                                        ; $5EA5: $F6 $18
    ld e, [hl]                                    ; $5EA7: $5E
    and $24                                       ; $5EA8: $E6 $24
    adc $44                                       ; $5EAA: $CE $44
    ld e, h                                       ; $5EAC: $5C
    jp Jump_000_1C00                              ; $5EAD: $C3 $00 $1C


    ld c, b                                       ; $5EB0: $48
    jr c, jr_02A_5E6B                             ; $5EB1: $38 $B8

    ld b, b                                       ; $5EB3: $40
    ld a, h                                       ; $5EB4: $7C
    inc d                                         ; $5EB5: $14
    ld h, c                                       ; $5EB6: $61
    add hl, bc                                    ; $5EB7: $09
    ld d, [hl]                                    ; $5EB8: $56
    ld b, d                                       ; $5EB9: $42
    dec b                                         ; $5EBA: $05
    ld e, h                                       ; $5EBB: $5C
    inc [hl]                                      ; $5EBC: $34
    ld c, e                                       ; $5EBD: $4B

jr_02A_5EBE:
    ld de, $146E                                  ; $5EBE: $11 $6E $14
    ld a, d                                       ; $5EC1: $7A
    ld hl, sp+$3C                                 ; $5EC2: $F8 $3C
    jr nc, jr_02A_5F3A                            ; $5EC4: $30 $74

    adc h                                         ; $5EC6: $8C
    db $FD                                        ; $5EC7: $FD
    add l                                         ; $5EC8: $85
    add c                                         ; $5EC9: $81
    add h                                         ; $5ECA: $84
    xor b                                         ; $5ECB: $A8
    inc b                                         ; $5ECC: $04
    add d                                         ; $5ECD: $82
    inc e                                         ; $5ECE: $1C
    adc c                                         ; $5ECF: $89
    db $10                                        ; $5ED0: $10
    sub b                                         ; $5ED1: $90
    adc [hl]                                      ; $5ED2: $8E
    ld c, c                                       ; $5ED3: $49
    ld c, e                                       ; $5ED4: $4B
    ld [de], a                                    ; $5ED5: $12
    ld l, h                                       ; $5ED6: $6C

jr_02A_5ED7:
    ld [bc], a                                    ; $5ED7: $02
    ld bc, $223C                                  ; $5ED8: $01 $3C $22
    inc e                                         ; $5EDB: $1C
    db $ED                                        ; $5EDC: $ED
    adc h                                         ; $5EDD: $8C
    ld d, h                                       ; $5EDE: $54
    rrca                                          ; $5EDF: $0F
    rst RST_08                                    ; $5EE0: $CF
    db $10                                        ; $5EE1: $10
    cp b                                          ; $5EE2: $B8
    inc h                                         ; $5EE3: $24
    inc h                                         ; $5EE4: $24
    ld c, b                                       ; $5EE5: $48
    and [hl]                                      ; $5EE6: $A6
    rlca                                          ; $5EE7: $07
    inc bc                                        ; $5EE8: $03
    nop                                           ; $5EE9: $00
    rra                                           ; $5EEA: $1F
    ld a, a                                       ; $5EEB: $7F
    jr z, jr_02A_5F32                             ; $5EEC: $28 $44

    ret nz                                        ; $5EEE: $C0

    db $DD                                        ; $5EEF: $DD
    ld d, b                                       ; $5EF0: $50
    nop                                           ; $5EF1: $00
    inc c                                         ; $5EF2: $0C
    inc d                                         ; $5EF3: $14
    jp $C600                                      ; $5EF4: $C3 $00 $C6


    jr z, @+$2F                                   ; $5EF7: $28 $2D

    di                                            ; $5EF9: $F3
    ldh a, [$FF94]                                ; $5EFA: $F0 $94
    ld a, b                                       ; $5EFC: $78
    inc h                                         ; $5EFD: $24
    nop                                           ; $5EFE: $00
    adc d                                         ; $5EFF: $8A
    add hl, bc                                    ; $5F00: $09
    inc e                                         ; $5F01: $1C
    rlca                                          ; $5F02: $07
    add a                                         ; $5F03: $87
    ld [$1005], sp                                ; $5F04: $08 $05 $10
    and h                                         ; $5F07: $A4
    inc de                                        ; $5F08: $13
    jr nz, jr_02A_5F8A                            ; $5F09: $20 $7F

    add hl, de                                    ; $5F0B: $19
    inc b                                         ; $5F0C: $04
    or l                                          ; $5F0D: $B5
    db $F4                                        ; $5F0E: $F4
    inc b                                         ; $5F0F: $04
    jr nz, @-$15                                  ; $5F10: $20 $E9

    inc c                                         ; $5F12: $0C
    ld d, [hl]                                    ; $5F13: $56
    adc $04                                       ; $5F14: $CE $04
    and $04                                       ; $5F16: $E6 $04
    ldh [rDIV], a                                 ; $5F18: $E0 $04
    jr c, jr_02A_5F22                             ; $5F1A: $38 $06

    ld b, b                                       ; $5F1C: $40
    ld b, b                                       ; $5F1D: $40
    inc b                                         ; $5F1E: $04
    ld h, b                                       ; $5F1F: $60
    ld c, $15                                     ; $5F20: $0E $15

jr_02A_5F22:
    ld l, d                                       ; $5F22: $6A
    ld d, $29                                     ; $5F23: $16 $29
    ld hl, sp+$1C                                 ; $5F25: $F8 $1C
    ld a, b                                       ; $5F27: $78
    jr nc, jr_02A_5ED7                            ; $5F28: $30 $AD

    inc b                                         ; $5F2A: $04
    inc b                                         ; $5F2B: $04
    ld a, h                                       ; $5F2C: $7C
    ld [bc], a                                    ; $5F2D: $02
    ld c, d                                       ; $5F2E: $4A
    ld a, [hl]                                    ; $5F2F: $7E
    cp c                                          ; $5F30: $B9
    ld d, b                                       ; $5F31: $50

jr_02A_5F32:
    rst RST_08                                    ; $5F32: $CF
    inc [hl]                                      ; $5F33: $34
    sbc $F8                                       ; $5F34: $DE $F8
    sbc b                                         ; $5F36: $98
    ld h, a                                       ; $5F37: $67
    inc hl                                        ; $5F38: $23
    sbc b                                         ; $5F39: $98

jr_02A_5F3A:
    inc d                                         ; $5F3A: $14
    jr nc, jr_02A_5F83                            ; $5F3B: $30 $46

    inc b                                         ; $5F3D: $04
    inc c                                         ; $5F3E: $0C
    adc b                                         ; $5F3F: $88
    xor e                                         ; $5F40: $AB
    dec a                                         ; $5F41: $3D
    dec bc                                        ; $5F42: $0B
    inc b                                         ; $5F43: $04
    call nz, $0111                                ; $5F44: $C4 $11 $01
    db $EC                                        ; $5F47: $EC
    ld l, b                                       ; $5F48: $68
    ld d, d                                       ; $5F49: $52
    ld [hl-], a                                   ; $5F4A: $32
    ld a, b                                       ; $5F4B: $78
    ld [hl], d                                    ; $5F4C: $72
    inc b                                         ; $5F4D: $04
    ld h, l                                       ; $5F4E: $65
    ld [$CD29], sp                                ; $5F4F: $08 $29 $CD
    xor d                                         ; $5F52: $AA
    inc b                                         ; $5F53: $04
    ld sp, $4D04                                  ; $5F54: $31 $04 $4D
    inc b                                         ; $5F57: $04
    ld h, h                                       ; $5F58: $64
    cp $C1                                        ; $5F59: $FE $C1
    cp d                                          ; $5F5B: $BA
    inc b                                         ; $5F5C: $04
    jp $0039                                      ; $5F5D: $C3 $39 $00


    ld c, h                                       ; $5F60: $4C
    ld [hl], b                                    ; $5F61: $70
    dec b                                         ; $5F62: $05
    dec b                                         ; $5F63: $05
    cp a                                          ; $5F64: $BF
    inc b                                         ; $5F65: $04
    adc d                                         ; $5F66: $8A
    inc e                                         ; $5F67: $1C
    ld [$D404], sp                                ; $5F68: $08 $04 $D4
    ld c, [hl]                                    ; $5F6B: $4E
    ld bc, $6675                                  ; $5F6C: $01 $75 $66
    inc b                                         ; $5F6F: $04
    ret c                                         ; $5F70: $D8

    ld de, $040F                                  ; $5F71: $11 $0F $04
    inc de                                        ; $5F74: $13
    inc b                                         ; $5F75: $04
    ld d, [hl]                                    ; $5F76: $56
    dec c                                         ; $5F77: $0D
    inc b                                         ; $5F78: $04
    ld b, $04                                     ; $5F79: $06 $04
    inc bc                                        ; $5F7B: $03
    add hl, hl                                    ; $5F7C: $29
    ret nc                                        ; $5F7D: $D0

    ld a, [bc]                                    ; $5F7E: $0A
    xor d                                         ; $5F7F: $AA
    nop                                           ; $5F80: $00
    inc d                                         ; $5F81: $14
    nop                                           ; $5F82: $00

jr_02A_5F83:
    ld [$F6E0], a                                 ; $5F83: $EA $E0 $F6

jr_02A_5F86:
    jr nz, jr_02A_5F86                            ; $5F86: $20 $FE

    xor b                                         ; $5F88: $A8
    inc b                                         ; $5F89: $04

jr_02A_5F8A:
    ld a, [hl]                                    ; $5F8A: $7E
    inc b                                         ; $5F8B: $04
    sbc [hl]                                      ; $5F8C: $9E
    dec a                                         ; $5F8D: $3D
    nop                                           ; $5F8E: $00
    ld c, e                                       ; $5F8F: $4B
    ld b, b                                       ; $5F90: $40
    ld e, l                                       ; $5F91: $5D
    nop                                           ; $5F92: $00
    nop                                           ; $5F93: $00
    ld a, a                                       ; $5F94: $7F
    rlca                                          ; $5F95: $07
    inc b                                         ; $5F96: $04
    ld a, c                                       ; $5F97: $79
    rst RST_38                                    ; $5F98: $FF
    inc b                                         ; $5F99: $04
    ld d, b                                       ; $5F9A: $50
    cp a                                          ; $5F9B: $BF
    nop                                           ; $5F9C: $00
    sbc a                                         ; $5F9D: $9F
    nop                                           ; $5F9E: $00
    adc a                                         ; $5F9F: $8F
    xor a                                         ; $5FA0: $AF
    rst RST_00                                    ; $5FA1: $C7
    rst RST_10                                    ; $5FA2: $D7
    sub b                                         ; $5FA3: $90
    ld a, c                                       ; $5FA4: $79
    ldh a, [$FFF5]                                ; $5FA5: $F0 $F5
    ld c, $F2                                     ; $5FA7: $0E $F2
    ldh [$FFE2], a                                ; $5FA9: $E0 $E2
    ret nz                                        ; $5FAB: $C0

    ld b, [hl]                                    ; $5FAC: $46
    jp z, $CF79                                   ; $5FAD: $CA $79 $CF

    ret nc                                        ; $5FB0: $D0

    rrca                                          ; $5FB1: $0F
    ld [$671B], sp                                ; $5FB2: $08 $1B $67
    dec l                                         ; $5FB5: $2D
    add sp, $07                                   ; $5FB6: $E8 $07
    ld [$0866], sp                                ; $5FB8: $08 $66 $08
    ld a, c                                       ; $5FBB: $79
    db $FC                                        ; $5FBC: $FC
    ld [$E155], sp                                ; $5FBD: $08 $55 $E1
    ld [$08DE], sp                                ; $5FC0: $08 $DE $08
    cp a                                          ; $5FC3: $BF
    ld [$087F], sp                                ; $5FC4: $08 $7F $08
    ld e, d                                       ; $5FC7: $5A
    ld a, [hl]                                    ; $5FC8: $7E
    ld [$717D], sp                                ; $5FC9: $08 $7D $71
    nop                                           ; $5FCC: $00
    ld a, [$7A00]                                 ; $5FCD: $FA $00 $7A
    xor b                                         ; $5FD0: $A8
    nop                                           ; $5FD1: $00
    ld a, [hl-]                                   ; $5FD2: $3A
    nop                                           ; $5FD3: $00
    dec de                                        ; $5FD4: $1B
    nop                                           ; $5FD5: $00
    ld l, e                                       ; $5FD6: $6B
    dec bc                                        ; $5FD7: $0B
    push af                                       ; $5FD8: $F5
    ld l, [hl]                                    ; $5FD9: $6E
    dec b                                         ; $5FDA: $05
    add hl, bc                                    ; $5FDB: $09
    ld a, c                                       ; $5FDC: $79
    cp $04                                        ; $5FDD: $FE $04
    ret c                                         ; $5FDF: $D8

    ld [bc], a                                    ; $5FE0: $02
    ld a, $58                                     ; $5FE1: $3E $58
    cp [hl]                                       ; $5FE3: $BE
    add hl, bc                                    ; $5FE4: $09

jr_02A_5FE5:
    ld a, a                                       ; $5FE5: $7F
    rlca                                          ; $5FE6: $07
    ld b, $D3                                     ; $5FE7: $06 $D3
    db $DB                                        ; $5FE9: $DB
    jp hl                                         ; $5FEA: $E9


    dec b                                         ; $5FEB: $05
    db $ED                                        ; $5FEC: $ED
    db $EC                                        ; $5FED: $EC
    xor $F4                                       ; $5FEE: $EE $F4
    or $01                                        ; $5FF0: $F6 $01
    ld a, [$4202]                                 ; $5FF2: $FA $02 $42
    ld hl, sp+$00                                 ; $5FF5: $F8 $00
    add b                                         ; $5FF7: $80
    sbc d                                         ; $5FF8: $9A
    nop                                           ; $5FF9: $00
    ld a, [de]                                    ; $5FFA: $1A
    ld [$005A], sp                                ; $5FFB: $08 $5A $00
    ld [$0465], sp                                ; $5FFE: $08 $65 $04
    ld l, c                                       ; $6001: $69
    inc d                                         ; $6002: $14
    pop hl                                        ; $6003: $E1
    inc h                                         ; $6004: $24
    pop de                                        ; $6005: $D1
    push bc                                       ; $6006: $C5
    ld c, b                                       ; $6007: $48
    nop                                           ; $6008: $00
    ld b, $E8                                     ; $6009: $06 $E8
    ld h, [hl]                                    ; $600B: $66
    ld [$F002], sp                                ; $600C: $08 $02 $F0
    inc [hl]                                      ; $600F: $34

Call_02A_6010:
    ld [hl-], a                                   ; $6010: $32
    ld [hl], h                                    ; $6011: $74
    jr jr_02A_601C                                ; $6012: $18 $08

    jr nc, jr_02A_601E                            ; $6014: $30 $08

    ld bc, $1668                                  ; $6016: $01 $68 $16
    inc bc                                        ; $6019: $03
    sub b                                         ; $601A: $90
    db $FD                                        ; $601B: $FD

jr_02A_601C:
    adc b                                         ; $601C: $88
    ei                                            ; $601D: $FB

jr_02A_601E:
    inc c                                         ; $601E: $0C
    ld bc, $BEFF                                  ; $601F: $01 $FF $BE
    inc c                                         ; $6022: $0C
    ld sp, hl                                     ; $6023: $F9
    and b                                         ; $6024: $A0
    dec bc                                        ; $6025: $0B
    ld bc, $0CB8                                  ; $6026: $01 $B8 $0C
    ret nz                                        ; $6029: $C0

    sub d                                         ; $602A: $92
    ld a, b                                       ; $602B: $78
    sbc [hl]                                      ; $602C: $9E
    sbc $0B                                       ; $602D: $DE $0B
    adc [hl]                                      ; $602F: $8E
    xor $0D                                       ; $6030: $EE $0D
    ld c, $35                                     ; $6032: $0E $35
    ld l, [hl]                                    ; $6034: $6E
    ld a, a                                       ; $6035: $7F
    rlca                                          ; $6036: $07
    ld b, $F9                                     ; $6037: $06 $F9
    ld [bc], a                                    ; $6039: $02
    db $FD                                        ; $603A: $FD
    nop                                           ; $603B: $00
    ld d, c                                       ; $603C: $51
    db $FC                                        ; $603D: $FC
    nop                                           ; $603E: $00
    ld hl, sp+$01                                 ; $603F: $F8 $01
    ld a, [$F6F4]                                 ; $6041: $FA $F4 $F6
    add hl, bc                                    ; $6044: $09
    inc d                                         ; $6045: $14
    ld l, $D0                                     ; $6046: $2E $D0
    cpl                                           ; $6048: $2F
    ld a, [bc]                                    ; $6049: $0A
    nop                                           ; $604A: $00
    ld bc, $5C1C                                  ; $604B: $01 $1C $5C
    nop                                           ; $604E: $00
    sbc h                                         ; $604F: $9C
    ld e, [hl]                                    ; $6050: $5E

jr_02A_6051:
    sbc [hl]                                      ; $6051: $9E
    ld c, a                                       ; $6052: $4F
    xor a                                         ; $6053: $AF
    rlca                                          ; $6054: $07
    jr nz, jr_02A_5FE5                            ; $6055: $20 $8E

    push hl                                       ; $6057: $E5
    ld d, b                                       ; $6058: $50
    ret z                                         ; $6059: $C8

    ld [$0170], sp                                ; $605A: $08 $70 $01
    nop                                           ; $605D: $00
    inc bc                                        ; $605E: $03
    nop                                           ; $605F: $00
    ld c, d                                       ; $6060: $4A
    sub e                                         ; $6061: $93
    ld [$8133], sp                                ; $6062: $08 $33 $81
    nop                                           ; $6065: $00
    add b                                         ; $6066: $80
    ret                                           ; $6067: $C9


    dec bc                                        ; $6068: $0B
    sub h                                         ; $6069: $94
    nop                                           ; $606A: $00
    sbc e                                         ; $606B: $9B
    jp $E600                                      ; $606C: $C3 $00 $E6


    nop                                           ; $606F: $00
    db $FC                                        ; $6070: $FC
    db $FD                                        ; $6071: $FD
    inc b                                         ; $6072: $04
    ld sp, hl                                     ; $6073: $F9
    ld a, [$E2E1]                                 ; $6074: $FA $E1 $E2
    dec de                                        ; $6077: $1B
    and b                                         ; $6078: $A0
    scf                                           ; $6079: $37
    ld b, a                                       ; $607A: $47
    add d                                         ; $607B: $82
    dec c                                         ; $607C: $0D
    ld [hl], a                                    ; $607D: $77
    add a                                         ; $607E: $87
    db $F4                                        ; $607F: $F4
    inc b                                         ; $6080: $04
    ldh a, [$FFE0]                                ; $6081: $F0 $E0
    adc [hl]                                      ; $6083: $8E
    ld [$9000], a                                 ; $6084: $EA $00 $90
    nop                                           ; $6087: $00
    call nz, $C630                                ; $6088: $C4 $30 $C6
    ld [$CEC0], sp                                ; $608B: $08 $C0 $CE
    ld [$8040], sp                                ; $608E: $08 $40 $80
    ld [hl], b                                    ; $6091: $70
    ld l, b                                       ; $6092: $68
    db $10                                        ; $6093: $10
    ld [$B87F], sp                                ; $6094: $08 $7F $B8
    inc b                                         ; $6097: $04

jr_02A_6098:
    inc bc                                        ; $6098: $03
    nop                                           ; $6099: $00
    ld b, b                                       ; $609A: $40
    nop                                           ; $609B: $00
    ld b, b                                       ; $609C: $40
    jr nc, jr_02A_60A7                            ; $609D: $30 $08

    and [hl]                                      ; $609F: $A6
    ld hl, sp+$06                                 ; $60A0: $F8 $06
    jr z, jr_02A_6098                             ; $60A2: $28 $F4

    or $0A                                        ; $60A4: $F6 $0A
    nop                                           ; $60A6: $00

jr_02A_60A7:
    ld sp, hl                                     ; $60A7: $F9
    xor l                                         ; $60A8: $AD
    nop                                           ; $60A9: $00
    add hl, sp                                    ; $60AA: $39
    nop                                           ; $60AB: $00
    dec c                                         ; $60AC: $0D
    nop                                           ; $60AD: $00
    sbc c                                         ; $60AE: $99
    ld de, $0008                                  ; $60AF: $11 $08 $00
    ld b, a                                       ; $60B2: $47
    or a                                          ; $60B3: $B7
    ld d, b                                       ; $60B4: $50
    xor b                                         ; $60B5: $A8
    ld e, b                                       ; $60B6: $58
    jr nz, jr_02A_6051                            ; $60B7: $20 $98

    and e                                         ; $60B9: $A3
    inc a                                         ; $60BA: $3C
    ret c                                         ; $60BB: $D8

    ret nz                                        ; $60BC: $C0

    ld bc, $0179                                  ; $60BD: $01 $79 $01
    ld d, b                                       ; $60C0: $50
    jr c, jr_02A_6133                             ; $60C1: $38 $70

    ld b, l                                       ; $60C3: $45
    ld a, a                                       ; $60C4: $7F
    ld b, b                                       ; $60C5: $40
    pop bc                                        ; $60C6: $C1
    add b                                         ; $60C7: $80
    cp [hl]                                       ; $60C8: $BE
    ld b, b                                       ; $60C9: $40
    ld b, b                                       ; $60CA: $40
    ld [$DF10], sp                                ; $60CB: $08 $10 $DF
    ld c, $31                                     ; $60CE: $0E $31
    jr jr_02A_60F1                                ; $60D0: $18 $1F

    ld bc, $1902                                  ; $60D2: $01 $02 $19
    dec b                                         ; $60D5: $05
    sbc d                                         ; $60D6: $9A
    ld [hl], c                                    ; $60D7: $71
    ldh a, [c]                                    ; $60D8: $F2
    ld [$080A], sp                                ; $60D9: $08 $0A $08
    add sp, $08                                   ; $60DC: $E8 $08
    rla                                           ; $60DE: $17
    ld c, b                                       ; $60DF: $48
    db $10                                        ; $60E0: $10
    ret nc                                        ; $60E1: $D0

    ld sp, hl                                     ; $60E2: $F9
    ldh [$FF08], a                                ; $60E3: $E0 $08
    add sp, $08                                   ; $60E5: $E8 $08
    ld sp, hl                                     ; $60E7: $F9
    add sp, $31                                   ; $60E8: $E8 $31
    rlca                                          ; $60EA: $07
    ld [bc], a                                    ; $60EB: $02
    cp b                                          ; $60EC: $B8
    ld b, $16                                     ; $60ED: $06 $16
    db $10                                        ; $60EF: $10
    ld d, h                                       ; $60F0: $54

jr_02A_60F1:
    ld h, b                                       ; $60F1: $60
    jr z, @-$7C                                   ; $60F2: $28 $82

    ld e, h                                       ; $60F4: $5C
    jp nz, Jump_02A_4208                          ; $60F5: $C2 $08 $42

    jr nc, jr_02A_614F                            ; $60F8: $30 $55

    inc c                                         ; $60FA: $0C
    jr @+$03                                      ; $60FB: $18 $01

    ld [$0803], sp                                ; $60FD: $08 $03 $08
    ld h, e                                       ; $6100: $63
    ld [$1E71], sp                                ; $6101: $08 $71 $1E
    ld [$08C0], sp                                ; $6104: $08 $C0 $08
    inc [hl]                                      ; $6107: $34
    ld [bc], a                                    ; $6108: $02
    ld [hl+], a                                   ; $6109: $22
    jr jr_02A_6165                                ; $610A: $18 $59

    sub $08                                       ; $610C: $D6 $08
    and b                                         ; $610E: $A0
    db $D3                                        ; $610F: $D3
    sub b                                         ; $6110: $90
    ldh a, [$FFF4]                                ; $6111: $F0 $F4
    db $10                                        ; $6113: $10
    adc e                                         ; $6114: $8B
    nop                                           ; $6115: $00
    ld [hl], h                                    ; $6116: $74
    ld [hl], a                                    ; $6117: $77
    ld c, [hl]                                    ; $6118: $4E
    ld b, b                                       ; $6119: $40
    cp h                                          ; $611A: $BC
    ld l, e                                       ; $611B: $6B
    jp hl                                         ; $611C: $E9


    ld c, e                                       ; $611D: $4B
    sbc [hl]                                      ; $611E: $9E
    db $10                                        ; $611F: $10
    ld b, b                                       ; $6120: $40
    inc a                                         ; $6121: $3C
    nop                                           ; $6122: $00
    add b                                         ; $6123: $80
    nop                                           ; $6124: $00
    jr z, jr_02A_6167                             ; $6125: $28 $40

    ld bc, $1F30                                  ; $6127: $01 $30 $1F
    adc d                                         ; $612A: $8A
    dec [hl]                                      ; $612B: $35
    dec e                                         ; $612C: $1D
    ld h, d                                       ; $612D: $62
    dec l                                         ; $612E: $2D
    ld e, h                                       ; $612F: $5C
    ld d, d                                       ; $6130: $52
    add hl, bc                                    ; $6131: $09
    ccf                                           ; $6132: $3F

jr_02A_6133:
    ld d, b                                       ; $6133: $50
    add hl, bc                                    ; $6134: $09
    ld a, b                                       ; $6135: $78
    ld hl, sp+$03                                 ; $6136: $F8 $03
    add b                                         ; $6138: $80
    ld [$38C6], sp                                ; $6139: $08 $C6 $38
    ld h, a                                       ; $613C: $67
    sbc b                                         ; $613D: $98
    or a                                          ; $613E: $B7
    ld c, b                                       ; $613F: $48
    cp b                                          ; $6140: $B8
    inc bc                                        ; $6141: $03
    ld b, h                                       ; $6142: $44
    ei                                            ; $6143: $FB
    inc b                                         ; $6144: $04
    db $FC                                        ; $6145: $FC
    ld [bc], a                                    ; $6146: $02

jr_02A_6147:
    rst RST_00                                    ; $6147: $C7
    add b                                         ; $6148: $80
    inc bc                                        ; $6149: $03
    ld [hl], l                                    ; $614A: $75
    add b                                         ; $614B: $80
    ld [$0890], sp                                ; $614C: $08 $90 $08

jr_02A_614F:
    ret nz                                        ; $614F: $C0

    ld a, [hl-]                                   ; $6150: $3A
    ld bc, $E16C                                  ; $6151: $01 $6C $E1
    inc bc                                        ; $6154: $03
    ret nz                                        ; $6155: $C0

    ld [$060E], sp                                ; $6156: $08 $0E $06
    add [hl]                                      ; $6159: $86
    ld [hl], $20                                  ; $615A: $36 $20
    dec hl                                        ; $615C: $2B
    ld a, b                                       ; $615D: $78
    inc c                                         ; $615E: $0C
    ld b, b                                       ; $615F: $40
    ld h, $20                                     ; $6160: $26 $20
    inc e                                         ; $6162: $1C
    jr jr_02A_618E                                ; $6163: $18 $29

jr_02A_6165:
    ld d, e                                       ; $6165: $53

jr_02A_6166:
    inc b                                         ; $6166: $04

jr_02A_6167:
    ld [$3822], sp                                ; $6167: $08 $22 $38
    ld [hl], c                                    ; $616A: $71
    jr nc, jr_02A_6166                            ; $616B: $30 $F9

    jr c, jr_02A_6177                             ; $616D: $38 $08

    rlca                                          ; $616F: $07
    inc sp                                        ; $6170: $33
    dec sp                                        ; $6171: $3B
    ld [$4C70], sp                                ; $6172: $08 $70 $4C
    ld c, a                                       ; $6175: $4F
    ld a, a                                       ; $6176: $7F

jr_02A_6177:
    db $EB                                        ; $6177: $EB
    nop                                           ; $6178: $00
    jr jr_02A_617B                                ; $6179: $18 $00

jr_02A_617B:
    ld c, e                                       ; $617B: $4B
    ld [bc], a                                    ; $617C: $02
    cp b                                          ; $617D: $B8
    nop                                           ; $617E: $00
    ret nz                                        ; $617F: $C0

    ld a, [bc]                                    ; $6180: $0A
    ld b, d                                       ; $6181: $42
    ld c, [hl]                                    ; $6182: $4E
    adc $F2                                       ; $6183: $CE $F2
    nop                                           ; $6185: $00
    ldh [c], a                                    ; $6186: $E2
    nop                                           ; $6187: $00
    ld h, d                                       ; $6188: $62
    and [hl]                                      ; $6189: $A6
    ld [bc], a                                    ; $618A: $02
    and h                                         ; $618B: $A4
    nop                                           ; $618C: $00
    ccf                                           ; $618D: $3F

jr_02A_618E:
    ld b, b                                       ; $618E: $40
    add hl, bc                                    ; $618F: $09
    ret nc                                        ; $6190: $D0

    nop                                           ; $6191: $00
    ld d, l                                       ; $6192: $55
    ld e, a                                       ; $6193: $5F
    ld [$08DF], sp                                ; $6194: $08 $DF $08
    ld a, [hl+]                                   ; $6197: $2A
    ld [$0810], sp                                ; $6198: $08 $10 $08
    add [hl]                                      ; $619B: $86
    nop                                           ; $619C: $00

jr_02A_619D:
    jr jr_02A_619D                                ; $619D: $18 $FE

    ld bc, $20FF                                  ; $619F: $01 $FF $20
    add hl, bc                                    ; $61A2: $09
    ld a, l                                       ; $61A3: $7D
    xor d                                         ; $61A4: $AA
    ld [$0855], sp                                ; $61A5: $08 $55 $08
    push de                                       ; $61A8: $D5
    ld [$08A2], sp                                ; $61A9: $08 $A2 $08
    dec b                                         ; $61AC: $05
    and b                                         ; $61AD: $A0
    ld [$0807], sp                                ; $61AE: $08 $07 $08
    ld b, $F8                                     ; $61B1: $06 $F8
    jp z, $EA30                                   ; $61B3: $CA $30 $EA

    adc e                                         ; $61B6: $8B
    ret nc                                        ; $61B7: $D0

    reti                                          ; $61B8: $D9


    jr nz, jr_02A_6230                            ; $61B9: $20 $75

    ld c, b                                       ; $61BB: $48
    inc h                                         ; $61BC: $24
    ld e, c                                       ; $61BD: $59
    ld [$00AC], sp                                ; $61BE: $08 $AC $00
    ld a, [hl]                                    ; $61C1: $7E
    ld [$0CFE], sp                                ; $61C2: $08 $FE $0C
    jr c, jr_02A_6147                             ; $61C5: $38 $80

    jr c, @+$55                                   ; $61C7: $38 $53

    add $20                                       ; $61C9: $C6 $20
    ld l, $80                                     ; $61CB: $2E $80
    ld bc, $2070                                  ; $61CD: $01 $70 $20
    ld [$021E], sp                                ; $61D0: $08 $1E $02
    ld h, b                                       ; $61D3: $60
    ld de, $20F8                                  ; $61D4: $11 $F8 $20
    jr jr_02A_61D9                                ; $61D7: $18 $00

jr_02A_61D9:
    ld b, b                                       ; $61D9: $40
    call nc, $F109                                ; $61DA: $D4 $09 $F1
    daa                                           ; $61DD: $27
    nop                                           ; $61DE: $00
    and a                                         ; $61DF: $A7
    ld [$9757], sp                                ; $61E0: $08 $57 $97
    dec d                                         ; $61E3: $15
    ld c, a                                       ; $61E4: $4F
    adc a                                         ; $61E5: $8F
    and b                                         ; $61E6: $A0
    ld e, b                                       ; $61E7: $58
    sub h                                         ; $61E8: $94
    ld e, b                                       ; $61E9: $58
    ld [$8A71], sp                                ; $61EA: $08 $71 $8A
    nop                                           ; $61ED: $00
    and l                                         ; $61EE: $A5
    and h                                         ; $61EF: $A4
    adc h                                         ; $61F0: $8C
    nop                                           ; $61F1: $00
    ld hl, sp+$00                                 ; $61F2: $F8 $00
    ret nz                                        ; $61F4: $C0

    xor d                                         ; $61F5: $AA
    nop                                           ; $61F6: $00
    ld [de], a                                    ; $61F7: $12
    ld c, b                                       ; $61F8: $48
    add hl, bc                                    ; $61F9: $09
    ld [$7A44], sp                                ; $61FA: $08 $44 $7A
    rrca                                          ; $61FD: $0F
    ld h, b                                       ; $61FE: $60
    db $10                                        ; $61FF: $10
    ret nc                                        ; $6200: $D0

    ld [$50AF], sp                                ; $6201: $08 $AF $50
    ld e, a                                       ; $6204: $5F
    jr nz, jr_02A_6226                            ; $6205: $20 $1F

    xor d                                         ; $6207: $AA
    ld [$587F], sp                                ; $6208: $08 $7F $58
    rst RST_38                                    ; $620B: $FF
    ld a, d                                       ; $620C: $7A
    cp $08                                        ; $620D: $FE $08
    xor e                                         ; $620F: $AB
    xor d                                         ; $6210: $AA
    ld a, [bc]                                    ; $6211: $0A
    sub $08                                       ; $6212: $D6 $08
    sub [hl]                                      ; $6214: $96
    ld [$08AC], sp                                ; $6215: $08 $AC $08
    ld d, h                                       ; $6218: $54
    push de                                       ; $6219: $D5
    ei                                            ; $621A: $FB
    ld [$088E], sp                                ; $621B: $08 $8E $08
    inc d                                         ; $621E: $14
    ld [$0810], sp                                ; $621F: $08 $10 $08
    ld c, b                                       ; $6222: $48
    jr z, @+$1C                                   ; $6223: $28 $1A

    inc hl                                        ; $6225: $23

jr_02A_6226:
    inc bc                                        ; $6226: $03
    ld a, c                                       ; $6227: $79
    ld d, [hl]                                    ; $6228: $56
    ld b, $A6                                     ; $6229: $06 $A6
    jr z, @+$04                                   ; $622B: $28 $02

    ld d, d                                       ; $622D: $52
    jr z, jr_02A_6238                             ; $622E: $28 $08

jr_02A_6230:
    ld [$6064], sp                                ; $6230: $08 $64 $60
    ldh a, [c]                                    ; $6233: $F2
    jr nc, jr_02A_6226                            ; $6234: $30 $F0

    ld hl, sp+$00                                 ; $6236: $F8 $00

jr_02A_6238:
    ld a, c                                       ; $6238: $79
    ld d, b                                       ; $6239: $50
    ld b, b                                       ; $623A: $40
    ld b, h                                       ; $623B: $44
    nop                                           ; $623C: $00
    ld bc, $0807                                  ; $623D: $01 $07 $08
    inc sp                                        ; $6240: $33
    jr @+$3D                                      ; $6241: $18 $3B

    inc b                                         ; $6243: $04
    dec b                                         ; $6244: $05
    add hl, de                                    ; $6245: $19
    jr nz, @+$29                                  ; $6246: $20 $27

    ld sp, $0836                                  ; $6248: $31 $36 $08
    ld [hl-], a                                   ; $624B: $32
    ld [hl], c                                    ; $624C: $71
    nop                                           ; $624D: $00
    ccf                                           ; $624E: $3F
    cp a                                          ; $624F: $BF
    rrca                                          ; $6250: $0F
    adc a                                         ; $6251: $8F
    rla                                           ; $6252: $17
    add a                                         ; $6253: $87
    ld hl, $AA81                                  ; $6254: $21 $81 $AA
    ld a, b                                       ; $6257: $78
    sbc [hl]                                      ; $6258: $9E
    ld d, b                                       ; $6259: $50
    rst RST_18                                    ; $625A: $DF
    xor b                                         ; $625B: $A8
    jp $FF79                                      ; $625C: $C3 $79 $FF


    or [hl]                                       ; $625F: $B6
    ld b, $7F                                     ; $6260: $06 $7F
    nop                                           ; $6262: $00
    ret                                           ; $6263: $C9


    rra                                           ; $6264: $1F
    adc b                                         ; $6265: $88

jr_02A_6266:
    ld a, l                                       ; $6266: $7D
    cp $A8                                        ; $6267: $FE $A8
    nop                                           ; $6269: $00
    ld sp, hl                                     ; $626A: $F9
    nop                                           ; $626B: $00
    rst RST_30                                    ; $626C: $F7
    nop                                           ; $626D: $00
    xor $EF                                       ; $626E: $EE $EF
    call c, Call_02A_7ED0                         ; $6270: $DC $D0 $7E
    add hl, hl                                    ; $6273: $29
    ldh [rNR23], a                                ; $6274: $E0 $18
    ld [bc], a                                    ; $6276: $02
    pop bc                                        ; $6277: $C1
    dec b                                         ; $6278: $05
    cp b                                          ; $6279: $B8
    ld l, b                                       ; $627A: $68
    dec [hl]                                      ; $627B: $35
    ld [$3F7D], sp                                ; $627C: $08 $7D $3F
    nop                                           ; $627F: $00
    ld c, a                                       ; $6280: $4F
    adc a                                         ; $6281: $8F
    daa                                           ; $6282: $27
    dec b                                         ; $6283: $05
    rst RST_00                                    ; $6284: $C7
    inc de                                        ; $6285: $13
    db $E3                                        ; $6286: $E3
    ld de, $79E1                                  ; $6287: $11 $E1 $79
    cp $07                                        ; $628A: $FE $07
    add d                                         ; $628C: $82
    inc b                                         ; $628D: $04
    ld [hl-], a                                   ; $628E: $32
    ld sp, $2120                                  ; $628F: $31 $20 $21
    inc l                                         ; $6292: $2C
    nop                                           ; $6293: $00
    ld c, $AA                                     ; $6294: $0E $AA
    ld [bc], a                                    ; $6296: $02
    inc c                                         ; $6297: $0C
    nop                                           ; $6298: $00
    add hl, bc                                    ; $6299: $09
    nop                                           ; $629A: $00
    inc bc                                        ; $629B: $03
    nop                                           ; $629C: $00
    ld [hl+], a                                   ; $629D: $22
    ld [$89C1], sp                                ; $629E: $08 $C1 $89
    ld h, h                                       ; $62A1: $64
    sub d                                         ; $62A2: $92
    ld [$F600], sp                                ; $62A3: $08 $00 $F6
    ld [$F20C], sp                                ; $62A6: $08 $0C $F2
    ld [bc], a                                    ; $62A9: $02

jr_02A_62AA:
    ld a, b                                       ; $62AA: $78
    inc b                                         ; $62AB: $04
    ld [$7C38], sp                                ; $62AC: $08 $38 $7C
    rra                                           ; $62AF: $1F
    nop                                           ; $62B0: $00
    rst RST_18                                    ; $62B1: $DF
    ld l, $CE                                     ; $62B2: $2E $CE
    dec l                                         ; $62B4: $2D
    call $8B6B                                    ; $62B5: $CD $6B $8B
    db $EB                                        ; $62B8: $EB
    nop                                           ; $62B9: $00
    dec bc                                        ; $62BA: $0B
    rst RST_20                                    ; $62BB: $E7
    rlca                                          ; $62BC: $07
    add $06                                       ; $62BD: $C6 $06
    push bc                                       ; $62BF: $C5

jr_02A_62C0:
    dec d                                         ; $62C0: $15
    cp b                                          ; $62C1: $B8
    ld h, l                                       ; $62C2: $65
    cp a                                          ; $62C3: $BF
    jr nc, jr_02A_6266                            ; $62C4: $30 $A0

    ret nz                                        ; $62C6: $C0

    ld hl, sp+$08                                 ; $62C7: $F8 $08
    rst RST_38                                    ; $62C9: $FF
    add hl, bc                                    ; $62CA: $09
    and b                                         ; $62CB: $A0
    jr nc, jr_02A_62DD                            ; $62CC: $30 $0F

    jr jr_02A_62C0                                ; $62CE: $18 $F0

    add b                                         ; $62D0: $80
    adc a                                         ; $62D1: $8F
    ld a, d                                       ; $62D2: $7A

jr_02A_62D3:
    ld a, h                                       ; $62D3: $7C
    adc e                                         ; $62D4: $8B
    dec c                                         ; $62D5: $0D
    inc [hl]                                      ; $62D6: $34
    jr c, jr_02A_62DE                             ; $62D7: $38 $05

    ret nc                                        ; $62D9: $D0

    add hl, de                                    ; $62DA: $19
    ld [hl], b                                    ; $62DB: $70
    sbc b                                         ; $62DC: $98

jr_02A_62DD:
    adc b                                         ; $62DD: $88

jr_02A_62DE:
    nop                                           ; $62DE: $00
    sbc b                                         ; $62DF: $98
    ld h, b                                       ; $62E0: $60
    ldh [rNR23], a                                ; $62E1: $E0 $18
    inc bc                                        ; $62E3: $03
    inc e                                         ; $62E4: $1C
    add c                                         ; $62E5: $81
    ld [hl], l                                    ; $62E6: $75
    ld a, [hl]                                    ; $62E7: $7E
    add hl, bc                                    ; $62E8: $09
    jr nc, jr_02A_62D3                            ; $62E9: $30 $E8

    rrca                                          ; $62EB: $0F
    db $10                                        ; $62EC: $10
    ld [hl], c                                    ; $62ED: $71
    ld [$FE74], sp                                ; $62EE: $08 $74 $FE
    nop                                           ; $62F1: $00
    ld b, b                                       ; $62F2: $40
    nop                                           ; $62F3: $00
    ld a, $00                                     ; $62F4: $3E $00
    sbc [hl]                                      ; $62F6: $9E
    ld e, $45                                     ; $62F7: $1E $45
    sbc $08                                       ; $62F9: $DE $08
    adc $0E                                       ; $62FB: $CE $0E

jr_02A_62FD:
    ld c, [hl]                                    ; $62FD: $4E
    ld [$088E], sp                                ; $62FE: $08 $8E $08
    ld d, [hl]                                    ; $6301: $56
    ld h, e                                       ; $6302: $63
    ldh [$FF33], a                                ; $6303: $E0 $33
    ld [$0002], sp                                ; $6305: $08 $02 $00
    cp b                                          ; $6308: $B8
    ld bc, $01AB                                  ; $6309: $01 $AB $01
    add hl, sp                                    ; $630C: $39
    ld [$0861], sp                                ; $630D: $08 $61 $08
    ld c, b                                       ; $6310: $48
    ld hl, sp+$50                                 ; $6311: $F8 $50
    inc b                                         ; $6313: $04
    ld a, h                                       ; $6314: $7C
    ld hl, $205E                                  ; $6315: $21 $5E $20
    rra                                           ; $6318: $1F
    jr nc, jr_02A_635A                            ; $6319: $30 $3F

    add c                                         ; $631B: $81
    ld l, b                                       ; $631C: $68
    cp [hl]                                       ; $631D: $BE
    add hl, bc                                    ; $631E: $09
    ld e, b                                       ; $631F: $58
    dec a                                         ; $6320: $3D
    add hl, sp                                    ; $6321: $39
    jp Jump_02A_4213                              ; $6322: $C3 $13 $42


    or d                                          ; $6325: $B2
    jr nc, jr_02A_62AA                            ; $6326: $30 $82

    ld a, [bc]                                    ; $6328: $0A
    jr c, jr_02A_632E                             ; $6329: $38 $03

    pop bc                                        ; $632B: $C1
    add sp, -$65                                  ; $632C: $E8 $9B

jr_02A_632E:
    ld a, [de]                                    ; $632E: $1A
    ld b, e                                       ; $632F: $43
    xor h                                         ; $6330: $AC
    ld b, b                                       ; $6331: $40
    adc b                                         ; $6332: $88
    nop                                           ; $6333: $00
    ld a, h                                       ; $6334: $7C
    nop                                           ; $6335: $00
    rst RST_38                                    ; $6336: $FF
    xor h                                         ; $6337: $AC
    nop                                           ; $6338: $00
    di                                            ; $6339: $F3
    nop                                           ; $633A: $00
    dec l                                         ; $633B: $2D
    nop                                           ; $633C: $00
    ld b, b                                       ; $633D: $40
    add b                                         ; $633E: $80
    ld [$713B], sp                                ; $633F: $08 $3B $71
    add hl, bc                                    ; $6342: $09
    jr c, jr_02A_62FD                             ; $6343: $38 $B8

    jr nc, @+$3E                                  ; $6345: $30 $3C

    sub c                                         ; $6347: $91
    nop                                           ; $6348: $00
    dec h                                         ; $6349: $25
    sub c                                         ; $634A: $91
    sbc c                                         ; $634B: $99
    add hl, bc                                    ; $634C: $09
    db $10                                        ; $634D: $10
    jr jr_02A_6350                                ; $634E: $18 $00

jr_02A_6350:
    add c                                         ; $6350: $81
    ld bc, $A0DA                                  ; $6351: $01 $DA $A0
    ld e, b                                       ; $6354: $58
    ld a, $00                                     ; $6355: $3E $00
    ld sp, hl                                     ; $6357: $F9
    rst RST_08                                    ; $6358: $CF
    nop                                           ; $6359: $00

jr_02A_635A:
    or [hl]                                       ; $635A: $B6
    ldh [rP1], a                                  ; $635B: $E0 $00
    xor c                                         ; $635D: $A9
    add sp, -$7A                                  ; $635E: $E8 $86
    adc b                                         ; $6360: $88
    rst RST_20                                    ; $6361: $E7
    adc $0E                                       ; $6362: $CE $0E
    ld e, l                                       ; $6364: $5D
    ld l, [hl]                                    ; $6365: $6E
    ld [$0A2E], sp                                ; $6366: $08 $2E $0A
    add hl, hl                                    ; $6369: $29
    ld c, e                                       ; $636A: $4B
    adc [hl]                                      ; $636B: $8E
    ld [$1078], sp                                ; $636C: $08 $78 $10
    or c                                          ; $636F: $B1
    inc b                                         ; $6370: $04
    ld b, b                                       ; $6371: $40
    ld [$3C03], sp                                ; $6372: $08 $03 $3C
    ld bc, $7E40                                  ; $6375: $01 $40 $7E
    add hl, bc                                    ; $6378: $09
    add c                                         ; $6379: $81
    cp [hl]                                       ; $637A: $BE
    add b                                         ; $637B: $80
    cp a                                          ; $637C: $BF
    sub b                                         ; $637D: $90
    xor a                                         ; $637E: $AF
    adc b                                         ; $637F: $88
    xor b                                         ; $6380: $A8
    cpl                                           ; $6381: $2F
    jr nc, @+$11                                  ; $6382: $30 $0F

    add b                                         ; $6384: $80
    rra                                           ; $6385: $1F
    ld a, [bc]                                    ; $6386: $0A
    dec d                                         ; $6387: $15
    ld [bc], a                                    ; $6388: $02
    ld [de], a                                    ; $6389: $12
    dec c                                         ; $638A: $0D
    ld [$02E4], sp                                ; $638B: $08 $E4 $02
    db $EC                                        ; $638E: $EC
    rrca                                          ; $638F: $0F
    ld [hl+], a                                   ; $6390: $22
    ld b, b                                       ; $6391: $40
    call z, $CEB8                                 ; $6392: $CC $B8 $CE
    inc de                                        ; $6395: $13
    daa                                           ; $6396: $27
    ret nz                                        ; $6397: $C0

    inc c                                         ; $6398: $0C
    inc hl                                        ; $6399: $23
    ld [$67CB], sp                                ; $639A: $08 $CB $67
    add h                                         ; $639D: $84
    or $F0                                        ; $639E: $F6 $F0
    ld sp, $4101                                  ; $63A0: $31 $01 $41
    cpl                                           ; $63A3: $2F
    ld b, e                                       ; $63A4: $43
    ld [hl], b                                    ; $63A5: $70
    nop                                           ; $63A6: $00
    rst RST_38                                    ; $63A7: $FF
    nop                                           ; $63A8: $00
    ld b, b                                       ; $63A9: $40
    nop                                           ; $63AA: $00
    db $10                                        ; $63AB: $10
    ld e, d                                       ; $63AC: $5A
    ld d, l                                       ; $63AD: $55
    ld [$2AAA], sp                                ; $63AE: $08 $AA $2A
    nop                                           ; $63B1: $00
    pop bc                                        ; $63B2: $C1
    ld [$007E], sp                                ; $63B3: $08 $7E $00
    ld a, a                                       ; $63B6: $7F
    db $E4                                        ; $63B7: $E4
    di                                            ; $63B8: $F3
    ld [bc], a                                    ; $63B9: $02
    add hl, de                                    ; $63BA: $19
    pop hl                                        ; $63BB: $E1
    ld c, h                                       ; $63BC: $4C
    ldh a, [rSB]                                  ; $63BD: $F0 $01
    and [hl]                                      ; $63BF: $A6
    jr nc, jr_02A_63C8                            ; $63C0: $30 $06

    ret nz                                        ; $63C2: $C0

    ret z                                         ; $63C3: $C8

    add $F7                                       ; $63C4: $C6 $F7
    ld l, b                                       ; $63C6: $68
    adc h                                         ; $63C7: $8C

jr_02A_63C8:
    ld [$CC2C], sp                                ; $63C8: $08 $2C $CC
    jr z, jr_02A_6405                             ; $63CB: $28 $38

    adc b                                         ; $63CD: $88
    ldh [c], a                                    ; $63CE: $E2
    sub [hl]                                      ; $63CF: $96
    ld [bc], a                                    ; $63D0: $02
    ld h, [hl]                                    ; $63D1: $66
    sub h                                         ; $63D2: $94
    ld h, h                                       ; $63D3: $64
    sub b                                         ; $63D4: $90
    ld h, b                                       ; $63D5: $60
    db $10                                        ; $63D6: $10
    ld a, [bc]                                    ; $63D7: $0A
    ld [$764B], sp                                ; $63D8: $08 $4B $76
    ret nz                                        ; $63DB: $C0

    ld a, b                                       ; $63DC: $78
    inc b                                         ; $63DD: $04
    ld c, $00                                     ; $63DE: $0E $00
    ld [$05C8], sp                                ; $63E0: $08 $C8 $05
    ld a, d                                       ; $63E3: $7A
    inc h                                         ; $63E4: $24
    dec bc                                        ; $63E5: $0B
    inc l                                         ; $63E6: $2C
    ld b, e                                       ; $63E7: $43
    sbc b                                         ; $63E8: $98
    rst RST_20                                    ; $63E9: $E7
    cp b                                          ; $63EA: $B8
    sub [hl]                                      ; $63EB: $96
    ld [$E215], sp                                ; $63EC: $08 $15 $E2
    cp b                                          ; $63EF: $B8
    ldh a, [$FF38]                                ; $63F0: $F0 $38
    ld [$C209], sp                                ; $63F2: $08 $09 $C2
    ld [$CE48], sp                                ; $63F5: $08 $48 $CE
    ld b, c                                       ; $63F8: $41
    sbc [hl]                                      ; $63F9: $9E
    ld hl, $A908                                  ; $63FA: $21 $08 $A9
    inc h                                         ; $63FD: $24
    ld d, $29                                     ; $63FE: $16 $29
    ld [$0EB1], sp                                ; $6400: $08 $B1 $0E
    add hl, bc                                    ; $6403: $09
    sub l                                         ; $6404: $95

jr_02A_6405:
    ld a, [bc]                                    ; $6405: $0A
    add d                                         ; $6406: $82
    adc b                                         ; $6407: $88
    dec de                                        ; $6408: $1B
    inc b                                         ; $6409: $04
    ld l, l                                       ; $640A: $6D
    ld [de], a                                    ; $640B: $12
    halt                                          ; $640C: $76
    xor b                                         ; $640D: $A8
    ld [hl], b                                    ; $640E: $70
    adc d                                         ; $640F: $8A
    ld [$1172], sp                                ; $6410: $08 $72 $11
    ld [hl], a                                    ; $6413: $77
    dec bc                                        ; $6414: $0B
    and e                                         ; $6415: $A3
    nop                                           ; $6416: $00
    pop bc                                        ; $6417: $C1
    sub h                                         ; $6418: $94
    nop                                           ; $6419: $00
    ld e, h                                       ; $641A: $5C
    call c, Call_000_1EC0                         ; $641B: $DC $C0 $1E
    add hl, bc                                    ; $641E: $09
    ld b, $4E                                     ; $641F: $06 $4E
    nop                                           ; $6421: $00
    ld [bc], a                                    ; $6422: $02
    ld b, [hl]                                    ; $6423: $46
    nop                                           ; $6424: $00
    ld h, d                                       ; $6425: $62
    db $EB                                        ; $6426: $EB
    db $EC                                        ; $6427: $EC
    set 1, h                                      ; $6428: $CB $CC

jr_02A_642A:
    ld a, [hl+]                                   ; $642A: $2A
    rlca                                          ; $642B: $07
    ld [$0109], sp                                ; $642C: $08 $09 $01
    ld [$0060], sp                                ; $642F: $08 $60 $00
    or $A5                                        ; $6432: $F6 $A5
    nop                                           ; $6434: $00
    rst RST_30                                    ; $6435: $F7
    nop                                           ; $6436: $00
    sub b                                         ; $6437: $90
    jr nz, jr_02A_6443                            ; $6438: $20 $09

    or b                                          ; $643A: $B0
    or b                                          ; $643B: $B0
    ld d, l                                       ; $643C: $55
    add b                                         ; $643D: $80
    ld a, [bc]                                    ; $643E: $0A
    ld b, b                                       ; $643F: $40

jr_02A_6440:
    nop                                           ; $6440: $00
    ld l, b                                       ; $6441: $68
    nop                                           ; $6442: $00

jr_02A_6443:
    ld l, h                                       ; $6443: $6C
    nop                                           ; $6444: $00
    jr nz, jr_02A_6451                            ; $6445: $20 $0A

    ld [hl], d                                    ; $6447: $72
    ld b, b                                       ; $6448: $40
    ld [hl], b                                    ; $6449: $70
    inc b                                         ; $644A: $04
    ld [hl], h                                    ; $644B: $74
    ld b, $76                                     ; $644C: $06 $76
    db $10                                        ; $644E: $10
    ld [de], a                                    ; $644F: $12
    ld h, d                                       ; $6450: $62

jr_02A_6451:
    ld [bc], a                                    ; $6451: $02
    ld [$4828], sp                                ; $6452: $08 $28 $48
    ld c, h                                       ; $6455: $4C
    inc c                                         ; $6456: $0C
    inc b                                         ; $6457: $04
    add hl, hl                                    ; $6458: $29
    ret nc                                        ; $6459: $D0

jr_02A_645A:
    dec de                                        ; $645A: $1B
    ldh [$FF2B], a                                ; $645B: $E0 $2B
    ld a, [de]                                    ; $645D: $1A
    add hl, bc                                    ; $645E: $09
    ldh a, [$FFBA]                                ; $645F: $F0 $BA
    ld c, c                                       ; $6461: $49
    jr jr_02A_648C                                ; $6462: $18 $28

    ret c                                         ; $6464: $D8

    jr z, jr_02A_6440                             ; $6465: $28 $D9

    ret nc                                        ; $6467: $D0

    rst RST_08                                    ; $6468: $CF
    xor l                                         ; $6469: $AD
    jr nz, jr_02A_645A                            ; $646A: $20 $EE

    ld [$0886], sp                                ; $646C: $08 $86 $08
    ld d, c                                       ; $646F: $51
    db $FC                                        ; $6470: $FC
    ld a, [de]                                    ; $6471: $1A
    ld c, c                                       ; $6472: $49
    db $10                                        ; $6473: $10
    ld [$7711], sp                                ; $6474: $08 $11 $77
    dec bc                                        ; $6477: $0B
    ld hl, $09E7                                  ; $6478: $21 $E7 $09
    ld d, $51                                     ; $647B: $16 $51
    rst RST_00                                    ; $647D: $C7
    ld [hl-], a                                   ; $647E: $32
    ret c                                         ; $647F: $D8

    ldh a, [c]                                    ; $6480: $F2
    ld [$7080], sp                                ; $6481: $08 $80 $70
    dec b                                         ; $6484: $05
    ld [bc], a                                    ; $6485: $02
    ld a, b                                       ; $6486: $78
    ld bc, $601C                                  ; $6487: $01 $1C $60
    jr nz, jr_02A_6508                            ; $648A: $20 $7C

jr_02A_648C:
    ld b, b                                       ; $648C: $40
    ld e, c                                       ; $648D: $59
    ld a, a                                       ; $648E: $7F
    ld [$0AFF], sp                                ; $648F: $08 $FF $0A
    ret nc                                        ; $6492: $D0

    rst RST_30                                    ; $6493: $F7
    ld [hl], e                                    ; $6494: $73
    ld [$3341], sp                                ; $6495: $08 $41 $33
    jr nz, jr_02A_642A                            ; $6498: $20 $90

    ld [hl], $C0                                  ; $649A: $36 $C0
    inc d                                         ; $649C: $14
    pop hl                                        ; $649D: $E1
    ld e, b                                       ; $649E: $58
    ld d, e                                       ; $649F: $53
    db $E3                                        ; $64A0: $E3
    ld [$08C1], sp                                ; $64A1: $08 $C1 $08
    inc h                                         ; $64A4: $24
    ld l, h                                       ; $64A5: $6C
    stop                                          ; $64A6: $10 $00
    ld h, c                                       ; $64A8: $61
    jr nz, @+$0A                                  ; $64A9: $20 $08

    ld l, b                                       ; $64AB: $68
    ld e, $80                                     ; $64AC: $1E $80
    ld [hl-], a                                   ; $64AE: $32
    inc b                                         ; $64AF: $04
    ld c, b                                       ; $64B0: $48
    sbc d                                         ; $64B1: $9A
    ld [$E40C], sp                                ; $64B2: $08 $0C $E4
    ld [$0D00], sp                                ; $64B5: $08 $00 $0D
    jr z, @+$07                                   ; $64B8: $28 $05

    add l                                         ; $64BA: $85
    add hl, bc                                    ; $64BB: $09
    db $10                                        ; $64BC: $10
    ld de, $1918                                  ; $64BD: $11 $18 $19
    ld [$091B], sp                                ; $64C0: $08 $1B $09
    jp c, Jump_02A_48D9                           ; $64C3: $DA $D9 $48

    ldh [$FF50], a                                ; $64C6: $E0 $50
    ld [$0817], sp                                ; $64C8: $08 $17 $08
    ld d, a                                       ; $64CB: $57
    add hl, bc                                    ; $64CC: $09
    and b                                         ; $64CD: $A0
    jr nz, @-$3E                                  ; $64CE: $20 $C0

    ld hl, $4308                                  ; $64D0: $21 $08 $43
    add b                                         ; $64D3: $80
    ld a, c                                       ; $64D4: $79
    ld e, l                                       ; $64D5: $5D
    ld [hl], b                                    ; $64D6: $70
    ld [$08F8], sp                                ; $64D7: $08 $F8 $08
    ld b, b                                       ; $64DA: $40
    ld sp, $501F                                  ; $64DB: $31 $1F $50
    dec b                                         ; $64DE: $05
    ld a, a                                       ; $64DF: $7F
    sbc h                                         ; $64E0: $9C
    ld h, e                                       ; $64E1: $63
    ldh a, [c]                                    ; $64E2: $F2
    ld bc, $7941                                  ; $64E3: $01 $41 $79
    ld d, c                                       ; $64E6: $51
    or l                                          ; $64E7: $B5
    ld [$3107], sp                                ; $64E8: $08 $07 $31
    ret                                           ; $64EB: $C9


    ldh [$FFC2], a                                ; $64EC: $E0 $C2
    db $FC                                        ; $64EE: $FC
    ld b, c                                       ; $64EF: $41
    ld e, l                                       ; $64F0: $5D
    rst RST_38                                    ; $64F1: $FF
    inc c                                         ; $64F2: $0C
    ld a, [hl]                                    ; $64F3: $7E
    ld b, c                                       ; $64F4: $41
    nop                                           ; $64F5: $00
    pop hl                                        ; $64F6: $E1
    rrca                                          ; $64F7: $0F
    ld a, [hl+]                                   ; $64F8: $2A
    ld d, l                                       ; $64F9: $55
    or h                                          ; $64FA: $B4
    ld [$08B6], sp                                ; $64FB: $08 $B6 $08
    call nc, Call_000_395A                        ; $64FE: $D4 $5A $39
    ldh [c], a                                    ; $6501: $E2
    ld c, c                                       ; $6502: $49
    cp $7A                                        ; $6503: $FE $7A
    db $E4                                        ; $6505: $E4
    inc c                                         ; $6506: $0C
    rrca                                          ; $6507: $0F

jr_02A_6508:
    add sp, $08                                   ; $6508: $E8 $08
    nop                                           ; $650A: $00
    ld b, b                                       ; $650B: $40
    ld a, [bc]                                    ; $650C: $0A
    ld a, c                                       ; $650D: $79
    nop                                           ; $650E: $00
    ld d, b                                       ; $650F: $50
    add b                                         ; $6510: $80
    ld e, d                                       ; $6511: $5A
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00
    ld a, a                                       ; $6514: $7F
    inc bc                                        ; $6515: $03
    ld [bc], a                                    ; $6516: $02
    ccf                                           ; $6517: $3F
    nop                                           ; $6518: $00
    rrca                                          ; $6519: $0F
    or d                                          ; $651A: $B2
    nop                                           ; $651B: $00
    inc bc                                        ; $651C: $03
    nop                                           ; $651D: $00
    dec a                                         ; $651E: $3D
    ld hl, sp-$05                                 ; $651F: $F8 $FB
    dec b                                         ; $6521: $05
    ldh a, [rLCDC]                                ; $6522: $F0 $40
    rst RST_30                                    ; $6524: $F7
    dec b                                         ; $6525: $05
    db $F4                                        ; $6526: $F4
    di                                            ; $6527: $F3
    add sp, -$19                                  ; $6528: $E8 $E7
    ldh [$FFEE], a                                ; $652A: $E0 $EE
    xor d                                         ; $652C: $AA
    dec a                                         ; $652D: $3D
    ld l, e                                       ; $652E: $6B
    nop                                           ; $652F: $00
    ld e, e                                       ; $6530: $5B
    nop                                           ; $6531: $00
    ld d, e                                       ; $6532: $53
    nop                                           ; $6533: $00
    inc sp                                        ; $6534: $33
    or [hl]                                       ; $6535: $B6
    nop                                           ; $6536: $00
    dec hl                                        ; $6537: $2B
    nop                                           ; $6538: $00
    dec h                                         ; $6539: $25
    db $DB                                        ; $653A: $DB
    nop                                           ; $653B: $00
    dec a                                         ; $653C: $3D
    rst RST_38                                    ; $653D: $FF
    db $E3                                        ; $653E: $E3
    nop                                           ; $653F: $00
    ld a, b                                       ; $6540: $78
    nop                                           ; $6541: $00
    push af                                       ; $6542: $F5
    pop af                                        ; $6543: $F1
    ldh a, [c]                                    ; $6544: $F2
    ld a, b                                       ; $6545: $78
    add h                                         ; $6546: $84
    ld [hl], l                                    ; $6547: $75
    or $05                                        ; $6548: $F6 $05
    ld a, a                                       ; $654A: $7F

jr_02A_654B:
    dec a                                         ; $654B: $3D
    cp $00                                        ; $654C: $FE $00
    db $FC                                        ; $654E: $FC
    nop                                           ; $654F: $00
    call nc, Call_000_00CC                        ; $6550: $D4 $CC $00
    adc b                                         ; $6553: $88
    nop                                           ; $6554: $00
    jr nc, jr_02A_654B                            ; $6555: $30 $F4

    cp b                                          ; $6557: $B8
    ld bc, $3FD1                                  ; $6558: $01 $D1 $3F
    ld bc, $000F                                  ; $655B: $01 $0F $00

jr_02A_655E:
    scf                                           ; $655E: $37
    rlca                                          ; $655F: $07
    dec bc                                        ; $6560: $0B
    db $FC                                        ; $6561: $FC
    xor a                                         ; $6562: $AF
    jr nc, jr_02A_655E                            ; $6563: $30 $F9

    inc b                                         ; $6565: $04
    db $FD                                        ; $6566: $FD
    dec a                                         ; $6567: $3D
    ld [hl], l                                    ; $6568: $75
    inc bc                                        ; $6569: $03
    inc bc                                        ; $656A: $03
    and a                                         ; $656B: $A7

jr_02A_656C:
    inc bc                                        ; $656C: $03
    add hl, de                                    ; $656D: $19
    ld c, b                                       ; $656E: $48
    ld b, $08                                     ; $656F: $06 $08
    add hl, bc                                    ; $6571: $09
    ld d, b                                       ; $6572: $50
    and h                                         ; $6573: $A4
    ldh [rDIV], a                                 ; $6574: $E0 $04
    and [hl]                                      ; $6576: $A6
    inc bc                                        ; $6577: $03
    db $E4                                        ; $6578: $E4
    ld [$6569], a                                 ; $6579: $EA $69 $65
    ld hl, $2D28                                  ; $657C: $21 $28 $2D
    add e                                         ; $657F: $83
    or b                                          ; $6580: $B0
    ld b, e                                       ; $6581: $43
    ld [$C727], sp                                ; $6582: $08 $27 $C7
    rla                                           ; $6585: $17
    ld l, d                                       ; $6586: $6A
    ld h, a                                       ; $6587: $67
    ret nc                                        ; $6588: $D0

    ret c                                         ; $6589: $D8

    db $DB                                        ; $658A: $DB
    nop                                           ; $658B: $00
    or a                                          ; $658C: $B7
    ld bc, $9A87                                  ; $658D: $01 $87 $9A
    add hl, bc                                    ; $6590: $09
    ld l, a                                       ; $6591: $6F
    rrca                                          ; $6592: $0F
    jr nc, jr_02A_6595                            ; $6593: $30 $00

jr_02A_6595:
    ld e, c                                       ; $6595: $59
    adc h                                         ; $6596: $8C
    ld b, [hl]                                    ; $6597: $46
    inc de                                        ; $6598: $13
    ld e, b                                       ; $6599: $58
    pop hl                                        ; $659A: $E1
    db $EC                                        ; $659B: $EC
    dec b                                         ; $659C: $05
    db $E3                                        ; $659D: $E3
    add sp, $05                                   ; $659E: $E8 $05
    ld [hl], b                                    ; $65A0: $70
    ld c, h                                       ; $65A1: $4C
    ret nz                                        ; $65A2: $C0

    dec b                                         ; $65A3: $05
    sub a                                         ; $65A4: $97
    add b                                         ; $65A5: $80
    ld a, b                                       ; $65A6: $78
    cp h                                          ; $65A7: $BC
    sbc h                                         ; $65A8: $9C
    jr nz, jr_02A_6602                            ; $65A9: $20 $57

    sbc [hl]                                      ; $65AB: $9E
    ld b, $9F                                     ; $65AC: $06 $9F
    ld b, $DF                                     ; $65AE: $06 $DF
    ld b, $15                                     ; $65B0: $06 $15
    ld b, b                                       ; $65B2: $40
    ld l, l                                       ; $65B3: $6D
    db $FC                                        ; $65B4: $FC

jr_02A_65B5:
    dec b                                         ; $65B5: $05
    sbc b                                         ; $65B6: $98
    ld [hl], b                                    ; $65B7: $70
    call c, Call_000_1F10                         ; $65B8: $DC $10 $1F
    inc b                                         ; $65BB: $04
    ld l, b                                       ; $65BC: $68
    ld a, a                                       ; $65BD: $7F
    rlca                                          ; $65BE: $07
    inc b                                         ; $65BF: $04
    ld c, $00                                     ; $65C0: $0E $00
    ld h, [hl]                                    ; $65C2: $66
    ld b, $96                                     ; $65C3: $06 $96
    set 3, b                                      ; $65C5: $CB $D8
    dec b                                         ; $65C7: $05
    ld [hl], $86                                  ; $65C8: $36 $86
    rlca                                          ; $65CA: $07
    halt                                          ; $65CB: $76
    inc l                                         ; $65CC: $2C
    ld b, b                                       ; $65CD: $40
    ld hl, sp+$03                                 ; $65CE: $F8 $03
    inc bc                                        ; $65D0: $03
    nop                                           ; $65D1: $00
    jr z, jr_02A_656C                             ; $65D2: $28 $98

    inc e                                         ; $65D4: $1C
    ld [bc], a                                    ; $65D5: $02
    ld sp, $0C7A                                  ; $65D6: $31 $7A $0C
    inc d                                         ; $65D9: $14
    inc bc                                        ; $65DA: $03
    inc bc                                        ; $65DB: $03
    nop                                           ; $65DC: $00
    ld h, b                                       ; $65DD: $60
    ld b, h                                       ; $65DE: $44
    ld hl, sp-$5B                                 ; $65DF: $F8 $A5
    inc a                                         ; $65E1: $3C
    ldh a, [$FFE0]                                ; $65E2: $F0 $E0
    adc c                                         ; $65E4: $89
    or [hl]                                       ; $65E5: $B6
    sub b                                         ; $65E6: $90
    cp c                                          ; $65E7: $B9
    pop af                                        ; $65E8: $F1
    nop                                           ; $65E9: $00
    ld b, b                                       ; $65EA: $40
    rrca                                          ; $65EB: $0F
    jr nz, jr_02A_65B5                            ; $65EC: $20 $C7

    db $10                                        ; $65EE: $10
    db $E3                                        ; $65EF: $E3
    ld [$5311], sp                                ; $65F0: $08 $11 $53
    inc b                                         ; $65F3: $04
    ld [$3037], sp                                ; $65F4: $08 $37 $30
    dec hl                                        ; $65F7: $2B
    add b                                         ; $65F8: $80
    sbc h                                         ; $65F9: $9C
    inc b                                         ; $65FA: $04
    halt                                          ; $65FB: $76
    ccf                                           ; $65FC: $3F
    inc b                                         ; $65FD: $04
    ld c, b                                       ; $65FE: $48
    inc b                                         ; $65FF: $04
    ld e, a                                       ; $6600: $5F
    ld e, c                                       ; $6601: $59

jr_02A_6602:
    inc b                                         ; $6602: $04
    ld a, a                                       ; $6603: $7F
    xor c                                         ; $6604: $A9
    inc b                                         ; $6605: $04
    sbc a                                         ; $6606: $9F
    ld h, b                                       ; $6607: $60
    sbc h                                         ; $6608: $9C
    inc b                                         ; $6609: $04
    sub b                                         ; $660A: $90
    inc hl                                        ; $660B: $23
    and b                                         ; $660C: $A0
    xor e                                         ; $660D: $AB
    call c, Call_02A_788E                         ; $660E: $DC $8E $78
    and $6C                                       ; $6611: $E6 $6C
    ldh a, [c]                                    ; $6613: $F2
    ld a, b                                       ; $6614: $78
    push bc                                       ; $6615: $C5
    ld a, [hl+]                                   ; $6616: $2A
    ld a, [hl]                                    ; $6617: $7E
    ld bc, $3C05                                  ; $6618: $01 $05 $3C
    inc d                                         ; $661B: $14
    call c, $E904                                 ; $661C: $DC $04 $E9
    xor $2C                                       ; $661F: $EE $2C
    db $EC                                        ; $6621: $EC
    inc b                                         ; $6622: $04
    inc bc                                        ; $6623: $03
    ld [$7CD8], sp                                ; $6624: $08 $D8 $7C
    ld [hl], d                                    ; $6627: $72
    xor d                                         ; $6628: $AA
    inc h                                         ; $6629: $24
    ld l, b                                       ; $662A: $68
    inc c                                         ; $662B: $0C
    db $EC                                        ; $662C: $EC
    inc b                                         ; $662D: $04
    call z, $8C04                                 ; $662E: $CC $04 $8C
    cp [hl]                                       ; $6631: $BE
    inc b                                         ; $6632: $04
    ld [hl], b                                    ; $6633: $70
    inc b                                         ; $6634: $04
    ld [hl], l                                    ; $6635: $75
    dec b                                         ; $6636: $05
    ld [hl], b                                    ; $6637: $70
    jr jr_02A_6648                                ; $6638: $18 $0E

    sbc $D6                                       ; $663A: $DE $D6
    ld h, h                                       ; $663C: $64
    ld a, h                                       ; $663D: $7C
    ld [de], a                                    ; $663E: $12
    rlca                                          ; $663F: $07
    xor b                                         ; $6640: $A8
    adc b                                         ; $6641: $88
    rlca                                          ; $6642: $07
    ld d, l                                       ; $6643: $55
    pop hl                                        ; $6644: $E1
    ld b, b                                       ; $6645: $40
    ld h, c                                       ; $6646: $61
    inc b                                         ; $6647: $04

jr_02A_6648:
    ld h, e                                       ; $6648: $63
    db $FC                                        ; $6649: $FC
    and e                                         ; $664A: $A3
    inc b                                         ; $664B: $04
    ld l, e                                       ; $664C: $6B
    ld b, e                                       ; $664D: $43
    adc b                                         ; $664E: $88
    ld d, h                                       ; $664F: $54
    add b                                         ; $6650: $80
    inc b                                         ; $6651: $04
    ld a, b                                       ; $6652: $78
    ld [$DD48], sp                                ; $6653: $08 $48 $DD
    inc b                                         ; $6656: $04
    call c, $94C0                                 ; $6657: $DC $C0 $94
    inc b                                         ; $665A: $04
    sbc b                                         ; $665B: $98
    ldh [rTIMA], a                                ; $665C: $E0 $05
    ld [$6C24], a                                 ; $665E: $EA $24 $6C
    ld b, $67                                     ; $6661: $06 $67
    inc b                                         ; $6663: $04
    inc de                                        ; $6664: $13
    inc b                                         ; $6665: $04
    ld d, h                                       ; $6666: $54
    adc c                                         ; $6667: $89
    ld b, h                                       ; $6668: $44
    ld d, $06                                     ; $6669: $16 $06
    ld [hl], a                                    ; $666B: $77
    sbc h                                         ; $666C: $9C

jr_02A_666D:
    dec sp                                        ; $666D: $3B
    add e                                         ; $666E: $83
    or b                                          ; $666F: $B0
    adc a                                         ; $6670: $8F
    ld l, b                                       ; $6671: $68
    db $10                                        ; $6672: $10
    pop bc                                        ; $6673: $C1
    db $FC                                        ; $6674: $FC
    inc [hl]                                      ; $6675: $34
    ld e, h                                       ; $6676: $5C
    ld [hl], h                                    ; $6677: $74
    call $3061                                    ; $6678: $CD $61 $30
    and b                                         ; $667B: $A0
    jr jr_02A_6683                                ; $667C: $18 $05

    ld [hl+], a                                   ; $667E: $22
    jr nz, jr_02A_666D                            ; $667F: $20 $EC

    nop                                           ; $6681: $00
    ld d, l                                       ; $6682: $55

jr_02A_6683:
    dec c                                         ; $6683: $0D
    nop                                           ; $6684: $00
    rst RST_38                                    ; $6685: $FF
    jr nz, @+$81                                  ; $6686: $20 $7F

    inc b                                         ; $6688: $04
    ccf                                           ; $6689: $3F
    ld e, h                                       ; $668A: $5C
    cp d                                          ; $668B: $BA
    dec c                                         ; $668C: $0D
    ld a, h                                       ; $668D: $7C
    inc b                                         ; $668E: $04
    ld c, b                                       ; $668F: $48
    nop                                           ; $6690: $00
    ld c, a                                       ; $6691: $4F
    nop                                           ; $6692: $00
    ld c, [hl]                                    ; $6693: $4E
    cp e                                          ; $6694: $BB
    nop                                           ; $6695: $00
    ld hl, sp+$75                                 ; $6696: $F8 $75
    push af                                       ; $6698: $F5
    or h                                          ; $6699: $B4
    ret nc                                        ; $669A: $D0

    inc b                                         ; $669B: $04
    jr c, jr_02A_6648                             ; $669C: $38 $AA

    inc b                                         ; $669E: $04
    ld [hl], b                                    ; $669F: $70
    inc b                                         ; $66A0: $04
    ld b, b                                       ; $66A1: $40
    rra                                           ; $66A2: $1F
    inc hl                                        ; $66A3: $23
    ld e, b                                       ; $66A4: $58
    inc e                                         ; $66A5: $1C
    ld [hl], h                                    ; $66A6: $74
    rrca                                          ; $66A7: $0F
    cp b                                          ; $66A8: $B8
    rlca                                          ; $66A9: $07
    ret nc                                        ; $66AA: $D0

    jr c, jr_02A_66B4                             ; $66AB: $38 $07

    add hl, de                                    ; $66AD: $19
    call nz, $9906                                ; $66AE: $C4 $06 $99
    ld b, h                                       ; $66B1: $44
    sbc h                                         ; $66B2: $9C
    ld h, d                                       ; $66B3: $62

jr_02A_66B4:
    adc $EC                                       ; $66B4: $CE $EC
    inc b                                         ; $66B6: $04
    ld hl, $CF47                                  ; $66B7: $21 $47 $CF
    inc c                                         ; $66BA: $0C
    rst RST_28                                    ; $66BB: $EF
    db $10                                        ; $66BC: $10

jr_02A_66BD:
    rst RST_20                                    ; $66BD: $E7

jr_02A_66BE:
    inc b                                         ; $66BE: $04
    xor h                                         ; $66BF: $AC
    add b                                         ; $66C0: $80
    ld d, l                                       ; $66C1: $55
    call z, $9E04                                 ; $66C2: $CC $04 $9E
    inc b                                         ; $66C5: $04
    sbc a                                         ; $66C6: $9F
    inc b                                         ; $66C7: $04
    ccf                                           ; $66C8: $3F
    rlca                                          ; $66C9: $07
    and e                                         ; $66CA: $A3
    inc b                                         ; $66CB: $04
    cp a                                          ; $66CC: $BF
    inc b                                         ; $66CD: $04
    dec c                                         ; $66CE: $0D
    ld b, c                                       ; $66CF: $41
    dec e                                         ; $66D0: $1D
    ld b, $15                                     ; $66D1: $06 $15
    ld e, a                                       ; $66D3: $5F
    ld bc, $1101                                  ; $66D4: $01 $01 $11
    jr nc, jr_02A_66BD                            ; $66D7: $30 $E4

    inc b                                         ; $66D9: $04
    ret c                                         ; $66DA: $D8

    inc h                                         ; $66DB: $24
    dec bc                                        ; $66DC: $0B
    db $ED                                        ; $66DD: $ED
    db $E4                                        ; $66DE: $E4
    db $F4                                        ; $66DF: $F4
    sub b                                         ; $66E0: $90
    ret z                                         ; $66E1: $C8

    ld h, b                                       ; $66E2: $60
    nop                                           ; $66E3: $00
    add h                                         ; $66E4: $84
    db $DB                                        ; $66E5: $DB
    ld l, b                                       ; $66E6: $68
    and h                                         ; $66E7: $A4
    rst RST_18                                    ; $66E8: $DF
    inc b                                         ; $66E9: $04
    nop                                           ; $66EA: $00
    ld a, $40                                     ; $66EB: $3E $40
    db $FC                                        ; $66ED: $FC
    nop                                           ; $66EE: $00
    jr @+$05                                      ; $66EF: $18 $03

    ldh [$FF61], a                                ; $66F1: $E0 $61
    ld hl, sp+$26                                 ; $66F3: $F8 $26
    jr nc, jr_02A_66BE                            ; $66F5: $30 $C7

    daa                                           ; $66F7: $27
    ret nc                                        ; $66F8: $D0

    daa                                           ; $66F9: $27
    inc c                                         ; $66FA: $0C
    and $F0                                       ; $66FB: $E6 $F0
    jr c, @+$5E                                   ; $66FD: $38 $5C

    db $FD                                        ; $66FF: $FD
    db $EB                                        ; $6700: $EB
    jr c, @+$06                                   ; $6701: $38 $04

    inc c                                         ; $6703: $0C
    ld b, $04                                     ; $6704: $06 $04
    ld c, $10                                     ; $6706: $0E $10
    ld e, h                                       ; $6708: $5C

jr_02A_6709:
    rst RST_28                                    ; $6709: $EF
    inc b                                         ; $670A: $04
    inc d                                         ; $670B: $14
    inc b                                         ; $670C: $04
    ld e, $04                                     ; $670D: $1E $04
    inc e                                         ; $670F: $1C
    ld [hl], h                                    ; $6710: $74
    call z, Call_000_05F9                         ; $6711: $CC $F9 $05
    db $E4                                        ; $6714: $E4
    inc d                                         ; $6715: $14
    ld hl, sp+$04                                 ; $6716: $F8 $04
    ld b, b                                       ; $6718: $40
    rlca                                          ; $6719: $07
    ld l, b                                       ; $671A: $68
    ld hl, sp+$04                                 ; $671B: $F8 $04
    add b                                         ; $671D: $80
    jr z, jr_02A_6770                             ; $671E: $28 $50

    jr nz, jr_02A_6709                            ; $6720: $20 $E7

    db $10                                        ; $6722: $10
    di                                            ; $6723: $F3
    ld b, b                                       ; $6724: $40
    ld [$F905], sp                                ; $6725: $08 $05 $F9
    inc b                                         ; $6728: $04
    db $FC                                        ; $6729: $FC
    ld [bc], a                                    ; $672A: $02
    ld a, b                                       ; $672B: $78
    add [hl]                                      ; $672C: $86
    or $5C                                        ; $672D: $F6 $5C
    jr jr_02A_6779                                ; $672F: $18 $48

    ret c                                         ; $6731: $D8

    cp a                                          ; $6732: $BF
    adc b                                         ; $6733: $88
    dec b                                         ; $6734: $05
    adc a                                         ; $6735: $8F
    and d                                         ; $6736: $A2
    inc b                                         ; $6737: $04
    ld de, $9EAA                                  ; $6738: $11 $AA $9E

jr_02A_673B:
    add b                                         ; $673B: $80
    cp h                                          ; $673C: $BC
    inc b                                         ; $673D: $04
    jr c, jr_02A_673B                             ; $673E: $38 $FB

    ld c, b                                       ; $6740: $48
    adc h                                         ; $6741: $8C
    ld c, b                                       ; $6742: $48
    inc c                                         ; $6743: $0C
    sub h                                         ; $6744: $94
    inc a                                         ; $6745: $3C
    inc d                                         ; $6746: $14
    dec b                                         ; $6747: $05
    cp $98                                        ; $6748: $FE $98
    inc d                                         ; $674A: $14
    ld b, b                                       ; $674B: $40

jr_02A_674C:
    inc h                                         ; $674C: $24
    dec b                                         ; $674D: $05
    inc d                                         ; $674E: $14
    inc e                                         ; $674F: $1C
    ccf                                           ; $6750: $3F
    push de                                       ; $6751: $D5
    ld c, h                                       ; $6752: $4C
    ld h, h                                       ; $6753: $64
    ret nz                                        ; $6754: $C0

    inc e                                         ; $6755: $1C
    pop hl                                        ; $6756: $E1
    inc b                                         ; $6757: $04
    cp $20                                        ; $6758: $FE $20
    sbc $C0                                       ; $675A: $DE $C0
    ld b, b                                       ; $675C: $40
    ld hl, sp+$07                                 ; $675D: $F8 $07
    inc h                                         ; $675F: $24
    jr nz, jr_02A_6766                            ; $6760: $20 $04

    dec a                                         ; $6762: $3D
    xor e                                         ; $6763: $AB
    ldh a, [$FF79]                                ; $6764: $F0 $79

jr_02A_6766:
    ld c, h                                       ; $6766: $4C
    ld h, b                                       ; $6767: $60
    sub h                                         ; $6768: $94
    ld b, b                                       ; $6769: $40
    inc e                                         ; $676A: $1C
    dec b                                         ; $676B: $05
    cp c                                          ; $676C: $B9
    ld bc, $040E                                  ; $676D: $01 $0E $04

jr_02A_6770:
    ld [hl], h                                    ; $6770: $74
    nop                                           ; $6771: $00
    jr jr_02A_674C                                ; $6772: $18 $D8

    ld b, b                                       ; $6774: $40
    ld e, h                                       ; $6775: $5C
    inc h                                         ; $6776: $24
    jr jr_02A_67F1                                ; $6777: $18 $78

jr_02A_6779:
    ld [hl-], a                                   ; $6779: $32
    nop                                           ; $677A: $00
    jr nz, @+$5A                                  ; $677B: $20 $58

    add [hl]                                      ; $677D: $86
    ld b, c                                       ; $677E: $41
    jr z, @+$56                                   ; $677F: $28 $54

    halt                                          ; $6781: $76
    ld b, $4C                                     ; $6782: $06 $4C
    inc c                                         ; $6784: $0C
    add hl, sp                                    ; $6785: $39
    nop                                           ; $6786: $00
    ld d, [hl]                                    ; $6787: $56
    ld b, e                                       ; $6788: $43
    nop                                           ; $6789: $00
    rra                                           ; $678A: $1F
    nop                                           ; $678B: $00
    ld a, a                                       ; $678C: $7F
    nop                                           ; $678D: $00
    ld c, c                                       ; $678E: $49
    ld a, $8F                                     ; $678F: $3E $8F
    nop                                           ; $6791: $00
    ld [hl], c                                    ; $6792: $71
    ld [hl], b                                    ; $6793: $70
    rlca                                          ; $6794: $07
    inc d                                         ; $6795: $14
    ret c                                         ; $6796: $D8

    nop                                           ; $6797: $00
    ld hl, sp+$47                                 ; $6798: $F8 $47
    db $FD                                        ; $679A: $FD

jr_02A_679B:
    ld [$F0FB], sp                                ; $679B: $08 $FB $F0

jr_02A_679E:
    rst RST_30                                    ; $679E: $F7
    dec a                                         ; $679F: $3D
    jr nc, jr_02A_679E                            ; $67A0: $30 $FC

    xor d                                         ; $67A2: $AA
    cp h                                          ; $67A3: $BC
    ld [bc], a                                    ; $67A4: $02
    and [hl]                                      ; $67A5: $A6
    ld h, [hl]                                    ; $67A6: $66
    inc b                                         ; $67A7: $04
    db $EB                                        ; $67A8: $EB
    inc b                                         ; $67A9: $04
    db $EC                                        ; $67AA: $EC
    and c                                         ; $67AB: $A1
    inc b                                         ; $67AC: $04
    add $21                                       ; $67AD: $C6 $21
    and [hl]                                      ; $67AF: $A6
    ld d, $27                                     ; $67B0: $16 $27
    rla                                           ; $67B2: $17
    dec c                                         ; $67B3: $0D
    rlca                                          ; $67B4: $07
    ld a, [hl+]                                   ; $67B5: $2A
    ld [de], a                                    ; $67B6: $12
    inc [hl]                                      ; $67B7: $34
    ld [$9818], sp                                ; $67B8: $08 $18 $98
    db $EC                                        ; $67BB: $EC
    and c                                         ; $67BC: $A1
    or a                                          ; $67BD: $B7
    nop                                           ; $67BE: $00
    inc bc                                        ; $67BF: $03
    sbc b                                         ; $67C0: $98
    ld a, b                                       ; $67C1: $78
    ld a, b                                       ; $67C2: $78
    inc b                                         ; $67C3: $04
    jr z, @+$1A                                   ; $67C4: $28 $18

    ld d, l                                       ; $67C6: $55
    inc a                                         ; $67C7: $3C
    inc b                                         ; $67C8: $04
    ld a, [hl]                                    ; $67C9: $7E
    inc b                                         ; $67CA: $04
    cp $04                                        ; $67CB: $FE $04
    rst RST_38                                    ; $67CD: $FF
    and [hl]                                      ; $67CE: $A6
    and d                                         ; $67CF: $A2
    inc e                                         ; $67D0: $1C
    ld b, $44                                     ; $67D1: $06 $44
    rra                                           ; $67D3: $1F
    ldh [$FF38], a                                ; $67D4: $E0 $38
    ret nc                                        ; $67D6: $D0

    ld h, a                                       ; $67D7: $67
    or c                                          ; $67D8: $B1
    jr nz, jr_02A_67F7                            ; $67D9: $20 $1C

    ld [hl-], a                                   ; $67DB: $32
    ld bc, $804E                                  ; $67DC: $01 $4E $80
    jr nc, jr_02A_67E5                            ; $67DF: $30 $04

    cp d                                          ; $67E1: $BA
    ld [hl], c                                    ; $67E2: $71
    inc b                                         ; $67E3: $04
    inc b                                         ; $67E4: $04

jr_02A_67E5:
    ld b, h                                       ; $67E5: $44
    ld c, $FA                                     ; $67E6: $0E $FA
    ld a, $50                                     ; $67E8: $3E $50
    nop                                           ; $67EA: $00
    ld d, l                                       ; $67EB: $55
    nop                                           ; $67EC: $00
    nop                                           ; $67ED: $00
    ld a, a                                       ; $67EE: $7F
    nop                                           ; $67EF: $00
    ld a, b                                       ; $67F0: $78

jr_02A_67F1:
    nop                                           ; $67F1: $00
    ld b, a                                       ; $67F2: $47
    nop                                           ; $67F3: $00
    inc de                                        ; $67F4: $13
    inc a                                         ; $67F5: $3C
    ccf                                           ; $67F6: $3F

jr_02A_67F7:
    ld [hl], a                                    ; $67F7: $77
    ld d, b                                       ; $67F8: $50
    ld e, a                                       ; $67F9: $5F
    ld h, b                                       ; $67FA: $60
    and b                                         ; $67FB: $A0
    pop hl                                        ; $67FC: $E1
    and b                                         ; $67FD: $A0
    nop                                           ; $67FE: $00
    rrca                                          ; $67FF: $0F
    nop                                           ; $6800: $00
    ld sp, hl                                     ; $6801: $F9
    cp $CF                                        ; $6802: $FE $CF
    ldh a, [rIE]                                  ; $6804: $F0 $FF
    pop hl                                        ; $6806: $E1
    ld [hl], b                                    ; $6807: $70
    dec d                                         ; $6808: $15
    ld bc, $F38B                                  ; $6809: $01 $8B $F3
    db $FD                                        ; $680C: $FD
    ld bc, $6011                                  ; $680D: $01 $11 $60
    db $FC                                        ; $6810: $FC
    ld [hl], b                                    ; $6811: $70
    ld h, b                                       ; $6812: $60
    inc bc                                        ; $6813: $03
    db $ED                                        ; $6814: $ED
    ld c, $97                                     ; $6815: $0E $97
    jr jr_02A_679B                                ; $6817: $18 $82

    pop af                                        ; $6819: $F1
    ret nz                                        ; $681A: $C0

    ret z                                         ; $681B: $C8

    db $EC                                        ; $681C: $EC
    ldh [c], a                                    ; $681D: $E2
    add b                                         ; $681E: $80
    nop                                           ; $681F: $00
    ld a, [hl]                                    ; $6820: $7E
    add c                                         ; $6821: $81
    nop                                           ; $6822: $00
    or a                                          ; $6823: $B7
    rst RST_08                                    ; $6824: $CF
    ei                                            ; $6825: $FB
    rlca                                          ; $6826: $07
    rst RST_30                                    ; $6827: $F7
    rrca                                          ; $6828: $0F
    pop af                                        ; $6829: $F1
    add hl, bc                                    ; $682A: $09
    ld [bc], a                                    ; $682B: $02
    ld a, $03                                     ; $682C: $3E $03
    rst RST_38                                    ; $682E: $FF
    inc de                                        ; $682F: $13
    ld bc, $117F                                  ; $6830: $01 $7F $11
    ld a, $40                                     ; $6833: $3E $40
    ccf                                           ; $6835: $3F
    pop af                                        ; $6836: $F1
    add b                                         ; $6837: $80
    nop                                           ; $6838: $00
    ld h, b                                       ; $6839: $60
    inc b                                         ; $683A: $04
    cp a                                          ; $683B: $BF
    or l                                          ; $683C: $B5
    ld [bc], a                                    ; $683D: $02
    rst RST_18                                    ; $683E: $DF
    nop                                           ; $683F: $00
    pop af                                        ; $6840: $F1
    cp $0A                                        ; $6841: $FE $0A
    ld hl, sp+$00                                 ; $6843: $F8 $00
    ld l, d                                       ; $6845: $6A
    ld a, a                                       ; $6846: $7F
    ldh a, [rNR31]                                ; $6847: $F0 $1B
    ld a, h                                       ; $6849: $7C
    db $10                                        ; $684A: $10
    rst RST_38                                    ; $684B: $FF
    db $10                                        ; $684C: $10
    db $FC                                        ; $684D: $FC
    add b                                         ; $684E: $80
    db $10                                        ; $684F: $10
    ei                                            ; $6850: $FB
    inc bc                                        ; $6851: $03
    push af                                       ; $6852: $F5
    ld b, $CB                                     ; $6853: $06 $CB
    inc c                                         ; $6855: $0C
    or a                                          ; $6856: $B7
    ld bc, $5F38                                  ; $6857: $01 $38 $5F
    ld h, b                                       ; $685A: $60
    cp a                                          ; $685B: $BF
    ret nz                                        ; $685C: $C0

    ld l, a                                       ; $685D: $6F
    ld [hl], b                                    ; $685E: $70
    ld sp, $7F00                                  ; $685F: $31 $00 $7F
    add b                                         ; $6862: $80
    rst RST_38                                    ; $6863: $FF
    nop                                           ; $6864: $00
    cp $01                                        ; $6865: $FE $01
    db $FD                                        ; $6867: $FD
    inc bc                                        ; $6868: $03
    nop                                           ; $6869: $00
    ei                                            ; $686A: $FB
    rlca                                          ; $686B: $07
    or $0E                                        ; $686C: $F6 $0E
    db $EC                                        ; $686E: $EC
    inc e                                         ; $686F: $1C
    ret c                                         ; $6870: $D8

    jr c, jr_02A_6873                             ; $6871: $38 $00

jr_02A_6873:
    or e                                          ; $6873: $B3
    ld [hl], b                                    ; $6874: $70
    ld h, a                                       ; $6875: $67
    ldh [$FFCF], a                                ; $6876: $E0 $CF
    ret nz                                        ; $6878: $C0

    sbc a                                         ; $6879: $9F
    add b                                         ; $687A: $80
    inc e                                         ; $687B: $1C
    ccf                                           ; $687C: $3F
    nop                                           ; $687D: $00
    ld a, a                                       ; $687E: $7F
    db $10                                        ; $687F: $10
    and b                                         ; $6880: $A0
    db $10                                        ; $6881: $10
    rlca                                          ; $6882: $07
    rrca                                          ; $6883: $0F
    dec d                                         ; $6884: $15
    jp $C11F                                      ; $6885: $C3 $1F $C1


    db $10                                        ; $6888: $10

jr_02A_6889:
    ldh [$FF50], a                                ; $6889: $E0 $50
    ldh a, [$FF80]                                ; $688B: $F0 $80
    dec e                                         ; $688D: $1D
    ld hl, sp+$01                                 ; $688E: $F8 $01
    cp $D0                                        ; $6890: $FE $D0
    add b                                         ; $6892: $80
    nop                                           ; $6893: $00
    rst RST_08                                    ; $6894: $CF
    nop                                           ; $6895: $00
    ld [hl], d                                    ; $6896: $72
    or $00                                        ; $6897: $F6 $00

jr_02A_6899:
    sub b                                         ; $6899: $90
    nop                                           ; $689A: $00
    jr c, jr_02A_6899                             ; $689B: $38 $FC

    ret nz                                        ; $689D: $C0

    db $FD                                        ; $689E: $FD
    ret nz                                        ; $689F: $C0

    ld de, $19E0                                  ; $68A0: $11 $E0 $19
    ldh [$FFE6], a                                ; $68A3: $E0 $E6
    sub b                                         ; $68A5: $90
    sub [hl]                                      ; $68A6: $96
    ld [hl], b                                    ; $68A7: $70
    ld h, d                                       ; $68A8: $62
    halt                                          ; $68A9: $76
    ld d, b                                       ; $68AA: $50
    ldh a, [rSC]                                  ; $68AB: $F0 $02
    ld [hl], d                                    ; $68AD: $72
    adc [hl]                                      ; $68AE: $8E
    nop                                           ; $68AF: $00
    cp [hl]                                       ; $68B0: $BE
    and b                                         ; $68B1: $A0
    nop                                           ; $68B2: $00
    sbc $00                                       ; $68B3: $DE $00
    ld a, e                                       ; $68B5: $7B
    inc bc                                        ; $68B6: $03
    ld [hl], l                                    ; $68B7: $75
    ld b, $6B                                     ; $68B8: $06 $6B
    nop                                           ; $68BA: $00
    inc c                                         ; $68BB: $0C
    ld d, a                                       ; $68BC: $57
    jr @+$31                                      ; $68BD: $18 $2F

    jr nc, @+$61                                  ; $68BF: $30 $5F

    ld h, b                                       ; $68C1: $60
    ccf                                           ; $68C2: $3F
    inc de                                        ; $68C3: $13
    ld b, b                                       ; $68C4: $40
    ld a, a                                       ; $68C5: $7F
    nop                                           ; $68C6: $00
    db $10                                        ; $68C7: $10
    add b                                         ; $68C8: $80
    rst RST_38                                    ; $68C9: $FF
    jr nc, jr_02A_68E1                            ; $68CA: $30 $15

    inc c                                         ; $68CC: $0C
    cp $01                                        ; $68CD: $FE $01
    db $FD                                        ; $68CF: $FD
    inc bc                                        ; $68D0: $03
    ld d, b                                       ; $68D1: $50
    db $10                                        ; $68D2: $10
    db $EC                                        ; $68D3: $EC
    inc e                                         ; $68D4: $1C
    nop                                           ; $68D5: $00
    reti                                          ; $68D6: $D9


    jr c, jr_02A_6889                             ; $68D7: $38 $B0

    ld [hl], b                                    ; $68D9: $70
    ldh [$FF63], a                                ; $68DA: $E0 $63
    ld b, e                                       ; $68DC: $43
    rst RST_00                                    ; $68DD: $C7
    ld b, $C6                                     ; $68DE: $06 $C6
    rst RST_08                                    ; $68E0: $CF

jr_02A_68E1:
    add h                                         ; $68E1: $84
    sub [hl]                                      ; $68E2: $96
    add hl, de                                    ; $68E3: $19
    or b                                          ; $68E4: $B0
    sub b                                         ; $68E5: $90
    nop                                           ; $68E6: $00
    ld bc, $1F03                                  ; $68E7: $01 $03 $1F
    ld bc, $C0C1                                  ; $68EA: $01 $C1 $C0
    cp $02                                        ; $68ED: $FE $02
    jr nc, @+$0C                                  ; $68EF: $30 $0A

    dec b                                         ; $68F1: $05
    inc [hl]                                      ; $68F2: $34
    ld h, [hl]                                    ; $68F3: $66
    or $11                                        ; $68F4: $F6 $11
    ld a, a                                       ; $68F6: $7F
    ldh a, [$FF9F]                                ; $68F7: $F0 $9F
    ld bc, $EF80                                  ; $68F9: $01 $80 $EF
    ldh [rPCM34], a                               ; $68FC: $E0 $77
    ld [hl], b                                    ; $68FE: $70
    dec sp                                        ; $68FF: $3B
    cp b                                          ; $6900: $B8
    db $10                                        ; $6901: $10
    db $10                                        ; $6902: $10
    ld hl, sp+$7D                                 ; $6903: $F8 $7D
    db $FC                                        ; $6905: $FC
    ld bc, $20C1                                  ; $6906: $01 $C1 $20
    push bc                                       ; $6909: $C5
    jr nc, jr_02A_694C                            ; $690A: $30 $40

    call $CC10                                    ; $690C: $CD $10 $CC
    ld [hl-], a                                   ; $690F: $32
    sbc h                                         ; $6910: $9C

jr_02A_6911:
    ld h, d                                       ; $6911: $62
    cp h                                          ; $6912: $BC
    ld b, d                                       ; $6913: $42
    nop                                           ; $6914: $00
    ld a, h                                       ; $6915: $7C
    add d                                         ; $6916: $82
    inc e                                         ; $6917: $1C
    ld [bc], a                                    ; $6918: $02
    ld e, [hl]                                    ; $6919: $5E
    sbc $6E                                       ; $691A: $DE $6E
    xor $64                                       ; $691C: $EE $64
    xor [hl]                                      ; $691E: $AE
    jr nz, jr_02A_6932                            ; $691F: $20 $11

    sub $36                                       ; $6921: $D6 $36
    ld de, $16F6                                  ; $6923: $11 $F6 $16
    ld [$1AEA], sp                                ; $6926: $08 $EA $1A
    ld a, a                                       ; $6929: $7F
    nop                                           ; $692A: $00
    dec e                                         ; $692B: $1D
    ld a, [$F606]                                 ; $692C: $FA $06 $F6
    nop                                           ; $692F: $00
    ld c, $FC                                     ; $6930: $0E $FC

jr_02A_6932:
    inc c                                         ; $6932: $0C
    jp hl                                         ; $6933: $E9


    jr jr_02A_6911                                ; $6934: $18 $DB

    jr c, @-$4B                                   ; $6936: $38 $B3

    ld hl, $F770                                  ; $6938: $21 $70 $F7
    db $10                                        ; $693B: $10
    ld h, a                                       ; $693C: $67
    ldh [$FF1F], a                                ; $693D: $E0 $1F
    ld a, h                                       ; $693F: $7C
    ld de, $3F40                                  ; $6940: $11 $40 $3F
    ld de, $3C7E                                  ; $6943: $11 $7E $3C
    cp h                                          ; $6946: $BC
    rst RST_18                                    ; $6947: $DF
    ld e, [hl]                                    ; $6948: $5E
    xor a                                         ; $6949: $AF
    dec d                                         ; $694A: $15
    ld l, l                                       ; $694B: $6D

jr_02A_694C:
    rst RST_10                                    ; $694C: $D7
    dec [hl]                                      ; $694D: $35
    ret nc                                        ; $694E: $D0

    ld l, a                                       ; $694F: $6F
    or b                                          ; $6950: $B0
    rrca                                          ; $6951: $0F
    db $10                                        ; $6952: $10
    xor e                                         ; $6953: $AB
    ld b, b                                       ; $6954: $40
    rst RST_38                                    ; $6955: $FF
    jr nz, jr_02A_69D7                            ; $6956: $20 $7F

    nop                                           ; $6958: $00
    sbc a                                         ; $6959: $9F
    nop                                           ; $695A: $00
    ld d, b                                       ; $695B: $50
    xor [hl]                                      ; $695C: $AE
    ld [bc], a                                    ; $695D: $02
    db $FC                                        ; $695E: $FC
    db $10                                        ; $695F: $10
    cp $00                                        ; $6960: $FE $00
    jr nc, jr_02A_6964                            ; $6962: $30 $00

jr_02A_6964:
    ei                                            ; $6964: $FB
    xor l                                         ; $6965: $AD
    nop                                           ; $6966: $00
    ld a, [$F970]                                 ; $6967: $FA $70 $F9
    jr nz, jr_02A_69AC                            ; $696A: $20 $40

    pop af                                        ; $696C: $F1

jr_02A_696D:
    ld b, b                                       ; $696D: $40
    sub b                                         ; $696E: $90
    db $10                                        ; $696F: $10
    inc c                                         ; $6970: $0C
    jp nz, $2210                                  ; $6971: $C2 $10 $22

    add hl, bc                                    ; $6974: $09
    ld b, h                                       ; $6975: $44
    sbc c                                         ; $6976: $99
    nop                                           ; $6977: $00
    inc b                                         ; $6978: $04
    or e                                          ; $6979: $B3
    adc b                                         ; $697A: $88
    db $E3                                        ; $697B: $E3
    sub b                                         ; $697C: $90
    ld c, e                                       ; $697D: $4B
    jr z, jr_02A_69DB                             ; $697E: $28 $5B

    ld [de], a                                    ; $6980: $12
    jr jr_02A_696D                                ; $6981: $18 $EA

    ld a, [de]                                    ; $6983: $1A
    ld de, $0CF4                                  ; $6984: $11 $F4 $0C
    inc de                                        ; $6987: $13
    ld a, [$0640]                                 ; $6988: $FA $40 $06
    inc de                                        ; $698B: $13
    ld a, a                                       ; $698C: $7F
    nop                                           ; $698D: $00
    ld c, $71                                     ; $698E: $0E $71
    ld [hl], a                                    ; $6990: $77
    ld a, c                                       ; $6991: $79
    ld d, d                                       ; $6992: $52
    ld a, l                                       ; $6993: $7D
    ld h, b                                       ; $6994: $60
    rrca                                          ; $6995: $0F
    nop                                           ; $6996: $00
    ld [hl], e                                    ; $6997: $73
    inc bc                                        ; $6998: $03
    ld d, b                                       ; $6999: $50

jr_02A_699A:
    ld bc, $7C42                                  ; $699A: $01 $42 $7C
    ret nc                                        ; $699D: $D0

    rst RST_20                                    ; $699E: $E7
    ldh [$FFC3], a                                ; $699F: $E0 $C3
    ret nz                                        ; $69A1: $C0

    nop                                           ; $69A2: $00
    call c, $8220                                 ; $69A3: $DC $20 $82
    sbc a                                         ; $69A6: $9F
    db $10                                        ; $69A7: $10
    cp a                                          ; $69A8: $BF
    ld [bc], a                                    ; $69A9: $02
    rra                                           ; $69AA: $1F
    ld [hl+], a                                   ; $69AB: $22

jr_02A_69AC:
    ld l, a                                       ; $69AC: $6F
    nop                                           ; $69AD: $00
    ld [hl], d                                    ; $69AE: $72
    ld [hl], a                                    ; $69AF: $77
    jp hl                                         ; $69B0: $E9


    add hl, de                                    ; $69B1: $19
    jp nz, $803E                                  ; $69B2: $C2 $3E $80

    ld b, b                                       ; $69B5: $40
    jr nc, @+$41                                  ; $69B6: $30 $3F

    nop                                           ; $69B8: $00
    ldh [rLCDC], a                                ; $69B9: $E0 $40
    rst RST_18                                    ; $69BB: $DF
    ret nz                                        ; $69BC: $C0

    rst RST_28                                    ; $69BD: $EF
    ldh [rHDMA5], a                               ; $69BE: $E0 $55
    xor $10                                       ; $69C0: $EE $10
    rst RST_38                                    ; $69C2: $FF
    nop                                           ; $69C3: $00
    ld a, a                                       ; $69C4: $7F
    nop                                           ; $69C5: $00
    scf                                           ; $69C6: $37
    nop                                           ; $69C7: $00
    jr nz, jr_02A_699A                            ; $69C8: $20 $D0

    db $10                                        ; $69CA: $10
    db $10                                        ; $69CB: $10
    inc d                                         ; $69CC: $14
    or b                                          ; $69CD: $B0
    ld [hl], $70                                  ; $69CE: $36 $70
    halt                                          ; $69D0: $76
    ld b, b                                       ; $69D1: $40
    ld sp, hl                                     ; $69D2: $F9
    nop                                           ; $69D3: $00
    or $F2                                        ; $69D4: $F6 $F2
    add b                                         ; $69D6: $80

jr_02A_69D7:
    adc b                                         ; $69D7: $88
    sbc l                                         ; $69D8: $9D
    sbc b                                         ; $69D9: $98
    add b                                         ; $69DA: $80

jr_02A_69DB:
    ld h, b                                       ; $69DB: $60
    db $FC                                        ; $69DC: $FC
    dec a                                         ; $69DD: $3D
    inc a                                         ; $69DE: $3C
    ld a, l                                       ; $69DF: $7D
    ld a, h                                       ; $69E0: $7C
    ld a, [$00F8]                                 ; $69E1: $FA $F8 $00
    rst RST_30                                    ; $69E4: $F7
    ldh a, [$FF9B]                                ; $69E5: $F0 $9B
    ld e, b                                       ; $69E7: $58
    cp e                                          ; $69E8: $BB
    jr c, jr_02A_6A26                             ; $69E9: $38 $3B

    cp b                                          ; $69EB: $B8
    add b                                         ; $69EC: $80
    inc de                                        ; $69ED: $13
    dec a                                         ; $69EE: $3D
    cp h                                          ; $69EF: $BC
    dec e                                         ; $69F0: $1D
    ld e, h                                       ; $69F1: $5C
    sbc l                                         ; $69F2: $9D
    inc e                                         ; $69F3: $1C
    ld hl, sp+$13                                 ; $69F4: $F8 $13
    ld b, $FC                                     ; $69F6: $06 $FC
    ld [bc], a                                    ; $69F8: $02
    dec d                                         ; $69F9: $15
    cp $00                                        ; $69FA: $FE $00
    ld sp, $63D1                                  ; $69FC: $31 $D1 $63
    ld b, b                                       ; $69FF: $40
    ld d, b                                       ; $6A00: $50
    jr nz, jr_02A_6A42                            ; $6A01: $20 $3F

    inc c                                         ; $6A03: $0C
    ld a, a                                       ; $6A04: $7F
    dec d                                         ; $6A05: $15
    and b                                         ; $6A06: $A0
    ldh [rP1], a                                  ; $6A07: $E0 $00
    jr nz, jr_02A_6A0B                            ; $6A09: $20 $00

jr_02A_6A0B:
    ld a, b                                       ; $6A0B: $78
    ei                                            ; $6A0C: $FB
    ld a, h                                       ; $6A0D: $7C
    db $FD                                        ; $6A0E: $FD
    cp $B5                                        ; $6A0F: $FE $B5
    nop                                           ; $6A11: $00
    rst RST_38                                    ; $6A12: $FF
    ld b, $F1                                     ; $6A13: $06 $F1
    ldh [rSC], a                                  ; $6A15: $E0 $02
    ld h, b                                       ; $6A17: $60
    db $10                                        ; $6A18: $10
    ld b, $0E                                     ; $6A19: $06 $0E
    ld e, [hl]                                    ; $6A1B: $5E
    sbc a                                         ; $6A1C: $9F
    cp a                                          ; $6A1D: $BF
    ccf                                           ; $6A1E: $3F
    or b                                          ; $6A1F: $B0
    inc de                                        ; $6A20: $13
    rst RST_38                                    ; $6A21: $FF
    add [hl]                                      ; $6A22: $86
    nop                                           ; $6A23: $00
    ld a, b                                       ; $6A24: $78
    db $FC                                        ; $6A25: $FC

jr_02A_6A26:
    nop                                           ; $6A26: $00
    jr nc, jr_02A_6A39                            ; $6A27: $30 $10

    ld [bc], a                                    ; $6A29: $02
    add b                                         ; $6A2A: $80
    xor d                                         ; $6A2B: $AA
    nop                                           ; $6A2C: $00
    cp [hl]                                       ; $6A2D: $BE
    nop                                           ; $6A2E: $00
    cp a                                          ; $6A2F: $BF
    nop                                           ; $6A30: $00
    adc a                                         ; $6A31: $8F
    ld d, b                                       ; $6A32: $50
    rra                                           ; $6A33: $1F
    or c                                          ; $6A34: $B1
    or d                                          ; $6A35: $B2
    ccf                                           ; $6A36: $3F
    nop                                           ; $6A37: $00
    ld d, b                                       ; $6A38: $50

jr_02A_6A39:
    ld e, a                                       ; $6A39: $5F
    rrca                                          ; $6A3A: $0F
    ld l, a                                       ; $6A3B: $6F
    stop                                          ; $6A3C: $10 $00
    cpl                                           ; $6A3E: $2F
    add e                                         ; $6A3F: $83
    and e                                         ; $6A40: $A3
    db $DD                                        ; $6A41: $DD

jr_02A_6A42:
    inc e                                         ; $6A42: $1C
    inc a                                         ; $6A43: $3C
    dec a                                         ; $6A44: $3D
    db $FC                                        ; $6A45: $FC
    ld a, b                                       ; $6A46: $78
    db $FD                                        ; $6A47: $FD
    dec d                                         ; $6A48: $15
    ld bc, $0030                                  ; $6A49: $01 $30 $00
    ldh a, [c]                                    ; $6A4C: $F2
    ld c, $E4                                     ; $6A4D: $0E $E4
    nop                                           ; $6A4F: $00
    inc e                                         ; $6A50: $1C
    jp z, $9638                                   ; $6A51: $CA $38 $96

    ld [hl], b                                    ; $6A54: $70
    ld l, $E0                                     ; $6A55: $2E $E0
    ld e, [hl]                                    ; $6A57: $5E
    nop                                           ; $6A58: $00
    ret nz                                        ; $6A59: $C0

    cp h                                          ; $6A5A: $BC
    add b                                         ; $6A5B: $80
    ld h, d                                       ; $6A5C: $62
    ld [bc], a                                    ; $6A5D: $02
    ld b, e                                       ; $6A5E: $43
    ld a, a                                       ; $6A5F: $7F
    ld a, [hl]                                    ; $6A60: $7E
    ld e, d                                       ; $6A61: $5A
    ld bc, $0020                                  ; $6A62: $01 $20 $00
    rla                                           ; $6A65: $17
    ld bc, $009F                                  ; $6A66: $01 $9F $00
    ld l, a                                       ; $6A69: $6F
    nop                                           ; $6A6A: $00
    rst RST_28                                    ; $6A6B: $EF
    rst RST_10                                    ; $6A6C: $D7
    scf                                           ; $6A6D: $37
    db $EB                                        ; $6A6E: $EB
    dec de                                        ; $6A6F: $1B
    ei                                            ; $6A70: $FB
    dec bc                                        ; $6A71: $0B
    push af                                       ; $6A72: $F5
    db $10                                        ; $6A73: $10
    dec c                                         ; $6A74: $0D
    db $FD                                        ; $6A75: $FD
    dec b                                         ; $6A76: $05
    pop af                                        ; $6A77: $F1
    rra                                           ; $6A78: $1F
    ld a, a                                       ; $6A79: $7F
    adc a                                         ; $6A7A: $8F
    cp a                                          ; $6A7B: $BF
    ld b, d                                       ; $6A7C: $42
    add b                                         ; $6A7D: $80
    db $10                                        ; $6A7E: $10
    ret nz                                        ; $6A7F: $C0

    adc $E0                                       ; $6A80: $CE $E0
    pop hl                                        ; $6A82: $E1
    db $10                                        ; $6A83: $10
    rst RST_28                                    ; $6A84: $EF
    call nc, $F111                                ; $6A85: $D4 $11 $F1
    sbc a                                         ; $6A88: $9F
    or b                                          ; $6A89: $B0
    sub a                                         ; $6A8A: $97
    db $10                                        ; $6A8B: $10
    dec bc                                        ; $6A8C: $0B
    ld a, a                                       ; $6A8D: $7F
    ld [bc], a                                    ; $6A8E: $02
    dec b                                         ; $6A8F: $05
    ccf                                           ; $6A90: $3F
    ld [bc], a                                    ; $6A91: $02
    rst RST_08                                    ; $6A92: $CF
    ld bc, $C0F3                                  ; $6A93: $01 $F3 $C0
    db $FC                                        ; $6A96: $FC
    add b                                         ; $6A97: $80
    pop af                                        ; $6A98: $F1
    ret nz                                        ; $6A99: $C0

    call z, $E3E1                                 ; $6A9A: $CC $E1 $E3
    db $E4                                        ; $6A9D: $E4
    db $ED                                        ; $6A9E: $ED
    and $2D                                       ; $6A9F: $E6 $2D
    xor $E2                                       ; $6AA1: $EE $E2
    db $10                                        ; $6AA3: $10
    ld h, d                                       ; $6AA4: $62
    db $10                                        ; $6AA5: $10
    ret nz                                        ; $6AA6: $C0

    ld b, $F1                                     ; $6AA7: $06 $F1
    ld d, h                                       ; $6AA9: $54
    cp $00                                        ; $6AAA: $FE $00
    ld a, a                                       ; $6AAC: $7F
    nop                                           ; $6AAD: $00
    cp a                                          ; $6AAE: $BF
    nop                                           ; $6AAF: $00
    ld e, a                                       ; $6AB0: $5F
    rst RST_18                                    ; $6AB1: $DF
    dec [hl]                                      ; $6AB2: $35
    ld l, a                                       ; $6AB3: $6F
    rst RST_28                                    ; $6AB4: $EF
    inc de                                        ; $6AB5: $13
    pop af                                        ; $6AB6: $F1
    ld e, $00                                     ; $6AB7: $1E $00
    cp $0A                                        ; $6AB9: $FE $0A
    add b                                         ; $6ABB: $80
    pop af                                        ; $6ABC: $F1
    nop                                           ; $6ABD: $00
    ld b, b                                       ; $6ABE: $40
    nop                                           ; $6ABF: $00
    ld b, b                                       ; $6AC0: $40
    dec b                                         ; $6AC1: $05
    add b                                         ; $6AC2: $80
    dec b                                         ; $6AC3: $05
    add a                                         ; $6AC4: $87
    ld b, $8E                                     ; $6AC5: $06 $8E
    ld b, $95                                     ; $6AC7: $06 $95
    ld b, $9C                                     ; $6AC9: $06 $9C
    ld b, $A3                                     ; $6ACB: $06 $A3
    ld b, $AA                                     ; $6ACD: $06 $AA
    nop                                           ; $6ACF: $00
    ld b, b                                       ; $6AD0: $40
    nop                                           ; $6AD1: $00
    ld b, b                                       ; $6AD2: $40
    nop                                           ; $6AD3: $00
    ld b, b                                       ; $6AD4: $40
    nop                                           ; $6AD5: $00
    ld b, b                                       ; $6AD6: $40
    nop                                           ; $6AD7: $00
    ld b, b                                       ; $6AD8: $40
    nop                                           ; $6AD9: $00
    ld b, b                                       ; $6ADA: $40
    nop                                           ; $6ADB: $00
    ld b, b                                       ; $6ADC: $40
    nop                                           ; $6ADD: $00
    ld b, b                                       ; $6ADE: $40
    nop                                           ; $6ADF: $00
    ld b, b                                       ; $6AE0: $40
    nop                                           ; $6AE1: $00
    ld b, b                                       ; $6AE2: $40
    nop                                           ; $6AE3: $00
    ld b, b                                       ; $6AE4: $40
    dec b                                         ; $6AE5: $05
    add c                                         ; $6AE6: $81
    dec b                                         ; $6AE7: $05
    adc b                                         ; $6AE8: $88
    ld b, $8F                                     ; $6AE9: $06 $8F
    ld b, $96                                     ; $6AEB: $06 $96
    ld b, $9D                                     ; $6AED: $06 $9D
    dec b                                         ; $6AEF: $05
    and h                                         ; $6AF0: $A4
    dec b                                         ; $6AF1: $05
    xor e                                         ; $6AF2: $AB
    nop                                           ; $6AF3: $00
    ld b, b                                       ; $6AF4: $40
    nop                                           ; $6AF5: $00
    ld b, b                                       ; $6AF6: $40
    nop                                           ; $6AF7: $00
    ld b, b                                       ; $6AF8: $40
    nop                                           ; $6AF9: $00
    ld b, b                                       ; $6AFA: $40
    nop                                           ; $6AFB: $00
    ld b, b                                       ; $6AFC: $40
    nop                                           ; $6AFD: $00
    ld b, b                                       ; $6AFE: $40
    nop                                           ; $6AFF: $00
    ld b, b                                       ; $6B00: $40
    nop                                           ; $6B01: $00
    ld b, b                                       ; $6B02: $40
    nop                                           ; $6B03: $00
    ld b, b                                       ; $6B04: $40
    nop                                           ; $6B05: $00
    ld b, b                                       ; $6B06: $40
    nop                                           ; $6B07: $00
    ld b, b                                       ; $6B08: $40
    dec b                                         ; $6B09: $05
    add d                                         ; $6B0A: $82
    dec b                                         ; $6B0B: $05
    adc c                                         ; $6B0C: $89
    dec b                                         ; $6B0D: $05
    sub b                                         ; $6B0E: $90
    ld b, $97                                     ; $6B0F: $06 $97
    ld b, $9E                                     ; $6B11: $06 $9E
    ld b, $A5                                     ; $6B13: $06 $A5
    dec b                                         ; $6B15: $05
    xor h                                         ; $6B16: $AC
    nop                                           ; $6B17: $00
    ld b, b                                       ; $6B18: $40
    nop                                           ; $6B19: $00
    ld b, b                                       ; $6B1A: $40
    nop                                           ; $6B1B: $00
    ld b, b                                       ; $6B1C: $40
    nop                                           ; $6B1D: $00
    ld b, b                                       ; $6B1E: $40
    nop                                           ; $6B1F: $00
    ld b, b                                       ; $6B20: $40
    nop                                           ; $6B21: $00
    ld b, b                                       ; $6B22: $40
    nop                                           ; $6B23: $00
    ld b, b                                       ; $6B24: $40
    nop                                           ; $6B25: $00
    ld b, b                                       ; $6B26: $40
    nop                                           ; $6B27: $00
    ld b, b                                       ; $6B28: $40
    nop                                           ; $6B29: $00
    ld b, b                                       ; $6B2A: $40
    nop                                           ; $6B2B: $00
    ld b, b                                       ; $6B2C: $40
    dec b                                         ; $6B2D: $05
    add e                                         ; $6B2E: $83
    dec b                                         ; $6B2F: $05
    adc d                                         ; $6B30: $8A
    dec b                                         ; $6B31: $05
    sub c                                         ; $6B32: $91
    dec b                                         ; $6B33: $05
    sbc b                                         ; $6B34: $98
    ld b, $9F                                     ; $6B35: $06 $9F
    ld b, $A6                                     ; $6B37: $06 $A6
    inc b                                         ; $6B39: $04
    xor l                                         ; $6B3A: $AD
    nop                                           ; $6B3B: $00
    ld b, b                                       ; $6B3C: $40
    nop                                           ; $6B3D: $00
    ld b, b                                       ; $6B3E: $40
    nop                                           ; $6B3F: $00
    ld b, b                                       ; $6B40: $40
    nop                                           ; $6B41: $00
    ld b, b                                       ; $6B42: $40
    nop                                           ; $6B43: $00
    ld b, b                                       ; $6B44: $40
    nop                                           ; $6B45: $00
    ld b, b                                       ; $6B46: $40
    nop                                           ; $6B47: $00
    ld b, b                                       ; $6B48: $40
    nop                                           ; $6B49: $00
    ld b, b                                       ; $6B4A: $40
    nop                                           ; $6B4B: $00
    ld b, b                                       ; $6B4C: $40
    nop                                           ; $6B4D: $00
    ld b, b                                       ; $6B4E: $40
    nop                                           ; $6B4F: $00
    ld b, b                                       ; $6B50: $40
    dec b                                         ; $6B51: $05
    add h                                         ; $6B52: $84
    dec b                                         ; $6B53: $05
    adc e                                         ; $6B54: $8B
    dec b                                         ; $6B55: $05
    sub d                                         ; $6B56: $92
    dec b                                         ; $6B57: $05
    sbc c                                         ; $6B58: $99
    rlca                                          ; $6B59: $07
    and b                                         ; $6B5A: $A0
    inc b                                         ; $6B5B: $04
    and a                                         ; $6B5C: $A7
    inc b                                         ; $6B5D: $04
    xor [hl]                                      ; $6B5E: $AE
    nop                                           ; $6B5F: $00
    ld b, b                                       ; $6B60: $40
    nop                                           ; $6B61: $00
    ld b, b                                       ; $6B62: $40
    nop                                           ; $6B63: $00
    ld b, b                                       ; $6B64: $40
    nop                                           ; $6B65: $00
    ld b, b                                       ; $6B66: $40
    nop                                           ; $6B67: $00
    ld b, b                                       ; $6B68: $40
    nop                                           ; $6B69: $00
    ld b, b                                       ; $6B6A: $40
    nop                                           ; $6B6B: $00
    ld b, b                                       ; $6B6C: $40
    nop                                           ; $6B6D: $00
    ld b, b                                       ; $6B6E: $40
    nop                                           ; $6B6F: $00
    ld b, b                                       ; $6B70: $40
    nop                                           ; $6B71: $00
    ld b, b                                       ; $6B72: $40
    nop                                           ; $6B73: $00
    ld b, b                                       ; $6B74: $40
    dec b                                         ; $6B75: $05
    add l                                         ; $6B76: $85
    dec b                                         ; $6B77: $05
    adc h                                         ; $6B78: $8C
    dec b                                         ; $6B79: $05
    sub e                                         ; $6B7A: $93
    dec b                                         ; $6B7B: $05
    sbc d                                         ; $6B7C: $9A
    inc b                                         ; $6B7D: $04
    and c                                         ; $6B7E: $A1
    inc b                                         ; $6B7F: $04
    xor b                                         ; $6B80: $A8
    rlca                                          ; $6B81: $07
    xor a                                         ; $6B82: $AF
    nop                                           ; $6B83: $00
    ld b, b                                       ; $6B84: $40
    nop                                           ; $6B85: $00
    ld b, b                                       ; $6B86: $40
    nop                                           ; $6B87: $00
    ld b, b                                       ; $6B88: $40
    nop                                           ; $6B89: $00
    ld b, b                                       ; $6B8A: $40
    nop                                           ; $6B8B: $00
    ld b, b                                       ; $6B8C: $40
    nop                                           ; $6B8D: $00
    ld b, b                                       ; $6B8E: $40
    nop                                           ; $6B8F: $00
    ld b, b                                       ; $6B90: $40
    nop                                           ; $6B91: $00
    ld b, b                                       ; $6B92: $40
    nop                                           ; $6B93: $00
    ld b, b                                       ; $6B94: $40
    nop                                           ; $6B95: $00
    ld b, b                                       ; $6B96: $40
    nop                                           ; $6B97: $00
    ld b, b                                       ; $6B98: $40
    dec b                                         ; $6B99: $05
    add [hl]                                      ; $6B9A: $86
    dec b                                         ; $6B9B: $05
    adc l                                         ; $6B9C: $8D
    rlca                                          ; $6B9D: $07
    sub h                                         ; $6B9E: $94
    inc b                                         ; $6B9F: $04
    sbc e                                         ; $6BA0: $9B
    inc b                                         ; $6BA1: $04
    and d                                         ; $6BA2: $A2
    inc b                                         ; $6BA3: $04
    xor c                                         ; $6BA4: $A9
    inc b                                         ; $6BA5: $04
    or b                                          ; $6BA6: $B0
    nop                                           ; $6BA7: $00
    ld b, b                                       ; $6BA8: $40
    nop                                           ; $6BA9: $00
    ld b, b                                       ; $6BAA: $40
    nop                                           ; $6BAB: $00
    ld b, b                                       ; $6BAC: $40
    nop                                           ; $6BAD: $00
    ld b, b                                       ; $6BAE: $40
    nop                                           ; $6BAF: $00
    ld b, b                                       ; $6BB0: $40
    nop                                           ; $6BB1: $00
    ld b, b                                       ; $6BB2: $40
    nop                                           ; $6BB3: $00
    ld b, b                                       ; $6BB4: $40
    nop                                           ; $6BB5: $00
    ld b, b                                       ; $6BB6: $40
    nop                                           ; $6BB7: $00
    ld b, b                                       ; $6BB8: $40
    nop                                           ; $6BB9: $00
    ld b, b                                       ; $6BBA: $40
    nop                                           ; $6BBB: $00
    ld b, b                                       ; $6BBC: $40
    inc b                                         ; $6BBD: $04
    add b                                         ; $6BBE: $80
    inc b                                         ; $6BBF: $04
    add a                                         ; $6BC0: $87
    inc b                                         ; $6BC1: $04
    adc [hl]                                      ; $6BC2: $8E
    inc b                                         ; $6BC3: $04
    sub l                                         ; $6BC4: $95
    ld b, $9C                                     ; $6BC5: $06 $9C
    ld b, $A3                                     ; $6BC7: $06 $A3
    ld b, $AA                                     ; $6BC9: $06 $AA
    nop                                           ; $6BCB: $00
    ld b, b                                       ; $6BCC: $40
    nop                                           ; $6BCD: $00
    ld b, b                                       ; $6BCE: $40
    nop                                           ; $6BCF: $00
    ld b, b                                       ; $6BD0: $40
    nop                                           ; $6BD1: $00
    ld b, b                                       ; $6BD2: $40
    nop                                           ; $6BD3: $00
    ld b, b                                       ; $6BD4: $40
    nop                                           ; $6BD5: $00
    ld b, b                                       ; $6BD6: $40
    nop                                           ; $6BD7: $00
    ld b, b                                       ; $6BD8: $40
    nop                                           ; $6BD9: $00
    ld b, b                                       ; $6BDA: $40
    nop                                           ; $6BDB: $00
    ld b, b                                       ; $6BDC: $40
    nop                                           ; $6BDD: $00
    ld b, b                                       ; $6BDE: $40
    nop                                           ; $6BDF: $00
    ld b, b                                       ; $6BE0: $40
    inc b                                         ; $6BE1: $04
    add c                                         ; $6BE2: $81
    inc b                                         ; $6BE3: $04
    adc b                                         ; $6BE4: $88
    inc b                                         ; $6BE5: $04
    adc a                                         ; $6BE6: $8F
    inc b                                         ; $6BE7: $04
    sub [hl]                                      ; $6BE8: $96
    ld b, $9D                                     ; $6BE9: $06 $9D
    dec b                                         ; $6BEB: $05
    and h                                         ; $6BEC: $A4
    dec b                                         ; $6BED: $05
    xor e                                         ; $6BEE: $AB
    nop                                           ; $6BEF: $00
    ld b, b                                       ; $6BF0: $40
    nop                                           ; $6BF1: $00
    ld b, b                                       ; $6BF2: $40
    nop                                           ; $6BF3: $00
    ld b, b                                       ; $6BF4: $40
    nop                                           ; $6BF5: $00
    ld b, b                                       ; $6BF6: $40
    nop                                           ; $6BF7: $00
    ld b, b                                       ; $6BF8: $40
    nop                                           ; $6BF9: $00
    ld b, b                                       ; $6BFA: $40
    nop                                           ; $6BFB: $00
    ld b, b                                       ; $6BFC: $40
    nop                                           ; $6BFD: $00
    ld b, b                                       ; $6BFE: $40
    nop                                           ; $6BFF: $00
    ld b, b                                       ; $6C00: $40
    nop                                           ; $6C01: $00
    ld b, b                                       ; $6C02: $40
    nop                                           ; $6C03: $00
    ld b, b                                       ; $6C04: $40
    inc b                                         ; $6C05: $04
    add d                                         ; $6C06: $82
    inc b                                         ; $6C07: $04
    adc c                                         ; $6C08: $89
    inc b                                         ; $6C09: $04
    sub b                                         ; $6C0A: $90
    inc b                                         ; $6C0B: $04
    sub a                                         ; $6C0C: $97
    dec b                                         ; $6C0D: $05
    sbc [hl]                                      ; $6C0E: $9E
    dec b                                         ; $6C0F: $05
    and l                                         ; $6C10: $A5
    dec b                                         ; $6C11: $05
    xor h                                         ; $6C12: $AC
    nop                                           ; $6C13: $00
    ld b, b                                       ; $6C14: $40
    nop                                           ; $6C15: $00
    ld b, b                                       ; $6C16: $40
    nop                                           ; $6C17: $00
    ld b, b                                       ; $6C18: $40
    nop                                           ; $6C19: $00
    ld b, b                                       ; $6C1A: $40
    nop                                           ; $6C1B: $00
    ld b, b                                       ; $6C1C: $40
    nop                                           ; $6C1D: $00
    ld b, b                                       ; $6C1E: $40
    nop                                           ; $6C1F: $00
    ld b, b                                       ; $6C20: $40
    nop                                           ; $6C21: $00
    ld b, b                                       ; $6C22: $40
    nop                                           ; $6C23: $00
    ld b, b                                       ; $6C24: $40
    nop                                           ; $6C25: $00
    ld b, b                                       ; $6C26: $40
    nop                                           ; $6C27: $00
    ld b, b                                       ; $6C28: $40
    inc b                                         ; $6C29: $04
    add e                                         ; $6C2A: $83
    inc b                                         ; $6C2B: $04
    adc d                                         ; $6C2C: $8A
    rlca                                          ; $6C2D: $07
    sub c                                         ; $6C2E: $91
    ld b, $98                                     ; $6C2F: $06 $98
    dec b                                         ; $6C31: $05
    sbc a                                         ; $6C32: $9F
    ld b, $A6                                     ; $6C33: $06 $A6
    ld b, $AD                                     ; $6C35: $06 $AD
    nop                                           ; $6C37: $00
    ld b, b                                       ; $6C38: $40
    nop                                           ; $6C39: $00
    ld b, b                                       ; $6C3A: $40
    nop                                           ; $6C3B: $00
    ld b, b                                       ; $6C3C: $40
    nop                                           ; $6C3D: $00
    ld b, b                                       ; $6C3E: $40
    nop                                           ; $6C3F: $00
    ld b, b                                       ; $6C40: $40
    nop                                           ; $6C41: $00
    ld b, b                                       ; $6C42: $40
    nop                                           ; $6C43: $00
    ld b, b                                       ; $6C44: $40
    nop                                           ; $6C45: $00
    ld b, b                                       ; $6C46: $40
    nop                                           ; $6C47: $00
    ld b, b                                       ; $6C48: $40
    nop                                           ; $6C49: $00
    ld b, b                                       ; $6C4A: $40
    nop                                           ; $6C4B: $00
    ld b, b                                       ; $6C4C: $40
    inc b                                         ; $6C4D: $04
    add h                                         ; $6C4E: $84
    inc b                                         ; $6C4F: $04
    adc e                                         ; $6C50: $8B
    inc b                                         ; $6C51: $04
    sub d                                         ; $6C52: $92
    ld b, $99                                     ; $6C53: $06 $99
    dec b                                         ; $6C55: $05
    and b                                         ; $6C56: $A0
    ld b, $A7                                     ; $6C57: $06 $A7
    ld b, $AE                                     ; $6C59: $06 $AE
    nop                                           ; $6C5B: $00
    ld b, b                                       ; $6C5C: $40
    nop                                           ; $6C5D: $00
    ld b, b                                       ; $6C5E: $40
    nop                                           ; $6C5F: $00
    ld b, b                                       ; $6C60: $40
    nop                                           ; $6C61: $00
    ld b, b                                       ; $6C62: $40
    nop                                           ; $6C63: $00
    ld b, b                                       ; $6C64: $40
    nop                                           ; $6C65: $00
    ld b, b                                       ; $6C66: $40
    nop                                           ; $6C67: $00
    ld b, b                                       ; $6C68: $40
    nop                                           ; $6C69: $00
    ld b, b                                       ; $6C6A: $40
    nop                                           ; $6C6B: $00
    ld b, b                                       ; $6C6C: $40
    nop                                           ; $6C6D: $00
    ld b, b                                       ; $6C6E: $40
    nop                                           ; $6C6F: $00
    ld b, b                                       ; $6C70: $40
    inc b                                         ; $6C71: $04
    add l                                         ; $6C72: $85
    inc b                                         ; $6C73: $04
    adc h                                         ; $6C74: $8C
    inc b                                         ; $6C75: $04
    sub e                                         ; $6C76: $93
    inc b                                         ; $6C77: $04
    sbc d                                         ; $6C78: $9A
    ld b, $A1                                     ; $6C79: $06 $A1
    ld b, $A8                                     ; $6C7B: $06 $A8
    ld b, $AF                                     ; $6C7D: $06 $AF
    nop                                           ; $6C7F: $00
    ld b, b                                       ; $6C80: $40
    nop                                           ; $6C81: $00
    ld b, b                                       ; $6C82: $40
    nop                                           ; $6C83: $00
    ld b, b                                       ; $6C84: $40
    nop                                           ; $6C85: $00
    ld b, b                                       ; $6C86: $40
    nop                                           ; $6C87: $00
    ld b, b                                       ; $6C88: $40
    nop                                           ; $6C89: $00
    ld b, b                                       ; $6C8A: $40
    nop                                           ; $6C8B: $00
    ld b, b                                       ; $6C8C: $40
    nop                                           ; $6C8D: $00
    ld b, b                                       ; $6C8E: $40
    nop                                           ; $6C8F: $00
    ld b, b                                       ; $6C90: $40
    nop                                           ; $6C91: $00
    ld b, b                                       ; $6C92: $40
    nop                                           ; $6C93: $00
    ld b, b                                       ; $6C94: $40
    inc b                                         ; $6C95: $04
    add [hl]                                      ; $6C96: $86
    inc b                                         ; $6C97: $04
    adc l                                         ; $6C98: $8D
    inc b                                         ; $6C99: $04
    sub h                                         ; $6C9A: $94
    ld b, $9B                                     ; $6C9B: $06 $9B
    ld b, $A2                                     ; $6C9D: $06 $A2
    ld b, $A9                                     ; $6C9F: $06 $A9
    ld b, $B0                                     ; $6CA1: $06 $B0
    nop                                           ; $6CA3: $00
    ld b, b                                       ; $6CA4: $40
    nop                                           ; $6CA5: $00
    ld b, b                                       ; $6CA6: $40
    nop                                           ; $6CA7: $00
    ld b, b                                       ; $6CA8: $40
    nop                                           ; $6CA9: $00
    ld b, b                                       ; $6CAA: $40
    nop                                           ; $6CAB: $00
    ld b, b                                       ; $6CAC: $40
    nop                                           ; $6CAD: $00
    ld b, b                                       ; $6CAE: $40
    nop                                           ; $6CAF: $00
    ld b, b                                       ; $6CB0: $40
    nop                                           ; $6CB1: $00
    ld b, b                                       ; $6CB2: $40
    nop                                           ; $6CB3: $00
    ld b, b                                       ; $6CB4: $40
    nop                                           ; $6CB5: $00
    ld b, b                                       ; $6CB6: $40
    nop                                           ; $6CB7: $00
    ld b, b                                       ; $6CB8: $40
    inc b                                         ; $6CB9: $04
    add b                                         ; $6CBA: $80
    inc b                                         ; $6CBB: $04
    add a                                         ; $6CBC: $87
    inc b                                         ; $6CBD: $04
    adc [hl]                                      ; $6CBE: $8E
    inc b                                         ; $6CBF: $04
    sub l                                         ; $6CC0: $95
    inc b                                         ; $6CC1: $04
    sbc h                                         ; $6CC2: $9C
    inc b                                         ; $6CC3: $04
    and e                                         ; $6CC4: $A3
    inc b                                         ; $6CC5: $04
    xor d                                         ; $6CC6: $AA
    nop                                           ; $6CC7: $00
    ld b, b                                       ; $6CC8: $40
    nop                                           ; $6CC9: $00
    ld b, b                                       ; $6CCA: $40
    nop                                           ; $6CCB: $00
    ld b, b                                       ; $6CCC: $40
    nop                                           ; $6CCD: $00
    ld b, b                                       ; $6CCE: $40
    nop                                           ; $6CCF: $00
    ld b, b                                       ; $6CD0: $40
    nop                                           ; $6CD1: $00
    ld b, b                                       ; $6CD2: $40
    nop                                           ; $6CD3: $00
    ld b, b                                       ; $6CD4: $40
    nop                                           ; $6CD5: $00
    ld b, b                                       ; $6CD6: $40
    nop                                           ; $6CD7: $00
    ld b, b                                       ; $6CD8: $40
    nop                                           ; $6CD9: $00
    ld b, b                                       ; $6CDA: $40
    nop                                           ; $6CDB: $00
    ld b, b                                       ; $6CDC: $40
    inc b                                         ; $6CDD: $04
    add c                                         ; $6CDE: $81
    inc b                                         ; $6CDF: $04
    adc b                                         ; $6CE0: $88
    rlca                                          ; $6CE1: $07
    adc a                                         ; $6CE2: $8F
    rlca                                          ; $6CE3: $07
    sub [hl]                                      ; $6CE4: $96
    inc b                                         ; $6CE5: $04
    sbc l                                         ; $6CE6: $9D
    inc b                                         ; $6CE7: $04
    and h                                         ; $6CE8: $A4
    inc b                                         ; $6CE9: $04
    xor e                                         ; $6CEA: $AB
    nop                                           ; $6CEB: $00
    ld b, b                                       ; $6CEC: $40
    nop                                           ; $6CED: $00
    ld b, b                                       ; $6CEE: $40
    nop                                           ; $6CEF: $00
    ld b, b                                       ; $6CF0: $40
    nop                                           ; $6CF1: $00
    ld b, b                                       ; $6CF2: $40
    nop                                           ; $6CF3: $00
    ld b, b                                       ; $6CF4: $40
    nop                                           ; $6CF5: $00
    ld b, b                                       ; $6CF6: $40
    nop                                           ; $6CF7: $00
    ld b, b                                       ; $6CF8: $40
    nop                                           ; $6CF9: $00
    ld b, b                                       ; $6CFA: $40
    nop                                           ; $6CFB: $00
    ld b, b                                       ; $6CFC: $40
    nop                                           ; $6CFD: $00
    ld b, b                                       ; $6CFE: $40
    nop                                           ; $6CFF: $00
    ld b, b                                       ; $6D00: $40
    rlca                                          ; $6D01: $07
    add d                                         ; $6D02: $82
    rlca                                          ; $6D03: $07
    adc c                                         ; $6D04: $89
    rlca                                          ; $6D05: $07
    sub b                                         ; $6D06: $90
    ld b, $97                                     ; $6D07: $06 $97
    dec b                                         ; $6D09: $05
    sbc [hl]                                      ; $6D0A: $9E
    dec b                                         ; $6D0B: $05
    and l                                         ; $6D0C: $A5
    inc b                                         ; $6D0D: $04
    xor h                                         ; $6D0E: $AC
    nop                                           ; $6D0F: $00
    ld b, b                                       ; $6D10: $40
    nop                                           ; $6D11: $00
    ld b, b                                       ; $6D12: $40
    nop                                           ; $6D13: $00
    ld b, b                                       ; $6D14: $40
    nop                                           ; $6D15: $00
    ld b, b                                       ; $6D16: $40
    nop                                           ; $6D17: $00
    ld b, b                                       ; $6D18: $40
    nop                                           ; $6D19: $00
    ld b, b                                       ; $6D1A: $40
    nop                                           ; $6D1B: $00
    ld b, b                                       ; $6D1C: $40
    nop                                           ; $6D1D: $00
    ld b, b                                       ; $6D1E: $40
    nop                                           ; $6D1F: $00
    ld b, b                                       ; $6D20: $40
    nop                                           ; $6D21: $00
    ld b, b                                       ; $6D22: $40
    nop                                           ; $6D23: $00
    ld b, b                                       ; $6D24: $40
    rlca                                          ; $6D25: $07
    add e                                         ; $6D26: $83
    rlca                                          ; $6D27: $07
    adc d                                         ; $6D28: $8A
    rlca                                          ; $6D29: $07
    sub c                                         ; $6D2A: $91
    ld b, $98                                     ; $6D2B: $06 $98
    dec b                                         ; $6D2D: $05
    sbc a                                         ; $6D2E: $9F
    inc b                                         ; $6D2F: $04
    and [hl]                                      ; $6D30: $A6
    inc b                                         ; $6D31: $04
    xor l                                         ; $6D32: $AD
    nop                                           ; $6D33: $00
    ld b, b                                       ; $6D34: $40
    nop                                           ; $6D35: $00
    ld b, b                                       ; $6D36: $40
    nop                                           ; $6D37: $00
    ld b, b                                       ; $6D38: $40
    nop                                           ; $6D39: $00
    ld b, b                                       ; $6D3A: $40
    nop                                           ; $6D3B: $00
    ld b, b                                       ; $6D3C: $40
    nop                                           ; $6D3D: $00
    ld b, b                                       ; $6D3E: $40
    nop                                           ; $6D3F: $00
    ld b, b                                       ; $6D40: $40
    nop                                           ; $6D41: $00
    ld b, b                                       ; $6D42: $40
    nop                                           ; $6D43: $00
    ld b, b                                       ; $6D44: $40
    nop                                           ; $6D45: $00
    ld b, b                                       ; $6D46: $40
    nop                                           ; $6D47: $00
    ld b, b                                       ; $6D48: $40
    rlca                                          ; $6D49: $07
    add h                                         ; $6D4A: $84
    rlca                                          ; $6D4B: $07
    adc e                                         ; $6D4C: $8B
    rlca                                          ; $6D4D: $07
    sub d                                         ; $6D4E: $92
    dec b                                         ; $6D4F: $05
    sbc c                                         ; $6D50: $99
    dec b                                         ; $6D51: $05
    and b                                         ; $6D52: $A0
    inc b                                         ; $6D53: $04
    and a                                         ; $6D54: $A7
    inc b                                         ; $6D55: $04
    xor [hl]                                      ; $6D56: $AE
    nop                                           ; $6D57: $00
    ld b, b                                       ; $6D58: $40
    nop                                           ; $6D59: $00
    ld b, b                                       ; $6D5A: $40
    nop                                           ; $6D5B: $00
    ld b, b                                       ; $6D5C: $40
    nop                                           ; $6D5D: $00
    ld b, b                                       ; $6D5E: $40
    nop                                           ; $6D5F: $00
    ld b, b                                       ; $6D60: $40
    nop                                           ; $6D61: $00
    ld b, b                                       ; $6D62: $40
    nop                                           ; $6D63: $00
    ld b, b                                       ; $6D64: $40
    nop                                           ; $6D65: $00
    ld b, b                                       ; $6D66: $40
    nop                                           ; $6D67: $00
    ld b, b                                       ; $6D68: $40
    nop                                           ; $6D69: $00
    ld b, b                                       ; $6D6A: $40
    nop                                           ; $6D6B: $00
    ld b, b                                       ; $6D6C: $40
    inc b                                         ; $6D6D: $04
    add l                                         ; $6D6E: $85
    rlca                                          ; $6D6F: $07
    adc h                                         ; $6D70: $8C
    rlca                                          ; $6D71: $07
    sub e                                         ; $6D72: $93
    inc b                                         ; $6D73: $04
    sbc d                                         ; $6D74: $9A
    dec b                                         ; $6D75: $05
    and c                                         ; $6D76: $A1
    inc b                                         ; $6D77: $04
    xor b                                         ; $6D78: $A8
    inc b                                         ; $6D79: $04
    xor a                                         ; $6D7A: $AF
    nop                                           ; $6D7B: $00
    ld b, b                                       ; $6D7C: $40
    nop                                           ; $6D7D: $00
    ld b, b                                       ; $6D7E: $40
    nop                                           ; $6D7F: $00
    ld b, b                                       ; $6D80: $40
    nop                                           ; $6D81: $00
    ld b, b                                       ; $6D82: $40
    nop                                           ; $6D83: $00
    ld b, b                                       ; $6D84: $40
    nop                                           ; $6D85: $00
    ld b, b                                       ; $6D86: $40
    nop                                           ; $6D87: $00
    ld b, b                                       ; $6D88: $40
    nop                                           ; $6D89: $00
    ld b, b                                       ; $6D8A: $40
    nop                                           ; $6D8B: $00
    ld b, b                                       ; $6D8C: $40
    nop                                           ; $6D8D: $00
    ld b, b                                       ; $6D8E: $40
    nop                                           ; $6D8F: $00
    ld b, b                                       ; $6D90: $40
    inc b                                         ; $6D91: $04
    add [hl]                                      ; $6D92: $86
    inc b                                         ; $6D93: $04
    adc l                                         ; $6D94: $8D
    inc b                                         ; $6D95: $04
    sub h                                         ; $6D96: $94
    inc b                                         ; $6D97: $04
    sbc e                                         ; $6D98: $9B
    inc b                                         ; $6D99: $04
    and d                                         ; $6D9A: $A2
    inc b                                         ; $6D9B: $04
    xor c                                         ; $6D9C: $A9
    inc b                                         ; $6D9D: $04
    or b                                          ; $6D9E: $B0
    nop                                           ; $6D9F: $00
    ld b, b                                       ; $6DA0: $40
    nop                                           ; $6DA1: $00
    ld b, b                                       ; $6DA2: $40
    nop                                           ; $6DA3: $00
    ld b, b                                       ; $6DA4: $40
    nop                                           ; $6DA5: $00
    ld b, b                                       ; $6DA6: $40
    nop                                           ; $6DA7: $00
    ld b, b                                       ; $6DA8: $40
    nop                                           ; $6DA9: $00
    ld b, b                                       ; $6DAA: $40
    nop                                           ; $6DAB: $00
    ld b, b                                       ; $6DAC: $40
    nop                                           ; $6DAD: $00
    ld b, b                                       ; $6DAE: $40
    nop                                           ; $6DAF: $00
    ld b, b                                       ; $6DB0: $40
    nop                                           ; $6DB1: $00
    ld b, b                                       ; $6DB2: $40
    nop                                           ; $6DB3: $00
    ld b, b                                       ; $6DB4: $40
    ld b, $80                                     ; $6DB5: $06 $80
    ld b, $87                                     ; $6DB7: $06 $87
    ld b, $8E                                     ; $6DB9: $06 $8E
    inc b                                         ; $6DBB: $04
    sub l                                         ; $6DBC: $95
    inc b                                         ; $6DBD: $04
    sbc h                                         ; $6DBE: $9C
    inc b                                         ; $6DBF: $04
    and e                                         ; $6DC0: $A3
    inc b                                         ; $6DC1: $04
    xor d                                         ; $6DC2: $AA
    nop                                           ; $6DC3: $00
    ld b, b                                       ; $6DC4: $40
    nop                                           ; $6DC5: $00
    ld b, b                                       ; $6DC6: $40
    nop                                           ; $6DC7: $00
    ld b, b                                       ; $6DC8: $40
    nop                                           ; $6DC9: $00
    ld b, b                                       ; $6DCA: $40
    nop                                           ; $6DCB: $00
    ld b, b                                       ; $6DCC: $40
    nop                                           ; $6DCD: $00
    ld b, b                                       ; $6DCE: $40
    nop                                           ; $6DCF: $00
    ld b, b                                       ; $6DD0: $40
    nop                                           ; $6DD1: $00
    ld b, b                                       ; $6DD2: $40
    nop                                           ; $6DD3: $00
    ld b, b                                       ; $6DD4: $40
    nop                                           ; $6DD5: $00
    ld b, b                                       ; $6DD6: $40
    nop                                           ; $6DD7: $00
    ld b, b                                       ; $6DD8: $40
    ld b, $81                                     ; $6DD9: $06 $81
    ld b, $88                                     ; $6DDB: $06 $88
    ld b, $8F                                     ; $6DDD: $06 $8F
    dec b                                         ; $6DDF: $05
    sub [hl]                                      ; $6DE0: $96
    dec b                                         ; $6DE1: $05
    sbc l                                         ; $6DE2: $9D
    dec b                                         ; $6DE3: $05
    and h                                         ; $6DE4: $A4
    dec b                                         ; $6DE5: $05
    xor e                                         ; $6DE6: $AB
    nop                                           ; $6DE7: $00
    ld b, b                                       ; $6DE8: $40
    nop                                           ; $6DE9: $00
    ld b, b                                       ; $6DEA: $40
    nop                                           ; $6DEB: $00
    ld b, b                                       ; $6DEC: $40
    nop                                           ; $6DED: $00
    ld b, b                                       ; $6DEE: $40
    nop                                           ; $6DEF: $00
    ld b, b                                       ; $6DF0: $40
    nop                                           ; $6DF1: $00
    ld b, b                                       ; $6DF2: $40
    nop                                           ; $6DF3: $00
    ld b, b                                       ; $6DF4: $40
    nop                                           ; $6DF5: $00
    ld b, b                                       ; $6DF6: $40
    nop                                           ; $6DF7: $00
    ld b, b                                       ; $6DF8: $40
    nop                                           ; $6DF9: $00
    ld b, b                                       ; $6DFA: $40
    nop                                           ; $6DFB: $00
    ld b, b                                       ; $6DFC: $40
    ld b, $82                                     ; $6DFD: $06 $82
    ld b, $89                                     ; $6DFF: $06 $89
    inc b                                         ; $6E01: $04
    sub b                                         ; $6E02: $90
    inc b                                         ; $6E03: $04
    sub a                                         ; $6E04: $97
    dec b                                         ; $6E05: $05
    sbc [hl]                                      ; $6E06: $9E
    dec b                                         ; $6E07: $05
    and l                                         ; $6E08: $A5
    inc b                                         ; $6E09: $04
    xor h                                         ; $6E0A: $AC
    nop                                           ; $6E0B: $00
    ld b, b                                       ; $6E0C: $40
    nop                                           ; $6E0D: $00
    ld b, b                                       ; $6E0E: $40
    nop                                           ; $6E0F: $00
    ld b, b                                       ; $6E10: $40
    nop                                           ; $6E11: $00
    ld b, b                                       ; $6E12: $40
    nop                                           ; $6E13: $00
    ld b, b                                       ; $6E14: $40
    nop                                           ; $6E15: $00
    ld b, b                                       ; $6E16: $40
    nop                                           ; $6E17: $00
    ld b, b                                       ; $6E18: $40
    nop                                           ; $6E19: $00
    ld b, b                                       ; $6E1A: $40
    nop                                           ; $6E1B: $00
    ld b, b                                       ; $6E1C: $40
    nop                                           ; $6E1D: $00
    ld b, b                                       ; $6E1E: $40
    nop                                           ; $6E1F: $00
    ld b, b                                       ; $6E20: $40
    inc b                                         ; $6E21: $04
    add e                                         ; $6E22: $83
    inc b                                         ; $6E23: $04
    adc d                                         ; $6E24: $8A
    inc b                                         ; $6E25: $04
    sub c                                         ; $6E26: $91
    inc b                                         ; $6E27: $04
    sbc b                                         ; $6E28: $98
    inc b                                         ; $6E29: $04
    sbc a                                         ; $6E2A: $9F
    inc b                                         ; $6E2B: $04
    and [hl]                                      ; $6E2C: $A6
    inc b                                         ; $6E2D: $04
    xor l                                         ; $6E2E: $AD
    nop                                           ; $6E2F: $00
    ld b, b                                       ; $6E30: $40
    nop                                           ; $6E31: $00
    ld b, b                                       ; $6E32: $40
    nop                                           ; $6E33: $00
    ld b, b                                       ; $6E34: $40
    nop                                           ; $6E35: $00
    ld b, b                                       ; $6E36: $40
    nop                                           ; $6E37: $00
    ld b, b                                       ; $6E38: $40
    nop                                           ; $6E39: $00
    ld b, b                                       ; $6E3A: $40
    nop                                           ; $6E3B: $00
    ld b, b                                       ; $6E3C: $40
    nop                                           ; $6E3D: $00
    ld b, b                                       ; $6E3E: $40
    nop                                           ; $6E3F: $00
    ld b, b                                       ; $6E40: $40
    nop                                           ; $6E41: $00
    ld b, b                                       ; $6E42: $40
    nop                                           ; $6E43: $00
    ld b, b                                       ; $6E44: $40
    inc b                                         ; $6E45: $04
    add h                                         ; $6E46: $84
    inc b                                         ; $6E47: $04
    adc e                                         ; $6E48: $8B
    inc b                                         ; $6E49: $04
    sub d                                         ; $6E4A: $92
    inc b                                         ; $6E4B: $04
    sbc c                                         ; $6E4C: $99
    inc b                                         ; $6E4D: $04
    and b                                         ; $6E4E: $A0
    inc b                                         ; $6E4F: $04
    and a                                         ; $6E50: $A7
    inc b                                         ; $6E51: $04
    xor [hl]                                      ; $6E52: $AE
    nop                                           ; $6E53: $00
    ld b, b                                       ; $6E54: $40
    nop                                           ; $6E55: $00
    ld b, b                                       ; $6E56: $40
    nop                                           ; $6E57: $00
    ld b, b                                       ; $6E58: $40
    nop                                           ; $6E59: $00
    ld b, b                                       ; $6E5A: $40
    nop                                           ; $6E5B: $00
    ld b, b                                       ; $6E5C: $40
    nop                                           ; $6E5D: $00
    ld b, b                                       ; $6E5E: $40
    nop                                           ; $6E5F: $00
    ld b, b                                       ; $6E60: $40
    nop                                           ; $6E61: $00
    ld b, b                                       ; $6E62: $40
    nop                                           ; $6E63: $00
    ld b, b                                       ; $6E64: $40
    nop                                           ; $6E65: $00
    ld b, b                                       ; $6E66: $40
    nop                                           ; $6E67: $00
    ld b, b                                       ; $6E68: $40
    inc b                                         ; $6E69: $04
    add l                                         ; $6E6A: $85
    inc b                                         ; $6E6B: $04
    adc h                                         ; $6E6C: $8C
    inc b                                         ; $6E6D: $04
    sub e                                         ; $6E6E: $93
    inc b                                         ; $6E6F: $04
    sbc d                                         ; $6E70: $9A
    inc b                                         ; $6E71: $04
    and c                                         ; $6E72: $A1
    inc b                                         ; $6E73: $04
    xor b                                         ; $6E74: $A8
    dec b                                         ; $6E75: $05
    xor a                                         ; $6E76: $AF
    nop                                           ; $6E77: $00
    ld b, b                                       ; $6E78: $40
    nop                                           ; $6E79: $00
    ld b, b                                       ; $6E7A: $40
    nop                                           ; $6E7B: $00
    ld b, b                                       ; $6E7C: $40
    nop                                           ; $6E7D: $00
    ld b, b                                       ; $6E7E: $40
    nop                                           ; $6E7F: $00
    ld b, b                                       ; $6E80: $40
    nop                                           ; $6E81: $00
    ld b, b                                       ; $6E82: $40
    nop                                           ; $6E83: $00
    ld b, b                                       ; $6E84: $40
    nop                                           ; $6E85: $00
    ld b, b                                       ; $6E86: $40
    nop                                           ; $6E87: $00
    ld b, b                                       ; $6E88: $40
    nop                                           ; $6E89: $00
    ld b, b                                       ; $6E8A: $40
    nop                                           ; $6E8B: $00
    ld b, b                                       ; $6E8C: $40
    inc b                                         ; $6E8D: $04
    add [hl]                                      ; $6E8E: $86
    inc b                                         ; $6E8F: $04
    adc l                                         ; $6E90: $8D
    inc b                                         ; $6E91: $04
    sub h                                         ; $6E92: $94
    inc b                                         ; $6E93: $04
    sbc e                                         ; $6E94: $9B
    dec b                                         ; $6E95: $05
    and d                                         ; $6E96: $A2
    dec b                                         ; $6E97: $05
    xor c                                         ; $6E98: $A9
    dec b                                         ; $6E99: $05
    or b                                          ; $6E9A: $B0
    nop                                           ; $6E9B: $00
    ld b, b                                       ; $6E9C: $40
    nop                                           ; $6E9D: $00
    ld b, b                                       ; $6E9E: $40
    nop                                           ; $6E9F: $00
    ld b, b                                       ; $6EA0: $40
    nop                                           ; $6EA1: $00
    ld b, b                                       ; $6EA2: $40
    nop                                           ; $6EA3: $00
    ld b, b                                       ; $6EA4: $40
    nop                                           ; $6EA5: $00
    ld b, b                                       ; $6EA6: $40
    nop                                           ; $6EA7: $00
    ld b, b                                       ; $6EA8: $40
    nop                                           ; $6EA9: $00
    ld b, b                                       ; $6EAA: $40
    nop                                           ; $6EAB: $00
    ld b, b                                       ; $6EAC: $40
    nop                                           ; $6EAD: $00
    ld b, b                                       ; $6EAE: $40
    nop                                           ; $6EAF: $00
    ld b, b                                       ; $6EB0: $40
    inc b                                         ; $6EB1: $04
    add b                                         ; $6EB2: $80
    inc b                                         ; $6EB3: $04
    add a                                         ; $6EB4: $87
    inc b                                         ; $6EB5: $04
    adc [hl]                                      ; $6EB6: $8E
    inc b                                         ; $6EB7: $04
    sub l                                         ; $6EB8: $95
    inc b                                         ; $6EB9: $04
    sbc h                                         ; $6EBA: $9C
    inc b                                         ; $6EBB: $04
    and e                                         ; $6EBC: $A3
    inc b                                         ; $6EBD: $04
    xor d                                         ; $6EBE: $AA
    nop                                           ; $6EBF: $00
    ld b, b                                       ; $6EC0: $40
    nop                                           ; $6EC1: $00
    ld b, b                                       ; $6EC2: $40
    nop                                           ; $6EC3: $00
    ld b, b                                       ; $6EC4: $40
    nop                                           ; $6EC5: $00
    ld b, b                                       ; $6EC6: $40
    nop                                           ; $6EC7: $00
    ld b, b                                       ; $6EC8: $40
    nop                                           ; $6EC9: $00
    ld b, b                                       ; $6ECA: $40
    nop                                           ; $6ECB: $00
    ld b, b                                       ; $6ECC: $40
    nop                                           ; $6ECD: $00
    ld b, b                                       ; $6ECE: $40
    nop                                           ; $6ECF: $00
    ld b, b                                       ; $6ED0: $40
    nop                                           ; $6ED1: $00
    ld b, b                                       ; $6ED2: $40
    nop                                           ; $6ED3: $00
    ld b, b                                       ; $6ED4: $40
    inc b                                         ; $6ED5: $04
    add c                                         ; $6ED6: $81
    inc b                                         ; $6ED7: $04
    adc b                                         ; $6ED8: $88
    dec b                                         ; $6ED9: $05
    adc a                                         ; $6EDA: $8F
    dec b                                         ; $6EDB: $05
    sub [hl]                                      ; $6EDC: $96
    inc b                                         ; $6EDD: $04
    sbc l                                         ; $6EDE: $9D
    inc b                                         ; $6EDF: $04
    and h                                         ; $6EE0: $A4
    inc b                                         ; $6EE1: $04
    xor e                                         ; $6EE2: $AB
    nop                                           ; $6EE3: $00
    ld b, b                                       ; $6EE4: $40
    nop                                           ; $6EE5: $00
    ld b, b                                       ; $6EE6: $40
    nop                                           ; $6EE7: $00
    ld b, b                                       ; $6EE8: $40
    nop                                           ; $6EE9: $00
    ld b, b                                       ; $6EEA: $40
    nop                                           ; $6EEB: $00
    ld b, b                                       ; $6EEC: $40
    nop                                           ; $6EED: $00
    ld b, b                                       ; $6EEE: $40
    nop                                           ; $6EEF: $00
    ld b, b                                       ; $6EF0: $40
    nop                                           ; $6EF1: $00
    ld b, b                                       ; $6EF2: $40
    nop                                           ; $6EF3: $00
    ld b, b                                       ; $6EF4: $40
    nop                                           ; $6EF5: $00
    ld b, b                                       ; $6EF6: $40
    nop                                           ; $6EF7: $00
    ld b, b                                       ; $6EF8: $40
    inc b                                         ; $6EF9: $04
    add d                                         ; $6EFA: $82
    inc b                                         ; $6EFB: $04

Call_02A_6EFC:
    adc c                                         ; $6EFC: $89
    inc b                                         ; $6EFD: $04
    sub b                                         ; $6EFE: $90
    inc b                                         ; $6EFF: $04
    sub a                                         ; $6F00: $97
    inc b                                         ; $6F01: $04
    sbc [hl]                                      ; $6F02: $9E
    inc b                                         ; $6F03: $04
    and l                                         ; $6F04: $A5
    inc b                                         ; $6F05: $04
    xor h                                         ; $6F06: $AC
    nop                                           ; $6F07: $00
    ld b, b                                       ; $6F08: $40
    nop                                           ; $6F09: $00
    ld b, b                                       ; $6F0A: $40
    nop                                           ; $6F0B: $00
    ld b, b                                       ; $6F0C: $40
    nop                                           ; $6F0D: $00
    ld b, b                                       ; $6F0E: $40
    nop                                           ; $6F0F: $00
    ld b, b                                       ; $6F10: $40
    nop                                           ; $6F11: $00
    ld b, b                                       ; $6F12: $40
    nop                                           ; $6F13: $00
    ld b, b                                       ; $6F14: $40
    nop                                           ; $6F15: $00
    ld b, b                                       ; $6F16: $40
    nop                                           ; $6F17: $00
    ld b, b                                       ; $6F18: $40
    nop                                           ; $6F19: $00
    ld b, b                                       ; $6F1A: $40
    nop                                           ; $6F1B: $00
    ld b, b                                       ; $6F1C: $40
    inc b                                         ; $6F1D: $04
    add e                                         ; $6F1E: $83
    inc b                                         ; $6F1F: $04
    adc d                                         ; $6F20: $8A
    inc b                                         ; $6F21: $04
    sub c                                         ; $6F22: $91
    inc b                                         ; $6F23: $04
    sbc b                                         ; $6F24: $98
    rlca                                          ; $6F25: $07
    sbc a                                         ; $6F26: $9F
    inc b                                         ; $6F27: $04
    and [hl]                                      ; $6F28: $A6
    inc b                                         ; $6F29: $04
    xor l                                         ; $6F2A: $AD
    nop                                           ; $6F2B: $00
    ld b, b                                       ; $6F2C: $40
    nop                                           ; $6F2D: $00
    ld b, b                                       ; $6F2E: $40
    nop                                           ; $6F2F: $00
    ld b, b                                       ; $6F30: $40
    nop                                           ; $6F31: $00
    ld b, b                                       ; $6F32: $40
    nop                                           ; $6F33: $00
    ld b, b                                       ; $6F34: $40
    nop                                           ; $6F35: $00
    ld b, b                                       ; $6F36: $40
    nop                                           ; $6F37: $00
    ld b, b                                       ; $6F38: $40
    nop                                           ; $6F39: $00
    ld b, b                                       ; $6F3A: $40
    nop                                           ; $6F3B: $00
    ld b, b                                       ; $6F3C: $40
    nop                                           ; $6F3D: $00
    ld b, b                                       ; $6F3E: $40
    nop                                           ; $6F3F: $00
    ld b, b                                       ; $6F40: $40
    inc b                                         ; $6F41: $04
    add h                                         ; $6F42: $84
    inc b                                         ; $6F43: $04
    adc e                                         ; $6F44: $8B
    inc b                                         ; $6F45: $04
    sub d                                         ; $6F46: $92
    inc b                                         ; $6F47: $04
    sbc c                                         ; $6F48: $99
    inc b                                         ; $6F49: $04
    and b                                         ; $6F4A: $A0
    inc b                                         ; $6F4B: $04
    and a                                         ; $6F4C: $A7
    inc b                                         ; $6F4D: $04
    xor [hl]                                      ; $6F4E: $AE
    nop                                           ; $6F4F: $00
    ld b, b                                       ; $6F50: $40
    nop                                           ; $6F51: $00
    ld b, b                                       ; $6F52: $40
    nop                                           ; $6F53: $00
    ld b, b                                       ; $6F54: $40
    nop                                           ; $6F55: $00
    ld b, b                                       ; $6F56: $40
    nop                                           ; $6F57: $00
    ld b, b                                       ; $6F58: $40
    nop                                           ; $6F59: $00
    ld b, b                                       ; $6F5A: $40
    nop                                           ; $6F5B: $00
    ld b, b                                       ; $6F5C: $40
    nop                                           ; $6F5D: $00
    ld b, b                                       ; $6F5E: $40
    nop                                           ; $6F5F: $00
    ld b, b                                       ; $6F60: $40
    nop                                           ; $6F61: $00
    ld b, b                                       ; $6F62: $40
    nop                                           ; $6F63: $00
    ld b, b                                       ; $6F64: $40
    inc b                                         ; $6F65: $04
    add l                                         ; $6F66: $85
    inc b                                         ; $6F67: $04
    adc h                                         ; $6F68: $8C
    ld b, $93                                     ; $6F69: $06 $93
    inc b                                         ; $6F6B: $04
    sbc d                                         ; $6F6C: $9A
    inc b                                         ; $6F6D: $04
    and c                                         ; $6F6E: $A1
    inc b                                         ; $6F6F: $04
    xor b                                         ; $6F70: $A8
    inc b                                         ; $6F71: $04
    xor a                                         ; $6F72: $AF
    nop                                           ; $6F73: $00
    ld b, b                                       ; $6F74: $40
    nop                                           ; $6F75: $00
    ld b, b                                       ; $6F76: $40
    nop                                           ; $6F77: $00
    ld b, b                                       ; $6F78: $40
    nop                                           ; $6F79: $00
    ld b, b                                       ; $6F7A: $40
    nop                                           ; $6F7B: $00
    ld b, b                                       ; $6F7C: $40
    nop                                           ; $6F7D: $00
    ld b, b                                       ; $6F7E: $40
    nop                                           ; $6F7F: $00
    ld b, b                                       ; $6F80: $40
    nop                                           ; $6F81: $00
    ld b, b                                       ; $6F82: $40
    nop                                           ; $6F83: $00
    ld b, b                                       ; $6F84: $40
    nop                                           ; $6F85: $00
    ld b, b                                       ; $6F86: $40
    nop                                           ; $6F87: $00
    ld b, b                                       ; $6F88: $40
    inc b                                         ; $6F89: $04
    add [hl]                                      ; $6F8A: $86
    inc b                                         ; $6F8B: $04
    adc l                                         ; $6F8C: $8D
    inc b                                         ; $6F8D: $04
    sub h                                         ; $6F8E: $94
    inc b                                         ; $6F8F: $04
    sbc e                                         ; $6F90: $9B
    inc b                                         ; $6F91: $04
    and d                                         ; $6F92: $A2
    inc b                                         ; $6F93: $04
    xor c                                         ; $6F94: $A9
    inc b                                         ; $6F95: $04
    or b                                          ; $6F96: $B0
    nop                                           ; $6F97: $00
    ld b, b                                       ; $6F98: $40
    nop                                           ; $6F99: $00
    ld b, b                                       ; $6F9A: $40
    nop                                           ; $6F9B: $00
    ld b, b                                       ; $6F9C: $40
    nop                                           ; $6F9D: $00
    ld b, b                                       ; $6F9E: $40
    nop                                           ; $6F9F: $00
    ld b, b                                       ; $6FA0: $40
    nop                                           ; $6FA1: $00
    ld b, b                                       ; $6FA2: $40
    nop                                           ; $6FA3: $00
    ld b, b                                       ; $6FA4: $40
    nop                                           ; $6FA5: $00
    ld b, b                                       ; $6FA6: $40
    nop                                           ; $6FA7: $00
    ld b, b                                       ; $6FA8: $40
    nop                                           ; $6FA9: $00
    ld b, b                                       ; $6FAA: $40
    nop                                           ; $6FAB: $00
    ld b, b                                       ; $6FAC: $40
    inc b                                         ; $6FAD: $04
    add b                                         ; $6FAE: $80
    ld b, $87                                     ; $6FAF: $06 $87
    dec b                                         ; $6FB1: $05
    adc [hl]                                      ; $6FB2: $8E
    dec b                                         ; $6FB3: $05
    sub l                                         ; $6FB4: $95
    inc b                                         ; $6FB5: $04
    sbc h                                         ; $6FB6: $9C
    inc b                                         ; $6FB7: $04
    and e                                         ; $6FB8: $A3
    inc b                                         ; $6FB9: $04
    xor d                                         ; $6FBA: $AA
    nop                                           ; $6FBB: $00
    ld b, b                                       ; $6FBC: $40
    nop                                           ; $6FBD: $00
    ld b, b                                       ; $6FBE: $40
    nop                                           ; $6FBF: $00
    ld b, b                                       ; $6FC0: $40
    nop                                           ; $6FC1: $00
    ld b, b                                       ; $6FC2: $40
    nop                                           ; $6FC3: $00
    ld b, b                                       ; $6FC4: $40
    nop                                           ; $6FC5: $00
    ld b, b                                       ; $6FC6: $40
    nop                                           ; $6FC7: $00
    ld b, b                                       ; $6FC8: $40
    nop                                           ; $6FC9: $00
    ld b, b                                       ; $6FCA: $40
    nop                                           ; $6FCB: $00
    ld b, b                                       ; $6FCC: $40
    nop                                           ; $6FCD: $00
    ld b, b                                       ; $6FCE: $40
    nop                                           ; $6FCF: $00
    ld b, b                                       ; $6FD0: $40
    inc b                                         ; $6FD1: $04
    add c                                         ; $6FD2: $81
    ld b, $88                                     ; $6FD3: $06 $88
    ld b, $8F                                     ; $6FD5: $06 $8F
    ld b, $96                                     ; $6FD7: $06 $96
    ld b, $9D                                     ; $6FD9: $06 $9D
    ld b, $A4                                     ; $6FDB: $06 $A4
    ld b, $AB                                     ; $6FDD: $06 $AB
    nop                                           ; $6FDF: $00
    ld b, b                                       ; $6FE0: $40
    nop                                           ; $6FE1: $00
    ld b, b                                       ; $6FE2: $40
    nop                                           ; $6FE3: $00
    ld b, b                                       ; $6FE4: $40
    nop                                           ; $6FE5: $00
    ld b, b                                       ; $6FE6: $40
    nop                                           ; $6FE7: $00
    ld b, b                                       ; $6FE8: $40
    nop                                           ; $6FE9: $00
    ld b, b                                       ; $6FEA: $40
    nop                                           ; $6FEB: $00
    ld b, b                                       ; $6FEC: $40
    nop                                           ; $6FED: $00
    ld b, b                                       ; $6FEE: $40
    nop                                           ; $6FEF: $00
    ld b, b                                       ; $6FF0: $40
    nop                                           ; $6FF1: $00
    ld b, b                                       ; $6FF2: $40
    nop                                           ; $6FF3: $00
    ld b, b                                       ; $6FF4: $40
    inc b                                         ; $6FF5: $04
    add d                                         ; $6FF6: $82
    inc b                                         ; $6FF7: $04
    adc c                                         ; $6FF8: $89
    inc b                                         ; $6FF9: $04
    sub b                                         ; $6FFA: $90
    inc b                                         ; $6FFB: $04
    sub a                                         ; $6FFC: $97
    ld b, $9E                                     ; $6FFD: $06 $9E
    ld b, $A5                                     ; $6FFF: $06 $A5
    ld b, $AC                                     ; $7001: $06 $AC
    nop                                           ; $7003: $00
    ld b, b                                       ; $7004: $40
    nop                                           ; $7005: $00
    ld b, b                                       ; $7006: $40
    nop                                           ; $7007: $00
    ld b, b                                       ; $7008: $40
    nop                                           ; $7009: $00
    ld b, b                                       ; $700A: $40
    nop                                           ; $700B: $00
    ld b, b                                       ; $700C: $40
    nop                                           ; $700D: $00
    ld b, b                                       ; $700E: $40
    nop                                           ; $700F: $00
    ld b, b                                       ; $7010: $40
    nop                                           ; $7011: $00
    ld b, b                                       ; $7012: $40
    nop                                           ; $7013: $00
    ld b, b                                       ; $7014: $40
    nop                                           ; $7015: $00
    ld b, b                                       ; $7016: $40
    nop                                           ; $7017: $00
    ld b, b                                       ; $7018: $40
    inc b                                         ; $7019: $04
    add e                                         ; $701A: $83
    inc b                                         ; $701B: $04
    adc d                                         ; $701C: $8A
    inc b                                         ; $701D: $04
    sub c                                         ; $701E: $91
    dec b                                         ; $701F: $05
    sbc b                                         ; $7020: $98
    ld b, $9F                                     ; $7021: $06 $9F
    ld b, $A6                                     ; $7023: $06 $A6
    ld b, $AD                                     ; $7025: $06 $AD
    nop                                           ; $7027: $00
    ld b, b                                       ; $7028: $40
    nop                                           ; $7029: $00
    ld b, b                                       ; $702A: $40
    nop                                           ; $702B: $00
    ld b, b                                       ; $702C: $40
    nop                                           ; $702D: $00
    ld b, b                                       ; $702E: $40
    nop                                           ; $702F: $00
    ld b, b                                       ; $7030: $40
    nop                                           ; $7031: $00
    ld b, b                                       ; $7032: $40
    nop                                           ; $7033: $00
    ld b, b                                       ; $7034: $40
    nop                                           ; $7035: $00
    ld b, b                                       ; $7036: $40
    nop                                           ; $7037: $00
    ld b, b                                       ; $7038: $40
    nop                                           ; $7039: $00
    ld b, b                                       ; $703A: $40
    nop                                           ; $703B: $00
    ld b, b                                       ; $703C: $40
    inc b                                         ; $703D: $04
    add h                                         ; $703E: $84
    inc b                                         ; $703F: $04
    adc e                                         ; $7040: $8B
    inc b                                         ; $7041: $04
    sub d                                         ; $7042: $92
    inc b                                         ; $7043: $04
    sbc c                                         ; $7044: $99
    dec b                                         ; $7045: $05
    and b                                         ; $7046: $A0
    ld b, $A7                                     ; $7047: $06 $A7
    ld b, $AE                                     ; $7049: $06 $AE
    nop                                           ; $704B: $00
    ld b, b                                       ; $704C: $40
    nop                                           ; $704D: $00
    ld b, b                                       ; $704E: $40
    nop                                           ; $704F: $00
    ld b, b                                       ; $7050: $40
    nop                                           ; $7051: $00
    ld b, b                                       ; $7052: $40
    nop                                           ; $7053: $00
    ld b, b                                       ; $7054: $40
    nop                                           ; $7055: $00
    ld b, b                                       ; $7056: $40
    nop                                           ; $7057: $00
    ld b, b                                       ; $7058: $40
    nop                                           ; $7059: $00
    ld b, b                                       ; $705A: $40
    nop                                           ; $705B: $00
    ld b, b                                       ; $705C: $40
    nop                                           ; $705D: $00
    ld b, b                                       ; $705E: $40
    nop                                           ; $705F: $00
    ld b, b                                       ; $7060: $40
    inc b                                         ; $7061: $04
    add l                                         ; $7062: $85
    inc b                                         ; $7063: $04
    adc h                                         ; $7064: $8C
    inc b                                         ; $7065: $04
    sub e                                         ; $7066: $93
    inc b                                         ; $7067: $04
    sbc d                                         ; $7068: $9A
    dec b                                         ; $7069: $05
    and c                                         ; $706A: $A1
    ld b, $A8                                     ; $706B: $06 $A8
    ld b, $AF                                     ; $706D: $06 $AF
    nop                                           ; $706F: $00
    ld b, b                                       ; $7070: $40
    nop                                           ; $7071: $00
    ld b, b                                       ; $7072: $40
    nop                                           ; $7073: $00
    ld b, b                                       ; $7074: $40
    nop                                           ; $7075: $00
    ld b, b                                       ; $7076: $40

Call_02A_7077:
    nop                                           ; $7077: $00
    ld b, b                                       ; $7078: $40
    nop                                           ; $7079: $00
    ld b, b                                       ; $707A: $40
    nop                                           ; $707B: $00
    ld b, b                                       ; $707C: $40
    nop                                           ; $707D: $00
    ld b, b                                       ; $707E: $40
    nop                                           ; $707F: $00
    ld b, b                                       ; $7080: $40
    nop                                           ; $7081: $00
    ld b, b                                       ; $7082: $40
    nop                                           ; $7083: $00
    ld b, b                                       ; $7084: $40
    inc b                                         ; $7085: $04
    add [hl]                                      ; $7086: $86
    inc b                                         ; $7087: $04
    adc l                                         ; $7088: $8D
    inc b                                         ; $7089: $04
    sub h                                         ; $708A: $94
    inc b                                         ; $708B: $04
    sbc e                                         ; $708C: $9B
    inc b                                         ; $708D: $04
    and d                                         ; $708E: $A2
    ld b, $A9                                     ; $708F: $06 $A9
    inc b                                         ; $7091: $04
    or b                                          ; $7092: $B0
    nop                                           ; $7093: $00
    ld b, b                                       ; $7094: $40
    nop                                           ; $7095: $00
    ld b, b                                       ; $7096: $40
    nop                                           ; $7097: $00
    ld b, b                                       ; $7098: $40
    nop                                           ; $7099: $00
    ld b, b                                       ; $709A: $40
    nop                                           ; $709B: $00
    ld b, b                                       ; $709C: $40
    nop                                           ; $709D: $00
    ld b, b                                       ; $709E: $40
    nop                                           ; $709F: $00
    ld b, b                                       ; $70A0: $40
    nop                                           ; $70A1: $00
    ld b, b                                       ; $70A2: $40
    nop                                           ; $70A3: $00
    ld b, b                                       ; $70A4: $40
    nop                                           ; $70A5: $00
    ld b, b                                       ; $70A6: $40
    nop                                           ; $70A7: $00
    ld b, b                                       ; $70A8: $40
    inc b                                         ; $70A9: $04
    add b                                         ; $70AA: $80
    inc b                                         ; $70AB: $04
    add a                                         ; $70AC: $87
    inc b                                         ; $70AD: $04
    adc [hl]                                      ; $70AE: $8E
    inc b                                         ; $70AF: $04
    sub l                                         ; $70B0: $95
    inc b                                         ; $70B1: $04
    sbc h                                         ; $70B2: $9C
    inc b                                         ; $70B3: $04
    and e                                         ; $70B4: $A3
    ld b, $AA                                     ; $70B5: $06 $AA
    nop                                           ; $70B7: $00
    ld b, b                                       ; $70B8: $40
    nop                                           ; $70B9: $00
    ld b, b                                       ; $70BA: $40
    nop                                           ; $70BB: $00
    ld b, b                                       ; $70BC: $40
    nop                                           ; $70BD: $00
    ld b, b                                       ; $70BE: $40
    nop                                           ; $70BF: $00
    ld b, b                                       ; $70C0: $40
    nop                                           ; $70C1: $00
    ld b, b                                       ; $70C2: $40
    nop                                           ; $70C3: $00
    ld b, b                                       ; $70C4: $40
    nop                                           ; $70C5: $00
    ld b, b                                       ; $70C6: $40
    nop                                           ; $70C7: $00
    ld b, b                                       ; $70C8: $40
    nop                                           ; $70C9: $00
    ld b, b                                       ; $70CA: $40
    nop                                           ; $70CB: $00
    ld b, b                                       ; $70CC: $40
    inc b                                         ; $70CD: $04
    add c                                         ; $70CE: $81
    inc b                                         ; $70CF: $04
    adc b                                         ; $70D0: $88
    inc b                                         ; $70D1: $04
    adc a                                         ; $70D2: $8F
    inc b                                         ; $70D3: $04
    sub [hl]                                      ; $70D4: $96
    ld b, $9D                                     ; $70D5: $06 $9D
    ld b, $A4                                     ; $70D7: $06 $A4
    inc b                                         ; $70D9: $04
    xor e                                         ; $70DA: $AB
    nop                                           ; $70DB: $00
    ld b, b                                       ; $70DC: $40
    nop                                           ; $70DD: $00
    ld b, b                                       ; $70DE: $40
    nop                                           ; $70DF: $00
    ld b, b                                       ; $70E0: $40
    nop                                           ; $70E1: $00
    ld b, b                                       ; $70E2: $40
    nop                                           ; $70E3: $00
    ld b, b                                       ; $70E4: $40
    nop                                           ; $70E5: $00
    ld b, b                                       ; $70E6: $40
    nop                                           ; $70E7: $00
    ld b, b                                       ; $70E8: $40
    nop                                           ; $70E9: $00
    ld b, b                                       ; $70EA: $40
    nop                                           ; $70EB: $00
    ld b, b                                       ; $70EC: $40
    nop                                           ; $70ED: $00
    ld b, b                                       ; $70EE: $40
    nop                                           ; $70EF: $00
    ld b, b                                       ; $70F0: $40
    dec b                                         ; $70F1: $05
    add d                                         ; $70F2: $82
    dec b                                         ; $70F3: $05
    adc c                                         ; $70F4: $89
    dec b                                         ; $70F5: $05
    sub b                                         ; $70F6: $90
    dec b                                         ; $70F7: $05
    sub a                                         ; $70F8: $97
    ld b, $9E                                     ; $70F9: $06 $9E
    ld b, $A5                                     ; $70FB: $06 $A5
    inc b                                         ; $70FD: $04
    xor h                                         ; $70FE: $AC
    nop                                           ; $70FF: $00
    ld b, b                                       ; $7100: $40
    nop                                           ; $7101: $00
    ld b, b                                       ; $7102: $40
    nop                                           ; $7103: $00
    ld b, b                                       ; $7104: $40
    nop                                           ; $7105: $00
    ld b, b                                       ; $7106: $40
    nop                                           ; $7107: $00
    ld b, b                                       ; $7108: $40
    nop                                           ; $7109: $00
    ld b, b                                       ; $710A: $40
    nop                                           ; $710B: $00
    ld b, b                                       ; $710C: $40
    nop                                           ; $710D: $00
    ld b, b                                       ; $710E: $40
    nop                                           ; $710F: $00
    ld b, b                                       ; $7110: $40
    nop                                           ; $7111: $00
    ld b, b                                       ; $7112: $40
    nop                                           ; $7113: $00
    ld b, b                                       ; $7114: $40
    dec b                                         ; $7115: $05
    add e                                         ; $7116: $83
    dec b                                         ; $7117: $05
    adc d                                         ; $7118: $8A
    dec b                                         ; $7119: $05
    sub c                                         ; $711A: $91
    dec b                                         ; $711B: $05
    sbc b                                         ; $711C: $98
    inc b                                         ; $711D: $04
    sbc a                                         ; $711E: $9F
    inc b                                         ; $711F: $04
    and [hl]                                      ; $7120: $A6
    inc b                                         ; $7121: $04
    xor l                                         ; $7122: $AD
    nop                                           ; $7123: $00
    ld b, b                                       ; $7124: $40
    nop                                           ; $7125: $00
    ld b, b                                       ; $7126: $40
    nop                                           ; $7127: $00
    ld b, b                                       ; $7128: $40
    nop                                           ; $7129: $00
    ld b, b                                       ; $712A: $40
    nop                                           ; $712B: $00
    ld b, b                                       ; $712C: $40
    nop                                           ; $712D: $00
    ld b, b                                       ; $712E: $40
    nop                                           ; $712F: $00
    ld b, b                                       ; $7130: $40
    nop                                           ; $7131: $00
    ld b, b                                       ; $7132: $40
    nop                                           ; $7133: $00
    ld b, b                                       ; $7134: $40
    nop                                           ; $7135: $00
    ld b, b                                       ; $7136: $40
    nop                                           ; $7137: $00
    ld b, b                                       ; $7138: $40
    dec b                                         ; $7139: $05
    add h                                         ; $713A: $84
    dec b                                         ; $713B: $05
    adc e                                         ; $713C: $8B
    dec b                                         ; $713D: $05
    sub d                                         ; $713E: $92
    dec b                                         ; $713F: $05
    sbc c                                         ; $7140: $99
    inc b                                         ; $7141: $04
    and b                                         ; $7142: $A0
    inc b                                         ; $7143: $04
    and a                                         ; $7144: $A7
    inc b                                         ; $7145: $04
    xor [hl]                                      ; $7146: $AE
    nop                                           ; $7147: $00
    ld b, b                                       ; $7148: $40
    nop                                           ; $7149: $00
    ld b, b                                       ; $714A: $40
    nop                                           ; $714B: $00
    ld b, b                                       ; $714C: $40
    nop                                           ; $714D: $00
    ld b, b                                       ; $714E: $40
    nop                                           ; $714F: $00
    ld b, b                                       ; $7150: $40
    nop                                           ; $7151: $00
    ld b, b                                       ; $7152: $40
    nop                                           ; $7153: $00
    ld b, b                                       ; $7154: $40
    nop                                           ; $7155: $00
    ld b, b                                       ; $7156: $40
    nop                                           ; $7157: $00
    ld b, b                                       ; $7158: $40
    nop                                           ; $7159: $00
    ld b, b                                       ; $715A: $40
    nop                                           ; $715B: $00
    ld b, b                                       ; $715C: $40
    dec b                                         ; $715D: $05
    add l                                         ; $715E: $85
    dec b                                         ; $715F: $05
    adc h                                         ; $7160: $8C
    dec b                                         ; $7161: $05
    sub e                                         ; $7162: $93
    dec b                                         ; $7163: $05
    sbc d                                         ; $7164: $9A
    inc b                                         ; $7165: $04
    and c                                         ; $7166: $A1
    inc b                                         ; $7167: $04
    xor b                                         ; $7168: $A8
    inc b                                         ; $7169: $04
    xor a                                         ; $716A: $AF
    nop                                           ; $716B: $00
    ld b, b                                       ; $716C: $40
    nop                                           ; $716D: $00
    ld b, b                                       ; $716E: $40
    nop                                           ; $716F: $00
    ld b, b                                       ; $7170: $40
    nop                                           ; $7171: $00
    ld b, b                                       ; $7172: $40
    nop                                           ; $7173: $00
    ld b, b                                       ; $7174: $40
    nop                                           ; $7175: $00
    ld b, b                                       ; $7176: $40
    nop                                           ; $7177: $00
    ld b, b                                       ; $7178: $40
    nop                                           ; $7179: $00
    ld b, b                                       ; $717A: $40
    nop                                           ; $717B: $00
    ld b, b                                       ; $717C: $40
    nop                                           ; $717D: $00
    ld b, b                                       ; $717E: $40
    nop                                           ; $717F: $00
    ld b, b                                       ; $7180: $40
    inc b                                         ; $7181: $04
    add [hl]                                      ; $7182: $86
    inc b                                         ; $7183: $04
    adc l                                         ; $7184: $8D
    inc b                                         ; $7185: $04
    sub h                                         ; $7186: $94
    inc b                                         ; $7187: $04
    sbc e                                         ; $7188: $9B
    ld b, $A2                                     ; $7189: $06 $A2
    ld b, $A9                                     ; $718B: $06 $A9
    ld b, $B0                                     ; $718D: $06 $B0
    nop                                           ; $718F: $00
    ld b, b                                       ; $7190: $40
    nop                                           ; $7191: $00
    ld b, b                                       ; $7192: $40
    nop                                           ; $7193: $00
    ld b, b                                       ; $7194: $40
    nop                                           ; $7195: $00
    ld b, b                                       ; $7196: $40
    nop                                           ; $7197: $00
    ld b, b                                       ; $7198: $40
    nop                                           ; $7199: $00
    ld b, b                                       ; $719A: $40
    nop                                           ; $719B: $00
    ld b, b                                       ; $719C: $40
    nop                                           ; $719D: $00
    ld b, b                                       ; $719E: $40
    nop                                           ; $719F: $00
    ld b, b                                       ; $71A0: $40
    nop                                           ; $71A1: $00
    ld b, b                                       ; $71A2: $40
    nop                                           ; $71A3: $00
    ld b, b                                       ; $71A4: $40
    inc b                                         ; $71A5: $04
    add b                                         ; $71A6: $80
    inc b                                         ; $71A7: $04
    add a                                         ; $71A8: $87
    ld b, $8E                                     ; $71A9: $06 $8E
    ld b, $95                                     ; $71AB: $06 $95
    ld b, $9C                                     ; $71AD: $06 $9C
    ld b, $A3                                     ; $71AF: $06 $A3
    inc b                                         ; $71B1: $04
    xor d                                         ; $71B2: $AA
    nop                                           ; $71B3: $00
    ld b, b                                       ; $71B4: $40
    nop                                           ; $71B5: $00
    ld b, b                                       ; $71B6: $40
    nop                                           ; $71B7: $00
    ld b, b                                       ; $71B8: $40
    nop                                           ; $71B9: $00
    ld b, b                                       ; $71BA: $40
    nop                                           ; $71BB: $00
    ld b, b                                       ; $71BC: $40
    nop                                           ; $71BD: $00
    ld b, b                                       ; $71BE: $40
    nop                                           ; $71BF: $00
    ld b, b                                       ; $71C0: $40
    nop                                           ; $71C1: $00
    ld b, b                                       ; $71C2: $40
    nop                                           ; $71C3: $00
    ld b, b                                       ; $71C4: $40
    nop                                           ; $71C5: $00
    ld b, b                                       ; $71C6: $40
    nop                                           ; $71C7: $00
    ld b, b                                       ; $71C8: $40
    inc b                                         ; $71C9: $04
    add c                                         ; $71CA: $81
    inc b                                         ; $71CB: $04
    adc b                                         ; $71CC: $88
    inc b                                         ; $71CD: $04
    adc a                                         ; $71CE: $8F
    inc b                                         ; $71CF: $04
    sub [hl]                                      ; $71D0: $96
    inc b                                         ; $71D1: $04
    sbc l                                         ; $71D2: $9D
    inc b                                         ; $71D3: $04
    and h                                         ; $71D4: $A4
    inc b                                         ; $71D5: $04
    xor e                                         ; $71D6: $AB
    nop                                           ; $71D7: $00
    ld b, b                                       ; $71D8: $40
    nop                                           ; $71D9: $00
    ld b, b                                       ; $71DA: $40
    nop                                           ; $71DB: $00
    ld b, b                                       ; $71DC: $40
    nop                                           ; $71DD: $00
    ld b, b                                       ; $71DE: $40
    nop                                           ; $71DF: $00
    ld b, b                                       ; $71E0: $40
    nop                                           ; $71E1: $00
    ld b, b                                       ; $71E2: $40
    nop                                           ; $71E3: $00
    ld b, b                                       ; $71E4: $40
    nop                                           ; $71E5: $00
    ld b, b                                       ; $71E6: $40
    nop                                           ; $71E7: $00
    ld b, b                                       ; $71E8: $40
    nop                                           ; $71E9: $00
    ld b, b                                       ; $71EA: $40
    nop                                           ; $71EB: $00
    ld b, b                                       ; $71EC: $40
    inc b                                         ; $71ED: $04
    add d                                         ; $71EE: $82
    inc b                                         ; $71EF: $04
    adc c                                         ; $71F0: $89
    inc b                                         ; $71F1: $04
    sub b                                         ; $71F2: $90
    inc b                                         ; $71F3: $04
    sub a                                         ; $71F4: $97
    inc b                                         ; $71F5: $04
    sbc [hl]                                      ; $71F6: $9E
    inc b                                         ; $71F7: $04
    and l                                         ; $71F8: $A5
    inc b                                         ; $71F9: $04
    xor h                                         ; $71FA: $AC
    nop                                           ; $71FB: $00
    ld b, b                                       ; $71FC: $40
    nop                                           ; $71FD: $00
    ld b, b                                       ; $71FE: $40
    nop                                           ; $71FF: $00
    ld b, b                                       ; $7200: $40
    nop                                           ; $7201: $00
    ld b, b                                       ; $7202: $40
    nop                                           ; $7203: $00
    ld b, b                                       ; $7204: $40
    nop                                           ; $7205: $00
    ld b, b                                       ; $7206: $40
    nop                                           ; $7207: $00
    ld b, b                                       ; $7208: $40
    nop                                           ; $7209: $00
    ld b, b                                       ; $720A: $40
    nop                                           ; $720B: $00
    ld b, b                                       ; $720C: $40
    nop                                           ; $720D: $00
    ld b, b                                       ; $720E: $40
    nop                                           ; $720F: $00
    ld b, b                                       ; $7210: $40
    dec b                                         ; $7211: $05
    add e                                         ; $7212: $83
    dec b                                         ; $7213: $05
    adc d                                         ; $7214: $8A
    dec b                                         ; $7215: $05
    sub c                                         ; $7216: $91
    dec b                                         ; $7217: $05
    sbc b                                         ; $7218: $98
    inc b                                         ; $7219: $04
    sbc a                                         ; $721A: $9F
    rlca                                          ; $721B: $07
    and [hl]                                      ; $721C: $A6
    rlca                                          ; $721D: $07
    xor l                                         ; $721E: $AD
    nop                                           ; $721F: $00
    ld b, b                                       ; $7220: $40
    nop                                           ; $7221: $00
    ld b, b                                       ; $7222: $40
    nop                                           ; $7223: $00
    ld b, b                                       ; $7224: $40
    nop                                           ; $7225: $00
    ld b, b                                       ; $7226: $40
    nop                                           ; $7227: $00
    ld b, b                                       ; $7228: $40
    nop                                           ; $7229: $00
    ld b, b                                       ; $722A: $40
    nop                                           ; $722B: $00
    ld b, b                                       ; $722C: $40
    nop                                           ; $722D: $00
    ld b, b                                       ; $722E: $40
    nop                                           ; $722F: $00
    ld b, b                                       ; $7230: $40
    nop                                           ; $7231: $00
    ld b, b                                       ; $7232: $40
    nop                                           ; $7233: $00
    ld b, b                                       ; $7234: $40
    dec b                                         ; $7235: $05
    add h                                         ; $7236: $84
    dec b                                         ; $7237: $05
    adc e                                         ; $7238: $8B
    dec b                                         ; $7239: $05
    sub d                                         ; $723A: $92
    dec b                                         ; $723B: $05
    sbc c                                         ; $723C: $99
    inc b                                         ; $723D: $04
    and b                                         ; $723E: $A0
    rlca                                          ; $723F: $07
    and a                                         ; $7240: $A7
    rlca                                          ; $7241: $07
    xor [hl]                                      ; $7242: $AE
    nop                                           ; $7243: $00
    ld b, b                                       ; $7244: $40
    nop                                           ; $7245: $00
    ld b, b                                       ; $7246: $40
    nop                                           ; $7247: $00
    ld b, b                                       ; $7248: $40
    nop                                           ; $7249: $00
    ld b, b                                       ; $724A: $40
    nop                                           ; $724B: $00
    ld b, b                                       ; $724C: $40
    nop                                           ; $724D: $00
    ld b, b                                       ; $724E: $40
    nop                                           ; $724F: $00
    ld b, b                                       ; $7250: $40
    nop                                           ; $7251: $00
    ld b, b                                       ; $7252: $40
    nop                                           ; $7253: $00
    ld b, b                                       ; $7254: $40
    nop                                           ; $7255: $00
    ld b, b                                       ; $7256: $40
    nop                                           ; $7257: $00
    ld b, b                                       ; $7258: $40
    dec b                                         ; $7259: $05
    add l                                         ; $725A: $85
    dec b                                         ; $725B: $05
    adc h                                         ; $725C: $8C
    dec b                                         ; $725D: $05
    sub e                                         ; $725E: $93
    dec b                                         ; $725F: $05
    sbc d                                         ; $7260: $9A
    dec b                                         ; $7261: $05
    and c                                         ; $7262: $A1
    rlca                                          ; $7263: $07
    xor b                                         ; $7264: $A8
    rlca                                          ; $7265: $07
    xor a                                         ; $7266: $AF
    nop                                           ; $7267: $00
    ld b, b                                       ; $7268: $40
    nop                                           ; $7269: $00
    ld b, b                                       ; $726A: $40
    nop                                           ; $726B: $00
    ld b, b                                       ; $726C: $40
    nop                                           ; $726D: $00
    ld b, b                                       ; $726E: $40
    nop                                           ; $726F: $00
    ld b, b                                       ; $7270: $40
    nop                                           ; $7271: $00
    ld b, b                                       ; $7272: $40
    nop                                           ; $7273: $00
    ld b, b                                       ; $7274: $40
    nop                                           ; $7275: $00
    ld b, b                                       ; $7276: $40
    nop                                           ; $7277: $00
    ld b, b                                       ; $7278: $40
    nop                                           ; $7279: $00
    ld b, b                                       ; $727A: $40
    nop                                           ; $727B: $00
    ld b, b                                       ; $727C: $40
    dec b                                         ; $727D: $05
    add [hl]                                      ; $727E: $86
    dec b                                         ; $727F: $05
    adc l                                         ; $7280: $8D
    dec b                                         ; $7281: $05
    sub h                                         ; $7282: $94
    dec b                                         ; $7283: $05
    sbc e                                         ; $7284: $9B
    dec b                                         ; $7285: $05
    and d                                         ; $7286: $A2
    rlca                                          ; $7287: $07
    xor c                                         ; $7288: $A9
    rlca                                          ; $7289: $07
    or b                                          ; $728A: $B0
    nop                                           ; $728B: $00
    ld b, b                                       ; $728C: $40
    nop                                           ; $728D: $00
    ld b, b                                       ; $728E: $40
    nop                                           ; $728F: $00
    ld b, b                                       ; $7290: $40
    nop                                           ; $7291: $00
    ld b, b                                       ; $7292: $40
    nop                                           ; $7293: $00
    ld b, b                                       ; $7294: $40
    nop                                           ; $7295: $00
    ld b, b                                       ; $7296: $40
    nop                                           ; $7297: $00
    ld b, b                                       ; $7298: $40
    nop                                           ; $7299: $00
    ld b, b                                       ; $729A: $40
    nop                                           ; $729B: $00
    ld b, b                                       ; $729C: $40
    nop                                           ; $729D: $00
    ld b, b                                       ; $729E: $40
    nop                                           ; $729F: $00
    ld b, b                                       ; $72A0: $40
    inc b                                         ; $72A1: $04
    add b                                         ; $72A2: $80
    inc b                                         ; $72A3: $04
    add a                                         ; $72A4: $87
    dec b                                         ; $72A5: $05
    adc [hl]                                      ; $72A6: $8E
    dec b                                         ; $72A7: $05
    sub l                                         ; $72A8: $95
    dec b                                         ; $72A9: $05
    sbc h                                         ; $72AA: $9C
    dec b                                         ; $72AB: $05
    and e                                         ; $72AC: $A3
    dec b                                         ; $72AD: $05
    xor d                                         ; $72AE: $AA
    nop                                           ; $72AF: $00
    ld b, b                                       ; $72B0: $40
    nop                                           ; $72B1: $00
    ld b, b                                       ; $72B2: $40
    nop                                           ; $72B3: $00
    ld b, b                                       ; $72B4: $40
    nop                                           ; $72B5: $00
    ld b, b                                       ; $72B6: $40
    nop                                           ; $72B7: $00
    ld b, b                                       ; $72B8: $40
    nop                                           ; $72B9: $00
    ld b, b                                       ; $72BA: $40
    nop                                           ; $72BB: $00
    ld b, b                                       ; $72BC: $40
    nop                                           ; $72BD: $00
    ld b, b                                       ; $72BE: $40
    nop                                           ; $72BF: $00
    ld b, b                                       ; $72C0: $40
    nop                                           ; $72C1: $00
    ld b, b                                       ; $72C2: $40
    nop                                           ; $72C3: $00

Jump_02A_72C4:
    ld b, b                                       ; $72C4: $40
    inc b                                         ; $72C5: $04
    add c                                         ; $72C6: $81
    inc b                                         ; $72C7: $04
    adc b                                         ; $72C8: $88
    dec b                                         ; $72C9: $05
    adc a                                         ; $72CA: $8F
    dec b                                         ; $72CB: $05
    sub [hl]                                      ; $72CC: $96
    dec b                                         ; $72CD: $05
    sbc l                                         ; $72CE: $9D
    dec b                                         ; $72CF: $05
    and h                                         ; $72D0: $A4
    ld b, $AB                                     ; $72D1: $06 $AB
    nop                                           ; $72D3: $00
    ld b, b                                       ; $72D4: $40
    nop                                           ; $72D5: $00
    ld b, b                                       ; $72D6: $40
    nop                                           ; $72D7: $00
    ld b, b                                       ; $72D8: $40
    nop                                           ; $72D9: $00
    ld b, b                                       ; $72DA: $40
    nop                                           ; $72DB: $00
    ld b, b                                       ; $72DC: $40

Jump_02A_72DD:
    nop                                           ; $72DD: $00
    ld b, b                                       ; $72DE: $40
    nop                                           ; $72DF: $00
    ld b, b                                       ; $72E0: $40
    nop                                           ; $72E1: $00
    ld b, b                                       ; $72E2: $40
    nop                                           ; $72E3: $00
    ld b, b                                       ; $72E4: $40
    nop                                           ; $72E5: $00
    ld b, b                                       ; $72E6: $40
    nop                                           ; $72E7: $00
    ld b, b                                       ; $72E8: $40
    inc b                                         ; $72E9: $04
    add d                                         ; $72EA: $82
    inc b                                         ; $72EB: $04
    adc c                                         ; $72EC: $89
    inc b                                         ; $72ED: $04
    sub b                                         ; $72EE: $90
    ld b, $97                                     ; $72EF: $06 $97
    ld b, $9E                                     ; $72F1: $06 $9E
    ld b, $A5                                     ; $72F3: $06 $A5
    ld b, $AC                                     ; $72F5: $06 $AC
    nop                                           ; $72F7: $00
    ld b, b                                       ; $72F8: $40
    nop                                           ; $72F9: $00
    ld b, b                                       ; $72FA: $40
    nop                                           ; $72FB: $00
    ld b, b                                       ; $72FC: $40
    nop                                           ; $72FD: $00
    ld b, b                                       ; $72FE: $40
    nop                                           ; $72FF: $00
    ld b, b                                       ; $7300: $40
    nop                                           ; $7301: $00
    ld b, b                                       ; $7302: $40
    nop                                           ; $7303: $00
    ld b, b                                       ; $7304: $40
    nop                                           ; $7305: $00
    ld b, b                                       ; $7306: $40
    nop                                           ; $7307: $00
    ld b, b                                       ; $7308: $40
    nop                                           ; $7309: $00
    ld b, b                                       ; $730A: $40
    nop                                           ; $730B: $00
    ld b, b                                       ; $730C: $40
    inc b                                         ; $730D: $04
    add e                                         ; $730E: $83
    ld b, $8A                                     ; $730F: $06 $8A
    ld b, $91                                     ; $7311: $06 $91
    ld b, $98                                     ; $7313: $06 $98
    ld b, $9F                                     ; $7315: $06 $9F
    inc b                                         ; $7317: $04
    and [hl]                                      ; $7318: $A6
    inc b                                         ; $7319: $04
    xor l                                         ; $731A: $AD
    nop                                           ; $731B: $00
    ld b, b                                       ; $731C: $40
    nop                                           ; $731D: $00
    ld b, b                                       ; $731E: $40
    nop                                           ; $731F: $00
    ld b, b                                       ; $7320: $40
    nop                                           ; $7321: $00
    ld b, b                                       ; $7322: $40
    nop                                           ; $7323: $00
    ld b, b                                       ; $7324: $40
    nop                                           ; $7325: $00
    ld b, b                                       ; $7326: $40
    nop                                           ; $7327: $00
    ld b, b                                       ; $7328: $40
    nop                                           ; $7329: $00
    ld b, b                                       ; $732A: $40
    nop                                           ; $732B: $00
    ld b, b                                       ; $732C: $40
    nop                                           ; $732D: $00
    ld b, b                                       ; $732E: $40
    nop                                           ; $732F: $00
    ld b, b                                       ; $7330: $40
    inc b                                         ; $7331: $04
    add h                                         ; $7332: $84
    dec b                                         ; $7333: $05
    adc e                                         ; $7334: $8B
    dec b                                         ; $7335: $05
    sub d                                         ; $7336: $92
    rlca                                          ; $7337: $07
    sbc c                                         ; $7338: $99
    ld b, $A0                                     ; $7339: $06 $A0
    ld b, $A7                                     ; $733B: $06 $A7
    ld b, $AE                                     ; $733D: $06 $AE
    nop                                           ; $733F: $00
    ld b, b                                       ; $7340: $40
    nop                                           ; $7341: $00
    ld b, b                                       ; $7342: $40
    nop                                           ; $7343: $00
    ld b, b                                       ; $7344: $40
    nop                                           ; $7345: $00
    ld b, b                                       ; $7346: $40
    nop                                           ; $7347: $00
    ld b, b                                       ; $7348: $40
    nop                                           ; $7349: $00
    ld b, b                                       ; $734A: $40
    nop                                           ; $734B: $00
    ld b, b                                       ; $734C: $40
    nop                                           ; $734D: $00
    ld b, b                                       ; $734E: $40
    nop                                           ; $734F: $00
    ld b, b                                       ; $7350: $40
    nop                                           ; $7351: $00
    ld b, b                                       ; $7352: $40
    nop                                           ; $7353: $00
    ld b, b                                       ; $7354: $40
    ld b, $85                                     ; $7355: $06 $85
    ld b, $8C                                     ; $7357: $06 $8C
    dec b                                         ; $7359: $05
    sub e                                         ; $735A: $93
    rlca                                          ; $735B: $07
    sbc d                                         ; $735C: $9A
    ld b, $A1                                     ; $735D: $06 $A1
    dec b                                         ; $735F: $05
    xor b                                         ; $7360: $A8
    dec b                                         ; $7361: $05
    xor a                                         ; $7362: $AF
    nop                                           ; $7363: $00
    ld b, b                                       ; $7364: $40
    nop                                           ; $7365: $00
    ld b, b                                       ; $7366: $40
    nop                                           ; $7367: $00
    ld b, b                                       ; $7368: $40
    nop                                           ; $7369: $00
    ld b, b                                       ; $736A: $40
    nop                                           ; $736B: $00
    ld b, b                                       ; $736C: $40
    nop                                           ; $736D: $00
    ld b, b                                       ; $736E: $40
    nop                                           ; $736F: $00
    ld b, b                                       ; $7370: $40
    nop                                           ; $7371: $00
    ld b, b                                       ; $7372: $40
    nop                                           ; $7373: $00
    ld b, b                                       ; $7374: $40
    nop                                           ; $7375: $00
    ld b, b                                       ; $7376: $40
    nop                                           ; $7377: $00
    ld b, b                                       ; $7378: $40
    inc b                                         ; $7379: $04
    add [hl]                                      ; $737A: $86
    dec b                                         ; $737B: $05
    adc l                                         ; $737C: $8D
    ld b, $94                                     ; $737D: $06 $94
    ld b, $9B                                     ; $737F: $06 $9B
    ld b, $A2                                     ; $7381: $06 $A2
    dec b                                         ; $7383: $05
    xor c                                         ; $7384: $A9
    dec b                                         ; $7385: $05
    or b                                          ; $7386: $B0
    nop                                           ; $7387: $00
    ld b, b                                       ; $7388: $40
    nop                                           ; $7389: $00
    ld b, b                                       ; $738A: $40
    nop                                           ; $738B: $00
    ld b, b                                       ; $738C: $40
    nop                                           ; $738D: $00
    ld b, b                                       ; $738E: $40
    nop                                           ; $738F: $00
    ld b, b                                       ; $7390: $40
    nop                                           ; $7391: $00
    ld b, b                                       ; $7392: $40
    nop                                           ; $7393: $00
    ld b, b                                       ; $7394: $40
    nop                                           ; $7395: $00
    ld b, b                                       ; $7396: $40
    nop                                           ; $7397: $00
    ld b, b                                       ; $7398: $40
    nop                                           ; $7399: $00
    ld b, b                                       ; $739A: $40
    nop                                           ; $739B: $00
    ld b, b                                       ; $739C: $40
    inc b                                         ; $739D: $04
    add b                                         ; $739E: $80
    inc b                                         ; $739F: $04
    add a                                         ; $73A0: $87
    inc b                                         ; $73A1: $04
    adc [hl]                                      ; $73A2: $8E
    inc b                                         ; $73A3: $04
    sub l                                         ; $73A4: $95
    inc b                                         ; $73A5: $04
    sbc h                                         ; $73A6: $9C
    dec b                                         ; $73A7: $05
    and e                                         ; $73A8: $A3
    inc b                                         ; $73A9: $04
    xor d                                         ; $73AA: $AA
    nop                                           ; $73AB: $00
    ld b, b                                       ; $73AC: $40
    nop                                           ; $73AD: $00
    ld b, b                                       ; $73AE: $40
    nop                                           ; $73AF: $00
    ld b, b                                       ; $73B0: $40
    nop                                           ; $73B1: $00
    ld b, b                                       ; $73B2: $40
    nop                                           ; $73B3: $00
    ld b, b                                       ; $73B4: $40
    nop                                           ; $73B5: $00
    ld b, b                                       ; $73B6: $40
    nop                                           ; $73B7: $00
    ld b, b                                       ; $73B8: $40
    nop                                           ; $73B9: $00
    ld b, b                                       ; $73BA: $40
    nop                                           ; $73BB: $00
    ld b, b                                       ; $73BC: $40
    nop                                           ; $73BD: $00
    ld b, b                                       ; $73BE: $40
    nop                                           ; $73BF: $00
    ld b, b                                       ; $73C0: $40
    inc b                                         ; $73C1: $04
    add c                                         ; $73C2: $81
    inc b                                         ; $73C3: $04
    adc b                                         ; $73C4: $88
    inc b                                         ; $73C5: $04
    adc a                                         ; $73C6: $8F
    inc b                                         ; $73C7: $04
    sub [hl]                                      ; $73C8: $96
    dec b                                         ; $73C9: $05
    sbc l                                         ; $73CA: $9D
    dec b                                         ; $73CB: $05
    and h                                         ; $73CC: $A4
    inc b                                         ; $73CD: $04
    xor e                                         ; $73CE: $AB
    nop                                           ; $73CF: $00
    ld b, b                                       ; $73D0: $40
    nop                                           ; $73D1: $00
    ld b, b                                       ; $73D2: $40
    nop                                           ; $73D3: $00
    ld b, b                                       ; $73D4: $40
    nop                                           ; $73D5: $00
    ld b, b                                       ; $73D6: $40
    nop                                           ; $73D7: $00
    ld b, b                                       ; $73D8: $40
    nop                                           ; $73D9: $00
    ld b, b                                       ; $73DA: $40
    nop                                           ; $73DB: $00
    ld b, b                                       ; $73DC: $40
    nop                                           ; $73DD: $00
    ld b, b                                       ; $73DE: $40
    nop                                           ; $73DF: $00
    ld b, b                                       ; $73E0: $40
    nop                                           ; $73E1: $00
    ld b, b                                       ; $73E2: $40
    nop                                           ; $73E3: $00
    ld b, b                                       ; $73E4: $40
    inc b                                         ; $73E5: $04
    add d                                         ; $73E6: $82
    inc b                                         ; $73E7: $04
    adc c                                         ; $73E8: $89
    inc b                                         ; $73E9: $04
    sub b                                         ; $73EA: $90
    inc b                                         ; $73EB: $04
    sub a                                         ; $73EC: $97
    inc b                                         ; $73ED: $04
    sbc [hl]                                      ; $73EE: $9E
    dec b                                         ; $73EF: $05
    and l                                         ; $73F0: $A5
    dec b                                         ; $73F1: $05
    xor h                                         ; $73F2: $AC
    nop                                           ; $73F3: $00
    ld b, b                                       ; $73F4: $40
    nop                                           ; $73F5: $00
    ld b, b                                       ; $73F6: $40
    nop                                           ; $73F7: $00
    ld b, b                                       ; $73F8: $40
    nop                                           ; $73F9: $00
    ld b, b                                       ; $73FA: $40
    nop                                           ; $73FB: $00
    ld b, b                                       ; $73FC: $40
    nop                                           ; $73FD: $00
    ld b, b                                       ; $73FE: $40
    nop                                           ; $73FF: $00
    ld b, b                                       ; $7400: $40
    nop                                           ; $7401: $00
    ld b, b                                       ; $7402: $40
    nop                                           ; $7403: $00
    ld b, b                                       ; $7404: $40
    nop                                           ; $7405: $00
    ld b, b                                       ; $7406: $40
    nop                                           ; $7407: $00
    ld b, b                                       ; $7408: $40
    inc b                                         ; $7409: $04
    add e                                         ; $740A: $83
    inc b                                         ; $740B: $04
    adc d                                         ; $740C: $8A
    inc b                                         ; $740D: $04
    sub c                                         ; $740E: $91
    inc b                                         ; $740F: $04
    sbc b                                         ; $7410: $98
    ld b, $9F                                     ; $7411: $06 $9F
    inc b                                         ; $7413: $04
    and [hl]                                      ; $7414: $A6
    dec b                                         ; $7415: $05
    xor l                                         ; $7416: $AD
    nop                                           ; $7417: $00
    ld b, b                                       ; $7418: $40
    nop                                           ; $7419: $00
    ld b, b                                       ; $741A: $40
    nop                                           ; $741B: $00
    ld b, b                                       ; $741C: $40
    nop                                           ; $741D: $00
    ld b, b                                       ; $741E: $40
    nop                                           ; $741F: $00
    ld b, b                                       ; $7420: $40
    nop                                           ; $7421: $00
    ld b, b                                       ; $7422: $40
    nop                                           ; $7423: $00
    ld b, b                                       ; $7424: $40
    nop                                           ; $7425: $00
    ld b, b                                       ; $7426: $40
    nop                                           ; $7427: $00
    ld b, b                                       ; $7428: $40
    nop                                           ; $7429: $00
    ld b, b                                       ; $742A: $40
    nop                                           ; $742B: $00
    ld b, b                                       ; $742C: $40
    dec b                                         ; $742D: $05
    add h                                         ; $742E: $84
    rlca                                          ; $742F: $07
    adc e                                         ; $7430: $8B
    inc b                                         ; $7431: $04
    sub d                                         ; $7432: $92
    inc b                                         ; $7433: $04
    sbc c                                         ; $7434: $99
    inc b                                         ; $7435: $04
    and b                                         ; $7436: $A0
    dec b                                         ; $7437: $05
    and a                                         ; $7438: $A7
    dec b                                         ; $7439: $05
    xor [hl]                                      ; $743A: $AE
    nop                                           ; $743B: $00
    ld b, b                                       ; $743C: $40
    nop                                           ; $743D: $00
    ld b, b                                       ; $743E: $40
    nop                                           ; $743F: $00
    ld b, b                                       ; $7440: $40
    nop                                           ; $7441: $00
    ld b, b                                       ; $7442: $40
    nop                                           ; $7443: $00
    ld b, b                                       ; $7444: $40
    nop                                           ; $7445: $00
    ld b, b                                       ; $7446: $40
    nop                                           ; $7447: $00
    ld b, b                                       ; $7448: $40
    nop                                           ; $7449: $00
    ld b, b                                       ; $744A: $40
    nop                                           ; $744B: $00
    ld b, b                                       ; $744C: $40
    nop                                           ; $744D: $00
    ld b, b                                       ; $744E: $40
    nop                                           ; $744F: $00
    ld b, b                                       ; $7450: $40
    inc b                                         ; $7451: $04
    add l                                         ; $7452: $85
    rlca                                          ; $7453: $07
    adc h                                         ; $7454: $8C
    inc b                                         ; $7455: $04
    sub e                                         ; $7456: $93
    inc b                                         ; $7457: $04
    sbc d                                         ; $7458: $9A
    inc b                                         ; $7459: $04
    and c                                         ; $745A: $A1
    inc b                                         ; $745B: $04
    xor b                                         ; $745C: $A8
    dec b                                         ; $745D: $05
    xor a                                         ; $745E: $AF
    nop                                           ; $745F: $00
    ld b, b                                       ; $7460: $40
    nop                                           ; $7461: $00
    ld b, b                                       ; $7462: $40
    nop                                           ; $7463: $00
    ld b, b                                       ; $7464: $40
    nop                                           ; $7465: $00
    ld b, b                                       ; $7466: $40
    nop                                           ; $7467: $00
    ld b, b                                       ; $7468: $40
    nop                                           ; $7469: $00
    ld b, b                                       ; $746A: $40
    nop                                           ; $746B: $00
    ld b, b                                       ; $746C: $40
    nop                                           ; $746D: $00
    ld b, b                                       ; $746E: $40
    nop                                           ; $746F: $00
    ld b, b                                       ; $7470: $40
    nop                                           ; $7471: $00
    ld b, b                                       ; $7472: $40
    nop                                           ; $7473: $00
    ld b, b                                       ; $7474: $40
    inc b                                         ; $7475: $04
    add [hl]                                      ; $7476: $86
    dec b                                         ; $7477: $05
    adc l                                         ; $7478: $8D
    inc b                                         ; $7479: $04
    sub h                                         ; $747A: $94
    inc b                                         ; $747B: $04
    sbc e                                         ; $747C: $9B
    inc b                                         ; $747D: $04
    and d                                         ; $747E: $A2
    inc b                                         ; $747F: $04
    xor c                                         ; $7480: $A9
    inc b                                         ; $7481: $04
    or b                                          ; $7482: $B0
    nop                                           ; $7483: $00
    ld b, b                                       ; $7484: $40
    nop                                           ; $7485: $00
    ld b, b                                       ; $7486: $40
    nop                                           ; $7487: $00
    ld b, b                                       ; $7488: $40
    nop                                           ; $7489: $00
    ld b, b                                       ; $748A: $40
    nop                                           ; $748B: $00
    ld b, b                                       ; $748C: $40
    nop                                           ; $748D: $00
    ld b, b                                       ; $748E: $40
    nop                                           ; $748F: $00
    ld b, b                                       ; $7490: $40
    nop                                           ; $7491: $00
    ld b, b                                       ; $7492: $40
    nop                                           ; $7493: $00
    ld b, b                                       ; $7494: $40
    nop                                           ; $7495: $00
    nop                                           ; $7496: $00
    cp a                                          ; $7497: $BF
    inc d                                         ; $7498: $14
    ld a, a                                       ; $7499: $7F
    dec a                                         ; $749A: $3D
    rst RST_38                                    ; $749B: $FF
    ld a, a                                       ; $749C: $7F
    nop                                           ; $749D: $00
    nop                                           ; $749E: $00
    and a                                         ; $749F: $A7
    ld a, l                                       ; $74A0: $7D
    cpl                                           ; $74A1: $2F
    ld a, a                                       ; $74A2: $7F
    rst RST_38                                    ; $74A3: $FF
    ld a, a                                       ; $74A4: $7F
    nop                                           ; $74A5: $00
    nop                                           ; $74A6: $00
    and a                                         ; $74A7: $A7
    ld a, l                                       ; $74A8: $7D
    rst RST_38                                    ; $74A9: $FF
    ld e, $FF                                     ; $74AA: $1E $FF
    ld a, a                                       ; $74AC: $7F
    nop                                           ; $74AD: $00
    nop                                           ; $74AE: $00
    cp a                                          ; $74AF: $BF
    inc d                                         ; $74B0: $14
    cpl                                           ; $74B1: $2F
    ld a, a                                       ; $74B2: $7F
    rst RST_38                                    ; $74B3: $FF
    ld a, a                                       ; $74B4: $7F
    nop                                           ; $74B5: $00
    nop                                           ; $74B6: $00
    ld a, a                                       ; $74B7: $7F
    inc e                                         ; $74B8: $1C
    ccf                                           ; $74B9: $3F
    ld l, [hl]                                    ; $74BA: $6E
    rst RST_38                                    ; $74BB: $FF
    ld a, a                                       ; $74BC: $7F
    nop                                           ; $74BD: $00
    nop                                           ; $74BE: $00
    or l                                          ; $74BF: $B5
    ld a, l                                       ; $74C0: $7D
    jp z, $FF2B                                   ; $74C1: $CA $2B $FF

    ld a, a                                       ; $74C4: $7F
    nop                                           ; $74C5: $00
    nop                                           ; $74C6: $00
    or l                                          ; $74C7: $B5
    ld a, l                                       ; $74C8: $7D
    ccf                                           ; $74C9: $3F
    ld l, [hl]                                    ; $74CA: $6E
    rst RST_38                                    ; $74CB: $FF
    ld a, e                                       ; $74CC: $7B
    nop                                           ; $74CD: $00
    nop                                           ; $74CE: $00
    ld a, a                                       ; $74CF: $7F
    inc e                                         ; $74D0: $1C
    ld sp, hl                                     ; $74D1: $F9
    ld d, h                                       ; $74D2: $54
    rst RST_38                                    ; $74D3: $FF
    ld a, a                                       ; $74D4: $7F
    nop                                           ; $74D5: $00
    nop                                           ; $74D6: $00
    rst RST_38                                    ; $74D7: $FF
    nop                                           ; $74D8: $00
    ld a, a                                       ; $74D9: $7F
    ld h, $FF                                     ; $74DA: $26 $FF
    ld a, a                                       ; $74DC: $7F
    nop                                           ; $74DD: $00
    nop                                           ; $74DE: $00
    rst RST_38                                    ; $74DF: $FF
    nop                                           ; $74E0: $00
    ld a, a                                       ; $74E1: $7F
    ld h, $FF                                     ; $74E2: $26 $FF
    inc bc                                        ; $74E4: $03
    nop                                           ; $74E5: $00
    nop                                           ; $74E6: $00
    rst RST_38                                    ; $74E7: $FF
    nop                                           ; $74E8: $00
    rst RST_30                                    ; $74E9: $F7
    ld l, l                                       ; $74EA: $6D
    rst RST_38                                    ; $74EB: $FF
    inc bc                                        ; $74EC: $03
    nop                                           ; $74ED: $00
    nop                                           ; $74EE: $00
    rst RST_38                                    ; $74EF: $FF
    nop                                           ; $74F0: $00
    rst RST_30                                    ; $74F1: $F7
    ld l, l                                       ; $74F2: $6D
    rst RST_38                                    ; $74F3: $FF
    ld a, a                                       ; $74F4: $7F
    nop                                           ; $74F5: $00
    nop                                           ; $74F6: $00
    and a                                         ; $74F7: $A7
    ld c, $B5                                     ; $74F8: $0E $B5
    ld d, [hl]                                    ; $74FA: $56
    rst RST_38                                    ; $74FB: $FF
    ld a, a                                       ; $74FC: $7F
    nop                                           ; $74FD: $00
    nop                                           ; $74FE: $00
    and a                                         ; $74FF: $A7
    ld c, $B5                                     ; $7500: $0E $B5
    ld d, [hl]                                    ; $7502: $56
    jp hl                                         ; $7503: $E9


    ld a, l                                       ; $7504: $7D
    nop                                           ; $7505: $00
    nop                                           ; $7506: $00
    ld [hl], e                                    ; $7507: $73
    ld l, l                                       ; $7508: $6D
    ei                                            ; $7509: $FB
    ld a, l                                       ; $750A: $7D
    rst RST_38                                    ; $750B: $FF
    ld a, a                                       ; $750C: $7F
    nop                                           ; $750D: $00
    nop                                           ; $750E: $00
    cp a                                          ; $750F: $BF
    ld de, $27BF                                  ; $7510: $11 $BF $27
    rst RST_38                                    ; $7513: $FF
    ld a, a                                       ; $7514: $7F
    nop                                           ; $7515: $00
    nop                                           ; $7516: $00
    ei                                            ; $7517: $FB
    dec c                                         ; $7518: $0D
    ld a, e                                       ; $7519: $7B
    inc bc                                        ; $751A: $03
    rst RST_38                                    ; $751B: $FF
    ld a, a                                       ; $751C: $7F
    nop                                           ; $751D: $00
    nop                                           ; $751E: $00
    dec hl                                        ; $751F: $2B
    ld l, [hl]                                    ; $7520: $6E
    dec hl                                        ; $7521: $2B
    ld a, a                                       ; $7522: $7F
    rst RST_38                                    ; $7523: $FF
    ld a, a                                       ; $7524: $7F
    nop                                           ; $7525: $00
    nop                                           ; $7526: $00
    dec hl                                        ; $7527: $2B
    ld l, [hl]                                    ; $7528: $6E
    ld a, e                                       ; $7529: $7B
    inc bc                                        ; $752A: $03
    rst RST_38                                    ; $752B: $FF
    ld a, a                                       ; $752C: $7F
    nop                                           ; $752D: $00
    nop                                           ; $752E: $00
    rst RST_38                                    ; $752F: $FF
    inc e                                         ; $7530: $1C
    ld a, e                                       ; $7531: $7B
    inc bc                                        ; $7532: $03
    rst RST_38                                    ; $7533: $FF
    ld a, a                                       ; $7534: $7F
    nop                                           ; $7535: $00
    nop                                           ; $7536: $00
    cp a                                          ; $7537: $BF
    dec e                                         ; $7538: $1D
    ccf                                           ; $7539: $3F
    rrca                                          ; $753A: $0F
    rst RST_38                                    ; $753B: $FF
    ld a, a                                       ; $753C: $7F
    nop                                           ; $753D: $00
    nop                                           ; $753E: $00
    ld a, a                                       ; $753F: $7F
    inc c                                         ; $7540: $0C
    ccf                                           ; $7541: $3F
    rrca                                          ; $7542: $0F
    rst RST_38                                    ; $7543: $FF
    ld a, a                                       ; $7544: $7F
    nop                                           ; $7545: $00
    nop                                           ; $7546: $00
    ld [hl], a                                    ; $7547: $77
    dec c                                         ; $7548: $0D
    ccf                                           ; $7549: $3F
    rrca                                          ; $754A: $0F
    rst RST_38                                    ; $754B: $FF
    ld a, a                                       ; $754C: $7F
    nop                                           ; $754D: $00
    nop                                           ; $754E: $00
    nop                                           ; $754F: $00
    ld a, h                                       ; $7550: $7C
    nop                                           ; $7551: $00
    ld a, h                                       ; $7552: $7C
    rst RST_38                                    ; $7553: $FF
    ld a, a                                       ; $7554: $7F
    nop                                           ; $7555: $00
    nop                                           ; $7556: $00
    cpl                                           ; $7557: $2F
    dec h                                         ; $7558: $25
    dec [hl]                                      ; $7559: $35
    ld b, [hl]                                    ; $755A: $46
    rst RST_38                                    ; $755B: $FF
    ld a, a                                       ; $755C: $7F
    nop                                           ; $755D: $00
    nop                                           ; $755E: $00
    ld l, $6D                                     ; $755F: $2E $6D
    pop af                                        ; $7561: $F1
    ld a, [hl]                                    ; $7562: $7E
    rst RST_38                                    ; $7563: $FF
    ld a, a                                       ; $7564: $7F
    nop                                           ; $7565: $00
    nop                                           ; $7566: $00
    cpl                                           ; $7567: $2F
    dec h                                         ; $7568: $25
    ld a, a                                       ; $7569: $7F
    inc d                                         ; $756A: $14
    rst RST_38                                    ; $756B: $FF
    ld a, a                                       ; $756C: $7F
    nop                                           ; $756D: $00
    nop                                           ; $756E: $00
    ccf                                           ; $756F: $3F
    ld a, l                                       ; $7570: $7D
    cp a                                          ; $7571: $BF
    ld a, [hl]                                    ; $7572: $7E
    rst RST_38                                    ; $7573: $FF
    ld a, a                                       ; $7574: $7F
    nop                                           ; $7575: $00
    nop                                           ; $7576: $00
    or a                                          ; $7577: $B7
    ld [hl], l                                    ; $7578: $75
    ld a, a                                       ; $7579: $7F
    ld a, [hl]                                    ; $757A: $7E
    rst RST_38                                    ; $757B: $FF
    ld a, a                                       ; $757C: $7F
    nop                                           ; $757D: $00
    nop                                           ; $757E: $00
    ld h, a                                       ; $757F: $67
    dec a                                         ; $7580: $3D
    di                                            ; $7581: $F3
    ld l, [hl]                                    ; $7582: $6E
    rst RST_38                                    ; $7583: $FF
    ld a, a                                       ; $7584: $7F
    nop                                           ; $7585: $00
    nop                                           ; $7586: $00
    jr c, jr_02A_75B6                             ; $7587: $38 $2D

    rst RST_18                                    ; $7589: $DF
    dec l                                         ; $758A: $2D
    rst RST_38                                    ; $758B: $FF
    ld a, a                                       ; $758C: $7F
    nop                                           ; $758D: $00
    nop                                           ; $758E: $00
    ld h, a                                       ; $758F: $67
    dec e                                         ; $7590: $1D
    ld a, a                                       ; $7591: $7F
    ld a, [hl]                                    ; $7592: $7E
    rst RST_38                                    ; $7593: $FF
    ld a, a                                       ; $7594: $7F
    nop                                           ; $7595: $00
    nop                                           ; $7596: $00
    ccf                                           ; $7597: $3F
    dec e                                         ; $7598: $1D
    ccf                                           ; $7599: $3F
    ld l, $FF                                     ; $759A: $2E $FF
    ld a, a                                       ; $759C: $7F
    nop                                           ; $759D: $00
    nop                                           ; $759E: $00
    ld a, a                                       ; $759F: $7F
    inc c                                         ; $75A0: $0C
    rst RST_38                                    ; $75A1: $FF
    ld c, h                                       ; $75A2: $4C
    rst RST_38                                    ; $75A3: $FF
    ld a, a                                       ; $75A4: $7F
    nop                                           ; $75A5: $00
    nop                                           ; $75A6: $00
    ld a, a                                       ; $75A7: $7F
    inc c                                         ; $75A8: $0C
    ccf                                           ; $75A9: $3F
    ld l, $FF                                     ; $75AA: $2E $FF
    ld a, a                                       ; $75AC: $7F
    nop                                           ; $75AD: $00
    nop                                           ; $75AE: $00
    ld a, a                                       ; $75AF: $7F
    inc c                                         ; $75B0: $0C
    rst RST_38                                    ; $75B1: $FF
    rrca                                          ; $75B2: $0F
    rst RST_38                                    ; $75B3: $FF
    ld a, a                                       ; $75B4: $7F
    nop                                           ; $75B5: $00

jr_02A_75B6:
    nop                                           ; $75B6: $00
    ld l, c                                       ; $75B7: $69
    ld c, $F5                                     ; $75B8: $0E $F5
    rra                                           ; $75BA: $1F
    rst RST_38                                    ; $75BB: $FF
    ld a, a                                       ; $75BC: $7F
    nop                                           ; $75BD: $00
    nop                                           ; $75BE: $00
    ld l, c                                       ; $75BF: $69
    ld c, $FF                                     ; $75C0: $0E $FF
    rra                                           ; $75C2: $1F
    rst RST_38                                    ; $75C3: $FF
    ld a, a                                       ; $75C4: $7F
    nop                                           ; $75C5: $00
    nop                                           ; $75C6: $00
    ld l, c                                       ; $75C7: $69
    ld c, $7F                                     ; $75C8: $0E $7F
    inc e                                         ; $75CA: $1C
    rst RST_38                                    ; $75CB: $FF
    ld a, a                                       ; $75CC: $7F
    nop                                           ; $75CD: $00
    nop                                           ; $75CE: $00
    ld l, c                                       ; $75CF: $69
    ld c, $ED                                     ; $75D0: $0E $ED
    ld a, [hl]                                    ; $75D2: $7E
    rst RST_38                                    ; $75D3: $FF
    ld a, a                                       ; $75D4: $7F
    daa                                           ; $75D5: $27
    nop                                           ; $75D6: $00
    halt                                          ; $75D7: $76
    nop                                           ; $75D8: $00
    rrca                                          ; $75D9: $0F
    rrca                                          ; $75DA: $0F
    ld b, $3C                                     ; $75DB: $06 $3C
    ld b, $F7                                     ; $75DD: $06 $F7
    ld a, e                                       ; $75DF: $7B
    push de                                       ; $75E0: $D5
    ld b, $F7                                     ; $75E1: $06 $F7
    rst RST_00                                    ; $75E3: $C7
    nop                                           ; $75E4: $00
    rst RST_08                                    ; $75E5: $CF
    nop                                           ; $75E6: $00
    rst RST_18                                    ; $75E7: $DF
    ld [bc], a                                    ; $75E8: $02
    xor d                                         ; $75E9: $AA
    rst RST_30                                    ; $75EA: $F7
    pop af                                        ; $75EB: $F1
    nop                                           ; $75EC: $00
    ld sp, hl                                     ; $75ED: $F9
    nop                                           ; $75EE: $00
    db $FD                                        ; $75EF: $FD
    nop                                           ; $75F0: $00
    inc a                                         ; $75F1: $3C
    jp c, $F700                                   ; $75F2: $DA $00 $F7

    rst RST_38                                    ; $75F5: $FF
    inc b                                         ; $75F6: $04
    ld sp, hl                                     ; $75F7: $F9
    adc a                                         ; $75F8: $8F
    nop                                           ; $75F9: $00
    sbc a                                         ; $75FA: $9F
    or l                                          ; $75FB: $B5
    nop                                           ; $75FC: $00
    cp a                                          ; $75FD: $BF
    nop                                           ; $75FE: $00
    ld sp, hl                                     ; $75FF: $F9
    db $E3                                        ; $7600: $E3
    nop                                           ; $7601: $00
    di                                            ; $7602: $F3
    nop                                           ; $7603: $00
    ld e, d                                       ; $7604: $5A
    ei                                            ; $7605: $FB
    nop                                           ; $7606: $00
    ld a, e                                       ; $7607: $7B
    nop                                           ; $7608: $00
    rst RST_30                                    ; $7609: $F7
    cp $00                                        ; $760A: $FE $00
    rst RST_38                                    ; $760C: $FF
    or l                                          ; $760D: $B5
    ld [bc], a                                    ; $760E: $02
    rst RST_00                                    ; $760F: $C7
    nop                                           ; $7610: $00
    rst RST_30                                    ; $7611: $F7
    inc a                                         ; $7612: $3C
    ld [bc], a                                    ; $7613: $02
    cp h                                          ; $7614: $BC
    ld [bc], a                                    ; $7615: $02
    add hl, hl                                    ; $7616: $29
    rst RST_08                                    ; $7617: $CF
    ccf                                           ; $7618: $3F
    dec e                                         ; $7619: $1D
    rst RST_38                                    ; $761A: $FF
    ld c, $F3                                     ; $761B: $0E $F3
    db $FC                                        ; $761D: $FC
    dec e                                         ; $761E: $1D
    ld e, e                                       ; $761F: $5B
    inc a                                         ; $7620: $3C

jr_02A_7621:
    ld b, $00                                     ; $7621: $06 $00
    inc [hl]                                      ; $7623: $34
    ld de, $067B                                  ; $7624: $11 $7B $06
    sub b                                         ; $7627: $90
    call c, Call_000_1234                         ; $7628: $DC $34 $12
    inc a                                         ; $762B: $3C
    ld de, $0021                                  ; $762C: $11 $21 $00
    dec a                                         ; $762F: $3D
    ccf                                           ; $7630: $3F
    db $EB                                        ; $7631: $EB
    jr nz, @+$17                                  ; $7632: $20 $15

    nop                                           ; $7634: $00
    ld a, e                                       ; $7635: $7B
    ld de, $51FB                                  ; $7636: $11 $FB $51
    jr nz, jr_02A_7690                            ; $7639: $20 $55

    di                                            ; $763B: $F3
    jr nz, jr_02A_7621                            ; $763C: $20 $E3

    db $10                                        ; $763E: $10
    jp $8310                                      ; $763F: $C3 $10 $83


    db $10                                        ; $7642: $10
    ld a, e                                       ; $7643: $7B
    sbc $06                                       ; $7644: $DE $06
    add e                                         ; $7646: $83
    ld sp, $1C11                                  ; $7647: $31 $11 $1C
    ld [bc], a                                    ; $764A: $02
    ld d, b                                       ; $764B: $50
    cp l                                          ; $764C: $BD
    dec bc                                        ; $764D: $0B
    sbc $11                                       ; $764E: $DE $11
    ld hl, $1333                                  ; $7650: $21 $33 $13
    rst RST_18                                    ; $7653: $DF
    sub c                                         ; $7654: $91
    xor a                                         ; $7655: $AF
    ld [$121C], sp                                ; $7656: $08 $1C $12
    inc a                                         ; $7659: $3C
    ld h, c                                       ; $765A: $61
    ld hl, $5310                                  ; $765B: $21 $10 $53
    db $DB                                        ; $765E: $DB
    ld h, d                                       ; $765F: $62
    inc d                                         ; $7660: $14
    rst RST_00                                    ; $7661: $C7
    ld b, $81                                     ; $7662: $06 $81
    rst RST_08                                    ; $7664: $CF
    nop                                           ; $7665: $00
    jr nc, jr_02A_76BF                            ; $7666: $30 $57

    rst RST_38                                    ; $7668: $FF
    db $10                                        ; $7669: $10
    cp $10                                        ; $766A: $FE $10
    ld a, e                                       ; $766C: $7B
    ld de, $3321                                  ; $766D: $11 $21 $33
    db $D3                                        ; $7670: $D3
    dec d                                         ; $7671: $15
    nop                                           ; $7672: $00
    rst RST_38                                    ; $7673: $FF
    db $10                                        ; $7674: $10
    rst RST_08                                    ; $7675: $CF
    rst RST_00                                    ; $7676: $C7
    ld d, c                                       ; $7677: $51
    jr nz, @-$21                                  ; $7678: $20 $DD

    ld sp, $BC15                                  ; $767A: $31 $15 $BC
    ld b, $83                                     ; $767D: $06 $83
    jr nc, jr_02A_76BF                            ; $767F: $30 $3E

    db $10                                        ; $7681: $10
    ld a, [hl-]                                   ; $7682: $3A
    rra                                           ; $7683: $1F
    inc a                                         ; $7684: $3C
    ld b, $90                                     ; $7685: $06 $90
    inc sp                                        ; $7687: $33
    ld a, h                                       ; $7688: $7C
    db $10                                        ; $7689: $10
    ld hl, sp-$59                                 ; $768A: $F8 $A7
    db $10                                        ; $768C: $10
    rrca                                          ; $768D: $0F
    db $10                                        ; $768E: $10
    add a                                         ; $768F: $87

jr_02A_7690:
    add e                                         ; $7690: $83
    jr nz, jr_02A_7693                            ; $7691: $20 $00

jr_02A_7693:
    jr nz, @-$15                                  ; $7693: $20 $E9

    ld sp, $0015                                  ; $7695: $31 $15 $00
    ldh a, [rNR10]                                ; $7698: $F0 $10
    ldh [$FFC0], a                                ; $769A: $E0 $C0
    ld d, c                                       ; $769C: $51
    ld [$3120], a                                 ; $769D: $EA $20 $31
    dec d                                         ; $76A0: $15
    ccf                                           ; $76A1: $3F
    db $10                                        ; $76A2: $10
    ld a, $10                                     ; $76A3: $3E $10
    inc a                                         ; $76A5: $3C
    jp c, Jump_000_08F1                           ; $76A6: $DA $F1 $08

    inc bc                                        ; $76A9: $03
    inc d                                         ; $76AA: $14
    add hl, bc                                    ; $76AB: $09
    rst RST_18                                    ; $76AC: $DF
    db $10                                        ; $76AD: $10
    rst RST_08                                    ; $76AE: $CF
    xor d                                         ; $76AF: $AA
    db $10                                        ; $76B0: $10
    rst RST_00                                    ; $76B1: $C7
    ld a, [$10FC]                                 ; $76B2: $FA $FC $10
    ld hl, sp+$10                                 ; $76B5: $F8 $10
    ldh a, [$FFB5]                                ; $76B7: $F0 $B5
    ld a, [$143C]                                 ; $76B9: $FA $3C $14
    add hl, bc                                    ; $76BC: $09
    ccf                                           ; $76BD: $3F
    db $10                                        ; $76BE: $10

jr_02A_76BF:
    rra                                           ; $76BF: $1F
    db $10                                        ; $76C0: $10
    ld d, l                                       ; $76C1: $55
    rrca                                          ; $76C2: $0F
    ld a, [$10FB]                                 ; $76C3: $FA $FB $10
    di                                            ; $76C6: $F3
    db $10                                        ; $76C7: $10
    db $E3                                        ; $76C8: $E3
    ld a, [$C76D]                                 ; $76C9: $FA $6D $C7
    inc d                                         ; $76CC: $14
    add hl, bc                                    ; $76CD: $09
    add e                                         ; $76CE: $83
    inc d                                         ; $76CF: $14
    add hl, bc                                    ; $76D0: $09
    ret nz                                        ; $76D1: $C0

    inc d                                         ; $76D2: $14
    xor a                                         ; $76D3: $AF
    dec bc                                        ; $76D4: $0B
    ld a, h                                       ; $76D5: $7C
    nop                                           ; $76D6: $00
    inc e                                         ; $76D7: $1C
    nop                                           ; $76D8: $00
    ld b, b                                       ; $76D9: $40
    ld [de], a                                    ; $76DA: $12
    ld b, h                                       ; $76DB: $44
    xor a                                         ; $76DC: $AF
    ldh a, [c]                                    ; $76DD: $F2
    ld a, a                                       ; $76DE: $7F
    nop                                           ; $76DF: $00
    ld [hl], a                                    ; $76E0: $77
    nop                                           ; $76E1: $00
    ld b, b                                       ; $76E2: $40
    ld de, $7750                                  ; $76E3: $11 $50 $77
    ld [hl], b                                    ; $76E6: $70
    jr nz, @+$15                                  ; $76E7: $20 $13

    di                                            ; $76E9: $F3
    rlca                                          ; $76EA: $07
    nop                                           ; $76EB: $00
    ld b, b                                       ; $76EC: $40
    ld de, $F4EE                                  ; $76ED: $11 $EE $F4
    ld b, b                                       ; $76F0: $40
    ldh a, [c]                                    ; $76F1: $F2
    rst RST_20                                    ; $76F2: $E7
    ld [bc], a                                    ; $76F3: $02
    ld b, c                                       ; $76F4: $41
    ld de, $F5FF                                  ; $76F5: $11 $FF $F5
    jr nz, jr_02A_770B                            ; $76F8: $20 $11

    ld h, c                                       ; $76FA: $61
    ld bc, $007F                                  ; $76FB: $01 $7F $00
    ld [hl], a                                    ; $76FE: $77
    nop                                           ; $76FF: $00
    ld a, [$1240]                                 ; $7700: $FA $40 $12
    ld b, e                                       ; $7703: $43
    and b                                         ; $7704: $A0
    ldh a, [c]                                    ; $7705: $F2
    ld [hl], e                                    ; $7706: $73
    nop                                           ; $7707: $00
    ld a, e                                       ; $7708: $7B

jr_02A_7709:
    ei                                            ; $7709: $FB
    nop                                           ; $770A: $00

jr_02A_770B:
    add d                                         ; $770B: $82
    db $F4                                        ; $770C: $F4
    ld de, $E701                                  ; $770D: $11 $01 $E7
    ld [bc], a                                    ; $7710: $02
    ld b, c                                       ; $7711: $41
    sbc l                                         ; $7712: $9D
    db $10                                        ; $7713: $10
    rst RST_38                                    ; $7714: $FF
    jr @+$22                                      ; $7715: $18 $20

    inc de                                        ; $7717: $13
    ld bc, $0277                                  ; $7718: $01 $77 $02
    db $EB                                        ; $771B: $EB
    ld b, c                                       ; $771C: $41
    ld h, d                                       ; $771D: $62
    ld b, d                                       ; $771E: $42
    ld a, a                                       ; $771F: $7F
    ldh a, [c]                                    ; $7720: $F2
    ld [hl], b                                    ; $7721: $70
    ld [bc], a                                    ; $7722: $02
    ld b, c                                       ; $7723: $41
    db $FD                                        ; $7724: $FD
    ld h, d                                       ; $7725: $62
    ld b, d                                       ; $7726: $42
    di                                            ; $7727: $F3
    jr nc, jr_02A_772A                            ; $7728: $30 $00

jr_02A_772A:
    and l                                         ; $772A: $A5
    rlca                                          ; $772B: $07
    jr nz, jr_02A_7709                            ; $772C: $20 $DB

    ld de, $7EFA                                  ; $772E: $11 $FA $7E
    ld b, e                                       ; $7731: $43
    di                                            ; $7732: $F3
    inc e                                         ; $7733: $1C
    ld [bc], a                                    ; $7734: $02
    ld b, c                                       ; $7735: $41
    ldh [$FF62], a                                ; $7736: $E0 $62
    ld b, e                                       ; $7738: $43
    stop                                          ; $7739: $10 $00
    nop                                           ; $773B: $00
    ld [bc], a                                    ; $773C: $02
    nop                                           ; $773D: $00
    inc bc                                        ; $773E: $03
    nop                                           ; $773F: $00
    inc b                                         ; $7740: $04
    nop                                           ; $7741: $00
    dec b                                         ; $7742: $05
    nop                                           ; $7743: $00
    ld b, $00                                     ; $7744: $06 $00
    rlca                                          ; $7746: $07
    nop                                           ; $7747: $00
    ld [$0900], sp                                ; $7748: $08 $00 $09
    nop                                           ; $774B: $00
    ld a, [bc]                                    ; $774C: $0A
    nop                                           ; $774D: $00
    ld [bc], a                                    ; $774E: $02
    nop                                           ; $774F: $00
    ld c, $00                                     ; $7750: $0E $00
    rrca                                          ; $7752: $0F
    nop                                           ; $7753: $00
    ld [de], a                                    ; $7754: $12
    nop                                           ; $7755: $00
    inc de                                        ; $7756: $13
    nop                                           ; $7757: $00
    ld c, $00                                     ; $7758: $0E $00
    ld c, $00                                     ; $775A: $0E $00
    rrca                                          ; $775C: $0F
    nop                                           ; $775D: $00
    rla                                           ; $775E: $17
    nop                                           ; $775F: $00
    ld a, [de]                                    ; $7760: $1A
    nop                                           ; $7761: $00
    dec de                                        ; $7762: $1B
    nop                                           ; $7763: $00
    stop                                          ; $7764: $10 $00
    ld de, $1400                                  ; $7766: $11 $00 $14
    nop                                           ; $7769: $00
    dec d                                         ; $776A: $15
    nop                                           ; $776B: $00
    ld d, $00                                     ; $776C: $16 $00
    ld d, $00                                     ; $776E: $16 $00
    jr jr_02A_7772                                ; $7770: $18 $00

jr_02A_7772:
    add hl, de                                    ; $7772: $19
    nop                                           ; $7773: $00
    inc e                                         ; $7774: $1C
    nop                                           ; $7775: $00
    dec e                                         ; $7776: $1D
    nop                                           ; $7777: $00
    ld e, $00                                     ; $7778: $1E $00
    rra                                           ; $777A: $1F
    nop                                           ; $777B: $00
    jr nz, jr_02A_777E                            ; $777C: $20 $00

jr_02A_777E:
    ld hl, $2200                                  ; $777E: $21 $00 $22
    nop                                           ; $7781: $00
    inc hl                                        ; $7782: $23
    nop                                           ; $7783: $00
    inc h                                         ; $7784: $24
    nop                                           ; $7785: $00
    dec h                                         ; $7786: $25
    nop                                           ; $7787: $00
    ld h, $00                                     ; $7788: $26 $00
    daa                                           ; $778A: $27
    nop                                           ; $778B: $00
    dec bc                                        ; $778C: $0B
    nop                                           ; $778D: $00
    inc c                                         ; $778E: $0C
    nop                                           ; $778F: $00
    dec c                                         ; $7790: $0D
    ld b, $00                                     ; $7791: $06 $00
    ld d, a                                       ; $7793: $57
    nop                                           ; $7794: $00
    nop                                           ; $7795: $00
    ld a, h                                       ; $7796: $7C
    nop                                           ; $7797: $00
    inc e                                         ; $7798: $1C
    nop                                           ; $7799: $00
    ld b, b                                       ; $779A: $40
    ld [de], a                                    ; $779B: $12
    push af                                       ; $779C: $F5
    ld b, h                                       ; $779D: $44
    pop hl                                        ; $779E: $E1
    rrca                                          ; $779F: $0F
    nop                                           ; $77A0: $00
    ld a, a                                       ; $77A1: $7F
    nop                                           ; $77A2: $00
    ld [hl], a                                    ; $77A3: $77
    nop                                           ; $77A4: $00
    rst RST_28                                    ; $77A5: $EF
    ld b, b                                       ; $77A6: $40
    ld de, $7050                                  ; $77A7: $11 $50 $70
    jr nz, jr_02A_77BF                            ; $77AA: $20 $13

    rrca                                          ; $77AC: $0F
    ld bc, $E777                                  ; $77AD: $01 $77 $E7
    ld [bc], a                                    ; $77B0: $02
    ld b, c                                       ; $77B1: $41
    ld de, $20FF                                  ; $77B2: $11 $FF $20
    ld de, $DF61                                  ; $77B5: $11 $61 $DF
    rrca                                          ; $77B8: $0F
    ld bc, $021C                                  ; $77B9: $01 $1C $02
    ld b, c                                       ; $77BC: $41
    ld h, d                                       ; $77BD: $62
    ld b, e                                       ; $77BE: $43

jr_02A_77BF:
    ldh a, [c]                                    ; $77BF: $F2
    xor l                                         ; $77C0: $AD
    rrca                                          ; $77C1: $0F
    ld [hl], e                                    ; $77C2: $73
    nop                                           ; $77C3: $00
    ld a, e                                       ; $77C4: $7B
    nop                                           ; $77C5: $00
    ld b, b                                       ; $77C6: $40
    ld a, a                                       ; $77C7: $7F
    db $10                                        ; $77C8: $10
    ld a, b                                       ; $77C9: $78
    ld [hl], a                                    ; $77CA: $77
    nop                                           ; $77CB: $00
    ld hl, $0F12                                  ; $77CC: $21 $12 $0F
    rlca                                          ; $77CF: $07
    nop                                           ; $77D0: $00
    ld d, a                                       ; $77D1: $57
    nop                                           ; $77D2: $00
    nop                                           ; $77D3: $00
    ld a, a                                       ; $77D4: $7F
    nop                                           ; $77D5: $00
    rlca                                          ; $77D6: $07
    nop                                           ; $77D7: $00
    ld b, b                                       ; $77D8: $40
    ld de, $50BF                                  ; $77D9: $11 $BF $50
    ld [hl], b                                    ; $77DC: $70
    jr nz, jr_02A_77F0                            ; $77DD: $20 $11

    ld b, b                                       ; $77DF: $40
    pop hl                                        ; $77E0: $E1
    rrca                                          ; $77E1: $0F
    nop                                           ; $77E2: $00
    ld e, [hl]                                    ; $77E3: $5E
    ld a, a                                       ; $77E4: $7F
    nop                                           ; $77E5: $00
    ld [hl], a                                    ; $77E6: $77
    nop                                           ; $77E7: $00
    ld b, b                                       ; $77E8: $40
    ld de, $7050                                  ; $77E9: $11 $50 $70
    rst RST_30                                    ; $77EC: $F7
    jr nz, jr_02A_7802                            ; $77ED: $20 $13

    rrca                                          ; $77EF: $0F

jr_02A_77F0:
    ld bc, $02E7                                  ; $77F0: $01 $E7 $02
    ld b, c                                       ; $77F3: $41
    ld de, $FF7D                                  ; $77F4: $11 $7D $FF
    jr nz, jr_02A_780A                            ; $77F7: $20 $11

    ld h, c                                       ; $77F9: $61
    rrca                                          ; $77FA: $0F
    ld bc, $021C                                  ; $77FB: $01 $1C $02
    ld a, [$6241]                                 ; $77FE: $FA $41 $62
    ld b, e                                       ; $7801: $43

jr_02A_7802:
    ldh a, [c]                                    ; $7802: $F2
    rrca                                          ; $7803: $0F
    ld [hl], e                                    ; $7804: $73
    nop                                           ; $7805: $00
    ld a, e                                       ; $7806: $7B
    rst RST_10                                    ; $7807: $D7
    nop                                           ; $7808: $00
    ld b, b                                       ; $7809: $40

jr_02A_780A:
    ld a, a                                       ; $780A: $7F
    db $10                                        ; $780B: $10
    ld [hl], a                                    ; $780C: $77
    nop                                           ; $780D: $00
    ld hl, $8012                                  ; $780E: $21 $12 $80
    rrca                                          ; $7811: $0F
    nop                                           ; $7812: $00
    rlca                                          ; $7813: $07

jr_02A_7814:
    nop                                           ; $7814: $00
    ld e, h                                       ; $7815: $5C
    nop                                           ; $7816: $00
    nop                                           ; $7817: $00
    rst RST_20                                    ; $7818: $E7
    ld [bc], a                                    ; $7819: $02
    ld b, c                                       ; $781A: $41
    db $10                                        ; $781B: $10
    rst RST_38                                    ; $781C: $FF
    jr jr_02A_7814                                ; $781D: $18 $F5

    jr nz, jr_02A_7834                            ; $781F: $20 $13

    rrca                                          ; $7821: $0F
    ld bc, $007F                                  ; $7822: $01 $7F $00
    ld [hl], a                                    ; $7825: $77
    nop                                           ; $7826: $00
    db $FD                                        ; $7827: $FD
    ld b, b                                       ; $7828: $40
    ld [de], a                                    ; $7829: $12
    ld b, e                                       ; $782A: $43
    and b                                         ; $782B: $A0
    ldh a, [c]                                    ; $782C: $F2
    rrca                                          ; $782D: $0F
    ld [hl], a                                    ; $782E: $77
    ld [bc], a                                    ; $782F: $02
    db $ED                                        ; $7830: $ED
    ld b, c                                       ; $7831: $41
    ld h, d                                       ; $7832: $62
    ld b, d                                       ; $7833: $42

jr_02A_7834:
    ld a, a                                       ; $7834: $7F
    ldh a, [c]                                    ; $7835: $F2
    rrca                                          ; $7836: $0F
    rst RST_20                                    ; $7837: $E7
    ld [bc], a                                    ; $7838: $02
    rst RST_18                                    ; $7839: $DF
    ld b, c                                       ; $783A: $41
    ld de, $20FF                                  ; $783B: $11 $FF $20
    ld de, $0F61                                  ; $783E: $11 $61 $0F
    ld bc, $1C7E                                  ; $7841: $01 $7E $1C
    ld [bc], a                                    ; $7844: $02
    ld b, c                                       ; $7845: $41
    ld h, d                                       ; $7846: $62
    ld b, e                                       ; $7847: $43
    ldh a, [c]                                    ; $7848: $F2
    rrca                                          ; $7849: $0F
    ld [hl], e                                    ; $784A: $73
    or l                                          ; $784B: $B5
    nop                                           ; $784C: $00
    ld a, e                                       ; $784D: $7B
    nop                                           ; $784E: $00
    ld b, b                                       ; $784F: $40
    ld a, a                                       ; $7850: $7F
    db $10                                        ; $7851: $10
    ld [hl], a                                    ; $7852: $77
    nop                                           ; $7853: $00
    ldh [rNR42], a                                ; $7854: $E0 $21
    ld [de], a                                    ; $7856: $12
    rrca                                          ; $7857: $0F
    nop                                           ; $7858: $00
    rlca                                          ; $7859: $07
    ld b, b                                       ; $785A: $40
    ld e, h                                       ; $785B: $5C
    nop                                           ; $785C: $00
    nop                                           ; $785D: $00
    rst RST_20                                    ; $785E: $E7

jr_02A_785F:
    ld [bc], a                                    ; $785F: $02
    ld hl, $FF08                                  ; $7860: $21 $08 $FF
    jr jr_02A_785F                                ; $7863: $18 $FA

    db $10                                        ; $7865: $10
    dec bc                                        ; $7866: $0B
    rlca                                          ; $7867: $07
    rlca                                          ; $7868: $07
    ld bc, $007F                                  ; $7869: $01 $7F $00
    ld [hl], a                                    ; $786C: $77
    rst RST_38                                    ; $786D: $FF
    nop                                           ; $786E: $00
    jr nz, jr_02A_787B                            ; $786F: $20 $0A

    inc hl                                        ; $7871: $23
    ld d, b                                       ; $7872: $50
    and a                                         ; $7873: $A7
    rlca                                          ; $7874: $07
    ld [bc], a                                    ; $7875: $02
    ei                                            ; $7876: $FB
    pop bc                                        ; $7877: $C1
    rst RST_38                                    ; $7878: $FF
    rst RST_38                                    ; $7879: $FF
    rlca                                          ; $787A: $07

jr_02A_787B:
    dec b                                         ; $787B: $05
    ld [hl], b                                    ; $787C: $70
    ld [bc], a                                    ; $787D: $02
    ld hl, $32FE                                  ; $787E: $21 $FE $32
    ld [hl+], a                                   ; $7881: $22
    rst RST_38                                    ; $7882: $FF
    rlca                                          ; $7883: $07
    inc bc                                        ; $7884: $03
    sbc b                                         ; $7885: $98
    nop                                           ; $7886: $00
    ld [hl], a                                    ; $7887: $77
    cp $00                                        ; $7888: $FE $00
    jr nz, @+$0C                                  ; $788A: $20 $0A

    inc hl                                        ; $788C: $23
    rst RST_38                                    ; $788D: $FF

Call_02A_788E:
    rlca                                          ; $788E: $07
    db $FD                                        ; $788F: $FD
    ld [hl], b                                    ; $7890: $70
    rst RST_30                                    ; $7891: $F7
    nop                                           ; $7892: $00
    jr nz, @+$0B                                  ; $7893: $20 $09

    jr z, @+$09                                   ; $7895: $28 $07

    db $10                                        ; $7897: $10
    add hl, bc                                    ; $7898: $09
    rst RST_38                                    ; $7899: $FF
    rst RST_28                                    ; $789A: $EF
    rlca                                          ; $789B: $07
    rst RST_38                                    ; $789C: $FF
    ld a, [$237E]                                 ; $789D: $FA $7E $23
    rst RST_38                                    ; $78A0: $FF
    rlca                                          ; $78A1: $07
    ld bc, $3FCF                                  ; $78A2: $01 $CF $3F
    rst RST_08                                    ; $78A5: $CF
    ccf                                           ; $78A6: $3F
    rst RST_08                                    ; $78A7: $CF
    ccf                                           ; $78A8: $3F
    rst RST_08                                    ; $78A9: $CF
    ccf                                           ; $78AA: $3F
    rst RST_08                                    ; $78AB: $CF
    ccf                                           ; $78AC: $3F
    rst RST_08                                    ; $78AD: $CF
    ccf                                           ; $78AE: $3F
    rst RST_08                                    ; $78AF: $CF
    ccf                                           ; $78B0: $3F
    rst RST_08                                    ; $78B1: $CF
    ccf                                           ; $78B2: $3F
    rst RST_08                                    ; $78B3: $CF
    ccf                                           ; $78B4: $3F
    rst RST_08                                    ; $78B5: $CF
    ccf                                           ; $78B6: $3F
    rst RST_08                                    ; $78B7: $CF
    ccf                                           ; $78B8: $3F
    rst RST_08                                    ; $78B9: $CF
    ccf                                           ; $78BA: $3F
    rst RST_08                                    ; $78BB: $CF
    ccf                                           ; $78BC: $3F
    rst RST_08                                    ; $78BD: $CF
    ccf                                           ; $78BE: $3F
    rst RST_08                                    ; $78BF: $CF
    ccf                                           ; $78C0: $3F
    rst RST_08                                    ; $78C1: $CF
    ccf                                           ; $78C2: $3F
    nop                                           ; $78C3: $00
    nop                                           ; $78C4: $00
    ld de, $A511                                  ; $78C5: $11 $11 $A5
    nop                                           ; $78C8: $00
    sub b                                         ; $78C9: $90
    nop                                           ; $78CA: $00
    nop                                           ; $78CB: $00
    nop                                           ; $78CC: $00
    nop                                           ; $78CD: $00
    nop                                           ; $78CE: $00
    nop                                           ; $78CF: $00
    nop                                           ; $78D0: $00
    ld b, b                                       ; $78D1: $40
    nop                                           ; $78D2: $00
    add b                                         ; $78D3: $80
    ld a, [hl+]                                   ; $78D4: $2A
    db $E3                                        ; $78D5: $E3
    ld a, b                                       ; $78D6: $78
    nop                                           ; $78D7: $00
    nop                                           ; $78D8: $00
    db $E3                                        ; $78D9: $E3
    ld a, b                                       ; $78DA: $78
    nop                                           ; $78DB: $00
    nop                                           ; $78DC: $00
    nop                                           ; $78DD: $00
    nop                                           ; $78DE: $00
    nop                                           ; $78DF: $00
    nop                                           ; $78E0: $00
    ret nz                                        ; $78E1: $C0

    ret c                                         ; $78E2: $D8

    rst RST_38                                    ; $78E3: $FF
    ld a, b                                       ; $78E4: $78
    rst RST_38                                    ; $78E5: $FF
    rst RST_38                                    ; $78E6: $FF
    add hl, de                                    ; $78E7: $19
    ld a, c                                       ; $78E8: $79
    rst RST_38                                    ; $78E9: $FF
    rst RST_38                                    ; $78EA: $FF
    inc sp                                        ; $78EB: $33
    ld a, c                                       ; $78EC: $79
    rst RST_38                                    ; $78ED: $FF
    rst RST_38                                    ; $78EE: $FF
    ld d, b                                       ; $78EF: $50
    ld a, c                                       ; $78F0: $79
    rst RST_38                                    ; $78F1: $FF
    rst RST_38                                    ; $78F2: $FF
    rst RST_38                                    ; $78F3: $FF
    rst RST_38                                    ; $78F4: $FF
    ld [hl], b                                    ; $78F5: $70
    ld a, c                                       ; $78F6: $79
    rst RST_38                                    ; $78F7: $FF
    rst RST_38                                    ; $78F8: $FF
    ld a, d                                       ; $78F9: $7A
    ld a, c                                       ; $78FA: $79
    rst RST_38                                    ; $78FB: $FF
    rst RST_38                                    ; $78FC: $FF
    rst RST_38                                    ; $78FD: $FF
    rst RST_38                                    ; $78FE: $FF
    add b                                         ; $78FF: $80
    nop                                           ; $7900: $00
    nop                                           ; $7901: $00
    rst RST_38                                    ; $7902: $FF
    rst RST_38                                    ; $7903: $FF
    rst RST_38                                    ; $7904: $FF

Call_02A_7905:
    add hl, bc                                    ; $7905: $09
    ld a, c                                       ; $7906: $79
    nop                                           ; $7907: $00
    nop                                           ; $7908: $00
    dec b                                         ; $7909: $05
    nop                                           ; $790A: $00
    db $10                                        ; $790B: $10
    ld [bc], a                                    ; $790C: $02
    nop                                           ; $790D: $00
    jr jr_02A_7914                                ; $790E: $18 $04

    nop                                           ; $7910: $00
    jr z, jr_02A_7919                             ; $7911: $28 $06

    nop                                           ; $7913: $00

jr_02A_7914:
    jr nc, jr_02A_791E                            ; $7914: $30 $08

    nop                                           ; $7916: $00
    jr c, jr_02A_7923                             ; $7917: $38 $0A

jr_02A_7919:
    add b                                         ; $7919: $80
    nop                                           ; $791A: $00
    nop                                           ; $791B: $00
    rst RST_38                                    ; $791C: $FF
    rst RST_38                                    ; $791D: $FF

jr_02A_791E:
    rst RST_38                                    ; $791E: $FF
    inc hl                                        ; $791F: $23
    ld a, c                                       ; $7920: $79
    nop                                           ; $7921: $00
    nop                                           ; $7922: $00

jr_02A_7923:
    dec b                                         ; $7923: $05
    nop                                           ; $7924: $00
    db $10                                        ; $7925: $10
    ld [bc], a                                    ; $7926: $02
    nop                                           ; $7927: $00
    jr jr_02A_792E                                ; $7928: $18 $04

    nop                                           ; $792A: $00
    jr z, jr_02A_7933                             ; $792B: $28 $06

    nop                                           ; $792D: $00

jr_02A_792E:
    jr nc, jr_02A_7938                            ; $792E: $30 $08

    nop                                           ; $7930: $00
    jr c, jr_02A_793D                             ; $7931: $38 $0A

jr_02A_7933:
    add b                                         ; $7933: $80
    nop                                           ; $7934: $00
    nop                                           ; $7935: $00
    rst RST_38                                    ; $7936: $FF
    rst RST_38                                    ; $7937: $FF

jr_02A_7938:
    rst RST_38                                    ; $7938: $FF
    dec a                                         ; $7939: $3D
    ld a, c                                       ; $793A: $79
    nop                                           ; $793B: $00
    nop                                           ; $793C: $00

jr_02A_793D:
    ld b, $00                                     ; $793D: $06 $00
    inc c                                         ; $793F: $0C
    ld [bc], a                                    ; $7940: $02
    nop                                           ; $7941: $00
    inc d                                         ; $7942: $14
    inc b                                         ; $7943: $04
    nop                                           ; $7944: $00
    inc e                                         ; $7945: $1C
    ld b, $00                                     ; $7946: $06 $00
    inc l                                         ; $7948: $2C
    ld [$3400], sp                                ; $7949: $08 $00 $34
    ld a, [bc]                                    ; $794C: $0A
    nop                                           ; $794D: $00
    inc a                                         ; $794E: $3C
    inc c                                         ; $794F: $0C
    add b                                         ; $7950: $80
    nop                                           ; $7951: $00
    nop                                           ; $7952: $00
    rst RST_38                                    ; $7953: $FF
    rst RST_38                                    ; $7954: $FF
    rst RST_38                                    ; $7955: $FF
    ld e, d                                       ; $7956: $5A
    ld a, c                                       ; $7957: $79
    nop                                           ; $7958: $00
    nop                                           ; $7959: $00
    rlca                                          ; $795A: $07
    nop                                           ; $795B: $00
    ld [$0002], sp                                ; $795C: $08 $02 $00
    db $10                                        ; $795F: $10
    inc b                                         ; $7960: $04
    nop                                           ; $7961: $00
    jr jr_02A_796A                                ; $7962: $18 $06

    nop                                           ; $7964: $00
    jr z, jr_02A_796F                             ; $7965: $28 $08

    nop                                           ; $7967: $00
    jr nc, jr_02A_7974                            ; $7968: $30 $0A

jr_02A_796A:
    nop                                           ; $796A: $00
    jr c, jr_02A_7979                             ; $796B: $38 $0C

    nop                                           ; $796D: $00
    ld b, b                                       ; $796E: $40

jr_02A_796F:
    ld c, $80                                     ; $796F: $0E $80
    nop                                           ; $7971: $00
    nop                                           ; $7972: $00
    rst RST_38                                    ; $7973: $FF

jr_02A_7974:
    rst RST_38                                    ; $7974: $FF
    rst RST_38                                    ; $7975: $FF
    add h                                         ; $7976: $84
    ld a, c                                       ; $7977: $79
    nop                                           ; $7978: $00

jr_02A_7979:
    db $10                                        ; $7979: $10
    and b                                         ; $797A: $A0
    nop                                           ; $797B: $00
    nop                                           ; $797C: $00
    rst RST_38                                    ; $797D: $FF
    rst RST_38                                    ; $797E: $FF
    rst RST_38                                    ; $797F: $FF
    add h                                         ; $7980: $84
    ld a, c                                       ; $7981: $79
    ld [$0910], sp                                ; $7982: $08 $10 $09
    nop                                           ; $7985: $00
    nop                                           ; $7986: $00
    nop                                           ; $7987: $00
    stop                                          ; $7988: $10 $00
    nop                                           ; $798A: $00
    jr nz, jr_02A_798D                            ; $798B: $20 $00

jr_02A_798D:
    nop                                           ; $798D: $00
    jr nc, jr_02A_7990                            ; $798E: $30 $00

jr_02A_7990:
    nop                                           ; $7990: $00
    ld b, b                                       ; $7991: $40
    nop                                           ; $7992: $00
    nop                                           ; $7993: $00
    ld d, b                                       ; $7994: $50
    nop                                           ; $7995: $00
    nop                                           ; $7996: $00
    ld h, b                                       ; $7997: $60
    nop                                           ; $7998: $00
    nop                                           ; $7999: $00
    ld [hl], b                                    ; $799A: $70
    nop                                           ; $799B: $00
    nop                                           ; $799C: $00
    add b                                         ; $799D: $80
    nop                                           ; $799E: $00
    nop                                           ; $799F: $00
    rst RST_38                                    ; $79A0: $FF
    rst RST_38                                    ; $79A1: $FF
    rst RST_38                                    ; $79A2: $FF
    rst RST_38                                    ; $79A3: $FF
    rst RST_38                                    ; $79A4: $FF
    rst RST_38                                    ; $79A5: $FF
    rst RST_38                                    ; $79A6: $FF
    rst RST_38                                    ; $79A7: $FF
    rst RST_38                                    ; $79A8: $FF
    rst RST_38                                    ; $79A9: $FF
    rst RST_38                                    ; $79AA: $FF
    rst RST_38                                    ; $79AB: $FF
    rst RST_38                                    ; $79AC: $FF
    rst RST_38                                    ; $79AD: $FF
    rst RST_38                                    ; $79AE: $FF
    rst RST_38                                    ; $79AF: $FF
    rst RST_38                                    ; $79B0: $FF
    rst RST_38                                    ; $79B1: $FF
    rst RST_38                                    ; $79B2: $FF
    rst RST_38                                    ; $79B3: $FF
    rst RST_38                                    ; $79B4: $FF
    rst RST_38                                    ; $79B5: $FF
    rst RST_38                                    ; $79B6: $FF
    rst RST_38                                    ; $79B7: $FF
    rst RST_38                                    ; $79B8: $FF
    rst RST_38                                    ; $79B9: $FF
    rst RST_38                                    ; $79BA: $FF
    rst RST_38                                    ; $79BB: $FF
    rst RST_38                                    ; $79BC: $FF
    rst RST_38                                    ; $79BD: $FF
    rst RST_38                                    ; $79BE: $FF
    rst RST_38                                    ; $79BF: $FF
    rst RST_38                                    ; $79C0: $FF
    rst RST_38                                    ; $79C1: $FF
    rst RST_38                                    ; $79C2: $FF
    rst RST_38                                    ; $79C3: $FF
    rst RST_38                                    ; $79C4: $FF
    rst RST_38                                    ; $79C5: $FF
    rst RST_38                                    ; $79C6: $FF
    rst RST_38                                    ; $79C7: $FF
    rst RST_38                                    ; $79C8: $FF
    rst RST_38                                    ; $79C9: $FF
    rst RST_38                                    ; $79CA: $FF
    rst RST_38                                    ; $79CB: $FF
    rst RST_38                                    ; $79CC: $FF
    rst RST_38                                    ; $79CD: $FF
    rst RST_38                                    ; $79CE: $FF
    rst RST_38                                    ; $79CF: $FF
    rst RST_38                                    ; $79D0: $FF
    rst RST_38                                    ; $79D1: $FF
    rst RST_38                                    ; $79D2: $FF
    rst RST_38                                    ; $79D3: $FF
    rst RST_38                                    ; $79D4: $FF
    rst RST_38                                    ; $79D5: $FF
    rst RST_38                                    ; $79D6: $FF
    rst RST_38                                    ; $79D7: $FF
    rst RST_38                                    ; $79D8: $FF
    rst RST_38                                    ; $79D9: $FF
    rst RST_38                                    ; $79DA: $FF
    rst RST_38                                    ; $79DB: $FF
    rst RST_38                                    ; $79DC: $FF
    rst RST_38                                    ; $79DD: $FF
    rst RST_38                                    ; $79DE: $FF
    rst RST_38                                    ; $79DF: $FF
    rst RST_38                                    ; $79E0: $FF
    rst RST_38                                    ; $79E1: $FF
    rst RST_38                                    ; $79E2: $FF
    rst RST_38                                    ; $79E3: $FF
    rst RST_38                                    ; $79E4: $FF
    rst RST_38                                    ; $79E5: $FF
    rst RST_38                                    ; $79E6: $FF
    rst RST_38                                    ; $79E7: $FF
    rst RST_38                                    ; $79E8: $FF
    rst RST_38                                    ; $79E9: $FF
    rst RST_38                                    ; $79EA: $FF
    rst RST_38                                    ; $79EB: $FF
    rst RST_38                                    ; $79EC: $FF
    rst RST_38                                    ; $79ED: $FF
    rst RST_38                                    ; $79EE: $FF
    rst RST_38                                    ; $79EF: $FF
    rst RST_38                                    ; $79F0: $FF
    rst RST_38                                    ; $79F1: $FF
    rst RST_38                                    ; $79F2: $FF
    rst RST_38                                    ; $79F3: $FF
    rst RST_38                                    ; $79F4: $FF
    rst RST_38                                    ; $79F5: $FF
    rst RST_38                                    ; $79F6: $FF
    rst RST_38                                    ; $79F7: $FF
    rst RST_38                                    ; $79F8: $FF
    rst RST_38                                    ; $79F9: $FF
    rst RST_38                                    ; $79FA: $FF
    rst RST_38                                    ; $79FB: $FF
    rst RST_38                                    ; $79FC: $FF
    rst RST_38                                    ; $79FD: $FF
    rst RST_38                                    ; $79FE: $FF
    rst RST_38                                    ; $79FF: $FF
    rst RST_38                                    ; $7A00: $FF
    rst RST_38                                    ; $7A01: $FF
    rst RST_38                                    ; $7A02: $FF
    rst RST_38                                    ; $7A03: $FF
    rst RST_38                                    ; $7A04: $FF
    rst RST_38                                    ; $7A05: $FF
    rst RST_38                                    ; $7A06: $FF
    rst RST_38                                    ; $7A07: $FF
    rst RST_38                                    ; $7A08: $FF
    rst RST_38                                    ; $7A09: $FF
    rst RST_38                                    ; $7A0A: $FF
    rst RST_38                                    ; $7A0B: $FF
    rst RST_38                                    ; $7A0C: $FF
    rst RST_38                                    ; $7A0D: $FF
    rst RST_38                                    ; $7A0E: $FF
    rst RST_38                                    ; $7A0F: $FF
    rst RST_38                                    ; $7A10: $FF
    rst RST_38                                    ; $7A11: $FF
    rst RST_38                                    ; $7A12: $FF
    rst RST_38                                    ; $7A13: $FF
    rst RST_38                                    ; $7A14: $FF
    rst RST_38                                    ; $7A15: $FF
    rst RST_38                                    ; $7A16: $FF
    rst RST_38                                    ; $7A17: $FF
    rst RST_38                                    ; $7A18: $FF
    rst RST_38                                    ; $7A19: $FF
    rst RST_38                                    ; $7A1A: $FF
    rst RST_38                                    ; $7A1B: $FF
    rst RST_38                                    ; $7A1C: $FF
    rst RST_38                                    ; $7A1D: $FF
    rst RST_38                                    ; $7A1E: $FF
    rst RST_38                                    ; $7A1F: $FF
    rst RST_38                                    ; $7A20: $FF
    rst RST_38                                    ; $7A21: $FF
    rst RST_38                                    ; $7A22: $FF
    rst RST_38                                    ; $7A23: $FF
    rst RST_38                                    ; $7A24: $FF
    rst RST_38                                    ; $7A25: $FF
    rst RST_38                                    ; $7A26: $FF
    rst RST_38                                    ; $7A27: $FF
    rst RST_38                                    ; $7A28: $FF
    rst RST_38                                    ; $7A29: $FF
    rst RST_38                                    ; $7A2A: $FF
    rst RST_38                                    ; $7A2B: $FF
    rst RST_38                                    ; $7A2C: $FF
    rst RST_38                                    ; $7A2D: $FF
    rst RST_38                                    ; $7A2E: $FF
    rst RST_38                                    ; $7A2F: $FF
    rst RST_38                                    ; $7A30: $FF
    rst RST_38                                    ; $7A31: $FF
    rst RST_38                                    ; $7A32: $FF
    rst RST_38                                    ; $7A33: $FF
    rst RST_38                                    ; $7A34: $FF
    rst RST_38                                    ; $7A35: $FF
    rst RST_38                                    ; $7A36: $FF
    rst RST_38                                    ; $7A37: $FF
    rst RST_38                                    ; $7A38: $FF
    rst RST_38                                    ; $7A39: $FF
    rst RST_38                                    ; $7A3A: $FF
    rst RST_38                                    ; $7A3B: $FF
    rst RST_38                                    ; $7A3C: $FF
    rst RST_38                                    ; $7A3D: $FF
    rst RST_38                                    ; $7A3E: $FF
    rst RST_38                                    ; $7A3F: $FF
    rst RST_38                                    ; $7A40: $FF
    rst RST_38                                    ; $7A41: $FF
    rst RST_38                                    ; $7A42: $FF
    rst RST_38                                    ; $7A43: $FF
    rst RST_38                                    ; $7A44: $FF
    rst RST_38                                    ; $7A45: $FF
    rst RST_38                                    ; $7A46: $FF
    rst RST_38                                    ; $7A47: $FF
    rst RST_38                                    ; $7A48: $FF
    rst RST_38                                    ; $7A49: $FF
    rst RST_38                                    ; $7A4A: $FF
    rst RST_38                                    ; $7A4B: $FF
    rst RST_38                                    ; $7A4C: $FF
    rst RST_38                                    ; $7A4D: $FF
    rst RST_38                                    ; $7A4E: $FF
    rst RST_38                                    ; $7A4F: $FF
    rst RST_38                                    ; $7A50: $FF
    rst RST_38                                    ; $7A51: $FF
    rst RST_38                                    ; $7A52: $FF
    rst RST_38                                    ; $7A53: $FF
    rst RST_38                                    ; $7A54: $FF
    rst RST_38                                    ; $7A55: $FF
    rst RST_38                                    ; $7A56: $FF
    rst RST_38                                    ; $7A57: $FF
    rst RST_38                                    ; $7A58: $FF
    rst RST_38                                    ; $7A59: $FF
    rst RST_38                                    ; $7A5A: $FF
    rst RST_38                                    ; $7A5B: $FF
    rst RST_38                                    ; $7A5C: $FF
    rst RST_38                                    ; $7A5D: $FF
    rst RST_38                                    ; $7A5E: $FF
    rst RST_38                                    ; $7A5F: $FF
    rst RST_38                                    ; $7A60: $FF
    rst RST_38                                    ; $7A61: $FF
    rst RST_38                                    ; $7A62: $FF
    rst RST_38                                    ; $7A63: $FF
    rst RST_38                                    ; $7A64: $FF
    rst RST_38                                    ; $7A65: $FF
    rst RST_38                                    ; $7A66: $FF
    rst RST_38                                    ; $7A67: $FF
    rst RST_38                                    ; $7A68: $FF
    rst RST_38                                    ; $7A69: $FF
    rst RST_38                                    ; $7A6A: $FF
    rst RST_38                                    ; $7A6B: $FF
    rst RST_38                                    ; $7A6C: $FF
    rst RST_38                                    ; $7A6D: $FF
    rst RST_38                                    ; $7A6E: $FF
    rst RST_38                                    ; $7A6F: $FF
    rst RST_38                                    ; $7A70: $FF
    rst RST_38                                    ; $7A71: $FF
    rst RST_38                                    ; $7A72: $FF
    rst RST_38                                    ; $7A73: $FF
    rst RST_38                                    ; $7A74: $FF
    rst RST_38                                    ; $7A75: $FF
    rst RST_38                                    ; $7A76: $FF
    rst RST_38                                    ; $7A77: $FF
    rst RST_38                                    ; $7A78: $FF
    rst RST_38                                    ; $7A79: $FF
    rst RST_38                                    ; $7A7A: $FF
    rst RST_38                                    ; $7A7B: $FF
    rst RST_38                                    ; $7A7C: $FF
    rst RST_38                                    ; $7A7D: $FF
    rst RST_38                                    ; $7A7E: $FF
    rst RST_38                                    ; $7A7F: $FF
    rst RST_38                                    ; $7A80: $FF
    rst RST_38                                    ; $7A81: $FF
    rst RST_38                                    ; $7A82: $FF
    rst RST_38                                    ; $7A83: $FF
    rst RST_38                                    ; $7A84: $FF
    rst RST_38                                    ; $7A85: $FF
    rst RST_38                                    ; $7A86: $FF
    rst RST_38                                    ; $7A87: $FF
    rst RST_38                                    ; $7A88: $FF
    rst RST_38                                    ; $7A89: $FF
    rst RST_38                                    ; $7A8A: $FF
    rst RST_38                                    ; $7A8B: $FF
    rst RST_38                                    ; $7A8C: $FF
    rst RST_38                                    ; $7A8D: $FF
    rst RST_38                                    ; $7A8E: $FF
    rst RST_38                                    ; $7A8F: $FF
    rst RST_38                                    ; $7A90: $FF
    rst RST_38                                    ; $7A91: $FF
    rst RST_38                                    ; $7A92: $FF
    rst RST_38                                    ; $7A93: $FF
    rst RST_38                                    ; $7A94: $FF
    rst RST_38                                    ; $7A95: $FF
    rst RST_38                                    ; $7A96: $FF
    rst RST_38                                    ; $7A97: $FF
    rst RST_38                                    ; $7A98: $FF
    rst RST_38                                    ; $7A99: $FF
    rst RST_38                                    ; $7A9A: $FF
    rst RST_38                                    ; $7A9B: $FF
    rst RST_38                                    ; $7A9C: $FF
    rst RST_38                                    ; $7A9D: $FF
    rst RST_38                                    ; $7A9E: $FF
    rst RST_38                                    ; $7A9F: $FF
    rst RST_38                                    ; $7AA0: $FF
    rst RST_38                                    ; $7AA1: $FF
    rst RST_38                                    ; $7AA2: $FF
    rst RST_38                                    ; $7AA3: $FF
    rst RST_38                                    ; $7AA4: $FF
    rst RST_38                                    ; $7AA5: $FF
    rst RST_38                                    ; $7AA6: $FF
    rst RST_38                                    ; $7AA7: $FF
    rst RST_38                                    ; $7AA8: $FF
    rst RST_38                                    ; $7AA9: $FF
    rst RST_38                                    ; $7AAA: $FF
    rst RST_38                                    ; $7AAB: $FF
    rst RST_38                                    ; $7AAC: $FF
    rst RST_38                                    ; $7AAD: $FF
    rst RST_38                                    ; $7AAE: $FF
    rst RST_38                                    ; $7AAF: $FF
    rst RST_38                                    ; $7AB0: $FF
    rst RST_38                                    ; $7AB1: $FF
    rst RST_38                                    ; $7AB2: $FF
    rst RST_38                                    ; $7AB3: $FF
    rst RST_38                                    ; $7AB4: $FF
    rst RST_38                                    ; $7AB5: $FF
    rst RST_38                                    ; $7AB6: $FF
    rst RST_38                                    ; $7AB7: $FF
    rst RST_38                                    ; $7AB8: $FF
    rst RST_38                                    ; $7AB9: $FF
    rst RST_38                                    ; $7ABA: $FF
    rst RST_38                                    ; $7ABB: $FF
    rst RST_38                                    ; $7ABC: $FF
    rst RST_38                                    ; $7ABD: $FF
    rst RST_38                                    ; $7ABE: $FF
    rst RST_38                                    ; $7ABF: $FF
    rst RST_38                                    ; $7AC0: $FF
    rst RST_38                                    ; $7AC1: $FF
    rst RST_38                                    ; $7AC2: $FF
    rst RST_38                                    ; $7AC3: $FF
    rst RST_38                                    ; $7AC4: $FF
    rst RST_38                                    ; $7AC5: $FF
    rst RST_38                                    ; $7AC6: $FF
    rst RST_38                                    ; $7AC7: $FF
    rst RST_38                                    ; $7AC8: $FF
    rst RST_38                                    ; $7AC9: $FF
    rst RST_38                                    ; $7ACA: $FF
    rst RST_38                                    ; $7ACB: $FF
    rst RST_38                                    ; $7ACC: $FF
    rst RST_38                                    ; $7ACD: $FF
    rst RST_38                                    ; $7ACE: $FF
    rst RST_38                                    ; $7ACF: $FF
    rst RST_38                                    ; $7AD0: $FF
    rst RST_38                                    ; $7AD1: $FF
    rst RST_38                                    ; $7AD2: $FF
    rst RST_38                                    ; $7AD3: $FF
    rst RST_38                                    ; $7AD4: $FF
    rst RST_38                                    ; $7AD5: $FF
    rst RST_38                                    ; $7AD6: $FF
    rst RST_38                                    ; $7AD7: $FF
    rst RST_38                                    ; $7AD8: $FF
    rst RST_38                                    ; $7AD9: $FF
    rst RST_38                                    ; $7ADA: $FF
    rst RST_38                                    ; $7ADB: $FF
    rst RST_38                                    ; $7ADC: $FF
    rst RST_38                                    ; $7ADD: $FF
    rst RST_38                                    ; $7ADE: $FF
    rst RST_38                                    ; $7ADF: $FF
    rst RST_38                                    ; $7AE0: $FF
    rst RST_38                                    ; $7AE1: $FF
    rst RST_38                                    ; $7AE2: $FF
    rst RST_38                                    ; $7AE3: $FF
    rst RST_38                                    ; $7AE4: $FF
    rst RST_38                                    ; $7AE5: $FF
    rst RST_38                                    ; $7AE6: $FF
    rst RST_38                                    ; $7AE7: $FF
    rst RST_38                                    ; $7AE8: $FF
    rst RST_38                                    ; $7AE9: $FF
    rst RST_38                                    ; $7AEA: $FF
    rst RST_38                                    ; $7AEB: $FF
    rst RST_38                                    ; $7AEC: $FF
    rst RST_38                                    ; $7AED: $FF
    rst RST_38                                    ; $7AEE: $FF
    rst RST_38                                    ; $7AEF: $FF
    rst RST_38                                    ; $7AF0: $FF
    rst RST_38                                    ; $7AF1: $FF
    rst RST_38                                    ; $7AF2: $FF
    rst RST_38                                    ; $7AF3: $FF
    rst RST_38                                    ; $7AF4: $FF
    rst RST_38                                    ; $7AF5: $FF
    rst RST_38                                    ; $7AF6: $FF
    rst RST_38                                    ; $7AF7: $FF
    rst RST_38                                    ; $7AF8: $FF
    rst RST_38                                    ; $7AF9: $FF
    rst RST_38                                    ; $7AFA: $FF
    rst RST_38                                    ; $7AFB: $FF
    rst RST_38                                    ; $7AFC: $FF
    rst RST_38                                    ; $7AFD: $FF
    rst RST_38                                    ; $7AFE: $FF
    rst RST_38                                    ; $7AFF: $FF
    rst RST_38                                    ; $7B00: $FF
    rst RST_38                                    ; $7B01: $FF
    rst RST_38                                    ; $7B02: $FF
    rst RST_38                                    ; $7B03: $FF
    rst RST_38                                    ; $7B04: $FF
    rst RST_38                                    ; $7B05: $FF
    rst RST_38                                    ; $7B06: $FF
    rst RST_38                                    ; $7B07: $FF
    rst RST_38                                    ; $7B08: $FF
    rst RST_38                                    ; $7B09: $FF
    rst RST_38                                    ; $7B0A: $FF
    rst RST_38                                    ; $7B0B: $FF
    rst RST_38                                    ; $7B0C: $FF
    rst RST_38                                    ; $7B0D: $FF
    rst RST_38                                    ; $7B0E: $FF
    rst RST_38                                    ; $7B0F: $FF
    rst RST_38                                    ; $7B10: $FF
    rst RST_38                                    ; $7B11: $FF
    rst RST_38                                    ; $7B12: $FF
    rst RST_38                                    ; $7B13: $FF
    rst RST_38                                    ; $7B14: $FF
    rst RST_38                                    ; $7B15: $FF
    rst RST_38                                    ; $7B16: $FF
    rst RST_38                                    ; $7B17: $FF
    rst RST_38                                    ; $7B18: $FF
    rst RST_38                                    ; $7B19: $FF
    rst RST_38                                    ; $7B1A: $FF
    rst RST_38                                    ; $7B1B: $FF
    rst RST_38                                    ; $7B1C: $FF
    rst RST_38                                    ; $7B1D: $FF
    rst RST_38                                    ; $7B1E: $FF
    rst RST_38                                    ; $7B1F: $FF
    rst RST_38                                    ; $7B20: $FF
    rst RST_38                                    ; $7B21: $FF
    rst RST_38                                    ; $7B22: $FF
    rst RST_38                                    ; $7B23: $FF
    rst RST_38                                    ; $7B24: $FF
    rst RST_38                                    ; $7B25: $FF
    rst RST_38                                    ; $7B26: $FF
    rst RST_38                                    ; $7B27: $FF
    rst RST_38                                    ; $7B28: $FF
    rst RST_38                                    ; $7B29: $FF
    rst RST_38                                    ; $7B2A: $FF
    rst RST_38                                    ; $7B2B: $FF
    rst RST_38                                    ; $7B2C: $FF
    rst RST_38                                    ; $7B2D: $FF
    rst RST_38                                    ; $7B2E: $FF
    rst RST_38                                    ; $7B2F: $FF
    rst RST_38                                    ; $7B30: $FF
    rst RST_38                                    ; $7B31: $FF
    rst RST_38                                    ; $7B32: $FF
    rst RST_38                                    ; $7B33: $FF
    rst RST_38                                    ; $7B34: $FF
    rst RST_38                                    ; $7B35: $FF
    rst RST_38                                    ; $7B36: $FF
    rst RST_38                                    ; $7B37: $FF
    rst RST_38                                    ; $7B38: $FF
    rst RST_38                                    ; $7B39: $FF
    rst RST_38                                    ; $7B3A: $FF
    rst RST_38                                    ; $7B3B: $FF
    rst RST_38                                    ; $7B3C: $FF
    rst RST_38                                    ; $7B3D: $FF
    rst RST_38                                    ; $7B3E: $FF
    rst RST_38                                    ; $7B3F: $FF
    rst RST_38                                    ; $7B40: $FF
    rst RST_38                                    ; $7B41: $FF
    rst RST_38                                    ; $7B42: $FF
    rst RST_38                                    ; $7B43: $FF
    rst RST_38                                    ; $7B44: $FF
    rst RST_38                                    ; $7B45: $FF
    rst RST_38                                    ; $7B46: $FF
    rst RST_38                                    ; $7B47: $FF
    rst RST_38                                    ; $7B48: $FF
    rst RST_38                                    ; $7B49: $FF
    rst RST_38                                    ; $7B4A: $FF
    rst RST_38                                    ; $7B4B: $FF
    rst RST_38                                    ; $7B4C: $FF
    rst RST_38                                    ; $7B4D: $FF
    rst RST_38                                    ; $7B4E: $FF
    rst RST_38                                    ; $7B4F: $FF
    rst RST_38                                    ; $7B50: $FF
    rst RST_38                                    ; $7B51: $FF
    rst RST_38                                    ; $7B52: $FF
    rst RST_38                                    ; $7B53: $FF
    rst RST_38                                    ; $7B54: $FF
    rst RST_38                                    ; $7B55: $FF
    rst RST_38                                    ; $7B56: $FF
    rst RST_38                                    ; $7B57: $FF
    rst RST_38                                    ; $7B58: $FF
    rst RST_38                                    ; $7B59: $FF
    rst RST_38                                    ; $7B5A: $FF
    rst RST_38                                    ; $7B5B: $FF
    rst RST_38                                    ; $7B5C: $FF
    rst RST_38                                    ; $7B5D: $FF
    rst RST_38                                    ; $7B5E: $FF
    rst RST_38                                    ; $7B5F: $FF
    rst RST_38                                    ; $7B60: $FF
    rst RST_38                                    ; $7B61: $FF
    rst RST_38                                    ; $7B62: $FF
    rst RST_38                                    ; $7B63: $FF
    rst RST_38                                    ; $7B64: $FF
    rst RST_38                                    ; $7B65: $FF
    rst RST_38                                    ; $7B66: $FF
    rst RST_38                                    ; $7B67: $FF
    rst RST_38                                    ; $7B68: $FF
    rst RST_38                                    ; $7B69: $FF
    rst RST_38                                    ; $7B6A: $FF
    rst RST_38                                    ; $7B6B: $FF
    rst RST_38                                    ; $7B6C: $FF
    rst RST_38                                    ; $7B6D: $FF
    rst RST_38                                    ; $7B6E: $FF
    rst RST_38                                    ; $7B6F: $FF
    rst RST_38                                    ; $7B70: $FF
    rst RST_38                                    ; $7B71: $FF
    rst RST_38                                    ; $7B72: $FF
    rst RST_38                                    ; $7B73: $FF
    rst RST_38                                    ; $7B74: $FF
    rst RST_38                                    ; $7B75: $FF
    rst RST_38                                    ; $7B76: $FF
    rst RST_38                                    ; $7B77: $FF
    rst RST_38                                    ; $7B78: $FF
    rst RST_38                                    ; $7B79: $FF
    rst RST_38                                    ; $7B7A: $FF
    rst RST_38                                    ; $7B7B: $FF
    rst RST_38                                    ; $7B7C: $FF
    rst RST_38                                    ; $7B7D: $FF
    rst RST_38                                    ; $7B7E: $FF
    rst RST_38                                    ; $7B7F: $FF
    rst RST_38                                    ; $7B80: $FF
    rst RST_38                                    ; $7B81: $FF
    rst RST_38                                    ; $7B82: $FF
    rst RST_38                                    ; $7B83: $FF
    rst RST_38                                    ; $7B84: $FF
    rst RST_38                                    ; $7B85: $FF
    rst RST_38                                    ; $7B86: $FF
    rst RST_38                                    ; $7B87: $FF
    rst RST_38                                    ; $7B88: $FF
    rst RST_38                                    ; $7B89: $FF
    rst RST_38                                    ; $7B8A: $FF
    rst RST_38                                    ; $7B8B: $FF
    rst RST_38                                    ; $7B8C: $FF
    rst RST_38                                    ; $7B8D: $FF
    rst RST_38                                    ; $7B8E: $FF
    rst RST_38                                    ; $7B8F: $FF
    rst RST_38                                    ; $7B90: $FF
    rst RST_38                                    ; $7B91: $FF
    rst RST_38                                    ; $7B92: $FF
    rst RST_38                                    ; $7B93: $FF
    rst RST_38                                    ; $7B94: $FF
    rst RST_38                                    ; $7B95: $FF
    rst RST_38                                    ; $7B96: $FF
    rst RST_38                                    ; $7B97: $FF
    rst RST_38                                    ; $7B98: $FF
    rst RST_38                                    ; $7B99: $FF
    rst RST_38                                    ; $7B9A: $FF
    rst RST_38                                    ; $7B9B: $FF
    rst RST_38                                    ; $7B9C: $FF
    rst RST_38                                    ; $7B9D: $FF
    rst RST_38                                    ; $7B9E: $FF
    rst RST_38                                    ; $7B9F: $FF
    rst RST_38                                    ; $7BA0: $FF
    rst RST_38                                    ; $7BA1: $FF
    rst RST_38                                    ; $7BA2: $FF
    rst RST_38                                    ; $7BA3: $FF
    rst RST_38                                    ; $7BA4: $FF
    rst RST_38                                    ; $7BA5: $FF
    rst RST_38                                    ; $7BA6: $FF
    rst RST_38                                    ; $7BA7: $FF
    rst RST_38                                    ; $7BA8: $FF
    rst RST_38                                    ; $7BA9: $FF
    rst RST_38                                    ; $7BAA: $FF
    rst RST_38                                    ; $7BAB: $FF
    rst RST_38                                    ; $7BAC: $FF
    rst RST_38                                    ; $7BAD: $FF
    rst RST_38                                    ; $7BAE: $FF
    rst RST_38                                    ; $7BAF: $FF
    rst RST_38                                    ; $7BB0: $FF
    rst RST_38                                    ; $7BB1: $FF
    rst RST_38                                    ; $7BB2: $FF
    rst RST_38                                    ; $7BB3: $FF
    rst RST_38                                    ; $7BB4: $FF
    rst RST_38                                    ; $7BB5: $FF
    rst RST_38                                    ; $7BB6: $FF
    rst RST_38                                    ; $7BB7: $FF
    rst RST_38                                    ; $7BB8: $FF
    rst RST_38                                    ; $7BB9: $FF
    rst RST_38                                    ; $7BBA: $FF
    rst RST_38                                    ; $7BBB: $FF
    rst RST_38                                    ; $7BBC: $FF
    rst RST_38                                    ; $7BBD: $FF
    rst RST_38                                    ; $7BBE: $FF
    rst RST_38                                    ; $7BBF: $FF
    rst RST_38                                    ; $7BC0: $FF
    rst RST_38                                    ; $7BC1: $FF
    rst RST_38                                    ; $7BC2: $FF
    rst RST_38                                    ; $7BC3: $FF
    rst RST_38                                    ; $7BC4: $FF
    rst RST_38                                    ; $7BC5: $FF
    rst RST_38                                    ; $7BC6: $FF
    rst RST_38                                    ; $7BC7: $FF
    rst RST_38                                    ; $7BC8: $FF
    rst RST_38                                    ; $7BC9: $FF
    rst RST_38                                    ; $7BCA: $FF
    rst RST_38                                    ; $7BCB: $FF
    rst RST_38                                    ; $7BCC: $FF
    rst RST_38                                    ; $7BCD: $FF
    rst RST_38                                    ; $7BCE: $FF
    rst RST_38                                    ; $7BCF: $FF
    rst RST_38                                    ; $7BD0: $FF
    rst RST_38                                    ; $7BD1: $FF
    rst RST_38                                    ; $7BD2: $FF
    rst RST_38                                    ; $7BD3: $FF
    rst RST_38                                    ; $7BD4: $FF
    rst RST_38                                    ; $7BD5: $FF
    rst RST_38                                    ; $7BD6: $FF
    rst RST_38                                    ; $7BD7: $FF
    rst RST_38                                    ; $7BD8: $FF
    rst RST_38                                    ; $7BD9: $FF
    rst RST_38                                    ; $7BDA: $FF
    rst RST_38                                    ; $7BDB: $FF
    rst RST_38                                    ; $7BDC: $FF
    rst RST_38                                    ; $7BDD: $FF
    rst RST_38                                    ; $7BDE: $FF
    rst RST_38                                    ; $7BDF: $FF
    rst RST_38                                    ; $7BE0: $FF
    rst RST_38                                    ; $7BE1: $FF
    rst RST_38                                    ; $7BE2: $FF
    rst RST_38                                    ; $7BE3: $FF
    rst RST_38                                    ; $7BE4: $FF
    rst RST_38                                    ; $7BE5: $FF
    rst RST_38                                    ; $7BE6: $FF
    rst RST_38                                    ; $7BE7: $FF
    rst RST_38                                    ; $7BE8: $FF
    rst RST_38                                    ; $7BE9: $FF
    rst RST_38                                    ; $7BEA: $FF
    rst RST_38                                    ; $7BEB: $FF
    rst RST_38                                    ; $7BEC: $FF
    rst RST_38                                    ; $7BED: $FF
    rst RST_38                                    ; $7BEE: $FF
    rst RST_38                                    ; $7BEF: $FF
    rst RST_38                                    ; $7BF0: $FF
    rst RST_38                                    ; $7BF1: $FF
    rst RST_38                                    ; $7BF2: $FF
    rst RST_38                                    ; $7BF3: $FF
    rst RST_38                                    ; $7BF4: $FF
    rst RST_38                                    ; $7BF5: $FF
    rst RST_38                                    ; $7BF6: $FF
    rst RST_38                                    ; $7BF7: $FF
    rst RST_38                                    ; $7BF8: $FF
    rst RST_38                                    ; $7BF9: $FF
    rst RST_38                                    ; $7BFA: $FF
    rst RST_38                                    ; $7BFB: $FF
    rst RST_38                                    ; $7BFC: $FF
    rst RST_38                                    ; $7BFD: $FF
    rst RST_38                                    ; $7BFE: $FF
    rst RST_38                                    ; $7BFF: $FF
    rst RST_38                                    ; $7C00: $FF
    rst RST_38                                    ; $7C01: $FF
    rst RST_38                                    ; $7C02: $FF
    rst RST_38                                    ; $7C03: $FF
    rst RST_38                                    ; $7C04: $FF
    rst RST_38                                    ; $7C05: $FF
    rst RST_38                                    ; $7C06: $FF
    rst RST_38                                    ; $7C07: $FF
    rst RST_38                                    ; $7C08: $FF
    rst RST_38                                    ; $7C09: $FF
    rst RST_38                                    ; $7C0A: $FF
    rst RST_38                                    ; $7C0B: $FF
    rst RST_38                                    ; $7C0C: $FF
    rst RST_38                                    ; $7C0D: $FF
    rst RST_38                                    ; $7C0E: $FF
    rst RST_38                                    ; $7C0F: $FF
    rst RST_38                                    ; $7C10: $FF
    rst RST_38                                    ; $7C11: $FF
    rst RST_38                                    ; $7C12: $FF
    rst RST_38                                    ; $7C13: $FF
    rst RST_38                                    ; $7C14: $FF
    rst RST_38                                    ; $7C15: $FF
    rst RST_38                                    ; $7C16: $FF
    rst RST_38                                    ; $7C17: $FF
    rst RST_38                                    ; $7C18: $FF
    rst RST_38                                    ; $7C19: $FF
    rst RST_38                                    ; $7C1A: $FF
    rst RST_38                                    ; $7C1B: $FF
    rst RST_38                                    ; $7C1C: $FF
    rst RST_38                                    ; $7C1D: $FF
    rst RST_38                                    ; $7C1E: $FF
    rst RST_38                                    ; $7C1F: $FF
    rst RST_38                                    ; $7C20: $FF
    rst RST_38                                    ; $7C21: $FF
    rst RST_38                                    ; $7C22: $FF
    rst RST_38                                    ; $7C23: $FF
    rst RST_38                                    ; $7C24: $FF
    rst RST_38                                    ; $7C25: $FF
    rst RST_38                                    ; $7C26: $FF
    rst RST_38                                    ; $7C27: $FF
    rst RST_38                                    ; $7C28: $FF
    rst RST_38                                    ; $7C29: $FF
    rst RST_38                                    ; $7C2A: $FF
    rst RST_38                                    ; $7C2B: $FF
    rst RST_38                                    ; $7C2C: $FF
    rst RST_38                                    ; $7C2D: $FF
    rst RST_38                                    ; $7C2E: $FF
    rst RST_38                                    ; $7C2F: $FF
    rst RST_38                                    ; $7C30: $FF
    rst RST_38                                    ; $7C31: $FF
    rst RST_38                                    ; $7C32: $FF
    rst RST_38                                    ; $7C33: $FF
    rst RST_38                                    ; $7C34: $FF
    rst RST_38                                    ; $7C35: $FF
    rst RST_38                                    ; $7C36: $FF
    rst RST_38                                    ; $7C37: $FF
    rst RST_38                                    ; $7C38: $FF
    rst RST_38                                    ; $7C39: $FF
    rst RST_38                                    ; $7C3A: $FF
    rst RST_38                                    ; $7C3B: $FF
    rst RST_38                                    ; $7C3C: $FF
    rst RST_38                                    ; $7C3D: $FF
    rst RST_38                                    ; $7C3E: $FF
    rst RST_38                                    ; $7C3F: $FF
    rst RST_38                                    ; $7C40: $FF
    rst RST_38                                    ; $7C41: $FF
    rst RST_38                                    ; $7C42: $FF
    rst RST_38                                    ; $7C43: $FF
    rst RST_38                                    ; $7C44: $FF
    rst RST_38                                    ; $7C45: $FF
    rst RST_38                                    ; $7C46: $FF
    rst RST_38                                    ; $7C47: $FF
    rst RST_38                                    ; $7C48: $FF
    rst RST_38                                    ; $7C49: $FF
    rst RST_38                                    ; $7C4A: $FF
    rst RST_38                                    ; $7C4B: $FF
    rst RST_38                                    ; $7C4C: $FF
    rst RST_38                                    ; $7C4D: $FF
    rst RST_38                                    ; $7C4E: $FF
    rst RST_38                                    ; $7C4F: $FF
    rst RST_38                                    ; $7C50: $FF
    rst RST_38                                    ; $7C51: $FF
    rst RST_38                                    ; $7C52: $FF
    rst RST_38                                    ; $7C53: $FF
    rst RST_38                                    ; $7C54: $FF
    rst RST_38                                    ; $7C55: $FF
    rst RST_38                                    ; $7C56: $FF
    rst RST_38                                    ; $7C57: $FF
    rst RST_38                                    ; $7C58: $FF
    rst RST_38                                    ; $7C59: $FF
    rst RST_38                                    ; $7C5A: $FF
    rst RST_38                                    ; $7C5B: $FF
    rst RST_38                                    ; $7C5C: $FF
    rst RST_38                                    ; $7C5D: $FF
    rst RST_38                                    ; $7C5E: $FF
    rst RST_38                                    ; $7C5F: $FF
    rst RST_38                                    ; $7C60: $FF
    rst RST_38                                    ; $7C61: $FF
    rst RST_38                                    ; $7C62: $FF
    rst RST_38                                    ; $7C63: $FF
    rst RST_38                                    ; $7C64: $FF
    rst RST_38                                    ; $7C65: $FF
    rst RST_38                                    ; $7C66: $FF
    rst RST_38                                    ; $7C67: $FF
    rst RST_38                                    ; $7C68: $FF
    rst RST_38                                    ; $7C69: $FF
    rst RST_38                                    ; $7C6A: $FF
    rst RST_38                                    ; $7C6B: $FF
    rst RST_38                                    ; $7C6C: $FF
    rst RST_38                                    ; $7C6D: $FF
    rst RST_38                                    ; $7C6E: $FF
    rst RST_38                                    ; $7C6F: $FF
    rst RST_38                                    ; $7C70: $FF
    rst RST_38                                    ; $7C71: $FF
    rst RST_38                                    ; $7C72: $FF
    rst RST_38                                    ; $7C73: $FF
    rst RST_38                                    ; $7C74: $FF
    rst RST_38                                    ; $7C75: $FF
    rst RST_38                                    ; $7C76: $FF
    rst RST_38                                    ; $7C77: $FF
    rst RST_38                                    ; $7C78: $FF
    rst RST_38                                    ; $7C79: $FF
    rst RST_38                                    ; $7C7A: $FF
    rst RST_38                                    ; $7C7B: $FF
    rst RST_38                                    ; $7C7C: $FF
    rst RST_38                                    ; $7C7D: $FF
    rst RST_38                                    ; $7C7E: $FF
    rst RST_38                                    ; $7C7F: $FF
    rst RST_38                                    ; $7C80: $FF
    rst RST_38                                    ; $7C81: $FF
    rst RST_38                                    ; $7C82: $FF
    rst RST_38                                    ; $7C83: $FF
    rst RST_38                                    ; $7C84: $FF
    rst RST_38                                    ; $7C85: $FF
    rst RST_38                                    ; $7C86: $FF
    rst RST_38                                    ; $7C87: $FF
    rst RST_38                                    ; $7C88: $FF
    rst RST_38                                    ; $7C89: $FF
    rst RST_38                                    ; $7C8A: $FF
    rst RST_38                                    ; $7C8B: $FF
    rst RST_38                                    ; $7C8C: $FF
    rst RST_38                                    ; $7C8D: $FF
    rst RST_38                                    ; $7C8E: $FF
    rst RST_38                                    ; $7C8F: $FF
    rst RST_38                                    ; $7C90: $FF
    rst RST_38                                    ; $7C91: $FF
    rst RST_38                                    ; $7C92: $FF
    rst RST_38                                    ; $7C93: $FF
    rst RST_38                                    ; $7C94: $FF
    rst RST_38                                    ; $7C95: $FF
    rst RST_38                                    ; $7C96: $FF
    rst RST_38                                    ; $7C97: $FF
    rst RST_38                                    ; $7C98: $FF
    rst RST_38                                    ; $7C99: $FF
    rst RST_38                                    ; $7C9A: $FF
    rst RST_38                                    ; $7C9B: $FF
    rst RST_38                                    ; $7C9C: $FF
    rst RST_38                                    ; $7C9D: $FF
    rst RST_38                                    ; $7C9E: $FF
    rst RST_38                                    ; $7C9F: $FF
    rst RST_38                                    ; $7CA0: $FF
    rst RST_38                                    ; $7CA1: $FF
    rst RST_38                                    ; $7CA2: $FF
    rst RST_38                                    ; $7CA3: $FF
    rst RST_38                                    ; $7CA4: $FF
    rst RST_38                                    ; $7CA5: $FF
    rst RST_38                                    ; $7CA6: $FF
    rst RST_38                                    ; $7CA7: $FF
    rst RST_38                                    ; $7CA8: $FF
    rst RST_38                                    ; $7CA9: $FF
    rst RST_38                                    ; $7CAA: $FF
    rst RST_38                                    ; $7CAB: $FF
    rst RST_38                                    ; $7CAC: $FF
    rst RST_38                                    ; $7CAD: $FF
    rst RST_38                                    ; $7CAE: $FF
    rst RST_38                                    ; $7CAF: $FF
    rst RST_38                                    ; $7CB0: $FF
    rst RST_38                                    ; $7CB1: $FF
    rst RST_38                                    ; $7CB2: $FF
    rst RST_38                                    ; $7CB3: $FF
    rst RST_38                                    ; $7CB4: $FF
    rst RST_38                                    ; $7CB5: $FF
    rst RST_38                                    ; $7CB6: $FF
    rst RST_38                                    ; $7CB7: $FF
    rst RST_38                                    ; $7CB8: $FF
    rst RST_38                                    ; $7CB9: $FF
    rst RST_38                                    ; $7CBA: $FF
    rst RST_38                                    ; $7CBB: $FF
    rst RST_38                                    ; $7CBC: $FF
    rst RST_38                                    ; $7CBD: $FF
    rst RST_38                                    ; $7CBE: $FF
    rst RST_38                                    ; $7CBF: $FF
    rst RST_38                                    ; $7CC0: $FF
    rst RST_38                                    ; $7CC1: $FF
    rst RST_38                                    ; $7CC2: $FF
    rst RST_38                                    ; $7CC3: $FF
    rst RST_38                                    ; $7CC4: $FF
    rst RST_38                                    ; $7CC5: $FF
    rst RST_38                                    ; $7CC6: $FF
    rst RST_38                                    ; $7CC7: $FF
    rst RST_38                                    ; $7CC8: $FF
    rst RST_38                                    ; $7CC9: $FF
    rst RST_38                                    ; $7CCA: $FF
    rst RST_38                                    ; $7CCB: $FF
    rst RST_38                                    ; $7CCC: $FF
    rst RST_38                                    ; $7CCD: $FF
    rst RST_38                                    ; $7CCE: $FF
    rst RST_38                                    ; $7CCF: $FF
    rst RST_38                                    ; $7CD0: $FF
    rst RST_38                                    ; $7CD1: $FF
    rst RST_38                                    ; $7CD2: $FF
    rst RST_38                                    ; $7CD3: $FF
    rst RST_38                                    ; $7CD4: $FF
    rst RST_38                                    ; $7CD5: $FF
    rst RST_38                                    ; $7CD6: $FF
    rst RST_38                                    ; $7CD7: $FF
    rst RST_38                                    ; $7CD8: $FF
    rst RST_38                                    ; $7CD9: $FF
    rst RST_38                                    ; $7CDA: $FF
    rst RST_38                                    ; $7CDB: $FF
    rst RST_38                                    ; $7CDC: $FF
    rst RST_38                                    ; $7CDD: $FF
    rst RST_38                                    ; $7CDE: $FF
    rst RST_38                                    ; $7CDF: $FF
    rst RST_38                                    ; $7CE0: $FF
    rst RST_38                                    ; $7CE1: $FF
    rst RST_38                                    ; $7CE2: $FF
    rst RST_38                                    ; $7CE3: $FF
    rst RST_38                                    ; $7CE4: $FF
    rst RST_38                                    ; $7CE5: $FF
    rst RST_38                                    ; $7CE6: $FF
    rst RST_38                                    ; $7CE7: $FF
    rst RST_38                                    ; $7CE8: $FF
    rst RST_38                                    ; $7CE9: $FF
    rst RST_38                                    ; $7CEA: $FF
    rst RST_38                                    ; $7CEB: $FF
    rst RST_38                                    ; $7CEC: $FF
    rst RST_38                                    ; $7CED: $FF
    rst RST_38                                    ; $7CEE: $FF
    rst RST_38                                    ; $7CEF: $FF
    rst RST_38                                    ; $7CF0: $FF
    rst RST_38                                    ; $7CF1: $FF
    rst RST_38                                    ; $7CF2: $FF
    rst RST_38                                    ; $7CF3: $FF
    rst RST_38                                    ; $7CF4: $FF
    rst RST_38                                    ; $7CF5: $FF
    rst RST_38                                    ; $7CF6: $FF
    rst RST_38                                    ; $7CF7: $FF
    rst RST_38                                    ; $7CF8: $FF
    rst RST_38                                    ; $7CF9: $FF
    rst RST_38                                    ; $7CFA: $FF
    rst RST_38                                    ; $7CFB: $FF
    rst RST_38                                    ; $7CFC: $FF
    rst RST_38                                    ; $7CFD: $FF
    rst RST_38                                    ; $7CFE: $FF
    rst RST_38                                    ; $7CFF: $FF
    rst RST_38                                    ; $7D00: $FF
    rst RST_38                                    ; $7D01: $FF
    rst RST_38                                    ; $7D02: $FF
    rst RST_38                                    ; $7D03: $FF
    rst RST_38                                    ; $7D04: $FF
    rst RST_38                                    ; $7D05: $FF
    rst RST_38                                    ; $7D06: $FF
    rst RST_38                                    ; $7D07: $FF
    rst RST_38                                    ; $7D08: $FF
    rst RST_38                                    ; $7D09: $FF
    rst RST_38                                    ; $7D0A: $FF
    rst RST_38                                    ; $7D0B: $FF
    rst RST_38                                    ; $7D0C: $FF
    rst RST_38                                    ; $7D0D: $FF
    rst RST_38                                    ; $7D0E: $FF
    rst RST_38                                    ; $7D0F: $FF
    rst RST_38                                    ; $7D10: $FF
    rst RST_38                                    ; $7D11: $FF
    rst RST_38                                    ; $7D12: $FF
    rst RST_38                                    ; $7D13: $FF
    rst RST_38                                    ; $7D14: $FF
    rst RST_38                                    ; $7D15: $FF
    rst RST_38                                    ; $7D16: $FF
    rst RST_38                                    ; $7D17: $FF
    rst RST_38                                    ; $7D18: $FF
    rst RST_38                                    ; $7D19: $FF
    rst RST_38                                    ; $7D1A: $FF
    rst RST_38                                    ; $7D1B: $FF
    rst RST_38                                    ; $7D1C: $FF
    rst RST_38                                    ; $7D1D: $FF
    rst RST_38                                    ; $7D1E: $FF
    rst RST_38                                    ; $7D1F: $FF
    rst RST_38                                    ; $7D20: $FF
    rst RST_38                                    ; $7D21: $FF
    rst RST_38                                    ; $7D22: $FF
    rst RST_38                                    ; $7D23: $FF
    rst RST_38                                    ; $7D24: $FF
    rst RST_38                                    ; $7D25: $FF
    rst RST_38                                    ; $7D26: $FF
    rst RST_38                                    ; $7D27: $FF
    rst RST_38                                    ; $7D28: $FF
    rst RST_38                                    ; $7D29: $FF
    rst RST_38                                    ; $7D2A: $FF
    rst RST_38                                    ; $7D2B: $FF
    rst RST_38                                    ; $7D2C: $FF
    rst RST_38                                    ; $7D2D: $FF
    rst RST_38                                    ; $7D2E: $FF
    rst RST_38                                    ; $7D2F: $FF
    rst RST_38                                    ; $7D30: $FF
    rst RST_38                                    ; $7D31: $FF
    rst RST_38                                    ; $7D32: $FF
    rst RST_38                                    ; $7D33: $FF
    rst RST_38                                    ; $7D34: $FF
    rst RST_38                                    ; $7D35: $FF
    rst RST_38                                    ; $7D36: $FF
    rst RST_38                                    ; $7D37: $FF
    rst RST_38                                    ; $7D38: $FF
    rst RST_38                                    ; $7D39: $FF
    rst RST_38                                    ; $7D3A: $FF
    rst RST_38                                    ; $7D3B: $FF
    rst RST_38                                    ; $7D3C: $FF
    rst RST_38                                    ; $7D3D: $FF
    rst RST_38                                    ; $7D3E: $FF
    rst RST_38                                    ; $7D3F: $FF
    rst RST_38                                    ; $7D40: $FF
    rst RST_38                                    ; $7D41: $FF
    rst RST_38                                    ; $7D42: $FF
    rst RST_38                                    ; $7D43: $FF
    rst RST_38                                    ; $7D44: $FF
    rst RST_38                                    ; $7D45: $FF
    rst RST_38                                    ; $7D46: $FF
    rst RST_38                                    ; $7D47: $FF
    rst RST_38                                    ; $7D48: $FF
    rst RST_38                                    ; $7D49: $FF
    rst RST_38                                    ; $7D4A: $FF
    rst RST_38                                    ; $7D4B: $FF
    rst RST_38                                    ; $7D4C: $FF
    rst RST_38                                    ; $7D4D: $FF
    rst RST_38                                    ; $7D4E: $FF
    rst RST_38                                    ; $7D4F: $FF
    rst RST_38                                    ; $7D50: $FF
    rst RST_38                                    ; $7D51: $FF
    rst RST_38                                    ; $7D52: $FF
    rst RST_38                                    ; $7D53: $FF
    rst RST_38                                    ; $7D54: $FF
    rst RST_38                                    ; $7D55: $FF
    rst RST_38                                    ; $7D56: $FF
    rst RST_38                                    ; $7D57: $FF
    rst RST_38                                    ; $7D58: $FF
    rst RST_38                                    ; $7D59: $FF
    rst RST_38                                    ; $7D5A: $FF
    rst RST_38                                    ; $7D5B: $FF
    rst RST_38                                    ; $7D5C: $FF
    rst RST_38                                    ; $7D5D: $FF
    rst RST_38                                    ; $7D5E: $FF
    rst RST_38                                    ; $7D5F: $FF
    rst RST_38                                    ; $7D60: $FF
    rst RST_38                                    ; $7D61: $FF
    rst RST_38                                    ; $7D62: $FF
    rst RST_38                                    ; $7D63: $FF
    rst RST_38                                    ; $7D64: $FF
    rst RST_38                                    ; $7D65: $FF
    rst RST_38                                    ; $7D66: $FF
    rst RST_38                                    ; $7D67: $FF
    rst RST_38                                    ; $7D68: $FF
    rst RST_38                                    ; $7D69: $FF
    rst RST_38                                    ; $7D6A: $FF
    rst RST_38                                    ; $7D6B: $FF
    rst RST_38                                    ; $7D6C: $FF
    rst RST_38                                    ; $7D6D: $FF
    rst RST_38                                    ; $7D6E: $FF
    rst RST_38                                    ; $7D6F: $FF
    rst RST_38                                    ; $7D70: $FF
    rst RST_38                                    ; $7D71: $FF
    rst RST_38                                    ; $7D72: $FF
    rst RST_38                                    ; $7D73: $FF
    rst RST_38                                    ; $7D74: $FF
    rst RST_38                                    ; $7D75: $FF
    rst RST_38                                    ; $7D76: $FF
    rst RST_38                                    ; $7D77: $FF
    rst RST_38                                    ; $7D78: $FF
    rst RST_38                                    ; $7D79: $FF
    rst RST_38                                    ; $7D7A: $FF
    rst RST_38                                    ; $7D7B: $FF
    rst RST_38                                    ; $7D7C: $FF
    rst RST_38                                    ; $7D7D: $FF
    rst RST_38                                    ; $7D7E: $FF
    rst RST_38                                    ; $7D7F: $FF
    rst RST_38                                    ; $7D80: $FF
    rst RST_38                                    ; $7D81: $FF
    rst RST_38                                    ; $7D82: $FF
    rst RST_38                                    ; $7D83: $FF
    rst RST_38                                    ; $7D84: $FF
    rst RST_38                                    ; $7D85: $FF
    rst RST_38                                    ; $7D86: $FF
    rst RST_38                                    ; $7D87: $FF
    rst RST_38                                    ; $7D88: $FF
    rst RST_38                                    ; $7D89: $FF
    rst RST_38                                    ; $7D8A: $FF
    rst RST_38                                    ; $7D8B: $FF
    rst RST_38                                    ; $7D8C: $FF
    rst RST_38                                    ; $7D8D: $FF
    rst RST_38                                    ; $7D8E: $FF
    rst RST_38                                    ; $7D8F: $FF
    rst RST_38                                    ; $7D90: $FF
    rst RST_38                                    ; $7D91: $FF
    rst RST_38                                    ; $7D92: $FF
    rst RST_38                                    ; $7D93: $FF
    rst RST_38                                    ; $7D94: $FF
    rst RST_38                                    ; $7D95: $FF
    rst RST_38                                    ; $7D96: $FF
    rst RST_38                                    ; $7D97: $FF
    rst RST_38                                    ; $7D98: $FF
    rst RST_38                                    ; $7D99: $FF
    rst RST_38                                    ; $7D9A: $FF
    rst RST_38                                    ; $7D9B: $FF
    rst RST_38                                    ; $7D9C: $FF
    rst RST_38                                    ; $7D9D: $FF
    rst RST_38                                    ; $7D9E: $FF
    rst RST_38                                    ; $7D9F: $FF
    rst RST_38                                    ; $7DA0: $FF
    rst RST_38                                    ; $7DA1: $FF
    rst RST_38                                    ; $7DA2: $FF
    rst RST_38                                    ; $7DA3: $FF
    rst RST_38                                    ; $7DA4: $FF
    rst RST_38                                    ; $7DA5: $FF
    rst RST_38                                    ; $7DA6: $FF
    rst RST_38                                    ; $7DA7: $FF
    rst RST_38                                    ; $7DA8: $FF
    rst RST_38                                    ; $7DA9: $FF
    rst RST_38                                    ; $7DAA: $FF
    rst RST_38                                    ; $7DAB: $FF
    rst RST_38                                    ; $7DAC: $FF
    rst RST_38                                    ; $7DAD: $FF
    rst RST_38                                    ; $7DAE: $FF
    rst RST_38                                    ; $7DAF: $FF
    rst RST_38                                    ; $7DB0: $FF
    rst RST_38                                    ; $7DB1: $FF
    rst RST_38                                    ; $7DB2: $FF
    rst RST_38                                    ; $7DB3: $FF
    rst RST_38                                    ; $7DB4: $FF
    rst RST_38                                    ; $7DB5: $FF
    rst RST_38                                    ; $7DB6: $FF
    rst RST_38                                    ; $7DB7: $FF
    rst RST_38                                    ; $7DB8: $FF
    rst RST_38                                    ; $7DB9: $FF
    rst RST_38                                    ; $7DBA: $FF
    rst RST_38                                    ; $7DBB: $FF
    rst RST_38                                    ; $7DBC: $FF
    rst RST_38                                    ; $7DBD: $FF
    rst RST_38                                    ; $7DBE: $FF
    rst RST_38                                    ; $7DBF: $FF
    rst RST_38                                    ; $7DC0: $FF
    rst RST_38                                    ; $7DC1: $FF
    rst RST_38                                    ; $7DC2: $FF
    rst RST_38                                    ; $7DC3: $FF
    rst RST_38                                    ; $7DC4: $FF
    rst RST_38                                    ; $7DC5: $FF
    rst RST_38                                    ; $7DC6: $FF
    rst RST_38                                    ; $7DC7: $FF
    rst RST_38                                    ; $7DC8: $FF
    rst RST_38                                    ; $7DC9: $FF
    rst RST_38                                    ; $7DCA: $FF
    rst RST_38                                    ; $7DCB: $FF
    rst RST_38                                    ; $7DCC: $FF
    rst RST_38                                    ; $7DCD: $FF
    rst RST_38                                    ; $7DCE: $FF
    rst RST_38                                    ; $7DCF: $FF
    rst RST_38                                    ; $7DD0: $FF
    rst RST_38                                    ; $7DD1: $FF
    rst RST_38                                    ; $7DD2: $FF
    rst RST_38                                    ; $7DD3: $FF
    rst RST_38                                    ; $7DD4: $FF
    rst RST_38                                    ; $7DD5: $FF
    rst RST_38                                    ; $7DD6: $FF
    rst RST_38                                    ; $7DD7: $FF
    rst RST_38                                    ; $7DD8: $FF
    rst RST_38                                    ; $7DD9: $FF
    rst RST_38                                    ; $7DDA: $FF
    rst RST_38                                    ; $7DDB: $FF
    rst RST_38                                    ; $7DDC: $FF
    rst RST_38                                    ; $7DDD: $FF
    rst RST_38                                    ; $7DDE: $FF
    rst RST_38                                    ; $7DDF: $FF
    rst RST_38                                    ; $7DE0: $FF
    rst RST_38                                    ; $7DE1: $FF
    rst RST_38                                    ; $7DE2: $FF
    rst RST_38                                    ; $7DE3: $FF
    rst RST_38                                    ; $7DE4: $FF
    rst RST_38                                    ; $7DE5: $FF
    rst RST_38                                    ; $7DE6: $FF
    rst RST_38                                    ; $7DE7: $FF
    rst RST_38                                    ; $7DE8: $FF
    rst RST_38                                    ; $7DE9: $FF
    rst RST_38                                    ; $7DEA: $FF
    rst RST_38                                    ; $7DEB: $FF
    rst RST_38                                    ; $7DEC: $FF
    rst RST_38                                    ; $7DED: $FF
    rst RST_38                                    ; $7DEE: $FF
    rst RST_38                                    ; $7DEF: $FF
    rst RST_38                                    ; $7DF0: $FF
    rst RST_38                                    ; $7DF1: $FF
    rst RST_38                                    ; $7DF2: $FF
    rst RST_38                                    ; $7DF3: $FF
    rst RST_38                                    ; $7DF4: $FF
    rst RST_38                                    ; $7DF5: $FF
    rst RST_38                                    ; $7DF6: $FF
    rst RST_38                                    ; $7DF7: $FF
    rst RST_38                                    ; $7DF8: $FF
    rst RST_38                                    ; $7DF9: $FF
    rst RST_38                                    ; $7DFA: $FF
    rst RST_38                                    ; $7DFB: $FF
    rst RST_38                                    ; $7DFC: $FF
    rst RST_38                                    ; $7DFD: $FF
    rst RST_38                                    ; $7DFE: $FF
    rst RST_38                                    ; $7DFF: $FF
    rst RST_38                                    ; $7E00: $FF
    rst RST_38                                    ; $7E01: $FF
    rst RST_38                                    ; $7E02: $FF
    rst RST_38                                    ; $7E03: $FF
    rst RST_38                                    ; $7E04: $FF
    rst RST_38                                    ; $7E05: $FF
    rst RST_38                                    ; $7E06: $FF
    rst RST_38                                    ; $7E07: $FF
    rst RST_38                                    ; $7E08: $FF
    rst RST_38                                    ; $7E09: $FF
    rst RST_38                                    ; $7E0A: $FF
    rst RST_38                                    ; $7E0B: $FF
    rst RST_38                                    ; $7E0C: $FF
    rst RST_38                                    ; $7E0D: $FF
    rst RST_38                                    ; $7E0E: $FF
    rst RST_38                                    ; $7E0F: $FF
    rst RST_38                                    ; $7E10: $FF
    rst RST_38                                    ; $7E11: $FF
    rst RST_38                                    ; $7E12: $FF
    rst RST_38                                    ; $7E13: $FF
    rst RST_38                                    ; $7E14: $FF
    rst RST_38                                    ; $7E15: $FF
    rst RST_38                                    ; $7E16: $FF
    rst RST_38                                    ; $7E17: $FF
    rst RST_38                                    ; $7E18: $FF
    rst RST_38                                    ; $7E19: $FF
    rst RST_38                                    ; $7E1A: $FF
    rst RST_38                                    ; $7E1B: $FF
    rst RST_38                                    ; $7E1C: $FF
    rst RST_38                                    ; $7E1D: $FF
    rst RST_38                                    ; $7E1E: $FF
    rst RST_38                                    ; $7E1F: $FF
    rst RST_38                                    ; $7E20: $FF
    rst RST_38                                    ; $7E21: $FF
    rst RST_38                                    ; $7E22: $FF
    rst RST_38                                    ; $7E23: $FF
    rst RST_38                                    ; $7E24: $FF
    rst RST_38                                    ; $7E25: $FF
    rst RST_38                                    ; $7E26: $FF
    rst RST_38                                    ; $7E27: $FF
    rst RST_38                                    ; $7E28: $FF
    rst RST_38                                    ; $7E29: $FF
    rst RST_38                                    ; $7E2A: $FF
    rst RST_38                                    ; $7E2B: $FF
    rst RST_38                                    ; $7E2C: $FF
    rst RST_38                                    ; $7E2D: $FF
    rst RST_38                                    ; $7E2E: $FF
    rst RST_38                                    ; $7E2F: $FF
    rst RST_38                                    ; $7E30: $FF
    rst RST_38                                    ; $7E31: $FF
    rst RST_38                                    ; $7E32: $FF
    rst RST_38                                    ; $7E33: $FF
    rst RST_38                                    ; $7E34: $FF
    rst RST_38                                    ; $7E35: $FF
    rst RST_38                                    ; $7E36: $FF
    rst RST_38                                    ; $7E37: $FF
    rst RST_38                                    ; $7E38: $FF
    rst RST_38                                    ; $7E39: $FF
    rst RST_38                                    ; $7E3A: $FF
    rst RST_38                                    ; $7E3B: $FF
    rst RST_38                                    ; $7E3C: $FF
    rst RST_38                                    ; $7E3D: $FF
    rst RST_38                                    ; $7E3E: $FF
    rst RST_38                                    ; $7E3F: $FF
    rst RST_38                                    ; $7E40: $FF
    rst RST_38                                    ; $7E41: $FF
    rst RST_38                                    ; $7E42: $FF
    rst RST_38                                    ; $7E43: $FF
    rst RST_38                                    ; $7E44: $FF
    rst RST_38                                    ; $7E45: $FF
    rst RST_38                                    ; $7E46: $FF
    rst RST_38                                    ; $7E47: $FF
    rst RST_38                                    ; $7E48: $FF
    rst RST_38                                    ; $7E49: $FF
    rst RST_38                                    ; $7E4A: $FF
    rst RST_38                                    ; $7E4B: $FF
    rst RST_38                                    ; $7E4C: $FF
    rst RST_38                                    ; $7E4D: $FF
    rst RST_38                                    ; $7E4E: $FF
    rst RST_38                                    ; $7E4F: $FF
    rst RST_38                                    ; $7E50: $FF
    rst RST_38                                    ; $7E51: $FF
    rst RST_38                                    ; $7E52: $FF
    rst RST_38                                    ; $7E53: $FF
    rst RST_38                                    ; $7E54: $FF
    rst RST_38                                    ; $7E55: $FF
    rst RST_38                                    ; $7E56: $FF
    rst RST_38                                    ; $7E57: $FF
    rst RST_38                                    ; $7E58: $FF
    rst RST_38                                    ; $7E59: $FF
    rst RST_38                                    ; $7E5A: $FF
    rst RST_38                                    ; $7E5B: $FF
    rst RST_38                                    ; $7E5C: $FF
    rst RST_38                                    ; $7E5D: $FF
    rst RST_38                                    ; $7E5E: $FF
    rst RST_38                                    ; $7E5F: $FF
    rst RST_38                                    ; $7E60: $FF
    rst RST_38                                    ; $7E61: $FF
    rst RST_38                                    ; $7E62: $FF
    rst RST_38                                    ; $7E63: $FF
    rst RST_38                                    ; $7E64: $FF
    rst RST_38                                    ; $7E65: $FF
    rst RST_38                                    ; $7E66: $FF
    rst RST_38                                    ; $7E67: $FF
    rst RST_38                                    ; $7E68: $FF
    rst RST_38                                    ; $7E69: $FF
    rst RST_38                                    ; $7E6A: $FF
    rst RST_38                                    ; $7E6B: $FF
    rst RST_38                                    ; $7E6C: $FF
    rst RST_38                                    ; $7E6D: $FF
    rst RST_38                                    ; $7E6E: $FF
    rst RST_38                                    ; $7E6F: $FF
    rst RST_38                                    ; $7E70: $FF
    rst RST_38                                    ; $7E71: $FF
    rst RST_38                                    ; $7E72: $FF
    rst RST_38                                    ; $7E73: $FF
    rst RST_38                                    ; $7E74: $FF
    rst RST_38                                    ; $7E75: $FF
    rst RST_38                                    ; $7E76: $FF
    rst RST_38                                    ; $7E77: $FF
    rst RST_38                                    ; $7E78: $FF
    rst RST_38                                    ; $7E79: $FF
    rst RST_38                                    ; $7E7A: $FF
    rst RST_38                                    ; $7E7B: $FF
    rst RST_38                                    ; $7E7C: $FF
    rst RST_38                                    ; $7E7D: $FF
    rst RST_38                                    ; $7E7E: $FF
    rst RST_38                                    ; $7E7F: $FF
    rst RST_38                                    ; $7E80: $FF
    rst RST_38                                    ; $7E81: $FF
    rst RST_38                                    ; $7E82: $FF
    rst RST_38                                    ; $7E83: $FF
    rst RST_38                                    ; $7E84: $FF
    rst RST_38                                    ; $7E85: $FF
    rst RST_38                                    ; $7E86: $FF
    rst RST_38                                    ; $7E87: $FF
    rst RST_38                                    ; $7E88: $FF
    rst RST_38                                    ; $7E89: $FF
    rst RST_38                                    ; $7E8A: $FF
    rst RST_38                                    ; $7E8B: $FF
    rst RST_38                                    ; $7E8C: $FF
    rst RST_38                                    ; $7E8D: $FF
    rst RST_38                                    ; $7E8E: $FF
    rst RST_38                                    ; $7E8F: $FF
    rst RST_38                                    ; $7E90: $FF
    rst RST_38                                    ; $7E91: $FF
    rst RST_38                                    ; $7E92: $FF
    rst RST_38                                    ; $7E93: $FF
    rst RST_38                                    ; $7E94: $FF
    rst RST_38                                    ; $7E95: $FF
    rst RST_38                                    ; $7E96: $FF
    rst RST_38                                    ; $7E97: $FF
    rst RST_38                                    ; $7E98: $FF
    rst RST_38                                    ; $7E99: $FF
    rst RST_38                                    ; $7E9A: $FF
    rst RST_38                                    ; $7E9B: $FF
    rst RST_38                                    ; $7E9C: $FF
    rst RST_38                                    ; $7E9D: $FF
    rst RST_38                                    ; $7E9E: $FF
    rst RST_38                                    ; $7E9F: $FF
    rst RST_38                                    ; $7EA0: $FF
    rst RST_38                                    ; $7EA1: $FF
    rst RST_38                                    ; $7EA2: $FF
    rst RST_38                                    ; $7EA3: $FF
    rst RST_38                                    ; $7EA4: $FF
    rst RST_38                                    ; $7EA5: $FF
    rst RST_38                                    ; $7EA6: $FF
    rst RST_38                                    ; $7EA7: $FF
    rst RST_38                                    ; $7EA8: $FF
    rst RST_38                                    ; $7EA9: $FF
    rst RST_38                                    ; $7EAA: $FF
    rst RST_38                                    ; $7EAB: $FF
    rst RST_38                                    ; $7EAC: $FF
    rst RST_38                                    ; $7EAD: $FF
    rst RST_38                                    ; $7EAE: $FF
    rst RST_38                                    ; $7EAF: $FF
    rst RST_38                                    ; $7EB0: $FF
    rst RST_38                                    ; $7EB1: $FF
    rst RST_38                                    ; $7EB2: $FF
    rst RST_38                                    ; $7EB3: $FF
    rst RST_38                                    ; $7EB4: $FF
    rst RST_38                                    ; $7EB5: $FF
    rst RST_38                                    ; $7EB6: $FF
    rst RST_38                                    ; $7EB7: $FF
    rst RST_38                                    ; $7EB8: $FF
    rst RST_38                                    ; $7EB9: $FF
    rst RST_38                                    ; $7EBA: $FF
    rst RST_38                                    ; $7EBB: $FF
    rst RST_38                                    ; $7EBC: $FF
    rst RST_38                                    ; $7EBD: $FF
    rst RST_38                                    ; $7EBE: $FF
    rst RST_38                                    ; $7EBF: $FF
    rst RST_38                                    ; $7EC0: $FF
    rst RST_38                                    ; $7EC1: $FF
    rst RST_38                                    ; $7EC2: $FF
    rst RST_38                                    ; $7EC3: $FF
    rst RST_38                                    ; $7EC4: $FF
    rst RST_38                                    ; $7EC5: $FF
    rst RST_38                                    ; $7EC6: $FF
    rst RST_38                                    ; $7EC7: $FF
    rst RST_38                                    ; $7EC8: $FF
    rst RST_38                                    ; $7EC9: $FF
    rst RST_38                                    ; $7ECA: $FF
    rst RST_38                                    ; $7ECB: $FF
    rst RST_38                                    ; $7ECC: $FF
    rst RST_38                                    ; $7ECD: $FF
    rst RST_38                                    ; $7ECE: $FF
    rst RST_38                                    ; $7ECF: $FF

Call_02A_7ED0:
    rst RST_38                                    ; $7ED0: $FF
    rst RST_38                                    ; $7ED1: $FF
    rst RST_38                                    ; $7ED2: $FF
    rst RST_38                                    ; $7ED3: $FF
    rst RST_38                                    ; $7ED4: $FF
    rst RST_38                                    ; $7ED5: $FF
    rst RST_38                                    ; $7ED6: $FF
    rst RST_38                                    ; $7ED7: $FF
    rst RST_38                                    ; $7ED8: $FF
    rst RST_38                                    ; $7ED9: $FF
    rst RST_38                                    ; $7EDA: $FF
    rst RST_38                                    ; $7EDB: $FF
    rst RST_38                                    ; $7EDC: $FF
    rst RST_38                                    ; $7EDD: $FF
    rst RST_38                                    ; $7EDE: $FF
    rst RST_38                                    ; $7EDF: $FF
    rst RST_38                                    ; $7EE0: $FF
    rst RST_38                                    ; $7EE1: $FF
    rst RST_38                                    ; $7EE2: $FF
    rst RST_38                                    ; $7EE3: $FF
    rst RST_38                                    ; $7EE4: $FF
    rst RST_38                                    ; $7EE5: $FF
    rst RST_38                                    ; $7EE6: $FF
    rst RST_38                                    ; $7EE7: $FF
    rst RST_38                                    ; $7EE8: $FF
    rst RST_38                                    ; $7EE9: $FF
    rst RST_38                                    ; $7EEA: $FF
    rst RST_38                                    ; $7EEB: $FF
    rst RST_38                                    ; $7EEC: $FF
    rst RST_38                                    ; $7EED: $FF
    rst RST_38                                    ; $7EEE: $FF
    rst RST_38                                    ; $7EEF: $FF
    rst RST_38                                    ; $7EF0: $FF
    rst RST_38                                    ; $7EF1: $FF
    rst RST_38                                    ; $7EF2: $FF
    rst RST_38                                    ; $7EF3: $FF
    rst RST_38                                    ; $7EF4: $FF
    rst RST_38                                    ; $7EF5: $FF
    rst RST_38                                    ; $7EF6: $FF
    rst RST_38                                    ; $7EF7: $FF
    rst RST_38                                    ; $7EF8: $FF
    rst RST_38                                    ; $7EF9: $FF
    rst RST_38                                    ; $7EFA: $FF
    rst RST_38                                    ; $7EFB: $FF
    rst RST_38                                    ; $7EFC: $FF
    rst RST_38                                    ; $7EFD: $FF
    rst RST_38                                    ; $7EFE: $FF
    rst RST_38                                    ; $7EFF: $FF
    rst RST_38                                    ; $7F00: $FF
    rst RST_38                                    ; $7F01: $FF
    rst RST_38                                    ; $7F02: $FF
    rst RST_38                                    ; $7F03: $FF
    rst RST_38                                    ; $7F04: $FF
    rst RST_38                                    ; $7F05: $FF
    rst RST_38                                    ; $7F06: $FF
    rst RST_38                                    ; $7F07: $FF
    rst RST_38                                    ; $7F08: $FF
    rst RST_38                                    ; $7F09: $FF
    rst RST_38                                    ; $7F0A: $FF
    rst RST_38                                    ; $7F0B: $FF
    rst RST_38                                    ; $7F0C: $FF
    rst RST_38                                    ; $7F0D: $FF
    rst RST_38                                    ; $7F0E: $FF
    rst RST_38                                    ; $7F0F: $FF
    rst RST_38                                    ; $7F10: $FF
    rst RST_38                                    ; $7F11: $FF
    rst RST_38                                    ; $7F12: $FF
    rst RST_38                                    ; $7F13: $FF
    rst RST_38                                    ; $7F14: $FF
    rst RST_38                                    ; $7F15: $FF
    rst RST_38                                    ; $7F16: $FF
    rst RST_38                                    ; $7F17: $FF
    rst RST_38                                    ; $7F18: $FF
    rst RST_38                                    ; $7F19: $FF
    rst RST_38                                    ; $7F1A: $FF
    rst RST_38                                    ; $7F1B: $FF
    rst RST_38                                    ; $7F1C: $FF
    rst RST_38                                    ; $7F1D: $FF
    rst RST_38                                    ; $7F1E: $FF
    rst RST_38                                    ; $7F1F: $FF
    rst RST_38                                    ; $7F20: $FF
    rst RST_38                                    ; $7F21: $FF
    rst RST_38                                    ; $7F22: $FF
    rst RST_38                                    ; $7F23: $FF
    rst RST_38                                    ; $7F24: $FF
    rst RST_38                                    ; $7F25: $FF
    rst RST_38                                    ; $7F26: $FF
    rst RST_38                                    ; $7F27: $FF
    rst RST_38                                    ; $7F28: $FF
    rst RST_38                                    ; $7F29: $FF
    rst RST_38                                    ; $7F2A: $FF
    rst RST_38                                    ; $7F2B: $FF
    rst RST_38                                    ; $7F2C: $FF
    rst RST_38                                    ; $7F2D: $FF
    rst RST_38                                    ; $7F2E: $FF
    rst RST_38                                    ; $7F2F: $FF
    rst RST_38                                    ; $7F30: $FF
    rst RST_38                                    ; $7F31: $FF
    rst RST_38                                    ; $7F32: $FF
    rst RST_38                                    ; $7F33: $FF
    rst RST_38                                    ; $7F34: $FF
    rst RST_38                                    ; $7F35: $FF
    rst RST_38                                    ; $7F36: $FF
    rst RST_38                                    ; $7F37: $FF
    rst RST_38                                    ; $7F38: $FF
    rst RST_38                                    ; $7F39: $FF
    rst RST_38                                    ; $7F3A: $FF
    rst RST_38                                    ; $7F3B: $FF
    rst RST_38                                    ; $7F3C: $FF
    rst RST_38                                    ; $7F3D: $FF
    rst RST_38                                    ; $7F3E: $FF
    rst RST_38                                    ; $7F3F: $FF
    rst RST_38                                    ; $7F40: $FF
    rst RST_38                                    ; $7F41: $FF
    rst RST_38                                    ; $7F42: $FF
    rst RST_38                                    ; $7F43: $FF
    rst RST_38                                    ; $7F44: $FF
    rst RST_38                                    ; $7F45: $FF
    rst RST_38                                    ; $7F46: $FF
    rst RST_38                                    ; $7F47: $FF
    rst RST_38                                    ; $7F48: $FF
    rst RST_38                                    ; $7F49: $FF
    rst RST_38                                    ; $7F4A: $FF
    rst RST_38                                    ; $7F4B: $FF
    rst RST_38                                    ; $7F4C: $FF
    rst RST_38                                    ; $7F4D: $FF
    rst RST_38                                    ; $7F4E: $FF
    rst RST_38                                    ; $7F4F: $FF
    rst RST_38                                    ; $7F50: $FF
    rst RST_38                                    ; $7F51: $FF
    rst RST_38                                    ; $7F52: $FF
    rst RST_38                                    ; $7F53: $FF
    rst RST_38                                    ; $7F54: $FF
    rst RST_38                                    ; $7F55: $FF
    rst RST_38                                    ; $7F56: $FF
    rst RST_38                                    ; $7F57: $FF
    rst RST_38                                    ; $7F58: $FF
    rst RST_38                                    ; $7F59: $FF
    rst RST_38                                    ; $7F5A: $FF
    rst RST_38                                    ; $7F5B: $FF
    rst RST_38                                    ; $7F5C: $FF
    rst RST_38                                    ; $7F5D: $FF
    rst RST_38                                    ; $7F5E: $FF
    rst RST_38                                    ; $7F5F: $FF
    rst RST_38                                    ; $7F60: $FF
    rst RST_38                                    ; $7F61: $FF
    rst RST_38                                    ; $7F62: $FF
    rst RST_38                                    ; $7F63: $FF
    rst RST_38                                    ; $7F64: $FF
    rst RST_38                                    ; $7F65: $FF
    rst RST_38                                    ; $7F66: $FF
    rst RST_38                                    ; $7F67: $FF
    rst RST_38                                    ; $7F68: $FF
    rst RST_38                                    ; $7F69: $FF
    rst RST_38                                    ; $7F6A: $FF
    rst RST_38                                    ; $7F6B: $FF
    rst RST_38                                    ; $7F6C: $FF
    rst RST_38                                    ; $7F6D: $FF
    rst RST_38                                    ; $7F6E: $FF
    rst RST_38                                    ; $7F6F: $FF
    rst RST_38                                    ; $7F70: $FF
    rst RST_38                                    ; $7F71: $FF
    rst RST_38                                    ; $7F72: $FF
    rst RST_38                                    ; $7F73: $FF
    rst RST_38                                    ; $7F74: $FF
    rst RST_38                                    ; $7F75: $FF
    rst RST_38                                    ; $7F76: $FF
    rst RST_38                                    ; $7F77: $FF
    rst RST_38                                    ; $7F78: $FF
    rst RST_38                                    ; $7F79: $FF
    rst RST_38                                    ; $7F7A: $FF
    rst RST_38                                    ; $7F7B: $FF
    rst RST_38                                    ; $7F7C: $FF
    rst RST_38                                    ; $7F7D: $FF
    rst RST_38                                    ; $7F7E: $FF
    rst RST_38                                    ; $7F7F: $FF
    rst RST_38                                    ; $7F80: $FF
    rst RST_38                                    ; $7F81: $FF
    rst RST_38                                    ; $7F82: $FF
    rst RST_38                                    ; $7F83: $FF
    rst RST_38                                    ; $7F84: $FF
    rst RST_38                                    ; $7F85: $FF
    rst RST_38                                    ; $7F86: $FF
    rst RST_38                                    ; $7F87: $FF
    rst RST_38                                    ; $7F88: $FF
    rst RST_38                                    ; $7F89: $FF
    rst RST_38                                    ; $7F8A: $FF
    rst RST_38                                    ; $7F8B: $FF
    rst RST_38                                    ; $7F8C: $FF
    rst RST_38                                    ; $7F8D: $FF
    rst RST_38                                    ; $7F8E: $FF
    rst RST_38                                    ; $7F8F: $FF
    rst RST_38                                    ; $7F90: $FF
    rst RST_38                                    ; $7F91: $FF
    rst RST_38                                    ; $7F92: $FF
    rst RST_38                                    ; $7F93: $FF
    rst RST_38                                    ; $7F94: $FF
    rst RST_38                                    ; $7F95: $FF
    rst RST_38                                    ; $7F96: $FF
    rst RST_38                                    ; $7F97: $FF
    rst RST_38                                    ; $7F98: $FF
    rst RST_38                                    ; $7F99: $FF
    rst RST_38                                    ; $7F9A: $FF
    rst RST_38                                    ; $7F9B: $FF
    rst RST_38                                    ; $7F9C: $FF
    rst RST_38                                    ; $7F9D: $FF
    rst RST_38                                    ; $7F9E: $FF
    rst RST_38                                    ; $7F9F: $FF
    rst RST_38                                    ; $7FA0: $FF
    rst RST_38                                    ; $7FA1: $FF
    rst RST_38                                    ; $7FA2: $FF
    rst RST_38                                    ; $7FA3: $FF
    rst RST_38                                    ; $7FA4: $FF
    rst RST_38                                    ; $7FA5: $FF
    rst RST_38                                    ; $7FA6: $FF
    rst RST_38                                    ; $7FA7: $FF
    rst RST_38                                    ; $7FA8: $FF
    rst RST_38                                    ; $7FA9: $FF
    rst RST_38                                    ; $7FAA: $FF
    rst RST_38                                    ; $7FAB: $FF
    rst RST_38                                    ; $7FAC: $FF
    rst RST_38                                    ; $7FAD: $FF
    rst RST_38                                    ; $7FAE: $FF
    rst RST_38                                    ; $7FAF: $FF
    rst RST_38                                    ; $7FB0: $FF
    rst RST_38                                    ; $7FB1: $FF
    rst RST_38                                    ; $7FB2: $FF
    rst RST_38                                    ; $7FB3: $FF
    rst RST_38                                    ; $7FB4: $FF
    rst RST_38                                    ; $7FB5: $FF
    rst RST_38                                    ; $7FB6: $FF
    rst RST_38                                    ; $7FB7: $FF
    rst RST_38                                    ; $7FB8: $FF
    rst RST_38                                    ; $7FB9: $FF
    rst RST_38                                    ; $7FBA: $FF
    rst RST_38                                    ; $7FBB: $FF
    rst RST_38                                    ; $7FBC: $FF
    rst RST_38                                    ; $7FBD: $FF
    rst RST_38                                    ; $7FBE: $FF
    rst RST_38                                    ; $7FBF: $FF
    rst RST_38                                    ; $7FC0: $FF
    rst RST_38                                    ; $7FC1: $FF
    rst RST_38                                    ; $7FC2: $FF
    rst RST_38                                    ; $7FC3: $FF
    rst RST_38                                    ; $7FC4: $FF
    rst RST_38                                    ; $7FC5: $FF
    rst RST_38                                    ; $7FC6: $FF
    rst RST_38                                    ; $7FC7: $FF
    rst RST_38                                    ; $7FC8: $FF
    rst RST_38                                    ; $7FC9: $FF
    rst RST_38                                    ; $7FCA: $FF
    rst RST_38                                    ; $7FCB: $FF
    rst RST_38                                    ; $7FCC: $FF
    rst RST_38                                    ; $7FCD: $FF
    rst RST_38                                    ; $7FCE: $FF
    rst RST_38                                    ; $7FCF: $FF
    rst RST_38                                    ; $7FD0: $FF
    rst RST_38                                    ; $7FD1: $FF
    rst RST_38                                    ; $7FD2: $FF
    rst RST_38                                    ; $7FD3: $FF
    rst RST_38                                    ; $7FD4: $FF
    rst RST_38                                    ; $7FD5: $FF
    rst RST_38                                    ; $7FD6: $FF
    rst RST_38                                    ; $7FD7: $FF
    rst RST_38                                    ; $7FD8: $FF
    rst RST_38                                    ; $7FD9: $FF
    rst RST_38                                    ; $7FDA: $FF
    rst RST_38                                    ; $7FDB: $FF
    rst RST_38                                    ; $7FDC: $FF
    rst RST_38                                    ; $7FDD: $FF
    rst RST_38                                    ; $7FDE: $FF
    rst RST_38                                    ; $7FDF: $FF
    rst RST_38                                    ; $7FE0: $FF
    rst RST_38                                    ; $7FE1: $FF
    rst RST_38                                    ; $7FE2: $FF
    rst RST_38                                    ; $7FE3: $FF
    rst RST_38                                    ; $7FE4: $FF
    rst RST_38                                    ; $7FE5: $FF
    rst RST_38                                    ; $7FE6: $FF
    rst RST_38                                    ; $7FE7: $FF
    rst RST_38                                    ; $7FE8: $FF
    rst RST_38                                    ; $7FE9: $FF
    rst RST_38                                    ; $7FEA: $FF
    rst RST_38                                    ; $7FEB: $FF
    rst RST_38                                    ; $7FEC: $FF
    rst RST_38                                    ; $7FED: $FF
    rst RST_38                                    ; $7FEE: $FF
    rst RST_38                                    ; $7FEF: $FF
    rst RST_38                                    ; $7FF0: $FF
    rst RST_38                                    ; $7FF1: $FF
    rst RST_38                                    ; $7FF2: $FF
    rst RST_38                                    ; $7FF3: $FF
    rst RST_38                                    ; $7FF4: $FF
    rst RST_38                                    ; $7FF5: $FF
    rst RST_38                                    ; $7FF6: $FF
    rst RST_38                                    ; $7FF7: $FF
    rst RST_38                                    ; $7FF8: $FF
    rst RST_38                                    ; $7FF9: $FF
    rst RST_38                                    ; $7FFA: $FF
    rst RST_38                                    ; $7FFB: $FF
    rst RST_38                                    ; $7FFC: $FF
    rst RST_38                                    ; $7FFD: $FF
    rst RST_38                                    ; $7FFE: $FF
    rst RST_38                                    ; $7FFF: $FF
