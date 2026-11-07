; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    ld bc, $0100                                  ; $4000: $01 $00 $01
    nop                                           ; $4003: $00
    ld bc, $0000                                  ; $4004: $01 $00 $00
    nop                                           ; $4007: $00
    nop                                           ; $4008: $00
    nop                                           ; $4009: $00
    inc bc                                        ; $400A: $03
    nop                                           ; $400B: $00
    dec b                                         ; $400C: $05
    ld [bc], a                                    ; $400D: $02
    rlca                                          ; $400E: $07
    nop                                           ; $400F: $00
    nop                                           ; $4010: $00
    nop                                           ; $4011: $00
    nop                                           ; $4012: $00
    nop                                           ; $4013: $00
    nop                                           ; $4014: $00
    nop                                           ; $4015: $00
    nop                                           ; $4016: $00
    nop                                           ; $4017: $00
    nop                                           ; $4018: $00
    nop                                           ; $4019: $00
    nop                                           ; $401A: $00
    nop                                           ; $401B: $00
    nop                                           ; $401C: $00
    nop                                           ; $401D: $00
    nop                                           ; $401E: $00
    nop                                           ; $401F: $00
    inc bc                                        ; $4020: $03
    nop                                           ; $4021: $00
    inc c                                         ; $4022: $0C
    inc bc                                        ; $4023: $03
    dec de                                        ; $4024: $1B
    inc c                                         ; $4025: $0C
    inc a                                         ; $4026: $3C
    dec bc                                        ; $4027: $0B
    ld l, a                                       ; $4028: $6F
    inc d                                         ; $4029: $14
    call z, $DF73                                 ; $402A: $CC $73 $DF
    ld h, h                                       ; $402D: $64
    rra                                           ; $402E: $1F
    db $EB                                        ; $402F: $EB
    ld a, a                                       ; $4030: $7F
    add h                                         ; $4031: $84
    sbc a                                         ; $4032: $9F
    ld l, e                                       ; $4033: $6B
    cp a                                          ; $4034: $BF
    ld b, h                                       ; $4035: $44
    rst RST_38                                    ; $4036: $FF
    inc bc                                        ; $4037: $03
    rst RST_30                                    ; $4038: $F7
    nop                                           ; $4039: $00
    ld [hl], e                                    ; $403A: $73
    add b                                         ; $403B: $80
    ldh [c], a                                    ; $403C: $E2
    ld bc, $0003                                  ; $403D: $01 $03 $00
    ret nz                                        ; $4040: $C0

    nop                                           ; $4041: $00
    pop bc                                        ; $4042: $C1
    add b                                         ; $4043: $80

jr_00D_4044:
    cp $01                                        ; $4044: $FE $01

jr_00D_4046:
    ldh a, [$FFEF]                                ; $4046: $F0 $EF

jr_00D_4048:
    ldh a, [rIF]                                  ; $4048: $F0 $0F

jr_00D_404A:
    ld hl, sp-$09                                 ; $404A: $F8 $F7
    pop af                                        ; $404C: $F1
    ld c, $E0                                     ; $404D: $0E $E0
    rst RST_18                                    ; $404F: $DF
    ldh a, [rIF]                                  ; $4050: $F0 $0F
    db $FC                                        ; $4052: $FC
    di                                            ; $4053: $F3
    ld hl, sp+$07                                 ; $4054: $F8 $07
    ld hl, sp-$39                                 ; $4056: $F8 $C7
    di                                            ; $4058: $F3
    inc c                                         ; $4059: $0C
    db $FC                                        ; $405A: $FC
    nop                                           ; $405B: $00

jr_00D_405C:
    sbc b                                         ; $405C: $98
    ld h, b                                       ; $405D: $60

jr_00D_405E:
    ldh a, [rP1]                                  ; $405E: $F0 $00
    ld b, b                                       ; $4060: $40
    ccf                                           ; $4061: $3F
    add b                                         ; $4062: $80
    ld a, a                                       ; $4063: $7F
    nop                                           ; $4064: $00
    rst RST_38                                    ; $4065: $FF
    ld [$10F7], sp                                ; $4066: $08 $F7 $10
    rst RST_28                                    ; $4069: $EF
    db $10                                        ; $406A: $10
    rst RST_28                                    ; $406B: $EF
    db $10                                        ; $406C: $10
    rst RST_28                                    ; $406D: $EF
    sub b                                         ; $406E: $90
    ld l, a                                       ; $406F: $6F
    ld c, b                                       ; $4070: $48
    or a                                          ; $4071: $B7
    ld c, a                                       ; $4072: $4F
    or b                                          ; $4073: $B0
    ld [hl], b                                    ; $4074: $70
    add b                                         ; $4075: $80
    pop bc                                        ; $4076: $C1
    nop                                           ; $4077: $00
    inc bc                                        ; $4078: $03
    nop                                           ; $4079: $00
    rrca                                          ; $407A: $0F
    nop                                           ; $407B: $00
    inc d                                         ; $407C: $14
    dec bc                                        ; $407D: $0B
    rra                                           ; $407E: $1F
    nop                                           ; $407F: $00
    ld b, b                                       ; $4080: $40
    add b                                         ; $4081: $80
    jr nz, jr_00D_4044                            ; $4082: $20 $C0

    jr nz, jr_00D_4046                            ; $4084: $20 $C0

    jr nz, jr_00D_4048                            ; $4086: $20 $C0

    jr nc, jr_00D_404A                            ; $4088: $30 $C0

    jr z, jr_00D_405C                             ; $408A: $28 $D0

    jr z, jr_00D_405E                             ; $408C: $28 $D0

    halt                                          ; $408E: $76
    adc b                                         ; $408F: $88
    ld [de], a                                    ; $4090: $12
    db $EC                                        ; $4091: $EC
    ld [de], a                                    ; $4092: $12
    db $EC                                        ; $4093: $EC
    xor c                                         ; $4094: $A9
    ld b, [hl]                                    ; $4095: $46
    daa                                           ; $4096: $27
    ret nz                                        ; $4097: $C0

    rst RST_18                                    ; $4098: $DF
    nop                                           ; $4099: $00
    rst RST_20                                    ; $409A: $E7

jr_00D_409B:
    jr jr_00D_409B                                ; $409B: $18 $FE

    nop                                           ; $409D: $00
    add b                                         ; $409E: $80
    nop                                           ; $409F: $00
    nop                                           ; $40A0: $00
    nop                                           ; $40A1: $00
    nop                                           ; $40A2: $00

jr_00D_40A3:
    nop                                           ; $40A3: $00
    nop                                           ; $40A4: $00
    nop                                           ; $40A5: $00
    nop                                           ; $40A6: $00
    nop                                           ; $40A7: $00
    ld e, $00                                     ; $40A8: $1E $00
    daa                                           ; $40AA: $27
    ld e, $7E                                     ; $40AB: $1E $7E
    inc l                                         ; $40AD: $2C
    db $FC                                        ; $40AE: $FC
    ld b, b                                       ; $40AF: $40
    ldh [rLCDC], a                                ; $40B0: $E0 $40
    ld hl, sp+$60                                 ; $40B2: $F8 $60
    ld a, h                                       ; $40B4: $7C
    jr jr_00D_40D5                                ; $40B5: $18 $1E

    inc b                                         ; $40B7: $04
    rlca                                          ; $40B8: $07
    ld [bc], a                                    ; $40B9: $02

jr_00D_40BA:
    rlca                                          ; $40BA: $07
    ld [bc], a                                    ; $40BB: $02
    ccf                                           ; $40BC: $3F
    ld [bc], a                                    ; $40BD: $02
    jp $013C                                      ; $40BE: $C3 $3C $01


    nop                                           ; $40C1: $00
    rlca                                          ; $40C2: $07
    nop                                           ; $40C3: $00
    ld c, $05                                     ; $40C4: $0E $05
    inc c                                         ; $40C6: $0C
    rlca                                          ; $40C7: $07
    ld de, $170E                                  ; $40C8: $11 $0E $17
    ld [$001F], sp                                ; $40CB: $08 $1F $00
    add hl, bc                                    ; $40CE: $09
    ld b, $0B                                     ; $40CF: $06 $0B
    inc b                                         ; $40D1: $04
    rrca                                          ; $40D2: $0F
    nop                                           ; $40D3: $00
    rra                                           ; $40D4: $1F

jr_00D_40D5:
    nop                                           ; $40D5: $00
    dec hl                                        ; $40D6: $2B
    inc d                                         ; $40D7: $14
    ccf                                           ; $40D8: $3F
    nop                                           ; $40D9: $00
    nop                                           ; $40DA: $00
    nop                                           ; $40DB: $00
    nop                                           ; $40DC: $00
    nop                                           ; $40DD: $00
    nop                                           ; $40DE: $00
    nop                                           ; $40DF: $00
    jr c, jr_00D_40E2                             ; $40E0: $38 $00

jr_00D_40E2:
    ld e, b                                       ; $40E2: $58
    jr nc, jr_00D_40A3                            ; $40E3: $30 $BE

    ld b, b                                       ; $40E5: $40
    rst RST_20                                    ; $40E6: $E7
    sbc h                                         ; $40E7: $9C
    call c, $FEB3                                 ; $40E8: $DC $B3 $FE
    ld d, c                                       ; $40EB: $51
    db $D3                                        ; $40EC: $D3
    ld l, $FE                                     ; $40ED: $2E $FE
    pop de                                        ; $40EF: $D1
    rst RST_38                                    ; $40F0: $FF
    xor [hl]                                      ; $40F1: $AE
    rst RST_38                                    ; $40F2: $FF
    ld d, b                                       ; $40F3: $50
    cp $A9                                        ; $40F4: $FE $A9
    rst RST_38                                    ; $40F6: $FF
    ld e, h                                       ; $40F7: $5C
    rst RST_38                                    ; $40F8: $FF
    jr nz, jr_00D_40BA                            ; $40F9: $20 $BF

    jr jr_00D_411C                                ; $40FB: $18 $1F

    nop                                           ; $40FD: $00
    inc d                                         ; $40FE: $14
    dec bc                                        ; $40FF: $0B
    ld b, $01                                     ; $4100: $06 $01
    ld [$3007], sp                                ; $4102: $08 $07 $30
    rrca                                          ; $4105: $0F
    ret nz                                        ; $4106: $C0

    ccf                                           ; $4107: $3F
    nop                                           ; $4108: $00
    rst RST_38                                    ; $4109: $FF
    ld bc, $11FE                                  ; $410A: $01 $FE $11
    xor $09                                       ; $410D: $EE $09
    or $05                                        ; $410F: $F6 $05
    ld a, [$FB04]                                 ; $4111: $FA $04 $FB

jr_00D_4114:
    ld b, h                                       ; $4114: $44
    cp e                                          ; $4115: $BB
    adc a                                         ; $4116: $8F
    ld [hl], b                                    ; $4117: $70
    db $10                                        ; $4118: $10
    ldh [$FFE0], a                                ; $4119: $E0 $E0
    nop                                           ; $411B: $00

jr_00D_411C:
    ret nz                                        ; $411C: $C0

    nop                                           ; $411D: $00
    ret nz                                        ; $411E: $C0

    nop                                           ; $411F: $00
    dec b                                         ; $4120: $05
    ld hl, sp+$02                                 ; $4121: $F8 $02
    db $FC                                        ; $4123: $FC
    ld [bc], a                                    ; $4124: $02
    db $FC                                        ; $4125: $FC
    add d                                         ; $4126: $82
    ld a, h                                       ; $4127: $7C
    inc bc                                        ; $4128: $03
    db $FC                                        ; $4129: $FC
    ld [bc], a                                    ; $412A: $02
    db $FD                                        ; $412B: $FD
    ld [bc], a                                    ; $412C: $02
    db $FD                                        ; $412D: $FD
    rlca                                          ; $412E: $07
    ld hl, sp-$7F                                 ; $412F: $F8 $81
    ld a, [hl]                                    ; $4131: $7E
    pop af                                        ; $4132: $F1
    ld c, $0A                                     ; $4133: $0E $0A
    inc b                                         ; $4135: $04
    ld [de], a                                    ; $4136: $12
    inc c                                         ; $4137: $0C
    ld a, $00                                     ; $4138: $3E $00
    ld a, a                                       ; $413A: $7F
    nop                                           ; $413B: $00
    and a                                         ; $413C: $A7
    ld e, b                                       ; $413D: $58
    db $FC                                        ; $413E: $FC
    nop                                           ; $413F: $00
    add $80                                       ; $4140: $C6 $80
    cp $44                                        ; $4142: $FE $44
    ld a, h                                       ; $4144: $7C
    jr c, @+$3A                                   ; $4145: $38 $38

    nop                                           ; $4147: $00
    nop                                           ; $4148: $00
    nop                                           ; $4149: $00
    add b                                         ; $414A: $80
    nop                                           ; $414B: $00
    add b                                         ; $414C: $80
    nop                                           ; $414D: $00
    ld h, b                                       ; $414E: $60
    add b                                         ; $414F: $80
    jr nz, @-$3E                                  ; $4150: $20 $C0

    jr nz, jr_00D_4114                            ; $4152: $20 $C0

    sbc b                                         ; $4154: $98
    ld h, b                                       ; $4155: $60
    ld a, b                                       ; $4156: $78
    nop                                           ; $4157: $00
    ld hl, sp+$00                                 ; $4158: $F8 $00
    jr nc, jr_00D_411C                            ; $415A: $30 $C0

    ldh a, [rP1]                                  ; $415C: $F0 $00
    nop                                           ; $415E: $00
    nop                                           ; $415F: $00
    nop                                           ; $4160: $00
    nop                                           ; $4161: $00
    nop                                           ; $4162: $00
    nop                                           ; $4163: $00
    nop                                           ; $4164: $00
    nop                                           ; $4165: $00
    nop                                           ; $4166: $00
    nop                                           ; $4167: $00
    nop                                           ; $4168: $00
    nop                                           ; $4169: $00
    nop                                           ; $416A: $00
    nop                                           ; $416B: $00
    nop                                           ; $416C: $00
    nop                                           ; $416D: $00
    nop                                           ; $416E: $00
    nop                                           ; $416F: $00
    nop                                           ; $4170: $00
    nop                                           ; $4171: $00
    nop                                           ; $4172: $00
    nop                                           ; $4173: $00
    nop                                           ; $4174: $00
    nop                                           ; $4175: $00
    nop                                           ; $4176: $00
    nop                                           ; $4177: $00
    inc bc                                        ; $4178: $03
    nop                                           ; $4179: $00
    rlca                                          ; $417A: $07
    inc bc                                        ; $417B: $03
    rst RST_38                                    ; $417C: $FF
    inc b                                         ; $417D: $04
    ld b, $F8                                     ; $417E: $06 $F8
    nop                                           ; $4180: $00
    nop                                           ; $4181: $00
    nop                                           ; $4182: $00
    nop                                           ; $4183: $00
    nop                                           ; $4184: $00
    nop                                           ; $4185: $00
    nop                                           ; $4186: $00
    nop                                           ; $4187: $00
    nop                                           ; $4188: $00
    nop                                           ; $4189: $00
    nop                                           ; $418A: $00
    nop                                           ; $418B: $00
    nop                                           ; $418C: $00
    nop                                           ; $418D: $00
    nop                                           ; $418E: $00
    nop                                           ; $418F: $00
    nop                                           ; $4190: $00
    nop                                           ; $4191: $00
    nop                                           ; $4192: $00
    nop                                           ; $4193: $00
    nop                                           ; $4194: $00
    nop                                           ; $4195: $00
    inc c                                         ; $4196: $0C
    nop                                           ; $4197: $00
    ld a, [bc]                                    ; $4198: $0A
    inc b                                         ; $4199: $04
    adc a                                         ; $419A: $8F
    ld b, $CF                                     ; $419B: $06 $CF
    add [hl]                                      ; $419D: $86
    rst RST_20                                    ; $419E: $E7
    ld b, d                                       ; $419F: $42
    ld a, [hl]                                    ; $41A0: $7E
    nop                                           ; $41A1: $00
    nop                                           ; $41A2: $00
    nop                                           ; $41A3: $00
    nop                                           ; $41A4: $00
    nop                                           ; $41A5: $00
    nop                                           ; $41A6: $00
    nop                                           ; $41A7: $00
    nop                                           ; $41A8: $00
    nop                                           ; $41A9: $00
    nop                                           ; $41AA: $00
    nop                                           ; $41AB: $00
    nop                                           ; $41AC: $00
    nop                                           ; $41AD: $00
    nop                                           ; $41AE: $00
    nop                                           ; $41AF: $00
    nop                                           ; $41B0: $00
    nop                                           ; $41B1: $00
    nop                                           ; $41B2: $00
    nop                                           ; $41B3: $00
    nop                                           ; $41B4: $00
    nop                                           ; $41B5: $00
    nop                                           ; $41B6: $00
    nop                                           ; $41B7: $00
    nop                                           ; $41B8: $00
    nop                                           ; $41B9: $00
    nop                                           ; $41BA: $00
    nop                                           ; $41BB: $00
    nop                                           ; $41BC: $00
    nop                                           ; $41BD: $00
    nop                                           ; $41BE: $00
    nop                                           ; $41BF: $00
    ld bc, $0300                                  ; $41C0: $01 $00 $03
    ld bc, $0304                                  ; $41C3: $01 $04 $03
    dec b                                         ; $41C6: $05
    ld [bc], a                                    ; $41C7: $02
    inc bc                                        ; $41C8: $03
    nop                                           ; $41C9: $00
    nop                                           ; $41CA: $00
    nop                                           ; $41CB: $00
    ld bc, $0200                                  ; $41CC: $01 $00 $02
    ld bc, $0102                                  ; $41CF: $01 $02 $01
    inc bc                                        ; $41D2: $03
    nop                                           ; $41D3: $00
    ld bc, $0200                                  ; $41D4: $01 $00 $02
    ld bc, $0003                                  ; $41D7: $01 $03 $00
    nop                                           ; $41DA: $00
    nop                                           ; $41DB: $00
    nop                                           ; $41DC: $00
    nop                                           ; $41DD: $00
    nop                                           ; $41DE: $00
    nop                                           ; $41DF: $00

jr_00D_41E0:
    rrca                                          ; $41E0: $0F
    nop                                           ; $41E1: $00
    inc sp                                        ; $41E2: $33
    ld c, $6F                                     ; $41E3: $0E $6F

jr_00D_41E5:
    jr nc, jr_00D_41E0                            ; $41E5: $30 $F9

    cpl                                           ; $41E7: $2F
    cp a                                          ; $41E8: $BF
    ret nc                                        ; $41E9: $D0

    inc a                                         ; $41EA: $3C
    rst RST_08                                    ; $41EB: $CF
    rst RST_38                                    ; $41EC: $FF
    db $10                                        ; $41ED: $10
    ld a, a                                       ; $41EE: $7F
    cpl                                           ; $41EF: $2F
    ld a, a                                       ; $41F0: $7F
    db $10                                        ; $41F1: $10
    rst RST_38                                    ; $41F2: $FF
    cpl                                           ; $41F3: $2F
    ld a, a                                       ; $41F4: $7F
    sub b                                         ; $41F5: $90
    rst RST_18                                    ; $41F6: $DF
    cpl                                           ; $41F7: $2F
    rst RST_38                                    ; $41F8: $FF
    nop                                           ; $41F9: $00
    ld hl, sp+$00                                 ; $41FA: $F8 $00
    or b                                          ; $41FC: $B0
    ld b, b                                       ; $41FD: $40
    pop af                                        ; $41FE: $F1
    nop                                           ; $41FF: $00
    inc bc                                        ; $4200: $03
    nop                                           ; $4201: $00
    cp h                                          ; $4202: $BC
    inc bc                                        ; $4203: $03
    ret nz                                        ; $4204: $C0

    cp a                                          ; $4205: $BF
    ret nz                                        ; $4206: $C0

    ccf                                           ; $4207: $3F
    ldh a, [c]                                    ; $4208: $F2
    call $1EE1                                    ; $4209: $CD $E1 $1E
    pop bc                                        ; $420C: $C1
    ld a, $E1                                     ; $420D: $3E $E1

jr_00D_420F:
    ld e, $F1                                     ; $420F: $1E $F1

jr_00D_4211:
    adc $D3                                       ; $4211: $CE $D3

jr_00D_4213:
    inc l                                         ; $4213: $2C
    ldh a, [c]                                    ; $4214: $F2

jr_00D_4215:
    inc c                                         ; $4215: $0C
    inc h                                         ; $4216: $24
    jr jr_00D_4295                                ; $4217: $18 $7C

    nop                                           ; $4219: $00
    db $FC                                        ; $421A: $FC
    nop                                           ; $421B: $00
    ld c, h                                       ; $421C: $4C
    or b                                          ; $421D: $B0
    ld hl, sp+$00                                 ; $421E: $F8 $00
    inc bc                                        ; $4220: $03
    nop                                           ; $4221: $00
    rra                                           ; $4222: $1F
    ld bc, $1EE1                                  ; $4223: $01 $E1 $1E
    nop                                           ; $4226: $00
    rst RST_38                                    ; $4227: $FF
    nop                                           ; $4228: $00
    rst RST_38                                    ; $4229: $FF
    nop                                           ; $422A: $00
    rst RST_38                                    ; $422B: $FF
    db $10                                        ; $422C: $10
    rst RST_28                                    ; $422D: $EF
    jr nz, jr_00D_420F                            ; $422E: $20 $DF

    jr nz, jr_00D_4211                            ; $4230: $20 $DF

    jr nz, jr_00D_4213                            ; $4232: $20 $DF

    jr nz, jr_00D_4215                            ; $4234: $20 $DF

    db $10                                        ; $4236: $10
    rst RST_28                                    ; $4237: $EF
    xor $01                                       ; $4238: $EE $01
    ld bc, $0100                                  ; $423A: $01 $00 $01
    nop                                           ; $423D: $00
    inc bc                                        ; $423E: $03
    nop                                           ; $423F: $00
    ldh [rP1], a                                  ; $4240: $E0 $00

jr_00D_4242:
    ld hl, sp-$20                                 ; $4242: $F8 $E0
    db $FC                                        ; $4244: $FC
    jr jr_00D_41E5                                ; $4245: $18 $9E

    inc b                                         ; $4247: $04
    ld b, a                                       ; $4248: $47
    add d                                         ; $4249: $82
    ld b, a                                       ; $424A: $47
    add d                                         ; $424B: $82
    ld b, a                                       ; $424C: $47
    add d                                         ; $424D: $82
    ld a, a                                       ; $424E: $7F
    add d                                         ; $424F: $82
    ld a, [hl]                                    ; $4250: $7E
    sbc h                                         ; $4251: $9C
    ld a, [hl]                                    ; $4252: $7E
    cp h                                          ; $4253: $BC
    db $FC                                        ; $4254: $FC
    jr c, jr_00D_4293                             ; $4255: $38 $3C

    ret nz                                        ; $4257: $C0

    inc h                                         ; $4258: $24
    ret c                                         ; $4259: $D8

    scf                                           ; $425A: $37
    ret z                                         ; $425B: $C8

    ld l, a                                       ; $425C: $6F
    add b                                         ; $425D: $80
    rst RST_28                                    ; $425E: $EF
    nop                                           ; $425F: $00
    ld a, a                                       ; $4260: $7F
    nop                                           ; $4261: $00
    and a                                         ; $4262: $A7
    ld e, b                                       ; $4263: $58
    db $FC                                        ; $4264: $FC
    nop                                           ; $4265: $00
    nop                                           ; $4266: $00
    nop                                           ; $4267: $00
    nop                                           ; $4268: $00
    nop                                           ; $4269: $00
    nop                                           ; $426A: $00
    nop                                           ; $426B: $00
    nop                                           ; $426C: $00
    nop                                           ; $426D: $00
    nop                                           ; $426E: $00
    nop                                           ; $426F: $00
    nop                                           ; $4270: $00
    nop                                           ; $4271: $00
    nop                                           ; $4272: $00
    nop                                           ; $4273: $00
    nop                                           ; $4274: $00
    nop                                           ; $4275: $00
    nop                                           ; $4276: $00
    nop                                           ; $4277: $00
    nop                                           ; $4278: $00
    nop                                           ; $4279: $00
    nop                                           ; $427A: $00
    nop                                           ; $427B: $00
    nop                                           ; $427C: $00
    nop                                           ; $427D: $00
    nop                                           ; $427E: $00
    nop                                           ; $427F: $00
    jr nc, jr_00D_4242                            ; $4280: $30 $C0

    ldh [rP1], a                                  ; $4282: $E0 $00
    nop                                           ; $4284: $00
    nop                                           ; $4285: $00
    nop                                           ; $4286: $00
    nop                                           ; $4287: $00
    nop                                           ; $4288: $00
    nop                                           ; $4289: $00
    nop                                           ; $428A: $00
    nop                                           ; $428B: $00
    nop                                           ; $428C: $00
    nop                                           ; $428D: $00
    nop                                           ; $428E: $00
    nop                                           ; $428F: $00
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    nop                                           ; $4292: $00

jr_00D_4293:
    nop                                           ; $4293: $00
    nop                                           ; $4294: $00

jr_00D_4295:
    nop                                           ; $4295: $00
    nop                                           ; $4296: $00
    nop                                           ; $4297: $00
    nop                                           ; $4298: $00
    nop                                           ; $4299: $00
    nop                                           ; $429A: $00
    nop                                           ; $429B: $00
    nop                                           ; $429C: $00
    nop                                           ; $429D: $00
    nop                                           ; $429E: $00
    nop                                           ; $429F: $00
    ld bc, $0000                                  ; $42A0: $01 $00 $00
    nop                                           ; $42A3: $00
    nop                                           ; $42A4: $00
    nop                                           ; $42A5: $00
    nop                                           ; $42A6: $00
    nop                                           ; $42A7: $00
    nop                                           ; $42A8: $00
    nop                                           ; $42A9: $00
    nop                                           ; $42AA: $00
    nop                                           ; $42AB: $00
    nop                                           ; $42AC: $00
    nop                                           ; $42AD: $00
    nop                                           ; $42AE: $00
    nop                                           ; $42AF: $00
    nop                                           ; $42B0: $00
    nop                                           ; $42B1: $00
    nop                                           ; $42B2: $00
    nop                                           ; $42B3: $00
    nop                                           ; $42B4: $00
    nop                                           ; $42B5: $00
    nop                                           ; $42B6: $00
    nop                                           ; $42B7: $00
    nop                                           ; $42B8: $00
    nop                                           ; $42B9: $00
    nop                                           ; $42BA: $00
    nop                                           ; $42BB: $00
    nop                                           ; $42BC: $00
    nop                                           ; $42BD: $00
    nop                                           ; $42BE: $00
    nop                                           ; $42BF: $00
    rra                                           ; $42C0: $1F
    dec b                                         ; $42C1: $05
    scf                                           ; $42C2: $37
    ld a, [bc]                                    ; $42C3: $0A
    ld h, a                                       ; $42C4: $67
    add hl, sp                                    ; $42C5: $39
    ld l, a                                       ; $42C6: $6F
    ld [hl-], a                                   ; $42C7: $32
    adc a                                         ; $42C8: $8F
    ld [hl], l                                    ; $42C9: $75
    cp a                                          ; $42CA: $BF
    ld b, d                                       ; $42CB: $42
    rst RST_08                                    ; $42CC: $CF
    dec [hl]                                      ; $42CD: $35
    ld e, a                                       ; $42CE: $5F
    ld [hl+], a                                   ; $42CF: $22
    ld h, a                                       ; $42D0: $67
    ld bc, $0003                                  ; $42D1: $01 $03 $00
    ld bc, $0600                                  ; $42D4: $01 $00 $06
    ld bc, $031C                                  ; $42D7: $01 $1C $03
    ld a, a                                       ; $42DA: $7F
    nop                                           ; $42DB: $00
    and [hl]                                      ; $42DC: $A6
    ld e, b                                       ; $42DD: $58
    cp $00                                        ; $42DE: $FE $00
    ld a, $F0                                     ; $42E0: $3E $F0
    ld sp, hl                                     ; $42E2: $F9
    ld b, $9C                                     ; $42E3: $06 $9C
    ei                                            ; $42E5: $FB
    ld hl, sp+$07                                 ; $42E6: $F8 $07
    ld hl, sp-$19                                 ; $42E8: $F8 $E7
    db $FC                                        ; $42EA: $FC
    inc bc                                        ; $42EB: $03
    db $FC                                        ; $42EC: $FC
    ei                                            ; $42ED: $FB
    ld hl, sp+$07                                 ; $42EE: $F8 $07
    ldh a, [$FFEF]                                ; $42F0: $F0 $EF
    add sp, $17                                   ; $42F2: $E8 $17
    rrca                                          ; $42F4: $0F
    ldh a, [rNR32]                                ; $42F5: $F0 $1C
    db $E3                                        ; $42F7: $E3
    ld l, a                                       ; $42F8: $6F
    add b                                         ; $42F9: $80
    sub e                                         ; $42FA: $93
    inc c                                         ; $42FB: $0C
    rra                                           ; $42FC: $1F
    nop                                           ; $42FD: $00
    nop                                           ; $42FE: $00
    nop                                           ; $42FF: $00
    rra                                           ; $4300: $1F
    nop                                           ; $4301: $00
    ldh [$FF1F], a                                ; $4302: $E0 $1F
    nop                                           ; $4304: $00
    rst RST_38                                    ; $4305: $FF
    nop                                           ; $4306: $00
    rst RST_38                                    ; $4307: $FF
    nop                                           ; $4308: $00
    rst RST_38                                    ; $4309: $FF
    nop                                           ; $430A: $00
    rst RST_38                                    ; $430B: $FF
    inc b                                         ; $430C: $04
    ei                                            ; $430D: $FB
    inc b                                         ; $430E: $04
    ei                                            ; $430F: $FB
    ld a, $C1                                     ; $4310: $3E $C1
    jp $0200                                      ; $4312: $C3 $00 $02


    ld bc, $0081                                  ; $4315: $01 $81 $00
    add a                                         ; $4318: $87
    nop                                           ; $4319: $00
    adc c                                         ; $431A: $89
    ld b, $0F                                     ; $431B: $06 $0F
    nop                                           ; $431D: $00
    nop                                           ; $431E: $00
    nop                                           ; $431F: $00
    ret nz                                        ; $4320: $C0

    nop                                           ; $4321: $00
    ccf                                           ; $4322: $3F
    ret nz                                        ; $4323: $C0

    rra                                           ; $4324: $1F
    rst RST_28                                    ; $4325: $EF
    rrca                                          ; $4326: $0F
    ldh a, [$FF08]                                ; $4327: $F0 $08
    ldh a, [$FF08]                                ; $4329: $F0 $08
    ldh a, [rNR32]                                ; $432B: $F0 $1C
    ldh [rDIV], a                                 ; $432D: $E0 $04
    ld hl, sp-$7E                                 ; $432F: $F8 $82
    ld a, h                                       ; $4331: $7C
    ld a, c                                       ; $4332: $79
    add [hl]                                      ; $4333: $86
    daa                                           ; $4334: $27
    pop bc                                        ; $4335: $C1
    rst RST_00                                    ; $4336: $C7
    ld bc, $00CF                                  ; $4337: $01 $CF $00
    sub h                                         ; $433A: $94
    dec bc                                        ; $433B: $0B
    rra                                           ; $433C: $1F
    nop                                           ; $433D: $00
    nop                                           ; $433E: $00
    nop                                           ; $433F: $00
    ret nz                                        ; $4340: $C0

    nop                                           ; $4341: $00
    ldh [$FFC0], a                                ; $4342: $E0 $C0
    ldh a, [rNR41]                                ; $4344: $F0 $20
    jr c, jr_00D_4358                             ; $4346: $38 $10

    jr c, jr_00D_435A                             ; $4348: $38 $10

    jr c, jr_00D_435C                             ; $434A: $38 $10

    ld hl, sp+$10                                 ; $434C: $F8 $10
    ldh a, [$FFE0]                                ; $434E: $F0 $E0
    ldh a, [$FFE0]                                ; $4350: $F0 $E0
    ldh [$FFC0], a                                ; $4352: $E0 $C0
    ret nz                                        ; $4354: $C0

    nop                                           ; $4355: $00
    add b                                         ; $4356: $80
    nop                                           ; $4357: $00

jr_00D_4358:
    add b                                         ; $4358: $80
    nop                                           ; $4359: $00

jr_00D_435A:
    nop                                           ; $435A: $00
    nop                                           ; $435B: $00

jr_00D_435C:
    nop                                           ; $435C: $00
    nop                                           ; $435D: $00
    nop                                           ; $435E: $00
    nop                                           ; $435F: $00
    nop                                           ; $4360: $00
    nop                                           ; $4361: $00
    nop                                           ; $4362: $00
    nop                                           ; $4363: $00
    nop                                           ; $4364: $00
    nop                                           ; $4365: $00
    nop                                           ; $4366: $00
    nop                                           ; $4367: $00
    nop                                           ; $4368: $00
    nop                                           ; $4369: $00
    nop                                           ; $436A: $00
    nop                                           ; $436B: $00
    nop                                           ; $436C: $00
    nop                                           ; $436D: $00
    nop                                           ; $436E: $00
    nop                                           ; $436F: $00
    nop                                           ; $4370: $00
    nop                                           ; $4371: $00
    nop                                           ; $4372: $00
    nop                                           ; $4373: $00
    nop                                           ; $4374: $00
    nop                                           ; $4375: $00
    nop                                           ; $4376: $00
    nop                                           ; $4377: $00
    nop                                           ; $4378: $00
    nop                                           ; $4379: $00
    ld e, $00                                     ; $437A: $1E $00
    ld h, a                                       ; $437C: $67
    ld e, $DF                                     ; $437D: $1E $DF
    ld h, b                                       ; $437F: $60
    nop                                           ; $4380: $00
    nop                                           ; $4381: $00
    nop                                           ; $4382: $00
    nop                                           ; $4383: $00
    nop                                           ; $4384: $00
    nop                                           ; $4385: $00
    nop                                           ; $4386: $00
    nop                                           ; $4387: $00
    nop                                           ; $4388: $00
    nop                                           ; $4389: $00
    nop                                           ; $438A: $00
    nop                                           ; $438B: $00
    ld bc, $0300                                  ; $438C: $01 $00 $03
    nop                                           ; $438F: $00
    ld b, $01                                     ; $4390: $06 $01
    inc c                                         ; $4392: $0C
    rlca                                          ; $4393: $07
    dec c                                         ; $4394: $0D
    ld b, $11                                     ; $4395: $06 $11
    ld c, $17                                     ; $4397: $0E $17
    ld [$0619], sp                                ; $4399: $08 $19 $06
    dec bc                                        ; $439C: $0B
    inc b                                         ; $439D: $04
    inc c                                         ; $439E: $0C
    nop                                           ; $439F: $00
    inc a                                         ; $43A0: $3C
    nop                                           ; $43A1: $00
    adc $3C                                       ; $43A2: $CE $3C
    cp [hl]                                       ; $43A4: $BE
    ret nz                                        ; $43A5: $C0

    rst RST_20                                    ; $43A6: $E7
    cp [hl]                                       ; $43A7: $BE
    rst RST_38                                    ; $43A8: $FF
    ld b, b                                       ; $43A9: $40
    di                                            ; $43AA: $F3
    ccf                                           ; $43AB: $3F
    rst RST_38                                    ; $43AC: $FF
    ld b, b                                       ; $43AD: $40
    rst RST_38                                    ; $43AE: $FF
    cp [hl]                                       ; $43AF: $BE
    rst RST_38                                    ; $43B0: $FF
    ld b, b                                       ; $43B1: $40
    cp $BD                                        ; $43B2: $FE $BD
    rst RST_38                                    ; $43B4: $FF
    ld b, b                                       ; $43B5: $40
    cp $3D                                        ; $43B6: $FE $3D
    ld a, l                                       ; $43B8: $7D
    ld [bc], a                                    ; $43B9: $02
    inc bc                                        ; $43BA: $03
    nop                                           ; $43BB: $00
    ld bc, $0200                                  ; $43BC: $01 $00 $02
    ld bc, $0000                                  ; $43BF: $01 $00 $00
    nop                                           ; $43C2: $00
    nop                                           ; $43C3: $00
    nop                                           ; $43C4: $00
    nop                                           ; $43C5: $00
    jp Jump_000_3C00                              ; $43C6: $C3 $00 $3C


    jp Jump_00D_7F80                              ; $43C9: $C3 $80 $7F


    nop                                           ; $43CC: $00
    rst RST_38                                    ; $43CD: $FF
    add c                                         ; $43CE: $81
    ld a, [hl]                                    ; $43CF: $7E
    ld bc, $01FE                                  ; $43D0: $01 $FE $01
    cp $05                                        ; $43D3: $FE $05
    ld a, [$7887]                                 ; $43D5: $FA $87 $78
    ld b, h                                       ; $43D8: $44
    cp b                                          ; $43D9: $B8
    db $E4                                        ; $43DA: $E4
    jr jr_00D_4425                                ; $43DB: $18 $48

    or b                                          ; $43DD: $B0
    ret z                                         ; $43DE: $C8

    jr nc, jr_00D_43E4                            ; $43DF: $30 $03

    nop                                           ; $43E1: $00
    rst RST_20                                    ; $43E2: $E7
    inc bc                                        ; $43E3: $03

jr_00D_43E4:
    rra                                           ; $43E4: $1F
    db $E4                                        ; $43E5: $E4
    ld b, $F8                                     ; $43E6: $06 $F8
    ld [bc], a                                    ; $43E8: $02
    db $FC                                        ; $43E9: $FC
    ld [bc], a                                    ; $43EA: $02
    db $FC                                        ; $43EB: $FC
    ld [bc], a                                    ; $43EC: $02
    db $FC                                        ; $43ED: $FC
    ld [bc], a                                    ; $43EE: $02
    db $FC                                        ; $43EF: $FC
    ld [bc], a                                    ; $43F0: $02
    db $FC                                        ; $43F1: $FC
    add d                                         ; $43F2: $82
    ld a, h                                       ; $43F3: $7C
    ld [hl], c                                    ; $43F4: $71
    ld c, $51                                     ; $43F5: $0E $51
    ld l, $29                                     ; $43F7: $2E $29
    ld d, $3D                                     ; $43F9: $16 $3D
    ld [bc], a                                    ; $43FB: $02
    ld a, a                                       ; $43FC: $7F
    nop                                           ; $43FD: $00
    rst RST_38                                    ; $43FE: $FF
    nop                                           ; $43FF: $00
    ld a, a                                       ; $4400: $7F
    nop                                           ; $4401: $00
    rst RST_38                                    ; $4402: $FF
    nop                                           ; $4403: $00
    and [hl]                                      ; $4404: $A6
    ld e, b                                       ; $4405: $58
    cp $00                                        ; $4406: $FE $00
    nop                                           ; $4408: $00
    nop                                           ; $4409: $00
    nop                                           ; $440A: $00
    nop                                           ; $440B: $00
    nop                                           ; $440C: $00
    nop                                           ; $440D: $00
    nop                                           ; $440E: $00
    nop                                           ; $440F: $00
    nop                                           ; $4410: $00
    nop                                           ; $4411: $00
    nop                                           ; $4412: $00
    nop                                           ; $4413: $00
    nop                                           ; $4414: $00
    nop                                           ; $4415: $00
    nop                                           ; $4416: $00
    nop                                           ; $4417: $00
    nop                                           ; $4418: $00
    nop                                           ; $4419: $00
    nop                                           ; $441A: $00
    nop                                           ; $441B: $00
    nop                                           ; $441C: $00
    nop                                           ; $441D: $00
    nop                                           ; $441E: $00
    nop                                           ; $441F: $00
    db $D3                                        ; $4420: $D3
    inc l                                         ; $4421: $2C
    ld a, [hl]                                    ; $4422: $7E
    nop                                           ; $4423: $00
    nop                                           ; $4424: $00

jr_00D_4425:
    nop                                           ; $4425: $00
    nop                                           ; $4426: $00
    nop                                           ; $4427: $00
    nop                                           ; $4428: $00
    nop                                           ; $4429: $00
    nop                                           ; $442A: $00
    nop                                           ; $442B: $00
    nop                                           ; $442C: $00
    nop                                           ; $442D: $00
    nop                                           ; $442E: $00
    nop                                           ; $442F: $00
    nop                                           ; $4430: $00
    nop                                           ; $4431: $00
    nop                                           ; $4432: $00
    nop                                           ; $4433: $00
    nop                                           ; $4434: $00
    nop                                           ; $4435: $00
    nop                                           ; $4436: $00
    nop                                           ; $4437: $00
    nop                                           ; $4438: $00
    nop                                           ; $4439: $00
    nop                                           ; $443A: $00
    nop                                           ; $443B: $00
    nop                                           ; $443C: $00
    nop                                           ; $443D: $00
    nop                                           ; $443E: $00
    nop                                           ; $443F: $00
    nop                                           ; $4440: $00
    nop                                           ; $4441: $00
    nop                                           ; $4442: $00
    nop                                           ; $4443: $00
    nop                                           ; $4444: $00
    nop                                           ; $4445: $00
    nop                                           ; $4446: $00
    nop                                           ; $4447: $00
    nop                                           ; $4448: $00
    nop                                           ; $4449: $00
    nop                                           ; $444A: $00
    nop                                           ; $444B: $00
    nop                                           ; $444C: $00
    nop                                           ; $444D: $00
    inc c                                         ; $444E: $0C
    nop                                           ; $444F: $00
    adc d                                         ; $4450: $8A
    inc b                                         ; $4451: $04
    rst RST_08                                    ; $4452: $CF
    add [hl]                                      ; $4453: $86
    rst RST_08                                    ; $4454: $CF
    add [hl]                                      ; $4455: $86
    rst RST_20                                    ; $4456: $E7
    ld b, d                                       ; $4457: $42
    db $E3                                        ; $4458: $E3
    ld b, b                                       ; $4459: $40
    ld a, a                                       ; $445A: $7F
    ld [hl+], a                                   ; $445B: $22
    ld a, $1C                                     ; $445C: $3E $1C
    inc e                                         ; $445E: $1C
    nop                                           ; $445F: $00
    rra                                           ; $4460: $1F
    dec b                                         ; $4461: $05
    scf                                           ; $4462: $37
    ld a, [bc]                                    ; $4463: $0A
    ld h, a                                       ; $4464: $67
    add hl, sp                                    ; $4465: $39
    ld l, a                                       ; $4466: $6F
    ld [hl-], a                                   ; $4467: $32
    adc a                                         ; $4468: $8F
    ld [hl], l                                    ; $4469: $75
    cp a                                          ; $446A: $BF
    ld b, d                                       ; $446B: $42
    rst RST_08                                    ; $446C: $CF
    dec [hl]                                      ; $446D: $35
    ld e, a                                       ; $446E: $5F
    ld [hl+], a                                   ; $446F: $22
    ld h, a                                       ; $4470: $67
    ld bc, $0003                                  ; $4471: $01 $03 $00
    inc b                                         ; $4474: $04
    inc bc                                        ; $4475: $03
    rrca                                          ; $4476: $0F
    nop                                           ; $4477: $00
    rra                                           ; $4478: $1F
    nop                                           ; $4479: $00
    daa                                           ; $447A: $27
    jr jr_00D_44B9                                ; $447B: $18 $3C

    nop                                           ; $447D: $00
    nop                                           ; $447E: $00
    nop                                           ; $447F: $00
    ld a, $F0                                     ; $4480: $3E $F0
    ld sp, hl                                     ; $4482: $F9
    ld b, $9C                                     ; $4483: $06 $9C

jr_00D_4485:
    ei                                            ; $4485: $FB
    ld hl, sp+$07                                 ; $4486: $F8 $07
    ld hl, sp-$19                                 ; $4488: $F8 $E7
    db $FC                                        ; $448A: $FC
    inc bc                                        ; $448B: $03
    db $FC                                        ; $448C: $FC
    ei                                            ; $448D: $FB
    ld hl, sp+$07                                 ; $448E: $F8 $07
    or $E9                                        ; $4490: $F6 $E9
    pop af                                        ; $4492: $F1
    ld c, $6E                                     ; $4493: $0E $6E
    add c                                         ; $4495: $81
    add e                                         ; $4496: $83

jr_00D_4497:
    nop                                           ; $4497: $00
    rrca                                          ; $4498: $0F

jr_00D_4499:
    nop                                           ; $4499: $00
    rra                                           ; $449A: $1F

jr_00D_449B:
    nop                                           ; $449B: $00
    add hl, hl                                    ; $449C: $29
    ld d, $3F                                     ; $449D: $16 $3F
    nop                                           ; $449F: $00
    rra                                           ; $44A0: $1F
    nop                                           ; $44A1: $00
    ldh [$FF1F], a                                ; $44A2: $E0 $1F
    nop                                           ; $44A4: $00
    rst RST_38                                    ; $44A5: $FF
    nop                                           ; $44A6: $00
    rst RST_38                                    ; $44A7: $FF
    ld [bc], a                                    ; $44A8: $02
    db $FD                                        ; $44A9: $FD
    inc b                                         ; $44AA: $04
    ei                                            ; $44AB: $FB
    jr z, jr_00D_4485                             ; $44AC: $28 $D7

    jr jr_00D_4497                                ; $44AE: $18 $E7

    jr jr_00D_4499                                ; $44B0: $18 $E7

    jr jr_00D_449B                                ; $44B2: $18 $E7

    daa                                           ; $44B4: $27
    ret nz                                        ; $44B5: $C0

    ld b, d                                       ; $44B6: $42
    add c                                         ; $44B7: $81
    adc a                                         ; $44B8: $8F

jr_00D_44B9:
    nop                                           ; $44B9: $00
    cp a                                          ; $44BA: $BF
    nop                                           ; $44BB: $00
    db $D3                                        ; $44BC: $D3
    inc l                                         ; $44BD: $2C
    ld a, [hl]                                    ; $44BE: $7E
    nop                                           ; $44BF: $00
    rst RST_18                                    ; $44C0: $DF
    ld bc, $DE3F                                  ; $44C1: $01 $3F $DE
    ld e, $E0                                     ; $44C4: $1E $E0
    ld [$08F0], sp                                ; $44C6: $08 $F0 $08
    ldh a, [$FF08]                                ; $44C9: $F0 $08
    ldh a, [$FF0C]                                ; $44CB: $F0 $0C
    ldh a, [rNR14]                                ; $44CD: $F0 $14
    add sp, -$6E                                  ; $44CF: $E8 $92
    ld l, h                                       ; $44D1: $6C
    add hl, de                                    ; $44D2: $19
    and $27                                       ; $44D3: $E6 $27
    ret nz                                        ; $44D5: $C0

    rst RST_08                                    ; $44D6: $CF
    nop                                           ; $44D7: $00
    sub d                                         ; $44D8: $92
    inc c                                         ; $44D9: $0C
    ld e, $00                                     ; $44DA: $1E $00
    nop                                           ; $44DC: $00
    nop                                           ; $44DD: $00
    nop                                           ; $44DE: $00
    nop                                           ; $44DF: $00
    nop                                           ; $44E0: $00
    nop                                           ; $44E1: $00
    nop                                           ; $44E2: $00
    nop                                           ; $44E3: $00
    nop                                           ; $44E4: $00
    nop                                           ; $44E5: $00
    nop                                           ; $44E6: $00
    nop                                           ; $44E7: $00
    nop                                           ; $44E8: $00
    nop                                           ; $44E9: $00
    nop                                           ; $44EA: $00
    nop                                           ; $44EB: $00
    nop                                           ; $44EC: $00
    nop                                           ; $44ED: $00
    nop                                           ; $44EE: $00
    nop                                           ; $44EF: $00
    nop                                           ; $44F0: $00
    nop                                           ; $44F1: $00
    nop                                           ; $44F2: $00
    nop                                           ; $44F3: $00
    nop                                           ; $44F4: $00
    nop                                           ; $44F5: $00
    nop                                           ; $44F6: $00
    nop                                           ; $44F7: $00
    nop                                           ; $44F8: $00
    nop                                           ; $44F9: $00
    ld e, $00                                     ; $44FA: $1E $00
    ld h, a                                       ; $44FC: $67
    ld e, $DF                                     ; $44FD: $1E $DF
    ld h, b                                       ; $44FF: $60
    nop                                           ; $4500: $00
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    nop                                           ; $4503: $00
    nop                                           ; $4504: $00
    nop                                           ; $4505: $00
    nop                                           ; $4506: $00
    nop                                           ; $4507: $00
    nop                                           ; $4508: $00
    nop                                           ; $4509: $00
    nop                                           ; $450A: $00
    nop                                           ; $450B: $00
    nop                                           ; $450C: $00
    nop                                           ; $450D: $00
    nop                                           ; $450E: $00
    nop                                           ; $450F: $00
    jr c, jr_00D_4512                             ; $4510: $38 $00

jr_00D_4512:
    ld a, h                                       ; $4512: $7C
    jr c, jr_00D_4593                             ; $4513: $38 $7E

    inc h                                         ; $4515: $24
    rst RST_28                                    ; $4516: $EF
    ld b, d                                       ; $4517: $42
    rst RST_28                                    ; $4518: $EF
    ld b, [hl]                                    ; $4519: $46
    rst RST_08                                    ; $451A: $CF
    add [hl]                                      ; $451B: $86
    add a                                         ; $451C: $87
    ld [bc], a                                    ; $451D: $02
    ld [bc], a                                    ; $451E: $02
    nop                                           ; $451F: $00
    ld bc, $0300                                  ; $4520: $01 $00 $03
    ld bc, $0103                                  ; $4523: $01 $03 $01
    inc b                                         ; $4526: $04
    inc bc                                        ; $4527: $03
    dec b                                         ; $4528: $05
    ld [bc], a                                    ; $4529: $02
    ld b, $01                                     ; $452A: $06 $01
    ld c, $01                                     ; $452C: $0E $01
    rla                                           ; $452E: $17
    ld [$001F], sp                                ; $452F: $08 $1F $00
    nop                                           ; $4532: $00
    nop                                           ; $4533: $00
    nop                                           ; $4534: $00
    nop                                           ; $4535: $00
    nop                                           ; $4536: $00
    nop                                           ; $4537: $00
    nop                                           ; $4538: $00
    nop                                           ; $4539: $00
    nop                                           ; $453A: $00
    nop                                           ; $453B: $00
    nop                                           ; $453C: $00
    nop                                           ; $453D: $00
    nop                                           ; $453E: $00
    nop                                           ; $453F: $00

jr_00D_4540:
    rrca                                          ; $4540: $0F
    nop                                           ; $4541: $00
    inc sp                                        ; $4542: $33
    ld c, $6F                                     ; $4543: $0E $6F
    jr nc, jr_00D_4540                            ; $4545: $30 $F9

    cpl                                           ; $4547: $2F
    cp a                                          ; $4548: $BF
    ld d, b                                       ; $4549: $50
    add hl, sp                                    ; $454A: $39
    rst RST_08                                    ; $454B: $CF
    ld a, a                                       ; $454C: $7F
    sub b                                         ; $454D: $90
    ld a, a                                       ; $454E: $7F
    xor a                                         ; $454F: $AF
    rst RST_38                                    ; $4550: $FF
    db $10                                        ; $4551: $10
    ld a, a                                       ; $4552: $7F
    xor a                                         ; $4553: $AF
    rst RST_38                                    ; $4554: $FF
    db $10                                        ; $4555: $10
    rst RST_38                                    ; $4556: $FF
    ld [$059A], sp                                ; $4557: $08 $9A $05
    rrca                                          ; $455A: $0F
    nop                                           ; $455B: $00
    nop                                           ; $455C: $00
    nop                                           ; $455D: $00
    nop                                           ; $455E: $00
    nop                                           ; $455F: $00
    ld bc, $0200                                  ; $4560: $01 $00 $02
    ld bc, $030C                                  ; $4563: $01 $0C $03
    ldh a, [rIF]                                  ; $4566: $F0 $0F
    ret nz                                        ; $4568: $C0

    cp a                                          ; $4569: $BF
    ret nz                                        ; $456A: $C0

    ccf                                           ; $456B: $3F
    ldh [$FFDF], a                                ; $456C: $E0 $DF
    ret nz                                        ; $456E: $C0

    ccf                                           ; $456F: $3F
    add d                                         ; $4570: $82
    ld a, l                                       ; $4571: $7D
    pop hl                                        ; $4572: $E1
    ld e, $F1                                     ; $4573: $1E $F1
    adc $C1                                       ; $4575: $CE $C1
    ld a, $E1                                     ; $4577: $3E $E1

jr_00D_4579:
    ld e, $7E                                     ; $4579: $1E $7E
    add b                                         ; $457B: $80
    ret nz                                        ; $457C: $C0

    nop                                           ; $457D: $00
    nop                                           ; $457E: $00
    nop                                           ; $457F: $00
    inc bc                                        ; $4580: $03
    nop                                           ; $4581: $00
    rlca                                          ; $4582: $07
    inc bc                                        ; $4583: $03
    rrca                                          ; $4584: $0F
    inc b                                         ; $4585: $04
    ld a, [hl]                                    ; $4586: $7E
    nop                                           ; $4587: $00
    add c                                         ; $4588: $81
    ld a, [hl]                                    ; $4589: $7E
    nop                                           ; $458A: $00
    rst RST_38                                    ; $458B: $FF
    nop                                           ; $458C: $00
    rst RST_38                                    ; $458D: $FF
    nop                                           ; $458E: $00
    rst RST_38                                    ; $458F: $FF
    ld b, b                                       ; $4590: $40
    cp a                                          ; $4591: $BF
    ld b, b                                       ; $4592: $40

jr_00D_4593:
    cp a                                          ; $4593: $BF
    ld b, c                                       ; $4594: $41
    cp [hl]                                       ; $4595: $BE
    ld b, b                                       ; $4596: $40
    cp a                                          ; $4597: $BF
    jr nz, jr_00D_4579                            ; $4598: $20 $DF

    ld a, $C1                                     ; $459A: $3E $C1
    ld b, d                                       ; $459C: $42
    add c                                         ; $459D: $81
    add a                                         ; $459E: $87
    nop                                           ; $459F: $00
    inc c                                         ; $45A0: $0C
    nop                                           ; $45A1: $00
    adc d                                         ; $45A2: $8A
    inc b                                         ; $45A3: $04
    rst RST_08                                    ; $45A4: $CF
    add [hl]                                      ; $45A5: $86
    rst RST_08                                    ; $45A6: $CF
    add [hl]                                      ; $45A7: $86
    rst RST_20                                    ; $45A8: $E7
    ld b, d                                       ; $45A9: $42
    db $E3                                        ; $45AA: $E3
    ld b, b                                       ; $45AB: $40
    rst RST_38                                    ; $45AC: $FF
    ld [hl+], a                                   ; $45AD: $22
    cp [hl]                                       ; $45AE: $BE
    inc e                                         ; $45AF: $1C
    sbc h                                         ; $45B0: $9C
    nop                                           ; $45B1: $00
    ret nz                                        ; $45B2: $C0

    nop                                           ; $45B3: $00
    and b                                         ; $45B4: $A0
    ld b, b                                       ; $45B5: $40
    ld hl, sp+$00                                 ; $45B6: $F8 $00
    ld c, b                                       ; $45B8: $48
    or b                                          ; $45B9: $B0
    ld b, h                                       ; $45BA: $44
    cp b                                          ; $45BB: $B8
    ld [hl], h                                    ; $45BC: $74
    adc b                                         ; $45BD: $88
    sbc [hl]                                      ; $45BE: $9E
    nop                                           ; $45BF: $00
    rra                                           ; $45C0: $1F
    nop                                           ; $45C1: $00
    add hl, hl                                    ; $45C2: $29
    ld d, $3F                                     ; $45C3: $16 $3F
    nop                                           ; $45C5: $00
    nop                                           ; $45C6: $00
    nop                                           ; $45C7: $00
    nop                                           ; $45C8: $00
    nop                                           ; $45C9: $00
    nop                                           ; $45CA: $00
    nop                                           ; $45CB: $00
    nop                                           ; $45CC: $00
    nop                                           ; $45CD: $00
    nop                                           ; $45CE: $00
    nop                                           ; $45CF: $00
    nop                                           ; $45D0: $00
    nop                                           ; $45D1: $00
    nop                                           ; $45D2: $00
    nop                                           ; $45D3: $00
    nop                                           ; $45D4: $00
    nop                                           ; $45D5: $00
    nop                                           ; $45D6: $00
    nop                                           ; $45D7: $00
    nop                                           ; $45D8: $00
    nop                                           ; $45D9: $00
    nop                                           ; $45DA: $00
    nop                                           ; $45DB: $00
    nop                                           ; $45DC: $00
    nop                                           ; $45DD: $00
    nop                                           ; $45DE: $00
    nop                                           ; $45DF: $00
    cp [hl]                                       ; $45E0: $BE
    nop                                           ; $45E1: $00
    adc $30                                       ; $45E2: $CE $30
    db $FC                                        ; $45E4: $FC
    nop                                           ; $45E5: $00
    add b                                         ; $45E6: $80
    nop                                           ; $45E7: $00
    nop                                           ; $45E8: $00
    nop                                           ; $45E9: $00
    nop                                           ; $45EA: $00
    nop                                           ; $45EB: $00
    nop                                           ; $45EC: $00
    nop                                           ; $45ED: $00
    nop                                           ; $45EE: $00
    nop                                           ; $45EF: $00
    nop                                           ; $45F0: $00
    nop                                           ; $45F1: $00
    nop                                           ; $45F2: $00
    nop                                           ; $45F3: $00
    nop                                           ; $45F4: $00
    nop                                           ; $45F5: $00
    nop                                           ; $45F6: $00
    nop                                           ; $45F7: $00
    nop                                           ; $45F8: $00
    nop                                           ; $45F9: $00
    nop                                           ; $45FA: $00
    nop                                           ; $45FB: $00
    nop                                           ; $45FC: $00
    nop                                           ; $45FD: $00
    nop                                           ; $45FE: $00
    nop                                           ; $45FF: $00
    nop                                           ; $4600: $00
    nop                                           ; $4601: $00
    ld bc, $0300                                  ; $4602: $01 $00 $03
    ld bc, $0103                                  ; $4605: $01 $03 $01
    inc b                                         ; $4608: $04
    inc bc                                        ; $4609: $03
    dec b                                         ; $460A: $05
    ld [bc], a                                    ; $460B: $02
    ld b, $01                                     ; $460C: $06 $01
    ld [bc], a                                    ; $460E: $02
    ld bc, $0003                                  ; $460F: $01 $03 $00
    nop                                           ; $4612: $00
    nop                                           ; $4613: $00
    nop                                           ; $4614: $00
    nop                                           ; $4615: $00
    nop                                           ; $4616: $00
    nop                                           ; $4617: $00
    nop                                           ; $4618: $00
    nop                                           ; $4619: $00
    nop                                           ; $461A: $00
    nop                                           ; $461B: $00
    nop                                           ; $461C: $00
    nop                                           ; $461D: $00
    nop                                           ; $461E: $00
    nop                                           ; $461F: $00
    ld sp, hl                                     ; $4620: $F9
    cpl                                           ; $4621: $2F
    cp a                                          ; $4622: $BF
    ld d, b                                       ; $4623: $50
    inc a                                         ; $4624: $3C
    rst RST_08                                    ; $4625: $CF
    ld a, a                                       ; $4626: $7F
    sub b                                         ; $4627: $90
    ld a, a                                       ; $4628: $7F
    xor a                                         ; $4629: $AF
    rst RST_38                                    ; $462A: $FF
    db $10                                        ; $462B: $10
    ld a, a                                       ; $462C: $7F

jr_00D_462D:
    add h                                         ; $462D: $84
    rst RST_38                                    ; $462E: $FF
    jr jr_00D_462D                                ; $462F: $18 $FC

    ld b, e                                       ; $4631: $43
    ld a, a                                       ; $4632: $7F
    jr nc, @+$41                                  ; $4633: $30 $3F

    nop                                           ; $4635: $00
    rrca                                          ; $4636: $0F
    nop                                           ; $4637: $00
    dec c                                         ; $4638: $0D
    ld [bc], a                                    ; $4639: $02
    rrca                                          ; $463A: $0F
    nop                                           ; $463B: $00
    dec b                                         ; $463C: $05
    ld [bc], a                                    ; $463D: $02
    inc bc                                        ; $463E: $03
    nop                                           ; $463F: $00
    ld hl, sp+$00                                 ; $4640: $F8 $00
    add h                                         ; $4642: $84
    ld a, b                                       ; $4643: $78
    jp nz, $C1BC                                  ; $4644: $C2 $BC $C1

    ld a, $E1                                     ; $4647: $3E $E1
    sbc $C0                                       ; $4649: $DE $C0
    ccf                                           ; $464B: $3F
    and b                                         ; $464C: $A0
    ld e, a                                       ; $464D: $5F
    ret nz                                        ; $464E: $C0

    ccf                                           ; $464F: $3F
    ldh [c], a                                    ; $4650: $E2
    dec e                                         ; $4651: $1D
    ld [bc], a                                    ; $4652: $02
    db $FD                                        ; $4653: $FD
    ld [bc], a                                    ; $4654: $02
    db $FD                                        ; $4655: $FD
    add h                                         ; $4656: $84
    ld a, e                                       ; $4657: $7B
    db $FC                                        ; $4658: $FC
    inc bc                                        ; $4659: $03
    ldh [c], a                                    ; $465A: $E2
    ld bc, $40A1                                  ; $465B: $01 $A1 $40
    and c                                         ; $465E: $A1
    ld b, b                                       ; $465F: $40
    ld [bc], a                                    ; $4660: $02
    db $FC                                        ; $4661: $FC
    ld bc, $01FE                                  ; $4662: $01 $FE $01
    cp $01                                        ; $4665: $FE $01
    cp $01                                        ; $4667: $FE $01
    cp $81                                        ; $4669: $FE $81
    ld a, [hl]                                    ; $466B: $7E
    jp nz, Jump_00D_673C                          ; $466C: $C2 $3C $67

    jr jr_00D_46A2                                ; $466F: $18 $31

    ld c, $19                                     ; $4671: $0E $19
    ld b, $0D                                     ; $4673: $06 $0D
    ld [bc], a                                    ; $4675: $02
    rrca                                          ; $4676: $0F
    nop                                           ; $4677: $00
    rlca                                          ; $4678: $07
    nop                                           ; $4679: $00
    rlca                                          ; $467A: $07
    nop                                           ; $467B: $00
    inc bc                                        ; $467C: $03
    nop                                           ; $467D: $00
    ld bc, $8000                                  ; $467E: $01 $00 $80
    nop                                           ; $4681: $00
    ret nz                                        ; $4682: $C0

    add b                                         ; $4683: $80
    ldh [rLCDC], a                                ; $4684: $E0 $40
    ld [hl], b                                    ; $4686: $70
    jr nz, jr_00D_46C1                            ; $4687: $20 $38

    db $10                                        ; $4689: $10
    jr c, jr_00D_469C                             ; $468A: $38 $10

    inc e                                         ; $468C: $1C
    ld [$081C], sp                                ; $468D: $08 $1C $08
    adc [hl]                                      ; $4690: $8E
    inc b                                         ; $4691: $04
    add $00                                       ; $4692: $C6 $00
    rst RST_08                                    ; $4694: $CF
    ld b, $4F                                     ; $4695: $06 $4F
    add [hl]                                      ; $4697: $86
    and a                                         ; $4698: $A7
    ld b, d                                       ; $4699: $42
    ldh [c], a                                    ; $469A: $E2
    nop                                           ; $469B: $00

jr_00D_469C:
    nop                                           ; $469C: $00
    nop                                           ; $469D: $00
    nop                                           ; $469E: $00
    nop                                           ; $469F: $00
    ld h, b                                       ; $46A0: $60
    nop                                           ; $46A1: $00

jr_00D_46A2:
    nop                                           ; $46A2: $00
    nop                                           ; $46A3: $00
    nop                                           ; $46A4: $00
    nop                                           ; $46A5: $00
    nop                                           ; $46A6: $00
    nop                                           ; $46A7: $00
    nop                                           ; $46A8: $00
    nop                                           ; $46A9: $00
    nop                                           ; $46AA: $00
    nop                                           ; $46AB: $00
    nop                                           ; $46AC: $00
    nop                                           ; $46AD: $00
    nop                                           ; $46AE: $00
    nop                                           ; $46AF: $00
    nop                                           ; $46B0: $00
    nop                                           ; $46B1: $00
    nop                                           ; $46B2: $00
    nop                                           ; $46B3: $00
    nop                                           ; $46B4: $00
    nop                                           ; $46B5: $00
    nop                                           ; $46B6: $00
    nop                                           ; $46B7: $00
    nop                                           ; $46B8: $00
    nop                                           ; $46B9: $00
    nop                                           ; $46BA: $00
    nop                                           ; $46BB: $00
    nop                                           ; $46BC: $00
    nop                                           ; $46BD: $00
    nop                                           ; $46BE: $00
    nop                                           ; $46BF: $00
    nop                                           ; $46C0: $00

jr_00D_46C1:
    nop                                           ; $46C1: $00
    nop                                           ; $46C2: $00
    nop                                           ; $46C3: $00
    nop                                           ; $46C4: $00
    nop                                           ; $46C5: $00
    nop                                           ; $46C6: $00
    nop                                           ; $46C7: $00
    nop                                           ; $46C8: $00
    nop                                           ; $46C9: $00
    nop                                           ; $46CA: $00
    nop                                           ; $46CB: $00
    nop                                           ; $46CC: $00
    nop                                           ; $46CD: $00
    nop                                           ; $46CE: $00
    nop                                           ; $46CF: $00
    inc bc                                        ; $46D0: $03
    nop                                           ; $46D1: $00
    inc c                                         ; $46D2: $0C
    inc bc                                        ; $46D3: $03

jr_00D_46D4:
    db $10                                        ; $46D4: $10
    rrca                                          ; $46D5: $0F
    jr nz, jr_00D_46F7                            ; $46D6: $20 $1F

    ld b, b                                       ; $46D8: $40
    ccf                                           ; $46D9: $3F
    ld b, c                                       ; $46DA: $41
    ld a, $40                                     ; $46DB: $3E $40
    ccf                                           ; $46DD: $3F
    ld b, h                                       ; $46DE: $44
    dec sp                                        ; $46DF: $3B
    nop                                           ; $46E0: $00
    nop                                           ; $46E1: $00
    nop                                           ; $46E2: $00
    nop                                           ; $46E3: $00
    nop                                           ; $46E4: $00
    nop                                           ; $46E5: $00
    nop                                           ; $46E6: $00
    nop                                           ; $46E7: $00
    nop                                           ; $46E8: $00
    nop                                           ; $46E9: $00
    nop                                           ; $46EA: $00
    nop                                           ; $46EB: $00
    nop                                           ; $46EC: $00
    nop                                           ; $46ED: $00
    nop                                           ; $46EE: $00
    nop                                           ; $46EF: $00
    ldh [rP1], a                                  ; $46F0: $E0 $00
    jr jr_00D_46D4                                ; $46F2: $18 $E0

    rlca                                          ; $46F4: $07
    ld hl, sp+$38                                 ; $46F5: $F8 $38

jr_00D_46F7:
    rst RST_00                                    ; $46F7: $C7
    call nz, $043B                                ; $46F8: $C4 $3B $04
    ei                                            ; $46FB: $FB
    dec b                                         ; $46FC: $05
    ld a, [$B946]                                 ; $46FD: $FA $46 $B9
    nop                                           ; $4700: $00
    nop                                           ; $4701: $00
    nop                                           ; $4702: $00
    nop                                           ; $4703: $00
    nop                                           ; $4704: $00
    nop                                           ; $4705: $00
    nop                                           ; $4706: $00
    nop                                           ; $4707: $00
    nop                                           ; $4708: $00
    nop                                           ; $4709: $00
    nop                                           ; $470A: $00
    nop                                           ; $470B: $00
    nop                                           ; $470C: $00
    nop                                           ; $470D: $00
    nop                                           ; $470E: $00
    nop                                           ; $470F: $00
    nop                                           ; $4710: $00
    nop                                           ; $4711: $00
    nop                                           ; $4712: $00
    nop                                           ; $4713: $00
    add b                                         ; $4714: $80
    nop                                           ; $4715: $00
    ld [hl], b                                    ; $4716: $70
    add b                                         ; $4717: $80
    inc c                                         ; $4718: $0C
    ldh a, [rTMA]                                 ; $4719: $F0 $06
    ld hl, sp+$07                                 ; $471B: $F8 $07
    ld a, [$FA07]                                 ; $471D: $FA $07 $FA
    ld e, [hl]                                    ; $4720: $5E
    dec h                                         ; $4721: $25
    ld a, a                                       ; $4722: $7F
    inc d                                         ; $4723: $14
    ei                                            ; $4724: $FB
    dec d                                         ; $4725: $15
    db $EB                                        ; $4726: $EB
    ld d, l                                       ; $4727: $55
    rst RST_28                                    ; $4728: $EF
    ld d, l                                       ; $4729: $55
    cp a                                          ; $472A: $BF
    ld d, l                                       ; $472B: $55
    ld a, a                                       ; $472C: $7F
    ld a, [hl+]                                   ; $472D: $2A
    ld a, a                                       ; $472E: $7F
    ld sp, $0C33                                  ; $472F: $31 $33 $0C
    jr jr_00D_473B                                ; $4732: $18 $07

    ld c, $07                                     ; $4734: $0E $07
    ld b, $01                                     ; $4736: $06 $01
    ld bc, $0000                                  ; $4738: $01 $00 $00

jr_00D_473B:
    nop                                           ; $473B: $00
    nop                                           ; $473C: $00
    nop                                           ; $473D: $00
    nop                                           ; $473E: $00
    nop                                           ; $473F: $00
    and $59                                       ; $4740: $E6 $59
    and $59                                       ; $4742: $E6 $59
    xor $51                                       ; $4744: $EE $51
    rst RST_38                                    ; $4746: $FF
    ld b, b                                       ; $4747: $40
    ld sp, hl                                     ; $4748: $F9
    ld b, [hl]                                    ; $4749: $46
    db $FD                                        ; $474A: $FD
    ld [hl+], a                                   ; $474B: $22
    db $FD                                        ; $474C: $FD
    and d                                         ; $474D: $A2
    rst RST_38                                    ; $474E: $FF
    ld [$10FF], sp                                ; $474F: $08 $FF $10
    cp d                                          ; $4752: $BA
    ld b, l                                       ; $4753: $45
    sbc e                                         ; $4754: $9B
    ld h, h                                       ; $4755: $64
    ld [hl], l                                    ; $4756: $75
    add d                                         ; $4757: $82
    jp Boot                                       ; $4758: $C3 $00 $01


    nop                                           ; $475B: $00
    nop                                           ; $475C: $00
    nop                                           ; $475D: $00
    nop                                           ; $475E: $00
    nop                                           ; $475F: $00
    rlca                                          ; $4760: $07
    ld sp, hl                                     ; $4761: $F9
    rlca                                          ; $4762: $07
    ld sp, hl                                     ; $4763: $F9
    rrca                                          ; $4764: $0F
    pop af                                        ; $4765: $F1
    inc bc                                        ; $4766: $03
    db $FD                                        ; $4767: $FD
    db $E3                                        ; $4768: $E3
    dec e                                         ; $4769: $1D
    rla                                           ; $476A: $17
    ld a, [bc]                                    ; $476B: $0A
    and a                                         ; $476C: $A7
    ld a, [de]                                    ; $476D: $1A
    cp $04                                        ; $476E: $FE $04
    db $FC                                        ; $4770: $FC
    nop                                           ; $4771: $00
    sbc b                                         ; $4772: $98
    ld h, b                                       ; $4773: $60
    ldh a, [rP1]                                  ; $4774: $F0 $00
    ret nz                                        ; $4776: $C0

    nop                                           ; $4777: $00
    and b                                         ; $4778: $A0
    ld b, b                                       ; $4779: $40
    and b                                         ; $477A: $A0
    ld b, b                                       ; $477B: $40
    ld h, b                                       ; $477C: $60
    nop                                           ; $477D: $00
    nop                                           ; $477E: $00
    nop                                           ; $477F: $00
    add b                                         ; $4780: $80
    nop                                           ; $4781: $00
    add b                                         ; $4782: $80
    nop                                           ; $4783: $00
    add b                                         ; $4784: $80
    nop                                           ; $4785: $00
    add b                                         ; $4786: $80
    nop                                           ; $4787: $00
    add b                                         ; $4788: $80
    nop                                           ; $4789: $00
    nop                                           ; $478A: $00
    nop                                           ; $478B: $00
    nop                                           ; $478C: $00
    nop                                           ; $478D: $00
    nop                                           ; $478E: $00
    nop                                           ; $478F: $00
    nop                                           ; $4790: $00
    nop                                           ; $4791: $00
    nop                                           ; $4792: $00
    nop                                           ; $4793: $00
    nop                                           ; $4794: $00
    nop                                           ; $4795: $00
    nop                                           ; $4796: $00
    nop                                           ; $4797: $00
    nop                                           ; $4798: $00
    nop                                           ; $4799: $00
    nop                                           ; $479A: $00
    nop                                           ; $479B: $00
    nop                                           ; $479C: $00
    nop                                           ; $479D: $00
    nop                                           ; $479E: $00
    nop                                           ; $479F: $00
    jr nz, jr_00D_47C1                            ; $47A0: $20 $1F

    ld [hl+], a                                   ; $47A2: $22
    dec e                                         ; $47A3: $1D
    ld hl, $2F1E                                  ; $47A4: $21 $1E $2F
    db $10                                        ; $47A7: $10
    ld d, b                                       ; $47A8: $50
    cpl                                           ; $47A9: $2F
    ld d, b                                       ; $47AA: $50
    cpl                                           ; $47AB: $2F
    sub b                                         ; $47AC: $90
    ld l, a                                       ; $47AD: $6F
    adc c                                         ; $47AE: $89
    halt                                          ; $47AF: $76
    adc b                                         ; $47B0: $88

jr_00D_47B1:
    ld [hl], a                                    ; $47B1: $77
    add h                                         ; $47B2: $84
    ld a, e                                       ; $47B3: $7B
    add b                                         ; $47B4: $80
    ld a, a                                       ; $47B5: $7F
    ld b, c                                       ; $47B6: $41
    ld a, $40                                     ; $47B7: $3E $40
    ccf                                           ; $47B9: $3F
    jr nz, jr_00D_47DB                            ; $47BA: $20 $1F

    db $10                                        ; $47BC: $10
    rrca                                          ; $47BD: $0F
    rrca                                          ; $47BE: $0F
    nop                                           ; $47BF: $00
    rra                                           ; $47C0: $1F

jr_00D_47C1:
    ldh [$FFF1], a                                ; $47C1: $E0 $F1
    ld c, $F7                                     ; $47C3: $0E $F7
    ld [$C13F], sp                                ; $47C5: $08 $3F $C1
    rra                                           ; $47C8: $1F
    ldh [rIE], a                                  ; $47C9: $E0 $FF
    ld b, $9F                                     ; $47CB: $06 $9F
    ld hl, sp-$01                                 ; $47CD: $F8 $FF
    ld [bc], a                                    ; $47CF: $02
    ld e, a                                       ; $47D0: $5F
    cp l                                          ; $47D1: $BD
    rst RST_38                                    ; $47D2: $FF
    ld [bc], a                                    ; $47D3: $02
    sbc a                                         ; $47D4: $9F
    db $FC                                        ; $47D5: $FC
    rst RST_38                                    ; $47D6: $FF
    ld [bc], a                                    ; $47D7: $02
    rst RST_38                                    ; $47D8: $FF
    ld a, l                                       ; $47D9: $7D
    ld a, a                                       ; $47DA: $7F

jr_00D_47DB:
    add e                                         ; $47DB: $83
    rst RST_38                                    ; $47DC: $FF
    inc e                                         ; $47DD: $1C
    inc a                                         ; $47DE: $3C
    nop                                           ; $47DF: $00
    nop                                           ; $47E0: $00
    nop                                           ; $47E1: $00
    nop                                           ; $47E2: $00
    nop                                           ; $47E3: $00
    nop                                           ; $47E4: $00
    nop                                           ; $47E5: $00
    nop                                           ; $47E6: $00
    nop                                           ; $47E7: $00
    nop                                           ; $47E8: $00
    nop                                           ; $47E9: $00
    nop                                           ; $47EA: $00
    nop                                           ; $47EB: $00
    nop                                           ; $47EC: $00
    nop                                           ; $47ED: $00
    ld hl, sp+$00                                 ; $47EE: $F8 $00
    cp $F8                                        ; $47F0: $FE $F8
    rst RST_38                                    ; $47F2: $FF
    ld b, $E7                                     ; $47F3: $06 $E7
    add hl, de                                    ; $47F5: $19
    ld hl, $05DE                                  ; $47F6: $21 $DE $05
    ld a, [$F00B]                                 ; $47F9: $FA $0B $F0
    add hl, bc                                    ; $47FC: $09
    ldh a, [$FF0B]                                ; $47FD: $F0 $0B
    ldh a, [$FF80]                                ; $47FF: $F0 $80
    nop                                           ; $4801: $00
    ret nz                                        ; $4802: $C0

    nop                                           ; $4803: $00
    ldh [rP1], a                                  ; $4804: $E0 $00
    xor [hl]                                      ; $4806: $AE
    ld b, b                                       ; $4807: $40
    or d                                          ; $4808: $B2
    ld c, h                                       ; $4809: $4C
    db $FC                                        ; $480A: $FC
    nop                                           ; $480B: $00
    cp h                                          ; $480C: $BC
    ld b, b                                       ; $480D: $40
    add sp, $10                                   ; $480E: $E8 $10
    sub b                                         ; $4810: $90
    ld h, b                                       ; $4811: $60
    ldh [rP1], a                                  ; $4812: $E0 $00
    ldh a, [$FF80]                                ; $4814: $F0 $80
    ret nc                                        ; $4816: $D0

    jr nz, jr_00D_47B1                            ; $4817: $20 $98

    ld h, b                                       ; $4819: $60
    add sp, $10                                   ; $481A: $E8 $10
    adc b                                         ; $481C: $88
    ld [hl], b                                    ; $481D: $70
    or b                                          ; $481E: $B0
    ld h, b                                       ; $481F: $60
    nop                                           ; $4820: $00
    nop                                           ; $4821: $00

jr_00D_4822:
    nop                                           ; $4822: $00
    nop                                           ; $4823: $00
    nop                                           ; $4824: $00
    nop                                           ; $4825: $00
    nop                                           ; $4826: $00
    nop                                           ; $4827: $00
    nop                                           ; $4828: $00
    nop                                           ; $4829: $00
    nop                                           ; $482A: $00
    nop                                           ; $482B: $00
    nop                                           ; $482C: $00
    nop                                           ; $482D: $00
    nop                                           ; $482E: $00
    nop                                           ; $482F: $00
    nop                                           ; $4830: $00
    nop                                           ; $4831: $00
    inc bc                                        ; $4832: $03
    nop                                           ; $4833: $00
    rlca                                          ; $4834: $07
    inc bc                                        ; $4835: $03
    rrca                                          ; $4836: $0F
    nop                                           ; $4837: $00
    ld [$1007], sp                                ; $4838: $08 $07 $10
    rrca                                          ; $483B: $0F
    db $10                                        ; $483C: $10
    rrca                                          ; $483D: $0F
    db $10                                        ; $483E: $10
    rrca                                          ; $483F: $0F
    jr nc, jr_00D_4822                            ; $4840: $30 $E0

    ld h, b                                       ; $4842: $60
    add b                                         ; $4843: $80
    ret nz                                        ; $4844: $C0

    nop                                           ; $4845: $00
    add b                                         ; $4846: $80
    nop                                           ; $4847: $00
    nop                                           ; $4848: $00
    nop                                           ; $4849: $00
    nop                                           ; $484A: $00
    nop                                           ; $484B: $00
    nop                                           ; $484C: $00
    nop                                           ; $484D: $00
    nop                                           ; $484E: $00
    nop                                           ; $484F: $00
    nop                                           ; $4850: $00
    nop                                           ; $4851: $00
    nop                                           ; $4852: $00
    nop                                           ; $4853: $00
    nop                                           ; $4854: $00
    nop                                           ; $4855: $00
    nop                                           ; $4856: $00
    nop                                           ; $4857: $00
    nop                                           ; $4858: $00
    nop                                           ; $4859: $00
    nop                                           ; $485A: $00
    nop                                           ; $485B: $00
    nop                                           ; $485C: $00
    nop                                           ; $485D: $00
    nop                                           ; $485E: $00
    nop                                           ; $485F: $00
    ld [bc], a                                    ; $4860: $02
    nop                                           ; $4861: $00
    rlca                                          ; $4862: $07
    ld [bc], a                                    ; $4863: $02
    ld a, [bc]                                    ; $4864: $0A
    dec b                                         ; $4865: $05
    dec c                                         ; $4866: $0D
    ld [bc], a                                    ; $4867: $02
    rla                                           ; $4868: $17
    ld a, [bc]                                    ; $4869: $0A
    ld e, $09                                     ; $486A: $1E $09
    rra                                           ; $486C: $1F
    add hl, bc                                    ; $486D: $09
    dec de                                        ; $486E: $1B
    inc b                                         ; $486F: $04
    rla                                           ; $4870: $17
    ld c, $20                                     ; $4871: $0E $20
    rra                                           ; $4873: $1F

jr_00D_4874:
    inc hl                                        ; $4874: $23
    inc e                                         ; $4875: $1C

jr_00D_4876:
    rra                                           ; $4876: $1F
    ld bc, $0C13                                  ; $4877: $01 $13 $0C

jr_00D_487A:
    ld [hl], $08                                  ; $487A: $36 $08

jr_00D_487C:
    ld a, h                                       ; $487C: $7C
    nop                                           ; $487D: $00
    db $FC                                        ; $487E: $FC
    nop                                           ; $487F: $00
    ld bc, $1E00                                  ; $4880: $01 $00 $1E
    ld bc, $1F60                                  ; $4883: $01 $60 $1F
    ret nz                                        ; $4886: $C0

    ccf                                           ; $4887: $3F
    ld hl, sp-$39                                 ; $4888: $F8 $C7
    ld hl, sp+$37                                 ; $488A: $F8 $37
    inc a                                         ; $488C: $3C
    jp $99EE                                      ; $488D: $C3 $EE $99


    cp [hl]                                       ; $4890: $BE
    ld h, l                                       ; $4891: $65
    db $EC                                        ; $4892: $EC
    dec de                                        ; $4893: $1B
    sbc $B1                                       ; $4894: $DE $B1
    cp $4D                                        ; $4896: $FE $4D
    rst RST_38                                    ; $4898: $FF
    jr nc, @-$02                                  ; $4899: $30 $FC

    ld b, e                                       ; $489B: $43
    db $FC                                        ; $489C: $FC
    or e                                          ; $489D: $B3
    ld hl, sp+$07                                 ; $489E: $F8 $07
    add b                                         ; $48A0: $80
    ld a, a                                       ; $48A1: $7F
    nop                                           ; $48A2: $00
    rst RST_38                                    ; $48A3: $FF
    nop                                           ; $48A4: $00
    rst RST_38                                    ; $48A5: $FF
    nop                                           ; $48A6: $00
    rst RST_38                                    ; $48A7: $FF
    rlca                                          ; $48A8: $07
    ld hl, sp+$03                                 ; $48A9: $F8 $03
    db $FC                                        ; $48AB: $FC
    inc b                                         ; $48AC: $04
    ld hl, sp+$28                                 ; $48AD: $F8 $28
    ret nc                                        ; $48AF: $D0

    jr z, @-$2E                                   ; $48B0: $28 $D0

    jr nc, jr_00D_4874                            ; $48B2: $30 $C0

    jr nc, jr_00D_4876                            ; $48B4: $30 $C0

    jr nz, @-$3E                                  ; $48B6: $20 $C0

    jr nz, jr_00D_487A                            ; $48B8: $20 $C0

    jr nz, jr_00D_487C                            ; $48BA: $20 $C0

    ld b, b                                       ; $48BC: $40
    add b                                         ; $48BD: $80
    add b                                         ; $48BE: $80
    nop                                           ; $48BF: $00
    ld hl, sp+$40                                 ; $48C0: $F8 $40
    ret nz                                        ; $48C2: $C0

    add b                                         ; $48C3: $80
    add b                                         ; $48C4: $80
    nop                                           ; $48C5: $00
    ld bc, $0700                                  ; $48C6: $01 $00 $07
    nop                                           ; $48C9: $00
    rrca                                          ; $48CA: $0F
    nop                                           ; $48CB: $00
    ld [hl], a                                    ; $48CC: $77
    ld [$7884], sp                                ; $48CD: $08 $84 $78
    rrca                                          ; $48D0: $0F
    ldh a, [$FFF0]                                ; $48D1: $F0 $F0
    rrca                                          ; $48D3: $0F
    db $10                                        ; $48D4: $10
    rst RST_28                                    ; $48D5: $EF
    ld bc, $02FE                                  ; $48D6: $01 $FE $02
    db $FC                                        ; $48D9: $FC
    inc c                                         ; $48DA: $0C
    ldh a, [$FF30]                                ; $48DB: $F0 $30
    ret nz                                        ; $48DD: $C0

    ret nz                                        ; $48DE: $C0

    nop                                           ; $48DF: $00
    add hl, bc                                    ; $48E0: $09
    ld b, $1E                                     ; $48E1: $06 $1E
    nop                                           ; $48E3: $00
    ld e, $00                                     ; $48E4: $1E $00
    ld a, $00                                     ; $48E6: $3E $00
    ld a, [hl]                                    ; $48E8: $7E
    nop                                           ; $48E9: $00
    ld d, d                                       ; $48EA: $52
    inc l                                         ; $48EB: $2C
    ld a, [hl]                                    ; $48EC: $7E
    nop                                           ; $48ED: $00
    nop                                           ; $48EE: $00
    nop                                           ; $48EF: $00
    nop                                           ; $48F0: $00
    nop                                           ; $48F1: $00
    nop                                           ; $48F2: $00
    nop                                           ; $48F3: $00
    nop                                           ; $48F4: $00
    nop                                           ; $48F5: $00
    nop                                           ; $48F6: $00
    nop                                           ; $48F7: $00
    nop                                           ; $48F8: $00
    nop                                           ; $48F9: $00
    nop                                           ; $48FA: $00
    nop                                           ; $48FB: $00
    nop                                           ; $48FC: $00
    nop                                           ; $48FD: $00
    nop                                           ; $48FE: $00
    nop                                           ; $48FF: $00
    cp b                                          ; $4900: $B8
    ld b, b                                       ; $4901: $40
    ret z                                         ; $4902: $C8

    jr nc, @+$32                                  ; $4903: $30 $30

    nop                                           ; $4905: $00
    nop                                           ; $4906: $00
    nop                                           ; $4907: $00
    nop                                           ; $4908: $00
    nop                                           ; $4909: $00
    nop                                           ; $490A: $00
    nop                                           ; $490B: $00
    nop                                           ; $490C: $00
    nop                                           ; $490D: $00
    nop                                           ; $490E: $00
    nop                                           ; $490F: $00
    nop                                           ; $4910: $00
    nop                                           ; $4911: $00
    nop                                           ; $4912: $00
    nop                                           ; $4913: $00
    nop                                           ; $4914: $00
    nop                                           ; $4915: $00
    nop                                           ; $4916: $00
    nop                                           ; $4917: $00
    nop                                           ; $4918: $00
    nop                                           ; $4919: $00
    nop                                           ; $491A: $00
    nop                                           ; $491B: $00
    nop                                           ; $491C: $00
    nop                                           ; $491D: $00
    nop                                           ; $491E: $00
    nop                                           ; $491F: $00
    nop                                           ; $4920: $00
    nop                                           ; $4921: $00
    nop                                           ; $4922: $00
    nop                                           ; $4923: $00
    nop                                           ; $4924: $00
    nop                                           ; $4925: $00
    nop                                           ; $4926: $00
    nop                                           ; $4927: $00
    nop                                           ; $4928: $00
    nop                                           ; $4929: $00
    nop                                           ; $492A: $00
    nop                                           ; $492B: $00
    ld bc, $0300                                  ; $492C: $01 $00 $03
    ld bc, $0207                                  ; $492F: $01 $07 $02
    rlca                                          ; $4932: $07
    ld [bc], a                                    ; $4933: $02
    ld c, $04                                     ; $4934: $0E $04
    ld c, $04                                     ; $4936: $0E $04
    dec e                                         ; $4938: $1D
    ld [$001F], sp                                ; $4939: $08 $1F $00
    jr nz, @+$21                                  ; $493C: $20 $1F

    ld b, b                                       ; $493E: $40
    ccf                                           ; $493F: $3F
    nop                                           ; $4940: $00
    nop                                           ; $4941: $00
    nop                                           ; $4942: $00
    nop                                           ; $4943: $00
    nop                                           ; $4944: $00
    nop                                           ; $4945: $00
    nop                                           ; $4946: $00
    nop                                           ; $4947: $00
    nop                                           ; $4948: $00
    nop                                           ; $4949: $00
    nop                                           ; $494A: $00
    nop                                           ; $494B: $00
    nop                                           ; $494C: $00
    nop                                           ; $494D: $00
    nop                                           ; $494E: $00
    nop                                           ; $494F: $00
    nop                                           ; $4950: $00
    nop                                           ; $4951: $00
    add b                                         ; $4952: $80
    nop                                           ; $4953: $00
    ret nz                                        ; $4954: $C0

    nop                                           ; $4955: $00
    ld [hl], b                                    ; $4956: $70
    nop                                           ; $4957: $00
    ld hl, sp+$00                                 ; $4958: $F8 $00
    ld hl, sp+$00                                 ; $495A: $F8 $00
    ldh [rP1], a                                  ; $495C: $E0 $00
    add b                                         ; $495E: $80
    nop                                           ; $495F: $00
    nop                                           ; $4960: $00
    nop                                           ; $4961: $00
    nop                                           ; $4962: $00
    nop                                           ; $4963: $00
    nop                                           ; $4964: $00
    nop                                           ; $4965: $00
    nop                                           ; $4966: $00
    nop                                           ; $4967: $00
    nop                                           ; $4968: $00
    nop                                           ; $4969: $00
    nop                                           ; $496A: $00
    nop                                           ; $496B: $00
    nop                                           ; $496C: $00
    nop                                           ; $496D: $00
    nop                                           ; $496E: $00
    nop                                           ; $496F: $00
    nop                                           ; $4970: $00
    nop                                           ; $4971: $00
    nop                                           ; $4972: $00
    nop                                           ; $4973: $00
    nop                                           ; $4974: $00
    nop                                           ; $4975: $00
    nop                                           ; $4976: $00
    nop                                           ; $4977: $00
    nop                                           ; $4978: $00
    nop                                           ; $4979: $00
    inc e                                         ; $497A: $1C
    nop                                           ; $497B: $00
    ld a, $1C                                     ; $497C: $3E $1C
    ld a, h                                       ; $497E: $7C
    jr c, jr_00D_4984                             ; $497F: $38 $03

    nop                                           ; $4981: $00
    inc b                                         ; $4982: $04
    inc bc                                        ; $4983: $03

jr_00D_4984:
    ld [$0807], sp                                ; $4984: $08 $07 $08
    rlca                                          ; $4987: $07
    inc d                                         ; $4988: $14
    dec bc                                        ; $4989: $0B
    ld e, $05                                     ; $498A: $1E $05
    ld a, a                                       ; $498C: $7F
    inc d                                         ; $498D: $14
    rst RST_38                                    ; $498E: $FF

jr_00D_498F:
    dec d                                         ; $498F: $15
    rst RST_38                                    ; $4990: $FF
    ld d, l                                       ; $4991: $55
    rst RST_38                                    ; $4992: $FF
    ld d, l                                       ; $4993: $55
    rst RST_38                                    ; $4994: $FF
    ld d, l                                       ; $4995: $55
    ld a, a                                       ; $4996: $7F
    ld a, [hl+]                                   ; $4997: $2A
    ld a, a                                       ; $4998: $7F
    ld sp, $0C33                                  ; $4999: $31 $33 $0C
    jr jr_00D_49A5                                ; $499C: $18 $07

    ld a, $07                                     ; $499E: $3E $07
    rlca                                          ; $49A0: $07
    ld a, [$FA07]                                 ; $49A1: $FA $07 $FA
    ld b, a                                       ; $49A4: $47

jr_00D_49A5:
    cp d                                          ; $49A5: $BA
    rst RST_20                                    ; $49A6: $E7
    ld e, b                                       ; $49A7: $58
    rst RST_20                                    ; $49A8: $E7
    ld e, c                                       ; $49A9: $59
    rst RST_28                                    ; $49AA: $EF
    ld d, c                                       ; $49AB: $51
    rst RST_38                                    ; $49AC: $FF
    ld b, b                                       ; $49AD: $40
    db $FD                                        ; $49AE: $FD
    ld d, d                                       ; $49AF: $52
    rst RST_38                                    ; $49B0: $FF
    jr z, @+$01                                   ; $49B1: $28 $FF

    xor b                                         ; $49B3: $A8
    db $FC                                        ; $49B4: $FC
    ld [$10F8], sp                                ; $49B5: $08 $F8 $10
    cp b                                          ; $49B8: $B8
    ld b, b                                       ; $49B9: $40
    sbc b                                         ; $49BA: $98
    ld h, b                                       ; $49BB: $60
    ld [hl], b                                    ; $49BC: $70
    add b                                         ; $49BD: $80
    ret nz                                        ; $49BE: $C0

    nop                                           ; $49BF: $00
    ldh a, [rP1]                                  ; $49C0: $F0 $00
    ld hl, sp-$10                                 ; $49C2: $F8 $F0
    db $FC                                        ; $49C4: $FC
    ld [$040E], sp                                ; $49C5: $08 $0E $04
    rlca                                          ; $49C8: $07
    ld [bc], a                                    ; $49C9: $02
    add a                                         ; $49CA: $87
    ld [bc], a                                    ; $49CB: $02
    ld a, a                                       ; $49CC: $7F
    add d                                         ; $49CD: $82
    inc bc                                        ; $49CE: $03
    db $FC                                        ; $49CF: $FC
    pop bc                                        ; $49D0: $C1
    ld a, $E0                                     ; $49D1: $3E $E0
    rst RST_18                                    ; $49D3: $DF
    ldh [$FFDF], a                                ; $49D4: $E0 $DF
    ldh [$FF5F], a                                ; $49D6: $E0 $5F
    ld b, b                                       ; $49D8: $40
    cp a                                          ; $49D9: $BF
    ret nz                                        ; $49DA: $C0

    ccf                                           ; $49DB: $3F
    ld b, c                                       ; $49DC: $41
    cp [hl]                                       ; $49DD: $BE
    ldh [$FF1F], a                                ; $49DE: $E0 $1F
    add b                                         ; $49E0: $80
    nop                                           ; $49E1: $00
    add b                                         ; $49E2: $80
    nop                                           ; $49E3: $00
    ret nz                                        ; $49E4: $C0

    nop                                           ; $49E5: $00
    and b                                         ; $49E6: $A0
    ld b, b                                       ; $49E7: $40
    and b                                         ; $49E8: $A0
    ld b, b                                       ; $49E9: $40
    ret c                                         ; $49EA: $D8

    jr nz, jr_00D_4A35                            ; $49EB: $20 $48

    or b                                          ; $49ED: $B0
    ld c, b                                       ; $49EE: $48
    or b                                          ; $49EF: $B0
    and h                                         ; $49F0: $A4
    jr jr_00D_498F                                ; $49F1: $18 $9C

    nop                                           ; $49F3: $00
    ld a, h                                       ; $49F4: $7C
    nop                                           ; $49F5: $00
    sbc h                                         ; $49F6: $9C
    ld h, b                                       ; $49F7: $60
    ld hl, sp+$00                                 ; $49F8: $F8 $00
    nop                                           ; $49FA: $00
    nop                                           ; $49FB: $00
    nop                                           ; $49FC: $00
    nop                                           ; $49FD: $00
    nop                                           ; $49FE: $00
    nop                                           ; $49FF: $00
    ld a, [hl]                                    ; $4A00: $7E
    ld bc, $50AD                                  ; $4A01: $01 $AD $50
    ld hl, sp+$00                                 ; $4A04: $F8 $00
    nop                                           ; $4A06: $00
    nop                                           ; $4A07: $00
    nop                                           ; $4A08: $00
    nop                                           ; $4A09: $00
    nop                                           ; $4A0A: $00
    nop                                           ; $4A0B: $00
    nop                                           ; $4A0C: $00
    nop                                           ; $4A0D: $00
    nop                                           ; $4A0E: $00
    nop                                           ; $4A0F: $00
    nop                                           ; $4A10: $00
    nop                                           ; $4A11: $00
    nop                                           ; $4A12: $00
    nop                                           ; $4A13: $00
    nop                                           ; $4A14: $00
    nop                                           ; $4A15: $00
    nop                                           ; $4A16: $00
    nop                                           ; $4A17: $00
    nop                                           ; $4A18: $00
    nop                                           ; $4A19: $00
    nop                                           ; $4A1A: $00
    nop                                           ; $4A1B: $00
    nop                                           ; $4A1C: $00
    nop                                           ; $4A1D: $00
    nop                                           ; $4A1E: $00
    nop                                           ; $4A1F: $00
    nop                                           ; $4A20: $00
    nop                                           ; $4A21: $00
    nop                                           ; $4A22: $00
    nop                                           ; $4A23: $00
    nop                                           ; $4A24: $00
    nop                                           ; $4A25: $00
    nop                                           ; $4A26: $00
    nop                                           ; $4A27: $00
    nop                                           ; $4A28: $00
    nop                                           ; $4A29: $00
    nop                                           ; $4A2A: $00
    nop                                           ; $4A2B: $00
    nop                                           ; $4A2C: $00
    nop                                           ; $4A2D: $00
    nop                                           ; $4A2E: $00
    nop                                           ; $4A2F: $00
    nop                                           ; $4A30: $00
    nop                                           ; $4A31: $00
    nop                                           ; $4A32: $00
    nop                                           ; $4A33: $00
    nop                                           ; $4A34: $00

jr_00D_4A35:
    nop                                           ; $4A35: $00
    nop                                           ; $4A36: $00
    nop                                           ; $4A37: $00
    ld bc, $F300                                  ; $4A38: $01 $00 $F3
    ld bc, $C23F                                  ; $4A3B: $01 $3F $C2
    ld b, a                                       ; $4A3E: $47
    cp d                                          ; $4A3F: $BA
    inc e                                         ; $4A40: $1C
    inc bc                                        ; $4A41: $03
    ld [bc], a                                    ; $4A42: $02
    ld bc, $0304                                  ; $4A43: $01 $04 $03
    rrca                                          ; $4A46: $0F
    nop                                           ; $4A47: $00
    ccf                                           ; $4A48: $3F
    nop                                           ; $4A49: $00
    ld d, e                                       ; $4A4A: $53
    inc l                                         ; $4A4B: $2C
    ld a, [hl]                                    ; $4A4C: $7E
    nop                                           ; $4A4D: $00
    nop                                           ; $4A4E: $00
    nop                                           ; $4A4F: $00
    nop                                           ; $4A50: $00
    nop                                           ; $4A51: $00
    nop                                           ; $4A52: $00
    nop                                           ; $4A53: $00
    nop                                           ; $4A54: $00
    nop                                           ; $4A55: $00
    nop                                           ; $4A56: $00
    nop                                           ; $4A57: $00
    nop                                           ; $4A58: $00
    nop                                           ; $4A59: $00
    nop                                           ; $4A5A: $00
    nop                                           ; $4A5B: $00
    nop                                           ; $4A5C: $00
    nop                                           ; $4A5D: $00
    nop                                           ; $4A5E: $00
    nop                                           ; $4A5F: $00
    inc bc                                        ; $4A60: $03
    nop                                           ; $4A61: $00
    rlca                                          ; $4A62: $07
    nop                                           ; $4A63: $00
    rlca                                          ; $4A64: $07
    ld [bc], a                                    ; $4A65: $02
    rlca                                          ; $4A66: $07
    ld [bc], a                                    ; $4A67: $02
    rlca                                          ; $4A68: $07
    ld [bc], a                                    ; $4A69: $02
    inc bc                                        ; $4A6A: $03
    ld bc, $0103                                  ; $4A6B: $01 $03 $01
    ld bc, $0300                                  ; $4A6E: $01 $00 $03
    nop                                           ; $4A71: $00
    dec b                                         ; $4A72: $05
    ld [bc], a                                    ; $4A73: $02
    rlca                                          ; $4A74: $07
    nop                                           ; $4A75: $00
    nop                                           ; $4A76: $00
    nop                                           ; $4A77: $00
    nop                                           ; $4A78: $00
    nop                                           ; $4A79: $00
    nop                                           ; $4A7A: $00
    nop                                           ; $4A7B: $00
    nop                                           ; $4A7C: $00

jr_00D_4A7D:
    nop                                           ; $4A7D: $00
    nop                                           ; $4A7E: $00

jr_00D_4A7F:
    nop                                           ; $4A7F: $00
    rlca                                          ; $4A80: $07
    nop                                           ; $4A81: $00
    add hl, de                                    ; $4A82: $19
    ld b, $22                                     ; $4A83: $06 $22
    dec e                                         ; $4A85: $1D
    ld b, b                                       ; $4A86: $40
    ccf                                           ; $4A87: $3F
    ld b, b                                       ; $4A88: $40

jr_00D_4A89:
    ccf                                           ; $4A89: $3F
    and d                                         ; $4A8A: $A2

jr_00D_4A8B:
    ld e, l                                       ; $4A8B: $5D
    rst RST_30                                    ; $4A8C: $F7
    ld a, [hl+]                                   ; $4A8D: $2A
    rst RST_38                                    ; $4A8E: $FF
    and d                                         ; $4A8F: $A2
    rst RST_38                                    ; $4A90: $FF
    xor d                                         ; $4A91: $AA
    rst RST_38                                    ; $4A92: $FF
    xor d                                         ; $4A93: $AA
    rst RST_38                                    ; $4A94: $FF
    xor d                                         ; $4A95: $AA
    rst RST_38                                    ; $4A96: $FF
    xor c                                         ; $4A97: $A9
    rst RST_38                                    ; $4A98: $FF
    ld d, l                                       ; $4A99: $55
    rst RST_38                                    ; $4A9A: $FF
    adc b                                         ; $4A9B: $88
    sbc a                                         ; $4A9C: $9F
    ld h, b                                       ; $4A9D: $60
    push bc                                       ; $4A9E: $C5
    ld a, [hl-]                                   ; $4A9F: $3A
    ldh [rP1], a                                  ; $4AA0: $E0 $00
    inc a                                         ; $4AA2: $3C
    ret nz                                        ; $4AA3: $C0

    inc hl                                        ; $4AA4: $23
    call c, $DF20                                 ; $4AA5: $DC $20 $DF
    jr nz, jr_00D_4A89                            ; $4AA8: $20 $DF

    jr nz, jr_00D_4A8B                            ; $4AAA: $20 $DF

    jr nc, jr_00D_4A7D                            ; $4AAC: $30 $CF

    jr nc, jr_00D_4A7F                            ; $4AAE: $30 $CF

    ld [hl], c                                    ; $4AB0: $71
    adc [hl]                                      ; $4AB1: $8E
    cp $01                                        ; $4AB2: $FE $01
    ld [$FE95], a                                 ; $4AB4: $EA $95 $FE
    ld b, c                                       ; $4AB7: $41
    ld a, [$FF45]                                 ; $4AB8: $FA $45 $FF
    ld b, b                                       ; $4ABB: $40
    db $E3                                        ; $4ABC: $E3
    add b                                         ; $4ABD: $80
    rst RST_00                                    ; $4ABE: $C7
    nop                                           ; $4ABF: $00
    ret nz                                        ; $4AC0: $C0

    nop                                           ; $4AC1: $00
    inc hl                                        ; $4AC2: $23
    ret nz                                        ; $4AC3: $C0

    rla                                           ; $4AC4: $17
    db $E3                                        ; $4AC5: $E3
    rrca                                          ; $4AC6: $0F
    db $F4                                        ; $4AC7: $F4
    ld b, $F8                                     ; $4AC8: $06 $F8
    ld b, $F8                                     ; $4ACA: $06 $F8
    ld b, $F8                                     ; $4ACC: $06 $F8
    rlca                                          ; $4ACE: $07
    ld hl, sp+$05                                 ; $4ACF: $F8 $05
    ld a, [$F00F]                                 ; $4AD1: $FA $0F $F0
    inc bc                                        ; $4AD4: $03
    db $FC                                        ; $4AD5: $FC
    db $E3                                        ; $4AD6: $E3
    inc e                                         ; $4AD7: $1C
    rst RST_00                                    ; $4AD8: $C7
    jr c, @+$01                                   ; $4AD9: $38 $FF

    nop                                           ; $4ADB: $00
    sbc $00                                       ; $4ADC: $DE $00
    add b                                         ; $4ADE: $80
    nop                                           ; $4ADF: $00
    nop                                           ; $4AE0: $00
    nop                                           ; $4AE1: $00
    nop                                           ; $4AE2: $00
    nop                                           ; $4AE3: $00
    nop                                           ; $4AE4: $00
    nop                                           ; $4AE5: $00
    nop                                           ; $4AE6: $00
    nop                                           ; $4AE7: $00
    nop                                           ; $4AE8: $00
    nop                                           ; $4AE9: $00
    nop                                           ; $4AEA: $00
    nop                                           ; $4AEB: $00
    nop                                           ; $4AEC: $00
    nop                                           ; $4AED: $00
    inc c                                         ; $4AEE: $0C
    nop                                           ; $4AEF: $00
    adc [hl]                                      ; $4AF0: $8E
    inc b                                         ; $4AF1: $04
    rst RST_08                                    ; $4AF2: $CF
    add [hl]                                      ; $4AF3: $86
    rst RST_08                                    ; $4AF4: $CF
    add [hl]                                      ; $4AF5: $86
    rst RST_20                                    ; $4AF6: $E7
    ld b, d                                       ; $4AF7: $42
    di                                            ; $4AF8: $F3
    ld b, b                                       ; $4AF9: $40
    ld a, a                                       ; $4AFA: $7F
    ld [hl+], a                                   ; $4AFB: $22
    ld a, $1C                                     ; $4AFC: $3E $1C
    inc e                                         ; $4AFE: $1C
    nop                                           ; $4AFF: $00
    ld [hl], h                                    ; $4B00: $74
    cp e                                          ; $4B01: $BB
    di                                            ; $4B02: $F3
    inc c                                         ; $4B03: $0C
    ld c, $00                                     ; $4B04: $0E $00
    nop                                           ; $4B06: $00
    nop                                           ; $4B07: $00
    nop                                           ; $4B08: $00
    nop                                           ; $4B09: $00
    nop                                           ; $4B0A: $00
    nop                                           ; $4B0B: $00
    nop                                           ; $4B0C: $00
    nop                                           ; $4B0D: $00
    nop                                           ; $4B0E: $00
    nop                                           ; $4B0F: $00
    nop                                           ; $4B10: $00
    nop                                           ; $4B11: $00
    nop                                           ; $4B12: $00
    nop                                           ; $4B13: $00
    nop                                           ; $4B14: $00
    nop                                           ; $4B15: $00
    nop                                           ; $4B16: $00
    nop                                           ; $4B17: $00
    nop                                           ; $4B18: $00
    nop                                           ; $4B19: $00
    nop                                           ; $4B1A: $00
    nop                                           ; $4B1B: $00
    nop                                           ; $4B1C: $00
    nop                                           ; $4B1D: $00
    nop                                           ; $4B1E: $00
    nop                                           ; $4B1F: $00
    rst RST_08                                    ; $4B20: $CF
    nop                                           ; $4B21: $00
    sub h                                         ; $4B22: $94
    dec bc                                        ; $4B23: $0B
    rra                                           ; $4B24: $1F
    nop                                           ; $4B25: $00
    nop                                           ; $4B26: $00
    nop                                           ; $4B27: $00
    nop                                           ; $4B28: $00
    nop                                           ; $4B29: $00
    nop                                           ; $4B2A: $00
    nop                                           ; $4B2B: $00
    nop                                           ; $4B2C: $00
    nop                                           ; $4B2D: $00
    nop                                           ; $4B2E: $00
    nop                                           ; $4B2F: $00
    nop                                           ; $4B30: $00
    nop                                           ; $4B31: $00
    nop                                           ; $4B32: $00
    nop                                           ; $4B33: $00
    nop                                           ; $4B34: $00
    nop                                           ; $4B35: $00
    nop                                           ; $4B36: $00
    nop                                           ; $4B37: $00
    nop                                           ; $4B38: $00
    nop                                           ; $4B39: $00
    nop                                           ; $4B3A: $00
    nop                                           ; $4B3B: $00
    nop                                           ; $4B3C: $00
    nop                                           ; $4B3D: $00
    nop                                           ; $4B3E: $00
    nop                                           ; $4B3F: $00
    ld d, a                                       ; $4B40: $57
    jr nz, jr_00D_4BBA                            ; $4B41: $20 $77

    inc bc                                        ; $4B43: $03
    ld e, a                                       ; $4B44: $5F
    jr nz, jr_00D_4BC6                            ; $4B45: $20 $7F

    ld b, $3F                                     ; $4B47: $06 $3F
    add hl, bc                                    ; $4B49: $09
    rra                                           ; $4B4A: $1F
    ld b, $0F                                     ; $4B4B: $06 $0F
    inc bc                                        ; $4B4D: $03
    rra                                           ; $4B4E: $1F
    inc c                                         ; $4B4F: $0C
    rra                                           ; $4B50: $1F
    inc bc                                        ; $4B51: $03
    rrca                                          ; $4B52: $0F
    nop                                           ; $4B53: $00
    rlca                                          ; $4B54: $07
    inc bc                                        ; $4B55: $03
    inc bc                                        ; $4B56: $03
    nop                                           ; $4B57: $00
    rrca                                          ; $4B58: $0F
    nop                                           ; $4B59: $00
    rra                                           ; $4B5A: $1F
    nop                                           ; $4B5B: $00
    add hl, hl                                    ; $4B5C: $29
    ld d, $3F                                     ; $4B5D: $16 $3F
    nop                                           ; $4B5F: $00
    rst RST_38                                    ; $4B60: $FF
    inc h                                         ; $4B61: $24
    or $49                                        ; $4B62: $F6 $49
    ld a, [$C19D]                                 ; $4B64: $FA $9D $C1
    ld a, $F1                                     ; $4B67: $3E $F1
    adc [hl]                                      ; $4B69: $8E
    rst RST_38                                    ; $4B6A: $FF
    ld h, b                                       ; $4B6B: $60
    ldh a, [c]                                    ; $4B6C: $F2
    dec c                                         ; $4B6D: $0D
    adc d                                         ; $4B6E: $8A
    ld [hl], l                                    ; $4B6F: $75
    cp $01                                        ; $4B70: $FE $01
    add d                                         ; $4B72: $82
    ld bc, $0003                                  ; $4B73: $01 $03 $00
    ccf                                           ; $4B76: $3F
    nop                                           ; $4B77: $00
    ld a, c                                       ; $4B78: $79
    ld b, $AC                                     ; $4B79: $06 $AC
    ld d, e                                       ; $4B7B: $53
    ld a, [$0101]                                 ; $4B7C: $FA $01 $01
    nop                                           ; $4B7F: $00
    add b                                         ; $4B80: $80
    nop                                           ; $4B81: $00
    add b                                         ; $4B82: $80
    nop                                           ; $4B83: $00
    ld b, b                                       ; $4B84: $40
    add b                                         ; $4B85: $80
    jr nc, @-$3E                                  ; $4B86: $30 $C0

    inc c                                         ; $4B88: $0C
    ldh a, [rSC]                                  ; $4B89: $F0 $02
    db $FC                                        ; $4B8B: $FC
    ld bc, $01FE                                  ; $4B8C: $01 $FE $01
    cp $81                                        ; $4B8F: $FE $81
    ld a, [hl]                                    ; $4B91: $7E
    ld bc, $01FE                                  ; $4B92: $01 $FE $01
    cp $82                                        ; $4B95: $FE $82
    ld a, h                                       ; $4B97: $7C
    add a                                         ; $4B98: $87
    ld a, b                                       ; $4B99: $78
    ld b, c                                       ; $4B9A: $41
    cp [hl]                                       ; $4B9B: $BE
    or c                                          ; $4B9C: $B1
    ld c, $09                                     ; $4B9D: $0E $09
    ld b, $20                                     ; $4B9F: $06 $20
    nop                                           ; $4BA1: $00
    ld [hl], b                                    ; $4BA2: $70
    jr nz, jr_00D_4C1D                            ; $4BA3: $20 $78

    jr nc, jr_00D_4C1F                            ; $4BA5: $30 $78

    jr nc, jr_00D_4BE1                            ; $4BA7: $30 $38

    db $10                                        ; $4BA9: $10
    inc e                                         ; $4BAA: $1C
    ld [$040E], sp                                ; $4BAB: $08 $0E $04
    ld c, $04                                     ; $4BAE: $0E $04
    ld c, $04                                     ; $4BB0: $0E $04
    inc e                                         ; $4BB2: $1C
    ld [$089C], sp                                ; $4BB3: $08 $9C $08
    ld hl, sp-$70                                 ; $4BB6: $F8 $90
    ldh a, [$FF60]                                ; $4BB8: $F0 $60

jr_00D_4BBA:
    ld h, b                                       ; $4BBA: $60
    nop                                           ; $4BBB: $00
    nop                                           ; $4BBC: $00
    nop                                           ; $4BBD: $00
    nop                                           ; $4BBE: $00
    nop                                           ; $4BBF: $00
    nop                                           ; $4BC0: $00
    nop                                           ; $4BC1: $00
    nop                                           ; $4BC2: $00
    nop                                           ; $4BC3: $00
    nop                                           ; $4BC4: $00
    nop                                           ; $4BC5: $00

jr_00D_4BC6:
    nop                                           ; $4BC6: $00
    nop                                           ; $4BC7: $00
    nop                                           ; $4BC8: $00
    nop                                           ; $4BC9: $00
    nop                                           ; $4BCA: $00
    nop                                           ; $4BCB: $00
    nop                                           ; $4BCC: $00
    nop                                           ; $4BCD: $00
    nop                                           ; $4BCE: $00
    nop                                           ; $4BCF: $00
    nop                                           ; $4BD0: $00
    nop                                           ; $4BD1: $00
    nop                                           ; $4BD2: $00
    nop                                           ; $4BD3: $00
    ret nc                                        ; $4BD4: $D0

    nop                                           ; $4BD5: $00
    ld hl, sp-$30                                 ; $4BD6: $F8 $D0
    db $FC                                        ; $4BD8: $FC
    jr z, @-$02                                   ; $4BD9: $28 $FC

    ret nc                                        ; $4BDB: $D0

    cp $54                                        ; $4BDC: $FE $54
    rst RST_38                                    ; $4BDE: $FF
    and h                                         ; $4BDF: $A4
    add hl, bc                                    ; $4BE0: $09

jr_00D_4BE1:
    ld b, $1E                                     ; $4BE1: $06 $1E
    nop                                           ; $4BE3: $00
    ld a, [hl]                                    ; $4BE4: $7E
    nop                                           ; $4BE5: $00
    and [hl]                                      ; $4BE6: $A6
    ld e, b                                       ; $4BE7: $58
    db $FC                                        ; $4BE8: $FC
    nop                                           ; $4BE9: $00
    nop                                           ; $4BEA: $00
    nop                                           ; $4BEB: $00
    nop                                           ; $4BEC: $00
    nop                                           ; $4BED: $00
    nop                                           ; $4BEE: $00
    nop                                           ; $4BEF: $00
    nop                                           ; $4BF0: $00
    nop                                           ; $4BF1: $00
    nop                                           ; $4BF2: $00
    nop                                           ; $4BF3: $00
    nop                                           ; $4BF4: $00
    nop                                           ; $4BF5: $00
    nop                                           ; $4BF6: $00
    nop                                           ; $4BF7: $00
    nop                                           ; $4BF8: $00
    nop                                           ; $4BF9: $00
    nop                                           ; $4BFA: $00
    nop                                           ; $4BFB: $00
    nop                                           ; $4BFC: $00
    nop                                           ; $4BFD: $00
    nop                                           ; $4BFE: $00
    nop                                           ; $4BFF: $00
    nop                                           ; $4C00: $00
    nop                                           ; $4C01: $00
    nop                                           ; $4C02: $00
    nop                                           ; $4C03: $00
    nop                                           ; $4C04: $00
    nop                                           ; $4C05: $00
    nop                                           ; $4C06: $00
    nop                                           ; $4C07: $00
    nop                                           ; $4C08: $00
    nop                                           ; $4C09: $00
    nop                                           ; $4C0A: $00
    nop                                           ; $4C0B: $00
    nop                                           ; $4C0C: $00
    nop                                           ; $4C0D: $00
    nop                                           ; $4C0E: $00
    nop                                           ; $4C0F: $00
    nop                                           ; $4C10: $00
    nop                                           ; $4C11: $00
    nop                                           ; $4C12: $00
    nop                                           ; $4C13: $00
    nop                                           ; $4C14: $00
    nop                                           ; $4C15: $00
    nop                                           ; $4C16: $00
    nop                                           ; $4C17: $00
    nop                                           ; $4C18: $00
    nop                                           ; $4C19: $00
    nop                                           ; $4C1A: $00
    nop                                           ; $4C1B: $00
    nop                                           ; $4C1C: $00

jr_00D_4C1D:
    nop                                           ; $4C1D: $00
    ld h, b                                       ; $4C1E: $60

jr_00D_4C1F:
    nop                                           ; $4C1F: $00
    ccf                                           ; $4C20: $3F
    inc e                                         ; $4C21: $1C
    ccf                                           ; $4C22: $3F
    inc bc                                        ; $4C23: $03
    ccf                                           ; $4C24: $3F
    add hl, de                                    ; $4C25: $19
    ld a, a                                       ; $4C26: $7F
    ld h, $3F                                     ; $4C27: $26 $3F
    jr jr_00D_4C6A                                ; $4C29: $18 $3F

    dec c                                         ; $4C2B: $0D
    ld a, a                                       ; $4C2C: $7F
    ld [hl-], a                                   ; $4C2D: $32
    ccf                                           ; $4C2E: $3F
    inc c                                         ; $4C2F: $0C
    rra                                           ; $4C30: $1F
    ld [bc], a                                    ; $4C31: $02
    ccf                                           ; $4C32: $3F
    dec c                                         ; $4C33: $0D
    ld a, a                                       ; $4C34: $7F
    nop                                           ; $4C35: $00
    xor h                                         ; $4C36: $AC
    ld d, b                                       ; $4C37: $50
    ld hl, sp+$00                                 ; $4C38: $F8 $00
    nop                                           ; $4C3A: $00
    nop                                           ; $4C3B: $00

jr_00D_4C3C:
    nop                                           ; $4C3C: $00
    nop                                           ; $4C3D: $00
    nop                                           ; $4C3E: $00
    nop                                           ; $4C3F: $00
    db $F4                                        ; $4C40: $F4
    xor e                                         ; $4C41: $AB
    ldh a, [c]                                    ; $4C42: $F2
    ld c, l                                       ; $4C43: $4D
    ld a, [$FE55]                                 ; $4C44: $FA $55 $FE
    sub c                                         ; $4C47: $91
    rst RST_38                                    ; $4C48: $FF
    sub b                                         ; $4C49: $90
    rst RST_18                                    ; $4C4A: $DF
    jr nz, jr_00D_4C3C                            ; $4C4B: $20 $EF

    ld [hl], b                                    ; $4C4D: $70
    inc b                                         ; $4C4E: $04
    ei                                            ; $4C4F: $FB
    rst RST_00                                    ; $4C50: $C7
    jr c, @+$01                                   ; $4C51: $38 $FF

    add b                                         ; $4C53: $80
    ret z                                         ; $4C54: $C8

    jr nc, @+$2A                                  ; $4C55: $30 $28

    db $10                                        ; $4C57: $10
    jr jr_00D_4C5A                                ; $4C58: $18 $00

jr_00D_4C5A:
    ld bc, $0200                                  ; $4C5A: $01 $00 $02
    ld bc, $0003                                  ; $4C5D: $01 $03 $00
    nop                                           ; $4C60: $00
    nop                                           ; $4C61: $00
    nop                                           ; $4C62: $00
    nop                                           ; $4C63: $00
    nop                                           ; $4C64: $00
    nop                                           ; $4C65: $00
    nop                                           ; $4C66: $00
    nop                                           ; $4C67: $00
    nop                                           ; $4C68: $00
    nop                                           ; $4C69: $00

jr_00D_4C6A:
    nop                                           ; $4C6A: $00
    nop                                           ; $4C6B: $00
    nop                                           ; $4C6C: $00
    nop                                           ; $4C6D: $00
    nop                                           ; $4C6E: $00
    nop                                           ; $4C6F: $00
    nop                                           ; $4C70: $00
    nop                                           ; $4C71: $00
    nop                                           ; $4C72: $00
    nop                                           ; $4C73: $00
    nop                                           ; $4C74: $00
    nop                                           ; $4C75: $00
    pop hl                                        ; $4C76: $E1
    nop                                           ; $4C77: $00
    rra                                           ; $4C78: $1F
    pop hl                                        ; $4C79: $E1
    rra                                           ; $4C7A: $1F
    xor $BF                                       ; $4C7B: $EE $BF
    ld e, h                                       ; $4C7D: $5C
    call c, Call_000_07A3                         ; $4C7E: $DC $A3 $07
    ld a, [$F806]                                 ; $4C81: $FA $06 $F8
    ld [bc], a                                    ; $4C84: $02
    db $FC                                        ; $4C85: $FC
    ld [bc], a                                    ; $4C86: $02
    db $FC                                        ; $4C87: $FC
    ld [bc], a                                    ; $4C88: $02
    db $FC                                        ; $4C89: $FC
    ld [bc], a                                    ; $4C8A: $02
    db $FC                                        ; $4C8B: $FC
    add h                                         ; $4C8C: $84
    ld a, b                                       ; $4C8D: $78
    adc [hl]                                      ; $4C8E: $8E
    ld [hl], b                                    ; $4C8F: $70
    add d                                         ; $4C90: $82
    ld a, h                                       ; $4C91: $7C
    ld h, d                                       ; $4C92: $62
    inc e                                         ; $4C93: $1C
    ld [de], a                                    ; $4C94: $12
    inc c                                         ; $4C95: $0C
    inc h                                         ; $4C96: $24
    jr jr_00D_4D11                                ; $4C97: $18 $78

    nop                                           ; $4C99: $00
    ld hl, sp+$00                                 ; $4C9A: $F8 $00
    sbc b                                         ; $4C9C: $98
    ld h, b                                       ; $4C9D: $60
    ldh a, [rP1]                                  ; $4C9E: $F0 $00
    nop                                           ; $4CA0: $00
    nop                                           ; $4CA1: $00
    nop                                           ; $4CA2: $00
    nop                                           ; $4CA3: $00
    nop                                           ; $4CA4: $00
    nop                                           ; $4CA5: $00
    nop                                           ; $4CA6: $00
    nop                                           ; $4CA7: $00
    nop                                           ; $4CA8: $00
    nop                                           ; $4CA9: $00
    nop                                           ; $4CAA: $00
    nop                                           ; $4CAB: $00
    nop                                           ; $4CAC: $00
    nop                                           ; $4CAD: $00
    nop                                           ; $4CAE: $00
    nop                                           ; $4CAF: $00
    nop                                           ; $4CB0: $00
    nop                                           ; $4CB1: $00
    nop                                           ; $4CB2: $00
    nop                                           ; $4CB3: $00
    ldh [rP1], a                                  ; $4CB4: $E0 $00
    ld hl, sp-$20                                 ; $4CB6: $F8 $E0
    db $FC                                        ; $4CB8: $FC
    jr jr_00D_4CD9                                ; $4CB9: $18 $1E

    inc b                                         ; $4CBB: $04
    rst RST_00                                    ; $4CBC: $C7
    ld [bc], a                                    ; $4CBD: $02
    scf                                           ; $4CBE: $37
    jp nz, RST_00                                 ; $4CBF: $C2 $00 $00

    nop                                           ; $4CC2: $00
    nop                                           ; $4CC3: $00
    nop                                           ; $4CC4: $00
    nop                                           ; $4CC5: $00
    nop                                           ; $4CC6: $00
    nop                                           ; $4CC7: $00
    nop                                           ; $4CC8: $00
    nop                                           ; $4CC9: $00
    nop                                           ; $4CCA: $00
    nop                                           ; $4CCB: $00
    nop                                           ; $4CCC: $00
    nop                                           ; $4CCD: $00
    nop                                           ; $4CCE: $00
    nop                                           ; $4CCF: $00
    nop                                           ; $4CD0: $00
    nop                                           ; $4CD1: $00
    nop                                           ; $4CD2: $00
    nop                                           ; $4CD3: $00
    nop                                           ; $4CD4: $00
    nop                                           ; $4CD5: $00
    inc bc                                        ; $4CD6: $03
    nop                                           ; $4CD7: $00
    inc c                                         ; $4CD8: $0C

jr_00D_4CD9:
    inc bc                                        ; $4CD9: $03
    db $10                                        ; $4CDA: $10
    rrca                                          ; $4CDB: $0F
    ld h, $19                                     ; $4CDC: $26 $19
    ccf                                           ; $4CDE: $3F
    ld b, $01                                     ; $4CDF: $06 $01
    nop                                           ; $4CE1: $00
    ld [bc], a                                    ; $4CE2: $02
    ld bc, $0007                                  ; $4CE3: $01 $07 $00
    rlca                                          ; $4CE6: $07
    inc bc                                        ; $4CE7: $03
    rrca                                          ; $4CE8: $0F
    nop                                           ; $4CE9: $00
    rrca                                          ; $4CEA: $0F
    ld b, $1F                                     ; $4CEB: $06 $1F
    add hl, bc                                    ; $4CED: $09
    rrca                                          ; $4CEE: $0F
    ld b, $0F                                     ; $4CEF: $06 $0F
    inc bc                                        ; $4CF1: $03
    rra                                           ; $4CF2: $1F
    inc c                                         ; $4CF3: $0C
    rrca                                          ; $4CF4: $0F
    inc bc                                        ; $4CF5: $03
    rlca                                          ; $4CF6: $07
    nop                                           ; $4CF7: $00
    rrca                                          ; $4CF8: $0F
    inc bc                                        ; $4CF9: $03
    rra                                           ; $4CFA: $1F
    nop                                           ; $4CFB: $00
    dec hl                                        ; $4CFC: $2B
    inc d                                         ; $4CFD: $14
    ld a, $00                                     ; $4CFE: $3E $00
    ccf                                           ; $4D00: $3F
    nop                                           ; $4D01: $00
    ret                                           ; $4D02: $C9


    ld [hl], $11                                  ; $4D03: $36 $11
    xor $D1                                       ; $4D05: $EE $D1
    ld l, $F9                                     ; $4D07: $2E $F9
    sub $FD                                       ; $4D09: $D6 $FD
    ld a, [hl+]                                   ; $4D0B: $2A
    db $FD                                        ; $4D0C: $FD
    jp nc, Jump_00D_54FF                          ; $4D0D: $D2 $FF $54

    rst RST_38                                    ; $4D10: $FF

jr_00D_4D11:
    and h                                         ; $4D11: $A4
    rst RST_38                                    ; $4D12: $FF
    inc h                                         ; $4D13: $24
    rst RST_30                                    ; $4D14: $F7
    ld c, b                                       ; $4D15: $48
    ei                                            ; $4D16: $FB
    sbc h                                         ; $4D17: $9C

jr_00D_4D18:
    pop bc                                        ; $4D18: $C1
    ld a, $F1                                     ; $4D19: $3E $F1
    adc [hl]                                      ; $4D1B: $8E
    rst RST_38                                    ; $4D1C: $FF
    ld h, b                                       ; $4D1D: $60
    ldh a, [c]                                    ; $4D1E: $F2
    inc c                                         ; $4D1F: $0C
    nop                                           ; $4D20: $00
    nop                                           ; $4D21: $00
    nop                                           ; $4D22: $00
    nop                                           ; $4D23: $00
    nop                                           ; $4D24: $00
    nop                                           ; $4D25: $00
    ret nz                                        ; $4D26: $C0

    nop                                           ; $4D27: $00
    inc a                                         ; $4D28: $3C
    ret nz                                        ; $4D29: $C0

    inc bc                                        ; $4D2A: $03
    db $FC                                        ; $4D2B: $FC
    nop                                           ; $4D2C: $00
    rst RST_38                                    ; $4D2D: $FF
    nop                                           ; $4D2E: $00
    rst RST_38                                    ; $4D2F: $FF
    ld [$B8F7], sp                                ; $4D30: $08 $F7 $B8
    ld b, a                                       ; $4D33: $47
    rst RST_38                                    ; $4D34: $FF
    jr c, @+$01                                   ; $4D35: $38 $FF

    ld a, e                                       ; $4D37: $7B
    ld a, a                                       ; $4D38: $7F
    or b                                          ; $4D39: $B0
    cp $01                                        ; $4D3A: $FE $01
    ld c, a                                       ; $4D3C: $4F
    or b                                          ; $4D3D: $B0
    ld hl, sp+$00                                 ; $4D3E: $F8 $00
    ldh [rP1], a                                  ; $4D40: $E0 $00
    ldh a, [$FF60]                                ; $4D42: $F0 $60
    ld a, b                                       ; $4D44: $78
    sub b                                         ; $4D45: $90
    jr c, jr_00D_4D18                             ; $4D46: $38 $D0

    ld [hl], b                                    ; $4D48: $70
    and b                                         ; $4D49: $A0
    ldh a, [rLCDC]                                ; $4D4A: $F0 $40
    add sp, -$70                                  ; $4D4C: $E8 $90
    and h                                         ; $4D4E: $A4
    ld e, b                                       ; $4D4F: $58
    ld [hl+], a                                   ; $4D50: $22
    call c, $C639                                 ; $4D51: $DC $39 $C6
    rst RST_00                                    ; $4D54: $C7
    nop                                           ; $4D55: $00
    rra                                           ; $4D56: $1F
    nop                                           ; $4D57: $00
    daa                                           ; $4D58: $27
    jr @+$40                                      ; $4D59: $18 $3E

    nop                                           ; $4D5B: $00
    nop                                           ; $4D5C: $00
    nop                                           ; $4D5D: $00
    nop                                           ; $4D5E: $00
    nop                                           ; $4D5F: $00
    ld a, [bc]                                    ; $4D60: $0A
    inc b                                         ; $4D61: $04
    ld b, $00                                     ; $4D62: $06 $00
    nop                                           ; $4D64: $00
    nop                                           ; $4D65: $00
    nop                                           ; $4D66: $00
    nop                                           ; $4D67: $00
    nop                                           ; $4D68: $00
    nop                                           ; $4D69: $00
    nop                                           ; $4D6A: $00
    nop                                           ; $4D6B: $00
    nop                                           ; $4D6C: $00
    nop                                           ; $4D6D: $00
    nop                                           ; $4D6E: $00
    nop                                           ; $4D6F: $00
    nop                                           ; $4D70: $00
    nop                                           ; $4D71: $00
    nop                                           ; $4D72: $00
    nop                                           ; $4D73: $00
    nop                                           ; $4D74: $00
    nop                                           ; $4D75: $00
    nop                                           ; $4D76: $00
    nop                                           ; $4D77: $00
    nop                                           ; $4D78: $00
    nop                                           ; $4D79: $00
    nop                                           ; $4D7A: $00

jr_00D_4D7B:
    nop                                           ; $4D7B: $00
    nop                                           ; $4D7C: $00
    nop                                           ; $4D7D: $00
    nop                                           ; $4D7E: $00
    nop                                           ; $4D7F: $00
    jr jr_00D_4D82                                ; $4D80: $18 $00

jr_00D_4D82:
    inc l                                         ; $4D82: $2C
    db $10                                        ; $4D83: $10
    call c, $D820                                 ; $4D84: $DC $20 $D8
    and b                                         ; $4D87: $A0
    cp $00                                        ; $4D88: $FE $00
    add d                                         ; $4D8A: $82
    ld a, h                                       ; $4D8B: $7C
    db $F4                                        ; $4D8C: $F4
    jr c, jr_00D_4D7B                             ; $4D8D: $38 $EC

    sub b                                         ; $4D8F: $90
    db $FC                                        ; $4D90: $FC
    ld c, b                                       ; $4D91: $48
    db $FC                                        ; $4D92: $FC
    ld c, b                                       ; $4D93: $48
    db $FC                                        ; $4D94: $FC
    xor b                                         ; $4D95: $A8
    ld hl, sp-$60                                 ; $4D96: $F8 $A0
    ld hl, sp+$50                                 ; $4D98: $F8 $50
    ldh a, [$FFA0]                                ; $4D9A: $F0 $A0
    and b                                         ; $4D9C: $A0
    nop                                           ; $4D9D: $00
    nop                                           ; $4D9E: $00
    nop                                           ; $4D9F: $00
    adc a                                         ; $4DA0: $8F
    ld [hl], b                                    ; $4DA1: $70
    rra                                           ; $4DA2: $1F
    and $1F                                       ; $4DA3: $E6 $1F
    pop hl                                        ; $4DA5: $E1
    ld a, a                                       ; $4DA6: $7F
    add [hl]                                      ; $4DA7: $86
    ccf                                           ; $4DA8: $3F
    reti                                          ; $4DA9: $D9


    ccf                                           ; $4DAA: $3F
    add $1F                                       ; $4DAB: $C6 $1F
    db $EC                                        ; $4DAD: $EC
    ccf                                           ; $4DAE: $3F
    db $D3                                        ; $4DAF: $D3
    ccf                                           ; $4DB0: $3F
    call z, $E11F                                 ; $4DB1: $CC $1F $E1
    rrca                                          ; $4DB4: $0F
    or $0F                                        ; $4DB5: $F6 $0F
    pop af                                        ; $4DB7: $F1
    ld bc, $03FE                                  ; $4DB8: $01 $FE $03
    db $FC                                        ; $4DBB: $FC
    inc a                                         ; $4DBC: $3C
    ret nz                                        ; $4DBD: $C0

    ret nz                                        ; $4DBE: $C0

    nop                                           ; $4DBF: $00
    nop                                           ; $4DC0: $00
    nop                                           ; $4DC1: $00
    nop                                           ; $4DC2: $00
    nop                                           ; $4DC3: $00
    nop                                           ; $4DC4: $00
    nop                                           ; $4DC5: $00
    nop                                           ; $4DC6: $00
    nop                                           ; $4DC7: $00
    nop                                           ; $4DC8: $00
    nop                                           ; $4DC9: $00
    nop                                           ; $4DCA: $00
    nop                                           ; $4DCB: $00
    nop                                           ; $4DCC: $00
    nop                                           ; $4DCD: $00
    nop                                           ; $4DCE: $00
    nop                                           ; $4DCF: $00
    nop                                           ; $4DD0: $00
    nop                                           ; $4DD1: $00
    rra                                           ; $4DD2: $1F
    nop                                           ; $4DD3: $00
    dec d                                         ; $4DD4: $15
    ld a, [bc]                                    ; $4DD5: $0A
    rra                                           ; $4DD6: $1F
    nop                                           ; $4DD7: $00
    ld a, $00                                     ; $4DD8: $3E $00
    inc a                                         ; $4DDA: $3C
    nop                                           ; $4DDB: $00
    inc a                                         ; $4DDC: $3C
    nop                                           ; $4DDD: $00
    ld c, b                                       ; $4DDE: $48
    jr nc, jr_00D_4DEB                            ; $4DDF: $30 $0A

    dec b                                         ; $4DE1: $05
    db $10                                        ; $4DE2: $10
    rrca                                          ; $4DE3: $0F
    ldh [$FF1F], a                                ; $4DE4: $E0 $1F
    ldh a, [rIF]                                  ; $4DE6: $F0 $0F
    nop                                           ; $4DE8: $00
    rst RST_38                                    ; $4DE9: $FF
    nop                                           ; $4DEA: $00

jr_00D_4DEB:
    rst RST_38                                    ; $4DEB: $FF
    nop                                           ; $4DEC: $00
    rst RST_38                                    ; $4DED: $FF
    nop                                           ; $4DEE: $00
    rst RST_38                                    ; $4DEF: $FF
    ld bc, $02FE                                  ; $4DF0: $01 $FE $02
    db $FC                                        ; $4DF3: $FC
    db $FC                                        ; $4DF4: $FC
    nop                                           ; $4DF5: $00
    inc a                                         ; $4DF6: $3C
    ld [$30F8], sp                                ; $4DF7: $08 $F8 $30
    ldh a, [$FFC0]                                ; $4DFA: $F0 $C0
    ret nz                                        ; $4DFC: $C0

    nop                                           ; $4DFD: $00
    nop                                           ; $4DFE: $00
    nop                                           ; $4DFF: $00
    nop                                           ; $4E00: $00
    nop                                           ; $4E01: $00
    nop                                           ; $4E02: $00
    nop                                           ; $4E03: $00
    nop                                           ; $4E04: $00
    nop                                           ; $4E05: $00
    nop                                           ; $4E06: $00
    nop                                           ; $4E07: $00
    nop                                           ; $4E08: $00
    nop                                           ; $4E09: $00
    nop                                           ; $4E0A: $00
    nop                                           ; $4E0B: $00
    nop                                           ; $4E0C: $00
    nop                                           ; $4E0D: $00
    nop                                           ; $4E0E: $00
    nop                                           ; $4E0F: $00
    inc bc                                        ; $4E10: $03
    nop                                           ; $4E11: $00
    rlca                                          ; $4E12: $07
    nop                                           ; $4E13: $00
    ld c, $01                                     ; $4E14: $0E $01
    ld a, [bc]                                    ; $4E16: $0A
    dec b                                         ; $4E17: $05
    ld d, $09                                     ; $4E18: $16 $09
    ld e, $01                                     ; $4E1A: $1E $01
    ld b, $01                                     ; $4E1C: $06 $01
    ld a, [bc]                                    ; $4E1E: $0A
    dec b                                         ; $4E1F: $05
    inc de                                        ; $4E20: $13
    inc c                                         ; $4E21: $0C
    inc hl                                        ; $4E22: $23
    inc e                                         ; $4E23: $1C
    ld h, $19                                     ; $4E24: $26 $19
    ret nc                                        ; $4E26: $D0

    cpl                                           ; $4E27: $2F
    db $10                                        ; $4E28: $10
    rst RST_28                                    ; $4E29: $EF
    adc b                                         ; $4E2A: $88
    ld [hl], a                                    ; $4E2B: $77
    db $F4                                        ; $4E2C: $F4
    inc bc                                        ; $4E2D: $03
    inc bc                                        ; $4E2E: $03
    nop                                           ; $4E2F: $00
    nop                                           ; $4E30: $00
    nop                                           ; $4E31: $00
    nop                                           ; $4E32: $00
    nop                                           ; $4E33: $00
    nop                                           ; $4E34: $00
    nop                                           ; $4E35: $00
    inc bc                                        ; $4E36: $03
    nop                                           ; $4E37: $00
    ld l, a                                       ; $4E38: $6F
    inc bc                                        ; $4E39: $03
    rst RST_38                                    ; $4E3A: $FF
    ld l, h                                       ; $4E3B: $6C
    db $FC                                        ; $4E3C: $FC
    ldh a, [$FFF0]                                ; $4E3D: $F0 $F0
    nop                                           ; $4E3F: $00
    nop                                           ; $4E40: $00
    nop                                           ; $4E41: $00
    nop                                           ; $4E42: $00
    nop                                           ; $4E43: $00
    nop                                           ; $4E44: $00
    nop                                           ; $4E45: $00
    nop                                           ; $4E46: $00
    nop                                           ; $4E47: $00
    nop                                           ; $4E48: $00
    nop                                           ; $4E49: $00
    nop                                           ; $4E4A: $00
    nop                                           ; $4E4B: $00
    nop                                           ; $4E4C: $00
    nop                                           ; $4E4D: $00
    nop                                           ; $4E4E: $00
    nop                                           ; $4E4F: $00
    nop                                           ; $4E50: $00
    nop                                           ; $4E51: $00
    ld e, $00                                     ; $4E52: $1E $00
    ld [hl-], a                                   ; $4E54: $32
    inc c                                         ; $4E55: $0C
    ld l, $10                                     ; $4E56: $2E $10
    ld e, $00                                     ; $4E58: $1E $00
    ld e, $00                                     ; $4E5A: $1E $00
    ld c, $00                                     ; $4E5C: $0E $00
    ld [de], a                                    ; $4E5E: $12
    inc c                                         ; $4E5F: $0C
    rlca                                          ; $4E60: $07
    nop                                           ; $4E61: $00
    rra                                           ; $4E62: $1F
    nop                                           ; $4E63: $00
    rra                                           ; $4E64: $1F
    nop                                           ; $4E65: $00
    rrca                                          ; $4E66: $0F
    nop                                           ; $4E67: $00
    inc c                                         ; $4E68: $0C
    nop                                           ; $4E69: $00
    nop                                           ; $4E6A: $00
    nop                                           ; $4E6B: $00
    nop                                           ; $4E6C: $00
    nop                                           ; $4E6D: $00
    nop                                           ; $4E6E: $00
    nop                                           ; $4E6F: $00
    nop                                           ; $4E70: $00
    nop                                           ; $4E71: $00
    nop                                           ; $4E72: $00
    nop                                           ; $4E73: $00
    ld bc, $0100                                  ; $4E74: $01 $00 $01
    nop                                           ; $4E77: $00
    nop                                           ; $4E78: $00
    nop                                           ; $4E79: $00
    nop                                           ; $4E7A: $00
    nop                                           ; $4E7B: $00
    nop                                           ; $4E7C: $00
    nop                                           ; $4E7D: $00
    nop                                           ; $4E7E: $00
    nop                                           ; $4E7F: $00
    ld [hl], c                                    ; $4E80: $71
    nop                                           ; $4E81: $00
    rst RST_38                                    ; $4E82: $FF
    ld [hl], b                                    ; $4E83: $70
    rst RST_38                                    ; $4E84: $FF
    jr nc, jr_00D_4EC0                            ; $4E85: $30 $39

    ld b, $07                                     ; $4E87: $06 $07
    nop                                           ; $4E89: $00
    nop                                           ; $4E8A: $00
    nop                                           ; $4E8B: $00
    nop                                           ; $4E8C: $00
    nop                                           ; $4E8D: $00
    nop                                           ; $4E8E: $00
    nop                                           ; $4E8F: $00
    nop                                           ; $4E90: $00
    nop                                           ; $4E91: $00
    nop                                           ; $4E92: $00
    nop                                           ; $4E93: $00
    nop                                           ; $4E94: $00
    nop                                           ; $4E95: $00
    nop                                           ; $4E96: $00
    nop                                           ; $4E97: $00
    nop                                           ; $4E98: $00
    nop                                           ; $4E99: $00
    nop                                           ; $4E9A: $00
    nop                                           ; $4E9B: $00
    nop                                           ; $4E9C: $00
    nop                                           ; $4E9D: $00
    nop                                           ; $4E9E: $00
    nop                                           ; $4E9F: $00
    ld bc, $0E00                                  ; $4EA0: $01 $00 $0E
    ld bc, $0B1C                                  ; $4EA3: $01 $1C $0B
    inc a                                         ; $4EA6: $3C
    inc de                                        ; $4EA7: $13
    inc a                                         ; $4EA8: $3C
    inc de                                        ; $4EA9: $13
    halt                                          ; $4EAA: $76
    ld hl, $23FC                                  ; $4EAB: $21 $FC $23
    ldh a, [rIF]                                  ; $4EAE: $F0 $0F
    ldh [$FF1F], a                                ; $4EB0: $E0 $1F
    rst RST_38                                    ; $4EB2: $FF
    nop                                           ; $4EB3: $00
    add b                                         ; $4EB4: $80
    nop                                           ; $4EB5: $00
    nop                                           ; $4EB6: $00
    nop                                           ; $4EB7: $00
    nop                                           ; $4EB8: $00
    nop                                           ; $4EB9: $00
    nop                                           ; $4EBA: $00
    nop                                           ; $4EBB: $00
    nop                                           ; $4EBC: $00
    nop                                           ; $4EBD: $00
    nop                                           ; $4EBE: $00
    nop                                           ; $4EBF: $00

jr_00D_4EC0:
    inc bc                                        ; $4EC0: $03
    nop                                           ; $4EC1: $00
    db $FC                                        ; $4EC2: $FC
    inc bc                                        ; $4EC3: $03
    nop                                           ; $4EC4: $00
    rst RST_38                                    ; $4EC5: $FF
    nop                                           ; $4EC6: $00
    rst RST_38                                    ; $4EC7: $FF
    inc b                                         ; $4EC8: $04
    ei                                            ; $4EC9: $FB
    inc b                                         ; $4ECA: $04
    ei                                            ; $4ECB: $FB
    inc b                                         ; $4ECC: $04
    ei                                            ; $4ECD: $FB
    add hl, bc                                    ; $4ECE: $09
    or $0A                                        ; $4ECF: $F6 $0A
    push af                                       ; $4ED1: $F5
    ld a, [hl]                                    ; $4ED2: $7E
    add c                                         ; $4ED3: $81
    pop bc                                        ; $4ED4: $C1
    nop                                           ; $4ED5: $00
    ld bc, $0000                                  ; $4ED6: $01 $00 $00
    nop                                           ; $4ED9: $00
    nop                                           ; $4EDA: $00
    nop                                           ; $4EDB: $00
    nop                                           ; $4EDC: $00
    nop                                           ; $4EDD: $00
    nop                                           ; $4EDE: $00
    nop                                           ; $4EDF: $00
    rra                                           ; $4EE0: $1F
    nop                                           ; $4EE1: $00
    pop hl                                        ; $4EE2: $E1
    ld e, $03                                     ; $4EE3: $1E $03
    db $FD                                        ; $4EE5: $FD
    inc bc                                        ; $4EE6: $03
    db $FC                                        ; $4EE7: $FC
    inc bc                                        ; $4EE8: $03
    db $FD                                        ; $4EE9: $FD
    rlca                                          ; $4EEA: $07
    ld a, [$F907]                                 ; $4EEB: $FA $07 $F9
    ld b, e                                       ; $4EEE: $43
    cp h                                          ; $4EEF: $BC
    add a                                         ; $4EF0: $87
    ld a, e                                       ; $4EF1: $7B
    inc bc                                        ; $4EF2: $03
    db $FC                                        ; $4EF3: $FC
    ccf                                           ; $4EF4: $3F
    jp nz, $807F                                  ; $4EF5: $C2 $7F $80

    ld c, e                                       ; $4EF8: $4B
    or l                                          ; $4EF9: $B5
    rst RST_38                                    ; $4EFA: $FF
    nop                                           ; $4EFB: $00
    nop                                           ; $4EFC: $00
    nop                                           ; $4EFD: $00
    nop                                           ; $4EFE: $00
    nop                                           ; $4EFF: $00
    db $F4                                        ; $4F00: $F4
    nop                                           ; $4F01: $00
    cp $34                                        ; $4F02: $FE $34
    rst RST_38                                    ; $4F04: $FF
    jp z, Jump_000_34FF                           ; $4F05: $CA $FF $34

    rst RST_38                                    ; $4F08: $FF
    sub l                                         ; $4F09: $95
    rst RST_38                                    ; $4F0A: $FF
    ld l, c                                       ; $4F0B: $69
    rst RST_38                                    ; $4F0C: $FF
    adc c                                         ; $4F0D: $89
    db $FD                                        ; $4F0E: $FD
    jp nc, $27FE                                  ; $4F0F: $D2 $FE $27

    ldh a, [$FFCF]                                ; $4F12: $F0 $CF
    db $FC                                        ; $4F14: $FC
    inc hl                                        ; $4F15: $23
    rst RST_38                                    ; $4F16: $FF
    ret c                                         ; $4F17: $D8

    db $FC                                        ; $4F18: $FC
    inc hl                                        ; $4F19: $23
    ei                                            ; $4F1A: $FB
    nop                                           ; $4F1B: $00
    nop                                           ; $4F1C: $00
    nop                                           ; $4F1D: $00
    nop                                           ; $4F1E: $00
    nop                                           ; $4F1F: $00
    add b                                         ; $4F20: $80
    nop                                           ; $4F21: $00
    add b                                         ; $4F22: $80
    nop                                           ; $4F23: $00
    add b                                         ; $4F24: $80
    nop                                           ; $4F25: $00
    add b                                         ; $4F26: $80
    nop                                           ; $4F27: $00
    add b                                         ; $4F28: $80
    nop                                           ; $4F29: $00
    ld h, b                                       ; $4F2A: $60
    add b                                         ; $4F2B: $80
    ld e, b                                       ; $4F2C: $58
    and b                                         ; $4F2D: $A0
    cp [hl]                                       ; $4F2E: $BE
    ld b, b                                       ; $4F2F: $40
    push af                                       ; $4F30: $F5
    ld a, [bc]                                    ; $4F31: $0A
    sbc a                                         ; $4F32: $9F
    nop                                           ; $4F33: $00
    nop                                           ; $4F34: $00
    nop                                           ; $4F35: $00
    nop                                           ; $4F36: $00
    nop                                           ; $4F37: $00
    nop                                           ; $4F38: $00
    nop                                           ; $4F39: $00
    nop                                           ; $4F3A: $00
    nop                                           ; $4F3B: $00
    nop                                           ; $4F3C: $00
    nop                                           ; $4F3D: $00
    nop                                           ; $4F3E: $00
    nop                                           ; $4F3F: $00
    nop                                           ; $4F40: $00
    nop                                           ; $4F41: $00
    nop                                           ; $4F42: $00
    nop                                           ; $4F43: $00
    nop                                           ; $4F44: $00
    nop                                           ; $4F45: $00
    nop                                           ; $4F46: $00
    nop                                           ; $4F47: $00
    nop                                           ; $4F48: $00
    nop                                           ; $4F49: $00
    inc bc                                        ; $4F4A: $03
    nop                                           ; $4F4B: $00
    rrca                                          ; $4F4C: $0F
    inc bc                                        ; $4F4D: $03
    rra                                           ; $4F4E: $1F
    inc c                                         ; $4F4F: $0C
    inc a                                         ; $4F50: $3C
    jr jr_00D_4F92                                ; $4F51: $18 $3F

    inc e                                         ; $4F53: $1C
    ccf                                           ; $4F54: $3F
    rra                                           ; $4F55: $1F
    ld a, $1F                                     ; $4F56: $3E $1F
    rra                                           ; $4F58: $1F
    rrca                                          ; $4F59: $0F
    dec c                                         ; $4F5A: $0D
    rlca                                          ; $4F5B: $07
    ld b, $03                                     ; $4F5C: $06 $03
    inc bc                                        ; $4F5E: $03
    nop                                           ; $4F5F: $00
    ldh [rP1], a                                  ; $4F60: $E0 $00
    pop bc                                        ; $4F62: $C1
    nop                                           ; $4F63: $00
    inc bc                                        ; $4F64: $03
    ld bc, $0003                                  ; $4F65: $01 $03 $00
    rlca                                          ; $4F68: $07
    inc bc                                        ; $4F69: $03
    rst RST_28                                    ; $4F6A: $EF
    inc b                                         ; $4F6B: $04
    rst RST_38                                    ; $4F6C: $FF
    ldh [rP1], a                                  ; $4F6D: $E0 $00
    rst RST_38                                    ; $4F6F: $FF
    add b                                         ; $4F70: $80
    rst RST_38                                    ; $4F71: $FF
    nop                                           ; $4F72: $00
    rst RST_38                                    ; $4F73: $FF
    nop                                           ; $4F74: $00
    rst RST_38                                    ; $4F75: $FF
    ret nz                                        ; $4F76: $C0

    ccf                                           ; $4F77: $3F
    jr c, jr_00D_4F81                             ; $4F78: $38 $07

    rlca                                          ; $4F7A: $07
    nop                                           ; $4F7B: $00
    nop                                           ; $4F7C: $00
    nop                                           ; $4F7D: $00
    nop                                           ; $4F7E: $00
    nop                                           ; $4F7F: $00
    rst RST_38                                    ; $4F80: $FF

jr_00D_4F81:
    nop                                           ; $4F81: $00
    rrca                                          ; $4F82: $0F
    rst RST_38                                    ; $4F83: $FF
    ccf                                           ; $4F84: $3F
    rst RST_38                                    ; $4F85: $FF
    ld bc, $0FFE                                  ; $4F86: $01 $FE $0F
    rst RST_38                                    ; $4F89: $FF
    ld a, a                                       ; $4F8A: $7F
    rst RST_38                                    ; $4F8B: $FF
    rlca                                          ; $4F8C: $07
    cp $FF                                        ; $4F8D: $FE $FF
    rst RST_38                                    ; $4F8F: $FF
    rst RST_38                                    ; $4F90: $FF
    rlca                                          ; $4F91: $07

jr_00D_4F92:
    rlca                                          ; $4F92: $07
    nop                                           ; $4F93: $00
    ld [bc], a                                    ; $4F94: $02
    ld bc, $0007                                  ; $4F95: $01 $07 $00
    rra                                           ; $4F98: $1F
    nop                                           ; $4F99: $00
    daa                                           ; $4F9A: $27
    jr jr_00D_4FDB                                ; $4F9B: $18 $3E

    nop                                           ; $4F9D: $00
    nop                                           ; $4F9E: $00
    nop                                           ; $4F9F: $00
    rst RST_38                                    ; $4FA0: $FF
    nop                                           ; $4FA1: $00
    cp $F9                                        ; $4FA2: $FE $F9
    db $FC                                        ; $4FA4: $FC
    jp Jump_000_2FD0                              ; $4FA5: $C3 $D0 $2F


    rst RST_38                                    ; $4FA8: $FF
    ret nz                                        ; $4FA9: $C0

    cp $FD                                        ; $4FAA: $FE $FD
    db $FC                                        ; $4FAC: $FC
    inc bc                                        ; $4FAD: $03
    ld hl, sp-$19                                 ; $4FAE: $F8 $E7
    cp $F9                                        ; $4FB0: $FE $F9
    rst RST_38                                    ; $4FB2: $FF
    nop                                           ; $4FB3: $00
    add d                                         ; $4FB4: $82
    ld bc, $0384                                  ; $4FB5: $01 $84 $03
    rrca                                          ; $4FB8: $0F
    nop                                           ; $4FB9: $00
    ccf                                           ; $4FBA: $3F
    nop                                           ; $4FBB: $00
    ld d, e                                       ; $4FBC: $53
    inc l                                         ; $4FBD: $2C

jr_00D_4FBE:
    ld a, [hl]                                    ; $4FBE: $7E
    nop                                           ; $4FBF: $00
    nop                                           ; $4FC0: $00
    nop                                           ; $4FC1: $00
    nop                                           ; $4FC2: $00
    nop                                           ; $4FC3: $00

jr_00D_4FC4:
    nop                                           ; $4FC4: $00
    nop                                           ; $4FC5: $00
    nop                                           ; $4FC6: $00
    nop                                           ; $4FC7: $00
    nop                                           ; $4FC8: $00
    nop                                           ; $4FC9: $00
    nop                                           ; $4FCA: $00
    nop                                           ; $4FCB: $00
    nop                                           ; $4FCC: $00
    nop                                           ; $4FCD: $00
    nop                                           ; $4FCE: $00
    nop                                           ; $4FCF: $00
    nop                                           ; $4FD0: $00
    nop                                           ; $4FD1: $00
    nop                                           ; $4FD2: $00
    nop                                           ; $4FD3: $00
    ld h, h                                       ; $4FD4: $64
    nop                                           ; $4FD5: $00
    rst RST_38                                    ; $4FD6: $FF
    ld h, h                                       ; $4FD7: $64
    rst RST_38                                    ; $4FD8: $FF
    rla                                           ; $4FD9: $17
    rst RST_38                                    ; $4FDA: $FF

jr_00D_4FDB:
    xor b                                         ; $4FDB: $A8
    ld hl, sp+$47                                 ; $4FDC: $F8 $47
    ldh [$FF9F], a                                ; $4FDE: $E0 $9F
    nop                                           ; $4FE0: $00
    nop                                           ; $4FE1: $00
    nop                                           ; $4FE2: $00
    nop                                           ; $4FE3: $00
    nop                                           ; $4FE4: $00
    nop                                           ; $4FE5: $00

jr_00D_4FE6:
    nop                                           ; $4FE6: $00
    nop                                           ; $4FE7: $00
    nop                                           ; $4FE8: $00
    nop                                           ; $4FE9: $00
    nop                                           ; $4FEA: $00
    nop                                           ; $4FEB: $00
    nop                                           ; $4FEC: $00
    nop                                           ; $4FED: $00
    nop                                           ; $4FEE: $00
    nop                                           ; $4FEF: $00
    nop                                           ; $4FF0: $00
    nop                                           ; $4FF1: $00
    nop                                           ; $4FF2: $00
    nop                                           ; $4FF3: $00
    nop                                           ; $4FF4: $00
    nop                                           ; $4FF5: $00
    nop                                           ; $4FF6: $00
    nop                                           ; $4FF7: $00
    add b                                         ; $4FF8: $80
    nop                                           ; $4FF9: $00
    ret nz                                        ; $4FFA: $C0

    nop                                           ; $4FFB: $00
    jr nc, jr_00D_4FBE                            ; $4FFC: $30 $C0

    inc c                                         ; $4FFE: $0C
    ldh a, [$FFC0]                                ; $4FFF: $F0 $C0
    nop                                           ; $5001: $00
    jr nc, jr_00D_4FC4                            ; $5002: $30 $C0

    jr jr_00D_4FE6                                ; $5004: $18 $E0

    ld a, $D8                                     ; $5006: $3E $D8
    rra                                           ; $5008: $1F
    and $17                                       ; $5009: $E6 $17
    jp hl                                         ; $500B: $E9


    rla                                           ; $500C: $17
    add sp, $11                                   ; $500D: $E8 $11
    xor $21                                       ; $500F: $EE $21
    sbc $38                                       ; $5011: $DE $38
    rst RST_00                                    ; $5013: $C7
    ld b, [hl]                                    ; $5014: $46
    add c                                         ; $5015: $81
    add c                                         ; $5016: $81
    nop                                           ; $5017: $00
    ld bc, $0200                                  ; $5018: $01 $00 $02
    ld bc, $0003                                  ; $501B: $01 $03 $00
    nop                                           ; $501E: $00
    nop                                           ; $501F: $00
    add b                                         ; $5020: $80
    nop                                           ; $5021: $00
    ldh [$FF80], a                                ; $5022: $E0 $80
    ld hl, sp+$60                                 ; $5024: $F8 $60
    ld a, h                                       ; $5026: $7C
    jr jr_00D_5048                                ; $5027: $18 $1F

    inc b                                         ; $5029: $04
    add a                                         ; $502A: $87
    ld bc, $01C3                                  ; $502B: $01 $C3 $01
    pop hl                                        ; $502E: $E1
    nop                                           ; $502F: $00
    ldh [rP1], a                                  ; $5030: $E0 $00
    ld h, b                                       ; $5032: $60
    add b                                         ; $5033: $80
    ret nz                                        ; $5034: $C0

    nop                                           ; $5035: $00
    nop                                           ; $5036: $00
    nop                                           ; $5037: $00
    nop                                           ; $5038: $00
    nop                                           ; $5039: $00
    nop                                           ; $503A: $00
    nop                                           ; $503B: $00
    nop                                           ; $503C: $00
    nop                                           ; $503D: $00
    nop                                           ; $503E: $00
    nop                                           ; $503F: $00
    add b                                         ; $5040: $80
    nop                                           ; $5041: $00
    ret nz                                        ; $5042: $C0

    add b                                         ; $5043: $80
    ldh [$FFC0], a                                ; $5044: $E0 $C0
    ret nz                                        ; $5046: $C0

    nop                                           ; $5047: $00

jr_00D_5048:
    nop                                           ; $5048: $00
    nop                                           ; $5049: $00
    nop                                           ; $504A: $00
    nop                                           ; $504B: $00
    nop                                           ; $504C: $00
    nop                                           ; $504D: $00
    nop                                           ; $504E: $00
    nop                                           ; $504F: $00
    nop                                           ; $5050: $00
    nop                                           ; $5051: $00
    nop                                           ; $5052: $00
    nop                                           ; $5053: $00
    nop                                           ; $5054: $00
    nop                                           ; $5055: $00
    nop                                           ; $5056: $00
    nop                                           ; $5057: $00
    nop                                           ; $5058: $00
    nop                                           ; $5059: $00
    nop                                           ; $505A: $00
    nop                                           ; $505B: $00
    nop                                           ; $505C: $00
    nop                                           ; $505D: $00
    nop                                           ; $505E: $00
    nop                                           ; $505F: $00
    nop                                           ; $5060: $00
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    nop                                           ; $5063: $00
    nop                                           ; $5064: $00
    nop                                           ; $5065: $00
    ld bc, $0300                                  ; $5066: $01 $00 $03
    ld bc, $0003                                  ; $5069: $01 $03 $00
    rlca                                          ; $506C: $07
    inc bc                                        ; $506D: $03
    rrca                                          ; $506E: $0F
    inc b                                         ; $506F: $04
    rst RST_20                                    ; $5070: $E7
    inc bc                                        ; $5071: $03
    rst RST_08                                    ; $5072: $CF
    inc b                                         ; $5073: $04
    rst RST_28                                    ; $5074: $EF

jr_00D_5075:
    ld [bc], a                                    ; $5075: $02
    rst RST_38                                    ; $5076: $FF
    nop                                           ; $5077: $00
    ret nz                                        ; $5078: $C0

    ccf                                           ; $5079: $3F
    ld [hl], b                                    ; $507A: $70
    rrca                                          ; $507B: $0F
    ld c, $01                                     ; $507C: $0E $01
    ld bc, $C000                                  ; $507E: $01 $00 $C0
    ccf                                           ; $5081: $3F
    add b                                         ; $5082: $80
    ld a, a                                       ; $5083: $7F
    ret nz                                        ; $5084: $C0

    ccf                                           ; $5085: $3F
    nop                                           ; $5086: $00
    rst RST_38                                    ; $5087: $FF
    nop                                           ; $5088: $00
    rst RST_38                                    ; $5089: $FF
    inc b                                         ; $508A: $04
    ei                                            ; $508B: $FB
    jr jr_00D_5075                                ; $508C: $18 $E7

    rst RST_38                                    ; $508E: $FF
    nop                                           ; $508F: $00
    inc b                                         ; $5090: $04
    inc bc                                        ; $5091: $03
    ld [bc], a                                    ; $5092: $02
    ld bc, $0102                                  ; $5093: $01 $02 $01
    rlca                                          ; $5096: $07
    nop                                           ; $5097: $00
    rra                                           ; $5098: $1F
    nop                                           ; $5099: $00
    daa                                           ; $509A: $27
    jr jr_00D_50DB                                ; $509B: $18 $3E

    nop                                           ; $509D: $00
    nop                                           ; $509E: $00
    nop                                           ; $509F: $00
    inc bc                                        ; $50A0: $03
    db $FC                                        ; $50A1: $FC
    nop                                           ; $50A2: $00
    rst RST_38                                    ; $50A3: $FF
    nop                                           ; $50A4: $00
    rst RST_38                                    ; $50A5: $FF
    db $10                                        ; $50A6: $10
    rst RST_28                                    ; $50A7: $EF
    db $10                                        ; $50A8: $10
    rst RST_28                                    ; $50A9: $EF
    db $10                                        ; $50AA: $10
    rst RST_28                                    ; $50AB: $EF
    jr nc, @-$2F                                  ; $50AC: $30 $CF

    ret nc                                        ; $50AE: $D0

    rrca                                          ; $50AF: $0F
    ld c, b                                       ; $50B0: $48
    add a                                         ; $50B1: $87
    ld b, a                                       ; $50B2: $47
    add b                                         ; $50B3: $80
    add d                                         ; $50B4: $82
    ld bc, $0384                                  ; $50B5: $01 $84 $03
    rrca                                          ; $50B8: $0F
    nop                                           ; $50B9: $00
    ccf                                           ; $50BA: $3F
    nop                                           ; $50BB: $00
    ld d, e                                       ; $50BC: $53
    inc l                                         ; $50BD: $2C
    ld a, [hl]                                    ; $50BE: $7E
    nop                                           ; $50BF: $00
    nop                                           ; $50C0: $00
    nop                                           ; $50C1: $00
    nop                                           ; $50C2: $00
    nop                                           ; $50C3: $00
    nop                                           ; $50C4: $00
    nop                                           ; $50C5: $00
    nop                                           ; $50C6: $00
    nop                                           ; $50C7: $00
    nop                                           ; $50C8: $00
    nop                                           ; $50C9: $00
    nop                                           ; $50CA: $00
    nop                                           ; $50CB: $00
    nop                                           ; $50CC: $00
    nop                                           ; $50CD: $00
    nop                                           ; $50CE: $00
    nop                                           ; $50CF: $00
    nop                                           ; $50D0: $00
    nop                                           ; $50D1: $00
    nop                                           ; $50D2: $00
    nop                                           ; $50D3: $00
    nop                                           ; $50D4: $00
    nop                                           ; $50D5: $00
    nop                                           ; $50D6: $00
    nop                                           ; $50D7: $00
    ld bc, $0300                                  ; $50D8: $01 $00 $03

jr_00D_50DB:
    nop                                           ; $50DB: $00
    inc bc                                        ; $50DC: $03
    nop                                           ; $50DD: $00
    ld bc, $FE00                                  ; $50DE: $01 $00 $FE
    nop                                           ; $50E1: $00
    rst RST_38                                    ; $50E2: $FF
    ld a, [hl]                                    ; $50E3: $7E
    rst RST_38                                    ; $50E4: $FF
    ld a, [hl]                                    ; $50E5: $7E
    ei                                            ; $50E6: $FB
    ld a, [hl]                                    ; $50E7: $7E
    db $EB                                        ; $50E8: $EB
    ld a, [hl]                                    ; $50E9: $7E
    db $EB                                        ; $50EA: $EB
    ld a, [hl]                                    ; $50EB: $7E
    bit 7, [hl]                                   ; $50EC: $CB $7E
    jp $C37E                                      ; $50EE: $C3 $7E $C3


    ld a, [hl]                                    ; $50F1: $7E
    jp $C37E                                      ; $50F2: $C3 $7E $C3


    ld a, [hl]                                    ; $50F5: $7E
    db $D3                                        ; $50F6: $D3
    ld a, [hl]                                    ; $50F7: $7E
    db $D3                                        ; $50F8: $D3
    ld a, [hl]                                    ; $50F9: $7E
    db $D3                                        ; $50FA: $D3
    ld a, [hl]                                    ; $50FB: $7E
    di                                            ; $50FC: $F3
    ld a, [hl]                                    ; $50FD: $7E
    di                                            ; $50FE: $F3
    ld a, [hl]                                    ; $50FF: $7E
    ld [hl], e                                    ; $5100: $73
    ld a, $7B                                     ; $5101: $3E $7B
    ld a, $7B                                     ; $5103: $3E $7B
    ccf                                           ; $5105: $3F
    dec sp                                        ; $5106: $3B
    rra                                           ; $5107: $1F
    ccf                                           ; $5108: $3F
    rra                                           ; $5109: $1F
    rra                                           ; $510A: $1F
    rrca                                          ; $510B: $0F
    rra                                           ; $510C: $1F
    rrca                                          ; $510D: $0F
    rrca                                          ; $510E: $0F
    rlca                                          ; $510F: $07
    rrca                                          ; $5110: $0F
    ld b, $07                                     ; $5111: $06 $07
    ld [bc], a                                    ; $5113: $02
    inc bc                                        ; $5114: $03
    ld bc, $0001                                  ; $5115: $01 $01 $00
    nop                                           ; $5118: $00
    nop                                           ; $5119: $00
    nop                                           ; $511A: $00
    nop                                           ; $511B: $00
    nop                                           ; $511C: $00
    nop                                           ; $511D: $00
    nop                                           ; $511E: $00
    nop                                           ; $511F: $00
    add a                                         ; $5120: $87
    ld bc, $0307                                  ; $5121: $01 $07 $03
    rlca                                          ; $5124: $07
    nop                                           ; $5125: $00
    add h                                         ; $5126: $84
    inc bc                                        ; $5127: $03
    add h                                         ; $5128: $84
    inc bc                                        ; $5129: $03
    add h                                         ; $512A: $84
    inc bc                                        ; $512B: $03
    add d                                         ; $512C: $82
    ld bc, $81C2                                  ; $512D: $01 $C2 $81
    jp nz, $E181                                  ; $5130: $C2 $81 $E1

    ret nz                                        ; $5133: $C0

    pop hl                                        ; $5134: $E1
    ld b, b                                       ; $5135: $40
    ldh a, [rNR41]                                ; $5136: $F0 $20
    cp b                                          ; $5138: $B8
    db $10                                        ; $5139: $10
    jr jr_00D_513C                                ; $513A: $18 $00

jr_00D_513C:
    nop                                           ; $513C: $00
    nop                                           ; $513D: $00
    nop                                           ; $513E: $00
    nop                                           ; $513F: $00
    nop                                           ; $5140: $00
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00
    nop                                           ; $5143: $00
    nop                                           ; $5144: $00
    nop                                           ; $5145: $00
    nop                                           ; $5146: $00
    nop                                           ; $5147: $00
    ldh a, [rP1]                                  ; $5148: $F0 $00
    ld [$0FF0], sp                                ; $514A: $08 $F0 $0F
    ldh a, [$FFC8]                                ; $514D: $F0 $C8
    scf                                           ; $514F: $37
    jr nz, jr_00D_5171                            ; $5150: $20 $1F

    jr nz, jr_00D_5173                            ; $5152: $20 $1F

    jr nz, jr_00D_5175                            ; $5154: $20 $1F

    jr nz, jr_00D_5177                            ; $5156: $20 $1F

    ld d, b                                       ; $5158: $50
    cpl                                           ; $5159: $2F
    adc [hl]                                      ; $515A: $8E
    ld [hl], c                                    ; $515B: $71
    ld [$79F7], sp                                ; $515C: $08 $F7 $79
    add [hl]                                      ; $515F: $86
    add sp, -$30                                  ; $5160: $E8 $D0
    rst RST_10                                    ; $5162: $D7
    xor b                                         ; $5163: $A8
    add c                                         ; $5164: $81
    ld a, [hl]                                    ; $5165: $7E
    inc bc                                        ; $5166: $03
    db $FD                                        ; $5167: $FD
    inc bc                                        ; $5168: $03
    db $FC                                        ; $5169: $FC
    rlca                                          ; $516A: $07
    ei                                            ; $516B: $FB
    inc sp                                        ; $516C: $33
    call z, $BE41                                 ; $516D: $CC $41 $BE
    add e                                         ; $5170: $83

jr_00D_5171:
    ld a, h                                       ; $5171: $7C
    rlca                                          ; $5172: $07

jr_00D_5173:
    ei                                            ; $5173: $FB
    dec de                                        ; $5174: $1B

jr_00D_5175:
    db $E4                                        ; $5175: $E4
    add a                                         ; $5176: $87

jr_00D_5177:
    ld a, b                                       ; $5177: $78
    ld e, [hl]                                    ; $5178: $5E
    jr nz, jr_00D_51BA                            ; $5179: $20 $3F

    nop                                           ; $517B: $00
    add hl, sp                                    ; $517C: $39
    ld b, $1F                                     ; $517D: $06 $1F
    nop                                           ; $517F: $00
    nop                                           ; $5180: $00
    nop                                           ; $5181: $00
    nop                                           ; $5182: $00
    nop                                           ; $5183: $00
    nop                                           ; $5184: $00
    nop                                           ; $5185: $00
    nop                                           ; $5186: $00
    nop                                           ; $5187: $00

jr_00D_5188:
    nop                                           ; $5188: $00
    nop                                           ; $5189: $00
    ld b, $00                                     ; $518A: $06 $00
    rst RST_08                                    ; $518C: $CF
    ld b, $3F                                     ; $518D: $06 $3F
    jp z, $F20F                                   ; $518F: $CA $0F $F2

    rlca                                          ; $5192: $07
    ld a, [$F40E]                                 ; $5193: $FA $0E $F4
    ld c, $F4                                     ; $5196: $0E $F4
    inc e                                         ; $5198: $1C
    add sp, $3C                                   ; $5199: $E8 $3C
    ret nc                                        ; $519B: $D0

    ld a, b                                       ; $519C: $78
    and b                                         ; $519D: $A0
    add sp, $10                                   ; $519E: $E8 $10
    ldh a, [rP1]                                  ; $51A0: $F0 $00
    db $FC                                        ; $51A2: $FC
    ld [hl], b                                    ; $51A3: $70
    cp $0C                                        ; $51A4: $FE $0C
    rst RST_38                                    ; $51A6: $FF
    db $F4                                        ; $51A7: $F4
    db $FD                                        ; $51A8: $FD
    ld a, [bc]                                    ; $51A9: $0A
    db $FC                                        ; $51AA: $FC
    di                                            ; $51AB: $F3
    cp $09                                        ; $51AC: $FE $09
    cp $F5                                        ; $51AE: $FE $F5
    rst RST_38                                    ; $51B0: $FF
    ld [$F5FE], sp                                ; $51B1: $08 $FE $F5
    rst RST_38                                    ; $51B4: $FF
    ld [$F0FF], sp                                ; $51B5: $08 $FF $F0
    rst RST_38                                    ; $51B8: $FF
    nop                                           ; $51B9: $00

jr_00D_51BA:
    sbc l                                         ; $51BA: $9D
    ld [bc], a                                    ; $51BB: $02
    ld c, a                                       ; $51BC: $4F
    add b                                         ; $51BD: $80
    ret nz                                        ; $51BE: $C0

    nop                                           ; $51BF: $00
    add b                                         ; $51C0: $80
    nop                                           ; $51C1: $00
    ret nz                                        ; $51C2: $C0

    add b                                         ; $51C3: $80
    ret nz                                        ; $51C4: $C0

    add b                                         ; $51C5: $80
    jr nz, jr_00D_5188                            ; $51C6: $20 $C0

    and b                                         ; $51C8: $A0
    ld b, b                                       ; $51C9: $40
    ld h, b                                       ; $51CA: $60
    add b                                         ; $51CB: $80
    ld b, b                                       ; $51CC: $40
    add b                                         ; $51CD: $80
    add b                                         ; $51CE: $80
    nop                                           ; $51CF: $00
    add b                                         ; $51D0: $80
    nop                                           ; $51D1: $00
    ld b, b                                       ; $51D2: $40
    add b                                         ; $51D3: $80
    ret nz                                        ; $51D4: $C0

    nop                                           ; $51D5: $00
    nop                                           ; $51D6: $00
    nop                                           ; $51D7: $00
    nop                                           ; $51D8: $00
    nop                                           ; $51D9: $00
    nop                                           ; $51DA: $00
    nop                                           ; $51DB: $00
    nop                                           ; $51DC: $00
    nop                                           ; $51DD: $00
    nop                                           ; $51DE: $00
    nop                                           ; $51DF: $00
    nop                                           ; $51E0: $00
    nop                                           ; $51E1: $00
    nop                                           ; $51E2: $00
    nop                                           ; $51E3: $00
    nop                                           ; $51E4: $00
    nop                                           ; $51E5: $00
    nop                                           ; $51E6: $00
    nop                                           ; $51E7: $00
    nop                                           ; $51E8: $00
    nop                                           ; $51E9: $00
    nop                                           ; $51EA: $00
    nop                                           ; $51EB: $00
    nop                                           ; $51EC: $00
    nop                                           ; $51ED: $00
    nop                                           ; $51EE: $00
    nop                                           ; $51EF: $00
    nop                                           ; $51F0: $00
    nop                                           ; $51F1: $00
    nop                                           ; $51F2: $00
    nop                                           ; $51F3: $00
    ld a, $00                                     ; $51F4: $3E $00
    daa                                           ; $51F6: $27
    jr jr_00D_5218                                ; $51F7: $18 $1F

    nop                                           ; $51F9: $00
    rrca                                          ; $51FA: $0F
    nop                                           ; $51FB: $00
    ld [bc], a                                    ; $51FC: $02
    ld bc, $0001                                  ; $51FD: $01 $01 $00
    inc bc                                        ; $5200: $03
    nop                                           ; $5201: $00
    ld b, $01                                     ; $5202: $06 $01
    rlca                                          ; $5204: $07
    nop                                           ; $5205: $00
    dec bc                                        ; $5206: $0B
    inc b                                         ; $5207: $04
    ld a, [bc]                                    ; $5208: $0A
    inc b                                         ; $5209: $04
    inc c                                         ; $520A: $0C
    nop                                           ; $520B: $00
    nop                                           ; $520C: $00
    nop                                           ; $520D: $00
    nop                                           ; $520E: $00
    nop                                           ; $520F: $00
    nop                                           ; $5210: $00
    nop                                           ; $5211: $00
    nop                                           ; $5212: $00
    nop                                           ; $5213: $00
    nop                                           ; $5214: $00
    nop                                           ; $5215: $00
    nop                                           ; $5216: $00
    nop                                           ; $5217: $00

jr_00D_5218:
    nop                                           ; $5218: $00
    nop                                           ; $5219: $00
    nop                                           ; $521A: $00
    nop                                           ; $521B: $00
    nop                                           ; $521C: $00
    nop                                           ; $521D: $00
    nop                                           ; $521E: $00
    nop                                           ; $521F: $00
    add a                                         ; $5220: $87
    ld bc, $0307                                  ; $5221: $01 $07 $03
    rlca                                          ; $5224: $07
    nop                                           ; $5225: $00
    inc b                                         ; $5226: $04
    inc bc                                        ; $5227: $03
    inc b                                         ; $5228: $04
    inc bc                                        ; $5229: $03
    inc b                                         ; $522A: $04
    inc bc                                        ; $522B: $03
    ld [bc], a                                    ; $522C: $02
    ld bc, $0102                                  ; $522D: $01 $02 $01
    ld [bc], a                                    ; $5230: $02
    ld bc, $0001                                  ; $5231: $01 $01 $00
    ld bc, $0000                                  ; $5234: $01 $00 $00
    nop                                           ; $5237: $00
    nop                                           ; $5238: $00
    nop                                           ; $5239: $00
    nop                                           ; $523A: $00
    nop                                           ; $523B: $00
    nop                                           ; $523C: $00
    nop                                           ; $523D: $00
    nop                                           ; $523E: $00
    nop                                           ; $523F: $00
    ld bc, $0300                                  ; $5240: $01 $00 $03

jr_00D_5243:
    ld bc, $0103                                  ; $5243: $01 $03 $01
    rlca                                          ; $5246: $07
    inc bc                                        ; $5247: $03
    rlca                                          ; $5248: $07
    inc bc                                        ; $5249: $03
    dec bc                                        ; $524A: $0B
    rlca                                          ; $524B: $07
    ld a, [bc]                                    ; $524C: $0A
    rlca                                          ; $524D: $07
    ld a, [bc]                                    ; $524E: $0A

jr_00D_524F:
    rlca                                          ; $524F: $07
    ld a, [bc]                                    ; $5250: $0A

jr_00D_5251:
    rlca                                          ; $5251: $07
    ld [$0407], sp                                ; $5252: $08 $07 $04
    inc bc                                        ; $5255: $03
    inc b                                         ; $5256: $04
    inc bc                                        ; $5257: $03
    ld [bc], a                                    ; $5258: $02
    ld bc, $0001                                  ; $5259: $01 $01 $00
    nop                                           ; $525C: $00

jr_00D_525D:
    nop                                           ; $525D: $00
    nop                                           ; $525E: $00
    nop                                           ; $525F: $00
    add $7D                                       ; $5260: $C6 $7D
    add $7D                                       ; $5262: $C6 $7D
    jp $C17E                                      ; $5264: $C3 $7E $C1


    ld a, a                                       ; $5267: $7F
    ret nz                                        ; $5268: $C0

    cp a                                          ; $5269: $BF
    ld b, b                                       ; $526A: $40
    cp a                                          ; $526B: $BF
    ld b, b                                       ; $526C: $40
    cp a                                          ; $526D: $BF
    jr nz, jr_00D_524F                            ; $526E: $20 $DF

    jr nz, jr_00D_5251                            ; $5270: $20 $DF

    jr nc, jr_00D_5243                            ; $5272: $30 $CF

    jr jr_00D_525D                                ; $5274: $18 $E7

    inc b                                         ; $5276: $04
    ei                                            ; $5277: $FB
    ld [bc], a                                    ; $5278: $02
    db $FD                                        ; $5279: $FD
    add c                                         ; $527A: $81
    ld a, [hl]                                    ; $527B: $7E
    ld a, [hl]                                    ; $527C: $7E
    nop                                           ; $527D: $00
    nop                                           ; $527E: $00
    nop                                           ; $527F: $00
    nop                                           ; $5280: $00
    nop                                           ; $5281: $00
    nop                                           ; $5282: $00
    nop                                           ; $5283: $00
    nop                                           ; $5284: $00
    nop                                           ; $5285: $00
    ld bc, $0300                                  ; $5286: $01 $00 $03
    ld bc, $0207                                  ; $5289: $01 $07 $02
    rrca                                          ; $528C: $0F
    ld b, $1E                                     ; $528D: $06 $1E
    inc c                                         ; $528F: $0C
    rra                                           ; $5290: $1F
    inc c                                         ; $5291: $0C
    ccf                                           ; $5292: $3F
    add hl, de                                    ; $5293: $19
    ld a, $1B                                     ; $5294: $3E $1B
    ld a, h                                       ; $5296: $7C
    dec sp                                        ; $5297: $3B
    ld a, l                                       ; $5298: $7D
    dec sp                                        ; $5299: $3B
    xor $7B                                       ; $529A: $EE $7B
    db $EC                                        ; $529C: $EC
    ld a, e                                       ; $529D: $7B
    db $EC                                        ; $529E: $EC
    ld a, e                                       ; $529F: $7B
    ld a, a                                       ; $52A0: $7F
    set 5, a                                      ; $52A1: $CB $EF
    or h                                          ; $52A3: $B4

jr_00D_52A4:
    rst RST_28                                    ; $52A4: $EF
    ld [hl], e                                    ; $52A5: $73
    rst RST_38                                    ; $52A6: $FF
    add h                                         ; $52A7: $84
    ld a, a                                       ; $52A8: $7F
    ldh [$FF1F], a                                ; $52A9: $E0 $1F
    rst RST_38                                    ; $52AB: $FF
    nop                                           ; $52AC: $00
    rst RST_38                                    ; $52AD: $FF
    ld bc, $0FFF                                  ; $52AE: $01 $FF $0F
    cp $03                                        ; $52B1: $FE $03
    rst RST_38                                    ; $52B3: $FF
    nop                                           ; $52B4: $00
    rst RST_38                                    ; $52B5: $FF
    ld bc, $83FF                                  ; $52B6: $01 $FF $83
    ld a, [hl]                                    ; $52B9: $7E
    ld h, c                                       ; $52BA: $61
    rra                                           ; $52BB: $1F
    rra                                           ; $52BC: $1F
    inc bc                                        ; $52BD: $03
    inc bc                                        ; $52BE: $03
    nop                                           ; $52BF: $00
    ld a, $00                                     ; $52C0: $3E $00
    pop bc                                        ; $52C2: $C1
    ld a, $C0                                     ; $52C3: $3E $C0
    cp a                                          ; $52C5: $BF
    ldh [$FF1F], a                                ; $52C6: $E0 $1F
    ldh a, [$FFEF]                                ; $52C8: $F0 $EF
    ldh a, [rIF]                                  ; $52CA: $F0 $0F
    ld hl, sp-$09                                 ; $52CC: $F8 $F7
    ldh a, [rIF]                                  ; $52CE: $F0 $0F

jr_00D_52D0:
    ldh [$FFDF], a                                ; $52D0: $E0 $DF
    rst RST_38                                    ; $52D2: $FF
    nop                                           ; $52D3: $00
    rst RST_38                                    ; $52D4: $FF
    rst RST_38                                    ; $52D5: $FF
    rst RST_38                                    ; $52D6: $FF
    cp $FE                                        ; $52D7: $FE $FE
    nop                                           ; $52D9: $00
    db $FC                                        ; $52DA: $FC
    ret nz                                        ; $52DB: $C0

    ccf                                           ; $52DC: $3F
    ld hl, sp-$01                                 ; $52DD: $F8 $FF
    rst RST_38                                    ; $52DF: $FF
    ret nz                                        ; $52E0: $C0

    nop                                           ; $52E1: $00
    jr nc, jr_00D_52A4                            ; $52E2: $30 $C0

    rrca                                          ; $52E4: $0F
    ldh a, [rP1]                                  ; $52E5: $F0 $00
    rst RST_38                                    ; $52E7: $FF
    nop                                           ; $52E8: $00
    rst RST_38                                    ; $52E9: $FF
    nop                                           ; $52EA: $00
    rst RST_38                                    ; $52EB: $FF
    db $10                                        ; $52EC: $10
    rst RST_28                                    ; $52ED: $EF
    db $10                                        ; $52EE: $10
    rst RST_28                                    ; $52EF: $EF
    ret z                                         ; $52F0: $C8

    scf                                           ; $52F1: $37

jr_00D_52F2:
    ld hl, sp-$79                                 ; $52F2: $F8 $87
    call nz, Call_000_0303                        ; $52F4: $C4 $03 $03
    nop                                           ; $52F7: $00
    nop                                           ; $52F8: $00
    nop                                           ; $52F9: $00
    nop                                           ; $52FA: $00
    nop                                           ; $52FB: $00
    add b                                         ; $52FC: $80
    nop                                           ; $52FD: $00
    add b                                         ; $52FE: $80
    nop                                           ; $52FF: $00
    nop                                           ; $5300: $00
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    ldh a, [rP1]                                  ; $5304: $F0 $00
    ld a, h                                       ; $5306: $7C
    or b                                          ; $5307: $B0
    ccf                                           ; $5308: $3F
    call z, $C32F                                 ; $5309: $CC $2F $C3
    inc hl                                        ; $530C: $23
    ret nz                                        ; $530D: $C0

    jr nz, jr_00D_52D0                            ; $530E: $20 $C0

    jr jr_00D_52F2                                ; $5310: $18 $E0

    ld [$07F0], sp                                ; $5312: $08 $F0 $07
    ld hl, sp-$1D                                 ; $5315: $F8 $E3
    inc e                                         ; $5317: $1C
    rst RST_38                                    ; $5318: $FF
    nop                                           ; $5319: $00
    ld d, a                                       ; $531A: $57
    jr nz, jr_00D_5370                            ; $531B: $20 $53

    jr nz, @+$33                                  ; $531D: $20 $31

    nop                                           ; $531F: $00
    add b                                         ; $5320: $80
    nop                                           ; $5321: $00
    ret nz                                        ; $5322: $C0

    add b                                         ; $5323: $80
    ldh [rLCDC], a                                ; $5324: $E0 $40
    ld a, b                                       ; $5326: $78
    jr nz, jr_00D_5365                            ; $5327: $20 $3C

    jr jr_00D_5367                                ; $5329: $18 $3C

    jr @-$62                                      ; $532B: $18 $9C

    ld [$008C], sp                                ; $532D: $08 $8C $00
    ret nz                                        ; $5330: $C0

    nop                                           ; $5331: $00
    ld b, b                                       ; $5332: $40
    add b                                         ; $5333: $80
    ld b, b                                       ; $5334: $40
    add b                                         ; $5335: $80
    ret nz                                        ; $5336: $C0

    nop                                           ; $5337: $00
    nop                                           ; $5338: $00
    nop                                           ; $5339: $00
    nop                                           ; $533A: $00
    nop                                           ; $533B: $00
    nop                                           ; $533C: $00
    nop                                           ; $533D: $00
    nop                                           ; $533E: $00
    nop                                           ; $533F: $00
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    ret nz                                        ; $5342: $C0

    nop                                           ; $5343: $00
    ret nz                                        ; $5344: $C0

    add b                                         ; $5345: $80
    add [hl]                                      ; $5346: $86
    nop                                           ; $5347: $00

jr_00D_5348:
    ld e, $04                                     ; $5348: $1E $04
    ld a, h                                       ; $534A: $7C
    jr jr_00D_5348                                ; $534B: $18 $FB

    ld h, b                                       ; $534D: $60
    rst RST_28                                    ; $534E: $EF
    jp nz, $CCFE                                  ; $534F: $C2 $FE $CC

    db $FC                                        ; $5352: $FC
    ld hl, sp-$08                                 ; $5353: $F8 $F8
    ldh a, [$FFB0]                                ; $5355: $F0 $B0
    ldh [$FF6C], a                                ; $5357: $E0 $6C
    ret nz                                        ; $5359: $C0

    ld a, a                                       ; $535A: $7F
    ret z                                         ; $535B: $C8

    rst RST_38                                    ; $535C: $FF
    or e                                          ; $535D: $B3
    rst RST_38                                    ; $535E: $FF
    db $EC                                        ; $535F: $EC
    rst RST_38                                    ; $5360: $FF
    nop                                           ; $5361: $00
    ld hl, sp-$80                                 ; $5362: $F8 $80
    db $FC                                        ; $5364: $FC

jr_00D_5365:
    ld hl, sp-$04                                 ; $5365: $F8 $FC

jr_00D_5367:
    nop                                           ; $5367: $00
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    nop                                           ; $536A: $00
    nop                                           ; $536B: $00
    nop                                           ; $536C: $00
    nop                                           ; $536D: $00
    nop                                           ; $536E: $00
    nop                                           ; $536F: $00

jr_00D_5370:
    nop                                           ; $5370: $00
    nop                                           ; $5371: $00
    nop                                           ; $5372: $00
    nop                                           ; $5373: $00
    nop                                           ; $5374: $00
    nop                                           ; $5375: $00
    nop                                           ; $5376: $00
    nop                                           ; $5377: $00
    nop                                           ; $5378: $00
    nop                                           ; $5379: $00
    nop                                           ; $537A: $00
    nop                                           ; $537B: $00
    nop                                           ; $537C: $00
    nop                                           ; $537D: $00
    nop                                           ; $537E: $00
    nop                                           ; $537F: $00
    ld e, [hl]                                    ; $5380: $5E
    dec h                                         ; $5381: $25
    ld a, a                                       ; $5382: $7F
    inc d                                         ; $5383: $14
    rst RST_38                                    ; $5384: $FF
    dec d                                         ; $5385: $15
    rst RST_38                                    ; $5386: $FF
    ld d, l                                       ; $5387: $55
    rst RST_38                                    ; $5388: $FF
    ld d, l                                       ; $5389: $55
    rst RST_38                                    ; $538A: $FF
    ld d, l                                       ; $538B: $55
    rst RST_38                                    ; $538C: $FF
    xor d                                         ; $538D: $AA
    ld a, a                                       ; $538E: $7F
    ld sp, $ECF3                                  ; $538F: $31 $F3 $EC
    ld a, b                                       ; $5392: $78
    ld a, a                                       ; $5393: $7F
    rra                                           ; $5394: $1F
    rra                                           ; $5395: $1F
    add a                                         ; $5396: $87
    add a                                         ; $5397: $87
    pop af                                        ; $5398: $F1
    pop af                                        ; $5399: $F1
    ld a, $3F                                     ; $539A: $3E $3F
    rrca                                          ; $539C: $0F
    rrca                                          ; $539D: $0F
    ld bc, $E601                                  ; $539E: $01 $01 $E6
    ld e, c                                       ; $53A1: $59
    and $59                                       ; $53A2: $E6 $59
    xor $51                                       ; $53A4: $EE $51
    rst RST_38                                    ; $53A6: $FF
    ld b, b                                       ; $53A7: $40
    ld sp, hl                                     ; $53A8: $F9
    ld b, [hl]                                    ; $53A9: $46
    db $FD                                        ; $53AA: $FD
    ld [hl+], a                                   ; $53AB: $22
    db $FD                                        ; $53AC: $FD
    and d                                         ; $53AD: $A2
    rst RST_38                                    ; $53AE: $FF
    ld [$10FF], sp                                ; $53AF: $08 $FF $10
    cp d                                          ; $53B2: $BA
    ld b, l                                       ; $53B3: $45
    sbc e                                         ; $53B4: $9B
    ld h, h                                       ; $53B5: $64
    rst RST_38                                    ; $53B6: $FF
    rst RST_38                                    ; $53B7: $FF
    add b                                         ; $53B8: $80
    rst RST_38                                    ; $53B9: $FF
    nop                                           ; $53BA: $00
    rst RST_38                                    ; $53BB: $FF
    ldh [rIE], a                                  ; $53BC: $E0 $FF
    rst RST_38                                    ; $53BE: $FF
    rst RST_38                                    ; $53BF: $FF
    rlca                                          ; $53C0: $07
    ld sp, hl                                     ; $53C1: $F9
    rlca                                          ; $53C2: $07
    ld sp, hl                                     ; $53C3: $F9
    rrca                                          ; $53C4: $0F
    pop af                                        ; $53C5: $F1
    inc bc                                        ; $53C6: $03
    db $FD                                        ; $53C7: $FD
    db $E3                                        ; $53C8: $E3
    dec e                                         ; $53C9: $1D
    rla                                           ; $53CA: $17
    ld a, [bc]                                    ; $53CB: $0A
    and a                                         ; $53CC: $A7
    ld a, [de]                                    ; $53CD: $1A
    cp $04                                        ; $53CE: $FE $04
    db $FD                                        ; $53D0: $FD
    ld bc, $6F9F                                  ; $53D1: $01 $9F $6F
    ld a, [$C77E]                                 ; $53D4: $FA $7E $C7
    rst RST_38                                    ; $53D7: $FF
    inc e                                         ; $53D8: $1C
    db $FC                                        ; $53D9: $FC
    ld hl, $1FE1                                  ; $53DA: $21 $E1 $1F
    rst RST_38                                    ; $53DD: $FF
    ld hl, sp-$08                                 ; $53DE: $F8 $F8
    add b                                         ; $53E0: $80
    nop                                           ; $53E1: $00
    add b                                         ; $53E2: $80
    nop                                           ; $53E3: $00
    add b                                         ; $53E4: $80
    nop                                           ; $53E5: $00
    add b                                         ; $53E6: $80
    nop                                           ; $53E7: $00
    add b                                         ; $53E8: $80
    nop                                           ; $53E9: $00
    nop                                           ; $53EA: $00
    nop                                           ; $53EB: $00
    inc c                                         ; $53EC: $0C
    inc c                                         ; $53ED: $0C
    jr nc, jr_00D_5420                            ; $53EE: $30 $30

    ret nz                                        ; $53F0: $C0

    ret nz                                        ; $53F1: $C0

    jr jr_00D_540C                                ; $53F2: $18 $18

    ld h, b                                       ; $53F4: $60
    ld h, b                                       ; $53F5: $60
    add b                                         ; $53F6: $80
    add b                                         ; $53F7: $80
    jr nc, jr_00D_542A                            ; $53F8: $30 $30

    ret nz                                        ; $53FA: $C0

    ret nz                                        ; $53FB: $C0

    nop                                           ; $53FC: $00
    nop                                           ; $53FD: $00
    nop                                           ; $53FE: $00
    nop                                           ; $53FF: $00
    nop                                           ; $5400: $00
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
    nop                                           ; $5403: $00
    nop                                           ; $5404: $00
    nop                                           ; $5405: $00
    nop                                           ; $5406: $00
    nop                                           ; $5407: $00
    nop                                           ; $5408: $00
    nop                                           ; $5409: $00
    nop                                           ; $540A: $00
    nop                                           ; $540B: $00

jr_00D_540C:
    add b                                         ; $540C: $80
    add b                                         ; $540D: $80
    ld h, e                                       ; $540E: $63
    ld h, e                                       ; $540F: $63
    cp [hl]                                       ; $5410: $BE
    cp [hl]                                       ; $5411: $BE
    ld a, h                                       ; $5412: $7C
    ld a, h                                       ; $5413: $7C
    ld [bc], a                                    ; $5414: $02
    ld [bc], a                                    ; $5415: $02
    ld bc, $0001                                  ; $5416: $01 $01 $00
    nop                                           ; $5419: $00
    nop                                           ; $541A: $00
    nop                                           ; $541B: $00
    nop                                           ; $541C: $00
    nop                                           ; $541D: $00
    nop                                           ; $541E: $00
    nop                                           ; $541F: $00

jr_00D_5420:
    ld h, a                                       ; $5420: $67
    nop                                           ; $5421: $00
    sbc a                                         ; $5422: $9F
    ld h, l                                       ; $5423: $65
    rst RST_20                                    ; $5424: $E7
    ld a, [de]                                    ; $5425: $1A
    rst RST_30                                    ; $5426: $F7
    add hl, bc                                    ; $5427: $09
    ld a, a                                       ; $5428: $7F
    ld [bc], a                                    ; $5429: $02

jr_00D_542A:
    dec sp                                        ; $542A: $3B
    dec b                                         ; $542B: $05
    dec de                                        ; $542C: $1B
    inc b                                         ; $542D: $04
    dec e                                         ; $542E: $1D
    ld [bc], a                                    ; $542F: $02
    dec c                                         ; $5430: $0D
    ld [bc], a                                    ; $5431: $02
    rrca                                          ; $5432: $0F
    nop                                           ; $5433: $00
    nop                                           ; $5434: $00
    nop                                           ; $5435: $00
    nop                                           ; $5436: $00
    nop                                           ; $5437: $00
    nop                                           ; $5438: $00
    nop                                           ; $5439: $00
    nop                                           ; $543A: $00
    nop                                           ; $543B: $00
    nop                                           ; $543C: $00
    nop                                           ; $543D: $00
    nop                                           ; $543E: $00
    nop                                           ; $543F: $00
    ld hl, sp+$00                                 ; $5440: $F8 $00
    rst RST_38                                    ; $5442: $FF
    ldh [$FFFE], a                                ; $5443: $E0 $FE
    db $FD                                        ; $5445: $FD
    db $FC                                        ; $5446: $FC
    inc bc                                        ; $5447: $03
    cp $FD                                        ; $5448: $FE $FD
    cp $01                                        ; $544A: $FE $01
    ldh a, [$FFEF]                                ; $544C: $F0 $EF
    db $FC                                        ; $544E: $FC
    inc bc                                        ; $544F: $03
    cp $FD                                        ; $5450: $FE $FD
    rst RST_38                                    ; $5452: $FF
    nop                                           ; $5453: $00
    db $FC                                        ; $5454: $FC
    nop                                           ; $5455: $00
    ld hl, sp+$00                                 ; $5456: $F8 $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    nop                                           ; $545A: $00

jr_00D_545B:
    nop                                           ; $545B: $00
    nop                                           ; $545C: $00
    nop                                           ; $545D: $00
    nop                                           ; $545E: $00
    nop                                           ; $545F: $00
    inc bc                                        ; $5460: $03
    nop                                           ; $5461: $00
    ld a, h                                       ; $5462: $7C
    inc bc                                        ; $5463: $03
    add b                                         ; $5464: $80
    ld a, a                                       ; $5465: $7F
    nop                                           ; $5466: $00
    rst RST_38                                    ; $5467: $FF
    inc c                                         ; $5468: $0C
    di                                            ; $5469: $F3
    ld [hl-], a                                   ; $546A: $32

jr_00D_546B:
    call Call_000_3DC2                            ; $546B: $CD $C2 $3D
    ld [bc], a                                    ; $546E: $02

jr_00D_546F:
    db $FD                                        ; $546F: $FD
    ld [bc], a                                    ; $5470: $02
    db $FD                                        ; $5471: $FD
    inc de                                        ; $5472: $13
    db $EC                                        ; $5473: $EC
    rst RST_38                                    ; $5474: $FF
    nop                                           ; $5475: $00

jr_00D_5476:
    ccf                                           ; $5476: $3F
    nop                                           ; $5477: $00

jr_00D_5478:
    ld d, e                                       ; $5478: $53
    inc l                                         ; $5479: $2C
    ld a, [hl]                                    ; $547A: $7E
    nop                                           ; $547B: $00
    nop                                           ; $547C: $00
    nop                                           ; $547D: $00
    nop                                           ; $547E: $00
    nop                                           ; $547F: $00
    ld a, $00                                     ; $5480: $3E $00
    pop bc                                        ; $5482: $C1
    ld a, $00                                     ; $5483: $3E $00
    rst RST_38                                    ; $5485: $FF
    nop                                           ; $5486: $00
    rst RST_38                                    ; $5487: $FF
    nop                                           ; $5488: $00
    rst RST_38                                    ; $5489: $FF
    jr nz, jr_00D_546B                            ; $548A: $20 $DF

    jr nz, @-$1F                                  ; $548C: $20 $DF

    jr nz, jr_00D_546F                            ; $548E: $20 $DF

    db $10                                        ; $5490: $10
    rst RST_28                                    ; $5491: $EF
    jr c, jr_00D_545B                             ; $5492: $38 $C7

    rst RST_00                                    ; $5494: $C7
    nop                                           ; $5495: $00
    ld b, b                                       ; $5496: $40
    add b                                         ; $5497: $80
    ret nz                                        ; $5498: $C0

    nop                                           ; $5499: $00
    pop bc                                        ; $549A: $C1
    nop                                           ; $549B: $00
    add d                                         ; $549C: $82
    ld bc, $0003                                  ; $549D: $01 $03 $00
    rra                                           ; $54A0: $1F
    nop                                           ; $54A1: $00
    ld a, a                                       ; $54A2: $7F
    rra                                           ; $54A3: $1F
    rst RST_38                                    ; $54A4: $FF
    ld h, b                                       ; $54A5: $60
    ldh [$FF80], a                                ; $54A6: $E0 $80
    ret nz                                        ; $54A8: $C0

    nop                                           ; $54A9: $00
    ld b, b                                       ; $54AA: $40
    add b                                         ; $54AB: $80
    ld b, b                                       ; $54AC: $40
    add b                                         ; $54AD: $80
    ld b, b                                       ; $54AE: $40
    add b                                         ; $54AF: $80
    ld b, b                                       ; $54B0: $40
    add b                                         ; $54B1: $80
    ldh [rP1], a                                  ; $54B2: $E0 $00
    jr nz, jr_00D_5476                            ; $54B4: $20 $C0

    jr nz, jr_00D_5478                            ; $54B6: $20 $C0

    sub b                                         ; $54B8: $90
    ld h, b                                       ; $54B9: $60
    ld d, b                                       ; $54BA: $50
    jr nz, jr_00D_5535                            ; $54BB: $20 $78

    nop                                           ; $54BD: $00
    ld hl, sp+$00                                 ; $54BE: $F8 $00
    nop                                           ; $54C0: $00
    nop                                           ; $54C1: $00
    nop                                           ; $54C2: $00
    nop                                           ; $54C3: $00
    nop                                           ; $54C4: $00
    nop                                           ; $54C5: $00
    nop                                           ; $54C6: $00
    nop                                           ; $54C7: $00
    nop                                           ; $54C8: $00
    nop                                           ; $54C9: $00
    nop                                           ; $54CA: $00
    nop                                           ; $54CB: $00
    nop                                           ; $54CC: $00
    nop                                           ; $54CD: $00
    add b                                         ; $54CE: $80
    nop                                           ; $54CF: $00

jr_00D_54D0:
    ret nz                                        ; $54D0: $C0

    add b                                         ; $54D1: $80
    ldh [rLCDC], a                                ; $54D2: $E0 $40
    ld a, b                                       ; $54D4: $78
    jr nz, jr_00D_5513                            ; $54D5: $20 $3C

    jr jr_00D_5515                                ; $54D7: $18 $3C

    jr jr_00D_5517                                ; $54D9: $18 $3C

    jr jr_00D_54F9                                ; $54DB: $18 $1C

    ld [$000C], sp                                ; $54DD: $08 $0C $00
    sbc b                                         ; $54E0: $98
    ld h, b                                       ; $54E1: $60
    ldh a, [rP1]                                  ; $54E2: $F0 $00
    nop                                           ; $54E4: $00
    nop                                           ; $54E5: $00
    nop                                           ; $54E6: $00
    nop                                           ; $54E7: $00
    nop                                           ; $54E8: $00
    nop                                           ; $54E9: $00
    nop                                           ; $54EA: $00
    nop                                           ; $54EB: $00
    nop                                           ; $54EC: $00
    nop                                           ; $54ED: $00
    nop                                           ; $54EE: $00
    nop                                           ; $54EF: $00
    nop                                           ; $54F0: $00
    nop                                           ; $54F1: $00
    nop                                           ; $54F2: $00
    nop                                           ; $54F3: $00
    nop                                           ; $54F4: $00
    nop                                           ; $54F5: $00
    nop                                           ; $54F6: $00
    nop                                           ; $54F7: $00
    nop                                           ; $54F8: $00

jr_00D_54F9:
    nop                                           ; $54F9: $00
    nop                                           ; $54FA: $00
    nop                                           ; $54FB: $00
    nop                                           ; $54FC: $00
    nop                                           ; $54FD: $00
    nop                                           ; $54FE: $00

Jump_00D_54FF:
    nop                                           ; $54FF: $00
    ld bc, $0100                                  ; $5500: $01 $00 $01
    nop                                           ; $5503: $00
    ld [bc], a                                    ; $5504: $02
    ld bc, $0102                                  ; $5505: $01 $02 $01
    inc bc                                        ; $5508: $03
    nop                                           ; $5509: $00
    rlca                                          ; $550A: $07
    nop                                           ; $550B: $00
    dec bc                                        ; $550C: $0B
    inc b                                         ; $550D: $04
    rrca                                          ; $550E: $0F
    nop                                           ; $550F: $00
    nop                                           ; $5510: $00
    nop                                           ; $5511: $00
    nop                                           ; $5512: $00

jr_00D_5513:
    nop                                           ; $5513: $00
    nop                                           ; $5514: $00

jr_00D_5515:
    nop                                           ; $5515: $00
    nop                                           ; $5516: $00

jr_00D_5517:
    nop                                           ; $5517: $00
    nop                                           ; $5518: $00
    nop                                           ; $5519: $00
    nop                                           ; $551A: $00
    nop                                           ; $551B: $00
    nop                                           ; $551C: $00
    nop                                           ; $551D: $00
    nop                                           ; $551E: $00
    nop                                           ; $551F: $00
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    inc bc                                        ; $5522: $03
    nop                                           ; $5523: $00
    inc c                                         ; $5524: $0C
    inc bc                                        ; $5525: $03
    rla                                           ; $5526: $17
    ld [$073F], sp                                ; $5527: $08 $3F $07
    ccf                                           ; $552A: $3F
    jr jr_00D_55AC                                ; $552B: $18 $7F

    rla                                           ; $552D: $17
    rst RST_18                                    ; $552E: $DF
    jr z, jr_00D_54D0                             ; $552F: $28 $9F

    rst RST_20                                    ; $5531: $E7
    cp a                                          ; $5532: $BF
    ret z                                         ; $5533: $C8

    ccf                                           ; $5534: $3F

jr_00D_5535:
    rst RST_10                                    ; $5535: $D7
    rst RST_38                                    ; $5536: $FF
    ld [$D73F], sp                                ; $5537: $08 $3F $D7
    ld a, a                                       ; $553A: $7F
    adc b                                         ; $553B: $88
    rst RST_38                                    ; $553C: $FF
    rlca                                          ; $553D: $07
    rst RST_08                                    ; $553E: $CF
    nop                                           ; $553F: $00
    inc a                                         ; $5540: $3C
    nop                                           ; $5541: $00
    ld a, [hl]                                    ; $5542: $7E
    inc a                                         ; $5543: $3C
    rst RST_38                                    ; $5544: $FF
    ld b, d                                       ; $5545: $42
    rst RST_30                                    ; $5546: $F7
    ld [bc], a                                    ; $5547: $02
    rrca                                          ; $5548: $0F
    pop af                                        ; $5549: $F1
    add l                                         ; $554A: $85
    ld a, d                                       ; $554B: $7A
    add h                                         ; $554C: $84
    ld a, e                                       ; $554D: $7B
    jp nz, $E23D                                  ; $554E: $C2 $3D $E2

    db $DD                                        ; $5551: $DD
    ldh [c], a                                    ; $5552: $E2
    dec e                                         ; $5553: $1D
    rst RST_30                                    ; $5554: $F7
    add sp, -$20                                  ; $5555: $E8 $E0
    rra                                           ; $5557: $1F
    ret nz                                        ; $5558: $C0

    cp a                                          ; $5559: $BF
    ldh [c], a                                    ; $555A: $E2
    dec e                                         ; $555B: $1D
    rst RST_38                                    ; $555C: $FF
    ldh [rIE], a                                  ; $555D: $E0 $FF
    nop                                           ; $555F: $00
    sbc b                                         ; $5560: $98
    nop                                           ; $5561: $00
    db $FC                                        ; $5562: $FC
    sbc b                                         ; $5563: $98
    cp $5C                                        ; $5564: $FE $5C
    ld a, [hl]                                    ; $5566: $7E
    sbc h                                         ; $5567: $9C
    ld e, h                                       ; $5568: $5C
    add b                                         ; $5569: $80
    ld b, b                                       ; $556A: $40
    add b                                         ; $556B: $80
    ld b, b                                       ; $556C: $40
    add b                                         ; $556D: $80
    ldh [rP1], a                                  ; $556E: $E0 $00
    db $10                                        ; $5570: $10
    ldh [rNR10], a                                ; $5571: $E0 $10
    ldh [$FFB8], a                                ; $5573: $E0 $B8
    ld b, b                                       ; $5575: $40
    db $F4                                        ; $5576: $F4
    ld [$00FC], sp                                ; $5577: $08 $FC $00
    add b                                         ; $557A: $80
    nop                                           ; $557B: $00
    nop                                           ; $557C: $00
    nop                                           ; $557D: $00
    nop                                           ; $557E: $00
    nop                                           ; $557F: $00
    db $F4                                        ; $5580: $F4
    adc e                                         ; $5581: $8B
    rst RST_38                                    ; $5582: $FF
    nop                                           ; $5583: $00
    nop                                           ; $5584: $00
    nop                                           ; $5585: $00
    nop                                           ; $5586: $00
    nop                                           ; $5587: $00
    nop                                           ; $5588: $00
    nop                                           ; $5589: $00
    nop                                           ; $558A: $00
    nop                                           ; $558B: $00
    nop                                           ; $558C: $00
    nop                                           ; $558D: $00
    nop                                           ; $558E: $00
    nop                                           ; $558F: $00
    nop                                           ; $5590: $00
    nop                                           ; $5591: $00
    nop                                           ; $5592: $00
    nop                                           ; $5593: $00
    nop                                           ; $5594: $00
    nop                                           ; $5595: $00
    nop                                           ; $5596: $00
    nop                                           ; $5597: $00
    nop                                           ; $5598: $00
    nop                                           ; $5599: $00
    nop                                           ; $559A: $00
    nop                                           ; $559B: $00
    nop                                           ; $559C: $00
    nop                                           ; $559D: $00
    nop                                           ; $559E: $00
    nop                                           ; $559F: $00
    ld bc, $0700                                  ; $55A0: $01 $00 $07
    nop                                           ; $55A3: $00
    ld a, [bc]                                    ; $55A4: $0A
    dec b                                         ; $55A5: $05
    rrca                                          ; $55A6: $0F
    nop                                           ; $55A7: $00
    nop                                           ; $55A8: $00
    nop                                           ; $55A9: $00
    nop                                           ; $55AA: $00
    nop                                           ; $55AB: $00

jr_00D_55AC:
    nop                                           ; $55AC: $00
    nop                                           ; $55AD: $00
    nop                                           ; $55AE: $00
    nop                                           ; $55AF: $00
    nop                                           ; $55B0: $00
    nop                                           ; $55B1: $00
    nop                                           ; $55B2: $00
    nop                                           ; $55B3: $00
    nop                                           ; $55B4: $00
    nop                                           ; $55B5: $00
    nop                                           ; $55B6: $00
    nop                                           ; $55B7: $00
    nop                                           ; $55B8: $00
    nop                                           ; $55B9: $00
    nop                                           ; $55BA: $00
    nop                                           ; $55BB: $00
    nop                                           ; $55BC: $00
    nop                                           ; $55BD: $00
    nop                                           ; $55BE: $00
    nop                                           ; $55BF: $00
    inc bc                                        ; $55C0: $03
    nop                                           ; $55C1: $00
    inc b                                         ; $55C2: $04
    inc bc                                        ; $55C3: $03
    ld hl, sp+$07                                 ; $55C4: $F8 $07
    ldh a, [rIF]                                  ; $55C6: $F0 $0F
    ld a, a                                       ; $55C8: $7F
    add b                                         ; $55C9: $80
    pop bc                                        ; $55CA: $C1
    nop                                           ; $55CB: $00
    ld bc, $0000                                  ; $55CC: $01 $00 $00
    nop                                           ; $55CF: $00
    nop                                           ; $55D0: $00
    nop                                           ; $55D1: $00
    nop                                           ; $55D2: $00
    nop                                           ; $55D3: $00
    nop                                           ; $55D4: $00
    nop                                           ; $55D5: $00
    nop                                           ; $55D6: $00
    nop                                           ; $55D7: $00
    nop                                           ; $55D8: $00
    nop                                           ; $55D9: $00
    nop                                           ; $55DA: $00
    nop                                           ; $55DB: $00
    nop                                           ; $55DC: $00
    nop                                           ; $55DD: $00
    nop                                           ; $55DE: $00
    nop                                           ; $55DF: $00
    rlca                                          ; $55E0: $07
    nop                                           ; $55E1: $00
    rrca                                          ; $55E2: $0F
    rlca                                          ; $55E3: $07
    rra                                           ; $55E4: $1F
    ld [$091E], sp                                ; $55E5: $08 $1E $09
    dec de                                        ; $55E8: $1B
    inc b                                         ; $55E9: $04
    rst RST_30                                    ; $55EA: $F7
    dec bc                                        ; $55EB: $0B
    rst RST_28                                    ; $55EC: $EF
    ld d, d                                       ; $55ED: $52
    ld a, e                                       ; $55EE: $7B
    dec b                                         ; $55EF: $05
    ld [hl], e                                    ; $55F0: $73
    inc e                                         ; $55F1: $1C
    or a                                          ; $55F2: $B7
    ld e, c                                       ; $55F3: $59
    ld b, a                                       ; $55F4: $47
    cp d                                          ; $55F5: $BA
    ld e, a                                       ; $55F6: $5F
    and c                                         ; $55F7: $A1
    rst RST_20                                    ; $55F8: $E7
    ld a, [de]                                    ; $55F9: $1A
    rst RST_28                                    ; $55FA: $EF
    ld de, $A05F                                  ; $55FB: $11 $5F $A0
    ld sp, hl                                     ; $55FE: $F9
    nop                                           ; $55FF: $00
    ret nz                                        ; $5600: $C0

    nop                                           ; $5601: $00
    ldh [$FFC0], a                                ; $5602: $E0 $C0
    cp $00                                        ; $5604: $FE $00
    pop hl                                        ; $5606: $E1
    ld e, $F0                                     ; $5607: $1E $F0
    rst RST_28                                    ; $5609: $EF
    ld hl, sp+$07                                 ; $560A: $F8 $07
    db $FC                                        ; $560C: $FC
    ei                                            ; $560D: $FB
    db $FC                                        ; $560E: $FC
    inc bc                                        ; $560F: $03
    cp $FD                                        ; $5610: $FE $FD
    db $FC                                        ; $5612: $FC
    inc bc                                        ; $5613: $03
    ld hl, sp-$09                                 ; $5614: $F8 $F7
    db $FC                                        ; $5616: $FC
    inc bc                                        ; $5617: $03
    rst RST_38                                    ; $5618: $FF
    db $FC                                        ; $5619: $FC
    rst RST_38                                    ; $561A: $FF
    nop                                           ; $561B: $00
    rst RST_38                                    ; $561C: $FF
    ldh a, [$FFF1]                                ; $561D: $F0 $F1
    nop                                           ; $561F: $00
    ret nz                                        ; $5620: $C0

    nop                                           ; $5621: $00
    and b                                         ; $5622: $A0
    ld b, b                                       ; $5623: $40
    ld d, b                                       ; $5624: $50
    and b                                         ; $5625: $A0
    ld d, b                                       ; $5626: $50
    and b                                         ; $5627: $A0
    ld c, b                                       ; $5628: $48
    or b                                          ; $5629: $B0
    ret z                                         ; $562A: $C8

    jr nc, jr_00D_5669                            ; $562B: $30 $3C

    ret nz                                        ; $562D: $C0

    ld [bc], a                                    ; $562E: $02
    db $FC                                        ; $562F: $FC
    ld b, d                                       ; $5630: $42
    cp h                                          ; $5631: $BC
    or $08                                        ; $5632: $F6 $08
    db $FD                                        ; $5634: $FD
    ld [bc], a                                    ; $5635: $02
    ld c, a                                       ; $5636: $4F
    or b                                          ; $5637: $B0
    ld hl, sp+$00                                 ; $5638: $F8 $00
    nop                                           ; $563A: $00
    nop                                           ; $563B: $00
    nop                                           ; $563C: $00
    nop                                           ; $563D: $00
    nop                                           ; $563E: $00
    nop                                           ; $563F: $00
    ld bc, $0700                                  ; $5640: $01 $00 $07
    ld bc, $070F                                  ; $5643: $01 $0F $07
    rra                                           ; $5646: $1F
    inc c                                         ; $5647: $0C
    rra                                           ; $5648: $1F
    nop                                           ; $5649: $00
    inc bc                                        ; $564A: $03
    ld bc, $0103                                  ; $564B: $01 $03 $01
    ld b, $03                                     ; $564E: $06 $03
    ld b, $03                                     ; $5650: $06 $03
    inc c                                         ; $5652: $0C
    rlca                                          ; $5653: $07
    inc c                                         ; $5654: $0C
    rlca                                          ; $5655: $07
    jr jr_00D_5667                                ; $5656: $18 $0F

    ld a, [de]                                    ; $5658: $1A
    rrca                                          ; $5659: $0F
    ld [hl], $1F                                  ; $565A: $36 $1F
    inc a                                         ; $565C: $3C
    rra                                           ; $565D: $1F
    ld a, h                                       ; $565E: $7C
    scf                                           ; $565F: $37
    ld e, $00                                     ; $5660: $1E $00
    ld a, a                                       ; $5662: $7F
    ld e, $FF                                     ; $5663: $1E $FF
    ld a, a                                       ; $5665: $7F
    rst RST_38                                    ; $5666: $FF

jr_00D_5667:
    rst RST_38                                    ; $5667: $FF
    rst RST_28                                    ; $5668: $EF

jr_00D_5669:
    ld a, a                                       ; $5669: $7F
    db $DD                                        ; $566A: $DD
    rst RST_38                                    ; $566B: $FF
    sbc c                                         ; $566C: $99
    rst RST_38                                    ; $566D: $FF
    ld sp, $21FF                                  ; $566E: $31 $FF $21
    rst RST_38                                    ; $5671: $FF
    nop                                           ; $5672: $00
    rst RST_38                                    ; $5673: $FF
    nop                                           ; $5674: $00
    rst RST_38                                    ; $5675: $FF
    nop                                           ; $5676: $00
    rst RST_38                                    ; $5677: $FF
    nop                                           ; $5678: $00
    rst RST_38                                    ; $5679: $FF
    nop                                           ; $567A: $00
    rst RST_38                                    ; $567B: $FF
    nop                                           ; $567C: $00
    rst RST_38                                    ; $567D: $FF
    nop                                           ; $567E: $00
    rst RST_38                                    ; $567F: $FF
    add b                                         ; $5680: $80
    nop                                           ; $5681: $00
    ret nz                                        ; $5682: $C0

    add b                                         ; $5683: $80
    ldh [$FFC0], a                                ; $5684: $E0 $C0
    ldh [$FFC0], a                                ; $5686: $E0 $C0
    ldh [$FFC0], a                                ; $5688: $E0 $C0
    and b                                         ; $568A: $A0
    ret nz                                        ; $568B: $C0

    xor a                                         ; $568C: $AF

jr_00D_568D:
    ret nz                                        ; $568D: $C0

    ccf                                           ; $568E: $3F
    adc $7F                                       ; $568F: $CE $7F
    sub b                                         ; $5691: $90
    ld a, a                                       ; $5692: $7F
    adc a                                         ; $5693: $8F
    ld a, a                                       ; $5694: $7F
    sub b                                         ; $5695: $90
    ld a, a                                       ; $5696: $7F
    adc a                                         ; $5697: $8F
    ld a, a                                       ; $5698: $7F
    sub b                                         ; $5699: $90
    ld a, a                                       ; $569A: $7F
    xor a                                         ; $569B: $AF
    rst RST_38                                    ; $569C: $FF
    db $10                                        ; $569D: $10
    rst RST_38                                    ; $569E: $FF
    rlca                                          ; $569F: $07
    add b                                         ; $56A0: $80
    nop                                           ; $56A1: $00
    add b                                         ; $56A2: $80
    nop                                           ; $56A3: $00
    ldh [$FF80], a                                ; $56A4: $E0 $80
    ret c                                         ; $56A6: $D8

    jr nz, jr_00D_568D                            ; $56A7: $20 $E4

    ret c                                         ; $56A9: $D8

    jp nz, $823C                                  ; $56AA: $C2 $3C $82

    ld a, h                                       ; $56AD: $7C
    pop bc                                        ; $56AE: $C1
    ld a, $E5                                     ; $56AF: $3E $E5
    jp c, Jump_000_3CC3                           ; $56B1: $DA $C3 $3C

    ld [bc], a                                    ; $56B4: $02
    db $FC                                        ; $56B5: $FC
    add d                                         ; $56B6: $82
    ld a, h                                       ; $56B7: $7C
    db $FC                                        ; $56B8: $FC
    nop                                           ; $56B9: $00
    adc b                                         ; $56BA: $88
    ld [hl], b                                    ; $56BB: $70
    ld [$08F0], sp                                ; $56BC: $08 $F0 $08
    ldh a, [$FF7C]                                ; $56BF: $F0 $7C
    daa                                           ; $56C1: $27
    ld l, h                                       ; $56C2: $6C
    rlca                                          ; $56C3: $07
    add hl, de                                    ; $56C4: $19
    rrca                                          ; $56C5: $0F

jr_00D_56C6:
    add hl, de                                    ; $56C6: $19
    rrca                                          ; $56C7: $0F
    dec de                                        ; $56C8: $1B
    rrca                                          ; $56C9: $0F
    dec de                                        ; $56CA: $1B
    ld c, $3F                                     ; $56CB: $0E $3F
    ld e, $3F                                     ; $56CD: $1E $3F
    inc e                                         ; $56CF: $1C
    ccf                                           ; $56D0: $3F
    inc e                                         ; $56D1: $1C
    dec a                                         ; $56D2: $3D
    jr jr_00D_5712                                ; $56D3: $18 $3D

    jr jr_00D_5750                                ; $56D5: $18 $79

    jr nc, jr_00D_5752                            ; $56D7: $30 $79

    jr nc, jr_00D_574C                            ; $56D9: $30 $71

    jr nz, jr_00D_574E                            ; $56DB: $20 $71

    jr nz, jr_00D_5740                            ; $56DD: $20 $61

    nop                                           ; $56DF: $00
    nop                                           ; $56E0: $00
    rst RST_38                                    ; $56E1: $FF
    nop                                           ; $56E2: $00
    rst RST_38                                    ; $56E3: $FF
    nop                                           ; $56E4: $00
    rst RST_38                                    ; $56E5: $FF
    add b                                         ; $56E6: $80
    rst RST_38                                    ; $56E7: $FF
    add b                                         ; $56E8: $80
    rst RST_38                                    ; $56E9: $FF
    sub b                                         ; $56EA: $90
    rst RST_38                                    ; $56EB: $FF
    sub b                                         ; $56EC: $90
    rst RST_38                                    ; $56ED: $FF
    sub c                                         ; $56EE: $91
    cp $B1                                        ; $56EF: $FE $B1
    cp $B1                                        ; $56F1: $FE $B1
    cp $BB                                        ; $56F3: $FE $BB
    cp $FB                                        ; $56F5: $FE $FB
    cp $FF                                        ; $56F7: $FE $FF
    cp $FF                                        ; $56F9: $FE $FF
    xor $FF                                       ; $56FB: $EE $FF
    xor $FF                                       ; $56FD: $EE $FF
    adc $FF                                       ; $56FF: $CE $FF
    jr @+$01                                      ; $5701: $18 $FF

    ld b, h                                       ; $5703: $44
    rst RST_38                                    ; $5704: $FF
    jr nc, jr_00D_56C6                            ; $5705: $30 $BF

    nop                                           ; $5707: $00
    sub e                                         ; $5708: $93
    inc c                                         ; $5709: $0C
    sbc [hl]                                      ; $570A: $9E
    ld bc, $0718                                  ; $570B: $01 $18 $07
    inc a                                         ; $570E: $3C
    inc bc                                        ; $570F: $03
    and b                                         ; $5710: $A0
    rra                                           ; $5711: $1F

jr_00D_5712:
    ret nz                                        ; $5712: $C0

    ccf                                           ; $5713: $3F
    ld b, b                                       ; $5714: $40
    cp a                                          ; $5715: $BF
    nop                                           ; $5716: $00
    rst RST_38                                    ; $5717: $FF
    nop                                           ; $5718: $00
    rst RST_38                                    ; $5719: $FF
    ret nc                                        ; $571A: $D0

    cpl                                           ; $571B: $2F
    ccf                                           ; $571C: $3F
    nop                                           ; $571D: $00
    ld sp, $100E                                  ; $571E: $31 $0E $10
    ldh [rNR10], a                                ; $5721: $E0 $10
    ldh [rNR10], a                                ; $5723: $E0 $10
    ldh [rNR10], a                                ; $5725: $E0 $10
    ldh [rNR10], a                                ; $5727: $E0 $10
    ldh [rNR41], a                                ; $5729: $E0 $20
    ret nz                                        ; $572B: $C0

    ld h, b                                       ; $572C: $60
    add b                                         ; $572D: $80
    ldh [rLCDC], a                                ; $572E: $E0 $40
    ldh [rLCDC], a                                ; $5730: $E0 $40
    ret nz                                        ; $5732: $C0

    add b                                         ; $5733: $80
    add b                                         ; $5734: $80
    nop                                           ; $5735: $00
    nop                                           ; $5736: $00
    nop                                           ; $5737: $00
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    nop                                           ; $573A: $00
    nop                                           ; $573B: $00
    nop                                           ; $573C: $00
    nop                                           ; $573D: $00
    nop                                           ; $573E: $00
    nop                                           ; $573F: $00

jr_00D_5740:
    ld h, c                                       ; $5740: $61
    nop                                           ; $5741: $00
    ld bc, $0100                                  ; $5742: $01 $00 $01
    nop                                           ; $5745: $00
    ld bc, $0100                                  ; $5746: $01 $00 $01
    nop                                           ; $5749: $00
    nop                                           ; $574A: $00
    nop                                           ; $574B: $00

jr_00D_574C:
    nop                                           ; $574C: $00
    nop                                           ; $574D: $00

jr_00D_574E:
    nop                                           ; $574E: $00
    nop                                           ; $574F: $00

jr_00D_5750:
    nop                                           ; $5750: $00
    nop                                           ; $5751: $00

jr_00D_5752:
    nop                                           ; $5752: $00
    nop                                           ; $5753: $00
    nop                                           ; $5754: $00
    nop                                           ; $5755: $00
    nop                                           ; $5756: $00
    nop                                           ; $5757: $00
    nop                                           ; $5758: $00
    nop                                           ; $5759: $00
    nop                                           ; $575A: $00
    nop                                           ; $575B: $00
    nop                                           ; $575C: $00
    nop                                           ; $575D: $00
    nop                                           ; $575E: $00
    nop                                           ; $575F: $00
    rst RST_28                                    ; $5760: $EF
    add $EF                                       ; $5761: $C6 $EF
    add $C7                                       ; $5763: $C6 $C7
    add d                                         ; $5765: $82
    rst RST_00                                    ; $5766: $C7
    add d                                         ; $5767: $82
    add e                                         ; $5768: $83
    nop                                           ; $5769: $00
    add e                                         ; $576A: $83
    nop                                           ; $576B: $00
    ld bc, $0000                                  ; $576C: $01 $00 $00
    nop                                           ; $576F: $00
    nop                                           ; $5770: $00
    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    nop                                           ; $5778: $00
    nop                                           ; $5779: $00
    nop                                           ; $577A: $00
    nop                                           ; $577B: $00
    nop                                           ; $577C: $00
    nop                                           ; $577D: $00
    nop                                           ; $577E: $00
    nop                                           ; $577F: $00
    ccf                                           ; $5780: $3F
    db $10                                        ; $5781: $10
    ccf                                           ; $5782: $3F
    rrca                                          ; $5783: $0F
    ld a, a                                       ; $5784: $7F
    nop                                           ; $5785: $00
    db $FC                                        ; $5786: $FC
    nop                                           ; $5787: $00
    ld [hl], b                                    ; $5788: $70
    add b                                         ; $5789: $80
    ldh a, [rP1]                                  ; $578A: $F0 $00
    nop                                           ; $578C: $00
    nop                                           ; $578D: $00
    nop                                           ; $578E: $00
    nop                                           ; $578F: $00
    nop                                           ; $5790: $00
    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    nop                                           ; $5793: $00
    nop                                           ; $5794: $00
    nop                                           ; $5795: $00
    nop                                           ; $5796: $00
    nop                                           ; $5797: $00
    nop                                           ; $5798: $00
    nop                                           ; $5799: $00
    nop                                           ; $579A: $00
    nop                                           ; $579B: $00
    nop                                           ; $579C: $00
    nop                                           ; $579D: $00
    nop                                           ; $579E: $00
    nop                                           ; $579F: $00
    ld bc, $0100                                  ; $57A0: $01 $00 $01
    nop                                           ; $57A3: $00
    nop                                           ; $57A4: $00
    nop                                           ; $57A5: $00
    ld bc, $0E00                                  ; $57A6: $01 $00 $0E
    ld bc, $007F                                  ; $57A9: $01 $7F $00
    sbc a                                         ; $57AC: $9F
    ld h, b                                       ; $57AD: $60
    rst RST_30                                    ; $57AE: $F7
    ld [$0619], sp                                ; $57AF: $08 $19 $06
    rlca                                          ; $57B2: $07
    nop                                           ; $57B3: $00
    nop                                           ; $57B4: $00
    nop                                           ; $57B5: $00
    nop                                           ; $57B6: $00
    nop                                           ; $57B7: $00
    nop                                           ; $57B8: $00
    nop                                           ; $57B9: $00
    nop                                           ; $57BA: $00
    nop                                           ; $57BB: $00
    nop                                           ; $57BC: $00
    nop                                           ; $57BD: $00
    nop                                           ; $57BE: $00
    nop                                           ; $57BF: $00
    nop                                           ; $57C0: $00
    nop                                           ; $57C1: $00
    inc bc                                        ; $57C2: $03
    nop                                           ; $57C3: $00
    rrca                                          ; $57C4: $0F
    inc bc                                        ; $57C5: $03
    rra                                           ; $57C6: $1F
    inc c                                         ; $57C7: $0C
    ccf                                           ; $57C8: $3F
    dec bc                                        ; $57C9: $0B
    rst RST_28                                    ; $57CA: $EF
    inc [hl]                                      ; $57CB: $34
    rrca                                          ; $57CC: $0F
    di                                            ; $57CD: $F3
    rst RST_18                                    ; $57CE: $DF
    inc h                                         ; $57CF: $24
    ld a, a                                       ; $57D0: $7F
    dec bc                                        ; $57D1: $0B
    cp a                                          ; $57D2: $BF
    ld b, h                                       ; $57D3: $44
    ld e, a                                       ; $57D4: $5F
    xor d                                         ; $57D5: $AA
    cp $01                                        ; $57D6: $FE $01
    ret nz                                        ; $57D8: $C0

    ccf                                           ; $57D9: $3F
    ldh a, [rIF]                                  ; $57DA: $F0 $0F
    rst RST_38                                    ; $57DC: $FF
    nop                                           ; $57DD: $00
    add b                                         ; $57DE: $80
    nop                                           ; $57DF: $00
    nop                                           ; $57E0: $00
    nop                                           ; $57E1: $00
    nop                                           ; $57E2: $00
    nop                                           ; $57E3: $00
    ret nz                                        ; $57E4: $C0

    nop                                           ; $57E5: $00
    ld hl, sp-$40                                 ; $57E6: $F8 $C0
    and $18                                       ; $57E8: $E6 $18
    pop af                                        ; $57EA: $F1
    xor $F8                                       ; $57EB: $EE $F8
    rlca                                          ; $57ED: $07
    ld hl, sp-$09                                 ; $57EE: $F8 $F7
    ldh a, [rIF]                                  ; $57F0: $F0 $0F
    ldh a, [$FFEF]                                ; $57F2: $F0 $EF
    ldh [$FF1F], a                                ; $57F4: $E0 $1F
    nop                                           ; $57F6: $00
    rst RST_38                                    ; $57F7: $FF
    inc b                                         ; $57F8: $04
    ei                                            ; $57F9: $FB
    ld [$1FF7], sp                                ; $57FA: $08 $F7 $1F
    ldh [$FFE0], a                                ; $57FD: $E0 $E0
    nop                                           ; $57FF: $00
    adc a                                         ; $5800: $8F
    nop                                           ; $5801: $00
    ld [hl], b                                    ; $5802: $70
    adc a                                         ; $5803: $8F
    nop                                           ; $5804: $00
    rst RST_38                                    ; $5805: $FF
    nop                                           ; $5806: $00
    rst RST_38                                    ; $5807: $FF
    nop                                           ; $5808: $00
    rst RST_38                                    ; $5809: $FF
    nop                                           ; $580A: $00
    rst RST_38                                    ; $580B: $FF
    db $10                                        ; $580C: $10
    rst RST_28                                    ; $580D: $EF
    db $10                                        ; $580E: $10
    rst RST_28                                    ; $580F: $EF
    ld a, b                                       ; $5810: $78
    add a                                         ; $5811: $87
    add [hl]                                      ; $5812: $86
    ld bc, $0001                                  ; $5813: $01 $01 $00
    nop                                           ; $5816: $00
    nop                                           ; $5817: $00
    nop                                           ; $5818: $00
    nop                                           ; $5819: $00
    nop                                           ; $581A: $00
    nop                                           ; $581B: $00
    nop                                           ; $581C: $00
    nop                                           ; $581D: $00
    nop                                           ; $581E: $00

jr_00D_581F:
    nop                                           ; $581F: $00
    rlca                                          ; $5820: $07
    nop                                           ; $5821: $00
    rra                                           ; $5822: $1F
    rlca                                          ; $5823: $07
    ccf                                           ; $5824: $3F
    jr jr_00D_581F                                ; $5825: $18 $F8

    jr nz, jr_00D_5849                            ; $5827: $20 $20

    ret nz                                        ; $5829: $C0

    db $10                                        ; $582A: $10
    ldh [rNR10], a                                ; $582B: $E0 $10
    ldh [$FF08], a                                ; $582D: $E0 $08
    ldh a, [$FF0C]                                ; $582F: $F0 $0C
    ldh a, [rIF]                                  ; $5831: $F0 $0F
    ldh a, [$FF0B]                                ; $5833: $F0 $0B
    db $F4                                        ; $5835: $F4
    nop                                           ; $5836: $00
    rst RST_38                                    ; $5837: $FF
    ldh a, [rIF]                                  ; $5838: $F0 $0F
    rrca                                          ; $583A: $0F
    nop                                           ; $583B: $00
    nop                                           ; $583C: $00
    nop                                           ; $583D: $00
    nop                                           ; $583E: $00
    nop                                           ; $583F: $00
    add b                                         ; $5840: $80
    nop                                           ; $5841: $00
    ret nz                                        ; $5842: $C0

    add b                                         ; $5843: $80
    ldh a, [rLCDC]                                ; $5844: $F0 $40
    ld a, [hl]                                    ; $5846: $7E
    jr nc, jr_00D_5888                            ; $5847: $30 $3F

jr_00D_5849:
    ld c, $0F                                     ; $5849: $0E $0F
    ld b, $0F                                     ; $584B: $06 $0F
    ld b, $07                                     ; $584D: $06 $07
    nop                                           ; $584F: $00
    nop                                           ; $5850: $00
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00
    ldh a, [rP1]                                  ; $5854: $F0 $00
    db $FC                                        ; $5856: $FC
    nop                                           ; $5857: $00
    ld a, a                                       ; $5858: $7F
    add b                                         ; $5859: $80
    rst RST_38                                    ; $585A: $FF
    nop                                           ; $585B: $00
    ld [hl], e                                    ; $585C: $73
    inc c                                         ; $585D: $0C
    ld e, $00                                     ; $585E: $1E $00
    dec de                                        ; $5860: $1B
    inc b                                         ; $5861: $04
    inc h                                         ; $5862: $24
    dec de                                        ; $5863: $1B
    ld a, a                                       ; $5864: $7F
    nop                                           ; $5865: $00
    cp a                                          ; $5866: $BF
    ld h, b                                       ; $5867: $60
    ld a, a                                       ; $5868: $7F
    add b                                         ; $5869: $80
    rst RST_38                                    ; $586A: $FF
    ld h, b                                       ; $586B: $60
    push af                                       ; $586C: $F5
    ld a, [bc]                                    ; $586D: $0A
    ld [hl], c                                    ; $586E: $71
    xor $FF                                       ; $586F: $EE $FF
    nop                                           ; $5871: $00
    rst RST_38                                    ; $5872: $FF
    or l                                          ; $5873: $B5
    ld a, a                                       ; $5874: $7F
    xor d                                         ; $5875: $AA
    rst RST_38                                    ; $5876: $FF
    ld c, d                                       ; $5877: $4A
    rst RST_38                                    ; $5878: $FF
    ld d, l                                       ; $5879: $55
    ld a, a                                       ; $587A: $7F
    inc d                                         ; $587B: $14
    rra                                           ; $587C: $1F
    ld a, [bc]                                    ; $587D: $0A
    dec de                                        ; $587E: $1B
    inc b                                         ; $587F: $04
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    add b                                         ; $5882: $80
    nop                                           ; $5883: $00
    ldh a, [$FF80]                                ; $5884: $F0 $80
    ret z                                         ; $5886: $C8

    ld [hl], b                                    ; $5887: $70

jr_00D_5888:
    ldh a, [rP1]                                  ; $5888: $F0 $00
    add sp, -$10                                  ; $588A: $E8 $F0
    ld hl, sp+$00                                 ; $588C: $F8 $00
    db $F4                                        ; $588E: $F4
    ld hl, sp-$04                                 ; $588F: $F8 $FC
    nop                                           ; $5891: $00
    db $FC                                        ; $5892: $FC
    ld [hl], b                                    ; $5893: $70
    db $F4                                        ; $5894: $F4
    adc b                                         ; $5895: $88
    ldh [c], a                                    ; $5896: $E2
    ld e, h                                       ; $5897: $5C
    ldh a, [c]                                    ; $5898: $F2
    inc l                                         ; $5899: $2C
    pop hl                                        ; $589A: $E1
    sbc $C1                                       ; $589B: $DE $C1
    ld a, $01                                     ; $589D: $3E $01
    cp $00                                        ; $589F: $FE $00
    nop                                           ; $58A1: $00
    nop                                           ; $58A2: $00
    nop                                           ; $58A3: $00
    nop                                           ; $58A4: $00
    nop                                           ; $58A5: $00
    nop                                           ; $58A6: $00
    nop                                           ; $58A7: $00
    nop                                           ; $58A8: $00
    nop                                           ; $58A9: $00
    nop                                           ; $58AA: $00
    nop                                           ; $58AB: $00
    nop                                           ; $58AC: $00
    nop                                           ; $58AD: $00
    nop                                           ; $58AE: $00
    nop                                           ; $58AF: $00
    ld bc, $0100                                  ; $58B0: $01 $00 $01
    nop                                           ; $58B3: $00
    nop                                           ; $58B4: $00
    nop                                           ; $58B5: $00
    ld bc, $0200                                  ; $58B6: $01 $00 $02
    ld bc, $0003                                  ; $58B9: $01 $03 $00
    ld bc, $0100                                  ; $58BC: $01 $00 $01
    nop                                           ; $58BF: $00
    nop                                           ; $58C0: $00
    nop                                           ; $58C1: $00
    nop                                           ; $58C2: $00
    nop                                           ; $58C3: $00
    nop                                           ; $58C4: $00
    nop                                           ; $58C5: $00
    nop                                           ; $58C6: $00
    nop                                           ; $58C7: $00
    nop                                           ; $58C8: $00
    nop                                           ; $58C9: $00
    nop                                           ; $58CA: $00
    nop                                           ; $58CB: $00
    nop                                           ; $58CC: $00
    nop                                           ; $58CD: $00
    nop                                           ; $58CE: $00
    nop                                           ; $58CF: $00
    nop                                           ; $58D0: $00
    nop                                           ; $58D1: $00
    nop                                           ; $58D2: $00
    nop                                           ; $58D3: $00
    nop                                           ; $58D4: $00
    nop                                           ; $58D5: $00
    nop                                           ; $58D6: $00
    nop                                           ; $58D7: $00
    nop                                           ; $58D8: $00
    nop                                           ; $58D9: $00
    nop                                           ; $58DA: $00
    nop                                           ; $58DB: $00
    nop                                           ; $58DC: $00
    nop                                           ; $58DD: $00
    ld c, $00                                     ; $58DE: $0E $00
    adc b                                         ; $58E0: $88
    ld [hl], a                                    ; $58E1: $77
    adc b                                         ; $58E2: $88
    ld [hl], a                                    ; $58E3: $77
    ld c, b                                       ; $58E4: $48
    scf                                           ; $58E5: $37
    ld c, b                                       ; $58E6: $48
    scf                                           ; $58E7: $37
    ld c, b                                       ; $58E8: $48
    scf                                           ; $58E9: $37
    jr z, jr_00D_5903                             ; $58EA: $28 $17

    jr z, jr_00D_5905                             ; $58EC: $28 $17

    jr z, jr_00D_5907                             ; $58EE: $28 $17

    add hl, de                                    ; $58F0: $19
    ld b, $19                                     ; $58F1: $06 $19
    ld b, $19                                     ; $58F3: $06 $19
    ld b, $0F                                     ; $58F5: $06 $0F
    nop                                           ; $58F7: $00
    rra                                           ; $58F8: $1F
    nop                                           ; $58F9: $00
    rra                                           ; $58FA: $1F
    nop                                           ; $58FB: $00
    add hl, hl                                    ; $58FC: $29
    ld d, $3F                                     ; $58FD: $16 $3F
    nop                                           ; $58FF: $00
    inc b                                         ; $5900: $04
    ld hl, sp+$04                                 ; $5901: $F8 $04

jr_00D_5903:
    ld hl, sp+$42                                 ; $5903: $F8 $42

jr_00D_5905:
    cp h                                          ; $5905: $BC
    ld b, c                                       ; $5906: $41

jr_00D_5907:
    cp [hl]                                       ; $5907: $BE
    ld b, b                                       ; $5908: $40
    cp a                                          ; $5909: $BF
    add b                                         ; $590A: $80
    ld a, a                                       ; $590B: $7F
    add d                                         ; $590C: $82
    ld a, l                                       ; $590D: $7D
    add d                                         ; $590E: $82
    ld a, l                                       ; $590F: $7D
    ldh a, [c]                                    ; $5910: $F2
    dec c                                         ; $5911: $0D
    dec e                                         ; $5912: $1D
    ld [bc], a                                    ; $5913: $02
    rrca                                          ; $5914: $0F
    nop                                           ; $5915: $00
    rlca                                          ; $5916: $07
    nop                                           ; $5917: $00
    inc bc                                        ; $5918: $03
    nop                                           ; $5919: $00
    inc bc                                        ; $591A: $03
    nop                                           ; $591B: $00
    rlca                                          ; $591C: $07
    nop                                           ; $591D: $00
    nop                                           ; $591E: $00
    nop                                           ; $591F: $00
    ld b, $00                                     ; $5920: $06 $00
    rrca                                          ; $5922: $0F
    ld b, $0F                                     ; $5923: $06 $0F
    ld b, $07                                     ; $5925: $06 $07
    ld [bc], a                                    ; $5927: $02
    ld b, $00                                     ; $5928: $06 $00
    rlca                                          ; $592A: $07
    ld [bc], a                                    ; $592B: $02
    rlca                                          ; $592C: $07
    ld [bc], a                                    ; $592D: $02
    ld c, $04                                     ; $592E: $0E $04
    inc a                                         ; $5930: $3C
    ld [$30F8], sp                                ; $5931: $08 $F8 $30
    jr nc, @-$3E                                  ; $5934: $30 $C0

    db $10                                        ; $5936: $10
    ldh [$FF08], a                                ; $5937: $E0 $08
    ldh a, [$FF08]                                ; $5939: $F0 $08
    ldh a, [$FF0C]                                ; $593B: $F0 $0C
    ldh a, [rSC]                                  ; $593D: $F0 $02
    db $FC                                        ; $593F: $FC
    ldh a, [c]                                    ; $5940: $F2
    inc c                                         ; $5941: $0C
    dec c                                         ; $5942: $0D
    ld [bc], a                                    ; $5943: $02
    add a                                         ; $5944: $87
    nop                                           ; $5945: $00
    add a                                         ; $5946: $87
    nop                                           ; $5947: $00
    add l                                         ; $5948: $85
    ld [bc], a                                    ; $5949: $02
    rlca                                          ; $594A: $07
    nop                                           ; $594B: $00
    nop                                           ; $594C: $00
    nop                                           ; $594D: $00
    nop                                           ; $594E: $00
    nop                                           ; $594F: $00
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    nop                                           ; $5953: $00
    nop                                           ; $5954: $00
    nop                                           ; $5955: $00
    nop                                           ; $5956: $00
    nop                                           ; $5957: $00
    nop                                           ; $5958: $00
    nop                                           ; $5959: $00
    nop                                           ; $595A: $00
    nop                                           ; $595B: $00
    nop                                           ; $595C: $00
    nop                                           ; $595D: $00
    nop                                           ; $595E: $00
    nop                                           ; $595F: $00
    add b                                         ; $5960: $80
    nop                                           ; $5961: $00
    ret nz                                        ; $5962: $C0

    nop                                           ; $5963: $00
    ld b, b                                       ; $5964: $40
    add b                                         ; $5965: $80
    ret nz                                        ; $5966: $C0

    nop                                           ; $5967: $00
    nop                                           ; $5968: $00
    nop                                           ; $5969: $00
    nop                                           ; $596A: $00
    nop                                           ; $596B: $00
    nop                                           ; $596C: $00
    nop                                           ; $596D: $00
    nop                                           ; $596E: $00
    nop                                           ; $596F: $00
    nop                                           ; $5970: $00
    nop                                           ; $5971: $00
    nop                                           ; $5972: $00
    nop                                           ; $5973: $00
    nop                                           ; $5974: $00
    nop                                           ; $5975: $00
    nop                                           ; $5976: $00
    nop                                           ; $5977: $00
    nop                                           ; $5978: $00
    nop                                           ; $5979: $00
    nop                                           ; $597A: $00
    nop                                           ; $597B: $00
    nop                                           ; $597C: $00
    nop                                           ; $597D: $00
    nop                                           ; $597E: $00
    nop                                           ; $597F: $00
    add $03                                       ; $5980: $C6 $03
    call c, $F807                                 ; $5982: $DC $07 $F8
    ld e, a                                       ; $5985: $5F
    ldh [$FF7F], a                                ; $5986: $E0 $7F
    ret nz                                        ; $5988: $C0

    ld a, a                                       ; $5989: $7F
    ret nz                                        ; $598A: $C0

    ld a, a                                       ; $598B: $7F
    ret nz                                        ; $598C: $C0

    ld a, a                                       ; $598D: $7F
    ret nz                                        ; $598E: $C0

    ld a, a                                       ; $598F: $7F
    ret nz                                        ; $5990: $C0

    ld a, a                                       ; $5991: $7F
    ld h, b                                       ; $5992: $60
    ccf                                           ; $5993: $3F
    ld h, b                                       ; $5994: $60
    ccf                                           ; $5995: $3F
    jr nc, jr_00D_59B7                            ; $5996: $30 $1F

    jr nc, jr_00D_59B9                            ; $5998: $30 $1F

    jr jr_00D_59AB                                ; $599A: $18 $0F

    inc c                                         ; $599C: $0C
    rlca                                          ; $599D: $07
    ld b, $03                                     ; $599E: $06 $03
    rrca                                          ; $59A0: $0F
    ld a, [$FF05]                                 ; $59A1: $FA $05 $FF
    nop                                           ; $59A4: $00
    rst RST_38                                    ; $59A5: $FF
    nop                                           ; $59A6: $00
    rst RST_38                                    ; $59A7: $FF
    nop                                           ; $59A8: $00
    rst RST_38                                    ; $59A9: $FF
    nop                                           ; $59AA: $00

jr_00D_59AB:
    rst RST_38                                    ; $59AB: $FF
    nop                                           ; $59AC: $00
    rst RST_38                                    ; $59AD: $FF
    nop                                           ; $59AE: $00
    rst RST_38                                    ; $59AF: $FF
    nop                                           ; $59B0: $00
    rst RST_38                                    ; $59B1: $FF
    nop                                           ; $59B2: $00
    rst RST_38                                    ; $59B3: $FF
    nop                                           ; $59B4: $00
    rst RST_38                                    ; $59B5: $FF
    nop                                           ; $59B6: $00

jr_00D_59B7:
    rst RST_38                                    ; $59B7: $FF
    nop                                           ; $59B8: $00

jr_00D_59B9:
    rst RST_38                                    ; $59B9: $FF
    nop                                           ; $59BA: $00
    rst RST_38                                    ; $59BB: $FF
    nop                                           ; $59BC: $00
    rst RST_38                                    ; $59BD: $FF
    nop                                           ; $59BE: $00
    rst RST_38                                    ; $59BF: $FF
    nop                                           ; $59C0: $00
    nop                                           ; $59C1: $00
    add b                                         ; $59C2: $80
    nop                                           ; $59C3: $00
    ret nz                                        ; $59C4: $C0

    add b                                         ; $59C5: $80
    ld h, h                                       ; $59C6: $64
    ret nz                                        ; $59C7: $C0

    call nz, Call_00D_6480                        ; $59C8: $C4 $80 $64
    ret nz                                        ; $59CB: $C0

    ld l, h                                       ; $59CC: $6C
    ret nz                                        ; $59CD: $C0

    db $FC                                        ; $59CE: $FC
    xor b                                         ; $59CF: $A8
    ld a, h                                       ; $59D0: $7C
    add sp, $3C                                   ; $59D1: $E8 $3C
    add sp, $3C                                   ; $59D3: $E8 $3C
    add sp, $1C                                   ; $59D5: $E8 $1C
    ld hl, sp+$16                                 ; $59D7: $F8 $16
    db $FC                                        ; $59D9: $FC
    ld b, $FC                                     ; $59DA: $06 $FC
    ld b, $FC                                     ; $59DC: $06 $FC
    ld b, $FC                                     ; $59DE: $06 $FC
    nop                                           ; $59E0: $00
    nop                                           ; $59E1: $00
    nop                                           ; $59E2: $00
    nop                                           ; $59E3: $00
    nop                                           ; $59E4: $00
    nop                                           ; $59E5: $00
    nop                                           ; $59E6: $00
    nop                                           ; $59E7: $00
    nop                                           ; $59E8: $00
    nop                                           ; $59E9: $00
    nop                                           ; $59EA: $00
    nop                                           ; $59EB: $00
    nop                                           ; $59EC: $00
    nop                                           ; $59ED: $00
    nop                                           ; $59EE: $00
    nop                                           ; $59EF: $00
    ld c, h                                       ; $59F0: $4C
    nop                                           ; $59F1: $00
    ld a, [hl]                                    ; $59F2: $7E
    inc c                                         ; $59F3: $0C
    ld [hl], e                                    ; $59F4: $73
    ld e, $66                                     ; $59F5: $1E $66
    inc a                                         ; $59F7: $3C
    ld h, [hl]                                    ; $59F8: $66
    inc a                                         ; $59F9: $3C
    ld [hl], $1C                                  ; $59FA: $36 $1C
    inc sp                                        ; $59FC: $33
    ld e, $36                                     ; $59FD: $1E $36
    inc e                                         ; $59FF: $1C
    ret nz                                        ; $5A00: $C0

    ld a, a                                       ; $5A01: $7F
    ret nz                                        ; $5A02: $C0

    ld a, a                                       ; $5A03: $7F
    ld h, b                                       ; $5A04: $60
    ccf                                           ; $5A05: $3F
    ld h, b                                       ; $5A06: $60
    ccf                                           ; $5A07: $3F
    ld h, b                                       ; $5A08: $60
    ccf                                           ; $5A09: $3F
    jr nc, jr_00D_5A2B                            ; $5A0A: $30 $1F

    jr nc, jr_00D_5A2D                            ; $5A0C: $30 $1F

    jr nc, jr_00D_5A2F                            ; $5A0E: $30 $1F

    jr jr_00D_5A21                                ; $5A10: $18 $0F

    jr jr_00D_5A23                                ; $5A12: $18 $0F

    jr jr_00D_5A25                                ; $5A14: $18 $0F

    inc c                                         ; $5A16: $0C
    rlca                                          ; $5A17: $07
    jr jr_00D_5A29                                ; $5A18: $18 $0F

    jr jr_00D_5A2B                                ; $5A1A: $18 $0F

    jr jr_00D_5A2D                                ; $5A1C: $18 $0F

    jr jr_00D_5A2F                                ; $5A1E: $18 $0F

jr_00D_5A20:
    nop                                           ; $5A20: $00

jr_00D_5A21:
    rst RST_38                                    ; $5A21: $FF
    nop                                           ; $5A22: $00

jr_00D_5A23:
    rst RST_38                                    ; $5A23: $FF
    nop                                           ; $5A24: $00

jr_00D_5A25:
    rst RST_38                                    ; $5A25: $FF
    nop                                           ; $5A26: $00
    rst RST_38                                    ; $5A27: $FF
    nop                                           ; $5A28: $00

jr_00D_5A29:
    rst RST_38                                    ; $5A29: $FF
    nop                                           ; $5A2A: $00

jr_00D_5A2B:
    rst RST_38                                    ; $5A2B: $FF
    nop                                           ; $5A2C: $00

jr_00D_5A2D:
    rst RST_38                                    ; $5A2D: $FF
    nop                                           ; $5A2E: $00

jr_00D_5A2F:
    rst RST_38                                    ; $5A2F: $FF
    nop                                           ; $5A30: $00
    rst RST_38                                    ; $5A31: $FF
    jr @+$01                                      ; $5A32: $18 $FF

    inc a                                         ; $5A34: $3C
    rst RST_20                                    ; $5A35: $E7
    ld [hl], $E3                                  ; $5A36: $36 $E3
    inc sp                                        ; $5A38: $33
    pop hl                                        ; $5A39: $E1
    inc sp                                        ; $5A3A: $33
    pop hl                                        ; $5A3B: $E1
    ld [hl], $E3                                  ; $5A3C: $36 $E3
    jr nc, jr_00D_5A20                            ; $5A3E: $30 $E0

    adc $83                                       ; $5A40: $CE $83
    ld a, h                                       ; $5A42: $7C
    rst RST_08                                    ; $5A43: $CF
    ld [hl], b                                    ; $5A44: $70
    rst RST_38                                    ; $5A45: $FF
    ld bc, $03FF                                  ; $5A46: $01 $FF $03
    cp $03                                        ; $5A49: $FE $03
    cp $01                                        ; $5A4B: $FE $01
    rst RST_38                                    ; $5A4D: $FF
    ld bc, $00FF                                  ; $5A4E: $01 $FF $00
    rst RST_38                                    ; $5A51: $FF
    nop                                           ; $5A52: $00
    rst RST_38                                    ; $5A53: $FF
    nop                                           ; $5A54: $00
    rst RST_38                                    ; $5A55: $FF
    inc c                                         ; $5A56: $0C
    rst RST_38                                    ; $5A57: $FF
    ld e, $F3                                     ; $5A58: $1E $F3
    ld e, $F3                                     ; $5A5A: $1E $F3
    ld e, $F3                                     ; $5A5C: $1E $F3
    ld b, $03                                     ; $5A5E: $06 $03
    ret nz                                        ; $5A60: $C0

    add b                                         ; $5A61: $80
    ld h, b                                       ; $5A62: $60
    ret nz                                        ; $5A63: $C0

    ret nz                                        ; $5A64: $C0

    add b                                         ; $5A65: $80
    add b                                         ; $5A66: $80
    nop                                           ; $5A67: $00
    nop                                           ; $5A68: $00
    nop                                           ; $5A69: $00
    nop                                           ; $5A6A: $00
    nop                                           ; $5A6B: $00
    add b                                         ; $5A6C: $80
    nop                                           ; $5A6D: $00
    add b                                         ; $5A6E: $80
    nop                                           ; $5A6F: $00
    call nz, Call_00D_6C80                        ; $5A70: $C4 $80 $6C
    ret nz                                        ; $5A73: $C0

    ld l, h                                       ; $5A74: $6C
    ret nz                                        ; $5A75: $C0

    inc a                                         ; $5A76: $3C
    add sp, $1C                                   ; $5A77: $E8 $1C
    ld hl, sp+$0C                                 ; $5A79: $F8 $0C
    ld hl, sp+$0C                                 ; $5A7B: $F8 $0C
    ld hl, sp+$0C                                 ; $5A7D: $F8 $0C
    ld hl, sp+$00                                 ; $5A7F: $F8 $00
    nop                                           ; $5A81: $00
    nop                                           ; $5A82: $00
    nop                                           ; $5A83: $00
    nop                                           ; $5A84: $00
    nop                                           ; $5A85: $00
    nop                                           ; $5A86: $00
    nop                                           ; $5A87: $00
    nop                                           ; $5A88: $00
    nop                                           ; $5A89: $00
    nop                                           ; $5A8A: $00
    nop                                           ; $5A8B: $00
    nop                                           ; $5A8C: $00
    nop                                           ; $5A8D: $00
    nop                                           ; $5A8E: $00
    nop                                           ; $5A8F: $00
    ld bc, $0100                                  ; $5A90: $01 $00 $01
    nop                                           ; $5A93: $00
    ld bc, $0100                                  ; $5A94: $01 $00 $01
    nop                                           ; $5A97: $00
    add c                                         ; $5A98: $81
    nop                                           ; $5A99: $00
    add c                                         ; $5A9A: $81
    nop                                           ; $5A9B: $00
    add c                                         ; $5A9C: $81
    nop                                           ; $5A9D: $00
    jp Jump_000_0001                              ; $5A9E: $C3 $01 $00


    nop                                           ; $5AA1: $00
    nop                                           ; $5AA2: $00
    nop                                           ; $5AA3: $00
    nop                                           ; $5AA4: $00
    nop                                           ; $5AA5: $00
    nop                                           ; $5AA6: $00
    nop                                           ; $5AA7: $00
    nop                                           ; $5AA8: $00
    nop                                           ; $5AA9: $00
    nop                                           ; $5AAA: $00
    nop                                           ; $5AAB: $00
    nop                                           ; $5AAC: $00
    nop                                           ; $5AAD: $00
    nop                                           ; $5AAE: $00
    nop                                           ; $5AAF: $00
    nop                                           ; $5AB0: $00
    nop                                           ; $5AB1: $00
    add b                                         ; $5AB2: $80
    nop                                           ; $5AB3: $00
    add b                                         ; $5AB4: $80
    nop                                           ; $5AB5: $00
    ret nz                                        ; $5AB6: $C0

    add b                                         ; $5AB7: $80
    pop bc                                        ; $5AB8: $C1
    add b                                         ; $5AB9: $80
    pop hl                                        ; $5ABA: $E1
    ret nz                                        ; $5ABB: $C0

    inc sp                                        ; $5ABC: $33
    ldh [rNR31], a                                ; $5ABD: $E0 $1B
    ldh a, [$FF03]                                ; $5ABF: $F0 $03
    nop                                           ; $5AC1: $00
    inc b                                         ; $5AC2: $04
    inc bc                                        ; $5AC3: $03
    dec bc                                        ; $5AC4: $0B
    inc b                                         ; $5AC5: $04
    rra                                           ; $5AC6: $1F
    inc bc                                        ; $5AC7: $03
    rra                                           ; $5AC8: $1F
    inc c                                         ; $5AC9: $0C
    ccf                                           ; $5ACA: $3F
    inc bc                                        ; $5ACB: $03
    ccf                                           ; $5ACC: $3F
    add hl, de                                    ; $5ACD: $19
    ld a, a                                       ; $5ACE: $7F
    ld h, $7F                                     ; $5ACF: $26 $7F
    jr jr_00D_5B52                                ; $5AD1: $18 $7F

    dec l                                         ; $5AD3: $2D
    ld a, a                                       ; $5AD4: $7F
    ld [de], a                                    ; $5AD5: $12
    ld e, a                                       ; $5AD6: $5F
    inc l                                         ; $5AD7: $2C
    ld a, a                                       ; $5AD8: $7F
    ld a, [bc]                                    ; $5AD9: $0A
    ld a, a                                       ; $5ADA: $7F
    ld bc, $0A75                                  ; $5ADB: $01 $75 $0A
    ccf                                           ; $5ADE: $3F
    nop                                           ; $5ADF: $00
    ldh a, [rP1]                                  ; $5AE0: $F0 $00
    inc c                                         ; $5AE2: $0C
    ldh a, [rSC]                                  ; $5AE3: $F0 $02
    db $FC                                        ; $5AE5: $FC
    ld b, c                                       ; $5AE6: $41
    cp [hl]                                       ; $5AE7: $BE
    ldh [$FF5F], a                                ; $5AE8: $E0 $5F
    ldh a, [$FFAF]                                ; $5AEA: $F0 $AF
    ldh a, [rVBK]                                 ; $5AEC: $F0 $4F
    ld hl, sp+$57                                 ; $5AEE: $F8 $57
    ld hl, sp-$69                                 ; $5AF0: $F8 $97
    ld hl, sp-$69                                 ; $5AF2: $F8 $97
    jp c, $EC25                                   ; $5AF4: $DA $25 $EC

    ld [hl], e                                    ; $5AF7: $73
    inc b                                         ; $5AF8: $04
    ei                                            ; $5AF9: $FB
    call z, $BC33                                 ; $5AFA: $CC $33 $BC
    ld b, e                                       ; $5AFD: $43
    swap h                                        ; $5AFE: $CB $34
    add b                                         ; $5B00: $80
    nop                                           ; $5B01: $00
    ld a, h                                       ; $5B02: $7C
    add b                                         ; $5B03: $80
    inc bc                                        ; $5B04: $03
    db $FC                                        ; $5B05: $FC
    nop                                           ; $5B06: $00
    rst RST_38                                    ; $5B07: $FF
    ld b, b                                       ; $5B08: $40
    cp a                                          ; $5B09: $BF
    ld d, b                                       ; $5B0A: $50
    xor a                                         ; $5B0B: $AF
    jr nz, @-$1F                                  ; $5B0C: $20 $DF

    jr nz, @-$1F                                  ; $5B0E: $20 $DF

    jr nz, @-$1F                                  ; $5B10: $20 $DF

    ld d, b                                       ; $5B12: $50
    xor a                                         ; $5B13: $AF
    ld a, a                                       ; $5B14: $7F
    add b                                         ; $5B15: $80
    db $FC                                        ; $5B16: $FC
    inc bc                                        ; $5B17: $03
    xor [hl]                                      ; $5B18: $AE
    ld d, c                                       ; $5B19: $51
    rst RST_38                                    ; $5B1A: $FF
    nop                                           ; $5B1B: $00
    nop                                           ; $5B1C: $00
    nop                                           ; $5B1D: $00

jr_00D_5B1E:
    nop                                           ; $5B1E: $00
    nop                                           ; $5B1F: $00

jr_00D_5B20:
    cp $00                                        ; $5B20: $FE $00
    nop                                           ; $5B22: $00
    nop                                           ; $5B23: $00
    nop                                           ; $5B24: $00
    nop                                           ; $5B25: $00
    nop                                           ; $5B26: $00
    nop                                           ; $5B27: $00
    nop                                           ; $5B28: $00
    nop                                           ; $5B29: $00
    nop                                           ; $5B2A: $00
    nop                                           ; $5B2B: $00
    nop                                           ; $5B2C: $00
    nop                                           ; $5B2D: $00
    nop                                           ; $5B2E: $00
    nop                                           ; $5B2F: $00
    nop                                           ; $5B30: $00
    nop                                           ; $5B31: $00
    nop                                           ; $5B32: $00
    nop                                           ; $5B33: $00
    nop                                           ; $5B34: $00
    nop                                           ; $5B35: $00
    nop                                           ; $5B36: $00
    nop                                           ; $5B37: $00
    nop                                           ; $5B38: $00

jr_00D_5B39:
    nop                                           ; $5B39: $00
    nop                                           ; $5B3A: $00
    nop                                           ; $5B3B: $00
    nop                                           ; $5B3C: $00
    nop                                           ; $5B3D: $00
    nop                                           ; $5B3E: $00
    nop                                           ; $5B3F: $00
    inc e                                         ; $5B40: $1C
    nop                                           ; $5B41: $00
    ld a, $14                                     ; $5B42: $3E $14
    ld a, a                                       ; $5B44: $7F
    ld h, $EF                                     ; $5B45: $26 $EF
    ld b, [hl]                                    ; $5B47: $46
    rst RST_28                                    ; $5B48: $EF
    ld b, [hl]                                    ; $5B49: $46
    rst RST_20                                    ; $5B4A: $E7
    ld b, d                                       ; $5B4B: $42
    ld [hl], d                                    ; $5B4C: $72
    jr nz, jr_00D_5BBF                            ; $5B4D: $20 $70

    jr nz, jr_00D_5B89                            ; $5B4F: $20 $38

    db $10                                        ; $5B51: $10

jr_00D_5B52:
    jr c, @+$12                                   ; $5B52: $38 $10

    ld [hl], b                                    ; $5B54: $70
    jr nz, jr_00D_5BC7                            ; $5B55: $20 $70

    jr nz, jr_00D_5B39                            ; $5B57: $20 $E0

    ld b, b                                       ; $5B59: $40
    ld b, b                                       ; $5B5A: $40
    add b                                         ; $5B5B: $80
    jr nz, jr_00D_5B1E                            ; $5B5C: $20 $C0

    jr nz, jr_00D_5B20                            ; $5B5E: $20 $C0

    db $10                                        ; $5B60: $10
    ldh [rNR10], a                                ; $5B61: $E0 $10
    ldh [rNR10], a                                ; $5B63: $E0 $10
    ldh [rNR10], a                                ; $5B65: $E0 $10
    ldh [rNR41], a                                ; $5B67: $E0 $20
    ret nz                                        ; $5B69: $C0

    ret nz                                        ; $5B6A: $C0

    nop                                           ; $5B6B: $00
    nop                                           ; $5B6C: $00
    nop                                           ; $5B6D: $00
    nop                                           ; $5B6E: $00
    nop                                           ; $5B6F: $00
    nop                                           ; $5B70: $00
    nop                                           ; $5B71: $00
    nop                                           ; $5B72: $00
    nop                                           ; $5B73: $00
    nop                                           ; $5B74: $00
    nop                                           ; $5B75: $00
    nop                                           ; $5B76: $00
    nop                                           ; $5B77: $00
    nop                                           ; $5B78: $00
    nop                                           ; $5B79: $00
    nop                                           ; $5B7A: $00
    nop                                           ; $5B7B: $00
    nop                                           ; $5B7C: $00
    nop                                           ; $5B7D: $00
    nop                                           ; $5B7E: $00
    nop                                           ; $5B7F: $00
    inc e                                         ; $5B80: $1C

jr_00D_5B81:
    nop                                           ; $5B81: $00
    ld a, $1C                                     ; $5B82: $3E $1C
    ld a, [hl]                                    ; $5B84: $7E
    inc a                                         ; $5B85: $3C
    ld a, h                                       ; $5B86: $7C
    jr c, @+$7A                                   ; $5B87: $38 $78

jr_00D_5B89:
    nop                                           ; $5B89: $00
    ld [hl], b                                    ; $5B8A: $70
    jr nz, jr_00D_5BFD                            ; $5B8B: $20 $70

    jr nz, jr_00D_5BFF                            ; $5B8D: $20 $70

    jr nz, @+$3A                                  ; $5B8F: $20 $38

    db $10                                        ; $5B91: $10
    jr c, jr_00D_5BA4                             ; $5B92: $38 $10

    jr c, jr_00D_5BA6                             ; $5B94: $38 $10

    jr c, jr_00D_5BA8                             ; $5B96: $38 $10

    jr c, @+$12                                   ; $5B98: $38 $10

    jr c, @+$12                                   ; $5B9A: $38 $10

    ld [hl], b                                    ; $5B9C: $70
    jr nz, jr_00D_5C0F                            ; $5B9D: $20 $70

    jr nz, jr_00D_5B81                            ; $5B9F: $20 $E0

    ld b, b                                       ; $5BA1: $40
    ld b, b                                       ; $5BA2: $40
    add b                                         ; $5BA3: $80

jr_00D_5BA4:
    jr nz, @-$3E                                  ; $5BA4: $20 $C0

jr_00D_5BA6:
    jr nz, @-$3E                                  ; $5BA6: $20 $C0

jr_00D_5BA8:
    db $10                                        ; $5BA8: $10
    ldh [rNR10], a                                ; $5BA9: $E0 $10
    ldh [rNR10], a                                ; $5BAB: $E0 $10
    ldh [rNR10], a                                ; $5BAD: $E0 $10
    ldh [rNR41], a                                ; $5BAF: $E0 $20
    ret nz                                        ; $5BB1: $C0

    ret nz                                        ; $5BB2: $C0

    nop                                           ; $5BB3: $00
    nop                                           ; $5BB4: $00
    nop                                           ; $5BB5: $00
    nop                                           ; $5BB6: $00
    nop                                           ; $5BB7: $00
    nop                                           ; $5BB8: $00
    nop                                           ; $5BB9: $00
    nop                                           ; $5BBA: $00
    nop                                           ; $5BBB: $00
    nop                                           ; $5BBC: $00
    nop                                           ; $5BBD: $00
    nop                                           ; $5BBE: $00

jr_00D_5BBF:
    nop                                           ; $5BBF: $00
    ld hl, sp+$00                                 ; $5BC0: $F8 $00
    ld hl, sp+$70                                 ; $5BC2: $F8 $70
    db $FC                                        ; $5BC4: $FC
    ld a, b                                       ; $5BC5: $78
    ld a, [hl]                                    ; $5BC6: $7E

jr_00D_5BC7:
    inc [hl]                                      ; $5BC7: $34
    ld a, $04                                     ; $5BC8: $3E $04
    rlca                                          ; $5BCA: $07
    ld [bc], a                                    ; $5BCB: $02
    rlca                                          ; $5BCC: $07
    ld [bc], a                                    ; $5BCD: $02
    rlca                                          ; $5BCE: $07
    ld [bc], a                                    ; $5BCF: $02
    ld c, $04                                     ; $5BD0: $0E $04
    ld c, $04                                     ; $5BD2: $0E $04
    inc e                                         ; $5BD4: $1C
    ld [$1078], sp                                ; $5BD5: $08 $78 $10
    ldh a, [$FF60]                                ; $5BD8: $F0 $60
    ld h, b                                       ; $5BDA: $60
    add b                                         ; $5BDB: $80
    jr nz, @-$3E                                  ; $5BDC: $20 $C0

    jr nz, @-$3E                                  ; $5BDE: $20 $C0

    db $10                                        ; $5BE0: $10
    ldh [rNR10], a                                ; $5BE1: $E0 $10
    ldh [rNR10], a                                ; $5BE3: $E0 $10
    ldh [rNR10], a                                ; $5BE5: $E0 $10
    ldh [rNR41], a                                ; $5BE7: $E0 $20
    ret nz                                        ; $5BE9: $C0

    ret nz                                        ; $5BEA: $C0

    nop                                           ; $5BEB: $00
    nop                                           ; $5BEC: $00
    nop                                           ; $5BED: $00
    nop                                           ; $5BEE: $00
    nop                                           ; $5BEF: $00
    nop                                           ; $5BF0: $00
    nop                                           ; $5BF1: $00
    nop                                           ; $5BF2: $00
    nop                                           ; $5BF3: $00
    nop                                           ; $5BF4: $00
    nop                                           ; $5BF5: $00
    nop                                           ; $5BF6: $00
    nop                                           ; $5BF7: $00
    nop                                           ; $5BF8: $00
    nop                                           ; $5BF9: $00
    nop                                           ; $5BFA: $00
    nop                                           ; $5BFB: $00
    nop                                           ; $5BFC: $00

jr_00D_5BFD:
    nop                                           ; $5BFD: $00
    nop                                           ; $5BFE: $00

jr_00D_5BFF:
    nop                                           ; $5BFF: $00
    ld bc, $0700                                  ; $5C00: $01 $00 $07
    ld bc, $050A                                  ; $5C03: $01 $0A $05
    ccf                                           ; $5C06: $3F
    dec b                                         ; $5C07: $05
    ld l, a                                       ; $5C08: $6F
    ld a, [hl-]                                   ; $5C09: $3A
    ld a, a                                       ; $5C0A: $7F
    dec b                                         ; $5C0B: $05
    rst RST_08                                    ; $5C0C: $CF
    ld a, b                                       ; $5C0D: $78
    ld a, b                                       ; $5C0E: $78

jr_00D_5C0F:
    rlca                                          ; $5C0F: $07
    call c, $FF77                                 ; $5C10: $DC $77 $FF
    ld [bc], a                                    ; $5C13: $02
    ld a, h                                       ; $5C14: $7C
    dec hl                                        ; $5C15: $2B
    ld a, l                                       ; $5C16: $7D
    ld a, [hl+]                                   ; $5C17: $2A
    ccf                                           ; $5C18: $3F
    db $10                                        ; $5C19: $10
    ccf                                           ; $5C1A: $3F
    dec d                                         ; $5C1B: $15
    rra                                           ; $5C1C: $1F
    dec b                                         ; $5C1D: $05
    rrca                                          ; $5C1E: $0F

jr_00D_5C1F:
    ld [bc], a                                    ; $5C1F: $02
    nop                                           ; $5C20: $00
    nop                                           ; $5C21: $00
    ret nz                                        ; $5C22: $C0

    nop                                           ; $5C23: $00
    and b                                         ; $5C24: $A0
    ld b, b                                       ; $5C25: $40
    db $FC                                        ; $5C26: $FC
    jr nz, jr_00D_5C1F                            ; $5C27: $20 $F6

    sbc h                                         ; $5C29: $9C
    db $FC                                        ; $5C2A: $FC
    ld b, b                                       ; $5C2B: $40
    or $3C                                        ; $5C2C: $F6 $3C
    ccf                                           ; $5C2E: $3F
    ret nz                                        ; $5C2F: $C0

    ld [hl], e                                    ; $5C30: $73
    sbc $FF                                       ; $5C31: $DE $FF
    add b                                         ; $5C33: $80
    ld a, a                                       ; $5C34: $7F
    sbc h                                         ; $5C35: $9C
    ld a, h                                       ; $5C36: $7C
    and e                                         ; $5C37: $A3
    ld hl, sp+$17                                 ; $5C38: $F8 $17
    db $FC                                        ; $5C3A: $FC
    ld c, e                                       ; $5C3B: $4B
    ld hl, sp+$37                                 ; $5C3C: $F8 $37
    ldh a, [$FF8F]                                ; $5C3E: $F0 $8F
    cpl                                           ; $5C40: $2F
    db $10                                        ; $5C41: $10
    inc h                                         ; $5C42: $24
    dec de                                        ; $5C43: $1B
    inc h                                         ; $5C44: $24
    dec de                                        ; $5C45: $1B
    inc d                                         ; $5C46: $14
    dec bc                                        ; $5C47: $0B
    jr jr_00D_5C51                                ; $5C48: $18 $07

    jr @+$09                                      ; $5C4A: $18 $07

    add hl, de                                    ; $5C4C: $19
    ld b, $09                                     ; $5C4D: $06 $09
    ld b, $1E                                     ; $5C4F: $06 $1E

jr_00D_5C51:
    nop                                           ; $5C51: $00
    ld e, $00                                     ; $5C52: $1E $00
    ld a, $00                                     ; $5C54: $3E $00
    ld c, d                                       ; $5C56: $4A
    inc [hl]                                      ; $5C57: $34
    ld a, [hl]                                    ; $5C58: $7E
    nop                                           ; $5C59: $00
    nop                                           ; $5C5A: $00
    nop                                           ; $5C5B: $00
    nop                                           ; $5C5C: $00
    nop                                           ; $5C5D: $00
    nop                                           ; $5C5E: $00
    nop                                           ; $5C5F: $00
    nop                                           ; $5C60: $00
    rst RST_38                                    ; $5C61: $FF
    ld hl, $41DE                                  ; $5C62: $21 $DE $41
    cp [hl]                                       ; $5C65: $BE
    ld b, c                                       ; $5C66: $41
    cp [hl]                                       ; $5C67: $BE
    add c                                         ; $5C68: $81
    ld a, [hl]                                    ; $5C69: $7E
    db $FC                                        ; $5C6A: $FC
    inc bc                                        ; $5C6B: $03
    rrca                                          ; $5C6C: $0F
    nop                                           ; $5C6D: $00
    rlca                                          ; $5C6E: $07
    nop                                           ; $5C6F: $00
    rlca                                          ; $5C70: $07
    nop                                           ; $5C71: $00
    inc bc                                        ; $5C72: $03
    nop                                           ; $5C73: $00
    rrca                                          ; $5C74: $0F
    nop                                           ; $5C75: $00
    rrca                                          ; $5C76: $0F
    nop                                           ; $5C77: $00
    nop                                           ; $5C78: $00
    nop                                           ; $5C79: $00
    nop                                           ; $5C7A: $00
    nop                                           ; $5C7B: $00
    nop                                           ; $5C7C: $00
    nop                                           ; $5C7D: $00
    nop                                           ; $5C7E: $00
    nop                                           ; $5C7F: $00
    nop                                           ; $5C80: $00
    nop                                           ; $5C81: $00
    nop                                           ; $5C82: $00
    nop                                           ; $5C83: $00
    nop                                           ; $5C84: $00
    nop                                           ; $5C85: $00
    nop                                           ; $5C86: $00
    nop                                           ; $5C87: $00
    add b                                         ; $5C88: $80
    nop                                           ; $5C89: $00
    add b                                         ; $5C8A: $80
    nop                                           ; $5C8B: $00
    ld b, b                                       ; $5C8C: $40
    add b                                         ; $5C8D: $80
    dec sp                                        ; $5C8E: $3B
    ret nz                                        ; $5C8F: $C0

    rlca                                          ; $5C90: $07
    ei                                            ; $5C91: $FB
    inc bc                                        ; $5C92: $03
    db $FC                                        ; $5C93: $FC
    ld b, c                                       ; $5C94: $41
    cp [hl]                                       ; $5C95: $BE
    ld b, c                                       ; $5C96: $41
    cp [hl]                                       ; $5C97: $BE
    ld b, c                                       ; $5C98: $41
    cp [hl]                                       ; $5C99: $BE
    ld b, c                                       ; $5C9A: $41
    cp [hl]                                       ; $5C9B: $BE
    ld hl, $F8DE                                  ; $5C9C: $21 $DE $F8
    rlca                                          ; $5C9F: $07
    inc c                                         ; $5CA0: $0C
    nop                                           ; $5CA1: $00
    cp [hl]                                       ; $5CA2: $BE
    inc c                                         ; $5CA3: $0C
    ld a, a                                       ; $5CA4: $7F
    or d                                          ; $5CA5: $B2
    scf                                           ; $5CA6: $37
    jp nz, $E217                                  ; $5CA7: $C2 $17 $E2

    ld e, $E4                                     ; $5CAA: $1E $E4
    inc e                                         ; $5CAC: $1C
    add sp, $18                                   ; $5CAD: $E8 $18
    ldh [rNR23], a                                ; $5CAF: $E0 $18
    ldh [$FF88], a                                ; $5CB1: $E0 $88
    ld [hl], b                                    ; $5CB3: $70
    ld l, b                                       ; $5CB4: $68
    db $10                                        ; $5CB5: $10
    jr z, @+$12                                   ; $5CB6: $28 $10

    inc a                                         ; $5CB8: $3C
    nop                                           ; $5CB9: $00
    ld a, h                                       ; $5CBA: $7C
    nop                                           ; $5CBB: $00
    and h                                         ; $5CBC: $A4
    ld e, b                                       ; $5CBD: $58
    db $FC                                        ; $5CBE: $FC
    nop                                           ; $5CBF: $00
    ld bc, $1200                                  ; $5CC0: $01 $00 $12
    ld bc, $0017                                  ; $5CC3: $01 $17 $00
    dec de                                        ; $5CC6: $1B
    ld b, $17                                     ; $5CC7: $06 $17
    ld [$062F], sp                                ; $5CC9: $08 $2F $06
    ccf                                           ; $5CCC: $3F
    nop                                           ; $5CCD: $00
    daa                                           ; $5CCE: $27
    ld e, $3F                                     ; $5CCF: $1E $3F
    nop                                           ; $5CD1: $00
    rra                                           ; $5CD2: $1F
    dec bc                                        ; $5CD3: $0B
    rla                                           ; $5CD4: $17
    ld a, [bc]                                    ; $5CD5: $0A
    rrca                                          ; $5CD6: $0F
    inc b                                         ; $5CD7: $04
    rrca                                          ; $5CD8: $0F
    dec b                                         ; $5CD9: $05
    rlca                                          ; $5CDA: $07
    ld bc, $0003                                  ; $5CDB: $01 $03 $00
    inc bc                                        ; $5CDE: $03
    nop                                           ; $5CDF: $00
    jr nz, jr_00D_5CE2                            ; $5CE0: $20 $00

jr_00D_5CE2:
    jr nz, jr_00D_5CE4                            ; $5CE2: $20 $00

jr_00D_5CE4:
    and b                                         ; $5CE4: $A0
    nop                                           ; $5CE5: $00
    ldh [rP1], a                                  ; $5CE6: $E0 $00
    ldh [rP1], a                                  ; $5CE8: $E0 $00
    or b                                          ; $5CEA: $B0
    ld b, b                                       ; $5CEB: $40
    ld c, b                                       ; $5CEC: $48
    or b                                          ; $5CED: $B0
    rst RST_38                                    ; $5CEE: $FF
    ld [$07FC], sp                                ; $5CEF: $08 $FC $07
    rst RST_38                                    ; $5CF2: $FF
    nop                                           ; $5CF3: $00
    cp $0F                                        ; $5CF4: $FE $0F
    ld e, a                                       ; $5CF6: $5F
    and b                                         ; $5CF7: $A0
    rra                                           ; $5CF8: $1F
    rst RST_28                                    ; $5CF9: $EF
    rst RST_38                                    ; $5CFA: $FF
    nop                                           ; $5CFB: $00
    rst RST_38                                    ; $5CFC: $FF
    ld d, a                                       ; $5CFD: $57
    rst RST_38                                    ; $5CFE: $FF
    xor b                                         ; $5CFF: $A8
    add b                                         ; $5D00: $80
    nop                                           ; $5D01: $00
    add b                                         ; $5D02: $80
    nop                                           ; $5D03: $00
    add b                                         ; $5D04: $80
    nop                                           ; $5D05: $00
    ld b, b                                       ; $5D06: $40
    nop                                           ; $5D07: $00
    ret nz                                        ; $5D08: $C0

    nop                                           ; $5D09: $00
    ret nz                                        ; $5D0A: $C0

    nop                                           ; $5D0B: $00
    ld b, b                                       ; $5D0C: $40
    add b                                         ; $5D0D: $80
    ret nz                                        ; $5D0E: $C0

    nop                                           ; $5D0F: $00
    ret nz                                        ; $5D10: $C0

    nop                                           ; $5D11: $00
    ld c, b                                       ; $5D12: $48
    add b                                         ; $5D13: $80
    add hl, hl                                    ; $5D14: $29
    ret nz                                        ; $5D15: $C0

    add hl, hl                                    ; $5D16: $29
    ret nz                                        ; $5D17: $C0

    dec de                                        ; $5D18: $1B
    pop hl                                        ; $5D19: $E1
    dec de                                        ; $5D1A: $1B
    pop hl                                        ; $5D1B: $E1
    ld e, $E3                                     ; $5D1C: $1E $E3
    ld c, $F3                                     ; $5D1E: $0E $F3
    ld h, d                                       ; $5D20: $62
    nop                                           ; $5D21: $00
    ld [$EE40], a                                 ; $5D22: $EA $40 $EE
    ld b, b                                       ; $5D25: $40
    cp $CC                                        ; $5D26: $FE $CC
    rst RST_38                                    ; $5D28: $FF
    call z, $C46F                                 ; $5D29: $CC $6F $C4
    ld l, a                                       ; $5D2C: $6F
    ret nz                                        ; $5D2D: $C0

    ld l, a                                       ; $5D2E: $6F
    call nz, $C46F                                ; $5D2F: $C4 $6F $C4
    ld a, a                                       ; $5D32: $7F
    jp z, $967F                                   ; $5D33: $CA $7F $96

    rst RST_38                                    ; $5D36: $FF
    ld h, [hl]                                    ; $5D37: $66
    ld a, e                                       ; $5D38: $7B
    adc [hl]                                      ; $5D39: $8E
    dec sp                                        ; $5D3A: $3B
    adc $13                                       ; $5D3B: $CE $13
    xor $13                                       ; $5D3D: $EE $13
    xor $03                                       ; $5D3F: $EE $03
    nop                                           ; $5D41: $00
    inc bc                                        ; $5D42: $03
    nop                                           ; $5D43: $00
    inc bc                                        ; $5D44: $03
    ld bc, $0103                                  ; $5D45: $01 $03 $01
    inc bc                                        ; $5D48: $03
    ld bc, $0103                                  ; $5D49: $01 $03 $01
    jp $F301                                      ; $5D4C: $C3 $01 $F3


    pop bc                                        ; $5D4F: $C1
    ccf                                           ; $5D50: $3F
    pop af                                        ; $5D51: $F1
    rrca                                          ; $5D52: $0F
    db $FD                                        ; $5D53: $FD
    inc bc                                        ; $5D54: $03
    rst RST_38                                    ; $5D55: $FF
    nop                                           ; $5D56: $00
    rst RST_38                                    ; $5D57: $FF
    nop                                           ; $5D58: $00
    rst RST_38                                    ; $5D59: $FF
    nop                                           ; $5D5A: $00
    rst RST_38                                    ; $5D5B: $FF
    add b                                         ; $5D5C: $80
    rst RST_38                                    ; $5D5D: $FF
    add b                                         ; $5D5E: $80
    rst RST_38                                    ; $5D5F: $FF
    cp $A5                                        ; $5D60: $FE $A5
    rst RST_38                                    ; $5D62: $FF
    ld d, d                                       ; $5D63: $52
    cp $4D                                        ; $5D64: $FE $4D
    db $FC                                        ; $5D66: $FC
    and e                                         ; $5D67: $A3
    or b                                          ; $5D68: $B0
    ld c, a                                       ; $5D69: $4F
    db $10                                        ; $5D6A: $10
    rst RST_28                                    ; $5D6B: $EF
    db $10                                        ; $5D6C: $10
    rst RST_28                                    ; $5D6D: $EF
    sub b                                         ; $5D6E: $90
    ld l, a                                       ; $5D6F: $6F
    sub b                                         ; $5D70: $90
    ld l, a                                       ; $5D71: $6F
    sub b                                         ; $5D72: $90
    ld l, a                                       ; $5D73: $6F
    ld d, c                                       ; $5D74: $51
    xor [hl]                                      ; $5D75: $AE
    ld d, c                                       ; $5D76: $51
    xor [hl]                                      ; $5D77: $AE
    ld d, c                                       ; $5D78: $51
    xor [hl]                                      ; $5D79: $AE
    inc sp                                        ; $5D7A: $33
    call z, $CD32                                 ; $5D7B: $CC $32 $CD
    ld [hl-], a                                   ; $5D7E: $32
    call $F70C                                    ; $5D7F: $CD $0C $F7
    add h                                         ; $5D82: $84
    ld a, e                                       ; $5D83: $7B
    add e                                         ; $5D84: $83
    ld a, h                                       ; $5D85: $7C
    add b                                         ; $5D86: $80
    ld a, a                                       ; $5D87: $7F
    nop                                           ; $5D88: $00
    rst RST_38                                    ; $5D89: $FF
    inc b                                         ; $5D8A: $04
    ei                                            ; $5D8B: $FB
    inc b                                         ; $5D8C: $04
    ei                                            ; $5D8D: $FB
    db $E4                                        ; $5D8E: $E4
    dec de                                        ; $5D8F: $1B
    ld a, [hl-]                                   ; $5D90: $3A
    push bc                                       ; $5D91: $C5
    rra                                           ; $5D92: $1F
    ldh [$FF0E], a                                ; $5D93: $E0 $0E
    pop af                                        ; $5D95: $F1
    dec b                                         ; $5D96: $05
    ld a, [$FE01]                                 ; $5D97: $FA $01 $FE
    nop                                           ; $5D9A: $00
    rst RST_38                                    ; $5D9B: $FF
    nop                                           ; $5D9C: $00
    rst RST_38                                    ; $5D9D: $FF
    nop                                           ; $5D9E: $00
    nop                                           ; $5D9F: $00
    dec de                                        ; $5DA0: $1B
    and $07                                       ; $5DA1: $E6 $07
    ei                                            ; $5DA3: $FB
    and $1B                                       ; $5DA4: $E6 $1B
    ld a, [de]                                    ; $5DA6: $1A
    push hl                                       ; $5DA7: $E5
    inc bc                                        ; $5DA8: $03
    db $FC                                        ; $5DA9: $FC
    ld bc, $00FE                                  ; $5DAA: $01 $FE $00
    rst RST_38                                    ; $5DAD: $FF
    nop                                           ; $5DAE: $00
    rst RST_38                                    ; $5DAF: $FF
    nop                                           ; $5DB0: $00
    nop                                           ; $5DB1: $00
    nop                                           ; $5DB2: $00
    nop                                           ; $5DB3: $00
    nop                                           ; $5DB4: $00
    nop                                           ; $5DB5: $00
    nop                                           ; $5DB6: $00
    nop                                           ; $5DB7: $00
    nop                                           ; $5DB8: $00
    nop                                           ; $5DB9: $00
    nop                                           ; $5DBA: $00
    nop                                           ; $5DBB: $00
    nop                                           ; $5DBC: $00
    nop                                           ; $5DBD: $00
    nop                                           ; $5DBE: $00
    nop                                           ; $5DBF: $00
    add b                                         ; $5DC0: $80
    nop                                           ; $5DC1: $00
    ld h, b                                       ; $5DC2: $60
    nop                                           ; $5DC3: $00
    ld a, b                                       ; $5DC4: $78
    jr nz, jr_00D_5E05                            ; $5DC5: $20 $3E

    jr jr_00D_5E00                                ; $5DC7: $18 $37

    ld e, $19                                     ; $5DC9: $1E $19
    rrca                                          ; $5DCB: $0F
    jr jr_00D_5DDD                                ; $5DCC: $18 $0F

    inc c                                         ; $5DCE: $0C
    rlca                                          ; $5DCF: $07
    inc c                                         ; $5DD0: $0C
    rlca                                          ; $5DD1: $07
    ld b, $03                                     ; $5DD2: $06 $03
    ld b, $03                                     ; $5DD4: $06 $03
    inc bc                                        ; $5DD6: $03
    ld bc, $0103                                  ; $5DD7: $01 $03 $01
    ld bc, $0100                                  ; $5DDA: $01 $00 $01

jr_00D_5DDD:
    nop                                           ; $5DDD: $00

jr_00D_5DDE:
    nop                                           ; $5DDE: $00
    nop                                           ; $5DDF: $00

jr_00D_5DE0:
    ld bc, $0300                                  ; $5DE0: $01 $00 $03
    ld bc, $0306                                  ; $5DE3: $01 $06 $03
    inc c                                         ; $5DE6: $0C
    rlca                                          ; $5DE7: $07
    add hl, de                                    ; $5DE8: $19
    rrca                                          ; $5DE9: $0F
    ld sp, $631F                                  ; $5DEA: $31 $1F $63
    ld a, $C3                                     ; $5DED: $3E $C3
    ld a, [hl]                                    ; $5DEF: $7E
    add [hl]                                      ; $5DF0: $86
    db $FC                                        ; $5DF1: $FC
    ld b, $FC                                     ; $5DF2: $06 $FC
    inc c                                         ; $5DF4: $0C
    ld hl, sp+$0C                                 ; $5DF5: $F8 $0C
    ld hl, sp+$18                                 ; $5DF7: $F8 $18
    ldh a, [$FF98]                                ; $5DF9: $F0 $98
    ld [hl], b                                    ; $5DFB: $70
    jr nc, jr_00D_5DDE                            ; $5DFC: $30 $E0

    jr nc, jr_00D_5DE0                            ; $5DFE: $30 $E0

jr_00D_5E00:
    nop                                           ; $5E00: $00
    nop                                           ; $5E01: $00
    nop                                           ; $5E02: $00

jr_00D_5E03:
    nop                                           ; $5E03: $00
    nop                                           ; $5E04: $00

jr_00D_5E05:
    nop                                           ; $5E05: $00
    ld [bc], a                                    ; $5E06: $02
    nop                                           ; $5E07: $00
    inc b                                         ; $5E08: $04
    nop                                           ; $5E09: $00
    inc c                                         ; $5E0A: $0C
    nop                                           ; $5E0B: $00
    jr jr_00D_5E0E                                ; $5E0C: $18 $00

jr_00D_5E0E:
    jr c, jr_00D_5E20                             ; $5E0E: $38 $10

    ld [hl], b                                    ; $5E10: $70
    jr nz, jr_00D_5E03                            ; $5E11: $20 $F0

    ld h, b                                       ; $5E13: $60
    ldh [$FFC0], a                                ; $5E14: $E0 $C0
    ld h, b                                       ; $5E16: $60
    ret nz                                        ; $5E17: $C0

    ret nz                                        ; $5E18: $C0

    add b                                         ; $5E19: $80
    ret nz                                        ; $5E1A: $C0

    add b                                         ; $5E1B: $80
    add b                                         ; $5E1C: $80
    nop                                           ; $5E1D: $00
    add b                                         ; $5E1E: $80
    nop                                           ; $5E1F: $00

jr_00D_5E20:
    ld e, $E1                                     ; $5E20: $1E $E1
    ld h, $D9                                     ; $5E22: $26 $D9
    ld [bc], a                                    ; $5E24: $02
    db $FD                                        ; $5E25: $FD
    nop                                           ; $5E26: $00
    rst RST_38                                    ; $5E27: $FF
    nop                                           ; $5E28: $00
    rst RST_38                                    ; $5E29: $FF
    nop                                           ; $5E2A: $00
    nop                                           ; $5E2B: $00
    nop                                           ; $5E2C: $00
    nop                                           ; $5E2D: $00
    nop                                           ; $5E2E: $00
    nop                                           ; $5E2F: $00
    nop                                           ; $5E30: $00
    nop                                           ; $5E31: $00
    nop                                           ; $5E32: $00
    nop                                           ; $5E33: $00
    nop                                           ; $5E34: $00
    nop                                           ; $5E35: $00
    nop                                           ; $5E36: $00
    nop                                           ; $5E37: $00
    nop                                           ; $5E38: $00
    nop                                           ; $5E39: $00
    nop                                           ; $5E3A: $00
    nop                                           ; $5E3B: $00
    nop                                           ; $5E3C: $00
    nop                                           ; $5E3D: $00
    nop                                           ; $5E3E: $00
    nop                                           ; $5E3F: $00
    nop                                           ; $5E40: $00
    nop                                           ; $5E41: $00
    nop                                           ; $5E42: $00
    nop                                           ; $5E43: $00
    dec b                                         ; $5E44: $05
    nop                                           ; $5E45: $00
    rrca                                          ; $5E46: $0F
    dec b                                         ; $5E47: $05
    rrca                                          ; $5E48: $0F
    rlca                                          ; $5E49: $07
    ld e, $0F                                     ; $5E4A: $1E $0F
    ld e, $0F                                     ; $5E4C: $1E $0F
    inc [hl]                                      ; $5E4E: $34
    rra                                           ; $5E4F: $1F
    ld sp, $611F                                  ; $5E50: $31 $1F $61
    ccf                                           ; $5E53: $3F
    ld h, b                                       ; $5E54: $60
    ccf                                           ; $5E55: $3F
    ld b, b                                       ; $5E56: $40
    ccf                                           ; $5E57: $3F
    ret nz                                        ; $5E58: $C0

    ld a, a                                       ; $5E59: $7F
    add b                                         ; $5E5A: $80
    ld a, a                                       ; $5E5B: $7F
    add b                                         ; $5E5C: $80
    ld a, a                                       ; $5E5D: $7F
    add b                                         ; $5E5E: $80
    ld a, a                                       ; $5E5F: $7F
    add b                                         ; $5E60: $80
    ld a, a                                       ; $5E61: $7F
    add b                                         ; $5E62: $80
    ld a, a                                       ; $5E63: $7F
    add b                                         ; $5E64: $80
    ld a, a                                       ; $5E65: $7F
    ret nz                                        ; $5E66: $C0

    ld a, a                                       ; $5E67: $7F
    ld b, b                                       ; $5E68: $40
    ccf                                           ; $5E69: $3F
    ld h, b                                       ; $5E6A: $60
    ccf                                           ; $5E6B: $3F
    ld h, b                                       ; $5E6C: $60
    ccf                                           ; $5E6D: $3F
    ld sp, $341F                                  ; $5E6E: $31 $1F $34
    rra                                           ; $5E71: $1F
    ld e, $0F                                     ; $5E72: $1E $0F
    rra                                           ; $5E74: $1F
    rrca                                          ; $5E75: $0F
    rrca                                          ; $5E76: $0F
    dec b                                         ; $5E77: $05
    dec b                                         ; $5E78: $05
    nop                                           ; $5E79: $00
    nop                                           ; $5E7A: $00
    nop                                           ; $5E7B: $00
    nop                                           ; $5E7C: $00
    nop                                           ; $5E7D: $00
    nop                                           ; $5E7E: $00
    nop                                           ; $5E7F: $00
    nop                                           ; $5E80: $00
    rst RST_38                                    ; $5E81: $FF
    inc bc                                        ; $5E82: $03
    rst RST_38                                    ; $5E83: $FF
    rrca                                          ; $5E84: $0F

jr_00D_5E85:
    rst RST_38                                    ; $5E85: $FF
    ccf                                           ; $5E86: $3F
    rst RST_38                                    ; $5E87: $FF
    rra                                           ; $5E88: $1F
    rst RST_38                                    ; $5E89: $FF
    rrca                                          ; $5E8A: $0F
    cp $47                                        ; $5E8B: $FE $47
    rst RST_38                                    ; $5E8D: $FF
    ld [hl], e                                    ; $5E8E: $73
    rst RST_38                                    ; $5E8F: $FF
    rra                                           ; $5E90: $1F
    rst RST_38                                    ; $5E91: $FF
    cp a                                          ; $5E92: $BF
    rst RST_38                                    ; $5E93: $FF
    rst RST_38                                    ; $5E94: $FF
    ei                                            ; $5E95: $FB
    ld a, a                                       ; $5E96: $7F
    db $FC                                        ; $5E97: $FC
    rst RST_38                                    ; $5E98: $FF
    adc $EF                                       ; $5E99: $CE $EF
    ret nz                                        ; $5E9B: $C0

    ldh [rLCDC], a                                ; $5E9C: $E0 $40
    ld [hl], b                                    ; $5E9E: $70
    jr nz, jr_00D_5ED1                            ; $5E9F: $20 $30

    nop                                           ; $5EA1: $00
    ld [hl], b                                    ; $5EA2: $70
    jr nz, jr_00D_5E85                            ; $5EA3: $20 $E0

    ld b, b                                       ; $5EA5: $40
    pop af                                        ; $5EA6: $F1
    ldh [$FFE7], a                                ; $5EA7: $E0 $E7
    pop bc                                        ; $5EA9: $C1
    ld a, a                                       ; $5EAA: $7F
    rst RST_00                                    ; $5EAB: $C7
    ld a, a                                       ; $5EAC: $7F
    sbc $FF                                       ; $5EAD: $DE $FF
    cp h                                          ; $5EAF: $BC
    adc $FD                                       ; $5EB0: $CE $FD
    adc l                                         ; $5EB2: $8D
    ld a, [$F91F]                                 ; $5EB3: $FA $1F $F9
    rra                                           ; $5EB6: $1F
    rst RST_38                                    ; $5EB7: $FF
    ccf                                           ; $5EB8: $3F
    rst RST_38                                    ; $5EB9: $FF
    inc sp                                        ; $5EBA: $33
    rst RST_38                                    ; $5EBB: $FF
    ld c, a                                       ; $5EBC: $4F
    rst RST_38                                    ; $5EBD: $FF
    rra                                           ; $5EBE: $1F
    rst RST_38                                    ; $5EBF: $FF
    nop                                           ; $5EC0: $00
    nop                                           ; $5EC1: $00
    ld h, b                                       ; $5EC2: $60
    nop                                           ; $5EC3: $00
    ldh [rLCDC], a                                ; $5EC4: $E0 $40
    ret nz                                        ; $5EC6: $C0

    add b                                         ; $5EC7: $80
    add b                                         ; $5EC8: $80
    nop                                           ; $5EC9: $00
    nop                                           ; $5ECA: $00
    nop                                           ; $5ECB: $00
    ldh [rP1], a                                  ; $5ECC: $E0 $00
    ld a, b                                       ; $5ECE: $78
    add b                                         ; $5ECF: $80
    rst RST_20                                    ; $5ED0: $E7

jr_00D_5ED1:
    ld e, b                                       ; $5ED1: $58
    ld hl, sp-$79                                 ; $5ED2: $F8 $87
    call nz, $F43B                                ; $5ED4: $C4 $3B $F4
    dec bc                                        ; $5ED7: $0B
    rst RST_38                                    ; $5ED8: $FF
    ldh a, [rIE]                                  ; $5ED9: $F0 $FF
    cp $FE                                        ; $5EDB: $FE $FE
    ld sp, hl                                     ; $5EDD: $F9
    cp $E1                                        ; $5EDE: $FE $E1
    cp $C1                                        ; $5EE0: $FE $C1
    rst RST_38                                    ; $5EE2: $FF
    ldh a, [$FFF9]                                ; $5EE3: $F0 $F9
    add $FD                                       ; $5EE5: $C6 $FD
    add d                                         ; $5EE7: $82
    db $FD                                        ; $5EE8: $FD
    ld b, d                                       ; $5EE9: $42
    rst RST_38                                    ; $5EEA: $FF
    ld [$90FF], sp                                ; $5EEB: $08 $FF $90
    cp d                                          ; $5EEE: $BA
    ld b, l                                       ; $5EEF: $45
    ei                                            ; $5EF0: $FB
    and h                                         ; $5EF1: $A4
    db $FD                                        ; $5EF2: $FD
    ld [hl], d                                    ; $5EF3: $72
    di                                            ; $5EF4: $F3
    nop                                           ; $5EF5: $00
    ld bc, $0000                                  ; $5EF6: $01 $00 $00
    nop                                           ; $5EF9: $00
    nop                                           ; $5EFA: $00
    nop                                           ; $5EFB: $00
    nop                                           ; $5EFC: $00
    nop                                           ; $5EFD: $00
    nop                                           ; $5EFE: $00
    nop                                           ; $5EFF: $00
    add b                                         ; $5F00: $80
    nop                                           ; $5F01: $00
    ld [hl], b                                    ; $5F02: $70
    add b                                         ; $5F03: $80
    inc c                                         ; $5F04: $0C
    ldh a, [rTMA]                                 ; $5F05: $F0 $06
    ld hl, sp+$07                                 ; $5F07: $F8 $07
    ld a, [$FA07]                                 ; $5F09: $FA $07 $FA
    rlca                                          ; $5F0C: $07
    ld sp, hl                                     ; $5F0D: $F9
    rlca                                          ; $5F0E: $07
    ld sp, hl                                     ; $5F0F: $F9
    rrca                                          ; $5F10: $0F
    pop af                                        ; $5F11: $F1
    inc bc                                        ; $5F12: $03
    db $FD                                        ; $5F13: $FD
    db $E3                                        ; $5F14: $E3
    dec e                                         ; $5F15: $1D
    rla                                           ; $5F16: $17
    ld a, [bc]                                    ; $5F17: $0A
    and a                                         ; $5F18: $A7
    ld a, [de]                                    ; $5F19: $1A
    cp $04                                        ; $5F1A: $FE $04
    db $FC                                        ; $5F1C: $FC
    nop                                           ; $5F1D: $00
    sbc b                                         ; $5F1E: $98
    ld h, b                                       ; $5F1F: $60
    ldh a, [rP1]                                  ; $5F20: $F0 $00
    ret nz                                        ; $5F22: $C0

    nop                                           ; $5F23: $00
    and b                                         ; $5F24: $A0
    ld b, b                                       ; $5F25: $40
    and b                                         ; $5F26: $A0
    ld b, b                                       ; $5F27: $40
    ld h, b                                       ; $5F28: $60
    nop                                           ; $5F29: $00
    nop                                           ; $5F2A: $00
    nop                                           ; $5F2B: $00
    nop                                           ; $5F2C: $00
    nop                                           ; $5F2D: $00
    nop                                           ; $5F2E: $00
    nop                                           ; $5F2F: $00
    nop                                           ; $5F30: $00
    nop                                           ; $5F31: $00
    nop                                           ; $5F32: $00
    nop                                           ; $5F33: $00
    nop                                           ; $5F34: $00
    nop                                           ; $5F35: $00
    nop                                           ; $5F36: $00
    nop                                           ; $5F37: $00
    nop                                           ; $5F38: $00
    nop                                           ; $5F39: $00
    nop                                           ; $5F3A: $00
    nop                                           ; $5F3B: $00
    nop                                           ; $5F3C: $00
    nop                                           ; $5F3D: $00
    nop                                           ; $5F3E: $00
    nop                                           ; $5F3F: $00
    nop                                           ; $5F40: $00
    nop                                           ; $5F41: $00
    nop                                           ; $5F42: $00
    nop                                           ; $5F43: $00
    nop                                           ; $5F44: $00
    nop                                           ; $5F45: $00
    nop                                           ; $5F46: $00
    nop                                           ; $5F47: $00
    nop                                           ; $5F48: $00
    nop                                           ; $5F49: $00
    nop                                           ; $5F4A: $00
    nop                                           ; $5F4B: $00
    nop                                           ; $5F4C: $00
    nop                                           ; $5F4D: $00
    nop                                           ; $5F4E: $00
    nop                                           ; $5F4F: $00
    nop                                           ; $5F50: $00
    nop                                           ; $5F51: $00
    nop                                           ; $5F52: $00
    nop                                           ; $5F53: $00
    nop                                           ; $5F54: $00
    nop                                           ; $5F55: $00
    add b                                         ; $5F56: $80
    nop                                           ; $5F57: $00
    add b                                         ; $5F58: $80
    nop                                           ; $5F59: $00
    add b                                         ; $5F5A: $80
    nop                                           ; $5F5B: $00
    add b                                         ; $5F5C: $80
    nop                                           ; $5F5D: $00
    add b                                         ; $5F5E: $80
    nop                                           ; $5F5F: $00
    jr nc, jr_00D_5F62                            ; $5F60: $30 $00

jr_00D_5F62:
    nop                                           ; $5F62: $00
    nop                                           ; $5F63: $00
    nop                                           ; $5F64: $00
    nop                                           ; $5F65: $00
    nop                                           ; $5F66: $00
    nop                                           ; $5F67: $00
    nop                                           ; $5F68: $00
    nop                                           ; $5F69: $00
    nop                                           ; $5F6A: $00
    nop                                           ; $5F6B: $00
    nop                                           ; $5F6C: $00
    nop                                           ; $5F6D: $00
    nop                                           ; $5F6E: $00
    nop                                           ; $5F6F: $00
    nop                                           ; $5F70: $00
    nop                                           ; $5F71: $00
    nop                                           ; $5F72: $00
    nop                                           ; $5F73: $00
    nop                                           ; $5F74: $00
    nop                                           ; $5F75: $00
    nop                                           ; $5F76: $00
    nop                                           ; $5F77: $00
    nop                                           ; $5F78: $00
    nop                                           ; $5F79: $00
    nop                                           ; $5F7A: $00
    nop                                           ; $5F7B: $00
    nop                                           ; $5F7C: $00
    nop                                           ; $5F7D: $00
    nop                                           ; $5F7E: $00
    nop                                           ; $5F7F: $00
    inc bc                                        ; $5F80: $03
    nop                                           ; $5F81: $00
    rrca                                          ; $5F82: $0F
    inc bc                                        ; $5F83: $03
    inc e                                         ; $5F84: $1C
    rrca                                          ; $5F85: $0F
    jr nc, jr_00D_5FA7                            ; $5F86: $30 $1F

    jr nz, jr_00D_5FA9                            ; $5F88: $20 $1F

    ld h, b                                       ; $5F8A: $60
    ccf                                           ; $5F8B: $3F
    ld b, b                                       ; $5F8C: $40
    ccf                                           ; $5F8D: $3F
    ld b, b                                       ; $5F8E: $40
    ccf                                           ; $5F8F: $3F
    ld b, b                                       ; $5F90: $40
    ccf                                           ; $5F91: $3F
    ld b, b                                       ; $5F92: $40
    ccf                                           ; $5F93: $3F
    ld h, b                                       ; $5F94: $60
    ccf                                           ; $5F95: $3F
    jr nz, @+$21                                  ; $5F96: $20 $1F

    jr nc, jr_00D_5FB9                            ; $5F98: $30 $1F

    inc e                                         ; $5F9A: $1C
    rrca                                          ; $5F9B: $0F
    rrca                                          ; $5F9C: $0F
    inc bc                                        ; $5F9D: $03
    inc bc                                        ; $5F9E: $03
    nop                                           ; $5F9F: $00
    nop                                           ; $5FA0: $00
    nop                                           ; $5FA1: $00
    nop                                           ; $5FA2: $00
    nop                                           ; $5FA3: $00
    nop                                           ; $5FA4: $00
    nop                                           ; $5FA5: $00
    nop                                           ; $5FA6: $00

jr_00D_5FA7:
    nop                                           ; $5FA7: $00
    nop                                           ; $5FA8: $00

jr_00D_5FA9:
    nop                                           ; $5FA9: $00
    inc bc                                        ; $5FAA: $03
    nop                                           ; $5FAB: $00
    rra                                           ; $5FAC: $1F
    inc bc                                        ; $5FAD: $03
    rst RST_38                                    ; $5FAE: $FF
    jr jr_00D_5FA9                                ; $5FAF: $18 $F8

    rst RST_20                                    ; $5FB1: $E7
    ld [hl], a                                    ; $5FB2: $77
    ret z                                         ; $5FB3: $C8

    rst RST_38                                    ; $5FB4: $FF
    add a                                         ; $5FB5: $87
    ld hl, sp-$01                                 ; $5FB6: $F8 $FF
    nop                                           ; $5FB8: $00

jr_00D_5FB9:
    rst RST_38                                    ; $5FB9: $FF
    nop                                           ; $5FBA: $00
    rst RST_38                                    ; $5FBB: $FF
    nop                                           ; $5FBC: $00
    rst RST_38                                    ; $5FBD: $FF
    nop                                           ; $5FBE: $00
    rst RST_38                                    ; $5FBF: $FF
    nop                                           ; $5FC0: $00
    rst RST_38                                    ; $5FC1: $FF
    nop                                           ; $5FC2: $00
    rst RST_38                                    ; $5FC3: $FF
    nop                                           ; $5FC4: $00
    rst RST_38                                    ; $5FC5: $FF
    nop                                           ; $5FC6: $00
    rst RST_38                                    ; $5FC7: $FF
    ld hl, sp-$01                                 ; $5FC8: $F8 $FF
    rst RST_38                                    ; $5FCA: $FF
    add a                                         ; $5FCB: $87
    ld h, a                                       ; $5FCC: $67
    ret c                                         ; $5FCD: $D8

    ld sp, hl                                     ; $5FCE: $F9
    and $FC                                       ; $5FCF: $E6 $FC
    dec de                                        ; $5FD1: $1B
    inc a                                         ; $5FD2: $3C
    inc bc                                        ; $5FD3: $03
    db $10                                        ; $5FD4: $10
    rrca                                          ; $5FD5: $0F
    rrca                                          ; $5FD6: $0F
    nop                                           ; $5FD7: $00
    nop                                           ; $5FD8: $00
    nop                                           ; $5FD9: $00
    nop                                           ; $5FDA: $00
    nop                                           ; $5FDB: $00
    nop                                           ; $5FDC: $00
    nop                                           ; $5FDD: $00
    nop                                           ; $5FDE: $00
    nop                                           ; $5FDF: $00
    nop                                           ; $5FE0: $00
    nop                                           ; $5FE1: $00
    nop                                           ; $5FE2: $00
    nop                                           ; $5FE3: $00
    nop                                           ; $5FE4: $00
    nop                                           ; $5FE5: $00
    nop                                           ; $5FE6: $00
    nop                                           ; $5FE7: $00
    ld hl, sp+$00                                 ; $5FE8: $F8 $00
    cp $F8                                        ; $5FEA: $FE $F8
    rst RST_38                                    ; $5FEC: $FF
    ld b, $E7                                     ; $5FED: $06 $E7
    jr jr_00D_6030                                ; $5FEF: $18 $3F

    jp Jump_000_3EFF                              ; $5FF1: $C3 $FF $3E


    pop bc                                        ; $5FF4: $C1
    rst RST_38                                    ; $5FF5: $FF
    rrca                                          ; $5FF6: $0F
    rst RST_38                                    ; $5FF7: $FF
    nop                                           ; $5FF8: $00
    rst RST_38                                    ; $5FF9: $FF
    nop                                           ; $5FFA: $00
    rst RST_38                                    ; $5FFB: $FF
    nop                                           ; $5FFC: $00
    rst RST_38                                    ; $5FFD: $FF
    nop                                           ; $5FFE: $00
    rst RST_38                                    ; $5FFF: $FF
    nop                                           ; $6000: $00
    rst RST_38                                    ; $6001: $FF
    nop                                           ; $6002: $00
    rst RST_38                                    ; $6003: $FF
    nop                                           ; $6004: $00
    rst RST_38                                    ; $6005: $FF
    nop                                           ; $6006: $00
    rst RST_38                                    ; $6007: $FF
    nop                                           ; $6008: $00
    rst RST_38                                    ; $6009: $FF
    jp $FFFF                                      ; $600A: $C3 $FF $FF


    inc a                                         ; $600D: $3C
    rst RST_38                                    ; $600E: $FF
    rst RST_00                                    ; $600F: $C7
    rst RST_38                                    ; $6010: $FF
    nop                                           ; $6011: $00
    rst RST_38                                    ; $6012: $FF
    ld a, l                                       ; $6013: $7D
    ld a, a                                       ; $6014: $7F
    add e                                         ; $6015: $83
    rst RST_38                                    ; $6016: $FF
    inc e                                         ; $6017: $1C
    inc a                                         ; $6018: $3C
    nop                                           ; $6019: $00
    nop                                           ; $601A: $00
    nop                                           ; $601B: $00
    nop                                           ; $601C: $00
    nop                                           ; $601D: $00
    nop                                           ; $601E: $00
    nop                                           ; $601F: $00
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    nop                                           ; $6028: $00
    nop                                           ; $6029: $00
    nop                                           ; $602A: $00
    nop                                           ; $602B: $00
    nop                                           ; $602C: $00
    nop                                           ; $602D: $00
    ret nz                                        ; $602E: $C0

    nop                                           ; $602F: $00

jr_00D_6030:
    ret nz                                        ; $6030: $C0

    add b                                         ; $6031: $80
    ldh [rP1], a                                  ; $6032: $E0 $00
    cp $80                                        ; $6034: $FE $80
    rst RST_38                                    ; $6036: $FF
    cp $03                                        ; $6037: $FE $03
    rst RST_38                                    ; $6039: $FF
    rlca                                          ; $603A: $07
    rst RST_38                                    ; $603B: $FF
    ccf                                           ; $603C: $3F
    rst RST_38                                    ; $603D: $FF
    nop                                           ; $603E: $00
    rst RST_38                                    ; $603F: $FF
    nop                                           ; $6040: $00
    rst RST_38                                    ; $6041: $FF
    nop                                           ; $6042: $00
    rst RST_38                                    ; $6043: $FF
    inc bc                                        ; $6044: $03
    rst RST_38                                    ; $6045: $FF
    rra                                           ; $6046: $1F
    rst RST_38                                    ; $6047: $FF
    inc bc                                        ; $6048: $03
    rst RST_38                                    ; $6049: $FF
    rst RST_38                                    ; $604A: $FF
    rst RST_38                                    ; $604B: $FF
    rst RST_38                                    ; $604C: $FF
    nop                                           ; $604D: $00
    or b                                          ; $604E: $B0
    ld h, b                                       ; $604F: $60
    ldh [rP1], a                                  ; $6050: $E0 $00
    ret nz                                        ; $6052: $C0

    nop                                           ; $6053: $00
    add b                                         ; $6054: $80
    nop                                           ; $6055: $00
    nop                                           ; $6056: $00
    nop                                           ; $6057: $00
    nop                                           ; $6058: $00
    nop                                           ; $6059: $00
    nop                                           ; $605A: $00
    nop                                           ; $605B: $00
    nop                                           ; $605C: $00
    nop                                           ; $605D: $00
    nop                                           ; $605E: $00
    nop                                           ; $605F: $00
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    nop                                           ; $6063: $00
    nop                                           ; $6064: $00
    nop                                           ; $6065: $00
    ldh a, [rP1]                                  ; $6066: $F0 $00
    rst RST_38                                    ; $6068: $FF
    ldh a, [rIE]                                  ; $6069: $F0 $FF
    rst RST_38                                    ; $606B: $FF
    rst RST_38                                    ; $606C: $FF
    rst RST_38                                    ; $606D: $FF
    rst RST_38                                    ; $606E: $FF
    add b                                         ; $606F: $80
    rrca                                          ; $6070: $0F
    rst RST_38                                    ; $6071: $FF
    ld a, a                                       ; $6072: $7F
    cp $FF                                        ; $6073: $FE $FF
    ret nz                                        ; $6075: $C0

    rst RST_38                                    ; $6076: $FF
    nop                                           ; $6077: $00
    rst RST_38                                    ; $6078: $FF
    rst RST_38                                    ; $6079: $FF
    rst RST_38                                    ; $607A: $FF
    ret nz                                        ; $607B: $C0

    ret nz                                        ; $607C: $C0

    nop                                           ; $607D: $00
    nop                                           ; $607E: $00
    nop                                           ; $607F: $00
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    rst RST_38                                    ; $6088: $FF
    nop                                           ; $6089: $00
    rst RST_38                                    ; $608A: $FF
    rst RST_38                                    ; $608B: $FF
    rst RST_38                                    ; $608C: $FF
    add b                                         ; $608D: $80
    db $FC                                        ; $608E: $FC
    nop                                           ; $608F: $00
    cp $FC                                        ; $6090: $FE $FC
    cp $00                                        ; $6092: $FE $00
    ldh [rP1], a                                  ; $6094: $E0 $00
    nop                                           ; $6096: $00
    nop                                           ; $6097: $00
    add b                                         ; $6098: $80
    nop                                           ; $6099: $00
    add b                                         ; $609A: $80
    nop                                           ; $609B: $00
    nop                                           ; $609C: $00
    nop                                           ; $609D: $00
    nop                                           ; $609E: $00
    nop                                           ; $609F: $00
    nop                                           ; $60A0: $00
    nop                                           ; $60A1: $00
    nop                                           ; $60A2: $00
    nop                                           ; $60A3: $00
    nop                                           ; $60A4: $00
    nop                                           ; $60A5: $00
    nop                                           ; $60A6: $00
    nop                                           ; $60A7: $00
    nop                                           ; $60A8: $00
    nop                                           ; $60A9: $00
    nop                                           ; $60AA: $00
    nop                                           ; $60AB: $00
    nop                                           ; $60AC: $00
    nop                                           ; $60AD: $00
    nop                                           ; $60AE: $00
    nop                                           ; $60AF: $00
    nop                                           ; $60B0: $00
    nop                                           ; $60B1: $00
    nop                                           ; $60B2: $00
    nop                                           ; $60B3: $00
    nop                                           ; $60B4: $00
    nop                                           ; $60B5: $00
    nop                                           ; $60B6: $00
    nop                                           ; $60B7: $00
    nop                                           ; $60B8: $00
    nop                                           ; $60B9: $00
    ldh [rP1], a                                  ; $60BA: $E0 $00

Jump_00D_60BC:
    ldh a, [$FFE0]                                ; $60BC: $F0 $E0
    ldh a, [rP1]                                  ; $60BE: $F0 $00
    nop                                           ; $60C0: $00
    nop                                           ; $60C1: $00
    nop                                           ; $60C2: $00
    nop                                           ; $60C3: $00
    nop                                           ; $60C4: $00
    nop                                           ; $60C5: $00
    nop                                           ; $60C6: $00
    nop                                           ; $60C7: $00
    dec b                                         ; $60C8: $05
    nop                                           ; $60C9: $00
    rrca                                          ; $60CA: $0F
    dec b                                         ; $60CB: $05
    rrca                                          ; $60CC: $0F
    rlca                                          ; $60CD: $07
    ld e, $0F                                     ; $60CE: $1E $0F
    ld e, $0F                                     ; $60D0: $1E $0F
    inc [hl]                                      ; $60D2: $34
    rra                                           ; $60D3: $1F
    ld sp, $611F                                  ; $60D4: $31 $1F $61
    ccf                                           ; $60D7: $3F
    ld h, b                                       ; $60D8: $60
    ccf                                           ; $60D9: $3F
    ld b, b                                       ; $60DA: $40
    ccf                                           ; $60DB: $3F
    ret nz                                        ; $60DC: $C0

    ld a, a                                       ; $60DD: $7F
    add b                                         ; $60DE: $80
    ld a, a                                       ; $60DF: $7F
    add b                                         ; $60E0: $80
    ld a, a                                       ; $60E1: $7F
    add b                                         ; $60E2: $80
    ld a, a                                       ; $60E3: $7F
    add b                                         ; $60E4: $80
    ld a, a                                       ; $60E5: $7F
    add b                                         ; $60E6: $80

jr_00D_60E7:
    ld a, a                                       ; $60E7: $7F
    add b                                         ; $60E8: $80
    ld a, a                                       ; $60E9: $7F
    ret nz                                        ; $60EA: $C0

    ld a, a                                       ; $60EB: $7F
    ld b, b                                       ; $60EC: $40
    ccf                                           ; $60ED: $3F
    ld h, b                                       ; $60EE: $60
    ccf                                           ; $60EF: $3F
    ld h, b                                       ; $60F0: $60
    ccf                                           ; $60F1: $3F
    ld sp, $341F                                  ; $60F2: $31 $1F $34
    rra                                           ; $60F5: $1F
    ld e, $0F                                     ; $60F6: $1E $0F
    rra                                           ; $60F8: $1F
    rrca                                          ; $60F9: $0F
    rrca                                          ; $60FA: $0F
    dec b                                         ; $60FB: $05
    dec b                                         ; $60FC: $05
    nop                                           ; $60FD: $00
    nop                                           ; $60FE: $00
    nop                                           ; $60FF: $00
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    jr nc, jr_00D_6104                            ; $6102: $30 $00

jr_00D_6104:
    ld [hl], b                                    ; $6104: $70
    jr nz, jr_00D_60E7                            ; $6105: $20 $E0

    ld b, b                                       ; $6107: $40
    pop af                                        ; $6108: $F1
    ldh [$FFE7], a                                ; $6109: $E0 $E7
    pop bc                                        ; $610B: $C1
    ld a, a                                       ; $610C: $7F
    rst RST_00                                    ; $610D: $C7
    ld a, a                                       ; $610E: $7F
    sbc $FE                                       ; $610F: $DE $FE
    cp h                                          ; $6111: $BC
    adc $FC                                       ; $6112: $CE $FC
    adc l                                         ; $6114: $8D
    ld a, [$F91F]                                 ; $6115: $FA $1F $F9
    rra                                           ; $6118: $1F
    rst RST_38                                    ; $6119: $FF
    ccf                                           ; $611A: $3F
    rst RST_38                                    ; $611B: $FF
    inc sp                                        ; $611C: $33
    rst RST_38                                    ; $611D: $FF
    ld c, a                                       ; $611E: $4F
    rst RST_38                                    ; $611F: $FF
    rra                                           ; $6120: $1F
    rst RST_38                                    ; $6121: $FF
    nop                                           ; $6122: $00
    rst RST_38                                    ; $6123: $FF
    inc bc                                        ; $6124: $03
    rst RST_38                                    ; $6125: $FF
    rrca                                          ; $6126: $0F
    rst RST_38                                    ; $6127: $FF
    ccf                                           ; $6128: $3F
    rst RST_38                                    ; $6129: $FF
    rra                                           ; $612A: $1F
    rst RST_38                                    ; $612B: $FF
    rrca                                          ; $612C: $0F
    cp $47                                        ; $612D: $FE $47
    rst RST_38                                    ; $612F: $FF
    ld [hl], e                                    ; $6130: $73
    rst RST_38                                    ; $6131: $FF
    rra                                           ; $6132: $1F
    rst RST_38                                    ; $6133: $FF
    cp a                                          ; $6134: $BF
    rst RST_38                                    ; $6135: $FF
    rst RST_38                                    ; $6136: $FF
    ei                                            ; $6137: $FB
    ld a, a                                       ; $6138: $7F
    db $FC                                        ; $6139: $FC
    rst RST_38                                    ; $613A: $FF
    adc $EF                                       ; $613B: $CE $EF
    ret nz                                        ; $613D: $C0

    ldh [rLCDC], a                                ; $613E: $E0 $40
    nop                                           ; $6140: $00
    nop                                           ; $6141: $00
    nop                                           ; $6142: $00
    nop                                           ; $6143: $00
    nop                                           ; $6144: $00
    nop                                           ; $6145: $00
    ld h, b                                       ; $6146: $60
    nop                                           ; $6147: $00
    ldh [rLCDC], a                                ; $6148: $E0 $40
    ret nz                                        ; $614A: $C0

    add b                                         ; $614B: $80
    add b                                         ; $614C: $80
    nop                                           ; $614D: $00
    nop                                           ; $614E: $00
    nop                                           ; $614F: $00
    nop                                           ; $6150: $00
    nop                                           ; $6151: $00
    ld h, b                                       ; $6152: $60
    nop                                           ; $6153: $00
    ldh [rLCDC], a                                ; $6154: $E0 $40
    jp $AE80                                      ; $6156: $C3 $80 $AE


    ld b, c                                       ; $6159: $41
    ld sp, hl                                     ; $615A: $F9
    ld b, $FF                                     ; $615B: $06 $FF
    ldh a, [rIE]                                  ; $615D: $F0 $FF
    cp $FF                                        ; $615F: $FE $FF
    ld hl, sp-$01                                 ; $6161: $F8 $FF
    push hl                                       ; $6163: $E5
    rst RST_38                                    ; $6164: $FF
    call nz, $F2FF                                ; $6165: $C4 $FF $F2
    rst RST_38                                    ; $6168: $FF
    jp nz, $8AF7                                  ; $6169: $C2 $F7 $8A

    rst RST_20                                    ; $616C: $E7
    ld e, d                                       ; $616D: $5A
    rst RST_20                                    ; $616E: $E7
    ld a, [de]                                    ; $616F: $1A
    ldh [c], a                                    ; $6170: $E2
    sbc l                                         ; $6171: $9D
    and b                                         ; $6172: $A0
    ld e, a                                       ; $6173: $5F
    ldh a, [$FFAF]                                ; $6174: $F0 $AF
    ei                                            ; $6176: $FB
    ld [hl], h                                    ; $6177: $74
    ld a, h                                       ; $6178: $7C
    add e                                         ; $6179: $83
    ldh [$FF1F], a                                ; $617A: $E0 $1F
    jr jr_00D_6185                                ; $617C: $18 $07

    rlca                                          ; $617E: $07
    nop                                           ; $617F: $00
    nop                                           ; $6180: $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    nop                                           ; $6183: $00
    nop                                           ; $6184: $00

jr_00D_6185:
    nop                                           ; $6185: $00
    add b                                         ; $6186: $80
    nop                                           ; $6187: $00
    ld h, b                                       ; $6188: $60
    add b                                         ; $6189: $80
    ld [hl], b                                    ; $618A: $70
    ldh [rNR23], a                                ; $618B: $E0 $18
    ldh [$FFCC], a                                ; $618D: $E0 $CC

jr_00D_618F:
    jr nc, jr_00D_618F                            ; $618F: $30 $FE

    adc h                                         ; $6191: $8C
    cp $54                                        ; $6192: $FE $54
    rst RST_38                                    ; $6194: $FF
    xor d                                         ; $6195: $AA
    rst RST_38                                    ; $6196: $FF
    xor d                                         ; $6197: $AA
    rst RST_38                                    ; $6198: $FF
    xor d                                         ; $6199: $AA
    rst RST_38                                    ; $619A: $FF
    xor b                                         ; $619B: $A8
    cp $28                                        ; $619C: $FE $28
    ld a, d                                       ; $619E: $7A
    and h                                         ; $619F: $A4
    ld [hl+], a                                   ; $61A0: $22
    call c, $FC02                                 ; $61A1: $DC $02 $FC
    add d                                         ; $61A4: $82
    ld a, h                                       ; $61A5: $7C
    ld [bc], a                                    ; $61A6: $02
    db $FC                                        ; $61A7: $FC
    inc b                                         ; $61A8: $04
    ld hl, sp+$08                                 ; $61A9: $F8 $08
    ldh a, [$FF30]                                ; $61AB: $F0 $30
    ret nz                                        ; $61AD: $C0

    ret nz                                        ; $61AE: $C0

    nop                                           ; $61AF: $00
    nop                                           ; $61B0: $00
    nop                                           ; $61B1: $00
    nop                                           ; $61B2: $00
    nop                                           ; $61B3: $00
    nop                                           ; $61B4: $00
    nop                                           ; $61B5: $00
    nop                                           ; $61B6: $00
    nop                                           ; $61B7: $00
    nop                                           ; $61B8: $00
    nop                                           ; $61B9: $00
    nop                                           ; $61BA: $00
    nop                                           ; $61BB: $00
    nop                                           ; $61BC: $00
    nop                                           ; $61BD: $00
    nop                                           ; $61BE: $00
    nop                                           ; $61BF: $00
    ld [hl], b                                    ; $61C0: $70
    jr nz, jr_00D_61F3                            ; $61C1: $20 $30

    nop                                           ; $61C3: $00
    nop                                           ; $61C4: $00
    nop                                           ; $61C5: $00
    nop                                           ; $61C6: $00
    nop                                           ; $61C7: $00
    nop                                           ; $61C8: $00
    nop                                           ; $61C9: $00
    nop                                           ; $61CA: $00
    nop                                           ; $61CB: $00
    nop                                           ; $61CC: $00
    nop                                           ; $61CD: $00
    nop                                           ; $61CE: $00
    nop                                           ; $61CF: $00
    nop                                           ; $61D0: $00
    nop                                           ; $61D1: $00
    nop                                           ; $61D2: $00
    nop                                           ; $61D3: $00
    nop                                           ; $61D4: $00
    nop                                           ; $61D5: $00
    nop                                           ; $61D6: $00
    nop                                           ; $61D7: $00
    nop                                           ; $61D8: $00
    nop                                           ; $61D9: $00
    nop                                           ; $61DA: $00
    nop                                           ; $61DB: $00
    nop                                           ; $61DC: $00
    nop                                           ; $61DD: $00
    nop                                           ; $61DE: $00
    nop                                           ; $61DF: $00
    inc bc                                        ; $61E0: $03
    nop                                           ; $61E1: $00
    rrca                                          ; $61E2: $0F
    inc bc                                        ; $61E3: $03
    inc e                                         ; $61E4: $1C
    rrca                                          ; $61E5: $0F
    jr nc, jr_00D_6207                            ; $61E6: $30 $1F

    jr nz, jr_00D_6209                            ; $61E8: $20 $1F

    ld h, b                                       ; $61EA: $60
    ccf                                           ; $61EB: $3F
    ld b, b                                       ; $61EC: $40
    ccf                                           ; $61ED: $3F
    ld b, b                                       ; $61EE: $40
    ccf                                           ; $61EF: $3F
    ld b, b                                       ; $61F0: $40
    ccf                                           ; $61F1: $3F
    ld b, b                                       ; $61F2: $40

jr_00D_61F3:
    ccf                                           ; $61F3: $3F
    ld h, b                                       ; $61F4: $60
    ccf                                           ; $61F5: $3F
    jr nz, @+$21                                  ; $61F6: $20 $1F

    jr nc, jr_00D_6219                            ; $61F8: $30 $1F

    inc e                                         ; $61FA: $1C
    rrca                                          ; $61FB: $0F
    rrca                                          ; $61FC: $0F
    inc bc                                        ; $61FD: $03
    inc bc                                        ; $61FE: $03
    nop                                           ; $61FF: $00
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    nop                                           ; $6202: $00
    nop                                           ; $6203: $00
    nop                                           ; $6204: $00
    nop                                           ; $6205: $00
    nop                                           ; $6206: $00

jr_00D_6207:
    nop                                           ; $6207: $00
    nop                                           ; $6208: $00

jr_00D_6209:
    nop                                           ; $6209: $00
    nop                                           ; $620A: $00
    nop                                           ; $620B: $00

jr_00D_620C:
    inc e                                         ; $620C: $1C
    nop                                           ; $620D: $00
    db $FD                                        ; $620E: $FD
    jr jr_00D_620C                                ; $620F: $18 $FB

    ldh [$FF67], a                                ; $6211: $E0 $67
    ret nz                                        ; $6213: $C0

    rst RST_38                                    ; $6214: $FF
    add a                                         ; $6215: $87
    ld hl, sp-$01                                 ; $6216: $F8 $FF
    nop                                           ; $6218: $00

jr_00D_6219:
    rst RST_38                                    ; $6219: $FF
    nop                                           ; $621A: $00
    rst RST_38                                    ; $621B: $FF
    nop                                           ; $621C: $00
    rst RST_38                                    ; $621D: $FF
    nop                                           ; $621E: $00
    rst RST_38                                    ; $621F: $FF
    nop                                           ; $6220: $00
    rst RST_38                                    ; $6221: $FF
    nop                                           ; $6222: $00
    rst RST_38                                    ; $6223: $FF
    nop                                           ; $6224: $00
    rst RST_38                                    ; $6225: $FF
    nop                                           ; $6226: $00
    rst RST_38                                    ; $6227: $FF
    ld hl, sp-$01                                 ; $6228: $F8 $FF
    rst RST_38                                    ; $622A: $FF
    add a                                         ; $622B: $87
    ld l, a                                       ; $622C: $6F
    ret nc                                        ; $622D: $D0

    db $FD                                        ; $622E: $FD
    ldh [c], a                                    ; $622F: $E2
    rst RST_38                                    ; $6230: $FF
    jr jr_00D_6252                                ; $6231: $18 $1F

    nop                                           ; $6233: $00
    ld bc, $0000                                  ; $6234: $01 $00 $00
    nop                                           ; $6237: $00
    nop                                           ; $6238: $00
    nop                                           ; $6239: $00
    nop                                           ; $623A: $00
    nop                                           ; $623B: $00
    nop                                           ; $623C: $00
    nop                                           ; $623D: $00
    nop                                           ; $623E: $00
    nop                                           ; $623F: $00
    nop                                           ; $6240: $00
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    nop                                           ; $6243: $00
    nop                                           ; $6244: $00
    nop                                           ; $6245: $00
    nop                                           ; $6246: $00
    nop                                           ; $6247: $00
    nop                                           ; $6248: $00
    nop                                           ; $6249: $00
    inc a                                         ; $624A: $3C
    nop                                           ; $624B: $00
    rst RST_38                                    ; $624C: $FF
    jr c, @+$01                                   ; $624D: $38 $FF

    ret nz                                        ; $624F: $C0

    rst RST_38                                    ; $6250: $FF
    add e                                         ; $6251: $83

jr_00D_6252:
    rst RST_38                                    ; $6252: $FF
    ld a, $C1                                     ; $6253: $3E $C1

jr_00D_6255:
    rst RST_38                                    ; $6255: $FF
    rrca                                          ; $6256: $0F
    rst RST_38                                    ; $6257: $FF
    nop                                           ; $6258: $00
    rst RST_38                                    ; $6259: $FF
    nop                                           ; $625A: $00
    rst RST_38                                    ; $625B: $FF
    nop                                           ; $625C: $00
    rst RST_38                                    ; $625D: $FF
    nop                                           ; $625E: $00
    rst RST_38                                    ; $625F: $FF
    nop                                           ; $6260: $00
    rst RST_38                                    ; $6261: $FF
    nop                                           ; $6262: $00
    rst RST_38                                    ; $6263: $FF
    nop                                           ; $6264: $00
    rst RST_38                                    ; $6265: $FF
    nop                                           ; $6266: $00
    rst RST_38                                    ; $6267: $FF
    nop                                           ; $6268: $00
    rst RST_38                                    ; $6269: $FF
    jp $FFFF                                      ; $626A: $C3 $FF $FF


    inc a                                         ; $626D: $3C
    rst RST_38                                    ; $626E: $FF
    rlca                                          ; $626F: $07
    and a                                         ; $6270: $A7
    ld e, b                                       ; $6271: $58
    add h                                         ; $6272: $84
    ld a, e                                       ; $6273: $7B
    rst RST_20                                    ; $6274: $E7
    sbc b                                         ; $6275: $98
    rst RST_38                                    ; $6276: $FF
    ld h, b                                       ; $6277: $60
    ld a, a                                       ; $6278: $7F
    rra                                           ; $6279: $1F
    rra                                           ; $627A: $1F
    nop                                           ; $627B: $00
    nop                                           ; $627C: $00
    nop                                           ; $627D: $00
    nop                                           ; $627E: $00
    nop                                           ; $627F: $00
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    nop                                           ; $6284: $00
    nop                                           ; $6285: $00
    nop                                           ; $6286: $00
    nop                                           ; $6287: $00
    nop                                           ; $6288: $00
    nop                                           ; $6289: $00
    nop                                           ; $628A: $00
    nop                                           ; $628B: $00
    ldh a, [rP1]                                  ; $628C: $F0 $00
    ret z                                         ; $628E: $C8

    jr nc, jr_00D_6255                            ; $628F: $30 $C4

    cp b                                          ; $6291: $B8
    add d                                         ; $6292: $82
    ld a, h                                       ; $6293: $7C
    cp $80                                        ; $6294: $FE $80
    rst RST_38                                    ; $6296: $FF
    cp $03                                        ; $6297: $FE $03
    rst RST_38                                    ; $6299: $FF
    rlca                                          ; $629A: $07
    rst RST_38                                    ; $629B: $FF
    ccf                                           ; $629C: $3F
    rst RST_38                                    ; $629D: $FF
    nop                                           ; $629E: $00
    rst RST_38                                    ; $629F: $FF
    nop                                           ; $62A0: $00
    rst RST_38                                    ; $62A1: $FF
    nop                                           ; $62A2: $00
    rst RST_38                                    ; $62A3: $FF
    inc bc                                        ; $62A4: $03
    rst RST_38                                    ; $62A5: $FF
    rra                                           ; $62A6: $1F
    rst RST_38                                    ; $62A7: $FF
    inc bc                                        ; $62A8: $03
    rst RST_38                                    ; $62A9: $FF
    rst RST_38                                    ; $62AA: $FF
    rst RST_38                                    ; $62AB: $FF
    rst RST_38                                    ; $62AC: $FF
    nop                                           ; $62AD: $00
    adc b                                         ; $62AE: $88
    ld [hl], b                                    ; $62AF: $70
    adc b                                         ; $62B0: $88
    ld [hl], b                                    ; $62B1: $70
    db $10                                        ; $62B2: $10
    ldh [$FFF0], a                                ; $62B3: $E0 $F0
    nop                                           ; $62B5: $00
    ldh [$FFC0], a                                ; $62B6: $E0 $C0
    ret nz                                        ; $62B8: $C0

    nop                                           ; $62B9: $00
    nop                                           ; $62BA: $00
    nop                                           ; $62BB: $00
    nop                                           ; $62BC: $00
    nop                                           ; $62BD: $00
    nop                                           ; $62BE: $00
    nop                                           ; $62BF: $00
    nop                                           ; $62C0: $00
    nop                                           ; $62C1: $00
    nop                                           ; $62C2: $00
    nop                                           ; $62C3: $00
    nop                                           ; $62C4: $00
    nop                                           ; $62C5: $00
    ldh a, [rP1]                                  ; $62C6: $F0 $00
    rst RST_38                                    ; $62C8: $FF
    ldh a, [rIE]                                  ; $62C9: $F0 $FF
    rst RST_38                                    ; $62CB: $FF
    rst RST_38                                    ; $62CC: $FF
    rst RST_38                                    ; $62CD: $FF
    rst RST_38                                    ; $62CE: $FF
    add b                                         ; $62CF: $80
    rrca                                          ; $62D0: $0F
    rst RST_38                                    ; $62D1: $FF
    ld a, a                                       ; $62D2: $7F
    cp $FF                                        ; $62D3: $FE $FF
    ret nz                                        ; $62D5: $C0

    rst RST_38                                    ; $62D6: $FF
    nop                                           ; $62D7: $00
    rst RST_38                                    ; $62D8: $FF
    rst RST_38                                    ; $62D9: $FF
    rst RST_38                                    ; $62DA: $FF
    ret nz                                        ; $62DB: $C0

    ret nz                                        ; $62DC: $C0

    nop                                           ; $62DD: $00
    nop                                           ; $62DE: $00
    nop                                           ; $62DF: $00
    nop                                           ; $62E0: $00
    nop                                           ; $62E1: $00
    nop                                           ; $62E2: $00
    nop                                           ; $62E3: $00
    nop                                           ; $62E4: $00
    nop                                           ; $62E5: $00
    nop                                           ; $62E6: $00
    nop                                           ; $62E7: $00
    rst RST_38                                    ; $62E8: $FF
    nop                                           ; $62E9: $00
    rst RST_38                                    ; $62EA: $FF
    rst RST_38                                    ; $62EB: $FF
    rst RST_38                                    ; $62EC: $FF
    add b                                         ; $62ED: $80
    db $FC                                        ; $62EE: $FC
    nop                                           ; $62EF: $00
    cp $FC                                        ; $62F0: $FE $FC
    cp $00                                        ; $62F2: $FE $00
    ldh [rP1], a                                  ; $62F4: $E0 $00
    nop                                           ; $62F6: $00
    nop                                           ; $62F7: $00
    add b                                         ; $62F8: $80
    nop                                           ; $62F9: $00
    add b                                         ; $62FA: $80
    nop                                           ; $62FB: $00
    nop                                           ; $62FC: $00
    nop                                           ; $62FD: $00
    nop                                           ; $62FE: $00
    nop                                           ; $62FF: $00
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    nop                                           ; $6304: $00
    nop                                           ; $6305: $00
    nop                                           ; $6306: $00
    nop                                           ; $6307: $00
    nop                                           ; $6308: $00
    nop                                           ; $6309: $00
    nop                                           ; $630A: $00
    nop                                           ; $630B: $00
    nop                                           ; $630C: $00
    nop                                           ; $630D: $00
    nop                                           ; $630E: $00
    nop                                           ; $630F: $00
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    nop                                           ; $6312: $00
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    nop                                           ; $6316: $00
    nop                                           ; $6317: $00
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    ldh [rP1], a                                  ; $631A: $E0 $00
    ldh a, [$FFE0]                                ; $631C: $F0 $E0
    ldh a, [rP1]                                  ; $631E: $F0 $00
    nop                                           ; $6320: $00
    nop                                           ; $6321: $00
    nop                                           ; $6322: $00
    nop                                           ; $6323: $00
    nop                                           ; $6324: $00
    nop                                           ; $6325: $00
    nop                                           ; $6326: $00
    nop                                           ; $6327: $00
    nop                                           ; $6328: $00
    nop                                           ; $6329: $00
    nop                                           ; $632A: $00
    nop                                           ; $632B: $00
    ld bc, $0700                                  ; $632C: $01 $00 $07
    ld bc, $070E                                  ; $632F: $01 $0E $07
    jr jr_00D_6343                                ; $6332: $18 $0F

    jr jr_00D_6345                                ; $6334: $18 $0F

    ld sp, $331F                                  ; $6336: $31 $1F $33
    rra                                           ; $6339: $1F
    ld [hl], $1F                                  ; $633A: $36 $1F
    ld l, h                                       ; $633C: $6C
    ccf                                           ; $633D: $3F
    ld l, l                                       ; $633E: $6D
    ccf                                           ; $633F: $3F
    nop                                           ; $6340: $00
    nop                                           ; $6341: $00
    nop                                           ; $6342: $00

jr_00D_6343:
    nop                                           ; $6343: $00
    ccf                                           ; $6344: $3F

jr_00D_6345:
    nop                                           ; $6345: $00
    rst RST_38                                    ; $6346: $FF
    ccf                                           ; $6347: $3F
    ret nz                                        ; $6348: $C0

    rst RST_38                                    ; $6349: $FF
    nop                                           ; $634A: $00
    rst RST_38                                    ; $634B: $FF
    inc a                                         ; $634C: $3C
    rst RST_38                                    ; $634D: $FF
    rst RST_38                                    ; $634E: $FF
    rst RST_38                                    ; $634F: $FF
    cp $FF                                        ; $6350: $FE $FF
    rst RST_38                                    ; $6352: $FF
    rst RST_38                                    ; $6353: $FF
    rst RST_38                                    ; $6354: $FF
    rst RST_38                                    ; $6355: $FF
    rst RST_38                                    ; $6356: $FF
    rst RST_38                                    ; $6357: $FF
    rst RST_38                                    ; $6358: $FF
    rst RST_38                                    ; $6359: $FF
    cp $FF                                        ; $635A: $FE $FF
    rst RST_38                                    ; $635C: $FF
    rst RST_38                                    ; $635D: $FF
    rst RST_38                                    ; $635E: $FF
    rst RST_38                                    ; $635F: $FF
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    add b                                         ; $6362: $80
    nop                                           ; $6363: $00
    cp $80                                        ; $6364: $FE $80
    ld a, a                                       ; $6366: $7F
    cp $0F                                        ; $6367: $FE $0F
    rst RST_38                                    ; $6369: $FF
    rra                                           ; $636A: $1F
    ldh a, [$FFEF]                                ; $636B: $F0 $EF
    ld hl, sp+$17                                 ; $636D: $F8 $17
    rst RST_38                                    ; $636F: $FF
    ld [$04FF], sp                                ; $6370: $08 $FF $04
    rst RST_38                                    ; $6373: $FF
    add l                                         ; $6374: $85
    rst RST_38                                    ; $6375: $FF
    ld [bc], a                                    ; $6376: $02
    rst RST_38                                    ; $6377: $FF
    add d                                         ; $6378: $82
    rst RST_38                                    ; $6379: $FF
    ld bc, $88FF                                  ; $637A: $01 $FF $88
    rst RST_38                                    ; $637D: $FF

Jump_00D_637E:
    ld [$E0FF], sp                                ; $637E: $08 $FF $E0
    nop                                           ; $6381: $00
    ldh a, [$FFE0]                                ; $6382: $F0 $E0
    ldh a, [rP1]                                  ; $6384: $F0 $00
    nop                                           ; $6386: $00
    nop                                           ; $6387: $00
    ldh [rP1], a                                  ; $6388: $E0 $00
    db $FC                                        ; $638A: $FC
    ldh [rIE], a                                  ; $638B: $E0 $FF
    db $FC                                        ; $638D: $FC
    rst RST_38                                    ; $638E: $FF
    nop                                           ; $638F: $00
    ldh [$FF80], a                                ; $6390: $E0 $80
    ld a, h                                       ; $6392: $7C
    ldh [$FF1F], a                                ; $6393: $E0 $1F
    db $FC                                        ; $6395: $FC
    rst RST_38                                    ; $6396: $FF
    rst RST_38                                    ; $6397: $FF
    rst RST_38                                    ; $6398: $FF
    ret nz                                        ; $6399: $C0

    cp h                                          ; $639A: $BC
    ldh a, [rNR34]                                ; $639B: $F0 $1E
    ld hl, sp+$0F                                 ; $639D: $F8 $0F
    cp $71                                        ; $639F: $FE $71
    ccf                                           ; $63A1: $3F
    ld [hl], a                                    ; $63A2: $77
    ccf                                           ; $63A3: $3F
    ld a, c                                       ; $63A4: $79
    ccf                                           ; $63A5: $3F
    ld l, e                                       ; $63A6: $6B
    ccf                                           ; $63A7: $3F
    ld h, a                                       ; $63A8: $67
    ccf                                           ; $63A9: $3F
    ld sp, $301F                                  ; $63AA: $31 $1F $30
    rra                                           ; $63AD: $1F
    jr nc, jr_00D_63CF                            ; $63AE: $30 $1F

    jr jr_00D_63C1                                ; $63B0: $18 $0F

    jr @+$11                                      ; $63B2: $18 $0F

    dec c                                         ; $63B4: $0D
    rlca                                          ; $63B5: $07
    rrca                                          ; $63B6: $0F
    ld b, $07                                     ; $63B7: $06 $07
    ld [bc], a                                    ; $63B9: $02
    rlca                                          ; $63BA: $07
    inc bc                                        ; $63BB: $03
    inc bc                                        ; $63BC: $03
    ld bc, $0001                                  ; $63BD: $01 $01 $00
    db $FC                                        ; $63C0: $FC

jr_00D_63C1:
    rst RST_38                                    ; $63C1: $FF
    ldh a, [rIE]                                  ; $63C2: $F0 $FF
    cp $FF                                        ; $63C4: $FE $FF
    rst RST_38                                    ; $63C6: $FF
    rst RST_38                                    ; $63C7: $FF
    ccf                                           ; $63C8: $3F
    rst RST_38                                    ; $63C9: $FF
    ld [hl], $FF                                  ; $63CA: $36 $FF
    ld a, $FF                                     ; $63CC: $3E $FF
    dec d                                         ; $63CE: $15

jr_00D_63CF:
    rst RST_38                                    ; $63CF: $FF
    add h                                         ; $63D0: $84
    rst RST_38                                    ; $63D1: $FF
    adc $7B                                       ; $63D2: $CE $7B
    rst RST_28                                    ; $63D4: $EF
    add hl, sp                                    ; $63D5: $39
    cp a                                          ; $63D6: $BF
    inc e                                         ; $63D7: $1C
    sbc $8C                                       ; $63D8: $DE $8C
    adc $04                                       ; $63DA: $CE $04
    rlca                                          ; $63DC: $07
    ld [bc], a                                    ; $63DD: $02
    inc bc                                        ; $63DE: $03
    nop                                           ; $63DF: $00
    ld [$10FF], sp                                ; $63E0: $08 $FF $10

jr_00D_63E3:
    rst RST_38                                    ; $63E3: $FF
    ldh a, [rIE]                                  ; $63E4: $F0 $FF
    add b                                         ; $63E6: $80
    rst RST_38                                    ; $63E7: $FF
    add b                                         ; $63E8: $80
    rst RST_38                                    ; $63E9: $FF
    add b                                         ; $63EA: $80
    rst RST_38                                    ; $63EB: $FF
    add b                                         ; $63EC: $80
    rst RST_38                                    ; $63ED: $FF
    nop                                           ; $63EE: $00
    rst RST_38                                    ; $63EF: $FF
    jr nz, @+$01                                  ; $63F0: $20 $FF

    jr c, jr_00D_63E3                             ; $63F2: $38 $EF

    cp [hl]                                       ; $63F4: $BE
    rst RST_20                                    ; $63F5: $E7
    rst RST_30                                    ; $63F6: $F7
    ld h, e                                       ; $63F7: $63
    ld a, e                                       ; $63F8: $7B
    jr nc, jr_00D_6433                            ; $63F9: $30 $38

    db $10                                        ; $63FB: $10
    inc e                                         ; $63FC: $1C
    ld [$000C], sp                                ; $63FD: $08 $0C $00
    inc bc                                        ; $6400: $03
    rst RST_38                                    ; $6401: $FF
    ld bc, $00FF                                  ; $6402: $01 $FF $00
    rst RST_38                                    ; $6405: $FF
    nop                                           ; $6406: $00
    rst RST_38                                    ; $6407: $FF
    nop                                           ; $6408: $00
    rst RST_38                                    ; $6409: $FF
    nop                                           ; $640A: $00
    rst RST_38                                    ; $640B: $FF
    nop                                           ; $640C: $00
    rst RST_38                                    ; $640D: $FF
    nop                                           ; $640E: $00
    rst RST_38                                    ; $640F: $FF
    nop                                           ; $6410: $00
    rst RST_38                                    ; $6411: $FF
    ret nz                                        ; $6412: $C0

    rst RST_38                                    ; $6413: $FF
    ldh a, [$FF7F]                                ; $6414: $F0 $7F
    ld a, b                                       ; $6416: $78
    rra                                           ; $6417: $1F
    ld e, $0F                                     ; $6418: $1E $0F
    rrca                                          ; $641A: $0F
    inc bc                                        ; $641B: $03
    inc bc                                        ; $641C: $03
    ld bc, $0001                                  ; $641D: $01 $01 $00
    add b                                         ; $6420: $80
    nop                                           ; $6421: $00
    ldh [$FF80], a                                ; $6422: $E0 $80
    ldh [rP1], a                                  ; $6424: $E0 $00
    nop                                           ; $6426: $00
    nop                                           ; $6427: $00
    nop                                           ; $6428: $00

jr_00D_6429:
    nop                                           ; $6429: $00
    nop                                           ; $642A: $00
    nop                                           ; $642B: $00
    add b                                         ; $642C: $80
    nop                                           ; $642D: $00
    ret nz                                        ; $642E: $C0

    add b                                         ; $642F: $80
    ldh [$FFC0], a                                ; $6430: $E0 $C0
    ld [hl], b                                    ; $6432: $70

jr_00D_6433:
    ldh [$FF38], a                                ; $6433: $E0 $38
    ldh a, [rNR32]                                ; $6435: $F0 $1C
    ld hl, sp+$0E                                 ; $6437: $F8 $0E
    db $FC                                        ; $6439: $FC
    rlca                                          ; $643A: $07
    cp $03                                        ; $643B: $FE $03
    rst RST_38                                    ; $643D: $FF
    ld bc, $00FF                                  ; $643E: $01 $FF $00
    rst RST_38                                    ; $6441: $FF
    nop                                           ; $6442: $00
    rst RST_38                                    ; $6443: $FF
    nop                                           ; $6444: $00
    rst RST_38                                    ; $6445: $FF
    nop                                           ; $6446: $00
    rst RST_38                                    ; $6447: $FF
    ret nz                                        ; $6448: $C0

    rst RST_38                                    ; $6449: $FF
    db $F4                                        ; $644A: $F4
    ld a, e                                       ; $644B: $7B
    ld a, a                                       ; $644C: $7F
    inc e                                         ; $644D: $1C

jr_00D_644E:
    rra                                           ; $644E: $1F
    ld b, $07                                     ; $644F: $06 $07
    ld bc, $0001                                  ; $6451: $01 $01 $00
    nop                                           ; $6454: $00
    nop                                           ; $6455: $00
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    nop                                           ; $6458: $00
    nop                                           ; $6459: $00
    nop                                           ; $645A: $00
    nop                                           ; $645B: $00
    nop                                           ; $645C: $00
    nop                                           ; $645D: $00
    nop                                           ; $645E: $00
    nop                                           ; $645F: $00
    add b                                         ; $6460: $80
    nop                                           ; $6461: $00
    ret nz                                        ; $6462: $C0

    add b                                         ; $6463: $80
    ldh [$FFC0], a                                ; $6464: $E0 $C0
    ldh a, [rNR41]                                ; $6466: $F0 $20
    ld a, b                                       ; $6468: $78
    sub b                                         ; $6469: $90
    inc a                                         ; $646A: $3C
    ret z                                         ; $646B: $C8

    jr jr_00D_644E                                ; $646C: $18 $E0

    db $10                                        ; $646E: $10
    ldh [$FF08], a                                ; $646F: $E0 $08
    ldh a, [$FFC8]                                ; $6471: $F0 $C8
    jr nc, jr_00D_6429                            ; $6473: $30 $B4

    ld [$008C], sp                                ; $6475: $08 $8C $00
    nop                                           ; $6478: $00
    nop                                           ; $6479: $00
    nop                                           ; $647A: $00
    nop                                           ; $647B: $00
    nop                                           ; $647C: $00
    nop                                           ; $647D: $00
    nop                                           ; $647E: $00
    nop                                           ; $647F: $00

Call_00D_6480:
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00
    inc bc                                        ; $6484: $03
    nop                                           ; $6485: $00
    rlca                                          ; $6486: $07
    inc bc                                        ; $6487: $03
    inc c                                         ; $6488: $0C
    rlca                                          ; $6489: $07
    jr jr_00D_649B                                ; $648A: $18 $0F

    jr nc, jr_00D_64AD                            ; $648C: $30 $1F

    jr nc, jr_00D_64AF                            ; $648E: $30 $1F

    ld h, b                                       ; $6490: $60
    ccf                                           ; $6491: $3F
    ld h, b                                       ; $6492: $60
    ccf                                           ; $6493: $3F
    ld h, b                                       ; $6494: $60
    ccf                                           ; $6495: $3F
    ret nz                                        ; $6496: $C0

    ld a, a                                       ; $6497: $7F
    ret nz                                        ; $6498: $C0

    ld a, a                                       ; $6499: $7F
    ret nz                                        ; $649A: $C0

jr_00D_649B:
    ld a, a                                       ; $649B: $7F
    ret nz                                        ; $649C: $C0

    ld a, a                                       ; $649D: $7F
    ret nz                                        ; $649E: $C0

    ld a, a                                       ; $649F: $7F
    nop                                           ; $64A0: $00
    nop                                           ; $64A1: $00
    nop                                           ; $64A2: $00
    nop                                           ; $64A3: $00
    nop                                           ; $64A4: $00
    nop                                           ; $64A5: $00
    nop                                           ; $64A6: $00
    nop                                           ; $64A7: $00
    nop                                           ; $64A8: $00
    nop                                           ; $64A9: $00
    nop                                           ; $64AA: $00
    nop                                           ; $64AB: $00
    nop                                           ; $64AC: $00

jr_00D_64AD:
    nop                                           ; $64AD: $00
    nop                                           ; $64AE: $00

jr_00D_64AF:
    nop                                           ; $64AF: $00
    nop                                           ; $64B0: $00
    nop                                           ; $64B1: $00
    rra                                           ; $64B2: $1F
    nop                                           ; $64B3: $00
    rst RST_38                                    ; $64B4: $FF
    rra                                           ; $64B5: $1F
    ldh [rIE], a                                  ; $64B6: $E0 $FF
    nop                                           ; $64B8: $00
    rst RST_38                                    ; $64B9: $FF
    nop                                           ; $64BA: $00
    rst RST_38                                    ; $64BB: $FF
    nop                                           ; $64BC: $00
    rst RST_38                                    ; $64BD: $FF
    nop                                           ; $64BE: $00
    rst RST_38                                    ; $64BF: $FF
    nop                                           ; $64C0: $00
    nop                                           ; $64C1: $00
    nop                                           ; $64C2: $00
    nop                                           ; $64C3: $00
    nop                                           ; $64C4: $00
    nop                                           ; $64C5: $00
    nop                                           ; $64C6: $00
    nop                                           ; $64C7: $00
    nop                                           ; $64C8: $00
    nop                                           ; $64C9: $00
    nop                                           ; $64CA: $00
    nop                                           ; $64CB: $00
    nop                                           ; $64CC: $00
    nop                                           ; $64CD: $00
    nop                                           ; $64CE: $00
    nop                                           ; $64CF: $00
    nop                                           ; $64D0: $00
    nop                                           ; $64D1: $00
    ret nz                                        ; $64D2: $C0

    nop                                           ; $64D3: $00
    db $FC                                        ; $64D4: $FC
    ret nz                                        ; $64D5: $C0

    ccf                                           ; $64D6: $3F
    db $FC                                        ; $64D7: $FC
    inc bc                                        ; $64D8: $03
    rst RST_38                                    ; $64D9: $FF
    nop                                           ; $64DA: $00
    rst RST_38                                    ; $64DB: $FF
    nop                                           ; $64DC: $00
    rst RST_38                                    ; $64DD: $FF
    nop                                           ; $64DE: $00
    rst RST_38                                    ; $64DF: $FF
    ret nz                                        ; $64E0: $C0

    nop                                           ; $64E1: $00
    ldh a, [$FFC0]                                ; $64E2: $F0 $C0
    inc a                                         ; $64E4: $3C
    ldh a, [rIF]                                  ; $64E5: $F0 $0F
    db $FC                                        ; $64E7: $FC
    inc bc                                        ; $64E8: $03
    rst RST_38                                    ; $64E9: $FF
    inc a                                         ; $64EA: $3C
    rst RST_38                                    ; $64EB: $FF
    rra                                           ; $64EC: $1F
    di                                            ; $64ED: $F3
    rrca                                          ; $64EE: $0F
    db $FC                                        ; $64EF: $FC
    inc bc                                        ; $64F0: $03
    cp $01                                        ; $64F1: $FE $01
    rst RST_38                                    ; $64F3: $FF
    nop                                           ; $64F4: $00
    rst RST_38                                    ; $64F5: $FF
    inc a                                         ; $64F6: $3C
    rst RST_38                                    ; $64F7: $FF
    ccf                                           ; $64F8: $3F
    db $E3                                        ; $64F9: $E3
    dec de                                        ; $64FA: $1B
    ldh a, [$FF0C]                                ; $64FB: $F0 $0C
    ld hl, sp+$06                                 ; $64FD: $F8 $06
    db $FC                                        ; $64FF: $FC
    ret nz                                        ; $6500: $C0

    nop                                           ; $6501: $00
    ldh a, [$FFC0]                                ; $6502: $F0 $C0
    db $FC                                        ; $6504: $FC
    ldh a, [$FFFC]                                ; $6505: $F0 $FC
    nop                                           ; $6507: $00
    nop                                           ; $6508: $00
    nop                                           ; $6509: $00
    add b                                         ; $650A: $80
    nop                                           ; $650B: $00
    ret nz                                        ; $650C: $C0

    add b                                         ; $650D: $80
    ld h, b                                       ; $650E: $60
    ret nz                                        ; $650F: $C0

    or b                                          ; $6510: $B0
    ldh [$FFF8], a                                ; $6511: $E0 $F8
    ld [hl], b                                    ; $6513: $70
    ld a, b                                       ; $6514: $78
    nop                                           ; $6515: $00
    nop                                           ; $6516: $00
    nop                                           ; $6517: $00
    nop                                           ; $6518: $00
    nop                                           ; $6519: $00
    add b                                         ; $651A: $80
    nop                                           ; $651B: $00
    ret nz                                        ; $651C: $C0

    add b                                         ; $651D: $80
    ld h, b                                       ; $651E: $60
    ret nz                                        ; $651F: $C0

    ret nz                                        ; $6520: $C0

    ld a, a                                       ; $6521: $7F
    ret nz                                        ; $6522: $C0

    ld a, a                                       ; $6523: $7F
    ret nz                                        ; $6524: $C0

    ld a, a                                       ; $6525: $7F
    ret nz                                        ; $6526: $C0

    ld a, a                                       ; $6527: $7F
    ret nz                                        ; $6528: $C0

    ld a, a                                       ; $6529: $7F
    ld h, b                                       ; $652A: $60
    ccf                                           ; $652B: $3F
    ld h, b                                       ; $652C: $60
    ccf                                           ; $652D: $3F
    ld h, b                                       ; $652E: $60
    ccf                                           ; $652F: $3F
    jr nc, jr_00D_6551                            ; $6530: $30 $1F

    jr nc, jr_00D_6553                            ; $6532: $30 $1F

    jr jr_00D_6545                                ; $6534: $18 $0F

    jr jr_00D_6547                                ; $6536: $18 $0F

    inc c                                         ; $6538: $0C
    rlca                                          ; $6539: $07
    ld b, $03                                     ; $653A: $06 $03
    inc bc                                        ; $653C: $03
    ld bc, $0001                                  ; $653D: $01 $01 $00
    nop                                           ; $6540: $00
    rst RST_38                                    ; $6541: $FF
    nop                                           ; $6542: $00
    rst RST_38                                    ; $6543: $FF
    nop                                           ; $6544: $00

jr_00D_6545:
    rst RST_38                                    ; $6545: $FF
    nop                                           ; $6546: $00

jr_00D_6547:
    rst RST_38                                    ; $6547: $FF
    nop                                           ; $6548: $00
    rst RST_38                                    ; $6549: $FF
    nop                                           ; $654A: $00
    rst RST_38                                    ; $654B: $FF
    nop                                           ; $654C: $00
    rst RST_38                                    ; $654D: $FF
    nop                                           ; $654E: $00
    rst RST_38                                    ; $654F: $FF
    nop                                           ; $6550: $00

jr_00D_6551:
    rst RST_38                                    ; $6551: $FF
    nop                                           ; $6552: $00

jr_00D_6553:
    rst RST_38                                    ; $6553: $FF
    nop                                           ; $6554: $00
    rst RST_38                                    ; $6555: $FF
    nop                                           ; $6556: $00
    rst RST_38                                    ; $6557: $FF
    nop                                           ; $6558: $00
    rst RST_38                                    ; $6559: $FF
    nop                                           ; $655A: $00
    rst RST_38                                    ; $655B: $FF
    nop                                           ; $655C: $00
    rst RST_38                                    ; $655D: $FF
    nop                                           ; $655E: $00
    rst RST_38                                    ; $655F: $FF
    nop                                           ; $6560: $00
    rst RST_38                                    ; $6561: $FF
    nop                                           ; $6562: $00
    rst RST_38                                    ; $6563: $FF
    nop                                           ; $6564: $00
    rst RST_38                                    ; $6565: $FF
    nop                                           ; $6566: $00
    rst RST_38                                    ; $6567: $FF
    nop                                           ; $6568: $00
    rst RST_38                                    ; $6569: $FF
    nop                                           ; $656A: $00
    rst RST_38                                    ; $656B: $FF
    nop                                           ; $656C: $00
    rst RST_38                                    ; $656D: $FF
    nop                                           ; $656E: $00
    rst RST_38                                    ; $656F: $FF
    nop                                           ; $6570: $00
    rst RST_38                                    ; $6571: $FF
    nop                                           ; $6572: $00
    rst RST_38                                    ; $6573: $FF
    nop                                           ; $6574: $00
    rst RST_38                                    ; $6575: $FF
    nop                                           ; $6576: $00
    rst RST_38                                    ; $6577: $FF
    nop                                           ; $6578: $00
    rst RST_38                                    ; $6579: $FF
    nop                                           ; $657A: $00
    rst RST_38                                    ; $657B: $FF
    nop                                           ; $657C: $00
    rst RST_38                                    ; $657D: $FF
    nop                                           ; $657E: $00
    rst RST_38                                    ; $657F: $FF
    inc bc                                        ; $6580: $03
    cp $01                                        ; $6581: $FE $01
    rst RST_38                                    ; $6583: $FF
    jr c, @+$01                                   ; $6584: $38 $FF

    ccf                                           ; $6586: $3F
    rst RST_20                                    ; $6587: $E7
    rra                                           ; $6588: $1F
    ldh a, [$FF0D]                                ; $6589: $F0 $0D
    ei                                            ; $658B: $FB
    and $FD                                       ; $658C: $E6 $FD
    rst RST_38                                    ; $658E: $FF
    ld e, $9F                                     ; $658F: $1E $9F
    ld h, e                                       ; $6591: $63
    jp Jump_00D_60BC                              ; $6592: $C3 $BC $60


    rst RST_18                                    ; $6595: $DF
    inc a                                         ; $6596: $3C
    rst RST_28                                    ; $6597: $EF
    rst RST_18                                    ; $6598: $DF
    di                                            ; $6599: $F3
    rst RST_38                                    ; $659A: $FF
    jr c, jr_00D_65DB                             ; $659B: $38 $3E

    inc c                                         ; $659D: $0C
    ld c, $00                                     ; $659E: $0E $00
    ldh a, [$FFE0]                                ; $65A0: $F0 $E0
    ld hl, sp+$10                                 ; $65A2: $F8 $10
    ret c                                         ; $65A4: $D8

    add b                                         ; $65A5: $80
    ld h, b                                       ; $65A6: $60
    ret nz                                        ; $65A7: $C0

    or b                                          ; $65A8: $B0
    ld h, b                                       ; $65A9: $60
    sbc b                                         ; $65AA: $98
    ld [hl], b                                    ; $65AB: $70
    inc c                                         ; $65AC: $0C
    ld hl, sp+$06                                 ; $65AD: $F8 $06
    db $FC                                        ; $65AF: $FC
    inc bc                                        ; $65B0: $03
    cp $C1                                        ; $65B1: $FE $C1
    rst RST_38                                    ; $65B3: $FF
    ldh a, [$FF3F]                                ; $65B4: $F0 $3F
    inc a                                         ; $65B6: $3C
    rrca                                          ; $65B7: $0F
    rrca                                          ; $65B8: $0F
    inc bc                                        ; $65B9: $03
    inc bc                                        ; $65BA: $03
    nop                                           ; $65BB: $00
    nop                                           ; $65BC: $00
    nop                                           ; $65BD: $00
    nop                                           ; $65BE: $00
    nop                                           ; $65BF: $00
    nop                                           ; $65C0: $00
    rst RST_38                                    ; $65C1: $FF
    nop                                           ; $65C2: $00
    rst RST_38                                    ; $65C3: $FF
    nop                                           ; $65C4: $00
    rst RST_38                                    ; $65C5: $FF
    nop                                           ; $65C6: $00
    rst RST_38                                    ; $65C7: $FF
    nop                                           ; $65C8: $00
    rst RST_38                                    ; $65C9: $FF
    nop                                           ; $65CA: $00
    rst RST_38                                    ; $65CB: $FF
    nop                                           ; $65CC: $00
    rst RST_38                                    ; $65CD: $FF
    nop                                           ; $65CE: $00
    rst RST_38                                    ; $65CF: $FF
    add c                                         ; $65D0: $81
    rst RST_38                                    ; $65D1: $FF
    jp Jump_00D_637E                              ; $65D2: $C3 $7E $63


    ld a, $39                                     ; $65D5: $3E $39
    rra                                           ; $65D7: $1F
    rra                                           ; $65D8: $1F
    rlca                                          ; $65D9: $07
    rlca                                          ; $65DA: $07

jr_00D_65DB:
    ld bc, $0001                                  ; $65DB: $01 $01 $00
    nop                                           ; $65DE: $00
    nop                                           ; $65DF: $00
    inc c                                         ; $65E0: $0C
    rst RST_38                                    ; $65E1: $FF
    rrca                                          ; $65E2: $0F
    ei                                            ; $65E3: $FB
    rlca                                          ; $65E4: $07
    db $FC                                        ; $65E5: $FC
    inc bc                                        ; $65E6: $03
    cp $01                                        ; $65E7: $FE $01
    rst RST_38                                    ; $65E9: $FF
    nop                                           ; $65EA: $00
    rst RST_38                                    ; $65EB: $FF
    jr nc, @+$01                                  ; $65EC: $30 $FF

    ld a, $EF                                     ; $65EE: $3E $EF
    rra                                           ; $65F0: $1F
    pop af                                        ; $65F1: $F1
    rst RST_08                                    ; $65F2: $CF
    ld hl, sp-$0A                                 ; $65F3: $F8 $F6
    inc a                                         ; $65F5: $3C
    cp a                                          ; $65F6: $BF
    ld c, $8F                                     ; $65F7: $0E $8F
    inc bc                                        ; $65F9: $03
    jp $E080                                      ; $65FA: $C3 $80 $E0


    ld b, b                                       ; $65FD: $40
    ld h, b                                       ; $65FE: $60
    nop                                           ; $65FF: $00
    add b                                         ; $6600: $80
    nop                                           ; $6601: $00
    ret nz                                        ; $6602: $C0

    add b                                         ; $6603: $80
    ld h, b                                       ; $6604: $60
    ret nz                                        ; $6605: $C0

    jr nc, @-$1E                                  ; $6606: $30 $E0

    ld hl, sp-$10                                 ; $6608: $F8 $F0
    db $FC                                        ; $660A: $FC
    jr jr_00D_6629                                ; $660B: $18 $1C

    nop                                           ; $660D: $00
    nop                                           ; $660E: $00
    nop                                           ; $660F: $00
    nop                                           ; $6610: $00
    nop                                           ; $6611: $00
    nop                                           ; $6612: $00
    nop                                           ; $6613: $00
    nop                                           ; $6614: $00
    nop                                           ; $6615: $00
    nop                                           ; $6616: $00
    nop                                           ; $6617: $00
    nop                                           ; $6618: $00
    nop                                           ; $6619: $00
    nop                                           ; $661A: $00
    nop                                           ; $661B: $00
    nop                                           ; $661C: $00
    nop                                           ; $661D: $00
    nop                                           ; $661E: $00
    nop                                           ; $661F: $00
    add b                                         ; $6620: $80
    nop                                           ; $6621: $00
    ret nz                                        ; $6622: $C0

    add b                                         ; $6623: $80
    ret nz                                        ; $6624: $C0

    nop                                           ; $6625: $00
    nop                                           ; $6626: $00
    nop                                           ; $6627: $00
    nop                                           ; $6628: $00

jr_00D_6629:
    nop                                           ; $6629: $00
    nop                                           ; $662A: $00
    nop                                           ; $662B: $00
    nop                                           ; $662C: $00
    nop                                           ; $662D: $00
    nop                                           ; $662E: $00
    nop                                           ; $662F: $00
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    nop                                           ; $6632: $00
    nop                                           ; $6633: $00
    nop                                           ; $6634: $00
    nop                                           ; $6635: $00
    nop                                           ; $6636: $00
    nop                                           ; $6637: $00
    nop                                           ; $6638: $00
    nop                                           ; $6639: $00
    nop                                           ; $663A: $00
    nop                                           ; $663B: $00
    nop                                           ; $663C: $00
    nop                                           ; $663D: $00
    nop                                           ; $663E: $00
    nop                                           ; $663F: $00
    nop                                           ; $6640: $00
    nop                                           ; $6641: $00
    inc bc                                        ; $6642: $03
    nop                                           ; $6643: $00
    inc c                                         ; $6644: $0C
    inc bc                                        ; $6645: $03
    dec e                                         ; $6646: $1D
    ld [bc], a                                    ; $6647: $02
    ld l, l                                       ; $6648: $6D
    ld a, [de]                                    ; $6649: $1A
    ld e, a                                       ; $664A: $5F
    jr nz, jr_00D_668A                            ; $664B: $20 $3D

    ld a, [de]                                    ; $664D: $1A
    ld a, [hl]                                    ; $664E: $7E
    ld bc, $789F                                  ; $664F: $01 $9F $78
    rst RST_38                                    ; $6652: $FF
    nop                                           ; $6653: $00
    ld a, a                                       ; $6654: $7F
    dec l                                         ; $6655: $2D
    ld e, a                                       ; $6656: $5F
    ld a, [hl+]                                   ; $6657: $2A
    ld a, a                                       ; $6658: $7F
    ld [de], a                                    ; $6659: $12
    ld a, a                                       ; $665A: $7F
    dec d                                         ; $665B: $15
    ld e, a                                       ; $665C: $5F
    dec h                                         ; $665D: $25
    ld b, a                                       ; $665E: $47
    jr c, @-$0E                                   ; $665F: $38 $F0

    nop                                           ; $6661: $00
    db $10                                        ; $6662: $10
    ldh [$FFF0], a                                ; $6663: $E0 $F0
    nop                                           ; $6665: $00
    db $FC                                        ; $6666: $FC
    nop                                           ; $6667: $00
    ldh a, [c]                                    ; $6668: $F2
    inc e                                         ; $6669: $1C
    db $FC                                        ; $666A: $FC
    nop                                           ; $666B: $00
    ld a, [$FE1C]                                 ; $666C: $FA $1C $FE
    nop                                           ; $666F: $00
    dec e                                         ; $6670: $1D
    xor $FF                                       ; $6671: $EE $FF
    nop                                           ; $6673: $00
    cp $5C                                        ; $6674: $FE $5C
    db $FC                                        ; $6676: $FC
    and b                                         ; $6677: $A0
    ld hl, sp-$70                                 ; $6678: $F8 $90
    db $FC                                        ; $667A: $FC
    ld c, b                                       ; $667B: $48
    db $FC                                        ; $667C: $FC
    jr nc, jr_00D_66F3                            ; $667D: $30 $74

    adc b                                         ; $667F: $88
    inc bc                                        ; $6680: $03
    ld bc, $0003                                  ; $6681: $01 $03 $00
    rlca                                          ; $6684: $07
    ld bc, $060F                                  ; $6685: $01 $0F $06
    rra                                           ; $6688: $1F
    dec b                                         ; $6689: $05

jr_00D_668A:
    scf                                           ; $668A: $37
    ld a, [de]                                    ; $668B: $1A
    ld [hl], a                                    ; $668C: $77
    add hl, sp                                    ; $668D: $39
    adc a                                         ; $668E: $8F
    ld [hl], d                                    ; $668F: $72
    cp a                                          ; $6690: $BF
    ld b, l                                       ; $6691: $45
    ld a, a                                       ; $6692: $7F
    ld [bc], a                                    ; $6693: $02
    cpl                                           ; $6694: $2F
    dec d                                         ; $6695: $15
    ld c, a                                       ; $6696: $4F
    ld [hl-], a                                   ; $6697: $32
    ld a, a                                       ; $6698: $7F
    ld bc, $0007                                  ; $6699: $01 $07 $00
    rlca                                          ; $669C: $07
    nop                                           ; $669D: $00
    nop                                           ; $669E: $00
    nop                                           ; $669F: $00
    ldh [$FF80], a                                ; $66A0: $E0 $80
    ld hl, sp-$80                                 ; $66A2: $F8 $80
    ld hl, sp-$50                                 ; $66A4: $F8 $B0
    di                                            ; $66A6: $F3
    nop                                           ; $66A7: $00
    db $FC                                        ; $66A8: $FC
    di                                            ; $66A9: $F3
    ld hl, sp+$07                                 ; $66AA: $F8 $07
    db $FC                                        ; $66AC: $FC
    xor e                                         ; $66AD: $AB
    db $FD                                        ; $66AE: $FD
    ld [hl+], a                                   ; $66AF: $22
    or $AD                                        ; $66B0: $F6 $AD
    rst RST_30                                    ; $66B2: $F7
    inc l                                         ; $66B3: $2C
    rst RST_38                                    ; $66B4: $FF
    or d                                          ; $66B5: $B2
    cp $39                                        ; $66B6: $FE $39
    rst RST_38                                    ; $66B8: $FF
    ret nz                                        ; $66B9: $C0

    pop hl                                        ; $66BA: $E1
    nop                                           ; $66BB: $00
    jp nz, Jump_000_0301                          ; $66BC: $C2 $01 $03

    nop                                           ; $66BF: $00
    ld bc, $0600                                  ; $66C0: $01 $00 $06
    ld bc, $0718                                  ; $66C3: $01 $18 $07
    ldh [$FF1F], a                                ; $66C6: $E0 $1F
    nop                                           ; $66C8: $00
    rst RST_38                                    ; $66C9: $FF
    ld bc, $61FE                                  ; $66CA: $01 $FE $61
    sbc [hl]                                      ; $66CD: $9E
    sub c                                         ; $66CE: $91
    ld l, [hl]                                    ; $66CF: $6E
    db $10                                        ; $66D0: $10
    rst RST_28                                    ; $66D1: $EF
    ld de, $16EE                                  ; $66D2: $11 $EE $16
    add sp, -$66                                  ; $66D5: $E8 $9A
    ld h, h                                       ; $66D7: $64
    cp $00                                        ; $66D8: $FE $00
    cp $00                                        ; $66DA: $FE $00
    sbc h                                         ; $66DC: $9C
    ld h, b                                       ; $66DD: $60
    ldh a, [rP1]                                  ; $66DE: $F0 $00
    rst RST_30                                    ; $66E0: $F7
    inc bc                                        ; $66E1: $03
    rrca                                          ; $66E2: $0F
    db $F4                                        ; $66E3: $F4
    ld b, $F8                                     ; $66E4: $06 $F8
    ld [bc], a                                    ; $66E6: $02
    db $FC                                        ; $66E7: $FC
    ld [bc], a                                    ; $66E8: $02
    db $FC                                        ; $66E9: $FC
    ld [bc], a                                    ; $66EA: $02
    db $FC                                        ; $66EB: $FC
    ld [bc], a                                    ; $66EC: $02
    db $FC                                        ; $66ED: $FC
    rlca                                          ; $66EE: $07
    ld hl, sp-$7F                                 ; $66EF: $F8 $81
    ld a, [hl]                                    ; $66F1: $7E
    pop bc                                        ; $66F2: $C1

jr_00D_66F3:
    ld a, $3C                                     ; $66F3: $3E $3C
    inc bc                                        ; $66F5: $03
    ld [bc], a                                    ; $66F6: $02
    ld bc, $0003                                  ; $66F7: $01 $03 $00
    rrca                                          ; $66FA: $0F
    nop                                           ; $66FB: $00
    inc d                                         ; $66FC: $14
    dec bc                                        ; $66FD: $0B
    rra                                           ; $66FE: $1F
    nop                                           ; $66FF: $00
    nop                                           ; $6700: $00
    nop                                           ; $6701: $00
    nop                                           ; $6702: $00
    nop                                           ; $6703: $00
    nop                                           ; $6704: $00
    nop                                           ; $6705: $00
    nop                                           ; $6706: $00
    nop                                           ; $6707: $00
    nop                                           ; $6708: $00
    nop                                           ; $6709: $00
    nop                                           ; $670A: $00
    nop                                           ; $670B: $00
    inc a                                         ; $670C: $3C
    nop                                           ; $670D: $00
    ld a, $1C                                     ; $670E: $3E $1C
    ld a, $1C                                     ; $6710: $3E $1C
    rra                                           ; $6712: $1F
    ld [bc], a                                    ; $6713: $02
    rlca                                          ; $6714: $07
    ld [bc], a                                    ; $6715: $02
    rlca                                          ; $6716: $07
    ld [bc], a                                    ; $6717: $02
    ld c, $04                                     ; $6718: $0E $04
    db $FC                                        ; $671A: $FC
    ld [$F0F8], sp                                ; $671B: $08 $F8 $F0
    ldh a, [rP1]                                  ; $671E: $F0 $00
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00
    nop                                           ; $6724: $00
    nop                                           ; $6725: $00
    nop                                           ; $6726: $00
    nop                                           ; $6727: $00
    nop                                           ; $6728: $00
    nop                                           ; $6729: $00
    nop                                           ; $672A: $00

jr_00D_672B:
    nop                                           ; $672B: $00
    nop                                           ; $672C: $00
    nop                                           ; $672D: $00
    nop                                           ; $672E: $00
    nop                                           ; $672F: $00
    nop                                           ; $6730: $00
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    nop                                           ; $6734: $00
    nop                                           ; $6735: $00
    ld [hl], b                                    ; $6736: $70
    nop                                           ; $6737: $00
    ret nc                                        ; $6738: $D0

    jr nz, jr_00D_672B                            ; $6739: $20 $F0

    ld b, b                                       ; $673B: $40

Jump_00D_673C:
    add sp, $50                                   ; $673C: $E8 $50
    add sp, $50                                   ; $673E: $E8 $50
    add b                                         ; $6740: $80
    nop                                           ; $6741: $00
    add b                                         ; $6742: $80
    nop                                           ; $6743: $00
    ret nz                                        ; $6744: $C0

    nop                                           ; $6745: $00
    ret nz                                        ; $6746: $C0

    nop                                           ; $6747: $00
    ret nz                                        ; $6748: $C0

    nop                                           ; $6749: $00
    add b                                         ; $674A: $80
    nop                                           ; $674B: $00
    nop                                           ; $674C: $00
    nop                                           ; $674D: $00
    nop                                           ; $674E: $00
    nop                                           ; $674F: $00
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    nop                                           ; $6752: $00
    nop                                           ; $6753: $00
    nop                                           ; $6754: $00
    nop                                           ; $6755: $00
    nop                                           ; $6756: $00
    nop                                           ; $6757: $00
    nop                                           ; $6758: $00
    nop                                           ; $6759: $00
    nop                                           ; $675A: $00
    nop                                           ; $675B: $00
    nop                                           ; $675C: $00
    nop                                           ; $675D: $00
    nop                                           ; $675E: $00
    nop                                           ; $675F: $00
    rlca                                          ; $6760: $07
    nop                                           ; $6761: $00
    rst RST_38                                    ; $6762: $FF
    inc bc                                        ; $6763: $03
    and d                                         ; $6764: $A2
    ld a, l                                       ; $6765: $7D
    and e                                         ; $6766: $A3
    ld a, h                                       ; $6767: $7C
    rst RST_38                                    ; $6768: $FF
    nop                                           ; $6769: $00
    nop                                           ; $676A: $00
    nop                                           ; $676B: $00
    ld bc, $0200                                  ; $676C: $01 $00 $02
    ld bc, $0102                                  ; $676F: $01 $02 $01
    rrca                                          ; $6772: $0F
    nop                                           ; $6773: $00
    dec bc                                        ; $6774: $0B

jr_00D_6775:
    rlca                                          ; $6775: $07
    dec bc                                        ; $6776: $0B
    rlca                                          ; $6777: $07
    rrca                                          ; $6778: $0F
    nop                                           ; $6779: $00
    ld bc, $0100                                  ; $677A: $01 $00 $01
    nop                                           ; $677D: $00
    nop                                           ; $677E: $00
    nop                                           ; $677F: $00
    ldh [rP1], a                                  ; $6780: $E0 $00
    rst RST_38                                    ; $6782: $FF
    ldh [$FF7F], a                                ; $6783: $E0 $7F
    adc [hl]                                      ; $6785: $8E
    rst RST_38                                    ; $6786: $FF
    ld a, d                                       ; $6787: $7A
    rst RST_38                                    ; $6788: $FF
    nop                                           ; $6789: $00
    rst RST_38                                    ; $678A: $FF
    rla                                           ; $678B: $17
    rst RST_18                                    ; $678C: $DF
    add sp, $1F                                   ; $678D: $E8 $1F
    rst RST_20                                    ; $678F: $E7
    rst RST_38                                    ; $6790: $FF
    nop                                           ; $6791: $00
    rst RST_28                                    ; $6792: $EF
    rra                                           ; $6793: $1F
    jr z, jr_00D_6775                             ; $6794: $28 $DF

    rra                                           ; $6796: $1F
    ldh [rIE], a                                  ; $6797: $E0 $FF
    add hl, bc                                    ; $6799: $09
    ccf                                           ; $679A: $3F
    call nz, Call_000_00DF                        ; $679B: $C4 $DF $00
    rra                                           ; $679E: $1F
    nop                                           ; $679F: $00
    nop                                           ; $67A0: $00
    nop                                           ; $67A1: $00
    ldh [rP1], a                                  ; $67A2: $E0 $00
    ldh [$FFC0], a                                ; $67A4: $E0 $C0
    rst RST_08                                    ; $67A6: $CF
    nop                                           ; $67A7: $00
    ldh a, [$FFCF]                                ; $67A8: $F0 $CF
    ldh [$FF1F], a                                ; $67AA: $E0 $1F
    ld sp, hl                                     ; $67AC: $F9
    and $FE                                       ; $67AD: $E6 $FE
    ld bc, $0DFE                                  ; $67AF: $01 $FE $0D
    cp $0D                                        ; $67B2: $FE $0D
    db $FC                                        ; $67B4: $FC
    dec bc                                        ; $67B5: $0B
    ld a, [$FF85]                                 ; $67B6: $FA $85 $FF
    nop                                           ; $67B9: $00
    add a                                         ; $67BA: $87
    nop                                           ; $67BB: $00
    ld a, [bc]                                    ; $67BC: $0A
    dec b                                         ; $67BD: $05
    rrca                                          ; $67BE: $0F
    nop                                           ; $67BF: $00
    rlca                                          ; $67C0: $07
    nop                                           ; $67C1: $00
    jr jr_00D_67CB                                ; $67C2: $18 $07

    ld h, b                                       ; $67C4: $60
    rra                                           ; $67C5: $1F

jr_00D_67C6:
    add b                                         ; $67C6: $80
    ld a, a                                       ; $67C7: $7F
    nop                                           ; $67C8: $00
    rst RST_38                                    ; $67C9: $FF
    inc b                                         ; $67CA: $04

jr_00D_67CB:
    ei                                            ; $67CB: $FB
    add h                                         ; $67CC: $84
    ld a, e                                       ; $67CD: $7B
    ld b, h                                       ; $67CE: $44
    cp e                                          ; $67CF: $BB
    ld b, d                                       ; $67D0: $42
    cp l                                          ; $67D1: $BD
    ld b, a                                       ; $67D2: $47
    cp b                                          ; $67D3: $B8
    ld e, b                                       ; $67D4: $58
    and b                                         ; $67D5: $A0
    ld l, b                                       ; $67D6: $68
    sub b                                         ; $67D7: $90
    ld hl, sp+$00                                 ; $67D8: $F8 $00
    ld hl, sp+$00                                 ; $67DA: $F8 $00
    ld [hl], b                                    ; $67DC: $70
    add b                                         ; $67DD: $80
    ret nz                                        ; $67DE: $C0

    nop                                           ; $67DF: $00
    call c, Call_000_3808                         ; $67E0: $DC $08 $38
    ret nc                                        ; $67E3: $D0

    jr jr_00D_67C6                                ; $67E4: $18 $E0

    ld [$08F0], sp                                ; $67E6: $08 $F0 $08
    ldh a, [$FF08]                                ; $67E9: $F0 $08
    ldh a, [$FF08]                                ; $67EB: $F0 $08
    ldh a, [rNR32]                                ; $67ED: $F0 $1C
    ldh [rDIV], a                                 ; $67EF: $E0 $04
    ld hl, sp+$04                                 ; $67F1: $F8 $04
    ld hl, sp-$0E                                 ; $67F3: $F8 $F2
    inc c                                         ; $67F5: $0C
    ld a, [bc]                                    ; $67F6: $0A
    inc b                                         ; $67F7: $04
    rrca                                          ; $67F8: $0F
    nop                                           ; $67F9: $00
    ccf                                           ; $67FA: $3F
    nop                                           ; $67FB: $00
    ld d, e                                       ; $67FC: $53
    inc l                                         ; $67FD: $2C
    ld a, [hl]                                    ; $67FE: $7E
    nop                                           ; $67FF: $00
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00
    nop                                           ; $6802: $00
    nop                                           ; $6803: $00
    nop                                           ; $6804: $00
    nop                                           ; $6805: $00
    nop                                           ; $6806: $00
    nop                                           ; $6807: $00
    nop                                           ; $6808: $00
    nop                                           ; $6809: $00
    nop                                           ; $680A: $00
    nop                                           ; $680B: $00
    nop                                           ; $680C: $00
    nop                                           ; $680D: $00
    nop                                           ; $680E: $00
    nop                                           ; $680F: $00
    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    nop                                           ; $6812: $00

jr_00D_6813:
    nop                                           ; $6813: $00
    rrca                                          ; $6814: $0F
    nop                                           ; $6815: $00
    ccf                                           ; $6816: $3F
    rrca                                          ; $6817: $0F
    ld a, a                                       ; $6818: $7F
    jr nc, jr_00D_6813                            ; $6819: $30 $F8

    ld [hl], b                                    ; $681B: $70
    ld hl, sp+$70                                 ; $681C: $F8 $70
    ld [hl], b                                    ; $681E: $70
    nop                                           ; $681F: $00
    nop                                           ; $6820: $00
    nop                                           ; $6821: $00
    nop                                           ; $6822: $00
    nop                                           ; $6823: $00
    nop                                           ; $6824: $00
    nop                                           ; $6825: $00
    nop                                           ; $6826: $00
    nop                                           ; $6827: $00
    nop                                           ; $6828: $00
    nop                                           ; $6829: $00
    nop                                           ; $682A: $00
    nop                                           ; $682B: $00
    nop                                           ; $682C: $00
    nop                                           ; $682D: $00
    nop                                           ; $682E: $00
    nop                                           ; $682F: $00
    nop                                           ; $6830: $00
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    nop                                           ; $6833: $00
    nop                                           ; $6834: $00
    nop                                           ; $6835: $00
    ret nz                                        ; $6836: $C0

    nop                                           ; $6837: $00
    ldh [$FFC0], a                                ; $6838: $E0 $C0
    ldh [rLCDC], a                                ; $683A: $E0 $40
    ld [hl], b                                    ; $683C: $70
    jr nz, jr_00D_68AF                            ; $683D: $20 $70

    jr nz, jr_00D_687D                            ; $683F: $20 $3C

    inc bc                                        ; $6841: $03
    ccf                                           ; $6842: $3F
    inc e                                         ; $6843: $1C
    rra                                           ; $6844: $1F
    rlca                                          ; $6845: $07
    rlca                                          ; $6846: $07
    ld bc, $001F                                  ; $6847: $01 $1F $00
    ccf                                           ; $684A: $3F
    dec b                                         ; $684B: $05
    ld [hl], a                                    ; $684C: $77
    ld a, [hl-]                                   ; $684D: $3A
    add a                                         ; $684E: $87
    ld a, c                                       ; $684F: $79
    cp a                                          ; $6850: $BF
    ld b, b                                       ; $6851: $40
    db $EB                                        ; $6852: $EB
    rlca                                          ; $6853: $07
    ld a, [bc]                                    ; $6854: $0A
    rlca                                          ; $6855: $07
    rra                                           ; $6856: $1F
    nop                                           ; $6857: $00
    cpl                                           ; $6858: $2F
    ld [de], a                                    ; $6859: $12
    ld c, a                                       ; $685A: $4F
    ld sp, $0077                                  ; $685B: $31 $77 $00
    rlca                                          ; $685E: $07
    nop                                           ; $685F: $00
    add b                                         ; $6860: $80
    nop                                           ; $6861: $00
    add b                                         ; $6862: $80
    nop                                           ; $6863: $00
    ld hl, sp-$80                                 ; $6864: $F8 $80
    ld sp, hl                                     ; $6866: $F9
    or b                                          ; $6867: $B0
    or $01                                        ; $6868: $F6 $01
    ld hl, sp-$09                                 ; $686A: $F8 $F7
    ld hl, sp+$07                                 ; $686C: $F8 $07
    db $FD                                        ; $686E: $FD
    ld a, [$00FF]                                 ; $686F: $FA $FF $00
    rst RST_38                                    ; $6872: $FF
    db $D3                                        ; $6873: $D3
    cpl                                           ; $6874: $2F
    db $D3                                        ; $6875: $D3
    rst RST_38                                    ; $6876: $FF
    ld [bc], a                                    ; $6877: $02
    cp $61                                        ; $6878: $FE $61
    rst RST_38                                    ; $687A: $FF
    nop                                           ; $687B: $00
    ldh [c], a                                    ; $687C: $E2

jr_00D_687D:
    ld bc, $00C3                                  ; $687D: $01 $C3 $00
    ld bc, $0600                                  ; $6880: $01 $00 $06
    ld bc, $0718                                  ; $6883: $01 $18 $07
    ldh [$FF1F], a                                ; $6886: $E0 $1F
    nop                                           ; $6888: $00
    rst RST_38                                    ; $6889: $FF
    ld bc, $61FE                                  ; $688A: $01 $FE $61
    sbc [hl]                                      ; $688D: $9E
    sub c                                         ; $688E: $91
    ld l, [hl]                                    ; $688F: $6E
    db $10                                        ; $6890: $10
    rst RST_28                                    ; $6891: $EF
    sub c                                         ; $6892: $91
    ld l, [hl]                                    ; $6893: $6E
    sub [hl]                                      ; $6894: $96
    ld l, b                                       ; $6895: $68
    sbc d                                         ; $6896: $9A
    ld h, h                                       ; $6897: $64
    cp $00                                        ; $6898: $FE $00
    cp $00                                        ; $689A: $FE $00
    sbc h                                         ; $689C: $9C
    ld h, b                                       ; $689D: $60
    ldh a, [rP1]                                  ; $689E: $F0 $00
    cp $04                                        ; $68A0: $FE $04
    ld c, $F4                                     ; $68A2: $0E $F4
    ld b, $F8                                     ; $68A4: $06 $F8
    ld [bc], a                                    ; $68A6: $02
    db $FC                                        ; $68A7: $FC
    ld [bc], a                                    ; $68A8: $02
    db $FC                                        ; $68A9: $FC
    ld [bc], a                                    ; $68AA: $02
    db $FC                                        ; $68AB: $FC
    ld [bc], a                                    ; $68AC: $02
    db $FC                                        ; $68AD: $FC
    rlca                                          ; $68AE: $07

jr_00D_68AF:
    ld hl, sp-$7F                                 ; $68AF: $F8 $81
    ld a, [hl]                                    ; $68B1: $7E
    pop bc                                        ; $68B2: $C1
    ld a, $3C                                     ; $68B3: $3E $3C
    inc bc                                        ; $68B5: $03
    ld [bc], a                                    ; $68B6: $02
    ld bc, $0003                                  ; $68B7: $01 $03 $00
    rrca                                          ; $68BA: $0F
    nop                                           ; $68BB: $00
    inc d                                         ; $68BC: $14
    dec bc                                        ; $68BD: $0B
    rra                                           ; $68BE: $1F
    nop                                           ; $68BF: $00
    nop                                           ; $68C0: $00
    nop                                           ; $68C1: $00
    nop                                           ; $68C2: $00
    nop                                           ; $68C3: $00
    nop                                           ; $68C4: $00
    nop                                           ; $68C5: $00
    nop                                           ; $68C6: $00
    nop                                           ; $68C7: $00
    nop                                           ; $68C8: $00
    nop                                           ; $68C9: $00
    nop                                           ; $68CA: $00
    nop                                           ; $68CB: $00
    nop                                           ; $68CC: $00
    nop                                           ; $68CD: $00
    nop                                           ; $68CE: $00
    nop                                           ; $68CF: $00
    nop                                           ; $68D0: $00
    nop                                           ; $68D1: $00
    nop                                           ; $68D2: $00
    nop                                           ; $68D3: $00
    nop                                           ; $68D4: $00
    nop                                           ; $68D5: $00
    nop                                           ; $68D6: $00
    nop                                           ; $68D7: $00
    nop                                           ; $68D8: $00
    nop                                           ; $68D9: $00
    nop                                           ; $68DA: $00
    nop                                           ; $68DB: $00
    jr c, jr_00D_68DE                             ; $68DC: $38 $00

jr_00D_68DE:
    daa                                           ; $68DE: $27
    jr jr_00D_68E1                                ; $68DF: $18 $00

jr_00D_68E1:
    nop                                           ; $68E1: $00
    nop                                           ; $68E2: $00
    nop                                           ; $68E3: $00
    nop                                           ; $68E4: $00
    nop                                           ; $68E5: $00
    nop                                           ; $68E6: $00
    nop                                           ; $68E7: $00
    nop                                           ; $68E8: $00
    nop                                           ; $68E9: $00
    nop                                           ; $68EA: $00
    nop                                           ; $68EB: $00
    nop                                           ; $68EC: $00
    nop                                           ; $68ED: $00
    nop                                           ; $68EE: $00
    nop                                           ; $68EF: $00
    nop                                           ; $68F0: $00
    nop                                           ; $68F1: $00
    jr nc, jr_00D_68F4                            ; $68F2: $30 $00

jr_00D_68F4:
    ld a, c                                       ; $68F4: $79
    jr nc, @+$01                                  ; $68F5: $30 $FF

    ld c, c                                       ; $68F7: $49
    rst RST_28                                    ; $68F8: $EF
    ld b, e                                       ; $68F9: $43
    rst RST_20                                    ; $68FA: $E7
    ld b, e                                       ; $68FB: $43
    ld [hl], e                                    ; $68FC: $73
    jr nz, jr_00D_6937                            ; $68FD: $20 $38

    stop                                          ; $68FF: $10 $00
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    nop                                           ; $6908: $00
    nop                                           ; $6909: $00
    nop                                           ; $690A: $00
    nop                                           ; $690B: $00
    nop                                           ; $690C: $00
    nop                                           ; $690D: $00
    nop                                           ; $690E: $00
    nop                                           ; $690F: $00
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    nop                                           ; $6914: $00
    nop                                           ; $6915: $00
    nop                                           ; $6916: $00
    nop                                           ; $6917: $00
    add b                                         ; $6918: $80
    nop                                           ; $6919: $00
    add b                                         ; $691A: $80
    nop                                           ; $691B: $00
    add b                                         ; $691C: $80
    nop                                           ; $691D: $00
    add b                                         ; $691E: $80
    nop                                           ; $691F: $00
    add b                                         ; $6920: $80
    nop                                           ; $6921: $00
    add b                                         ; $6922: $80
    nop                                           ; $6923: $00
    ret nz                                        ; $6924: $C0

    nop                                           ; $6925: $00
    ret nz                                        ; $6926: $C0

    nop                                           ; $6927: $00
    ret nz                                        ; $6928: $C0

    nop                                           ; $6929: $00
    add b                                         ; $692A: $80
    nop                                           ; $692B: $00
    nop                                           ; $692C: $00
    nop                                           ; $692D: $00
    nop                                           ; $692E: $00
    nop                                           ; $692F: $00
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00

jr_00D_6937:
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00
    nop                                           ; $6939: $00
    nop                                           ; $693A: $00
    nop                                           ; $693B: $00
    nop                                           ; $693C: $00
    nop                                           ; $693D: $00
    nop                                           ; $693E: $00
    nop                                           ; $693F: $00
    rst RST_38                                    ; $6940: $FF
    rst RST_38                                    ; $6941: $FF
    rst RST_38                                    ; $6942: $FF
    rst RST_38                                    ; $6943: $FF
    rst RST_38                                    ; $6944: $FF
    rst RST_38                                    ; $6945: $FF
    rst RST_38                                    ; $6946: $FF
    rst RST_38                                    ; $6947: $FF
    rst RST_38                                    ; $6948: $FF
    rst RST_38                                    ; $6949: $FF
    rst RST_38                                    ; $694A: $FF
    rst RST_38                                    ; $694B: $FF
    rst RST_38                                    ; $694C: $FF
    rst RST_38                                    ; $694D: $FF
    rst RST_38                                    ; $694E: $FF
    rst RST_38                                    ; $694F: $FF
    rst RST_38                                    ; $6950: $FF
    rst RST_38                                    ; $6951: $FF
    rst RST_38                                    ; $6952: $FF
    rst RST_38                                    ; $6953: $FF
    rst RST_38                                    ; $6954: $FF
    rst RST_38                                    ; $6955: $FF
    rst RST_38                                    ; $6956: $FF
    rst RST_38                                    ; $6957: $FF
    rst RST_38                                    ; $6958: $FF
    rst RST_38                                    ; $6959: $FF
    rst RST_38                                    ; $695A: $FF
    rst RST_38                                    ; $695B: $FF
    rst RST_38                                    ; $695C: $FF
    rst RST_38                                    ; $695D: $FF
    rst RST_38                                    ; $695E: $FF
    rst RST_38                                    ; $695F: $FF
    rst RST_38                                    ; $6960: $FF
    rst RST_38                                    ; $6961: $FF
    rst RST_38                                    ; $6962: $FF
    rst RST_38                                    ; $6963: $FF
    rst RST_38                                    ; $6964: $FF
    rst RST_38                                    ; $6965: $FF
    rst RST_38                                    ; $6966: $FF
    rst RST_38                                    ; $6967: $FF
    rst RST_38                                    ; $6968: $FF
    rst RST_38                                    ; $6969: $FF
    rst RST_38                                    ; $696A: $FF
    rst RST_38                                    ; $696B: $FF
    rst RST_38                                    ; $696C: $FF
    rst RST_38                                    ; $696D: $FF
    rst RST_38                                    ; $696E: $FF
    rst RST_38                                    ; $696F: $FF
    rst RST_38                                    ; $6970: $FF
    rst RST_38                                    ; $6971: $FF
    rst RST_38                                    ; $6972: $FF
    rst RST_38                                    ; $6973: $FF
    rst RST_38                                    ; $6974: $FF
    rst RST_38                                    ; $6975: $FF
    rst RST_38                                    ; $6976: $FF
    rst RST_38                                    ; $6977: $FF
    rst RST_38                                    ; $6978: $FF
    rst RST_38                                    ; $6979: $FF
    rst RST_38                                    ; $697A: $FF
    rst RST_38                                    ; $697B: $FF
    rst RST_38                                    ; $697C: $FF
    rst RST_38                                    ; $697D: $FF
    rst RST_38                                    ; $697E: $FF
    rst RST_38                                    ; $697F: $FF
    rst RST_38                                    ; $6980: $FF
    rst RST_38                                    ; $6981: $FF
    rst RST_38                                    ; $6982: $FF
    rst RST_38                                    ; $6983: $FF
    rst RST_38                                    ; $6984: $FF
    rst RST_38                                    ; $6985: $FF
    rst RST_38                                    ; $6986: $FF
    rst RST_38                                    ; $6987: $FF
    rst RST_38                                    ; $6988: $FF
    rst RST_38                                    ; $6989: $FF
    rst RST_38                                    ; $698A: $FF
    rst RST_38                                    ; $698B: $FF
    rst RST_38                                    ; $698C: $FF
    rst RST_38                                    ; $698D: $FF
    rst RST_38                                    ; $698E: $FF
    rst RST_38                                    ; $698F: $FF
    rst RST_38                                    ; $6990: $FF
    rst RST_38                                    ; $6991: $FF
    rst RST_38                                    ; $6992: $FF
    rst RST_38                                    ; $6993: $FF
    rst RST_38                                    ; $6994: $FF
    rst RST_38                                    ; $6995: $FF
    rst RST_38                                    ; $6996: $FF
    rst RST_38                                    ; $6997: $FF
    rst RST_38                                    ; $6998: $FF
    rst RST_38                                    ; $6999: $FF
    rst RST_38                                    ; $699A: $FF
    rst RST_38                                    ; $699B: $FF
    rst RST_38                                    ; $699C: $FF
    rst RST_38                                    ; $699D: $FF
    rst RST_38                                    ; $699E: $FF
    rst RST_38                                    ; $699F: $FF
    rst RST_38                                    ; $69A0: $FF
    rst RST_38                                    ; $69A1: $FF
    rst RST_38                                    ; $69A2: $FF
    rst RST_38                                    ; $69A3: $FF
    rst RST_38                                    ; $69A4: $FF
    rst RST_38                                    ; $69A5: $FF
    rst RST_38                                    ; $69A6: $FF
    rst RST_38                                    ; $69A7: $FF
    rst RST_38                                    ; $69A8: $FF
    rst RST_38                                    ; $69A9: $FF
    rst RST_38                                    ; $69AA: $FF
    rst RST_38                                    ; $69AB: $FF
    rst RST_38                                    ; $69AC: $FF
    rst RST_38                                    ; $69AD: $FF
    rst RST_38                                    ; $69AE: $FF
    rst RST_38                                    ; $69AF: $FF
    rst RST_38                                    ; $69B0: $FF
    rst RST_38                                    ; $69B1: $FF
    rst RST_38                                    ; $69B2: $FF
    rst RST_38                                    ; $69B3: $FF
    rst RST_38                                    ; $69B4: $FF
    rst RST_38                                    ; $69B5: $FF
    rst RST_38                                    ; $69B6: $FF
    rst RST_38                                    ; $69B7: $FF
    rst RST_38                                    ; $69B8: $FF
    rst RST_38                                    ; $69B9: $FF
    rst RST_38                                    ; $69BA: $FF
    rst RST_38                                    ; $69BB: $FF
    rst RST_38                                    ; $69BC: $FF
    rst RST_38                                    ; $69BD: $FF
    rst RST_38                                    ; $69BE: $FF
    rst RST_38                                    ; $69BF: $FF
    rst RST_38                                    ; $69C0: $FF
    rst RST_38                                    ; $69C1: $FF
    rst RST_38                                    ; $69C2: $FF
    rst RST_38                                    ; $69C3: $FF
    rst RST_38                                    ; $69C4: $FF
    rst RST_38                                    ; $69C5: $FF
    rst RST_38                                    ; $69C6: $FF
    rst RST_38                                    ; $69C7: $FF
    rst RST_38                                    ; $69C8: $FF
    rst RST_38                                    ; $69C9: $FF
    rst RST_38                                    ; $69CA: $FF
    rst RST_38                                    ; $69CB: $FF
    rst RST_38                                    ; $69CC: $FF
    rst RST_38                                    ; $69CD: $FF
    rst RST_38                                    ; $69CE: $FF
    rst RST_38                                    ; $69CF: $FF
    rst RST_38                                    ; $69D0: $FF
    rst RST_38                                    ; $69D1: $FF
    rst RST_38                                    ; $69D2: $FF
    rst RST_38                                    ; $69D3: $FF
    rst RST_38                                    ; $69D4: $FF
    rst RST_38                                    ; $69D5: $FF
    rst RST_38                                    ; $69D6: $FF
    rst RST_38                                    ; $69D7: $FF
    rst RST_38                                    ; $69D8: $FF
    rst RST_38                                    ; $69D9: $FF
    rst RST_38                                    ; $69DA: $FF
    rst RST_38                                    ; $69DB: $FF
    rst RST_38                                    ; $69DC: $FF
    rst RST_38                                    ; $69DD: $FF
    rst RST_38                                    ; $69DE: $FF
    rst RST_38                                    ; $69DF: $FF
    rst RST_38                                    ; $69E0: $FF
    rst RST_38                                    ; $69E1: $FF
    rst RST_38                                    ; $69E2: $FF
    rst RST_38                                    ; $69E3: $FF
    rst RST_38                                    ; $69E4: $FF
    rst RST_38                                    ; $69E5: $FF
    rst RST_38                                    ; $69E6: $FF
    rst RST_38                                    ; $69E7: $FF
    rst RST_38                                    ; $69E8: $FF
    rst RST_38                                    ; $69E9: $FF
    rst RST_38                                    ; $69EA: $FF
    rst RST_38                                    ; $69EB: $FF
    rst RST_38                                    ; $69EC: $FF
    rst RST_38                                    ; $69ED: $FF
    rst RST_38                                    ; $69EE: $FF
    rst RST_38                                    ; $69EF: $FF
    rst RST_38                                    ; $69F0: $FF
    rst RST_38                                    ; $69F1: $FF
    rst RST_38                                    ; $69F2: $FF
    rst RST_38                                    ; $69F3: $FF
    rst RST_38                                    ; $69F4: $FF
    rst RST_38                                    ; $69F5: $FF
    rst RST_38                                    ; $69F6: $FF
    rst RST_38                                    ; $69F7: $FF
    rst RST_38                                    ; $69F8: $FF
    rst RST_38                                    ; $69F9: $FF
    rst RST_38                                    ; $69FA: $FF
    rst RST_38                                    ; $69FB: $FF
    rst RST_38                                    ; $69FC: $FF
    rst RST_38                                    ; $69FD: $FF
    rst RST_38                                    ; $69FE: $FF
    rst RST_38                                    ; $69FF: $FF
    rst RST_38                                    ; $6A00: $FF
    rst RST_38                                    ; $6A01: $FF
    rst RST_38                                    ; $6A02: $FF
    rst RST_38                                    ; $6A03: $FF
    rst RST_38                                    ; $6A04: $FF
    rst RST_38                                    ; $6A05: $FF
    rst RST_38                                    ; $6A06: $FF
    rst RST_38                                    ; $6A07: $FF
    rst RST_38                                    ; $6A08: $FF
    rst RST_38                                    ; $6A09: $FF
    rst RST_38                                    ; $6A0A: $FF
    rst RST_38                                    ; $6A0B: $FF
    rst RST_38                                    ; $6A0C: $FF
    rst RST_38                                    ; $6A0D: $FF
    rst RST_38                                    ; $6A0E: $FF
    rst RST_38                                    ; $6A0F: $FF
    rst RST_38                                    ; $6A10: $FF
    rst RST_38                                    ; $6A11: $FF
    rst RST_38                                    ; $6A12: $FF
    rst RST_38                                    ; $6A13: $FF
    rst RST_38                                    ; $6A14: $FF
    rst RST_38                                    ; $6A15: $FF
    rst RST_38                                    ; $6A16: $FF
    rst RST_38                                    ; $6A17: $FF
    rst RST_38                                    ; $6A18: $FF
    rst RST_38                                    ; $6A19: $FF
    rst RST_38                                    ; $6A1A: $FF
    rst RST_38                                    ; $6A1B: $FF
    rst RST_38                                    ; $6A1C: $FF
    rst RST_38                                    ; $6A1D: $FF
    rst RST_38                                    ; $6A1E: $FF
    rst RST_38                                    ; $6A1F: $FF
    rst RST_38                                    ; $6A20: $FF
    rst RST_38                                    ; $6A21: $FF
    rst RST_38                                    ; $6A22: $FF
    rst RST_38                                    ; $6A23: $FF
    rst RST_38                                    ; $6A24: $FF
    rst RST_38                                    ; $6A25: $FF
    rst RST_38                                    ; $6A26: $FF
    rst RST_38                                    ; $6A27: $FF
    rst RST_38                                    ; $6A28: $FF
    rst RST_38                                    ; $6A29: $FF
    rst RST_38                                    ; $6A2A: $FF
    rst RST_38                                    ; $6A2B: $FF
    rst RST_38                                    ; $6A2C: $FF
    rst RST_38                                    ; $6A2D: $FF
    rst RST_38                                    ; $6A2E: $FF
    rst RST_38                                    ; $6A2F: $FF
    rst RST_38                                    ; $6A30: $FF
    rst RST_38                                    ; $6A31: $FF
    rst RST_38                                    ; $6A32: $FF
    rst RST_38                                    ; $6A33: $FF
    rst RST_38                                    ; $6A34: $FF
    rst RST_38                                    ; $6A35: $FF
    rst RST_38                                    ; $6A36: $FF
    rst RST_38                                    ; $6A37: $FF
    rst RST_38                                    ; $6A38: $FF
    rst RST_38                                    ; $6A39: $FF
    rst RST_38                                    ; $6A3A: $FF
    rst RST_38                                    ; $6A3B: $FF
    rst RST_38                                    ; $6A3C: $FF
    rst RST_38                                    ; $6A3D: $FF
    rst RST_38                                    ; $6A3E: $FF
    rst RST_38                                    ; $6A3F: $FF
    rst RST_38                                    ; $6A40: $FF
    rst RST_38                                    ; $6A41: $FF
    rst RST_38                                    ; $6A42: $FF
    rst RST_38                                    ; $6A43: $FF
    rst RST_38                                    ; $6A44: $FF
    rst RST_38                                    ; $6A45: $FF
    rst RST_38                                    ; $6A46: $FF
    rst RST_38                                    ; $6A47: $FF
    rst RST_38                                    ; $6A48: $FF
    rst RST_38                                    ; $6A49: $FF
    rst RST_38                                    ; $6A4A: $FF
    rst RST_38                                    ; $6A4B: $FF
    rst RST_38                                    ; $6A4C: $FF
    rst RST_38                                    ; $6A4D: $FF
    rst RST_38                                    ; $6A4E: $FF
    rst RST_38                                    ; $6A4F: $FF
    rst RST_38                                    ; $6A50: $FF
    rst RST_38                                    ; $6A51: $FF
    rst RST_38                                    ; $6A52: $FF
    rst RST_38                                    ; $6A53: $FF
    rst RST_38                                    ; $6A54: $FF
    rst RST_38                                    ; $6A55: $FF
    rst RST_38                                    ; $6A56: $FF
    rst RST_38                                    ; $6A57: $FF
    rst RST_38                                    ; $6A58: $FF
    rst RST_38                                    ; $6A59: $FF
    rst RST_38                                    ; $6A5A: $FF
    rst RST_38                                    ; $6A5B: $FF
    rst RST_38                                    ; $6A5C: $FF
    rst RST_38                                    ; $6A5D: $FF
    rst RST_38                                    ; $6A5E: $FF
    rst RST_38                                    ; $6A5F: $FF
    rst RST_38                                    ; $6A60: $FF
    rst RST_38                                    ; $6A61: $FF
    rst RST_38                                    ; $6A62: $FF
    rst RST_38                                    ; $6A63: $FF
    rst RST_38                                    ; $6A64: $FF
    rst RST_38                                    ; $6A65: $FF
    rst RST_38                                    ; $6A66: $FF
    rst RST_38                                    ; $6A67: $FF
    rst RST_38                                    ; $6A68: $FF
    rst RST_38                                    ; $6A69: $FF
    rst RST_38                                    ; $6A6A: $FF
    rst RST_38                                    ; $6A6B: $FF
    rst RST_38                                    ; $6A6C: $FF
    rst RST_38                                    ; $6A6D: $FF
    rst RST_38                                    ; $6A6E: $FF
    rst RST_38                                    ; $6A6F: $FF
    rst RST_38                                    ; $6A70: $FF
    rst RST_38                                    ; $6A71: $FF
    rst RST_38                                    ; $6A72: $FF
    rst RST_38                                    ; $6A73: $FF
    rst RST_38                                    ; $6A74: $FF
    rst RST_38                                    ; $6A75: $FF
    rst RST_38                                    ; $6A76: $FF
    rst RST_38                                    ; $6A77: $FF
    rst RST_38                                    ; $6A78: $FF
    rst RST_38                                    ; $6A79: $FF
    rst RST_38                                    ; $6A7A: $FF
    rst RST_38                                    ; $6A7B: $FF
    rst RST_38                                    ; $6A7C: $FF
    rst RST_38                                    ; $6A7D: $FF
    rst RST_38                                    ; $6A7E: $FF
    rst RST_38                                    ; $6A7F: $FF
    rst RST_38                                    ; $6A80: $FF
    rst RST_38                                    ; $6A81: $FF
    rst RST_38                                    ; $6A82: $FF
    rst RST_38                                    ; $6A83: $FF
    rst RST_38                                    ; $6A84: $FF
    rst RST_38                                    ; $6A85: $FF
    rst RST_38                                    ; $6A86: $FF
    rst RST_38                                    ; $6A87: $FF
    rst RST_38                                    ; $6A88: $FF
    rst RST_38                                    ; $6A89: $FF
    rst RST_38                                    ; $6A8A: $FF
    rst RST_38                                    ; $6A8B: $FF
    rst RST_38                                    ; $6A8C: $FF
    rst RST_38                                    ; $6A8D: $FF
    rst RST_38                                    ; $6A8E: $FF
    rst RST_38                                    ; $6A8F: $FF
    rst RST_38                                    ; $6A90: $FF
    rst RST_38                                    ; $6A91: $FF
    rst RST_38                                    ; $6A92: $FF
    rst RST_38                                    ; $6A93: $FF
    rst RST_38                                    ; $6A94: $FF
    rst RST_38                                    ; $6A95: $FF
    rst RST_38                                    ; $6A96: $FF
    rst RST_38                                    ; $6A97: $FF
    rst RST_38                                    ; $6A98: $FF
    rst RST_38                                    ; $6A99: $FF
    rst RST_38                                    ; $6A9A: $FF
    rst RST_38                                    ; $6A9B: $FF
    rst RST_38                                    ; $6A9C: $FF
    rst RST_38                                    ; $6A9D: $FF
    rst RST_38                                    ; $6A9E: $FF
    rst RST_38                                    ; $6A9F: $FF
    rst RST_38                                    ; $6AA0: $FF
    rst RST_38                                    ; $6AA1: $FF
    rst RST_38                                    ; $6AA2: $FF
    rst RST_38                                    ; $6AA3: $FF
    rst RST_38                                    ; $6AA4: $FF
    rst RST_38                                    ; $6AA5: $FF
    rst RST_38                                    ; $6AA6: $FF
    rst RST_38                                    ; $6AA7: $FF
    rst RST_38                                    ; $6AA8: $FF
    rst RST_38                                    ; $6AA9: $FF
    rst RST_38                                    ; $6AAA: $FF
    rst RST_38                                    ; $6AAB: $FF
    rst RST_38                                    ; $6AAC: $FF
    rst RST_38                                    ; $6AAD: $FF
    rst RST_38                                    ; $6AAE: $FF
    rst RST_38                                    ; $6AAF: $FF
    rst RST_38                                    ; $6AB0: $FF
    rst RST_38                                    ; $6AB1: $FF
    rst RST_38                                    ; $6AB2: $FF
    rst RST_38                                    ; $6AB3: $FF
    rst RST_38                                    ; $6AB4: $FF
    rst RST_38                                    ; $6AB5: $FF
    rst RST_38                                    ; $6AB6: $FF
    rst RST_38                                    ; $6AB7: $FF
    rst RST_38                                    ; $6AB8: $FF
    rst RST_38                                    ; $6AB9: $FF
    rst RST_38                                    ; $6ABA: $FF
    rst RST_38                                    ; $6ABB: $FF
    rst RST_38                                    ; $6ABC: $FF
    rst RST_38                                    ; $6ABD: $FF
    rst RST_38                                    ; $6ABE: $FF
    rst RST_38                                    ; $6ABF: $FF
    rst RST_38                                    ; $6AC0: $FF
    rst RST_38                                    ; $6AC1: $FF
    rst RST_38                                    ; $6AC2: $FF
    rst RST_38                                    ; $6AC3: $FF
    rst RST_38                                    ; $6AC4: $FF
    rst RST_38                                    ; $6AC5: $FF
    rst RST_38                                    ; $6AC6: $FF
    rst RST_38                                    ; $6AC7: $FF
    rst RST_38                                    ; $6AC8: $FF
    rst RST_38                                    ; $6AC9: $FF
    rst RST_38                                    ; $6ACA: $FF
    rst RST_38                                    ; $6ACB: $FF
    rst RST_38                                    ; $6ACC: $FF
    rst RST_38                                    ; $6ACD: $FF
    rst RST_38                                    ; $6ACE: $FF
    rst RST_38                                    ; $6ACF: $FF
    rst RST_38                                    ; $6AD0: $FF
    rst RST_38                                    ; $6AD1: $FF
    rst RST_38                                    ; $6AD2: $FF
    rst RST_38                                    ; $6AD3: $FF
    rst RST_38                                    ; $6AD4: $FF
    rst RST_38                                    ; $6AD5: $FF
    rst RST_38                                    ; $6AD6: $FF
    rst RST_38                                    ; $6AD7: $FF
    rst RST_38                                    ; $6AD8: $FF
    rst RST_38                                    ; $6AD9: $FF
    rst RST_38                                    ; $6ADA: $FF
    rst RST_38                                    ; $6ADB: $FF
    rst RST_38                                    ; $6ADC: $FF
    rst RST_38                                    ; $6ADD: $FF
    rst RST_38                                    ; $6ADE: $FF
    rst RST_38                                    ; $6ADF: $FF
    rst RST_38                                    ; $6AE0: $FF
    rst RST_38                                    ; $6AE1: $FF
    rst RST_38                                    ; $6AE2: $FF
    rst RST_38                                    ; $6AE3: $FF
    rst RST_38                                    ; $6AE4: $FF
    rst RST_38                                    ; $6AE5: $FF
    rst RST_38                                    ; $6AE6: $FF
    rst RST_38                                    ; $6AE7: $FF
    rst RST_38                                    ; $6AE8: $FF
    rst RST_38                                    ; $6AE9: $FF
    rst RST_38                                    ; $6AEA: $FF
    rst RST_38                                    ; $6AEB: $FF
    rst RST_38                                    ; $6AEC: $FF
    rst RST_38                                    ; $6AED: $FF
    rst RST_38                                    ; $6AEE: $FF
    rst RST_38                                    ; $6AEF: $FF
    rst RST_38                                    ; $6AF0: $FF
    rst RST_38                                    ; $6AF1: $FF
    rst RST_38                                    ; $6AF2: $FF
    rst RST_38                                    ; $6AF3: $FF
    rst RST_38                                    ; $6AF4: $FF
    rst RST_38                                    ; $6AF5: $FF
    rst RST_38                                    ; $6AF6: $FF
    rst RST_38                                    ; $6AF7: $FF
    rst RST_38                                    ; $6AF8: $FF
    rst RST_38                                    ; $6AF9: $FF
    rst RST_38                                    ; $6AFA: $FF
    rst RST_38                                    ; $6AFB: $FF
    rst RST_38                                    ; $6AFC: $FF
    rst RST_38                                    ; $6AFD: $FF
    rst RST_38                                    ; $6AFE: $FF
    rst RST_38                                    ; $6AFF: $FF
    rst RST_38                                    ; $6B00: $FF
    rst RST_38                                    ; $6B01: $FF
    rst RST_38                                    ; $6B02: $FF
    rst RST_38                                    ; $6B03: $FF
    rst RST_38                                    ; $6B04: $FF
    rst RST_38                                    ; $6B05: $FF
    rst RST_38                                    ; $6B06: $FF
    rst RST_38                                    ; $6B07: $FF
    rst RST_38                                    ; $6B08: $FF
    rst RST_38                                    ; $6B09: $FF
    rst RST_38                                    ; $6B0A: $FF
    rst RST_38                                    ; $6B0B: $FF
    rst RST_38                                    ; $6B0C: $FF
    rst RST_38                                    ; $6B0D: $FF
    rst RST_38                                    ; $6B0E: $FF
    rst RST_38                                    ; $6B0F: $FF
    rst RST_38                                    ; $6B10: $FF
    rst RST_38                                    ; $6B11: $FF
    rst RST_38                                    ; $6B12: $FF
    rst RST_38                                    ; $6B13: $FF
    rst RST_38                                    ; $6B14: $FF
    rst RST_38                                    ; $6B15: $FF
    rst RST_38                                    ; $6B16: $FF
    rst RST_38                                    ; $6B17: $FF
    rst RST_38                                    ; $6B18: $FF
    rst RST_38                                    ; $6B19: $FF
    rst RST_38                                    ; $6B1A: $FF
    rst RST_38                                    ; $6B1B: $FF
    rst RST_38                                    ; $6B1C: $FF
    rst RST_38                                    ; $6B1D: $FF
    rst RST_38                                    ; $6B1E: $FF
    rst RST_38                                    ; $6B1F: $FF
    rst RST_38                                    ; $6B20: $FF
    rst RST_38                                    ; $6B21: $FF
    rst RST_38                                    ; $6B22: $FF
    rst RST_38                                    ; $6B23: $FF
    rst RST_38                                    ; $6B24: $FF
    rst RST_38                                    ; $6B25: $FF
    rst RST_38                                    ; $6B26: $FF
    rst RST_38                                    ; $6B27: $FF
    rst RST_38                                    ; $6B28: $FF
    rst RST_38                                    ; $6B29: $FF
    rst RST_38                                    ; $6B2A: $FF
    rst RST_38                                    ; $6B2B: $FF
    rst RST_38                                    ; $6B2C: $FF
    rst RST_38                                    ; $6B2D: $FF
    rst RST_38                                    ; $6B2E: $FF
    rst RST_38                                    ; $6B2F: $FF
    rst RST_38                                    ; $6B30: $FF
    rst RST_38                                    ; $6B31: $FF
    rst RST_38                                    ; $6B32: $FF
    rst RST_38                                    ; $6B33: $FF
    rst RST_38                                    ; $6B34: $FF
    rst RST_38                                    ; $6B35: $FF
    rst RST_38                                    ; $6B36: $FF
    rst RST_38                                    ; $6B37: $FF
    rst RST_38                                    ; $6B38: $FF
    rst RST_38                                    ; $6B39: $FF
    rst RST_38                                    ; $6B3A: $FF
    rst RST_38                                    ; $6B3B: $FF
    rst RST_38                                    ; $6B3C: $FF
    rst RST_38                                    ; $6B3D: $FF
    rst RST_38                                    ; $6B3E: $FF
    rst RST_38                                    ; $6B3F: $FF
    rst RST_38                                    ; $6B40: $FF
    rst RST_38                                    ; $6B41: $FF
    rst RST_38                                    ; $6B42: $FF
    rst RST_38                                    ; $6B43: $FF
    rst RST_38                                    ; $6B44: $FF
    rst RST_38                                    ; $6B45: $FF
    rst RST_38                                    ; $6B46: $FF
    rst RST_38                                    ; $6B47: $FF
    rst RST_38                                    ; $6B48: $FF
    rst RST_38                                    ; $6B49: $FF
    rst RST_38                                    ; $6B4A: $FF
    rst RST_38                                    ; $6B4B: $FF
    rst RST_38                                    ; $6B4C: $FF
    rst RST_38                                    ; $6B4D: $FF
    rst RST_38                                    ; $6B4E: $FF
    rst RST_38                                    ; $6B4F: $FF
    rst RST_38                                    ; $6B50: $FF
    rst RST_38                                    ; $6B51: $FF
    rst RST_38                                    ; $6B52: $FF
    rst RST_38                                    ; $6B53: $FF
    rst RST_38                                    ; $6B54: $FF
    rst RST_38                                    ; $6B55: $FF
    rst RST_38                                    ; $6B56: $FF
    rst RST_38                                    ; $6B57: $FF
    rst RST_38                                    ; $6B58: $FF
    rst RST_38                                    ; $6B59: $FF
    rst RST_38                                    ; $6B5A: $FF
    rst RST_38                                    ; $6B5B: $FF
    rst RST_38                                    ; $6B5C: $FF
    rst RST_38                                    ; $6B5D: $FF
    rst RST_38                                    ; $6B5E: $FF
    rst RST_38                                    ; $6B5F: $FF
    rst RST_38                                    ; $6B60: $FF
    rst RST_38                                    ; $6B61: $FF
    rst RST_38                                    ; $6B62: $FF
    rst RST_38                                    ; $6B63: $FF
    rst RST_38                                    ; $6B64: $FF
    rst RST_38                                    ; $6B65: $FF
    rst RST_38                                    ; $6B66: $FF
    rst RST_38                                    ; $6B67: $FF
    rst RST_38                                    ; $6B68: $FF
    rst RST_38                                    ; $6B69: $FF
    rst RST_38                                    ; $6B6A: $FF
    rst RST_38                                    ; $6B6B: $FF
    rst RST_38                                    ; $6B6C: $FF
    rst RST_38                                    ; $6B6D: $FF
    rst RST_38                                    ; $6B6E: $FF
    rst RST_38                                    ; $6B6F: $FF
    rst RST_38                                    ; $6B70: $FF
    rst RST_38                                    ; $6B71: $FF
    rst RST_38                                    ; $6B72: $FF
    rst RST_38                                    ; $6B73: $FF
    rst RST_38                                    ; $6B74: $FF
    rst RST_38                                    ; $6B75: $FF
    rst RST_38                                    ; $6B76: $FF
    rst RST_38                                    ; $6B77: $FF
    rst RST_38                                    ; $6B78: $FF
    rst RST_38                                    ; $6B79: $FF
    rst RST_38                                    ; $6B7A: $FF
    rst RST_38                                    ; $6B7B: $FF
    rst RST_38                                    ; $6B7C: $FF
    rst RST_38                                    ; $6B7D: $FF
    rst RST_38                                    ; $6B7E: $FF
    rst RST_38                                    ; $6B7F: $FF
    rst RST_38                                    ; $6B80: $FF
    rst RST_38                                    ; $6B81: $FF
    rst RST_38                                    ; $6B82: $FF
    rst RST_38                                    ; $6B83: $FF
    rst RST_38                                    ; $6B84: $FF
    rst RST_38                                    ; $6B85: $FF
    rst RST_38                                    ; $6B86: $FF
    rst RST_38                                    ; $6B87: $FF
    rst RST_38                                    ; $6B88: $FF
    rst RST_38                                    ; $6B89: $FF
    rst RST_38                                    ; $6B8A: $FF
    rst RST_38                                    ; $6B8B: $FF
    rst RST_38                                    ; $6B8C: $FF
    rst RST_38                                    ; $6B8D: $FF
    rst RST_38                                    ; $6B8E: $FF
    rst RST_38                                    ; $6B8F: $FF
    rst RST_38                                    ; $6B90: $FF
    rst RST_38                                    ; $6B91: $FF
    rst RST_38                                    ; $6B92: $FF
    rst RST_38                                    ; $6B93: $FF
    rst RST_38                                    ; $6B94: $FF
    rst RST_38                                    ; $6B95: $FF
    rst RST_38                                    ; $6B96: $FF
    rst RST_38                                    ; $6B97: $FF
    rst RST_38                                    ; $6B98: $FF
    rst RST_38                                    ; $6B99: $FF
    rst RST_38                                    ; $6B9A: $FF
    rst RST_38                                    ; $6B9B: $FF
    rst RST_38                                    ; $6B9C: $FF
    rst RST_38                                    ; $6B9D: $FF
    rst RST_38                                    ; $6B9E: $FF
    rst RST_38                                    ; $6B9F: $FF
    rst RST_38                                    ; $6BA0: $FF
    rst RST_38                                    ; $6BA1: $FF
    rst RST_38                                    ; $6BA2: $FF
    rst RST_38                                    ; $6BA3: $FF
    rst RST_38                                    ; $6BA4: $FF
    rst RST_38                                    ; $6BA5: $FF
    rst RST_38                                    ; $6BA6: $FF
    rst RST_38                                    ; $6BA7: $FF
    rst RST_38                                    ; $6BA8: $FF
    rst RST_38                                    ; $6BA9: $FF
    rst RST_38                                    ; $6BAA: $FF
    rst RST_38                                    ; $6BAB: $FF
    rst RST_38                                    ; $6BAC: $FF
    rst RST_38                                    ; $6BAD: $FF
    rst RST_38                                    ; $6BAE: $FF
    rst RST_38                                    ; $6BAF: $FF
    rst RST_38                                    ; $6BB0: $FF
    rst RST_38                                    ; $6BB1: $FF
    rst RST_38                                    ; $6BB2: $FF
    rst RST_38                                    ; $6BB3: $FF
    rst RST_38                                    ; $6BB4: $FF
    rst RST_38                                    ; $6BB5: $FF
    rst RST_38                                    ; $6BB6: $FF
    rst RST_38                                    ; $6BB7: $FF
    rst RST_38                                    ; $6BB8: $FF
    rst RST_38                                    ; $6BB9: $FF
    rst RST_38                                    ; $6BBA: $FF
    rst RST_38                                    ; $6BBB: $FF
    rst RST_38                                    ; $6BBC: $FF
    rst RST_38                                    ; $6BBD: $FF
    rst RST_38                                    ; $6BBE: $FF
    rst RST_38                                    ; $6BBF: $FF
    rst RST_38                                    ; $6BC0: $FF
    rst RST_38                                    ; $6BC1: $FF
    rst RST_38                                    ; $6BC2: $FF
    rst RST_38                                    ; $6BC3: $FF
    rst RST_38                                    ; $6BC4: $FF
    rst RST_38                                    ; $6BC5: $FF
    rst RST_38                                    ; $6BC6: $FF
    rst RST_38                                    ; $6BC7: $FF
    rst RST_38                                    ; $6BC8: $FF
    rst RST_38                                    ; $6BC9: $FF
    rst RST_38                                    ; $6BCA: $FF
    rst RST_38                                    ; $6BCB: $FF
    rst RST_38                                    ; $6BCC: $FF
    rst RST_38                                    ; $6BCD: $FF
    rst RST_38                                    ; $6BCE: $FF
    rst RST_38                                    ; $6BCF: $FF
    rst RST_38                                    ; $6BD0: $FF
    rst RST_38                                    ; $6BD1: $FF
    rst RST_38                                    ; $6BD2: $FF
    rst RST_38                                    ; $6BD3: $FF
    rst RST_38                                    ; $6BD4: $FF
    rst RST_38                                    ; $6BD5: $FF
    rst RST_38                                    ; $6BD6: $FF
    rst RST_38                                    ; $6BD7: $FF
    rst RST_38                                    ; $6BD8: $FF
    rst RST_38                                    ; $6BD9: $FF
    rst RST_38                                    ; $6BDA: $FF
    rst RST_38                                    ; $6BDB: $FF
    rst RST_38                                    ; $6BDC: $FF
    rst RST_38                                    ; $6BDD: $FF
    rst RST_38                                    ; $6BDE: $FF
    rst RST_38                                    ; $6BDF: $FF
    rst RST_38                                    ; $6BE0: $FF
    rst RST_38                                    ; $6BE1: $FF
    rst RST_38                                    ; $6BE2: $FF
    rst RST_38                                    ; $6BE3: $FF
    rst RST_38                                    ; $6BE4: $FF
    rst RST_38                                    ; $6BE5: $FF
    rst RST_38                                    ; $6BE6: $FF
    rst RST_38                                    ; $6BE7: $FF
    rst RST_38                                    ; $6BE8: $FF
    rst RST_38                                    ; $6BE9: $FF
    rst RST_38                                    ; $6BEA: $FF
    rst RST_38                                    ; $6BEB: $FF
    rst RST_38                                    ; $6BEC: $FF
    rst RST_38                                    ; $6BED: $FF
    rst RST_38                                    ; $6BEE: $FF
    rst RST_38                                    ; $6BEF: $FF
    rst RST_38                                    ; $6BF0: $FF
    rst RST_38                                    ; $6BF1: $FF
    rst RST_38                                    ; $6BF2: $FF
    rst RST_38                                    ; $6BF3: $FF
    rst RST_38                                    ; $6BF4: $FF
    rst RST_38                                    ; $6BF5: $FF
    rst RST_38                                    ; $6BF6: $FF
    rst RST_38                                    ; $6BF7: $FF
    rst RST_38                                    ; $6BF8: $FF
    rst RST_38                                    ; $6BF9: $FF
    rst RST_38                                    ; $6BFA: $FF
    rst RST_38                                    ; $6BFB: $FF
    rst RST_38                                    ; $6BFC: $FF
    rst RST_38                                    ; $6BFD: $FF
    rst RST_38                                    ; $6BFE: $FF
    rst RST_38                                    ; $6BFF: $FF
    rst RST_38                                    ; $6C00: $FF
    rst RST_38                                    ; $6C01: $FF
    rst RST_38                                    ; $6C02: $FF
    rst RST_38                                    ; $6C03: $FF
    rst RST_38                                    ; $6C04: $FF
    rst RST_38                                    ; $6C05: $FF
    rst RST_38                                    ; $6C06: $FF
    rst RST_38                                    ; $6C07: $FF
    rst RST_38                                    ; $6C08: $FF
    rst RST_38                                    ; $6C09: $FF
    rst RST_38                                    ; $6C0A: $FF
    rst RST_38                                    ; $6C0B: $FF
    rst RST_38                                    ; $6C0C: $FF
    rst RST_38                                    ; $6C0D: $FF
    rst RST_38                                    ; $6C0E: $FF
    rst RST_38                                    ; $6C0F: $FF
    rst RST_38                                    ; $6C10: $FF
    rst RST_38                                    ; $6C11: $FF
    rst RST_38                                    ; $6C12: $FF
    rst RST_38                                    ; $6C13: $FF
    rst RST_38                                    ; $6C14: $FF
    rst RST_38                                    ; $6C15: $FF
    rst RST_38                                    ; $6C16: $FF
    rst RST_38                                    ; $6C17: $FF
    rst RST_38                                    ; $6C18: $FF
    rst RST_38                                    ; $6C19: $FF
    rst RST_38                                    ; $6C1A: $FF
    rst RST_38                                    ; $6C1B: $FF
    rst RST_38                                    ; $6C1C: $FF
    rst RST_38                                    ; $6C1D: $FF
    rst RST_38                                    ; $6C1E: $FF
    rst RST_38                                    ; $6C1F: $FF
    rst RST_38                                    ; $6C20: $FF
    rst RST_38                                    ; $6C21: $FF
    rst RST_38                                    ; $6C22: $FF
    rst RST_38                                    ; $6C23: $FF
    rst RST_38                                    ; $6C24: $FF
    rst RST_38                                    ; $6C25: $FF
    rst RST_38                                    ; $6C26: $FF
    rst RST_38                                    ; $6C27: $FF
    rst RST_38                                    ; $6C28: $FF
    rst RST_38                                    ; $6C29: $FF
    rst RST_38                                    ; $6C2A: $FF
    rst RST_38                                    ; $6C2B: $FF
    rst RST_38                                    ; $6C2C: $FF
    rst RST_38                                    ; $6C2D: $FF
    rst RST_38                                    ; $6C2E: $FF
    rst RST_38                                    ; $6C2F: $FF
    rst RST_38                                    ; $6C30: $FF
    rst RST_38                                    ; $6C31: $FF
    rst RST_38                                    ; $6C32: $FF
    rst RST_38                                    ; $6C33: $FF
    rst RST_38                                    ; $6C34: $FF
    rst RST_38                                    ; $6C35: $FF
    rst RST_38                                    ; $6C36: $FF
    rst RST_38                                    ; $6C37: $FF
    rst RST_38                                    ; $6C38: $FF
    rst RST_38                                    ; $6C39: $FF
    rst RST_38                                    ; $6C3A: $FF
    rst RST_38                                    ; $6C3B: $FF
    rst RST_38                                    ; $6C3C: $FF
    rst RST_38                                    ; $6C3D: $FF
    rst RST_38                                    ; $6C3E: $FF
    rst RST_38                                    ; $6C3F: $FF
    rst RST_38                                    ; $6C40: $FF
    rst RST_38                                    ; $6C41: $FF
    rst RST_38                                    ; $6C42: $FF
    rst RST_38                                    ; $6C43: $FF
    rst RST_38                                    ; $6C44: $FF
    rst RST_38                                    ; $6C45: $FF
    rst RST_38                                    ; $6C46: $FF
    rst RST_38                                    ; $6C47: $FF
    rst RST_38                                    ; $6C48: $FF
    rst RST_38                                    ; $6C49: $FF
    rst RST_38                                    ; $6C4A: $FF
    rst RST_38                                    ; $6C4B: $FF
    rst RST_38                                    ; $6C4C: $FF
    rst RST_38                                    ; $6C4D: $FF
    rst RST_38                                    ; $6C4E: $FF
    rst RST_38                                    ; $6C4F: $FF
    rst RST_38                                    ; $6C50: $FF
    rst RST_38                                    ; $6C51: $FF
    rst RST_38                                    ; $6C52: $FF
    rst RST_38                                    ; $6C53: $FF
    rst RST_38                                    ; $6C54: $FF
    rst RST_38                                    ; $6C55: $FF
    rst RST_38                                    ; $6C56: $FF
    rst RST_38                                    ; $6C57: $FF
    rst RST_38                                    ; $6C58: $FF
    rst RST_38                                    ; $6C59: $FF
    rst RST_38                                    ; $6C5A: $FF
    rst RST_38                                    ; $6C5B: $FF
    rst RST_38                                    ; $6C5C: $FF
    rst RST_38                                    ; $6C5D: $FF
    rst RST_38                                    ; $6C5E: $FF
    rst RST_38                                    ; $6C5F: $FF
    rst RST_38                                    ; $6C60: $FF
    rst RST_38                                    ; $6C61: $FF
    rst RST_38                                    ; $6C62: $FF
    rst RST_38                                    ; $6C63: $FF
    rst RST_38                                    ; $6C64: $FF
    rst RST_38                                    ; $6C65: $FF
    rst RST_38                                    ; $6C66: $FF
    rst RST_38                                    ; $6C67: $FF
    rst RST_38                                    ; $6C68: $FF
    rst RST_38                                    ; $6C69: $FF
    rst RST_38                                    ; $6C6A: $FF
    rst RST_38                                    ; $6C6B: $FF
    rst RST_38                                    ; $6C6C: $FF
    rst RST_38                                    ; $6C6D: $FF
    rst RST_38                                    ; $6C6E: $FF
    rst RST_38                                    ; $6C6F: $FF
    rst RST_38                                    ; $6C70: $FF
    rst RST_38                                    ; $6C71: $FF
    rst RST_38                                    ; $6C72: $FF
    rst RST_38                                    ; $6C73: $FF
    rst RST_38                                    ; $6C74: $FF
    rst RST_38                                    ; $6C75: $FF
    rst RST_38                                    ; $6C76: $FF
    rst RST_38                                    ; $6C77: $FF
    rst RST_38                                    ; $6C78: $FF
    rst RST_38                                    ; $6C79: $FF
    rst RST_38                                    ; $6C7A: $FF
    rst RST_38                                    ; $6C7B: $FF
    rst RST_38                                    ; $6C7C: $FF
    rst RST_38                                    ; $6C7D: $FF
    rst RST_38                                    ; $6C7E: $FF
    rst RST_38                                    ; $6C7F: $FF

Call_00D_6C80:
    rst RST_38                                    ; $6C80: $FF
    rst RST_38                                    ; $6C81: $FF
    rst RST_38                                    ; $6C82: $FF
    rst RST_38                                    ; $6C83: $FF
    rst RST_38                                    ; $6C84: $FF
    rst RST_38                                    ; $6C85: $FF
    rst RST_38                                    ; $6C86: $FF
    rst RST_38                                    ; $6C87: $FF
    rst RST_38                                    ; $6C88: $FF
    rst RST_38                                    ; $6C89: $FF
    rst RST_38                                    ; $6C8A: $FF
    rst RST_38                                    ; $6C8B: $FF
    rst RST_38                                    ; $6C8C: $FF
    rst RST_38                                    ; $6C8D: $FF
    rst RST_38                                    ; $6C8E: $FF
    rst RST_38                                    ; $6C8F: $FF
    rst RST_38                                    ; $6C90: $FF
    rst RST_38                                    ; $6C91: $FF
    rst RST_38                                    ; $6C92: $FF
    rst RST_38                                    ; $6C93: $FF
    rst RST_38                                    ; $6C94: $FF
    rst RST_38                                    ; $6C95: $FF
    rst RST_38                                    ; $6C96: $FF
    rst RST_38                                    ; $6C97: $FF
    rst RST_38                                    ; $6C98: $FF
    rst RST_38                                    ; $6C99: $FF
    rst RST_38                                    ; $6C9A: $FF
    rst RST_38                                    ; $6C9B: $FF
    rst RST_38                                    ; $6C9C: $FF
    rst RST_38                                    ; $6C9D: $FF
    rst RST_38                                    ; $6C9E: $FF
    rst RST_38                                    ; $6C9F: $FF
    rst RST_38                                    ; $6CA0: $FF
    rst RST_38                                    ; $6CA1: $FF
    rst RST_38                                    ; $6CA2: $FF
    rst RST_38                                    ; $6CA3: $FF
    rst RST_38                                    ; $6CA4: $FF
    rst RST_38                                    ; $6CA5: $FF
    rst RST_38                                    ; $6CA6: $FF
    rst RST_38                                    ; $6CA7: $FF
    rst RST_38                                    ; $6CA8: $FF
    rst RST_38                                    ; $6CA9: $FF
    rst RST_38                                    ; $6CAA: $FF
    rst RST_38                                    ; $6CAB: $FF
    rst RST_38                                    ; $6CAC: $FF
    rst RST_38                                    ; $6CAD: $FF
    rst RST_38                                    ; $6CAE: $FF
    rst RST_38                                    ; $6CAF: $FF
    rst RST_38                                    ; $6CB0: $FF
    rst RST_38                                    ; $6CB1: $FF
    rst RST_38                                    ; $6CB2: $FF
    rst RST_38                                    ; $6CB3: $FF
    rst RST_38                                    ; $6CB4: $FF
    rst RST_38                                    ; $6CB5: $FF
    rst RST_38                                    ; $6CB6: $FF
    rst RST_38                                    ; $6CB7: $FF
    rst RST_38                                    ; $6CB8: $FF
    rst RST_38                                    ; $6CB9: $FF
    rst RST_38                                    ; $6CBA: $FF
    rst RST_38                                    ; $6CBB: $FF
    rst RST_38                                    ; $6CBC: $FF
    rst RST_38                                    ; $6CBD: $FF
    rst RST_38                                    ; $6CBE: $FF
    rst RST_38                                    ; $6CBF: $FF
    rst RST_38                                    ; $6CC0: $FF
    rst RST_38                                    ; $6CC1: $FF
    rst RST_38                                    ; $6CC2: $FF
    rst RST_38                                    ; $6CC3: $FF
    rst RST_38                                    ; $6CC4: $FF
    rst RST_38                                    ; $6CC5: $FF
    rst RST_38                                    ; $6CC6: $FF
    rst RST_38                                    ; $6CC7: $FF
    rst RST_38                                    ; $6CC8: $FF
    rst RST_38                                    ; $6CC9: $FF
    rst RST_38                                    ; $6CCA: $FF
    rst RST_38                                    ; $6CCB: $FF
    rst RST_38                                    ; $6CCC: $FF
    rst RST_38                                    ; $6CCD: $FF
    rst RST_38                                    ; $6CCE: $FF
    rst RST_38                                    ; $6CCF: $FF
    rst RST_38                                    ; $6CD0: $FF
    rst RST_38                                    ; $6CD1: $FF
    rst RST_38                                    ; $6CD2: $FF
    rst RST_38                                    ; $6CD3: $FF
    rst RST_38                                    ; $6CD4: $FF
    rst RST_38                                    ; $6CD5: $FF
    rst RST_38                                    ; $6CD6: $FF
    rst RST_38                                    ; $6CD7: $FF
    rst RST_38                                    ; $6CD8: $FF
    rst RST_38                                    ; $6CD9: $FF
    rst RST_38                                    ; $6CDA: $FF
    rst RST_38                                    ; $6CDB: $FF
    rst RST_38                                    ; $6CDC: $FF
    rst RST_38                                    ; $6CDD: $FF
    rst RST_38                                    ; $6CDE: $FF
    rst RST_38                                    ; $6CDF: $FF
    rst RST_38                                    ; $6CE0: $FF
    rst RST_38                                    ; $6CE1: $FF
    rst RST_38                                    ; $6CE2: $FF
    rst RST_38                                    ; $6CE3: $FF
    rst RST_38                                    ; $6CE4: $FF
    rst RST_38                                    ; $6CE5: $FF
    rst RST_38                                    ; $6CE6: $FF
    rst RST_38                                    ; $6CE7: $FF
    rst RST_38                                    ; $6CE8: $FF
    rst RST_38                                    ; $6CE9: $FF
    rst RST_38                                    ; $6CEA: $FF
    rst RST_38                                    ; $6CEB: $FF
    rst RST_38                                    ; $6CEC: $FF
    rst RST_38                                    ; $6CED: $FF
    rst RST_38                                    ; $6CEE: $FF
    rst RST_38                                    ; $6CEF: $FF
    rst RST_38                                    ; $6CF0: $FF
    rst RST_38                                    ; $6CF1: $FF
    rst RST_38                                    ; $6CF2: $FF
    rst RST_38                                    ; $6CF3: $FF
    rst RST_38                                    ; $6CF4: $FF
    rst RST_38                                    ; $6CF5: $FF
    rst RST_38                                    ; $6CF6: $FF
    rst RST_38                                    ; $6CF7: $FF
    rst RST_38                                    ; $6CF8: $FF
    rst RST_38                                    ; $6CF9: $FF
    rst RST_38                                    ; $6CFA: $FF
    rst RST_38                                    ; $6CFB: $FF
    rst RST_38                                    ; $6CFC: $FF
    rst RST_38                                    ; $6CFD: $FF
    rst RST_38                                    ; $6CFE: $FF
    rst RST_38                                    ; $6CFF: $FF
    rst RST_38                                    ; $6D00: $FF
    rst RST_38                                    ; $6D01: $FF
    rst RST_38                                    ; $6D02: $FF
    rst RST_38                                    ; $6D03: $FF
    rst RST_38                                    ; $6D04: $FF
    rst RST_38                                    ; $6D05: $FF
    rst RST_38                                    ; $6D06: $FF
    rst RST_38                                    ; $6D07: $FF
    rst RST_38                                    ; $6D08: $FF
    rst RST_38                                    ; $6D09: $FF
    rst RST_38                                    ; $6D0A: $FF
    rst RST_38                                    ; $6D0B: $FF
    rst RST_38                                    ; $6D0C: $FF
    rst RST_38                                    ; $6D0D: $FF
    rst RST_38                                    ; $6D0E: $FF
    rst RST_38                                    ; $6D0F: $FF
    rst RST_38                                    ; $6D10: $FF
    rst RST_38                                    ; $6D11: $FF
    rst RST_38                                    ; $6D12: $FF
    rst RST_38                                    ; $6D13: $FF
    rst RST_38                                    ; $6D14: $FF
    rst RST_38                                    ; $6D15: $FF
    rst RST_38                                    ; $6D16: $FF
    rst RST_38                                    ; $6D17: $FF
    rst RST_38                                    ; $6D18: $FF
    rst RST_38                                    ; $6D19: $FF
    rst RST_38                                    ; $6D1A: $FF
    rst RST_38                                    ; $6D1B: $FF
    rst RST_38                                    ; $6D1C: $FF
    rst RST_38                                    ; $6D1D: $FF
    rst RST_38                                    ; $6D1E: $FF
    rst RST_38                                    ; $6D1F: $FF
    rst RST_38                                    ; $6D20: $FF
    rst RST_38                                    ; $6D21: $FF
    rst RST_38                                    ; $6D22: $FF
    rst RST_38                                    ; $6D23: $FF
    rst RST_38                                    ; $6D24: $FF
    rst RST_38                                    ; $6D25: $FF
    rst RST_38                                    ; $6D26: $FF
    rst RST_38                                    ; $6D27: $FF
    rst RST_38                                    ; $6D28: $FF
    rst RST_38                                    ; $6D29: $FF
    rst RST_38                                    ; $6D2A: $FF
    rst RST_38                                    ; $6D2B: $FF
    rst RST_38                                    ; $6D2C: $FF
    rst RST_38                                    ; $6D2D: $FF
    rst RST_38                                    ; $6D2E: $FF
    rst RST_38                                    ; $6D2F: $FF
    rst RST_38                                    ; $6D30: $FF
    rst RST_38                                    ; $6D31: $FF
    rst RST_38                                    ; $6D32: $FF
    rst RST_38                                    ; $6D33: $FF
    rst RST_38                                    ; $6D34: $FF
    rst RST_38                                    ; $6D35: $FF
    rst RST_38                                    ; $6D36: $FF
    rst RST_38                                    ; $6D37: $FF
    rst RST_38                                    ; $6D38: $FF
    rst RST_38                                    ; $6D39: $FF
    rst RST_38                                    ; $6D3A: $FF
    rst RST_38                                    ; $6D3B: $FF
    rst RST_38                                    ; $6D3C: $FF
    rst RST_38                                    ; $6D3D: $FF
    rst RST_38                                    ; $6D3E: $FF
    rst RST_38                                    ; $6D3F: $FF
    rst RST_38                                    ; $6D40: $FF
    rst RST_38                                    ; $6D41: $FF
    rst RST_38                                    ; $6D42: $FF
    rst RST_38                                    ; $6D43: $FF
    rst RST_38                                    ; $6D44: $FF
    rst RST_38                                    ; $6D45: $FF
    rst RST_38                                    ; $6D46: $FF
    rst RST_38                                    ; $6D47: $FF
    rst RST_38                                    ; $6D48: $FF
    rst RST_38                                    ; $6D49: $FF
    rst RST_38                                    ; $6D4A: $FF
    rst RST_38                                    ; $6D4B: $FF
    rst RST_38                                    ; $6D4C: $FF
    rst RST_38                                    ; $6D4D: $FF
    rst RST_38                                    ; $6D4E: $FF
    rst RST_38                                    ; $6D4F: $FF
    rst RST_38                                    ; $6D50: $FF
    rst RST_38                                    ; $6D51: $FF
    rst RST_38                                    ; $6D52: $FF
    rst RST_38                                    ; $6D53: $FF
    rst RST_38                                    ; $6D54: $FF
    rst RST_38                                    ; $6D55: $FF
    rst RST_38                                    ; $6D56: $FF
    rst RST_38                                    ; $6D57: $FF
    rst RST_38                                    ; $6D58: $FF
    rst RST_38                                    ; $6D59: $FF
    rst RST_38                                    ; $6D5A: $FF
    rst RST_38                                    ; $6D5B: $FF
    rst RST_38                                    ; $6D5C: $FF
    rst RST_38                                    ; $6D5D: $FF
    rst RST_38                                    ; $6D5E: $FF
    rst RST_38                                    ; $6D5F: $FF
    rst RST_38                                    ; $6D60: $FF
    rst RST_38                                    ; $6D61: $FF
    rst RST_38                                    ; $6D62: $FF
    rst RST_38                                    ; $6D63: $FF
    rst RST_38                                    ; $6D64: $FF
    rst RST_38                                    ; $6D65: $FF
    rst RST_38                                    ; $6D66: $FF
    rst RST_38                                    ; $6D67: $FF
    rst RST_38                                    ; $6D68: $FF
    rst RST_38                                    ; $6D69: $FF
    rst RST_38                                    ; $6D6A: $FF
    rst RST_38                                    ; $6D6B: $FF
    rst RST_38                                    ; $6D6C: $FF
    rst RST_38                                    ; $6D6D: $FF
    rst RST_38                                    ; $6D6E: $FF
    rst RST_38                                    ; $6D6F: $FF
    rst RST_38                                    ; $6D70: $FF
    rst RST_38                                    ; $6D71: $FF
    rst RST_38                                    ; $6D72: $FF
    rst RST_38                                    ; $6D73: $FF
    rst RST_38                                    ; $6D74: $FF
    rst RST_38                                    ; $6D75: $FF
    rst RST_38                                    ; $6D76: $FF
    rst RST_38                                    ; $6D77: $FF
    rst RST_38                                    ; $6D78: $FF
    rst RST_38                                    ; $6D79: $FF
    rst RST_38                                    ; $6D7A: $FF
    rst RST_38                                    ; $6D7B: $FF
    rst RST_38                                    ; $6D7C: $FF
    rst RST_38                                    ; $6D7D: $FF
    rst RST_38                                    ; $6D7E: $FF
    rst RST_38                                    ; $6D7F: $FF
    rst RST_38                                    ; $6D80: $FF
    rst RST_38                                    ; $6D81: $FF
    rst RST_38                                    ; $6D82: $FF
    rst RST_38                                    ; $6D83: $FF
    rst RST_38                                    ; $6D84: $FF
    rst RST_38                                    ; $6D85: $FF
    rst RST_38                                    ; $6D86: $FF
    rst RST_38                                    ; $6D87: $FF
    rst RST_38                                    ; $6D88: $FF
    rst RST_38                                    ; $6D89: $FF
    rst RST_38                                    ; $6D8A: $FF
    rst RST_38                                    ; $6D8B: $FF
    rst RST_38                                    ; $6D8C: $FF
    rst RST_38                                    ; $6D8D: $FF
    rst RST_38                                    ; $6D8E: $FF
    rst RST_38                                    ; $6D8F: $FF
    rst RST_38                                    ; $6D90: $FF
    rst RST_38                                    ; $6D91: $FF
    rst RST_38                                    ; $6D92: $FF
    rst RST_38                                    ; $6D93: $FF
    rst RST_38                                    ; $6D94: $FF
    rst RST_38                                    ; $6D95: $FF
    rst RST_38                                    ; $6D96: $FF
    rst RST_38                                    ; $6D97: $FF
    rst RST_38                                    ; $6D98: $FF
    rst RST_38                                    ; $6D99: $FF
    rst RST_38                                    ; $6D9A: $FF
    rst RST_38                                    ; $6D9B: $FF
    rst RST_38                                    ; $6D9C: $FF
    rst RST_38                                    ; $6D9D: $FF
    rst RST_38                                    ; $6D9E: $FF
    rst RST_38                                    ; $6D9F: $FF
    rst RST_38                                    ; $6DA0: $FF
    rst RST_38                                    ; $6DA1: $FF
    rst RST_38                                    ; $6DA2: $FF
    rst RST_38                                    ; $6DA3: $FF
    rst RST_38                                    ; $6DA4: $FF
    rst RST_38                                    ; $6DA5: $FF
    rst RST_38                                    ; $6DA6: $FF
    rst RST_38                                    ; $6DA7: $FF
    rst RST_38                                    ; $6DA8: $FF
    rst RST_38                                    ; $6DA9: $FF
    rst RST_38                                    ; $6DAA: $FF
    rst RST_38                                    ; $6DAB: $FF
    rst RST_38                                    ; $6DAC: $FF
    rst RST_38                                    ; $6DAD: $FF
    rst RST_38                                    ; $6DAE: $FF
    rst RST_38                                    ; $6DAF: $FF
    rst RST_38                                    ; $6DB0: $FF
    rst RST_38                                    ; $6DB1: $FF
    rst RST_38                                    ; $6DB2: $FF
    rst RST_38                                    ; $6DB3: $FF
    rst RST_38                                    ; $6DB4: $FF
    rst RST_38                                    ; $6DB5: $FF
    rst RST_38                                    ; $6DB6: $FF
    rst RST_38                                    ; $6DB7: $FF
    rst RST_38                                    ; $6DB8: $FF
    rst RST_38                                    ; $6DB9: $FF
    rst RST_38                                    ; $6DBA: $FF
    rst RST_38                                    ; $6DBB: $FF
    rst RST_38                                    ; $6DBC: $FF
    rst RST_38                                    ; $6DBD: $FF
    rst RST_38                                    ; $6DBE: $FF
    rst RST_38                                    ; $6DBF: $FF
    rst RST_38                                    ; $6DC0: $FF
    rst RST_38                                    ; $6DC1: $FF
    rst RST_38                                    ; $6DC2: $FF
    rst RST_38                                    ; $6DC3: $FF
    rst RST_38                                    ; $6DC4: $FF
    rst RST_38                                    ; $6DC5: $FF
    rst RST_38                                    ; $6DC6: $FF
    rst RST_38                                    ; $6DC7: $FF
    rst RST_38                                    ; $6DC8: $FF
    rst RST_38                                    ; $6DC9: $FF
    rst RST_38                                    ; $6DCA: $FF
    rst RST_38                                    ; $6DCB: $FF
    rst RST_38                                    ; $6DCC: $FF
    rst RST_38                                    ; $6DCD: $FF
    rst RST_38                                    ; $6DCE: $FF
    rst RST_38                                    ; $6DCF: $FF
    rst RST_38                                    ; $6DD0: $FF
    rst RST_38                                    ; $6DD1: $FF
    rst RST_38                                    ; $6DD2: $FF
    rst RST_38                                    ; $6DD3: $FF
    rst RST_38                                    ; $6DD4: $FF
    rst RST_38                                    ; $6DD5: $FF
    rst RST_38                                    ; $6DD6: $FF
    rst RST_38                                    ; $6DD7: $FF
    rst RST_38                                    ; $6DD8: $FF
    rst RST_38                                    ; $6DD9: $FF
    rst RST_38                                    ; $6DDA: $FF
    rst RST_38                                    ; $6DDB: $FF
    rst RST_38                                    ; $6DDC: $FF
    rst RST_38                                    ; $6DDD: $FF
    rst RST_38                                    ; $6DDE: $FF
    rst RST_38                                    ; $6DDF: $FF
    rst RST_38                                    ; $6DE0: $FF
    rst RST_38                                    ; $6DE1: $FF
    rst RST_38                                    ; $6DE2: $FF
    rst RST_38                                    ; $6DE3: $FF
    rst RST_38                                    ; $6DE4: $FF
    rst RST_38                                    ; $6DE5: $FF
    rst RST_38                                    ; $6DE6: $FF
    rst RST_38                                    ; $6DE7: $FF
    rst RST_38                                    ; $6DE8: $FF
    rst RST_38                                    ; $6DE9: $FF
    rst RST_38                                    ; $6DEA: $FF
    rst RST_38                                    ; $6DEB: $FF
    rst RST_38                                    ; $6DEC: $FF
    rst RST_38                                    ; $6DED: $FF
    rst RST_38                                    ; $6DEE: $FF
    rst RST_38                                    ; $6DEF: $FF
    rst RST_38                                    ; $6DF0: $FF
    rst RST_38                                    ; $6DF1: $FF
    rst RST_38                                    ; $6DF2: $FF
    rst RST_38                                    ; $6DF3: $FF
    rst RST_38                                    ; $6DF4: $FF
    rst RST_38                                    ; $6DF5: $FF
    rst RST_38                                    ; $6DF6: $FF
    rst RST_38                                    ; $6DF7: $FF
    rst RST_38                                    ; $6DF8: $FF
    rst RST_38                                    ; $6DF9: $FF
    rst RST_38                                    ; $6DFA: $FF
    rst RST_38                                    ; $6DFB: $FF
    rst RST_38                                    ; $6DFC: $FF
    rst RST_38                                    ; $6DFD: $FF
    rst RST_38                                    ; $6DFE: $FF
    rst RST_38                                    ; $6DFF: $FF
    rst RST_38                                    ; $6E00: $FF
    rst RST_38                                    ; $6E01: $FF
    rst RST_38                                    ; $6E02: $FF
    rst RST_38                                    ; $6E03: $FF
    rst RST_38                                    ; $6E04: $FF
    rst RST_38                                    ; $6E05: $FF
    rst RST_38                                    ; $6E06: $FF
    rst RST_38                                    ; $6E07: $FF
    rst RST_38                                    ; $6E08: $FF
    rst RST_38                                    ; $6E09: $FF
    rst RST_38                                    ; $6E0A: $FF
    rst RST_38                                    ; $6E0B: $FF
    rst RST_38                                    ; $6E0C: $FF
    rst RST_38                                    ; $6E0D: $FF
    rst RST_38                                    ; $6E0E: $FF
    rst RST_38                                    ; $6E0F: $FF
    rst RST_38                                    ; $6E10: $FF
    rst RST_38                                    ; $6E11: $FF
    rst RST_38                                    ; $6E12: $FF
    rst RST_38                                    ; $6E13: $FF
    rst RST_38                                    ; $6E14: $FF
    rst RST_38                                    ; $6E15: $FF
    rst RST_38                                    ; $6E16: $FF
    rst RST_38                                    ; $6E17: $FF
    rst RST_38                                    ; $6E18: $FF
    rst RST_38                                    ; $6E19: $FF
    rst RST_38                                    ; $6E1A: $FF
    rst RST_38                                    ; $6E1B: $FF
    rst RST_38                                    ; $6E1C: $FF
    rst RST_38                                    ; $6E1D: $FF
    rst RST_38                                    ; $6E1E: $FF
    rst RST_38                                    ; $6E1F: $FF
    rst RST_38                                    ; $6E20: $FF
    rst RST_38                                    ; $6E21: $FF
    rst RST_38                                    ; $6E22: $FF
    rst RST_38                                    ; $6E23: $FF
    rst RST_38                                    ; $6E24: $FF
    rst RST_38                                    ; $6E25: $FF
    rst RST_38                                    ; $6E26: $FF
    rst RST_38                                    ; $6E27: $FF
    rst RST_38                                    ; $6E28: $FF
    rst RST_38                                    ; $6E29: $FF
    rst RST_38                                    ; $6E2A: $FF
    rst RST_38                                    ; $6E2B: $FF
    rst RST_38                                    ; $6E2C: $FF
    rst RST_38                                    ; $6E2D: $FF
    rst RST_38                                    ; $6E2E: $FF
    rst RST_38                                    ; $6E2F: $FF
    rst RST_38                                    ; $6E30: $FF
    rst RST_38                                    ; $6E31: $FF
    rst RST_38                                    ; $6E32: $FF
    rst RST_38                                    ; $6E33: $FF
    rst RST_38                                    ; $6E34: $FF
    rst RST_38                                    ; $6E35: $FF
    rst RST_38                                    ; $6E36: $FF
    rst RST_38                                    ; $6E37: $FF
    rst RST_38                                    ; $6E38: $FF
    rst RST_38                                    ; $6E39: $FF
    rst RST_38                                    ; $6E3A: $FF
    rst RST_38                                    ; $6E3B: $FF
    rst RST_38                                    ; $6E3C: $FF
    rst RST_38                                    ; $6E3D: $FF
    rst RST_38                                    ; $6E3E: $FF
    rst RST_38                                    ; $6E3F: $FF
    rst RST_38                                    ; $6E40: $FF
    rst RST_38                                    ; $6E41: $FF
    rst RST_38                                    ; $6E42: $FF
    rst RST_38                                    ; $6E43: $FF
    rst RST_38                                    ; $6E44: $FF
    rst RST_38                                    ; $6E45: $FF
    rst RST_38                                    ; $6E46: $FF
    rst RST_38                                    ; $6E47: $FF
    rst RST_38                                    ; $6E48: $FF
    rst RST_38                                    ; $6E49: $FF
    rst RST_38                                    ; $6E4A: $FF
    rst RST_38                                    ; $6E4B: $FF
    rst RST_38                                    ; $6E4C: $FF
    rst RST_38                                    ; $6E4D: $FF
    rst RST_38                                    ; $6E4E: $FF
    rst RST_38                                    ; $6E4F: $FF
    rst RST_38                                    ; $6E50: $FF
    rst RST_38                                    ; $6E51: $FF
    rst RST_38                                    ; $6E52: $FF
    rst RST_38                                    ; $6E53: $FF
    rst RST_38                                    ; $6E54: $FF
    rst RST_38                                    ; $6E55: $FF
    rst RST_38                                    ; $6E56: $FF
    rst RST_38                                    ; $6E57: $FF
    rst RST_38                                    ; $6E58: $FF
    rst RST_38                                    ; $6E59: $FF
    rst RST_38                                    ; $6E5A: $FF
    rst RST_38                                    ; $6E5B: $FF
    rst RST_38                                    ; $6E5C: $FF
    rst RST_38                                    ; $6E5D: $FF
    rst RST_38                                    ; $6E5E: $FF
    rst RST_38                                    ; $6E5F: $FF
    rst RST_38                                    ; $6E60: $FF
    rst RST_38                                    ; $6E61: $FF
    rst RST_38                                    ; $6E62: $FF
    rst RST_38                                    ; $6E63: $FF
    rst RST_38                                    ; $6E64: $FF
    rst RST_38                                    ; $6E65: $FF
    rst RST_38                                    ; $6E66: $FF
    rst RST_38                                    ; $6E67: $FF
    rst RST_38                                    ; $6E68: $FF
    rst RST_38                                    ; $6E69: $FF
    rst RST_38                                    ; $6E6A: $FF
    rst RST_38                                    ; $6E6B: $FF
    rst RST_38                                    ; $6E6C: $FF
    rst RST_38                                    ; $6E6D: $FF
    rst RST_38                                    ; $6E6E: $FF
    rst RST_38                                    ; $6E6F: $FF
    rst RST_38                                    ; $6E70: $FF
    rst RST_38                                    ; $6E71: $FF
    rst RST_38                                    ; $6E72: $FF
    rst RST_38                                    ; $6E73: $FF
    rst RST_38                                    ; $6E74: $FF
    rst RST_38                                    ; $6E75: $FF
    rst RST_38                                    ; $6E76: $FF
    rst RST_38                                    ; $6E77: $FF
    rst RST_38                                    ; $6E78: $FF
    rst RST_38                                    ; $6E79: $FF
    rst RST_38                                    ; $6E7A: $FF
    rst RST_38                                    ; $6E7B: $FF
    rst RST_38                                    ; $6E7C: $FF
    rst RST_38                                    ; $6E7D: $FF
    rst RST_38                                    ; $6E7E: $FF
    rst RST_38                                    ; $6E7F: $FF
    rst RST_38                                    ; $6E80: $FF
    rst RST_38                                    ; $6E81: $FF
    rst RST_38                                    ; $6E82: $FF
    rst RST_38                                    ; $6E83: $FF
    rst RST_38                                    ; $6E84: $FF
    rst RST_38                                    ; $6E85: $FF
    rst RST_38                                    ; $6E86: $FF
    rst RST_38                                    ; $6E87: $FF
    rst RST_38                                    ; $6E88: $FF
    rst RST_38                                    ; $6E89: $FF
    rst RST_38                                    ; $6E8A: $FF
    rst RST_38                                    ; $6E8B: $FF
    rst RST_38                                    ; $6E8C: $FF
    rst RST_38                                    ; $6E8D: $FF
    rst RST_38                                    ; $6E8E: $FF
    rst RST_38                                    ; $6E8F: $FF
    rst RST_38                                    ; $6E90: $FF
    rst RST_38                                    ; $6E91: $FF
    rst RST_38                                    ; $6E92: $FF
    rst RST_38                                    ; $6E93: $FF
    rst RST_38                                    ; $6E94: $FF
    rst RST_38                                    ; $6E95: $FF
    rst RST_38                                    ; $6E96: $FF
    rst RST_38                                    ; $6E97: $FF
    rst RST_38                                    ; $6E98: $FF
    rst RST_38                                    ; $6E99: $FF
    rst RST_38                                    ; $6E9A: $FF
    rst RST_38                                    ; $6E9B: $FF
    rst RST_38                                    ; $6E9C: $FF
    rst RST_38                                    ; $6E9D: $FF
    rst RST_38                                    ; $6E9E: $FF
    rst RST_38                                    ; $6E9F: $FF
    rst RST_38                                    ; $6EA0: $FF
    rst RST_38                                    ; $6EA1: $FF
    rst RST_38                                    ; $6EA2: $FF
    rst RST_38                                    ; $6EA3: $FF
    rst RST_38                                    ; $6EA4: $FF
    rst RST_38                                    ; $6EA5: $FF
    rst RST_38                                    ; $6EA6: $FF
    rst RST_38                                    ; $6EA7: $FF
    rst RST_38                                    ; $6EA8: $FF
    rst RST_38                                    ; $6EA9: $FF
    rst RST_38                                    ; $6EAA: $FF
    rst RST_38                                    ; $6EAB: $FF
    rst RST_38                                    ; $6EAC: $FF
    rst RST_38                                    ; $6EAD: $FF
    rst RST_38                                    ; $6EAE: $FF
    rst RST_38                                    ; $6EAF: $FF
    rst RST_38                                    ; $6EB0: $FF
    rst RST_38                                    ; $6EB1: $FF
    rst RST_38                                    ; $6EB2: $FF
    rst RST_38                                    ; $6EB3: $FF
    rst RST_38                                    ; $6EB4: $FF
    rst RST_38                                    ; $6EB5: $FF
    rst RST_38                                    ; $6EB6: $FF
    rst RST_38                                    ; $6EB7: $FF
    rst RST_38                                    ; $6EB8: $FF
    rst RST_38                                    ; $6EB9: $FF
    rst RST_38                                    ; $6EBA: $FF
    rst RST_38                                    ; $6EBB: $FF
    rst RST_38                                    ; $6EBC: $FF
    rst RST_38                                    ; $6EBD: $FF
    rst RST_38                                    ; $6EBE: $FF
    rst RST_38                                    ; $6EBF: $FF
    rst RST_38                                    ; $6EC0: $FF
    rst RST_38                                    ; $6EC1: $FF
    rst RST_38                                    ; $6EC2: $FF
    rst RST_38                                    ; $6EC3: $FF
    rst RST_38                                    ; $6EC4: $FF
    rst RST_38                                    ; $6EC5: $FF
    rst RST_38                                    ; $6EC6: $FF
    rst RST_38                                    ; $6EC7: $FF
    rst RST_38                                    ; $6EC8: $FF
    rst RST_38                                    ; $6EC9: $FF
    rst RST_38                                    ; $6ECA: $FF
    rst RST_38                                    ; $6ECB: $FF
    rst RST_38                                    ; $6ECC: $FF
    rst RST_38                                    ; $6ECD: $FF
    rst RST_38                                    ; $6ECE: $FF
    rst RST_38                                    ; $6ECF: $FF
    rst RST_38                                    ; $6ED0: $FF
    rst RST_38                                    ; $6ED1: $FF
    rst RST_38                                    ; $6ED2: $FF
    rst RST_38                                    ; $6ED3: $FF
    rst RST_38                                    ; $6ED4: $FF
    rst RST_38                                    ; $6ED5: $FF
    rst RST_38                                    ; $6ED6: $FF
    rst RST_38                                    ; $6ED7: $FF
    rst RST_38                                    ; $6ED8: $FF
    rst RST_38                                    ; $6ED9: $FF
    rst RST_38                                    ; $6EDA: $FF
    rst RST_38                                    ; $6EDB: $FF
    rst RST_38                                    ; $6EDC: $FF
    rst RST_38                                    ; $6EDD: $FF
    rst RST_38                                    ; $6EDE: $FF
    rst RST_38                                    ; $6EDF: $FF
    rst RST_38                                    ; $6EE0: $FF
    rst RST_38                                    ; $6EE1: $FF
    rst RST_38                                    ; $6EE2: $FF
    rst RST_38                                    ; $6EE3: $FF
    rst RST_38                                    ; $6EE4: $FF
    rst RST_38                                    ; $6EE5: $FF
    rst RST_38                                    ; $6EE6: $FF
    rst RST_38                                    ; $6EE7: $FF
    rst RST_38                                    ; $6EE8: $FF
    rst RST_38                                    ; $6EE9: $FF
    rst RST_38                                    ; $6EEA: $FF
    rst RST_38                                    ; $6EEB: $FF
    rst RST_38                                    ; $6EEC: $FF
    rst RST_38                                    ; $6EED: $FF
    rst RST_38                                    ; $6EEE: $FF
    rst RST_38                                    ; $6EEF: $FF
    rst RST_38                                    ; $6EF0: $FF
    rst RST_38                                    ; $6EF1: $FF
    rst RST_38                                    ; $6EF2: $FF
    rst RST_38                                    ; $6EF3: $FF
    rst RST_38                                    ; $6EF4: $FF
    rst RST_38                                    ; $6EF5: $FF
    rst RST_38                                    ; $6EF6: $FF
    rst RST_38                                    ; $6EF7: $FF
    rst RST_38                                    ; $6EF8: $FF
    rst RST_38                                    ; $6EF9: $FF
    rst RST_38                                    ; $6EFA: $FF
    rst RST_38                                    ; $6EFB: $FF
    rst RST_38                                    ; $6EFC: $FF
    rst RST_38                                    ; $6EFD: $FF
    rst RST_38                                    ; $6EFE: $FF
    rst RST_38                                    ; $6EFF: $FF
    rst RST_38                                    ; $6F00: $FF
    rst RST_38                                    ; $6F01: $FF
    rst RST_38                                    ; $6F02: $FF
    rst RST_38                                    ; $6F03: $FF
    rst RST_38                                    ; $6F04: $FF
    rst RST_38                                    ; $6F05: $FF
    rst RST_38                                    ; $6F06: $FF
    rst RST_38                                    ; $6F07: $FF
    rst RST_38                                    ; $6F08: $FF
    rst RST_38                                    ; $6F09: $FF
    rst RST_38                                    ; $6F0A: $FF
    rst RST_38                                    ; $6F0B: $FF
    rst RST_38                                    ; $6F0C: $FF
    rst RST_38                                    ; $6F0D: $FF
    rst RST_38                                    ; $6F0E: $FF
    rst RST_38                                    ; $6F0F: $FF
    rst RST_38                                    ; $6F10: $FF
    rst RST_38                                    ; $6F11: $FF
    rst RST_38                                    ; $6F12: $FF
    rst RST_38                                    ; $6F13: $FF
    rst RST_38                                    ; $6F14: $FF
    rst RST_38                                    ; $6F15: $FF
    rst RST_38                                    ; $6F16: $FF
    rst RST_38                                    ; $6F17: $FF
    rst RST_38                                    ; $6F18: $FF
    rst RST_38                                    ; $6F19: $FF
    rst RST_38                                    ; $6F1A: $FF
    rst RST_38                                    ; $6F1B: $FF
    rst RST_38                                    ; $6F1C: $FF
    rst RST_38                                    ; $6F1D: $FF
    rst RST_38                                    ; $6F1E: $FF
    rst RST_38                                    ; $6F1F: $FF
    rst RST_38                                    ; $6F20: $FF
    rst RST_38                                    ; $6F21: $FF
    rst RST_38                                    ; $6F22: $FF
    rst RST_38                                    ; $6F23: $FF
    rst RST_38                                    ; $6F24: $FF
    rst RST_38                                    ; $6F25: $FF
    rst RST_38                                    ; $6F26: $FF
    rst RST_38                                    ; $6F27: $FF
    rst RST_38                                    ; $6F28: $FF
    rst RST_38                                    ; $6F29: $FF
    rst RST_38                                    ; $6F2A: $FF
    rst RST_38                                    ; $6F2B: $FF
    rst RST_38                                    ; $6F2C: $FF
    rst RST_38                                    ; $6F2D: $FF
    rst RST_38                                    ; $6F2E: $FF
    rst RST_38                                    ; $6F2F: $FF
    rst RST_38                                    ; $6F30: $FF
    rst RST_38                                    ; $6F31: $FF
    rst RST_38                                    ; $6F32: $FF
    rst RST_38                                    ; $6F33: $FF
    rst RST_38                                    ; $6F34: $FF
    rst RST_38                                    ; $6F35: $FF
    rst RST_38                                    ; $6F36: $FF
    rst RST_38                                    ; $6F37: $FF
    rst RST_38                                    ; $6F38: $FF
    rst RST_38                                    ; $6F39: $FF
    rst RST_38                                    ; $6F3A: $FF
    rst RST_38                                    ; $6F3B: $FF
    rst RST_38                                    ; $6F3C: $FF
    rst RST_38                                    ; $6F3D: $FF
    rst RST_38                                    ; $6F3E: $FF
    rst RST_38                                    ; $6F3F: $FF
    rst RST_38                                    ; $6F40: $FF
    rst RST_38                                    ; $6F41: $FF
    rst RST_38                                    ; $6F42: $FF
    rst RST_38                                    ; $6F43: $FF
    rst RST_38                                    ; $6F44: $FF
    rst RST_38                                    ; $6F45: $FF
    rst RST_38                                    ; $6F46: $FF
    rst RST_38                                    ; $6F47: $FF
    rst RST_38                                    ; $6F48: $FF
    rst RST_38                                    ; $6F49: $FF
    rst RST_38                                    ; $6F4A: $FF
    rst RST_38                                    ; $6F4B: $FF
    rst RST_38                                    ; $6F4C: $FF
    rst RST_38                                    ; $6F4D: $FF
    rst RST_38                                    ; $6F4E: $FF
    rst RST_38                                    ; $6F4F: $FF
    rst RST_38                                    ; $6F50: $FF
    rst RST_38                                    ; $6F51: $FF
    rst RST_38                                    ; $6F52: $FF
    rst RST_38                                    ; $6F53: $FF
    rst RST_38                                    ; $6F54: $FF
    rst RST_38                                    ; $6F55: $FF
    rst RST_38                                    ; $6F56: $FF
    rst RST_38                                    ; $6F57: $FF
    rst RST_38                                    ; $6F58: $FF
    rst RST_38                                    ; $6F59: $FF
    rst RST_38                                    ; $6F5A: $FF
    rst RST_38                                    ; $6F5B: $FF
    rst RST_38                                    ; $6F5C: $FF
    rst RST_38                                    ; $6F5D: $FF
    rst RST_38                                    ; $6F5E: $FF
    rst RST_38                                    ; $6F5F: $FF
    rst RST_38                                    ; $6F60: $FF
    rst RST_38                                    ; $6F61: $FF
    rst RST_38                                    ; $6F62: $FF
    rst RST_38                                    ; $6F63: $FF
    rst RST_38                                    ; $6F64: $FF
    rst RST_38                                    ; $6F65: $FF
    rst RST_38                                    ; $6F66: $FF
    rst RST_38                                    ; $6F67: $FF
    rst RST_38                                    ; $6F68: $FF
    rst RST_38                                    ; $6F69: $FF
    rst RST_38                                    ; $6F6A: $FF
    rst RST_38                                    ; $6F6B: $FF
    rst RST_38                                    ; $6F6C: $FF
    rst RST_38                                    ; $6F6D: $FF
    rst RST_38                                    ; $6F6E: $FF
    rst RST_38                                    ; $6F6F: $FF
    rst RST_38                                    ; $6F70: $FF
    rst RST_38                                    ; $6F71: $FF
    rst RST_38                                    ; $6F72: $FF
    rst RST_38                                    ; $6F73: $FF
    rst RST_38                                    ; $6F74: $FF
    rst RST_38                                    ; $6F75: $FF
    rst RST_38                                    ; $6F76: $FF
    rst RST_38                                    ; $6F77: $FF
    rst RST_38                                    ; $6F78: $FF
    rst RST_38                                    ; $6F79: $FF
    rst RST_38                                    ; $6F7A: $FF
    rst RST_38                                    ; $6F7B: $FF
    rst RST_38                                    ; $6F7C: $FF
    rst RST_38                                    ; $6F7D: $FF
    rst RST_38                                    ; $6F7E: $FF
    rst RST_38                                    ; $6F7F: $FF
    rst RST_38                                    ; $6F80: $FF
    rst RST_38                                    ; $6F81: $FF
    rst RST_38                                    ; $6F82: $FF
    rst RST_38                                    ; $6F83: $FF
    rst RST_38                                    ; $6F84: $FF
    rst RST_38                                    ; $6F85: $FF
    rst RST_38                                    ; $6F86: $FF
    rst RST_38                                    ; $6F87: $FF
    rst RST_38                                    ; $6F88: $FF
    rst RST_38                                    ; $6F89: $FF
    rst RST_38                                    ; $6F8A: $FF
    rst RST_38                                    ; $6F8B: $FF
    rst RST_38                                    ; $6F8C: $FF
    rst RST_38                                    ; $6F8D: $FF
    rst RST_38                                    ; $6F8E: $FF
    rst RST_38                                    ; $6F8F: $FF
    rst RST_38                                    ; $6F90: $FF
    rst RST_38                                    ; $6F91: $FF
    rst RST_38                                    ; $6F92: $FF
    rst RST_38                                    ; $6F93: $FF
    rst RST_38                                    ; $6F94: $FF
    rst RST_38                                    ; $6F95: $FF
    rst RST_38                                    ; $6F96: $FF
    rst RST_38                                    ; $6F97: $FF
    rst RST_38                                    ; $6F98: $FF
    rst RST_38                                    ; $6F99: $FF
    rst RST_38                                    ; $6F9A: $FF
    rst RST_38                                    ; $6F9B: $FF
    rst RST_38                                    ; $6F9C: $FF
    rst RST_38                                    ; $6F9D: $FF
    rst RST_38                                    ; $6F9E: $FF
    rst RST_38                                    ; $6F9F: $FF
    rst RST_38                                    ; $6FA0: $FF
    rst RST_38                                    ; $6FA1: $FF
    rst RST_38                                    ; $6FA2: $FF
    rst RST_38                                    ; $6FA3: $FF
    rst RST_38                                    ; $6FA4: $FF
    rst RST_38                                    ; $6FA5: $FF
    rst RST_38                                    ; $6FA6: $FF
    rst RST_38                                    ; $6FA7: $FF
    rst RST_38                                    ; $6FA8: $FF
    rst RST_38                                    ; $6FA9: $FF
    rst RST_38                                    ; $6FAA: $FF
    rst RST_38                                    ; $6FAB: $FF
    rst RST_38                                    ; $6FAC: $FF
    rst RST_38                                    ; $6FAD: $FF
    rst RST_38                                    ; $6FAE: $FF
    rst RST_38                                    ; $6FAF: $FF
    rst RST_38                                    ; $6FB0: $FF
    rst RST_38                                    ; $6FB1: $FF
    rst RST_38                                    ; $6FB2: $FF
    rst RST_38                                    ; $6FB3: $FF
    rst RST_38                                    ; $6FB4: $FF
    rst RST_38                                    ; $6FB5: $FF
    rst RST_38                                    ; $6FB6: $FF
    rst RST_38                                    ; $6FB7: $FF
    rst RST_38                                    ; $6FB8: $FF
    rst RST_38                                    ; $6FB9: $FF
    rst RST_38                                    ; $6FBA: $FF
    rst RST_38                                    ; $6FBB: $FF
    rst RST_38                                    ; $6FBC: $FF
    rst RST_38                                    ; $6FBD: $FF
    rst RST_38                                    ; $6FBE: $FF
    rst RST_38                                    ; $6FBF: $FF
    rst RST_38                                    ; $6FC0: $FF
    rst RST_38                                    ; $6FC1: $FF
    rst RST_38                                    ; $6FC2: $FF
    rst RST_38                                    ; $6FC3: $FF
    rst RST_38                                    ; $6FC4: $FF
    rst RST_38                                    ; $6FC5: $FF
    rst RST_38                                    ; $6FC6: $FF
    rst RST_38                                    ; $6FC7: $FF
    rst RST_38                                    ; $6FC8: $FF
    rst RST_38                                    ; $6FC9: $FF
    rst RST_38                                    ; $6FCA: $FF
    rst RST_38                                    ; $6FCB: $FF
    rst RST_38                                    ; $6FCC: $FF
    rst RST_38                                    ; $6FCD: $FF
    rst RST_38                                    ; $6FCE: $FF
    rst RST_38                                    ; $6FCF: $FF
    rst RST_38                                    ; $6FD0: $FF
    rst RST_38                                    ; $6FD1: $FF
    rst RST_38                                    ; $6FD2: $FF
    rst RST_38                                    ; $6FD3: $FF
    rst RST_38                                    ; $6FD4: $FF
    rst RST_38                                    ; $6FD5: $FF
    rst RST_38                                    ; $6FD6: $FF
    rst RST_38                                    ; $6FD7: $FF
    rst RST_38                                    ; $6FD8: $FF
    rst RST_38                                    ; $6FD9: $FF
    rst RST_38                                    ; $6FDA: $FF
    rst RST_38                                    ; $6FDB: $FF
    rst RST_38                                    ; $6FDC: $FF
    rst RST_38                                    ; $6FDD: $FF
    rst RST_38                                    ; $6FDE: $FF
    rst RST_38                                    ; $6FDF: $FF
    rst RST_38                                    ; $6FE0: $FF
    rst RST_38                                    ; $6FE1: $FF
    rst RST_38                                    ; $6FE2: $FF
    rst RST_38                                    ; $6FE3: $FF
    rst RST_38                                    ; $6FE4: $FF
    rst RST_38                                    ; $6FE5: $FF
    rst RST_38                                    ; $6FE6: $FF
    rst RST_38                                    ; $6FE7: $FF
    rst RST_38                                    ; $6FE8: $FF
    rst RST_38                                    ; $6FE9: $FF
    rst RST_38                                    ; $6FEA: $FF
    rst RST_38                                    ; $6FEB: $FF
    rst RST_38                                    ; $6FEC: $FF
    rst RST_38                                    ; $6FED: $FF
    rst RST_38                                    ; $6FEE: $FF
    rst RST_38                                    ; $6FEF: $FF
    rst RST_38                                    ; $6FF0: $FF
    rst RST_38                                    ; $6FF1: $FF
    rst RST_38                                    ; $6FF2: $FF
    rst RST_38                                    ; $6FF3: $FF
    rst RST_38                                    ; $6FF4: $FF
    rst RST_38                                    ; $6FF5: $FF
    rst RST_38                                    ; $6FF6: $FF
    rst RST_38                                    ; $6FF7: $FF
    rst RST_38                                    ; $6FF8: $FF
    rst RST_38                                    ; $6FF9: $FF
    rst RST_38                                    ; $6FFA: $FF
    rst RST_38                                    ; $6FFB: $FF
    rst RST_38                                    ; $6FFC: $FF
    rst RST_38                                    ; $6FFD: $FF
    rst RST_38                                    ; $6FFE: $FF
    rst RST_38                                    ; $6FFF: $FF
    rst RST_38                                    ; $7000: $FF
    rst RST_38                                    ; $7001: $FF
    rst RST_38                                    ; $7002: $FF
    rst RST_38                                    ; $7003: $FF
    rst RST_38                                    ; $7004: $FF
    rst RST_38                                    ; $7005: $FF
    rst RST_38                                    ; $7006: $FF
    rst RST_38                                    ; $7007: $FF
    rst RST_38                                    ; $7008: $FF
    rst RST_38                                    ; $7009: $FF
    rst RST_38                                    ; $700A: $FF
    rst RST_38                                    ; $700B: $FF
    rst RST_38                                    ; $700C: $FF
    rst RST_38                                    ; $700D: $FF
    rst RST_38                                    ; $700E: $FF
    rst RST_38                                    ; $700F: $FF
    rst RST_38                                    ; $7010: $FF
    rst RST_38                                    ; $7011: $FF
    rst RST_38                                    ; $7012: $FF
    rst RST_38                                    ; $7013: $FF
    rst RST_38                                    ; $7014: $FF
    rst RST_38                                    ; $7015: $FF
    rst RST_38                                    ; $7016: $FF
    rst RST_38                                    ; $7017: $FF
    rst RST_38                                    ; $7018: $FF
    rst RST_38                                    ; $7019: $FF
    rst RST_38                                    ; $701A: $FF
    rst RST_38                                    ; $701B: $FF
    rst RST_38                                    ; $701C: $FF
    rst RST_38                                    ; $701D: $FF
    rst RST_38                                    ; $701E: $FF
    rst RST_38                                    ; $701F: $FF
    rst RST_38                                    ; $7020: $FF
    rst RST_38                                    ; $7021: $FF
    rst RST_38                                    ; $7022: $FF
    rst RST_38                                    ; $7023: $FF
    rst RST_38                                    ; $7024: $FF
    rst RST_38                                    ; $7025: $FF
    rst RST_38                                    ; $7026: $FF
    rst RST_38                                    ; $7027: $FF
    rst RST_38                                    ; $7028: $FF
    rst RST_38                                    ; $7029: $FF
    rst RST_38                                    ; $702A: $FF
    rst RST_38                                    ; $702B: $FF
    rst RST_38                                    ; $702C: $FF
    rst RST_38                                    ; $702D: $FF
    rst RST_38                                    ; $702E: $FF
    rst RST_38                                    ; $702F: $FF
    rst RST_38                                    ; $7030: $FF
    rst RST_38                                    ; $7031: $FF
    rst RST_38                                    ; $7032: $FF
    rst RST_38                                    ; $7033: $FF
    rst RST_38                                    ; $7034: $FF
    rst RST_38                                    ; $7035: $FF
    rst RST_38                                    ; $7036: $FF
    rst RST_38                                    ; $7037: $FF
    rst RST_38                                    ; $7038: $FF
    rst RST_38                                    ; $7039: $FF
    rst RST_38                                    ; $703A: $FF
    rst RST_38                                    ; $703B: $FF
    rst RST_38                                    ; $703C: $FF
    rst RST_38                                    ; $703D: $FF
    rst RST_38                                    ; $703E: $FF
    rst RST_38                                    ; $703F: $FF
    rst RST_38                                    ; $7040: $FF
    rst RST_38                                    ; $7041: $FF
    rst RST_38                                    ; $7042: $FF
    rst RST_38                                    ; $7043: $FF
    rst RST_38                                    ; $7044: $FF
    rst RST_38                                    ; $7045: $FF
    rst RST_38                                    ; $7046: $FF
    rst RST_38                                    ; $7047: $FF
    rst RST_38                                    ; $7048: $FF
    rst RST_38                                    ; $7049: $FF
    rst RST_38                                    ; $704A: $FF
    rst RST_38                                    ; $704B: $FF
    rst RST_38                                    ; $704C: $FF
    rst RST_38                                    ; $704D: $FF
    rst RST_38                                    ; $704E: $FF
    rst RST_38                                    ; $704F: $FF
    rst RST_38                                    ; $7050: $FF
    rst RST_38                                    ; $7051: $FF
    rst RST_38                                    ; $7052: $FF
    rst RST_38                                    ; $7053: $FF
    rst RST_38                                    ; $7054: $FF
    rst RST_38                                    ; $7055: $FF
    rst RST_38                                    ; $7056: $FF
    rst RST_38                                    ; $7057: $FF
    rst RST_38                                    ; $7058: $FF
    rst RST_38                                    ; $7059: $FF
    rst RST_38                                    ; $705A: $FF
    rst RST_38                                    ; $705B: $FF
    rst RST_38                                    ; $705C: $FF
    rst RST_38                                    ; $705D: $FF
    rst RST_38                                    ; $705E: $FF
    rst RST_38                                    ; $705F: $FF
    rst RST_38                                    ; $7060: $FF
    rst RST_38                                    ; $7061: $FF
    rst RST_38                                    ; $7062: $FF
    rst RST_38                                    ; $7063: $FF
    rst RST_38                                    ; $7064: $FF
    rst RST_38                                    ; $7065: $FF
    rst RST_38                                    ; $7066: $FF
    rst RST_38                                    ; $7067: $FF
    rst RST_38                                    ; $7068: $FF
    rst RST_38                                    ; $7069: $FF
    rst RST_38                                    ; $706A: $FF
    rst RST_38                                    ; $706B: $FF
    rst RST_38                                    ; $706C: $FF
    rst RST_38                                    ; $706D: $FF
    rst RST_38                                    ; $706E: $FF
    rst RST_38                                    ; $706F: $FF
    rst RST_38                                    ; $7070: $FF
    rst RST_38                                    ; $7071: $FF
    rst RST_38                                    ; $7072: $FF
    rst RST_38                                    ; $7073: $FF
    rst RST_38                                    ; $7074: $FF
    rst RST_38                                    ; $7075: $FF
    rst RST_38                                    ; $7076: $FF
    rst RST_38                                    ; $7077: $FF
    rst RST_38                                    ; $7078: $FF
    rst RST_38                                    ; $7079: $FF
    rst RST_38                                    ; $707A: $FF
    rst RST_38                                    ; $707B: $FF
    rst RST_38                                    ; $707C: $FF
    rst RST_38                                    ; $707D: $FF
    rst RST_38                                    ; $707E: $FF
    rst RST_38                                    ; $707F: $FF
    rst RST_38                                    ; $7080: $FF
    rst RST_38                                    ; $7081: $FF
    rst RST_38                                    ; $7082: $FF
    rst RST_38                                    ; $7083: $FF
    rst RST_38                                    ; $7084: $FF
    rst RST_38                                    ; $7085: $FF
    rst RST_38                                    ; $7086: $FF
    rst RST_38                                    ; $7087: $FF
    rst RST_38                                    ; $7088: $FF
    rst RST_38                                    ; $7089: $FF
    rst RST_38                                    ; $708A: $FF
    rst RST_38                                    ; $708B: $FF
    rst RST_38                                    ; $708C: $FF
    rst RST_38                                    ; $708D: $FF
    rst RST_38                                    ; $708E: $FF
    rst RST_38                                    ; $708F: $FF
    rst RST_38                                    ; $7090: $FF
    rst RST_38                                    ; $7091: $FF
    rst RST_38                                    ; $7092: $FF
    rst RST_38                                    ; $7093: $FF
    rst RST_38                                    ; $7094: $FF
    rst RST_38                                    ; $7095: $FF
    rst RST_38                                    ; $7096: $FF
    rst RST_38                                    ; $7097: $FF
    rst RST_38                                    ; $7098: $FF
    rst RST_38                                    ; $7099: $FF
    rst RST_38                                    ; $709A: $FF
    rst RST_38                                    ; $709B: $FF
    rst RST_38                                    ; $709C: $FF
    rst RST_38                                    ; $709D: $FF
    rst RST_38                                    ; $709E: $FF
    rst RST_38                                    ; $709F: $FF
    rst RST_38                                    ; $70A0: $FF
    rst RST_38                                    ; $70A1: $FF
    rst RST_38                                    ; $70A2: $FF
    rst RST_38                                    ; $70A3: $FF
    rst RST_38                                    ; $70A4: $FF
    rst RST_38                                    ; $70A5: $FF
    rst RST_38                                    ; $70A6: $FF
    rst RST_38                                    ; $70A7: $FF
    rst RST_38                                    ; $70A8: $FF
    rst RST_38                                    ; $70A9: $FF
    rst RST_38                                    ; $70AA: $FF
    rst RST_38                                    ; $70AB: $FF
    rst RST_38                                    ; $70AC: $FF
    rst RST_38                                    ; $70AD: $FF
    rst RST_38                                    ; $70AE: $FF
    rst RST_38                                    ; $70AF: $FF
    rst RST_38                                    ; $70B0: $FF
    rst RST_38                                    ; $70B1: $FF
    rst RST_38                                    ; $70B2: $FF
    rst RST_38                                    ; $70B3: $FF
    rst RST_38                                    ; $70B4: $FF
    rst RST_38                                    ; $70B5: $FF
    rst RST_38                                    ; $70B6: $FF
    rst RST_38                                    ; $70B7: $FF
    rst RST_38                                    ; $70B8: $FF
    rst RST_38                                    ; $70B9: $FF
    rst RST_38                                    ; $70BA: $FF
    rst RST_38                                    ; $70BB: $FF
    rst RST_38                                    ; $70BC: $FF
    rst RST_38                                    ; $70BD: $FF
    rst RST_38                                    ; $70BE: $FF
    rst RST_38                                    ; $70BF: $FF
    rst RST_38                                    ; $70C0: $FF
    rst RST_38                                    ; $70C1: $FF
    rst RST_38                                    ; $70C2: $FF
    rst RST_38                                    ; $70C3: $FF
    rst RST_38                                    ; $70C4: $FF
    rst RST_38                                    ; $70C5: $FF
    rst RST_38                                    ; $70C6: $FF
    rst RST_38                                    ; $70C7: $FF
    rst RST_38                                    ; $70C8: $FF
    rst RST_38                                    ; $70C9: $FF
    rst RST_38                                    ; $70CA: $FF
    rst RST_38                                    ; $70CB: $FF
    rst RST_38                                    ; $70CC: $FF
    rst RST_38                                    ; $70CD: $FF
    rst RST_38                                    ; $70CE: $FF
    rst RST_38                                    ; $70CF: $FF
    rst RST_38                                    ; $70D0: $FF
    rst RST_38                                    ; $70D1: $FF
    rst RST_38                                    ; $70D2: $FF
    rst RST_38                                    ; $70D3: $FF
    rst RST_38                                    ; $70D4: $FF
    rst RST_38                                    ; $70D5: $FF
    rst RST_38                                    ; $70D6: $FF
    rst RST_38                                    ; $70D7: $FF
    rst RST_38                                    ; $70D8: $FF
    rst RST_38                                    ; $70D9: $FF
    rst RST_38                                    ; $70DA: $FF
    rst RST_38                                    ; $70DB: $FF
    rst RST_38                                    ; $70DC: $FF
    rst RST_38                                    ; $70DD: $FF
    rst RST_38                                    ; $70DE: $FF
    rst RST_38                                    ; $70DF: $FF
    rst RST_38                                    ; $70E0: $FF
    rst RST_38                                    ; $70E1: $FF
    rst RST_38                                    ; $70E2: $FF
    rst RST_38                                    ; $70E3: $FF
    rst RST_38                                    ; $70E4: $FF
    rst RST_38                                    ; $70E5: $FF
    rst RST_38                                    ; $70E6: $FF
    rst RST_38                                    ; $70E7: $FF
    rst RST_38                                    ; $70E8: $FF
    rst RST_38                                    ; $70E9: $FF
    rst RST_38                                    ; $70EA: $FF
    rst RST_38                                    ; $70EB: $FF
    rst RST_38                                    ; $70EC: $FF
    rst RST_38                                    ; $70ED: $FF
    rst RST_38                                    ; $70EE: $FF
    rst RST_38                                    ; $70EF: $FF
    rst RST_38                                    ; $70F0: $FF
    rst RST_38                                    ; $70F1: $FF
    rst RST_38                                    ; $70F2: $FF
    rst RST_38                                    ; $70F3: $FF
    rst RST_38                                    ; $70F4: $FF
    rst RST_38                                    ; $70F5: $FF
    rst RST_38                                    ; $70F6: $FF
    rst RST_38                                    ; $70F7: $FF
    rst RST_38                                    ; $70F8: $FF
    rst RST_38                                    ; $70F9: $FF
    rst RST_38                                    ; $70FA: $FF
    rst RST_38                                    ; $70FB: $FF
    rst RST_38                                    ; $70FC: $FF
    rst RST_38                                    ; $70FD: $FF
    rst RST_38                                    ; $70FE: $FF
    rst RST_38                                    ; $70FF: $FF
    rst RST_38                                    ; $7100: $FF
    rst RST_38                                    ; $7101: $FF
    rst RST_38                                    ; $7102: $FF
    rst RST_38                                    ; $7103: $FF
    rst RST_38                                    ; $7104: $FF
    rst RST_38                                    ; $7105: $FF
    rst RST_38                                    ; $7106: $FF
    rst RST_38                                    ; $7107: $FF
    rst RST_38                                    ; $7108: $FF
    rst RST_38                                    ; $7109: $FF
    rst RST_38                                    ; $710A: $FF
    rst RST_38                                    ; $710B: $FF
    rst RST_38                                    ; $710C: $FF
    rst RST_38                                    ; $710D: $FF
    rst RST_38                                    ; $710E: $FF
    rst RST_38                                    ; $710F: $FF
    rst RST_38                                    ; $7110: $FF
    rst RST_38                                    ; $7111: $FF
    rst RST_38                                    ; $7112: $FF
    rst RST_38                                    ; $7113: $FF
    rst RST_38                                    ; $7114: $FF
    rst RST_38                                    ; $7115: $FF
    rst RST_38                                    ; $7116: $FF
    rst RST_38                                    ; $7117: $FF
    rst RST_38                                    ; $7118: $FF
    rst RST_38                                    ; $7119: $FF
    rst RST_38                                    ; $711A: $FF
    rst RST_38                                    ; $711B: $FF
    rst RST_38                                    ; $711C: $FF
    rst RST_38                                    ; $711D: $FF
    rst RST_38                                    ; $711E: $FF
    rst RST_38                                    ; $711F: $FF
    rst RST_38                                    ; $7120: $FF
    rst RST_38                                    ; $7121: $FF
    rst RST_38                                    ; $7122: $FF
    rst RST_38                                    ; $7123: $FF
    rst RST_38                                    ; $7124: $FF
    rst RST_38                                    ; $7125: $FF
    rst RST_38                                    ; $7126: $FF
    rst RST_38                                    ; $7127: $FF
    rst RST_38                                    ; $7128: $FF
    rst RST_38                                    ; $7129: $FF
    rst RST_38                                    ; $712A: $FF
    rst RST_38                                    ; $712B: $FF
    rst RST_38                                    ; $712C: $FF
    rst RST_38                                    ; $712D: $FF
    rst RST_38                                    ; $712E: $FF
    rst RST_38                                    ; $712F: $FF
    rst RST_38                                    ; $7130: $FF
    rst RST_38                                    ; $7131: $FF
    rst RST_38                                    ; $7132: $FF
    rst RST_38                                    ; $7133: $FF
    rst RST_38                                    ; $7134: $FF
    rst RST_38                                    ; $7135: $FF
    rst RST_38                                    ; $7136: $FF
    rst RST_38                                    ; $7137: $FF
    rst RST_38                                    ; $7138: $FF
    rst RST_38                                    ; $7139: $FF
    rst RST_38                                    ; $713A: $FF
    rst RST_38                                    ; $713B: $FF
    rst RST_38                                    ; $713C: $FF
    rst RST_38                                    ; $713D: $FF
    rst RST_38                                    ; $713E: $FF
    rst RST_38                                    ; $713F: $FF
    rst RST_38                                    ; $7140: $FF
    rst RST_38                                    ; $7141: $FF
    rst RST_38                                    ; $7142: $FF
    rst RST_38                                    ; $7143: $FF
    rst RST_38                                    ; $7144: $FF
    rst RST_38                                    ; $7145: $FF
    rst RST_38                                    ; $7146: $FF
    rst RST_38                                    ; $7147: $FF
    rst RST_38                                    ; $7148: $FF
    rst RST_38                                    ; $7149: $FF
    rst RST_38                                    ; $714A: $FF
    rst RST_38                                    ; $714B: $FF
    rst RST_38                                    ; $714C: $FF
    rst RST_38                                    ; $714D: $FF
    rst RST_38                                    ; $714E: $FF
    rst RST_38                                    ; $714F: $FF
    rst RST_38                                    ; $7150: $FF
    rst RST_38                                    ; $7151: $FF
    rst RST_38                                    ; $7152: $FF
    rst RST_38                                    ; $7153: $FF
    rst RST_38                                    ; $7154: $FF
    rst RST_38                                    ; $7155: $FF
    rst RST_38                                    ; $7156: $FF
    rst RST_38                                    ; $7157: $FF
    rst RST_38                                    ; $7158: $FF
    rst RST_38                                    ; $7159: $FF
    rst RST_38                                    ; $715A: $FF
    rst RST_38                                    ; $715B: $FF
    rst RST_38                                    ; $715C: $FF
    rst RST_38                                    ; $715D: $FF
    rst RST_38                                    ; $715E: $FF
    rst RST_38                                    ; $715F: $FF
    rst RST_38                                    ; $7160: $FF
    rst RST_38                                    ; $7161: $FF
    rst RST_38                                    ; $7162: $FF
    rst RST_38                                    ; $7163: $FF
    rst RST_38                                    ; $7164: $FF
    rst RST_38                                    ; $7165: $FF
    rst RST_38                                    ; $7166: $FF
    rst RST_38                                    ; $7167: $FF
    rst RST_38                                    ; $7168: $FF
    rst RST_38                                    ; $7169: $FF
    rst RST_38                                    ; $716A: $FF
    rst RST_38                                    ; $716B: $FF
    rst RST_38                                    ; $716C: $FF
    rst RST_38                                    ; $716D: $FF
    rst RST_38                                    ; $716E: $FF
    rst RST_38                                    ; $716F: $FF
    rst RST_38                                    ; $7170: $FF
    rst RST_38                                    ; $7171: $FF
    rst RST_38                                    ; $7172: $FF
    rst RST_38                                    ; $7173: $FF
    rst RST_38                                    ; $7174: $FF
    rst RST_38                                    ; $7175: $FF
    rst RST_38                                    ; $7176: $FF
    rst RST_38                                    ; $7177: $FF
    rst RST_38                                    ; $7178: $FF
    rst RST_38                                    ; $7179: $FF
    rst RST_38                                    ; $717A: $FF
    rst RST_38                                    ; $717B: $FF
    rst RST_38                                    ; $717C: $FF
    rst RST_38                                    ; $717D: $FF
    rst RST_38                                    ; $717E: $FF
    rst RST_38                                    ; $717F: $FF
    rst RST_38                                    ; $7180: $FF
    rst RST_38                                    ; $7181: $FF
    rst RST_38                                    ; $7182: $FF
    rst RST_38                                    ; $7183: $FF
    rst RST_38                                    ; $7184: $FF
    rst RST_38                                    ; $7185: $FF
    rst RST_38                                    ; $7186: $FF
    rst RST_38                                    ; $7187: $FF
    rst RST_38                                    ; $7188: $FF
    rst RST_38                                    ; $7189: $FF
    rst RST_38                                    ; $718A: $FF
    rst RST_38                                    ; $718B: $FF
    rst RST_38                                    ; $718C: $FF
    rst RST_38                                    ; $718D: $FF
    rst RST_38                                    ; $718E: $FF
    rst RST_38                                    ; $718F: $FF
    rst RST_38                                    ; $7190: $FF
    rst RST_38                                    ; $7191: $FF
    rst RST_38                                    ; $7192: $FF
    rst RST_38                                    ; $7193: $FF
    rst RST_38                                    ; $7194: $FF
    rst RST_38                                    ; $7195: $FF
    rst RST_38                                    ; $7196: $FF
    rst RST_38                                    ; $7197: $FF
    rst RST_38                                    ; $7198: $FF
    rst RST_38                                    ; $7199: $FF
    rst RST_38                                    ; $719A: $FF
    rst RST_38                                    ; $719B: $FF
    rst RST_38                                    ; $719C: $FF
    rst RST_38                                    ; $719D: $FF
    rst RST_38                                    ; $719E: $FF
    rst RST_38                                    ; $719F: $FF
    rst RST_38                                    ; $71A0: $FF
    rst RST_38                                    ; $71A1: $FF
    rst RST_38                                    ; $71A2: $FF
    rst RST_38                                    ; $71A3: $FF
    rst RST_38                                    ; $71A4: $FF
    rst RST_38                                    ; $71A5: $FF
    rst RST_38                                    ; $71A6: $FF
    rst RST_38                                    ; $71A7: $FF
    rst RST_38                                    ; $71A8: $FF
    rst RST_38                                    ; $71A9: $FF
    rst RST_38                                    ; $71AA: $FF
    rst RST_38                                    ; $71AB: $FF
    rst RST_38                                    ; $71AC: $FF
    rst RST_38                                    ; $71AD: $FF
    rst RST_38                                    ; $71AE: $FF
    rst RST_38                                    ; $71AF: $FF
    rst RST_38                                    ; $71B0: $FF
    rst RST_38                                    ; $71B1: $FF
    rst RST_38                                    ; $71B2: $FF
    rst RST_38                                    ; $71B3: $FF
    rst RST_38                                    ; $71B4: $FF
    rst RST_38                                    ; $71B5: $FF
    rst RST_38                                    ; $71B6: $FF
    rst RST_38                                    ; $71B7: $FF
    rst RST_38                                    ; $71B8: $FF
    rst RST_38                                    ; $71B9: $FF
    rst RST_38                                    ; $71BA: $FF
    rst RST_38                                    ; $71BB: $FF
    rst RST_38                                    ; $71BC: $FF
    rst RST_38                                    ; $71BD: $FF
    rst RST_38                                    ; $71BE: $FF
    rst RST_38                                    ; $71BF: $FF
    rst RST_38                                    ; $71C0: $FF
    rst RST_38                                    ; $71C1: $FF
    rst RST_38                                    ; $71C2: $FF
    rst RST_38                                    ; $71C3: $FF
    rst RST_38                                    ; $71C4: $FF
    rst RST_38                                    ; $71C5: $FF
    rst RST_38                                    ; $71C6: $FF
    rst RST_38                                    ; $71C7: $FF
    rst RST_38                                    ; $71C8: $FF
    rst RST_38                                    ; $71C9: $FF
    rst RST_38                                    ; $71CA: $FF
    rst RST_38                                    ; $71CB: $FF
    rst RST_38                                    ; $71CC: $FF
    rst RST_38                                    ; $71CD: $FF
    rst RST_38                                    ; $71CE: $FF
    rst RST_38                                    ; $71CF: $FF
    rst RST_38                                    ; $71D0: $FF
    rst RST_38                                    ; $71D1: $FF
    rst RST_38                                    ; $71D2: $FF
    rst RST_38                                    ; $71D3: $FF
    rst RST_38                                    ; $71D4: $FF
    rst RST_38                                    ; $71D5: $FF
    rst RST_38                                    ; $71D6: $FF
    rst RST_38                                    ; $71D7: $FF
    rst RST_38                                    ; $71D8: $FF
    rst RST_38                                    ; $71D9: $FF
    rst RST_38                                    ; $71DA: $FF
    rst RST_38                                    ; $71DB: $FF
    rst RST_38                                    ; $71DC: $FF
    rst RST_38                                    ; $71DD: $FF
    rst RST_38                                    ; $71DE: $FF
    rst RST_38                                    ; $71DF: $FF
    rst RST_38                                    ; $71E0: $FF
    rst RST_38                                    ; $71E1: $FF
    rst RST_38                                    ; $71E2: $FF
    rst RST_38                                    ; $71E3: $FF
    rst RST_38                                    ; $71E4: $FF
    rst RST_38                                    ; $71E5: $FF
    rst RST_38                                    ; $71E6: $FF
    rst RST_38                                    ; $71E7: $FF
    rst RST_38                                    ; $71E8: $FF
    rst RST_38                                    ; $71E9: $FF
    rst RST_38                                    ; $71EA: $FF
    rst RST_38                                    ; $71EB: $FF
    rst RST_38                                    ; $71EC: $FF
    rst RST_38                                    ; $71ED: $FF
    rst RST_38                                    ; $71EE: $FF
    rst RST_38                                    ; $71EF: $FF
    rst RST_38                                    ; $71F0: $FF
    rst RST_38                                    ; $71F1: $FF
    rst RST_38                                    ; $71F2: $FF
    rst RST_38                                    ; $71F3: $FF
    rst RST_38                                    ; $71F4: $FF
    rst RST_38                                    ; $71F5: $FF
    rst RST_38                                    ; $71F6: $FF
    rst RST_38                                    ; $71F7: $FF
    rst RST_38                                    ; $71F8: $FF
    rst RST_38                                    ; $71F9: $FF
    rst RST_38                                    ; $71FA: $FF
    rst RST_38                                    ; $71FB: $FF
    rst RST_38                                    ; $71FC: $FF
    rst RST_38                                    ; $71FD: $FF
    rst RST_38                                    ; $71FE: $FF
    rst RST_38                                    ; $71FF: $FF
    rst RST_38                                    ; $7200: $FF
    rst RST_38                                    ; $7201: $FF
    rst RST_38                                    ; $7202: $FF
    rst RST_38                                    ; $7203: $FF
    rst RST_38                                    ; $7204: $FF
    rst RST_38                                    ; $7205: $FF
    rst RST_38                                    ; $7206: $FF
    rst RST_38                                    ; $7207: $FF
    rst RST_38                                    ; $7208: $FF
    rst RST_38                                    ; $7209: $FF
    rst RST_38                                    ; $720A: $FF
    rst RST_38                                    ; $720B: $FF
    rst RST_38                                    ; $720C: $FF
    rst RST_38                                    ; $720D: $FF
    rst RST_38                                    ; $720E: $FF
    rst RST_38                                    ; $720F: $FF
    rst RST_38                                    ; $7210: $FF
    rst RST_38                                    ; $7211: $FF
    rst RST_38                                    ; $7212: $FF
    rst RST_38                                    ; $7213: $FF
    rst RST_38                                    ; $7214: $FF
    rst RST_38                                    ; $7215: $FF
    rst RST_38                                    ; $7216: $FF
    rst RST_38                                    ; $7217: $FF
    rst RST_38                                    ; $7218: $FF
    rst RST_38                                    ; $7219: $FF
    rst RST_38                                    ; $721A: $FF
    rst RST_38                                    ; $721B: $FF
    rst RST_38                                    ; $721C: $FF
    rst RST_38                                    ; $721D: $FF
    rst RST_38                                    ; $721E: $FF
    rst RST_38                                    ; $721F: $FF
    rst RST_38                                    ; $7220: $FF
    rst RST_38                                    ; $7221: $FF
    rst RST_38                                    ; $7222: $FF
    rst RST_38                                    ; $7223: $FF
    rst RST_38                                    ; $7224: $FF
    rst RST_38                                    ; $7225: $FF
    rst RST_38                                    ; $7226: $FF
    rst RST_38                                    ; $7227: $FF
    rst RST_38                                    ; $7228: $FF
    rst RST_38                                    ; $7229: $FF
    rst RST_38                                    ; $722A: $FF
    rst RST_38                                    ; $722B: $FF
    rst RST_38                                    ; $722C: $FF
    rst RST_38                                    ; $722D: $FF
    rst RST_38                                    ; $722E: $FF
    rst RST_38                                    ; $722F: $FF
    rst RST_38                                    ; $7230: $FF
    rst RST_38                                    ; $7231: $FF
    rst RST_38                                    ; $7232: $FF
    rst RST_38                                    ; $7233: $FF
    rst RST_38                                    ; $7234: $FF
    rst RST_38                                    ; $7235: $FF
    rst RST_38                                    ; $7236: $FF
    rst RST_38                                    ; $7237: $FF
    rst RST_38                                    ; $7238: $FF
    rst RST_38                                    ; $7239: $FF
    rst RST_38                                    ; $723A: $FF
    rst RST_38                                    ; $723B: $FF
    rst RST_38                                    ; $723C: $FF
    rst RST_38                                    ; $723D: $FF
    rst RST_38                                    ; $723E: $FF
    rst RST_38                                    ; $723F: $FF
    rst RST_38                                    ; $7240: $FF
    rst RST_38                                    ; $7241: $FF
    rst RST_38                                    ; $7242: $FF
    rst RST_38                                    ; $7243: $FF
    rst RST_38                                    ; $7244: $FF
    rst RST_38                                    ; $7245: $FF
    rst RST_38                                    ; $7246: $FF
    rst RST_38                                    ; $7247: $FF
    rst RST_38                                    ; $7248: $FF
    rst RST_38                                    ; $7249: $FF
    rst RST_38                                    ; $724A: $FF
    rst RST_38                                    ; $724B: $FF
    rst RST_38                                    ; $724C: $FF
    rst RST_38                                    ; $724D: $FF
    rst RST_38                                    ; $724E: $FF
    rst RST_38                                    ; $724F: $FF
    rst RST_38                                    ; $7250: $FF
    rst RST_38                                    ; $7251: $FF
    rst RST_38                                    ; $7252: $FF
    rst RST_38                                    ; $7253: $FF
    rst RST_38                                    ; $7254: $FF
    rst RST_38                                    ; $7255: $FF
    rst RST_38                                    ; $7256: $FF
    rst RST_38                                    ; $7257: $FF
    rst RST_38                                    ; $7258: $FF
    rst RST_38                                    ; $7259: $FF
    rst RST_38                                    ; $725A: $FF
    rst RST_38                                    ; $725B: $FF
    rst RST_38                                    ; $725C: $FF
    rst RST_38                                    ; $725D: $FF
    rst RST_38                                    ; $725E: $FF
    rst RST_38                                    ; $725F: $FF
    rst RST_38                                    ; $7260: $FF
    rst RST_38                                    ; $7261: $FF
    rst RST_38                                    ; $7262: $FF
    rst RST_38                                    ; $7263: $FF
    rst RST_38                                    ; $7264: $FF
    rst RST_38                                    ; $7265: $FF
    rst RST_38                                    ; $7266: $FF
    rst RST_38                                    ; $7267: $FF
    rst RST_38                                    ; $7268: $FF
    rst RST_38                                    ; $7269: $FF
    rst RST_38                                    ; $726A: $FF
    rst RST_38                                    ; $726B: $FF
    rst RST_38                                    ; $726C: $FF
    rst RST_38                                    ; $726D: $FF
    rst RST_38                                    ; $726E: $FF
    rst RST_38                                    ; $726F: $FF
    rst RST_38                                    ; $7270: $FF
    rst RST_38                                    ; $7271: $FF
    rst RST_38                                    ; $7272: $FF
    rst RST_38                                    ; $7273: $FF
    rst RST_38                                    ; $7274: $FF
    rst RST_38                                    ; $7275: $FF
    rst RST_38                                    ; $7276: $FF
    rst RST_38                                    ; $7277: $FF
    rst RST_38                                    ; $7278: $FF
    rst RST_38                                    ; $7279: $FF
    rst RST_38                                    ; $727A: $FF
    rst RST_38                                    ; $727B: $FF
    rst RST_38                                    ; $727C: $FF
    rst RST_38                                    ; $727D: $FF
    rst RST_38                                    ; $727E: $FF
    rst RST_38                                    ; $727F: $FF
    rst RST_38                                    ; $7280: $FF
    rst RST_38                                    ; $7281: $FF
    rst RST_38                                    ; $7282: $FF
    rst RST_38                                    ; $7283: $FF
    rst RST_38                                    ; $7284: $FF
    rst RST_38                                    ; $7285: $FF
    rst RST_38                                    ; $7286: $FF
    rst RST_38                                    ; $7287: $FF
    rst RST_38                                    ; $7288: $FF
    rst RST_38                                    ; $7289: $FF
    rst RST_38                                    ; $728A: $FF
    rst RST_38                                    ; $728B: $FF
    rst RST_38                                    ; $728C: $FF
    rst RST_38                                    ; $728D: $FF
    rst RST_38                                    ; $728E: $FF
    rst RST_38                                    ; $728F: $FF
    rst RST_38                                    ; $7290: $FF
    rst RST_38                                    ; $7291: $FF
    rst RST_38                                    ; $7292: $FF
    rst RST_38                                    ; $7293: $FF
    rst RST_38                                    ; $7294: $FF
    rst RST_38                                    ; $7295: $FF
    rst RST_38                                    ; $7296: $FF
    rst RST_38                                    ; $7297: $FF
    rst RST_38                                    ; $7298: $FF
    rst RST_38                                    ; $7299: $FF
    rst RST_38                                    ; $729A: $FF
    rst RST_38                                    ; $729B: $FF
    rst RST_38                                    ; $729C: $FF
    rst RST_38                                    ; $729D: $FF
    rst RST_38                                    ; $729E: $FF
    rst RST_38                                    ; $729F: $FF
    rst RST_38                                    ; $72A0: $FF
    rst RST_38                                    ; $72A1: $FF
    rst RST_38                                    ; $72A2: $FF
    rst RST_38                                    ; $72A3: $FF
    rst RST_38                                    ; $72A4: $FF
    rst RST_38                                    ; $72A5: $FF
    rst RST_38                                    ; $72A6: $FF
    rst RST_38                                    ; $72A7: $FF
    rst RST_38                                    ; $72A8: $FF
    rst RST_38                                    ; $72A9: $FF
    rst RST_38                                    ; $72AA: $FF
    rst RST_38                                    ; $72AB: $FF
    rst RST_38                                    ; $72AC: $FF
    rst RST_38                                    ; $72AD: $FF
    rst RST_38                                    ; $72AE: $FF
    rst RST_38                                    ; $72AF: $FF
    rst RST_38                                    ; $72B0: $FF
    rst RST_38                                    ; $72B1: $FF
    rst RST_38                                    ; $72B2: $FF
    rst RST_38                                    ; $72B3: $FF
    rst RST_38                                    ; $72B4: $FF
    rst RST_38                                    ; $72B5: $FF
    rst RST_38                                    ; $72B6: $FF
    rst RST_38                                    ; $72B7: $FF
    rst RST_38                                    ; $72B8: $FF
    rst RST_38                                    ; $72B9: $FF
    rst RST_38                                    ; $72BA: $FF
    rst RST_38                                    ; $72BB: $FF
    rst RST_38                                    ; $72BC: $FF
    rst RST_38                                    ; $72BD: $FF
    rst RST_38                                    ; $72BE: $FF
    rst RST_38                                    ; $72BF: $FF
    rst RST_38                                    ; $72C0: $FF
    rst RST_38                                    ; $72C1: $FF
    rst RST_38                                    ; $72C2: $FF
    rst RST_38                                    ; $72C3: $FF
    rst RST_38                                    ; $72C4: $FF
    rst RST_38                                    ; $72C5: $FF
    rst RST_38                                    ; $72C6: $FF
    rst RST_38                                    ; $72C7: $FF
    rst RST_38                                    ; $72C8: $FF
    rst RST_38                                    ; $72C9: $FF
    rst RST_38                                    ; $72CA: $FF
    rst RST_38                                    ; $72CB: $FF
    rst RST_38                                    ; $72CC: $FF
    rst RST_38                                    ; $72CD: $FF
    rst RST_38                                    ; $72CE: $FF
    rst RST_38                                    ; $72CF: $FF
    rst RST_38                                    ; $72D0: $FF
    rst RST_38                                    ; $72D1: $FF
    rst RST_38                                    ; $72D2: $FF
    rst RST_38                                    ; $72D3: $FF
    rst RST_38                                    ; $72D4: $FF
    rst RST_38                                    ; $72D5: $FF
    rst RST_38                                    ; $72D6: $FF
    rst RST_38                                    ; $72D7: $FF
    rst RST_38                                    ; $72D8: $FF
    rst RST_38                                    ; $72D9: $FF
    rst RST_38                                    ; $72DA: $FF
    rst RST_38                                    ; $72DB: $FF
    rst RST_38                                    ; $72DC: $FF
    rst RST_38                                    ; $72DD: $FF
    rst RST_38                                    ; $72DE: $FF
    rst RST_38                                    ; $72DF: $FF
    rst RST_38                                    ; $72E0: $FF
    rst RST_38                                    ; $72E1: $FF
    rst RST_38                                    ; $72E2: $FF
    rst RST_38                                    ; $72E3: $FF
    rst RST_38                                    ; $72E4: $FF
    rst RST_38                                    ; $72E5: $FF
    rst RST_38                                    ; $72E6: $FF
    rst RST_38                                    ; $72E7: $FF
    rst RST_38                                    ; $72E8: $FF
    rst RST_38                                    ; $72E9: $FF
    rst RST_38                                    ; $72EA: $FF
    rst RST_38                                    ; $72EB: $FF
    rst RST_38                                    ; $72EC: $FF
    rst RST_38                                    ; $72ED: $FF
    rst RST_38                                    ; $72EE: $FF
    rst RST_38                                    ; $72EF: $FF
    rst RST_38                                    ; $72F0: $FF
    rst RST_38                                    ; $72F1: $FF
    rst RST_38                                    ; $72F2: $FF
    rst RST_38                                    ; $72F3: $FF
    rst RST_38                                    ; $72F4: $FF
    rst RST_38                                    ; $72F5: $FF
    rst RST_38                                    ; $72F6: $FF
    rst RST_38                                    ; $72F7: $FF
    rst RST_38                                    ; $72F8: $FF
    rst RST_38                                    ; $72F9: $FF
    rst RST_38                                    ; $72FA: $FF
    rst RST_38                                    ; $72FB: $FF
    rst RST_38                                    ; $72FC: $FF
    rst RST_38                                    ; $72FD: $FF
    rst RST_38                                    ; $72FE: $FF
    rst RST_38                                    ; $72FF: $FF
    rst RST_38                                    ; $7300: $FF
    rst RST_38                                    ; $7301: $FF
    rst RST_38                                    ; $7302: $FF
    rst RST_38                                    ; $7303: $FF
    rst RST_38                                    ; $7304: $FF
    rst RST_38                                    ; $7305: $FF
    rst RST_38                                    ; $7306: $FF
    rst RST_38                                    ; $7307: $FF
    rst RST_38                                    ; $7308: $FF
    rst RST_38                                    ; $7309: $FF
    rst RST_38                                    ; $730A: $FF
    rst RST_38                                    ; $730B: $FF
    rst RST_38                                    ; $730C: $FF
    rst RST_38                                    ; $730D: $FF
    rst RST_38                                    ; $730E: $FF
    rst RST_38                                    ; $730F: $FF
    rst RST_38                                    ; $7310: $FF
    rst RST_38                                    ; $7311: $FF
    rst RST_38                                    ; $7312: $FF
    rst RST_38                                    ; $7313: $FF
    rst RST_38                                    ; $7314: $FF
    rst RST_38                                    ; $7315: $FF
    rst RST_38                                    ; $7316: $FF
    rst RST_38                                    ; $7317: $FF
    rst RST_38                                    ; $7318: $FF
    rst RST_38                                    ; $7319: $FF
    rst RST_38                                    ; $731A: $FF
    rst RST_38                                    ; $731B: $FF
    rst RST_38                                    ; $731C: $FF
    rst RST_38                                    ; $731D: $FF
    rst RST_38                                    ; $731E: $FF
    rst RST_38                                    ; $731F: $FF
    rst RST_38                                    ; $7320: $FF
    rst RST_38                                    ; $7321: $FF
    rst RST_38                                    ; $7322: $FF
    rst RST_38                                    ; $7323: $FF
    rst RST_38                                    ; $7324: $FF
    rst RST_38                                    ; $7325: $FF
    rst RST_38                                    ; $7326: $FF
    rst RST_38                                    ; $7327: $FF
    rst RST_38                                    ; $7328: $FF
    rst RST_38                                    ; $7329: $FF
    rst RST_38                                    ; $732A: $FF
    rst RST_38                                    ; $732B: $FF
    rst RST_38                                    ; $732C: $FF
    rst RST_38                                    ; $732D: $FF
    rst RST_38                                    ; $732E: $FF
    rst RST_38                                    ; $732F: $FF
    rst RST_38                                    ; $7330: $FF
    rst RST_38                                    ; $7331: $FF
    rst RST_38                                    ; $7332: $FF
    rst RST_38                                    ; $7333: $FF
    rst RST_38                                    ; $7334: $FF
    rst RST_38                                    ; $7335: $FF
    rst RST_38                                    ; $7336: $FF
    rst RST_38                                    ; $7337: $FF
    rst RST_38                                    ; $7338: $FF
    rst RST_38                                    ; $7339: $FF
    rst RST_38                                    ; $733A: $FF
    rst RST_38                                    ; $733B: $FF
    rst RST_38                                    ; $733C: $FF
    rst RST_38                                    ; $733D: $FF
    rst RST_38                                    ; $733E: $FF
    rst RST_38                                    ; $733F: $FF
    rst RST_38                                    ; $7340: $FF
    rst RST_38                                    ; $7341: $FF
    rst RST_38                                    ; $7342: $FF
    rst RST_38                                    ; $7343: $FF
    rst RST_38                                    ; $7344: $FF
    rst RST_38                                    ; $7345: $FF
    rst RST_38                                    ; $7346: $FF
    rst RST_38                                    ; $7347: $FF
    rst RST_38                                    ; $7348: $FF
    rst RST_38                                    ; $7349: $FF
    rst RST_38                                    ; $734A: $FF
    rst RST_38                                    ; $734B: $FF
    rst RST_38                                    ; $734C: $FF
    rst RST_38                                    ; $734D: $FF
    rst RST_38                                    ; $734E: $FF
    rst RST_38                                    ; $734F: $FF
    rst RST_38                                    ; $7350: $FF
    rst RST_38                                    ; $7351: $FF
    rst RST_38                                    ; $7352: $FF
    rst RST_38                                    ; $7353: $FF
    rst RST_38                                    ; $7354: $FF
    rst RST_38                                    ; $7355: $FF
    rst RST_38                                    ; $7356: $FF
    rst RST_38                                    ; $7357: $FF
    rst RST_38                                    ; $7358: $FF
    rst RST_38                                    ; $7359: $FF
    rst RST_38                                    ; $735A: $FF
    rst RST_38                                    ; $735B: $FF
    rst RST_38                                    ; $735C: $FF
    rst RST_38                                    ; $735D: $FF
    rst RST_38                                    ; $735E: $FF
    rst RST_38                                    ; $735F: $FF
    rst RST_38                                    ; $7360: $FF
    rst RST_38                                    ; $7361: $FF
    rst RST_38                                    ; $7362: $FF
    rst RST_38                                    ; $7363: $FF
    rst RST_38                                    ; $7364: $FF
    rst RST_38                                    ; $7365: $FF
    rst RST_38                                    ; $7366: $FF
    rst RST_38                                    ; $7367: $FF
    rst RST_38                                    ; $7368: $FF
    rst RST_38                                    ; $7369: $FF
    rst RST_38                                    ; $736A: $FF
    rst RST_38                                    ; $736B: $FF
    rst RST_38                                    ; $736C: $FF
    rst RST_38                                    ; $736D: $FF
    rst RST_38                                    ; $736E: $FF
    rst RST_38                                    ; $736F: $FF
    rst RST_38                                    ; $7370: $FF
    rst RST_38                                    ; $7371: $FF
    rst RST_38                                    ; $7372: $FF
    rst RST_38                                    ; $7373: $FF
    rst RST_38                                    ; $7374: $FF
    rst RST_38                                    ; $7375: $FF
    rst RST_38                                    ; $7376: $FF
    rst RST_38                                    ; $7377: $FF
    rst RST_38                                    ; $7378: $FF
    rst RST_38                                    ; $7379: $FF
    rst RST_38                                    ; $737A: $FF
    rst RST_38                                    ; $737B: $FF
    rst RST_38                                    ; $737C: $FF
    rst RST_38                                    ; $737D: $FF
    rst RST_38                                    ; $737E: $FF
    rst RST_38                                    ; $737F: $FF
    rst RST_38                                    ; $7380: $FF
    rst RST_38                                    ; $7381: $FF
    rst RST_38                                    ; $7382: $FF
    rst RST_38                                    ; $7383: $FF
    rst RST_38                                    ; $7384: $FF
    rst RST_38                                    ; $7385: $FF
    rst RST_38                                    ; $7386: $FF
    rst RST_38                                    ; $7387: $FF
    rst RST_38                                    ; $7388: $FF
    rst RST_38                                    ; $7389: $FF
    rst RST_38                                    ; $738A: $FF
    rst RST_38                                    ; $738B: $FF
    rst RST_38                                    ; $738C: $FF
    rst RST_38                                    ; $738D: $FF
    rst RST_38                                    ; $738E: $FF
    rst RST_38                                    ; $738F: $FF
    rst RST_38                                    ; $7390: $FF
    rst RST_38                                    ; $7391: $FF
    rst RST_38                                    ; $7392: $FF
    rst RST_38                                    ; $7393: $FF
    rst RST_38                                    ; $7394: $FF
    rst RST_38                                    ; $7395: $FF
    rst RST_38                                    ; $7396: $FF
    rst RST_38                                    ; $7397: $FF
    rst RST_38                                    ; $7398: $FF
    rst RST_38                                    ; $7399: $FF
    rst RST_38                                    ; $739A: $FF
    rst RST_38                                    ; $739B: $FF
    rst RST_38                                    ; $739C: $FF
    rst RST_38                                    ; $739D: $FF
    rst RST_38                                    ; $739E: $FF
    rst RST_38                                    ; $739F: $FF
    rst RST_38                                    ; $73A0: $FF
    rst RST_38                                    ; $73A1: $FF
    rst RST_38                                    ; $73A2: $FF
    rst RST_38                                    ; $73A3: $FF
    rst RST_38                                    ; $73A4: $FF
    rst RST_38                                    ; $73A5: $FF
    rst RST_38                                    ; $73A6: $FF
    rst RST_38                                    ; $73A7: $FF
    rst RST_38                                    ; $73A8: $FF
    rst RST_38                                    ; $73A9: $FF
    rst RST_38                                    ; $73AA: $FF
    rst RST_38                                    ; $73AB: $FF
    rst RST_38                                    ; $73AC: $FF
    rst RST_38                                    ; $73AD: $FF
    rst RST_38                                    ; $73AE: $FF
    rst RST_38                                    ; $73AF: $FF
    rst RST_38                                    ; $73B0: $FF
    rst RST_38                                    ; $73B1: $FF
    rst RST_38                                    ; $73B2: $FF
    rst RST_38                                    ; $73B3: $FF
    rst RST_38                                    ; $73B4: $FF
    rst RST_38                                    ; $73B5: $FF
    rst RST_38                                    ; $73B6: $FF
    rst RST_38                                    ; $73B7: $FF
    rst RST_38                                    ; $73B8: $FF
    rst RST_38                                    ; $73B9: $FF
    rst RST_38                                    ; $73BA: $FF
    rst RST_38                                    ; $73BB: $FF
    rst RST_38                                    ; $73BC: $FF
    rst RST_38                                    ; $73BD: $FF
    rst RST_38                                    ; $73BE: $FF
    rst RST_38                                    ; $73BF: $FF
    rst RST_38                                    ; $73C0: $FF
    rst RST_38                                    ; $73C1: $FF
    rst RST_38                                    ; $73C2: $FF
    rst RST_38                                    ; $73C3: $FF
    rst RST_38                                    ; $73C4: $FF
    rst RST_38                                    ; $73C5: $FF
    rst RST_38                                    ; $73C6: $FF
    rst RST_38                                    ; $73C7: $FF
    rst RST_38                                    ; $73C8: $FF
    rst RST_38                                    ; $73C9: $FF
    rst RST_38                                    ; $73CA: $FF
    rst RST_38                                    ; $73CB: $FF
    rst RST_38                                    ; $73CC: $FF
    rst RST_38                                    ; $73CD: $FF
    rst RST_38                                    ; $73CE: $FF
    rst RST_38                                    ; $73CF: $FF
    rst RST_38                                    ; $73D0: $FF
    rst RST_38                                    ; $73D1: $FF
    rst RST_38                                    ; $73D2: $FF
    rst RST_38                                    ; $73D3: $FF
    rst RST_38                                    ; $73D4: $FF
    rst RST_38                                    ; $73D5: $FF
    rst RST_38                                    ; $73D6: $FF
    rst RST_38                                    ; $73D7: $FF
    rst RST_38                                    ; $73D8: $FF
    rst RST_38                                    ; $73D9: $FF
    rst RST_38                                    ; $73DA: $FF
    rst RST_38                                    ; $73DB: $FF
    rst RST_38                                    ; $73DC: $FF
    rst RST_38                                    ; $73DD: $FF
    rst RST_38                                    ; $73DE: $FF
    rst RST_38                                    ; $73DF: $FF
    rst RST_38                                    ; $73E0: $FF
    rst RST_38                                    ; $73E1: $FF
    rst RST_38                                    ; $73E2: $FF
    rst RST_38                                    ; $73E3: $FF
    rst RST_38                                    ; $73E4: $FF
    rst RST_38                                    ; $73E5: $FF
    rst RST_38                                    ; $73E6: $FF
    rst RST_38                                    ; $73E7: $FF
    rst RST_38                                    ; $73E8: $FF
    rst RST_38                                    ; $73E9: $FF
    rst RST_38                                    ; $73EA: $FF
    rst RST_38                                    ; $73EB: $FF
    rst RST_38                                    ; $73EC: $FF
    rst RST_38                                    ; $73ED: $FF
    rst RST_38                                    ; $73EE: $FF
    rst RST_38                                    ; $73EF: $FF
    rst RST_38                                    ; $73F0: $FF
    rst RST_38                                    ; $73F1: $FF
    rst RST_38                                    ; $73F2: $FF
    rst RST_38                                    ; $73F3: $FF
    rst RST_38                                    ; $73F4: $FF
    rst RST_38                                    ; $73F5: $FF
    rst RST_38                                    ; $73F6: $FF
    rst RST_38                                    ; $73F7: $FF
    rst RST_38                                    ; $73F8: $FF
    rst RST_38                                    ; $73F9: $FF
    rst RST_38                                    ; $73FA: $FF
    rst RST_38                                    ; $73FB: $FF
    rst RST_38                                    ; $73FC: $FF
    rst RST_38                                    ; $73FD: $FF
    rst RST_38                                    ; $73FE: $FF
    rst RST_38                                    ; $73FF: $FF
    rst RST_38                                    ; $7400: $FF
    rst RST_38                                    ; $7401: $FF
    rst RST_38                                    ; $7402: $FF
    rst RST_38                                    ; $7403: $FF
    rst RST_38                                    ; $7404: $FF
    rst RST_38                                    ; $7405: $FF
    rst RST_38                                    ; $7406: $FF
    rst RST_38                                    ; $7407: $FF
    rst RST_38                                    ; $7408: $FF
    rst RST_38                                    ; $7409: $FF
    rst RST_38                                    ; $740A: $FF
    rst RST_38                                    ; $740B: $FF
    rst RST_38                                    ; $740C: $FF
    rst RST_38                                    ; $740D: $FF
    rst RST_38                                    ; $740E: $FF
    rst RST_38                                    ; $740F: $FF
    rst RST_38                                    ; $7410: $FF
    rst RST_38                                    ; $7411: $FF
    rst RST_38                                    ; $7412: $FF
    rst RST_38                                    ; $7413: $FF
    rst RST_38                                    ; $7414: $FF
    rst RST_38                                    ; $7415: $FF
    rst RST_38                                    ; $7416: $FF
    rst RST_38                                    ; $7417: $FF
    rst RST_38                                    ; $7418: $FF
    rst RST_38                                    ; $7419: $FF
    rst RST_38                                    ; $741A: $FF
    rst RST_38                                    ; $741B: $FF
    rst RST_38                                    ; $741C: $FF
    rst RST_38                                    ; $741D: $FF
    rst RST_38                                    ; $741E: $FF
    rst RST_38                                    ; $741F: $FF
    rst RST_38                                    ; $7420: $FF
    rst RST_38                                    ; $7421: $FF
    rst RST_38                                    ; $7422: $FF
    rst RST_38                                    ; $7423: $FF
    rst RST_38                                    ; $7424: $FF
    rst RST_38                                    ; $7425: $FF
    rst RST_38                                    ; $7426: $FF
    rst RST_38                                    ; $7427: $FF
    rst RST_38                                    ; $7428: $FF
    rst RST_38                                    ; $7429: $FF
    rst RST_38                                    ; $742A: $FF
    rst RST_38                                    ; $742B: $FF
    rst RST_38                                    ; $742C: $FF
    rst RST_38                                    ; $742D: $FF
    rst RST_38                                    ; $742E: $FF
    rst RST_38                                    ; $742F: $FF
    rst RST_38                                    ; $7430: $FF
    rst RST_38                                    ; $7431: $FF
    rst RST_38                                    ; $7432: $FF
    rst RST_38                                    ; $7433: $FF
    rst RST_38                                    ; $7434: $FF
    rst RST_38                                    ; $7435: $FF
    rst RST_38                                    ; $7436: $FF
    rst RST_38                                    ; $7437: $FF
    rst RST_38                                    ; $7438: $FF
    rst RST_38                                    ; $7439: $FF
    rst RST_38                                    ; $743A: $FF
    rst RST_38                                    ; $743B: $FF
    rst RST_38                                    ; $743C: $FF
    rst RST_38                                    ; $743D: $FF
    rst RST_38                                    ; $743E: $FF
    rst RST_38                                    ; $743F: $FF
    rst RST_38                                    ; $7440: $FF
    rst RST_38                                    ; $7441: $FF
    rst RST_38                                    ; $7442: $FF
    rst RST_38                                    ; $7443: $FF
    rst RST_38                                    ; $7444: $FF
    rst RST_38                                    ; $7445: $FF
    rst RST_38                                    ; $7446: $FF
    rst RST_38                                    ; $7447: $FF
    rst RST_38                                    ; $7448: $FF
    rst RST_38                                    ; $7449: $FF
    rst RST_38                                    ; $744A: $FF
    rst RST_38                                    ; $744B: $FF
    rst RST_38                                    ; $744C: $FF
    rst RST_38                                    ; $744D: $FF
    rst RST_38                                    ; $744E: $FF
    rst RST_38                                    ; $744F: $FF
    rst RST_38                                    ; $7450: $FF
    rst RST_38                                    ; $7451: $FF
    rst RST_38                                    ; $7452: $FF
    rst RST_38                                    ; $7453: $FF
    rst RST_38                                    ; $7454: $FF
    rst RST_38                                    ; $7455: $FF
    rst RST_38                                    ; $7456: $FF
    rst RST_38                                    ; $7457: $FF
    rst RST_38                                    ; $7458: $FF
    rst RST_38                                    ; $7459: $FF
    rst RST_38                                    ; $745A: $FF
    rst RST_38                                    ; $745B: $FF
    rst RST_38                                    ; $745C: $FF
    rst RST_38                                    ; $745D: $FF
    rst RST_38                                    ; $745E: $FF
    rst RST_38                                    ; $745F: $FF
    rst RST_38                                    ; $7460: $FF
    rst RST_38                                    ; $7461: $FF
    rst RST_38                                    ; $7462: $FF
    rst RST_38                                    ; $7463: $FF
    rst RST_38                                    ; $7464: $FF
    rst RST_38                                    ; $7465: $FF
    rst RST_38                                    ; $7466: $FF
    rst RST_38                                    ; $7467: $FF
    rst RST_38                                    ; $7468: $FF
    rst RST_38                                    ; $7469: $FF
    rst RST_38                                    ; $746A: $FF
    rst RST_38                                    ; $746B: $FF
    rst RST_38                                    ; $746C: $FF
    rst RST_38                                    ; $746D: $FF
    rst RST_38                                    ; $746E: $FF
    rst RST_38                                    ; $746F: $FF
    rst RST_38                                    ; $7470: $FF
    rst RST_38                                    ; $7471: $FF
    rst RST_38                                    ; $7472: $FF
    rst RST_38                                    ; $7473: $FF
    rst RST_38                                    ; $7474: $FF
    rst RST_38                                    ; $7475: $FF
    rst RST_38                                    ; $7476: $FF
    rst RST_38                                    ; $7477: $FF
    rst RST_38                                    ; $7478: $FF
    rst RST_38                                    ; $7479: $FF
    rst RST_38                                    ; $747A: $FF
    rst RST_38                                    ; $747B: $FF
    rst RST_38                                    ; $747C: $FF
    rst RST_38                                    ; $747D: $FF
    rst RST_38                                    ; $747E: $FF
    rst RST_38                                    ; $747F: $FF
    rst RST_38                                    ; $7480: $FF
    rst RST_38                                    ; $7481: $FF
    rst RST_38                                    ; $7482: $FF
    rst RST_38                                    ; $7483: $FF
    rst RST_38                                    ; $7484: $FF
    rst RST_38                                    ; $7485: $FF
    rst RST_38                                    ; $7486: $FF
    rst RST_38                                    ; $7487: $FF
    rst RST_38                                    ; $7488: $FF
    rst RST_38                                    ; $7489: $FF
    rst RST_38                                    ; $748A: $FF
    rst RST_38                                    ; $748B: $FF
    rst RST_38                                    ; $748C: $FF
    rst RST_38                                    ; $748D: $FF
    rst RST_38                                    ; $748E: $FF
    rst RST_38                                    ; $748F: $FF
    rst RST_38                                    ; $7490: $FF
    rst RST_38                                    ; $7491: $FF
    rst RST_38                                    ; $7492: $FF
    rst RST_38                                    ; $7493: $FF
    rst RST_38                                    ; $7494: $FF
    rst RST_38                                    ; $7495: $FF
    rst RST_38                                    ; $7496: $FF
    rst RST_38                                    ; $7497: $FF
    rst RST_38                                    ; $7498: $FF
    rst RST_38                                    ; $7499: $FF
    rst RST_38                                    ; $749A: $FF
    rst RST_38                                    ; $749B: $FF
    rst RST_38                                    ; $749C: $FF
    rst RST_38                                    ; $749D: $FF
    rst RST_38                                    ; $749E: $FF
    rst RST_38                                    ; $749F: $FF
    rst RST_38                                    ; $74A0: $FF
    rst RST_38                                    ; $74A1: $FF
    rst RST_38                                    ; $74A2: $FF
    rst RST_38                                    ; $74A3: $FF
    rst RST_38                                    ; $74A4: $FF
    rst RST_38                                    ; $74A5: $FF
    rst RST_38                                    ; $74A6: $FF
    rst RST_38                                    ; $74A7: $FF
    rst RST_38                                    ; $74A8: $FF
    rst RST_38                                    ; $74A9: $FF
    rst RST_38                                    ; $74AA: $FF
    rst RST_38                                    ; $74AB: $FF
    rst RST_38                                    ; $74AC: $FF
    rst RST_38                                    ; $74AD: $FF
    rst RST_38                                    ; $74AE: $FF
    rst RST_38                                    ; $74AF: $FF
    rst RST_38                                    ; $74B0: $FF
    rst RST_38                                    ; $74B1: $FF
    rst RST_38                                    ; $74B2: $FF
    rst RST_38                                    ; $74B3: $FF
    rst RST_38                                    ; $74B4: $FF
    rst RST_38                                    ; $74B5: $FF
    rst RST_38                                    ; $74B6: $FF
    rst RST_38                                    ; $74B7: $FF
    rst RST_38                                    ; $74B8: $FF
    rst RST_38                                    ; $74B9: $FF
    rst RST_38                                    ; $74BA: $FF
    rst RST_38                                    ; $74BB: $FF
    rst RST_38                                    ; $74BC: $FF
    rst RST_38                                    ; $74BD: $FF
    rst RST_38                                    ; $74BE: $FF
    rst RST_38                                    ; $74BF: $FF
    rst RST_38                                    ; $74C0: $FF
    rst RST_38                                    ; $74C1: $FF
    rst RST_38                                    ; $74C2: $FF
    rst RST_38                                    ; $74C3: $FF
    rst RST_38                                    ; $74C4: $FF
    rst RST_38                                    ; $74C5: $FF
    rst RST_38                                    ; $74C6: $FF
    rst RST_38                                    ; $74C7: $FF
    rst RST_38                                    ; $74C8: $FF
    rst RST_38                                    ; $74C9: $FF
    rst RST_38                                    ; $74CA: $FF
    rst RST_38                                    ; $74CB: $FF
    rst RST_38                                    ; $74CC: $FF
    rst RST_38                                    ; $74CD: $FF
    rst RST_38                                    ; $74CE: $FF
    rst RST_38                                    ; $74CF: $FF
    rst RST_38                                    ; $74D0: $FF
    rst RST_38                                    ; $74D1: $FF
    rst RST_38                                    ; $74D2: $FF
    rst RST_38                                    ; $74D3: $FF
    rst RST_38                                    ; $74D4: $FF
    rst RST_38                                    ; $74D5: $FF
    rst RST_38                                    ; $74D6: $FF
    rst RST_38                                    ; $74D7: $FF
    rst RST_38                                    ; $74D8: $FF
    rst RST_38                                    ; $74D9: $FF
    rst RST_38                                    ; $74DA: $FF
    rst RST_38                                    ; $74DB: $FF
    rst RST_38                                    ; $74DC: $FF
    rst RST_38                                    ; $74DD: $FF
    rst RST_38                                    ; $74DE: $FF
    rst RST_38                                    ; $74DF: $FF
    rst RST_38                                    ; $74E0: $FF
    rst RST_38                                    ; $74E1: $FF
    rst RST_38                                    ; $74E2: $FF
    rst RST_38                                    ; $74E3: $FF
    rst RST_38                                    ; $74E4: $FF
    rst RST_38                                    ; $74E5: $FF
    rst RST_38                                    ; $74E6: $FF
    rst RST_38                                    ; $74E7: $FF
    rst RST_38                                    ; $74E8: $FF
    rst RST_38                                    ; $74E9: $FF
    rst RST_38                                    ; $74EA: $FF
    rst RST_38                                    ; $74EB: $FF
    rst RST_38                                    ; $74EC: $FF
    rst RST_38                                    ; $74ED: $FF
    rst RST_38                                    ; $74EE: $FF
    rst RST_38                                    ; $74EF: $FF
    rst RST_38                                    ; $74F0: $FF
    rst RST_38                                    ; $74F1: $FF
    rst RST_38                                    ; $74F2: $FF
    rst RST_38                                    ; $74F3: $FF
    rst RST_38                                    ; $74F4: $FF
    rst RST_38                                    ; $74F5: $FF
    rst RST_38                                    ; $74F6: $FF
    rst RST_38                                    ; $74F7: $FF
    rst RST_38                                    ; $74F8: $FF
    rst RST_38                                    ; $74F9: $FF
    rst RST_38                                    ; $74FA: $FF
    rst RST_38                                    ; $74FB: $FF
    rst RST_38                                    ; $74FC: $FF
    rst RST_38                                    ; $74FD: $FF
    rst RST_38                                    ; $74FE: $FF
    rst RST_38                                    ; $74FF: $FF
    rst RST_38                                    ; $7500: $FF
    rst RST_38                                    ; $7501: $FF
    rst RST_38                                    ; $7502: $FF
    rst RST_38                                    ; $7503: $FF
    rst RST_38                                    ; $7504: $FF
    rst RST_38                                    ; $7505: $FF
    rst RST_38                                    ; $7506: $FF
    rst RST_38                                    ; $7507: $FF
    rst RST_38                                    ; $7508: $FF
    rst RST_38                                    ; $7509: $FF
    rst RST_38                                    ; $750A: $FF
    rst RST_38                                    ; $750B: $FF
    rst RST_38                                    ; $750C: $FF
    rst RST_38                                    ; $750D: $FF
    rst RST_38                                    ; $750E: $FF
    rst RST_38                                    ; $750F: $FF
    rst RST_38                                    ; $7510: $FF
    rst RST_38                                    ; $7511: $FF
    rst RST_38                                    ; $7512: $FF
    rst RST_38                                    ; $7513: $FF
    rst RST_38                                    ; $7514: $FF
    rst RST_38                                    ; $7515: $FF
    rst RST_38                                    ; $7516: $FF
    rst RST_38                                    ; $7517: $FF
    rst RST_38                                    ; $7518: $FF
    rst RST_38                                    ; $7519: $FF
    rst RST_38                                    ; $751A: $FF
    rst RST_38                                    ; $751B: $FF
    rst RST_38                                    ; $751C: $FF
    rst RST_38                                    ; $751D: $FF
    rst RST_38                                    ; $751E: $FF
    rst RST_38                                    ; $751F: $FF
    rst RST_38                                    ; $7520: $FF
    rst RST_38                                    ; $7521: $FF
    rst RST_38                                    ; $7522: $FF
    rst RST_38                                    ; $7523: $FF
    rst RST_38                                    ; $7524: $FF
    rst RST_38                                    ; $7525: $FF
    rst RST_38                                    ; $7526: $FF
    rst RST_38                                    ; $7527: $FF
    rst RST_38                                    ; $7528: $FF
    rst RST_38                                    ; $7529: $FF
    rst RST_38                                    ; $752A: $FF
    rst RST_38                                    ; $752B: $FF
    rst RST_38                                    ; $752C: $FF
    rst RST_38                                    ; $752D: $FF
    rst RST_38                                    ; $752E: $FF
    rst RST_38                                    ; $752F: $FF
    rst RST_38                                    ; $7530: $FF
    rst RST_38                                    ; $7531: $FF
    rst RST_38                                    ; $7532: $FF
    rst RST_38                                    ; $7533: $FF
    rst RST_38                                    ; $7534: $FF
    rst RST_38                                    ; $7535: $FF
    rst RST_38                                    ; $7536: $FF
    rst RST_38                                    ; $7537: $FF
    rst RST_38                                    ; $7538: $FF
    rst RST_38                                    ; $7539: $FF
    rst RST_38                                    ; $753A: $FF
    rst RST_38                                    ; $753B: $FF
    rst RST_38                                    ; $753C: $FF
    rst RST_38                                    ; $753D: $FF
    rst RST_38                                    ; $753E: $FF
    rst RST_38                                    ; $753F: $FF
    rst RST_38                                    ; $7540: $FF
    rst RST_38                                    ; $7541: $FF
    rst RST_38                                    ; $7542: $FF
    rst RST_38                                    ; $7543: $FF
    rst RST_38                                    ; $7544: $FF
    rst RST_38                                    ; $7545: $FF
    rst RST_38                                    ; $7546: $FF
    rst RST_38                                    ; $7547: $FF
    rst RST_38                                    ; $7548: $FF
    rst RST_38                                    ; $7549: $FF
    rst RST_38                                    ; $754A: $FF
    rst RST_38                                    ; $754B: $FF
    rst RST_38                                    ; $754C: $FF
    rst RST_38                                    ; $754D: $FF
    rst RST_38                                    ; $754E: $FF
    rst RST_38                                    ; $754F: $FF
    rst RST_38                                    ; $7550: $FF
    rst RST_38                                    ; $7551: $FF
    rst RST_38                                    ; $7552: $FF
    rst RST_38                                    ; $7553: $FF
    rst RST_38                                    ; $7554: $FF
    rst RST_38                                    ; $7555: $FF
    rst RST_38                                    ; $7556: $FF
    rst RST_38                                    ; $7557: $FF
    rst RST_38                                    ; $7558: $FF
    rst RST_38                                    ; $7559: $FF
    rst RST_38                                    ; $755A: $FF
    rst RST_38                                    ; $755B: $FF
    rst RST_38                                    ; $755C: $FF
    rst RST_38                                    ; $755D: $FF
    rst RST_38                                    ; $755E: $FF
    rst RST_38                                    ; $755F: $FF
    rst RST_38                                    ; $7560: $FF
    rst RST_38                                    ; $7561: $FF
    rst RST_38                                    ; $7562: $FF
    rst RST_38                                    ; $7563: $FF
    rst RST_38                                    ; $7564: $FF
    rst RST_38                                    ; $7565: $FF
    rst RST_38                                    ; $7566: $FF
    rst RST_38                                    ; $7567: $FF
    rst RST_38                                    ; $7568: $FF
    rst RST_38                                    ; $7569: $FF
    rst RST_38                                    ; $756A: $FF
    rst RST_38                                    ; $756B: $FF
    rst RST_38                                    ; $756C: $FF
    rst RST_38                                    ; $756D: $FF
    rst RST_38                                    ; $756E: $FF
    rst RST_38                                    ; $756F: $FF
    rst RST_38                                    ; $7570: $FF
    rst RST_38                                    ; $7571: $FF
    rst RST_38                                    ; $7572: $FF
    rst RST_38                                    ; $7573: $FF
    rst RST_38                                    ; $7574: $FF
    rst RST_38                                    ; $7575: $FF
    rst RST_38                                    ; $7576: $FF
    rst RST_38                                    ; $7577: $FF
    rst RST_38                                    ; $7578: $FF
    rst RST_38                                    ; $7579: $FF
    rst RST_38                                    ; $757A: $FF
    rst RST_38                                    ; $757B: $FF
    rst RST_38                                    ; $757C: $FF
    rst RST_38                                    ; $757D: $FF
    rst RST_38                                    ; $757E: $FF
    rst RST_38                                    ; $757F: $FF
    rst RST_38                                    ; $7580: $FF
    rst RST_38                                    ; $7581: $FF
    rst RST_38                                    ; $7582: $FF
    rst RST_38                                    ; $7583: $FF
    rst RST_38                                    ; $7584: $FF
    rst RST_38                                    ; $7585: $FF
    rst RST_38                                    ; $7586: $FF
    rst RST_38                                    ; $7587: $FF
    rst RST_38                                    ; $7588: $FF
    rst RST_38                                    ; $7589: $FF
    rst RST_38                                    ; $758A: $FF
    rst RST_38                                    ; $758B: $FF
    rst RST_38                                    ; $758C: $FF
    rst RST_38                                    ; $758D: $FF
    rst RST_38                                    ; $758E: $FF
    rst RST_38                                    ; $758F: $FF
    rst RST_38                                    ; $7590: $FF
    rst RST_38                                    ; $7591: $FF
    rst RST_38                                    ; $7592: $FF
    rst RST_38                                    ; $7593: $FF
    rst RST_38                                    ; $7594: $FF
    rst RST_38                                    ; $7595: $FF
    rst RST_38                                    ; $7596: $FF
    rst RST_38                                    ; $7597: $FF
    rst RST_38                                    ; $7598: $FF
    rst RST_38                                    ; $7599: $FF
    rst RST_38                                    ; $759A: $FF
    rst RST_38                                    ; $759B: $FF
    rst RST_38                                    ; $759C: $FF
    rst RST_38                                    ; $759D: $FF
    rst RST_38                                    ; $759E: $FF
    rst RST_38                                    ; $759F: $FF
    rst RST_38                                    ; $75A0: $FF
    rst RST_38                                    ; $75A1: $FF
    rst RST_38                                    ; $75A2: $FF
    rst RST_38                                    ; $75A3: $FF
    rst RST_38                                    ; $75A4: $FF
    rst RST_38                                    ; $75A5: $FF
    rst RST_38                                    ; $75A6: $FF
    rst RST_38                                    ; $75A7: $FF
    rst RST_38                                    ; $75A8: $FF
    rst RST_38                                    ; $75A9: $FF
    rst RST_38                                    ; $75AA: $FF
    rst RST_38                                    ; $75AB: $FF
    rst RST_38                                    ; $75AC: $FF
    rst RST_38                                    ; $75AD: $FF
    rst RST_38                                    ; $75AE: $FF
    rst RST_38                                    ; $75AF: $FF
    rst RST_38                                    ; $75B0: $FF
    rst RST_38                                    ; $75B1: $FF
    rst RST_38                                    ; $75B2: $FF
    rst RST_38                                    ; $75B3: $FF
    rst RST_38                                    ; $75B4: $FF
    rst RST_38                                    ; $75B5: $FF
    rst RST_38                                    ; $75B6: $FF
    rst RST_38                                    ; $75B7: $FF
    rst RST_38                                    ; $75B8: $FF
    rst RST_38                                    ; $75B9: $FF
    rst RST_38                                    ; $75BA: $FF
    rst RST_38                                    ; $75BB: $FF
    rst RST_38                                    ; $75BC: $FF
    rst RST_38                                    ; $75BD: $FF
    rst RST_38                                    ; $75BE: $FF
    rst RST_38                                    ; $75BF: $FF
    rst RST_38                                    ; $75C0: $FF
    rst RST_38                                    ; $75C1: $FF
    rst RST_38                                    ; $75C2: $FF
    rst RST_38                                    ; $75C3: $FF
    rst RST_38                                    ; $75C4: $FF
    rst RST_38                                    ; $75C5: $FF
    rst RST_38                                    ; $75C6: $FF
    rst RST_38                                    ; $75C7: $FF
    rst RST_38                                    ; $75C8: $FF
    rst RST_38                                    ; $75C9: $FF
    rst RST_38                                    ; $75CA: $FF
    rst RST_38                                    ; $75CB: $FF
    rst RST_38                                    ; $75CC: $FF
    rst RST_38                                    ; $75CD: $FF
    rst RST_38                                    ; $75CE: $FF
    rst RST_38                                    ; $75CF: $FF
    rst RST_38                                    ; $75D0: $FF
    rst RST_38                                    ; $75D1: $FF
    rst RST_38                                    ; $75D2: $FF
    rst RST_38                                    ; $75D3: $FF
    rst RST_38                                    ; $75D4: $FF
    rst RST_38                                    ; $75D5: $FF
    rst RST_38                                    ; $75D6: $FF
    rst RST_38                                    ; $75D7: $FF
    rst RST_38                                    ; $75D8: $FF
    rst RST_38                                    ; $75D9: $FF
    rst RST_38                                    ; $75DA: $FF
    rst RST_38                                    ; $75DB: $FF
    rst RST_38                                    ; $75DC: $FF
    rst RST_38                                    ; $75DD: $FF
    rst RST_38                                    ; $75DE: $FF
    rst RST_38                                    ; $75DF: $FF
    rst RST_38                                    ; $75E0: $FF
    rst RST_38                                    ; $75E1: $FF
    rst RST_38                                    ; $75E2: $FF
    rst RST_38                                    ; $75E3: $FF
    rst RST_38                                    ; $75E4: $FF
    rst RST_38                                    ; $75E5: $FF
    rst RST_38                                    ; $75E6: $FF
    rst RST_38                                    ; $75E7: $FF
    rst RST_38                                    ; $75E8: $FF
    rst RST_38                                    ; $75E9: $FF
    rst RST_38                                    ; $75EA: $FF
    rst RST_38                                    ; $75EB: $FF
    rst RST_38                                    ; $75EC: $FF
    rst RST_38                                    ; $75ED: $FF
    rst RST_38                                    ; $75EE: $FF
    rst RST_38                                    ; $75EF: $FF
    rst RST_38                                    ; $75F0: $FF
    rst RST_38                                    ; $75F1: $FF
    rst RST_38                                    ; $75F2: $FF
    rst RST_38                                    ; $75F3: $FF
    rst RST_38                                    ; $75F4: $FF
    rst RST_38                                    ; $75F5: $FF
    rst RST_38                                    ; $75F6: $FF
    rst RST_38                                    ; $75F7: $FF
    rst RST_38                                    ; $75F8: $FF
    rst RST_38                                    ; $75F9: $FF
    rst RST_38                                    ; $75FA: $FF
    rst RST_38                                    ; $75FB: $FF
    rst RST_38                                    ; $75FC: $FF
    rst RST_38                                    ; $75FD: $FF
    rst RST_38                                    ; $75FE: $FF
    rst RST_38                                    ; $75FF: $FF
    rst RST_38                                    ; $7600: $FF
    rst RST_38                                    ; $7601: $FF
    rst RST_38                                    ; $7602: $FF
    rst RST_38                                    ; $7603: $FF
    rst RST_38                                    ; $7604: $FF
    rst RST_38                                    ; $7605: $FF
    rst RST_38                                    ; $7606: $FF
    rst RST_38                                    ; $7607: $FF
    rst RST_38                                    ; $7608: $FF
    rst RST_38                                    ; $7609: $FF
    rst RST_38                                    ; $760A: $FF
    rst RST_38                                    ; $760B: $FF
    rst RST_38                                    ; $760C: $FF
    rst RST_38                                    ; $760D: $FF
    rst RST_38                                    ; $760E: $FF
    rst RST_38                                    ; $760F: $FF
    rst RST_38                                    ; $7610: $FF
    rst RST_38                                    ; $7611: $FF
    rst RST_38                                    ; $7612: $FF
    rst RST_38                                    ; $7613: $FF
    rst RST_38                                    ; $7614: $FF
    rst RST_38                                    ; $7615: $FF
    rst RST_38                                    ; $7616: $FF
    rst RST_38                                    ; $7617: $FF
    rst RST_38                                    ; $7618: $FF
    rst RST_38                                    ; $7619: $FF
    rst RST_38                                    ; $761A: $FF
    rst RST_38                                    ; $761B: $FF
    rst RST_38                                    ; $761C: $FF
    rst RST_38                                    ; $761D: $FF
    rst RST_38                                    ; $761E: $FF
    rst RST_38                                    ; $761F: $FF
    rst RST_38                                    ; $7620: $FF
    rst RST_38                                    ; $7621: $FF
    rst RST_38                                    ; $7622: $FF
    rst RST_38                                    ; $7623: $FF
    rst RST_38                                    ; $7624: $FF
    rst RST_38                                    ; $7625: $FF
    rst RST_38                                    ; $7626: $FF
    rst RST_38                                    ; $7627: $FF
    rst RST_38                                    ; $7628: $FF
    rst RST_38                                    ; $7629: $FF
    rst RST_38                                    ; $762A: $FF
    rst RST_38                                    ; $762B: $FF
    rst RST_38                                    ; $762C: $FF
    rst RST_38                                    ; $762D: $FF
    rst RST_38                                    ; $762E: $FF
    rst RST_38                                    ; $762F: $FF
    rst RST_38                                    ; $7630: $FF
    rst RST_38                                    ; $7631: $FF
    rst RST_38                                    ; $7632: $FF
    rst RST_38                                    ; $7633: $FF
    rst RST_38                                    ; $7634: $FF
    rst RST_38                                    ; $7635: $FF
    rst RST_38                                    ; $7636: $FF
    rst RST_38                                    ; $7637: $FF
    rst RST_38                                    ; $7638: $FF
    rst RST_38                                    ; $7639: $FF
    rst RST_38                                    ; $763A: $FF
    rst RST_38                                    ; $763B: $FF
    rst RST_38                                    ; $763C: $FF
    rst RST_38                                    ; $763D: $FF
    rst RST_38                                    ; $763E: $FF
    rst RST_38                                    ; $763F: $FF
    rst RST_38                                    ; $7640: $FF
    rst RST_38                                    ; $7641: $FF
    rst RST_38                                    ; $7642: $FF
    rst RST_38                                    ; $7643: $FF
    rst RST_38                                    ; $7644: $FF
    rst RST_38                                    ; $7645: $FF
    rst RST_38                                    ; $7646: $FF
    rst RST_38                                    ; $7647: $FF
    rst RST_38                                    ; $7648: $FF
    rst RST_38                                    ; $7649: $FF
    rst RST_38                                    ; $764A: $FF
    rst RST_38                                    ; $764B: $FF
    rst RST_38                                    ; $764C: $FF
    rst RST_38                                    ; $764D: $FF
    rst RST_38                                    ; $764E: $FF
    rst RST_38                                    ; $764F: $FF
    rst RST_38                                    ; $7650: $FF
    rst RST_38                                    ; $7651: $FF
    rst RST_38                                    ; $7652: $FF
    rst RST_38                                    ; $7653: $FF
    rst RST_38                                    ; $7654: $FF
    rst RST_38                                    ; $7655: $FF
    rst RST_38                                    ; $7656: $FF
    rst RST_38                                    ; $7657: $FF
    rst RST_38                                    ; $7658: $FF
    rst RST_38                                    ; $7659: $FF
    rst RST_38                                    ; $765A: $FF
    rst RST_38                                    ; $765B: $FF
    rst RST_38                                    ; $765C: $FF
    rst RST_38                                    ; $765D: $FF
    rst RST_38                                    ; $765E: $FF
    rst RST_38                                    ; $765F: $FF
    rst RST_38                                    ; $7660: $FF
    rst RST_38                                    ; $7661: $FF
    rst RST_38                                    ; $7662: $FF
    rst RST_38                                    ; $7663: $FF
    rst RST_38                                    ; $7664: $FF
    rst RST_38                                    ; $7665: $FF
    rst RST_38                                    ; $7666: $FF
    rst RST_38                                    ; $7667: $FF
    rst RST_38                                    ; $7668: $FF
    rst RST_38                                    ; $7669: $FF
    rst RST_38                                    ; $766A: $FF
    rst RST_38                                    ; $766B: $FF
    rst RST_38                                    ; $766C: $FF
    rst RST_38                                    ; $766D: $FF
    rst RST_38                                    ; $766E: $FF
    rst RST_38                                    ; $766F: $FF
    rst RST_38                                    ; $7670: $FF
    rst RST_38                                    ; $7671: $FF
    rst RST_38                                    ; $7672: $FF
    rst RST_38                                    ; $7673: $FF
    rst RST_38                                    ; $7674: $FF
    rst RST_38                                    ; $7675: $FF
    rst RST_38                                    ; $7676: $FF
    rst RST_38                                    ; $7677: $FF
    rst RST_38                                    ; $7678: $FF
    rst RST_38                                    ; $7679: $FF
    rst RST_38                                    ; $767A: $FF
    rst RST_38                                    ; $767B: $FF
    rst RST_38                                    ; $767C: $FF
    rst RST_38                                    ; $767D: $FF
    rst RST_38                                    ; $767E: $FF
    rst RST_38                                    ; $767F: $FF
    rst RST_38                                    ; $7680: $FF
    rst RST_38                                    ; $7681: $FF
    rst RST_38                                    ; $7682: $FF
    rst RST_38                                    ; $7683: $FF
    rst RST_38                                    ; $7684: $FF
    rst RST_38                                    ; $7685: $FF
    rst RST_38                                    ; $7686: $FF
    rst RST_38                                    ; $7687: $FF
    rst RST_38                                    ; $7688: $FF
    rst RST_38                                    ; $7689: $FF
    rst RST_38                                    ; $768A: $FF
    rst RST_38                                    ; $768B: $FF
    rst RST_38                                    ; $768C: $FF
    rst RST_38                                    ; $768D: $FF
    rst RST_38                                    ; $768E: $FF
    rst RST_38                                    ; $768F: $FF
    rst RST_38                                    ; $7690: $FF
    rst RST_38                                    ; $7691: $FF
    rst RST_38                                    ; $7692: $FF
    rst RST_38                                    ; $7693: $FF
    rst RST_38                                    ; $7694: $FF
    rst RST_38                                    ; $7695: $FF
    rst RST_38                                    ; $7696: $FF
    rst RST_38                                    ; $7697: $FF
    rst RST_38                                    ; $7698: $FF
    rst RST_38                                    ; $7699: $FF
    rst RST_38                                    ; $769A: $FF
    rst RST_38                                    ; $769B: $FF
    rst RST_38                                    ; $769C: $FF
    rst RST_38                                    ; $769D: $FF
    rst RST_38                                    ; $769E: $FF
    rst RST_38                                    ; $769F: $FF
    rst RST_38                                    ; $76A0: $FF
    rst RST_38                                    ; $76A1: $FF
    rst RST_38                                    ; $76A2: $FF
    rst RST_38                                    ; $76A3: $FF
    rst RST_38                                    ; $76A4: $FF
    rst RST_38                                    ; $76A5: $FF
    rst RST_38                                    ; $76A6: $FF
    rst RST_38                                    ; $76A7: $FF
    rst RST_38                                    ; $76A8: $FF
    rst RST_38                                    ; $76A9: $FF
    rst RST_38                                    ; $76AA: $FF
    rst RST_38                                    ; $76AB: $FF
    rst RST_38                                    ; $76AC: $FF
    rst RST_38                                    ; $76AD: $FF
    rst RST_38                                    ; $76AE: $FF
    rst RST_38                                    ; $76AF: $FF
    rst RST_38                                    ; $76B0: $FF
    rst RST_38                                    ; $76B1: $FF
    rst RST_38                                    ; $76B2: $FF
    rst RST_38                                    ; $76B3: $FF
    rst RST_38                                    ; $76B4: $FF
    rst RST_38                                    ; $76B5: $FF
    rst RST_38                                    ; $76B6: $FF
    rst RST_38                                    ; $76B7: $FF
    rst RST_38                                    ; $76B8: $FF
    rst RST_38                                    ; $76B9: $FF
    rst RST_38                                    ; $76BA: $FF
    rst RST_38                                    ; $76BB: $FF
    rst RST_38                                    ; $76BC: $FF
    rst RST_38                                    ; $76BD: $FF
    rst RST_38                                    ; $76BE: $FF
    rst RST_38                                    ; $76BF: $FF
    rst RST_38                                    ; $76C0: $FF
    rst RST_38                                    ; $76C1: $FF
    rst RST_38                                    ; $76C2: $FF
    rst RST_38                                    ; $76C3: $FF
    rst RST_38                                    ; $76C4: $FF
    rst RST_38                                    ; $76C5: $FF
    rst RST_38                                    ; $76C6: $FF
    rst RST_38                                    ; $76C7: $FF
    rst RST_38                                    ; $76C8: $FF
    rst RST_38                                    ; $76C9: $FF
    rst RST_38                                    ; $76CA: $FF
    rst RST_38                                    ; $76CB: $FF
    rst RST_38                                    ; $76CC: $FF
    rst RST_38                                    ; $76CD: $FF
    rst RST_38                                    ; $76CE: $FF
    rst RST_38                                    ; $76CF: $FF
    rst RST_38                                    ; $76D0: $FF
    rst RST_38                                    ; $76D1: $FF
    rst RST_38                                    ; $76D2: $FF
    rst RST_38                                    ; $76D3: $FF
    rst RST_38                                    ; $76D4: $FF
    rst RST_38                                    ; $76D5: $FF
    rst RST_38                                    ; $76D6: $FF
    rst RST_38                                    ; $76D7: $FF
    rst RST_38                                    ; $76D8: $FF
    rst RST_38                                    ; $76D9: $FF
    rst RST_38                                    ; $76DA: $FF
    rst RST_38                                    ; $76DB: $FF
    rst RST_38                                    ; $76DC: $FF
    rst RST_38                                    ; $76DD: $FF
    rst RST_38                                    ; $76DE: $FF
    rst RST_38                                    ; $76DF: $FF
    rst RST_38                                    ; $76E0: $FF
    rst RST_38                                    ; $76E1: $FF
    rst RST_38                                    ; $76E2: $FF
    rst RST_38                                    ; $76E3: $FF
    rst RST_38                                    ; $76E4: $FF
    rst RST_38                                    ; $76E5: $FF
    rst RST_38                                    ; $76E6: $FF
    rst RST_38                                    ; $76E7: $FF
    rst RST_38                                    ; $76E8: $FF
    rst RST_38                                    ; $76E9: $FF
    rst RST_38                                    ; $76EA: $FF
    rst RST_38                                    ; $76EB: $FF
    rst RST_38                                    ; $76EC: $FF
    rst RST_38                                    ; $76ED: $FF
    rst RST_38                                    ; $76EE: $FF
    rst RST_38                                    ; $76EF: $FF
    rst RST_38                                    ; $76F0: $FF
    rst RST_38                                    ; $76F1: $FF
    rst RST_38                                    ; $76F2: $FF
    rst RST_38                                    ; $76F3: $FF
    rst RST_38                                    ; $76F4: $FF
    rst RST_38                                    ; $76F5: $FF
    rst RST_38                                    ; $76F6: $FF
    rst RST_38                                    ; $76F7: $FF
    rst RST_38                                    ; $76F8: $FF
    rst RST_38                                    ; $76F9: $FF
    rst RST_38                                    ; $76FA: $FF
    rst RST_38                                    ; $76FB: $FF
    rst RST_38                                    ; $76FC: $FF
    rst RST_38                                    ; $76FD: $FF
    rst RST_38                                    ; $76FE: $FF
    rst RST_38                                    ; $76FF: $FF
    rst RST_38                                    ; $7700: $FF
    rst RST_38                                    ; $7701: $FF
    rst RST_38                                    ; $7702: $FF
    rst RST_38                                    ; $7703: $FF
    rst RST_38                                    ; $7704: $FF
    rst RST_38                                    ; $7705: $FF
    rst RST_38                                    ; $7706: $FF
    rst RST_38                                    ; $7707: $FF
    rst RST_38                                    ; $7708: $FF
    rst RST_38                                    ; $7709: $FF
    rst RST_38                                    ; $770A: $FF
    rst RST_38                                    ; $770B: $FF
    rst RST_38                                    ; $770C: $FF
    rst RST_38                                    ; $770D: $FF
    rst RST_38                                    ; $770E: $FF
    rst RST_38                                    ; $770F: $FF
    rst RST_38                                    ; $7710: $FF
    rst RST_38                                    ; $7711: $FF
    rst RST_38                                    ; $7712: $FF
    rst RST_38                                    ; $7713: $FF
    rst RST_38                                    ; $7714: $FF
    rst RST_38                                    ; $7715: $FF
    rst RST_38                                    ; $7716: $FF
    rst RST_38                                    ; $7717: $FF
    rst RST_38                                    ; $7718: $FF
    rst RST_38                                    ; $7719: $FF
    rst RST_38                                    ; $771A: $FF
    rst RST_38                                    ; $771B: $FF
    rst RST_38                                    ; $771C: $FF
    rst RST_38                                    ; $771D: $FF
    rst RST_38                                    ; $771E: $FF
    rst RST_38                                    ; $771F: $FF
    rst RST_38                                    ; $7720: $FF
    rst RST_38                                    ; $7721: $FF
    rst RST_38                                    ; $7722: $FF
    rst RST_38                                    ; $7723: $FF
    rst RST_38                                    ; $7724: $FF
    rst RST_38                                    ; $7725: $FF
    rst RST_38                                    ; $7726: $FF
    rst RST_38                                    ; $7727: $FF
    rst RST_38                                    ; $7728: $FF
    rst RST_38                                    ; $7729: $FF
    rst RST_38                                    ; $772A: $FF
    rst RST_38                                    ; $772B: $FF
    rst RST_38                                    ; $772C: $FF
    rst RST_38                                    ; $772D: $FF
    rst RST_38                                    ; $772E: $FF
    rst RST_38                                    ; $772F: $FF
    rst RST_38                                    ; $7730: $FF
    rst RST_38                                    ; $7731: $FF
    rst RST_38                                    ; $7732: $FF
    rst RST_38                                    ; $7733: $FF
    rst RST_38                                    ; $7734: $FF
    rst RST_38                                    ; $7735: $FF
    rst RST_38                                    ; $7736: $FF
    rst RST_38                                    ; $7737: $FF
    rst RST_38                                    ; $7738: $FF
    rst RST_38                                    ; $7739: $FF
    rst RST_38                                    ; $773A: $FF
    rst RST_38                                    ; $773B: $FF
    rst RST_38                                    ; $773C: $FF
    rst RST_38                                    ; $773D: $FF
    rst RST_38                                    ; $773E: $FF
    rst RST_38                                    ; $773F: $FF
    rst RST_38                                    ; $7740: $FF
    rst RST_38                                    ; $7741: $FF
    rst RST_38                                    ; $7742: $FF
    rst RST_38                                    ; $7743: $FF
    rst RST_38                                    ; $7744: $FF
    rst RST_38                                    ; $7745: $FF
    rst RST_38                                    ; $7746: $FF
    rst RST_38                                    ; $7747: $FF
    rst RST_38                                    ; $7748: $FF
    rst RST_38                                    ; $7749: $FF
    rst RST_38                                    ; $774A: $FF
    rst RST_38                                    ; $774B: $FF
    rst RST_38                                    ; $774C: $FF
    rst RST_38                                    ; $774D: $FF
    rst RST_38                                    ; $774E: $FF
    rst RST_38                                    ; $774F: $FF
    rst RST_38                                    ; $7750: $FF
    rst RST_38                                    ; $7751: $FF
    rst RST_38                                    ; $7752: $FF
    rst RST_38                                    ; $7753: $FF
    rst RST_38                                    ; $7754: $FF
    rst RST_38                                    ; $7755: $FF
    rst RST_38                                    ; $7756: $FF
    rst RST_38                                    ; $7757: $FF
    rst RST_38                                    ; $7758: $FF
    rst RST_38                                    ; $7759: $FF
    rst RST_38                                    ; $775A: $FF
    rst RST_38                                    ; $775B: $FF
    rst RST_38                                    ; $775C: $FF
    rst RST_38                                    ; $775D: $FF
    rst RST_38                                    ; $775E: $FF
    rst RST_38                                    ; $775F: $FF
    rst RST_38                                    ; $7760: $FF
    rst RST_38                                    ; $7761: $FF
    rst RST_38                                    ; $7762: $FF
    rst RST_38                                    ; $7763: $FF
    rst RST_38                                    ; $7764: $FF
    rst RST_38                                    ; $7765: $FF
    rst RST_38                                    ; $7766: $FF
    rst RST_38                                    ; $7767: $FF
    rst RST_38                                    ; $7768: $FF
    rst RST_38                                    ; $7769: $FF
    rst RST_38                                    ; $776A: $FF
    rst RST_38                                    ; $776B: $FF
    rst RST_38                                    ; $776C: $FF
    rst RST_38                                    ; $776D: $FF
    rst RST_38                                    ; $776E: $FF
    rst RST_38                                    ; $776F: $FF
    rst RST_38                                    ; $7770: $FF
    rst RST_38                                    ; $7771: $FF
    rst RST_38                                    ; $7772: $FF
    rst RST_38                                    ; $7773: $FF
    rst RST_38                                    ; $7774: $FF
    rst RST_38                                    ; $7775: $FF
    rst RST_38                                    ; $7776: $FF
    rst RST_38                                    ; $7777: $FF
    rst RST_38                                    ; $7778: $FF
    rst RST_38                                    ; $7779: $FF
    rst RST_38                                    ; $777A: $FF
    rst RST_38                                    ; $777B: $FF
    rst RST_38                                    ; $777C: $FF
    rst RST_38                                    ; $777D: $FF
    rst RST_38                                    ; $777E: $FF
    rst RST_38                                    ; $777F: $FF
    rst RST_38                                    ; $7780: $FF
    rst RST_38                                    ; $7781: $FF
    rst RST_38                                    ; $7782: $FF
    rst RST_38                                    ; $7783: $FF
    rst RST_38                                    ; $7784: $FF
    rst RST_38                                    ; $7785: $FF
    rst RST_38                                    ; $7786: $FF
    rst RST_38                                    ; $7787: $FF
    rst RST_38                                    ; $7788: $FF
    rst RST_38                                    ; $7789: $FF
    rst RST_38                                    ; $778A: $FF
    rst RST_38                                    ; $778B: $FF
    rst RST_38                                    ; $778C: $FF
    rst RST_38                                    ; $778D: $FF
    rst RST_38                                    ; $778E: $FF
    rst RST_38                                    ; $778F: $FF
    rst RST_38                                    ; $7790: $FF
    rst RST_38                                    ; $7791: $FF
    rst RST_38                                    ; $7792: $FF
    rst RST_38                                    ; $7793: $FF
    rst RST_38                                    ; $7794: $FF
    rst RST_38                                    ; $7795: $FF
    rst RST_38                                    ; $7796: $FF
    rst RST_38                                    ; $7797: $FF
    rst RST_38                                    ; $7798: $FF
    rst RST_38                                    ; $7799: $FF
    rst RST_38                                    ; $779A: $FF
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

Jump_00D_7F80:
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
