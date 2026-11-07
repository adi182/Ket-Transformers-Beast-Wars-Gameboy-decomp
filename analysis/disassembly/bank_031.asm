; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $031", ROMX[$4000], BANK[$31]

Jump_031_4000:
    dec c                                         ; $4000: $0D
    ld b, b                                       ; $4001: $40
    ld b, e                                       ; $4002: $43
    inc a                                         ; $4003: $3C
    nop                                           ; $4004: $00
    ld l, [hl]                                    ; $4005: $6E
    ld a, [hl]                                    ; $4006: $7E
    ld a, [$10FF]                                 ; $4007: $FA $FF $10
    ld [$FC41], sp                                ; $400A: $08 $41 $FC
    ld [$FDCA], sp                                ; $400D: $08 $CA $FD
    jr nc, jr_031_4060                            ; $4010: $30 $4E

    nop                                           ; $4012: $00
    ld l, b                                       ; $4013: $68
    or $08                                        ; $4014: $F6 $08
    rlca                                          ; $4016: $07
    ld b, $F9                                     ; $4017: $06 $F9
    halt                                          ; $4019: $76
    ldh [$FFD9], a                                ; $401A: $E0 $D9
    cp [hl]                                       ; $401C: $BE
    add a                                         ; $401D: $87
    ld a, [$FEE1]                                 ; $401E: $FA $E1 $FE
    jr jr_031_4089                                ; $4021: $18 $66

    rst RST_38                                    ; $4023: $FF
    rlca                                          ; $4024: $07
    ei                                            ; $4025: $FB
    ld [hl], h                                    ; $4026: $74
    ld a, d                                       ; $4027: $7A
    ld hl, sp-$30                                 ; $4028: $F8 $D0
    ret z                                         ; $402A: $C8

    sbc $FA                                       ; $402B: $DE $FA
    ld [hl], h                                    ; $402D: $74
    ei                                            ; $402E: $FB
    dec sp                                        ; $402F: $3B
    inc c                                         ; $4030: $0C
    ld [hl], d                                    ; $4031: $72
    rst RST_38                                    ; $4032: $FF
    rlca                                          ; $4033: $07
    ei                                            ; $4034: $FB
    ld a, h                                       ; $4035: $7C

Call_031_4036:
    ld hl, sp+$00                                 ; $4036: $F8 $00

Jump_031_4038:
    and c                                         ; $4038: $A1
    ret c                                         ; $4039: $D8

    xor $FA                                       ; $403A: $EE $FA
    cp [hl]                                       ; $403C: $BE
    ld sp, hl                                     ; $403D: $F9
    ld b, $78                                     ; $403E: $06 $78
    rst RST_38                                    ; $4040: $FF
    ld a, [$FB07]                                 ; $4041: $FA $07 $FB
    pop af                                        ; $4044: $F1
    ret z                                         ; $4045: $C8

    ret c                                         ; $4046: $D8

    or $FA                                        ; $4047: $F6 $FA
    db $DB                                        ; $4049: $DB
    sbc l                                         ; $404A: $9D
    db $10                                        ; $404B: $10
    ld [bc], a                                    ; $404C: $02
    ld a, h                                       ; $404D: $7C
    rst RST_38                                    ; $404E: $FF
    rlca                                          ; $404F: $07
    db $FD                                        ; $4050: $FD
    sbc $D8                                       ; $4051: $DE $D8
    ld c, a                                       ; $4053: $4F
    ld a, [$69FA]                                 ; $4054: $FA $FA $69
    cp $60                                        ; $4057: $FE $60
    ld c, b                                       ; $4059: $48
    rst RST_38                                    ; $405A: $FF
    rlca                                          ; $405B: $07
    xor l                                         ; $405C: $AD
    ei                                            ; $405D: $FB
    ld a, $A8                                     ; $405E: $3E $A8

jr_031_4060:
    xor $EA                                       ; $4060: $EE $EA
    add hl, bc                                    ; $4062: $09
    jr nc, @+$0A                                  ; $4063: $30 $08

    ld a, d                                       ; $4065: $7A
    ld b, b                                       ; $4066: $40
    ld d, b                                       ; $4067: $50
    rst RST_38                                    ; $4068: $FF
    rlca                                          ; $4069: $07
    ei                                            ; $406A: $FB
    ld e, [hl]                                    ; $406B: $5E
    ld hl, sp-$0A                                 ; $406C: $F8 $F6
    ret nc                                        ; $406E: $D0

    ret z                                         ; $406F: $C8

    nop                                           ; $4070: $00
    cp $F9                                        ; $4071: $FE $F9
    sbc h                                         ; $4073: $9C
    ei                                            ; $4074: $FB
    ld h, b                                       ; $4075: $60
    ld e, $E0                                     ; $4076: $1E $E0
    rst RST_38                                    ; $4078: $FF
    rlca                                          ; $4079: $07
    ld bc, $406B                                  ; $407A: $01 $6B $40
    ld a, l                                       ; $407D: $7D
    nop                                           ; $407E: $00
    rlca                                          ; $407F: $07
    rlca                                          ; $4080: $07
    rlca                                          ; $4081: $07
    rlca                                          ; $4082: $07
    nop                                           ; $4083: $00
    ld b, b                                       ; $4084: $40
    ld [$025B], sp                                ; $4085: $08 $5B $02
    ld c, [hl]                                    ; $4088: $4E

jr_031_4089:
    ld [$6F2C], sp                                ; $4089: $08 $2C $6F
    jr nz, jr_031_40CC                            ; $408C: $20 $3E

    rlca                                          ; $408E: $07
    ei                                            ; $408F: $FB
    cp a                                          ; $4090: $BF
    cp a                                          ; $4091: $BF
    rlca                                          ; $4092: $07
    rlca                                          ; $4093: $07
    ld bc, $4740                                  ; $4094: $01 $40 $47
    ld [bc], a                                    ; $4097: $02
    ld [hl], l                                    ; $4098: $75
    inc b                                         ; $4099: $04
    ld b, a                                       ; $409A: $47
    rlca                                          ; $409B: $07
    dec b                                         ; $409C: $05
    ld [$102C], sp                                ; $409D: $08 $2C $10
    ld [hl], a                                    ; $40A0: $77
    rst RST_10                                    ; $40A1: $D7
    rlca                                          ; $40A2: $07
    inc b                                         ; $40A3: $04
    ld bc, $042C                                  ; $40A4: $01 $2C $04
    ld [hl], a                                    ; $40A7: $77
    rlca                                          ; $40A8: $07
    inc bc                                        ; $40A9: $03
    ld a, e                                       ; $40AA: $7B
    stop                                          ; $40AB: $10 $00
    ld c, a                                       ; $40AD: $4F
    rlca                                          ; $40AE: $07
    inc bc                                        ; $40AF: $03
    ld [bc], a                                    ; $40B0: $02
    nop                                           ; $40B1: $00
    dec a                                         ; $40B2: $3D
    ld a, e                                       ; $40B3: $7B
    ld b, b                                       ; $40B4: $40
    nop                                           ; $40B5: $00
    adc a                                         ; $40B6: $8F
    rlca                                          ; $40B7: $07
    ld bc, $0020                                  ; $40B8: $01 $20 $00
    dec a                                         ; $40BB: $3D
    add hl, hl                                    ; $40BC: $29
    ld bc, $1003                                  ; $40BD: $01 $03 $10

Call_031_40C0:
    rrca                                          ; $40C0: $0F
    db $10                                        ; $40C1: $10
    rra                                           ; $40C2: $1F
    ccf                                           ; $40C3: $3F
    nop                                           ; $40C4: $00
    ld de, $7F59                                  ; $40C5: $11 $59 $7F
    ld a, b                                       ; $40C8: $78
    ld [$FFDE], sp                                ; $40C9: $08 $DE $FF

jr_031_40CC:
    ld c, h                                       ; $40CC: $4C
    ld [$8010], sp                                ; $40CD: $08 $10 $80
    ret nz                                        ; $40D0: $C0

    ldh a, [rP1]                                  ; $40D1: $F0 $00
    and b                                         ; $40D3: $A0
    ld hl, sp+$04                                 ; $40D4: $F8 $04
    db $FC                                        ; $40D6: $FC
    ld e, l                                       ; $40D7: $5D
    ld b, [hl]                                    ; $40D8: $46
    ld [$0882], sp                                ; $40D9: $08 $82 $08
    cp b                                          ; $40DC: $B8
    ld [$08E3], sp                                ; $40DD: $08 $E3 $08
    xor d                                         ; $40E0: $AA
    rst RST_38                                    ; $40E1: $FF
    ld l, h                                       ; $40E2: $6C
    add sp, $7C                                   ; $40E3: $E8 $7C
    ld [$E86F], sp                                ; $40E5: $08 $6F $E8
    ld h, $E5                                     ; $40E8: $26 $E5
    rst RST_38                                    ; $40EA: $FF
    cp b                                          ; $40EB: $B8

jr_031_40EC:
    jr jr_031_40EC                                ; $40EC: $18 $FE

    ld b, d                                       ; $40EE: $42
    ld a, [$FA73]                                 ; $40EF: $FA $73 $FA
    ld d, l                                       ; $40F2: $55
    ld [$11F8], sp                                ; $40F3: $08 $F8 $11
    ld a, [$E876]                                 ; $40F6: $FA $76 $E8
    ld a, [hl]                                    ; $40F9: $7E
    ld [$3755], sp                                ; $40FA: $08 $55 $37
    add sp, $13                                   ; $40FD: $E8 $13
    ld a, [$F870]                                 ; $40FF: $FA $70 $F8
    ret nc                                        ; $4102: $D0

    ld hl, sp-$2B                                 ; $4103: $F8 $D5
    jr z, @-$46                                   ; $4105: $28 $B8

    ld d, d                                       ; $4107: $52
    ld [$0822], sp                                ; $4108: $08 $22 $08
    add e                                         ; $410B: $83
    ld [$3B5F], sp                                ; $410C: $08 $5F $3B
    db $FC                                        ; $410F: $FC
    jr @-$06                                      ; $4110: $18 $F8

    nop                                           ; $4112: $00
    ld hl, sp+$48                                 ; $4113: $F8 $48
    add sp, -$2B                                  ; $4115: $E8 $D5
    db $10                                        ; $4117: $10
    ld [$E81B], sp                                ; $4118: $08 $1B $E8
    add hl, bc                                    ; $411B: $09
    db $FC                                        ; $411C: $FC
    add sp, -$08                                  ; $411D: $E8 $F8
    push de                                       ; $411F: $D5

Jump_031_4120:
    jr nz, @-$46                                  ; $4120: $20 $B8

    ld a, [hl+]                                   ; $4122: $2A
    ld [$0812], sp                                ; $4123: $08 $12 $08
    jp Jump_031_5708                              ; $4126: $C3 $08 $57


    sbc a                                         ; $4129: $9F
    ld [$F800], sp                                ; $412A: $08 $00 $F8
    inc c                                         ; $412D: $0C
    ld hl, sp+$08                                 ; $412E: $F8 $08
    ldh a, [$FFDD]                                ; $4130: $F0 $DD
    db $10                                        ; $4132: $10
    ldh [$FF5D], a                                ; $4133: $E0 $5D
    add sp, $20                                   ; $4135: $E8 $20
    ld [$E80D], sp                                ; $4137: $08 $0D $E8
    ld [hl], l                                    ; $413A: $75
    inc b                                         ; $413B: $04
    ld [$00C8], sp                                ; $413C: $08 $C8 $00
    jr nc, @-$06                                  ; $413F: $30 $F8

    ld [hl], b                                    ; $4141: $70
    ld hl, sp+$55                                 ; $4142: $F8 $55
    ldh [$FFB8], a                                ; $4144: $E0 $B8
    sub [hl]                                      ; $4146: $96
    ld [$088A], sp                                ; $4147: $08 $8A $08
    db $E3                                        ; $414A: $E3
    ld [$CD2E], sp                                ; $414B: $08 $2E $CD
    cp $FF                                        ; $414E: $FE $FF
    ld l, $E8                                     ; $4150: $2E $E8
    jr jr_031_415C                                ; $4152: $18 $08

    ld b, $B5                                     ; $4154: $06 $B5
    add sp, $02                                   ; $4156: $E8 $02

jr_031_4158:
    rst RST_38                                    ; $4158: $FF
    ret z                                         ; $4159: $C8

    ret z                                         ; $415A: $C8

    ret z                                         ; $415B: $C8

jr_031_415C:
    add $18                                       ; $415C: $C6 $18
    ld e, e                                       ; $415E: $5B
    di                                            ; $415F: $F3
    ld [$7864], sp                                ; $4160: $08 $64 $78
    ld sp, hl                                     ; $4163: $F9
    ld c, $C0                                     ; $4164: $0E $C0
    cp b                                          ; $4166: $B8
    xor a                                         ; $4167: $AF
    ld hl, sp+$07                                 ; $4168: $F8 $07
    ld hl, sp+$17                                 ; $416A: $F8 $17
    add sp, $18                                   ; $416C: $E8 $18
    ld [$AB50], sp                                ; $416E: $08 $50 $AB
    ld l, b                                       ; $4171: $68
    add c                                         ; $4172: $81
    ld a, [$F810]                                 ; $4173: $FA $10 $F8
    jr c, @-$06                                   ; $4176: $38 $F8

    db $10                                        ; $4178: $10
    and d                                         ; $4179: $A2
    ret z                                         ; $417A: $C8

    ld h, [hl]                                    ; $417B: $66
    ld [$FEE0], sp                                ; $417C: $08 $E0 $FE
    ld a, e                                       ; $417F: $7B
    jr jr_031_41B2                                ; $4180: $18 $30

    cp e                                          ; $4182: $BB
    db $FC                                        ; $4183: $FC
    inc de                                        ; $4184: $13
    ld hl, sp+$20                                 ; $4185: $F8 $20
    ld hl, sp+$0B                                 ; $4187: $F8 $0B

jr_031_4189:
    jp hl                                         ; $4189: $E9


    ld [$016E], sp                                ; $418A: $08 $6E $01
    jp hl                                         ; $418D: $E9


    db $FC                                        ; $418E: $FC
    jr jr_031_4189                                ; $418F: $18 $F8

    nop                                           ; $4191: $00
    ret z                                         ; $4192: $C8

    or b                                          ; $4193: $B0
    xor b                                         ; $4194: $A8
    add sp, -$0E                                  ; $4195: $E8 $F2
    jr jr_031_4158                                ; $4197: $18 $BF

    ld [$FD9A], sp                                ; $4199: $08 $9A $FD
    ld [bc], a                                    ; $419C: $02
    xor $B0                                       ; $419D: $EE $B0
    ldh a, [rP1]                                  ; $419F: $F0 $00
    add hl, bc                                    ; $41A1: $09
    ld hl, sp-$38                                 ; $41A2: $F8 $C8
    ld hl, sp+$45                                 ; $41A4: $F8 $45
    push de                                       ; $41A6: $D5
    jp hl                                         ; $41A7: $E9


    ld [$E800], sp                                ; $41A8: $08 $00 $E8
    ldh [$FF08], a                                ; $41AB: $E0 $08
    ld b, b                                       ; $41AD: $40
    ld hl, sp-$26                                 ; $41AE: $F8 $DA
    jr z, @-$06                                   ; $41B0: $28 $F8

jr_031_41B2:
    adc b                                         ; $41B2: $88
    pop af                                        ; $41B3: $F1
    nop                                           ; $41B4: $00
    jp c, $FA08                                   ; $41B5: $DA $08 $FA

    adc l                                         ; $41B8: $8D
    ld [$FEDD], sp                                ; $41B9: $08 $DD $FE
    ld c, a                                       ; $41BC: $4F
    jr @+$01                                      ; $41BD: $18 $FF

    ld [hl+], a                                   ; $41BF: $22
    add sp, -$25                                  ; $41C0: $E8 $DB
    ret z                                         ; $41C2: $C8

    ld a, [$FF70]                                 ; $41C3: $FA $70 $FF
    nop                                           ; $41C6: $00
    xor $08                                       ; $41C7: $EE $08
    ldh [$FFAD], a                                ; $41C9: $E0 $AD
    ld [$686C], sp                                ; $41CB: $08 $6C $68
    dec h                                         ; $41CE: $25
    jr nz, @-$05                                  ; $41CF: $20 $F9

    rlca                                          ; $41D1: $07
    ld hl, sp+$57                                 ; $41D2: $F8 $57
    inc d                                         ; $41D4: $14
    ld hl, sp+$20                                 ; $41D5: $F8 $20
    ld hl, sp+$51                                 ; $41D7: $F8 $51
    add sp, $18                                   ; $41D9: $E8 $18

jr_031_41DB:
    ld [$805F], sp                                ; $41DB: $08 $5F $80
    ld a, b                                       ; $41DE: $78
    jr c, jr_031_41DB                             ; $41DF: $38 $FA

    jr z, jr_031_41DB                             ; $41E1: $28 $F8

    db $10                                        ; $41E3: $10
    ld a, [$7455]                                 ; $41E4: $FA $55 $74
    ret z                                         ; $41E7: $C8

    ld a, h                                       ; $41E8: $7C
    ld [$6834], sp                                ; $41E9: $08 $34 $68
    db $10                                        ; $41EC: $10
    ld [$FBAB], sp                                ; $41ED: $08 $AB $FB
    ld a, [de]                                    ; $41F0: $1A
    ld hl, sp+$30                                 ; $41F1: $F8 $30
    ld hl, sp+$28                                 ; $41F3: $F8 $28
    add sp, $58                                   ; $41F5: $E8 $58
    db $EB                                        ; $41F7: $EB
    ld [$68B8], sp                                ; $41F8: $08 $B8 $68
    sbc h                                         ; $41FB: $9C

Jump_031_41FC:
    db $FC                                        ; $41FC: $FC
    ld h, b                                       ; $41FD: $60
    ld hl, sp-$28                                 ; $41FE: $F8 $D8
    xor d                                         ; $4200: $AA
    ld hl, sp-$48                                 ; $4201: $F8 $B8
    add sp, $3C                                   ; $4203: $E8 $3C
    ld [$6818], sp                                ; $4205: $08 $18 $68
    ld a, [bc]                                    ; $4208: $0A
    ld [hl], l                                    ; $4209: $75
    db $FD                                        ; $420A: $FD
    ldh a, [rSB]                                  ; $420B: $F0 $01
    ld hl, sp+$1D                                 ; $420D: $F8 $1D
    ld hl, sp+$38                                 ; $420F: $F8 $38
    ld hl, sp+$55                                 ; $4211: $F8 $55

Jump_031_4213:
    inc d                                         ; $4213: $14
    add sp, $08                                   ; $4214: $E8 $08
    ld [$78E0], sp                                ; $4216: $08 $E0 $78
    adc $08                                       ; $4219: $CE $08
    ld [hl], a                                    ; $421B: $77
    nop                                           ; $421C: $00
    ld hl, sp+$00                                 ; $421D: $F8 $00
    ld hl, sp+$30                                 ; $421F: $F8 $30
    ld hl, sp-$28                                 ; $4221: $F8 $D8
    ld hl, sp+$55                                 ; $4223: $F8 $55
    ld e, [hl]                                    ; $4225: $5E
    ld [$F81C], sp                                ; $4226: $08 $1C $F8
    ld c, $E8                                     ; $4229: $0E $E8
    rlca                                          ; $422B: $07
    jr z, @-$50                                   ; $422C: $28 $AE

    rst RST_38                                    ; $422E: $FF
    ld c, d                                       ; $422F: $4A
    add sp, $44                                   ; $4230: $E8 $44
    ld [$E8C0], sp                                ; $4232: $08 $C0 $E8
    ld h, a                                       ; $4235: $67
    push de                                       ; $4236: $D5
    rst RST_38                                    ; $4237: $FF
    cp b                                          ; $4238: $B8
    inc l                                         ; $4239: $2C
    add sp, $0C                                   ; $423A: $E8 $0C
    ld [$0805], sp                                ; $423C: $08 $05 $08
    ld a, e                                       ; $423F: $7B
    ld bc, $F108                                  ; $4240: $01 $08 $F1
    jr @-$06                                      ; $4243: $18 $F8

    ld c, $F8                                     ; $4245: $0E $F8
    ld a, b                                       ; $4247: $78
    xor d                                         ; $4248: $AA
    ld hl, sp+$65                                 ; $4249: $F8 $65
    add sp, $62                                   ; $424B: $E8 $62
    ld [$E878], sp                                ; $424D: $08 $78 $E8
    inc sp                                        ; $4250: $33
    xor d                                         ; $4251: $AA
    ld a, [$F8E0]                                 ; $4252: $FA $E0 $F8
    sbc b                                         ; $4255: $98
    ld hl, sp+$1C                                 ; $4256: $F8 $1C
    ld hl, sp+$14                                 ; $4258: $F8 $14
    cp c                                          ; $425A: $B9
    ret z                                         ; $425B: $C8

    inc b                                         ; $425C: $04
    ld [$6858], sp                                ; $425D: $08 $58 $68

jr_031_4260:
    add d                                         ; $4260: $82
    db $FD                                        ; $4261: $FD
    ei                                            ; $4262: $FB
    ld d, l                                       ; $4263: $55
    rlca                                          ; $4264: $07
    ld hl, sp+$3E                                 ; $4265: $F8 $3E
    ld hl, sp+$32                                 ; $4267: $F8 $32
    add sp, $71                                   ; $4269: $E8 $71
    ld [$BC55], sp                                ; $426B: $08 $55 $BC
    ld a, b                                       ; $426E: $78
    sbc c                                         ; $426F: $99
    db $FC                                        ; $4270: $FC

Call_031_4271:
    ld c, b                                       ; $4271: $48
    ld hl, sp+$0C                                 ; $4272: $F8 $0C
    ld hl, sp+$6A                                 ; $4274: $F8 $6A
    adc b                                         ; $4276: $88
    jp hl                                         ; $4277: $E9


    ld [$E802], sp                                ; $4278: $08 $02 $E8
    jp Jump_031_4038                              ; $427B: $C3 $38 $40


    xor e                                         ; $427E: $AB
    adc b                                         ; $427F: $88
    db $E3                                        ; $4280: $E3
    ld [$C875], sp                                ; $4281: $08 $75 $C8
    inc a                                         ; $4284: $3C
    ld [$5288], sp                                ; $4285: $08 $88 $52
    ccf                                           ; $4288: $3F
    ld a, b                                       ; $4289: $78
    rra                                           ; $428A: $1F
    ld [$010F], sp                                ; $428B: $08 $0F $01
    sub b                                         ; $428E: $90
    add e                                         ; $428F: $83
    sub c                                         ; $4290: $91
    adc b                                         ; $4291: $88
    inc b                                         ; $4292: $04
    ei                                            ; $4293: $FB
    jr nc, @-$0E                                  ; $4294: $30 $F0

    add sp, -$0A                                  ; $4296: $E8 $F6
    cp b                                          ; $4298: $B8
    ld b, $BC                                     ; $4299: $06 $BC
    adc b                                         ; $429B: $88
    ld [hl], b                                    ; $429C: $70
    jr nc, @-$3E                                  ; $429D: $30 $C0

    adc b                                         ; $429F: $88
    ld [$AB20], sp                                ; $42A0: $08 $20 $AB
    add sp, -$0F                                  ; $42A3: $E8 $F1
    ld [$E87A], sp                                ; $42A5: $08 $7A $E8
    ld a, $FF                                     ; $42A8: $3E $FF
    ld hl, sp+$05                                 ; $42AA: $F8 $05
    ld b, l                                       ; $42AC: $45
    ld a, [$F986]                                 ; $42AD: $FA $86 $F9
    adc a                                         ; $42B0: $8F
    ld hl, sp+$64                                 ; $42B1: $F8 $64
    jr z, jr_031_4260                             ; $42B3: $28 $AB

    rst RST_38                                    ; $42B5: $FF
    db $10                                        ; $42B6: $10
    add sp, -$08                                  ; $42B7: $E8 $F8
    ld [$E83D], sp                                ; $42B9: $08 $3D $E8
    nop                                           ; $42BC: $00
    cp c                                          ; $42BD: $B9
    add sp, $0E                                   ; $42BE: $E8 $0E
    ld [$E848], sp                                ; $42C0: $08 $48 $E8
    ld [$F907], sp                                ; $42C3: $08 $07 $F9
    ld d, h                                       ; $42C6: $54
    ld h, $E8                                     ; $42C7: $26 $E8
    rst RST_00                                    ; $42C9: $C7
    add b                                         ; $42CA: $80

jr_031_42CB:
    ld c, a                                       ; $42CB: $4F
    ld hl, sp+$22                                 ; $42CC: $F8 $22
    db $FC                                        ; $42CE: $FC
    ld a, [bc]                                    ; $42CF: $0A

jr_031_42D0:
    ld h, b                                       ; $42D0: $60
    sbc h                                         ; $42D1: $9C
    ld b, b                                       ; $42D2: $40
    cp b                                          ; $42D3: $B8
    adc b                                         ; $42D4: $88
    ldh [$FFF9], a                                ; $42D5: $E0 $F9
    adc b                                         ; $42D7: $88
    xor e                                         ; $42D8: $AB
    add sp, $7C                                   ; $42D9: $E8 $7C
    ld [$F01E], sp                                ; $42DB: $08 $1E $F0
    rra                                           ; $42DE: $1F
    ld [$DDE0], sp                                ; $42DF: $08 $E0 $DD
    ld hl, sp-$18                                 ; $42E2: $F8 $E8
    rla                                           ; $42E4: $17
    ei                                            ; $42E5: $FB
    jr nz, jr_031_42D0                            ; $42E6: $20 $E8

    ld h, a                                       ; $42E8: $67
    ld [$AF40], sp                                ; $42E9: $08 $40 $AF
    ld hl, sp-$80                                 ; $42EC: $F8 $80
    cp $70                                        ; $42EE: $FE $70
    adc h                                         ; $42F0: $8C
    jr nz, jr_031_42CB                            ; $42F1: $20 $D8

    xor [hl]                                      ; $42F3: $AE
    ei                                            ; $42F4: $FB
    ld b, h                                       ; $42F5: $44
    add sp, $3E                                   ; $42F6: $E8 $3E
    ld [$E8D8], sp                                ; $42F8: $08 $D8 $E8
    cpl                                           ; $42FB: $2F
    add a                                         ; $42FC: $87
    ld a, [$0B14]                                 ; $42FD: $FA $14 $0B
    inc c                                         ; $4300: $0C
    inc bc                                        ; $4301: $03
    ld a, b                                       ; $4302: $78
    ld [$A938], sp                                ; $4303: $08 $38 $A9
    add sp, $37                                   ; $4306: $E8 $37
    ld [$F85F], sp                                ; $4308: $08 $5F $F8
    ret nc                                        ; $430B: $D0

    xor $20                                       ; $430C: $EE $20
    ld e, b                                       ; $430E: $58
    add h                                         ; $430F: $84

Call_031_4310:
    add sp, -$18                                  ; $4310: $E8 $E8
    ld l, b                                       ; $4312: $68
    jr c, @-$7E                                   ; $4313: $38 $80

    ld b, b                                       ; $4315: $40
    ld [hl+], a                                   ; $4316: $22
    xor e                                         ; $4317: $AB
    add sp, $1F                                   ; $4318: $E8 $1F
    ld [$E807], sp                                ; $431A: $08 $07 $E8
    ld [hl], a                                    ; $431D: $77
    add sp, -$01                                  ; $431E: $E8 $FF
    or [hl]                                       ; $4320: $B6
    nop                                           ; $4321: $00
    db $FC                                        ; $4322: $FC
    ld a, b                                       ; $4323: $78
    ret nc                                        ; $4324: $D0

    and a                                         ; $4325: $A7
    ld [$E600], sp                                ; $4326: $08 $00 $E6
    cp [hl]                                       ; $4329: $BE
    rst RST_38                                    ; $432A: $FF
    ld de, $C8E8                                  ; $432B: $11 $E8 $C8
    ld [$F898], sp                                ; $432E: $08 $98 $F8
    dec de                                        ; $4331: $1B
    jp nz, $F908                                  ; $4332: $C2 $08 $F9

    ld a, [bc]                                    ; $4335: $0A
    dec d                                         ; $4336: $15
    ld b, $09                                     ; $4337: $06 $09
    ld sp, hl                                     ; $4339: $F9
    dec b                                         ; $433A: $05
    nop                                           ; $433B: $00
    ld a, [$FC8B]                                 ; $433C: $FA $8B $FC
    db $DB                                        ; $433F: $DB
    db $F4                                        ; $4340: $F4
    db $EC                                        ; $4341: $EC
    ldh a, [c]                                    ; $4342: $F2
    cp h                                          ; $4343: $BC
    dec a                                         ; $4344: $3D
    ret nz                                        ; $4345: $C0

    ld [$FBE8], sp                                ; $4346: $08 $E8 $FB
    jr z, @-$16                                   ; $4349: $28 $E8

    rlca                                          ; $434B: $07
    ld [$0152], sp                                ; $434C: $08 $52 $01
    add sp, $2D                                   ; $434F: $E8 $2D
    ld [$1F2F], sp                                ; $4351: $08 $2F $1F
    ret z                                         ; $4354: $C8

    ld a, [de]                                    ; $4355: $1A
    add b                                         ; $4356: $80
    ei                                            ; $4357: $FB
    add [hl]                                      ; $4358: $86
    ld sp, hl                                     ; $4359: $F9
    pop bc                                        ; $435A: $C1
    cp $E5                                        ; $435B: $FE $E5
    ld a, [$1DE6]                                 ; $435D: $FA $E6 $1D
    ld hl, sp-$64                                 ; $4360: $F8 $9C
    ldh [$FF58], a                                ; $4362: $E0 $58
    jr @-$03                                      ; $4364: $18 $FB

    add h                                         ; $4366: $84
    add sp, -$0C                                  ; $4367: $E8 $F4
    sub b                                         ; $4369: $90
    ld [$E838], sp                                ; $436A: $08 $38 $E8
    ld [hl], $08                                  ; $436D: $36 $08
    ccf                                           ; $436F: $3F
    rrca                                          ; $4370: $0F
    ld a, [hl+]                                   ; $4371: $2A
    ld [bc], a                                    ; $4372: $02
    dec e                                         ; $4373: $1D
    ld c, b                                       ; $4374: $48
    inc c                                         ; $4375: $0C
    ld sp, hl                                     ; $4376: $F9
    ld b, a                                       ; $4377: $47
    xor b                                         ; $4378: $A8
    db $E4                                        ; $4379: $E4
    ld b, d                                       ; $437A: $42
    ei                                            ; $437B: $FB
    ldh a, [$FFF5]                                ; $437C: $F0 $F5
    ldh [c], a                                    ; $437E: $E2
    db $FC                                        ; $437F: $FC
    adc h                                         ; $4380: $8C
    reti                                          ; $4381: $D9


    ld a, b                                       ; $4382: $78
    ld [$F0F9], a                                 ; $4383: $EA $F9 $F0
    jr nz, jr_031_43CA                            ; $4386: $20 $42

    add sp, -$7F                                  ; $4388: $E8 $81
    ld a, [$D03B]                                 ; $438A: $FA $3B $D0
    rst RST_38                                    ; $438D: $FF
    db $10                                        ; $438E: $10
    daa                                           ; $438F: $27
    ld hl, sp-$0A                                 ; $4390: $F8 $F6
    ld sp, hl                                     ; $4392: $F9
    ld [hl], l                                    ; $4393: $75
    ld a, [$602B]                                 ; $4394: $FA $2B $60
    cp $FF                                        ; $4397: $FE $FF
    ld hl, $C0E8                                  ; $4399: $21 $E8 $C0
    ld [$A828], sp                                ; $439C: $08 $28 $A8
    add sp, $7D                                   ; $439F: $E8 $7D
    ldh a, [$FF37]                                ; $43A1: $F0 $37
    ld hl, sp+$11                                 ; $43A3: $F8 $11
    ld c, $01                                     ; $43A5: $0E $01
    call c, $F908                                 ; $43A7: $DC $08 $F9
    rla                                           ; $43AA: $17
    ld hl, sp+$70                                 ; $43AB: $F8 $70
    ld [$FD32], sp                                ; $43AD: $08 $32 $FD
    ld e, d                                       ; $43B0: $5A
    and b                                         ; $43B1: $A0
    ld hl, sp-$7C                                 ; $43B2: $F8 $84
    jr z, @-$56                                   ; $43B4: $28 $A8

    cp b                                          ; $43B6: $B8
    ldh [rSVBK], a                                ; $43B7: $E0 $70
    xor d                                         ; $43B9: $AA
    ld sp, hl                                     ; $43BA: $F9
    db $10                                        ; $43BB: $10
    ld [hl], b                                    ; $43BC: $70
    ld h, b                                       ; $43BD: $60
    ld [$F820], sp                                ; $43BE: $08 $20 $F8
    ld e, [hl]                                    ; $43C1: $5E
    xor l                                         ; $43C2: $AD
    ld hl, sp+$33                                 ; $43C3: $F8 $33
    ld hl, sp+$08                                 ; $43C5: $F8 $08
    ret nc                                        ; $43C7: $D0

    ei                                            ; $43C8: $FB

jr_031_43C9:
    adc a                                         ; $43C9: $8F

jr_031_43CA:
    cp b                                          ; $43CA: $B8
    rla                                           ; $43CB: $17
    ld a, e                                       ; $43CC: $7B
    db $FC                                        ; $43CD: $FC
    ld de, $C0E8                                  ; $43CE: $11 $E8 $C0
    ld [$28C0], sp                                ; $43D1: $08 $C0 $28
    ld a, [hl-]                                   ; $43D4: $3A
    and b                                         ; $43D5: $A0
    ld e, b                                       ; $43D6: $58
    ei                                            ; $43D7: $FB
    xor b                                         ; $43D8: $A8
    add sp, $30                                   ; $43D9: $E8 $30
    ld [$F150], sp                                ; $43DB: $08 $50 $F1
    ld hl, sp-$20                                 ; $43DE: $F8 $E0
    ld [$2F98], sp                                ; $43E0: $08 $98 $2F
    inc b                                         ; $43E3: $04
    dec de                                        ; $43E4: $1B
    add sp, -$75                                  ; $43E5: $E8 $8B
    jr nc, @+$04                                  ; $43E7: $30 $02

jr_031_43E9:
    ld bc, $B843                                  ; $43E9: $01 $43 $B8
    add hl, sp                                    ; $43EC: $39
    ret c                                         ; $43ED: $D8

    jr c, jr_031_43C9                             ; $43EE: $38 $D9

    adc b                                         ; $43F0: $88
    ret nz                                        ; $43F1: $C0

    xor $F9                                       ; $43F2: $EE $F9
    xor b                                         ; $43F4: $A8
    xor b                                         ; $43F5: $A8
    ret nz                                        ; $43F6: $C0

    ret nc                                        ; $43F7: $D0

    push af                                       ; $43F8: $F5

jr_031_43F9:
    ld c, b                                       ; $43F9: $48
    db $10                                        ; $43FA: $10
    xor b                                         ; $43FB: $A8
    ld e, b                                       ; $43FC: $58
    jr @+$0A                                      ; $43FD: $18 $08

    jr z, jr_031_43E9                             ; $43FF: $28 $E8

    ld h, h                                       ; $4401: $64
    daa                                           ; $4402: $27
    rst RST_38                                    ; $4403: $FF
    ld hl, sp+$25                                 ; $4404: $F8 $25
    ld a, [$0879]                                 ; $4406: $FA $79 $08
    rst RST_30                                    ; $4409: $F7
    cp d                                          ; $440A: $BA
    ret nc                                        ; $440B: $D0

    or $FF                                        ; $440C: $F6 $FF
    adc b                                         ; $440E: $88
    ld l, b                                       ; $440F: $68
    adc h                                         ; $4410: $8C
    ld [$B554], sp                                ; $4411: $08 $54 $B5
    add sp, $33                                   ; $4414: $E8 $33
    ld [$3F48], sp                                ; $4416: $08 $48 $3F
    ld c, b                                       ; $4419: $48
    dec e                                         ; $441A: $1D
    ei                                            ; $441B: $FB
    jr nc, jr_031_4434                            ; $441C: $30 $16

    ld sp, hl                                     ; $441E: $F9
    add sp, $78                                   ; $441F: $E8 $78
    inc c                                         ; $4421: $0C
    di                                            ; $4422: $F3
    call nz, $85FA                                ; $4423: $C4 $FA $85
    ld sp, hl                                     ; $4426: $F9
    jr z, jr_031_43F9                             ; $4427: $28 $D0

    ld h, b                                       ; $4429: $60
    sub b                                         ; $442A: $90
    ld sp, hl                                     ; $442B: $F9
    add c                                         ; $442C: $81
    ld l, b                                       ; $442D: $68
    ld d, a                                       ; $442E: $57
    add $08                                       ; $442F: $C6 $08
    ld l, d                                       ; $4431: $6A
    add sp, $39                                   ; $4432: $E8 $39

jr_031_4434:
    ld [$F8A8], sp                                ; $4434: $08 $A8 $F8
    or [hl]                                       ; $4437: $B6
    ret nc                                        ; $4438: $D0

    ld e, $FB                                     ; $4439: $1E $FB
    db $10                                        ; $443B: $10
    ld hl, sp+$28                                 ; $443C: $F8 $28

jr_031_443E:
    ld a, b                                       ; $443E: $78
    ld c, $19                                     ; $443F: $0E $19
    pop af                                        ; $4441: $F1
    ldh a, [c]                                    ; $4442: $F2
    db $EC                                        ; $4443: $EC
    jr z, jr_031_443E                             ; $4444: $28 $F8

    db $10                                        ; $4446: $10
    add sp, -$05                                  ; $4447: $E8 $FB
    ld a, [de]                                    ; $4449: $1A
    ld b, b                                       ; $444A: $40
    ccf                                           ; $444B: $3F
    inc bc                                        ; $444C: $03
    db $10                                        ; $444D: $10
    rrca                                          ; $444E: $0F
    rrca                                          ; $444F: $0F
    rrca                                          ; $4450: $0F
    rrca                                          ; $4451: $0F
    rrca                                          ; $4452: $0F
    ld a, [bc]                                    ; $4453: $0A
    ld a, a                                       ; $4454: $7F
    ld d, $4F                                     ; $4455: $16 $4F
    rrca                                          ; $4457: $0F
    rrca                                          ; $4458: $0F
    rrca                                          ; $4459: $0F
    rrca                                          ; $445A: $0F
    rrca                                          ; $445B: $0F
    ld [$177B], sp                                ; $445C: $08 $7B $17
    ld c, a                                       ; $445F: $4F
    rrca                                          ; $4460: $0F
    rrca                                          ; $4461: $0F
    ld a, [bc]                                    ; $4462: $0A
    inc d                                         ; $4463: $14
    ld c, a                                       ; $4464: $4F
    rrca                                          ; $4465: $0F
    rst RST_30                                    ; $4466: $F7
    rrca                                          ; $4467: $0F
    rrca                                          ; $4468: $0F
    rrca                                          ; $4469: $0F
    ld c, $16                                     ; $446A: $0E $16
    ld c, a                                       ; $446C: $4F
    rrca                                          ; $446D: $0F
    rrca                                          ; $446E: $0F
    cp $0F                                        ; $446F: $FE $0F
    rrca                                          ; $4471: $0F
    rrca                                          ; $4472: $0F
    rrca                                          ; $4473: $0F
    rrca                                          ; $4474: $0F
    rrca                                          ; $4475: $0F
    inc c                                         ; $4476: $0C
    rla                                           ; $4477: $17
    db $DD                                        ; $4478: $DD
    ld c, a                                       ; $4479: $4F
    ld [$4F16], sp                                ; $447A: $08 $16 $4F
    rrca                                          ; $447D: $0F
    adc d                                         ; $447E: $8A
    dec d                                         ; $447F: $15
    ld a, [hl+]                                   ; $4480: $2A
    halt                                          ; $4481: $76
    inc d                                         ; $4482: $14
    ld a, a                                       ; $4483: $7F
    rrca                                          ; $4484: $0F
    ld [$4F18], sp                                ; $4485: $08 $18 $4F
    jp c, $FD17                                   ; $4488: $DA $17 $FD

    ld a, [de]                                    ; $448B: $1A
    ld a, c                                       ; $448C: $79
    add hl, hl                                    ; $448D: $29
    adc a                                         ; $448E: $8F
    add hl, bc                                    ; $448F: $09
    ld e, l                                       ; $4490: $5D
    ld d, $7F                                     ; $4491: $16 $7F
    xor e                                         ; $4493: $AB
    ld a, d                                       ; $4494: $7A
    inc d                                         ; $4495: $14
    ld l, h                                       ; $4496: $6C
    ld [de], a                                    ; $4497: $12
    ld a, [bc]                                    ; $4498: $0A

Call_031_4499:
    dec d                                         ; $4499: $15
    adc $89                                       ; $449A: $CE $89
    ld a, [$0F4B]                                 ; $449C: $FA $4B $0F
    sbc e                                         ; $449F: $9B
    ld a, c                                       ; $44A0: $79
    sbc c                                         ; $44A1: $99
    dec de                                        ; $44A2: $1B
    ld [$DD17], sp                                ; $44A3: $08 $17 $DD
    ld a, [bc]                                    ; $44A6: $0A
    ld l, c                                       ; $44A7: $69
    ld e, $5A                                     ; $44A8: $1E $5A
    rst RST_08                                    ; $44AA: $CF
    rst RST_38                                    ; $44AB: $FF
    jr @-$64                                      ; $44AC: $18 $9A

    ld [$19D9], a                                 ; $44AE: $EA $D9 $19
    ld c, e                                       ; $44B1: $4B
    inc de                                        ; $44B2: $13
    ld a, [bc]                                    ; $44B3: $0A
    add hl, de                                    ; $44B4: $19
    ld a, [de]                                    ; $44B5: $1A
    ld [de], a                                    ; $44B6: $12
    cp $0A                                        ; $44B7: $FE $0A
    db $DB                                        ; $44B9: $DB
    add hl, de                                    ; $44BA: $19
    add hl, bc                                    ; $44BB: $09
    ret                                           ; $44BC: $C9


    rra                                           ; $44BD: $1F
    add hl, bc                                    ; $44BE: $09
    rla                                           ; $44BF: $17

jr_031_44C0:
    xor l                                         ; $44C0: $AD
    ld [$0818], sp                                ; $44C1: $08 $18 $08
    rra                                           ; $44C4: $1F
    ld a, [$1D49]                                 ; $44C5: $FA $49 $1D
    ld [$127E], sp                                ; $44C8: $08 $7E $12
    ld a, [hl-]                                   ; $44CB: $3A
    ld c, e                                       ; $44CC: $4B
    ret                                           ; $44CD: $C9


    rst RST_38                                    ; $44CE: $FF
    dec de                                        ; $44CF: $1B
    add hl, bc                                    ; $44D0: $09
    dec de                                        ; $44D1: $1B
    or l                                          ; $44D2: $B5
    xor d                                         ; $44D3: $AA
    jr jr_031_44C0                                ; $44D4: $18 $EA

    dec c                                         ; $44D6: $0D
    ld e, $6A                                     ; $44D7: $1E $6A
    add hl, de                                    ; $44D9: $19
    xor d                                         ; $44DA: $AA
    ld a, [hl]                                    ; $44DB: $7E
    ld d, $EA                                     ; $44DC: $16 $EA
    dec c                                         ; $44DE: $0D
    ld e, e                                       ; $44DF: $5B
    ld sp, hl                                     ; $44E0: $F9
    xor c                                         ; $44E1: $A9
    add hl, bc                                    ; $44E2: $09
    dec e                                         ; $44E3: $1D
    xor $FA                                       ; $44E4: $EE $FA
    dec bc                                        ; $44E6: $0B
    ld sp, hl                                     ; $44E7: $F9
    ld a, [de]                                    ; $44E8: $1A
    ld l, d                                       ; $44E9: $6A
    cp e                                          ; $44EA: $BB
    add hl, hl                                    ; $44EB: $29
    rla                                           ; $44EC: $17
    cp e                                          ; $44ED: $BB
    ld [$3A10], sp                                ; $44EE: $08 $10 $3A
    ld e, c                                       ; $44F1: $59
    add hl, bc                                    ; $44F2: $09
    dec de                                        ; $44F3: $1B
    ld a, [de]                                    ; $44F4: $1A
    ld a, c                                       ; $44F5: $79
    rst RST_28                                    ; $44F6: $EF
    jp hl                                         ; $44F7: $E9


    reti                                          ; $44F8: $D9


    add hl, de                                    ; $44F9: $19
    add hl, de                                    ; $44FA: $19
    ld a, [de]                                    ; $44FB: $1A
    ld e, e                                       ; $44FC: $5B
    ret                                           ; $44FD: $C9


    ld sp, hl                                     ; $44FE: $F9
    cp a                                          ; $44FF: $BF
    xor c                                         ; $4500: $A9
    db $10                                        ; $4501: $10
    inc e                                         ; $4502: $1C
    ld e, c                                       ; $4503: $59
    add hl, hl                                    ; $4504: $29
    add hl, bc                                    ; $4505: $09
    add hl, hl                                    ; $4506: $29
    bit 3, d                                      ; $4507: $CB $5A
    rra                                           ; $4509: $1F
    ld c, d                                       ; $450A: $4A
    inc e                                         ; $450B: $1C
    ld c, h                                       ; $450C: $4C
    add hl, bc                                    ; $450D: $09
    add hl, de                                    ; $450E: $19
    ld [$B718], sp                                ; $450F: $08 $18 $B7
    ld [$FA17], sp                                ; $4512: $08 $17 $FA
    add hl, bc                                    ; $4515: $09
    dec de                                        ; $4516: $1B
    inc l                                         ; $4517: $2C
    ld l, c                                       ; $4518: $69
    reti                                          ; $4519: $D9


    rst RST_18                                    ; $451A: $DF
    sbc c                                         ; $451B: $99
    cp c                                          ; $451C: $B9
    ld e, $FA                                     ; $451D: $1E $FA
    ld e, c                                       ; $451F: $59
    add hl, de                                    ; $4520: $19
    ld c, c                                       ; $4521: $49
    dec bc                                        ; $4522: $0B
    push af                                       ; $4523: $F5
    reti                                          ; $4524: $D9


    xor c                                         ; $4525: $A9
    db $EB                                        ; $4526: $EB
    add hl, bc                                    ; $4527: $09
    ld d, $08                                     ; $4528: $16 $08
    rla                                           ; $452A: $17
    inc l                                         ; $452B: $2C
    cp e                                          ; $452C: $BB
    ld a, c                                       ; $452D: $79
    dec d                                         ; $452E: $15
    db $EC                                        ; $452F: $EC
    add hl, de                                    ; $4530: $19
    dec bc                                        ; $4531: $0B
    add hl, de                                    ; $4532: $19
    ld a, d                                       ; $4533: $7A
    ld e, c                                       ; $4534: $59

Jump_031_4535:
    ld e, h                                       ; $4535: $5C
    dec de                                        ; $4536: $1B
    call c, $1A1A                                 ; $4537: $DC $1A $1A
    rrca                                          ; $453A: $0F
    ld [$8026], sp                                ; $453B: $08 $26 $80
    ld d, l                                       ; $453E: $55
    nop                                           ; $453F: $00
    ld [bc], a                                    ; $4540: $02
    ld bc, $0304                                  ; $4541: $01 $04 $03
    ld [$0807], sp                                ; $4544: $08 $07 $08
    ld d, l                                       ; $4547: $55
    rrca                                          ; $4548: $0F
    ld [$081F], sp                                ; $4549: $08 $1F $08
    ccf                                           ; $454C: $3F
    ld [$2C7F], sp                                ; $454D: $08 $7F $2C
    db $FD                                        ; $4550: $FD
    inc b                                         ; $4551: $04
    db $10                                        ; $4552: $10
    rlca                                          ; $4553: $07
    rlca                                          ; $4554: $07
    rlca                                          ; $4555: $07
    ld a, a                                       ; $4556: $7F
    add b                                         ; $4557: $80
    inc b                                         ; $4558: $04
    ld b, b                                       ; $4559: $40
    ret nz                                        ; $455A: $C0

    inc b                                         ; $455B: $04
    and b                                         ; $455C: $A0
    ld b, b                                       ; $455D: $40
    sub b                                         ; $455E: $90
    ld h, b                                       ; $455F: $60
    adc b                                         ; $4560: $88
    ld [hl], b                                    ; $4561: $70
    inc de                                        ; $4562: $13
    add h                                         ; $4563: $84
    ld a, b                                       ; $4564: $78
    cp $24                                        ; $4565: $FE $24
    add d                                         ; $4567: $82
    ld a, h                                       ; $4568: $7C
    rlca                                          ; $4569: $07
    rlca                                          ; $456A: $07
    rst RST_38                                    ; $456B: $FF
    rlca                                          ; $456C: $07
    ld a, a                                       ; $456D: $7F
    rst RST_38                                    ; $456E: $FF
    rst RST_38                                    ; $456F: $FF
    rst RST_38                                    ; $4570: $FF
    rst RST_38                                    ; $4571: $FF
    rlca                                          ; $4572: $07
    rlca                                          ; $4573: $07
    ldh a, [rTAC]                                 ; $4574: $F0 $07
    ld a, a                                       ; $4576: $7F
    rst RST_38                                    ; $4577: $FF
    rst RST_38                                    ; $4578: $FF
    ret z                                         ; $4579: $C8

    or b                                          ; $457A: $B0
    call nz, $9FB8                                ; $457B: $C4 $B8 $9F
    db $FD                                        ; $457E: $FD
    jp nz, $07BC                                  ; $457F: $C2 $BC $07

    rlca                                          ; $4582: $07
    rlca                                          ; $4583: $07
    ld a, a                                       ; $4584: $7F
    rst RST_38                                    ; $4585: $FF
    rst RST_10                                    ; $4586: $D7
    rst RST_38                                    ; $4587: $FF
    db $FD                                        ; $4588: $FD
    cpl                                           ; $4589: $2F
    cp $5F                                        ; $458A: $FE $5F
    call z, $0707                                 ; $458C: $CC $07 $07
    or $07                                        ; $458F: $F6 $07
    ld a, a                                       ; $4591: $7F
    rst RST_38                                    ; $4592: $FF
    db $FD                                        ; $4593: $FD
    ret nc                                        ; $4594: $D0

    ld [$E4FD], sp                                ; $4595: $08 $FD $E4
    ld c, a                                       ; $4598: $4F
    ret c                                         ; $4599: $D8

    db $FD                                        ; $459A: $FD
    ldh [c], a                                    ; $459B: $E2
    call c, $0707                                 ; $459C: $DC $07 $07
    rlca                                          ; $459F: $07
    ld a, a                                       ; $45A0: $7F
    rst RST_38                                    ; $45A1: $FF
    rst RST_38                                    ; $45A2: $FF
    rst RST_38                                    ; $45A3: $FF
    ldh a, [rDIV]                                 ; $45A4: $F0 $04
    cp b                                          ; $45A6: $B8
    db $10                                        ; $45A7: $10
    db $FD                                        ; $45A8: $FD
    inc b                                         ; $45A9: $04
    ld a, l                                       ; $45AA: $7D
    cpl                                           ; $45AB: $2F
    rlca                                          ; $45AC: $07
    rlca                                          ; $45AD: $07
    rlca                                          ; $45AE: $07
    ld a, a                                       ; $45AF: $7F
    rst RST_38                                    ; $45B0: $FF
    ldh [rNR10], a                                ; $45B1: $E0 $10
    or e                                          ; $45B3: $B3
    db $FD                                        ; $45B4: $FD
    add sp, $08                                   ; $45B5: $E8 $08
    rst RST_38                                    ; $45B7: $FF
    ldh a, [c]                                    ; $45B8: $F2
    db $EC                                        ; $45B9: $EC
    rlca                                          ; $45BA: $07
    rlca                                          ; $45BB: $07

jr_031_45BC:
    db $F4                                        ; $45BC: $F4
    rlca                                          ; $45BD: $07
    ld a, a                                       ; $45BE: $7F
    cp $04                                        ; $45BF: $FE $04
    ld b, $10                                     ; $45C1: $06 $10
    ld c, $05                                     ; $45C3: $0E $05
    add hl, bc                                    ; $45C5: $09
    inc e                                         ; $45C6: $1C
    dec bc                                        ; $45C7: $0B
    inc a                                         ; $45C8: $3C
    dec de                                        ; $45C9: $1B
    db $FD                                        ; $45CA: $FD
    ld a, b                                       ; $45CB: $78
    scf                                           ; $45CC: $37
    rlca                                          ; $45CD: $07
    db $F4                                        ; $45CE: $F4
    rlca                                          ; $45CF: $07
    rlca                                          ; $45D0: $07
    ld a, a                                       ; $45D1: $7F
    db $FD                                        ; $45D2: $FD
    ld b, b                                       ; $45D3: $40
    ld [$C020], sp                                ; $45D4: $08 $20 $C0
    ld c, a                                       ; $45D7: $4F
    jr nc, jr_031_45DE                            ; $45D8: $30 $04

    jr jr_031_45BC                                ; $45DA: $18 $E0

    add h                                         ; $45DC: $84
    inc b                                         ; $45DD: $04

jr_031_45DE:
    db $FD                                        ; $45DE: $FD
    sbc h                                         ; $45DF: $9C
    ld a, a                                       ; $45E0: $7F
    ldh a, [rTAC]                                 ; $45E1: $F0 $07
    rlca                                          ; $45E3: $07
    rlca                                          ; $45E4: $07
    ld a, a                                       ; $45E5: $7F
    rst RST_38                                    ; $45E6: $FF
    rst RST_38                                    ; $45E7: $FF
    rst RST_38                                    ; $45E8: $FF
    sbc a                                         ; $45E9: $9F
    db $FD                                        ; $45EA: $FD
    ld a, h                                       ; $45EB: $7C
    dec sp                                        ; $45EC: $3B
    rlca                                          ; $45ED: $07
    rlca                                          ; $45EE: $07
    rlca                                          ; $45EF: $07
    ld a, a                                       ; $45F0: $7F
    rst RST_38                                    ; $45F1: $FF
    xor e                                         ; $45F2: $AB
    db $FD                                        ; $45F3: $FD
    db $10                                        ; $45F4: $10
    db $EC                                        ; $45F5: $EC
    ld [$0CB4], sp                                ; $45F6: $08 $B4 $0C
    inc b                                         ; $45F9: $04
    db $FD                                        ; $45FA: $FD
    cp [hl]                                       ; $45FB: $BE
    and h                                         ; $45FC: $A4
    ld hl, sp+$07                                 ; $45FD: $F8 $07
    rlca                                          ; $45FF: $07
    rlca                                          ; $4600: $07
    ld a, a                                       ; $4601: $7F
    rst RST_38                                    ; $4602: $FF
    rlca                                          ; $4603: $07
    ld hl, $0F02                                  ; $4604: $21 $02 $0F
    jr nc, jr_031_4627                            ; $4607: $30 $1E

    dec c                                         ; $4609: $0D
    ld a, $1D                                     ; $460A: $3E $1D
    db $FD                                        ; $460C: $FD
    ccf                                           ; $460D: $3F
    ld a, [hl]                                    ; $460E: $7E
    dec a                                         ; $460F: $3D
    rlca                                          ; $4610: $07
    rlca                                          ; $4611: $07
    rlca                                          ; $4612: $07
    ld a, a                                       ; $4613: $7F
    rst RST_38                                    ; $4614: $FF
    rst RST_38                                    ; $4615: $FF
    cp e                                          ; $4616: $BB
    db $FD                                        ; $4617: $FD
    inc b                                         ; $4618: $04
    cp h                                          ; $4619: $BC
    db $FD                                        ; $461A: $FD
    and b                                         ; $461B: $A0
    db $FC                                        ; $461C: $FC
    rlca                                          ; $461D: $07
    rlca                                          ; $461E: $07
    ldh a, [rTAC]                                 ; $461F: $F0 $07
    ld a, a                                       ; $4621: $7F
    rst RST_38                                    ; $4622: $FF
    rst RST_38                                    ; $4623: $FF
    rra                                           ; $4624: $1F
    ld c, $3F                                     ; $4625: $0E $3F

jr_031_4627:
    ld e, $DF                                     ; $4627: $1E $DF
    db $FD                                        ; $4629: $FD
    inc b                                         ; $462A: $04
    ld a, $07                                     ; $462B: $3E $07
    rlca                                          ; $462D: $07
    rlca                                          ; $462E: $07
    ld a, a                                       ; $462F: $7F
    rst RST_38                                    ; $4630: $FF
    rst RST_38                                    ; $4631: $FF
    rst RST_38                                    ; $4632: $FF
    rst RST_38                                    ; $4633: $FF
    rst RST_38                                    ; $4634: $FF
    rlca                                          ; $4635: $07
    rlca                                          ; $4636: $07
    rlca                                          ; $4637: $07
    ld a, a                                       ; $4638: $7F
    inc bc                                        ; $4639: $03
    ldh [$FF03], a                                ; $463A: $E0 $03
    inc bc                                        ; $463C: $03
    nop                                           ; $463D: $00
    add d                                         ; $463E: $82
    ld b, h                                       ; $463F: $44
    ld l, h                                       ; $4640: $6C
    jr z, jr_031_46BF                             ; $4641: $28 $7C

    cp a                                          ; $4643: $BF
    xor h                                         ; $4644: $AC
    jr c, @+$0F                                   ; $4645: $38 $0D

    dec e                                         ; $4647: $1D
    dec l                                         ; $4648: $2D
    ld b, e                                       ; $4649: $43
    inc bc                                        ; $464A: $03
    inc bc                                        ; $464B: $03
    db $FD                                        ; $464C: $FD
    inc bc                                        ; $464D: $03
    ld [bc], a                                    ; $464E: $02
    ld l, b                                       ; $464F: $68
    dec b                                         ; $4650: $05
    ld [hl], l                                    ; $4651: $75
    nop                                           ; $4652: $00
    cp $0D                                        ; $4653: $FE $0D
    rst RST_38                                    ; $4655: $FF
    daa                                           ; $4656: $27
    ld b, e                                       ; $4657: $43
    inc bc                                        ; $4658: $03
    inc bc                                        ; $4659: $03
    inc bc                                        ; $465A: $03
    inc bc                                        ; $465B: $03
    nop                                           ; $465C: $00
    ldh [rIE], a                                  ; $465D: $E0 $FF
    db $EC                                        ; $465F: $EC
    ld l, h                                       ; $4660: $6C
    cp $7D                                        ; $4661: $FE $7D
    inc e                                         ; $4663: $1C
    inc sp                                        ; $4664: $33
    inc bc                                        ; $4665: $03
    inc bc                                        ; $4666: $03

jr_031_4667:
    ei                                            ; $4667: $FB
    inc bc                                        ; $4668: $03
    inc bc                                        ; $4669: $03
    ld [bc], a                                    ; $466A: $02
    sbc $00                                       ; $466B: $DE $00
    ld a, h                                       ; $466D: $7C
    rla                                           ; $466E: $17
    inc sp                                        ; $466F: $33
    rst RST_38                                    ; $4670: $FF
    inc bc                                        ; $4671: $03
    inc bc                                        ; $4672: $03
    inc bc                                        ; $4673: $03
    inc bc                                        ; $4674: $03
    inc bc                                        ; $4675: $03
    nop                                           ; $4676: $00

jr_031_4677:
    ldh a, [$FF6E]                                ; $4677: $F0 $6E
    rst RST_38                                    ; $4679: $FF

jr_031_467A:
    dec c                                         ; $467A: $0D
    inc bc                                        ; $467B: $03
    inc bc                                        ; $467C: $03

jr_031_467D:
    inc bc                                        ; $467D: $03
    inc bc                                        ; $467E: $03
    inc bc                                        ; $467F: $03
    inc bc                                        ; $4680: $03
    ld bc, $75BF                                  ; $4681: $01 $BF $75
    jr c, jr_031_467D                             ; $4684: $38 $F7

    inc bc                                        ; $4686: $03
    inc bc                                        ; $4687: $03
    inc bc                                        ; $4688: $03
    inc bc                                        ; $4689: $03
    inc bc                                        ; $468A: $03
    rst RST_38                                    ; $468B: $FF
    inc bc                                        ; $468C: $03
    add a                                         ; $468D: $87
    inc de                                        ; $468E: $13
    inc bc                                        ; $468F: $03
    inc bc                                        ; $4690: $03
    inc bc                                        ; $4691: $03
    inc bc                                        ; $4692: $03
    inc bc                                        ; $4693: $03
    ldh a, [$FF03]                                ; $4694: $F0 $03
    inc bc                                        ; $4696: $03
    inc bc                                        ; $4697: $03
    inc bc                                        ; $4698: $03
    ld b, e                                       ; $4699: $43
    ld b, b                                       ; $469A: $40
    inc h                                         ; $469B: $24
    nop                                           ; $469C: $00
    rst RST_38                                    ; $469D: $FF
    add hl, bc                                    ; $469E: $09
    add hl, de                                    ; $469F: $19
    and $19                                       ; $46A0: $E6 $19
    inc a                                         ; $46A2: $3C
    jp $F30F                                      ; $46A3: $C3 $0F $F3


    inc c                                         ; $46A6: $0C
    rst RST_08                                    ; $46A7: $CF
    jr nc, jr_031_4715                            ; $46A8: $30 $6B

    add hl, bc                                    ; $46AA: $09
    dec sp                                        ; $46AB: $3B
    ld l, c                                       ; $46AC: $69
    add hl, bc                                    ; $46AD: $09
    rst RST_28                                    ; $46AE: $EF
    db $10                                        ; $46AF: $10
    sbc a                                         ; $46B0: $9F
    ld h, b                                       ; $46B1: $60
    ld a, l                                       ; $46B2: $7D
    ld a, e                                       ; $46B3: $7B
    add h                                         ; $46B4: $84
    add hl, de                                    ; $46B5: $19
    add a                                         ; $46B6: $87
    ld l, c                                       ; $46B7: $69
    rst RST_18                                    ; $46B8: $DF
    jr nz, jr_031_467A                            ; $46B9: $20 $BF

    ld b, b                                       ; $46BB: $40
    ld a, l                                       ; $46BC: $7D
    ld c, c                                       ; $46BD: $49
    add hl, de                                    ; $46BE: $19

jr_031_46BF:
    ret                                           ; $46BF: $C9


    ld e, c                                       ; $46C0: $59
    add hl, bc                                    ; $46C1: $09
    ld a, a                                       ; $46C2: $7F
    add b                                         ; $46C3: $80
    ld a, l                                       ; $46C4: $7D
    ld a, l                                       ; $46C5: $7D
    add d                                         ; $46C6: $82
    add hl, de                                    ; $46C7: $19
    ld [hl-], a                                   ; $46C8: $32
    ld a, [hl]                                    ; $46C9: $7E
    add c                                         ; $46CA: $81
    add hl, bc                                    ; $46CB: $09
    ld a, a                                       ; $46CC: $7F
    rst RST_28                                    ; $46CD: $EF
    db $10                                        ; $46CE: $10
    add hl, de                                    ; $46CF: $19
    ei                                            ; $46D0: $FB
    add hl, de                                    ; $46D1: $19
    inc b                                         ; $46D2: $04
    db $FD                                        ; $46D3: $FD
    ld [bc], a                                    ; $46D4: $02
    adc c                                         ; $46D5: $89
    ld a, l                                       ; $46D6: $7D
    ld a, c                                       ; $46D7: $79
    add [hl]                                      ; $46D8: $86
    add hl, de                                    ; $46D9: $19
    inc h                                         ; $46DA: $24
    rst RST_20                                    ; $46DB: $E7
    jr jr_031_4667                                ; $46DC: $18 $89

    db $FC                                        ; $46DE: $FC
    inc bc                                        ; $46DF: $03
    ld a, l                                       ; $46E0: $7D
    rst RST_08                                    ; $46E1: $CF
    jr nc, jr_031_4677                            ; $46E2: $30 $93

    add hl, de                                    ; $46E4: $19
    sbc [hl]                                      ; $46E5: $9E
    ld h, c                                       ; $46E6: $61
    adc c                                         ; $46E7: $89
    ld sp, hl                                     ; $46E8: $F9
    ld b, $7D                                     ; $46E9: $06 $7D
    add hl, bc                                    ; $46EB: $09
    ld [bc], a                                    ; $46EC: $02
    rst RST_00                                    ; $46ED: $C7
    jr c, jr_031_472C                             ; $46EE: $38 $3C

    jp Jump_000_0CF3                              ; $46F0: $C3 $F3 $0C


    add hl, sp                                    ; $46F3: $39
    ld a, $64                                     ; $46F4: $3E $64
    pop bc                                        ; $46F6: $C1
    ld a, l                                       ; $46F7: $7D
    ld l, e                                       ; $46F8: $6B
    rst RST_28                                    ; $46F9: $EF
    db $10                                        ; $46FA: $10
    add hl, sp                                    ; $46FB: $39
    ld a, a                                       ; $46FC: $7F
    add b                                         ; $46FD: $80
    sub e                                         ; $46FE: $93
    ld a, l                                       ; $46FF: $7D
    rst RST_30                                    ; $4700: $F7
    ld [$DF69], sp                                ; $4701: $08 $69 $DF
    jr nz, @+$81                                  ; $4704: $20 $7F

    add hl, bc                                    ; $4706: $09
    sbc h                                         ; $4707: $9C
    ld e, c                                       ; $4708: $59
    cp a                                          ; $4709: $BF
    ld b, b                                       ; $470A: $40
    add hl, bc                                    ; $470B: $09
    ld a, a                                       ; $470C: $7F
    add hl, bc                                    ; $470D: $09
    ld a, l                                       ; $470E: $7D
    add d                                         ; $470F: $82
    jr c, jr_031_4790                             ; $4710: $38 $7E

    add c                                         ; $4712: $81
    add hl, bc                                    ; $4713: $09
    ld a, a                                       ; $4714: $7F

jr_031_4715:
    add hl, bc                                    ; $4715: $09
    rst RST_30                                    ; $4716: $F7
    ld [$1FFB], sp                                ; $4717: $08 $FB $1F
    inc b                                         ; $471A: $04
    db $FD                                        ; $471B: $FD
    ld [bc], a                                    ; $471C: $02
    ld a, a                                       ; $471D: $7F
    rst RST_38                                    ; $471E: $FF
    ld a, a                                       ; $471F: $7F
    rst RST_38                                    ; $4720: $FF
    ld a, a                                       ; $4721: $7F
    ld [bc], a                                    ; $4722: $02
    add hl, de                                    ; $4723: $19
    and $C7                                       ; $4724: $E6 $C7
    jr c, jr_031_4764                             ; $4726: $38 $3C

    jp $CF39                                      ; $4728: $C3 $39 $CF


    inc e                                         ; $472B: $1C

jr_031_472C:
    jr nc, jr_031_476C                            ; $472C: $30 $3E

    pop bc                                        ; $472E: $C1
    ld a, e                                       ; $472F: $7B
    add hl, sp                                    ; $4730: $39
    ld l, c                                       ; $4731: $69
    di                                            ; $4732: $F3
    inc c                                         ; $4733: $0C
    sub b                                         ; $4734: $90
    add hl, sp                                    ; $4735: $39
    sbc a                                         ; $4736: $9F
    ld h, b                                       ; $4737: $60
    db $FD                                        ; $4738: $FD
    ld a, e                                       ; $4739: $7B
    add h                                         ; $473A: $84
    rst RST_30                                    ; $473B: $F7
    ld [$EF24], sp                                ; $473C: $08 $24 $EF
    db $10                                        ; $473F: $10

jr_031_4740:
    add hl, sp                                    ; $4740: $39
    cp a                                          ; $4741: $BF
    ld b, b                                       ; $4742: $40
    ld a, l                                       ; $4743: $7D
    rst RST_18                                    ; $4744: $DF
    jr nz, jr_031_4740                            ; $4745: $20 $F9

    add hl, bc                                    ; $4747: $09
    ld e, c                                       ; $4748: $59
    add hl, sp                                    ; $4749: $39
    ld l, c                                       ; $474A: $69
    ld a, l                                       ; $474B: $7D
    ld a, l                                       ; $474C: $7D
    add d                                         ; $474D: $82
    add hl, bc                                    ; $474E: $09
    jr nc, jr_031_47CF                            ; $474F: $30 $7E

    add c                                         ; $4751: $81
    ld a, a                                       ; $4752: $7F
    add hl, bc                                    ; $4753: $09
    rst RST_28                                    ; $4754: $EF

jr_031_4755:
    db $10                                        ; $4755: $10
    rst RST_30                                    ; $4756: $F7
    ld [$FB38], sp                                ; $4757: $08 $38 $FB
    inc b                                         ; $475A: $04
    add hl, sp                                    ; $475B: $39
    sbc c                                         ; $475C: $99
    ld a, l                                       ; $475D: $7D
    ld a, c                                       ; $475E: $79
    add [hl]                                      ; $475F: $86
    sbc [hl]                                      ; $4760: $9E
    ld [de], a                                    ; $4761: $12
    ld h, c                                       ; $4762: $61
    rst RST_20                                    ; $4763: $E7

jr_031_4764:
    jr jr_031_479F                                ; $4764: $18 $39

    db $FC                                        ; $4766: $FC
    inc bc                                        ; $4767: $03
    ld a, l                                       ; $4768: $7D
    rst RST_08                                    ; $4769: $CF
    jr jr_031_479C                                ; $476A: $18 $30

jr_031_476C:
    ld [hl], c                                    ; $476C: $71
    adc [hl]                                      ; $476D: $8E
    adc c                                         ; $476E: $89
    add hl, sp                                    ; $476F: $39
    ld sp, hl                                     ; $4770: $F9
    ld b, $7E                                     ; $4771: $06 $7E
    ld b, d                                       ; $4773: $42
    add c                                         ; $4774: $81
    ld a, e                                       ; $4775: $7B
    add hl, de                                    ; $4776: $19
    and $C7                                       ; $4777: $E6 $C7
    jr c, jr_031_47A4                             ; $4779: $38 $29

    di                                            ; $477B: $F3
    ld c, c                                       ; $477C: $49
    inc c                                         ; $477D: $0C
    cp c                                          ; $477E: $B9
    ld a, $C1                                     ; $477F: $3E $C1
    db $FD                                        ; $4781: $FD
    inc a                                         ; $4782: $3C
    jp $0229                                      ; $4783: $C3 $29 $02


    rst RST_28                                    ; $4786: $EF
    db $10                                        ; $4787: $10
    sbc a                                         ; $4788: $9F
    ld h, b                                       ; $4789: $60
    ld a, a                                       ; $478A: $7F
    add b                                         ; $478B: $80
    ld a, e                                       ; $478C: $7B
    ld a, e                                       ; $478D: $7B
    db $10                                        ; $478E: $10
    add h                                         ; $478F: $84

jr_031_4790:
    rst RST_30                                    ; $4790: $F7
    ld [$DF29], sp                                ; $4791: $08 $29 $DF
    jr nz, jr_031_4755                            ; $4794: $20 $BF

    ld b, b                                       ; $4796: $40
    db $FC                                        ; $4797: $FC
    ld a, l                                       ; $4798: $7D
    ld c, c                                       ; $4799: $49
    add hl, bc                                    ; $479A: $09
    add hl, hl                                    ; $479B: $29

jr_031_479C:
    ld l, e                                       ; $479C: $6B
    ld a, l                                       ; $479D: $7D
    ld a, l                                       ; $479E: $7D

jr_031_479F:
    add d                                         ; $479F: $82
    ret z                                         ; $47A0: $C8

    add hl, bc                                    ; $47A1: $09
    add hl, hl                                    ; $47A2: $29
    ld a, [hl]                                    ; $47A3: $7E

jr_031_47A4:
    add c                                         ; $47A4: $81
    ld a, a                                       ; $47A5: $7F
    rst RST_28                                    ; $47A6: $EF
    db $10                                        ; $47A7: $10
    rst RST_30                                    ; $47A8: $F7
    ld c, h                                       ; $47A9: $4C
    ld [$FD29], sp                                ; $47AA: $08 $29 $FD
    ld [bc], a                                    ; $47AD: $02
    adc e                                         ; $47AE: $8B
    ld a, e                                       ; $47AF: $7B
    ld a, c                                       ; $47B0: $79
    add [hl]                                      ; $47B1: $86
    ld hl, $619E                                  ; $47B2: $21 $9E $61
    add hl, hl                                    ; $47B5: $29
    ei                                            ; $47B6: $FB
    inc b                                         ; $47B7: $04
    db $FC                                        ; $47B8: $FC
    inc bc                                        ; $47B9: $03
    ld a, l                                       ; $47BA: $7D
    ld [$30CF], sp                                ; $47BB: $08 $CF $30
    ld [hl], c                                    ; $47BE: $71
    adc [hl]                                      ; $47BF: $8E
    add hl, hl                                    ; $47C0: $29
    rst RST_20                                    ; $47C1: $E7
    jr @-$05                                      ; $47C2: $18 $F9

    rlca                                          ; $47C4: $07
    ld b, $7E                                     ; $47C5: $06 $7E
    add c                                         ; $47C7: $81
    db $DD                                        ; $47C8: $DD
    ld [hl+], a                                   ; $47C9: $22
    dec bc                                        ; $47CA: $0B
    ld l, c                                       ; $47CB: $69
    ccf                                           ; $47CC: $3F
    push af                                       ; $47CD: $F5
    ldh a, [c]                                    ; $47CE: $F2

jr_031_47CF:
    rrca                                          ; $47CF: $0F
    inc c                                         ; $47D0: $0C
    rlca                                          ; $47D1: $07
    ld a, a                                       ; $47D2: $7F
    nop                                           ; $47D3: $00
    inc bc                                        ; $47D4: $03
    inc b                                         ; $47D5: $04
    xor e                                         ; $47D6: $AB
    ld a, a                                       ; $47D7: $7F
    ccf                                           ; $47D8: $3F
    nop                                           ; $47D9: $00
    inc sp                                        ; $47DA: $33
    ld [bc], a                                    ; $47DB: $02
    ld a, e                                       ; $47DC: $7B
    nop                                           ; $47DD: $00
    ld a, a                                       ; $47DE: $7F
    sub $07                                       ; $47DF: $D6 $07
    rlca                                          ; $47E1: $07
    ld a, a                                       ; $47E2: $7F
    nop                                           ; $47E3: $00
    inc bc                                        ; $47E4: $03
    inc b                                         ; $47E5: $04
    ld a, a                                       ; $47E6: $7F
    ccf                                           ; $47E7: $3F
    xor a                                         ; $47E8: $AF
    nop                                           ; $47E9: $00
    inc sp                                        ; $47EA: $33
    ld [bc], a                                    ; $47EB: $02
    ld h, e                                       ; $47EC: $63
    nop                                           ; $47ED: $00
    ld a, a                                       ; $47EE: $7F
    ld c, c                                       ; $47EF: $49
    dec b                                         ; $47F0: $05
    ld [$077F], a                                 ; $47F1: $EA $7F $07
    rlca                                          ; $47F4: $07
    jr jr_031_47F9                                ; $47F5: $18 $02

    jr nc, jr_031_47FB                            ; $47F7: $30 $02

jr_031_47F9:
    ld b, $AA                                     ; $47F9: $06 $AA

jr_031_47FB:
    nop                                           ; $47FB: $00
    inc c                                         ; $47FC: $0C
    nop                                           ; $47FD: $00
    ld e, $00                                     ; $47FE: $1E $00
    inc sp                                        ; $4800: $33
    nop                                           ; $4801: $00
    ld h, e                                       ; $4802: $63
    push de                                       ; $4803: $D5
    nop                                           ; $4804: $00
    cp l                                          ; $4805: $BD
    rrca                                          ; $4806: $0F
    nop                                           ; $4807: $00
    rlca                                          ; $4808: $07
    nop                                           ; $4809: $00
    inc bc                                        ; $480A: $03
    nop                                           ; $480B: $00
    or a                                          ; $480C: $B7
    xor c                                         ; $480D: $A9
    ld a, h                                       ; $480E: $7C
    nop                                           ; $480F: $00
    ld a, l                                       ; $4810: $7D
    ld a, a                                       ; $4811: $7F
    nop                                           ; $4812: $00
    dec a                                         ; $4813: $3D
    rlca                                          ; $4814: $07
    xor d                                         ; $4815: $AA
    ret                                           ; $4816: $C9


    inc c                                         ; $4817: $0C
    nop                                           ; $4818: $00
    ld e, $00                                     ; $4819: $1E $00
    inc sp                                        ; $481B: $33
    nop                                           ; $481C: $00
    ld h, e                                       ; $481D: $63
    db $DB                                        ; $481E: $DB
    nop                                           ; $481F: $00
    ld a, l                                       ; $4820: $7D
    inc bc                                        ; $4821: $03
    inc b                                         ; $4822: $04
    xor c                                         ; $4823: $A9
    ld a, h                                       ; $4824: $7C
    nop                                           ; $4825: $00
    ld a, l                                       ; $4826: $7D
    db $DB                                        ; $4827: $DB
    cp c                                          ; $4828: $B9
    ld a, l                                       ; $4829: $7D
    inc a                                         ; $482A: $3C
    nop                                           ; $482B: $00
    ld a, l                                       ; $482C: $7D
    ld a, a                                       ; $482D: $7F
    nop                                           ; $482E: $00
    dec a                                         ; $482F: $3D
    xor [hl]                                      ; $4830: $AE
    rlca                                          ; $4831: $07
    ld h, b                                       ; $4832: $60
    nop                                           ; $4833: $00
    ld h, e                                       ; $4834: $63
    inc b                                         ; $4835: $04
    cp a                                          ; $4836: $BF
    rlca                                          ; $4837: $07
    inc bc                                        ; $4838: $03
    xor l                                         ; $4839: $AD
    nop                                           ; $483A: $00
    dec b                                         ; $483B: $05
    nop                                           ; $483C: $00
    add hl, bc                                    ; $483D: $09
    ld [bc], a                                    ; $483E: $02
    ld a, a                                       ; $483F: $7F
    add b                                         ; $4840: $80
    nop                                           ; $4841: $00
    ld e, l                                       ; $4842: $5D
    ld b, b                                       ; $4843: $40
    nop                                           ; $4844: $00
    jr nz, jr_031_4849                            ; $4845: $20 $02

    sbc e                                         ; $4847: $9B
    inc bc                                        ; $4848: $03

jr_031_4849:
    ld b, $00                                     ; $4849: $06 $00
    db $FD                                        ; $484B: $FD
    cp l                                          ; $484C: $BD
    sbc e                                         ; $484D: $9B
    inc bc                                        ; $484E: $03
    jp hl                                         ; $484F: $E9


    ld a, l                                       ; $4850: $7D
    rlca                                          ; $4851: $07
    ld b, h                                       ; $4852: $44
    ld [bc], a                                    ; $4853: $02
    ld a, d                                       ; $4854: $7A
    cp $00                                        ; $4855: $FE $00
    add hl, de                                    ; $4857: $19
    ld a, a                                       ; $4858: $7F
    ld bc, $00F8                                  ; $4859: $01 $F8 $00
    inc b                                         ; $485C: $04
    or l                                          ; $485D: $B5
    nop                                           ; $485E: $00
    ld [bc], a                                    ; $485F: $02
    nop                                           ; $4860: $00
    ld l, a                                       ; $4861: $6F
    ld c, b                                       ; $4862: $48
    nop                                           ; $4863: $00
    ld a, b                                       ; $4864: $78
    nop                                           ; $4865: $00
    ld e, d                                       ; $4866: $5A
    ld l, h                                       ; $4867: $6C
    nop                                           ; $4868: $00
    xor d                                         ; $4869: $AA
    nop                                           ; $486A: $00
    ld a, a                                       ; $486B: $7F
    add b                                         ; $486C: $80
    nop                                           ; $486D: $00
    add h                                         ; $486E: $84
    cp d                                          ; $486F: $BA
    nop                                           ; $4870: $00
    add d                                         ; $4871: $82
    ld [bc], a                                    ; $4872: $02
    ld a, a                                       ; $4873: $7F
    ld bc, $007F                                  ; $4874: $01 $7F $00
    inc bc                                        ; $4877: $03
    rst RST_30                                    ; $4878: $F7
    ld [bc], a                                    ; $4879: $02
    ld l, a                                       ; $487A: $6F
    rlca                                          ; $487B: $07
    rlca                                          ; $487C: $07
    ld b, $00                                     ; $487D: $06 $00
    ld sp, hl                                     ; $487F: $F9
    add hl, de                                    ; $4880: $19
    ld [$7F01], a                                 ; $4881: $EA $01 $7F
    rlca                                          ; $4884: $07
    ld b, h                                       ; $4885: $44
    nop                                           ; $4886: $00
    ld b, b                                       ; $4887: $40
    inc b                                         ; $4888: $04
    ld a, $D5                                     ; $4889: $3E $D5
    nop                                           ; $488B: $00
    ld a, l                                       ; $488C: $7D
    ld [bc], a                                    ; $488D: $02
    inc b                                         ; $488E: $04
    inc b                                         ; $488F: $04
    nop                                           ; $4890: $00
    jr jr_031_4893                                ; $4891: $18 $00

jr_031_4893:
    xor e                                         ; $4893: $AB
    ld a, l                                       ; $4894: $7D
    xor d                                         ; $4895: $AA
    ld [bc], a                                    ; $4896: $02
    sub d                                         ; $4897: $92
    ld [bc], a                                    ; $4898: $02
    ld h, d                                       ; $4899: $62
    nop                                           ; $489A: $00
    ld a, l                                       ; $489B: $7D
    ld l, e                                       ; $489C: $6B
    add d                                         ; $489D: $82
    ld [bc], a                                    ; $489E: $02
    ld l, c                                       ; $489F: $69
    and d                                         ; $48A0: $A2
    nop                                           ; $48A1: $00
    ld b, b                                       ; $48A2: $40
    nop                                           ; $48A3: $00
    ld a, l                                       ; $48A4: $7D
    ld e, [hl]                                    ; $48A5: $5E
    inc bc                                        ; $48A6: $03
    ld b, $7F                                     ; $48A7: $06 $7F
    nop                                           ; $48A9: $00
    ld a, l                                       ; $48AA: $7D
    ccf                                           ; $48AB: $3F
    rlca                                          ; $48AC: $07
    ld b, $AF                                     ; $48AD: $06 $AF
    inc b                                         ; $48AF: $04
    inc c                                         ; $48B0: $0C
    nop                                           ; $48B1: $00
    jr c, jr_031_48B4                             ; $48B2: $38 $00

jr_031_48B4:
    rst RST_38                                    ; $48B4: $FF
    rst RST_08                                    ; $48B5: $CF
    rlca                                          ; $48B6: $07
    xor l                                         ; $48B7: $AD
    cp a                                          ; $48B8: $BF
    inc bc                                        ; $48B9: $03
    nop                                           ; $48BA: $00
    dec de                                        ; $48BB: $1B
    ld [bc], a                                    ; $48BC: $02
    ld a, a                                       ; $48BD: $7F
    inc l                                         ; $48BE: $2C
    ld b, $B5                                     ; $48BF: $06 $B5
    ld a, a                                       ; $48C1: $7F
    ld a, $00                                     ; $48C2: $3E $00
    add hl, de                                    ; $48C4: $19
    ld a, a                                       ; $48C5: $7F
    nop                                           ; $48C6: $00
    inc c                                         ; $48C7: $0C
    nop                                           ; $48C8: $00
    xor e                                         ; $48C9: $AB
    ld a, a                                       ; $48CA: $7F
    ld [hl], b                                    ; $48CB: $70
    nop                                           ; $48CC: $00
    inc e                                         ; $48CD: $1C
    nop                                           ; $48CE: $00
    rlca                                          ; $48CF: $07
    nop                                           ; $48D0: $00
    add hl, hl                                    ; $48D1: $29
    push de                                       ; $48D2: $D5
    ld a, a                                       ; $48D3: $7F
    reti                                          ; $48D4: $D9


    inc bc                                        ; $48D5: $03
    inc b                                         ; $48D6: $04
    ld a, [de]                                    ; $48D7: $1A
    nop                                           ; $48D8: $00
    jr jr_031_48DF                                ; $48D9: $18 $04

    xor e                                         ; $48DB: $AB
    rst RST_08                                    ; $48DC: $CF
    inc l                                         ; $48DD: $2C
    inc b                                         ; $48DE: $04

jr_031_48DF:
    cpl                                           ; $48DF: $2F
    nop                                           ; $48E0: $00
    ld c, [hl]                                    ; $48E1: $4E
    nop                                           ; $48E2: $00
    ld a, l                                       ; $48E3: $7D
    ld e, d                                       ; $48E4: $5A
    inc c                                         ; $48E5: $0C
    ld b, $38                                     ; $48E6: $06 $38
    nop                                           ; $48E8: $00
    ld a, l                                       ; $48E9: $7D
    inc e                                         ; $48EA: $1C
    nop                                           ; $48EB: $00
    rlca                                          ; $48EC: $07
    cp e                                          ; $48ED: $BB
    nop                                           ; $48EE: $00
    ld [hl], b                                    ; $48EF: $70
    nop                                           ; $48F0: $00
    dec hl                                        ; $48F1: $2B
    ld a, l                                       ; $48F2: $7D
    ld b, $00                                     ; $48F3: $06 $00
    reti                                          ; $48F5: $D9


    ld d, [hl]                                    ; $48F6: $56
    ld e, $00                                     ; $48F7: $1E $00
    inc sp                                        ; $48F9: $33
    nop                                           ; $48FA: $00
    ld h, e                                       ; $48FB: $63
    nop                                           ; $48FC: $00
    ld a, l                                       ; $48FD: $7D
    ld e, a                                       ; $48FE: $5F
    ret nz                                        ; $48FF: $C0

    ld d, [hl]                                    ; $4900: $56
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    jr nz, jr_031_4907                            ; $4903: $20 $02

    ld b, b                                       ; $4905: $40
    add hl, bc                                    ; $4906: $09

jr_031_4907:
    nop                                           ; $4907: $00
    ld bc, $01DB                                  ; $4908: $01 $DB $01
    nop                                           ; $490B: $00
    inc bc                                        ; $490C: $03
    ld bc, $0700                                  ; $490D: $01 $00 $07
    ld bc, $5000                                  ; $4910: $01 $00 $50
    rrca                                          ; $4913: $0F
    nop                                           ; $4914: $00
    inc c                                         ; $4915: $0C
    nop                                           ; $4916: $00
    jr jr_031_4934                                ; $4917: $18 $1B

    inc de                                        ; $4919: $13
    inc d                                         ; $491A: $14
    ld a, [bc]                                    ; $491B: $0A
    inc sp                                        ; $491C: $33
    inc [hl]                                      ; $491D: $34
    daa                                           ; $491E: $27
    jr z, jr_031_4954                             ; $491F: $28 $33

    ld a, a                                       ; $4921: $7F
    nop                                           ; $4922: $00
    rst RST_38                                    ; $4923: $FF
    and c                                         ; $4924: $A1
    nop                                           ; $4925: $00
    rst RST_20                                    ; $4926: $E7
    nop                                           ; $4927: $00
    db $D3                                        ; $4928: $D3
    jp $A098                                      ; $4929: $C3 $98 $A0


    ld h, $2B                                     ; $492C: $26 $2B
    ld hl, $5438                                  ; $492E: $21 $38 $54
    inc a                                         ; $4931: $3C
    ld [bc], a                                    ; $4932: $02
    ld a, h                                       ; $4933: $7C

jr_031_4934:
    ld [hl+], a                                   ; $4934: $22
    inc bc                                        ; $4935: $03
    rst RST_08                                    ; $4936: $CF
    ld [de], a                                    ; $4937: $12
    ld h, a                                       ; $4938: $67
    add b                                         ; $4939: $80
    ldh [rTMA], a                                 ; $493A: $E0 $06
    inc bc                                        ; $493C: $03
    inc bc                                        ; $493D: $03
    ld bc, $3BED                                  ; $493E: $01 $ED $3B
    ld bc, $C001                                  ; $4941: $01 $01 $C0
    nop                                           ; $4944: $00
    db $10                                        ; $4945: $10
    ld a, $50                                     ; $4946: $3E $50
    xor d                                         ; $4948: $AA
    ld h, $1F                                     ; $4949: $26 $1F
    ld [$02EF], sp                                ; $494B: $08 $EF $02
    ld [hl], a                                    ; $494E: $77
    ld [bc], a                                    ; $494F: $02
    scf                                           ; $4950: $37
    or a                                          ; $4951: $B7
    ld [bc], a                                    ; $4952: $02
    ld a, [hl-]                                   ; $4953: $3A

jr_031_4954:
    inc bc                                        ; $4954: $03
    ld [bc], a                                    ; $4955: $02
    ld [$0135], sp                                ; $4956: $08 $35 $01
    ld bc, $00BB                                  ; $4959: $01 $BB $00
    cp $01                                        ; $495C: $FE $01
    ld bc, $7E00                                  ; $495E: $01 $00 $7E

jr_031_4961:
    nop                                           ; $4961: $00
    inc a                                         ; $4962: $3C
    and b                                         ; $4963: $A0
    nop                                           ; $4964: $00
    ld e, $00                                     ; $4965: $1E $00
    adc [hl]                                      ; $4967: $8E
    ld c, $86                                     ; $4968: $0E $86
    ld b, $02                                     ; $496A: $06 $02
    rst RST_38                                    ; $496C: $FF
    nop                                           ; $496D: $00
    daa                                           ; $496E: $27
    ld bc, $0F01                                  ; $496F: $01 $01 $0F
    ld bc, $0018                                  ; $4972: $01 $18 $00
    dec bc                                        ; $4975: $0B
    ld h, a                                       ; $4976: $67
    ld l, b                                       ; $4977: $68
    ld c, a                                       ; $4978: $4F
    ld d, b                                       ; $4979: $50
    call c, Call_031_6F10                         ; $497A: $DC $10 $6F
    ld b, $EF                                     ; $497D: $06 $EF
    ld [bc], a                                    ; $497F: $02
    db $EC                                        ; $4980: $EC
    ld [bc], a                                    ; $4981: $02
    ld h, b                                       ; $4982: $60
    or e                                          ; $4983: $B3
    db $DB                                        ; $4984: $DB
    inc bc                                        ; $4985: $03
    ld [bc], a                                    ; $4986: $02
    ld h, c                                       ; $4987: $61
    ld b, a                                       ; $4988: $47
    cp a                                          ; $4989: $BF
    cp h                                          ; $498A: $BC
    inc bc                                        ; $498B: $03
    ld l, h                                       ; $498C: $6C
    ld bc, $032E                                  ; $498D: $01 $2E $03
    cp $4B                                        ; $4990: $FE $4B
    jp Jump_000_0303                              ; $4992: $C3 $03 $03


    inc bc                                        ; $4995: $03
    inc bc                                        ; $4996: $03
    inc bc                                        ; $4997: $03
    ld e, b                                       ; $4998: $58
    push af                                       ; $4999: $F5
    dec e                                         ; $499A: $1D
    jr nc, jr_031_4961                            ; $499B: $30 $C4

    ld [bc], a                                    ; $499D: $02
    ldh a, [$FF08]                                ; $499E: $F0 $08
    ld hl, sp+$03                                 ; $49A0: $F8 $03
    rst RST_30                                    ; $49A2: $F7
    ld [bc], a                                    ; $49A3: $02
    ld h, h                                       ; $49A4: $64
    rra                                           ; $49A5: $1F
    ld [bc], a                                    ; $49A6: $02
    pop hl                                        ; $49A7: $E1
    rra                                           ; $49A8: $1F
    ld h, a                                       ; $49A9: $67
    nop                                           ; $49AA: $00
    ld e, e                                       ; $49AB: $5B
    jr c, jr_031_49AE                             ; $49AC: $38 $00

jr_031_49AE:
    inc e                                         ; $49AE: $1C
    nop                                           ; $49AF: $00
    rrca                                          ; $49B0: $0F
    jr nz, jr_031_49B5                            ; $49B1: $20 $02

    ld h, h                                       ; $49B3: $64
    rst RST_28                                    ; $49B4: $EF

jr_031_49B5:
    ld c, $36                                     ; $49B5: $0E $36
    add $81                                       ; $49B7: $C6 $81
    add b                                         ; $49B9: $80
    ld h, [hl]                                    ; $49BA: $66
    ld [bc], a                                    ; $49BB: $02
    xor b                                         ; $49BC: $A8
    rra                                           ; $49BD: $1F
    ld a, b                                       ; $49BE: $78
    inc b                                         ; $49BF: $04
    jr nc, jr_031_49E1                            ; $49C0: $30 $1F

    ld bc, $021A                                  ; $49C2: $01 $1A $02
    jr nz, @+$81                                  ; $49C5: $20 $7F

    ret nz                                        ; $49C7: $C0

    dec bc                                        ; $49C8: $0B
    jp $01E4                                      ; $49C9: $C3 $E4 $01


    ld bc, $9C00                                  ; $49CC: $01 $00 $9C
    push de                                       ; $49CF: $D5
    nop                                           ; $49D0: $00
    ld c, e                                       ; $49D1: $4B
    ld a, [hl-]                                   ; $49D2: $3A
    jr nz, @-$44                                  ; $49D3: $20 $BA

    ld [bc], a                                    ; $49D5: $02
    inc d                                         ; $49D6: $14
    ld [hl], b                                    ; $49D7: $70
    cp a                                          ; $49D8: $BF
    inc bc                                        ; $49D9: $03
    ld [$022A], sp                                ; $49DA: $08 $2A $02
    ld [hl-], a                                   ; $49DD: $32
    ld [$3903], sp                                ; $49DE: $08 $03 $39

jr_031_49E1:
    rst RST_38                                    ; $49E1: $FF
    ld bc, $7301                                  ; $49E2: $01 $01 $73
    ld [hl], e                                    ; $49E5: $73
    add hl, bc                                    ; $49E6: $09
    nop                                           ; $49E7: $00
    ld l, [hl]                                    ; $49E8: $6E
    ld bc, $00F6                                  ; $49E9: $01 $F6 $00
    and $01                                       ; $49EC: $E6 $01
    nop                                           ; $49EE: $00
    rlca                                          ; $49EF: $07
    ld bc, $0F00                                  ; $49F0: $01 $00 $0F
    or d                                          ; $49F3: $B2
    nop                                           ; $49F4: $00
    inc c                                         ; $49F5: $0C
    nop                                           ; $49F6: $00
    call z, Call_000_131B                         ; $49F7: $CC $1B $13
    ld d, b                                       ; $49FA: $50
    inc sp                                        ; $49FB: $33
    dec d                                         ; $49FC: $15
    inc [hl]                                      ; $49FD: $34
    daa                                           ; $49FE: $27
    jr z, jr_031_4A34                             ; $49FF: $28 $33

    ld a, a                                       ; $4A01: $7F
    nop                                           ; $4A02: $00
    rst RST_38                                    ; $4A03: $FF
    nop                                           ; $4A04: $00
    ld b, d                                       ; $4A05: $42
    rst RST_20                                    ; $4A06: $E7
    nop                                           ; $4A07: $00
    db $D3                                        ; $4A08: $D3
    jp $A098                                      ; $4A09: $C3 $98 $A0


    ld h, $21                                     ; $4A0C: $26 $21
    rst RST_18                                    ; $4A0E: $DF
    ld a, h                                       ; $4A0F: $7C
    ld d, h                                       ; $4A10: $54
    inc a                                         ; $4A11: $3C
    ld [bc], a                                    ; $4A12: $02
    ret nz                                        ; $4A13: $C0

    ld [hl+], a                                   ; $4A14: $22
    inc bc                                        ; $4A15: $03
    ld [de], a                                    ; $4A16: $12
    rst RST_38                                    ; $4A17: $FF
    ld h, a                                       ; $4A18: $67
    cp h                                          ; $4A19: $BC
    rst RST_38                                    ; $4A1A: $FF
    inc bc                                        ; $4A1B: $03
    inc bc                                        ; $4A1C: $03
    ld bc, $013B                                  ; $4A1D: $01 $3B $01
    db $ED                                        ; $4A20: $ED
    ld bc, $D79C                                  ; $4A21: $01 $9C $D7
    ld a, $50                                     ; $4A24: $3E $50
    ld h, $1F                                     ; $4A26: $26 $1F
    ld [$EF57], sp                                ; $4A28: $08 $57 $EF
    ld [bc], a                                    ; $4A2B: $02
    ld [hl], a                                    ; $4A2C: $77
    ld [bc], a                                    ; $4A2D: $02
    scf                                           ; $4A2E: $37
    ld [bc], a                                    ; $4A2F: $02
    jp nc, $FB03                                  ; $4A30: $D2 $03 $FB

    rst RST_00                                    ; $4A33: $C7

jr_031_4A34:
    dec [hl]                                      ; $4A34: $35
    ld bc, $0001                                  ; $4A35: $01 $01 $00
    cp $01                                        ; $4A38: $FE $01
    ld bc, $00BA                                  ; $4A3A: $01 $BA $00

jr_031_4A3D:
    ld a, [hl]                                    ; $4A3D: $7E
    nop                                           ; $4A3E: $00
    inc a                                         ; $4A3F: $3C
    nop                                           ; $4A40: $00
    ld e, $00                                     ; $4A41: $1E $00
    adc [hl]                                      ; $4A43: $8E
    rrca                                          ; $4A44: $0F
    ld c, $86                                     ; $4A45: $0E $86
    ld b, $02                                     ; $4A47: $06 $02
    nop                                           ; $4A49: $00
    daa                                           ; $4A4A: $27
    ld bc, $F001                                  ; $4A4B: $01 $01 $F0
    rrca                                          ; $4A4E: $0F
    ld bc, $0018                                  ; $4A4F: $01 $18 $00
    ld h, a                                       ; $4A52: $67
    ld l, b                                       ; $4A53: $68
    ld c, a                                       ; $4A54: $4F
    ld d, b                                       ; $4A55: $50
    cp [hl]                                       ; $4A56: $BE
    call c, Call_031_6F10                         ; $4A57: $DC $10 $6F
    ld b, $02                                     ; $4A5A: $06 $02
    db $EC                                        ; $4A5C: $EC
    ld [bc], a                                    ; $4A5D: $02
    ld h, b                                       ; $4A5E: $60
    or $B3                                        ; $4A5F: $F6 $B3
    db $DB                                        ; $4A61: $DB
    inc bc                                        ; $4A62: $03
    ld [bc], a                                    ; $4A63: $02
    ld b, a                                       ; $4A64: $47
    cp a                                          ; $4A65: $BF
    cp h                                          ; $4A66: $BC
    inc bc                                        ; $4A67: $03
    rra                                           ; $4A68: $1F
    ld l, h                                       ; $4A69: $6C

jr_031_4A6A:
    ld bc, $032E                                  ; $4A6A: $01 $2E $03
    ld c, e                                       ; $4A6D: $4B
    jp Jump_000_0303                              ; $4A6E: $C3 $03 $03


    rst RST_28                                    ; $4A71: $EF
    inc bc                                        ; $4A72: $03
    inc bc                                        ; $4A73: $03
    inc bc                                        ; $4A74: $03
    ld e, b                                       ; $4A75: $58
    dec e                                         ; $4A76: $1D
    jr nc, jr_031_4A3D                            ; $4A77: $30 $C4

    ld [bc], a                                    ; $4A79: $02
    ld e, a                                       ; $4A7A: $5F
    ldh a, [$FF08]                                ; $4A7B: $F0 $08
    ld hl, sp+$03                                 ; $4A7D: $F8 $03
    ld [bc], a                                    ; $4A7F: $02
    ld h, h                                       ; $4A80: $64
    rra                                           ; $4A81: $1F
    ld [bc], a                                    ; $4A82: $02
    ld [hl], l                                    ; $4A83: $75
    pop hl                                        ; $4A84: $E1
    rra                                           ; $4A85: $1F
    ld bc, $3869                                  ; $4A86: $01 $69 $38
    ld [bc], a                                    ; $4A89: $02
    inc e                                         ; $4A8A: $1C
    dec c                                         ; $4A8B: $0D
    ld a, l                                       ; $4A8C: $7D
    jr nz, @+$04                                  ; $4A8D: $20 $02

    ld h, h                                       ; $4A8F: $64
    ld c, $36                                     ; $4A90: $0E $36
    add $81                                       ; $4A92: $C6 $81
    add b                                         ; $4A94: $80
    db $E3                                        ; $4A95: $E3
    ld h, [hl]                                    ; $4A96: $66
    ld [bc], a                                    ; $4A97: $02
    xor b                                         ; $4A98: $A8
    ld a, b                                       ; $4A99: $78
    inc b                                         ; $4A9A: $04
    jr nc, jr_031_4ABC                            ; $4A9B: $30 $1F

    ld bc, $1ADF                                  ; $4A9D: $01 $DF $1A
    ld sp, $0BC0                                  ; $4AA0: $31 $C0 $0B
    jp $01E4                                      ; $4AA3: $C3 $E4 $01


    ld bc, $00BA                                  ; $4AA6: $01 $BA $00
    inc c                                         ; $4AA9: $0C
    sbc [hl]                                      ; $4AAA: $9E
    ld c, b                                       ; $4AAB: $48
    nop                                           ; $4AAC: $00
    ld a, [hl-]                                   ; $4AAD: $3A
    jr nz, jr_031_4A6A                            ; $4AAE: $20 $BA

    or a                                          ; $4AB0: $B7
    ld [bc], a                                    ; $4AB1: $02
    inc d                                         ; $4AB2: $14
    ld [hl], b                                    ; $4AB3: $70
    inc bc                                        ; $4AB4: $03
    ld [$022A], sp                                ; $4AB5: $08 $2A $02
    ld [hl-], a                                   ; $4AB8: $32
    ld a, [$0308]                                 ; $4AB9: $FA $08 $03

jr_031_4ABC:
    add hl, sp                                    ; $4ABC: $39
    ld bc, $FD00                                  ; $4ABD: $01 $00 $FD
    ret nc                                        ; $4AC0: $D0

    ei                                            ; $4AC1: $FB
    xor d                                         ; $4AC2: $AA
    ldh a, [$FFF6]                                ; $4AC3: $F0 $F6
    ld a, [hl-]                                   ; $4AC5: $3A
    db $EC                                        ; $4AC6: $EC
    ld [hl], $D9                                  ; $4AC7: $36 $D9

jr_031_4AC9:
    ld [hl-], a                                   ; $4AC9: $32
    or b                                          ; $4ACA: $B0
    ld b, b                                       ; $4ACB: $40
    ld [hl], b                                    ; $4ACC: $70
    and d                                         ; $4ACD: $A2
    ld h, e                                       ; $4ACE: $63
    ld b, e                                       ; $4ACF: $43
    rst RST_00                                    ; $4AD0: $C7
    add $CF                                       ; $4AD1: $C6 $CF
    add h                                         ; $4AD3: $84
    dec l                                         ; $4AD4: $2D
    sub [hl]                                      ; $4AD5: $96
    add hl, de                                    ; $4AD6: $19
    ld d, $1F                                     ; $4AD7: $16 $1F
    adc d                                         ; $4AD9: $8A
    inc bc                                        ; $4ADA: $03
    ccf                                           ; $4ADB: $3F
    inc bc                                        ; $4ADC: $03
    adc [hl]                                      ; $4ADD: $8E
    sbc [hl]                                      ; $4ADE: $9E
    inc a                                         ; $4ADF: $3C
    cp h                                          ; $4AE0: $BC
    sbc a                                         ; $4AE1: $9F
    adc h                                         ; $4AE2: $8C
    ld a, [bc]                                    ; $4AE3: $0A
    ld b, [hl]                                    ; $4AE4: $46
    ld a, a                                       ; $4AE5: $7F
    ld a, [$02D7]                                 ; $4AE6: $FA $D7 $02
    ld c, h                                       ; $4AE9: $4C
    jr nz, @-$4C                                  ; $4AEA: $20 $B2

    pop bc                                        ; $4AEC: $C1
    ld h, h                                       ; $4AED: $64
    cp $C7                                        ; $4AEE: $FE $C7
    or [hl]                                       ; $4AF0: $B6

jr_031_4AF1:
    ld b, $05                                     ; $4AF1: $06 $05
    inc [hl]                                      ; $4AF3: $34
    ld h, [hl]                                    ; $4AF4: $66
    ld e, h                                       ; $4AF5: $5C
    inc bc                                        ; $4AF6: $03
    jr jr_031_4B54                                ; $4AF7: $18 $5B

    ld l, a                                       ; $4AF9: $6F
    ld a, [hl+]                                   ; $4AFA: $2A

jr_031_4AFB:
    rrca                                          ; $4AFB: $0F
    ld [bc], a                                    ; $4AFC: $02
    ld [$04FF], sp                                ; $4AFD: $08 $FF $04
    ld [hl-], a                                   ; $4B00: $32
    xor a                                         ; $4B01: $AF
    nop                                           ; $4B02: $00
    di                                            ; $4B03: $F3
    ld a, d                                       ; $4B04: $7A
    ld hl, sp+$30                                 ; $4B05: $F8 $30
    inc l                                         ; $4B07: $2C
    ld b, e                                       ; $4B08: $43
    ld [bc], a                                    ; $4B09: $02
    xor c                                         ; $4B0A: $A9
    ld c, a                                       ; $4B0B: $4F
    rst RST_28                                    ; $4B0C: $EF
    ld c, b                                       ; $4B0D: $48
    ld [hl], a                                    ; $4B0E: $77
    add d                                         ; $4B0F: $82
    dec sp                                        ; $4B10: $3B
    cp b                                          ; $4B11: $B8
    ld [bc], a                                    ; $4B12: $02
    sbc a                                         ; $4B13: $9F
    inc e                                         ; $4B14: $1C
    ld a, l                                       ; $4B15: $7D
    db $FC                                        ; $4B16: $FC
    ld bc, $3400                                  ; $4B17: $01 $00 $34
    ld h, $00                                     ; $4B1A: $26 $00
    db $EB                                        ; $4B1C: $EB
    add hl, bc                                    ; $4B1D: $09
    or d                                          ; $4B1E: $B2
    nop                                           ; $4B1F: $00
    ld a, [$F10E]                                 ; $4B20: $FA $0E $F1
    ret nz                                        ; $4B23: $C0

    inc a                                         ; $4B24: $3C
    ldh a, [rSC]                                  ; $4B25: $F0 $02
    jr c, jr_031_4AC9                             ; $4B27: $38 $A0

    ld l, h                                       ; $4B29: $6C
    jr nz, jr_031_4AF1                            ; $4B2A: $20 $C5

    jr nc, jr_031_4AFB                            ; $4B2C: $30 $CD

    add l                                         ; $4B2E: $85
    ld [bc], a                                    ; $4B2F: $02
    call z, $9C32                                 ; $4B30: $CC $32 $9C
    ld h, d                                       ; $4B33: $62
    and b                                         ; $4B34: $A0
    ld b, d                                       ; $4B35: $42
    xor h                                         ; $4B36: $AC
    ld h, h                                       ; $4B37: $64
    add d                                         ; $4B38: $82
    ret c                                         ; $4B39: $D8

    adc h                                         ; $4B3A: $8C
    inc c                                         ; $4B3B: $0C
    jp nz, Jump_000_2202                          ; $4B3C: $C2 $02 $22

    add hl, bc                                    ; $4B3F: $09
    nop                                           ; $4B40: $00
    ld b, h                                       ; $4B41: $44
    sbc c                                         ; $4B42: $99
    inc b                                         ; $4B43: $04
    or e                                          ; $4B44: $B3
    adc b                                         ; $4B45: $88
    rst RST_18                                    ; $4B46: $DF
    ld e, [hl]                                    ; $4B47: $5E
    xor a                                         ; $4B48: $AF
    dec c                                         ; $4B49: $0D
    ld l, l                                       ; $4B4A: $6D
    rst RST_10                                    ; $4B4B: $D7
    dec [hl]                                      ; $4B4C: $35
    jp hl                                         ; $4B4D: $E9


    ld b, d                                       ; $4B4E: $42
    jr nz, jr_031_4B8F                            ; $4B4F: $20 $3E

    add b                                         ; $4B51: $80
    ld e, [hl]                                    ; $4B52: $5E
    ld b, b                                       ; $4B53: $40

jr_031_4B54:
    db $D3                                        ; $4B54: $D3
    cp a                                          ; $4B55: $BF
    ld [$C81E], sp                                ; $4B56: $08 $1E $C8
    adc a                                         ; $4B59: $8F
    xor $EB                                       ; $4B5A: $EE $EB
    ld [bc], a                                    ; $4B5C: $02
    ld bc, $6001                                  ; $4B5D: $01 $01 $60
    ld [bc], a                                    ; $4B60: $02
    ld c, $36                                     ; $4B61: $0E $36
    xor d                                         ; $4B63: $AA
    rst RST_38                                    ; $4B64: $FF
    jr nz, jr_031_4B69                            ; $4B65: $20 $02

    nop                                           ; $4B67: $00
    add h                                         ; $4B68: $84

jr_031_4B69:
    ld bc, $0001                                  ; $4B69: $01 $01 $00
    db $D3                                        ; $4B6C: $D3
    ld c, b                                       ; $4B6D: $48
    scf                                           ; $4B6E: $37
    nop                                           ; $4B6F: $00
    ret nc                                        ; $4B70: $D0

    db $10                                        ; $4B71: $10
    ld [bc], a                                    ; $4B72: $02
    inc d                                         ; $4B73: $14
    or b                                          ; $4B74: $B0
    ld [hl], $9B                                  ; $4B75: $36 $9B
    ret z                                         ; $4B77: $C8

    halt                                          ; $4B78: $76
    ld sp, hl                                     ; $4B79: $F9
    nop                                           ; $4B7A: $00
    rra                                           ; $4B7B: $1F
    ld a, b                                       ; $4B7C: $78
    cp d                                          ; $4B7D: $BA
    ld e, b                                       ; $4B7E: $58
    rst RST_38                                    ; $4B7F: $FF
    sbc [hl]                                      ; $4B80: $9E
    ld [bc], a                                    ; $4B81: $02
    ld bc, $1400                                  ; $4B82: $01 $00 $14
    call nz, $C4C8                                ; $4B85: $C4 $C8 $C4
    sbc c                                         ; $4B88: $99
    ret                                           ; $4B89: $C9


    or $F2                                        ; $4B8A: $F6 $F2
    ld [hl], b                                    ; $4B8C: $70
    sub d                                         ; $4B8D: $92
    sbc l                                         ; $4B8E: $9D

jr_031_4B8F:
    sbc b                                         ; $4B8F: $98
    ld d, $9C                                     ; $4B90: $16 $9C
    ld h, $3D                                     ; $4B92: $26 $3D
    inc a                                         ; $4B94: $3C
    ld a, [$20BC]                                 ; $4B95: $FA $BC $20
    ld hl, sp-$09                                 ; $4B98: $F8 $F7
    cpl                                           ; $4B9A: $2F
    ldh a, [$FF8F]                                ; $4B9B: $F0 $8F
    inc e                                         ; $4B9D: $1C
    rra                                           ; $4B9E: $1F
    dec [hl]                                      ; $4B9F: $35
    nop                                           ; $4BA0: $00
    sbc [hl]                                      ; $4BA1: $9E
    nop                                           ; $4BA2: $00
    add b                                         ; $4BA3: $80
    ld a, [bc]                                    ; $4BA4: $0A
    ld e, a                                       ; $4BA5: $5F
    db $E3                                        ; $4BA6: $E3
    sub b                                         ; $4BA7: $90
    ld c, e                                       ; $4BA8: $4B
    jr z, jr_031_4C06                             ; $4BA9: $28 $5B

    jr jr_031_4BB0                                ; $4BAB: $18 $03

    sbc e                                         ; $4BAD: $9B
    ld e, b                                       ; $4BAE: $58
    cp e                                          ; $4BAF: $BB

jr_031_4BB0:
    jr c, jr_031_4BED                             ; $4BB0: $38 $3B

    cp b                                          ; $4BB2: $B8
    inc bc                                        ; $4BB3: $03
    inc bc                                        ; $4BB4: $03
    adc c                                         ; $4BB5: $89
    ld b, d                                       ; $4BB6: $42
    cp h                                          ; $4BB7: $BC
    dec e                                         ; $4BB8: $1D
    ld e, h                                       ; $4BB9: $5C
    ld d, d                                       ; $4BBA: $52
    inc e                                         ; $4BBB: $1C
    db $DD                                        ; $4BBC: $DD
    ld [bc], a                                    ; $4BBD: $02
    rst RST_28                                    ; $4BBE: $EF
    ld d, b                                       ; $4BBF: $50
    db $10                                        ; $4BC0: $10
    ld e, b                                       ; $4BC1: $58
    db $FD                                        ; $4BC2: $FD
    inc bc                                        ; $4BC3: $03
    inc bc                                        ; $4BC4: $03
    rst RST_38                                    ; $4BC5: $FF
    rst RST_38                                    ; $4BC6: $FF
    rst RST_38                                    ; $4BC7: $FF
    rst RST_38                                    ; $4BC8: $FF
    rst RST_38                                    ; $4BC9: $FF
    rst RST_38                                    ; $4BCA: $FF
    rst RST_38                                    ; $4BCB: $FF
    rst RST_38                                    ; $4BCC: $FF
    rst RST_38                                    ; $4BCD: $FF
    rst RST_38                                    ; $4BCE: $FF
    rst RST_38                                    ; $4BCF: $FF
    rst RST_38                                    ; $4BD0: $FF
    rst RST_38                                    ; $4BD1: $FF
    ld bc, $FF01                                  ; $4BD2: $01 $01 $FF
    rst RST_38                                    ; $4BD5: $FF
    rst RST_38                                    ; $4BD6: $FF
    rst RST_38                                    ; $4BD7: $FF
    rst RST_10                                    ; $4BD8: $D7
    ldh a, [c]                                    ; $4BD9: $F2
    ld bc, $FF01                                  ; $4BDA: $01 $01 $FF
    rst RST_38                                    ; $4BDD: $FF
    pop de                                        ; $4BDE: $D1
    ld de, $16FE                                  ; $4BDF: $11 $FE $16
    rst RST_38                                    ; $4BE2: $FF
    add b                                         ; $4BE3: $80
    adc [hl]                                      ; $4BE4: $8E
    inc de                                        ; $4BE5: $13
    dec de                                        ; $4BE6: $1B
    ld bc, $FFFF                                  ; $4BE7: $01 $FF $FF
    jp Jump_000_01FF                              ; $4BEA: $C3 $FF $01


jr_031_4BED:
    rst RST_38                                    ; $4BED: $FF
    rst RST_38                                    ; $4BEE: $FF
    rst RST_38                                    ; $4BEF: $FF
    rst RST_38                                    ; $4BF0: $FF
    rst RST_38                                    ; $4BF1: $FF
    rst RST_38                                    ; $4BF2: $FF
    rst RST_38                                    ; $4BF3: $FF
    rst RST_38                                    ; $4BF4: $FF
    rst RST_38                                    ; $4BF5: $FF
    and l                                         ; $4BF6: $A5
    rst RST_38                                    ; $4BF7: $FF
    rst RST_38                                    ; $4BF8: $FF
    rst RST_38                                    ; $4BF9: $FF
    rst RST_38                                    ; $4BFA: $FF
    ld bc, $FFFF                                  ; $4BFB: $01 $FF $FF
    rst RST_38                                    ; $4BFE: $FF
    rst RST_38                                    ; $4BFF: $FF
    rst RST_38                                    ; $4C00: $FF
    rst RST_38                                    ; $4C01: $FF
    rst RST_38                                    ; $4C02: $FF
    rst RST_38                                    ; $4C03: $FF
    rst RST_30                                    ; $4C04: $F7
    inc bc                                        ; $4C05: $03

jr_031_4C06:
    rst RST_38                                    ; $4C06: $FF
    inc bc                                        ; $4C07: $03
    rst RST_38                                    ; $4C08: $FF
    rst RST_38                                    ; $4C09: $FF
    rst RST_38                                    ; $4C0A: $FF
    rst RST_38                                    ; $4C0B: $FF
    rst RST_38                                    ; $4C0C: $FF
    rst RST_30                                    ; $4C0D: $F7
    inc bc                                        ; $4C0E: $03
    rst RST_38                                    ; $4C0F: $FF

Call_031_4C10:
    inc bc                                        ; $4C10: $03
    rst RST_38                                    ; $4C11: $FF
    rst RST_38                                    ; $4C12: $FF
    rst RST_38                                    ; $4C13: $FF
    rst RST_38                                    ; $4C14: $FF
    rst RST_38                                    ; $4C15: $FF
    rst RST_38                                    ; $4C16: $FF
    rst RST_38                                    ; $4C17: $FF
    rst RST_38                                    ; $4C18: $FF
    rst RST_38                                    ; $4C19: $FF
    rst RST_38                                    ; $4C1A: $FF
    rst RST_38                                    ; $4C1B: $FF
    rst RST_38                                    ; $4C1C: $FF
    ld bc, $FF01                                  ; $4C1D: $01 $01 $FF
    rst RST_38                                    ; $4C20: $FF
    cp $FF                                        ; $4C21: $FE $FF
    rst RST_38                                    ; $4C23: $FF
    rst RST_10                                    ; $4C24: $D7
    ld bc, $EB01                                  ; $4C25: $01 $01 $EB
    rst RST_38                                    ; $4C28: $FF
    db $DB                                        ; $4C29: $DB
    ccf                                           ; $4C2A: $3F
    dec de                                        ; $4C2B: $1B
    call c, Call_000_206E                         ; $4C2C: $DC $6E $20
    ld c, b                                       ; $4C2F: $48
    inc de                                        ; $4C30: $13
    dec de                                        ; $4C31: $1B
    ld bc, $FFFF                                  ; $4C32: $01 $FF $FF
    rst RST_38                                    ; $4C35: $FF
    jp $FF01                                      ; $4C36: $C3 $01 $FF


    rst RST_38                                    ; $4C39: $FF
    rst RST_38                                    ; $4C3A: $FF
    rst RST_38                                    ; $4C3B: $FF
    rst RST_38                                    ; $4C3C: $FF
    rst RST_38                                    ; $4C3D: $FF
    rst RST_38                                    ; $4C3E: $FF
    rst RST_38                                    ; $4C3F: $FF
    rst RST_38                                    ; $4C40: $FF
    and l                                         ; $4C41: $A5
    rst RST_38                                    ; $4C42: $FF
    rst RST_38                                    ; $4C43: $FF
    rst RST_38                                    ; $4C44: $FF
    rst RST_38                                    ; $4C45: $FF
    rst RST_38                                    ; $4C46: $FF
    ld bc, $FFFF                                  ; $4C47: $01 $FF $FF
    rst RST_38                                    ; $4C4A: $FF
    rst RST_38                                    ; $4C4B: $FF
    rst RST_38                                    ; $4C4C: $FF
    rst RST_38                                    ; $4C4D: $FF
    rst RST_38                                    ; $4C4E: $FF
    rst RST_38                                    ; $4C4F: $FF
    rst RST_30                                    ; $4C50: $F7
    inc bc                                        ; $4C51: $03
    inc bc                                        ; $4C52: $03
    rst RST_38                                    ; $4C53: $FF
    rst RST_38                                    ; $4C54: $FF
    rst RST_38                                    ; $4C55: $FF
    rst RST_38                                    ; $4C56: $FF
    ldh a, [rIE]                                  ; $4C57: $F0 $FF
    rst RST_30                                    ; $4C59: $F7
    inc bc                                        ; $4C5A: $03
    inc bc                                        ; $4C5B: $03
    add hl, sp                                    ; $4C5C: $39
    add b                                         ; $4C5D: $80
    ld b, l                                       ; $4C5E: $45
    rst RST_38                                    ; $4C5F: $FF
    nop                                           ; $4C60: $00
    add b                                         ; $4C61: $80
    ldh [$FF8C], a                                ; $4C62: $E0 $8C
    nop                                           ; $4C64: $00
    and c                                         ; $4C65: $A1
    nop                                           ; $4C66: $00
    ld e, e                                       ; $4C67: $5B
    cp c                                          ; $4C68: $B9
    nop                                           ; $4C69: $00
    add l                                         ; $4C6A: $85
    nop                                           ; $4C6B: $00
    dec c                                         ; $4C6C: $0D
    ret nz                                        ; $4C6D: $C0

    jr nc, jr_031_4CAD                            ; $4C6E: $30 $3D

    dec d                                         ; $4C70: $15
    nop                                           ; $4C71: $00
    jr nc, jr_031_4C78                            ; $4C72: $30 $04

    nop                                           ; $4C74: $00
    rlca                                          ; $4C75: $07
    nop                                           ; $4C76: $00
    inc h                                         ; $4C77: $24

jr_031_4C78:
    nop                                           ; $4C78: $00
    ld e, d                                       ; $4C79: $5A
    ld l, $00                                     ; $4C7A: $2E $00
    adc l                                         ; $4C7C: $8D
    nop                                           ; $4C7D: $00
    inc l                                         ; $4C7E: $2C
    ld h, b                                       ; $4C7F: $60
    dec a                                         ; $4C80: $3D
    ld bc, $2C80                                  ; $4C81: $01 $80 $2C
    ld d, c                                       ; $4C84: $51
    rla                                           ; $4C85: $17
    ld de, $2513                                  ; $4C86: $11 $13 $25
    ld hl, $B839                                  ; $4C89: $21 $39 $B8
    nop                                           ; $4C8C: $00
    ld l, l                                       ; $4C8D: $6D
    nop                                           ; $4C8E: $00
    inc l                                         ; $4C8F: $2C
    nop                                           ; $4C90: $00
    sub b                                         ; $4C91: $90
    add a                                         ; $4C92: $87
    and b                                         ; $4C93: $A0
    ld e, [hl]                                    ; $4C94: $5E
    add h                                         ; $4C95: $84
    ret nz                                        ; $4C96: $C0

    adc a                                         ; $4C97: $8F
    sbc b                                         ; $4C98: $98
    inc b                                         ; $4C99: $04
    inc d                                         ; $4C9A: $14
    rlca                                          ; $4C9B: $07
    adc [hl]                                      ; $4C9C: $8E
    push af                                       ; $4C9D: $F5
    cp h                                          ; $4C9E: $BC
    inc b                                         ; $4C9F: $04
    add h                                         ; $4CA0: $84
    cp l                                          ; $4CA1: $BD
    ld a, [hl]                                    ; $4CA2: $7E
    inc b                                         ; $4CA3: $04
    cp l                                          ; $4CA4: $BD
    ld d, $4F                                     ; $4CA5: $16 $4F
    db $E3                                        ; $4CA7: $E3
    inc b                                         ; $4CA8: $04
    rst RST_30                                    ; $4CA9: $F7
    ld b, c                                       ; $4CAA: $41
    nop                                           ; $4CAB: $00
    inc c                                         ; $4CAC: $0C

jr_031_4CAD:
    nop                                           ; $4CAD: $00
    and b                                         ; $4CAE: $A0
    ld sp, $0DC1                                  ; $4CAF: $31 $C1 $0D
    inc d                                         ; $4CB2: $14
    inc b                                         ; $4CB3: $04
    pop hl                                        ; $4CB4: $E1
    dec b                                         ; $4CB5: $05
    pop af                                        ; $4CB6: $F1
    ret nc                                        ; $4CB7: $D0

    xor $04                                       ; $4CB8: $EE $04
    dec c                                         ; $4CBA: $0D
    inc b                                         ; $4CBB: $04
    ld sp, $D404                                  ; $4CBC: $31 $04 $D4
    cp l                                          ; $4CBF: $BD
    ret nc                                        ; $4CC0: $D0

    rst RST_08                                    ; $4CC1: $CF
    inc b                                         ; $4CC2: $04
    or h                                          ; $4CC3: $B4
    add e                                         ; $4CC4: $83
    xor b                                         ; $4CC5: $A8
    ld [$04A4], sp                                ; $4CC6: $08 $A4 $04
    nop                                           ; $4CC9: $00
    ld e, a                                       ; $4CCA: $5F
    cp [hl]                                       ; $4CCB: $BE
    inc b                                         ; $4CCC: $04
    xor d                                         ; $4CCD: $AA
    sbc b                                         ; $4CCE: $98
    sbc l                                         ; $4CCF: $9D
    ld bc, $0418                                  ; $4CD0: $01 $18 $04
    db $EB                                        ; $4CD3: $EB
    adc h                                         ; $4CD4: $8C
    cp [hl]                                       ; $4CD5: $BE
    nop                                           ; $4CD6: $00
    ld sp, hl                                     ; $4CD7: $F9
    inc b                                         ; $4CD8: $04
    sbc [hl]                                      ; $4CD9: $9E
    add hl, de                                    ; $4CDA: $19
    nop                                           ; $4CDB: $00
    sbc b                                         ; $4CDC: $98
    sbc h                                         ; $4CDD: $9C
    ld h, c                                       ; $4CDE: $61
    dec bc                                        ; $4CDF: $0B

jr_031_4CE0:
    inc [hl]                                      ; $4CE0: $34
    inc b                                         ; $4CE1: $04
    add c                                         ; $4CE2: $81
    dec e                                         ; $4CE3: $1D
    ld bc, $02AD                                  ; $4CE4: $01 $AD $02
    ld a, l                                       ; $4CE7: $7D
    inc b                                         ; $4CE8: $04
    ld d, l                                       ; $4CE9: $55
    dec a                                         ; $4CEA: $3D
    ld bc, $7CC7                                  ; $4CEB: $01 $C7 $7C
    ld c, h                                       ; $4CEE: $4C
    sub c                                         ; $4CEF: $91
    ret nc                                        ; $4CF0: $D0

    cp l                                          ; $4CF1: $BD
    cp h                                          ; $4CF2: $BC
    ld [$DC00], sp                                ; $4CF3: $08 $00 $DC
    sbc h                                         ; $4CF6: $9C
    inc [hl]                                      ; $4CF7: $34
    jp nz, $0D82                                  ; $4CF8: $C2 $82 $0D

    dec a                                         ; $4CFB: $3D
    ld hl, sp-$6C                                 ; $4CFC: $F8 $94
    ldh a, [c]                                    ; $4CFE: $F2
    ld [bc], a                                    ; $4CFF: $02
    halt                                          ; $4D00: $76
    rst RST_30                                    ; $4D01: $F7
    sbc b                                         ; $4D02: $98
    ld [$E200], sp                                ; $4D03: $08 $00 $E2
    nop                                           ; $4D06: $00
    ld [$EB0A], sp                                ; $4D07: $08 $0A $EB
    ld de, $9882                                  ; $4D0A: $11 $82 $98
    ccf                                           ; $4D0D: $3F
    inc b                                         ; $4D0E: $04
    cp a                                          ; $4D0F: $BF
    call nz, $6FB9                                ; $4D10: $C4 $B9 $6F
    db $DD                                        ; $4D13: $DD
    nop                                           ; $4D14: $00
    dec c                                         ; $4D15: $0D
    rst RST_18                                    ; $4D16: $DF
    db $EC                                        ; $4D17: $EC
    or b                                          ; $4D18: $B0
    inc h                                         ; $4D19: $24
    inc b                                         ; $4D1A: $04
    ld d, l                                       ; $4D1B: $55
    db $E3                                        ; $4D1C: $E3
    inc b                                         ; $4D1D: $04
    db $FD                                        ; $4D1E: $FD
    inc b                                         ; $4D1F: $04
    sbc e                                         ; $4D20: $9B
    inc b                                         ; $4D21: $04
    sbc l                                         ; $4D22: $9D
    inc b                                         ; $4D23: $04
    sbc $60                                       ; $4D24: $DE $60
    inc b                                         ; $4D26: $04
    rst RST_28                                    ; $4D27: $EF
    dec c                                         ; $4D28: $0D
    or b                                          ; $4D29: $B0
    cp c                                          ; $4D2A: $B9
    dec c                                         ; $4D2B: $0D
    add [hl]                                      ; $4D2C: $86
    ld a, l                                       ; $4D2D: $7D
    ld e, c                                       ; $4D2E: $59
    ld h, b                                       ; $4D2F: $60
    dec c                                         ; $4D30: $0D
    ld e, $64                                     ; $4D31: $1E $64
    dec c                                         ; $4D33: $0D
    rra                                           ; $4D34: $1F
    or l                                          ; $4D35: $B5
    ret nz                                        ; $4D36: $C0

    add h                                         ; $4D37: $84
    cp l                                          ; $4D38: $BD
    ld e, a                                       ; $4D39: $5F
    ld b, c                                       ; $4D3A: $41
    rlca                                          ; $4D3B: $07
    ld hl, $F103                                  ; $4D3C: $21 $03 $F1
    xor d                                         ; $4D3F: $AA
    inc c                                         ; $4D40: $0C
    ld de, $B10C                                  ; $4D41: $11 $0C $B1
    add h                                         ; $4D44: $84
    sbc $9E                                       ; $4D45: $DE $9E
    di                                            ; $4D47: $F3
    and e                                         ; $4D48: $A3
    inc b                                         ; $4D49: $04
    jp nc, $9E1E                                  ; $4D4A: $D2 $1E $9E

    ldh [$FF8F], a                                ; $4D4D: $E0 $8F
    jr z, jr_031_4CE0                             ; $4D4F: $28 $8F

    db $FD                                        ; $4D51: $FD
    adc b                                         ; $4D52: $88
    inc b                                         ; $4D53: $04
    nop                                           ; $4D54: $00
    ld h, h                                       ; $4D55: $64
    jr z, jr_031_4DBC                             ; $4D56: $28 $64

    ret nc                                        ; $4D58: $D0

    and $67                                       ; $4D59: $E6 $67
    add hl, bc                                    ; $4D5B: $09
    dec a                                         ; $4D5C: $3D
    inc h                                         ; $4D5D: $24
    and c                                         ; $4D5E: $A1
    rrca                                          ; $4D5F: $0F
    cp [hl]                                       ; $4D60: $BE
    jr @+$08                                      ; $4D61: $18 $06

    sbc $15                                       ; $4D63: $DE $15
    ld h, b                                       ; $4D65: $60
    pop bc                                        ; $4D66: $C1
    dec a                                         ; $4D67: $3D
    ld bc, $A010                                  ; $4D68: $01 $10 $A0
    sub h                                         ; $4D6B: $94
    ld hl, sp+$00                                 ; $4D6C: $F8 $00
    ld d, b                                       ; $4D6E: $50
    nop                                           ; $4D6F: $00
    ldh [rP1], a                                  ; $4D70: $E0 $00
    xor d                                         ; $4D72: $AA
    xor b                                         ; $4D73: $A8
    and d                                         ; $4D74: $A2
    dec a                                         ; $4D75: $3D
    and b                                         ; $4D76: $A0
    adc [hl]                                      ; $4D77: $8E
    pop af                                        ; $4D78: $F1
    nop                                           ; $4D79: $00
    xor b                                         ; $4D7A: $A8
    sbc b                                         ; $4D7B: $98
    ld a, [bc]                                    ; $4D7C: $0A
    nop                                           ; $4D7D: $00
    ld d, l                                       ; $4D7E: $55
    ld c, d                                       ; $4D7F: $4A
    nop                                           ; $4D80: $00
    ld d, e                                       ; $4D81: $53
    nop                                           ; $4D82: $00
    ld b, b                                       ; $4D83: $40
    nop                                           ; $4D84: $00
    sbc a                                         ; $4D85: $9F
    inc [hl]                                      ; $4D86: $34
    push af                                       ; $4D87: $F5
    adc h                                         ; $4D88: $8C
    inc l                                         ; $4D89: $2C
    add d                                         ; $4D8A: $82
    and [hl]                                      ; $4D8B: $A6
    cp a                                          ; $4D8C: $BF
    adc $7F                                       ; $4D8D: $CE $7F
    inc b                                         ; $4D8F: $04
    ld c, a                                       ; $4D90: $4F
    adc a                                         ; $4D91: $8F
    inc b                                         ; $4D92: $04
    rst RST_10                                    ; $4D93: $D7
    ld de, $8534                                  ; $4D94: $11 $34 $85
    rlca                                          ; $4D97: $07
    rlca                                          ; $4D98: $07
    xor d                                         ; $4D99: $AA
    inc b                                         ; $4D9A: $04
    cp $04                                        ; $4D9B: $FE $04
    db $FC                                        ; $4D9D: $FC
    ld e, h                                       ; $4D9E: $5C
    ldh a, [$FF84]                                ; $4D9F: $F0 $84
    pop hl                                        ; $4DA1: $E1
    ld bc, $C80F                                  ; $4DA2: $01 $0F $C8
    ld [$07A7], sp                                ; $4DA5: $08 $A7 $07
    ld e, a                                       ; $4DA8: $5F
    rra                                           ; $4DA9: $1F
    jr @-$5C                                      ; $4DAA: $18 $A2

    nop                                           ; $4DAC: $00
    ret nz                                        ; $4DAD: $C0

    jr nc, jr_031_4DE3                            ; $4DAE: $30 $33

    ei                                            ; $4DB0: $FB
    sub a                                         ; $4DB1: $97
    add h                                         ; $4DB2: $84
    scf                                           ; $4DB3: $37

jr_031_4DB4:
    inc bc                                        ; $4DB4: $03
    ld sp, $7177                                  ; $4DB5: $31 $77 $71
    or a                                          ; $4DB8: $B7
    or c                                          ; $4DB9: $B1
    add a                                         ; $4DBA: $87
    ld h, h                                       ; $4DBB: $64

jr_031_4DBC:
    inc l                                         ; $4DBC: $2C
    jr nz, jr_031_4DF8                            ; $4DBD: $20 $39

    jp Jump_000_0368                              ; $4DBF: $C3 $68 $03


    adc c                                         ; $4DC2: $89
    ld sp, hl                                     ; $4DC3: $F9
    add e                                         ; $4DC4: $83
    or $A3                                        ; $4DC5: $F6 $A3
    jr z, jr_031_4DB4                             ; $4DC7: $28 $EB

    ldh [$FFDD], a                                ; $4DC9: $E0 $DD
    sbc a                                         ; $4DCB: $9F
    ldh [$FFC7], a                                ; $4DCC: $E0 $C7
    dec b                                         ; $4DCE: $05
    or e                                          ; $4DCF: $B3
    nop                                           ; $4DD0: $00
    sbc b                                         ; $4DD1: $98
    add h                                         ; $4DD2: $84
    or h                                          ; $4DD3: $B4
    ld hl, sp+$60                                 ; $4DD4: $F8 $60
    ld d, b                                       ; $4DD6: $50
    ret nc                                        ; $4DD7: $D0

    cp a                                          ; $4DD8: $BF
    and h                                         ; $4DD9: $A4
    ld b, $08                                     ; $4DDA: $06 $08
    jr z, @+$09                                   ; $4DDC: $28 $07

    nop                                           ; $4DDE: $00
    add h                                         ; $4DDF: $84
    or h                                          ; $4DE0: $B4
    cp [hl]                                       ; $4DE1: $BE
    inc b                                         ; $4DE2: $04

jr_031_4DE3:
    reti                                          ; $4DE3: $D9


    ldh a, [$FFBC]                                ; $4DE4: $F0 $BC
    add sp, -$5C                                  ; $4DE6: $E8 $A4
    ld hl, sp+$01                                 ; $4DE8: $F8 $01
    rst RST_28                                    ; $4DEA: $EF
    jr z, jr_031_4DF4                             ; $4DEB: $28 $07

    ld [bc], a                                    ; $4DED: $02
    cp $94                                        ; $4DEE: $FE $94
    ld a, b                                       ; $4DF0: $78
    db $EC                                        ; $4DF1: $EC
    sub b                                         ; $4DF2: $90
    db $EB                                        ; $4DF3: $EB

jr_031_4DF4:
    call nc, $1490                                ; $4DF4: $D4 $90 $14
    db $FC                                        ; $4DF7: $FC

jr_031_4DF8:
    inc b                                         ; $4DF8: $04
    db $FD                                        ; $4DF9: $FD
    inc e                                         ; $4DFA: $1C
    inc c                                         ; $4DFB: $0C
    ld a, l                                       ; $4DFC: $7D
    xor b                                         ; $4DFD: $A8
    dec a                                         ; $4DFE: $3D
    ld h, h                                       ; $4DFF: $64
    sub h                                         ; $4E00: $94
    ld [hl], b                                    ; $4E01: $70
    ldh a, [$FF2C]                                ; $4E02: $F0 $2C
    nop                                           ; $4E04: $00
    push de                                       ; $4E05: $D5
    inc c                                         ; $4E06: $0C
    nop                                           ; $4E07: $00
    ld b, d                                       ; $4E08: $42
    nop                                           ; $4E09: $00
    adc h                                         ; $4E0A: $8C
    nop                                           ; $4E0B: $00
    ld hl, $E0C6                                  ; $4E0C: $21 $C6 $E0
    sub l                                         ; $4E0F: $95
    ld [hl], b                                    ; $4E10: $70
    inc b                                         ; $4E11: $04
    dec sp                                        ; $4E12: $3B
    add hl, sp                                    ; $4E13: $39
    ld c, e                                       ; $4E14: $4B
    ld c, c                                       ; $4E15: $49
    dec bc                                        ; $4E16: $0B
    ld b, $09                                     ; $4E17: $06 $09
    inc de                                        ; $4E19: $13
    ld de, $6167                                  ; $4E1A: $11 $67 $61
    inc [hl]                                      ; $4E1D: $34
    sub h                                         ; $4E1E: $94
    rst RST_30                                    ; $4E1F: $F7
    ld d, a                                       ; $4E20: $57
    ret nz                                        ; $4E21: $C0

    ld l, b                                       ; $4E22: $68
    adc b                                         ; $4E23: $88
    add b                                         ; $4E24: $80
    add [hl]                                      ; $4E25: $86
    cp h                                          ; $4E26: $BC
    xor h                                         ; $4E27: $AC
    db $DD                                        ; $4E28: $DD
    db $F4                                        ; $4E29: $F4
    dec l                                         ; $4E2A: $2D
    ld c, $85                                     ; $4E2B: $0E $85
    inc b                                         ; $4E2D: $04
    ldh a, [rDIV]                                 ; $4E2E: $F0 $04
    ld b, b                                       ; $4E30: $40
    rrca                                          ; $4E31: $0F
    rst RST_28                                    ; $4E32: $EF
    ld [$0424], sp                                ; $4E33: $08 $24 $04
    ld a, a                                       ; $4E36: $7F
    ld b, $00                                     ; $4E37: $06 $00
    jr nz, @-$52                                  ; $4E39: $20 $AC

    or $BD                                        ; $4E3B: $F6 $BD
    dec b                                         ; $4E3D: $05
    jr nz, jr_031_4E44                            ; $4E3E: $20 $04

    rra                                           ; $4E40: $1F
    inc b                                         ; $4E41: $04
    inc h                                         ; $4E42: $24
    pop bc                                        ; $4E43: $C1

jr_031_4E44:
    xor $04                                       ; $4E44: $EE $04
    and b                                         ; $4E46: $A0
    inc b                                         ; $4E47: $04
    ld hl, $9C6C                                  ; $4E48: $21 $6C $9C
    xor h                                         ; $4E4B: $AC
    add a                                         ; $4E4C: $87
    cp a                                          ; $4E4D: $BF
    inc b                                         ; $4E4E: $04
    adc c                                         ; $4E4F: $89
    dec b                                         ; $4E50: $05
    dec e                                         ; $4E51: $1D
    cp a                                          ; $4E52: $BF
    inc b                                         ; $4E53: $04
    cp e                                          ; $4E54: $BB
    rlca                                          ; $4E55: $07
    ld a, b                                       ; $4E56: $78
    sbc c                                         ; $4E57: $99
    ld b, $23                                     ; $4E58: $06 $23
    nop                                           ; $4E5A: $00
    sub l                                         ; $4E5B: $95

jr_031_4E5C:
    rlca                                          ; $4E5C: $07
    pop af                                        ; $4E5D: $F1
    inc bc                                        ; $4E5E: $03
    cp $2C                                        ; $4E5F: $FE $2C
    dec b                                         ; $4E61: $05
    inc d                                         ; $4E62: $14
    inc e                                         ; $4E63: $1C
    push bc                                       ; $4E64: $C5
    and $00                                       ; $4E65: $E6 $00
    ld c, a                                       ; $4E67: $4F
    nop                                           ; $4E68: $00
    ld b, d                                       ; $4E69: $42
    nop                                           ; $4E6A: $00
    nop                                           ; $4E6B: $00
    add hl, sp                                    ; $4E6C: $39
    jr c, @+$32                                   ; $4E6D: $38 $30

jr_031_4E6F:
    ld [hl-], a                                   ; $4E6F: $32
    db $10                                        ; $4E70: $10
    ld [hl], $01                                  ; $4E71: $36 $01
    ld [hl+], a                                   ; $4E73: $22
    inc l                                         ; $4E74: $2C
    ld [bc], a                                    ; $4E75: $02
    inc c                                         ; $4E76: $0C
    ld b, $18                                     ; $4E77: $06 $18
    dec b                                         ; $4E79: $05
    ret nz                                        ; $4E7A: $C0

    add b                                         ; $4E7B: $80
    pop af                                        ; $4E7C: $F1
    ld h, c                                       ; $4E7D: $61
    ld l, [hl]                                    ; $4E7E: $6E
    ld b, e                                       ; $4E7F: $43
    ld e, h                                       ; $4E80: $5C
    add a                                         ; $4E81: $87
    cp b                                          ; $4E82: $B8
    ld c, $41                                     ; $4E83: $0E $41
    ld [hl], b                                    ; $4E85: $70
    ldh [$FF71], a                                ; $4E86: $E0 $71
    sbc h                                         ; $4E88: $9C
    pop hl                                        ; $4E89: $E1
    jr jr_031_4E6F                                ; $4E8A: $18 $E3

    pop af                                        ; $4E8C: $F1
    ld d, c                                       ; $4E8D: $51
    rst RST_08                                    ; $4E8E: $CF
    db $10                                        ; $4E8F: $10
    cp a                                          ; $4E90: $BF
    db $10                                        ; $4E91: $10
    ld c, [hl]                                    ; $4E92: $4E
    jr nc, jr_031_4EB1                            ; $4E93: $30 $1C

    or b                                          ; $4E95: $B0
    ld [bc], a                                    ; $4E96: $02
    jr c, jr_031_4E5C                             ; $4E97: $38 $C3

jr_031_4E99:
    ld [hl], b                                    ; $4E99: $70
    add a                                         ; $4E9A: $87
    ld h, c                                       ; $4E9B: $61
    adc [hl]                                      ; $4E9C: $8E
    pop af                                        ; $4E9D: $F1
    ldh a, [$FFA0]                                ; $4E9E: $F0 $A0
    db $10                                        ; $4EA0: $10
    adc a                                         ; $4EA1: $8F
    db $10                                        ; $4EA2: $10
    rlca                                          ; $4EA3: $07
    ld a, b                                       ; $4EA4: $78
    ld bc, $1FFE                                  ; $4EA5: $01 $FE $1F
    ld a, [de]                                    ; $4EA8: $1A

jr_031_4EA9:
    ldh [$FF7F], a                                ; $4EA9: $E0 $7F
    add b                                         ; $4EAB: $80
    or c                                          ; $4EAC: $B1
    ld bc, $C0C7                                  ; $4EAD: $01 $C7 $C0
    dec de                                        ; $4EB0: $1B

jr_031_4EB1:
    ld a, [hl+]                                   ; $4EB1: $2A
    inc bc                                        ; $4EB2: $03
    pop hl                                        ; $4EB3: $E1
    ldh [$FFF8], a                                ; $4EB4: $E0 $F8
    ld [hl], b                                    ; $4EB6: $70
    cp $10                                        ; $4EB7: $FE $10
    rst RST_38                                    ; $4EB9: $FF
    cp [hl]                                       ; $4EBA: $BE
    db $10                                        ; $4EBB: $10
    rrca                                          ; $4EBC: $0F
    ldh a, [c]                                    ; $4EBD: $F2
    ld d, b                                       ; $4EBE: $50
    inc b                                         ; $4EBF: $04
    ret nc                                        ; $4EC0: $D0

    nop                                           ; $4EC1: $00
    db $FD                                        ; $4EC2: $FD
    add h                                         ; $4EC3: $84
    nop                                           ; $4EC4: $00
    ld a, [hl-]                                   ; $4EC5: $3A
    dec sp                                        ; $4EC6: $3B
    ret nz                                        ; $4EC7: $C0

    ld [bc], a                                    ; $4EC8: $02
    pop af                                        ; $4EC9: $F1
    db $EC                                        ; $4ECA: $EC
    xor $00                                       ; $4ECB: $EE $00
    sub b                                         ; $4ECD: $90
    sbc b                                         ; $4ECE: $98
    ld b, [hl]                                    ; $4ECF: $46
    ld h, [hl]                                    ; $4ED0: $66
    sbc [hl]                                      ; $4ED1: $9E
    sbc $3E                                       ; $4ED2: $DE $3E
    cp [hl]                                       ; $4ED4: $BE
    ld d, d                                       ; $4ED5: $52
    ld a, [hl]                                    ; $4ED6: $7E
    nop                                           ; $4ED7: $00
    cp $00                                        ; $4ED8: $FE $00
    dec l                                         ; $4EDA: $2D
    ld sp, $1617                                  ; $4EDB: $31 $17 $16
    ld b, b                                       ; $4EDE: $40
    jr jr_031_4EF1                                ; $4EDF: $18 $10

    ld e, b                                       ; $4EE1: $58
    dec de                                        ; $4EE2: $1B
    ld e, h                                       ; $4EE3: $5C
    jr c, jr_031_4EA9                             ; $4EE4: $38 $C3

    jr nc, jr_031_4F3A                            ; $4EE6: $30 $52

    rst RST_00                                    ; $4EE8: $C7
    and b                                         ; $4EE9: $A0
    add $13                                       ; $4EEA: $C6 $13
    or e                                          ; $4EEC: $B3
    call nz, Call_000_3311                        ; $4EED: $C4 $11 $33
    sub h                                         ; $4EF0: $94

Jump_031_4EF1:
jr_031_4EF1:
    db $10                                        ; $4EF1: $10
    db $E3                                        ; $4EF2: $E3
    inc c                                         ; $4EF3: $0C
    ldh [rNR23], a                                ; $4EF4: $E0 $18
    ld de, $10AE                                  ; $4EF6: $11 $AE $10
    nop                                           ; $4EF9: $00
    adc l                                         ; $4EFA: $8D
    jr nc, jr_031_4E99                            ; $4EFB: $30 $9C

    ld hl, $23D8                                  ; $4EFD: $21 $D8 $23
    add hl, sp                                    ; $4F00: $39
    ld b, d                                       ; $4F01: $42
    nop                                           ; $4F02: $00
    ret nz                                        ; $4F03: $C0

    rrca                                          ; $4F04: $0F
    add b                                         ; $4F05: $80
    ccf                                           ; $4F06: $3F

jr_031_4F07:
    rlca                                          ; $4F07: $07
    ld a, b                                       ; $4F08: $78
    rra                                           ; $4F09: $1F
    ldh [$FFD8], a                                ; $4F0A: $E0 $D8
    ld b, b                                       ; $4F0C: $40
    add b                                         ; $4F0D: $80
    ld a, h                                       ; $4F0E: $7C
    add b                                         ; $4F0F: $80
    jr nz, jr_031_4F15                            ; $4F10: $20 $03

    cp h                                          ; $4F12: $BC
    dec a                                         ; $4F13: $3D
    add c                                         ; $4F14: $81

jr_031_4F15:
    jr nz, jr_031_4F07                            ; $4F15: $20 $F0

    nop                                           ; $4F17: $00
    db $FC                                        ; $4F18: $FC
    ld hl, sp+$07                                 ; $4F19: $F8 $07
    rst RST_38                                    ; $4F1B: $FF
    ld b, b                                       ; $4F1C: $40
    rst RST_38                                    ; $4F1D: $FF
    ld [hl], b                                    ; $4F1E: $70
    db $10                                        ; $4F1F: $10
    ld [hl], c                                    ; $4F20: $71
    db $10                                        ; $4F21: $10
    ld h, c                                       ; $4F22: $61
    db $10                                        ; $4F23: $10
    pop hl                                        ; $4F24: $E1
    ld b, c                                       ; $4F25: $41
    ld e, e                                       ; $4F26: $5B
    ld [hl], b                                    ; $4F27: $70
    db $10                                        ; $4F28: $10
    add b                                         ; $4F29: $80
    db $10                                        ; $4F2A: $10
    ld [hl], e                                    ; $4F2B: $73
    ld a, [hl]                                    ; $4F2C: $7E
    db $10                                        ; $4F2D: $10
    add c                                         ; $4F2E: $81
    ld [hl], c                                    ; $4F2F: $71
    cp $00                                        ; $4F30: $FE $00

jr_031_4F32:
    ld d, b                                       ; $4F32: $50
    nop                                           ; $4F33: $00
    ld e, $9E                                     ; $4F34: $1E $9E
    ld c, $00                                     ; $4F36: $0E $00
    ld a, [bc]                                    ; $4F38: $0A
    ld b, [hl]                                    ; $4F39: $46

jr_031_4F3A:
    ld b, $82                                     ; $4F3A: $06 $82
    ld a, [de]                                    ; $4F3C: $1A
    ret nc                                        ; $4F3D: $D0

    inc e                                         ; $4F3E: $1C
    ldh [$FF3C], a                                ; $4F3F: $E0 $3C
    nop                                           ; $4F41: $00
    jr z, jr_031_4F93                             ; $4F42: $28 $4F

    jr nc, jr_031_4F8E                            ; $4F44: $30 $48

    scf                                           ; $4F46: $37
    ld b, a                                       ; $4F47: $47
    ld l, h                                       ; $4F48: $6C
    ld c, h                                       ; $4F49: $4C
    jr nz, @+$4D                                  ; $4F4A: $20 $4B

    ld l, b                                       ; $4F4C: $68
    ld de, $2C2D                                  ; $4F4D: $11 $2D $2C
    ld d, [hl]                                    ; $4F50: $56
    ld b, $13                                     ; $4F51: $06 $13
    ld b, b                                       ; $4F53: $40
    db $E4                                        ; $4F54: $E4
    db $10                                        ; $4F55: $10
    ld h, h                                       ; $4F56: $64
    sbc e                                         ; $4F57: $9B
    and h                                         ; $4F58: $A4
    rst RST_18                                    ; $4F59: $DF
    ret nz                                        ; $4F5A: $C0

    ld e, a                                       ; $4F5B: $5F
    nop                                           ; $4F5C: $00
    ld b, b                                       ; $4F5D: $40
    adc a                                         ; $4F5E: $8F
    nop                                           ; $4F5F: $00
    ld l, e                                       ; $4F60: $6B
    ld h, b                                       ; $4F61: $60
    pop af                                        ; $4F62: $F1
    ldh a, [$FF7B]                                ; $4F63: $F0 $7B
    xor d                                         ; $4F65: $AA
    ld d, b                                       ; $4F66: $50
    ld [hl], a                                    ; $4F67: $77
    ld [de], a                                    ; $4F68: $12
    ld a, a                                       ; $4F69: $7F
    db $10                                        ; $4F6A: $10
    db $FC                                        ; $4F6B: $FC
    db $10                                        ; $4F6C: $10
    ld hl, sp+$00                                 ; $4F6D: $F8 $00
    ld bc, $03D8                                  ; $4F6F: $01 $D8 $03
    sub c                                         ; $4F72: $91
    rlca                                          ; $4F73: $07
    ld b, b                                       ; $4F74: $40
    ld h, [hl]                                    ; $4F75: $66
    ld e, d                                       ; $4F76: $5A
    ld b, b                                       ; $4F77: $40
    ld b, d                                       ; $4F78: $42
    ld de, $023A                                  ; $4F79: $11 $3A $02
    ld a, [de]                                    ; $4F7C: $1A
    jp nz, $E604                                  ; $4F7D: $C2 $04 $E6

    ld bc, $F400                                  ; $4F80: $01 $00 $F4
    pop bc                                        ; $4F83: $C1
    ldh a, [$FF7C]                                ; $4F84: $F0 $7C

jr_031_4F86:
    add e                                         ; $4F86: $83
    rst RST_38                                    ; $4F87: $FF
    ld h, b                                       ; $4F88: $60
    db $F4                                        ; $4F89: $F4
    inc de                                        ; $4F8A: $13
    ld h, b                                       ; $4F8B: $60
    stop                                          ; $4F8C: $10 $00

jr_031_4F8E:
    db $FC                                        ; $4F8E: $FC
    ld h, c                                       ; $4F8F: $61
    ld a, b                                       ; $4F90: $78
    add a                                         ; $4F91: $87
    rlca                                          ; $4F92: $07

jr_031_4F93:
    rlca                                          ; $4F93: $07
    ld hl, sp+$1F                                 ; $4F94: $F8 $1F
    ldh [$FFFE], a                                ; $4F96: $E0 $FE
    add b                                         ; $4F98: $80
    ld b, b                                       ; $4F99: $40
    db $10                                        ; $4F9A: $10
    ld l, c                                       ; $4F9B: $69
    db $E3                                        ; $4F9C: $E3
    db $10                                        ; $4F9D: $10
    sub b                                         ; $4F9E: $90
    jr jr_031_4F32                                ; $4F9F: $18 $91

    ld a, a                                       ; $4FA1: $7F
    add b                                         ; $4FA2: $80
    nop                                           ; $4FA3: $00
    dec d                                         ; $4FA4: $15
    inc a                                         ; $4FA5: $3C
    ld b, b                                       ; $4FA6: $40
    ld e, $11                                     ; $4FA7: $1E $11
    ret nz                                        ; $4FA9: $C0

    db $10                                        ; $4FAA: $10
    call z, Call_031_4C10                         ; $4FAB: $CC $10 $4C
    adc h                                         ; $4FAE: $8C
    db $10                                        ; $4FAF: $10
    adc [hl]                                      ; $4FB0: $8E
    ld a, $20                                     ; $4FB1: $3E $20
    db $10                                        ; $4FB3: $10
    add hl, hl                                    ; $4FB4: $29
    ld b, c                                       ; $4FB5: $41
    ld bc, $6115                                  ; $4FB6: $01 $15 $61
    ld c, h                                       ; $4FB9: $4C
    ld [hl], b                                    ; $4FBA: $70
    ld [hl+], a                                   ; $4FBB: $22
    inc a                                         ; $4FBC: $3C
    jr nc, @-$6E                                  ; $4FBD: $30 $90

    ld b, l                                       ; $4FBF: $45
    jr @-$3E                                      ; $4FC0: $18 $C0

    inc [hl]                                      ; $4FC2: $34
    jr c, jr_031_502F                             ; $4FC3: $38 $6A

    sub b                                         ; $4FC5: $90
    db $FC                                        ; $4FC6: $FC
    nop                                           ; $4FC7: $00
    ld d, b                                       ; $4FC8: $50
    cp $00                                        ; $4FC9: $FE $00
    rst RST_38                                    ; $4FCB: $FF
    nop                                           ; $4FCC: $00
    rra                                           ; $4FCD: $1F
    ccf                                           ; $4FCE: $3F
    ld b, e                                       ; $4FCF: $43
    ld b, a                                       ; $4FD0: $47

jr_031_4FD1:
    nop                                           ; $4FD1: $00
    ld l, b                                       ; $4FD2: $68
    ld l, c                                       ; $4FD3: $69
    jr nc, jr_031_4F86                            ; $4FD4: $30 $B0

    ld c, $CE                                     ; $4FD6: $0E $CE
    add e                                         ; $4FD8: $83
    rlca                                          ; $4FD9: $07
    sub b                                         ; $4FDA: $90
    nop                                           ; $4FDB: $00
    cpl                                           ; $4FDC: $2F
    rrca                                          ; $4FDD: $0F
    ret nc                                        ; $4FDE: $D0

    sbc h                                         ; $4FDF: $9C
    cp $98                                        ; $4FE0: $FE $98
    cp h                                          ; $4FE2: $BC
    inc d                                         ; $4FE3: $14
    add c                                         ; $4FE4: $81
    sbc c                                         ; $4FE5: $99
    nop                                           ; $4FE6: $00
    nop                                           ; $4FE7: $00
    di                                            ; $4FE8: $F3
    nop                                           ; $4FE9: $00
    pop hl                                        ; $4FEA: $E1
    ld hl, sp+$00                                 ; $4FEB: $F8 $00
    jp $03E0                                      ; $4FED: $C3 $E0 $03


    add b                                         ; $4FF0: $80
    inc hl                                        ; $4FF1: $23
    jr z, @+$65                                   ; $4FF2: $28 $63

    ld l, b                                       ; $4FF4: $68
    jr nz, jr_031_503A                            ; $4FF5: $20 $43

    ld e, b                                       ; $4FF7: $58
    sub b                                         ; $4FF8: $90
    ret nc                                        ; $4FF9: $D0

    add e                                         ; $4FFA: $83
    and b                                         ; $4FFB: $A0
    rst RST_38                                    ; $4FFC: $FF
    nop                                           ; $4FFD: $00
    xor c                                         ; $4FFE: $A9
    inc de                                        ; $4FFF: $13
    ret nz                                        ; $5000: $C0

    db $10                                        ; $5001: $10

Call_031_5002:
    ld hl, sp+$10                                 ; $5002: $F8 $10
    adc a                                         ; $5004: $8F
    ld [hl], b                                    ; $5005: $70
    jr nz, @+$2C                                  ; $5006: $20 $2A

    ccf                                           ; $5008: $3F
    call c, $FE20                                 ; $5009: $DC $20 $FE
    sub d                                         ; $500C: $92
    add b                                         ; $500D: $80
    db $10                                        ; $500E: $10
    ld [bc], a                                    ; $500F: $02
    xor b                                         ; $5010: $A8
    db $10                                        ; $5011: $10
    inc c                                         ; $5012: $0C
    db $10                                        ; $5013: $10
    ldh a, [rNR10]                                ; $5014: $F0 $10
    rlca                                          ; $5016: $07
    add a                                         ; $5017: $87
    rrca                                          ; $5018: $0F
    adc e                                         ; $5019: $8B
    nop                                           ; $501A: $00
    ld e, $7E                                     ; $501B: $1E $7E
    ld a, $11                                     ; $501D: $3E $11
    cp $20                                        ; $501F: $FE $20
    ld [de], a                                    ; $5021: $12
    ldh [rHDMA1], a                               ; $5022: $E0 $51
    sub c                                         ; $5024: $91
    pop de                                        ; $5025: $D1

jr_031_5026:
    ld b, a                                       ; $5026: $47
    ld [hl], b                                    ; $5027: $70
    ld e, a                                       ; $5028: $5F

jr_031_5029:
    ld h, b                                       ; $5029: $60
    dec e                                         ; $502A: $1D
    add b                                         ; $502B: $80
    db $10                                        ; $502C: $10
    dec sp                                        ; $502D: $3B
    ld b, b                                       ; $502E: $40

jr_031_502F:
    inc a                                         ; $502F: $3C
    ld b, d                                       ; $5030: $42
    jr z, jr_031_5079                             ; $5031: $28 $46

    add hl, hl                                    ; $5033: $29
    nop                                           ; $5034: $00
    inc b                                         ; $5035: $04
    ld c, c                                       ; $5036: $49
    ld b, h                                       ; $5037: $44
    jr nz, jr_031_50AB                            ; $5038: $20 $71

jr_031_503A:
    cp b                                          ; $503A: $B8
    ccf                                           ; $503B: $3F
    ld e, $20                                     ; $503C: $1E $20
    ld a, $CE                                     ; $503E: $3E $CE
    jr nz, jr_031_4FD1                            ; $5040: $20 $8F

    rrca                                          ; $5042: $0F
    rst RST_08                                    ; $5043: $CF
    rra                                           ; $5044: $1F
    add a                                         ; $5045: $87
    xor b                                         ; $5046: $A8
    jr nc, jr_031_5029                            ; $5047: $30 $E0

    db $10                                        ; $5049: $10
    ld hl, sp+$01                                 ; $504A: $F8 $01
    ei                                            ; $504C: $FB
    ld bc, $4903                                  ; $504D: $01 $03 $49
    pop af                                        ; $5050: $F1
    db $10                                        ; $5051: $10
    inc hl                                        ; $5052: $23
    rlca                                          ; $5053: $07
    ret nc                                        ; $5054: $D0

    rst RST_18                                    ; $5055: $DF
    ld b, $10                                     ; $5056: $06 $10
    ld h, d                                       ; $5058: $62
    nop                                           ; $5059: $00
    ld d, b                                       ; $505A: $50
    nop                                           ; $505B: $00
    ld h, b                                       ; $505C: $60
    inc c                                         ; $505D: $0C
    ret nz                                        ; $505E: $C0

    jr nc, @-$1E                                  ; $505F: $30 $E0

    ld a, [hl]                                    ; $5061: $7E
    rrca                                          ; $5062: $0F
    jr nc, @+$12                                  ; $5063: $30 $10

    jr nc, @+$52                                  ; $5065: $30 $50

    ld sp, $1D10                                  ; $5067: $31 $10 $1D
    ld l, c                                       ; $506A: $69
    add b                                         ; $506B: $80
    or c                                          ; $506C: $B1
    db $10                                        ; $506D: $10
    ld a, b                                       ; $506E: $78
    ld b, b                                       ; $506F: $40
    ld e, $4F                                     ; $5070: $1E $4F
    jr nz, jr_031_50B4                            ; $5072: $20 $40

    jr nz, jr_031_5026                            ; $5074: $20 $B0

    and b                                         ; $5076: $A0
    ld b, b                                       ; $5077: $40
    and c                                         ; $5078: $A1

jr_031_5079:
    ld b, c                                       ; $5079: $41
    ld b, e                                       ; $507A: $43
    add e                                         ; $507B: $83
    ld b, l                                       ; $507C: $45
    rra                                           ; $507D: $1F
    nop                                           ; $507E: $00
    rst RST_08                                    ; $507F: $CF
    rrca                                          ; $5080: $0F
    ccf                                           ; $5081: $3F
    nop                                           ; $5082: $00
    ld a, a                                       ; $5083: $7F
    ld [bc], a                                    ; $5084: $02
    ld b, b                                       ; $5085: $40
    rst RST_38                                    ; $5086: $FF
    inc b                                         ; $5087: $04
    add b                                         ; $5088: $80
    cp h                                          ; $5089: $BC
    ret nz                                        ; $508A: $C0

    jp nz, $F2F0                                  ; $508B: $C2 $F0 $F2

    or c                                          ; $508E: $B1
    db $10                                        ; $508F: $10
    or $20                                        ; $5090: $F6 $20
    nop                                           ; $5092: $00
    ldh [$FFE4], a                                ; $5093: $E0 $E4
    ld [$4100], a                                 ; $5095: $EA $00 $41
    jp z, $6C00                                   ; $5098: $CA $00 $6C

    ld h, c                                       ; $509B: $61
    halt                                          ; $509C: $76
    ld [hl], c                                    ; $509D: $71
    ld [hl], d                                    ; $509E: $72
    db $10                                        ; $509F: $10
    jr z, jr_031_511B                             ; $50A0: $28 $79

    ld a, b                                       ; $50A2: $78
    ld bc, $0470                                  ; $50A3: $01 $70 $04
    ldh a, [rP1]                                  ; $50A6: $F0 $00
    ldh a, [c]                                    ; $50A8: $F2
    nop                                           ; $50A9: $00
    ld [bc], a                                    ; $50AA: $02

jr_031_50AB:
    ld e, d                                       ; $50AB: $5A
    ld [hl+], a                                   ; $50AC: $22
    ld e, h                                       ; $50AD: $5C
    jr nz, jr_031_50DE                            ; $50AE: $20 $2E

Call_031_50B0:
    db $10                                        ; $50B0: $10
    ld a, [de]                                    ; $50B1: $1A
    xor d                                         ; $50B2: $AA
    sub b                                         ; $50B3: $90

jr_031_50B4:
    ld a, [bc]                                    ; $50B4: $0A
    db $10                                        ; $50B5: $10
    ld b, $10                                     ; $50B6: $06 $10
    ld [hl], b                                    ; $50B8: $70
    db $10                                        ; $50B9: $10
    db $FD                                        ; $50BA: $FD
    ld d, l                                       ; $50BB: $55
    ld bc, $FC11                                  ; $50BC: $01 $11 $FC
    ld d, b                                       ; $50BF: $50
    ld a, b                                       ; $50C0: $78
    db $10                                        ; $50C1: $10
    add d                                         ; $50C2: $82
    nop                                           ; $50C3: $00
    call $0120                                    ; $50C4: $CD $20 $01
    add [hl]                                      ; $50C7: $86
    dec a                                         ; $50C8: $3D
    jr nz, jr_031_50DC                            ; $50C9: $20 $11

    ld e, d                                       ; $50CB: $5A
    db $10                                        ; $50CC: $10
    ld b, b                                       ; $50CD: $40
    ld d, b                                       ; $50CE: $50
    db $10                                        ; $50CF: $10
    ld b, b                                       ; $50D0: $40
    ld bc, $0F80                                  ; $50D1: $01 $80 $0F
    add a                                         ; $50D4: $87
    rra                                           ; $50D5: $1F
    ld b, d                                       ; $50D6: $42
    adc a                                         ; $50D7: $8F
    db $10                                        ; $50D8: $10
    add e                                         ; $50D9: $83
    inc hl                                        ; $50DA: $23
    rlca                                          ; $50DB: $07

jr_031_50DC:
    daa                                           ; $50DC: $27
    db $10                                        ; $50DD: $10

jr_031_50DE:
    ld h, a                                       ; $50DE: $67
    sub d                                         ; $50DF: $92
    db $10                                        ; $50E0: $10
    rst RST_20                                    ; $50E1: $E7
    ld b, a                                       ; $50E2: $47
    db $10                                        ; $50E3: $10
    rst RST_08                                    ; $50E4: $CF
    rst RST_28                                    ; $50E5: $EF
    inc de                                        ; $50E6: $13
    rst RST_38                                    ; $50E7: $FF
    xor d                                         ; $50E8: $AA
    ld c, $DA                                     ; $50E9: $0E $DA
    ld [bc], a                                    ; $50EB: $02
    jp nc, $C800                                  ; $50EC: $D2 $00 $C8

    nop                                           ; $50EF: $00
    cp $AA                                        ; $50F0: $FE $AA
    ld b, $76                                     ; $50F2: $06 $76
    nop                                           ; $50F4: $00
    ld a, [hl]                                    ; $50F5: $7E
    nop                                           ; $50F6: $00
    ld a, a                                       ; $50F7: $7F
    ld [$A200], sp                                ; $50F8: $08 $00 $A2
    nop                                           ; $50FB: $00
    rlca                                          ; $50FC: $07
    db $10                                        ; $50FD: $10
    pop bc                                        ; $50FE: $C1
    ret nz                                        ; $50FF: $C0

    jp c, $FF00                                   ; $5100: $DA $00 $FF

    pop bc                                        ; $5103: $C1
    ld b, $F1                                     ; $5104: $06 $F1
    ld a, c                                       ; $5106: $79
    ld a, h                                       ; $5107: $7C
    add e                                         ; $5108: $83
    jr c, jr_031_5151                             ; $5109: $38 $46

    ld d, b                                       ; $510B: $50
    dec de                                        ; $510C: $1B
    sbc b                                         ; $510D: $98
    add b                                         ; $510E: $80
    rst RST_20                                    ; $510F: $E7
    nop                                           ; $5110: $00
    pop de                                        ; $5111: $D1
    cp $00                                        ; $5112: $FE $00
    pop af                                        ; $5114: $F1
    dec d                                         ; $5115: $15
    adc a                                         ; $5116: $8F
    ccf                                           ; $5117: $3F
    rrca                                          ; $5118: $0F
    ld [de], a                                    ; $5119: $12
    rra                                           ; $511A: $1F

jr_031_511B:
    ld de, $117F                                  ; $511B: $11 $7F $11
    push hl                                       ; $511E: $E5
    ld b, b                                       ; $511F: $40
    db $10                                        ; $5120: $10
    pop af                                        ; $5121: $F1
    rst RST_08                                    ; $5122: $CF
    rst RST_28                                    ; $5123: $EF
    inc de                                        ; $5124: $13
    rst RST_18                                    ; $5125: $DF
    inc b                                         ; $5126: $04
    ld l, l                                       ; $5127: $6D
    sbc a                                         ; $5128: $9F
    db $10                                        ; $5129: $10
    pop af                                        ; $512A: $F1
    rst RST_38                                    ; $512B: $FF
    inc c                                         ; $512C: $0C
    pop af                                        ; $512D: $F1
    cp $0C                                        ; $512E: $FE $0C
    add b                                         ; $5130: $80
    pop af                                        ; $5131: $F1
    ld c, b                                       ; $5132: $48

jr_031_5133:
    nop                                           ; $5133: $00
    ld e, e                                       ; $5134: $5B
    nop                                           ; $5135: $00
    nop                                           ; $5136: $00
    ld a, a                                       ; $5137: $7F
    inc c                                         ; $5138: $0C
    pop af                                        ; $5139: $F1
    rst RST_38                                    ; $513A: $FF
    inc c                                         ; $513B: $0C
    rst RST_38                                    ; $513C: $FF
    ldh [c], a                                    ; $513D: $E2
    rst RST_38                                    ; $513E: $FF
    rst RST_38                                    ; $513F: $FF
    pop af                                        ; $5140: $F1
    and c                                         ; $5141: $A1
    add c                                         ; $5142: $81
    ld b, b                                       ; $5143: $40
    jr nc, jr_031_5187                            ; $5144: $30 $41

    ld h, d                                       ; $5146: $62
    ld bc, $1231                                  ; $5147: $01 $31 $12
    ld [bc], a                                    ; $514A: $02
    ld d, b                                       ; $514B: $50
    rla                                           ; $514C: $17
    pop af                                        ; $514D: $F1
    db $FC                                        ; $514E: $FC
    sub b                                         ; $514F: $90
    nop                                           ; $5150: $00

jr_031_5151:
    ld a, [$31F8]                                 ; $5151: $FA $F8 $31
    ld a, [hl-]                                   ; $5154: $3A
    jr c, jr_031_5133                             ; $5155: $38 $DC

    inc e                                         ; $5157: $1C
    dec d                                         ; $5158: $15
    xor $0E                                       ; $5159: $EE $0E
    ld [hl], b                                    ; $515B: $70
    ret nc                                        ; $515C: $D0

    ld a, a                                       ; $515D: $7F
    ld c, $FF                                     ; $515E: $0E $FF
    rrca                                          ; $5160: $0F
    xor b                                         ; $5161: $A8
    inc b                                         ; $5162: $04
    db $FD                                        ; $5163: $FD
    nop                                           ; $5164: $00
    ld a, [$FB01]                                 ; $5165: $FA $01 $FB
    ldh a, [c]                                    ; $5168: $F2
    di                                            ; $5169: $F3
    inc d                                         ; $516A: $14
    add sp, -$15                                  ; $516B: $E8 $EB
    rst RST_28                                    ; $516D: $EF
    nop                                           ; $516E: $00
    sub $00                                       ; $516F: $D6 $00
    and c                                         ; $5171: $A1
    or c                                          ; $5172: $B1
    ld [$6744], sp                                ; $5173: $08 $44 $67
    nop                                           ; $5176: $00
    xor $10                                       ; $5177: $EE $10
    ld h, c                                       ; $5179: $61
    ld c, $87                                     ; $517A: $0E $87
    inc d                                         ; $517C: $14
    inc l                                         ; $517D: $2C
    sbc a                                         ; $517E: $9F
    rst RST_38                                    ; $517F: $FF
    nop                                           ; $5180: $00
    rra                                           ; $5181: $1F
    nop                                           ; $5182: $00
    adc h                                         ; $5183: $8C
    db $EC                                        ; $5184: $EC
    dec b                                         ; $5185: $05
    dec de                                        ; $5186: $1B

jr_031_5187:
    sbc e                                         ; $5187: $9B
    inc b                                         ; $5188: $04
    rlca                                          ; $5189: $07
    jp hl                                         ; $518A: $E9


    ldh [$FFF3], a                                ; $518B: $E0 $F3
    ld b, b                                       ; $518D: $40
    nop                                           ; $518E: $00
    ei                                            ; $518F: $FB
    nop                                           ; $5190: $00
    inc d                                         ; $5191: $14
    rla                                           ; $5192: $17
    sbc d                                         ; $5193: $9A
    sub e                                         ; $5194: $93
    dec c                                         ; $5195: $0D
    ld bc, $0544                                  ; $5196: $01 $44 $05
    ret nz                                        ; $5199: $C0

    ld h, l                                       ; $519A: $65
    adc c                                         ; $519B: $89
    push bc                                       ; $519C: $C5
    ld d, b                                       ; $519D: $50
    add c                                         ; $519E: $81
    ld de, $E084                                  ; $519F: $11 $84 $E0
    rrca                                          ; $51A2: $0F
    ld [hl], $80                                  ; $51A3: $36 $80
    jr nc, @+$14                                  ; $51A5: $30 $12

    db $10                                        ; $51A7: $10
    ret nz                                        ; $51A8: $C0

    xor d                                         ; $51A9: $AA
    dec d                                         ; $51AA: $15
    inc e                                         ; $51AB: $1C
    db $10                                        ; $51AC: $10
    ld a, a                                       ; $51AD: $7F
    ld c, $FF                                     ; $51AE: $0E $FF
    ld [bc], a                                    ; $51B0: $02
    cp $AA                                        ; $51B1: $FE $AA
    nop                                           ; $51B3: $00
    db $F4                                        ; $51B4: $F4
    nop                                           ; $51B5: $00
    jp hl                                         ; $51B6: $E9


    nop                                           ; $51B7: $00
    ldh [rNR10], a                                ; $51B8: $E0 $10
    ret nc                                        ; $51BA: $D0

    inc b                                         ; $51BB: $04
    pop de                                        ; $51BC: $D1
    jp nz, $E8D2                                  ; $51BD: $C2 $D2 $E8

    db $EB                                        ; $51C0: $EB
    db $10                                        ; $51C1: $10
    db $EC                                        ; $51C2: $EC
    nop                                           ; $51C3: $00
    nop                                           ; $51C4: $00
    ld c, $C0                                     ; $51C5: $0E $C0
    add $90                                       ; $51C7: $C6 $90
    ld de, $0580                                  ; $51C9: $11 $80 $05
    call nz, Call_000_1501                        ; $51CC: $C4 $01 $15
    inc c                                         ; $51CF: $0C
    db $DD                                        ; $51D0: $DD
    ld e, h                                       ; $51D1: $5C
    ccf                                           ; $51D2: $3F
    or b                                          ; $51D3: $B0
    ld [hl], b                                    ; $51D4: $70
    ld d, b                                       ; $51D5: $50
    nop                                           ; $51D6: $00
    rrca                                          ; $51D7: $0F
    ld a, b                                       ; $51D8: $78
    ld hl, sp+$66                                 ; $51D9: $F8 $66
    and $D8                                       ; $51DB: $E6 $D8
    reti                                          ; $51DD: $D9


    add h                                         ; $51DE: $84
    ld [de], a                                    ; $51DF: $12
    add a                                         ; $51E0: $87
    db $FC                                        ; $51E1: $FC
    rst RST_38                                    ; $51E2: $FF
    ret nz                                        ; $51E3: $C0

    add b                                         ; $51E4: $80
    rlca                                          ; $51E5: $07
    nop                                           ; $51E6: $00
    inc l                                         ; $51E7: $2C
    ld b, $C8                                     ; $51E8: $06 $C8
    inc c                                         ; $51EA: $0C
    ld l, b                                       ; $51EB: $68
    inc b                                         ; $51EC: $04
    add sp, $60                                   ; $51ED: $E8 $60
    db $10                                        ; $51EF: $10
    db $10                                        ; $51F0: $10
    db $10                                        ; $51F1: $10
    rst RST_20                                    ; $51F2: $E7
    ld [$F0F0], sp                                ; $51F3: $08 $F0 $F0
    ld [hl], c                                    ; $51F6: $71
    add d                                         ; $51F7: $82
    or h                                          ; $51F8: $B4
    ld e, d                                       ; $51F9: $5A
    ld de, $DA80                                  ; $51FA: $11 $80 $DA
    nop                                           ; $51FD: $00
    ld de, $0198                                  ; $51FE: $11 $98 $01
    ld b, b                                       ; $5201: $40

Jump_031_5202:
    nop                                           ; $5202: $00
    ld d, h                                       ; $5203: $54
    ret nz                                        ; $5204: $C0

    nop                                           ; $5205: $00
    inc c                                         ; $5206: $0C
    or b                                          ; $5207: $B0
    ld [bc], a                                    ; $5208: $02
    nop                                           ; $5209: $00
    ld a, [bc]                                    ; $520A: $0A
    add d                                         ; $520B: $82
    sub h                                         ; $520C: $94

jr_031_520D:
    ld de, $C23A                                  ; $520D: $11 $3A $C2
    ld de, $B070                                  ; $5210: $11 $70 $B0
    jr nz, jr_031_5215                            ; $5213: $20 $00

jr_031_5215:
    ld d, l                                       ; $5215: $55
    ld a, a                                       ; $5216: $7F
    ld [bc], a                                    ; $5217: $02
    ld a, [hl]                                    ; $5218: $7E
    nop                                           ; $5219: $00
    ld a, l                                       ; $521A: $7D
    nop                                           ; $521B: $00
    ld a, e                                       ; $521C: $7B
    nop                                           ; $521D: $00
    ld d, h                                       ; $521E: $54
    ld [hl], a                                    ; $521F: $77
    nop                                           ; $5220: $00
    ld l, a                                       ; $5221: $6F
    nop                                           ; $5222: $00
    ld l, h                                       ; $5223: $6C
    db $10                                        ; $5224: $10
    call nz, Call_000_00C6                        ; $5225: $C4 $C6 $00
    ld c, b                                       ; $5228: $48
    ld c, [hl]                                    ; $5229: $4E
    ld [$018C], sp                                ; $522A: $08 $8C $01
    adc d                                         ; $522D: $8A
    ld [bc], a                                    ; $522E: $02
    add l                                         ; $522F: $85
    xor b                                         ; $5230: $A8
    jr nc, @-$73                                  ; $5231: $30 $8B

    db $10                                        ; $5233: $10
    push de                                       ; $5234: $D5
    db $10                                        ; $5235: $10
    ld e, l                                       ; $5236: $5D
    dec c                                         ; $5237: $0D
    dec l                                         ; $5238: $2D
    jr jr_031_5240                                ; $5239: $18 $05

    ld h, l                                       ; $523B: $65
    nop                                           ; $523C: $00
    nop                                           ; $523D: $00
    ld [hl], b                                    ; $523E: $70
    ret nz                                        ; $523F: $C0

jr_031_5240:
    ldh [$FFD6], a                                ; $5240: $E0 $D6
    add hl, hl                                    ; $5242: $29
    ldh a, [c]                                    ; $5243: $F2
    db $DB                                        ; $5244: $DB
    ldh [$FFF9], a                                ; $5245: $E0 $F9
    nop                                           ; $5247: $00
    or h                                          ; $5248: $B4
    ldh a, [rP1]                                  ; $5249: $F0 $00
    ld a, d                                       ; $524B: $7A
    add b                                         ; $524C: $80
    nop                                           ; $524D: $00
    pop af                                        ; $524E: $F1
    ldh [rNR10], a                                ; $524F: $E0 $10
    ld [hl], b                                    ; $5251: $70
    db $10                                        ; $5252: $10
    cp b                                          ; $5253: $B8
    add e                                         ; $5254: $83
    db $10                                        ; $5255: $10
    sbc h                                         ; $5256: $9C
    ld b, b                                       ; $5257: $40
    dec de                                        ; $5258: $1B
    jp $F008                                      ; $5259: $C3 $08 $F0


    ld h, b                                       ; $525C: $60

jr_031_525D:
    add b                                         ; $525D: $80
    db $10                                        ; $525E: $10
    inc d                                         ; $525F: $14
    ld h, h                                       ; $5260: $64
    ld d, $66                                     ; $5261: $16 $66
    rla                                           ; $5263: $17
    rst RST_20                                    ; $5264: $E7
    inc hl                                        ; $5265: $23
    xor c                                         ; $5266: $A9
    or b                                          ; $5267: $B0
    ld bc, $C000                                  ; $5268: $01 $00 $C0
    nop                                           ; $526B: $00
    ldh [$FFEC], a                                ; $526C: $E0 $EC
    ldh [rSB], a                                  ; $526E: $E0 $01
    or $70                                        ; $5270: $F6 $70
    di                                            ; $5272: $F3
    inc b                                         ; $5273: $04
    ld h, c                                       ; $5274: $61
    adc h                                         ; $5275: $8C
    add b                                         ; $5276: $80
    sub b                                         ; $5277: $90
    jr z, jr_031_525D                             ; $5278: $28 $E3

    add sp, $10                                   ; $527A: $E8 $10
    inc bc                                        ; $527C: $03
    ld b, b                                       ; $527D: $40
    nop                                           ; $527E: $00
    ld c, $02                                     ; $527F: $0E $02
    inc b                                         ; $5281: $04

jr_031_5282:
    jr jr_031_528E                                ; $5282: $18 $0A

    sub b                                         ; $5284: $90
    ld [$10C0], sp                                ; $5285: $08 $C0 $10
    ld h, d                                       ; $5288: $62
    add d                                         ; $5289: $82
    nop                                           ; $528A: $00
    jr nz, jr_031_520D                            ; $528B: $20 $80

    inc [hl]                                      ; $528D: $34

jr_031_528E:
    add h                                         ; $528E: $84
    jr nc, jr_031_52E9                            ; $528F: $30 $58

    ld e, h                                       ; $5291: $5C
    ld d, b                                       ; $5292: $50
    call nz, $4020                                ; $5293: $C4 $20 $40
    jr c, jr_031_52BB                             ; $5296: $38 $23

    inc sp                                        ; $5298: $33
    ret nz                                        ; $5299: $C0

    scf                                           ; $529A: $37
    db $10                                        ; $529B: $10
    ld b, d                                       ; $529C: $42
    jr @-$4D                                      ; $529D: $18 $B1

    ld c, h                                       ; $529F: $4C
    ld c, a                                       ; $52A0: $4F
    nop                                           ; $52A1: $00

jr_031_52A2:
    ld a, [bc]                                    ; $52A2: $0A
    db $10                                        ; $52A3: $10
    ld c, $CD                                     ; $52A4: $0E $CD
    stop                                          ; $52A6: $10 $00
    db $FC                                        ; $52A8: $FC
    cp $21                                        ; $52A9: $FE $21
    db $10                                        ; $52AB: $10
    ld [bc], a                                    ; $52AC: $02
    or d                                          ; $52AD: $B2
    ld b, b                                       ; $52AE: $40
    ld c, [hl]                                    ; $52AF: $4E
    ld h, b                                       ; $52B0: $60
    halt                                          ; $52B1: $76
    ld h, h                                       ; $52B2: $64
    ld a, [hl]                                    ; $52B3: $7E
    ld a, b                                       ; $52B4: $78
    ld l, b                                       ; $52B5: $68
    ld h, a                                       ; $52B6: $67
    ld [$5847], sp                                ; $52B7: $08 $47 $58
    rra                                           ; $52BA: $1F

jr_031_52BB:
    ld h, b                                       ; $52BB: $60
    nop                                           ; $52BC: $00
    ld sp, hl                                     ; $52BD: $F9
    db $ED                                        ; $52BE: $ED
    pop hl                                        ; $52BF: $E1
    ld bc, $87DA                                  ; $52C0: $01 $DA $87
    rst RST_20                                    ; $52C3: $E7
    adc b                                         ; $52C4: $88
    add sp, $06                                   ; $52C5: $E8 $06
    ld h, $30                                     ; $52C7: $26 $30
    nop                                           ; $52C9: $00
    ret z                                         ; $52CA: $C8

    rlca                                          ; $52CB: $07
    daa                                           ; $52CC: $27
    set 4, e                                      ; $52CD: $CB $E3
    sbc h                                         ; $52CF: $9C
    ret nz                                        ; $52D0: $C0

    jr nc, @+$1A                                  ; $52D1: $30 $18

    add b                                         ; $52D3: $80
    call nz, $D0E4                                ; $52D4: $C4 $E4 $D0
    nop                                           ; $52D7: $00
    sub e                                         ; $52D8: $93
    db $DB                                        ; $52D9: $DB
    ld bc, $00C0                                  ; $52DA: $01 $C0 $00
    and b                                         ; $52DD: $A0
    ldh [rDIV], a                                 ; $52DE: $E0 $04
    jp Jump_000_000F                              ; $52E0: $C3 $0F $00


    db $10                                        ; $52E3: $10
    jr nz, @+$10                                  ; $52E4: $20 $0E

    inc c                                         ; $52E6: $0C
    jr nc, @+$74                                  ; $52E7: $30 $72

jr_031_52E9:
    ld [hl], b                                    ; $52E9: $70
    and $F0                                       ; $52EA: $E6 $F0
    pop bc                                        ; $52EC: $C1
    add [hl]                                      ; $52ED: $86
    ret nc                                        ; $52EE: $D0

    add hl, bc                                    ; $52EF: $09
    call z, $1C18                                 ; $52F0: $CC $18 $1C
    ld de, $78A0                                  ; $52F3: $11 $A0 $78
    ld a, [de]                                    ; $52F6: $1A
    ld c, b                                       ; $52F7: $48
    jr nc, jr_031_5282                            ; $52F8: $30 $88

    ld b, b                                       ; $52FA: $40
    ld de, $F010                                  ; $52FB: $11 $10 $F0
    ret nz                                        ; $52FE: $C0

    ld b, b                                       ; $52FF: $40
    nop                                           ; $5300: $00
    nop                                           ; $5301: $00
    ld d, $02                                     ; $5302: $16 $02
    inc [hl]                                      ; $5304: $34
    jr jr_031_5327                                ; $5305: $18 $20

    ld c, a                                       ; $5307: $4F
    and c                                         ; $5308: $A1
    nop                                           ; $5309: $00
    rlca                                          ; $530A: $07
    nop                                           ; $530B: $00
    inc hl                                        ; $530C: $23
    ld b, e                                       ; $530D: $43
    ld h, l                                       ; $530E: $65
    ld bc, $06E1                                  ; $530F: $01 $E1 $06
    ld c, e                                       ; $5312: $4B
    ld d, b                                       ; $5313: $50
    ld e, e                                       ; $5314: $5B
    ld b, b                                       ; $5315: $40
    ld h, b                                       ; $5316: $60
    nop                                           ; $5317: $00
    ld h, b                                       ; $5318: $60
    push de                                       ; $5319: $D5
    ld [hl+], a                                   ; $531A: $22
    inc bc                                        ; $531B: $03

jr_031_531C:
    adc e                                         ; $531C: $8B
    jr nc, jr_031_52A2                            ; $531D: $30 $83

    ld [$108C], sp                                ; $531F: $08 $8C $10
    adc [hl]                                      ; $5322: $8E
    inc e                                         ; $5323: $1C
    inc b                                         ; $5324: $04
    ld b, $02                                     ; $5325: $06 $02

jr_031_5327:
    nop                                           ; $5327: $00
    sub b                                         ; $5328: $90
    nop                                           ; $5329: $00
    and c                                         ; $532A: $A1
    halt                                          ; $532B: $76
    ld a, [hl-]                                   ; $532C: $3A
    add b                                         ; $532D: $80
    call z, Call_000_2040                         ; $532E: $CC $40 $20
    db $10                                        ; $5331: $10
    jr nc, @+$12                                  ; $5332: $30 $10

    db $10                                        ; $5334: $10
    ret z                                         ; $5335: $C8

    or c                                          ; $5336: $B1
    rlca                                          ; $5337: $07
    rla                                           ; $5338: $17
    jr nz, jr_031_531C                            ; $5339: $20 $E1

    ld b, l                                       ; $533B: $45
    adc b                                         ; $533C: $88
    call Call_000_30AA                            ; $533D: $CD $AA $30
    db $10                                        ; $5340: $10
    ld [hl], b                                    ; $5341: $70
    scf                                           ; $5342: $37
    jp nc, Jump_000_1018                          ; $5343: $D2 $18 $10

    call c, $10AE                                 ; $5346: $DC $AE $10
    ld c, $10                                     ; $5349: $0E $10
    or $12                                        ; $534B: $F6 $12
    ld d, c                                       ; $534D: $51
    sub c                                         ; $534E: $91
    ld bc, $10A2                                  ; $534F: $01 $A2 $10
    ei                                            ; $5352: $FB
    db $10                                        ; $5353: $10
    rst RST_20                                    ; $5354: $E7
    db $10                                        ; $5355: $10
    ld h, a                                       ; $5356: $67
    db $10                                        ; $5357: $10
    ld c, [hl]                                    ; $5358: $4E
    ld b, l                                       ; $5359: $45
    ld hl, $8C13                                  ; $535A: $21 $13 $8C
    ld h, b                                       ; $535D: $60
    add d                                         ; $535E: $82
    ret nc                                        ; $535F: $D0

    cp $10                                        ; $5360: $FE $10
    nop                                           ; $5362: $00
    ld hl, sp+$06                                 ; $5363: $F8 $06
    jp z, Jump_031_5A34                           ; $5365: $CA $34 $5A

    and h                                         ; $5368: $A4
    ret c                                         ; $5369: $D8

    jr nz, jr_031_5381                            ; $536A: $20 $15

    jp nz, Jump_000_2402                          ; $536C: $C2 $02 $24

    nop                                           ; $536F: $00
    ld a, a                                       ; $5370: $7F
    inc c                                         ; $5371: $0C
    nop                                           ; $5372: $00
    nop                                           ; $5373: $00
    ld l, b                                       ; $5374: $68
    ld a, [hl]                                    ; $5375: $7E
    nop                                           ; $5376: $00
    ld hl, $00BF                                  ; $5377: $21 $BF $00
    ret nz                                        ; $537A: $C0

    rst RST_18                                    ; $537B: $DF
    ldh [$FFB0], a                                ; $537C: $E0 $B0
    nop                                           ; $537E: $00
    rst RST_38                                    ; $537F: $FF
    ld [bc], a                                    ; $5380: $02

jr_031_5381:
    pop af                                        ; $5381: $F1
    ld [de], a                                    ; $5382: $12
    sub d                                         ; $5383: $92
    inc c                                         ; $5384: $0C
    adc h                                         ; $5385: $8C
    xor l                                         ; $5386: $AD
    ld b, b                                       ; $5387: $40
    ld b, c                                       ; $5388: $41
    db $10                                        ; $5389: $10
    cp [hl]                                       ; $538A: $BE
    sub c                                         ; $538B: $91
    push af                                       ; $538C: $F5
    ld b, b                                       ; $538D: $40
    nop                                           ; $538E: $00
    and l                                         ; $538F: $A5
    jr nz, @+$12                                  ; $5390: $20 $10

    db $10                                        ; $5392: $10
    ldh [rTAC], a                                 ; $5393: $E0 $07
    nop                                           ; $5395: $00
    ld a, a                                       ; $5396: $7F
    nop                                           ; $5397: $00
    ld hl, sp-$0B                                 ; $5398: $F8 $F5
    ld bc, $1052                                  ; $539A: $01 $52 $10
    pop de                                        ; $539D: $D1
    add b                                         ; $539E: $80
    cp a                                          ; $539F: $BF
    ret nz                                        ; $53A0: $C0

    sub $00                                       ; $53A1: $D6 $00
    di                                            ; $53A3: $F3
    ld [bc], a                                    ; $53A4: $02
    nop                                           ; $53A5: $00
    pop af                                        ; $53A6: $F1
    nop                                           ; $53A7: $00
    ld b, b                                       ; $53A8: $40
    ldh a, [$FF7A]                                ; $53A9: $F0 $7A
    ld hl, sp+$00                                 ; $53AB: $F8 $00
    jr nc, @-$4C                                  ; $53AD: $30 $B2

    di                                            ; $53AF: $F3
    ld e, b                                       ; $53B0: $58
    nop                                           ; $53B1: $00
    add b                                         ; $53B2: $80
    ld b, d                                       ; $53B3: $42
    add [hl]                                      ; $53B4: $86
    ld b, b                                       ; $53B5: $40
    jr jr_031_53BE                                ; $53B6: $18 $06

    and $1E                                       ; $53B8: $E6 $1E
    nop                                           ; $53BA: $00
    cp $C0                                        ; $53BB: $FE $C0
    ld [bc], a                                    ; $53BD: $02

jr_031_53BE:
    pop af                                        ; $53BE: $F1
    ld a, $00                                     ; $53BF: $3E $00
    ld e, e                                       ; $53C1: $5B
    nop                                           ; $53C2: $00
    nop                                           ; $53C3: $00
    ld a, a                                       ; $53C4: $7F
    inc c                                         ; $53C5: $0C
    pop af                                        ; $53C6: $F1
    rst RST_38                                    ; $53C7: $FF
    inc c                                         ; $53C8: $0C
    rst RST_38                                    ; $53C9: $FF
    and b                                         ; $53CA: $A0
    di                                            ; $53CB: $F3
    cp $00                                        ; $53CC: $FE $00
    ld hl, sp-$07                                 ; $53CE: $F8 $F9
    ldh [$FFE7], a                                ; $53D0: $E0 $E7
    jp $DC1A                                      ; $53D2: $C3 $1A $DC


    add a                                         ; $53D5: $87
    cp b                                          ; $53D6: $B8
    ld de, $80F1                                  ; $53D7: $11 $F1 $80
    ld b, b                                       ; $53DA: $40
    rlca                                          ; $53DB: $07
    ld a, [bc]                                    ; $53DC: $0A
    ld a, b                                       ; $53DD: $78
    ccf                                           ; $53DE: $3F
    ret nz                                        ; $53DF: $C0

    rst RST_38                                    ; $53E0: $FF
    ld [hl], b                                    ; $53E1: $70
    cp $10                                        ; $53E2: $FE $10
    ld sp, hl                                     ; $53E4: $F9
    or d                                          ; $53E5: $B2
    db $10                                        ; $53E6: $10
    pop hl                                        ; $53E7: $E1
    pop hl                                        ; $53E8: $E1
    nop                                           ; $53E9: $00
    ld a, a                                       ; $53EA: $7F
    add b                                         ; $53EB: $80
    or c                                          ; $53EC: $B1
    ld hl, sp-$56                                 ; $53ED: $F8 $AA
    db $10                                        ; $53EF: $10
    rst RST_00                                    ; $53F0: $C7
    db $10                                        ; $53F1: $10
    ccf                                           ; $53F2: $3F
    db $10                                        ; $53F3: $10
    dec sp                                        ; $53F4: $3B
    db $10                                        ; $53F5: $10
    add d                                         ; $53F6: $82
    add d                                         ; $53F7: $82
    ldh a, [c]                                    ; $53F8: $F2
    sbc $1E                                       ; $53F9: $DE $1E
    xor [hl]                                      ; $53FB: $AE
    ld c, $6E                                     ; $53FC: $0E $6E
    ld [de], a                                    ; $53FE: $12
    ld [hl], $55                                  ; $53FF: $36 $55
    ld b, $11                                     ; $5401: $06 $11
    or [hl]                                       ; $5403: $B6
    db $10                                        ; $5404: $10
    ld a, a                                       ; $5405: $7F
    ld c, $FF                                     ; $5406: $0E $FF
    rrca                                          ; $5408: $0F
    and b                                         ; $5409: $A0
    ld a, [bc]                                    ; $540A: $0A
    db $FC                                        ; $540B: $FC
    nop                                           ; $540C: $00
    ldh a, [$FFF3]                                ; $540D: $F0 $F3
    rst RST_00                                    ; $540F: $C7
    ret c                                         ; $5410: $D8

    ldh [c], a                                    ; $5411: $E2
    ld d, b                                       ; $5412: $50
    db $EC                                        ; $5413: $EC
    ld d, b                                       ; $5414: $50
    db $F4                                        ; $5415: $F4
    db $10                                        ; $5416: $10
    pop af                                        ; $5417: $F1
    ldh [$FFE6], a                                ; $5418: $E0 $E6
    add b                                         ; $541A: $80
    ld [bc], a                                    ; $541B: $02
    adc [hl]                                      ; $541C: $8E
    nop                                           ; $541D: $00
    ccf                                           ; $541E: $3F
    ld bc, $99FE                                  ; $541F: $01 $FE $99
    ld b, b                                       ; $5422: $40
    inc a                                         ; $5423: $3C
    ld a, [hl+]                                   ; $5424: $2A
    ld b, b                                       ; $5425: $40
    ld a, [hl]                                    ; $5426: $7E
    and b                                         ; $5427: $A0
    rst RST_38                                    ; $5428: $FF
    ld d, b                                       ; $5429: $50
    di                                            ; $542A: $F3
    db $10                                        ; $542B: $10
    db $ED                                        ; $542C: $ED
    xor d                                         ; $542D: $AA
    db $10                                        ; $542E: $10
    ld l, l                                       ; $542F: $6D
    db $10                                        ; $5430: $10
    or e                                          ; $5431: $B3
    db $10                                        ; $5432: $10
    cp $10                                        ; $5433: $FE $10
    or $AA                                        ; $5435: $F6 $AA
    db $10                                        ; $5437: $10
    inc b                                         ; $5438: $04
    db $10                                        ; $5439: $10
    db $FC                                        ; $543A: $FC
    db $10                                        ; $543B: $10
    ld a, [$F712]                                 ; $543C: $FA $12 $F7
    and e                                         ; $543F: $A3
    db $10                                        ; $5440: $10
    push af                                       ; $5441: $F5
    db $10                                        ; $5442: $10
    cp d                                          ; $5443: $BA
    ld [bc], a                                    ; $5444: $02
    ld a, [hl-]                                   ; $5445: $3A
    ld [de], a                                    ; $5446: $12
    ld d, c                                       ; $5447: $51
    push de                                       ; $5448: $D5
    ld [hl], e                                    ; $5449: $73
    ld d, e                                       ; $544A: $53
    ld a, a                                       ; $544B: $7F
    ld c, $FF                                     ; $544C: $0E $FF
    ld [$00FE], sp                                ; $544E: $08 $FE $00
    nop                                           ; $5451: $00
    db $FC                                        ; $5452: $FC
    db $FD                                        ; $5453: $FD
    ld hl, sp-$05                                 ; $5454: $F8 $FB
    ldh [$FFEF], a                                ; $5456: $E0 $EF
    ret nz                                        ; $5458: $C0

    rst RST_18                                    ; $5459: $DF
    add b                                         ; $545A: $80
    ld de, $9F80                                  ; $545B: $11 $80 $9F
    ld bc, $034E                                  ; $545E: $01 $4E $03
    db $E4                                        ; $5461: $E4
    rlca                                          ; $5462: $07
    ld [hl-], a                                   ; $5463: $32
    ldh a, [$FF0B]                                ; $5464: $F0 $0B
    db $10                                        ; $5466: $10
    ld d, b                                       ; $5467: $50
    db $FC                                        ; $5468: $FC
    rrca                                          ; $5469: $0F
    jr nc, jr_031_54AB                            ; $546A: $30 $3F

    dec d                                         ; $546C: $15
    ret nz                                        ; $546D: $C0

    rst RST_38                                    ; $546E: $FF
    nop                                           ; $546F: $00
    rla                                           ; $5470: $17
    rst RST_08                                    ; $5471: $CF
    db $10                                        ; $5472: $10
    pop af                                        ; $5473: $F1
    db $10                                        ; $5474: $10
    ld d, l                                       ; $5475: $55
    db $FD                                        ; $5476: $FD
    ld [de], a                                    ; $5477: $12
    cp $12                                        ; $5478: $FE $12
    db $FC                                        ; $547A: $FC
    ld [hl], d                                    ; $547B: $72
    ld [$5510], a                                 ; $547C: $EA $10 $55
    jp c, $BD10                                   ; $547F: $DA $10 $BD

    db $10                                        ; $5482: $10
    ld b, b                                       ; $5483: $40
    db $10                                        ; $5484: $10
    ld a, $F2                                     ; $5485: $3E $F2
    ld b, h                                       ; $5487: $44
    rst RST_38                                    ; $5488: $FF
    ld [de], a                                    ; $5489: $12
    cp d                                          ; $548A: $BA
    ld [bc], a                                    ; $548B: $02
    ld a, d                                       ; $548C: $7A
    db $10                                        ; $548D: $10
    halt                                          ; $548E: $76
    ld b, $75                                     ; $548F: $06 $75
    ld c, $00                                     ; $5491: $0E $00
    ret nc                                        ; $5493: $D0

    ld [bc], a                                    ; $5494: $02
    ld a, [hl]                                    ; $5495: $7E
    ld [bc], a                                    ; $5496: $02
    ld a, a                                       ; $5497: $7F
    ld c, $0C                                     ; $5498: $0E $0C
    ld hl, sp-$05                                 ; $549A: $F8 $FB
    db $FC                                        ; $549C: $FC
    db $FD                                        ; $549D: $FD
    jr nc, jr_031_54A0                            ; $549E: $30 $00

jr_031_54A0:
    ldh a, [$FFF6]                                ; $54A0: $F0 $F6
    nop                                           ; $54A2: $00
    ldh [$FFEF], a                                ; $54A3: $E0 $EF
    pop bc                                        ; $54A5: $C1
    sbc $C3                                       ; $54A6: $DE $C3
    call c, $B887                                 ; $54A8: $DC $87 $B8

jr_031_54AB:
    ld h, b                                       ; $54AB: $60
    dec e                                         ; $54AC: $1D
    add b                                         ; $54AD: $80
    ld de, $C03E                                  ; $54AE: $11 $3E $C0
    ld a, [hl]                                    ; $54B1: $7E
    nop                                           ; $54B2: $00
    ccf                                           ; $54B3: $3F
    xor d                                         ; $54B4: $AA
    db $10                                        ; $54B5: $10
    sbc a                                         ; $54B6: $9F
    db $10                                        ; $54B7: $10
    rst RST_18                                    ; $54B8: $DF
    db $10                                        ; $54B9: $10
    db $EC                                        ; $54BA: $EC
    db $10                                        ; $54BB: $10
    rst RST_38                                    ; $54BC: $FF
    xor d                                         ; $54BD: $AA
    inc d                                         ; $54BE: $14
    db $FC                                        ; $54BF: $FC
    db $10                                        ; $54C0: $10
    di                                            ; $54C1: $F3
    db $10                                        ; $54C2: $10
    rst RST_08                                    ; $54C3: $CF
    db $10                                        ; $54C4: $10
    ccf                                           ; $54C5: $3F
    xor d                                         ; $54C6: $AA
    sub d                                         ; $54C7: $92
    ei                                            ; $54C8: $FB
    sub d                                         ; $54C9: $92
    add e                                         ; $54CA: $83
    db $10                                        ; $54CB: $10
    ld h, a                                       ; $54CC: $67
    db $10                                        ; $54CD: $10
    rst RST_20                                    ; $54CE: $E7
    xor d                                         ; $54CF: $AA
    db $10                                        ; $54D0: $10
    rst RST_10                                    ; $54D1: $D7
    inc d                                         ; $54D2: $14
    rst RST_38                                    ; $54D3: $FF
    inc d                                         ; $54D4: $14
    cp $10                                        ; $54D5: $FE $10
    db $FD                                        ; $54D7: $FD
    ld a, [bc]                                    ; $54D8: $0A
    ld bc, $03FB                                  ; $54D9: $01 $FB $03
    db $E3                                        ; $54DC: $E3
    db $10                                        ; $54DD: $10
    dec bc                                        ; $54DE: $0B
    db $10                                        ; $54DF: $10
    ld a, [hl]                                    ; $54E0: $7E
    ld [$F004], a                                 ; $54E1: $EA $04 $F0
    ld [$0C7F], sp                                ; $54E4: $08 $7F $0C
    ld a, h                                       ; $54E7: $7C
    nop                                           ; $54E8: $00
    cp a                                          ; $54E9: $BF
    ld [$CF80], sp                                ; $54EA: $08 $80 $CF
    ret nz                                        ; $54ED: $C0

    rst RST_10                                    ; $54EE: $D7
    db $10                                        ; $54EF: $10
    db $EB                                        ; $54F0: $EB
    ldh [$FFE5], a                                ; $54F1: $E0 $E5
    add b                                         ; $54F3: $80
    db $10                                        ; $54F4: $10
    jp nc, $81C4                                  ; $54F5: $D2 $C4 $81

    sub [hl]                                      ; $54F8: $96
    ld bc, $F21E                                  ; $54F9: $01 $1E $F2
    ld a, [hl+]                                   ; $54FC: $2A
    nop                                           ; $54FD: $00
    xor $10                                       ; $54FE: $EE $10
    reti                                          ; $5500: $D9


    db $10                                        ; $5501: $10
    ret c                                         ; $5502: $D8

    db $10                                        ; $5503: $10
    sbc [hl]                                      ; $5504: $9E
    xor d                                         ; $5505: $AA
    db $10                                        ; $5506: $10
    ld l, $10                                     ; $5507: $2E $10
    ld l, a                                       ; $5509: $6F
    db $10                                        ; $550A: $10
    ld [hl], a                                    ; $550B: $77
    db $10                                        ; $550C: $10
    ld a, a                                       ; $550D: $7F
    xor d                                         ; $550E: $AA
    db $10                                        ; $550F: $10
    ccf                                           ; $5510: $3F
    db $10                                        ; $5511: $10
    sbc a                                         ; $5512: $9F
    db $10                                        ; $5513: $10
    rst RST_18                                    ; $5514: $DF
    ld [de], a                                    ; $5515: $12
    ld e, [hl]                                    ; $5516: $5E
    xor d                                         ; $5517: $AA
    db $10                                        ; $5518: $10
    ld a, [hl]                                    ; $5519: $7E
    db $10                                        ; $551A: $10
    ld a, l                                       ; $551B: $7D
    db $10                                        ; $551C: $10
    or [hl]                                       ; $551D: $B6
    db $10                                        ; $551E: $10
    or l                                          ; $551F: $B5
    xor d                                         ; $5520: $AA
    db $10                                        ; $5521: $10
    ld [hl], a                                    ; $5522: $77
    inc d                                         ; $5523: $14
    and $10                                       ; $5524: $E6 $10
    add l                                         ; $5526: $85
    db $10                                        ; $5527: $10
    scf                                           ; $5528: $37
    adc b                                         ; $5529: $88
    db $10                                        ; $552A: $10
    ei                                            ; $552B: $FB
    inc bc                                        ; $552C: $03
    di                                            ; $552D: $F3
    db $10                                        ; $552E: $10
    rst RST_30                                    ; $552F: $F7
    rlca                                          ; $5530: $07
    rst RST_20                                    ; $5531: $E7
    adc c                                         ; $5532: $89
    db $10                                        ; $5533: $10
    rst RST_08                                    ; $5534: $CF

jr_031_5535:
    rrca                                          ; $5535: $0F
    rra                                           ; $5536: $1F
    nop                                           ; $5537: $00
    cp a                                          ; $5538: $BF
    ccf                                           ; $5539: $3F
    ld bc, $FE50                                  ; $553A: $01 $50 $FE
    ld c, $70                                     ; $553D: $0E $70
    nop                                           ; $553F: $00
    inc h                                         ; $5540: $24
    jr z, jr_031_558B                             ; $5541: $28 $48

    inc de                                        ; $5543: $13
    ld a, [bc]                                    ; $5544: $0A
    ld d, b                                       ; $5545: $50
    inc b                                         ; $5546: $04
    ld h, b                                       ; $5547: $60
    rrca                                          ; $5548: $0F
    db $10                                        ; $5549: $10
    ld [$0E10], sp                                ; $554A: $08 $10 $0E
    nop                                           ; $554D: $00
    ld b, b                                       ; $554E: $40
    ld bc, $0C22                                  ; $554F: $01 $22 $0C

jr_031_5552:
    nop                                           ; $5552: $00
    call nc, $D105                                ; $5553: $D4 $05 $D1
    nop                                           ; $5556: $00
    ld [bc], a                                    ; $5557: $02
    ld e, d                                       ; $5558: $5A
    inc bc                                        ; $5559: $03
    ld e, e                                       ; $555A: $5B
    ld d, c                                       ; $555B: $51
    adc l                                         ; $555C: $8D
    ld [$5086], sp                                ; $555D: $08 $86 $50
    add b                                         ; $5560: $80
    ld h, b                                       ; $5561: $60
    dec de                                        ; $5562: $1B
    ldh [$FFE5], a                                ; $5563: $E0 $E5
    ldh [$FFFA], a                                ; $5565: $E0 $FA
    ld hl, sp+$01                                 ; $5567: $F8 $01
    ld sp, hl                                     ; $5569: $F9
    db $FC                                        ; $556A: $FC
    ld sp, $C13C                                  ; $556B: $31 $3C $C1
    ret nz                                        ; $556E: $C0

    ld bc, $F770                                  ; $556F: $01 $70 $F7
    db $10                                        ; $5572: $10
    ret nc                                        ; $5573: $D0

    add b                                         ; $5574: $80
    db $10                                        ; $5575: $10
    ei                                            ; $5576: $FB
    db $10                                        ; $5577: $10
    ldh a, [rNR10]                                ; $5578: $F0 $10
    ld d, h                                       ; $557A: $54
    ld [hl], a                                    ; $557B: $77
    db $10                                        ; $557C: $10
    ld l, $10                                     ; $557D: $2E $10
    add b                                         ; $557F: $80
    db $10                                        ; $5580: $10

jr_031_5581:
    xor a                                         ; $5581: $AF
    rrca                                          ; $5582: $0F
    dec d                                         ; $5583: $15
    ld e, a                                       ; $5584: $5F
    rra                                           ; $5585: $1F
    rst RST_08                                    ; $5586: $CF
    ld d, b                                       ; $5587: $50
    ld c, $10                                     ; $5588: $0E $10
    db $EC                                        ; $558A: $EC

jr_031_558B:
    db $10                                        ; $558B: $10
    rra                                           ; $558C: $1F
    reti                                          ; $558D: $D9


    ld bc, $0007                                  ; $558E: $01 $07 $00
    ret nz                                        ; $5591: $C0

    nop                                           ; $5592: $00
    ret nz                                        ; $5593: $C0

    ld bc, $9F2A                                  ; $5594: $01 $2A $9F
    ld a, a                                       ; $5597: $7F
    ld [bc], a                                    ; $5598: $02
    rst RST_38                                    ; $5599: $FF
    ld a, [bc]                                    ; $559A: $0A
    cp $0E                                        ; $559B: $FE $0E
    ld hl, $0C20                                  ; $559D: $21 $20 $0C
    ld h, d                                       ; $55A0: $62
    db $10                                        ; $55A1: $10
    ld h, h                                       ; $55A2: $64
    ld [$0061], sp                                ; $55A3: $08 $61 $00
    ld h, b                                       ; $55A6: $60
    ld b, $01                                     ; $55A7: $06 $01
    ld b, d                                       ; $55A9: $42
    add hl, bc                                    ; $55AA: $09
    inc b                                         ; $55AB: $04
    inc de                                        ; $55AC: $13
    ld h, b                                       ; $55AD: $60
    nop                                           ; $55AE: $00
    jr jr_031_5552                                ; $55AF: $18 $A1

    ld [hl], b                                    ; $55B1: $70
    inc h                                         ; $55B2: $24
    jr nz, jr_031_5535                            ; $55B3: $20 $80

    ld a, l                                       ; $55B5: $7D
    dec b                                         ; $55B6: $05
    ld sp, hl                                     ; $55B7: $F9
    ret nz                                        ; $55B8: $C0

    inc c                                         ; $55B9: $0C
    di                                            ; $55BA: $F3
    ld de, $40E1                                  ; $55BB: $11 $E1 $40
    add b                                         ; $55BE: $80
    pop af                                        ; $55BF: $F1
    inc hl                                        ; $55C0: $23
    ret nz                                        ; $55C1: $C0

    ld [$F006], sp                                ; $55C2: $08 $06 $F0
    ld a, [bc]                                    ; $55C5: $0A
    ld [hl], b                                    ; $55C6: $70
    ld h, b                                       ; $55C7: $60
    sbc h                                         ; $55C8: $9C
    and b                                         ; $55C9: $A0
    add e                                         ; $55CA: $83
    ld c, b                                       ; $55CB: $48
    cp h                                          ; $55CC: $BC
    ret nc                                        ; $55CD: $D0

    ld e, e                                       ; $55CE: $5B
    jp Jump_031_4EF1                              ; $55CF: $C3 $F1 $4E


    rrca                                          ; $55D2: $0F
    sub b                                         ; $55D3: $90
    ld [$0810], sp                                ; $55D4: $08 $10 $08
    ld c, $41                                     ; $55D7: $0E $41
    or b                                          ; $55D9: $B0
    ld [hl+], a                                   ; $55DA: $22
    pop bc                                        ; $55DB: $C1
    ld de, $0231                                  ; $55DC: $11 $31 $02
    jr nz, jr_031_5581                            ; $55DF: $20 $A0

    pop af                                        ; $55E1: $F1
    rra                                           ; $55E2: $1F
    sbc a                                         ; $55E3: $9F
    ccf                                           ; $55E4: $3F
    nop                                           ; $55E5: $00
    ld d, d                                       ; $55E6: $52
    cp a                                          ; $55E7: $BF
    inc h                                         ; $55E8: $24
    rrca                                          ; $55E9: $0F
    nop                                           ; $55EA: $00
    daa                                           ; $55EB: $27
    rla                                           ; $55EC: $17
    pop af                                        ; $55ED: $F1
    rst RST_38                                    ; $55EE: $FF
    ret c                                         ; $55EF: $D8

    inc c                                         ; $55F0: $0C
    pop af                                        ; $55F1: $F1
    cp $0C                                        ; $55F2: $FE $0C
    pop af                                        ; $55F4: $F1
    inc sp                                        ; $55F5: $33
    nop                                           ; $55F6: $00
    ld e, e                                       ; $55F7: $5B
    nop                                           ; $55F8: $00
    nop                                           ; $55F9: $00
    ld a, a                                       ; $55FA: $7F
    inc c                                         ; $55FB: $0C
    pop af                                        ; $55FC: $F1
    rst RST_38                                    ; $55FD: $FF
    inc c                                         ; $55FE: $0C
    rst RST_38                                    ; $55FF: $FF

Jump_031_5600:
    push af                                       ; $5600: $F5
    rst RST_38                                    ; $5601: $FF
    rst RST_38                                    ; $5602: $FF
    rst RST_38                                    ; $5603: $FF
    pop af                                        ; $5604: $F1
    cp $0C                                        ; $5605: $FE $0C
    ld a, a                                       ; $5607: $7F
    ld [$6041], sp                                ; $5608: $08 $41 $60
    nop                                           ; $560B: $00
    ld b, b                                       ; $560C: $40
    ld b, e                                       ; $560D: $43
    nop                                           ; $560E: $00
    add hl, de                                    ; $560F: $19
    rst RST_38                                    ; $5610: $FF
    ld a, [bc]                                    ; $5611: $0A
    ld c, a                                       ; $5612: $4F
    ld a, a                                       ; $5613: $7F
    nop                                           ; $5614: $00
    rra                                           ; $5615: $1F
    sbc a                                         ; $5616: $9F
    ei                                            ; $5617: $FB
    rrca                                          ; $5618: $0F
    rrca                                          ; $5619: $0F
    ld bc, $C062                                  ; $561A: $01 $62 $C0
    nop                                           ; $561D: $00
    db $DD                                        ; $561E: $DD
    add b                                         ; $561F: $80
    cp a                                          ; $5620: $BF
    cp $0A                                        ; $5621: $FE $0A
    ld e, $85                                     ; $5623: $1E $85
    nop                                           ; $5625: $00
    ld c, $6E                                     ; $5626: $0E $6E
    ld bc, $1131                                  ; $5628: $01 $31 $11
    nop                                           ; $562B: $00
    db $10                                        ; $562C: $10
    dec h                                         ; $562D: $25
    ld b, b                                       ; $562E: $40
    ld b, e                                       ; $562F: $43
    db $10                                        ; $5630: $10
    ld b, [hl]                                    ; $5631: $46
    ld h, b                                       ; $5632: $60
    nop                                           ; $5633: $00
    ld a, h                                       ; $5634: $7C
    nop                                           ; $5635: $00
    ld b, b                                       ; $5636: $40
    ld a, a                                       ; $5637: $7F
    nop                                           ; $5638: $00
    rrca                                          ; $5639: $0F
    xor a                                         ; $563A: $AF
    add e                                         ; $563B: $83
    and e                                         ; $563C: $A3
    adc b                                         ; $563D: $88
    and h                                         ; $563E: $A4
    ld bc, $2F2C                                  ; $563F: $01 $2C $2F
    dec bc                                        ; $5642: $0B
    ld h, a                                       ; $5643: $67
    db $10                                        ; $5644: $10

jr_031_5645:
    rst RST_08                                    ; $5645: $CF
    nop                                           ; $5646: $00
    ret nz                                        ; $5647: $C0

    inc d                                         ; $5648: $14
    ldh a, [$FFF1]                                ; $5649: $F0 $F1
    rst RST_38                                    ; $564B: $FF
    nop                                           ; $564C: $00
    adc a                                         ; $564D: $8F
    nop                                           ; $564E: $00
    ld bc, $A471                                  ; $564F: $01 $71 $A4
    sub b                                         ; $5652: $90
    ld a, [de]                                    ; $5653: $1A
    db $10                                        ; $5654: $10
    db $DB                                        ; $5655: $DB
    ret c                                         ; $5656: $D8

    db $10                                        ; $5657: $10
    inc d                                         ; $5658: $14
    rst RST_10                                    ; $5659: $D7
    dec [hl]                                      ; $565A: $35
    rlca                                          ; $565B: $07
    or a                                          ; $565C: $B7
    pop af                                        ; $565D: $F1
    ld bc, $00FE                                  ; $565E: $01 $FE $00
    db $FC                                        ; $5661: $FC
    nop                                           ; $5662: $00
    ld b, c                                       ; $5663: $41
    ld [hl], b                                    ; $5664: $70
    nop                                           ; $5665: $00
    ld h, b                                       ; $5666: $60
    ld l, a                                       ; $5667: $6F
    nop                                           ; $5668: $00
    rrca                                          ; $5669: $0F
    ld b, e                                       ; $566A: $43
    jr nz, jr_031_566F                            ; $566B: $20 $02

    add b                                         ; $566D: $80
    or a                                          ; $566E: $B7

jr_031_566F:
    inc bc                                        ; $566F: $03
    inc c                                         ; $5670: $0C
    rlca                                          ; $5671: $07
    ret c                                         ; $5672: $D8

    jr nz, jr_031_5645                            ; $5673: $20 $D0

    ld d, d                                       ; $5675: $52
    add e                                         ; $5676: $83
    sub b                                         ; $5677: $90
    ld h, h                                       ; $5678: $64
    add b                                         ; $5679: $80
    ld h, e                                       ; $567A: $63
    inc b                                         ; $567B: $04
    ret nc                                        ; $567C: $D0

    jr @+$25                                      ; $567D: $18 $23

    inc e                                         ; $567F: $1C
    dec l                                         ; $5680: $2D
    ld de, $2112                                  ; $5681: $11 $12 $21
    ld e, $10                                     ; $5684: $1E $10
    ld [hl], a                                    ; $5686: $77
    ld hl, $2656                                  ; $5687: $21 $56 $26
    ld de, $2252                                  ; $568A: $11 $52 $22
    ld d, h                                       ; $568D: $54
    jr nz, jr_031_56A1                            ; $568E: $20 $11

    push de                                       ; $5690: $D5
    ld d, b                                       ; $5691: $50
    ld [de], a                                    ; $5692: $12
    ld b, b                                       ; $5693: $40
    db $10                                        ; $5694: $10
    ld a, a                                       ; $5695: $7F
    ld c, $FE                                     ; $5696: $0E $FE
    nop                                           ; $5698: $00
    ld b, b                                       ; $5699: $40

jr_031_569A:
    rst RST_38                                    ; $569A: $FF
    inc c                                         ; $569B: $0C
    nop                                           ; $569C: $00
    ld l, a                                       ; $569D: $6F
    add b                                         ; $569E: $80
    sbc a                                         ; $569F: $9F
    ret nz                                        ; $56A0: $C0

jr_031_56A1:
    adc $68                                       ; $56A1: $CE $68
    ldh a, [rP1]                                  ; $56A3: $F0 $00

jr_031_56A5:
    or e                                          ; $56A5: $B3
    cp $02                                        ; $56A6: $FE $02
    ld h, b                                       ; $56A8: $60
    ld l, b                                       ; $56A9: $68
    ld b, d                                       ; $56AA: $42
    nop                                           ; $56AB: $00
    jr z, @-$6C                                   ; $56AC: $28 $92

    ld c, b                                       ; $56AE: $48
    ld h, $10                                     ; $56AF: $26 $10
    inc c                                         ; $56B1: $0C
    ld bc, $1500                                  ; $56B2: $01 $00 $15
    inc bc                                        ; $56B5: $03
    jr nz, jr_031_56D7                            ; $56B6: $20 $1F

    jr nc, @+$20                                  ; $56B8: $30 $1E

    db $10                                        ; $56BA: $10
    inc a                                         ; $56BB: $3C
    db $10                                        ; $56BC: $10
    inc de                                        ; $56BD: $13
    ld a, b                                       ; $56BE: $78
    rlca                                          ; $56BF: $07
    ldh a, [rNR11]                                ; $56C0: $F0 $11
    rrca                                          ; $56C2: $0F
    ldh [rNR11], a                                ; $56C3: $E0 $11
    ldh [$FF61], a                                ; $56C5: $E0 $61
    ret nz                                        ; $56C7: $C0

    or b                                          ; $56C8: $B0
    inc bc                                        ; $56C9: $03
    rst RST_28                                    ; $56CA: $EF
    rst RST_08                                    ; $56CB: $CF
    jr nz, jr_031_569A                            ; $56CC: $20 $CC

    db $10                                        ; $56CE: $10
    ld a, c                                       ; $56CF: $79
    call $E012                                    ; $56D0: $CD $12 $E0
    db $10                                        ; $56D3: $10
    db $F4                                        ; $56D4: $F4
    adc $F6                                       ; $56D5: $CE $F6

jr_031_56D7:
    jr nz, jr_031_572E                            ; $56D7: $20 $55

    ld a, [bc]                                    ; $56D9: $0A
    db $10                                        ; $56DA: $10
    db $EC                                        ; $56DB: $EC
    db $10                                        ; $56DC: $10
    db $F4                                        ; $56DD: $F4
    db $10                                        ; $56DE: $10
    inc b                                         ; $56DF: $04
    jp nz, Jump_031_7F53                          ; $56E0: $C2 $53 $7F

    ld [bc], a                                    ; $56E3: $02
    ld a, [hl]                                    ; $56E4: $7E
    nop                                           ; $56E5: $00
    ld a, h                                       ; $56E6: $7C
    ld a, l                                       ; $56E7: $7D
    db $10                                        ; $56E8: $10
    ld bc, $30F4                                  ; $56E9: $01 $F4 $30
    ld [hl], c                                    ; $56EC: $71
    jr nz, jr_031_56EF                            ; $56ED: $20 $00

jr_031_56EF:
    ret nz                                        ; $56EF: $C0

    nop                                           ; $56F0: $00
    nop                                           ; $56F1: $00
    ccf                                           ; $56F2: $3F
    adc b                                         ; $56F3: $88
    sub b                                         ; $56F4: $90
    add d                                         ; $56F5: $82
    ld hl, sp+$04                                 ; $56F6: $F8 $04
    ld d, b                                       ; $56F8: $50
    inc bc                                        ; $56F9: $03
    pop af                                        ; $56FA: $F1
    ld a, [bc]                                    ; $56FB: $0A
    inc l                                         ; $56FC: $2C
    ld bc, $7002                                  ; $56FD: $01 $02 $70
    ld sp, hl                                     ; $5700: $F9
    ld [hl], b                                    ; $5701: $70
    ld [bc], a                                    ; $5702: $02
    jr jr_031_56A5                                ; $5703: $18 $A0

    sbc $C0                                       ; $5705: $DE $C0
    ld b, c                                       ; $5707: $41

Jump_031_5708:
    rst RST_38                                    ; $5708: $FF
    nop                                           ; $5709: $00
    ld hl, $0312                                  ; $570A: $21 $12 $03
    add hl, bc                                    ; $570D: $09
    ld de, $8352                                  ; $570E: $11 $52 $83
    inc b                                         ; $5711: $04
    ld b, b                                       ; $5712: $40
    ldh [$FFE7], a                                ; $5713: $E0 $E7
    ld [$9020], sp                                ; $5715: $08 $20 $90
    ld b, b                                       ; $5718: $40
    rst RST_30                                    ; $5719: $F7
    rlca                                          ; $571A: $07
    ldh [c], a                                    ; $571B: $E2
    rst RST_38                                    ; $571C: $FF
    cp $01                                        ; $571D: $FE $01
    db $FC                                        ; $571F: $FC
    ld c, l                                       ; $5720: $4D
    ld [bc], a                                    ; $5721: $02
    ld h, c                                       ; $5722: $61
    ld hl, sp+$04                                 ; $5723: $F8 $04
    ld [hl-], a                                   ; $5725: $32
    nop                                           ; $5726: $00
    rlca                                          ; $5727: $07
    jr nc, jr_031_572D                            ; $5728: $30 $03

    rrca                                          ; $572A: $0F
    or b                                          ; $572B: $B0
    ccf                                           ; $572C: $3F

jr_031_572D:
    ld b, b                                       ; $572D: $40

jr_031_572E:
    ld a, a                                       ; $572E: $7F
    add b                                         ; $572F: $80
    ld de, $E050                                  ; $5730: $11 $50 $E0
    sub b                                         ; $5733: $90
    ld h, b                                       ; $5734: $60
    db $10                                        ; $5735: $10
    ret z                                         ; $5736: $C8

    ld c, b                                       ; $5737: $48
    ld hl, sp+$06                                 ; $5738: $F8 $06
    cp [hl]                                       ; $573A: $BE
    xor d                                         ; $573B: $AA
    ld d, b                                       ; $573C: $50
    cp h                                          ; $573D: $BC
    ld d, $7C                                     ; $573E: $16 $7C
    db $10                                        ; $5740: $10
    ld [bc], a                                    ; $5741: $02
    ld sp, $A87D                                  ; $5742: $31 $7D $A8
    ld bc, $027E                                  ; $5745: $01 $7E $02
    ld a, a                                       ; $5748: $7F
    ld b, $00                                     ; $5749: $06 $00
    ld sp, hl                                     ; $574B: $F9
    db $FC                                        ; $574C: $FC
    call nc, Call_031_5002                        ; $574D: $D4 $02 $50
    cp $91                                        ; $5750: $FE $91
    cp a                                          ; $5752: $BF
    nop                                           ; $5753: $00
    ret nz                                        ; $5754: $C0

    rst RST_18                                    ; $5755: $DF
    ld e, e                                       ; $5756: $5B
    rst RST_28                                    ; $5757: $EF
    nop                                           ; $5758: $00
    rst RST_38                                    ; $5759: $FF
    and b                                         ; $575A: $A0
    add b                                         ; $575B: $80
    add b                                         ; $575C: $80
    jr nz, jr_031_575F                            ; $575D: $20 $00

jr_031_575F:
    ld [bc], a                                    ; $575F: $02
    ccf                                           ; $5760: $3F
    ld b, b                                       ; $5761: $40
    rrca                                          ; $5762: $0F
    db $10                                        ; $5763: $10
    add e                                         ; $5764: $83
    add h                                         ; $5765: $84
    ld h, b                                       ; $5766: $60
    pop bc                                        ; $5767: $C1
    ld b, c                                       ; $5768: $41
    ldh [rP1], a                                  ; $5769: $E0 $00
    ldh a, [rTAC]                                 ; $576B: $F0 $07
    ei                                            ; $576D: $FB
    inc bc                                        ; $576E: $03
    ld bc, $5000                                  ; $576F: $01 $00 $50
    cp $A0                                        ; $5772: $FE $A0
    rst RST_38                                    ; $5774: $FF
    inc d                                         ; $5775: $14
    ccf                                           ; $5776: $3F
    ld b, b                                       ; $5777: $40
    ld [bc], a                                    ; $5778: $02
    ld hl, sp+$35                                 ; $5779: $F8 $35
    db $FC                                        ; $577B: $FC
    db $FD                                        ; $577C: $FD
    ret nc                                        ; $577D: $D0

    ldh [c], a                                    ; $577E: $E2
    ld a, a                                       ; $577F: $7F
    nop                                           ; $5780: $00
    cp a                                          ; $5781: $BF
    ret nz                                        ; $5782: $C0

    nop                                           ; $5783: $00
    ret nz                                        ; $5784: $C0

    rra                                           ; $5785: $1F
    rst RST_28                                    ; $5786: $EF
    rrca                                          ; $5787: $0F
    ret z                                         ; $5788: $C8

    ld c, b                                       ; $5789: $48
    ld [hl], a                                    ; $578A: $77
    ld sp, $0E00                                  ; $578B: $31 $00 $0E
    add d                                         ; $578E: $82
    ld c, [hl]                                    ; $578F: $4E
    ld [bc], a                                    ; $5790: $02
    adc [hl]                                      ; $5791: $8E
    and d                                         ; $5792: $A2
    add $D2                                       ; $5793: $C6 $D2
    ld b, $09                                     ; $5795: $06 $09
    pop hl                                        ; $5797: $E1
    ldh a, [$FFF4]                                ; $5798: $F0 $F4
    nop                                           ; $579A: $00
    nop                                           ; $579B: $00
    sub b                                         ; $579C: $90
    add [hl]                                      ; $579D: $86
    dec sp                                        ; $579E: $3B
    ld e, b                                       ; $579F: $58
    ld c, b                                       ; $57A0: $48
    dec d                                         ; $57A1: $15
    sub c                                         ; $57A2: $91
    pop de                                        ; $57A3: $D1
    ld a, a                                       ; $57A4: $7F
    inc c                                         ; $57A5: $0C
    pop af                                        ; $57A6: $F1
    ld d, [hl]                                    ; $57A7: $56
    di                                            ; $57A8: $F3
    nop                                           ; $57A9: $00
    db $FC                                        ; $57AA: $FC
    nop                                           ; $57AB: $00
    rst RST_38                                    ; $57AC: $FF
    ld [$F0F1], sp                                ; $57AD: $08 $F1 $F0
    ei                                            ; $57B0: $FB
    nop                                           ; $57B1: $00
    ld sp, $03FB                                  ; $57B2: $31 $FB $03
    ei                                            ; $57B5: $FB
    inc bc                                        ; $57B6: $03
    nop                                           ; $57B7: $00
    db $FD                                        ; $57B8: $FD
    dec h                                         ; $57B9: $25
    ld hl, sp-$05                                 ; $57BA: $F8 $FB
    db $FD                                        ; $57BC: $FD

jr_031_57BD:
    sub d                                         ; $57BD: $92
    ld l, h                                       ; $57BE: $6C
    ld sp, $08FE                                  ; $57BF: $31 $FE $08
    add b                                         ; $57C2: $80
    or c                                          ; $57C3: $B1
    ld b, a                                       ; $57C4: $47
    nop                                           ; $57C5: $00

jr_031_57C6:
    ld d, [hl]                                    ; $57C6: $56
    nop                                           ; $57C7: $00
    nop                                           ; $57C8: $00
    ld a, a                                       ; $57C9: $7F
    ld [bc], a                                    ; $57CA: $02
    ld a, [hl]                                    ; $57CB: $7E
    ld [$FFF1], sp                                ; $57CC: $08 $F1 $FF
    and b                                         ; $57CF: $A0
    nop                                           ; $57D0: $00
    rlca                                          ; $57D1: $07
    nop                                           ; $57D2: $00
    add hl, bc                                    ; $57D3: $09
    ld bc, $1C02                                  ; $57D4: $01 $02 $1C
    ld hl, $460E                                  ; $57D7: $21 $0E $46
    adc c                                         ; $57DA: $89
    ld [hl], b                                    ; $57DB: $70
    add [hl]                                      ; $57DC: $86
    db $10                                        ; $57DD: $10
    di                                            ; $57DE: $F3
    inc bc                                        ; $57DF: $03
    ldh [$FF87], a                                ; $57E0: $E0 $87
    nop                                           ; $57E2: $00
    ld de, $400E                                  ; $57E3: $11 $0E $40
    ld sp, $50C0                                  ; $57E6: $31 $C0 $50
    di                                            ; $57E9: $F3
    ld d, c                                       ; $57EA: $51
    cp $00                                        ; $57EB: $FE $00
    ld sp, hl                                     ; $57ED: $F9
    nop                                           ; $57EE: $00
    ldh a, [c]                                    ; $57EF: $F2
    rst RST_30                                    ; $57F0: $F7
    ld b, $F0                                     ; $57F1: $06 $F0
    ld a, [bc]                                    ; $57F3: $0A
    inc c                                         ; $57F4: $0C
    sbc [hl]                                      ; $57F5: $9E
    inc e                                         ; $57F6: $1C
    call c, $1FF3                                 ; $57F7: $DC $F3 $1F
    nop                                           ; $57FA: $00
    ccf                                           ; $57FB: $3F
    jr z, jr_031_57BD                             ; $57FC: $28 $BF

    rlca                                          ; $57FE: $07
    nop                                           ; $57FF: $00
    add b                                         ; $5800: $80
    sub b                                         ; $5801: $90
    call z, $3801                                 ; $5802: $CC $01 $38
    ld e, d                                       ; $5805: $5A
    inc bc                                        ; $5806: $03
    di                                            ; $5807: $F3
    pop hl                                        ; $5808: $E1
    nop                                           ; $5809: $00
    or b                                          ; $580A: $B0
    sbc b                                         ; $580B: $98
    ld h, b                                       ; $580C: $60
    ld a, b                                       ; $580D: $78
    ld [bc], a                                    ; $580E: $02
    inc b                                         ; $580F: $04
    ldh [rNR23], a                                ; $5810: $E0 $18
    add $01                                       ; $5812: $C6 $01
    adc [hl]                                      ; $5814: $8E
    pop af                                        ; $5815: $F1
    cp $AD                                        ; $5816: $FE $AD
    ld [bc], a                                    ; $5818: $02
    ld a, [hl]                                    ; $5819: $7E
    nop                                           ; $581A: $00
    ld a, $04                                     ; $581B: $3E $04
    ld [hl], c                                    ; $581D: $71
    ld a, a                                       ; $581E: $7F
    ld c, $00                                     ; $581F: $0E $00
    ld b, $70                                     ; $5821: $06 $70
    ld b, h                                       ; $5823: $44
    jr nc, jr_031_57C6                            ; $5824: $30 $A0

    sbc c                                         ; $5826: $99
    ret nc                                        ; $5827: $D0

    rst RST_08                                    ; $5828: $CF
    inc h                                         ; $5829: $24
    ret z                                         ; $582A: $C8

    rst RST_00                                    ; $582B: $C7
    ld sp, $D3C0                                  ; $582C: $31 $C0 $D3
    ld de, $F000                                  ; $582F: $11 $00 $F0
    xor e                                         ; $5832: $AB
    db $10                                        ; $5833: $10
    rst RST_38                                    ; $5834: $FF
    db $10                                        ; $5835: $10
    call z, Call_031_7E12                         ; $5836: $CC $12 $7E
    ld [hl], d                                    ; $5839: $72
    db $10                                        ; $583A: $10
    inc b                                         ; $583B: $04
    ld b, h                                       ; $583C: $44
    add e                                         ; $583D: $83
    inc e                                         ; $583E: $1C
    db $FD                                        ; $583F: $FD
    rrca                                          ; $5840: $0F
    ld d, b                                       ; $5841: $50

jr_031_5842:
    ld b, $7F                                     ; $5842: $06 $7F
    ld l, c                                       ; $5844: $69
    rlca                                          ; $5845: $07
    db $10                                        ; $5846: $10
    jr nc, @+$78                                  ; $5847: $30 $76

    jr nc, jr_031_5842                            ; $5849: $30 $F7

    dec b                                         ; $584B: $05
    db $10                                        ; $584C: $10
    ld [$ED08], sp                                ; $584D: $08 $08 $ED

Jump_031_5850:
    ld e, $C1                                     ; $5850: $1E $C1
    nop                                           ; $5852: $00
    db $EC                                        ; $5853: $EC
    ld h, c                                       ; $5854: $61

jr_031_5855:
    ld h, [hl]                                    ; $5855: $66
    ld [$A700], sp                                ; $5856: $08 $00 $A7
    sub b                                         ; $5859: $90
    rst RST_08                                    ; $585A: $CF
    jr nc, jr_031_58BC                            ; $585B: $30 $5F

    jr nz, jr_031_587E                            ; $585D: $20 $1F

    ld b, h                                       ; $585F: $44
    ld d, c                                       ; $5860: $51
    jr nz, jr_031_5875                            ; $5861: $20 $12

    inc b                                         ; $5863: $04
    ld d, $80                                     ; $5864: $16 $80
    adc l                                         ; $5866: $8D
    ld bc, $F309                                  ; $5867: $01 $09 $F3
    inc bc                                        ; $586A: $03
    daa                                           ; $586B: $27
    rlca                                          ; $586C: $07
    ld de, $C323                                  ; $586D: $11 $23 $C3
    ld de, $FE50                                  ; $5870: $11 $50 $FE
    ld c, $7F                                     ; $5873: $0E $7F

jr_031_5875:
    ld c, $A0                                     ; $5875: $0E $A0
    sbc a                                         ; $5877: $9F
    and c                                         ; $5878: $A1
    sbc [hl]                                      ; $5879: $9E
    ld [de], a                                    ; $587A: $12
    add d                                         ; $587B: $82
    cp h                                          ; $587C: $BC
    add b                                         ; $587D: $80

jr_031_587E:
    ld h, b                                       ; $587E: $60
    add c                                         ; $587F: $81
    or c                                          ; $5880: $B1
    db $10                                        ; $5881: $10
    cp c                                          ; $5882: $B9
    or b                                          ; $5883: $B0
    db $10                                        ; $5884: $10
    cp l                                          ; $5885: $BD
    ld de, $01B0                                  ; $5886: $11 $B0 $01
    ld e, b                                       ; $5889: $58
    ld b, c                                       ; $588A: $41
    reti                                          ; $588B: $D9


    rlca                                          ; $588C: $07
    ret nz                                        ; $588D: $C0

    jp c, $D2C2                                   ; $588E: $DA $C2 $D2

    jp z, Jump_031_4120                           ; $5891: $CA $20 $41

    db $10                                        ; $5894: $10
    jp nz, Jump_000_1040                          ; $5895: $C2 $40 $10

    nop                                           ; $5898: $00
    add sp, $04                                   ; $5899: $E8 $04
    di                                            ; $589B: $F3
    jr nc, @+$01                                  ; $589C: $30 $FF

    add d                                         ; $589E: $82
    add hl, de                                    ; $589F: $19
    xor d                                         ; $58A0: $AA
    ld b, d                                       ; $58A1: $42
    ld e, e                                       ; $58A2: $5B
    add e                                         ; $58A3: $83
    dec de                                        ; $58A4: $1B
    ld [de], a                                    ; $58A5: $12
    sub e                                         ; $58A6: $93
    ld [hl], $0B                                  ; $58A7: $36 $0B
    ld b, e                                       ; $58A9: $43
    add b                                         ; $58AA: $80
    ld de, $104B                                  ; $58AB: $11 $4B $10
    ld [hl], b                                    ; $58AE: $70
    ld h, e                                       ; $58AF: $63
    ld bc, $611D                                  ; $58B0: $01 $1D $61
    ld c, l                                       ; $58B3: $4D
    ld sp, $8185                                  ; $58B4: $31 $85 $81
    adc l                                         ; $58B7: $8D
    db $10                                        ; $58B8: $10
    xor d                                         ; $58B9: $AA
    jr nc, jr_031_5855                            ; $58BA: $30 $99

jr_031_58BC:
    db $10                                        ; $58BC: $10
    cp c                                          ; $58BD: $B9
    ld de, $0EFE                                  ; $58BE: $11 $FE $0E
    ld a, [hl]                                    ; $58C1: $7E
    sub [hl]                                      ; $58C2: $96
    nop                                           ; $58C3: $00
    ld a, l                                       ; $58C4: $7D
    ld a, h                                       ; $58C5: $7C
    ld bc, $007F                                  ; $58C6: $01 $7F $00
    ld [hl], a                                    ; $58C9: $77
    nop                                           ; $58CA: $00
    call nc, $1070                                ; $58CB: $D4 $70 $10
    ldh [rNR10], a                                ; $58CE: $E0 $10

jr_031_58D0:
    db $FC                                        ; $58D0: $FC
    db $10                                        ; $58D1: $10
    ld a, b                                       ; $58D2: $78
    add b                                         ; $58D3: $80
    ld d, h                                       ; $58D4: $54
    ld b, b                                       ; $58D5: $40
    jr nc, jr_031_58D0                            ; $58D6: $30 $F8

    db $10                                        ; $58D8: $10
    ld [hl], b                                    ; $58D9: $70
    db $10                                        ; $58DA: $10
    ld l, h                                       ; $58DB: $6C
    ld a, [bc]                                    ; $58DC: $0A
    jp z, Jump_031_4000                           ; $58DD: $CA $00 $40

    ld [hl], c                                    ; $58E0: $71
    rrca                                          ; $58E1: $0F
    nop                                           ; $58E2: $00
    ld a, a                                       ; $58E3: $7F
    nop                                           ; $58E4: $00
    rra                                           ; $58E5: $1F
    xor d                                         ; $58E6: $AA
    nop                                           ; $58E7: $00
    ei                                            ; $58E8: $FB
    nop                                           ; $58E9: $00
    dec de                                        ; $58EA: $1B
    nop                                           ; $58EB: $00
    db $FD                                        ; $58EC: $FD
    nop                                           ; $58ED: $00
    nop                                           ; $58EE: $00
    ld d, l                                       ; $58EF: $55
    rst RST_38                                    ; $58F0: $FF
    db $10                                        ; $58F1: $10
    add c                                         ; $58F2: $81
    ld bc, $00C3                                  ; $58F3: $01 $C3 $00
    rst RST_20                                    ; $58F6: $E7
    nop                                           ; $58F7: $00
    db $EC                                        ; $58F8: $EC
    add b                                         ; $58F9: $80
    ld [bc], a                                    ; $58FA: $02
    ld d, c                                       ; $58FB: $51
    ld b, b                                       ; $58FC: $40
    nop                                           ; $58FD: $00
    ldh a, [$FF8C]                                ; $58FE: $F0 $8C
    ldh a, [$FF98]                                ; $5900: $F0 $98
    nop                                           ; $5902: $00
    ld hl, sp-$02                                 ; $5903: $F8 $FE
    stop                                          ; $5905: $10 $00
    call c, $D8DF                                 ; $5907: $DC $DF $D8
    add b                                         ; $590A: $80
    nop                                           ; $590B: $00
    cp h                                          ; $590C: $BC
    cp a                                          ; $590D: $BF
    inc b                                         ; $590E: $04
    ld a, b                                       ; $590F: $78
    rlca                                          ; $5910: $07
    ld [$0203], sp                                ; $5911: $08 $03 $02
    ld a, h                                       ; $5914: $7C
    inc c                                         ; $5915: $0C
    jr nc, @+$08                                  ; $5916: $30 $06

    nop                                           ; $5918: $00
    rrca                                          ; $5919: $0F
    jr nc, jr_031_5921                            ; $591A: $30 $05

    ld [$D090], a                                 ; $591C: $EA $90 $D0

jr_031_591F:
    jr nc, jr_031_591F                            ; $591F: $30 $FE

jr_031_5921:
    nop                                           ; $5921: $00
    ld a, [hl]                                    ; $5922: $7E
    nop                                           ; $5923: $00
    cp [hl]                                       ; $5924: $BE
    ld [hl], h                                    ; $5925: $74
    ld a, $01                                     ; $5926: $3E $01
    ld [hl], e                                    ; $5928: $73
    add hl, bc                                    ; $5929: $09
    ld a, a                                       ; $592A: $7F
    ld [$7C80], sp                                ; $592B: $08 $80 $7C
    add c                                         ; $592E: $81
    db $10                                        ; $592F: $10
    ld e, [hl]                                    ; $5930: $5E
    add d                                         ; $5931: $82
    add hl, de                                    ; $5932: $19
    ld d, b                                       ; $5933: $50
    ld b, b                                       ; $5934: $40
    and $00                                       ; $5935: $E6 $00
    ld d, l                                       ; $5937: $55
    rst RST_38                                    ; $5938: $FF
    inc b                                         ; $5939: $04
    cp $00                                        ; $593A: $FE $00
    ld a, a                                       ; $593C: $7F
    nop                                           ; $593D: $00
    rra                                           ; $593E: $1F
    nop                                           ; $593F: $00
    ld d, l                                       ; $5940: $55
    add b                                         ; $5941: $80
    ldh a, [rP1]                                  ; $5942: $F0 $00
    nop                                           ; $5944: $00
    ret nz                                        ; $5945: $C0

    ld bc, $10D0                                  ; $5946: $01 $D0 $10
    ld d, h                                       ; $5949: $54
    call z, Call_031_4271                         ; $594A: $CC $71 $42
    nop                                           ; $594D: $00
    add c                                         ; $594E: $81
    ld [bc], a                                    ; $594F: $02
    db $DB                                        ; $5950: $DB
    jp Jump_031_5A54                              ; $5951: $C3 $54 $5A


    ld [hl], b                                    ; $5954: $70
    ld h, [hl]                                    ; $5955: $66
    nop                                           ; $5956: $00
    inc a                                         ; $5957: $3C
    nop                                           ; $5958: $00
    ld a, b                                       ; $5959: $78
    ld a, [hl]                                    ; $595A: $7E
    ld [de], a                                    ; $595B: $12
    ldh a, [$FFFC]                                ; $595C: $F0 $FC
    ret nz                                        ; $595E: $C0

    jr nz, jr_031_5962                            ; $595F: $20 $01

    nop                                           ; $5961: $00

jr_031_5962:
    ld bc, $A803                                  ; $5962: $01 $03 $A8
    nop                                           ; $5965: $00
    db $10                                        ; $5966: $10
    jr nc, jr_031_599A                            ; $5967: $30 $31

    db $10                                        ; $5969: $10
    ld c, $30                                     ; $596A: $0E $30
    ld [hl], $22                                  ; $596C: $36 $22
    ld b, b                                       ; $596E: $40
    push hl                                       ; $596F: $E5
    ldh [$FF9B], a                                ; $5970: $E0 $9B

jr_031_5972:
    dec de                                        ; $5972: $1B
    ld a, a                                       ; $5973: $7F
    nop                                           ; $5974: $00
    rst RST_38                                    ; $5975: $FF
    and d                                         ; $5976: $A2
    nop                                           ; $5977: $00
    rrca                                          ; $5978: $0F
    nop                                           ; $5979: $00
    di                                            ; $597A: $F3
    inc bc                                        ; $597B: $03
    cp $0E                                        ; $597C: $FE $0E
    ld a, a                                       ; $597E: $7F
    xor d                                         ; $597F: $AA
    ld c, $FF                                     ; $5980: $0E $FF
    ld [bc], a                                    ; $5982: $02
    db $FC                                        ; $5983: $FC
    nop                                           ; $5984: $00
    ld hl, sp+$00                                 ; $5985: $F8 $00
    ldh a, [rP1]                                  ; $5987: $F0 $00
    pop af                                        ; $5989: $F1
    ldh [$FFEC], a                                ; $598A: $E0 $EC
    pop hl                                        ; $598C: $E1
    xor $D0                                       ; $598D: $EE $D0
    call z, Call_000_0580                         ; $598F: $CC $80 $05
    adc a                                         ; $5992: $8F
    nop                                           ; $5993: $00
    rlca                                          ; $5994: $07
    inc e                                         ; $5995: $1C
    ld a, [hl]                                    ; $5996: $7E
    nop                                           ; $5997: $00
    cp $01                                        ; $5998: $FE $01

jr_031_599A:
    ld b, $1F                                     ; $599A: $06 $1F
    ccf                                           ; $599C: $3F
    rst RST_08                                    ; $599D: $CF
    rrca                                          ; $599E: $0F
    cp a                                          ; $599F: $BF
    jr nc, jr_031_5972                            ; $59A0: $30 $D0

    add e                                         ; $59A2: $83
    nop                                           ; $59A3: $00
    ld h, b                                       ; $59A4: $60
    ld a, e                                       ; $59A5: $7B
    ldh a, [$FFFD]                                ; $59A6: $F0 $FD
    ret nz                                        ; $59A8: $C0

    push bc                                       ; $59A9: $C5
    ldh [$FFED], a                                ; $59AA: $E0 $ED
    inc h                                         ; $59AC: $24
    ld h, c                                       ; $59AD: $61
    ld l, e                                       ; $59AE: $6B
    and b                                         ; $59AF: $A0
    add a                                         ; $59B0: $87
    rst RST_38                                    ; $59B1: $FF
    nop                                           ; $59B2: $00
    db $E4                                        ; $59B3: $E4
    inc bc                                        ; $59B4: $03
    dec b                                         ; $59B5: $05
    ld c, c                                       ; $59B6: $49
    add [hl]                                      ; $59B7: $86
    ld [bc], a                                    ; $59B8: $02
    adc h                                         ; $59B9: $8C
    nop                                           ; $59BA: $00
    ret nc                                        ; $59BB: $D0

    ret nz                                        ; $59BC: $C0

    db $10                                        ; $59BD: $10
    adc b                                         ; $59BE: $88
    sub b                                         ; $59BF: $90
    pop hl                                        ; $59C0: $E1
    ldh [$FFF0], a                                ; $59C1: $E0 $F0
    nop                                           ; $59C3: $00
    ld hl, sp+$0D                                 ; $59C4: $F8 $0D
    pop af                                        ; $59C6: $F1
    and d                                         ; $59C7: $A2
    ret nc                                        ; $59C8: $D0

    ld a, h                                       ; $59C9: $7C
    db $10                                        ; $59CA: $10
    db $FC                                        ; $59CB: $FC
    ld bc, $11FA                                  ; $59CC: $01 $FA $11
    dec b                                         ; $59CF: $05
    inc bc                                        ; $59D0: $03
    ldh a, [c]                                    ; $59D1: $F2
    dec bc                                        ; $59D2: $0B
    db $E4                                        ; $59D3: $E4
    ld c, $00                                     ; $59D4: $0E $00
    cp $00                                        ; $59D6: $FE $00
    ret nz                                        ; $59D8: $C0

    and b                                         ; $59D9: $A0
    nop                                           ; $59DA: $00
    ld hl, sp-$50                                 ; $59DB: $F8 $B0
    ld [hl], b                                    ; $59DD: $70
    halt                                          ; $59DE: $76
    ld h, b                                       ; $59DF: $60
    ld h, d                                       ; $59E0: $62
    ld b, b                                       ; $59E1: $40
    ld [hl+], a                                   ; $59E2: $22
    ld b, h                                       ; $59E3: $44
    inc b                                         ; $59E4: $04
    ret nc                                        ; $59E5: $D0

    ld a, [bc]                                    ; $59E6: $0A
    ld [bc], a                                    ; $59E7: $02
    ld a, a                                       ; $59E8: $7F
    inc c                                         ; $59E9: $0C
    nop                                           ; $59EA: $00
    sub l                                         ; $59EB: $95
    nop                                           ; $59EC: $00
    ret nz                                        ; $59ED: $C0

    call z, $C610                                 ; $59EE: $CC $10 $C6
    ld de, $10C1                                  ; $59F1: $11 $C1 $10
    ld h, $E0                                     ; $59F4: $26 $E0
    db $E4                                        ; $59F6: $E4
    db $10                                        ; $59F7: $10
    db $EC                                        ; $59F8: $EC
    ldh [c], a                                    ; $59F9: $E2
    db $10                                        ; $59FA: $10
    pop af                                        ; $59FB: $F1
    ld [hl], a                                    ; $59FC: $77
    nop                                           ; $59FD: $00
    ld a, a                                       ; $59FE: $7F
    rst RST_08                                    ; $59FF: $CF
    rst RST_38                                    ; $5A00: $FF
    dec c                                         ; $5A01: $0D
    adc a                                         ; $5A02: $8F
    dec de                                        ; $5A03: $1B
    rra                                           ; $5A04: $1F
    inc hl                                        ; $5A05: $23
    daa                                           ; $5A06: $27
    dec sp                                        ; $5A07: $3B
    add e                                         ; $5A08: $83
    jr nz, @-$3C                                  ; $5A09: $20 $C2

    inc bc                                        ; $5A0B: $03
    pop af                                        ; $5A0C: $F1
    ret nz                                        ; $5A0D: $C0

    ld b, $52                                     ; $5A0E: $06 $52
    halt                                          ; $5A10: $76
    db $10                                        ; $5A11: $10
    inc h                                         ; $5A12: $24
    jr nz, jr_031_5A19                            ; $5A13: $20 $04

    ld h, [hl]                                    ; $5A15: $66
    pop af                                        ; $5A16: $F1
    ldh a, [rSB]                                  ; $5A17: $F0 $01

jr_031_5A19:
    ld sp, hl                                     ; $5A19: $F9
    call nc, $E0F3                                ; $5A1A: $D4 $F3 $E0
    pop af                                        ; $5A1D: $F1
    ret nz                                        ; $5A1E: $C0

    db $E3                                        ; $5A1F: $E3
    db $10                                        ; $5A20: $10
    ld d, $EF                                     ; $5A21: $16 $EF
    ld b, b                                       ; $5A23: $40
    ret                                           ; $5A24: $C9


    ret nz                                        ; $5A25: $C0

    ld b, c                                       ; $5A26: $41
    pop af                                        ; $5A27: $F1
    ld bc, $4120                                  ; $5A28: $01 $20 $41
    add b                                         ; $5A2B: $80
    jr nz, @+$03                                  ; $5A2C: $20 $01

    jr nc, @+$05                                  ; $5A2E: $30 $03

    ld h, b                                       ; $5A30: $60
    add d                                         ; $5A31: $82
    ldh a, [$FF90]                                ; $5A32: $F0 $90

Jump_031_5A34:
    db $10                                        ; $5A34: $10
    jp nz, $D104                                  ; $5A35: $C2 $04 $D1

    ld [de], a                                    ; $5A38: $12
    ld h, d                                       ; $5A39: $62
    ld h, $C6                                     ; $5A3A: $26 $C6
    dec d                                         ; $5A3C: $15
    ld c, $8E                                     ; $5A3D: $0E $8E
    ld e, $02                                     ; $5A3F: $1E $02
    ld a, $00                                     ; $5A41: $3E $00
    ld a, [hl]                                    ; $5A43: $7E
    nop                                           ; $5A44: $00
    add b                                         ; $5A45: $80
    pop af                                        ; $5A46: $F1
    ld d, c                                       ; $5A47: $51
    nop                                           ; $5A48: $00
    ld d, l                                       ; $5A49: $55
    nop                                           ; $5A4A: $00

jr_031_5A4B:
    nop                                           ; $5A4B: $00
    ld a, a                                       ; $5A4C: $7F
    ld [bc], a                                    ; $5A4D: $02
    ccf                                           ; $5A4E: $3F
    nop                                           ; $5A4F: $00
    rra                                           ; $5A50: $1F
    nop                                           ; $5A51: $00
    ld b, d                                       ; $5A52: $42
    rrca                                          ; $5A53: $0F

Jump_031_5A54:
    nop                                           ; $5A54: $00
    daa                                           ; $5A55: $27
    rlca                                          ; $5A56: $07
    ld c, d                                       ; $5A57: $4A
    ld b, d                                       ; $5A58: $42
    pop af                                        ; $5A59: $F1
    rst RST_38                                    ; $5A5A: $FF
    or h                                          ; $5A5B: $B4
    ld a, [bc]                                    ; $5A5C: $0A
    ld a, a                                       ; $5A5D: $7F
    nop                                           ; $5A5E: $00
    pop af                                        ; $5A5F: $F1
    cp $00                                        ; $5A60: $FE $00
    db $FD                                        ; $5A62: $FD
    db $FC                                        ; $5A63: $FC

jr_031_5A64:
    add l                                         ; $5A64: $85
    dec d                                         ; $5A65: $15
    ld sp, hl                                     ; $5A66: $F9
    ld hl, sp-$0F                                 ; $5A67: $F8 $F1
    ldh a, [$FFF1]                                ; $5A69: $F0 $F1
    rst RST_38                                    ; $5A6B: $FF
    nop                                           ; $5A6C: $00
    ld d, h                                       ; $5A6D: $54
    ld a, a                                       ; $5A6E: $7F
    ld [bc], a                                    ; $5A6F: $02
    ccf                                           ; $5A70: $3F
    nop                                           ; $5A71: $00
    inc e                                         ; $5A72: $1C
    nop                                           ; $5A73: $00
    ld e, c                                       ; $5A74: $59
    add hl, de                                    ; $5A75: $19
    ld l, b                                       ; $5A76: $68
    ld b, b                                       ; $5A77: $40
    pop hl                                        ; $5A78: $E1
    ldh a, [c]                                    ; $5A79: $F2
    ld hl, sp+$00                                 ; $5A7A: $F8 $00
    add $C4                                       ; $5A7C: $C6 $C4
    jr z, jr_031_5A83                             ; $5A7E: $28 $03

    jr nz, @+$66                                  ; $5A80: $20 $64

    inc bc                                        ; $5A82: $03

jr_031_5A83:
    ld b, $01                                     ; $5A83: $06 $01
    inc [hl]                                      ; $5A85: $34
    jr nc, @-$0B                                  ; $5A86: $30 $F3

    ld d, l                                       ; $5A88: $55
    ccf                                           ; $5A89: $3F
    nop                                           ; $5A8A: $00

jr_031_5A8B:
    ld b, a                                       ; $5A8B: $47
    nop                                           ; $5A8C: $00

jr_031_5A8D:
    add hl, hl                                    ; $5A8D: $29
    or b                                          ; $5A8E: $B0
    call nz, $0A90                                ; $5A8F: $C4 $90 $0A
    add c                                         ; $5A92: $81
    ld a, b                                       ; $5A93: $78
    jr nc, jr_031_5A64                            ; $5A94: $30 $CE

    pop af                                        ; $5A96: $F1
    cp $06                                        ; $5A97: $FE $06
    ld a, [hl]                                    ; $5A99: $7E
    adc c                                         ; $5A9A: $89
    nop                                           ; $5A9B: $00
    cp [hl]                                       ; $5A9C: $BE
    ld a, $1E                                     ; $5A9D: $3E $1E
    nop                                           ; $5A9F: $00
    ld d, l                                       ; $5AA0: $55
    ld b, b                                       ; $5AA1: $40
    ld de, $6B22                                  ; $5AA2: $11 $22 $6B
    ld h, b                                       ; $5AA5: $60
    ld de, $7077                                  ; $5AA6: $11 $77 $70

Call_031_5AA9:
    halt                                          ; $5AA9: $76
    ld [de], a                                    ; $5AAA: $12
    ld l, h                                       ; $5AAB: $6C
    xor d                                         ; $5AAC: $AA

jr_031_5AAD:
    ld [hl], b                                    ; $5AAD: $70
    ld a, e                                       ; $5AAE: $7B
    nop                                           ; $5AAF: $00
    ld [hl], c                                    ; $5AB0: $71
    nop                                           ; $5AB1: $00
    jr nz, jr_031_5AB4                            ; $5AB2: $20 $00

jr_031_5AB4:
    inc h                                         ; $5AB4: $24
    adc [hl]                                      ; $5AB5: $8E
    nop                                           ; $5AB6: $00
    ld [$480C], sp                                ; $5AB7: $08 $0C $48
    db $10                                        ; $5ABA: $10
    ret nz                                        ; $5ABB: $C0

    ld de, $420E                                  ; $5ABC: $11 $0E $42
    db $E4                                        ; $5ABF: $E4
    nop                                           ; $5AC0: $00
    inc d                                         ; $5AC1: $14
    inc b                                         ; $5AC2: $04
    add h                                         ; $5AC3: $84
    ld h, [hl]                                    ; $5AC4: $66
    jr nz, jr_031_5A8D                            ; $5AC5: $20 $C6

    ld b, b                                       ; $5AC7: $40
    nop                                           ; $5AC8: $00
    jr nc, jr_031_5A4B                            ; $5AC9: $30 $80

    ld b, [hl]                                    ; $5ACB: $46
    ld [de], a                                    ; $5ACC: $12
    ld h, h                                       ; $5ACD: $64
    add d                                         ; $5ACE: $82
    ld c, h                                       ; $5ACF: $4C
    ld b, b                                       ; $5AD0: $40
    ld h, b                                       ; $5AD1: $60
    and b                                         ; $5AD2: $A0
    and c                                         ; $5AD3: $A1
    add hl, bc                                    ; $5AD4: $09
    and d                                         ; $5AD5: $A2
    inc bc                                        ; $5AD6: $03
    or h                                          ; $5AD7: $B4
    rlca                                          ; $5AD8: $07
    jr jr_031_5A8B                                ; $5AD9: $18 $B0

    ld b, $D0                                     ; $5ADB: $06 $D0
    sub b                                         ; $5ADD: $90
    stop                                          ; $5ADE: $10 $00
    ldh a, [rSB]                                  ; $5AE0: $F0 $01
    and d                                         ; $5AE2: $A2
    ret nc                                        ; $5AE3: $D0

    add [hl]                                      ; $5AE4: $86
    jr nz, jr_031_5AAD                            ; $5AE5: $20 $C6

    ld [bc], a                                    ; $5AE7: $02
    or c                                          ; $5AE8: $B1
    jr nc, jr_031_5B23                            ; $5AE9: $30 $38

    nop                                           ; $5AEB: $00
    ld b, b                                       ; $5AEC: $40
    adc h                                         ; $5AED: $8C
    jr nz, jr_031_5AFE                            ; $5AEE: $20 $0E

    add b                                         ; $5AF0: $80

jr_031_5AF1:
    ld [hl-], a                                   ; $5AF1: $32
    jr z, jr_031_5AB4                             ; $5AF2: $28 $C0

    nop                                           ; $5AF4: $00
    and [hl]                                      ; $5AF5: $A6
    ld e, c                                       ; $5AF6: $59
    inc b                                         ; $5AF7: $04
    ei                                            ; $5AF8: $FB
    ld h, b                                       ; $5AF9: $60
    sbc [hl]                                      ; $5AFA: $9E
    ld b, c                                       ; $5AFB: $41
    cp b                                          ; $5AFC: $B8
    sub d                                         ; $5AFD: $92

jr_031_5AFE:
    ld d, b                                       ; $5AFE: $50
    ldh [$FF92], a                                ; $5AFF: $E0 $92
    ld b, b                                       ; $5B01: $40
    dec hl                                        ; $5B02: $2B
    rlca                                          ; $5B03: $07
    ld d, b                                       ; $5B04: $50
    rrca                                          ; $5B05: $0F
    dec d                                         ; $5B06: $15
    ld c, $8E                                     ; $5B07: $0E $8E
    ld b, $00                                     ; $5B09: $06 $00
    add $10                                       ; $5B0B: $C6 $10
    ld [bc], a                                    ; $5B0D: $02
    nop                                           ; $5B0E: $00
    nop                                           ; $5B0F: $00
    add h                                         ; $5B10: $84
    ld a, b                                       ; $5B11: $78
    ld [hl+], a                                   ; $5B12: $22
    ret c                                         ; $5B13: $D8

    ld b, h                                       ; $5B14: $44
    or d                                          ; $5B15: $B2
    sub h                                         ; $5B16: $94
    ld h, d                                       ; $5B17: $62
    dec h                                         ; $5B18: $25
    ld l, h                                       ; $5B19: $6C
    ld h, b                                       ; $5B1A: $60
    dec d                                         ; $5B1B: $15
    ld l, l                                       ; $5B1C: $6D
    ld h, c                                       ; $5B1D: $61
    and b                                         ; $5B1E: $A0
    ld h, e                                       ; $5B1F: $63
    ld d, b                                       ; $5B20: $50
    inc h                                         ; $5B21: $24
    ld l, a                                       ; $5B22: $6F

jr_031_5B23:
    ld l, b                                       ; $5B23: $68
    db $10                                        ; $5B24: $10
    ld [hl], b                                    ; $5B25: $70
    ld b, $10                                     ; $5B26: $06 $10
    rlca                                          ; $5B28: $07
    nop                                           ; $5B29: $00
    ld h, $03                                     ; $5B2A: $26 $03
    ld a, b                                       ; $5B2C: $78
    nop                                           ; $5B2D: $00

jr_031_5B2E:
    add b                                         ; $5B2E: $80
    rst RST_38                                    ; $5B2F: $FF
    ld d, b                                       ; $5B30: $50
    ld de, $8EE7                                  ; $5B31: $11 $E7 $8E
    db $10                                        ; $5B34: $10
    jp $402C                                      ; $5B35: $C3 $2C $40


    nop                                           ; $5B38: $00
    ld b, b                                       ; $5B39: $40
    ld bc, $4438                                  ; $5B3A: $01 $38 $44
    ccf                                           ; $5B3D: $3F
    ld d, b                                       ; $5B3E: $50
    ld a, b                                       ; $5B3F: $78
    rlca                                          ; $5B40: $07
    add a                                         ; $5B41: $87
    db $10                                        ; $5B42: $10
    rst RST_08                                    ; $5B43: $CF
    dec bc                                        ; $5B44: $0B
    jr jr_031_5B2E                                ; $5B45: $18 $E7

    ldh a, [rSC]                                  ; $5B47: $F0 $02
    db $10                                        ; $5B49: $10
    ret nc                                        ; $5B4A: $D0

    di                                            ; $5B4B: $F3
    inc bc                                        ; $5B4C: $03
    ld [hl], h                                    ; $5B4D: $74
    and c                                         ; $5B4E: $A1
    and b                                         ; $5B4F: $A0
    inc [hl]                                      ; $5B50: $34
    ret nc                                        ; $5B51: $D0

    ld [$800E], sp                                ; $5B52: $08 $0E $80
    sbc b                                         ; $5B55: $98
    and b                                         ; $5B56: $A0
    or $20                                        ; $5B57: $F6 $20
    add b                                         ; $5B59: $80
    nop                                           ; $5B5A: $00
    ldh a, [rIE]                                  ; $5B5B: $F0 $FF
    ld d, b                                       ; $5B5D: $50
    ld de, $64E0                                  ; $5B5E: $11 $E0 $64
    rra                                           ; $5B61: $1F
    sub b                                         ; $5B62: $90
    jr nc, jr_031_5B6E                            ; $5B63: $30 $09

    ld h, h                                       ; $5B65: $64
    db $10                                        ; $5B66: $10
    inc h                                         ; $5B67: $24
    ld c, c                                       ; $5B68: $49
    inc b                                         ; $5B69: $04
    jr nc, @-$77                                  ; $5B6A: $30 $87

    jr c, jr_031_5AF1                             ; $5B6C: $38 $83

jr_031_5B6E:
    jr nz, jr_031_5BA0                            ; $5B6E: $20 $30

    ld bc, $800E                                  ; $5B70: $01 $0E $80
    sub b                                         ; $5B73: $90
    dec de                                        ; $5B74: $1B
    inc l                                         ; $5B75: $2C
    inc de                                        ; $5B76: $13
    jr z, jr_031_5B90                             ; $5B77: $28 $17

    ld [$8197], sp                                ; $5B79: $08 $97 $81
    ld [hl], b                                    ; $5B7C: $70
    jp nc, $F204                                  ; $5B7D: $D2 $04 $F2

    db $10                                        ; $5B80: $10
    ld a, [$1030]                                 ; $5B81: $FA $30 $10
    nop                                           ; $5B84: $00
    and d                                         ; $5B85: $A2
    ld a, b                                       ; $5B86: $78
    jp nz, Jump_031_6438                          ; $5B87: $C2 $38 $64

    sbc b                                         ; $5B8A: $98
    ld a, h                                       ; $5B8B: $7C
    add b                                         ; $5B8C: $80
    inc h                                         ; $5B8D: $24
    ld d, b                                       ; $5B8E: $50
    ld e, a                                       ; $5B8F: $5F

jr_031_5B90:
    dec d                                         ; $5B90: $15
    ld h, b                                       ; $5B91: $60
    ld l, h                                       ; $5B92: $6C
    db $10                                        ; $5B93: $10
    ld l, b                                       ; $5B94: $68
    ld [hl], b                                    ; $5B95: $70
    and l                                         ; $5B96: $A5
    nop                                           ; $5B97: $00
    ld a, b                                       ; $5B98: $78
    nop                                           ; $5B99: $00
    nop                                           ; $5B9A: $00
    cp a                                          ; $5B9B: $BF
    db $10                                        ; $5B9C: $10
    ld a, a                                       ; $5B9D: $7F
    db $10                                        ; $5B9E: $10
    ld e, b                                       ; $5B9F: $58

jr_031_5BA0:
    rst RST_38                                    ; $5BA0: $FF
    db $10                                        ; $5BA1: $10
    rrca                                          ; $5BA2: $0F
    stop                                          ; $5BA3: $10 $00
    jr c, @-$7E                                   ; $5BA5: $38 $80

    inc d                                         ; $5BA7: $14
    dec h                                         ; $5BA8: $25
    ld b, b                                       ; $5BA9: $40
    ld [$0710], sp                                ; $5BAA: $08 $10 $07
    ldh a, [$FF80]                                ; $5BAD: $F0 $80
    ld hl, sp-$0F                                 ; $5BAF: $F8 $F1
    ld [bc], a                                    ; $5BB1: $02
    ld bc, $04FE                                  ; $5BB2: $01 $FE $04
    dec sp                                        ; $5BB5: $3B
    ld [bc], a                                    ; $5BB6: $02
    dec e                                         ; $5BB7: $1D

jr_031_5BB8:
    ld d, b                                       ; $5BB8: $50
    ld c, $90                                     ; $5BB9: $0E $90
    sub b                                         ; $5BBB: $90
    rrca                                          ; $5BBC: $0F
    ld a, e                                       ; $5BBD: $7B
    jr nz, @-$36                                  ; $5BBE: $20 $C8

    ld [hl-], a                                   ; $5BC0: $32
    add h                                         ; $5BC1: $84
    ld [hl], e                                    ; $5BC2: $73
    and b                                         ; $5BC3: $A0
    ld b, b                                       ; $5BC4: $40
    rst RST_30                                    ; $5BC5: $F7
    ld de, $B344                                  ; $5BC6: $11 $44 $B3
    add d                                         ; $5BC9: $82

jr_031_5BCA:
    ld a, c                                       ; $5BCA: $79
    add b                                         ; $5BCB: $80
    ld d, h                                       ; $5BCC: $54
    ld a, h                                       ; $5BCD: $7C
    ld [hl], b                                    ; $5BCE: $70
    ld c, c                                       ; $5BCF: $49
    db $10                                        ; $5BD0: $10
    ld a, a                                       ; $5BD1: $7F
    db $10                                        ; $5BD2: $10
    db $E4                                        ; $5BD3: $E4
    ld [de], a                                    ; $5BD4: $12
    dec a                                         ; $5BD5: $3D
    inc h                                         ; $5BD6: $24
    sub d                                         ; $5BD7: $92
    db $10                                        ; $5BD8: $10
    or b                                          ; $5BD9: $B0
    db $10                                        ; $5BDA: $10
    ld [hl], b                                    ; $5BDB: $70
    ccf                                           ; $5BDC: $3F
    db $10                                        ; $5BDD: $10
    add hl, bc                                    ; $5BDE: $09
    cp $18                                        ; $5BDF: $FE $18
    add a                                         ; $5BE1: $87
    ld [$1410], sp                                ; $5BE2: $08 $10 $14
    add e                                         ; $5BE5: $83
    ld d, b                                       ; $5BE6: $50
    nop                                           ; $5BE7: $00
    adc e                                         ; $5BE8: $8B
    ld [de], a                                    ; $5BE9: $12
    adc c                                         ; $5BEA: $89
    inc b                                         ; $5BEB: $04
    sbc l                                         ; $5BEC: $9D
    dec h                                         ; $5BED: $25
    inc e                                         ; $5BEE: $1C
    ld b, c                                       ; $5BEF: $41
    db $10                                        ; $5BF0: $10
    inc a                                         ; $5BF1: $3C
    jr c, jr_031_5BB8                             ; $5BF2: $38 $C4

    ld de, $CC30                                  ; $5BF4: $11 $30 $CC
    ld a, b                                       ; $5BF7: $78
    add h                                         ; $5BF8: $84
    nop                                           ; $5BF9: $00
    ld e, b                                       ; $5BFA: $58
    and h                                         ; $5BFB: $A4
    ld [$0CF4], sp                                ; $5BFC: $08 $F4 $0C
    ldh a, [rP1]                                  ; $5BFF: $F0 $00
    ld hl, sp+$54                                 ; $5C01: $F8 $54
    ld a, h                                       ; $5C03: $7C
    ld [bc], a                                    ; $5C04: $02
    ld a, [hl]                                    ; $5C05: $7E
    nop                                           ; $5C06: $00
    ld a, a                                       ; $5C07: $7F
    ld [$2007], sp                                ; $5C08: $08 $07 $20
    ld d, b                                       ; $5C0B: $50
    inc c                                         ; $5C0C: $0C
    db $10                                        ; $5C0D: $10
    dec bc                                        ; $5C0E: $0B
    db $10                                        ; $5C0F: $10
    add [hl]                                      ; $5C10: $86
    sub b                                         ; $5C11: $90
    push bc                                       ; $5C12: $C5
    ret nc                                        ; $5C13: $D0

    dec b                                         ; $5C14: $05
    add d                                         ; $5C15: $82
    sbc b                                         ; $5C16: $98
    add b                                         ; $5C17: $80
    adc h                                         ; $5C18: $8C
    nop                                           ; $5C19: $00
    ld bc, $100F                                  ; $5C1A: $01 $0F $10
    ld d, b                                       ; $5C1D: $50
    rlca                                          ; $5C1E: $07
    ld de, $1020                                  ; $5C1F: $11 $20 $10
    ld d, b                                       ; $5C22: $50
    inc bc                                        ; $5C23: $03
    ret nc                                        ; $5C24: $D0

    ld bc, $B073                                  ; $5C25: $01 $73 $B0
    add b                                         ; $5C28: $80
    db $10                                        ; $5C29: $10
    ld d, b                                       ; $5C2A: $50
    add b                                         ; $5C2B: $80
    ld a, a                                       ; $5C2C: $7F
    ld de, $1060                                  ; $5C2D: $11 $60 $10
    rst RST_38                                    ; $5C30: $FF
    db $10                                        ; $5C31: $10
    rst RST_28                                    ; $5C32: $EF

jr_031_5C33:
    ldh a, [$FFAF]                                ; $5C33: $F0 $AF
    xor b                                         ; $5C35: $A8
    ld b, a                                       ; $5C36: $47
    inc b                                         ; $5C37: $04
    ldh a, [c]                                    ; $5C38: $F2
    ret nc                                        ; $5C39: $D0

    nop                                           ; $5C3A: $00
    and b                                         ; $5C3B: $A0
    ret nc                                        ; $5C3C: $D0

    ld b, b                                       ; $5C3D: $40
    rlca                                          ; $5C3E: $07
    jr nz, jr_031_5C86                            ; $5C3F: $20 $45

    dec h                                         ; $5C41: $25
    ld [bc], a                                    ; $5C42: $02
    inc d                                         ; $5C43: $14
    add b                                         ; $5C44: $80
    jr z, jr_031_5BCA                             ; $5C45: $28 $83

    ld de, $50A8                                  ; $5C47: $11 $A8 $50
    sub b                                         ; $5C4A: $90
    ld [hl], c                                    ; $5C4B: $71
    jp nz, Jump_000_113E                          ; $5C4C: $C2 $3E $11

    ld [hl+], a                                   ; $5C4F: $22
    sbc $80                                       ; $5C50: $DE $80
    ld a, [hl]                                    ; $5C52: $7E
    ld [bc], a                                    ; $5C53: $02
    ld b, c                                       ; $5C54: $41
    cp a                                          ; $5C55: $BF
    ld b, l                                       ; $5C56: $45
    cp e                                          ; $5C57: $BB
    add hl, bc                                    ; $5C58: $09
    rst RST_30                                    ; $5C59: $F7
    ld de, $0402                                  ; $5C5A: $11 $02 $04
    ld hl, sp+$0A                                 ; $5C5D: $F8 $0A
    ldh a, [$FF82]                                ; $5C5F: $F0 $82
    ld [hl], b                                    ; $5C61: $70
    ld de, $6016                                  ; $5C62: $11 $16 $60
    ld de, $6204                                  ; $5C65: $11 $04 $62
    ld l, h                                       ; $5C68: $6C
    ret nz                                        ; $5C69: $C0

    ld c, b                                       ; $5C6A: $48
    ld b, $7F                                     ; $5C6B: $06 $7F
    ld c, $55                                     ; $5C6D: $0E $55
    ld [$9800], sp                                ; $5C6F: $08 $00 $98
    nop                                           ; $5C72: $00
    db $FC                                        ; $5C73: $FC
    ld [$00F0], sp                                ; $5C74: $08 $F0 $00
    add hl, sp                                    ; $5C77: $39
    or b                                          ; $5C78: $B0
    inc bc                                        ; $5C79: $03
    ld de, $1140                                  ; $5C7A: $11 $40 $11
    rlca                                          ; $5C7D: $07
    ld h, b                                       ; $5C7E: $60
    ld [de], a                                    ; $5C7F: $12
    ld b, c                                       ; $5C80: $41
    ld b, b                                       ; $5C81: $40
    stop                                          ; $5C82: $10 $00
    rrca                                          ; $5C84: $0F
    inc h                                         ; $5C85: $24

jr_031_5C86:
    ret nz                                        ; $5C86: $C0

    adc h                                         ; $5C87: $8C
    add b                                         ; $5C88: $80
    inc bc                                        ; $5C89: $03
    ld c, b                                       ; $5C8A: $48
    and b                                         ; $5C8B: $A0
    ld b, [hl]                                    ; $5C8C: $46
    add c                                         ; $5C8D: $81
    ld e, b                                       ; $5C8E: $58
    add a                                         ; $5C8F: $87
    or b                                          ; $5C90: $B0
    db $10                                        ; $5C91: $10
    ld b, d                                       ; $5C92: $42
    adc b                                         ; $5C93: $88
    jr nz, @+$1A                                  ; $5C94: $20 $18

    rlca                                          ; $5C96: $07
    ld [bc], a                                    ; $5C97: $02
    dec b                                         ; $5C98: $05
    db $10                                        ; $5C99: $10
    dec c                                         ; $5C9A: $0D
    ld h, $C0                                     ; $5C9B: $26 $C0
    rrca                                          ; $5C9D: $0F
    add b                                         ; $5C9E: $80
    rst RST_08                                    ; $5C9F: $CF
    inc bc                                        ; $5CA0: $03
    ld b, b                                       ; $5CA1: $40
    jr nc, jr_031_5C33                            ; $5CA2: $30 $8F

    jr jr_031_5CB7                                ; $5CA4: $18 $11

    ld c, $10                                     ; $5CA6: $0E $10
    ld [hl], b                                    ; $5CA8: $70
    ld d, b                                       ; $5CA9: $50
    rst RST_38                                    ; $5CAA: $FF
    inc b                                         ; $5CAB: $04
    ei                                            ; $5CAC: $FB
    jr nz, jr_031_5CB7                            ; $5CAD: $20 $08

    ld b, $50                                     ; $5CAF: $06 $50
    ldh a, [rSC]                                  ; $5CB1: $F0 $02
    db $FC                                        ; $5CB3: $FC
    ld a, b                                       ; $5CB4: $78
    add h                                         ; $5CB5: $84
    dec d                                         ; $5CB6: $15

jr_031_5CB7:
    pop bc                                        ; $5CB7: $C1
    ld a, $03                                     ; $5CB8: $3E $03
    ld d, b                                       ; $5CBA: $50
    jr @-$4D                                      ; $5CBB: $18 $B1

    inc c                                         ; $5CBD: $0C
    db $10                                        ; $5CBE: $10
    ld h, d                                       ; $5CBF: $62
    ld c, $11                                     ; $5CC0: $0E $11
    ldh a, [rDIV]                                 ; $5CC2: $F0 $04
    db $10                                        ; $5CC4: $10
    ld [de], a                                    ; $5CC5: $12
    or b                                          ; $5CC6: $B0
    ld a, [de]                                    ; $5CC7: $1A
    ld d, h                                       ; $5CC8: $54
    jr c, jr_031_5CCB                             ; $5CC9: $38 $00

jr_031_5CCB:
    ld a, a                                       ; $5CCB: $7F
    inc c                                         ; $5CCC: $0C
    nop                                           ; $5CCD: $00
    nop                                           ; $5CCE: $00
    db $F4                                        ; $5CCF: $F4
    ldh a, [rNR43]                                ; $5CD0: $F0 $22
    push af                                       ; $5CD2: $F5
    or $30                                        ; $5CD3: $F6 $30
    rst RST_30                                    ; $5CD5: $F7
    ld a, [$11FB]                                 ; $5CD6: $FA $FB $11
    db $FD                                        ; $5CD9: $FD
    or b                                          ; $5CDA: $B0
    nop                                           ; $5CDB: $00
    cp $00                                        ; $5CDC: $FE $00
    pop af                                        ; $5CDE: $F1
    ld bc, $021E                                  ; $5CDF: $01 $1E $02
    inc a                                         ; $5CE2: $3C
    ld [$F905], sp                                ; $5CE3: $08 $05 $F9
    dec bc                                        ; $5CE6: $0B
    di                                            ; $5CE7: $F3
    add b                                         ; $5CE8: $80
    ldh a, [rNR22]                                ; $5CE9: $F0 $17
    rst RST_20                                    ; $5CEB: $E7
    jr nz, jr_031_5D1D                            ; $5CEC: $20 $2F

    rst RST_08                                    ; $5CEE: $CF
    pop af                                        ; $5CEF: $F1
    ld b, b                                       ; $5CF0: $40
    ld b, e                                       ; $5CF1: $43
    adc h                                         ; $5CF2: $8C
    adc l                                         ; $5CF3: $8D
    sbc h                                         ; $5CF4: $9C
    xor d                                         ; $5CF5: $AA
    nop                                           ; $5CF6: $00
    inc e                                         ; $5CF7: $1C
    nop                                           ; $5CF8: $00
    db $DB                                        ; $5CF9: $DB
    nop                                           ; $5CFA: $00
    rst RST_00                                    ; $5CFB: $C7
    nop                                           ; $5CFC: $00
    rst RST_38                                    ; $5CFD: $FF
    ret nz                                        ; $5CFE: $C0

    nop                                           ; $5CFF: $00
    pop af                                        ; $5D00: $F1
    add hl, bc                                    ; $5D01: $09
    add $28                                       ; $5D02: $C6 $28
    and e                                         ; $5D04: $A3
    ld [hl], b                                    ; $5D05: $70
    ld [hl], e                                    ; $5D06: $73
    ld h, $F0                                     ; $5D07: $26 $F0
    rst RST_30                                    ; $5D09: $F7
    ld de, $E7E8                                  ; $5D0A: $11 $E8 $E7
    ld de, $C1F1                                  ; $5D0D: $11 $F1 $C1
    dec b                                         ; $5D10: $05
    ld a, $19                                     ; $5D11: $3E $19
    and $0C                                       ; $5D13: $E6 $0C
    ldh a, [c]                                    ; $5D15: $F2
    ld h, b                                       ; $5D16: $60
    cp $11                                        ; $5D17: $FE $11
    ld l, d                                       ; $5D19: $6A
    ld bc, $F112                                  ; $5D1A: $01 $12 $F1

jr_031_5D1D:
    jr c, jr_031_5D1F                             ; $5D1D: $38 $00

jr_031_5D1F:
    jr nc, jr_031_5D21                            ; $5D1F: $30 $00

jr_031_5D21:
    ld c, $EC                                     ; $5D21: $0E $EC
    nop                                           ; $5D23: $00
    add b                                         ; $5D24: $80
    ld [bc], a                                    ; $5D25: $02
    ld a, [hl]                                    ; $5D26: $7E
    ld [bc], a                                    ; $5D27: $02
    pop af                                        ; $5D28: $F1
    ld c, c                                       ; $5D29: $49
    add b                                         ; $5D2A: $80
    ld e, a                                       ; $5D2B: $5F
    nop                                           ; $5D2C: $00
    nop                                           ; $5D2D: $00
    ld a, a                                       ; $5D2E: $7F
    inc bc                                        ; $5D2F: $03
    inc bc                                        ; $5D30: $03
    inc bc                                        ; $5D31: $03
    nop                                           ; $5D32: $00

jr_031_5D33:
    dec a                                         ; $5D33: $3D
    nop                                           ; $5D34: $00
    rst RST_30                                    ; $5D35: $F7
    ldh a, [$FFEF]                                ; $5D36: $F0 $EF
    ldh [$FFDF], a                                ; $5D38: $E0 $DF
    ret nz                                        ; $5D3A: $C0

    rst RST_10                                    ; $5D3B: $D7
    ret z                                         ; $5D3C: $C8

    rrca                                          ; $5D3D: $0F
    xor [hl]                                      ; $5D3E: $AE
    sub b                                         ; $5D3F: $90
    ld c, a                                       ; $5D40: $4F
    jr nc, jr_031_5D48                            ; $5D41: $30 $05

    dec a                                         ; $5D43: $3D
    jr z, @+$06                                   ; $5D44: $28 $04

    ld l, d                                       ; $5D46: $6A
    add b                                         ; $5D47: $80

jr_031_5D48:
    ld de, $0102                                  ; $5D48: $11 $02 $01
    inc b                                         ; $5D4B: $04
    rlca                                          ; $5D4C: $07
    inc b                                         ; $5D4D: $04
    adc e                                         ; $5D4E: $8B
    ld l, d                                       ; $5D4F: $6A
    inc b                                         ; $5D50: $04
    daa                                           ; $5D51: $27
    ld bc, $040F                                  ; $5D52: $01 $0F $04
    ccf                                           ; $5D55: $3F
    inc b                                         ; $5D56: $04
    rst RST_38                                    ; $5D57: $FF
    cp a                                          ; $5D58: $BF
    inc b                                         ; $5D59: $04
    ld hl, sp+$04                                 ; $5D5A: $F8 $04
    and b                                         ; $5D5C: $A0
    ld c, c                                       ; $5D5D: $49
    inc bc                                        ; $5D5E: $03
    ld [bc], a                                    ; $5D5F: $02
    adc l                                         ; $5D60: $8D
    db $FD                                        ; $5D61: $FD
    sub a                                         ; $5D62: $97
    inc de                                        ; $5D63: $13
    inc bc                                        ; $5D64: $03
    inc bc                                        ; $5D65: $03
    inc bc                                        ; $5D66: $03
    inc bc                                        ; $5D67: $03
    ld a, [hl]                                    ; $5D68: $7E
    nop                                           ; $5D69: $00
    ld e, a                                       ; $5D6A: $5F
    ld a, $00                                     ; $5D6B: $3E $00
    ld e, $00                                     ; $5D6D: $1E $00
    dec d                                         ; $5D6F: $15
    dec c                                         ; $5D70: $0D
    dec e                                         ; $5D71: $1D
    ld bc, $1DA0                                  ; $5D72: $01 $A0 $1D
    ld [hl], b                                    ; $5D75: $70
    nop                                           ; $5D76: $00
    ld l, h                                       ; $5D77: $6C
    ld h, b                                       ; $5D78: $60
    ld e, h                                       ; $5D79: $5C
    ld b, b                                       ; $5D7A: $40
    inc l                                         ; $5D7B: $2C
    inc e                                         ; $5D7C: $1C
    db $10                                        ; $5D7D: $10
    ld e, [hl]                                    ; $5D7E: $5E
    jr nz, jr_031_5DB1                            ; $5D7F: $20 $30

    inc d                                         ; $5D81: $14
    dec b                                         ; $5D82: $05
    ld c, a                                       ; $5D83: $4F
    jr nc, jr_031_5D96                            ; $5D84: $30 $10

    daa                                           ; $5D86: $27
    jr @+$05                                      ; $5D87: $18 $03

    adc h                                         ; $5D89: $8C
    ld [$0A28], sp                                ; $5D8A: $08 $28 $0A
    ld l, d                                       ; $5D8D: $6A
    ld c, l                                       ; $5D8E: $4D
    inc c                                         ; $5D8F: $0C
    ld e, b                                       ; $5D90: $58
    ld b, $36                                     ; $5D91: $06 $36
    jr nz, jr_031_5DC1                            ; $5D93: $20 $2C

    sub a                                         ; $5D95: $97

jr_031_5D96:
    jr z, jr_031_5DEB                             ; $5D96: $28 $53

    rst RST_10                                    ; $5D98: $D7
    inc b                                         ; $5D99: $04
    rst RST_30                                    ; $5D9A: $F7
    inc b                                         ; $5D9B: $04
    add sp, $04                                   ; $5D9C: $E8 $04
    inc h                                         ; $5D9E: $24
    ld d, c                                       ; $5D9F: $51
    or b                                          ; $5DA0: $B0
    ld [hl], b                                    ; $5DA1: $70
    ld a, b                                       ; $5DA2: $78
    ld b, b                                       ; $5DA3: $40
    inc c                                         ; $5DA4: $0C
    db $E3                                        ; $5DA5: $E3

jr_031_5DA6:
    ret nz                                        ; $5DA6: $C0

    rra                                           ; $5DA7: $1F
    add b                                         ; $5DA8: $80
    ld d, b                                       ; $5DA9: $50
    ccf                                           ; $5DAA: $3F
    inc d                                         ; $5DAB: $14
    ld h, c                                       ; $5DAC: $61
    jr c, jr_031_5D33                             ; $5DAD: $38 $84

    inc h                                         ; $5DAF: $24
    dec h                                         ; $5DB0: $25

jr_031_5DB1:
    call z, $CD17                                 ; $5DB1: $CC $17 $CD
    ld hl, sp-$05                                 ; $5DB4: $F8 $FB
    add sp, $77                                   ; $5DB6: $E8 $77
    inc l                                         ; $5DB8: $2C
    ld b, b                                       ; $5DB9: $40
    ld h, l                                       ; $5DBA: $65
    ld l, c                                       ; $5DBB: $69
    ld [bc], a                                    ; $5DBC: $02
    inc [hl]                                      ; $5DBD: $34
    inc a                                         ; $5DBE: $3C
    ret z                                         ; $5DBF: $C8

    inc b                                         ; $5DC0: $04

jr_031_5DC1:
    adc b                                         ; $5DC1: $88
    dec b                                         ; $5DC2: $05
    inc h                                         ; $5DC3: $24
    rst RST_18                                    ; $5DC4: $DF
    inc e                                         ; $5DC5: $1C
    jr z, jr_031_5DD9                             ; $5DC6: $28 $11

    dec [hl]                                      ; $5DC8: $35
    nop                                           ; $5DC9: $00
    ld a, h                                       ; $5DCA: $7C
    rlca                                          ; $5DCB: $07
    inc b                                         ; $5DCC: $04
    ld e, b                                       ; $5DCD: $58
    add a                                         ; $5DCE: $87
    inc b                                         ; $5DCF: $04
    add hl, bc                                    ; $5DD0: $09
    or h                                          ; $5DD1: $B4
    inc [hl]                                      ; $5DD2: $34
    ld c, $13                                     ; $5DD3: $0E $13
    inc c                                         ; $5DD5: $0C
    ld a, e                                       ; $5DD6: $7B
    ld e, $02                                     ; $5DD7: $1E $02

jr_031_5DD9:
    jr jr_031_5DDB                                ; $5DD9: $18 $00

jr_031_5DDB:
    ld d, l                                       ; $5DDB: $55
    ldh a, [rDIV]                                 ; $5DDC: $F0 $04
    or h                                          ; $5DDE: $B4
    xor e                                         ; $5DDF: $AB
    inc b                                         ; $5DE0: $04
    db $FC                                        ; $5DE1: $FC
    ld b, $7E                                     ; $5DE2: $06 $7E
    ld b, $7C                                     ; $5DE4: $06 $7C
    rlca                                          ; $5DE6: $07
    inc b                                         ; $5DE7: $04
    ld [hl], l                                    ; $5DE8: $75
    ld a, b                                       ; $5DE9: $78
    inc b                                         ; $5DEA: $04

jr_031_5DEB:
    db $F4                                        ; $5DEB: $F4
    inc b                                         ; $5DEC: $04
    ld h, b                                       ; $5DED: $60
    inc b                                         ; $5DEE: $04
    rlca                                          ; $5DEF: $07
    nop                                           ; $5DF0: $00
    push de                                       ; $5DF1: $D5
    adc b                                         ; $5DF2: $88
    nop                                           ; $5DF3: $00
    inc e                                         ; $5DF4: $1C
    nop                                           ; $5DF5: $00

jr_031_5DF6:
    ld a, $00                                     ; $5DF6: $3E $00
    ccf                                           ; $5DF8: $3F
    nop                                           ; $5DF9: $00
    ld a, b                                       ; $5DFA: $78
    ld a, a                                       ; $5DFB: $7F

jr_031_5DFC:
    nop                                           ; $5DFC: $00
    ld h, h                                       ; $5DFD: $64
    ld a, [bc]                                    ; $5DFE: $0A
    jr z, jr_031_5E5E                             ; $5DFF: $28 $5D

    and h                                         ; $5E01: $A4
    push hl                                       ; $5E02: $E5
    ld b, e                                       ; $5E03: $43
    db $E4                                        ; $5E04: $E4
    inc b                                         ; $5E05: $04
    and $E7                                       ; $5E06: $E6 $E7
    cp $FF                                        ; $5E08: $FE $FF
    nop                                           ; $5E0A: $00
    jr nc, jr_031_5DFC                            ; $5E0B: $30 $EF

    ld b, $00                                     ; $5E0D: $06 $00
    add b                                         ; $5E0F: $80
    adc a                                         ; $5E10: $8F
    inc b                                         ; $5E11: $04
    dec c                                         ; $5E12: $0D
    reti                                          ; $5E13: $D9


    jr c, jr_031_5DF6                             ; $5E14: $38 $E0

    ld d, $4C                                     ; $5E16: $16 $4C
    inc b                                         ; $5E18: $04
    sbc e                                         ; $5E19: $9B
    jr c, jr_031_5E99                             ; $5E1A: $38 $7D

    ld [$59E0], sp                                ; $5E1C: $08 $E0 $59
    jr jr_031_5E5B                                ; $5E1F: $18 $3A

    ld hl, sp-$1A                                 ; $5E21: $F8 $E6
    push af                                       ; $5E23: $F5
    jr nc, jr_031_5DA6                            ; $5E24: $30 $80

    inc a                                         ; $5E26: $3C
    or h                                          ; $5E27: $B4
    inc b                                         ; $5E28: $04
    sub e                                         ; $5E29: $93
    db $F4                                        ; $5E2A: $F4
    dec b                                         ; $5E2B: $05
    ld d, e                                       ; $5E2C: $53
    inc b                                         ; $5E2D: $04
    ld e, e                                       ; $5E2E: $5B
    inc b                                         ; $5E2F: $04
    xor e                                         ; $5E30: $AB
    dec b                                         ; $5E31: $05
    ld c, e                                       ; $5E32: $4B
    inc b                                         ; $5E33: $04
    ld c, a                                       ; $5E34: $4F
    ld b, h                                       ; $5E35: $44
    ld e, a                                       ; $5E36: $5F
    and d                                         ; $5E37: $A2
    rlca                                          ; $5E38: $07
    cp $07                                        ; $5E39: $FE $07
    rlca                                          ; $5E3B: $07
    dec b                                         ; $5E3C: $05
    sbc l                                         ; $5E3D: $9D
    dec b                                         ; $5E3E: $05
    sbc h                                         ; $5E3F: $9C
    ld b, $78                                     ; $5E40: $06 $78
    xor e                                         ; $5E42: $AB
    ld b, $7C                                     ; $5E43: $06 $7C
    inc b                                         ; $5E45: $04
    inc a                                         ; $5E46: $3C
    inc b                                         ; $5E47: $04
    scf                                           ; $5E48: $37
    nop                                           ; $5E49: $00
    db $FC                                        ; $5E4A: $FC
    xor c                                         ; $5E4B: $A9
    nop                                           ; $5E4C: $00
    inc e                                         ; $5E4D: $1C
    nop                                           ; $5E4E: $00
    rlca                                          ; $5E4F: $07
    nop                                           ; $5E50: $00
    dec de                                        ; $5E51: $1B
    inc bc                                        ; $5E52: $03
    dec l                                         ; $5E53: $2D
    sub $F4                                       ; $5E54: $D6 $F4
    inc c                                         ; $5E56: $0C
    add hl, sp                                    ; $5E57: $39
    inc b                                         ; $5E58: $04
    ldh [rP1], a                                  ; $5E59: $E0 $00

jr_031_5E5B:
    jr jr_031_5E7C                                ; $5E5B: $18 $1F

    db $DD                                        ; $5E5D: $DD

jr_031_5E5E:
    inc b                                         ; $5E5E: $04
    ld bc, $01FF                                  ; $5E5F: $01 $FF $01
    ld de, $3F94                                  ; $5E62: $11 $94 $3F
    ld e, b                                       ; $5E65: $58
    dec c                                         ; $5E66: $0D
    rst RST_00                                    ; $5E67: $C7
    ld c, h                                       ; $5E68: $4C
    db $FD                                        ; $5E69: $FD
    inc [hl]                                      ; $5E6A: $34
    inc b                                         ; $5E6B: $04
    and h                                         ; $5E6C: $A4
    ld a, e                                       ; $5E6D: $7B
    jr z, jr_031_5EDA                             ; $5E6E: $28 $6A

    add a                                         ; $5E70: $87
    ld b, l                                       ; $5E71: $45
    inc b                                         ; $5E72: $04
    ld [hl], a                                    ; $5E73: $77
    inc b                                         ; $5E74: $04
    adc a                                         ; $5E75: $8F
    inc b                                         ; $5E76: $04
    ld hl, sp-$2E                                 ; $5E77: $F8 $D2
    push de                                       ; $5E79: $D5
    adc h                                         ; $5E7A: $8C
    add b                                         ; $5E7B: $80

jr_031_5E7C:
    ret nz                                        ; $5E7C: $C0

    ret nz                                        ; $5E7D: $C0

    add hl, de                                    ; $5E7E: $19
    inc b                                         ; $5E7F: $04
    ld sp, $14A2                                  ; $5E80: $31 $A2 $14
    ld b, e                                       ; $5E83: $43
    inc h                                         ; $5E84: $24
    ld [bc], a                                    ; $5E85: $02
    ld bc, $04C2                                  ; $5E86: $01 $C2 $04
    sbc a                                         ; $5E89: $9F
    ld sp, hl                                     ; $5E8A: $F9
    inc d                                         ; $5E8B: $14
    sub b                                         ; $5E8C: $90
    inc b                                         ; $5E8D: $04
    add b                                         ; $5E8E: $80
    inc b                                         ; $5E8F: $04
    cp b                                          ; $5E90: $B8
    ld b, b                                       ; $5E91: $40
    ld e, h                                       ; $5E92: $5C
    ei                                            ; $5E93: $FB
    inc a                                         ; $5E94: $3C
    dec b                                         ; $5E95: $05
    ld [hl], b                                    ; $5E96: $70
    ld a, c                                       ; $5E97: $79
    inc b                                         ; $5E98: $04

jr_031_5E99:
    db $FC                                        ; $5E99: $FC

jr_031_5E9A:
    ld b, $15                                     ; $5E9A: $06 $15
    ld e, l                                       ; $5E9C: $5D
    ldh a, [rDIV]                                 ; $5E9D: $F0 $04
    jr nz, jr_031_5E9A                            ; $5E9F: $20 $F9

    inc bc                                        ; $5EA1: $03
    nop                                           ; $5EA2: $00

jr_031_5EA3:
    jr c, @+$06                                   ; $5EA3: $38 $04

    cp d                                          ; $5EA5: $BA
    push bc                                       ; $5EA6: $C5
    ld [hl], b                                    ; $5EA7: $70
    ld b, $15                                     ; $5EA8: $06 $15
    dec b                                         ; $5EAA: $05
    ld a, h                                       ; $5EAB: $7C
    ld b, $1C                                     ; $5EAC: $06 $1C
    rst RST_10                                    ; $5EAE: $D7
    call nz, Call_000_03EC                        ; $5EAF: $C4 $EC $03
    dec c                                         ; $5EB2: $0D
    ld [$041C], sp                                ; $5EB3: $08 $1C $04
    inc d                                         ; $5EB6: $14
    ld l, e                                       ; $5EB7: $6B
    inc b                                         ; $5EB8: $04
    inc d                                         ; $5EB9: $14
    ld a, a                                       ; $5EBA: $7F
    ret nz                                        ; $5EBB: $C0

    or b                                          ; $5EBC: $B0
    pop af                                        ; $5EBD: $F1
    ld hl, sp+$05                                 ; $5EBE: $F8 $05
    ld [hl], d                                    ; $5EC0: $72
    ld [hl], c                                    ; $5EC1: $71
    inc b                                         ; $5EC2: $04
    call nz, Call_031_6004                        ; $5EC3: $C4 $04 $60
    cp $E2                                        ; $5EC6: $FE $E2
    rlca                                          ; $5EC8: $07
    jp c, Jump_031_5850                           ; $5EC9: $DA $50 $58

    ldh [rNR32], a                                ; $5ECC: $E0 $1C
    inc b                                         ; $5ECE: $04
    rst RST_38                                    ; $5ECF: $FF
    inc b                                         ; $5ED0: $04
    db $FC                                        ; $5ED1: $FC
    ld a, b                                       ; $5ED2: $78
    db $E3                                        ; $5ED3: $E3
    inc l                                         ; $5ED4: $2C
    ld b, h                                       ; $5ED5: $44
    inc c                                         ; $5ED6: $0C
    call nc, $187F                                ; $5ED7: $D4 $7F $18

jr_031_5EDA:
    sbc a                                         ; $5EDA: $9F
    ld d, [hl]                                    ; $5EDB: $56
    add d                                         ; $5EDC: $82
    ld b, b                                       ; $5EDD: $40
    jp nz, Jump_031_6250                          ; $5EDE: $C2 $50 $62

    sub l                                         ; $5EE1: $95
    inc b                                         ; $5EE2: $04
    add e                                         ; $5EE3: $83
    adc a                                         ; $5EE4: $8F
    inc b                                         ; $5EE5: $04
    push bc                                       ; $5EE6: $C5
    ld [bc], a                                    ; $5EE7: $02
    ld c, e                                       ; $5EE8: $4B
    ld l, h                                       ; $5EE9: $6C
    ld a, b                                       ; $5EEA: $78
    ret c                                         ; $5EEB: $D8

    ld d, h                                       ; $5EEC: $54
    db $FD                                        ; $5EED: $FD
    inc e                                         ; $5EEE: $1C
    ld d, h                                       ; $5EEF: $54
    inc b                                         ; $5EF0: $04
    and h                                         ; $5EF1: $A4
    db $E3                                        ; $5EF2: $E3
    nop                                           ; $5EF3: $00
    add c                                         ; $5EF4: $81
    ld b, $FF                                     ; $5EF5: $06 $FF
    ld e, l                                       ; $5EF7: $5D
    inc bc                                        ; $5EF8: $03

jr_031_5EF9:
    dec a                                         ; $5EF9: $3D
    ld c, l                                       ; $5EFA: $4D
    ld e, l                                       ; $5EFB: $5D
    dec b                                         ; $5EFC: $05
    call nc, Call_031_783E                        ; $5EFD: $D4 $3E $78
    ld a, [hl]                                    ; $5F00: $7E
    rlca                                          ; $5F01: $07
    ld b, $00                                     ; $5F02: $06 $00
    call c, Call_031_6E40                         ; $5F04: $DC $40 $6E
    ld b, [hl]                                    ; $5F07: $46
    dec a                                         ; $5F08: $3D
    ld l, a                                       ; $5F09: $6F
    ld b, h                                       ; $5F0A: $44
    inc b                                         ; $5F0B: $04
    ld a, a                                       ; $5F0C: $7F
    nop                                           ; $5F0D: $00
    db $E4                                        ; $5F0E: $E4
    ld [de], a                                    ; $5F0F: $12
    ldh [rNR52], a                                ; $5F10: $E0 $26
    or e                                          ; $5F12: $B3
    rst RST_00                                    ; $5F13: $C7
    dec b                                         ; $5F14: $05
    jr c, jr_031_5F5A                             ; $5F15: $38 $43

    inc b                                         ; $5F17: $04
    ld d, b                                       ; $5F18: $50
    inc bc                                        ; $5F19: $03
    call nc, $9500                                ; $5F1A: $D4 $00 $95
    db $FC                                        ; $5F1D: $FC
    inc b                                         ; $5F1E: $04
    ld a, b                                       ; $5F1F: $78
    inc b                                         ; $5F20: $04
    jr nc, jr_031_5EA3                            ; $5F21: $30 $80

    ld d, [hl]                                    ; $5F23: $56
    ld de, $1FB0                                  ; $5F24: $11 $B0 $1F

jr_031_5F27:
    inc d                                         ; $5F27: $14
    ld [$0814], sp                                ; $5F28: $08 $14 $08
    and $BF                                       ; $5F2B: $E6 $BF
    jr jr_031_5F27                                ; $5F2D: $18 $F8

    inc c                                         ; $5F2F: $0C
    ld hl, $5C01                                  ; $5F30: $21 $01 $5C
    jr z, jr_031_5EF9                             ; $5F33: $28 $C4

    add l                                         ; $5F35: $85
    xor e                                         ; $5F36: $AB
    add a                                         ; $5F37: $87
    jr @+$11                                      ; $5F38: $18 $0F

    db $10                                        ; $5F3A: $10
    inc b                                         ; $5F3B: $04
    ret nc                                        ; $5F3C: $D0

    ld b, c                                       ; $5F3D: $41
    call nz, $58C0                                ; $5F3E: $C4 $C0 $58
    pop de                                        ; $5F41: $D1
    ret c                                         ; $5F42: $D8

    sub b                                         ; $5F43: $90
    inc b                                         ; $5F44: $04
    jr nz, @-$47                                  ; $5F45: $20 $B7

    db $FD                                        ; $5F47: $FD
    jr @+$26                                      ; $5F48: $18 $24

    adc c                                         ; $5F4A: $89
    rlca                                          ; $5F4B: $07
    inc bc                                        ; $5F4C: $03
    inc bc                                        ; $5F4D: $03
    ld b, b                                       ; $5F4E: $40
    inc de                                        ; $5F4F: $13
    ld [$0303], a                                 ; $5F50: $EA $03 $03
    nop                                           ; $5F53: $00
    ld [bc], a                                    ; $5F54: $02
    add hl, bc                                    ; $5F55: $09
    ld l, [hl]                                    ; $5F56: $6E
    inc b                                         ; $5F57: $04
    inc b                                         ; $5F58: $04
    ld c, [hl]                                    ; $5F59: $4E

jr_031_5F5A:
    dec sp                                        ; $5F5A: $3B
    ld d, b                                       ; $5F5B: $50
    ld e, $60                                     ; $5F5C: $1E $60
    call nz, $05A8                                ; $5F5E: $C4 $A8 $05
    ld a, $9A                                     ; $5F61: $3E $9A
    ld b, [hl]                                    ; $5F63: $46
    inc hl                                        ; $5F64: $23
    rst RST_00                                    ; $5F65: $C7
    db $E4                                        ; $5F66: $E4
    ld hl, sp-$1D                                 ; $5F67: $F8 $E3
    ld [$7E01], sp                                ; $5F69: $08 $01 $7E
    inc bc                                        ; $5F6C: $03
    jr nz, jr_031_5F7B                            ; $5F6D: $20 $0C

    call z, $8704                                 ; $5F6F: $CC $04 $87
    inc d                                         ; $5F72: $14
    pop bc                                        ; $5F73: $C1
    ld h, a                                       ; $5F74: $67
    ldh [$FF38], a                                ; $5F75: $E0 $38
    ld [$C6F7], sp                                ; $5F77: $08 $F7 $C6
    inc b                                         ; $5F7A: $04

jr_031_5F7B:
    sub b                                         ; $5F7B: $90
    inc b                                         ; $5F7C: $04
    ld [$1028], a                                 ; $5F7D: $EA $28 $10
    inc b                                         ; $5F80: $04
    jr nc, jr_031_5FC0                            ; $5F81: $30 $3D

    ld a, h                                       ; $5F83: $7C
    inc b                                         ; $5F84: $04
    db $10                                        ; $5F85: $10
    ld b, l                                       ; $5F86: $45
    ldh [c], a                                    ; $5F87: $E2
    ld b, h                                       ; $5F88: $44
    and $41                                       ; $5F89: $E6 $41
    xor $E4                                       ; $5F8B: $EE $E4
    db $EC                                        ; $5F8D: $EC
    ld b, h                                       ; $5F8E: $44
    ld h, d                                       ; $5F8F: $62
    add hl, bc                                    ; $5F90: $09
    dec b                                         ; $5F91: $05
    dec a                                         ; $5F92: $3D
    daa                                           ; $5F93: $27
    ld l, a                                       ; $5F94: $6F
    cpl                                           ; $5F95: $2F
    nop                                           ; $5F96: $00
    ld c, $D3                                     ; $5F97: $0E $D3
    add sp, $18                                   ; $5F99: $E8 $18
    inc e                                         ; $5F9B: $1C
    ldh a, [$FF81]                                ; $5F9C: $F0 $81
    ld h, b                                       ; $5F9E: $60
    xor b                                         ; $5F9F: $A8
    dec b                                         ; $5FA0: $05
    sbc [hl]                                      ; $5FA1: $9E
    jp nz, Jump_000_18A0                          ; $5FA2: $C2 $A0 $18

    inc b                                         ; $5FA5: $04
    add h                                         ; $5FA6: $84
    ld d, b                                       ; $5FA7: $50
    nop                                           ; $5FA8: $00
    rst RST_08                                    ; $5FA9: $CF
    add a                                         ; $5FAA: $87
    dec b                                         ; $5FAB: $05
    inc hl                                        ; $5FAC: $23
    rrca                                          ; $5FAD: $0F
    ld bc, $3907                                  ; $5FAE: $01 $07 $39
    adc h                                         ; $5FB1: $8C
    inc b                                         ; $5FB2: $04
    add a                                         ; $5FB3: $87
    or h                                          ; $5FB4: $B4
    ld [$0C68], sp                                ; $5FB5: $08 $68 $0C
    ld l, h                                       ; $5FB8: $6C
    adc b                                         ; $5FB9: $88
    inc c                                         ; $5FBA: $0C
    inc d                                         ; $5FBB: $14
    or b                                          ; $5FBC: $B0

jr_031_5FBD:
    ld [hl], h                                    ; $5FBD: $74
    ld b, $95                                     ; $5FBE: $06 $95

jr_031_5FC0:
    dec a                                         ; $5FC0: $3D
    ld c, e                                       ; $5FC1: $4B
    nop                                           ; $5FC2: $00
    ld e, e                                       ; $5FC3: $5B
    nop                                           ; $5FC4: $00
    nop                                           ; $5FC5: $00
    ld a, a                                       ; $5FC6: $7F
    inc c                                         ; $5FC7: $0C
    pop af                                        ; $5FC8: $F1
    rst RST_38                                    ; $5FC9: $FF
    inc c                                         ; $5FCA: $0C
    di                                            ; $5FCB: $F3
    ld d, b                                       ; $5FCC: $50
    cp $00                                        ; $5FCD: $FE $00
    ld sp, hl                                     ; $5FCF: $F9
    nop                                           ; $5FD0: $00
    ldh a, [c]                                    ; $5FD1: $F2
    di                                            ; $5FD2: $F3
    ldh [$FFE4], a                                ; $5FD3: $E0 $E4
    sbc d                                         ; $5FD5: $9A
    db $10                                        ; $5FD6: $10
    add sp, -$3F                                  ; $5FD7: $E8 $C1
    nop                                           ; $5FD9: $00
    di                                            ; $5FDA: $F3
    ld c, $00                                     ; $5FDB: $0E $00
    ldh a, [$FFC0]                                ; $5FDD: $F0 $C0
    nop                                           ; $5FDF: $00
    jr nz, @-$02                                  ; $5FE0: $20 $FC

    jr jr_031_5FEB                                ; $5FE2: $18 $07

    inc b                                         ; $5FE4: $04
    inc bc                                        ; $5FE5: $03
    add b                                         ; $5FE6: $80
    pop af                                        ; $5FE7: $F1
    nop                                           ; $5FE8: $00
    di                                            ; $5FE9: $F3
    ld h, b                                       ; $5FEA: $60

jr_031_5FEB:
    nop                                           ; $5FEB: $00
    sbc h                                         ; $5FEC: $9C
    ld h, b                                       ; $5FED: $60
    ld a, b                                       ; $5FEE: $78
    ld [hl], b                                    ; $5FEF: $70
    ld d, d                                       ; $5FF0: $52
    add c                                         ; $5FF1: $81
    db $10                                        ; $5FF2: $10
    ld [hl], h                                    ; $5FF3: $74
    jr nz, @+$32                                  ; $5FF4: $20 $30

    rlca                                          ; $5FF6: $07
    di                                            ; $5FF7: $F3
    ret nz                                        ; $5FF8: $C0

    add c                                         ; $5FF9: $81
    nop                                           ; $5FFA: $00
    dec a                                         ; $5FFB: $3D
    ld a, $66                                     ; $5FFC: $3E $66
    ld h, a                                       ; $5FFE: $67
    ld [bc], a                                    ; $5FFF: $02
    ld d, e                                       ; $6000: $53
    and b                                         ; $6001: $A0
    ld l, d                                       ; $6002: $6A
    di                                            ; $6003: $F3

Call_031_6004:
    pop bc                                        ; $6004: $C1
    pop af                                        ; $6005: $F1
    cp $00                                        ; $6006: $FE $00
    ld e, $00                                     ; $6008: $1E $00
    and $22                                       ; $600A: $E6 $22
    ld b, $F2                                     ; $600C: $06 $F2
    ldh [$FF60], a                                ; $600E: $E0 $60
    add b                                         ; $6010: $80
    ld h, h                                       ; $6011: $64
    db $10                                        ; $6012: $10
    ld a, [hl]                                    ; $6013: $7E
    xor c                                         ; $6014: $A9
    db $10                                        ; $6015: $10
    ld a, a                                       ; $6016: $7F
    ld c, $FF                                     ; $6017: $0E $FF
    ld c, $CB                                     ; $6019: $0E $CB
    db $D3                                        ; $601B: $D3
    inc d                                         ; $601C: $14
    inc b                                         ; $601D: $04
    jp $C9C5                                      ; $601E: $C3 $C5 $C9


    add $C8                                       ; $6021: $C6 $C8
    ld b, b                                       ; $6023: $40
    call nc, Call_000_2AD0                        ; $6024: $D4 $D0 $2A
    rst RST_18                                    ; $6027: $DF
    adc b                                         ; $6028: $88
    nop                                           ; $6029: $00
    adc c                                         ; $602A: $89
    db $10                                        ; $602B: $10
    adc e                                         ; $602C: $8B
    db $10                                        ; $602D: $10
    jp nz, $C140                                  ; $602E: $C2 $40 $C1

    or b                                          ; $6031: $B0
    ret nz                                        ; $6032: $C0

    ld h, a                                       ; $6033: $67
    ld h, b                                       ; $6034: $60
    adc a                                         ; $6035: $8F
    nop                                           ; $6036: $00
    rra                                           ; $6037: $1F
    ld h, l                                       ; $6038: $65
    ldh [rP1], a                                  ; $6039: $E0 $00
    jr nz, jr_031_5FBD                            ; $603B: $20 $80

    ld a, a                                       ; $603D: $7F
    ld h, b                                       ; $603E: $60
    rst RST_38                                    ; $603F: $FF
    inc de                                        ; $6040: $13
    adc e                                         ; $6041: $8B
    ld [hl], c                                    ; $6042: $71
    pop bc                                        ; $6043: $C1
    ld a, $C0                                     ; $6044: $3E $C0
    db $10                                        ; $6046: $10
    db $10                                        ; $6047: $10
    ld [hl], b                                    ; $6048: $70
    ld de, $3104                                  ; $6049: $11 $04 $31
    cp $27                                        ; $604C: $FE $27
    ld hl, sp+$60                                 ; $604E: $F8 $60
    ldh [$FF92], a                                ; $6050: $E0 $92
    ld [de], a                                    ; $6052: $12
    ld e, d                                       ; $6053: $5A
    dec sp                                        ; $6054: $3B
    nop                                           ; $6055: $00
    ld a, e                                       ; $6056: $7B
    nop                                           ; $6057: $00
    and b                                         ; $6058: $A0
    nop                                           ; $6059: $00
    dec d                                         ; $605A: $15
    jp nz, Jump_000_10AA                          ; $605B: $C2 $AA $10

    jr nz, jr_031_6060                            ; $605E: $20 $00

jr_031_6060:
    halt                                          ; $6060: $76
    nop                                           ; $6061: $00
    ld [hl], $00                                  ; $6062: $36 $00
    ld a, a                                       ; $6064: $7F
    xor b                                         ; $6065: $A8
    ld c, $FF                                     ; $6066: $0E $FF
    ld b, $FC                                     ; $6068: $06 $FC
    nop                                           ; $606A: $00
    ld hl, sp-$06                                 ; $606B: $F8 $FA
    ldh [rSC], a                                  ; $606D: $E0 $02
    pop hl                                        ; $606F: $E1
    pop bc                                        ; $6070: $C1
    rst RST_10                                    ; $6071: $D7
    or b                                          ; $6072: $B0
    cp a                                          ; $6073: $BF
    and b                                         ; $6074: $A0
    ld [de], a                                    ; $6075: $12
    nop                                           ; $6076: $00
    ld d, b                                       ; $6077: $50
    ccf                                           ; $6078: $3F
    ld [de], a                                    ; $6079: $12
    rst RST_18                                    ; $607A: $DF
    ld de, $FFC0                                  ; $607B: $11 $C0 $FF
    inc bc                                        ; $607E: $03
    db $FC                                        ; $607F: $FC
    ldh a, [$FF50]                                ; $6080: $F0 $50
    jr nc, jr_031_6099                            ; $6082: $30 $15

    sub c                                         ; $6084: $91
    rlca                                          ; $6085: $07
    cp b                                          ; $6086: $B8
    ld c, $60                                     ; $6087: $0E $60
    nop                                           ; $6089: $00
    add d                                         ; $608A: $82
    ld a, h                                       ; $608B: $7C
    dec b                                         ; $608C: $05
    ld sp, hl                                     ; $608D: $F9
    dec bc                                        ; $608E: $0B
    di                                            ; $608F: $F3
    add hl, de                                    ; $6090: $19
    pop hl                                        ; $6091: $E1
    dec b                                         ; $6092: $05
    ld [hl], h                                    ; $6093: $74
    add h                                         ; $6094: $84
    call z, $240C                                 ; $6095: $CC $0C $24
    nop                                           ; $6098: $00

jr_031_6099:
    jr nz, jr_031_609B                            ; $6099: $20 $00

jr_031_609B:
    ld d, b                                       ; $609B: $50
    ld a, [hl-]                                   ; $609C: $3A
    nop                                           ; $609D: $00
    jr nc, jr_031_60A0                            ; $609E: $30 $00

jr_031_60A0:
    rla                                           ; $60A0: $17
    db $10                                        ; $60A1: $10
    ld b, d                                       ; $60A2: $42
    nop                                           ; $60A3: $00
    ld d, c                                       ; $60A4: $51
    ld c, h                                       ; $60A5: $4C
    db $10                                        ; $60A6: $10
    or h                                          ; $60A7: $B4
    db $10                                        ; $60A8: $10
    jp c, Jump_031_5202                           ; $60A9: $DA $02 $52

    db $10                                        ; $60AC: $10
    ld b, l                                       ; $60AD: $45
    ld h, $00                                     ; $60AE: $26 $00
    sub d                                         ; $60B0: $92
    ld [de], a                                    ; $60B1: $12
    inc [hl]                                      ; $60B2: $34
    nop                                           ; $60B3: $00
    inc d                                         ; $60B4: $14
    nop                                           ; $60B5: $00
    ld d, l                                       ; $60B6: $55
    adc $00                                       ; $60B7: $CE $00
    sbc [hl]                                      ; $60B9: $9E
    nop                                           ; $60BA: $00
    ld a, $00                                     ; $60BB: $3E $00
    ld a, [hl]                                    ; $60BD: $7E
    ld [bc], a                                    ; $60BE: $02
    db $10                                        ; $60BF: $10
    ld a, h                                       ; $60C0: $7C
    ld a, l                                       ; $60C1: $7D
    ld [hl], b                                    ; $60C2: $70
    nop                                           ; $60C3: $00
    ld b, b                                       ; $60C4: $40
    ld c, d                                       ; $60C5: $4A
    nop                                           ; $60C6: $00
    ld h, $84                                     ; $60C7: $26 $84
    db $10                                        ; $60C9: $10
    dec e                                         ; $60CA: $1D
    dec b                                         ; $60CB: $05
    dec a                                         ; $60CC: $3D
    inc c                                         ; $60CD: $0C

jr_031_60CE:
    or b                                          ; $60CE: $B0
    inc bc                                        ; $60CF: $03
    rrca                                          ; $60D0: $0F
    add d                                         ; $60D1: $82
    nop                                           ; $60D2: $00
    ccf                                           ; $60D3: $3F
    ld e, $FF                                     ; $60D4: $1E $FF
    and h                                         ; $60D6: $A4

Jump_031_60D7:
    or [hl]                                       ; $60D7: $B6
    db $10                                        ; $60D8: $10
    xor l                                         ; $60D9: $AD
    ld c, c                                       ; $60DA: $49
    jr z, jr_031_60ED                             ; $60DB: $28 $10

    jr nz, @+$71                                  ; $60DD: $20 $6F

    db $10                                        ; $60DF: $10
    ld a, a                                       ; $60E0: $7F
    ret nz                                        ; $60E1: $C0

jr_031_60E2:
    or b                                          ; $60E2: $B0
    inc b                                         ; $60E3: $04
    add b                                         ; $60E4: $80
    db $ED                                        ; $60E5: $ED
    dec d                                         ; $60E6: $15
    ldh [rNR24], a                                ; $60E7: $E0 $19
    db $10                                        ; $60E9: $10
    ld [$50F0], sp                                ; $60EA: $08 $F0 $50

jr_031_60ED:
    inc c                                         ; $60ED: $0C
    db $10                                        ; $60EE: $10
    inc b                                         ; $60EF: $04
    db $10                                        ; $60F0: $10
    ld c, b                                       ; $60F1: $48
    or b                                          ; $60F2: $B0
    dec e                                         ; $60F3: $1D
    ld b, c                                       ; $60F4: $41
    dec e                                         ; $60F5: $1D
    ld e, b                                       ; $60F6: $58
    nop                                           ; $60F7: $00
    ld l, b                                       ; $60F8: $68
    db $10                                        ; $60F9: $10
    ld h, b                                       ; $60FA: $60
    db $10                                        ; $60FB: $10
    call nz, Call_031_4310                        ; $60FC: $C4 $10 $43

jr_031_60FF:
    ld [$40E0], sp                                ; $60FF: $08 $E0 $40
    inc c                                         ; $6102: $0C
    pop hl                                        ; $6103: $E1
    adc l                                         ; $6104: $8D
    ld h, b                                       ; $6105: $60
    nop                                           ; $6106: $00
    ld b, c                                       ; $6107: $41
    ld a, e                                       ; $6108: $7B
    db $10                                        ; $6109: $10
    cp b                                          ; $610A: $B8
    ld b, c                                       ; $610B: $41
    jr nz, jr_031_60CE                            ; $610C: $20 $C0

    inc a                                         ; $610E: $3C
    db $10                                        ; $610F: $10
    ld b, b                                       ; $6110: $40
    jr nc, jr_031_6144                            ; $6111: $30 $31

    ld b, b                                       ; $6113: $40
    jr jr_031_6176                                ; $6114: $18 $60

    jr z, jr_031_6120                             ; $6116: $28 $08

    ret                                           ; $6118: $C9


jr_031_6119:
    ld bc, $6309                                  ; $6119: $01 $09 $63
    add e                                         ; $611C: $83
    cpl                                           ; $611D: $2F
    rrca                                          ; $611E: $0F
    scf                                           ; $611F: $37

jr_031_6120:
    rst RST_00                                    ; $6120: $C7
    db $10                                        ; $6121: $10
    ld [bc], a                                    ; $6122: $02
    rlca                                          ; $6123: $07
    inc sp                                        ; $6124: $33
    jp Jump_031_4535                              ; $6125: $C3 $35 $45


    cp $0E                                        ; $6128: $FE $0E
    inc a                                         ; $612A: $3C
    inc b                                         ; $612B: $04
    ld a, h                                       ; $612C: $7C
    ld [hl], h                                    ; $612D: $74
    halt                                          ; $612E: $76
    ld [hl], b                                    ; $612F: $70
    ld [hl], a                                    ; $6130: $77
    db $10                                        ; $6131: $10
    ld a, e                                       ; $6132: $7B
    ld b, b                                       ; $6133: $40
    dec b                                         ; $6134: $05
    ld a, a                                       ; $6135: $7F
    nop                                           ; $6136: $00
    rra                                           ; $6137: $1F
    inc e                                         ; $6138: $1C
    ld h, e                                       ; $6139: $63
    jr nz, jr_031_619C                            ; $613A: $20 $60

    ld d, b                                       ; $613C: $50
    inc d                                         ; $613D: $14
    cp a                                          ; $613E: $BF
    ld bc, $30FE                                  ; $613F: $01 $FE $30
    rst RST_38                                    ; $6142: $FF
    rla                                           ; $6143: $17

jr_031_6144:
    ld b, $F4                                     ; $6144: $06 $F4
    nop                                           ; $6146: $00
    jr z, jr_031_6119                             ; $6147: $28 $D0

    inc a                                         ; $6149: $3C
    ret nz                                        ; $614A: $C0

    add h                                         ; $614B: $84
    ld l, b                                       ; $614C: $68
    jp nc, $9024                                  ; $614D: $D2 $24 $90

    jr nz, jr_031_60E2                            ; $6150: $20 $90

    ld l, h                                       ; $6152: $6C
    db $10                                        ; $6153: $10
    ld [hl-], a                                   ; $6154: $32
    call z, Call_031_4036                         ; $6155: $CC $36 $40
    ld d, $B1                                     ; $6158: $16 $B1
    call Call_031_50B0                            ; $615A: $CD $B0 $50
    or d                                          ; $615D: $B2
    db $10                                        ; $615E: $10
    and b                                         ; $615F: $A0
    xor $00                                       ; $6160: $EE $00
    ret c                                         ; $6162: $D8

    and $C8                                       ; $6163: $E6 $C8
    or $C4                                        ; $6165: $F6 $C4
    ld a, [$6D42]                                 ; $6167: $FA $42 $6D
    ld [bc], a                                    ; $616A: $02
    ld e, $60                                     ; $616B: $1E $60
    rra                                           ; $616D: $1F
    jr nz, jr_031_60FF                            ; $616E: $20 $8F

    or b                                          ; $6170: $B0
    db $10                                        ; $6171: $10
    sub b                                         ; $6172: $90
    ld bc, $2827                                  ; $6173: $01 $27 $28

jr_031_6176:
    ld h, e                                       ; $6176: $63
    ld h, h                                       ; $6177: $64
    ld c, d                                       ; $6178: $4A
    ld c, b                                       ; $6179: $48
    add hl, de                                    ; $617A: $19
    nop                                           ; $617B: $00
    nop                                           ; $617C: $00
    add hl, sp                                    ; $617D: $39
    pop bc                                        ; $617E: $C1
    ld a, [hl-]                                   ; $617F: $3A
    ld b, d                                       ; $6180: $42
    ld a, [de]                                    ; $6181: $1A
    ldh [c], a                                    ; $6182: $E2
    sbc b                                         ; $6183: $98
    ld h, b                                       ; $6184: $60
    ld [bc], a                                    ; $6185: $02
    reti                                          ; $6186: $D9


    ld hl, $01F1                                  ; $6187: $21 $F1 $01
    di                                            ; $618A: $F3
    inc bc                                        ; $618B: $03
    ld h, b                                       ; $618C: $60
    nop                                           ; $618D: $00
    ld d, l                                       ; $618E: $55
    cp $06                                        ; $618F: $FE $06
    ld a, [hl]                                    ; $6191: $7E
    nop                                           ; $6192: $00
    ld a, $02                                     ; $6193: $3E $02
    ld e, [hl]                                    ; $6195: $5E
    nop                                           ; $6196: $00
    jr z, jr_031_61A8                             ; $6197: $28 $0F

    jr nc, @+$12                                  ; $6199: $30 $10

    ld d, b                                       ; $619B: $50

jr_031_619C:
    db $10                                        ; $619C: $10
    ld [hl], b                                    ; $619D: $70
    rra                                           ; $619E: $1F
    ld h, b                                       ; $619F: $60
    inc c                                         ; $61A0: $0C
    inc hl                                        ; $61A1: $23
    ld b, b                                       ; $61A2: $40
    ld a, h                                       ; $61A3: $7C
    nop                                           ; $61A4: $00
    ld d, c                                       ; $61A5: $51
    sub c                                         ; $61A6: $91
    adc c                                         ; $61A7: $89

jr_031_61A8:
    ld l, [hl]                                    ; $61A8: $6E
    ld h, b                                       ; $61A9: $60
    add sp, $40                                   ; $61AA: $E8 $40
    db $10                                        ; $61AC: $10
    dec bc                                        ; $61AD: $0B
    db $F4                                        ; $61AE: $F4
    rlca                                          ; $61AF: $07
    or b                                          ; $61B0: $B0
    inc bc                                        ; $61B1: $03
    ld b, b                                       ; $61B2: $40
    or h                                          ; $61B3: $B4
    jr nc, jr_031_61EA                            ; $61B4: $30 $34

    ld b, $98                                     ; $61B6: $06 $98
    ld [bc], a                                    ; $61B8: $02
    ld a, [hl-]                                   ; $61B9: $3A
    nop                                           ; $61BA: $00
    ld d, h                                       ; $61BB: $54
    cp h                                          ; $61BC: $BC
    db $10                                        ; $61BD: $10
    ccf                                           ; $61BE: $3F

jr_031_61BF:
    db $10                                        ; $61BF: $10
    add a                                         ; $61C0: $87
    db $10                                        ; $61C1: $10
    add e                                         ; $61C2: $83
    jr c, jr_031_61D9                             ; $61C3: $38 $14

    dec l                                         ; $61C5: $2D
    inc h                                         ; $61C6: $24
    dec h                                         ; $61C7: $25
    db $10                                        ; $61C8: $10
    and l                                         ; $61C9: $A5
    db $10                                        ; $61CA: $10
    ld d, e                                       ; $61CB: $53
    ld c, b                                       ; $61CC: $48
    dec b                                         ; $61CD: $05
    daa                                           ; $61CE: $27
    db $10                                        ; $61CF: $10
    add hl, bc                                    ; $61D0: $09
    inc b                                         ; $61D1: $04
    jp $E1F0                                      ; $61D2: $C3 $F0 $E1


    db $10                                        ; $61D5: $10
    ld d, h                                       ; $61D6: $54
    ldh [$FF32], a                                ; $61D7: $E0 $32

jr_031_61D9:
    db $ED                                        ; $61D9: $ED
    db $10                                        ; $61DA: $10
    add hl, de                                    ; $61DB: $19
    nop                                           ; $61DC: $00
    add e                                         ; $61DD: $83
    inc bc                                        ; $61DE: $03
    ld c, c                                       ; $61DF: $49
    db $E3                                        ; $61E0: $E3
    db $10                                        ; $61E1: $10
    ret c                                         ; $61E2: $D8

    jr nz, @-$2E                                  ; $61E3: $20 $D0

    rla                                           ; $61E5: $17
    ld sp, hl                                     ; $61E6: $F9
    or b                                          ; $61E7: $B0
    ld d, l                                       ; $61E8: $55
    ccf                                           ; $61E9: $3F

jr_031_61EA:
    db $10                                        ; $61EA: $10
    rst RST_18                                    ; $61EB: $DF
    db $10                                        ; $61EC: $10
    sub d                                         ; $61ED: $92
    nop                                           ; $61EE: $00
    or [hl]                                       ; $61EF: $B6
    nop                                           ; $61F0: $00
    ld d, c                                       ; $61F1: $51
    add b                                         ; $61F2: $80
    nop                                           ; $61F3: $00
    ld a, $70                                     ; $61F4: $3E $70
    jr c, jr_031_61BF                             ; $61F6: $38 $C7

    sub c                                         ; $61F8: $91
    jr nc, jr_031_6250                            ; $61F9: $30 $55

    ld hl, sp+$10                                 ; $61FB: $F8 $10
    inc bc                                        ; $61FD: $03
    nop                                           ; $61FE: $00
    ld e, [hl]                                    ; $61FF: $5E
    nop                                           ; $6200: $00
    sbc $02                                       ; $6201: $DE $02
    ld h, l                                       ; $6203: $65
    ld e, $00                                     ; $6204: $1E $00
    ld h, b                                       ; $6206: $60
    sbc [hl]                                      ; $6207: $9E
    ld a, $00                                     ; $6208: $3E $00
    ld a, [hl]                                    ; $620A: $7E
    nop                                           ; $620B: $00
    ld b, [hl]                                    ; $620C: $46
    cp $00                                        ; $620D: $FE $00
    rrca                                          ; $620F: $0F
    ld [hl], b                                    ; $6210: $70
    ld c, $10                                     ; $6211: $0E $10
    ld sp, $311C                                  ; $6213: $31 $1C $31
    ld h, b                                       ; $6216: $60
    rra                                           ; $6217: $1F
    db $10                                        ; $6218: $10
    ldh [rLCDC], a                                ; $6219: $E0 $40
    ld a, h                                       ; $621B: $7C
    nop                                           ; $621C: $00
    ld bc, $9B55                                  ; $621D: $01 $55 $9B
    db $10                                        ; $6220: $10
    dec c                                         ; $6221: $0D
    db $10                                        ; $6222: $10
    sbc [hl]                                      ; $6223: $9E
    db $10                                        ; $6224: $10
    scf                                           ; $6225: $37
    db $10                                        ; $6226: $10
    ld d, l                                       ; $6227: $55
    rrca                                          ; $6228: $0F
    db $10                                        ; $6229: $10
    ccf                                           ; $622A: $3F
    db $10                                        ; $622B: $10
    rst RST_38                                    ; $622C: $FF
    db $F4                                        ; $622D: $F4
    cp a                                          ; $622E: $BF
    db $10                                        ; $622F: $10
    ld d, l                                       ; $6230: $55
    ld a, a                                       ; $6231: $7F
    sub d                                         ; $6232: $92
    cp $10                                        ; $6233: $FE $10
    call c, Call_031_6310                         ; $6235: $DC $10 $63
    ldh a, [c]                                    ; $6238: $F2
    ld d, b                                       ; $6239: $50
    adc $10                                       ; $623A: $CE $10
    rst RST_18                                    ; $623C: $DF
    db $10                                        ; $623D: $10
    and a                                         ; $623E: $A7
    jr jr_031_6262                                ; $623F: $18 $21

    ld e, $15                                     ; $6241: $1E $15
    ld b, e                                       ; $6243: $43
    inc a                                         ; $6244: $3C
    rst RST_38                                    ; $6245: $FF
    ld [hl], b                                    ; $6246: $70
    ld a, [hl]                                    ; $6247: $7E
    ldh a, [c]                                    ; $6248: $F2
    ldh [rNR10], a                                ; $6249: $E0 $10
    ld [$191B], sp                                ; $624B: $08 $1B $19
    db $DD                                        ; $624E: $DD
    dec e                                         ; $624F: $1D

Jump_031_6250:
jr_031_6250:
    ld de, $1EDE                                  ; $6250: $11 $DE $1E
    cp a                                          ; $6253: $BF
    inc [hl]                                      ; $6254: $34
    ccf                                           ; $6255: $3F
    ld a, a                                       ; $6256: $7F
    nop                                           ; $6257: $00
    pop af                                        ; $6258: $F1
    rlca                                          ; $6259: $07
    nop                                           ; $625A: $00
    rst RST_28                                    ; $625B: $EF
    cpl                                           ; $625C: $2F
    xor l                                         ; $625D: $AD
    inc bc                                        ; $625E: $03
    rst RST_18                                    ; $625F: $DF
    nop                                           ; $6260: $00
    rst RST_38                                    ; $6261: $FF

jr_031_6262:
    ld [bc], a                                    ; $6262: $02
    pop af                                        ; $6263: $F1
    cp $0C                                        ; $6264: $FE $0C
    add b                                         ; $6266: $80
    pop af                                        ; $6267: $F1
    ld b, h                                       ; $6268: $44
    nop                                           ; $6269: $00
    ld b, d                                       ; $626A: $42
    nop                                           ; $626B: $00
    nop                                           ; $626C: $00
    ld a, e                                       ; $626D: $7B
    ld a, b                                       ; $626E: $78
    ld a, l                                       ; $626F: $7D
    ld a, h                                       ; $6270: $7C
    inc de                                        ; $6271: $13
    ld a, [hl]                                    ; $6272: $7E
    call nc, $F104                                ; $6273: $D4 $04 $F1
    ret nz                                        ; $6276: $C0

    db $10                                        ; $6277: $10
    ldh a, [rNR10]                                ; $6278: $F0 $10
    db $FC                                        ; $627A: $FC
    ld bc, $FE57                                  ; $627B: $01 $57 $FE
    jr nc, @+$01                                  ; $627E: $30 $FF

    ld [de], a                                    ; $6280: $12
    di                                            ; $6281: $F3
    pop hl                                        ; $6282: $E1
    ld d, c                                       ; $6283: $51
    nop                                           ; $6284: $00
    ld b, b                                       ; $6285: $40
    ld a, a                                       ; $6286: $7F
    nop                                           ; $6287: $00
    ccf                                           ; $6288: $3F
    cp a                                          ; $6289: $BF
    rra                                           ; $628A: $1F
    rst RST_18                                    ; $628B: $DF
    rrca                                          ; $628C: $0F
    ld c, a                                       ; $628D: $4F
    dec c                                         ; $628E: $0D
    adc a                                         ; $628F: $8F
    cpl                                           ; $6290: $2F
    add a                                         ; $6291: $87
    scf                                           ; $6292: $37
    di                                            ; $6293: $F3
    add hl, bc                                    ; $6294: $09
    cp $00                                        ; $6295: $FE $00
    and b                                         ; $6297: $A0
    pop af                                        ; $6298: $F1
    ldh a, [rP1]                                  ; $6299: $F0 $00
    pop hl                                        ; $629B: $E1
    ldh [$FFC3], a                                ; $629C: $E0 $C3
    ret c                                         ; $629E: $D8

    add a                                         ; $629F: $87
    dec bc                                        ; $62A0: $0B
    or b                                          ; $62A1: $B0
    ld c, $60                                     ; $62A2: $0E $60
    dec c                                         ; $62A4: $0D
    db $10                                        ; $62A5: $10
    dec bc                                        ; $62A6: $0B
    sub b                                         ; $62A7: $90
    pop af                                        ; $62A8: $F1
    ld b, [hl]                                    ; $62A9: $46
    cp $14                                        ; $62AA: $FE $14
    db $FD                                        ; $62AC: $FD
    ld bc, $107D                                  ; $62AD: $01 $7D $10
    ld sp, $69FB                                  ; $62B0: $31 $FB $69
    inc bc                                        ; $62B3: $03
    ldh a, [c]                                    ; $62B4: $F2
    inc c                                         ; $62B5: $0C
    ld a, a                                       ; $62B6: $7F
    ld c, $7C                                     ; $62B7: $0E $7C
    nop                                           ; $62B9: $00
    jr nz, @-$6E                                  ; $62BA: $20 $90

    db $10                                        ; $62BC: $10
    cp a                                          ; $62BD: $BF
    add b                                         ; $62BE: $80
    ld de, $C0DF                                  ; $62BF: $11 $DF $C0
    rst RST_20                                    ; $62C2: $E7
    ldh [rNR11], a                                ; $62C3: $E0 $11
    ld sp, hl                                     ; $62C5: $F9
    ld hl, sp-$02                                 ; $62C6: $F8 $FE
    nop                                           ; $62C8: $00
    add $16                                       ; $62C9: $C6 $16
    ld hl, $00F0                                  ; $62CB: $21 $F0 $00
    ld d, d                                       ; $62CE: $52
    ld bc, $0364                                  ; $62CF: $01 $64 $03
    ld l, b                                       ; $62D2: $68
    rlca                                          ; $62D3: $07
    add b                                         ; $62D4: $80
    rrca                                          ; $62D5: $0F
    ld e, h                                       ; $62D6: $5C
    ret nz                                        ; $62D7: $C0

    db $10                                        ; $62D8: $10
    db $10                                        ; $62D9: $10
    db $10                                        ; $62DA: $10
    ret nz                                        ; $62DB: $C0

    nop                                           ; $62DC: $00
    inc b                                         ; $62DD: $04
    ld hl, sp-$58                                 ; $62DE: $F8 $A8
    ldh [$FFFE], a                                ; $62E0: $E0 $FE
    ld b, b                                       ; $62E2: $40
    rst RST_38                                    ; $62E3: $FF
    rla                                           ; $62E4: $17
    inc bc                                        ; $62E5: $03
    ret nz                                        ; $62E6: $C0

    dec bc                                        ; $62E7: $0B
    sub c                                         ; $62E8: $91
    ld de, $8B40                                  ; $62E9: $11 $40 $8B
    add b                                         ; $62EC: $80
    ld b, a                                       ; $62ED: $47
    add b                                         ; $62EE: $80
    ld c, $70                                     ; $62EF: $0E $70
    ld [bc], a                                    ; $62F1: $02
    ld hl, $17C1                                  ; $62F2: $21 $C1 $17
    rst RST_20                                    ; $62F5: $E7
    ei                                            ; $62F6: $FB
    inc bc                                        ; $62F7: $03
    ld de, $02F7                                  ; $62F8: $11 $F7 $02
    rlca                                          ; $62FB: $07
    rst RST_28                                    ; $62FC: $EF
    rrca                                          ; $62FD: $0F
    sbc a                                         ; $62FE: $9F
    rra                                           ; $62FF: $1F
    ld a, a                                       ; $6300: $7F
    nop                                           ; $6301: $00
    rst RST_38                                    ; $6302: $FF
    xor d                                         ; $6303: $AA
    ld [bc], a                                    ; $6304: $02
    cp $0E                                        ; $6305: $FE $0E
    ld a, a                                       ; $6307: $7F
    ld c, $FF                                     ; $6308: $0E $FF
    ld c, $80                                     ; $630A: $0E $80
    ld b, d                                       ; $630C: $42
    cp a                                          ; $630D: $BF
    inc d                                         ; $630E: $14
    adc a                                         ; $630F: $8F

Call_031_6310:
    or b                                          ; $6310: $B0
    or c                                          ; $6311: $B1
    xor b                                         ; $6312: $A8
    nop                                           ; $6313: $00
    inc l                                         ; $6314: $2C
    inc b                                         ; $6315: $04
    ld hl, $3130                                  ; $6316: $21 $30 $31
    nop                                           ; $6319: $00
    rst RST_38                                    ; $631A: $FF
    ld de, $DF20                                  ; $631B: $11 $20 $DF
    inc b                                         ; $631E: $04
    db $10                                        ; $631F: $10
    rst RST_08                                    ; $6320: $CF
    ld b, b                                       ; $6321: $40
    adc h                                         ; $6322: $8C
    ld [$A480], sp                                ; $6323: $08 $80 $A4
    inc bc                                        ; $6326: $03
    sub b                                         ; $6327: $90
    or c                                          ; $6328: $B1
    rlca                                          ; $6329: $07
    rst RST_30                                    ; $632A: $F7
    db $10                                        ; $632B: $10
    rst RST_20                                    ; $632C: $E7
    dec de                                        ; $632D: $1B
    sbc e                                         ; $632E: $9B
    dec sp                                        ; $632F: $3B
    sub c                                         ; $6330: $91
    nop                                           ; $6331: $00
    reti                                          ; $6332: $D9


    sbc c                                         ; $6333: $99
    db $10                                        ; $6334: $10
    add hl, de                                    ; $6335: $19
    ld sp, $1035                                  ; $6336: $31 $35 $10
    ld a, [hl+]                                   ; $6339: $2A
    or l                                          ; $633A: $B5
    rst RST_38                                    ; $633B: $FF
    ld c, $FE                                     ; $633C: $0E $FE
    ld c, $7F                                     ; $633E: $0E $7F
    ld b, $3F                                     ; $6340: $06 $3F
    xor b                                         ; $6342: $A8
    nop                                           ; $6343: $00
    ld e, a                                       ; $6344: $5F
    nop                                           ; $6345: $00
    cpl                                           ; $6346: $2F
    nop                                           ; $6347: $00
    rla                                           ; $6348: $17
    ld d, a                                       ; $6349: $57
    rst RST_38                                    ; $634A: $FF
    and b                                         ; $634B: $A0
    ld [$00E3], sp                                ; $634C: $08 $E3 $00
    add c                                         ; $634F: $81
    sbc l                                         ; $6350: $9D
    ld [de], a                                    ; $6351: $12
    inc h                                         ; $6352: $24
    jr jr_031_6359                                ; $6353: $18 $04

    ld e, e                                       ; $6355: $5B
    nop                                           ; $6356: $00
    ld h, a                                       ; $6357: $67
    add b                                         ; $6358: $80

jr_031_6359:
    cp a                                          ; $6359: $BF
    ld de, $DFC0                                  ; $635A: $11 $C0 $DF
    adc d                                         ; $635D: $8A
    db $10                                        ; $635E: $10
    rst RST_08                                    ; $635F: $CF
    sub b                                         ; $6360: $90
    add a                                         ; $6361: $87
    ret nc                                        ; $6362: $D0

    inc bc                                        ; $6363: $03
    ret nc                                        ; $6364: $D0

    rst RST_38                                    ; $6365: $FF
    sub b                                         ; $6366: $90
    dec e                                         ; $6367: $1D
    dec b                                         ; $6368: $05
    ret                                           ; $6369: $C9


    db $10                                        ; $636A: $10
    ld sp, hl                                     ; $636B: $F9
    add hl, bc                                    ; $636C: $09
    pop af                                        ; $636D: $F1
    ld [$F001], sp                                ; $636E: $08 $01 $F0
    ld d, $E0                                     ; $6371: $16 $E0
    ld [bc], a                                    ; $6373: $02
    db $EC                                        ; $6374: $EC
    ld hl, $F0CE                                  ; $6375: $21 $CE $F0
    ld a, [hl+]                                   ; $6378: $2A
    db $DD                                        ; $6379: $DD
    rst RST_38                                    ; $637A: $FF
    ld b, $7F                                     ; $637B: $06 $7F
    ld [bc], a                                    ; $637D: $02
    ccf                                           ; $637E: $3F
    nop                                           ; $637F: $00
    cp a                                          ; $6380: $BF
    xor b                                         ; $6381: $A8
    db $10                                        ; $6382: $10
    cp $0E                                        ; $6383: $FE $0E
    ld l, e                                       ; $6385: $6B
    nop                                           ; $6386: $00
    inc b                                         ; $6387: $04
    inc [hl]                                      ; $6388: $34

jr_031_6389:
    ld d, [hl]                                    ; $6389: $56
    xor b                                         ; $638A: $A8
    nop                                           ; $638B: $00
    ld h, h                                       ; $638C: $64
    nop                                           ; $638D: $00
    ld [hl], b                                    ; $638E: $70
    nop                                           ; $638F: $00
    ld l, b                                       ; $6390: $68

jr_031_6391:
    ld h, b                                       ; $6391: $60
    ld c, b                                       ; $6392: $48
    inc c                                         ; $6393: $0C
    ld b, c                                       ; $6394: $41
    ld bc, $2602                                  ; $6395: $01 $02 $26
    ld b, b                                       ; $6398: $40
    ld de, $0885                                  ; $6399: $11 $85 $08
    ld e, $61                                     ; $639C: $1E $61
    nop                                           ; $639E: $00
    add b                                         ; $639F: $80
    db $10                                        ; $63A0: $10
    or b                                          ; $63A1: $B0
    stop                                          ; $63A2: $10 $00
    or b                                          ; $63A4: $B0
    dec b                                         ; $63A5: $05
    sub e                                         ; $63A6: $93
    jr nz, jr_031_6389                            ; $63A7: $20 $E0

jr_031_63A9:
    inc bc                                        ; $63A9: $03
    ldh a, [$FF80]                                ; $63AA: $F0 $80
    ld hl, sp+$10                                 ; $63AC: $F8 $10
    db $10                                        ; $63AE: $10
    ld a, [$3A02]                                 ; $63AF: $FA $02 $3A
    db $10                                        ; $63B2: $10
    call nc, Call_031_6804                        ; $63B3: $D4 $04 $68
    ld [$8225], sp                                ; $63B6: $08 $25 $82
    nop                                           ; $63B9: $00
    nop                                           ; $63BA: $00
    add b                                         ; $63BB: $80
    ld a, a                                       ; $63BC: $7F
    jr nz, jr_031_63FD                            ; $63BD: $20 $3E

    jr nc, @+$2C                                  ; $63BF: $30 $2A

    inc e                                         ; $63C1: $1C
    pop bc                                        ; $63C2: $C1
    ld b, b                                       ; $63C3: $40
    ldh [c], a                                    ; $63C4: $E2
    db $10                                        ; $63C5: $10
    db $FC                                        ; $63C6: $FC
    db $10                                        ; $63C7: $10
    ld hl, sp+$2A                                 ; $63C8: $F8 $2A
    ld [bc], a                                    ; $63CA: $02
    ld [hl-], a                                   ; $63CB: $32
    jr nc, jr_031_63A9                            ; $63CC: $30 $DB

    db $10                                        ; $63CE: $10
    ld e, e                                       ; $63CF: $5B
    db $10                                        ; $63D0: $10
    rla                                           ; $63D1: $17
    sbc d                                         ; $63D2: $9A
    db $10                                        ; $63D3: $10
    inc bc                                        ; $63D4: $03
    ld a, h                                       ; $63D5: $7C
    ld hl, $7010                                  ; $63D6: $21 $10 $70
    db $10                                        ; $63D9: $10
    ld hl, sp-$78                                 ; $63DA: $F8 $88
    db $10                                        ; $63DC: $10
    sbc a                                         ; $63DD: $9F
    rra                                           ; $63DE: $1F

jr_031_63DF:
    ld e, a                                       ; $63DF: $5F
    jr nz, jr_031_6391                            ; $63E0: $20 $AF

    ld c, a                                       ; $63E2: $4F
    ld l, a                                       ; $63E3: $6F
    rla                                           ; $63E4: $17
    adc a                                         ; $63E5: $8F

jr_031_63E6:
    daa                                           ; $63E6: $27
    ld b, a                                       ; $63E7: $47
    db $10                                        ; $63E8: $10
    rlca                                          ; $63E9: $07
    ld bc, $00E0                                  ; $63EA: $01 $E0 $00
    ld d, b                                       ; $63ED: $50
    cp $06                                        ; $63EE: $FE $06
    ld hl, sp+$00                                 ; $63F0: $F8 $00
    ldh a, [c]                                    ; $63F2: $F2
    ldh a, [$FF8C]                                ; $63F3: $F0 $8C
    add d                                         ; $63F5: $82
    nop                                           ; $63F6: $00
    inc h                                         ; $63F7: $24
    ld a, [de]                                    ; $63F8: $1A
    ld [hl], c                                    ; $63F9: $71
    ld [hl], d                                    ; $63FA: $72
    add hl, bc                                    ; $63FB: $09
    nop                                           ; $63FC: $00

jr_031_63FD:
    ld l, c                                       ; $63FD: $69
    ld h, b                                       ; $63FE: $60
    ld d, b                                       ; $63FF: $50
    ld l, h                                       ; $6400: $6C
    db $10                                        ; $6401: $10
    ld h, e                                       ; $6402: $63
    db $10                                        ; $6403: $10
    ld [hl], a                                    ; $6404: $77
    ld [hl], b                                    ; $6405: $70
    ld a, c                                       ; $6406: $79
    ld a, b                                       ; $6407: $78

jr_031_6408:
    ld e, b                                       ; $6408: $58
    ld a, [hl]                                    ; $6409: $7E
    nop                                           ; $640A: $00
    rla                                           ; $640B: $17
    ld [hl], b                                    ; $640C: $70
    db $10                                        ; $640D: $10
    jr nz, jr_031_63DF                            ; $640E: $20 $CF

    nop                                           ; $6410: $00
    ld d, l                                       ; $6411: $55
    rrca                                          ; $6412: $0F
    db $10                                        ; $6413: $10
    ld de, $8C10                                  ; $6414: $11 $10 $8C
    db $10                                        ; $6417: $10
    ret nz                                        ; $6418: $C0

    db $10                                        ; $6419: $10
    ld d, h                                       ; $641A: $54
    ld a, b                                       ; $641B: $78
    db $10                                        ; $641C: $10
    add $10                                       ; $641D: $C6 $10
    adc $10                                       ; $641F: $CE $10
    xor h                                         ; $6421: $AC
    ld hl, $1184                                  ; $6422: $21 $84 $11
    ld b, b                                       ; $6425: $40
    ld b, e                                       ; $6426: $43
    add b                                         ; $6427: $80
    sbc a                                         ; $6428: $9F
    add b                                         ; $6429: $80
    inc a                                         ; $642A: $3C
    ld [bc], a                                    ; $642B: $02
    ld l, d                                       ; $642C: $6A
    ld a, d                                       ; $642D: $7A
    db $10                                        ; $642E: $10
    ld bc, $7082                                  ; $642F: $01 $82 $70
    ldh a, [rNR10]                                ; $6432: $F0 $10
    ret nz                                        ; $6434: $C0

    dec b                                         ; $6435: $05
    jr nz, @-$5E                                  ; $6436: $20 $A0

Jump_031_6438:
    dec [hl]                                      ; $6438: $35
    inc [hl]                                      ; $6439: $34
    ld [hl], h                                    ; $643A: $74
    nop                                           ; $643B: $00
    ld [hl], l                                    ; $643C: $75
    db $10                                        ; $643D: $10
    adc c                                         ; $643E: $89
    and b                                         ; $643F: $A0
    dec bc                                        ; $6440: $0B
    ld bc, $D0FA                                  ; $6441: $01 $FA $D0
    ld [bc], a                                    ; $6444: $02
    ld sp, hl                                     ; $6445: $F9
    jr nz, @-$22                                  ; $6446: $20 $DC

    ld bc, $0390                                  ; $6448: $01 $90 $03
    sub b                                         ; $644B: $90
    ld [hl], b                                    ; $644C: $70
    db $10                                        ; $644D: $10
    ldh [c], a                                    ; $644E: $E2
    and b                                         ; $644F: $A0
    adc d                                         ; $6450: $8A
    ld [hl], b                                    ; $6451: $70
    or b                                          ; $6452: $B0
    rlca                                          ; $6453: $07
    jr nc, jr_031_63E6                            ; $6454: $30 $90

    sub b                                         ; $6456: $90
    db $10                                        ; $6457: $10
    ld b, b                                       ; $6458: $40
    ldh [c], a                                    ; $6459: $E2
    ld [hl], b                                    ; $645A: $70
    jr nz, jr_031_645D                            ; $645B: $20 $00

jr_031_645D:
    add $06                                       ; $645D: $C6 $06
    ret nz                                        ; $645F: $C0

    ld d, b                                       ; $6460: $50
    add b                                         ; $6461: $80
    ld e, e                                       ; $6462: $5B

jr_031_6463:
    ld a, [hl]                                    ; $6463: $7E

jr_031_6464:
    jr nz, jr_031_6464                            ; $6464: $20 $FE

    ld [de], a                                    ; $6466: $12
    ld h, b                                       ; $6467: $60
    ld a, b                                       ; $6468: $78
    nop                                           ; $6469: $00
    jr nz, jr_031_64CE                            ; $646A: $20 $62

    add [hl]                                      ; $646C: $86
    ld d, b                                       ; $646D: $50
    or b                                          ; $646E: $B0
    ld [bc], a                                    ; $646F: $02
    ld a, h                                       ; $6470: $7C
    ld a, a                                       ; $6471: $7F
    inc c                                         ; $6472: $0C
    nop                                           ; $6473: $00
    xor d                                         ; $6474: $AA
    nop                                           ; $6475: $00
    add b                                         ; $6476: $80
    nop                                           ; $6477: $00
    db $FC                                        ; $6478: $FC
    nop                                           ; $6479: $00
    db $FD                                        ; $647A: $FD
    db $10                                        ; $647B: $10
    ld sp, hl                                     ; $647C: $F9
    inc [hl]                                      ; $647D: $34
    ld hl, sp-$05                                 ; $647E: $F8 $FB
    inc d                                         ; $6480: $14
    pop af                                        ; $6481: $F1
    inc bc                                        ; $6482: $03
    ld b, b                                       ; $6483: $40
    ld b, c                                       ; $6484: $41
    cp c                                          ; $6485: $B9
    jr nz, jr_031_6408                            ; $6486: $20 $80

    ld a, b                                       ; $6488: $78
    ld d, b                                       ; $6489: $50
    di                                            ; $648A: $F3
    ld bc, $8EE1                                  ; $648B: $01 $E1 $8E
    ld l, [hl]                                    ; $648E: $6E
    jr nz, @-$6F                                  ; $648F: $20 $8F

    ld l, a                                       ; $6491: $6F
    pop af                                        ; $6492: $F1
    and l                                         ; $6493: $A5
    and h                                         ; $6494: $A4
    xor e                                         ; $6495: $AB
    xor b                                         ; $6496: $A8
    ld b, e                                       ; $6497: $43

jr_031_6498:
    ld a, [hl+]                                   ; $6498: $2A
    ld b, b                                       ; $6499: $40
    call c, $8000                                 ; $649A: $DC $00 $80
    nop                                           ; $649D: $00
    ld e, a                                       ; $649E: $5F
    nop                                           ; $649F: $00
    jr nz, jr_031_6463                            ; $64A0: $20 $C1

    nop                                           ; $64A2: $00
    pop af                                        ; $64A3: $F1
    ret nz                                        ; $64A4: $C0

    inc h                                         ; $64A5: $24
    ret z                                         ; $64A6: $C8

    inc hl                                        ; $64A7: $23
    sbc h                                         ; $64A8: $9C
    ldh a, [rHDMA5]                               ; $64A9: $F0 $55
    sbc l                                         ; $64AB: $9D
    db $10                                        ; $64AC: $10
    dec bc                                        ; $64AD: $0B
    sub b                                         ; $64AE: $90
    ldh a, [rP1]                                  ; $64AF: $F0 $00
    rlca                                          ; $64B1: $07
    nop                                           ; $64B2: $00
    db $EC                                        ; $64B3: $EC
    pop af                                        ; $64B4: $F1
    nop                                           ; $64B5: $00
    jr nc, jr_031_6498                            ; $64B6: $30 $E0

    ld d, c                                       ; $64B8: $51
    db $10                                        ; $64B9: $10
    ret nz                                        ; $64BA: $C0

    inc bc                                        ; $64BB: $03
    ld [bc], a                                    ; $64BC: $02
    adc h                                         ; $64BD: $8C
    dec c                                         ; $64BE: $0D
    ld b, $36                                     ; $64BF: $06 $36
    add e                                         ; $64C1: $83
    cp e                                          ; $64C2: $BB
    pop hl                                        ; $64C3: $E1
    ld [bc], a                                    ; $64C4: $02
    db $10                                        ; $64C5: $10
    ld a, h                                       ; $64C6: $7C
    add d                                         ; $64C7: $82
    inc a                                         ; $64C8: $3C
    sub b                                         ; $64C9: $90
    cp b                                          ; $64CA: $B8
    ld c, [hl]                                    ; $64CB: $4E
    sub b                                         ; $64CC: $90
    sbc b                                         ; $64CD: $98

jr_031_64CE:
    inc b                                         ; $64CE: $04
    ld b, b                                       ; $64CF: $40
    ld b, [hl]                                    ; $64D0: $46
    add [hl]                                      ; $64D1: $86
    ld e, [hl]                                    ; $64D2: $5E
    ld e, $F1                                     ; $64D3: $1E $F1
    ld b, a                                       ; $64D5: $47
    nop                                           ; $64D6: $00
    ld e, c                                       ; $64D7: $59
    nop                                           ; $64D8: $00
    nop                                           ; $64D9: $00
    ld a, a                                       ; $64DA: $7F
    inc c                                         ; $64DB: $0C
    pop af                                        ; $64DC: $F1
    cp a                                          ; $64DD: $BF
    add b                                         ; $64DE: $80
    rla                                           ; $64DF: $17
    ld c, c                                       ; $64E0: $49
    cp [hl]                                       ; $64E1: $BE
    db $10                                        ; $64E2: $10
    sbc h                                         ; $64E3: $9C
    add c                                         ; $64E4: $81
    pop af                                        ; $64E5: $F1
    jp $1703                                      ; $64E6: $C3 $03 $17


    sub l                                         ; $64E9: $95
    ld bc, $F202                                  ; $64EA: $01 $02 $F2
    pop af                                        ; $64ED: $F1
    rst RST_38                                    ; $64EE: $FF
    inc b                                         ; $64EF: $04
    rst RST_00                                    ; $64F0: $C7
    nop                                           ; $64F1: $00
    inc bc                                        ; $64F2: $03
    xor a                                         ; $64F3: $AF
    adc a                                         ; $64F4: $8F
    ld e, a                                       ; $64F5: $5F
    rra                                           ; $64F6: $1F
    cp a                                          ; $64F7: $BF
    ccf                                           ; $64F8: $3F
    rst RST_30                                    ; $64F9: $F7
    rlca                                          ; $64FA: $07
    and b                                         ; $64FB: $A0
    di                                            ; $64FC: $F3
    cp $00                                        ; $64FD: $FE $00
    db $FD                                        ; $64FF: $FD
    db $FC                                        ; $6500: $FC
    ei                                            ; $6501: $FB
    ld hl, sp-$09                                 ; $6502: $F8 $F7
    dec b                                         ; $6504: $05
    ldh a, [$FFEF]                                ; $6505: $F0 $EF
    ldh [$FFDF], a                                ; $6507: $E0 $DF
    ret nz                                        ; $6509: $C0

    pop af                                        ; $650A: $F1
    ld a, [hl]                                    ; $650B: $7E
    db $10                                        ; $650C: $10
    call nc, Call_000_18E0                        ; $650D: $D4 $E0 $18
    db $FC                                        ; $6510: $FC
    db $10                                        ; $6511: $10
    ld a, a                                       ; $6512: $7F
    ld c, $A1                                     ; $6513: $0E $A1
    add e                                         ; $6515: $83
    ld a, [bc]                                    ; $6516: $0A
    inc sp                                        ; $6517: $33
    ld b, a                                       ; $6518: $47
    ld d, a                                       ; $6519: $57
    ld h, a                                       ; $651A: $67
    ld de, $5037                                  ; $651B: $11 $37 $50
    and a                                         ; $651E: $A7
    ld [de], a                                    ; $651F: $12
    adc a                                         ; $6520: $8F
    rst RST_08                                    ; $6521: $CF
    rst RST_18                                    ; $6522: $DF
    ld de, $FAC2                                  ; $6523: $11 $C2 $FA
    ld de, $66C3                                  ; $6526: $11 $C3 $66
    ei                                            ; $6529: $FB
    ld de, $C551                                  ; $652A: $11 $51 $C5
    db $F4                                        ; $652D: $F4
    ld de, $F070                                  ; $652E: $11 $70 $F0
    ld [hl+], a                                   ; $6531: $22
    cp a                                          ; $6532: $BF
    ccf                                           ; $6533: $3F
    ld de, $0040                                  ; $6534: $11 $40 $00
    ld e, a                                       ; $6537: $5F
    db $10                                        ; $6538: $10
    ld [hl], c                                    ; $6539: $71
    ld a, [bc]                                    ; $653A: $0A
    ld c, $A0                                     ; $653B: $0E $A0
    rra                                           ; $653D: $1F

jr_031_653E:
    ldh [rNR12], a                                ; $653E: $E0 $12
    rst RST_38                                    ; $6540: $FF
    ld [bc], a                                    ; $6541: $02
    cp $A1                                        ; $6542: $FE $A1
    nop                                           ; $6544: $00
    ld a, [hl]                                    ; $6545: $7E
    nop                                           ; $6546: $00
    cp h                                          ; $6547: $BC
    inc a                                         ; $6548: $3C
    db $DB                                        ; $6549: $DB
    dec de                                        ; $654A: $1B
    ld de, $D701                                  ; $654B: $11 $01 $D7
    rla                                           ; $654E: $17
    cp a                                          ; $654F: $BF
    add b                                         ; $6550: $80

jr_031_6551:
    ld a, a                                       ; $6551: $7F
    nop                                           ; $6552: $00
    rst RST_38                                    ; $6553: $FF
    ld [de], a                                    ; $6554: $12
    ld b, d                                       ; $6555: $42
    rra                                           ; $6556: $1F
    db $10                                        ; $6557: $10
    rst RST_20                                    ; $6558: $E7
    ldh [$FFFA], a                                ; $6559: $E0 $FA
    ld hl, sp+$00                                 ; $655B: $F8 $00
    db $FC                                        ; $655D: $FC
    db $DD                                        ; $655E: $DD
    db $10                                        ; $655F: $10
    ld [hl], b                                    ; $6560: $70
    ldh a, [rNR10]                                ; $6561: $F0 $10
    add b                                         ; $6563: $80
    db $10                                        ; $6564: $10
    ret nz                                        ; $6565: $C0

    db $10                                        ; $6566: $10
    ld l, c                                       ; $6567: $69
    add b                                         ; $6568: $80
    db $10                                        ; $6569: $10
    dec b                                         ; $656A: $05
    ld a, a                                       ; $656B: $7F
    ld c, $CF                                     ; $656C: $0E $CF
    rst RST_18                                    ; $656E: $DF
    ld de, $EF51                                  ; $656F: $11 $51 $EF
    nop                                           ; $6572: $00
    and $10                                       ; $6573: $E6 $10
    ldh a, [$FFF7]                                ; $6575: $F0 $F7
    ld hl, sp+$00                                 ; $6577: $F8 $00
    ld b, [hl]                                    ; $6579: $46
    cp $00                                        ; $657A: $FE $00
    db $FC                                        ; $657C: $FC
    db $FD                                        ; $657D: $FD
    add e                                         ; $657E: $83
    add b                                         ; $657F: $80
    db $10                                        ; $6580: $10
    ldh [rP1], a                                  ; $6581: $E0 $00
    inc bc                                        ; $6583: $03
    ret c                                         ; $6584: $D8

    dec e                                         ; $6585: $1D
    cp h                                          ; $6586: $BC
    ld a, $7E                                     ; $6587: $3E $7E
    inc hl                                        ; $6589: $23
    db $E3                                        ; $658A: $E3
    jr nz, jr_031_65CE                            ; $658B: $20 $41

    db $DD                                        ; $658D: $DD
    ld [hl], b                                    ; $658E: $70
    cp l                                          ; $658F: $BD
    pop af                                        ; $6590: $F1
    ld c, $FF                                     ; $6591: $0E $FF
    nop                                           ; $6593: $00
    xor e                                         ; $6594: $AB
    ld de, $10FE                                  ; $6595: $11 $FE $10
    ld hl, sp+$10                                 ; $6598: $F8 $10
    rlca                                          ; $659A: $07
    nop                                           ; $659B: $00
    ld [hl], b                                    ; $659C: $70
    and c                                         ; $659D: $A1
    nop                                           ; $659E: $00
    pop hl                                        ; $659F: $E1
    nop                                           ; $65A0: $00
    rst RST_10                                    ; $65A1: $D7
    rla                                           ; $65A2: $17
    adc a                                         ; $65A3: $8F
    rrca                                          ; $65A4: $0F
    nop                                           ; $65A5: $00
    ld b, l                                       ; $65A6: $45
    cpl                                           ; $65A7: $2F
    db $10                                        ; $65A8: $10
    ld l, a                                       ; $65A9: $6F
    rra                                           ; $65AA: $1F
    rst RST_18                                    ; $65AB: $DF
    ld de, $129F                                  ; $65AC: $11 $9F $12
    nop                                           ; $65AF: $00
    ldh a, [$FFFE]                                ; $65B0: $F0 $FE
    pop hl                                        ; $65B2: $E1
    db $FD                                        ; $65B3: $FD
    jp nz, $C4FB                                  ; $65B4: $C2 $FB $C4

jr_031_65B7:
    rst RST_30                                    ; $65B7: $F7
    jr jr_031_653E                                ; $65B8: $18 $84

    or $04                                        ; $65BA: $F6 $04
    ld de, $0150                                  ; $65BC: $11 $50 $01
    ld a, [$B100]                                 ; $65BF: $FA $00 $B1
    nop                                           ; $65C2: $00
    ldh [rP1], a                                  ; $65C3: $E0 $00
    jr nz, jr_031_65B7                            ; $65C5: $20 $F0

    jr jr_031_65E9                                ; $65C7: $18 $20

    db $10                                        ; $65C9: $10
    dec c                                         ; $65CA: $0D
    ret nz                                        ; $65CB: $C0

    ld e, b                                       ; $65CC: $58
    add b                                         ; $65CD: $80

jr_031_65CE:
    jr c, jr_031_6551                             ; $65CE: $38 $81

    db $10                                        ; $65D0: $10
    ld a, a                                       ; $65D1: $7F
    inc c                                         ; $65D2: $0C
    ld c, h                                       ; $65D3: $4C
    ld a, [hl]                                    ; $65D4: $7E
    nop                                           ; $65D5: $00
    db $FC                                        ; $65D6: $FC
    db $FD                                        ; $65D7: $FD
    ld [de], a                                    ; $65D8: $12
    nop                                           ; $65D9: $00
    ld hl, sp-$07                                 ; $65DA: $F8 $F9
    ld [bc], a                                    ; $65DC: $02
    and $E1                                       ; $65DD: $E6 $E1
    sbc l                                         ; $65DF: $9D
    add e                                         ; $65E0: $83
    ld a, e                                       ; $65E1: $7B
    rlca                                          ; $65E2: $07
    and b                                         ; $65E3: $A0
    inc bc                                        ; $65E4: $03
    ld b, e                                       ; $65E5: $43
    or c                                          ; $65E6: $B1
    nop                                           ; $65E7: $00
    xor l                                         ; $65E8: $AD

jr_031_65E9:
    xor c                                         ; $65E9: $A9
    dec h                                         ; $65EA: $25
    add hl, hl                                    ; $65EB: $29
    nop                                           ; $65EC: $00
    jr nz, jr_031_6643                            ; $65ED: $20 $54

    or e                                          ; $65EF: $B3
    nop                                           ; $65F0: $00
    cp e                                          ; $65F1: $BB
    nop                                           ; $65F2: $00
    rst RST_00                                    ; $65F3: $C7
    nop                                           ; $65F4: $00
    pop hl                                        ; $65F5: $E1
    rst RST_38                                    ; $65F6: $FF
    dec b                                         ; $65F7: $05
    ret nz                                        ; $65F8: $C0

    sbc $CE                                       ; $65F9: $DE $CE
    rst RST_08                                    ; $65FB: $CF
    and a                                         ; $65FC: $A7
    nop                                           ; $65FD: $00
    sub a                                         ; $65FE: $97
    ld de, $8755                                  ; $65FF: $11 $55 $87
    ld hl, $008F                                  ; $6602: $21 $8F $00
    rst RST_18                                    ; $6605: $DF
    nop                                           ; $6606: $00
    sbc [hl]                                      ; $6607: $9E
    db $10                                        ; $6608: $10
    inc h                                         ; $6609: $24
    ld e, $5F                                     ; $660A: $1E $5F
    ld de, $6F0E                                  ; $660C: $11 $0E $6F
    db $10                                        ; $660F: $10
    rrca                                          ; $6610: $0F
    ld b, $00                                     ; $6611: $06 $00
    scf                                           ; $6613: $37
    ld h, b                                       ; $6614: $60
    ld a, c                                       ; $6615: $79
    ld [hl], b                                    ; $6616: $70
    ld a, [hl]                                    ; $6617: $7E
    ld bc, $00FC                                  ; $6618: $01 $FC $00
    ld e, c                                       ; $661B: $59
    cp $10                                        ; $661C: $FE $10
    rst RST_38                                    ; $661E: $FF
    inc d                                         ; $661F: $14
    ld [hl], c                                    ; $6620: $71
    ldh a, [rTAC]                                 ; $6621: $F0 $07
    nop                                           ; $6623: $00
    db $10                                        ; $6624: $10
    ldh [c], a                                    ; $6625: $E2
    ld [bc], a                                    ; $6626: $02
    ld b, $00                                     ; $6627: $06 $00
    ld c, $8E                                     ; $6629: $0E $8E
    ld e, $9E                                     ; $662B: $1E $9E
    ld d, h                                       ; $662D: $54
    ld a, $00                                     ; $662E: $3E $00
    ld a, [hl]                                    ; $6630: $7E
    nop                                           ; $6631: $00
    cp $02                                        ; $6632: $FE $02
    ld a, l                                       ; $6634: $7D
    ld a, h                                       ; $6635: $7C
    ld de, $787B                                  ; $6636: $11 $7B $78
    ld a, c                                       ; $6639: $79
    db $10                                        ; $663A: $10
    ld [hl], a                                    ; $663B: $77
    ld [hl], b                                    ; $663C: $70
    ld [hl], e                                    ; $663D: $73
    db $10                                        ; $663E: $10
    ret nc                                        ; $663F: $D0

    ld b, b                                       ; $6640: $40
    nop                                           ; $6641: $00
    ld a, a                                       ; $6642: $7F

jr_031_6643:
    ld [bc], a                                    ; $6643: $02
    ei                                            ; $6644: $FB
    rlca                                          ; $6645: $07
    rst RST_30                                    ; $6646: $F7
    rrca                                          ; $6647: $0F
    inc b                                         ; $6648: $04
    db $E3                                        ; $6649: $E3
    rra                                           ; $664A: $1F
    db $FD                                        ; $664B: $FD
    inc bc                                        ; $664C: $03
    ld sp, hl                                     ; $664D: $F9
    ld [hl], b                                    ; $664E: $70
    cp $01                                        ; $664F: $FE $01
    add [hl]                                      ; $6651: $86
    nop                                           ; $6652: $00
    nop                                           ; $6653: $00
    add b                                         ; $6654: $80
    or b                                          ; $6655: $B0
    ldh [$FFC0], a                                ; $6656: $E0 $C0
    nop                                           ; $6658: $00
    rst RST_30                                    ; $6659: $F7
    dec [hl]                                      ; $665A: $35
    or a                                          ; $665B: $B7
    cp a                                          ; $665C: $BF
    stop                                          ; $665D: $10 $00
    jp $EC00                                      ; $665F: $C3 $00 $EC


    and b                                         ; $6662: $A0
    ld b, c                                       ; $6663: $41
    ld l, h                                       ; $6664: $6C
    db $10                                        ; $6665: $10
    inc sp                                        ; $6666: $33
    ld [hl], e                                    ; $6667: $73
    adc $DE                                       ; $6668: $CE $DE
    pop hl                                        ; $666A: $E1
    nop                                           ; $666B: $00
    ld d, a                                       ; $666C: $57
    rst RST_38                                    ; $666D: $FF
    nop                                           ; $666E: $00
    rst RST_18                                    ; $666F: $DF
    ld [bc], a                                    ; $6670: $02
    ccf                                           ; $6671: $3F
    nop                                           ; $6672: $00
    ld [hl], c                                    ; $6673: $71
    ld bc, $F841                                  ; $6674: $01 $41 $F8
    db $10                                        ; $6677: $10
    ei                                            ; $6678: $FB
    db $FC                                        ; $6679: $FC
    pop af                                        ; $667A: $F1
    cp $C0                                        ; $667B: $FE $C0
    ld d, b                                       ; $667D: $50
    dec d                                         ; $667E: $15
    rst RST_28                                    ; $667F: $EF
    ldh a, [$FFF7]                                ; $6680: $F0 $F7
    and b                                         ; $6682: $A0
    db $E3                                        ; $6683: $E3
    sub b                                         ; $6684: $90
    add a                                         ; $6685: $87
    jr nc, jr_031_668C                            ; $6686: $30 $04

    sbc a                                         ; $6688: $9F
    rra                                           ; $6689: $1F
    cp a                                          ; $668A: $BF
    ccf                                           ; $668B: $3F

jr_031_668C:
    rst RST_18                                    ; $668C: $DF
    jr nc, @-$2F                                  ; $668D: $30 $CF

    rrca                                          ; $668F: $0F
    add sp, -$10                                  ; $6690: $E8 $F0
    db $10                                        ; $6692: $10
    ldh a, [rTAC]                                 ; $6693: $F0 $07
    ld de, $03FB                                  ; $6695: $11 $FB $03
    cp $A9                                        ; $6698: $FE $A9
    ld c, $7F                                     ; $669A: $0E $7F
    nop                                           ; $669C: $00
    ld a, [hl]                                    ; $669D: $7E
    nop                                           ; $669E: $00
    ld a, h                                       ; $669F: $7C
    ld a, l                                       ; $66A0: $7D
    ld de, $7825                                  ; $66A1: $11 $25 $78
    ld a, e                                       ; $66A4: $7B
    ld [de], a                                    ; $66A5: $12
    ld a, d                                       ; $66A6: $7A
    ld [hl], b                                    ; $66A7: $70
    nop                                           ; $66A8: $00
    nop                                           ; $66A9: $00
    ld b, b                                       ; $66AA: $40
    adc c                                         ; $66AB: $89
    db $10                                        ; $66AC: $10
    ld hl, sp+$40                                 ; $66AD: $F8 $40
    db $FC                                        ; $66AF: $FC
    db $10                                        ; $66B0: $10
    cp $E0                                        ; $66B1: $FE $E0
    db $10                                        ; $66B3: $10
    ld c, d                                       ; $66B4: $4A
    db $F4                                        ; $66B5: $F4
    ld de, $BCFF                                  ; $66B6: $11 $FF $BC
    db $10                                        ; $66B9: $10
    ccf                                           ; $66BA: $3F
    nop                                           ; $66BB: $00
    rrca                                          ; $66BC: $0F
    sbc b                                         ; $66BD: $98
    nop                                           ; $66BE: $00
    ld h, b                                       ; $66BF: $60
    nop                                           ; $66C0: $00
    ld h, b                                       ; $66C1: $60
    db $10                                        ; $66C2: $10
    ei                                            ; $66C3: $FB
    inc b                                         ; $66C4: $04
    push af                                       ; $66C5: $F5
    ld [hl+], a                                   ; $66C6: $22
    ld c, $7A                                     ; $66C7: $0E $7A
    jr nc, jr_031_6707                            ; $66C9: $30 $3C

    add b                                         ; $66CB: $80
    and $A0                                       ; $66CC: $E6 $A0
    add e                                         ; $66CE: $83
    ld e, [hl]                                    ; $66CF: $5E
    rst RST_20                                    ; $66D0: $E7
    ret nz                                        ; $66D1: $C0

    ld bc, $0110                                  ; $66D2: $01 $10 $01
    or b                                          ; $66D5: $B0
    db $10                                        ; $66D6: $10
    rra                                           ; $66D7: $1F
    cp h                                          ; $66D8: $BC
    db $10                                        ; $66D9: $10
    ld a, a                                       ; $66DA: $7F
    db $10                                        ; $66DB: $10
    ret nc                                        ; $66DC: $D0

    nop                                           ; $66DD: $00
    ld b, c                                       ; $66DE: $41
    add b                                         ; $66DF: $80
    ccf                                           ; $66E0: $3F
    halt                                          ; $66E1: $76

jr_031_66E2:
    ret nz                                        ; $66E2: $C0

    ld d, c                                       ; $66E3: $51
    jr nc, @+$12                                  ; $66E4: $30 $10

    rlca                                          ; $66E6: $07
    ld [hl], b                                    ; $66E7: $70
    jr nz, jr_031_66E2                            ; $66E8: $20 $F8

    add e                                         ; $66EA: $83
    db $10                                        ; $66EB: $10
    cp $FB                                        ; $66EC: $FE $FB
    inc bc                                        ; $66EE: $03
    db $FD                                        ; $66EF: $FD
    ld bc, $8013                                  ; $66F0: $01 $13 $80
    xor e                                         ; $66F3: $AB
    and b                                         ; $66F4: $A0
    ld a, [$ED10]                                 ; $66F5: $FA $10 $ED
    ld d, b                                       ; $66F8: $50
    dec d                                         ; $66F9: $15
    ld [hl], c                                    ; $66FA: $71
    ld c, $00                                     ; $66FB: $0E $00
    ld h, b                                       ; $66FD: $60
    ld l, [hl]                                    ; $66FE: $6E
    ld d, b                                       ; $66FF: $50
    ld c, [hl]                                    ; $6700: $4E
    ld [$4437], sp                                ; $6701: $08 $37 $44
    dec sp                                        ; $6704: $3B
    add hl, bc                                    ; $6705: $09
    ld [hl+], a                                   ; $6706: $22

jr_031_6707:
    ld e, l                                       ; $6707: $5D
    ld [de], a                                    ; $6708: $12
    ld l, h                                       ; $6709: $6C
    ld [hl], b                                    ; $670A: $70
    ld [hl], h                                    ; $670B: $74
    nop                                           ; $670C: $00
    nop                                           ; $670D: $00
    inc b                                         ; $670E: $04
    inc a                                         ; $670F: $3C
    rst RST_38                                    ; $6710: $FF
    dec a                                         ; $6711: $3D
    ld a, a                                       ; $6712: $7F
    rrca                                          ; $6713: $0F
    ld de, $072F                                  ; $6714: $11 $2F $07
    xor l                                         ; $6717: $AD
    jr nz, @+$03                                  ; $6718: $20 $01

    ld de, $F105                                  ; $671A: $11 $05 $F1
    nop                                           ; $671D: $00
    pop bc                                        ; $671E: $C1
    db $10                                        ; $671F: $10
    ld d, a                                       ; $6720: $57
    rst RST_38                                    ; $6721: $FF
    ld de, $1080                                  ; $6722: $11 $80 $10
    jp $0310                                      ; $6725: $C3 $10 $03


    ldh a, [c]                                    ; $6728: $F2
    xor d                                         ; $6729: $AA
    jp nc, Jump_000_1022                          ; $672A: $D2 $22 $10

    call z, $F810                                 ; $672D: $CC $10 $F8
    db $10                                        ; $6730: $10
    ldh a, [rNR34]                                ; $6731: $F0 $1E
    cp $C0                                        ; $6733: $FE $C0
    db $FC                                        ; $6735: $FC
    ldh a, [c]                                    ; $6736: $F2
    ld d, b                                       ; $6737: $50
    pop af                                        ; $6738: $F1
    db $10                                        ; $6739: $10
    db $FD                                        ; $673A: $FD
    db $EB                                        ; $673B: $EB
    db $10                                        ; $673C: $10
    ldh [rNR10], a                                ; $673D: $E0 $10
    ret nc                                        ; $673F: $D0

    db $10                                        ; $6740: $10
    add b                                         ; $6741: $80
    jp nc, Jump_031_5600                          ; $6742: $D2 $00 $56

    inc bc                                        ; $6745: $03
    nop                                           ; $6746: $00
    rra                                           ; $6747: $1F
    nop                                           ; $6748: $00
    rrca                                          ; $6749: $0F
    nop                                           ; $674A: $00
    ld b, b                                       ; $674B: $40
    inc de                                        ; $674C: $13
    ld [bc], a                                    ; $674D: $02
    ld [$1134], sp                                ; $674E: $08 $34 $11
    ld l, [hl]                                    ; $6751: $6E
    ld [hl+], a                                   ; $6752: $22
    db $DD                                        ; $6753: $DD
    pop af                                        ; $6754: $F1
    cp $B4                                        ; $6755: $FE $B4
    ld [$001E], sp                                ; $6757: $08 $1E $00
    ldh a, [$FFC2]                                ; $675A: $F0 $C2
    pop af                                        ; $675C: $F1
    sbc b                                         ; $675D: $98
    nop                                           ; $675E: $00
    ld c, c                                       ; $675F: $49
    nop                                           ; $6760: $00
    ld c, $FE                                     ; $6761: $0E $FE
    ld bc, $FF1D                                  ; $6763: $01 $1D $FF
    nop                                           ; $6766: $00

jr_031_6767:
    dec de                                        ; $6767: $1B
    sbc b                                         ; $6768: $98
    ld hl, $01FE                                  ; $6769: $21 $FE $01
    dec de                                        ; $676C: $1B
    pop af                                        ; $676D: $F1
    ld [hl], e                                    ; $676E: $73
    db $FC                                        ; $676F: $FC
    ccf                                           ; $6770: $3F
    inc d                                         ; $6771: $14
    ret nz                                        ; $6772: $C0

    ld a, a                                       ; $6773: $7F
    add b                                         ; $6774: $80
    rla                                           ; $6775: $17
    ld a, [hl]                                    ; $6776: $7E
    db $10                                        ; $6777: $10
    rst RST_38                                    ; $6778: $FF
    nop                                           ; $6779: $00
    and b                                         ; $677A: $A0
    ld de, $10FC                                  ; $677B: $11 $FC $10
    ei                                            ; $677E: $FB
    inc bc                                        ; $677F: $03
    push hl                                       ; $6780: $E5
    ld b, $DB                                     ; $6781: $06 $DB
    nop                                           ; $6783: $00
    inc e                                         ; $6784: $1C
    cpl                                           ; $6785: $2F
    jr nc, jr_031_6767                            ; $6786: $30 $DF

    ldh [rLCDC], a                                ; $6788: $E0 $40
    ld h, b                                       ; $678A: $60
    rra                                           ; $678B: $1F
    add b                                         ; $678C: $80
    nop                                           ; $678D: $00
    db $ED                                        ; $678E: $ED
    di                                            ; $678F: $F3
    ld a, [hl]                                    ; $6790: $7E
    add c                                         ; $6791: $81
    db $FD                                        ; $6792: $FD
    inc bc                                        ; $6793: $03
    ei                                            ; $6794: $FB
    inc b                                         ; $6795: $04
    rlca                                          ; $6796: $07
    or $0E                                        ; $6797: $F6 $0E
    db $EC                                        ; $6799: $EC
    inc e                                         ; $679A: $1C
    ldh a, [$FF3F]                                ; $679B: $F0 $3F
    and b                                         ; $679D: $A0
    inc b                                         ; $679E: $04
    sbc a                                         ; $679F: $9F
    ret nz                                        ; $67A0: $C0

    rst RST_18                                    ; $67A1: $DF
    ret nc                                        ; $67A2: $D0

    rst RST_08                                    ; $67A3: $CF
    ld de, $003C                                  ; $67A4: $11 $3C $00
    ld c, h                                       ; $67A7: $4C
    inc bc                                        ; $67A8: $03
    nop                                           ; $67A9: $00
    rst RST_30                                    ; $67AA: $F7
    rlca                                          ; $67AB: $07
    and b                                         ; $67AC: $A0
    ld [bc], a                                    ; $67AD: $02
    ld l, a                                       ; $67AE: $6F
    rst RST_28                                    ; $67AF: $EF
    ld e, d                                       ; $67B0: $5A
    ld [hl], a                                    ; $67B1: $77
    add b                                         ; $67B2: $80
    scf                                           ; $67B3: $37
    and c                                         ; $67B4: $A1
    nop                                           ; $67B5: $00
    di                                            ; $67B6: $F3
    nop                                           ; $67B7: $00
    db $FD                                        ; $67B8: $FD
    sub b                                         ; $67B9: $90
    nop                                           ; $67BA: $00
    cp $FF                                        ; $67BB: $FE $FF
    rla                                           ; $67BD: $17
    ld hl, sp-$07                                 ; $67BE: $F8 $F9
    ldh [$FFE5], a                                ; $67C0: $E0 $E5
    dec sp                                        ; $67C2: $3B
    add b                                         ; $67C3: $80
    sbc l                                         ; $67C4: $9D
    ld b, b                                       ; $67C5: $40
    ld h, b                                       ; $67C6: $60
    nop                                           ; $67C7: $00
    ld a, [$4000]                                 ; $67C8: $FA $00 $40
    jp nz, $B017                                  ; $67CB: $C2 $17 $B0

    ei                                            ; $67CE: $FB
    db $FC                                        ; $67CF: $FC
    nop                                           ; $67D0: $00
    ldh [rNR10], a                                ; $67D1: $E0 $10
    ld b, b                                       ; $67D3: $40
    ld [bc], a                                    ; $67D4: $02
    rra                                           ; $67D5: $1F
    inc e                                         ; $67D6: $1C
    ccf                                           ; $67D7: $3F
    inc a                                         ; $67D8: $3C
    ld a, a                                       ; $67D9: $7F
    ld a, h                                       ; $67DA: $7C
    inc d                                         ; $67DB: $14
    ld a, [hl-]                                   ; $67DC: $3A
    dec b                                         ; $67DD: $05
    jr c, jr_031_6815                             ; $67DE: $38 $35

    ld sp, $232B                                  ; $67E0: $31 $2B $23
    db $10                                        ; $67E3: $10
    and e                                         ; $67E4: $A3
    ld de, $3431                                  ; $67E5: $11 $31 $34
    or b                                          ; $67E8: $B0
    sub b                                         ; $67E9: $90
    db $10                                        ; $67EA: $10
    daa                                           ; $67EB: $27
    and b                                         ; $67EC: $A0
    rst RST_38                                    ; $67ED: $FF
    ld [$0F42], sp                                ; $67EE: $08 $42 $0F
    nop                                           ; $67F1: $00
    rst RST_30                                    ; $67F2: $F7
    rlca                                          ; $67F3: $07
    dec de                                        ; $67F4: $1B
    db $E3                                        ; $67F5: $E3
    ld [hl], c                                    ; $67F6: $71

jr_031_67F7:
    cp $84                                        ; $67F7: $FE $84
    nop                                           ; $67F9: $00
    db $FD                                        ; $67FA: $FD
    db $FC                                        ; $67FB: $FC
    ei                                            ; $67FC: $FB
    ld hl, sp-$50                                 ; $67FD: $F8 $B0
    ldh a, [$FFEF]                                ; $67FF: $F0 $EF
    ld b, e                                       ; $6801: $43
    ldh [rNR11], a                                ; $6802: $E0 $11

Call_031_6804:
    pop bc                                        ; $6804: $C1
    ret nz                                        ; $6805: $C0

    ld a, [hl]                                    ; $6806: $7E
    ld bc, $16E0                                  ; $6807: $01 $E0 $16
    nop                                           ; $680A: $00
    db $FC                                        ; $680B: $FC

jr_031_680C:
    inc bc                                        ; $680C: $03
    ld hl, sp+$05                                 ; $680D: $F8 $05
    ldh a, [$FF09]                                ; $680F: $F0 $09
    ld a, a                                       ; $6811: $7F
    add b                                         ; $6812: $80
    sbc c                                         ; $6813: $99
    dec e                                         ; $6814: $1D

jr_031_6815:
    cp a                                          ; $6815: $BF
    ld b, b                                       ; $6816: $40
    dec d                                         ; $6817: $15
    rst RST_30                                    ; $6818: $F7

jr_031_6819:
    db $FD                                        ; $6819: $FD
    ld [bc], a                                    ; $681A: $02
    dec e                                         ; $681B: $1D
    jr nc, jr_031_6819                            ; $681C: $30 $FB

    inc b                                         ; $681E: $04
    dec d                                         ; $681F: $15
    rst RST_30                                    ; $6820: $F7
    ld a, l                                       ; $6821: $7D
    add c                                         ; $6822: $81
    ld [hl], d                                    ; $6823: $72
    add e                                         ; $6824: $83
    nop                                           ; $6825: $00
    ld l, l                                       ; $6826: $6D
    adc [hl]                                      ; $6827: $8E
    ld d, a                                       ; $6828: $57
    sbc b                                         ; $6829: $98
    cpl                                           ; $682A: $2F
    jr nc, jr_031_680C                            ; $682B: $30 $DF

    ldh [$FF0C], a                                ; $682D: $E0 $0C
    ld a, a                                       ; $682F: $7F
    add b                                         ; $6830: $80
    rst RST_38                                    ; $6831: $FF
    nop                                           ; $6832: $00
    inc sp                                        ; $6833: $33
    ld de, $01FE                                  ; $6834: $11 $FE $01
    nop                                           ; $6837: $00
    db $FD                                        ; $6838: $FD
    inc bc                                        ; $6839: $03
    ei                                            ; $683A: $FB
    rlca                                          ; $683B: $07
    or $0E                                        ; $683C: $F6 $0E
    db $EC                                        ; $683E: $EC
    inc e                                         ; $683F: $1C
    nop                                           ; $6840: $00
    reti                                          ; $6841: $D9


    jr c, jr_031_67F7                             ; $6842: $38 $B3

    ld [hl], b                                    ; $6844: $70
    ld h, a                                       ; $6845: $67
    ldh [$FFCF], a                                ; $6846: $E0 $CF
    ret nz                                        ; $6848: $C0

    ld [hl+], a                                   ; $6849: $22
    sbc a                                         ; $684A: $9F
    add b                                         ; $684B: $80
    add b                                         ; $684C: $80
    nop                                           ; $684D: $00
    ld b, b                                       ; $684E: $40
    rlca                                          ; $684F: $07
    jr nz, @+$32                                  ; $6850: $20 $30

    ld b, c                                       ; $6852: $41
    rst RST_30                                    ; $6853: $F7
    jr nc, @-$03                                  ; $6854: $30 $FB

    inc bc                                        ; $6856: $03
    db $FD                                        ; $6857: $FD
    ld bc, $80FE                                  ; $6858: $01 $FE $80
    ld d, b                                       ; $685B: $50
    rst RST_38                                    ; $685C: $FF
    db $10                                        ; $685D: $10
    rra                                           ; $685E: $1F
    db $10                                        ; $685F: $10
    rst RST_20                                    ; $6860: $E7
    ldh [$FF7B], a                                ; $6861: $E0 $7B
    ld a, b                                       ; $6863: $78
    db $F4                                        ; $6864: $F4
    sub b                                         ; $6865: $90
    nop                                           ; $6866: $00

jr_031_6867:
    sub b                                         ; $6867: $90
    ld [bc], a                                    ; $6868: $02
    ld a, a                                       ; $6869: $7F
    nop                                           ; $686A: $00
    add a                                         ; $686B: $87
    rlca                                          ; $686C: $07
    rlca                                          ; $686D: $07
    ldh a, [c]                                    ; $686E: $F2
    ld a, [bc]                                    ; $686F: $0A
    pop af                                        ; $6870: $F1
    inc c                                         ; $6871: $0C
    di                                            ; $6872: $F3
    stop                                          ; $6873: $10 $00
    sub b                                         ; $6875: $90
    nop                                           ; $6876: $00
    inc e                                         ; $6877: $1C
    dec e                                         ; $6878: $1D
    ld h, d                                       ; $6879: $62
    ld h, e                                       ; $687A: $63
    ld l, $6F                                     ; $687B: $2E $6F
    ld d, [hl]                                    ; $687D: $56
    scf                                           ; $687E: $37
    sub b                                         ; $687F: $90
    ld de, $1B6A                                  ; $6880: $11 $6A $1B
    ld de, $FAF8                                  ; $6883: $11 $F8 $FA
    db $FC                                        ; $6886: $FC
    db $FD                                        ; $6887: $FD
    xor e                                         ; $6888: $AB
    dec d                                         ; $6889: $15
    cp $02                                        ; $688A: $FE $02
    rst RST_38                                    ; $688C: $FF
    nop                                           ; $688D: $00
    ld a, h                                       ; $688E: $7C
    db $10                                        ; $688F: $10
    sub b                                         ; $6890: $90
    or b                                          ; $6891: $B0
    ld [de], a                                    ; $6892: $12
    ld hl, sp+$11                                 ; $6893: $F8 $11
    or b                                          ; $6895: $B0
    ldh a, [$FFFD]                                ; $6896: $F0 $FD
    ld h, c                                       ; $6898: $61
    ei                                            ; $6899: $FB
    inc b                                         ; $689A: $04
    inc bc                                        ; $689B: $03
    ld [hl], a                                    ; $689C: $77
    ld e, d                                       ; $689D: $5A
    ld b, c                                       ; $689E: $41
    ld e, [hl]                                    ; $689F: $5E
    db $10                                        ; $68A0: $10
    ld a, $01                                     ; $68A1: $3E $01
    jr nz, jr_031_68E4                            ; $68A3: $20 $3F

    nop                                           ; $68A5: $00
    ld [de], a                                    ; $68A6: $12
    add b                                         ; $68A7: $80
    rst RST_18                                    ; $68A8: $DF
    ret nz                                        ; $68A9: $C0

    rst RST_28                                    ; $68AA: $EF
    ldh [rNR43], a                                ; $68AB: $E0 $22
    dec c                                         ; $68AD: $0D
    pop af                                        ; $68AE: $F1
    inc de                                        ; $68AF: $13
    dec e                                         ; $68B0: $1D
    pop hl                                        ; $68B1: $E1
    ld hl, sp-$10                                 ; $68B2: $F8 $F0
    ldh a, [rWY]                                  ; $68B4: $F0 $4A
    ld [bc], a                                    ; $68B6: $02
    ret nz                                        ; $68B7: $C0

    ld b, $81                                     ; $68B8: $06 $81
    and b                                         ; $68BA: $A0
    cp [hl]                                       ; $68BB: $BE
    nop                                           ; $68BC: $00
    cp a                                          ; $68BD: $BF
    and d                                         ; $68BE: $A2
    nop                                           ; $68BF: $00
    ld a, a                                       ; $68C0: $7F
    ld [bc], a                                    ; $68C1: $02
    cp $FF                                        ; $68C2: $FE $FF
    db $FC                                        ; $68C4: $FC
    db $10                                        ; $68C5: $10
    ld hl, sp-$80                                 ; $68C6: $F8 $80
    ld [de], a                                    ; $68C8: $12
    ld h, b                                       ; $68C9: $60
    ld de, $A182                                  ; $68CA: $11 $82 $A1
    add [hl]                                      ; $68CD: $86
    pop bc                                        ; $68CE: $C1
    inc c                                         ; $68CF: $0C
    ld bc, $18E1                                  ; $68D0: $01 $E1 $18
    jp $8730                                      ; $68D3: $C3 $30 $87


    jr nz, jr_031_6867                            ; $68D6: $20 $8F

    ret nc                                        ; $68D8: $D0

    ld [de], a                                    ; $68D9: $12
    rrca                                          ; $68DA: $0F
    rst RST_38                                    ; $68DB: $FF
    nop                                           ; $68DC: $00
    dec d                                         ; $68DD: $15
    cp $01                                        ; $68DE: $FE $01
    dec d                                         ; $68E0: $15
    cp a                                          ; $68E1: $BF
    ld b, d                                       ; $68E2: $42
    ld b, b                                       ; $68E3: $40

jr_031_68E4:
    dec de                                        ; $68E4: $1B
    nop                                           ; $68E5: $00
    rst RST_38                                    ; $68E6: $FF
    rst RST_28                                    ; $68E7: $EF
    db $10                                        ; $68E8: $10
    ld de, $49DF                                  ; $68E9: $11 $DF $49
    jr nz, @+$1B                                  ; $68EC: $20 $19

    ei                                            ; $68EE: $FB
    inc b                                         ; $68EF: $04
    ld de, $08F7                                  ; $68F0: $11 $F7 $08
    dec d                                         ; $68F3: $15
    inc h                                         ; $68F4: $24
    rst RST_28                                    ; $68F5: $EF
    db $10                                        ; $68F6: $10
    ld de, $00FF                                  ; $68F7: $11 $FF $00
    rla                                           ; $68FA: $17
    cp $01                                        ; $68FB: $FE $01
    jr nc, @-$01                                  ; $68FD: $30 $FD

    inc bc                                        ; $68FF: $03
    ld d, b                                       ; $6900: $50
    db $10                                        ; $6901: $10
    ld hl, sp+$18                                 ; $6902: $F8 $18
    ret nc                                        ; $6904: $D0

    ld sp, $B100                                  ; $6905: $31 $00 $B1
    ld [hl], e                                    ; $6908: $73
    ld h, e                                       ; $6909: $63
    rst RST_20                                    ; $690A: $E7
    rst RST_00                                    ; $690B: $C7
    rst RST_08                                    ; $690C: $CF
    add a                                         ; $690D: $87
    sbc a                                         ; $690E: $9F
    ld b, d                                       ; $690F: $42
    adc a                                         ; $6910: $8F
    db $10                                        ; $6911: $10
    rrca                                          ; $6912: $0F
    rra                                           ; $6913: $1F

jr_031_6914:
    ccf                                           ; $6914: $3F
    rst RST_38                                    ; $6915: $FF
    dec c                                         ; $6916: $0D
    dec e                                         ; $6917: $1D
    inc c                                         ; $6918: $0C
    sbc h                                         ; $6919: $9C
    adc $EE                                       ; $691A: $CE $EE
    cp $00                                        ; $691C: $FE $00
    ld sp, hl                                     ; $691E: $F9
    di                                            ; $691F: $F3
    inc c                                         ; $6920: $0C
    nop                                           ; $6921: $00
    rst RST_20                                    ; $6922: $E7
    jr jr_031_6914                                ; $6923: $18 $EF

    db $10                                        ; $6925: $10
    ld e, a                                       ; $6926: $5F
    jr nz, jr_031_6930                            ; $6927: $20 $07

    nop                                           ; $6929: $00
    nop                                           ; $692A: $00
    inc bc                                        ; $692B: $03
    ldh a, [$FF83]                                ; $692C: $F0 $83
    adc b                                         ; $692E: $88
    ldh [c], a                                    ; $692F: $E2

jr_031_6930:
    pop af                                        ; $6930: $F1
    ld a, [hl+]                                   ; $6931: $2A
    sbc e                                         ; $6932: $9B
    ld hl, $8D34                                  ; $6933: $21 $34 $8D
    ld de, $853C                                  ; $6936: $11 $3C $85
    ld a, [hl-]                                   ; $6939: $3A
    add a                                         ; $693A: $87
    inc de                                        ; $693B: $13
    inc d                                         ; $693C: $14
    ld a, h                                       ; $693D: $7C
    inc bc                                        ; $693E: $03
    rst RST_38                                    ; $693F: $FF
    inc c                                         ; $6940: $0C
    cp $00                                        ; $6941: $FE $00
    add e                                         ; $6943: $83
    adc a                                         ; $6944: $8F
    ld b, $E7                                     ; $6945: $06 $E7
    rst RST_28                                    ; $6947: $EF
    rst RST_00                                    ; $6948: $C7
    rst RST_18                                    ; $6949: $DF
    rst RST_08                                    ; $694A: $CF
    inc d                                         ; $694B: $14
    and b                                         ; $694C: $A0
    sbc a                                         ; $694D: $9F
    inc d                                         ; $694E: $14
    ld l, a                                       ; $694F: $6F
    rra                                           ; $6950: $1F
    ldh a, [rP1]                                  ; $6951: $F0 $00
    rst RST_38                                    ; $6953: $FF
    inc c                                         ; $6954: $0C
    ld sp, $227D                                  ; $6955: $31 $7D $22
    ld sp, hl                                     ; $6958: $F9
    db $FD                                        ; $6959: $FD
    rla                                           ; $695A: $17
    ld hl, sp-$02                                 ; $695B: $F8 $FE
    db $FC                                        ; $695D: $FC
    db $10                                        ; $695E: $10
    ldh a, [$FF50]                                ; $695F: $F0 $50
    rst RST_38                                    ; $6961: $FF
    ld de, $1AE0                                  ; $6962: $11 $E0 $1A
    ld h, c                                       ; $6965: $61
    ld c, $73                                     ; $6966: $0E $73
    nop                                           ; $6968: $00
    ld c, d                                       ; $6969: $4A
    ld a, [hl]                                    ; $696A: $7E
    db $10                                        ; $696B: $10
    inc a                                         ; $696C: $3C
    add b                                         ; $696D: $80
    jr nz, jr_031_6930                            ; $696E: $20 $C0

    db $10                                        ; $6970: $10
    ld hl, sp+$02                                 ; $6971: $F8 $02
    ld bc, $03F9                                  ; $6973: $01 $F9 $03
    di                                            ; $6976: $F3
    db $FD                                        ; $6977: $FD
    ld [bc], a                                    ; $6978: $02
    dec de                                        ; $6979: $1B
    nop                                           ; $697A: $00
    ld [de], a                                    ; $697B: $12
    rst RST_38                                    ; $697C: $FF
    rst RST_30                                    ; $697D: $F7
    ld [$FB11], sp                                ; $697E: $08 $11 $FB
    inc b                                         ; $6981: $04
    add hl, de                                    ; $6982: $19
    rst RST_18                                    ; $6983: $DF

jr_031_6984:
    ld c, c                                       ; $6984: $49
    jr nz, jr_031_6998                            ; $6985: $20 $11

    rst RST_28                                    ; $6987: $EF
    db $10                                        ; $6988: $10
    dec d                                         ; $6989: $15
    rst RST_30                                    ; $698A: $F7
    ld [$2211], sp                                ; $698B: $08 $11 $22
    db $FD                                        ; $698E: $FD
    ld [bc], a                                    ; $698F: $02
    dec e                                         ; $6990: $1D
    ld a, [$FE06]                                 ; $6991: $FA $06 $FE
    db $10                                        ; $6994: $10
    db $F4                                        ; $6995: $F4

jr_031_6996:
    ld h, d                                       ; $6996: $62
    inc c                                         ; $6997: $0C

jr_031_6998:
    ld [hl], b                                    ; $6998: $70
    db $10                                        ; $6999: $10
    jp hl                                         ; $699A: $E9


    jr jr_031_6996                                ; $699B: $18 $F9

    db $10                                        ; $699D: $10
    ret nc                                        ; $699E: $D0

    nop                                           ; $699F: $00
    jr nc, @-$0E                                  ; $69A0: $30 $F0

    scf                                           ; $69A2: $37
    ld c, a                                       ; $69A3: $4F
    rra                                           ; $69A4: $1F
    rst RST_08                                    ; $69A5: $CF
    cpl                                           ; $69A6: $2F
    rst RST_30                                    ; $69A7: $F7
    ld bc, $EB17                                  ; $69A8: $01 $17 $EB
    dec de                                        ; $69AB: $1B
    push af                                       ; $69AC: $F5
    dec c                                         ; $69AD: $0D
    ld a, [$D006]                                 ; $69AE: $FA $06 $D0
    ld a, [bc]                                    ; $69B1: $0A
    rrca                                          ; $69B2: $0F
    jr nz, jr_031_69C5                            ; $69B3: $20 $10

    rst RST_38                                    ; $69B5: $FF
    ld [$007F], sp                                ; $69B6: $08 $7F $00
    sbc a                                         ; $69B9: $9F
    cp d                                          ; $69BA: $BA
    nop                                           ; $69BB: $00
    rrca                                          ; $69BC: $0F
    nop                                           ; $69BD: $00
    ld sp, hl                                     ; $69BE: $F9
    ld bc, $00E3                                  ; $69BF: $01 $E3 $00
    and $00                                       ; $69C2: $E6 $00
    rst RST_20                                    ; $69C4: $E7

jr_031_69C5:
    or $F1                                        ; $69C5: $F6 $F1
    db $EC                                        ; $69C7: $EC
    ldh [c], a                                    ; $69C8: $E2
    ld hl, sp-$1C                                 ; $69C9: $F8 $E4
    jp nc, $CA00                                  ; $69CB: $D2 $00 $CA

    sub $C6                                       ; $69CE: $D6 $C6
    and [hl]                                      ; $69D0: $A6
    sub [hl]                                      ; $69D1: $96
    ld l, $0E                                     ; $69D2: $2E $0E
    ld c, [hl]                                    ; $69D4: $4E
    adc c                                         ; $69D5: $89
    jr nz, jr_031_6A54                            ; $69D6: $20 $7C

    inc bc                                        ; $69D8: $03
    db $FC                                        ; $69D9: $FC
    db $10                                        ; $69DA: $10
    cp $01                                        ; $69DB: $FE $01
    add hl, de                                    ; $69DD: $19
    nop                                           ; $69DE: $00
    ld sp, hl                                     ; $69DF: $F9
    ld hl, sp-$09                                 ; $69E0: $F8 $F7
    ldh a, [$FFEF]                                ; $69E2: $F0 $EF
    ldh [$FFDF], a                                ; $69E4: $E0 $DF
    ret nz                                        ; $69E6: $C0

    ld bc, $80BF                                  ; $69E7: $01 $BF $80
    sbc [hl]                                      ; $69EA: $9E
    add c                                         ; $69EB: $81
    ld a, a                                       ; $69EC: $7F
    nop                                           ; $69ED: $00
    ccf                                           ; $69EE: $3F
    db $10                                        ; $69EF: $10
    db $F4                                        ; $69F0: $F4
    sub b                                         ; $69F1: $90
    jr nz, jr_031_6984                            ; $69F2: $20 $90

    ld h, b                                       ; $69F4: $60
    sbc $30                                       ; $69F5: $DE $30
    cp [hl]                                       ; $69F7: $BE
    ld a, [hl]                                    ; $69F8: $7E
    xor e                                         ; $69F9: $AB
    ld b, b                                       ; $69FA: $40
    cp $40                                        ; $69FB: $FE $40
    rst RST_38                                    ; $69FD: $FF
    or c                                          ; $69FE: $B1
    sbc a                                         ; $69FF: $9F
    ld h, b                                       ; $6A00: $60
    ld b, b                                       ; $6A01: $40
    xor a                                         ; $6A02: $AF
    ld [bc], a                                    ; $6A03: $02
    rra                                           ; $6A04: $1F
    db $10                                        ; $6A05: $10
    rrca                                          ; $6A06: $0F
    sub b                                         ; $6A07: $90
    add b                                         ; $6A08: $80
    ld de, $8FA3                                  ; $6A09: $11 $A3 $8F
    nop                                           ; $6A0C: $00
    db $FD                                        ; $6A0D: $FD
    cp $FC                                        ; $6A0E: $FE $FC
    jr nc, @+$22                                  ; $6A10: $30 $20

    sub h                                         ; $6A12: $94
    ld bc, $9380                                  ; $6A13: $01 $80 $93
    ld [hl], b                                    ; $6A16: $70
    ld a, a                                       ; $6A17: $7F
    sbc b                                         ; $6A18: $98
    rra                                           ; $6A19: $1F
    jr nz, @-$3E                                  ; $6A1A: $20 $C0

    dec bc                                        ; $6A1C: $0B
    ld bc, $BBF3                                  ; $6A1D: $01 $F3 $BB
    jp $E11D                                      ; $6A20: $C3 $1D $E1


    dec c                                         ; $6A23: $0D
    pop af                                        ; $6A24: $F1
    ldh a, [rNR30]                                ; $6A25: $F0 $1A
    nop                                           ; $6A27: $00
    rrca                                          ; $6A28: $0F
    rst RST_28                                    ; $6A29: $EF
    ldh [rP1], a                                  ; $6A2A: $E0 $00
    rst RST_38                                    ; $6A2C: $FF
    ld a, [bc]                                    ; $6A2D: $0A
    cp $69                                        ; $6A2E: $FE $69
    ld bc, $8015                                  ; $6A30: $01 $15 $80
    nop                                           ; $6A33: $00
    dec d                                         ; $6A34: $15
    cp a                                          ; $6A35: $BF
    ld b, b                                       ; $6A36: $40
    dec e                                         ; $6A37: $1D
    inc h                                         ; $6A38: $24
    rst RST_18                                    ; $6A39: $DF
    jr nz, jr_031_6A55                            ; $6A3A: $20 $19

    rst RST_28                                    ; $6A3C: $EF
    db $10                                        ; $6A3D: $10
    ld de, $04FB                                  ; $6A3E: $11 $FB $04
    sub b                                         ; $6A41: $90
    add hl, de                                    ; $6A42: $19
    rst RST_30                                    ; $6A43: $F7
    ld [$A011], sp                                ; $6A44: $08 $11 $A0
    ld h, a                                       ; $6A47: $67
    ld h, b                                       ; $6A48: $60
    rst RST_28                                    ; $6A49: $EF
    nop                                           ; $6A4A: $00
    ret nz                                        ; $6A4B: $C0

    rst RST_00                                    ; $6A4C: $C7
    ld c, b                                       ; $6A4D: $48
    ld e, e                                       ; $6A4E: $5B
    inc e                                         ; $6A4F: $1C
    sbc l                                         ; $6A50: $9D
    ld e, $BE                                     ; $6A51: $1E $BE
    inc d                                         ; $6A53: $14

jr_031_6A54:
    rra                                           ; $6A54: $1F

jr_031_6A55:
    rst RST_38                                    ; $6A55: $FF
    ccf                                           ; $6A56: $3F
    db $10                                        ; $6A57: $10
    adc a                                         ; $6A58: $8F
    ret nz                                        ; $6A59: $C0

    xor a                                         ; $6A5A: $AF
    ldh [$FF0A], a                                ; $6A5B: $E0 $0A
    or a                                          ; $6A5D: $B7
    ldh a, [$FFBB]                                ; $6A5E: $F0 $BB
    ld hl, sp+$11                                 ; $6A60: $F8 $11
    jr c, @+$13                                   ; $6A62: $38 $11

    ld a, b                                       ; $6A64: $78
    ld [$B898], sp                                ; $6A65: $08 $98 $B8
    rst RST_30                                    ; $6A68: $F7
    rlca                                          ; $6A69: $07
    ld de, $0FE7                                  ; $6A6A: $11 $E7 $0F
    rst RST_08                                    ; $6A6D: $CF
    ld [de], a                                    ; $6A6E: $12
    rra                                           ; $6A6F: $1F
    sbc a                                         ; $6A70: $9F
    ccf                                           ; $6A71: $3F
    jr nz, jr_031_6AF3                            ; $6A72: $20 $7F

    ld c, $30                                     ; $6A74: $0E $30
    nop                                           ; $6A76: $00
    dec d                                         ; $6A77: $15

jr_031_6A78:
    inc c                                         ; $6A78: $0C
    cp $FF                                        ; $6A79: $FE $FF
    inc de                                        ; $6A7B: $13
    db $FC                                        ; $6A7C: $FC
    jr nz, jr_031_6A78                            ; $6A7D: $20 $F9

    jr nz, @+$1B                                  ; $6A7F: $20 $19

    jp Jump_000_07E0                              ; $6A81: $C3 $E0 $07


    ldh [rSB], a                                  ; $6A84: $E0 $01
    ld c, [hl]                                    ; $6A86: $4E

jr_031_6A87:
    ld l, $11                                     ; $6A87: $2E $11
    dec b                                         ; $6A89: $05
    ld c, a                                       ; $6A8A: $4F
    cpl                                           ; $6A8B: $2F
    add a                                         ; $6A8C: $87
    rla                                           ; $6A8D: $17
    rst RST_20                                    ; $6A8E: $E7
    ret nz                                        ; $6A8F: $C0

    rst RST_30                                    ; $6A90: $F7
    db $10                                        ; $6A91: $10
    ld [de], a                                    ; $6A92: $12
    rst RST_08                                    ; $6A93: $CF
    rrca                                          ; $6A94: $0F
    ccf                                           ; $6A95: $3F
    nop                                           ; $6A96: $00
    cp $01                                        ; $6A97: $FE $01
    ld de, $807E                                  ; $6A99: $11 $7E $80
    inc d                                         ; $6A9C: $14
    ld a, h                                       ; $6A9D: $7C
    inc bc                                        ; $6A9E: $03
    jr c, @+$49                                   ; $6A9F: $38 $47

    ld [hl-], a                                   ; $6AA1: $32
    ld c, a                                       ; $6AA2: $4F
    add a                                         ; $6AA3: $87
    add hl, hl                                    ; $6AA4: $29
    add b                                         ; $6AA5: $80
    ldh [rP1], a                                  ; $6AA6: $E0 $00
    rst RST_28                                    ; $6AA8: $EF
    db $10                                        ; $6AA9: $10
    ret nz                                        ; $6AAA: $C0

    rst RST_18                                    ; $6AAB: $DF
    ld de, $8416                                  ; $6AAC: $11 $16 $84
    cp a                                          ; $6AAF: $BF
    sub h                                         ; $6AB0: $94
    db $10                                        ; $6AB1: $10
    sbc [hl]                                      ; $6AB2: $9E
    db $10                                        ; $6AB3: $10
    or b                                          ; $6AB4: $B0
    rra                                           ; $6AB5: $1F
    inc b                                         ; $6AB6: $04
    rla                                           ; $6AB7: $17
    rrca                                          ; $6AB8: $0F
    inc bc                                        ; $6AB9: $03
    rlca                                          ; $6ABA: $07
    ld bc, $8020                                  ; $6ABB: $01 $20 $80
    nop                                           ; $6ABE: $00
    ld d, c                                       ; $6ABF: $51
    ld b, $20                                     ; $6AC0: $06 $20
    ld c, a                                       ; $6AC2: $4F
    db $10                                        ; $6AC3: $10
    cpl                                           ; $6AC4: $2F
    ret nz                                        ; $6AC5: $C0

    rst RST_38                                    ; $6AC6: $FF
    ld b, $14                                     ; $6AC7: $06 $14
    ld a, [$00FC]                                 ; $6AC9: $FA $FC $00
    nop                                           ; $6ACC: $00
    ld hl, sp+$10                                 ; $6ACD: $F8 $10
    sbc b                                         ; $6ACF: $98
    ld h, b                                       ; $6AD0: $60
    cp b                                          ; $6AD1: $B8
    sub c                                         ; $6AD2: $91
    cp $10                                        ; $6AD3: $FE $10
    ld [hl], b                                    ; $6AD5: $70
    db $10                                        ; $6AD6: $10
    rst RST_28                                    ; $6AD7: $EF
    ldh a, [$FF37]                                ; $6AD8: $F0 $37
    adc [hl]                                      ; $6ADA: $8E
    ld b, b                                       ; $6ADB: $40
    inc bc                                        ; $6ADC: $03
    inc a                                         ; $6ADD: $3C
    rrca                                          ; $6ADE: $0F
    ldh a, [$FF30]                                ; $6ADF: $F0 $30
    db $10                                        ; $6AE1: $10
    ld a, a                                       ; $6AE2: $7F
    rla                                           ; $6AE3: $17
    add b                                         ; $6AE4: $80
    ccf                                           ; $6AE5: $3F
    ret nz                                        ; $6AE6: $C0

    ld sp, $70FF                                  ; $6AE7: $31 $FF $70
    rla                                           ; $6AEA: $17
    or b                                          ; $6AEB: $B0
    sub d                                         ; $6AEC: $92
    ld [bc], a                                    ; $6AED: $02
    cp a                                          ; $6AEE: $BF
    ccf                                           ; $6AEF: $3F
    ld de, $1FDE                                  ; $6AF0: $11 $DE $1F

jr_031_6AF3:
    inc de                                        ; $6AF3: $13
    xor $2A                                       ; $6AF4: $EE $2A
    rrca                                          ; $6AF6: $0F
    nop                                           ; $6AF7: $00
    nop                                           ; $6AF8: $00
    ld a, h                                       ; $6AF9: $7C
    nop                                           ; $6AFA: $00
    ld [bc], a                                    ; $6AFB: $02
    nop                                           ; $6AFC: $00
    ldh a, [c]                                    ; $6AFD: $F2
    add d                                         ; $6AFE: $82
    db $10                                        ; $6AFF: $10
    add h                                         ; $6B00: $84
    inc b                                         ; $6B01: $04
    cp b                                          ; $6B02: $B8
    jr c, jr_031_6A87                             ; $6B03: $38 $82

    pop bc                                        ; $6B05: $C1
    add b                                         ; $6B06: $80
    ld [hl], l                                    ; $6B07: $75
    adc c                                         ; $6B08: $89
    nop                                           ; $6B09: $00
    jr nz, jr_031_6B0C                            ; $6B0A: $20 $00

jr_031_6B0C:
    ld hl, sp+$00                                 ; $6B0C: $F8 $00
    dec b                                         ; $6B0E: $05
    ld [bc], a                                    ; $6B0F: $02
    push bc                                       ; $6B10: $C5
    ld d, c                                       ; $6B11: $51
    pop hl                                        ; $6B12: $E1
    ld e, $5E                                     ; $6B13: $1E $5E
    pop bc                                        ; $6B15: $C1
    nop                                           ; $6B16: $00
    cp b                                          ; $6B17: $B8
    nop                                           ; $6B18: $00
    ld b, b                                       ; $6B19: $40
    call nz, $9400                                ; $6B1A: $C4 $00 $94
    add h                                         ; $6B1D: $84
    and l                                         ; $6B1E: $A5
    add l                                         ; $6B1F: $85
    xor b                                         ; $6B20: $A8
    adc b                                         ; $6B21: $88
    ld b, h                                       ; $6B22: $44
    ld [bc], a                                    ; $6B23: $02
    ldh a, [rLCDC]                                ; $6B24: $F0 $40
    ld e, a                                       ; $6B26: $5F
    ldh a, [rP1]                                  ; $6B27: $F0 $00
    daa                                           ; $6B29: $27
    jr nz, jr_031_6B33                            ; $6B2A: $20 $07

    inc de                                        ; $6B2C: $13
    db $10                                        ; $6B2D: $10
    ei                                            ; $6B2E: $FB
    ld hl, sp+$03                                 ; $6B2F: $F8 $03
    or b                                          ; $6B31: $B0
    inc sp                                        ; $6B32: $33

jr_031_6B33:
    and b                                         ; $6B33: $A0
    db $10                                        ; $6B34: $10
    xor a                                         ; $6B35: $AF
    ccf                                           ; $6B36: $3F
    rst RST_38                                    ; $6B37: $FF
    dec d                                         ; $6B38: $15
    rra                                           ; $6B39: $1F
    sbc a                                         ; $6B3A: $9F
    ld h, a                                       ; $6B3B: $67
    rst RST_20                                    ; $6B3C: $E7
    ld [de], a                                    ; $6B3D: $12
    dec de                                        ; $6B3E: $1B
    ei                                            ; $6B3F: $FB
    nop                                           ; $6B40: $00
    ld [hl], b                                    ; $6B41: $70
    jp Jump_031_60D7                              ; $6B42: $C3 $D7 $60


    rst RST_28                                    ; $6B45: $EF
    dec hl                                        ; $6B46: $2B
    rst RST_08                                    ; $6B47: $CF
    rst RST_18                                    ; $6B48: $DF
    inc de                                        ; $6B49: $13
    rst RST_00                                    ; $6B4A: $C7
    db $10                                        ; $6B4B: $10
    db $E3                                        ; $6B4C: $E3
    sub b                                         ; $6B4D: $90
    pop af                                        ; $6B4E: $F1
    ld d, e                                       ; $6B4F: $53
    add b                                         ; $6B50: $80
    nop                                           ; $6B51: $00
    ret nz                                        ; $6B52: $C0

    nop                                           ; $6B53: $00
    ldh [$FFEC], a                                ; $6B54: $E0 $EC
    db $10                                        ; $6B56: $10
    sub b                                         ; $6B57: $90
    ld d, l                                       ; $6B58: $55
    push hl                                       ; $6B59: $E5
    db $10                                        ; $6B5A: $10
    ldh [c], a                                    ; $6B5B: $E2
    db $10                                        ; $6B5C: $10
    push bc                                       ; $6B5D: $C5
    ldh a, [c]                                    ; $6B5E: $F2
    rrca                                          ; $6B5F: $0F
    nop                                           ; $6B60: $00
    ld [$1707], sp                                ; $6B61: $08 $07 $17
    inc bc                                        ; $6B64: $03
    dec de                                        ; $6B65: $1B
    db $10                                        ; $6B66: $10
    adc e                                         ; $6B67: $8B
    ld b, b                                       ; $6B68: $40
    add sp, $0D                                   ; $6B69: $E8 $0D
    ldh a, [$FFF3]                                ; $6B6B: $F0 $F3
    ld a, b                                       ; $6B6D: $78
    ld hl, sp-$0F                                 ; $6B6E: $F8 $F1
    add hl, bc                                    ; $6B70: $09
    ccf                                           ; $6B71: $3F
    nop                                           ; $6B72: $00
    jr nz, jr_031_6BD4                            ; $6B73: $20 $5F

    rst RST_18                                    ; $6B75: $DF
    pop af                                        ; $6B76: $F1
    inc h                                         ; $6B77: $24
    ld e, l                                       ; $6B78: $5D
    ld a, [bc]                                    ; $6B79: $0A
    ld a, c                                       ; $6B7A: $79
    ld d, $00                                     ; $6B7B: $16 $00
    ld [hl], c                                    ; $6B7D: $71
    ld l, [hl]                                    ; $6B7E: $6E
    ld h, c                                       ; $6B7F: $61
    jr jr_031_6B83                                ; $6B80: $18 $01

    add [hl]                                      ; $6B82: $86

jr_031_6B83:
    add a                                         ; $6B83: $87
    cp $C8                                        ; $6B84: $FE $C8
    ret nc                                        ; $6B86: $D0

    pop af                                        ; $6B87: $F1
    adc a                                         ; $6B88: $8F
    cp a                                          ; $6B89: $BF
    db $10                                        ; $6B8A: $10
    xor a                                         ; $6B8B: $AF
    ld c, e                                       ; $6B8C: $4B
    rrca                                          ; $6B8D: $0F
    ld c, b                                       ; $6B8E: $48
    db $E3                                        ; $6B8F: $E3
    ld de, $F107                                  ; $6B90: $11 $07 $F1
    db $10                                        ; $6B93: $10
    ldh a, [$FF03]                                ; $6B94: $F0 $03
    ldh [$FF35], a                                ; $6B96: $E0 $35
    ld bc, $204F                                  ; $6B98: $01 $4F $20
    ld de, $10CF                                  ; $6B9B: $11 $CF $10
    rst RST_00                                    ; $6B9E: $C7
    and b                                         ; $6B9F: $A0
    add hl, hl                                    ; $6BA0: $29
    db $D3                                        ; $6BA1: $D3
    ld hl, sp+$20                                 ; $6BA2: $F8 $20
    db $FC                                        ; $6BA4: $FC
    jr nz, @+$01                                  ; $6BA5: $20 $FF

    ld a, h                                       ; $6BA7: $7C
    db $10                                        ; $6BA8: $10
    ld d, b                                       ; $6BA9: $50
    ld l, b                                       ; $6BAA: $68
    ld h, b                                       ; $6BAB: $60
    ld l, c                                       ; $6BAC: $69
    db $10                                        ; $6BAD: $10
    sbc d                                         ; $6BAE: $9A
    ld h, c                                       ; $6BAF: $61
    db $F4                                        ; $6BB0: $F4
    inc bc                                        ; $6BB1: $03
    dec b                                         ; $6BB2: $05
    add sp, $07                                   ; $6BB3: $E8 $07
    ld [de], a                                    ; $6BB5: $12
    rrca                                          ; $6BB6: $0F
    inc c                                         ; $6BB7: $0C
    ret nc                                        ; $6BB8: $D0

    ccf                                           ; $6BB9: $3F
    db $10                                        ; $6BBA: $10
    ld e, $78                                     ; $6BBB: $1E $78
    nop                                           ; $6BBD: $00
    ret nz                                        ; $6BBE: $C0

    ld b, b                                       ; $6BBF: $40
    jr nz, jr_031_6C12                            ; $6BC0: $20 $50

    inc de                                        ; $6BC2: $13
    jr nz, jr_031_6C07                            ; $6BC3: $20 $42

    db $FD                                        ; $6BC5: $FD
    sub b                                         ; $6BC6: $90
    db $FC                                        ; $6BC7: $FC
    add b                                         ; $6BC8: $80
    ldh a, [$FF7F]                                ; $6BC9: $F0 $7F
    add b                                         ; $6BCB: $80
    rrca                                          ; $6BCC: $0F

jr_031_6BCD:
    add h                                         ; $6BCD: $84
    ld b, b                                       ; $6BCE: $40
    inc bc                                        ; $6BCF: $03
    ldh [$FF0C], a                                ; $6BD0: $E0 $0C
    db $EC                                        ; $6BD2: $EC
    ld d, b                                       ; $6BD3: $50

jr_031_6BD4:
    ld c, a                                       ; $6BD4: $4F
    daa                                           ; $6BD5: $27
    ld a, [bc]                                    ; $6BD6: $0A
    rlca                                          ; $6BD7: $07
    ld sp, hl                                     ; $6BD8: $F9
    ld bc, $D03E                                  ; $6BD9: $01 $3E $D0
    xor [hl]                                      ; $6BDC: $AE
    add b                                         ; $6BDD: $80
    adc $8C                                       ; $6BDE: $CE $8C
    db $10                                        ; $6BE0: $10
    ld e, [hl]                                    ; $6BE1: $5E
    rra                                           ; $6BE2: $1F
    sbc [hl]                                      ; $6BE3: $9E
    db $10                                        ; $6BE4: $10
    sub b                                         ; $6BE5: $90
    ccf                                           ; $6BE6: $3F
    cp $44                                        ; $6BE7: $FE $44
    rst RST_38                                    ; $6BE9: $FF
    ld de, $7F7E                                  ; $6BEA: $11 $7E $7F
    cp a                                          ; $6BED: $BF
    ld [hl], b                                    ; $6BEE: $70
    add b                                         ; $6BEF: $80
    nop                                           ; $6BF0: $00
    ret nc                                        ; $6BF1: $D0

    ld [hl], b                                    ; $6BF2: $70
    db $10                                        ; $6BF3: $10
    db $FC                                        ; $6BF4: $FC
    db $10                                        ; $6BF5: $10
    pop hl                                        ; $6BF6: $E1
    ld bc, $0EEE                                  ; $6BF7: $01 $EE $0E
    ld e, d                                       ; $6BFA: $5A
    ldh [$FF50], a                                ; $6BFB: $E0 $50
    rst RST_38                                    ; $6BFD: $FF
    db $10                                        ; $6BFE: $10
    ld bc, $00BE                                  ; $6BFF: $01 $BE $00
    add c                                         ; $6C02: $81
    xor b                                         ; $6C03: $A8
    nop                                           ; $6C04: $00
    cp c                                          ; $6C05: $B9
    db $10                                        ; $6C06: $10

jr_031_6C07:
    ld [bc], a                                    ; $6C07: $02
    nop                                           ; $6C08: $00
    ld e, h                                       ; $6C09: $5C
    inc e                                         ; $6C0A: $1C
    ret nz                                        ; $6C0B: $C0

    ld [hl+], a                                   ; $6C0C: $22
    ld bc, $10FE                                  ; $6C0D: $01 $FE $10
    ld e, a                                       ; $6C10: $5F
    ld b, b                                       ; $6C11: $40

jr_031_6C12:
    ld e, b                                       ; $6C12: $58
    db $10                                        ; $6C13: $10
    ld e, d                                       ; $6C14: $5A
    ld d, b                                       ; $6C15: $50
    ld b, d                                       ; $6C16: $42
    ld bc, $0024                                  ; $6C17: $01 $24 $00
    sbc b                                         ; $6C1A: $98
    jr @-$3C                                      ; $6C1B: $18 $C2

    nop                                           ; $6C1D: $00
    ld b, h                                       ; $6C1E: $44
    rst RST_38                                    ; $6C1F: $FF
    db $10                                        ; $6C20: $10
    cpl                                           ; $6C21: $2F
    jr nz, @+$51                                  ; $6C22: $20 $4F

    ldh a, [$FF67]                                ; $6C24: $F0 $67
    ld h, b                                       ; $6C26: $60
    ld de, $9097                                  ; $6C27: $11 $97 $90
    sub c                                         ; $6C2A: $91
    db $10                                        ; $6C2B: $10
    adc l                                         ; $6C2C: $8D
    adc h                                         ; $6C2D: $8C
    ld hl, $D4F2                                  ; $6C2E: $21 $F2 $D4
    rra                                           ; $6C31: $1F

jr_031_6C32:
    ld bc, $007E                                  ; $6C32: $01 $7E $00
    ld [bc], a                                    ; $6C35: $02
    nop                                           ; $6C36: $00
    call nc, Call_000_0414                        ; $6C37: $D4 $14 $04
    sub b                                         ; $6C3A: $90
    db $10                                        ; $6C3B: $10
    and [hl]                                      ; $6C3C: $A6
    jr nz, jr_031_6BCD                            ; $6C3D: $20 $8E

    or b                                          ; $6C3F: $B0
    cp $01                                        ; $6C40: $FE $01
    ld b, l                                       ; $6C42: $45
    ld b, $30                                     ; $6C43: $06 $30
    ld d, [hl]                                    ; $6C45: $56
    ld d, b                                       ; $6C46: $50
    ld d, h                                       ; $6C47: $54
    db $10                                        ; $6C48: $10
    ld d, c                                       ; $6C49: $51
    nop                                           ; $6C4A: $00
    push de                                       ; $6C4B: $D5
    jr nc, jr_031_6C4E                            ; $6C4C: $30 $00

jr_031_6C4E:
    sbc b                                         ; $6C4E: $98
    nop                                           ; $6C4F: $00
    ld [bc], a                                    ; $6C50: $02
    or b                                          ; $6C51: $B0
    rst RST_38                                    ; $6C52: $FF
    db $10                                        ; $6C53: $10
    or l                                          ; $6C54: $B5
    ld bc, $00F3                                  ; $6C55: $01 $F3 $00
    ld sp, $00FB                                  ; $6C58: $31 $FB $00
    jr nz, jr_031_6C5D                            ; $6C5B: $20 $00

jr_031_6C5D:
    dec h                                         ; $6C5D: $25
    set 0, e                                      ; $6C5E: $CB $C3
    ld [hl], c                                    ; $6C60: $71
    cp h                                          ; $6C61: $BC
    inc a                                         ; $6C62: $3C
    ld sp, $00E7                                  ; $6C63: $31 $E7 $00
    adc e                                         ; $6C66: $8B
    ld sp, $E0EC                                  ; $6C67: $31 $EC $E0
    ld bc, $E600                                  ; $6C6A: $01 $00 $E6
    nop                                           ; $6C6D: $00
    ld [hl], c                                    ; $6C6E: $71
    ld d, l                                       ; $6C6F: $55
    jr nc, jr_031_6C72                            ; $6C70: $30 $00

jr_031_6C72:
    ld [$E330], sp                                ; $6C72: $08 $30 $E3
    nop                                           ; $6C75: $00
    ld b, h                                       ; $6C76: $44
    nop                                           ; $6C77: $00
    inc l                                         ; $6C78: $2C
    sub e                                         ; $6C79: $93
    add e                                         ; $6C7A: $83
    ld sp, $0023                                  ; $6C7B: $31 $23 $00
    or c                                          ; $6C7E: $B1
    cp h                                          ; $6C7F: $BC
    add b                                         ; $6C80: $80
    ld d, c                                       ; $6C81: $51
    ld a, [hl]                                    ; $6C82: $7E
    jr nc, jr_031_6CC1                            ; $6C83: $30 $3C

    db $10                                        ; $6C85: $10
    adc c                                         ; $6C86: $89
    add c                                         ; $6C87: $81
    ld [hl+], a                                   ; $6C88: $22
    nop                                           ; $6C89: $00
    ld e, l                                       ; $6C8A: $5D
    call nz, $A700                                ; $6C8B: $C4 $00 $A7
    nop                                           ; $6C8E: $00
    add b                                         ; $6C8F: $80
    nop                                           ; $6C90: $00
    ld c, d                                       ; $6C91: $4A
    nop                                           ; $6C92: $00
    dec e                                         ; $6C93: $1D
    ld a, $01                                     ; $6C94: $3E $01
    cp [hl]                                       ; $6C96: $BE
    ret nc                                        ; $6C97: $D0

    ld sp, $2791                                  ; $6C98: $31 $91 $27
    nop                                           ; $6C9B: $00
    ld d, l                                       ; $6C9C: $55
    ldh [rP1], a                                  ; $6C9D: $E0 $00
    ld c, $70                                     ; $6C9F: $0E $70
    cp $10                                        ; $6CA1: $FE $10
    add a                                         ; $6CA3: $87
    sub b                                         ; $6CA4: $90
    dec b                                         ; $6CA5: $05
    or b                                          ; $6CA6: $B0
    jr nc, jr_031_6C32                            ; $6CA7: $30 $89

    add hl, bc                                    ; $6CA9: $09
    ld hl, $8270                                  ; $6CAA: $21 $70 $82
    nop                                           ; $6CAD: $00
    ld d, l                                       ; $6CAE: $55
    inc a                                         ; $6CAF: $3C
    nop                                           ; $6CB0: $00
    add c                                         ; $6CB1: $81
    or b                                          ; $6CB2: $B0
    rst RST_38                                    ; $6CB3: $FF
    ld [de], a                                    ; $6CB4: $12
    ld a, a                                       ; $6CB5: $7F
    ld d, $F8                                     ; $6CB6: $16 $F8
    or e                                          ; $6CB8: $B3
    ld de, $1F66                                  ; $6CB9: $11 $66 $1F
    jr jr_031_6D1E                                ; $6CBC: $18 $60

    ld b, b                                       ; $6CBE: $40
    ld d, b                                       ; $6CBF: $50
    nop                                           ; $6CC0: $00

jr_031_6CC1:
    ld bc, $0003                                  ; $6CC1: $01 $03 $00
    rlca                                          ; $6CC4: $07
    inc h                                         ; $6CC5: $24
    ld l, $1C                                     ; $6CC6: $2E $1C
    cpl                                           ; $6CC8: $2F
    ld a, [de]                                    ; $6CC9: $1A
    ld c, $30                                     ; $6CCA: $0E $30
    rrca                                          ; $6CCC: $0F
    ld a, [bc]                                    ; $6CCD: $0A
    ld d, b                                       ; $6CCE: $50
    ld [hl], b                                    ; $6CCF: $70
    jr c, @-$30                                   ; $6CD0: $38 $CE

    nop                                           ; $6CD2: $00
    jr @+$03                                      ; $6CD3: $18 $01

    ld [$0928], sp                                ; $6CD5: $08 $28 $09
    ld b, $F0                                     ; $6CD8: $06 $F0
    ld a, [bc]                                    ; $6CDA: $0A
    ld hl, sp-$0C                                 ; $6CDB: $F8 $F4
    inc l                                         ; $6CDD: $2C
    ei                                            ; $6CDE: $FB
    ld hl, sp+$6E                                 ; $6CDF: $F8 $6E
    ld [$1F64], sp                                ; $6CE1: $08 $64 $1F
    ld b, b                                       ; $6CE4: $40
    add b                                         ; $6CE5: $80
    ret nz                                        ; $6CE6: $C0

    ld h, b                                       ; $6CE7: $60
    db $10                                        ; $6CE8: $10
    sub h                                         ; $6CE9: $94
    jr z, jr_031_6D21                             ; $6CEA: $28 $35

    add sp, $07                                   ; $6CEC: $E8 $07
    rlca                                          ; $6CEE: $07
    ld [bc], a                                    ; $6CEF: $02
    ld c, $00                                     ; $6CF0: $0E $00
    inc de                                        ; $6CF2: $13
    ld de, $0601                                  ; $6CF3: $11 $01 $06
    rla                                           ; $6CF6: $17
    inc d                                         ; $6CF7: $14
    jr jr_031_6D32                                ; $6CF8: $18 $38

    db $10                                        ; $6CFA: $10
    ld [$3058], sp                                ; $6CFB: $08 $58 $30
    ld h, b                                       ; $6CFE: $60
    jr nz, @+$34                                  ; $6CFF: $20 $32

    or l                                          ; $6D01: $B5
    rlca                                          ; $6D02: $07
    inc bc                                        ; $6D03: $03
    rrca                                          ; $6D04: $0F
    inc l                                         ; $6D05: $2C
    ld l, $7B                                     ; $6D06: $2E $7B
    ld e, $D0                                     ; $6D08: $1E $D0
    jr nz, jr_031_6D3D                            ; $6D0A: $20 $31

    add hl, bc                                    ; $6D0C: $09
    ld c, $F8                                     ; $6D0D: $0E $F8
    nop                                           ; $6D0F: $00
    ld e, l                                       ; $6D10: $5D
    ld b, $80                                     ; $6D11: $06 $80
    ld [$070A], sp                                ; $6D13: $08 $0A $07
    ld [bc], a                                    ; $6D16: $02
    ldh [rP1], a                                  ; $6D17: $E0 $00
    ld [bc], a                                    ; $6D19: $02
    ldh a, [$FF30]                                ; $6D1A: $F0 $30
    ld a, b                                       ; $6D1C: $78
    ld c, b                                       ; $6D1D: $48

jr_031_6D1E:
    cp b                                          ; $6D1E: $B8
    ret nz                                        ; $6D1F: $C0

    ld b, b                                       ; $6D20: $40

jr_031_6D21:
    add b                                         ; $6D21: $80
    cp $62                                        ; $6D22: $FE $62
    jr jr_031_6D49                                ; $6D24: $18 $23

    rlca                                          ; $6D26: $07
    rlca                                          ; $6D27: $07
    rlca                                          ; $6D28: $07
    ld bc, $820C                                  ; $6D29: $01 $0C $82
    nop                                           ; $6D2C: $00
    ld e, $16                                     ; $6D2D: $1E $16
    ld a, [de]                                    ; $6D2F: $1A
    jr c, jr_031_6D42                             ; $6D30: $38 $10

jr_031_6D32:
    ld [$7C20], sp                                ; $6D32: $08 $20 $7C
    jr jr_031_6D58                                ; $6D35: $18 $21

    jr jr_031_6D41                                ; $6D37: $18 $08

    xor a                                         ; $6D39: $AF
    ld [bc], a                                    ; $6D3A: $02
    inc hl                                        ; $6D3B: $23
    daa                                           ; $6D3C: $27

jr_031_6D3D:
    ld d, d                                       ; $6D3D: $52
    rra                                           ; $6D3E: $1F
    nop                                           ; $6D3F: $00
    rrca                                          ; $6D40: $0F

jr_031_6D41:
    nop                                           ; $6D41: $00

jr_031_6D42:
    ld bc, $0803                                  ; $6D42: $01 $03 $08
    ld [bc], a                                    ; $6D45: $02
    ld e, h                                       ; $6D46: $5C
    ld b, $58                                     ; $6D47: $06 $58

jr_031_6D49:
    ld [$070A], sp                                ; $6D49: $08 $0A $07
    rlca                                          ; $6D4C: $07
    ret nz                                        ; $6D4D: $C0

    ldh [$FFB7], a                                ; $6D4E: $E0 $B7
    nop                                           ; $6D50: $00
    ldh a, [rSB]                                  ; $6D51: $F0 $01
    jr @-$2E                                      ; $6D53: $18 $D0

    ld a, a                                       ; $6D55: $7F
    rlca                                          ; $6D56: $07
    rlca                                          ; $6D57: $07

jr_031_6D58:
    call nc, $0207                                ; $6D58: $D4 $07 $02
    jr jr_031_6D5D                                ; $6D5B: $18 $00

jr_031_6D5D:
    inc a                                         ; $6D5D: $3C
    ld bc, $2810                                  ; $6D5E: $01 $10 $28
    ei                                            ; $6D61: $FB
    ld [$0940], sp                                ; $6D62: $08 $40 $09
    rlca                                          ; $6D65: $07
    dec b                                         ; $6D66: $05
    jr nz, jr_031_6D69                            ; $6D67: $20 $00

jr_031_6D69:
    cp c                                          ; $6D69: $B9
    dec b                                         ; $6D6A: $05
    cpl                                           ; $6D6B: $2F
    ccf                                           ; $6D6C: $3F
    ld h, $3E                                     ; $6D6D: $26 $3E
    inc h                                         ; $6D6F: $24
    jr z, @+$1A                                   ; $6D70: $28 $18

    nop                                           ; $6D72: $00
    rst RST_28                                    ; $6D73: $EF
    sbc a                                         ; $6D74: $9F
    rlca                                          ; $6D75: $07

jr_031_6D76:
    db $FD                                        ; $6D76: $FD
    jr c, jr_031_6D79                             ; $6D77: $38 $00

jr_031_6D79:
    ei                                            ; $6D79: $FB
    rst RST_28                                    ; $6D7A: $EF
    rlca                                          ; $6D7B: $07
    rst RST_28                                    ; $6D7C: $EF
    rlca                                          ; $6D7D: $07
    ld sp, hl                                     ; $6D7E: $F9
    ret                                           ; $6D7F: $C9


    rlca                                          ; $6D80: $07
    nop                                           ; $6D81: $00
    ld l, a                                       ; $6D82: $6F
    rlca                                          ; $6D83: $07
    dec b                                         ; $6D84: $05
    ld c, e                                       ; $6D85: $4B
    inc bc                                        ; $6D86: $03
    nop                                           ; $6D87: $00
    inc c                                         ; $6D88: $0C
    ld c, $00                                     ; $6D89: $0E $00
    add hl, bc                                    ; $6D8B: $09
    add hl, bc                                    ; $6D8C: $09
    ldh a, [rVBK]                                 ; $6D8D: $F0 $4F
    inc b                                         ; $6D8F: $04
    ld b, b                                       ; $6D90: $40
    ld [bc], a                                    ; $6D91: $02
    ld bc, $AF00                                  ; $6D92: $01 $00 $AF
    rlca                                          ; $6D95: $07
    ld bc, $F87A                                  ; $6D96: $01 $7A $F8
    nop                                           ; $6D99: $00
    ld hl, sp+$00                                 ; $6D9A: $F8 $00
    ret nz                                        ; $6D9C: $C0

    jp nz, $C1C0                                  ; $6D9D: $C2 $C0 $C1

    adc b                                         ; $6DA0: $88
    ld b, b                                       ; $6DA1: $40
    db $E3                                        ; $6DA2: $E3
    ret nz                                        ; $6DA3: $C0

    ccf                                           ; $6DA4: $3F
    ld d, b                                       ; $6DA5: $50
    add a                                         ; $6DA6: $87
    ld a, h                                       ; $6DA7: $7C
    ld a, e                                       ; $6DA8: $7B
    ccf                                           ; $6DA9: $3F
    dec b                                         ; $6DAA: $05
    rlca                                          ; $6DAB: $07

jr_031_6DAC:
    ld l, b                                       ; $6DAC: $68
    nop                                           ; $6DAD: $00
    xor c                                         ; $6DAE: $A9
    ld a, b                                       ; $6DAF: $78
    nop                                           ; $6DB0: $00
    jr nz, jr_031_6DD1                            ; $6DB1: $20 $1E

    inc bc                                        ; $6DB3: $03
    inc b                                         ; $6DB4: $04
    ld b, $08                                     ; $6DB5: $06 $08
    nop                                           ; $6DB7: $00
    ld l, b                                       ; $6DB8: $68
    ld [$1F1D], sp                                ; $6DB9: $08 $1D $1F
    jr @+$0F                                      ; $6DBC: $18 $0D

jr_031_6DBE:
    ld [$7820], sp                                ; $6DBE: $08 $20 $78
    add hl, bc                                    ; $6DC1: $09
    ld a, b                                       ; $6DC2: $78
    adc b                                         ; $6DC3: $88
    add sp, -$57                                  ; $6DC4: $E8 $A9
    rlca                                          ; $6DC6: $07
    ld bc, $00C0                                  ; $6DC7: $01 $C0 $00
    jr nz, jr_031_6DAC                            ; $6DCA: $20 $E0

    ld hl, $0080                                  ; $6DCC: $21 $80 $00
    ldh [c], a                                    ; $6DCF: $E2
    inc hl                                        ; $6DD0: $23

jr_031_6DD1:
    ld h, e                                       ; $6DD1: $63
    ld [hl+], a                                   ; $6DD2: $22
    push hl                                       ; $6DD3: $E5
    inc h                                         ; $6DD4: $24
    and l                                         ; $6DD5: $A5
    ld [hl+], a                                   ; $6DD6: $22
    ld h, [hl]                                    ; $6DD7: $66
    rst RST_00                                    ; $6DD8: $C7
    ldh a, [rDMA]                                 ; $6DD9: $F0 $46
    dec b                                         ; $6DDB: $05
    add a                                         ; $6DDC: $87
    jr jr_031_6DE1                                ; $6DDD: $18 $02

    db $DD                                        ; $6DDF: $DD
    xor b                                         ; $6DE0: $A8

jr_031_6DE1:
    ld [$0001], sp                                ; $6DE1: $08 $01 $00
    cp $03                                        ; $6DE4: $FE $03
    ldh [rP1], a                                  ; $6DE6: $E0 $00
    ld b, $10                                     ; $6DE8: $06 $10
    ldh a, [$FF08]                                ; $6DEA: $F0 $08
    jr jr_031_6D76                                ; $6DEC: $18 $88

    db $10                                        ; $6DEE: $10
    add hl, bc                                    ; $6DEF: $09
    adc [hl]                                      ; $6DF0: $8E
    ccf                                           ; $6DF1: $3F
    ld b, $8C                                     ; $6DF2: $06 $8C

jr_031_6DF4:
    add sp, $20                                   ; $6DF4: $E8 $20
    ld a, b                                       ; $6DF6: $78
    add hl, bc                                    ; $6DF7: $09
    ld a, b                                       ; $6DF8: $78
    and d                                         ; $6DF9: $A2
    db $D3                                        ; $6DFA: $D3
    rst RST_28                                    ; $6DFB: $EF
    ld bc, $0001                                  ; $6DFC: $01 $01 $00
    ld [bc], a                                    ; $6DFF: $02
    inc bc                                        ; $6E00: $03
    or b                                          ; $6E01: $B0
    ret z                                         ; $6E02: $C8

    rla                                           ; $6E03: $17
    dec e                                         ; $6E04: $1D
    jr jr_031_6E14                                ; $6E05: $18 $0D

    ret nz                                        ; $6E07: $C0

    dec b                                         ; $6E08: $05
    ld e, b                                       ; $6E09: $58
    ld c, b                                       ; $6E0A: $48
    ld e, b                                       ; $6E0B: $58
    add sp, -$51                                  ; $6E0C: $E8 $AF
    rlca                                          ; $6E0E: $07
    ld bc, $00C0                                  ; $6E0F: $01 $C0 $00
    jr nz, jr_031_6DF4                            ; $6E12: $20 $E0

jr_031_6E14:
    pop hl                                        ; $6E14: $E1
    nop                                           ; $6E15: $00
    ld hl, $2263                                  ; $6E16: $21 $63 $22
    ld h, l                                       ; $6E19: $65
    and h                                         ; $6E1A: $A4
    add l                                         ; $6E1B: $85
    ld b, [hl]                                    ; $6E1C: $46
    add a                                         ; $6E1D: $87
    dec bc                                        ; $6E1E: $0B
    inc b                                         ; $6E1F: $04
    ld b, $05                                     ; $6E20: $06 $05
    inc bc                                        ; $6E22: $03
    adc b                                         ; $6E23: $88
    ld bc, $07D7                                  ; $6E24: $01 $D7 $07
    and b                                         ; $6E27: $A0
    nop                                           ; $6E28: $00
    ldh [rP1], a                                  ; $6E29: $E0 $00
    db $10                                        ; $6E2B: $10
    ldh a, [$FF88]                                ; $6E2C: $F0 $88
    jr jr_031_6DBE                                ; $6E2E: $18 $8E

    cp a                                          ; $6E30: $BF
    ldh [$FF8C], a                                ; $6E31: $E0 $8C
    ld hl, sp+$28                                 ; $6E33: $F8 $28
    ld e, b                                       ; $6E35: $58
    ld c, b                                       ; $6E36: $48
    ld [hl], d                                    ; $6E37: $72
    cp a                                          ; $6E38: $BF
    add c                                         ; $6E39: $81
    rlca                                          ; $6E3A: $07
    rlca                                          ; $6E3B: $07
    rrca                                          ; $6E3C: $0F
    rra                                           ; $6E3D: $1F
    inc e                                         ; $6E3E: $1C
    inc c                                         ; $6E3F: $0C

Call_031_6E40:
    ld [$E16F], sp                                ; $6E40: $08 $6F $E1
    rlca                                          ; $6E43: $07
    rlca                                          ; $6E44: $07
    ld bc, $C080                                  ; $6E45: $01 $80 $C0
    pop bc                                        ; $6E48: $C1
    ld h, e                                       ; $6E49: $63
    nop                                           ; $6E4A: $00
    ld e, $26                                     ; $6E4B: $1E $26
    ld b, $04                                     ; $6E4D: $06 $04
    ld a, a                                       ; $6E4F: $7F
    rlca                                          ; $6E50: $07
    rlca                                          ; $6E51: $07
    ld bc, $1BF0                                  ; $6E52: $01 $F0 $1B
    ld hl, sp+$18                                 ; $6E55: $F8 $18
    inc c                                         ; $6E57: $0C
    ld hl, sp+$00                                 ; $6E58: $F8 $00
    inc b                                         ; $6E5A: $04
    nop                                           ; $6E5B: $00
    ld a, a                                       ; $6E5C: $7F
    push af                                       ; $6E5D: $F5
    rlca                                          ; $6E5E: $07
    rlca                                          ; $6E5F: $07
    ret                                           ; $6E60: $C9


    ld bc, $0003                                  ; $6E61: $01 $03 $00
    ld bc, $EA04                                  ; $6E64: $01 $04 $EA
    sbc a                                         ; $6E67: $9F
    rlca                                          ; $6E68: $07
    dec b                                         ; $6E69: $05
    add d                                         ; $6E6A: $82
    nop                                           ; $6E6B: $00
    jp nz, $FC00                                  ; $6E6C: $C2 $00 $FC

    inc bc                                        ; $6E6F: $03
    inc a                                         ; $6E70: $3C
    ldh a, [rNR10]                                ; $6E71: $F0 $10
    ldh [$FFA0], a                                ; $6E73: $E0 $A0
    ret nz                                        ; $6E75: $C0

    nop                                           ; $6E76: $00
    sbc a                                         ; $6E77: $9F
    push de                                       ; $6E78: $D5
    rlca                                          ; $6E79: $07
    ld bc, $0204                                  ; $6E7A: $01 $04 $02
    inc bc                                        ; $6E7D: $03
    nop                                           ; $6E7E: $00
    ld bc, $F400                                  ; $6E7F: $01 $00 $F4
    ld a, a                                       ; $6E82: $7F
    rlca                                          ; $6E83: $07
    rlca                                          ; $6E84: $07
    ld bc, $0082                                  ; $6E85: $01 $82 $00
    jp nz, $1E42                                  ; $6E88: $C2 $42 $1E

    db $FC                                        ; $6E8B: $FC
    inc a                                         ; $6E8C: $3C
    ldh [rP1], a                                  ; $6E8D: $E0 $00
    ld a, a                                       ; $6E8F: $7F
    rlca                                          ; $6E90: $07
    dec b                                         ; $6E91: $05
    inc b                                         ; $6E92: $04
    cp [hl]                                       ; $6E93: $BE
    ld [bc], a                                    ; $6E94: $02
    inc bc                                        ; $6E95: $03
    nop                                           ; $6E96: $00
    ld l, a                                       ; $6E97: $6F
    rlca                                          ; $6E98: $07
    rlca                                          ; $6E99: $07
    inc bc                                        ; $6E9A: $03
    add d                                         ; $6E9B: $82
    xor a                                         ; $6E9C: $AF
    nop                                           ; $6E9D: $00
    jp nz, Jump_000_3C00                          ; $6E9E: $C2 $00 $3C

    nop                                           ; $6EA1: $00
    ld l, a                                       ; $6EA2: $6F
    rlca                                          ; $6EA3: $07
    inc bc                                        ; $6EA4: $03
    ld d, h                                       ; $6EA5: $54
    rst RST_38                                    ; $6EA6: $FF
    nop                                           ; $6EA7: $00
    add c                                         ; $6EA8: $81
    ld [$08FD], sp                                ; $6EA9: $08 $FD $08
    dec l                                         ; $6EAC: $2D
    ccf                                           ; $6EAD: $3F
    ld b, c                                       ; $6EAE: $41
    dec hl                                        ; $6EAF: $2B
    ld [$3E2E], sp                                ; $6EB0: $08 $2E $3E
    ld l, c                                       ; $6EB3: $69
    ld a, c                                       ; $6EB4: $79
    ld e, c                                       ; $6EB5: $59
    ld [$716D], sp                                ; $6EB6: $08 $6D $71
    nop                                           ; $6EB9: $00
    xor e                                         ; $6EBA: $AB
    inc a                                         ; $6EBB: $3C
    nop                                           ; $6EBC: $00
    ld [hl], b                                    ; $6EBD: $70
    daa                                           ; $6EBE: $27
    db $FD                                        ; $6EBF: $FD
    ld d, c                                       ; $6EC0: $51
    ld sp, hl                                     ; $6EC1: $F9
    nop                                           ; $6EC2: $00
    xor c                                         ; $6EC3: $A9
    ld [$FBAB], sp                                ; $6EC4: $08 $AB $FB
    xor d                                         ; $6EC7: $AA
    ld [$AF24], sp                                ; $6EC8: $08 $24 $AF
    rst RST_38                                    ; $6ECB: $FF

jr_031_6ECC:
    jr jr_031_6ECC                                ; $6ECC: $18 $FE

    and a                                         ; $6ECE: $A7
    jr jr_031_6F3E                                ; $6ECF: $18 $6D

    db $FD                                        ; $6ED1: $FD
    db $D3                                        ; $6ED2: $D3
    ld a, c                                       ; $6ED3: $79
    xor e                                         ; $6ED4: $AB
    ld a, b                                       ; $6ED5: $78
    nop                                           ; $6ED6: $00
    ld a, [hl]                                    ; $6ED7: $7E
    ld c, [hl]                                    ; $6ED8: $4E
    db $FD                                        ; $6ED9: $FD
    sub b                                         ; $6EDA: $90
    or l                                          ; $6EDB: $B5
    nop                                           ; $6EDC: $00
    inc c                                         ; $6EDD: $0C
    ld de, $0400                                  ; $6EDE: $11 $00 $04
    ld [$08DF], sp                                ; $6EE1: $08 $DF $08
    ld de, $F7D4                                  ; $6EE4: $11 $D4 $F7
    or a                                          ; $6EE7: $B7
    ld [$E161], sp                                ; $6EE8: $08 $61 $E1
    ret nz                                        ; $6EEB: $C0

    nop                                           ; $6EEC: $00
    or l                                          ; $6EED: $B5
    xor e                                         ; $6EEE: $AB
    ldh [rP1], a                                  ; $6EEF: $E0 $00
    ld b, b                                       ; $6EF1: $40
    and c                                         ; $6EF2: $A1
    rst RST_38                                    ; $6EF3: $FF
    jr nc, @-$24                                  ; $6EF4: $30 $DA

    dec d                                         ; $6EF6: $15
    ld [hl], e                                    ; $6EF7: $73
    di                                            ; $6EF8: $F3
    sub [hl]                                      ; $6EF9: $96
    ret c                                         ; $6EFA: $D8

    db $FC                                        ; $6EFB: $FC
    jr z, jr_031_6F39                             ; $6EFC: $28 $3B

    ld [$D75B], sp                                ; $6EFE: $08 $5B $D7
    ld [$007C], sp                                ; $6F01: $08 $7C $00
    xor e                                         ; $6F04: $AB
    ld a, a                                       ; $6F05: $7F
    nop                                           ; $6F06: $00
    ld b, b                                       ; $6F07: $40
    ld d, b                                       ; $6F08: $50
    jp c, $EFFD                                   ; $6F09: $DA $FD $EF

    nop                                           ; $6F0C: $00
    ccf                                           ; $6F0D: $3F
    ld sp, hl                                     ; $6F0E: $F9
    cp a                                          ; $6F0F: $BF

Call_031_6F10:
    or $CD                                        ; $6F10: $F6 $CD
    ld [hl], b                                    ; $6F12: $70
    ld [$D9DF], sp                                ; $6F13: $08 $DF $D9
    adc b                                         ; $6F16: $88
    add hl, hl                                    ; $6F17: $29
    rst RST_30                                    ; $6F18: $F7
    ld c, b                                       ; $6F19: $48
    ld l, l                                       ; $6F1A: $6D
    ld hl, sp+$79                                 ; $6F1B: $F8 $79
    xor e                                         ; $6F1D: $AB
    add b                                         ; $6F1E: $80
    ld [bc], a                                    ; $6F1F: $02
    db $FD                                        ; $6F20: $FD
    inc bc                                        ; $6F21: $03
    nop                                           ; $6F22: $00
    ld d, $86                                     ; $6F23: $16 $86
    add a                                         ; $6F25: $87
    db $ED                                        ; $6F26: $ED
    sbc b                                         ; $6F27: $98
    ei                                            ; $6F28: $FB
    ret nz                                        ; $6F29: $C0

    ldh [$FFBE], a                                ; $6F2A: $E0 $BE
    dec h                                         ; $6F2C: $25
    db $F4                                        ; $6F2D: $F4
    cp h                                          ; $6F2E: $BC
    ldh a, [$FF7F]                                ; $6F2F: $F0 $7F
    ldh a, [$FF38]                                ; $6F31: $F0 $38
    rst RST_38                                    ; $6F33: $FF
    nop                                           ; $6F34: $00
    and l                                         ; $6F35: $A5
    xor e                                         ; $6F36: $AB
    inc a                                         ; $6F37: $3C
    nop                                           ; $6F38: $00

jr_031_6F39:
    ccf                                           ; $6F39: $3F
    daa                                           ; $6F3A: $27
    db $FD                                        ; $6F3B: $FD
    add b                                         ; $6F3C: $80
    inc b                                         ; $6F3D: $04

jr_031_6F3E:
    cp c                                          ; $6F3E: $B9
    xor c                                         ; $6F3F: $A9
    and b                                         ; $6F40: $A0
    ld [$18D1], sp                                ; $6F41: $08 $D1 $18
    ldh [rNR41], a                                ; $6F44: $E0 $20
    ld [$01FA], sp                                ; $6F46: $08 $FA $01
    xor e                                         ; $6F49: $AB
    ld [hl-], a                                   ; $6F4A: $32
    ld h, b                                       ; $6F4B: $60
    db $FD                                        ; $6F4C: $FD
    ldh a, [rP1]                                  ; $6F4D: $F0 $00
    sbc a                                         ; $6F4F: $9F
    xor b                                         ; $6F50: $A8
    cp b                                          ; $6F51: $B8
    db $ED                                        ; $6F52: $ED
    ld [$E0BD], sp                                ; $6F53: $08 $BD $E0
    adc l                                         ; $6F56: $8D
    adc a                                         ; $6F57: $8F
    sbc e                                         ; $6F58: $9B
    add e                                         ; $6F59: $83
    ld b, b                                       ; $6F5A: $40
    or $FE                                        ; $6F5B: $F6 $FE
    adc h                                         ; $6F5D: $8C
    db $FC                                        ; $6F5E: $FC
    ld hl, sp+$00                                 ; $6F5F: $F8 $00
    xor e                                         ; $6F61: $AB
    ld b, d                                       ; $6F62: $42
    ld [hl], b                                    ; $6F63: $70
    ld bc, $3F50                                  ; $6F64: $01 $50 $3F
    add hl, sp                                    ; $6F67: $39
    rrca                                          ; $6F68: $0F
    nop                                           ; $6F69: $00
    ld a, a                                       ; $6F6A: $7F
    and d                                         ; $6F6B: $A2
    ld bc, $0841                                  ; $6F6C: $01 $41 $08
    ld a, [hl]                                    ; $6F6F: $7E
    inc bc                                        ; $6F70: $03
    ld [bc], a                                    ; $6F71: $02
    dec bc                                        ; $6F72: $0B
    rlca                                          ; $6F73: $07
    ld d, e                                       ; $6F74: $53
    ld b, $88                                     ; $6F75: $06 $88
    dec a                                         ; $6F77: $3D
    ld [$3C23], sp                                ; $6F78: $08 $23 $3C
    nop                                           ; $6F7B: $00
    ei                                            ; $6F7C: $FB
    sub b                                         ; $6F7D: $90
    inc bc                                        ; $6F7E: $03
    rst RST_38                                    ; $6F7F: $FF
    di                                            ; $6F80: $F3
    ld [$E1BF], sp                                ; $6F81: $08 $BF $E1
    and c                                         ; $6F84: $A1
    db $FC                                        ; $6F85: $FC
    db $10                                        ; $6F86: $10

jr_031_6F87:
    cp h                                          ; $6F87: $BC
    cp $86                                        ; $6F88: $FE $86
    jr c, jr_031_6F87                             ; $6F8A: $38 $FB

    adc a                                         ; $6F8C: $8F
    adc l                                         ; $6F8D: $8D
    add a                                         ; $6F8E: $87
    ld a, a                                       ; $6F8F: $7F
    add l                                         ; $6F90: $85
    add hl, de                                    ; $6F91: $19
    add hl, sp                                    ; $6F92: $39
    ld [$7830], sp                                ; $6F93: $08 $30 $78
    nop                                           ; $6F96: $00
    rst RST_38                                    ; $6F97: $FF
    ld a, [hl+]                                   ; $6F98: $2A
    pop af                                        ; $6F99: $F1
    or c                                          ; $6F9A: $B1
    ld l, b                                       ; $6F9B: $68
    rra                                           ; $6F9C: $1F
    ld [$08B3], sp                                ; $6F9D: $08 $B3 $08
    xor l                                         ; $6FA0: $AD
    adc b                                         ; $6FA1: $88
    ld [$F79D], sp                                ; $6FA2: $08 $9D $F7
    sub l                                         ; $6FA5: $95
    ld [$E7B5], sp                                ; $6FA6: $08 $B5 $E7
    and l                                         ; $6FA9: $A5
    adc c                                         ; $6FAA: $89
    ld [$EF25], sp                                ; $6FAB: $08 $25 $EF
    dec l                                         ; $6FAE: $2D
    ld [$EEAB], sp                                ; $6FAF: $08 $AB $EE
    nop                                           ; $6FB2: $00
    ret nc                                        ; $6FB3: $D0

    rst RST_38                                    ; $6FB4: $FF
    cp b                                          ; $6FB5: $B8
    ld a, [bc]                                    ; $6FB6: $0A
    ld [$78DF], sp                                ; $6FB7: $08 $DF $78
    ld l, b                                       ; $6FBA: $68
    inc a                                         ; $6FBB: $3C
    inc b                                         ; $6FBC: $04
    inc l                                         ; $6FBD: $2C
    db $FC                                        ; $6FBE: $FC
    db $F4                                        ; $6FBF: $F4
    cp $86                                        ; $6FC0: $FE $86
    ld [$CE7A], sp                                ; $6FC2: $08 $7A $CE
    dec d                                         ; $6FC5: $15
    ld c, [hl]                                    ; $6FC6: $4E
    ret nz                                        ; $6FC7: $C0

    ld b, b                                       ; $6FC8: $40
    jr z, jr_031_7049                             ; $6FC9: $28 $7E

    ld [$0882], sp                                ; $6FCB: $08 $82 $08
    ld a, [$FF00]                                 ; $6FCE: $FA $00 $FF
    add sp, $01                                   ; $6FD1: $E8 $01
    sub b                                         ; $6FD3: $90
    ld a, a                                       ; $6FD4: $7F
    nop                                           ; $6FD5: $00
    ld bc, $07D2                                  ; $6FD6: $01 $D2 $07
    nop                                           ; $6FD9: $00
    inc bc                                        ; $6FDA: $03
    nop                                           ; $6FDB: $00
    rra                                           ; $6FDC: $1F
    ld e, $08                                     ; $6FDD: $1E $08
    ld de, $08E2                                  ; $6FDF: $11 $E2 $08
    nop                                           ; $6FE2: $00
    rst RST_38                                    ; $6FE3: $FF
    cp a                                          ; $6FE4: $BF
    cp c                                          ; $6FE5: $B9
    rst RST_08                                    ; $6FE6: $CF
    nop                                           ; $6FE7: $00
    rst RST_38                                    ; $6FE8: $FF
    pop de                                        ; $6FE9: $D1
    ld hl, sp+$08                                 ; $6FEA: $F8 $08
    ld b, c                                       ; $6FEC: $41
    ld [$C37E], sp                                ; $6FED: $08 $7E $C3
    ld b, d                                       ; $6FF0: $42
    dec bc                                        ; $6FF1: $0B
    add hl, hl                                    ; $6FF2: $29
    rst RST_00                                    ; $6FF3: $C7
    ld b, [hl]                                    ; $6FF4: $46
    ld c, b                                       ; $6FF5: $48
    db $FD                                        ; $6FF6: $FD
    sbc b                                         ; $6FF7: $98
    and e                                         ; $6FF8: $A3
    ld a, $00                                     ; $6FF9: $3E $00
    sub d                                         ; $6FFB: $92
    rst RST_38                                    ; $6FFC: $FF
    ldh [$FFA0], a                                ; $6FFD: $E0 $A0
    dec bc                                        ; $6FFF: $0B
    rst RST_20                                    ; $7000: $E7
    and a                                         ; $7001: $A7
    ld [$D0A5], sp                                ; $7002: $08 $A5 $D0
    dec c                                         ; $7005: $0D
    add sp, -$43                                  ; $7006: $E8 $BD
    ld [$7FDB], sp                                ; $7008: $08 $DB $7F
    ld h, a                                       ; $700B: $67
    dec a                                         ; $700C: $3D
    ret                                           ; $700D: $C9


    nop                                           ; $700E: $00
    rst RST_38                                    ; $700F: $FF
    ld [hl], b                                    ; $7010: $70
    ld d, b                                       ; $7011: $50
    add hl, bc                                    ; $7012: $09
    ldh a, [$FFD0]                                ; $7013: $F0 $D0
    ld [$B015], sp                                ; $7015: $08 $15 $B0
    ld hl, sp-$68                                 ; $7018: $F8 $98
    ld [$0AA8], sp                                ; $701A: $08 $A8 $0A
    ld l, b                                       ; $701D: $68
    add hl, bc                                    ; $701E: $09
    ld h, $FE                                     ; $701F: $26 $FE
    ld l, [hl]                                    ; $7021: $6E
    ld [$DE72], sp                                ; $7022: $08 $72 $DE
    nop                                           ; $7025: $00
    rst RST_38                                    ; $7026: $FF
    rra                                           ; $7027: $1F
    nop                                           ; $7028: $00
    dec l                                         ; $7029: $2D
    nop                                           ; $702A: $00
    ld [hl], h                                    ; $702B: $74
    db $10                                        ; $702C: $10
    inc sp                                        ; $702D: $33
    ld [hl-], a                                   ; $702E: $32
    ld de, $5421                                  ; $702F: $11 $21 $54
    ld d, l                                       ; $7032: $55
    jr nz, jr_031_7067                            ; $7033: $20 $32

    ld de, $2294                                  ; $7035: $11 $94 $22
    ld d, h                                       ; $7038: $54
    inc hl                                        ; $7039: $23
    ld d, h                                       ; $703A: $54
    ld d, l                                       ; $703B: $55
    ld b, d                                       ; $703C: $42
    ld d, h                                       ; $703D: $54
    ld [hl-], a                                   ; $703E: $32
    ld d, h                                       ; $703F: $54
    jr nz, jr_031_7074                            ; $7040: $20 $32

    ld de, $AA94                                  ; $7042: $11 $94 $AA
    ld e, e                                       ; $7045: $5B
    ld [hl+], a                                   ; $7046: $22
    ld d, h                                       ; $7047: $54
    ld b, c                                       ; $7048: $41

jr_031_7049:
    ld [hl-], a                                   ; $7049: $32
    ld [de], a                                    ; $704A: $12
    db $10                                        ; $704B: $10
    ld sp, $32BA                                  ; $704C: $31 $BA $32
    inc de                                        ; $704F: $13
    ld [hl-], a                                   ; $7050: $32
    ld e, a                                       ; $7051: $5F
    ld e, c                                       ; $7052: $59
    ld b, b                                       ; $7053: $40
    ld [hl-], a                                   ; $7054: $32
    ld [hl], h                                    ; $7055: $74
    xor d                                         ; $7056: $AA
    db $10                                        ; $7057: $10
    inc d                                         ; $7058: $14
    db $10                                        ; $7059: $10
    dec d                                         ; $705A: $15
    db $10                                        ; $705B: $10
    ld d, $10                                     ; $705C: $16 $10
    rla                                           ; $705E: $17
    xor l                                         ; $705F: $AD
    db $10                                        ; $7060: $10
    jr @+$12                                      ; $7061: $18 $10

    add hl, de                                    ; $7063: $19
    jp nc, Jump_000_1111                          ; $7064: $D2 $11 $11

jr_031_7067:
    ld d, [hl]                                    ; $7067: $56
    ld d, l                                       ; $7068: $55
    ld a, [de]                                    ; $7069: $1A
    db $10                                        ; $706A: $10
    dec de                                        ; $706B: $1B
    db $10                                        ; $706C: $10
    inc e                                         ; $706D: $1C
    db $10                                        ; $706E: $10
    dec e                                         ; $706F: $1D
    db $10                                        ; $7070: $10
    ld d, l                                       ; $7071: $55
    ld e, $10                                     ; $7072: $1E $10

jr_031_7074:
    rra                                           ; $7074: $1F
    ldh a, [c]                                    ; $7075: $F2
    jr nc, @+$12                                  ; $7076: $30 $10

    inc h                                         ; $7078: $24
    db $10                                        ; $7079: $10
    ld d, l                                       ; $707A: $55
    dec h                                         ; $707B: $25
    db $10                                        ; $707C: $10
    ld h, $10                                     ; $707D: $26 $10
    daa                                           ; $707F: $27
    db $10                                        ; $7080: $10
    jr z, @+$12                                   ; $7081: $28 $10

    ld l, d                                       ; $7083: $6A
    add hl, hl                                    ; $7084: $29
    ldh a, [c]                                    ; $7085: $F2
    ld de, $5611                                  ; $7086: $11 $11 $56
    ld a, [hl+]                                   ; $7089: $2A
    db $10                                        ; $708A: $10
    dec hl                                        ; $708B: $2B
    xor d                                         ; $708C: $AA
    db $10                                        ; $708D: $10
    inc l                                         ; $708E: $2C
    db $10                                        ; $708F: $10
    dec l                                         ; $7090: $2D
    db $10                                        ; $7091: $10
    ld l, $10                                     ; $7092: $2E $10
    cpl                                           ; $7094: $2F
    xor d                                         ; $7095: $AA
    ldh a, [c]                                    ; $7096: $F2
    inc de                                        ; $7097: $13
    db $10                                        ; $7098: $10
    inc [hl]                                      ; $7099: $34
    db $10                                        ; $709A: $10
    dec [hl]                                      ; $709B: $35
    db $10                                        ; $709C: $10
    ld [hl], $AA                                  ; $709D: $36 $AA
    db $10                                        ; $709F: $10
    scf                                           ; $70A0: $37
    db $10                                        ; $70A1: $10
    jr c, jr_031_70B4                             ; $70A2: $38 $10

    add hl, sp                                    ; $70A4: $39
    db $10                                        ; $70A5: $10
    ld [de], a                                    ; $70A6: $12
    xor d                                         ; $70A7: $AA
    ld [de], a                                    ; $70A8: $12
    inc de                                        ; $70A9: $13
    ld d, [hl]                                    ; $70AA: $56
    ld a, [hl-]                                   ; $70AB: $3A
    db $10                                        ; $70AC: $10
    dec sp                                        ; $70AD: $3B
    db $10                                        ; $70AE: $10
    inc a                                         ; $70AF: $3C
    xor d                                         ; $70B0: $AA
    db $10                                        ; $70B1: $10
    dec a                                         ; $70B2: $3D
    db $10                                        ; $70B3: $10

jr_031_70B4:
    ld a, $10                                     ; $70B4: $3E $10
    ccf                                           ; $70B6: $3F
    ldh a, [c]                                    ; $70B7: $F2
    ld de, $10AA                                  ; $70B8: $11 $AA $10
    ld b, h                                       ; $70BB: $44
    db $10                                        ; $70BC: $10
    ld b, l                                       ; $70BD: $45
    db $10                                        ; $70BE: $10
    ld b, [hl]                                    ; $70BF: $46
    db $10                                        ; $70C0: $10
    ld b, a                                       ; $70C1: $47
    xor d                                         ; $70C2: $AA
    db $10                                        ; $70C3: $10
    ld c, b                                       ; $70C4: $48
    db $10                                        ; $70C5: $10
    ld c, c                                       ; $70C6: $49
    db $10                                        ; $70C7: $10
    ld [hl], h                                    ; $70C8: $74
    ld [de], a                                    ; $70C9: $12
    ld de, $56AA                                  ; $70CA: $11 $AA $56
    ld c, d                                       ; $70CD: $4A
    db $10                                        ; $70CE: $10
    ld c, e                                       ; $70CF: $4B
    db $10                                        ; $70D0: $10
    ld c, h                                       ; $70D1: $4C
    db $10                                        ; $70D2: $10
    ld c, l                                       ; $70D3: $4D
    xor d                                         ; $70D4: $AA
    db $10                                        ; $70D5: $10
    ld c, [hl]                                    ; $70D6: $4E
    db $10                                        ; $70D7: $10
    ld c, a                                       ; $70D8: $4F
    ldh a, [c]                                    ; $70D9: $F2
    ld d, b                                       ; $70DA: $50
    db $10                                        ; $70DB: $10
    ld d, h                                       ; $70DC: $54
    xor d                                         ; $70DD: $AA
    db $10                                        ; $70DE: $10
    ld d, l                                       ; $70DF: $55
    db $10                                        ; $70E0: $10
    ld d, [hl]                                    ; $70E1: $56
    db $10                                        ; $70E2: $10
    ld d, a                                       ; $70E3: $57
    db $10                                        ; $70E4: $10
    ld e, b                                       ; $70E5: $58
    or l                                          ; $70E6: $B5
    db $10                                        ; $70E7: $10
    ld e, c                                       ; $70E8: $59
    ldh a, [c]                                    ; $70E9: $F2
    ld de, $5611                                  ; $70EA: $11 $11 $56
    ld e, d                                       ; $70ED: $5A
    db $10                                        ; $70EE: $10
    ld d, l                                       ; $70EF: $55
    ld e, e                                       ; $70F0: $5B
    db $10                                        ; $70F1: $10
    ld e, h                                       ; $70F2: $5C
    db $10                                        ; $70F3: $10
    ld e, l                                       ; $70F4: $5D
    db $10                                        ; $70F5: $10
    ld e, [hl]                                    ; $70F6: $5E
    db $10                                        ; $70F7: $10
    ld d, l                                       ; $70F8: $55
    ld e, a                                       ; $70F9: $5F
    ldh a, [c]                                    ; $70FA: $F2
    ld [de], a                                    ; $70FB: $12
    db $10                                        ; $70FC: $10
    ld h, h                                       ; $70FD: $64
    db $10                                        ; $70FE: $10
    ld h, l                                       ; $70FF: $65
    db $10                                        ; $7100: $10
    ld d, l                                       ; $7101: $55
    ld h, [hl]                                    ; $7102: $66
    db $10                                        ; $7103: $10
    ld h, a                                       ; $7104: $67
    db $10                                        ; $7105: $10
    ld l, b                                       ; $7106: $68
    db $10                                        ; $7107: $10
    ld l, c                                       ; $7108: $69
    jp nc, Jump_000_11AA                          ; $7109: $D2 $AA $11

    inc de                                        ; $710C: $13
    ld d, [hl]                                    ; $710D: $56
    ld l, d                                       ; $710E: $6A
    db $10                                        ; $710F: $10

jr_031_7110:
    ld l, e                                       ; $7110: $6B
    db $10                                        ; $7111: $10
    ld l, h                                       ; $7112: $6C
    xor d                                         ; $7113: $AA
    db $10                                        ; $7114: $10
    ld l, l                                       ; $7115: $6D
    db $10                                        ; $7116: $10
    ld l, [hl]                                    ; $7117: $6E
    db $10                                        ; $7118: $10
    ld l, a                                       ; $7119: $6F
    ldh a, [c]                                    ; $711A: $F2
    ld [hl], h                                    ; $711B: $74
    xor [hl]                                      ; $711C: $AE
    db $10                                        ; $711D: $10
    ld d, c                                       ; $711E: $51
    ld [hl-], a                                   ; $711F: $32
    ld de, $5F32                                  ; $7120: $11 $32 $5F
    ld e, c                                       ; $7123: $59
    ld b, e                                       ; $7124: $43
    xor e                                         ; $7125: $AB
    ld d, h                                       ; $7126: $54
    ld d, d                                       ; $7127: $52
    ld d, h                                       ; $7128: $54
    jr nz, jr_031_715D                            ; $7129: $20 $32

    ld de, $5B94                                  ; $712B: $11 $94 $5B
    ld d, a                                       ; $712E: $57
    ld [hl+], a                                   ; $712F: $22
    ld d, h                                       ; $7130: $54
    ld d, e                                       ; $7131: $53
    ld [hl-], a                                   ; $7132: $32
    db $10                                        ; $7133: $10
    rra                                           ; $7134: $1F
    rra                                           ; $7135: $1F
    rra                                           ; $7136: $1F
    rst RST_38                                    ; $7137: $FF
    rra                                           ; $7138: $1F
    rra                                           ; $7139: $1F
    rra                                           ; $713A: $1F
    rra                                           ; $713B: $1F
    rra                                           ; $713C: $1F
    rra                                           ; $713D: $1F
    rra                                           ; $713E: $1F
    rra                                           ; $713F: $1F
    cp $1F                                        ; $7140: $FE $1F
    rra                                           ; $7142: $1F
    rra                                           ; $7143: $1F
    rra                                           ; $7144: $1F
    rra                                           ; $7145: $1F
    rra                                           ; $7146: $1F
    dec d                                         ; $7147: $15
    ld sp, $5700                                  ; $7148: $31 $00 $57
    nop                                           ; $714B: $00
    nop                                           ; $714C: $00
    ld a, h                                       ; $714D: $7C
    nop                                           ; $714E: $00
    ld h, [hl]                                    ; $714F: $66
    ld [bc], a                                    ; $7150: $02
    ld d, a                                       ; $7151: $57
    pop af                                        ; $7152: $F1
    xor d                                         ; $7153: $AA
    rrca                                          ; $7154: $0F
    ld de, $7D00                                  ; $7155: $11 $00 $7D
    nop                                           ; $7158: $00
    stop                                          ; $7159: $10 $00
    ld a, $AE                                     ; $715B: $3E $AE

jr_031_715D:
    nop                                           ; $715D: $00
    ld d, c                                       ; $715E: $51
    ld [bc], a                                    ; $715F: $02
    ld [hl], $00                                  ; $7160: $36 $00
    pop af                                        ; $7162: $F1
    rrca                                          ; $7163: $0F
    jr nz, jr_031_7110                            ; $7164: $20 $AA

    nop                                           ; $7166: $00
    ld l, [hl]                                    ; $7167: $6E
    nop                                           ; $7168: $00
    ld sp, $6102                                  ; $7169: $31 $02 $61
    ld [bc], a                                    ; $716C: $02
    ld [hl+], a                                   ; $716D: $22
    ld [$F100], a                                 ; $716E: $EA $00 $F1
    rrca                                          ; $7171: $0F
    ld b, d                                       ; $7172: $42
    ld b, $22                                     ; $7173: $06 $22
    nop                                           ; $7175: $00
    inc b                                         ; $7176: $04
    cp d                                          ; $7177: $BA
    nop                                           ; $7178: $00
    jr jr_031_717B                                ; $7179: $18 $00

jr_031_717B:
    pop af                                        ; $717B: $F1
    rrca                                          ; $717C: $0F
    inc sp                                        ; $717D: $33
    nop                                           ; $717E: $00
    ld c, d                                       ; $717F: $4A
    or a                                          ; $7180: $B7
    nop                                           ; $7181: $00
    ld b, d                                       ; $7182: $42
    nop                                           ; $7183: $00
    ld d, c                                       ; $7184: $51
    ld a, [bc]                                    ; $7185: $0A
    nop                                           ; $7186: $00
    ld [hl], c                                    ; $7187: $71
    ld d, c                                       ; $7188: $51
    push de                                       ; $7189: $D5
    pop af                                        ; $718A: $F1
    rrca                                          ; $718B: $0F
    ret nc                                        ; $718C: $D0

    nop                                           ; $718D: $00
    db $10                                        ; $718E: $10
    ld [bc], a                                    ; $718F: $02
    sub b                                         ; $7190: $90
    nop                                           ; $7191: $00
    cp d                                          ; $7192: $BA
    ld d, e                                       ; $7193: $53
    sbc $00                                       ; $7194: $DE $00
    pop af                                        ; $7196: $F1
    rrca                                          ; $7197: $0F
    di                                            ; $7198: $F3
    nop                                           ; $7199: $00
    add h                                         ; $719A: $84
    cp [hl]                                       ; $719B: $BE
    ld [bc], a                                    ; $719C: $02
    db $E4                                        ; $719D: $E4
    nop                                           ; $719E: $00
    ld d, e                                       ; $719F: $53
    or c                                          ; $71A0: $B1

jr_031_71A1:
    pop af                                        ; $71A1: $F1
    rrca                                          ; $71A2: $0F
    cp [hl]                                       ; $71A3: $BE
    xor [hl]                                      ; $71A4: $AE
    nop                                           ; $71A5: $00
    ld [$8808], sp                                ; $71A6: $08 $08 $88
    nop                                           ; $71A9: $00
    pop af                                        ; $71AA: $F1
    rrca                                          ; $71AB: $0F
    ld b, b                                       ; $71AC: $40
    xor d                                         ; $71AD: $AA
    nop                                           ; $71AE: $00
    ld b, d                                       ; $71AF: $42
    nop                                           ; $71B0: $00
    ld b, c                                       ; $71B1: $41
    inc b                                         ; $71B2: $04
    ld d, c                                       ; $71B3: $51
    nop                                           ; $71B4: $00
    jr nz, jr_031_71A1                            ; $71B5: $20 $EA

    nop                                           ; $71B7: $00
    pop af                                        ; $71B8: $F1
    rrca                                          ; $71B9: $0F
    db $10                                        ; $71BA: $10
    inc b                                         ; $71BB: $04
    jr c, jr_031_71BE                             ; $71BC: $38 $00

jr_031_71BE:
    inc h                                         ; $71BE: $24
    xor [hl]                                      ; $71BF: $AE
    nop                                           ; $71C0: $00
    ld b, h                                       ; $71C1: $44
    nop                                           ; $71C2: $00
    ld b, e                                       ; $71C3: $43
    nop                                           ; $71C4: $00
    pop af                                        ; $71C5: $F1
    rrca                                          ; $71C6: $0F
    ld [$00AA], sp                                ; $71C7: $08 $AA $00
    ld a, a                                       ; $71CA: $7F
    nop                                           ; $71CB: $00
    ld [bc], a                                    ; $71CC: $02
    nop                                           ; $71CD: $00
    ccf                                           ; $71CE: $3F
    nop                                           ; $71CF: $00
    ld b, b                                       ; $71D0: $40
    ld a, [$5102]                                 ; $71D1: $FA $02 $51
    pop af                                        ; $71D4: $F1
    rrca                                          ; $71D5: $0F
    ld bc, $007E                                  ; $71D6: $01 $7E $00
    ld bc, $04AE                                  ; $71D9: $01 $AE $04
    ld [bc], a                                    ; $71DC: $02
    nop                                           ; $71DD: $00
    inc e                                         ; $71DE: $1C
    nop                                           ; $71DF: $00
    di                                            ; $71E0: $F3
    dec c                                         ; $71E1: $0D
    ld [$00AB], sp                                ; $71E2: $08 $AB $00
    jr jr_031_71E7                                ; $71E5: $18 $00

jr_031_71E7:
    ccf                                           ; $71E7: $3F
    nop                                           ; $71E8: $00
    ld a, a                                       ; $71E9: $7F
    nop                                           ; $71EA: $00
    ld sp, $71F5                                  ; $71EB: $31 $F5 $71
    or c                                          ; $71EE: $B1
    pop af                                        ; $71EF: $F1
    rrca                                          ; $71F0: $0F
    ld [$0C00], sp                                ; $71F1: $08 $00 $0C
    nop                                           ; $71F4: $00
    ld e, a                                       ; $71F5: $5F
    ld a, [hl]                                    ; $71F6: $7E
    nop                                           ; $71F7: $00
    ld a, a                                       ; $71F8: $7F
    nop                                           ; $71F9: $00
    ld sp, $B171                                  ; $71FA: $31 $71 $B1
    pop af                                        ; $71FD: $F1
    or l                                          ; $71FE: $B5
    rrca                                          ; $71FF: $0F
    inc a                                         ; $7200: $3C
    nop                                           ; $7201: $00
    ld sp, $007C                                  ; $7202: $31 $7C $00
    ld [$5700], sp                                ; $7205: $08 $00 $57
    inc e                                         ; $7208: $1C
    nop                                           ; $7209: $00
    inc h                                         ; $720A: $24
    nop                                           ; $720B: $00
    ld b, e                                       ; $720C: $43
    nop                                           ; $720D: $00
    or c                                          ; $720E: $B1
    rrca                                          ; $720F: $0F
    ld d, l                                       ; $7210: $55
    inc e                                         ; $7211: $1C
    nop                                           ; $7212: $00
    ld b, d                                       ; $7213: $42
    nop                                           ; $7214: $00
    ld b, b                                       ; $7215: $40
    nop                                           ; $7216: $00
    ld a, [hl]                                    ; $7217: $7E
    nop                                           ; $7218: $00
    ld d, a                                       ; $7219: $57
    ld b, c                                       ; $721A: $41
    nop                                           ; $721B: $00
    ld bc, $3E00                                  ; $721C: $01 $00 $3E
    nop                                           ; $721F: $00
    pop af                                        ; $7220: $F1
    rrca                                          ; $7221: $0F
    ld e, d                                       ; $7222: $5A
    ld h, l                                       ; $7223: $65
    nop                                           ; $7224: $00
    stop                                          ; $7225: $10 $00
    ld d, c                                       ; $7227: $51
    jr nc, jr_031_722A                            ; $7228: $30 $00

jr_031_722A:
    adc d                                         ; $722A: $8A
    cp d                                          ; $722B: $BA
    ld [bc], a                                    ; $722C: $02
    or d                                          ; $722D: $B2
    nop                                           ; $722E: $00
    sub c                                         ; $722F: $91
    rrca                                          ; $7230: $0F
    jr jr_031_7233                                ; $7231: $18 $00

jr_031_7233:
    inc h                                         ; $7233: $24
    xor a                                         ; $7234: $AF
    nop                                           ; $7235: $00
    ld h, [hl]                                    ; $7236: $66
    ld [bc], a                                    ; $7237: $02
    ld a, [hl]                                    ; $7238: $7E
    nop                                           ; $7239: $00
    ld d, e                                       ; $723A: $53
    pop af                                        ; $723B: $F1
    rrca                                          ; $723C: $0F
    ld d, l                                       ; $723D: $55
    dec d                                         ; $723E: $15
    nop                                           ; $723F: $00
    ld hl, sp+$00                                 ; $7240: $F8 $00
    stop                                          ; $7242: $10 $00
    ld a, [hl]                                    ; $7244: $7E
    nop                                           ; $7245: $00
    ld d, a                                       ; $7246: $57
    ld [$8000], sp                                ; $7247: $08 $00 $80
    nop                                           ; $724A: $00
    ld a, h                                       ; $724B: $7C
    nop                                           ; $724C: $00
    pop af                                        ; $724D: $F1
    rrca                                          ; $724E: $0F
    xor d                                         ; $724F: $AA
    ld bc, $0010                                  ; $7250: $01 $10 $00
    jr z, jr_031_7255                             ; $7253: $28 $00

jr_031_7255:
    ld b, h                                       ; $7255: $44
    nop                                           ; $7256: $00
    ld [bc], a                                    ; $7257: $02
    cp d                                          ; $7258: $BA
    nop                                           ; $7259: $00
    ld bc, $F500                                  ; $725A: $01 $00 $F5
    rrca                                          ; $725D: $0F
    ld [$3E02], sp                                ; $725E: $08 $02 $3E
    push af                                       ; $7261: $F5
    nop                                           ; $7262: $00
    ld d, e                                       ; $7263: $53
    push af                                       ; $7264: $F5
    dec c                                         ; $7265: $0D
    inc c                                         ; $7266: $0C
    nop                                           ; $7267: $00
    ld [de], a                                    ; $7268: $12
    nop                                           ; $7269: $00
    ld l, a                                       ; $726A: $6F
    stop                                          ; $726B: $10 $00
    ld d, c                                       ; $726D: $51
    ld [bc], a                                    ; $726E: $02
    nop                                           ; $726F: $00
    ld [hl], c                                    ; $7270: $71
    ld d, c                                       ; $7271: $51
    pop af                                        ; $7272: $F1
    xor e                                         ; $7273: $AB
    rrca                                          ; $7274: $0F
    ld sp, hl                                     ; $7275: $F9
    nop                                           ; $7276: $00
    ld [hl+], a                                   ; $7277: $22
    inc b                                         ; $7278: $04
    inc hl                                        ; $7279: $23
    nop                                           ; $727A: $00
    ld d, e                                       ; $727B: $53
    push de                                       ; $727C: $D5
    pop af                                        ; $727D: $F1
    rrca                                          ; $727E: $0F
    sbc h                                         ; $727F: $9C
    nop                                           ; $7280: $00
    ld d, d                                       ; $7281: $52
    inc b                                         ; $7282: $04
    call c, $EB00                                 ; $7283: $DC $00 $EB
    ld d, e                                       ; $7286: $53
    pop af                                        ; $7287: $F1
    rrca                                          ; $7288: $0F
    ld hl, sp+$00                                 ; $7289: $F8 $00
    jr nz, jr_031_7297                            ; $728B: $20 $0A

    pop af                                        ; $728D: $F1
    xor e                                         ; $728E: $AB
    rrca                                          ; $728F: $0F
    inc e                                         ; $7290: $1C
    inc b                                         ; $7291: $04
    ld a, a                                       ; $7292: $7F
    nop                                           ; $7293: $00
    ld a, $00                                     ; $7294: $3E $00
    ld d, c                                       ; $7296: $51

jr_031_7297:
    ld [hl], l                                    ; $7297: $75
    ld [$F100], sp                                ; $7298: $08 $00 $F1
    rrca                                          ; $729B: $0F
    ld [hl], d                                    ; $729C: $72
    nop                                           ; $729D: $00
    ld [de], a                                    ; $729E: $12
    nop                                           ; $729F: $00
    ld d, l                                       ; $72A0: $55
    ld a, $00                                     ; $72A1: $3E $00
    ld d, e                                       ; $72A3: $53
    nop                                           ; $72A4: $00
    ld d, d                                       ; $72A5: $52
    ld [bc], a                                    ; $72A6: $02
    inc h                                         ; $72A7: $24
    nop                                           ; $72A8: $00
    push de                                       ; $72A9: $D5
    pop af                                        ; $72AA: $F1
    rrca                                          ; $72AB: $0F
    ccf                                           ; $72AC: $3F
    nop                                           ; $72AD: $00
    ld [bc], a                                    ; $72AE: $02
    nop                                           ; $72AF: $00
    inc b                                         ; $72B0: $04
    nop                                           ; $72B1: $00
    ld d, l                                       ; $72B2: $55
    ld c, $00                                     ; $72B3: $0E $00
    ld hl, $5100                                  ; $72B5: $21 $00 $51
    nop                                           ; $72B8: $00
    ld a, $00                                     ; $72B9: $3E $00
    rst RST_38                                    ; $72BB: $FF
    pop af                                        ; $72BC: $F1
    rrca                                          ; $72BD: $0F
    rrca                                          ; $72BE: $0F
    rrca                                          ; $72BF: $0F
    rrca                                          ; $72C0: $0F
    rrca                                          ; $72C1: $0F
    rrca                                          ; $72C2: $0F
    rrca                                          ; $72C3: $0F
    rst RST_18                                    ; $72C4: $DF
    rrca                                          ; $72C5: $0F
    dec c                                         ; $72C6: $0D
    rst RST_38                                    ; $72C7: $FF
    rra                                           ; $72C8: $1F
    rra                                           ; $72C9: $1F
    rra                                           ; $72CA: $1F
    rra                                           ; $72CB: $1F
    rra                                           ; $72CC: $1F
    rst RST_38                                    ; $72CD: $FF
    rra                                           ; $72CE: $1F
    rra                                           ; $72CF: $1F
    rra                                           ; $72D0: $1F
    rra                                           ; $72D1: $1F
    rra                                           ; $72D2: $1F
    rra                                           ; $72D3: $1F
    rra                                           ; $72D4: $1F
    rra                                           ; $72D5: $1F
    rst RST_38                                    ; $72D6: $FF
    rra                                           ; $72D7: $1F
    rra                                           ; $72D8: $1F
    rra                                           ; $72D9: $1F
    rra                                           ; $72DA: $1F
    rra                                           ; $72DB: $1F
    rra                                           ; $72DC: $1F
    rra                                           ; $72DD: $1F
    rra                                           ; $72DE: $1F
    rst RST_38                                    ; $72DF: $FF
    rra                                           ; $72E0: $1F
    rra                                           ; $72E1: $1F
    rra                                           ; $72E2: $1F
    rra                                           ; $72E3: $1F
    rra                                           ; $72E4: $1F
    rra                                           ; $72E5: $1F
    rra                                           ; $72E6: $1F
    rra                                           ; $72E7: $1F
    rst RST_38                                    ; $72E8: $FF
    rra                                           ; $72E9: $1F
    rra                                           ; $72EA: $1F
    rra                                           ; $72EB: $1F
    rra                                           ; $72EC: $1F
    rra                                           ; $72ED: $1F
    rra                                           ; $72EE: $1F
    rra                                           ; $72EF: $1F
    rra                                           ; $72F0: $1F
    rst RST_38                                    ; $72F1: $FF
    rra                                           ; $72F2: $1F
    rra                                           ; $72F3: $1F
    rra                                           ; $72F4: $1F
    rra                                           ; $72F5: $1F

jr_031_72F6:
    rra                                           ; $72F6: $1F
    rra                                           ; $72F7: $1F
    rra                                           ; $72F8: $1F
    rra                                           ; $72F9: $1F
    rst RST_38                                    ; $72FA: $FF
    rra                                           ; $72FB: $1F
    rra                                           ; $72FC: $1F
    rra                                           ; $72FD: $1F
    rra                                           ; $72FE: $1F
    rra                                           ; $72FF: $1F
    rra                                           ; $7300: $1F
    rra                                           ; $7301: $1F
    rra                                           ; $7302: $1F
    ldh [$FF1F], a                                ; $7303: $E0 $1F
    rra                                           ; $7305: $1F
    ld e, $2C                                     ; $7306: $1E $2C
    ld b, b                                       ; $7308: $40
    ld a, $FF                                     ; $7309: $3E $FF
    nop                                           ; $730B: $00
    rrca                                          ; $730C: $0F
    rrca                                          ; $730D: $0F
    rrca                                          ; $730E: $0F
    rrca                                          ; $730F: $0F
    ld c, $40                                     ; $7310: $0E $40
    xor d                                         ; $7312: $AA
    ld [$0842], sp                                ; $7313: $08 $42 $08
    ld b, c                                       ; $7316: $41
    ld c, $51                                     ; $7317: $0E $51
    ld a, [bc]                                    ; $7319: $0A
    jr nz, jr_031_72F6                            ; $731A: $20 $DA

    rst RST_08                                    ; $731C: $CF
    ld c, $10                                     ; $731D: $0E $10
    inc c                                         ; $731F: $0C
    xor c                                         ; $7320: $A9
    jr c, @+$0A                                   ; $7321: $38 $08

    inc h                                         ; $7323: $24
    xor l                                         ; $7324: $AD
    ld [$0A44], sp                                ; $7325: $08 $44 $0A
    ld b, e                                       ; $7328: $43
    rst RST_08                                    ; $7329: $CF
    ld c, $08                                     ; $732A: $0E $08
    ld [$7F55], sp                                ; $732C: $08 $55 $7F
    ld [$0804], sp                                ; $732F: $08 $04 $08
    ld [bc], a                                    ; $7332: $02
    ld [$083F], sp                                ; $7333: $08 $3F $08
    ld a, d                                       ; $7336: $7A
    ld b, b                                       ; $7337: $40
    inc c                                         ; $7338: $0C
    add hl, sp                                    ; $7339: $39
    rst RST_08                                    ; $733A: $CF
    rrca                                          ; $733B: $0F
    ld a, h                                       ; $733C: $7C
    ld [$DD01], a                                 ; $733D: $EA $01 $DD
    ld c, $49                                     ; $7340: $0E $49
    inc e                                         ; $7342: $1C
    cp a                                          ; $7343: $BF
    rrca                                          ; $7344: $0F
    ld c, $7C                                     ; $7345: $0E $7C
    jp c, $09AE                                   ; $7347: $DA $AE $09

    inc b                                         ; $734A: $04
    ld [$8F18], sp                                ; $734B: $08 $18 $8F
    rrca                                          ; $734E: $0F
    ld [$AD7F], sp                                ; $734F: $08 $7F $AD
    xor d                                         ; $7352: $AA
    ld [$1008], sp                                ; $7353: $08 $08 $10
    inc c                                         ; $7356: $0C
    add hl, sp                                    ; $7357: $39
    rlca                                          ; $7358: $07
    cp a                                          ; $7359: $BF
    xor d                                         ; $735A: $AA
    ld c, $3C                                     ; $735B: $0E $3C
    ld a, [de]                                    ; $735D: $1A
    ld a, [hl]                                    ; $735E: $7E
    ld [$0E01], sp                                ; $735F: $08 $01 $0E
    ld [bc], a                                    ; $7362: $02
    jp c, Jump_000_0D7C                           ; $7363: $DA $7C $0D

    dec b                                         ; $7366: $05
    ld a, [bc]                                    ; $7367: $0A
    add hl, hl                                    ; $7368: $29
    ld a, $5C                                     ; $7369: $3E $5C
    ld a, a                                       ; $736B: $7F
    xor e                                         ; $736C: $AB
    ld [$0C04], sp                                ; $736D: $08 $04 $0C
    ld [$3008], sp                                ; $7370: $08 $08 $30
    rst RST_38                                    ; $7373: $FF
    rrca                                          ; $7374: $0F
    cp d                                          ; $7375: $BA
    ld c, $7E                                     ; $7376: $0E $7E
    ld c, a                                       ; $7378: $4F
    rrca                                          ; $7379: $0F
    ld c, $3F                                     ; $737A: $0E $3F
    ld [$AA21], sp                                ; $737C: $08 $21 $AA
    ld a, [bc]                                    ; $737F: $0A
    ld sp, $4908                                  ; $7380: $31 $08 $49
    ld [$0805], sp                                ; $7383: $08 $05 $08
    ld [bc], a                                    ; $7386: $02
    xor [hl]                                      ; $7387: $AE
    ld [$0804], sp                                ; $7388: $08 $04 $08
    jr c, @-$2F                                   ; $738B: $38 $CF

    rst RST_38                                    ; $738D: $FF
    ld [$AA06], sp                                ; $738E: $08 $06 $AA
    ld [$0818], sp                                ; $7391: $08 $18 $08
    ld a, a                                       ; $7394: $7F
    ld [$0808], sp                                ; $7395: $08 $08 $08
    db $10                                        ; $7398: $10
    db $DB                                        ; $7399: $DB
    ld a, [bc]                                    ; $739A: $0A
    add hl, hl                                    ; $739B: $29
    rlca                                          ; $739C: $07
    rst RST_08                                    ; $739D: $CF
    ld c, $20                                     ; $739E: $0E $20
    rrca                                          ; $73A0: $0F
    ld [$2156], sp                                ; $73A1: $08 $56 $21
    ld a, [bc]                                    ; $73A4: $0A
    ld [hl+], a                                   ; $73A5: $22
    ld [$CF1C], sp                                ; $73A6: $08 $1C $CF
    ld c, $10                                     ; $73A9: $0E $10
    xor d                                         ; $73AB: $AA
    ld [$087D], sp                                ; $73AC: $08 $7D $08
    ld de, $3E2A                                  ; $73AF: $11 $2A $3E
    ld [$B551], sp                                ; $73B2: $08 $51 $B5
    inc c                                         ; $73B5: $0C
    ld [hl], $CF                                  ; $73B6: $36 $CF
    ld c, $20                                     ; $73B8: $0E $20
    ld [$0876], sp                                ; $73BA: $08 $76 $08
    ld d, l                                       ; $73BD: $55

jr_031_73BE:
    add hl, hl                                    ; $73BE: $29
    ld [$0A31], sp                                ; $73BF: $08 $31 $0A
    ld h, c                                       ; $73C2: $61
    ld a, [bc]                                    ; $73C3: $0A
    ld hl, $6D08                                  ; $73C4: $21 $08 $6D
    ld [hl+], a                                   ; $73C7: $22
    rst RST_08                                    ; $73C8: $CF
    ld c, $42                                     ; $73C9: $0E $42
    rrca                                          ; $73CB: $0F
    jp z, Jump_000_0802                           ; $73CC: $CA $02 $08

    ld e, l                                       ; $73CF: $5D
    inc b                                         ; $73D0: $04
    ld [$CF18], sp                                ; $73D1: $08 $18 $CF
    ld c, $89                                     ; $73D4: $0E $89
    ld a, a                                       ; $73D6: $7F
    ld e, $AB                                     ; $73D7: $1E $AB
    add hl, bc                                    ; $73D9: $09
    ld a, $08                                     ; $73DA: $3E $08
    ld b, l                                       ; $73DC: $45
    ld [$CF39], sp                                ; $73DD: $08 $39 $CF
    ld c, $6D                                     ; $73E0: $0E $6D
    jr nz, jr_031_73BE                            ; $73E2: $20 $DA

    add hl, de                                    ; $73E4: $19
    cpl                                           ; $73E5: $2F
    ld a, [de]                                    ; $73E6: $1A
    add hl, bc                                    ; $73E7: $09
    ld c, b                                       ; $73E8: $48
    ld a, [bc]                                    ; $73E9: $0A
    ld [hl], l                                    ; $73EA: $75
    ld b, a                                       ; $73EB: $47
    rst RST_08                                    ; $73EC: $CF
    rrca                                          ; $73ED: $0F
    ld [$083E], sp                                ; $73EE: $08 $3E $08
    ld [$B50F], sp                                ; $73F1: $08 $0F $B5
    ld a, [bc]                                    ; $73F4: $0A
    ld a, a                                       ; $73F5: $7F
    cp a                                          ; $73F6: $BF
    ld c, $3C                                     ; $73F7: $0E $3C
    ld a, [de]                                    ; $73F9: $1A
    ld a, [hl]                                    ; $73FA: $7E
    ld [$0257], sp                                ; $73FB: $08 $57 $02
    inc c                                         ; $73FE: $0C
    inc b                                         ; $73FF: $04
    ld a, [$CF30]                                 ; $7400: $FA $30 $CF
    rst RST_38                                    ; $7403: $FF
    ld [$667D], sp                                ; $7404: $08 $7D $66
    rrca                                          ; $7407: $0F
    inc c                                         ; $7408: $0C
    ld a, c                                       ; $7409: $79
    rst RST_08                                    ; $740A: $CF
    dec c                                         ; $740B: $0D
    jr @+$0A                                      ; $740C: $18 $08

    halt                                          ; $740E: $76
    jr c, jr_031_742B                             ; $740F: $38 $1A

    rrca                                          ; $7411: $0F
    add hl, bc                                    ; $7412: $09
    ld a, [hl]                                    ; $7413: $7E
    rst RST_08                                    ; $7414: $CF
    ld c, $3C                                     ; $7415: $0E $3C
    xor d                                         ; $7417: $AA
    ld [$0A66], sp                                ; $7418: $08 $66 $0A
    ld b, $08                                     ; $741B: $06 $08
    inc c                                         ; $741D: $0C
    jp c, $BD30                                   ; $741E: $DA $30 $BD

    ld [$FF60], sp                                ; $7421: $08 $60 $FF
    rrca                                          ; $7424: $0F
    rst RST_38                                    ; $7425: $FF
    ld [$1A1C], sp                                ; $7426: $08 $1C $1A
    or $4B                                        ; $7429: $F6 $4B

jr_031_742B:
    ld a, c                                       ; $742B: $79
    rst RST_08                                    ; $742C: $CF
    dec c                                         ; $742D: $0D
    inc c                                         ; $742E: $0C
    jp z, $6C99                                   ; $742F: $CA $99 $6C

    cp d                                          ; $7432: $BA
    inc c                                         ; $7433: $0C
    ld a, [hl]                                    ; $7434: $7E
    ld l, d                                       ; $7435: $6A
    add hl, bc                                    ; $7436: $09
    rst RST_08                                    ; $7437: $CF
    ld [bc], a                                    ; $7438: $02
    ld [$D605], sp                                ; $7439: $08 $05 $D6
    ld a, [de]                                    ; $743C: $1A
    add hl, sp                                    ; $743D: $39
    ld a, a                                       ; $743E: $7F
    ld [$0E01], sp                                ; $743F: $08 $01 $0E
    ld l, c                                       ; $7442: $69
    inc b                                         ; $7443: $04
    or a                                          ; $7444: $B7
    ld [$FF38], sp                                ; $7445: $08 $38 $FF
    ld c, $22                                     ; $7448: $0E $22
    ld c, $D9                                     ; $744A: $0E $D9
    dec bc                                        ; $744C: $0B
    cp d                                          ; $744D: $BA
    ld sp, hl                                     ; $744E: $F9
    jr @-$2F                                      ; $744F: $18 $CF

    rrca                                          ; $7451: $0F
    ld [$0871], sp                                ; $7452: $08 $71 $08
    add hl, bc                                    ; $7455: $09
    or [hl]                                       ; $7456: $B6
    ld [$0C01], sp                                ; $7457: $08 $01 $0C
    ei                                            ; $745A: $FB
    jr c, @-$3F                                   ; $745B: $38 $BF

    ld c, $10                                     ; $745D: $0E $10
    xor d                                         ; $745F: $AA
    ld [$1A7E], sp                                ; $7460: $08 $7E $1A
    inc d                                         ; $7463: $14
    ld [$083E], sp                                ; $7464: $08 $3E $08
    ld d, l                                       ; $7467: $55
    xor e                                         ; $7468: $AB
    ld [$0859], sp                                ; $7469: $08 $59 $08
    ld c, c                                       ; $746C: $49
    ld [$CF32], sp                                ; $746D: $08 $32 $CF
    ld c, $5A                                     ; $7470: $0E $5A
    ld [hl+], a                                   ; $7472: $22
    ld a, [bc]                                    ; $7473: $0A
    ld a, a                                       ; $7474: $7F
    inc l                                         ; $7475: $2C
    add hl, bc                                    ; $7476: $09
    jr nz, @+$0C                                  ; $7477: $20 $0A

    rra                                           ; $7479: $1F
    push de                                       ; $747A: $D5
    rst RST_08                                    ; $747B: $CF
    ld a, [bc]                                    ; $747C: $0A
    dec b                                         ; $747D: $05
    ld a, [de]                                    ; $747E: $1A
    inc h                                         ; $747F: $24
    cp d                                          ; $7480: $BA
    ld a, c                                       ; $7481: $79
    ld [$2575], sp                                ; $7482: $08 $75 $25
    ld a, [bc]                                    ; $7485: $0A
    ld c, c                                       ; $7486: $49
    add hl, bc                                    ; $7487: $09
    ld b, h                                       ; $7488: $44
    ld [$EF58], sp                                ; $7489: $08 $58 $EF
    xor e                                         ; $748C: $AB
    ld c, $20                                     ; $748D: $0E $20
    ld [$087A], sp                                ; $748F: $08 $7A $08
    ld hl, $C90A                                  ; $7492: $21 $0A $C9
    xor d                                         ; $7495: $AA
    add hl, bc                                    ; $7496: $09
    ld e, $08                                     ; $7497: $1E $08
    dec h                                         ; $7499: $25
    ld [$BD19], sp                                ; $749A: $08 $19 $BD
    ld c, e                                       ; $749D: $4B
    ld b, b                                       ; $749E: $40
    ld b, h                                       ; $749F: $44
    nop                                           ; $74A0: $00
    ld bc, $0807                                  ; $74A1: $01 $07 $08
    inc sp                                        ; $74A4: $33
    jr @+$3D                                      ; $74A5: $18 $3B

    inc b                                         ; $74A7: $04
    dec b                                         ; $74A8: $05
    add hl, de                                    ; $74A9: $19
    jr nz, @+$29                                  ; $74AA: $20 $27

    ld sp, $0836                                  ; $74AC: $31 $36 $08
    ld [hl-], a                                   ; $74AF: $32
    ld [hl], c                                    ; $74B0: $71
    nop                                           ; $74B1: $00
    ccf                                           ; $74B2: $3F
    cp a                                          ; $74B3: $BF
    rrca                                          ; $74B4: $0F
    adc a                                         ; $74B5: $8F
    rla                                           ; $74B6: $17
    add a                                         ; $74B7: $87
    ld hl, $AA81                                  ; $74B8: $21 $81 $AA
    ld a, b                                       ; $74BB: $78
    sbc [hl]                                      ; $74BC: $9E
    ld d, b                                       ; $74BD: $50
    rst RST_18                                    ; $74BE: $DF
    xor b                                         ; $74BF: $A8
    jp $FF79                                      ; $74C0: $C3 $79 $FF


    or [hl]                                       ; $74C3: $B6
    ld b, $7F                                     ; $74C4: $06 $7F
    nop                                           ; $74C6: $00
    ret                                           ; $74C7: $C9


    rra                                           ; $74C8: $1F
    adc b                                         ; $74C9: $88

jr_031_74CA:
    ld a, l                                       ; $74CA: $7D
    cp $A8                                        ; $74CB: $FE $A8
    nop                                           ; $74CD: $00
    ld sp, hl                                     ; $74CE: $F9
    nop                                           ; $74CF: $00
    rst RST_30                                    ; $74D0: $F7
    nop                                           ; $74D1: $00
    xor $EF                                       ; $74D2: $EE $EF
    call c, $7ED0                                 ; $74D4: $DC $D0 $7E
    add hl, hl                                    ; $74D7: $29
    ldh [rNR23], a                                ; $74D8: $E0 $18
    ld [bc], a                                    ; $74DA: $02
    pop bc                                        ; $74DB: $C1
    dec b                                         ; $74DC: $05
    cp b                                          ; $74DD: $B8
    ld l, b                                       ; $74DE: $68
    dec [hl]                                      ; $74DF: $35
    ld [$3F7D], sp                                ; $74E0: $08 $7D $3F
    nop                                           ; $74E3: $00
    ld c, a                                       ; $74E4: $4F
    adc a                                         ; $74E5: $8F
    daa                                           ; $74E6: $27
    dec b                                         ; $74E7: $05
    rst RST_00                                    ; $74E8: $C7
    inc de                                        ; $74E9: $13
    db $E3                                        ; $74EA: $E3
    ld de, $79E1                                  ; $74EB: $11 $E1 $79
    cp $07                                        ; $74EE: $FE $07
    add d                                         ; $74F0: $82
    inc b                                         ; $74F1: $04
    ld [hl-], a                                   ; $74F2: $32
    ld sp, $2120                                  ; $74F3: $31 $20 $21
    inc l                                         ; $74F6: $2C
    nop                                           ; $74F7: $00
    ld c, $AA                                     ; $74F8: $0E $AA
    ld [bc], a                                    ; $74FA: $02
    inc c                                         ; $74FB: $0C
    nop                                           ; $74FC: $00
    add hl, bc                                    ; $74FD: $09
    nop                                           ; $74FE: $00
    inc bc                                        ; $74FF: $03
    nop                                           ; $7500: $00
    ld [hl+], a                                   ; $7501: $22
    ld [$89C1], sp                                ; $7502: $08 $C1 $89
    ld h, h                                       ; $7505: $64
    sub d                                         ; $7506: $92
    ld [$F600], sp                                ; $7507: $08 $00 $F6
    ld [$F20C], sp                                ; $750A: $08 $0C $F2
    ld [bc], a                                    ; $750D: $02

jr_031_750E:
    ld a, b                                       ; $750E: $78
    inc b                                         ; $750F: $04
    ld [$7C38], sp                                ; $7510: $08 $38 $7C
    rra                                           ; $7513: $1F
    nop                                           ; $7514: $00
    rst RST_18                                    ; $7515: $DF
    ld l, $CE                                     ; $7516: $2E $CE
    dec l                                         ; $7518: $2D
    call $8B6B                                    ; $7519: $CD $6B $8B
    db $EB                                        ; $751C: $EB
    nop                                           ; $751D: $00
    dec bc                                        ; $751E: $0B
    rst RST_20                                    ; $751F: $E7
    rlca                                          ; $7520: $07
    add $06                                       ; $7521: $C6 $06
    push bc                                       ; $7523: $C5

jr_031_7524:
    dec d                                         ; $7524: $15
    cp b                                          ; $7525: $B8
    ld h, l                                       ; $7526: $65
    cp a                                          ; $7527: $BF
    jr nc, jr_031_74CA                            ; $7528: $30 $A0

    ret nz                                        ; $752A: $C0

    ld hl, sp+$08                                 ; $752B: $F8 $08
    rst RST_38                                    ; $752D: $FF
    add hl, bc                                    ; $752E: $09
    and b                                         ; $752F: $A0
    jr nc, jr_031_7541                            ; $7530: $30 $0F

    jr jr_031_7524                                ; $7532: $18 $F0

    add b                                         ; $7534: $80
    adc a                                         ; $7535: $8F
    ld a, d                                       ; $7536: $7A

jr_031_7537:
    ld a, h                                       ; $7537: $7C
    adc e                                         ; $7538: $8B
    dec c                                         ; $7539: $0D
    inc [hl]                                      ; $753A: $34
    jr c, jr_031_7542                             ; $753B: $38 $05

    ret nc                                        ; $753D: $D0

    add hl, de                                    ; $753E: $19
    ld [hl], b                                    ; $753F: $70
    sbc b                                         ; $7540: $98

jr_031_7541:
    adc b                                         ; $7541: $88

jr_031_7542:
    nop                                           ; $7542: $00
    sbc b                                         ; $7543: $98
    ld h, b                                       ; $7544: $60
    ldh [rNR23], a                                ; $7545: $E0 $18
    inc bc                                        ; $7547: $03
    inc e                                         ; $7548: $1C
    add c                                         ; $7549: $81
    ld [hl], l                                    ; $754A: $75
    ld a, [hl]                                    ; $754B: $7E
    add hl, bc                                    ; $754C: $09
    jr nc, jr_031_7537                            ; $754D: $30 $E8

    rrca                                          ; $754F: $0F
    db $10                                        ; $7550: $10
    ld [hl], c                                    ; $7551: $71
    ld [$FE74], sp                                ; $7552: $08 $74 $FE
    nop                                           ; $7555: $00
    ld b, b                                       ; $7556: $40
    nop                                           ; $7557: $00
    ld a, $00                                     ; $7558: $3E $00
    sbc [hl]                                      ; $755A: $9E
    ld e, $45                                     ; $755B: $1E $45
    sbc $08                                       ; $755D: $DE $08
    adc $0E                                       ; $755F: $CE $0E
    ld c, [hl]                                    ; $7561: $4E
    ld [$088E], sp                                ; $7562: $08 $8E $08
    ld d, [hl]                                    ; $7565: $56
    ld h, e                                       ; $7566: $63
    ldh [$FF33], a                                ; $7567: $E0 $33
    ld [$0002], sp                                ; $7569: $08 $02 $00
    cp b                                          ; $756C: $B8
    ld bc, $01AB                                  ; $756D: $01 $AB $01
    add hl, sp                                    ; $7570: $39
    ld [$0861], sp                                ; $7571: $08 $61 $08
    ld c, b                                       ; $7574: $48
    ld hl, sp+$50                                 ; $7575: $F8 $50
    inc b                                         ; $7577: $04
    ld a, h                                       ; $7578: $7C
    ld hl, $205E                                  ; $7579: $21 $5E $20
    rra                                           ; $757C: $1F
    jr nc, jr_031_75BE                            ; $757D: $30 $3F

    add c                                         ; $757F: $81
    ld l, b                                       ; $7580: $68
    cp [hl]                                       ; $7581: $BE
    add hl, bc                                    ; $7582: $09
    ld e, b                                       ; $7583: $58
    dec a                                         ; $7584: $3D
    add hl, sp                                    ; $7585: $39
    jp Jump_031_4213                              ; $7586: $C3 $13 $42


    or d                                          ; $7589: $B2
    jr nc, jr_031_750E                            ; $758A: $30 $82

    ld a, [bc]                                    ; $758C: $0A
    jr c, jr_031_7592                             ; $758D: $38 $03

    pop bc                                        ; $758F: $C1
    add sp, -$65                                  ; $7590: $E8 $9B

jr_031_7592:
    inc e                                         ; $7592: $1C
    ld b, e                                       ; $7593: $43
    xor h                                         ; $7594: $AC
    ld b, b                                       ; $7595: $40
    adc b                                         ; $7596: $88
    rlca                                          ; $7597: $07
    ld bc, $0880                                  ; $7598: $01 $80 $08
    ld e, d                                       ; $759B: $5A

jr_031_759C:
    ld [hl], b                                    ; $759C: $70
    ld [$B8F0], sp                                ; $759D: $08 $F0 $B8
    jr nc, jr_031_75DE                            ; $75A0: $30 $3C

    ld d, d                                       ; $75A2: $52
    db $10                                        ; $75A3: $10
    ld a, h                                       ; $75A4: $7C
    jr jr_031_75B2                                ; $75A5: $18 $0B

    nop                                           ; $75A7: $00
    and e                                         ; $75A8: $A3
    rst RST_28                                    ; $75A9: $EF
    ld [bc], a                                    ; $75AA: $02
    add hl, bc                                    ; $75AB: $09
    ld b, $85                                     ; $75AC: $06 $85
    ld hl, sp+$07                                 ; $75AE: $F8 $07
    adc $0E                                       ; $75B0: $CE $0E

jr_031_75B2:
    ld l, [hl]                                    ; $75B2: $6E
    ld [$0A2E], sp                                ; $75B3: $08 $2E $0A
    rst RST_10                                    ; $75B6: $D7
    add hl, hl                                    ; $75B7: $29
    ld c, e                                       ; $75B8: $4B
    adc [hl]                                      ; $75B9: $8E
    ld [$DE10], sp                                ; $75BA: $08 $10 $DE
    ld b, b                                       ; $75BD: $40

jr_031_75BE:
    ld [$0308], sp                                ; $75BE: $08 $08 $03
    inc a                                         ; $75C1: $3C
    ld bc, $097E                                  ; $75C2: $01 $7E $09
    add c                                         ; $75C5: $81
    cp [hl]                                       ; $75C6: $BE
    add b                                         ; $75C7: $80
    ld de, $90BF                                  ; $75C8: $11 $BF $90
    xor a                                         ; $75CB: $AF
    xor b                                         ; $75CC: $A8
    cpl                                           ; $75CD: $2F
    jr nc, @+$11                                  ; $75CE: $30 $0F

    add b                                         ; $75D0: $80
    nop                                           ; $75D1: $00
    rra                                           ; $75D2: $1F
    ld a, [bc]                                    ; $75D3: $0A
    dec d                                         ; $75D4: $15
    ld [de], a                                    ; $75D5: $12
    dec c                                         ; $75D6: $0D
    ld [$02E4], sp                                ; $75D7: $08 $E4 $02
    ld c, d                                       ; $75DA: $4A
    db $EC                                        ; $75DB: $EC
    rrca                                          ; $75DC: $0F
    ld [hl+], a                                   ; $75DD: $22

jr_031_75DE:
    call z, $CEB8                                 ; $75DE: $CC $B8 $CE
    ld [$6220], sp                                ; $75E1: $08 $20 $62
    ret nz                                        ; $75E4: $C0

    ret nz                                        ; $75E5: $C0

    ld de, $8060                                  ; $75E6: $11 $60 $80
    ldh a, [$FF28]                                ; $75E9: $F0 $28
    jr nc, jr_031_759C                            ; $75EB: $30 $AF

    ld [$0040], sp                                ; $75ED: $08 $40 $00
    ld [hl], b                                    ; $75F0: $70
    nop                                           ; $75F1: $00
    jr nz, @+$09                                  ; $75F2: $20 $07

    ld b, $0F                                     ; $75F4: $06 $0F
    inc b                                         ; $75F6: $04
    inc bc                                        ; $75F7: $03
    ld [bc], a                                    ; $75F8: $02
    ld bc, $3100                                  ; $75F9: $01 $00 $31
    jr nz, jr_031_7608                            ; $75FC: $20 $0A

    sbc b                                         ; $75FE: $98
    nop                                           ; $75FF: $00
    ld b, $07                                     ; $7600: $06 $07
    ld l, b                                       ; $7602: $68
    ld [$CC2C], sp                                ; $7603: $08 $2C $CC
    jr z, jr_031_7648                             ; $7606: $28 $40

jr_031_7608:
    ret z                                         ; $7608: $C8

    ld d, b                                       ; $7609: $50
    ldh [c], a                                    ; $760A: $E2
    sub [hl]                                      ; $760B: $96
    ld h, [hl]                                    ; $760C: $66
    sub h                                         ; $760D: $94
    ld h, h                                       ; $760E: $64
    sub b                                         ; $760F: $90
    dec h                                         ; $7610: $25
    ld h, b                                       ; $7611: $60
    db $10                                        ; $7612: $10
    ld a, [bc]                                    ; $7613: $0A
    ld [$A876], sp                                ; $7614: $08 $76 $A8
    ld a, b                                       ; $7617: $78
    xor b                                         ; $7618: $A8
    or b                                          ; $7619: $B0
    ld c, $00                                     ; $761A: $0E $00
    ld [$7AC8], sp                                ; $761C: $08 $C8 $7A
    inc h                                         ; $761F: $24
    dec bc                                        ; $7620: $0B
    inc l                                         ; $7621: $2C
    ld e, c                                       ; $7622: $59
    ld b, e                                       ; $7623: $43
    sbc b                                         ; $7624: $98
    rst RST_20                                    ; $7625: $E7
    cp b                                          ; $7626: $B8
    ld [$E215], sp                                ; $7627: $08 $15 $E2
    cp b                                          ; $762A: $B8
    ld l, h                                       ; $762B: $6C
    ldh a, [$FF38]                                ; $762C: $F0 $38
    ld [$0809], sp                                ; $762E: $08 $09 $08
    ld c, b                                       ; $7631: $48
    adc $41                                       ; $7632: $CE $41
    ld [hl+], a                                   ; $7634: $22
    sbc [hl]                                      ; $7635: $9E
    ld hl, $A908                                  ; $7636: $21 $08 $A9
    ld d, $29                                     ; $7639: $16 $29
    ld [$48B1], sp                                ; $763B: $08 $B1 $48
    ld c, $09                                     ; $763E: $0E $09
    sub l                                         ; $7640: $95
    ld a, [bc]                                    ; $7641: $0A
    adc b                                         ; $7642: $88
    dec de                                        ; $7643: $1B
    inc b                                         ; $7644: $04
    ld l, l                                       ; $7645: $6D
    jr z, @+$14                                   ; $7646: $28 $12

jr_031_7648:
    halt                                          ; $7648: $76
    xor b                                         ; $7649: $A8
    ld [hl], b                                    ; $764A: $70
    ld [$1172], sp                                ; $764B: $08 $72 $11
    ld [hl], a                                    ; $764E: $77
    xor c                                         ; $764F: $A9
    dec bc                                        ; $7650: $0B
    add b                                         ; $7651: $80
    nop                                           ; $7652: $00
    ret nz                                        ; $7653: $C0

    nop                                           ; $7654: $00
    ld e, h                                       ; $7655: $5C
    call c, Call_031_40C0                         ; $7656: $DC $C0 $40
    ld e, $09                                     ; $7659: $1E $09
    ld b, $4E                                     ; $765B: $06 $4E
    ld [bc], a                                    ; $765D: $02
    ld b, [hl]                                    ; $765E: $46
    nop                                           ; $765F: $00
    ld h, d                                       ; $7660: $62
    dec h                                         ; $7661: $25
    dec bc                                        ; $7662: $0B
    inc c                                         ; $7663: $0C
    add hl, bc                                    ; $7664: $09
    rlca                                          ; $7665: $07
    ld [$0109], sp                                ; $7666: $08 $09 $01
    ld [$6054], sp                                ; $7669: $08 $54 $60
    nop                                           ; $766C: $00
    or $00                                        ; $766D: $F6 $00
    rst RST_30                                    ; $766F: $F7
    nop                                           ; $7670: $00
    sub b                                         ; $7671: $90
    jr nz, @-$54                                  ; $7672: $20 $AA

    add hl, bc                                    ; $7674: $09
    or b                                          ; $7675: $B0
    or b                                          ; $7676: $B0
    add b                                         ; $7677: $80
    ld a, [bc]                                    ; $7678: $0A
    ld b, b                                       ; $7679: $40
    nop                                           ; $767A: $00
    ld l, b                                       ; $767B: $68
    and h                                         ; $767C: $A4
    nop                                           ; $767D: $00
    ld l, h                                       ; $767E: $6C
    nop                                           ; $767F: $00
    ld a, [bc]                                    ; $7680: $0A
    ld [hl], d                                    ; $7681: $72
    ld b, b                                       ; $7682: $40
    ld [hl], b                                    ; $7683: $70
    inc b                                         ; $7684: $04
    ld [bc], a                                    ; $7685: $02
    ld [hl], h                                    ; $7686: $74
    ld b, $76                                     ; $7687: $06 $76
    ld [de], a                                    ; $7689: $12
    ld h, d                                       ; $768A: $62
    ld [bc], a                                    ; $768B: $02
    ld [$0028], sp                                ; $768C: $08 $28 $00
    ld c, b                                       ; $768F: $48
    ld c, h                                       ; $7690: $4C
    inc c                                         ; $7691: $0C
    add hl, hl                                    ; $7692: $29
    ret nc                                        ; $7693: $D0

jr_031_7694:
    dec de                                        ; $7694: $1B
    ldh [$FF2B], a                                ; $7695: $E0 $2B
    sub a                                         ; $7697: $97
    ld a, [de]                                    ; $7698: $1A
    add hl, bc                                    ; $7699: $09
    ldh a, [rOBP1]                                ; $769A: $F0 $49
    jr @+$2A                                      ; $769C: $18 $28

    ret c                                         ; $769E: $D8

    jr z, jr_031_76F6                             ; $769F: $28 $55

    reti                                          ; $76A1: $D9


    ret nc                                        ; $76A2: $D0

    rst RST_08                                    ; $76A3: $CF
    jr nz, jr_031_7694                            ; $76A4: $20 $EE

    ld [$0886], sp                                ; $76A6: $08 $86 $08
    xor c                                         ; $76A9: $A9
    ld d, c                                       ; $76AA: $51
    db $FC                                        ; $76AB: $FC
    ld a, [de]                                    ; $76AC: $1A
    db $10                                        ; $76AD: $10
    ld [$7711], sp                                ; $76AE: $08 $11 $77
    dec bc                                        ; $76B1: $0B
    ld [hl+], a                                   ; $76B2: $22
    ld hl, $09E7                                  ; $76B3: $21 $E7 $09
    ld d, c                                       ; $76B6: $51
    rst RST_00                                    ; $76B7: $C7
    ld [hl-], a                                   ; $76B8: $32
    ret c                                         ; $76B9: $D8

    ldh a, [c]                                    ; $76BA: $F2
    ret nz                                        ; $76BB: $C0

    ld [$7080], sp                                ; $76BC: $08 $80 $70
    ld [bc], a                                    ; $76BF: $02
    ld a, b                                       ; $76C0: $78
    ld bc, $601C                                  ; $76C1: $01 $1C $60
    xor e                                         ; $76C4: $AB
    jr nz, @+$7E                                  ; $76C5: $20 $7C

    ld b, b                                       ; $76C7: $40
    ld a, a                                       ; $76C8: $7F
    ld [$0AFF], sp                                ; $76C9: $08 $FF $0A
    ret nc                                        ; $76CC: $D0

    jr z, @-$07                                   ; $76CD: $28 $F7

    ld [hl], e                                    ; $76CF: $73
    ld [$2033], sp                                ; $76D0: $08 $33 $20
    sub b                                         ; $76D3: $90
    ld [hl], $C0                                  ; $76D4: $36 $C0
    ld a, [hl+]                                   ; $76D6: $2A
    inc d                                         ; $76D7: $14
    pop hl                                        ; $76D8: $E1
    ld e, b                                       ; $76D9: $58
    db $E3                                        ; $76DA: $E3
    ld [$08C1], sp                                ; $76DB: $08 $C1 $08
    inc h                                         ; $76DE: $24
    ld l, h                                       ; $76DF: $6C
    ld l, h                                       ; $76E0: $6C
    stop                                          ; $76E1: $10 $00
    jr nz, @+$0A                                  ; $76E3: $20 $08

    ld l, b                                       ; $76E5: $68
    ld e, $80                                     ; $76E6: $1E $80
    inc sp                                        ; $76E8: $33
    ld [hl-], a                                   ; $76E9: $32
    inc b                                         ; $76EA: $04
    ld c, b                                       ; $76EB: $48
    ld [$E40C], sp                                ; $76EC: $08 $0C $E4
    ld [$5000], sp                                ; $76EF: $08 $00 $50
    dec c                                         ; $76F2: $0D
    jr z, jr_031_76FA                             ; $76F3: $28 $05

    add hl, bc                                    ; $76F5: $09

jr_031_76F6:
    db $10                                        ; $76F6: $10
    ld de, $1918                                  ; $76F7: $11 $18 $19

jr_031_76FA:
    cp e                                          ; $76FA: $BB
    ld [$091B], sp                                ; $76FB: $08 $1B $09
    reti                                          ; $76FE: $D9


    ld c, b                                       ; $76FF: $48
    ldh [$FF50], a                                ; $7700: $E0 $50
    ld [$1741], sp                                ; $7702: $08 $41 $17
    ld [$A057], sp                                ; $7705: $08 $57 $A0
    jr nz, @-$3E                                  ; $7708: $20 $C0

    ld hl, $2B08                                  ; $770A: $21 $08 $2B
    ld b, e                                       ; $770D: $43
    add b                                         ; $770E: $80
    ld a, c                                       ; $770F: $79
    ld [hl], b                                    ; $7710: $70
    ld [$08F8], sp                                ; $7711: $08 $F8 $08
    ld b, b                                       ; $7714: $40
    and b                                         ; $7715: $A0
    ld sp, $501F                                  ; $7716: $31 $1F $50
    ld a, a                                       ; $7719: $7F
    sbc h                                         ; $771A: $9C
    ld h, e                                       ; $771B: $63
    ldh a, [c]                                    ; $771C: $F2
    ld bc, $41B6                                  ; $771D: $01 $B6 $41
    ld a, c                                       ; $7720: $79
    ld d, c                                       ; $7721: $51
    ld [$3107], sp                                ; $7722: $08 $07 $31
    ret                                           ; $7725: $C9


    ldh [$FFAB], a                                ; $7726: $E0 $AB
    jp nz, Jump_031_41FC                          ; $7728: $C2 $FC $41

    rst RST_38                                    ; $772B: $FF

jr_031_772C:
    inc c                                         ; $772C: $0C
    ld a, [hl]                                    ; $772D: $7E
    ld b, c                                       ; $772E: $41
    nop                                           ; $772F: $00
    xor d                                         ; $7730: $AA
    pop hl                                        ; $7731: $E1
    rrca                                          ; $7732: $0F
    ld a, [hl+]                                   ; $7733: $2A
    or h                                          ; $7734: $B4
    ld [$08B6], sp                                ; $7735: $08 $B6 $08
    call nc, Call_031_5AA9                        ; $7738: $D4 $A9 $5A
    add hl, sp                                    ; $773B: $39
    ldh [c], a                                    ; $773C: $E2
    cp $7A                                        ; $773D: $FE $7A
    db $E4                                        ; $773F: $E4
    inc c                                         ; $7740: $0C
    rrca                                          ; $7741: $0F
    jr z, jr_031_772C                             ; $7742: $28 $E8

    ld [$0A00], sp                                ; $7744: $08 $00 $0A
    ld a, c                                       ; $7747: $79
    ld l, $C0                                     ; $7748: $2E $C0
    ld [bc], a                                    ; $774A: $02
    cp b                                          ; $774B: $B8
    cp a                                          ; $774C: $BF
    rlca                                          ; $774D: $07
    nop                                           ; $774E: $00
    ret nz                                        ; $774F: $C0

    ld hl, sp+$02                                 ; $7750: $F8 $02
    rst RST_38                                    ; $7752: $FF
    pop de                                        ; $7753: $D1
    inc bc                                        ; $7754: $03
    inc c                                         ; $7755: $0C
    rrca                                          ; $7756: $0F
    ld b, $F0                                     ; $7757: $06 $F0
    add b                                         ; $7759: $80
    adc a                                         ; $775A: $8F
    ld a, [bc]                                    ; $775B: $0A
    cp d                                          ; $775C: $BA
    nop                                           ; $775D: $00
    ld a, h                                       ; $775E: $7C
    nop                                           ; $775F: $00
    inc d                                         ; $7760: $14
    nop                                           ; $7761: $00
    di                                            ; $7762: $F3
    nop                                           ; $7763: $00
    ld l, l                                       ; $7764: $6D
    ldh [c], a                                    ; $7765: $E2
    nop                                           ; $7766: $00
    db $10                                        ; $7767: $10
    jr jr_031_7772                                ; $7768: $18 $08

    ld [hl], c                                    ; $776A: $71
    add hl, bc                                    ; $776B: $09
    ld c, $7A                                     ; $776C: $0E $7A
    pop af                                        ; $776E: $F1
    ld a, [de]                                    ; $776F: $1A
    inc bc                                        ; $7770: $03
    inc bc                                        ; $7771: $03

jr_031_7772:
    inc bc                                        ; $7772: $03
    inc [hl]                                      ; $7773: $34
    jr c, jr_031_777B                             ; $7774: $38 $05

    ld d, h                                       ; $7776: $54
    ld l, e                                       ; $7777: $6B
    add hl, de                                    ; $7778: $19
    ld [hl+], a                                   ; $7779: $22
    dec sp                                        ; $777A: $3B

jr_031_777B:
    jp Jump_000_3C02                              ; $777B: $C3 $02 $3C


    add hl, bc                                    ; $777E: $09
    nop                                           ; $777F: $00
    dec h                                         ; $7780: $25
    sub c                                         ; $7781: $91
    sbc c                                         ; $7782: $99
    inc bc                                        ; $7783: $03
    db $10                                        ; $7784: $10
    jr jr_031_7787                                ; $7785: $18 $00

jr_031_7787:
    add c                                         ; $7787: $81
    ld bc, $9812                                  ; $7788: $01 $12 $98
    ld h, b                                       ; $778B: $60
    ldh [rNR30], a                                ; $778C: $E0 $1A
    inc bc                                        ; $778E: $03
    inc e                                         ; $778F: $1C
    inc c                                         ; $7790: $0C
    ld a, [hl]                                    ; $7791: $7E
    rst RST_38                                    ; $7792: $FF
    inc bc                                        ; $7793: $03
    inc c                                         ; $7794: $0C
    ld a, d                                       ; $7795: $7A
    add b                                         ; $7796: $80
    inc b                                         ; $7797: $04
    ld h, b                                       ; $7798: $60
    ld l, c                                       ; $7799: $69
    ld [bc], a                                    ; $779A: $02
    ld l, e                                       ; $779B: $6B
    ld a, $00                                     ; $779C: $3E $00
    ld a, a                                       ; $779E: $7F
    rst RST_08                                    ; $779F: $CF
    nop                                           ; $77A0: $00
    or [hl]                                       ; $77A1: $B6
    nop                                           ; $77A2: $00
    ld c, e                                       ; $77A3: $4B
    adc a                                         ; $77A4: $8F
    ld a, d                                       ; $77A5: $7A
    add [hl]                                      ; $77A6: $86
    adc b                                         ; $77A7: $88
    rst RST_20                                    ; $77A8: $E7
    cp a                                          ; $77A9: $BF
    cp a                                          ; $77AA: $BF
    cp a                                          ; $77AB: $BF
    cp e                                          ; $77AC: $BB
    ld a, [$BF03]                                 ; $77AD: $FA $03 $BF
    cp a                                          ; $77B0: $BF
    cp a                                          ; $77B1: $BF
    dec hl                                        ; $77B2: $2B
    ld [hl], b                                    ; $77B3: $70
    nop                                           ; $77B4: $00
    cp $FF                                        ; $77B5: $FE $FF
    nop                                           ; $77B7: $00
    cp a                                          ; $77B8: $BF
    cp a                                          ; $77B9: $BF
    ld d, l                                       ; $77BA: $55
    cp a                                          ; $77BB: $BF
    cp a                                          ; $77BC: $BF
    or e                                          ; $77BD: $B3
    inc bc                                        ; $77BE: $03
    rst RST_38                                    ; $77BF: $FF
    inc bc                                        ; $77C0: $03
    inc bc                                        ; $77C1: $03
    cp a                                          ; $77C2: $BF
    cp a                                          ; $77C3: $BF
    cp a                                          ; $77C4: $BF
    dec sp                                        ; $77C5: $3B
    cp a                                          ; $77C6: $BF
    cp a                                          ; $77C7: $BF
    rst RST_38                                    ; $77C8: $FF
    ld bc, $03BB                                  ; $77C9: $01 $BB $03
    cp a                                          ; $77CC: $BF
    cp a                                          ; $77CD: $BF
    ld bc, $BFBF                                  ; $77CE: $01 $BF $BF
    cp $BF                                        ; $77D1: $FE $BF
    cp e                                          ; $77D3: $BB
    inc bc                                        ; $77D4: $03
    cp a                                          ; $77D5: $BF
    cp a                                          ; $77D6: $BF
    cp a                                          ; $77D7: $BF
    ld b, l                                       ; $77D8: $45
    ld c, $BF                                     ; $77D9: $0E $BF
    nop                                           ; $77DB: $00
    ld a, a                                       ; $77DC: $7F
    nop                                           ; $77DD: $00
    cp a                                          ; $77DE: $BF
    cp a                                          ; $77DF: $BF
    ld c, e                                       ; $77E0: $4B
    cp a                                          ; $77E1: $BF
    cp a                                          ; $77E2: $BF
    rst RST_38                                    ; $77E3: $FF
    cp a                                          ; $77E4: $BF
    cp a                                          ; $77E5: $BF
    cp a                                          ; $77E6: $BF
    cp e                                          ; $77E7: $BB
    inc bc                                        ; $77E8: $03
    cp a                                          ; $77E9: $BF
    cp a                                          ; $77EA: $BF
    cp a                                          ; $77EB: $BF
    rst RST_38                                    ; $77EC: $FF
    dec hl                                        ; $77ED: $2B
    ld h, b                                       ; $77EE: $60
    nop                                           ; $77EF: $00
    inc e                                         ; $77F0: $1C
    nop                                           ; $77F1: $00
    cp a                                          ; $77F2: $BF
    cp a                                          ; $77F3: $BF
    ld d, l                                       ; $77F4: $55
    rst RST_38                                    ; $77F5: $FF
    cp a                                          ; $77F6: $BF
    cp a                                          ; $77F7: $BF
    or e                                          ; $77F8: $B3
    inc bc                                        ; $77F9: $03
    inc bc                                        ; $77FA: $03
    inc bc                                        ; $77FB: $03
    cp a                                          ; $77FC: $BF
    cp a                                          ; $77FD: $BF
    rst RST_38                                    ; $77FE: $FF
    cp a                                          ; $77FF: $BF
    dec sp                                        ; $7800: $3B
    cp a                                          ; $7801: $BF
    cp a                                          ; $7802: $BF
    ld bc, $BFB7                                  ; $7803: $01 $B7 $BF
    rlca                                          ; $7806: $07
    rst RST_38                                    ; $7807: $FF
    cp a                                          ; $7808: $BF
    ld bc, $BFBF                                  ; $7809: $01 $BF $BF
    cp a                                          ; $780C: $BF
    cp e                                          ; $780D: $BB
    inc bc                                        ; $780E: $03
    cp a                                          ; $780F: $BF
    ei                                            ; $7810: $FB
    cp a                                          ; $7811: $BF
    cp a                                          ; $7812: $BF
    ld b, l                                       ; $7813: $45
    sbc [hl]                                      ; $7814: $9E
    nop                                           ; $7815: $00
    rra                                           ; $7816: $1F
    nop                                           ; $7817: $00
    cp a                                          ; $7818: $BF
    ldh a, [c]                                    ; $7819: $F2
    cp a                                          ; $781A: $BF
    ld c, e                                       ; $781B: $4B
    cp a                                          ; $781C: $BF
    cp a                                          ; $781D: $BF
    inc de                                        ; $781E: $13
    daa                                           ; $781F: $27
    xor d                                         ; $7820: $AA
    inc c                                         ; $7821: $0C
    inc b                                         ; $7822: $04
    inc hl                                        ; $7823: $23
    bit 4, a                                      ; $7824: $CB $67
    add h                                         ; $7826: $84
    or $1A                                        ; $7827: $F6 $1A
    jr nc, jr_031_782C                            ; $7829: $30 $01

    rst RST_38                                    ; $782B: $FF

jr_031_782C:
    nop                                           ; $782C: $00
    ld d, b                                       ; $782D: $50
    daa                                           ; $782E: $27
    ld bc, $0101                                  ; $782F: $01 $01 $01
    ld bc, $FD01                                  ; $7832: $01 $01 $FD
    ld bc, $0101                                  ; $7835: $01 $01 $01
    db $EC                                        ; $7838: $EC
    rst RST_28                                    ; $7839: $EF
    rlca                                          ; $783A: $07
    ld d, l                                       ; $783B: $55
    ld [bc], a                                    ; $783C: $02
    ld l, l                                       ; $783D: $6D

Call_031_783E:
    xor d                                         ; $783E: $AA
    dec bc                                        ; $783F: $0B
    inc de                                        ; $7840: $13
    pop bc                                        ; $7841: $C1
    ld [bc], a                                    ; $7842: $02
    adc b                                         ; $7843: $88
    ld a, a                                       ; $7844: $7F
    ld d, [hl]                                    ; $7845: $56
    rst RST_38                                    ; $7846: $FF
    nop                                           ; $7847: $00
    ld c, l                                       ; $7848: $4D
    rla                                           ; $7849: $17
    ld bc, $0101                                  ; $784A: $01 $01 $01
    ld bc, $1201                                  ; $784D: $01 $01 $12
    db $E4                                        ; $7850: $E4
    di                                            ; $7851: $F3
    ld [bc], a                                    ; $7852: $02
    db $EC                                        ; $7853: $EC
    pop hl                                        ; $7854: $E1
    ld c, h                                       ; $7855: $4C
    or h                                          ; $7856: $B4
    and [hl]                                      ; $7857: $A6
    xor a                                         ; $7858: $AF
    ld a, d                                       ; $7859: $7A
    ld b, $B2                                     ; $785A: $06 $B2
    ret z                                         ; $785C: $C8

    sub d                                         ; $785D: $92
    inc c                                         ; $785E: $0C
    sub $03                                       ; $785F: $D6 $03
    rst RST_38                                    ; $7861: $FF
    nop                                           ; $7862: $00
    ld a, [bc]                                    ; $7863: $0A
    nop                                           ; $7864: $00
    dec hl                                        ; $7865: $2B
    ld bc, $0101                                  ; $7866: $01 $01 $01
    ld bc, $01C1                                  ; $7869: $01 $C1 $01
    cp a                                          ; $786C: $BF
    jp nz, Jump_000_210E                          ; $786D: $C2 $0E $21

    ret                                           ; $7870: $C9


    ld h, [hl]                                    ; $7871: $66
    cp [hl]                                       ; $7872: $BE
    ld e, a                                       ; $7873: $5F
    db $F4                                        ; $7874: $F4
    ld l, d                                       ; $7875: $6A
    ld sp, $BFBA                                  ; $7876: $31 $BA $BF
    rra                                           ; $7879: $1F
    ld bc, $FF01                                  ; $787A: $01 $01 $FF
    ld bc, $0101                                  ; $787D: $01 $01 $01
    ld bc, $0101                                  ; $7880: $01 $01 $01
    xor e                                         ; $7883: $AB
    rlca                                          ; $7884: $07
    rst RST_30                                    ; $7885: $F7
    cp a                                          ; $7886: $BF
    rlca                                          ; $7887: $07
    rrca                                          ; $7888: $0F
    cp e                                          ; $7889: $BB
    cp $02                                        ; $788A: $FE $02
    cp h                                          ; $788C: $BC
    cp a                                          ; $788D: $BF
    rst RST_38                                    ; $788E: $FF
    cp a                                          ; $788F: $BF
    cp a                                          ; $7890: $BF
    ld bc, $0101                                  ; $7891: $01 $01 $01
    ld bc, $BF01                                  ; $7894: $01 $01 $BF
    sbc l                                         ; $7897: $9D
    cp [hl]                                       ; $7898: $BE
    ld [hl+], a                                   ; $7899: $22
    add hl, sp                                    ; $789A: $39
    ld [hl-], a                                   ; $789B: $32
    cp [hl]                                       ; $789C: $BE
    cp d                                          ; $789D: $BA
    ld h, $BA                                     ; $789E: $26 $BA
    ld e, a                                       ; $78A0: $5F
    add $AC                                       ; $78A1: $C6 $AC
    ld hl, sp-$45                                 ; $78A3: $F8 $BB
    inc bc                                        ; $78A5: $03
    cp a                                          ; $78A6: $BF
    cp a                                          ; $78A7: $BF
    dec hl                                        ; $78A8: $2B
    db $FC                                        ; $78A9: $FC
    ld bc, $0101                                  ; $78AA: $01 $01 $01
    ld bc, $BF01                                  ; $78AD: $01 $01 $BF
    jp $170F                                      ; $78B0: $C3 $0F $17


    inc h                                         ; $78B3: $24
    call z, Call_000_3C60                         ; $78B4: $CC $60 $3C
    pop af                                        ; $78B7: $F1
    or [hl]                                       ; $78B8: $B6
    cp a                                          ; $78B9: $BF
    cp a                                          ; $78BA: $BF
    rst RST_38                                    ; $78BB: $FF
    rra                                           ; $78BC: $1F
    ld bc, $0101                                  ; $78BD: $01 $01 $01
    ld bc, $0101                                  ; $78C0: $01 $01 $01
    ld bc, $01FF                                  ; $78C3: $01 $FF $01
    xor a                                         ; $78C6: $AF
    rlca                                          ; $78C7: $07
    ld bc, $BB0B                                  ; $78C8: $01 $0B $BB
    cp e                                          ; $78CB: $BB
    ld bc, $BFFF                                  ; $78CC: $01 $FF $BF
    cp a                                          ; $78CF: $BF
    cp a                                          ; $78D0: $BF
    rra                                           ; $78D1: $1F
    ld bc, $0101                                  ; $78D2: $01 $01 $01
    ld bc, $01F7                                  ; $78D5: $01 $F7 $01
    cp a                                          ; $78D8: $BF
    cp a                                          ; $78D9: $BF
    jr nz, jr_031_78E8                            ; $78DA: $20 $0C

    and h                                         ; $78DC: $A4
    cp d                                          ; $78DD: $BA
    xor h                                         ; $78DE: $AC
    ld a, a                                       ; $78DF: $7F
    or $B4                                        ; $78E0: $F6 $B4
    cp [hl]                                       ; $78E2: $BE
    ld a, [bc]                                    ; $78E3: $0A
    cp e                                          ; $78E4: $BB
    inc bc                                        ; $78E5: $03
    cp a                                          ; $78E6: $BF
    cp a                                          ; $78E7: $BF

jr_031_78E8:
    db $FC                                        ; $78E8: $FC
    ld bc, $0101                                  ; $78E9: $01 $01 $01
    ld bc, $0001                                  ; $78EC: $01 $01 $00
    ld c, l                                       ; $78EF: $4D
    ld b, b                                       ; $78F0: $40
    ld d, l                                       ; $78F1: $55
    nop                                           ; $78F2: $00
    nop                                           ; $78F3: $00
    ld a, a                                       ; $78F4: $7F
    ld b, $3F                                     ; $78F5: $06 $3F
    nop                                           ; $78F7: $00
    rrca                                          ; $78F8: $0F
    nop                                           ; $78F9: $00
    ld h, h                                       ; $78FA: $64
    inc bc                                        ; $78FB: $03
    nop                                           ; $78FC: $00
    ld a, c                                       ; $78FD: $79
    ld hl, sp-$05                                 ; $78FE: $F8 $FB
    add hl, bc                                    ; $7900: $09
    ldh a, [$FFF7]                                ; $7901: $F0 $F7
    add c                                         ; $7903: $81
    add hl, bc                                    ; $7904: $09
    db $F4                                        ; $7905: $F4
    di                                            ; $7906: $F3
    add sp, -$19                                  ; $7907: $E8 $E7
    ldh [$FFEE], a                                ; $7909: $E0 $EE
    ld a, c                                       ; $790B: $79
    ld d, l                                       ; $790C: $55
    ld l, e                                       ; $790D: $6B
    nop                                           ; $790E: $00
    ld e, e                                       ; $790F: $5B
    nop                                           ; $7910: $00
    ld d, e                                       ; $7911: $53
    nop                                           ; $7912: $00
    inc sp                                        ; $7913: $33
    nop                                           ; $7914: $00
    ld l, l                                       ; $7915: $6D
    dec hl                                        ; $7916: $2B
    nop                                           ; $7917: $00
    ld c, c                                       ; $7918: $49
    db $DB                                        ; $7919: $DB
    nop                                           ; $791A: $00
    ld a, c                                       ; $791B: $79
    rst RST_38                                    ; $791C: $FF
    nop                                           ; $791D: $00
    call nz, Call_000_00F0                        ; $791E: $C4 $F0 $00
    push af                                       ; $7921: $F5
    pop af                                        ; $7922: $F1
    ldh a, [c]                                    ; $7923: $F2
    ldh a, [$FFF0]                                ; $7924: $F0 $F0
    or $EA                                        ; $7926: $F6 $EA

jr_031_7928:
    add hl, bc                                    ; $7928: $09
    ei                                            ; $7929: $FB
    ld a, c                                       ; $792A: $79
    cp $00                                        ; $792B: $FE $00
    db $FC                                        ; $792D: $FC
    nop                                           ; $792E: $00
    ld hl, sp-$5F                                 ; $792F: $F8 $A1
    nop                                           ; $7931: $00
    adc b                                         ; $7932: $88
    nop                                           ; $7933: $00
    jr nc, @+$05                                  ; $7934: $30 $03

    cp b                                          ; $7936: $B8
    ld bc, $A17B                                  ; $7937: $01 $7B $A1
    ld bc, $000F                                  ; $793A: $01 $0F $00
    scf                                           ; $793D: $37
    rlca                                          ; $793E: $07
    dec bc                                        ; $793F: $0B
    di                                            ; $7940: $F3
    ld h, b                                       ; $7941: $60
    ld e, [hl]                                    ; $7942: $5E
    ld sp, hl                                     ; $7943: $F9
    ld [$79FD], sp                                ; $7944: $08 $FD $79
    jp hl                                         ; $7947: $E9


jr_031_7948:
    rlca                                          ; $7948: $07
    inc bc                                        ; $7949: $03
    add hl, de                                    ; $794A: $19
    sbc e                                         ; $794B: $9B
    sub b                                         ; $794C: $90
    ld b, $08                                     ; $794D: $06 $08
    ld de, $03A0                                  ; $794F: $11 $A0 $03
    ld [$C020], sp                                ; $7952: $08 $20 $C0
    ret                                           ; $7955: $C9


    inc bc                                        ; $7956: $03
    db $E4                                        ; $7957: $E4
    ld [$6569], a                                 ; $7958: $EA $69 $65
    ld hl, $102D                                  ; $795B: $21 $2D $10
    add e                                         ; $795E: $83
    dec bc                                        ; $795F: $0B
    ld b, e                                       ; $7960: $43
    db $10                                        ; $7961: $10
    daa                                           ; $7962: $27
    rst RST_00                                    ; $7963: $C7
    rla                                           ; $7964: $17
    ld h, a                                       ; $7965: $67
    dec d                                         ; $7966: $15
    rlca                                          ; $7967: $07
    scf                                           ; $7968: $37
    db $DB                                        ; $7969: $DB
    nop                                           ; $796A: $00
    or a                                          ; $796B: $B7
    ld bc, $1187                                  ; $796C: $01 $87 $11
    jr nc, @+$71                                  ; $796F: $30 $6F

    rrca                                          ; $7971: $0F
    ld h, b                                       ; $7972: $60
    nop                                           ; $7973: $00
    ld e, c                                       ; $7974: $59
    ld bc, $5846                                  ; $7975: $01 $46 $58
    ld h, $E1                                     ; $7978: $26 $E1
    db $EC                                        ; $797A: $EC
    add hl, bc                                    ; $797B: $09
    db $E3                                        ; $797C: $E3
    add sp, $09                                   ; $797D: $E8 $09
    ldh [$FFC0], a                                ; $797F: $E0 $C0
    sub b                                         ; $7981: $90
    add hl, bc                                    ; $7982: $09
    sub a                                         ; $7983: $97
    add b                                         ; $7984: $80
    ldh a, [rP1]                                  ; $7985: $F0 $00
    sbc h                                         ; $7987: $9C
    jr nz, jr_031_7928                            ; $7988: $20 $9E

    xor [hl]                                      ; $798A: $AE
    ld a, [bc]                                    ; $798B: $0A
    sbc a                                         ; $798C: $9F
    ld a, [bc]                                    ; $798D: $0A
    rst RST_18                                    ; $798E: $DF
    ld a, [bc]                                    ; $798F: $0A

jr_031_7990:
    add hl, hl                                    ; $7990: $29
    add b                                         ; $7991: $80
    db $FC                                        ; $7992: $FC
    adc d                                         ; $7993: $8A
    add hl, bc                                    ; $7994: $09
    ld bc, $0770                                  ; $7995: $01 $70 $07
    jr nz, jr_031_79B9                            ; $7998: $20 $1F

    ld [$A17F], sp                                ; $799A: $08 $7F $A1
    inc c                                         ; $799D: $0C
    ld c, $00                                     ; $799E: $0E $00
    ld h, [hl]                                    ; $79A0: $66
    ld b, $96                                     ; $79A1: $06 $96
    ld b, [hl]                                    ; $79A3: $46
    add hl, bc                                    ; $79A4: $09
    cpl                                           ; $79A5: $2F
    ld [hl], $86                                  ; $79A6: $36 $86
    dec bc                                        ; $79A8: $0B
    halt                                          ; $79A9: $76
    ld e, b                                       ; $79AA: $58
    add b                                         ; $79AB: $80
    rlca                                          ; $79AC: $07
    nop                                           ; $79AD: $00
    add e                                         ; $79AE: $83
    ld d, b                                       ; $79AF: $50
    ld bc, $021C                                  ; $79B0: $01 $1C $02
    jr nc, jr_031_79C2                            ; $79B3: $30 $0D

    jr z, @+$09                                   ; $79B5: $28 $07

    add h                                         ; $79B7: $84
    ret                                           ; $79B8: $C9


jr_031_79B9:
    ld h, b                                       ; $79B9: $60
    ld a, d                                       ; $79BA: $7A
    add b                                         ; $79BB: $80
    ei                                            ; $79BC: $FB
    jr nz, jr_031_7948                            ; $79BD: $20 $89

    or [hl]                                       ; $79BF: $B6
    jr nz, jr_031_7948                            ; $79C0: $20 $86

jr_031_79C2:
    cp c                                          ; $79C2: $B9
    jr nz, jr_031_79E4                            ; $79C3: $20 $1F

    ld b, b                                       ; $79C5: $40
    rrca                                          ; $79C6: $0F
    jr nz, jr_031_7990                            ; $79C7: $20 $C7

    dec b                                         ; $79C9: $05
    db $10                                        ; $79CA: $10
    db $E3                                        ; $79CB: $E3
    ld [$0411], sp                                ; $79CC: $08 $11 $04
    db $10                                        ; $79CF: $10
    scf                                           ; $79D0: $37
    ld h, b                                       ; $79D1: $60
    ld d, a                                       ; $79D2: $57
    dec hl                                        ; $79D3: $2B
    xor b                                         ; $79D4: $A8
    inc e                                         ; $79D5: $1C

jr_031_79D6:
    ld [$083F], sp                                ; $79D6: $08 $3F $08
    sub b                                         ; $79D9: $90
    ld [$5F6A], sp                                ; $79DA: $08 $6A $5F
    or c                                          ; $79DD: $B1
    ld [$087F], sp                                ; $79DE: $08 $7F $08
    sbc a                                         ; $79E1: $9F
    ret nz                                        ; $79E2: $C0

    sbc h                                         ; $79E3: $9C

jr_031_79E4:
    add d                                         ; $79E4: $82
    ld [$2390], sp                                ; $79E5: $08 $90 $23
    ld [bc], a                                    ; $79E8: $02
    inc c                                         ; $79E9: $0C
    adc [hl]                                      ; $79EA: $8E
    ldh a, [$FFE6]                                ; $79EB: $F0 $E6
    xor c                                         ; $79ED: $A9
    ret c                                         ; $79EE: $D8

    ldh a, [c]                                    ; $79EF: $F2
    ldh a, [$FFF8]                                ; $79F0: $F0 $F8
    ld b, b                                       ; $79F2: $40
    ld a, [hl]                                    ; $79F3: $7E
    ld bc, $5509                                  ; $79F4: $01 $09 $55
    inc a                                         ; $79F7: $3C
    jr z, jr_031_79D6                             ; $79F8: $28 $DC

    ld [$58E9], sp                                ; $79FA: $08 $E9 $58
    ldh a, [$FF08]                                ; $79FD: $F0 $08
    ld d, l                                       ; $79FF: $55
    inc bc                                        ; $7A00: $03
    db $10                                        ; $7A01: $10
    rrca                                          ; $7A02: $0F
    ld hl, sp+$72                                 ; $7A03: $F8 $72
    ld c, b                                       ; $7A05: $48
    ld l, b                                       ; $7A06: $68
    jr jr_031_7A5E                                ; $7A07: $18 $55

    db $EC                                        ; $7A09: $EC
    ld [$08CC], sp                                ; $7A0A: $08 $CC $08
    adc h                                         ; $7A0D: $8C
    ld [$0870], sp                                ; $7A0E: $08 $70 $08
    db $EB                                        ; $7A11: $EB
    jp hl                                         ; $7A12: $E9


    add hl, bc                                    ; $7A13: $09
    jr nz, jr_031_7A87                            ; $7A14: $20 $71

    ld [$000E], sp                                ; $7A16: $08 $0E $00
    jr jr_031_7A83                                ; $7A19: $18 $68

    ld a, a                                       ; $7A1B: $7F
    jr nz, jr_031_7A2B                            ; $7A1C: $20 $0D

    inc a                                         ; $7A1E: $3C
    ld [$01F6], sp                                ; $7A1F: $08 $F6 $01
    ld h, l                                       ; $7A22: $65
    nop                                           ; $7A23: $00
    add d                                         ; $7A24: $82
    dec h                                         ; $7A25: $25
    ld b, d                                       ; $7A26: $42
    dec hl                                        ; $7A27: $2B
    ld b, h                                       ; $7A28: $44
    dec bc                                        ; $7A29: $0B
    and h                                         ; $7A2A: $A4

jr_031_7A2B:
    adc e                                         ; $7A2B: $8B
    and e                                         ; $7A2C: $A3
    jr @-$7B                                      ; $7A2D: $18 $83

    ld l, b                                       ; $7A2F: $68
    inc bc                                        ; $7A30: $03
    ld a, b                                       ; $7A31: $78
    add b                                         ; $7A32: $80
    jr jr_031_7A3D                                ; $7A33: $18 $08

    dec de                                        ; $7A35: $1B
    inc b                                         ; $7A36: $04
    ret nz                                        ; $7A37: $C0

    ld [bc], a                                    ; $7A38: $02
    ld [$E0A8], sp                                ; $7A39: $08 $A8 $E0
    add hl, bc                                    ; $7A3C: $09

jr_031_7A3D:
    ld c, b                                       ; $7A3D: $48
    ld d, l                                       ; $7A3E: $55
    ldh a, [$FF08]                                ; $7A3F: $F0 $08
    ldh a, [c]                                    ; $7A41: $F2
    ld c, b                                       ; $7A42: $48
    ld h, a                                       ; $7A43: $67
    jr jr_031_7A59                                ; $7A44: $18 $13

    ld [$5441], sp                                ; $7A46: $08 $41 $54
    adc b                                         ; $7A49: $88
    ld d, $06                                     ; $7A4A: $16 $06
    ld [hl], a                                    ; $7A4C: $77
    rlca                                          ; $7A4D: $07
    dec sp                                        ; $7A4E: $3B
    ldh a, [rBGP]                                 ; $7A4F: $F0 $47
    inc a                                         ; $7A51: $3C
    ret nc                                        ; $7A52: $D0

    db $10                                        ; $7A53: $10
    pop bc                                        ; $7A54: $C1
    db $FC                                        ; $7A55: $FC
    ld l, b                                       ; $7A56: $68
    cp b                                          ; $7A57: $B8
    sbc b                                         ; $7A58: $98

jr_031_7A59:
    ret z                                         ; $7A59: $C8

    cp b                                          ; $7A5A: $B8
    ld e, b                                       ; $7A5B: $58
    jr nc, jr_031_7A61                            ; $7A5C: $30 $03

jr_031_7A5E:
    jr nc, jr_031_7A65                            ; $7A5E: $30 $05

    ld [hl+], a                                   ; $7A60: $22

jr_031_7A61:
    jr nz, jr_031_7AB8                            ; $7A61: $20 $55

    db $EC                                        ; $7A63: $EC
    nop                                           ; $7A64: $00

jr_031_7A65:
    dec c                                         ; $7A65: $0D
    nop                                           ; $7A66: $00
    rst RST_38                                    ; $7A67: $FF
    ld b, b                                       ; $7A68: $40
    ld a, a                                       ; $7A69: $7F
    ld [$3F6E], sp                                ; $7A6A: $08 $6E $3F
    cp b                                          ; $7A6D: $B8
    add hl, de                                    ; $7A6E: $19
    ld a, h                                       ; $7A6F: $7C
    ld [$0090], sp                                ; $7A70: $08 $90 $00
    ld c, a                                       ; $7A73: $4F
    xor h                                         ; $7A74: $AC
    nop                                           ; $7A75: $00
    ld c, [hl]                                    ; $7A76: $4E
    nop                                           ; $7A77: $00
    ld hl, sp-$17                                 ; $7A78: $F8 $E9
    ld [$06C0], sp                                ; $7A7A: $08 $C0 $06
    ld [hl], l                                    ; $7A7D: $75
    ret nc                                        ; $7A7E: $D0

    ld [$0870], sp                                ; $7A7F: $08 $70 $08
    ld [hl], b                                    ; $7A82: $70

jr_031_7A83:
    ld [$3A40], sp                                ; $7A83: $08 $40 $3A
    ld c, [hl]                                    ; $7A86: $4E

jr_031_7A87:
    jr nz, @-$4D                                  ; $7A87: $20 $B1

    inc e                                         ; $7A89: $1C
    rra                                           ; $7A8A: $1F
    jr nz, @+$11                                  ; $7A8B: $20 $0F

    add hl, bc                                    ; $7A8D: $09
    add hl, de                                    ; $7A8E: $19
    inc bc                                        ; $7A8F: $03

jr_031_7A90:
    call nz, Call_031_4499                        ; $7A90: $C4 $99 $44
    sbc h                                         ; $7A93: $9C
    ld h, d                                       ; $7A94: $62
    adc $38                                       ; $7A95: $CE $38

jr_031_7A97:
    ld [$2122], sp                                ; $7A97: $08 $22 $21
    rst RST_08                                    ; $7A9A: $CF
    jr @-$0F                                      ; $7A9B: $18 $EF

    db $10                                        ; $7A9D: $10
    rst RST_20                                    ; $7A9E: $E7
    ld [$2AC0], sp                                ; $7A9F: $08 $C0 $2A
    nop                                           ; $7AA2: $00
    call z, $9E08                                 ; $7AA3: $CC $08 $9E
    ld [$089F], sp                                ; $7AA6: $08 $9F $08
    ccf                                           ; $7AA9: $3F
    and e                                         ; $7AAA: $A3
    inc c                                         ; $7AAB: $0C
    cp a                                          ; $7AAC: $BF
    ld [$410D], sp                                ; $7AAD: $08 $0D $41
    dec e                                         ; $7AB0: $1D
    ld a, [bc]                                    ; $7AB1: $0A
    add hl, hl                                    ; $7AB2: $29
    ld d, l                                       ; $7AB3: $55
    ld bc, $1101                                  ; $7AB4: $01 $01 $11
    ld h, b                                       ; $7AB7: $60

jr_031_7AB8:
    inc e                                         ; $7AB8: $1C
    ld [$080F], sp                                ; $7AB9: $08 $0F $08
    push af                                       ; $7ABC: $F5
    rlca                                          ; $7ABD: $07
    rlca                                          ; $7ABE: $07
    rlca                                          ; $7ABF: $07
    ld b, $C0                                     ; $7AC0: $06 $C0
    ld [$19E0], sp                                ; $7AC2: $08 $E0 $19
    ld d, a                                       ; $7AC5: $57
    ld b, $08                                     ; $7AC6: $06 $08
    ld c, $20                                     ; $7AC8: $0E $20
    jr jr_031_7AD4                                ; $7ACA: $18 $08

    jr z, jr_031_7AD6                             ; $7ACC: $28 $08

    ld h, h                                       ; $7ACE: $64
    ld e, $08                                     ; $7ACF: $1E $08
    jr c, jr_031_7AE2                             ; $7AD1: $38 $0F

    db $10                                        ; $7AD3: $10

jr_031_7AD4:
    add hl, bc                                    ; $7AD4: $09
    rlca                                          ; $7AD5: $07

jr_031_7AD6:
    ld [$4744], sp                                ; $7AD6: $08 $44 $47
    ld [$0443], sp                                ; $7AD9: $08 $43 $04
    ld h, e                                       ; $7ADC: $63
    ld [$0231], sp                                ; $7ADD: $08 $31 $02
    sub [hl]                                      ; $7AE0: $96
    and b                                         ; $7AE1: $A0

jr_031_7AE2:
    ld b, c                                       ; $7AE2: $41
    rst RST_20                                    ; $7AE3: $E7
    ld l, b                                       ; $7AE4: $68
    di                                            ; $7AE5: $F3
    ld e, b                                       ; $7AE6: $58
    add hl, bc                                    ; $7AE7: $09
    ld sp, hl                                     ; $7AE8: $F9
    xor c                                         ; $7AE9: $A9
    ld e, b                                       ; $7AEA: $58
    db $FC                                        ; $7AEB: $FC
    ld e, b                                       ; $7AEC: $58
    ld hl, sp-$08                                 ; $7AED: $F8 $F8
    pop bc                                        ; $7AEF: $C1
    add hl, sp                                    ; $7AF0: $39
    ret z                                         ; $7AF1: $C8

    dec d                                         ; $7AF2: $15
    rst RST_00                                    ; $7AF3: $C7
    cp a                                          ; $7AF4: $BF
    nop                                           ; $7AF5: $00
    add hl, bc                                    ; $7AF6: $09
    adc a                                         ; $7AF7: $8F
    ld [$0811], sp                                ; $7AF8: $08 $11 $08
    ld b, h                                       ; $7AFB: $44

jr_031_7AFC:
    ld e, $08                                     ; $7AFC: $1E $08
    sbc [hl]                                      ; $7AFE: $9E
    add b                                         ; $7AFF: $80
    cp h                                          ; $7B00: $BC
    ld [$0138], sp                                ; $7B01: $08 $38 $01
    ld h, [hl]                                    ; $7B04: $66
    jr nc, jr_031_7A97                            ; $7B05: $30 $90

    jr jr_031_7B0C                                ; $7B07: $18 $03

    inc a                                         ; $7B09: $3C
    jr z, jr_031_7B15                             ; $7B0A: $28 $09

jr_031_7B0C:
    db $10                                        ; $7B0C: $10
    db $FD                                        ; $7B0D: $FD
    jr z, jr_031_7A90                             ; $7B0E: $28 $80

jr_031_7B10:
    ld c, b                                       ; $7B10: $48
    add hl, bc                                    ; $7B11: $09
    jr z, jr_031_7B4C                             ; $7B12: $28 $38

    ccf                                           ; $7B14: $3F

jr_031_7B15:
    sbc b                                         ; $7B15: $98
    xor d                                         ; $7B16: $AA
    ret z                                         ; $7B17: $C8

    ret nz                                        ; $7B18: $C0

    jr c, jr_031_7AFC                             ; $7B19: $38 $E1

    ld [$40FE], sp                                ; $7B1B: $08 $FE $40
    db $FC                                        ; $7B1E: $FC
    cp l                                          ; $7B1F: $BD
    add b                                         ; $7B20: $80
    ld hl, sp+$0B                                 ; $7B21: $F8 $0B
    ld c, b                                       ; $7B23: $48
    ld b, b                                       ; $7B24: $40
    ld [$E83D], sp                                ; $7B25: $08 $3D $E8
    rrca                                          ; $7B28: $0F
    ld b, c                                       ; $7B29: $41
    ld a, $40                                     ; $7B2A: $3E $40
    jr c, jr_031_7B36                             ; $7B2C: $38 $08

    jr c, jr_031_7B39                             ; $7B2E: $38 $09

    ld bc, $0E70                                  ; $7B30: $01 $70 $0E
    ld [$00E8], sp                                ; $7B33: $08 $E8 $00

jr_031_7B36:
    jr jr_031_7B10                                ; $7B36: $18 $D8

    inc b                                         ; $7B38: $04

jr_031_7B39:
    inc h                                         ; $7B39: $24
    cp b                                          ; $7B3A: $B8
    jr nc, jr_031_7BB5                            ; $7B3B: $30 $78

    ld h, d                                       ; $7B3D: $62
    nop                                           ; $7B3E: $00
    ld b, b                                       ; $7B3F: $40
    ld e, b                                       ; $7B40: $58
    add [hl]                                      ; $7B41: $86
    ld c, b                                       ; $7B42: $48
    ld [bc], a                                    ; $7B43: $02
    jr nz, jr_031_7B8C                            ; $7B44: $20 $46

    ld [hl], $0C                                  ; $7B46: $36 $0C
    ld c, h                                       ; $7B48: $4C
    add hl, sp                                    ; $7B49: $39
    nop                                           ; $7B4A: $00
    ld b, e                                       ; $7B4B: $43

jr_031_7B4C:
    xor l                                         ; $7B4C: $AD
    nop                                           ; $7B4D: $00
    rra                                           ; $7B4E: $1F
    nop                                           ; $7B4F: $00
    ld a, a                                       ; $7B50: $7F
    nop                                           ; $7B51: $00
    sub c                                         ; $7B52: $91

jr_031_7B53:
    ld a, $00                                     ; $7B53: $3E $00
    inc d                                         ; $7B55: $14
    ld [hl], c                                    ; $7B56: $71
    ld [hl], b                                    ; $7B57: $70
    rlca                                          ; $7B58: $07
    jr z, jr_031_7B53                             ; $7B59: $28 $F8

    nop                                           ; $7B5B: $00
    db $FC                                        ; $7B5C: $FC
    db $FD                                        ; $7B5D: $FD
    adc h                                         ; $7B5E: $8C
    db $10                                        ; $7B5F: $10
    ei                                            ; $7B60: $FB
    ldh a, [$FFF7]                                ; $7B61: $F0 $F7
    ld a, c                                       ; $7B63: $79
    ld h, b                                       ; $7B64: $60
    ld bc, $6AC0                                  ; $7B65: $01 $C0 $6A
    ld [bc], a                                    ; $7B68: $02
    add hl, hl                                    ; $7B69: $29
    nop                                           ; $7B6A: $00
    ld h, [hl]                                    ; $7B6B: $66
    ld [$08EB], sp                                ; $7B6C: $08 $EB $08
    db $EC                                        ; $7B6F: $EC
    and c                                         ; $7B70: $A1
    ld [$41C6], sp                                ; $7B71: $08 $C6 $41
    and [hl]                                      ; $7B74: $A6
    ld d, $27                                     ; $7B75: $16 $27
    rla                                           ; $7B77: $17
    add hl, de                                    ; $7B78: $19
    ld bc, $122A                                  ; $7B79: $01 $2A $12

jr_031_7B7C:
    inc [hl]                                      ; $7B7C: $34
    ld [$0718], sp                                ; $7B7D: $08 $18 $07
    jr z, @+$0A                                   ; $7B80: $28 $08

    sub a                                         ; $7B82: $97
    ld a, c                                       ; $7B83: $79
    inc bc                                        ; $7B84: $03
    ld hl, sp-$10                                 ; $7B85: $F8 $F0
    ld a, b                                       ; $7B87: $78
    ld [$3050], sp                                ; $7B88: $08 $50 $30
    ld d, l                                       ; $7B8B: $55

jr_031_7B8C:
    inc a                                         ; $7B8C: $3C
    ld [$087E], sp                                ; $7B8D: $08 $7E $08
    cp $08                                        ; $7B90: $FE $08
    rst RST_38                                    ; $7B92: $FF
    ld a, c                                       ; $7B93: $79
    dec h                                         ; $7B94: $25
    ld c, $70                                     ; $7B95: $0E $70
    ld b, b                                       ; $7B97: $40
    add b                                         ; $7B98: $80

jr_031_7B99:
    ld a, a                                       ; $7B99: $7F
    ld [$0879], sp                                ; $7B9A: $08 $79 $08
    ld e, d                                       ; $7B9D: $5A
    ld l, a                                       ; $7B9E: $6F
    ld c, b                                       ; $7B9F: $48
    inc e                                         ; $7BA0: $1C
    ld h, c                                       ; $7BA1: $61
    ld [bc], a                                    ; $7BA2: $02
    ld c, [hl]                                    ; $7BA3: $4E
    ld c, b                                       ; $7BA4: $48
    jr nc, jr_031_7B7C                            ; $7BA5: $30 $D5

    ld [$04E1], sp                                ; $7BA7: $08 $E1 $04
    ld [$1A38], sp                                ; $7BAA: $08 $38 $1A
    ld a, [$0A7A]                                 ; $7BAD: $FA $7A $0A
    add b                                         ; $7BB0: $80
    ld bc, $ED0D                                  ; $7BB1: $01 $0D $ED
    db $E4                                        ; $7BB4: $E4

jr_031_7BB5:
    db $F4                                        ; $7BB5: $F4
    sub b                                         ; $7BB6: $90
    sbc c                                         ; $7BB7: $99
    ld h, b                                       ; $7BB8: $60
    nop                                           ; $7BB9: $00
    inc c                                         ; $7BBA: $0C
    sbc a                                         ; $7BBB: $9F
    cp a                                          ; $7BBC: $BF
    ret nz                                        ; $7BBD: $C0

    rst RST_18                                    ; $7BBE: $DF
    inc b                                         ; $7BBF: $04
    nop                                           ; $7BC0: $00
    ld a, $00                                     ; $7BC1: $3E $00
    ldh a, [$FF03]                                ; $7BC3: $F0 $03

jr_031_7BC5:
    inc bc                                        ; $7BC5: $03
    inc bc                                        ; $7BC6: $03
    inc bc                                        ; $7BC7: $03
    add hl, de                                    ; $7BC8: $19
    jr jr_031_7BCE                                ; $7BC9: $18 $03

    ldh [rSB], a                                  ; $7BCB: $E0 $01
    ld h, c                                       ; $7BCD: $61

jr_031_7BCE:
    ld hl, sp+$26                                 ; $7BCE: $F8 $26
    jr nc, jr_031_7B99                            ; $7BD0: $30 $C7

    ret nc                                        ; $7BD2: $D0

    daa                                           ; $7BD3: $27
    inc c                                         ; $7BD4: $0C
    ccf                                           ; $7BD5: $3F
    and $F0                                       ; $7BD6: $E6 $F0
    jr c, @-$62                                   ; $7BD8: $38 $9C

    ld c, a                                       ; $7BDA: $4F
    inc bc                                        ; $7BDB: $03
    inc bc                                        ; $7BDC: $03
    inc bc                                        ; $7BDD: $03
    rst RST_20                                    ; $7BDE: $E7
    rst RST_38                                    ; $7BDF: $FF
    db $FD                                        ; $7BE0: $FD
    ld e, l                                       ; $7BE1: $5D
    add b                                         ; $7BE2: $80
    sbc a                                         ; $7BE3: $9F
    sbc b                                         ; $7BE4: $98
    nop                                           ; $7BE5: $00
    rst RST_38                                    ; $7BE6: $FF
    db $FD                                        ; $7BE7: $FD
    inc bc                                        ; $7BE8: $03
    inc bc                                        ; $7BE9: $03
    inc bc                                        ; $7BEA: $03
    inc bc                                        ; $7BEB: $03
    rst RST_38                                    ; $7BEC: $FF
    rst RST_38                                    ; $7BED: $FF
    rlca                                          ; $7BEE: $07
    rst RST_38                                    ; $7BEF: $FF
    cp $FF                                        ; $7BF0: $FE $FF
    inc bc                                        ; $7BF2: $03
    inc bc                                        ; $7BF3: $03
    inc bc                                        ; $7BF4: $03
    rst RST_38                                    ; $7BF5: $FF
    cp $58                                        ; $7BF6: $FE $58
    ld sp, hl                                     ; $7BF8: $F9
    inc sp                                        ; $7BF9: $33
    ld bc, $E81F                                  ; $7BFA: $01 $1F $E8
    sub h                                         ; $7BFD: $94
    pop af                                        ; $7BFE: $F1
    rst RST_38                                    ; $7BFF: $FF
    rst RST_38                                    ; $7C00: $FF
    inc bc                                        ; $7C01: $03
    cp $03                                        ; $7C02: $FE $03
    inc bc                                        ; $7C04: $03
    inc bc                                        ; $7C05: $03
    rst RST_38                                    ; $7C06: $FF
    db $FD                                        ; $7C07: $FD
    push hl                                       ; $7C08: $E5
    db $FC                                        ; $7C09: $FC
    db $10                                        ; $7C0A: $10
    ld a, [hl]                                    ; $7C0B: $7E
    rst RST_20                                    ; $7C0C: $E7
    inc c                                         ; $7C0D: $0C
    rst RST_38                                    ; $7C0E: $FF
    ld c, a                                       ; $7C0F: $4F
    inc bc                                        ; $7C10: $03
    inc bc                                        ; $7C11: $03
    inc bc                                        ; $7C12: $03
    ld b, l                                       ; $7C13: $45
    nop                                           ; $7C14: $00
    ld d, l                                       ; $7C15: $55
    nop                                           ; $7C16: $00
    nop                                           ; $7C17: $00
    ld a, a                                       ; $7C18: $7F
    nop                                           ; $7C19: $00
    ld a, b                                       ; $7C1A: $78
    nop                                           ; $7C1B: $00
    ld b, a                                       ; $7C1C: $47
    nop                                           ; $7C1D: $00
    inc de                                        ; $7C1E: $13
    inc a                                         ; $7C1F: $3C
    ccf                                           ; $7C20: $3F
    ld [hl], a                                    ; $7C21: $77
    ld d, b                                       ; $7C22: $50
    ld e, a                                       ; $7C23: $5F
    ld h, b                                       ; $7C24: $60
    and b                                         ; $7C25: $A0
    pop hl                                        ; $7C26: $E1
    and b                                         ; $7C27: $A0
    nop                                           ; $7C28: $00
    rrca                                          ; $7C29: $0F
    nop                                           ; $7C2A: $00
    ld sp, hl                                     ; $7C2B: $F9
    cp $CF                                        ; $7C2C: $FE $CF
    ldh a, [rIE]                                  ; $7C2E: $F0 $FF
    pop hl                                        ; $7C30: $E1
    ld [hl], b                                    ; $7C31: $70
    dec d                                         ; $7C32: $15
    ld bc, $F38B                                  ; $7C33: $01 $8B $F3
    db $FD                                        ; $7C36: $FD
    ld bc, $6011                                  ; $7C37: $01 $11 $60
    db $FC                                        ; $7C3A: $FC
    ld [hl], b                                    ; $7C3B: $70
    ld h, b                                       ; $7C3C: $60
    inc bc                                        ; $7C3D: $03
    db $ED                                        ; $7C3E: $ED
    ld c, $97                                     ; $7C3F: $0E $97
    jr jr_031_7BC5                                ; $7C41: $18 $82

    pop af                                        ; $7C43: $F1
    ret nz                                        ; $7C44: $C0

    ret z                                         ; $7C45: $C8

    db $EC                                        ; $7C46: $EC
    ldh [c], a                                    ; $7C47: $E2
    add b                                         ; $7C48: $80
    nop                                           ; $7C49: $00
    ld a, [hl]                                    ; $7C4A: $7E
    add c                                         ; $7C4B: $81
    nop                                           ; $7C4C: $00
    or a                                          ; $7C4D: $B7
    rst RST_08                                    ; $7C4E: $CF
    ei                                            ; $7C4F: $FB
    rlca                                          ; $7C50: $07
    rst RST_30                                    ; $7C51: $F7
    rrca                                          ; $7C52: $0F
    pop af                                        ; $7C53: $F1
    add hl, bc                                    ; $7C54: $09
    ld [bc], a                                    ; $7C55: $02
    ld a, $03                                     ; $7C56: $3E $03
    rst RST_38                                    ; $7C58: $FF
    inc de                                        ; $7C59: $13
    ld bc, $117F                                  ; $7C5A: $01 $7F $11
    ld a, $40                                     ; $7C5D: $3E $40
    ccf                                           ; $7C5F: $3F
    pop af                                        ; $7C60: $F1
    add b                                         ; $7C61: $80
    nop                                           ; $7C62: $00
    ld h, b                                       ; $7C63: $60
    inc b                                         ; $7C64: $04
    cp a                                          ; $7C65: $BF
    or l                                          ; $7C66: $B5
    nop                                           ; $7C67: $00
    rst RST_18                                    ; $7C68: $DF
    ld [bc], a                                    ; $7C69: $02
    pop af                                        ; $7C6A: $F1
    cp $0A                                        ; $7C6B: $FE $0A
    ld hl, sp+$00                                 ; $7C6D: $F8 $00
    ld l, d                                       ; $7C6F: $6A
    ld a, a                                       ; $7C70: $7F
    ldh a, [rNR31]                                ; $7C71: $F0 $1B
    ld a, h                                       ; $7C73: $7C
    db $10                                        ; $7C74: $10
    rst RST_38                                    ; $7C75: $FF
    db $10                                        ; $7C76: $10
    db $FC                                        ; $7C77: $FC
    add b                                         ; $7C78: $80
    db $10                                        ; $7C79: $10
    ei                                            ; $7C7A: $FB
    inc bc                                        ; $7C7B: $03
    push af                                       ; $7C7C: $F5
    ld b, $CB                                     ; $7C7D: $06 $CB
    inc c                                         ; $7C7F: $0C
    or a                                          ; $7C80: $B7
    ld bc, $5F38                                  ; $7C81: $01 $38 $5F
    ld h, b                                       ; $7C84: $60
    cp a                                          ; $7C85: $BF
    ret nz                                        ; $7C86: $C0

    ld l, a                                       ; $7C87: $6F
    ld [hl], b                                    ; $7C88: $70
    ld sp, $7F00                                  ; $7C89: $31 $00 $7F
    add b                                         ; $7C8C: $80
    rst RST_38                                    ; $7C8D: $FF
    nop                                           ; $7C8E: $00
    cp $01                                        ; $7C8F: $FE $01
    db $FD                                        ; $7C91: $FD
    inc bc                                        ; $7C92: $03
    nop                                           ; $7C93: $00
    ei                                            ; $7C94: $FB
    rlca                                          ; $7C95: $07
    or $0E                                        ; $7C96: $F6 $0E
    db $EC                                        ; $7C98: $EC
    inc e                                         ; $7C99: $1C
    ret c                                         ; $7C9A: $D8

    jr c, jr_031_7C9D                             ; $7C9B: $38 $00

jr_031_7C9D:
    or e                                          ; $7C9D: $B3
    ld [hl], b                                    ; $7C9E: $70
    ld h, a                                       ; $7C9F: $67
    ldh [$FFCF], a                                ; $7CA0: $E0 $CF
    ret nz                                        ; $7CA2: $C0

    sbc a                                         ; $7CA3: $9F
    add b                                         ; $7CA4: $80
    inc e                                         ; $7CA5: $1C
    ccf                                           ; $7CA6: $3F
    nop                                           ; $7CA7: $00
    ld a, a                                       ; $7CA8: $7F
    db $10                                        ; $7CA9: $10
    and b                                         ; $7CAA: $A0

jr_031_7CAB:
    db $10                                        ; $7CAB: $10
    rlca                                          ; $7CAC: $07
    rrca                                          ; $7CAD: $0F
    dec d                                         ; $7CAE: $15
    jp $C11F                                      ; $7CAF: $C3 $1F $C1


    db $10                                        ; $7CB2: $10
    ldh [$FF50], a                                ; $7CB3: $E0 $50
    ldh a, [$FF80]                                ; $7CB5: $F0 $80
    dec e                                         ; $7CB7: $1D
    ld hl, sp+$01                                 ; $7CB8: $F8 $01
    cp $D0                                        ; $7CBA: $FE $D0
    add b                                         ; $7CBC: $80
    nop                                           ; $7CBD: $00
    rst RST_08                                    ; $7CBE: $CF
    nop                                           ; $7CBF: $00
    ld [hl], d                                    ; $7CC0: $72
    or $00                                        ; $7CC1: $F6 $00

jr_031_7CC3:
    sub b                                         ; $7CC3: $90
    nop                                           ; $7CC4: $00
    jr c, jr_031_7CC3                             ; $7CC5: $38 $FC

    ret nz                                        ; $7CC7: $C0

    db $FD                                        ; $7CC8: $FD
    ret nz                                        ; $7CC9: $C0

jr_031_7CCA:
    ld de, $19E0                                  ; $7CCA: $11 $E0 $19
    ldh [$FFE6], a                                ; $7CCD: $E0 $E6
    sub b                                         ; $7CCF: $90
    sub [hl]                                      ; $7CD0: $96
    ld [hl], b                                    ; $7CD1: $70
    ld h, d                                       ; $7CD2: $62
    halt                                          ; $7CD3: $76

jr_031_7CD4:
    ld d, b                                       ; $7CD4: $50
    ldh a, [rSC]                                  ; $7CD5: $F0 $02
    ld [hl], d                                    ; $7CD7: $72
    adc [hl]                                      ; $7CD8: $8E
    nop                                           ; $7CD9: $00
    cp [hl]                                       ; $7CDA: $BE
    and b                                         ; $7CDB: $A0
    nop                                           ; $7CDC: $00
    sbc $00                                       ; $7CDD: $DE $00
    ld a, e                                       ; $7CDF: $7B
    inc bc                                        ; $7CE0: $03
    ld [hl], l                                    ; $7CE1: $75
    ld b, $6B                                     ; $7CE2: $06 $6B
    nop                                           ; $7CE4: $00
    inc c                                         ; $7CE5: $0C

jr_031_7CE6:
    ld d, a                                       ; $7CE6: $57
    jr @+$31                                      ; $7CE7: $18 $2F

    jr nc, jr_031_7D4A                            ; $7CE9: $30 $5F

    ld h, b                                       ; $7CEB: $60
    ccf                                           ; $7CEC: $3F
    inc de                                        ; $7CED: $13
    ld b, b                                       ; $7CEE: $40
    ld a, a                                       ; $7CEF: $7F
    nop                                           ; $7CF0: $00
    db $10                                        ; $7CF1: $10
    add b                                         ; $7CF2: $80
    rst RST_38                                    ; $7CF3: $FF
    jr nc, @+$17                                  ; $7CF4: $30 $15

    rrca                                          ; $7CF6: $0F
    cp $01                                        ; $7CF7: $FE $01
    db $FD                                        ; $7CF9: $FD
    inc bc                                        ; $7CFA: $03
    ld d, b                                       ; $7CFB: $50
    db $10                                        ; $7CFC: $10
    ld h, b                                       ; $7CFD: $60
    rrca                                          ; $7CFE: $0F
    pop bc                                        ; $7CFF: $C1
    rrca                                          ; $7D00: $0F
    ld c, $C1                                     ; $7D01: $0E $C1
    jr nz, jr_031_7CCA                            ; $7D03: $20 $C5

    jr nc, jr_031_7CD4                            ; $7D05: $30 $CD

    stop                                          ; $7D07: $10 $00
    call z, $9C32                                 ; $7D09: $CC $32 $9C

jr_031_7D0C:
    ld h, d                                       ; $7D0C: $62
    cp h                                          ; $7D0D: $BC
    ld b, d                                       ; $7D0E: $42
    ld a, h                                       ; $7D0F: $7C
    add d                                         ; $7D10: $82
    ld bc, $021C                                  ; $7D11: $01 $1C $02
    ld e, [hl]                                    ; $7D14: $5E
    sbc $6E                                       ; $7D15: $DE $6E
    xor $AE                                       ; $7D17: $EE $AE
    jr nz, jr_031_7CAB                            ; $7D19: $20 $90

    ld de, $36D6                                  ; $7D1B: $11 $D6 $36
    ld de, $16F6                                  ; $7D1E: $11 $F6 $16
    ld [$201A], a                                 ; $7D21: $EA $1A $20
    ld a, a                                       ; $7D24: $7F
    nop                                           ; $7D25: $00
    dec e                                         ; $7D26: $1D
    ld a, [$F606]                                 ; $7D27: $FA $06 $F6
    ld c, $FC                                     ; $7D2A: $0E $FC
    nop                                           ; $7D2C: $00
    inc c                                         ; $7D2D: $0C
    jp hl                                         ; $7D2E: $E9


    jr jr_031_7D0C                                ; $7D2F: $18 $DB

    jr c, jr_031_7CE6                             ; $7D31: $38 $B3

    ld [hl], b                                    ; $7D33: $70
    rst RST_30                                    ; $7D34: $F7
    adc [hl]                                      ; $7D35: $8E
    db $10                                        ; $7D36: $10
    ld h, a                                       ; $7D37: $67
    ldh [rP1], a                                  ; $7D38: $E0 $00

jr_031_7D3A:
    rrca                                          ; $7D3A: $0F
    rrca                                          ; $7D3B: $0F
    ld c, $0C                                     ; $7D3C: $0E $0C
    ld b, b                                       ; $7D3E: $40
    jp nz, $2210                                  ; $7D3F: $C2 $10 $22

    add hl, bc                                    ; $7D42: $09
    ld b, h                                       ; $7D43: $44
    sbc c                                         ; $7D44: $99
    inc b                                         ; $7D45: $04
    or e                                          ; $7D46: $B3
    nop                                           ; $7D47: $00
    adc b                                         ; $7D48: $88
    db $E3                                        ; $7D49: $E3

jr_031_7D4A:
    sub b                                         ; $7D4A: $90
    ld c, e                                       ; $7D4B: $4B
    jr z, jr_031_7DA9                             ; $7D4C: $28 $5B

    jr jr_031_7D3A                                ; $7D4E: $18 $EA

    ld c, c                                       ; $7D50: $49
    ld a, [de]                                    ; $7D51: $1A
    ld de, $0CF4                                  ; $7D52: $11 $F4 $0C
    inc de                                        ; $7D55: $13
    ld a, [$1306]                                 ; $7D56: $FA $06 $13
    ld bc, $007F                                  ; $7D59: $01 $7F $00
    ld c, $71                                     ; $7D5C: $0E $71
    ld [hl], a                                    ; $7D5E: $77
    ld a, c                                       ; $7D5F: $79
    ld a, l                                       ; $7D60: $7D
    ld h, b                                       ; $7D61: $60
    ld c, c                                       ; $7D62: $49
    rrca                                          ; $7D63: $0F
    nop                                           ; $7D64: $00
    ld [hl], e                                    ; $7D65: $73
    inc bc                                        ; $7D66: $03
    ld d, b                                       ; $7D67: $50
    ld bc, $D07C                                  ; $7D68: $01 $7C $D0
    ld [$E0E7], sp                                ; $7D6B: $08 $E7 $E0
    jp Jump_000_00C0                              ; $7D6E: $C3 $C0 $00


    call c, $9F82                                 ; $7D71: $DC $82 $9F
    add b                                         ; $7D74: $80
    db $10                                        ; $7D75: $10
    cp a                                          ; $7D76: $BF
    ld [bc], a                                    ; $7D77: $02
    rra                                           ; $7D78: $1F
    ld [hl+], a                                   ; $7D79: $22
    ld l, a                                       ; $7D7A: $6F
    ld [hl], d                                    ; $7D7B: $72
    ld [hl], a                                    ; $7D7C: $77
    nop                                           ; $7D7D: $00
    jp hl                                         ; $7D7E: $E9


    add hl, de                                    ; $7D7F: $19
    jp nz, $803E                                  ; $7D80: $C2 $3E $80

    ld b, b                                       ; $7D83: $40
    ccf                                           ; $7D84: $3F
    nop                                           ; $7D85: $00
    pop bc                                        ; $7D86: $C1
    ldh [rLCDC], a                                ; $7D87: $E0 $40
    rst RST_18                                    ; $7D89: $DF
    ret nz                                        ; $7D8A: $C0

    rst RST_28                                    ; $7D8B: $EF
    ldh [$FFEE], a                                ; $7D8C: $E0 $EE
    db $10                                        ; $7D8E: $10
    ld d, h                                       ; $7D8F: $54
    rst RST_38                                    ; $7D90: $FF
    nop                                           ; $7D91: $00
    ld a, a                                       ; $7D92: $7F
    nop                                           ; $7D93: $00
    scf                                           ; $7D94: $37
    nop                                           ; $7D95: $00
    ret nc                                        ; $7D96: $D0

    db $10                                        ; $7D97: $10
    adc d                                         ; $7D98: $8A
    ld de, $30B0                                  ; $7D99: $11 $B0 $30
    ld [hl], b                                    ; $7D9C: $70
    nop                                           ; $7D9D: $00
    ld sp, hl                                     ; $7D9E: $F9
    nop                                           ; $7D9F: $00
    or $04                                        ; $7DA0: $F6 $04
    ldh a, [c]                                    ; $7DA2: $F2
    add b                                         ; $7DA3: $80
    adc b                                         ; $7DA4: $88
    sbc l                                         ; $7DA5: $9D
    sbc b                                         ; $7DA6: $98
    ld h, b                                       ; $7DA7: $60
    db $FC                                        ; $7DA8: $FC

jr_031_7DA9:
    dec a                                         ; $7DA9: $3D
    nop                                           ; $7DAA: $00
    inc a                                         ; $7DAB: $3C
    ld a, l                                       ; $7DAC: $7D
    ld a, h                                       ; $7DAD: $7C
    ld a, [$F7F8]                                 ; $7DAE: $FA $F8 $F7
    ldh a, [$FF9B]                                ; $7DB1: $F0 $9B
    inc b                                         ; $7DB3: $04
    ld e, b                                       ; $7DB4: $58
    cp e                                          ; $7DB5: $BB
    jr c, jr_031_7DF3                             ; $7DB6: $38 $3B

    cp b                                          ; $7DB8: $B8
    inc de                                        ; $7DB9: $13
    dec a                                         ; $7DBA: $3D
    cp h                                          ; $7DBB: $BC
    nop                                           ; $7DBC: $00
    dec e                                         ; $7DBD: $1D
    ld e, h                                       ; $7DBE: $5C
    sbc l                                         ; $7DBF: $9D
    inc e                                         ; $7DC0: $1C
    ld hl, sp+$06                                 ; $7DC1: $F8 $06
    db $FC                                        ; $7DC3: $FC
    ld [bc], a                                    ; $7DC4: $02
    sbc e                                         ; $7DC5: $9B
    dec d                                         ; $7DC6: $15
    cp $00                                        ; $7DC7: $FE $00
    ld sp, $40D1                                  ; $7DC9: $31 $D1 $40
    ld d, b                                       ; $7DCC: $50
    jr nz, jr_031_7DEE                            ; $7DCD: $20 $1F

    ccf                                           ; $7DCF: $3F
    inc c                                         ; $7DD0: $0C
    ld a, a                                       ; $7DD1: $7F
    dec d                                         ; $7DD2: $15
    and b                                         ; $7DD3: $A0
    nop                                           ; $7DD4: $00
    jr nz, jr_031_7DD7                            ; $7DD5: $20 $00

jr_031_7DD7:
    dec b                                         ; $7DD7: $05
    ld a, b                                       ; $7DD8: $78
    ei                                            ; $7DD9: $FB
    ld a, h                                       ; $7DDA: $7C
    db $FD                                        ; $7DDB: $FD
    cp $00                                        ; $7DDC: $FE $00
    rst RST_38                                    ; $7DDE: $FF
    ld b, $A8                                     ; $7DDF: $06 $A8
    pop af                                        ; $7DE1: $F1
    ldh [rSC], a                                  ; $7DE2: $E0 $02
    ld h, b                                       ; $7DE4: $60
    db $10                                        ; $7DE5: $10
    ld c, $5E                                     ; $7DE6: $0E $5E
    sbc a                                         ; $7DE8: $9F
    inc [hl]                                      ; $7DE9: $34
    cp a                                          ; $7DEA: $BF
    ccf                                           ; $7DEB: $3F
    or b                                          ; $7DEC: $B0
    inc de                                        ; $7DED: $13

jr_031_7DEE:
    rst RST_38                                    ; $7DEE: $FF
    nop                                           ; $7DEF: $00
    ld a, b                                       ; $7DF0: $78
    db $FC                                        ; $7DF1: $FC
    dec [hl]                                      ; $7DF2: $35

jr_031_7DF3:
    nop                                           ; $7DF3: $00
    jr nc, jr_031_7E06                            ; $7DF4: $30 $10

    ld [bc], a                                    ; $7DF6: $02
    add b                                         ; $7DF7: $80
    nop                                           ; $7DF8: $00
    cp [hl]                                       ; $7DF9: $BE
    nop                                           ; $7DFA: $00
    ld d, l                                       ; $7DFB: $55
    cp a                                          ; $7DFC: $BF
    nop                                           ; $7DFD: $00
    adc a                                         ; $7DFE: $8F
    ld d, b                                       ; $7DFF: $50
    rra                                           ; $7E00: $1F
    or d                                          ; $7E01: $B2
    ccf                                           ; $7E02: $3F
    nop                                           ; $7E03: $00
    adc b                                         ; $7E04: $88
    ld d, b                                       ; $7E05: $50

jr_031_7E06:
    ld e, a                                       ; $7E06: $5F
    rrca                                          ; $7E07: $0F
    ld l, a                                       ; $7E08: $6F
    db $10                                        ; $7E09: $10
    cpl                                           ; $7E0A: $2F
    add e                                         ; $7E0B: $83
    and e                                         ; $7E0C: $A3
    inc bc                                        ; $7E0D: $03
    db $DD                                        ; $7E0E: $DD
    inc e                                         ; $7E0F: $1C
    inc a                                         ; $7E10: $3C
    dec a                                         ; $7E11: $3D

Call_031_7E12:
    db $FC                                        ; $7E12: $FC
    db $FD                                        ; $7E13: $FD
    dec d                                         ; $7E14: $15
    ld bc, $30C0                                  ; $7E15: $01 $C0 $30
    nop                                           ; $7E18: $00
    ldh a, [c]                                    ; $7E19: $F2
    ld c, $E4                                     ; $7E1A: $0E $E4
    inc e                                         ; $7E1C: $1C
    jp z, RST_38                                  ; $7E1D: $CA $38 $00

    sub [hl]                                      ; $7E20: $96
    ld [hl], b                                    ; $7E21: $70
    ld l, $E0                                     ; $7E22: $2E $E0
    ld e, [hl]                                    ; $7E24: $5E
    ret nz                                        ; $7E25: $C0

    cp h                                          ; $7E26: $BC
    add b                                         ; $7E27: $80
    ld [bc], a                                    ; $7E28: $02
    ld h, d                                       ; $7E29: $62
    ld [bc], a                                    ; $7E2A: $02
    ld b, e                                       ; $7E2B: $43
    ld a, a                                       ; $7E2C: $7F
    ld a, [hl]                                    ; $7E2D: $7E
    ld bc, $0020                                  ; $7E2E: $01 $20 $00
    ret nc                                        ; $7E31: $D0

    rla                                           ; $7E32: $17
    ld bc, $009F                                  ; $7E33: $01 $9F $00
    ld l, a                                       ; $7E36: $6F
    rst RST_28                                    ; $7E37: $EF
    rst RST_10                                    ; $7E38: $D7
    scf                                           ; $7E39: $37
    nop                                           ; $7E3A: $00
    db $EB                                        ; $7E3B: $EB
    dec de                                        ; $7E3C: $1B
    ei                                            ; $7E3D: $FB
    dec bc                                        ; $7E3E: $0B
    push af                                       ; $7E3F: $F5
    dec c                                         ; $7E40: $0D
    db $FD                                        ; $7E41: $FD
    dec b                                         ; $7E42: $05
    add d                                         ; $7E43: $82
    pop af                                        ; $7E44: $F1
    rra                                           ; $7E45: $1F
    ld a, a                                       ; $7E46: $7F
    adc a                                         ; $7E47: $8F
    cp a                                          ; $7E48: $BF
    add b                                         ; $7E49: $80
    db $10                                        ; $7E4A: $10
    ret nz                                        ; $7E4B: $C0

    ld d, $CE                                     ; $7E4C: $16 $CE
    ldh [$FFE1], a                                ; $7E4E: $E0 $E1
    db $10                                        ; $7E50: $10
    rst RST_28                                    ; $7E51: $EF
    ld de, $9FF1                                  ; $7E52: $11 $F1 $9F
    and b                                         ; $7E55: $A0
    or b                                          ; $7E56: $B0
    sub a                                         ; $7E57: $97
    db $10                                        ; $7E58: $10
    dec bc                                        ; $7E59: $0B
    ld a, a                                       ; $7E5A: $7F
    dec b                                         ; $7E5B: $05
    ccf                                           ; $7E5C: $3F
    ld [bc], a                                    ; $7E5D: $02
    inc d                                         ; $7E5E: $14
    rst RST_08                                    ; $7E5F: $CF
    ld bc, $C0F3                                  ; $7E60: $01 $F3 $C0
    db $FC                                        ; $7E63: $FC
    pop af                                        ; $7E64: $F1
    ret nz                                        ; $7E65: $C0

    call z, $E101                                 ; $7E66: $CC $01 $E1
    db $E3                                        ; $7E69: $E3
    db $E4                                        ; $7E6A: $E4
    db $ED                                        ; $7E6B: $ED
    and $EE                                       ; $7E6C: $E6 $EE
    ldh [c], a                                    ; $7E6E: $E2
    db $10                                        ; $7E6F: $10
    ld l, d                                       ; $7E70: $6A
    ld h, d                                       ; $7E71: $62
    db $10                                        ; $7E72: $10
    ret nz                                        ; $7E73: $C0

    ld b, $F1                                     ; $7E74: $06 $F1
    cp $00                                        ; $7E76: $FE $00
    ld a, a                                       ; $7E78: $7F
    and c                                         ; $7E79: $A1
    nop                                           ; $7E7A: $00
    cp a                                          ; $7E7B: $BF
    nop                                           ; $7E7C: $00
    ld e, a                                       ; $7E7D: $5F
    rst RST_18                                    ; $7E7E: $DF
    ld l, a                                       ; $7E7F: $6F
    rst RST_28                                    ; $7E80: $EF
    inc de                                        ; $7E81: $13
    xor h                                         ; $7E82: $AC
    pop af                                        ; $7E83: $F1
    ld e, $00                                     ; $7E84: $1E $00
    cp $0A                                        ; $7E86: $FE $0A
    pop af                                        ; $7E88: $F1
    daa                                           ; $7E89: $27
    ret nz                                        ; $7E8A: $C0

    ld d, l                                       ; $7E8B: $55
    rst RST_38                                    ; $7E8C: $FF
    nop                                           ; $7E8D: $00
    ld a, a                                       ; $7E8E: $7F
    nop                                           ; $7E8F: $00
    scf                                           ; $7E90: $37
    nop                                           ; $7E91: $00
    db $10                                        ; $7E92: $10
    ld bc, $1402                                  ; $7E93: $01 $02 $14
    jr nc, jr_031_7ECE                            ; $7E96: $30 $36

    ld [hl], b                                    ; $7E98: $70
    halt                                          ; $7E99: $76
    ld sp, hl                                     ; $7E9A: $F9
    nop                                           ; $7E9B: $00
    nop                                           ; $7E9C: $00
    rst RST_38                                    ; $7E9D: $FF
    ld bc, $0101                                  ; $7E9E: $01 $01 $01
    ld bc, $0101                                  ; $7EA1: $01 $01 $01
    ld bc, $5500                                  ; $7EA4: $01 $00 $55
    ldh a, [rP1]                                  ; $7EA7: $F0 $00
    add b                                         ; $7EA9: $80
    nop                                           ; $7EAA: $00
    sbc b                                         ; $7EAB: $98
    nop                                           ; $7EAC: $00
    ld hl, sp+$00                                 ; $7EAD: $F8 $00
    ld e, a                                       ; $7EAF: $5F
    inc a                                         ; $7EB0: $3C
    nop                                           ; $7EB1: $00
    ld a, h                                       ; $7EB2: $7C
    nop                                           ; $7EB3: $00
    dec bc                                        ; $7EB4: $0B
    dec de                                        ; $7EB5: $1B
    inc hl                                        ; $7EB6: $23
    ld bc, $01FF                                  ; $7EB7: $01 $FF $01
    ld bc, $0101                                  ; $7EBA: $01 $01 $01
    ld bc, $7F01                                  ; $7EBD: $01 $01 $7F
    ld a, a                                       ; $7EC0: $7F
    rst RST_30                                    ; $7EC1: $F7

jr_031_7EC2:
    ld a, a                                       ; $7EC2: $7F
    ld a, l                                       ; $7EC3: $7D
    ld a, a                                       ; $7EC4: $7F
    ld a, a                                       ; $7EC5: $7F
    ld a, c                                       ; $7EC6: $79
    nop                                           ; $7EC7: $00
    dec de                                        ; $7EC8: $1B
    inc hl                                        ; $7EC9: $23
    rst RST_38                                    ; $7ECA: $FF
    ld bc, $0101                                  ; $7ECB: $01 $01 $01

jr_031_7ECE:
    ld bc, $0101                                  ; $7ECE: $01 $01 $01
    ld bc, $FF63                                  ; $7ED1: $01 $63 $FF
    ld a, a                                       ; $7ED4: $7F
    ld a, a                                       ; $7ED5: $7F
    ld [hl], e                                    ; $7ED6: $73
    ld a, a                                       ; $7ED7: $7F
    ld a, a                                       ; $7ED8: $7F
    dec bc                                        ; $7ED9: $0B
    dec de                                        ; $7EDA: $1B
    inc hl                                        ; $7EDB: $23
    rst RST_38                                    ; $7EDC: $FF
    ld bc, $0101                                  ; $7EDD: $01 $01 $01
    ld bc, $0101                                  ; $7EE0: $01 $01 $01
    ld bc, $D563                                  ; $7EE3: $01 $63 $D5
    ld a, a                                       ; $7EE6: $7F
    ld a, a                                       ; $7EE7: $7F
    add hl, de                                    ; $7EE8: $19
    nop                                           ; $7EE9: $00
    ld e, $00                                     ; $7EEA: $1E $00
    ccf                                           ; $7EEC: $3F
    nop                                           ; $7EED: $00
    rst RST_38                                    ; $7EEE: $FF
    inc de                                        ; $7EEF: $13
    dec de                                        ; $7EF0: $1B
    inc hl                                        ; $7EF1: $23
    ld bc, $0101                                  ; $7EF2: $01 $01 $01
    ld bc, $FE01                                  ; $7EF5: $01 $01 $FE
    ld bc, $6301                                  ; $7EF8: $01 $01 $63
    ld a, a                                       ; $7EFB: $7F
    ld a, a                                       ; $7EFC: $7F
    ld [hl], e                                    ; $7EFD: $73
    ld a, a                                       ; $7EFE: $7F
    db $FC                                        ; $7EFF: $FC
    rst RST_38                                    ; $7F00: $FF
    nop                                           ; $7F01: $00
    dec bc                                        ; $7F02: $0B
    dec de                                        ; $7F03: $1B
    inc hl                                        ; $7F04: $23
    ld bc, $0101                                  ; $7F05: $01 $01 $01
    ld bc, $01E0                                  ; $7F08: $01 $E0 $01
    ld bc, $EC01                                  ; $7F0B: $01 $01 $EC
    inc e                                         ; $7F0E: $1C
    reti                                          ; $7F0F: $D9


    jr c, jr_031_7EC2                             ; $7F10: $38 $B0

    nop                                           ; $7F12: $00
    ld [hl], b                                    ; $7F13: $70
    ldh [$FF63], a                                ; $7F14: $E0 $63
    ld b, e                                       ; $7F16: $43
    rst RST_00                                    ; $7F17: $C7
    add $CF                                       ; $7F18: $C6 $CF
    add h                                         ; $7F1A: $84
    ld l, a                                       ; $7F1B: $6F
    sub [hl]                                      ; $7F1C: $96
    adc h                                         ; $7F1D: $8C
    ld d, $1F                                     ; $7F1E: $16 $1F
    jp z, $9003                                   ; $7F20: $CA $03 $90

    inc bc                                        ; $7F23: $03
    ld b, b                                       ; $7F24: $40
    ld a, [hl]                                    ; $7F25: $7E
    ld e, h                                       ; $7F26: $5C
    cp h                                          ; $7F27: $BC
    rst RST_18                                    ; $7F28: $DF
    ld e, [hl]                                    ; $7F29: $5E
    xor a                                         ; $7F2A: $AF
    ld l, l                                       ; $7F2B: $6D
    rst RST_10                                    ; $7F2C: $D7
    ld l, b                                       ; $7F2D: $68
    dec [hl]                                      ; $7F2E: $35
    ld [hl-], a                                   ; $7F2F: $32
    ld b, d                                       ; $7F30: $42
    inc bc                                        ; $7F31: $03
    jr nz, jr_031_7F35                            ; $7F32: $20 $01

    pop bc                                        ; $7F34: $C1

jr_031_7F35:
    ret nz                                        ; $7F35: $C0

    ld hl, $02FE                                  ; $7F36: $21 $FE $02
    ld b, $05                                     ; $7F39: $06 $05
    inc [hl]                                      ; $7F3B: $34
    ld h, [hl]                                    ; $7F3C: $66
    or $03                                        ; $7F3D: $F6 $03
    xor a                                         ; $7F3F: $AF
    jr jr_031_7FB1                                ; $7F40: $18 $6F

    ld [hl], $0F                                  ; $7F42: $36 $0F
    ld [bc], a                                    ; $7F44: $02
    ld [$D7CC], sp                                ; $7F45: $08 $CC $D7
    cp a                                          ; $7F48: $BF
    nop                                           ; $7F49: $00
    sbc a                                         ; $7F4A: $9F
    nop                                           ; $7F4B: $00
    db $DB                                        ; $7F4C: $DB
    ld bc, $3E0C                                  ; $7F4D: $01 $0C $3E
    inc c                                         ; $7F50: $0C
    xor c                                         ; $7F51: $A9
    cp [hl]                                       ; $7F52: $BE

Jump_031_7F53:
    rst RST_28                                    ; $7F53: $EF
    ld c, b                                       ; $7F54: $48
    ld [hl], a                                    ; $7F55: $77
    add d                                         ; $7F56: $82
    dec sp                                        ; $7F57: $3B
    cp b                                          ; $7F58: $B8
    ld [bc], a                                    ; $7F59: $02
    cp a                                          ; $7F5A: $BF
    cp d                                          ; $7F5B: $BA
    ld a, l                                       ; $7F5C: $7D
    push bc                                       ; $7F5D: $C5
    ld bc, $5422                                  ; $7F5E: $01 $22 $54
    nop                                           ; $7F61: $00
    add hl, bc                                    ; $7F62: $09
    ld d, [hl]                                    ; $7F63: $56
    ei                                            ; $7F64: $FB
    nop                                           ; $7F65: $00
    ld a, [$F90E]                                 ; $7F66: $FA $0E $F9
    inc b                                         ; $7F69: $04
    ld [$FFF1], sp                                ; $7F6A: $08 $F1 $FF
    ld [$BF02], sp                                ; $7F6D: $08 $02 $BF
    cp a                                          ; $7F70: $BF
    cp a                                          ; $7F71: $BF
    cp a                                          ; $7F72: $BF
    cp a                                          ; $7F73: $BF
    nop                                           ; $7F74: $00
    xor c                                         ; $7F75: $A9
    cp [hl]                                       ; $7F76: $BE
    adc a                                         ; $7F77: $8F
    ld d, h                                       ; $7F78: $54
    ld e, $6E                                     ; $7F79: $1E $6E
    db $10                                        ; $7F7B: $10
    halt                                          ; $7F7C: $76
    add $77                                       ; $7F7D: $C6 $77
    ld a, b                                       ; $7F7F: $78
    cp a                                          ; $7F80: $BF
    cp d                                          ; $7F81: $BA
    jp $BFBE                                      ; $7F82: $C3 $BE $BF


    cp a                                          ; $7F85: $BF
    cp a                                          ; $7F86: $BF
    cp $BF                                        ; $7F87: $FE $BF
    cp a                                          ; $7F89: $BF
    cp a                                          ; $7F8A: $BF
    cp a                                          ; $7F8B: $BF
    nop                                           ; $7F8C: $00
    sub l                                         ; $7F8D: $95
    nop                                           ; $7F8E: $00
    add e                                         ; $7F8F: $83
    rst RST_20                                    ; $7F90: $E7
    ld [bc], a                                    ; $7F91: $02
    ld [de], a                                    ; $7F92: $12
    inc b                                         ; $7F93: $04
    inc h                                         ; $7F94: $24
    ld [hl], l                                    ; $7F95: $75
    ld b, [hl]                                    ; $7F96: $46
    ret z                                         ; $7F97: $C8

    jp $C3FF                                      ; $7F98: $C3 $FF $C3


    ld e, b                                       ; $7F9B: $58
    nop                                           ; $7F9C: $00
    rra                                           ; $7F9D: $1F
    ld bc, $BF01                                  ; $7F9E: $01 $01 $BF
    cp a                                          ; $7FA1: $BF
    rst RST_38                                    ; $7FA2: $FF
    cp a                                          ; $7FA3: $BF
    cp a                                          ; $7FA4: $BF
    cp a                                          ; $7FA5: $BF
    cp a                                          ; $7FA6: $BF
    cp a                                          ; $7FA7: $BF
    ld bc, $55BF                                  ; $7FA8: $01 $BF $55
    rst RST_38                                    ; $7FAB: $FF
    add hl, bc                                    ; $7FAC: $09
    cp a                                          ; $7FAD: $BF
    cp a                                          ; $7FAE: $BF
    cp a                                          ; $7FAF: $BF
    cp a                                          ; $7FB0: $BF

jr_031_7FB1:
    cp a                                          ; $7FB1: $BF
    cp a                                          ; $7FB2: $BF
    cp a                                          ; $7FB3: $BF
    rst RST_38                                    ; $7FB4: $FF
    cp a                                          ; $7FB5: $BF
    cp a                                          ; $7FB6: $BF
    cp a                                          ; $7FB7: $BF
    cp a                                          ; $7FB8: $BF
    cp a                                          ; $7FB9: $BF
    ld l, h                                       ; $7FBA: $6C
    cp a                                          ; $7FBB: $BF
    cp [hl]                                       ; $7FBC: $BE
    ld a, a                                       ; $7FBD: $7F
    jr @-$40                                      ; $7FBE: $18 $BE

    cp d                                          ; $7FC0: $BA
    ld d, b                                       ; $7FC1: $50
    inc c                                         ; $7FC2: $0C
    ld l, h                                       ; $7FC3: $6C
    cp a                                          ; $7FC4: $BF
    cp a                                          ; $7FC5: $BF
    rst RST_38                                    ; $7FC6: $FF
    cp a                                          ; $7FC7: $BF
    cp a                                          ; $7FC8: $BF
    cp a                                          ; $7FC9: $BF
    cp a                                          ; $7FCA: $BF
    cp a                                          ; $7FCB: $BF
    cp a                                          ; $7FCC: $BF
    cp a                                          ; $7FCD: $BF
    ld bc, $01F6                                  ; $7FCE: $01 $F6 $01
    ld b, d                                       ; $7FD1: $42
    ld [bc], a                                    ; $7FD2: $02
    ld a, [de]                                    ; $7FD3: $1A
    rlca                                          ; $7FD4: $07
    ld a, [de]                                    ; $7FD5: $1A
    inc b                                         ; $7FD6: $04
    ld b, c                                       ; $7FD7: $41
    ld a, a                                       ; $7FD8: $7F
    cp l                                          ; $7FD9: $BD
    xor l                                         ; $7FDA: $AD
    rla                                           ; $7FDB: $17
    ld bc, $0101                                  ; $7FDC: $01 $01 $01
    cp a                                          ; $7FDF: $BF
    cp a                                          ; $7FE0: $BF
    rst RST_38                                    ; $7FE1: $FF
    cp a                                          ; $7FE2: $BF
    cp a                                          ; $7FE3: $BF
    cp a                                          ; $7FE4: $BF
    cp a                                          ; $7FE5: $BF
    cp a                                          ; $7FE6: $BF
    ld bc, $55BF                                  ; $7FE7: $01 $BF $55
    db $FC                                        ; $7FEA: $FC
    add hl, bc                                    ; $7FEB: $09
    cp a                                          ; $7FEC: $BF
    cp a                                          ; $7FED: $BF
    cp a                                          ; $7FEE: $BF
    cp a                                          ; $7FEF: $BF
    cp a                                          ; $7FF0: $BF
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
