; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03b", ROMX[$4000], BANK[$3b]

    xor a                                         ; $4000: $AF
    ld [$C31A], a                                 ; $4001: $EA $1A $C3
    ld sp, $DD00                                  ; $4004: $31 $00 $DD

jr_03B_4007:
    ld a, [$C311]                                 ; $4007: $FA $11 $C3
    inc a                                         ; $400A: $3C
    cp $0A                                        ; $400B: $FE $0A
    jr c, jr_03B_4010                             ; $400D: $38 $01

    xor a                                         ; $400F: $AF

jr_03B_4010:
    ld [$C311], a                                 ; $4010: $EA $11 $C3
    cp $00                                        ; $4013: $FE $00
    jr nz, jr_03B_4020                            ; $4015: $20 $09

    ld a, [$C001]                                 ; $4017: $FA $01 $C0
    bit 6, a                                      ; $401A: $CB $77
    jr z, jr_03B_4007                             ; $401C: $28 $E9

    jr jr_03B_402B                                ; $401E: $18 $0B

jr_03B_4020:
    cp $09                                        ; $4020: $FE $09
    jr nz, jr_03B_402B                            ; $4022: $20 $07

    ld a, [$C001]                                 ; $4024: $FA $01 $C0
    bit 7, a                                      ; $4027: $CB $7F
    jr z, jr_03B_4007                             ; $4029: $28 $DC

jr_03B_402B:
    call Call_000_0424                            ; $402B: $CD $24 $04
    di                                            ; $402E: $F3
    rst RST_10                                    ; $402F: $D7
    ld hl, $C03A                                  ; $4030: $21 $3A $C0
    res 1, [hl]                                   ; $4033: $CB $8E
    set 2, [hl]                                   ; $4035: $CB $D6
    ld a, $FF                                     ; $4037: $3E $FF
    ldh [rBGP], a                                 ; $4039: $E0 $47
    ldh [rOBP0], a                                ; $403B: $E0 $48
    ldh [rOBP1], a                                ; $403D: $E0 $49
    ldh [$FFEA], a                                ; $403F: $E0 $EA
    ldh [$FFEB], a                                ; $4041: $E0 $EB
    ldh [$FFEC], a                                ; $4043: $E0 $EC
    call Call_000_13ED                            ; $4045: $CD $ED $13
    ld a, [$C311]                                 ; $4048: $FA $11 $C3
    add a                                         ; $404B: $87
    ld hl, $4461                                  ; $404C: $21 $61 $44
    ld e, a                                       ; $404F: $5F
    ld d, $00                                     ; $4050: $16 $00
    add hl, de                                    ; $4052: $19
    ld e, [hl]                                    ; $4053: $5E
    inc hl                                        ; $4054: $23
    ld d, [hl]                                    ; $4055: $56
    call Call_000_14C0                            ; $4056: $CD $C0 $14
    xor a                                         ; $4059: $AF
    ldh [$FFE4], a                                ; $405A: $E0 $E4
    ld [$C2AA], a                                 ; $405C: $EA $AA $C2
    ld [$C2AC], a                                 ; $405F: $EA $AC $C2
    ldh [$FFE2], a                                ; $4062: $E0 $E2
    ld a, [$C311]                                 ; $4064: $FA $11 $C3
    add a                                         ; $4067: $87
    ld hl, $44CF                                  ; $4068: $21 $CF $44
    ld e, a                                       ; $406B: $5F
    ld d, $00                                     ; $406C: $16 $00
    add hl, de                                    ; $406E: $19
    ld a, [hl+]                                   ; $406F: $2A
    ld d, [hl]                                    ; $4070: $56
    ld l, a                                       ; $4071: $6F
    ld h, d                                       ; $4072: $62
    ld b, $2A                                     ; $4073: $06 $2A
    ld de, $C349                                  ; $4075: $11 $49 $C3
    rst RST_20                                    ; $4078: $E7
    xor a                                         ; $4079: $AF
    ld hl, $C339                                  ; $407A: $21 $39 $C3
    ld c, $10                                     ; $407D: $0E $10

jr_03B_407F:
    ld [hl+], a                                   ; $407F: $22
    dec c                                         ; $4080: $0D
    jr nz, jr_03B_407F                            ; $4081: $20 $FC

    ld hl, $C339                                  ; $4083: $21 $39 $C3
    ld de, $9100                                  ; $4086: $11 $00 $91
    ld b, $32                                     ; $4089: $06 $32
    call Call_000_1188                            ; $408B: $CD $88 $11
    ld hl, $4E7F                                  ; $408E: $21 $7F $4E
    ld de, $9420                                  ; $4091: $11 $20 $94
    ld b, $01                                     ; $4094: $06 $01
    call Call_000_1188                            ; $4096: $CD $88 $11
    ld hl, $7DE5                                  ; $4099: $21 $E5 $7D
    ld de, $C349                                  ; $409C: $11 $49 $C3
    ld b, $30                                     ; $409F: $06 $30
    rst RST_20                                    ; $40A1: $E7
    ld a, [$C311]                                 ; $40A2: $FA $11 $C3
    add a                                         ; $40A5: $87
    ld e, a                                       ; $40A6: $5F
    ld d, $00                                     ; $40A7: $16 $00
    ld hl, $453D                                  ; $40A9: $21 $3D $45
    add hl, de                                    ; $40AC: $19
    ld e, [hl]                                    ; $40AD: $5E
    inc hl                                        ; $40AE: $23
    ld d, [hl]                                    ; $40AF: $56
    ld hl, $C349                                  ; $40B0: $21 $49 $C3
    add hl, de                                    ; $40B3: $19
    ld de, $9430                                  ; $40B4: $11 $30 $94
    ld b, $09                                     ; $40B7: $06 $09
    call Call_000_1188                            ; $40B9: $CD $88 $11
    ld a, [$C311]                                 ; $40BC: $FA $11 $C3
    ld c, a                                       ; $40BF: $4F
    add a                                         ; $40C0: $87
    add c                                         ; $40C1: $81
    ld hl, $451F                                  ; $40C2: $21 $1F $45
    ld e, a                                       ; $40C5: $5F
    ld d, $00                                     ; $40C6: $16 $00
    add hl, de                                    ; $40C8: $19
    ld a, [hl+]                                   ; $40C9: $2A
    ld d, [hl]                                    ; $40CA: $56
    inc hl                                        ; $40CB: $23
    push hl                                       ; $40CC: $E5
    ld l, a                                       ; $40CD: $6F
    ld h, d                                       ; $40CE: $62
    ld de, $C349                                  ; $40CF: $11 $49 $C3
    ld b, $30                                     ; $40D2: $06 $30
    rst RST_20                                    ; $40D4: $E7
    pop hl                                        ; $40D5: $E1
    ld b, [hl]                                    ; $40D6: $46
    ld hl, $C349                                  ; $40D7: $21 $49 $C3
    ld de, $94C0                                  ; $40DA: $11 $C0 $94
    call Call_000_1188                            ; $40DD: $CD $88 $11
    ld a, [$C311]                                 ; $40E0: $FA $11 $C3
    add a                                         ; $40E3: $87
    ld hl, $44F7                                  ; $40E4: $21 $F7 $44
    ld e, a                                       ; $40E7: $5F
    ld d, $00                                     ; $40E8: $16 $00
    add hl, de                                    ; $40EA: $19
    ld a, [hl+]                                   ; $40EB: $2A
    ld d, [hl]                                    ; $40EC: $56
    ld l, a                                       ; $40ED: $6F
    ld h, d                                       ; $40EE: $62
    ld b, $31                                     ; $40EF: $06 $31
    ld de, $CB29                                  ; $40F1: $11 $29 $CB
    rst RST_20                                    ; $40F4: $E7
    ld e, $00                                     ; $40F5: $1E $00
    ld d, $10                                     ; $40F7: $16 $10
    ld hl, $9800                                  ; $40F9: $21 $00 $98
    ld b, $14                                     ; $40FC: $06 $14
    ld c, $20                                     ; $40FE: $0E $20
    call Call_000_10EA                            ; $4100: $CD $EA $10
    ld e, $00                                     ; $4103: $1E $00
    ld d, $10                                     ; $4105: $16 $10
    ld hl, $9C00                                  ; $4107: $21 $00 $9C
    ld b, $14                                     ; $410A: $06 $14
    ld c, $20                                     ; $410C: $0E $20
    call Call_000_10EA                            ; $410E: $CD $EA $10
    ld a, [$C311]                                 ; $4111: $FA $11 $C3
    add a                                         ; $4114: $87
    ld hl, $44E3                                  ; $4115: $21 $E3 $44
    ld e, a                                       ; $4118: $5F
    ld d, $00                                     ; $4119: $16 $00
    add hl, de                                    ; $411B: $19
    ld e, [hl]                                    ; $411C: $5E
    inc hl                                        ; $411D: $23
    ld d, [hl]                                    ; $411E: $56
    ld hl, $9C21                                  ; $411F: $21 $21 $9C
    ld b, $07                                     ; $4122: $06 $07
    ld c, $07                                     ; $4124: $0E $07
    ld a, $11                                     ; $4126: $3E $11
    call Call_000_0FF7                            ; $4128: $CD $F7 $0F
    ld e, $00                                     ; $412B: $1E $00
    ld d, $42                                     ; $412D: $16 $42
    ld hl, $9C8D                                  ; $412F: $21 $8D $9C
    ld b, $06                                     ; $4132: $06 $06
    ld c, $06                                     ; $4134: $0E $06
    call Call_000_10EA                            ; $4136: $CD $EA $10
    ld e, $01                                     ; $4139: $1E $01
    ld d, $43                                     ; $413B: $16 $43
    ld hl, $9CE9                                  ; $413D: $21 $E9 $9C
    ld b, $03                                     ; $4140: $06 $03
    ld c, $03                                     ; $4142: $0E $03
    call Call_000_1111                            ; $4144: $CD $11 $11
    ld a, [$C311]                                 ; $4147: $FA $11 $C3
    ld c, a                                       ; $414A: $4F
    add a                                         ; $414B: $87
    add c                                         ; $414C: $81
    ld hl, $4579                                  ; $414D: $21 $79 $45
    ld e, a                                       ; $4150: $5F
    ld d, $00                                     ; $4151: $16 $00
    add hl, de                                    ; $4153: $19
    ld a, [hl+]                                   ; $4154: $2A
    ld d, [hl]                                    ; $4155: $56
    inc hl                                        ; $4156: $23
    ld b, [hl]                                    ; $4157: $46
    ld l, a                                       ; $4158: $6F
    ld h, d                                       ; $4159: $62
    ld e, $02                                     ; $415A: $1E $02
    ld d, $4C                                     ; $415C: $16 $4C
    ld c, $02                                     ; $415E: $0E $02
    call Call_000_1139                            ; $4160: $CD $39 $11
    call Call_000_0F9E                            ; $4163: $CD $9E $0F
    ld hl, $D6C0                                  ; $4166: $21 $C0 $D6
    ld de, $24EF                                  ; $4169: $11 $EF $24
    call Call_000_0F8E                            ; $416C: $CD $8E $0F
    ld a, [$C311]                                 ; $416F: $FA $11 $C3
    ld c, a                                       ; $4172: $4F
    add a                                         ; $4173: $87
    add c                                         ; $4174: $81
    ld hl, $4475                                  ; $4175: $21 $75 $44
    ld e, a                                       ; $4178: $5F
    ld d, $00                                     ; $4179: $16 $00
    add hl, de                                    ; $417B: $19
    ld a, [hl+]                                   ; $417C: $2A
    ld e, [hl]                                    ; $417D: $5E
    inc hl                                        ; $417E: $23
    ld d, [hl]                                    ; $417F: $56
    ld hl, $D6D1                                  ; $4180: $21 $D1 $D6
    ld [hl+], a                                   ; $4183: $22
    ld [hl], e                                    ; $4184: $73
    inc hl                                        ; $4185: $23
    ld [hl], d                                    ; $4186: $72
    ld hl, $D6C2                                  ; $4187: $21 $C2 $D6
    ld [hl], $30                                  ; $418A: $36 $30
    ld hl, $D6C4                                  ; $418C: $21 $C4 $D6
    ld [hl], $7C                                  ; $418F: $36 $7C
    ld hl, $D6C6                                  ; $4191: $21 $C6 $D6
    ld [hl], $1E                                  ; $4194: $36 $1E
    ld hl, $D6E9                                  ; $4196: $21 $E9 $D6
    ld [hl], $FF                                  ; $4199: $36 $FF
    ld hl, $D6C0                                  ; $419B: $21 $C0 $D6
    call Call_000_0DB5                            ; $419E: $CD $B5 $0D
    ld a, $01                                     ; $41A1: $3E $01
    ld [$C2B5], a                                 ; $41A3: $EA $B5 $C2
    ld a, $87                                     ; $41A6: $3E $87
    ld [$C2B6], a                                 ; $41A8: $EA $B6 $C2
    ld a, $54                                     ; $41AB: $3E $54
    ld [$C2B9], a                                 ; $41AD: $EA $B9 $C2
    ld a, $86                                     ; $41B0: $3E $86
    ld [$C2BA], a                                 ; $41B2: $EA $BA $C2
    ld a, $87                                     ; $41B5: $3E $87
    rst RST_18                                    ; $41B7: $DF
    ldh a, [rSTAT]                                ; $41B8: $F0 $41
    or $40                                        ; $41BA: $F6 $40
    ldh [rSTAT], a                                ; $41BC: $E0 $41
    ld a, $17                                     ; $41BE: $3E $17
    ld a, $8F                                     ; $41C0: $3E $8F
    ldh [rLYC], a                                 ; $41C2: $E0 $45
    ldh a, [rIE]                                  ; $41C4: $F0 $FF
    or $03                                        ; $41C6: $F6 $03
    ldh [rIE], a                                  ; $41C8: $E0 $FF
    ei                                            ; $41CA: $FB
    ld de, $4433                                  ; $41CB: $11 $33 $44
    ld hl, $C329                                  ; $41CE: $21 $29 $C3
    ld c, $24                                     ; $41D1: $0E $24

jr_03B_41D3:
    ld a, [de]                                    ; $41D3: $1A
    inc de                                        ; $41D4: $13
    ld [hl+], a                                   ; $41D5: $22
    dec c                                         ; $41D6: $0D
    jr nz, jr_03B_41D3                            ; $41D7: $20 $FA

    ld hl, $4551                                  ; $41D9: $21 $51 $45
    ld a, [$C006]                                 ; $41DC: $FA $06 $C0
    or a                                          ; $41DF: $B7
    jr z, jr_03B_41E5                             ; $41E0: $28 $03

    ld hl, $4565                                  ; $41E2: $21 $65 $45

jr_03B_41E5:
    ld a, [$C311]                                 ; $41E5: $FA $11 $C3
    add a                                         ; $41E8: $87
    ld e, a                                       ; $41E9: $5F
    ld d, $00                                     ; $41EA: $16 $00
    add hl, de                                    ; $41EC: $19
    ld a, [hl+]                                   ; $41ED: $2A
    ld [$C32B], a                                 ; $41EE: $EA $2B $C3
    ld a, [hl+]                                   ; $41F1: $2A
    ld [$C32C], a                                 ; $41F2: $EA $2C $C3
    ld a, [$C311]                                 ; $41F5: $FA $11 $C3
    ld e, a                                       ; $41F8: $5F
    ld d, $00                                     ; $41F9: $16 $00
    ld hl, $4457                                  ; $41FB: $21 $57 $44
    add hl, de                                    ; $41FE: $19
    ld a, [hl]                                    ; $41FF: $7E
    call Call_000_135D                            ; $4200: $CD $5D $13
    call Call_000_0430                            ; $4203: $CD $30 $04
    call Call_000_0430                            ; $4206: $CD $30 $04
    ld a, $1B                                     ; $4209: $3E $1B
    ldh [rBGP], a                                 ; $420B: $E0 $47
    ldh [$FFEA], a                                ; $420D: $E0 $EA
    ldh [$FFEB], a                                ; $420F: $E0 $EB
    ldh [$FFEC], a                                ; $4211: $E0 $EC
    ld a, $4F                                     ; $4213: $3E $4F
    ldh [rOBP0], a                                ; $4215: $E0 $48
    ldh [rOBP1], a                                ; $4217: $E0 $49
    call Call_000_147A                            ; $4219: $CD $7A $14

Jump_03B_421C:
    ld hl, $D6C0                                  ; $421C: $21 $C0 $D6
    ld a, [$C32E]                                 ; $421F: $FA $2E $C3
    and $02                                       ; $4222: $E6 $02
    jr nz, jr_03B_4233                            ; $4224: $20 $0D

    ld a, [$D6C0]                                 ; $4226: $FA $C0 $D6
    and $EF                                       ; $4229: $E6 $EF
    ld [$D6C0], a                                 ; $422B: $EA $C0 $D6
    call Call_000_0E28                            ; $422E: $CD $28 $0E
    jr jr_03B_426F                                ; $4231: $18 $3C

jr_03B_4233:
    call Call_000_0DD4                            ; $4233: $CD $D4 $0D
    ld a, [$D6C0]                                 ; $4236: $FA $C0 $D6
    and $10                                       ; $4239: $E6 $10
    jr z, jr_03B_426F                             ; $423B: $28 $32

    ld a, [$C311]                                 ; $423D: $FA $11 $C3
    ld c, a                                       ; $4240: $4F
    add a                                         ; $4241: $87
    add c                                         ; $4242: $81
    ld hl, $44B1                                  ; $4243: $21 $B1 $44
    ld e, a                                       ; $4246: $5F
    ld d, $00                                     ; $4247: $16 $00
    add hl, de                                    ; $4249: $19
    ld a, [hl+]                                   ; $424A: $2A
    ld e, [hl]                                    ; $424B: $5E
    inc hl                                        ; $424C: $23
    ld d, [hl]                                    ; $424D: $56
    ld hl, $D6D1                                  ; $424E: $21 $D1 $D6
    ld [hl+], a                                   ; $4251: $22
    ld [hl], e                                    ; $4252: $73
    inc hl                                        ; $4253: $23
    ld [hl], d                                    ; $4254: $72
    xor a                                         ; $4255: $AF
    ld [$D6D4], a                                 ; $4256: $EA $D4 $D6
    ld a, [$D6C0]                                 ; $4259: $FA $C0 $D6
    and $EF                                       ; $425C: $E6 $EF
    ld [$D6C0], a                                 ; $425E: $EA $C0 $D6
    ld hl, $D6C0                                  ; $4261: $21 $C0 $D6
    call Call_000_0DB5                            ; $4264: $CD $B5 $0D
    ld a, [$C32E]                                 ; $4267: $FA $2E $C3
    and $FD                                       ; $426A: $E6 $FD
    ld [$C32E], a                                 ; $426C: $EA $2E $C3

jr_03B_426F:
    ld a, [$C311]                                 ; $426F: $FA $11 $C3
    cp $04                                        ; $4272: $FE $04
    jr nc, jr_03B_427E                            ; $4274: $30 $08

    ld b, $37                                     ; $4276: $06 $37
    ld hl, $4018                                  ; $4278: $21 $18 $40
    rst RST_08                                    ; $427B: $CF
    jr jr_03B_4284                                ; $427C: $18 $06

jr_03B_427E:
    ld b, $38                                     ; $427E: $06 $38
    ld hl, $4018                                  ; $4280: $21 $18 $40
    rst RST_08                                    ; $4283: $CF

jr_03B_4284:
    call Call_03B_43F6                            ; $4284: $CD $F6 $43
    call Call_03B_42E6                            ; $4287: $CD $E6 $42
    ld hl, $C329                                  ; $428A: $21 $29 $C3
    ld e, [hl]                                    ; $428D: $5E
    inc hl                                        ; $428E: $23
    ld d, [hl]                                    ; $428F: $56
    inc de                                        ; $4290: $13
    ld [hl], d                                    ; $4291: $72
    dec hl                                        ; $4292: $2B
    ld [hl], e                                    ; $4293: $73
    call Call_000_0424                            ; $4294: $CD $24 $04
    ld a, [$C32E]                                 ; $4297: $FA $2E $C3
    add a                                         ; $429A: $87
    jr c, jr_03B_42AE                             ; $429B: $38 $11

    ldh a, [$FF99]                                ; $429D: $F0 $99
    ld e, a                                       ; $429F: $5F
    ldh a, [$FFAC]                                ; $42A0: $F0 $AC
    or e                                          ; $42A2: $B3
    ld e, a                                       ; $42A3: $5F
    and $80                                       ; $42A4: $E6 $80
    jr nz, jr_03B_42C7                            ; $42A6: $20 $1F

    ld a, e                                       ; $42A8: $7B
    and $20                                       ; $42A9: $E6 $20
    jp z, Jump_03B_421C                           ; $42AB: $CA $1C $42

jr_03B_42AE:
    ld hl, $C03A                                  ; $42AE: $21 $3A $C0
    res 2, [hl]                                   ; $42B1: $CB $96
    ld a, $00                                     ; $42B3: $3E $00
    call Call_000_135D                            ; $42B5: $CD $5D $13
    call Call_000_0424                            ; $42B8: $CD $24 $04
    ld a, [$C31A]                                 ; $42BB: $FA $1A $C3
    or a                                          ; $42BE: $B7
    jr nz, jr_03B_42E0                            ; $42BF: $20 $1F

    ld b, $3C                                     ; $42C1: $06 $3C
    ld hl, $54CD                                  ; $42C3: $21 $CD $54
    rst RST_00                                    ; $42C6: $C7

jr_03B_42C7:
    ld hl, $C03A                                  ; $42C7: $21 $3A $C0
    res 2, [hl]                                   ; $42CA: $CB $96
    ld a, $00                                     ; $42CC: $3E $00
    call Call_000_135D                            ; $42CE: $CD $5D $13
    call Call_000_0424                            ; $42D1: $CD $24 $04
    ld a, [$C31A]                                 ; $42D4: $FA $1A $C3
    or a                                          ; $42D7: $B7
    jr nz, jr_03B_42E0                            ; $42D8: $20 $06

    ld b, $2B                                     ; $42DA: $06 $2B
    ld hl, $4000                                  ; $42DC: $21 $00 $40
    rst RST_00                                    ; $42DF: $C7

jr_03B_42E0:
    ld b, $3B                                     ; $42E0: $06 $3B
    ld hl, $7260                                  ; $42E2: $21 $60 $72
    rst RST_00                                    ; $42E5: $C7

Call_03B_42E6:
    ld a, [$C34C]                                 ; $42E6: $FA $4C $C3
    or a                                          ; $42E9: $B7
    jr nz, jr_03B_4303                            ; $42EA: $20 $17

    ld a, [$C32D]                                 ; $42EC: $FA $2D $C3
    or a                                          ; $42EF: $B7
    ret z                                         ; $42F0: $C8

    xor a                                         ; $42F1: $AF
    ld [$C32D], a                                 ; $42F2: $EA $2D $C3
    ld a, $09                                     ; $42F5: $3E $09
    ld [$C34A], a                                 ; $42F7: $EA $4A $C3
    ld [$C34C], a                                 ; $42FA: $EA $4C $C3
    ld a, $31                                     ; $42FD: $3E $31
    ld [$C34B], a                                 ; $42FF: $EA $4B $C3
    ret                                           ; $4302: $C9


jr_03B_4303:
    ld a, [$C34A]                                 ; $4303: $FA $4A $C3
    or a                                          ; $4306: $B7
    jp z, Jump_03B_4393                           ; $4307: $CA $93 $43

    dec a                                         ; $430A: $3D
    ld [$C34A], a                                 ; $430B: $EA $4A $C3
    or a                                          ; $430E: $B7
    jr nz, jr_03B_4360                            ; $430F: $20 $4F

    push af                                       ; $4311: $F5
    ld a, [$C311]                                 ; $4312: $FA $11 $C3
    ld c, a                                       ; $4315: $4F
    add a                                         ; $4316: $87
    add c                                         ; $4317: $81
    ld hl, $4493                                  ; $4318: $21 $93 $44
    ld e, a                                       ; $431B: $5F
    ld d, $00                                     ; $431C: $16 $00
    add hl, de                                    ; $431E: $19
    ld a, [hl+]                                   ; $431F: $2A
    ld e, [hl]                                    ; $4320: $5E
    inc hl                                        ; $4321: $23
    ld d, [hl]                                    ; $4322: $56
    ld hl, $D6D1                                  ; $4323: $21 $D1 $D6
    ld [hl+], a                                   ; $4326: $22
    ld [hl], e                                    ; $4327: $73
    inc hl                                        ; $4328: $23
    ld [hl], d                                    ; $4329: $72
    ld a, [$C32E]                                 ; $432A: $FA $2E $C3
    or $02                                        ; $432D: $F6 $02
    ld [$C32E], a                                 ; $432F: $EA $2E $C3
    xor a                                         ; $4332: $AF
    ld [$D6D4], a                                 ; $4333: $EA $D4 $D6
    ld a, [$D6C0]                                 ; $4336: $FA $C0 $D6
    and $EF                                       ; $4339: $E6 $EF
    ld [$D6C0], a                                 ; $433B: $EA $C0 $D6
    ld hl, $D6C0                                  ; $433E: $21 $C0 $D6
    call Call_000_0DB5                            ; $4341: $CD $B5 $0D
    ld a, [$C311]                                 ; $4344: $FA $11 $C3
    swap a                                        ; $4347: $CB $37
    ld e, a                                       ; $4349: $5F
    ld d, $00                                     ; $434A: $16 $00
    ld hl, $4597                                  ; $434C: $21 $97 $45
    add hl, de                                    ; $434F: $19
    add hl, de                                    ; $4350: $19
    ld de, $D3A0                                  ; $4351: $11 $A0 $D3
    ld c, $20                                     ; $4354: $0E $20

jr_03B_4356:
    ld a, [hl+]                                   ; $4356: $2A
    ld [de], a                                    ; $4357: $12
    inc de                                        ; $4358: $13
    dec c                                         ; $4359: $0D
    jr nz, jr_03B_4356                            ; $435A: $20 $FA

    call Call_000_147A                            ; $435C: $CD $7A $14
    pop af                                        ; $435F: $F1

jr_03B_4360:
    ld b, a                                       ; $4360: $47
    ld a, [$C311]                                 ; $4361: $FA $11 $C3
    add a                                         ; $4364: $87
    ld hl, $44E3                                  ; $4365: $21 $E3 $44
    ld e, a                                       ; $4368: $5F
    ld d, $00                                     ; $4369: $16 $00
    add hl, de                                    ; $436B: $19
    ld e, [hl]                                    ; $436C: $5E
    inc hl                                        ; $436D: $23
    ld d, [hl]                                    ; $436E: $56
    ld hl, $9C18                                  ; $436F: $21 $18 $9C
    ld a, l                                       ; $4372: $7D
    add b                                         ; $4373: $80
    jr nc, jr_03B_4377                            ; $4374: $30 $01

    inc h                                         ; $4376: $24

jr_03B_4377:
    ld l, a                                       ; $4377: $6F
    push hl                                       ; $4378: $E5
    ld b, $07                                     ; $4379: $06 $07
    ld c, $07                                     ; $437B: $0E $07
    ld a, $11                                     ; $437D: $3E $11
    call Call_000_0FF7                            ; $437F: $CD $F7 $0F
    pop hl                                        ; $4382: $E1
    ld e, $08                                     ; $4383: $1E $08
    ld d, $00                                     ; $4385: $16 $00
    add hl, de                                    ; $4387: $19
    ld e, $00                                     ; $4388: $1E $00
    ld d, $10                                     ; $438A: $16 $10
    ld b, $01                                     ; $438C: $06 $01
    ld c, $07                                     ; $438E: $0E $07
    jp Jump_000_10EA                              ; $4390: $C3 $EA $10


Jump_03B_4393:
    ld a, [$C34B]                                 ; $4393: $FA $4B $C3
    or a                                          ; $4396: $B7
    jr z, jr_03B_43BD                             ; $4397: $28 $24

    dec a                                         ; $4399: $3D
    ld [$C34B], a                                 ; $439A: $EA $4B $C3
    ld d, $00                                     ; $439D: $16 $00
    add a                                         ; $439F: $87
    rl d                                          ; $43A0: $CB $12
    add a                                         ; $43A2: $87
    rl d                                          ; $43A3: $CB $12
    add a                                         ; $43A5: $87
    rl d                                          ; $43A6: $CB $12
    add a                                         ; $43A8: $87
    rl d                                          ; $43A9: $CB $12
    ld e, a                                       ; $43AB: $5F
    ld hl, $CB29                                  ; $43AC: $21 $29 $CB
    add hl, de                                    ; $43AF: $19
    push hl                                       ; $43B0: $E5
    ld hl, $9110                                  ; $43B1: $21 $10 $91
    add hl, de                                    ; $43B4: $19
    ld e, l                                       ; $43B5: $5D
    ld d, h                                       ; $43B6: $54
    pop hl                                        ; $43B7: $E1
    ld b, $01                                     ; $43B8: $06 $01
    jp Jump_000_11C2                              ; $43BA: $C3 $C2 $11


jr_03B_43BD:
    ld a, [$C34C]                                 ; $43BD: $FA $4C $C3
    dec a                                         ; $43C0: $3D
    ld [$C34C], a                                 ; $43C1: $EA $4C $C3
    cpl                                           ; $43C4: $2F
    add $09                                       ; $43C5: $C6 $09
    ld c, a                                       ; $43C7: $4F
    ld a, [$C311]                                 ; $43C8: $FA $11 $C3
    add a                                         ; $43CB: $87
    ld hl, $450B                                  ; $43CC: $21 $0B $45
    ld e, a                                       ; $43CF: $5F
    ld d, $00                                     ; $43D0: $16 $00
    add hl, de                                    ; $43D2: $19
    ld e, [hl]                                    ; $43D3: $5E
    inc hl                                        ; $43D4: $23
    ld d, [hl]                                    ; $43D5: $56
    ld hl, $9C19                                  ; $43D6: $21 $19 $9C
    ld a, l                                       ; $43D9: $7D
    add c                                         ; $43DA: $81
    jr nc, jr_03B_43DE                            ; $43DB: $30 $01

    inc h                                         ; $43DD: $24

jr_03B_43DE:
    ld l, a                                       ; $43DE: $6F
    push hl                                       ; $43DF: $E5
    ld b, $07                                     ; $43E0: $06 $07
    ld c, $07                                     ; $43E2: $0E $07
    ld a, $11                                     ; $43E4: $3E $11
    call Call_000_0FF7                            ; $43E6: $CD $F7 $0F
    pop hl                                        ; $43E9: $E1
    dec hl                                        ; $43EA: $2B
    ld e, $00                                     ; $43EB: $1E $00
    ld d, $10                                     ; $43ED: $16 $10
    ld b, $01                                     ; $43EF: $06 $01
    ld c, $07                                     ; $43F1: $0E $07
    jp Jump_000_10EA                              ; $43F3: $C3 $EA $10


Call_03B_43F6:
    ld a, [$C329]                                 ; $43F6: $FA $29 $C3
    and $03                                       ; $43F9: $E6 $03
    ret nz                                        ; $43FB: $C0

    ld a, [$C32A]                                 ; $43FC: $FA $2A $C3
    and $07                                       ; $43FF: $E6 $07
    ld hl, $442B                                  ; $4401: $21 $2B $44
    ld e, a                                       ; $4404: $5F
    ld d, $00                                     ; $4405: $16 $00
    add hl, de                                    ; $4407: $19
    ld e, [hl]                                    ; $4408: $5E
    ld a, [$C349]                                 ; $4409: $FA $49 $C3
    add e                                         ; $440C: $83
    and $33                                       ; $440D: $E6 $33
    ld [$C349], a                                 ; $440F: $EA $49 $C3
    ld e, a                                       ; $4412: $5F
    and $03                                       ; $4413: $E6 $03
    add a                                         ; $4415: $87
    ld d, a                                       ; $4416: $57
    ld a, e                                       ; $4417: $7B
    and $30                                       ; $4418: $E6 $30
    add a                                         ; $441A: $87
    add d                                         ; $441B: $82
    ld e, a                                       ; $441C: $5F
    ld d, $00                                     ; $441D: $16 $00
    ld hl, $4E7F                                  ; $441F: $21 $7F $4E
    add hl, de                                    ; $4422: $19
    ld de, $9420                                  ; $4423: $11 $20 $94
    ld b, $01                                     ; $4426: $06 $01
    jp Jump_000_11C2                              ; $4428: $C3 $C2 $11


    ld bc, $3031                                  ; $442B: $01 $31 $30
    inc sp                                        ; $442E: $33
    inc bc                                        ; $442F: $03
    inc de                                        ; $4430: $13
    db $10                                        ; $4431: $10
    ld de, $0000                                  ; $4432: $11 $00 $00
    sbc d                                         ; $4435: $9A
    ld d, a                                       ; $4436: $57
    nop                                           ; $4437: $00
    nop                                           ; $4438: $00
    ld e, c                                       ; $4439: $59
    jp $C379                                      ; $443A: $C3 $79 $C3


    ld a, c                                       ; $443D: $79
    push bc                                       ; $443E: $C5
    ld b, c                                       ; $443F: $41
    ld [bc], a                                    ; $4440: $02
    nop                                           ; $4441: $00
    adc b                                         ; $4442: $88
    nop                                           ; $4443: $00
    rst RST_38                                    ; $4444: $FF
    ld bc, $0004                                  ; $4445: $01 $04 $00
    ld a, c                                       ; $4448: $79
    push bc                                       ; $4449: $C5
    nop                                           ; $444A: $00
    nop                                           ; $444B: $00
    nop                                           ; $444C: $00
    nop                                           ; $444D: $00
    nop                                           ; $444E: $00
    nop                                           ; $444F: $00
    nop                                           ; $4450: $00
    nop                                           ; $4451: $00
    nop                                           ; $4452: $00
    nop                                           ; $4453: $00
    nop                                           ; $4454: $00
    nop                                           ; $4455: $00
    nop                                           ; $4456: $00
    sub h                                         ; $4457: $94
    add h                                         ; $4458: $84
    adc c                                         ; $4459: $89
    add l                                         ; $445A: $85
    adc b                                         ; $445B: $88
    add [hl]                                      ; $445C: $86
    adc e                                         ; $445D: $8B
    add a                                         ; $445E: $87
    adc l                                         ; $445F: $8D
    adc h                                         ; $4460: $8C
    ld de, $0800                                  ; $4461: $11 $00 $08
    nop                                           ; $4464: $00
    add hl, bc                                    ; $4465: $09
    nop                                           ; $4466: $00
    ld a, [bc]                                    ; $4467: $0A
    nop                                           ; $4468: $00
    dec bc                                        ; $4469: $0B
    nop                                           ; $446A: $00
    inc c                                         ; $446B: $0C
    nop                                           ; $446C: $00
    dec c                                         ; $446D: $0D
    nop                                           ; $446E: $00
    ld c, $00                                     ; $446F: $0E $00
    rrca                                          ; $4471: $0F
    nop                                           ; $4472: $00
    stop                                          ; $4473: $10 $00
    dec bc                                        ; $4475: $0B
    db $E4                                        ; $4476: $E4
    ld e, e                                       ; $4477: $5B
    rlca                                          ; $4478: $07
    cp [hl]                                       ; $4479: $BE
    ld b, b                                       ; $447A: $40
    rlca                                          ; $447B: $07
    ld h, c                                       ; $447C: $61
    ld d, a                                       ; $447D: $57
    ld [$402A], sp                                ; $447E: $08 $2A $40
    ld [$5C8A], sp                                ; $4481: $08 $8A $5C
    add hl, bc                                    ; $4484: $09
    ld [hl+], a                                   ; $4485: $22
    ld b, b                                       ; $4486: $40
    add hl, bc                                    ; $4487: $09
    db $F4                                        ; $4488: $F4
    ld d, a                                       ; $4489: $57
    ld a, [bc]                                    ; $448A: $0A
    ld b, $40                                     ; $448B: $06 $40
    ld a, [bc]                                    ; $448D: $0A
    ld a, l                                       ; $448E: $7D
    ld e, d                                       ; $448F: $5A
    dec bc                                        ; $4490: $0B
    ld a, [hl+]                                   ; $4491: $2A
    ld b, b                                       ; $4492: $40
    dec bc                                        ; $4493: $0B
    ld a, h                                       ; $4494: $7C
    ld e, l                                       ; $4495: $5D
    rlca                                          ; $4496: $07
    ld l, h                                       ; $4497: $6C
    ld b, d                                       ; $4498: $42
    rlca                                          ; $4499: $07
    or e                                          ; $449A: $B3
    ld e, b                                       ; $449B: $58
    ld [$41B8], sp                                ; $449C: $08 $B8 $41
    ld [$5DE4], sp                                ; $449F: $08 $E4 $5D
    add hl, bc                                    ; $44A2: $09
    call nz, $0941                                ; $44A3: $C4 $41 $09
    ld c, d                                       ; $44A6: $4A
    ld e, c                                       ; $44A7: $59
    ld a, [bc]                                    ; $44A8: $0A
    ld h, d                                       ; $44A9: $62
    ld b, c                                       ; $44AA: $41
    ld a, [bc]                                    ; $44AB: $0A
    rst RST_20                                    ; $44AC: $E7
    ld e, e                                       ; $44AD: $5B
    dec bc                                        ; $44AE: $0B
    inc b                                         ; $44AF: $04
    ld b, d                                       ; $44B0: $42
    dec bc                                        ; $44B1: $0B
    ld de, $076A                                  ; $44B2: $11 $6A $07
    and a                                         ; $44B5: $A7
    ld c, l                                       ; $44B6: $4D
    rlca                                          ; $44B7: $07
    sub h                                         ; $44B8: $94
    ld l, b                                       ; $44B9: $68
    ld [$50AB], sp                                ; $44BA: $08 $AB $50
    ld [$68F4], sp                                ; $44BD: $08 $F4 $68
    add hl, bc                                    ; $44C0: $09
    ld b, h                                       ; $44C1: $44
    ld c, l                                       ; $44C2: $4D
    add hl, bc                                    ; $44C3: $09
    inc de                                        ; $44C4: $13
    ld h, l                                       ; $44C5: $65
    ld a, [bc]                                    ; $44C6: $0A
    rra                                           ; $44C7: $1F
    ld c, a                                       ; $44C8: $4F
    ld a, [bc]                                    ; $44C9: $0A
    xor a                                         ; $44CA: $AF
    ld l, b                                       ; $44CB: $68
    dec bc                                        ; $44CC: $0B
    ld b, h                                       ; $44CD: $44
    ld d, c                                       ; $44CE: $51
    jp hl                                         ; $44CF: $E9


    ld h, a                                       ; $44D0: $67
    di                                            ; $44D1: $F3
    ld c, [hl]                                    ; $44D2: $4E
    cp e                                          ; $44D3: $BB
    ld d, c                                       ; $44D4: $51
    adc c                                         ; $44D5: $89
    ld d, h                                       ; $44D6: $54
    ld a, c                                       ; $44D7: $79
    ld d, a                                       ; $44D8: $57
    inc de                                        ; $44D9: $13
    ld e, d                                       ; $44DA: $5A
    adc c                                         ; $44DB: $89
    ld e, h                                       ; $44DC: $5C
    adc a                                         ; $44DD: $8F
    ld e, a                                       ; $44DE: $5F
    add hl, sp                                    ; $44DF: $39
    ld h, d                                       ; $44E0: $62
    rrca                                          ; $44E1: $0F
    ld h, l                                       ; $44E2: $65
    ld c, c                                       ; $44E3: $49
    ld c, d                                       ; $44E4: $4A
    rst RST_10                                    ; $44E5: $D7
    ld b, [hl]                                    ; $44E6: $46
    add hl, sp                                    ; $44E7: $39
    ld b, a                                       ; $44E8: $47
    sbc e                                         ; $44E9: $9B
    ld b, a                                       ; $44EA: $47
    db $FD                                        ; $44EB: $FD
    ld b, a                                       ; $44EC: $47
    ld e, a                                       ; $44ED: $5F
    ld c, b                                       ; $44EE: $48
    pop bc                                        ; $44EF: $C1
    ld c, b                                       ; $44F0: $48
    inc hl                                        ; $44F1: $23
    ld c, c                                       ; $44F2: $49
    add l                                         ; $44F3: $85
    ld c, c                                       ; $44F4: $49
    rst RST_20                                    ; $44F5: $E7
    ld c, c                                       ; $44F6: $49
    push de                                       ; $44F7: $D5
    ld h, h                                       ; $44F8: $64
    ld h, a                                       ; $44F9: $67
    ld c, [hl]                                    ; $44FA: $4E
    ld [hl-], a                                   ; $44FB: $32
    ld d, c                                       ; $44FC: $51
    cp a                                          ; $44FD: $BF
    ld d, e                                       ; $44FE: $53
    push af                                       ; $44FF: $F5
    ld d, l                                       ; $4500: $55
    call nz, $4757                                ; $4501: $C4 $57 $47
    ld e, d                                       ; $4504: $5A
    add hl, hl                                    ; $4505: $29
    ld e, l                                       ; $4506: $5D
    pop bc                                        ; $4507: $C1
    ld e, a                                       ; $4508: $5F
    ld l, b                                       ; $4509: $68
    ld h, d                                       ; $450A: $62
    dec e                                         ; $450B: $1D
    ld c, [hl]                                    ; $450C: $4E
    xor e                                         ; $450D: $AB
    ld c, d                                       ; $450E: $4A
    dec c                                         ; $450F: $0D
    ld c, e                                       ; $4510: $4B
    ld l, a                                       ; $4511: $6F
    ld c, e                                       ; $4512: $4B
    pop de                                        ; $4513: $D1
    ld c, e                                       ; $4514: $4B
    inc sp                                        ; $4515: $33
    ld c, h                                       ; $4516: $4C
    sub l                                         ; $4517: $95
    ld c, h                                       ; $4518: $4C
    rst RST_30                                    ; $4519: $F7
    ld c, h                                       ; $451A: $4C
    ld e, c                                       ; $451B: $59
    ld c, l                                       ; $451C: $4D
    cp e                                          ; $451D: $BB
    ld c, l                                       ; $451E: $4D
    ld de, $107D                                  ; $451F: $11 $7D $10
    ldh [c], a                                    ; $4522: $E2
    ld [hl], l                                    ; $4523: $75
    ld d, $F5                                     ; $4524: $16 $F5
    halt                                          ; $4526: $76
    ld [de], a                                    ; $4527: $12
    jp z, Jump_000_0C77                           ; $4528: $CA $77 $0C

    ld h, h                                       ; $452B: $64
    ld a, b                                       ; $452C: $78
    inc d                                         ; $452D: $14
    ld b, [hl]                                    ; $452E: $46
    ld a, c                                       ; $452F: $79
    ld c, $E6                                     ; $4530: $0E $E6
    ld a, c                                       ; $4532: $79
    ld [de], a                                    ; $4533: $12
    cp h                                          ; $4534: $BC
    ld a, d                                       ; $4535: $7A
    ld c, $56                                     ; $4536: $0E $56
    ld a, e                                       ; $4538: $7B
    db $10                                        ; $4539: $10
    rla                                           ; $453A: $17
    ld a, h                                       ; $453B: $7C
    ld d, $20                                     ; $453C: $16 $20
    ld bc, $0000                                  ; $453E: $01 $00 $00
    sub b                                         ; $4541: $90
    nop                                           ; $4542: $00
    nop                                           ; $4543: $00
    nop                                           ; $4544: $00
    sub b                                         ; $4545: $90
    nop                                           ; $4546: $00
    nop                                           ; $4547: $00
    nop                                           ; $4548: $00
    sub b                                         ; $4549: $90
    nop                                           ; $454A: $00
    nop                                           ; $454B: $00
    nop                                           ; $454C: $00
    sub b                                         ; $454D: $90
    nop                                           ; $454E: $00
    jr nz, jr_03B_4552                            ; $454F: $20 $01

    ld h, b                                       ; $4551: $60

jr_03B_4552:
    ld c, a                                       ; $4552: $4F
    sbc d                                         ; $4553: $9A
    ld d, a                                       ; $4554: $57
    xor c                                         ; $4555: $A9
    ld h, b                                       ; $4556: $60
    and $6A                                       ; $4557: $E6 $6A
    ld e, b                                       ; $4559: $58
    ld b, e                                       ; $455A: $43
    adc a                                         ; $455B: $8F
    ld c, h                                       ; $455C: $4C
    ld l, b                                       ; $455D: $68
    ld d, l                                       ; $455E: $55
    ld d, [hl]                                    ; $455F: $56
    ld e, [hl]                                    ; $4560: $5E
    ld h, l                                       ; $4561: $65
    ld h, a                                       ; $4562: $67
    ld h, l                                       ; $4563: $65
    ld [hl], b                                    ; $4564: $70
    and a                                         ; $4565: $A7
    ld d, e                                       ; $4566: $53
    ld e, a                                       ; $4567: $5F
    ld e, h                                       ; $4568: $5C
    dec bc                                        ; $4569: $0B
    ld h, [hl]                                    ; $456A: $66
    ld l, a                                       ; $456B: $6F
    ld l, a                                       ; $456C: $6F
    ld l, $48                                     ; $456D: $2E $48
    jr nc, jr_03B_45C2                            ; $456F: $30 $51

    ld e, $5A                                     ; $4571: $1E $5A
    daa                                           ; $4573: $27
    ld h, e                                       ; $4574: $63
    ld a, [hl+]                                   ; $4575: $2A
    ld l, h                                       ; $4576: $6C
    inc c                                         ; $4577: $0C
    ld [hl], l                                    ; $4578: $75
    ld a, [hl+]                                   ; $4579: $2A
    sbc h                                         ; $457A: $9C
    ld [$9C29], sp                                ; $457B: $08 $29 $9C
    dec bc                                        ; $457E: $0B
    ld a, [hl+]                                   ; $457F: $2A
    sbc h                                         ; $4580: $9C
    add hl, bc                                    ; $4581: $09
    dec hl                                        ; $4582: $2B
    sbc h                                         ; $4583: $9C
    ld b, $2A                                     ; $4584: $06 $2A
    sbc h                                         ; $4586: $9C
    ld a, [bc]                                    ; $4587: $0A
    dec hl                                        ; $4588: $2B
    sbc h                                         ; $4589: $9C
    rlca                                          ; $458A: $07
    ld a, [hl+]                                   ; $458B: $2A
    sbc h                                         ; $458C: $9C
    add hl, bc                                    ; $458D: $09
    dec hl                                        ; $458E: $2B
    sbc h                                         ; $458F: $9C
    rlca                                          ; $4590: $07
    ld a, [hl+]                                   ; $4591: $2A
    sbc h                                         ; $4592: $9C
    ld [$9C29], sp                                ; $4593: $08 $29 $9C
    dec bc                                        ; $4596: $0B
    nop                                           ; $4597: $00
    nop                                           ; $4598: $00
    db $E3                                        ; $4599: $E3
    ld a, h                                       ; $459A: $7C
    rst RST_38                                    ; $459B: $FF
    rrca                                          ; $459C: $0F
    rst RST_38                                    ; $459D: $FF
    ld a, a                                       ; $459E: $7F
    nop                                           ; $459F: $00
    nop                                           ; $45A0: $00
    xor l                                         ; $45A1: $AD
    dec [hl]                                      ; $45A2: $35
    rst RST_30                                    ; $45A3: $F7
    ld e, [hl]                                    ; $45A4: $5E
    rst RST_38                                    ; $45A5: $FF
    ld a, a                                       ; $45A6: $7F
    nop                                           ; $45A7: $00
    nop                                           ; $45A8: $00
    cp a                                          ; $45A9: $BF
    dec c                                         ; $45AA: $0D
    rst RST_38                                    ; $45AB: $FF
    rrca                                          ; $45AC: $0F
    rst RST_38                                    ; $45AD: $FF
    ld a, a                                       ; $45AE: $7F
    nop                                           ; $45AF: $00
    nop                                           ; $45B0: $00
    db $E3                                        ; $45B1: $E3
    ld c, $E3                                     ; $45B2: $0E $E3
    ld c, e                                       ; $45B4: $4B
    rst RST_38                                    ; $45B5: $FF
    ld a, a                                       ; $45B6: $7F
    nop                                           ; $45B7: $00
    nop                                           ; $45B8: $00
    cp c                                          ; $45B9: $B9
    dec e                                         ; $45BA: $1D
    ld a, a                                       ; $45BB: $7F
    rra                                           ; $45BC: $1F
    rst RST_38                                    ; $45BD: $FF
    ld a, a                                       ; $45BE: $7F
    nop                                           ; $45BF: $00
    nop                                           ; $45C0: $00
    cp c                                          ; $45C1: $B9

jr_03B_45C2:
    dec e                                         ; $45C2: $1D

jr_03B_45C3:
    inc sp                                        ; $45C3: $33
    ld a, a                                       ; $45C4: $7F
    rst RST_38                                    ; $45C5: $FF
    ld a, a                                       ; $45C6: $7F
    nop                                           ; $45C7: $00
    nop                                           ; $45C8: $00
    ld sp, $3315                                  ; $45C9: $31 $15 $33
    ld a, a                                       ; $45CC: $7F
    rst RST_38                                    ; $45CD: $FF
    ld a, a                                       ; $45CE: $7F
    nop                                           ; $45CF: $00
    nop                                           ; $45D0: $00
    cp a                                          ; $45D1: $BF
    inc d                                         ; $45D2: $14
    inc sp                                        ; $45D3: $33
    ld a, a                                       ; $45D4: $7F
    rst RST_38                                    ; $45D5: $FF
    ld a, a                                       ; $45D6: $7F
    nop                                           ; $45D7: $00
    nop                                           ; $45D8: $00
    cp l                                          ; $45D9: $BD
    ld a, h                                       ; $45DA: $7C
    ld a, [hl]                                    ; $45DB: $7E
    ld a, [hl]                                    ; $45DC: $7E
    rst RST_38                                    ; $45DD: $FF
    ld a, a                                       ; $45DE: $7F
    nop                                           ; $45DF: $00
    nop                                           ; $45E0: $00
    ld [hl], a                                    ; $45E1: $77
    ld e, $7F                                     ; $45E2: $1E $7F
    rlca                                          ; $45E4: $07
    rst RST_38                                    ; $45E5: $FF
    ld a, a                                       ; $45E6: $7F
    nop                                           ; $45E7: $00
    nop                                           ; $45E8: $00
    ld l, e                                       ; $45E9: $6B
    dec l                                         ; $45EA: $2D
    ld [hl], e                                    ; $45EB: $73
    ld c, [hl]                                    ; $45EC: $4E
    rst RST_38                                    ; $45ED: $FF
    ld a, a                                       ; $45EE: $7F
    nop                                           ; $45EF: $00
    nop                                           ; $45F0: $00
    daa                                           ; $45F1: $27
    ld h, [hl]                                    ; $45F2: $66
    cpl                                           ; $45F3: $2F
    ld a, a                                       ; $45F4: $7F
    rst RST_38                                    ; $45F5: $FF
    ld a, a                                       ; $45F6: $7F
    nop                                           ; $45F7: $00
    nop                                           ; $45F8: $00
    rst RST_38                                    ; $45F9: $FF
    jr @+$01                                      ; $45FA: $18 $FF

    dec e                                         ; $45FC: $1D
    rst RST_38                                    ; $45FD: $FF
    ld a, a                                       ; $45FE: $7F
    nop                                           ; $45FF: $00
    nop                                           ; $4600: $00
    rst RST_38                                    ; $4601: $FF
    jr jr_03B_45C3                                ; $4602: $18 $BF

    ld l, $FF                                     ; $4604: $2E $FF
    ld a, a                                       ; $4606: $7F
    nop                                           ; $4607: $00
    nop                                           ; $4608: $00
    rst RST_38                                    ; $4609: $FF
    jr @-$3F                                      ; $460A: $18 $BF

    ld l, $FF                                     ; $460C: $2E $FF
    inc bc                                        ; $460E: $03
    nop                                           ; $460F: $00
    nop                                           ; $4610: $00
    rra                                           ; $4611: $1F
    ld a, h                                       ; $4612: $7C
    rra                                           ; $4613: $1F
    ld a, h                                       ; $4614: $7C
    rst RST_38                                    ; $4615: $FF
    ld a, a                                       ; $4616: $7F
    nop                                           ; $4617: $00
    nop                                           ; $4618: $00
    and a                                         ; $4619: $A7
    ld c, $4F                                     ; $461A: $0E $4F
    ccf                                           ; $461C: $3F
    rst RST_38                                    ; $461D: $FF
    ld a, a                                       ; $461E: $7F
    nop                                           ; $461F: $00
    nop                                           ; $4620: $00
    ld [hl], l                                    ; $4621: $75
    ld a, l                                       ; $4622: $7D
    ei                                            ; $4623: $FB
    ld a, l                                       ; $4624: $7D
    rst RST_38                                    ; $4625: $FF
    ld a, a                                       ; $4626: $7F
    nop                                           ; $4627: $00
    nop                                           ; $4628: $00
    and a                                         ; $4629: $A7
    ld c, $FB                                     ; $462A: $0E $FB
    ld a, l                                       ; $462C: $7D
    rst RST_38                                    ; $462D: $FF
    ld a, a                                       ; $462E: $7F
    nop                                           ; $462F: $00
    nop                                           ; $4630: $00
    and a                                         ; $4631: $A7
    ld c, $4F                                     ; $4632: $0E $4F
    ccf                                           ; $4634: $3F
    ld a, a                                       ; $4635: $7F
    inc c                                         ; $4636: $0C
    nop                                           ; $4637: $00
    nop                                           ; $4638: $00
    rst RST_38                                    ; $4639: $FF
    dec h                                         ; $463A: $25
    rst RST_38                                    ; $463B: $FF
    rla                                           ; $463C: $17
    rst RST_38                                    ; $463D: $FF
    ld a, a                                       ; $463E: $7F
    nop                                           ; $463F: $00
    nop                                           ; $4640: $00
    ld a, a                                       ; $4641: $7F
    inc c                                         ; $4642: $0C
    rst RST_38                                    ; $4643: $FF
    rla                                           ; $4644: $17
    rst RST_38                                    ; $4645: $FF
    ld a, a                                       ; $4646: $7F
    nop                                           ; $4647: $00
    nop                                           ; $4648: $00
    rra                                           ; $4649: $1F
    ld a, h                                       ; $464A: $7C
    rra                                           ; $464B: $1F
    ld a, h                                       ; $464C: $7C
    rst RST_38                                    ; $464D: $FF
    ld a, a                                       ; $464E: $7F
    ld b, d                                       ; $464F: $42
    ld [$7C1F], sp                                ; $4650: $08 $1F $7C
    rra                                           ; $4653: $1F
    ld a, h                                       ; $4654: $7C
    rst RST_38                                    ; $4655: $FF
    ld a, a                                       ; $4656: $7F
    nop                                           ; $4657: $00
    nop                                           ; $4658: $00
    cp a                                          ; $4659: $BF
    dec e                                         ; $465A: $1D
    ccf                                           ; $465B: $3F
    rrca                                          ; $465C: $0F
    rst RST_38                                    ; $465D: $FF
    ld a, a                                       ; $465E: $7F
    nop                                           ; $465F: $00
    nop                                           ; $4660: $00
    rst RST_38                                    ; $4661: $FF
    inc c                                         ; $4662: $0C
    ccf                                           ; $4663: $3F
    rrca                                          ; $4664: $0F
    rst RST_38                                    ; $4665: $FF
    ld a, a                                       ; $4666: $7F
    nop                                           ; $4667: $00
    nop                                           ; $4668: $00
    ld [hl], a                                    ; $4669: $77
    dec c                                         ; $466A: $0D
    ccf                                           ; $466B: $3F
    rrca                                          ; $466C: $0F
    rst RST_38                                    ; $466D: $FF
    ld a, a                                       ; $466E: $7F
    nop                                           ; $466F: $00
    nop                                           ; $4670: $00
    ld a, e                                       ; $4671: $7B
    ld b, l                                       ; $4672: $45
    ccf                                           ; $4673: $3F
    rrca                                          ; $4674: $0F
    rst RST_38                                    ; $4675: $FF
    ld a, a                                       ; $4676: $7F
    nop                                           ; $4677: $00
    nop                                           ; $4678: $00
    cpl                                           ; $4679: $2F
    dec h                                         ; $467A: $25
    ld sp, $3956                                  ; $467B: $31 $56 $39
    ld l, a                                       ; $467E: $6F
    nop                                           ; $467F: $00
    nop                                           ; $4680: $00
    cpl                                           ; $4681: $2F
    dec h                                         ; $4682: $25
    ld sp, $FF56                                  ; $4683: $31 $56 $FF
    ld a, a                                       ; $4686: $7F
    nop                                           ; $4687: $00
    nop                                           ; $4688: $00
    rra                                           ; $4689: $1F
    ld a, h                                       ; $468A: $7C
    rra                                           ; $468B: $1F
    ld a, h                                       ; $468C: $7C
    rst RST_38                                    ; $468D: $FF
    ld a, a                                       ; $468E: $7F
    nop                                           ; $468F: $00
    nop                                           ; $4690: $00
    rra                                           ; $4691: $1F
    ld a, h                                       ; $4692: $7C
    rra                                           ; $4693: $1F
    ld a, h                                       ; $4694: $7C
    rst RST_38                                    ; $4695: $FF
    ld a, a                                       ; $4696: $7F
    nop                                           ; $4697: $00
    nop                                           ; $4698: $00
    or a                                          ; $4699: $B7
    ld [hl], l                                    ; $469A: $75
    ld a, a                                       ; $469B: $7F
    ld a, [hl]                                    ; $469C: $7E
    rst RST_38                                    ; $469D: $FF
    ld a, a                                       ; $469E: $7F
    nop                                           ; $469F: $00
    nop                                           ; $46A0: $00
    rst RST_38                                    ; $46A1: $FF
    inc l                                         ; $46A2: $2C
    ld a, a                                       ; $46A3: $7F
    ld l, $FF                                     ; $46A4: $2E $FF
    ld a, a                                       ; $46A6: $7F
    nop                                           ; $46A7: $00
    nop                                           ; $46A8: $00
    ldh [$FF03], a                                ; $46A9: $E0 $03
    ldh [$FF03], a                                ; $46AB: $E0 $03
    rst RST_38                                    ; $46AD: $FF
    ld a, a                                       ; $46AE: $7F
    nop                                           ; $46AF: $00
    nop                                           ; $46B0: $00
    ldh [$FF03], a                                ; $46B1: $E0 $03
    ldh [$FF03], a                                ; $46B3: $E0 $03
    rst RST_38                                    ; $46B5: $FF
    ld a, a                                       ; $46B6: $7F
    nop                                           ; $46B7: $00
    nop                                           ; $46B8: $00
    ccf                                           ; $46B9: $3F
    dec e                                         ; $46BA: $1D
    ccf                                           ; $46BB: $3F
    ld l, $FF                                     ; $46BC: $2E $FF
    ld a, a                                       ; $46BE: $7F
    nop                                           ; $46BF: $00
    nop                                           ; $46C0: $00
    inc sp                                        ; $46C1: $33
    dec d                                         ; $46C2: $15
    ccf                                           ; $46C3: $3F
    ld l, $FF                                     ; $46C4: $2E $FF
    ld a, a                                       ; $46C6: $7F
    nop                                           ; $46C7: $00
    nop                                           ; $46C8: $00
    ld a, a                                       ; $46C9: $7F
    inc c                                         ; $46CA: $0C
    ccf                                           ; $46CB: $3F
    ld l, $FF                                     ; $46CC: $2E $FF
    ld a, a                                       ; $46CE: $7F
    nop                                           ; $46CF: $00
    nop                                           ; $46D0: $00
    ld a, a                                       ; $46D1: $7F
    inc c                                         ; $46D2: $0C
    rst RST_38                                    ; $46D3: $FF
    ld c, h                                       ; $46D4: $4C
    rst RST_38                                    ; $46D5: $FF
    ld a, a                                       ; $46D6: $7F
    dec b                                         ; $46D7: $05
    nop                                           ; $46D8: $00
    dec b                                         ; $46D9: $05
    ld bc, $0205                                  ; $46DA: $01 $05 $02
    dec b                                         ; $46DD: $05
    inc bc                                        ; $46DE: $03
    dec b                                         ; $46DF: $05
    inc b                                         ; $46E0: $04
    dec b                                         ; $46E1: $05
    dec b                                         ; $46E2: $05
    dec b                                         ; $46E3: $05
    ld b, $05                                     ; $46E4: $06 $05
    rlca                                          ; $46E6: $07
    dec b                                         ; $46E7: $05
    ld [$0905], sp                                ; $46E8: $08 $05 $09
    dec b                                         ; $46EB: $05
    ld a, [bc]                                    ; $46EC: $0A
    dec b                                         ; $46ED: $05
    dec bc                                        ; $46EE: $0B
    dec b                                         ; $46EF: $05
    inc c                                         ; $46F0: $0C
    dec b                                         ; $46F1: $05
    dec c                                         ; $46F2: $0D
    ld b, $0E                                     ; $46F3: $06 $0E
    ld b, $0F                                     ; $46F5: $06 $0F
    dec b                                         ; $46F7: $05
    db $10                                        ; $46F8: $10
    dec b                                         ; $46F9: $05
    ld de, $1205                                  ; $46FA: $11 $05 $12
    dec b                                         ; $46FD: $05
    inc de                                        ; $46FE: $13
    rlca                                          ; $46FF: $07
    inc d                                         ; $4700: $14
    ld b, $15                                     ; $4701: $06 $15
    ld b, $16                                     ; $4703: $06 $16
    ld b, $17                                     ; $4705: $06 $17
    dec b                                         ; $4707: $05
    jr jr_03B_470F                                ; $4708: $18 $05

    add hl, de                                    ; $470A: $19
    dec b                                         ; $470B: $05
    ld a, [de]                                    ; $470C: $1A
    inc b                                         ; $470D: $04
    dec de                                        ; $470E: $1B

jr_03B_470F:
    ld b, $1C                                     ; $470F: $06 $1C
    ld b, $1D                                     ; $4711: $06 $1D
    ld b, $1E                                     ; $4713: $06 $1E
    ld b, $1F                                     ; $4715: $06 $1F
    rlca                                          ; $4717: $07
    jr nz, @+$06                                  ; $4718: $20 $04

    ld hl, $2204                                  ; $471A: $21 $04 $22
    ld b, $23                                     ; $471D: $06 $23
    dec b                                         ; $471F: $05
    inc h                                         ; $4720: $24
    ld b, $25                                     ; $4721: $06 $25
    ld b, $26                                     ; $4723: $06 $26
    inc b                                         ; $4725: $04
    daa                                           ; $4726: $27
    inc b                                         ; $4727: $04
    jr z, jr_03B_472E                             ; $4728: $28 $04

    add hl, hl                                    ; $472A: $29
    ld b, $2A                                     ; $472B: $06 $2A
    dec b                                         ; $472D: $05

jr_03B_472E:
    dec hl                                        ; $472E: $2B
    dec b                                         ; $472F: $05
    inc l                                         ; $4730: $2C
    inc b                                         ; $4731: $04
    dec l                                         ; $4732: $2D
    inc b                                         ; $4733: $04
    ld l, $07                                     ; $4734: $2E $07
    cpl                                           ; $4736: $2F
    inc b                                         ; $4737: $04
    jr nc, @+$06                                  ; $4738: $30 $04

    nop                                           ; $473A: $00
    inc b                                         ; $473B: $04
    ld bc, $0204                                  ; $473C: $01 $04 $02
    inc b                                         ; $473F: $04
    inc bc                                        ; $4740: $03
    inc b                                         ; $4741: $04
    inc b                                         ; $4742: $04
    inc b                                         ; $4743: $04
    dec b                                         ; $4744: $05
    inc b                                         ; $4745: $04
    ld b, $04                                     ; $4746: $06 $04
    rlca                                          ; $4748: $07
    inc b                                         ; $4749: $04
    ld [$0904], sp                                ; $474A: $08 $04 $09
    inc b                                         ; $474D: $04
    ld a, [bc]                                    ; $474E: $0A
    inc b                                         ; $474F: $04
    dec bc                                        ; $4750: $0B
    inc b                                         ; $4751: $04
    inc c                                         ; $4752: $0C
    inc b                                         ; $4753: $04
    dec c                                         ; $4754: $0D
    inc b                                         ; $4755: $04
    ld c, $04                                     ; $4756: $0E $04
    rrca                                          ; $4758: $0F
    inc b                                         ; $4759: $04
    db $10                                        ; $475A: $10
    rlca                                          ; $475B: $07
    ld de, $1204                                  ; $475C: $11 $04 $12
    inc b                                         ; $475F: $04
    inc de                                        ; $4760: $13
    inc b                                         ; $4761: $04
    inc d                                         ; $4762: $14
    inc b                                         ; $4763: $04
    dec d                                         ; $4764: $15
    inc b                                         ; $4765: $04
    ld d, $04                                     ; $4766: $16 $04
    rla                                           ; $4768: $17
    ld b, $18                                     ; $4769: $06 $18
    ld b, $19                                     ; $476B: $06 $19
    inc b                                         ; $476D: $04
    ld a, [de]                                    ; $476E: $1A
    ld b, $1B                                     ; $476F: $06 $1B
    ld b, $1C                                     ; $4771: $06 $1C
    ld b, $1D                                     ; $4773: $06 $1D
    dec b                                         ; $4775: $05
    ld e, $05                                     ; $4776: $1E $05
    rra                                           ; $4778: $1F
    dec b                                         ; $4779: $05
    jr nz, jr_03B_4782                            ; $477A: $20 $06

    ld hl, $2206                                  ; $477C: $21 $06 $22
    ld b, $23                                     ; $477F: $06 $23
    dec b                                         ; $4781: $05

jr_03B_4782:
    inc h                                         ; $4782: $24
    dec b                                         ; $4783: $05
    dec h                                         ; $4784: $25
    ld b, $26                                     ; $4785: $06 $26
    ld b, $27                                     ; $4787: $06 $27
    ld b, $28                                     ; $4789: $06 $28
    ld b, $29                                     ; $478B: $06 $29
    ld b, $2A                                     ; $478D: $06 $2A
    dec b                                         ; $478F: $05
    dec hl                                        ; $4790: $2B
    dec b                                         ; $4791: $05
    inc l                                         ; $4792: $2C
    ld b, $2D                                     ; $4793: $06 $2D
    ld b, $2E                                     ; $4795: $06 $2E
    ld b, $2F                                     ; $4797: $06 $2F
    ld b, $30                                     ; $4799: $06 $30
    inc b                                         ; $479B: $04
    nop                                           ; $479C: $00
    inc b                                         ; $479D: $04
    ld bc, $0207                                  ; $479E: $01 $07 $02
    rlca                                          ; $47A1: $07
    inc bc                                        ; $47A2: $03
    rlca                                          ; $47A3: $07
    inc b                                         ; $47A4: $04
    inc b                                         ; $47A5: $04
    dec b                                         ; $47A6: $05
    inc b                                         ; $47A7: $04
    ld b, $04                                     ; $47A8: $06 $04
    rlca                                          ; $47AA: $07
    inc b                                         ; $47AB: $04
    ld [$0907], sp                                ; $47AC: $08 $07 $09
    rlca                                          ; $47AF: $07
    ld a, [bc]                                    ; $47B0: $0A
    rlca                                          ; $47B1: $07
    dec bc                                        ; $47B2: $0B
    rlca                                          ; $47B3: $07
    inc c                                         ; $47B4: $0C
    inc b                                         ; $47B5: $04
    dec c                                         ; $47B6: $0D
    inc b                                         ; $47B7: $04
    ld c, $07                                     ; $47B8: $0E $07
    rrca                                          ; $47BA: $0F
    rlca                                          ; $47BB: $07
    db $10                                        ; $47BC: $10
    rlca                                          ; $47BD: $07
    ld de, $1207                                  ; $47BE: $11 $07 $12
    rlca                                          ; $47C1: $07
    inc de                                        ; $47C2: $13
    inc b                                         ; $47C3: $04
    inc d                                         ; $47C4: $14
    inc b                                         ; $47C5: $04
    dec d                                         ; $47C6: $15
    rlca                                          ; $47C7: $07
    ld d, $06                                     ; $47C8: $16 $06
    rla                                           ; $47CA: $17
    ld b, $18                                     ; $47CB: $06 $18
    dec b                                         ; $47CD: $05
    add hl, de                                    ; $47CE: $19
    inc b                                         ; $47CF: $04
    ld a, [de]                                    ; $47D0: $1A
    inc b                                         ; $47D1: $04
    dec de                                        ; $47D2: $1B
    inc b                                         ; $47D3: $04
    inc e                                         ; $47D4: $1C
    inc b                                         ; $47D5: $04
    dec e                                         ; $47D6: $1D
    dec b                                         ; $47D7: $05
    ld e, $05                                     ; $47D8: $1E $05
    rra                                           ; $47DA: $1F
    dec b                                         ; $47DB: $05
    jr nz, jr_03B_47E3                            ; $47DC: $20 $05

    ld hl, $2204                                  ; $47DE: $21 $04 $22
    inc b                                         ; $47E1: $04
    inc hl                                        ; $47E2: $23

jr_03B_47E3:
    inc b                                         ; $47E3: $04
    inc h                                         ; $47E4: $24
    dec b                                         ; $47E5: $05
    dec h                                         ; $47E6: $25
    inc b                                         ; $47E7: $04
    ld h, $04                                     ; $47E8: $26 $04
    daa                                           ; $47EA: $27
    inc b                                         ; $47EB: $04
    jr z, jr_03B_47F2                             ; $47EC: $28 $04

    add hl, hl                                    ; $47EE: $29
    inc b                                         ; $47EF: $04
    ld a, [hl+]                                   ; $47F0: $2A
    inc b                                         ; $47F1: $04

jr_03B_47F2:
    dec hl                                        ; $47F2: $2B
    inc b                                         ; $47F3: $04
    inc l                                         ; $47F4: $2C
    inc b                                         ; $47F5: $04
    dec l                                         ; $47F6: $2D
    inc b                                         ; $47F7: $04
    ld l, $04                                     ; $47F8: $2E $04
    cpl                                           ; $47FA: $2F
    inc b                                         ; $47FB: $04
    jr nc, jr_03B_4804                            ; $47FC: $30 $06

    nop                                           ; $47FE: $00
    ld b, $01                                     ; $47FF: $06 $01
    ld b, $02                                     ; $4801: $06 $02
    inc b                                         ; $4803: $04

jr_03B_4804:
    inc bc                                        ; $4804: $03
    inc b                                         ; $4805: $04
    inc b                                         ; $4806: $04
    inc b                                         ; $4807: $04
    dec b                                         ; $4808: $05
    inc b                                         ; $4809: $04
    ld b, $06                                     ; $480A: $06 $06
    rlca                                          ; $480C: $07
    ld b, $08                                     ; $480D: $06 $08
    ld b, $09                                     ; $480F: $06 $09
    inc b                                         ; $4811: $04
    ld a, [bc]                                    ; $4812: $0A
    inc b                                         ; $4813: $04
    dec bc                                        ; $4814: $0B
    inc b                                         ; $4815: $04
    inc c                                         ; $4816: $0C
    inc b                                         ; $4817: $04
    dec c                                         ; $4818: $0D
    ld b, $0E                                     ; $4819: $06 $0E
    ld b, $0F                                     ; $481B: $06 $0F
    inc b                                         ; $481D: $04
    db $10                                        ; $481E: $10
    inc b                                         ; $481F: $04
    ld de, $1204                                  ; $4820: $11 $04 $12
    inc b                                         ; $4823: $04
    inc de                                        ; $4824: $13
    inc b                                         ; $4825: $04
    inc d                                         ; $4826: $14
    inc b                                         ; $4827: $04
    dec d                                         ; $4828: $15
    dec b                                         ; $4829: $05
    ld d, $04                                     ; $482A: $16 $04
    rla                                           ; $482C: $17
    inc b                                         ; $482D: $04
    jr jr_03B_4834                                ; $482E: $18 $04

    add hl, de                                    ; $4830: $19
    inc b                                         ; $4831: $04
    ld a, [de]                                    ; $4832: $1A
    inc b                                         ; $4833: $04

jr_03B_4834:
    dec de                                        ; $4834: $1B
    inc b                                         ; $4835: $04
    inc e                                         ; $4836: $1C
    dec b                                         ; $4837: $05
    dec e                                         ; $4838: $1D
    dec b                                         ; $4839: $05
    ld e, $04                                     ; $483A: $1E $04
    rra                                           ; $483C: $1F
    inc b                                         ; $483D: $04
    jr nz, jr_03B_4844                            ; $483E: $20 $04

    ld hl, $2205                                  ; $4840: $21 $05 $22
    inc b                                         ; $4843: $04

jr_03B_4844:
    inc hl                                        ; $4844: $23
    dec b                                         ; $4845: $05
    inc h                                         ; $4846: $24
    dec b                                         ; $4847: $05
    dec h                                         ; $4848: $25
    inc b                                         ; $4849: $04
    ld h, $04                                     ; $484A: $26 $04
    daa                                           ; $484C: $27
    inc b                                         ; $484D: $04
    jr z, jr_03B_4855                             ; $484E: $28 $05

    add hl, hl                                    ; $4850: $29
    inc b                                         ; $4851: $04
    ld a, [hl+]                                   ; $4852: $2A
    dec b                                         ; $4853: $05
    dec hl                                        ; $4854: $2B

jr_03B_4855:
    inc b                                         ; $4855: $04
    inc l                                         ; $4856: $2C
    inc b                                         ; $4857: $04
    dec l                                         ; $4858: $2D
    inc b                                         ; $4859: $04
    ld l, $05                                     ; $485A: $2E $05
    cpl                                           ; $485C: $2F
    dec b                                         ; $485D: $05
    jr nc, @+$06                                  ; $485E: $30 $04

    nop                                           ; $4860: $00
    inc b                                         ; $4861: $04
    ld bc, $0204                                  ; $4862: $01 $04 $02
    inc b                                         ; $4865: $04
    inc bc                                        ; $4866: $03
    inc b                                         ; $4867: $04
    inc b                                         ; $4868: $04
    inc b                                         ; $4869: $04
    dec b                                         ; $486A: $05
    inc b                                         ; $486B: $04
    ld b, $04                                     ; $486C: $06 $04
    rlca                                          ; $486E: $07
    inc b                                         ; $486F: $04
    ld [$0904], sp                                ; $4870: $08 $04 $09
    inc b                                         ; $4873: $04
    ld a, [bc]                                    ; $4874: $0A
    inc b                                         ; $4875: $04
    dec bc                                        ; $4876: $0B
    inc b                                         ; $4877: $04
    inc c                                         ; $4878: $0C
    inc b                                         ; $4879: $04
    dec c                                         ; $487A: $0D
    inc b                                         ; $487B: $04
    ld c, $05                                     ; $487C: $0E $05
    rrca                                          ; $487E: $0F
    inc b                                         ; $487F: $04
    db $10                                        ; $4880: $10
    inc b                                         ; $4881: $04
    ld de, $1204                                  ; $4882: $11 $04 $12
    ld b, $13                                     ; $4885: $06 $13
    inc b                                         ; $4887: $04
    inc d                                         ; $4888: $14
    inc b                                         ; $4889: $04
    dec d                                         ; $488A: $15
    dec b                                         ; $488B: $05
    ld d, $04                                     ; $488C: $16 $04
    rla                                           ; $488E: $17
    inc b                                         ; $488F: $04
    jr jr_03B_4896                                ; $4890: $18 $04

    add hl, de                                    ; $4892: $19
    inc b                                         ; $4893: $04
    ld a, [de]                                    ; $4894: $1A
    inc b                                         ; $4895: $04

jr_03B_4896:
    dec de                                        ; $4896: $1B
    inc b                                         ; $4897: $04
    inc e                                         ; $4898: $1C
    inc b                                         ; $4899: $04
    dec e                                         ; $489A: $1D
    inc b                                         ; $489B: $04
    ld e, $07                                     ; $489C: $1E $07
    rra                                           ; $489E: $1F
    inc b                                         ; $489F: $04
    jr nz, jr_03B_48A6                            ; $48A0: $20 $04

    ld hl, $2204                                  ; $48A2: $21 $04 $22
    inc b                                         ; $48A5: $04

jr_03B_48A6:
    inc hl                                        ; $48A6: $23
    inc b                                         ; $48A7: $04
    inc h                                         ; $48A8: $24
    inc b                                         ; $48A9: $04
    dec h                                         ; $48AA: $25
    inc b                                         ; $48AB: $04
    ld h, $04                                     ; $48AC: $26 $04
    daa                                           ; $48AE: $27
    inc b                                         ; $48AF: $04
    jr z, jr_03B_48B6                             ; $48B0: $28 $04

    add hl, hl                                    ; $48B2: $29
    inc b                                         ; $48B3: $04
    ld a, [hl+]                                   ; $48B4: $2A
    inc b                                         ; $48B5: $04

jr_03B_48B6:
    dec hl                                        ; $48B6: $2B
    inc b                                         ; $48B7: $04
    inc l                                         ; $48B8: $2C
    inc b                                         ; $48B9: $04
    dec l                                         ; $48BA: $2D
    inc b                                         ; $48BB: $04
    ld l, $04                                     ; $48BC: $2E $04
    cpl                                           ; $48BE: $2F
    inc b                                         ; $48BF: $04
    jr nc, @+$06                                  ; $48C0: $30 $04

    nop                                           ; $48C2: $00
    inc b                                         ; $48C3: $04
    ld bc, $0204                                  ; $48C4: $01 $04 $02
    inc b                                         ; $48C7: $04
    inc bc                                        ; $48C8: $03
    inc b                                         ; $48C9: $04
    inc b                                         ; $48CA: $04
    inc b                                         ; $48CB: $04
    dec b                                         ; $48CC: $05
    inc b                                         ; $48CD: $04
    ld b, $06                                     ; $48CE: $06 $06
    rlca                                          ; $48D0: $07
    ld b, $08                                     ; $48D1: $06 $08
    inc b                                         ; $48D3: $04
    add hl, bc                                    ; $48D4: $09
    inc b                                         ; $48D5: $04
    ld a, [bc]                                    ; $48D6: $0A
    inc b                                         ; $48D7: $04
    dec bc                                        ; $48D8: $0B
    inc b                                         ; $48D9: $04
    inc c                                         ; $48DA: $0C
    inc b                                         ; $48DB: $04
    dec c                                         ; $48DC: $0D
    dec b                                         ; $48DD: $05
    ld c, $06                                     ; $48DE: $0E $06
    rrca                                          ; $48E0: $0F
    inc b                                         ; $48E1: $04
    db $10                                        ; $48E2: $10
    inc b                                         ; $48E3: $04
    ld de, $1204                                  ; $48E4: $11 $04 $12
    inc b                                         ; $48E7: $04
    inc de                                        ; $48E8: $13
    inc b                                         ; $48E9: $04
    inc d                                         ; $48EA: $14
    dec b                                         ; $48EB: $05
    dec d                                         ; $48EC: $15
    ld b, $16                                     ; $48ED: $06 $16
    inc b                                         ; $48EF: $04
    rla                                           ; $48F0: $17
    dec b                                         ; $48F1: $05
    jr jr_03B_48F8                                ; $48F2: $18 $04

    add hl, de                                    ; $48F4: $19
    inc b                                         ; $48F5: $04
    ld a, [de]                                    ; $48F6: $1A
    inc b                                         ; $48F7: $04

jr_03B_48F8:
    dec de                                        ; $48F8: $1B
    inc b                                         ; $48F9: $04
    inc e                                         ; $48FA: $1C
    ld b, $1D                                     ; $48FB: $06 $1D
    ld b, $1E                                     ; $48FD: $06 $1E
    ld b, $1F                                     ; $48FF: $06 $1F
    dec b                                         ; $4901: $05
    jr nz, jr_03B_4909                            ; $4902: $20 $05

    ld hl, $2204                                  ; $4904: $21 $04 $22
    inc b                                         ; $4907: $04
    inc hl                                        ; $4908: $23

jr_03B_4909:
    ld b, $24                                     ; $4909: $06 $24
    ld b, $25                                     ; $490B: $06 $25
    ld b, $26                                     ; $490D: $06 $26
    ld b, $27                                     ; $490F: $06 $27
    ld b, $28                                     ; $4911: $06 $28
    ld b, $29                                     ; $4913: $06 $29
    inc b                                         ; $4915: $04
    ld a, [hl+]                                   ; $4916: $2A
    ld b, $2B                                     ; $4917: $06 $2B
    ld b, $2C                                     ; $4919: $06 $2C
    ld b, $2D                                     ; $491B: $06 $2D
    ld b, $2E                                     ; $491D: $06 $2E
    ld b, $2F                                     ; $491F: $06 $2F
    inc b                                         ; $4921: $04
    jr nc, @+$06                                  ; $4922: $30 $04

    nop                                           ; $4924: $00
    inc b                                         ; $4925: $04
    ld bc, $0205                                  ; $4926: $01 $05 $02
    dec b                                         ; $4929: $05
    inc bc                                        ; $492A: $03
    dec b                                         ; $492B: $05
    inc b                                         ; $492C: $04
    dec b                                         ; $492D: $05
    dec b                                         ; $492E: $05
    inc b                                         ; $492F: $04
    ld b, $04                                     ; $4930: $06 $04
    rlca                                          ; $4932: $07
    inc b                                         ; $4933: $04
    ld [$0905], sp                                ; $4934: $08 $05 $09
    dec b                                         ; $4937: $05
    ld a, [bc]                                    ; $4938: $0A
    dec b                                         ; $4939: $05
    dec bc                                        ; $493A: $0B
    dec b                                         ; $493B: $05
    inc c                                         ; $493C: $0C
    inc b                                         ; $493D: $04
    dec c                                         ; $493E: $0D
    inc b                                         ; $493F: $04
    ld c, $04                                     ; $4940: $0E $04
    rrca                                          ; $4942: $0F
    dec b                                         ; $4943: $05
    db $10                                        ; $4944: $10
    dec b                                         ; $4945: $05
    ld de, $1205                                  ; $4946: $11 $05 $12
    dec b                                         ; $4949: $05
    inc de                                        ; $494A: $13
    inc b                                         ; $494B: $04
    inc d                                         ; $494C: $14
    inc b                                         ; $494D: $04
    dec d                                         ; $494E: $15
    inc b                                         ; $494F: $04
    ld d, $05                                     ; $4950: $16 $05
    rla                                           ; $4952: $17
    dec b                                         ; $4953: $05
    jr jr_03B_495B                                ; $4954: $18 $05

    add hl, de                                    ; $4956: $19
    dec b                                         ; $4957: $05
    ld a, [de]                                    ; $4958: $1A
    inc b                                         ; $4959: $04
    dec de                                        ; $495A: $1B

jr_03B_495B:
    inc b                                         ; $495B: $04
    inc e                                         ; $495C: $1C
    ld b, $1D                                     ; $495D: $06 $1D
    ld b, $1E                                     ; $495F: $06 $1E
    inc b                                         ; $4961: $04
    rra                                           ; $4962: $1F
    inc b                                         ; $4963: $04
    jr nz, jr_03B_496A                            ; $4964: $20 $04

    ld hl, $2206                                  ; $4966: $21 $06 $22
    inc b                                         ; $4969: $04

jr_03B_496A:
    inc hl                                        ; $496A: $23
    ld b, $24                                     ; $496B: $06 $24
    ld b, $25                                     ; $496D: $06 $25
    inc b                                         ; $496F: $04
    ld h, $04                                     ; $4970: $26 $04
    daa                                           ; $4972: $27
    inc b                                         ; $4973: $04
    jr z, jr_03B_497C                             ; $4974: $28 $06

    add hl, hl                                    ; $4976: $29
    ld b, $2A                                     ; $4977: $06 $2A
    inc b                                         ; $4979: $04
    dec hl                                        ; $497A: $2B
    inc b                                         ; $497B: $04

jr_03B_497C:
    inc l                                         ; $497C: $2C
    inc b                                         ; $497D: $04
    dec l                                         ; $497E: $2D
    inc b                                         ; $497F: $04
    ld l, $04                                     ; $4980: $2E $04
    cpl                                           ; $4982: $2F
    ld b, $30                                     ; $4983: $06 $30
    inc b                                         ; $4985: $04
    nop                                           ; $4986: $00
    inc b                                         ; $4987: $04
    ld bc, $0204                                  ; $4988: $01 $04 $02
    dec b                                         ; $498B: $05
    inc bc                                        ; $498C: $03
    dec b                                         ; $498D: $05
    inc b                                         ; $498E: $04
    dec b                                         ; $498F: $05
    dec b                                         ; $4990: $05
    dec b                                         ; $4991: $05
    ld b, $04                                     ; $4992: $06 $04
    rlca                                          ; $4994: $07
    inc b                                         ; $4995: $04
    ld [$0904], sp                                ; $4996: $08 $04 $09
    dec b                                         ; $4999: $05
    ld a, [bc]                                    ; $499A: $0A
    dec b                                         ; $499B: $05
    dec bc                                        ; $499C: $0B
    dec b                                         ; $499D: $05
    inc c                                         ; $499E: $0C
    dec b                                         ; $499F: $05
    dec c                                         ; $49A0: $0D
    ld b, $0E                                     ; $49A1: $06 $0E
    inc b                                         ; $49A3: $04
    rrca                                          ; $49A4: $0F
    inc b                                         ; $49A5: $04
    db $10                                        ; $49A6: $10
    dec b                                         ; $49A7: $05
    ld de, $1205                                  ; $49A8: $11 $05 $12
    dec b                                         ; $49AB: $05
    inc de                                        ; $49AC: $13
    dec b                                         ; $49AD: $05
    inc d                                         ; $49AE: $14
    ld b, $15                                     ; $49AF: $06 $15
    inc b                                         ; $49B1: $04
    ld d, $04                                     ; $49B2: $16 $04
    rla                                           ; $49B4: $17
    dec b                                         ; $49B5: $05
    jr jr_03B_49BD                                ; $49B6: $18 $05

    add hl, de                                    ; $49B8: $19
    dec b                                         ; $49B9: $05
    ld a, [de]                                    ; $49BA: $1A
    dec b                                         ; $49BB: $05
    dec de                                        ; $49BC: $1B

jr_03B_49BD:
    ld b, $1C                                     ; $49BD: $06 $1C
    inc b                                         ; $49BF: $04
    dec e                                         ; $49C0: $1D
    inc b                                         ; $49C1: $04
    ld e, $04                                     ; $49C2: $1E $04
    rra                                           ; $49C4: $1F
    inc b                                         ; $49C5: $04
    jr nz, jr_03B_49CD                            ; $49C6: $20 $05

    ld hl, $2205                                  ; $49C8: $21 $05 $22
    ld b, $23                                     ; $49CB: $06 $23

jr_03B_49CD:
    inc b                                         ; $49CD: $04
    inc h                                         ; $49CE: $24
    inc b                                         ; $49CF: $04
    dec h                                         ; $49D0: $25
    rlca                                          ; $49D1: $07
    ld h, $07                                     ; $49D2: $26 $07
    daa                                           ; $49D4: $27
    rlca                                          ; $49D5: $07
    jr z, jr_03B_49DF                             ; $49D6: $28 $07

    add hl, hl                                    ; $49D8: $29
    inc b                                         ; $49D9: $04
    ld a, [hl+]                                   ; $49DA: $2A
    inc b                                         ; $49DB: $04
    dec hl                                        ; $49DC: $2B
    inc b                                         ; $49DD: $04
    inc l                                         ; $49DE: $2C

jr_03B_49DF:
    rlca                                          ; $49DF: $07
    dec l                                         ; $49E0: $2D
    rlca                                          ; $49E1: $07
    ld l, $07                                     ; $49E2: $2E $07
    cpl                                           ; $49E4: $2F
    rlca                                          ; $49E5: $07
    jr nc, @+$06                                  ; $49E6: $30 $04

    nop                                           ; $49E8: $00
    inc b                                         ; $49E9: $04
    ld bc, $0204                                  ; $49EA: $01 $04 $02
    inc b                                         ; $49ED: $04
    inc bc                                        ; $49EE: $03
    inc b                                         ; $49EF: $04
    inc b                                         ; $49F0: $04
    ld b, $05                                     ; $49F1: $06 $05
    inc b                                         ; $49F3: $04
    ld b, $04                                     ; $49F4: $06 $04
    rlca                                          ; $49F6: $07
    inc b                                         ; $49F7: $04
    ld [$0904], sp                                ; $49F8: $08 $04 $09
    ld b, $0A                                     ; $49FB: $06 $0A
    dec b                                         ; $49FD: $05
    dec bc                                        ; $49FE: $0B
    ld b, $0C                                     ; $49FF: $06 $0C
    dec b                                         ; $4A01: $05
    dec c                                         ; $4A02: $0D
    dec b                                         ; $4A03: $05
    ld c, $05                                     ; $4A04: $0E $05
    rrca                                          ; $4A06: $0F
    inc b                                         ; $4A07: $04
    db $10                                        ; $4A08: $10
    ld b, $11                                     ; $4A09: $06 $11
    dec b                                         ; $4A0B: $05
    ld [de], a                                    ; $4A0C: $12
    dec b                                         ; $4A0D: $05
    inc de                                        ; $4A0E: $13
    ld b, $14                                     ; $4A0F: $06 $14
    dec b                                         ; $4A11: $05
    dec d                                         ; $4A12: $15
    dec b                                         ; $4A13: $05
    ld d, $06                                     ; $4A14: $16 $06
    rla                                           ; $4A16: $17
    ld b, $18                                     ; $4A17: $06 $18
    rlca                                          ; $4A19: $07
    add hl, de                                    ; $4A1A: $19
    rlca                                          ; $4A1B: $07
    ld a, [de]                                    ; $4A1C: $1A
    ld b, $1B                                     ; $4A1D: $06 $1B
    dec b                                         ; $4A1F: $05
    inc e                                         ; $4A20: $1C
    dec b                                         ; $4A21: $05
    dec e                                         ; $4A22: $1D
    ld b, $1E                                     ; $4A23: $06 $1E
    ld b, $1F                                     ; $4A25: $06 $1F
    ld b, $20                                     ; $4A27: $06 $20
    ld b, $21                                     ; $4A29: $06 $21
    ld b, $22                                     ; $4A2B: $06 $22
    dec b                                         ; $4A2D: $05
    inc hl                                        ; $4A2E: $23
    dec b                                         ; $4A2F: $05
    inc h                                         ; $4A30: $24
    ld b, $25                                     ; $4A31: $06 $25
    inc b                                         ; $4A33: $04
    ld h, $06                                     ; $4A34: $26 $06
    daa                                           ; $4A36: $27
    dec b                                         ; $4A37: $05
    jr z, jr_03B_4A3F                             ; $4A38: $28 $05

    add hl, hl                                    ; $4A3A: $29
    dec b                                         ; $4A3B: $05
    ld a, [hl+]                                   ; $4A3C: $2A
    ld b, $2B                                     ; $4A3D: $06 $2B

jr_03B_4A3F:
    ld b, $2C                                     ; $4A3F: $06 $2C
    inc b                                         ; $4A41: $04
    dec l                                         ; $4A42: $2D
    ld b, $2E                                     ; $4A43: $06 $2E
    dec b                                         ; $4A45: $05
    cpl                                           ; $4A46: $2F
    dec b                                         ; $4A47: $05
    jr nc, @+$06                                  ; $4A48: $30 $04

    nop                                           ; $4A4A: $00
    inc b                                         ; $4A4B: $04
    ld bc, $0204                                  ; $4A4C: $01 $04 $02
    inc b                                         ; $4A4F: $04
    inc bc                                        ; $4A50: $03
    dec b                                         ; $4A51: $05
    inc b                                         ; $4A52: $04
    inc b                                         ; $4A53: $04
    dec b                                         ; $4A54: $05
    inc b                                         ; $4A55: $04
    ld b, $04                                     ; $4A56: $06 $04
    rlca                                          ; $4A58: $07
    inc b                                         ; $4A59: $04
    ld [$0904], sp                                ; $4A5A: $08 $04 $09
    inc b                                         ; $4A5D: $04
    ld a, [bc]                                    ; $4A5E: $0A
    rlca                                          ; $4A5F: $07
    dec bc                                        ; $4A60: $0B
    rlca                                          ; $4A61: $07
    inc c                                         ; $4A62: $0C
    dec b                                         ; $4A63: $05
    dec c                                         ; $4A64: $0D
    inc b                                         ; $4A65: $04
    ld c, $04                                     ; $4A66: $0E $04
    rrca                                          ; $4A68: $0F
    inc b                                         ; $4A69: $04
    db $10                                        ; $4A6A: $10
    inc b                                         ; $4A6B: $04
    ld de, $1204                                  ; $4A6C: $11 $04 $12
    inc b                                         ; $4A6F: $04
    inc de                                        ; $4A70: $13
    inc b                                         ; $4A71: $04
    inc d                                         ; $4A72: $14
    inc b                                         ; $4A73: $04
    dec d                                         ; $4A74: $15
    inc b                                         ; $4A75: $04
    ld d, $04                                     ; $4A76: $16 $04
    rla                                           ; $4A78: $17
    inc b                                         ; $4A79: $04
    jr jr_03B_4A80                                ; $4A7A: $18 $04

    add hl, de                                    ; $4A7C: $19
    inc b                                         ; $4A7D: $04
    ld a, [de]                                    ; $4A7E: $1A
    inc b                                         ; $4A7F: $04

jr_03B_4A80:
    dec de                                        ; $4A80: $1B
    inc b                                         ; $4A81: $04
    inc e                                         ; $4A82: $1C
    dec b                                         ; $4A83: $05
    dec e                                         ; $4A84: $1D
    inc b                                         ; $4A85: $04
    ld e, $06                                     ; $4A86: $1E $06
    rra                                           ; $4A88: $1F
    inc b                                         ; $4A89: $04
    jr nz, jr_03B_4A90                            ; $4A8A: $20 $04

    ld hl, $2204                                  ; $4A8C: $21 $04 $22
    dec b                                         ; $4A8F: $05

jr_03B_4A90:
    inc hl                                        ; $4A90: $23
    dec b                                         ; $4A91: $05
    inc h                                         ; $4A92: $24
    dec b                                         ; $4A93: $05
    dec h                                         ; $4A94: $25
    inc b                                         ; $4A95: $04
    ld h, $05                                     ; $4A96: $26 $05
    daa                                           ; $4A98: $27
    inc b                                         ; $4A99: $04
    jr z, jr_03B_4AA0                             ; $4A9A: $28 $04

    add hl, hl                                    ; $4A9C: $29
    inc b                                         ; $4A9D: $04
    ld a, [hl+]                                   ; $4A9E: $2A
    inc b                                         ; $4A9F: $04

jr_03B_4AA0:
    dec hl                                        ; $4AA0: $2B
    dec b                                         ; $4AA1: $05
    inc l                                         ; $4AA2: $2C
    dec b                                         ; $4AA3: $05
    dec l                                         ; $4AA4: $2D
    dec b                                         ; $4AA5: $05
    ld l, $05                                     ; $4AA6: $2E $05
    cpl                                           ; $4AA8: $2F
    inc b                                         ; $4AA9: $04
    jr nc, @+$06                                  ; $4AAA: $30 $04

    nop                                           ; $4AAC: $00
    inc b                                         ; $4AAD: $04
    ld bc, $0204                                  ; $4AAE: $01 $04 $02
    inc b                                         ; $4AB1: $04
    inc bc                                        ; $4AB2: $03
    inc b                                         ; $4AB3: $04
    inc b                                         ; $4AB4: $04
    dec b                                         ; $4AB5: $05
    dec b                                         ; $4AB6: $05
    dec b                                         ; $4AB7: $05
    ld b, $04                                     ; $4AB8: $06 $04
    rlca                                          ; $4ABA: $07
    inc b                                         ; $4ABB: $04
    ld [$0904], sp                                ; $4ABC: $08 $04 $09
    inc b                                         ; $4ABF: $04
    ld a, [bc]                                    ; $4AC0: $0A
    inc b                                         ; $4AC1: $04
    dec bc                                        ; $4AC2: $0B
    inc b                                         ; $4AC3: $04
    inc c                                         ; $4AC4: $0C
    dec b                                         ; $4AC5: $05
    dec c                                         ; $4AC6: $0D
    inc b                                         ; $4AC7: $04
    ld c, $04                                     ; $4AC8: $0E $04
    rrca                                          ; $4ACA: $0F
    dec b                                         ; $4ACB: $05
    db $10                                        ; $4ACC: $10
    dec b                                         ; $4ACD: $05
    ld de, $1204                                  ; $4ACE: $11 $04 $12
    inc b                                         ; $4AD1: $04
    inc de                                        ; $4AD2: $13
    dec b                                         ; $4AD3: $05
    inc d                                         ; $4AD4: $14
    inc b                                         ; $4AD5: $04
    dec d                                         ; $4AD6: $15
    dec b                                         ; $4AD7: $05
    ld d, $05                                     ; $4AD8: $16 $05
    rla                                           ; $4ADA: $17
    dec b                                         ; $4ADB: $05
    jr jr_03B_4AE2                                ; $4ADC: $18 $04

    add hl, de                                    ; $4ADE: $19
    inc b                                         ; $4ADF: $04
    ld a, [de]                                    ; $4AE0: $1A
    dec b                                         ; $4AE1: $05

jr_03B_4AE2:
    dec de                                        ; $4AE2: $1B
    inc b                                         ; $4AE3: $04
    inc e                                         ; $4AE4: $1C
    dec b                                         ; $4AE5: $05
    dec e                                         ; $4AE6: $1D
    ld b, $1E                                     ; $4AE7: $06 $1E
    dec b                                         ; $4AE9: $05
    rra                                           ; $4AEA: $1F
    inc b                                         ; $4AEB: $04
    jr nz, jr_03B_4AF2                            ; $4AEC: $20 $04

    ld hl, $2205                                  ; $4AEE: $21 $05 $22
    inc b                                         ; $4AF1: $04

jr_03B_4AF2:
    inc hl                                        ; $4AF2: $23
    inc b                                         ; $4AF3: $04
    inc h                                         ; $4AF4: $24
    rlca                                          ; $4AF5: $07
    dec h                                         ; $4AF6: $25
    dec b                                         ; $4AF7: $05
    ld h, $05                                     ; $4AF8: $26 $05
    daa                                           ; $4AFA: $27
    inc b                                         ; $4AFB: $04
    jr z, jr_03B_4B02                             ; $4AFC: $28 $04

    add hl, hl                                    ; $4AFE: $29
    inc b                                         ; $4AFF: $04
    ld a, [hl+]                                   ; $4B00: $2A
    inc b                                         ; $4B01: $04

jr_03B_4B02:
    dec hl                                        ; $4B02: $2B
    dec b                                         ; $4B03: $05
    inc l                                         ; $4B04: $2C
    dec b                                         ; $4B05: $05
    dec l                                         ; $4B06: $2D
    dec b                                         ; $4B07: $05
    ld l, $04                                     ; $4B08: $2E $04
    cpl                                           ; $4B0A: $2F
    inc b                                         ; $4B0B: $04
    jr nc, @+$06                                  ; $4B0C: $30 $04

    nop                                           ; $4B0E: $00
    inc b                                         ; $4B0F: $04
    ld bc, $0204                                  ; $4B10: $01 $04 $02
    inc b                                         ; $4B13: $04
    inc bc                                        ; $4B14: $03
    inc b                                         ; $4B15: $04
    inc b                                         ; $4B16: $04
    inc b                                         ; $4B17: $04
    dec b                                         ; $4B18: $05
    inc b                                         ; $4B19: $04
    ld b, $04                                     ; $4B1A: $06 $04
    rlca                                          ; $4B1C: $07
    inc b                                         ; $4B1D: $04
    ld [$0904], sp                                ; $4B1E: $08 $04 $09
    inc b                                         ; $4B21: $04
    ld a, [bc]                                    ; $4B22: $0A
    inc b                                         ; $4B23: $04
    dec bc                                        ; $4B24: $0B
    inc b                                         ; $4B25: $04
    inc c                                         ; $4B26: $0C
    inc b                                         ; $4B27: $04
    dec c                                         ; $4B28: $0D
    inc b                                         ; $4B29: $04
    ld c, $04                                     ; $4B2A: $0E $04
    rrca                                          ; $4B2C: $0F
    inc b                                         ; $4B2D: $04
    db $10                                        ; $4B2E: $10
    inc b                                         ; $4B2F: $04
    ld de, $1204                                  ; $4B30: $11 $04 $12
    inc b                                         ; $4B33: $04
    inc de                                        ; $4B34: $13
    inc b                                         ; $4B35: $04
    inc d                                         ; $4B36: $14
    dec b                                         ; $4B37: $05
    dec d                                         ; $4B38: $15
    dec b                                         ; $4B39: $05
    ld d, $05                                     ; $4B3A: $16 $05
    rla                                           ; $4B3C: $17
    dec b                                         ; $4B3D: $05
    jr jr_03B_4B44                                ; $4B3E: $18 $04

    add hl, de                                    ; $4B40: $19
    rlca                                          ; $4B41: $07
    ld a, [de]                                    ; $4B42: $1A
    rlca                                          ; $4B43: $07

jr_03B_4B44:
    dec de                                        ; $4B44: $1B
    dec b                                         ; $4B45: $05
    inc e                                         ; $4B46: $1C
    dec b                                         ; $4B47: $05
    dec e                                         ; $4B48: $1D
    dec b                                         ; $4B49: $05
    ld e, $05                                     ; $4B4A: $1E $05
    rra                                           ; $4B4C: $1F
    inc b                                         ; $4B4D: $04
    jr nz, jr_03B_4B57                            ; $4B4E: $20 $07

    ld hl, $2207                                  ; $4B50: $21 $07 $22
    ld b, $23                                     ; $4B53: $06 $23
    dec b                                         ; $4B55: $05
    inc h                                         ; $4B56: $24

jr_03B_4B57:
    dec b                                         ; $4B57: $05
    dec h                                         ; $4B58: $25
    ld b, $26                                     ; $4B59: $06 $26
    ld b, $27                                     ; $4B5B: $06 $27
    rlca                                          ; $4B5D: $07
    jr z, jr_03B_4B67                             ; $4B5E: $28 $07

    add hl, hl                                    ; $4B60: $29
    inc b                                         ; $4B61: $04
    ld a, [hl+]                                   ; $4B62: $2A
    ld b, $2B                                     ; $4B63: $06 $2B
    ld b, $2C                                     ; $4B65: $06 $2C

jr_03B_4B67:
    ld b, $2D                                     ; $4B67: $06 $2D
    ld b, $2E                                     ; $4B69: $06 $2E
    ld b, $2F                                     ; $4B6B: $06 $2F
    ld b, $30                                     ; $4B6D: $06 $30
    inc b                                         ; $4B6F: $04
    nop                                           ; $4B70: $00
    inc b                                         ; $4B71: $04
    ld bc, $0204                                  ; $4B72: $01 $04 $02
    inc b                                         ; $4B75: $04
    inc bc                                        ; $4B76: $03
    inc b                                         ; $4B77: $04
    inc b                                         ; $4B78: $04
    inc b                                         ; $4B79: $04
    dec b                                         ; $4B7A: $05
    inc b                                         ; $4B7B: $04
    ld b, $04                                     ; $4B7C: $06 $04
    rlca                                          ; $4B7E: $07
    inc b                                         ; $4B7F: $04
    ld [$0904], sp                                ; $4B80: $08 $04 $09
    inc b                                         ; $4B83: $04
    ld a, [bc]                                    ; $4B84: $0A
    inc b                                         ; $4B85: $04
    dec bc                                        ; $4B86: $0B
    inc b                                         ; $4B87: $04
    inc c                                         ; $4B88: $0C
    inc b                                         ; $4B89: $04
    dec c                                         ; $4B8A: $0D
    inc b                                         ; $4B8B: $04
    ld c, $04                                     ; $4B8C: $0E $04
    rrca                                          ; $4B8E: $0F
    inc b                                         ; $4B8F: $04
    db $10                                        ; $4B90: $10
    inc b                                         ; $4B91: $04
    ld de, $1204                                  ; $4B92: $11 $04 $12
    inc b                                         ; $4B95: $04
    inc de                                        ; $4B96: $13
    inc b                                         ; $4B97: $04
    inc d                                         ; $4B98: $14
    inc b                                         ; $4B99: $04
    dec d                                         ; $4B9A: $15
    inc b                                         ; $4B9B: $04
    ld d, $04                                     ; $4B9C: $16 $04
    rla                                           ; $4B9E: $17
    inc b                                         ; $4B9F: $04
    jr jr_03B_4BA6                                ; $4BA0: $18 $04

    add hl, de                                    ; $4BA2: $19
    inc b                                         ; $4BA3: $04
    ld a, [de]                                    ; $4BA4: $1A
    inc b                                         ; $4BA5: $04

jr_03B_4BA6:
    dec de                                        ; $4BA6: $1B
    dec b                                         ; $4BA7: $05
    inc e                                         ; $4BA8: $1C
    dec b                                         ; $4BA9: $05
    dec e                                         ; $4BAA: $1D
    dec b                                         ; $4BAB: $05
    ld e, $04                                     ; $4BAC: $1E $04
    rra                                           ; $4BAE: $1F
    inc b                                         ; $4BAF: $04
    jr nz, jr_03B_4BB6                            ; $4BB0: $20 $04

    ld hl, $2204                                  ; $4BB2: $21 $04 $22
    dec b                                         ; $4BB5: $05

jr_03B_4BB6:
    inc hl                                        ; $4BB6: $23
    ld b, $24                                     ; $4BB7: $06 $24
    ld b, $25                                     ; $4BB9: $06 $25
    ld b, $26                                     ; $4BBB: $06 $26
    dec b                                         ; $4BBD: $05
    daa                                           ; $4BBE: $27
    inc b                                         ; $4BBF: $04
    jr z, jr_03B_4BC6                             ; $4BC0: $28 $04

    add hl, hl                                    ; $4BC2: $29
    dec b                                         ; $4BC3: $05
    ld a, [hl+]                                   ; $4BC4: $2A
    dec b                                         ; $4BC5: $05

jr_03B_4BC6:
    dec hl                                        ; $4BC6: $2B
    dec b                                         ; $4BC7: $05
    inc l                                         ; $4BC8: $2C
    ld b, $2D                                     ; $4BC9: $06 $2D
    dec b                                         ; $4BCB: $05
    ld l, $04                                     ; $4BCC: $2E $04
    cpl                                           ; $4BCE: $2F
    inc b                                         ; $4BCF: $04
    jr nc, @+$06                                  ; $4BD0: $30 $04

    nop                                           ; $4BD2: $00
    inc b                                         ; $4BD3: $04
    ld bc, $0204                                  ; $4BD4: $01 $04 $02
    inc b                                         ; $4BD7: $04
    inc bc                                        ; $4BD8: $03
    inc b                                         ; $4BD9: $04
    inc b                                         ; $4BDA: $04
    inc b                                         ; $4BDB: $04
    dec b                                         ; $4BDC: $05
    inc b                                         ; $4BDD: $04
    ld b, $05                                     ; $4BDE: $06 $05
    rlca                                          ; $4BE0: $07
    dec b                                         ; $4BE1: $05
    ld [$0904], sp                                ; $4BE2: $08 $04 $09
    inc b                                         ; $4BE5: $04
    ld a, [bc]                                    ; $4BE6: $0A
    inc b                                         ; $4BE7: $04
    dec bc                                        ; $4BE8: $0B
    inc b                                         ; $4BE9: $04
    inc c                                         ; $4BEA: $0C
    inc b                                         ; $4BEB: $04
    dec c                                         ; $4BEC: $0D
    dec b                                         ; $4BED: $05
    ld c, $05                                     ; $4BEE: $0E $05
    rrca                                          ; $4BF0: $0F
    dec b                                         ; $4BF1: $05
    db $10                                        ; $4BF2: $10
    dec b                                         ; $4BF3: $05
    ld de, $1205                                  ; $4BF4: $11 $05 $12
    rlca                                          ; $4BF7: $07
    inc de                                        ; $4BF8: $13
    inc b                                         ; $4BF9: $04
    inc d                                         ; $4BFA: $14
    inc b                                         ; $4BFB: $04
    dec d                                         ; $4BFC: $15
    inc b                                         ; $4BFD: $04
    ld d, $05                                     ; $4BFE: $16 $05
    rla                                           ; $4C00: $17
    dec b                                         ; $4C01: $05
    jr jr_03B_4C0A                                ; $4C02: $18 $06

    add hl, de                                    ; $4C04: $19
    inc b                                         ; $4C05: $04
    ld a, [de]                                    ; $4C06: $1A
    inc b                                         ; $4C07: $04
    dec de                                        ; $4C08: $1B
    inc b                                         ; $4C09: $04

jr_03B_4C0A:
    inc e                                         ; $4C0A: $1C
    inc b                                         ; $4C0B: $04
    dec e                                         ; $4C0C: $1D
    inc b                                         ; $4C0D: $04
    ld e, $04                                     ; $4C0E: $1E $04
    rra                                           ; $4C10: $1F
    inc b                                         ; $4C11: $04
    jr nz, jr_03B_4C18                            ; $4C12: $20 $04

    ld hl, $2204                                  ; $4C14: $21 $04 $22
    inc b                                         ; $4C17: $04

jr_03B_4C18:
    inc hl                                        ; $4C18: $23
    inc b                                         ; $4C19: $04
    inc h                                         ; $4C1A: $24
    inc b                                         ; $4C1B: $04
    dec h                                         ; $4C1C: $25
    inc b                                         ; $4C1D: $04
    ld h, $04                                     ; $4C1E: $26 $04
    daa                                           ; $4C20: $27
    inc b                                         ; $4C21: $04
    jr z, jr_03B_4C28                             ; $4C22: $28 $04

    add hl, hl                                    ; $4C24: $29
    inc b                                         ; $4C25: $04
    ld a, [hl+]                                   ; $4C26: $2A
    inc b                                         ; $4C27: $04

jr_03B_4C28:
    dec hl                                        ; $4C28: $2B
    inc b                                         ; $4C29: $04
    inc l                                         ; $4C2A: $2C
    inc b                                         ; $4C2B: $04
    dec l                                         ; $4C2C: $2D
    inc b                                         ; $4C2D: $04
    ld l, $04                                     ; $4C2E: $2E $04
    cpl                                           ; $4C30: $2F
    inc b                                         ; $4C31: $04
    jr nc, @+$06                                  ; $4C32: $30 $04

    nop                                           ; $4C34: $00
    inc b                                         ; $4C35: $04
    ld bc, $0204                                  ; $4C36: $01 $04 $02
    inc b                                         ; $4C39: $04
    inc bc                                        ; $4C3A: $03
    inc b                                         ; $4C3B: $04
    inc b                                         ; $4C3C: $04
    inc b                                         ; $4C3D: $04
    dec b                                         ; $4C3E: $05
    inc b                                         ; $4C3F: $04
    ld b, $04                                     ; $4C40: $06 $04
    rlca                                          ; $4C42: $07
    inc b                                         ; $4C43: $04
    ld [$0904], sp                                ; $4C44: $08 $04 $09
    inc b                                         ; $4C47: $04
    ld a, [bc]                                    ; $4C48: $0A
    inc b                                         ; $4C49: $04
    dec bc                                        ; $4C4A: $0B
    inc b                                         ; $4C4B: $04
    inc c                                         ; $4C4C: $0C
    inc b                                         ; $4C4D: $04
    dec c                                         ; $4C4E: $0D
    inc b                                         ; $4C4F: $04
    ld c, $04                                     ; $4C50: $0E $04
    rrca                                          ; $4C52: $0F
    inc b                                         ; $4C53: $04
    db $10                                        ; $4C54: $10
    inc b                                         ; $4C55: $04
    ld de, $1204                                  ; $4C56: $11 $04 $12
    inc b                                         ; $4C59: $04
    inc de                                        ; $4C5A: $13
    inc b                                         ; $4C5B: $04
    inc d                                         ; $4C5C: $14
    inc b                                         ; $4C5D: $04
    dec d                                         ; $4C5E: $15
    inc b                                         ; $4C5F: $04
    ld d, $04                                     ; $4C60: $16 $04
    rla                                           ; $4C62: $17
    inc b                                         ; $4C63: $04
    jr jr_03B_4C6A                                ; $4C64: $18 $04

    add hl, de                                    ; $4C66: $19
    inc b                                         ; $4C67: $04
    ld a, [de]                                    ; $4C68: $1A
    inc b                                         ; $4C69: $04

jr_03B_4C6A:
    dec de                                        ; $4C6A: $1B
    inc b                                         ; $4C6B: $04
    inc e                                         ; $4C6C: $1C
    inc b                                         ; $4C6D: $04
    dec e                                         ; $4C6E: $1D
    inc b                                         ; $4C6F: $04
    ld e, $05                                     ; $4C70: $1E $05
    rra                                           ; $4C72: $1F
    inc b                                         ; $4C73: $04
    jr nz, jr_03B_4C7A                            ; $4C74: $20 $04

    ld hl, $2204                                  ; $4C76: $21 $04 $22
    inc b                                         ; $4C79: $04

jr_03B_4C7A:
    inc hl                                        ; $4C7A: $23
    inc b                                         ; $4C7B: $04
    inc h                                         ; $4C7C: $24
    inc b                                         ; $4C7D: $04
    dec h                                         ; $4C7E: $25
    inc b                                         ; $4C7F: $04
    ld h, $04                                     ; $4C80: $26 $04
    daa                                           ; $4C82: $27
    inc b                                         ; $4C83: $04
    jr z, jr_03B_4C8A                             ; $4C84: $28 $04

    add hl, hl                                    ; $4C86: $29
    inc b                                         ; $4C87: $04
    ld a, [hl+]                                   ; $4C88: $2A
    inc b                                         ; $4C89: $04

jr_03B_4C8A:
    dec hl                                        ; $4C8A: $2B
    inc b                                         ; $4C8B: $04
    inc l                                         ; $4C8C: $2C
    inc b                                         ; $4C8D: $04
    dec l                                         ; $4C8E: $2D
    inc b                                         ; $4C8F: $04
    ld l, $04                                     ; $4C90: $2E $04
    cpl                                           ; $4C92: $2F
    inc b                                         ; $4C93: $04
    jr nc, @+$08                                  ; $4C94: $30 $06

    nop                                           ; $4C96: $00
    inc b                                         ; $4C97: $04
    ld bc, $0206                                  ; $4C98: $01 $06 $02
    ld b, $03                                     ; $4C9B: $06 $03
    inc b                                         ; $4C9D: $04
    inc b                                         ; $4C9E: $04
    inc b                                         ; $4C9F: $04
    dec b                                         ; $4CA0: $05
    inc b                                         ; $4CA1: $04
    ld b, $06                                     ; $4CA2: $06 $06
    rlca                                          ; $4CA4: $07
    ld b, $08                                     ; $4CA5: $06 $08
    inc b                                         ; $4CA7: $04
    add hl, bc                                    ; $4CA8: $09
    ld b, $0A                                     ; $4CA9: $06 $0A
    inc b                                         ; $4CAB: $04
    dec bc                                        ; $4CAC: $0B
    inc b                                         ; $4CAD: $04
    inc c                                         ; $4CAE: $0C
    inc b                                         ; $4CAF: $04
    dec c                                         ; $4CB0: $0D
    ld b, $0E                                     ; $4CB1: $06 $0E
    ld b, $0F                                     ; $4CB3: $06 $0F
    inc b                                         ; $4CB5: $04
    db $10                                        ; $4CB6: $10
    ld b, $11                                     ; $4CB7: $06 $11
    inc b                                         ; $4CB9: $04
    ld [de], a                                    ; $4CBA: $12
    inc b                                         ; $4CBB: $04
    inc de                                        ; $4CBC: $13
    inc b                                         ; $4CBD: $04
    inc d                                         ; $4CBE: $14
    inc b                                         ; $4CBF: $04
    dec d                                         ; $4CC0: $15
    rlca                                          ; $4CC1: $07
    ld d, $04                                     ; $4CC2: $16 $04
    rla                                           ; $4CC4: $17
    inc b                                         ; $4CC5: $04
    jr jr_03B_4CCC                                ; $4CC6: $18 $04

    add hl, de                                    ; $4CC8: $19
    inc b                                         ; $4CC9: $04
    ld a, [de]                                    ; $4CCA: $1A
    inc b                                         ; $4CCB: $04

jr_03B_4CCC:
    dec de                                        ; $4CCC: $1B
    inc b                                         ; $4CCD: $04
    inc e                                         ; $4CCE: $1C
    rlca                                          ; $4CCF: $07
    dec e                                         ; $4CD0: $1D
    dec b                                         ; $4CD1: $05
    ld e, $04                                     ; $4CD2: $1E $04
    rra                                           ; $4CD4: $1F
    inc b                                         ; $4CD5: $04
    jr nz, jr_03B_4CDC                            ; $4CD6: $20 $04

    ld hl, $2204                                  ; $4CD8: $21 $04 $22
    inc b                                         ; $4CDB: $04

jr_03B_4CDC:
    inc hl                                        ; $4CDC: $23
    inc b                                         ; $4CDD: $04
    inc h                                         ; $4CDE: $24
    dec b                                         ; $4CDF: $05
    dec h                                         ; $4CE0: $25
    inc b                                         ; $4CE1: $04
    ld h, $04                                     ; $4CE2: $26 $04
    daa                                           ; $4CE4: $27
    inc b                                         ; $4CE5: $04
    jr z, jr_03B_4CEC                             ; $4CE6: $28 $04

    add hl, hl                                    ; $4CE8: $29
    inc b                                         ; $4CE9: $04
    ld a, [hl+]                                   ; $4CEA: $2A
    inc b                                         ; $4CEB: $04

jr_03B_4CEC:
    dec hl                                        ; $4CEC: $2B
    inc b                                         ; $4CED: $04
    inc l                                         ; $4CEE: $2C
    inc b                                         ; $4CEF: $04
    dec l                                         ; $4CF0: $2D
    inc b                                         ; $4CF1: $04
    ld l, $04                                     ; $4CF2: $2E $04
    cpl                                           ; $4CF4: $2F
    inc b                                         ; $4CF5: $04
    jr nc, jr_03B_4CFD                            ; $4CF6: $30 $05

    nop                                           ; $4CF8: $00
    dec b                                         ; $4CF9: $05
    ld bc, $0204                                  ; $4CFA: $01 $04 $02

jr_03B_4CFD:
    inc b                                         ; $4CFD: $04
    inc bc                                        ; $4CFE: $03
    inc b                                         ; $4CFF: $04
    inc b                                         ; $4D00: $04
    inc b                                         ; $4D01: $04
    dec b                                         ; $4D02: $05
    dec b                                         ; $4D03: $05
    ld b, $05                                     ; $4D04: $06 $05
    rlca                                          ; $4D06: $07
    dec b                                         ; $4D07: $05
    ld [$0904], sp                                ; $4D08: $08 $04 $09
    dec b                                         ; $4D0B: $05
    ld a, [bc]                                    ; $4D0C: $0A
    inc b                                         ; $4D0D: $04
    dec bc                                        ; $4D0E: $0B
    inc b                                         ; $4D0F: $04
    inc c                                         ; $4D10: $0C
    dec b                                         ; $4D11: $05
    dec c                                         ; $4D12: $0D
    inc b                                         ; $4D13: $04
    ld c, $04                                     ; $4D14: $0E $04
    rrca                                          ; $4D16: $0F
    inc b                                         ; $4D17: $04
    db $10                                        ; $4D18: $10
    dec b                                         ; $4D19: $05
    ld de, $1204                                  ; $4D1A: $11 $04 $12
    inc b                                         ; $4D1D: $04
    inc de                                        ; $4D1E: $13
    inc b                                         ; $4D1F: $04
    inc d                                         ; $4D20: $14
    inc b                                         ; $4D21: $04
    dec d                                         ; $4D22: $15
    inc b                                         ; $4D23: $04
    ld d, $04                                     ; $4D24: $16 $04
    rla                                           ; $4D26: $17
    dec b                                         ; $4D27: $05
    jr jr_03B_4D2E                                ; $4D28: $18 $04

    add hl, de                                    ; $4D2A: $19
    inc b                                         ; $4D2B: $04
    ld a, [de]                                    ; $4D2C: $1A
    inc b                                         ; $4D2D: $04

jr_03B_4D2E:
    dec de                                        ; $4D2E: $1B
    inc b                                         ; $4D2F: $04
    inc e                                         ; $4D30: $1C
    inc b                                         ; $4D31: $04
    dec e                                         ; $4D32: $1D
    inc b                                         ; $4D33: $04
    ld e, $04                                     ; $4D34: $1E $04
    rra                                           ; $4D36: $1F
    inc b                                         ; $4D37: $04
    jr nz, jr_03B_4D3E                            ; $4D38: $20 $04

    ld hl, $2204                                  ; $4D3A: $21 $04 $22
    dec b                                         ; $4D3D: $05

jr_03B_4D3E:
    inc hl                                        ; $4D3E: $23
    dec b                                         ; $4D3F: $05
    inc h                                         ; $4D40: $24
    inc b                                         ; $4D41: $04
    dec h                                         ; $4D42: $25
    inc b                                         ; $4D43: $04
    ld h, $05                                     ; $4D44: $26 $05
    daa                                           ; $4D46: $27
    inc b                                         ; $4D47: $04
    jr z, jr_03B_4D4E                             ; $4D48: $28 $04

    add hl, hl                                    ; $4D4A: $29
    inc b                                         ; $4D4B: $04
    ld a, [hl+]                                   ; $4D4C: $2A
    inc b                                         ; $4D4D: $04

jr_03B_4D4E:
    dec hl                                        ; $4D4E: $2B
    inc b                                         ; $4D4F: $04
    inc l                                         ; $4D50: $2C
    inc b                                         ; $4D51: $04
    dec l                                         ; $4D52: $2D
    dec b                                         ; $4D53: $05
    ld l, $05                                     ; $4D54: $2E $05
    cpl                                           ; $4D56: $2F
    dec b                                         ; $4D57: $05
    jr nc, @+$06                                  ; $4D58: $30 $04

    nop                                           ; $4D5A: $00
    inc b                                         ; $4D5B: $04
    ld bc, $0204                                  ; $4D5C: $01 $04 $02
    inc b                                         ; $4D5F: $04
    inc bc                                        ; $4D60: $03
    inc b                                         ; $4D61: $04
    inc b                                         ; $4D62: $04
    inc b                                         ; $4D63: $04
    dec b                                         ; $4D64: $05
    inc b                                         ; $4D65: $04
    ld b, $04                                     ; $4D66: $06 $04
    rlca                                          ; $4D68: $07
    inc b                                         ; $4D69: $04
    ld [$0904], sp                                ; $4D6A: $08 $04 $09
    inc b                                         ; $4D6D: $04
    ld a, [bc]                                    ; $4D6E: $0A
    inc b                                         ; $4D6F: $04
    dec bc                                        ; $4D70: $0B
    inc b                                         ; $4D71: $04
    inc c                                         ; $4D72: $0C
    inc b                                         ; $4D73: $04
    dec c                                         ; $4D74: $0D
    inc b                                         ; $4D75: $04
    ld c, $04                                     ; $4D76: $0E $04
    rrca                                          ; $4D78: $0F
    inc b                                         ; $4D79: $04
    db $10                                        ; $4D7A: $10
    inc b                                         ; $4D7B: $04
    ld de, $1204                                  ; $4D7C: $11 $04 $12
    dec b                                         ; $4D7F: $05
    inc de                                        ; $4D80: $13
    dec b                                         ; $4D81: $05
    inc d                                         ; $4D82: $14
    inc b                                         ; $4D83: $04
    dec d                                         ; $4D84: $15
    inc b                                         ; $4D85: $04
    ld d, $04                                     ; $4D86: $16 $04
    rla                                           ; $4D88: $17
    inc b                                         ; $4D89: $04
    jr jr_03B_4D91                                ; $4D8A: $18 $05

    add hl, de                                    ; $4D8C: $19
    dec b                                         ; $4D8D: $05
    ld a, [de]                                    ; $4D8E: $1A
    inc b                                         ; $4D8F: $04
    dec de                                        ; $4D90: $1B

jr_03B_4D91:
    inc b                                         ; $4D91: $04
    inc e                                         ; $4D92: $1C
    inc b                                         ; $4D93: $04
    dec e                                         ; $4D94: $1D
    inc b                                         ; $4D95: $04
    ld e, $04                                     ; $4D96: $1E $04
    rra                                           ; $4D98: $1F
    dec b                                         ; $4D99: $05
    jr nz, jr_03B_4DA1                            ; $4D9A: $20 $05

    ld hl, $2204                                  ; $4D9C: $21 $04 $22
    inc b                                         ; $4D9F: $04
    inc hl                                        ; $4DA0: $23

jr_03B_4DA1:
    inc b                                         ; $4DA1: $04
    inc h                                         ; $4DA2: $24
    inc b                                         ; $4DA3: $04
    dec h                                         ; $4DA4: $25
    inc b                                         ; $4DA5: $04
    ld h, $04                                     ; $4DA6: $26 $04
    daa                                           ; $4DA8: $27
    inc b                                         ; $4DA9: $04
    jr z, jr_03B_4DB0                             ; $4DAA: $28 $04

    add hl, hl                                    ; $4DAC: $29
    inc b                                         ; $4DAD: $04
    ld a, [hl+]                                   ; $4DAE: $2A
    inc b                                         ; $4DAF: $04

jr_03B_4DB0:
    dec hl                                        ; $4DB0: $2B
    inc b                                         ; $4DB1: $04
    inc l                                         ; $4DB2: $2C
    inc b                                         ; $4DB3: $04
    dec l                                         ; $4DB4: $2D
    inc b                                         ; $4DB5: $04
    ld l, $04                                     ; $4DB6: $2E $04
    cpl                                           ; $4DB8: $2F
    inc b                                         ; $4DB9: $04
    jr nc, @+$06                                  ; $4DBA: $30 $04

    nop                                           ; $4DBC: $00
    inc b                                         ; $4DBD: $04
    ld bc, $0204                                  ; $4DBE: $01 $04 $02
    inc b                                         ; $4DC1: $04
    inc bc                                        ; $4DC2: $03
    inc b                                         ; $4DC3: $04
    inc b                                         ; $4DC4: $04
    inc b                                         ; $4DC5: $04
    dec b                                         ; $4DC6: $05
    inc b                                         ; $4DC7: $04
    ld b, $04                                     ; $4DC8: $06 $04
    rlca                                          ; $4DCA: $07
    inc b                                         ; $4DCB: $04
    ld [$0904], sp                                ; $4DCC: $08 $04 $09
    inc b                                         ; $4DCF: $04
    ld a, [bc]                                    ; $4DD0: $0A
    inc b                                         ; $4DD1: $04
    dec bc                                        ; $4DD2: $0B
    inc b                                         ; $4DD3: $04
    inc c                                         ; $4DD4: $0C
    inc b                                         ; $4DD5: $04
    dec c                                         ; $4DD6: $0D
    inc b                                         ; $4DD7: $04
    ld c, $04                                     ; $4DD8: $0E $04
    rrca                                          ; $4DDA: $0F
    dec b                                         ; $4DDB: $05
    db $10                                        ; $4DDC: $10
    inc b                                         ; $4DDD: $04
    ld de, $1205                                  ; $4DDE: $11 $05 $12
    inc b                                         ; $4DE1: $04
    inc de                                        ; $4DE2: $13
    inc b                                         ; $4DE3: $04
    inc d                                         ; $4DE4: $14
    rlca                                          ; $4DE5: $07
    dec d                                         ; $4DE6: $15
    rlca                                          ; $4DE7: $07
    ld d, $04                                     ; $4DE8: $16 $04
    rla                                           ; $4DEA: $17
    inc b                                         ; $4DEB: $04
    jr jr_03B_4DF2                                ; $4DEC: $18 $04

    add hl, de                                    ; $4DEE: $19
    inc b                                         ; $4DEF: $04
    ld a, [de]                                    ; $4DF0: $1A
    inc b                                         ; $4DF1: $04

jr_03B_4DF2:
    dec de                                        ; $4DF2: $1B
    rlca                                          ; $4DF3: $07
    inc e                                         ; $4DF4: $1C
    rlca                                          ; $4DF5: $07
    dec e                                         ; $4DF6: $1D
    ld b, $1E                                     ; $4DF7: $06 $1E
    dec b                                         ; $4DF9: $05
    rra                                           ; $4DFA: $1F
    ld b, $20                                     ; $4DFB: $06 $20
    inc b                                         ; $4DFD: $04
    ld hl, $2204                                  ; $4DFE: $21 $04 $22
    rlca                                          ; $4E01: $07
    inc hl                                        ; $4E02: $23
    rlca                                          ; $4E03: $07
    inc h                                         ; $4E04: $24
    ld b, $25                                     ; $4E05: $06 $25
    ld b, $26                                     ; $4E07: $06 $26
    rlca                                          ; $4E09: $07
    daa                                           ; $4E0A: $27
    ld b, $28                                     ; $4E0B: $06 $28
    inc b                                         ; $4E0D: $04
    add hl, hl                                    ; $4E0E: $29
    inc b                                         ; $4E0F: $04
    ld a, [hl+]                                   ; $4E10: $2A
    inc b                                         ; $4E11: $04
    dec hl                                        ; $4E12: $2B
    inc b                                         ; $4E13: $04
    inc l                                         ; $4E14: $2C
    ld b, $2D                                     ; $4E15: $06 $2D
    rlca                                          ; $4E17: $07
    ld l, $06                                     ; $4E18: $2E $06
    cpl                                           ; $4E1A: $2F
    inc b                                         ; $4E1B: $04
    jr nc, @+$06                                  ; $4E1C: $30 $04

    nop                                           ; $4E1E: $00
    inc b                                         ; $4E1F: $04
    ld bc, $0204                                  ; $4E20: $01 $04 $02
    ld b, $03                                     ; $4E23: $06 $03
    inc b                                         ; $4E25: $04
    inc b                                         ; $4E26: $04
    inc b                                         ; $4E27: $04
    dec b                                         ; $4E28: $05
    inc b                                         ; $4E29: $04
    ld b, $04                                     ; $4E2A: $06 $04
    rlca                                          ; $4E2C: $07
    ld b, $08                                     ; $4E2D: $06 $08
    ld b, $09                                     ; $4E2F: $06 $09
    ld b, $0A                                     ; $4E31: $06 $0A
    ld b, $0B                                     ; $4E33: $06 $0B
    inc b                                         ; $4E35: $04
    inc c                                         ; $4E36: $0C
    inc b                                         ; $4E37: $04
    dec c                                         ; $4E38: $0D
    inc b                                         ; $4E39: $04
    ld c, $04                                     ; $4E3A: $0E $04
    rrca                                          ; $4E3C: $0F
    ld b, $10                                     ; $4E3D: $06 $10
    ld b, $11                                     ; $4E3F: $06 $11
    ld b, $12                                     ; $4E41: $06 $12
    ld b, $13                                     ; $4E43: $06 $13
    ld b, $14                                     ; $4E45: $06 $14
    inc b                                         ; $4E47: $04
    dec d                                         ; $4E48: $15
    inc b                                         ; $4E49: $04
    ld d, $06                                     ; $4E4A: $16 $06
    rla                                           ; $4E4C: $17
    ld b, $18                                     ; $4E4D: $06 $18
    inc b                                         ; $4E4F: $04
    add hl, de                                    ; $4E50: $19
    ld b, $1A                                     ; $4E51: $06 $1A
    ld b, $1B                                     ; $4E53: $06 $1B
    inc b                                         ; $4E55: $04
    inc e                                         ; $4E56: $1C
    inc b                                         ; $4E57: $04
    dec e                                         ; $4E58: $1D
    ld b, $1E                                     ; $4E59: $06 $1E
    inc b                                         ; $4E5B: $04
    rra                                           ; $4E5C: $1F

jr_03B_4E5D:
    inc b                                         ; $4E5D: $04
    jr nz, jr_03B_4E64                            ; $4E5E: $20 $04

    ld hl, $2204                                  ; $4E60: $21 $04 $22
    inc b                                         ; $4E63: $04

jr_03B_4E64:
    inc hl                                        ; $4E64: $23
    inc b                                         ; $4E65: $04
    inc h                                         ; $4E66: $24
    rlca                                          ; $4E67: $07
    dec h                                         ; $4E68: $25
    inc b                                         ; $4E69: $04
    ld h, $04                                     ; $4E6A: $26 $04
    daa                                           ; $4E6C: $27
    inc b                                         ; $4E6D: $04
    jr z, jr_03B_4E74                             ; $4E6E: $28 $04

    add hl, hl                                    ; $4E70: $29
    dec b                                         ; $4E71: $05
    ld a, [hl+]                                   ; $4E72: $2A
    inc b                                         ; $4E73: $04

jr_03B_4E74:
    dec hl                                        ; $4E74: $2B
    inc b                                         ; $4E75: $04
    inc l                                         ; $4E76: $2C
    inc b                                         ; $4E77: $04
    dec l                                         ; $4E78: $2D
    inc b                                         ; $4E79: $04
    ld l, $05                                     ; $4E7A: $2E $05
    cpl                                           ; $4E7C: $2F
    dec b                                         ; $4E7D: $05
    jr nc, jr_03B_4E5D                            ; $4E7E: $30 $DD

    ld [hl+], a                                   ; $4E80: $22
    db $DD                                        ; $4E81: $DD
    ld [hl+], a                                   ; $4E82: $22
    nop                                           ; $4E83: $00
    rst RST_38                                    ; $4E84: $FF
    db $DD                                        ; $4E85: $DD
    ld [hl+], a                                   ; $4E86: $22
    db $DD                                        ; $4E87: $DD
    ld [hl+], a                                   ; $4E88: $22
    db $DD                                        ; $4E89: $DD
    ld [hl+], a                                   ; $4E8A: $22
    nop                                           ; $4E8B: $00
    rst RST_38                                    ; $4E8C: $FF
    db $DD                                        ; $4E8D: $DD
    ld [hl+], a                                   ; $4E8E: $22
    db $DD                                        ; $4E8F: $DD
    ld [hl+], a                                   ; $4E90: $22
    db $DD                                        ; $4E91: $DD
    ld [hl+], a                                   ; $4E92: $22
    nop                                           ; $4E93: $00
    rst RST_38                                    ; $4E94: $FF
    db $DD                                        ; $4E95: $DD
    ld [hl+], a                                   ; $4E96: $22
    db $DD                                        ; $4E97: $DD
    ld [hl+], a                                   ; $4E98: $22
    db $DD                                        ; $4E99: $DD
    ld [hl+], a                                   ; $4E9A: $22
    nop                                           ; $4E9B: $00
    rst RST_38                                    ; $4E9C: $FF
    db $DD                                        ; $4E9D: $DD
    ld [hl+], a                                   ; $4E9E: $22
    xor $11                                       ; $4E9F: $EE $11
    xor $11                                       ; $4EA1: $EE $11
    nop                                           ; $4EA3: $00
    rst RST_38                                    ; $4EA4: $FF
    xor $11                                       ; $4EA5: $EE $11
    xor $11                                       ; $4EA7: $EE $11
    xor $11                                       ; $4EA9: $EE $11
    nop                                           ; $4EAB: $00
    rst RST_38                                    ; $4EAC: $FF
    xor $11                                       ; $4EAD: $EE $11
    xor $11                                       ; $4EAF: $EE $11
    xor $11                                       ; $4EB1: $EE $11
    nop                                           ; $4EB3: $00
    rst RST_38                                    ; $4EB4: $FF
    xor $11                                       ; $4EB5: $EE $11
    xor $11                                       ; $4EB7: $EE $11
    xor $11                                       ; $4EB9: $EE $11
    nop                                           ; $4EBB: $00
    rst RST_38                                    ; $4EBC: $FF
    xor $11                                       ; $4EBD: $EE $11
    ld [hl], a                                    ; $4EBF: $77
    adc b                                         ; $4EC0: $88
    ld [hl], a                                    ; $4EC1: $77
    adc b                                         ; $4EC2: $88
    nop                                           ; $4EC3: $00
    rst RST_38                                    ; $4EC4: $FF
    ld [hl], a                                    ; $4EC5: $77
    adc b                                         ; $4EC6: $88
    ld [hl], a                                    ; $4EC7: $77
    adc b                                         ; $4EC8: $88
    ld [hl], a                                    ; $4EC9: $77
    adc b                                         ; $4ECA: $88
    nop                                           ; $4ECB: $00
    rst RST_38                                    ; $4ECC: $FF
    ld [hl], a                                    ; $4ECD: $77
    adc b                                         ; $4ECE: $88
    ld [hl], a                                    ; $4ECF: $77
    adc b                                         ; $4ED0: $88
    ld [hl], a                                    ; $4ED1: $77
    adc b                                         ; $4ED2: $88
    nop                                           ; $4ED3: $00
    rst RST_38                                    ; $4ED4: $FF
    ld [hl], a                                    ; $4ED5: $77
    adc b                                         ; $4ED6: $88
    ld [hl], a                                    ; $4ED7: $77
    adc b                                         ; $4ED8: $88
    ld [hl], a                                    ; $4ED9: $77
    adc b                                         ; $4EDA: $88
    nop                                           ; $4EDB: $00
    rst RST_38                                    ; $4EDC: $FF
    ld [hl], a                                    ; $4EDD: $77
    adc b                                         ; $4EDE: $88
    cp e                                          ; $4EDF: $BB
    ld b, h                                       ; $4EE0: $44
    cp e                                          ; $4EE1: $BB
    ld b, h                                       ; $4EE2: $44
    nop                                           ; $4EE3: $00
    rst RST_38                                    ; $4EE4: $FF
    cp e                                          ; $4EE5: $BB
    ld b, h                                       ; $4EE6: $44
    cp e                                          ; $4EE7: $BB
    ld b, h                                       ; $4EE8: $44
    cp e                                          ; $4EE9: $BB
    ld b, h                                       ; $4EEA: $44
    nop                                           ; $4EEB: $00
    rst RST_38                                    ; $4EEC: $FF
    cp e                                          ; $4EED: $BB
    ld b, h                                       ; $4EEE: $44
    cp e                                          ; $4EEF: $BB
    ld b, h                                       ; $4EF0: $44
    cp e                                          ; $4EF1: $BB
    ld b, h                                       ; $4EF2: $44
    nop                                           ; $4EF3: $00
    rst RST_38                                    ; $4EF4: $FF
    cp e                                          ; $4EF5: $BB
    ld b, h                                       ; $4EF6: $44
    cp e                                          ; $4EF7: $BB
    ld b, h                                       ; $4EF8: $44
    cp e                                          ; $4EF9: $BB
    ld b, h                                       ; $4EFA: $44
    nop                                           ; $4EFB: $00
    rst RST_38                                    ; $4EFC: $FF
    cp e                                          ; $4EFD: $BB
    ld b, h                                       ; $4EFE: $44
    xor a                                         ; $4EFF: $AF
    ld [$C31A], a                                 ; $4F00: $EA $1A $C3
    ld sp, $DD00                                  ; $4F03: $31 $00 $DD
    di                                            ; $4F06: $F3
    rst RST_10                                    ; $4F07: $D7
    ld hl, $C03A                                  ; $4F08: $21 $3A $C0
    res 1, [hl]                                   ; $4F0B: $CB $8E
    xor a                                         ; $4F0D: $AF
    ldh [rBGP], a                                 ; $4F0E: $E0 $47
    ldh [rOBP0], a                                ; $4F10: $E0 $48
    ldh [rOBP1], a                                ; $4F12: $E0 $49
    call Call_000_13ED                            ; $4F14: $CD $ED $13
    ld a, [$C311]                                 ; $4F17: $FA $11 $C3
    add a                                         ; $4F1A: $87
    ld hl, $518B                                  ; $4F1B: $21 $8B $51
    ld e, a                                       ; $4F1E: $5F
    ld d, $00                                     ; $4F1F: $16 $00
    add hl, de                                    ; $4F21: $19
    ld e, [hl]                                    ; $4F22: $5E
    inc hl                                        ; $4F23: $23
    ld d, [hl]                                    ; $4F24: $56
    call Call_000_14C0                            ; $4F25: $CD $C0 $14
    call Call_000_0FBD                            ; $4F28: $CD $BD $0F
    call Call_000_0FC6                            ; $4F2B: $CD $C6 $0F
    xor a                                         ; $4F2E: $AF
    ld [$C2AA], a                                 ; $4F2F: $EA $AA $C2
    ld [$C2AC], a                                 ; $4F32: $EA $AC $C2
    ldh [$FFE2], a                                ; $4F35: $E0 $E2
    ldh [$FFE4], a                                ; $4F37: $E0 $E4
    ld hl, $453C                                  ; $4F39: $21 $3C $45
    ld de, $C359                                  ; $4F3C: $11 $59 $C3
    ld b, $31                                     ; $4F3F: $06 $31
    rst RST_20                                    ; $4F41: $E7
    ld hl, $C359                                  ; $4F42: $21 $59 $C3
    ld de, $8800                                  ; $4F45: $11 $00 $88
    ld b, $30                                     ; $4F48: $06 $30
    call Call_000_1188                            ; $4F4A: $CD $88 $11
    xor a                                         ; $4F4D: $AF
    ld hl, $C339                                  ; $4F4E: $21 $39 $C3
    ld c, $10                                     ; $4F51: $0E $10

jr_03B_4F53:
    ld [hl+], a                                   ; $4F53: $22
    dec c                                         ; $4F54: $0D
    jr nz, jr_03B_4F53                            ; $4F55: $20 $FC

    ld hl, $C339                                  ; $4F57: $21 $39 $C3
    ld de, $9000                                  ; $4F5A: $11 $00 $90
    ld b, $01                                     ; $4F5D: $06 $01
    call Call_000_1188                            ; $4F5F: $CD $88 $11
    call Call_000_0F9E                            ; $4F62: $CD $9E $0F
    ld hl, $D6C0                                  ; $4F65: $21 $C0 $D6
    ld de, $24EF                                  ; $4F68: $11 $EF $24
    call Call_000_0F8E                            ; $4F6B: $CD $8E $0F
    ld a, [$C311]                                 ; $4F6E: $FA $11 $C3
    ld c, a                                       ; $4F71: $4F
    add a                                         ; $4F72: $87
    add c                                         ; $4F73: $81
    ld hl, $516D                                  ; $4F74: $21 $6D $51
    ld e, a                                       ; $4F77: $5F
    ld d, $00                                     ; $4F78: $16 $00
    add hl, de                                    ; $4F7A: $19
    ld a, [hl+]                                   ; $4F7B: $2A
    ld e, [hl]                                    ; $4F7C: $5E
    inc hl                                        ; $4F7D: $23
    ld d, [hl]                                    ; $4F7E: $56
    ld hl, $D6D1                                  ; $4F7F: $21 $D1 $D6
    ld [hl+], a                                   ; $4F82: $22
    ld [hl], e                                    ; $4F83: $73
    inc hl                                        ; $4F84: $23
    ld [hl], d                                    ; $4F85: $72
    ld hl, $D6C2                                  ; $4F86: $21 $C2 $D6
    ld [hl], $30                                  ; $4F89: $36 $30
    ld hl, $D6C4                                  ; $4F8B: $21 $C4 $D6
    ld [hl], $30                                  ; $4F8E: $36 $30
    ld hl, $D6C6                                  ; $4F90: $21 $C6 $D6
    ld [hl], $30                                  ; $4F93: $36 $30
    ld hl, $D6E9                                  ; $4F95: $21 $E9 $D6
    ld [hl], $FF                                  ; $4F98: $36 $FF
    ld hl, $D6C0                                  ; $4F9A: $21 $C0 $D6
    call Call_000_0DB5                            ; $4F9D: $CD $B5 $0D
    ld hl, $D840                                  ; $4FA0: $21 $40 $D8
    ld de, $519F                                  ; $4FA3: $11 $9F $51
    call Call_000_0F8E                            ; $4FA6: $CD $8E $0F
    ld hl, $D800                                  ; $4FA9: $21 $00 $D8
    ld de, $5299                                  ; $4FAC: $11 $99 $52
    call Call_000_0F8E                            ; $4FAF: $CD $8E $0F
    ld hl, $D7C0                                  ; $4FB2: $21 $C0 $D7
    ld de, $52B9                                  ; $4FB5: $11 $B9 $52
    call Call_000_0F8E                            ; $4FB8: $CD $8E $0F
    ld hl, $D780                                  ; $4FBB: $21 $80 $D7
    ld de, $5299                                  ; $4FBE: $11 $99 $52
    call Call_000_0F8E                            ; $4FC1: $CD $8E $0F
    ld a, $87                                     ; $4FC4: $3E $87
    rst RST_18                                    ; $4FC6: $DF
    xor a                                         ; $4FC7: $AF
    ldh [rSTAT], a                                ; $4FC8: $E0 $41
    ei                                            ; $4FCA: $FB
    ld de, $515D                                  ; $4FCB: $11 $5D $51
    ld hl, $C329                                  ; $4FCE: $21 $29 $C3
    ld c, $10                                     ; $4FD1: $0E $10

jr_03B_4FD3:
    ld a, [de]                                    ; $4FD3: $1A
    inc de                                        ; $4FD4: $13
    ld [hl+], a                                   ; $4FD5: $22
    dec c                                         ; $4FD6: $0D
    jr nz, jr_03B_4FD3                            ; $4FD7: $20 $FA

    ld a, $81                                     ; $4FD9: $3E $81
    call Call_000_135D                            ; $4FDB: $CD $5D $13
    call Call_000_0430                            ; $4FDE: $CD $30 $04
    call Call_000_0430                            ; $4FE1: $CD $30 $04
    ld a, $1B                                     ; $4FE4: $3E $1B
    ldh [rBGP], a                                 ; $4FE6: $E0 $47
    ld a, $1B                                     ; $4FE8: $3E $1B
    ldh [rOBP0], a                                ; $4FEA: $E0 $48
    ld a, $4F                                     ; $4FEC: $3E $4F
    ldh [rOBP1], a                                ; $4FEE: $E0 $49
    call Call_000_147A                            ; $4FF0: $CD $7A $14

jr_03B_4FF3:
    call Call_03B_509A                            ; $4FF3: $CD $9A $50
    ld hl, $C329                                  ; $4FF6: $21 $29 $C3
    ld e, [hl]                                    ; $4FF9: $5E
    inc hl                                        ; $4FFA: $23
    ld d, [hl]                                    ; $4FFB: $56
    inc de                                        ; $4FFC: $13
    ld [hl], d                                    ; $4FFD: $72
    dec hl                                        ; $4FFE: $2B
    ld [hl], e                                    ; $4FFF: $73
    call Call_000_0424                            ; $5000: $CD $24 $04
    ld a, [$C32F]                                 ; $5003: $FA $2F $C3
    or a                                          ; $5006: $B7
    jr nz, jr_03B_500F                            ; $5007: $20 $06

    ld hl, $C336                                  ; $5009: $21 $36 $C3
    dec [hl]                                      ; $500C: $35
    jr z, jr_03B_501A                             ; $500D: $28 $0B

jr_03B_500F:
    ldh a, [$FF99]                                ; $500F: $F0 $99
    ld e, a                                       ; $5011: $5F
    ldh a, [$FFAC]                                ; $5012: $F0 $AC
    or e                                          ; $5014: $B3
    ld e, a                                       ; $5015: $5F
    and $80                                       ; $5016: $E6 $80
    jr z, jr_03B_4FF3                             ; $5018: $28 $D9

Jump_03B_501A:
jr_03B_501A:
    ld hl, $D6C0                                  ; $501A: $21 $C0 $D6
    call Call_000_0E28                            ; $501D: $CD $28 $0E
    ld hl, $D840                                  ; $5020: $21 $40 $D8
    call Call_000_0E28                            ; $5023: $CD $28 $0E
    ld hl, $D800                                  ; $5026: $21 $00 $D8
    call Call_000_0DD4                            ; $5029: $CD $D4 $0D
    ld hl, $D7C0                                  ; $502C: $21 $C0 $D7
    call Call_000_0DD4                            ; $502F: $CD $D4 $0D
    ld hl, $D780                                  ; $5032: $21 $80 $D7
    call Call_000_0DD4                            ; $5035: $CD $D4 $0D
    ld hl, $D380                                  ; $5038: $21 $80 $D3
    call Call_03B_5062                            ; $503B: $CD $62 $50
    ld hl, $D3C0                                  ; $503E: $21 $C0 $D3
    call Call_03B_5062                            ; $5041: $CD $62 $50
    ld hl, $D3E0                                  ; $5044: $21 $E0 $D3
    call Call_03B_5062                            ; $5047: $CD $62 $50
    call Call_000_147A                            ; $504A: $CD $7A $14
    call Call_000_0424                            ; $504D: $CD $24 $04
    ld hl, $C337                                  ; $5050: $21 $37 $C3
    dec [hl]                                      ; $5053: $35
    jp nz, Jump_03B_501A                          ; $5054: $C2 $1A $50

    ld hl, $C03A                                  ; $5057: $21 $3A $C0
    res 2, [hl]                                   ; $505A: $CB $96
    ld b, $3B                                     ; $505C: $06 $3B
    ld hl, $53F5                                  ; $505E: $21 $F5 $53
    rst RST_00                                    ; $5061: $C7

Call_03B_5062:
    ld c, $10                                     ; $5062: $0E $10

Jump_03B_5064:
    ld a, [hl]                                    ; $5064: $7E
    and $1F                                       ; $5065: $E6 $1F
    cp $1F                                        ; $5067: $FE $1F
    jr z, jr_03B_506C                             ; $5069: $28 $01

    inc a                                         ; $506B: $3C

jr_03B_506C:
    ld e, a                                       ; $506C: $5F
    ld a, [hl+]                                   ; $506D: $2A
    ld b, [hl]                                    ; $506E: $46
    srl b                                         ; $506F: $CB $38
    rra                                           ; $5071: $1F
    srl b                                         ; $5072: $CB $38
    rra                                           ; $5074: $1F
    and $F8                                       ; $5075: $E6 $F8
    cp $F8                                        ; $5077: $FE $F8
    jr z, jr_03B_507D                             ; $5079: $28 $02

    add $08                                       ; $507B: $C6 $08

jr_03B_507D:
    ld d, a                                       ; $507D: $57
    ld a, [hl]                                    ; $507E: $7E
    and $7C                                       ; $507F: $E6 $7C
    cp $7C                                        ; $5081: $FE $7C
    jr z, jr_03B_5087                             ; $5083: $28 $02

    add $04                                       ; $5085: $C6 $04

jr_03B_5087:
    ld b, a                                       ; $5087: $47
    xor a                                         ; $5088: $AF
    sla d                                         ; $5089: $CB $22
    rla                                           ; $508B: $17
    sla d                                         ; $508C: $CB $22
    rla                                           ; $508E: $17
    or b                                          ; $508F: $B0
    ld [hl-], a                                   ; $5090: $32
    ld a, e                                       ; $5091: $7B
    or d                                          ; $5092: $B2
    ld [hl+], a                                   ; $5093: $22
    inc hl                                        ; $5094: $23
    dec c                                         ; $5095: $0D
    jp nz, Jump_03B_5064                          ; $5096: $C2 $64 $50

    ret                                           ; $5099: $C9


Call_03B_509A:
    ld hl, $D6C0                                  ; $509A: $21 $C0 $D6
    call Call_000_0E28                            ; $509D: $CD $28 $0E
    ld hl, $D840                                  ; $50A0: $21 $40 $D8
    call Call_000_0E28                            ; $50A3: $CD $28 $0E
    ld hl, $D800                                  ; $50A6: $21 $00 $D8
    call Call_000_0DD4                            ; $50A9: $CD $D4 $0D
    ld hl, $D7C0                                  ; $50AC: $21 $C0 $D7
    call Call_000_0DD4                            ; $50AF: $CD $D4 $0D
    ld hl, $D780                                  ; $50B2: $21 $80 $D7
    call Call_000_0DD4                            ; $50B5: $CD $D4 $0D
    ld a, [$C32E]                                 ; $50B8: $FA $2E $C3
    ld c, a                                       ; $50BB: $4F
    ld a, [$C32D]                                 ; $50BC: $FA $2D $C3
    or c                                          ; $50BF: $B1
    jr z, jr_03B_50C6                             ; $50C0: $28 $04

    ld a, c                                       ; $50C2: $79
    add a                                         ; $50C3: $87
    jr nc, jr_03B_50D0                            ; $50C4: $30 $0A

jr_03B_50C6:
    xor a                                         ; $50C6: $AF
    ld hl, $C32D                                  ; $50C7: $21 $2D $C3
    ld [hl+], a                                   ; $50CA: $22
    ld [hl+], a                                   ; $50CB: $22
    ld [hl+], a                                   ; $50CC: $22
    ld [hl+], a                                   ; $50CD: $22
    jr jr_03B_50F1                                ; $50CE: $18 $21

jr_03B_50D0:
    ld hl, $C330                                  ; $50D0: $21 $30 $C3
    ld a, [hl-]                                   ; $50D3: $3A
    ld d, a                                       ; $50D4: $57
    ld a, [hl-]                                   ; $50D5: $3A
    ld e, a                                       ; $50D6: $5F
    ld a, [hl-]                                   ; $50D7: $3A
    ld b, a                                       ; $50D8: $47
    ld a, [hl]                                    ; $50D9: $7E
    push hl                                       ; $50DA: $E5
    ld l, a                                       ; $50DB: $6F
    ld h, b                                       ; $50DC: $60
    add hl, de                                    ; $50DD: $19
    pop bc                                        ; $50DE: $C1
    inc bc                                        ; $50DF: $03
    ld a, h                                       ; $50E0: $7C
    ld [bc], a                                    ; $50E1: $02
    dec bc                                        ; $50E2: $0B
    ld a, l                                       ; $50E3: $7D
    ld [bc], a                                    ; $50E4: $02
    dec bc                                        ; $50E5: $0B
    ld a, [bc]                                    ; $50E6: $0A
    ld d, a                                       ; $50E7: $57
    dec bc                                        ; $50E8: $0B
    ld a, [bc]                                    ; $50E9: $0A
    ld e, a                                       ; $50EA: $5F
    add hl, de                                    ; $50EB: $19
    ld a, l                                       ; $50EC: $7D
    ld [bc], a                                    ; $50ED: $02
    inc bc                                        ; $50EE: $03
    ld a, h                                       ; $50EF: $7C
    ld [bc], a                                    ; $50F0: $02

jr_03B_50F1:
    ld a, [$C32C]                                 ; $50F1: $FA $2C $C3
    ld [$D846], a                                 ; $50F4: $EA $46 $D8
    ld a, [$C338]                                 ; $50F7: $FA $38 $C3
    inc a                                         ; $50FA: $3C
    cp $2D                                        ; $50FB: $FE $2D
    jr c, jr_03B_5100                             ; $50FD: $38 $01

    xor a                                         ; $50FF: $AF

jr_03B_5100:
    ld [$C338], a                                 ; $5100: $EA $38 $C3
    or a                                          ; $5103: $B7
    jr z, jr_03B_510F                             ; $5104: $28 $09

    cp $0F                                        ; $5106: $FE $0F
    jr z, jr_03B_5129                             ; $5108: $28 $1F

    cp $1E                                        ; $510A: $FE $1E
    jr z, jr_03B_5143                             ; $510C: $28 $35

    ret                                           ; $510E: $C9


jr_03B_510F:
    ld hl, $D800                                  ; $510F: $21 $00 $D8
    res 4, [hl]                                   ; $5112: $CB $A6
    xor a                                         ; $5114: $AF
    ld [$D814], a                                 ; $5115: $EA $14 $D8
    ld a, [$D844]                                 ; $5118: $FA $44 $D8
    add $04                                       ; $511B: $C6 $04
    ld [$D804], a                                 ; $511D: $EA $04 $D8
    ld a, [$D846]                                 ; $5120: $FA $46 $D8
    sub $14                                       ; $5123: $D6 $14
    ld [$D806], a                                 ; $5125: $EA $06 $D8
    ret                                           ; $5128: $C9


jr_03B_5129:
    ld hl, $D7C0                                  ; $5129: $21 $C0 $D7
    res 4, [hl]                                   ; $512C: $CB $A6
    xor a                                         ; $512E: $AF
    ld [$D7D4], a                                 ; $512F: $EA $D4 $D7
    ld a, [$D844]                                 ; $5132: $FA $44 $D8
    add $04                                       ; $5135: $C6 $04
    ld [$D7C4], a                                 ; $5137: $EA $C4 $D7
    ld a, [$D846]                                 ; $513A: $FA $46 $D8
    sub $14                                       ; $513D: $D6 $14
    ld [$D7C6], a                                 ; $513F: $EA $C6 $D7
    ret                                           ; $5142: $C9


jr_03B_5143:
    ld hl, $D780                                  ; $5143: $21 $80 $D7
    res 4, [hl]                                   ; $5146: $CB $A6
    xor a                                         ; $5148: $AF
    ld [$D794], a                                 ; $5149: $EA $94 $D7
    ld a, [$D844]                                 ; $514C: $FA $44 $D8
    add $04                                       ; $514F: $C6 $04
    ld [$D784], a                                 ; $5151: $EA $84 $D7
    ld a, [$D846]                                 ; $5154: $FA $46 $D8
    sub $14                                       ; $5157: $D6 $14
    ld [$D786], a                                 ; $5159: $EA $86 $D7
    ret                                           ; $515C: $C9


    nop                                           ; $515D: $00
    nop                                           ; $515E: $00
    nop                                           ; $515F: $00
    ret nz                                        ; $5160: $C0

    nop                                           ; $5161: $00
    ld bc, $FFFF                                  ; $5162: $01 $FF $FF
    nop                                           ; $5165: $00
    nop                                           ; $5166: $00
    nop                                           ; $5167: $00
    nop                                           ; $5168: $00
    nop                                           ; $5169: $00
    ld a, b                                       ; $516A: $78
    jr nz, jr_03B_516D                            ; $516B: $20 $00

jr_03B_516D:
    rlca                                          ; $516D: $07
    cp [hl]                                       ; $516E: $BE
    ld b, b                                       ; $516F: $40
    rlca                                          ; $5170: $07
    ld h, c                                       ; $5171: $61
    ld d, a                                       ; $5172: $57
    ld [$402A], sp                                ; $5173: $08 $2A $40
    ld [$5C8A], sp                                ; $5176: $08 $8A $5C
    add hl, bc                                    ; $5179: $09
    ld [hl+], a                                   ; $517A: $22
    ld b, b                                       ; $517B: $40
    add hl, bc                                    ; $517C: $09
    db $F4                                        ; $517D: $F4
    ld d, a                                       ; $517E: $57
    ld a, [bc]                                    ; $517F: $0A
    ld b, $40                                     ; $5180: $06 $40
    ld a, [bc]                                    ; $5182: $0A
    ld a, l                                       ; $5183: $7D
    ld e, d                                       ; $5184: $5A
    dec bc                                        ; $5185: $0B
    ld a, [hl+]                                   ; $5186: $2A
    ld b, b                                       ; $5187: $40
    dec bc                                        ; $5188: $0B
    db $E4                                        ; $5189: $E4
    ld e, e                                       ; $518A: $5B
    ld [de], a                                    ; $518B: $12
    nop                                           ; $518C: $00
    inc de                                        ; $518D: $13
    nop                                           ; $518E: $00
    inc d                                         ; $518F: $14
    nop                                           ; $5190: $00
    dec d                                         ; $5191: $15
    nop                                           ; $5192: $00
    ld d, $00                                     ; $5193: $16 $00
    rla                                           ; $5195: $17
    nop                                           ; $5196: $00
    jr jr_03B_5199                                ; $5197: $18 $00

jr_03B_5199:
    add hl, de                                    ; $5199: $19
    nop                                           ; $519A: $00
    ld a, [de]                                    ; $519B: $1A
    nop                                           ; $519C: $00
    dec de                                        ; $519D: $1B
    nop                                           ; $519E: $00
    add b                                         ; $519F: $80
    nop                                           ; $51A0: $00
    ld bc, $4801                                  ; $51A1: $01 $01 $48
    nop                                           ; $51A4: $00
    ldh [rP1], a                                  ; $51A5: $E0 $00
    nop                                           ; $51A7: $00
    nop                                           ; $51A8: $00
    nop                                           ; $51A9: $00
    nop                                           ; $51AA: $00
    nop                                           ; $51AB: $00
    nop                                           ; $51AC: $00
    add b                                         ; $51AD: $80
    nop                                           ; $51AE: $00
    add b                                         ; $51AF: $80
    dec sp                                        ; $51B0: $3B
    cp a                                          ; $51B1: $BF
    ld d, c                                       ; $51B2: $51
    nop                                           ; $51B3: $00
    nop                                           ; $51B4: $00
    cp a                                          ; $51B5: $BF
    ld d, c                                       ; $51B6: $51
    nop                                           ; $51B7: $00
    nop                                           ; $51B8: $00
    nop                                           ; $51B9: $00
    nop                                           ; $51BA: $00
    ld bc, $C001                                  ; $51BB: $01 $01 $C0
    ret c                                         ; $51BE: $D8

    pop hl                                        ; $51BF: $E1
    ld d, c                                       ; $51C0: $51
    rst RST_38                                    ; $51C1: $FF
    rst RST_38                                    ; $51C2: $FF
    ld hl, sp+$51                                 ; $51C3: $F8 $51
    rst RST_38                                    ; $51C5: $FF
    rst RST_38                                    ; $51C6: $FF
    rrca                                          ; $51C7: $0F
    ld d, d                                       ; $51C8: $52
    rst RST_38                                    ; $51C9: $FF
    rst RST_38                                    ; $51CA: $FF
    ld h, $52                                     ; $51CB: $26 $52
    rst RST_38                                    ; $51CD: $FF
    rst RST_38                                    ; $51CE: $FF
    dec a                                         ; $51CF: $3D
    ld d, d                                       ; $51D0: $52
    rst RST_38                                    ; $51D1: $FF
    rst RST_38                                    ; $51D2: $FF
    ld d, h                                       ; $51D3: $54
    ld d, d                                       ; $51D4: $52
    rst RST_38                                    ; $51D5: $FF
    rst RST_38                                    ; $51D6: $FF
    ld l, e                                       ; $51D7: $6B
    ld d, d                                       ; $51D8: $52
    rst RST_38                                    ; $51D9: $FF
    rst RST_38                                    ; $51DA: $FF
    add d                                         ; $51DB: $82
    ld d, d                                       ; $51DC: $52
    rst RST_38                                    ; $51DD: $FF
    rst RST_38                                    ; $51DE: $FF
    rst RST_38                                    ; $51DF: $FF
    rst RST_38                                    ; $51E0: $FF
    sub b                                         ; $51E1: $90
    nop                                           ; $51E2: $00
    nop                                           ; $51E3: $00
    rst RST_38                                    ; $51E4: $FF
    rst RST_38                                    ; $51E5: $FF
    rst RST_38                                    ; $51E6: $FF
    db $EB                                        ; $51E7: $EB
    ld d, c                                       ; $51E8: $51
    nop                                           ; $51E9: $00
    nop                                           ; $51EA: $00
    inc b                                         ; $51EB: $04
    nop                                           ; $51EC: $00
    nop                                           ; $51ED: $00
    nop                                           ; $51EE: $00
    nop                                           ; $51EF: $00
    ld [$1002], sp                                ; $51F0: $08 $02 $10
    nop                                           ; $51F3: $00
    add b                                         ; $51F4: $80
    db $10                                        ; $51F5: $10
    ld [$9082], sp                                ; $51F6: $08 $82 $90
    nop                                           ; $51F9: $00
    nop                                           ; $51FA: $00
    rst RST_38                                    ; $51FB: $FF
    rst RST_38                                    ; $51FC: $FF
    rst RST_38                                    ; $51FD: $FF
    ld [bc], a                                    ; $51FE: $02
    ld d, d                                       ; $51FF: $52
    nop                                           ; $5200: $00
    nop                                           ; $5201: $00
    inc b                                         ; $5202: $04
    nop                                           ; $5203: $00
    nop                                           ; $5204: $00
    inc b                                         ; $5205: $04
    nop                                           ; $5206: $00
    ld [$1006], sp                                ; $5207: $08 $06 $10
    nop                                           ; $520A: $00
    add h                                         ; $520B: $84
    db $10                                        ; $520C: $10
    ld [$9086], sp                                ; $520D: $08 $86 $90
    nop                                           ; $5210: $00
    nop                                           ; $5211: $00
    rst RST_38                                    ; $5212: $FF
    rst RST_38                                    ; $5213: $FF
    rst RST_38                                    ; $5214: $FF
    add hl, de                                    ; $5215: $19
    ld d, d                                       ; $5216: $52
    nop                                           ; $5217: $00
    nop                                           ; $5218: $00
    inc b                                         ; $5219: $04
    nop                                           ; $521A: $00
    nop                                           ; $521B: $00
    ld [$0800], sp                                ; $521C: $08 $00 $08
    ld a, [bc]                                    ; $521F: $0A
    stop                                          ; $5220: $10 $00
    adc b                                         ; $5222: $88
    db $10                                        ; $5223: $10
    ld [$908A], sp                                ; $5224: $08 $8A $90
    nop                                           ; $5227: $00
    nop                                           ; $5228: $00
    rst RST_38                                    ; $5229: $FF
    rst RST_38                                    ; $522A: $FF
    rst RST_38                                    ; $522B: $FF
    jr nc, jr_03B_5280                            ; $522C: $30 $52

    nop                                           ; $522E: $00
    nop                                           ; $522F: $00
    inc b                                         ; $5230: $04
    nop                                           ; $5231: $00
    nop                                           ; $5232: $00
    inc c                                         ; $5233: $0C
    nop                                           ; $5234: $00
    ld [$100E], sp                                ; $5235: $08 $0E $10
    nop                                           ; $5238: $00
    adc h                                         ; $5239: $8C
    db $10                                        ; $523A: $10
    ld [$908E], sp                                ; $523B: $08 $8E $90
    nop                                           ; $523E: $00
    nop                                           ; $523F: $00
    rst RST_38                                    ; $5240: $FF
    rst RST_38                                    ; $5241: $FF
    rst RST_38                                    ; $5242: $FF
    ld b, a                                       ; $5243: $47
    ld d, d                                       ; $5244: $52
    nop                                           ; $5245: $00
    nop                                           ; $5246: $00
    inc b                                         ; $5247: $04
    nop                                           ; $5248: $00
    nop                                           ; $5249: $00
    stop                                          ; $524A: $10 $00
    ld [$1012], sp                                ; $524C: $08 $12 $10
    nop                                           ; $524F: $00
    sub b                                         ; $5250: $90
    db $10                                        ; $5251: $10
    ld [$9092], sp                                ; $5252: $08 $92 $90
    nop                                           ; $5255: $00
    nop                                           ; $5256: $00
    rst RST_38                                    ; $5257: $FF
    rst RST_38                                    ; $5258: $FF
    rst RST_38                                    ; $5259: $FF
    ld e, [hl]                                    ; $525A: $5E
    ld d, d                                       ; $525B: $52
    nop                                           ; $525C: $00
    nop                                           ; $525D: $00
    inc b                                         ; $525E: $04
    nop                                           ; $525F: $00
    nop                                           ; $5260: $00
    inc d                                         ; $5261: $14
    nop                                           ; $5262: $00
    ld [$1016], sp                                ; $5263: $08 $16 $10
    nop                                           ; $5266: $00
    sub h                                         ; $5267: $94
    db $10                                        ; $5268: $10
    ld [$9096], sp                                ; $5269: $08 $96 $90
    nop                                           ; $526C: $00
    nop                                           ; $526D: $00
    rst RST_38                                    ; $526E: $FF
    rst RST_38                                    ; $526F: $FF
    rst RST_38                                    ; $5270: $FF
    ld [hl], l                                    ; $5271: $75
    ld d, d                                       ; $5272: $52
    nop                                           ; $5273: $00
    nop                                           ; $5274: $00
    inc b                                         ; $5275: $04
    nop                                           ; $5276: $00
    nop                                           ; $5277: $00
    jr jr_03B_527A                                ; $5278: $18 $00

jr_03B_527A:
    ld [$101A], sp                                ; $527A: $08 $1A $10
    nop                                           ; $527D: $00
    sbc b                                         ; $527E: $98
    db $10                                        ; $527F: $10

jr_03B_5280:
    ld [$909A], sp                                ; $5280: $08 $9A $90
    nop                                           ; $5283: $00
    nop                                           ; $5284: $00
    rst RST_38                                    ; $5285: $FF
    rst RST_38                                    ; $5286: $FF
    rst RST_38                                    ; $5287: $FF
    adc h                                         ; $5288: $8C
    ld d, d                                       ; $5289: $52
    nop                                           ; $528A: $00
    nop                                           ; $528B: $00
    inc b                                         ; $528C: $04
    nop                                           ; $528D: $00
    nop                                           ; $528E: $00
    inc e                                         ; $528F: $1C
    nop                                           ; $5290: $00
    ld [$101E], sp                                ; $5291: $08 $1E $10
    nop                                           ; $5294: $00
    sbc h                                         ; $5295: $9C
    db $10                                        ; $5296: $10
    ld [$909E], sp                                ; $5297: $08 $9E $90
    nop                                           ; $529A: $00
    add c                                         ; $529B: $81
    add c                                         ; $529C: $81
    ld c, b                                       ; $529D: $48
    nop                                           ; $529E: $00
    ld d, b                                       ; $529F: $50
    nop                                           ; $52A0: $00
    nop                                           ; $52A1: $00
    nop                                           ; $52A2: $00
    nop                                           ; $52A3: $00
    nop                                           ; $52A4: $00
    nop                                           ; $52A5: $00
    nop                                           ; $52A6: $00
    and b                                         ; $52A7: $A0
    nop                                           ; $52A8: $00
    add b                                         ; $52A9: $80
    dec sp                                        ; $52AA: $3B
    reti                                          ; $52AB: $D9


    ld d, d                                       ; $52AC: $52
    nop                                           ; $52AD: $00
    nop                                           ; $52AE: $00
    reti                                          ; $52AF: $D9


    ld d, d                                       ; $52B0: $52
    nop                                           ; $52B1: $00
    nop                                           ; $52B2: $00
    nop                                           ; $52B3: $00
    nop                                           ; $52B4: $00
    ld bc, $C001                                  ; $52B5: $01 $01 $C0
    ret c                                         ; $52B8: $D8

    sub b                                         ; $52B9: $90
    nop                                           ; $52BA: $00
    add c                                         ; $52BB: $81
    add c                                         ; $52BC: $81
    ld c, b                                       ; $52BD: $48
    nop                                           ; $52BE: $00
    ld d, b                                       ; $52BF: $50
    nop                                           ; $52C0: $00
    nop                                           ; $52C1: $00
    nop                                           ; $52C2: $00
    nop                                           ; $52C3: $00
    nop                                           ; $52C4: $00
    nop                                           ; $52C5: $00
    nop                                           ; $52C6: $00
    and b                                         ; $52C7: $A0
    nop                                           ; $52C8: $00
    add b                                         ; $52C9: $80
    dec sp                                        ; $52CA: $3B
    cpl                                           ; $52CB: $2F
    ld d, e                                       ; $52CC: $53
    nop                                           ; $52CD: $00
    nop                                           ; $52CE: $00
    cpl                                           ; $52CF: $2F
    ld d, e                                       ; $52D0: $53
    nop                                           ; $52D1: $00
    nop                                           ; $52D2: $00
    nop                                           ; $52D3: $00
    nop                                           ; $52D4: $00
    ld bc, $C001                                  ; $52D5: $01 $01 $C0
    ret c                                         ; $52D8: $D8

    rst RST_20                                    ; $52D9: $E7
    ld d, e                                       ; $52DA: $53
    rst RST_38                                    ; $52DB: $FF
    rst RST_38                                    ; $52DC: $FF
    rst RST_20                                    ; $52DD: $E7
    ld d, e                                       ; $52DE: $53
    rst RST_38                                    ; $52DF: $FF
    rst RST_38                                    ; $52E0: $FF
    rst RST_20                                    ; $52E1: $E7
    ld d, e                                       ; $52E2: $53
    rst RST_38                                    ; $52E3: $FF
    rst RST_38                                    ; $52E4: $FF
    rst RST_20                                    ; $52E5: $E7
    ld d, e                                       ; $52E6: $53
    rst RST_38                                    ; $52E7: $FF
    rst RST_38                                    ; $52E8: $FF
    rst RST_20                                    ; $52E9: $E7
    ld d, e                                       ; $52EA: $53
    rst RST_38                                    ; $52EB: $FF
    rst RST_38                                    ; $52EC: $FF
    rst RST_20                                    ; $52ED: $E7
    ld d, e                                       ; $52EE: $53
    rst RST_38                                    ; $52EF: $FF
    rst RST_38                                    ; $52F0: $FF
    reti                                          ; $52F1: $D9


    ld d, e                                       ; $52F2: $53
    rst RST_38                                    ; $52F3: $FF
    rst RST_38                                    ; $52F4: $FF
    bit 2, e                                      ; $52F5: $CB $53
    rst RST_38                                    ; $52F7: $FF
    rst RST_38                                    ; $52F8: $FF
    cp l                                          ; $52F9: $BD
    ld d, e                                       ; $52FA: $53
    rst RST_38                                    ; $52FB: $FF
    rst RST_38                                    ; $52FC: $FF
    xor a                                         ; $52FD: $AF
    ld d, e                                       ; $52FE: $53
    rst RST_38                                    ; $52FF: $FF
    rst RST_38                                    ; $5300: $FF
    and c                                         ; $5301: $A1
    ld d, e                                       ; $5302: $53
    rst RST_38                                    ; $5303: $FF
    rst RST_38                                    ; $5304: $FF
    sub e                                         ; $5305: $93
    ld d, e                                       ; $5306: $53
    rst RST_38                                    ; $5307: $FF
    rst RST_38                                    ; $5308: $FF
    add l                                         ; $5309: $85
    ld d, e                                       ; $530A: $53
    rst RST_38                                    ; $530B: $FF
    rst RST_38                                    ; $530C: $FF
    and c                                         ; $530D: $A1
    ld d, e                                       ; $530E: $53
    rst RST_38                                    ; $530F: $FF
    rst RST_38                                    ; $5310: $FF
    and c                                         ; $5311: $A1
    ld d, e                                       ; $5312: $53
    rst RST_38                                    ; $5313: $FF
    rst RST_38                                    ; $5314: $FF
    cp l                                          ; $5315: $BD
    ld d, e                                       ; $5316: $53
    rst RST_38                                    ; $5317: $FF
    rst RST_38                                    ; $5318: $FF
    cp l                                          ; $5319: $BD
    ld d, e                                       ; $531A: $53
    rst RST_38                                    ; $531B: $FF
    rst RST_38                                    ; $531C: $FF
    reti                                          ; $531D: $D9


    ld d, e                                       ; $531E: $53
    rst RST_38                                    ; $531F: $FF
    rst RST_38                                    ; $5320: $FF
    reti                                          ; $5321: $D9


    ld d, e                                       ; $5322: $53
    rst RST_38                                    ; $5323: $FF
    rst RST_38                                    ; $5324: $FF
    rst RST_20                                    ; $5325: $E7
    ld d, e                                       ; $5326: $53
    rst RST_38                                    ; $5327: $FF
    rst RST_38                                    ; $5328: $FF
    rst RST_20                                    ; $5329: $E7
    ld d, e                                       ; $532A: $53
    rst RST_38                                    ; $532B: $FF
    rst RST_38                                    ; $532C: $FF
    rst RST_38                                    ; $532D: $FF
    rst RST_38                                    ; $532E: $FF
    rst RST_20                                    ; $532F: $E7
    ld d, e                                       ; $5330: $53
    rst RST_38                                    ; $5331: $FF
    rst RST_38                                    ; $5332: $FF
    rst RST_20                                    ; $5333: $E7
    ld d, e                                       ; $5334: $53
    rst RST_38                                    ; $5335: $FF
    rst RST_38                                    ; $5336: $FF
    rst RST_20                                    ; $5337: $E7
    ld d, e                                       ; $5338: $53
    rst RST_38                                    ; $5339: $FF
    rst RST_38                                    ; $533A: $FF
    rst RST_20                                    ; $533B: $E7
    ld d, e                                       ; $533C: $53
    rst RST_38                                    ; $533D: $FF
    rst RST_38                                    ; $533E: $FF
    rst RST_20                                    ; $533F: $E7
    ld d, e                                       ; $5340: $53
    rst RST_38                                    ; $5341: $FF
    rst RST_38                                    ; $5342: $FF
    rst RST_20                                    ; $5343: $E7
    ld d, e                                       ; $5344: $53
    rst RST_38                                    ; $5345: $FF
    rst RST_38                                    ; $5346: $FF
    reti                                          ; $5347: $D9


    ld d, e                                       ; $5348: $53
    rst RST_38                                    ; $5349: $FF
    rst RST_38                                    ; $534A: $FF
    bit 2, e                                      ; $534B: $CB $53
    rst RST_38                                    ; $534D: $FF
    rst RST_38                                    ; $534E: $FF
    cp l                                          ; $534F: $BD
    ld d, e                                       ; $5350: $53
    rst RST_38                                    ; $5351: $FF
    rst RST_38                                    ; $5352: $FF
    xor a                                         ; $5353: $AF
    ld d, e                                       ; $5354: $53
    rst RST_38                                    ; $5355: $FF
    rst RST_38                                    ; $5356: $FF
    and c                                         ; $5357: $A1
    ld d, e                                       ; $5358: $53
    rst RST_38                                    ; $5359: $FF
    rst RST_38                                    ; $535A: $FF
    sub e                                         ; $535B: $93
    ld d, e                                       ; $535C: $53
    rst RST_38                                    ; $535D: $FF
    rst RST_38                                    ; $535E: $FF
    add l                                         ; $535F: $85
    ld d, e                                       ; $5360: $53
    rst RST_38                                    ; $5361: $FF
    rst RST_38                                    ; $5362: $FF
    sub e                                         ; $5363: $93
    ld d, e                                       ; $5364: $53
    rst RST_38                                    ; $5365: $FF
    rst RST_38                                    ; $5366: $FF
    sub e                                         ; $5367: $93
    ld d, e                                       ; $5368: $53
    rst RST_38                                    ; $5369: $FF
    rst RST_38                                    ; $536A: $FF
    xor a                                         ; $536B: $AF
    ld d, e                                       ; $536C: $53
    rst RST_38                                    ; $536D: $FF
    rst RST_38                                    ; $536E: $FF
    xor a                                         ; $536F: $AF
    ld d, e                                       ; $5370: $53
    rst RST_38                                    ; $5371: $FF
    rst RST_38                                    ; $5372: $FF
    bit 2, e                                      ; $5373: $CB $53
    rst RST_38                                    ; $5375: $FF
    rst RST_38                                    ; $5376: $FF
    bit 2, e                                      ; $5377: $CB $53
    rst RST_38                                    ; $5379: $FF
    rst RST_38                                    ; $537A: $FF
    rst RST_20                                    ; $537B: $E7
    ld d, e                                       ; $537C: $53
    rst RST_38                                    ; $537D: $FF
    rst RST_38                                    ; $537E: $FF
    rst RST_20                                    ; $537F: $E7
    ld d, e                                       ; $5380: $53
    rst RST_38                                    ; $5381: $FF
    rst RST_38                                    ; $5382: $FF
    rst RST_38                                    ; $5383: $FF
    rst RST_38                                    ; $5384: $FF
    sub b                                         ; $5385: $90
    nop                                           ; $5386: $00
    nop                                           ; $5387: $00
    rst RST_38                                    ; $5388: $FF
    rst RST_38                                    ; $5389: $FF
    rst RST_38                                    ; $538A: $FF
    adc a                                         ; $538B: $8F
    ld d, e                                       ; $538C: $53
    nop                                           ; $538D: $00
    nop                                           ; $538E: $00
    ld bc, $0410                                  ; $538F: $01 $10 $04
    nop                                           ; $5392: $00
    sub b                                         ; $5393: $90
    nop                                           ; $5394: $00
    nop                                           ; $5395: $00
    rst RST_38                                    ; $5396: $FF
    rst RST_38                                    ; $5397: $FF
    rst RST_38                                    ; $5398: $FF
    sbc l                                         ; $5399: $9D
    ld d, e                                       ; $539A: $53
    nop                                           ; $539B: $00
    nop                                           ; $539C: $00
    ld bc, $0410                                  ; $539D: $01 $10 $04
    ld [bc], a                                    ; $53A0: $02
    sub b                                         ; $53A1: $90
    nop                                           ; $53A2: $00
    nop                                           ; $53A3: $00
    rst RST_38                                    ; $53A4: $FF
    rst RST_38                                    ; $53A5: $FF
    rst RST_38                                    ; $53A6: $FF
    xor e                                         ; $53A7: $AB
    ld d, e                                       ; $53A8: $53
    nop                                           ; $53A9: $00
    nop                                           ; $53AA: $00
    ld bc, $0410                                  ; $53AB: $01 $10 $04
    inc b                                         ; $53AE: $04
    sub b                                         ; $53AF: $90
    nop                                           ; $53B0: $00
    nop                                           ; $53B1: $00
    rst RST_38                                    ; $53B2: $FF
    rst RST_38                                    ; $53B3: $FF
    rst RST_38                                    ; $53B4: $FF
    cp c                                          ; $53B5: $B9
    ld d, e                                       ; $53B6: $53
    nop                                           ; $53B7: $00
    nop                                           ; $53B8: $00
    ld bc, $0410                                  ; $53B9: $01 $10 $04
    ld b, $90                                     ; $53BC: $06 $90
    nop                                           ; $53BE: $00
    nop                                           ; $53BF: $00
    rst RST_38                                    ; $53C0: $FF
    rst RST_38                                    ; $53C1: $FF
    rst RST_38                                    ; $53C2: $FF
    rst RST_00                                    ; $53C3: $C7
    ld d, e                                       ; $53C4: $53
    nop                                           ; $53C5: $00
    nop                                           ; $53C6: $00
    ld bc, $0410                                  ; $53C7: $01 $10 $04
    ld [$0090], sp                                ; $53CA: $08 $90 $00
    nop                                           ; $53CD: $00
    rst RST_38                                    ; $53CE: $FF
    rst RST_38                                    ; $53CF: $FF
    rst RST_38                                    ; $53D0: $FF
    push de                                       ; $53D1: $D5
    ld d, e                                       ; $53D2: $53
    nop                                           ; $53D3: $00
    nop                                           ; $53D4: $00
    ld bc, $0410                                  ; $53D5: $01 $10 $04
    ld a, [bc]                                    ; $53D8: $0A
    sub b                                         ; $53D9: $90
    nop                                           ; $53DA: $00
    nop                                           ; $53DB: $00
    rst RST_38                                    ; $53DC: $FF
    rst RST_38                                    ; $53DD: $FF
    rst RST_38                                    ; $53DE: $FF
    db $E3                                        ; $53DF: $E3
    ld d, e                                       ; $53E0: $53
    nop                                           ; $53E1: $00
    nop                                           ; $53E2: $00
    ld bc, $0410                                  ; $53E3: $01 $10 $04
    inc c                                         ; $53E6: $0C
    sub b                                         ; $53E7: $90
    nop                                           ; $53E8: $00
    nop                                           ; $53E9: $00
    rst RST_38                                    ; $53EA: $FF
    rst RST_38                                    ; $53EB: $FF
    rst RST_38                                    ; $53EC: $FF
    pop af                                        ; $53ED: $F1
    ld d, e                                       ; $53EE: $53
    nop                                           ; $53EF: $00
    nop                                           ; $53F0: $00
    ld bc, $0410                                  ; $53F1: $01 $10 $04
    ld c, $31                                     ; $53F4: $0E $31
    nop                                           ; $53F6: $00
    db $DD                                        ; $53F7: $DD
    di                                            ; $53F8: $F3
    rst RST_10                                    ; $53F9: $D7
    ld hl, $C03A                                  ; $53FA: $21 $3A $C0
    res 1, [hl]                                   ; $53FD: $CB $8E
    set 2, [hl]                                   ; $53FF: $CB $D6
    ld a, $FF                                     ; $5401: $3E $FF
    ldh [rBGP], a                                 ; $5403: $E0 $47
    ldh [rOBP0], a                                ; $5405: $E0 $48
    ldh [rOBP1], a                                ; $5407: $E0 $49
    ldh [$FFEA], a                                ; $5409: $E0 $EA
    ldh [$FFEB], a                                ; $540B: $E0 $EB
    ldh [$FFEC], a                                ; $540D: $E0 $EC
    call Call_000_13ED                            ; $540F: $CD $ED $13
    ld a, [$C311]                                 ; $5412: $FA $11 $C3
    add a                                         ; $5415: $87
    ld hl, $518B                                  ; $5416: $21 $8B $51
    ld e, a                                       ; $5419: $5F
    ld d, $00                                     ; $541A: $16 $00
    add hl, de                                    ; $541C: $19
    ld e, [hl]                                    ; $541D: $5E
    inc hl                                        ; $541E: $23
    ld d, [hl]                                    ; $541F: $56
    call Call_000_14C0                            ; $5420: $CD $C0 $14
    xor a                                         ; $5423: $AF
    ld [$C2AA], a                                 ; $5424: $EA $AA $C2
    ld [$C2AC], a                                 ; $5427: $EA $AC $C2
    ldh [$FFE2], a                                ; $542A: $E0 $E2
    ldh [$FFE4], a                                ; $542C: $E0 $E4
    ld a, [$C311]                                 ; $542E: $FA $11 $C3
    add a                                         ; $5431: $87
    ld hl, $5583                                  ; $5432: $21 $83 $55
    ld e, a                                       ; $5435: $5F
    ld d, $00                                     ; $5436: $16 $00
    add hl, de                                    ; $5438: $19
    ld a, [hl+]                                   ; $5439: $2A
    ld d, [hl]                                    ; $543A: $56
    ld l, a                                       ; $543B: $6F
    ld h, d                                       ; $543C: $62
    ld b, $2A                                     ; $543D: $06 $2A
    ld de, $C349                                  ; $543F: $11 $49 $C3
    rst RST_20                                    ; $5442: $E7
    xor a                                         ; $5443: $AF
    ld hl, $C339                                  ; $5444: $21 $39 $C3
    ld c, $10                                     ; $5447: $0E $10

jr_03B_5449:
    ld [hl+], a                                   ; $5449: $22
    dec c                                         ; $544A: $0D
    jr nz, jr_03B_5449                            ; $544B: $20 $FC

    ld hl, $C339                                  ; $544D: $21 $39 $C3
    ld de, $9100                                  ; $5450: $11 $00 $91
    ld b, $32                                     ; $5453: $06 $32
    call Call_000_1188                            ; $5455: $CD $88 $11
    ld e, $00                                     ; $5458: $1E $00
    ld d, $10                                     ; $545A: $16 $10
    ld hl, $9800                                  ; $545C: $21 $00 $98
    ld b, $14                                     ; $545F: $06 $14
    ld c, $20                                     ; $5461: $0E $20
    call Call_000_10EA                            ; $5463: $CD $EA $10
    ld e, $00                                     ; $5466: $1E $00
    ld d, $10                                     ; $5468: $16 $10
    ld hl, $9C00                                  ; $546A: $21 $00 $9C
    ld b, $14                                     ; $546D: $06 $14
    ld c, $20                                     ; $546F: $0E $20
    call Call_000_10EA                            ; $5471: $CD $EA $10
    ld a, [$C311]                                 ; $5474: $FA $11 $C3
    add a                                         ; $5477: $87
    ld hl, $5597                                  ; $5478: $21 $97 $55
    ld e, a                                       ; $547B: $5F
    ld d, $00                                     ; $547C: $16 $00
    add hl, de                                    ; $547E: $19
    ld e, [hl]                                    ; $547F: $5E
    inc hl                                        ; $5480: $23
    ld d, [hl]                                    ; $5481: $56
    ld hl, $9C46                                  ; $5482: $21 $46 $9C
    ld b, $07                                     ; $5485: $06 $07
    ld c, $07                                     ; $5487: $0E $07
    ld a, $11                                     ; $5489: $3E $11
    call Call_000_0FF7                            ; $548B: $CD $F7 $0F
    call Call_000_0F9E                            ; $548E: $CD $9E $0F
    ld a, $01                                     ; $5491: $3E $01
    ld [$C2B5], a                                 ; $5493: $EA $B5 $C2
    ld a, $87                                     ; $5496: $3E $87
    ld [$C2B6], a                                 ; $5498: $EA $B6 $C2
    ld a, $54                                     ; $549B: $3E $54
    ld [$C2B9], a                                 ; $549D: $EA $B9 $C2
    ld a, $86                                     ; $54A0: $3E $86
    ld [$C2BA], a                                 ; $54A2: $EA $BA $C2
    ld a, $87                                     ; $54A5: $3E $87
    rst RST_18                                    ; $54A7: $DF
    ldh a, [rSTAT]                                ; $54A8: $F0 $41
    or $40                                        ; $54AA: $F6 $40
    ldh [rSTAT], a                                ; $54AC: $E0 $41
    ld a, $17                                     ; $54AE: $3E $17
    ld a, $8F                                     ; $54B0: $3E $8F
    ldh [rLYC], a                                 ; $54B2: $E0 $45
    ldh a, [rIE]                                  ; $54B4: $F0 $FF
    or $03                                        ; $54B6: $F6 $03
    ldh [rIE], a                                  ; $54B8: $E0 $FF
    ei                                            ; $54BA: $FB
    ld de, $5537                                  ; $54BB: $11 $37 $55
    ld hl, $C329                                  ; $54BE: $21 $29 $C3
    ld c, $24                                     ; $54C1: $0E $24

jr_03B_54C3:
    ld a, [de]                                    ; $54C3: $1A
    inc de                                        ; $54C4: $13
    ld [hl+], a                                   ; $54C5: $22
    dec c                                         ; $54C6: $0D
    jr nz, jr_03B_54C3                            ; $54C7: $20 $FA

    ld hl, $555B                                  ; $54C9: $21 $5B $55
    ld a, [$C006]                                 ; $54CC: $FA $06 $C0
    or a                                          ; $54CF: $B7
    jr z, jr_03B_54D5                             ; $54D0: $28 $03

    ld hl, $556F                                  ; $54D2: $21 $6F $55

jr_03B_54D5:
    ld a, [$C311]                                 ; $54D5: $FA $11 $C3
    add a                                         ; $54D8: $87
    ld e, a                                       ; $54D9: $5F
    ld d, $00                                     ; $54DA: $16 $00
    add hl, de                                    ; $54DC: $19
    ld a, [hl+]                                   ; $54DD: $2A
    ld [$C32B], a                                 ; $54DE: $EA $2B $C3
    ld a, [hl+]                                   ; $54E1: $2A
    ld [$C32C], a                                 ; $54E2: $EA $2C $C3
    ld a, [$C33A]                                 ; $54E5: $FA $3A $C3
    ldh [$FFE2], a                                ; $54E8: $E0 $E2
    call Call_000_0424                            ; $54EA: $CD $24 $04
    ld a, $1B                                     ; $54ED: $3E $1B
    ldh [rBGP], a                                 ; $54EF: $E0 $47
    ldh [$FFEA], a                                ; $54F1: $E0 $EA
    ldh [$FFEB], a                                ; $54F3: $E0 $EB
    ldh [$FFEC], a                                ; $54F5: $E0 $EC
    ld a, $4F                                     ; $54F7: $3E $4F
    ldh [rOBP0], a                                ; $54F9: $E0 $48
    ldh [rOBP1], a                                ; $54FB: $E0 $49
    call Call_000_147A                            ; $54FD: $CD $7A $14

jr_03B_5500:
    ld b, $39                                     ; $5500: $06 $39
    ld hl, $4067                                  ; $5502: $21 $67 $40
    rst RST_08                                    ; $5505: $CF
    ld hl, $C329                                  ; $5506: $21 $29 $C3
    ld e, [hl]                                    ; $5509: $5E
    inc hl                                        ; $550A: $23
    ld d, [hl]                                    ; $550B: $56
    inc de                                        ; $550C: $13
    ld [hl], d                                    ; $550D: $72
    dec hl                                        ; $550E: $2B
    ld [hl], e                                    ; $550F: $73
    call Call_000_0424                            ; $5510: $CD $24 $04
    ld a, [$C32E]                                 ; $5513: $FA $2E $C3
    add a                                         ; $5516: $87
    jr c, jr_03B_5524                             ; $5517: $38 $0B

    ldh a, [$FF99]                                ; $5519: $F0 $99
    ld e, a                                       ; $551B: $5F
    ldh a, [$FFAC]                                ; $551C: $F0 $AC
    or e                                          ; $551E: $B3
    ld e, a                                       ; $551F: $5F
    and $80                                       ; $5520: $E6 $80
    jr z, jr_03B_5500                             ; $5522: $28 $DC

jr_03B_5524:
    ld hl, $C03A                                  ; $5524: $21 $3A $C0
    res 2, [hl]                                   ; $5527: $CB $96
    ld a, $00                                     ; $5529: $3E $00
    call Call_000_135D                            ; $552B: $CD $5D $13
    call Call_000_0424                            ; $552E: $CD $24 $04
    ld b, $3B                                     ; $5531: $06 $3B
    ld hl, $55D3                                  ; $5533: $21 $D3 $55
    rst RST_00                                    ; $5536: $C7
    nop                                           ; $5537: $00
    nop                                           ; $5538: $00
    sub e                                         ; $5539: $93
    ld d, h                                       ; $553A: $54
    nop                                           ; $553B: $00
    nop                                           ; $553C: $00
    ld e, c                                       ; $553D: $59
    jp $C379                                      ; $553E: $C3 $79 $C3


    ld a, c                                       ; $5541: $79
    push bc                                       ; $5542: $C5
    ld b, c                                       ; $5543: $41
    ld bc, $8800                                  ; $5544: $01 $00 $88
    nop                                           ; $5547: $00
    ld sp, hl                                     ; $5548: $F9
    nop                                           ; $5549: $00
    nop                                           ; $554A: $00
    nop                                           ; $554B: $00
    ld a, c                                       ; $554C: $79
    push bc                                       ; $554D: $C5
    nop                                           ; $554E: $00
    ld b, c                                       ; $554F: $41
    ld bc, $0080                                  ; $5550: $01 $80 $00
    nop                                           ; $5553: $00
    nop                                           ; $5554: $00
    nop                                           ; $5555: $00
    nop                                           ; $5556: $00
    nop                                           ; $5557: $00
    nop                                           ; $5558: $00
    nop                                           ; $5559: $00
    nop                                           ; $555A: $00
    ld e, h                                       ; $555B: $5C
    ld d, h                                       ; $555C: $54
    rst RST_00                                    ; $555D: $C7
    ld d, h                                       ; $555E: $54
    add hl, hl                                    ; $555F: $29
    ld d, l                                       ; $5560: $55
    sbc l                                         ; $5561: $9D
    ld d, l                                       ; $5562: $55
    ld [bc], a                                    ; $5563: $02
    ld d, [hl]                                    ; $5564: $56
    ld l, d                                       ; $5565: $6A
    ld d, [hl]                                    ; $5566: $56
    call z, Call_000_3D56                         ; $5567: $CC $56 $3D
    ld d, a                                       ; $556A: $57
    or c                                          ; $556B: $B1
    ld d, a                                       ; $556C: $57
    ld sp, $9358                                  ; $556D: $31 $58 $93
    ld d, h                                       ; $5570: $54
    ld hl, sp+$54                                 ; $5571: $F8 $54
    ld l, c                                       ; $5573: $69
    ld d, l                                       ; $5574: $55
    pop de                                        ; $5575: $D1
    ld d, l                                       ; $5576: $55
    ld [hl], $56                                  ; $5577: $36 $56
    sbc e                                         ; $5579: $9B
    ld d, [hl]                                    ; $557A: $56
    add hl, bc                                    ; $557B: $09
    ld d, a                                       ; $557C: $57
    ld a, l                                       ; $557D: $7D
    ld d, a                                       ; $557E: $57
    pop af                                        ; $557F: $F1
    ld d, a                                       ; $5580: $57
    ld l, [hl]                                    ; $5581: $6E
    ld e, b                                       ; $5582: $58
    di                                            ; $5583: $F3
    ld c, [hl]                                    ; $5584: $4E
    cp e                                          ; $5585: $BB
    ld d, c                                       ; $5586: $51
    adc c                                         ; $5587: $89
    ld d, h                                       ; $5588: $54
    ld a, c                                       ; $5589: $79
    ld d, a                                       ; $558A: $57
    inc de                                        ; $558B: $13
    ld e, d                                       ; $558C: $5A
    adc c                                         ; $558D: $89
    ld e, h                                       ; $558E: $5C
    adc a                                         ; $558F: $8F
    ld e, a                                       ; $5590: $5F
    add hl, sp                                    ; $5591: $39
    ld h, d                                       ; $5592: $62
    rrca                                          ; $5593: $0F
    ld h, l                                       ; $5594: $65
    jp hl                                         ; $5595: $E9


    ld h, a                                       ; $5596: $67
    rst RST_10                                    ; $5597: $D7
    ld b, [hl]                                    ; $5598: $46
    add hl, sp                                    ; $5599: $39
    ld b, a                                       ; $559A: $47
    sbc e                                         ; $559B: $9B
    ld b, a                                       ; $559C: $47
    db $FD                                        ; $559D: $FD
    ld b, a                                       ; $559E: $47
    ld e, a                                       ; $559F: $5F
    ld c, b                                       ; $55A0: $48
    pop bc                                        ; $55A1: $C1
    ld c, b                                       ; $55A2: $48
    inc hl                                        ; $55A3: $23
    ld c, c                                       ; $55A4: $49
    add l                                         ; $55A5: $85
    ld c, c                                       ; $55A6: $49
    rst RST_20                                    ; $55A7: $E7
    ld c, c                                       ; $55A8: $49
    ld c, c                                       ; $55A9: $49
    ld c, d                                       ; $55AA: $4A
    ld h, a                                       ; $55AB: $67
    ld c, [hl]                                    ; $55AC: $4E
    ld [hl-], a                                   ; $55AD: $32
    ld d, c                                       ; $55AE: $51
    cp a                                          ; $55AF: $BF
    ld d, e                                       ; $55B0: $53
    push af                                       ; $55B1: $F5
    ld d, l                                       ; $55B2: $55
    call nz, $4757                                ; $55B3: $C4 $57 $47
    ld e, d                                       ; $55B6: $5A
    add hl, hl                                    ; $55B7: $29
    ld e, l                                       ; $55B8: $5D
    pop bc                                        ; $55B9: $C1
    ld e, a                                       ; $55BA: $5F
    ld l, b                                       ; $55BB: $68
    ld h, d                                       ; $55BC: $62
    push de                                       ; $55BD: $D5
    ld h, h                                       ; $55BE: $64
    xor e                                         ; $55BF: $AB
    ld c, d                                       ; $55C0: $4A
    dec c                                         ; $55C1: $0D
    ld c, e                                       ; $55C2: $4B
    ld l, a                                       ; $55C3: $6F
    ld c, e                                       ; $55C4: $4B
    pop de                                        ; $55C5: $D1
    ld c, e                                       ; $55C6: $4B
    inc sp                                        ; $55C7: $33
    ld c, h                                       ; $55C8: $4C
    sub l                                         ; $55C9: $95
    ld c, h                                       ; $55CA: $4C
    rst RST_30                                    ; $55CB: $F7
    ld c, h                                       ; $55CC: $4C
    ld e, c                                       ; $55CD: $59
    ld c, l                                       ; $55CE: $4D
    cp e                                          ; $55CF: $BB
    ld c, l                                       ; $55D0: $4D
    dec e                                         ; $55D1: $1D
    ld c, [hl]                                    ; $55D2: $4E
    ld sp, $DD00                                  ; $55D3: $31 $00 $DD
    di                                            ; $55D6: $F3
    rst RST_10                                    ; $55D7: $D7
    ld hl, $C03A                                  ; $55D8: $21 $3A $C0
    res 1, [hl]                                   ; $55DB: $CB $8E
    set 2, [hl]                                   ; $55DD: $CB $D6
    xor a                                         ; $55DF: $AF
    ldh [rBGP], a                                 ; $55E0: $E0 $47
    ldh [rOBP0], a                                ; $55E2: $E0 $48
    ldh [rOBP1], a                                ; $55E4: $E0 $49
    call Call_000_13ED                            ; $55E6: $CD $ED $13
    ld de, $0007                                  ; $55E9: $11 $07 $00
    call Call_000_14C0                            ; $55EC: $CD $C0 $14
    xor a                                         ; $55EF: $AF
    ldh [$FFE4], a                                ; $55F0: $E0 $E4
    ld [$C2AA], a                                 ; $55F2: $EA $AA $C2
    ld [$C2AC], a                                 ; $55F5: $EA $AC $C2
    ldh [$FFE2], a                                ; $55F8: $E0 $E2
    ld hl, $4000                                  ; $55FA: $21 $00 $40
    ld b, $31                                     ; $55FD: $06 $31
    ld de, $C339                                  ; $55FF: $11 $39 $C3
    rst RST_20                                    ; $5602: $E7
    ld hl, $C339                                  ; $5603: $21 $39 $C3
    ld de, $8000                                  ; $5606: $11 $00 $80
    ld b, $10                                     ; $5609: $06 $10
    call Call_000_1188                            ; $560B: $CD $88 $11
    ld hl, $407B                                  ; $560E: $21 $7B $40
    ld b, $31                                     ; $5611: $06 $31
    ld de, $C339                                  ; $5613: $11 $39 $C3
    rst RST_20                                    ; $5616: $E7
    ld hl, $C339                                  ; $5617: $21 $39 $C3
    ld de, $9100                                  ; $561A: $11 $00 $91
    ld b, $50                                     ; $561D: $06 $50
    call Call_000_1188                            ; $561F: $CD $88 $11
    ld hl, $4449                                  ; $5622: $21 $49 $44
    ld b, $31                                     ; $5625: $06 $31
    ld de, $C339                                  ; $5627: $11 $39 $C3
    rst RST_20                                    ; $562A: $E7
    ld de, $C339                                  ; $562B: $11 $39 $C3
    ld hl, $9C00                                  ; $562E: $21 $00 $9C
    ld b, $14                                     ; $5631: $06 $14
    ld c, $12                                     ; $5633: $0E $12
    call Call_000_10C0                            ; $5635: $CD $C0 $10
    ld e, $00                                     ; $5638: $1E $00
    ld d, $10                                     ; $563A: $16 $10
    ld hl, $9800                                  ; $563C: $21 $00 $98
    ld b, $14                                     ; $563F: $06 $14
    ld c, $20                                     ; $5641: $0E $20
    call Call_000_10EA                            ; $5643: $CD $EA $10
    call Call_000_0F9E                            ; $5646: $CD $9E $0F
    ld hl, $D6C0                                  ; $5649: $21 $C0 $D6
    ld de, $24EF                                  ; $564C: $11 $EF $24
    call Call_000_0F8E                            ; $564F: $CD $8E $0F
    ld a, [$C311]                                 ; $5652: $FA $11 $C3
    ld c, a                                       ; $5655: $4F
    add a                                         ; $5656: $87
    add c                                         ; $5657: $81
    ld hl, $57FE                                  ; $5658: $21 $FE $57
    ld e, a                                       ; $565B: $5F
    ld d, $00                                     ; $565C: $16 $00
    add hl, de                                    ; $565E: $19
    ld a, [hl+]                                   ; $565F: $2A
    ld e, [hl]                                    ; $5660: $5E
    inc hl                                        ; $5661: $23
    ld d, [hl]                                    ; $5662: $56
    ld hl, $D6D1                                  ; $5663: $21 $D1 $D6
    ld [hl+], a                                   ; $5666: $22
    ld [hl], e                                    ; $5667: $73
    inc hl                                        ; $5668: $23
    ld [hl], d                                    ; $5669: $72
    ld hl, $D6C2                                  ; $566A: $21 $C2 $D6
    ld [hl], $30                                  ; $566D: $36 $30
    ld hl, $D6C4                                  ; $566F: $21 $C4 $D6
    ld [hl], $20                                  ; $5672: $36 $20
    ld hl, $D6C6                                  ; $5674: $21 $C6 $D6
    ld [hl], $10                                  ; $5677: $36 $10
    ld hl, $D6E9                                  ; $5679: $21 $E9 $D6
    ld [hl], $FF                                  ; $567C: $36 $FF
    ld hl, $D6C0                                  ; $567E: $21 $C0 $D6
    call Call_000_0DB5                            ; $5681: $CD $B5 $0D
    ld hl, $D680                                  ; $5684: $21 $80 $D6
    ld de, $5844                                  ; $5687: $11 $44 $58
    call Call_000_0F8E                            ; $568A: $CD $8E $0F
    ld a, $01                                     ; $568D: $3E $01
    ld [$C2B5], a                                 ; $568F: $EA $B5 $C2
    ld a, $87                                     ; $5692: $3E $87
    ld [$C2B6], a                                 ; $5694: $EA $B6 $C2
    ld a, $5C                                     ; $5697: $3E $5C
    ld [$C2B9], a                                 ; $5699: $EA $B9 $C2
    ld a, $86                                     ; $569C: $3E $86
    ld [$C2BA], a                                 ; $569E: $EA $BA $C2
    ld a, $87                                     ; $56A1: $3E $87
    rst RST_18                                    ; $56A3: $DF
    ldh a, [rSTAT]                                ; $56A4: $F0 $41
    or $40                                        ; $56A6: $F6 $40
    ldh [rSTAT], a                                ; $56A8: $E0 $41
    ld a, $17                                     ; $56AA: $3E $17
    ld a, $8F                                     ; $56AC: $3E $8F
    ldh [rLYC], a                                 ; $56AE: $E0 $45
    ldh a, [rIE]                                  ; $56B0: $F0 $FF
    or $03                                        ; $56B2: $F6 $03
    ldh [rIE], a                                  ; $56B4: $E0 $FF
    ei                                            ; $56B6: $FB
    ld de, $57C6                                  ; $56B7: $11 $C6 $57
    ld hl, $C329                                  ; $56BA: $21 $29 $C3
    ld c, $30                                     ; $56BD: $0E $30

jr_03B_56BF:
    ld a, [de]                                    ; $56BF: $1A
    inc de                                        ; $56C0: $13
    ld [hl+], a                                   ; $56C1: $22
    dec c                                         ; $56C2: $0D
    jr nz, jr_03B_56BF                            ; $56C3: $20 $FA

    ld a, $91                                     ; $56C5: $3E $91
    call Call_000_135D                            ; $56C7: $CD $5D $13
    call Call_000_0430                            ; $56CA: $CD $30 $04
    call Call_000_0430                            ; $56CD: $CD $30 $04
    ld hl, $581C                                  ; $56D0: $21 $1C $58
    ld a, [$C006]                                 ; $56D3: $FA $06 $C0
    or a                                          ; $56D6: $B7
    jr z, jr_03B_56DC                             ; $56D7: $28 $03

    ld hl, $5830                                  ; $56D9: $21 $30 $58

jr_03B_56DC:
    ld a, [$C311]                                 ; $56DC: $FA $11 $C3
    add a                                         ; $56DF: $87
    ld e, a                                       ; $56E0: $5F
    ld d, $00                                     ; $56E1: $16 $00
    add hl, de                                    ; $56E3: $19
    ld a, [hl+]                                   ; $56E4: $2A
    ld [$C32B], a                                 ; $56E5: $EA $2B $C3
    ld a, [hl+]                                   ; $56E8: $2A
    ld [$C32C], a                                 ; $56E9: $EA $2C $C3
    ld a, [$C33A]                                 ; $56EC: $FA $3A $C3
    ldh [$FFE2], a                                ; $56EF: $E0 $E2
    ld a, $1B                                     ; $56F1: $3E $1B
    ldh [rBGP], a                                 ; $56F3: $E0 $47
    ldh [rOBP0], a                                ; $56F5: $E0 $48
    ld a, $4F                                     ; $56F7: $3E $4F
    ldh [rOBP1], a                                ; $56F9: $E0 $49
    call Call_000_147A                            ; $56FB: $CD $7A $14

jr_03B_56FE:
    call Call_03B_5740                            ; $56FE: $CD $40 $57
    call Call_03B_575E                            ; $5701: $CD $5E $57
    ld hl, $D6C0                                  ; $5704: $21 $C0 $D6
    call Call_000_0E28                            ; $5707: $CD $28 $0E
    ld b, $37                                     ; $570A: $06 $37
    ld hl, $4000                                  ; $570C: $21 $00 $40
    rst RST_08                                    ; $570F: $CF
    ld hl, $C329                                  ; $5710: $21 $29 $C3
    ld e, [hl]                                    ; $5713: $5E
    inc hl                                        ; $5714: $23
    ld d, [hl]                                    ; $5715: $56
    inc de                                        ; $5716: $13
    ld [hl], d                                    ; $5717: $72
    dec hl                                        ; $5718: $2B
    ld [hl], e                                    ; $5719: $73
    call Call_000_0424                            ; $571A: $CD $24 $04
    ld a, [$C32E]                                 ; $571D: $FA $2E $C3
    add a                                         ; $5720: $87
    jr c, jr_03B_572D                             ; $5721: $38 $0A

    ldh a, [$FF99]                                ; $5723: $F0 $99
    ld e, a                                       ; $5725: $5F
    ldh a, [$FFAC]                                ; $5726: $F0 $AC
    or e                                          ; $5728: $B3
    and $80                                       ; $5729: $E6 $80
    jr z, jr_03B_56FE                             ; $572B: $28 $D1

jr_03B_572D:
    ld hl, $C03A                                  ; $572D: $21 $3A $C0
    res 2, [hl]                                   ; $5730: $CB $96
    ld a, $00                                     ; $5732: $3E $00
    call Call_000_135D                            ; $5734: $CD $5D $13
    call Call_000_0424                            ; $5737: $CD $24 $04
    ld b, $37                                     ; $573A: $06 $37
    ld hl, $7383                                  ; $573C: $21 $83 $73
    rst RST_00                                    ; $573F: $C7

Call_03B_5740:
    ld a, [$C329]                                 ; $5740: $FA $29 $C3
    ld c, a                                       ; $5743: $4F
    and $07                                       ; $5744: $E6 $07
    ret nz                                        ; $5746: $C0

    ld a, c                                       ; $5747: $79
    srl a                                         ; $5748: $CB $3F
    srl a                                         ; $574A: $CB $3F
    srl a                                         ; $574C: $CB $3F
    and $0F                                       ; $574E: $E6 $0F
    add a                                         ; $5750: $87
    ld de, $57F6                                  ; $5751: $11 $F6 $57
    ld hl, $9C8D                                  ; $5754: $21 $8D $9C
    ld b, $02                                     ; $5757: $06 $02
    ld c, $02                                     ; $5759: $0E $02
    jp Jump_000_0FF7                              ; $575B: $C3 $F7 $0F


Call_03B_575E:
    ld a, [$C329]                                 ; $575E: $FA $29 $C3
    and $7F                                       ; $5761: $E6 $7F
    jr nz, jr_03B_577D                            ; $5763: $20 $18

    ld hl, $C34F                                  ; $5765: $21 $4F $C3
    ld a, [hl]                                    ; $5768: $7E
    xor $FF                                       ; $5769: $EE $FF
    inc a                                         ; $576B: $3C
    ld [hl+], a                                   ; $576C: $22
    ld a, [hl]                                    ; $576D: $7E
    xor $FF                                       ; $576E: $EE $FF
    ld [hl], a                                    ; $5770: $77
    ld hl, $C355                                  ; $5771: $21 $55 $C3
    ld a, [hl]                                    ; $5774: $7E
    xor $FF                                       ; $5775: $EE $FF
    inc a                                         ; $5777: $3C
    ld [hl+], a                                   ; $5778: $22
    ld a, [hl]                                    ; $5779: $7E
    xor $FF                                       ; $577A: $EE $FF
    ld [hl], a                                    ; $577C: $77

jr_03B_577D:
    ld hl, $C350                                  ; $577D: $21 $50 $C3
    call Call_03B_57A6                            ; $5780: $CD $A6 $57
    ld hl, $C356                                  ; $5783: $21 $56 $C3
    call Call_03B_57A6                            ; $5786: $CD $A6 $57
    ld a, [$C34C]                                 ; $5789: $FA $4C $C3
    ld [$D684], a                                 ; $578C: $EA $84 $D6
    ld a, [$C352]                                 ; $578F: $FA $52 $C3
    ld [$D686], a                                 ; $5792: $EA $86 $D6
    ld a, [$C34E]                                 ; $5795: $FA $4E $C3
    and $80                                       ; $5798: $E6 $80
    or $02                                        ; $579A: $F6 $02
    ld [$D682], a                                 ; $579C: $EA $82 $D6
    ld hl, $D680                                  ; $579F: $21 $80 $D6
    call Call_000_0E28                            ; $57A2: $CD $28 $0E
    ret                                           ; $57A5: $C9


Call_03B_57A6:
    push hl                                       ; $57A6: $E5
    ld a, [hl-]                                   ; $57A7: $3A
    ld d, a                                       ; $57A8: $57
    ld a, [hl-]                                   ; $57A9: $3A
    ld e, a                                       ; $57AA: $5F
    ld a, [hl-]                                   ; $57AB: $3A
    ld b, a                                       ; $57AC: $47
    ld a, [hl-]                                   ; $57AD: $3A
    ld l, a                                       ; $57AE: $6F
    ld h, b                                       ; $57AF: $60
    add hl, de                                    ; $57B0: $19
    pop bc                                        ; $57B1: $C1
    dec bc                                        ; $57B2: $0B
    dec bc                                        ; $57B3: $0B
    ld a, h                                       ; $57B4: $7C
    ld [bc], a                                    ; $57B5: $02
    dec bc                                        ; $57B6: $0B
    ld a, l                                       ; $57B7: $7D
    ld [bc], a                                    ; $57B8: $02
    dec bc                                        ; $57B9: $0B
    ld a, [bc]                                    ; $57BA: $0A
    ld d, a                                       ; $57BB: $57
    dec bc                                        ; $57BC: $0B
    ld a, [bc]                                    ; $57BD: $0A
    ld e, a                                       ; $57BE: $5F
    add hl, de                                    ; $57BF: $19
    ld a, l                                       ; $57C0: $7D
    ld [bc], a                                    ; $57C1: $02
    inc bc                                        ; $57C2: $03
    ld a, h                                       ; $57C3: $7C
    ld [bc], a                                    ; $57C4: $02
    ret                                           ; $57C5: $C9


    nop                                           ; $57C6: $00
    nop                                           ; $57C7: $00
    call c, Call_000_0043                         ; $57C8: $DC $43 $00
    nop                                           ; $57CB: $00
    ld e, c                                       ; $57CC: $59
    jp $C379                                      ; $57CD: $C3 $79 $C3


    ld a, c                                       ; $57D0: $79
    push bc                                       ; $57D1: $C5
    ld b, c                                       ; $57D2: $41
    ld [bc], a                                    ; $57D3: $02
    nop                                           ; $57D4: $00
    adc b                                         ; $57D5: $88
    nop                                           ; $57D6: $00
    rst RST_38                                    ; $57D7: $FF
    ld bc, $0004                                  ; $57D8: $01 $04 $00
    ld a, c                                       ; $57DB: $79
    push bc                                       ; $57DC: $C5
    nop                                           ; $57DD: $00
    nop                                           ; $57DE: $00
    nop                                           ; $57DF: $00
    nop                                           ; $57E0: $00
    nop                                           ; $57E1: $00
    nop                                           ; $57E2: $00
    nop                                           ; $57E3: $00
    nop                                           ; $57E4: $00
    nop                                           ; $57E5: $00
    nop                                           ; $57E6: $00
    nop                                           ; $57E7: $00
    nop                                           ; $57E8: $00
    ld l, h                                       ; $57E9: $6C
    nop                                           ; $57EA: $00
    ld bc, $0004                                  ; $57EB: $01 $04 $00
    nop                                           ; $57EE: $00
    inc [hl]                                      ; $57EF: $34
    ld b, b                                       ; $57F0: $40
    nop                                           ; $57F1: $00
    ld bc, $0000                                  ; $57F2: $01 $00 $00
    nop                                           ; $57F5: $00
    inc bc                                        ; $57F6: $03
    jr nz, jr_03B_57FC                            ; $57F7: $20 $03

    ld hl, $4003                                  ; $57F9: $21 $03 $40

jr_03B_57FC:
    inc bc                                        ; $57FC: $03
    ld b, c                                       ; $57FD: $41
    rlca                                          ; $57FE: $07
    cp [hl]                                       ; $57FF: $BE
    ld b, b                                       ; $5800: $40
    rlca                                          ; $5801: $07
    ld h, c                                       ; $5802: $61
    ld d, a                                       ; $5803: $57
    ld [$402A], sp                                ; $5804: $08 $2A $40
    ld [$5C8A], sp                                ; $5807: $08 $8A $5C
    add hl, bc                                    ; $580A: $09
    ld [hl+], a                                   ; $580B: $22
    ld b, b                                       ; $580C: $40
    add hl, bc                                    ; $580D: $09
    db $F4                                        ; $580E: $F4
    ld d, a                                       ; $580F: $57
    ld a, [bc]                                    ; $5810: $0A
    ld b, $40                                     ; $5811: $06 $40
    ld a, [bc]                                    ; $5813: $0A
    ld a, l                                       ; $5814: $7D
    ld e, d                                       ; $5815: $5A
    dec bc                                        ; $5816: $0B
    ld a, [hl+]                                   ; $5817: $2A
    ld b, b                                       ; $5818: $40
    dec bc                                        ; $5819: $0B
    db $E4                                        ; $581A: $E4
    ld e, e                                       ; $581B: $5B
    ld e, b                                       ; $581C: $58
    ld b, e                                       ; $581D: $43
    ld c, [hl]                                    ; $581E: $4E
    ld b, h                                       ; $581F: $44
    ld l, [hl]                                    ; $5820: $6E
    ld b, l                                       ; $5821: $45
    halt                                          ; $5822: $76
    ld b, [hl]                                    ; $5823: $46
    xor b                                         ; $5824: $A8
    ld b, a                                       ; $5825: $47
    jp c, $B448                                   ; $5826: $DA $48 $B4

    ld c, d                                       ; $5829: $4A
    adc $4B                                       ; $582A: $CE $4B
    call nz, $7A4C                                ; $582C: $C4 $4C $7A
    ld c, [hl]                                    ; $582F: $4E
    call c, $E743                                 ; $5830: $DC $43 $E7
    ld b, h                                       ; $5833: $44
    ldh a, [c]                                    ; $5834: $F2
    ld b, l                                       ; $5835: $45
    rrca                                          ; $5836: $0F
    ld b, a                                       ; $5837: $47
    ld d, e                                       ; $5838: $53
    ld c, b                                       ; $5839: $48
    ldh [c], a                                    ; $583A: $E2
    ld c, c                                       ; $583B: $49
    ld c, d                                       ; $583C: $4A
    ld c, e                                       ; $583D: $4B
    ld d, d                                       ; $583E: $52
    ld c, h                                       ; $583F: $4C
    sbc $4D                                       ; $5840: $DE $4D
    or $4E                                        ; $5842: $F6 $4E
    add b                                         ; $5844: $80
    nop                                           ; $5845: $00
    ld [bc], a                                    ; $5846: $02
    ld [bc], a                                    ; $5847: $02
    ld l, h                                       ; $5848: $6C
    nop                                           ; $5849: $00
    inc [hl]                                      ; $584A: $34
    nop                                           ; $584B: $00
    nop                                           ; $584C: $00
    nop                                           ; $584D: $00
    nop                                           ; $584E: $00
    nop                                           ; $584F: $00
    nop                                           ; $5850: $00
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00
    add b                                         ; $5854: $80
    dec sp                                        ; $5855: $3B
    ld h, h                                       ; $5856: $64
    ld e, b                                       ; $5857: $58
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    ld h, h                                       ; $585A: $64
    ld e, b                                       ; $585B: $58
    nop                                           ; $585C: $00
    nop                                           ; $585D: $00
    nop                                           ; $585E: $00
    nop                                           ; $585F: $00
    rlca                                          ; $5860: $07
    rlca                                          ; $5861: $07
    ret nz                                        ; $5862: $C0

    ret c                                         ; $5863: $D8

    add [hl]                                      ; $5864: $86
    ld e, b                                       ; $5865: $58
    rst RST_38                                    ; $5866: $FF
    rst RST_38                                    ; $5867: $FF
    sub h                                         ; $5868: $94
    ld e, b                                       ; $5869: $58
    rst RST_38                                    ; $586A: $FF
    rst RST_38                                    ; $586B: $FF
    and d                                         ; $586C: $A2
    ld e, b                                       ; $586D: $58
    rst RST_38                                    ; $586E: $FF
    rst RST_38                                    ; $586F: $FF
    or b                                          ; $5870: $B0
    ld e, b                                       ; $5871: $58
    rst RST_38                                    ; $5872: $FF
    rst RST_38                                    ; $5873: $FF
    cp [hl]                                       ; $5874: $BE
    ld e, b                                       ; $5875: $58
    rst RST_38                                    ; $5876: $FF
    rst RST_38                                    ; $5877: $FF
    call z, $FF58                                 ; $5878: $CC $58 $FF
    rst RST_38                                    ; $587B: $FF
    jp c, $FF58                                   ; $587C: $DA $58 $FF

    rst RST_38                                    ; $587F: $FF
    add sp, $58                                   ; $5880: $E8 $58
    rst RST_38                                    ; $5882: $FF
    rst RST_38                                    ; $5883: $FF
    rst RST_38                                    ; $5884: $FF
    rst RST_38                                    ; $5885: $FF
    sub b                                         ; $5886: $90
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    rst RST_38                                    ; $5889: $FF
    rst RST_38                                    ; $588A: $FF
    rst RST_38                                    ; $588B: $FF
    sub b                                         ; $588C: $90
    ld e, b                                       ; $588D: $58
    nop                                           ; $588E: $00
    nop                                           ; $588F: $00
    ld bc, $0000                                  ; $5890: $01 $00 $00
    nop                                           ; $5893: $00
    sub b                                         ; $5894: $90
    nop                                           ; $5895: $00
    nop                                           ; $5896: $00
    rst RST_38                                    ; $5897: $FF
    rst RST_38                                    ; $5898: $FF
    rst RST_38                                    ; $5899: $FF
    sbc [hl]                                      ; $589A: $9E
    ld e, b                                       ; $589B: $58
    nop                                           ; $589C: $00
    nop                                           ; $589D: $00
    ld bc, $0000                                  ; $589E: $01 $00 $00
    ld [bc], a                                    ; $58A1: $02
    sub b                                         ; $58A2: $90
    nop                                           ; $58A3: $00
    nop                                           ; $58A4: $00
    rst RST_38                                    ; $58A5: $FF
    rst RST_38                                    ; $58A6: $FF
    rst RST_38                                    ; $58A7: $FF
    xor h                                         ; $58A8: $AC
    ld e, b                                       ; $58A9: $58
    nop                                           ; $58AA: $00
    nop                                           ; $58AB: $00
    ld bc, $0000                                  ; $58AC: $01 $00 $00
    inc b                                         ; $58AF: $04
    sub b                                         ; $58B0: $90
    nop                                           ; $58B1: $00
    nop                                           ; $58B2: $00
    rst RST_38                                    ; $58B3: $FF
    rst RST_38                                    ; $58B4: $FF
    rst RST_38                                    ; $58B5: $FF
    cp d                                          ; $58B6: $BA
    ld e, b                                       ; $58B7: $58
    nop                                           ; $58B8: $00
    nop                                           ; $58B9: $00
    ld bc, $0000                                  ; $58BA: $01 $00 $00
    ld b, $90                                     ; $58BD: $06 $90
    nop                                           ; $58BF: $00
    nop                                           ; $58C0: $00
    rst RST_38                                    ; $58C1: $FF
    rst RST_38                                    ; $58C2: $FF
    rst RST_38                                    ; $58C3: $FF
    ret z                                         ; $58C4: $C8

    ld e, b                                       ; $58C5: $58
    nop                                           ; $58C6: $00
    nop                                           ; $58C7: $00
    ld bc, $0000                                  ; $58C8: $01 $00 $00
    ld [$0090], sp                                ; $58CB: $08 $90 $00
    nop                                           ; $58CE: $00
    rst RST_38                                    ; $58CF: $FF
    rst RST_38                                    ; $58D0: $FF
    rst RST_38                                    ; $58D1: $FF
    sub $58                                       ; $58D2: $D6 $58
    nop                                           ; $58D4: $00
    nop                                           ; $58D5: $00
    ld bc, $0000                                  ; $58D6: $01 $00 $00
    ld a, [bc]                                    ; $58D9: $0A
    sub b                                         ; $58DA: $90
    nop                                           ; $58DB: $00
    nop                                           ; $58DC: $00
    rst RST_38                                    ; $58DD: $FF
    rst RST_38                                    ; $58DE: $FF
    rst RST_38                                    ; $58DF: $FF
    db $E4                                        ; $58E0: $E4
    ld e, b                                       ; $58E1: $58
    nop                                           ; $58E2: $00
    nop                                           ; $58E3: $00
    ld bc, $0000                                  ; $58E4: $01 $00 $00
    inc c                                         ; $58E7: $0C
    sub b                                         ; $58E8: $90
    nop                                           ; $58E9: $00
    nop                                           ; $58EA: $00
    rst RST_38                                    ; $58EB: $FF
    rst RST_38                                    ; $58EC: $FF
    rst RST_38                                    ; $58ED: $FF
    ldh a, [c]                                    ; $58EE: $F2
    ld e, b                                       ; $58EF: $58
    nop                                           ; $58F0: $00
    nop                                           ; $58F1: $00
    ld bc, $0000                                  ; $58F2: $01 $00 $00
    ld c, $3E                                     ; $58F5: $0E $3E
    ld h, c                                       ; $58F7: $61
    ld [$C06F], a                                 ; $58F8: $EA $6F $C0
    ld a, $00                                     ; $58FB: $3E $00
    ld [$C070], a                                 ; $58FD: $EA $70 $C0
    ld a, [$C312]                                 ; $5900: $FA $12 $C3
    cp $0A                                        ; $5903: $FE $0A
    jr c, jr_03B_5908                             ; $5905: $38 $01

    xor a                                         ; $5907: $AF

jr_03B_5908:
    ld [$C312], a                                 ; $5908: $EA $12 $C3
    di                                            ; $590B: $F3
    rst RST_10                                    ; $590C: $D7
    ld hl, $C03A                                  ; $590D: $21 $3A $C0
    res 1, [hl]                                   ; $5910: $CB $8E
    ld a, $FF                                     ; $5912: $3E $FF
    ldh [rBGP], a                                 ; $5914: $E0 $47
    ldh [rOBP0], a                                ; $5916: $E0 $48
    ldh [rOBP1], a                                ; $5918: $E0 $49
    ldh [$FFEA], a                                ; $591A: $E0 $EA
    ldh [$FFEB], a                                ; $591C: $E0 $EB
    ldh [$FFEC], a                                ; $591E: $E0 $EC
    call Call_000_13ED                            ; $5920: $CD $ED $13
    ld a, [$C312]                                 ; $5923: $FA $12 $C3
    add a                                         ; $5926: $87
    ld hl, $5CB0                                  ; $5927: $21 $B0 $5C
    ld e, a                                       ; $592A: $5F
    ld d, $00                                     ; $592B: $16 $00
    add hl, de                                    ; $592D: $19
    ld e, [hl]                                    ; $592E: $5E
    inc hl                                        ; $592F: $23
    ld d, [hl]                                    ; $5930: $56
    call Call_000_14C0                            ; $5931: $CD $C0 $14
    xor a                                         ; $5934: $AF
    ldh [$FFE4], a                                ; $5935: $E0 $E4
    ld [$C2AA], a                                 ; $5937: $EA $AA $C2
    ld a, $04                                     ; $593A: $3E $04
    ldh [$FFE2], a                                ; $593C: $E0 $E2
    ld a, $F0                                     ; $593E: $3E $F0
    ld [$C2AC], a                                 ; $5940: $EA $AC $C2
    ld hl, $7307                                  ; $5943: $21 $07 $73
    ld de, $C359                                  ; $5946: $11 $59 $C3
    ld b, $31                                     ; $5949: $06 $31
    rst RST_20                                    ; $594B: $E7
    ld hl, $C359                                  ; $594C: $21 $59 $C3
    ld de, $8000                                  ; $594F: $11 $00 $80
    ld b, $40                                     ; $5952: $06 $40
    call Call_000_1188                            ; $5954: $CD $88 $11
    ld hl, $7148                                  ; $5957: $21 $48 $71
    ld de, $C359                                  ; $595A: $11 $59 $C3
    ld b, $31                                     ; $595D: $06 $31
    rst RST_20                                    ; $595F: $E7
    ld hl, $C359                                  ; $5960: $21 $59 $C3
    ld de, $8400                                  ; $5963: $11 $00 $84
    ld b, $38                                     ; $5966: $06 $38
    call Call_000_1188                            ; $5968: $CD $88 $11
    ld a, [$C312]                                 ; $596B: $FA $12 $C3
    add a                                         ; $596E: $87
    ld hl, $5583                                  ; $596F: $21 $83 $55
    ld e, a                                       ; $5972: $5F
    ld d, $00                                     ; $5973: $16 $00
    add hl, de                                    ; $5975: $19
    ld a, [hl+]                                   ; $5976: $2A
    ld d, [hl]                                    ; $5977: $56
    ld l, a                                       ; $5978: $6F
    ld h, d                                       ; $5979: $62
    ld b, $2A                                     ; $597A: $06 $2A
    ld de, $C369                                  ; $597C: $11 $69 $C3
    rst RST_20                                    ; $597F: $E7
    ld a, [$C312]                                 ; $5980: $FA $12 $C3
    add a                                         ; $5983: $87
    ld hl, $55AB                                  ; $5984: $21 $AB $55
    ld e, a                                       ; $5987: $5F
    ld d, $00                                     ; $5988: $16 $00
    add hl, de                                    ; $598A: $19
    ld a, [hl+]                                   ; $598B: $2A
    ld d, [hl]                                    ; $598C: $56
    ld l, a                                       ; $598D: $6F
    ld h, d                                       ; $598E: $62
    ld b, $31                                     ; $598F: $06 $31
    ld de, $C679                                  ; $5991: $11 $79 $C6
    rst RST_20                                    ; $5994: $E7
    xor a                                         ; $5995: $AF
    ld hl, $C349                                  ; $5996: $21 $49 $C3
    ld c, $10                                     ; $5999: $0E $10

jr_03B_599B:
    ld [hl+], a                                   ; $599B: $22
    dec c                                         ; $599C: $0D
    jr nz, jr_03B_599B                            ; $599D: $20 $FC

    ld a, $FF                                     ; $599F: $3E $FF
    ld c, $10                                     ; $59A1: $0E $10

jr_03B_59A3:
    ld [hl+], a                                   ; $59A3: $22
    dec c                                         ; $59A4: $0D
    jr nz, jr_03B_59A3                            ; $59A5: $20 $FC

    ld hl, $C349                                  ; $59A7: $21 $49 $C3
    ld de, $8800                                  ; $59AA: $11 $00 $88
    ld b, $64                                     ; $59AD: $06 $64
    call Call_000_1188                            ; $59AF: $CD $88 $11
    ld c, $30                                     ; $59B2: $0E $30
    ld de, $8E40                                  ; $59B4: $11 $40 $8E
    ld a, [$C312]                                 ; $59B7: $FA $12 $C3
    add $14                                       ; $59BA: $C6 $14
    ld [$C288], a                                 ; $59BC: $EA $88 $C2
    ld b, $2D                                     ; $59BF: $06 $2D
    ld hl, $42F6                                  ; $59C1: $21 $F6 $42
    rst RST_08                                    ; $59C4: $CF
    ld e, $04                                     ; $59C5: $1E $04
    ld d, $81                                     ; $59C7: $16 $81
    ld hl, $9800                                  ; $59C9: $21 $00 $98
    ld b, $14                                     ; $59CC: $06 $14
    ld c, $20                                     ; $59CE: $0E $20
    call Call_000_10EA                            ; $59D0: $CD $EA $10
    ld e, $04                                     ; $59D3: $1E $04
    ld d, $80                                     ; $59D5: $16 $80
    ld hl, $9C00                                  ; $59D7: $21 $00 $9C
    ld b, $14                                     ; $59DA: $06 $14
    ld c, $20                                     ; $59DC: $0E $20
    call Call_000_10EA                            ; $59DE: $CD $EA $10
    ld a, [$C312]                                 ; $59E1: $FA $12 $C3
    add a                                         ; $59E4: $87
    ld hl, $5597                                  ; $59E5: $21 $97 $55
    ld e, a                                       ; $59E8: $5F
    ld d, $00                                     ; $59E9: $16 $00
    add hl, de                                    ; $59EB: $19
    ld e, [hl]                                    ; $59EC: $5E
    inc hl                                        ; $59ED: $23
    ld d, [hl]                                    ; $59EE: $56
    ld hl, $9821                                  ; $59EF: $21 $21 $98
    ld b, $07                                     ; $59F2: $06 $07
    ld c, $07                                     ; $59F4: $0E $07
    ld a, $82                                     ; $59F6: $3E $82
    call Call_000_0FF7                            ; $59F8: $CD $F7 $0F
    ld a, [$C312]                                 ; $59FB: $FA $12 $C3
    add a                                         ; $59FE: $87
    ld hl, $55BF                                  ; $59FF: $21 $BF $55
    ld e, a                                       ; $5A02: $5F
    ld d, $00                                     ; $5A03: $16 $00
    add hl, de                                    ; $5A05: $19
    ld e, [hl]                                    ; $5A06: $5E
    inc hl                                        ; $5A07: $23
    ld d, [hl]                                    ; $5A08: $56
    ld hl, $994C                                  ; $5A09: $21 $4C $99
    ld a, $66                                     ; $5A0C: $3E $66
    ld b, $FC                                     ; $5A0E: $06 $FC
    ld c, $B3                                     ; $5A10: $0E $B3
    call Call_000_107E                            ; $5A12: $CD $7E $10
    ld e, $04                                     ; $5A15: $1E $04
    ld d, $E4                                     ; $5A17: $16 $E4
    ld hl, $9829                                  ; $5A19: $21 $29 $98
    ld b, $0A                                     ; $5A1C: $06 $0A
    ld c, $01                                     ; $5A1E: $0E $01
    call Call_000_1111                            ; $5A20: $CD $11 $11
    ld e, $04                                     ; $5A23: $1E $04
    ld d, $EE                                     ; $5A25: $16 $EE
    ld hl, $984D                                  ; $5A27: $21 $4D $98
    ld b, $06                                     ; $5A2A: $06 $06
    ld c, $01                                     ; $5A2C: $0E $01
    call Call_000_1111                            ; $5A2E: $CD $11 $11
    ld e, $04                                     ; $5A31: $1E $04
    ld d, $F4                                     ; $5A33: $16 $F4
    ld hl, $9869                                  ; $5A35: $21 $69 $98
    ld b, $0A                                     ; $5A38: $06 $0A
    ld c, $01                                     ; $5A3A: $0E $01
    call Call_000_1111                            ; $5A3C: $CD $11 $11
    ld e, $04                                     ; $5A3F: $1E $04
    ld d, $FE                                     ; $5A41: $16 $FE
    ld hl, $988D                                  ; $5A43: $21 $8D $98
    ld b, $06                                     ; $5A46: $06 $06
    ld c, $01                                     ; $5A48: $0E $01
    call Call_000_1111                            ; $5A4A: $CD $11 $11
    ld e, $04                                     ; $5A4D: $1E $04
    ld d, $04                                     ; $5A4F: $16 $04
    ld hl, $98A9                                  ; $5A51: $21 $A9 $98
    ld b, $0A                                     ; $5A54: $06 $0A
    ld c, $01                                     ; $5A56: $0E $01
    call Call_000_1111                            ; $5A58: $CD $11 $11
    ld e, $04                                     ; $5A5B: $1E $04
    ld d, $0E                                     ; $5A5D: $16 $0E
    ld hl, $98CD                                  ; $5A5F: $21 $CD $98
    ld b, $06                                     ; $5A62: $06 $06
    ld c, $01                                     ; $5A64: $0E $01
    call Call_000_1111                            ; $5A66: $CD $11 $11
    ld e, $04                                     ; $5A69: $1E $04
    ld d, $14                                     ; $5A6B: $16 $14
    ld hl, $98E9                                  ; $5A6D: $21 $E9 $98
    ld b, $0A                                     ; $5A70: $06 $0A
    ld c, $01                                     ; $5A72: $0E $01
    call Call_000_1111                            ; $5A74: $CD $11 $11
    ld e, $04                                     ; $5A77: $1E $04
    ld d, $1E                                     ; $5A79: $16 $1E
    ld hl, $990D                                  ; $5A7B: $21 $0D $99
    ld b, $06                                     ; $5A7E: $06 $06
    ld c, $01                                     ; $5A80: $0E $01
    call Call_000_1111                            ; $5A82: $CD $11 $11
    ld e, $04                                     ; $5A85: $1E $04
    ld d, $24                                     ; $5A87: $16 $24
    ld hl, $9921                                  ; $5A89: $21 $21 $99
    ld b, $0A                                     ; $5A8C: $06 $0A
    ld c, $01                                     ; $5A8E: $0E $01
    call Call_000_1111                            ; $5A90: $CD $11 $11
    ld e, $04                                     ; $5A93: $1E $04
    ld d, $2E                                     ; $5A95: $16 $2E
    ld hl, $9945                                  ; $5A97: $21 $45 $99
    ld b, $06                                     ; $5A9A: $06 $06
    ld c, $01                                     ; $5A9C: $0E $01
    call Call_000_1111                            ; $5A9E: $CD $11 $11
    ld e, $04                                     ; $5AA1: $1E $04
    ld d, $34                                     ; $5AA3: $16 $34
    ld hl, $9961                                  ; $5AA5: $21 $61 $99
    ld b, $0A                                     ; $5AA8: $06 $0A
    ld c, $01                                     ; $5AAA: $0E $01
    call Call_000_1111                            ; $5AAC: $CD $11 $11
    ld e, $04                                     ; $5AAF: $1E $04
    ld d, $3E                                     ; $5AB1: $16 $3E
    ld hl, $9985                                  ; $5AB3: $21 $85 $99
    ld b, $06                                     ; $5AB6: $06 $06
    ld c, $01                                     ; $5AB8: $0E $01
    call Call_000_1111                            ; $5ABA: $CD $11 $11
    ld e, $04                                     ; $5ABD: $1E $04
    ld d, $44                                     ; $5ABF: $16 $44
    ld hl, $99A1                                  ; $5AC1: $21 $A1 $99
    ld b, $0A                                     ; $5AC4: $06 $0A
    ld c, $01                                     ; $5AC6: $0E $01
    call Call_000_1111                            ; $5AC8: $CD $11 $11
    ld e, $04                                     ; $5ACB: $1E $04
    ld d, $4E                                     ; $5ACD: $16 $4E
    ld hl, $99C5                                  ; $5ACF: $21 $C5 $99
    ld b, $06                                     ; $5AD2: $06 $06
    ld c, $01                                     ; $5AD4: $0E $01
    call Call_000_1111                            ; $5AD6: $CD $11 $11
    ld e, $04                                     ; $5AD9: $1E $04
    ld d, $54                                     ; $5ADB: $16 $54
    ld hl, $99E1                                  ; $5ADD: $21 $E1 $99
    ld b, $0A                                     ; $5AE0: $06 $0A
    ld c, $01                                     ; $5AE2: $0E $01
    call Call_000_1111                            ; $5AE4: $CD $11 $11
    ld e, $04                                     ; $5AE7: $1E $04
    ld d, $5E                                     ; $5AE9: $16 $5E
    ld hl, $9A05                                  ; $5AEB: $21 $05 $9A
    ld b, $06                                     ; $5AEE: $06 $06
    ld c, $01                                     ; $5AF0: $0E $01
    call Call_000_1111                            ; $5AF2: $CD $11 $11
    ld a, [$C312]                                 ; $5AF5: $FA $12 $C3
    cp $00                                        ; $5AF8: $FE $00
    jp z, Jump_03B_5B2A                           ; $5AFA: $CA $2A $5B

    cp $01                                        ; $5AFD: $FE $01
    jp z, Jump_03B_5B3A                           ; $5AFF: $CA $3A $5B

    cp $04                                        ; $5B02: $FE $04
    jp z, Jump_03B_5B4A                           ; $5B04: $CA $4A $5B

    cp $06                                        ; $5B07: $FE $06
    jp nz, Jump_03B_5B58                          ; $5B09: $C2 $58 $5B

    ld e, $04                                     ; $5B0C: $1E $04
    ld d, $64                                     ; $5B0E: $16 $64
    ld hl, $990A                                  ; $5B10: $21 $0A $99
    ld b, $03                                     ; $5B13: $06 $03
    ld c, $01                                     ; $5B15: $0E $01
    call Call_000_1111                            ; $5B17: $CD $11 $11
    ld e, $04                                     ; $5B1A: $1E $04
    ld d, $64                                     ; $5B1C: $16 $64
    ld hl, $9A02                                  ; $5B1E: $21 $02 $9A
    ld b, $03                                     ; $5B21: $06 $03
    ld c, $01                                     ; $5B23: $0E $01
    call Call_000_1111                            ; $5B25: $CD $11 $11
    jr jr_03B_5B58                                ; $5B28: $18 $2E

Jump_03B_5B2A:
    ld e, $04                                     ; $5B2A: $1E $04
    ld d, $64                                     ; $5B2C: $16 $64
    ld hl, $9A02                                  ; $5B2E: $21 $02 $9A
    ld b, $03                                     ; $5B31: $06 $03
    ld c, $01                                     ; $5B33: $0E $01
    call Call_000_1111                            ; $5B35: $CD $11 $11
    jr jr_03B_5B58                                ; $5B38: $18 $1E

Jump_03B_5B3A:
    ld e, $04                                     ; $5B3A: $1E $04
    ld d, $64                                     ; $5B3C: $16 $64
    ld hl, $990A                                  ; $5B3E: $21 $0A $99
    ld b, $03                                     ; $5B41: $06 $03
    ld c, $01                                     ; $5B43: $0E $01
    call Call_000_1111                            ; $5B45: $CD $11 $11
    jr jr_03B_5B58                                ; $5B48: $18 $0E

Jump_03B_5B4A:
    ld e, $04                                     ; $5B4A: $1E $04
    ld d, $64                                     ; $5B4C: $16 $64
    ld hl, $98CA                                  ; $5B4E: $21 $CA $98
    ld b, $03                                     ; $5B51: $06 $03
    ld c, $01                                     ; $5B53: $0E $01
    call Call_000_1111                            ; $5B55: $CD $11 $11

Jump_03B_5B58:
jr_03B_5B58:
    call Call_000_0F9E                            ; $5B58: $CD $9E $0F
    ld a, $07                                     ; $5B5B: $3E $07
    ldh [rWX], a                                  ; $5B5D: $E0 $4B
    ld a, $87                                     ; $5B5F: $3E $87
    ldh [rWY], a                                  ; $5B61: $E0 $4A
    ld a, $E7                                     ; $5B63: $3E $E7
    rst RST_18                                    ; $5B65: $DF
    xor a                                         ; $5B66: $AF
    ldh [rSTAT], a                                ; $5B67: $E0 $41
    ei                                            ; $5B69: $FB
    call Call_000_0424                            ; $5B6A: $CD $24 $04
    ld a, $1B                                     ; $5B6D: $3E $1B
    ldh [rBGP], a                                 ; $5B6F: $E0 $47
    ldh [$FFEA], a                                ; $5B71: $E0 $EA
    ldh [$FFEB], a                                ; $5B73: $E0 $EB
    ldh [$FFEC], a                                ; $5B75: $E0 $EC
    ld a, $2F                                     ; $5B77: $3E $2F
    ldh [rOBP0], a                                ; $5B79: $E0 $48
    ldh [rOBP1], a                                ; $5B7B: $E0 $49
    call Call_000_147A                            ; $5B7D: $CD $7A $14
    xor a                                         ; $5B80: $AF
    ld [$C329], a                                 ; $5B81: $EA $29 $C3
    ld [$C32A], a                                 ; $5B84: $EA $2A $C3

Jump_03B_5B87:
    ld hl, $D680                                  ; $5B87: $21 $80 $D6
    ld de, $5CC4                                  ; $5B8A: $11 $C4 $5C
    call Call_000_0F8E                            ; $5B8D: $CD $8E $0F

Jump_03B_5B90:
    ld hl, $D680                                  ; $5B90: $21 $80 $D6
    call Call_000_0E28                            ; $5B93: $CD $28 $0E
    ld a, [$D694]                                 ; $5B96: $FA $94 $D6
    and $08                                       ; $5B99: $E6 $08
    jr z, jr_03B_5BA5                             ; $5B9B: $28 $08

    ld a, [$D684]                                 ; $5B9D: $FA $84 $D6
    sub $04                                       ; $5BA0: $D6 $04
    ld [$D684], a                                 ; $5BA2: $EA $84 $D6

jr_03B_5BA5:
    call Call_000_0424                            ; $5BA5: $CD $24 $04
    ldh a, [$FF99]                                ; $5BA8: $F0 $99
    ld e, a                                       ; $5BAA: $5F
    ldh a, [$FFAC]                                ; $5BAB: $F0 $AC
    or e                                          ; $5BAD: $B3
    bit 6, a                                      ; $5BAE: $CB $77
    jp nz, Jump_03B_5C1A                          ; $5BB0: $C2 $1A $5C

    ld c, a                                       ; $5BB3: $4F
    ldh a, [$FF98]                                ; $5BB4: $F0 $98
    ld e, a                                       ; $5BB6: $5F
    ldh a, [$FFAB]                                ; $5BB7: $F0 $AB
    or e                                          ; $5BB9: $B3
    bit 7, a                                      ; $5BBA: $CB $7F
    jp z, Jump_03B_5BC9                           ; $5BBC: $CA $C9 $5B

    bit 0, c                                      ; $5BBF: $CB $41
    jp nz, Jump_03B_5BD1                          ; $5BC1: $C2 $D1 $5B

    bit 1, c                                      ; $5BC4: $CB $49
    jp nz, Jump_03B_5BF3                          ; $5BC6: $C2 $F3 $5B

Jump_03B_5BC9:
    and $30                                       ; $5BC9: $E6 $30
    cp $30                                        ; $5BCB: $FE $30
    jp nz, Jump_03B_5B90                          ; $5BCD: $C2 $90 $5B

    ret                                           ; $5BD0: $C9


Jump_03B_5BD1:
jr_03B_5BD1:
    ld hl, $C312                                  ; $5BD1: $21 $12 $C3
    inc [hl]                                      ; $5BD4: $34
    ld a, [$C312]                                 ; $5BD5: $FA $12 $C3
    cp $09                                        ; $5BD8: $FE $09
    jr nz, jr_03B_5BE5                            ; $5BDA: $20 $09

    ld a, [$C001]                                 ; $5BDC: $FA $01 $C0
    bit 6, a                                      ; $5BDF: $CB $77
    jr z, jr_03B_5BD1                             ; $5BE1: $28 $EE

    jr jr_03B_5BF0                                ; $5BE3: $18 $0B

jr_03B_5BE5:
    cp $08                                        ; $5BE5: $FE $08
    jr nz, jr_03B_5BF0                            ; $5BE7: $20 $07

    ld a, [$C001]                                 ; $5BE9: $FA $01 $C0
    bit 7, a                                      ; $5BEC: $CB $7F
    jr z, jr_03B_5BD1                             ; $5BEE: $28 $E1

jr_03B_5BF0:
    jp $58F6                                      ; $5BF0: $C3 $F6 $58


Jump_03B_5BF3:
jr_03B_5BF3:
    ld a, [$C312]                                 ; $5BF3: $FA $12 $C3
    or a                                          ; $5BF6: $B7
    jr nz, jr_03B_5BFB                            ; $5BF7: $20 $02

    ld a, $0A                                     ; $5BF9: $3E $0A

jr_03B_5BFB:
    dec a                                         ; $5BFB: $3D
    ld [$C312], a                                 ; $5BFC: $EA $12 $C3
    cp $09                                        ; $5BFF: $FE $09
    jr nz, jr_03B_5C0C                            ; $5C01: $20 $09

    ld a, [$C001]                                 ; $5C03: $FA $01 $C0
    bit 6, a                                      ; $5C06: $CB $77
    jr z, jr_03B_5BF3                             ; $5C08: $28 $E9

    jr jr_03B_5C17                                ; $5C0A: $18 $0B

jr_03B_5C0C:
    cp $08                                        ; $5C0C: $FE $08
    jr nz, jr_03B_5C17                            ; $5C0E: $20 $07

    ld a, [$C001]                                 ; $5C10: $FA $01 $C0
    bit 7, a                                      ; $5C13: $CB $7F
    jr z, jr_03B_5BF3                             ; $5C15: $28 $DC

jr_03B_5C17:
    jp $58F6                                      ; $5C17: $C3 $F6 $58


Jump_03B_5C1A:
    di                                            ; $5C1A: $F3
    rst RST_10                                    ; $5C1B: $D7
    ld b, $32                                     ; $5C1C: $06 $32
    ld hl, $6062                                  ; $5C1E: $21 $62 $60
    rst RST_08                                    ; $5C21: $CF
    ld a, $E7                                     ; $5C22: $3E $E7
    rst RST_18                                    ; $5C24: $DF
    xor a                                         ; $5C25: $AF
    ldh [rSTAT], a                                ; $5C26: $E0 $41
    ei                                            ; $5C28: $FB
    ld hl, $D680                                  ; $5C29: $21 $80 $D6
    ld de, $5E49                                  ; $5C2C: $11 $49 $5E
    call Call_000_0F8E                            ; $5C2F: $CD $8E $0F

Jump_03B_5C32:
    ld b, $32                                     ; $5C32: $06 $32
    ld hl, $607E                                  ; $5C34: $21 $7E $60
    rst RST_08                                    ; $5C37: $CF
    ld a, [$C369]                                 ; $5C38: $FA $69 $C3
    add a                                         ; $5C3B: $87
    add a                                         ; $5C3C: $87
    ld [$D694], a                                 ; $5C3D: $EA $94 $D6
    ld a, [$C329]                                 ; $5C40: $FA $29 $C3
    ld e, a                                       ; $5C43: $5F
    and $0F                                       ; $5C44: $E6 $0F
    jr nz, jr_03B_5C55                            ; $5C46: $20 $0D

    ld a, e                                       ; $5C48: $7B
    ld e, $00                                     ; $5C49: $1E $00
    and $30                                       ; $5C4B: $E6 $30
    jr z, jr_03B_5C51                             ; $5C4D: $28 $02

    ld e, $80                                     ; $5C4F: $1E $80

jr_03B_5C51:
    ld a, e                                       ; $5C51: $7B
    ld [$D680], a                                 ; $5C52: $EA $80 $D6

jr_03B_5C55:
    ld a, [$C36C]                                 ; $5C55: $FA $6C $C3
    or a                                          ; $5C58: $B7
    jr nz, jr_03B_5C88                            ; $5C59: $20 $2D

    ld a, [$C369]                                 ; $5C5B: $FA $69 $C3
    cp $01                                        ; $5C5E: $FE $01
    jr nz, jr_03B_5C68                            ; $5C60: $20 $06

    ld a, [$C36B]                                 ; $5C62: $FA $6B $C3
    add a                                         ; $5C65: $87
    jr c, jr_03B_5C78                             ; $5C66: $38 $10

jr_03B_5C68:
    ld hl, $C329                                  ; $5C68: $21 $29 $C3
    ld e, [hl]                                    ; $5C6B: $5E
    inc hl                                        ; $5C6C: $23
    ld d, [hl]                                    ; $5C6D: $56
    inc de                                        ; $5C6E: $13
    ld [hl], d                                    ; $5C6F: $72
    dec hl                                        ; $5C70: $2B
    ld [hl], e                                    ; $5C71: $73
    call Call_000_0424                            ; $5C72: $CD $24 $04
    jp Jump_03B_5C32                              ; $5C75: $C3 $32 $5C


jr_03B_5C78:
    ld a, $80                                     ; $5C78: $3E $80
    ld [$D680], a                                 ; $5C7A: $EA $80 $D6
    ld a, $1C                                     ; $5C7D: $3E $1C
    ld [$D694], a                                 ; $5C7F: $EA $94 $D6
    call Call_000_0438                            ; $5C82: $CD $38 $04
    jp Jump_03B_5B87                              ; $5C85: $C3 $87 $5B


jr_03B_5C88:
    ld a, $C1                                     ; $5C88: $3E $C1
    call Call_000_1360                            ; $5C8A: $CD $60 $13
    ld a, $80                                     ; $5C8D: $3E $80
    ld [$D680], a                                 ; $5C8F: $EA $80 $D6
    ld a, [$C36C]                                 ; $5C92: $FA $6C $C3
    and $0F                                       ; $5C95: $E6 $0F
    cp $05                                        ; $5C97: $FE $05
    jr c, jr_03B_5C9D                             ; $5C99: $38 $02

    ld a, $04                                     ; $5C9B: $3E $04

jr_03B_5C9D:
    add $08                                       ; $5C9D: $C6 $08
    add a                                         ; $5C9F: $87
    add a                                         ; $5CA0: $87
    ld [$D694], a                                 ; $5CA1: $EA $94 $D6
    call Call_000_0438                            ; $5CA4: $CD $38 $04
    call Call_000_0438                            ; $5CA7: $CD $38 $04
    call Call_000_0438                            ; $5CAA: $CD $38 $04
    jp Jump_03B_5B87                              ; $5CAD: $C3 $87 $5B


    ld [de], a                                    ; $5CB0: $12
    nop                                           ; $5CB1: $00
    inc de                                        ; $5CB2: $13
    nop                                           ; $5CB3: $00
    inc d                                         ; $5CB4: $14
    nop                                           ; $5CB5: $00
    dec d                                         ; $5CB6: $15
    nop                                           ; $5CB7: $00
    ld d, $00                                     ; $5CB8: $16 $00
    rla                                           ; $5CBA: $17
    nop                                           ; $5CBB: $00
    jr jr_03B_5CBE                                ; $5CBC: $18 $00

jr_03B_5CBE:
    add hl, de                                    ; $5CBE: $19
    nop                                           ; $5CBF: $00
    ld a, [de]                                    ; $5CC0: $1A
    nop                                           ; $5CC1: $00
    dec de                                        ; $5CC2: $1B
    nop                                           ; $5CC3: $00
    add b                                         ; $5CC4: $80
    nop                                           ; $5CC5: $00
    ld bc, $5001                                  ; $5CC6: $01 $01 $50
    nop                                           ; $5CC9: $00
    add a                                         ; $5CCA: $87
    nop                                           ; $5CCB: $00
    nop                                           ; $5CCC: $00
    nop                                           ; $5CCD: $00
    nop                                           ; $5CCE: $00
    nop                                           ; $5CCF: $00

jr_03B_5CD0:
    nop                                           ; $5CD0: $00
    nop                                           ; $5CD1: $00
    ld b, b                                       ; $5CD2: $40
    nop                                           ; $5CD3: $00
    add b                                         ; $5CD4: $80
    dec sp                                        ; $5CD5: $3B
    db $E4                                        ; $5CD6: $E4
    ld e, h                                       ; $5CD7: $5C
    nop                                           ; $5CD8: $00
    nop                                           ; $5CD9: $00
    db $E4                                        ; $5CDA: $E4
    ld e, h                                       ; $5CDB: $5C
    nop                                           ; $5CDC: $00
    nop                                           ; $5CDD: $00
    nop                                           ; $5CDE: $00
    nop                                           ; $5CDF: $00
    rra                                           ; $5CE0: $1F
    rra                                           ; $5CE1: $1F
    ret nz                                        ; $5CE2: $C0

    ret c                                         ; $5CE3: $D8

    ld d, $5D                                     ; $5CE4: $16 $5D
    rst RST_38                                    ; $5CE6: $FF
    rst RST_38                                    ; $5CE7: $FF
    ld d, $5D                                     ; $5CE8: $16 $5D
    rst RST_38                                    ; $5CEA: $FF
    rst RST_38                                    ; $5CEB: $FF
    ld d, $5D                                     ; $5CEC: $16 $5D
    rst RST_38                                    ; $5CEE: $FF
    rst RST_38                                    ; $5CEF: $FF
    ccf                                           ; $5CF0: $3F
    ld e, l                                       ; $5CF1: $5D
    rst RST_38                                    ; $5CF2: $FF
    rst RST_38                                    ; $5CF3: $FF
    ccf                                           ; $5CF4: $3F
    ld e, l                                       ; $5CF5: $5D
    rst RST_38                                    ; $5CF6: $FF
    rst RST_38                                    ; $5CF7: $FF
    ccf                                           ; $5CF8: $3F
    ld e, l                                       ; $5CF9: $5D
    rst RST_38                                    ; $5CFA: $FF
    rst RST_38                                    ; $5CFB: $FF
    ccf                                           ; $5CFC: $3F
    ld e, l                                       ; $5CFD: $5D
    rst RST_38                                    ; $5CFE: $FF
    rst RST_38                                    ; $5CFF: $FF
    ld e, h                                       ; $5D00: $5C
    ld e, l                                       ; $5D01: $5D
    rst RST_38                                    ; $5D02: $FF
    rst RST_38                                    ; $5D03: $FF
    ld e, h                                       ; $5D04: $5C
    ld e, l                                       ; $5D05: $5D
    rst RST_38                                    ; $5D06: $FF
    rst RST_38                                    ; $5D07: $FF
    ld e, h                                       ; $5D08: $5C
    ld e, l                                       ; $5D09: $5D
    rst RST_38                                    ; $5D0A: $FF
    rst RST_38                                    ; $5D0B: $FF
    ld e, h                                       ; $5D0C: $5C
    ld e, l                                       ; $5D0D: $5D
    rst RST_38                                    ; $5D0E: $FF
    rst RST_38                                    ; $5D0F: $FF
    ld d, $5D                                     ; $5D10: $16 $5D
    rst RST_38                                    ; $5D12: $FF
    rst RST_38                                    ; $5D13: $FF
    rst RST_38                                    ; $5D14: $FF
    rst RST_38                                    ; $5D15: $FF
    sub b                                         ; $5D16: $90
    nop                                           ; $5D17: $00
    nop                                           ; $5D18: $00
    rst RST_38                                    ; $5D19: $FF
    rst RST_38                                    ; $5D1A: $FF
    rst RST_38                                    ; $5D1B: $FF
    jr nz, jr_03B_5D7B                            ; $5D1C: $20 $5D

    nop                                           ; $5D1E: $00
    nop                                           ; $5D1F: $00
    ld a, [bc]                                    ; $5D20: $0A
    nop                                           ; $5D21: $00
    call nc, $002A                                ; $5D22: $D4 $2A $00
    call c, Call_000_002C                         ; $5D25: $DC $2C $00
    db $E4                                        ; $5D28: $E4
    ld l, $00                                     ; $5D29: $2E $00
    db $EC                                        ; $5D2B: $EC
    jr nc, jr_03B_5D2E                            ; $5D2C: $30 $00

jr_03B_5D2E:
    db $F4                                        ; $5D2E: $F4
    jr z, jr_03B_5D31                             ; $5D2F: $28 $00

jr_03B_5D31:
    db $FC                                        ; $5D31: $FC
    jr jr_03B_5D34                                ; $5D32: $18 $00

jr_03B_5D34:
    inc b                                         ; $5D34: $04
    ld a, [de]                                    ; $5D35: $1A
    nop                                           ; $5D36: $00
    inc d                                         ; $5D37: $14
    inc e                                         ; $5D38: $1C
    nop                                           ; $5D39: $00
    inc e                                         ; $5D3A: $1C
    ld e, $00                                     ; $5D3B: $1E $00
    dec h                                         ; $5D3D: $25
    jr nz, jr_03B_5CD0                            ; $5D3E: $20 $90

    nop                                           ; $5D40: $00
    nop                                           ; $5D41: $00
    rst RST_38                                    ; $5D42: $FF
    rst RST_38                                    ; $5D43: $FF
    rst RST_38                                    ; $5D44: $FF
    ld c, c                                       ; $5D45: $49
    ld e, l                                       ; $5D46: $5D
    nop                                           ; $5D47: $00
    nop                                           ; $5D48: $00
    ld b, $00                                     ; $5D49: $06 $00
    db $E4                                        ; $5D4B: $E4
    ld [hl+], a                                   ; $5D4C: $22
    nop                                           ; $5D4D: $00
    db $EC                                        ; $5D4E: $EC
    jr z, jr_03B_5D51                             ; $5D4F: $28 $00

jr_03B_5D51:
    db $F4                                        ; $5D51: $F4
    nop                                           ; $5D52: $00
    nop                                           ; $5D53: $00
    inc b                                         ; $5D54: $04
    ld [bc], a                                    ; $5D55: $02
    nop                                           ; $5D56: $00
    inc c                                         ; $5D57: $0C
    inc b                                         ; $5D58: $04
    nop                                           ; $5D59: $00
    inc d                                         ; $5D5A: $14
    ld b, $90                                     ; $5D5B: $06 $90
    nop                                           ; $5D5D: $00
    nop                                           ; $5D5E: $00
    rst RST_38                                    ; $5D5F: $FF
    rst RST_38                                    ; $5D60: $FF
    rst RST_38                                    ; $5D61: $FF
    ld h, [hl]                                    ; $5D62: $66
    ld e, l                                       ; $5D63: $5D
    nop                                           ; $5D64: $00
    nop                                           ; $5D65: $00
    ld [$DC00], sp                                ; $5D66: $08 $00 $DC
    ld [$E400], sp                                ; $5D69: $08 $00 $E4
    ld a, [bc]                                    ; $5D6C: $0A
    nop                                           ; $5D6D: $00
    db $EC                                        ; $5D6E: $EC
    inc c                                         ; $5D6F: $0C
    nop                                           ; $5D70: $00
    db $F4                                        ; $5D71: $F4
    ld c, $00                                     ; $5D72: $0E $00
    inc b                                         ; $5D74: $04
    stop                                          ; $5D75: $10 $00
    inc c                                         ; $5D77: $0C
    ld [de], a                                    ; $5D78: $12
    nop                                           ; $5D79: $00
    inc d                                         ; $5D7A: $14

jr_03B_5D7B:
    inc d                                         ; $5D7B: $14
    nop                                           ; $5D7C: $00
    inc e                                         ; $5D7D: $1C
    ld d, $80                                     ; $5D7E: $16 $80
    nop                                           ; $5D80: $00
    ld bc, $5001                                  ; $5D81: $01 $01 $50
    nop                                           ; $5D84: $00
    add a                                         ; $5D85: $87
    nop                                           ; $5D86: $00
    nop                                           ; $5D87: $00
    nop                                           ; $5D88: $00
    nop                                           ; $5D89: $00
    nop                                           ; $5D8A: $00
    nop                                           ; $5D8B: $00
    nop                                           ; $5D8C: $00
    ld b, b                                       ; $5D8D: $40
    nop                                           ; $5D8E: $00
    add b                                         ; $5D8F: $80
    dec sp                                        ; $5D90: $3B
    sbc a                                         ; $5D91: $9F
    ld e, l                                       ; $5D92: $5D
    nop                                           ; $5D93: $00
    nop                                           ; $5D94: $00
    sbc a                                         ; $5D95: $9F
    ld e, l                                       ; $5D96: $5D
    nop                                           ; $5D97: $00
    nop                                           ; $5D98: $00
    nop                                           ; $5D99: $00
    nop                                           ; $5D9A: $00
    rra                                           ; $5D9B: $1F
    rra                                           ; $5D9C: $1F
    ret nz                                        ; $5D9D: $C0

    ret c                                         ; $5D9E: $D8

    pop hl                                        ; $5D9F: $E1
    ld e, l                                       ; $5DA0: $5D
    rst RST_38                                    ; $5DA1: $FF
    rst RST_38                                    ; $5DA2: $FF
    pop hl                                        ; $5DA3: $E1
    ld e, l                                       ; $5DA4: $5D
    rst RST_38                                    ; $5DA5: $FF
    rst RST_38                                    ; $5DA6: $FF
    pop hl                                        ; $5DA7: $E1
    ld e, l                                       ; $5DA8: $5D
    rst RST_38                                    ; $5DA9: $FF
    rst RST_38                                    ; $5DAA: $FF
    ei                                            ; $5DAB: $FB
    ld e, l                                       ; $5DAC: $5D
    rst RST_38                                    ; $5DAD: $FF
    rst RST_38                                    ; $5DAE: $FF
    ei                                            ; $5DAF: $FB
    ld e, l                                       ; $5DB0: $5D
    rst RST_38                                    ; $5DB1: $FF
    rst RST_38                                    ; $5DB2: $FF
    ei                                            ; $5DB3: $FB
    ld e, l                                       ; $5DB4: $5D
    rst RST_38                                    ; $5DB5: $FF
    rst RST_38                                    ; $5DB6: $FF
    ei                                            ; $5DB7: $FB
    ld e, l                                       ; $5DB8: $5D
    rst RST_38                                    ; $5DB9: $FF
    rst RST_38                                    ; $5DBA: $FF
    ld [de], a                                    ; $5DBB: $12
    ld e, [hl]                                    ; $5DBC: $5E
    rst RST_38                                    ; $5DBD: $FF
    rst RST_38                                    ; $5DBE: $FF
    ld [de], a                                    ; $5DBF: $12
    ld e, [hl]                                    ; $5DC0: $5E
    rst RST_38                                    ; $5DC1: $FF
    rst RST_38                                    ; $5DC2: $FF
    ld [de], a                                    ; $5DC3: $12
    ld e, [hl]                                    ; $5DC4: $5E
    rst RST_38                                    ; $5DC5: $FF
    rst RST_38                                    ; $5DC6: $FF
    ld [de], a                                    ; $5DC7: $12
    ld e, [hl]                                    ; $5DC8: $5E
    rst RST_38                                    ; $5DC9: $FF
    rst RST_38                                    ; $5DCA: $FF
    dec [hl]                                      ; $5DCB: $35
    ld e, [hl]                                    ; $5DCC: $5E
    rst RST_38                                    ; $5DCD: $FF
    rst RST_38                                    ; $5DCE: $FF
    dec [hl]                                      ; $5DCF: $35
    ld e, [hl]                                    ; $5DD0: $5E
    rst RST_38                                    ; $5DD1: $FF
    rst RST_38                                    ; $5DD2: $FF
    dec [hl]                                      ; $5DD3: $35
    ld e, [hl]                                    ; $5DD4: $5E
    rst RST_38                                    ; $5DD5: $FF
    rst RST_38                                    ; $5DD6: $FF
    dec [hl]                                      ; $5DD7: $35
    ld e, [hl]                                    ; $5DD8: $5E
    rst RST_38                                    ; $5DD9: $FF
    rst RST_38                                    ; $5DDA: $FF
    pop hl                                        ; $5DDB: $E1
    ld e, l                                       ; $5DDC: $5D
    rst RST_38                                    ; $5DDD: $FF
    rst RST_38                                    ; $5DDE: $FF
    rst RST_38                                    ; $5DDF: $FF
    rst RST_38                                    ; $5DE0: $FF
    sub b                                         ; $5DE1: $90
    nop                                           ; $5DE2: $00
    nop                                           ; $5DE3: $00
    rst RST_38                                    ; $5DE4: $FF
    rst RST_38                                    ; $5DE5: $FF
    rst RST_38                                    ; $5DE6: $FF
    db $EB                                        ; $5DE7: $EB
    ld e, l                                       ; $5DE8: $5D
    nop                                           ; $5DE9: $00
    nop                                           ; $5DEA: $00
    dec b                                         ; $5DEB: $05
    nop                                           ; $5DEC: $00
    add sp, $18                                   ; $5DED: $E8 $18
    nop                                           ; $5DEF: $00
    ldh a, [rNR30]                                ; $5DF0: $F0 $1A
    nop                                           ; $5DF2: $00
    nop                                           ; $5DF3: $00
    inc e                                         ; $5DF4: $1C
    nop                                           ; $5DF5: $00
    ld [$001E], sp                                ; $5DF6: $08 $1E $00
    ld de, $9020                                  ; $5DF9: $11 $20 $90
    nop                                           ; $5DFC: $00
    nop                                           ; $5DFD: $00
    rst RST_38                                    ; $5DFE: $FF
    rst RST_38                                    ; $5DFF: $FF
    rst RST_38                                    ; $5E00: $FF
    dec b                                         ; $5E01: $05
    ld e, [hl]                                    ; $5E02: $5E
    nop                                           ; $5E03: $00
    nop                                           ; $5E04: $00
    inc b                                         ; $5E05: $04
    nop                                           ; $5E06: $00
    db $EC                                        ; $5E07: $EC
    nop                                           ; $5E08: $00
    nop                                           ; $5E09: $00
    db $FC                                        ; $5E0A: $FC
    ld [bc], a                                    ; $5E0B: $02
    nop                                           ; $5E0C: $00
    inc b                                         ; $5E0D: $04
    inc b                                         ; $5E0E: $04
    nop                                           ; $5E0F: $00
    inc c                                         ; $5E10: $0C
    ld b, $90                                     ; $5E11: $06 $90
    nop                                           ; $5E13: $00
    nop                                           ; $5E14: $00
    rst RST_38                                    ; $5E15: $FF
    rst RST_38                                    ; $5E16: $FF
    rst RST_38                                    ; $5E17: $FF
    inc e                                         ; $5E18: $1C
    ld e, [hl]                                    ; $5E19: $5E
    nop                                           ; $5E1A: $00
    nop                                           ; $5E1B: $00
    ld [$DC00], sp                                ; $5E1C: $08 $00 $DC
    ld [$E400], sp                                ; $5E1F: $08 $00 $E4
    ld a, [bc]                                    ; $5E22: $0A
    nop                                           ; $5E23: $00
    db $EC                                        ; $5E24: $EC
    inc c                                         ; $5E25: $0C
    nop                                           ; $5E26: $00
    db $F4                                        ; $5E27: $F4
    ld c, $00                                     ; $5E28: $0E $00
    inc b                                         ; $5E2A: $04
    stop                                          ; $5E2B: $10 $00
    inc c                                         ; $5E2D: $0C
    ld [de], a                                    ; $5E2E: $12
    nop                                           ; $5E2F: $00
    inc d                                         ; $5E30: $14
    inc d                                         ; $5E31: $14
    nop                                           ; $5E32: $00
    inc e                                         ; $5E33: $1C
    ld d, $90                                     ; $5E34: $16 $90
    nop                                           ; $5E36: $00
    nop                                           ; $5E37: $00
    rst RST_38                                    ; $5E38: $FF
    rst RST_38                                    ; $5E39: $FF
    rst RST_38                                    ; $5E3A: $FF
    ccf                                           ; $5E3B: $3F
    ld e, [hl]                                    ; $5E3C: $5E
    nop                                           ; $5E3D: $00
    nop                                           ; $5E3E: $00
    inc bc                                        ; $5E3F: $03
    nop                                           ; $5E40: $00
    ldh a, [$FF32]                                ; $5E41: $F0 $32
    nop                                           ; $5E43: $00
    nop                                           ; $5E44: $00
    inc [hl]                                      ; $5E45: $34
    nop                                           ; $5E46: $00
    ld [$8036], sp                                ; $5E47: $08 $36 $80
    nop                                           ; $5E4A: $00
    ld bc, $5001                                  ; $5E4B: $01 $01 $50
    nop                                           ; $5E4E: $00
    jr c, jr_03B_5E51                             ; $5E4F: $38 $00

jr_03B_5E51:
    nop                                           ; $5E51: $00
    nop                                           ; $5E52: $00
    nop                                           ; $5E53: $00
    nop                                           ; $5E54: $00
    nop                                           ; $5E55: $00
    nop                                           ; $5E56: $00
    nop                                           ; $5E57: $00
    nop                                           ; $5E58: $00
    add b                                         ; $5E59: $80
    dec sp                                        ; $5E5A: $3B
    ld l, c                                       ; $5E5B: $69
    ld e, [hl]                                    ; $5E5C: $5E
    nop                                           ; $5E5D: $00
    nop                                           ; $5E5E: $00
    ld l, c                                       ; $5E5F: $69
    ld e, [hl]                                    ; $5E60: $5E
    nop                                           ; $5E61: $00
    nop                                           ; $5E62: $00
    nop                                           ; $5E63: $00
    nop                                           ; $5E64: $00
    ccf                                           ; $5E65: $3F
    ccf                                           ; $5E66: $3F
    ret nz                                        ; $5E67: $C0

    ret c                                         ; $5E68: $D8

    sbc a                                         ; $5E69: $9F
    ld e, [hl]                                    ; $5E6A: $5E
    rst RST_38                                    ; $5E6B: $FF
    rst RST_38                                    ; $5E6C: $FF
    sbc a                                         ; $5E6D: $9F
    ld e, [hl]                                    ; $5E6E: $5E
    rst RST_38                                    ; $5E6F: $FF
    rst RST_38                                    ; $5E70: $FF
    sbc a                                         ; $5E71: $9F
    ld e, [hl]                                    ; $5E72: $5E
    rst RST_38                                    ; $5E73: $FF
    rst RST_38                                    ; $5E74: $FF
    push bc                                       ; $5E75: $C5
    ld e, [hl]                                    ; $5E76: $5E
    rst RST_38                                    ; $5E77: $FF
    rst RST_38                                    ; $5E78: $FF
    sbc a                                         ; $5E79: $9F
    ld e, [hl]                                    ; $5E7A: $5E
    rst RST_38                                    ; $5E7B: $FF
    rst RST_38                                    ; $5E7C: $FF
    db $EB                                        ; $5E7D: $EB
    ld e, [hl]                                    ; $5E7E: $5E
    rst RST_38                                    ; $5E7F: $FF
    rst RST_38                                    ; $5E80: $FF
    sbc a                                         ; $5E81: $9F
    ld e, [hl]                                    ; $5E82: $5E
    rst RST_38                                    ; $5E83: $FF
    rst RST_38                                    ; $5E84: $FF
    ld [$FF5F], sp                                ; $5E85: $08 $5F $FF
    rst RST_38                                    ; $5E88: $FF
    dec hl                                        ; $5E89: $2B
    ld e, a                                       ; $5E8A: $5F
    rst RST_38                                    ; $5E8B: $FF
    rst RST_38                                    ; $5E8C: $FF
    ld [hl], l                                    ; $5E8D: $75
    ld e, a                                       ; $5E8E: $5F
    rst RST_38                                    ; $5E8F: $FF
    rst RST_38                                    ; $5E90: $FF
    sbc b                                         ; $5E91: $98
    ld e, a                                       ; $5E92: $5F
    rst RST_38                                    ; $5E93: $FF
    rst RST_38                                    ; $5E94: $FF
    cp e                                          ; $5E95: $BB
    ld e, a                                       ; $5E96: $5F
    rst RST_38                                    ; $5E97: $FF
    rst RST_38                                    ; $5E98: $FF
    sbc $5F                                       ; $5E99: $DE $5F
    rst RST_38                                    ; $5E9B: $FF
    rst RST_38                                    ; $5E9C: $FF
    rst RST_38                                    ; $5E9D: $FF
    rst RST_38                                    ; $5E9E: $FF
    sub b                                         ; $5E9F: $90
    nop                                           ; $5EA0: $00
    nop                                           ; $5EA1: $00
    rst RST_38                                    ; $5EA2: $FF
    rst RST_38                                    ; $5EA3: $FF
    rst RST_38                                    ; $5EA4: $FF
    xor c                                         ; $5EA5: $A9
    ld e, [hl]                                    ; $5EA6: $5E
    nop                                           ; $5EA7: $00
    nop                                           ; $5EA8: $00
    add hl, bc                                    ; $5EA9: $09
    nop                                           ; $5EAA: $00
    call c, RST_00                                ; $5EAB: $DC $00 $00
    db $E4                                        ; $5EAE: $E4
    nop                                           ; $5EAF: $00
    nop                                           ; $5EB0: $00
    db $EC                                        ; $5EB1: $EC
    nop                                           ; $5EB2: $00
    nop                                           ; $5EB3: $00
    db $F4                                        ; $5EB4: $F4
    nop                                           ; $5EB5: $00
    nop                                           ; $5EB6: $00
    db $FC                                        ; $5EB7: $FC
    nop                                           ; $5EB8: $00
    nop                                           ; $5EB9: $00
    inc b                                         ; $5EBA: $04
    nop                                           ; $5EBB: $00
    nop                                           ; $5EBC: $00
    inc c                                         ; $5EBD: $0C
    nop                                           ; $5EBE: $00
    nop                                           ; $5EBF: $00
    inc d                                         ; $5EC0: $14
    nop                                           ; $5EC1: $00
    nop                                           ; $5EC2: $00
    inc e                                         ; $5EC3: $1C
    nop                                           ; $5EC4: $00
    sub b                                         ; $5EC5: $90
    nop                                           ; $5EC6: $00
    nop                                           ; $5EC7: $00
    rst RST_38                                    ; $5EC8: $FF
    rst RST_38                                    ; $5EC9: $FF
    rst RST_38                                    ; $5ECA: $FF
    rst RST_08                                    ; $5ECB: $CF
    ld e, [hl]                                    ; $5ECC: $5E
    nop                                           ; $5ECD: $00
    nop                                           ; $5ECE: $00
    add hl, bc                                    ; $5ECF: $09
    nop                                           ; $5ED0: $00
    call c, RST_00                                ; $5ED1: $DC $00 $00
    db $E4                                        ; $5ED4: $E4
    stop                                          ; $5ED5: $10 $00
    db $EC                                        ; $5ED7: $EC
    ld [de], a                                    ; $5ED8: $12
    nop                                           ; $5ED9: $00
    db $F4                                        ; $5EDA: $F4
    inc d                                         ; $5EDB: $14
    nop                                           ; $5EDC: $00
    db $FC                                        ; $5EDD: $FC
    ld d, $00                                     ; $5EDE: $16 $00
    inc b                                         ; $5EE0: $04
    ld c, $00                                     ; $5EE1: $0E $00
    inc c                                         ; $5EE3: $0C
    jr jr_03B_5EE6                                ; $5EE4: $18 $00

jr_03B_5EE6:
    inc d                                         ; $5EE6: $14
    inc b                                         ; $5EE7: $04
    nop                                           ; $5EE8: $00
    inc e                                         ; $5EE9: $1C
    nop                                           ; $5EEA: $00
    sub b                                         ; $5EEB: $90
    nop                                           ; $5EEC: $00
    nop                                           ; $5EED: $00
    rst RST_38                                    ; $5EEE: $FF
    rst RST_38                                    ; $5EEF: $FF
    rst RST_38                                    ; $5EF0: $FF
    push af                                       ; $5EF1: $F5
    ld e, [hl]                                    ; $5EF2: $5E
    nop                                           ; $5EF3: $00
    nop                                           ; $5EF4: $00
    ld b, $00                                     ; $5EF5: $06 $00
    add sp, $00                                   ; $5EF7: $E8 $00
    nop                                           ; $5EF9: $00
    ldh a, [rSC]                                  ; $5EFA: $F0 $02
    nop                                           ; $5EFC: $00
    ld hl, sp+$04                                 ; $5EFD: $F8 $04
    nop                                           ; $5EFF: $00
    nop                                           ; $5F00: $00
    ld b, $00                                     ; $5F01: $06 $00
    ld [$0008], sp                                ; $5F03: $08 $08 $00
    stop                                          ; $5F06: $10 $00
    sub b                                         ; $5F08: $90
    nop                                           ; $5F09: $00
    nop                                           ; $5F0A: $00
    rst RST_38                                    ; $5F0B: $FF
    rst RST_38                                    ; $5F0C: $FF
    rst RST_38                                    ; $5F0D: $FF
    ld [de], a                                    ; $5F0E: $12
    ld e, a                                       ; $5F0F: $5F
    nop                                           ; $5F10: $00
    nop                                           ; $5F11: $00
    ld [$E000], sp                                ; $5F12: $08 $00 $E0
    nop                                           ; $5F15: $00
    nop                                           ; $5F16: $00
    add sp, $1A                                   ; $5F17: $E8 $1A
    nop                                           ; $5F19: $00
    ldh a, [rNR32]                                ; $5F1A: $F0 $1C
    nop                                           ; $5F1C: $00
    ld hl, sp+$1E                                 ; $5F1D: $F8 $1E
    nop                                           ; $5F1F: $00
    nop                                           ; $5F20: $00
    jr nz, jr_03B_5F23                            ; $5F21: $20 $00

jr_03B_5F23:
    ld [$0018], sp                                ; $5F23: $08 $18 $00
    db $10                                        ; $5F26: $10
    ld [hl+], a                                   ; $5F27: $22
    nop                                           ; $5F28: $00
    jr jr_03B_5F2B                                ; $5F29: $18 $00

jr_03B_5F2B:
    sub b                                         ; $5F2B: $90
    nop                                           ; $5F2C: $00
    nop                                           ; $5F2D: $00
    rst RST_38                                    ; $5F2E: $FF
    rst RST_38                                    ; $5F2F: $FF
    rst RST_38                                    ; $5F30: $FF
    dec [hl]                                      ; $5F31: $35
    ld e, a                                       ; $5F32: $5F
    nop                                           ; $5F33: $00
    nop                                           ; $5F34: $00
    dec d                                         ; $5F35: $15
    ldh a, [$FFE4]                                ; $5F36: $F0 $E4
    nop                                           ; $5F38: $00
    ldh a, [$FFEC]                                ; $5F39: $F0 $EC
    ld [hl-], a                                   ; $5F3B: $32
    ldh a, [$FFF4]                                ; $5F3C: $F0 $F4
    inc [hl]                                      ; $5F3E: $34
    ldh a, [$FFFC]                                ; $5F3F: $F0 $FC
    ld [hl], $F0                                  ; $5F41: $36 $F0
    inc b                                         ; $5F43: $04
    inc d                                         ; $5F44: $14
    ldh a, [$FF0C]                                ; $5F45: $F0 $0C
    inc a                                         ; $5F47: $3C
    ldh a, [rNR14]                                ; $5F48: $F0 $14
    nop                                           ; $5F4A: $00
    nop                                           ; $5F4B: $00
    db $E4                                        ; $5F4C: $E4
    nop                                           ; $5F4D: $00
    nop                                           ; $5F4E: $00
    db $EC                                        ; $5F4F: $EC
    ld [$F400], sp                                ; $5F50: $08 $00 $F4
    ld a, $00                                     ; $5F53: $3E $00
    db $FC                                        ; $5F55: $FC
    inc a                                         ; $5F56: $3C
    nop                                           ; $5F57: $00
    inc b                                         ; $5F58: $04
    ld a, [bc]                                    ; $5F59: $0A
    nop                                           ; $5F5A: $00
    inc c                                         ; $5F5B: $0C
    inc c                                         ; $5F5C: $0C
    nop                                           ; $5F5D: $00
    inc d                                         ; $5F5E: $14
    nop                                           ; $5F5F: $00
    db $10                                        ; $5F60: $10
    db $E4                                        ; $5F61: $E4
    nop                                           ; $5F62: $00
    db $10                                        ; $5F63: $10
    db $EC                                        ; $5F64: $EC
    ld [bc], a                                    ; $5F65: $02
    db $10                                        ; $5F66: $10
    db $F4                                        ; $5F67: $F4
    jr nz, jr_03B_5F7A                            ; $5F68: $20 $10

    db $FC                                        ; $5F6A: $FC
    ld a, [hl-]                                   ; $5F6B: $3A
    db $10                                        ; $5F6C: $10
    inc b                                         ; $5F6D: $04
    inc b                                         ; $5F6E: $04
    db $10                                        ; $5F6F: $10
    inc c                                         ; $5F70: $0C
    nop                                           ; $5F71: $00
    db $10                                        ; $5F72: $10
    inc d                                         ; $5F73: $14
    nop                                           ; $5F74: $00
    sub b                                         ; $5F75: $90
    nop                                           ; $5F76: $00
    nop                                           ; $5F77: $00
    rst RST_38                                    ; $5F78: $FF
    rst RST_38                                    ; $5F79: $FF

jr_03B_5F7A:
    rst RST_38                                    ; $5F7A: $FF
    ld a, a                                       ; $5F7B: $7F
    ld e, a                                       ; $5F7C: $5F
    nop                                           ; $5F7D: $00
    nop                                           ; $5F7E: $00
    ld [$E000], sp                                ; $5F7F: $08 $00 $E0
    nop                                           ; $5F82: $00
    nop                                           ; $5F83: $00
    add sp, $24                                   ; $5F84: $E8 $24
    nop                                           ; $5F86: $00
    ldh a, [rNR52]                                ; $5F87: $F0 $26
    nop                                           ; $5F89: $00
    ld hl, sp+$12                                 ; $5F8A: $F8 $12
    nop                                           ; $5F8C: $00
    nop                                           ; $5F8D: $00
    nop                                           ; $5F8E: $00
    nop                                           ; $5F8F: $00
    ld [$0028], sp                                ; $5F90: $08 $28 $00
    db $10                                        ; $5F93: $10
    ld a, [hl+]                                   ; $5F94: $2A
    nop                                           ; $5F95: $00
    jr jr_03B_5F98                                ; $5F96: $18 $00

jr_03B_5F98:
    sub b                                         ; $5F98: $90
    nop                                           ; $5F99: $00
    nop                                           ; $5F9A: $00
    rst RST_38                                    ; $5F9B: $FF
    rst RST_38                                    ; $5F9C: $FF
    rst RST_38                                    ; $5F9D: $FF
    and d                                         ; $5F9E: $A2
    ld e, a                                       ; $5F9F: $5F
    nop                                           ; $5FA0: $00
    nop                                           ; $5FA1: $00
    ld [$E000], sp                                ; $5FA2: $08 $00 $E0
    nop                                           ; $5FA5: $00
    nop                                           ; $5FA6: $00
    add sp, $24                                   ; $5FA7: $E8 $24
    nop                                           ; $5FA9: $00
    ldh a, [rNR52]                                ; $5FAA: $F0 $26
    nop                                           ; $5FAC: $00
    ld hl, sp+$12                                 ; $5FAD: $F8 $12
    nop                                           ; $5FAF: $00
    nop                                           ; $5FB0: $00
    nop                                           ; $5FB1: $00
    nop                                           ; $5FB2: $00
    ld [$0028], sp                                ; $5FB3: $08 $28 $00
    db $10                                        ; $5FB6: $10
    inc l                                         ; $5FB7: $2C
    nop                                           ; $5FB8: $00
    jr jr_03B_5FBB                                ; $5FB9: $18 $00

jr_03B_5FBB:
    sub b                                         ; $5FBB: $90
    nop                                           ; $5FBC: $00
    nop                                           ; $5FBD: $00
    rst RST_38                                    ; $5FBE: $FF
    rst RST_38                                    ; $5FBF: $FF
    rst RST_38                                    ; $5FC0: $FF
    push bc                                       ; $5FC1: $C5
    ld e, a                                       ; $5FC2: $5F
    nop                                           ; $5FC3: $00
    nop                                           ; $5FC4: $00
    ld [$E000], sp                                ; $5FC5: $08 $00 $E0
    nop                                           ; $5FC8: $00
    nop                                           ; $5FC9: $00
    add sp, $24                                   ; $5FCA: $E8 $24
    nop                                           ; $5FCC: $00
    ldh a, [rNR52]                                ; $5FCD: $F0 $26
    nop                                           ; $5FCF: $00
    ld hl, sp+$12                                 ; $5FD0: $F8 $12
    nop                                           ; $5FD2: $00
    nop                                           ; $5FD3: $00
    nop                                           ; $5FD4: $00
    nop                                           ; $5FD5: $00
    ld [$0028], sp                                ; $5FD6: $08 $28 $00
    db $10                                        ; $5FD9: $10
    ld l, $00                                     ; $5FDA: $2E $00
    jr jr_03B_5FDE                                ; $5FDC: $18 $00

jr_03B_5FDE:
    sub b                                         ; $5FDE: $90
    nop                                           ; $5FDF: $00
    nop                                           ; $5FE0: $00
    rst RST_38                                    ; $5FE1: $FF
    rst RST_38                                    ; $5FE2: $FF
    rst RST_38                                    ; $5FE3: $FF
    add sp, $5F                                   ; $5FE4: $E8 $5F
    nop                                           ; $5FE6: $00
    nop                                           ; $5FE7: $00
    ld [$E000], sp                                ; $5FE8: $08 $00 $E0
    nop                                           ; $5FEB: $00
    nop                                           ; $5FEC: $00
    add sp, $24                                   ; $5FED: $E8 $24
    nop                                           ; $5FEF: $00
    ldh a, [rNR52]                                ; $5FF0: $F0 $26
    nop                                           ; $5FF2: $00
    ld hl, sp+$12                                 ; $5FF3: $F8 $12
    nop                                           ; $5FF5: $00
    nop                                           ; $5FF6: $00
    nop                                           ; $5FF7: $00
    nop                                           ; $5FF8: $00
    ld [$0028], sp                                ; $5FF9: $08 $28 $00
    db $10                                        ; $5FFC: $10
    jr nc, jr_03B_5FFF                            ; $5FFD: $30 $00

jr_03B_5FFF:
    jr jr_03B_6001                                ; $5FFF: $18 $00

jr_03B_6001:
    ld sp, $DD00                                  ; $6001: $31 $00 $DD
    ld a, $61                                     ; $6004: $3E $61
    ld [$C06F], a                                 ; $6006: $EA $6F $C0
    ld a, $00                                     ; $6009: $3E $00
    ld [$C070], a                                 ; $600B: $EA $70 $C0
    xor a                                         ; $600E: $AF
    ld [$C31B], a                                 ; $600F: $EA $1B $C3

Jump_03B_6012:
    ld a, [$C31B]                                 ; $6012: $FA $1B $C3
    cp $22                                        ; $6015: $FE $22
    jr c, jr_03B_601A                             ; $6017: $38 $01

    xor a                                         ; $6019: $AF

jr_03B_601A:
    ld [$C31B], a                                 ; $601A: $EA $1B $C3
    di                                            ; $601D: $F3
    rst RST_10                                    ; $601E: $D7
    ld hl, $C03A                                  ; $601F: $21 $3A $C0
    res 1, [hl]                                   ; $6022: $CB $8E
    ld a, $FF                                     ; $6024: $3E $FF
    ldh [rBGP], a                                 ; $6026: $E0 $47
    ldh [rOBP0], a                                ; $6028: $E0 $48
    ldh [rOBP1], a                                ; $602A: $E0 $49
    ldh [$FFEA], a                                ; $602C: $E0 $EA
    ldh [$FFEB], a                                ; $602E: $E0 $EB
    ldh [$FFEC], a                                ; $6030: $E0 $EC
    call Call_000_13ED                            ; $6032: $CD $ED $13
    xor a                                         ; $6035: $AF
    ldh [$FFE4], a                                ; $6036: $E0 $E4
    ld [$C2AA], a                                 ; $6038: $EA $AA $C2
    ldh [$FFE2], a                                ; $603B: $E0 $E2
    ld a, $F0                                     ; $603D: $3E $F0
    ld [$C2AC], a                                 ; $603F: $EA $AC $C2
    ld hl, $7307                                  ; $6042: $21 $07 $73
    ld de, $C359                                  ; $6045: $11 $59 $C3
    ld b, $31                                     ; $6048: $06 $31
    rst RST_20                                    ; $604A: $E7
    ld hl, $C359                                  ; $604B: $21 $59 $C3
    ld de, $8000                                  ; $604E: $11 $00 $80
    ld b, $40                                     ; $6051: $06 $40
    call Call_000_1188                            ; $6053: $CD $88 $11
    ld hl, $7148                                  ; $6056: $21 $48 $71
    ld de, $C359                                  ; $6059: $11 $59 $C3
    ld b, $31                                     ; $605C: $06 $31
    rst RST_20                                    ; $605E: $E7
    ld hl, $C359                                  ; $605F: $21 $59 $C3
    ld de, $8400                                  ; $6062: $11 $00 $84
    ld b, $38                                     ; $6065: $06 $38
    call Call_000_1188                            ; $6067: $CD $88 $11
    xor a                                         ; $606A: $AF
    ld hl, $C349                                  ; $606B: $21 $49 $C3
    ld c, $10                                     ; $606E: $0E $10

jr_03B_6070:
    ld [hl+], a                                   ; $6070: $22
    dec c                                         ; $6071: $0D
    jr nz, jr_03B_6070                            ; $6072: $20 $FC

    ld a, $FF                                     ; $6074: $3E $FF
    ld c, $10                                     ; $6076: $0E $10

jr_03B_6078:
    ld [hl+], a                                   ; $6078: $22
    dec c                                         ; $6079: $0D
    jr nz, jr_03B_6078                            ; $607A: $20 $FC

    ld hl, $C349                                  ; $607C: $21 $49 $C3
    ld de, $8800                                  ; $607F: $11 $00 $88
    ld b, $02                                     ; $6082: $06 $02
    call Call_000_1188                            ; $6084: $CD $88 $11
    call Call_000_0F9E                            ; $6087: $CD $9E $0F
    ld e, $04                                     ; $608A: $1E $04
    ld d, $81                                     ; $608C: $16 $81
    ld hl, $9800                                  ; $608E: $21 $00 $98
    ld b, $14                                     ; $6091: $06 $14
    ld c, $20                                     ; $6093: $0E $20
    call Call_000_10EA                            ; $6095: $CD $EA $10
    ld e, $04                                     ; $6098: $1E $04
    ld d, $80                                     ; $609A: $16 $80
    ld hl, $9C00                                  ; $609C: $21 $00 $9C
    ld b, $14                                     ; $609F: $06 $14
    ld c, $20                                     ; $60A1: $0E $20
    call Call_000_10EA                            ; $60A3: $CD $EA $10
    xor a                                         ; $60A6: $AF
    ld [$C318], a                                 ; $60A7: $EA $18 $C3
    call Call_03B_6207                            ; $60AA: $CD $07 $62
    ld a, $07                                     ; $60AD: $3E $07
    ldh [rWX], a                                  ; $60AF: $E0 $4B
    ld a, $87                                     ; $60B1: $3E $87
    ldh [rWY], a                                  ; $60B3: $E0 $4A
    ld a, $E7                                     ; $60B5: $3E $E7
    rst RST_18                                    ; $60B7: $DF
    xor a                                         ; $60B8: $AF
    ldh [rSTAT], a                                ; $60B9: $E0 $41
    ei                                            ; $60BB: $FB
    call Call_03B_7042                            ; $60BC: $CD $42 $70
    call Call_000_0424                            ; $60BF: $CD $24 $04
    ld a, $1B                                     ; $60C2: $3E $1B
    ldh [rBGP], a                                 ; $60C4: $E0 $47
    ldh [$FFEA], a                                ; $60C6: $E0 $EA
    ldh [$FFEB], a                                ; $60C8: $E0 $EB
    ldh [$FFEC], a                                ; $60CA: $E0 $EC
    ldh [rOBP0], a                                ; $60CC: $E0 $48
    ldh [rOBP1], a                                ; $60CE: $E0 $49
    call Call_000_147A                            ; $60D0: $CD $7A $14
    xor a                                         ; $60D3: $AF
    ld [$C329], a                                 ; $60D4: $EA $29 $C3
    ld [$C32A], a                                 ; $60D7: $EA $2A $C3

Jump_03B_60DA:
    ld hl, $D680                                  ; $60DA: $21 $80 $D6
    ld de, $5D7F                                  ; $60DD: $11 $7F $5D
    call Call_000_0F8E                            ; $60E0: $CD $8E $0F

Jump_03B_60E3:
    ld hl, $D680                                  ; $60E3: $21 $80 $D6
    call Call_000_0E28                            ; $60E6: $CD $28 $0E
    call Call_03B_701B                            ; $60E9: $CD $1B $70
    ld a, [$D694]                                 ; $60EC: $FA $94 $D6
    and $08                                       ; $60EF: $E6 $08
    jr z, jr_03B_60FB                             ; $60F1: $28 $08

    ld a, [$D684]                                 ; $60F3: $FA $84 $D6
    sub $04                                       ; $60F6: $D6 $04
    ld [$D684], a                                 ; $60F8: $EA $84 $D6

jr_03B_60FB:
    call Call_000_0424                            ; $60FB: $CD $24 $04
    ldh a, [$FF98]                                ; $60FE: $F0 $98
    ld e, a                                       ; $6100: $5F
    ldh a, [$FFAB]                                ; $6101: $F0 $AB
    or e                                          ; $6103: $B3
    bit 3, a                                      ; $6104: $CB $5F
    jp z, Jump_03B_6113                           ; $6106: $CA $13 $61

    xor a                                         ; $6109: $AF
    ld [$D680], a                                 ; $610A: $EA $80 $D6
    ld a, $8F                                     ; $610D: $3E $8F
    ldh [rWY], a                                  ; $610F: $E0 $4A
    jr jr_03B_611C                                ; $6111: $18 $09

Jump_03B_6113:
    ld a, $80                                     ; $6113: $3E $80
    ld [$D680], a                                 ; $6115: $EA $80 $D6
    ld a, $87                                     ; $6118: $3E $87
    ldh [rWY], a                                  ; $611A: $E0 $4A

jr_03B_611C:
    ldh a, [$FF99]                                ; $611C: $F0 $99
    ld e, a                                       ; $611E: $5F
    ldh a, [$FFAC]                                ; $611F: $F0 $AC
    or e                                          ; $6121: $B3
    bit 6, a                                      ; $6122: $CB $77
    jp nz, Jump_03B_6162                          ; $6124: $C2 $62 $61

    bit 0, a                                      ; $6127: $CB $47
    jp nz, Jump_03B_614B                          ; $6129: $C2 $4B $61

    bit 1, a                                      ; $612C: $CB $4F
    jp nz, Jump_03B_6153                          ; $612E: $C2 $53 $61

    bit 5, a                                      ; $6131: $CB $6F
    jp z, Jump_03B_60E3                           ; $6133: $CA $E3 $60

    ld hl, $C03A                                  ; $6136: $21 $3A $C0
    res 2, [hl]                                   ; $6139: $CB $96
    ld a, $00                                     ; $613B: $3E $00
    call Call_000_135D                            ; $613D: $CD $5D $13
    ld a, $05                                     ; $6140: $3E $05
    ld [$C314], a                                 ; $6142: $EA $14 $C3
    ld b, $3C                                     ; $6145: $06 $3C
    ld hl, $6F95                                  ; $6147: $21 $95 $6F
    rst RST_00                                    ; $614A: $C7

Jump_03B_614B:
    ld hl, $C31B                                  ; $614B: $21 $1B $C3
    inc [hl]                                      ; $614E: $34
    ld a, [hl]                                    ; $614F: $7E
    jp Jump_03B_6012                              ; $6150: $C3 $12 $60


Jump_03B_6153:
    ld a, [$C31B]                                 ; $6153: $FA $1B $C3
    or a                                          ; $6156: $B7
    jr nz, jr_03B_615B                            ; $6157: $20 $02

    ld a, $22                                     ; $6159: $3E $22

jr_03B_615B:
    dec a                                         ; $615B: $3D
    ld [$C31B], a                                 ; $615C: $EA $1B $C3
    jp Jump_03B_6012                              ; $615F: $C3 $12 $60


Jump_03B_6162:
    call Call_03B_7042                            ; $6162: $CD $42 $70
    di                                            ; $6165: $F3
    rst RST_10                                    ; $6166: $D7
    ld b, $32                                     ; $6167: $06 $32
    ld hl, $6062                                  ; $6169: $21 $62 $60
    rst RST_08                                    ; $616C: $CF
    ld a, $E7                                     ; $616D: $3E $E7
    rst RST_18                                    ; $616F: $DF
    xor a                                         ; $6170: $AF
    ldh [rSTAT], a                                ; $6171: $E0 $41
    ei                                            ; $6173: $FB
    ld a, $AD                                     ; $6174: $3E $AD
    call Call_000_1360                            ; $6176: $CD $60 $13
    ld a, $8F                                     ; $6179: $3E $8F
    ldh [rWY], a                                  ; $617B: $E0 $4A
    call Call_000_0430                            ; $617D: $CD $30 $04
    ld hl, $D680                                  ; $6180: $21 $80 $D6
    ld de, $5E49                                  ; $6183: $11 $49 $5E
    call Call_000_0F8E                            ; $6186: $CD $8E $0F

Jump_03B_6189:
    ld b, $32                                     ; $6189: $06 $32
    ld hl, $607E                                  ; $618B: $21 $7E $60
    rst RST_08                                    ; $618E: $CF
    ld a, [$C369]                                 ; $618F: $FA $69 $C3
    add a                                         ; $6192: $87
    add a                                         ; $6193: $87
    ld [$D694], a                                 ; $6194: $EA $94 $D6
    ld a, [$C329]                                 ; $6197: $FA $29 $C3
    ld e, a                                       ; $619A: $5F
    and $0F                                       ; $619B: $E6 $0F
    jr nz, jr_03B_61AC                            ; $619D: $20 $0D

    ld a, e                                       ; $619F: $7B
    ld e, $00                                     ; $61A0: $1E $00
    and $30                                       ; $61A2: $E6 $30
    jr z, jr_03B_61A8                             ; $61A4: $28 $02

    ld e, $80                                     ; $61A6: $1E $80

jr_03B_61A8:
    ld a, e                                       ; $61A8: $7B
    ld [$D680], a                                 ; $61A9: $EA $80 $D6

jr_03B_61AC:
    ld a, [$C36C]                                 ; $61AC: $FA $6C $C3
    or a                                          ; $61AF: $B7
    jr nz, jr_03B_61DF                            ; $61B0: $20 $2D

    ld a, [$C369]                                 ; $61B2: $FA $69 $C3
    cp $01                                        ; $61B5: $FE $01
    jr nz, jr_03B_61BF                            ; $61B7: $20 $06

    ld a, [$C36B]                                 ; $61B9: $FA $6B $C3
    add a                                         ; $61BC: $87
    jr c, jr_03B_61CF                             ; $61BD: $38 $10

jr_03B_61BF:
    ld hl, $C329                                  ; $61BF: $21 $29 $C3
    ld e, [hl]                                    ; $61C2: $5E
    inc hl                                        ; $61C3: $23
    ld d, [hl]                                    ; $61C4: $56
    inc de                                        ; $61C5: $13
    ld [hl], d                                    ; $61C6: $72
    dec hl                                        ; $61C7: $2B
    ld [hl], e                                    ; $61C8: $73
    call Call_000_0424                            ; $61C9: $CD $24 $04
    jp Jump_03B_6189                              ; $61CC: $C3 $89 $61


jr_03B_61CF:
    ld a, $80                                     ; $61CF: $3E $80
    ld [$D680], a                                 ; $61D1: $EA $80 $D6
    ld a, $1C                                     ; $61D4: $3E $1C
    ld [$D694], a                                 ; $61D6: $EA $94 $D6
    call Call_000_0438                            ; $61D9: $CD $38 $04
    jp Jump_03B_60DA                              ; $61DC: $C3 $DA $60


jr_03B_61DF:
    ld a, $C1                                     ; $61DF: $3E $C1
    call Call_000_1360                            ; $61E1: $CD $60 $13
    ld a, $80                                     ; $61E4: $3E $80
    ld [$D680], a                                 ; $61E6: $EA $80 $D6
    ld a, [$C36C]                                 ; $61E9: $FA $6C $C3
    and $0F                                       ; $61EC: $E6 $0F
    cp $05                                        ; $61EE: $FE $05
    jr c, jr_03B_61F4                             ; $61F0: $38 $02

    ld a, $04                                     ; $61F2: $3E $04

jr_03B_61F4:
    add $08                                       ; $61F4: $C6 $08
    add a                                         ; $61F6: $87
    add a                                         ; $61F7: $87
    ld [$D694], a                                 ; $61F8: $EA $94 $D6
    call Call_000_0438                            ; $61FB: $CD $38 $04
    call Call_000_0438                            ; $61FE: $CD $38 $04
    call Call_000_0438                            ; $6201: $CD $38 $04
    jp Jump_03B_60DA                              ; $6204: $C3 $DA $60


Call_03B_6207:
    ld a, [$C31B]                                 ; $6207: $FA $1B $C3
    and $3F                                       ; $620A: $E6 $3F
    ld e, a                                       ; $620C: $5F
    add a                                         ; $620D: $87
    add e                                         ; $620E: $83
    ld e, a                                       ; $620F: $5F
    ld d, $00                                     ; $6210: $16 $00
    ld hl, $6217                                  ; $6212: $21 $17 $62
    add hl, de                                    ; $6215: $19
    jp hl                                         ; $6216: $E9


    jp Jump_03B_62D7                              ; $6217: $C3 $D7 $62


    jp Jump_03B_6323                              ; $621A: $C3 $23 $63


    jp Jump_03B_636F                              ; $621D: $C3 $6F $63


    jp Jump_03B_63BB                              ; $6220: $C3 $BB $63


    jp Jump_03B_6415                              ; $6223: $C3 $15 $64


    jp Jump_03B_6461                              ; $6226: $C3 $61 $64


    jp Jump_03B_64AD                              ; $6229: $C3 $AD $64


    jp Jump_03B_64F9                              ; $622C: $C3 $F9 $64


    jp Jump_03B_6545                              ; $622F: $C3 $45 $65


    jp Jump_03B_6591                              ; $6232: $C3 $91 $65


    jp Jump_03B_65DD                              ; $6235: $C3 $DD $65


    jp Jump_03B_6629                              ; $6238: $C3 $29 $66


    jp Jump_03B_6675                              ; $623B: $C3 $75 $66


    jp Jump_03B_66A1                              ; $623E: $C3 $A1 $66


    jp Jump_03B_66CD                              ; $6241: $C3 $CD $66


    jp Jump_03B_66F9                              ; $6244: $C3 $F9 $66


    jp Jump_03B_6725                              ; $6247: $C3 $25 $67


    jp Jump_03B_6751                              ; $624A: $C3 $51 $67


    jp Jump_03B_677D                              ; $624D: $C3 $7D $67


    jp Jump_03B_67A9                              ; $6250: $C3 $A9 $67


    jp Jump_03B_67D5                              ; $6253: $C3 $D5 $67


    jp Jump_03B_686E                              ; $6256: $C3 $6E $68


    jp Jump_03B_6907                              ; $6259: $C3 $07 $69


    jp Jump_03B_693A                              ; $625C: $C3 $3A $69


    jp Jump_03B_69E6                              ; $625F: $C3 $E6 $69


    jp Jump_03B_6ABA                              ; $6262: $C3 $BA $6A


    jp Jump_03B_6B9C                              ; $6265: $C3 $9C $6B


    jp Jump_03B_6C9C                              ; $6268: $C3 $9C $6C


    jp Jump_03B_6DAA                              ; $626B: $C3 $AA $6D


    jp Jump_03B_6DDB                              ; $626E: $C3 $DB $6D


    jp Jump_03B_6E17                              ; $6271: $C3 $17 $6E


    jp Jump_03B_6E48                              ; $6274: $C3 $48 $6E


    jp Jump_03B_6E79                              ; $6277: $C3 $79 $6E


    jp Jump_03B_6EAA                              ; $627A: $C3 $AA $6E


    jp Jump_03B_62D7                              ; $627D: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $6280: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $6283: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $6286: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $6289: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $628C: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $628F: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $6292: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $6295: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $6298: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $629B: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $629E: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62A1: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62A4: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62A7: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62AA: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62AD: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62B0: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62B3: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62B6: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62B9: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62BC: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62BF: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62C2: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62C5: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62C8: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62CB: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62CE: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62D1: $C3 $D7 $62


    jp Jump_03B_62D7                              ; $62D4: $C3 $D7 $62


Jump_03B_62D7:
    ld hl, $4EF3                                  ; $62D7: $21 $F3 $4E
    ld b, $2A                                     ; $62DA: $06 $2A
    ld de, $C369                                  ; $62DC: $11 $69 $C3
    rst RST_20                                    ; $62DF: $E7
    ld hl, $C369                                  ; $62E0: $21 $69 $C3
    ld de, $8820                                  ; $62E3: $11 $20 $88
    ld b, $31                                     ; $62E6: $06 $31
    call Call_000_1188                            ; $62E8: $CD $88 $11
    ld hl, $4000                                  ; $62EB: $21 $00 $40
    ld b, $32                                     ; $62EE: $06 $32
    ld de, $C349                                  ; $62F0: $11 $49 $C3
    rst RST_20                                    ; $62F3: $E7
    ld hl, $C349                                  ; $62F4: $21 $49 $C3
    ld de, $8B30                                  ; $62F7: $11 $30 $8B
    ld b, $0C                                     ; $62FA: $06 $0C
    call Call_000_1188                            ; $62FC: $CD $88 $11
    ld de, $46D7                                  ; $62FF: $11 $D7 $46
    ld hl, $9822                                  ; $6302: $21 $22 $98
    ld b, $07                                     ; $6305: $06 $07
    ld c, $07                                     ; $6307: $0E $07
    ld a, $82                                     ; $6309: $3E $82
    call Call_000_0FF7                            ; $630B: $CD $F7 $0F
    ld e, $04                                     ; $630E: $1E $04
    ld d, $B3                                     ; $6310: $16 $B3
    ld hl, $988B                                  ; $6312: $21 $8B $98
    ld b, $06                                     ; $6315: $06 $06
    ld c, $02                                     ; $6317: $0E $02
    call Call_000_1139                            ; $6319: $CD $39 $11
    ld de, $0012                                  ; $631C: $11 $12 $00
    call Call_000_14C0                            ; $631F: $CD $C0 $14
    ret                                           ; $6322: $C9


Jump_03B_6323:
    ld hl, $51BB                                  ; $6323: $21 $BB $51
    ld b, $2A                                     ; $6326: $06 $2A
    ld de, $C369                                  ; $6328: $11 $69 $C3
    rst RST_20                                    ; $632B: $E7
    ld hl, $C369                                  ; $632C: $21 $69 $C3
    ld de, $8820                                  ; $632F: $11 $20 $88
    ld b, $31                                     ; $6332: $06 $31
    call Call_000_1188                            ; $6334: $CD $88 $11
    ld hl, $4000                                  ; $6337: $21 $00 $40
    ld b, $32                                     ; $633A: $06 $32
    ld de, $C349                                  ; $633C: $11 $49 $C3
    rst RST_20                                    ; $633F: $E7
    ld hl, $CAA9                                  ; $6340: $21 $A9 $CA
    ld de, $8B30                                  ; $6343: $11 $30 $8B
    ld b, $08                                     ; $6346: $06 $08
    call Call_000_1188                            ; $6348: $CD $88 $11
    ld de, $4739                                  ; $634B: $11 $39 $47
    ld hl, $9823                                  ; $634E: $21 $23 $98
    ld b, $07                                     ; $6351: $06 $07
    ld c, $07                                     ; $6353: $0E $07
    ld a, $82                                     ; $6355: $3E $82
    call Call_000_0FF7                            ; $6357: $CD $F7 $0F
    ld e, $04                                     ; $635A: $1E $04
    ld d, $B3                                     ; $635C: $16 $B3
    ld hl, $988C                                  ; $635E: $21 $8C $98
    ld b, $04                                     ; $6361: $06 $04
    ld c, $02                                     ; $6363: $0E $02
    call Call_000_1139                            ; $6365: $CD $39 $11
    ld de, $0013                                  ; $6368: $11 $13 $00
    call Call_000_14C0                            ; $636B: $CD $C0 $14
    ret                                           ; $636E: $C9


Jump_03B_636F:
    ld hl, $5489                                  ; $636F: $21 $89 $54
    ld b, $2A                                     ; $6372: $06 $2A
    ld de, $C369                                  ; $6374: $11 $69 $C3
    rst RST_20                                    ; $6377: $E7
    ld hl, $C369                                  ; $6378: $21 $69 $C3
    ld de, $8820                                  ; $637B: $11 $20 $88
    ld b, $31                                     ; $637E: $06 $31
    call Call_000_1188                            ; $6380: $CD $88 $11
    ld hl, $4000                                  ; $6383: $21 $00 $40
    ld b, $32                                     ; $6386: $06 $32
    ld de, $C349                                  ; $6388: $11 $49 $C3
    rst RST_20                                    ; $638B: $E7
    ld hl, $C469                                  ; $638C: $21 $69 $C4
    ld de, $8B30                                  ; $638F: $11 $30 $8B
    ld b, $0C                                     ; $6392: $06 $0C
    call Call_000_1188                            ; $6394: $CD $88 $11
    ld de, $479B                                  ; $6397: $11 $9B $47
    ld hl, $9822                                  ; $639A: $21 $22 $98
    ld b, $07                                     ; $639D: $06 $07
    ld c, $07                                     ; $639F: $0E $07
    ld a, $82                                     ; $63A1: $3E $82
    call Call_000_0FF7                            ; $63A3: $CD $F7 $0F
    ld e, $04                                     ; $63A6: $1E $04
    ld d, $B3                                     ; $63A8: $16 $B3
    ld hl, $988B                                  ; $63AA: $21 $8B $98
    ld b, $06                                     ; $63AD: $06 $06
    ld c, $02                                     ; $63AF: $0E $02
    call Call_000_1139                            ; $63B1: $CD $39 $11
    ld de, $0014                                  ; $63B4: $11 $14 $00
    call Call_000_14C0                            ; $63B7: $CD $C0 $14
    ret                                           ; $63BA: $C9


Jump_03B_63BB:
    ld hl, $5779                                  ; $63BB: $21 $79 $57
    ld b, $2A                                     ; $63BE: $06 $2A
    ld de, $C369                                  ; $63C0: $11 $69 $C3
    rst RST_20                                    ; $63C3: $E7
    ld hl, $C369                                  ; $63C4: $21 $69 $C3
    ld de, $8820                                  ; $63C7: $11 $20 $88
    ld b, $31                                     ; $63CA: $06 $31
    call Call_000_1188                            ; $63CC: $CD $88 $11
    ld hl, $4000                                  ; $63CF: $21 $00 $40
    ld b, $32                                     ; $63D2: $06 $32
    ld de, $C349                                  ; $63D4: $11 $49 $C3
    rst RST_20                                    ; $63D7: $E7
    ld hl, $C8C9                                  ; $63D8: $21 $C9 $C8
    ld de, $8B30                                  ; $63DB: $11 $30 $8B
    ld b, $1E                                     ; $63DE: $06 $1E
    call Call_000_1188                            ; $63E0: $CD $88 $11
    ld de, $47FD                                  ; $63E3: $11 $FD $47
    ld hl, $9821                                  ; $63E6: $21 $21 $98
    ld b, $07                                     ; $63E9: $06 $07
    ld c, $07                                     ; $63EB: $0E $07
    ld a, $82                                     ; $63ED: $3E $82
    call Call_000_0FF7                            ; $63EF: $CD $F7 $0F
    ld e, $04                                     ; $63F2: $1E $04
    ld d, $B3                                     ; $63F4: $16 $B3
    ld hl, $986A                                  ; $63F6: $21 $6A $98
    ld b, $06                                     ; $63F9: $06 $06
    ld c, $02                                     ; $63FB: $0E $02
    call Call_000_1139                            ; $63FD: $CD $39 $11
    ld e, $04                                     ; $6400: $1E $04
    ld d, $BF                                     ; $6402: $16 $BF
    ld hl, $98AA                                  ; $6404: $21 $AA $98
    ld b, $09                                     ; $6407: $06 $09
    ld c, $02                                     ; $6409: $0E $02
    call Call_000_1139                            ; $640B: $CD $39 $11
    ld de, $0015                                  ; $640E: $11 $15 $00
    call Call_000_14C0                            ; $6411: $CD $C0 $14
    ret                                           ; $6414: $C9


Jump_03B_6415:
    ld hl, $5A13                                  ; $6415: $21 $13 $5A
    ld b, $2A                                     ; $6418: $06 $2A
    ld de, $C369                                  ; $641A: $11 $69 $C3
    rst RST_20                                    ; $641D: $E7
    ld hl, $C369                                  ; $641E: $21 $69 $C3
    ld de, $8820                                  ; $6421: $11 $20 $88
    ld b, $31                                     ; $6424: $06 $31
    call Call_000_1188                            ; $6426: $CD $88 $11
    ld hl, $4000                                  ; $6429: $21 $00 $40
    ld b, $32                                     ; $642C: $06 $32
    ld de, $C349                                  ; $642E: $11 $49 $C3
    rst RST_20                                    ; $6431: $E7
    ld hl, $C529                                  ; $6432: $21 $29 $C5
    ld de, $8B30                                  ; $6435: $11 $30 $8B
    ld b, $0A                                     ; $6438: $06 $0A
    call Call_000_1188                            ; $643A: $CD $88 $11
    ld de, $485F                                  ; $643D: $11 $5F $48
    ld hl, $9823                                  ; $6440: $21 $23 $98
    ld b, $07                                     ; $6443: $06 $07
    ld c, $07                                     ; $6445: $0E $07
    ld a, $82                                     ; $6447: $3E $82
    call Call_000_0FF7                            ; $6449: $CD $F7 $0F
    ld e, $04                                     ; $644C: $1E $04
    ld d, $B3                                     ; $644E: $16 $B3
    ld hl, $988C                                  ; $6450: $21 $8C $98
    ld b, $05                                     ; $6453: $06 $05
    ld c, $02                                     ; $6455: $0E $02
    call Call_000_1139                            ; $6457: $CD $39 $11
    ld de, $0016                                  ; $645A: $11 $16 $00
    call Call_000_14C0                            ; $645D: $CD $C0 $14
    ret                                           ; $6460: $C9


Jump_03B_6461:
    ld hl, $5C89                                  ; $6461: $21 $89 $5C
    ld b, $2A                                     ; $6464: $06 $2A
    ld de, $C369                                  ; $6466: $11 $69 $C3
    rst RST_20                                    ; $6469: $E7
    ld hl, $C369                                  ; $646A: $21 $69 $C3
    ld de, $8820                                  ; $646D: $11 $20 $88
    ld b, $31                                     ; $6470: $06 $31
    call Call_000_1188                            ; $6472: $CD $88 $11
    ld hl, $4000                                  ; $6475: $21 $00 $40
    ld b, $32                                     ; $6478: $06 $32
    ld de, $C349                                  ; $647A: $11 $49 $C3
    rst RST_20                                    ; $647D: $E7
    ld hl, $C5C9                                  ; $647E: $21 $C9 $C5
    ld de, $8B30                                  ; $6481: $11 $30 $8B
    ld b, $0C                                     ; $6484: $06 $0C
    call Call_000_1188                            ; $6486: $CD $88 $11
    ld de, $48C1                                  ; $6489: $11 $C1 $48
    ld hl, $9822                                  ; $648C: $21 $22 $98
    ld b, $07                                     ; $648F: $06 $07
    ld c, $07                                     ; $6491: $0E $07
    ld a, $82                                     ; $6493: $3E $82
    call Call_000_0FF7                            ; $6495: $CD $F7 $0F
    ld e, $04                                     ; $6498: $1E $04
    ld d, $B3                                     ; $649A: $16 $B3
    ld hl, $988B                                  ; $649C: $21 $8B $98
    ld b, $06                                     ; $649F: $06 $06
    ld c, $02                                     ; $64A1: $0E $02
    call Call_000_1139                            ; $64A3: $CD $39 $11
    ld de, $0017                                  ; $64A6: $11 $17 $00
    call Call_000_14C0                            ; $64A9: $CD $C0 $14
    ret                                           ; $64AC: $C9


Jump_03B_64AD:
    ld hl, $5F8F                                  ; $64AD: $21 $8F $5F
    ld b, $2A                                     ; $64B0: $06 $2A
    ld de, $C369                                  ; $64B2: $11 $69 $C3
    rst RST_20                                    ; $64B5: $E7
    ld hl, $C369                                  ; $64B6: $21 $69 $C3
    ld de, $8820                                  ; $64B9: $11 $20 $88
    ld b, $31                                     ; $64BC: $06 $31
    call Call_000_1188                            ; $64BE: $CD $88 $11
    ld hl, $4000                                  ; $64C1: $21 $00 $40
    ld b, $32                                     ; $64C4: $06 $32
    ld de, $C349                                  ; $64C6: $11 $49 $C3
    rst RST_20                                    ; $64C9: $E7
    ld hl, $C689                                  ; $64CA: $21 $89 $C6
    ld de, $8B30                                  ; $64CD: $11 $30 $8B
    ld b, $0E                                     ; $64D0: $06 $0E
    call Call_000_1188                            ; $64D2: $CD $88 $11
    ld de, $4923                                  ; $64D5: $11 $23 $49
    ld hl, $9822                                  ; $64D8: $21 $22 $98
    ld b, $07                                     ; $64DB: $06 $07
    ld c, $07                                     ; $64DD: $0E $07
    ld a, $82                                     ; $64DF: $3E $82
    call Call_000_0FF7                            ; $64E1: $CD $F7 $0F
    ld e, $04                                     ; $64E4: $1E $04
    ld d, $B3                                     ; $64E6: $16 $B3
    ld hl, $988B                                  ; $64E8: $21 $8B $98
    ld b, $07                                     ; $64EB: $06 $07
    ld c, $02                                     ; $64ED: $0E $02
    call Call_000_1139                            ; $64EF: $CD $39 $11
    ld de, $0018                                  ; $64F2: $11 $18 $00
    call Call_000_14C0                            ; $64F5: $CD $C0 $14
    ret                                           ; $64F8: $C9


Jump_03B_64F9:
    ld hl, $6239                                  ; $64F9: $21 $39 $62
    ld b, $2A                                     ; $64FC: $06 $2A
    ld de, $C369                                  ; $64FE: $11 $69 $C3
    rst RST_20                                    ; $6501: $E7
    ld hl, $C369                                  ; $6502: $21 $69 $C3
    ld de, $8820                                  ; $6505: $11 $20 $88
    ld b, $31                                     ; $6508: $06 $31
    call Call_000_1188                            ; $650A: $CD $88 $11
    ld hl, $4000                                  ; $650D: $21 $00 $40
    ld b, $32                                     ; $6510: $06 $32
    ld de, $C349                                  ; $6512: $11 $49 $C3
    rst RST_20                                    ; $6515: $E7
    ld hl, $C409                                  ; $6516: $21 $09 $C4
    ld de, $8B30                                  ; $6519: $11 $30 $8B
    ld b, $06                                     ; $651C: $06 $06
    call Call_000_1188                            ; $651E: $CD $88 $11
    ld de, $4985                                  ; $6521: $11 $85 $49
    ld hl, $9824                                  ; $6524: $21 $24 $98
    ld b, $07                                     ; $6527: $06 $07
    ld c, $07                                     ; $6529: $0E $07
    ld a, $82                                     ; $652B: $3E $82
    call Call_000_0FF7                            ; $652D: $CD $F7 $0F
    ld e, $04                                     ; $6530: $1E $04
    ld d, $B3                                     ; $6532: $16 $B3
    ld hl, $988D                                  ; $6534: $21 $8D $98
    ld b, $03                                     ; $6537: $06 $03
    ld c, $02                                     ; $6539: $0E $02
    call Call_000_1139                            ; $653B: $CD $39 $11
    ld de, $0019                                  ; $653E: $11 $19 $00
    call Call_000_14C0                            ; $6541: $CD $C0 $14
    ret                                           ; $6544: $C9


Jump_03B_6545:
    ld hl, $650F                                  ; $6545: $21 $0F $65
    ld b, $2A                                     ; $6548: $06 $2A
    ld de, $C369                                  ; $654A: $11 $69 $C3
    rst RST_20                                    ; $654D: $E7
    ld hl, $C369                                  ; $654E: $21 $69 $C3
    ld de, $8820                                  ; $6551: $11 $20 $88
    ld b, $31                                     ; $6554: $06 $31
    call Call_000_1188                            ; $6556: $CD $88 $11
    ld hl, $4000                                  ; $6559: $21 $00 $40
    ld b, $32                                     ; $655C: $06 $32
    ld de, $C349                                  ; $655E: $11 $49 $C3
    rst RST_20                                    ; $6561: $E7
    ld hl, $CB29                                  ; $6562: $21 $29 $CB
    ld de, $8B30                                  ; $6565: $11 $30 $8B
    ld b, $0C                                     ; $6568: $06 $0C
    call Call_000_1188                            ; $656A: $CD $88 $11
    ld de, $49E7                                  ; $656D: $11 $E7 $49
    ld hl, $9822                                  ; $6570: $21 $22 $98
    ld b, $07                                     ; $6573: $06 $07
    ld c, $07                                     ; $6575: $0E $07
    ld a, $82                                     ; $6577: $3E $82
    call Call_000_0FF7                            ; $6579: $CD $F7 $0F
    ld e, $04                                     ; $657C: $1E $04
    ld d, $B3                                     ; $657E: $16 $B3
    ld hl, $988B                                  ; $6580: $21 $8B $98
    ld b, $06                                     ; $6583: $06 $06
    ld c, $02                                     ; $6585: $0E $02
    call Call_000_1139                            ; $6587: $CD $39 $11
    ld de, $001A                                  ; $658A: $11 $1A $00
    call Call_000_14C0                            ; $658D: $CD $C0 $14
    ret                                           ; $6590: $C9


Jump_03B_6591:
    ld hl, $67E9                                  ; $6591: $21 $E9 $67
    ld b, $2A                                     ; $6594: $06 $2A
    ld de, $C369                                  ; $6596: $11 $69 $C3
    rst RST_20                                    ; $6599: $E7
    ld hl, $C369                                  ; $659A: $21 $69 $C3
    ld de, $8820                                  ; $659D: $11 $20 $88
    ld b, $31                                     ; $65A0: $06 $31
    call Call_000_1188                            ; $65A2: $CD $88 $11
    ld hl, $4000                                  ; $65A5: $21 $00 $40
    ld b, $32                                     ; $65A8: $06 $32
    ld de, $C349                                  ; $65AA: $11 $49 $C3
    rst RST_20                                    ; $65AD: $E7
    ld hl, $C769                                  ; $65AE: $21 $69 $C7
    ld de, $8B30                                  ; $65B1: $11 $30 $8B
    ld b, $16                                     ; $65B4: $06 $16
    call Call_000_1188                            ; $65B6: $CD $88 $11
    ld de, $4A49                                  ; $65B9: $11 $49 $4A
    ld hl, $9821                                  ; $65BC: $21 $21 $98
    ld b, $07                                     ; $65BF: $06 $07
    ld c, $07                                     ; $65C1: $0E $07
    ld a, $82                                     ; $65C3: $3E $82
    call Call_000_0FF7                            ; $65C5: $CD $F7 $0F
    ld e, $04                                     ; $65C8: $1E $04
    ld d, $B3                                     ; $65CA: $16 $B3
    ld hl, $9889                                  ; $65CC: $21 $89 $98
    ld b, $0B                                     ; $65CF: $06 $0B
    ld c, $02                                     ; $65D1: $0E $02
    call Call_000_1139                            ; $65D3: $CD $39 $11
    ld de, $001B                                  ; $65D6: $11 $1B $00
    call Call_000_14C0                            ; $65D9: $CD $C0 $14
    ret                                           ; $65DC: $C9


Jump_03B_65DD:
    ld de, $0012                                  ; $65DD: $11 $12 $00
    call Call_000_14C0                            ; $65E0: $CD $C0 $14
    ld hl, $4E67                                  ; $65E3: $21 $67 $4E
    ld b, $31                                     ; $65E6: $06 $31
    ld de, $C369                                  ; $65E8: $11 $69 $C3
    rst RST_20                                    ; $65EB: $E7
    ld hl, $C369                                  ; $65EC: $21 $69 $C3
    ld de, $8820                                  ; $65EF: $11 $20 $88
    ld b, $31                                     ; $65F2: $06 $31
    call Call_000_1188                            ; $65F4: $CD $88 $11
    ld de, $4AAB                                  ; $65F7: $11 $AB $4A
    ld hl, $9821                                  ; $65FA: $21 $21 $98
    ld a, $66                                     ; $65FD: $3E $66
    ld b, $FC                                     ; $65FF: $06 $FC
    ld c, $82                                     ; $6601: $0E $82
    call Call_000_107E                            ; $6603: $CD $7E $10

Jump_03B_6606:
    ld hl, $44D5                                  ; $6606: $21 $D5 $44
    ld b, $32                                     ; $6609: $06 $32
    ld de, $C349                                  ; $660B: $11 $49 $C3
    rst RST_20                                    ; $660E: $E7
    ld hl, $C349                                  ; $660F: $21 $49 $C3
    ld de, $8B30                                  ; $6612: $11 $30 $8B
    ld b, $40                                     ; $6615: $06 $40
    call Call_000_1188                            ; $6617: $CD $88 $11
    ld e, $04                                     ; $661A: $1E $04
    ld d, $B3                                     ; $661C: $16 $B3
    ld hl, $986A                                  ; $661E: $21 $6A $98
    ld b, $08                                     ; $6621: $06 $08
    ld c, $04                                     ; $6623: $0E $04
    call Call_000_1111                            ; $6625: $CD $11 $11
    ret                                           ; $6628: $C9


Jump_03B_6629:
    ld de, $0013                                  ; $6629: $11 $13 $00
    call Call_000_14C0                            ; $662C: $CD $C0 $14
    ld hl, $5132                                  ; $662F: $21 $32 $51
    ld b, $31                                     ; $6632: $06 $31
    ld de, $C369                                  ; $6634: $11 $69 $C3
    rst RST_20                                    ; $6637: $E7
    ld hl, $C369                                  ; $6638: $21 $69 $C3
    ld de, $8820                                  ; $663B: $11 $20 $88
    ld b, $31                                     ; $663E: $06 $31
    call Call_000_1188                            ; $6640: $CD $88 $11
    ld de, $4B0D                                  ; $6643: $11 $0D $4B
    ld hl, $982C                                  ; $6646: $21 $2C $98
    ld a, $66                                     ; $6649: $3E $66
    ld b, $FC                                     ; $664B: $06 $FC
    ld c, $82                                     ; $664D: $0E $82
    call Call_000_107E                            ; $664F: $CD $7E $10

Jump_03B_6652:
    ld hl, $44D5                                  ; $6652: $21 $D5 $44
    ld b, $32                                     ; $6655: $06 $32
    ld de, $C349                                  ; $6657: $11 $49 $C3
    rst RST_20                                    ; $665A: $E7
    ld hl, $C349                                  ; $665B: $21 $49 $C3
    ld de, $8B30                                  ; $665E: $11 $30 $8B
    ld b, $40                                     ; $6661: $06 $40
    call Call_000_1188                            ; $6663: $CD $88 $11
    ld e, $04                                     ; $6666: $1E $04
    ld d, $B3                                     ; $6668: $16 $B3
    ld hl, $9862                                  ; $666A: $21 $62 $98
    ld b, $08                                     ; $666D: $06 $08
    ld c, $04                                     ; $666F: $0E $04
    call Call_000_1111                            ; $6671: $CD $11 $11
    ret                                           ; $6674: $C9


Jump_03B_6675:
    ld de, $0014                                  ; $6675: $11 $14 $00
    call Call_000_14C0                            ; $6678: $CD $C0 $14
    ld hl, $53BF                                  ; $667B: $21 $BF $53
    ld b, $31                                     ; $667E: $06 $31
    ld de, $C369                                  ; $6680: $11 $69 $C3
    rst RST_20                                    ; $6683: $E7
    ld hl, $C369                                  ; $6684: $21 $69 $C3
    ld de, $8820                                  ; $6687: $11 $20 $88
    ld b, $31                                     ; $668A: $06 $31
    call Call_000_1188                            ; $668C: $CD $88 $11
    ld de, $4B6F                                  ; $668F: $11 $6F $4B
    ld hl, $9821                                  ; $6692: $21 $21 $98
    ld a, $66                                     ; $6695: $3E $66
    ld b, $FC                                     ; $6697: $06 $FC
    ld c, $82                                     ; $6699: $0E $82
    call Call_000_107E                            ; $669B: $CD $7E $10
    jp Jump_03B_6606                              ; $669E: $C3 $06 $66


Jump_03B_66A1:
    ld de, $0015                                  ; $66A1: $11 $15 $00
    call Call_000_14C0                            ; $66A4: $CD $C0 $14
    ld hl, $55F5                                  ; $66A7: $21 $F5 $55
    ld b, $31                                     ; $66AA: $06 $31
    ld de, $C369                                  ; $66AC: $11 $69 $C3
    rst RST_20                                    ; $66AF: $E7
    ld hl, $C369                                  ; $66B0: $21 $69 $C3
    ld de, $8820                                  ; $66B3: $11 $20 $88
    ld b, $31                                     ; $66B6: $06 $31
    call Call_000_1188                            ; $66B8: $CD $88 $11
    ld de, $4BD1                                  ; $66BB: $11 $D1 $4B
    ld hl, $982C                                  ; $66BE: $21 $2C $98
    ld a, $66                                     ; $66C1: $3E $66
    ld b, $FC                                     ; $66C3: $06 $FC
    ld c, $82                                     ; $66C5: $0E $82
    call Call_000_107E                            ; $66C7: $CD $7E $10
    jp Jump_03B_6652                              ; $66CA: $C3 $52 $66


Jump_03B_66CD:
    ld de, $0016                                  ; $66CD: $11 $16 $00
    call Call_000_14C0                            ; $66D0: $CD $C0 $14
    ld hl, $57C4                                  ; $66D3: $21 $C4 $57
    ld b, $31                                     ; $66D6: $06 $31
    ld de, $C369                                  ; $66D8: $11 $69 $C3
    rst RST_20                                    ; $66DB: $E7
    ld hl, $C369                                  ; $66DC: $21 $69 $C3
    ld de, $8820                                  ; $66DF: $11 $20 $88
    ld b, $31                                     ; $66E2: $06 $31
    call Call_000_1188                            ; $66E4: $CD $88 $11
    ld de, $4C33                                  ; $66E7: $11 $33 $4C
    ld hl, $9821                                  ; $66EA: $21 $21 $98
    ld a, $66                                     ; $66ED: $3E $66
    ld b, $FC                                     ; $66EF: $06 $FC
    ld c, $82                                     ; $66F1: $0E $82
    call Call_000_107E                            ; $66F3: $CD $7E $10
    jp Jump_03B_6606                              ; $66F6: $C3 $06 $66


Jump_03B_66F9:
    ld de, $0017                                  ; $66F9: $11 $17 $00
    call Call_000_14C0                            ; $66FC: $CD $C0 $14
    ld hl, $5A47                                  ; $66FF: $21 $47 $5A
    ld b, $31                                     ; $6702: $06 $31
    ld de, $C369                                  ; $6704: $11 $69 $C3
    rst RST_20                                    ; $6707: $E7
    ld hl, $C369                                  ; $6708: $21 $69 $C3
    ld de, $8820                                  ; $670B: $11 $20 $88
    ld b, $31                                     ; $670E: $06 $31
    call Call_000_1188                            ; $6710: $CD $88 $11
    ld de, $4C95                                  ; $6713: $11 $95 $4C
    ld hl, $982C                                  ; $6716: $21 $2C $98
    ld a, $66                                     ; $6719: $3E $66
    ld b, $FC                                     ; $671B: $06 $FC
    ld c, $82                                     ; $671D: $0E $82
    call Call_000_107E                            ; $671F: $CD $7E $10
    jp Jump_03B_6652                              ; $6722: $C3 $52 $66


Jump_03B_6725:
    ld de, $0018                                  ; $6725: $11 $18 $00
    call Call_000_14C0                            ; $6728: $CD $C0 $14
    ld hl, $5D29                                  ; $672B: $21 $29 $5D
    ld b, $31                                     ; $672E: $06 $31
    ld de, $C369                                  ; $6730: $11 $69 $C3
    rst RST_20                                    ; $6733: $E7
    ld hl, $C369                                  ; $6734: $21 $69 $C3
    ld de, $8820                                  ; $6737: $11 $20 $88
    ld b, $31                                     ; $673A: $06 $31
    call Call_000_1188                            ; $673C: $CD $88 $11
    ld de, $4CF7                                  ; $673F: $11 $F7 $4C
    ld hl, $9821                                  ; $6742: $21 $21 $98
    ld a, $66                                     ; $6745: $3E $66
    ld b, $FC                                     ; $6747: $06 $FC
    ld c, $82                                     ; $6749: $0E $82
    call Call_000_107E                            ; $674B: $CD $7E $10
    jp Jump_03B_6606                              ; $674E: $C3 $06 $66


Jump_03B_6751:
    ld de, $0019                                  ; $6751: $11 $19 $00
    call Call_000_14C0                            ; $6754: $CD $C0 $14
    ld hl, $5FC1                                  ; $6757: $21 $C1 $5F
    ld b, $31                                     ; $675A: $06 $31
    ld de, $C369                                  ; $675C: $11 $69 $C3
    rst RST_20                                    ; $675F: $E7
    ld hl, $C369                                  ; $6760: $21 $69 $C3
    ld de, $8820                                  ; $6763: $11 $20 $88
    ld b, $31                                     ; $6766: $06 $31
    call Call_000_1188                            ; $6768: $CD $88 $11
    ld de, $4D59                                  ; $676B: $11 $59 $4D
    ld hl, $982C                                  ; $676E: $21 $2C $98
    ld a, $66                                     ; $6771: $3E $66
    ld b, $FC                                     ; $6773: $06 $FC
    ld c, $82                                     ; $6775: $0E $82
    call Call_000_107E                            ; $6777: $CD $7E $10
    jp Jump_03B_6652                              ; $677A: $C3 $52 $66


Jump_03B_677D:
    ld de, $001A                                  ; $677D: $11 $1A $00
    call Call_000_14C0                            ; $6780: $CD $C0 $14
    ld hl, $6268                                  ; $6783: $21 $68 $62
    ld b, $31                                     ; $6786: $06 $31
    ld de, $C369                                  ; $6788: $11 $69 $C3
    rst RST_20                                    ; $678B: $E7
    ld hl, $C369                                  ; $678C: $21 $69 $C3
    ld de, $8820                                  ; $678F: $11 $20 $88
    ld b, $31                                     ; $6792: $06 $31
    call Call_000_1188                            ; $6794: $CD $88 $11
    ld de, $4DBB                                  ; $6797: $11 $BB $4D
    ld hl, $9821                                  ; $679A: $21 $21 $98
    ld a, $66                                     ; $679D: $3E $66
    ld b, $FC                                     ; $679F: $06 $FC
    ld c, $82                                     ; $67A1: $0E $82
    call Call_000_107E                            ; $67A3: $CD $7E $10
    jp Jump_03B_6606                              ; $67A6: $C3 $06 $66


Jump_03B_67A9:
    ld de, $001B                                  ; $67A9: $11 $1B $00
    call Call_000_14C0                            ; $67AC: $CD $C0 $14
    ld hl, $64D5                                  ; $67AF: $21 $D5 $64
    ld b, $31                                     ; $67B2: $06 $31
    ld de, $C369                                  ; $67B4: $11 $69 $C3
    rst RST_20                                    ; $67B7: $E7
    ld hl, $C369                                  ; $67B8: $21 $69 $C3
    ld de, $8820                                  ; $67BB: $11 $20 $88
    ld b, $31                                     ; $67BE: $06 $31
    call Call_000_1188                            ; $67C0: $CD $88 $11
    ld de, $4E1D                                  ; $67C3: $11 $1D $4E
    ld hl, $982C                                  ; $67C6: $21 $2C $98
    ld a, $66                                     ; $67C9: $3E $66
    ld b, $FC                                     ; $67CB: $06 $FC
    ld c, $82                                     ; $67CD: $0E $82
    call Call_000_107E                            ; $67CF: $CD $7E $10
    jp Jump_03B_6652                              ; $67D2: $C3 $52 $66


Jump_03B_67D5:
    ld de, $0023                                  ; $67D5: $11 $23 $00
    call Call_000_14C0                            ; $67D8: $CD $C0 $14
    ld hl, $45C7                                  ; $67DB: $21 $C7 $45
    ld b, $32                                     ; $67DE: $06 $32
    ld de, $C349                                  ; $67E0: $11 $49 $C3
    rst RST_20                                    ; $67E3: $E7
    ld hl, $C349                                  ; $67E4: $21 $49 $C3
    ld de, $8820                                  ; $67E7: $11 $20 $88
    ld b, $48                                     ; $67EA: $06 $48
    call Call_000_1188                            ; $67EC: $CD $88 $11
    ld e, $00                                     ; $67EF: $1E $00
    ld d, $82                                     ; $67F1: $16 $82
    ld hl, $9822                                  ; $67F3: $21 $22 $98
    ld b, $10                                     ; $67F6: $06 $10
    ld c, $04                                     ; $67F8: $0E $04
    call Call_000_1111                            ; $67FA: $CD $11 $11
    ld e, $00                                     ; $67FD: $1E $00
    ld d, $C2                                     ; $67FF: $16 $C2
    ld hl, $9800                                  ; $6801: $21 $00 $98
    ld b, $01                                     ; $6804: $06 $01
    ld c, $01                                     ; $6806: $0E $01
    call Call_000_10EA                            ; $6808: $CD $EA $10
    ld e, $00                                     ; $680B: $1E $00
    ld d, $C3                                     ; $680D: $16 $C3
    ld hl, $9801                                  ; $680F: $21 $01 $98
    ld b, $12                                     ; $6812: $06 $12
    ld c, $01                                     ; $6814: $0E $01
    call Call_000_10EA                            ; $6816: $CD $EA $10
    ld e, $00                                     ; $6819: $1E $00
    ld d, $C4                                     ; $681B: $16 $C4
    ld hl, $9813                                  ; $681D: $21 $13 $98
    ld b, $01                                     ; $6820: $06 $01
    ld c, $01                                     ; $6822: $0E $01
    call Call_000_10EA                            ; $6824: $CD $EA $10
    ld e, $00                                     ; $6827: $1E $00
    ld d, $C5                                     ; $6829: $16 $C5
    ld hl, $9820                                  ; $682B: $21 $20 $98
    ld b, $01                                     ; $682E: $06 $01
    ld c, $10                                     ; $6830: $0E $10
    call Call_000_10EA                            ; $6832: $CD $EA $10
    ld e, $00                                     ; $6835: $1E $00
    ld d, $C6                                     ; $6837: $16 $C6
    ld hl, $9833                                  ; $6839: $21 $33 $98
    ld b, $01                                     ; $683C: $06 $01
    ld c, $10                                     ; $683E: $0E $10
    call Call_000_10EA                            ; $6840: $CD $EA $10
    ld e, $00                                     ; $6843: $1E $00
    ld d, $C7                                     ; $6845: $16 $C7
    ld hl, $9A20                                  ; $6847: $21 $20 $9A
    ld b, $01                                     ; $684A: $06 $01
    ld c, $01                                     ; $684C: $0E $01
    call Call_000_10EA                            ; $684E: $CD $EA $10
    ld e, $00                                     ; $6851: $1E $00
    ld d, $C8                                     ; $6853: $16 $C8
    ld hl, $9A21                                  ; $6855: $21 $21 $9A
    ld b, $12                                     ; $6858: $06 $12
    ld c, $01                                     ; $685A: $0E $01
    call Call_000_10EA                            ; $685C: $CD $EA $10
    ld e, $00                                     ; $685F: $1E $00
    ld d, $C9                                     ; $6861: $16 $C9
    ld hl, $9A33                                  ; $6863: $21 $33 $9A
    ld b, $01                                     ; $6866: $06 $01
    ld c, $01                                     ; $6868: $0E $01
    call Call_000_10EA                            ; $686A: $CD $EA $10
    ret                                           ; $686D: $C9


Jump_03B_686E:
    ld de, $0023                                  ; $686E: $11 $23 $00
    call Call_000_14C0                            ; $6871: $CD $C0 $14
    ld hl, $481F                                  ; $6874: $21 $1F $48
    ld b, $32                                     ; $6877: $06 $32
    ld de, $C349                                  ; $6879: $11 $49 $C3
    rst RST_20                                    ; $687C: $E7
    ld hl, $C349                                  ; $687D: $21 $49 $C3
    ld de, $8820                                  ; $6880: $11 $20 $88
    ld b, $48                                     ; $6883: $06 $48
    call Call_000_1188                            ; $6885: $CD $88 $11
    ld e, $00                                     ; $6888: $1E $00
    ld d, $82                                     ; $688A: $16 $82
    ld hl, $99A3                                  ; $688C: $21 $A3 $99
    ld b, $10                                     ; $688F: $06 $10
    ld c, $04                                     ; $6891: $0E $04
    call Call_000_1111                            ; $6893: $CD $11 $11
    ld e, $00                                     ; $6896: $1E $00
    ld d, $C2                                     ; $6898: $16 $C2
    ld hl, $9800                                  ; $689A: $21 $00 $98
    ld b, $01                                     ; $689D: $06 $01
    ld c, $01                                     ; $689F: $0E $01
    call Call_000_10EA                            ; $68A1: $CD $EA $10
    ld e, $00                                     ; $68A4: $1E $00
    ld d, $C3                                     ; $68A6: $16 $C3
    ld hl, $9801                                  ; $68A8: $21 $01 $98
    ld b, $12                                     ; $68AB: $06 $12
    ld c, $01                                     ; $68AD: $0E $01
    call Call_000_10EA                            ; $68AF: $CD $EA $10
    ld e, $00                                     ; $68B2: $1E $00
    ld d, $C4                                     ; $68B4: $16 $C4
    ld hl, $9813                                  ; $68B6: $21 $13 $98
    ld b, $01                                     ; $68B9: $06 $01
    ld c, $01                                     ; $68BB: $0E $01
    call Call_000_10EA                            ; $68BD: $CD $EA $10
    ld e, $00                                     ; $68C0: $1E $00
    ld d, $C5                                     ; $68C2: $16 $C5
    ld hl, $9820                                  ; $68C4: $21 $20 $98
    ld b, $01                                     ; $68C7: $06 $01
    ld c, $10                                     ; $68C9: $0E $10
    call Call_000_10EA                            ; $68CB: $CD $EA $10
    ld e, $00                                     ; $68CE: $1E $00
    ld d, $C6                                     ; $68D0: $16 $C6
    ld hl, $9833                                  ; $68D2: $21 $33 $98
    ld b, $01                                     ; $68D5: $06 $01
    ld c, $10                                     ; $68D7: $0E $10
    call Call_000_10EA                            ; $68D9: $CD $EA $10
    ld e, $00                                     ; $68DC: $1E $00
    ld d, $C7                                     ; $68DE: $16 $C7
    ld hl, $9A20                                  ; $68E0: $21 $20 $9A
    ld b, $01                                     ; $68E3: $06 $01
    ld c, $01                                     ; $68E5: $0E $01
    call Call_000_10EA                            ; $68E7: $CD $EA $10
    ld e, $00                                     ; $68EA: $1E $00
    ld d, $C8                                     ; $68EC: $16 $C8
    ld hl, $9A21                                  ; $68EE: $21 $21 $9A
    ld b, $12                                     ; $68F1: $06 $12
    ld c, $01                                     ; $68F3: $0E $01
    call Call_000_10EA                            ; $68F5: $CD $EA $10
    ld e, $00                                     ; $68F8: $1E $00
    ld d, $C9                                     ; $68FA: $16 $C9
    ld hl, $9A33                                  ; $68FC: $21 $33 $9A
    ld b, $01                                     ; $68FF: $06 $01
    ld c, $01                                     ; $6901: $0E $01
    call Call_000_10EA                            ; $6903: $CD $EA $10
    ret                                           ; $6906: $C9


Jump_03B_6907:
    ld de, $0023                                  ; $6907: $11 $23 $00
    call Call_000_14C0                            ; $690A: $CD $C0 $14
    ld hl, $4BBE                                  ; $690D: $21 $BE $4B
    ld b, $32                                     ; $6910: $06 $32
    ld de, $C349                                  ; $6912: $11 $49 $C3
    rst RST_20                                    ; $6915: $E7
    ld hl, $C349                                  ; $6916: $21 $49 $C3
    ld de, $8820                                  ; $6919: $11 $20 $88
    ld b, $25                                     ; $691C: $06 $25
    call Call_000_1188                            ; $691E: $CD $88 $11
    ld hl, $4D36                                  ; $6921: $21 $36 $4D
    ld b, $32                                     ; $6924: $06 $32
    ld de, $C349                                  ; $6926: $11 $49 $C3
    rst RST_20                                    ; $6929: $E7
    ld de, $C349                                  ; $692A: $11 $49 $C3
    ld hl, $9800                                  ; $692D: $21 $00 $98
    ld b, $14                                     ; $6930: $06 $14
    ld c, $12                                     ; $6932: $0E $12
    ld a, $82                                     ; $6934: $3E $82
    call Call_000_0FF7                            ; $6936: $CD $F7 $0F
    ret                                           ; $6939: $C9


Jump_03B_693A:
    ld de, $002F                                  ; $693A: $11 $2F $00
    call Call_000_14C0                            ; $693D: $CD $C0 $14
    ld hl, $4000                                  ; $6940: $21 $00 $40
    ld b, $20                                     ; $6943: $06 $20
    ld de, $C349                                  ; $6945: $11 $49 $C3
    rst RST_20                                    ; $6948: $E7
    ld hl, $C349                                  ; $6949: $21 $49 $C3
    ld de, $9000                                  ; $694C: $11 $00 $90
    ld b, $5E                                     ; $694F: $06 $5E
    call Call_000_1188                            ; $6951: $CD $88 $11
    ld hl, $451D                                  ; $6954: $21 $1D $45
    ld b, $20                                     ; $6957: $06 $20
    ld de, $C349                                  ; $6959: $11 $49 $C3
    rst RST_20                                    ; $695C: $E7
    ld hl, $C349                                  ; $695D: $21 $49 $C3
    ld de, $8C00                                  ; $6960: $11 $00 $8C
    ld b, $18                                     ; $6963: $06 $18
    call Call_000_1188                            ; $6965: $CD $88 $11
    ld e, $00                                     ; $6968: $1E $00
    ld d, $00                                     ; $696A: $16 $00
    ld hl, $9800                                  ; $696C: $21 $00 $98
    ld b, $14                                     ; $696F: $06 $14
    ld c, $12                                     ; $6971: $0E $12
    call Call_000_10EA                            ; $6973: $CD $EA $10
    ld hl, $4660                                  ; $6976: $21 $60 $46
    ld b, $20                                     ; $6979: $06 $20
    ld de, $C349                                  ; $697B: $11 $49 $C3
    rst RST_20                                    ; $697E: $E7
    ld de, $C349                                  ; $697F: $11 $49 $C3
    ld hl, $9801                                  ; $6982: $21 $01 $98
    ld b, $12                                     ; $6985: $06 $12
    ld c, $0A                                     ; $6987: $0E $0A
    call Call_000_10C0                            ; $6989: $CD $C0 $10
    ld de, $C3D9                                  ; $698C: $11 $D9 $C3
    ld hl, $9961                                  ; $698F: $21 $61 $99
    ld b, $12                                     ; $6992: $06 $12
    ld c, $06                                     ; $6994: $0E $06
    call Call_000_10C0                            ; $6996: $CD $C0 $10
    ld hl, $D6C0                                  ; $6999: $21 $C0 $D6
    ld de, $71D3                                  ; $699C: $11 $D3 $71
    call Call_000_0F8E                            ; $699F: $CD $8E $0F
    call Call_000_17E2                            ; $69A2: $CD $E2 $17
    and $03                                       ; $69A5: $E6 $03
    ld e, a                                       ; $69A7: $5F
    add a                                         ; $69A8: $87
    add a                                         ; $69A9: $87
    add e                                         ; $69AA: $83
    ld e, a                                       ; $69AB: $5F
    ld d, $00                                     ; $69AC: $16 $00
    ld hl, $69D2                                  ; $69AE: $21 $D2 $69
    add hl, de                                    ; $69B1: $19
    ld d, [hl]                                    ; $69B2: $56
    inc hl                                        ; $69B3: $23
    ld a, [hl+]                                   ; $69B4: $2A
    ld e, [hl]                                    ; $69B5: $5E
    inc hl                                        ; $69B6: $23
    push hl                                       ; $69B7: $E5
    ld l, a                                       ; $69B8: $6F
    ld h, e                                       ; $69B9: $63
    ld e, $00                                     ; $69BA: $1E $00
    ld b, $02                                     ; $69BC: $06 $02
    ld c, $02                                     ; $69BE: $0E $02
    call Call_000_1139                            ; $69C0: $CD $39 $11
    pop hl                                        ; $69C3: $E1
    ld a, [hl+]                                   ; $69C4: $2A
    ld [$D6C4], a                                 ; $69C5: $EA $C4 $D6
    ld a, [hl+]                                   ; $69C8: $2A
    ld [$D6C6], a                                 ; $69C9: $EA $C6 $D6
    ld a, $01                                     ; $69CC: $3E $01
    ld [$C318], a                                 ; $69CE: $EA $18 $C3
    ret                                           ; $69D1: $C9


    ret z                                         ; $69D2: $C8

    ld l, [hl]                                    ; $69D3: $6E
    sbc c                                         ; $69D4: $99
    ld [hl], b                                    ; $69D5: $70
    ld e, b                                       ; $69D6: $58
    call z, $99CD                                 ; $69D7: $CC $CD $99
    ld l, b                                       ; $69DA: $68
    ld [hl], b                                    ; $69DB: $70
    ret nc                                        ; $69DC: $D0

    and [hl]                                      ; $69DD: $A6
    sbc c                                         ; $69DE: $99
    jr nc, @+$6A                                  ; $69DF: $30 $68

    call nc, $9968                                ; $69E1: $D4 $68 $99
    ld a, $58                                     ; $69E4: $3E $58

Jump_03B_69E6:
    ld de, $0030                                  ; $69E6: $11 $30 $00
    call Call_000_14C0                            ; $69E9: $CD $C0 $14
    ld hl, $4754                                  ; $69EC: $21 $54 $47
    ld b, $20                                     ; $69EF: $06 $20
    ld de, $C349                                  ; $69F1: $11 $49 $C3
    rst RST_20                                    ; $69F4: $E7
    ld hl, $C349                                  ; $69F5: $21 $49 $C3
    ld de, $9000                                  ; $69F8: $11 $00 $90
    ld b, $66                                     ; $69FB: $06 $66
    call Call_000_1188                            ; $69FD: $CD $88 $11
    ld hl, $4CD6                                  ; $6A00: $21 $D6 $4C
    ld b, $20                                     ; $6A03: $06 $20
    ld de, $C349                                  ; $6A05: $11 $49 $C3
    rst RST_20                                    ; $6A08: $E7
    ld hl, $C349                                  ; $6A09: $21 $49 $C3
    ld de, $8C00                                  ; $6A0C: $11 $00 $8C
    ld b, $18                                     ; $6A0F: $06 $18
    call Call_000_1188                            ; $6A11: $CD $88 $11
    ld e, $00                                     ; $6A14: $1E $00
    ld d, $00                                     ; $6A16: $16 $00
    ld hl, $9800                                  ; $6A18: $21 $00 $98
    ld b, $14                                     ; $6A1B: $06 $14
    ld c, $12                                     ; $6A1D: $0E $12
    call Call_000_10EA                            ; $6A1F: $CD $EA $10
    ld hl, $4E09                                  ; $6A22: $21 $09 $4E
    ld b, $20                                     ; $6A25: $06 $20
    ld de, $C349                                  ; $6A27: $11 $49 $C3
    rst RST_20                                    ; $6A2A: $E7
    ld de, $C349                                  ; $6A2B: $11 $49 $C3
    ld hl, $9801                                  ; $6A2E: $21 $01 $98
    ld b, $12                                     ; $6A31: $06 $12
    ld c, $0A                                     ; $6A33: $0E $0A
    call Call_000_10C0                            ; $6A35: $CD $C0 $10
    ld de, $C3D9                                  ; $6A38: $11 $D9 $C3
    ld hl, $9961                                  ; $6A3B: $21 $61 $99
    ld b, $12                                     ; $6A3E: $06 $12
    ld c, $06                                     ; $6A40: $0E $06
    call Call_000_10C0                            ; $6A42: $CD $C0 $10
    ld hl, $D6C0                                  ; $6A45: $21 $C0 $D6
    ld de, $71D3                                  ; $6A48: $11 $D3 $71
    call Call_000_0F8E                            ; $6A4B: $CD $8E $0F
    ld hl, $D700                                  ; $6A4E: $21 $00 $D7
    ld de, $71D3                                  ; $6A51: $11 $D3 $71
    call Call_000_0F8E                            ; $6A54: $CD $8E $0F
    call Call_000_17E2                            ; $6A57: $CD $E2 $17
    and $03                                       ; $6A5A: $E6 $03
    ld e, a                                       ; $6A5C: $5F
    add a                                         ; $6A5D: $87
    add a                                         ; $6A5E: $87
    add e                                         ; $6A5F: $83
    ld e, a                                       ; $6A60: $5F
    ld d, $00                                     ; $6A61: $16 $00
    ld hl, $6AA1                                  ; $6A63: $21 $A1 $6A
    add hl, de                                    ; $6A66: $19
    ld c, $02                                     ; $6A67: $0E $02
    ld de, $D6C0                                  ; $6A69: $11 $C0 $D6

jr_03B_6A6C:
    push bc                                       ; $6A6C: $C5
    push de                                       ; $6A6D: $D5
    ld d, [hl]                                    ; $6A6E: $56
    inc hl                                        ; $6A6F: $23
    ld a, [hl+]                                   ; $6A70: $2A
    ld e, [hl]                                    ; $6A71: $5E
    inc hl                                        ; $6A72: $23
    push hl                                       ; $6A73: $E5
    ld l, a                                       ; $6A74: $6F
    ld h, e                                       ; $6A75: $63
    ld e, $00                                     ; $6A76: $1E $00
    ld b, $02                                     ; $6A78: $06 $02
    ld c, $02                                     ; $6A7A: $0E $02
    call Call_000_1139                            ; $6A7C: $CD $39 $11
    pop hl                                        ; $6A7F: $E1
    ld c, [hl]                                    ; $6A80: $4E
    inc hl                                        ; $6A81: $23
    ld b, [hl]                                    ; $6A82: $46
    inc hl                                        ; $6A83: $23
    pop de                                        ; $6A84: $D1
    push hl                                       ; $6A85: $E5
    ld hl, $0004                                  ; $6A86: $21 $04 $00
    add hl, de                                    ; $6A89: $19
    ld [hl], c                                    ; $6A8A: $71
    ld hl, $0006                                  ; $6A8B: $21 $06 $00
    add hl, de                                    ; $6A8E: $19
    ld [hl], b                                    ; $6A8F: $70
    ld hl, $0040                                  ; $6A90: $21 $40 $00
    add hl, de                                    ; $6A93: $19
    ld e, l                                       ; $6A94: $5D
    ld d, h                                       ; $6A95: $54
    pop hl                                        ; $6A96: $E1
    pop bc                                        ; $6A97: $C1
    dec c                                         ; $6A98: $0D
    jr nz, jr_03B_6A6C                            ; $6A99: $20 $D1

    ld a, $02                                     ; $6A9B: $3E $02
    ld [$C318], a                                 ; $6A9D: $EA $18 $C3
    ret                                           ; $6AA0: $C9


    ret z                                         ; $6AA1: $C8

    ld h, [hl]                                    ; $6AA2: $66
    sbc c                                         ; $6AA3: $99
    jr nc, jr_03B_6AFE                            ; $6AA4: $30 $58

    call z, $99D0                                 ; $6AA6: $CC $D0 $99
    add b                                         ; $6AA9: $80
    ld [hl], b                                    ; $6AAA: $70
    ret nc                                        ; $6AAB: $D0

    xor b                                         ; $6AAC: $A8
    sbc c                                         ; $6AAD: $99
    ld b, b                                       ; $6AAE: $40
    ld l, b                                       ; $6AAF: $68
    call nc, $9983                                ; $6AB0: $D4 $83 $99
    jr @+$62                                      ; $6AB3: $18 $60

    ret z                                         ; $6AB5: $C8

    ld h, [hl]                                    ; $6AB6: $66
    sbc c                                         ; $6AB7: $99
    jr nc, jr_03B_6B12                            ; $6AB8: $30 $58

Jump_03B_6ABA:
    ld de, $0031                                  ; $6ABA: $11 $31 $00
    call Call_000_14C0                            ; $6ABD: $CD $C0 $14
    ld hl, $4F15                                  ; $6AC0: $21 $15 $4F
    ld b, $20                                     ; $6AC3: $06 $20
    ld de, $C349                                  ; $6AC5: $11 $49 $C3
    rst RST_20                                    ; $6AC8: $E7
    ld hl, $C349                                  ; $6AC9: $21 $49 $C3
    ld de, $9000                                  ; $6ACC: $11 $00 $90
    ld b, $5C                                     ; $6ACF: $06 $5C
    call Call_000_1188                            ; $6AD1: $CD $88 $11
    ld hl, $53B1                                  ; $6AD4: $21 $B1 $53
    ld b, $20                                     ; $6AD7: $06 $20
    ld de, $C349                                  ; $6AD9: $11 $49 $C3
    rst RST_20                                    ; $6ADC: $E7
    ld hl, $C349                                  ; $6ADD: $21 $49 $C3
    ld de, $8C00                                  ; $6AE0: $11 $00 $8C
    ld b, $1C                                     ; $6AE3: $06 $1C
    call Call_000_1188                            ; $6AE5: $CD $88 $11
    ld e, $00                                     ; $6AE8: $1E $00
    ld d, $00                                     ; $6AEA: $16 $00
    ld hl, $9800                                  ; $6AEC: $21 $00 $98
    ld b, $14                                     ; $6AEF: $06 $14
    ld c, $12                                     ; $6AF1: $0E $12
    call Call_000_10EA                            ; $6AF3: $CD $EA $10
    ld hl, $54F3                                  ; $6AF6: $21 $F3 $54
    ld b, $20                                     ; $6AF9: $06 $20
    ld de, $C349                                  ; $6AFB: $11 $49 $C3

jr_03B_6AFE:
    rst RST_20                                    ; $6AFE: $E7
    ld de, $C349                                  ; $6AFF: $11 $49 $C3
    ld hl, $9801                                  ; $6B02: $21 $01 $98
    ld b, $12                                     ; $6B05: $06 $12
    ld c, $0A                                     ; $6B07: $0E $0A
    call Call_000_10C0                            ; $6B09: $CD $C0 $10
    ld de, $C3D9                                  ; $6B0C: $11 $D9 $C3
    ld hl, $9961                                  ; $6B0F: $21 $61 $99

jr_03B_6B12:
    ld b, $12                                     ; $6B12: $06 $12
    ld c, $06                                     ; $6B14: $0E $06
    call Call_000_10C0                            ; $6B16: $CD $C0 $10
    ld hl, $D6C0                                  ; $6B19: $21 $C0 $D6
    ld de, $71D3                                  ; $6B1C: $11 $D3 $71
    call Call_000_0F8E                            ; $6B1F: $CD $8E $0F
    ld hl, $D700                                  ; $6B22: $21 $00 $D7
    ld de, $71D3                                  ; $6B25: $11 $D3 $71
    call Call_000_0F8E                            ; $6B28: $CD $8E $0F
    ld hl, $D740                                  ; $6B2B: $21 $40 $D7
    ld de, $71D3                                  ; $6B2E: $11 $D3 $71
    call Call_000_0F8E                            ; $6B31: $CD $8E $0F
    call Call_000_17E2                            ; $6B34: $CD $E2 $17
    and $03                                       ; $6B37: $E6 $03
    ld e, a                                       ; $6B39: $5F
    add a                                         ; $6B3A: $87
    add a                                         ; $6B3B: $87
    add e                                         ; $6B3C: $83
    ld e, a                                       ; $6B3D: $5F
    ld d, $00                                     ; $6B3E: $16 $00
    ld hl, $6B7E                                  ; $6B40: $21 $7E $6B
    add hl, de                                    ; $6B43: $19
    ld c, $03                                     ; $6B44: $0E $03
    ld de, $D6C0                                  ; $6B46: $11 $C0 $D6

jr_03B_6B49:
    push bc                                       ; $6B49: $C5
    push de                                       ; $6B4A: $D5
    ld d, [hl]                                    ; $6B4B: $56
    inc hl                                        ; $6B4C: $23
    ld a, [hl+]                                   ; $6B4D: $2A
    ld e, [hl]                                    ; $6B4E: $5E
    inc hl                                        ; $6B4F: $23
    push hl                                       ; $6B50: $E5
    ld l, a                                       ; $6B51: $6F
    ld h, e                                       ; $6B52: $63
    ld e, $00                                     ; $6B53: $1E $00
    ld b, $02                                     ; $6B55: $06 $02
    ld c, $02                                     ; $6B57: $0E $02
    call Call_000_1139                            ; $6B59: $CD $39 $11
    pop hl                                        ; $6B5C: $E1
    ld c, [hl]                                    ; $6B5D: $4E
    inc hl                                        ; $6B5E: $23
    ld b, [hl]                                    ; $6B5F: $46
    inc hl                                        ; $6B60: $23
    pop de                                        ; $6B61: $D1
    push hl                                       ; $6B62: $E5
    ld hl, $0004                                  ; $6B63: $21 $04 $00
    add hl, de                                    ; $6B66: $19
    ld [hl], c                                    ; $6B67: $71
    ld hl, $0006                                  ; $6B68: $21 $06 $00
    add hl, de                                    ; $6B6B: $19
    ld [hl], b                                    ; $6B6C: $70
    ld hl, $0040                                  ; $6B6D: $21 $40 $00
    add hl, de                                    ; $6B70: $19
    ld e, l                                       ; $6B71: $5D
    ld d, h                                       ; $6B72: $54
    pop hl                                        ; $6B73: $E1
    pop bc                                        ; $6B74: $C1
    dec c                                         ; $6B75: $0D
    jr nz, jr_03B_6B49                            ; $6B76: $20 $D1

    ld a, $03                                     ; $6B78: $3E $03
    ld [$C318], a                                 ; $6B7A: $EA $18 $C3
    ret                                           ; $6B7D: $C9


    ret z                                         ; $6B7E: $C8

    add a                                         ; $6B7F: $87
    sbc c                                         ; $6B80: $99
    jr c, @+$62                                   ; $6B81: $38 $60

    call z, $9961                                 ; $6B83: $CC $61 $99
    ld [$D058], sp                                ; $6B86: $08 $58 $D0
    adc h                                         ; $6B89: $8C
    sbc c                                         ; $6B8A: $99
    ld e, [hl]                                    ; $6B8B: $5E
    ld h, b                                       ; $6B8C: $60
    call nc, $99EA                                ; $6B8D: $D4 $EA $99
    ld d, b                                       ; $6B90: $50
    ld a, b                                       ; $6B91: $78
    ret c                                         ; $6B92: $D8

    ld [hl], b                                    ; $6B93: $70
    sbc c                                         ; $6B94: $99
    add b                                         ; $6B95: $80
    ld e, b                                       ; $6B96: $58
    ret z                                         ; $6B97: $C8

    add a                                         ; $6B98: $87
    sbc c                                         ; $6B99: $99
    jr c, @+$62                                   ; $6B9A: $38 $60

Jump_03B_6B9C:
    ld de, $0032                                  ; $6B9C: $11 $32 $00
    call Call_000_14C0                            ; $6B9F: $CD $C0 $14
    ld hl, $55E2                                  ; $6BA2: $21 $E2 $55
    ld b, $20                                     ; $6BA5: $06 $20
    ld de, $C349                                  ; $6BA7: $11 $49 $C3
    rst RST_20                                    ; $6BAA: $E7
    ld hl, $C349                                  ; $6BAB: $21 $49 $C3
    ld de, $9000                                  ; $6BAE: $11 $00 $90
    ld b, $73                                     ; $6BB1: $06 $73
    call Call_000_1188                            ; $6BB3: $CD $88 $11
    ld hl, $5B9B                                  ; $6BB6: $21 $9B $5B
    ld b, $20                                     ; $6BB9: $06 $20
    ld de, $C349                                  ; $6BBB: $11 $49 $C3
    rst RST_20                                    ; $6BBE: $E7
    ld hl, $C349                                  ; $6BBF: $21 $49 $C3
    ld de, $8C00                                  ; $6BC2: $11 $00 $8C
    ld b, $28                                     ; $6BC5: $06 $28
    call Call_000_1188                            ; $6BC7: $CD $88 $11
    ld e, $00                                     ; $6BCA: $1E $00
    ld d, $00                                     ; $6BCC: $16 $00
    ld hl, $9800                                  ; $6BCE: $21 $00 $98
    ld b, $14                                     ; $6BD1: $06 $14
    ld c, $12                                     ; $6BD3: $0E $12
    call Call_000_10EA                            ; $6BD5: $CD $EA $10
    ld hl, $5D79                                  ; $6BD8: $21 $79 $5D
    ld b, $20                                     ; $6BDB: $06 $20
    ld de, $C349                                  ; $6BDD: $11 $49 $C3
    rst RST_20                                    ; $6BE0: $E7
    ld de, $C349                                  ; $6BE1: $11 $49 $C3
    ld hl, $9801                                  ; $6BE4: $21 $01 $98
    ld b, $12                                     ; $6BE7: $06 $12
    ld c, $0A                                     ; $6BE9: $0E $0A
    call Call_000_10C0                            ; $6BEB: $CD $C0 $10
    ld de, $C3D9                                  ; $6BEE: $11 $D9 $C3
    ld hl, $9961                                  ; $6BF1: $21 $61 $99
    ld b, $12                                     ; $6BF4: $06 $12
    ld c, $06                                     ; $6BF6: $0E $06
    call Call_000_10C0                            ; $6BF8: $CD $C0 $10
    ld hl, $D6C0                                  ; $6BFB: $21 $C0 $D6
    ld de, $71D3                                  ; $6BFE: $11 $D3 $71
    call Call_000_0F8E                            ; $6C01: $CD $8E $0F
    ld hl, $D700                                  ; $6C04: $21 $00 $D7
    ld de, $71D3                                  ; $6C07: $11 $D3 $71
    call Call_000_0F8E                            ; $6C0A: $CD $8E $0F
    ld hl, $D740                                  ; $6C0D: $21 $40 $D7
    ld de, $71D3                                  ; $6C10: $11 $D3 $71
    call Call_000_0F8E                            ; $6C13: $CD $8E $0F
    ld hl, $D780                                  ; $6C16: $21 $80 $D7
    ld de, $71D3                                  ; $6C19: $11 $D3 $71
    call Call_000_0F8E                            ; $6C1C: $CD $8E $0F
    call Call_000_17E2                            ; $6C1F: $CD $E2 $17
    and $03                                       ; $6C22: $E6 $03
    ld e, a                                       ; $6C24: $5F
    add a                                         ; $6C25: $87
    add a                                         ; $6C26: $87
    add e                                         ; $6C27: $83
    add a                                         ; $6C28: $87
    ld e, a                                       ; $6C29: $5F
    ld d, $00                                     ; $6C2A: $16 $00
    ld hl, $6C6A                                  ; $6C2C: $21 $6A $6C
    add hl, de                                    ; $6C2F: $19
    ld c, $04                                     ; $6C30: $0E $04
    ld de, $D6C0                                  ; $6C32: $11 $C0 $D6

jr_03B_6C35:
    push bc                                       ; $6C35: $C5
    push de                                       ; $6C36: $D5
    ld d, [hl]                                    ; $6C37: $56
    inc hl                                        ; $6C38: $23
    ld a, [hl+]                                   ; $6C39: $2A
    ld e, [hl]                                    ; $6C3A: $5E
    inc hl                                        ; $6C3B: $23
    push hl                                       ; $6C3C: $E5
    ld l, a                                       ; $6C3D: $6F
    ld h, e                                       ; $6C3E: $63
    ld e, $00                                     ; $6C3F: $1E $00
    ld b, $02                                     ; $6C41: $06 $02
    ld c, $02                                     ; $6C43: $0E $02
    call Call_000_1139                            ; $6C45: $CD $39 $11
    pop hl                                        ; $6C48: $E1
    ld c, [hl]                                    ; $6C49: $4E
    inc hl                                        ; $6C4A: $23
    ld b, [hl]                                    ; $6C4B: $46
    inc hl                                        ; $6C4C: $23
    pop de                                        ; $6C4D: $D1
    push hl                                       ; $6C4E: $E5
    ld hl, $0004                                  ; $6C4F: $21 $04 $00
    add hl, de                                    ; $6C52: $19
    ld [hl], c                                    ; $6C53: $71
    ld hl, $0006                                  ; $6C54: $21 $06 $00
    add hl, de                                    ; $6C57: $19
    ld [hl], b                                    ; $6C58: $70
    ld hl, $0040                                  ; $6C59: $21 $40 $00
    add hl, de                                    ; $6C5C: $19
    ld e, l                                       ; $6C5D: $5D
    ld d, h                                       ; $6C5E: $54
    pop hl                                        ; $6C5F: $E1
    pop bc                                        ; $6C60: $C1
    dec c                                         ; $6C61: $0D
    jr nz, jr_03B_6C35                            ; $6C62: $20 $D1

    ld a, $04                                     ; $6C64: $3E $04
    ld [$C318], a                                 ; $6C66: $EA $18 $C3
    ret                                           ; $6C69: $C9


    ret z                                         ; $6C6A: $C8

    and h                                         ; $6C6B: $A4
    sbc c                                         ; $6C6C: $99
    jr nz, @+$6A                                  ; $6C6D: $20 $68

    call z, $99AA                                 ; $6C6F: $CC $AA $99
    ld d, b                                       ; $6C72: $50
    ld l, b                                       ; $6C73: $68
    ret nc                                        ; $6C74: $D0

    ld l, e                                       ; $6C75: $6B
    sbc c                                         ; $6C76: $99
    ld e, b                                       ; $6C77: $58
    ld e, b                                       ; $6C78: $58
    call nc, $9961                                ; $6C79: $D4 $61 $99
    ld [$D858], sp                                ; $6C7C: $08 $58 $D8
    ld l, a                                       ; $6C7F: $6F
    sbc c                                         ; $6C80: $99
    ld a, b                                       ; $6C81: $78
    ld e, b                                       ; $6C82: $58
    call c, $9968                                 ; $6C83: $DC $68 $99
    ld b, b                                       ; $6C86: $40
    ld e, b                                       ; $6C87: $58
    ldh [$FFAF], a                                ; $6C88: $E0 $AF
    sbc c                                         ; $6C8A: $99
    ld a, b                                       ; $6C8B: $78
    ld l, b                                       ; $6C8C: $68
    db $E4                                        ; $6C8D: $E4
    and c                                         ; $6C8E: $A1
    sbc c                                         ; $6C8F: $99
    ld [$C868], sp                                ; $6C90: $08 $68 $C8
    and h                                         ; $6C93: $A4
    sbc c                                         ; $6C94: $99
    jr nz, @+$6A                                  ; $6C95: $20 $68

    call z, $99AA                                 ; $6C97: $CC $AA $99
    ld d, b                                       ; $6C9A: $50
    ld l, b                                       ; $6C9B: $68

Jump_03B_6C9C:
    ld de, $0033                                  ; $6C9C: $11 $33 $00
    call Call_000_14C0                            ; $6C9F: $CD $C0 $14
    ld hl, $5E99                                  ; $6CA2: $21 $99 $5E
    ld b, $20                                     ; $6CA5: $06 $20
    ld de, $C349                                  ; $6CA7: $11 $49 $C3
    rst RST_20                                    ; $6CAA: $E7
    ld hl, $C349                                  ; $6CAB: $21 $49 $C3
    ld de, $9000                                  ; $6CAE: $11 $00 $90
    ld b, $6F                                     ; $6CB1: $06 $6F
    call Call_000_1188                            ; $6CB3: $CD $88 $11
    ld hl, $6407                                  ; $6CB6: $21 $07 $64
    ld b, $20                                     ; $6CB9: $06 $20
    ld de, $C349                                  ; $6CBB: $11 $49 $C3
    rst RST_20                                    ; $6CBE: $E7
    ld hl, $C349                                  ; $6CBF: $21 $49 $C3
    ld de, $8C00                                  ; $6CC2: $11 $00 $8C
    ld b, $34                                     ; $6CC5: $06 $34
    call Call_000_1188                            ; $6CC7: $CD $88 $11
    ld e, $00                                     ; $6CCA: $1E $00
    ld d, $00                                     ; $6CCC: $16 $00
    ld hl, $9800                                  ; $6CCE: $21 $00 $98
    ld b, $14                                     ; $6CD1: $06 $14
    ld c, $12                                     ; $6CD3: $0E $12
    call Call_000_10EA                            ; $6CD5: $CD $EA $10
    ld hl, $667C                                  ; $6CD8: $21 $7C $66
    ld b, $20                                     ; $6CDB: $06 $20
    ld de, $C349                                  ; $6CDD: $11 $49 $C3
    rst RST_20                                    ; $6CE0: $E7
    ld de, $C349                                  ; $6CE1: $11 $49 $C3
    ld hl, $9801                                  ; $6CE4: $21 $01 $98
    ld b, $12                                     ; $6CE7: $06 $12
    ld c, $0A                                     ; $6CE9: $0E $0A
    call Call_000_10C0                            ; $6CEB: $CD $C0 $10
    ld de, $C3D9                                  ; $6CEE: $11 $D9 $C3
    ld hl, $9961                                  ; $6CF1: $21 $61 $99
    ld b, $12                                     ; $6CF4: $06 $12
    ld c, $06                                     ; $6CF6: $0E $06
    call Call_000_10C0                            ; $6CF8: $CD $C0 $10
    ld hl, $D6C0                                  ; $6CFB: $21 $C0 $D6
    ld de, $71D3                                  ; $6CFE: $11 $D3 $71
    call Call_000_0F8E                            ; $6D01: $CD $8E $0F
    ld hl, $D700                                  ; $6D04: $21 $00 $D7
    ld de, $71D3                                  ; $6D07: $11 $D3 $71
    call Call_000_0F8E                            ; $6D0A: $CD $8E $0F
    ld hl, $D740                                  ; $6D0D: $21 $40 $D7
    ld de, $71D3                                  ; $6D10: $11 $D3 $71
    call Call_000_0F8E                            ; $6D13: $CD $8E $0F
    ld hl, $D780                                  ; $6D16: $21 $80 $D7
    ld de, $71D3                                  ; $6D19: $11 $D3 $71
    call Call_000_0F8E                            ; $6D1C: $CD $8E $0F
    ld hl, $D7C0                                  ; $6D1F: $21 $C0 $D7
    ld de, $71D3                                  ; $6D22: $11 $D3 $71
    call Call_000_0F8E                            ; $6D25: $CD $8E $0F
    call Call_000_17E2                            ; $6D28: $CD $E2 $17
    and $03                                       ; $6D2B: $E6 $03
    ld e, a                                       ; $6D2D: $5F
    add a                                         ; $6D2E: $87
    add a                                         ; $6D2F: $87
    add e                                         ; $6D30: $83
    add a                                         ; $6D31: $87
    ld e, a                                       ; $6D32: $5F
    ld d, $00                                     ; $6D33: $16 $00
    ld hl, $6D73                                  ; $6D35: $21 $73 $6D
    add hl, de                                    ; $6D38: $19
    ld c, $05                                     ; $6D39: $0E $05
    ld de, $D6C0                                  ; $6D3B: $11 $C0 $D6

jr_03B_6D3E:
    push bc                                       ; $6D3E: $C5
    push de                                       ; $6D3F: $D5
    ld d, [hl]                                    ; $6D40: $56
    inc hl                                        ; $6D41: $23
    ld a, [hl+]                                   ; $6D42: $2A
    ld e, [hl]                                    ; $6D43: $5E
    inc hl                                        ; $6D44: $23
    push hl                                       ; $6D45: $E5
    ld l, a                                       ; $6D46: $6F
    ld h, e                                       ; $6D47: $63
    ld e, $00                                     ; $6D48: $1E $00
    ld b, $02                                     ; $6D4A: $06 $02
    ld c, $02                                     ; $6D4C: $0E $02
    call Call_000_1139                            ; $6D4E: $CD $39 $11
    pop hl                                        ; $6D51: $E1
    ld c, [hl]                                    ; $6D52: $4E
    inc hl                                        ; $6D53: $23
    ld b, [hl]                                    ; $6D54: $46
    inc hl                                        ; $6D55: $23
    pop de                                        ; $6D56: $D1
    push hl                                       ; $6D57: $E5
    ld hl, $0004                                  ; $6D58: $21 $04 $00
    add hl, de                                    ; $6D5B: $19
    ld [hl], c                                    ; $6D5C: $71
    ld hl, $0006                                  ; $6D5D: $21 $06 $00
    add hl, de                                    ; $6D60: $19
    ld [hl], b                                    ; $6D61: $70
    ld hl, $0040                                  ; $6D62: $21 $40 $00
    add hl, de                                    ; $6D65: $19
    ld e, l                                       ; $6D66: $5D
    ld d, h                                       ; $6D67: $54
    pop hl                                        ; $6D68: $E1
    pop bc                                        ; $6D69: $C1
    dec c                                         ; $6D6A: $0D
    jr nz, jr_03B_6D3E                            ; $6D6B: $20 $D1

    ld a, $05                                     ; $6D6D: $3E $05
    ld [$C318], a                                 ; $6D6F: $EA $18 $C3
    ret                                           ; $6D72: $C9


    ret z                                         ; $6D73: $C8

    adc e                                         ; $6D74: $8B
    sbc c                                         ; $6D75: $99
    ld d, [hl]                                    ; $6D76: $56
    ld h, b                                       ; $6D77: $60
    call z, $99D1                                 ; $6D78: $CC $D1 $99
    adc b                                         ; $6D7B: $88
    ld [hl], b                                    ; $6D7C: $70
    ret nc                                        ; $6D7D: $D0

    call $6899                                    ; $6D7E: $CD $99 $68
    ld [hl], b                                    ; $6D81: $70
    call nc, $99C2                                ; $6D82: $D4 $C2 $99
    db $10                                        ; $6D85: $10
    ld [hl], b                                    ; $6D86: $70
    ret c                                         ; $6D87: $D8

    ld h, c                                       ; $6D88: $61
    sbc c                                         ; $6D89: $99
    ld [$DC58], sp                                ; $6D8A: $08 $58 $DC
    rst RST_08                                    ; $6D8D: $CF
    sbc c                                         ; $6D8E: $99
    ld a, b                                       ; $6D8F: $78
    ld [hl], b                                    ; $6D90: $70
    ldh [$FF8E], a                                ; $6D91: $E0 $8E
    sbc c                                         ; $6D93: $99
    ld [hl], b                                    ; $6D94: $70
    ld h, b                                       ; $6D95: $60
    db $E4                                        ; $6D96: $E4
    ret z                                         ; $6D97: $C8

    sbc c                                         ; $6D98: $99
    ld a, $70                                     ; $6D99: $3E $70
    add sp, $69                                   ; $6D9B: $E8 $69
    sbc c                                         ; $6D9D: $99
    ld c, b                                       ; $6D9E: $48
    ld e, b                                       ; $6D9F: $58
    db $EC                                        ; $6DA0: $EC
    ld h, h                                       ; $6DA1: $64
    sbc c                                         ; $6DA2: $99
    jr nz, jr_03B_6DFD                            ; $6DA3: $20 $58

    ldh a, [$FFCB]                                ; $6DA5: $F0 $CB
    sbc c                                         ; $6DA7: $99
    ld e, b                                       ; $6DA8: $58
    ld [hl], b                                    ; $6DA9: $70

Jump_03B_6DAA:
    ld de, $002F                                  ; $6DAA: $11 $2F $00
    call Call_000_14C0                            ; $6DAD: $CD $C0 $14
    ld hl, $679B                                  ; $6DB0: $21 $9B $67
    ld b, $20                                     ; $6DB3: $06 $20
    ld de, $C349                                  ; $6DB5: $11 $49 $C3
    rst RST_20                                    ; $6DB8: $E7
    ld hl, $C349                                  ; $6DB9: $21 $49 $C3
    ld de, $9000                                  ; $6DBC: $11 $00 $90
    ld b, $5D                                     ; $6DBF: $06 $5D
    call Call_000_1188                            ; $6DC1: $CD $88 $11
    ld hl, $5A65                                  ; $6DC4: $21 $65 $5A
    ld b, $32                                     ; $6DC7: $06 $32
    ld de, $C349                                  ; $6DC9: $11 $49 $C3
    rst RST_20                                    ; $6DCC: $E7
    ld de, $C349                                  ; $6DCD: $11 $49 $C3
    ld hl, $9800                                  ; $6DD0: $21 $00 $98
    ld b, $14                                     ; $6DD3: $06 $14
    ld c, $12                                     ; $6DD5: $0E $12
    call Call_000_10C0                            ; $6DD7: $CD $C0 $10
    ret                                           ; $6DDA: $C9


Jump_03B_6DDB:
    ld de, $002F                                  ; $6DDB: $11 $2F $00
    call Call_000_14C0                            ; $6DDE: $CD $C0 $14
    ld hl, $6C34                                  ; $6DE1: $21 $34 $6C
    ld b, $20                                     ; $6DE4: $06 $20
    ld de, $C349                                  ; $6DE6: $11 $49 $C3
    rst RST_20                                    ; $6DE9: $E7
    ld hl, $C349                                  ; $6DEA: $21 $49 $C3
    ld de, $9000                                  ; $6DED: $11 $00 $90
    ld b, $80                                     ; $6DF0: $06 $80
    call Call_000_1188                            ; $6DF2: $CD $88 $11
    ld hl, $CB49                                  ; $6DF5: $21 $49 $CB
    ld de, $8900                                  ; $6DF8: $11 $00 $89
    ld b, $03                                     ; $6DFB: $06 $03

jr_03B_6DFD:
    call Call_000_1188                            ; $6DFD: $CD $88 $11
    ld hl, $5B8A                                  ; $6E00: $21 $8A $5B
    ld b, $32                                     ; $6E03: $06 $32
    ld de, $C349                                  ; $6E05: $11 $49 $C3
    rst RST_20                                    ; $6E08: $E7
    ld de, $C349                                  ; $6E09: $11 $49 $C3
    ld hl, $9800                                  ; $6E0C: $21 $00 $98
    ld b, $14                                     ; $6E0F: $06 $14
    ld c, $12                                     ; $6E11: $0E $12
    call Call_000_10C0                            ; $6E13: $CD $C0 $10
    ret                                           ; $6E16: $C9


Jump_03B_6E17:
    ld de, $002F                                  ; $6E17: $11 $2F $00
    call Call_000_14C0                            ; $6E1A: $CD $C0 $14
    ld hl, $7280                                  ; $6E1D: $21 $80 $72
    ld b, $20                                     ; $6E20: $06 $20
    ld de, $C349                                  ; $6E22: $11 $49 $C3
    rst RST_20                                    ; $6E25: $E7
    ld hl, $C349                                  ; $6E26: $21 $49 $C3
    ld de, $9000                                  ; $6E29: $11 $00 $90
    ld b, $4D                                     ; $6E2C: $06 $4D
    call Call_000_1188                            ; $6E2E: $CD $88 $11
    ld hl, $5D0B                                  ; $6E31: $21 $0B $5D
    ld b, $32                                     ; $6E34: $06 $32
    ld de, $C349                                  ; $6E36: $11 $49 $C3
    rst RST_20                                    ; $6E39: $E7
    ld de, $C349                                  ; $6E3A: $11 $49 $C3
    ld hl, $9800                                  ; $6E3D: $21 $00 $98
    ld b, $14                                     ; $6E40: $06 $14
    ld c, $12                                     ; $6E42: $0E $12
    call Call_000_10C0                            ; $6E44: $CD $C0 $10
    ret                                           ; $6E47: $C9


Jump_03B_6E48:
    ld de, $002F                                  ; $6E48: $11 $2F $00
    call Call_000_14C0                            ; $6E4B: $CD $C0 $14
    ld hl, $762E                                  ; $6E4E: $21 $2E $76
    ld b, $20                                     ; $6E51: $06 $20
    ld de, $C349                                  ; $6E53: $11 $49 $C3
    rst RST_20                                    ; $6E56: $E7
    ld hl, $C349                                  ; $6E57: $21 $49 $C3
    ld de, $9000                                  ; $6E5A: $11 $00 $90
    ld b, $5F                                     ; $6E5D: $06 $5F
    call Call_000_1188                            ; $6E5F: $CD $88 $11
    ld hl, $5E03                                  ; $6E62: $21 $03 $5E
    ld b, $32                                     ; $6E65: $06 $32
    ld de, $C349                                  ; $6E67: $11 $49 $C3
    rst RST_20                                    ; $6E6A: $E7
    ld de, $C349                                  ; $6E6B: $11 $49 $C3
    ld hl, $9800                                  ; $6E6E: $21 $00 $98
    ld b, $14                                     ; $6E71: $06 $14
    ld c, $12                                     ; $6E73: $0E $12
    call Call_000_10C0                            ; $6E75: $CD $C0 $10
    ret                                           ; $6E78: $C9


Jump_03B_6E79:
    ld de, $002F                                  ; $6E79: $11 $2F $00
    call Call_000_14C0                            ; $6E7C: $CD $C0 $14
    ld hl, $7AD4                                  ; $6E7F: $21 $D4 $7A
    ld b, $20                                     ; $6E82: $06 $20
    ld de, $C349                                  ; $6E84: $11 $49 $C3
    rst RST_20                                    ; $6E87: $E7
    ld hl, $C349                                  ; $6E88: $21 $49 $C3
    ld de, $9000                                  ; $6E8B: $11 $00 $90
    ld b, $68                                     ; $6E8E: $06 $68
    call Call_000_1188                            ; $6E90: $CD $88 $11
    ld hl, $5F32                                  ; $6E93: $21 $32 $5F
    ld b, $32                                     ; $6E96: $06 $32
    ld de, $C349                                  ; $6E98: $11 $49 $C3
    rst RST_20                                    ; $6E9B: $E7
    ld de, $C349                                  ; $6E9C: $11 $49 $C3
    ld hl, $9800                                  ; $6E9F: $21 $00 $98
    ld b, $14                                     ; $6EA2: $06 $14
    ld c, $12                                     ; $6EA4: $0E $12
    call Call_000_10C0                            ; $6EA6: $CD $C0 $10
    ret                                           ; $6EA9: $C9


Jump_03B_6EAA:
    ld de, $0023                                  ; $6EAA: $11 $23 $00
    call Call_000_14C0                            ; $6EAD: $CD $C0 $14
    ld hl, $4AA7                                  ; $6EB0: $21 $A7 $4A
    ld b, $32                                     ; $6EB3: $06 $32
    ld de, $C349                                  ; $6EB5: $11 $49 $C3
    rst RST_20                                    ; $6EB8: $E7
    ld hl, $C349                                  ; $6EB9: $21 $49 $C3
    ld de, $8820                                  ; $6EBC: $11 $20 $88
    ld b, $2A                                     ; $6EBF: $06 $2A
    call Call_000_1188                            ; $6EC1: $CD $88 $11
    ld e, $00                                     ; $6EC4: $1E $00
    ld d, $82                                     ; $6EC6: $16 $82
    ld hl, $9805                                  ; $6EC8: $21 $05 $98
    ld b, $0A                                     ; $6ECB: $06 $0A
    ld c, $02                                     ; $6ECD: $0E $02
    call Call_000_1139                            ; $6ECF: $CD $39 $11
    ld de, $721F                                  ; $6ED2: $11 $1F $72
    ld hl, $9000                                  ; $6ED5: $21 $00 $90
    ld c, $04                                     ; $6ED8: $0E $04

jr_03B_6EDA:
    push bc                                       ; $6EDA: $C5
    push hl                                       ; $6EDB: $E5
    push de                                       ; $6EDC: $D5
    ld hl, $C429                                  ; $6EDD: $21 $29 $C4
    ld de, $C529                                  ; $6EE0: $11 $29 $C5
    ld [hl], e                                    ; $6EE3: $73
    inc hl                                        ; $6EE4: $23
    ld [hl], d                                    ; $6EE5: $72
    inc hl                                        ; $6EE6: $23
    pop de                                        ; $6EE7: $D1
    push de                                       ; $6EE8: $D5
    call Call_03B_7161                            ; $6EE9: $CD $61 $71
    pop hl                                        ; $6EEC: $E1
    pop de                                        ; $6EED: $D1
    push de                                       ; $6EEE: $D5
    push hl                                       ; $6EEF: $E5
    ld hl, $C929                                  ; $6EF0: $21 $29 $C9
    ld a, [$C42B]                                 ; $6EF3: $FA $2B $C4
    add a                                         ; $6EF6: $87
    ld b, a                                       ; $6EF7: $47
    call Call_000_1188                            ; $6EF8: $CD $88 $11
    pop hl                                        ; $6EFB: $E1
    ld de, $000F                                  ; $6EFC: $11 $0F $00
    add hl, de                                    ; $6EFF: $19
    ld e, l                                       ; $6F00: $5D
    ld d, h                                       ; $6F01: $54
    pop hl                                        ; $6F02: $E1
    ld bc, $01E0                                  ; $6F03: $01 $E0 $01
    add hl, bc                                    ; $6F06: $09
    pop bc                                        ; $6F07: $C1
    dec c                                         ; $6F08: $0D
    jr nz, jr_03B_6EDA                            ; $6F09: $20 $CF

    ld e, $00                                     ; $6F0B: $1E $00
    ld d, $00                                     ; $6F0D: $16 $00
    ld hl, $9844                                  ; $6F0F: $21 $44 $98
    ld b, $0F                                     ; $6F12: $06 $0F
    ld c, $02                                     ; $6F14: $0E $02
    call Call_000_1139                            ; $6F16: $CD $39 $11
    ld e, $00                                     ; $6F19: $1E $00
    ld d, $1E                                     ; $6F1B: $16 $1E
    ld hl, $98C4                                  ; $6F1D: $21 $C4 $98
    ld b, $0F                                     ; $6F20: $06 $0F
    ld c, $02                                     ; $6F22: $0E $02
    call Call_000_1139                            ; $6F24: $CD $39 $11
    ld e, $00                                     ; $6F27: $1E $00
    ld d, $3C                                     ; $6F29: $16 $3C
    ld hl, $9944                                  ; $6F2B: $21 $44 $99
    ld b, $0F                                     ; $6F2E: $06 $0F
    ld c, $02                                     ; $6F30: $0E $02
    call Call_000_1139                            ; $6F32: $CD $39 $11
    ld e, $00                                     ; $6F35: $1E $00
    ld d, $5A                                     ; $6F37: $16 $5A
    ld hl, $99C4                                  ; $6F39: $21 $C4 $99
    ld b, $0F                                     ; $6F3C: $06 $0F
    ld c, $02                                     ; $6F3E: $0E $02
    call Call_000_1139                            ; $6F40: $CD $39 $11
    ld a, [$C009]                                 ; $6F43: $FA $09 $C0
    ld c, a                                       ; $6F46: $4F
    ld a, [$C00A]                                 ; $6F47: $FA $0A $C0
    ld b, a                                       ; $6F4A: $47
    ld hl, $988E                                  ; $6F4B: $21 $8E $98
    call Call_03B_70F8                            ; $6F4E: $CD $F8 $70
    ld a, [$C00C]                                 ; $6F51: $FA $0C $C0
    ld c, a                                       ; $6F54: $4F
    ld a, [$C00D]                                 ; $6F55: $FA $0D $C0
    ld b, a                                       ; $6F58: $47
    ld hl, $990E                                  ; $6F59: $21 $0E $99
    call Call_03B_70F8                            ; $6F5C: $CD $F8 $70
    ld a, [$C00F]                                 ; $6F5F: $FA $0F $C0
    ld c, a                                       ; $6F62: $4F
    ld a, [$C010]                                 ; $6F63: $FA $10 $C0
    ld b, a                                       ; $6F66: $47
    ld hl, $998D                                  ; $6F67: $21 $8D $99
    call Call_03B_7056                            ; $6F6A: $CD $56 $70
    ld e, $00                                     ; $6F6D: $1E $00
    ld d, $97                                     ; $6F6F: $16 $97
    ld hl, $998F                                  ; $6F71: $21 $8F $99
    ld b, $01                                     ; $6F74: $06 $01
    ld c, $01                                     ; $6F76: $0E $01
    call Call_000_10EA                            ; $6F78: $CD $EA $10
    ld a, [$C012]                                 ; $6F7B: $FA $12 $C0
    ld c, a                                       ; $6F7E: $4F
    ld a, [$C013]                                 ; $6F7F: $FA $13 $C0
    ld b, a                                       ; $6F82: $47
    ld hl, $9A0E                                  ; $6F83: $21 $0E $9A
    call Call_03B_70F8                            ; $6F86: $CD $F8 $70
    ld hl, $462C                                  ; $6F89: $21 $2C $46
    ld b, $33                                     ; $6F8C: $06 $33
    ld de, $C429                                  ; $6F8E: $11 $29 $C4
    rst RST_20                                    ; $6F91: $E7
    ld a, [$C008]                                 ; $6F92: $FA $08 $C0
    and $0F                                       ; $6F95: $E6 $0F
    ld e, $00                                     ; $6F97: $1E $00
    ld d, a                                       ; $6F99: $57
    ld hl, $C429                                  ; $6F9A: $21 $29 $C4
    add hl, de                                    ; $6F9D: $19
    ld de, $8AC0                                  ; $6F9E: $11 $C0 $8A
    ld b, $10                                     ; $6FA1: $06 $10
    call Call_000_1188                            ; $6FA3: $CD $88 $11
    ld a, [$C00B]                                 ; $6FA6: $FA $0B $C0
    and $0F                                       ; $6FA9: $E6 $0F
    ld e, $00                                     ; $6FAB: $1E $00
    ld d, a                                       ; $6FAD: $57
    ld hl, $C429                                  ; $6FAE: $21 $29 $C4
    add hl, de                                    ; $6FB1: $19
    ld de, $8BC0                                  ; $6FB2: $11 $C0 $8B
    ld b, $10                                     ; $6FB5: $06 $10
    call Call_000_1188                            ; $6FB7: $CD $88 $11
    ld a, [$C00E]                                 ; $6FBA: $FA $0E $C0
    and $0F                                       ; $6FBD: $E6 $0F
    ld e, $00                                     ; $6FBF: $1E $00
    ld d, a                                       ; $6FC1: $57
    ld hl, $C429                                  ; $6FC2: $21 $29 $C4
    add hl, de                                    ; $6FC5: $19
    ld de, $8CC0                                  ; $6FC6: $11 $C0 $8C
    ld b, $10                                     ; $6FC9: $06 $10
    call Call_000_1188                            ; $6FCB: $CD $88 $11
    ld a, [$C011]                                 ; $6FCE: $FA $11 $C0
    and $0F                                       ; $6FD1: $E6 $0F
    ld e, $00                                     ; $6FD3: $1E $00
    ld d, a                                       ; $6FD5: $57
    ld hl, $C429                                  ; $6FD6: $21 $29 $C4
    add hl, de                                    ; $6FD9: $19
    ld de, $8DC0                                  ; $6FDA: $11 $C0 $8D
    ld b, $10                                     ; $6FDD: $06 $10
    call Call_000_1188                            ; $6FDF: $CD $88 $11
    ld e, $00                                     ; $6FE2: $1E $00
    ld d, $AC                                     ; $6FE4: $16 $AC
    ld hl, $9882                                  ; $6FE6: $21 $82 $98
    ld b, $08                                     ; $6FE9: $06 $08
    ld c, $02                                     ; $6FEB: $0E $02
    call Call_000_1139                            ; $6FED: $CD $39 $11
    ld e, $00                                     ; $6FF0: $1E $00
    ld d, $BC                                     ; $6FF2: $16 $BC
    ld hl, $9902                                  ; $6FF4: $21 $02 $99
    ld b, $08                                     ; $6FF7: $06 $08
    ld c, $02                                     ; $6FF9: $0E $02
    call Call_000_1139                            ; $6FFB: $CD $39 $11
    ld e, $00                                     ; $6FFE: $1E $00
    ld d, $CC                                     ; $7000: $16 $CC
    ld hl, $9982                                  ; $7002: $21 $82 $99
    ld b, $08                                     ; $7005: $06 $08
    ld c, $02                                     ; $7007: $0E $02
    call Call_000_1139                            ; $7009: $CD $39 $11
    ld e, $00                                     ; $700C: $1E $00
    ld d, $DC                                     ; $700E: $16 $DC
    ld hl, $9A02                                  ; $7010: $21 $02 $9A
    ld b, $08                                     ; $7013: $06 $08
    ld c, $02                                     ; $7015: $0E $02
    call Call_000_1139                            ; $7017: $CD $39 $11
    ret                                           ; $701A: $C9


Call_03B_701B:
    ldh a, [$FF98]                                ; $701B: $F0 $98
    ld e, a                                       ; $701D: $5F
    ldh a, [$FFAB]                                ; $701E: $F0 $AB
    or e                                          ; $7020: $B3
    bit 2, a                                      ; $7021: $CB $57
    jp z, Jump_03B_7042                           ; $7023: $CA $42 $70

    ld a, [$C318]                                 ; $7026: $FA $18 $C3
    and $07                                       ; $7029: $E6 $07
    ret z                                         ; $702B: $C8

    ld c, a                                       ; $702C: $4F
    ld hl, $D6C0                                  ; $702D: $21 $C0 $D6

jr_03B_7030:
    ld a, $80                                     ; $7030: $3E $80
    ld [hl], a                                    ; $7032: $77
    push bc                                       ; $7033: $C5
    push hl                                       ; $7034: $E5
    call Call_000_0E28                            ; $7035: $CD $28 $0E
    pop hl                                        ; $7038: $E1
    pop bc                                        ; $7039: $C1
    ld de, $0040                                  ; $703A: $11 $40 $00
    add hl, de                                    ; $703D: $19
    dec c                                         ; $703E: $0D
    jr nz, jr_03B_7030                            ; $703F: $20 $EF

    ret                                           ; $7041: $C9


Call_03B_7042:
Jump_03B_7042:
    ld a, [$C318]                                 ; $7042: $FA $18 $C3
    and $07                                       ; $7045: $E6 $07
    ret z                                         ; $7047: $C8

    ld c, a                                       ; $7048: $4F
    ld hl, $D6C0                                  ; $7049: $21 $C0 $D6
    ld de, $0040                                  ; $704C: $11 $40 $00

jr_03B_704F:
    xor a                                         ; $704F: $AF
    ld [hl], a                                    ; $7050: $77
    add hl, de                                    ; $7051: $19
    dec c                                         ; $7052: $0D
    jr nz, jr_03B_704F                            ; $7053: $20 $FA

    ret                                           ; $7055: $C9


Call_03B_7056:
    push bc                                       ; $7056: $C5
    push hl                                       ; $7057: $E5
    ld a, b                                       ; $7058: $78
    swap a                                        ; $7059: $CB $37
    and $0F                                       ; $705B: $E6 $0F
    jr z, jr_03B_706C                             ; $705D: $28 $0D

    add a                                         ; $705F: $87
    add $98                                       ; $7060: $C6 $98
    ld e, $00                                     ; $7062: $1E $00
    ld d, a                                       ; $7064: $57
    ld b, $01                                     ; $7065: $06 $01
    ld c, $02                                     ; $7067: $0E $02
    call Call_000_1139                            ; $7069: $CD $39 $11

jr_03B_706C:
    pop hl                                        ; $706C: $E1
    pop bc                                        ; $706D: $C1
    ld de, $0001                                  ; $706E: $11 $01 $00
    add hl, de                                    ; $7071: $19
    push bc                                       ; $7072: $C5
    push hl                                       ; $7073: $E5
    ld a, b                                       ; $7074: $78
    and $0F                                       ; $7075: $E6 $0F
    add a                                         ; $7077: $87
    add $98                                       ; $7078: $C6 $98
    ld e, $00                                     ; $707A: $1E $00
    ld d, a                                       ; $707C: $57
    ld b, $01                                     ; $707D: $06 $01
    ld c, $02                                     ; $707F: $0E $02
    call Call_000_1139                            ; $7081: $CD $39 $11
    pop hl                                        ; $7084: $E1
    pop bc                                        ; $7085: $C1
    push hl                                       ; $7086: $E5
    ld e, c                                       ; $7087: $59
    ld d, $00                                     ; $7088: $16 $00
    ld hl, $70BC                                  ; $708A: $21 $BC $70
    add hl, de                                    ; $708D: $19
    ld a, [hl]                                    ; $708E: $7E
    pop hl                                        ; $708F: $E1
    ld de, $0002                                  ; $7090: $11 $02 $00
    add hl, de                                    ; $7093: $19
    push af                                       ; $7094: $F5
    push hl                                       ; $7095: $E5
    swap a                                        ; $7096: $CB $37
    and $0F                                       ; $7098: $E6 $0F
    add a                                         ; $709A: $87
    add $98                                       ; $709B: $C6 $98
    ld e, $00                                     ; $709D: $1E $00
    ld d, a                                       ; $709F: $57
    ld b, $01                                     ; $70A0: $06 $01
    ld c, $02                                     ; $70A2: $0E $02
    call Call_000_1139                            ; $70A4: $CD $39 $11
    pop hl                                        ; $70A7: $E1
    pop af                                        ; $70A8: $F1
    ld de, $0001                                  ; $70A9: $11 $01 $00
    add hl, de                                    ; $70AC: $19
    and $0F                                       ; $70AD: $E6 $0F
    add a                                         ; $70AF: $87
    add $98                                       ; $70B0: $C6 $98
    ld e, $00                                     ; $70B2: $1E $00
    ld d, a                                       ; $70B4: $57
    ld b, $01                                     ; $70B5: $06 $01
    ld c, $02                                     ; $70B7: $0E $02
    jp Jump_000_1139                              ; $70B9: $C3 $39 $11


    nop                                           ; $70BC: $00
    ld bc, $0503                                  ; $70BD: $01 $03 $05
    rlca                                          ; $70C0: $07
    add hl, bc                                    ; $70C1: $09
    db $10                                        ; $70C2: $10
    ld [de], a                                    ; $70C3: $12
    inc d                                         ; $70C4: $14
    ld d, $18                                     ; $70C5: $16 $18
    add hl, de                                    ; $70C7: $19
    jr nz, jr_03B_70EB                            ; $70C8: $20 $21

    inc hl                                        ; $70CA: $23
    dec h                                         ; $70CB: $25
    daa                                           ; $70CC: $27
    add hl, hl                                    ; $70CD: $29
    jr nc, jr_03B_7102                            ; $70CE: $30 $32

    inc [hl]                                      ; $70D0: $34
    ld [hl], $38                                  ; $70D1: $36 $38
    add hl, sp                                    ; $70D3: $39
    ld b, b                                       ; $70D4: $40
    ld b, c                                       ; $70D5: $41
    ld b, e                                       ; $70D6: $43
    ld b, l                                       ; $70D7: $45
    ld b, a                                       ; $70D8: $47
    ld c, c                                       ; $70D9: $49
    ld d, b                                       ; $70DA: $50
    ld d, d                                       ; $70DB: $52
    ld d, h                                       ; $70DC: $54
    ld d, [hl]                                    ; $70DD: $56
    ld e, b                                       ; $70DE: $58
    ld e, c                                       ; $70DF: $59
    ld h, b                                       ; $70E0: $60
    ld h, c                                       ; $70E1: $61
    ld h, e                                       ; $70E2: $63
    ld h, l                                       ; $70E3: $65
    ld h, a                                       ; $70E4: $67
    ld l, c                                       ; $70E5: $69
    ld [hl], b                                    ; $70E6: $70
    ld [hl], d                                    ; $70E7: $72
    ld [hl], h                                    ; $70E8: $74
    halt                                          ; $70E9: $76
    ld a, b                                       ; $70EA: $78

jr_03B_70EB:
    ld a, c                                       ; $70EB: $79
    add b                                         ; $70EC: $80
    add c                                         ; $70ED: $81
    add e                                         ; $70EE: $83
    add l                                         ; $70EF: $85
    add a                                         ; $70F0: $87
    adc c                                         ; $70F1: $89
    sub b                                         ; $70F2: $90
    sub d                                         ; $70F3: $92
    sub h                                         ; $70F4: $94
    sub [hl]                                      ; $70F5: $96
    sbc b                                         ; $70F6: $98
    sbc c                                         ; $70F7: $99

Call_03B_70F8:
    ld a, b                                       ; $70F8: $78
    swap a                                        ; $70F9: $CB $37
    and $0F                                       ; $70FB: $E6 $0F
    jr z, jr_03B_7110                             ; $70FD: $28 $11

    push bc                                       ; $70FF: $C5
    push hl                                       ; $7100: $E5
    add a                                         ; $7101: $87

jr_03B_7102:
    add $98                                       ; $7102: $C6 $98
    ld d, a                                       ; $7104: $57
    ld e, $00                                     ; $7105: $1E $00
    ld b, $01                                     ; $7107: $06 $01
    ld c, $02                                     ; $7109: $0E $02
    call Call_000_1139                            ; $710B: $CD $39 $11
    pop hl                                        ; $710E: $E1
    pop bc                                        ; $710F: $C1

jr_03B_7110:
    ld de, $0001                                  ; $7110: $11 $01 $00
    add hl, de                                    ; $7113: $19
    ld a, b                                       ; $7114: $78
    or a                                          ; $7115: $B7
    jr z, jr_03B_712B                             ; $7116: $28 $13

    and $0F                                       ; $7118: $E6 $0F
    push bc                                       ; $711A: $C5
    push hl                                       ; $711B: $E5
    add a                                         ; $711C: $87
    add $98                                       ; $711D: $C6 $98
    ld d, a                                       ; $711F: $57
    ld e, $00                                     ; $7120: $1E $00
    ld b, $01                                     ; $7122: $06 $01
    ld c, $02                                     ; $7124: $0E $02
    call Call_000_1139                            ; $7126: $CD $39 $11
    pop hl                                        ; $7129: $E1
    pop bc                                        ; $712A: $C1

jr_03B_712B:
    ld de, $0001                                  ; $712B: $11 $01 $00
    add hl, de                                    ; $712E: $19
    ld a, c                                       ; $712F: $79
    swap a                                        ; $7130: $CB $37
    and $0F                                       ; $7132: $E6 $0F
    jr nz, jr_03B_713B                            ; $7134: $20 $05

    ld a, b                                       ; $7136: $78
    or a                                          ; $7137: $B7
    jr z, jr_03B_714C                             ; $7138: $28 $12

    xor a                                         ; $713A: $AF

jr_03B_713B:
    push bc                                       ; $713B: $C5
    push hl                                       ; $713C: $E5
    add a                                         ; $713D: $87
    add $98                                       ; $713E: $C6 $98
    ld d, a                                       ; $7140: $57
    ld e, $00                                     ; $7141: $1E $00
    ld b, $01                                     ; $7143: $06 $01
    ld c, $02                                     ; $7145: $0E $02
    call Call_000_1139                            ; $7147: $CD $39 $11
    pop hl                                        ; $714A: $E1
    pop bc                                        ; $714B: $C1

jr_03B_714C:
    ld de, $0001                                  ; $714C: $11 $01 $00
    add hl, de                                    ; $714F: $19
    ld a, c                                       ; $7150: $79
    and $0F                                       ; $7151: $E6 $0F
    add a                                         ; $7153: $87
    add $98                                       ; $7154: $C6 $98
    ld d, a                                       ; $7156: $57
    ld e, $00                                     ; $7157: $1E $00
    ld b, $01                                     ; $7159: $06 $01
    ld c, $02                                     ; $715B: $0E $02
    call Call_000_1139                            ; $715D: $CD $39 $11
    ret                                           ; $7160: $C9


Call_03B_7161:
    ld a, $0F                                     ; $7161: $3E $0F
    ld [hl+], a                                   ; $7163: $22
    ld c, a                                       ; $7164: $4F

Jump_03B_7165:
    ld a, [de]                                    ; $7165: $1A
    inc de                                        ; $7166: $13
    ld [hl+], a                                   ; $7167: $22
    dec c                                         ; $7168: $0D
    jp nz, Jump_03B_7165                          ; $7169: $C2 $65 $71

    ld de, $C429                                  ; $716C: $11 $29 $C4
    ld hl, $C312                                  ; $716F: $21 $12 $C3
    ld [hl], e                                    ; $7172: $73
    inc hl                                        ; $7173: $23
    ld [hl], d                                    ; $7174: $72
    ld b, $36                                     ; $7175: $06 $36
    ld hl, $4000                                  ; $7177: $21 $00 $40
    rst RST_08                                    ; $717A: $CF
    ld a, [$C42B]                                 ; $717B: $FA $2B $C4
    add a                                         ; $717E: $87
    ld c, a                                       ; $717F: $4F
    ld de, $C529                                  ; $7180: $11 $29 $C5
    ld hl, $C929                                  ; $7183: $21 $29 $C9

Jump_03B_7186:
    ld a, $FF                                     ; $7186: $3E $FF
    ld [hl+], a                                   ; $7188: $22
    ld [hl+], a                                   ; $7189: $22
    ld [hl+], a                                   ; $718A: $22
    ld [hl+], a                                   ; $718B: $22
    ld a, [de]                                    ; $718C: $1A
    inc de                                        ; $718D: $13
    cpl                                           ; $718E: $2F
    ld [hl+], a                                   ; $718F: $22
    ld [hl+], a                                   ; $7190: $22
    ld a, [de]                                    ; $7191: $1A
    inc de                                        ; $7192: $13
    cpl                                           ; $7193: $2F
    ld [hl+], a                                   ; $7194: $22
    ld [hl+], a                                   ; $7195: $22
    ld a, [de]                                    ; $7196: $1A
    inc de                                        ; $7197: $13
    cpl                                           ; $7198: $2F
    ld [hl+], a                                   ; $7199: $22
    ld [hl+], a                                   ; $719A: $22
    ld a, [de]                                    ; $719B: $1A
    inc de                                        ; $719C: $13
    cpl                                           ; $719D: $2F
    ld [hl+], a                                   ; $719E: $22
    ld [hl+], a                                   ; $719F: $22
    ld a, [de]                                    ; $71A0: $1A
    inc de                                        ; $71A1: $13
    cpl                                           ; $71A2: $2F
    ld [hl+], a                                   ; $71A3: $22
    ld [hl+], a                                   ; $71A4: $22
    ld a, [de]                                    ; $71A5: $1A
    inc de                                        ; $71A6: $13
    cpl                                           ; $71A7: $2F
    ld [hl+], a                                   ; $71A8: $22
    ld [hl+], a                                   ; $71A9: $22
    ld a, [de]                                    ; $71AA: $1A
    inc de                                        ; $71AB: $13
    cpl                                           ; $71AC: $2F
    ld [hl+], a                                   ; $71AD: $22
    ld [hl+], a                                   ; $71AE: $22
    ld a, [de]                                    ; $71AF: $1A
    inc de                                        ; $71B0: $13
    cpl                                           ; $71B1: $2F
    ld [hl+], a                                   ; $71B2: $22
    ld [hl+], a                                   ; $71B3: $22
    ld a, [de]                                    ; $71B4: $1A
    inc de                                        ; $71B5: $13
    cpl                                           ; $71B6: $2F
    ld [hl+], a                                   ; $71B7: $22
    ld [hl+], a                                   ; $71B8: $22
    ld a, [de]                                    ; $71B9: $1A
    inc de                                        ; $71BA: $13
    cpl                                           ; $71BB: $2F
    ld [hl+], a                                   ; $71BC: $22
    ld [hl+], a                                   ; $71BD: $22
    ld a, [de]                                    ; $71BE: $1A
    inc de                                        ; $71BF: $13
    cpl                                           ; $71C0: $2F
    ld [hl+], a                                   ; $71C1: $22
    ld [hl+], a                                   ; $71C2: $22
    ld a, [de]                                    ; $71C3: $1A
    inc de                                        ; $71C4: $13
    cpl                                           ; $71C5: $2F
    ld [hl+], a                                   ; $71C6: $22
    ld [hl+], a                                   ; $71C7: $22
    ld a, $FF                                     ; $71C8: $3E $FF
    ld [hl+], a                                   ; $71CA: $22
    ld [hl+], a                                   ; $71CB: $22
    ld [hl+], a                                   ; $71CC: $22
    ld [hl+], a                                   ; $71CD: $22
    dec c                                         ; $71CE: $0D
    jp nz, Jump_03B_7186                          ; $71CF: $C2 $86 $71

    ret                                           ; $71D2: $C9


    add b                                         ; $71D3: $80
    nop                                           ; $71D4: $00
    nop                                           ; $71D5: $00
    nop                                           ; $71D6: $00
    jr jr_03B_71D9                                ; $71D7: $18 $00

jr_03B_71D9:
    ldh [rP1], a                                  ; $71D9: $E0 $00
    nop                                           ; $71DB: $00
    nop                                           ; $71DC: $00
    nop                                           ; $71DD: $00
    nop                                           ; $71DE: $00
    nop                                           ; $71DF: $00
    nop                                           ; $71E0: $00
    ret nz                                        ; $71E1: $C0

    nop                                           ; $71E2: $00
    add b                                         ; $71E3: $80
    dec sp                                        ; $71E4: $3B
    di                                            ; $71E5: $F3
    ld [hl], c                                    ; $71E6: $71
    nop                                           ; $71E7: $00
    nop                                           ; $71E8: $00
    di                                            ; $71E9: $F3
    ld [hl], c                                    ; $71EA: $71
    nop                                           ; $71EB: $00
    nop                                           ; $71EC: $00
    nop                                           ; $71ED: $00
    nop                                           ; $71EE: $00
    rlca                                          ; $71EF: $07
    rlca                                          ; $71F0: $07
    ret nz                                        ; $71F1: $C0

    ret c                                         ; $71F2: $D8

    db $FD                                        ; $71F3: $FD
    ld [hl], c                                    ; $71F4: $71
    rst RST_38                                    ; $71F5: $FF
    rst RST_38                                    ; $71F6: $FF
    ld c, $72                                     ; $71F7: $0E $72
    rst RST_38                                    ; $71F9: $FF
    rst RST_38                                    ; $71FA: $FF
    rst RST_38                                    ; $71FB: $FF
    rst RST_38                                    ; $71FC: $FF
    sub b                                         ; $71FD: $90
    nop                                           ; $71FE: $00
    nop                                           ; $71FF: $00
    rst RST_38                                    ; $7200: $FF
    rst RST_38                                    ; $7201: $FF
    rst RST_38                                    ; $7202: $FF
    rlca                                          ; $7203: $07
    ld [hl], d                                    ; $7204: $72
    nop                                           ; $7205: $00
    nop                                           ; $7206: $00
    ld [bc], a                                    ; $7207: $02
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    nop                                           ; $720A: $00
    nop                                           ; $720B: $00
    ld [$9002], sp                                ; $720C: $08 $02 $90
    nop                                           ; $720F: $00
    nop                                           ; $7210: $00
    rst RST_38                                    ; $7211: $FF
    rst RST_38                                    ; $7212: $FF
    rst RST_38                                    ; $7213: $FF
    jr @+$74                                      ; $7214: $18 $72

    nop                                           ; $7216: $00
    nop                                           ; $7217: $00
    ld [bc], a                                    ; $7218: $02
    nop                                           ; $7219: $00
    nop                                           ; $721A: $00
    inc b                                         ; $721B: $04
    nop                                           ; $721C: $00
    ld [$AA06], sp                                ; $721D: $08 $06 $AA
    nop                                           ; $7220: $00
    pop bc                                        ; $7221: $C1
    sub d                                         ; $7222: $92
    nop                                           ; $7223: $00
    ld b, a                                       ; $7224: $47
    ld [de], a                                    ; $7225: $12
    nop                                           ; $7226: $00
    ld a, [de]                                    ; $7227: $1A
    rlc b                                         ; $7228: $CB $00
    ld bc, $0001                                  ; $722A: $01 $01 $00
    ld bc, $0082                                  ; $722D: $01 $82 $00
    halt                                          ; $7230: $76
    sbc d                                         ; $7231: $9A
    nop                                           ; $7232: $00
    ld b, a                                       ; $7233: $47
    ld [de], a                                    ; $7234: $12
    nop                                           ; $7235: $00
    ld a, [de]                                    ; $7236: $1A
    rlc b                                         ; $7237: $CB $00
    inc b                                         ; $7239: $04
    ld bc, $0100                                  ; $723A: $01 $00 $01
    ld c, [hl]                                    ; $723D: $4E
    nop                                           ; $723E: $00
    ld [hl], $6B                                  ; $723F: $36 $6B
    nop                                           ; $7241: $00
    res 4, [hl]                                   ; $7242: $CB $A6
    nop                                           ; $7244: $00
    halt                                          ; $7245: $76
    adc c                                         ; $7246: $89
    nop                                           ; $7247: $00
    sub l                                         ; $7248: $95
    ld bc, $0100                                  ; $7249: $01 $00 $01
    ccf                                           ; $724C: $3F
    nop                                           ; $724D: $00
    ccf                                           ; $724E: $3F
    dec hl                                        ; $724F: $2B
    nop                                           ; $7250: $00
    add hl, hl                                    ; $7251: $29
    rlc b                                         ; $7252: $CB $00
    and [hl]                                      ; $7254: $A6
    halt                                          ; $7255: $76
    nop                                           ; $7256: $00
    adc c                                         ; $7257: $89
    sub l                                         ; $7258: $95
    nop                                           ; $7259: $00
    ld bc, $003E                                  ; $725A: $01 $3E $00
    ld [$C31B], a                                 ; $725D: $EA $1B $C3
    di                                            ; $7260: $F3
    rst RST_10                                    ; $7261: $D7
    ld hl, $C03A                                  ; $7262: $21 $3A $C0
    res 1, [hl]                                   ; $7265: $CB $8E
    ld a, $00                                     ; $7267: $3E $00
    call Call_000_135D                            ; $7269: $CD $5D $13
    xor a                                         ; $726C: $AF
    ldh [rBGP], a                                 ; $726D: $E0 $47
    ldh [rOBP0], a                                ; $726F: $E0 $48
    ldh [rOBP1], a                                ; $7271: $E0 $49
    call Call_000_13ED                            ; $7273: $CD $ED $13
    ld de, $0024                                  ; $7276: $11 $24 $00
    call Call_000_14C0                            ; $7279: $CD $C0 $14
    call Call_000_0FBD                            ; $727C: $CD $BD $0F
    call Call_000_0FC6                            ; $727F: $CD $C6 $0F
    xor a                                         ; $7282: $AF
    ldh [$FFE4], a                                ; $7283: $E0 $E4
    ldh [$FFE2], a                                ; $7285: $E0 $E2
    ld [$C2AA], a                                 ; $7287: $EA $AA $C2
    ld a, $F0                                     ; $728A: $3E $F0
    ld [$C2AC], a                                 ; $728C: $EA $AC $C2
    xor a                                         ; $728F: $AF
    ld hl, $C339                                  ; $7290: $21 $39 $C3
    ld c, $20                                     ; $7293: $0E $20

jr_03B_7295:
    ld [hl+], a                                   ; $7295: $22
    dec c                                         ; $7296: $0D
    jr nz, jr_03B_7295                            ; $7297: $20 $FC

    ld hl, $C339                                  ; $7299: $21 $39 $C3
    ld de, $8800                                  ; $729C: $11 $00 $88
    ld b, $02                                     ; $729F: $06 $02
    call Call_000_1188                            ; $72A1: $CD $88 $11
    ld hl, $75E2                                  ; $72A4: $21 $E2 $75
    ld de, $C359                                  ; $72A7: $11 $59 $C3
    ld b, $30                                     ; $72AA: $06 $30
    rst RST_20                                    ; $72AC: $E7
    ld hl, $C359                                  ; $72AD: $21 $59 $C3
    ld de, $8820                                  ; $72B0: $11 $20 $88
    ld b, $16                                     ; $72B3: $06 $16
    call Call_000_1188                            ; $72B5: $CD $88 $11
    ld hl, $76F5                                  ; $72B8: $21 $F5 $76
    ld de, $C359                                  ; $72BB: $11 $59 $C3
    ld b, $30                                     ; $72BE: $06 $30
    rst RST_20                                    ; $72C0: $E7
    ld hl, $C359                                  ; $72C1: $21 $59 $C3
    ld de, $8980                                  ; $72C4: $11 $80 $89
    ld b, $12                                     ; $72C7: $06 $12
    call Call_000_1188                            ; $72C9: $CD $88 $11
    ld hl, $77CA                                  ; $72CC: $21 $CA $77
    ld de, $C359                                  ; $72CF: $11 $59 $C3
    ld b, $30                                     ; $72D2: $06 $30
    rst RST_20                                    ; $72D4: $E7
    ld hl, $C359                                  ; $72D5: $21 $59 $C3
    ld de, $8AA0                                  ; $72D8: $11 $A0 $8A
    ld b, $0C                                     ; $72DB: $06 $0C
    call Call_000_1188                            ; $72DD: $CD $88 $11
    ld hl, $7864                                  ; $72E0: $21 $64 $78
    ld de, $C359                                  ; $72E3: $11 $59 $C3
    ld b, $30                                     ; $72E6: $06 $30
    rst RST_20                                    ; $72E8: $E7
    ld hl, $C359                                  ; $72E9: $21 $59 $C3
    ld de, $8B60                                  ; $72EC: $11 $60 $8B
    ld b, $14                                     ; $72EF: $06 $14
    call Call_000_1188                            ; $72F1: $CD $88 $11
    ld hl, $7946                                  ; $72F4: $21 $46 $79
    ld de, $C359                                  ; $72F7: $11 $59 $C3
    ld b, $30                                     ; $72FA: $06 $30
    rst RST_20                                    ; $72FC: $E7
    ld hl, $C359                                  ; $72FD: $21 $59 $C3
    ld de, $8CA0                                  ; $7300: $11 $A0 $8C
    ld b, $0E                                     ; $7303: $06 $0E
    call Call_000_1188                            ; $7305: $CD $88 $11
    ld hl, $79E6                                  ; $7308: $21 $E6 $79
    ld de, $C359                                  ; $730B: $11 $59 $C3
    ld b, $30                                     ; $730E: $06 $30
    rst RST_20                                    ; $7310: $E7
    ld hl, $C359                                  ; $7311: $21 $59 $C3
    ld de, $8D80                                  ; $7314: $11 $80 $8D
    ld b, $12                                     ; $7317: $06 $12
    call Call_000_1188                            ; $7319: $CD $88 $11
    ld hl, $7ABC                                  ; $731C: $21 $BC $7A
    ld de, $C359                                  ; $731F: $11 $59 $C3
    ld b, $30                                     ; $7322: $06 $30
    rst RST_20                                    ; $7324: $E7
    ld hl, $C359                                  ; $7325: $21 $59 $C3
    ld de, $8EA0                                  ; $7328: $11 $A0 $8E
    ld b, $0E                                     ; $732B: $06 $0E
    call Call_000_1188                            ; $732D: $CD $88 $11
    ld hl, $7B56                                  ; $7330: $21 $56 $7B
    ld de, $C359                                  ; $7333: $11 $59 $C3
    ld b, $30                                     ; $7336: $06 $30
    rst RST_20                                    ; $7338: $E7
    ld hl, $C359                                  ; $7339: $21 $59 $C3
    ld de, $8F80                                  ; $733C: $11 $80 $8F
    ld b, $10                                     ; $733F: $06 $10
    call Call_000_1188                            ; $7341: $CD $88 $11
    ld hl, $7C17                                  ; $7344: $21 $17 $7C
    ld de, $C359                                  ; $7347: $11 $59 $C3
    ld b, $30                                     ; $734A: $06 $30
    rst RST_20                                    ; $734C: $E7
    ld hl, $C359                                  ; $734D: $21 $59 $C3
    ld de, $9080                                  ; $7350: $11 $80 $90
    ld b, $16                                     ; $7353: $06 $16
    call Call_000_1188                            ; $7355: $CD $88 $11
    ld hl, $7D11                                  ; $7358: $21 $11 $7D
    ld de, $C359                                  ; $735B: $11 $59 $C3
    ld b, $30                                     ; $735E: $06 $30
    rst RST_20                                    ; $7360: $E7
    ld hl, $C359                                  ; $7361: $21 $59 $C3
    ld de, $91E0                                  ; $7364: $11 $E0 $91
    ld b, $10                                     ; $7367: $06 $10
    call Call_000_1188                            ; $7369: $CD $88 $11
    ld hl, $721E                                  ; $736C: $21 $1E $72
    ld de, $C359                                  ; $736F: $11 $59 $C3
    ld b, $35                                     ; $7372: $06 $35
    rst RST_20                                    ; $7374: $E7
    ld hl, $C359                                  ; $7375: $21 $59 $C3
    ld de, $92E0                                  ; $7378: $11 $E0 $92
    ld b, $46                                     ; $737B: $06 $46
    call Call_000_1188                            ; $737D: $CD $88 $11
    ld hl, $7541                                  ; $7380: $21 $41 $75
    ld de, $C359                                  ; $7383: $11 $59 $C3
    ld b, $35                                     ; $7386: $06 $35
    rst RST_20                                    ; $7388: $E7
    ld hl, $C359                                  ; $7389: $21 $59 $C3
    ld de, $8000                                  ; $738C: $11 $00 $80
    ld b, $40                                     ; $738F: $06 $40
    call Call_000_1188                            ; $7391: $CD $88 $11
    ld e, $00                                     ; $7394: $1E $00
    ld d, $80                                     ; $7396: $16 $80
    ld hl, $9800                                  ; $7398: $21 $00 $98
    ld b, $20                                     ; $739B: $06 $20
    ld c, $20                                     ; $739D: $0E $20
    call Call_000_10EA                            ; $739F: $CD $EA $10
    ld e, $00                                     ; $73A2: $1E $00
    ld d, $80                                     ; $73A4: $16 $80
    ld hl, $9C00                                  ; $73A6: $21 $00 $9C
    ld b, $20                                     ; $73A9: $06 $20
    ld c, $20                                     ; $73AB: $0E $20
    call Call_000_10EA                            ; $73AD: $CD $EA $10
    ld e, $00                                     ; $73B0: $1E $00
    ld d, $68                                     ; $73B2: $16 $68
    ld hl, $9C07                                  ; $73B4: $21 $07 $9C
    ld b, $0C                                     ; $73B7: $06 $0C
    ld c, $01                                     ; $73B9: $0E $01
    call Call_000_1111                            ; $73BB: $CD $11 $11
    call Call_000_0F9E                            ; $73BE: $CD $9E $0F
    ld hl, $D680                                  ; $73C1: $21 $80 $D6
    ld de, $78FD                                  ; $73C4: $11 $FD $78
    call Call_000_0F8E                            ; $73C7: $CD $8E $0F
    ld a, $07                                     ; $73CA: $3E $07
    ldh [rWX], a                                  ; $73CC: $E0 $4B
    ld a, $87                                     ; $73CE: $3E $87
    ldh [rWY], a                                  ; $73D0: $E0 $4A
    ld a, $E7                                     ; $73D2: $3E $E7
    rst RST_18                                    ; $73D4: $DF
    xor a                                         ; $73D5: $AF
    ldh [rSTAT], a                                ; $73D6: $E0 $41
    ei                                            ; $73D8: $FB
    ld de, $7823                                  ; $73D9: $11 $23 $78
    ld hl, $C329                                  ; $73DC: $21 $29 $C3
    ld c, $20                                     ; $73DF: $0E $20

jr_03B_73E1:
    ld a, [de]                                    ; $73E1: $1A
    inc de                                        ; $73E2: $13
    ld [hl+], a                                   ; $73E3: $22
    dec c                                         ; $73E4: $0D
    jr nz, jr_03B_73E1                            ; $73E5: $20 $FA

    ld e, $00                                     ; $73E7: $1E $00
    ld d, $0D                                     ; $73E9: $16 $0D
    ld a, [$C001]                                 ; $73EB: $FA $01 $C0
    and $C0                                       ; $73EE: $E6 $C0
    jr z, jr_03B_7404                             ; $73F0: $28 $12

    ld d, $11                                     ; $73F2: $16 $11
    ld e, $03                                     ; $73F4: $1E $03
    cp $C0                                        ; $73F6: $FE $C0
    jr z, jr_03B_7404                             ; $73F8: $28 $0A

    ld d, $0F                                     ; $73FA: $16 $0F
    ld e, $01                                     ; $73FC: $1E $01
    cp $80                                        ; $73FE: $FE $80
    jr z, jr_03B_7404                             ; $7400: $28 $02

    ld e, $02                                     ; $7402: $1E $02

jr_03B_7404:
    ld a, d                                       ; $7404: $7A
    ld [$C331], a                                 ; $7405: $EA $31 $C3
    ld a, e                                       ; $7408: $7B
    ld [$C332], a                                 ; $7409: $EA $32 $C3
    ld a, [$C31B]                                 ; $740C: $FA $1B $C3
    ld [$C32B], a                                 ; $740F: $EA $2B $C3
    ld b, $00                                     ; $7412: $06 $00
    cp $05                                        ; $7414: $FE $05
    jr c, jr_03B_744A                             ; $7416: $38 $32

    cp d                                          ; $7418: $BA
    jr c, jr_03B_7435                             ; $7419: $38 $1A

    ld e, a                                       ; $741B: $5F
    ld a, d                                       ; $741C: $7A
    sub $05                                       ; $741D: $D6 $05
    add a                                         ; $741F: $87
    add a                                         ; $7420: $87
    add a                                         ; $7421: $87
    add a                                         ; $7422: $87
    ld c, a                                       ; $7423: $4F
    ld a, [$C32D]                                 ; $7424: $FA $2D $C3
    add c                                         ; $7427: $81
    ld [$C32D], a                                 ; $7428: $EA $2D $C3
    ld a, d                                       ; $742B: $7A
    sub $06                                       ; $742C: $D6 $06
    ld b, a                                       ; $742E: $47
    ld a, e                                       ; $742F: $7B
    sub d                                         ; $7430: $92
    add $05                                       ; $7431: $C6 $05
    jr jr_03B_744A                                ; $7433: $18 $15

jr_03B_7435:
    ld e, a                                       ; $7435: $5F
    sub $04                                       ; $7436: $D6 $04
    add a                                         ; $7438: $87
    add a                                         ; $7439: $87
    add a                                         ; $743A: $87
    add a                                         ; $743B: $87
    ld c, a                                       ; $743C: $4F
    ld a, [$C32D]                                 ; $743D: $FA $2D $C3
    add c                                         ; $7440: $81
    ld [$C32D], a                                 ; $7441: $EA $2D $C3
    ld a, e                                       ; $7444: $7B
    sub $05                                       ; $7445: $D6 $05
    ld b, a                                       ; $7447: $47
    ld a, $04                                     ; $7448: $3E $04

jr_03B_744A:
    ld [$C32C], a                                 ; $744A: $EA $2C $C3
    add a                                         ; $744D: $87
    add a                                         ; $744E: $87
    add a                                         ; $744F: $87
    add a                                         ; $7450: $87
    add $0F                                       ; $7451: $C6 $0F
    ld [$C32E], a                                 ; $7453: $EA $2E $C3
    ld a, [$C32D]                                 ; $7456: $FA $2D $C3
    ldh [$FFE2], a                                ; $7459: $E0 $E2
    ld c, $09                                     ; $745B: $0E $09

jr_03B_745D:
    push bc                                       ; $745D: $C5
    call Call_03B_7601                            ; $745E: $CD $01 $76
    pop bc                                        ; $7461: $C1
    inc b                                         ; $7462: $04
    dec c                                         ; $7463: $0D
    jr nz, jr_03B_745D                            ; $7464: $20 $F7

    call Call_000_0424                            ; $7466: $CD $24 $04
    ld a, $1B                                     ; $7469: $3E $1B
    ldh [rBGP], a                                 ; $746B: $E0 $47
    ldh [rOBP0], a                                ; $746D: $E0 $48
    ldh [rOBP1], a                                ; $746F: $E0 $49
    call Call_000_147A                            ; $7471: $CD $7A $14

Jump_03B_7474:
    call Call_000_17A0                            ; $7474: $CD $A0 $17
    call Call_03B_77F2                            ; $7477: $CD $F2 $77
    bit 4, a                                      ; $747A: $CB $67
    jr nz, jr_03B_74D7                            ; $747C: $20 $59

    bit 5, a                                      ; $747E: $CB $6F
    jr nz, jr_03B_74DF                            ; $7480: $20 $5D

    ld hl, $C32D                                  ; $7482: $21 $2D $C3
    ld a, [$C32F]                                 ; $7485: $FA $2F $C3
    or a                                          ; $7488: $B7
    jr z, jr_03B_7496                             ; $7489: $28 $0B

    dec a                                         ; $748B: $3D
    ld [$C32F], a                                 ; $748C: $EA $2F $C3
    ld a, [hl]                                    ; $748F: $7E
    sub $02                                       ; $7490: $D6 $02
    ld [hl], a                                    ; $7492: $77
    jp Jump_03B_7555                              ; $7493: $C3 $55 $75


jr_03B_7496:
    ld a, [$C330]                                 ; $7496: $FA $30 $C3
    or a                                          ; $7499: $B7
    jr z, jr_03B_74A7                             ; $749A: $28 $0B

    dec a                                         ; $749C: $3D
    ld [$C330], a                                 ; $749D: $EA $30 $C3
    ld a, [hl]                                    ; $74A0: $7E
    add $02                                       ; $74A1: $C6 $02
    ld [hl], a                                    ; $74A3: $77
    jp Jump_03B_7555                              ; $74A4: $C3 $55 $75


jr_03B_74A7:
    ld hl, $C32E                                  ; $74A7: $21 $2E $C3
    ld a, [$C333]                                 ; $74AA: $FA $33 $C3
    or a                                          ; $74AD: $B7
    jr z, jr_03B_74BB                             ; $74AE: $28 $0B

    dec a                                         ; $74B0: $3D
    ld [$C333], a                                 ; $74B1: $EA $33 $C3
    ld a, [hl]                                    ; $74B4: $7E
    sub $02                                       ; $74B5: $D6 $02
    ld [hl], a                                    ; $74B7: $77
    jp Jump_03B_7555                              ; $74B8: $C3 $55 $75


jr_03B_74BB:
    ld a, [$C334]                                 ; $74BB: $FA $34 $C3
    or a                                          ; $74BE: $B7
    jr z, jr_03B_74CC                             ; $74BF: $28 $0B

    dec a                                         ; $74C1: $3D
    ld [$C334], a                                 ; $74C2: $EA $34 $C3
    ld a, [hl]                                    ; $74C5: $7E
    add $02                                       ; $74C6: $C6 $02
    ld [hl], a                                    ; $74C8: $77
    jp Jump_03B_7555                              ; $74C9: $C3 $55 $75


jr_03B_74CC:
    bit 2, b                                      ; $74CC: $CB $50
    jr nz, jr_03B_74E2                            ; $74CE: $20 $12

    bit 3, b                                      ; $74D0: $CB $58
    jr nz, jr_03B_751D                            ; $74D2: $20 $49

    jp Jump_03B_7555                              ; $74D4: $C3 $55 $75


jr_03B_74D7:
    ld a, $AD                                     ; $74D7: $3E $AD
    call Call_000_1360                            ; $74D9: $CD $60 $13
    jp Jump_03B_7576                              ; $74DC: $C3 $76 $75


jr_03B_74DF:
    jp Jump_03B_75EE                              ; $74DF: $C3 $EE $75


jr_03B_74E2:
    ld a, [$C32C]                                 ; $74E2: $FA $2C $C3
    cp $00                                        ; $74E5: $FE $00
    jr z, jr_03B_7555                             ; $74E7: $28 $6C

    ld a, [$C32B]                                 ; $74E9: $FA $2B $C3
    dec a                                         ; $74EC: $3D
    ld [$C32B], a                                 ; $74ED: $EA $2B $C3
    cp $04                                        ; $74F0: $FE $04
    jr c, jr_03B_7500                             ; $74F2: $38 $0C

    ld e, a                                       ; $74F4: $5F
    ld a, [$C331]                                 ; $74F5: $FA $31 $C3
    dec a                                         ; $74F8: $3D
    ld d, a                                       ; $74F9: $57
    ld a, e                                       ; $74FA: $7B
    sub d                                         ; $74FB: $92
    jr c, jr_03B_750A                             ; $74FC: $38 $0C

    add $04                                       ; $74FE: $C6 $04

jr_03B_7500:
    ld [$C32C], a                                 ; $7500: $EA $2C $C3
    ld a, $08                                     ; $7503: $3E $08
    ld [$C333], a                                 ; $7505: $EA $33 $C3
    jr jr_03B_7555                                ; $7508: $18 $4B

jr_03B_750A:
    ld a, e                                       ; $750A: $7B
    sub $05                                       ; $750B: $D6 $05
    ld b, a                                       ; $750D: $47
    call Call_03B_7601                            ; $750E: $CD $01 $76
    ld a, $08                                     ; $7511: $3E $08
    ld [$C32F], a                                 ; $7513: $EA $2F $C3
    ld a, $04                                     ; $7516: $3E $04
    ld [$C32C], a                                 ; $7518: $EA $2C $C3
    jr jr_03B_7555                                ; $751B: $18 $38

jr_03B_751D:
    ld a, [$C32C]                                 ; $751D: $FA $2C $C3
    cp $07                                        ; $7520: $FE $07
    jr z, jr_03B_7555                             ; $7522: $28 $31

    ld a, [$C32B]                                 ; $7524: $FA $2B $C3
    inc a                                         ; $7527: $3C
    ld [$C32B], a                                 ; $7528: $EA $2B $C3
    cp $05                                        ; $752B: $FE $05
    jr c, jr_03B_753A                             ; $752D: $38 $0B

    ld e, a                                       ; $752F: $5F
    ld a, [$C331]                                 ; $7530: $FA $31 $C3
    ld d, a                                       ; $7533: $57
    ld a, e                                       ; $7534: $7B
    sub d                                         ; $7535: $92
    jr c, jr_03B_7544                             ; $7536: $38 $0C

    add $05                                       ; $7538: $C6 $05

jr_03B_753A:
    ld [$C32C], a                                 ; $753A: $EA $2C $C3
    ld a, $08                                     ; $753D: $3E $08
    ld [$C334], a                                 ; $753F: $EA $34 $C3
    jr jr_03B_7555                                ; $7542: $18 $11

jr_03B_7544:
    ld a, e                                       ; $7544: $7B
    add $03                                       ; $7545: $C6 $03
    ld b, a                                       ; $7547: $47
    call Call_03B_7601                            ; $7548: $CD $01 $76
    ld a, $08                                     ; $754B: $3E $08
    ld [$C330], a                                 ; $754D: $EA $30 $C3
    ld a, $04                                     ; $7550: $3E $04
    ld [$C32C], a                                 ; $7552: $EA $2C $C3

Jump_03B_7555:
jr_03B_7555:
    ld hl, $D680                                  ; $7555: $21 $80 $D6
    call Call_000_0E28                            ; $7558: $CD $28 $0E
    ld a, [$C32E]                                 ; $755B: $FA $2E $C3
    ld [$D686], a                                 ; $755E: $EA $86 $D6
    ld a, [$C32D]                                 ; $7561: $FA $2D $C3
    ldh [$FFE2], a                                ; $7564: $E0 $E2
    ld hl, $C329                                  ; $7566: $21 $29 $C3
    ld e, [hl]                                    ; $7569: $5E
    inc hl                                        ; $756A: $23
    ld d, [hl]                                    ; $756B: $56
    inc de                                        ; $756C: $13
    ld [hl], d                                    ; $756D: $72
    dec hl                                        ; $756E: $2B
    ld [hl], e                                    ; $756F: $73
    call Call_000_0424                            ; $7570: $CD $24 $04
    jp Jump_03B_7474                              ; $7573: $C3 $74 $74


Jump_03B_7576:
    ld hl, $C03A                                  ; $7576: $21 $3A $C0
    res 2, [hl]                                   ; $7579: $CB $96
    call Call_000_0438                            ; $757B: $CD $38 $04
    ld a, $00                                     ; $757E: $3E $00
    call Call_000_135D                            ; $7580: $CD $5D $13
    call Call_000_0424                            ; $7583: $CD $24 $04
    ld hl, $78B5                                  ; $7586: $21 $B5 $78
    ld a, [$C332]                                 ; $7589: $FA $32 $C3
    cp $01                                        ; $758C: $FE $01
    jr c, jr_03B_759F                             ; $758E: $38 $0F

    ld hl, $78C5                                  ; $7590: $21 $C5 $78
    jr z, jr_03B_759F                             ; $7593: $28 $0A

    ld hl, $78D7                                  ; $7595: $21 $D7 $78
    cp $02                                        ; $7598: $FE $02
    jr z, jr_03B_759F                             ; $759A: $28 $03

    ld hl, $78E9                                  ; $759C: $21 $E9 $78

jr_03B_759F:
    ld a, [$C32B]                                 ; $759F: $FA $2B $C3
    ld [$C31B], a                                 ; $75A2: $EA $1B $C3
    ld e, a                                       ; $75A5: $5F
    ld d, $00                                     ; $75A6: $16 $00
    add hl, de                                    ; $75A8: $19
    ld a, [hl]                                    ; $75A9: $7E
    cp $0A                                        ; $75AA: $FE $0A
    jr nc, jr_03B_75CB                            ; $75AC: $30 $1D

    ld [$C311], a                                 ; $75AE: $EA $11 $C3
    ld a, [$C002]                                 ; $75B1: $FA $02 $C0
    bit 2, a                                      ; $75B4: $CB $57
    jr z, jr_03B_75C5                             ; $75B6: $28 $0D

    call Call_03B_77DD                            ; $75B8: $CD $DD $77
    bit 1, c                                      ; $75BB: $CB $49
    jr z, jr_03B_75C5                             ; $75BD: $28 $06

    ld b, $3B                                     ; $75BF: $06 $3B
    ld hl, $4F03                                  ; $75C1: $21 $03 $4F
    rst RST_00                                    ; $75C4: $C7

jr_03B_75C5:
    ld b, $3B                                     ; $75C5: $06 $3B
    ld hl, $4004                                  ; $75C7: $21 $04 $40
    rst RST_00                                    ; $75CA: $C7

jr_03B_75CB:
    sub $09                                       ; $75CB: $D6 $09
    cp $0A                                        ; $75CD: $FE $0A
    jr nz, jr_03B_75D2                            ; $75CF: $20 $01

    xor a                                         ; $75D1: $AF

jr_03B_75D2:
    ld [$C311], a                                 ; $75D2: $EA $11 $C3
    ld a, [$C002]                                 ; $75D5: $FA $02 $C0
    bit 2, a                                      ; $75D8: $CB $57
    jr z, jr_03B_75E8                             ; $75DA: $28 $0C

    call Call_03B_77DD                            ; $75DC: $CD $DD $77
    bit 1, c                                      ; $75DF: $CB $49
    jr z, jr_03B_75E8                             ; $75E1: $28 $05

    ld a, $0A                                     ; $75E3: $3E $0A
    ld [$C311], a                                 ; $75E5: $EA $11 $C3

jr_03B_75E8:
    ld b, $3C                                     ; $75E8: $06 $3C
    ld hl, $54D1                                  ; $75EA: $21 $D1 $54
    rst RST_00                                    ; $75ED: $C7

Jump_03B_75EE:
    ld hl, $C03A                                  ; $75EE: $21 $3A $C0
    res 2, [hl]                                   ; $75F1: $CB $96
    ld a, $00                                     ; $75F3: $3E $00
    call Call_000_135D                            ; $75F5: $CD $5D $13
    call Call_000_0424                            ; $75F8: $CD $24 $04
    ld b, $3C                                     ; $75FB: $06 $3C
    ld hl, $6F95                                  ; $75FD: $21 $95 $6F
    rst RST_00                                    ; $7600: $C7

Call_03B_7601:
    ld a, [$C332]                                 ; $7601: $FA $32 $C3
    cp $01                                        ; $7604: $FE $01
    jp c, Jump_03B_769C                           ; $7606: $DA $9C $76

    jp z, Jump_03B_76FF                           ; $7609: $CA $FF $76

    cp $02                                        ; $760C: $FE $02
    jp z, Jump_03B_7763                           ; $760E: $CA $63 $77

    ld a, b                                       ; $7611: $78
    cp $0A                                        ; $7612: $FE $0A
    jr nc, jr_03B_763F                            ; $7614: $30 $29

    add a                                         ; $7616: $87
    add a                                         ; $7617: $87
    ld e, a                                       ; $7618: $5F
    ld d, $00                                     ; $7619: $16 $00
    ld hl, $7833                                  ; $761B: $21 $33 $78
    add hl, de                                    ; $761E: $19
    ld d, [hl]                                    ; $761F: $56
    inc hl                                        ; $7620: $23
    ld b, [hl]                                    ; $7621: $46
    inc hl                                        ; $7622: $23
    ld a, [hl+]                                   ; $7623: $2A
    ld c, [hl]                                    ; $7624: $4E
    ld l, a                                       ; $7625: $6F
    ld h, c                                       ; $7626: $61
    push hl                                       ; $7627: $E5
    push bc                                       ; $7628: $C5
    push de                                       ; $7629: $D5
    ld e, $00                                     ; $762A: $1E $00
    ld d, $80                                     ; $762C: $16 $80
    ld b, $0E                                     ; $762E: $06 $0E
    ld c, $02                                     ; $7630: $0E $02
    call Call_000_10EA                            ; $7632: $CD $EA $10
    pop de                                        ; $7635: $D1
    pop bc                                        ; $7636: $C1
    pop hl                                        ; $7637: $E1
    ld e, $00                                     ; $7638: $1E $00
    ld c, $02                                     ; $763A: $0E $02
    jp Jump_000_1139                              ; $763C: $C3 $39 $11


jr_03B_763F:
    cp $80                                        ; $763F: $FE $80
    jr nc, jr_03B_768E                            ; $7641: $30 $4B

    cp $14                                        ; $7643: $FE $14
    ret nc                                        ; $7645: $D0

    sub $0A                                       ; $7646: $D6 $0A
    add a                                         ; $7648: $87
    push af                                       ; $7649: $F5
    ld e, a                                       ; $764A: $5F
    ld d, $00                                     ; $764B: $16 $00
    ld hl, $78A1                                  ; $764D: $21 $A1 $78
    add hl, de                                    ; $7650: $19
    ld a, [hl+]                                   ; $7651: $2A
    ld c, [hl]                                    ; $7652: $4E
    ld l, a                                       ; $7653: $6F
    ld h, c                                       ; $7654: $61
    push hl                                       ; $7655: $E5
    ld e, $01                                     ; $7656: $1E $01
    ld d, $2E                                     ; $7658: $16 $2E
    ld b, $09                                     ; $765A: $06 $09
    ld c, $02                                     ; $765C: $0E $02
    call Call_000_1139                            ; $765E: $CD $39 $11
    pop hl                                        ; $7661: $E1
    ld de, $0009                                  ; $7662: $11 $09 $00
    add hl, de                                    ; $7665: $19
    pop af                                        ; $7666: $F1
    add $02                                       ; $7667: $C6 $02
    cp $14                                        ; $7669: $FE $14
    jr c, jr_03B_7681                             ; $766B: $38 $14

    sub $14                                       ; $766D: $D6 $14
    push af                                       ; $766F: $F5
    push hl                                       ; $7670: $E5
    ld a, $44                                     ; $7671: $3E $44
    ld e, $01                                     ; $7673: $1E $01
    ld d, a                                       ; $7675: $57
    ld b, $02                                     ; $7676: $06 $02
    ld c, $02                                     ; $7678: $0E $02
    call Call_000_1139                            ; $767A: $CD $39 $11
    pop hl                                        ; $767D: $E1
    inc hl                                        ; $767E: $23
    inc hl                                        ; $767F: $23
    pop af                                        ; $7680: $F1

jr_03B_7681:
    add a                                         ; $7681: $87
    add $40                                       ; $7682: $C6 $40
    ld e, $01                                     ; $7684: $1E $01
    ld d, a                                       ; $7686: $57
    ld b, $02                                     ; $7687: $06 $02
    ld c, $02                                     ; $7689: $0E $02
    jp Jump_000_1139                              ; $768B: $C3 $39 $11


Jump_03B_768E:
jr_03B_768E:
    ld e, $00                                     ; $768E: $1E $00
    ld d, $80                                     ; $7690: $16 $80
    ld b, $0E                                     ; $7692: $06 $0E
    ld c, $02                                     ; $7694: $0E $02
    ld hl, $9BC6                                  ; $7696: $21 $C6 $9B
    jp Jump_000_10EA                              ; $7699: $C3 $EA $10


Jump_03B_769C:
    ld a, b                                       ; $769C: $78
    cp $08                                        ; $769D: $FE $08
    jr nc, jr_03B_76CA                            ; $769F: $30 $29

    add a                                         ; $76A1: $87
    add a                                         ; $76A2: $87
    ld e, a                                       ; $76A3: $5F
    ld d, $00                                     ; $76A4: $16 $00
    ld hl, $7833                                  ; $76A6: $21 $33 $78
    add hl, de                                    ; $76A9: $19
    ld d, [hl]                                    ; $76AA: $56
    inc hl                                        ; $76AB: $23
    ld b, [hl]                                    ; $76AC: $46
    inc hl                                        ; $76AD: $23
    ld a, [hl+]                                   ; $76AE: $2A
    ld c, [hl]                                    ; $76AF: $4E
    ld l, a                                       ; $76B0: $6F
    ld h, c                                       ; $76B1: $61
    push hl                                       ; $76B2: $E5
    push bc                                       ; $76B3: $C5
    push de                                       ; $76B4: $D5
    ld e, $00                                     ; $76B5: $1E $00
    ld d, $80                                     ; $76B7: $16 $80
    ld b, $0E                                     ; $76B9: $06 $0E
    ld c, $02                                     ; $76BB: $0E $02
    call Call_000_10EA                            ; $76BD: $CD $EA $10
    pop de                                        ; $76C0: $D1
    pop bc                                        ; $76C1: $C1
    pop hl                                        ; $76C2: $E1
    ld e, $00                                     ; $76C3: $1E $00
    ld c, $02                                     ; $76C5: $0E $02
    jp Jump_000_1139                              ; $76C7: $C3 $39 $11


jr_03B_76CA:
    cp $80                                        ; $76CA: $FE $80
    jr nc, jr_03B_768E                            ; $76CC: $30 $C0

    cp $10                                        ; $76CE: $FE $10
    ret nc                                        ; $76D0: $D0

    sub $08                                       ; $76D1: $D6 $08
    add a                                         ; $76D3: $87
    push af                                       ; $76D4: $F5
    ld e, a                                       ; $76D5: $5F
    ld d, $00                                     ; $76D6: $16 $00
    ld hl, $787F                                  ; $76D8: $21 $7F $78
    add hl, de                                    ; $76DB: $19
    ld a, [hl+]                                   ; $76DC: $2A
    ld c, [hl]                                    ; $76DD: $4E
    ld l, a                                       ; $76DE: $6F
    ld h, c                                       ; $76DF: $61
    push hl                                       ; $76E0: $E5
    ld e, $01                                     ; $76E1: $1E $01
    ld d, $2E                                     ; $76E3: $16 $2E
    ld b, $09                                     ; $76E5: $06 $09
    ld c, $02                                     ; $76E7: $0E $02
    call Call_000_1139                            ; $76E9: $CD $39 $11
    pop hl                                        ; $76EC: $E1
    ld de, $0009                                  ; $76ED: $11 $09 $00
    add hl, de                                    ; $76F0: $19
    pop af                                        ; $76F1: $F1
    add a                                         ; $76F2: $87
    add $44                                       ; $76F3: $C6 $44
    ld e, $01                                     ; $76F5: $1E $01
    ld d, a                                       ; $76F7: $57
    ld b, $02                                     ; $76F8: $06 $02
    ld c, $02                                     ; $76FA: $0E $02
    jp Jump_000_1139                              ; $76FC: $C3 $39 $11


Jump_03B_76FF:
    ld a, b                                       ; $76FF: $78
    cp $09                                        ; $7700: $FE $09
    jr nc, jr_03B_772D                            ; $7702: $30 $29

    add a                                         ; $7704: $87
    add a                                         ; $7705: $87
    ld e, a                                       ; $7706: $5F
    ld d, $00                                     ; $7707: $16 $00
    ld hl, $7833                                  ; $7709: $21 $33 $78
    add hl, de                                    ; $770C: $19
    ld d, [hl]                                    ; $770D: $56
    inc hl                                        ; $770E: $23
    ld b, [hl]                                    ; $770F: $46
    inc hl                                        ; $7710: $23
    ld a, [hl+]                                   ; $7711: $2A
    ld c, [hl]                                    ; $7712: $4E
    ld l, a                                       ; $7713: $6F
    ld h, c                                       ; $7714: $61
    push hl                                       ; $7715: $E5
    push bc                                       ; $7716: $C5
    push de                                       ; $7717: $D5
    ld e, $00                                     ; $7718: $1E $00
    ld d, $80                                     ; $771A: $16 $80
    ld b, $0E                                     ; $771C: $06 $0E
    ld c, $02                                     ; $771E: $0E $02
    call Call_000_10EA                            ; $7720: $CD $EA $10
    pop de                                        ; $7723: $D1
    pop bc                                        ; $7724: $C1
    pop hl                                        ; $7725: $E1
    ld e, $00                                     ; $7726: $1E $00
    ld c, $02                                     ; $7728: $0E $02
    jp Jump_000_1139                              ; $772A: $C3 $39 $11


jr_03B_772D:
    cp $80                                        ; $772D: $FE $80
    jp nc, Jump_03B_768E                          ; $772F: $D2 $8E $76

    cp $12                                        ; $7732: $FE $12
    ret nc                                        ; $7734: $D0

    sub $09                                       ; $7735: $D6 $09
    add a                                         ; $7737: $87
    push af                                       ; $7738: $F5
    ld e, a                                       ; $7739: $5F
    ld d, $00                                     ; $773A: $16 $00
    ld hl, $788F                                  ; $773C: $21 $8F $78
    add hl, de                                    ; $773F: $19
    ld a, [hl+]                                   ; $7740: $2A
    ld c, [hl]                                    ; $7741: $4E
    ld l, a                                       ; $7742: $6F
    ld h, c                                       ; $7743: $61
    push hl                                       ; $7744: $E5
    ld e, $01                                     ; $7745: $1E $01
    ld d, $2E                                     ; $7747: $16 $2E
    ld b, $09                                     ; $7749: $06 $09
    ld c, $02                                     ; $774B: $0E $02
    call Call_000_1139                            ; $774D: $CD $39 $11
    pop hl                                        ; $7750: $E1
    ld de, $0009                                  ; $7751: $11 $09 $00
    add hl, de                                    ; $7754: $19
    pop af                                        ; $7755: $F1
    add a                                         ; $7756: $87
    add $44                                       ; $7757: $C6 $44
    ld e, $01                                     ; $7759: $1E $01
    ld d, a                                       ; $775B: $57
    ld b, $02                                     ; $775C: $06 $02
    ld c, $02                                     ; $775E: $0E $02
    jp Jump_000_1139                              ; $7760: $C3 $39 $11


Jump_03B_7763:
    ld a, b                                       ; $7763: $78
    cp $09                                        ; $7764: $FE $09
    jr nc, jr_03B_7791                            ; $7766: $30 $29

    add a                                         ; $7768: $87
    add a                                         ; $7769: $87
    ld e, a                                       ; $776A: $5F
    ld d, $00                                     ; $776B: $16 $00
    ld hl, $785B                                  ; $776D: $21 $5B $78
    add hl, de                                    ; $7770: $19
    ld d, [hl]                                    ; $7771: $56
    inc hl                                        ; $7772: $23
    ld b, [hl]                                    ; $7773: $46
    inc hl                                        ; $7774: $23
    ld a, [hl+]                                   ; $7775: $2A
    ld c, [hl]                                    ; $7776: $4E
    ld l, a                                       ; $7777: $6F
    ld h, c                                       ; $7778: $61
    push hl                                       ; $7779: $E5
    push bc                                       ; $777A: $C5
    push de                                       ; $777B: $D5
    ld e, $00                                     ; $777C: $1E $00
    ld d, $80                                     ; $777E: $16 $80
    ld b, $0E                                     ; $7780: $06 $0E
    ld c, $02                                     ; $7782: $0E $02
    call Call_000_10EA                            ; $7784: $CD $EA $10
    pop de                                        ; $7787: $D1
    pop bc                                        ; $7788: $C1
    pop hl                                        ; $7789: $E1
    ld e, $00                                     ; $778A: $1E $00
    ld c, $02                                     ; $778C: $0E $02
    jp Jump_000_1139                              ; $778E: $C3 $39 $11


jr_03B_7791:
    cp $80                                        ; $7791: $FE $80
    jp nc, Jump_03B_768E                          ; $7793: $D2 $8E $76

    cp $12                                        ; $7796: $FE $12
    ret nc                                        ; $7798: $D0

    sub $09                                       ; $7799: $D6 $09
    add a                                         ; $779B: $87
    push af                                       ; $779C: $F5
    ld e, a                                       ; $779D: $5F
    ld d, $00                                     ; $779E: $16 $00
    ld hl, $788F                                  ; $77A0: $21 $8F $78
    add hl, de                                    ; $77A3: $19
    ld a, [hl+]                                   ; $77A4: $2A
    ld c, [hl]                                    ; $77A5: $4E
    ld l, a                                       ; $77A6: $6F
    ld h, c                                       ; $77A7: $61
    push hl                                       ; $77A8: $E5
    ld e, $01                                     ; $77A9: $1E $01
    ld d, $2E                                     ; $77AB: $16 $2E
    ld b, $09                                     ; $77AD: $06 $09
    ld c, $02                                     ; $77AF: $0E $02
    call Call_000_1139                            ; $77B1: $CD $39 $11
    pop hl                                        ; $77B4: $E1
    ld de, $0009                                  ; $77B5: $11 $09 $00
    add hl, de                                    ; $77B8: $19
    pop af                                        ; $77B9: $F1
    cp $10                                        ; $77BA: $FE $10
    jr nz, jr_03B_77D0                            ; $77BC: $20 $12

    push hl                                       ; $77BE: $E5
    ld a, $44                                     ; $77BF: $3E $44
    ld e, $01                                     ; $77C1: $1E $01
    ld d, a                                       ; $77C3: $57
    ld b, $02                                     ; $77C4: $06 $02
    ld c, $02                                     ; $77C6: $0E $02
    call Call_000_1139                            ; $77C8: $CD $39 $11
    pop hl                                        ; $77CB: $E1
    inc hl                                        ; $77CC: $23
    inc hl                                        ; $77CD: $23
    ld a, $FE                                     ; $77CE: $3E $FE

jr_03B_77D0:
    add a                                         ; $77D0: $87
    add $44                                       ; $77D1: $C6 $44
    ld e, $01                                     ; $77D3: $1E $01
    ld d, a                                       ; $77D5: $57
    ld b, $02                                     ; $77D6: $06 $02
    ld c, $02                                     ; $77D8: $0E $02
    jp Jump_000_1139                              ; $77DA: $C3 $39 $11


Call_03B_77DD:
    ld a, [$C2D0]                                 ; $77DD: $FA $D0 $C2
    cp $00                                        ; $77E0: $FE $00
    jp nz, Jump_03B_77EB                          ; $77E2: $C2 $EB $77

    ld hl, $FF98                                  ; $77E5: $21 $98 $FF
    jp Jump_03B_77EE                              ; $77E8: $C3 $EE $77


Jump_03B_77EB:
    ld hl, $FFAB                                  ; $77EB: $21 $AB $FF

Jump_03B_77EE:
    ld c, [hl]                                    ; $77EE: $4E
    inc hl                                        ; $77EF: $23
    ld b, [hl]                                    ; $77F0: $46
    ret                                           ; $77F1: $C9


Call_03B_77F2:
    ld a, [$C2D0]                                 ; $77F2: $FA $D0 $C2
    cp $00                                        ; $77F5: $FE $00
    jp nz, Jump_03B_7800                          ; $77F7: $C2 $00 $78

    ld hl, $FF98                                  ; $77FA: $21 $98 $FF
    jp Jump_03B_7803                              ; $77FD: $C3 $03 $78


Jump_03B_7800:
    ld hl, $FFAB                                  ; $7800: $21 $AB $FF

Jump_03B_7803:
    ld a, [hl]                                    ; $7803: $7E
    or a                                          ; $7804: $B7
    jp z, Jump_03B_7809                           ; $7805: $CA $09 $78

    xor a                                         ; $7808: $AF

Jump_03B_7809:
    inc hl                                        ; $7809: $23
    ld a, [hl]                                    ; $780A: $7E
    push af                                       ; $780B: $F5
    inc hl                                        ; $780C: $23
    inc hl                                        ; $780D: $23
    ld b, $00                                     ; $780E: $06 $00
    ld c, $08                                     ; $7810: $0E $08

Jump_03B_7812:
    ld a, [hl+]                                   ; $7812: $2A
    inc hl                                        ; $7813: $23
    cp $01                                        ; $7814: $FE $01
    jp nz, Jump_03B_781B                          ; $7816: $C2 $1B $78

    set 7, b                                      ; $7819: $CB $F8

Jump_03B_781B:
    rlc b                                         ; $781B: $CB $00
    dec c                                         ; $781D: $0D
    jp nz, Jump_03B_7812                          ; $781E: $C2 $12 $78

    pop af                                        ; $7821: $F1
    ret                                           ; $7822: $C9


    nop                                           ; $7823: $00
    nop                                           ; $7824: $00
    nop                                           ; $7825: $00
    nop                                           ; $7826: $00
    ld hl, sp+$00                                 ; $7827: $F8 $00
    nop                                           ; $7829: $00
    nop                                           ; $782A: $00
    nop                                           ; $782B: $00
    nop                                           ; $782C: $00
    nop                                           ; $782D: $00
    nop                                           ; $782E: $00
    nop                                           ; $782F: $00
    nop                                           ; $7830: $00
    nop                                           ; $7831: $00
    nop                                           ; $7832: $00
    add d                                         ; $7833: $82
    dec bc                                        ; $7834: $0B
    ld b, $98                                     ; $7835: $06 $98
    sbc b                                         ; $7837: $98
    add hl, bc                                    ; $7838: $09
    ld b, [hl]                                    ; $7839: $46
    sbc b                                         ; $783A: $98
    xor d                                         ; $783B: $AA
    ld b, $86                                     ; $783C: $06 $86
    sbc b                                         ; $783E: $98
    or [hl]                                       ; $783F: $B6
    ld a, [bc]                                    ; $7840: $0A
    add $98                                       ; $7841: $C6 $98
    jp z, Jump_000_0607                           ; $7843: $CA $07 $06

    sbc c                                         ; $7846: $99
    ret c                                         ; $7847: $D8

    add hl, bc                                    ; $7848: $09
    ld b, [hl]                                    ; $7849: $46
    sbc c                                         ; $784A: $99
    ld [$8607], a                                 ; $784B: $EA $07 $86
    sbc c                                         ; $784E: $99
    ld hl, sp+$08                                 ; $784F: $F8 $08
    add $99                                       ; $7851: $C6 $99
    ld [$060B], sp                                ; $7853: $08 $0B $06
    sbc d                                         ; $7856: $9A
    ld e, $08                                     ; $7857: $1E $08
    ld b, [hl]                                    ; $7859: $46
    sbc d                                         ; $785A: $9A
    add d                                         ; $785B: $82
    dec bc                                        ; $785C: $0B
    ld b, $98                                     ; $785D: $06 $98
    sbc b                                         ; $785F: $98
    add hl, bc                                    ; $7860: $09
    ld b, [hl]                                    ; $7861: $46
    sbc b                                         ; $7862: $98
    xor d                                         ; $7863: $AA
    ld b, $86                                     ; $7864: $06 $86
    sbc b                                         ; $7866: $98
    or [hl]                                       ; $7867: $B6
    ld a, [bc]                                    ; $7868: $0A
    add $98                                       ; $7869: $C6 $98
    jp z, Jump_000_0607                           ; $786B: $CA $07 $06

    sbc c                                         ; $786E: $99
    ret c                                         ; $786F: $D8

    add hl, bc                                    ; $7870: $09
    ld b, [hl]                                    ; $7871: $46
    sbc c                                         ; $7872: $99
    ld [$8607], a                                 ; $7873: $EA $07 $86
    sbc c                                         ; $7876: $99
    ld hl, sp+$08                                 ; $7877: $F8 $08
    add $99                                       ; $7879: $C6 $99
    ld e, $08                                     ; $787B: $1E $08
    ld b, $9A                                     ; $787D: $06 $9A
    ld b, $9A                                     ; $787F: $06 $9A
    ld b, [hl]                                    ; $7881: $46
    sbc d                                         ; $7882: $9A
    add [hl]                                      ; $7883: $86
    sbc d                                         ; $7884: $9A
    add $9A                                       ; $7885: $C6 $9A
    ld b, $9B                                     ; $7887: $06 $9B
    ld b, [hl]                                    ; $7889: $46
    sbc e                                         ; $788A: $9B
    add [hl]                                      ; $788B: $86
    sbc e                                         ; $788C: $9B
    add $9B                                       ; $788D: $C6 $9B
    ld b, [hl]                                    ; $788F: $46
    sbc d                                         ; $7890: $9A
    add [hl]                                      ; $7891: $86
    sbc d                                         ; $7892: $9A
    add $9A                                       ; $7893: $C6 $9A
    ld b, $9B                                     ; $7895: $06 $9B
    ld b, [hl]                                    ; $7897: $46
    sbc e                                         ; $7898: $9B
    add [hl]                                      ; $7899: $86
    sbc e                                         ; $789A: $9B
    add $9B                                       ; $789B: $C6 $9B
    ld b, $98                                     ; $789D: $06 $98
    ld b, [hl]                                    ; $789F: $46
    sbc b                                         ; $78A0: $98
    add [hl]                                      ; $78A1: $86
    sbc d                                         ; $78A2: $9A
    add $9A                                       ; $78A3: $C6 $9A
    ld b, $9B                                     ; $78A5: $06 $9B
    ld b, [hl]                                    ; $78A7: $46
    sbc e                                         ; $78A8: $9B
    add [hl]                                      ; $78A9: $86
    sbc e                                         ; $78AA: $9B
    add $9B                                       ; $78AB: $C6 $9B
    ld b, $98                                     ; $78AD: $06 $98
    ld b, [hl]                                    ; $78AF: $46
    sbc b                                         ; $78B0: $98
    add [hl]                                      ; $78B1: $86
    sbc b                                         ; $78B2: $98
    add $98                                       ; $78B3: $C6 $98
    nop                                           ; $78B5: $00
    ld bc, $0302                                  ; $78B6: $01 $02 $03
    inc b                                         ; $78B9: $04
    dec b                                         ; $78BA: $05
    ld b, $07                                     ; $78BB: $06 $07
    ld a, [bc]                                    ; $78BD: $0A
    dec bc                                        ; $78BE: $0B
    inc c                                         ; $78BF: $0C
    dec c                                         ; $78C0: $0D
    ld c, $0F                                     ; $78C1: $0E $0F
    db $10                                        ; $78C3: $10
    ld de, $0100                                  ; $78C4: $11 $00 $01
    ld [bc], a                                    ; $78C7: $02
    inc bc                                        ; $78C8: $03
    inc b                                         ; $78C9: $04
    dec b                                         ; $78CA: $05
    ld b, $07                                     ; $78CB: $06 $07
    ld [$0B0A], sp                                ; $78CD: $08 $0A $0B
    inc c                                         ; $78D0: $0C
    dec c                                         ; $78D1: $0D
    ld c, $0F                                     ; $78D2: $0E $0F
    db $10                                        ; $78D4: $10
    ld de, $0012                                  ; $78D5: $11 $12 $00
    ld bc, $0302                                  ; $78D8: $01 $02 $03
    inc b                                         ; $78DB: $04
    dec b                                         ; $78DC: $05
    ld b, $07                                     ; $78DD: $06 $07
    add hl, bc                                    ; $78DF: $09
    ld a, [bc]                                    ; $78E0: $0A
    dec bc                                        ; $78E1: $0B
    inc c                                         ; $78E2: $0C
    dec c                                         ; $78E3: $0D
    ld c, $0F                                     ; $78E4: $0E $0F
    db $10                                        ; $78E6: $10
    ld de, $0013                                  ; $78E7: $11 $13 $00
    ld bc, $0302                                  ; $78EA: $01 $02 $03
    inc b                                         ; $78ED: $04
    dec b                                         ; $78EE: $05
    ld b, $07                                     ; $78EF: $06 $07
    ld [$0A09], sp                                ; $78F1: $08 $09 $0A
    dec bc                                        ; $78F4: $0B
    inc c                                         ; $78F5: $0C
    dec c                                         ; $78F6: $0D
    ld c, $0F                                     ; $78F7: $0E $0F
    db $10                                        ; $78F9: $10
    ld de, $1312                                  ; $78FA: $11 $12 $13
    add b                                         ; $78FD: $80
    nop                                           ; $78FE: $00
    add b                                         ; $78FF: $80
    add b                                         ; $7900: $80
    jr jr_03B_7903                                ; $7901: $18 $00

jr_03B_7903:
    ldh [rP1], a                                  ; $7903: $E0 $00
    nop                                           ; $7905: $00
    nop                                           ; $7906: $00
    nop                                           ; $7907: $00
    nop                                           ; $7908: $00
    nop                                           ; $7909: $00
    nop                                           ; $790A: $00
    nop                                           ; $790B: $00
    nop                                           ; $790C: $00
    add b                                         ; $790D: $80
    dec sp                                        ; $790E: $3B
    dec e                                         ; $790F: $1D
    ld a, c                                       ; $7910: $79
    nop                                           ; $7911: $00
    nop                                           ; $7912: $00
    dec e                                         ; $7913: $1D
    ld a, c                                       ; $7914: $79
    nop                                           ; $7915: $00
    nop                                           ; $7916: $00
    nop                                           ; $7917: $00
    nop                                           ; $7918: $00
    rlca                                          ; $7919: $07
    rlca                                          ; $791A: $07
    ret nz                                        ; $791B: $C0

    ret c                                         ; $791C: $D8

    ld e, a                                       ; $791D: $5F
    ld a, c                                       ; $791E: $79
    rst RST_38                                    ; $791F: $FF
    rst RST_38                                    ; $7920: $FF
    ld e, a                                       ; $7921: $5F
    ld a, c                                       ; $7922: $79
    rst RST_38                                    ; $7923: $FF
    rst RST_38                                    ; $7924: $FF
    ld a, h                                       ; $7925: $7C
    ld a, c                                       ; $7926: $79
    rst RST_38                                    ; $7927: $FF
    rst RST_38                                    ; $7928: $FF
    sbc c                                         ; $7929: $99
    ld a, c                                       ; $792A: $79
    rst RST_38                                    ; $792B: $FF
    rst RST_38                                    ; $792C: $FF
    sbc c                                         ; $792D: $99
    ld a, c                                       ; $792E: $79
    rst RST_38                                    ; $792F: $FF
    rst RST_38                                    ; $7930: $FF
    or [hl]                                       ; $7931: $B6
    ld a, c                                       ; $7932: $79
    rst RST_38                                    ; $7933: $FF
    rst RST_38                                    ; $7934: $FF
    db $D3                                        ; $7935: $D3
    ld a, c                                       ; $7936: $79
    rst RST_38                                    ; $7937: $FF
    rst RST_38                                    ; $7938: $FF
    db $D3                                        ; $7939: $D3
    ld a, c                                       ; $793A: $79
    rst RST_38                                    ; $793B: $FF
    rst RST_38                                    ; $793C: $FF
    db $D3                                        ; $793D: $D3
    ld a, c                                       ; $793E: $79
    rst RST_38                                    ; $793F: $FF
    rst RST_38                                    ; $7940: $FF
    db $D3                                        ; $7941: $D3
    ld a, c                                       ; $7942: $79
    rst RST_38                                    ; $7943: $FF
    rst RST_38                                    ; $7944: $FF
    or [hl]                                       ; $7945: $B6
    ld a, c                                       ; $7946: $79

jr_03B_7947:
    rst RST_38                                    ; $7947: $FF
    rst RST_38                                    ; $7948: $FF
    sbc c                                         ; $7949: $99
    ld a, c                                       ; $794A: $79
    rst RST_38                                    ; $794B: $FF
    rst RST_38                                    ; $794C: $FF
    sbc c                                         ; $794D: $99
    ld a, c                                       ; $794E: $79
    rst RST_38                                    ; $794F: $FF
    rst RST_38                                    ; $7950: $FF
    ld a, h                                       ; $7951: $7C
    ld a, c                                       ; $7952: $79
    rst RST_38                                    ; $7953: $FF
    rst RST_38                                    ; $7954: $FF
    ld e, a                                       ; $7955: $5F
    ld a, c                                       ; $7956: $79
    rst RST_38                                    ; $7957: $FF
    rst RST_38                                    ; $7958: $FF
    ld e, a                                       ; $7959: $5F
    ld a, c                                       ; $795A: $79
    rst RST_38                                    ; $795B: $FF
    rst RST_38                                    ; $795C: $FF
    rst RST_38                                    ; $795D: $FF
    rst RST_38                                    ; $795E: $FF
    sub b                                         ; $795F: $90
    nop                                           ; $7960: $00
    nop                                           ; $7961: $00
    rst RST_38                                    ; $7962: $FF
    rst RST_38                                    ; $7963: $FF
    rst RST_38                                    ; $7964: $FF
    ld l, c                                       ; $7965: $69
    ld a, c                                       ; $7966: $79
    nop                                           ; $7967: $00
    nop                                           ; $7968: $00
    ld b, $F4                                     ; $7969: $06 $F4
    db $F4                                        ; $796B: $F4
    nop                                           ; $796C: $00
    db $F4                                        ; $796D: $F4
    db $FC                                        ; $796E: $FC
    ld [bc], a                                    ; $796F: $02
    db $F4                                        ; $7970: $F4
    inc b                                         ; $7971: $04
    inc b                                         ; $7972: $04
    inc b                                         ; $7973: $04
    db $F4                                        ; $7974: $F4
    jr nz, jr_03B_797B                            ; $7975: $20 $04

    db $FC                                        ; $7977: $FC
    ld [hl+], a                                   ; $7978: $22
    inc b                                         ; $7979: $04
    inc b                                         ; $797A: $04

jr_03B_797B:
    inc h                                         ; $797B: $24
    sub b                                         ; $797C: $90
    nop                                           ; $797D: $00
    nop                                           ; $797E: $00
    rst RST_38                                    ; $797F: $FF
    rst RST_38                                    ; $7980: $FF
    rst RST_38                                    ; $7981: $FF
    add [hl]                                      ; $7982: $86
    ld a, c                                       ; $7983: $79
    nop                                           ; $7984: $00
    nop                                           ; $7985: $00
    ld b, $F4                                     ; $7986: $06 $F4
    db $F4                                        ; $7988: $F4
    ld b, $F4                                     ; $7989: $06 $F4
    db $FC                                        ; $798B: $FC
    ld [$04F4], sp                                ; $798C: $08 $F4 $04
    ld a, [bc]                                    ; $798F: $0A
    inc b                                         ; $7990: $04
    db $F4                                        ; $7991: $F4
    ld h, $04                                     ; $7992: $26 $04
    db $FC                                        ; $7994: $FC
    jr z, jr_03B_799B                             ; $7995: $28 $04

    inc b                                         ; $7997: $04
    ld a, [hl+]                                   ; $7998: $2A
    sub b                                         ; $7999: $90
    nop                                           ; $799A: $00

jr_03B_799B:
    nop                                           ; $799B: $00
    rst RST_38                                    ; $799C: $FF
    rst RST_38                                    ; $799D: $FF
    rst RST_38                                    ; $799E: $FF
    and e                                         ; $799F: $A3
    ld a, c                                       ; $79A0: $79
    nop                                           ; $79A1: $00
    nop                                           ; $79A2: $00
    ld b, $F4                                     ; $79A3: $06 $F4
    db $F4                                        ; $79A5: $F4
    inc c                                         ; $79A6: $0C
    db $F4                                        ; $79A7: $F4
    db $FC                                        ; $79A8: $FC
    ld c, $F4                                     ; $79A9: $0E $F4
    inc b                                         ; $79AB: $04
    db $10                                        ; $79AC: $10
    inc b                                         ; $79AD: $04
    db $F4                                        ; $79AE: $F4
    inc l                                         ; $79AF: $2C
    inc b                                         ; $79B0: $04
    db $FC                                        ; $79B1: $FC
    ld l, $04                                     ; $79B2: $2E $04
    inc b                                         ; $79B4: $04
    jr nc, jr_03B_7947                            ; $79B5: $30 $90

    nop                                           ; $79B7: $00
    nop                                           ; $79B8: $00
    rst RST_38                                    ; $79B9: $FF
    rst RST_38                                    ; $79BA: $FF
    rst RST_38                                    ; $79BB: $FF
    ret nz                                        ; $79BC: $C0

    ld a, c                                       ; $79BD: $79
    nop                                           ; $79BE: $00
    nop                                           ; $79BF: $00
    ld b, $F4                                     ; $79C0: $06 $F4
    db $F4                                        ; $79C2: $F4
    ld [de], a                                    ; $79C3: $12
    db $F4                                        ; $79C4: $F4
    db $FC                                        ; $79C5: $FC
    inc d                                         ; $79C6: $14
    db $F4                                        ; $79C7: $F4
    inc b                                         ; $79C8: $04
    ld d, $04                                     ; $79C9: $16 $04
    db $F4                                        ; $79CB: $F4
    ld [hl-], a                                   ; $79CC: $32
    inc b                                         ; $79CD: $04
    db $FC                                        ; $79CE: $FC
    inc [hl]                                      ; $79CF: $34
    inc b                                         ; $79D0: $04
    inc b                                         ; $79D1: $04
    ld [hl], $90                                  ; $79D2: $36 $90
    nop                                           ; $79D4: $00
    nop                                           ; $79D5: $00

jr_03B_79D6:
    rst RST_38                                    ; $79D6: $FF
    rst RST_38                                    ; $79D7: $FF
    rst RST_38                                    ; $79D8: $FF
    db $DD                                        ; $79D9: $DD
    ld a, c                                       ; $79DA: $79
    nop                                           ; $79DB: $00
    nop                                           ; $79DC: $00
    ld b, $F4                                     ; $79DD: $06 $F4
    db $F4                                        ; $79DF: $F4
    jr jr_03B_79D6                                ; $79E0: $18 $F4

    db $FC                                        ; $79E2: $FC
    ld a, [de]                                    ; $79E3: $1A
    db $F4                                        ; $79E4: $F4
    inc b                                         ; $79E5: $04
    inc e                                         ; $79E6: $1C
    inc b                                         ; $79E7: $04
    db $F4                                        ; $79E8: $F4
    jr c, jr_03B_79EF                             ; $79E9: $38 $04

    db $FC                                        ; $79EB: $FC
    ld a, [hl-]                                   ; $79EC: $3A
    inc b                                         ; $79ED: $04
    inc b                                         ; $79EE: $04

jr_03B_79EF:
    inc a                                         ; $79EF: $3C
    ld sp, $DD00                                  ; $79F0: $31 $00 $DD
    di                                            ; $79F3: $F3
    rst RST_10                                    ; $79F4: $D7
    ld hl, $C03A                                  ; $79F5: $21 $3A $C0
    res 1, [hl]                                   ; $79F8: $CB $8E
    set 2, [hl]                                   ; $79FA: $CB $D6
    ld a, $FF                                     ; $79FC: $3E $FF
    ldh [rBGP], a                                 ; $79FE: $E0 $47
    ldh [rOBP0], a                                ; $7A00: $E0 $48
    ldh [rOBP1], a                                ; $7A02: $E0 $49
    ldh [$FFEA], a                                ; $7A04: $E0 $EA
    ldh [$FFEB], a                                ; $7A06: $E0 $EB
    ldh [$FFEC], a                                ; $7A08: $E0 $EC
    call Call_000_13ED                            ; $7A0A: $CD $ED $13
    ld a, [$C311]                                 ; $7A0D: $FA $11 $C3
    add a                                         ; $7A10: $87
    ld hl, $518B                                  ; $7A11: $21 $8B $51
    ld e, a                                       ; $7A14: $5F
    ld d, $00                                     ; $7A15: $16 $00
    add hl, de                                    ; $7A17: $19
    ld e, [hl]                                    ; $7A18: $5E
    inc hl                                        ; $7A19: $23
    ld d, [hl]                                    ; $7A1A: $56
    call Call_000_14C0                            ; $7A1B: $CD $C0 $14
    xor a                                         ; $7A1E: $AF
    ld [$C2AA], a                                 ; $7A1F: $EA $AA $C2
    ld [$C2AC], a                                 ; $7A22: $EA $AC $C2
    ldh [$FFE2], a                                ; $7A25: $E0 $E2
    ldh [$FFE4], a                                ; $7A27: $E0 $E4
    ld a, [$C311]                                 ; $7A29: $FA $11 $C3
    add a                                         ; $7A2C: $87
    ld hl, $5583                                  ; $7A2D: $21 $83 $55
    ld e, a                                       ; $7A30: $5F
    ld d, $00                                     ; $7A31: $16 $00
    add hl, de                                    ; $7A33: $19
    ld a, [hl+]                                   ; $7A34: $2A
    ld d, [hl]                                    ; $7A35: $56
    ld l, a                                       ; $7A36: $6F
    ld h, d                                       ; $7A37: $62
    ld b, $2A                                     ; $7A38: $06 $2A
    ld de, $C349                                  ; $7A3A: $11 $49 $C3
    rst RST_20                                    ; $7A3D: $E7
    xor a                                         ; $7A3E: $AF
    ld hl, $C339                                  ; $7A3F: $21 $39 $C3
    ld c, $10                                     ; $7A42: $0E $10

jr_03B_7A44:
    ld [hl+], a                                   ; $7A44: $22
    dec c                                         ; $7A45: $0D
    jr nz, jr_03B_7A44                            ; $7A46: $20 $FC

    ld hl, $C339                                  ; $7A48: $21 $39 $C3
    ld de, $9100                                  ; $7A4B: $11 $00 $91
    ld b, $32                                     ; $7A4E: $06 $32
    call Call_000_1188                            ; $7A50: $CD $88 $11
    ld e, $00                                     ; $7A53: $1E $00
    ld d, $10                                     ; $7A55: $16 $10
    ld hl, $9800                                  ; $7A57: $21 $00 $98
    ld b, $14                                     ; $7A5A: $06 $14
    ld c, $20                                     ; $7A5C: $0E $20
    call Call_000_10EA                            ; $7A5E: $CD $EA $10
    ld e, $00                                     ; $7A61: $1E $00
    ld d, $10                                     ; $7A63: $16 $10
    ld hl, $9C00                                  ; $7A65: $21 $00 $9C
    ld b, $14                                     ; $7A68: $06 $14
    ld c, $20                                     ; $7A6A: $0E $20
    call Call_000_10EA                            ; $7A6C: $CD $EA $10
    ld a, [$C311]                                 ; $7A6F: $FA $11 $C3
    add a                                         ; $7A72: $87
    ld hl, $5597                                  ; $7A73: $21 $97 $55
    ld e, a                                       ; $7A76: $5F
    ld d, $00                                     ; $7A77: $16 $00
    add hl, de                                    ; $7A79: $19
    ld e, [hl]                                    ; $7A7A: $5E
    inc hl                                        ; $7A7B: $23
    ld d, [hl]                                    ; $7A7C: $56
    ld hl, $9C46                                  ; $7A7D: $21 $46 $9C
    ld b, $07                                     ; $7A80: $06 $07
    ld c, $07                                     ; $7A82: $0E $07
    ld a, $11                                     ; $7A84: $3E $11
    call Call_000_0FF7                            ; $7A86: $CD $F7 $0F
    call Call_000_0F9E                            ; $7A89: $CD $9E $0F
    ld a, $01                                     ; $7A8C: $3E $01
    ld [$C2B5], a                                 ; $7A8E: $EA $B5 $C2
    ld a, $87                                     ; $7A91: $3E $87
    ld [$C2B6], a                                 ; $7A93: $EA $B6 $C2
    ld a, $54                                     ; $7A96: $3E $54
    ld [$C2B9], a                                 ; $7A98: $EA $B9 $C2
    ld a, $86                                     ; $7A9B: $3E $86
    ld [$C2BA], a                                 ; $7A9D: $EA $BA $C2
    ld a, $87                                     ; $7AA0: $3E $87
    rst RST_18                                    ; $7AA2: $DF
    ldh a, [rSTAT]                                ; $7AA3: $F0 $41
    or $40                                        ; $7AA5: $F6 $40
    ldh [rSTAT], a                                ; $7AA7: $E0 $41
    ld a, $17                                     ; $7AA9: $3E $17
    ld a, $8F                                     ; $7AAB: $3E $8F
    ldh [rLYC], a                                 ; $7AAD: $E0 $45
    ldh a, [rIE]                                  ; $7AAF: $F0 $FF
    or $03                                        ; $7AB1: $F6 $03
    ldh [rIE], a                                  ; $7AB3: $E0 $FF
    ei                                            ; $7AB5: $FB
    ld de, $7B37                                  ; $7AB6: $11 $37 $7B
    ld hl, $C329                                  ; $7AB9: $21 $29 $C3
    ld c, $24                                     ; $7ABC: $0E $24

jr_03B_7ABE:
    ld a, [de]                                    ; $7ABE: $1A
    inc de                                        ; $7ABF: $13
    ld [hl+], a                                   ; $7AC0: $22
    dec c                                         ; $7AC1: $0D
    jr nz, jr_03B_7ABE                            ; $7AC2: $20 $FA

    ld hl, $7B5B                                  ; $7AC4: $21 $5B $7B
    ld a, [$C006]                                 ; $7AC7: $FA $06 $C0
    or a                                          ; $7ACA: $B7
    jr z, jr_03B_7AD0                             ; $7ACB: $28 $03

    ld hl, $7B6F                                  ; $7ACD: $21 $6F $7B

jr_03B_7AD0:
    ld a, [$C311]                                 ; $7AD0: $FA $11 $C3
    add a                                         ; $7AD3: $87
    ld e, a                                       ; $7AD4: $5F
    ld d, $00                                     ; $7AD5: $16 $00
    add hl, de                                    ; $7AD7: $19
    ld a, [hl+]                                   ; $7AD8: $2A
    ld [$C32B], a                                 ; $7AD9: $EA $2B $C3
    ld a, [hl+]                                   ; $7ADC: $2A
    ld [$C32C], a                                 ; $7ADD: $EA $2C $C3
    ld a, [$C33A]                                 ; $7AE0: $FA $3A $C3
    ldh [$FFE2], a                                ; $7AE3: $E0 $E2
    ld a, $81                                     ; $7AE5: $3E $81
    call Call_000_135D                            ; $7AE7: $CD $5D $13
    call Call_000_0424                            ; $7AEA: $CD $24 $04
    ld a, $1B                                     ; $7AED: $3E $1B
    ldh [rBGP], a                                 ; $7AEF: $E0 $47
    ldh [$FFEA], a                                ; $7AF1: $E0 $EA
    ldh [$FFEB], a                                ; $7AF3: $E0 $EB
    ldh [$FFEC], a                                ; $7AF5: $E0 $EC
    ld a, $4F                                     ; $7AF7: $3E $4F
    ldh [rOBP0], a                                ; $7AF9: $E0 $48
    ldh [rOBP1], a                                ; $7AFB: $E0 $49
    call Call_000_147A                            ; $7AFD: $CD $7A $14

jr_03B_7B00:
    ld b, $39                                     ; $7B00: $06 $39
    ld hl, $4067                                  ; $7B02: $21 $67 $40
    rst RST_08                                    ; $7B05: $CF
    ld hl, $C329                                  ; $7B06: $21 $29 $C3
    ld e, [hl]                                    ; $7B09: $5E
    inc hl                                        ; $7B0A: $23
    ld d, [hl]                                    ; $7B0B: $56
    inc de                                        ; $7B0C: $13
    ld [hl], d                                    ; $7B0D: $72
    dec hl                                        ; $7B0E: $2B
    ld [hl], e                                    ; $7B0F: $73
    call Call_000_0424                            ; $7B10: $CD $24 $04
    ld a, [$C32E]                                 ; $7B13: $FA $2E $C3
    add a                                         ; $7B16: $87
    jr c, jr_03B_7B24                             ; $7B17: $38 $0B

    ldh a, [$FF99]                                ; $7B19: $F0 $99
    ld e, a                                       ; $7B1B: $5F
    ldh a, [$FFAC]                                ; $7B1C: $F0 $AC
    or e                                          ; $7B1E: $B3
    ld e, a                                       ; $7B1F: $5F
    and $80                                       ; $7B20: $E6 $80
    jr z, jr_03B_7B00                             ; $7B22: $28 $DC

jr_03B_7B24:
    ld hl, $C03A                                  ; $7B24: $21 $3A $C0
    res 2, [hl]                                   ; $7B27: $CB $96
    ld a, $00                                     ; $7B29: $3E $00
    call Call_000_135D                            ; $7B2B: $CD $5D $13
    call Call_000_0424                            ; $7B2E: $CD $24 $04
    ld b, $2C                                     ; $7B31: $06 $2C
    ld hl, $6F70                                  ; $7B33: $21 $70 $6F
    rst RST_00                                    ; $7B36: $C7
    nop                                           ; $7B37: $00
    nop                                           ; $7B38: $00
    db $D3                                        ; $7B39: $D3
    ld a, c                                       ; $7B3A: $79
    nop                                           ; $7B3B: $00
    nop                                           ; $7B3C: $00
    ld e, c                                       ; $7B3D: $59
    jp $C379                                      ; $7B3E: $C3 $79 $C3


    ld a, c                                       ; $7B41: $79
    push bc                                       ; $7B42: $C5
    ld b, c                                       ; $7B43: $41
    ld bc, $8800                                  ; $7B44: $01 $00 $88
    nop                                           ; $7B47: $00
    ld sp, hl                                     ; $7B48: $F9
    nop                                           ; $7B49: $00
    nop                                           ; $7B4A: $00
    nop                                           ; $7B4B: $00
    ld a, c                                       ; $7B4C: $79
    push bc                                       ; $7B4D: $C5
    nop                                           ; $7B4E: $00
    ld b, c                                       ; $7B4F: $41
    ld bc, $0080                                  ; $7B50: $01 $80 $00
    nop                                           ; $7B53: $00
    nop                                           ; $7B54: $00
    nop                                           ; $7B55: $00
    nop                                           ; $7B56: $00
    nop                                           ; $7B57: $00
    nop                                           ; $7B58: $00
    nop                                           ; $7B59: $00
    nop                                           ; $7B5A: $00
    sbc b                                         ; $7B5B: $98
    ld a, c                                       ; $7B5C: $79
    ld [$7E7A], sp                                ; $7B5D: $08 $7A $7E
    ld a, d                                       ; $7B60: $7A
    rst RST_18                                    ; $7B61: $DF
    ld a, d                                       ; $7B62: $7A
    ld c, h                                       ; $7B63: $4C
    ld a, e                                       ; $7B64: $7B
    and h                                         ; $7B65: $A4
    ld a, e                                       ; $7B66: $7B
    add hl, hl                                    ; $7B67: $29
    ld a, h                                       ; $7B68: $7C
    ld l, h                                       ; $7B69: $6C
    ld a, h                                       ; $7B6A: $7C
    ldh [c], a                                    ; $7B6B: $E2
    ld a, h                                       ; $7B6C: $7C
    ld b, e                                       ; $7B6D: $43
    ld a, l                                       ; $7B6E: $7D
    db $D3                                        ; $7B6F: $D3
    ld a, c                                       ; $7B70: $79
    ld b, e                                       ; $7B71: $43
    ld a, d                                       ; $7B72: $7A
    or e                                          ; $7B73: $B3
    ld a, d                                       ; $7B74: $7A
    rla                                           ; $7B75: $17
    ld a, e                                       ; $7B76: $7B
    ld a, e                                       ; $7B77: $7B
    ld a, e                                       ; $7B78: $7B
    add sp, $7B                                   ; $7B79: $E8 $7B
    ld c, h                                       ; $7B7B: $4C
    ld a, h                                       ; $7B7C: $7C
    and a                                         ; $7B7D: $A7
    ld a, h                                       ; $7B7E: $7C
    inc d                                         ; $7B7F: $14
    ld a, l                                       ; $7B80: $7D
    add a                                         ; $7B81: $87
    ld a, l                                       ; $7B82: $7D
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
