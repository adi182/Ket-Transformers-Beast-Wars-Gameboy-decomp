; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03d", ROMX[$4000], BANK[$3d]

    xor a                                         ; $4000: $AF
    ld [$C31B], a                                 ; $4001: $EA $1B $C3
    ld sp, $DD00                                  ; $4004: $31 $00 $DD
    di                                            ; $4007: $F3
    rst RST_10                                    ; $4008: $D7
    ld hl, $C03A                                  ; $4009: $21 $3A $C0
    res 1, [hl]                                   ; $400C: $CB $8E
    ld a, $00                                     ; $400E: $3E $00
    call Call_000_135D                            ; $4010: $CD $5D $13
    xor a                                         ; $4013: $AF
    ldh [rBGP], a                                 ; $4014: $E0 $47
    ldh [rOBP0], a                                ; $4016: $E0 $48
    ldh [rOBP1], a                                ; $4018: $E0 $49
    call Call_000_13ED                            ; $401A: $CD $ED $13
    ld de, $001E                                  ; $401D: $11 $1E $00
    call Call_000_14C0                            ; $4020: $CD $C0 $14
    call Call_000_0FBD                            ; $4023: $CD $BD $0F
    call Call_000_0FC6                            ; $4026: $CD $C6 $0F
    xor a                                         ; $4029: $AF
    ldh [$FFE4], a                                ; $402A: $E0 $E4
    ldh [$FFE2], a                                ; $402C: $E0 $E2
    ld [$C2AA], a                                 ; $402E: $EA $AA $C2
    ld a, $F0                                     ; $4031: $3E $F0
    ld [$C2AC], a                                 ; $4033: $EA $AC $C2
    ld hl, $7810                                  ; $4036: $21 $10 $78
    ld b, $33                                     ; $4039: $06 $33
    ld de, $C329                                  ; $403B: $11 $29 $C3
    rst RST_20                                    ; $403E: $E7
    ld hl, $C329                                  ; $403F: $21 $29 $C3
    ld de, $8800                                  ; $4042: $11 $00 $88
    ld b, $80                                     ; $4045: $06 $80
    call Call_000_1188                            ; $4047: $CD $88 $11
    ld hl, $7164                                  ; $404A: $21 $64 $71
    ld b, $33                                     ; $404D: $06 $33
    ld de, $C329                                  ; $404F: $11 $29 $C3
    rst RST_20                                    ; $4052: $E7
    ld hl, $C329                                  ; $4053: $21 $29 $C3
    ld de, $9000                                  ; $4056: $11 $00 $90
    ld b, $80                                     ; $4059: $06 $80
    call Call_000_1188                            ; $405B: $CD $88 $11
    ld hl, $7B84                                  ; $405E: $21 $84 $7B
    ld b, $33                                     ; $4061: $06 $33
    ld de, $C329                                  ; $4063: $11 $29 $C3
    rst RST_20                                    ; $4066: $E7
    ld de, $C329                                  ; $4067: $11 $29 $C3
    ld hl, $9800                                  ; $406A: $21 $00 $98
    ld b, $14                                     ; $406D: $06 $14
    ld c, $20                                     ; $406F: $0E $20
    call Call_000_10C0                            ; $4071: $CD $C0 $10
    ld e, $00                                     ; $4074: $1E $00
    ld d, $04                                     ; $4076: $16 $04
    ld hl, $9D07                                  ; $4078: $21 $07 $9D
    ld b, $0C                                     ; $407B: $06 $0C
    ld c, $01                                     ; $407D: $0E $01
    call Call_000_1111                            ; $407F: $CD $11 $11
    ld e, $03                                     ; $4082: $1E $03
    ld d, $10                                     ; $4084: $16 $10
    ld hl, $9C24                                  ; $4086: $21 $24 $9C
    ld b, $03                                     ; $4089: $06 $03
    ld c, $03                                     ; $408B: $0E $03
    call Call_000_1111                            ; $408D: $CD $11 $11
    ld e, $06                                     ; $4090: $1E $06
    ld d, $22                                     ; $4092: $16 $22
    ld hl, $9C27                                  ; $4094: $21 $27 $9C
    ld b, $03                                     ; $4097: $06 $03
    ld c, $03                                     ; $4099: $0E $03
    call Call_000_1111                            ; $409B: $CD $11 $11
    ld e, $03                                     ; $409E: $1E $03
    ld d, $34                                     ; $40A0: $16 $34
    ld hl, $9C2A                                  ; $40A2: $21 $2A $9C
    ld b, $03                                     ; $40A5: $06 $03
    ld c, $03                                     ; $40A7: $0E $03
    call Call_000_1111                            ; $40A9: $CD $11 $11
    ld e, $07                                     ; $40AC: $1E $07
    ld d, $46                                     ; $40AE: $16 $46
    ld hl, $9C2D                                  ; $40B0: $21 $2D $9C
    ld b, $03                                     ; $40B3: $06 $03
    ld c, $03                                     ; $40B5: $0E $03
    call Call_000_1111                            ; $40B7: $CD $11 $11
    ld e, $04                                     ; $40BA: $1E $04
    ld d, $19                                     ; $40BC: $16 $19
    ld hl, $9C84                                  ; $40BE: $21 $84 $9C
    ld b, $03                                     ; $40C1: $06 $03
    ld c, $03                                     ; $40C3: $0E $03
    call Call_000_1111                            ; $40C5: $CD $11 $11
    ld e, $05                                     ; $40C8: $1E $05
    ld d, $2B                                     ; $40CA: $16 $2B
    ld hl, $9C87                                  ; $40CC: $21 $87 $9C
    ld b, $03                                     ; $40CF: $06 $03
    ld c, $03                                     ; $40D1: $0E $03
    call Call_000_1111                            ; $40D3: $CD $11 $11
    ld e, $03                                     ; $40D6: $1E $03
    ld d, $3D                                     ; $40D8: $16 $3D
    ld hl, $9C8A                                  ; $40DA: $21 $8A $9C
    ld b, $03                                     ; $40DD: $06 $03
    ld c, $03                                     ; $40DF: $0E $03
    call Call_000_1111                            ; $40E1: $CD $11 $11
    ld e, $04                                     ; $40E4: $1E $04
    ld d, $4F                                     ; $40E6: $16 $4F
    ld hl, $9C8D                                  ; $40E8: $21 $8D $9C
    ld b, $03                                     ; $40EB: $06 $03
    ld c, $03                                     ; $40ED: $0E $03
    call Call_000_1111                            ; $40EF: $CD $11 $11
    ld a, [$C001]                                 ; $40F2: $FA $01 $C0
    bit 7, a                                      ; $40F5: $CB $7F
    jr z, jr_03D_4107                             ; $40F7: $28 $0E

    ld e, $06                                     ; $40F9: $1E $06
    ld d, $58                                     ; $40FB: $16 $58
    ld hl, $9C81                                  ; $40FD: $21 $81 $9C
    ld b, $03                                     ; $4100: $06 $03
    ld c, $03                                     ; $4102: $0E $03
    call Call_000_1111                            ; $4104: $CD $11 $11

jr_03D_4107:
    ld a, [$C001]                                 ; $4107: $FA $01 $C0
    bit 6, a                                      ; $410A: $CB $77
    jr z, jr_03D_411C                             ; $410C: $28 $0E

    ld e, $05                                     ; $410E: $1E $05
    ld d, $61                                     ; $4110: $16 $61
    ld hl, $9C90                                  ; $4112: $21 $90 $9C
    ld b, $03                                     ; $4115: $06 $03
    ld c, $03                                     ; $4117: $0E $03
    call Call_000_1111                            ; $4119: $CD $11 $11

jr_03D_411C:
    ld a, [$C31A]                                 ; $411C: $FA $1A $C3
    cp $04                                        ; $411F: $FE $04
    jr nz, jr_03D_4138                            ; $4121: $20 $15

    ld a, [$C002]                                 ; $4123: $FA $02 $C0
    bit 0, a                                      ; $4126: $CB $47
    jr z, jr_03D_4138                             ; $4128: $28 $0E

    ld e, $04                                     ; $412A: $1E $04
    ld d, $6A                                     ; $412C: $16 $6A
    ld hl, $9C21                                  ; $412E: $21 $21 $9C
    ld b, $03                                     ; $4131: $06 $03
    ld c, $03                                     ; $4133: $0E $03
    call Call_000_1111                            ; $4135: $CD $11 $11

jr_03D_4138:
    ld a, [$C31A]                                 ; $4138: $FA $1A $C3
    cp $04                                        ; $413B: $FE $04
    jr nz, jr_03D_4154                            ; $413D: $20 $15

    ld a, [$C002]                                 ; $413F: $FA $02 $C0
    bit 1, a                                      ; $4142: $CB $4F
    jr z, jr_03D_4154                             ; $4144: $28 $0E

    ld e, $04                                     ; $4146: $1E $04
    ld d, $73                                     ; $4148: $16 $73
    ld hl, $9C30                                  ; $414A: $21 $30 $9C
    ld b, $03                                     ; $414D: $06 $03
    ld c, $03                                     ; $414F: $0E $03
    call Call_000_1111                            ; $4151: $CD $11 $11

jr_03D_4154:
    call Call_000_0F9E                            ; $4154: $CD $9E $0F
    ld hl, $D680                                  ; $4157: $21 $80 $D6
    ld de, $44D8                                  ; $415A: $11 $D8 $44
    call Call_000_0F8E                            ; $415D: $CD $8E $0F
    ld hl, $D6C0                                  ; $4160: $21 $C0 $D6
    ld de, $4576                                  ; $4163: $11 $76 $45
    call Call_000_0F8E                            ; $4166: $CD $8E $0F
    ld a, $07                                     ; $4169: $3E $07
    ldh [rWX], a                                  ; $416B: $E0 $4B
    ld a, $48                                     ; $416D: $3E $48
    ldh [rWY], a                                  ; $416F: $E0 $4A
    ld a, $E7                                     ; $4171: $3E $E7
    rst RST_18                                    ; $4173: $DF
    xor a                                         ; $4174: $AF
    ldh [rSTAT], a                                ; $4175: $E0 $41
    ei                                            ; $4177: $FB
    ld de, $4450                                  ; $4178: $11 $50 $44
    ld hl, $C329                                  ; $417B: $21 $29 $C3
    ld c, $20                                     ; $417E: $0E $20

jr_03D_4180:
    ld a, [de]                                    ; $4180: $1A
    inc de                                        ; $4181: $13
    ld [hl+], a                                   ; $4182: $22
    dec c                                         ; $4183: $0D
    jr nz, jr_03D_4180                            ; $4184: $20 $FA

    ld a, [$C31B]                                 ; $4186: $FA $1B $C3
    ld [$C32D], a                                 ; $4189: $EA $2D $C3
    and $0F                                       ; $418C: $E6 $0F
    add a                                         ; $418E: $87
    ld e, a                                       ; $418F: $5F
    ld d, $00                                     ; $4190: $16 $00
    ld hl, $44B8                                  ; $4192: $21 $B8 $44
    add hl, de                                    ; $4195: $19
    ld a, [hl+]                                   ; $4196: $2A
    ld [$C32B], a                                 ; $4197: $EA $2B $C3
    ld a, [hl]                                    ; $419A: $7E
    ld [$C32C], a                                 ; $419B: $EA $2C $C3
    ld a, [$C32C]                                 ; $419E: $FA $2C $C3
    ld e, a                                       ; $41A1: $5F
    add a                                         ; $41A2: $87
    add e                                         ; $41A3: $83
    add a                                         ; $41A4: $87
    ld e, a                                       ; $41A5: $5F
    ld a, [$C32B]                                 ; $41A6: $FA $2B $C3
    add e                                         ; $41A9: $83
    add a                                         ; $41AA: $87
    ld e, a                                       ; $41AB: $5F
    ld d, $00                                     ; $41AC: $16 $00
    ld hl, $4470                                  ; $41AE: $21 $70 $44
    add hl, de                                    ; $41B1: $19
    ld a, [hl+]                                   ; $41B2: $2A
    ld [$C32D], a                                 ; $41B3: $EA $2D $C3
    add a                                         ; $41B6: $87
    add a                                         ; $41B7: $87
    ld [$D6D4], a                                 ; $41B8: $EA $D4 $D6
    ld a, [hl]                                    ; $41BB: $7E
    ld [$D6CE], a                                 ; $41BC: $EA $CE $D6
    ld a, $8A                                     ; $41BF: $3E $8A
    call Call_000_135D                            ; $41C1: $CD $5D $13
    call Call_000_0424                            ; $41C4: $CD $24 $04
    ld a, $1B                                     ; $41C7: $3E $1B
    ldh [rBGP], a                                 ; $41C9: $E0 $47
    ld a, $2F                                     ; $41CB: $3E $2F
    ldh [rOBP0], a                                ; $41CD: $E0 $48
    ld a, $1F                                     ; $41CF: $3E $1F
    ldh [rOBP1], a                                ; $41D1: $E0 $49
    call Call_000_147A                            ; $41D3: $CD $7A $14
    jp Jump_03D_42C2                              ; $41D6: $C3 $C2 $42


Jump_03D_41D9:
    call Call_03D_443B                            ; $41D9: $CD $3B $44
    ld a, b                                       ; $41DC: $78
    bit 4, a                                      ; $41DD: $CB $67
    jp nz, Jump_03D_43B7                          ; $41DF: $C2 $B7 $43

    bit 5, a                                      ; $41E2: $CB $6F
    jp nz, Jump_03D_4428                          ; $41E4: $C2 $28 $44

    rra                                           ; $41E7: $1F
    jr c, jr_03D_425E                             ; $41E8: $38 $74

    rra                                           ; $41EA: $1F
    jp c, Jump_03D_4290                           ; $41EB: $DA $90 $42

    rra                                           ; $41EE: $1F
    jp c, Jump_03D_41F9                           ; $41EF: $DA $F9 $41

    rra                                           ; $41F2: $1F
    jp c, Jump_03D_4234                           ; $41F3: $DA $34 $42

    jp Jump_03D_434E                              ; $41F6: $C3 $4E $43


Jump_03D_41F9:
    ld a, [$C32C]                                 ; $41F9: $FA $2C $C3
    or a                                          ; $41FC: $B7
    jp z, Jump_03D_434E                           ; $41FD: $CA $4E $43

    ld a, [$C32B]                                 ; $4200: $FA $2B $C3
    or a                                          ; $4203: $B7
    jr z, jr_03D_421D                             ; $4204: $28 $17

    cp $05                                        ; $4206: $FE $05
    jp nz, Jump_03D_422D                          ; $4208: $C2 $2D $42

    ld a, [$C31A]                                 ; $420B: $FA $1A $C3
    cp $04                                        ; $420E: $FE $04
    jp nz, Jump_03D_434E                          ; $4210: $C2 $4E $43

    ld a, [$C002]                                 ; $4213: $FA $02 $C0
    bit 1, a                                      ; $4216: $CB $4F
    jp z, Jump_03D_434E                           ; $4218: $CA $4E $43

    jr jr_03D_422D                                ; $421B: $18 $10

jr_03D_421D:
    ld a, [$C31A]                                 ; $421D: $FA $1A $C3
    cp $04                                        ; $4220: $FE $04
    jp nz, Jump_03D_434E                          ; $4222: $C2 $4E $43

    ld a, [$C002]                                 ; $4225: $FA $02 $C0
    bit 0, a                                      ; $4228: $CB $47
    jp z, Jump_03D_434E                           ; $422A: $CA $4E $43

Jump_03D_422D:
jr_03D_422D:
    xor a                                         ; $422D: $AF
    ld [$C32C], a                                 ; $422E: $EA $2C $C3
    jp Jump_03D_42C2                              ; $4231: $C3 $C2 $42


Jump_03D_4234:
    ld a, [$C32C]                                 ; $4234: $FA $2C $C3
    or a                                          ; $4237: $B7
    jp nz, Jump_03D_434E                          ; $4238: $C2 $4E $43

    ld a, [$C32B]                                 ; $423B: $FA $2B $C3
    or a                                          ; $423E: $B7
    jr z, jr_03D_424F                             ; $423F: $28 $0E

    cp $05                                        ; $4241: $FE $05
    jr nz, jr_03D_4257                            ; $4243: $20 $12

    ld a, [$C001]                                 ; $4245: $FA $01 $C0
    bit 6, a                                      ; $4248: $CB $77
    jp z, Jump_03D_434E                           ; $424A: $CA $4E $43

    jr jr_03D_4257                                ; $424D: $18 $08

jr_03D_424F:
    ld a, [$C001]                                 ; $424F: $FA $01 $C0
    bit 7, a                                      ; $4252: $CB $7F
    jp z, Jump_03D_434E                           ; $4254: $CA $4E $43

jr_03D_4257:
    ld a, $01                                     ; $4257: $3E $01
    ld [$C32C], a                                 ; $4259: $EA $2C $C3
    jr jr_03D_42C2                                ; $425C: $18 $64

jr_03D_425E:
    ld a, [$C32C]                                 ; $425E: $FA $2C $C3
    or a                                          ; $4261: $B7
    jr nz, jr_03D_4278                            ; $4262: $20 $14

    ld c, $04                                     ; $4264: $0E $04
    ld a, [$C31A]                                 ; $4266: $FA $1A $C3
    cp $04                                        ; $4269: $FE $04
    jr nz, jr_03D_4283                            ; $426B: $20 $16

    ld a, [$C002]                                 ; $426D: $FA $02 $C0
    bit 1, a                                      ; $4270: $CB $4F
    jr z, jr_03D_4283                             ; $4272: $28 $0F

    ld c, $05                                     ; $4274: $0E $05
    jr jr_03D_4283                                ; $4276: $18 $0B

jr_03D_4278:
    ld c, $04                                     ; $4278: $0E $04
    ld a, [$C001]                                 ; $427A: $FA $01 $C0
    bit 6, a                                      ; $427D: $CB $77
    jr z, jr_03D_4283                             ; $427F: $28 $02

    ld c, $05                                     ; $4281: $0E $05

jr_03D_4283:
    ld a, [$C32B]                                 ; $4283: $FA $2B $C3
    cp c                                          ; $4286: $B9
    jp nc, Jump_03D_434E                          ; $4287: $D2 $4E $43

    inc a                                         ; $428A: $3C
    ld [$C32B], a                                 ; $428B: $EA $2B $C3
    jr jr_03D_42C2                                ; $428E: $18 $32

Jump_03D_4290:
    ld a, [$C32C]                                 ; $4290: $FA $2C $C3
    or a                                          ; $4293: $B7
    jr nz, jr_03D_42AA                            ; $4294: $20 $14

    ld c, $02                                     ; $4296: $0E $02
    ld a, [$C31A]                                 ; $4298: $FA $1A $C3
    cp $04                                        ; $429B: $FE $04
    jr nz, jr_03D_42B5                            ; $429D: $20 $16

    ld a, [$C002]                                 ; $429F: $FA $02 $C0
    bit 0, a                                      ; $42A2: $CB $47
    jr z, jr_03D_42B5                             ; $42A4: $28 $0F

    ld c, $01                                     ; $42A6: $0E $01
    jr jr_03D_42B5                                ; $42A8: $18 $0B

jr_03D_42AA:
    ld c, $02                                     ; $42AA: $0E $02
    ld a, [$C001]                                 ; $42AC: $FA $01 $C0
    bit 7, a                                      ; $42AF: $CB $7F
    jr z, jr_03D_42B5                             ; $42B1: $28 $02

    ld c, $01                                     ; $42B3: $0E $01

jr_03D_42B5:
    ld a, [$C32B]                                 ; $42B5: $FA $2B $C3
    cp c                                          ; $42B8: $B9
    jp c, Jump_03D_434E                           ; $42B9: $DA $4E $43

    dec a                                         ; $42BC: $3D
    ld [$C32B], a                                 ; $42BD: $EA $2B $C3
    jr jr_03D_42C2                                ; $42C0: $18 $00

Jump_03D_42C2:
jr_03D_42C2:
    ld a, [$C32B]                                 ; $42C2: $FA $2B $C3
    ld c, a                                       ; $42C5: $4F
    add a                                         ; $42C6: $87
    add c                                         ; $42C7: $81
    add a                                         ; $42C8: $87
    add a                                         ; $42C9: $87
    add a                                         ; $42CA: $87
    add $08                                       ; $42CB: $C6 $08
    ld [$D684], a                                 ; $42CD: $EA $84 $D6
    ld a, [$C32C]                                 ; $42D0: $FA $2C $C3
    ld c, a                                       ; $42D3: $4F
    add a                                         ; $42D4: $87
    add c                                         ; $42D5: $81
    add a                                         ; $42D6: $87
    add a                                         ; $42D7: $87
    add a                                         ; $42D8: $87
    add $50                                       ; $42D9: $C6 $50
    ld [$D686], a                                 ; $42DB: $EA $86 $D6
    ld a, [$C32C]                                 ; $42DE: $FA $2C $C3
    ld e, a                                       ; $42E1: $5F
    add a                                         ; $42E2: $87
    add e                                         ; $42E3: $83
    add a                                         ; $42E4: $87
    ld e, a                                       ; $42E5: $5F
    ld a, [$C32B]                                 ; $42E6: $FA $2B $C3
    add e                                         ; $42E9: $83
    add a                                         ; $42EA: $87
    ld e, a                                       ; $42EB: $5F
    ld d, $00                                     ; $42EC: $16 $00
    ld hl, $4470                                  ; $42EE: $21 $70 $44
    add hl, de                                    ; $42F1: $19
    ld a, [hl+]                                   ; $42F2: $2A
    ld [$C32D], a                                 ; $42F3: $EA $2D $C3
    add a                                         ; $42F6: $87
    add a                                         ; $42F7: $87
    ld [$D6D4], a                                 ; $42F8: $EA $D4 $D6
    ld a, [hl]                                    ; $42FB: $7E
    ld [$D6CE], a                                 ; $42FC: $EA $CE $D6
    ld a, [$C32D]                                 ; $42FF: $FA $2D $C3
    add a                                         ; $4302: $87
    add a                                         ; $4303: $87
    ld e, a                                       ; $4304: $5F
    ld d, $00                                     ; $4305: $16 $00
    ld hl, $4488                                  ; $4307: $21 $88 $44
    add hl, de                                    ; $430A: $19
    ld e, [hl]                                    ; $430B: $5E
    inc hl                                        ; $430C: $23
    ld d, [hl]                                    ; $430D: $56
    inc hl                                        ; $430E: $23
    push hl                                       ; $430F: $E5
    ld hl, $D700                                  ; $4310: $21 $00 $D7
    call Call_000_0F8E                            ; $4313: $CD $8E $0F
    ld a, $30                                     ; $4316: $3E $30
    ld [$D704], a                                 ; $4318: $EA $04 $D7
    ld a, $40                                     ; $431B: $3E $40
    ld [$D706], a                                 ; $431D: $EA $06 $D7
    xor a                                         ; $4320: $AF
    ld [$D700], a                                 ; $4321: $EA $00 $D7
    pop hl                                        ; $4324: $E1
    ld a, [hl+]                                   ; $4325: $2A
    ld [$C331], a                                 ; $4326: $EA $31 $C3
    ld a, [hl]                                    ; $4329: $7E
    ld [$C332], a                                 ; $432A: $EA $32 $C3
    ld hl, $8000                                  ; $432D: $21 $00 $80
    ld a, l                                       ; $4330: $7D
    ld [$C32F], a                                 ; $4331: $EA $2F $C3
    ld a, h                                       ; $4334: $7C
    ld [$C330], a                                 ; $4335: $EA $30 $C3
    ld a, $10                                     ; $4338: $3E $10
    ld [$C32E], a                                 ; $433A: $EA $2E $C3
    ld a, [$C32D]                                 ; $433D: $FA $2D $C3
    ld [$C31B], a                                 ; $4340: $EA $1B $C3
    ld b, $34                                     ; $4343: $06 $34
    ld hl, $4000                                  ; $4345: $21 $00 $40
    rst RST_08                                    ; $4348: $CF
    call Call_000_147A                            ; $4349: $CD $7A $14
    jr jr_03D_43A1                                ; $434C: $18 $53

Jump_03D_434E:
    ld a, [$C32E]                                 ; $434E: $FA $2E $C3
    or a                                          ; $4351: $B7
    jr z, jr_03D_4390                             ; $4352: $28 $3C

    dec a                                         ; $4354: $3D
    ld [$C32E], a                                 ; $4355: $EA $2E $C3
    ld b, $34                                     ; $4358: $06 $34
    ld hl, $4018                                  ; $435A: $21 $18 $40
    rst RST_08                                    ; $435D: $CF
    ld de, $0040                                  ; $435E: $11 $40 $00
    ld a, [$C32F]                                 ; $4361: $FA $2F $C3
    ld l, a                                       ; $4364: $6F
    ld a, [$C330]                                 ; $4365: $FA $30 $C3
    ld h, a                                       ; $4368: $67
    add hl, de                                    ; $4369: $19
    ld a, l                                       ; $436A: $7D
    ld [$C32F], a                                 ; $436B: $EA $2F $C3
    ld a, h                                       ; $436E: $7C
    ld [$C330], a                                 ; $436F: $EA $30 $C3
    ld a, [$C331]                                 ; $4372: $FA $31 $C3
    ld l, a                                       ; $4375: $6F
    ld a, [$C332]                                 ; $4376: $FA $32 $C3
    ld h, a                                       ; $4379: $67
    add hl, de                                    ; $437A: $19
    ld a, l                                       ; $437B: $7D
    ld [$C331], a                                 ; $437C: $EA $31 $C3
    ld a, h                                       ; $437F: $7C
    ld [$C332], a                                 ; $4380: $EA $32 $C3
    ld a, [$C32E]                                 ; $4383: $FA $2E $C3
    or a                                          ; $4386: $B7
    jr nz, jr_03D_43A1                            ; $4387: $20 $18

    ld a, $80                                     ; $4389: $3E $80
    ld [$D700], a                                 ; $438B: $EA $00 $D7
    jr jr_03D_43A1                                ; $438E: $18 $11

jr_03D_4390:
    ld hl, $D700                                  ; $4390: $21 $00 $D7
    call Call_000_0E28                            ; $4393: $CD $28 $0E
    ld a, [$C329]                                 ; $4396: $FA $29 $C3
    and $03                                       ; $4399: $E6 $03
    jr nz, jr_03D_43A1                            ; $439B: $20 $04

    ld hl, $FFE2                                  ; $439D: $21 $E2 $FF
    dec [hl]                                      ; $43A0: $35

jr_03D_43A1:
    ld hl, $D680                                  ; $43A1: $21 $80 $D6
    call Call_000_0E28                            ; $43A4: $CD $28 $0E
    ld hl, $C329                                  ; $43A7: $21 $29 $C3
    ld e, [hl]                                    ; $43AA: $5E
    inc hl                                        ; $43AB: $23
    ld d, [hl]                                    ; $43AC: $56
    inc de                                        ; $43AD: $13
    ld [hl], d                                    ; $43AE: $72
    dec hl                                        ; $43AF: $2B
    ld [hl], e                                    ; $43B0: $73
    call Call_000_0424                            ; $43B1: $CD $24 $04
    jp Jump_03D_41D9                              ; $43B4: $C3 $D9 $41


Jump_03D_43B7:
    ld a, [$C31A]                                 ; $43B7: $FA $1A $C3
    cp $04                                        ; $43BA: $FE $04
    jr nz, jr_03D_43FA                            ; $43BC: $20 $3C

    ld a, [$C002]                                 ; $43BE: $FA $02 $C0
    bit 0, a                                      ; $43C1: $CB $47
    jr z, jr_03D_43FA                             ; $43C3: $28 $35

    bit 1, a                                      ; $43C5: $CB $4F
    jp z, Jump_03D_43FA                           ; $43C7: $CA $FA $43

    ld a, [$C001]                                 ; $43CA: $FA $01 $C0
    bit 6, a                                      ; $43CD: $CB $77
    jr z, jr_03D_43FA                             ; $43CF: $28 $29

    bit 7, a                                      ; $43D1: $CB $7F
    jr z, jr_03D_43FA                             ; $43D3: $28 $25

    call Call_03D_443B                            ; $43D5: $CD $3B $44
    bit 6, c                                      ; $43D8: $CB $71
    jp z, Jump_03D_43FA                           ; $43DA: $CA $FA $43

    ld a, [$C32D]                                 ; $43DD: $FA $2D $C3
    cp $02                                        ; $43E0: $FE $02
    jr nz, jr_03D_43E9                            ; $43E2: $20 $05

    ld a, $0E                                     ; $43E4: $3E $0E
    jp Jump_03D_43F7                              ; $43E6: $C3 $F7 $43


jr_03D_43E9:
    ld a, $0C                                     ; $43E9: $3E $0C
    bit 2, c                                      ; $43EB: $CB $51
    jp nz, Jump_03D_43F7                          ; $43ED: $C2 $F7 $43

    bit 3, c                                      ; $43F0: $CB $59
    jp z, Jump_03D_43FA                           ; $43F2: $CA $FA $43

    ld a, $0D                                     ; $43F5: $3E $0D

Jump_03D_43F7:
    ld [$C32D], a                                 ; $43F7: $EA $2D $C3

Jump_03D_43FA:
jr_03D_43FA:
    ld a, [$C32D]                                 ; $43FA: $FA $2D $C3
    ld [$C31B], a                                 ; $43FD: $EA $1B $C3
    ld hl, $C03A                                  ; $4400: $21 $3A $C0
    res 2, [hl]                                   ; $4403: $CB $96
    ld a, $AD                                     ; $4405: $3E $AD
    call Call_000_1360                            ; $4407: $CD $60 $13
    call Call_000_0438                            ; $440A: $CD $38 $04
    ld a, $00                                     ; $440D: $3E $00
    call Call_000_135D                            ; $440F: $CD $5D $13
    call Call_000_0424                            ; $4412: $CD $24 $04
    ld a, [$C31A]                                 ; $4415: $FA $1A $C3
    cp $04                                        ; $4418: $FE $04
    jr nz, jr_03D_4422                            ; $441A: $20 $06

    ld b, $3D                                     ; $441C: $06 $3D
    ld hl, $4616                                  ; $441E: $21 $16 $46
    rst RST_00                                    ; $4421: $C7

jr_03D_4422:
    ld b, $3E                                     ; $4422: $06 $3E
    ld hl, $45C8                                  ; $4424: $21 $C8 $45
    rst RST_00                                    ; $4427: $C7

Jump_03D_4428:
    ld hl, $C03A                                  ; $4428: $21 $3A $C0
    res 2, [hl]                                   ; $442B: $CB $96
    ld a, $00                                     ; $442D: $3E $00
    call Call_000_135D                            ; $442F: $CD $5D $13
    call Call_000_0424                            ; $4432: $CD $24 $04
    ld b, $3C                                     ; $4435: $06 $3C
    ld hl, $6F95                                  ; $4437: $21 $95 $6F
    rst RST_00                                    ; $443A: $C7

Call_03D_443B:
    ld a, [$C2D0]                                 ; $443B: $FA $D0 $C2
    cp $00                                        ; $443E: $FE $00
    jp nz, Jump_03D_4449                          ; $4440: $C2 $49 $44

    ld hl, $FF98                                  ; $4443: $21 $98 $FF
    jp Jump_03D_444C                              ; $4446: $C3 $4C $44


Jump_03D_4449:
    ld hl, $FFAB                                  ; $4449: $21 $AB $FF

Jump_03D_444C:
    ld c, [hl]                                    ; $444C: $4E
    inc hl                                        ; $444D: $23
    ld b, [hl]                                    ; $444E: $46
    ret                                           ; $444F: $C9


    nop                                           ; $4450: $00
    nop                                           ; $4451: $00
    ld bc, $0000                                  ; $4452: $01 $00 $00
    nop                                           ; $4455: $00
    nop                                           ; $4456: $00
    nop                                           ; $4457: $00
    nop                                           ; $4458: $00
    nop                                           ; $4459: $00
    nop                                           ; $445A: $00
    nop                                           ; $445B: $00
    nop                                           ; $445C: $00
    nop                                           ; $445D: $00
    nop                                           ; $445E: $00
    nop                                           ; $445F: $00
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    nop                                           ; $4463: $00
    nop                                           ; $4464: $00
    nop                                           ; $4465: $00
    nop                                           ; $4466: $00
    nop                                           ; $4467: $00
    nop                                           ; $4468: $00
    nop                                           ; $4469: $00
    nop                                           ; $446A: $00
    nop                                           ; $446B: $00
    nop                                           ; $446C: $00
    nop                                           ; $446D: $00
    nop                                           ; $446E: $00
    nop                                           ; $446F: $00
    ld a, [bc]                                    ; $4470: $0A
    db $EC                                        ; $4471: $EC
    nop                                           ; $4472: $00
    adc [hl]                                      ; $4473: $8E
    ld [bc], a                                    ; $4474: $02
    and h                                         ; $4475: $A4
    inc b                                         ; $4476: $04
    or [hl]                                       ; $4477: $B6
    ld b, $C8                                     ; $4478: $06 $C8
    dec bc                                        ; $447A: $0B
    ld hl, sp+$08                                 ; $447B: $F8 $08
    ret c                                         ; $447D: $D8

    ld bc, $039A                                  ; $447E: $01 $9A $03
    xor h                                         ; $4481: $AC
    dec b                                         ; $4482: $05
    cp [hl]                                       ; $4483: $BE
    rlca                                          ; $4484: $07
    ret nc                                        ; $4485: $D0

    add hl, bc                                    ; $4486: $09
    db $E4                                        ; $4487: $E4
    ld a, a                                       ; $4488: $7F
    ld d, l                                       ; $4489: $55
    jr c, @+$42                                   ; $448A: $38 $40

    push de                                       ; $448C: $D5
    ld d, a                                       ; $448D: $57
    jr c, jr_03D_44D4                             ; $448E: $38 $44

    ld b, c                                       ; $4490: $41
    ld e, b                                       ; $4491: $58
    jr c, jr_03D_44DC                             ; $4492: $38 $48

    ld l, b                                       ; $4494: $68
    ld e, d                                       ; $4495: $5A
    jr c, jr_03D_44E4                             ; $4496: $38 $4C

    inc b                                         ; $4498: $04
    ld e, h                                       ; $4499: $5C
    jr c, jr_03D_44EC                             ; $449A: $38 $50

    ld [hl], b                                    ; $449C: $70
    ld e, h                                       ; $449D: $5C
    jr c, jr_03D_44F4                             ; $449E: $38 $54

    call c, $385C                                 ; $44A0: $DC $5C $38
    ld e, b                                       ; $44A3: $58
    ld c, b                                       ; $44A4: $48
    ld e, l                                       ; $44A5: $5D
    jr c, jr_03D_4504                             ; $44A6: $38 $5C

    or h                                          ; $44A8: $B4
    ld e, l                                       ; $44A9: $5D
    jr c, jr_03D_450C                             ; $44AA: $38 $60

    jr nz, jr_03D_450C                            ; $44AC: $20 $5E

    jr c, jr_03D_4514                             ; $44AE: $38 $64

    and d                                         ; $44B0: $A2
    ld e, [hl]                                    ; $44B1: $5E
    jr c, jr_03D_451C                             ; $44B2: $38 $68

    ld d, e                                       ; $44B4: $53
    ld h, b                                       ; $44B5: $60
    jr c, jr_03D_4524                             ; $44B6: $38 $6C

    ld bc, $0100                                  ; $44B8: $01 $00 $01
    ld bc, $0002                                  ; $44BB: $01 $02 $00
    ld [bc], a                                    ; $44BE: $02
    ld bc, $0003                                  ; $44BF: $01 $03 $00
    inc bc                                        ; $44C2: $03
    ld bc, $0004                                  ; $44C3: $01 $04 $00
    inc b                                         ; $44C6: $04
    ld bc, $0100                                  ; $44C7: $01 $00 $01
    dec b                                         ; $44CA: $05
    ld bc, $0000                                  ; $44CB: $01 $00 $00
    dec b                                         ; $44CE: $05
    nop                                           ; $44CF: $00
    ld bc, $0100                                  ; $44D0: $01 $00 $01
    nop                                           ; $44D3: $00

jr_03D_44D4:
    ld [bc], a                                    ; $44D4: $02
    nop                                           ; $44D5: $00
    ld bc, $8000                                  ; $44D6: $01 $00 $80
    nop                                           ; $44D9: $00
    ld [bc], a                                    ; $44DA: $02
    ld [bc], a                                    ; $44DB: $02

jr_03D_44DC:
    ldh [rP1], a                                  ; $44DC: $E0 $00
    ldh [rP1], a                                  ; $44DE: $E0 $00
    nop                                           ; $44E0: $00
    nop                                           ; $44E1: $00
    nop                                           ; $44E2: $00
    nop                                           ; $44E3: $00

jr_03D_44E4:
    nop                                           ; $44E4: $00
    nop                                           ; $44E5: $00
    add b                                         ; $44E6: $80
    nop                                           ; $44E7: $00
    add b                                         ; $44E8: $80
    dec a                                         ; $44E9: $3D
    ld hl, sp+$44                                 ; $44EA: $F8 $44

jr_03D_44EC:
    nop                                           ; $44EC: $00
    nop                                           ; $44ED: $00
    ld hl, sp+$44                                 ; $44EE: $F8 $44
    nop                                           ; $44F0: $00
    nop                                           ; $44F1: $00
    nop                                           ; $44F2: $00
    nop                                           ; $44F3: $00

jr_03D_44F4:
    inc bc                                        ; $44F4: $03
    inc bc                                        ; $44F5: $03
    ret nz                                        ; $44F6: $C0

    ret c                                         ; $44F7: $D8

    ld a, [de]                                    ; $44F8: $1A
    ld b, l                                       ; $44F9: $45
    rst RST_38                                    ; $44FA: $FF
    rst RST_38                                    ; $44FB: $FF
    ld a, [de]                                    ; $44FC: $1A
    ld b, l                                       ; $44FD: $45
    rst RST_38                                    ; $44FE: $FF
    rst RST_38                                    ; $44FF: $FF
    ld sp, $FF45                                  ; $4500: $31 $45 $FF
    rst RST_38                                    ; $4503: $FF

jr_03D_4504:
    ld c, b                                       ; $4504: $48
    ld b, l                                       ; $4505: $45
    rst RST_38                                    ; $4506: $FF
    rst RST_38                                    ; $4507: $FF
    ld e, a                                       ; $4508: $5F
    ld b, l                                       ; $4509: $45
    rst RST_38                                    ; $450A: $FF
    rst RST_38                                    ; $450B: $FF

jr_03D_450C:
    ld e, a                                       ; $450C: $5F
    ld b, l                                       ; $450D: $45
    rst RST_38                                    ; $450E: $FF
    rst RST_38                                    ; $450F: $FF
    ld c, b                                       ; $4510: $48
    ld b, l                                       ; $4511: $45
    rst RST_38                                    ; $4512: $FF
    rst RST_38                                    ; $4513: $FF

jr_03D_4514:
    ld sp, $FF45                                  ; $4514: $31 $45 $FF
    rst RST_38                                    ; $4517: $FF
    rst RST_38                                    ; $4518: $FF
    rst RST_38                                    ; $4519: $FF
    sub b                                         ; $451A: $90
    nop                                           ; $451B: $00

jr_03D_451C:
    nop                                           ; $451C: $00
    rst RST_38                                    ; $451D: $FF
    rst RST_38                                    ; $451E: $FF
    rst RST_38                                    ; $451F: $FF
    inc h                                         ; $4520: $24
    ld b, l                                       ; $4521: $45
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00

jr_03D_4524:
    inc b                                         ; $4524: $04
    nop                                           ; $4525: $00
    nop                                           ; $4526: $00
    nop                                           ; $4527: $00
    nop                                           ; $4528: $00
    db $10                                        ; $4529: $10
    ld b, b                                       ; $452A: $40
    ld [$8000], sp                                ; $452B: $08 $00 $80
    ld [$C010], sp                                ; $452E: $08 $10 $C0
    sub b                                         ; $4531: $90
    nop                                           ; $4532: $00
    nop                                           ; $4533: $00
    rst RST_38                                    ; $4534: $FF
    rst RST_38                                    ; $4535: $FF
    rst RST_38                                    ; $4536: $FF
    dec sp                                        ; $4537: $3B
    ld b, l                                       ; $4538: $45
    nop                                           ; $4539: $00
    nop                                           ; $453A: $00
    inc b                                         ; $453B: $04
    nop                                           ; $453C: $00
    nop                                           ; $453D: $00
    ld [bc], a                                    ; $453E: $02
    nop                                           ; $453F: $00
    db $10                                        ; $4540: $10
    ld b, d                                       ; $4541: $42
    ld [$8200], sp                                ; $4542: $08 $00 $82
    ld [$C210], sp                                ; $4545: $08 $10 $C2
    sub b                                         ; $4548: $90
    nop                                           ; $4549: $00
    nop                                           ; $454A: $00
    rst RST_38                                    ; $454B: $FF
    rst RST_38                                    ; $454C: $FF
    rst RST_38                                    ; $454D: $FF
    ld d, d                                       ; $454E: $52
    ld b, l                                       ; $454F: $45
    nop                                           ; $4550: $00
    nop                                           ; $4551: $00
    inc b                                         ; $4552: $04
    nop                                           ; $4553: $00
    nop                                           ; $4554: $00
    inc b                                         ; $4555: $04
    nop                                           ; $4556: $00
    db $10                                        ; $4557: $10
    ld b, h                                       ; $4558: $44
    ld [$8400], sp                                ; $4559: $08 $00 $84
    ld [$C410], sp                                ; $455C: $08 $10 $C4
    sub b                                         ; $455F: $90
    nop                                           ; $4560: $00
    nop                                           ; $4561: $00
    rst RST_38                                    ; $4562: $FF
    rst RST_38                                    ; $4563: $FF
    rst RST_38                                    ; $4564: $FF
    ld l, c                                       ; $4565: $69
    ld b, l                                       ; $4566: $45
    nop                                           ; $4567: $00
    nop                                           ; $4568: $00
    inc b                                         ; $4569: $04
    nop                                           ; $456A: $00
    nop                                           ; $456B: $00
    ld b, $00                                     ; $456C: $06 $00
    db $10                                        ; $456E: $10
    ld b, [hl]                                    ; $456F: $46
    ld [$8600], sp                                ; $4570: $08 $00 $86
    ld [$C610], sp                                ; $4573: $08 $10 $C6
    add b                                         ; $4576: $80
    nop                                           ; $4577: $00
    inc bc                                        ; $4578: $03
    inc bc                                        ; $4579: $03
    ld l, b                                       ; $457A: $68
    nop                                           ; $457B: $00
    jr jr_03D_457E                                ; $457C: $18 $00

jr_03D_457E:
    nop                                           ; $457E: $00
    nop                                           ; $457F: $00
    nop                                           ; $4580: $00
    nop                                           ; $4581: $00
    nop                                           ; $4582: $00
    nop                                           ; $4583: $00
    adc [hl]                                      ; $4584: $8E
    nop                                           ; $4585: $00
    add b                                         ; $4586: $80
    dec a                                         ; $4587: $3D
    sub [hl]                                      ; $4588: $96
    ld b, l                                       ; $4589: $45
    nop                                           ; $458A: $00
    nop                                           ; $458B: $00
    sub [hl]                                      ; $458C: $96
    ld b, l                                       ; $458D: $45
    nop                                           ; $458E: $00
    nop                                           ; $458F: $00
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    inc bc                                        ; $4592: $03
    inc bc                                        ; $4593: $03
    ret nz                                        ; $4594: $C0

    ret c                                         ; $4595: $D8

    ret z                                         ; $4596: $C8

    ld b, l                                       ; $4597: $45
    rst RST_38                                    ; $4598: $FF
    rst RST_38                                    ; $4599: $FF
    push hl                                       ; $459A: $E5
    ld b, l                                       ; $459B: $45
    rst RST_38                                    ; $459C: $FF
    rst RST_38                                    ; $459D: $FF
    rst RST_38                                    ; $459E: $FF
    ld b, l                                       ; $459F: $45
    rst RST_38                                    ; $45A0: $FF
    rst RST_38                                    ; $45A1: $FF
    push hl                                       ; $45A2: $E5
    ld b, l                                       ; $45A3: $45
    rst RST_38                                    ; $45A4: $FF
    rst RST_38                                    ; $45A5: $FF
    rst RST_38                                    ; $45A6: $FF
    ld b, l                                       ; $45A7: $45
    rst RST_38                                    ; $45A8: $FF
    rst RST_38                                    ; $45A9: $FF
    push hl                                       ; $45AA: $E5
    ld b, l                                       ; $45AB: $45
    rst RST_38                                    ; $45AC: $FF
    rst RST_38                                    ; $45AD: $FF
    rst RST_38                                    ; $45AE: $FF
    ld b, l                                       ; $45AF: $45
    rst RST_38                                    ; $45B0: $FF
    rst RST_38                                    ; $45B1: $FF
    rst RST_38                                    ; $45B2: $FF
    ld b, l                                       ; $45B3: $45
    rst RST_38                                    ; $45B4: $FF
    rst RST_38                                    ; $45B5: $FF
    ret z                                         ; $45B6: $C8

    ld b, l                                       ; $45B7: $45
    rst RST_38                                    ; $45B8: $FF
    rst RST_38                                    ; $45B9: $FF
    rst RST_38                                    ; $45BA: $FF
    ld b, l                                       ; $45BB: $45
    rst RST_38                                    ; $45BC: $FF
    rst RST_38                                    ; $45BD: $FF
    ret z                                         ; $45BE: $C8

    ld b, l                                       ; $45BF: $45
    rst RST_38                                    ; $45C0: $FF
    rst RST_38                                    ; $45C1: $FF
    rst RST_38                                    ; $45C2: $FF
    ld b, l                                       ; $45C3: $45
    rst RST_38                                    ; $45C4: $FF
    rst RST_38                                    ; $45C5: $FF
    rst RST_38                                    ; $45C6: $FF
    rst RST_38                                    ; $45C7: $FF
    add b                                         ; $45C8: $80
    nop                                           ; $45C9: $00
    nop                                           ; $45CA: $00
    rst RST_38                                    ; $45CB: $FF
    rst RST_38                                    ; $45CC: $FF
    rst RST_38                                    ; $45CD: $FF
    jp nc, Jump_000_0045                          ; $45CE: $D2 $45 $00

    nop                                           ; $45D1: $00
    ld b, $00                                     ; $45D2: $06 $00
    nop                                           ; $45D4: $00
    nop                                           ; $45D5: $00
    nop                                           ; $45D6: $00
    ld [$0002], sp                                ; $45D7: $08 $02 $00
    db $10                                        ; $45DA: $10
    inc b                                         ; $45DB: $04
    nop                                           ; $45DC: $00
    jr jr_03D_45E5                                ; $45DD: $18 $06

    nop                                           ; $45DF: $00
    jr nz, jr_03D_45EA                            ; $45E0: $20 $08

    nop                                           ; $45E2: $00
    jr z, jr_03D_45EF                             ; $45E3: $28 $0A

jr_03D_45E5:
    add b                                         ; $45E5: $80
    nop                                           ; $45E6: $00
    nop                                           ; $45E7: $00
    rst RST_38                                    ; $45E8: $FF
    rst RST_38                                    ; $45E9: $FF

jr_03D_45EA:
    rst RST_38                                    ; $45EA: $FF
    rst RST_28                                    ; $45EB: $EF
    ld b, l                                       ; $45EC: $45
    nop                                           ; $45ED: $00
    nop                                           ; $45EE: $00

jr_03D_45EF:
    dec b                                         ; $45EF: $05
    nop                                           ; $45F0: $00
    inc b                                         ; $45F1: $04
    nop                                           ; $45F2: $00
    nop                                           ; $45F3: $00
    inc c                                         ; $45F4: $0C
    ld [bc], a                                    ; $45F5: $02
    nop                                           ; $45F6: $00
    inc d                                         ; $45F7: $14
    inc b                                         ; $45F8: $04
    nop                                           ; $45F9: $00
    inc e                                         ; $45FA: $1C
    ld b, $00                                     ; $45FB: $06 $00
    inc h                                         ; $45FD: $24
    ld [$0080], sp                                ; $45FE: $08 $80 $00
    nop                                           ; $4601: $00
    rst RST_38                                    ; $4602: $FF
    rst RST_38                                    ; $4603: $FF
    rst RST_38                                    ; $4604: $FF
    add hl, bc                                    ; $4605: $09
    ld b, [hl]                                    ; $4606: $46
    nop                                           ; $4607: $00
    nop                                           ; $4608: $00
    inc b                                         ; $4609: $04
    nop                                           ; $460A: $00
    ld [$0000], sp                                ; $460B: $08 $00 $00
    db $10                                        ; $460E: $10
    ld [bc], a                                    ; $460F: $02
    nop                                           ; $4610: $00
    jr @+$06                                      ; $4611: $18 $04

    nop                                           ; $4613: $00
    jr nz, @+$08                                  ; $4614: $20 $06

    ld sp, $DD00                                  ; $4616: $31 $00 $DD
    di                                            ; $4619: $F3
    rst RST_10                                    ; $461A: $D7
    ld hl, $C03A                                  ; $461B: $21 $3A $C0
    res 1, [hl]                                   ; $461E: $CB $8E
    ld a, $00                                     ; $4620: $3E $00
    call Call_000_135D                            ; $4622: $CD $5D $13
    xor a                                         ; $4625: $AF
    ldh [rBGP], a                                 ; $4626: $E0 $47
    ldh [rOBP0], a                                ; $4628: $E0 $48
    ldh [rOBP1], a                                ; $462A: $E0 $49
    call Call_000_13ED                            ; $462C: $CD $ED $13
    ld de, $001D                                  ; $462F: $11 $1D $00
    call Call_000_14C0                            ; $4632: $CD $C0 $14
    call Call_000_0FBD                            ; $4635: $CD $BD $0F
    call Call_000_0FC6                            ; $4638: $CD $C6 $0F
    xor a                                         ; $463B: $AF
    ldh [$FFE4], a                                ; $463C: $E0 $E4
    ldh [$FFE2], a                                ; $463E: $E0 $E2
    ld [$C2AA], a                                 ; $4640: $EA $AA $C2
    ld a, $F0                                     ; $4643: $3E $F0
    ld [$C2AC], a                                 ; $4645: $EA $AC $C2
    ld hl, $4000                                  ; $4648: $21 $00 $40
    ld b, $33                                     ; $464B: $06 $33
    ld de, $C329                                  ; $464D: $11 $29 $C3
    rst RST_20                                    ; $4650: $E7
    ld hl, $C329                                  ; $4651: $21 $29 $C3
    ld de, $8800                                  ; $4654: $11 $00 $88
    ld b, $80                                     ; $4657: $06 $80
    call Call_000_1188                            ; $4659: $CD $88 $11
    ld hl, $6E86                                  ; $465C: $21 $86 $6E
    ld b, $35                                     ; $465F: $06 $35
    ld de, $C329                                  ; $4661: $11 $29 $C3
    rst RST_20                                    ; $4664: $E7
    ld hl, $C329                                  ; $4665: $21 $29 $C3
    ld de, $9000                                  ; $4668: $11 $00 $90
    ld b, $70                                     ; $466B: $06 $70
    call Call_000_1188                            ; $466D: $CD $88 $11
    ld b, $35                                     ; $4670: $06 $35
    ld hl, $4000                                  ; $4672: $21 $00 $40
    rst RST_08                                    ; $4675: $CF
    ld e, $00                                     ; $4676: $1E $00
    ld d, $70                                     ; $4678: $16 $70
    ld hl, $9C00                                  ; $467A: $21 $00 $9C
    ld b, $08                                     ; $467D: $06 $08
    ld c, $02                                     ; $467F: $0E $02
    call Call_000_1139                            ; $4681: $CD $39 $11
    ld e, $00                                     ; $4684: $1E $00
    ld d, $40                                     ; $4686: $16 $40
    ld hl, $9C12                                  ; $4688: $21 $12 $9C
    ld b, $01                                     ; $468B: $06 $01
    ld c, $02                                     ; $468D: $0E $02
    call Call_000_1139                            ; $468F: $CD $39 $11
    ld e, $00                                     ; $4692: $1E $00
    ld d, $54                                     ; $4694: $16 $54
    ld hl, $9C0A                                  ; $4696: $21 $0A $9C
    ld b, $04                                     ; $4699: $06 $04
    ld c, $01                                     ; $469B: $0E $01
    call Call_000_1111                            ; $469D: $CD $11 $11
    call Call_000_0F9E                            ; $46A0: $CD $9E $0F
    ld a, [$C31B]                                 ; $46A3: $FA $1B $C3
    cp $0F                                        ; $46A6: $FE $0F
    jr c, jr_03D_46AC                             ; $46A8: $38 $02

    ld a, $0E                                     ; $46AA: $3E $0E

jr_03D_46AC:
    push af                                       ; $46AC: $F5
    ld [$C31B], a                                 ; $46AD: $EA $1B $C3
    ld hl, $4D1E                                  ; $46B0: $21 $1E $4D
    add a                                         ; $46B3: $87
    ld e, a                                       ; $46B4: $5F
    ld d, $00                                     ; $46B5: $16 $00
    add hl, de                                    ; $46B7: $19
    ld e, [hl]                                    ; $46B8: $5E
    inc hl                                        ; $46B9: $23
    ld d, [hl]                                    ; $46BA: $56
    ld hl, $D680                                  ; $46BB: $21 $80 $D6
    call Call_000_0F8E                            ; $46BE: $CD $8E $0F
    pop af                                        ; $46C1: $F1
    ld [$D6A9], a                                 ; $46C2: $EA $A9 $D6
    ld hl, $4D00                                  ; $46C5: $21 $00 $4D
    add a                                         ; $46C8: $87
    ld e, a                                       ; $46C9: $5F
    ld d, $00                                     ; $46CA: $16 $00
    add hl, de                                    ; $46CC: $19
    ld a, [hl+]                                   ; $46CD: $2A
    ld e, [hl]                                    ; $46CE: $5E
    ld hl, $D6AA                                  ; $46CF: $21 $AA $D6
    ld [hl+], a                                   ; $46D2: $22
    ld [hl], e                                    ; $46D3: $73
    inc hl                                        ; $46D4: $23
    xor a                                         ; $46D5: $AF
    ld [hl+], a                                   ; $46D6: $22
    ld a, [$C31B]                                 ; $46D7: $FA $1B $C3
    ld hl, $4D5A                                  ; $46DA: $21 $5A $4D
    add a                                         ; $46DD: $87
    ld e, a                                       ; $46DE: $5F
    ld d, $00                                     ; $46DF: $16 $00
    add hl, de                                    ; $46E1: $19
    ld a, [hl+]                                   ; $46E2: $2A
    ld d, [hl]                                    ; $46E3: $56
    ld [$C315], a                                 ; $46E4: $EA $15 $C3
    ld a, d                                       ; $46E7: $7A
    ld [$C316], a                                 ; $46E8: $EA $16 $C3
    ld b, $34                                     ; $46EB: $06 $34
    ld hl, $4028                                  ; $46ED: $21 $28 $40
    rst RST_08                                    ; $46F0: $CF
    ld a, [$C31B]                                 ; $46F1: $FA $1B $C3
    ld hl, $4D78                                  ; $46F4: $21 $78 $4D
    add a                                         ; $46F7: $87
    ld e, a                                       ; $46F8: $5F
    ld d, $00                                     ; $46F9: $16 $00
    add hl, de                                    ; $46FB: $19
    ld a, [hl+]                                   ; $46FC: $2A
    ld d, [hl]                                    ; $46FD: $56
    ld l, a                                       ; $46FE: $6F
    ld h, d                                       ; $46FF: $62
    ld b, $33                                     ; $4700: $06 $33
    ld de, $C429                                  ; $4702: $11 $29 $C4
    rst RST_20                                    ; $4705: $E7
    ld hl, $C429                                  ; $4706: $21 $29 $C4
    ld de, $8400                                  ; $4709: $11 $00 $84
    ld b, $40                                     ; $470C: $06 $40
    call Call_000_1188                            ; $470E: $CD $88 $11
    ld hl, $462C                                  ; $4711: $21 $2C $46
    ld b, $33                                     ; $4714: $06 $33
    ld de, $C429                                  ; $4716: $11 $29 $C4
    rst RST_20                                    ; $4719: $E7
    ld a, [$C31B]                                 ; $471A: $FA $1B $C3
    ld e, $00                                     ; $471D: $1E $00
    ld d, a                                       ; $471F: $57
    ld hl, $C429                                  ; $4720: $21 $29 $C4
    add hl, de                                    ; $4723: $19
    ld de, $9700                                  ; $4724: $11 $00 $97
    ld b, $10                                     ; $4727: $06 $10
    call Call_000_1188                            ; $4729: $CD $88 $11
    ld a, $07                                     ; $472C: $3E $07
    ldh [rWX], a                                  ; $472E: $E0 $4B
    ld a, $80                                     ; $4730: $3E $80
    ldh [rWY], a                                  ; $4732: $E0 $4A
    ld a, $E7                                     ; $4734: $3E $E7
    rst RST_18                                    ; $4736: $DF
    xor a                                         ; $4737: $AF
    ldh [rSTAT], a                                ; $4738: $E0 $41
    ei                                            ; $473A: $FB
    ld de, $4CC0                                  ; $473B: $11 $C0 $4C
    ld hl, $C329                                  ; $473E: $21 $29 $C3
    ld c, $40                                     ; $4741: $0E $40

jr_03D_4743:
    ld a, [de]                                    ; $4743: $1A
    inc de                                        ; $4744: $13
    ld [hl+], a                                   ; $4745: $22
    dec c                                         ; $4746: $0D
    jr nz, jr_03D_4743                            ; $4747: $20 $FA

    ld a, [$C351]                                 ; $4749: $FA $51 $C3
    ldh [$FFE2], a                                ; $474C: $E0 $E2
    ld a, $83                                     ; $474E: $3E $83
    call Call_000_135D                            ; $4750: $CD $5D $13
    ld b, $34                                     ; $4753: $06 $34
    ld hl, $4000                                  ; $4755: $21 $00 $40
    rst RST_08                                    ; $4758: $CF
    call Call_000_147A                            ; $4759: $CD $7A $14
    call Call_000_0424                            ; $475C: $CD $24 $04
    ld a, $1B                                     ; $475F: $3E $1B
    ldh [rBGP], a                                 ; $4761: $E0 $47
    ld a, $1F                                     ; $4763: $3E $1F
    ldh [rOBP0], a                                ; $4765: $E0 $48
    ldh [rOBP1], a                                ; $4767: $E0 $49
    call Call_000_147A                            ; $4769: $CD $7A $14

Jump_03D_476C:
    call Call_03D_4ABD                            ; $476C: $CD $BD $4A
    ld b, $3E                                     ; $476F: $06 $3E
    ld hl, $4000                                  ; $4771: $21 $00 $40
    rst RST_08                                    ; $4774: $CF
    ld hl, $D680                                  ; $4775: $21 $80 $D6
    call Call_03D_4C9D                            ; $4778: $CD $9D $4C
    ld a, [$D6AC]                                 ; $477B: $FA $AC $D6
    or a                                          ; $477E: $B7
    jr z, jr_03D_47D8                             ; $477F: $28 $57

    ld hl, $D6C0                                  ; $4781: $21 $C0 $D6
    ld a, [hl]                                    ; $4784: $7E
    add a                                         ; $4785: $87
    jr nc, jr_03D_478F                            ; $4786: $30 $07

    ld hl, $D700                                  ; $4788: $21 $00 $D7
    ld a, [hl]                                    ; $478B: $7E
    add a                                         ; $478C: $87
    jr c, jr_03D_47D8                             ; $478D: $38 $49

jr_03D_478F:
    push hl                                       ; $478F: $E5
    ld a, [$D6A9]                                 ; $4790: $FA $A9 $D6
    ld hl, $4D3C                                  ; $4793: $21 $3C $4D
    add a                                         ; $4796: $87
    ld e, a                                       ; $4797: $5F
    ld d, $00                                     ; $4798: $16 $00
    add hl, de                                    ; $479A: $19
    ld e, [hl]                                    ; $479B: $5E
    inc hl                                        ; $479C: $23
    ld d, [hl]                                    ; $479D: $56
    pop hl                                        ; $479E: $E1
    push hl                                       ; $479F: $E5
    call Call_000_0F8E                            ; $47A0: $CD $8E $0F
    pop de                                        ; $47A3: $D1
    ld hl, $0029                                  ; $47A4: $21 $29 $00
    add hl, de                                    ; $47A7: $19
    ld a, [$D6A9]                                 ; $47A8: $FA $A9 $D6
    ld [hl+], a                                   ; $47AB: $22
    ld a, [$D6AA]                                 ; $47AC: $FA $AA $D6
    ld [hl+], a                                   ; $47AF: $22
    ld a, [$D6AB]                                 ; $47B0: $FA $AB $D6
    ld [hl+], a                                   ; $47B3: $22
    xor a                                         ; $47B4: $AF
    ld [hl+], a                                   ; $47B5: $22
    inc hl                                        ; $47B6: $23
    inc hl                                        ; $47B7: $23
    inc hl                                        ; $47B8: $23
    ld a, [$D6B0]                                 ; $47B9: $FA $B0 $D6
    ld [hl], a                                    ; $47BC: $77
    ld hl, $0004                                  ; $47BD: $21 $04 $00
    add hl, de                                    ; $47C0: $19
    ld a, [$D684]                                 ; $47C1: $FA $84 $D6
    ld [hl], a                                    ; $47C4: $77
    ld hl, $0006                                  ; $47C5: $21 $06 $00
    add hl, de                                    ; $47C8: $19
    ld a, [$D686]                                 ; $47C9: $FA $86 $D6
    sub $10                                       ; $47CC: $D6 $10
    ld [hl], a                                    ; $47CE: $77
    ld a, $AE                                     ; $47CF: $3E $AE
    call Call_000_1360                            ; $47D1: $CD $60 $13
    ld hl, $D6B0                                  ; $47D4: $21 $B0 $D6
    inc [hl]                                      ; $47D7: $34

jr_03D_47D8:
    ld hl, $D6C0                                  ; $47D8: $21 $C0 $D6
    ld a, [hl]                                    ; $47DB: $7E
    add a                                         ; $47DC: $87
    jr nc, jr_03D_47E5                            ; $47DD: $30 $06

    call Call_03D_72CC                            ; $47DF: $CD $CC $72
    ld hl, $D6C0                                  ; $47E2: $21 $C0 $D6

jr_03D_47E5:
    ld hl, $D700                                  ; $47E5: $21 $00 $D7
    ld a, [hl]                                    ; $47E8: $7E
    add a                                         ; $47E9: $87
    jr nc, jr_03D_47EF                            ; $47EA: $30 $03

    call Call_03D_72CC                            ; $47EC: $CD $CC $72

jr_03D_47EF:
    ld hl, $D740                                  ; $47EF: $21 $40 $D7
    ld c, $05                                     ; $47F2: $0E $05

jr_03D_47F4:
    push bc                                       ; $47F4: $C5
    push hl                                       ; $47F5: $E5
    ld a, [hl]                                    ; $47F6: $7E
    add a                                         ; $47F7: $87
    jr nc, jr_03D_4800                            ; $47F8: $30 $06

    call $66CD                                    ; $47FA: $CD $CD $66
    call Call_03D_4C9D                            ; $47FD: $CD $9D $4C

jr_03D_4800:
    pop hl                                        ; $4800: $E1
    ld de, $0040                                  ; $4801: $11 $40 $00
    add hl, de                                    ; $4804: $19
    pop bc                                        ; $4805: $C1
    dec c                                         ; $4806: $0D
    jr nz, jr_03D_47F4                            ; $4807: $20 $EB

    call Call_03D_4C05                            ; $4809: $CD $05 $4C
    ld hl, $C329                                  ; $480C: $21 $29 $C3
    ld e, [hl]                                    ; $480F: $5E
    inc hl                                        ; $4810: $23
    ld d, [hl]                                    ; $4811: $56
    inc de                                        ; $4812: $13
    ld [hl], d                                    ; $4813: $72
    dec hl                                        ; $4814: $2B
    ld [hl], e                                    ; $4815: $73
    call Call_000_0424                            ; $4816: $CD $24 $04
    ld a, [$C35F]                                 ; $4819: $FA $5F $C3
    or a                                          ; $481C: $B7
    jp z, Jump_03D_4827                           ; $481D: $CA $27 $48

    dec a                                         ; $4820: $3D
    ld [$C35F], a                                 ; $4821: $EA $5F $C3
    jp z, Jump_03D_4901                           ; $4824: $CA $01 $49

Jump_03D_4827:
    ldh a, [$FF99]                                ; $4827: $F0 $99
    ld e, a                                       ; $4829: $5F
    ldh a, [$FFAC]                                ; $482A: $F0 $AC
    or e                                          ; $482C: $B3
    ld e, a                                       ; $482D: $5F
    bit 7, a                                      ; $482E: $CB $7F
    jp nz, Jump_03D_4836                          ; $4830: $C2 $36 $48

    jp Jump_03D_476C                              ; $4833: $C3 $6C $47


Jump_03D_4836:
    ld e, $00                                     ; $4836: $1E $00
    ld d, $00                                     ; $4838: $16 $00
    ld hl, $9C00                                  ; $483A: $21 $00 $9C
    ld b, $14                                     ; $483D: $06 $14
    ld c, $02                                     ; $483F: $0E $02
    call Call_000_10EA                            ; $4841: $CD $EA $10
    ld e, $00                                     ; $4844: $1E $00
    ld d, $60                                     ; $4846: $16 $60
    ld hl, $9C05                                  ; $4848: $21 $05 $9C
    ld b, $04                                     ; $484B: $06 $04
    ld c, $02                                     ; $484D: $0E $02
    call Call_000_1139                            ; $484F: $CD $39 $11
    ld e, $00                                     ; $4852: $1E $00
    ld d, $68                                     ; $4854: $16 $68
    ld hl, $9C0D                                  ; $4856: $21 $0D $9C
    ld b, $03                                     ; $4859: $06 $03
    ld c, $02                                     ; $485B: $0E $02
    call Call_000_1139                            ; $485D: $CD $39 $11
    xor a                                         ; $4860: $AF
    ld [$C360], a                                 ; $4861: $EA $60 $C3

jr_03D_4864:
    ldh a, [$FF99]                                ; $4864: $F0 $99
    ld e, a                                       ; $4866: $5F
    ldh a, [$FFAC]                                ; $4867: $F0 $AC
    or e                                          ; $4869: $B3
    bit 4, a                                      ; $486A: $CB $67
    jr nz, jr_03D_48CD                            ; $486C: $20 $5F

    and $03                                       ; $486E: $E6 $03
    jr z, jr_03D_488D                             ; $4870: $28 $1B

    ld a, [$C360]                                 ; $4872: $FA $60 $C3
    cpl                                           ; $4875: $2F
    ld [$C360], a                                 ; $4876: $EA $60 $C3
    ld hl, $9C04                                  ; $4879: $21 $04 $9C
    or a                                          ; $487C: $B7
    jr nz, jr_03D_4882                            ; $487D: $20 $03

    ld hl, $9C0C                                  ; $487F: $21 $0C $9C

jr_03D_4882:
    ld e, $03                                     ; $4882: $1E $03
    ld d, $00                                     ; $4884: $16 $00
    ld b, $01                                     ; $4886: $06 $01
    ld c, $02                                     ; $4888: $0E $02
    call Call_000_10EA                            ; $488A: $CD $EA $10

jr_03D_488D:
    ld a, [$C329]                                 ; $488D: $FA $29 $C3
    ld e, a                                       ; $4890: $5F
    and $07                                       ; $4891: $E6 $07
    jr nz, jr_03D_48BE                            ; $4893: $20 $29

    ld hl, $9C04                                  ; $4895: $21 $04 $9C
    ld a, [$C360]                                 ; $4898: $FA $60 $C3
    or a                                          ; $489B: $B7
    jr z, jr_03D_48A1                             ; $489C: $28 $03

    ld hl, $9C0C                                  ; $489E: $21 $0C $9C

jr_03D_48A1:
    ld a, e                                       ; $48A1: $7B
    and $18                                       ; $48A2: $E6 $18
    jr z, jr_03D_48B3                             ; $48A4: $28 $0D

    ld e, $03                                     ; $48A6: $1E $03
    ld d, $6E                                     ; $48A8: $16 $6E
    ld b, $01                                     ; $48AA: $06 $01
    ld c, $02                                     ; $48AC: $0E $02
    call Call_000_1139                            ; $48AE: $CD $39 $11
    jr jr_03D_48BE                                ; $48B1: $18 $0B

jr_03D_48B3:
    ld e, $03                                     ; $48B3: $1E $03
    ld d, $00                                     ; $48B5: $16 $00
    ld b, $01                                     ; $48B7: $06 $01
    ld c, $02                                     ; $48B9: $0E $02
    call Call_000_10EA                            ; $48BB: $CD $EA $10

jr_03D_48BE:
    ld hl, $C329                                  ; $48BE: $21 $29 $C3
    ld e, [hl]                                    ; $48C1: $5E
    inc hl                                        ; $48C2: $23
    ld d, [hl]                                    ; $48C3: $56
    inc de                                        ; $48C4: $13
    ld [hl], d                                    ; $48C5: $72
    dec hl                                        ; $48C6: $2B
    ld [hl], e                                    ; $48C7: $73
    call Call_000_0424                            ; $48C8: $CD $24 $04
    jr jr_03D_4864                                ; $48CB: $18 $97

jr_03D_48CD:
    ld e, $00                                     ; $48CD: $1E $00
    ld d, $00                                     ; $48CF: $16 $00
    ld hl, $9C00                                  ; $48D1: $21 $00 $9C
    ld b, $12                                     ; $48D4: $06 $12
    ld c, $02                                     ; $48D6: $0E $02
    call Call_000_10EA                            ; $48D8: $CD $EA $10
    ld e, $00                                     ; $48DB: $1E $00
    ld d, $70                                     ; $48DD: $16 $70
    ld hl, $9C00                                  ; $48DF: $21 $00 $9C
    ld b, $08                                     ; $48E2: $06 $08
    ld c, $02                                     ; $48E4: $0E $02
    call Call_000_1139                            ; $48E6: $CD $39 $11
    ld e, $00                                     ; $48E9: $1E $00
    ld d, $54                                     ; $48EB: $16 $54
    ld hl, $9C0A                                  ; $48ED: $21 $0A $9C
    ld b, $04                                     ; $48F0: $06 $04
    ld c, $01                                     ; $48F2: $0E $01
    call Call_000_1111                            ; $48F4: $CD $11 $11
    call Call_03D_4BFF                            ; $48F7: $CD $FF $4B
    ld a, [$C360]                                 ; $48FA: $FA $60 $C3
    or a                                          ; $48FD: $B7
    jp z, Jump_03D_476C                           ; $48FE: $CA $6C $47

Jump_03D_4901:
    xor a                                         ; $4901: $AF
    ld [$D680], a                                 ; $4902: $EA $80 $D6
    ld [$D6C0], a                                 ; $4905: $EA $C0 $D6
    ld [$D700], a                                 ; $4908: $EA $00 $D7
    ld [$D740], a                                 ; $490B: $EA $40 $D7
    ld [$D780], a                                 ; $490E: $EA $80 $D7
    ld [$D7C0], a                                 ; $4911: $EA $C0 $D7
    ld [$D800], a                                 ; $4914: $EA $00 $D8
    ld [$D840], a                                 ; $4917: $EA $40 $D8
    ld a, $82                                     ; $491A: $3E $82
    call Call_000_135D                            ; $491C: $CD $5D $13
    ld e, $00                                     ; $491F: $1E $00
    ld d, $5A                                     ; $4921: $16 $5A
    ld hl, $9C4A                                  ; $4923: $21 $4A $9C
    ld b, $03                                     ; $4926: $06 $03
    ld c, $01                                     ; $4928: $0E $01
    call Call_000_1111                            ; $492A: $CD $11 $11
    ld hl, $C012                                  ; $492D: $21 $12 $C0
    ld c, [hl]                                    ; $4930: $4E
    inc hl                                        ; $4931: $23
    ld b, [hl]                                    ; $4932: $46
    ld hl, $9C4F                                  ; $4933: $21 $4F $9C
    call Call_03D_4C34                            ; $4936: $CD $34 $4C

Jump_03D_4939:
    call Call_000_0424                            ; $4939: $CD $24 $04
    ld a, [$C35E]                                 ; $493C: $FA $5E $C3
    dec a                                         ; $493F: $3D
    ldh [rWY], a                                  ; $4940: $E0 $4A
    ld [$C35E], a                                 ; $4942: $EA $5E $C3
    jp z, Jump_03D_4951                           ; $4945: $CA $51 $49

    dec a                                         ; $4948: $3D
    ldh [rWY], a                                  ; $4949: $E0 $4A
    ld [$C35E], a                                 ; $494B: $EA $5E $C3
    jp nz, Jump_03D_4939                          ; $494E: $C2 $39 $49

Jump_03D_4951:
    xor a                                         ; $4951: $AF
    ldh [$FFE2], a                                ; $4952: $E0 $E2
    ld e, $00                                     ; $4954: $1E $00
    ld d, $00                                     ; $4956: $16 $00
    ld hl, $9800                                  ; $4958: $21 $00 $98
    ld b, $14                                     ; $495B: $06 $14
    ld c, $20                                     ; $495D: $0E $20
    call Call_000_10EA                            ; $495F: $CD $EA $10

Jump_03D_4962:
    call Call_000_0424                            ; $4962: $CD $24 $04
    ld a, [$C35E]                                 ; $4965: $FA $5E $C3
    add $01                                       ; $4968: $C6 $01
    ldh [rWY], a                                  ; $496A: $E0 $4A
    ld [$C35E], a                                 ; $496C: $EA $5E $C3
    cp $10                                        ; $496F: $FE $10
    jp c, Jump_03D_4962                           ; $4971: $DA $62 $49

    ld b, $14                                     ; $4974: $06 $14
    ld c, $10                                     ; $4976: $0E $10
    ld e, $00                                     ; $4978: $1E $00
    ld d, $00                                     ; $497A: $16 $00
    ld hl, $9840                                  ; $497C: $21 $40 $98
    call Call_000_10EA                            ; $497F: $CD $EA $10
    ld e, $00                                     ; $4982: $1E $00
    ld d, $70                                     ; $4984: $16 $70
    ld hl, $9840                                  ; $4986: $21 $40 $98
    ld b, $08                                     ; $4989: $06 $08
    ld c, $02                                     ; $498B: $0E $02
    call Call_000_1139                            ; $498D: $CD $39 $11
    ld e, $00                                     ; $4990: $1E $00
    ld d, $54                                     ; $4992: $16 $54
    ld hl, $984A                                  ; $4994: $21 $4A $98
    ld b, $04                                     ; $4997: $06 $04
    ld c, $01                                     ; $4999: $0E $01
    call Call_000_1111                            ; $499B: $CD $11 $11
    ld hl, $C35B                                  ; $499E: $21 $5B $C3
    ld c, [hl]                                    ; $49A1: $4E
    inc hl                                        ; $49A2: $23
    ld b, [hl]                                    ; $49A3: $46
    ld hl, $984F                                  ; $49A4: $21 $4F $98
    call Call_03D_4C34                            ; $49A7: $CD $34 $4C
    ld a, $8F                                     ; $49AA: $3E $8F
    ldh [rWY], a                                  ; $49AC: $E0 $4A
    ld e, $00                                     ; $49AE: $1E $00
    ld d, $5A                                     ; $49B0: $16 $5A
    ld hl, $988A                                  ; $49B2: $21 $8A $98
    ld b, $03                                     ; $49B5: $06 $03
    ld c, $01                                     ; $49B7: $0E $01
    call Call_000_1111                            ; $49B9: $CD $11 $11
    ld hl, $C012                                  ; $49BC: $21 $12 $C0
    ld c, [hl]                                    ; $49BF: $4E
    inc hl                                        ; $49C0: $23
    ld b, [hl]                                    ; $49C1: $46
    ld hl, $988F                                  ; $49C2: $21 $8F $98
    call Call_03D_4C34                            ; $49C5: $CD $34 $4C
    ld a, [$C35C]                                 ; $49C8: $FA $5C $C3
    or a                                          ; $49CB: $B7
    jr z, jr_03D_49F8                             ; $49CC: $28 $2A

    cp $02                                        ; $49CE: $FE $02
    jr nc, jr_03D_49DF                            ; $49D0: $30 $0D

    ld e, $04                                     ; $49D2: $1E $04
    ld a, [$C35B]                                 ; $49D4: $FA $5B $C3
    cp $30                                        ; $49D7: $FE $30
    jr c, jr_03D_4A03                             ; $49D9: $38 $28

    ld e, $06                                     ; $49DB: $1E $06
    jr jr_03D_4A03                                ; $49DD: $18 $24

jr_03D_49DF:
    ld a, [$C017]                                 ; $49DF: $FA $17 $C0
    and $30                                       ; $49E2: $E6 $30
    ld e, $08                                     ; $49E4: $1E $08
    cp $00                                        ; $49E6: $FE $00
    jr z, jr_03D_4A03                             ; $49E8: $28 $19

    cp $30                                        ; $49EA: $FE $30
    jr z, jr_03D_4A03                             ; $49EC: $28 $15

    ld e, $0A                                     ; $49EE: $1E $0A
    cp $10                                        ; $49F0: $FE $10
    jr z, jr_03D_4A03                             ; $49F2: $28 $0F

    ld e, $0C                                     ; $49F4: $1E $0C
    jr jr_03D_4A03                                ; $49F6: $18 $0B

jr_03D_49F8:
    ld e, $00                                     ; $49F8: $1E $00
    ld a, [$C35B]                                 ; $49FA: $FA $5B $C3
    cp $80                                        ; $49FD: $FE $80
    jr c, jr_03D_4A03                             ; $49FF: $38 $02

    ld e, $02                                     ; $4A01: $1E $02

jr_03D_4A03:
    ld d, $00                                     ; $4A03: $16 $00
    ld hl, $4D96                                  ; $4A05: $21 $96 $4D
    add hl, de                                    ; $4A08: $19
    ld a, [hl+]                                   ; $4A09: $2A
    ld [$C32B], a                                 ; $4A0A: $EA $2B $C3
    ld a, [hl]                                    ; $4A0D: $7E
    ld [$C32C], a                                 ; $4A0E: $EA $2C $C3
    ld hl, $C35B                                  ; $4A11: $21 $5B $C3
    ld c, [hl]                                    ; $4A14: $4E
    inc hl                                        ; $4A15: $23
    ld b, [hl]                                    ; $4A16: $46
    ld a, [$C013]                                 ; $4A17: $FA $13 $C0
    cp b                                          ; $4A1A: $B8
    jr z, jr_03D_4A21                             ; $4A1B: $28 $04

    jr nc, jr_03D_4A83                            ; $4A1D: $30 $64

    jr jr_03D_4A27                                ; $4A1F: $18 $06

jr_03D_4A21:
    ld a, [$C012]                                 ; $4A21: $FA $12 $C0
    cp c                                          ; $4A24: $B9
    jr nc, jr_03D_4A83                            ; $4A25: $30 $5C

jr_03D_4A27:
    ld a, c                                       ; $4A27: $79
    ld [$C012], a                                 ; $4A28: $EA $12 $C0
    ld a, b                                       ; $4A2B: $78
    ld [$C013], a                                 ; $4A2C: $EA $13 $C0
    ld a, [$C31B]                                 ; $4A2F: $FA $1B $C3
    ld [$C011], a                                 ; $4A32: $EA $11 $C0
    ld a, $08                                     ; $4A35: $3E $08
    ld [$C35E], a                                 ; $4A37: $EA $5E $C3

jr_03D_4A3A:
    ld e, $00                                     ; $4A3A: $1E $00
    ld d, $00                                     ; $4A3C: $16 $00
    ld hl, $988A                                  ; $4A3E: $21 $8A $98
    ld b, $09                                     ; $4A41: $06 $09
    ld c, $02                                     ; $4A43: $0E $02
    call Call_000_10EA                            ; $4A45: $CD $EA $10
    call Call_000_0424                            ; $4A48: $CD $24 $04
    call Call_000_0424                            ; $4A4B: $CD $24 $04
    call Call_000_0424                            ; $4A4E: $CD $24 $04
    call Call_000_0424                            ; $4A51: $CD $24 $04
    ld e, $00                                     ; $4A54: $1E $00
    ld d, $5A                                     ; $4A56: $16 $5A
    ld hl, $988A                                  ; $4A58: $21 $8A $98
    ld b, $03                                     ; $4A5B: $06 $03
    ld c, $01                                     ; $4A5D: $0E $01
    call Call_000_1111                            ; $4A5F: $CD $11 $11
    ld hl, $C012                                  ; $4A62: $21 $12 $C0
    ld c, [hl]                                    ; $4A65: $4E
    inc hl                                        ; $4A66: $23
    ld b, [hl]                                    ; $4A67: $46
    ld hl, $988F                                  ; $4A68: $21 $8F $98
    call Call_03D_4C34                            ; $4A6B: $CD $34 $4C
    call Call_000_0424                            ; $4A6E: $CD $24 $04
    call Call_000_0424                            ; $4A71: $CD $24 $04
    call Call_000_0424                            ; $4A74: $CD $24 $04
    call Call_000_0424                            ; $4A77: $CD $24 $04
    ld a, [$C35E]                                 ; $4A7A: $FA $5E $C3
    dec a                                         ; $4A7D: $3D
    ld [$C35E], a                                 ; $4A7E: $EA $5E $C3
    jr nz, jr_03D_4A3A                            ; $4A81: $20 $B7

jr_03D_4A83:
    ld b, $39                                     ; $4A83: $06 $39
    ld hl, $4067                                  ; $4A85: $21 $67 $40
    rst RST_08                                    ; $4A88: $CF
    call Call_000_0424                            ; $4A89: $CD $24 $04
    ld a, [$C32E]                                 ; $4A8C: $FA $2E $C3
    add a                                         ; $4A8F: $87
    jr c, jr_03D_4A9F                             ; $4A90: $38 $0D

    ldh a, [$FF99]                                ; $4A92: $F0 $99
    ld e, a                                       ; $4A94: $5F
    ldh a, [$FFAC]                                ; $4A95: $F0 $AC
    or e                                          ; $4A97: $B3
    ld e, a                                       ; $4A98: $5F
    and $80                                       ; $4A99: $E6 $80
    jr z, jr_03D_4A83                             ; $4A9B: $28 $E6

    jr jr_03D_4AAA                                ; $4A9D: $18 $0B

jr_03D_4A9F:
    ldh a, [$FF99]                                ; $4A9F: $F0 $99
    ld e, a                                       ; $4AA1: $5F
    ldh a, [$FFAC]                                ; $4AA2: $F0 $AC
    or e                                          ; $4AA4: $B3
    ld e, a                                       ; $4AA5: $5F
    and $90                                       ; $4AA6: $E6 $90
    jr z, jr_03D_4A83                             ; $4AA8: $28 $D9

jr_03D_4AAA:
    ld hl, $C03A                                  ; $4AAA: $21 $3A $C0
    res 2, [hl]                                   ; $4AAD: $CB $96
    ld a, $00                                     ; $4AAF: $3E $00
    call Call_000_135D                            ; $4AB1: $CD $5D $13
    call Call_000_0424                            ; $4AB4: $CD $24 $04
    ld b, $3D                                     ; $4AB7: $06 $3D
    ld hl, $4004                                  ; $4AB9: $21 $04 $40
    rst RST_00                                    ; $4ABC: $C7

Call_03D_4ABD:
    ld a, [$C329]                                 ; $4ABD: $FA $29 $C3
    and $01                                       ; $4AC0: $E6 $01
    jr z, jr_03D_4ADC                             ; $4AC2: $28 $18

    ld hl, $C355                                  ; $4AC4: $21 $55 $C3
    inc [hl]                                      ; $4AC7: $34
    ld a, [hl]                                    ; $4AC8: $7E
    and $07                                       ; $4AC9: $E6 $07
    swap a                                        ; $4ACB: $CB $37
    ld e, a                                       ; $4ACD: $5F
    ld d, $00                                     ; $4ACE: $16 $00
    ld hl, $4DA4                                  ; $4AD0: $21 $A4 $4D
    add hl, de                                    ; $4AD3: $19
    ld de, $92E0                                  ; $4AD4: $11 $E0 $92
    ld b, $01                                     ; $4AD7: $06 $01
    jp Jump_000_11C2                              ; $4AD9: $C3 $C2 $11


jr_03D_4ADC:
    ld a, [$D6AE]                                 ; $4ADC: $FA $AE $D6
    or a                                          ; $4ADF: $B7
    ret nz                                        ; $4AE0: $C0

    call Call_03D_4B32                            ; $4AE1: $CD $32 $4B
    ld a, [$C353]                                 ; $4AE4: $FA $53 $C3
    or a                                          ; $4AE7: $B7
    jp nz, Jump_03D_4B2B                          ; $4AE8: $C2 $2B $4B

    ld hl, $C354                                  ; $4AEB: $21 $54 $C3
    dec [hl]                                      ; $4AEE: $35
    jp nz, Jump_03D_4B2B                          ; $4AEF: $C2 $2B $4B

    ld a, $03                                     ; $4AF2: $3E $03
    ld [hl], a                                    ; $4AF4: $77
    ld hl, $C351                                  ; $4AF5: $21 $51 $C3
    dec [hl]                                      ; $4AF8: $35
    ld a, [hl]                                    ; $4AF9: $7E
    ldh [$FFE2], a                                ; $4AFA: $E0 $E2
    ld hl, $C34B                                  ; $4AFC: $21 $4B $C3
    ld e, [hl]                                    ; $4AFF: $5E
    inc hl                                        ; $4B00: $23
    ld d, [hl]                                    ; $4B01: $56
    dec de                                        ; $4B02: $1B
    ld [hl], d                                    ; $4B03: $72
    dec hl                                        ; $4B04: $2B
    ld [hl], e                                    ; $4B05: $73
    ld a, d                                       ; $4B06: $7A
    or e                                          ; $4B07: $B3
    jr nz, jr_03D_4B1A                            ; $4B08: $20 $10

    ld a, $FF                                     ; $4B0A: $3E $FF
    ld [$C353], a                                 ; $4B0C: $EA $53 $C3
    ld de, $5574                                  ; $4B0F: $11 $74 $55
    ld a, e                                       ; $4B12: $7B
    ld [$C359], a                                 ; $4B13: $EA $59 $C3
    ld a, d                                       ; $4B16: $7A
    ld [$C35A], a                                 ; $4B17: $EA $5A $C3

jr_03D_4B1A:
    ld a, e                                       ; $4B1A: $7B
    and $07                                       ; $4B1B: $E6 $07
    jr nz, jr_03D_4B2B                            ; $4B1D: $20 $0C

    ld a, [$C352]                                 ; $4B1F: $FA $52 $C3
    or a                                          ; $4B22: $B7
    jr nz, jr_03D_4B2B                            ; $4B23: $20 $06

    ld b, $35                                     ; $4B25: $06 $35
    ld hl, $400D                                  ; $4B27: $21 $0D $40
    rst RST_08                                    ; $4B2A: $CF

Jump_03D_4B2B:
jr_03D_4B2B:
    ld b, $35                                     ; $4B2B: $06 $35
    ld hl, $4056                                  ; $4B2D: $21 $56 $40
    rst RST_08                                    ; $4B30: $CF
    ret                                           ; $4B31: $C9


Call_03D_4B32:
    ld a, [$C356]                                 ; $4B32: $FA $56 $C3
    or a                                          ; $4B35: $B7
    jr z, jr_03D_4B3D                             ; $4B36: $28 $05

    dec a                                         ; $4B38: $3D
    ld [$C356], a                                 ; $4B39: $EA $56 $C3
    ret                                           ; $4B3C: $C9


jr_03D_4B3D:
    ld hl, $C357                                  ; $4B3D: $21 $57 $C3
    ld c, [hl]                                    ; $4B40: $4E
    inc hl                                        ; $4B41: $23
    ld a, [hl]                                    ; $4B42: $7E
    cp c                                          ; $4B43: $B9
    jr nc, jr_03D_4B47                            ; $4B44: $30 $01

    ret                                           ; $4B46: $C9


jr_03D_4B47:
    inc hl                                        ; $4B47: $23
    ld e, [hl]                                    ; $4B48: $5E
    inc hl                                        ; $4B49: $23
    ld d, [hl]                                    ; $4B4A: $56
    ld a, [de]                                    ; $4B4B: $1A
    add a                                         ; $4B4C: $87
    jr c, jr_03D_4B9F                             ; $4B4D: $38 $50

    push de                                       ; $4B4F: $D5
    ld hl, $D740                                  ; $4B50: $21 $40 $D7
    ld c, $05                                     ; $4B53: $0E $05

jr_03D_4B55:
    ld a, [hl]                                    ; $4B55: $7E
    add a                                         ; $4B56: $87
    jr nc, jr_03D_4B62                            ; $4B57: $30 $09

    ld de, $0040                                  ; $4B59: $11 $40 $00
    add hl, de                                    ; $4B5C: $19
    dec c                                         ; $4B5D: $0D
    jr nz, jr_03D_4B55                            ; $4B5E: $20 $F5

    pop bc                                        ; $4B60: $C1
    ret                                           ; $4B61: $C9


jr_03D_4B62:
    push hl                                       ; $4B62: $E5
    ld de, $63FA                                  ; $4B63: $11 $FA $63
    call Call_000_0F8E                            ; $4B66: $CD $8E $0F
    pop de                                        ; $4B69: $D1
    pop bc                                        ; $4B6A: $C1
    ld hl, $0029                                  ; $4B6B: $21 $29 $00
    add hl, de                                    ; $4B6E: $19
    ld a, [bc]                                    ; $4B6F: $0A
    inc bc                                        ; $4B70: $03
    or $80                                        ; $4B71: $F6 $80
    ld [hl+], a                                   ; $4B73: $22
    ld a, [bc]                                    ; $4B74: $0A
    inc bc                                        ; $4B75: $03
    ld [hl+], a                                   ; $4B76: $22
    ld a, $04                                     ; $4B77: $3E $04
    ld [hl], a                                    ; $4B79: $77
    ld hl, $0004                                  ; $4B7A: $21 $04 $00
    add hl, de                                    ; $4B7D: $19
    ld a, [bc]                                    ; $4B7E: $0A
    inc bc                                        ; $4B7F: $03
    ld [hl+], a                                   ; $4B80: $22
    ld hl, $0006                                  ; $4B81: $21 $06 $00
    add hl, de                                    ; $4B84: $19
    ld a, [bc]                                    ; $4B85: $0A
    inc bc                                        ; $4B86: $03
    ld [hl], a                                    ; $4B87: $77
    ld hl, $002E                                  ; $4B88: $21 $2E $00
    add hl, de                                    ; $4B8B: $19
    ld a, $80                                     ; $4B8C: $3E $80
    ld [hl], a                                    ; $4B8E: $77
    ld a, $FF                                     ; $4B8F: $3E $FF
    ld [$C358], a                                 ; $4B91: $EA $58 $C3
    ld hl, $C357                                  ; $4B94: $21 $57 $C3
    inc [hl]                                      ; $4B97: $34
    ld hl, $C359                                  ; $4B98: $21 $59 $C3
    ld [hl], c                                    ; $4B9B: $71
    inc hl                                        ; $4B9C: $23
    ld [hl], b                                    ; $4B9D: $70
    ret                                           ; $4B9E: $C9


jr_03D_4B9F:
    inc de                                        ; $4B9F: $13
    srl a                                         ; $4BA0: $CB $3F
    cp $04                                        ; $4BA2: $FE $04
    jr z, jr_03D_4BEE                             ; $4BA4: $28 $48

    cp $03                                        ; $4BA6: $FE $03
    jr z, jr_03D_4BCF                             ; $4BA8: $28 $25

    cp $02                                        ; $4BAA: $FE $02
    jr z, jr_03D_4BC7                             ; $4BAC: $28 $19

    cp $01                                        ; $4BAE: $FE $01
    jr z, jr_03D_4BC0                             ; $4BB0: $28 $0E

    ld a, [de]                                    ; $4BB2: $1A
    ld [$C358], a                                 ; $4BB3: $EA $58 $C3
    inc de                                        ; $4BB6: $13

jr_03D_4BB7:
    ld a, e                                       ; $4BB7: $7B
    ld [$C359], a                                 ; $4BB8: $EA $59 $C3
    ld a, d                                       ; $4BBB: $7A
    ld [$C35A], a                                 ; $4BBC: $EA $5A $C3
    ret                                           ; $4BBF: $C9


jr_03D_4BC0:
    ld a, [de]                                    ; $4BC0: $1A
    ld [$C356], a                                 ; $4BC1: $EA $56 $C3
    inc de                                        ; $4BC4: $13
    jr jr_03D_4BB7                                ; $4BC5: $18 $F0

jr_03D_4BC7:
    ld a, [de]                                    ; $4BC7: $1A
    ld c, a                                       ; $4BC8: $4F
    inc de                                        ; $4BC9: $13
    ld a, [de]                                    ; $4BCA: $1A
    ld e, c                                       ; $4BCB: $59
    ld d, a                                       ; $4BCC: $57
    jr jr_03D_4BB7                                ; $4BCD: $18 $E8

jr_03D_4BCF:
    ld a, e                                       ; $4BCF: $7B
    ld [$C361], a                                 ; $4BD0: $EA $61 $C3
    ld a, d                                       ; $4BD3: $7A
    ld [$C362], a                                 ; $4BD4: $EA $62 $C3
    ld a, [$C017]                                 ; $4BD7: $FA $17 $C0
    and $30                                       ; $4BDA: $E6 $30
    jr z, jr_03D_4BEC                             ; $4BDC: $28 $0E

    inc de                                        ; $4BDE: $13
    inc de                                        ; $4BDF: $13
    cp $10                                        ; $4BE0: $FE $10
    jr z, jr_03D_4BEC                             ; $4BE2: $28 $08

    inc de                                        ; $4BE4: $13
    inc de                                        ; $4BE5: $13
    cp $20                                        ; $4BE6: $FE $20
    jr z, jr_03D_4BEC                             ; $4BE8: $28 $02

    inc de                                        ; $4BEA: $13
    inc de                                        ; $4BEB: $13

jr_03D_4BEC:
    jr jr_03D_4BC7                                ; $4BEC: $18 $D9

jr_03D_4BEE:
    ld a, [$C361]                                 ; $4BEE: $FA $61 $C3
    ld e, a                                       ; $4BF1: $5F
    ld a, [$C362]                                 ; $4BF2: $FA $62 $C3
    ld d, a                                       ; $4BF5: $57
    ld a, $08                                     ; $4BF6: $3E $08
    add e                                         ; $4BF8: $83
    jr nc, jr_03D_4BFC                            ; $4BF9: $30 $01

    inc d                                         ; $4BFB: $14

jr_03D_4BFC:
    ld e, a                                       ; $4BFC: $5F
    jr jr_03D_4BB7                                ; $4BFD: $18 $B8

Call_03D_4BFF:
    ld hl, $C35D                                  ; $4BFF: $21 $5D $C3
    ld a, [hl]                                    ; $4C02: $7E
    jr jr_03D_4C18                                ; $4C03: $18 $13

Call_03D_4C05:
    ld a, [$C35B]                                 ; $4C05: $FA $5B $C3
    cp $99                                        ; $4C08: $FE $99
    jr nz, jr_03D_4C12                            ; $4C0A: $20 $06

    ld a, [$C35C]                                 ; $4C0C: $FA $5C $C3
    cp $99                                        ; $4C0F: $FE $99
    ret z                                         ; $4C11: $C8

jr_03D_4C12:
    ld hl, $C35D                                  ; $4C12: $21 $5D $C3
    ld a, [hl]                                    ; $4C15: $7E
    or a                                          ; $4C16: $B7
    ret z                                         ; $4C17: $C8

jr_03D_4C18:
    ld b, $00                                     ; $4C18: $06 $00
    ld [hl], b                                    ; $4C1A: $70
    dec hl                                        ; $4C1B: $2B
    ld b, [hl]                                    ; $4C1C: $46
    dec hl                                        ; $4C1D: $2B
    ld c, [hl]                                    ; $4C1E: $4E
    add c                                         ; $4C1F: $81
    daa                                           ; $4C20: $27
    ld c, a                                       ; $4C21: $4F
    jr nc, jr_03D_4C2E                            ; $4C22: $30 $0A

    xor a                                         ; $4C24: $AF
    ld a, b                                       ; $4C25: $78
    inc a                                         ; $4C26: $3C
    daa                                           ; $4C27: $27
    ld b, a                                       ; $4C28: $47
    jr nc, jr_03D_4C2E                            ; $4C29: $30 $03

    ld c, $99                                     ; $4C2B: $0E $99
    ld b, c                                       ; $4C2D: $41

jr_03D_4C2E:
    ld [hl], c                                    ; $4C2E: $71
    inc hl                                        ; $4C2F: $23
    ld [hl], b                                    ; $4C30: $70
    ld hl, $9C0F                                  ; $4C31: $21 $0F $9C

Call_03D_4C34:
    ld a, b                                       ; $4C34: $78
    swap a                                        ; $4C35: $CB $37
    and $0F                                       ; $4C37: $E6 $0F
    jr z, jr_03D_4C4C                             ; $4C39: $28 $11

    push bc                                       ; $4C3B: $C5
    push hl                                       ; $4C3C: $E5
    add a                                         ; $4C3D: $87
    add $40                                       ; $4C3E: $C6 $40
    ld d, a                                       ; $4C40: $57
    ld e, $00                                     ; $4C41: $1E $00
    ld b, $01                                     ; $4C43: $06 $01
    ld c, $02                                     ; $4C45: $0E $02
    call Call_000_1139                            ; $4C47: $CD $39 $11
    pop hl                                        ; $4C4A: $E1
    pop bc                                        ; $4C4B: $C1

jr_03D_4C4C:
    ld de, $0001                                  ; $4C4C: $11 $01 $00
    add hl, de                                    ; $4C4F: $19
    ld a, b                                       ; $4C50: $78
    or a                                          ; $4C51: $B7
    jr z, jr_03D_4C67                             ; $4C52: $28 $13

    and $0F                                       ; $4C54: $E6 $0F
    push bc                                       ; $4C56: $C5
    push hl                                       ; $4C57: $E5
    add a                                         ; $4C58: $87
    add $40                                       ; $4C59: $C6 $40
    ld d, a                                       ; $4C5B: $57
    ld e, $00                                     ; $4C5C: $1E $00
    ld b, $01                                     ; $4C5E: $06 $01
    ld c, $02                                     ; $4C60: $0E $02
    call Call_000_1139                            ; $4C62: $CD $39 $11
    pop hl                                        ; $4C65: $E1
    pop bc                                        ; $4C66: $C1

jr_03D_4C67:
    ld de, $0001                                  ; $4C67: $11 $01 $00
    add hl, de                                    ; $4C6A: $19
    ld a, c                                       ; $4C6B: $79
    swap a                                        ; $4C6C: $CB $37
    and $0F                                       ; $4C6E: $E6 $0F
    jr nz, jr_03D_4C77                            ; $4C70: $20 $05

    ld a, b                                       ; $4C72: $78
    or a                                          ; $4C73: $B7
    jr z, jr_03D_4C88                             ; $4C74: $28 $12

    xor a                                         ; $4C76: $AF

jr_03D_4C77:
    push bc                                       ; $4C77: $C5
    push hl                                       ; $4C78: $E5
    add a                                         ; $4C79: $87
    add $40                                       ; $4C7A: $C6 $40
    ld d, a                                       ; $4C7C: $57
    ld e, $00                                     ; $4C7D: $1E $00
    ld b, $01                                     ; $4C7F: $06 $01
    ld c, $02                                     ; $4C81: $0E $02
    call Call_000_1139                            ; $4C83: $CD $39 $11
    pop hl                                        ; $4C86: $E1
    pop bc                                        ; $4C87: $C1

jr_03D_4C88:
    ld de, $0001                                  ; $4C88: $11 $01 $00
    add hl, de                                    ; $4C8B: $19
    ld a, c                                       ; $4C8C: $79
    and $0F                                       ; $4C8D: $E6 $0F
    add a                                         ; $4C8F: $87
    add $40                                       ; $4C90: $C6 $40
    ld d, a                                       ; $4C92: $57
    ld e, $00                                     ; $4C93: $1E $00
    ld b, $01                                     ; $4C95: $06 $01
    ld c, $02                                     ; $4C97: $0E $02
    call Call_000_1139                            ; $4C99: $CD $39 $11
    ret                                           ; $4C9C: $C9


Call_03D_4C9D:
    push hl                                       ; $4C9D: $E5
    ld de, $002F                                  ; $4C9E: $11 $2F $00
    add hl, de                                    ; $4CA1: $19
    ld a, [hl]                                    ; $4CA2: $7E
    pop hl                                        ; $4CA3: $E1
    or a                                          ; $4CA4: $B7
    jp nz, Jump_000_0DD4                          ; $4CA5: $C2 $D4 $0D

    jp Jump_000_0E28                              ; $4CA8: $C3 $28 $0E


    ld a, [$C2D0]                                 ; $4CAB: $FA $D0 $C2
    cp $00                                        ; $4CAE: $FE $00
    jp nz, Jump_03D_4CB9                          ; $4CB0: $C2 $B9 $4C

    ld hl, $FF98                                  ; $4CB3: $21 $98 $FF
    jp Jump_03D_4CBC                              ; $4CB6: $C3 $BC $4C


Jump_03D_4CB9:
    ld hl, $FFAB                                  ; $4CB9: $21 $AB $FF

Jump_03D_4CBC:
    ld c, [hl]                                    ; $4CBC: $4E
    inc hl                                        ; $4CBD: $23
    ld b, [hl]                                    ; $4CBE: $46
    ret                                           ; $4CBF: $C9


    nop                                           ; $4CC0: $00
    nop                                           ; $4CC1: $00
    nop                                           ; $4CC2: $00
    nop                                           ; $4CC3: $00
    nop                                           ; $4CC4: $00
    nop                                           ; $4CC5: $00
    ld l, c                                       ; $4CC6: $69
    jp $C3A9                                      ; $4CC7: $C3 $A9 $C3


    ld a, c                                       ; $4CCA: $79
    push bc                                       ; $4CCB: $C5
    ld bc, $0001                                  ; $4CCC: $01 $01 $00
    adc b                                         ; $4CCF: $88
    nop                                           ; $4CD0: $00
    nop                                           ; $4CD1: $00
    nop                                           ; $4CD2: $00
    nop                                           ; $4CD3: $00
    nop                                           ; $4CD4: $00
    ld a, c                                       ; $4CD5: $79
    push bc                                       ; $4CD6: $C5
    nop                                           ; $4CD7: $00
    ld bc, $8001                                  ; $4CD8: $01 $01 $80
    nop                                           ; $4CDB: $00
    nop                                           ; $4CDC: $00
    nop                                           ; $4CDD: $00
    nop                                           ; $4CDE: $00
    nop                                           ; $4CDF: $00
    nop                                           ; $4CE0: $00
    nop                                           ; $4CE1: $00
    ld [hl], b                                    ; $4CE2: $70
    inc bc                                        ; $4CE3: $03
    ld [bc], a                                    ; $4CE4: $02
    ld d, b                                       ; $4CE5: $50
    nop                                           ; $4CE6: $00
    nop                                           ; $4CE7: $00
    ld [hl], b                                    ; $4CE8: $70
    nop                                           ; $4CE9: $00
    nop                                           ; $4CEA: $00
    inc bc                                        ; $4CEB: $03
    nop                                           ; $4CEC: $00
    nop                                           ; $4CED: $00
    nop                                           ; $4CEE: $00
    nop                                           ; $4CEF: $00
    ld h, $4E                                     ; $4CF0: $26 $4E
    nop                                           ; $4CF2: $00
    nop                                           ; $4CF3: $00
    nop                                           ; $4CF4: $00
    add b                                         ; $4CF5: $80
    nop                                           ; $4CF6: $00
    nop                                           ; $4CF7: $00
    nop                                           ; $4CF8: $00
    nop                                           ; $4CF9: $00
    nop                                           ; $4CFA: $00
    nop                                           ; $4CFB: $00
    nop                                           ; $4CFC: $00
    nop                                           ; $4CFD: $00
    nop                                           ; $4CFE: $00
    nop                                           ; $4CFF: $00
    inc b                                         ; $4D00: $04
    dec b                                         ; $4D01: $05
    inc b                                         ; $4D02: $04
    ld [$0404], sp                                ; $4D03: $08 $04 $04
    inc b                                         ; $4D06: $04
    inc c                                         ; $4D07: $0C
    inc b                                         ; $4D08: $04
    inc b                                         ; $4D09: $04
    inc b                                         ; $4D0A: $04
    ld [$0604], sp                                ; $4D0B: $08 $04 $06
    inc b                                         ; $4D0E: $04
    ld [$0608], sp                                ; $4D0F: $08 $08 $06
    jr z, jr_03D_4D20                             ; $4D12: $28 $0C

    inc b                                         ; $4D14: $04
    inc b                                         ; $4D15: $04
    inc b                                         ; $4D16: $04
    ld b, $04                                     ; $4D17: $06 $04
    inc b                                         ; $4D19: $04
    ld a, b                                       ; $4D1A: $78
    ld [bc], a                                    ; $4D1B: $02
    jr z, jr_03D_4D20                             ; $4D1C: $28 $02

    ld a, a                                       ; $4D1E: $7F
    ld d, l                                       ; $4D1F: $55

jr_03D_4D20:
    push de                                       ; $4D20: $D5
    ld d, a                                       ; $4D21: $57
    ld b, c                                       ; $4D22: $41
    ld e, b                                       ; $4D23: $58
    ld l, b                                       ; $4D24: $68
    ld e, d                                       ; $4D25: $5A
    inc b                                         ; $4D26: $04
    ld e, h                                       ; $4D27: $5C
    ld [hl], b                                    ; $4D28: $70
    ld e, h                                       ; $4D29: $5C
    call c, $485C                                 ; $4D2A: $DC $5C $48
    ld e, l                                       ; $4D2D: $5D
    or h                                          ; $4D2E: $B4
    ld e, l                                       ; $4D2F: $5D
    jr nz, jr_03D_4D90                            ; $4D30: $20 $5E

    and d                                         ; $4D32: $A2
    ld e, [hl]                                    ; $4D33: $5E
    ld d, e                                       ; $4D34: $53
    ld h, b                                       ; $4D35: $60
    db $E3                                        ; $4D36: $E3
    ld h, c                                       ; $4D37: $61
    ld c, a                                       ; $4D38: $4F
    ld h, d                                       ; $4D39: $62
    ld b, c                                       ; $4D3A: $41
    ld e, b                                       ; $4D3B: $58
    adc c                                         ; $4D3C: $89
    ld d, a                                       ; $4D3D: $57
    push af                                       ; $4D3E: $F5
    ld d, a                                       ; $4D3F: $57
    sub c                                         ; $4D40: $91
    ld e, c                                       ; $4D41: $59
    cp b                                          ; $4D42: $B8
    ld e, e                                       ; $4D43: $5B
    inc h                                         ; $4D44: $24
    ld e, h                                       ; $4D45: $5C
    sub b                                         ; $4D46: $90
    ld e, h                                       ; $4D47: $5C
    db $FC                                        ; $4D48: $FC
    ld e, h                                       ; $4D49: $5C
    ld l, b                                       ; $4D4A: $68
    ld e, l                                       ; $4D4B: $5D
    call nc, $405D                                ; $4D4C: $D4 $5D $40
    ld e, [hl]                                    ; $4D4F: $5E
    db $DD                                        ; $4D50: $DD
    ld e, a                                       ; $4D51: $5F
    add d                                         ; $4D52: $82
    ld h, c                                       ; $4D53: $61
    inc bc                                        ; $4D54: $03
    ld h, d                                       ; $4D55: $62
    add h                                         ; $4D56: $84
    ld h, e                                       ; $4D57: $63
    rlca                                          ; $4D58: $07
    ld e, d                                       ; $4D59: $5A
    jr c, jr_03D_4D9C                             ; $4D5A: $38 $40

    jr c, jr_03D_4DA2                             ; $4D5C: $38 $44

    jr c, jr_03D_4DA8                             ; $4D5E: $38 $48

    jr c, jr_03D_4DAE                             ; $4D60: $38 $4C

    jr c, jr_03D_4DB4                             ; $4D62: $38 $50

    jr c, jr_03D_4DBA                             ; $4D64: $38 $54

    jr c, @+$5A                                   ; $4D66: $38 $58

    jr c, jr_03D_4DC6                             ; $4D68: $38 $5C

    jr c, jr_03D_4DCC                             ; $4D6A: $38 $60

    jr c, jr_03D_4DD2                             ; $4D6C: $38 $64

    jr c, jr_03D_4DD8                             ; $4D6E: $38 $68

    jr c, jr_03D_4DDE                             ; $4D70: $38 $6C

    jr c, jr_03D_4DE4                             ; $4D72: $38 $70

    jr c, jr_03D_4DEA                             ; $4D74: $38 $74

    jr c, @+$4A                                   ; $4D76: $38 $48

    ret c                                         ; $4D78: $D8

    ld c, l                                       ; $4D79: $4D
    ld h, l                                       ; $4D7A: $65
    ld d, b                                       ; $4D7B: $50
    adc $52                                       ; $4D7C: $CE $52
    ld a, h                                       ; $4D7E: $7C
    ld d, l                                       ; $4D7F: $55
    adc $57                                       ; $4D80: $CE $57
    add c                                         ; $4D82: $81
    ld e, d                                       ; $4D83: $5A
    dec bc                                        ; $4D84: $0B
    ld e, l                                       ; $4D85: $5D
    add [hl]                                      ; $4D86: $86
    ld e, a                                       ; $4D87: $5F
    ld d, d                                       ; $4D88: $52
    ld h, d                                       ; $4D89: $62
    ld c, h                                       ; $4D8A: $4C
    ld h, l                                       ; $4D8B: $65
    add hl, bc                                    ; $4D8C: $09
    ld l, b                                       ; $4D8D: $68
    ld [hl-], a                                   ; $4D8E: $32
    ld l, d                                       ; $4D8F: $6A

jr_03D_4D90:
    adc h                                         ; $4D90: $8C
    ld l, h                                       ; $4D91: $6C
    ld [hl], a                                    ; $4D92: $77
    ld l, a                                       ; $4D93: $6F
    adc $52                                       ; $4D94: $CE $52
    ld c, e                                       ; $4D96: $4B
    ld l, h                                       ; $4D97: $6C
    ld [hl], b                                    ; $4D98: $70
    ld l, h                                       ; $4D99: $6C
    or e                                          ; $4D9A: $B3
    ld l, h                                       ; $4D9B: $6C

jr_03D_4D9C:
    di                                            ; $4D9C: $F3
    ld l, h                                       ; $4D9D: $6C
    add hl, sp                                    ; $4D9E: $39
    ld l, l                                       ; $4D9F: $6D
    ld a, h                                       ; $4DA0: $7C
    ld l, l                                       ; $4DA1: $6D

jr_03D_4DA2:
    jp nz, $EB6D                                  ; $4DA2: $C2 $6D $EB

    inc [hl]                                      ; $4DA5: $34
    push de                                       ; $4DA6: $D5
    ld l, d                                       ; $4DA7: $6A

jr_03D_4DA8:
    adc e                                         ; $4DA8: $8B
    db $F4                                        ; $4DA9: $F4
    sub a                                         ; $4DAA: $97
    add sp, -$75                                  ; $4DAB: $E8 $8B
    db $F4                                        ; $4DAD: $F4

jr_03D_4DAE:
    rst RST_00                                    ; $4DAE: $C7
    ld a, b                                       ; $4DAF: $78
    db $EB                                        ; $4DB0: $EB
    inc [hl]                                      ; $4DB1: $34
    push hl                                       ; $4DB2: $E5
    ld a, [hl-]                                   ; $4DB3: $3A

jr_03D_4DB4:
    rst RST_10                                    ; $4DB4: $D7
    ld l, b                                       ; $4DB5: $68
    xor e                                         ; $4DB6: $AB
    call nc, $E917                                ; $4DB7: $D4 $17 $E9

jr_03D_4DBA:
    cpl                                           ; $4DBA: $2F
    pop de                                        ; $4DBB: $D1
    rla                                           ; $4DBC: $17
    jp hl                                         ; $4DBD: $E9


    adc a                                         ; $4DBE: $8F
    ldh a, [$FFD7]                                ; $4DBF: $F0 $D7
    ld l, b                                       ; $4DC1: $68
    bit 6, h                                      ; $4DC2: $CB $74
    xor a                                         ; $4DC4: $AF
    ret nc                                        ; $4DC5: $D0

jr_03D_4DC6:
    ld d, a                                       ; $4DC6: $57
    xor c                                         ; $4DC7: $A9
    ld l, $D3                                     ; $4DC8: $2E $D3
    ld e, [hl]                                    ; $4DCA: $5E
    and e                                         ; $4DCB: $A3

jr_03D_4DCC:
    ld l, $D3                                     ; $4DCC: $2E $D3
    rra                                           ; $4DCE: $1F
    pop hl                                        ; $4DCF: $E1
    xor a                                         ; $4DD0: $AF
    ret nc                                        ; $4DD1: $D0

jr_03D_4DD2:
    sub a                                         ; $4DD2: $97
    add sp, $5F                                   ; $4DD3: $E8 $5F
    and c                                         ; $4DD5: $A1
    xor [hl]                                      ; $4DD6: $AE
    ld d, e                                       ; $4DD7: $53

jr_03D_4DD8:
    ld e, h                                       ; $4DD8: $5C
    and a                                         ; $4DD9: $A7
    cp h                                          ; $4DDA: $BC
    ld b, a                                       ; $4DDB: $47
    ld e, h                                       ; $4DDC: $5C
    and a                                         ; $4DDD: $A7

jr_03D_4DDE:
    ld a, $C3                                     ; $4DDE: $3E $C3
    ld e, a                                       ; $4DE0: $5F
    and c                                         ; $4DE1: $A1
    cpl                                           ; $4DE2: $2F
    pop de                                        ; $4DE3: $D1

jr_03D_4DE4:
    cp [hl]                                       ; $4DE4: $BE
    ld b, e                                       ; $4DE5: $43
    ld e, l                                       ; $4DE6: $5D
    and [hl]                                      ; $4DE7: $A6
    cp b                                          ; $4DE8: $B8
    ld c, a                                       ; $4DE9: $4F

jr_03D_4DEA:
    ld a, c                                       ; $4DEA: $79
    adc [hl]                                      ; $4DEB: $8E
    cp b                                          ; $4DEC: $B8
    ld c, a                                       ; $4DED: $4F
    ld a, h                                       ; $4DEE: $7C
    add a                                         ; $4DEF: $87
    cp [hl]                                       ; $4DF0: $BE
    ld b, e                                       ; $4DF1: $43
    ld e, [hl]                                    ; $4DF2: $5E
    and e                                         ; $4DF3: $A3
    ld a, l                                       ; $4DF4: $7D
    add [hl]                                      ; $4DF5: $86
    cp d                                          ; $4DF6: $BA
    ld c, l                                       ; $4DF7: $4D
    ld [hl], c                                    ; $4DF8: $71
    sbc [hl]                                      ; $4DF9: $9E
    ldh a, [c]                                    ; $4DFA: $F2
    dec e                                         ; $4DFB: $1D
    ld [hl], c                                    ; $4DFC: $71
    sbc [hl]                                      ; $4DFD: $9E
    ld hl, sp+$0F                                 ; $4DFE: $F8 $0F
    ld a, l                                       ; $4E00: $7D
    add [hl]                                      ; $4E01: $86
    cp h                                          ; $4E02: $BC
    ld b, a                                       ; $4E03: $47
    ld a, [$750D]                                 ; $4E04: $FA $0D $75
    sbc d                                         ; $4E07: $9A
    ldh [c], a                                    ; $4E08: $E2
    dec a                                         ; $4E09: $3D
    push hl                                       ; $4E0A: $E5
    ld a, [hl-]                                   ; $4E0B: $3A
    ldh [c], a                                    ; $4E0C: $E2
    dec a                                         ; $4E0D: $3D
    pop af                                        ; $4E0E: $F1
    ld e, $FA                                     ; $4E0F: $1E $FA
    dec c                                         ; $4E11: $0D
    ld a, c                                       ; $4E12: $79
    adc [hl]                                      ; $4E13: $8E
    push af                                       ; $4E14: $F5
    ld a, [de]                                    ; $4E15: $1A
    ld [$C535], a                                 ; $4E16: $EA $35 $C5
    ld a, d                                       ; $4E19: $7A
    bit 6, h                                      ; $4E1A: $CB $74
    push bc                                       ; $4E1C: $C5
    ld a, d                                       ; $4E1D: $7A
    db $E3                                        ; $4E1E: $E3
    inc a                                         ; $4E1F: $3C
    push af                                       ; $4E20: $F5
    ld a, [de]                                    ; $4E21: $1A
    ldh a, [c]                                    ; $4E22: $F2
    dec e                                         ; $4E23: $1D
    add c                                         ; $4E24: $81
    dec e                                         ; $4E25: $1D
    add e                                         ; $4E26: $83
    sbc h                                         ; $4E27: $9C
    ld c, [hl]                                    ; $4E28: $4E
    db $ED                                        ; $4E29: $ED
    ld c, [hl]                                    ; $4E2A: $4E
    ld a, $4F                                     ; $4E2B: $3E $4F
    adc a                                         ; $4E2D: $8F
    ld c, a                                       ; $4E2E: $4F
    add e                                         ; $4E2F: $83
    sbc $4F                                       ; $4E30: $DE $4F
    dec l                                         ; $4E32: $2D
    ld d, b                                       ; $4E33: $50
    sbc $4F                                       ; $4E34: $DE $4F
    dec l                                         ; $4E36: $2D
    ld d, b                                       ; $4E37: $50
    add e                                         ; $4E38: $83
    ld l, [hl]                                    ; $4E39: $6E
    ld d, b                                       ; $4E3A: $50
    and e                                         ; $4E3B: $A3
    ld d, b                                       ; $4E3C: $50
    ldh a, [c]                                    ; $4E3D: $F2
    ld d, b                                       ; $4E3E: $50
    ld b, c                                       ; $4E3F: $41
    ld d, c                                       ; $4E40: $51
    add e                                         ; $4E41: $83
    sub d                                         ; $4E42: $92
    ld d, c                                       ; $4E43: $51
    pop hl                                        ; $4E44: $E1
    ld d, c                                       ; $4E45: $51
    jr nc, jr_03D_4E9A                            ; $4E46: $30 $52

    ld a, a                                       ; $4E48: $7F
    ld d, d                                       ; $4E49: $52
    add e                                         ; $4E4A: $83
    adc $52                                       ; $4E4B: $CE $52
    add hl, de                                    ; $4E4D: $19
    ld d, e                                       ; $4E4E: $53
    adc $52                                       ; $4E4F: $CE $52
    add hl, de                                    ; $4E51: $19
    ld d, e                                       ; $4E52: $53
    add e                                         ; $4E53: $83
    ld d, [hl]                                    ; $4E54: $56
    ld d, e                                       ; $4E55: $53
    sub a                                         ; $4E56: $97
    ld d, e                                       ; $4E57: $53
    ret c                                         ; $4E58: $D8

    ld d, e                                       ; $4E59: $53
    dec de                                        ; $4E5A: $1B
    ld d, h                                       ; $4E5B: $54
    add e                                         ; $4E5C: $83
    ld e, h                                       ; $4E5D: $5C
    ld d, h                                       ; $4E5E: $54
    xor c                                         ; $4E5F: $A9
    ld d, h                                       ; $4E60: $54
    ld [$2F54], a                                 ; $4E61: $EA $54 $2F
    ld d, l                                       ; $4E64: $55

jr_03D_4E65:
    add b                                         ; $4E65: $80
    nop                                           ; $4E66: $00
    add c                                         ; $4E67: $81
    add hl, bc                                    ; $4E68: $09
    ld c, $04                                     ; $4E69: $0E $04
    jr nc, jr_03D_4E65                            ; $4E6B: $30 $F8

    add c                                         ; $4E6D: $81
    inc b                                         ; $4E6E: $04
    ld c, $04                                     ; $4E6F: $0E $04

jr_03D_4E71:
    ld [hl], b                                    ; $4E71: $70
    ld hl, sp-$7F                                 ; $4E72: $F8 $81
    inc b                                         ; $4E74: $04
    ld c, $04                                     ; $4E75: $0E $04
    jr nc, jr_03D_4E71                            ; $4E77: $30 $F8

    add b                                         ; $4E79: $80
    ld [bc], a                                    ; $4E7A: $02
    add c                                         ; $4E7B: $81
    inc b                                         ; $4E7C: $04
    ld c, $04                                     ; $4E7D: $0E $04
    ld [hl], b                                    ; $4E7F: $70
    ld hl, sp-$80                                 ; $4E80: $F8 $80
    ld [bc], a                                    ; $4E82: $02
    add c                                         ; $4E83: $81
    inc b                                         ; $4E84: $04
    ld c, $04                                     ; $4E85: $0E $04
    jr nc, @-$06                                  ; $4E87: $30 $F8

    add b                                         ; $4E89: $80
    ld [bc], a                                    ; $4E8A: $02
    add c                                         ; $4E8B: $81
    inc b                                         ; $4E8C: $04
    ld c, $04                                     ; $4E8D: $0E $04
    ld [hl], b                                    ; $4E8F: $70
    ld hl, sp-$80                                 ; $4E90: $F8 $80
    nop                                           ; $4E92: $00
    add c                                         ; $4E93: $81
    add hl, bc                                    ; $4E94: $09
    jr @+$06                                      ; $4E95: $18 $04

    ld d, b                                       ; $4E97: $50
    ld hl, sp-$7E                                 ; $4E98: $F8 $82

jr_03D_4E9A:
    ld h, $4E                                     ; $4E9A: $26 $4E
    add b                                         ; $4E9C: $80
    nop                                           ; $4E9D: $00
    add c                                         ; $4E9E: $81
    add hl, bc                                    ; $4E9F: $09
    ld a, [bc]                                    ; $4EA0: $0A
    inc b                                         ; $4EA1: $04
    ld [$81F8], sp                                ; $4EA2: $08 $F8 $81
    add hl, bc                                    ; $4EA5: $09
    ld a, [bc]                                    ; $4EA6: $0A
    inc b                                         ; $4EA7: $04
    ld [$81F8], sp                                ; $4EA8: $08 $F8 $81
    add hl, bc                                    ; $4EAB: $09
    ld a, [bc]                                    ; $4EAC: $0A
    inc b                                         ; $4EAD: $04
    ld [$80F8], sp                                ; $4EAE: $08 $F8 $80
    nop                                           ; $4EB1: $00
    add c                                         ; $4EB2: $81
    add hl, bc                                    ; $4EB3: $09
    dec bc                                        ; $4EB4: $0B
    inc b                                         ; $4EB5: $04
    sbc b                                         ; $4EB6: $98
    ld hl, sp-$7F                                 ; $4EB7: $F8 $81
    add hl, bc                                    ; $4EB9: $09
    dec bc                                        ; $4EBA: $0B
    inc b                                         ; $4EBB: $04
    sbc b                                         ; $4EBC: $98
    ld hl, sp-$7F                                 ; $4EBD: $F8 $81
    add hl, bc                                    ; $4EBF: $09
    dec bc                                        ; $4EC0: $0B
    inc b                                         ; $4EC1: $04
    sbc b                                         ; $4EC2: $98
    ld hl, sp-$80                                 ; $4EC3: $F8 $80
    nop                                           ; $4EC5: $00
    add c                                         ; $4EC6: $81
    add hl, bc                                    ; $4EC7: $09
    ld a, [bc]                                    ; $4EC8: $0A
    inc b                                         ; $4EC9: $04

jr_03D_4ECA:
    jr nz, @-$06                                  ; $4ECA: $20 $F8

    add c                                         ; $4ECC: $81
    add hl, bc                                    ; $4ECD: $09
    ld a, [bc]                                    ; $4ECE: $0A
    inc b                                         ; $4ECF: $04

jr_03D_4ED0:
    jr nz, jr_03D_4ECA                            ; $4ED0: $20 $F8

    add c                                         ; $4ED2: $81
    add hl, bc                                    ; $4ED3: $09
    ld a, [bc]                                    ; $4ED4: $0A
    inc b                                         ; $4ED5: $04
    jr nz, jr_03D_4ED0                            ; $4ED6: $20 $F8

    add b                                         ; $4ED8: $80
    nop                                           ; $4ED9: $00
    add c                                         ; $4EDA: $81
    add hl, bc                                    ; $4EDB: $09
    dec bc                                        ; $4EDC: $0B
    inc b                                         ; $4EDD: $04
    add b                                         ; $4EDE: $80
    ld hl, sp-$7F                                 ; $4EDF: $F8 $81
    add hl, bc                                    ; $4EE1: $09
    dec bc                                        ; $4EE2: $0B
    inc b                                         ; $4EE3: $04
    add b                                         ; $4EE4: $80
    ld hl, sp-$7F                                 ; $4EE5: $F8 $81
    add hl, bc                                    ; $4EE7: $09
    dec bc                                        ; $4EE8: $0B
    inc b                                         ; $4EE9: $04
    add b                                         ; $4EEA: $80
    ld hl, sp-$7C                                 ; $4EEB: $F8 $84
    add b                                         ; $4EED: $80
    nop                                           ; $4EEE: $00
    add c                                         ; $4EEF: $81
    add hl, bc                                    ; $4EF0: $09
    nop                                           ; $4EF1: $00
    inc b                                         ; $4EF2: $04
    ld hl, sp-$08                                 ; $4EF3: $F8 $F8
    add c                                         ; $4EF5: $81
    add hl, bc                                    ; $4EF6: $09
    nop                                           ; $4EF7: $00
    inc b                                         ; $4EF8: $04
    ld hl, sp-$08                                 ; $4EF9: $F8 $F8
    add c                                         ; $4EFB: $81
    add hl, bc                                    ; $4EFC: $09
    nop                                           ; $4EFD: $00
    inc b                                         ; $4EFE: $04
    ld hl, sp-$08                                 ; $4EFF: $F8 $F8
    add b                                         ; $4F01: $80
    nop                                           ; $4F02: $00
    add c                                         ; $4F03: $81
    add hl, bc                                    ; $4F04: $09
    ld bc, $A804                                  ; $4F05: $01 $04 $A8
    ld hl, sp-$7F                                 ; $4F08: $F8 $81
    add hl, bc                                    ; $4F0A: $09
    ld bc, $A804                                  ; $4F0B: $01 $04 $A8
    ld hl, sp-$7F                                 ; $4F0E: $F8 $81
    add hl, bc                                    ; $4F10: $09
    ld bc, $A804                                  ; $4F11: $01 $04 $A8
    ld hl, sp-$80                                 ; $4F14: $F8 $80
    nop                                           ; $4F16: $00
    add c                                         ; $4F17: $81
    add hl, bc                                    ; $4F18: $09
    nop                                           ; $4F19: $00
    inc b                                         ; $4F1A: $04

jr_03D_4F1B:
    jr @-$06                                      ; $4F1B: $18 $F8

    add c                                         ; $4F1D: $81
    add hl, bc                                    ; $4F1E: $09
    nop                                           ; $4F1F: $00
    inc b                                         ; $4F20: $04

jr_03D_4F21:
    jr jr_03D_4F1B                                ; $4F21: $18 $F8

    add c                                         ; $4F23: $81
    add hl, bc                                    ; $4F24: $09
    nop                                           ; $4F25: $00
    inc b                                         ; $4F26: $04
    jr jr_03D_4F21                                ; $4F27: $18 $F8

    add b                                         ; $4F29: $80
    nop                                           ; $4F2A: $00
    add c                                         ; $4F2B: $81
    add hl, bc                                    ; $4F2C: $09
    ld bc, $8804                                  ; $4F2D: $01 $04 $88
    ld hl, sp-$7F                                 ; $4F30: $F8 $81
    add hl, bc                                    ; $4F32: $09
    ld bc, $8804                                  ; $4F33: $01 $04 $88
    ld hl, sp-$7F                                 ; $4F36: $F8 $81
    add hl, bc                                    ; $4F38: $09
    ld bc, $8804                                  ; $4F39: $01 $04 $88
    ld hl, sp-$7C                                 ; $4F3C: $F8 $84
    add b                                         ; $4F3E: $80
    nop                                           ; $4F3F: $00
    add c                                         ; $4F40: $81
    add hl, bc                                    ; $4F41: $09
    ld [$F804], sp                                ; $4F42: $08 $04 $F8
    db $10                                        ; $4F45: $10
    add c                                         ; $4F46: $81
    add hl, bc                                    ; $4F47: $09
    ld [$F804], sp                                ; $4F48: $08 $04 $F8
    db $10                                        ; $4F4B: $10
    add c                                         ; $4F4C: $81
    add hl, bc                                    ; $4F4D: $09
    ld [$F804], sp                                ; $4F4E: $08 $04 $F8
    db $10                                        ; $4F51: $10
    add b                                         ; $4F52: $80
    nop                                           ; $4F53: $00
    add c                                         ; $4F54: $81
    add hl, bc                                    ; $4F55: $09
    add hl, bc                                    ; $4F56: $09
    inc b                                         ; $4F57: $04
    xor b                                         ; $4F58: $A8
    db $10                                        ; $4F59: $10
    add c                                         ; $4F5A: $81
    add hl, bc                                    ; $4F5B: $09
    add hl, bc                                    ; $4F5C: $09
    inc b                                         ; $4F5D: $04
    xor b                                         ; $4F5E: $A8
    db $10                                        ; $4F5F: $10
    add c                                         ; $4F60: $81
    add hl, bc                                    ; $4F61: $09
    add hl, bc                                    ; $4F62: $09
    inc b                                         ; $4F63: $04
    xor b                                         ; $4F64: $A8
    db $10                                        ; $4F65: $10
    add b                                         ; $4F66: $80
    nop                                           ; $4F67: $00
    add c                                         ; $4F68: $81
    add hl, bc                                    ; $4F69: $09
    ld [$E804], sp                                ; $4F6A: $08 $04 $E8
    db $10                                        ; $4F6D: $10
    add c                                         ; $4F6E: $81
    add hl, bc                                    ; $4F6F: $09
    ld [$E804], sp                                ; $4F70: $08 $04 $E8
    db $10                                        ; $4F73: $10
    add c                                         ; $4F74: $81
    add hl, bc                                    ; $4F75: $09
    ld [$E804], sp                                ; $4F76: $08 $04 $E8
    db $10                                        ; $4F79: $10
    add b                                         ; $4F7A: $80
    nop                                           ; $4F7B: $00
    add c                                         ; $4F7C: $81
    add hl, bc                                    ; $4F7D: $09
    add hl, bc                                    ; $4F7E: $09
    inc b                                         ; $4F7F: $04
    cp b                                          ; $4F80: $B8
    db $10                                        ; $4F81: $10
    add c                                         ; $4F82: $81
    add hl, bc                                    ; $4F83: $09
    add hl, bc                                    ; $4F84: $09
    inc b                                         ; $4F85: $04
    cp b                                          ; $4F86: $B8
    db $10                                        ; $4F87: $10
    add c                                         ; $4F88: $81
    add hl, bc                                    ; $4F89: $09
    add hl, bc                                    ; $4F8A: $09
    inc b                                         ; $4F8B: $04
    cp b                                          ; $4F8C: $B8
    db $10                                        ; $4F8D: $10
    add h                                         ; $4F8E: $84
    add b                                         ; $4F8F: $80
    nop                                           ; $4F90: $00
    add c                                         ; $4F91: $81
    add hl, bc                                    ; $4F92: $09
    dec b                                         ; $4F93: $05
    inc b                                         ; $4F94: $04
    ld d, b                                       ; $4F95: $50
    ld hl, sp-$7F                                 ; $4F96: $F8 $81
    add hl, bc                                    ; $4F98: $09
    dec b                                         ; $4F99: $05
    inc b                                         ; $4F9A: $04
    ld d, b                                       ; $4F9B: $50
    ld hl, sp-$7F                                 ; $4F9C: $F8 $81
    add hl, bc                                    ; $4F9E: $09
    dec b                                         ; $4F9F: $05
    inc b                                         ; $4FA0: $04
    ld d, b                                       ; $4FA1: $50
    ld hl, sp-$7F                                 ; $4FA2: $F8 $81
    add hl, bc                                    ; $4FA4: $09
    dec b                                         ; $4FA5: $05
    inc b                                         ; $4FA6: $04
    ld d, b                                       ; $4FA7: $50
    ld hl, sp-$80                                 ; $4FA8: $F8 $80
    nop                                           ; $4FAA: $00
    add c                                         ; $4FAB: $81
    add hl, bc                                    ; $4FAC: $09
    dec b                                         ; $4FAD: $05
    inc b                                         ; $4FAE: $04

jr_03D_4FAF:
    jr nc, @-$06                                  ; $4FAF: $30 $F8

    add c                                         ; $4FB1: $81
    add hl, bc                                    ; $4FB2: $09
    dec b                                         ; $4FB3: $05
    inc b                                         ; $4FB4: $04

jr_03D_4FB5:
    jr nc, jr_03D_4FAF                            ; $4FB5: $30 $F8

    add c                                         ; $4FB7: $81
    add hl, bc                                    ; $4FB8: $09
    dec b                                         ; $4FB9: $05
    inc b                                         ; $4FBA: $04

jr_03D_4FBB:
    jr nc, jr_03D_4FB5                            ; $4FBB: $30 $F8

    add c                                         ; $4FBD: $81
    add hl, bc                                    ; $4FBE: $09
    dec b                                         ; $4FBF: $05
    inc b                                         ; $4FC0: $04
    jr nc, jr_03D_4FBB                            ; $4FC1: $30 $F8

    add b                                         ; $4FC3: $80
    nop                                           ; $4FC4: $00
    add c                                         ; $4FC5: $81
    add hl, bc                                    ; $4FC6: $09
    dec b                                         ; $4FC7: $05
    inc b                                         ; $4FC8: $04
    ld [hl], b                                    ; $4FC9: $70
    ld hl, sp-$7F                                 ; $4FCA: $F8 $81
    add hl, bc                                    ; $4FCC: $09
    dec b                                         ; $4FCD: $05
    inc b                                         ; $4FCE: $04
    ld [hl], b                                    ; $4FCF: $70
    ld hl, sp-$7F                                 ; $4FD0: $F8 $81
    add hl, bc                                    ; $4FD2: $09
    dec b                                         ; $4FD3: $05
    inc b                                         ; $4FD4: $04
    ld [hl], b                                    ; $4FD5: $70
    ld hl, sp-$7F                                 ; $4FD6: $F8 $81
    add hl, bc                                    ; $4FD8: $09
    dec b                                         ; $4FD9: $05

jr_03D_4FDA:
    inc b                                         ; $4FDA: $04
    ld [hl], b                                    ; $4FDB: $70
    ld hl, sp-$7C                                 ; $4FDC: $F8 $84
    add b                                         ; $4FDE: $80
    nop                                           ; $4FDF: $00
    add c                                         ; $4FE0: $81
    add hl, bc                                    ; $4FE1: $09
    dec b                                         ; $4FE2: $05
    inc b                                         ; $4FE3: $04
    ld d, b                                       ; $4FE4: $50
    ld hl, sp-$7F                                 ; $4FE5: $F8 $81
    add hl, bc                                    ; $4FE7: $09
    dec b                                         ; $4FE8: $05
    inc b                                         ; $4FE9: $04
    ld d, b                                       ; $4FEA: $50
    ld hl, sp-$7F                                 ; $4FEB: $F8 $81
    add hl, bc                                    ; $4FED: $09
    dec b                                         ; $4FEE: $05
    inc b                                         ; $4FEF: $04
    ld d, b                                       ; $4FF0: $50
    ld hl, sp-$7F                                 ; $4FF1: $F8 $81
    add hl, bc                                    ; $4FF3: $09
    dec b                                         ; $4FF4: $05
    inc b                                         ; $4FF5: $04
    ld d, b                                       ; $4FF6: $50
    ld hl, sp-$80                                 ; $4FF7: $F8 $80
    nop                                           ; $4FF9: $00
    add c                                         ; $4FFA: $81

jr_03D_4FFB:
    add hl, bc                                    ; $4FFB: $09
    dec b                                         ; $4FFC: $05
    inc b                                         ; $4FFD: $04

jr_03D_4FFE:
    jr nc, @-$06                                  ; $4FFE: $30 $F8

    add c                                         ; $5000: $81
    add hl, bc                                    ; $5001: $09
    dec b                                         ; $5002: $05
    inc b                                         ; $5003: $04

jr_03D_5004:
    jr nc, jr_03D_4FFE                            ; $5004: $30 $F8

    add c                                         ; $5006: $81
    add hl, bc                                    ; $5007: $09
    dec b                                         ; $5008: $05
    inc b                                         ; $5009: $04

jr_03D_500A:
    jr nc, jr_03D_5004                            ; $500A: $30 $F8

    add c                                         ; $500C: $81
    add hl, bc                                    ; $500D: $09
    dec b                                         ; $500E: $05
    inc b                                         ; $500F: $04
    jr nc, jr_03D_500A                            ; $5010: $30 $F8

    add b                                         ; $5012: $80
    nop                                           ; $5013: $00
    add c                                         ; $5014: $81
    add hl, bc                                    ; $5015: $09
    dec b                                         ; $5016: $05
    inc b                                         ; $5017: $04
    ld [hl], b                                    ; $5018: $70
    ld hl, sp-$7F                                 ; $5019: $F8 $81
    add hl, bc                                    ; $501B: $09
    dec b                                         ; $501C: $05
    inc b                                         ; $501D: $04
    ld [hl], b                                    ; $501E: $70
    ld hl, sp-$7F                                 ; $501F: $F8 $81
    add hl, bc                                    ; $5021: $09
    dec b                                         ; $5022: $05
    inc b                                         ; $5023: $04
    ld [hl], b                                    ; $5024: $70
    ld hl, sp-$7F                                 ; $5025: $F8 $81
    add hl, bc                                    ; $5027: $09
    dec b                                         ; $5028: $05
    inc b                                         ; $5029: $04
    ld [hl], b                                    ; $502A: $70
    ld hl, sp-$7C                                 ; $502B: $F8 $84
    add b                                         ; $502D: $80
    nop                                           ; $502E: $00
    add c                                         ; $502F: $81
    add hl, bc                                    ; $5030: $09
    add hl, bc                                    ; $5031: $09
    inc b                                         ; $5032: $04
    xor b                                         ; $5033: $A8
    ldh a, [$FF09]                                ; $5034: $F0 $09
    inc b                                         ; $5036: $04
    xor b                                         ; $5037: $A8
    db $10                                        ; $5038: $10
    add c                                         ; $5039: $81
    add hl, bc                                    ; $503A: $09
    add hl, bc                                    ; $503B: $09
    inc b                                         ; $503C: $04
    xor b                                         ; $503D: $A8
    ldh a, [$FF09]                                ; $503E: $F0 $09
    inc b                                         ; $5040: $04
    xor b                                         ; $5041: $A8
    db $10                                        ; $5042: $10
    add b                                         ; $5043: $80

jr_03D_5044:
    nop                                           ; $5044: $00
    add c                                         ; $5045: $81
    add hl, bc                                    ; $5046: $09
    ld [$F804], sp                                ; $5047: $08 $04 $F8
    nop                                           ; $504A: $00
    ld [$F804], sp                                ; $504B: $08 $04 $F8
    jr nz, @-$7D                                  ; $504E: $20 $81

    add hl, bc                                    ; $5050: $09
    ld [$F804], sp                                ; $5051: $08 $04 $F8
    nop                                           ; $5054: $00
    ld [$F804], sp                                ; $5055: $08 $04 $F8
    jr nz, jr_03D_4FDA                            ; $5058: $20 $80

    nop                                           ; $505A: $00
    add c                                         ; $505B: $81
    add hl, bc                                    ; $505C: $09
    ld [$F804], sp                                ; $505D: $08 $04 $F8
    ldh a, [$FF08]                                ; $5060: $F0 $08
    inc b                                         ; $5062: $04
    ld hl, sp+$10                                 ; $5063: $F8 $10
    add hl, bc                                    ; $5065: $09
    inc b                                         ; $5066: $04
    xor b                                         ; $5067: $A8
    ldh a, [$FF09]                                ; $5068: $F0 $09
    inc b                                         ; $506A: $04
    xor b                                         ; $506B: $A8
    db $10                                        ; $506C: $10
    add h                                         ; $506D: $84
    add b                                         ; $506E: $80
    nop                                           ; $506F: $00
    add c                                         ; $5070: $81
    add hl, bc                                    ; $5071: $09
    db $10                                        ; $5072: $10
    inc b                                         ; $5073: $04
    ld hl, sp+$20                                 ; $5074: $F8 $20
    ld de, $A804                                  ; $5076: $11 $04 $A8
    jr nc, jr_03D_4FFB                            ; $5079: $30 $80

    nop                                           ; $507B: $00
    add c                                         ; $507C: $81
    add hl, bc                                    ; $507D: $09
    ld [bc], a                                    ; $507E: $02
    inc b                                         ; $507F: $04

jr_03D_5080:
    jr nz, @-$06                                  ; $5080: $20 $F8

    add c                                         ; $5082: $81
    add hl, bc                                    ; $5083: $09
    ld [bc], a                                    ; $5084: $02
    inc b                                         ; $5085: $04

jr_03D_5086:
    jr nz, jr_03D_5080                            ; $5086: $20 $F8

    add c                                         ; $5088: $81
    add hl, bc                                    ; $5089: $09
    ld [bc], a                                    ; $508A: $02
    inc b                                         ; $508B: $04
    jr nz, jr_03D_5086                            ; $508C: $20 $F8

    add b                                         ; $508E: $80
    nop                                           ; $508F: $00
    add c                                         ; $5090: $81
    add hl, bc                                    ; $5091: $09
    inc bc                                        ; $5092: $03
    inc b                                         ; $5093: $04
    add b                                         ; $5094: $80
    ld hl, sp-$7F                                 ; $5095: $F8 $81
    add hl, bc                                    ; $5097: $09
    inc bc                                        ; $5098: $03
    inc b                                         ; $5099: $04
    add b                                         ; $509A: $80
    ld hl, sp-$7F                                 ; $509B: $F8 $81
    add hl, bc                                    ; $509D: $09
    inc bc                                        ; $509E: $03
    inc b                                         ; $509F: $04
    add b                                         ; $50A0: $80
    ld hl, sp-$7C                                 ; $50A1: $F8 $84

jr_03D_50A3:
    add b                                         ; $50A3: $80
    nop                                           ; $50A4: $00
    add c                                         ; $50A5: $81
    add hl, bc                                    ; $50A6: $09
    ld [bc], a                                    ; $50A7: $02
    inc b                                         ; $50A8: $04

jr_03D_50A9:
    jr nz, jr_03D_50A3                            ; $50A9: $20 $F8

    add c                                         ; $50AB: $81
    add hl, bc                                    ; $50AC: $09

jr_03D_50AD:
    ld [bc], a                                    ; $50AD: $02
    inc b                                         ; $50AE: $04

jr_03D_50AF:
    jr nz, jr_03D_50A9                            ; $50AF: $20 $F8

    add c                                         ; $50B1: $81
    add hl, bc                                    ; $50B2: $09
    ld [bc], a                                    ; $50B3: $02
    inc b                                         ; $50B4: $04
    jr nz, jr_03D_50AF                            ; $50B5: $20 $F8

    add b                                         ; $50B7: $80
    nop                                           ; $50B8: $00
    add c                                         ; $50B9: $81
    add hl, bc                                    ; $50BA: $09
    db $10                                        ; $50BB: $10
    inc b                                         ; $50BC: $04
    ld hl, sp+$20                                 ; $50BD: $F8 $20
    ld de, $A804                                  ; $50BF: $11 $04 $A8
    jr nc, jr_03D_5044                            ; $50C2: $30 $80

    nop                                           ; $50C4: $00
    add c                                         ; $50C5: $81
    add hl, bc                                    ; $50C6: $09
    inc bc                                        ; $50C7: $03
    inc b                                         ; $50C8: $04
    add b                                         ; $50C9: $80
    ld hl, sp-$7F                                 ; $50CA: $F8 $81
    add hl, bc                                    ; $50CC: $09
    inc bc                                        ; $50CD: $03
    inc b                                         ; $50CE: $04
    add b                                         ; $50CF: $80
    ld hl, sp-$7F                                 ; $50D0: $F8 $81
    add hl, bc                                    ; $50D2: $09
    inc bc                                        ; $50D3: $03
    inc b                                         ; $50D4: $04
    add b                                         ; $50D5: $80
    ld hl, sp-$80                                 ; $50D6: $F8 $80
    nop                                           ; $50D8: $00
    add c                                         ; $50D9: $81
    add hl, bc                                    ; $50DA: $09
    dec b                                         ; $50DB: $05
    ld [$F850], sp                                ; $50DC: $08 $50 $F8
    add c                                         ; $50DF: $81
    add hl, bc                                    ; $50E0: $09
    dec b                                         ; $50E1: $05
    ld [$F850], sp                                ; $50E2: $08 $50 $F8
    add c                                         ; $50E5: $81
    add hl, bc                                    ; $50E6: $09
    dec b                                         ; $50E7: $05
    ld [$F850], sp                                ; $50E8: $08 $50 $F8
    add c                                         ; $50EB: $81
    add hl, bc                                    ; $50EC: $09
    dec b                                         ; $50ED: $05
    ld [$F850], sp                                ; $50EE: $08 $50 $F8
    add h                                         ; $50F1: $84
    add b                                         ; $50F2: $80
    nop                                           ; $50F3: $00
    add c                                         ; $50F4: $81
    add hl, bc                                    ; $50F5: $09
    dec b                                         ; $50F6: $05
    ld [$F850], sp                                ; $50F7: $08 $50 $F8
    add c                                         ; $50FA: $81
    add hl, bc                                    ; $50FB: $09
    dec b                                         ; $50FC: $05
    ld [$F850], sp                                ; $50FD: $08 $50 $F8
    add c                                         ; $5100: $81
    add hl, bc                                    ; $5101: $09
    dec b                                         ; $5102: $05
    ld [$F850], sp                                ; $5103: $08 $50 $F8
    add c                                         ; $5106: $81
    add hl, bc                                    ; $5107: $09
    dec b                                         ; $5108: $05
    ld [$F850], sp                                ; $5109: $08 $50 $F8

jr_03D_510C:
    add b                                         ; $510C: $80
    nop                                           ; $510D: $00
    add c                                         ; $510E: $81
    add hl, bc                                    ; $510F: $09
    ld [bc], a                                    ; $5110: $02
    inc b                                         ; $5111: $04

jr_03D_5112:
    jr nz, jr_03D_510C                            ; $5112: $20 $F8

    add c                                         ; $5114: $81
    add hl, bc                                    ; $5115: $09
    ld [bc], a                                    ; $5116: $02
    inc b                                         ; $5117: $04

jr_03D_5118:
    jr nz, jr_03D_5112                            ; $5118: $20 $F8

    add c                                         ; $511A: $81
    add hl, bc                                    ; $511B: $09
    ld [bc], a                                    ; $511C: $02
    inc b                                         ; $511D: $04
    jr nz, jr_03D_5118                            ; $511E: $20 $F8

    add b                                         ; $5120: $80
    nop                                           ; $5121: $00
    add c                                         ; $5122: $81
    add hl, bc                                    ; $5123: $09
    db $10                                        ; $5124: $10
    inc b                                         ; $5125: $04
    ld hl, sp+$20                                 ; $5126: $F8 $20
    ld de, $A804                                  ; $5128: $11 $04 $A8
    jr nc, jr_03D_50AD                            ; $512B: $30 $80

    nop                                           ; $512D: $00
    add c                                         ; $512E: $81
    add hl, bc                                    ; $512F: $09
    inc bc                                        ; $5130: $03
    inc b                                         ; $5131: $04
    add b                                         ; $5132: $80
    ld hl, sp-$7F                                 ; $5133: $F8 $81
    add hl, bc                                    ; $5135: $09
    inc bc                                        ; $5136: $03
    inc b                                         ; $5137: $04
    add b                                         ; $5138: $80
    ld hl, sp-$7F                                 ; $5139: $F8 $81
    add hl, bc                                    ; $513B: $09
    inc bc                                        ; $513C: $03
    inc b                                         ; $513D: $04
    add b                                         ; $513E: $80
    ld hl, sp-$7C                                 ; $513F: $F8 $84

jr_03D_5141:
    add b                                         ; $5141: $80
    nop                                           ; $5142: $00
    add c                                         ; $5143: $81
    add hl, bc                                    ; $5144: $09
    ld [bc], a                                    ; $5145: $02
    inc b                                         ; $5146: $04

jr_03D_5147:
    jr nz, jr_03D_5141                            ; $5147: $20 $F8

    add c                                         ; $5149: $81
    add hl, bc                                    ; $514A: $09
    ld [bc], a                                    ; $514B: $02
    inc b                                         ; $514C: $04

jr_03D_514D:
    jr nz, jr_03D_5147                            ; $514D: $20 $F8

    add c                                         ; $514F: $81
    add hl, bc                                    ; $5150: $09
    ld [bc], a                                    ; $5151: $02
    inc b                                         ; $5152: $04
    jr nz, jr_03D_514D                            ; $5153: $20 $F8

    add b                                         ; $5155: $80
    nop                                           ; $5156: $00
    add c                                         ; $5157: $81
    add hl, bc                                    ; $5158: $09
    dec b                                         ; $5159: $05
    ld [$F850], sp                                ; $515A: $08 $50 $F8
    add c                                         ; $515D: $81
    add hl, bc                                    ; $515E: $09
    dec b                                         ; $515F: $05
    ld [$F850], sp                                ; $5160: $08 $50 $F8
    add c                                         ; $5163: $81
    add hl, bc                                    ; $5164: $09
    dec b                                         ; $5165: $05
    ld [$F850], sp                                ; $5166: $08 $50 $F8
    add b                                         ; $5169: $80
    nop                                           ; $516A: $00
    add c                                         ; $516B: $81
    add hl, bc                                    ; $516C: $09
    inc bc                                        ; $516D: $03
    inc b                                         ; $516E: $04
    add b                                         ; $516F: $80
    ld hl, sp-$7F                                 ; $5170: $F8 $81
    add hl, bc                                    ; $5172: $09
    inc bc                                        ; $5173: $03
    inc b                                         ; $5174: $04
    add b                                         ; $5175: $80
    ld hl, sp-$7F                                 ; $5176: $F8 $81
    add hl, bc                                    ; $5178: $09
    inc bc                                        ; $5179: $03
    inc b                                         ; $517A: $04
    add b                                         ; $517B: $80
    ld hl, sp-$80                                 ; $517C: $F8 $80
    nop                                           ; $517E: $00
    add c                                         ; $517F: $81
    add hl, bc                                    ; $5180: $09
    dec b                                         ; $5181: $05
    ld [$F850], sp                                ; $5182: $08 $50 $F8
    add c                                         ; $5185: $81
    add hl, bc                                    ; $5186: $09
    dec b                                         ; $5187: $05
    ld [$F850], sp                                ; $5188: $08 $50 $F8
    add c                                         ; $518B: $81
    add hl, bc                                    ; $518C: $09
    dec b                                         ; $518D: $05
    ld [$F850], sp                                ; $518E: $08 $50 $F8
    add h                                         ; $5191: $84
    add b                                         ; $5192: $80
    nop                                           ; $5193: $00
    add c                                         ; $5194: $81
    add hl, bc                                    ; $5195: $09
    dec b                                         ; $5196: $05
    ld [$F850], sp                                ; $5197: $08 $50 $F8
    add c                                         ; $519A: $81
    add hl, bc                                    ; $519B: $09
    dec b                                         ; $519C: $05
    ld [$F850], sp                                ; $519D: $08 $50 $F8
    add c                                         ; $51A0: $81
    add hl, bc                                    ; $51A1: $09
    dec b                                         ; $51A2: $05
    ld [$F850], sp                                ; $51A3: $08 $50 $F8
    add c                                         ; $51A6: $81
    add hl, bc                                    ; $51A7: $09
    dec b                                         ; $51A8: $05
    ld [$F850], sp                                ; $51A9: $08 $50 $F8

jr_03D_51AC:
    add b                                         ; $51AC: $80
    nop                                           ; $51AD: $00
    add c                                         ; $51AE: $81
    add hl, bc                                    ; $51AF: $09
    dec b                                         ; $51B0: $05
    inc c                                         ; $51B1: $0C

jr_03D_51B2:
    jr z, jr_03D_51AC                             ; $51B2: $28 $F8

    add c                                         ; $51B4: $81
    add hl, bc                                    ; $51B5: $09
    dec b                                         ; $51B6: $05
    inc c                                         ; $51B7: $0C

jr_03D_51B8:
    jr z, jr_03D_51B2                             ; $51B8: $28 $F8

    add c                                         ; $51BA: $81
    add hl, bc                                    ; $51BB: $09
    dec b                                         ; $51BC: $05
    inc c                                         ; $51BD: $0C

jr_03D_51BE:
    jr z, jr_03D_51B8                             ; $51BE: $28 $F8

    add c                                         ; $51C0: $81
    add hl, bc                                    ; $51C1: $09
    dec b                                         ; $51C2: $05
    inc c                                         ; $51C3: $0C
    jr z, jr_03D_51BE                             ; $51C4: $28 $F8

    add b                                         ; $51C6: $80
    nop                                           ; $51C7: $00
    add c                                         ; $51C8: $81
    add hl, bc                                    ; $51C9: $09
    dec b                                         ; $51CA: $05
    inc c                                         ; $51CB: $0C
    ld a, b                                       ; $51CC: $78
    ld hl, sp-$7F                                 ; $51CD: $F8 $81
    add hl, bc                                    ; $51CF: $09
    dec b                                         ; $51D0: $05
    inc c                                         ; $51D1: $0C
    ld a, b                                       ; $51D2: $78
    ld hl, sp-$7F                                 ; $51D3: $F8 $81
    add hl, bc                                    ; $51D5: $09
    dec b                                         ; $51D6: $05
    inc c                                         ; $51D7: $0C
    ld a, b                                       ; $51D8: $78
    ld hl, sp-$7F                                 ; $51D9: $F8 $81
    add hl, bc                                    ; $51DB: $09
    dec b                                         ; $51DC: $05
    inc c                                         ; $51DD: $0C
    ld a, b                                       ; $51DE: $78
    ld hl, sp-$7C                                 ; $51DF: $F8 $84
    add b                                         ; $51E1: $80
    nop                                           ; $51E2: $00
    add c                                         ; $51E3: $81
    add hl, bc                                    ; $51E4: $09
    dec b                                         ; $51E5: $05
    ld [$F850], sp                                ; $51E6: $08 $50 $F8
    add c                                         ; $51E9: $81
    add hl, bc                                    ; $51EA: $09
    dec b                                         ; $51EB: $05
    ld [$F850], sp                                ; $51EC: $08 $50 $F8
    add c                                         ; $51EF: $81
    add hl, bc                                    ; $51F0: $09
    dec b                                         ; $51F1: $05
    ld [$F850], sp                                ; $51F2: $08 $50 $F8
    add c                                         ; $51F5: $81
    add hl, bc                                    ; $51F6: $09
    dec b                                         ; $51F7: $05
    ld [$F850], sp                                ; $51F8: $08 $50 $F8
    add b                                         ; $51FB: $80
    nop                                           ; $51FC: $00
    add c                                         ; $51FD: $81
    add hl, bc                                    ; $51FE: $09
    dec b                                         ; $51FF: $05
    inc c                                         ; $5200: $0C
    db $10                                        ; $5201: $10
    ld hl, sp-$7F                                 ; $5202: $F8 $81
    add hl, bc                                    ; $5204: $09
    dec b                                         ; $5205: $05
    inc c                                         ; $5206: $0C
    db $10                                        ; $5207: $10
    ld hl, sp-$7F                                 ; $5208: $F8 $81
    add hl, bc                                    ; $520A: $09
    dec b                                         ; $520B: $05
    inc c                                         ; $520C: $0C
    db $10                                        ; $520D: $10
    ld hl, sp-$7F                                 ; $520E: $F8 $81
    add hl, bc                                    ; $5210: $09
    dec b                                         ; $5211: $05
    inc c                                         ; $5212: $0C
    db $10                                        ; $5213: $10
    ld hl, sp-$80                                 ; $5214: $F8 $80
    nop                                           ; $5216: $00
    add c                                         ; $5217: $81
    add hl, bc                                    ; $5218: $09
    dec b                                         ; $5219: $05
    inc c                                         ; $521A: $0C
    sub b                                         ; $521B: $90
    ld hl, sp-$7F                                 ; $521C: $F8 $81
    add hl, bc                                    ; $521E: $09
    dec b                                         ; $521F: $05
    inc c                                         ; $5220: $0C
    sub b                                         ; $5221: $90
    ld hl, sp-$7F                                 ; $5222: $F8 $81
    add hl, bc                                    ; $5224: $09
    dec b                                         ; $5225: $05
    inc c                                         ; $5226: $0C
    sub b                                         ; $5227: $90
    ld hl, sp-$7F                                 ; $5228: $F8 $81
    add hl, bc                                    ; $522A: $09
    dec b                                         ; $522B: $05
    inc c                                         ; $522C: $0C
    sub b                                         ; $522D: $90
    ld hl, sp-$7C                                 ; $522E: $F8 $84
    add b                                         ; $5230: $80
    nop                                           ; $5231: $00
    add c                                         ; $5232: $81
    add hl, bc                                    ; $5233: $09
    dec b                                         ; $5234: $05
    ld [$F850], sp                                ; $5235: $08 $50 $F8
    add c                                         ; $5238: $81
    add hl, bc                                    ; $5239: $09
    dec b                                         ; $523A: $05
    ld [$F850], sp                                ; $523B: $08 $50 $F8
    add c                                         ; $523E: $81
    add hl, bc                                    ; $523F: $09
    dec b                                         ; $5240: $05
    ld [$F850], sp                                ; $5241: $08 $50 $F8
    add c                                         ; $5244: $81
    add hl, bc                                    ; $5245: $09
    dec b                                         ; $5246: $05
    ld [$F850], sp                                ; $5247: $08 $50 $F8
    add b                                         ; $524A: $80
    nop                                           ; $524B: $00
    add c                                         ; $524C: $81
    add hl, bc                                    ; $524D: $09
    dec b                                         ; $524E: $05
    inc c                                         ; $524F: $0C
    ld a, b                                       ; $5250: $78
    ld hl, sp-$7F                                 ; $5251: $F8 $81
    add hl, bc                                    ; $5253: $09
    dec b                                         ; $5254: $05
    inc c                                         ; $5255: $0C
    ld a, b                                       ; $5256: $78
    ld hl, sp-$7F                                 ; $5257: $F8 $81
    add hl, bc                                    ; $5259: $09
    dec b                                         ; $525A: $05
    inc c                                         ; $525B: $0C
    ld a, b                                       ; $525C: $78
    ld hl, sp-$7F                                 ; $525D: $F8 $81
    add hl, bc                                    ; $525F: $09
    dec b                                         ; $5260: $05
    inc c                                         ; $5261: $0C
    ld a, b                                       ; $5262: $78
    ld hl, sp-$80                                 ; $5263: $F8 $80
    nop                                           ; $5265: $00
    add c                                         ; $5266: $81
    add hl, bc                                    ; $5267: $09
    dec b                                         ; $5268: $05
    inc c                                         ; $5269: $0C

jr_03D_526A:
    jr z, @-$06                                   ; $526A: $28 $F8

    add c                                         ; $526C: $81
    add hl, bc                                    ; $526D: $09
    dec b                                         ; $526E: $05
    inc c                                         ; $526F: $0C

jr_03D_5270:
    jr z, jr_03D_526A                             ; $5270: $28 $F8

    add c                                         ; $5272: $81
    add hl, bc                                    ; $5273: $09
    dec b                                         ; $5274: $05
    inc c                                         ; $5275: $0C

jr_03D_5276:
    jr z, jr_03D_5270                             ; $5276: $28 $F8

    add c                                         ; $5278: $81
    add hl, bc                                    ; $5279: $09
    dec b                                         ; $527A: $05
    inc c                                         ; $527B: $0C
    jr z, jr_03D_5276                             ; $527C: $28 $F8

    add h                                         ; $527E: $84
    add b                                         ; $527F: $80
    nop                                           ; $5280: $00
    add c                                         ; $5281: $81
    add hl, bc                                    ; $5282: $09
    dec b                                         ; $5283: $05
    ld [$F850], sp                                ; $5284: $08 $50 $F8
    add c                                         ; $5287: $81
    add hl, bc                                    ; $5288: $09
    dec b                                         ; $5289: $05
    ld [$F850], sp                                ; $528A: $08 $50 $F8
    add c                                         ; $528D: $81
    add hl, bc                                    ; $528E: $09
    dec b                                         ; $528F: $05
    ld [$F850], sp                                ; $5290: $08 $50 $F8
    add c                                         ; $5293: $81
    add hl, bc                                    ; $5294: $09
    dec b                                         ; $5295: $05
    ld [$F850], sp                                ; $5296: $08 $50 $F8
    add b                                         ; $5299: $80
    nop                                           ; $529A: $00
    add c                                         ; $529B: $81
    add hl, bc                                    ; $529C: $09
    dec b                                         ; $529D: $05
    inc c                                         ; $529E: $0C
    sub b                                         ; $529F: $90
    ld hl, sp-$7F                                 ; $52A0: $F8 $81
    add hl, bc                                    ; $52A2: $09
    dec b                                         ; $52A3: $05
    inc c                                         ; $52A4: $0C
    sub b                                         ; $52A5: $90
    ld hl, sp-$7F                                 ; $52A6: $F8 $81
    add hl, bc                                    ; $52A8: $09
    dec b                                         ; $52A9: $05
    inc c                                         ; $52AA: $0C
    sub b                                         ; $52AB: $90
    ld hl, sp-$7F                                 ; $52AC: $F8 $81
    add hl, bc                                    ; $52AE: $09
    dec b                                         ; $52AF: $05
    inc c                                         ; $52B0: $0C
    sub b                                         ; $52B1: $90
    ld hl, sp-$80                                 ; $52B2: $F8 $80
    nop                                           ; $52B4: $00
    add c                                         ; $52B5: $81
    add hl, bc                                    ; $52B6: $09
    dec b                                         ; $52B7: $05
    inc c                                         ; $52B8: $0C
    db $10                                        ; $52B9: $10
    ld hl, sp-$7F                                 ; $52BA: $F8 $81
    add hl, bc                                    ; $52BC: $09
    dec b                                         ; $52BD: $05
    inc c                                         ; $52BE: $0C
    db $10                                        ; $52BF: $10
    ld hl, sp-$7F                                 ; $52C0: $F8 $81
    add hl, bc                                    ; $52C2: $09
    dec b                                         ; $52C3: $05
    inc c                                         ; $52C4: $0C
    db $10                                        ; $52C5: $10
    ld hl, sp-$7F                                 ; $52C6: $F8 $81
    add hl, bc                                    ; $52C8: $09
    dec b                                         ; $52C9: $05
    inc c                                         ; $52CA: $0C
    db $10                                        ; $52CB: $10
    ld hl, sp-$7C                                 ; $52CC: $F8 $84
    add b                                         ; $52CE: $80
    nop                                           ; $52CF: $00
    add c                                         ; $52D0: $81
    add hl, bc                                    ; $52D1: $09
    rrca                                          ; $52D2: $0F
    inc b                                         ; $52D3: $04
    ld b, b                                       ; $52D4: $40
    ld hl, sp-$7F                                 ; $52D5: $F8 $81
    add hl, bc                                    ; $52D7: $09
    rrca                                          ; $52D8: $0F
    inc b                                         ; $52D9: $04
    ld h, b                                       ; $52DA: $60
    ld hl, sp-$7F                                 ; $52DB: $F8 $81
    add hl, bc                                    ; $52DD: $09
    rrca                                          ; $52DE: $0F
    inc b                                         ; $52DF: $04
    ld b, b                                       ; $52E0: $40
    ld hl, sp-$7F                                 ; $52E1: $F8 $81
    add hl, bc                                    ; $52E3: $09
    rrca                                          ; $52E4: $0F
    inc b                                         ; $52E5: $04

jr_03D_52E6:
    ld h, b                                       ; $52E6: $60
    ld hl, sp-$80                                 ; $52E7: $F8 $80
    ld [bc], a                                    ; $52E9: $02
    rrca                                          ; $52EA: $0F
    inc b                                         ; $52EB: $04
    jr nc, jr_03D_52E6                            ; $52EC: $30 $F8

    add b                                         ; $52EE: $80
    ld [bc], a                                    ; $52EF: $02
    rrca                                          ; $52F0: $0F
    inc b                                         ; $52F1: $04

jr_03D_52F2:
    ld [hl], b                                    ; $52F2: $70
    ld hl, sp-$80                                 ; $52F3: $F8 $80
    ld [bc], a                                    ; $52F5: $02
    rrca                                          ; $52F6: $0F
    inc b                                         ; $52F7: $04
    jr nc, jr_03D_52F2                            ; $52F8: $30 $F8

    add b                                         ; $52FA: $80
    ld [bc], a                                    ; $52FB: $02
    rrca                                          ; $52FC: $0F
    inc b                                         ; $52FD: $04

jr_03D_52FE:
    ld [hl], b                                    ; $52FE: $70
    ld hl, sp-$80                                 ; $52FF: $F8 $80
    ld [bc], a                                    ; $5301: $02
    rrca                                          ; $5302: $0F
    inc b                                         ; $5303: $04
    jr nz, jr_03D_52FE                            ; $5304: $20 $F8

    add b                                         ; $5306: $80
    ld [bc], a                                    ; $5307: $02
    rrca                                          ; $5308: $0F
    inc b                                         ; $5309: $04

jr_03D_530A:
    add b                                         ; $530A: $80
    ld hl, sp-$80                                 ; $530B: $F8 $80
    ld [bc], a                                    ; $530D: $02
    rrca                                          ; $530E: $0F
    inc b                                         ; $530F: $04
    jr nz, jr_03D_530A                            ; $5310: $20 $F8

    add b                                         ; $5312: $80
    ld [bc], a                                    ; $5313: $02
    rrca                                          ; $5314: $0F
    inc b                                         ; $5315: $04
    add b                                         ; $5316: $80
    ld hl, sp-$7C                                 ; $5317: $F8 $84

jr_03D_5319:
    add b                                         ; $5319: $80
    nop                                           ; $531A: $00
    add c                                         ; $531B: $81
    add hl, bc                                    ; $531C: $09
    dec b                                         ; $531D: $05
    inc b                                         ; $531E: $04
    jr nz, jr_03D_5319                            ; $531F: $20 $F8

    dec b                                         ; $5321: $05
    inc b                                         ; $5322: $04
    ld b, b                                       ; $5323: $40
    ld hl, sp+$05                                 ; $5324: $F8 $05
    inc b                                         ; $5326: $04
    ld h, b                                       ; $5327: $60
    ld hl, sp+$05                                 ; $5328: $F8 $05
    inc b                                         ; $532A: $04
    add b                                         ; $532B: $80
    ld hl, sp-$80                                 ; $532C: $F8 $80
    nop                                           ; $532E: $00
    add c                                         ; $532F: $81
    add hl, bc                                    ; $5330: $09
    dec b                                         ; $5331: $05
    inc b                                         ; $5332: $04
    jr z, @-$06                                   ; $5333: $28 $F8

    dec b                                         ; $5335: $05
    inc b                                         ; $5336: $04
    ld b, h                                       ; $5337: $44
    ld hl, sp+$05                                 ; $5338: $F8 $05
    inc b                                         ; $533A: $04
    ld e, h                                       ; $533B: $5C
    ld hl, sp+$05                                 ; $533C: $F8 $05
    inc b                                         ; $533E: $04
    ld a, b                                       ; $533F: $78
    ld hl, sp-$80                                 ; $5340: $F8 $80
    nop                                           ; $5342: $00
    add c                                         ; $5343: $81
    add hl, bc                                    ; $5344: $09
    inc b                                         ; $5345: $04
    inc b                                         ; $5346: $04
    jr c, @-$06                                   ; $5347: $38 $F8

    inc b                                         ; $5349: $04
    inc b                                         ; $534A: $04
    ld c, b                                       ; $534B: $48
    ld hl, sp+$04                                 ; $534C: $F8 $04
    inc b                                         ; $534E: $04
    ld e, b                                       ; $534F: $58
    ld hl, sp+$04                                 ; $5350: $F8 $04
    inc b                                         ; $5352: $04
    ld l, b                                       ; $5353: $68
    ld hl, sp-$7C                                 ; $5354: $F8 $84
    add b                                         ; $5356: $80
    nop                                           ; $5357: $00
    add c                                         ; $5358: $81
    add hl, bc                                    ; $5359: $09
    inc c                                         ; $535A: $0C
    inc b                                         ; $535B: $04
    ld hl, sp+$10                                 ; $535C: $F8 $10
    inc c                                         ; $535E: $0C
    inc b                                         ; $535F: $04
    ld hl, sp+$30                                 ; $5360: $F8 $30
    dec c                                         ; $5362: $0D
    inc b                                         ; $5363: $04
    xor b                                         ; $5364: $A8
    jr nz, jr_03D_5374                            ; $5365: $20 $0D

    inc b                                         ; $5367: $04
    xor b                                         ; $5368: $A8
    ld b, b                                       ; $5369: $40
    add b                                         ; $536A: $80
    nop                                           ; $536B: $00
    add c                                         ; $536C: $81
    add hl, bc                                    ; $536D: $09
    inc c                                         ; $536E: $0C
    inc b                                         ; $536F: $04
    ld hl, sp+$20                                 ; $5370: $F8 $20
    inc c                                         ; $5372: $0C
    inc b                                         ; $5373: $04

jr_03D_5374:
    ld hl, sp+$40                                 ; $5374: $F8 $40
    dec c                                         ; $5376: $0D
    inc b                                         ; $5377: $04
    xor b                                         ; $5378: $A8
    jr nc, jr_03D_5388                            ; $5379: $30 $0D

    inc b                                         ; $537B: $04

jr_03D_537C:
    xor b                                         ; $537C: $A8
    ld d, b                                       ; $537D: $50

jr_03D_537E:
    add b                                         ; $537E: $80
    nop                                           ; $537F: $00
    add c                                         ; $5380: $81
    add hl, bc                                    ; $5381: $09
    ld [de], a                                    ; $5382: $12
    inc b                                         ; $5383: $04
    jr nz, jr_03D_537E                            ; $5384: $20 $F8

    inc de                                        ; $5386: $13
    inc b                                         ; $5387: $04

jr_03D_5388:
    add b                                         ; $5388: $80
    ld hl, sp-$80                                 ; $5389: $F8 $80
    nop                                           ; $538B: $00
    add c                                         ; $538C: $81
    add hl, bc                                    ; $538D: $09
    ld [de], a                                    ; $538E: $12
    ld [$F830], sp                                ; $538F: $08 $30 $F8
    inc de                                        ; $5392: $13
    ld [$F870], sp                                ; $5393: $08 $70 $F8
    add h                                         ; $5396: $84
    add b                                         ; $5397: $80
    nop                                           ; $5398: $00
    add c                                         ; $5399: $81
    add hl, bc                                    ; $539A: $09
    inc c                                         ; $539B: $0C
    inc b                                         ; $539C: $04
    ld hl, sp+$10                                 ; $539D: $F8 $10

jr_03D_539F:
    inc c                                         ; $539F: $0C
    inc b                                         ; $53A0: $04
    ld hl, sp+$30                                 ; $53A1: $F8 $30
    dec c                                         ; $53A3: $0D
    inc b                                         ; $53A4: $04
    xor b                                         ; $53A5: $A8
    jr nz, jr_03D_53B5                            ; $53A6: $20 $0D

    inc b                                         ; $53A8: $04
    xor b                                         ; $53A9: $A8
    ld b, b                                       ; $53AA: $40

jr_03D_53AB:
    add b                                         ; $53AB: $80
    nop                                           ; $53AC: $00
    add c                                         ; $53AD: $81
    add hl, bc                                    ; $53AE: $09
    ld [de], a                                    ; $53AF: $12
    inc b                                         ; $53B0: $04
    jr nz, jr_03D_53AB                            ; $53B1: $20 $F8

    inc de                                        ; $53B3: $13
    inc b                                         ; $53B4: $04

jr_03D_53B5:
    add b                                         ; $53B5: $80
    ld hl, sp-$80                                 ; $53B6: $F8 $80
    nop                                           ; $53B8: $00
    add c                                         ; $53B9: $81
    add hl, bc                                    ; $53BA: $09
    inc c                                         ; $53BB: $0C
    inc b                                         ; $53BC: $04
    ld hl, sp+$20                                 ; $53BD: $F8 $20

jr_03D_53BF:
    inc c                                         ; $53BF: $0C
    inc b                                         ; $53C0: $04
    ld hl, sp+$40                                 ; $53C1: $F8 $40
    dec c                                         ; $53C3: $0D
    inc b                                         ; $53C4: $04
    xor b                                         ; $53C5: $A8
    jr nc, jr_03D_53D5                            ; $53C6: $30 $0D

jr_03D_53C8:
    inc b                                         ; $53C8: $04
    xor b                                         ; $53C9: $A8
    ld d, b                                       ; $53CA: $50
    add b                                         ; $53CB: $80
    nop                                           ; $53CC: $00
    add c                                         ; $53CD: $81
    add hl, bc                                    ; $53CE: $09
    inc de                                        ; $53CF: $13
    inc b                                         ; $53D0: $04
    ld b, b                                       ; $53D1: $40
    ld hl, sp+$12                                 ; $53D2: $F8 $12
    inc b                                         ; $53D4: $04

jr_03D_53D5:
    ld h, b                                       ; $53D5: $60
    ld hl, sp-$7C                                 ; $53D6: $F8 $84
    add b                                         ; $53D8: $80
    nop                                           ; $53D9: $00
    add c                                         ; $53DA: $81
    add hl, bc                                    ; $53DB: $09
    inc c                                         ; $53DC: $0C
    inc b                                         ; $53DD: $04
    ld hl, sp+$10                                 ; $53DE: $F8 $10
    inc c                                         ; $53E0: $0C
    inc b                                         ; $53E1: $04
    ld hl, sp+$30                                 ; $53E2: $F8 $30
    add c                                         ; $53E4: $81
    add hl, bc                                    ; $53E5: $09
    inc c                                         ; $53E6: $0C
    inc b                                         ; $53E7: $04
    ld hl, sp+$10                                 ; $53E8: $F8 $10
    inc c                                         ; $53EA: $0C
    inc b                                         ; $53EB: $04
    ld hl, sp+$30                                 ; $53EC: $F8 $30
    add b                                         ; $53EE: $80
    nop                                           ; $53EF: $00
    add c                                         ; $53F0: $81
    add hl, bc                                    ; $53F1: $09
    dec c                                         ; $53F2: $0D
    inc b                                         ; $53F3: $04
    xor b                                         ; $53F4: $A8
    db $10                                        ; $53F5: $10
    dec c                                         ; $53F6: $0D
    inc b                                         ; $53F7: $04
    xor b                                         ; $53F8: $A8
    jr nc, jr_03D_537C                            ; $53F9: $30 $81

    add hl, bc                                    ; $53FB: $09
    dec c                                         ; $53FC: $0D
    inc b                                         ; $53FD: $04
    xor b                                         ; $53FE: $A8
    db $10                                        ; $53FF: $10
    dec c                                         ; $5400: $0D
    inc b                                         ; $5401: $04
    xor b                                         ; $5402: $A8
    jr nc, @-$7E                                  ; $5403: $30 $80

    nop                                           ; $5405: $00
    add c                                         ; $5406: $81
    add hl, bc                                    ; $5407: $09
    inc c                                         ; $5408: $0C
    inc b                                         ; $5409: $04
    ld hl, sp+$10                                 ; $540A: $F8 $10
    dec c                                         ; $540C: $0D
    inc b                                         ; $540D: $04
    xor b                                         ; $540E: $A8
    db $10                                        ; $540F: $10
    add c                                         ; $5410: $81
    add hl, bc                                    ; $5411: $09
    inc c                                         ; $5412: $0C
    inc b                                         ; $5413: $04
    ld hl, sp+$30                                 ; $5414: $F8 $30
    dec c                                         ; $5416: $0D
    inc b                                         ; $5417: $04
    xor b                                         ; $5418: $A8
    jr nc, jr_03D_539F                            ; $5419: $30 $84

    add b                                         ; $541B: $80
    nop                                           ; $541C: $00
    add c                                         ; $541D: $81
    add hl, bc                                    ; $541E: $09
    inc c                                         ; $541F: $0C
    inc b                                         ; $5420: $04
    ld hl, sp+$20                                 ; $5421: $F8 $20
    inc c                                         ; $5423: $0C
    inc b                                         ; $5424: $04
    ld hl, sp+$30                                 ; $5425: $F8 $30
    add c                                         ; $5427: $81
    add hl, bc                                    ; $5428: $09
    inc c                                         ; $5429: $0C
    inc b                                         ; $542A: $04
    ld hl, sp+$20                                 ; $542B: $F8 $20
    inc c                                         ; $542D: $0C
    inc b                                         ; $542E: $04
    ld hl, sp+$30                                 ; $542F: $F8 $30
    add b                                         ; $5431: $80
    nop                                           ; $5432: $00
    add c                                         ; $5433: $81
    add hl, bc                                    ; $5434: $09
    dec c                                         ; $5435: $0D
    inc b                                         ; $5436: $04
    xor b                                         ; $5437: $A8
    jr nz, @+$0F                                  ; $5438: $20 $0D

    inc b                                         ; $543A: $04
    xor b                                         ; $543B: $A8
    jr nc, jr_03D_53BF                            ; $543C: $30 $81

    add hl, bc                                    ; $543E: $09
    dec c                                         ; $543F: $0D
    inc b                                         ; $5440: $04
    xor b                                         ; $5441: $A8
    jr nz, jr_03D_5451                            ; $5442: $20 $0D

    inc b                                         ; $5444: $04
    xor b                                         ; $5445: $A8
    jr nc, jr_03D_53C8                            ; $5446: $30 $80

    nop                                           ; $5448: $00
    add c                                         ; $5449: $81
    add hl, bc                                    ; $544A: $09

jr_03D_544B:
    ld [$3004], sp                                ; $544B: $08 $04 $30
    ld hl, sp+$0A                                 ; $544E: $F8 $0A
    inc b                                         ; $5450: $04

jr_03D_5451:
    jr nc, jr_03D_544B                            ; $5451: $30 $F8

    add hl, bc                                    ; $5453: $09
    inc b                                         ; $5454: $04
    ld [hl], b                                    ; $5455: $70
    ld hl, sp+$0B                                 ; $5456: $F8 $0B
    inc b                                         ; $5458: $04
    ld [hl], b                                    ; $5459: $70
    ld hl, sp-$7C                                 ; $545A: $F8 $84

jr_03D_545C:
    add b                                         ; $545C: $80
    nop                                           ; $545D: $00
    add c                                         ; $545E: $81
    add hl, bc                                    ; $545F: $09
    inc b                                         ; $5460: $04
    inc b                                         ; $5461: $04
    jr nc, jr_03D_545C                            ; $5462: $30 $F8

    add c                                         ; $5464: $81
    add hl, bc                                    ; $5465: $09
    inc b                                         ; $5466: $04
    inc b                                         ; $5467: $04
    ld b, b                                       ; $5468: $40
    ld hl, sp-$7F                                 ; $5469: $F8 $81
    add hl, bc                                    ; $546B: $09
    inc b                                         ; $546C: $04
    inc b                                         ; $546D: $04
    ld d, b                                       ; $546E: $50
    ld hl, sp-$7F                                 ; $546F: $F8 $81
    add hl, bc                                    ; $5471: $09
    inc b                                         ; $5472: $04
    inc b                                         ; $5473: $04
    ld h, b                                       ; $5474: $60
    ld hl, sp-$7F                                 ; $5475: $F8 $81
    add hl, bc                                    ; $5477: $09
    inc b                                         ; $5478: $04
    inc b                                         ; $5479: $04
    ld [hl], b                                    ; $547A: $70
    ld hl, sp-$80                                 ; $547B: $F8 $80
    nop                                           ; $547D: $00
    add c                                         ; $547E: $81
    add hl, bc                                    ; $547F: $09
    inc b                                         ; $5480: $04
    inc b                                         ; $5481: $04
    ld [hl], b                                    ; $5482: $70
    ld hl, sp-$7F                                 ; $5483: $F8 $81
    add hl, bc                                    ; $5485: $09
    inc b                                         ; $5486: $04
    inc b                                         ; $5487: $04
    ld h, b                                       ; $5488: $60
    ld hl, sp-$7F                                 ; $5489: $F8 $81
    add hl, bc                                    ; $548B: $09
    inc b                                         ; $548C: $04
    inc b                                         ; $548D: $04
    ld d, b                                       ; $548E: $50
    ld hl, sp-$7F                                 ; $548F: $F8 $81
    add hl, bc                                    ; $5491: $09
    inc b                                         ; $5492: $04
    inc b                                         ; $5493: $04

jr_03D_5494:
    ld b, b                                       ; $5494: $40
    ld hl, sp-$7F                                 ; $5495: $F8 $81
    add hl, bc                                    ; $5497: $09
    inc b                                         ; $5498: $04
    inc b                                         ; $5499: $04
    jr nc, jr_03D_5494                            ; $549A: $30 $F8

jr_03D_549C:
    add b                                         ; $549C: $80
    nop                                           ; $549D: $00
    add c                                         ; $549E: $81
    add hl, bc                                    ; $549F: $09
    ld b, $04                                     ; $54A0: $06 $04
    jr nz, jr_03D_549C                            ; $54A2: $20 $F8

    rlca                                          ; $54A4: $07
    inc b                                         ; $54A5: $04
    add b                                         ; $54A6: $80
    ld hl, sp-$7C                                 ; $54A7: $F8 $84
    add b                                         ; $54A9: $80
    nop                                           ; $54AA: $00
    add c                                         ; $54AB: $81
    add hl, bc                                    ; $54AC: $09

jr_03D_54AD:
    ld [$2004], sp                                ; $54AD: $08 $04 $20
    ld hl, sp+$00                                 ; $54B0: $F8 $00
    inc b                                         ; $54B2: $04
    jr nz, jr_03D_54AD                            ; $54B3: $20 $F8

    ld a, [bc]                                    ; $54B5: $0A
    inc b                                         ; $54B6: $04
    jr nz, @-$06                                  ; $54B7: $20 $F8

    add b                                         ; $54B9: $80
    nop                                           ; $54BA: $00
    add c                                         ; $54BB: $81
    add hl, bc                                    ; $54BC: $09
    add hl, bc                                    ; $54BD: $09
    inc b                                         ; $54BE: $04
    add b                                         ; $54BF: $80
    ld hl, sp+$01                                 ; $54C0: $F8 $01
    inc b                                         ; $54C2: $04
    add b                                         ; $54C3: $80
    ld hl, sp+$0B                                 ; $54C4: $F8 $0B
    inc b                                         ; $54C6: $04
    add b                                         ; $54C7: $80
    ld hl, sp-$80                                 ; $54C8: $F8 $80
    nop                                           ; $54CA: $00
    add c                                         ; $54CB: $81
    add hl, bc                                    ; $54CC: $09
    ld [$1004], sp                                ; $54CD: $08 $04 $10
    ld hl, sp+$00                                 ; $54D0: $F8 $00
    inc b                                         ; $54D2: $04
    db $10                                        ; $54D3: $10
    ld hl, sp+$0A                                 ; $54D4: $F8 $0A
    inc b                                         ; $54D6: $04
    db $10                                        ; $54D7: $10
    ld hl, sp-$80                                 ; $54D8: $F8 $80
    nop                                           ; $54DA: $00
    add c                                         ; $54DB: $81
    add hl, bc                                    ; $54DC: $09
    add hl, bc                                    ; $54DD: $09
    inc b                                         ; $54DE: $04
    sub b                                         ; $54DF: $90
    ld hl, sp+$01                                 ; $54E0: $F8 $01
    inc b                                         ; $54E2: $04
    sub b                                         ; $54E3: $90
    ld hl, sp+$0B                                 ; $54E4: $F8 $0B
    inc b                                         ; $54E6: $04
    sub b                                         ; $54E7: $90
    ld hl, sp-$7C                                 ; $54E8: $F8 $84
    add b                                         ; $54EA: $80
    nop                                           ; $54EB: $00
    add c                                         ; $54EC: $81
    add hl, bc                                    ; $54ED: $09
    dec b                                         ; $54EE: $05
    inc b                                         ; $54EF: $04
    ld d, b                                       ; $54F0: $50
    ld hl, sp-$7F                                 ; $54F1: $F8 $81
    add hl, bc                                    ; $54F3: $09
    dec b                                         ; $54F4: $05
    inc b                                         ; $54F5: $04
    ld b, b                                       ; $54F6: $40
    ld hl, sp+$05                                 ; $54F7: $F8 $05
    inc b                                         ; $54F9: $04

jr_03D_54FA:
    ld h, b                                       ; $54FA: $60
    ld hl, sp-$7F                                 ; $54FB: $F8 $81
    add hl, bc                                    ; $54FD: $09
    dec b                                         ; $54FE: $05
    inc b                                         ; $54FF: $04
    jr nc, jr_03D_54FA                            ; $5500: $30 $F8

    dec b                                         ; $5502: $05
    inc b                                         ; $5503: $04
    ld [hl], b                                    ; $5504: $70
    ld hl, sp-$80                                 ; $5505: $F8 $80
    nop                                           ; $5507: $00
    add c                                         ; $5508: $81
    add hl, bc                                    ; $5509: $09
    ld b, $04                                     ; $550A: $06 $04
    jr nz, @-$06                                  ; $550C: $20 $F8

    rlca                                          ; $550E: $07
    inc b                                         ; $550F: $04

jr_03D_5510:
    add b                                         ; $5510: $80
    ld hl, sp-$7F                                 ; $5511: $F8 $81
    inc de                                        ; $5513: $13
    ld b, $04                                     ; $5514: $06 $04
    jr nc, jr_03D_5510                            ; $5516: $30 $F8

    rlca                                          ; $5518: $07
    inc b                                         ; $5519: $04
    ld [hl], b                                    ; $551A: $70
    ld hl, sp-$80                                 ; $551B: $F8 $80
    nop                                           ; $551D: $00
    add c                                         ; $551E: $81
    add hl, bc                                    ; $551F: $09
    inc b                                         ; $5520: $04
    inc b                                         ; $5521: $04
    ld d, b                                       ; $5522: $50
    ld hl, sp-$7F                                 ; $5523: $F8 $81
    add hl, bc                                    ; $5525: $09
    inc b                                         ; $5526: $04
    inc b                                         ; $5527: $04
    ld b, b                                       ; $5528: $40
    ld hl, sp+$04                                 ; $5529: $F8 $04
    inc b                                         ; $552B: $04
    ld h, b                                       ; $552C: $60
    ld hl, sp-$7C                                 ; $552D: $F8 $84

jr_03D_552F:
    add b                                         ; $552F: $80
    nop                                           ; $5530: $00
    add c                                         ; $5531: $81
    add hl, bc                                    ; $5532: $09
    dec b                                         ; $5533: $05
    inc b                                         ; $5534: $04
    jr nc, jr_03D_552F                            ; $5535: $30 $F8

    dec b                                         ; $5537: $05
    inc b                                         ; $5538: $04
    ld [hl], b                                    ; $5539: $70
    ld hl, sp-$7F                                 ; $553A: $F8 $81
    add hl, bc                                    ; $553C: $09
    dec b                                         ; $553D: $05
    inc b                                         ; $553E: $04
    ld b, b                                       ; $553F: $40
    ld hl, sp+$05                                 ; $5540: $F8 $05
    inc b                                         ; $5542: $04
    ld h, b                                       ; $5543: $60
    ld hl, sp-$7F                                 ; $5544: $F8 $81
    add hl, bc                                    ; $5546: $09
    dec b                                         ; $5547: $05
    inc b                                         ; $5548: $04
    ld d, b                                       ; $5549: $50
    ld hl, sp-$80                                 ; $554A: $F8 $80
    nop                                           ; $554C: $00
    add c                                         ; $554D: $81
    add hl, bc                                    ; $554E: $09
    ld b, $04                                     ; $554F: $06 $04
    jr nz, @-$06                                  ; $5551: $20 $F8

    rlca                                          ; $5553: $07
    inc b                                         ; $5554: $04
    add b                                         ; $5555: $80
    ld hl, sp-$7F                                 ; $5556: $F8 $81
    inc de                                        ; $5558: $13
    rlca                                          ; $5559: $07
    inc b                                         ; $555A: $04
    ld b, b                                       ; $555B: $40
    ld hl, sp+$06                                 ; $555C: $F8 $06
    inc b                                         ; $555E: $04
    ld h, b                                       ; $555F: $60
    ld hl, sp-$80                                 ; $5560: $F8 $80
    nop                                           ; $5562: $00
    add c                                         ; $5563: $81
    add hl, bc                                    ; $5564: $09
    inc b                                         ; $5565: $04
    inc b                                         ; $5566: $04
    jr c, @-$06                                   ; $5567: $38 $F8

    inc b                                         ; $5569: $04
    inc b                                         ; $556A: $04
    ld l, b                                       ; $556B: $68
    ld hl, sp-$7F                                 ; $556C: $F8 $81
    inc de                                        ; $556E: $13
    inc b                                         ; $556F: $04
    inc b                                         ; $5570: $04
    ld d, b                                       ; $5571: $50
    ld hl, sp-$7C                                 ; $5572: $F8 $84
    add c                                         ; $5574: $81
    rra                                           ; $5575: $1F
    ld e, $C8                                     ; $5576: $1E $C8
    ld d, b                                       ; $5578: $50
    ld hl, sp-$80                                 ; $5579: $F8 $80
    nop                                           ; $557B: $00
    add d                                         ; $557C: $82
    ld [hl], h                                    ; $557D: $74
    ld d, l                                       ; $557E: $55
    add b                                         ; $557F: $80
    nop                                           ; $5580: $00
    db $10                                        ; $5581: $10
    db $10                                        ; $5582: $10
    ld d, b                                       ; $5583: $50
    nop                                           ; $5584: $00
    ld h, b                                       ; $5585: $60
    nop                                           ; $5586: $00
    nop                                           ; $5587: $00
    nop                                           ; $5588: $00
    nop                                           ; $5589: $00
    nop                                           ; $558A: $00
    nop                                           ; $558B: $00
    nop                                           ; $558C: $00
    nop                                           ; $558D: $00
    nop                                           ; $558E: $00
    add b                                         ; $558F: $80
    dec a                                         ; $5590: $3D
    sbc a                                         ; $5591: $9F
    ld d, l                                       ; $5592: $55
    nop                                           ; $5593: $00
    nop                                           ; $5594: $00
    sbc a                                         ; $5595: $9F
    ld d, l                                       ; $5596: $55
    nop                                           ; $5597: $00
    nop                                           ; $5598: $00
    nop                                           ; $5599: $00
    nop                                           ; $559A: $00
    inc bc                                        ; $559B: $03
    inc bc                                        ; $559C: $03
    ret nz                                        ; $559D: $C0

    ret c                                         ; $559E: $D8

    ld a, a                                       ; $559F: $7F
    ld d, [hl]                                    ; $55A0: $56
    rst RST_38                                    ; $55A1: $FF
    rst RST_38                                    ; $55A2: $FF
    sbc h                                         ; $55A3: $9C
    ld d, [hl]                                    ; $55A4: $56
    rst RST_38                                    ; $55A5: $FF
    rst RST_38                                    ; $55A6: $FF
    cp c                                          ; $55A7: $B9
    ld d, [hl]                                    ; $55A8: $56
    rst RST_38                                    ; $55A9: $FF
    rst RST_38                                    ; $55AA: $FF
    sbc h                                         ; $55AB: $9C
    ld d, [hl]                                    ; $55AC: $56
    rst RST_38                                    ; $55AD: $FF
    rst RST_38                                    ; $55AE: $FF
    rst RST_38                                    ; $55AF: $FF
    rst RST_38                                    ; $55B0: $FF
    ld a, a                                       ; $55B1: $7F
    ld d, [hl]                                    ; $55B2: $56
    rst RST_38                                    ; $55B3: $FF
    rst RST_38                                    ; $55B4: $FF
    sbc h                                         ; $55B5: $9C
    ld d, [hl]                                    ; $55B6: $56
    rst RST_38                                    ; $55B7: $FF
    rst RST_38                                    ; $55B8: $FF
    cp c                                          ; $55B9: $B9
    ld d, [hl]                                    ; $55BA: $56
    rst RST_38                                    ; $55BB: $FF
    rst RST_38                                    ; $55BC: $FF
    cp c                                          ; $55BD: $B9
    ld d, [hl]                                    ; $55BE: $56
    rst RST_38                                    ; $55BF: $FF
    rst RST_38                                    ; $55C0: $FF
    sbc h                                         ; $55C1: $9C
    ld d, [hl]                                    ; $55C2: $56
    rst RST_38                                    ; $55C3: $FF
    rst RST_38                                    ; $55C4: $FF
    rst RST_38                                    ; $55C5: $FF
    rst RST_38                                    ; $55C6: $FF
    ld a, a                                       ; $55C7: $7F
    ld d, [hl]                                    ; $55C8: $56
    rst RST_38                                    ; $55C9: $FF
    rst RST_38                                    ; $55CA: $FF
    ld a, a                                       ; $55CB: $7F
    ld d, [hl]                                    ; $55CC: $56
    rst RST_38                                    ; $55CD: $FF
    rst RST_38                                    ; $55CE: $FF
    sbc h                                         ; $55CF: $9C
    ld d, [hl]                                    ; $55D0: $56
    rst RST_38                                    ; $55D1: $FF
    rst RST_38                                    ; $55D2: $FF
    sbc h                                         ; $55D3: $9C
    ld d, [hl]                                    ; $55D4: $56
    rst RST_38                                    ; $55D5: $FF
    rst RST_38                                    ; $55D6: $FF
    cp c                                          ; $55D7: $B9
    ld d, [hl]                                    ; $55D8: $56
    rst RST_38                                    ; $55D9: $FF
    rst RST_38                                    ; $55DA: $FF
    cp c                                          ; $55DB: $B9
    ld d, [hl]                                    ; $55DC: $56
    rst RST_38                                    ; $55DD: $FF
    rst RST_38                                    ; $55DE: $FF
    sbc h                                         ; $55DF: $9C
    ld d, [hl]                                    ; $55E0: $56
    rst RST_38                                    ; $55E1: $FF
    rst RST_38                                    ; $55E2: $FF
    sbc h                                         ; $55E3: $9C
    ld d, [hl]                                    ; $55E4: $56
    rst RST_38                                    ; $55E5: $FF
    rst RST_38                                    ; $55E6: $FF
    rst RST_38                                    ; $55E7: $FF
    rst RST_38                                    ; $55E8: $FF
    sub $56                                       ; $55E9: $D6 $56
    rst RST_38                                    ; $55EB: $FF
    rst RST_38                                    ; $55EC: $FF
    di                                            ; $55ED: $F3
    ld d, [hl]                                    ; $55EE: $56
    rst RST_38                                    ; $55EF: $FF
    rst RST_38                                    ; $55F0: $FF
    db $10                                        ; $55F1: $10
    ld d, a                                       ; $55F2: $57
    rst RST_38                                    ; $55F3: $FF
    rst RST_38                                    ; $55F4: $FF
    di                                            ; $55F5: $F3
    ld d, [hl]                                    ; $55F6: $56
    rst RST_38                                    ; $55F7: $FF
    rst RST_38                                    ; $55F8: $FF
    rst RST_38                                    ; $55F9: $FF
    rst RST_38                                    ; $55FA: $FF
    sub $56                                       ; $55FB: $D6 $56
    rst RST_38                                    ; $55FD: $FF
    rst RST_38                                    ; $55FE: $FF
    di                                            ; $55FF: $F3
    ld d, [hl]                                    ; $5600: $56
    rst RST_38                                    ; $5601: $FF
    rst RST_38                                    ; $5602: $FF
    db $10                                        ; $5603: $10
    ld d, a                                       ; $5604: $57
    rst RST_38                                    ; $5605: $FF
    rst RST_38                                    ; $5606: $FF
    db $10                                        ; $5607: $10
    ld d, a                                       ; $5608: $57
    rst RST_38                                    ; $5609: $FF
    rst RST_38                                    ; $560A: $FF
    di                                            ; $560B: $F3
    ld d, [hl]                                    ; $560C: $56
    rst RST_38                                    ; $560D: $FF
    rst RST_38                                    ; $560E: $FF
    rst RST_38                                    ; $560F: $FF
    rst RST_38                                    ; $5610: $FF
    sub $56                                       ; $5611: $D6 $56
    rst RST_38                                    ; $5613: $FF
    rst RST_38                                    ; $5614: $FF
    sub $56                                       ; $5615: $D6 $56
    rst RST_38                                    ; $5617: $FF
    rst RST_38                                    ; $5618: $FF
    di                                            ; $5619: $F3
    ld d, [hl]                                    ; $561A: $56
    rst RST_38                                    ; $561B: $FF
    rst RST_38                                    ; $561C: $FF
    di                                            ; $561D: $F3
    ld d, [hl]                                    ; $561E: $56
    rst RST_38                                    ; $561F: $FF
    rst RST_38                                    ; $5620: $FF
    db $10                                        ; $5621: $10
    ld d, a                                       ; $5622: $57
    rst RST_38                                    ; $5623: $FF
    rst RST_38                                    ; $5624: $FF
    db $10                                        ; $5625: $10
    ld d, a                                       ; $5626: $57
    rst RST_38                                    ; $5627: $FF
    rst RST_38                                    ; $5628: $FF
    di                                            ; $5629: $F3
    ld d, [hl]                                    ; $562A: $56
    rst RST_38                                    ; $562B: $FF
    rst RST_38                                    ; $562C: $FF
    di                                            ; $562D: $F3
    ld d, [hl]                                    ; $562E: $56
    rst RST_38                                    ; $562F: $FF
    rst RST_38                                    ; $5630: $FF
    rst RST_38                                    ; $5631: $FF
    rst RST_38                                    ; $5632: $FF
    dec l                                         ; $5633: $2D
    ld d, a                                       ; $5634: $57
    rst RST_38                                    ; $5635: $FF
    rst RST_38                                    ; $5636: $FF
    ld c, d                                       ; $5637: $4A
    ld d, a                                       ; $5638: $57
    rst RST_38                                    ; $5639: $FF
    rst RST_38                                    ; $563A: $FF
    rst RST_38                                    ; $563B: $FF
    rst RST_38                                    ; $563C: $FF
    ld a, a                                       ; $563D: $7F
    ld d, [hl]                                    ; $563E: $56
    rst RST_38                                    ; $563F: $FF
    rst RST_38                                    ; $5640: $FF
    sbc h                                         ; $5641: $9C
    ld d, [hl]                                    ; $5642: $56
    rst RST_38                                    ; $5643: $FF
    rst RST_38                                    ; $5644: $FF
    ld a, a                                       ; $5645: $7F
    ld d, [hl]                                    ; $5646: $56
    rst RST_38                                    ; $5647: $FF
    rst RST_38                                    ; $5648: $FF
    sbc h                                         ; $5649: $9C
    ld d, [hl]                                    ; $564A: $56
    rst RST_38                                    ; $564B: $FF
    rst RST_38                                    ; $564C: $FF
    ld a, a                                       ; $564D: $7F
    ld d, [hl]                                    ; $564E: $56
    rst RST_38                                    ; $564F: $FF
    rst RST_38                                    ; $5650: $FF
    sbc h                                         ; $5651: $9C
    ld d, [hl]                                    ; $5652: $56
    rst RST_38                                    ; $5653: $FF
    rst RST_38                                    ; $5654: $FF
    ld a, a                                       ; $5655: $7F
    ld d, [hl]                                    ; $5656: $56

jr_03D_5657:
    rst RST_38                                    ; $5657: $FF
    rst RST_38                                    ; $5658: $FF
    sbc h                                         ; $5659: $9C
    ld d, [hl]                                    ; $565A: $56
    rst RST_38                                    ; $565B: $FF
    rst RST_38                                    ; $565C: $FF
    ld h, a                                       ; $565D: $67
    ld d, a                                       ; $565E: $57
    rst RST_38                                    ; $565F: $FF
    rst RST_38                                    ; $5660: $FF
    ld h, a                                       ; $5661: $67
    ld d, a                                       ; $5662: $57
    rst RST_38                                    ; $5663: $FF
    rst RST_38                                    ; $5664: $FF
    ld h, a                                       ; $5665: $67
    ld d, a                                       ; $5666: $57
    rst RST_38                                    ; $5667: $FF
    rst RST_38                                    ; $5668: $FF
    ld h, a                                       ; $5669: $67
    ld d, a                                       ; $566A: $57
    rst RST_38                                    ; $566B: $FF
    rst RST_38                                    ; $566C: $FF
    ld a, b                                       ; $566D: $78
    ld d, a                                       ; $566E: $57
    rst RST_38                                    ; $566F: $FF
    rst RST_38                                    ; $5670: $FF
    ld a, b                                       ; $5671: $78
    ld d, a                                       ; $5672: $57
    rst RST_38                                    ; $5673: $FF
    rst RST_38                                    ; $5674: $FF
    ld a, b                                       ; $5675: $78
    ld d, a                                       ; $5676: $57
    rst RST_38                                    ; $5677: $FF
    rst RST_38                                    ; $5678: $FF
    ld a, b                                       ; $5679: $78
    ld d, a                                       ; $567A: $57
    rst RST_38                                    ; $567B: $FF
    rst RST_38                                    ; $567C: $FF
    rst RST_38                                    ; $567D: $FF
    rst RST_38                                    ; $567E: $FF
    add b                                         ; $567F: $80
    nop                                           ; $5680: $00
    nop                                           ; $5681: $00
    rst RST_38                                    ; $5682: $FF
    rst RST_38                                    ; $5683: $FF
    rst RST_38                                    ; $5684: $FF
    adc c                                         ; $5685: $89
    ld d, [hl]                                    ; $5686: $56
    nop                                           ; $5687: $00
    nop                                           ; $5688: $00
    ld b, $E8                                     ; $5689: $06 $E8
    db $F4                                        ; $568B: $F4
    nop                                           ; $568C: $00
    add sp, -$04                                  ; $568D: $E8 $FC

jr_03D_568F:
    ld [bc], a                                    ; $568F: $02
    add sp, $04                                   ; $5690: $E8 $04
    inc b                                         ; $5692: $04
    ld hl, sp-$0C                                 ; $5693: $F8 $F4
    jr nz, jr_03D_568F                            ; $5695: $20 $F8

    db $FC                                        ; $5697: $FC
    ld [hl+], a                                   ; $5698: $22
    ld hl, sp+$04                                 ; $5699: $F8 $04
    inc h                                         ; $569B: $24
    add b                                         ; $569C: $80
    nop                                           ; $569D: $00
    nop                                           ; $569E: $00
    rst RST_38                                    ; $569F: $FF
    rst RST_38                                    ; $56A0: $FF
    rst RST_38                                    ; $56A1: $FF
    and [hl]                                      ; $56A2: $A6
    ld d, [hl]                                    ; $56A3: $56
    nop                                           ; $56A4: $00
    nop                                           ; $56A5: $00
    ld b, $E8                                     ; $56A6: $06 $E8
    db $F4                                        ; $56A8: $F4
    ld b, $E8                                     ; $56A9: $06 $E8
    db $FC                                        ; $56AB: $FC
    ld [$04E8], sp                                ; $56AC: $08 $E8 $04

jr_03D_56AF:
    ld a, [bc]                                    ; $56AF: $0A
    ld hl, sp-$0C                                 ; $56B0: $F8 $F4
    ld h, $F8                                     ; $56B2: $26 $F8
    db $FC                                        ; $56B4: $FC
    jr z, jr_03D_56AF                             ; $56B5: $28 $F8

    inc b                                         ; $56B7: $04
    ld a, [hl+]                                   ; $56B8: $2A
    add b                                         ; $56B9: $80
    nop                                           ; $56BA: $00
    nop                                           ; $56BB: $00
    rst RST_38                                    ; $56BC: $FF
    rst RST_38                                    ; $56BD: $FF
    rst RST_38                                    ; $56BE: $FF
    jp Jump_000_0056                              ; $56BF: $C3 $56 $00


    nop                                           ; $56C2: $00
    ld b, $E8                                     ; $56C3: $06 $E8
    db $F4                                        ; $56C5: $F4
    inc c                                         ; $56C6: $0C
    add sp, -$04                                  ; $56C7: $E8 $FC
    ld c, $E8                                     ; $56C9: $0E $E8
    inc b                                         ; $56CB: $04
    db $10                                        ; $56CC: $10
    ld hl, sp-$0C                                 ; $56CD: $F8 $F4
    inc l                                         ; $56CF: $2C
    ld hl, sp-$04                                 ; $56D0: $F8 $FC
    ld l, $F8                                     ; $56D2: $2E $F8
    inc b                                         ; $56D4: $04
    jr nc, jr_03D_5657                            ; $56D5: $30 $80

    nop                                           ; $56D7: $00
    nop                                           ; $56D8: $00
    rst RST_38                                    ; $56D9: $FF
    rst RST_38                                    ; $56DA: $FF
    rst RST_38                                    ; $56DB: $FF
    ldh [rRP], a                                  ; $56DC: $E0 $56
    nop                                           ; $56DE: $00
    nop                                           ; $56DF: $00
    ld b, $E8                                     ; $56E0: $06 $E8
    db $F4                                        ; $56E2: $F4
    nop                                           ; $56E3: $00
    add sp, -$04                                  ; $56E4: $E8 $FC
    ld [bc], a                                    ; $56E6: $02
    add sp, $04                                   ; $56E7: $E8 $04
    inc b                                         ; $56E9: $04
    ld hl, sp-$0C                                 ; $56EA: $F8 $F4
    ld [de], a                                    ; $56EC: $12
    ld hl, sp-$04                                 ; $56ED: $F8 $FC
    inc d                                         ; $56EF: $14
    ld hl, sp+$04                                 ; $56F0: $F8 $04
    ld d, $80                                     ; $56F2: $16 $80
    nop                                           ; $56F4: $00
    nop                                           ; $56F5: $00
    rst RST_38                                    ; $56F6: $FF
    rst RST_38                                    ; $56F7: $FF
    rst RST_38                                    ; $56F8: $FF
    db $FD                                        ; $56F9: $FD
    ld d, [hl]                                    ; $56FA: $56
    nop                                           ; $56FB: $00
    nop                                           ; $56FC: $00
    ld b, $E8                                     ; $56FD: $06 $E8
    db $F4                                        ; $56FF: $F4
    ld b, $E8                                     ; $5700: $06 $E8
    db $FC                                        ; $5702: $FC
    ld [$04E8], sp                                ; $5703: $08 $E8 $04
    ld a, [bc]                                    ; $5706: $0A
    ld hl, sp-$0C                                 ; $5707: $F8 $F4
    ld [hl-], a                                   ; $5709: $32
    ld hl, sp-$04                                 ; $570A: $F8 $FC
    inc [hl]                                      ; $570C: $34
    ld hl, sp+$04                                 ; $570D: $F8 $04
    ld [hl], $80                                  ; $570F: $36 $80
    nop                                           ; $5711: $00
    nop                                           ; $5712: $00
    rst RST_38                                    ; $5713: $FF
    rst RST_38                                    ; $5714: $FF
    rst RST_38                                    ; $5715: $FF
    ld a, [de]                                    ; $5716: $1A
    ld d, a                                       ; $5717: $57
    nop                                           ; $5718: $00
    nop                                           ; $5719: $00
    ld b, $E8                                     ; $571A: $06 $E8
    db $F4                                        ; $571C: $F4
    inc c                                         ; $571D: $0C
    add sp, -$04                                  ; $571E: $E8 $FC

jr_03D_5720:
    ld c, $E8                                     ; $5720: $0E $E8
    inc b                                         ; $5722: $04
    db $10                                        ; $5723: $10
    ld hl, sp-$0C                                 ; $5724: $F8 $F4
    jr jr_03D_5720                                ; $5726: $18 $F8

    db $FC                                        ; $5728: $FC
    ld a, [de]                                    ; $5729: $1A
    ld hl, sp+$04                                 ; $572A: $F8 $04
    jr c, @-$7E                                   ; $572C: $38 $80

    nop                                           ; $572E: $00
    nop                                           ; $572F: $00
    rst RST_38                                    ; $5730: $FF
    rst RST_38                                    ; $5731: $FF
    rst RST_38                                    ; $5732: $FF
    scf                                           ; $5733: $37
    ld d, a                                       ; $5734: $57
    nop                                           ; $5735: $00
    nop                                           ; $5736: $00
    ld b, $E8                                     ; $5737: $06 $E8
    db $F4                                        ; $5739: $F4
    db $10                                        ; $573A: $10
    add sp, -$04                                  ; $573B: $E8 $FC

jr_03D_573D:
    ld [de], a                                    ; $573D: $12
    add sp, $04                                   ; $573E: $E8 $04
    inc d                                         ; $5740: $14
    ld hl, sp-$0C                                 ; $5741: $F8 $F4
    jr nc, jr_03D_573D                            ; $5743: $30 $F8

    db $FC                                        ; $5745: $FC
    ld [hl-], a                                   ; $5746: $32
    ld hl, sp+$04                                 ; $5747: $F8 $04
    inc [hl]                                      ; $5749: $34
    add b                                         ; $574A: $80
    nop                                           ; $574B: $00
    nop                                           ; $574C: $00
    rst RST_38                                    ; $574D: $FF
    rst RST_38                                    ; $574E: $FF
    rst RST_38                                    ; $574F: $FF
    ld d, h                                       ; $5750: $54
    ld d, a                                       ; $5751: $57
    nop                                           ; $5752: $00
    nop                                           ; $5753: $00
    ld b, $E8                                     ; $5754: $06 $E8
    db $F4                                        ; $5756: $F4
    ld d, $E8                                     ; $5757: $16 $E8
    db $FC                                        ; $5759: $FC
    jr @-$16                                      ; $575A: $18 $E8

    inc b                                         ; $575C: $04

jr_03D_575D:
    ld a, [de]                                    ; $575D: $1A
    ld hl, sp-$0C                                 ; $575E: $F8 $F4
    ld [hl], $F8                                  ; $5760: $36 $F8
    db $FC                                        ; $5762: $FC
    jr c, jr_03D_575D                             ; $5763: $38 $F8

    inc b                                         ; $5765: $04
    ld a, [hl-]                                   ; $5766: $3A
    add b                                         ; $5767: $80
    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    rst RST_38                                    ; $576A: $FF
    rst RST_38                                    ; $576B: $FF
    rst RST_38                                    ; $576C: $FF
    ld [hl], c                                    ; $576D: $71
    ld d, a                                       ; $576E: $57
    nop                                           ; $576F: $00
    nop                                           ; $5770: $00
    ld [bc], a                                    ; $5771: $02
    db $F4                                        ; $5772: $F4
    ld hl, sp+$0C                                 ; $5773: $F8 $0C
    db $F4                                        ; $5775: $F4
    nop                                           ; $5776: $00
    ld c, $80                                     ; $5777: $0E $80
    nop                                           ; $5779: $00
    nop                                           ; $577A: $00
    rst RST_38                                    ; $577B: $FF
    rst RST_38                                    ; $577C: $FF
    rst RST_38                                    ; $577D: $FF
    add d                                         ; $577E: $82
    ld d, a                                       ; $577F: $57
    nop                                           ; $5780: $00
    nop                                           ; $5781: $00
    ld [bc], a                                    ; $5782: $02
    db $F4                                        ; $5783: $F4
    ld hl, sp+$2C                                 ; $5784: $F8 $2C
    db $F4                                        ; $5786: $F4
    nop                                           ; $5787: $00
    ld l, $80                                     ; $5788: $2E $80
    nop                                           ; $578A: $00
    ld bc, $5001                                  ; $578B: $01 $01 $50
    nop                                           ; $578E: $00
    jr jr_03D_5791                                ; $578F: $18 $00

jr_03D_5791:
    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    nop                                           ; $5793: $00
    nop                                           ; $5794: $00
    nop                                           ; $5795: $00
    nop                                           ; $5796: $00
    nop                                           ; $5797: $00
    nop                                           ; $5798: $00
    add b                                         ; $5799: $80
    dec a                                         ; $579A: $3D
    xor c                                         ; $579B: $A9
    ld d, a                                       ; $579C: $57
    nop                                           ; $579D: $00
    nop                                           ; $579E: $00
    xor c                                         ; $579F: $A9
    ld d, a                                       ; $57A0: $57
    nop                                           ; $57A1: $00
    nop                                           ; $57A2: $00
    nop                                           ; $57A3: $00
    nop                                           ; $57A4: $00
    inc bc                                        ; $57A5: $03
    inc bc                                        ; $57A6: $03
    ret nz                                        ; $57A7: $C0

    ret c                                         ; $57A8: $D8

    or e                                          ; $57A9: $B3
    ld d, a                                       ; $57AA: $57
    rst RST_38                                    ; $57AB: $FF
    rst RST_38                                    ; $57AC: $FF
    call nz, $FF57                                ; $57AD: $C4 $57 $FF
    rst RST_38                                    ; $57B0: $FF
    rst RST_38                                    ; $57B1: $FF
    rst RST_38                                    ; $57B2: $FF
    add b                                         ; $57B3: $80
    nop                                           ; $57B4: $00
    nop                                           ; $57B5: $00
    rst RST_38                                    ; $57B6: $FF
    rst RST_38                                    ; $57B7: $FF
    rst RST_38                                    ; $57B8: $FF
    cp l                                          ; $57B9: $BD
    ld d, a                                       ; $57BA: $57
    nop                                           ; $57BB: $00
    nop                                           ; $57BC: $00
    ld [bc], a                                    ; $57BD: $02
    db $F4                                        ; $57BE: $F4
    ld hl, sp+$1C                                 ; $57BF: $F8 $1C
    db $F4                                        ; $57C1: $F4
    nop                                           ; $57C2: $00
    ld e, $80                                     ; $57C3: $1E $80
    nop                                           ; $57C5: $00
    nop                                           ; $57C6: $00
    rst RST_38                                    ; $57C7: $FF
    rst RST_38                                    ; $57C8: $FF
    rst RST_38                                    ; $57C9: $FF
    adc $57                                       ; $57CA: $CE $57
    nop                                           ; $57CC: $00
    nop                                           ; $57CD: $00
    ld [bc], a                                    ; $57CE: $02
    db $F4                                        ; $57CF: $F4
    ld hl, sp+$3C                                 ; $57D0: $F8 $3C
    db $F4                                        ; $57D2: $F4
    nop                                           ; $57D3: $00
    ld a, $80                                     ; $57D4: $3E $80
    nop                                           ; $57D6: $00
    db $10                                        ; $57D7: $10
    db $10                                        ; $57D8: $10
    ld d, b                                       ; $57D9: $50
    nop                                           ; $57DA: $00
    ld h, b                                       ; $57DB: $60
    nop                                           ; $57DC: $00
    nop                                           ; $57DD: $00
    nop                                           ; $57DE: $00
    nop                                           ; $57DF: $00
    nop                                           ; $57E0: $00
    nop                                           ; $57E1: $00
    nop                                           ; $57E2: $00
    nop                                           ; $57E3: $00
    nop                                           ; $57E4: $00
    add b                                         ; $57E5: $80
    dec a                                         ; $57E6: $3D
    sbc a                                         ; $57E7: $9F
    ld d, l                                       ; $57E8: $55
    nop                                           ; $57E9: $00
    nop                                           ; $57EA: $00
    sbc a                                         ; $57EB: $9F
    ld d, l                                       ; $57EC: $55
    nop                                           ; $57ED: $00
    nop                                           ; $57EE: $00
    nop                                           ; $57EF: $00
    nop                                           ; $57F0: $00
    inc bc                                        ; $57F1: $03
    inc bc                                        ; $57F2: $03
    ret nz                                        ; $57F3: $C0

    ret c                                         ; $57F4: $D8

    add b                                         ; $57F5: $80
    nop                                           ; $57F6: $00
    ld bc, $5001                                  ; $57F7: $01 $01 $50
    nop                                           ; $57FA: $00
    jr jr_03D_57FD                                ; $57FB: $18 $00

jr_03D_57FD:
    nop                                           ; $57FD: $00
    nop                                           ; $57FE: $00
    nop                                           ; $57FF: $00
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    add b                                         ; $5805: $80
    dec a                                         ; $5806: $3D
    dec d                                         ; $5807: $15
    ld e, b                                       ; $5808: $58
    nop                                           ; $5809: $00
    nop                                           ; $580A: $00
    dec d                                         ; $580B: $15
    ld e, b                                       ; $580C: $58
    nop                                           ; $580D: $00
    nop                                           ; $580E: $00
    nop                                           ; $580F: $00
    nop                                           ; $5810: $00
    inc bc                                        ; $5811: $03
    inc bc                                        ; $5812: $03
    ret nz                                        ; $5813: $C0

    ret c                                         ; $5814: $D8

    rra                                           ; $5815: $1F
    ld e, b                                       ; $5816: $58
    rst RST_38                                    ; $5817: $FF
    rst RST_38                                    ; $5818: $FF
    jr nc, jr_03D_5873                            ; $5819: $30 $58

    rst RST_38                                    ; $581B: $FF
    rst RST_38                                    ; $581C: $FF
    rst RST_38                                    ; $581D: $FF
    rst RST_38                                    ; $581E: $FF
    add b                                         ; $581F: $80
    nop                                           ; $5820: $00
    nop                                           ; $5821: $00
    rst RST_38                                    ; $5822: $FF
    rst RST_38                                    ; $5823: $FF
    rst RST_38                                    ; $5824: $FF
    add hl, hl                                    ; $5825: $29
    ld e, b                                       ; $5826: $58
    nop                                           ; $5827: $00
    nop                                           ; $5828: $00
    ld [bc], a                                    ; $5829: $02
    db $F4                                        ; $582A: $F4
    ld hl, sp+$1C                                 ; $582B: $F8 $1C
    db $F4                                        ; $582D: $F4
    nop                                           ; $582E: $00
    ld e, $80                                     ; $582F: $1E $80
    nop                                           ; $5831: $00
    nop                                           ; $5832: $00
    rst RST_38                                    ; $5833: $FF
    rst RST_38                                    ; $5834: $FF
    rst RST_38                                    ; $5835: $FF
    ld a, [hl-]                                   ; $5836: $3A
    ld e, b                                       ; $5837: $58
    nop                                           ; $5838: $00
    nop                                           ; $5839: $00
    ld [bc], a                                    ; $583A: $02
    db $F4                                        ; $583B: $F4
    ld hl, sp+$3C                                 ; $583C: $F8 $3C
    db $F4                                        ; $583E: $F4
    nop                                           ; $583F: $00
    ld a, $80                                     ; $5840: $3E $80
    nop                                           ; $5842: $00
    db $10                                        ; $5843: $10
    db $10                                        ; $5844: $10
    ld d, b                                       ; $5845: $50
    nop                                           ; $5846: $00
    ld h, b                                       ; $5847: $60
    nop                                           ; $5848: $00
    nop                                           ; $5849: $00
    nop                                           ; $584A: $00
    nop                                           ; $584B: $00
    nop                                           ; $584C: $00
    nop                                           ; $584D: $00
    nop                                           ; $584E: $00
    nop                                           ; $584F: $00
    nop                                           ; $5850: $00
    add b                                         ; $5851: $80
    dec a                                         ; $5852: $3D
    ld h, c                                       ; $5853: $61
    ld e, b                                       ; $5854: $58
    nop                                           ; $5855: $00
    nop                                           ; $5856: $00
    ld h, c                                       ; $5857: $61
    ld e, b                                       ; $5858: $58
    nop                                           ; $5859: $00
    nop                                           ; $585A: $00
    nop                                           ; $585B: $00
    nop                                           ; $585C: $00
    inc bc                                        ; $585D: $03
    inc bc                                        ; $585E: $03
    ret nz                                        ; $585F: $C0

    ret c                                         ; $5860: $D8

    pop bc                                        ; $5861: $C1
    ld e, b                                       ; $5862: $58
    rst RST_38                                    ; $5863: $FF
    rst RST_38                                    ; $5864: $FF
    sbc $58                                       ; $5865: $DE $58
    rst RST_38                                    ; $5867: $FF
    rst RST_38                                    ; $5868: $FF
    rst RST_38                                    ; $5869: $FF
    rst RST_38                                    ; $586A: $FF
    ei                                            ; $586B: $FB
    ld e, b                                       ; $586C: $58
    rst RST_38                                    ; $586D: $FF
    rst RST_38                                    ; $586E: $FF
    jr jr_03D_58CA                                ; $586F: $18 $59

    rst RST_38                                    ; $5871: $FF
    rst RST_38                                    ; $5872: $FF

jr_03D_5873:
    rst RST_38                                    ; $5873: $FF
    rst RST_38                                    ; $5874: $FF
    dec [hl]                                      ; $5875: $35
    ld e, c                                       ; $5876: $59
    rst RST_38                                    ; $5877: $FF
    rst RST_38                                    ; $5878: $FF
    ld d, d                                       ; $5879: $52
    ld e, c                                       ; $587A: $59
    rst RST_38                                    ; $587B: $FF
    rst RST_38                                    ; $587C: $FF
    rst RST_38                                    ; $587D: $FF
    rst RST_38                                    ; $587E: $FF
    pop bc                                        ; $587F: $C1
    ld e, b                                       ; $5880: $58
    rst RST_38                                    ; $5881: $FF
    rst RST_38                                    ; $5882: $FF
    sbc $58                                       ; $5883: $DE $58
    rst RST_38                                    ; $5885: $FF
    rst RST_38                                    ; $5886: $FF
    pop bc                                        ; $5887: $C1
    ld e, b                                       ; $5888: $58
    rst RST_38                                    ; $5889: $FF
    rst RST_38                                    ; $588A: $FF
    sbc $58                                       ; $588B: $DE $58
    rst RST_38                                    ; $588D: $FF
    rst RST_38                                    ; $588E: $FF
    pop bc                                        ; $588F: $C1
    ld e, b                                       ; $5890: $58
    rst RST_38                                    ; $5891: $FF
    rst RST_38                                    ; $5892: $FF
    sbc $58                                       ; $5893: $DE $58
    rst RST_38                                    ; $5895: $FF
    rst RST_38                                    ; $5896: $FF
    pop bc                                        ; $5897: $C1
    ld e, b                                       ; $5898: $58
    rst RST_38                                    ; $5899: $FF
    rst RST_38                                    ; $589A: $FF
    sbc $58                                       ; $589B: $DE $58
    rst RST_38                                    ; $589D: $FF
    rst RST_38                                    ; $589E: $FF
    ld l, a                                       ; $589F: $6F
    ld e, c                                       ; $58A0: $59
    rst RST_38                                    ; $58A1: $FF
    rst RST_38                                    ; $58A2: $FF
    ld l, a                                       ; $58A3: $6F
    ld e, c                                       ; $58A4: $59
    rst RST_38                                    ; $58A5: $FF
    rst RST_38                                    ; $58A6: $FF
    ld l, a                                       ; $58A7: $6F
    ld e, c                                       ; $58A8: $59
    rst RST_38                                    ; $58A9: $FF
    rst RST_38                                    ; $58AA: $FF
    ld l, a                                       ; $58AB: $6F
    ld e, c                                       ; $58AC: $59
    rst RST_38                                    ; $58AD: $FF
    rst RST_38                                    ; $58AE: $FF
    add b                                         ; $58AF: $80
    ld e, c                                       ; $58B0: $59
    rst RST_38                                    ; $58B1: $FF
    rst RST_38                                    ; $58B2: $FF
    add b                                         ; $58B3: $80
    ld e, c                                       ; $58B4: $59
    rst RST_38                                    ; $58B5: $FF

jr_03D_58B6:
    rst RST_38                                    ; $58B6: $FF
    add b                                         ; $58B7: $80
    ld e, c                                       ; $58B8: $59
    rst RST_38                                    ; $58B9: $FF
    rst RST_38                                    ; $58BA: $FF
    add b                                         ; $58BB: $80
    ld e, c                                       ; $58BC: $59
    rst RST_38                                    ; $58BD: $FF
    rst RST_38                                    ; $58BE: $FF
    rst RST_38                                    ; $58BF: $FF
    rst RST_38                                    ; $58C0: $FF
    add b                                         ; $58C1: $80
    nop                                           ; $58C2: $00
    nop                                           ; $58C3: $00
    rst RST_38                                    ; $58C4: $FF
    rst RST_38                                    ; $58C5: $FF
    rst RST_38                                    ; $58C6: $FF
    bit 3, b                                      ; $58C7: $CB $58
    nop                                           ; $58C9: $00

jr_03D_58CA:
    nop                                           ; $58CA: $00
    ld b, $E8                                     ; $58CB: $06 $E8
    db $F4                                        ; $58CD: $F4
    nop                                           ; $58CE: $00
    add sp, -$04                                  ; $58CF: $E8 $FC

jr_03D_58D1:
    ld [bc], a                                    ; $58D1: $02
    add sp, $04                                   ; $58D2: $E8 $04
    inc b                                         ; $58D4: $04
    ld hl, sp-$0C                                 ; $58D5: $F8 $F4
    jr nz, jr_03D_58D1                            ; $58D7: $20 $F8

    db $FC                                        ; $58D9: $FC
    ld [hl+], a                                   ; $58DA: $22
    ld hl, sp+$04                                 ; $58DB: $F8 $04
    inc h                                         ; $58DD: $24
    add b                                         ; $58DE: $80
    nop                                           ; $58DF: $00
    nop                                           ; $58E0: $00
    rst RST_38                                    ; $58E1: $FF
    rst RST_38                                    ; $58E2: $FF
    rst RST_38                                    ; $58E3: $FF
    add sp, $58                                   ; $58E4: $E8 $58
    nop                                           ; $58E6: $00
    nop                                           ; $58E7: $00
    ld b, $E8                                     ; $58E8: $06 $E8
    db $F4                                        ; $58EA: $F4
    ld b, $E8                                     ; $58EB: $06 $E8
    db $FC                                        ; $58ED: $FC
    ld [$04E8], sp                                ; $58EE: $08 $E8 $04

jr_03D_58F1:
    ld a, [bc]                                    ; $58F1: $0A
    ld hl, sp-$0C                                 ; $58F2: $F8 $F4
    ld h, $F8                                     ; $58F4: $26 $F8
    db $FC                                        ; $58F6: $FC
    jr z, jr_03D_58F1                             ; $58F7: $28 $F8

    inc b                                         ; $58F9: $04
    ld a, [hl+]                                   ; $58FA: $2A
    add b                                         ; $58FB: $80
    nop                                           ; $58FC: $00
    nop                                           ; $58FD: $00
    rst RST_38                                    ; $58FE: $FF
    rst RST_38                                    ; $58FF: $FF
    rst RST_38                                    ; $5900: $FF
    dec b                                         ; $5901: $05
    ld e, c                                       ; $5902: $59
    nop                                           ; $5903: $00
    nop                                           ; $5904: $00
    ld b, $E8                                     ; $5905: $06 $E8
    db $F4                                        ; $5907: $F4
    nop                                           ; $5908: $00
    add sp, -$04                                  ; $5909: $E8 $FC
    ld [bc], a                                    ; $590B: $02
    add sp, $04                                   ; $590C: $E8 $04
    inc b                                         ; $590E: $04
    ld hl, sp-$0C                                 ; $590F: $F8 $F4
    inc c                                         ; $5911: $0C
    ld hl, sp-$04                                 ; $5912: $F8 $FC
    ld c, $F8                                     ; $5914: $0E $F8
    inc b                                         ; $5916: $04
    db $10                                        ; $5917: $10
    add b                                         ; $5918: $80
    nop                                           ; $5919: $00
    nop                                           ; $591A: $00
    rst RST_38                                    ; $591B: $FF
    rst RST_38                                    ; $591C: $FF
    rst RST_38                                    ; $591D: $FF
    ld [hl+], a                                   ; $591E: $22
    ld e, c                                       ; $591F: $59
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    ld b, $E8                                     ; $5922: $06 $E8
    db $F4                                        ; $5924: $F4
    ld b, $E8                                     ; $5925: $06 $E8
    db $FC                                        ; $5927: $FC
    ld [$04E8], sp                                ; $5928: $08 $E8 $04
    ld a, [bc]                                    ; $592B: $0A
    ld hl, sp-$0C                                 ; $592C: $F8 $F4
    inc l                                         ; $592E: $2C
    ld hl, sp-$04                                 ; $592F: $F8 $FC
    ld l, $F8                                     ; $5931: $2E $F8
    inc b                                         ; $5933: $04
    jr nc, jr_03D_58B6                            ; $5934: $30 $80

    nop                                           ; $5936: $00
    nop                                           ; $5937: $00
    rst RST_38                                    ; $5938: $FF
    rst RST_38                                    ; $5939: $FF
    rst RST_38                                    ; $593A: $FF
    ccf                                           ; $593B: $3F
    ld e, c                                       ; $593C: $59
    nop                                           ; $593D: $00
    nop                                           ; $593E: $00
    ld b, $E8                                     ; $593F: $06 $E8
    db $F4                                        ; $5941: $F4
    db $10                                        ; $5942: $10
    add sp, -$04                                  ; $5943: $E8 $FC

jr_03D_5945:
    ld [de], a                                    ; $5945: $12
    add sp, $04                                   ; $5946: $E8 $04
    inc d                                         ; $5948: $14
    ld hl, sp-$0C                                 ; $5949: $F8 $F4
    jr nc, jr_03D_5945                            ; $594B: $30 $F8

    db $FC                                        ; $594D: $FC
    ld [hl-], a                                   ; $594E: $32
    ld hl, sp+$04                                 ; $594F: $F8 $04
    inc [hl]                                      ; $5951: $34
    add b                                         ; $5952: $80
    nop                                           ; $5953: $00
    nop                                           ; $5954: $00
    rst RST_38                                    ; $5955: $FF
    rst RST_38                                    ; $5956: $FF
    rst RST_38                                    ; $5957: $FF
    ld e, h                                       ; $5958: $5C
    ld e, c                                       ; $5959: $59
    nop                                           ; $595A: $00
    nop                                           ; $595B: $00
    ld b, $E8                                     ; $595C: $06 $E8
    db $F4                                        ; $595E: $F4
    ld d, $E8                                     ; $595F: $16 $E8
    db $FC                                        ; $5961: $FC
    jr @-$16                                      ; $5962: $18 $E8

    inc b                                         ; $5964: $04

jr_03D_5965:
    ld a, [de]                                    ; $5965: $1A
    ld hl, sp-$0C                                 ; $5966: $F8 $F4
    ld [hl], $F8                                  ; $5968: $36 $F8
    db $FC                                        ; $596A: $FC
    jr c, jr_03D_5965                             ; $596B: $38 $F8

    inc b                                         ; $596D: $04
    ld a, [hl-]                                   ; $596E: $3A
    add b                                         ; $596F: $80
    nop                                           ; $5970: $00
    nop                                           ; $5971: $00
    rst RST_38                                    ; $5972: $FF
    rst RST_38                                    ; $5973: $FF
    rst RST_38                                    ; $5974: $FF
    ld a, c                                       ; $5975: $79
    ld e, c                                       ; $5976: $59
    nop                                           ; $5977: $00
    nop                                           ; $5978: $00
    ld [bc], a                                    ; $5979: $02
    db $F4                                        ; $597A: $F4
    ld hl, sp+$0C                                 ; $597B: $F8 $0C
    db $F4                                        ; $597D: $F4
    nop                                           ; $597E: $00
    ld c, $80                                     ; $597F: $0E $80
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    rst RST_38                                    ; $5983: $FF
    rst RST_38                                    ; $5984: $FF
    rst RST_38                                    ; $5985: $FF
    adc d                                         ; $5986: $8A
    ld e, c                                       ; $5987: $59
    nop                                           ; $5988: $00
    nop                                           ; $5989: $00
    ld [bc], a                                    ; $598A: $02
    db $F4                                        ; $598B: $F4
    ld hl, sp+$2C                                 ; $598C: $F8 $2C
    db $F4                                        ; $598E: $F4
    nop                                           ; $598F: $00
    ld l, $80                                     ; $5990: $2E $80
    nop                                           ; $5992: $00
    ld bc, $5001                                  ; $5993: $01 $01 $50
    nop                                           ; $5996: $00
    jr jr_03D_5999                                ; $5997: $18 $00

jr_03D_5999:
    nop                                           ; $5999: $00
    nop                                           ; $599A: $00
    nop                                           ; $599B: $00
    nop                                           ; $599C: $00
    nop                                           ; $599D: $00
    nop                                           ; $599E: $00
    nop                                           ; $599F: $00
    nop                                           ; $59A0: $00
    add b                                         ; $59A1: $80
    dec a                                         ; $59A2: $3D
    or c                                          ; $59A3: $B1
    ld e, c                                       ; $59A4: $59
    nop                                           ; $59A5: $00
    nop                                           ; $59A6: $00
    or c                                          ; $59A7: $B1
    ld e, c                                       ; $59A8: $59
    nop                                           ; $59A9: $00
    nop                                           ; $59AA: $00
    nop                                           ; $59AB: $00
    nop                                           ; $59AC: $00
    inc bc                                        ; $59AD: $03
    inc bc                                        ; $59AE: $03
    ret nz                                        ; $59AF: $C0

    ret c                                         ; $59B0: $D8

    jp $FF59                                      ; $59B1: $C3 $59 $FF


    rst RST_38                                    ; $59B4: $FF
    call nc, $FF59                                ; $59B5: $D4 $59 $FF
    rst RST_38                                    ; $59B8: $FF
    push hl                                       ; $59B9: $E5
    ld e, c                                       ; $59BA: $59
    rst RST_38                                    ; $59BB: $FF
    rst RST_38                                    ; $59BC: $FF
    or $59                                        ; $59BD: $F6 $59
    rst RST_38                                    ; $59BF: $FF
    rst RST_38                                    ; $59C0: $FF
    rst RST_38                                    ; $59C1: $FF
    rst RST_38                                    ; $59C2: $FF
    add b                                         ; $59C3: $80
    nop                                           ; $59C4: $00
    nop                                           ; $59C5: $00
    rst RST_38                                    ; $59C6: $FF
    rst RST_38                                    ; $59C7: $FF
    rst RST_38                                    ; $59C8: $FF
    call $0059                                    ; $59C9: $CD $59 $00
    nop                                           ; $59CC: $00
    ld [bc], a                                    ; $59CD: $02
    db $F4                                        ; $59CE: $F4
    ld hl, sp+$18                                 ; $59CF: $F8 $18
    db $F4                                        ; $59D1: $F4
    nop                                           ; $59D2: $00
    ld a, [de]                                    ; $59D3: $1A
    add b                                         ; $59D4: $80
    nop                                           ; $59D5: $00
    nop                                           ; $59D6: $00
    rst RST_38                                    ; $59D7: $FF
    rst RST_38                                    ; $59D8: $FF
    rst RST_38                                    ; $59D9: $FF
    sbc $59                                       ; $59DA: $DE $59
    nop                                           ; $59DC: $00
    nop                                           ; $59DD: $00
    ld [bc], a                                    ; $59DE: $02
    db $F4                                        ; $59DF: $F4
    ld hl, sp+$1C                                 ; $59E0: $F8 $1C
    db $F4                                        ; $59E2: $F4
    nop                                           ; $59E3: $00
    ld e, $80                                     ; $59E4: $1E $80
    nop                                           ; $59E6: $00
    nop                                           ; $59E7: $00
    rst RST_38                                    ; $59E8: $FF
    rst RST_38                                    ; $59E9: $FF
    rst RST_38                                    ; $59EA: $FF
    rst RST_28                                    ; $59EB: $EF
    ld e, c                                       ; $59EC: $59
    nop                                           ; $59ED: $00
    nop                                           ; $59EE: $00
    ld [bc], a                                    ; $59EF: $02
    db $F4                                        ; $59F0: $F4
    ld hl, sp+$38                                 ; $59F1: $F8 $38
    db $F4                                        ; $59F3: $F4
    nop                                           ; $59F4: $00
    ld a, [hl-]                                   ; $59F5: $3A
    add b                                         ; $59F6: $80
    nop                                           ; $59F7: $00
    nop                                           ; $59F8: $00
    rst RST_38                                    ; $59F9: $FF
    rst RST_38                                    ; $59FA: $FF
    rst RST_38                                    ; $59FB: $FF
    nop                                           ; $59FC: $00
    ld e, d                                       ; $59FD: $5A
    nop                                           ; $59FE: $00
    nop                                           ; $59FF: $00
    ld [bc], a                                    ; $5A00: $02
    db $F4                                        ; $5A01: $F4
    ld hl, sp+$3C                                 ; $5A02: $F8 $3C
    db $F4                                        ; $5A04: $F4
    nop                                           ; $5A05: $00
    ld a, $80                                     ; $5A06: $3E $80
    nop                                           ; $5A08: $00
    ld bc, $5001                                  ; $5A09: $01 $01 $50
    nop                                           ; $5A0C: $00
    jr jr_03D_5A0F                                ; $5A0D: $18 $00

jr_03D_5A0F:
    nop                                           ; $5A0F: $00
    nop                                           ; $5A10: $00
    nop                                           ; $5A11: $00
    nop                                           ; $5A12: $00
    nop                                           ; $5A13: $00
    nop                                           ; $5A14: $00
    nop                                           ; $5A15: $00
    nop                                           ; $5A16: $00
    add b                                         ; $5A17: $80
    dec a                                         ; $5A18: $3D
    daa                                           ; $5A19: $27
    ld e, d                                       ; $5A1A: $5A
    nop                                           ; $5A1B: $00
    nop                                           ; $5A1C: $00
    daa                                           ; $5A1D: $27
    ld e, d                                       ; $5A1E: $5A
    nop                                           ; $5A1F: $00
    nop                                           ; $5A20: $00
    nop                                           ; $5A21: $00
    nop                                           ; $5A22: $00
    nop                                           ; $5A23: $00
    nop                                           ; $5A24: $00
    ret nz                                        ; $5A25: $C0

    ret c                                         ; $5A26: $D8

    dec [hl]                                      ; $5A27: $35
    ld e, d                                       ; $5A28: $5A
    rst RST_38                                    ; $5A29: $FF
    rst RST_38                                    ; $5A2A: $FF
    ld b, [hl]                                    ; $5A2B: $46
    ld e, d                                       ; $5A2C: $5A
    rst RST_38                                    ; $5A2D: $FF
    rst RST_38                                    ; $5A2E: $FF
    ld d, a                                       ; $5A2F: $57
    ld e, d                                       ; $5A30: $5A
    rst RST_38                                    ; $5A31: $FF
    rst RST_38                                    ; $5A32: $FF
    rst RST_38                                    ; $5A33: $FF
    rst RST_38                                    ; $5A34: $FF
    add b                                         ; $5A35: $80
    nop                                           ; $5A36: $00
    nop                                           ; $5A37: $00
    rst RST_38                                    ; $5A38: $FF
    rst RST_38                                    ; $5A39: $FF
    rst RST_38                                    ; $5A3A: $FF
    ccf                                           ; $5A3B: $3F
    ld e, d                                       ; $5A3C: $5A
    nop                                           ; $5A3D: $00
    nop                                           ; $5A3E: $00
    ld [bc], a                                    ; $5A3F: $02
    db $F4                                        ; $5A40: $F4
    ld hl, sp+$12                                 ; $5A41: $F8 $12
    db $F4                                        ; $5A43: $F4
    nop                                           ; $5A44: $00
    ld [hl-], a                                   ; $5A45: $32
    add b                                         ; $5A46: $80
    nop                                           ; $5A47: $00
    nop                                           ; $5A48: $00
    rst RST_38                                    ; $5A49: $FF
    rst RST_38                                    ; $5A4A: $FF
    rst RST_38                                    ; $5A4B: $FF
    ld d, b                                       ; $5A4C: $50
    ld e, d                                       ; $5A4D: $5A
    nop                                           ; $5A4E: $00
    nop                                           ; $5A4F: $00
    ld [bc], a                                    ; $5A50: $02
    db $F4                                        ; $5A51: $F4
    ld hl, sp+$14                                 ; $5A52: $F8 $14
    db $F4                                        ; $5A54: $F4
    nop                                           ; $5A55: $00
    ld d, $80                                     ; $5A56: $16 $80
    nop                                           ; $5A58: $00
    nop                                           ; $5A59: $00
    rst RST_38                                    ; $5A5A: $FF
    rst RST_38                                    ; $5A5B: $FF
    rst RST_38                                    ; $5A5C: $FF
    ld h, c                                       ; $5A5D: $61
    ld e, d                                       ; $5A5E: $5A
    nop                                           ; $5A5F: $00
    nop                                           ; $5A60: $00
    ld [bc], a                                    ; $5A61: $02
    db $F4                                        ; $5A62: $F4
    ld hl, sp+$34                                 ; $5A63: $F8 $34
    db $F4                                        ; $5A65: $F4
    nop                                           ; $5A66: $00
    ld [hl], $80                                  ; $5A67: $36 $80
    nop                                           ; $5A69: $00
    db $10                                        ; $5A6A: $10
    db $10                                        ; $5A6B: $10
    ld d, b                                       ; $5A6C: $50
    nop                                           ; $5A6D: $00
    ld h, b                                       ; $5A6E: $60
    nop                                           ; $5A6F: $00
    nop                                           ; $5A70: $00
    nop                                           ; $5A71: $00
    nop                                           ; $5A72: $00
    nop                                           ; $5A73: $00
    nop                                           ; $5A74: $00
    nop                                           ; $5A75: $00
    nop                                           ; $5A76: $00
    nop                                           ; $5A77: $00
    add b                                         ; $5A78: $80
    dec a                                         ; $5A79: $3D
    adc b                                         ; $5A7A: $88
    ld e, d                                       ; $5A7B: $5A
    nop                                           ; $5A7C: $00
    nop                                           ; $5A7D: $00
    adc b                                         ; $5A7E: $88
    ld e, d                                       ; $5A7F: $5A
    nop                                           ; $5A80: $00
    nop                                           ; $5A81: $00
    nop                                           ; $5A82: $00
    nop                                           ; $5A83: $00
    inc bc                                        ; $5A84: $03
    inc bc                                        ; $5A85: $03
    ret nz                                        ; $5A86: $C0

    ret c                                         ; $5A87: $D8

    add sp, $5A                                   ; $5A88: $E8 $5A
    rst RST_38                                    ; $5A8A: $FF
    rst RST_38                                    ; $5A8B: $FF
    dec b                                         ; $5A8C: $05
    ld e, e                                       ; $5A8D: $5B
    rst RST_38                                    ; $5A8E: $FF
    rst RST_38                                    ; $5A8F: $FF
    rst RST_38                                    ; $5A90: $FF
    rst RST_38                                    ; $5A91: $FF
    ld [hl+], a                                   ; $5A92: $22
    ld e, e                                       ; $5A93: $5B
    rst RST_38                                    ; $5A94: $FF
    rst RST_38                                    ; $5A95: $FF
    ccf                                           ; $5A96: $3F
    ld e, e                                       ; $5A97: $5B
    rst RST_38                                    ; $5A98: $FF
    rst RST_38                                    ; $5A99: $FF
    rst RST_38                                    ; $5A9A: $FF
    rst RST_38                                    ; $5A9B: $FF
    ld e, h                                       ; $5A9C: $5C
    ld e, e                                       ; $5A9D: $5B
    rst RST_38                                    ; $5A9E: $FF
    rst RST_38                                    ; $5A9F: $FF
    ld a, c                                       ; $5AA0: $79
    ld e, e                                       ; $5AA1: $5B
    rst RST_38                                    ; $5AA2: $FF
    rst RST_38                                    ; $5AA3: $FF
    rst RST_38                                    ; $5AA4: $FF
    rst RST_38                                    ; $5AA5: $FF
    add sp, $5A                                   ; $5AA6: $E8 $5A
    rst RST_38                                    ; $5AA8: $FF
    rst RST_38                                    ; $5AA9: $FF
    dec b                                         ; $5AAA: $05
    ld e, e                                       ; $5AAB: $5B
    rst RST_38                                    ; $5AAC: $FF
    rst RST_38                                    ; $5AAD: $FF
    add sp, $5A                                   ; $5AAE: $E8 $5A
    rst RST_38                                    ; $5AB0: $FF
    rst RST_38                                    ; $5AB1: $FF
    dec b                                         ; $5AB2: $05
    ld e, e                                       ; $5AB3: $5B
    rst RST_38                                    ; $5AB4: $FF
    rst RST_38                                    ; $5AB5: $FF
    add sp, $5A                                   ; $5AB6: $E8 $5A
    rst RST_38                                    ; $5AB8: $FF
    rst RST_38                                    ; $5AB9: $FF
    dec b                                         ; $5ABA: $05
    ld e, e                                       ; $5ABB: $5B
    rst RST_38                                    ; $5ABC: $FF
    rst RST_38                                    ; $5ABD: $FF
    add sp, $5A                                   ; $5ABE: $E8 $5A
    rst RST_38                                    ; $5AC0: $FF
    rst RST_38                                    ; $5AC1: $FF
    dec b                                         ; $5AC2: $05
    ld e, e                                       ; $5AC3: $5B
    rst RST_38                                    ; $5AC4: $FF
    rst RST_38                                    ; $5AC5: $FF
    sub [hl]                                      ; $5AC6: $96
    ld e, e                                       ; $5AC7: $5B
    rst RST_38                                    ; $5AC8: $FF
    rst RST_38                                    ; $5AC9: $FF
    sub [hl]                                      ; $5ACA: $96
    ld e, e                                       ; $5ACB: $5B
    rst RST_38                                    ; $5ACC: $FF
    rst RST_38                                    ; $5ACD: $FF
    sub [hl]                                      ; $5ACE: $96
    ld e, e                                       ; $5ACF: $5B
    rst RST_38                                    ; $5AD0: $FF
    rst RST_38                                    ; $5AD1: $FF
    sub [hl]                                      ; $5AD2: $96
    ld e, e                                       ; $5AD3: $5B
    rst RST_38                                    ; $5AD4: $FF
    rst RST_38                                    ; $5AD5: $FF
    and a                                         ; $5AD6: $A7
    ld e, e                                       ; $5AD7: $5B
    rst RST_38                                    ; $5AD8: $FF
    rst RST_38                                    ; $5AD9: $FF
    and a                                         ; $5ADA: $A7
    ld e, e                                       ; $5ADB: $5B
    rst RST_38                                    ; $5ADC: $FF

jr_03D_5ADD:
    rst RST_38                                    ; $5ADD: $FF
    and a                                         ; $5ADE: $A7
    ld e, e                                       ; $5ADF: $5B
    rst RST_38                                    ; $5AE0: $FF
    rst RST_38                                    ; $5AE1: $FF
    and a                                         ; $5AE2: $A7
    ld e, e                                       ; $5AE3: $5B
    rst RST_38                                    ; $5AE4: $FF
    rst RST_38                                    ; $5AE5: $FF
    rst RST_38                                    ; $5AE6: $FF
    rst RST_38                                    ; $5AE7: $FF
    add b                                         ; $5AE8: $80
    nop                                           ; $5AE9: $00
    nop                                           ; $5AEA: $00
    rst RST_38                                    ; $5AEB: $FF
    rst RST_38                                    ; $5AEC: $FF
    rst RST_38                                    ; $5AED: $FF
    ldh a, [c]                                    ; $5AEE: $F2
    ld e, d                                       ; $5AEF: $5A
    nop                                           ; $5AF0: $00
    nop                                           ; $5AF1: $00
    ld b, $E8                                     ; $5AF2: $06 $E8
    db $F4                                        ; $5AF4: $F4
    nop                                           ; $5AF5: $00
    add sp, -$04                                  ; $5AF6: $E8 $FC

jr_03D_5AF8:
    ld [bc], a                                    ; $5AF8: $02
    add sp, $04                                   ; $5AF9: $E8 $04
    inc b                                         ; $5AFB: $04
    ld hl, sp-$0C                                 ; $5AFC: $F8 $F4
    jr nz, jr_03D_5AF8                            ; $5AFE: $20 $F8

    db $FC                                        ; $5B00: $FC
    ld [hl+], a                                   ; $5B01: $22
    ld hl, sp+$04                                 ; $5B02: $F8 $04
    inc h                                         ; $5B04: $24
    add b                                         ; $5B05: $80
    nop                                           ; $5B06: $00
    nop                                           ; $5B07: $00
    rst RST_38                                    ; $5B08: $FF
    rst RST_38                                    ; $5B09: $FF
    rst RST_38                                    ; $5B0A: $FF
    rrca                                          ; $5B0B: $0F
    ld e, e                                       ; $5B0C: $5B
    nop                                           ; $5B0D: $00
    nop                                           ; $5B0E: $00
    ld b, $E8                                     ; $5B0F: $06 $E8
    db $F4                                        ; $5B11: $F4
    ld b, $E8                                     ; $5B12: $06 $E8
    db $FC                                        ; $5B14: $FC
    ld [$04E8], sp                                ; $5B15: $08 $E8 $04

jr_03D_5B18:
    ld a, [bc]                                    ; $5B18: $0A
    ld hl, sp-$0C                                 ; $5B19: $F8 $F4
    ld h, $F8                                     ; $5B1B: $26 $F8
    db $FC                                        ; $5B1D: $FC
    jr z, jr_03D_5B18                             ; $5B1E: $28 $F8

    inc b                                         ; $5B20: $04
    ld a, [hl+]                                   ; $5B21: $2A
    add b                                         ; $5B22: $80
    nop                                           ; $5B23: $00
    nop                                           ; $5B24: $00
    rst RST_38                                    ; $5B25: $FF
    rst RST_38                                    ; $5B26: $FF
    rst RST_38                                    ; $5B27: $FF
    inc l                                         ; $5B28: $2C
    ld e, e                                       ; $5B29: $5B
    nop                                           ; $5B2A: $00
    nop                                           ; $5B2B: $00
    ld b, $E8                                     ; $5B2C: $06 $E8
    db $F4                                        ; $5B2E: $F4
    nop                                           ; $5B2F: $00
    add sp, -$04                                  ; $5B30: $E8 $FC
    ld [bc], a                                    ; $5B32: $02
    add sp, $04                                   ; $5B33: $E8 $04
    inc b                                         ; $5B35: $04
    ld hl, sp-$0C                                 ; $5B36: $F8 $F4
    inc c                                         ; $5B38: $0C
    ld hl, sp-$04                                 ; $5B39: $F8 $FC
    ld c, $F8                                     ; $5B3B: $0E $F8
    inc b                                         ; $5B3D: $04
    db $10                                        ; $5B3E: $10
    add b                                         ; $5B3F: $80
    nop                                           ; $5B40: $00
    nop                                           ; $5B41: $00
    rst RST_38                                    ; $5B42: $FF
    rst RST_38                                    ; $5B43: $FF
    rst RST_38                                    ; $5B44: $FF
    ld c, c                                       ; $5B45: $49
    ld e, e                                       ; $5B46: $5B
    nop                                           ; $5B47: $00
    nop                                           ; $5B48: $00
    ld b, $E8                                     ; $5B49: $06 $E8
    db $F4                                        ; $5B4B: $F4
    ld b, $E8                                     ; $5B4C: $06 $E8
    db $FC                                        ; $5B4E: $FC
    ld [$04E8], sp                                ; $5B4F: $08 $E8 $04
    ld a, [bc]                                    ; $5B52: $0A
    ld hl, sp-$0C                                 ; $5B53: $F8 $F4
    inc l                                         ; $5B55: $2C
    ld hl, sp-$04                                 ; $5B56: $F8 $FC
    ld l, $F8                                     ; $5B58: $2E $F8
    inc b                                         ; $5B5A: $04
    jr nc, jr_03D_5ADD                            ; $5B5B: $30 $80

    nop                                           ; $5B5D: $00
    nop                                           ; $5B5E: $00
    rst RST_38                                    ; $5B5F: $FF
    rst RST_38                                    ; $5B60: $FF
    rst RST_38                                    ; $5B61: $FF
    ld h, [hl]                                    ; $5B62: $66
    ld e, e                                       ; $5B63: $5B
    nop                                           ; $5B64: $00
    nop                                           ; $5B65: $00
    ld b, $E8                                     ; $5B66: $06 $E8
    db $F4                                        ; $5B68: $F4
    db $10                                        ; $5B69: $10
    add sp, -$04                                  ; $5B6A: $E8 $FC

jr_03D_5B6C:
    ld [de], a                                    ; $5B6C: $12
    add sp, $04                                   ; $5B6D: $E8 $04
    inc d                                         ; $5B6F: $14
    ld hl, sp-$0C                                 ; $5B70: $F8 $F4
    jr nc, jr_03D_5B6C                            ; $5B72: $30 $F8

    db $FC                                        ; $5B74: $FC
    ld [hl-], a                                   ; $5B75: $32
    ld hl, sp+$04                                 ; $5B76: $F8 $04
    inc [hl]                                      ; $5B78: $34
    add b                                         ; $5B79: $80
    nop                                           ; $5B7A: $00
    nop                                           ; $5B7B: $00
    rst RST_38                                    ; $5B7C: $FF
    rst RST_38                                    ; $5B7D: $FF
    rst RST_38                                    ; $5B7E: $FF
    add e                                         ; $5B7F: $83
    ld e, e                                       ; $5B80: $5B
    nop                                           ; $5B81: $00
    nop                                           ; $5B82: $00
    ld b, $E8                                     ; $5B83: $06 $E8
    db $F4                                        ; $5B85: $F4
    ld d, $E8                                     ; $5B86: $16 $E8
    db $FC                                        ; $5B88: $FC
    jr @-$16                                      ; $5B89: $18 $E8

    inc b                                         ; $5B8B: $04

jr_03D_5B8C:
    ld a, [de]                                    ; $5B8C: $1A
    ld hl, sp-$0C                                 ; $5B8D: $F8 $F4
    ld [hl], $F8                                  ; $5B8F: $36 $F8
    db $FC                                        ; $5B91: $FC
    jr c, jr_03D_5B8C                             ; $5B92: $38 $F8

    inc b                                         ; $5B94: $04
    ld a, [hl-]                                   ; $5B95: $3A
    add b                                         ; $5B96: $80
    nop                                           ; $5B97: $00
    nop                                           ; $5B98: $00
    rst RST_38                                    ; $5B99: $FF
    rst RST_38                                    ; $5B9A: $FF
    rst RST_38                                    ; $5B9B: $FF
    and b                                         ; $5B9C: $A0
    ld e, e                                       ; $5B9D: $5B
    nop                                           ; $5B9E: $00
    nop                                           ; $5B9F: $00
    ld [bc], a                                    ; $5BA0: $02
    db $F4                                        ; $5BA1: $F4
    ld hl, sp+$0C                                 ; $5BA2: $F8 $0C
    db $F4                                        ; $5BA4: $F4
    nop                                           ; $5BA5: $00
    ld c, $80                                     ; $5BA6: $0E $80
    nop                                           ; $5BA8: $00
    nop                                           ; $5BA9: $00
    rst RST_38                                    ; $5BAA: $FF
    rst RST_38                                    ; $5BAB: $FF
    rst RST_38                                    ; $5BAC: $FF
    or c                                          ; $5BAD: $B1
    ld e, e                                       ; $5BAE: $5B
    nop                                           ; $5BAF: $00
    nop                                           ; $5BB0: $00
    ld [bc], a                                    ; $5BB1: $02
    db $F4                                        ; $5BB2: $F4
    ld hl, sp+$2C                                 ; $5BB3: $F8 $2C
    db $F4                                        ; $5BB5: $F4
    nop                                           ; $5BB6: $00
    ld l, $80                                     ; $5BB7: $2E $80
    nop                                           ; $5BB9: $00
    ld bc, $5001                                  ; $5BBA: $01 $01 $50
    nop                                           ; $5BBD: $00
    jr jr_03D_5BC0                                ; $5BBE: $18 $00

jr_03D_5BC0:
    nop                                           ; $5BC0: $00
    nop                                           ; $5BC1: $00
    nop                                           ; $5BC2: $00
    nop                                           ; $5BC3: $00
    nop                                           ; $5BC4: $00
    nop                                           ; $5BC5: $00
    nop                                           ; $5BC6: $00
    nop                                           ; $5BC7: $00
    add b                                         ; $5BC8: $80
    dec a                                         ; $5BC9: $3D
    ret c                                         ; $5BCA: $D8

    ld e, e                                       ; $5BCB: $5B
    nop                                           ; $5BCC: $00
    nop                                           ; $5BCD: $00
    ret c                                         ; $5BCE: $D8

    ld e, e                                       ; $5BCF: $5B
    nop                                           ; $5BD0: $00
    nop                                           ; $5BD1: $00
    nop                                           ; $5BD2: $00
    nop                                           ; $5BD3: $00
    inc bc                                        ; $5BD4: $03
    inc bc                                        ; $5BD5: $03
    ret nz                                        ; $5BD6: $C0

    ret c                                         ; $5BD7: $D8

    ldh [c], a                                    ; $5BD8: $E2
    ld e, e                                       ; $5BD9: $5B
    rst RST_38                                    ; $5BDA: $FF
    rst RST_38                                    ; $5BDB: $FF
    di                                            ; $5BDC: $F3
    ld e, e                                       ; $5BDD: $5B
    rst RST_38                                    ; $5BDE: $FF
    rst RST_38                                    ; $5BDF: $FF
    rst RST_38                                    ; $5BE0: $FF
    rst RST_38                                    ; $5BE1: $FF
    add b                                         ; $5BE2: $80
    nop                                           ; $5BE3: $00
    nop                                           ; $5BE4: $00
    rst RST_38                                    ; $5BE5: $FF
    rst RST_38                                    ; $5BE6: $FF
    rst RST_38                                    ; $5BE7: $FF
    db $EC                                        ; $5BE8: $EC
    ld e, e                                       ; $5BE9: $5B
    nop                                           ; $5BEA: $00
    nop                                           ; $5BEB: $00
    ld [bc], a                                    ; $5BEC: $02
    db $F4                                        ; $5BED: $F4
    ld hl, sp+$1C                                 ; $5BEE: $F8 $1C
    db $F4                                        ; $5BF0: $F4
    nop                                           ; $5BF1: $00
    ld e, $80                                     ; $5BF2: $1E $80
    nop                                           ; $5BF4: $00
    nop                                           ; $5BF5: $00
    rst RST_38                                    ; $5BF6: $FF
    rst RST_38                                    ; $5BF7: $FF
    rst RST_38                                    ; $5BF8: $FF
    db $FD                                        ; $5BF9: $FD
    ld e, e                                       ; $5BFA: $5B
    nop                                           ; $5BFB: $00
    nop                                           ; $5BFC: $00
    ld [bc], a                                    ; $5BFD: $02
    db $F4                                        ; $5BFE: $F4
    ld hl, sp+$3C                                 ; $5BFF: $F8 $3C
    db $F4                                        ; $5C01: $F4
    nop                                           ; $5C02: $00
    ld a, $80                                     ; $5C03: $3E $80
    nop                                           ; $5C05: $00
    db $10                                        ; $5C06: $10
    db $10                                        ; $5C07: $10
    ld d, b                                       ; $5C08: $50
    nop                                           ; $5C09: $00
    ld h, b                                       ; $5C0A: $60
    nop                                           ; $5C0B: $00
    nop                                           ; $5C0C: $00
    nop                                           ; $5C0D: $00
    nop                                           ; $5C0E: $00
    nop                                           ; $5C0F: $00
    nop                                           ; $5C10: $00
    nop                                           ; $5C11: $00
    nop                                           ; $5C12: $00
    nop                                           ; $5C13: $00
    add b                                         ; $5C14: $80
    dec a                                         ; $5C15: $3D
    sbc a                                         ; $5C16: $9F
    ld d, l                                       ; $5C17: $55
    nop                                           ; $5C18: $00
    nop                                           ; $5C19: $00
    sbc a                                         ; $5C1A: $9F
    ld d, l                                       ; $5C1B: $55
    nop                                           ; $5C1C: $00
    nop                                           ; $5C1D: $00
    nop                                           ; $5C1E: $00
    nop                                           ; $5C1F: $00
    inc bc                                        ; $5C20: $03
    inc bc                                        ; $5C21: $03
    ret nz                                        ; $5C22: $C0

    ret c                                         ; $5C23: $D8

    add b                                         ; $5C24: $80
    nop                                           ; $5C25: $00
    ld bc, $5001                                  ; $5C26: $01 $01 $50
    nop                                           ; $5C29: $00
    jr jr_03D_5C2C                                ; $5C2A: $18 $00

jr_03D_5C2C:
    nop                                           ; $5C2C: $00
    nop                                           ; $5C2D: $00
    nop                                           ; $5C2E: $00
    nop                                           ; $5C2F: $00
    nop                                           ; $5C30: $00
    nop                                           ; $5C31: $00
    nop                                           ; $5C32: $00
    nop                                           ; $5C33: $00
    add b                                         ; $5C34: $80
    dec a                                         ; $5C35: $3D
    ld b, h                                       ; $5C36: $44
    ld e, h                                       ; $5C37: $5C
    nop                                           ; $5C38: $00
    nop                                           ; $5C39: $00
    ld b, h                                       ; $5C3A: $44
    ld e, h                                       ; $5C3B: $5C
    nop                                           ; $5C3C: $00
    nop                                           ; $5C3D: $00
    nop                                           ; $5C3E: $00
    nop                                           ; $5C3F: $00
    inc bc                                        ; $5C40: $03
    inc bc                                        ; $5C41: $03
    ret nz                                        ; $5C42: $C0

    ret c                                         ; $5C43: $D8

    ld c, [hl]                                    ; $5C44: $4E
    ld e, h                                       ; $5C45: $5C
    rst RST_38                                    ; $5C46: $FF
    rst RST_38                                    ; $5C47: $FF
    ld e, a                                       ; $5C48: $5F
    ld e, h                                       ; $5C49: $5C
    rst RST_38                                    ; $5C4A: $FF
    rst RST_38                                    ; $5C4B: $FF
    rst RST_38                                    ; $5C4C: $FF
    rst RST_38                                    ; $5C4D: $FF
    add b                                         ; $5C4E: $80
    nop                                           ; $5C4F: $00
    nop                                           ; $5C50: $00
    rst RST_38                                    ; $5C51: $FF
    rst RST_38                                    ; $5C52: $FF
    rst RST_38                                    ; $5C53: $FF
    ld e, b                                       ; $5C54: $58
    ld e, h                                       ; $5C55: $5C
    nop                                           ; $5C56: $00
    nop                                           ; $5C57: $00
    ld [bc], a                                    ; $5C58: $02
    db $F4                                        ; $5C59: $F4
    ld hl, sp+$1C                                 ; $5C5A: $F8 $1C
    db $F4                                        ; $5C5C: $F4
    nop                                           ; $5C5D: $00
    ld e, $80                                     ; $5C5E: $1E $80
    nop                                           ; $5C60: $00
    nop                                           ; $5C61: $00
    rst RST_38                                    ; $5C62: $FF
    rst RST_38                                    ; $5C63: $FF
    rst RST_38                                    ; $5C64: $FF
    ld l, c                                       ; $5C65: $69
    ld e, h                                       ; $5C66: $5C
    nop                                           ; $5C67: $00
    nop                                           ; $5C68: $00
    ld [bc], a                                    ; $5C69: $02
    db $F4                                        ; $5C6A: $F4
    ld hl, sp+$3C                                 ; $5C6B: $F8 $3C
    db $F4                                        ; $5C6D: $F4
    nop                                           ; $5C6E: $00
    ld a, $80                                     ; $5C6F: $3E $80
    nop                                           ; $5C71: $00
    db $10                                        ; $5C72: $10
    db $10                                        ; $5C73: $10
    ld d, b                                       ; $5C74: $50
    nop                                           ; $5C75: $00
    ld h, b                                       ; $5C76: $60
    nop                                           ; $5C77: $00
    nop                                           ; $5C78: $00
    nop                                           ; $5C79: $00
    nop                                           ; $5C7A: $00
    nop                                           ; $5C7B: $00
    nop                                           ; $5C7C: $00
    nop                                           ; $5C7D: $00
    nop                                           ; $5C7E: $00
    nop                                           ; $5C7F: $00
    add b                                         ; $5C80: $80
    dec a                                         ; $5C81: $3D
    sbc a                                         ; $5C82: $9F
    ld d, l                                       ; $5C83: $55
    nop                                           ; $5C84: $00
    nop                                           ; $5C85: $00
    sbc a                                         ; $5C86: $9F
    ld d, l                                       ; $5C87: $55
    nop                                           ; $5C88: $00
    nop                                           ; $5C89: $00
    nop                                           ; $5C8A: $00
    nop                                           ; $5C8B: $00
    inc bc                                        ; $5C8C: $03
    inc bc                                        ; $5C8D: $03
    ret nz                                        ; $5C8E: $C0

    ret c                                         ; $5C8F: $D8

    add b                                         ; $5C90: $80
    nop                                           ; $5C91: $00
    ld bc, $5001                                  ; $5C92: $01 $01 $50
    nop                                           ; $5C95: $00
    jr jr_03D_5C98                                ; $5C96: $18 $00

jr_03D_5C98:
    nop                                           ; $5C98: $00
    nop                                           ; $5C99: $00
    nop                                           ; $5C9A: $00
    nop                                           ; $5C9B: $00
    nop                                           ; $5C9C: $00
    nop                                           ; $5C9D: $00
    nop                                           ; $5C9E: $00
    nop                                           ; $5C9F: $00
    add b                                         ; $5CA0: $80
    dec a                                         ; $5CA1: $3D
    or b                                          ; $5CA2: $B0
    ld e, h                                       ; $5CA3: $5C
    nop                                           ; $5CA4: $00
    nop                                           ; $5CA5: $00
    or b                                          ; $5CA6: $B0
    ld e, h                                       ; $5CA7: $5C
    nop                                           ; $5CA8: $00
    nop                                           ; $5CA9: $00
    nop                                           ; $5CAA: $00
    nop                                           ; $5CAB: $00
    inc bc                                        ; $5CAC: $03
    inc bc                                        ; $5CAD: $03
    ret nz                                        ; $5CAE: $C0

    ret c                                         ; $5CAF: $D8

    cp d                                          ; $5CB0: $BA
    ld e, h                                       ; $5CB1: $5C
    rst RST_38                                    ; $5CB2: $FF
    rst RST_38                                    ; $5CB3: $FF
    bit 3, h                                      ; $5CB4: $CB $5C
    rst RST_38                                    ; $5CB6: $FF
    rst RST_38                                    ; $5CB7: $FF
    rst RST_38                                    ; $5CB8: $FF
    rst RST_38                                    ; $5CB9: $FF
    add b                                         ; $5CBA: $80
    nop                                           ; $5CBB: $00
    nop                                           ; $5CBC: $00
    rst RST_38                                    ; $5CBD: $FF
    rst RST_38                                    ; $5CBE: $FF
    rst RST_38                                    ; $5CBF: $FF
    call nz, Call_000_005C                        ; $5CC0: $C4 $5C $00
    nop                                           ; $5CC3: $00
    ld [bc], a                                    ; $5CC4: $02
    db $F4                                        ; $5CC5: $F4
    ld hl, sp+$1C                                 ; $5CC6: $F8 $1C
    db $F4                                        ; $5CC8: $F4
    nop                                           ; $5CC9: $00
    ld e, $80                                     ; $5CCA: $1E $80
    nop                                           ; $5CCC: $00
    nop                                           ; $5CCD: $00
    rst RST_38                                    ; $5CCE: $FF
    rst RST_38                                    ; $5CCF: $FF
    rst RST_38                                    ; $5CD0: $FF
    push de                                       ; $5CD1: $D5
    ld e, h                                       ; $5CD2: $5C
    nop                                           ; $5CD3: $00
    nop                                           ; $5CD4: $00
    ld [bc], a                                    ; $5CD5: $02
    db $F4                                        ; $5CD6: $F4
    ld hl, sp+$3C                                 ; $5CD7: $F8 $3C
    db $F4                                        ; $5CD9: $F4
    nop                                           ; $5CDA: $00
    ld a, $80                                     ; $5CDB: $3E $80
    nop                                           ; $5CDD: $00
    db $10                                        ; $5CDE: $10
    db $10                                        ; $5CDF: $10
    ld d, b                                       ; $5CE0: $50
    nop                                           ; $5CE1: $00
    ld h, b                                       ; $5CE2: $60
    nop                                           ; $5CE3: $00
    nop                                           ; $5CE4: $00
    nop                                           ; $5CE5: $00
    nop                                           ; $5CE6: $00
    nop                                           ; $5CE7: $00
    nop                                           ; $5CE8: $00
    nop                                           ; $5CE9: $00
    nop                                           ; $5CEA: $00
    nop                                           ; $5CEB: $00
    add b                                         ; $5CEC: $80
    dec a                                         ; $5CED: $3D
    sbc a                                         ; $5CEE: $9F
    ld d, l                                       ; $5CEF: $55
    nop                                           ; $5CF0: $00
    nop                                           ; $5CF1: $00
    sbc a                                         ; $5CF2: $9F
    ld d, l                                       ; $5CF3: $55
    nop                                           ; $5CF4: $00
    nop                                           ; $5CF5: $00
    nop                                           ; $5CF6: $00
    nop                                           ; $5CF7: $00
    inc bc                                        ; $5CF8: $03
    inc bc                                        ; $5CF9: $03
    ret nz                                        ; $5CFA: $C0

    ret c                                         ; $5CFB: $D8

    add b                                         ; $5CFC: $80
    nop                                           ; $5CFD: $00
    ld bc, $5001                                  ; $5CFE: $01 $01 $50
    nop                                           ; $5D01: $00
    jr jr_03D_5D04                                ; $5D02: $18 $00

jr_03D_5D04:
    nop                                           ; $5D04: $00
    nop                                           ; $5D05: $00
    nop                                           ; $5D06: $00
    nop                                           ; $5D07: $00
    nop                                           ; $5D08: $00
    nop                                           ; $5D09: $00
    nop                                           ; $5D0A: $00
    nop                                           ; $5D0B: $00
    add b                                         ; $5D0C: $80
    dec a                                         ; $5D0D: $3D
    inc e                                         ; $5D0E: $1C
    ld e, l                                       ; $5D0F: $5D
    nop                                           ; $5D10: $00
    nop                                           ; $5D11: $00
    inc e                                         ; $5D12: $1C
    ld e, l                                       ; $5D13: $5D
    nop                                           ; $5D14: $00
    nop                                           ; $5D15: $00
    nop                                           ; $5D16: $00
    nop                                           ; $5D17: $00
    inc bc                                        ; $5D18: $03
    inc bc                                        ; $5D19: $03
    ret nz                                        ; $5D1A: $C0

    ret c                                         ; $5D1B: $D8

    ld h, $5D                                     ; $5D1C: $26 $5D
    rst RST_38                                    ; $5D1E: $FF
    rst RST_38                                    ; $5D1F: $FF
    scf                                           ; $5D20: $37
    ld e, l                                       ; $5D21: $5D
    rst RST_38                                    ; $5D22: $FF
    rst RST_38                                    ; $5D23: $FF
    rst RST_38                                    ; $5D24: $FF
    rst RST_38                                    ; $5D25: $FF
    add b                                         ; $5D26: $80
    nop                                           ; $5D27: $00
    nop                                           ; $5D28: $00
    rst RST_38                                    ; $5D29: $FF
    rst RST_38                                    ; $5D2A: $FF
    rst RST_38                                    ; $5D2B: $FF
    jr nc, jr_03D_5D8B                            ; $5D2C: $30 $5D

    nop                                           ; $5D2E: $00
    nop                                           ; $5D2F: $00
    ld [bc], a                                    ; $5D30: $02
    db $F4                                        ; $5D31: $F4
    ld hl, sp+$1C                                 ; $5D32: $F8 $1C
    db $F4                                        ; $5D34: $F4
    nop                                           ; $5D35: $00
    ld e, $80                                     ; $5D36: $1E $80
    nop                                           ; $5D38: $00
    nop                                           ; $5D39: $00
    rst RST_38                                    ; $5D3A: $FF
    rst RST_38                                    ; $5D3B: $FF
    rst RST_38                                    ; $5D3C: $FF
    ld b, c                                       ; $5D3D: $41
    ld e, l                                       ; $5D3E: $5D
    nop                                           ; $5D3F: $00
    nop                                           ; $5D40: $00
    ld [bc], a                                    ; $5D41: $02
    db $F4                                        ; $5D42: $F4
    ld hl, sp+$3C                                 ; $5D43: $F8 $3C
    db $F4                                        ; $5D45: $F4
    nop                                           ; $5D46: $00
    ld a, $80                                     ; $5D47: $3E $80
    nop                                           ; $5D49: $00
    db $10                                        ; $5D4A: $10
    db $10                                        ; $5D4B: $10
    ld d, b                                       ; $5D4C: $50
    nop                                           ; $5D4D: $00
    ld h, b                                       ; $5D4E: $60
    nop                                           ; $5D4F: $00
    nop                                           ; $5D50: $00
    nop                                           ; $5D51: $00
    nop                                           ; $5D52: $00
    nop                                           ; $5D53: $00
    nop                                           ; $5D54: $00
    nop                                           ; $5D55: $00
    nop                                           ; $5D56: $00
    nop                                           ; $5D57: $00
    add b                                         ; $5D58: $80
    dec a                                         ; $5D59: $3D
    sbc a                                         ; $5D5A: $9F
    ld d, l                                       ; $5D5B: $55
    nop                                           ; $5D5C: $00
    nop                                           ; $5D5D: $00
    sbc a                                         ; $5D5E: $9F
    ld d, l                                       ; $5D5F: $55
    nop                                           ; $5D60: $00
    nop                                           ; $5D61: $00
    nop                                           ; $5D62: $00
    nop                                           ; $5D63: $00
    inc bc                                        ; $5D64: $03
    inc bc                                        ; $5D65: $03
    ret nz                                        ; $5D66: $C0

    ret c                                         ; $5D67: $D8

    add b                                         ; $5D68: $80
    nop                                           ; $5D69: $00
    ld bc, $5001                                  ; $5D6A: $01 $01 $50
    nop                                           ; $5D6D: $00
    jr jr_03D_5D70                                ; $5D6E: $18 $00

jr_03D_5D70:
    nop                                           ; $5D70: $00
    nop                                           ; $5D71: $00
    nop                                           ; $5D72: $00
    nop                                           ; $5D73: $00
    nop                                           ; $5D74: $00
    nop                                           ; $5D75: $00
    nop                                           ; $5D76: $00
    nop                                           ; $5D77: $00
    add b                                         ; $5D78: $80
    dec a                                         ; $5D79: $3D
    adc b                                         ; $5D7A: $88
    ld e, l                                       ; $5D7B: $5D
    nop                                           ; $5D7C: $00
    nop                                           ; $5D7D: $00
    adc b                                         ; $5D7E: $88
    ld e, l                                       ; $5D7F: $5D
    nop                                           ; $5D80: $00
    nop                                           ; $5D81: $00
    nop                                           ; $5D82: $00
    nop                                           ; $5D83: $00
    inc bc                                        ; $5D84: $03
    inc bc                                        ; $5D85: $03
    ret nz                                        ; $5D86: $C0

    ret c                                         ; $5D87: $D8

    sub d                                         ; $5D88: $92
    ld e, l                                       ; $5D89: $5D
    rst RST_38                                    ; $5D8A: $FF

jr_03D_5D8B:
    rst RST_38                                    ; $5D8B: $FF
    and e                                         ; $5D8C: $A3
    ld e, l                                       ; $5D8D: $5D
    rst RST_38                                    ; $5D8E: $FF
    rst RST_38                                    ; $5D8F: $FF
    rst RST_38                                    ; $5D90: $FF
    rst RST_38                                    ; $5D91: $FF
    add b                                         ; $5D92: $80
    nop                                           ; $5D93: $00
    nop                                           ; $5D94: $00
    rst RST_38                                    ; $5D95: $FF
    rst RST_38                                    ; $5D96: $FF
    rst RST_38                                    ; $5D97: $FF
    sbc h                                         ; $5D98: $9C
    ld e, l                                       ; $5D99: $5D
    nop                                           ; $5D9A: $00
    nop                                           ; $5D9B: $00
    ld [bc], a                                    ; $5D9C: $02
    db $F4                                        ; $5D9D: $F4
    ld hl, sp+$1C                                 ; $5D9E: $F8 $1C
    db $F4                                        ; $5DA0: $F4
    nop                                           ; $5DA1: $00
    ld e, $80                                     ; $5DA2: $1E $80
    nop                                           ; $5DA4: $00
    nop                                           ; $5DA5: $00
    rst RST_38                                    ; $5DA6: $FF
    rst RST_38                                    ; $5DA7: $FF
    rst RST_38                                    ; $5DA8: $FF
    xor l                                         ; $5DA9: $AD
    ld e, l                                       ; $5DAA: $5D
    nop                                           ; $5DAB: $00
    nop                                           ; $5DAC: $00
    ld [bc], a                                    ; $5DAD: $02
    db $F4                                        ; $5DAE: $F4
    ld hl, sp+$3C                                 ; $5DAF: $F8 $3C
    db $F4                                        ; $5DB1: $F4
    nop                                           ; $5DB2: $00
    ld a, $80                                     ; $5DB3: $3E $80
    nop                                           ; $5DB5: $00
    db $10                                        ; $5DB6: $10
    db $10                                        ; $5DB7: $10
    ld d, b                                       ; $5DB8: $50
    nop                                           ; $5DB9: $00
    ld h, b                                       ; $5DBA: $60
    nop                                           ; $5DBB: $00
    nop                                           ; $5DBC: $00
    nop                                           ; $5DBD: $00
    nop                                           ; $5DBE: $00
    nop                                           ; $5DBF: $00
    nop                                           ; $5DC0: $00
    nop                                           ; $5DC1: $00
    nop                                           ; $5DC2: $00
    nop                                           ; $5DC3: $00
    add b                                         ; $5DC4: $80
    dec a                                         ; $5DC5: $3D
    or c                                          ; $5DC6: $B1
    ld d, l                                       ; $5DC7: $55
    nop                                           ; $5DC8: $00
    nop                                           ; $5DC9: $00
    or c                                          ; $5DCA: $B1
    ld d, l                                       ; $5DCB: $55
    nop                                           ; $5DCC: $00
    nop                                           ; $5DCD: $00
    nop                                           ; $5DCE: $00
    nop                                           ; $5DCF: $00
    inc bc                                        ; $5DD0: $03
    inc bc                                        ; $5DD1: $03
    ret nz                                        ; $5DD2: $C0

    ret c                                         ; $5DD3: $D8

    add b                                         ; $5DD4: $80
    nop                                           ; $5DD5: $00
    ld bc, $5001                                  ; $5DD6: $01 $01 $50
    nop                                           ; $5DD9: $00
    jr jr_03D_5DDC                                ; $5DDA: $18 $00

jr_03D_5DDC:
    nop                                           ; $5DDC: $00
    nop                                           ; $5DDD: $00
    nop                                           ; $5DDE: $00
    nop                                           ; $5DDF: $00
    nop                                           ; $5DE0: $00
    nop                                           ; $5DE1: $00
    nop                                           ; $5DE2: $00
    nop                                           ; $5DE3: $00
    add b                                         ; $5DE4: $80
    dec a                                         ; $5DE5: $3D
    db $F4                                        ; $5DE6: $F4
    ld e, l                                       ; $5DE7: $5D
    nop                                           ; $5DE8: $00
    nop                                           ; $5DE9: $00
    db $F4                                        ; $5DEA: $F4
    ld e, l                                       ; $5DEB: $5D
    nop                                           ; $5DEC: $00
    nop                                           ; $5DED: $00
    nop                                           ; $5DEE: $00
    nop                                           ; $5DEF: $00
    inc bc                                        ; $5DF0: $03
    inc bc                                        ; $5DF1: $03
    ret nz                                        ; $5DF2: $C0

    ret c                                         ; $5DF3: $D8

    cp $5D                                        ; $5DF4: $FE $5D
    rst RST_38                                    ; $5DF6: $FF
    rst RST_38                                    ; $5DF7: $FF
    rrca                                          ; $5DF8: $0F
    ld e, [hl]                                    ; $5DF9: $5E
    rst RST_38                                    ; $5DFA: $FF
    rst RST_38                                    ; $5DFB: $FF
    rst RST_38                                    ; $5DFC: $FF
    rst RST_38                                    ; $5DFD: $FF
    add b                                         ; $5DFE: $80
    nop                                           ; $5DFF: $00
    nop                                           ; $5E00: $00
    rst RST_38                                    ; $5E01: $FF
    rst RST_38                                    ; $5E02: $FF
    rst RST_38                                    ; $5E03: $FF
    ld [$005E], sp                                ; $5E04: $08 $5E $00
    nop                                           ; $5E07: $00
    ld [bc], a                                    ; $5E08: $02
    db $F4                                        ; $5E09: $F4
    ld hl, sp+$1C                                 ; $5E0A: $F8 $1C
    db $F4                                        ; $5E0C: $F4
    nop                                           ; $5E0D: $00
    ld e, $80                                     ; $5E0E: $1E $80
    nop                                           ; $5E10: $00
    nop                                           ; $5E11: $00
    rst RST_38                                    ; $5E12: $FF
    rst RST_38                                    ; $5E13: $FF
    rst RST_38                                    ; $5E14: $FF
    add hl, de                                    ; $5E15: $19
    ld e, [hl]                                    ; $5E16: $5E
    nop                                           ; $5E17: $00
    nop                                           ; $5E18: $00
    ld [bc], a                                    ; $5E19: $02
    db $F4                                        ; $5E1A: $F4
    ld hl, sp+$3C                                 ; $5E1B: $F8 $3C
    db $F4                                        ; $5E1D: $F4
    nop                                           ; $5E1E: $00
    ld a, $80                                     ; $5E1F: $3E $80
    nop                                           ; $5E21: $00
    db $10                                        ; $5E22: $10
    db $10                                        ; $5E23: $10
    ld d, b                                       ; $5E24: $50
    nop                                           ; $5E25: $00
    ld h, b                                       ; $5E26: $60
    nop                                           ; $5E27: $00
    nop                                           ; $5E28: $00
    nop                                           ; $5E29: $00
    nop                                           ; $5E2A: $00
    nop                                           ; $5E2B: $00
    nop                                           ; $5E2C: $00
    nop                                           ; $5E2D: $00
    nop                                           ; $5E2E: $00
    nop                                           ; $5E2F: $00
    add b                                         ; $5E30: $80
    dec a                                         ; $5E31: $3D
    sbc a                                         ; $5E32: $9F
    ld d, l                                       ; $5E33: $55
    nop                                           ; $5E34: $00
    nop                                           ; $5E35: $00
    sbc a                                         ; $5E36: $9F
    ld d, l                                       ; $5E37: $55
    nop                                           ; $5E38: $00
    nop                                           ; $5E39: $00
    nop                                           ; $5E3A: $00
    nop                                           ; $5E3B: $00
    inc bc                                        ; $5E3C: $03
    inc bc                                        ; $5E3D: $03
    ret nz                                        ; $5E3E: $C0

    ret c                                         ; $5E3F: $D8

    add b                                         ; $5E40: $80
    nop                                           ; $5E41: $00
    ld bc, $5001                                  ; $5E42: $01 $01 $50
    nop                                           ; $5E45: $00
    jr jr_03D_5E48                                ; $5E46: $18 $00

jr_03D_5E48:
    nop                                           ; $5E48: $00
    nop                                           ; $5E49: $00
    nop                                           ; $5E4A: $00
    nop                                           ; $5E4B: $00
    nop                                           ; $5E4C: $00
    nop                                           ; $5E4D: $00
    nop                                           ; $5E4E: $00
    nop                                           ; $5E4F: $00
    add b                                         ; $5E50: $80
    dec a                                         ; $5E51: $3D
    ld h, b                                       ; $5E52: $60
    ld e, [hl]                                    ; $5E53: $5E
    nop                                           ; $5E54: $00
    nop                                           ; $5E55: $00
    ld h, b                                       ; $5E56: $60
    ld e, [hl]                                    ; $5E57: $5E
    nop                                           ; $5E58: $00
    nop                                           ; $5E59: $00
    nop                                           ; $5E5A: $00
    nop                                           ; $5E5B: $00
    inc bc                                        ; $5E5C: $03
    inc bc                                        ; $5E5D: $03
    ret nz                                        ; $5E5E: $C0

    ret c                                         ; $5E5F: $D8

    ld [hl], d                                    ; $5E60: $72
    ld e, [hl]                                    ; $5E61: $5E
    rst RST_38                                    ; $5E62: $FF
    rst RST_38                                    ; $5E63: $FF
    add e                                         ; $5E64: $83
    ld e, [hl]                                    ; $5E65: $5E
    rst RST_38                                    ; $5E66: $FF
    rst RST_38                                    ; $5E67: $FF
    sub h                                         ; $5E68: $94
    ld e, [hl]                                    ; $5E69: $5E
    rst RST_38                                    ; $5E6A: $FF
    rst RST_38                                    ; $5E6B: $FF
    add e                                         ; $5E6C: $83
    ld e, [hl]                                    ; $5E6D: $5E
    rst RST_38                                    ; $5E6E: $FF
    rst RST_38                                    ; $5E6F: $FF
    rst RST_38                                    ; $5E70: $FF
    rst RST_38                                    ; $5E71: $FF
    add b                                         ; $5E72: $80
    nop                                           ; $5E73: $00
    nop                                           ; $5E74: $00
    rst RST_38                                    ; $5E75: $FF
    rst RST_38                                    ; $5E76: $FF
    rst RST_38                                    ; $5E77: $FF
    ld a, h                                       ; $5E78: $7C
    ld e, [hl]                                    ; $5E79: $5E
    nop                                           ; $5E7A: $00
    nop                                           ; $5E7B: $00
    ld [bc], a                                    ; $5E7C: $02
    db $F4                                        ; $5E7D: $F4
    ld hl, sp+$1C                                 ; $5E7E: $F8 $1C
    db $F4                                        ; $5E80: $F4
    nop                                           ; $5E81: $00
    ld e, $80                                     ; $5E82: $1E $80
    nop                                           ; $5E84: $00
    nop                                           ; $5E85: $00
    rst RST_38                                    ; $5E86: $FF
    rst RST_38                                    ; $5E87: $FF
    rst RST_38                                    ; $5E88: $FF
    adc l                                         ; $5E89: $8D
    ld e, [hl]                                    ; $5E8A: $5E
    nop                                           ; $5E8B: $00
    nop                                           ; $5E8C: $00
    ld [bc], a                                    ; $5E8D: $02
    db $F4                                        ; $5E8E: $F4
    ld hl, sp+$3C                                 ; $5E8F: $F8 $3C
    db $F4                                        ; $5E91: $F4
    nop                                           ; $5E92: $00
    ld a, $80                                     ; $5E93: $3E $80
    nop                                           ; $5E95: $00
    nop                                           ; $5E96: $00
    rst RST_38                                    ; $5E97: $FF
    rst RST_38                                    ; $5E98: $FF
    rst RST_38                                    ; $5E99: $FF
    sbc [hl]                                      ; $5E9A: $9E
    ld e, [hl]                                    ; $5E9B: $5E
    nop                                           ; $5E9C: $00
    nop                                           ; $5E9D: $00
    ld bc, $FCF4                                  ; $5E9E: $01 $F4 $FC
    ld a, [hl-]                                   ; $5EA1: $3A
    add b                                         ; $5EA2: $80
    nop                                           ; $5EA3: $00
    db $10                                        ; $5EA4: $10
    db $10                                        ; $5EA5: $10
    ld d, b                                       ; $5EA6: $50
    nop                                           ; $5EA7: $00
    ld h, b                                       ; $5EA8: $60
    nop                                           ; $5EA9: $00
    nop                                           ; $5EAA: $00
    nop                                           ; $5EAB: $00
    nop                                           ; $5EAC: $00
    nop                                           ; $5EAD: $00
    nop                                           ; $5EAE: $00
    nop                                           ; $5EAF: $00
    nop                                           ; $5EB0: $00
    nop                                           ; $5EB1: $00
    add b                                         ; $5EB2: $80
    dec a                                         ; $5EB3: $3D
    jp nz, Jump_000_005E                          ; $5EB4: $C2 $5E $00

    nop                                           ; $5EB7: $00
    jp nz, Jump_000_005E                          ; $5EB8: $C2 $5E $00

    nop                                           ; $5EBB: $00
    nop                                           ; $5EBC: $00
    nop                                           ; $5EBD: $00
    rlca                                          ; $5EBE: $07
    rlca                                          ; $5EBF: $07
    ret nz                                        ; $5EC0: $C0

    ret c                                         ; $5EC1: $D8

    ld b, $5F                                     ; $5EC2: $06 $5F
    rst RST_38                                    ; $5EC4: $FF
    rst RST_38                                    ; $5EC5: $FF
    ld b, $5F                                     ; $5EC6: $06 $5F
    rst RST_38                                    ; $5EC8: $FF
    rst RST_38                                    ; $5EC9: $FF
    ld b, $5F                                     ; $5ECA: $06 $5F
    rst RST_38                                    ; $5ECC: $FF
    rst RST_38                                    ; $5ECD: $FF
    ld b, $5F                                     ; $5ECE: $06 $5F
    rst RST_38                                    ; $5ED0: $FF
    rst RST_38                                    ; $5ED1: $FF
    inc hl                                        ; $5ED2: $23
    ld e, a                                       ; $5ED3: $5F
    rst RST_38                                    ; $5ED4: $FF
    rst RST_38                                    ; $5ED5: $FF
    inc hl                                        ; $5ED6: $23
    ld e, a                                       ; $5ED7: $5F
    rst RST_38                                    ; $5ED8: $FF
    rst RST_38                                    ; $5ED9: $FF
    ld b, $5F                                     ; $5EDA: $06 $5F
    rst RST_38                                    ; $5EDC: $FF
    rst RST_38                                    ; $5EDD: $FF

jr_03D_5EDE:
    ld b, $5F                                     ; $5EDE: $06 $5F
    rst RST_38                                    ; $5EE0: $FF
    rst RST_38                                    ; $5EE1: $FF
    ld b, $5F                                     ; $5EE2: $06 $5F
    rst RST_38                                    ; $5EE4: $FF
    rst RST_38                                    ; $5EE5: $FF
    ld b, $5F                                     ; $5EE6: $06 $5F
    rst RST_38                                    ; $5EE8: $FF
    rst RST_38                                    ; $5EE9: $FF
    ld b, b                                       ; $5EEA: $40
    ld e, a                                       ; $5EEB: $5F
    rst RST_38                                    ; $5EEC: $FF
    rst RST_38                                    ; $5EED: $FF
    ld b, b                                       ; $5EEE: $40
    ld e, a                                       ; $5EEF: $5F
    rst RST_38                                    ; $5EF0: $FF
    rst RST_38                                    ; $5EF1: $FF
    rst RST_38                                    ; $5EF2: $FF
    rst RST_38                                    ; $5EF3: $FF
    ld e, l                                       ; $5EF4: $5D
    ld e, a                                       ; $5EF5: $5F
    rst RST_38                                    ; $5EF6: $FF
    rst RST_38                                    ; $5EF7: $FF
    ld a, d                                       ; $5EF8: $7A
    ld e, a                                       ; $5EF9: $5F
    rst RST_38                                    ; $5EFA: $FF
    rst RST_38                                    ; $5EFB: $FF
    sbc l                                         ; $5EFC: $9D
    ld e, a                                       ; $5EFD: $5F
    rst RST_38                                    ; $5EFE: $FF
    rst RST_38                                    ; $5EFF: $FF
    cp d                                          ; $5F00: $BA
    ld e, a                                       ; $5F01: $5F
    rst RST_38                                    ; $5F02: $FF
    rst RST_38                                    ; $5F03: $FF
    rst RST_38                                    ; $5F04: $FF
    rst RST_38                                    ; $5F05: $FF
    add b                                         ; $5F06: $80
    nop                                           ; $5F07: $00
    nop                                           ; $5F08: $00
    rst RST_38                                    ; $5F09: $FF
    rst RST_38                                    ; $5F0A: $FF
    rst RST_38                                    ; $5F0B: $FF
    db $10                                        ; $5F0C: $10
    ld e, a                                       ; $5F0D: $5F
    nop                                           ; $5F0E: $00
    nop                                           ; $5F0F: $00
    ld b, $E8                                     ; $5F10: $06 $E8
    db $F4                                        ; $5F12: $F4
    nop                                           ; $5F13: $00
    add sp, -$04                                  ; $5F14: $E8 $FC

jr_03D_5F16:
    ld [bc], a                                    ; $5F16: $02
    add sp, $04                                   ; $5F17: $E8 $04
    inc b                                         ; $5F19: $04
    ld hl, sp-$0C                                 ; $5F1A: $F8 $F4
    jr nz, jr_03D_5F16                            ; $5F1C: $20 $F8

    db $FC                                        ; $5F1E: $FC
    ld [hl+], a                                   ; $5F1F: $22
    ld hl, sp+$04                                 ; $5F20: $F8 $04
    inc h                                         ; $5F22: $24
    add b                                         ; $5F23: $80
    nop                                           ; $5F24: $00
    nop                                           ; $5F25: $00
    rst RST_38                                    ; $5F26: $FF
    rst RST_38                                    ; $5F27: $FF
    rst RST_38                                    ; $5F28: $FF
    dec l                                         ; $5F29: $2D
    ld e, a                                       ; $5F2A: $5F
    nop                                           ; $5F2B: $00
    nop                                           ; $5F2C: $00
    ld b, $E8                                     ; $5F2D: $06 $E8
    db $F4                                        ; $5F2F: $F4
    ld b, $E8                                     ; $5F30: $06 $E8
    db $FC                                        ; $5F32: $FC
    ld [$04E8], sp                                ; $5F33: $08 $E8 $04

jr_03D_5F36:
    ld a, [bc]                                    ; $5F36: $0A
    ld hl, sp-$0C                                 ; $5F37: $F8 $F4
    ld h, $F8                                     ; $5F39: $26 $F8
    db $FC                                        ; $5F3B: $FC
    jr z, jr_03D_5F36                             ; $5F3C: $28 $F8

    inc b                                         ; $5F3E: $04
    ld a, [hl+]                                   ; $5F3F: $2A
    add b                                         ; $5F40: $80
    nop                                           ; $5F41: $00
    nop                                           ; $5F42: $00
    rst RST_38                                    ; $5F43: $FF
    rst RST_38                                    ; $5F44: $FF
    rst RST_38                                    ; $5F45: $FF
    ld c, d                                       ; $5F46: $4A
    ld e, a                                       ; $5F47: $5F
    nop                                           ; $5F48: $00
    nop                                           ; $5F49: $00
    ld b, $E8                                     ; $5F4A: $06 $E8
    db $F4                                        ; $5F4C: $F4
    inc c                                         ; $5F4D: $0C
    add sp, -$04                                  ; $5F4E: $E8 $FC
    ld c, $E8                                     ; $5F50: $0E $E8
    inc b                                         ; $5F52: $04
    db $10                                        ; $5F53: $10
    ld hl, sp-$0C                                 ; $5F54: $F8 $F4
    inc l                                         ; $5F56: $2C
    ld hl, sp-$04                                 ; $5F57: $F8 $FC
    ld l, $F8                                     ; $5F59: $2E $F8
    inc b                                         ; $5F5B: $04
    jr nc, jr_03D_5EDE                            ; $5F5C: $30 $80

    nop                                           ; $5F5E: $00
    nop                                           ; $5F5F: $00
    rst RST_38                                    ; $5F60: $FF
    rst RST_38                                    ; $5F61: $FF
    rst RST_38                                    ; $5F62: $FF
    ld h, a                                       ; $5F63: $67
    ld e, a                                       ; $5F64: $5F
    nop                                           ; $5F65: $00
    nop                                           ; $5F66: $00
    ld b, $F0                                     ; $5F67: $06 $F0
    db $F4                                        ; $5F69: $F4
    nop                                           ; $5F6A: $00
    ldh a, [$FFFC]                                ; $5F6B: $F0 $FC
    ld [bc], a                                    ; $5F6D: $02
    ldh a, [rDIV]                                 ; $5F6E: $F0 $04
    inc b                                         ; $5F70: $04
    nop                                           ; $5F71: $00
    db $F4                                        ; $5F72: $F4
    jr nz, jr_03D_5F75                            ; $5F73: $20 $00

jr_03D_5F75:
    db $FC                                        ; $5F75: $FC
    ld [hl+], a                                   ; $5F76: $22
    nop                                           ; $5F77: $00
    inc b                                         ; $5F78: $04
    inc h                                         ; $5F79: $24
    add b                                         ; $5F7A: $80
    nop                                           ; $5F7B: $00
    nop                                           ; $5F7C: $00
    rst RST_38                                    ; $5F7D: $FF
    rst RST_38                                    ; $5F7E: $FF
    rst RST_38                                    ; $5F7F: $FF
    add h                                         ; $5F80: $84
    ld e, a                                       ; $5F81: $5F
    nop                                           ; $5F82: $00
    nop                                           ; $5F83: $00
    ld [$F0F0], sp                                ; $5F84: $08 $F0 $F0
    ld b, $F0                                     ; $5F87: $06 $F0
    ld hl, sp+$08                                 ; $5F89: $F8 $08
    ldh a, [rP1]                                  ; $5F8B: $F0 $00
    ld a, [bc]                                    ; $5F8D: $0A
    ldh a, [$FF08]                                ; $5F8E: $F0 $08
    inc c                                         ; $5F90: $0C
    nop                                           ; $5F91: $00
    ldh a, [rNR52]                                ; $5F92: $F0 $26
    nop                                           ; $5F94: $00
    ld hl, sp+$28                                 ; $5F95: $F8 $28
    nop                                           ; $5F97: $00
    nop                                           ; $5F98: $00
    ld a, [hl+]                                   ; $5F99: $2A
    nop                                           ; $5F9A: $00
    ld [$802C], sp                                ; $5F9B: $08 $2C $80
    nop                                           ; $5F9E: $00
    nop                                           ; $5F9F: $00
    rst RST_38                                    ; $5FA0: $FF
    rst RST_38                                    ; $5FA1: $FF
    rst RST_38                                    ; $5FA2: $FF
    and a                                         ; $5FA3: $A7
    ld e, a                                       ; $5FA4: $5F
    nop                                           ; $5FA5: $00
    nop                                           ; $5FA6: $00
    ld b, $F0                                     ; $5FA7: $06 $F0
    db $F4                                        ; $5FA9: $F4
    ld c, $F0                                     ; $5FAA: $0E $F0
    db $FC                                        ; $5FAC: $FC
    db $10                                        ; $5FAD: $10
    ldh a, [rDIV]                                 ; $5FAE: $F0 $04
    ld [de], a                                    ; $5FB0: $12
    nop                                           ; $5FB1: $00
    db $F4                                        ; $5FB2: $F4
    ld l, $00                                     ; $5FB3: $2E $00
    db $FC                                        ; $5FB5: $FC
    jr nc, jr_03D_5FB8                            ; $5FB6: $30 $00

jr_03D_5FB8:
    inc b                                         ; $5FB8: $04
    ld [hl-], a                                   ; $5FB9: $32
    add b                                         ; $5FBA: $80
    nop                                           ; $5FBB: $00
    nop                                           ; $5FBC: $00
    rst RST_38                                    ; $5FBD: $FF
    rst RST_38                                    ; $5FBE: $FF

jr_03D_5FBF:
    rst RST_38                                    ; $5FBF: $FF
    call nz, Call_000_005F                        ; $5FC0: $C4 $5F $00
    nop                                           ; $5FC3: $00
    ld [$F0F0], sp                                ; $5FC4: $08 $F0 $F0
    inc d                                         ; $5FC7: $14
    ldh a, [$FFF8]                                ; $5FC8: $F0 $F8
    ld d, $F0                                     ; $5FCA: $16 $F0
    nop                                           ; $5FCC: $00
    jr jr_03D_5FBF                                ; $5FCD: $18 $F0

    ld [$001A], sp                                ; $5FCF: $08 $1A $00
    ldh a, [$FF34]                                ; $5FD2: $F0 $34
    nop                                           ; $5FD4: $00
    ld hl, sp+$36                                 ; $5FD5: $F8 $36
    nop                                           ; $5FD7: $00
    nop                                           ; $5FD8: $00
    jr c, jr_03D_5FDB                             ; $5FD9: $38 $00

jr_03D_5FDB:
    ld [$803A], sp                                ; $5FDB: $08 $3A $80
    nop                                           ; $5FDE: $00
    ld bc, $5001                                  ; $5FDF: $01 $01 $50
    nop                                           ; $5FE2: $00
    jr jr_03D_5FE5                                ; $5FE3: $18 $00

jr_03D_5FE5:
    nop                                           ; $5FE5: $00
    nop                                           ; $5FE6: $00
    nop                                           ; $5FE7: $00
    nop                                           ; $5FE8: $00
    nop                                           ; $5FE9: $00
    nop                                           ; $5FEA: $00
    nop                                           ; $5FEB: $00
    nop                                           ; $5FEC: $00
    add b                                         ; $5FED: $80
    dec a                                         ; $5FEE: $3D
    db $FD                                        ; $5FEF: $FD
    ld e, a                                       ; $5FF0: $5F
    nop                                           ; $5FF1: $00
    nop                                           ; $5FF2: $00
    db $FD                                        ; $5FF3: $FD
    ld e, a                                       ; $5FF4: $5F
    nop                                           ; $5FF5: $00
    nop                                           ; $5FF6: $00
    nop                                           ; $5FF7: $00
    nop                                           ; $5FF8: $00
    nop                                           ; $5FF9: $00
    nop                                           ; $5FFA: $00
    ret nz                                        ; $5FFB: $C0

    ret c                                         ; $5FFC: $D8

    rrca                                          ; $5FFD: $0F
    ld h, b                                       ; $5FFE: $60
    rst RST_38                                    ; $5FFF: $FF
    rst RST_38                                    ; $6000: $FF
    jr nz, jr_03D_6063                            ; $6001: $20 $60

    rst RST_38                                    ; $6003: $FF
    rst RST_38                                    ; $6004: $FF
    ld sp, $FF60                                  ; $6005: $31 $60 $FF
    rst RST_38                                    ; $6008: $FF
    ld b, d                                       ; $6009: $42
    ld h, b                                       ; $600A: $60
    rst RST_38                                    ; $600B: $FF
    rst RST_38                                    ; $600C: $FF
    rst RST_38                                    ; $600D: $FF
    rst RST_38                                    ; $600E: $FF
    add b                                         ; $600F: $80
    nop                                           ; $6010: $00
    nop                                           ; $6011: $00
    rst RST_38                                    ; $6012: $FF
    rst RST_38                                    ; $6013: $FF
    rst RST_38                                    ; $6014: $FF
    add hl, de                                    ; $6015: $19
    ld h, b                                       ; $6016: $60
    nop                                           ; $6017: $00
    nop                                           ; $6018: $00
    ld [bc], a                                    ; $6019: $02
    db $F4                                        ; $601A: $F4
    ld hl, sp+$1C                                 ; $601B: $F8 $1C
    db $F4                                        ; $601D: $F4
    nop                                           ; $601E: $00
    ld e, $80                                     ; $601F: $1E $80
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    rst RST_38                                    ; $6023: $FF
    rst RST_38                                    ; $6024: $FF
    rst RST_38                                    ; $6025: $FF
    ld a, [hl+]                                   ; $6026: $2A
    ld h, b                                       ; $6027: $60
    nop                                           ; $6028: $00
    nop                                           ; $6029: $00
    ld [bc], a                                    ; $602A: $02
    db $F4                                        ; $602B: $F4
    ld hl, sp+$3C                                 ; $602C: $F8 $3C
    db $F4                                        ; $602E: $F4
    nop                                           ; $602F: $00
    ld a, $80                                     ; $6030: $3E $80
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    rst RST_38                                    ; $6034: $FF
    rst RST_38                                    ; $6035: $FF
    rst RST_38                                    ; $6036: $FF
    dec sp                                        ; $6037: $3B
    ld h, b                                       ; $6038: $60
    nop                                           ; $6039: $00
    nop                                           ; $603A: $00
    ld [bc], a                                    ; $603B: $02
    db $F4                                        ; $603C: $F4
    ld hl, sp+$18                                 ; $603D: $F8 $18
    db $F4                                        ; $603F: $F4
    nop                                           ; $6040: $00
    ld a, [de]                                    ; $6041: $1A
    add b                                         ; $6042: $80
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    rst RST_38                                    ; $6045: $FF
    rst RST_38                                    ; $6046: $FF
    rst RST_38                                    ; $6047: $FF
    ld c, h                                       ; $6048: $4C
    ld h, b                                       ; $6049: $60
    nop                                           ; $604A: $00
    nop                                           ; $604B: $00
    ld [bc], a                                    ; $604C: $02
    db $F4                                        ; $604D: $F4
    ld hl, sp+$38                                 ; $604E: $F8 $38
    db $F4                                        ; $6050: $F4
    nop                                           ; $6051: $00
    ld a, [hl-]                                   ; $6052: $3A
    add b                                         ; $6053: $80
    nop                                           ; $6054: $00

jr_03D_6055:
    db $10                                        ; $6055: $10
    db $10                                        ; $6056: $10
    ld d, b                                       ; $6057: $50
    nop                                           ; $6058: $00
    ld h, b                                       ; $6059: $60
    nop                                           ; $605A: $00
    nop                                           ; $605B: $00
    nop                                           ; $605C: $00
    nop                                           ; $605D: $00
    nop                                           ; $605E: $00
    nop                                           ; $605F: $00
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00

jr_03D_6063:
    add b                                         ; $6063: $80
    dec a                                         ; $6064: $3D
    ld [hl], e                                    ; $6065: $73
    ld h, b                                       ; $6066: $60
    nop                                           ; $6067: $00
    nop                                           ; $6068: $00
    ld [hl], e                                    ; $6069: $73
    ld h, b                                       ; $606A: $60
    nop                                           ; $606B: $00
    nop                                           ; $606C: $00
    nop                                           ; $606D: $00
    nop                                           ; $606E: $00
    rlca                                          ; $606F: $07
    rlca                                          ; $6070: $07
    ret nz                                        ; $6071: $C0

    ret c                                         ; $6072: $D8

    or a                                          ; $6073: $B7
    ld h, b                                       ; $6074: $60
    rst RST_38                                    ; $6075: $FF
    rst RST_38                                    ; $6076: $FF
    or a                                          ; $6077: $B7
    ld h, b                                       ; $6078: $60
    rst RST_38                                    ; $6079: $FF
    rst RST_38                                    ; $607A: $FF
    or a                                          ; $607B: $B7
    ld h, b                                       ; $607C: $60
    rst RST_38                                    ; $607D: $FF
    rst RST_38                                    ; $607E: $FF
    or a                                          ; $607F: $B7
    ld h, b                                       ; $6080: $60
    rst RST_38                                    ; $6081: $FF
    rst RST_38                                    ; $6082: $FF
    call nc, $FF60                                ; $6083: $D4 $60 $FF
    rst RST_38                                    ; $6086: $FF
    call nc, $FF60                                ; $6087: $D4 $60 $FF
    rst RST_38                                    ; $608A: $FF
    or a                                          ; $608B: $B7
    ld h, b                                       ; $608C: $60
    rst RST_38                                    ; $608D: $FF
    rst RST_38                                    ; $608E: $FF
    or a                                          ; $608F: $B7
    ld h, b                                       ; $6090: $60
    rst RST_38                                    ; $6091: $FF
    rst RST_38                                    ; $6092: $FF
    or a                                          ; $6093: $B7
    ld h, b                                       ; $6094: $60
    rst RST_38                                    ; $6095: $FF
    rst RST_38                                    ; $6096: $FF
    or a                                          ; $6097: $B7
    ld h, b                                       ; $6098: $60
    rst RST_38                                    ; $6099: $FF
    rst RST_38                                    ; $609A: $FF
    pop af                                        ; $609B: $F1
    ld h, b                                       ; $609C: $60
    rst RST_38                                    ; $609D: $FF
    rst RST_38                                    ; $609E: $FF
    pop af                                        ; $609F: $F1
    ld h, b                                       ; $60A0: $60
    rst RST_38                                    ; $60A1: $FF
    rst RST_38                                    ; $60A2: $FF
    rst RST_38                                    ; $60A3: $FF
    rst RST_38                                    ; $60A4: $FF
    ld c, $61                                     ; $60A5: $0E $61
    rst RST_38                                    ; $60A7: $FF
    rst RST_38                                    ; $60A8: $FF
    dec hl                                        ; $60A9: $2B
    ld h, c                                       ; $60AA: $61
    rst RST_38                                    ; $60AB: $FF
    rst RST_38                                    ; $60AC: $FF
    ld c, b                                       ; $60AD: $48
    ld h, c                                       ; $60AE: $61
    rst RST_38                                    ; $60AF: $FF
    rst RST_38                                    ; $60B0: $FF
    ld h, l                                       ; $60B1: $65
    ld h, c                                       ; $60B2: $61
    rst RST_38                                    ; $60B3: $FF
    rst RST_38                                    ; $60B4: $FF
    rst RST_38                                    ; $60B5: $FF
    rst RST_38                                    ; $60B6: $FF
    add b                                         ; $60B7: $80
    nop                                           ; $60B8: $00
    nop                                           ; $60B9: $00
    rst RST_38                                    ; $60BA: $FF
    rst RST_38                                    ; $60BB: $FF
    rst RST_38                                    ; $60BC: $FF

jr_03D_60BD:
    pop bc                                        ; $60BD: $C1
    ld h, b                                       ; $60BE: $60
    nop                                           ; $60BF: $00
    nop                                           ; $60C0: $00
    ld b, $E4                                     ; $60C1: $06 $E4
    db $FC                                        ; $60C3: $FC
    inc b                                         ; $60C4: $04
    db $F4                                        ; $60C5: $F4
    db $EC                                        ; $60C6: $EC
    jr nz, jr_03D_60BD                            ; $60C7: $20 $F4

    db $F4                                        ; $60C9: $F4
    ld [hl+], a                                   ; $60CA: $22
    db $F4                                        ; $60CB: $F4
    db $FC                                        ; $60CC: $FC
    inc h                                         ; $60CD: $24
    db $F4                                        ; $60CE: $F4
    inc b                                         ; $60CF: $04
    ld h, $F4                                     ; $60D0: $26 $F4
    inc c                                         ; $60D2: $0C
    jr z, jr_03D_6055                             ; $60D3: $28 $80

    nop                                           ; $60D5: $00
    nop                                           ; $60D6: $00
    rst RST_38                                    ; $60D7: $FF
    rst RST_38                                    ; $60D8: $FF
    rst RST_38                                    ; $60D9: $FF
    sbc $60                                       ; $60DA: $DE $60
    nop                                           ; $60DC: $00
    nop                                           ; $60DD: $00
    ld b, $E4                                     ; $60DE: $06 $E4
    ld hl, sp+$0C                                 ; $60E0: $F8 $0C
    db $E4                                        ; $60E2: $E4
    nop                                           ; $60E3: $00
    ld c, $F4                                     ; $60E4: $0E $F4

jr_03D_60E6:
    ldh a, [$FF2A]                                ; $60E6: $F0 $2A
    db $F4                                        ; $60E8: $F4
    ld hl, sp+$2C                                 ; $60E9: $F8 $2C
    db $F4                                        ; $60EB: $F4
    nop                                           ; $60EC: $00
    ld l, $F4                                     ; $60ED: $2E $F4
    ld [$8030], sp                                ; $60EF: $08 $30 $80
    nop                                           ; $60F2: $00
    nop                                           ; $60F3: $00
    rst RST_38                                    ; $60F4: $FF
    rst RST_38                                    ; $60F5: $FF
    rst RST_38                                    ; $60F6: $FF
    ei                                            ; $60F7: $FB
    ld h, b                                       ; $60F8: $60
    nop                                           ; $60F9: $00
    nop                                           ; $60FA: $00
    ld b, $E4                                     ; $60FB: $06 $E4
    ld hl, sp+$14                                 ; $60FD: $F8 $14
    db $E4                                        ; $60FF: $E4
    nop                                           ; $6100: $00
    ld d, $F4                                     ; $6101: $16 $F4

jr_03D_6103:
    ldh a, [$FF32]                                ; $6103: $F0 $32
    db $F4                                        ; $6105: $F4
    ld hl, sp+$34                                 ; $6106: $F8 $34
    db $F4                                        ; $6108: $F4
    nop                                           ; $6109: $00
    ld [hl], $F4                                  ; $610A: $36 $F4
    ld [$8038], sp                                ; $610C: $08 $38 $80
    nop                                           ; $610F: $00
    nop                                           ; $6110: $00
    rst RST_38                                    ; $6111: $FF
    rst RST_38                                    ; $6112: $FF
    rst RST_38                                    ; $6113: $FF
    jr jr_03D_6177                                ; $6114: $18 $61

    nop                                           ; $6116: $00
    nop                                           ; $6117: $00

jr_03D_6118:
    ld b, $E8                                     ; $6118: $06 $E8
    db $FC                                        ; $611A: $FC
    inc b                                         ; $611B: $04
    ld hl, sp-$14                                 ; $611C: $F8 $EC
    jr nz, jr_03D_6118                            ; $611E: $20 $F8

    db $F4                                        ; $6120: $F4
    ld [hl+], a                                   ; $6121: $22
    ld hl, sp-$04                                 ; $6122: $F8 $FC
    inc h                                         ; $6124: $24
    ld hl, sp+$04                                 ; $6125: $F8 $04
    ld h, $F8                                     ; $6127: $26 $F8
    inc c                                         ; $6129: $0C
    nop                                           ; $612A: $00
    add b                                         ; $612B: $80
    nop                                           ; $612C: $00
    nop                                           ; $612D: $00
    rst RST_38                                    ; $612E: $FF
    rst RST_38                                    ; $612F: $FF
    rst RST_38                                    ; $6130: $FF
    dec [hl]                                      ; $6131: $35
    ld h, c                                       ; $6132: $61
    nop                                           ; $6133: $00
    nop                                           ; $6134: $00
    ld b, $EC                                     ; $6135: $06 $EC
    ld hl, sp+$08                                 ; $6137: $F8 $08
    db $EC                                        ; $6139: $EC
    nop                                           ; $613A: $00
    ld a, [bc]                                    ; $613B: $0A
    db $FC                                        ; $613C: $FC
    ld hl, sp+$28                                 ; $613D: $F8 $28
    db $FC                                        ; $613F: $FC
    nop                                           ; $6140: $00
    ld a, [hl+]                                   ; $6141: $2A
    db $FC                                        ; $6142: $FC
    ld [$0C2C], sp                                ; $6143: $08 $2C $0C
    ld hl, sp+$2E                                 ; $6146: $F8 $2E
    add b                                         ; $6148: $80
    nop                                           ; $6149: $00
    nop                                           ; $614A: $00
    rst RST_38                                    ; $614B: $FF
    rst RST_38                                    ; $614C: $FF
    rst RST_38                                    ; $614D: $FF
    ld d, d                                       ; $614E: $52
    ld h, c                                       ; $614F: $61
    nop                                           ; $6150: $00
    nop                                           ; $6151: $00
    ld b, $08                                     ; $6152: $06 $08
    db $FC                                        ; $6154: $FC
    inc [hl]                                      ; $6155: $34
    ld hl, sp-$14                                 ; $6156: $F8 $EC
    db $10                                        ; $6158: $10
    ld hl, sp-$0C                                 ; $6159: $F8 $F4
    ld [de], a                                    ; $615B: $12
    ld hl, sp-$04                                 ; $615C: $F8 $FC
    inc d                                         ; $615E: $14
    ld hl, sp+$04                                 ; $615F: $F8 $04
    ld d, $F8                                     ; $6161: $16 $F8
    inc c                                         ; $6163: $0C
    jr nc, jr_03D_60E6                            ; $6164: $30 $80

    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    rst RST_38                                    ; $6168: $FF
    rst RST_38                                    ; $6169: $FF
    rst RST_38                                    ; $616A: $FF
    ld l, a                                       ; $616B: $6F
    ld h, c                                       ; $616C: $61
    nop                                           ; $616D: $00
    nop                                           ; $616E: $00
    ld b, $EC                                     ; $616F: $06 $EC
    ld hl, sp+$1C                                 ; $6171: $F8 $1C
    db $EC                                        ; $6173: $EC
    nop                                           ; $6174: $00
    ld e, $FC                                     ; $6175: $1E $FC

jr_03D_6177:
    ldh a, [$FF3A]                                ; $6177: $F0 $3A
    db $FC                                        ; $6179: $FC
    ld hl, sp+$3C                                 ; $617A: $F8 $3C
    db $FC                                        ; $617C: $FC
    nop                                           ; $617D: $00
    ld a, $0C                                     ; $617E: $3E $0C
    nop                                           ; $6180: $00
    jr c, jr_03D_6103                             ; $6181: $38 $80

    nop                                           ; $6183: $00
    ld bc, $5001                                  ; $6184: $01 $01 $50
    nop                                           ; $6187: $00
    jr jr_03D_618A                                ; $6188: $18 $00

jr_03D_618A:
    nop                                           ; $618A: $00
    nop                                           ; $618B: $00
    nop                                           ; $618C: $00
    nop                                           ; $618D: $00
    nop                                           ; $618E: $00
    nop                                           ; $618F: $00
    nop                                           ; $6190: $00
    nop                                           ; $6191: $00
    add b                                         ; $6192: $80
    dec a                                         ; $6193: $3D
    and d                                         ; $6194: $A2
    ld h, c                                       ; $6195: $61
    nop                                           ; $6196: $00
    nop                                           ; $6197: $00
    and d                                         ; $6198: $A2
    ld h, c                                       ; $6199: $61
    nop                                           ; $619A: $00
    nop                                           ; $619B: $00
    nop                                           ; $619C: $00
    nop                                           ; $619D: $00
    nop                                           ; $619E: $00
    nop                                           ; $619F: $00
    ret nz                                        ; $61A0: $C0

    ret c                                         ; $61A1: $D8

    or b                                          ; $61A2: $B0
    ld h, c                                       ; $61A3: $61
    rst RST_38                                    ; $61A4: $FF
    rst RST_38                                    ; $61A5: $FF
    pop bc                                        ; $61A6: $C1
    ld h, c                                       ; $61A7: $61
    rst RST_38                                    ; $61A8: $FF
    rst RST_38                                    ; $61A9: $FF
    jp nc, $FF61                                  ; $61AA: $D2 $61 $FF

    rst RST_38                                    ; $61AD: $FF
    rst RST_38                                    ; $61AE: $FF
    rst RST_38                                    ; $61AF: $FF
    add b                                         ; $61B0: $80
    nop                                           ; $61B1: $00
    nop                                           ; $61B2: $00
    rst RST_38                                    ; $61B3: $FF
    rst RST_38                                    ; $61B4: $FF
    rst RST_38                                    ; $61B5: $FF
    cp d                                          ; $61B6: $BA
    ld h, c                                       ; $61B7: $61
    nop                                           ; $61B8: $00
    nop                                           ; $61B9: $00
    ld [bc], a                                    ; $61BA: $02
    db $F4                                        ; $61BB: $F4
    ld hl, sp+$1C                                 ; $61BC: $F8 $1C
    db $F4                                        ; $61BE: $F4
    nop                                           ; $61BF: $00
    ld e, $80                                     ; $61C0: $1E $80
    nop                                           ; $61C2: $00
    nop                                           ; $61C3: $00
    rst RST_38                                    ; $61C4: $FF
    rst RST_38                                    ; $61C5: $FF
    rst RST_38                                    ; $61C6: $FF
    bit 4, c                                      ; $61C7: $CB $61
    nop                                           ; $61C9: $00
    nop                                           ; $61CA: $00
    ld [bc], a                                    ; $61CB: $02
    db $F4                                        ; $61CC: $F4
    ld hl, sp+$3C                                 ; $61CD: $F8 $3C
    db $F4                                        ; $61CF: $F4
    nop                                           ; $61D0: $00
    ld a, $80                                     ; $61D1: $3E $80
    nop                                           ; $61D3: $00
    nop                                           ; $61D4: $00
    rst RST_38                                    ; $61D5: $FF
    rst RST_38                                    ; $61D6: $FF
    rst RST_38                                    ; $61D7: $FF
    call c, Call_000_0061                         ; $61D8: $DC $61 $00
    nop                                           ; $61DB: $00
    ld [bc], a                                    ; $61DC: $02
    db $F4                                        ; $61DD: $F4
    ld hl, sp+$18                                 ; $61DE: $F8 $18
    db $F4                                        ; $61E0: $F4
    nop                                           ; $61E1: $00
    ld a, [de]                                    ; $61E2: $1A
    add b                                         ; $61E3: $80
    nop                                           ; $61E4: $00
    db $10                                        ; $61E5: $10
    db $10                                        ; $61E6: $10
    ld d, b                                       ; $61E7: $50
    nop                                           ; $61E8: $00
    ld h, b                                       ; $61E9: $60
    nop                                           ; $61EA: $00
    nop                                           ; $61EB: $00
    nop                                           ; $61EC: $00
    nop                                           ; $61ED: $00
    nop                                           ; $61EE: $00
    nop                                           ; $61EF: $00
    nop                                           ; $61F0: $00
    nop                                           ; $61F1: $00
    nop                                           ; $61F2: $00
    add b                                         ; $61F3: $80
    dec a                                         ; $61F4: $3D
    rst RST_00                                    ; $61F5: $C7
    ld d, l                                       ; $61F6: $55
    nop                                           ; $61F7: $00
    nop                                           ; $61F8: $00
    rst RST_00                                    ; $61F9: $C7
    ld d, l                                       ; $61FA: $55
    nop                                           ; $61FB: $00
    nop                                           ; $61FC: $00
    nop                                           ; $61FD: $00
    nop                                           ; $61FE: $00
    inc bc                                        ; $61FF: $03
    inc bc                                        ; $6200: $03
    ret nz                                        ; $6201: $C0

    ret c                                         ; $6202: $D8

    add b                                         ; $6203: $80
    nop                                           ; $6204: $00
    ld bc, $5001                                  ; $6205: $01 $01 $50
    nop                                           ; $6208: $00
    jr jr_03D_620B                                ; $6209: $18 $00

jr_03D_620B:
    nop                                           ; $620B: $00
    nop                                           ; $620C: $00
    nop                                           ; $620D: $00
    nop                                           ; $620E: $00
    nop                                           ; $620F: $00
    nop                                           ; $6210: $00
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    add b                                         ; $6213: $80
    dec a                                         ; $6214: $3D
    inc hl                                        ; $6215: $23
    ld h, d                                       ; $6216: $62
    nop                                           ; $6217: $00
    nop                                           ; $6218: $00
    inc hl                                        ; $6219: $23
    ld h, d                                       ; $621A: $62
    nop                                           ; $621B: $00
    nop                                           ; $621C: $00
    nop                                           ; $621D: $00
    nop                                           ; $621E: $00
    rlca                                          ; $621F: $07
    rlca                                          ; $6220: $07
    ret nz                                        ; $6221: $C0

    ret c                                         ; $6222: $D8

    dec l                                         ; $6223: $2D
    ld h, d                                       ; $6224: $62
    rst RST_38                                    ; $6225: $FF
    rst RST_38                                    ; $6226: $FF
    ld a, $62                                     ; $6227: $3E $62
    rst RST_38                                    ; $6229: $FF
    rst RST_38                                    ; $622A: $FF
    rst RST_38                                    ; $622B: $FF
    rst RST_38                                    ; $622C: $FF
    add b                                         ; $622D: $80
    nop                                           ; $622E: $00
    nop                                           ; $622F: $00
    rst RST_38                                    ; $6230: $FF
    rst RST_38                                    ; $6231: $FF
    rst RST_38                                    ; $6232: $FF
    scf                                           ; $6233: $37
    ld h, d                                       ; $6234: $62
    nop                                           ; $6235: $00
    nop                                           ; $6236: $00
    ld [bc], a                                    ; $6237: $02
    db $F4                                        ; $6238: $F4
    ld hl, sp+$1C                                 ; $6239: $F8 $1C
    db $F4                                        ; $623B: $F4
    nop                                           ; $623C: $00
    ld e, $80                                     ; $623D: $1E $80
    nop                                           ; $623F: $00
    nop                                           ; $6240: $00
    rst RST_38                                    ; $6241: $FF
    rst RST_38                                    ; $6242: $FF
    rst RST_38                                    ; $6243: $FF
    ld c, b                                       ; $6244: $48
    ld h, d                                       ; $6245: $62
    nop                                           ; $6246: $00
    nop                                           ; $6247: $00
    ld [bc], a                                    ; $6248: $02
    db $F4                                        ; $6249: $F4
    ld hl, sp+$3C                                 ; $624A: $F8 $3C
    db $F4                                        ; $624C: $F4
    nop                                           ; $624D: $00
    ld a, $80                                     ; $624E: $3E $80
    nop                                           ; $6250: $00
    db $10                                        ; $6251: $10
    db $10                                        ; $6252: $10
    ld d, b                                       ; $6253: $50
    nop                                           ; $6254: $00
    ld h, b                                       ; $6255: $60
    nop                                           ; $6256: $00
    nop                                           ; $6257: $00
    nop                                           ; $6258: $00
    nop                                           ; $6259: $00
    nop                                           ; $625A: $00
    nop                                           ; $625B: $00
    nop                                           ; $625C: $00
    nop                                           ; $625D: $00
    nop                                           ; $625E: $00
    add b                                         ; $625F: $80
    dec a                                         ; $6260: $3D
    ld l, a                                       ; $6261: $6F
    ld h, d                                       ; $6262: $62
    nop                                           ; $6263: $00
    nop                                           ; $6264: $00
    ld l, a                                       ; $6265: $6F
    ld h, d                                       ; $6266: $62
    nop                                           ; $6267: $00
    nop                                           ; $6268: $00
    nop                                           ; $6269: $00
    nop                                           ; $626A: $00
    nop                                           ; $626B: $00
    nop                                           ; $626C: $00
    ret nz                                        ; $626D: $C0

    ret c                                         ; $626E: $D8

    db $E3                                        ; $626F: $E3
    ld h, d                                       ; $6270: $62
    rst RST_38                                    ; $6271: $FF
    rst RST_38                                    ; $6272: $FF
    ld a, [$FF62]                                 ; $6273: $FA $62 $FF
    rst RST_38                                    ; $6276: $FF
    ld de, $FF63                                  ; $6277: $11 $63 $FF
    rst RST_38                                    ; $627A: $FF
    ld a, [$FF62]                                 ; $627B: $FA $62 $FF
    rst RST_38                                    ; $627E: $FF
    rst RST_38                                    ; $627F: $FF
    rst RST_38                                    ; $6280: $FF
    jr z, jr_03D_62E6                             ; $6281: $28 $63

    rst RST_38                                    ; $6283: $FF
    rst RST_38                                    ; $6284: $FF
    jr z, jr_03D_62EA                             ; $6285: $28 $63

    rst RST_38                                    ; $6287: $FF
    rst RST_38                                    ; $6288: $FF
    jr z, jr_03D_62EE                             ; $6289: $28 $63

    rst RST_38                                    ; $628B: $FF
    rst RST_38                                    ; $628C: $FF
    jr z, jr_03D_62F2                             ; $628D: $28 $63

    rst RST_38                                    ; $628F: $FF
    rst RST_38                                    ; $6290: $FF
    jr z, jr_03D_62F6                             ; $6291: $28 $63

    rst RST_38                                    ; $6293: $FF
    rst RST_38                                    ; $6294: $FF
    jr z, @+$65                                   ; $6295: $28 $63

    rst RST_38                                    ; $6297: $FF
    rst RST_38                                    ; $6298: $FF
    ccf                                           ; $6299: $3F
    ld h, e                                       ; $629A: $63
    rst RST_38                                    ; $629B: $FF
    rst RST_38                                    ; $629C: $FF
    ccf                                           ; $629D: $3F
    ld h, e                                       ; $629E: $63
    rst RST_38                                    ; $629F: $FF
    rst RST_38                                    ; $62A0: $FF
    ccf                                           ; $62A1: $3F
    ld h, e                                       ; $62A2: $63
    rst RST_38                                    ; $62A3: $FF
    rst RST_38                                    ; $62A4: $FF
    ccf                                           ; $62A5: $3F
    ld h, e                                       ; $62A6: $63
    rst RST_38                                    ; $62A7: $FF
    rst RST_38                                    ; $62A8: $FF
    ccf                                           ; $62A9: $3F
    ld h, e                                       ; $62AA: $63
    rst RST_38                                    ; $62AB: $FF
    rst RST_38                                    ; $62AC: $FF
    ccf                                           ; $62AD: $3F
    ld h, e                                       ; $62AE: $63
    rst RST_38                                    ; $62AF: $FF
    rst RST_38                                    ; $62B0: $FF
    ld d, [hl]                                    ; $62B1: $56
    ld h, e                                       ; $62B2: $63
    rst RST_38                                    ; $62B3: $FF
    rst RST_38                                    ; $62B4: $FF
    ld d, [hl]                                    ; $62B5: $56
    ld h, e                                       ; $62B6: $63
    rst RST_38                                    ; $62B7: $FF
    rst RST_38                                    ; $62B8: $FF
    ld d, [hl]                                    ; $62B9: $56
    ld h, e                                       ; $62BA: $63
    rst RST_38                                    ; $62BB: $FF
    rst RST_38                                    ; $62BC: $FF
    ld d, [hl]                                    ; $62BD: $56
    ld h, e                                       ; $62BE: $63
    rst RST_38                                    ; $62BF: $FF
    rst RST_38                                    ; $62C0: $FF
    ld d, [hl]                                    ; $62C1: $56
    ld h, e                                       ; $62C2: $63
    rst RST_38                                    ; $62C3: $FF
    rst RST_38                                    ; $62C4: $FF
    ld d, [hl]                                    ; $62C5: $56
    ld h, e                                       ; $62C6: $63
    rst RST_38                                    ; $62C7: $FF
    rst RST_38                                    ; $62C8: $FF
    ld l, l                                       ; $62C9: $6D
    ld h, e                                       ; $62CA: $63
    rst RST_38                                    ; $62CB: $FF
    rst RST_38                                    ; $62CC: $FF
    ld l, l                                       ; $62CD: $6D
    ld h, e                                       ; $62CE: $63
    rst RST_38                                    ; $62CF: $FF
    rst RST_38                                    ; $62D0: $FF
    ld l, l                                       ; $62D1: $6D
    ld h, e                                       ; $62D2: $63
    rst RST_38                                    ; $62D3: $FF
    rst RST_38                                    ; $62D4: $FF
    ld l, l                                       ; $62D5: $6D
    ld h, e                                       ; $62D6: $63
    rst RST_38                                    ; $62D7: $FF
    rst RST_38                                    ; $62D8: $FF
    ld l, l                                       ; $62D9: $6D
    ld h, e                                       ; $62DA: $63
    rst RST_38                                    ; $62DB: $FF
    rst RST_38                                    ; $62DC: $FF
    ld l, l                                       ; $62DD: $6D
    ld h, e                                       ; $62DE: $63
    rst RST_38                                    ; $62DF: $FF
    rst RST_38                                    ; $62E0: $FF
    rst RST_38                                    ; $62E1: $FF
    rst RST_38                                    ; $62E2: $FF
    add b                                         ; $62E3: $80
    nop                                           ; $62E4: $00
    nop                                           ; $62E5: $00

jr_03D_62E6:
    rst RST_38                                    ; $62E6: $FF
    rst RST_38                                    ; $62E7: $FF
    rst RST_38                                    ; $62E8: $FF
    db $ED                                        ; $62E9: $ED

jr_03D_62EA:
    ld h, d                                       ; $62EA: $62
    nop                                           ; $62EB: $00
    nop                                           ; $62EC: $00
    inc b                                         ; $62ED: $04

jr_03D_62EE:
    db $F4                                        ; $62EE: $F4
    ldh a, [rP1]                                  ; $62EF: $F0 $00
    db $F4                                        ; $62F1: $F4

jr_03D_62F2:
    ld hl, sp+$02                                 ; $62F2: $F8 $02
    db $F4                                        ; $62F4: $F4
    nop                                           ; $62F5: $00

jr_03D_62F6:
    inc b                                         ; $62F6: $04
    db $F4                                        ; $62F7: $F4
    ld [$8006], sp                                ; $62F8: $08 $06 $80
    nop                                           ; $62FB: $00
    nop                                           ; $62FC: $00
    rst RST_38                                    ; $62FD: $FF
    rst RST_38                                    ; $62FE: $FF
    rst RST_38                                    ; $62FF: $FF
    inc b                                         ; $6300: $04
    ld h, e                                       ; $6301: $63
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    inc b                                         ; $6304: $04
    db $F4                                        ; $6305: $F4
    ldh a, [rNR41]                                ; $6306: $F0 $20
    db $F4                                        ; $6308: $F4
    ld hl, sp+$22                                 ; $6309: $F8 $22
    db $F4                                        ; $630B: $F4
    nop                                           ; $630C: $00
    inc h                                         ; $630D: $24
    db $F4                                        ; $630E: $F4
    ld [$8026], sp                                ; $630F: $08 $26 $80
    nop                                           ; $6312: $00
    nop                                           ; $6313: $00
    rst RST_38                                    ; $6314: $FF
    rst RST_38                                    ; $6315: $FF
    rst RST_38                                    ; $6316: $FF
    dec de                                        ; $6317: $1B
    ld h, e                                       ; $6318: $63
    nop                                           ; $6319: $00
    nop                                           ; $631A: $00
    inc b                                         ; $631B: $04
    db $F4                                        ; $631C: $F4
    ldh a, [$FF08]                                ; $631D: $F0 $08
    db $F4                                        ; $631F: $F4
    ld hl, sp+$0A                                 ; $6320: $F8 $0A
    db $F4                                        ; $6322: $F4
    nop                                           ; $6323: $00
    inc c                                         ; $6324: $0C
    db $F4                                        ; $6325: $F4
    ld [$800E], sp                                ; $6326: $08 $0E $80
    nop                                           ; $6329: $00
    nop                                           ; $632A: $00
    rst RST_38                                    ; $632B: $FF
    rst RST_38                                    ; $632C: $FF
    rst RST_38                                    ; $632D: $FF
    ld [hl-], a                                   ; $632E: $32
    ld h, e                                       ; $632F: $63
    nop                                           ; $6330: $00
    nop                                           ; $6331: $00
    inc b                                         ; $6332: $04
    db $F4                                        ; $6333: $F4
    ldh a, [rP1]                                  ; $6334: $F0 $00
    db $F4                                        ; $6336: $F4
    ld hl, sp+$02                                 ; $6337: $F8 $02
    db $F4                                        ; $6339: $F4
    nop                                           ; $633A: $00
    inc b                                         ; $633B: $04
    db $F4                                        ; $633C: $F4
    ld [$8006], sp                                ; $633D: $08 $06 $80
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    rst RST_38                                    ; $6342: $FF
    rst RST_38                                    ; $6343: $FF
    rst RST_38                                    ; $6344: $FF
    ld c, c                                       ; $6345: $49
    ld h, e                                       ; $6346: $63
    nop                                           ; $6347: $00
    nop                                           ; $6348: $00
    inc b                                         ; $6349: $04
    db $EC                                        ; $634A: $EC
    ld hl, sp+$08                                 ; $634B: $F8 $08
    db $EC                                        ; $634D: $EC
    nop                                           ; $634E: $00
    ld a, [bc]                                    ; $634F: $0A
    db $FC                                        ; $6350: $FC
    ld hl, sp+$0C                                 ; $6351: $F8 $0C
    db $FC                                        ; $6353: $FC
    nop                                           ; $6354: $00
    ld c, $80                                     ; $6355: $0E $80
    nop                                           ; $6357: $00
    nop                                           ; $6358: $00
    rst RST_38                                    ; $6359: $FF
    rst RST_38                                    ; $635A: $FF
    rst RST_38                                    ; $635B: $FF
    ld h, b                                       ; $635C: $60
    ld h, e                                       ; $635D: $63
    nop                                           ; $635E: $00
    nop                                           ; $635F: $00
    inc b                                         ; $6360: $04
    db $F4                                        ; $6361: $F4
    ldh a, [rNR10]                                ; $6362: $F0 $10
    db $F4                                        ; $6364: $F4
    ld hl, sp+$12                                 ; $6365: $F8 $12
    db $F4                                        ; $6367: $F4
    nop                                           ; $6368: $00
    inc d                                         ; $6369: $14
    db $F4                                        ; $636A: $F4
    ld [$8016], sp                                ; $636B: $08 $16 $80
    nop                                           ; $636E: $00
    nop                                           ; $636F: $00
    rst RST_38                                    ; $6370: $FF
    rst RST_38                                    ; $6371: $FF
    rst RST_38                                    ; $6372: $FF
    ld [hl], a                                    ; $6373: $77
    ld h, e                                       ; $6374: $63
    nop                                           ; $6375: $00
    nop                                           ; $6376: $00
    inc b                                         ; $6377: $04
    db $EC                                        ; $6378: $EC
    ld hl, sp+$18                                 ; $6379: $F8 $18
    db $EC                                        ; $637B: $EC
    nop                                           ; $637C: $00
    ld a, [de]                                    ; $637D: $1A
    db $FC                                        ; $637E: $FC
    ld hl, sp+$1C                                 ; $637F: $F8 $1C
    db $FC                                        ; $6381: $FC
    nop                                           ; $6382: $00
    ld e, $80                                     ; $6383: $1E $80
    nop                                           ; $6385: $00
    ld bc, $5001                                  ; $6386: $01 $01 $50
    nop                                           ; $6389: $00
    jr jr_03D_638C                                ; $638A: $18 $00

jr_03D_638C:
    nop                                           ; $638C: $00
    nop                                           ; $638D: $00
    nop                                           ; $638E: $00
    nop                                           ; $638F: $00
    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    nop                                           ; $6393: $00
    add b                                         ; $6394: $80
    dec a                                         ; $6395: $3D
    and h                                         ; $6396: $A4
    ld h, e                                       ; $6397: $63
    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    and h                                         ; $639A: $A4
    ld h, e                                       ; $639B: $63
    nop                                           ; $639C: $00
    nop                                           ; $639D: $00
    nop                                           ; $639E: $00
    nop                                           ; $639F: $00
    nop                                           ; $63A0: $00
    nop                                           ; $63A1: $00
    ret nz                                        ; $63A2: $C0

    ret c                                         ; $63A3: $D8

    or [hl]                                       ; $63A4: $B6
    ld h, e                                       ; $63A5: $63
    rst RST_38                                    ; $63A6: $FF
    rst RST_38                                    ; $63A7: $FF
    rst RST_00                                    ; $63A8: $C7
    ld h, e                                       ; $63A9: $63
    rst RST_38                                    ; $63AA: $FF
    rst RST_38                                    ; $63AB: $FF
    ret c                                         ; $63AC: $D8

    ld h, e                                       ; $63AD: $63
    rst RST_38                                    ; $63AE: $FF
    rst RST_38                                    ; $63AF: $FF
    jp hl                                         ; $63B0: $E9


    ld h, e                                       ; $63B1: $63
    rst RST_38                                    ; $63B2: $FF
    rst RST_38                                    ; $63B3: $FF
    rst RST_38                                    ; $63B4: $FF
    rst RST_38                                    ; $63B5: $FF
    add b                                         ; $63B6: $80
    nop                                           ; $63B7: $00
    nop                                           ; $63B8: $00
    rst RST_38                                    ; $63B9: $FF
    rst RST_38                                    ; $63BA: $FF
    rst RST_38                                    ; $63BB: $FF
    ret nz                                        ; $63BC: $C0

    ld h, e                                       ; $63BD: $63
    nop                                           ; $63BE: $00
    nop                                           ; $63BF: $00
    ld [bc], a                                    ; $63C0: $02
    db $F4                                        ; $63C1: $F4
    ld hl, sp+$18                                 ; $63C2: $F8 $18
    db $F4                                        ; $63C4: $F4
    nop                                           ; $63C5: $00
    ld a, [de]                                    ; $63C6: $1A
    add b                                         ; $63C7: $80
    nop                                           ; $63C8: $00
    nop                                           ; $63C9: $00
    rst RST_38                                    ; $63CA: $FF
    rst RST_38                                    ; $63CB: $FF
    rst RST_38                                    ; $63CC: $FF
    pop de                                        ; $63CD: $D1
    ld h, e                                       ; $63CE: $63
    nop                                           ; $63CF: $00
    nop                                           ; $63D0: $00
    ld [bc], a                                    ; $63D1: $02
    db $F4                                        ; $63D2: $F4
    ld hl, sp+$1C                                 ; $63D3: $F8 $1C
    db $F4                                        ; $63D5: $F4
    nop                                           ; $63D6: $00
    ld e, $80                                     ; $63D7: $1E $80
    nop                                           ; $63D9: $00
    nop                                           ; $63DA: $00
    rst RST_38                                    ; $63DB: $FF
    rst RST_38                                    ; $63DC: $FF
    rst RST_38                                    ; $63DD: $FF
    ldh [c], a                                    ; $63DE: $E2
    ld h, e                                       ; $63DF: $63
    nop                                           ; $63E0: $00
    nop                                           ; $63E1: $00
    ld [bc], a                                    ; $63E2: $02
    db $F4                                        ; $63E3: $F4
    ld hl, sp+$38                                 ; $63E4: $F8 $38
    db $F4                                        ; $63E6: $F4
    nop                                           ; $63E7: $00
    ld a, [hl-]                                   ; $63E8: $3A
    add b                                         ; $63E9: $80
    nop                                           ; $63EA: $00
    nop                                           ; $63EB: $00
    rst RST_38                                    ; $63EC: $FF
    rst RST_38                                    ; $63ED: $FF
    rst RST_38                                    ; $63EE: $FF
    di                                            ; $63EF: $F3
    ld h, e                                       ; $63F0: $63
    nop                                           ; $63F1: $00
    nop                                           ; $63F2: $00
    ld [bc], a                                    ; $63F3: $02
    db $F4                                        ; $63F4: $F4
    ld hl, sp+$3C                                 ; $63F5: $F8 $3C
    db $F4                                        ; $63F7: $F4
    nop                                           ; $63F8: $00
    ld a, $80                                     ; $63F9: $3E $80
    nop                                           ; $63FB: $00
    ld [bc], a                                    ; $63FC: $02
    ld [bc], a                                    ; $63FD: $02
    ld d, b                                       ; $63FE: $50
    nop                                           ; $63FF: $00
    ld h, b                                       ; $6400: $60
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    add b                                         ; $6408: $80
    nop                                           ; $6409: $00
    add b                                         ; $640A: $80
    dec a                                         ; $640B: $3D
    ld a, [de]                                    ; $640C: $1A
    ld h, h                                       ; $640D: $64
    nop                                           ; $640E: $00
    nop                                           ; $640F: $00
    ld a, [de]                                    ; $6410: $1A
    ld h, h                                       ; $6411: $64
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    nop                                           ; $6414: $00
    nop                                           ; $6415: $00
    inc bc                                        ; $6416: $03
    inc bc                                        ; $6417: $03
    ret nz                                        ; $6418: $C0

    ret c                                         ; $6419: $D8

    ld [hl], d                                    ; $641A: $72
    ld h, h                                       ; $641B: $64
    rst RST_38                                    ; $641C: $FF
    rst RST_38                                    ; $641D: $FF
    add e                                         ; $641E: $83
    ld h, h                                       ; $641F: $64
    rst RST_38                                    ; $6420: $FF
    rst RST_38                                    ; $6421: $FF
    rst RST_38                                    ; $6422: $FF
    rst RST_38                                    ; $6423: $FF
    sub h                                         ; $6424: $94
    ld h, h                                       ; $6425: $64
    rst RST_38                                    ; $6426: $FF
    rst RST_38                                    ; $6427: $FF
    and l                                         ; $6428: $A5
    ld h, h                                       ; $6429: $64
    rst RST_38                                    ; $642A: $FF
    rst RST_38                                    ; $642B: $FF
    rst RST_38                                    ; $642C: $FF
    rst RST_38                                    ; $642D: $FF
    or [hl]                                       ; $642E: $B6
    ld h, h                                       ; $642F: $64
    rst RST_38                                    ; $6430: $FF
    rst RST_38                                    ; $6431: $FF
    rst RST_00                                    ; $6432: $C7
    ld h, h                                       ; $6433: $64
    rst RST_38                                    ; $6434: $FF
    rst RST_38                                    ; $6435: $FF
    rst RST_38                                    ; $6436: $FF
    rst RST_38                                    ; $6437: $FF
    ret c                                         ; $6438: $D8

    ld h, h                                       ; $6439: $64
    rst RST_38                                    ; $643A: $FF
    rst RST_38                                    ; $643B: $FF
    ret c                                         ; $643C: $D8

    ld h, h                                       ; $643D: $64
    rst RST_38                                    ; $643E: $FF
    rst RST_38                                    ; $643F: $FF
    jp hl                                         ; $6440: $E9


    ld h, h                                       ; $6441: $64
    rst RST_38                                    ; $6442: $FF
    rst RST_38                                    ; $6443: $FF
    jp hl                                         ; $6444: $E9


    ld h, h                                       ; $6445: $64
    rst RST_38                                    ; $6446: $FF
    rst RST_38                                    ; $6447: $FF
    rst RST_38                                    ; $6448: $FF
    rst RST_38                                    ; $6449: $FF
    ld a, [$FF64]                                 ; $644A: $FA $64 $FF
    rst RST_38                                    ; $644D: $FF
    dec bc                                        ; $644E: $0B
    ld h, l                                       ; $644F: $65
    rst RST_38                                    ; $6450: $FF
    rst RST_38                                    ; $6451: $FF
    rst RST_38                                    ; $6452: $FF
    rst RST_38                                    ; $6453: $FF
    dec bc                                        ; $6454: $0B
    ld h, l                                       ; $6455: $65
    rst RST_38                                    ; $6456: $FF
    rst RST_38                                    ; $6457: $FF
    inc e                                         ; $6458: $1C
    ld h, l                                       ; $6459: $65
    rst RST_38                                    ; $645A: $FF
    rst RST_38                                    ; $645B: $FF
    rst RST_38                                    ; $645C: $FF
    rst RST_38                                    ; $645D: $FF
    inc e                                         ; $645E: $1C
    ld h, l                                       ; $645F: $65
    rst RST_38                                    ; $6460: $FF
    rst RST_38                                    ; $6461: $FF
    dec l                                         ; $6462: $2D
    ld h, l                                       ; $6463: $65
    rst RST_38                                    ; $6464: $FF
    rst RST_38                                    ; $6465: $FF
    rst RST_38                                    ; $6466: $FF
    rst RST_38                                    ; $6467: $FF
    ld a, $65                                     ; $6468: $3E $65
    rst RST_38                                    ; $646A: $FF
    rst RST_38                                    ; $646B: $FF
    ld c, a                                       ; $646C: $4F
    ld h, l                                       ; $646D: $65
    rst RST_38                                    ; $646E: $FF
    rst RST_38                                    ; $646F: $FF
    rst RST_38                                    ; $6470: $FF
    rst RST_38                                    ; $6471: $FF
    add b                                         ; $6472: $80
    nop                                           ; $6473: $00
    nop                                           ; $6474: $00
    rst RST_38                                    ; $6475: $FF
    rst RST_38                                    ; $6476: $FF
    rst RST_38                                    ; $6477: $FF
    ld a, h                                       ; $6478: $7C
    ld h, h                                       ; $6479: $64
    nop                                           ; $647A: $00
    nop                                           ; $647B: $00
    ld [bc], a                                    ; $647C: $02
    db $F4                                        ; $647D: $F4
    ld hl, sp+$30                                 ; $647E: $F8 $30
    db $F4                                        ; $6480: $F4
    nop                                           ; $6481: $00
    ld [hl-], a                                   ; $6482: $32
    add b                                         ; $6483: $80
    nop                                           ; $6484: $00
    nop                                           ; $6485: $00
    rst RST_38                                    ; $6486: $FF
    rst RST_38                                    ; $6487: $FF
    rst RST_38                                    ; $6488: $FF
    adc l                                         ; $6489: $8D
    ld h, h                                       ; $648A: $64
    nop                                           ; $648B: $00
    nop                                           ; $648C: $00
    ld [bc], a                                    ; $648D: $02
    db $F4                                        ; $648E: $F4
    ld hl, sp+$34                                 ; $648F: $F8 $34
    db $F4                                        ; $6491: $F4
    nop                                           ; $6492: $00
    ld [hl], $80                                  ; $6493: $36 $80
    nop                                           ; $6495: $00
    nop                                           ; $6496: $00
    rst RST_38                                    ; $6497: $FF
    rst RST_38                                    ; $6498: $FF
    rst RST_38                                    ; $6499: $FF
    sbc [hl]                                      ; $649A: $9E
    ld h, h                                       ; $649B: $64
    nop                                           ; $649C: $00
    nop                                           ; $649D: $00
    ld [bc], a                                    ; $649E: $02
    db $F4                                        ; $649F: $F4
    ld hl, sp+$28                                 ; $64A0: $F8 $28
    db $F4                                        ; $64A2: $F4
    nop                                           ; $64A3: $00
    ld a, [hl+]                                   ; $64A4: $2A
    add b                                         ; $64A5: $80
    nop                                           ; $64A6: $00
    nop                                           ; $64A7: $00
    rst RST_38                                    ; $64A8: $FF
    rst RST_38                                    ; $64A9: $FF
    rst RST_38                                    ; $64AA: $FF
    xor a                                         ; $64AB: $AF
    ld h, h                                       ; $64AC: $64
    nop                                           ; $64AD: $00
    nop                                           ; $64AE: $00
    ld [bc], a                                    ; $64AF: $02
    db $F4                                        ; $64B0: $F4
    ld hl, sp+$2C                                 ; $64B1: $F8 $2C
    db $F4                                        ; $64B3: $F4
    nop                                           ; $64B4: $00
    ld l, $80                                     ; $64B5: $2E $80
    nop                                           ; $64B7: $00
    nop                                           ; $64B8: $00
    rst RST_38                                    ; $64B9: $FF
    rst RST_38                                    ; $64BA: $FF
    rst RST_38                                    ; $64BB: $FF
    ret nz                                        ; $64BC: $C0

    ld h, h                                       ; $64BD: $64
    nop                                           ; $64BE: $00
    nop                                           ; $64BF: $00
    ld [bc], a                                    ; $64C0: $02
    db $F4                                        ; $64C1: $F4
    ld hl, sp+$20                                 ; $64C2: $F8 $20
    db $F4                                        ; $64C4: $F4
    nop                                           ; $64C5: $00
    ld [hl+], a                                   ; $64C6: $22
    add b                                         ; $64C7: $80
    nop                                           ; $64C8: $00
    nop                                           ; $64C9: $00
    rst RST_38                                    ; $64CA: $FF
    rst RST_38                                    ; $64CB: $FF
    rst RST_38                                    ; $64CC: $FF
    pop de                                        ; $64CD: $D1
    ld h, h                                       ; $64CE: $64
    nop                                           ; $64CF: $00
    nop                                           ; $64D0: $00
    ld [bc], a                                    ; $64D1: $02
    db $F4                                        ; $64D2: $F4
    ld hl, sp+$24                                 ; $64D3: $F8 $24
    db $F4                                        ; $64D5: $F4
    nop                                           ; $64D6: $00
    ld h, $80                                     ; $64D7: $26 $80
    nop                                           ; $64D9: $00
    nop                                           ; $64DA: $00
    rst RST_38                                    ; $64DB: $FF
    rst RST_38                                    ; $64DC: $FF
    rst RST_38                                    ; $64DD: $FF
    ldh [c], a                                    ; $64DE: $E2
    ld h, h                                       ; $64DF: $64
    nop                                           ; $64E0: $00
    nop                                           ; $64E1: $00
    ld [bc], a                                    ; $64E2: $02
    db $F4                                        ; $64E3: $F4
    ld hl, sp+$38                                 ; $64E4: $F8 $38
    db $F4                                        ; $64E6: $F4
    nop                                           ; $64E7: $00
    ld a, [hl-]                                   ; $64E8: $3A
    add b                                         ; $64E9: $80
    nop                                           ; $64EA: $00
    nop                                           ; $64EB: $00
    rst RST_38                                    ; $64EC: $FF
    rst RST_38                                    ; $64ED: $FF
    rst RST_38                                    ; $64EE: $FF
    di                                            ; $64EF: $F3
    ld h, h                                       ; $64F0: $64
    nop                                           ; $64F1: $00
    nop                                           ; $64F2: $00
    ld [bc], a                                    ; $64F3: $02
    db $F4                                        ; $64F4: $F4
    ld hl, sp+$3C                                 ; $64F5: $F8 $3C
    db $F4                                        ; $64F7: $F4
    nop                                           ; $64F8: $00
    ld a, $80                                     ; $64F9: $3E $80
    nop                                           ; $64FB: $00
    nop                                           ; $64FC: $00
    rst RST_38                                    ; $64FD: $FF
    rst RST_38                                    ; $64FE: $FF
    rst RST_38                                    ; $64FF: $FF
    inc b                                         ; $6500: $04
    ld h, l                                       ; $6501: $65
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    ld [bc], a                                    ; $6504: $02
    db $F4                                        ; $6505: $F4
    ld hl, sp+$10                                 ; $6506: $F8 $10
    db $F4                                        ; $6508: $F4
    nop                                           ; $6509: $00
    ld [de], a                                    ; $650A: $12
    add b                                         ; $650B: $80
    nop                                           ; $650C: $00
    nop                                           ; $650D: $00
    rst RST_38                                    ; $650E: $FF
    rst RST_38                                    ; $650F: $FF
    rst RST_38                                    ; $6510: $FF
    dec d                                         ; $6511: $15
    ld h, l                                       ; $6512: $65
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    ld [bc], a                                    ; $6515: $02
    db $F4                                        ; $6516: $F4
    ld hl, sp+$14                                 ; $6517: $F8 $14
    db $F4                                        ; $6519: $F4
    nop                                           ; $651A: $00
    ld d, $80                                     ; $651B: $16 $80
    nop                                           ; $651D: $00
    nop                                           ; $651E: $00
    rst RST_38                                    ; $651F: $FF
    rst RST_38                                    ; $6520: $FF

jr_03D_6521:
    rst RST_38                                    ; $6521: $FF
    ld h, $65                                     ; $6522: $26 $65
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    ld [bc], a                                    ; $6526: $02
    db $F4                                        ; $6527: $F4
    ld hl, sp+$08                                 ; $6528: $F8 $08
    db $F4                                        ; $652A: $F4
    nop                                           ; $652B: $00
    ld a, [bc]                                    ; $652C: $0A
    add b                                         ; $652D: $80
    nop                                           ; $652E: $00
    nop                                           ; $652F: $00
    rst RST_38                                    ; $6530: $FF
    rst RST_38                                    ; $6531: $FF
    rst RST_38                                    ; $6532: $FF
    scf                                           ; $6533: $37
    ld h, l                                       ; $6534: $65
    nop                                           ; $6535: $00
    nop                                           ; $6536: $00
    ld [bc], a                                    ; $6537: $02
    db $F4                                        ; $6538: $F4
    ld hl, sp+$0C                                 ; $6539: $F8 $0C
    db $F4                                        ; $653B: $F4
    nop                                           ; $653C: $00
    ld c, $80                                     ; $653D: $0E $80
    nop                                           ; $653F: $00
    nop                                           ; $6540: $00
    rst RST_38                                    ; $6541: $FF
    rst RST_38                                    ; $6542: $FF
    rst RST_38                                    ; $6543: $FF
    ld c, b                                       ; $6544: $48
    ld h, l                                       ; $6545: $65
    nop                                           ; $6546: $00
    nop                                           ; $6547: $00
    ld [bc], a                                    ; $6548: $02
    db $F4                                        ; $6549: $F4
    ld hl, sp+$00                                 ; $654A: $F8 $00
    db $F4                                        ; $654C: $F4
    nop                                           ; $654D: $00
    ld [bc], a                                    ; $654E: $02
    add b                                         ; $654F: $80
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    rst RST_38                                    ; $6552: $FF
    rst RST_38                                    ; $6553: $FF
    rst RST_38                                    ; $6554: $FF
    ld e, c                                       ; $6555: $59
    ld h, l                                       ; $6556: $65
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    ld [bc], a                                    ; $6559: $02
    db $F4                                        ; $655A: $F4
    ld hl, sp+$04                                 ; $655B: $F8 $04
    db $F4                                        ; $655D: $F4
    nop                                           ; $655E: $00
    ld b, $80                                     ; $655F: $06 $80
    nop                                           ; $6561: $00
    inc bc                                        ; $6562: $03
    inc bc                                        ; $6563: $03
    ld d, b                                       ; $6564: $50
    nop                                           ; $6565: $00
    ld h, b                                       ; $6566: $60
    nop                                           ; $6567: $00
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    nop                                           ; $656A: $00
    nop                                           ; $656B: $00
    nop                                           ; $656C: $00
    nop                                           ; $656D: $00
    add b                                         ; $656E: $80
    nop                                           ; $656F: $00
    add b                                         ; $6570: $80
    dec a                                         ; $6571: $3D
    add b                                         ; $6572: $80
    ld h, l                                       ; $6573: $65
    nop                                           ; $6574: $00
    nop                                           ; $6575: $00
    add b                                         ; $6576: $80
    ld h, l                                       ; $6577: $65
    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    nop                                           ; $657A: $00
    nop                                           ; $657B: $00
    inc bc                                        ; $657C: $03
    inc bc                                        ; $657D: $03
    ret nz                                        ; $657E: $C0

    ret c                                         ; $657F: $D8

    sub d                                         ; $6580: $92
    ld h, l                                       ; $6581: $65
    rst RST_38                                    ; $6582: $FF
    rst RST_38                                    ; $6583: $FF
    and b                                         ; $6584: $A0
    ld h, l                                       ; $6585: $65
    rst RST_38                                    ; $6586: $FF
    rst RST_38                                    ; $6587: $FF
    xor [hl]                                      ; $6588: $AE
    ld h, l                                       ; $6589: $65
    rst RST_38                                    ; $658A: $FF
    rst RST_38                                    ; $658B: $FF
    cp h                                          ; $658C: $BC
    ld h, l                                       ; $658D: $65
    rst RST_38                                    ; $658E: $FF
    rst RST_38                                    ; $658F: $FF
    rst RST_38                                    ; $6590: $FF
    rst RST_38                                    ; $6591: $FF
    add b                                         ; $6592: $80
    nop                                           ; $6593: $00
    nop                                           ; $6594: $00
    rst RST_38                                    ; $6595: $FF
    rst RST_38                                    ; $6596: $FF
    rst RST_38                                    ; $6597: $FF
    sbc h                                         ; $6598: $9C
    ld h, l                                       ; $6599: $65
    nop                                           ; $659A: $00
    nop                                           ; $659B: $00
    ld bc, $FCF8                                  ; $659C: $01 $F8 $FC
    jr jr_03D_6521                                ; $659F: $18 $80

    nop                                           ; $65A1: $00
    nop                                           ; $65A2: $00
    rst RST_38                                    ; $65A3: $FF
    rst RST_38                                    ; $65A4: $FF
    rst RST_38                                    ; $65A5: $FF
    xor d                                         ; $65A6: $AA
    ld h, l                                       ; $65A7: $65
    nop                                           ; $65A8: $00
    nop                                           ; $65A9: $00
    ld bc, $FCF8                                  ; $65AA: $01 $F8 $FC
    ld a, [de]                                    ; $65AD: $1A
    add b                                         ; $65AE: $80
    nop                                           ; $65AF: $00
    nop                                           ; $65B0: $00
    rst RST_38                                    ; $65B1: $FF
    rst RST_38                                    ; $65B2: $FF
    rst RST_38                                    ; $65B3: $FF
    cp b                                          ; $65B4: $B8
    ld h, l                                       ; $65B5: $65
    nop                                           ; $65B6: $00
    nop                                           ; $65B7: $00
    ld bc, $FCF8                                  ; $65B8: $01 $F8 $FC
    inc e                                         ; $65BB: $1C
    add b                                         ; $65BC: $80
    nop                                           ; $65BD: $00
    nop                                           ; $65BE: $00
    rst RST_38                                    ; $65BF: $FF
    rst RST_38                                    ; $65C0: $FF
    rst RST_38                                    ; $65C1: $FF
    add $65                                       ; $65C2: $C6 $65
    nop                                           ; $65C4: $00
    nop                                           ; $65C5: $00
    ld bc, $FCF8                                  ; $65C6: $01 $F8 $FC
    ld e, $80                                     ; $65C9: $1E $80
    nop                                           ; $65CB: $00
    inc b                                         ; $65CC: $04
    inc b                                         ; $65CD: $04
    ld d, b                                       ; $65CE: $50
    nop                                           ; $65CF: $00
    ld h, b                                       ; $65D0: $60
    nop                                           ; $65D1: $00
    nop                                           ; $65D2: $00
    nop                                           ; $65D3: $00
    nop                                           ; $65D4: $00
    nop                                           ; $65D5: $00
    nop                                           ; $65D6: $00
    nop                                           ; $65D7: $00
    ret nz                                        ; $65D8: $C0

    nop                                           ; $65D9: $00
    add b                                         ; $65DA: $80
    dec a                                         ; $65DB: $3D
    ld [$0065], a                                 ; $65DC: $EA $65 $00
    nop                                           ; $65DF: $00
    ld [$0065], a                                 ; $65E0: $EA $65 $00
    nop                                           ; $65E3: $00
    nop                                           ; $65E4: $00
    nop                                           ; $65E5: $00
    inc bc                                        ; $65E6: $03
    inc bc                                        ; $65E7: $03
    ret nz                                        ; $65E8: $C0

    ret c                                         ; $65E9: $D8

    ld [hl], $66                                  ; $65EA: $36 $66
    rst RST_38                                    ; $65EC: $FF
    rst RST_38                                    ; $65ED: $FF
    ld e, c                                       ; $65EE: $59
    ld h, [hl]                                    ; $65EF: $66
    rst RST_38                                    ; $65F0: $FF
    rst RST_38                                    ; $65F1: $FF
    rst RST_38                                    ; $65F2: $FF
    rst RST_38                                    ; $65F3: $FF
    ld a, h                                       ; $65F4: $7C
    ld h, [hl]                                    ; $65F5: $66
    rst RST_38                                    ; $65F6: $FF
    rst RST_38                                    ; $65F7: $FF
    sbc a                                         ; $65F8: $9F
    ld h, [hl]                                    ; $65F9: $66
    rst RST_38                                    ; $65FA: $FF
    rst RST_38                                    ; $65FB: $FF
    ld a, h                                       ; $65FC: $7C
    ld h, [hl]                                    ; $65FD: $66
    rst RST_38                                    ; $65FE: $FF
    rst RST_38                                    ; $65FF: $FF
    sbc a                                         ; $6600: $9F
    ld h, [hl]                                    ; $6601: $66
    rst RST_38                                    ; $6602: $FF
    rst RST_38                                    ; $6603: $FF
    ld a, h                                       ; $6604: $7C
    ld h, [hl]                                    ; $6605: $66
    rst RST_38                                    ; $6606: $FF
    rst RST_38                                    ; $6607: $FF
    sbc a                                         ; $6608: $9F
    ld h, [hl]                                    ; $6609: $66
    rst RST_38                                    ; $660A: $FF
    rst RST_38                                    ; $660B: $FF
    ld a, h                                       ; $660C: $7C
    ld h, [hl]                                    ; $660D: $66
    rst RST_38                                    ; $660E: $FF
    rst RST_38                                    ; $660F: $FF
    sbc a                                         ; $6610: $9F
    ld h, [hl]                                    ; $6611: $66
    rst RST_38                                    ; $6612: $FF
    rst RST_38                                    ; $6613: $FF
    or [hl]                                       ; $6614: $B6
    ld h, [hl]                                    ; $6615: $66
    rst RST_38                                    ; $6616: $FF
    rst RST_38                                    ; $6617: $FF
    or [hl]                                       ; $6618: $B6
    ld h, [hl]                                    ; $6619: $66
    rst RST_38                                    ; $661A: $FF
    rst RST_38                                    ; $661B: $FF
    or [hl]                                       ; $661C: $B6
    ld h, [hl]                                    ; $661D: $66
    rst RST_38                                    ; $661E: $FF
    rst RST_38                                    ; $661F: $FF
    or [hl]                                       ; $6620: $B6
    ld h, [hl]                                    ; $6621: $66
    rst RST_38                                    ; $6622: $FF
    rst RST_38                                    ; $6623: $FF
    or [hl]                                       ; $6624: $B6
    ld h, [hl]                                    ; $6625: $66
    rst RST_38                                    ; $6626: $FF
    rst RST_38                                    ; $6627: $FF
    or [hl]                                       ; $6628: $B6
    ld h, [hl]                                    ; $6629: $66
    rst RST_38                                    ; $662A: $FF
    rst RST_38                                    ; $662B: $FF
    or [hl]                                       ; $662C: $B6
    ld h, [hl]                                    ; $662D: $66
    rst RST_38                                    ; $662E: $FF
    rst RST_38                                    ; $662F: $FF
    or [hl]                                       ; $6630: $B6
    ld h, [hl]                                    ; $6631: $66
    rst RST_38                                    ; $6632: $FF
    rst RST_38                                    ; $6633: $FF
    rst RST_38                                    ; $6634: $FF
    rst RST_38                                    ; $6635: $FF
    add b                                         ; $6636: $80
    nop                                           ; $6637: $00
    nop                                           ; $6638: $00
    rst RST_38                                    ; $6639: $FF
    rst RST_38                                    ; $663A: $FF
    rst RST_38                                    ; $663B: $FF
    ld b, b                                       ; $663C: $40
    ld h, [hl]                                    ; $663D: $66
    nop                                           ; $663E: $00
    nop                                           ; $663F: $00
    ld [$F0EC], sp                                ; $6640: $08 $EC $F0
    nop                                           ; $6643: $00
    db $EC                                        ; $6644: $EC
    ld hl, sp+$02                                 ; $6645: $F8 $02
    db $EC                                        ; $6647: $EC
    nop                                           ; $6648: $00
    inc b                                         ; $6649: $04
    db $EC                                        ; $664A: $EC
    ld [$FC06], sp                                ; $664B: $08 $06 $FC
    ldh a, [rNR41]                                ; $664E: $F0 $20
    db $FC                                        ; $6650: $FC
    ld hl, sp+$22                                 ; $6651: $F8 $22
    db $FC                                        ; $6653: $FC
    nop                                           ; $6654: $00
    inc h                                         ; $6655: $24
    db $FC                                        ; $6656: $FC
    ld [$8026], sp                                ; $6657: $08 $26 $80
    nop                                           ; $665A: $00
    nop                                           ; $665B: $00
    rst RST_38                                    ; $665C: $FF
    rst RST_38                                    ; $665D: $FF
    rst RST_38                                    ; $665E: $FF
    ld h, e                                       ; $665F: $63
    ld h, [hl]                                    ; $6660: $66
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    ld [$F0EC], sp                                ; $6663: $08 $EC $F0
    ld [$F8EC], sp                                ; $6666: $08 $EC $F8
    ld a, [bc]                                    ; $6669: $0A
    db $EC                                        ; $666A: $EC
    nop                                           ; $666B: $00
    inc c                                         ; $666C: $0C
    db $EC                                        ; $666D: $EC
    ld [$FC0E], sp                                ; $666E: $08 $0E $FC
    ldh a, [$FF28]                                ; $6671: $F0 $28
    db $FC                                        ; $6673: $FC
    ld hl, sp+$2A                                 ; $6674: $F8 $2A
    db $FC                                        ; $6676: $FC
    nop                                           ; $6677: $00
    inc l                                         ; $6678: $2C
    db $FC                                        ; $6679: $FC
    ld [$802E], sp                                ; $667A: $08 $2E $80
    nop                                           ; $667D: $00
    nop                                           ; $667E: $00
    rst RST_38                                    ; $667F: $FF
    rst RST_38                                    ; $6680: $FF
    rst RST_38                                    ; $6681: $FF
    add [hl]                                      ; $6682: $86
    ld h, [hl]                                    ; $6683: $66
    nop                                           ; $6684: $00
    nop                                           ; $6685: $00
    ld [$F0EC], sp                                ; $6686: $08 $EC $F0
    db $10                                        ; $6689: $10
    db $EC                                        ; $668A: $EC
    ld hl, sp+$12                                 ; $668B: $F8 $12
    db $EC                                        ; $668D: $EC
    nop                                           ; $668E: $00
    inc d                                         ; $668F: $14
    db $EC                                        ; $6690: $EC
    ld [$FC16], sp                                ; $6691: $08 $16 $FC
    ldh a, [$FF30]                                ; $6694: $F0 $30
    db $FC                                        ; $6696: $FC
    ld hl, sp+$32                                 ; $6697: $F8 $32
    db $FC                                        ; $6699: $FC
    nop                                           ; $669A: $00
    inc [hl]                                      ; $669B: $34
    db $FC                                        ; $669C: $FC
    ld [$8036], sp                                ; $669D: $08 $36 $80
    nop                                           ; $66A0: $00
    nop                                           ; $66A1: $00
    rst RST_38                                    ; $66A2: $FF
    rst RST_38                                    ; $66A3: $FF
    rst RST_38                                    ; $66A4: $FF
    xor c                                         ; $66A5: $A9
    ld h, [hl]                                    ; $66A6: $66
    nop                                           ; $66A7: $00
    nop                                           ; $66A8: $00
    inc b                                         ; $66A9: $04
    db $FC                                        ; $66AA: $FC
    ldh a, [rNR23]                                ; $66AB: $F0 $18
    db $FC                                        ; $66AD: $FC
    ld hl, sp+$1A                                 ; $66AE: $F8 $1A
    db $FC                                        ; $66B0: $FC
    nop                                           ; $66B1: $00
    inc e                                         ; $66B2: $1C
    db $FC                                        ; $66B3: $FC
    ld [$801E], sp                                ; $66B4: $08 $1E $80
    nop                                           ; $66B7: $00
    nop                                           ; $66B8: $00
    rst RST_38                                    ; $66B9: $FF
    rst RST_38                                    ; $66BA: $FF
    rst RST_38                                    ; $66BB: $FF
    ret nz                                        ; $66BC: $C0

    ld h, [hl]                                    ; $66BD: $66
    nop                                           ; $66BE: $00
    nop                                           ; $66BF: $00
    inc b                                         ; $66C0: $04
    db $FC                                        ; $66C1: $FC
    ldh a, [$FF38]                                ; $66C2: $F0 $38
    db $FC                                        ; $66C4: $FC
    ld hl, sp+$3A                                 ; $66C5: $F8 $3A
    db $FC                                        ; $66C7: $FC
    nop                                           ; $66C8: $00
    inc a                                         ; $66C9: $3C
    db $FC                                        ; $66CA: $FC
    ld [$E53E], sp                                ; $66CB: $08 $3E $E5
    pop hl                                        ; $66CE: $E1
    push hl                                       ; $66CF: $E5
    ld de, $0029                                  ; $66D0: $11 $29 $00
    add hl, de                                    ; $66D3: $19
    ld a, [hl]                                    ; $66D4: $7E
    and $1F                                       ; $66D5: $E6 $1F
    ld e, a                                       ; $66D7: $5F
    add a                                         ; $66D8: $87
    add e                                         ; $66D9: $83
    ld e, a                                       ; $66DA: $5F
    ld d, $00                                     ; $66DB: $16 $00
    ld hl, $66E2                                  ; $66DD: $21 $E2 $66
    add hl, de                                    ; $66E0: $19
    jp hl                                         ; $66E1: $E9


    jp Jump_03D_6742                              ; $66E2: $C3 $42 $67


    jp Jump_03D_68B5                              ; $66E5: $C3 $B5 $68


    jp Jump_03D_68D0                              ; $66E8: $C3 $D0 $68


    jp Jump_03D_6913                              ; $66EB: $C3 $13 $69


    jp Jump_03D_6956                              ; $66EE: $C3 $56 $69


    jp Jump_03D_697B                              ; $66F1: $C3 $7B $69


    jp Jump_03D_69A0                              ; $66F4: $C3 $A0 $69


    jp Jump_03D_69FA                              ; $66F7: $C3 $FA $69


    jp Jump_03D_6A54                              ; $66FA: $C3 $54 $6A


    jp Jump_03D_6A6F                              ; $66FD: $C3 $6F $6A


    jp Jump_03D_6A8A                              ; $6700: $C3 $8A $6A


    jp Jump_03D_6AA5                              ; $6703: $C3 $A5 $6A


    jp Jump_03D_6AC0                              ; $6706: $C3 $C0 $6A


    jp Jump_03D_6AE5                              ; $6709: $C3 $E5 $6A


    jp Jump_03D_6B0A                              ; $670C: $C3 $0A $6B


    jp Jump_03D_6BE3                              ; $670F: $C3 $E3 $6B


    jp Jump_03D_6CC8                              ; $6712: $C3 $C8 $6C


    jp Jump_03D_6D05                              ; $6715: $C3 $05 $6D


    jp Jump_03D_6D20                              ; $6718: $C3 $20 $6D


    jp Jump_03D_6D79                              ; $671B: $C3 $79 $6D


    jp Jump_03D_6742                              ; $671E: $C3 $42 $67


    jp Jump_03D_6742                              ; $6721: $C3 $42 $67


    jp Jump_03D_6742                              ; $6724: $C3 $42 $67


    jp Jump_03D_6742                              ; $6727: $C3 $42 $67


    jp Jump_03D_6DD2                              ; $672A: $C3 $D2 $6D


    jp Jump_03D_6742                              ; $672D: $C3 $42 $67


    jp Jump_03D_6742                              ; $6730: $C3 $42 $67


    jp Jump_03D_6742                              ; $6733: $C3 $42 $67


    jp Jump_03D_6742                              ; $6736: $C3 $42 $67


    jp Jump_03D_6742                              ; $6739: $C3 $42 $67


    jp Jump_03D_6F38                              ; $673C: $C3 $38 $6F


    jp Jump_03D_7119                              ; $673F: $C3 $19 $71


Jump_03D_6742:
    pop de                                        ; $6742: $D1
    push de                                       ; $6743: $D5
    ld hl, $0029                                  ; $6744: $21 $29 $00
    add hl, de                                    ; $6747: $19
    ld a, [hl]                                    ; $6748: $7E
    add a                                         ; $6749: $87
    jr nc, jr_03D_6763                            ; $674A: $30 $17

    srl a                                         ; $674C: $CB $3F
    ld [hl], a                                    ; $674E: $77
    ld hl, $0008                                  ; $674F: $21 $08 $00
    add hl, de                                    ; $6752: $19
    ld bc, $0060                                  ; $6753: $01 $60 $00
    ld [hl], c                                    ; $6756: $71
    inc hl                                        ; $6757: $23
    ld [hl], b                                    ; $6758: $70

Jump_03D_6759:
    ld hl, $000A                                  ; $6759: $21 $0A $00
    add hl, de                                    ; $675C: $19
    ld bc, $0060                                  ; $675D: $01 $60 $00
    ld [hl], c                                    ; $6760: $71
    inc hl                                        ; $6761: $23
    ld [hl], b                                    ; $6762: $70

Jump_03D_6763:
jr_03D_6763:
    pop de                                        ; $6763: $D1
    push de                                       ; $6764: $D5
    ld hl, $002E                                  ; $6765: $21 $2E $00
    add hl, de                                    ; $6768: $19
    ld a, [hl]                                    ; $6769: $7E
    and $7F                                       ; $676A: $E6 $7F
    jp z, Jump_03D_677E                           ; $676C: $CA $7E $67

    ld a, [de]                                    ; $676F: $1A
    bit 4, a                                      ; $6770: $CB $67
    jp z, Jump_03D_68B3                           ; $6772: $CA $B3 $68

    xor a                                         ; $6775: $AF
    ld [de], a                                    ; $6776: $12
    ld hl, $C357                                  ; $6777: $21 $57 $C3
    dec [hl]                                      ; $677A: $35
    jp Jump_03D_68B3                              ; $677B: $C3 $B3 $68


Jump_03D_677E:
    pop de                                        ; $677E: $D1
    push de                                       ; $677F: $D5
    call Call_03D_7243                            ; $6780: $CD $43 $72
    call Call_03D_7204                            ; $6783: $CD $04 $72
    ld a, [de]                                    ; $6786: $1A
    or a                                          ; $6787: $B7
    jp z, Jump_03D_6852                           ; $6788: $CA $52 $68

    pop de                                        ; $678B: $D1
    push de                                       ; $678C: $D5
    ld hl, $0004                                  ; $678D: $21 $04 $00
    add hl, de                                    ; $6790: $19
    ld c, [hl]                                    ; $6791: $4E
    ld hl, $0006                                  ; $6792: $21 $06 $00
    add hl, de                                    ; $6795: $19
    ld b, [hl]                                    ; $6796: $46
    ld a, [$D6C0]                                 ; $6797: $FA $C0 $D6
    add a                                         ; $679A: $87
    jr nc, jr_03D_67AE                            ; $679B: $30 $11

    ld a, [$D6C4]                                 ; $679D: $FA $C4 $D6
    ld e, a                                       ; $67A0: $5F
    ld a, [$D6C6]                                 ; $67A1: $FA $C6 $D6
    ld d, a                                       ; $67A4: $57
    call Call_03D_728D                            ; $67A5: $CD $8D $72
    ld de, $D6EA                                  ; $67A8: $11 $EA $D6
    or a                                          ; $67AB: $B7
    jr nz, jr_03D_67C8                            ; $67AC: $20 $1A

jr_03D_67AE:
    ld a, [$D700]                                 ; $67AE: $FA $00 $D7
    add a                                         ; $67B1: $87
    jr nc, jr_03D_6815                            ; $67B2: $30 $61

    ld a, [$D704]                                 ; $67B4: $FA $04 $D7
    ld e, a                                       ; $67B7: $5F
    ld a, [$D706]                                 ; $67B8: $FA $06 $D7
    ld d, a                                       ; $67BB: $57
    call Call_03D_7278                            ; $67BC: $CD $78 $72
    ld de, $D72A                                  ; $67BF: $11 $2A $D7
    or a                                          ; $67C2: $B7
    jr nz, jr_03D_67C8                            ; $67C3: $20 $03

    jp Jump_03D_6815                              ; $67C5: $C3 $15 $68


jr_03D_67C8:
    ld bc, $002A                                  ; $67C8: $01 $2A $00
    pop hl                                        ; $67CB: $E1
    push hl                                       ; $67CC: $E5
    add hl, bc                                    ; $67CD: $09
    ld a, [de]                                    ; $67CE: $1A
    inc hl                                        ; $67CF: $23
    ld c, [hl]                                    ; $67D0: $4E
    sub c                                         ; $67D1: $91
    jr nc, jr_03D_67D5                            ; $67D2: $30 $01

    xor a                                         ; $67D4: $AF

jr_03D_67D5:
    ld [de], a                                    ; $67D5: $12
    inc de                                        ; $67D6: $13
    dec hl                                        ; $67D7: $2B
    ld a, [de]                                    ; $67D8: $1A
    ld c, a                                       ; $67D9: $4F
    ld a, [hl]                                    ; $67DA: $7E
    sub c                                         ; $67DB: $91
    jr nc, jr_03D_67DF                            ; $67DC: $30 $01

    xor a                                         ; $67DE: $AF

jr_03D_67DF:
    ld [hl], a                                    ; $67DF: $77
    ld bc, $002E                                  ; $67E0: $01 $2E $00
    pop hl                                        ; $67E3: $E1
    push hl                                       ; $67E4: $E5
    add hl, bc                                    ; $67E5: $09
    or a                                          ; $67E6: $B7
    jr nz, jr_03D_680A                            ; $67E7: $20 $21

    inc hl                                        ; $67E9: $23
    ld a, $FF                                     ; $67EA: $3E $FF
    ld [hl], a                                    ; $67EC: $77
    dec hl                                        ; $67ED: $2B
    ld a, [$C35D]                                 ; $67EE: $FA $5D $C3
    inc a                                         ; $67F1: $3C
    daa                                           ; $67F2: $27
    ld [$C35D], a                                 ; $67F3: $EA $5D $C3
    ld c, $81                                     ; $67F6: $0E $81
    ld [hl], c                                    ; $67F8: $71
    ld a, $B2                                     ; $67F9: $3E $B2
    call Call_000_1360                            ; $67FB: $CD $60 $13
    ld a, $06                                     ; $67FE: $3E $06
    ld b, $02                                     ; $6800: $06 $02
    ld c, $04                                     ; $6802: $0E $04
    call Call_000_189B                            ; $6804: $CD $9B $18
    jp Jump_03D_6852                              ; $6807: $C3 $52 $68


jr_03D_680A:
    ld c, $80                                     ; $680A: $0E $80
    ld [hl], c                                    ; $680C: $71
    ld a, $B1                                     ; $680D: $3E $B1
    call Call_000_1360                            ; $680F: $CD $60 $13
    jp Jump_03D_6852                              ; $6812: $C3 $52 $68


Jump_03D_6815:
jr_03D_6815:
    ld a, [$D680]                                 ; $6815: $FA $80 $D6
    add a                                         ; $6818: $87
    jr nc, jr_03D_6852                            ; $6819: $30 $37

    ld a, [$D6AE]                                 ; $681B: $FA $AE $D6
    or a                                          ; $681E: $B7
    jr nz, jr_03D_6852                            ; $681F: $20 $31

    pop de                                        ; $6821: $D1
    push de                                       ; $6822: $D5
    ld hl, $0004                                  ; $6823: $21 $04 $00
    add hl, de                                    ; $6826: $19
    ld c, [hl]                                    ; $6827: $4E
    ld hl, $0006                                  ; $6828: $21 $06 $00
    add hl, de                                    ; $682B: $19
    ld b, [hl]                                    ; $682C: $46
    ld a, [$D684]                                 ; $682D: $FA $84 $D6
    ld e, a                                       ; $6830: $5F
    ld a, [$D686]                                 ; $6831: $FA $86 $D6
    ld d, a                                       ; $6834: $57
    call Call_03D_7278                            ; $6835: $CD $78 $72
    or a                                          ; $6838: $B7
    jr z, jr_03D_6852                             ; $6839: $28 $17

    xor a                                         ; $683B: $AF
    ld [$D6AA], a                                 ; $683C: $EA $AA $D6
    pop de                                        ; $683F: $D1
    push de                                       ; $6840: $D5
    ld [de], a                                    ; $6841: $12
    ld hl, $C357                                  ; $6842: $21 $57 $C3
    dec [hl]                                      ; $6845: $35
    ld hl, $002E                                  ; $6846: $21 $2E $00
    add hl, de                                    ; $6849: $19
    ld a, $81                                     ; $684A: $3E $81
    ld [hl], a                                    ; $684C: $77
    ld a, $B4                                     ; $684D: $3E $B4
    call Call_000_1360                            ; $684F: $CD $60 $13

Jump_03D_6852:
jr_03D_6852:
    pop de                                        ; $6852: $D1
    push de                                       ; $6853: $D5
    ld hl, $002E                                  ; $6854: $21 $2E $00
    add hl, de                                    ; $6857: $19
    ld a, [hl]                                    ; $6858: $7E
    add a                                         ; $6859: $87
    jr nc, jr_03D_68B3                            ; $685A: $30 $57

    srl a                                         ; $685C: $CB $3F
    ld [hl], a                                    ; $685E: $77
    ld bc, $6438                                  ; $685F: $01 $38 $64
    or a                                          ; $6862: $B7
    jr nz, jr_03D_689E                            ; $6863: $20 $39

    ld hl, $0029                                  ; $6865: $21 $29 $00
    add hl, de                                    ; $6868: $19
    ld a, [hl]                                    ; $6869: $7E
    and $3F                                       ; $686A: $E6 $3F
    cp $10                                        ; $686C: $FE $10
    jr c, jr_03D_6888                             ; $686E: $38 $18

    ld hl, $002A                                  ; $6870: $21 $2A $00
    add hl, de                                    ; $6873: $19
    ld a, [hl]                                    ; $6874: $7E
    ld bc, $645E                                  ; $6875: $01 $5E $64
    cp $0C                                        ; $6878: $FE $0C
    jr nc, jr_03D_689E                            ; $687A: $30 $22

    ld bc, $6454                                  ; $687C: $01 $54 $64
    cp $08                                        ; $687F: $FE $08
    jr nc, jr_03D_689E                            ; $6881: $30 $1B

    ld bc, $644A                                  ; $6883: $01 $4A $64
    jr jr_03D_689E                                ; $6886: $18 $16

jr_03D_6888:
    ld hl, $002A                                  ; $6888: $21 $2A $00
    add hl, de                                    ; $688B: $19
    ld a, [hl]                                    ; $688C: $7E
    ld bc, $642E                                  ; $688D: $01 $2E $64
    cp $0C                                        ; $6890: $FE $0C
    jr nc, jr_03D_689E                            ; $6892: $30 $0A

    ld bc, $6424                                  ; $6894: $01 $24 $64
    cp $08                                        ; $6897: $FE $08
    jr nc, jr_03D_689E                            ; $6899: $30 $03

    ld bc, $641A                                  ; $689B: $01 $1A $64

jr_03D_689E:
    ld hl, $0012                                  ; $689E: $21 $12 $00
    add hl, de                                    ; $68A1: $19
    ld [hl], c                                    ; $68A2: $71
    inc hl                                        ; $68A3: $23
    ld [hl], b                                    ; $68A4: $70
    ld hl, $0014                                  ; $68A5: $21 $14 $00
    add hl, de                                    ; $68A8: $19
    xor a                                         ; $68A9: $AF
    ld [hl], a                                    ; $68AA: $77
    ld hl, $0000                                  ; $68AB: $21 $00 $00
    add hl, de                                    ; $68AE: $19
    ld a, [hl]                                    ; $68AF: $7E
    and $EF                                       ; $68B0: $E6 $EF
    ld [hl], a                                    ; $68B2: $77

Jump_03D_68B3:
jr_03D_68B3:
    pop hl                                        ; $68B3: $E1
    ret                                           ; $68B4: $C9


Jump_03D_68B5:
    pop de                                        ; $68B5: $D1
    push de                                       ; $68B6: $D5
    ld hl, $0029                                  ; $68B7: $21 $29 $00
    add hl, de                                    ; $68BA: $19
    ld a, [hl]                                    ; $68BB: $7E
    add a                                         ; $68BC: $87
    jp nc, Jump_03D_6763                          ; $68BD: $D2 $63 $67

    srl a                                         ; $68C0: $CB $3F
    ld [hl], a                                    ; $68C2: $77
    ld hl, $0008                                  ; $68C3: $21 $08 $00
    add hl, de                                    ; $68C6: $19
    ld bc, $FF80                                  ; $68C7: $01 $80 $FF
    ld [hl], c                                    ; $68CA: $71
    inc hl                                        ; $68CB: $23
    ld [hl], b                                    ; $68CC: $70
    jp Jump_03D_6759                              ; $68CD: $C3 $59 $67


Jump_03D_68D0:
    pop de                                        ; $68D0: $D1
    push de                                       ; $68D1: $D5
    ld hl, $0029                                  ; $68D2: $21 $29 $00
    add hl, de                                    ; $68D5: $19
    ld a, [hl]                                    ; $68D6: $7E
    add a                                         ; $68D7: $87
    jp nc, Jump_03D_68F2                          ; $68D8: $D2 $F2 $68

    srl a                                         ; $68DB: $CB $3F
    ld [hl], a                                    ; $68DD: $77
    ld hl, $0008                                  ; $68DE: $21 $08 $00
    add hl, de                                    ; $68E1: $19
    ld bc, $0000                                  ; $68E2: $01 $00 $00
    ld [hl], c                                    ; $68E5: $71
    inc hl                                        ; $68E6: $23
    ld [hl], b                                    ; $68E7: $70
    ld hl, $000A                                  ; $68E8: $21 $0A $00
    add hl, de                                    ; $68EB: $19
    ld bc, $0080                                  ; $68EC: $01 $80 $00
    ld [hl], c                                    ; $68EF: $71
    inc hl                                        ; $68F0: $23
    ld [hl], b                                    ; $68F1: $70

Jump_03D_68F2:
    ld hl, $0006                                  ; $68F2: $21 $06 $00
    add hl, de                                    ; $68F5: $19
    ld a, [hl]                                    ; $68F6: $7E
    add $20                                       ; $68F7: $C6 $20
    cp $58                                        ; $68F9: $FE $58
    jp c, Jump_03D_6910                           ; $68FB: $DA $10 $69

    ld hl, $0008                                  ; $68FE: $21 $08 $00
    add hl, de                                    ; $6901: $19
    ld c, [hl]                                    ; $6902: $4E
    inc hl                                        ; $6903: $23
    ld b, [hl]                                    ; $6904: $46
    ld e, l                                       ; $6905: $5D
    ld d, h                                       ; $6906: $54
    ld hl, $0010                                  ; $6907: $21 $10 $00
    add hl, bc                                    ; $690A: $09
    ld a, h                                       ; $690B: $7C
    ld [de], a                                    ; $690C: $12
    dec de                                        ; $690D: $1B
    ld a, l                                       ; $690E: $7D
    ld [de], a                                    ; $690F: $12

Jump_03D_6910:
    jp Jump_03D_6763                              ; $6910: $C3 $63 $67


Jump_03D_6913:
    pop de                                        ; $6913: $D1
    push de                                       ; $6914: $D5
    ld hl, $0029                                  ; $6915: $21 $29 $00
    add hl, de                                    ; $6918: $19
    ld a, [hl]                                    ; $6919: $7E
    add a                                         ; $691A: $87
    jp nc, Jump_03D_6935                          ; $691B: $D2 $35 $69

    srl a                                         ; $691E: $CB $3F
    ld [hl], a                                    ; $6920: $77
    ld hl, $0008                                  ; $6921: $21 $08 $00
    add hl, de                                    ; $6924: $19
    ld bc, $0000                                  ; $6925: $01 $00 $00
    ld [hl], c                                    ; $6928: $71
    inc hl                                        ; $6929: $23
    ld [hl], b                                    ; $692A: $70
    ld hl, $000A                                  ; $692B: $21 $0A $00
    add hl, de                                    ; $692E: $19
    ld bc, $0080                                  ; $692F: $01 $80 $00
    ld [hl], c                                    ; $6932: $71
    inc hl                                        ; $6933: $23
    ld [hl], b                                    ; $6934: $70

Jump_03D_6935:
    ld hl, $0006                                  ; $6935: $21 $06 $00
    add hl, de                                    ; $6938: $19
    ld a, [hl]                                    ; $6939: $7E
    add $20                                       ; $693A: $C6 $20
    cp $58                                        ; $693C: $FE $58
    jp c, Jump_03D_6953                           ; $693E: $DA $53 $69

    ld hl, $0008                                  ; $6941: $21 $08 $00
    add hl, de                                    ; $6944: $19
    ld c, [hl]                                    ; $6945: $4E
    inc hl                                        ; $6946: $23
    ld b, [hl]                                    ; $6947: $46
    ld e, l                                       ; $6948: $5D
    ld d, h                                       ; $6949: $54
    ld hl, $FFF0                                  ; $694A: $21 $F0 $FF
    add hl, bc                                    ; $694D: $09
    ld a, h                                       ; $694E: $7C
    ld [de], a                                    ; $694F: $12
    dec de                                        ; $6950: $1B
    ld a, l                                       ; $6951: $7D
    ld [de], a                                    ; $6952: $12

Jump_03D_6953:
    jp Jump_03D_6763                              ; $6953: $C3 $63 $67


Jump_03D_6956:
    pop de                                        ; $6956: $D1
    push de                                       ; $6957: $D5
    ld hl, $0029                                  ; $6958: $21 $29 $00
    add hl, de                                    ; $695B: $19
    ld a, [hl]                                    ; $695C: $7E
    add a                                         ; $695D: $87
    jp nc, Jump_03D_6978                          ; $695E: $D2 $78 $69

    srl a                                         ; $6961: $CB $3F
    ld [hl], a                                    ; $6963: $77
    ld hl, $0008                                  ; $6964: $21 $08 $00
    add hl, de                                    ; $6967: $19
    ld bc, $0000                                  ; $6968: $01 $00 $00
    ld [hl], c                                    ; $696B: $71
    inc hl                                        ; $696C: $23
    ld [hl], b                                    ; $696D: $70
    ld hl, $000A                                  ; $696E: $21 $0A $00
    add hl, de                                    ; $6971: $19
    ld bc, $0100                                  ; $6972: $01 $00 $01
    ld [hl], c                                    ; $6975: $71
    inc hl                                        ; $6976: $23
    ld [hl], b                                    ; $6977: $70

Jump_03D_6978:
    jp Jump_03D_6763                              ; $6978: $C3 $63 $67


Jump_03D_697B:
    pop de                                        ; $697B: $D1
    push de                                       ; $697C: $D5
    ld hl, $0029                                  ; $697D: $21 $29 $00
    add hl, de                                    ; $6980: $19
    ld a, [hl]                                    ; $6981: $7E
    add a                                         ; $6982: $87
    jp nc, Jump_03D_699D                          ; $6983: $D2 $9D $69

    srl a                                         ; $6986: $CB $3F
    ld [hl], a                                    ; $6988: $77
    ld hl, $0008                                  ; $6989: $21 $08 $00
    add hl, de                                    ; $698C: $19
    ld bc, $0000                                  ; $698D: $01 $00 $00
    ld [hl], c                                    ; $6990: $71
    inc hl                                        ; $6991: $23
    ld [hl], b                                    ; $6992: $70
    ld hl, $000A                                  ; $6993: $21 $0A $00
    add hl, de                                    ; $6996: $19
    ld bc, $0080                                  ; $6997: $01 $80 $00
    ld [hl], c                                    ; $699A: $71
    inc hl                                        ; $699B: $23
    ld [hl], b                                    ; $699C: $70

Jump_03D_699D:
    jp Jump_03D_6763                              ; $699D: $C3 $63 $67


Jump_03D_69A0:
    pop de                                        ; $69A0: $D1
    push de                                       ; $69A1: $D5
    ld hl, $0029                                  ; $69A2: $21 $29 $00
    add hl, de                                    ; $69A5: $19
    ld a, [hl]                                    ; $69A6: $7E
    add a                                         ; $69A7: $87
    jp nc, Jump_03D_69C2                          ; $69A8: $D2 $C2 $69

    srl a                                         ; $69AB: $CB $3F
    ld [hl], a                                    ; $69AD: $77
    ld hl, $0008                                  ; $69AE: $21 $08 $00
    add hl, de                                    ; $69B1: $19
    ld bc, $0000                                  ; $69B2: $01 $00 $00
    ld [hl], c                                    ; $69B5: $71
    inc hl                                        ; $69B6: $23
    ld [hl], b                                    ; $69B7: $70
    ld hl, $000A                                  ; $69B8: $21 $0A $00
    add hl, de                                    ; $69BB: $19
    ld bc, $0140                                  ; $69BC: $01 $40 $01
    ld [hl], c                                    ; $69BF: $71
    inc hl                                        ; $69C0: $23
    ld [hl], b                                    ; $69C1: $70

Jump_03D_69C2:
    pop de                                        ; $69C2: $D1
    push de                                       ; $69C3: $D5
    ld hl, $0031                                  ; $69C4: $21 $31 $00
    add hl, de                                    ; $69C7: $19
    ld a, [hl]                                    ; $69C8: $7E
    or a                                          ; $69C9: $B7
    jr nz, jr_03D_69F7                            ; $69CA: $20 $2B

    ld hl, $0006                                  ; $69CC: $21 $06 $00
    add hl, de                                    ; $69CF: $19
    ld a, [hl]                                    ; $69D0: $7E
    add $48                                       ; $69D1: $C6 $48
    ld c, a                                       ; $69D3: $4F
    ld a, [$D686]                                 ; $69D4: $FA $86 $D6
    add $40                                       ; $69D7: $C6 $40
    cp c                                          ; $69D9: $B9
    jr nc, jr_03D_69F7                            ; $69DA: $30 $1B

    ld hl, $0008                                  ; $69DC: $21 $08 $00
    add hl, de                                    ; $69DF: $19
    ld bc, $0080                                  ; $69E0: $01 $80 $00
    ld [hl], c                                    ; $69E3: $71
    inc hl                                        ; $69E4: $23
    ld [hl], b                                    ; $69E5: $70
    ld hl, $000A                                  ; $69E6: $21 $0A $00
    add hl, de                                    ; $69E9: $19
    ld bc, $0000                                  ; $69EA: $01 $00 $00
    ld [hl], c                                    ; $69ED: $71
    inc hl                                        ; $69EE: $23
    ld [hl], b                                    ; $69EF: $70
    ld hl, $0031                                  ; $69F0: $21 $31 $00
    add hl, de                                    ; $69F3: $19
    ld a, $FF                                     ; $69F4: $3E $FF
    ld [hl], a                                    ; $69F6: $77

jr_03D_69F7:
    jp Jump_03D_6763                              ; $69F7: $C3 $63 $67


Jump_03D_69FA:
    pop de                                        ; $69FA: $D1
    push de                                       ; $69FB: $D5
    ld hl, $0029                                  ; $69FC: $21 $29 $00
    add hl, de                                    ; $69FF: $19
    ld a, [hl]                                    ; $6A00: $7E
    add a                                         ; $6A01: $87
    jp nc, Jump_03D_6A1C                          ; $6A02: $D2 $1C $6A

    srl a                                         ; $6A05: $CB $3F
    ld [hl], a                                    ; $6A07: $77
    ld hl, $0008                                  ; $6A08: $21 $08 $00
    add hl, de                                    ; $6A0B: $19
    ld bc, $0000                                  ; $6A0C: $01 $00 $00
    ld [hl], c                                    ; $6A0F: $71
    inc hl                                        ; $6A10: $23
    ld [hl], b                                    ; $6A11: $70
    ld hl, $000A                                  ; $6A12: $21 $0A $00
    add hl, de                                    ; $6A15: $19
    ld bc, $0140                                  ; $6A16: $01 $40 $01
    ld [hl], c                                    ; $6A19: $71
    inc hl                                        ; $6A1A: $23
    ld [hl], b                                    ; $6A1B: $70

Jump_03D_6A1C:
    pop de                                        ; $6A1C: $D1
    push de                                       ; $6A1D: $D5
    ld hl, $0031                                  ; $6A1E: $21 $31 $00
    add hl, de                                    ; $6A21: $19
    ld a, [hl]                                    ; $6A22: $7E
    or a                                          ; $6A23: $B7
    jr nz, jr_03D_6A51                            ; $6A24: $20 $2B

    ld hl, $0006                                  ; $6A26: $21 $06 $00
    add hl, de                                    ; $6A29: $19
    ld a, [hl]                                    ; $6A2A: $7E
    add $48                                       ; $6A2B: $C6 $48
    ld c, a                                       ; $6A2D: $4F
    ld a, [$D686]                                 ; $6A2E: $FA $86 $D6
    add $40                                       ; $6A31: $C6 $40
    cp c                                          ; $6A33: $B9
    jr nc, jr_03D_6A51                            ; $6A34: $30 $1B

    ld hl, $0008                                  ; $6A36: $21 $08 $00
    add hl, de                                    ; $6A39: $19
    ld bc, $FF80                                  ; $6A3A: $01 $80 $FF
    ld [hl], c                                    ; $6A3D: $71
    inc hl                                        ; $6A3E: $23
    ld [hl], b                                    ; $6A3F: $70
    ld hl, $000A                                  ; $6A40: $21 $0A $00
    add hl, de                                    ; $6A43: $19
    ld bc, $0000                                  ; $6A44: $01 $00 $00
    ld [hl], c                                    ; $6A47: $71
    inc hl                                        ; $6A48: $23
    ld [hl], b                                    ; $6A49: $70
    ld hl, $0031                                  ; $6A4A: $21 $31 $00
    add hl, de                                    ; $6A4D: $19
    ld a, $FF                                     ; $6A4E: $3E $FF
    ld [hl], a                                    ; $6A50: $77

jr_03D_6A51:
    jp Jump_03D_6763                              ; $6A51: $C3 $63 $67


Jump_03D_6A54:
    pop de                                        ; $6A54: $D1
    push de                                       ; $6A55: $D5
    ld hl, $0029                                  ; $6A56: $21 $29 $00
    add hl, de                                    ; $6A59: $19
    ld a, [hl]                                    ; $6A5A: $7E
    add a                                         ; $6A5B: $87
    jp nc, Jump_03D_6763                          ; $6A5C: $D2 $63 $67

    srl a                                         ; $6A5F: $CB $3F
    ld [hl], a                                    ; $6A61: $77
    ld hl, $0008                                  ; $6A62: $21 $08 $00
    add hl, de                                    ; $6A65: $19
    ld bc, $00C0                                  ; $6A66: $01 $C0 $00
    ld [hl], c                                    ; $6A69: $71
    inc hl                                        ; $6A6A: $23
    ld [hl], b                                    ; $6A6B: $70
    jp Jump_03D_6759                              ; $6A6C: $C3 $59 $67


Jump_03D_6A6F:
    pop de                                        ; $6A6F: $D1
    push de                                       ; $6A70: $D5
    ld hl, $0029                                  ; $6A71: $21 $29 $00
    add hl, de                                    ; $6A74: $19
    ld a, [hl]                                    ; $6A75: $7E
    add a                                         ; $6A76: $87
    jp nc, Jump_03D_6763                          ; $6A77: $D2 $63 $67

    srl a                                         ; $6A7A: $CB $3F
    ld [hl], a                                    ; $6A7C: $77
    ld hl, $0008                                  ; $6A7D: $21 $08 $00
    add hl, de                                    ; $6A80: $19
    ld bc, $FF40                                  ; $6A81: $01 $40 $FF
    ld [hl], c                                    ; $6A84: $71
    inc hl                                        ; $6A85: $23
    ld [hl], b                                    ; $6A86: $70
    jp Jump_03D_6759                              ; $6A87: $C3 $59 $67


Jump_03D_6A8A:
    pop de                                        ; $6A8A: $D1
    push de                                       ; $6A8B: $D5
    ld hl, $0029                                  ; $6A8C: $21 $29 $00
    add hl, de                                    ; $6A8F: $19
    ld a, [hl]                                    ; $6A90: $7E
    add a                                         ; $6A91: $87
    jp nc, Jump_03D_6763                          ; $6A92: $D2 $63 $67

    srl a                                         ; $6A95: $CB $3F
    ld [hl], a                                    ; $6A97: $77
    ld hl, $0008                                  ; $6A98: $21 $08 $00
    add hl, de                                    ; $6A9B: $19
    ld bc, $0030                                  ; $6A9C: $01 $30 $00
    ld [hl], c                                    ; $6A9F: $71
    inc hl                                        ; $6AA0: $23
    ld [hl], b                                    ; $6AA1: $70
    jp Jump_03D_6759                              ; $6AA2: $C3 $59 $67


Jump_03D_6AA5:
    pop de                                        ; $6AA5: $D1
    push de                                       ; $6AA6: $D5
    ld hl, $0029                                  ; $6AA7: $21 $29 $00
    add hl, de                                    ; $6AAA: $19
    ld a, [hl]                                    ; $6AAB: $7E
    add a                                         ; $6AAC: $87
    jp nc, Jump_03D_6763                          ; $6AAD: $D2 $63 $67

    srl a                                         ; $6AB0: $CB $3F
    ld [hl], a                                    ; $6AB2: $77
    ld hl, $0008                                  ; $6AB3: $21 $08 $00
    add hl, de                                    ; $6AB6: $19
    ld bc, $FFD0                                  ; $6AB7: $01 $D0 $FF
    ld [hl], c                                    ; $6ABA: $71
    inc hl                                        ; $6ABB: $23
    ld [hl], b                                    ; $6ABC: $70
    jp Jump_03D_6759                              ; $6ABD: $C3 $59 $67


Jump_03D_6AC0:
    pop de                                        ; $6AC0: $D1
    push de                                       ; $6AC1: $D5
    ld hl, $0029                                  ; $6AC2: $21 $29 $00
    add hl, de                                    ; $6AC5: $19
    ld a, [hl]                                    ; $6AC6: $7E
    add a                                         ; $6AC7: $87
    jp nc, Jump_03D_6AE2                          ; $6AC8: $D2 $E2 $6A

    srl a                                         ; $6ACB: $CB $3F
    ld [hl], a                                    ; $6ACD: $77
    ld hl, $0008                                  ; $6ACE: $21 $08 $00
    add hl, de                                    ; $6AD1: $19
    ld bc, $0100                                  ; $6AD2: $01 $00 $01
    ld [hl], c                                    ; $6AD5: $71
    inc hl                                        ; $6AD6: $23
    ld [hl], b                                    ; $6AD7: $70
    ld hl, $000A                                  ; $6AD8: $21 $0A $00
    add hl, de                                    ; $6ADB: $19
    ld bc, $0000                                  ; $6ADC: $01 $00 $00
    ld [hl], c                                    ; $6ADF: $71
    inc hl                                        ; $6AE0: $23
    ld [hl], b                                    ; $6AE1: $70

Jump_03D_6AE2:
    jp Jump_03D_6763                              ; $6AE2: $C3 $63 $67


Jump_03D_6AE5:
    pop de                                        ; $6AE5: $D1
    push de                                       ; $6AE6: $D5
    ld hl, $0029                                  ; $6AE7: $21 $29 $00
    add hl, de                                    ; $6AEA: $19
    ld a, [hl]                                    ; $6AEB: $7E
    add a                                         ; $6AEC: $87
    jp nc, Jump_03D_6B07                          ; $6AED: $D2 $07 $6B

    srl a                                         ; $6AF0: $CB $3F
    ld [hl], a                                    ; $6AF2: $77
    ld hl, $0008                                  ; $6AF3: $21 $08 $00
    add hl, de                                    ; $6AF6: $19
    ld bc, $FF00                                  ; $6AF7: $01 $00 $FF
    ld [hl], c                                    ; $6AFA: $71
    inc hl                                        ; $6AFB: $23
    ld [hl], b                                    ; $6AFC: $70
    ld hl, $000A                                  ; $6AFD: $21 $0A $00
    add hl, de                                    ; $6B00: $19
    ld bc, $0000                                  ; $6B01: $01 $00 $00
    ld [hl], c                                    ; $6B04: $71
    inc hl                                        ; $6B05: $23
    ld [hl], b                                    ; $6B06: $70

Jump_03D_6B07:
    jp Jump_03D_6763                              ; $6B07: $C3 $63 $67


Jump_03D_6B0A:
    pop de                                        ; $6B0A: $D1
    push de                                       ; $6B0B: $D5
    ld hl, $0029                                  ; $6B0C: $21 $29 $00
    add hl, de                                    ; $6B0F: $19
    ld a, [hl]                                    ; $6B10: $7E
    add a                                         ; $6B11: $87
    jp nc, Jump_03D_6B18                          ; $6B12: $D2 $18 $6B

    srl a                                         ; $6B15: $CB $3F
    ld [hl], a                                    ; $6B17: $77

Jump_03D_6B18:
    ld hl, $0031                                  ; $6B18: $21 $31 $00
    add hl, de                                    ; $6B1B: $19
    ld a, [hl]                                    ; $6B1C: $7E
    or a                                          ; $6B1D: $B7
    jp nz, Jump_03D_6BE0                          ; $6B1E: $C2 $E0 $6B

    ld hl, $0006                                  ; $6B21: $21 $06 $00
    add hl, de                                    ; $6B24: $19
    ld a, [hl]                                    ; $6B25: $7E
    add $40                                       ; $6B26: $C6 $40
    ld c, a                                       ; $6B28: $4F
    ld a, [$D686]                                 ; $6B29: $FA $86 $D6
    add $40                                       ; $6B2C: $C6 $40
    cp c                                          ; $6B2E: $B9
    jp nc, Jump_03D_6B50                          ; $6B2F: $D2 $50 $6B

    ld hl, $0008                                  ; $6B32: $21 $08 $00
    add hl, de                                    ; $6B35: $19
    ld bc, $0000                                  ; $6B36: $01 $00 $00
    ld [hl], c                                    ; $6B39: $71
    inc hl                                        ; $6B3A: $23
    ld [hl], b                                    ; $6B3B: $70
    ld hl, $000A                                  ; $6B3C: $21 $0A $00
    add hl, de                                    ; $6B3F: $19
    ld bc, $0200                                  ; $6B40: $01 $00 $02
    ld [hl], c                                    ; $6B43: $71
    inc hl                                        ; $6B44: $23
    ld [hl], b                                    ; $6B45: $70
    ld hl, $0031                                  ; $6B46: $21 $31 $00
    add hl, de                                    ; $6B49: $19
    ld a, $FF                                     ; $6B4A: $3E $FF
    ld [hl], a                                    ; $6B4C: $77
    jp Jump_03D_6BE0                              ; $6B4D: $C3 $E0 $6B


Jump_03D_6B50:
    ld hl, $0004                                  ; $6B50: $21 $04 $00
    add hl, de                                    ; $6B53: $19
    ld a, [hl]                                    ; $6B54: $7E
    add $40                                       ; $6B55: $C6 $40
    ld c, a                                       ; $6B57: $4F
    ld a, [$D684]                                 ; $6B58: $FA $84 $D6
    add $40                                       ; $6B5B: $C6 $40
    sub c                                         ; $6B5D: $91
    jr z, jr_03D_6B9E                             ; $6B5E: $28 $3E

    jr c, jr_03D_6B80                             ; $6B60: $38 $1E

    ld b, a                                       ; $6B62: $47
    ld c, $00                                     ; $6B63: $0E $00
    sra b                                         ; $6B65: $CB $28
    rr c                                          ; $6B67: $CB $19
    sra b                                         ; $6B69: $CB $28
    rr c                                          ; $6B6B: $CB $19
    sra b                                         ; $6B6D: $CB $28
    rr c                                          ; $6B6F: $CB $19
    sra b                                         ; $6B71: $CB $28
    rr c                                          ; $6B73: $CB $19
    sra b                                         ; $6B75: $CB $28
    rr c                                          ; $6B77: $CB $19
    ld a, c                                       ; $6B79: $79
    or b                                          ; $6B7A: $B0
    jr nz, jr_03D_6BA1                            ; $6B7B: $20 $24

    inc c                                         ; $6B7D: $0C
    jr jr_03D_6BA1                                ; $6B7E: $18 $21

jr_03D_6B80:
    ld b, a                                       ; $6B80: $47
    ld c, $00                                     ; $6B81: $0E $00
    sra b                                         ; $6B83: $CB $28
    rr c                                          ; $6B85: $CB $19
    sra b                                         ; $6B87: $CB $28
    rr c                                          ; $6B89: $CB $19
    sra b                                         ; $6B8B: $CB $28
    rr c                                          ; $6B8D: $CB $19
    sra b                                         ; $6B8F: $CB $28
    rr c                                          ; $6B91: $CB $19
    sra b                                         ; $6B93: $CB $28
    rr c                                          ; $6B95: $CB $19
    ld a, c                                       ; $6B97: $79
    or b                                          ; $6B98: $B0
    jr nz, jr_03D_6BA1                            ; $6B99: $20 $06

    dec c                                         ; $6B9B: $0D
    jr jr_03D_6BA1                                ; $6B9C: $18 $03

jr_03D_6B9E:
    ld bc, $0000                                  ; $6B9E: $01 $00 $00

jr_03D_6BA1:
    ld hl, $0008                                  ; $6BA1: $21 $08 $00
    add hl, de                                    ; $6BA4: $19
    ld [hl], c                                    ; $6BA5: $71
    inc hl                                        ; $6BA6: $23
    ld [hl], b                                    ; $6BA7: $70
    ld hl, $0006                                  ; $6BA8: $21 $06 $00
    add hl, de                                    ; $6BAB: $19
    ld a, [hl]                                    ; $6BAC: $7E
    add $40                                       ; $6BAD: $C6 $40
    ld c, a                                       ; $6BAF: $4F
    ld a, [$D686]                                 ; $6BB0: $FA $86 $D6
    add $40                                       ; $6BB3: $C6 $40
    sub c                                         ; $6BB5: $91
    jr c, jr_03D_6BD6                             ; $6BB6: $38 $1E

    ld b, a                                       ; $6BB8: $47
    ld c, $00                                     ; $6BB9: $0E $00
    srl b                                         ; $6BBB: $CB $38
    rr c                                          ; $6BBD: $CB $19
    srl b                                         ; $6BBF: $CB $38
    rr c                                          ; $6BC1: $CB $19
    srl b                                         ; $6BC3: $CB $38
    rr c                                          ; $6BC5: $CB $19
    srl b                                         ; $6BC7: $CB $38
    rr c                                          ; $6BC9: $CB $19
    srl b                                         ; $6BCB: $CB $38
    rr c                                          ; $6BCD: $CB $19
    ld a, c                                       ; $6BCF: $79
    or b                                          ; $6BD0: $B0
    jr nz, jr_03D_6BD9                            ; $6BD1: $20 $06

    inc c                                         ; $6BD3: $0C
    jr jr_03D_6BD9                                ; $6BD4: $18 $03

jr_03D_6BD6:
    ld bc, $0080                                  ; $6BD6: $01 $80 $00

jr_03D_6BD9:
    ld hl, $000A                                  ; $6BD9: $21 $0A $00
    add hl, de                                    ; $6BDC: $19
    ld [hl], c                                    ; $6BDD: $71
    inc hl                                        ; $6BDE: $23
    ld [hl], b                                    ; $6BDF: $70

Jump_03D_6BE0:
    jp Jump_03D_6763                              ; $6BE0: $C3 $63 $67


Jump_03D_6BE3:
    pop de                                        ; $6BE3: $D1
    push de                                       ; $6BE4: $D5
    ld hl, $0029                                  ; $6BE5: $21 $29 $00
    add hl, de                                    ; $6BE8: $19
    ld a, [hl]                                    ; $6BE9: $7E
    add a                                         ; $6BEA: $87
    jp nc, Jump_03D_6BF1                          ; $6BEB: $D2 $F1 $6B

    srl a                                         ; $6BEE: $CB $3F
    ld [hl], a                                    ; $6BF0: $77

Jump_03D_6BF1:
    ld hl, $0031                                  ; $6BF1: $21 $31 $00
    add hl, de                                    ; $6BF4: $19
    ld a, [hl]                                    ; $6BF5: $7E
    or a                                          ; $6BF6: $B7
    jp nz, Jump_03D_6CC5                          ; $6BF7: $C2 $C5 $6C

    ld hl, $0006                                  ; $6BFA: $21 $06 $00
    add hl, de                                    ; $6BFD: $19
    ld a, [hl]                                    ; $6BFE: $7E
    add $40                                       ; $6BFF: $C6 $40
    ld c, a                                       ; $6C01: $4F
    ld a, [$D686]                                 ; $6C02: $FA $86 $D6
    add $40                                       ; $6C05: $C6 $40
    cp c                                          ; $6C07: $B9
    jp nc, Jump_03D_6C29                          ; $6C08: $D2 $29 $6C

    ld hl, $0008                                  ; $6C0B: $21 $08 $00
    add hl, de                                    ; $6C0E: $19
    ld bc, $0000                                  ; $6C0F: $01 $00 $00
    ld [hl], c                                    ; $6C12: $71
    inc hl                                        ; $6C13: $23
    ld [hl], b                                    ; $6C14: $70
    ld hl, $000A                                  ; $6C15: $21 $0A $00
    add hl, de                                    ; $6C18: $19
    ld bc, $0100                                  ; $6C19: $01 $00 $01
    ld [hl], c                                    ; $6C1C: $71
    inc hl                                        ; $6C1D: $23
    ld [hl], b                                    ; $6C1E: $70
    ld hl, $0031                                  ; $6C1F: $21 $31 $00
    add hl, de                                    ; $6C22: $19
    ld a, $FF                                     ; $6C23: $3E $FF
    ld [hl], a                                    ; $6C25: $77
    jp Jump_03D_6CC5                              ; $6C26: $C3 $C5 $6C


Jump_03D_6C29:
    ld hl, $0004                                  ; $6C29: $21 $04 $00
    add hl, de                                    ; $6C2C: $19
    ld a, [hl]                                    ; $6C2D: $7E
    add $40                                       ; $6C2E: $C6 $40
    ld c, a                                       ; $6C30: $4F
    ld a, [$D684]                                 ; $6C31: $FA $84 $D6
    add $40                                       ; $6C34: $C6 $40
    sub c                                         ; $6C36: $91
    jr z, jr_03D_6C7F                             ; $6C37: $28 $46

    jr c, jr_03D_6C5D                             ; $6C39: $38 $22

    ld b, a                                       ; $6C3B: $47
    ld c, $00                                     ; $6C3C: $0E $00
    sra b                                         ; $6C3E: $CB $28
    rr c                                          ; $6C40: $CB $19
    sra b                                         ; $6C42: $CB $28
    rr c                                          ; $6C44: $CB $19
    sra b                                         ; $6C46: $CB $28
    rr c                                          ; $6C48: $CB $19
    sra b                                         ; $6C4A: $CB $28
    rr c                                          ; $6C4C: $CB $19
    sra b                                         ; $6C4E: $CB $28
    rr c                                          ; $6C50: $CB $19
    sra b                                         ; $6C52: $CB $28
    rr c                                          ; $6C54: $CB $19
    ld a, c                                       ; $6C56: $79
    or b                                          ; $6C57: $B0
    jr nz, jr_03D_6C82                            ; $6C58: $20 $28

    inc c                                         ; $6C5A: $0C
    jr jr_03D_6C82                                ; $6C5B: $18 $25

jr_03D_6C5D:
    ld b, a                                       ; $6C5D: $47
    ld c, $00                                     ; $6C5E: $0E $00
    sra b                                         ; $6C60: $CB $28
    rr c                                          ; $6C62: $CB $19
    sra b                                         ; $6C64: $CB $28
    rr c                                          ; $6C66: $CB $19
    sra b                                         ; $6C68: $CB $28
    rr c                                          ; $6C6A: $CB $19
    sra b                                         ; $6C6C: $CB $28
    rr c                                          ; $6C6E: $CB $19
    sra b                                         ; $6C70: $CB $28
    rr c                                          ; $6C72: $CB $19
    sra b                                         ; $6C74: $CB $28
    rr c                                          ; $6C76: $CB $19
    ld a, c                                       ; $6C78: $79
    or b                                          ; $6C79: $B0
    jr nz, jr_03D_6C82                            ; $6C7A: $20 $06

    dec c                                         ; $6C7C: $0D
    jr jr_03D_6C82                                ; $6C7D: $18 $03

jr_03D_6C7F:
    ld bc, $0000                                  ; $6C7F: $01 $00 $00

jr_03D_6C82:
    ld hl, $0008                                  ; $6C82: $21 $08 $00
    add hl, de                                    ; $6C85: $19
    ld [hl], c                                    ; $6C86: $71
    inc hl                                        ; $6C87: $23
    ld [hl], b                                    ; $6C88: $70
    ld hl, $0006                                  ; $6C89: $21 $06 $00
    add hl, de                                    ; $6C8C: $19
    ld a, [hl]                                    ; $6C8D: $7E
    add $40                                       ; $6C8E: $C6 $40
    ld c, a                                       ; $6C90: $4F
    ld a, [$D686]                                 ; $6C91: $FA $86 $D6
    add $40                                       ; $6C94: $C6 $40
    sub c                                         ; $6C96: $91
    jr c, jr_03D_6CBB                             ; $6C97: $38 $22

    ld b, a                                       ; $6C99: $47
    ld c, $00                                     ; $6C9A: $0E $00
    srl b                                         ; $6C9C: $CB $38
    rr c                                          ; $6C9E: $CB $19
    srl b                                         ; $6CA0: $CB $38
    rr c                                          ; $6CA2: $CB $19
    srl b                                         ; $6CA4: $CB $38
    rr c                                          ; $6CA6: $CB $19
    srl b                                         ; $6CA8: $CB $38
    rr c                                          ; $6CAA: $CB $19
    srl b                                         ; $6CAC: $CB $38
    rr c                                          ; $6CAE: $CB $19
    srl b                                         ; $6CB0: $CB $38
    rr c                                          ; $6CB2: $CB $19
    ld a, c                                       ; $6CB4: $79
    or b                                          ; $6CB5: $B0
    jr nz, jr_03D_6CBE                            ; $6CB6: $20 $06

    inc c                                         ; $6CB8: $0C
    jr jr_03D_6CBE                                ; $6CB9: $18 $03

jr_03D_6CBB:
    ld bc, $0040                                  ; $6CBB: $01 $40 $00

jr_03D_6CBE:
    ld hl, $000A                                  ; $6CBE: $21 $0A $00
    add hl, de                                    ; $6CC1: $19
    ld [hl], c                                    ; $6CC2: $71
    inc hl                                        ; $6CC3: $23
    ld [hl], b                                    ; $6CC4: $70

Jump_03D_6CC5:
    jp Jump_03D_6763                              ; $6CC5: $C3 $63 $67


Jump_03D_6CC8:
    pop de                                        ; $6CC8: $D1
    push de                                       ; $6CC9: $D5
    ld hl, $0029                                  ; $6CCA: $21 $29 $00
    add hl, de                                    ; $6CCD: $19
    ld a, [hl]                                    ; $6CCE: $7E
    add a                                         ; $6CCF: $87
    jp nc, Jump_03D_6CEA                          ; $6CD0: $D2 $EA $6C

    srl a                                         ; $6CD3: $CB $3F
    ld [hl], a                                    ; $6CD5: $77
    ld hl, $0008                                  ; $6CD6: $21 $08 $00
    add hl, de                                    ; $6CD9: $19
    ld bc, $0040                                  ; $6CDA: $01 $40 $00
    ld [hl], c                                    ; $6CDD: $71
    inc hl                                        ; $6CDE: $23
    ld [hl], b                                    ; $6CDF: $70

Jump_03D_6CE0:
    ld hl, $000A                                  ; $6CE0: $21 $0A $00
    add hl, de                                    ; $6CE3: $19
    ld bc, $0000                                  ; $6CE4: $01 $00 $00
    ld [hl], c                                    ; $6CE7: $71
    inc hl                                        ; $6CE8: $23
    ld [hl], b                                    ; $6CE9: $70

Jump_03D_6CEA:
    pop de                                        ; $6CEA: $D1
    push de                                       ; $6CEB: $D5
    ld hl, $002A                                  ; $6CEC: $21 $2A $00
    add hl, de                                    ; $6CEF: $19
    ld a, [hl]                                    ; $6CF0: $7E
    or a                                          ; $6CF1: $B7
    jp nz, Jump_03D_6763                          ; $6CF2: $C2 $63 $67

    inc hl                                        ; $6CF5: $23
    inc hl                                        ; $6CF6: $23
    ld a, [hl]                                    ; $6CF7: $7E
    or a                                          ; $6CF8: $B7
    jp nz, Jump_03D_6763                          ; $6CF9: $C2 $63 $67

    ld a, $CF                                     ; $6CFC: $3E $CF
    ld [hl], a                                    ; $6CFE: $77
    call Call_03D_7175                            ; $6CFF: $CD $75 $71
    jp Jump_03D_6763                              ; $6D02: $C3 $63 $67


Jump_03D_6D05:
    pop de                                        ; $6D05: $D1
    push de                                       ; $6D06: $D5
    ld hl, $0029                                  ; $6D07: $21 $29 $00
    add hl, de                                    ; $6D0A: $19
    ld a, [hl]                                    ; $6D0B: $7E
    add a                                         ; $6D0C: $87
    jp nc, Jump_03D_6CEA                          ; $6D0D: $D2 $EA $6C

    srl a                                         ; $6D10: $CB $3F
    ld [hl], a                                    ; $6D12: $77
    ld hl, $0008                                  ; $6D13: $21 $08 $00
    add hl, de                                    ; $6D16: $19
    ld bc, $FFC0                                  ; $6D17: $01 $C0 $FF
    ld [hl], c                                    ; $6D1A: $71
    inc hl                                        ; $6D1B: $23
    ld [hl], b                                    ; $6D1C: $70
    jp Jump_03D_6CE0                              ; $6D1D: $C3 $E0 $6C


Jump_03D_6D20:
    pop de                                        ; $6D20: $D1
    push de                                       ; $6D21: $D5
    ld hl, $0029                                  ; $6D22: $21 $29 $00
    add hl, de                                    ; $6D25: $19
    ld a, [hl]                                    ; $6D26: $7E
    add a                                         ; $6D27: $87
    jr nc, jr_03D_6D41                            ; $6D28: $30 $17

    srl a                                         ; $6D2A: $CB $3F
    ld [hl], a                                    ; $6D2C: $77
    ld hl, $0008                                  ; $6D2D: $21 $08 $00
    add hl, de                                    ; $6D30: $19
    ld bc, $0000                                  ; $6D31: $01 $00 $00
    ld [hl], c                                    ; $6D34: $71
    inc hl                                        ; $6D35: $23
    ld [hl], b                                    ; $6D36: $70
    ld hl, $000A                                  ; $6D37: $21 $0A $00
    add hl, de                                    ; $6D3A: $19
    ld bc, $0180                                  ; $6D3B: $01 $80 $01
    ld [hl], c                                    ; $6D3E: $71
    inc hl                                        ; $6D3F: $23
    ld [hl], b                                    ; $6D40: $70

jr_03D_6D41:
    pop de                                        ; $6D41: $D1
    push de                                       ; $6D42: $D5
    ld hl, $0031                                  ; $6D43: $21 $31 $00
    add hl, de                                    ; $6D46: $19
    ld a, [hl]                                    ; $6D47: $7E
    or a                                          ; $6D48: $B7
    jp nz, Jump_03D_6D76                          ; $6D49: $C2 $76 $6D

    ld hl, $0006                                  ; $6D4C: $21 $06 $00
    add hl, de                                    ; $6D4F: $19
    ld a, [hl]                                    ; $6D50: $7E
    add $40                                       ; $6D51: $C6 $40
    cp $88                                        ; $6D53: $FE $88
    jp c, Jump_03D_6D76                           ; $6D55: $DA $76 $6D

    ld hl, $0008                                  ; $6D58: $21 $08 $00
    add hl, de                                    ; $6D5B: $19
    ld bc, $0080                                  ; $6D5C: $01 $80 $00
    ld [hl], c                                    ; $6D5F: $71
    inc hl                                        ; $6D60: $23
    ld [hl], b                                    ; $6D61: $70
    ld hl, $000A                                  ; $6D62: $21 $0A $00
    add hl, de                                    ; $6D65: $19
    ld bc, $FFC0                                  ; $6D66: $01 $C0 $FF
    ld [hl], c                                    ; $6D69: $71
    inc hl                                        ; $6D6A: $23
    ld [hl], b                                    ; $6D6B: $70
    ld hl, $0031                                  ; $6D6C: $21 $31 $00
    add hl, de                                    ; $6D6F: $19
    ld a, $FF                                     ; $6D70: $3E $FF
    ld [hl], a                                    ; $6D72: $77
    call Call_03D_7175                            ; $6D73: $CD $75 $71

Jump_03D_6D76:
    jp Jump_03D_6763                              ; $6D76: $C3 $63 $67


Jump_03D_6D79:
    pop de                                        ; $6D79: $D1
    push de                                       ; $6D7A: $D5
    ld hl, $0029                                  ; $6D7B: $21 $29 $00
    add hl, de                                    ; $6D7E: $19
    ld a, [hl]                                    ; $6D7F: $7E
    add a                                         ; $6D80: $87
    jr nc, jr_03D_6D9A                            ; $6D81: $30 $17

    srl a                                         ; $6D83: $CB $3F
    ld [hl], a                                    ; $6D85: $77
    ld hl, $0008                                  ; $6D86: $21 $08 $00
    add hl, de                                    ; $6D89: $19
    ld bc, $0000                                  ; $6D8A: $01 $00 $00
    ld [hl], c                                    ; $6D8D: $71
    inc hl                                        ; $6D8E: $23
    ld [hl], b                                    ; $6D8F: $70
    ld hl, $000A                                  ; $6D90: $21 $0A $00
    add hl, de                                    ; $6D93: $19
    ld bc, $0180                                  ; $6D94: $01 $80 $01
    ld [hl], c                                    ; $6D97: $71
    inc hl                                        ; $6D98: $23
    ld [hl], b                                    ; $6D99: $70

jr_03D_6D9A:
    pop de                                        ; $6D9A: $D1
    push de                                       ; $6D9B: $D5
    ld hl, $0031                                  ; $6D9C: $21 $31 $00
    add hl, de                                    ; $6D9F: $19
    ld a, [hl]                                    ; $6DA0: $7E
    or a                                          ; $6DA1: $B7
    jp nz, Jump_03D_6DCF                          ; $6DA2: $C2 $CF $6D

    ld hl, $0006                                  ; $6DA5: $21 $06 $00
    add hl, de                                    ; $6DA8: $19
    ld a, [hl]                                    ; $6DA9: $7E
    add $40                                       ; $6DAA: $C6 $40
    cp $88                                        ; $6DAC: $FE $88
    jp c, Jump_03D_6DCF                           ; $6DAE: $DA $CF $6D

    ld hl, $0008                                  ; $6DB1: $21 $08 $00
    add hl, de                                    ; $6DB4: $19
    ld bc, $FF80                                  ; $6DB5: $01 $80 $FF
    ld [hl], c                                    ; $6DB8: $71
    inc hl                                        ; $6DB9: $23
    ld [hl], b                                    ; $6DBA: $70
    ld hl, $000A                                  ; $6DBB: $21 $0A $00
    add hl, de                                    ; $6DBE: $19
    ld bc, $FFC0                                  ; $6DBF: $01 $C0 $FF
    ld [hl], c                                    ; $6DC2: $71
    inc hl                                        ; $6DC3: $23
    ld [hl], b                                    ; $6DC4: $70
    ld hl, $0031                                  ; $6DC5: $21 $31 $00
    add hl, de                                    ; $6DC8: $19
    ld a, $FF                                     ; $6DC9: $3E $FF
    ld [hl], a                                    ; $6DCB: $77
    call Call_03D_7175                            ; $6DCC: $CD $75 $71

Jump_03D_6DCF:
    jp Jump_03D_6763                              ; $6DCF: $C3 $63 $67


Jump_03D_6DD2:
    pop de                                        ; $6DD2: $D1
    push de                                       ; $6DD3: $D5
    ld hl, $0029                                  ; $6DD4: $21 $29 $00
    add hl, de                                    ; $6DD7: $19
    ld a, [hl]                                    ; $6DD8: $7E
    add a                                         ; $6DD9: $87
    jp nc, Jump_03D_6E12                          ; $6DDA: $D2 $12 $6E

    srl a                                         ; $6DDD: $CB $3F
    ld [hl], a                                    ; $6DDF: $77
    ld bc, $6468                                  ; $6DE0: $01 $68 $64
    ld hl, $0012                                  ; $6DE3: $21 $12 $00
    add hl, de                                    ; $6DE6: $19
    ld [hl], c                                    ; $6DE7: $71
    inc hl                                        ; $6DE8: $23
    ld [hl], b                                    ; $6DE9: $70
    ld hl, $0014                                  ; $6DEA: $21 $14 $00
    add hl, de                                    ; $6DED: $19
    xor a                                         ; $6DEE: $AF
    ld [hl], a                                    ; $6DEF: $77
    ld hl, $0000                                  ; $6DF0: $21 $00 $00
    add hl, de                                    ; $6DF3: $19
    ld a, [hl]                                    ; $6DF4: $7E
    and $EF                                       ; $6DF5: $E6 $EF
    ld [hl], a                                    ; $6DF7: $77
    ld hl, $002E                                  ; $6DF8: $21 $2E $00
    add hl, de                                    ; $6DFB: $19
    xor a                                         ; $6DFC: $AF
    ld [hl], a                                    ; $6DFD: $77
    ld hl, $0008                                  ; $6DFE: $21 $08 $00
    add hl, de                                    ; $6E01: $19
    ld bc, $0000                                  ; $6E02: $01 $00 $00
    ld [hl], c                                    ; $6E05: $71
    inc hl                                        ; $6E06: $23
    ld [hl], b                                    ; $6E07: $70
    ld hl, $000A                                  ; $6E08: $21 $0A $00
    add hl, de                                    ; $6E0B: $19
    ld bc, $0080                                  ; $6E0C: $01 $80 $00
    ld [hl], c                                    ; $6E0F: $71
    inc hl                                        ; $6E10: $23
    ld [hl], b                                    ; $6E11: $70

Jump_03D_6E12:
    ld hl, $002A                                  ; $6E12: $21 $2A $00
    add hl, de                                    ; $6E15: $19
    ld a, $C8                                     ; $6E16: $3E $C8
    ld [hl+], a                                   ; $6E18: $22
    ld [hl], a                                    ; $6E19: $77
    ld hl, $002E                                  ; $6E1A: $21 $2E $00
    add hl, de                                    ; $6E1D: $19
    ld a, [hl]                                    ; $6E1E: $7E
    and $7F                                       ; $6E1F: $E6 $7F
    jr nz, jr_03D_6E4E                            ; $6E21: $20 $2B

    ld hl, $0006                                  ; $6E23: $21 $06 $00
    add hl, de                                    ; $6E26: $19
    ld a, [hl]                                    ; $6E27: $7E
    add $20                                       ; $6E28: $C6 $20
    cp $38                                        ; $6E2A: $FE $38
    jp c, Jump_03D_6E93                           ; $6E2C: $DA $93 $6E

    ld hl, $002E                                  ; $6E2F: $21 $2E $00
    add hl, de                                    ; $6E32: $19
    ld a, $01                                     ; $6E33: $3E $01
    ld [hl], $01                                  ; $6E35: $36 $01
    ld hl, $0008                                  ; $6E37: $21 $08 $00
    add hl, de                                    ; $6E3A: $19
    ld bc, $FC00                                  ; $6E3B: $01 $00 $FC
    ld [hl], c                                    ; $6E3E: $71
    inc hl                                        ; $6E3F: $23
    ld [hl], b                                    ; $6E40: $70
    ld hl, $000A                                  ; $6E41: $21 $0A $00
    add hl, de                                    ; $6E44: $19
    ld bc, $0000                                  ; $6E45: $01 $00 $00
    ld [hl], c                                    ; $6E48: $71
    inc hl                                        ; $6E49: $23
    ld [hl], b                                    ; $6E4A: $70
    jp Jump_03D_6E93                              ; $6E4B: $C3 $93 $6E


jr_03D_6E4E:
    ld a, [$C353]                                 ; $6E4E: $FA $53 $C3
    or a                                          ; $6E51: $B7
    jr nz, jr_03D_6E77                            ; $6E52: $20 $23

    ld hl, $0004                                  ; $6E54: $21 $04 $00
    add hl, de                                    ; $6E57: $19
    ld a, [hl]                                    ; $6E58: $7E
    ld bc, $0020                                  ; $6E59: $01 $20 $00
    cp $50                                        ; $6E5C: $FE $50
    jr c, jr_03D_6E63                             ; $6E5E: $38 $03

    ld bc, $FFE0                                  ; $6E60: $01 $E0 $FF

jr_03D_6E63:
    ld hl, $0008                                  ; $6E63: $21 $08 $00
    add hl, de                                    ; $6E66: $19
    push hl                                       ; $6E67: $E5
    push bc                                       ; $6E68: $C5
    ld c, [hl]                                    ; $6E69: $4E
    inc hl                                        ; $6E6A: $23
    ld b, [hl]                                    ; $6E6B: $46
    pop hl                                        ; $6E6C: $E1
    add hl, bc                                    ; $6E6D: $09
    ld c, l                                       ; $6E6E: $4D
    ld b, h                                       ; $6E6F: $44
    pop hl                                        ; $6E70: $E1
    ld [hl], c                                    ; $6E71: $71
    inc hl                                        ; $6E72: $23
    ld [hl], b                                    ; $6E73: $70
    jp Jump_03D_6E93                              ; $6E74: $C3 $93 $6E


jr_03D_6E77:
    ld hl, $000A                                  ; $6E77: $21 $0A $00
    add hl, de                                    ; $6E7A: $19
    push hl                                       ; $6E7B: $E5
    ld c, [hl]                                    ; $6E7C: $4E
    inc hl                                        ; $6E7D: $23
    ld b, [hl]                                    ; $6E7E: $46
    ld hl, $0002                                  ; $6E7F: $21 $02 $00
    add hl, bc                                    ; $6E82: $09
    ld c, l                                       ; $6E83: $4D
    ld b, h                                       ; $6E84: $44
    pop hl                                        ; $6E85: $E1
    ld [hl], c                                    ; $6E86: $71
    inc hl                                        ; $6E87: $23
    ld [hl], b                                    ; $6E88: $70
    ld hl, $0008                                  ; $6E89: $21 $08 $00
    add hl, de                                    ; $6E8C: $19
    ld bc, $0000                                  ; $6E8D: $01 $00 $00
    ld [hl], c                                    ; $6E90: $71
    inc hl                                        ; $6E91: $23
    ld [hl], b                                    ; $6E92: $70

Jump_03D_6E93:
    pop de                                        ; $6E93: $D1
    push de                                       ; $6E94: $D5
    call Call_03D_7243                            ; $6E95: $CD $43 $72
    call Call_03D_7204                            ; $6E98: $CD $04 $72
    ld a, [de]                                    ; $6E9B: $1A
    or a                                          ; $6E9C: $B7
    jp z, Jump_03D_6F36                           ; $6E9D: $CA $36 $6F

    pop de                                        ; $6EA0: $D1
    push de                                       ; $6EA1: $D5
    ld hl, $0004                                  ; $6EA2: $21 $04 $00
    add hl, de                                    ; $6EA5: $19
    ld c, [hl]                                    ; $6EA6: $4E
    ld hl, $0006                                  ; $6EA7: $21 $06 $00
    add hl, de                                    ; $6EAA: $19
    ld b, [hl]                                    ; $6EAB: $46
    ld a, [$D6C0]                                 ; $6EAC: $FA $C0 $D6
    add a                                         ; $6EAF: $87
    jr nc, jr_03D_6EC3                            ; $6EB0: $30 $11

    ld a, [$D6C4]                                 ; $6EB2: $FA $C4 $D6
    ld e, a                                       ; $6EB5: $5F
    ld a, [$D6C6]                                 ; $6EB6: $FA $C6 $D6
    ld d, a                                       ; $6EB9: $57
    call Call_03D_728D                            ; $6EBA: $CD $8D $72
    ld de, $D6EA                                  ; $6EBD: $11 $EA $D6
    or a                                          ; $6EC0: $B7
    jr nz, jr_03D_6EDD                            ; $6EC1: $20 $1A

jr_03D_6EC3:
    ld a, [$D700]                                 ; $6EC3: $FA $00 $D7
    add a                                         ; $6EC6: $87
    jr nc, jr_03D_6EF9                            ; $6EC7: $30 $30

    ld a, [$D704]                                 ; $6EC9: $FA $04 $D7
    ld e, a                                       ; $6ECC: $5F
    ld a, [$D706]                                 ; $6ECD: $FA $06 $D7
    ld d, a                                       ; $6ED0: $57
    call Call_03D_7278                            ; $6ED1: $CD $78 $72
    ld de, $D72A                                  ; $6ED4: $11 $2A $D7
    or a                                          ; $6ED7: $B7
    jr nz, jr_03D_6EDD                            ; $6ED8: $20 $03

    jp Jump_03D_6EF9                              ; $6EDA: $C3 $F9 $6E


jr_03D_6EDD:
    ld bc, $002A                                  ; $6EDD: $01 $2A $00
    pop hl                                        ; $6EE0: $E1
    push hl                                       ; $6EE1: $E5
    add hl, bc                                    ; $6EE2: $09
    ld a, [de]                                    ; $6EE3: $1A
    inc hl                                        ; $6EE4: $23
    ld c, [hl]                                    ; $6EE5: $4E
    sub c                                         ; $6EE6: $91
    jr nc, jr_03D_6EEA                            ; $6EE7: $30 $01

    xor a                                         ; $6EE9: $AF

jr_03D_6EEA:
    ld [de], a                                    ; $6EEA: $12
    ld a, [$C35D]                                 ; $6EEB: $FA $5D $C3
    add $03                                       ; $6EEE: $C6 $03
    daa                                           ; $6EF0: $27
    ld [$C35D], a                                 ; $6EF1: $EA $5D $C3
    ld a, $B1                                     ; $6EF4: $3E $B1
    call Call_000_1360                            ; $6EF6: $CD $60 $13

Jump_03D_6EF9:
jr_03D_6EF9:
    ld a, [$D680]                                 ; $6EF9: $FA $80 $D6
    add a                                         ; $6EFC: $87
    jr nc, jr_03D_6F36                            ; $6EFD: $30 $37

    ld a, [$D6AE]                                 ; $6EFF: $FA $AE $D6
    or a                                          ; $6F02: $B7
    jr nz, jr_03D_6F36                            ; $6F03: $20 $31

    pop de                                        ; $6F05: $D1
    push de                                       ; $6F06: $D5
    ld hl, $0004                                  ; $6F07: $21 $04 $00
    add hl, de                                    ; $6F0A: $19
    ld c, [hl]                                    ; $6F0B: $4E
    ld hl, $0006                                  ; $6F0C: $21 $06 $00
    add hl, de                                    ; $6F0F: $19
    ld b, [hl]                                    ; $6F10: $46
    ld a, [$D684]                                 ; $6F11: $FA $84 $D6
    ld e, a                                       ; $6F14: $5F
    ld a, [$D686]                                 ; $6F15: $FA $86 $D6
    ld d, a                                       ; $6F18: $57
    call Call_03D_7278                            ; $6F19: $CD $78 $72
    or a                                          ; $6F1C: $B7
    jr z, jr_03D_6F36                             ; $6F1D: $28 $17

    xor a                                         ; $6F1F: $AF
    ld [$D6AA], a                                 ; $6F20: $EA $AA $D6
    pop de                                        ; $6F23: $D1
    push de                                       ; $6F24: $D5
    ld [de], a                                    ; $6F25: $12
    ld hl, $C357                                  ; $6F26: $21 $57 $C3
    dec [hl]                                      ; $6F29: $35
    ld hl, $002E                                  ; $6F2A: $21 $2E $00
    add hl, de                                    ; $6F2D: $19
    ld a, $81                                     ; $6F2E: $3E $81
    ld [hl], a                                    ; $6F30: $77
    ld a, $B4                                     ; $6F31: $3E $B4
    call Call_000_1360                            ; $6F33: $CD $60 $13

Jump_03D_6F36:
jr_03D_6F36:
    pop hl                                        ; $6F36: $E1
    ret                                           ; $6F37: $C9


Jump_03D_6F38:
    pop de                                        ; $6F38: $D1
    push de                                       ; $6F39: $D5
    ld hl, $0029                                  ; $6F3A: $21 $29 $00
    add hl, de                                    ; $6F3D: $19
    ld a, [hl]                                    ; $6F3E: $7E
    add a                                         ; $6F3F: $87
    jp nc, Jump_03D_6F8B                          ; $6F40: $D2 $8B $6F

    srl a                                         ; $6F43: $CB $3F
    ld [hl], a                                    ; $6F45: $77
    ld bc, $65EA                                  ; $6F46: $01 $EA $65
    ld hl, $0012                                  ; $6F49: $21 $12 $00
    add hl, de                                    ; $6F4C: $19
    ld [hl], c                                    ; $6F4D: $71
    inc hl                                        ; $6F4E: $23
    ld [hl], b                                    ; $6F4F: $70
    ld hl, $0014                                  ; $6F50: $21 $14 $00
    add hl, de                                    ; $6F53: $19
    xor a                                         ; $6F54: $AF
    ld [hl], a                                    ; $6F55: $77
    ld hl, $0000                                  ; $6F56: $21 $00 $00
    add hl, de                                    ; $6F59: $19
    ld a, [hl]                                    ; $6F5A: $7E
    and $EF                                       ; $6F5B: $E6 $EF
    ld [hl], a                                    ; $6F5D: $77
    ld hl, $000E                                  ; $6F5E: $21 $0E $00
    add hl, de                                    ; $6F61: $19
    ld a, $C0                                     ; $6F62: $3E $C0
    ld [hl], a                                    ; $6F64: $77
    ld hl, $0002                                  ; $6F65: $21 $02 $00
    add hl, de                                    ; $6F68: $19
    ld a, $04                                     ; $6F69: $3E $04
    ld [hl], a                                    ; $6F6B: $77
    ld hl, $0003                                  ; $6F6C: $21 $03 $00
    add hl, de                                    ; $6F6F: $19
    ld [hl], a                                    ; $6F70: $77
    ld hl, $002E                                  ; $6F71: $21 $2E $00
    add hl, de                                    ; $6F74: $19
    xor a                                         ; $6F75: $AF
    ld [hl], a                                    ; $6F76: $77
    ld hl, $0008                                  ; $6F77: $21 $08 $00
    add hl, de                                    ; $6F7A: $19
    ld bc, $0000                                  ; $6F7B: $01 $00 $00
    ld [hl], c                                    ; $6F7E: $71
    inc hl                                        ; $6F7F: $23
    ld [hl], b                                    ; $6F80: $70
    ld hl, $000A                                  ; $6F81: $21 $0A $00
    add hl, de                                    ; $6F84: $19
    ld bc, $00C0                                  ; $6F85: $01 $C0 $00
    ld [hl], c                                    ; $6F88: $71
    inc hl                                        ; $6F89: $23
    ld [hl], b                                    ; $6F8A: $70

Jump_03D_6F8B:
    ld hl, $002E                                  ; $6F8B: $21 $2E $00
    add hl, de                                    ; $6F8E: $19
    ld a, [hl]                                    ; $6F8F: $7E
    and $7F                                       ; $6F90: $E6 $7F
    jr nz, jr_03D_6FD5                            ; $6F92: $20 $41

    ld hl, $002A                                  ; $6F94: $21 $2A $00
    add hl, de                                    ; $6F97: $19
    ld a, $C8                                     ; $6F98: $3E $C8
    ld [hl+], a                                   ; $6F9A: $22
    ld [hl], a                                    ; $6F9B: $77
    srl a                                         ; $6F9C: $CB $3F
    srl a                                         ; $6F9E: $CB $3F
    srl a                                         ; $6FA0: $CB $3F
    srl a                                         ; $6FA2: $CB $3F
    inc a                                         ; $6FA4: $3C
    ld hl, $001D                                  ; $6FA5: $21 $1D $00
    add hl, de                                    ; $6FA8: $19
    ld [hl], a                                    ; $6FA9: $77
    ld hl, $0006                                  ; $6FAA: $21 $06 $00
    add hl, de                                    ; $6FAD: $19
    ld a, [hl]                                    ; $6FAE: $7E
    add $20                                       ; $6FAF: $C6 $20
    cp $40                                        ; $6FB1: $FE $40
    jp c, Jump_03D_704A                           ; $6FB3: $DA $4A $70

    ld hl, $002E                                  ; $6FB6: $21 $2E $00
    add hl, de                                    ; $6FB9: $19
    ld a, $01                                     ; $6FBA: $3E $01
    ld [hl], $01                                  ; $6FBC: $36 $01
    ld hl, $0008                                  ; $6FBE: $21 $08 $00
    add hl, de                                    ; $6FC1: $19
    ld bc, $FD80                                  ; $6FC2: $01 $80 $FD
    ld [hl], c                                    ; $6FC5: $71
    inc hl                                        ; $6FC6: $23
    ld [hl], b                                    ; $6FC7: $70
    ld hl, $000A                                  ; $6FC8: $21 $0A $00
    add hl, de                                    ; $6FCB: $19
    ld bc, $0000                                  ; $6FCC: $01 $00 $00
    ld [hl], c                                    ; $6FCF: $71
    inc hl                                        ; $6FD0: $23
    ld [hl], b                                    ; $6FD1: $70
    jp Jump_03D_704A                              ; $6FD2: $C3 $4A $70


jr_03D_6FD5:
    cp $01                                        ; $6FD5: $FE $01
    jr nz, jr_03D_702E                            ; $6FD7: $20 $55

    ld hl, $0004                                  ; $6FD9: $21 $04 $00
    add hl, de                                    ; $6FDC: $19
    ld a, [hl]                                    ; $6FDD: $7E
    ld bc, $0010                                  ; $6FDE: $01 $10 $00
    cp $50                                        ; $6FE1: $FE $50
    jr c, jr_03D_6FE8                             ; $6FE3: $38 $03

    ld bc, $FFF0                                  ; $6FE5: $01 $F0 $FF

jr_03D_6FE8:
    ld hl, $0008                                  ; $6FE8: $21 $08 $00
    add hl, de                                    ; $6FEB: $19
    push hl                                       ; $6FEC: $E5
    push bc                                       ; $6FED: $C5
    ld c, [hl]                                    ; $6FEE: $4E
    inc hl                                        ; $6FEF: $23
    ld b, [hl]                                    ; $6FF0: $46
    pop hl                                        ; $6FF1: $E1
    add hl, bc                                    ; $6FF2: $09
    ld c, l                                       ; $6FF3: $4D
    ld b, h                                       ; $6FF4: $44
    pop hl                                        ; $6FF5: $E1
    ld [hl], c                                    ; $6FF6: $71
    inc hl                                        ; $6FF7: $23
    ld [hl], b                                    ; $6FF8: $70
    ld hl, $002A                                  ; $6FF9: $21 $2A $00
    add hl, de                                    ; $6FFC: $19
    ld a, [hl]                                    ; $6FFD: $7E
    srl a                                         ; $6FFE: $CB $3F
    srl a                                         ; $7000: $CB $3F
    srl a                                         ; $7002: $CB $3F
    srl a                                         ; $7004: $CB $3F
    inc a                                         ; $7006: $3C
    ld hl, $001D                                  ; $7007: $21 $1D $00
    add hl, de                                    ; $700A: $19
    ld [hl], a                                    ; $700B: $77
    ld a, [$C35C]                                 ; $700C: $FA $5C $C3
    or a                                          ; $700F: $B7
    jr nz, jr_03D_7020                            ; $7010: $20 $0E

    ld a, [$C329]                                 ; $7012: $FA $29 $C3
    and $3F                                       ; $7015: $E6 $3F
    jp nz, Jump_03D_704A                          ; $7017: $C2 $4A $70

    call Call_03D_7175                            ; $701A: $CD $75 $71
    jp Jump_03D_704A                              ; $701D: $C3 $4A $70


jr_03D_7020:
    ld a, [$C329]                                 ; $7020: $FA $29 $C3
    and $1F                                       ; $7023: $E6 $1F
    jp nz, Jump_03D_704A                          ; $7025: $C2 $4A $70

    call Call_03D_7175                            ; $7028: $CD $75 $71
    jp Jump_03D_704A                              ; $702B: $C3 $4A $70


jr_03D_702E:
    ld a, [de]                                    ; $702E: $1A
    bit 4, a                                      ; $702F: $CB $67
    jp z, Jump_03D_7117                           ; $7031: $CA $17 $71

    xor a                                         ; $7034: $AF
    ld [de], a                                    ; $7035: $12
    ld a, [$D6B1]                                 ; $7036: $FA $B1 $D6
    or a                                          ; $7039: $B7
    jp nz, Jump_03D_7117                          ; $703A: $C2 $17 $71

    ld a, $FF                                     ; $703D: $3E $FF
    ld [$D6B1], a                                 ; $703F: $EA $B1 $D6
    ld a, $B2                                     ; $7042: $3E $B2
    call Call_000_1360                            ; $7044: $CD $60 $13
    jp Jump_03D_7117                              ; $7047: $C3 $17 $71


Jump_03D_704A:
    pop de                                        ; $704A: $D1
    push de                                       ; $704B: $D5
    call Call_03D_7243                            ; $704C: $CD $43 $72
    pop de                                        ; $704F: $D1
    push de                                       ; $7050: $D5
    ld hl, $0004                                  ; $7051: $21 $04 $00
    add hl, de                                    ; $7054: $19
    ld c, [hl]                                    ; $7055: $4E
    ld hl, $0006                                  ; $7056: $21 $06 $00
    add hl, de                                    ; $7059: $19
    ld b, [hl]                                    ; $705A: $46
    ld a, [$D6C0]                                 ; $705B: $FA $C0 $D6
    add a                                         ; $705E: $87
    jr nc, jr_03D_7072                            ; $705F: $30 $11

    ld a, [$D6C4]                                 ; $7061: $FA $C4 $D6
    ld e, a                                       ; $7064: $5F
    ld a, [$D6C6]                                 ; $7065: $FA $C6 $D6
    ld d, a                                       ; $7068: $57
    call Call_03D_72A2                            ; $7069: $CD $A2 $72
    ld de, $D6EA                                  ; $706C: $11 $EA $D6
    or a                                          ; $706F: $B7
    jr nz, jr_03D_708B                            ; $7070: $20 $19

jr_03D_7072:
    ld a, [$D700]                                 ; $7072: $FA $00 $D7
    add a                                         ; $7075: $87
    jr nc, jr_03D_70E8                            ; $7076: $30 $70

    ld a, [$D704]                                 ; $7078: $FA $04 $D7
    ld e, a                                       ; $707B: $5F
    ld a, [$D706]                                 ; $707C: $FA $06 $D7
    ld d, a                                       ; $707F: $57
    call Call_03D_72A2                            ; $7080: $CD $A2 $72
    ld de, $D72A                                  ; $7083: $11 $2A $D7
    or a                                          ; $7086: $B7
    jr nz, jr_03D_708B                            ; $7087: $20 $02

    jr jr_03D_70E8                                ; $7089: $18 $5D

jr_03D_708B:
    ld bc, $002A                                  ; $708B: $01 $2A $00
    pop hl                                        ; $708E: $E1
    push hl                                       ; $708F: $E5
    add hl, bc                                    ; $7090: $09
    ld a, [de]                                    ; $7091: $1A
    inc hl                                        ; $7092: $23
    ld c, [hl]                                    ; $7093: $4E
    sub c                                         ; $7094: $91
    jr nc, jr_03D_7098                            ; $7095: $30 $01

    xor a                                         ; $7097: $AF

jr_03D_7098:
    ld [de], a                                    ; $7098: $12
    inc de                                        ; $7099: $13
    dec hl                                        ; $709A: $2B
    ld a, [de]                                    ; $709B: $1A
    ld c, a                                       ; $709C: $4F
    ld a, [hl]                                    ; $709D: $7E
    sub c                                         ; $709E: $91
    jr nc, jr_03D_70A2                            ; $709F: $30 $01

    xor a                                         ; $70A1: $AF

jr_03D_70A2:
    ld [hl], a                                    ; $70A2: $77
    or a                                          ; $70A3: $B7
    jr nz, jr_03D_70E3                            ; $70A4: $20 $3D

    ld hl, $002E                                  ; $70A6: $21 $2E $00
    pop de                                        ; $70A9: $D1
    push de                                       ; $70AA: $D5
    add hl, de                                    ; $70AB: $19
    ld a, $02                                     ; $70AC: $3E $02
    ld [hl], a                                    ; $70AE: $77
    inc hl                                        ; $70AF: $23
    ld a, $FF                                     ; $70B0: $3E $FF
    ld [hl], a                                    ; $70B2: $77
    ld a, [$C35D]                                 ; $70B3: $FA $5D $C3
    add $50                                       ; $70B6: $C6 $50
    daa                                           ; $70B8: $27
    ld [$C35D], a                                 ; $70B9: $EA $5D $C3
    ld bc, $65F4                                  ; $70BC: $01 $F4 $65
    ld hl, $0012                                  ; $70BF: $21 $12 $00
    add hl, de                                    ; $70C2: $19
    ld [hl], c                                    ; $70C3: $71
    inc hl                                        ; $70C4: $23
    ld [hl], b                                    ; $70C5: $70
    ld hl, $0014                                  ; $70C6: $21 $14 $00
    add hl, de                                    ; $70C9: $19
    xor a                                         ; $70CA: $AF
    ld [hl], a                                    ; $70CB: $77
    ld hl, $001C                                  ; $70CC: $21 $1C $00
    add hl, de                                    ; $70CF: $19
    ld a, $03                                     ; $70D0: $3E $03
    ld [hl+], a                                   ; $70D2: $22
    ld [hl], a                                    ; $70D3: $77
    ld hl, $0000                                  ; $70D4: $21 $00 $00
    add hl, de                                    ; $70D7: $19
    ld a, [hl]                                    ; $70D8: $7E
    and $EF                                       ; $70D9: $E6 $EF
    ld [hl], a                                    ; $70DB: $77
    ld a, $B2                                     ; $70DC: $3E $B2
    call Call_000_1360                            ; $70DE: $CD $60 $13
    jr jr_03D_7117                                ; $70E1: $18 $34

jr_03D_70E3:
    ld a, $B1                                     ; $70E3: $3E $B1
    call Call_000_1360                            ; $70E5: $CD $60 $13

jr_03D_70E8:
    ld a, [$D680]                                 ; $70E8: $FA $80 $D6
    add a                                         ; $70EB: $87
    jr nc, jr_03D_7117                            ; $70EC: $30 $29

    ld a, [$D6AE]                                 ; $70EE: $FA $AE $D6
    or a                                          ; $70F1: $B7
    jr nz, jr_03D_7117                            ; $70F2: $20 $23

    pop de                                        ; $70F4: $D1
    push de                                       ; $70F5: $D5
    ld hl, $0004                                  ; $70F6: $21 $04 $00
    add hl, de                                    ; $70F9: $19
    ld c, [hl]                                    ; $70FA: $4E
    ld hl, $0006                                  ; $70FB: $21 $06 $00
    add hl, de                                    ; $70FE: $19
    ld b, [hl]                                    ; $70FF: $46
    ld a, [$D684]                                 ; $7100: $FA $84 $D6
    ld e, a                                       ; $7103: $5F
    ld a, [$D686]                                 ; $7104: $FA $86 $D6
    ld d, a                                       ; $7107: $57
    call Call_03D_72A2                            ; $7108: $CD $A2 $72
    or a                                          ; $710B: $B7
    jr z, jr_03D_7117                             ; $710C: $28 $09

    xor a                                         ; $710E: $AF
    ld [$D6AA], a                                 ; $710F: $EA $AA $D6
    ld a, $B4                                     ; $7112: $3E $B4
    call Call_000_1360                            ; $7114: $CD $60 $13

Jump_03D_7117:
jr_03D_7117:
    pop hl                                        ; $7117: $E1
    ret                                           ; $7118: $C9


Jump_03D_7119:
    pop de                                        ; $7119: $D1
    push de                                       ; $711A: $D5
    ld hl, $0029                                  ; $711B: $21 $29 $00
    add hl, de                                    ; $711E: $19
    ld a, [hl]                                    ; $711F: $7E
    add a                                         ; $7120: $87
    jp nc, Jump_03D_7127                          ; $7121: $D2 $27 $71

    srl a                                         ; $7124: $CB $3F
    ld [hl], a                                    ; $7126: $77

Jump_03D_7127:
    pop de                                        ; $7127: $D1
    push de                                       ; $7128: $D5
    call Call_03D_7243                            ; $7129: $CD $43 $72
    call Call_03D_7226                            ; $712C: $CD $26 $72
    ld a, [de]                                    ; $712F: $1A
    or a                                          ; $7130: $B7
    jp z, Jump_03D_7173                           ; $7131: $CA $73 $71

    pop de                                        ; $7134: $D1
    push de                                       ; $7135: $D5
    ld a, [$D680]                                 ; $7136: $FA $80 $D6
    add a                                         ; $7139: $87
    jp nc, Jump_03D_7173                          ; $713A: $D2 $73 $71

    ld a, [$D6AE]                                 ; $713D: $FA $AE $D6
    or a                                          ; $7140: $B7
    jp nz, Jump_03D_7173                          ; $7141: $C2 $73 $71

    ld hl, $0004                                  ; $7144: $21 $04 $00
    add hl, de                                    ; $7147: $19
    ld c, [hl]                                    ; $7148: $4E
    ld hl, $0006                                  ; $7149: $21 $06 $00
    add hl, de                                    ; $714C: $19
    ld b, [hl]                                    ; $714D: $46
    ld a, [$D684]                                 ; $714E: $FA $84 $D6
    ld e, a                                       ; $7151: $5F
    ld a, [$D686]                                 ; $7152: $FA $86 $D6
    ld d, a                                       ; $7155: $57
    call Call_03D_72B7                            ; $7156: $CD $B7 $72
    or a                                          ; $7159: $B7
    jr z, jr_03D_7173                             ; $715A: $28 $17

    xor a                                         ; $715C: $AF
    ld [$D6AA], a                                 ; $715D: $EA $AA $D6
    pop de                                        ; $7160: $D1
    push de                                       ; $7161: $D5
    ld [de], a                                    ; $7162: $12
    ld hl, $C357                                  ; $7163: $21 $57 $C3
    dec [hl]                                      ; $7166: $35
    ld hl, $002E                                  ; $7167: $21 $2E $00
    add hl, de                                    ; $716A: $19
    ld a, $81                                     ; $716B: $3E $81
    ld [hl], a                                    ; $716D: $77
    ld a, $B4                                     ; $716E: $3E $B4
    call Call_000_1360                            ; $7170: $CD $60 $13

Jump_03D_7173:
jr_03D_7173:
    pop hl                                        ; $7173: $E1
    ret                                           ; $7174: $C9


Call_03D_7175:
    ld hl, $0004                                  ; $7175: $21 $04 $00
    add hl, de                                    ; $7178: $19
    ld c, [hl]                                    ; $7179: $4E
    ld hl, $0006                                  ; $717A: $21 $06 $00
    add hl, de                                    ; $717D: $19
    ld b, [hl]                                    ; $717E: $46
    push bc                                       ; $717F: $C5
    ld a, [$D684]                                 ; $7180: $FA $84 $D6
    sub c                                         ; $7183: $91
    ld c, a                                       ; $7184: $4F
    ld a, [$D686]                                 ; $7185: $FA $86 $D6
    sub b                                         ; $7188: $90
    ld b, a                                       ; $7189: $47
    push bc                                       ; $718A: $C5
    ld hl, $D740                                  ; $718B: $21 $40 $D7
    ld c, $05                                     ; $718E: $0E $05

jr_03D_7190:
    ld a, [hl]                                    ; $7190: $7E
    add a                                         ; $7191: $87
    jr nc, jr_03D_71A0                            ; $7192: $30 $0C

    ld de, $0040                                  ; $7194: $11 $40 $00
    add hl, de                                    ; $7197: $19
    dec c                                         ; $7198: $0D
    jr nz, jr_03D_7190                            ; $7199: $20 $F5

    pop bc                                        ; $719B: $C1
    pop bc                                        ; $719C: $C1
    jp Jump_03D_7203                              ; $719D: $C3 $03 $72


jr_03D_71A0:
    push hl                                       ; $71A0: $E5
    ld de, $6560                                  ; $71A1: $11 $60 $65
    call Call_000_0F8E                            ; $71A4: $CD $8E $0F
    pop de                                        ; $71A7: $D1
    pop bc                                        ; $71A8: $C1
    ld a, b                                       ; $71A9: $78
    or c                                          ; $71AA: $B1
    jp nz, Jump_03D_71B2                          ; $71AB: $C2 $B2 $71

    ld c, $01                                     ; $71AE: $0E $01
    ld b, $01                                     ; $71B0: $06 $01

Jump_03D_71B2:
    xor a                                         ; $71B2: $AF
    sra c                                         ; $71B3: $CB $29
    rra                                           ; $71B5: $1F
    sra c                                         ; $71B6: $CB $29
    rra                                           ; $71B8: $1F
    sra c                                         ; $71B9: $CB $29
    rra                                           ; $71BB: $1F
    sra c                                         ; $71BC: $CB $29
    rra                                           ; $71BE: $1F
    sra c                                         ; $71BF: $CB $29
    rra                                           ; $71C1: $1F
    sra c                                         ; $71C2: $CB $29
    rra                                           ; $71C4: $1F
    ld hl, $0008                                  ; $71C5: $21 $08 $00
    add hl, de                                    ; $71C8: $19
    ld [hl+], a                                   ; $71C9: $22
    ld [hl], c                                    ; $71CA: $71
    xor a                                         ; $71CB: $AF
    sra b                                         ; $71CC: $CB $28
    rra                                           ; $71CE: $1F
    sra b                                         ; $71CF: $CB $28
    rra                                           ; $71D1: $1F
    sra b                                         ; $71D2: $CB $28
    rra                                           ; $71D4: $1F
    sra b                                         ; $71D5: $CB $28
    rra                                           ; $71D7: $1F
    sra b                                         ; $71D8: $CB $28
    rra                                           ; $71DA: $1F
    sra b                                         ; $71DB: $CB $28
    rra                                           ; $71DD: $1F
    ld hl, $000A                                  ; $71DE: $21 $0A $00
    add hl, de                                    ; $71E1: $19
    ld [hl+], a                                   ; $71E2: $22
    ld [hl], b                                    ; $71E3: $70
    pop bc                                        ; $71E4: $C1
    xor a                                         ; $71E5: $AF
    ld hl, $0004                                  ; $71E6: $21 $04 $00
    add hl, de                                    ; $71E9: $19
    ld [hl], c                                    ; $71EA: $71
    inc hl                                        ; $71EB: $23
    ld [hl], a                                    ; $71EC: $77
    ld hl, $0006                                  ; $71ED: $21 $06 $00
    add hl, de                                    ; $71F0: $19
    ld [hl], b                                    ; $71F1: $70
    inc hl                                        ; $71F2: $23
    ld [hl], a                                    ; $71F3: $77
    ld hl, $0029                                  ; $71F4: $21 $29 $00
    add hl, de                                    ; $71F7: $19
    ld a, $DF                                     ; $71F8: $3E $DF
    ld [hl+], a                                   ; $71FA: $22
    ld a, $01                                     ; $71FB: $3E $01
    ld [hl+], a                                   ; $71FD: $22
    ld [hl+], a                                   ; $71FE: $22
    ld hl, $C357                                  ; $71FF: $21 $57 $C3
    inc [hl]                                      ; $7202: $34

Jump_03D_7203:
    ret                                           ; $7203: $C9


Call_03D_7204:
    ld hl, $0004                                  ; $7204: $21 $04 $00
    add hl, de                                    ; $7207: $19
    ld a, [hl]                                    ; $7208: $7E
    add $18                                       ; $7209: $C6 $18
    cp $D0                                        ; $720B: $FE $D0
    jr nc, jr_03D_721A                            ; $720D: $30 $0B

    ld hl, $0006                                  ; $720F: $21 $06 $00
    add hl, de                                    ; $7212: $19
    ld a, [hl]                                    ; $7213: $7E
    add $18                                       ; $7214: $C6 $18
    cp $C0                                        ; $7216: $FE $C0
    jr c, jr_03D_7225                             ; $7218: $38 $0B

jr_03D_721A:
    xor a                                         ; $721A: $AF
    ld [de], a                                    ; $721B: $12
    ld hl, $C357                                  ; $721C: $21 $57 $C3
    dec [hl]                                      ; $721F: $35
    dec hl                                        ; $7220: $2B
    ld a, [hl]                                    ; $7221: $7E
    add $30                                       ; $7222: $C6 $30
    ld [hl], a                                    ; $7224: $77

jr_03D_7225:
    ret                                           ; $7225: $C9


Call_03D_7226:
    ld hl, $0004                                  ; $7226: $21 $04 $00
    add hl, de                                    ; $7229: $19
    ld a, [hl]                                    ; $722A: $7E
    add $18                                       ; $722B: $C6 $18
    cp $D0                                        ; $722D: $FE $D0
    jr nc, jr_03D_723C                            ; $722F: $30 $0B

    ld hl, $0006                                  ; $7231: $21 $06 $00
    add hl, de                                    ; $7234: $19
    ld a, [hl]                                    ; $7235: $7E
    add $18                                       ; $7236: $C6 $18
    cp $C0                                        ; $7238: $FE $C0
    jr c, jr_03D_7242                             ; $723A: $38 $06

jr_03D_723C:
    xor a                                         ; $723C: $AF
    ld [de], a                                    ; $723D: $12
    ld hl, $C357                                  ; $723E: $21 $57 $C3
    dec [hl]                                      ; $7241: $35

jr_03D_7242:
    ret                                           ; $7242: $C9


Call_03D_7243:
    ld hl, $0008                                  ; $7243: $21 $08 $00
    add hl, de                                    ; $7246: $19
    ld c, [hl]                                    ; $7247: $4E
    inc hl                                        ; $7248: $23
    ld b, [hl]                                    ; $7249: $46
    push de                                       ; $724A: $D5
    ld hl, $0004                                  ; $724B: $21 $04 $00
    add hl, de                                    ; $724E: $19
    ld d, [hl]                                    ; $724F: $56
    inc hl                                        ; $7250: $23
    ld e, [hl]                                    ; $7251: $5E
    push hl                                       ; $7252: $E5
    ld l, e                                       ; $7253: $6B
    ld h, d                                       ; $7254: $62
    add hl, bc                                    ; $7255: $09
    ld e, l                                       ; $7256: $5D
    ld d, h                                       ; $7257: $54
    pop hl                                        ; $7258: $E1
    ld [hl], e                                    ; $7259: $73
    dec hl                                        ; $725A: $2B
    ld [hl], d                                    ; $725B: $72
    pop de                                        ; $725C: $D1
    ld hl, $000A                                  ; $725D: $21 $0A $00
    add hl, de                                    ; $7260: $19
    ld c, [hl]                                    ; $7261: $4E
    inc hl                                        ; $7262: $23
    ld b, [hl]                                    ; $7263: $46
    push de                                       ; $7264: $D5
    ld hl, $0006                                  ; $7265: $21 $06 $00
    add hl, de                                    ; $7268: $19
    ld d, [hl]                                    ; $7269: $56
    inc hl                                        ; $726A: $23
    ld e, [hl]                                    ; $726B: $5E
    push hl                                       ; $726C: $E5
    ld l, e                                       ; $726D: $6B
    ld h, d                                       ; $726E: $62
    add hl, bc                                    ; $726F: $09
    ld e, l                                       ; $7270: $5D
    ld d, h                                       ; $7271: $54
    pop hl                                        ; $7272: $E1
    ld [hl], e                                    ; $7273: $73
    dec hl                                        ; $7274: $2B
    ld [hl], d                                    ; $7275: $72
    pop de                                        ; $7276: $D1
    ret                                           ; $7277: $C9


Call_03D_7278:
    ld a, e                                       ; $7278: $7B
    sub c                                         ; $7279: $91
    add $0B                                       ; $727A: $C6 $0B
    cp $16                                        ; $727C: $FE $16
    jr nc, jr_03D_728B                            ; $727E: $30 $0B

    ld a, d                                       ; $7280: $7A
    sub b                                         ; $7281: $90
    add $0B                                       ; $7282: $C6 $0B
    cp $16                                        ; $7284: $FE $16
    jr nc, jr_03D_728B                            ; $7286: $30 $03

    ld a, $FF                                     ; $7288: $3E $FF
    ret                                           ; $728A: $C9


jr_03D_728B:
    xor a                                         ; $728B: $AF
    ret                                           ; $728C: $C9


Call_03D_728D:
    ld a, e                                       ; $728D: $7B
    sub c                                         ; $728E: $91
    add $07                                       ; $728F: $C6 $07
    cp $0E                                        ; $7291: $FE $0E
    jr nc, jr_03D_72A0                            ; $7293: $30 $0B

    ld a, d                                       ; $7295: $7A
    sub b                                         ; $7296: $90
    add $07                                       ; $7297: $C6 $07
    cp $0E                                        ; $7299: $FE $0E
    jr nc, jr_03D_72A0                            ; $729B: $30 $03

    ld a, $FF                                     ; $729D: $3E $FF
    ret                                           ; $729F: $C9


jr_03D_72A0:
    xor a                                         ; $72A0: $AF
    ret                                           ; $72A1: $C9


Call_03D_72A2:
    ld a, e                                       ; $72A2: $7B
    sub c                                         ; $72A3: $91
    add $12                                       ; $72A4: $C6 $12
    cp $24                                        ; $72A6: $FE $24
    jr nc, jr_03D_72B5                            ; $72A8: $30 $0B

    ld a, d                                       ; $72AA: $7A
    sub b                                         ; $72AB: $90
    add $12                                       ; $72AC: $C6 $12
    cp $24                                        ; $72AE: $FE $24
    jr nc, jr_03D_72B5                            ; $72B0: $30 $03

    ld a, $FF                                     ; $72B2: $3E $FF
    ret                                           ; $72B4: $C9


jr_03D_72B5:
    xor a                                         ; $72B5: $AF
    ret                                           ; $72B6: $C9


Call_03D_72B7:
    ld a, e                                       ; $72B7: $7B
    sub c                                         ; $72B8: $91
    add $05                                       ; $72B9: $C6 $05
    cp $0A                                        ; $72BB: $FE $0A
    jr nc, jr_03D_72CA                            ; $72BD: $30 $0B

    ld a, d                                       ; $72BF: $7A
    sub b                                         ; $72C0: $90
    add $05                                       ; $72C1: $C6 $05
    cp $0A                                        ; $72C3: $FE $0A
    jr nc, jr_03D_72CA                            ; $72C5: $30 $03

    ld a, $FF                                     ; $72C7: $3E $FF
    ret                                           ; $72C9: $C9


jr_03D_72CA:
    xor a                                         ; $72CA: $AF
    ret                                           ; $72CB: $C9


Call_03D_72CC:
    push hl                                       ; $72CC: $E5
    ld e, l                                       ; $72CD: $5D
    ld d, h                                       ; $72CE: $54
    ld hl, $0029                                  ; $72CF: $21 $29 $00
    add hl, de                                    ; $72D2: $19
    ld a, [hl]                                    ; $72D3: $7E
    and $0F                                       ; $72D4: $E6 $0F
    ld c, a                                       ; $72D6: $4F
    add a                                         ; $72D7: $87
    add c                                         ; $72D8: $81
    ld c, a                                       ; $72D9: $4F
    ld b, $00                                     ; $72DA: $06 $00
    ld hl, $72E1                                  ; $72DC: $21 $E1 $72
    add hl, bc                                    ; $72DF: $09
    jp hl                                         ; $72E0: $E9


    jp Jump_03D_7336                              ; $72E1: $C3 $36 $73


    jp Jump_03D_734F                              ; $72E4: $C3 $4F $73


    jp Jump_03D_7355                              ; $72E7: $C3 $55 $73


    jp Jump_03D_7363                              ; $72EA: $C3 $63 $73


    jp Jump_03D_7369                              ; $72ED: $C3 $69 $73


    jp Jump_03D_736F                              ; $72F0: $C3 $6F $73


    jp Jump_03D_7375                              ; $72F3: $C3 $75 $73


    jp Jump_03D_737B                              ; $72F6: $C3 $7B $73


    jp Jump_03D_739F                              ; $72F9: $C3 $9F $73


    jp Jump_03D_73BC                              ; $72FC: $C3 $BC $73


    jp Jump_03D_73D9                              ; $72FF: $C3 $D9 $73


    jp Jump_03D_73DF                              ; $7302: $C3 $DF $73


    jp Jump_03D_743E                              ; $7305: $C3 $3E $74


    jp Jump_03D_74E5                              ; $7308: $C3 $E5 $74


    jp Jump_03D_750A                              ; $730B: $C3 $0A $75


    jp Jump_03D_7336                              ; $730E: $C3 $36 $73


Jump_03D_7311:
    pop hl                                        ; $7311: $E1
    push hl                                       ; $7312: $E5
    call Call_000_0E28                            ; $7313: $CD $28 $0E

Jump_03D_7316:
    pop de                                        ; $7316: $D1
    push de                                       ; $7317: $D5
    ld hl, $0004                                  ; $7318: $21 $04 $00
    add hl, de                                    ; $731B: $19
    ld a, [hl]                                    ; $731C: $7E
    cp $A0                                        ; $731D: $FE $A0
    jr nc, jr_03D_7332                            ; $731F: $30 $11

    ld hl, $0006                                  ; $7321: $21 $06 $00
    add hl, de                                    ; $7324: $19
    ld a, [hl]                                    ; $7325: $7E
    cp $A0                                        ; $7326: $FE $A0
    jr nc, jr_03D_7332                            ; $7328: $30 $08

    ld hl, $002A                                  ; $732A: $21 $2A $00
    add hl, de                                    ; $732D: $19
    ld a, [hl]                                    ; $732E: $7E
    or a                                          ; $732F: $B7
    jr nz, jr_03D_7334                            ; $7330: $20 $02

jr_03D_7332:
    xor a                                         ; $7332: $AF
    ld [de], a                                    ; $7333: $12

jr_03D_7334:
    pop hl                                        ; $7334: $E1
    ret                                           ; $7335: $C9


Jump_03D_7336:
    ld bc, $FDC0                                  ; $7336: $01 $C0 $FD

Jump_03D_7339:
    push de                                       ; $7339: $D5
    ld hl, $0006                                  ; $733A: $21 $06 $00
    add hl, de                                    ; $733D: $19
    ld d, [hl]                                    ; $733E: $56
    inc hl                                        ; $733F: $23
    ld e, [hl]                                    ; $7340: $5E
    push hl                                       ; $7341: $E5
    ld l, c                                       ; $7342: $69
    ld h, b                                       ; $7343: $60
    add hl, de                                    ; $7344: $19
    ld c, l                                       ; $7345: $4D
    ld b, h                                       ; $7346: $44
    pop hl                                        ; $7347: $E1
    ld [hl], c                                    ; $7348: $71
    dec hl                                        ; $7349: $2B
    ld [hl], b                                    ; $734A: $70
    pop de                                        ; $734B: $D1
    jp Jump_03D_7311                              ; $734C: $C3 $11 $73


Jump_03D_734F:
    ld bc, $FDA0                                  ; $734F: $01 $A0 $FD
    jp Jump_03D_7339                              ; $7352: $C3 $39 $73


Jump_03D_7355:
    ld a, [$D684]                                 ; $7355: $FA $84 $D6
    ld hl, $0004                                  ; $7358: $21 $04 $00
    add hl, de                                    ; $735B: $19
    ld [hl], a                                    ; $735C: $77
    ld bc, $FDC0                                  ; $735D: $01 $C0 $FD
    jp Jump_03D_7339                              ; $7360: $C3 $39 $73


Jump_03D_7363:
    ld bc, $FD80                                  ; $7363: $01 $80 $FD
    jp Jump_03D_7339                              ; $7366: $C3 $39 $73


Jump_03D_7369:
    ld bc, $FE20                                  ; $7369: $01 $20 $FE
    jp Jump_03D_7339                              ; $736C: $C3 $39 $73


Jump_03D_736F:
    ld bc, $FE00                                  ; $736F: $01 $00 $FE
    jp Jump_03D_7339                              ; $7372: $C3 $39 $73


Jump_03D_7375:
    ld bc, $FE00                                  ; $7375: $01 $00 $FE
    jp Jump_03D_7339                              ; $7378: $C3 $39 $73


Jump_03D_737B:
    ld hl, $0031                                  ; $737B: $21 $31 $00
    add hl, de                                    ; $737E: $19
    ld a, [hl]                                    ; $737F: $7E
    inc [hl]                                      ; $7380: $34
    ld hl, $0004                                  ; $7381: $21 $04 $00
    add hl, de                                    ; $7384: $19
    and $18                                       ; $7385: $E6 $18
    cp $08                                        ; $7387: $FE $08
    jr z, jr_03D_7395                             ; $7389: $28 $0A

    cp $18                                        ; $738B: $FE $18
    jr z, jr_03D_7398                             ; $738D: $28 $09

    ld bc, $FDC0                                  ; $738F: $01 $C0 $FD
    jp Jump_03D_7339                              ; $7392: $C3 $39 $73


jr_03D_7395:
    inc [hl]                                      ; $7395: $34
    jr jr_03D_7399                                ; $7396: $18 $01

jr_03D_7398:
    dec [hl]                                      ; $7398: $35

jr_03D_7399:
    ld bc, $FDE0                                  ; $7399: $01 $E0 $FD
    jp Jump_03D_7339                              ; $739C: $C3 $39 $73


Jump_03D_739F:
    ld hl, $0031                                  ; $739F: $21 $31 $00
    add hl, de                                    ; $73A2: $19
    ld c, [hl]                                    ; $73A3: $4E
    inc hl                                        ; $73A4: $23
    ld b, [hl]                                    ; $73A5: $46
    ld hl, $FFF0                                  ; $73A6: $21 $F0 $FF
    add hl, bc                                    ; $73A9: $09
    ld c, l                                       ; $73AA: $4D
    ld b, h                                       ; $73AB: $44
    ld hl, $0031                                  ; $73AC: $21 $31 $00
    add hl, de                                    ; $73AF: $19
    ld [hl], c                                    ; $73B0: $71
    inc hl                                        ; $73B1: $23
    ld [hl], b                                    ; $73B2: $70
    ld hl, $FF00                                  ; $73B3: $21 $00 $FF
    add hl, bc                                    ; $73B6: $09
    ld c, l                                       ; $73B7: $4D
    ld b, h                                       ; $73B8: $44
    jp Jump_03D_7339                              ; $73B9: $C3 $39 $73


Jump_03D_73BC:
    ld hl, $0031                                  ; $73BC: $21 $31 $00
    add hl, de                                    ; $73BF: $19
    ld c, [hl]                                    ; $73C0: $4E
    inc hl                                        ; $73C1: $23
    ld b, [hl]                                    ; $73C2: $46
    ld hl, $FFFA                                  ; $73C3: $21 $FA $FF
    add hl, bc                                    ; $73C6: $09
    ld c, l                                       ; $73C7: $4D
    ld b, h                                       ; $73C8: $44
    ld hl, $0031                                  ; $73C9: $21 $31 $00
    add hl, de                                    ; $73CC: $19
    ld [hl], c                                    ; $73CD: $71
    inc hl                                        ; $73CE: $23
    ld [hl], b                                    ; $73CF: $70
    ld hl, $FEC0                                  ; $73D0: $21 $C0 $FE
    add hl, bc                                    ; $73D3: $09
    ld c, l                                       ; $73D4: $4D
    ld b, h                                       ; $73D5: $44
    jp Jump_03D_7339                              ; $73D6: $C3 $39 $73


Jump_03D_73D9:
    ld bc, $FC20                                  ; $73D9: $01 $20 $FC
    jp Jump_03D_7339                              ; $73DC: $C3 $39 $73


Jump_03D_73DF:
    push de                                       ; $73DF: $D5
    call Call_03D_75BC                            ; $73E0: $CD $BC $75
    ld a, l                                       ; $73E3: $7D
    or h                                          ; $73E4: $B4
    jr z, jr_03D_740D                             ; $73E5: $28 $26

    ld de, $0004                                  ; $73E7: $11 $04 $00
    add hl, de                                    ; $73EA: $19
    ld a, [hl]                                    ; $73EB: $7E
    add $20                                       ; $73EC: $C6 $20
    ld c, a                                       ; $73EE: $4F
    pop de                                        ; $73EF: $D1
    push de                                       ; $73F0: $D5
    ld hl, $0004                                  ; $73F1: $21 $04 $00
    add hl, de                                    ; $73F4: $19
    ld a, [hl]                                    ; $73F5: $7E
    add $20                                       ; $73F6: $C6 $20
    cp c                                          ; $73F8: $B9
    jr z, jr_03D_7405                             ; $73F9: $28 $0A

    jr nc, jr_03D_7401                            ; $73FB: $30 $04

    ld a, $01                                     ; $73FD: $3E $01
    jr jr_03D_7406                                ; $73FF: $18 $05

jr_03D_7401:
    ld a, $FF                                     ; $7401: $3E $FF
    jr jr_03D_7406                                ; $7403: $18 $01

jr_03D_7405:
    xor a                                         ; $7405: $AF

jr_03D_7406:
    pop de                                        ; $7406: $D1
    push de                                       ; $7407: $D5
    ld hl, $0031                                  ; $7408: $21 $31 $00
    add hl, de                                    ; $740B: $19
    ld [hl], a                                    ; $740C: $77

jr_03D_740D:
    pop de                                        ; $740D: $D1
    ld hl, $0031                                  ; $740E: $21 $31 $00
    add hl, de                                    ; $7411: $19
    ld a, [hl]                                    ; $7412: $7E
    add a                                         ; $7413: $87
    jr z, jr_03D_7438                             ; $7414: $28 $22

    jr c, jr_03D_7426                             ; $7416: $38 $0E

    ld hl, $0005                                  ; $7418: $21 $05 $00
    add hl, de                                    ; $741B: $19
    ld a, [hl]                                    ; $741C: $7E
    add $C0                                       ; $741D: $C6 $C0
    ld [hl], a                                    ; $741F: $77
    jr nc, jr_03D_7432                            ; $7420: $30 $10

    dec hl                                        ; $7422: $2B
    inc [hl]                                      ; $7423: $34
    jr jr_03D_7432                                ; $7424: $18 $0C

jr_03D_7426:
    ld hl, $0005                                  ; $7426: $21 $05 $00
    add hl, de                                    ; $7429: $19
    ld a, [hl]                                    ; $742A: $7E
    sub $C0                                       ; $742B: $D6 $C0
    ld [hl], a                                    ; $742D: $77
    jr nc, jr_03D_7432                            ; $742E: $30 $02

    dec hl                                        ; $7430: $2B
    dec [hl]                                      ; $7431: $35

jr_03D_7432:
    ld bc, $FE80                                  ; $7432: $01 $80 $FE
    jp Jump_03D_7339                              ; $7435: $C3 $39 $73


jr_03D_7438:
    ld bc, $FE60                                  ; $7438: $01 $60 $FE
    jp Jump_03D_7339                              ; $743B: $C3 $39 $73


Jump_03D_743E:
    push de                                       ; $743E: $D5
    call Call_03D_769B                            ; $743F: $CD $9B $76
    ld a, l                                       ; $7442: $7D
    or h                                          ; $7443: $B4
    jr nz, jr_03D_744D                            ; $7444: $20 $07

    pop de                                        ; $7446: $D1
    ld bc, $FF00                                  ; $7447: $01 $00 $FF
    jp Jump_03D_7339                              ; $744A: $C3 $39 $73


jr_03D_744D:
    ld e, l                                       ; $744D: $5D
    ld d, h                                       ; $744E: $54
    ld hl, $0004                                  ; $744F: $21 $04 $00
    add hl, de                                    ; $7452: $19
    ld a, [hl]                                    ; $7453: $7E
    add $20                                       ; $7454: $C6 $20
    srl a                                         ; $7456: $CB $3F
    ld b, a                                       ; $7458: $47
    ld hl, $0006                                  ; $7459: $21 $06 $00
    add hl, de                                    ; $745C: $19
    ld a, [hl]                                    ; $745D: $7E
    add $20                                       ; $745E: $C6 $20
    srl a                                         ; $7460: $CB $3F
    ld c, a                                       ; $7462: $4F
    pop de                                        ; $7463: $D1
    push bc                                       ; $7464: $C5
    ld hl, $0004                                  ; $7465: $21 $04 $00
    add hl, de                                    ; $7468: $19
    ld a, [hl]                                    ; $7469: $7E
    add $20                                       ; $746A: $C6 $20
    srl a                                         ; $746C: $CB $3F
    ld l, a                                       ; $746E: $6F
    ld a, b                                       ; $746F: $78
    sub l                                         ; $7470: $95
    jr c, jr_03D_7477                             ; $7471: $38 $04

    add $10                                       ; $7473: $C6 $10
    jr jr_03D_7479                                ; $7475: $18 $02

jr_03D_7477:
    sub $10                                       ; $7477: $D6 $10

jr_03D_7479:
    ld b, a                                       ; $7479: $47
    ld c, $00                                     ; $747A: $0E $00
    sra b                                         ; $747C: $CB $28
    rr c                                          ; $747E: $CB $19
    sra b                                         ; $7480: $CB $28
    rr c                                          ; $7482: $CB $19
    sra b                                         ; $7484: $CB $28
    rr c                                          ; $7486: $CB $19
    sra b                                         ; $7488: $CB $28
    rr c                                          ; $748A: $CB $19
    sra b                                         ; $748C: $CB $28
    rr c                                          ; $748E: $CB $19
    push bc                                       ; $7490: $C5
    ld hl, $0004                                  ; $7491: $21 $04 $00
    add hl, de                                    ; $7494: $19
    ld b, [hl]                                    ; $7495: $46
    inc hl                                        ; $7496: $23
    ld c, [hl]                                    ; $7497: $4E
    pop hl                                        ; $7498: $E1
    add hl, bc                                    ; $7499: $09
    ld c, l                                       ; $749A: $4D
    ld b, h                                       ; $749B: $44
    ld hl, $0004                                  ; $749C: $21 $04 $00
    add hl, de                                    ; $749F: $19
    ld [hl], b                                    ; $74A0: $70
    inc hl                                        ; $74A1: $23
    ld [hl], c                                    ; $74A2: $71
    pop bc                                        ; $74A3: $C1
    ld hl, $0006                                  ; $74A4: $21 $06 $00
    add hl, de                                    ; $74A7: $19
    ld a, [hl]                                    ; $74A8: $7E
    add $20                                       ; $74A9: $C6 $20
    srl a                                         ; $74AB: $CB $3F
    ld l, a                                       ; $74AD: $6F
    ld a, c                                       ; $74AE: $79
    sub l                                         ; $74AF: $95
    jr c, jr_03D_74B6                             ; $74B0: $38 $04

    add $10                                       ; $74B2: $C6 $10
    jr jr_03D_74B8                                ; $74B4: $18 $02

jr_03D_74B6:
    sub $10                                       ; $74B6: $D6 $10

jr_03D_74B8:
    ld b, a                                       ; $74B8: $47
    ld c, $00                                     ; $74B9: $0E $00
    sra b                                         ; $74BB: $CB $28
    rr c                                          ; $74BD: $CB $19
    sra b                                         ; $74BF: $CB $28
    rr c                                          ; $74C1: $CB $19
    sra b                                         ; $74C3: $CB $28
    rr c                                          ; $74C5: $CB $19
    sra b                                         ; $74C7: $CB $28
    rr c                                          ; $74C9: $CB $19
    sra b                                         ; $74CB: $CB $28
    rr c                                          ; $74CD: $CB $19
    push bc                                       ; $74CF: $C5
    ld hl, $0006                                  ; $74D0: $21 $06 $00
    add hl, de                                    ; $74D3: $19
    ld b, [hl]                                    ; $74D4: $46
    inc hl                                        ; $74D5: $23
    ld c, [hl]                                    ; $74D6: $4E
    pop hl                                        ; $74D7: $E1
    add hl, bc                                    ; $74D8: $09
    ld c, l                                       ; $74D9: $4D
    ld b, h                                       ; $74DA: $44
    ld hl, $0006                                  ; $74DB: $21 $06 $00
    add hl, de                                    ; $74DE: $19
    ld [hl], b                                    ; $74DF: $70
    inc hl                                        ; $74E0: $23
    ld [hl], c                                    ; $74E1: $71
    jp Jump_03D_7311                              ; $74E2: $C3 $11 $73


Jump_03D_74E5:
    ld hl, $0030                                  ; $74E5: $21 $30 $00
    add hl, de                                    ; $74E8: $19
    ld a, [hl]                                    ; $74E9: $7E
    and $03                                       ; $74EA: $E6 $03
    jr z, jr_03D_7504                             ; $74EC: $28 $16

    cp $02                                        ; $74EE: $FE $02
    jr z, jr_03D_7504                             ; $74F0: $28 $12

    ld hl, $0004                                  ; $74F2: $21 $04 $00
    add hl, de                                    ; $74F5: $19
    cp $01                                        ; $74F6: $FE $01
    jr z, jr_03D_74FD                             ; $74F8: $28 $03

    inc [hl]                                      ; $74FA: $34
    jr jr_03D_74FE                                ; $74FB: $18 $01

jr_03D_74FD:
    dec [hl]                                      ; $74FD: $35

jr_03D_74FE:
    ld bc, $FE00                                  ; $74FE: $01 $00 $FE
    jp Jump_03D_7339                              ; $7501: $C3 $39 $73


jr_03D_7504:
    ld bc, $FDE0                                  ; $7504: $01 $E0 $FD
    jp Jump_03D_7339                              ; $7507: $C3 $39 $73


Jump_03D_750A:
    ld hl, $002A                                  ; $750A: $21 $2A $00
    add hl, de                                    ; $750D: $19
    ld a, [hl]                                    ; $750E: $7E
    or a                                          ; $750F: $B7
    jr z, jr_03D_7515                             ; $7510: $28 $03

    ld a, $28                                     ; $7512: $3E $28
    ld [hl], a                                    ; $7514: $77

jr_03D_7515:
    ld hl, $0032                                  ; $7515: $21 $32 $00
    add hl, de                                    ; $7518: $19
    ld a, [hl]                                    ; $7519: $7E
    or a                                          ; $751A: $B7
    jr z, jr_03D_7521                             ; $751B: $28 $04

    dec [hl]                                      ; $751D: $35
    jp Jump_03D_7316                              ; $751E: $C3 $16 $73


jr_03D_7521:
    dec hl                                        ; $7521: $2B
    ld a, [hl]                                    ; $7522: $7E
    or a                                          ; $7523: $B7
    jr z, jr_03D_752A                             ; $7524: $28 $04

    dec [hl]                                      ; $7526: $35
    jp Jump_03D_75A4                              ; $7527: $C3 $A4 $75


jr_03D_752A:
    ld a, $08                                     ; $752A: $3E $08
    ld [hl], a                                    ; $752C: $77
    push de                                       ; $752D: $D5
    call Call_03D_769B                            ; $752E: $CD $9B $76
    ld a, l                                       ; $7531: $7D
    or h                                          ; $7532: $B4
    jr nz, jr_03D_753D                            ; $7533: $20 $08

    pop de                                        ; $7535: $D1
    ld b, $00                                     ; $7536: $06 $00
    ld c, $FD                                     ; $7538: $0E $FD
    jp Jump_03D_7584                              ; $753A: $C3 $84 $75


jr_03D_753D:
    ld e, l                                       ; $753D: $5D
    ld d, h                                       ; $753E: $54
    ld hl, $0004                                  ; $753F: $21 $04 $00
    add hl, de                                    ; $7542: $19
    ld b, [hl]                                    ; $7543: $46
    ld hl, $0006                                  ; $7544: $21 $06 $00
    add hl, de                                    ; $7547: $19
    ld c, [hl]                                    ; $7548: $4E
    pop de                                        ; $7549: $D1
    ld hl, $0004                                  ; $754A: $21 $04 $00
    add hl, de                                    ; $754D: $19
    ld a, [hl]                                    ; $754E: $7E
    sub b                                         ; $754F: $90
    ld b, a                                       ; $7550: $47
    ld hl, $0006                                  ; $7551: $21 $06 $00
    add hl, de                                    ; $7554: $19
    ld a, [hl]                                    ; $7555: $7E
    sub c                                         ; $7556: $91
    ld c, a                                       ; $7557: $4F
    ld l, c                                       ; $7558: $69
    ld h, b                                       ; $7559: $60
    ld a, b                                       ; $755A: $78
    cp $80                                        ; $755B: $FE $80
    jr c, jr_03D_7562                             ; $755D: $38 $03

    cpl                                           ; $755F: $2F
    inc a                                         ; $7560: $3C
    ld b, a                                       ; $7561: $47

jr_03D_7562:
    ld a, c                                       ; $7562: $79
    cp $80                                        ; $7563: $FE $80
    jr c, jr_03D_756A                             ; $7565: $38 $03

    cpl                                           ; $7567: $2F
    inc a                                         ; $7568: $3C
    ld c, a                                       ; $7569: $4F

jr_03D_756A:
    ld a, b                                       ; $756A: $78
    cp c                                          ; $756B: $B9
    jr c, jr_03D_757A                             ; $756C: $38 $0C

    ld b, $FE                                     ; $756E: $06 $FE
    ld c, $00                                     ; $7570: $0E $00
    ld a, h                                       ; $7572: $7C
    add a                                         ; $7573: $87
    jr nc, jr_03D_7584                            ; $7574: $30 $0E

    ld b, $02                                     ; $7576: $06 $02
    jr jr_03D_7584                                ; $7578: $18 $0A

jr_03D_757A:
    ld b, $00                                     ; $757A: $06 $00
    ld c, $FE                                     ; $757C: $0E $FE
    ld a, l                                       ; $757E: $7D
    add a                                         ; $757F: $87
    jr nc, jr_03D_7584                            ; $7580: $30 $02

    ld c, $02                                     ; $7582: $0E $02

Jump_03D_7584:
jr_03D_7584:
    push bc                                       ; $7584: $C5
    ld hl, $0033                                  ; $7585: $21 $33 $00
    add hl, de                                    ; $7588: $19
    ld b, [hl]                                    ; $7589: $46
    inc hl                                        ; $758A: $23
    ld c, [hl]                                    ; $758B: $4E
    pop hl                                        ; $758C: $E1
    ld a, h                                       ; $758D: $7C
    cp b                                          ; $758E: $B8
    jr nz, jr_03D_7595                            ; $758F: $20 $04

    ld a, l                                       ; $7591: $7D
    cp c                                          ; $7592: $B9
    jr z, jr_03D_75A4                             ; $7593: $28 $0F

jr_03D_7595:
    ld c, l                                       ; $7595: $4D
    ld b, h                                       ; $7596: $44
    ld hl, $0032                                  ; $7597: $21 $32 $00
    add hl, de                                    ; $759A: $19
    ld a, $03                                     ; $759B: $3E $03
    ld [hl+], a                                   ; $759D: $22
    ld [hl], b                                    ; $759E: $70
    inc hl                                        ; $759F: $23
    ld [hl], c                                    ; $75A0: $71
    jp Jump_03D_7316                              ; $75A1: $C3 $16 $73


Jump_03D_75A4:
jr_03D_75A4:
    ld hl, $0033                                  ; $75A4: $21 $33 $00
    add hl, de                                    ; $75A7: $19
    ld b, [hl]                                    ; $75A8: $46
    inc hl                                        ; $75A9: $23
    ld c, [hl]                                    ; $75AA: $4E
    ld hl, $0004                                  ; $75AB: $21 $04 $00
    add hl, de                                    ; $75AE: $19
    ld a, [hl]                                    ; $75AF: $7E
    add b                                         ; $75B0: $80
    ld [hl], a                                    ; $75B1: $77
    ld hl, $0006                                  ; $75B2: $21 $06 $00
    add hl, de                                    ; $75B5: $19
    ld a, [hl]                                    ; $75B6: $7E
    add c                                         ; $75B7: $81
    ld [hl], a                                    ; $75B8: $77
    jp Jump_03D_7311                              ; $75B9: $C3 $11 $73


Call_03D_75BC:
    ld hl, $0004                                  ; $75BC: $21 $04 $00
    add hl, de                                    ; $75BF: $19
    ld b, [hl]                                    ; $75C0: $46
    ld hl, $0006                                  ; $75C1: $21 $06 $00
    add hl, de                                    ; $75C4: $19
    ld c, [hl]                                    ; $75C5: $4E
    ld e, $FF                                     ; $75C6: $1E $FF
    ld hl, $0000                                  ; $75C8: $21 $00 $00
    ld a, [$D740]                                 ; $75CB: $FA $40 $D7
    add a                                         ; $75CE: $87
    jr nc, jr_03D_75F2                            ; $75CF: $30 $21

    ld a, [$D769]                                 ; $75D1: $FA $69 $D7
    bit 6, a                                      ; $75D4: $CB $77
    jr nz, jr_03D_75F2                            ; $75D6: $20 $1A

    ld a, [$D746]                                 ; $75D8: $FA $46 $D7
    sub c                                         ; $75DB: $91
    jr nc, jr_03D_75F2                            ; $75DC: $30 $14

    cpl                                           ; $75DE: $2F
    inc a                                         ; $75DF: $3C
    srl a                                         ; $75E0: $CB $3F
    ld d, a                                       ; $75E2: $57
    ld a, [$D744]                                 ; $75E3: $FA $44 $D7
    sub b                                         ; $75E6: $90
    jr nc, jr_03D_75EB                            ; $75E7: $30 $02

    cpl                                           ; $75E9: $2F
    inc a                                         ; $75EA: $3C

jr_03D_75EB:
    srl a                                         ; $75EB: $CB $3F
    add d                                         ; $75ED: $82
    ld e, a                                       ; $75EE: $5F
    ld hl, $D740                                  ; $75EF: $21 $40 $D7

jr_03D_75F2:
    ld a, [$D780]                                 ; $75F2: $FA $80 $D7
    add a                                         ; $75F5: $87
    jr nc, jr_03D_761C                            ; $75F6: $30 $24

    ld a, [$D7A9]                                 ; $75F8: $FA $A9 $D7
    bit 6, a                                      ; $75FB: $CB $77
    jr nz, jr_03D_761C                            ; $75FD: $20 $1D

    ld a, [$D786]                                 ; $75FF: $FA $86 $D7
    sub c                                         ; $7602: $91
    jr nc, jr_03D_761C                            ; $7603: $30 $17

    cpl                                           ; $7605: $2F
    inc a                                         ; $7606: $3C
    srl a                                         ; $7607: $CB $3F
    ld d, a                                       ; $7609: $57
    ld a, [$D784]                                 ; $760A: $FA $84 $D7
    sub b                                         ; $760D: $90
    jr nc, jr_03D_7612                            ; $760E: $30 $02

    cpl                                           ; $7610: $2F
    inc a                                         ; $7611: $3C

jr_03D_7612:
    srl a                                         ; $7612: $CB $3F
    add d                                         ; $7614: $82
    cp e                                          ; $7615: $BB
    jr nc, jr_03D_761C                            ; $7616: $30 $04

    ld e, a                                       ; $7618: $5F
    ld hl, $D780                                  ; $7619: $21 $80 $D7

jr_03D_761C:
    ld a, [$D7C0]                                 ; $761C: $FA $C0 $D7
    add a                                         ; $761F: $87
    jr nc, jr_03D_7646                            ; $7620: $30 $24

    ld a, [$D7E9]                                 ; $7622: $FA $E9 $D7
    bit 6, a                                      ; $7625: $CB $77
    jr nz, jr_03D_7646                            ; $7627: $20 $1D

    ld a, [$D7C6]                                 ; $7629: $FA $C6 $D7
    sub c                                         ; $762C: $91
    jr nc, jr_03D_7646                            ; $762D: $30 $17

    cpl                                           ; $762F: $2F
    inc a                                         ; $7630: $3C
    srl a                                         ; $7631: $CB $3F
    ld d, a                                       ; $7633: $57
    ld a, [$D7C4]                                 ; $7634: $FA $C4 $D7
    sub b                                         ; $7637: $90
    jr nc, jr_03D_763C                            ; $7638: $30 $02

    cpl                                           ; $763A: $2F
    inc a                                         ; $763B: $3C

jr_03D_763C:
    srl a                                         ; $763C: $CB $3F
    add d                                         ; $763E: $82
    cp e                                          ; $763F: $BB
    jr nc, jr_03D_7646                            ; $7640: $30 $04

    ld e, a                                       ; $7642: $5F
    ld hl, $D7C0                                  ; $7643: $21 $C0 $D7

jr_03D_7646:
    ld a, [$D800]                                 ; $7646: $FA $00 $D8
    add a                                         ; $7649: $87
    jr nc, jr_03D_7670                            ; $764A: $30 $24

    ld a, [$D829]                                 ; $764C: $FA $29 $D8
    bit 6, a                                      ; $764F: $CB $77
    jr nz, jr_03D_7670                            ; $7651: $20 $1D

    ld a, [$D806]                                 ; $7653: $FA $06 $D8
    sub c                                         ; $7656: $91
    jr nc, jr_03D_7670                            ; $7657: $30 $17

    cpl                                           ; $7659: $2F
    inc a                                         ; $765A: $3C
    srl a                                         ; $765B: $CB $3F
    ld d, a                                       ; $765D: $57
    ld a, [$D804]                                 ; $765E: $FA $04 $D8
    sub b                                         ; $7661: $90
    jr nc, jr_03D_7666                            ; $7662: $30 $02

    cpl                                           ; $7664: $2F
    inc a                                         ; $7665: $3C

jr_03D_7666:
    srl a                                         ; $7666: $CB $3F
    add d                                         ; $7668: $82
    cp e                                          ; $7669: $BB
    jr nc, jr_03D_7670                            ; $766A: $30 $04

    ld e, a                                       ; $766C: $5F
    ld hl, $D800                                  ; $766D: $21 $00 $D8

jr_03D_7670:
    ld a, [$D840]                                 ; $7670: $FA $40 $D8
    add a                                         ; $7673: $87
    jr nc, jr_03D_769A                            ; $7674: $30 $24

    ld a, [$D869]                                 ; $7676: $FA $69 $D8
    bit 6, a                                      ; $7679: $CB $77
    jr nz, jr_03D_769A                            ; $767B: $20 $1D

    ld a, [$D846]                                 ; $767D: $FA $46 $D8
    sub c                                         ; $7680: $91
    jr nc, jr_03D_769A                            ; $7681: $30 $17

    cpl                                           ; $7683: $2F
    inc a                                         ; $7684: $3C
    srl a                                         ; $7685: $CB $3F
    ld d, a                                       ; $7687: $57
    ld a, [$D844]                                 ; $7688: $FA $44 $D8
    sub b                                         ; $768B: $90
    jr nc, jr_03D_7690                            ; $768C: $30 $02

    cpl                                           ; $768E: $2F
    inc a                                         ; $768F: $3C

jr_03D_7690:
    srl a                                         ; $7690: $CB $3F
    add d                                         ; $7692: $82
    cp e                                          ; $7693: $BB
    jr nc, jr_03D_769A                            ; $7694: $30 $04

    ld e, a                                       ; $7696: $5F
    ld hl, $D840                                  ; $7697: $21 $40 $D8

jr_03D_769A:
    ret                                           ; $769A: $C9


Call_03D_769B:
    ld hl, $0004                                  ; $769B: $21 $04 $00
    add hl, de                                    ; $769E: $19
    ld a, [hl]                                    ; $769F: $7E
    add $20                                       ; $76A0: $C6 $20
    srl a                                         ; $76A2: $CB $3F
    ld b, a                                       ; $76A4: $47
    ld hl, $0006                                  ; $76A5: $21 $06 $00
    add hl, de                                    ; $76A8: $19
    ld a, [hl]                                    ; $76A9: $7E
    add $20                                       ; $76AA: $C6 $20
    srl a                                         ; $76AC: $CB $3F
    ld c, a                                       ; $76AE: $4F
    ld e, $FF                                     ; $76AF: $1E $FF
    ld hl, $0000                                  ; $76B1: $21 $00 $00
    ld a, [$D740]                                 ; $76B4: $FA $40 $D7
    add a                                         ; $76B7: $87
    jr nc, jr_03D_76E2                            ; $76B8: $30 $28

    ld a, [$D769]                                 ; $76BA: $FA $69 $D7
    bit 6, a                                      ; $76BD: $CB $77
    jr nz, jr_03D_76E2                            ; $76BF: $20 $21

    ld a, [$D744]                                 ; $76C1: $FA $44 $D7
    add $20                                       ; $76C4: $C6 $20
    srl a                                         ; $76C6: $CB $3F
    sub b                                         ; $76C8: $90
    jr nc, jr_03D_76CD                            ; $76C9: $30 $02

    cpl                                           ; $76CB: $2F
    inc a                                         ; $76CC: $3C

jr_03D_76CD:
    ld d, a                                       ; $76CD: $57
    ld a, [$D746]                                 ; $76CE: $FA $46 $D7
    add $20                                       ; $76D1: $C6 $20
    srl a                                         ; $76D3: $CB $3F
    sub b                                         ; $76D5: $90
    jr nc, jr_03D_76DA                            ; $76D6: $30 $02

    cpl                                           ; $76D8: $2F
    inc a                                         ; $76D9: $3C

jr_03D_76DA:
    add d                                         ; $76DA: $82
    cp e                                          ; $76DB: $BB
    jr nc, jr_03D_76E2                            ; $76DC: $30 $04

    ld e, a                                       ; $76DE: $5F
    ld hl, $D740                                  ; $76DF: $21 $40 $D7

jr_03D_76E2:
    ld a, [$D780]                                 ; $76E2: $FA $80 $D7
    add a                                         ; $76E5: $87
    jr nc, jr_03D_7710                            ; $76E6: $30 $28

    ld a, [$D7A9]                                 ; $76E8: $FA $A9 $D7
    bit 6, a                                      ; $76EB: $CB $77
    jr nz, jr_03D_7710                            ; $76ED: $20 $21

    ld a, [$D784]                                 ; $76EF: $FA $84 $D7
    add $20                                       ; $76F2: $C6 $20
    srl a                                         ; $76F4: $CB $3F
    sub b                                         ; $76F6: $90
    jr nc, jr_03D_76FB                            ; $76F7: $30 $02

    cpl                                           ; $76F9: $2F
    inc a                                         ; $76FA: $3C

jr_03D_76FB:
    ld d, a                                       ; $76FB: $57
    ld a, [$D786]                                 ; $76FC: $FA $86 $D7
    add $20                                       ; $76FF: $C6 $20
    srl a                                         ; $7701: $CB $3F
    sub b                                         ; $7703: $90
    jr nc, jr_03D_7708                            ; $7704: $30 $02

    cpl                                           ; $7706: $2F
    inc a                                         ; $7707: $3C

jr_03D_7708:
    add d                                         ; $7708: $82
    cp e                                          ; $7709: $BB
    jr nc, jr_03D_7710                            ; $770A: $30 $04

    ld e, a                                       ; $770C: $5F
    ld hl, $D780                                  ; $770D: $21 $80 $D7

jr_03D_7710:
    ld a, [$D7C0]                                 ; $7710: $FA $C0 $D7
    add a                                         ; $7713: $87
    jr nc, jr_03D_773E                            ; $7714: $30 $28

    ld a, [$D7E9]                                 ; $7716: $FA $E9 $D7
    bit 6, a                                      ; $7719: $CB $77
    jr nz, jr_03D_773E                            ; $771B: $20 $21

    ld a, [$D7C4]                                 ; $771D: $FA $C4 $D7
    add $20                                       ; $7720: $C6 $20
    srl a                                         ; $7722: $CB $3F
    sub b                                         ; $7724: $90
    jr nc, jr_03D_7729                            ; $7725: $30 $02

    cpl                                           ; $7727: $2F
    inc a                                         ; $7728: $3C

jr_03D_7729:
    ld d, a                                       ; $7729: $57
    ld a, [$D7C6]                                 ; $772A: $FA $C6 $D7
    add $20                                       ; $772D: $C6 $20
    srl a                                         ; $772F: $CB $3F
    sub b                                         ; $7731: $90
    jr nc, jr_03D_7736                            ; $7732: $30 $02

    cpl                                           ; $7734: $2F
    inc a                                         ; $7735: $3C

jr_03D_7736:
    add d                                         ; $7736: $82
    cp e                                          ; $7737: $BB
    jr nc, jr_03D_773E                            ; $7738: $30 $04

    ld e, a                                       ; $773A: $5F
    ld hl, $D7C0                                  ; $773B: $21 $C0 $D7

jr_03D_773E:
    ld a, [$D800]                                 ; $773E: $FA $00 $D8
    add a                                         ; $7741: $87
    jr nc, jr_03D_776C                            ; $7742: $30 $28

    ld a, [$D829]                                 ; $7744: $FA $29 $D8
    bit 6, a                                      ; $7747: $CB $77
    jr nz, jr_03D_776C                            ; $7749: $20 $21

    ld a, [$D804]                                 ; $774B: $FA $04 $D8
    add $20                                       ; $774E: $C6 $20
    srl a                                         ; $7750: $CB $3F
    sub b                                         ; $7752: $90
    jr nc, jr_03D_7757                            ; $7753: $30 $02

    cpl                                           ; $7755: $2F
    inc a                                         ; $7756: $3C

jr_03D_7757:
    ld d, a                                       ; $7757: $57
    ld a, [$D806]                                 ; $7758: $FA $06 $D8
    add $20                                       ; $775B: $C6 $20
    srl a                                         ; $775D: $CB $3F
    sub b                                         ; $775F: $90
    jr nc, jr_03D_7764                            ; $7760: $30 $02

    cpl                                           ; $7762: $2F
    inc a                                         ; $7763: $3C

jr_03D_7764:
    add d                                         ; $7764: $82
    cp e                                          ; $7765: $BB
    jr nc, jr_03D_776C                            ; $7766: $30 $04

    ld e, a                                       ; $7768: $5F
    ld hl, $D800                                  ; $7769: $21 $00 $D8

jr_03D_776C:
    ld a, [$D840]                                 ; $776C: $FA $40 $D8
    add a                                         ; $776F: $87
    jr nc, jr_03D_779A                            ; $7770: $30 $28

    ld a, [$D869]                                 ; $7772: $FA $69 $D8
    bit 6, a                                      ; $7775: $CB $77
    jr nz, jr_03D_779A                            ; $7777: $20 $21

    ld a, [$D844]                                 ; $7779: $FA $44 $D8
    add $20                                       ; $777C: $C6 $20
    srl a                                         ; $777E: $CB $3F
    sub b                                         ; $7780: $90
    jr nc, jr_03D_7785                            ; $7781: $30 $02

    cpl                                           ; $7783: $2F
    inc a                                         ; $7784: $3C

jr_03D_7785:
    ld d, a                                       ; $7785: $57
    ld a, [$D846]                                 ; $7786: $FA $46 $D8
    add $20                                       ; $7789: $C6 $20
    srl a                                         ; $778B: $CB $3F
    sub b                                         ; $778D: $90
    jr nc, jr_03D_7792                            ; $778E: $30 $02

    cpl                                           ; $7790: $2F
    inc a                                         ; $7791: $3C

jr_03D_7792:
    add d                                         ; $7792: $82
    cp e                                          ; $7793: $BB
    jr nc, jr_03D_779A                            ; $7794: $30 $04

    ld e, a                                       ; $7796: $5F
    ld hl, $D840                                  ; $7797: $21 $40 $D8

jr_03D_779A:
    ret                                           ; $779A: $C9


    rst RST_38                                    ; $779B: $FF
    rst RST_38                                    ; $779C: $FF
    rst RST_38                                    ; $779D: $FF
    rst RST_38                                    ; $779E: $FF
    rst RST_38                                    ; $779F: $FF
    rst RST_38                                    ; $77A0: $FF
    rst RST_38                                    ; $77A1: $FF
    rst RST_38                                    ; $77A2: $FF
    rst RST_38                                    ; $77A3: $FF
    rst RST_38                                    ; $77A4: $FF
    rst RST_38                                    ; $77A5: $FF
    rst RST_38                                    ; $77A6: $FF
    rst RST_38                                    ; $77A7: $FF
    rst RST_38                                    ; $77A8: $FF
    rst RST_38                                    ; $77A9: $FF
    rst RST_38                                    ; $77AA: $FF
    rst RST_38                                    ; $77AB: $FF
    rst RST_38                                    ; $77AC: $FF
    rst RST_38                                    ; $77AD: $FF
    rst RST_38                                    ; $77AE: $FF
    rst RST_38                                    ; $77AF: $FF
    rst RST_38                                    ; $77B0: $FF
    rst RST_38                                    ; $77B1: $FF
    rst RST_38                                    ; $77B2: $FF
    rst RST_38                                    ; $77B3: $FF
    rst RST_38                                    ; $77B4: $FF
    rst RST_38                                    ; $77B5: $FF
    rst RST_38                                    ; $77B6: $FF
    rst RST_38                                    ; $77B7: $FF
    rst RST_38                                    ; $77B8: $FF
    rst RST_38                                    ; $77B9: $FF
    rst RST_38                                    ; $77BA: $FF
    rst RST_38                                    ; $77BB: $FF
    rst RST_38                                    ; $77BC: $FF
    rst RST_38                                    ; $77BD: $FF
    rst RST_38                                    ; $77BE: $FF
    rst RST_38                                    ; $77BF: $FF
    rst RST_38                                    ; $77C0: $FF
    rst RST_38                                    ; $77C1: $FF
    rst RST_38                                    ; $77C2: $FF
    rst RST_38                                    ; $77C3: $FF
    rst RST_38                                    ; $77C4: $FF
    rst RST_38                                    ; $77C5: $FF
    rst RST_38                                    ; $77C6: $FF
    rst RST_38                                    ; $77C7: $FF
    rst RST_38                                    ; $77C8: $FF
    rst RST_38                                    ; $77C9: $FF
    rst RST_38                                    ; $77CA: $FF
    rst RST_38                                    ; $77CB: $FF
    rst RST_38                                    ; $77CC: $FF
    rst RST_38                                    ; $77CD: $FF
    rst RST_38                                    ; $77CE: $FF
    rst RST_38                                    ; $77CF: $FF
    rst RST_38                                    ; $77D0: $FF
    rst RST_38                                    ; $77D1: $FF
    rst RST_38                                    ; $77D2: $FF
    rst RST_38                                    ; $77D3: $FF
    rst RST_38                                    ; $77D4: $FF
    rst RST_38                                    ; $77D5: $FF
    rst RST_38                                    ; $77D6: $FF
    rst RST_38                                    ; $77D7: $FF
    rst RST_38                                    ; $77D8: $FF
    rst RST_38                                    ; $77D9: $FF
    rst RST_38                                    ; $77DA: $FF
    rst RST_38                                    ; $77DB: $FF
    rst RST_38                                    ; $77DC: $FF
    rst RST_38                                    ; $77DD: $FF
    rst RST_38                                    ; $77DE: $FF
    rst RST_38                                    ; $77DF: $FF
    rst RST_38                                    ; $77E0: $FF
    rst RST_38                                    ; $77E1: $FF
    rst RST_38                                    ; $77E2: $FF
    rst RST_38                                    ; $77E3: $FF
    rst RST_38                                    ; $77E4: $FF
    rst RST_38                                    ; $77E5: $FF
    rst RST_38                                    ; $77E6: $FF
    rst RST_38                                    ; $77E7: $FF
    rst RST_38                                    ; $77E8: $FF
    rst RST_38                                    ; $77E9: $FF
    rst RST_38                                    ; $77EA: $FF
    rst RST_38                                    ; $77EB: $FF
    rst RST_38                                    ; $77EC: $FF
    rst RST_38                                    ; $77ED: $FF
    rst RST_38                                    ; $77EE: $FF
    rst RST_38                                    ; $77EF: $FF
    rst RST_38                                    ; $77F0: $FF
    rst RST_38                                    ; $77F1: $FF
    rst RST_38                                    ; $77F2: $FF
    rst RST_38                                    ; $77F3: $FF
    rst RST_38                                    ; $77F4: $FF
    rst RST_38                                    ; $77F5: $FF
    rst RST_38                                    ; $77F6: $FF
    rst RST_38                                    ; $77F7: $FF
    rst RST_38                                    ; $77F8: $FF
    rst RST_38                                    ; $77F9: $FF
    rst RST_38                                    ; $77FA: $FF
    rst RST_38                                    ; $77FB: $FF
    rst RST_38                                    ; $77FC: $FF
    rst RST_38                                    ; $77FD: $FF
    rst RST_38                                    ; $77FE: $FF
    rst RST_38                                    ; $77FF: $FF
    rst RST_38                                    ; $7800: $FF
    rst RST_38                                    ; $7801: $FF
    rst RST_38                                    ; $7802: $FF
    rst RST_38                                    ; $7803: $FF
    rst RST_38                                    ; $7804: $FF
    rst RST_38                                    ; $7805: $FF
    rst RST_38                                    ; $7806: $FF
    rst RST_38                                    ; $7807: $FF
    rst RST_38                                    ; $7808: $FF
    rst RST_38                                    ; $7809: $FF
    rst RST_38                                    ; $780A: $FF
    rst RST_38                                    ; $780B: $FF
    rst RST_38                                    ; $780C: $FF
    rst RST_38                                    ; $780D: $FF
    rst RST_38                                    ; $780E: $FF
    rst RST_38                                    ; $780F: $FF
    rst RST_38                                    ; $7810: $FF
    rst RST_38                                    ; $7811: $FF
    rst RST_38                                    ; $7812: $FF
    rst RST_38                                    ; $7813: $FF
    rst RST_38                                    ; $7814: $FF
    rst RST_38                                    ; $7815: $FF
    rst RST_38                                    ; $7816: $FF
    rst RST_38                                    ; $7817: $FF
    rst RST_38                                    ; $7818: $FF
    rst RST_38                                    ; $7819: $FF
    rst RST_38                                    ; $781A: $FF
    rst RST_38                                    ; $781B: $FF
    rst RST_38                                    ; $781C: $FF
    rst RST_38                                    ; $781D: $FF
    rst RST_38                                    ; $781E: $FF
    rst RST_38                                    ; $781F: $FF
    rst RST_38                                    ; $7820: $FF
    rst RST_38                                    ; $7821: $FF
    rst RST_38                                    ; $7822: $FF
    rst RST_38                                    ; $7823: $FF
    rst RST_38                                    ; $7824: $FF
    rst RST_38                                    ; $7825: $FF
    rst RST_38                                    ; $7826: $FF
    rst RST_38                                    ; $7827: $FF
    rst RST_38                                    ; $7828: $FF
    rst RST_38                                    ; $7829: $FF
    rst RST_38                                    ; $782A: $FF
    rst RST_38                                    ; $782B: $FF
    rst RST_38                                    ; $782C: $FF
    rst RST_38                                    ; $782D: $FF
    rst RST_38                                    ; $782E: $FF
    rst RST_38                                    ; $782F: $FF
    rst RST_38                                    ; $7830: $FF
    rst RST_38                                    ; $7831: $FF
    rst RST_38                                    ; $7832: $FF
    rst RST_38                                    ; $7833: $FF
    rst RST_38                                    ; $7834: $FF
    rst RST_38                                    ; $7835: $FF
    rst RST_38                                    ; $7836: $FF
    rst RST_38                                    ; $7837: $FF
    rst RST_38                                    ; $7838: $FF
    rst RST_38                                    ; $7839: $FF
    rst RST_38                                    ; $783A: $FF
    rst RST_38                                    ; $783B: $FF
    rst RST_38                                    ; $783C: $FF
    rst RST_38                                    ; $783D: $FF
    rst RST_38                                    ; $783E: $FF
    rst RST_38                                    ; $783F: $FF
    rst RST_38                                    ; $7840: $FF
    rst RST_38                                    ; $7841: $FF
    rst RST_38                                    ; $7842: $FF
    rst RST_38                                    ; $7843: $FF
    rst RST_38                                    ; $7844: $FF
    rst RST_38                                    ; $7845: $FF
    rst RST_38                                    ; $7846: $FF
    rst RST_38                                    ; $7847: $FF
    rst RST_38                                    ; $7848: $FF
    rst RST_38                                    ; $7849: $FF
    rst RST_38                                    ; $784A: $FF
    rst RST_38                                    ; $784B: $FF
    rst RST_38                                    ; $784C: $FF
    rst RST_38                                    ; $784D: $FF
    rst RST_38                                    ; $784E: $FF
    rst RST_38                                    ; $784F: $FF
    rst RST_38                                    ; $7850: $FF
    rst RST_38                                    ; $7851: $FF
    rst RST_38                                    ; $7852: $FF
    rst RST_38                                    ; $7853: $FF
    rst RST_38                                    ; $7854: $FF
    rst RST_38                                    ; $7855: $FF
    rst RST_38                                    ; $7856: $FF
    rst RST_38                                    ; $7857: $FF
    rst RST_38                                    ; $7858: $FF
    rst RST_38                                    ; $7859: $FF
    rst RST_38                                    ; $785A: $FF
    rst RST_38                                    ; $785B: $FF
    rst RST_38                                    ; $785C: $FF
    rst RST_38                                    ; $785D: $FF
    rst RST_38                                    ; $785E: $FF
    rst RST_38                                    ; $785F: $FF
    rst RST_38                                    ; $7860: $FF
    rst RST_38                                    ; $7861: $FF
    rst RST_38                                    ; $7862: $FF
    rst RST_38                                    ; $7863: $FF
    rst RST_38                                    ; $7864: $FF
    rst RST_38                                    ; $7865: $FF
    rst RST_38                                    ; $7866: $FF
    rst RST_38                                    ; $7867: $FF
    rst RST_38                                    ; $7868: $FF
    rst RST_38                                    ; $7869: $FF
    rst RST_38                                    ; $786A: $FF
    rst RST_38                                    ; $786B: $FF
    rst RST_38                                    ; $786C: $FF
    rst RST_38                                    ; $786D: $FF
    rst RST_38                                    ; $786E: $FF
    rst RST_38                                    ; $786F: $FF
    rst RST_38                                    ; $7870: $FF
    rst RST_38                                    ; $7871: $FF
    rst RST_38                                    ; $7872: $FF
    rst RST_38                                    ; $7873: $FF
    rst RST_38                                    ; $7874: $FF
    rst RST_38                                    ; $7875: $FF
    rst RST_38                                    ; $7876: $FF
    rst RST_38                                    ; $7877: $FF
    rst RST_38                                    ; $7878: $FF
    rst RST_38                                    ; $7879: $FF
    rst RST_38                                    ; $787A: $FF
    rst RST_38                                    ; $787B: $FF
    rst RST_38                                    ; $787C: $FF
    rst RST_38                                    ; $787D: $FF
    rst RST_38                                    ; $787E: $FF
    rst RST_38                                    ; $787F: $FF
    rst RST_38                                    ; $7880: $FF
    rst RST_38                                    ; $7881: $FF
    rst RST_38                                    ; $7882: $FF
    rst RST_38                                    ; $7883: $FF
    rst RST_38                                    ; $7884: $FF
    rst RST_38                                    ; $7885: $FF
    rst RST_38                                    ; $7886: $FF
    rst RST_38                                    ; $7887: $FF
    rst RST_38                                    ; $7888: $FF
    rst RST_38                                    ; $7889: $FF
    rst RST_38                                    ; $788A: $FF
    rst RST_38                                    ; $788B: $FF
    rst RST_38                                    ; $788C: $FF
    rst RST_38                                    ; $788D: $FF
    rst RST_38                                    ; $788E: $FF
    rst RST_38                                    ; $788F: $FF
    rst RST_38                                    ; $7890: $FF
    rst RST_38                                    ; $7891: $FF
    rst RST_38                                    ; $7892: $FF
    rst RST_38                                    ; $7893: $FF
    rst RST_38                                    ; $7894: $FF
    rst RST_38                                    ; $7895: $FF
    rst RST_38                                    ; $7896: $FF
    rst RST_38                                    ; $7897: $FF
    rst RST_38                                    ; $7898: $FF
    rst RST_38                                    ; $7899: $FF
    rst RST_38                                    ; $789A: $FF
    rst RST_38                                    ; $789B: $FF
    rst RST_38                                    ; $789C: $FF
    rst RST_38                                    ; $789D: $FF
    rst RST_38                                    ; $789E: $FF
    rst RST_38                                    ; $789F: $FF
    rst RST_38                                    ; $78A0: $FF
    rst RST_38                                    ; $78A1: $FF
    rst RST_38                                    ; $78A2: $FF
    rst RST_38                                    ; $78A3: $FF
    rst RST_38                                    ; $78A4: $FF
    rst RST_38                                    ; $78A5: $FF
    rst RST_38                                    ; $78A6: $FF
    rst RST_38                                    ; $78A7: $FF
    rst RST_38                                    ; $78A8: $FF
    rst RST_38                                    ; $78A9: $FF
    rst RST_38                                    ; $78AA: $FF
    rst RST_38                                    ; $78AB: $FF
    rst RST_38                                    ; $78AC: $FF
    rst RST_38                                    ; $78AD: $FF
    rst RST_38                                    ; $78AE: $FF
    rst RST_38                                    ; $78AF: $FF
    rst RST_38                                    ; $78B0: $FF
    rst RST_38                                    ; $78B1: $FF
    rst RST_38                                    ; $78B2: $FF
    rst RST_38                                    ; $78B3: $FF
    rst RST_38                                    ; $78B4: $FF
    rst RST_38                                    ; $78B5: $FF
    rst RST_38                                    ; $78B6: $FF
    rst RST_38                                    ; $78B7: $FF
    rst RST_38                                    ; $78B8: $FF
    rst RST_38                                    ; $78B9: $FF
    rst RST_38                                    ; $78BA: $FF
    rst RST_38                                    ; $78BB: $FF
    rst RST_38                                    ; $78BC: $FF
    rst RST_38                                    ; $78BD: $FF
    rst RST_38                                    ; $78BE: $FF
    rst RST_38                                    ; $78BF: $FF
    rst RST_38                                    ; $78C0: $FF
    rst RST_38                                    ; $78C1: $FF
    rst RST_38                                    ; $78C2: $FF
    rst RST_38                                    ; $78C3: $FF
    rst RST_38                                    ; $78C4: $FF
    rst RST_38                                    ; $78C5: $FF
    rst RST_38                                    ; $78C6: $FF
    rst RST_38                                    ; $78C7: $FF
    rst RST_38                                    ; $78C8: $FF
    rst RST_38                                    ; $78C9: $FF
    rst RST_38                                    ; $78CA: $FF
    rst RST_38                                    ; $78CB: $FF
    rst RST_38                                    ; $78CC: $FF
    rst RST_38                                    ; $78CD: $FF
    rst RST_38                                    ; $78CE: $FF
    rst RST_38                                    ; $78CF: $FF
    rst RST_38                                    ; $78D0: $FF
    rst RST_38                                    ; $78D1: $FF
    rst RST_38                                    ; $78D2: $FF
    rst RST_38                                    ; $78D3: $FF
    rst RST_38                                    ; $78D4: $FF
    rst RST_38                                    ; $78D5: $FF
    rst RST_38                                    ; $78D6: $FF
    rst RST_38                                    ; $78D7: $FF
    rst RST_38                                    ; $78D8: $FF
    rst RST_38                                    ; $78D9: $FF
    rst RST_38                                    ; $78DA: $FF
    rst RST_38                                    ; $78DB: $FF
    rst RST_38                                    ; $78DC: $FF
    rst RST_38                                    ; $78DD: $FF
    rst RST_38                                    ; $78DE: $FF
    rst RST_38                                    ; $78DF: $FF
    rst RST_38                                    ; $78E0: $FF
    rst RST_38                                    ; $78E1: $FF
    rst RST_38                                    ; $78E2: $FF
    rst RST_38                                    ; $78E3: $FF
    rst RST_38                                    ; $78E4: $FF
    rst RST_38                                    ; $78E5: $FF
    rst RST_38                                    ; $78E6: $FF
    rst RST_38                                    ; $78E7: $FF
    rst RST_38                                    ; $78E8: $FF
    rst RST_38                                    ; $78E9: $FF
    rst RST_38                                    ; $78EA: $FF
    rst RST_38                                    ; $78EB: $FF
    rst RST_38                                    ; $78EC: $FF
    rst RST_38                                    ; $78ED: $FF
    rst RST_38                                    ; $78EE: $FF
    rst RST_38                                    ; $78EF: $FF
    rst RST_38                                    ; $78F0: $FF
    rst RST_38                                    ; $78F1: $FF
    rst RST_38                                    ; $78F2: $FF
    rst RST_38                                    ; $78F3: $FF
    rst RST_38                                    ; $78F4: $FF
    rst RST_38                                    ; $78F5: $FF
    rst RST_38                                    ; $78F6: $FF
    rst RST_38                                    ; $78F7: $FF
    rst RST_38                                    ; $78F8: $FF
    rst RST_38                                    ; $78F9: $FF
    rst RST_38                                    ; $78FA: $FF
    rst RST_38                                    ; $78FB: $FF
    rst RST_38                                    ; $78FC: $FF
    rst RST_38                                    ; $78FD: $FF
    rst RST_38                                    ; $78FE: $FF
    rst RST_38                                    ; $78FF: $FF
    rst RST_38                                    ; $7900: $FF
    rst RST_38                                    ; $7901: $FF
    rst RST_38                                    ; $7902: $FF
    rst RST_38                                    ; $7903: $FF
    rst RST_38                                    ; $7904: $FF
    rst RST_38                                    ; $7905: $FF
    rst RST_38                                    ; $7906: $FF
    rst RST_38                                    ; $7907: $FF
    rst RST_38                                    ; $7908: $FF
    rst RST_38                                    ; $7909: $FF
    rst RST_38                                    ; $790A: $FF
    rst RST_38                                    ; $790B: $FF
    rst RST_38                                    ; $790C: $FF
    rst RST_38                                    ; $790D: $FF
    rst RST_38                                    ; $790E: $FF
    rst RST_38                                    ; $790F: $FF
    rst RST_38                                    ; $7910: $FF
    rst RST_38                                    ; $7911: $FF
    rst RST_38                                    ; $7912: $FF
    rst RST_38                                    ; $7913: $FF
    rst RST_38                                    ; $7914: $FF
    rst RST_38                                    ; $7915: $FF
    rst RST_38                                    ; $7916: $FF
    rst RST_38                                    ; $7917: $FF
    rst RST_38                                    ; $7918: $FF
    rst RST_38                                    ; $7919: $FF
    rst RST_38                                    ; $791A: $FF
    rst RST_38                                    ; $791B: $FF
    rst RST_38                                    ; $791C: $FF
    rst RST_38                                    ; $791D: $FF
    rst RST_38                                    ; $791E: $FF
    rst RST_38                                    ; $791F: $FF
    rst RST_38                                    ; $7920: $FF
    rst RST_38                                    ; $7921: $FF
    rst RST_38                                    ; $7922: $FF
    rst RST_38                                    ; $7923: $FF
    rst RST_38                                    ; $7924: $FF
    rst RST_38                                    ; $7925: $FF
    rst RST_38                                    ; $7926: $FF
    rst RST_38                                    ; $7927: $FF
    rst RST_38                                    ; $7928: $FF
    rst RST_38                                    ; $7929: $FF
    rst RST_38                                    ; $792A: $FF
    rst RST_38                                    ; $792B: $FF
    rst RST_38                                    ; $792C: $FF
    rst RST_38                                    ; $792D: $FF
    rst RST_38                                    ; $792E: $FF
    rst RST_38                                    ; $792F: $FF
    rst RST_38                                    ; $7930: $FF
    rst RST_38                                    ; $7931: $FF
    rst RST_38                                    ; $7932: $FF
    rst RST_38                                    ; $7933: $FF
    rst RST_38                                    ; $7934: $FF
    rst RST_38                                    ; $7935: $FF
    rst RST_38                                    ; $7936: $FF
    rst RST_38                                    ; $7937: $FF
    rst RST_38                                    ; $7938: $FF
    rst RST_38                                    ; $7939: $FF
    rst RST_38                                    ; $793A: $FF
    rst RST_38                                    ; $793B: $FF
    rst RST_38                                    ; $793C: $FF
    rst RST_38                                    ; $793D: $FF
    rst RST_38                                    ; $793E: $FF
    rst RST_38                                    ; $793F: $FF
    rst RST_38                                    ; $7940: $FF
    rst RST_38                                    ; $7941: $FF
    rst RST_38                                    ; $7942: $FF
    rst RST_38                                    ; $7943: $FF
    rst RST_38                                    ; $7944: $FF
    rst RST_38                                    ; $7945: $FF
    rst RST_38                                    ; $7946: $FF
    rst RST_38                                    ; $7947: $FF
    rst RST_38                                    ; $7948: $FF
    rst RST_38                                    ; $7949: $FF
    rst RST_38                                    ; $794A: $FF
    rst RST_38                                    ; $794B: $FF
    rst RST_38                                    ; $794C: $FF
    rst RST_38                                    ; $794D: $FF
    rst RST_38                                    ; $794E: $FF
    rst RST_38                                    ; $794F: $FF
    rst RST_38                                    ; $7950: $FF
    rst RST_38                                    ; $7951: $FF
    rst RST_38                                    ; $7952: $FF
    rst RST_38                                    ; $7953: $FF
    rst RST_38                                    ; $7954: $FF
    rst RST_38                                    ; $7955: $FF
    rst RST_38                                    ; $7956: $FF
    rst RST_38                                    ; $7957: $FF
    rst RST_38                                    ; $7958: $FF
    rst RST_38                                    ; $7959: $FF
    rst RST_38                                    ; $795A: $FF
    rst RST_38                                    ; $795B: $FF
    rst RST_38                                    ; $795C: $FF
    rst RST_38                                    ; $795D: $FF
    rst RST_38                                    ; $795E: $FF
    rst RST_38                                    ; $795F: $FF
    rst RST_38                                    ; $7960: $FF
    rst RST_38                                    ; $7961: $FF
    rst RST_38                                    ; $7962: $FF
    rst RST_38                                    ; $7963: $FF
    rst RST_38                                    ; $7964: $FF
    rst RST_38                                    ; $7965: $FF
    rst RST_38                                    ; $7966: $FF
    rst RST_38                                    ; $7967: $FF
    rst RST_38                                    ; $7968: $FF
    rst RST_38                                    ; $7969: $FF
    rst RST_38                                    ; $796A: $FF
    rst RST_38                                    ; $796B: $FF
    rst RST_38                                    ; $796C: $FF
    rst RST_38                                    ; $796D: $FF
    rst RST_38                                    ; $796E: $FF
    rst RST_38                                    ; $796F: $FF
    rst RST_38                                    ; $7970: $FF
    rst RST_38                                    ; $7971: $FF
    rst RST_38                                    ; $7972: $FF
    rst RST_38                                    ; $7973: $FF
    rst RST_38                                    ; $7974: $FF
    rst RST_38                                    ; $7975: $FF
    rst RST_38                                    ; $7976: $FF
    rst RST_38                                    ; $7977: $FF
    rst RST_38                                    ; $7978: $FF
    rst RST_38                                    ; $7979: $FF
    rst RST_38                                    ; $797A: $FF
    rst RST_38                                    ; $797B: $FF
    rst RST_38                                    ; $797C: $FF
    rst RST_38                                    ; $797D: $FF
    rst RST_38                                    ; $797E: $FF
    rst RST_38                                    ; $797F: $FF
    rst RST_38                                    ; $7980: $FF
    rst RST_38                                    ; $7981: $FF
    rst RST_38                                    ; $7982: $FF
    rst RST_38                                    ; $7983: $FF
    rst RST_38                                    ; $7984: $FF
    rst RST_38                                    ; $7985: $FF
    rst RST_38                                    ; $7986: $FF
    rst RST_38                                    ; $7987: $FF
    rst RST_38                                    ; $7988: $FF
    rst RST_38                                    ; $7989: $FF
    rst RST_38                                    ; $798A: $FF
    rst RST_38                                    ; $798B: $FF
    rst RST_38                                    ; $798C: $FF
    rst RST_38                                    ; $798D: $FF
    rst RST_38                                    ; $798E: $FF
    rst RST_38                                    ; $798F: $FF
    rst RST_38                                    ; $7990: $FF
    rst RST_38                                    ; $7991: $FF
    rst RST_38                                    ; $7992: $FF
    rst RST_38                                    ; $7993: $FF
    rst RST_38                                    ; $7994: $FF
    rst RST_38                                    ; $7995: $FF
    rst RST_38                                    ; $7996: $FF
    rst RST_38                                    ; $7997: $FF
    rst RST_38                                    ; $7998: $FF
    rst RST_38                                    ; $7999: $FF
    rst RST_38                                    ; $799A: $FF
    rst RST_38                                    ; $799B: $FF
    rst RST_38                                    ; $799C: $FF
    rst RST_38                                    ; $799D: $FF
    rst RST_38                                    ; $799E: $FF
    rst RST_38                                    ; $799F: $FF
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
