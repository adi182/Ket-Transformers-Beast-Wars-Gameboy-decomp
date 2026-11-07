; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $030", ROMX[$4000], BANK[$30]

    ld c, b                                       ; $4000: $48
    ld b, c                                       ; $4001: $41
    ld l, l                                       ; $4002: $6D
    nop                                           ; $4003: $00
    rlca                                          ; $4004: $07
    nop                                           ; $4005: $00
    ld bc, $4A47                                  ; $4006: $01 $47 $4A

jr_030_4009:
    inc bc                                        ; $4009: $03
    db $10                                        ; $400A: $10
    push de                                       ; $400B: $D5
    ld l, a                                       ; $400C: $6F

jr_030_400D:
    dec b                                         ; $400D: $05
    inc b                                         ; $400E: $04
    ld [$10FE], sp                                ; $400F: $08 $FE $10
    rst RST_38                                    ; $4012: $FF
    db $10                                        ; $4013: $10
    sub [hl]                                      ; $4014: $96
    nop                                           ; $4015: $00
    db $10                                        ; $4016: $10
    jr c, @+$0C                                   ; $4017: $38 $0A

    ld a, [hl-]                                   ; $4019: $3A
    ld [$1248], sp                                ; $401A: $08 $48 $12
    jp c, $0108                                   ; $401D: $DA $08 $01

    add b                                         ; $4020: $80
    nop                                           ; $4021: $00
    sbc $02                                       ; $4022: $DE $02
    ld [$8C07], sp                                ; $4024: $08 $07 $8C
    db $10                                        ; $4027: $10
    rra                                           ; $4028: $1F
    ld bc, $103F                                  ; $4029: $01 $3F $10
    nop                                           ; $402C: $00
    ld [$E209], sp                                ; $402D: $08 $09 $E2
    ld c, c                                       ; $4030: $49
    add hl, sp                                    ; $4031: $39
    db $10                                        ; $4032: $10
    ld a, a                                       ; $4033: $7F
    add hl, sp                                    ; $4034: $39
    dec sp                                        ; $4035: $3B
    db $28, $83                                   ; $4036: $28 $83
    cp l                                          ; $4038: $BD
    ld [$0803], sp                                ; $4039: $08 $03 $08
    nop                                           ; $403C: $00
    cp $01                                        ; $403D: $FE $01
    ld b, b                                       ; $403F: $40
    ld [$E050], sp                                ; $4040: $08 $50 $E0
    db $10                                        ; $4043: $10
    pop af                                        ; $4044: $F1
    db $10                                        ; $4045: $10
    db $E3                                        ; $4046: $E3
    ld b, c                                       ; $4047: $41
    pop bc                                        ; $4048: $C1
    add b                                         ; $4049: $80
    add c                                         ; $404A: $81
    jr z, jr_030_400D                             ; $404B: $28 $C0

    ld sp, hl                                     ; $404D: $F9
    jr nc, jr_030_4009                            ; $404E: $30 $B9

    db $10                                        ; $4050: $10
    sub e                                         ; $4051: $93
    ld a, [$873E]                                 ; $4052: $FA $3E $87
    ld [bc], a                                    ; $4055: $02
    nop                                           ; $4056: $00
    rst RST_30                                    ; $4057: $F7
    ld [bc], a                                    ; $4058: $02
    and b                                         ; $4059: $A0
    ld [$DCF8], sp                                ; $405A: $08 $F8 $DC
    db $10                                        ; $405D: $10
    ld [$0B90], sp                                ; $405E: $08 $90 $0B
    ld hl, sp+$08                                 ; $4061: $F8 $08
    rst RST_38                                    ; $4063: $FF
    sub c                                         ; $4064: $91
    ld c, $BF                                     ; $4065: $0E $BF
    ld d, $BE                                     ; $4067: $16 $BE
    jr jr_030_406B                                ; $4069: $18 $00

jr_030_406B:
    rst RST_10                                    ; $406B: $D7
    ld b, $1F                                     ; $406C: $06 $1F
    or d                                          ; $406E: $B2
    ld [$103F], sp                                ; $406F: $08 $3F $10
    nop                                           ; $4072: $00
    ld [$2888], sp                                ; $4073: $08 $88 $28
    ret nz                                        ; $4076: $C0

    ld a, d                                       ; $4077: $7A
    add b                                         ; $4078: $80
    nop                                           ; $4079: $00
    ld e, [hl]                                    ; $407A: $5E
    nop                                           ; $407B: $00
    adc $10                                       ; $407C: $CE $10
    ld [$8078], sp                                ; $407E: $08 $78 $80
    db $10                                        ; $4081: $10
    db $FD                                        ; $4082: $FD
    ld c, b                                       ; $4083: $48
    ei                                            ; $4084: $FB
    ld hl, $E0F1                                  ; $4085: $21 $F1 $E0
    ldh a, [$FF3F]                                ; $4088: $F0 $3F
    jr nz, jr_030_40FC                            ; $408A: $20 $70

    inc c                                         ; $408C: $0C
    ld c, b                                       ; $408D: $48
    ld [$1068], sp                                ; $408E: $08 $68 $10
    nop                                           ; $4091: $00
    call nc, Call_000_07EE                        ; $4092: $D4 $EE $07
    ret nz                                        ; $4095: $C0

    ld [$10E1], sp                                ; $4096: $08 $E1 $10
    db $E3                                        ; $4099: $E3
    ld b, c                                       ; $409A: $41
    nop                                           ; $409B: $00
    ld b, e                                       ; $409C: $43
    ld bc, $0207                                  ; $409D: $01 $07 $02
    ld e, $04                                     ; $40A0: $1E $04
    db $FC                                        ; $40A2: $FC
    jr jr_030_40D4                                ; $40A3: $18 $2F

    ld hl, sp-$20                                 ; $40A5: $F8 $E0
    nop                                           ; $40A7: $00
    add b                                         ; $40A8: $80
    nop                                           ; $40A9: $00
    adc $90                                       ; $40AA: $CE $90
    ld [$0368], sp                                ; $40AC: $08 $68 $03

jr_030_40AF:
    db $10                                        ; $40AF: $10
    add hl, bc                                    ; $40B0: $09
    rra                                           ; $40B1: $1F
    ld [$1D3F], sp                                ; $40B2: $08 $3F $1D
    sbc a                                         ; $40B5: $9F
    inc [hl]                                      ; $40B6: $34
    dec b                                         ; $40B7: $05
    adc a                                         ; $40B8: $8F
    ld [$0938], sp                                ; $40B9: $08 $38 $09
    add hl, bc                                    ; $40BC: $09
    dec sp                                        ; $40BD: $3B
    ld de, $731E                                  ; $40BE: $11 $1E $73
    ld hl, $9027                                  ; $40C1: $21 $27 $90
    nop                                           ; $40C4: $00
    cp $01                                        ; $40C5: $FE $01
    add c                                         ; $40C7: $81
    and b                                         ; $40C8: $A0
    ld [$0899], sp                                ; $40C9: $08 $99 $08
    db $FD                                        ; $40CC: $FD
    sbc b                                         ; $40CD: $98
    ld sp, hl                                     ; $40CE: $F9
    sub b                                         ; $40CF: $90
    pop af                                        ; $40D0: $F1
    inc b                                         ; $40D1: $04
    ld h, b                                       ; $40D2: $60
    db $E3                                        ; $40D3: $E3

jr_030_40D4:
    ld b, b                                       ; $40D4: $40
    rst RST_30                                    ; $40D5: $F7
    inc hl                                        ; $40D6: $23
    ld [$BF22], sp                                ; $40D7: $08 $22 $BF
    dec c                                         ; $40DA: $0D
    inc de                                        ; $40DB: $13
    sbc a                                         ; $40DC: $9F
    ld a, [bc]                                    ; $40DD: $0A
    adc a                                         ; $40DE: $8F
    rst RST_38                                    ; $40DF: $FF
    nop                                           ; $40E0: $00
    cp $08                                        ; $40E1: $FE $08
    ld l, l                                       ; $40E3: $6D
    rst RST_38                                    ; $40E4: $FF
    db $10                                        ; $40E5: $10
    ld [$1E82], sp                                ; $40E6: $08 $82 $1E
    ld e, c                                       ; $40E9: $59
    rst RST_28                                    ; $40EA: $EF
    ld [$287D], sp                                ; $40EB: $08 $7D $28
    dec e                                         ; $40EE: $1D
    nop                                           ; $40EF: $00
    cp $07                                        ; $40F0: $FE $07
    inc bc                                        ; $40F2: $03
    add b                                         ; $40F3: $80
    ld [$C07A], sp                                ; $40F4: $08 $7A $C0
    db $10                                        ; $40F7: $10
    rrca                                          ; $40F8: $0F
    ld e, c                                       ; $40F9: $59
    rlca                                          ; $40FA: $07
    rrca                                          ; $40FB: $0F

jr_030_40FC:
    ld [$CE1F], sp                                ; $40FC: $08 $1F $CE
    db $10                                        ; $40FF: $10
    ld [$3F01], sp                                ; $4100: $08 $01 $3F
    db $10                                        ; $4103: $10
    ld a, [de]                                    ; $4104: $1A
    ld [$D77F], sp                                ; $4105: $08 $7F $D7
    db $10                                        ; $4108: $10
    add hl, de                                    ; $4109: $19
    inc bc                                        ; $410A: $03
    ld [$0807], sp                                ; $410B: $08 $07 $08
    add b                                         ; $410E: $80
    db $10                                        ; $410F: $10
    call nc, $EE00                                ; $4110: $D4 $00 $EE
    ld h, b                                       ; $4113: $60
    ld [$10F2], sp                                ; $4114: $08 $F2 $10
    rst RST_20                                    ; $4117: $E7

Call_030_4118:
    add d                                         ; $4118: $82
    ld b, b                                       ; $4119: $40
    di                                            ; $411A: $F3
    adc b                                         ; $411B: $88
    ei                                            ; $411C: $FB
    pop af                                        ; $411D: $F1
    rst RST_30                                    ; $411E: $F7
    ld [bc], a                                    ; $411F: $02

jr_030_4120:
    rst RST_38                                    ; $4120: $FF
    ld [de], a                                    ; $4121: $12
    or c                                          ; $4122: $B1
    ld [$08FA], sp                                ; $4123: $08 $FA $08
    jr z, jr_030_40AF                             ; $4126: $28 $87

    inc bc                                        ; $4128: $03
    add e                                         ; $4129: $83
    ld l, b                                       ; $412A: $68
    push af                                       ; $412B: $F5
    add hl, bc                                    ; $412C: $09
    nop                                           ; $412D: $00

Call_030_412E:
    cp $03                                        ; $412E: $FE $03
    rrca                                          ; $4130: $0F
    ld [$10BF], sp                                ; $4131: $08 $BF $10
    or l                                          ; $4134: $B5
    cp b                                          ; $4135: $B8
    jr nc, jr_030_4138                            ; $4136: $30 $00

jr_030_4138:
    ld c, d                                       ; $4138: $4A
    and b                                         ; $4139: $A0
    ld [$10F0], sp                                ; $413A: $08 $F0 $10
    sub a                                         ; $413D: $97
    ld e, b                                       ; $413E: $58
    db $10                                        ; $413F: $10
    sbc a                                         ; $4140: $9F
    ld l, b                                       ; $4141: $68
    adc a                                         ; $4142: $8F
    rst RST_10                                    ; $4143: $D7
    ld [bc], a                                    ; $4144: $02
    cp c                                          ; $4145: $B9
    ld b, a                                       ; $4146: $47
    ld a, b                                       ; $4147: $78
    db $10                                        ; $4148: $10
    cp h                                          ; $4149: $BC
    jr jr_030_4184                                ; $414A: $18 $38

    xor b                                         ; $414C: $A8
    rrca                                          ; $414D: $0F
    add hl, bc                                    ; $414E: $09
    add [hl]                                      ; $414F: $86
    ld hl, sp+$08                                 ; $4150: $F8 $08
    rrca                                          ; $4152: $0F
    rlca                                          ; $4153: $07
    ld b, $F7                                     ; $4154: $06 $F7
    nop                                           ; $4156: $00
    ld bc, $1ABE                                  ; $4157: $01 $BE $1A
    inc bc                                        ; $415A: $03
    ld [$1080], sp                                ; $415B: $08 $80 $10
    add hl, de                                    ; $415E: $19
    ld c, c                                       ; $415F: $49
    ld de, $08A0                                  ; $4160: $11 $A0 $08
    dec sp                                        ; $4163: $3B
    db $10                                        ; $4164: $10
    ld [hl], e                                    ; $4165: $73
    ld hl, $42E7                                  ; $4166: $21 $E7 $42
    rst RST_00                                    ; $4169: $C7
    ld l, d                                       ; $416A: $6A
    add d                                         ; $416B: $82
    nop                                           ; $416C: $00
    xor $C0                                       ; $416D: $EE $C0
    ld [$10E0], sp                                ; $416F: $08 $E0 $10
    ld hl, sp+$18                                 ; $4172: $F8 $18
    ld b, b                                       ; $4174: $40
    db $FC                                        ; $4175: $FC
    ld e, b                                       ; $4176: $58
    jr jr_030_41A9                                ; $4177: $18 $30

    rst RST_28                                    ; $4179: $EF
    add b                                         ; $417A: $80
    rst RST_18                                    ; $417B: $DF
    inc e                                         ; $417C: $1C
    adc a                                         ; $417D: $8F
    rst RST_38                                    ; $417E: $FF
    sub b                                         ; $417F: $90
    nop                                           ; $4180: $00
    ld a, b                                       ; $4181: $78
    add hl, bc                                    ; $4182: $09
    ccf                                           ; $4183: $3F

jr_030_4184:
    db $10                                        ; $4184: $10
    dec [hl]                                      ; $4185: $35
    rra                                           ; $4186: $1F
    rrca                                          ; $4187: $0F
    nop                                           ; $4188: $00
    cp $03                                        ; $4189: $FE $03
    ld [$1007], sp                                ; $418B: $08 $07 $10
    cp l                                          ; $418E: $BD
    ld l, b                                       ; $418F: $68
    ld [bc], a                                    ; $4190: $02

jr_030_4191:
    adc b                                         ; $4191: $88
    db $10                                        ; $4192: $10
    ld [$7F18], sp                                ; $4193: $08 $18 $7F
    db $10                                        ; $4196: $10
    dec sp                                        ; $4197: $3B
    cp a                                          ; $4198: $BF
    ld bc, $B010                                  ; $4199: $01 $10 $B0
    jr z, @+$36                                   ; $419C: $28 $34

    jr jr_030_4120                                ; $419E: $18 $80

    sbc [hl]                                      ; $41A0: $9E
    jr nz, @+$06                                  ; $41A1: $20 $04

    adc a                                         ; $41A3: $8F
    jr jr_030_41A6                                ; $41A4: $18 $00

jr_030_41A6:
    cp $01                                        ; $41A6: $FE $01
    or b                                          ; $41A8: $B0

jr_030_41A9:
    sub b                                         ; $41A9: $90
    ld [$30F8], sp                                ; $41AA: $08 $F8 $30
    ld [$FDE0], sp                                ; $41AD: $08 $E0 $FD

jr_030_41B0:
    ld c, b                                       ; $41B0: $48
    rst RST_38                                    ; $41B1: $FF
    ld b, h                                       ; $41B2: $44
    ld sp, hl                                     ; $41B3: $F9
    ld [$F702], sp                                ; $41B4: $08 $02 $F7
    ldh [c], a                                    ; $41B7: $E2
    ld [$F322], sp                                ; $41B8: $08 $22 $F3
    rrca                                          ; $41BB: $0F
    pop hl                                        ; $41BC: $E1
    pop af                                        ; $41BD: $F1
    jr nz, jr_030_41B0                            ; $41BE: $20 $F0

    ld a, b                                       ; $41C0: $78
    nop                                           ; $41C1: $00
    rst RST_30                                    ; $41C2: $F7
    ld [bc], a                                    ; $41C3: $02
    ld e, b                                       ; $41C4: $58
    ld a, h                                       ; $41C5: $7C
    ld [$10FE], sp                                ; $41C6: $08 $FE $10
    ret c                                         ; $41C9: $D8

    sub d                                         ; $41CA: $92
    cp e                                          ; $41CB: $BB
    ld de, $3B4C                                  ; $41CC: $11 $4C $3B
    ld a, [bc]                                    ; $41CF: $0A
    ld [hl], e                                    ; $41D0: $73
    ld hl, $08F8                                  ; $41D1: $21 $F8 $08
    rst RST_28                                    ; $41D4: $EF
    jp nz, $DE35                                  ; $41D5: $C2 $35 $DE

    inc c                                         ; $41D8: $0C
    nop                                           ; $41D9: $00
    sbc $1F                                       ; $41DA: $DE $1F
    ld [$103F], sp                                ; $41DC: $08 $3F $10
    or a                                          ; $41DF: $B7
    ld [$1A14], sp                                ; $41E0: $08 $14 $1A
    ret z                                         ; $41E3: $C8

    cp a                                          ; $41E4: $BF
    jr @+$0A                                      ; $41E5: $18 $08

    dec de                                        ; $41E7: $1B
    adc a                                         ; $41E8: $8F
    ld e, b                                       ; $41E9: $58
    rst RST_38                                    ; $41EA: $FF
    dec h                                         ; $41EB: $25
    ld a, a                                       ; $41EC: $7F
    ld [$FF68], sp                                ; $41ED: $08 $68 $FF
    nop                                           ; $41F0: $00
    ld d, e                                       ; $41F1: $53
    ld a, b                                       ; $41F2: $78
    ld [$10FC], sp                                ; $41F3: $08 $FC $10
    ld a, d                                       ; $41F6: $7A
    jr nz, jr_030_4191                            ; $41F7: $20 $98

    db $10                                        ; $41F9: $10
    xor d                                         ; $41FA: $AA
    ld [$0849], sp                                ; $41FB: $08 $49 $08
    ld a, c                                       ; $41FE: $79
    rra                                           ; $41FF: $1F
    ld sp, hl                                     ; $4200: $F9
    sbc c                                         ; $4201: $99
    ld c, b                                       ; $4202: $48

Jump_030_4203:
    ld [$FE00], a                                 ; $4203: $EA $00 $FE
    dec b                                         ; $4206: $05
    inc b                                         ; $4207: $04
    ld [$108E], sp                                ; $4208: $08 $8E $10
    add a                                         ; $420B: $87
    ld [$8302], sp                                ; $420C: $08 $02 $83
    ld bc, $08A3                                  ; $420F: $01 $A3 $08
    pop af                                        ; $4212: $F1
    jr nz, @-$1E                                  ; $4213: $20 $E0

    ld e, l                                       ; $4215: $5D
    ld b, b                                       ; $4216: $40
    ld [$19C0], sp                                ; $4217: $08 $C0 $19
    nop                                           ; $421A: $00
    adc $06                                       ; $421B: $CE $06
    ld [$2F43], sp                                ; $421D: $08 $43 $2F
    db $10                                        ; $4220: $10
    ld a, a                                       ; $4221: $7F
    ld [hl+], a                                   ; $4222: $22
    ccf                                           ; $4223: $3F
    rra                                           ; $4224: $1F
    nop                                           ; $4225: $00
    ld hl, sp-$7D                                 ; $4226: $F8 $83
    ld [$BF0F], sp                                ; $4228: $08 $0F $BF
    jr @+$01                                      ; $422B: $18 $FF

    inc hl                                        ; $422D: $23
    ld l, b                                       ; $422E: $68
    jr c, @+$3D                                   ; $422F: $38 $3B

    inc e                                         ; $4231: $1C
    ld [$0848], sp                                ; $4232: $08 $48 $08
    ld d, b                                       ; $4235: $50
    rlca                                          ; $4236: $07
    nop                                           ; $4237: $00
    cp $AE                                        ; $4238: $FE $AE
    ld bc, $08E0                                  ; $423A: $01 $E0 $08
    ldh a, [rNR10]                                ; $423D: $F0 $10
    add hl, de                                    ; $423F: $19
    ld bc, $B5B0                                  ; $4240: $01 $B0 $B5
    ld [$10F8], sp                                ; $4243: $08 $F8 $10
    ld c, b                                       ; $4246: $48
    ret nz                                        ; $4247: $C0

    nop                                           ; $4248: $00
    add b                                         ; $4249: $80
    nop                                           ; $424A: $00
    call nc, $048F                                ; $424B: $D4 $8F $04
    inc bc                                        ; $424E: $03
    ld [$1007], sp                                ; $424F: $08 $07 $10
    dec bc                                        ; $4252: $0B
    ld bc, $1F2B                                  ; $4253: $01 $2B $1F
    add hl, bc                                    ; $4256: $09
    ld [$000F], sp                                ; $4257: $08 $0F $00
    ld [bc], a                                    ; $425A: $02
    ld c, b                                       ; $425B: $48

jr_030_425C:
    ld a, [bc]                                    ; $425C: $0A
    and e                                         ; $425D: $A3
    jr z, @+$06                                   ; $425E: $28 $04

    ld [$1D05], sp                                ; $4260: $08 $05 $1D
    ld [$0009], sp                                ; $4263: $08 $09 $00
    push de                                       ; $4266: $D5
    cp $01                                        ; $4267: $FE $01
    add b                                         ; $4269: $80
    ld [$08C8], sp                                ; $426A: $08 $C8 $08
    db $FC                                        ; $426D: $FC
    db $10                                        ; $426E: $10
    ld [bc], a                                    ; $426F: $02
    rst RST_38                                    ; $4270: $FF
    inc h                                         ; $4271: $24
    ld [hl], a                                    ; $4272: $77
    ld [hl+], a                                   ; $4273: $22
    ld a, a                                       ; $4274: $7F
    ld h, $19                                     ; $4275: $26 $19
    ld [hl], e                                    ; $4277: $73
    rlca                                          ; $4278: $07
    jr nz, jr_030_425C                            ; $4279: $20 $E1

    ld b, b                                       ; $427B: $40
    ldh [$FFC0], a                                ; $427C: $E0 $C0
    nop                                           ; $427E: $00
    and b                                         ; $427F: $A0
    xor c                                         ; $4280: $A9
    xor c                                         ; $4281: $A9
    dec b                                         ; $4282: $05
    jr nc, jr_030_428D                            ; $4283: $30 $08

    ld a, b                                       ; $4285: $78
    db $10                                        ; $4286: $10
    inc a                                         ; $4287: $3C
    db $10                                        ; $4288: $10
    add sp, $28                                   ; $4289: $E8 $28
    inc e                                         ; $428B: $1C
    db $FC                                        ; $428C: $FC

jr_030_428D:
    and b                                         ; $428D: $A0
    pop af                                        ; $428E: $F1
    ret z                                         ; $428F: $C8

    db $E3                                        ; $4290: $E3
    ld b, c                                       ; $4291: $41
    rst RST_28                                    ; $4292: $EF
    sub b                                         ; $4293: $90
    ld [$8FDF], sp                                ; $4294: $08 $DF $8F
    ld e, b                                       ; $4297: $58
    sub c                                         ; $4298: $91
    cp a                                          ; $4299: $BF
    ld de, $6A1F                                  ; $429A: $11 $1F $6A
    ld c, $00                                     ; $429D: $0E $00
    cp $01                                        ; $429F: $FE $01
    ld [$1003], sp                                ; $42A1: $08 $03 $10
    add c                                         ; $42A4: $81
    sub b                                         ; $42A5: $90
    jr @-$3A                                      ; $42A6: $18 $C4

    add b                                         ; $42A8: $80
    ret z                                         ; $42A9: $C8

    ld b, h                                       ; $42AA: $44
    rst RST_20                                    ; $42AB: $E7
    ld b, e                                       ; $42AC: $43
    jp $38D0                                      ; $42AD: $C3 $D0 $38


    ld c, c                                       ; $42B0: $49
    add e                                         ; $42B1: $83
    ld l, b                                       ; $42B2: $68
    rst RST_08                                    ; $42B3: $CF
    add d                                         ; $42B4: $82
    cp $4C                                        ; $42B5: $FE $4C
    ld a, [hl-]                                   ; $42B7: $3A
    ld e, h                                       ; $42B8: $5C
    ld [$FE00], sp                                ; $42B9: $08 $00 $FE
    ld bc, $08E0                                  ; $42BC: $01 $E0 $08
    ldh a, [$FFED]                                ; $42BF: $F0 $ED
    db $10                                        ; $42C1: $10
    ld [$F818], sp                                ; $42C2: $08 $18 $F8
    stop                                          ; $42C5: $10 $00
    jr nz, @+$32                                  ; $42C7: $20 $30

    ld a, [de]                                    ; $42C9: $1A
    ld b, b                                       ; $42CA: $40
    ret nz                                        ; $42CB: $C0

    add b                                         ; $42CC: $80
    add hl, bc                                    ; $42CD: $09
    add hl, hl                                    ; $42CE: $29
    db $FC                                        ; $42CF: $FC
    ld [$757E], sp                                ; $42D0: $08 $7E $75
    inc a                                         ; $42D3: $3C
    nop                                           ; $42D4: $00
    rst RST_30                                    ; $42D5: $F7
    nop                                           ; $42D6: $00
    ld l, $08                                     ; $42D7: $2E $08
    ld a, a                                       ; $42D9: $7F
    db $10                                        ; $42DA: $10
    dec bc                                        ; $42DB: $0B
    ccf                                           ; $42DC: $3F
    inc de                                        ; $42DD: $13
    rra                                           ; $42DE: $1F
    inc b                                         ; $42DF: $04
    ld [$2808], sp                                ; $42E0: $08 $08 $28
    db $10                                        ; $42E3: $10
    xor d                                         ; $42E4: $AA
    ld c, b                                       ; $42E5: $48
    jr nc, @-$26                                  ; $42E6: $30 $D8

    ld h, b                                       ; $42E8: $60
    ret c                                         ; $42E9: $D8

    inc c                                         ; $42EA: $0C
    jr c, @+$14                                   ; $42EB: $38 $12

    or l                                          ; $42ED: $B5
    ld b, b                                       ; $42EE: $40
    rrca                                          ; $42EF: $0F
    nop                                           ; $42F0: $00
    xor $03                                       ; $42F1: $EE $03
    ld [$1007], sp                                ; $42F3: $08 $07 $10
    xor b                                         ; $42F6: $A8
    nop                                           ; $42F7: $00
    ld bc, $830D                                  ; $42F8: $01 $0D $83
    ld [$82C7], sp                                ; $42FB: $08 $C7 $82
    xor $3F                                       ; $42FE: $EE $3F
    ld b, h                                       ; $4300: $44
    rst RST_28                                    ; $4301: $EF
    ld [$4028], sp                                ; $4302: $08 $28 $40
    nop                                           ; $4305: $00
    xor $03                                       ; $4306: $EE $03
    ld d, b                                       ; $4308: $50
    add b                                         ; $4309: $80
    ld [$10D0], sp                                ; $430A: $08 $D0 $10

jr_030_430D:
    cp c                                          ; $430D: $B9
    db $10                                        ; $430E: $10
    cp h                                          ; $430F: $BC
    ld [$FC0F], sp                                ; $4310: $08 $0F $FC
    jr c, jr_030_430D                             ; $4313: $38 $F8

    ret nz                                        ; $4315: $C0

    nop                                           ; $4316: $00
    adc h                                         ; $4317: $8C
    jr c, jr_030_4322                             ; $4318: $38 $08

    cp $58                                        ; $431A: $FE $58
    db $10                                        ; $431C: $10
    add hl, de                                    ; $431D: $19
    rlca                                          ; $431E: $07
    ld bc, $08F0                                  ; $431F: $01 $F0 $08

jr_030_4322:
    pop bc                                        ; $4322: $C1
    add d                                         ; $4323: $82
    db $10                                        ; $4324: $10
    db $E3                                        ; $4325: $E3
    ld b, c                                       ; $4326: $41
    pop hl                                        ; $4327: $E1
    ld b, b                                       ; $4328: $40
    ldh [$FF08], a                                ; $4329: $E0 $08
    add sp, -$30                                  ; $432B: $E8 $D0
    ld [$48C8], sp                                ; $432D: $08 $C8 $48
    ret z                                         ; $4330: $C8

    ld d, b                                       ; $4331: $50
    ld a, b                                       ; $4332: $78
    jr nc, jr_030_436D                            ; $4333: $30 $38

    ld [hl], l                                    ; $4335: $75
    stop                                          ; $4336: $10 $00
    rst RST_20                                    ; $4338: $E7
    nop                                           ; $4339: $00
    ld bc, $021A                                  ; $433A: $01 $1A $02
    ld [$8745], sp                                ; $433D: $08 $45 $87
    db $10                                        ; $4340: $10
    jp $E181                                      ; $4341: $C3 $81 $E1


    add sp, -$20                                  ; $4344: $E8 $E0
    ld [$00EA], sp                                ; $4346: $08 $EA $00
    sbc a                                         ; $4349: $9F
    ld b, $80                                     ; $434A: $06 $80
    ld [$10F0], sp                                ; $434C: $08 $F0 $10
    ld hl, sp+$70                                 ; $434F: $F8 $70
    ld [hl], b                                    ; $4351: $70
    nop                                           ; $4352: $00
    jr z, jr_030_436E                             ; $4353: $28 $19

    db $FC                                        ; $4355: $FC

jr_030_4356:
    adc b                                         ; $4356: $88
    sbc l                                         ; $4357: $9D
    ld [$1D52], sp                                ; $4358: $08 $52 $1D
    ld [$081C], sp                                ; $435B: $08 $1C $08
    jr c, jr_030_4370                             ; $435E: $38 $10

    adc b                                         ; $4360: $88
    jr nz, jr_030_43A0                            ; $4361: $20 $3D

    ldh [$FFC0], a                                ; $4363: $E0 $C0
    nop                                           ; $4365: $00
    cp $07                                        ; $4366: $FE $07
    ld bc, $08CC                                  ; $4368: $01 $CC $08
    ld a, a                                       ; $436B: $7F
    rst RST_38                                    ; $436C: $FF

jr_030_436D:
    db $10                                        ; $436D: $10

jr_030_436E:
    add hl, bc                                    ; $436E: $09

jr_030_436F:
    add hl, hl                                    ; $436F: $29

jr_030_4370:
    rlca                                          ; $4370: $07
    rlca                                          ; $4371: $07
    rlca                                          ; $4372: $07
    rst RST_38                                    ; $4373: $FF
    rst RST_30                                    ; $4374: $F7
    rlca                                          ; $4375: $07
    rlca                                          ; $4376: $07
    rlca                                          ; $4377: $07
    ret                                           ; $4378: $C9


    cp $10                                        ; $4379: $FE $10
    add hl, bc                                    ; $437B: $09
    rst RST_38                                    ; $437C: $FF
    rst RST_10                                    ; $437D: $D7
    rlca                                          ; $437E: $07
    ld bc, $0807                                  ; $437F: $01 $07 $08
    rrca                                          ; $4382: $0F
    db $10                                        ; $4383: $10
    rra                                           ; $4384: $1F
    dec de                                        ; $4385: $1B
    cp d                                          ; $4386: $BA
    ld [$0A05], sp                                ; $4387: $08 $05 $0A
    ld c, d                                       ; $438A: $4A
    dec b                                         ; $438B: $05
    add h                                         ; $438C: $84
    ld [$85DF], sp                                ; $438D: $08 $DF $85
    db $10                                        ; $4390: $10
    rst RST_38                                    ; $4391: $FF
    ld d, l                                       ; $4392: $55
    ld a, a                                       ; $4393: $7F
    dec d                                         ; $4394: $15
    jr z, @+$06                                   ; $4395: $28 $04

    jr z, jr_030_436F                             ; $4397: $28 $D6

    db $10                                        ; $4399: $10
    ld [$0844], sp                                ; $439A: $08 $44 $08
    ld c, [hl]                                    ; $439D: $4E
    ld e, c                                       ; $439E: $59
    ld a, [hl+]                                   ; $439F: $2A

jr_030_43A0:
    ld b, b                                       ; $43A0: $40
    cp d                                          ; $43A1: $BA
    ld [$00BF], sp                                ; $43A2: $08 $BF $00
    cp $03                                        ; $43A5: $FE $03
    adc a                                         ; $43A7: $8F
    ld [$019F], sp                                ; $43A8: $08 $9F $01
    rrca                                          ; $43AB: $0F
    ccf                                           ; $43AC: $3F
    ld [de], a                                    ; $43AD: $12
    rst RST_30                                    ; $43AE: $F7
    ld [hl+], a                                   ; $43AF: $22
    rst RST_20                                    ; $43B0: $E7
    ld b, d                                       ; $43B1: $42
    add hl, bc                                    ; $43B2: $09
    ld b, b                                       ; $43B3: $40
    xor $E8                                       ; $43B4: $EE $E8
    ld a, [hl]                                    ; $43B6: $7E
    inc h                                         ; $43B7: $24
    dec a                                         ; $43B8: $3D
    jr jr_030_4356                                ; $43B9: $18 $9B

    ld bc, $00D5                                  ; $43BB: $01 $D5 $00
    sbc $02                                       ; $43BE: $DE $02
    ld [$1007], sp                                ; $43C0: $08 $07 $10
    add e                                         ; $43C3: $83
    ld h, b                                       ; $43C4: $60
    jr nz, @-$3D                                  ; $43C5: $20 $C1

    add b                                         ; $43C7: $80
    ret z                                         ; $43C8: $C8

    ld b, b                                       ; $43C9: $40
    ld a, a                                       ; $43CA: $7F
    daa                                           ; $43CB: $27
    ld [hl], a                                    ; $43CC: $77
    ld hl, $7363                                  ; $43CD: $21 $63 $73
    inc c                                         ; $43D0: $0C
    ld e, b                                       ; $43D1: $58
    ld b, d                                       ; $43D2: $42
    adc $84                                       ; $43D3: $CE $84
    nop                                           ; $43D5: $00
    cp $56                                        ; $43D6: $FE $56
    ld [$3E08], sp                                ; $43D8: $08 $08 $3E
    db $10                                        ; $43DB: $10
    rst RST_38                                    ; $43DC: $FF
    db $10                                        ; $43DD: $10
    ret c                                         ; $43DE: $D8

    ld a, [hl+]                                   ; $43DF: $2A
    db $ED                                        ; $43E0: $ED
    jr jr_030_43F3                                ; $43E1: $18 $10

    ld [$3922], sp                                ; $43E3: $08 $22 $39
    ld e, $C1                                     ; $43E6: $1E $C1
    ld l, c                                       ; $43E8: $69
    sub $00                                       ; $43E9: $D6 $00

jr_030_43EB:
    cp $78                                        ; $43EB: $FE $78
    ld [$10FD], sp                                ; $43ED: $08 $FD $10
    ld l, b                                       ; $43F0: $68
    ld c, b                                       ; $43F1: $48
    and d                                         ; $43F2: $A2

jr_030_43F3:
    ld [$084F], sp                                ; $43F3: $08 $4F $08
    ld a, c                                       ; $43F6: $79
    ei                                            ; $43F7: $FB
    ld d, c                                       ; $43F8: $51
    sbc b                                         ; $43F9: $98
    inc de                                        ; $43FA: $13
    or l                                          ; $43FB: $B5
    jr z, jr_030_4457                             ; $43FC: $28 $59

    add hl, hl                                    ; $43FE: $29
    jr @+$5C                                      ; $43FF: $18 $5A

    ld [$0872], sp                                ; $4401: $08 $72 $08
    ld l, d                                       ; $4404: $6A
    ld b, h                                       ; $4405: $44
    nop                                           ; $4406: $00
    cp $C0                                        ; $4407: $FE $C0
    ld [$10E0], sp                                ; $4409: $08 $E0 $10
    db $F4                                        ; $440C: $F4
    ld h, b                                       ; $440D: $60
    add b                                         ; $440E: $80
    ld a, b                                       ; $440F: $78
    db $10                                        ; $4410: $10
    rst RST_30                                    ; $4411: $F7
    ld b, e                                       ; $4412: $43
    db $E3                                        ; $4413: $E3
    ld b, b                                       ; $4414: $40
    ldh a, [$FF1F]                                ; $4415: $F0 $1F
    ld h, b                                       ; $4417: $60
    ld hl, sp+$50                                 ; $4418: $F8 $50
    add hl, bc                                    ; $441A: $09
    jr z, @+$3A                                   ; $441B: $28 $38

    adc b                                         ; $441D: $88
    add hl, bc                                    ; $441E: $09
    ld [$B998], a                                 ; $441F: $EA $98 $B9
    dec b                                         ; $4422: $05
    ld a, [bc]                                    ; $4423: $0A
    ld [$101F], sp                                ; $4424: $08 $1F $10
    ld a, a                                       ; $4427: $7F
    ld b, l                                       ; $4428: $45
    dec b                                         ; $4429: $05
    ld hl, sp+$7E                                 ; $442A: $F8 $7E
    cp $90                                        ; $442C: $FE $90
    cp b                                          ; $442E: $B8
    jr nz, jr_030_43EB                            ; $442F: $20 $BA

    and [hl]                                      ; $4431: $A6
    inc c                                         ; $4432: $0C
    ld a, b                                       ; $4433: $78
    ld c, b                                       ; $4434: $48
    inc a                                         ; $4435: $3C
    jr jr_030_4438                                ; $4436: $18 $00

jr_030_4438:
    cp $3F                                        ; $4438: $FE $3F
    pop af                                        ; $443A: $F1
    ld [$10E8], sp                                ; $443B: $08 $E8 $10
    ld [$F909], sp                                ; $443E: $08 $09 $F9
    ld d, b                                       ; $4441: $50
    jr @+$51                                      ; $4442: $18 $4F

    jr nc, jr_030_447F                            ; $4444: $30 $39

    rst RST_38                                    ; $4446: $FF
    ld c, c                                       ; $4447: $49
    ld c, c                                       ; $4448: $49
    add hl, hl                                    ; $4449: $29
    nop                                           ; $444A: $00
    jr jr_030_445A                                ; $444B: $18 $0D

    ld a, e                                       ; $444D: $7B
    ld de, $60F1                                  ; $444E: $11 $F1 $60
    nop                                           ; $4451: $00
    cp $41                                        ; $4452: $FE $41
    ld [$F34B], sp                                ; $4454: $08 $4B $F3

jr_030_4457:
    db $10                                        ; $4457: $10
    ei                                            ; $4458: $FB
    sub c                                         ; $4459: $91

jr_030_445A:
    jr @-$5D                                      ; $445A: $18 $A1

    ld a, [hl+]                                   ; $445C: $2A
    and b                                         ; $445D: $A0
    sbc e                                         ; $445E: $9B
    jr jr_030_4462                                ; $445F: $18 $01

    db $E3                                        ; $4461: $E3

jr_030_4462:
    ld [$E118], sp                                ; $4462: $08 $18 $E1
    jr nc, @-$76                                  ; $4465: $30 $88

    sbc l                                         ; $4467: $9D
    ld c, b                                       ; $4468: $48
    db $10                                        ; $4469: $10
    rst RST_38                                    ; $446A: $FF
    jr nc, jr_030_446D                            ; $446B: $30 $00

jr_030_446D:
    cp $FC                                        ; $446D: $FE $FC
    ld [$FE6E], sp                                ; $446F: $08 $6E $FE
    db $10                                        ; $4472: $10
    ld [$1F04], sp                                ; $4473: $08 $04 $1F
    add hl, de                                    ; $4476: $19
    ret z                                         ; $4477: $C8

    ld d, h                                       ; $4478: $54
    and e                                         ; $4479: $A3
    ld [$0851], sp                                ; $447A: $08 $51 $08
    sub c                                         ; $447D: $91
    sbc a                                         ; $447E: $9F

jr_030_447F:
    rrca                                          ; $447F: $0F
    nop                                           ; $4480: $00
    cp $50                                        ; $4481: $FE $50
    ld b, $08                                     ; $4483: $06 $08
    cpl                                           ; $4485: $2F
    db $10                                        ; $4486: $10

jr_030_4487:
    ld a, a                                       ; $4487: $7F
    ld [hl+], a                                   ; $4488: $22
    ccf                                           ; $4489: $3F
    rra                                           ; $448A: $1F
    or h                                          ; $448B: $B4
    nop                                           ; $448C: $00
    ld bc, $1889                                  ; $448D: $01 $89 $18
    ld c, $38                                     ; $4490: $0E $38
    ld de, $2671                                  ; $4492: $11 $71 $26
    jr nz, jr_030_4487                            ; $4495: $20 $F0

    ld [$10BF], sp                                ; $4497: $08 $BF $10
    rst RST_38                                    ; $449A: $FF
    ld bc, $A003                                  ; $449B: $01 $03 $A0
    ld [$1067], sp                                ; $449E: $08 $67 $10
    rst RST_30                                    ; $44A1: $F7
    ld h, c                                       ; $44A2: $61
    rst RST_28                                    ; $44A3: $EF
    add l                                         ; $44A4: $85
    add a                                         ; $44A5: $87
    sub [hl]                                      ; $44A6: $96
    jr z, @-$3B                                   ; $44A7: $28 $C3

    add c                                         ; $44A9: $81
    add hl, bc                                    ; $44AA: $09
    rst RST_20                                    ; $44AB: $E7
    db $10                                        ; $44AC: $10
    ld c, b                                       ; $44AD: $48
    ld b, a                                       ; $44AE: $47
    cpl                                           ; $44AF: $2F
    ld c, a                                       ; $44B0: $4F
    dec b                                         ; $44B1: $05
    ld e, b                                       ; $44B2: $58
    ld bc, $0049                                  ; $44B3: $01 $49 $00
    cp $01                                        ; $44B6: $FE $01
    ld d, h                                       ; $44B8: $54
    add b                                         ; $44B9: $80
    ld [$0898], sp                                ; $44BA: $08 $98 $08
    db $FC                                        ; $44BD: $FC
    db $10                                        ; $44BE: $10
    cp $24                                        ; $44BF: $FE $24
    ld bc, $44EE                                  ; $44C1: $01 $EE $44
    adc $84                                       ; $44C4: $CE $84
    sbc h                                         ; $44C6: $9C
    ld [$089D], sp                                ; $44C7: $08 $9D $08
    ld b, $9F                                     ; $44CA: $06 $9F
    add hl, bc                                    ; $44CC: $09
    adc a                                         ; $44CD: $8F
    ld b, $86                                     ; $44CE: $06 $86
    rst RST_20                                    ; $44D0: $E7
    nop                                           ; $44D1: $00
    jr @-$56                                      ; $44D2: $18 $A8

    ld [$103C], sp                                ; $44D4: $08 $3C $10
    rra                                           ; $44D7: $1F
    sbc b                                         ; $44D8: $98
    ld a, a                                       ; $44D9: $7F
    dec bc                                        ; $44DA: $0B
    rst RST_38                                    ; $44DB: $FF
    nop                                           ; $44DC: $00
    ld a, h                                       ; $44DD: $7C
    ld a, l                                       ; $44DE: $7D
    db $10                                        ; $44DF: $10
    dec sp                                        ; $44E0: $3B
    ld de, $123F                                  ; $44E1: $11 $3F $12
    ld [hl], d                                    ; $44E4: $72
    ld hl, $F220                                  ; $44E5: $21 $20 $F2
    ld [$42E7], sp                                ; $44E8: $08 $E7 $42
    db $E3                                        ; $44EB: $E3
    ld b, c                                       ; $44EC: $41
    nop                                           ; $44ED: $00
    push de                                       ; $44EE: $D5
    cp $05                                        ; $44EF: $FE $05
    add b                                         ; $44F1: $80
    ld a, [de]                                    ; $44F2: $1A
    ldh [$FF08], a                                ; $44F3: $E0 $08
    ldh a, [rNR10]                                ; $44F5: $F0 $10
    ld a, [$0319]                                 ; $44F7: $FA $19 $03
    ld c, a                                       ; $44FA: $4F
    rlca                                          ; $44FB: $07
    ld bc, $0807                                  ; $44FC: $01 $07 $08
    rrca                                          ; $44FF: $0F

Jump_030_4500:
    call RST_10                                   ; $4500: $CD $10 $00
    ld bc, $0803                                  ; $4503: $01 $03 $08
    jr @+$04                                      ; $4506: $18 $02

    add hl, bc                                    ; $4508: $09
    ld b, $0E                                     ; $4509: $06 $0E
    inc b                                         ; $450B: $04
    inc e                                         ; $450C: $1C
    ld [$C709], sp                                ; $450D: $08 $09 $C7
    nop                                           ; $4510: $00
    ld b, b                                       ; $4511: $40
    xor b                                         ; $4512: $A8
    ld [$10E0], sp                                ; $4513: $08 $E0 $10
    and $08                                       ; $4516: $E6 $08
    rst RST_38                                    ; $4518: $FF
    ld h, [hl]                                    ; $4519: $66
    cp $01                                        ; $451A: $FE $01
    ld h, h                                       ; $451C: $64
    db $FC                                        ; $451D: $FC
    ld e, b                                       ; $451E: $58
    ld hl, sp+$50                                 ; $451F: $F8 $50
    db $FD                                        ; $4521: $FD
    ld c, b                                       ; $4522: $48
    add hl, bc                                    ; $4523: $09
    inc bc                                        ; $4524: $03
    rst RST_28                                    ; $4525: $EF
    ld b, h                                       ; $4526: $44
    rst RST_20                                    ; $4527: $E7
    ld b, d                                       ; $4528: $42
    db $E3                                        ; $4529: $E3
    ret nz                                        ; $452A: $C0

    nop                                           ; $452B: $00
    cp $5A                                        ; $452C: $FE $5A
    ccf                                           ; $452E: $3F
    ld [$107F], sp                                ; $452F: $08 $7F $10
    ld [$1D20], sp                                ; $4532: $08 $20 $1D
    rst RST_38                                    ; $4535: $FF
    rst RST_10                                    ; $4536: $D7
    ld e, b                                       ; $4537: $58
    ld [$08FB], sp                                ; $4538: $08 $FB $08
    adc d                                         ; $453B: $8A
    dec e                                         ; $453C: $1D
    nop                                           ; $453D: $00
    cp $50                                        ; $453E: $FE $50
    add c                                         ; $4540: $81
    ld [$10CB], sp                                ; $4541: $08 $CB $10
    rst RST_18                                    ; $4544: $DF
    adc b                                         ; $4545: $88
    rst RST_08                                    ; $4546: $CF
    add a                                         ; $4547: $87
    ld h, d                                       ; $4548: $62
    rst RST_00                                    ; $4549: $C7
    jr z, @+$0A                                   ; $454A: $28 $08

    add e                                         ; $454C: $83
    rst RST_28                                    ; $454D: $EF
    ld b, $B8                                     ; $454E: $06 $B8
    add sp, -$78                                  ; $4550: $E8 $88
    cp b                                          ; $4552: $B8
    ld hl, $E2F7                                  ; $4553: $21 $F7 $E2
    ld [$F322], sp                                ; $4556: $08 $22 $F3
    pop hl                                        ; $4559: $E1
    call nc, $FE00                                ; $455A: $D4 $00 $FE
    add b                                         ; $455D: $80
    ld [$10F8], sp                                ; $455E: $08 $F8 $10
    db $FC                                        ; $4561: $FC
    cp b                                          ; $4562: $B8
    inc [hl]                                      ; $4563: $34
    ld sp, hl                                     ; $4564: $F9
    ret nz                                        ; $4565: $C0

    nop                                           ; $4566: $00
    jr c, @-$12                                   ; $4567: $38 $EC

    db $10                                        ; $4569: $10
    cp $2C                                        ; $456A: $FE $2C
    and a                                         ; $456C: $A7
    ld c, b                                       ; $456D: $48
    ldh a, [rP1]                                  ; $456E: $F0 $00
    jr nz, jr_030_4593                            ; $4570: $20 $21

    ld c, b                                       ; $4572: $48
    ld l, b                                       ; $4573: $68
    ld [$38F5], sp                                ; $4574: $08 $F5 $38
    and b                                         ; $4577: $A0
    nop                                           ; $4578: $00
    cp $04                                        ; $4579: $FE $04
    ld [$100F], sp                                ; $457B: $08 $0F $10
    ld [hl], b                                    ; $457E: $70
    rst RST_38                                    ; $457F: $FF
    add hl, bc                                    ; $4580: $09
    ld bc, $EF18                                  ; $4581: $01 $18 $EF
    ld b, [hl]                                    ; $4584: $46
    ld a, a                                       ; $4585: $7F
    ld h, $20                                     ; $4586: $26 $20
    ccf                                           ; $4588: $3F
    dec b                                         ; $4589: $05
    jr c, @+$16                                   ; $458A: $38 $14

    cp $E4                                        ; $458C: $FE $E4
    xor $84                                       ; $458E: $EE $84
    dec [hl]                                      ; $4590: $35
    sbc [hl]                                      ; $4591: $9E
    inc c                                         ; $4592: $0C

jr_030_4593:
    nop                                           ; $4593: $00
    cp $80                                        ; $4594: $FE $80
    ld [$10C6], sp                                ; $4596: $08 $C6 $10
    add h                                         ; $4599: $84
    ret                                           ; $459A: $C9


    rst RST_30                                    ; $459B: $F7
    ldh [c], a                                    ; $459C: $E2
    rst RST_20                                    ; $459D: $E7
    ld [bc], a                                    ; $459E: $02
    ld [$CFC3], sp                                ; $459F: $08 $C3 $CF
    nop                                           ; $45A2: $00
    add l                                         ; $45A3: $85
    sbc a                                         ; $45A4: $9F
    add hl, bc                                    ; $45A5: $09
    db $FD                                        ; $45A6: $FD
    adc b                                         ; $45A7: $88
    rst RST_38                                    ; $45A8: $FF

jr_030_45A9:
    ld l, c                                       ; $45A9: $69
    ld l, a                                       ; $45AA: $6F
    ld [hl], l                                    ; $45AB: $75
    ld b, $00                                     ; $45AC: $06 $00
    xor $01                                       ; $45AE: $EE $01

jr_030_45B0:
    ld h, b                                       ; $45B0: $60
    ld [$10F0], sp                                ; $45B1: $08 $F0 $10
    inc d                                         ; $45B4: $14
    ld [hl], b                                    ; $45B5: $70
    jr nz, jr_030_45B0                            ; $45B6: $20 $F8

    ld [$10FC], sp                                ; $45B8: $08 $FC $10
    cp $44                                        ; $45BB: $FE $44
    ld a, [bc]                                    ; $45BD: $0A
    rst RST_20                                    ; $45BE: $E7
    ld b, d                                       ; $45BF: $42
    rst RST_00                                    ; $45C0: $C7
    add d                                         ; $45C1: $82
    add hl, bc                                    ; $45C2: $09
    xor $38                                       ; $45C3: $EE $38
    ld a, h                                       ; $45C5: $7C
    dec de                                        ; $45C6: $1B
    ld [$3078], sp                                ; $45C7: $08 $78 $30
    nop                                           ; $45CA: $00
    db $EC                                        ; $45CB: $EC
    rst RST_38                                    ; $45CC: $FF
    rrca                                          ; $45CD: $0F
    ld c, $FA                                     ; $45CE: $0E $FA
    rlca                                          ; $45D0: $07
    rlca                                          ; $45D1: $07
    rlca                                          ; $45D2: $07
    rlca                                          ; $45D3: $07
    ld bc, $0880                                  ; $45D4: $01 $80 $08
    ldh [$FF87], a                                ; $45D7: $E0 $87
    db $10                                        ; $45D9: $10
    ldh a, [$FF60]                                ; $45DA: $F0 $60
    ld [hl], b                                    ; $45DC: $70
    jr nz, jr_030_45DF                            ; $45DD: $20 $00

jr_030_45DF:
    add a                                         ; $45DF: $87
    nop                                           ; $45E0: $00
    ld e, [hl]                                    ; $45E1: $5E
    rrca                                          ; $45E2: $0F
    ld [$101F], sp                                ; $45E3: $08 $1F $10
    add hl, de                                    ; $45E6: $19
    dec hl                                        ; $45E7: $2B
    ld [$AB08], sp                                ; $45E8: $08 $08 $AB
    ld [$0A0A], sp                                ; $45EB: $08 $0A $0A
    dec bc                                        ; $45EE: $0B
    add hl, de                                    ; $45EF: $19

jr_030_45F0:
    ld e, $48                                     ; $45F0: $1E $48
    nop                                           ; $45F2: $00
    call nc, Call_000_39EE                        ; $45F3: $D4 $EE $39
    db $FC                                        ; $45F6: $FC
    db $10                                        ; $45F7: $10
    cp $10                                        ; $45F8: $FE $10
    db $FD                                        ; $45FA: $FD
    add b                                         ; $45FB: $80
    jp c, Jump_000_0810                           ; $45FC: $DA $10 $08

    rst RST_38                                    ; $45FF: $FF
    db $10                                        ; $4600: $10
    jr c, @-$7A                                   ; $4601: $38 $84

    jr jr_030_45A9                                ; $4603: $18 $A4

    rst RST_10                                    ; $4605: $D7
    jr @+$0B                                      ; $4606: $18 $09

    db $E4                                        ; $4608: $E4
    ld [$001C], sp                                ; $4609: $08 $1C $00
    rst RST_38                                    ; $460C: $FF
    nop                                           ; $460D: $00
    ld e, [hl]                                    ; $460E: $5E
    ld hl, $7308                                  ; $460F: $21 $08 $73
    db $10                                        ; $4612: $10
    xor b                                         ; $4613: $A8
    db $10                                        ; $4614: $10
    ld [$ABF9], sp                                ; $4615: $08 $F9 $AB
    ld [$0853], sp                                ; $4618: $08 $53 $08
    xor c                                         ; $461B: $A9
    ld [$0872], sp                                ; $461C: $08 $72 $08
    ret c                                         ; $461F: $D8

    or b                                          ; $4620: $B0
    ld [$003F], sp                                ; $4621: $08 $3F $00
    ret nc                                        ; $4624: $D0

    ld a, c                                       ; $4625: $79
    db $10                                        ; $4626: $10
    di                                            ; $4627: $F3
    ld h, c                                       ; $4628: $61
    jp hl                                         ; $4629: $E9


    nop                                           ; $462A: $00
    cp $01                                        ; $462B: $FE $01
    pop bc                                        ; $462D: $C1
    ld [$C0EF], sp                                ; $462E: $08 $EF $C0
    xor b                                         ; $4631: $A8
    ld c, c                                       ; $4632: $49
    ld c, a                                       ; $4633: $4F
    jr @+$42                                      ; $4634: $18 $40

    pop hl                                        ; $4636: $E1
    ld [$2071], sp                                ; $4637: $08 $71 $20
    jr jr_030_45F0                                ; $463A: $18 $B4

    ld e, b                                       ; $463C: $58
    db $E3                                        ; $463D: $E3
    ld [hl], b                                    ; $463E: $70
    ld [$5841], sp                                ; $463F: $08 $41 $58
    ld b, d                                       ; $4642: $42
    sbc $7A                                       ; $4643: $DE $7A
    adc h                                         ; $4645: $8C

jr_030_4646:
    nop                                           ; $4646: $00
    xor $D0                                       ; $4647: $EE $D0
    ld [$10E4], sp                                ; $4649: $08 $E4 $10
    cp $7A                                        ; $464C: $FE $7A
    add h                                         ; $464E: $84
    ld hl, sp+$10                                 ; $464F: $F8 $10
    ld [$CE18], sp                                ; $4651: $08 $18 $CE
    inc c                                         ; $4654: $0C
    adc [hl]                                      ; $4655: $8E
    ld bc, $BC04                                  ; $4656: $01 $04 $BC
    ld [$387D], sp                                ; $4659: $08 $7D $38
    add hl, sp                                    ; $465C: $39
    stop                                          ; $465D: $10 $00
    xor e                                         ; $465F: $AB
    cp $31                                        ; $4660: $FE $31
    ld [$107B], sp                                ; $4662: $08 $7B $10
    cp l                                          ; $4665: $BD
    ld h, b                                       ; $4666: $60
    ldh a, [rSCX]                                 ; $4667: $F0 $43
    sbc h                                         ; $4669: $9C
    ld hl, sp-$0E                                 ; $466A: $F8 $F2
    rst RST_30                                    ; $466C: $F7
    ld [hl+], a                                   ; $466D: $22
    ld [hl], a                                    ; $466E: $77
    ld a, [bc]                                    ; $466F: $0A

jr_030_4670:
    jr z, @+$43                                   ; $4670: $28 $41

    ld b, d                                       ; $4672: $42
    ld e, b                                       ; $4673: $58
    ld d, h                                       ; $4674: $54
    sbc $8C                                       ; $4675: $DE $8C
    call c, $0088                                 ; $4677: $DC $88 $00
    xor c                                         ; $467A: $A9
    cp $40                                        ; $467B: $FE $40
    ld [$10E0], sp                                ; $467D: $08 $E0 $10
    ldh a, [$FFA0]                                ; $4680: $F0 $A0
    nop                                           ; $4682: $00
    sub d                                         ; $4683: $92

jr_030_4684:
    jr z, jr_030_4646                             ; $4684: $28 $C0

    add b                                         ; $4686: $80
    add hl, sp                                    ; $4687: $39
    ld [hl], b                                    ; $4688: $70
    jr nz, @+$4A                                  ; $4689: $20 $48

    ld h, b                                       ; $468B: $60
    push af                                       ; $468C: $F5
    add hl, de                                    ; $468D: $19
    nop                                           ; $468E: $00
    adc $05                                       ; $468F: $CE $05
    dec b                                         ; $4691: $05
    ld [$100F], sp                                ; $4692: $08 $0F $10
    ld a, l                                       ; $4695: $7D
    rlca                                          ; $4696: $07
    add hl, de                                    ; $4697: $19
    db $10                                        ; $4698: $10
    add hl, hl                                    ; $4699: $29
    dec e                                         ; $469A: $1D
    nop                                           ; $469B: $00
    ld bc, $751B                                  ; $469C: $01 $1B $75
    inc bc                                        ; $469F: $03
    ld [$FE00], sp                                ; $46A0: $08 $00 $FE
    ld c, b                                       ; $46A3: $48
    ld [$10FD], sp                                ; $46A4: $08 $FD $10
    ld a, [bc]                                    ; $46A7: $0A
    rst RST_18                                    ; $46A8: $DF
    add hl, bc                                    ; $46A9: $09
    rst RST_38                                    ; $46AA: $FF
    ret z                                         ; $46AB: $C8

    ld [$1A7F], sp                                ; $46AC: $08 $7F $1A
    ld c, c                                       ; $46AF: $49
    adc d                                         ; $46B0: $8A
    ld [$CFCA], sp                                ; $46B1: $08 $CA $CF
    inc b                                         ; $46B4: $04
    jr jr_030_4684                                ; $46B5: $18 $CD

    ld [$3A12], sp                                ; $46B7: $08 $12 $3A
    di                                            ; $46BA: $F3
    ld h, c                                       ; $46BB: $61
    nop                                           ; $46BC: $00
    cp $03                                        ; $46BD: $FE $03
    ret nz                                        ; $46BF: $C0

    ld [$0AE0], sp                                ; $46C0: $08 $E0 $0A
    ld b, b                                       ; $46C3: $40
    pop af                                        ; $46C4: $F1
    jr nz, @+$72                                  ; $46C5: $20 $70

    ld [$08F0], sp                                ; $46C7: $08 $F0 $08
    ld [hl], h                                    ; $46CA: $74
    add b                                         ; $46CB: $80
    ld [$247E], sp                                ; $46CC: $08 $7E $24
    db $FC                                        ; $46CF: $FC
    jr z, jr_030_470E                             ; $46D0: $28 $3C

    jr jr_030_4670                                ; $46D2: $18 $9C

    ld [hl], h                                    ; $46D4: $74
    ld [$E700], sp                                ; $46D5: $08 $00 $E7
    nop                                           ; $46D8: $00
    dec b                                         ; $46D9: $05
    ld [$040F], sp                                ; $46DA: $08 $0F $04
    nop                                           ; $46DD: $00
    add a                                         ; $46DE: $87
    inc bc                                        ; $46DF: $03
    jp $E380                                      ; $46E0: $C3 $80 $E3


    ld b, c                                       ; $46E3: $41
    ld [hl], a                                    ; $46E4: $77
    inc hl                                        ; $46E5: $23
    ld e, e                                       ; $46E6: $5B
    ld a, a                                       ; $46E7: $7F
    add sp, $25                                   ; $46E8: $E8 $25
    ld l, b                                       ; $46EA: $68
    ld d, b                                       ; $46EB: $50
    ld bc, $0009                                  ; $46EC: $01 $09 $00
    call nc, Call_000_00E7                        ; $46EF: $D4 $E7 $00
    ret nz                                        ; $46F2: $C0

    ld [$10FC], sp                                ; $46F3: $08 $FC $10
    cp $5C                                        ; $46F6: $FE $5C
    or h                                          ; $46F8: $B4
    jr @-$1E                                      ; $46F9: $18 $E0

    nop                                           ; $46FB: $00
    ld hl, sp-$0A                                 ; $46FC: $F8 $F6
    db $10                                        ; $46FE: $10
    rst RST_38                                    ; $46FF: $FF
    ld d, $8F                                     ; $4700: $16 $8F
    ld c, b                                       ; $4702: $48
    ld a, b                                       ; $4703: $78
    ld hl, sp-$70                                 ; $4704: $F8 $90
    nop                                           ; $4706: $00
    adc c                                         ; $4707: $89
    ld [$EA38], sp                                ; $4708: $08 $38 $EA
    db $10                                        ; $470B: $10
    add hl, de                                    ; $470C: $19
    dec b                                         ; $470D: $05

jr_030_470E:
    inc de                                        ; $470E: $13
    ld [$103F], sp                                ; $470F: $08 $3F $10
    ld a, a                                       ; $4712: $7F
    ld d, l                                       ; $4713: $55
    ld [hl+], a                                   ; $4714: $22
    ret z                                         ; $4715: $C8

    ld l, e                                       ; $4716: $6B
    jr jr_030_4729                                ; $4717: $18 $10

    ld [$2827], sp                                ; $4719: $08 $27 $28
    ld d, l                                       ; $471C: $55
    ld [hl], l                                    ; $471D: $75
    jr @+$19                                      ; $471E: $18 $17

    jr jr_030_477A                                ; $4720: $18 $58

    ld [$085F], sp                                ; $4722: $08 $5F $08
    ld e, d                                       ; $4725: $5A
    ld e, d                                       ; $4726: $5A
    jr c, jr_030_473D                             ; $4727: $38 $14

jr_030_4729:
    nop                                           ; $4729: $00
    cp $E1                                        ; $472A: $FE $E1
    ld [$84F3], sp                                ; $472C: $08 $F3 $84
    db $10                                        ; $472F: $10
    ldh a, [rNR41]                                ; $4730: $F0 $20
    pop af                                        ; $4732: $F1
    ldh [$FF28], a                                ; $4733: $E0 $28
    ld bc, $44FB                                  ; $4735: $01 $FB $44
    ld [hl], c                                    ; $4738: $71
    ld [$F951], sp                                ; $4739: $08 $51 $F9
    ld [hl], b                                    ; $473C: $70

jr_030_473D:
    ld e, b                                       ; $473D: $58
    add b                                         ; $473E: $80
    ld hl, sp-$29                                 ; $473F: $F8 $D7
    stop                                          ; $4741: $10 $00
    and b                                         ; $4743: $A0
    jr @-$6E                                      ; $4744: $18 $90

    nop                                           ; $4746: $00
    cp $01                                        ; $4747: $FE $01
    ld d, d                                       ; $4749: $52
    sbc b                                         ; $474A: $98
    ld [$10FC], sp                                ; $474B: $08 $FC $10
    cp $A4                                        ; $474E: $FE $A4
    ld [$2024], sp                                ; $4750: $08 $24 $20
    xor $44                                       ; $4753: $EE $44
    add hl, bc                                    ; $4755: $09
    adc $84                                       ; $4756: $CE $84
    call c, $9C88                                 ; $4758: $DC $88 $9C
    ld b, $08                                     ; $475B: $06 $08
    jr c, jr_030_476F                             ; $475D: $38 $10

    ld [hl], b                                    ; $475F: $70
    jr nz, jr_030_4762                            ; $4760: $20 $00

jr_030_4762:
    xor $03                                       ; $4762: $EE $03
    and e                                         ; $4764: $A3
    ld [$1007], sp                                ; $4765: $08 $07 $10
    ccf                                           ; $4768: $3F
    ld [bc], a                                    ; $4769: $02
    ld a, a                                       ; $476A: $7F
    db $10                                        ; $476B: $10
    ld [$8093], sp                                ; $476C: $08 $93 $80

jr_030_476F:
    ld [hl], e                                    ; $476F: $73
    ld hl, $7709                                  ; $4770: $21 $09 $77
    ld [hl+], a                                   ; $4773: $22
    add hl, bc                                    ; $4774: $09
    ld c, b                                       ; $4775: $48
    rlca                                          ; $4776: $07
    inc h                                         ; $4777: $24
    rst RST_38                                    ; $4778: $FF
    ld c, a                                       ; $4779: $4F

jr_030_477A:
    rst RST_28                                    ; $477A: $EF
    ld b, h                                       ; $477B: $44
    nop                                           ; $477C: $00
    cp $01                                        ; $477D: $FE $01

jr_030_477F:
    ld d, b                                       ; $477F: $50
    and h                                         ; $4780: $A4
    ld [$89FE], sp                                ; $4781: $08 $FE $89
    ldh a, [c]                                    ; $4784: $F2
    rst RST_30                                    ; $4785: $F7
    ld [bc], a                                    ; $4786: $02
    adc $1D                                       ; $4787: $CE $1D
    add h                                         ; $4789: $84
    adc [hl]                                      ; $478A: $8E
    inc b                                         ; $478B: $04
    ret nz                                        ; $478C: $C0

    ld [$45C8], sp                                ; $478D: $08 $C8 $45
    ld c, b                                       ; $4790: $48
    ld b, [hl]                                    ; $4791: $46
    ld h, d                                       ; $4792: $62
    ld [$BAA2], sp                                ; $4793: $08 $A2 $BA
    stop                                          ; $4796: $10 $00
    xor $1A                                       ; $4798: $EE $1A
    and h                                         ; $479A: $A4
    ld [$103F], sp                                ; $479B: $08 $3F $10
    sbc a                                         ; $479E: $9F
    dec c                                         ; $479F: $0D
    ld hl, sp-$76                                 ; $47A0: $F8 $8A
    cp $49                                        ; $47A2: $FE $49
    ld a, h                                       ; $47A4: $7C
    nop                                           ; $47A5: $00
    ld [$089C], sp                                ; $47A6: $08 $9C $08
    call c, $1988                                 ; $47A9: $DC $88 $19
    ld h, a                                       ; $47AC: $67
    jr c, jr_030_477F                             ; $47AD: $38 $D0

    add hl, bc                                    ; $47AF: $09
    ld [hl], b                                    ; $47B0: $70
    jr nz, jr_030_47B3                            ; $47B1: $20 $00

jr_030_47B3:
    cp $03                                        ; $47B3: $FE $03
    ld h, b                                       ; $47B5: $60
    rst RST_00                                    ; $47B6: $C7
    ld [$47F8], sp                                ; $47B7: $08 $F8 $47
    ld a, a                                       ; $47BA: $7F
    add hl, sp                                    ; $47BB: $39
    ccf                                           ; $47BC: $3F
    ld [bc], a                                    ; $47BD: $02
    add hl, hl                                    ; $47BE: $29
    ld c, $04                                     ; $47BF: $0E $04
    dec c                                         ; $47C1: $0D
    rlca                                          ; $47C2: $07
    ld c, b                                       ; $47C3: $48
    inc bc                                        ; $47C4: $03
    ld bc, $D500                                  ; $47C5: $01 $00 $D5
    rst RST_20                                    ; $47C8: $E7
    ld [bc], a                                    ; $47C9: $02
    db $E4                                        ; $47CA: $E4
    ld [$10FE], sp                                ; $47CB: $08 $FE $10
    rst RST_20                                    ; $47CE: $E7
    sbc b                                         ; $47CF: $98
    db $D3                                        ; $47D0: $D3
    xor c                                         ; $47D1: $A9
    rrca                                          ; $47D2: $0F
    add e                                         ; $47D3: $83
    ldh [$FFC1], a                                ; $47D4: $E0 $C1
    add b                                         ; $47D6: $80
    nop                                           ; $47D7: $00
    rst RST_20                                    ; $47D8: $E7
    xor c                                         ; $47D9: $A9
    inc b                                         ; $47DA: $04
    ld [$1C08], sp                                ; $47DB: $08 $08 $1C
    db $10                                        ; $47DE: $10
    ld c, $04                                     ; $47DF: $0E $04
    ret                                           ; $47E1: $C9


    ld b, a                                       ; $47E2: $47
    ld b, a                                       ; $47E3: $47
    ld [$40E2], sp                                ; $47E4: $08 $E2 $40
    ret nz                                        ; $47E7: $C0

    ret nc                                        ; $47E8: $D0

    dec bc                                        ; $47E9: $0B
    rst RST_38                                    ; $47EA: $FF
    ld d, h                                       ; $47EB: $54
    jr jr_030_47F6                                ; $47EC: $18 $08

    inc a                                         ; $47EE: $3C
    db $10                                        ; $47EF: $10
    rra                                           ; $47F0: $1F
    ret c                                         ; $47F1: $D8

    ld a, a                                       ; $47F2: $7F
    dec bc                                        ; $47F3: $0B
    nop                                           ; $47F4: $00
    rst RST_38                                    ; $47F5: $FF

jr_030_47F6:
    ld a, h                                       ; $47F6: $7C

jr_030_47F7:
    ld a, l                                       ; $47F7: $7D
    db $10                                        ; $47F8: $10
    dec sp                                        ; $47F9: $3B
    ld de, $123F                                  ; $47FA: $11 $3F $12
    ld hl, $2072                                  ; $47FD: $21 $72 $20
    add hl, bc                                    ; $4800: $09
    rst RST_20                                    ; $4801: $E7
    ld b, d                                       ; $4802: $42
    db $E3                                        ; $4803: $E3
    ld b, c                                       ; $4804: $41
    nop                                           ; $4805: $00
    push de                                       ; $4806: $D5
    cp $05                                        ; $4807: $FE $05
    add b                                         ; $4809: $80
    ld a, [de]                                    ; $480A: $1A
    ldh [$FF08], a                                ; $480B: $E0 $08
    ldh a, [rNR10]                                ; $480D: $F0 $10
    push af                                       ; $480F: $F5
    add hl, de                                    ; $4810: $19
    inc bc                                        ; $4811: $03
    ld c, a                                       ; $4812: $4F
    inc bc                                        ; $4813: $03
    ld bc, $1B08                                  ; $4814: $01 $08 $1B
    stop                                          ; $4817: $10 $00
    dec a                                         ; $4819: $3D
    jr jr_030_487B                                ; $481A: $18 $5F

    ld [$4FFF], sp                                ; $481C: $08 $FF $4F
    ld a, a                                       ; $481F: $7F
    jr c, jr_030_47F7                             ; $4820: $38 $D5

    jr c, jr_030_484C                             ; $4822: $38 $28

    dec e                                         ; $4824: $1D
    ld [$680B], sp                                ; $4825: $08 $0B $68
    inc bc                                        ; $4828: $03
    ld [$0F0D], sp                                ; $4829: $08 $0D $0F
    ld [bc], a                                    ; $482C: $02
    ld e, $0C                                     ; $482D: $1E $0C
    nop                                           ; $482F: $00
    cp $80                                        ; $4830: $FE $80
    ld [$C051], sp                                ; $4832: $08 $51 $C0
    db $10                                        ; $4835: $10
    ldh [$FF08], a                                ; $4836: $E0 $08
    ldh a, [$FFA0]                                ; $4838: $F0 $A0
    ld hl, sp+$10                                 ; $483A: $F8 $10
    ld [$2800], a                                 ; $483C: $EA $00 $28
    ld c, c                                       ; $483F: $49
    jp $8708                                      ; $4840: $C3 $08 $87


    ldh a, [$FF83]                                ; $4843: $F0 $83
    call nc, $07CE                                ; $4845: $D4 $CE $07
    inc c                                         ; $4848: $0C
    ld [$101E], sp                                ; $4849: $08 $1E $10

jr_030_484C:
    ld c, $04                                     ; $484C: $0E $04
    ld [bc], a                                    ; $484E: $02

jr_030_484F:
    inc e                                         ; $484F: $1C
    ld [$1038], sp                                ; $4850: $08 $38 $10
    ld hl, sp+$30                                 ; $4853: $F8 $30
    ld [$FED0], sp                                ; $4855: $08 $D0 $FE
    ld [$3928], sp                                ; $4858: $08 $28 $39
    dec bc                                        ; $485B: $0B
    nop                                           ; $485C: $00
    rst RST_30                                    ; $485D: $F7
    nop                                           ; $485E: $00
    ld bc, $08AA                                  ; $485F: $01 $AA $08
    add hl, de                                    ; $4862: $19
    ld [$103F], sp                                ; $4863: $08 $3F $10
    dec e                                         ; $4866: $1D
    ld hl, sp+$1C                                 ; $4867: $F8 $1C
    jp $CB0A                                      ; $4869: $C3 $0A $CB


    ld [hl], b                                    ; $486C: $70
    jr nz, jr_030_484F                            ; $486D: $20 $E0

    ld b, b                                       ; $486F: $40
    nop                                           ; $4870: $00
    rst RST_20                                    ; $4871: $E7
    xor b                                         ; $4872: $A8
    nop                                           ; $4873: $00
    and b                                         ; $4874: $A0
    ld [$10F0], sp                                ; $4875: $08 $F0 $10
    ld sp, hl                                     ; $4878: $F9
    ld d, b                                       ; $4879: $50
    ret nc                                        ; $487A: $D0

jr_030_487B:
    sbc a                                         ; $487B: $9F
    jr z, @-$3E                                   ; $487C: $28 $C0

    add b                                         ; $487E: $80
    xor c                                         ; $487F: $A9

Jump_030_4880:
    add hl, bc                                    ; $4880: $09
    reti                                          ; $4881: $D9


    dec bc                                        ; $4882: $0B
    nop                                           ; $4883: $00
    cp $E7                                        ; $4884: $FE $E7
    inc b                                         ; $4886: $04
    ret z                                         ; $4887: $C8

    ld [$10B8], sp                                ; $4888: $08 $B8 $10
    db $DB                                        ; $488B: $DB
    ldh a, [$FFA4]                                ; $488C: $F0 $A4
    ld [$D0F8], sp                                ; $488E: $08 $F8 $D0
    db $FC                                        ; $4891: $FC
    ld e, b                                       ; $4892: $58
    ld [$E848], sp                                ; $4893: $08 $48 $E8
    ld a, [$095A]                                 ; $4896: $FA $5A $09
    nop                                           ; $4899: $00
    rst RST_30                                    ; $489A: $F7
    ld [bc], a                                    ; $489B: $02
    jr nc, jr_030_48A6                            ; $489C: $30 $08

    ld a, a                                       ; $489E: $7F
    sub e                                         ; $489F: $93
    db $10                                        ; $48A0: $10
    ccf                                           ; $48A1: $3F
    rra                                           ; $48A2: $1F
    ld [$3810], sp                                ; $48A3: $08 $10 $38

jr_030_48A6:
    ld a, [bc]                                    ; $48A6: $0A
    add hl, hl                                    ; $48A7: $29
    push af                                       ; $48A8: $F5
    ld c, e                                       ; $48A9: $4B
    nop                                           ; $48AA: $00
    rst RST_10                                    ; $48AB: $D7
    inc b                                         ; $48AC: $04
    ld b, d                                       ; $48AD: $42
    ld [$10E7], sp                                ; $48AE: $08 $E7 $10
    inc h                                         ; $48B1: $24
    di                                            ; $48B2: $F3
    pop hl                                        ; $48B3: $E1
    nop                                           ; $48B4: $00
    ld b, b                                       ; $48B5: $40
    ldh [$FF08], a                                ; $48B6: $E0 $08
    ret nz                                        ; $48B8: $C0

    add b                                         ; $48B9: $80
    and l                                         ; $48BA: $A5
    add hl, bc                                    ; $48BB: $09
    db $E3                                        ; $48BC: $E3
    db $10                                        ; $48BD: $10
    rst RST_00                                    ; $48BE: $C7
    inc bc                                        ; $48BF: $03
    nop                                           ; $48C0: $00
    ld bc, $F600                                  ; $48C1: $01 $00 $F6
    rst RST_20                                    ; $48C4: $E7
    inc b                                         ; $48C5: $04
    and b                                         ; $48C6: $A0
    ld [$10C2], sp                                ; $48C7: $08 $C2 $10
    xor b                                         ; $48CA: $A8
    add d                                         ; $48CB: $82
    nop                                           ; $48CC: $00
    add a                                         ; $48CD: $87
    ld [bc], a                                    ; $48CE: $02
    ld c, $04                                     ; $48CF: $0E $04
    inc a                                         ; $48D1: $3C
    ld [$30F8], sp                                ; $48D2: $08 $F8 $30
    ld a, $F0                                     ; $48D5: $3E $F0
    ret nz                                        ; $48D7: $C0

    nop                                           ; $48D8: $00
    rst RST_00                                    ; $48D9: $C7
    rlca                                          ; $48DA: $07
    rlca                                          ; $48DB: $07
    nop                                           ; $48DC: $00
    ld b, b                                       ; $48DD: $40
    pop hl                                        ; $48DE: $E1
    ld [$10E8], sp                                ; $48DF: $08 $E8 $10
    ld a, b                                       ; $48E2: $78
    jr nc, jr_030_491D                            ; $48E3: $30 $38

    stop                                          ; $48E5: $10 $00
    sub $87                                       ; $48E7: $D6 $87
    ld [bc], a                                    ; $48E9: $02
    ld bc, $0308                                  ; $48EA: $01 $08 $03
    db $10                                        ; $48ED: $10
    add hl, de                                    ; $48EE: $19
    rlca                                          ; $48EF: $07
    or a                                          ; $48F0: $B7
    ld [$100F], sp                                ; $48F1: $08 $0F $10
    nop                                           ; $48F4: $00
    ld [bc], a                                    ; $48F5: $02
    nop                                           ; $48F6: $00
    adc [hl]                                      ; $48F7: $8E
    rlca                                          ; $48F8: $07
    push hl                                       ; $48F9: $E5
    ld a, c                                       ; $48FA: $79
    xor b                                         ; $48FB: $A8
    db $10                                        ; $48FC: $10
    rst RST_38                                    ; $48FD: $FF
    add hl, bc                                    ; $48FE: $09
    ld [$00F4], sp                                ; $48FF: $08 $F4 $00
    sbc h                                         ; $4902: $9C

jr_030_4903:
    jr c, jr_030_4903                             ; $4903: $38 $FE

    inc b                                         ; $4905: $04
    jr z, @+$12                                   ; $4906: $28 $10

    nop                                           ; $4908: $00
    jr nz, jr_030_497B                            ; $4909: $20 $70

    add a                                         ; $490B: $87
    ld a, [bc]                                    ; $490C: $0A
    ldh [rLCDC], a                                ; $490D: $E0 $40
    ret nz                                        ; $490F: $C0

    add b                                         ; $4910: $80
    nop                                           ; $4911: $00
    cp $03                                        ; $4912: $FE $03
    ld c, c                                       ; $4914: $49
    sbc a                                         ; $4915: $9F
    ld [$1F3F], sp                                ; $4916: $08 $3F $1F
    nop                                           ; $4919: $00
    ld [$2809], sp                                ; $491A: $08 $09 $28

jr_030_491D:
    jr nz, jr_030_4922                            ; $491D: $20 $03

    ld bc, $0709                                  ; $491F: $01 $09 $07

jr_030_4922:
    ld [bc], a                                    ; $4922: $02
    ld c, $04                                     ; $4923: $0E $04
    inc a                                         ; $4925: $3C
    sbc l                                         ; $4926: $9D
    ld e, b                                       ; $4927: $58
    ld a, b                                       ; $4928: $78
    jr nc, jr_030_492B                            ; $4929: $30 $00

jr_030_492B:
    rst RST_20                                    ; $492B: $E7
    nop                                           ; $492C: $00
    add b                                         ; $492D: $80
    ld [$C14F], sp                                ; $492E: $08 $4F $C1
    db $10                                        ; $4931: $10
    ldh [$FFC0], a                                ; $4932: $E0 $C0
    nop                                           ; $4934: $00
    jr jr_030_4940                                ; $4935: $18 $09

    ld c, c                                       ; $4937: $49
    db $E3                                        ; $4938: $E3
    add hl, bc                                    ; $4939: $09
    add hl, hl                                    ; $493A: $29
    ld e, b                                       ; $493B: $58
    ld b, b                                       ; $493C: $40
    ld [hl], b                                    ; $493D: $70
    jr nz, @+$0B                                  ; $493E: $20 $09

jr_030_4940:
    nop                                           ; $4940: $00
    db $FD                                        ; $4941: $FD
    rst RST_30                                    ; $4942: $F7
    adc c                                         ; $4943: $89
    ld [$99E9], sp                                ; $4944: $08 $E9 $99
    add hl, bc                                    ; $4947: $09
    ldh a, [$FF08]                                ; $4948: $F0 $08
    ld c, c                                       ; $494A: $49
    ld hl, sp-$50                                 ; $494B: $F8 $B0
    db $FC                                        ; $494D: $FC
    ld e, b                                       ; $494E: $58
    ld [$E848], sp                                ; $494F: $08 $48 $E8
    ld e, d                                       ; $4952: $5A
    push af                                       ; $4953: $F5
    add hl, bc                                    ; $4954: $09
    nop                                           ; $4955: $00
    rst RST_30                                    ; $4956: $F7
    ld [bc], a                                    ; $4957: $02
    jr nc, jr_030_4962                            ; $4958: $30 $08

    ld a, a                                       ; $495A: $7F
    db $10                                        ; $495B: $10
    dec h                                         ; $495C: $25
    ccf                                           ; $495D: $3F
    rra                                           ; $495E: $1F
    ld [$3810], sp                                ; $495F: $08 $10 $38

jr_030_4962:
    ld [$0839], sp                                ; $4962: $08 $39 $08
    ld a, [$4B29]                                 ; $4965: $FA $29 $4B
    nop                                           ; $4968: $00
    rst RST_10                                    ; $4969: $D7
    inc b                                         ; $496A: $04
    ld b, d                                       ; $496B: $42
    ld [$92E7], sp                                ; $496C: $08 $E7 $92
    db $10                                        ; $496F: $10
    di                                            ; $4970: $F3
    pop hl                                        ; $4971: $E1
    nop                                           ; $4972: $00
    ld b, b                                       ; $4973: $40
    ldh [$FF08], a                                ; $4974: $E0 $08
    ret nz                                        ; $4976: $C0

    ld d, d                                       ; $4977: $52
    add b                                         ; $4978: $80
    add hl, bc                                    ; $4979: $09
    db $E3                                        ; $497A: $E3

jr_030_497B:
    db $10                                        ; $497B: $10
    rst RST_00                                    ; $497C: $C7
    inc bc                                        ; $497D: $03
    nop                                           ; $497E: $00
    ld bc, $00FB                                  ; $497F: $01 $FB $00
    rst RST_20                                    ; $4982: $E7
    inc b                                         ; $4983: $04
    and b                                         ; $4984: $A0

jr_030_4985:
    ld [$10C2], sp                                ; $4985: $08 $C2 $10
    xor b                                         ; $4988: $A8
    nop                                           ; $4989: $00
    add d                                         ; $498A: $82
    add a                                         ; $498B: $87
    ld [bc], a                                    ; $498C: $02
    ld c, $04                                     ; $498D: $0E $04
    inc a                                         ; $498F: $3C
    ld [$1EF8], sp                                ; $4990: $08 $F8 $1E
    jr nc, jr_030_4985                            ; $4993: $30 $F0

    ret nz                                        ; $4995: $C0

    nop                                           ; $4996: $00
    rst RST_00                                    ; $4997: $C7
    rlca                                          ; $4998: $07
    ld [bc], a                                    ; $4999: $02
    ld bc, $08BE                                  ; $499A: $01 $BE $08

jr_030_499D:
    inc bc                                        ; $499D: $03
    db $10                                        ; $499E: $10
    dec bc                                        ; $499F: $0B

jr_030_49A0:
    add hl, sp                                    ; $49A0: $39
    rlca                                          ; $49A1: $07
    rlca                                          ; $49A2: $07
    ld a, $A0                                     ; $49A3: $3E $A0
    ld [$107F], sp                                ; $49A5: $08 $7F $10
    rst RST_38                                    ; $49A8: $FF
    ld c, c                                       ; $49A9: $49
    db $DD                                        ; $49AA: $DD
    adc b                                         ; $49AB: $88
    sbc l                                         ; $49AC: $9D
    ld b, b                                       ; $49AD: $40
    ld [$B909], sp                                ; $49AE: $08 $09 $B9
    db $10                                        ; $49B1: $10
    ld sp, hl                                     ; $49B2: $F9
    sub b                                         ; $49B3: $90
    rst RST_30                                    ; $49B4: $F7
    ld h, c                                       ; $49B5: $61
    ld a, [hl-]                                   ; $49B6: $3A
    ld l, a                                       ; $49B7: $6F
    ld b, $00                                     ; $49B8: $06 $00
    rst RST_20                                    ; $49BA: $E7
    nop                                           ; $49BB: $00
    ld bc, $0308                                  ; $49BC: $01 $08 $03
    add b                                         ; $49BF: $80
    db $10                                        ; $49C0: $10
    rlca                                          ; $49C1: $07
    ld [bc], a                                    ; $49C2: $02
    sbc a                                         ; $49C3: $9F
    inc b                                         ; $49C4: $04
    rst RST_38                                    ; $49C5: $FF
    sbc e                                         ; $49C6: $9B
    db $DB                                        ; $49C7: $DB
    dec h                                         ; $49C8: $25
    add b                                         ; $49C9: $80
    rst RST_00                                    ; $49CA: $C7
    ld [$87CF], sp                                ; $49CB: $08 $CF $87
    add hl, de                                    ; $49CE: $19
    adc a                                         ; $49CF: $8F
    adc b                                         ; $49D0: $88
    dec a                                         ; $49D1: $3D
    rra                                           ; $49D2: $1F
    rrca                                          ; $49D3: $0F
    nop                                           ; $49D4: $00
    xor $60                                       ; $49D5: $EE $60
    ld [$10C0], sp                                ; $49D7: $08 $C0 $10
    ld [bc], a                                    ; $49DA: $02
    ldh [rLCDC], a                                ; $49DB: $E0 $40

jr_030_49DD:
    ld [hl], c                                    ; $49DD: $71
    jr nz, jr_030_49DD                            ; $49DE: $20 $FD

    db $10                                        ; $49E0: $10
    ld hl, sp-$14                                 ; $49E1: $F8 $EC

jr_030_49E3:
    ld d, e                                       ; $49E3: $53
    db $ED                                        ; $49E4: $ED
    ld c, b                                       ; $49E5: $48
    pop af                                        ; $49E6: $F1
    ld [$F0F9], sp                                ; $49E7: $08 $F9 $F0
    ld a, [de]                                    ; $49EA: $1A
    ld [$58F7], sp                                ; $49EB: $08 $F7 $58
    stop                                          ; $49EE: $10 $00
    cp $7F                                        ; $49F0: $FE $7F
    ld [$1058], sp                                ; $49F2: $08 $58 $10
    cp a                                          ; $49F5: $BF
    ld [$0841], sp                                ; $49F6: $08 $41 $08
    ld bc, $1F99                                  ; $49F9: $01 $99 $1F
    ld bc, $7578                                  ; $49FC: $01 $78 $75
    pop bc                                        ; $49FF: $C1
    jr z, jr_030_4A02                             ; $4A00: $28 $00

jr_030_4A02:
    cp $06                                        ; $4A02: $FE $06
    ld [$100F], sp                                ; $4A04: $08 $0F $10
    jr z, jr_030_49A0                             ; $4A07: $28 $97

    ld [bc], a                                    ; $4A09: $02
    adc b                                         ; $4A0A: $88
    sub e                                         ; $4A0B: $93
    ld [$DE9E], sp                                ; $4A0C: $08 $9E $DE
    add h                                         ; $4A0F: $84
    ld h, b                                       ; $4A10: $60
    adc $0A                                       ; $4A11: $CE $0A
    jr z, jr_030_499D                             ; $4A13: $28 $88

    rst RST_18                                    ; $4A15: $DF
    adc d                                         ; $4A16: $8A
    ei                                            ; $4A17: $FB
    ld de, $08B5                                  ; $4A18: $11 $B5 $08
    pop de                                        ; $4A1B: $D1
    nop                                           ; $4A1C: $00
    cp $28                                        ; $4A1D: $FE $28
    ld [$107C], sp                                ; $4A1F: $08 $7C $10
    nop                                           ; $4A22: $00
    cp [hl]                                       ; $4A23: $BE
    inc d                                         ; $4A24: $14
    call nc, $F980                                ; $4A25: $D4 $80 $F9
    ld d, b                                       ; $4A28: $50
    db $FC                                        ; $4A29: $FC
    ld c, b                                       ; $4A2A: $48
    ld a, [bc]                                    ; $4A2B: $0A
    xor $44                                       ; $4A2C: $EE $44
    cp $4C                                        ; $4A2E: $FE $4C
    add hl, de                                    ; $4A30: $19
    push bc                                       ; $4A31: $C5
    ld e, b                                       ; $4A32: $58
    jp $8175                                      ; $4A33: $C3 $75 $81


    nop                                           ; $4A36: $00
    xor $01                                       ; $4A37: $EE $01
    ld [$1C08], sp                                ; $4A39: $08 $08 $1C
    db $10                                        ; $4A3C: $10
    sub h                                         ; $4A3D: $94
    add hl, bc                                    ; $4A3E: $09
    rst RST_38                                    ; $4A3F: $FF
    inc c                                         ; $4A40: $0C
    ld [$08EC], sp                                ; $4A41: $08 $EC $08
    dec hl                                        ; $4A44: $2B
    ld a, a                                       ; $4A45: $7F
    ld d, c                                       ; $4A46: $51
    ld a, [hl+]                                   ; $4A47: $2A
    jr jr_030_4A93                                ; $4A48: $18 $49

    add hl, bc                                    ; $4A4A: $09
    db $DD                                        ; $4A4B: $DD
    adc b                                         ; $4A4C: $88
    sbc h                                         ; $4A4D: $9C
    ld a, b                                       ; $4A4E: $78
    dec [hl]                                      ; $4A4F: $35
    inc a                                         ; $4A50: $3C
    jr jr_030_4A53                                ; $4A51: $18 $00

jr_030_4A53:
    cp $07                                        ; $4A53: $FE $07
    ld [$100F], sp                                ; $4A55: $08 $0F $10
    add hl, bc                                    ; $4A58: $09
    rst RST_08                                    ; $4A59: $CF
    inc b                                         ; $4A5A: $04
    rst RST_28                                    ; $4A5B: $EF
    rst RST_00                                    ; $4A5C: $C7
    jr jr_030_49E3                                ; $4A5D: $18 $84

    adc a                                         ; $4A5F: $8F
    jr c, jr_030_4ABA                             ; $4A60: $38 $58

    rra                                           ; $4A62: $1F
    ld e, b                                       ; $4A63: $58
    cp a                                          ; $4A64: $BF
    db $10                                        ; $4A65: $10
    ld [$FF11], sp                                ; $4A66: $08 $11 $FF
    sbc a                                         ; $4A69: $9F
    sbc l                                         ; $4A6A: $9D
    ld [$7F51], sp                                ; $4A6B: $08 $51 $7F
    jr c, jr_030_4AC9                             ; $4A6E: $38 $59

    dec b                                         ; $4A70: $05
    ldh a, [$FF08]                                ; $4A71: $F0 $08
    ld l, e                                       ; $4A73: $6B
    ld hl, sp+$10                                 ; $4A74: $F8 $10
    ld [$1B10], sp                                ; $4A76: $08 $10 $1B
    ld sp, hl                                     ; $4A79: $F9
    jr @-$46                                      ; $4A7A: $18 $B8

    ld d, h                                       ; $4A7C: $54
    ld bc, $7D08                                  ; $4A7D: $01 $08 $7D
    ld [$0845], sp                                ; $4A80: $08 $45 $08
    ld a, h                                       ; $4A83: $7C
    cp $7D                                        ; $4A84: $FE $7D
    ld b, h                                       ; $4A86: $44
    ld [$0018], sp                                ; $4A87: $08 $18 $00
    cp $03                                        ; $4A8A: $FE $03
    ld a, $08                                     ; $4A8C: $3E $08
    ld h, b                                       ; $4A8E: $60

jr_030_4A8F:
    ld a, a                                       ; $4A8F: $7F
    db $10                                        ; $4A90: $10
    xor b                                         ; $4A91: $A8
    ld c, c                                       ; $4A92: $49

jr_030_4A93:
    db $DD                                        ; $4A93: $DD
    adc b                                         ; $4A94: $88
    sbc l                                         ; $4A95: $9D
    ld [$0980], sp                                ; $4A96: $08 $80 $09
    cp c                                          ; $4A99: $B9
    db $10                                        ; $4A9A: $10
    ld sp, hl                                     ; $4A9B: $F9
    sub b                                         ; $4A9C: $90
    rst RST_30                                    ; $4A9D: $F7
    ld h, c                                       ; $4A9E: $61
    ld l, a                                       ; $4A9F: $6F
    ld l, d                                       ; $4AA0: $6A
    ld b, $00                                     ; $4AA1: $06 $00
    sbc $04                                       ; $4AA3: $DE $04
    ld [$100E], sp                                ; $4AA5: $08 $0E $10
    rra                                           ; $4AA8: $1F
    add hl, hl                                    ; $4AA9: $29
    ld [bc], a                                    ; $4AAA: $02
    ccf                                           ; $4AAB: $3F
    db $10                                        ; $4AAC: $10
    sbc a                                         ; $4AAD: $9F
    jr c, jr_030_4A8F                             ; $4AAE: $38 $DF

    adc a                                         ; $4AB0: $8F
    ld [$896B], sp                                ; $4AB1: $08 $6B $89
    dec e                                         ; $4AB4: $1D
    ld e, b                                       ; $4AB5: $58
    add hl, bc                                    ; $4AB6: $09
    ld [hl], b                                    ; $4AB7: $70
    dec bc                                        ; $4AB8: $0B
    nop                                           ; $4AB9: $00

jr_030_4ABA:
    cp $52                                        ; $4ABA: $FE $52
    db $10                                        ; $4ABC: $10
    ld [$103D], sp                                ; $4ABD: $08 $3D $10
    rst RST_38                                    ; $4AC0: $FF
    dec h                                         ; $4AC1: $25
    ld [$6AFC], sp                                ; $4AC2: $08 $FC $6A
    db $FD                                        ; $4AC5: $FD
    jr c, @+$1A                                   ; $4AC6: $38 $18

    ld c, l                                       ; $4AC8: $4D

jr_030_4AC9:
    ld [$0D49], sp                                ; $4AC9: $08 $49 $0D
    db $DD                                        ; $4ACC: $DD
    dec e                                         ; $4ACD: $1D
    ld [$18BD], sp                                ; $4ACE: $08 $BD $18
    nop                                           ; $4AD1: $00
    cp $03                                        ; $4AD2: $FE $03
    add a                                         ; $4AD4: $87
    ld [$DF6D], sp                                ; $4AD5: $08 $6D $DF
    db $10                                        ; $4AD8: $10
    xor b                                         ; $4AD9: $A8
    sbc b                                         ; $4ADA: $98
    nop                                           ; $4ADB: $00
    jr z, @-$7E                                   ; $4ADC: $28 $80

    ld [$D049], sp                                ; $4ADE: $08 $49 $D0
    ld [$50F8], sp                                ; $4AE1: $08 $F8 $50
    ld e, b                                       ; $4AE4: $58
    adc b                                         ; $4AE5: $88
    rst RST_08                                    ; $4AE6: $CF
    ld l, b                                       ; $4AE7: $68
    ld [hl], l                                    ; $4AE8: $75
    rst RST_00                                    ; $4AE9: $C7
    ld d, b                                       ; $4AEA: $50
    ld e, c                                       ; $4AEB: $59
    dec b                                         ; $4AEC: $05
    db $10                                        ; $4AED: $10
    ld [$1039], sp                                ; $4AEE: $08 $39 $10
    ld bc, $089D                                  ; $4AF1: $01 $9D $08
    res 0, c                                      ; $4AF4: $CB $81
    sbc a                                         ; $4AF6: $9F
    ld a, [bc]                                    ; $4AF7: $0A
    rra                                           ; $4AF8: $1F
    jr z, @+$28                                   ; $4AF9: $28 $26

jr_030_4AFB:
    dec sp                                        ; $4AFB: $3B
    ld de, $0118                                  ; $4AFC: $11 $18 $01
    ccf                                           ; $4AFF: $3F
    db $10                                        ; $4B00: $10
    ld c, b                                       ; $4B01: $48
    ld [bc], a                                    ; $4B02: $02
    jp c, $69F8                                   ; $4B03: $DA $F8 $69

    ld c, $00                                     ; $4B06: $0E $00
    cp $80                                        ; $4B08: $FE $80
    ld [$B0FD], sp                                ; $4B0A: $08 $FD $B0
    db $10                                        ; $4B0D: $10
    rst RST_38                                    ; $4B0E: $FF
    db $10                                        ; $4B0F: $10
    ld [$7424], sp                                ; $4B10: $08 $24 $74

jr_030_4B13:
    jr nz, @-$02                                  ; $4B13: $20 $FC

    rra                                           ; $4B15: $1F
    ld d, b                                       ; $4B16: $50
    rst RST_18                                    ; $4B17: $DF
    adc h                                         ; $4B18: $8C
    jr c, jr_030_4B13                             ; $4B19: $38 $F8

    ld [$0030], sp                                ; $4B1B: $08 $30 $00
    sub [hl]                                      ; $4B1E: $96
    ld c, b                                       ; $4B1F: $48
    ld hl, sp-$20                                 ; $4B20: $F8 $E0
    jr jr_030_4B3C                                ; $4B22: $18 $18

    nop                                           ; $4B24: $00
    cp $30                                        ; $4B25: $FE $30
    or a                                          ; $4B27: $B7
    ld [$107F], sp                                ; $4B28: $08 $7F $10
    sbc b                                         ; $4B2B: $98
    rla                                           ; $4B2C: $17
    ld [$0090], sp                                ; $4B2D: $08 $90 $00
    sub h                                         ; $4B30: $94

Jump_030_4B31:
    xor b                                         ; $4B31: $A8
    db $FD                                        ; $4B32: $FD
    ld a, b                                       ; $4B33: $78
    jr z, jr_030_4AFB                             ; $4B34: $28 $C5

    ld [$7E1E], sp                                ; $4B36: $08 $1E $7E
    dec e                                         ; $4B39: $1D
    inc h                                         ; $4B3A: $24
    db $E4                                        ; $4B3B: $E4

jr_030_4B3C:
    ld b, b                                       ; $4B3C: $40
    jr z, @+$0A                                   ; $4B3D: $28 $08

    sbc b                                         ; $4B3F: $98
    ccf                                           ; $4B40: $3F
    nop                                           ; $4B41: $00
    rst RST_10                                    ; $4B42: $D7
    cp $03                                        ; $4B43: $FE $03
    add b                                         ; $4B45: $80
    ld l, $C0                                     ; $4B46: $2E $C0
    db $10                                        ; $4B48: $10
    ld c, l                                       ; $4B49: $4D
    adc a                                         ; $4B4A: $8F
    xor c                                         ; $4B4B: $A9
    inc bc                                        ; $4B4C: $03
    inc bc                                        ; $4B4D: $03
    ld [$107F], sp                                ; $4B4E: $08 $7F $10
    rst RST_38                                    ; $4B51: $FF
    ld a, d                                       ; $4B52: $7A
    jr jr_030_4BAA                                ; $4B53: $18 $55

    inc de                                        ; $4B55: $13
    ld [$2812], sp                                ; $4B56: $08 $12 $28
    ld a, e                                       ; $4B59: $7B
    add hl, de                                    ; $4B5A: $19
    ccf                                           ; $4B5B: $3F
    add hl, sp                                    ; $4B5C: $39
    ld de, $FB19                                  ; $4B5D: $11 $19 $FB
    ld [hl], c                                    ; $4B60: $71
    jr jr_030_4B65                                ; $4B61: $18 $02

    ld e, $0C                                     ; $4B63: $1E $0C

jr_030_4B65:
    nop                                           ; $4B65: $00
    xor c                                         ; $4B66: $A9
    cp $E0                                        ; $4B67: $FE $E0
    ld [$10F3], sp                                ; $4B69: $08 $F3 $10
    rst RST_30                                    ; $4B6C: $F7
    inc hl                                        ; $4B6D: $23
    jr @+$56                                      ; $4B6E: $18 $54

    pop hl                                        ; $4B70: $E1
    ld [$1E21], sp                                ; $4B71: $08 $21 $1E
    ld b, c                                       ; $4B74: $41
    ld hl, sp+$51                                 ; $4B75: $F8 $51
    ld sp, hl                                     ; $4B77: $F9
    dec e                                         ; $4B78: $1D
    ld d, b                                       ; $4B79: $50
    ld a, b                                       ; $4B7A: $78
    jr nc, jr_030_4B7D                            ; $4B7B: $30 $00

jr_030_4B7D:
    cp $03                                        ; $4B7D: $FE $03
    add b                                         ; $4B7F: $80
    ld [$C074], sp                                ; $4B80: $08 $74 $C0
    db $10                                        ; $4B83: $10
    add hl, de                                    ; $4B84: $19
    dec bc                                        ; $4B85: $0B
    add d                                         ; $4B86: $82
    ld [$0287], sp                                ; $4B87: $08 $87 $02
    inc bc                                        ; $4B8A: $03
    adc [hl]                                      ; $4B8B: $8E
    inc b                                         ; $4B8C: $04
    db $FC                                        ; $4B8D: $FC
    adc b                                         ; $4B8E: $88
    ld hl, sp+$70                                 ; $4B8F: $F8 $70
    nop                                           ; $4B91: $00
    call z, Call_030_4118                         ; $4B92: $CC $18 $41
    ld d, h                                       ; $4B95: $54
    nop                                           ; $4B96: $00
    nop                                           ; $4B97: $00
    jr jr_030_4BA2                                ; $4B98: $18 $08

    inc a                                         ; $4B9A: $3C
    db $10                                        ; $4B9B: $10
    rra                                           ; $4B9C: $1F
    ld [$7F00], sp                                ; $4B9D: $08 $00 $7F
    dec bc                                        ; $4BA0: $0B
    rst RST_38                                    ; $4BA1: $FF

jr_030_4BA2:
    ld a, h                                       ; $4BA2: $7C
    ld a, l                                       ; $4BA3: $7D
    db $10                                        ; $4BA4: $10
    dec sp                                        ; $4BA5: $3B
    ld de, $3F08                                  ; $4BA6: $11 $08 $3F
    ld [de], a                                    ; $4BA9: $12

jr_030_4BAA:
    ld [hl], d                                    ; $4BAA: $72
    jr nz, jr_030_4BB6                            ; $4BAB: $20 $09

    rst RST_20                                    ; $4BAD: $E7
    ld b, d                                       ; $4BAE: $42
    db $E3                                        ; $4BAF: $E3
    ld [hl], l                                    ; $4BB0: $75
    ld b, c                                       ; $4BB1: $41
    nop                                           ; $4BB2: $00
    pop de                                        ; $4BB3: $D1
    ld b, $07                                     ; $4BB4: $06 $07

jr_030_4BB6:
    ld [$100F], sp                                ; $4BB6: $08 $0F $10
    inc [hl]                                      ; $4BB9: $34
    adc a                                         ; $4BBA: $8F
    dec b                                         ; $4BBB: $05
    jr jr_030_4BC6                                ; $4BBC: $18 $08

    rst RST_28                                    ; $4BBE: $EF
    jr z, @+$01                                   ; $4BBF: $28 $FF

    push hl                                       ; $4BC1: $E5
    ld sp, hl                                     ; $4BC2: $F9
    jr @+$3C                                      ; $4BC3: $18 $3A

    ld l, c                                       ; $4BC5: $69

jr_030_4BC6:
    ld hl, sp-$78                                 ; $4BC6: $F8 $88
    ldh a, [$FFE0]                                ; $4BC8: $F0 $E0
    nop                                           ; $4BCA: $00
    xor a                                         ; $4BCB: $AF
    xor $08                                       ; $4BCC: $EE $08
    ld [$103E], sp                                ; $4BCE: $08 $3E $10
    cp b                                          ; $4BD1: $B8
    db $10                                        ; $4BD2: $10
    ld [$19AC], sp                                ; $4BD3: $08 $AC $19
    ld a, a                                       ; $4BD6: $7F
    ld [$0A02], sp                                ; $4BD7: $08 $02 $0A
    add hl, hl                                    ; $4BDA: $29
    ld [de], a                                    ; $4BDB: $12
    sbc a                                         ; $4BDC: $9F
    scf                                           ; $4BDD: $37
    ld a, [bc]                                    ; $4BDE: $0A

jr_030_4BDF:
    rrca                                          ; $4BDF: $0F
    jr c, @+$0A                                   ; $4BE0: $38 $08

    ld b, $00                                     ; $4BE2: $06 $00
    cp $01                                        ; $4BE4: $FE $01
    ld d, d                                       ; $4BE6: $52
    ld b, b                                       ; $4BE7: $40
    ld [$10E1], sp                                ; $4BE8: $08 $E1 $10
    ld [hl], a                                    ; $4BEB: $77
    ld hl, $26B8                                  ; $4BEC: $21 $B8 $26
    ld d, h                                       ; $4BEF: $54
    and $28                                       ; $4BF0: $E6 $28
    ldh [$FF08], a                                ; $4BF2: $E0 $08
    db $F4                                        ; $4BF4: $F4
    ld [$54FE], sp                                ; $4BF5: $08 $FE $54
    inc de                                        ; $4BF8: $13
    rst RST_30                                    ; $4BF9: $F7
    ld h, d                                       ; $4BFA: $62
    ld [hl], e                                    ; $4BFB: $73
    ld l, b                                       ; $4BFC: $68
    ld [hl], c                                    ; $4BFD: $71
    jr nz, jr_030_4C00                            ; $4BFE: $20 $00

jr_030_4C00:
    rst RST_30                                    ; $4C00: $F7
    xor a                                         ; $4C01: $AF
    nop                                           ; $4C02: $00
    rlca                                          ; $4C03: $07
    ld [$10EF], sp                                ; $4C04: $08 $EF $10
    sbc b                                         ; $4C07: $98
    ret nc                                        ; $4C08: $D0

    add hl, de                                    ; $4C09: $19
    or c                                          ; $4C0A: $B1
    add hl, sp                                    ; $4C0B: $39
    rrca                                          ; $4C0C: $0F
    inc e                                         ; $4C0D: $1C
    ld c, b                                       ; $4C0E: $48
    dec b                                         ; $4C0F: $05
    rst RST_38                                    ; $4C10: $FF
    push hl                                       ; $4C11: $E5
    ld l, e                                       ; $4C12: $6B
    xor h                                         ; $4C13: $AC
    dec b                                         ; $4C14: $05
    add h                                         ; $4C15: $84
    ld [$10DF], sp                                ; $4C16: $08 $DF $10
    ld a, b                                       ; $4C19: $78
    ld d, l                                       ; $4C1A: $55
    ld a, a                                       ; $4C1B: $7F
    ld e, l                                       ; $4C1C: $5D
    dec d                                         ; $4C1D: $15
    jr z, @+$06                                   ; $4C1E: $28 $04

    jr z, @+$12                                   ; $4C20: $28 $10

    ld [$0844], sp                                ; $4C22: $08 $44 $08
    ld l, e                                       ; $4C25: $6B
    ld c, [hl]                                    ; $4C26: $4E
    ld e, c                                       ; $4C27: $59
    ld a, [hl+]                                   ; $4C28: $2A
    ld b, b                                       ; $4C29: $40
    ld [$00BF], sp                                ; $4C2A: $08 $BF $00
    cp $A0                                        ; $4C2D: $FE $A0
    inc bc                                        ; $4C2F: $03
    adc a                                         ; $4C30: $8F
    ld [$0F9F], sp                                ; $4C31: $08 $9F $0F
    ccf                                           ; $4C34: $3F
    ld [de], a                                    ; $4C35: $12
    rst RST_30                                    ; $4C36: $F7
    inc d                                         ; $4C37: $14
    ld [hl+], a                                   ; $4C38: $22
    rst RST_20                                    ; $4C39: $E7
    ld b, d                                       ; $4C3A: $42
    add hl, bc                                    ; $4C3B: $09
    xor $E8                                       ; $4C3C: $EE $E8
    ld a, [hl]                                    ; $4C3E: $7E
    inc h                                         ; $4C3F: $24
    ld c, $3D                                     ; $4C40: $0E $3D
    jr jr_030_4BDF                                ; $4C42: $18 $9B

    ld bc, $E700                                  ; $4C44: $01 $00 $E7
    nop                                           ; $4C47: $00
    rlca                                          ; $4C48: $07
    ret z                                         ; $4C49: $C8

    ld sp, hl                                     ; $4C4A: $F9
    db $10                                        ; $4C4B: $10
    rst RST_00                                    ; $4C4C: $C7
    add b                                         ; $4C4D: $80
    ret z                                         ; $4C4E: $C8

    ld b, e                                       ; $4C4F: $43
    ld [hl], e                                    ; $4C50: $73
    jr nz, @+$2E                                  ; $4C51: $20 $2C

    ld [hl], a                                    ; $4C53: $77
    inc hl                                        ; $4C54: $23
    ld [$1B22], sp                                ; $4C55: $08 $22 $1B
    ld e, b                                       ; $4C58: $58
    ld b, d                                       ; $4C59: $42
    adc $7B                                       ; $4C5A: $CE $7B
    add h                                         ; $4C5C: $84
    nop                                           ; $4C5D: $00
    xor $A0                                       ; $4C5E: $EE $A0
    ld [$10FF], sp                                ; $4C60: $08 $FF $10
    ld [$01DF], sp                                ; $4C63: $08 $DF $01
    add hl, de                                    ; $4C66: $19
    cp $00                                        ; $4C67: $FE $00
    ld c, c                                       ; $4C69: $49
    db $10                                        ; $4C6A: $10
    ld [$EAD8], sp                                ; $4C6B: $08 $D8 $EA
    dec sp                                        ; $4C6E: $3B
    rlca                                          ; $4C6F: $07
    inc bc                                        ; $4C70: $03
    jr @+$0A                                      ; $4C71: $18 $08

    dec a                                         ; $4C73: $3D
    db $10                                        ; $4C74: $10
    sbc $50                                       ; $4C75: $DE $50
    ld [$4EA8], sp                                ; $4C77: $08 $A8 $4E
    ld [$7B79], sp                                ; $4C7A: $08 $79 $7B
    ld de, $C03B                                  ; $4C7D: $11 $3B $C0
    ld a, [bc]                                    ; $4C80: $0A
    jr z, jr_030_4CA4                             ; $4C81: $28 $21

    ld a, a                                       ; $4C83: $7F
    ld a, [hl+]                                   ; $4C84: $2A
    rst RST_28                                    ; $4C85: $EF
    ld b, [hl]                                    ; $4C86: $46
    xor $6B                                       ; $4C87: $EE $6B
    ld b, h                                       ; $4C89: $44
    nop                                           ; $4C8A: $00
    cp $A2                                        ; $4C8B: $FE $A2
    ld [$10F7], sp                                ; $4C8D: $08 $F7 $10
    ret c                                         ; $4C90: $D8

    inc d                                         ; $4C91: $14
    ld d, l                                       ; $4C92: $55
    ld d, a                                       ; $4C93: $57
    ld [bc], a                                    ; $4C94: $02
    sbc b                                         ; $4C95: $98
    ld b, l                                       ; $4C96: $45
    jr c, @+$24                                   ; $4C97: $38 $22

    cp a                                          ; $4C99: $BF
    ld d, c                                       ; $4C9A: $51
    inc d                                         ; $4C9B: $14
    ld c, b                                       ; $4C9C: $48
    inc sp                                        ; $4C9D: $33
    jr @+$12                                      ; $4C9E: $18 $10

    rra                                           ; $4CA0: $1F
    rlca                                          ; $4CA1: $07
    nop                                           ; $4CA2: $00
    dec sp                                        ; $4CA3: $3B

jr_030_4CA4:
    ld bc, $0803                                  ; $4CA4: $01 $03 $08
    nop                                           ; $4CA7: $00
    cp $77                                        ; $4CA8: $FE $77
    ld [$EE98], sp                                ; $4CAA: $08 $98 $EE
    db $10                                        ; $4CAD: $10
    ld sp, hl                                     ; $4CAE: $F9
    ld [$0876], sp                                ; $4CAF: $08 $76 $08
    ld hl, sp+$19                                 ; $4CB2: $F8 $19
    cp $76                                        ; $4CB4: $FE $76
    inc h                                         ; $4CB6: $24
    jr @+$12                                      ; $4CB7: $18 $10

    ld [$0888], sp                                ; $4CB9: $08 $88 $08
    ld bc, $BA04                                  ; $4CBC: $01 $04 $BA
    jr nc, @-$02                                  ; $4CBF: $30 $FC

    nop                                           ; $4CC1: $00
    cp $01                                        ; $4CC2: $FE $01
    add b                                         ; $4CC4: $80
    ld [$82C0], sp                                ; $4CC5: $08 $C0 $82
    ld [$40E0], sp                                ; $4CC8: $08 $E0 $40
    pop af                                        ; $4CCB: $F1
    jr nz, jr_030_4D3E                            ; $4CCC: $20 $70

    ld a, [bc]                                    ; $4CCE: $0A
    ld [hl], h                                    ; $4CCF: $74
    sub b                                         ; $4CD0: $90
    ld [$247E], sp                                ; $4CD1: $08 $7E $24
    ret z                                         ; $4CD4: $C8

    jr z, @+$3E                                   ; $4CD5: $28 $3C

    jr jr_030_4CF5                                ; $4CD7: $18 $1C

    ld l, e                                       ; $4CD9: $6B
    ld [$EE00], sp                                ; $4CDA: $08 $00 $EE
    ld bc, $0308                                  ; $4CDD: $01 $08 $03
    db $10                                        ; $4CE0: $10
    add hl, de                                    ; $4CE1: $19
    ld d, b                                       ; $4CE2: $50
    add a                                         ; $4CE3: $87
    ld [$10CF], sp                                ; $4CE4: $08 $CF $10
    rst RST_20                                    ; $4CE7: $E7
    ld b, c                                       ; $4CE8: $41
    ld [hl], e                                    ; $4CE9: $73
    ld hl, $0989                                  ; $4CEA: $21 $89 $09
    daa                                           ; $4CED: $27
    ld [bc], a                                    ; $4CEE: $02
    rlca                                          ; $4CEF: $07
    ld [$040E], sp                                ; $4CF0: $08 $0E $04
    add hl, bc                                    ; $4CF3: $09
    push de                                       ; $4CF4: $D5

jr_030_4CF5:
    nop                                           ; $4CF5: $00
    cp $80                                        ; $4CF6: $FE $80
    ld [$10C0], sp                                ; $4CF8: $08 $C0 $10
    ldh a, [$FF08]                                ; $4CFB: $F0 $08
    inc [hl]                                      ; $4CFD: $34
    ld hl, sp-$50                                 ; $4CFE: $F8 $B0
    jr @+$32                                      ; $4D00: $18 $30

    sbc $48                                       ; $4D02: $DE $48
    cp a                                          ; $4D04: $BF
    ld e, $3A                                     ; $4D05: $1E $3A
    cp $20                                        ; $4D07: $FE $20
    nop                                           ; $4D09: $00
    jr z, jr_030_4D15                             ; $4D0A: $28 $09

    ld a, [hl]                                    ; $4D0C: $7E
    db $10                                        ; $4D0D: $10
    ccf                                           ; $4D0E: $3F
    ld hl, sp+$48                                 ; $4D0F: $F8 $48
    nop                                           ; $4D11: $00
    cp $39                                        ; $4D12: $FE $39

jr_030_4D14:
    ld e, c                                       ; $4D14: $59

jr_030_4D15:
    ld a, $10                                     ; $4D15: $3E $10
    jr c, jr_030_4D14                             ; $4D17: $38 $FB

    rrca                                          ; $4D19: $0F
    inc c                                         ; $4D1A: $0C
    nop                                           ; $4D1B: $00
    sbc $03                                       ; $4D1C: $DE $03
    rra                                           ; $4D1E: $1F
    ld sp, hl                                     ; $4D1F: $F9
    db $10                                        ; $4D20: $10
    db $EB                                        ; $4D21: $EB
    ld [$1980], sp                                ; $4D22: $08 $80 $19
    ld a, a                                       ; $4D25: $7F
    jr @+$01                                      ; $4D26: $18 $FF

    stop                                          ; $4D28: $10 $00
    ld [hl], l                                    ; $4D2A: $75
    inc h                                         ; $4D2B: $24
    ld [$0840], sp                                ; $4D2C: $08 $40 $08

jr_030_4D2F:
    dec h                                         ; $4D2F: $25
    ld [$482C], sp                                ; $4D30: $08 $2C $48
    ld e, d                                       ; $4D33: $5A
    ld [hl], l                                    ; $4D34: $75
    jr jr_030_4D3D                                ; $4D35: $18 $06

    nop                                           ; $4D37: $00
    cp $C7                                        ; $4D38: $FE $C7
    ld [$95EF], sp                                ; $4D3A: $08 $EF $95

jr_030_4D3D:
    db $10                                        ; $4D3D: $10

jr_030_4D3E:
    rst RST_20                                    ; $4D3E: $E7
    ld b, b                                       ; $4D3F: $40
    ld [$98C0], sp                                ; $4D40: $08 $C0 $98
    ld b, a                                       ; $4D43: $47
    ld [$F458], sp                                ; $4D44: $08 $58 $F4
    ld [$0804], sp                                ; $4D47: $08 $04 $08
    ld b, b                                       ; $4D4A: $40
    rst RST_30                                    ; $4D4B: $F7
    jr nz, jr_030_4D2F                            ; $4D4C: $20 $E1

    or [hl]                                       ; $4D4E: $B6
    ld e, b                                       ; $4D4F: $58
    di                                            ; $4D50: $F3
    ld a, b                                       ; $4D51: $78
    ld hl, sp+$33                                 ; $4D52: $F8 $33
    nop                                           ; $4D54: $00
    cp $88                                        ; $4D55: $FE $88
    or l                                          ; $4D57: $B5
    ld [$10DE], sp                                ; $4D58: $08 $DE $10
    xor b                                         ; $4D5B: $A8

jr_030_4D5C:
    sub d                                         ; $4D5C: $92
    ld [$08BF], sp                                ; $4D5D: $08 $BF $08
    push de                                       ; $4D60: $D5
    jr z, @+$12                                   ; $4D61: $28 $10

    ld [$3F18], sp                                ; $4D63: $08 $18 $3F
    ld [$4BA9], sp                                ; $4D66: $08 $A9 $4B
    xor l                                         ; $4D69: $AD
    ld [$088A], sp                                ; $4D6A: $08 $8A $08
    ld a, l                                       ; $4D6D: $7D
    nop                                           ; $4D6E: $00
    cp $0C                                        ; $4D6F: $FE $0C
    ld [$5F6B], sp                                ; $4D71: $08 $6B $5F
    db $10                                        ; $4D74: $10
    ld l, b                                       ; $4D75: $68
    ld b, l                                       ; $4D76: $45
    ld [$003E], sp                                ; $4D77: $08 $3E $00
    add sp, -$58                                  ; $4D7A: $E8 $A8
    ldh [rNR34], a                                ; $4D7C: $E0 $1E
    jr z, @+$33                                   ; $4D7E: $28 $31

    ld [$DF47], sp                                ; $4D80: $08 $47 $DF
    add hl, bc                                    ; $4D83: $09
    inc sp                                        ; $4D84: $33
    add hl, sp                                    ; $4D85: $39
    db $10                                        ; $4D86: $10
    ld c, b                                       ; $4D87: $48
    ld [$0F9F], sp                                ; $4D88: $08 $9F $0F
    nop                                           ; $4D8B: $00
    cp $AD                                        ; $4D8C: $FE $AD
    ld bc, $08C3                                  ; $4D8E: $01 $C3 $08
    rst RST_20                                    ; $4D91: $E7
    db $10                                        ; $4D92: $10
    add hl, de                                    ; $4D93: $19
    rlca                                          ; $4D94: $07
    ld [$6F40], sp                                ; $4D95: $08 $40 $6F
    db $10                                        ; $4D98: $10
    rst RST_30                                    ; $4D99: $F7
    ld h, b                                       ; $4D9A: $60
    db $E3                                        ; $4D9B: $E3
    add c                                         ; $4D9C: $81
    add e                                         ; $4D9D: $83
    ld bc, $3083                                  ; $4D9E: $01 $83 $30
    ld [bc], a                                    ; $4DA1: $02
    rst RST_08                                    ; $4DA2: $CF
    inc b                                         ; $4DA3: $04
    db $E4                                        ; $4DA4: $E4
    ret nz                                        ; $4DA5: $C0

jr_030_4DA6:
    nop                                           ; $4DA6: $00
    xor $D7                                       ; $4DA7: $EE $D7
    ld d, b                                       ; $4DA9: $50
    ld [$10FE], sp                                ; $4DAA: $08 $FE $10
    rst RST_38                                    ; $4DAD: $FF
    stop                                          ; $4DAE: $10 $00
    jr z, jr_030_4DA6                             ; $4DB0: $28 $F4

    jr jr_030_4D5C                                ; $4DB2: $18 $A8

    ld [$2001], sp                                ; $4DB4: $08 $01 $20
    jr c, jr_030_4DDD                             ; $4DB7: $38 $24

    rst RST_30                                    ; $4DB9: $F7
    dec d                                         ; $4DBA: $15
    ld [hl+], a                                   ; $4DBB: $22
    di                                            ; $4DBC: $F3
    ld hl, $E108                                  ; $4DBD: $21 $08 $E1
    nop                                           ; $4DC0: $00
    ld b, b                                       ; $4DC1: $40
    nop                                           ; $4DC2: $00
    call nc, $01FE                                ; $4DC3: $D4 $FE $01
    jr nc, jr_030_4DD0                            ; $4DC6: $30 $08

    ld a, b                                       ; $4DC8: $78
    db $10                                        ; $4DC9: $10
    inc a                                         ; $4DCA: $3C
    jr jr_030_4DEB                                ; $4DCB: $18 $1E

    jr c, @+$12                                   ; $4DCD: $38 $10

    cp b                                          ; $4DCF: $B8

jr_030_4DD0:
    ld [$0B19], sp                                ; $4DD0: $08 $19 $0B
    add hl, sp                                    ; $4DD3: $39
    sbc a                                         ; $4DD4: $9F
    dec e                                         ; $4DD5: $1D
    ld [$070F], sp                                ; $4DD6: $08 $0F $07
    nop                                           ; $4DD9: $00
    rst RST_30                                    ; $4DDA: $F7
    ld [bc], a                                    ; $4DDB: $02
    inc bc                                        ; $4DDC: $03

jr_030_4DDD:
    ld [$68F0], sp                                ; $4DDD: $08 $F0 $68
    db $10                                        ; $4DE0: $10
    ld a, c                                       ; $4DE1: $79
    sbc e                                         ; $4DE2: $9B
    daa                                           ; $4DE3: $27
    ld bc, $267F                                  ; $4DE4: $01 $7F $26
    ld b, $E7                                     ; $4DE7: $06 $E7
    ld b, b                                       ; $4DE9: $40
    pop bc                                        ; $4DEA: $C1

jr_030_4DEB:
    add b                                         ; $4DEB: $80
    add c                                         ; $4DEC: $81
    rst RST_10                                    ; $4DED: $D7
    nop                                           ; $4DEE: $00
    ld h, b                                       ; $4DEF: $60
    and l                                         ; $4DF0: $A5
    ld [$10F6], sp                                ; $4DF1: $08 $F6 $10
    rst RST_38                                    ; $4DF4: $FF
    ld b, [hl]                                    ; $4DF5: $46
    ld [$08FC], sp                                ; $4DF6: $08 $FC $08
    ld h, [hl]                                    ; $4DF9: $66
    ld c, c                                       ; $4DFA: $49
    ld [$2001], sp                                ; $4DFB: $08 $01 $20
    cp $38                                        ; $4DFE: $FE $38
    ld [$F584], sp                                ; $4E00: $08 $84 $F5
    dec e                                         ; $4E03: $1D
    nop                                           ; $4E04: $00
    cp $01                                        ; $4E05: $FE $01
    ld b, b                                       ; $4E07: $40
    ld [$10E1], sp                                ; $4E08: $08 $E1 $10
    dec h                                         ; $4E0B: $25
    ld [hl], a                                    ; $4E0C: $77
    ld hl, $26D8                                  ; $4E0D: $21 $D8 $26
    and $28                                       ; $4E10: $E6 $28
    ldh [$FF08], a                                ; $4E12: $E0 $08
    ld h, c                                       ; $4E14: $61
    db $F4                                        ; $4E15: $F4
    ld [$54C8], sp                                ; $4E16: $08 $C8 $54
    rst RST_30                                    ; $4E19: $F7
    ld h, d                                       ; $4E1A: $62
    ld [hl], e                                    ; $4E1B: $73
    ld l, b                                       ; $4E1C: $68
    ld a, $71                                     ; $4E1D: $3E $71
    jr nz, jr_030_4E21                            ; $4E1F: $20 $00

jr_030_4E21:
    rst RST_30                                    ; $4E21: $F7
    ld [bc], a                                    ; $4E22: $02
    cp b                                          ; $4E23: $B8
    ld [$FAF0], sp                                ; $4E24: $08 $F0 $FA
    db $10                                        ; $4E27: $10
    add hl, de                                    ; $4E28: $19
    rlca                                          ; $4E29: $07
    ld l, a                                       ; $4E2A: $6F
    rlca                                          ; $4E2B: $07
    jr nz, jr_030_4E36                            ; $4E2C: $20 $08

    ld a, a                                       ; $4E2E: $7F
    sub c                                         ; $4E2F: $91
    db $10                                        ; $4E30: $10
    ccf                                           ; $4E31: $3F
    rra                                           ; $4E32: $1F
    nop                                           ; $4E33: $00
    inc b                                         ; $4E34: $04
    inc e                                         ; $4E35: $1C

jr_030_4E36:
    ld [$BA00], sp                                ; $4E36: $08 $00 $BA
    ld c, b                                       ; $4E39: $48
    ld b, b                                       ; $4E3A: $40
    reti                                          ; $4E3B: $D9


    db $10                                        ; $4E3C: $10
    ld l, b                                       ; $4E3D: $68
    jr nc, jr_030_4EA8                            ; $4E3E: $30 $68

    rrca                                          ; $4E40: $0F
    ld [$E700], a                                 ; $4E41: $EA $00 $E7
    inc b                                         ; $4E44: $04
    ld bc, $8308                                  ; $4E45: $01 $08 $83
    db $10                                        ; $4E48: $10
    rlca                                          ; $4E49: $07
    dec b                                         ; $4E4A: $05
    ld [bc], a                                    ; $4E4B: $02
    ld c, $04                                     ; $4E4C: $0E $04
    inc e                                         ; $4E4E: $1C
    ld [$1D09], sp                                ; $4E4F: $08 $09 $1D
    ld [$8F5E], sp                                ; $4E52: $08 $5E $8F
    jr c, @-$37                                   ; $4E55: $38 $C7

    ld [hl], b                                    ; $4E57: $70
    nop                                           ; $4E58: $00
    rst RST_10                                    ; $4E59: $D7
    inc b                                         ; $4E5A: $04
    pop af                                        ; $4E5B: $F1
    add c                                         ; $4E5C: $81
    ld [$F0F8], sp                                ; $4E5D: $08 $F8 $F0
    db $FD                                        ; $4E60: $FD
    ld c, b                                       ; $4E61: $48
    xor $44                                       ; $4E62: $EE $44
    dec bc                                        ; $4E64: $0B
    db $10                                        ; $4E65: $10
    rst RST_08                                    ; $4E66: $CF
    add h                                         ; $4E67: $84
    adc $08                                       ; $4E68: $CE $08
    cp h                                          ; $4E6A: $BC
    ld [$3078], sp                                ; $4E6B: $08 $78 $30
    call nc, $DE00                                ; $4E6E: $D4 $00 $DE
    ld sp, $FB08                                  ; $4E71: $31 $08 $FB
    db $10                                        ; $4E74: $10
    di                                            ; $4E75: $F3
    ldh [$FF0A], a                                ; $4E76: $E0 $0A
    rst RST_30                                    ; $4E78: $F7
    ld [hl+], a                                   ; $4E79: $22
    rst RST_38                                    ; $4E7A: $FF
    ldh a, [c]                                    ; $4E7B: $F2
    ld a, [de]                                    ; $4E7C: $1A
    halt                                          ; $4E7D: $76
    ld [$A16B], sp                                ; $4E7E: $08 $6B $A1
    ld [$08AA], sp                                ; $4E81: $08 $AA $08
    ld h, $7F                                     ; $4E84: $26 $7F
    ld a, [hl+]                                   ; $4E86: $2A
    ld a, e                                       ; $4E87: $7B
    sbc b                                         ; $4E88: $98
    sbc $B9                                       ; $4E89: $DE $B9
    rlca                                          ; $4E8B: $07
    and h                                         ; $4E8C: $A4
    ld [$1088], sp                                ; $4E8D: $08 $88 $10
    ld [$A027], sp                                ; $4E90: $08 $27 $A0
    ld [$084C], sp                                ; $4E93: $08 $4C $08
    ld c, e                                       ; $4E96: $4B
    res 0, b                                      ; $4E97: $CB $80
    rst RST_20                                    ; $4E99: $E7
    ld b, e                                       ; $4E9A: $43
    ld [de], a                                    ; $4E9B: $12
    ld [hl], e                                    ; $4E9C: $73
    jr nz, jr_030_4F0F                            ; $4E9D: $20 $70

    ld [$40EF], sp                                ; $4E9F: $08 $EF $40
    ld e, b                                       ; $4EA2: $58
    rst RST_08                                    ; $4EA3: $CF
    sub $00                                       ; $4EA4: $D6 $00
    xor $60                                       ; $4EA6: $EE $60

jr_030_4EA8:
    ld [$10F4], sp                                ; $4EA8: $08 $F4 $10
    ld l, b                                       ; $4EAB: $68
    ld b, h                                       ; $4EAC: $44
    and e                                         ; $4EAD: $A3
    ld [$00FE], sp                                ; $4EAE: $08 $FE $00
    inc b                                         ; $4EB1: $04
    db $FC                                        ; $4EB2: $FC
    ld hl, sp+$00                                 ; $4EB3: $F8 $00
    cp b                                          ; $4EB5: $B8
    ld l, e                                       ; $4EB6: $6B
    db $FD                                        ; $4EB7: $FD
    ld a, [de]                                    ; $4EB8: $1A
    ld [$5850], sp                                ; $4EB9: $08 $50 $58
    ld c, b                                       ; $4EBC: $48
    ld a, d                                       ; $4EBD: $7A
    cp $5A                                        ; $4EBE: $FE $5A
    jr jr_030_4ECA                                ; $4EC0: $18 $08

    cp a                                          ; $4EC2: $BF
    db $10                                        ; $4EC3: $10
    ld l, b                                       ; $4EC4: $68
    adc e                                         ; $4EC5: $8B
    ld [$8A7C], sp                                ; $4EC6: $08 $7C $8A
    nop                                           ; $4EC9: $00

jr_030_4ECA:
    db $10                                        ; $4ECA: $10
    ld a, [hl]                                    ; $4ECB: $7E
    inc a                                         ; $4ECC: $3C
    jr z, @+$64                                   ; $4ECD: $28 $62

    ld [$848F], sp                                ; $4ECF: $08 $8F $84
    ld l, b                                       ; $4ED2: $68
    ld [de], a                                    ; $4ED3: $12
    ld [hl], d                                    ; $4ED4: $72
    jr nz, jr_030_4F56                            ; $4ED5: $20 $7F

    ld [$1F3F], sp                                ; $4ED7: $08 $3F $1F
    call nc, $FE00                                ; $4EDA: $D4 $00 $FE
    ld [bc], a                                    ; $4EDD: $02
    ld [$1087], sp                                ; $4EDE: $08 $87 $10
    rst RST_08                                    ; $4EE1: $CF
    add d                                         ; $4EE2: $82
    inc [hl]                                      ; $4EE3: $34
    sbc a                                         ; $4EE4: $9F
    rrca                                          ; $4EE5: $0F
    nop                                           ; $4EE6: $00
    jr z, @-$37                                   ; $4EE7: $28 $C7

    ld [$C3EF], sp                                ; $4EE9: $08 $EF $C3
    dec l                                         ; $4EEC: $2D
    rst RST_18                                    ; $4EED: $DF
    ld c, $B8                                     ; $4EEE: $0E $B8
    ld a, [bc]                                    ; $4EF0: $0A
    ld c, c                                       ; $4EF1: $49
    adc d                                         ; $4EF2: $8A
    add [hl]                                      ; $4EF3: $86
    nop                                           ; $4EF4: $00
    xor c                                         ; $4EF5: $A9
    cp $06                                        ; $4EF6: $FE $06
    ld [$107F], sp                                ; $4EF8: $08 $7F $10
    cp $78                                        ; $4EFB: $FE $78
    ld [$5434], sp                                ; $4EFD: $08 $34 $54
    rst RST_38                                    ; $4F00: $FF
    db $10                                        ; $4F01: $10
    ld [$1082], sp                                ; $4F02: $08 $82 $10
    ld a, h                                       ; $4F05: $7C
    ld a, [hl]                                    ; $4F06: $7E
    ld b, [hl]                                    ; $4F07: $46
    inc h                                         ; $4F08: $24
    db $10                                        ; $4F09: $10
    jr z, @+$3A                                   ; $4F0A: $28 $38

    db $10                                        ; $4F0C: $10
    jr c, jr_030_4F27                             ; $4F0D: $38 $18

jr_030_4F0F:
    rst RST_28                                    ; $4F0F: $EF
    ld l, d                                       ; $4F10: $6A
    add $00                                       ; $4F11: $C6 $00
    cp $01                                        ; $4F13: $FE $01
    ld [$1043], sp                                ; $4F15: $08 $43 $10
    jp hl                                         ; $4F18: $E9


    inc sp                                        ; $4F19: $33
    ld b, b                                       ; $4F1A: $40
    ld a, a                                       ; $4F1B: $7F
    adc b                                         ; $4F1C: $88
    ld [$E727], sp                                ; $4F1D: $08 $27 $E7
    jr z, jr_030_4F5B                             ; $4F20: $28 $39

    inc bc                                        ; $4F22: $03
    db $FD                                        ; $4F23: $FD
    ld c, b                                       ; $4F24: $48
    ld sp, hl                                     ; $4F25: $F9
    ld d, b                                       ; $4F26: $50

jr_030_4F27:
    ld [hl], e                                    ; $4F27: $73
    ld hl, $6009                                  ; $4F28: $21 $09 $60
    ld l, d                                       ; $4F2B: $6A
    ld [bc], a                                    ; $4F2C: $02
    nop                                           ; $4F2D: $00
    cp $81                                        ; $4F2E: $FE $81
    ld [$10C3], sp                                ; $4F30: $08 $C3 $10
    pop hl                                        ; $4F33: $E1
    inc de                                        ; $4F34: $13
    add b                                         ; $4F35: $80
    pop af                                        ; $4F36: $F1
    and b                                         ; $4F37: $A0
    jr @-$3E                                      ; $4F38: $18 $C0

    pop bc                                        ; $4F3A: $C1
    jr z, jr_030_4F46                             ; $4F3B: $28 $09

    ld b, d                                       ; $4F3D: $42
    rst RST_00                                    ; $4F3E: $C7
    ld [$87CF], sp                                ; $4F3F: $08 $CF $87
    sbc a                                         ; $4F42: $9F
    ld [$0F09], sp                                ; $4F43: $08 $09 $0F

jr_030_4F46:
    ld a, [hl]                                    ; $4F46: $7E
    rlca                                          ; $4F47: $07
    nop                                           ; $4F48: $00
    cp $80                                        ; $4F49: $FE $80
    ld [$10C0], sp                                ; $4F4B: $08 $C0 $10
    ret c                                         ; $4F4E: $D8

    add a                                         ; $4F4F: $87
    ld [$98FC], sp                                ; $4F50: $08 $FC $98
    ld hl, sp-$20                                 ; $4F53: $F8 $E0
    nop                                           ; $4F55: $00

jr_030_4F56:
    jr z, jr_030_4FA1                             ; $4F56: $28 $49

    ret c                                         ; $4F58: $D8

    add hl, bc                                    ; $4F59: $09
    add hl, hl                                    ; $4F5A: $29

jr_030_4F5B:
    ldh a, [rNR10]                                ; $4F5B: $F0 $10
    ld e, b                                       ; $4F5D: $58
    sub b                                         ; $4F5E: $90
    sbc h                                         ; $4F5F: $9C
    ld [$00E8], sp                                ; $4F60: $08 $E8 $00
    cp $39                                        ; $4F63: $FE $39
    rra                                           ; $4F65: $1F
    db $10                                        ; $4F66: $10
    rrca                                          ; $4F67: $0F
    rlca                                          ; $4F68: $07
    daa                                           ; $4F69: $27
    and d                                         ; $4F6A: $A2
    jr z, jr_030_4FEC                             ; $4F6B: $28 $7F

    db $10                                        ; $4F6D: $10
    ccf                                           ; $4F6E: $3F
    jr @+$1B                                      ; $4F6F: $18 $19

    jr z, jr_030_4F74                             ; $4F71: $28 $01

    or c                                          ; $4F73: $B1

jr_030_4F74:
    ld a, [bc]                                    ; $4F74: $0A
    inc bc                                        ; $4F75: $03
    db $10                                        ; $4F76: $10
    ld a, b                                       ; $4F77: $78
    ld [bc], a                                    ; $4F78: $02
    ld e, $0C                                     ; $4F79: $1E $0C
    nop                                           ; $4F7B: $00
    push de                                       ; $4F7C: $D5
    cp $03                                        ; $4F7D: $FE $03
    add b                                         ; $4F7F: $80
    xor d                                         ; $4F80: $AA
    add c                                         ; $4F81: $81
    ld [$30C1], sp                                ; $4F82: $08 $C1 $30
    rst RST_10                                    ; $4F85: $D7
    dec c                                         ; $4F86: $0D
    ld c, c                                       ; $4F87: $49
    rlca                                          ; $4F88: $07
    ld [$100F], sp                                ; $4F89: $08 $0F $10
    add hl, de                                    ; $4F8C: $19
    rlca                                          ; $4F8D: $07
    cp [hl]                                       ; $4F8E: $BE
    ei                                            ; $4F8F: $FB
    ret nz                                        ; $4F90: $C0

jr_030_4F91:
    db $10                                        ; $4F91: $10
    rrca                                          ; $4F92: $0F
    rrca                                          ; $4F93: $0F
    sbc c                                         ; $4F94: $99
    dec b                                         ; $4F95: $05
    ld [bc], a                                    ; $4F96: $02
    or b                                          ; $4F97: $B0
    ld [$1007], sp                                ; $4F98: $08 $07 $10
    add hl, bc                                    ; $4F9B: $09
    ccf                                           ; $4F9C: $3F
    inc bc                                        ; $4F9D: $03
    ld a, a                                       ; $4F9E: $7F
    dec sp                                        ; $4F9F: $3B
    sbc d                                         ; $4FA0: $9A

jr_030_4FA1:
    jr jr_030_4FAD                                ; $4FA1: $18 $0A

    rra                                           ; $4FA3: $1F
    ld [$1218], sp                                ; $4FA4: $08 $18 $12
    add hl, bc                                    ; $4FA7: $09
    ld [hl], a                                    ; $4FA8: $77
    ld b, $22                                     ; $4FA9: $06 $22
    rst RST_20                                    ; $4FAB: $E7
    ld b, d                                       ; $4FAC: $42

jr_030_4FAD:
    ld c, a                                       ; $4FAD: $4F
    ld b, $00                                     ; $4FAE: $06 $00
    cp $01                                        ; $4FB0: $FE $01
    add sp, $08                                   ; $4FB2: $E8 $08
    ret nc                                        ; $4FB4: $D0

    db $10                                        ; $4FB5: $10
    inc sp                                        ; $4FB6: $33
    ld [$31FB], sp                                ; $4FB7: $08 $FB $31
    di                                            ; $4FBA: $F3
    ld bc, $E321                                  ; $4FBB: $01 $21 $E3
    pop bc                                        ; $4FBE: $C1
    rst RST_00                                    ; $4FBF: $C7
    add b                                         ; $4FC0: $80

jr_030_4FC1:
    rst RST_28                                    ; $4FC1: $EF
    ld b, a                                       ; $4FC2: $47
    ld [$4401], sp                                ; $4FC3: $08 $01 $44
    ld a, a                                       ; $4FC6: $7F
    daa                                           ; $4FC7: $27
    ccf                                           ; $4FC8: $3F
    inc d                                         ; $4FC9: $14
    rra                                           ; $4FCA: $1F
    rlca                                          ; $4FCB: $07
    nop                                           ; $4FCC: $00
    xor l                                         ; $4FCD: $AD
    cp $FC                                        ; $4FCE: $FE $FC
    ld [$10FE], sp                                ; $4FD0: $08 $FE $10
    ld [$1D04], sp                                ; $4FD3: $08 $04 $1D
    ld l, e                                       ; $4FD6: $6B
    rst RST_38                                    ; $4FD7: $FF
    ld e, b                                       ; $4FD8: $58
    ld [$08DF], sp                                ; $4FD9: $08 $DF $08
    ld d, c                                       ; $4FDC: $51
    dec e                                         ; $4FDD: $1D
    nop                                           ; $4FDE: $00
    call nc, Call_000_03FE                        ; $4FDF: $D4 $FE $03
    rrca                                          ; $4FE2: $0F
    ld [$101F], sp                                ; $4FE3: $08 $1F $10
    ccf                                           ; $4FE6: $3F
    ld [de], a                                    ; $4FE7: $12
    ld [$2277], sp                                ; $4FE8: $08 $77 $22
    rst RST_20                                    ; $4FEB: $E7

jr_030_4FEC:
    ld b, d                                       ; $4FEC: $42
    add hl, bc                                    ; $4FED: $09
    xor $44                                       ; $4FEE: $EE $44
    cp $07                                        ; $4FF0: $FE $07
    inc h                                         ; $4FF2: $24
    cp l                                          ; $4FF3: $BD
    jr jr_030_4F91                                ; $4FF4: $18 $9B

    ld bc, $E700                                  ; $4FF6: $01 $00 $E7
    ld [bc], a                                    ; $4FF9: $02
    ld e, b                                       ; $4FFA: $58
    add a                                         ; $4FFB: $87
    ld [$10CF], sp                                ; $4FFC: $08 $CF $10
    ret z                                         ; $4FFF: $C8

    ld b, b                                       ; $5000: $40
    ld [hl], b                                    ; $5001: $70
    jr nz, @-$49                                  ; $5002: $20 $B5

    dec bc                                        ; $5004: $0B
    ld [hl], c                                    ; $5005: $71
    ld a, [bc]                                    ; $5006: $0A
    ld e, b                                       ; $5007: $58
    ld b, c                                       ; $5008: $41
    ld a, b                                       ; $5009: $78
    add [hl]                                      ; $500A: $86
    nop                                           ; $500B: $00
    xor c                                         ; $500C: $A9
    sbc $60                                       ; $500D: $DE $60
    ld [$10F2], sp                                ; $500F: $08 $F2 $10
    rst RST_38                                    ; $5012: $FF
    ld b, d                                       ; $5013: $42
    ld [$01F0], sp                                ; $5014: $08 $F0 $01
    jr jr_030_4FC1                                ; $5017: $18 $A8

    inc c                                         ; $5019: $0C
    rst RST_00                                    ; $501A: $C7
    add d                                         ; $501B: $82
    sbc $84                                       ; $501C: $DE $84
    dec l                                         ; $501E: $2D
    cp [hl]                                       ; $501F: $BE
    inc e                                         ; $5020: $1C
    nop                                           ; $5021: $00
    ld [$FE00], sp                                ; $5022: $08 $00 $FE
    inc c                                         ; $5025: $0C
    ld [$5F6B], sp                                ; $5026: $08 $6B $5F
    db $10                                        ; $5029: $10
    ret c                                         ; $502A: $D8

    ld b, l                                       ; $502B: $45
    ld [$003E], sp                                ; $502C: $08 $3E $00
    add b                                         ; $502F: $80
    ld a, [bc]                                    ; $5030: $0A
    ccf                                           ; $5031: $3F
    ld e, $7F                                     ; $5032: $1E $7F
    ld sp, $4738                                  ; $5034: $31 $38 $47
    ld l, b                                       ; $5037: $68
    add hl, bc                                    ; $5038: $09
    inc sp                                        ; $5039: $33
    add hl, sp                                    ; $503A: $39
    db $10                                        ; $503B: $10
    ld c, b                                       ; $503C: $48
    ld [$0F1F], sp                                ; $503D: $08 $1F $0F
    nop                                           ; $5040: $00
    cp $AA                                        ; $5041: $FE $AA
    ld bc, $08C1                                  ; $5043: $01 $C1 $08
    db $E3                                        ; $5046: $E3

jr_030_5047:
    db $10                                        ; $5047: $10
    jp $0718                                      ; $5048: $C3 $18 $07


    ld hl, $6303                                  ; $504B: $21 $03 $63
    jr jr_030_5047                                ; $504E: $18 $F7

    ld h, b                                       ; $5050: $60
    rst RST_28                                    ; $5051: $EF
    add a                                         ; $5052: $87
    nop                                           ; $5053: $00
    xor [hl]                                      ; $5054: $AE
    adc d                                         ; $5055: $8A
    ret nz                                        ; $5056: $C0

    ld [$10E1], sp                                ; $5057: $08 $E1 $10
    add hl, de                                    ; $505A: $19
    dec b                                         ; $505B: $05
    inc c                                         ; $505C: $0C
    and h                                         ; $505D: $A4
    ld [$10FE], sp                                ; $505E: $08 $FE $10
    db $FC                                        ; $5061: $FC
    ldh a, [rNR23]                                ; $5062: $F0 $18
    jr nz, @+$01                                  ; $5064: $20 $FF

    db $DD                                        ; $5066: $DD
    db $10                                        ; $5067: $10
    ld a, [de]                                    ; $5068: $1A
    ld [hl+], a                                   ; $5069: $22
    ld [$2801], sp                                ; $506A: $08 $01 $28
    ld [hl], b                                    ; $506D: $70
    ld [$70DD], sp                                ; $506E: $08 $DD $70
    add hl, bc                                    ; $5071: $09
    ldh [rP1], a                                  ; $5072: $E0 $00
    cp $01                                        ; $5074: $FE $01
    ld b, b                                       ; $5076: $40
    ld [$E141], sp                                ; $5077: $08 $41 $E1
    db $10                                        ; $507A: $10
    ld [hl], a                                    ; $507B: $77
    ld hl, $267F                                  ; $507C: $21 $7F $26
    and $28                                       ; $507F: $E6 $28
    ret nc                                        ; $5081: $D0

    sbc b                                         ; $5082: $98
    ld [$08F4], sp                                ; $5083: $08 $F4 $08
    cp $54                                        ; $5086: $FE $54
    rst RST_30                                    ; $5088: $F7
    ld h, d                                       ; $5089: $62
    ld c, [hl]                                    ; $508A: $4E
    ld [hl], e                                    ; $508B: $73
    ld l, b                                       ; $508C: $68
    ld [hl], c                                    ; $508D: $71
    jr nz, jr_030_5090                            ; $508E: $20 $00

jr_030_5090:
    rst RST_30                                    ; $5090: $F7
    nop                                           ; $5091: $00
    ld bc, $08AF                                  ; $5092: $01 $AF $08
    db $E3                                        ; $5095: $E3
    db $10                                        ; $5096: $10
    pop af                                        ; $5097: $F1
    ret nc                                        ; $5098: $D0

    nop                                           ; $5099: $00
    ld e, [hl]                                    ; $509A: $5E
    ld l, e                                       ; $509B: $6B
    dec c                                         ; $509C: $0D
    rst RST_30                                    ; $509D: $F7
    ldh [c], a                                    ; $509E: $E2
    xor $04                                       ; $509F: $EE $04
    nop                                           ; $50A1: $00
    xor $20                                       ; $50A2: $EE $20
    ld [$F05A], sp                                ; $50A4: $08 $5A $F0
    db $10                                        ; $50A7: $10
    ld hl, sp+$10                                 ; $50A8: $F8 $10
    add hl, de                                    ; $50AA: $19
    ld [hl], b                                    ; $50AB: $70
    add hl, hl                                    ; $50AC: $29
    ld d, b                                       ; $50AD: $50
    add c                                         ; $50AE: $81
    ld a, [bc]                                    ; $50AF: $0A
    sub b                                         ; $50B0: $90
    call c, $9C88                                 ; $50B1: $DC $88 $9C
    ld [$E00F], sp                                ; $50B4: $08 $0F $E0
    dec [hl]                                      ; $50B7: $35
    rlca                                          ; $50B8: $07
    inc bc                                        ; $50B9: $03
    nop                                           ; $50BA: $00
    cp $30                                        ; $50BB: $FE $30
    ld [$1078], sp                                ; $50BD: $08 $78 $10
    nop                                           ; $50C0: $00
    ld a, c                                       ; $50C1: $79
    db $10                                        ; $50C2: $10
    rst RST_38                                    ; $50C3: $FF
    ld e, c                                       ; $50C4: $59
    ld a, a                                       ; $50C5: $7F
    ld [hl-], a                                   ; $50C6: $32
    ld a, $14                                     ; $50C7: $3E $14
    ld [hl-], a                                   ; $50C9: $32
    inc a                                         ; $50CA: $3C
    jr @+$4A                                      ; $50CB: $18 $48

    ld e, b                                       ; $50CD: $58
    ld sp, hl                                     ; $50CE: $F9
    ld [hl], b                                    ; $50CF: $70
    ld [$DE50], sp                                ; $50D0: $08 $50 $DE
    adc b                                         ; $50D3: $88
    ld a, b                                       ; $50D4: $78
    cp b                                          ; $50D5: $B8
    ld [$FE00], sp                                ; $50D6: $08 $00 $FE
    ld bc, $A101                                  ; $50D9: $01 $01 $A1
    ld [$1083], sp                                ; $50DC: $08 $83 $10
    pop bc                                        ; $50DF: $C1
    add b                                         ; $50E0: $80
    ldh [rLCDC], a                                ; $50E1: $E0 $40
    add hl, bc                                    ; $50E3: $09
    ld b, h                                       ; $50E4: $44
    pop hl                                        ; $50E5: $E1
    ld [$81C3], sp                                ; $50E6: $08 $C3 $81
    rst RST_10                                    ; $50E9: $D7
    ld h, b                                       ; $50EA: $60
    ei                                            ; $50EB: $FB
    sub b                                         ; $50EC: $90
    ld a, [hl-]                                   ; $50ED: $3A
    pop af                                        ; $50EE: $F1
    ld h, b                                       ; $50EF: $60
    nop                                           ; $50F0: $00
    rst RST_20                                    ; $50F1: $E7
    ld [bc], a                                    ; $50F2: $02
    ld [hl], b                                    ; $50F3: $70
    ld [$97F8], sp                                ; $50F4: $08 $F8 $97
    db $10                                        ; $50F7: $10
    db $FC                                        ; $50F8: $FC
    sbc b                                         ; $50F9: $98
    jr @+$22                                      ; $50FA: $18 $20

    ld [$28E8], sp                                ; $50FC: $08 $E8 $28
    add c                                         ; $50FF: $81
    db $10                                        ; $5100: $10
    cp $84                                        ; $5101: $FE $84
    rst RST_20                                    ; $5103: $E7
    ld [bc], a                                    ; $5104: $02
    rst RST_30                                    ; $5105: $F7
    ld h, d                                       ; $5106: $62
    jr z, @+$5C                                   ; $5107: $28 $5A

    sub h                                         ; $5109: $94
    ld c, b                                       ; $510A: $48
    ld a, b                                       ; $510B: $78
    nop                                           ; $510C: $00
    xor $18                                       ; $510D: $EE $18
    ld [$803C], sp                                ; $510F: $08 $3C $80
    db $10                                        ; $5112: $10
    rra                                           ; $5113: $1F
    ld [$0B7F], sp                                ; $5114: $08 $7F $0B
    rst RST_38                                    ; $5117: $FF
    ld a, h                                       ; $5118: $7C
    ld a, l                                       ; $5119: $7D
    ld bc, $3B10                                  ; $511A: $01 $10 $3B
    ld de, $123F                                  ; $511D: $11 $3F $12
    ld [hl], d                                    ; $5120: $72
    jr nz, jr_030_512C                            ; $5121: $20 $09

    ld c, $E7                                     ; $5123: $0E $E7
    ld b, d                                       ; $5125: $42
    db $E3                                        ; $5126: $E3
    ld b, c                                       ; $5127: $41
    nop                                           ; $5128: $00
    cp $01                                        ; $5129: $FE $01
    inc bc                                        ; $512B: $03

jr_030_512C:
    and a                                         ; $512C: $A7
    ld [$1007], sp                                ; $512D: $08 $07 $10
    add e                                         ; $5130: $83
    ld bc, $0810                                  ; $5131: $01 $10 $08
    sbc b                                         ; $5134: $98
    add d                                         ; $5135: $82
    ld [$E2F7], sp                                ; $5136: $08 $F7 $E2
    rst RST_28                                    ; $5139: $EF
    inc b                                         ; $513A: $04
    ld c, $08                                     ; $513B: $0E $08
    rrca                                          ; $513D: $0F
    and $08                                       ; $513E: $E6 $08
    ld hl, sp+$60                                 ; $5140: $F8 $60
    di                                            ; $5142: $F3
    ldh [rP1], a                                  ; $5143: $E0 $00
    xor $30                                       ; $5145: $EE $30
    and d                                         ; $5147: $A2
    ld [$1078], sp                                ; $5148: $08 $78 $10
    cp b                                          ; $514B: $B8
    db $10                                        ; $514C: $10
    db $FC                                        ; $514D: $FC
    ld [$11FE], sp                                ; $514E: $08 $FE $11
    ld a, h                                       ; $5151: $7C
    rst RST_38                                    ; $5152: $FF
    and d                                         ; $5153: $A2
    xor b                                         ; $5154: $A8
    and c                                         ; $5155: $A1
    db $E3                                        ; $5156: $E3
    pop bc                                        ; $5157: $C1
    ld [$4121], sp                                ; $5158: $08 $21 $41
    rst RST_30                                    ; $515B: $F7
    jr c, @-$40                                   ; $515C: $38 $BE

    inc b                                         ; $515E: $04
    inc a                                         ; $515F: $3C
    jr jr_030_5162                                ; $5160: $18 $00

jr_030_5162:
    xor $FE                                       ; $5162: $EE $FE
    rlca                                          ; $5164: $07
    inc bc                                        ; $5165: $03
    add b                                         ; $5166: $80
    inc c                                         ; $5167: $0C
    rlca                                          ; $5168: $07
    dec b                                         ; $5169: $05
    rra                                           ; $516A: $1F
    or l                                          ; $516B: $B5
    ld [$103F], sp                                ; $516C: $08 $3F $10
    ld [$1910], sp                                ; $516F: $08 $10 $19

jr_030_5172:
    ld a, a                                       ; $5172: $7F
    jr jr_030_51E3                                ; $5173: $18 $6E

    rst RST_38                                    ; $5175: $FF
    stop                                          ; $5176: $10 $00
    inc h                                         ; $5178: $24
    ld [$0840], sp                                ; $5179: $08 $40 $08
    dec h                                         ; $517C: $25

jr_030_517D:
    xor e                                         ; $517D: $AB
    ld [$482C], sp                                ; $517E: $08 $2C $48
    ld [hl], l                                    ; $5181: $75
    jr @+$08                                      ; $5182: $18 $06

    nop                                           ; $5184: $00
    cp $52                                        ; $5185: $FE $52
    rst RST_00                                    ; $5187: $C7
    ld [$10EF], sp                                ; $5188: $08 $EF $10
    rst RST_20                                    ; $518B: $E7
    ld b, b                                       ; $518C: $40
    ld [$ABC0], sp                                ; $518D: $08 $C0 $AB
    sbc b                                         ; $5190: $98
    ld b, a                                       ; $5191: $47
    ld [$08F4], sp                                ; $5192: $08 $F4 $08
    inc b                                         ; $5195: $04
    ld [$1640], sp                                ; $5196: $08 $40 $16
    rst RST_30                                    ; $5199: $F7
    jr nz, jr_030_517D                            ; $519A: $20 $E1

    ld e, b                                       ; $519C: $58
    di                                            ; $519D: $F3
    ld a, b                                       ; $519E: $78
    ld hl, sp+$33                                 ; $519F: $F8 $33
    sub $00                                       ; $51A1: $D6 $00
    cp $88                                        ; $51A3: $FE $88
    ld [$10DE], sp                                ; $51A5: $08 $DE $10
    xor b                                         ; $51A8: $A8
    sub d                                         ; $51A9: $92
    cp d                                          ; $51AA: $BA
    ld [$08BF], sp                                ; $51AB: $08 $BF $08
    jr z, jr_030_51C0                             ; $51AE: $28 $10

    ld [$3F18], sp                                ; $51B0: $08 $18 $3F
    or l                                          ; $51B3: $B5
    ld [$4BA9], sp                                ; $51B4: $08 $A9 $4B
    ld [$088A], sp                                ; $51B7: $08 $8A $08
    ld a, l                                       ; $51BA: $7D
    nop                                           ; $51BB: $00
    db $FD                                        ; $51BC: $FD
    cp $07                                        ; $51BD: $FE $07
    rlca                                          ; $51BF: $07

jr_030_51C0:
    rlca                                          ; $51C0: $07
    rlca                                          ; $51C1: $07
    inc bc                                        ; $51C2: $03
    rrca                                          ; $51C3: $0F
    ld [$9F40], sp                                ; $51C4: $08 $40 $9F
    db $10                                        ; $51C7: $10
    ccf                                           ; $51C8: $3F
    ld [de], a                                    ; $51C9: $12
    ld [hl], a                                    ; $51CA: $77
    ld [hl+], a                                   ; $51CB: $22
    rst RST_20                                    ; $51CC: $E7
    ld b, d                                       ; $51CD: $42
    add b                                         ; $51CE: $80
    add hl, bc                                    ; $51CF: $09
    xor $44                                       ; $51D0: $EE $44
    ld a, [hl]                                    ; $51D2: $7E
    inc h                                         ; $51D3: $24
    dec a                                         ; $51D4: $3D
    jr jr_030_5172                                ; $51D5: $18 $9B

    ld l, l                                       ; $51D7: $6D
    ld bc, $DE00                                  ; $51D8: $01 $00 $DE
    dec b                                         ; $51DB: $05
    jp hl                                         ; $51DC: $E9


    db $10                                        ; $51DD: $10
    add a                                         ; $51DE: $87
    jr @+$44                                      ; $51DF: $18 $42

    rst RST_08                                    ; $51E1: $CF
    db $10                                        ; $51E2: $10

jr_030_51E3:
    rst RST_28                                    ; $51E3: $EF
    ld b, l                                       ; $51E4: $45
    ld a, a                                       ; $51E5: $7F
    daa                                           ; $51E6: $27
    ld [$9025], sp                                ; $51E7: $08 $25 $90
    add hl, de                                    ; $51EA: $19
    ld [hl], a                                    ; $51EB: $77
    ld hl, $E719                                  ; $51EC: $21 $19 $E7
    ld b, c                                       ; $51EF: $41
    jp $D481                                      ; $51F0: $C3 $81 $D4


    nop                                           ; $51F3: $00
    cp $48                                        ; $51F4: $FE $48
    ld [$10FD], sp                                ; $51F6: $08 $FD $10
    rst RST_18                                    ; $51F9: $DF
    add hl, bc                                    ; $51FA: $09
    ld a, [hl-]                                   ; $51FB: $3A
    rst RST_38                                    ; $51FC: $FF
    ret z                                         ; $51FD: $C8

    ld [$1AB0], sp                                ; $51FE: $08 $B0 $1A
    ld c, c                                       ; $5201: $49
    ld [$28CA], sp                                ; $5202: $08 $CA $28
    rst RST_08                                    ; $5205: $CF
    inc b                                         ; $5206: $04
    jr @-$31                                      ; $5207: $18 $CD

    ld [$F312], sp                                ; $5209: $08 $12 $F3
    ld h, c                                       ; $520C: $61
    call nc, $FE00                                ; $520D: $D4 $00 $FE
    inc bc                                        ; $5210: $03
    ld [$1007], sp                                ; $5211: $08 $07 $10

jr_030_5214:
    add a                                         ; $5214: $87
    ld [bc], a                                    ; $5215: $02
    rst RST_30                                    ; $5216: $F7
    jr jr_030_5221                                ; $5217: $18 $08

    sbc b                                         ; $5219: $98
    add hl, bc                                    ; $521A: $09
    ld a, a                                       ; $521B: $7F
    add hl, de                                    ; $521C: $19
    add hl, sp                                    ; $521D: $39
    add hl, bc                                    ; $521E: $09
    ld l, [hl]                                    ; $521F: $6E
    cp a                                          ; $5220: $BF

jr_030_5221:
    ld [$3F40], sp                                ; $5221: $08 $40 $3F
    jr jr_030_5214                                ; $5224: $18 $EE

    inc bc                                        ; $5226: $03
    add l                                         ; $5227: $85
    add c                                         ; $5228: $81

jr_030_5229:
    ld [$040F], sp                                ; $5229: $08 $0F $04
    rla                                           ; $522C: $17
    inc bc                                        ; $522D: $03
    ei                                            ; $522E: $FB
    db $10                                        ; $522F: $10
    ld [$F134], sp                                ; $5230: $08 $34 $F1
    rst RST_30                                    ; $5233: $F7
    jr z, jr_030_527F                             ; $5234: $28 $49

    dec h                                         ; $5236: $25
    ld l, b                                       ; $5237: $68
    di                                            ; $5238: $F3
    ld hl, $08BA                                  ; $5239: $21 $BA $08
    pop hl                                        ; $523C: $E1
    nop                                           ; $523D: $00
    rst RST_20                                    ; $523E: $E7
    nop                                           ; $523F: $00
    ret nz                                        ; $5240: $C0

    ld [$94FC], sp                                ; $5241: $08 $FC $94
    db $10                                        ; $5244: $10
    cp $5C                                        ; $5245: $FE $5C
    jr jr_030_5229                                ; $5247: $18 $E0

    nop                                           ; $5249: $00
    add b                                         ; $524A: $80
    or $91                                        ; $524B: $F6 $91
    db $10                                        ; $524D: $10
    rst RST_38                                    ; $524E: $FF
    ld d, $48                                     ; $524F: $16 $48
    ld a, b                                       ; $5251: $78
    ld hl, sp-$70                                 ; $5252: $F8 $90
    nop                                           ; $5254: $00
    db $FD                                        ; $5255: $FD
    adc c                                         ; $5256: $89
    ld [$1038], sp                                ; $5257: $08 $38 $10
    add hl, de                                    ; $525A: $19
    dec b                                         ; $525B: $05
    ld hl, $4A08                                  ; $525C: $21 $08 $4A

jr_030_525F:
    ld [hl], e                                    ; $525F: $73
    db $10                                        ; $5260: $10
    ld a, a                                       ; $5261: $7F
    ld de, $47C8                                  ; $5262: $11 $C8 $47
    jr jr_030_5290                                ; $5265: $18 $29

    jr z, jr_030_52A8                             ; $5267: $28 $3F

    add hl, bc                                    ; $5269: $09
    ld [$4917], sp                                ; $526A: $08 $17 $49
    rst RST_30                                    ; $526D: $F7
    ld h, d                                       ; $526E: $62
    ld [hl], a                                    ; $526F: $77
    rlca                                          ; $5270: $07
    ld [hl+], a                                   ; $5271: $22
    ld a, [hl]                                    ; $5272: $7E
    inc h                                         ; $5273: $24
    ld a, h                                       ; $5274: $7C
    jr z, jr_030_5277                             ; $5275: $28 $00

jr_030_5277:
    cp $01                                        ; $5277: $FE $01
    ld b, b                                       ; $5279: $40
    add e                                         ; $527A: $83
    ld [$03C7], sp                                ; $527B: $08 $C7 $03
    db $E3                                        ; $527E: $E3

jr_030_527F:
    pop bc                                        ; $527F: $C1
    di                                            ; $5280: $F3
    ld b, c                                       ; $5281: $41
    ld [$51FB], sp                                ; $5282: $08 $FB $51
    rst RST_38                                    ; $5285: $FF
    ldh a, [c]                                    ; $5286: $F2
    ld [$CE04], sp                                ; $5287: $08 $04 $CE
    add h                                         ; $528A: $84
    ld b, e                                       ; $528B: $43
    rst RST_08                                    ; $528C: $CF
    ld [$43F7], sp                                ; $528D: $08 $F7 $43

jr_030_5290:
    ld a, e                                       ; $5290: $7B
    jr nc, jr_030_5293                            ; $5291: $30 $00

jr_030_5293:
    xor $A2                                       ; $5293: $EE $A2
    add hl, sp                                    ; $5295: $39
    ld a, b                                       ; $5296: $78
    db $10                                        ; $5297: $10
    cp b                                          ; $5298: $B8
    db $10                                        ; $5299: $10
    db $FC                                        ; $529A: $FC
    ld [$41FE], sp                                ; $529B: $08 $FE $41
    ld a, h                                       ; $529E: $7C
    ret c                                         ; $529F: $D8

    and d                                         ; $52A0: $A2

jr_030_52A1:
    di                                            ; $52A1: $F3
    and c                                         ; $52A2: $A1
    db $E3                                        ; $52A3: $E3
    pop bc                                        ; $52A4: $C1
    ld [$4161], sp                                ; $52A5: $08 $61 $41

jr_030_52A8:
    add sp, $38                                   ; $52A8: $E8 $38
    cp [hl]                                       ; $52AA: $BE
    inc b                                         ; $52AB: $04
    inc a                                         ; $52AC: $3C
    jr jr_030_52AF                                ; $52AD: $18 $00

jr_030_52AF:
    call nc, $01FE                                ; $52AF: $D4 $FE $01
    rla                                           ; $52B2: $17

jr_030_52B3:
    ld [$103F], sp                                ; $52B3: $08 $3F $10
    rra                                           ; $52B6: $1F
    add hl, bc                                    ; $52B7: $09
    dec [hl]                                      ; $52B8: $35
    rrca                                          ; $52B9: $0F
    ld [bc], a                                    ; $52BA: $02
    ld [$9FA8], sp                                ; $52BB: $08 $A8 $9F
    db $10                                        ; $52BE: $10
    cp a                                          ; $52BF: $BF
    or b                                          ; $52C0: $B0
    dec hl                                        ; $52C1: $2B
    cp $30                                        ; $52C2: $FE $30
    ld l, b                                       ; $52C4: $68
    ld b, $6A                                     ; $52C5: $06 $6A
    rlca                                          ; $52C7: $07
    nop                                           ; $52C8: $00

jr_030_52C9:
    xor $75                                       ; $52C9: $EE $75
    dec b                                         ; $52CB: $05
    ld [$1058], sp                                ; $52CC: $08 $58 $10
    add a                                         ; $52CF: $87
    jr jr_030_52A1                                ; $52D0: $18 $CF

    db $10                                        ; $52D2: $10
    ld a, b                                       ; $52D3: $78
    adc a                                         ; $52D4: $8F
    jr z, @+$0A                                   ; $52D5: $28 $08

    sub b                                         ; $52D7: $90
    jr z, jr_030_525F                             ; $52D8: $28 $85

    rst RST_28                                    ; $52DA: $EF
    ld b, a                                       ; $52DB: $47
    nop                                           ; $52DC: $00
    ld [hl], a                                    ; $52DD: $77
    ld hl, $277F                                  ; $52DE: $21 $7F $27
    rst RST_20                                    ; $52E1: $E7
    ld b, c                                       ; $52E2: $41
    jp $D481                                      ; $52E3: $C3 $81 $D4


    nop                                           ; $52E6: $00
    cp $48                                        ; $52E7: $FE $48
    ld [$10FD], sp                                ; $52E9: $08 $FD $10
    rst RST_18                                    ; $52EC: $DF
    add hl, bc                                    ; $52ED: $09
    ld a, [hl-]                                   ; $52EE: $3A
    rst RST_38                                    ; $52EF: $FF
    ret z                                         ; $52F0: $C8

    ld [$1AB0], sp                                ; $52F1: $08 $B0 $1A
    ld c, c                                       ; $52F4: $49
    ld [$28CA], sp                                ; $52F5: $08 $CA $28
    rst RST_08                                    ; $52F8: $CF
    inc b                                         ; $52F9: $04
    jr jr_030_52C9                                ; $52FA: $18 $CD

    ld [$F312], sp                                ; $52FC: $08 $12 $F3
    ld h, c                                       ; $52FF: $61
    add sp, $00                                   ; $5300: $E8 $00
    cp $03                                        ; $5302: $FE $03
    ret nz                                        ; $5304: $C0

    ld [$40E0], sp                                ; $5305: $08 $E0 $40
    pop af                                        ; $5308: $F1
    ld a, [hl+]                                   ; $5309: $2A
    jr nz, jr_030_537C                            ; $530A: $20 $70

    ld [$08F0], sp                                ; $530C: $08 $F0 $08
    ld [hl], h                                    ; $530F: $74
    ld [$017E], sp                                ; $5310: $08 $7E $01
    inc h                                         ; $5313: $24
    db $FC                                        ; $5314: $FC
    jr z, jr_030_5353                             ; $5315: $28 $3C

    jr @-$62                                      ; $5317: $18 $9C

    ld [$AA00], sp                                ; $5319: $08 $00 $AA
    sbc $01                                       ; $531C: $DE $01
    ld [$1003], sp                                ; $531E: $08 $03 $10
    dec b                                         ; $5321: $05
    jr jr_030_52B3                                ; $5322: $18 $8F

    ld bc, $CF04                                  ; $5324: $01 $04 $CF
    add a                                         ; $5327: $87
    rst RST_20                                    ; $5328: $E7
    ld b, c                                       ; $5329: $41
    ld [hl], e                                    ; $532A: $73
    ld hl, $1709                                  ; $532B: $21 $09 $17
    daa                                           ; $532E: $27
    ld [bc], a                                    ; $532F: $02
    rlca                                          ; $5330: $07
    ld [$680E], sp                                ; $5331: $08 $0E $68
    add hl, bc                                    ; $5334: $09
    nop                                           ; $5335: $00
    xor b                                         ; $5336: $A8
    cp $8A                                        ; $5337: $FE $8A
    ld [$10DF], sp                                ; $5339: $08 $DF $10
    rst RST_28                                    ; $533C: $EF
    add l                                         ; $533D: $85
    push af                                       ; $533E: $F5
    ld bc, $FEE0                                  ; $533F: $01 $E0 $FE
    sub h                                         ; $5342: $94
    cp a                                          ; $5343: $BF
    ld [de], a                                    ; $5344: $12
    cp e                                          ; $5345: $BB
    ld de, $4218                                  ; $5346: $11 $18 $42
    inc de                                        ; $5349: $13
    add hl, de                                    ; $534A: $19
    pop af                                        ; $534B: $F1
    and b                                         ; $534C: $A0
    ldh a, [$FF60]                                ; $534D: $F0 $60
    ld [hl], b                                    ; $534F: $70
    ld b, b                                       ; $5350: $40
    rst RST_28                                    ; $5351: $EF
    nop                                           ; $5352: $00

jr_030_5353:
    cp $03                                        ; $5353: $FE $03
    add b                                         ; $5355: $80
    ccf                                           ; $5356: $3F
    inc c                                         ; $5357: $0C
    rlca                                          ; $5358: $07
    rlca                                          ; $5359: $07
    ld e, a                                       ; $535A: $5F
    ld bc, $030A                                  ; $535B: $01 $0A $03
    db $10                                        ; $535E: $10

jr_030_535F:
    dec l                                         ; $535F: $2D
    dec bc                                        ; $5360: $0B
    ld a, a                                       ; $5361: $7F
    dec b                                         ; $5362: $05
    ld e, b                                       ; $5363: $58
    jp $E708                                      ; $5364: $C3 $08 $E7


    db $10                                        ; $5367: $10
    ld [$FE82], sp                                ; $5368: $08 $82 $FE
    db $E4                                        ; $536B: $E4
    ld a, [hl+]                                   ; $536C: $2A
    rst RST_38                                    ; $536D: $FF
    and h                                         ; $536E: $A4
    ld [$08AF], sp                                ; $536F: $08 $AF $08
    jr nz, jr_030_537C                            ; $5372: $20 $08

    cpl                                           ; $5374: $2F
    xor c                                         ; $5375: $A9
    ld [$08A8], sp                                ; $5376: $08 $A8 $08
    ld c, b                                       ; $5379: $48
    ld c, c                                       ; $537A: $49
    cp a                                          ; $537B: $BF

jr_030_537C:
    ld [$A800], sp                                ; $537C: $08 $00 $A8
    cp $01                                        ; $537F: $FE $01
    ld [$1093], sp                                ; $5381: $08 $93 $10
    ccf                                           ; $5384: $3F
    db $10                                        ; $5385: $10
    sbc a                                         ; $5386: $9F
    add hl, de                                    ; $5387: $19
    rrca                                          ; $5388: $0F
    rst RST_08                                    ; $5389: $CF
    add b                                         ; $538A: $80
    cp c                                          ; $538B: $B9
    jr jr_030_5395                                ; $538C: $18 $07

    rst RST_00                                    ; $538E: $C7
    jr z, @-$6F                                   ; $538F: $28 $8F

    jr @-$77                                      ; $5391: $18 $87

    rst RST_18                                    ; $5393: $DF
    adc b                                         ; $5394: $88

jr_030_5395:
    add hl, bc                                    ; $5395: $09
    add hl, hl                                    ; $5396: $29
    nop                                           ; $5397: $00
    cp $D6                                        ; $5398: $FE $D6
    add b                                         ; $539A: $80
    ld [$10F8], sp                                ; $539B: $08 $F8 $10
    db $FC                                        ; $539E: $FC
    db $10                                        ; $539F: $10
    add hl, de                                    ; $53A0: $19
    ldh a, [$FFF5]                                ; $53A1: $F0 $F5
    ld [$1018], sp                                ; $53A3: $08 $18 $10
    add hl, de                                    ; $53A6: $19
    ret nz                                        ; $53A7: $C0

    ld [$49E1], sp                                ; $53A8: $08 $E1 $49
    ld b, a                                       ; $53AB: $47
    ldh [rOBP0], a                                ; $53AC: $E0 $48
    sub b                                         ; $53AE: $90
    sbc h                                         ; $53AF: $9C
    ld [$FE00], sp                                ; $53B0: $08 $00 $FE
    ld bc, $5C51                                  ; $53B3: $01 $51 $5C
    ld [$10FE], sp                                ; $53B6: $08 $FE $10
    ld a, a                                       ; $53B9: $7F
    ld h, $3E                                     ; $53BA: $26 $3E
    add b                                         ; $53BC: $80
    or d                                          ; $53BD: $B2
    ld [$2810], sp                                ; $53BE: $08 $10 $28
    db $10                                        ; $53C1: $10
    rst RST_38                                    ; $53C2: $FF
    ld h, c                                       ; $53C3: $61
    ld hl, sp-$40                                 ; $53C4: $F8 $C0
    ld b, e                                       ; $53C6: $43
    pop bc                                        ; $53C7: $C1
    ld a, b                                       ; $53C8: $78
    rra                                           ; $53C9: $1F
    ld bc, $1E3F                                  ; $53CA: $01 $3F $1E
    nop                                           ; $53CD: $00
    xor $DA                                       ; $53CE: $EE $DA
    ld d, b                                       ; $53D0: $50
    ld [$1003], sp                                ; $53D1: $08 $03 $10
    add hl, de                                    ; $53D4: $19
    inc b                                         ; $53D5: $04
    ld [$BB0F], sp                                ; $53D6: $08 $0F $BB
    db $10                                        ; $53D9: $10
    rlca                                          ; $53DA: $07
    ld b, b                                       ; $53DB: $40
    nop                                           ; $53DC: $00
    jr z, jr_030_535F                             ; $53DD: $28 $80

    ld [$DAF0], sp                                ; $53DF: $08 $F0 $DA
    db $10                                        ; $53E2: $10
    add hl, bc                                    ; $53E3: $09
    add c                                         ; $53E4: $81
    sbc h                                         ; $53E5: $9C
    rlca                                          ; $53E6: $07
    ldh [$FF08], a                                ; $53E7: $E0 $08
    ldh a, [$FFC5]                                ; $53E9: $F0 $C5
    db $10                                        ; $53EB: $10
    dec de                                        ; $53EC: $1B
    ld hl, sp+$10                                 ; $53ED: $F8 $10
    jr c, jr_030_53FB                             ; $53EF: $38 $0A

    add hl, sp                                    ; $53F1: $39
    ld [$7123], sp                                ; $53F2: $08 $23 $71
    jr nz, @+$52                                  ; $53F5: $20 $50

    ld b, b                                       ; $53F7: $40
    ret nz                                        ; $53F8: $C0

    add b                                         ; $53F9: $80
    nop                                           ; $53FA: $00

jr_030_53FB:
    xor $61                                       ; $53FB: $EE $61
    ld h, b                                       ; $53FD: $60
    ret                                           ; $53FE: $C9


    db $10                                        ; $53FF: $10
    ld a, d                                       ; $5400: $7A
    jr nc, jr_030_547A                            ; $5401: $30 $77

    ld [hl+], a                                   ; $5403: $22
    ld [$211B], sp                                ; $5404: $08 $1B $21
    ld a, a                                       ; $5407: $7F
    daa                                           ; $5408: $27
    ld [$F8F0], sp                                ; $5409: $08 $F0 $F8
    jp z, $B7E8                                   ; $540C: $CA $E8 $B7

    ld [$88FF], sp                                ; $540F: $08 $FF $88
    ld c, b                                       ; $5412: $48
    rra                                           ; $5413: $1F
    nop                                           ; $5414: $00
    cp $01                                        ; $5415: $FE $01
    ld d, b                                       ; $5417: $50
    inc c                                         ; $5418: $0C
    ld [$101E], sp                                ; $5419: $08 $1E $10
    rrca                                          ; $541C: $0F
    ld b, $8E                                     ; $541D: $06 $8E
    inc b                                         ; $541F: $04
    and c                                         ; $5420: $A1
    add hl, bc                                    ; $5421: $09
    ld c, $0E                                     ; $5422: $0E $0E
    rlca                                          ; $5424: $07
    ld [bc], a                                    ; $5425: $02
    add e                                         ; $5426: $83
    ld bc, $EA00                                  ; $5427: $01 $00 $EA
    rst RST_30                                    ; $542A: $F7
    ld b, $7D                                     ; $542B: $06 $7D
    ld [$1C08], sp                                ; $542D: $08 $08 $1C
    db $10                                        ; $5430: $10
    jr c, jr_030_543A                             ; $5431: $38 $07

    db $10                                        ; $5433: $10
    ldh a, [rNR41]                                ; $5434: $F0 $20
    ldh [$FFC0], a                                ; $5436: $E0 $C0
    nop                                           ; $5438: $00
    rst RST_00                                    ; $5439: $C7

jr_030_543A:
    ld [bc], a                                    ; $543A: $02
    ld e, c                                       ; $543B: $59
    rra                                           ; $543C: $1F
    ld [$10FF], sp                                ; $543D: $08 $FF $10
    ld [$FCE4], sp                                ; $5440: $08 $E4 $FC
    jp z, $0DA7                                   ; $5443: $CA $A7 $0D

    ld e, $48                                     ; $5446: $1E $48
    rrca                                          ; $5448: $0F
    ld b, $00                                     ; $5449: $06 $00
    rst RST_20                                    ; $544B: $E7
    ld [bc], a                                    ; $544C: $02
    ld d, l                                       ; $544D: $55
    sub b                                         ; $544E: $90
    ld [$10F8], sp                                ; $544F: $08 $F8 $10
    sbc h                                         ; $5452: $9C
    sbc b                                         ; $5453: $98
    inc e                                         ; $5454: $1C
    ld a, [bc]                                    ; $5455: $0A
    ld c, d                                       ; $5456: $4A
    dec e                                         ; $5457: $1D
    ld [$091F], sp                                ; $5458: $08 $1F $09
    ld [$E90A], sp                                ; $545B: $08 $0A $E9
    rlca                                          ; $545E: $07
    ld [hl], l                                    ; $545F: $75
    ld [bc], a                                    ; $5460: $02
    nop                                           ; $5461: $00
    rst RST_20                                    ; $5462: $E7
    inc b                                         ; $5463: $04
    ld hl, $7308                                  ; $5464: $21 $08 $73
    db $10                                        ; $5467: $10
    dec [hl]                                      ; $5468: $35
    add hl, sp                                    ; $5469: $39
    db $10                                        ; $546A: $10
    ld sp, hl                                     ; $546B: $F9
    add hl, bc                                    ; $546C: $09
    adc c                                         ; $546D: $89
    ld c, b                                       ; $546E: $48
    ld bc, $7A08                                  ; $546F: $01 $08 $7A
    inc bc                                        ; $5472: $03
    db $10                                        ; $5473: $10
    add hl, bc                                    ; $5474: $09
    add hl, hl                                    ; $5475: $29
    rlca                                          ; $5476: $07
    jr nz, jr_030_5481                            ; $5477: $20 $08

    ld a, h                                       ; $5479: $7C

jr_030_547A:
    add b                                         ; $547A: $80
    db $10                                        ; $547B: $10
    cp $2C                                        ; $547C: $FE $2C
    db $FC                                        ; $547E: $FC
    ldh a, [$FFF7]                                ; $547F: $F0 $F7

jr_030_5481:
    ld b, b                                       ; $5481: $40
    rst RST_28                                    ; $5482: $EF
    inc b                                         ; $5483: $04
    ld b, a                                       ; $5484: $47
    rst RST_38                                    ; $5485: $FF
    ld c, b                                       ; $5486: $48
    ret z                                         ; $5487: $C8

    add b                                         ; $5488: $80
    add hl, bc                                    ; $5489: $09
    sbc a                                         ; $548A: $9F
    ld [$8F3D], sp                                ; $548B: $08 $3D $8F
    rlca                                          ; $548E: $07
    nop                                           ; $548F: $00
    rst RST_30                                    ; $5490: $F7
    rlca                                          ; $5491: $07
    nop                                           ; $5492: $00
    sbc c                                         ; $5493: $99
    ld [$E8CD], sp                                ; $5494: $08 $CD $E8
    db $10                                        ; $5497: $10
    cp a                                          ; $5498: $BF
    add hl, de                                    ; $5499: $19
    nop                                           ; $549A: $00
    ld c, d                                       ; $549B: $4A
    add b                                         ; $549C: $80
    ld [$C07F], sp                                ; $549D: $08 $7F $C0
    db $10                                        ; $54A0: $10
    add hl, de                                    ; $54A1: $19
    rlca                                          ; $54A2: $07
    rlca                                          ; $54A3: $07
    ei                                            ; $54A4: $FB
    add hl, bc                                    ; $54A5: $09
    add hl, hl                                    ; $54A6: $29
    cp $07                                        ; $54A7: $FE $07
    rlca                                          ; $54A9: $07
    rlca                                          ; $54AA: $07
    rst RST_38                                    ; $54AB: $FF
    rlca                                          ; $54AC: $07
    rlca                                          ; $54AD: $07
    rlca                                          ; $54AE: $07
    add b                                         ; $54AF: $80
    cp a                                          ; $54B0: $BF
    ld [$10C0], sp                                ; $54B1: $08 $C0 $10
    add hl, bc                                    ; $54B4: $09
    add hl, hl                                    ; $54B5: $29
    rlca                                          ; $54B6: $07
    rlca                                          ; $54B7: $07
    inc bc                                        ; $54B8: $03
    ld d, d                                       ; $54B9: $52
    ld [bc], a                                    ; $54BA: $02
    ld [$100F], sp                                ; $54BB: $08 $0F $10
    rra                                           ; $54BE: $1F
    ld c, $18                                     ; $54BF: $0E $18
    inc bc                                        ; $54C1: $03
    ld l, e                                       ; $54C2: $6B
    rlca                                          ; $54C3: $07
    jr z, jr_030_54DE                             ; $54C4: $28 $18

    ld b, $38                                     ; $54C6: $06 $38
    ld a, [bc]                                    ; $54C8: $0A
    ld e, c                                       ; $54C9: $59
    ld a, c                                       ; $54CA: $79
    push de                                       ; $54CB: $D5
    rlca                                          ; $54CC: $07
    dec b                                         ; $54CD: $05
    ld bc, $C708                                  ; $54CE: $01 $08 $C7
    db $10                                        ; $54D1: $10
    rst RST_28                                    ; $54D2: $EF
    db $10                                        ; $54D3: $10
    ld [bc], a                                    ; $54D4: $02
    rst RST_30                                    ; $54D5: $F7
    ld hl, $2377                                  ; $54D6: $21 $77 $23
    rst RST_38                                    ; $54D9: $FF
    ld h, l                                       ; $54DA: $65
    jr z, @-$5B                                   ; $54DB: $28 $A3

    dec a                                         ; $54DD: $3D

jr_030_54DE:
    ei                                            ; $54DE: $FB
    ld d, b                                       ; $54DF: $50
    nop                                           ; $54E0: $00
    rst RST_00                                    ; $54E1: $C7
    rlca                                          ; $54E2: $07
    nop                                           ; $54E3: $00
    ret nc                                        ; $54E4: $D0

    ld [$F940], sp                                ; $54E5: $08 $40 $F9
    db $10                                        ; $54E8: $10
    rst RST_18                                    ; $54E9: $DF
    add hl, bc                                    ; $54EA: $09
    sbc a                                         ; $54EB: $9F
    ld [bc], a                                    ; $54EC: $02
    cp e                                          ; $54ED: $BB
    ld de, $388E                                  ; $54EE: $11 $8E $38
    db $10                                        ; $54F1: $10
    ldh a, [$FFE0]                                ; $54F2: $F0 $E0
    nop                                           ; $54F4: $00
    or a                                          ; $54F5: $B7
    ld b, $21                                     ; $54F6: $06 $21
    and [hl]                                      ; $54F8: $A6
    ld [$10F7], sp                                ; $54F9: $08 $F7 $10
    rst RST_28                                    ; $54FC: $EF
    rst RST_00                                    ; $54FD: $C7
    nop                                           ; $54FE: $00
    add sp, $07                                   ; $54FF: $E8 $07
    add c                                         ; $5501: $81
    ld [$048F], sp                                ; $5502: $08 $8F $04
    rst RST_20                                    ; $5505: $E7
    add c                                         ; $5506: $81
    pop af                                        ; $5507: $F1
    ld h, b                                       ; $5508: $60
    nop                                           ; $5509: $00
    ld [$07C7], a                                 ; $550A: $EA $C7 $07

jr_030_550D:
    nop                                           ; $550D: $00
    or b                                          ; $550E: $B0
    ld [$10F8], sp                                ; $550F: $08 $F8 $10
    cp l                                          ; $5512: $BD
    ld bc, $FB08                                  ; $5513: $01 $08 $FB
    ld hl, $E2F7                                  ; $5516: $21 $F7 $E2
    ld a, [$4830]                                 ; $5519: $FA $30 $48
    ld [hl], l                                    ; $551C: $75
    ret nc                                        ; $551D: $D0

    nop                                           ; $551E: $00
    or a                                          ; $551F: $B7
    ld b, $01                                     ; $5520: $06 $01
    ld [$1003], sp                                ; $5522: $08 $03 $10
    and b                                         ; $5525: $A0
    add hl, de                                    ; $5526: $19
    add e                                         ; $5527: $83
    db $10                                        ; $5528: $10
    rst RST_08                                    ; $5529: $CF
    add d                                         ; $552A: $82
    rst RST_38                                    ; $552B: $FF
    ld c, b                                       ; $552C: $48
    ld a, e                                       ; $552D: $7B
    ld a, d                                       ; $552E: $7A
    ld sp, $B700                                  ; $552F: $31 $00 $B7
    rlca                                          ; $5532: $07
    nop                                           ; $5533: $00
    ldh [$FF08], a                                ; $5534: $E0 $08
    ldh a, [$FFD2]                                ; $5536: $F0 $D2
    stop                                          ; $5538: $10 $00
    ld b, b                                       ; $553A: $40
    add hl, de                                    ; $553B: $19
    ld hl, sp+$10                                 ; $553C: $F8 $10
    ld [$BAD0], sp                                ; $553E: $08 $D0 $BA
    ld [$5A30], sp                                ; $5541: $08 $30 $5A
    rst RST_00                                    ; $5544: $C7
    ld [bc], a                                    ; $5545: $02
    ld bc, $0308                                  ; $5546: $01 $08 $03
    and b                                         ; $5549: $A0
    db $10                                        ; $554A: $10
    rlca                                          ; $554B: $07
    ld [$041F], sp                                ; $554C: $08 $1F $04
    inc a                                         ; $554F: $3C
    jr jr_030_55CA                                ; $5550: $18 $78

    ld c, h                                       ; $5552: $4C
    jr nz, jr_030_550D                            ; $5553: $20 $B8

    ld b, b                                       ; $5555: $40
    ld [hl], c                                    ; $5556: $71
    jr jr_030_5591                                ; $5557: $18 $38

    db $10                                        ; $5559: $10
    ld e, $7F                                     ; $555A: $1E $7F
    inc c                                         ; $555C: $0C
    nop                                           ; $555D: $00
    rst RST_20                                    ; $555E: $E7
    ld [bc], a                                    ; $555F: $02
    sub b                                         ; $5560: $90
    ld [$09A9], sp                                ; $5561: $08 $A9 $09
    call nc, $0129                                ; $5564: $D4 $29 $01
    ld h, b                                       ; $5567: $60
    ld [$10F2], sp                                ; $5568: $08 $F2 $10
    rst RST_38                                    ; $556B: $FF
    sub d                                         ; $556C: $92
    ld h, b                                       ; $556D: $60
    sbc [hl]                                      ; $556E: $9E
    rst RST_28                                    ; $556F: $EF
    ld [bc], a                                    ; $5570: $02
    ld b, [hl]                                    ; $5571: $46
    ld b, c                                       ; $5572: $41
    ld e, e                                       ; $5573: $5B
    nop                                           ; $5574: $00
    ld b, $01                                     ; $5575: $06 $01
    ld b, a                                       ; $5577: $47
    ld e, h                                       ; $5578: $5C
    inc bc                                        ; $5579: $03
    db $10                                        ; $557A: $10
    ld a, a                                       ; $557B: $7F
    xor e                                         ; $557C: $AB
    inc bc                                        ; $557D: $03
    inc b                                         ; $557E: $04
    ld [$10FE], sp                                ; $557F: $08 $FE $10
    rst RST_38                                    ; $5582: $FF
    stop                                          ; $5583: $10 $00
    dec l                                         ; $5585: $2D
    db $10                                        ; $5586: $10
    jr c, @+$0E                                   ; $5587: $38 $0C

    add hl, sp                                    ; $5589: $39
    ld [$1158], sp                                ; $558A: $08 $58 $11
    ld [$01BA], sp                                ; $558D: $08 $BA $01
    add b                                         ; $5590: $80

jr_030_5591:
    nop                                           ; $5591: $00
    rst RST_28                                    ; $5592: $EF
    ld [$100E], sp                                ; $5593: $08 $0E $10
    ccf                                           ; $5596: $3F
    jr c, @+$04                                   ; $5597: $38 $02

    ld a, a                                       ; $5599: $7F
    stop                                          ; $559A: $10 $00
    cp b                                          ; $559C: $B8
    inc de                                        ; $559D: $13
    ld bc, $720F                                  ; $559E: $01 $0F $72
    inc bc                                        ; $55A1: $03
    jr c, jr_030_5604                             ; $55A2: $38 $60

    ret z                                         ; $55A4: $C8

    ld [hl], d                                    ; $55A5: $72
    rst RST_30                                    ; $55A6: $F7
    ld l, b                                       ; $55A7: $68
    rst RST_00                                    ; $55A8: $C7
    dec a                                         ; $55A9: $3D
    add d                                         ; $55AA: $82
    add a                                         ; $55AB: $87
    jr jr_030_55AE                                ; $55AC: $18 $00

jr_030_55AE:
    cp $01                                        ; $55AE: $FE $01
    add b                                         ; $55B0: $80
    ld [$C05B], sp                                ; $55B1: $08 $5B $C0
    db $10                                        ; $55B4: $10
    db $E3                                        ; $55B5: $E3
    db $10                                        ; $55B6: $10
    sbc b                                         ; $55B7: $98
    add e                                         ; $55B8: $83
    nop                                           ; $55B9: $00
    ld hl, sp+$61                                 ; $55BA: $F8 $61
    jp Jump_000_3808                              ; $55BC: $C3 $08 $38


    pop bc                                        ; $55BF: $C1
    di                                            ; $55C0: $F3
    ld h, c                                       ; $55C1: $61
    ld h, a                                       ; $55C2: $67
    ret nc                                        ; $55C3: $D0

    ld c, [hl]                                    ; $55C4: $4E
    rlca                                          ; $55C5: $07
    ld [$040E], sp                                ; $55C6: $08 $0E $04
    nop                                           ; $55C9: $00

jr_030_55CA:
    rst RST_30                                    ; $55CA: $F7
    ld [bc], a                                    ; $55CB: $02
    ld h, b                                       ; $55CC: $60
    or l                                          ; $55CD: $B5
    ld [$10F0], sp                                ; $55CE: $08 $F0 $10
    ld [$0920], sp                                ; $55D1: $08 $20 $09
    pop af                                        ; $55D4: $F1
    ld [$E880], sp                                ; $55D5: $08 $80 $E8
    ld hl, $22FF                                  ; $55D8: $21 $FF $22
    ld a, [hl]                                    ; $55DB: $7E
    inc l                                         ; $55DC: $2C
    ld a, h                                       ; $55DD: $7C
    jr nc, jr_030_55CA                            ; $55DE: $30 $EA

    nop                                           ; $55E0: $00
    rst RST_10                                    ; $55E1: $D7
    nop                                           ; $55E2: $00
    ld bc, $0308                                  ; $55E3: $01 $08 $03
    db $10                                        ; $55E6: $10
    ld a, a                                       ; $55E7: $7F
    cp $18                                        ; $55E8: $FE $18
    xor b                                         ; $55EA: $A8
    stop                                          ; $55EB: $10 $00
    ret c                                         ; $55ED: $D8

    ret nc                                        ; $55EE: $D0

    ld e, d                                       ; $55EF: $5A
    add c                                         ; $55F0: $81
    push af                                       ; $55F1: $F5
    ld a, [de]                                    ; $55F2: $1A
    ld l, l                                       ; $55F3: $6D
    nop                                           ; $55F4: $00
    cp $40                                        ; $55F5: $FE $40
    ld [$10E0], sp                                ; $55F7: $08 $E0 $10
    inc b                                         ; $55FA: $04
    or $A0                                        ; $55FB: $F6 $A0
    rst RST_28                                    ; $55FD: $EF
    add [hl]                                      ; $55FE: $86
    rst RST_00                                    ; $55FF: $C7
    ret nc                                        ; $5600: $D0

    pop bc                                        ; $5601: $C1
    add b                                         ; $5602: $80
    ld d, [hl]                                    ; $5603: $56

jr_030_5604:
    ret nz                                        ; $5604: $C0

    inc c                                         ; $5605: $0C
    jp $E708                                      ; $5606: $C3 $08 $E7


    stop                                          ; $5609: $10 $00
    ld bc, $00FD                                  ; $560B: $01 $FD $00
    cp $05                                        ; $560E: $FE $05
    sub b                                         ; $5610: $90
    ld [$C2B9], sp                                ; $5611: $08 $B9 $C2
    ld [$8700], sp                                ; $5614: $08 $00 $87
    ld [bc], a                                    ; $5617: $02
    ld c, $04                                     ; $5618: $0E $04
    inc a                                         ; $561A: $3C
    ld [$30F8], sp                                ; $561B: $08 $F8 $30
    ld a, d                                       ; $561E: $7A
    ldh a, [$FF60]                                ; $561F: $F0 $60
    nop                                           ; $5621: $00
    rst RST_00                                    ; $5622: $C7
    nop                                           ; $5623: $00
    ld bc, $0308                                  ; $5624: $01 $08 $03
    xor b                                         ; $5627: $A8
    db $10                                        ; $5628: $10
    daa                                           ; $5629: $27
    jr jr_030_56AB                                ; $562A: $18 $7F

    db $10                                        ; $562C: $10
    ccf                                           ; $562D: $3F
    jr jr_030_564F                                ; $562E: $18 $1F

    or a                                          ; $5630: $B7
    ld b, b                                       ; $5631: $40
    rrca                                          ; $5632: $0F
    add sp, $09                                   ; $5633: $E8 $09
    rlca                                          ; $5635: $07
    jr z, jr_030_5638                             ; $5636: $28 $00

jr_030_5638:
    adc d                                         ; $5638: $8A
    or l                                          ; $5639: $B5
    jr z, @+$04                                   ; $563A: $28 $02

    nop                                           ; $563C: $00
    cp $80                                        ; $563D: $FE $80
    ld [$10D2], sp                                ; $563F: $08 $D2 $10
    ld hl, $92FF                                  ; $5642: $21 $FF $92
    ld [$FBF9], sp                                ; $5645: $08 $F9 $FB

jr_030_5648:
    add c                                         ; $5648: $81
    jp Jump_030_7A0E                              ; $5649: $C3 $0E $7A


    pop bc                                        ; $564C: $C1
    ld a, b                                       ; $564D: $78
    sbc c                                         ; $564E: $99

jr_030_564F:
    rlca                                          ; $564F: $07
    dec b                                         ; $5650: $05
    ld [bc], a                                    ; $5651: $02
    ld [$9A87], sp                                ; $5652: $08 $87 $9A
    db $10                                        ; $5655: $10
    add e                                         ; $5656: $83
    ld bc, $28C0                                  ; $5657: $01 $C0 $28
    and c                                         ; $565A: $A1
    ld [$17F0], sp                                ; $565B: $08 $F0 $17
    jr nz, @-$1E                                  ; $565E: $20 $E0

    ld b, b                                       ; $5660: $40
    ld [$19C0], sp                                ; $5661: $08 $C0 $19
    nop                                           ; $5664: $00
    rst RST_10                                    ; $5665: $D7
    xor c                                         ; $5666: $A9
    nop                                           ; $5667: $00
    ld [$1C08], sp                                ; $5668: $08 $08 $1C

jr_030_566B:
    db $10                                        ; $566B: $10
    ld e, $0C                                     ; $566C: $1E $0C
    add hl, de                                    ; $566E: $19
    ld c, [hl]                                    ; $566F: $4E
    sbc h                                         ; $5670: $9C
    ld [$88DC], sp                                ; $5671: $08 $DC $88
    add hl, bc                                    ; $5674: $09
    add hl, hl                                    ; $5675: $29
    ld c, c                                       ; $5676: $49
    rrca                                          ; $5677: $0F
    ld e, $04                                     ; $5678: $1E $04
    rlca                                          ; $567A: $07
    inc bc                                        ; $567B: $03
    nop                                           ; $567C: $00
    rst RST_30                                    ; $567D: $F7
    rlca                                          ; $567E: $07
    inc b                                         ; $567F: $04
    db $10                                        ; $5680: $10
    and b                                         ; $5681: $A0
    ld [$1038], sp                                ; $5682: $08 $38 $10
    ld [hl], c                                    ; $5685: $71
    jr nz, jr_030_566B                            ; $5686: $20 $E3

    ld b, c                                       ; $5688: $41
    pop bc                                        ; $5689: $C1
    ld [hl], l                                    ; $568A: $75
    add b                                         ; $568B: $80
    nop                                           ; $568C: $00
    sub a                                         ; $568D: $97

jr_030_568E:
    ld b, $60                                     ; $568E: $06 $60
    ld [$10F4], sp                                ; $5690: $08 $F4 $10
    ld d, $7E                                     ; $5693: $16 $7E
    inc h                                         ; $5695: $24
    ld a, h                                       ; $5696: $7C
    ldh a, [$FFF8]                                ; $5697: $F0 $F8
    add sp, $08                                   ; $5699: $E8 $08
    ldh a, [$FF0E]                                ; $569B: $F0 $0E
    db $FC                                        ; $569D: $FC
    jr z, jr_030_568E                             ; $569E: $28 $EE

    call nz, $C700                                ; $56A0: $C4 $00 $C7
    nop                                           ; $56A3: $00
    jr jr_030_5648                                ; $56A4: $18 $A2

    ld [$103F], sp                                ; $56A6: $08 $3F $10
    rra                                           ; $56A9: $1F
    rlca                                          ; $56AA: $07

jr_030_56AB:
    ld b, a                                       ; $56AB: $47
    jr z, @+$01                                   ; $56AC: $28 $FF

    xor d                                         ; $56AE: $AA
    db $10                                        ; $56AF: $10
    ld a, a                                       ; $56B0: $7F
    add sp, $39                                   ; $56B1: $E8 $39
    jr z, jr_030_56B6                             ; $56B3: $28 $01

    ld a, [bc]                                    ; $56B5: $0A

jr_030_56B6:
    inc bc                                        ; $56B6: $03
    rst RST_00                                    ; $56B7: $C7
    db $10                                        ; $56B8: $10
    ld a, b                                       ; $56B9: $78
    ld [bc], a                                    ; $56BA: $02
    ld a, $1C                                     ; $56BB: $3E $1C
    nop                                           ; $56BD: $00
    cp $03                                        ; $56BE: $FE $03
    ld e, a                                       ; $56C0: $5F
    add b                                         ; $56C1: $80
    inc e                                         ; $56C2: $1C
    ret nz                                        ; $56C3: $C0

    db $10                                        ; $56C4: $10
    dec c                                         ; $56C5: $0D
    ld l, e                                       ; $56C6: $6B
    rlca                                          ; $56C7: $07
    ld bc, $0853                                  ; $56C8: $01 $53 $08
    ld [$101F], sp                                ; $56CB: $08 $1F $10
    rrca                                          ; $56CE: $0F
    rlca                                          ; $56CF: $07
    nop                                           ; $56D0: $00
    jr z, @-$78                                   ; $56D1: $28 $86

    ld [$3F01], sp                                ; $56D3: $08 $01 $3F
    ld b, $7F                                     ; $56D6: $06 $7F
    stop                                          ; $56D8: $10 $00
    ld de, $1737                                  ; $56DA: $11 $37 $17
    ld [bc], a                                    ; $56DD: $02
    ld c, b                                       ; $56DE: $48
    ld [$5803], sp                                ; $56DF: $08 $03 $58
    nop                                           ; $56E2: $00

jr_030_56E3:
    rst RST_30                                    ; $56E3: $F7
    xor b                                         ; $56E4: $A8
    ld [bc], a                                    ; $56E5: $02
    ret nz                                        ; $56E6: $C0

    ld [$10E0], sp                                ; $56E7: $08 $E0 $10
    pop bc                                        ; $56EA: $C1
    add b                                         ; $56EB: $80
    di                                            ; $56EC: $F3
    add b                                         ; $56ED: $80
    sub b                                         ; $56EE: $90
    rst RST_38                                    ; $56EF: $FF
    ld [hl], d                                    ; $56F0: $72
    cp $84                                        ; $56F1: $FE $84
    adc [hl]                                      ; $56F3: $8E
    inc b                                         ; $56F4: $04
    ld c, $D7                                     ; $56F5: $0E $D7
    ld [$C3F9], sp                                ; $56F7: $08 $F9 $C3
    ld e, b                                       ; $56FA: $58
    pop hl                                        ; $56FB: $E1
    adc b                                         ; $56FC: $88
    xor c                                         ; $56FD: $A9
    rlca                                          ; $56FE: $07
    cp h                                          ; $56FF: $BC
    ld bc, $08FC                                  ; $5700: $01 $FC $08
    ret z                                         ; $5703: $C8

    db $10                                        ; $5704: $10
    add sp, $22                                   ; $5705: $E8 $22
    ld [hl], e                                    ; $5707: $73
    ld c, b                                       ; $5708: $48
    ld hl, $E30B                                  ; $5709: $21 $0B $E3
    ld b, c                                       ; $570C: $41
    add hl, bc                                    ; $570D: $09
    rst RST_08                                    ; $570E: $CF
    add d                                         ; $570F: $82
    sbc [hl]                                      ; $5710: $9E
    ld [hl], h                                    ; $5711: $74
    inc c                                         ; $5712: $0C
    nop                                           ; $5713: $00
    sbc $39                                       ; $5714: $DE $39
    ld e, $10                                     ; $5716: $1E $10
    cpl                                           ; $5718: $2F
    inc b                                         ; $5719: $04
    ld [bc], a                                    ; $571A: $02
    ld a, a                                       ; $571B: $7F
    daa                                           ; $571C: $27
    ccf                                           ; $571D: $3F
    inc e                                         ; $571E: $1C
    sbc a                                         ; $571F: $9F
    ld [$0B08], sp                                ; $5720: $08 $08 $0B
    ld b, l                                       ; $5723: $45
    cp a                                          ; $5724: $BF
    jr z, jr_030_56E3                             ; $5725: $28 $BC

    db $10                                        ; $5727: $10
    sub b                                         ; $5728: $90
    adc b                                         ; $5729: $88
    rrca                                          ; $572A: $0F
    ld [$1F75], sp                                ; $572B: $08 $75 $1F
    db $10                                        ; $572E: $10
    add hl, de                                    ; $572F: $19
    dec b                                         ; $5730: $05
    ld bc, $C308                                  ; $5731: $01 $08 $C3
    db $10                                        ; $5734: $10
    ld [bc], a                                    ; $5735: $02
    push hl                                       ; $5736: $E5
    ret nz                                        ; $5737: $C0

    rst RST_08                                    ; $5738: $CF
    inc b                                         ; $5739: $04
    rlca                                          ; $573A: $07
    inc bc                                        ; $573B: $03
    add hl, sp                                    ; $573C: $39
    db $E3                                        ; $573D: $E3
    ld [bc], a                                    ; $573E: $02
    pop bc                                        ; $573F: $C1
    di                                            ; $5740: $F3
    ld hl, $2277                                  ; $5741: $21 $77 $22
    rst RST_30                                    ; $5744: $F7
    ld [$3BE7], sp                                ; $5745: $08 $E7 $3B
    jp nz, Jump_030_78CE                          ; $5748: $C2 $CE $78

    nop                                           ; $574B: $00
    cp $80                                        ; $574C: $FE $80
    ld [$A8E0], sp                                ; $574E: $08 $E0 $A8
    db $10                                        ; $5751: $10
    db $E4                                        ; $5752: $E4
    ld [$10FE], sp                                ; $5753: $08 $FE $10
    rst RST_38                                    ; $5756: $FF
    sub d                                         ; $5757: $92
    cp e                                          ; $5758: $BB
    db $10                                        ; $5759: $10
    ld de, $13BF                                  ; $575A: $11 $BF $13
    add hl, de                                    ; $575D: $19
    cp c                                          ; $575E: $B9
    db $10                                        ; $575F: $10
    ld hl, sp-$70                                 ; $5760: $F8 $90
    dec c                                         ; $5762: $0D
    ldh a, [$FF60]                                ; $5763: $F0 $60
    ldh [rLCDC], a                                ; $5765: $E0 $40
    nop                                           ; $5767: $00
    cp $08                                        ; $5768: $FE $08
    ld [$1C41], sp                                ; $576A: $08 $41 $1C
    db $10                                        ; $576D: $10
    rrca                                          ; $576E: $0F
    inc b                                         ; $576F: $04

jr_030_5770:
    rlca                                          ; $5770: $07
    inc bc                                        ; $5771: $03
    ccf                                           ; $5772: $3F
    jr jr_030_579E                                ; $5773: $18 $29

    rst RST_38                                    ; $5775: $FF
    jr nc, jr_030_5770                            ; $5776: $30 $F8

    rla                                           ; $5778: $17
    jr @+$2A                                      ; $5779: $18 $28

    ld a, b                                       ; $577B: $78
    jr z, @+$19                                   ; $577C: $28 $17

    ld [hl], b                                    ; $577E: $70
    jr nz, jr_030_57B0                            ; $577F: $20 $2F

    sbc b                                         ; $5781: $98
    rra                                           ; $5782: $1F
    sub b                                         ; $5783: $90
    nop                                           ; $5784: $00
    cp $E8                                        ; $5785: $FE $E8
    ld bc, $08C0                                  ; $5787: $01 $C0 $08
    ld c, $10                                     ; $578A: $0E $10
    add a                                         ; $578C: $87
    ld [bc], a                                    ; $578D: $02
    rlca                                          ; $578E: $07
    ret nc                                        ; $578F: $D0

    ld [$8E29], sp                                ; $5790: $08 $29 $8E
    ld [$84CF], sp                                ; $5793: $08 $CF $84
    rst RST_28                                    ; $5796: $EF
    ld b, l                                       ; $5797: $45
    adc a                                         ; $5798: $8F
    ld [$C746], sp                                ; $5799: $08 $46 $C7
    add d                                         ; $579C: $82
    ld a, c                                       ; $579D: $79

jr_030_579E:
    nop                                           ; $579E: $00
    rst RST_30                                    ; $579F: $F7
    nop                                           ; $57A0: $00
    ld d, b                                       ; $57A1: $50
    jr @+$0A                                      ; $57A2: $18 $08

    inc a                                         ; $57A4: $3C
    db $10                                        ; $57A5: $10
    sbc [hl]                                      ; $57A6: $9E
    ld [$8AFF], sp                                ; $57A7: $08 $FF $8A
    dec [hl]                                      ; $57AA: $35
    cp $7C                                        ; $57AB: $FE $7C
    nop                                           ; $57AD: $00
    jr z, @+$1E                                   ; $57AE: $28 $1C

jr_030_57B0:
    ld [$09FC], sp                                ; $57B0: $08 $FC $09
    ld d, [hl]                                    ; $57B3: $56
    ld a, b                                       ; $57B4: $78
    ld c, b                                       ; $57B5: $48
    adc h                                         ; $57B6: $8C
    ld l, b                                       ; $57B7: $68
    ld [hl], d                                    ; $57B8: $72
    nop                                           ; $57B9: $00
    xor $01                                       ; $57BA: $EE $01
    cp c                                          ; $57BC: $B9
    ld [$1003], sp                                ; $57BD: $08 $03 $10
    ld [$0718], sp                                ; $57C0: $08 $18 $07
    ld [bc], a                                    ; $57C3: $02
    add hl, hl                                    ; $57C4: $29
    cp $49                                        ; $57C5: $FE $49
    ld e, h                                       ; $57C7: $5C
    ld [$6A59], sp                                ; $57C8: $08 $59 $6A
    xor $01                                       ; $57CB: $EE $01
    add b                                         ; $57CD: $80
    or h                                          ; $57CE: $B4
    ld [$10C0], sp                                ; $57CF: $08 $C0 $10
    add hl, bc                                    ; $57D2: $09
    xor $10                                       ; $57D3: $EE $10
    rst RST_38                                    ; $57D5: $FF
    adc [hl]                                      ; $57D6: $8E
    add c                                         ; $57D7: $81

jr_030_57D8:
    ld [$F3B1], sp                                ; $57D8: $08 $B1 $F3
    pop bc                                        ; $57DB: $C1
    jp $CF81                                      ; $57DC: $C3 $81 $CF


    ld [$DF2F], sp                                ; $57DF: $08 $2F $DF
    adc a                                         ; $57E2: $8F
    ld c, b                                       ; $57E3: $48
    sub c                                         ; $57E4: $91
    jr jr_030_584F                                ; $57E5: $18 $68

    nop                                           ; $57E7: $00
    cp $50                                        ; $57E8: $FE $50
    inc c                                         ; $57EA: $0C
    ld [$101E], sp                                ; $57EB: $08 $1E $10
    cpl                                           ; $57EE: $2F
    inc b                                         ; $57EF: $04
    ld a, a                                       ; $57F0: $7F
    daa                                           ; $57F1: $27
    ld [$1C3F], sp                                ; $57F2: $08 $3F $1C
    sbc l                                         ; $57F5: $9D
    ld [$BD0B], sp                                ; $57F6: $08 $0B $BD
    db $10                                        ; $57F9: $10
    cp a                                          ; $57FA: $BF
    ld b, [hl]                                    ; $57FB: $46
    inc d                                         ; $57FC: $14
    ld hl, sp-$6D                                 ; $57FD: $F8 $93
    rst RST_30                                    ; $57FF: $F7
    and d                                         ; $5800: $A2
    nop                                           ; $5801: $00
    cp $50                                        ; $5802: $FE $50
    or b                                          ; $5804: $B0
    ld [$10FA], sp                                ; $5805: $08 $FA $10
    add sp, $2A                                   ; $5808: $E8 $2A
    xor e                                         ; $580A: $AB
    ld bc, $04F3                                  ; $580B: $01 $F3 $04
    and c                                         ; $580E: $A1
    ei                                            ; $580F: $FB
    sub c                                         ; $5810: $91
    rst RST_18                                    ; $5811: $DF
    adc c                                         ; $5812: $89
    ret z                                         ; $5813: $C8

    sbc c                                         ; $5814: $99
    db $DB                                        ; $5815: $DB
    dec e                                         ; $5816: $1D
    add c                                         ; $5817: $81
    pop bc                                        ; $5818: $C1
    add b                                         ; $5819: $80
    nop                                           ; $581A: $00
    sbc $07                                       ; $581B: $DE $07
    ld [bc], a                                    ; $581D: $02
    ld [$874D], sp                                ; $581E: $08 $4D $87
    db $10                                        ; $5821: $10
    add e                                         ; $5822: $83
    ld bc, $28C0                                  ; $5823: $01 $C0 $28
    and c                                         ; $5826: $A1
    ld [$F00B], sp                                ; $5827: $08 $0B $F0
    jr nz, @-$1E                                  ; $582A: $20 $E0

    ld b, b                                       ; $582C: $40
    ld [$19C0], sp                                ; $582D: $08 $C0 $19
    nop                                           ; $5830: $00
    call nc, Call_000_00D7                        ; $5831: $D4 $D7 $00
    inc bc                                        ; $5834: $03
    ld [$1017], sp                                ; $5835: $08 $17 $10
    ccf                                           ; $5838: $3F
    ld de, $1F00                                  ; $5839: $11 $00 $1F
    rrca                                          ; $583C: $0F
    adc a                                         ; $583D: $8F
    ld [bc], a                                    ; $583E: $02
    rst RST_08                                    ; $583F: $CF
    add a                                         ; $5840: $87
    rst RST_18                                    ; $5841: $DF
    adc h                                         ; $5842: $8C
    ld [hl], e                                    ; $5843: $73
    cp a                                          ; $5844: $BF
    ld c, b                                       ; $5845: $48
    ld l, b                                       ; $5846: $68
    jr c, @+$10                                   ; $5847: $38 $0E

    inc b                                         ; $5849: $04
    ld h, b                                       ; $584A: $60
    ld [$0774], sp                                ; $584B: $08 $74 $07
    sbc b                                         ; $584E: $98

jr_030_584F:
    cp c                                          ; $584F: $B9
    rlca                                          ; $5850: $07
    ldh a, [$FF08]                                ; $5851: $F0 $08
    ld hl, sp+$70                                 ; $5853: $F8 $70
    or h                                          ; $5855: $B4
    jr jr_030_57D8                                ; $5856: $18 $80

    nop                                           ; $5858: $00
    jr z, @-$26                                   ; $5859: $28 $D8

    db $10                                        ; $585B: $10
    db $FC                                        ; $585C: $FC
    ld e, b                                       ; $585D: $58
    xor a                                         ; $585E: $AF
    ld c, b                                       ; $585F: $48
    ldh [rP1], a                                  ; $5860: $E0 $00
    ld b, b                                       ; $5862: $40
    nop                                           ; $5863: $00
    adc e                                         ; $5864: $8B
    db $10                                        ; $5865: $10
    add hl, de                                    ; $5866: $19
    xor b                                         ; $5867: $A8
    dec b                                         ; $5868: $05
    ld b, $08                                     ; $5869: $06 $08
    rrca                                          ; $586B: $0F
    db $10                                        ; $586C: $10
    rla                                           ; $586D: $17
    ld [bc], a                                    ; $586E: $02
    ccf                                           ; $586F: $3F
    inc d                                         ; $5870: $14
    inc de                                        ; $5871: $13
    rra                                           ; $5872: $1F
    ld c, $00                                     ; $5873: $0E $00
    inc b                                         ; $5875: $04
    dec bc                                        ; $5876: $0B
    ld e, $08                                     ; $5877: $1E $08
    and e                                         ; $5879: $A3
    ld c, b                                       ; $587A: $48
    ld a, [bc]                                    ; $587B: $0A
    ld [$3B09], sp                                ; $587C: $08 $09 $3B
    ld de, $FE00                                  ; $587F: $11 $00 $FE
    xor b                                         ; $5882: $A8

jr_030_5883:
    inc bc                                        ; $5883: $03
    sub b                                         ; $5884: $90
    ld [$10F9], sp                                ; $5885: $08 $F9 $10
    rst RST_38                                    ; $5888: $FF
    ld c, c                                       ; $5889: $49
    rst RST_28                                    ; $588A: $EF
    ld d, c                                       ; $588B: $51
    ld b, h                                       ; $588C: $44
    jr @+$4E                                      ; $588D: $18 $4C

    add hl, de                                    ; $588F: $19
    rst RST_20                                    ; $5890: $E7
    ld b, c                                       ; $5891: $41
    db $E3                                        ; $5892: $E3
    ld [$C13A], sp                                ; $5893: $08 $3A $C1
    add b                                         ; $5896: $80
    nop                                           ; $5897: $00
    rst RST_10                                    ; $5898: $D7
    nop                                           ; $5899: $00
    ld h, b                                       ; $589A: $60
    ld [$81F0], sp                                ; $589B: $08 $F0 $81
    db $10                                        ; $589E: $10

jr_030_589F:
    ld a, b                                       ; $589F: $78
    jr nz, jr_030_589F                            ; $58A0: $20 $FD

jr_030_58A2:
    jr c, jr_030_589F                             ; $58A2: $38 $FB

    ret nz                                        ; $58A4: $C0

    ret z                                         ; $58A5: $C8

    ld [$C743], sp                                ; $58A6: $08 $43 $C7
    add d                                         ; $58A9: $82
    rst RST_18                                    ; $58AA: $DF
    ld [$1EBF], sp                                ; $58AB: $08 $BF $1E
    rst RST_38                                    ; $58AE: $FF
    ld b, $23                                     ; $58AF: $06 $23
    ld a, a                                       ; $58B1: $7F
    ld [hl+], a                                   ; $58B2: $22
    ld a, $1C                                     ; $58B3: $3E $1C
    nop                                           ; $58B5: $00
    cp $01                                        ; $58B6: $FE $01
    xor b                                         ; $58B8: $A8
    ld [$1003], sp                                ; $58B9: $08 $03 $10
    add c                                         ; $58BC: $81
    jr jr_030_5883                                ; $58BD: $18 $C4

    add b                                         ; $58BF: $80
    rst RST_28                                    ; $58C0: $EF
    ld [hl], b                                    ; $58C1: $70
    ld b, h                                       ; $58C2: $44
    ld sp, hl                                     ; $58C3: $F9
    nop                                           ; $58C4: $00
    ld l, h                                       ; $58C5: $6C
    add a                                         ; $58C6: $87
    ld [bc], a                                    ; $58C7: $02
    adc $84                                       ; $58C8: $CE $84
    ld a, [hl-]                                   ; $58CA: $3A
    sbc h                                         ; $58CB: $9C
    ld [$FE00], sp                                ; $58CC: $08 $00 $FE
    ld bc, $08E0                                  ; $58CF: $01 $E0 $08
    ldh a, [$FFED]                                ; $58D2: $F0 $ED
    db $10                                        ; $58D4: $10
    ld [$F818], sp                                ; $58D5: $08 $18 $F8
    stop                                          ; $58D8: $10 $00
    jr nz, jr_030_590C                            ; $58DA: $20 $30

    dec d                                         ; $58DC: $15
    ld b, b                                       ; $58DD: $40
    pop bc                                        ; $58DE: $C1
    add b                                         ; $58DF: $80
    jr jr_030_58A2                                ; $58E0: $18 $C0

    add hl, sp                                    ; $58E2: $39
    ld a, h                                       ; $58E3: $7C
    ld [$3E35], sp                                ; $58E4: $08 $35 $3E
    inc e                                         ; $58E7: $1C
    nop                                           ; $58E8: $00
    xor $5C                                       ; $58E9: $EE $5C
    ld [$10FE], sp                                ; $58EB: $08 $FE $10
    dec hl                                        ; $58EE: $2B
    ld a, a                                       ; $58EF: $7F
    ld h, $78                                     ; $58F0: $26 $78
    ld [$1008], sp                                ; $58F2: $08 $08 $10
    jr z, jr_030_5907                             ; $58F5: $28 $10

    ld [de], a                                    ; $58F7: $12
    rst RST_38                                    ; $58F8: $FF
    ld h, c                                       ; $58F9: $61
    ld sp, hl                                     ; $58FA: $F9
    ld hl, sp-$03                                 ; $58FB: $F8 $FD
    jr c, jr_030_5927                             ; $58FD: $38 $28

    ld b, l                                       ; $58FF: $45

Jump_030_5900:
    push af                                       ; $5900: $F5
    ld c, c                                       ; $5901: $49
    nop                                           ; $5902: $00
    xor $01                                       ; $5903: $EE $01
    ld b, $08                                     ; $5905: $06 $08

jr_030_5907:
    rrca                                          ; $5907: $0F
    db $10                                        ; $5908: $10
    ld a, [hl+]                                   ; $5909: $2A
    rlca                                          ; $590A: $07
    inc bc                                        ; $590B: $03

jr_030_590C:
    ld [$0B02], sp                                ; $590C: $08 $02 $0B
    add a                                         ; $590F: $87
    jr c, @-$2F                                   ; $5910: $38 $CF

    dec b                                         ; $5912: $05
    add h                                         ; $5913: $84
    call c, $9C88                                 ; $5914: $DC $88 $9C
    ld [$0488], sp                                ; $5917: $08 $88 $04
    adc c                                         ; $591A: $89
    ld [$FE00], a                                 ; $591B: $EA $00 $FE
    ld bc, $0801                                  ; $591E: $01 $01 $08
    add e                                         ; $5921: $83
    db $10                                        ; $5922: $10
    ld de, $1880                                  ; $5923: $11 $80 $18
    ld a, c                                       ; $5926: $79

jr_030_5927:
    db $10                                        ; $5927: $10

Call_030_5928:
    ld sp, hl                                     ; $5928: $F9
    ld [hl], b                                    ; $5929: $70
    pop af                                        ; $592A: $F1
    add b                                         ; $592B: $80
    add c                                         ; $592C: $81
    db $ED                                        ; $592D: $ED
    ld l, d                                       ; $592E: $6A
    ldh a, [$FF08]                                ; $592F: $F0 $08
    db $FC                                        ; $5931: $FC
    db $10                                        ; $5932: $10
    ld [$00F8], sp                                ; $5933: $08 $F8 $00
    ld [$02F7], a                                 ; $5936: $EA $F7 $02
    xor c                                         ; $5939: $A9
    jp $C110                                      ; $593A: $C3 $10 $C1


    ret c                                         ; $593D: $D8

    ret nz                                        ; $593E: $C0

    or c                                          ; $593F: $B1
    ld [$08D0], sp                                ; $5940: $08 $D0 $08
    xor b                                         ; $5943: $A8
    sub b                                         ; $5944: $90
    ldh a, [$FFA0]                                ; $5945: $F0 $A0
    ld [$601D], sp                                ; $5947: $08 $1D $60
    ld [hl], b                                    ; $594A: $70
    jr nz, jr_030_594D                            ; $594B: $20 $00

jr_030_594D:
    rst RST_10                                    ; $594D: $D7
    nop                                           ; $594E: $00
    inc bc                                        ; $594F: $03
    ld [$076A], sp                                ; $5950: $08 $6A $07
    db $10                                        ; $5953: $10
    add hl, de                                    ; $5954: $19
    adc b                                         ; $5955: $88
    ld [$10DF], sp                                ; $5956: $08 $DF $10
    rst RST_28                                    ; $5959: $EF
    ld e, $47                                     ; $595A: $1E $47
    rst RST_20                                    ; $595C: $E7
    ld b, b                                       ; $595D: $40
    nop                                           ; $595E: $00
    sbc a                                         ; $595F: $9F
    sbc d                                         ; $5960: $9A
    rlca                                          ; $5961: $07
    ldh [$FFB0], a                                ; $5962: $E0 $B0
    ld [$10F0], sp                                ; $5964: $08 $F0 $10
    dec de                                        ; $5967: $1B
    ei                                            ; $5968: $FB
    db $10                                        ; $5969: $10
    ccf                                           ; $596A: $3F
    inc de                                        ; $596B: $13
    and h                                         ; $596C: $A4
    add hl, bc                                    ; $596D: $09
    dec sp                                        ; $596E: $3B
    jr z, @+$72                                   ; $596F: $28 $70

    jr nz, jr_030_59C3                            ; $5971: $20 $50

    ld b, b                                       ; $5973: $40
    ret nz                                        ; $5974: $C0

    ld a, d                                       ; $5975: $7A
    add b                                         ; $5976: $80
    nop                                           ; $5977: $00
    rst RST_30                                    ; $5978: $F7
    rlca                                          ; $5979: $07
    nop                                           ; $597A: $00
    inc sp                                        ; $597B: $33
    ld [$FFFF], sp                                ; $597C: $08 $FF $FF
    db $10                                        ; $597F: $10
    add hl, bc                                    ; $5980: $09
    add hl, hl                                    ; $5981: $29
    rlca                                          ; $5982: $07
    rlca                                          ; $5983: $07
    rlca                                          ; $5984: $07
    rst RST_38                                    ; $5985: $FF
    rlca                                          ; $5986: $07

jr_030_5987:
    rst RST_10                                    ; $5987: $D7
    rlca                                          ; $5988: $07
    rlca                                          ; $5989: $07
    jr nc, @+$0A                                  ; $598A: $30 $08

    ld hl, sp+$10                                 ; $598C: $F8 $10
    add hl, bc                                    ; $598E: $09
    add hl, hl                                    ; $598F: $29
    push de                                       ; $5990: $D5
    rlca                                          ; $5991: $07
    rlca                                          ; $5992: $07

jr_030_5993:
    ld bc, $031A                                  ; $5993: $01 $1A $03
    ld [$1007], sp                                ; $5996: $08 $07 $10
    ei                                            ; $5999: $FB
    add hl, de                                    ; $599A: $19
    ld [$0950], sp                                ; $599B: $08 $50 $09
    jr c, jr_030_59A2                             ; $599E: $38 $02

    add hl, bc                                    ; $59A0: $09
    nop                                           ; $59A1: $00

jr_030_59A2:
    call nc, $02D7                                ; $59A2: $D4 $D7 $02
    ret nz                                        ; $59A5: $C0

    ld [$10E0], sp                                ; $59A6: $08 $E0 $10
    pop af                                        ; $59A9: $F1
    ld b, b                                       ; $59AA: $40
    nop                                           ; $59AB: $00
    ei                                            ; $59AC: $FB
    ld [hl], c                                    ; $59AD: $71
    rst RST_30                                    ; $59AE: $F7
    add b                                         ; $59AF: $80
    rst RST_08                                    ; $59B0: $CF
    add [hl]                                      ; $59B1: $86
    adc [hl]                                      ; $59B2: $8E
    inc b                                         ; $59B3: $04
    ld b, d                                       ; $59B4: $42
    cp [hl]                                       ; $59B5: $BE
    ld [$3C7E], sp                                ; $59B6: $08 $7E $3C
    rst RST_38                                    ; $59B9: $FF
    ld b, [hl]                                    ; $59BA: $46
    ld [$3545], sp                                ; $59BB: $08 $45 $35
    ld a, l                                       ; $59BE: $7D
    jr c, jr_030_59C1                             ; $59BF: $38 $00

jr_030_59C1:
    cp $08                                        ; $59C1: $FE $08

jr_030_59C3:
    ld [$101F], sp                                ; $59C3: $08 $1F $10
    inc de                                        ; $59C6: $13
    rrca                                          ; $59C7: $0F
    rlca                                          ; $59C8: $07
    add a                                         ; $59C9: $87
    jr z, jr_030_5993                             ; $59CA: $28 $C7

    add c                                         ; $59CC: $81
    xor b                                         ; $59CD: $A8
    ld hl, sp-$5D                                 ; $59CE: $F8 $A3
    ld [$003F], sp                                ; $59D0: $08 $3F $00
    ld de, $0217                                  ; $59D3: $11 $17 $02
    ld h, b                                       ; $59D6: $60
    ld [$833A], sp                                ; $59D7: $08 $3A $83
    ld bc, $EE00                                  ; $59DA: $01 $00 $EE
    ld bc, $0810                                  ; $59DD: $01 $10 $08
    ld hl, sp-$6E                                 ; $59E0: $F8 $92
    db $10                                        ; $59E2: $10
    db $FC                                        ; $59E3: $FC
    ret z                                         ; $59E4: $C8

jr_030_59E5:
    jr jr_030_5987                                ; $59E5: $18 $A0

    ld sp, hl                                     ; $59E7: $F9
    jr z, jr_030_59E5                             ; $59E8: $28 $FB

    ld a, [bc]                                    ; $59EA: $0A
    ld [hl], c                                    ; $59EB: $71
    rst RST_30                                    ; $59EC: $F7
    add d                                         ; $59ED: $82
    add a                                         ; $59EE: $87
    ld [$E003], a                                 ; $59EF: $EA $03 $E0
    pop bc                                        ; $59F2: $C1
    sbc l                                         ; $59F3: $9D
    sbc b                                         ; $59F4: $98
    ldh [$FFC0], a                                ; $59F5: $E0 $C0
    nop                                           ; $59F7: $00
    cp $03                                        ; $59F8: $FE $03

jr_030_59FA:
    ld a, [hl]                                    ; $59FA: $7E
    ld [$FF61], sp                                ; $59FB: $08 $61 $FF
    db $10                                        ; $59FE: $10
    ld [$B991], sp                                ; $59FF: $08 $91 $B9
    db $10                                        ; $5A02: $10
    add hl, sp                                    ; $5A03: $39
    ld a, [bc]                                    ; $5A04: $0A
    db $10                                        ; $5A05: $10
    ld [hl], c                                    ; $5A06: $71
    jr nz, jr_030_59FA                            ; $5A07: $20 $F1

    ld [$C1E7], sp                                ; $5A09: $08 $E7 $C1
    rst RST_08                                    ; $5A0C: $CF
    ld b, $EA                                     ; $5A0D: $06 $EA
    nop                                           ; $5A0F: $00
    rst RST_20                                    ; $5A10: $E7
    ld b, $80                                     ; $5A11: $06 $80
    ld [$10C0], sp                                ; $5A13: $08 $C0 $10
    jp Jump_000_08C3                              ; $5A16: $C3 $C3 $08


    cp b                                          ; $5A19: $B8
    add e                                         ; $5A1A: $83
    rst RST_18                                    ; $5A1B: $DF
    adc h                                         ; $5A1C: $8C
    call z, Call_030_5928                         ; $5A1D: $CC $28 $59
    call nc, Call_000_0307                        ; $5A20: $D4 $07 $03
    jr nc, jr_030_5A2D                            ; $5A23: $30 $08

    ld a, c                                       ; $5A25: $79
    db $10                                        ; $5A26: $10
    jr c, jr_030_5A39                             ; $5A27: $38 $10

    nop                                           ; $5A29: $00
    ld [hl], d                                    ; $5A2A: $72
    jr nz, @-$17                                  ; $5A2B: $20 $E7

jr_030_5A2D:
    ld b, d                                       ; $5A2D: $42
    db $E3                                        ; $5A2E: $E3
    pop bc                                        ; $5A2F: $C1
    pop hl                                        ; $5A30: $E1
    ld b, b                                       ; $5A31: $40
    ld a, d                                       ; $5A32: $7A
    ldh [$FF0E], a                                ; $5A33: $E0 $0E
    nop                                           ; $5A35: $00
    rst RST_30                                    ; $5A36: $F7
    nop                                           ; $5A37: $00
    ret nz                                        ; $5A38: $C0

jr_030_5A39:
    ld [$A4E2], sp                                ; $5A39: $08 $E2 $A4
    db $10                                        ; $5A3C: $10
    rst RST_28                                    ; $5A3D: $EF
    ret c                                         ; $5A3E: $D8

    rst RST_38                                    ; $5A3F: $FF
    ld c, a                                       ; $5A40: $4F
    ld [$FE72], sp                                ; $5A41: $08 $72 $FE
    ld c, $C4                                     ; $5A44: $0E $C4
    db $FC                                        ; $5A46: $FC
    ld c, b                                       ; $5A47: $48
    add sp, -$40                                  ; $5A48: $E8 $C0
    jr z, @+$0A                                   ; $5A4A: $28 $08

    ld a, a                                       ; $5A4C: $7F
    ld [hl], l                                    ; $5A4D: $75
    ld a, $00                                     ; $5A4E: $3E $00
    rst RST_20                                    ; $5A50: $E7
    nop                                           ; $5A51: $00
    inc c                                         ; $5A52: $0C
    ld [$101E], sp                                ; $5A53: $08 $1E $10
    ld c, $0F                                     ; $5A56: $0E $0F
    inc b                                         ; $5A58: $04

jr_030_5A59:
    ccf                                           ; $5A59: $3F
    dec b                                         ; $5A5A: $05
    add sp, -$70                                  ; $5A5B: $E8 $90
    jr @+$14                                      ; $5A5D: $18 $12

    or e                                          ; $5A5F: $B3
    ld [$C903], sp                                ; $5A60: $08 $03 $C9
    add hl, hl                                    ; $5A63: $29
    inc de                                        ; $5A64: $13
    ld bc, $0A30                                  ; $5A65: $01 $30 $0A
    ld [$FE00], a                                 ; $5A68: $EA $00 $FE
    ld bc, $0880                                  ; $5A6B: $01 $80 $08
    ret nz                                        ; $5A6E: $C0

    db $10                                        ; $5A6F: $10
    ldh [$FFA0], a                                ; $5A70: $E0 $A0
    db $10                                        ; $5A72: $10
    pop bc                                        ; $5A73: $C1
    jr z, jr_030_5A59                             ; $5A74: $28 $E3

    ld b, c                                       ; $5A76: $41
    rst RST_30                                    ; $5A77: $F7
    ldh [c], a                                    ; $5A78: $E2
    rst RST_20                                    ; $5A79: $E7
    dec hl                                        ; $5A7A: $2B
    ld [bc], a                                    ; $5A7B: $02
    rlca                                          ; $5A7C: $07
    ld [$D083], sp                                ; $5A7D: $08 $83 $D0
    add c                                         ; $5A80: $81
    sbc d                                         ; $5A81: $9A
    rlca                                          ; $5A82: $07
    xor h                                         ; $5A83: $AC

jr_030_5A84:
    inc bc                                        ; $5A84: $03
    ld a, [hl]                                    ; $5A85: $7E
    ld [$10FF], sp                                ; $5A86: $08 $FF $10
    ld [$B991], sp                                ; $5A89: $08 $91 $B9
    ld [hl+], a                                   ; $5A8C: $22
    db $10                                        ; $5A8D: $10
    add hl, sp                                    ; $5A8E: $39
    ld a, [bc]                                    ; $5A8F: $0A
    ld [hl], c                                    ; $5A90: $71
    jr nz, jr_030_5A84                            ; $5A91: $20 $F1

    ld [$1DE7], sp                                ; $5A93: $08 $E7 $1D
    pop bc                                        ; $5A96: $C1
    rst RST_08                                    ; $5A97: $CF
    ld b, $00                                     ; $5A98: $06 $00
    rst RST_20                                    ; $5A9A: $E7
    ld b, $80                                     ; $5A9B: $06 $80
    ld [$C07D], sp                                ; $5A9D: $08 $7D $C0
    db $10                                        ; $5AA0: $10
    rrca                                          ; $5AA1: $0F
    ld e, c                                       ; $5AA2: $59
    rlca                                          ; $5AA3: $07
    dec b                                         ; $5AA4: $05
    add hl, bc                                    ; $5AA5: $09
    ld [$1F44], sp                                ; $5AA6: $08 $44 $1F
    db $10                                        ; $5AA9: $10
    rrca                                          ; $5AAA: $0F
    ld b, $07                                     ; $5AAB: $06 $07
    jr z, jr_030_5AB2                             ; $5AAD: $28 $03

    ld bc, $09FA                                  ; $5AAF: $01 $FA $09

jr_030_5AB2:
    nop                                           ; $5AB2: $00
    adc h                                         ; $5AB3: $8C
    dec l                                         ; $5AB4: $2D
    inc bc                                        ; $5AB5: $03
    ld h, b                                       ; $5AB6: $60
    ld [$94F4], sp                                ; $5AB7: $08 $F4 $94
    db $10                                        ; $5ABA: $10
    rst RST_38                                    ; $5ABB: $FF
    inc h                                         ; $5ABC: $24
    ld [$00FE], sp                                ; $5ABD: $08 $FE $00
    jr nz, jr_030_5AB2                            ; $5AC0: $20 $F0

    ld a, b                                       ; $5AC2: $78
    ldh [$FF08], a                                ; $5AC3: $E0 $08
    add hl, de                                    ; $5AC5: $19
    inc l                                         ; $5AC6: $2C
    db $10                                        ; $5AC7: $10
    ld b, b                                       ; $5AC8: $40
    ret nz                                        ; $5AC9: $C0

    add b                                         ; $5ACA: $80
    ei                                            ; $5ACB: $FB
    nop                                           ; $5ACC: $00
    cp $01                                        ; $5ACD: $FE $01
    ld c, c                                       ; $5ACF: $49
    ld l, c                                       ; $5AD0: $69
    pop hl                                        ; $5AD1: $E1
    adc b                                         ; $5AD2: $88
    sbc c                                         ; $5AD3: $99
    and b                                         ; $5AD4: $A0
    add hl, bc                                    ; $5AD5: $09
    add sp, $08                                   ; $5AD6: $E8 $08
    db $FC                                        ; $5AD8: $FC
    ld c, b                                       ; $5AD9: $48
    ld hl, sp+$50                                 ; $5ADA: $F8 $50
    ld a, b                                       ; $5ADC: $78
    dec e                                         ; $5ADD: $1D
    jr nc, @+$3A                                  ; $5ADE: $30 $38

    stop                                          ; $5AE0: $10 $00
    rst RST_20                                    ; $5AE2: $E7
    nop                                           ; $5AE3: $00
    ld [bc], a                                    ; $5AE4: $02
    ld [$0740], sp                                ; $5AE5: $08 $40 $07
    db $10                                        ; $5AE8: $10
    add a                                         ; $5AE9: $87
    inc bc                                        ; $5AEA: $03
    rst RST_00                                    ; $5AEB: $C7
    add d                                         ; $5AEC: $82
    rst RST_20                                    ; $5AED: $E7
    ld b, d                                       ; $5AEE: $42
    ld l, $77                                     ; $5AEF: $2E $77
    ld [hl+], a                                   ; $5AF1: $22
    add hl, bc                                    ; $5AF2: $09
    daa                                           ; $5AF3: $27
    ld e, b                                       ; $5AF4: $58
    ld l, c                                       ; $5AF5: $69
    ld h, b                                       ; $5AF6: $60
    ld bc, $00EA                                  ; $5AF7: $01 $EA $00
    rst RST_20                                    ; $5AFA: $E7
    ld b, $80                                     ; $5AFB: $06 $80
    ld a, $04                                     ; $5AFD: $3E $04
    ld [$810E], sp                                ; $5AFF: $08 $0E $81
    db $10                                        ; $5B02: $10
    inc e                                         ; $5B03: $1C
    ld [$10F8], sp                                ; $5B04: $08 $F8 $10
    ldh a, [$FFE0]                                ; $5B07: $F0 $E0
    nop                                           ; $5B09: $00
    call nc, $06D7                                ; $5B0A: $D4 $D7 $06
    jr jr_030_5B17                                ; $5B0D: $18 $08

    dec a                                         ; $5B0F: $3D
    db $10                                        ; $5B10: $10
    rra                                           ; $5B11: $1F
    add hl, bc                                    ; $5B12: $09
    ret nc                                        ; $5B13: $D0

    ld [$3EF0], sp                                ; $5B14: $08 $F0 $3E

jr_030_5B17:
    add sp, $7E                                   ; $5B17: $E8 $7E
    inc a                                         ; $5B19: $3C
    rst RST_38                                    ; $5B1A: $FF
    ld c, d                                       ; $5B1B: $4A
    ccf                                           ; $5B1C: $3F
    ld a, e                                       ; $5B1D: $7B
    ld sp, $BE00                                  ; $5B1E: $31 $00 $BE
    ld e, b                                       ; $5B21: $58
    rrca                                          ; $5B22: $0F
    ld c, $07                                     ; $5B23: $0E $07
    call nc, $0107                                ; $5B25: $D4 $07 $01
    ld b, $08                                     ; $5B28: $06 $08
    rrca                                          ; $5B2A: $0F
    db $10                                        ; $5B2B: $10
    rlca                                          ; $5B2C: $07
    ld bc, $1153                                  ; $5B2D: $01 $53 $11
    jr z, @+$41                                   ; $5B30: $28 $3F

    db $10                                        ; $5B32: $10
    sbc a                                         ; $5B33: $9F
    ld c, $00                                     ; $5B34: $0E $00
    sbc [hl]                                      ; $5B36: $9E
    ld a, l                                       ; $5B37: $7D
    add a                                         ; $5B38: $87
    sbc c                                         ; $5B39: $99
    sub b                                         ; $5B3A: $90
    nop                                           ; $5B3B: $00
    ld e, [hl]                                    ; $5B3C: $5E
    ld bc, $08C5                                  ; $5B3D: $01 $C5 $08
    nop                                           ; $5B40: $00

jr_030_5B41:
    rst RST_28                                    ; $5B41: $EF
    call nz, Call_000_03C7                        ; $5B42: $C4 $C7 $03
    db $E3                                        ; $5B45: $E3
    ret nz                                        ; $5B46: $C0

    di                                            ; $5B47: $F3
    ld hl, $7702                                  ; $5B48: $21 $02 $77
    inc hl                                        ; $5B4B: $23
    ld a, a                                       ; $5B4C: $7F
    inc h                                         ; $5B4D: $24
    ld [hl], l                                    ; $5B4E: $75
    jr nz, jr_030_5B99                            ; $5B4F: $20 $48

    ld b, c                                       ; $5B51: $41
    ld a, $C3                                     ; $5B52: $3E $C3
    add c                                         ; $5B54: $81
    nop                                           ; $5B55: $00
    rst RST_20                                    ; $5B56: $E7
    nop                                           ; $5B57: $00
    or b                                          ; $5B58: $B0
    ld [$94FC], sp                                ; $5B59: $08 $FC $94
    db $10                                        ; $5B5C: $10
    cp $5C                                        ; $5B5D: $FE $5C
    jr jr_030_5B41                                ; $5B5F: $18 $E0

    nop                                           ; $5B61: $00
    add b                                         ; $5B62: $80
    or $91                                        ; $5B63: $F6 $91
    db $10                                        ; $5B65: $10
    rst RST_38                                    ; $5B66: $FF
    ld d, $48                                     ; $5B67: $16 $48

jr_030_5B69:
    ld a, b                                       ; $5B69: $78
    ld hl, sp-$70                                 ; $5B6A: $F8 $90
    nop                                           ; $5B6C: $00
    db $FD                                        ; $5B6D: $FD

jr_030_5B6E:
    adc c                                         ; $5B6E: $89
    ld [$1038], sp                                ; $5B6F: $08 $38 $10
    add hl, de                                    ; $5B72: $19
    dec b                                         ; $5B73: $05
    jr jr_030_5B7E                                ; $5B74: $18 $08

    ld h, b                                       ; $5B76: $60
    ld a, h                                       ; $5B77: $7C
    db $10                                        ; $5B78: $10
    ld l, b                                       ; $5B79: $68
    ld c, b                                       ; $5B7A: $48
    ld a, a                                       ; $5B7B: $7F
    ld a, $7E                                     ; $5B7C: $3E $7E

jr_030_5B7E:
    ld [$2BCA], sp                                ; $5B7E: $08 $CA $2B
    nop                                           ; $5B81: $00
    db $10                                        ; $5B82: $10
    jr c, @+$0C                                   ; $5B83: $38 $0A

    rra                                           ; $5B85: $1F
    ld e, b                                       ; $5B86: $58
    rrca                                          ; $5B87: $0F
    ld l, a                                       ; $5B88: $6F
    rlca                                          ; $5B89: $07
    nop                                           ; $5B8A: $00
    cp $03                                        ; $5B8B: $FE $03
    ld [$1048], sp                                ; $5B8D: $08 $48 $10
    nop                                           ; $5B90: $00
    ld d, b                                       ; $5B91: $50
    ld bc, $830B                                  ; $5B92: $01 $0B $83
    ld [$81C3], sp                                ; $5B95: $08 $C3 $81
    rst RST_20                                    ; $5B98: $E7

jr_030_5B99:
    ld b, d                                       ; $5B99: $42
    daa                                           ; $5B9A: $27
    xor $44                                       ; $5B9B: $EE $44
    add hl, bc                                    ; $5B9D: $09
    rst RST_00                                    ; $5B9E: $C7
    add d                                         ; $5B9F: $82
    ld e, c                                       ; $5BA0: $59
    nop                                           ; $5BA1: $00
    cp $AA                                        ; $5BA2: $FE $AA
    ld bc, $0880                                  ; $5BA4: $01 $80 $08
    ret nz                                        ; $5BA7: $C0

    db $10                                        ; $5BA8: $10
    adc b                                         ; $5BA9: $88
    jr @-$42                                      ; $5BAA: $18 $BC

    dec bc                                        ; $5BAC: $0B
    ld [$38FC], sp                                ; $5BAD: $08 $FC $38
    ld hl, sp+$40                                 ; $5BB0: $F8 $40
    pop bc                                        ; $5BB2: $C1
    jr c, jr_030_5B6E                             ; $5BB3: $38 $B9

    ld c, a                                       ; $5BB5: $4F
    dec b                                         ; $5BB6: $05
    ld [$04FE], sp                                ; $5BB7: $08 $FE $04
    ld [$0060], sp                                ; $5BBA: $08 $60 $00
    xor $50                                       ; $5BBD: $EE $50
    ld b, $08                                     ; $5BBF: $06 $08
    ld l, a                                       ; $5BC1: $6F
    db $10                                        ; $5BC2: $10
    rst RST_30                                    ; $5BC3: $F7
    ld h, d                                       ; $5BC4: $62
    ld a, a                                       ; $5BC5: $7F
    ld [hl+], a                                   ; $5BC6: $22
    xor d                                         ; $5BC7: $AA
    ld [$082F], sp                                ; $5BC8: $08 $2F $08
    inc [hl]                                      ; $5BCB: $34
    xor b                                         ; $5BCC: $A8
    ld d, h                                       ; $5BCD: $54
    xor b                                         ; $5BCE: $A8
    sbc b                                         ; $5BCF: $98
    jr z, @-$22                                   ; $5BD0: $28 $DC

    adc b                                         ; $5BD2: $88
    jr z, jr_030_5B69                             ; $5BD3: $28 $94

    ld a, b                                       ; $5BD5: $78
    ld h, b                                       ; $5BD6: $60
    ld h, a                                       ; $5BD7: $67
    inc bc                                        ; $5BD8: $03
    ld [$FE00], a                                 ; $5BD9: $EA $00 $FE
    dec b                                         ; $5BDC: $05
    add b                                         ; $5BDD: $80
    ld [$10C0], sp                                ; $5BDE: $08 $C0 $10
    ldh [$FF1F], a                                ; $5BE1: $E0 $1F
    ld b, b                                       ; $5BE3: $40
    ld [hl], b                                    ; $5BE4: $70
    jr nz, @+$0D                                  ; $5BE5: $20 $0B

    add hl, sp                                    ; $5BE7: $39
    ld e, c                                       ; $5BE8: $59
    ld a, c                                       ; $5BE9: $79
    rlca                                          ; $5BEA: $07
    ld d, b                                       ; $5BEB: $50
    ld bc, $1B08                                  ; $5BEC: $01 $08 $1B
    db $10                                        ; $5BEF: $10
    dec a                                         ; $5BF0: $3D
    jr jr_030_5C52                                ; $5BF1: $18 $5F

    ld [$FF0D], sp                                ; $5BF3: $08 $0D $FF
    ld c, a                                       ; $5BF6: $4F
    ld a, a                                       ; $5BF7: $7F
    jr c, jr_030_5C32                             ; $5BF8: $38 $38

    jr z, @+$1F                                   ; $5BFA: $28 $1D

    ld [$0B50], sp                                ; $5BFC: $08 $50 $0B
    ld l, b                                       ; $5BFF: $68
    inc bc                                        ; $5C00: $03
    ld [$020F], sp                                ; $5C01: $08 $0F $02
    ld e, $0C                                     ; $5C04: $1E $0C
    push de                                       ; $5C06: $D5
    nop                                           ; $5C07: $00
    cp $80                                        ; $5C08: $FE $80
    ld [$10C0], sp                                ; $5C0A: $08 $C0 $10
    ldh [$FF08], a                                ; $5C0D: $E0 $08
    ld e, $F0                                     ; $5C0F: $1E $F0
    and b                                         ; $5C11: $A0
    ld hl, sp+$10                                 ; $5C12: $F8 $10
    nop                                           ; $5C14: $00

jr_030_5C15:
    jr z, @+$4B                                   ; $5C15: $28 $49

    jp Jump_000_08AD                              ; $5C17: $C3 $AD $08


    add a                                         ; $5C1A: $87
    ldh a, [$FF83]                                ; $5C1B: $F0 $83
    adc $07                                       ; $5C1D: $CE $07
    inc c                                         ; $5C1F: $0C
    ld [$1E40], sp                                ; $5C20: $08 $40 $1E
    db $10                                        ; $5C23: $10
    ld c, $04                                     ; $5C24: $0E $04
    inc e                                         ; $5C26: $1C
    ld [$1038], sp                                ; $5C27: $08 $38 $10
    cpl                                           ; $5C2A: $2F
    ld hl, sp+$30                                 ; $5C2B: $F8 $30
    ld [$08D0], sp                                ; $5C2D: $08 $D0 $08
    jr z, jr_030_5C6B                             ; $5C30: $28 $39

jr_030_5C32:
    dec bc                                        ; $5C32: $0B
    ld [$F700], a                                 ; $5C33: $EA $00 $F7
    nop                                           ; $5C36: $00
    ld bc, $1908                                  ; $5C37: $01 $08 $19
    ld [$AC3F], sp                                ; $5C3A: $08 $3F $AC
    db $10                                        ; $5C3D: $10
    dec e                                         ; $5C3E: $1D
    ld hl, sp+$1C                                 ; $5C3F: $F8 $1C
    ld a, [bc]                                    ; $5C41: $0A
    bit 6, b                                      ; $5C42: $CB $70
    jr nz, jr_030_5C80                            ; $5C44: $20 $3A

    ldh [rLCDC], a                                ; $5C46: $E0 $40
    nop                                           ; $5C48: $00
    rst RST_20                                    ; $5C49: $E7
    nop                                           ; $5C4A: $00
    and b                                         ; $5C4B: $A0
    ld [$89F0], sp                                ; $5C4C: $08 $F0 $89
    db $10                                        ; $5C4F: $10
    ld sp, hl                                     ; $5C50: $F9
    ld d, b                                       ; $5C51: $50

jr_030_5C52:
    ret nc                                        ; $5C52: $D0

    jr z, jr_030_5C15                             ; $5C53: $28 $C0

    add b                                         ; $5C55: $80
    xor c                                         ; $5C56: $A9
    rst RST_38                                    ; $5C57: $FF
    add hl, bc                                    ; $5C58: $09
    reti                                          ; $5C59: $D9


    dec bc                                        ; $5C5A: $0B
    nop                                           ; $5C5B: $00
    rst RST_20                                    ; $5C5C: $E7
    inc b                                         ; $5C5D: $04
    ret z                                         ; $5C5E: $C8

    ld [$B8EA], sp                                ; $5C5F: $08 $EA $B8
    db $10                                        ; $5C62: $10
    db $DB                                        ; $5C63: $DB
    ldh a, [$FF08]                                ; $5C64: $F0 $08
    ld hl, sp-$30                                 ; $5C66: $F8 $D0
    db $FC                                        ; $5C68: $FC
    ld c, a                                       ; $5C69: $4F
    ld e, b                                       ; $5C6A: $58

jr_030_5C6B:
    ld [$E848], sp                                ; $5C6B: $08 $48 $E8
    ld e, d                                       ; $5C6E: $5A
    add hl, bc                                    ; $5C6F: $09
    nop                                           ; $5C70: $00
    rst RST_30                                    ; $5C71: $F7
    xor c                                         ; $5C72: $A9
    ld [bc], a                                    ; $5C73: $02
    jr nc, @+$0A                                  ; $5C74: $30 $08

    ld a, a                                       ; $5C76: $7F
    db $10                                        ; $5C77: $10
    ccf                                           ; $5C78: $3F
    rra                                           ; $5C79: $1F
    ld [$102F], sp                                ; $5C7A: $08 $2F $10
    jr c, jr_030_5C87                             ; $5C7D: $38 $08

    add hl, sp                                    ; $5C7F: $39

jr_030_5C80:
    ld [$4B29], sp                                ; $5C80: $08 $29 $4B
    nop                                           ; $5C83: $00
    call nc, Call_000_04D7                        ; $5C84: $D4 $D7 $04

jr_030_5C87:
    ld b, d                                       ; $5C87: $42
    ld [$10E7], sp                                ; $5C88: $08 $E7 $10
    di                                            ; $5C8B: $F3
    pop hl                                        ; $5C8C: $E1
    sub d                                         ; $5C8D: $92
    nop                                           ; $5C8E: $00
    ld b, b                                       ; $5C8F: $40
    ldh [$FF08], a                                ; $5C90: $E0 $08
    ret nz                                        ; $5C92: $C0

    add b                                         ; $5C93: $80
    add hl, bc                                    ; $5C94: $09
    db $E3                                        ; $5C95: $E3
    sub a                                         ; $5C96: $97
    db $10                                        ; $5C97: $10
    rst RST_00                                    ; $5C98: $C7
    inc bc                                        ; $5C99: $03
    nop                                           ; $5C9A: $00
    ld bc, $E700                                  ; $5C9B: $01 $00 $E7
    inc b                                         ; $5C9E: $04
    ret c                                         ; $5C9F: $D8

    and b                                         ; $5CA0: $A0
    ld [$10C2], sp                                ; $5CA1: $08 $C2 $10
    xor b                                         ; $5CA4: $A8
    add d                                         ; $5CA5: $82
    add a                                         ; $5CA6: $87
    ld [bc], a                                    ; $5CA7: $02

jr_030_5CA8:
    nop                                           ; $5CA8: $00
    ld c, $04                                     ; $5CA9: $0E $04
    inc a                                         ; $5CAB: $3C
    ld [$30F8], sp                                ; $5CAC: $08 $F8 $30
    ldh a, [$FFC0]                                ; $5CAF: $F0 $C0
    ei                                            ; $5CB1: $FB
    nop                                           ; $5CB2: $00
    rst RST_00                                    ; $5CB3: $C7
    nop                                           ; $5CB4: $00
    ld h, b                                       ; $5CB5: $60
    ld [$1078], sp                                ; $5CB6: $08 $78 $10
    sbc b                                         ; $5CB9: $98
    add hl, bc                                    ; $5CBA: $09
    jr @+$3A                                      ; $5CBB: $18 $38

    db $10                                        ; $5CBD: $10
    dec sp                                        ; $5CBE: $3B
    ld [$133F], sp                                ; $5CBF: $08 $3F $13
    ld [$1C05], sp                                ; $5CC2: $08 $05 $1C
    ld a, h                                       ; $5CC5: $7C
    jr nz, jr_030_5CA8                            ; $5CC6: $20 $E0

    ld b, b                                       ; $5CC8: $40
    add hl, bc                                    ; $5CC9: $09
    ld a, a                                       ; $5CCA: $7F
    jr z, jr_030_5C87                             ; $5CCB: $28 $BA

    ld c, b                                       ; $5CCD: $48
    rra                                           ; $5CCE: $1F
    nop                                           ; $5CCF: $00
    cp $03                                        ; $5CD0: $FE $03
    ld bc, $8308                                  ; $5CD2: $01 $08 $83
    adc c                                         ; $5CD5: $89
    db $10                                        ; $5CD6: $10
    pop bc                                        ; $5CD7: $C1
    add b                                         ; $5CD8: $80
    rst RST_00                                    ; $5CD9: $C7
    ld [$078F], sp                                ; $5CDA: $08 $8F $07
    nop                                           ; $5CDD: $00
    ld a, d                                       ; $5CDE: $7A
    ld [bc], a                                    ; $5CDF: $02
    nop                                           ; $5CE0: $00
    ld e, b                                       ; $5CE1: $58
    ldh a, [$FF08]                                ; $5CE2: $F0 $08
    ldh [rNR10], a                                ; $5CE4: $E0 $10
    pop hl                                        ; $5CE6: $E1
    ld [hl], h                                    ; $5CE7: $74
    ret nz                                        ; $5CE8: $C0

    nop                                           ; $5CE9: $00
    sbc $79                                       ; $5CEA: $DE $79
    rrca                                          ; $5CEC: $0F
    db $10                                        ; $5CED: $10
    rst RST_38                                    ; $5CEE: $FF
    add hl, bc                                    ; $5CEF: $09
    or e                                          ; $5CF0: $B3
    ld [$00F4], sp                                ; $5CF1: $08 $F4 $00

jr_030_5CF4:
    jr c, jr_030_5CF4                             ; $5CF4: $38 $FE

    inc b                                         ; $5CF6: $04
    jr z, jr_030_5D09                             ; $5CF7: $28 $10

    sbc l                                         ; $5CF9: $9D
    nop                                           ; $5CFA: $00
    jr nz, jr_030_5D6D                            ; $5CFB: $20 $70

    ld a, [bc]                                    ; $5CFD: $0A
    ld sp, hl                                     ; $5CFE: $F9
    add sp, -$80                                  ; $5CFF: $E8 $80
    nop                                           ; $5D01: $00
    jp nc, Jump_000_03FE                          ; $5D02: $D2 $FE $03

    sbc a                                         ; $5D05: $9F
    ld [$1F3F], sp                                ; $5D06: $08 $3F $1F

jr_030_5D09:
    nop                                           ; $5D09: $00
    ld [$0948], sp                                ; $5D0A: $08 $48 $09
    jr z, jr_030_5D12                             ; $5D0D: $28 $03

    ld bc, $0709                                  ; $5D0F: $01 $09 $07

jr_030_5D12:
    ld [bc], a                                    ; $5D12: $02
    ld c, $27                                     ; $5D13: $0E $27
    inc b                                         ; $5D15: $04
    inc a                                         ; $5D16: $3C
    ld e, b                                       ; $5D17: $58
    ld a, b                                       ; $5D18: $78
    jr nc, jr_030_5D1B                            ; $5D19: $30 $00

jr_030_5D1B:
    rst RST_20                                    ; $5D1B: $E7
    nop                                           ; $5D1C: $00
    ld d, e                                       ; $5D1D: $53
    add b                                         ; $5D1E: $80

jr_030_5D1F:
    ld [$10C1], sp                                ; $5D1F: $08 $C1 $10
    ldh [$FFC0], a                                ; $5D22: $E0 $C0
    nop                                           ; $5D24: $00
    jr jr_030_5D1F                                ; $5D25: $18 $F8

    add hl, bc                                    ; $5D27: $09
    ld c, c                                       ; $5D28: $49
    add hl, bc                                    ; $5D29: $09
    add hl, hl                                    ; $5D2A: $29
    ld e, b                                       ; $5D2B: $58
    ld b, b                                       ; $5D2C: $40
    ld [hl], b                                    ; $5D2D: $70
    jr nz, @+$01                                  ; $5D2E: $20 $FF

    add hl, bc                                    ; $5D30: $09
    nop                                           ; $5D31: $00
    rst RST_30                                    ; $5D32: $F7
    adc c                                         ; $5D33: $89
    ld [$99E9], sp                                ; $5D34: $08 $E9 $99
    add hl, bc                                    ; $5D37: $09
    ld d, d                                       ; $5D38: $52
    ldh a, [$FF08]                                ; $5D39: $F0 $08
    ld hl, sp-$50                                 ; $5D3B: $F8 $B0
    db $FC                                        ; $5D3D: $FC
    ld e, b                                       ; $5D3E: $58
    ld [$7D48], sp                                ; $5D3F: $08 $48 $7D
    add sp, $5A                                   ; $5D42: $E8 $5A
    add hl, bc                                    ; $5D44: $09
    nop                                           ; $5D45: $00
    rst RST_30                                    ; $5D46: $F7
    ld [bc], a                                    ; $5D47: $02
    jr nc, jr_030_5D52                            ; $5D48: $30 $08

    ld c, c                                       ; $5D4A: $49
    ld a, a                                       ; $5D4B: $7F
    db $10                                        ; $5D4C: $10
    ccf                                           ; $5D4D: $3F
    rra                                           ; $5D4E: $1F
    ld [$3810], sp                                ; $5D4F: $08 $10 $38

jr_030_5D52:
    ld [$397E], sp                                ; $5D52: $08 $7E $39
    ld [$4B29], sp                                ; $5D55: $08 $29 $4B
    nop                                           ; $5D58: $00
    rst RST_10                                    ; $5D59: $D7
    inc b                                         ; $5D5A: $04
    ld b, d                                       ; $5D5B: $42
    and h                                         ; $5D5C: $A4
    ld [$10E7], sp                                ; $5D5D: $08 $E7 $10
    di                                            ; $5D60: $F3
    pop hl                                        ; $5D61: $E1
    nop                                           ; $5D62: $00
    ld b, b                                       ; $5D63: $40
    ldh [$FF94], a                                ; $5D64: $E0 $94
    ld [$80C0], sp                                ; $5D66: $08 $C0 $80
    add hl, bc                                    ; $5D69: $09
    db $E3                                        ; $5D6A: $E3
    db $10                                        ; $5D6B: $10
    rst RST_00                                    ; $5D6C: $C7

jr_030_5D6D:
    inc bc                                        ; $5D6D: $03
    cp [hl]                                       ; $5D6E: $BE
    nop                                           ; $5D6F: $00
    ld bc, $E700                                  ; $5D70: $01 $00 $E7
    inc b                                         ; $5D73: $04
    and b                                         ; $5D74: $A0
    ld [$C0C2], sp                                ; $5D75: $08 $C2 $C0
    db $10                                        ; $5D78: $10
    xor b                                         ; $5D79: $A8
    add d                                         ; $5D7A: $82
    add a                                         ; $5D7B: $87
    ld [bc], a                                    ; $5D7C: $02
    ld c, $04                                     ; $5D7D: $0E $04
    inc a                                         ; $5D7F: $3C
    rlca                                          ; $5D80: $07
    ld [$30F8], sp                                ; $5D81: $08 $F8 $30
    ldh a, [$FFC0]                                ; $5D84: $F0 $C0
    nop                                           ; $5D86: $00
    rst RST_00                                    ; $5D87: $C7
    inc b                                         ; $5D88: $04
    ld e, a                                       ; $5D89: $5F
    ld bc, $0308                                  ; $5D8A: $01 $08 $03
    db $10                                        ; $5D8D: $10
    add hl, de                                    ; $5D8E: $19
    ld e, a                                       ; $5D8F: $5F
    dec bc                                        ; $5D90: $0B
    ld a, a                                       ; $5D91: $7F
    xor b                                         ; $5D92: $A8
    ld bc, $0862                                  ; $5D93: $01 $62 $08
    rst RST_30                                    ; $5D96: $F7
    db $10                                        ; $5D97: $10
    ld a, e                                       ; $5D98: $7B
    ld hl, $03FD                                  ; $5D99: $21 $FD $03
    jr c, @+$01                                   ; $5D9C: $38 $FF

    push hl                                       ; $5D9E: $E5
    rst RST_28                                    ; $5D9F: $EF
    ld b, h                                       ; $5DA0: $44
    xor $08                                       ; $5DA1: $EE $08
    ld a, [de]                                    ; $5DA3: $1A
    ld bc, $FE84                                  ; $5DA4: $01 $84 $FE
    and h                                         ; $5DA7: $A4
    db $FC                                        ; $5DA8: $FC
    sbc b                                         ; $5DA9: $98
    cp b                                          ; $5DAA: $B8
    stop                                          ; $5DAB: $10 $00
    xor b                                         ; $5DAD: $A8
    cp $80                                        ; $5DAE: $FE $80
    ld [$10C0], sp                                ; $5DB0: $08 $C0 $10
    ldh [rLCDC], a                                ; $5DB3: $E0 $40
    ld b, c                                       ; $5DB5: $41
    adc a                                         ; $5DB6: $8F

jr_030_5DB7:
    jr z, @-$7B                                   ; $5DB7: $28 $83

    ld bc, $3AC1                                  ; $5DB9: $01 $C1 $3A
    ld [$2860], sp                                ; $5DBC: $08 $60 $28
    rst RST_28                                    ; $5DBF: $EF
    ld c, b                                       ; $5DC0: $48
    ld b, b                                       ; $5DC1: $40
    ld [$1003], sp                                ; $5DC2: $08 $03 $10
    add hl, bc                                    ; $5DC5: $09
    add hl, hl                                    ; $5DC6: $29
    dec b                                         ; $5DC7: $05
    ld d, b                                       ; $5DC8: $50
    ld h, b                                       ; $5DC9: $60
    ld [$10F0], sp                                ; $5DCA: $08 $F0 $10
    ld a, h                                       ; $5DCD: $7C

jr_030_5DCE:
    jr nz, jr_030_5DCE                            ; $5DCE: $20 $FE

    inc l                                         ; $5DD0: $2C
    ld d, b                                       ; $5DD1: $50
    db $FC                                        ; $5DD2: $FC
    jr nc, @-$07                                  ; $5DD3: $30 $F7

    add sp, -$11                                  ; $5DD5: $E8 $EF
    ld b, a                                       ; $5DD7: $47
    rst RST_38                                    ; $5DD8: $FF
    ld c, b                                       ; $5DD9: $48
    ld hl, $80C8                                  ; $5DDA: $21 $C8 $80
    add hl, bc                                    ; $5DDD: $09
    sbc a                                         ; $5DDE: $9F
    ld [$078F], sp                                ; $5DDF: $08 $8F $07
    nop                                           ; $5DE2: $00
    xor h                                         ; $5DE3: $AC
    cp $06                                        ; $5DE4: $FE $06
    ld [$100F], sp                                ; $5DE6: $08 $0F $10
    ld e, b                                       ; $5DE9: $58
    ld [bc], a                                    ; $5DEA: $02
    rra                                           ; $5DEB: $1F
    or c                                          ; $5DEC: $B1
    ld [$103F], sp                                ; $5DED: $08 $3F $10
    xor b                                         ; $5DF0: $A8
    inc b                                         ; $5DF1: $04
    adc $84                                       ; $5DF2: $CE $84
    cp b                                          ; $5DF4: $B8
    or b                                          ; $5DF5: $B0
    jr @+$1E                                      ; $5DF6: $18 $1C

    ret c                                         ; $5DF8: $D8

    add hl, bc                                    ; $5DF9: $09
    cp c                                          ; $5DFA: $B9
    db $10                                        ; $5DFB: $10
    ld hl, sp-$70                                 ; $5DFC: $F8 $90
    db $EB                                        ; $5DFE: $EB
    nop                                           ; $5DFF: $00
    cp $03                                        ; $5E00: $FE $03
    pop bc                                        ; $5E02: $C1
    ld [$10E3], sp                                ; $5E03: $08 $E3 $10
    add hl, de                                    ; $5E06: $19
    ld e, c                                       ; $5E07: $59
    ld a, b                                       ; $5E08: $78
    ld [$10FC], sp                                ; $5E09: $08 $FC $10
    cp b                                          ; $5E0C: $B8
    add b                                         ; $5E0D: $80
    add c                                         ; $5E0E: $81
    jr z, jr_030_5DB7                             ; $5E0F: $28 $A6

    add hl, bc                                    ; $5E11: $09
    ld sp, hl                                     ; $5E12: $F9
    jr z, @+$01                                   ; $5E13: $28 $FF

    ld a, c                                       ; $5E15: $79
    nop                                           ; $5E16: $00
    sbc $60                                       ; $5E17: $DE $60
    or l                                          ; $5E19: $B5
    ld [$10F0], sp                                ; $5E1A: $08 $F0 $10
    ld e, b                                       ; $5E1D: $58
    jr nz, @+$7A                                  ; $5E1E: $20 $78

    add hl, sp                                    ; $5E20: $39
    ld [$E40E], sp                                ; $5E21: $08 $0E $E4
    xor $44                                       ; $5E24: $EE $44
    rst RST_28                                    ; $5E26: $EF
    ld [$0819], sp                                ; $5E27: $08 $19 $08
    add h                                         ; $5E2A: $84

jr_030_5E2B:
    inc bc                                        ; $5E2B: $03
    cp $A4                                        ; $5E2C: $FE $A4
    db $FC                                        ; $5E2E: $FC
    sbc b                                         ; $5E2F: $98
    cp b                                          ; $5E30: $B8
    stop                                          ; $5E31: $10 $00
    cp $AC                                        ; $5E33: $FE $AC
    dec b                                         ; $5E35: $05
    add b                                         ; $5E36: $80
    ld [$10C1], sp                                ; $5E37: $08 $C1 $10
    add sp, $41                                   ; $5E3A: $E8 $41
    rst RST_38                                    ; $5E3C: $FF
    ld e, d                                       ; $5E3D: $5A
    adc $E8                                       ; $5E3E: $CE $E8
    ld b, b                                       ; $5E40: $40
    nop                                           ; $5E41: $00
    ld c, b                                       ; $5E42: $48
    ld bc, $0308                                  ; $5E43: $01 $08 $03
    cp $10                                        ; $5E46: $FE $10
    add hl, de                                    ; $5E48: $19
    rlca                                          ; $5E49: $07
    inc bc                                        ; $5E4A: $03
    adc e                                         ; $5E4B: $8B
    ld hl, sp+$18                                 ; $5E4C: $F8 $18
    ldh [rTAC], a                                 ; $5E4E: $E0 $07
    ret nz                                        ; $5E50: $C0

    ldh a, [rNR41]                                ; $5E51: $F0 $20
    jr c, @+$12                                   ; $5E53: $38 $10

    add hl, bc                                    ; $5E55: $09
    add hl, hl                                    ; $5E56: $29
    ld c, c                                       ; $5E57: $49
    db $EB                                        ; $5E58: $EB
    nop                                           ; $5E59: $00
    rst RST_10                                    ; $5E5A: $D7
    inc b                                         ; $5E5B: $04
    rra                                           ; $5E5C: $1F
    ld [$10FF], sp                                ; $5E5D: $08 $FF $10
    ld [$E41E], sp                                ; $5E60: $08 $1E $E4
    db $FC                                        ; $5E63: $FC
    ld [$0BEB], sp                                ; $5E64: $08 $EB $0B
    ld h, b                                       ; $5E67: $60
    ld c, b                                       ; $5E68: $48
    rrca                                          ; $5E69: $0F
    ld [hl], l                                    ; $5E6A: $75
    rlca                                          ; $5E6B: $07
    nop                                           ; $5E6C: $00
    rst RST_20                                    ; $5E6D: $E7
    nop                                           ; $5E6E: $00
    jr nz, jr_030_5E79                            ; $5E6F: $20 $08

    ldh a, [rNR10]                                ; $5E71: $F0 $10
    inc d                                         ; $5E73: $14
    ld hl, sp-$70                                 ; $5E74: $F8 $90
    cp b                                          ; $5E76: $B8
    cp d                                          ; $5E77: $BA
    ld a, [hl-]                                   ; $5E78: $3A

jr_030_5E79:
    ld [$123F], sp                                ; $5E79: $08 $3F $12
    ld bc, $143E                                  ; $5E7C: $01 $3E $14
    ld e, $0C                                     ; $5E7F: $1E $0C
    ld c, $04                                     ; $5E81: $0E $04

jr_030_5E83:
    add h                                         ; $5E83: $84
    rst RST_20                                    ; $5E84: $E7
    cp e                                          ; $5E85: $BB
    ld [bc], a                                    ; $5E86: $02
    ld bc, $F008                                  ; $5E87: $01 $08 $F0
    ld [$1073], sp                                ; $5E8A: $08 $73 $10
    ret z                                         ; $5E8D: $C8

    ld a, [bc]                                    ; $5E8E: $0A
    inc de                                        ; $5E8F: $13
    rra                                           ; $5E90: $1F
    ld [$081D], sp                                ; $5E91: $08 $1D $08
    add hl, bc                                    ; $5E94: $09
    ld c, b                                       ; $5E95: $48
    inc bc                                        ; $5E96: $03
    adc $70                                       ; $5E97: $CE $70
    add hl, bc                                    ; $5E99: $09
    rlca                                          ; $5E9A: $07

jr_030_5E9B:
    ld [bc], a                                    ; $5E9B: $02
    add hl, bc                                    ; $5E9C: $09
    nop                                           ; $5E9D: $00
    xor $C0                                       ; $5E9E: $EE $C0
    and c                                         ; $5EA0: $A1
    ld [$10E0], sp                                ; $5EA1: $08 $E0 $10
    ld hl, sp+$40                                 ; $5EA4: $F8 $40
    db $FC                                        ; $5EA6: $FC
    ld e, b                                       ; $5EA7: $58
    jr jr_030_5E2B                                ; $5EA8: $18 $81

    jr nc, jr_030_5E9B                            ; $5EAA: $30 $EF

    add b                                         ; $5EAC: $80
    rst RST_18                                    ; $5EAD: $DF

jr_030_5EAE:
    adc a                                         ; $5EAE: $8F
    rst RST_38                                    ; $5EAF: $FF
    sub b                                         ; $5EB0: $90
    nop                                           ; $5EB1: $00
    jp $0978                                      ; $5EB2: $C3 $78 $09


    ccf                                           ; $5EB5: $3F
    db $10                                        ; $5EB6: $10
    rra                                           ; $5EB7: $1F
    rrca                                          ; $5EB8: $0F
    nop                                           ; $5EB9: $00
    cp $DD                                        ; $5EBA: $FE $DD
    rlca                                          ; $5EBC: $07
    inc bc                                        ; $5EBD: $03
    add b                                         ; $5EBE: $80
    ld b, a                                       ; $5EBF: $47
    ld c, a                                       ; $5EC0: $4F
    ld [bc], a                                    ; $5EC1: $02
    inc bc                                        ; $5EC2: $03
    ld [$0741], sp                                ; $5EC3: $08 $41 $07
    db $10                                        ; $5EC6: $10
    dec bc                                        ; $5EC7: $0B
    ld bc, $091F                                  ; $5EC8: $01 $1F $09
    rrca                                          ; $5ECB: $0F
    jr nc, jr_030_5E83                            ; $5ECC: $30 $B5

    nop                                           ; $5ECE: $00
    ld [bc], a                                    ; $5ECF: $02
    dec bc                                        ; $5ED0: $0B
    jr c, jr_030_5ED7                             ; $5ED1: $38 $04

    ld [$1905], sp                                ; $5ED3: $08 $05 $19
    ld a, [hl-]                                   ; $5ED6: $3A

jr_030_5ED7:
    dec e                                         ; $5ED7: $1D
    ld [$FE00], sp                                ; $5ED8: $08 $00 $FE
    ld bc, $0880                                  ; $5EDB: $01 $80 $08
    ret z                                         ; $5EDE: $C8

jr_030_5EDF:
    and b                                         ; $5EDF: $A0
    ld [$10FD], sp                                ; $5EE0: $08 $FD $10
    cp $24                                        ; $5EE3: $FE $24
    ld [hl], a                                    ; $5EE5: $77
    ld [hl+], a                                   ; $5EE6: $22
    ld a, a                                       ; $5EE7: $7F
    ld b, h                                       ; $5EE8: $44
    ld h, $19                                     ; $5EE9: $26 $19
    ld [hl], d                                    ; $5EEB: $72
    jr nz, jr_030_5EDF                            ; $5EEC: $20 $F1

    ld [$C0E1], sp                                ; $5EEE: $08 $E1 $C0
    push af                                       ; $5EF1: $F5

jr_030_5EF2:
    nop                                           ; $5EF2: $00
    and b                                         ; $5EF3: $A0
    xor c                                         ; $5EF4: $A9
    dec b                                         ; $5EF5: $05
    ld h, b                                       ; $5EF6: $60
    ld [$10F0], sp                                ; $5EF7: $08 $F0 $10
    jp z, $8808                                   ; $5EFA: $CA $08 $88

    rst RST_38                                    ; $5EFD: $FF
    or b                                          ; $5EFE: $B0
    ld [$E867], sp                                ; $5EFF: $08 $67 $E8
    jr z, @+$34                                   ; $5F02: $28 $32

    ld a, c                                       ; $5F04: $79
    jr nc, jr_030_5EDF                            ; $5F05: $30 $D8

    ld e, b                                       ; $5F07: $58
    di                                            ; $5F08: $F3
    ld h, c                                       ; $5F09: $61
    ld [$FAA1], sp                                ; $5F0A: $08 $A1 $FA
    add hl, bc                                    ; $5F0D: $09
    jr c, @-$76                                   ; $5F0E: $38 $88

    nop                                           ; $5F10: $00
    cp $02                                        ; $5F11: $FE $02
    ld [$9A07], sp                                ; $5F13: $08 $07 $9A
    db $10                                        ; $5F16: $10
    inc bc                                        ; $5F17: $03
    ld bc, $2800                                  ; $5F18: $01 $00 $28
    adc a                                         ; $5F1B: $8F
    db $10                                        ; $5F1C: $10
    rst RST_18                                    ; $5F1D: $DF
    db $10                                        ; $5F1E: $10

jr_030_5F1F:
    adc h                                         ; $5F1F: $8C
    rst RST_08                                    ; $5F20: $CF
    add l                                         ; $5F21: $85
    jr jr_030_5EAE                                ; $5F22: $18 $8A

jr_030_5F24:
    sbc [hl]                                      ; $5F24: $9E
    inc c                                         ; $5F25: $0C
    cp h                                          ; $5F26: $BC
    daa                                           ; $5F27: $27
    ld [$E0EB], sp                                ; $5F28: $08 $EB $E0
    rst RST_20                                    ; $5F2B: $E7
    jp $FE00                                      ; $5F2C: $C3 $00 $FE


    ret                                           ; $5F2F: $C9


    and e                                         ; $5F30: $A3
    jp hl                                         ; $5F31: $E9


    push bc                                       ; $5F32: $C5
    jr jr_030_5F24                                ; $5F33: $18 $EF

    call nz, Call_000_30C7                        ; $5F35: $C4 $C7 $30
    adc b                                         ; $5F38: $88
    add c                                         ; $5F39: $81
    jr c, jr_030_5F1F                             ; $5F3A: $38 $E3

    pop bc                                        ; $5F3C: $C1
    di                                            ; $5F3D: $F3
    ld hl, $1237                                  ; $5F3E: $21 $37 $12
    add hl, bc                                    ; $5F41: $09
    dec e                                         ; $5F42: $1D
    rst RST_30                                    ; $5F43: $F7
    ld [hl+], a                                   ; $5F44: $22
    xor $78                                       ; $5F45: $EE $78
    nop                                           ; $5F47: $00
    cp $8A                                        ; $5F48: $FE $8A
    ld [$DF60], sp                                ; $5F4A: $08 $60 $DF
    db $10                                        ; $5F4D: $10
    add sp, -$7B                                  ; $5F4E: $E8 $85
    push af                                       ; $5F50: $F5
    ldh [$FFFE], a                                ; $5F51: $E0 $FE
    sub h                                         ; $5F53: $94
    ld c, d                                       ; $5F54: $4A
    cp a                                          ; $5F55: $BF
    cp b                                          ; $5F56: $B8
    cp e                                          ; $5F57: $BB
    ld de, $1318                                  ; $5F58: $11 $18 $13
    jr jr_030_5F6D                                ; $5F5B: $18 $10

    dec bc                                        ; $5F5D: $0B
    ld hl, sp-$70                                 ; $5F5E: $F8 $90
    ldh a, [$FF60]                                ; $5F60: $F0 $60
    ld [hl], b                                    ; $5F62: $70
    ld b, b                                       ; $5F63: $40
    nop                                           ; $5F64: $00
    cp $A1                                        ; $5F65: $FE $A1
    inc bc                                        ; $5F67: $03
    add d                                         ; $5F68: $82
    ld [$0207], sp                                ; $5F69: $08 $07 $02
    inc bc                                        ; $5F6C: $03

jr_030_5F6D:
    ld bc, $BA00                                  ; $5F6D: $01 $00 $BA
    jr z, jr_030_5EF2                             ; $5F70: $28 $80

    ld a, [bc]                                    ; $5F72: $0A
    rlca                                          ; $5F73: $07
    rlca                                          ; $5F74: $07
    jr @+$0A                                      ; $5F75: $18 $08

    dec a                                         ; $5F77: $3D
    adc h                                         ; $5F78: $8C
    db $10                                        ; $5F79: $10
    ld a, a                                       ; $5F7A: $7F
    add hl, bc                                    ; $5F7B: $09
    rst RST_38                                    ; $5F7C: $FF
    db $10                                        ; $5F7D: $10
    ld [$FC88], sp                                ; $5F7E: $08 $88 $FC
    ld d, h                                       ; $5F81: $54
    jr c, jr_030_5F8C                             ; $5F82: $38 $08

    ld c, b                                       ; $5F84: $48
    add hl, bc                                    ; $5F85: $09
    ld a, h                                       ; $5F86: $7C
    jr z, jr_030_5FC5                             ; $5F87: $28 $3C

    ld [$108F], sp                                ; $5F89: $08 $8F $10

jr_030_5F8C:
    db $10                                        ; $5F8C: $10
    ld [hl], b                                    ; $5F8D: $70
    jr nz, jr_030_5F90                            ; $5F8E: $20 $00

jr_030_5F90:
    cp $01                                        ; $5F90: $FE $01
    ld c, c                                       ; $5F92: $49
    ld b, [hl]                                    ; $5F93: $46
    ldh a, [rNR10]                                ; $5F94: $F0 $10
    ld hl, sp-$70                                 ; $5F96: $F8 $90
    cp b                                          ; $5F98: $B8
    sbc b                                         ; $5F99: $98
    xor c                                         ; $5F9A: $A9
    ld a, [hl-]                                   ; $5F9B: $3A
    add b                                         ; $5F9C: $80
    ld [$123F], sp                                ; $5F9D: $08 $3F $12
    ld a, $14                                     ; $5FA0: $3E $14
    ld e, $0C                                     ; $5FA2: $1E $0C
    ld c, $75                                     ; $5FA4: $0E $75
    inc b                                         ; $5FA6: $04
    nop                                           ; $5FA7: $00
    rst RST_20                                    ; $5FA8: $E7
    ld [bc], a                                    ; $5FA9: $02
    ld bc, $2108                                  ; $5FAA: $01 $08 $21
    ld [$7112], sp                                ; $5FAD: $08 $12 $71
    jr nz, jr_030_5FEB                            ; $5FB0: $20 $39

    ret c                                         ; $5FB2: $D8

    dec e                                         ; $5FB3: $1D
    ld [$0909], sp                                ; $5FB4: $08 $09 $09
    ld [$076A], a                                 ; $5FB7: $EA $6A $07
    dec b                                         ; $5FBA: $05
    add b                                         ; $5FBB: $80
    ld [$10C0], sp                                ; $5FBC: $08 $C0 $10
    ldh [$FFE8], a                                ; $5FBF: $E0 $E8
    db $10                                        ; $5FC1: $10
    add hl, de                                    ; $5FC2: $19
    dec bc                                        ; $5FC3: $0B
    pop bc                                        ; $5FC4: $C1

jr_030_5FC5:
    ld [$81C3], sp                                ; $5FC5: $08 $C3 $81
    rst RST_00                                    ; $5FC8: $C7
    rlca                                          ; $5FC9: $07
    add d                                         ; $5FCA: $82
    cp $44                                        ; $5FCB: $FE $44
    ld a, h                                       ; $5FCD: $7C
    jr c, jr_030_5FD0                             ; $5FCE: $38 $00

jr_030_5FD0:
    rst RST_30                                    ; $5FD0: $F7
    ld b, $52                                     ; $5FD1: $06 $52
    ld b, $08                                     ; $5FD3: $06 $08
    rrca                                          ; $5FD5: $0F
    db $10                                        ; $5FD6: $10
    rlca                                          ; $5FD7: $07
    ld [bc], a                                    ; $5FD8: $02
    ld [$5003], sp                                ; $5FD9: $08 $03 $50
    adc a                                         ; $5FDC: $8F
    jr jr_030_5FFE                                ; $5FDD: $18 $1F

    ld b, b                                       ; $5FDF: $40
    ccf                                           ; $5FE0: $3F
    ld [de], a                                    ; $5FE1: $12
    ld e, $0C                                     ; $5FE2: $1E $0C
    rst RST_28                                    ; $5FE4: $EF
    nop                                           ; $5FE5: $00
    rst RST_00                                    ; $5FE6: $C7
    nop                                           ; $5FE7: $00
    ld bc, $A008                                  ; $5FE8: $01 $08 $A0

jr_030_5FEB:
    db $10                                        ; $5FEB: $10
    add hl, de                                    ; $5FEC: $19
    ld d, b                                       ; $5FED: $50
    inc b                                         ; $5FEE: $04
    ld [$104F], sp                                ; $5FEF: $08 $4F $10
    rst RST_20                                    ; $5FF2: $E7
    ld b, e                                       ; $5FF3: $43
    jp $E980                                      ; $5FF4: $C3 $80 $E9


jr_030_5FF7:
    nop                                           ; $5FF7: $00
    jr c, jr_030_6003                             ; $5FF8: $38 $09

    ret nz                                        ; $5FFA: $C0

    db $10                                        ; $5FFB: $10
    pop hl                                        ; $5FFC: $E1
    ld b, b                                       ; $5FFD: $40

jr_030_5FFE:
    ld d, b                                       ; $5FFE: $50
    jp hl                                         ; $5FFF: $E9


    sbc d                                         ; $6000: $9A
    dec b                                         ; $6001: $05
    ld a, c                                       ; $6002: $79

jr_030_6003:
    ldh a, [rNR10]                                ; $6003: $F0 $10
    ld hl, sp+$70                                 ; $6005: $F8 $70
    nop                                           ; $6007: $00
    pop bc                                        ; $6008: $C1
    jr z, jr_030_6024                             ; $6009: $28 $19

    db $FC                                        ; $600B: $FC
    adc b                                         ; $600C: $88
    sbc l                                         ; $600D: $9D
    ld [$0A1D], sp                                ; $600E: $08 $1D $0A
    inc hl                                        ; $6011: $23
    jr c, jr_030_6024                             ; $6012: $38 $10

    adc b                                         ; $6014: $88
    jr nz, jr_030_5FF7                            ; $6015: $20 $E0

    ret nz                                        ; $6017: $C0

    nop                                           ; $6018: $00
    cp $A8                                        ; $6019: $FE $A8
    inc bc                                        ; $601B: $03
    rra                                           ; $601C: $1F
    ld [$103F], sp                                ; $601D: $08 $3F $10
    ld a, a                                       ; $6020: $7F
    inc h                                         ; $6021: $24
    xor $10                                       ; $6022: $EE $10

jr_030_6024:
    ld b, h                                       ; $6024: $44
    adc $84                                       ; $6025: $CE $84
    add hl, bc                                    ; $6027: $09
    call c, $FC88                                 ; $6028: $DC $88 $FC
    ld c, b                                       ; $602B: $48
    ld c, $79                                     ; $602C: $0E $79
    jr nc, jr_030_6063                            ; $602E: $30 $33

    ld bc, $E700                                  ; $6030: $01 $00 $E7
    ld [bc], a                                    ; $6033: $02
    add b                                         ; $6034: $80
    and c                                         ; $6035: $A1
    ld [$10C0], sp                                ; $6036: $08 $C0 $10
    ldh [rLCDC], a                                ; $6039: $E0 $40
    ld [hl], b                                    ; $603B: $70
    jr nz, jr_030_604D                            ; $603C: $20 $0F

    db $F4                                        ; $603E: $F4
    ld e, c                                       ; $603F: $59
    ld a, c                                       ; $6040: $79
    sbc c                                         ; $6041: $99
    rlca                                          ; $6042: $07
    add hl, bc                                    ; $6043: $09
    ld [$081F], sp                                ; $6044: $08 $1F $08
    ld a, [hl-]                                   ; $6047: $3A
    rrca                                          ; $6048: $0F
    rlca                                          ; $6049: $07
    nop                                           ; $604A: $00
    jr z, @+$1A                                   ; $604B: $28 $18

jr_030_604D:
    inc b                                         ; $604D: $04
    jr @+$05                                      ; $604E: $18 $03

    db $FD                                        ; $6050: $FD
    nop                                           ; $6051: $00
    jr z, jr_030_606D                             ; $6052: $28 $19

    add hl, sp                                    ; $6054: $39
    ld c, l                                       ; $6055: $4D
    dec b                                         ; $6056: $05
    ret nz                                        ; $6057: $C0

    ld [$FC49], sp                                ; $6058: $08 $49 $FC
    db $10                                        ; $605B: $10
    cp $7C                                        ; $605C: $FE $7C
    add hl, de                                    ; $605E: $19
    ld hl, sp+$40                                 ; $605F: $F8 $40
    jr jr_030_60CD                                ; $6061: $18 $6A

jr_030_6063:
    ld a, b                                       ; $6063: $78
    jr jr_030_608E                                ; $6064: $18 $28

    ldh [$FF28], a                                ; $6066: $E0 $28
    ldh a, [rOBP1]                                ; $6068: $F0 $49
    ld [hl], b                                    ; $606A: $70
    adc l                                         ; $606B: $8D
    ld c, b                                       ; $606C: $48

jr_030_606D:
    ld c, b                                       ; $606D: $48
    adc $84                                       ; $606E: $CE $84
    nop                                           ; $6070: $00
    cp $08                                        ; $6071: $FE $08
    ld [$1F45], sp                                ; $6073: $08 $45 $1F
    db $10                                        ; $6076: $10
    rrca                                          ; $6077: $0F
    rlca                                          ; $6078: $07
    daa                                           ; $6079: $27
    jr z, jr_030_60FB                             ; $607A: $28 $7F

    db $10                                        ; $607C: $10
    inc hl                                        ; $607D: $23
    ccf                                           ; $607E: $3F
    add hl, de                                    ; $607F: $19

Jump_030_6080:
    ld c, b                                       ; $6080: $48
    ld [bc], a                                    ; $6081: $02
    ld c, $04                                     ; $6082: $0E $04
    jr jr_030_6096                                ; $6084: $18 $10

    add e                                         ; $6086: $83
    jr c, jr_030_609A                             ; $6087: $38 $11

    ld [hl], e                                    ; $6089: $73
    ld hl, $40E1                                  ; $608A: $21 $E1 $40
    nop                                           ; $608D: $00

jr_030_608E:
    cp $EA                                        ; $608E: $FE $EA
    ld bc, $08F0                                  ; $6090: $01 $F0 $08
    sbc h                                         ; $6093: $9C
    db $10                                        ; $6094: $10
    adc [hl]                                      ; $6095: $8E

jr_030_6096:
    cp b                                          ; $6096: $B8
    rst RST_08                                    ; $6097: $CF
    ld d, [hl]                                    ; $6098: $56
    add h                                         ; $6099: $84

jr_030_609A:
    add hl, hl                                    ; $609A: $29
    inc e                                         ; $609B: $1C
    ld [$081E], sp                                ; $609C: $08 $1E $08
    ld hl, sp+$0A                                 ; $609F: $F8 $0A
    inc de                                        ; $60A1: $13
    sbc [hl]                                      ; $60A2: $9E
    inc c                                         ; $60A3: $0C
    xor $68                                       ; $60A4: $EE $68
    cp $E4                                        ; $60A6: $FE $E4
    nop                                           ; $60A8: $00
    rst RST_30                                    ; $60A9: $F7
    cp c                                          ; $60AA: $B9
    ld [bc], a                                    ; $60AB: $02
    inc a                                         ; $60AC: $3C
    ld [$1078], sp                                ; $60AD: $08 $78 $10
    db $FC                                        ; $60B0: $FC
    ret nz                                        ; $60B1: $C0

    nop                                           ; $60B2: $00
    cp h                                          ; $60B3: $BC
    ld c, d                                       ; $60B4: $4A
    add b                                         ; $60B5: $80
    ld [$1028], sp                                ; $60B6: $08 $28 $10
    ld c, b                                       ; $60B9: $48
    ld b, b                                       ; $60BA: $40
    ld a, [hl]                                    ; $60BB: $7E
    db $EB                                        ; $60BC: $EB
    ld l, b                                       ; $60BD: $68
    adc c                                         ; $60BE: $89
    rlca                                          ; $60BF: $07
    inc bc                                        ; $60C0: $03
    ld [$1007], sp                                ; $60C1: $08 $07 $10
    nop                                           ; $60C4: $00
    dec l                                         ; $60C5: $2D
    ld bc, $080F                                  ; $60C6: $01 $0F $08
    rra                                           ; $60C9: $1F
    stop                                          ; $60CA: $10 $00
    ld [bc], a                                    ; $60CC: $02

jr_030_60CD:
    ld c, b                                       ; $60CD: $48
    sub e                                         ; $60CE: $93
    ld a, [bc]                                    ; $60CF: $0A
    ld c, $04                                     ; $60D0: $0E $04
    add hl, bc                                    ; $60D2: $09
    inc e                                         ; $60D3: $1C
    ld [$0009], sp                                ; $60D4: $08 $09 $00
    call nc, $01FE                                ; $60D7: $D4 $FE $01
    add b                                         ; $60DA: $80
    ld [$08E0], sp                                ; $60DB: $08 $E0 $08
    ldh a, [$FF60]                                ; $60DE: $F0 $60
    ret nc                                        ; $60E0: $D0

    jr jr_030_6113                                ; $60E1: $18 $30

    cp h                                          ; $60E3: $BC
    jr z, @+$80                                   ; $60E4: $28 $7E

    inc a                                         ; $60E6: $3C
    db $FC                                        ; $60E7: $FC
    ld b, b                                       ; $60E8: $40

jr_030_60E9:
    cp $00                                        ; $60E9: $FE $00
    jr z, jr_030_60F6                             ; $60EB: $28 $09

    add hl, hl                                    ; $60ED: $29
    ld c, c                                       ; $60EE: $49
    nop                                           ; $60EF: $00
    call c, Call_030_412E                         ; $60F0: $DC $2E $41
    ld d, h                                       ; $60F3: $54
    nop                                           ; $60F4: $00
    nop                                           ; $60F5: $00

jr_030_60F6:
    ld sp, $7B08                                  ; $60F6: $31 $08 $7B
    db $10                                        ; $60F9: $10
    dec a                                         ; $60FA: $3D

jr_030_60FB:
    jr jr_030_610F                                ; $60FB: $18 $12

    jr c, jr_030_610F                             ; $60FD: $38 $10

    dec sp                                        ; $60FF: $3B
    ld [$133F], sp                                ; $6100: $08 $3F $13
    ld [$0B1C], sp                                ; $6103: $08 $1C $0B
    ld a, h                                       ; $6106: $7C
    jr nz, jr_030_60E9                            ; $6107: $20 $E0

    ld b, b                                       ; $6109: $40
    add hl, bc                                    ; $610A: $09
    ld a, a                                       ; $610B: $7F
    jr z, jr_030_6156                             ; $610C: $28 $48

    ld [hl], l                                    ; $610E: $75

jr_030_610F:
    rra                                           ; $610F: $1F
    nop                                           ; $6110: $00
    pop de                                        ; $6111: $D1
    inc b                                         ; $6112: $04

jr_030_6113:
    ld b, d                                       ; $6113: $42
    ld [$10E7], sp                                ; $6114: $08 $E7 $10
    ld [bc], a                                    ; $6117: $02
    di                                            ; $6118: $F3
    and c                                         ; $6119: $A1
    and e                                         ; $611A: $A3
    ld bc, $82C7                                  ; $611B: $01 $C7 $82
    add hl, bc                                    ; $611E: $09
    add a                                         ; $611F: $87
    inc [hl]                                      ; $6120: $34
    ld [bc], a                                    ; $6121: $02
    inc bc                                        ; $6122: $03
    jr c, @+$0B                                   ; $6123: $38 $09

    ld b, c                                       ; $6125: $41
    adc b                                         ; $6126: $88
    ldh [rLCDC], a                                ; $6127: $E0 $40
    ld a, [hl-]                                   ; $6129: $3A
    pop hl                                        ; $612A: $E1
    ret nz                                        ; $612B: $C0

    nop                                           ; $612C: $00
    cp $01                                        ; $612D: $FE $01
    jr nc, @+$0A                                  ; $612F: $30 $08

    ld hl, sp-$78                                 ; $6131: $F8 $88
    db $10                                        ; $6133: $10
    db $FC                                        ; $6134: $FC
    ld c, b                                       ; $6135: $48
    db $FD                                        ; $6136: $FD
    ld [$88DD], sp                                ; $6137: $08 $DD $88
    call c, Call_000_0890                         ; $613A: $DC $90 $08
    sbc h                                         ; $613D: $9C
    ld [$3809], sp                                ; $613E: $08 $09 $38
    db $10                                        ; $6141: $10
    ldh a, [rNR41]                                ; $6142: $F0 $20
    ld l, d                                       ; $6144: $6A
    ldh [rIE], a                                  ; $6145: $E0 $FF
    inc b                                         ; $6147: $04
    rlca                                          ; $6148: $07
    ld [$109F], sp                                ; $6149: $08 $9F $10
    rst RST_38                                    ; $614C: $FF
    dec sp                                        ; $614D: $3B
    sbc b                                         ; $614E: $98
    ld hl, sp-$60                                 ; $614F: $F8 $A0
    nop                                           ; $6151: $00
    ld e, d                                       ; $6152: $5A
    ld bc, $1069                                  ; $6153: $01 $69 $10

jr_030_6156:
    ld a, [hl-]                                   ; $6156: $3A
    rrca                                          ; $6157: $0F
    ld b, $00                                     ; $6158: $06 $00
    rst RST_10                                    ; $615A: $D7
    ld [bc], a                                    ; $615B: $02
    ld [$9C08], sp                                ; $615C: $08 $08 $9C
    add c                                         ; $615F: $81
    db $10                                        ; $6160: $10
    adc $84                                       ; $6161: $CE $84
    xor $44                                       ; $6163: $EE $44
    ld a, [hl]                                    ; $6165: $7E
    inc h                                         ; $6166: $24
    add hl, bc                                    ; $6167: $09
    ld b, d                                       ; $6168: $42
    ld a, a                                       ; $6169: $7F
    ld [$45EF], sp                                ; $616A: $08 $EF $45
    rst RST_00                                    ; $616D: $C7
    add e                                         ; $616E: $83
    nop                                           ; $616F: $00
    ld bc, $00FA                                  ; $6170: $01 $FA $00
    rst RST_20                                    ; $6173: $E7
    inc b                                         ; $6174: $04
    ldh a, [$FF08]                                ; $6175: $F0 $08
    inc e                                         ; $6177: $1C
    db $10                                        ; $6178: $10
    rrca                                          ; $6179: $0F
    add hl, bc                                    ; $617A: $09
    inc b                                         ; $617B: $04
    rlca                                          ; $617C: $07
    ld [bc], a                                    ; $617D: $02
    add a                                         ; $617E: $87
    ld [$80C2], sp                                ; $617F: $08 $C2 $80

jr_030_6182:
    nop                                           ; $6182: $00
    db $DD                                        ; $6183: $DD
    ld e, b                                       ; $6184: $58
    add hl, bc                                    ; $6185: $09
    add c                                         ; $6186: $81
    ld [$01FF], sp                                ; $6187: $08 $FF $01
    jr nc, jr_030_6194                            ; $618A: $30 $08

    ld b, b                                       ; $618C: $40
    ld a, b                                       ; $618D: $78
    db $10                                        ; $618E: $10
    ld a, $10                                     ; $618F: $3E $10
    rst RST_38                                    ; $6191: $FF
    ld d, $FE                                     ; $6192: $16 $FE

jr_030_6194:
    ld hl, sp+$00                                 ; $6194: $F8 $00
    ei                                            ; $6196: $FB
    jr nz, @+$79                                  ; $6197: $20 $77

    inc hl                                        ; $6199: $23
    ld a, a                                       ; $619A: $7F
    inc h                                         ; $619B: $24
    db $E4                                        ; $619C: $E4
    ld b, b                                       ; $619D: $40
    add [hl]                                      ; $619E: $86
    add hl, bc                                    ; $619F: $09
    rst RST_08                                    ; $61A0: $CF
    add h                                         ; $61A1: $84
    rst RST_00                                    ; $61A2: $C7
    add e                                         ; $61A3: $83
    nop                                           ; $61A4: $00
    cp $03                                        ; $61A5: $FE $03
    or l                                          ; $61A7: $B5
    ld [$1007], sp                                ; $61A8: $08 $07 $10
    nop                                           ; $61AB: $00
    ld bc, $C30B                                  ; $61AC: $01 $0B $C3
    ld [$E323], sp                                ; $61AF: $08 $23 $E3
    pop bc                                        ; $61B2: $C1
    cp b                                          ; $61B3: $B8
    ld [bc], a                                    ; $61B4: $02
    ld c, $04                                     ; $61B5: $0E $04
    add hl, bc                                    ; $61B7: $09
    add hl, hl                                    ; $61B8: $29
    push af                                       ; $61B9: $F5
    ld c, c                                       ; $61BA: $49
    nop                                           ; $61BB: $00
    cp $01                                        ; $61BC: $FE $01
    add b                                         ; $61BE: $80
    ld [$10C0], sp                                ; $61BF: $08 $C0 $10
    ld b, c                                       ; $61C2: $41
    adc b                                         ; $61C3: $88
    jr jr_030_6182                                ; $61C4: $18 $BC

    ld [$38FC], sp                                ; $61C6: $08 $FC $38
    ld hl, sp+$40                                 ; $61C9: $F8 $40
    rst RST_30                                    ; $61CB: $F7
    nop                                           ; $61CC: $00
    ld a, d                                       ; $61CD: $7A
    ldh a, [$FF08]                                ; $61CE: $F0 $08
    cp $10                                        ; $61D0: $FE $10
    ld [$D460], sp                                ; $61D2: $08 $60 $D4
    nop                                           ; $61D5: $00
    xor $0C                                       ; $61D6: $EE $0C
    ld [$103F], sp                                ; $61D8: $08 $3F $10
    ld a, a                                       ; $61DB: $7F
    dec h                                         ; $61DC: $25
    adc [hl]                                      ; $61DD: $8E
    ld [$FF1E], sp                                ; $61DE: $08 $1E $FF
    ld b, d                                       ; $61E1: $42
    jr jr_030_6224                                ; $61E2: $18 $40

    nop                                           ; $61E4: $00
    ld bc, $4706                                  ; $61E5: $01 $06 $47
    inc bc                                        ; $61E8: $03
    db $E3                                        ; $61E9: $E3
    ld b, b                                       ; $61EA: $40
    ldh [$FF08], a                                ; $61EB: $E0 $08
    ld c, b                                       ; $61ED: $48
    jr nz, @-$44                                  ; $61EE: $20 $BA

    ld c, b                                       ; $61F0: $48
    rra                                           ; $61F1: $1F
    nop                                           ; $61F2: $00
    cp $01                                        ; $61F3: $FE $01
    add b                                         ; $61F5: $80
    ld [$FFC0], sp                                ; $61F6: $08 $C0 $FF
    db $10                                        ; $61F9: $10
    ld [$A818], sp                                ; $61FA: $08 $18 $A8
    db $10                                        ; $61FD: $10
    add hl, de                                    ; $61FE: $19
    ld c, h                                       ; $61FF: $4C
    ld [$29EB], sp                                ; $6200: $08 $EB $29
    sbc e                                         ; $6203: $9B
    rlca                                          ; $6204: $07
    inc bc                                        ; $6205: $03
    ld [$1007], sp                                ; $6206: $08 $07 $10
    nop                                           ; $6209: $00
    dec h                                         ; $620A: $25
    ld bc, $080F                                  ; $620B: $01 $0F $08
    rra                                           ; $620E: $1F
    ld c, $18                                     ; $620F: $0E $18
    ld [bc], a                                    ; $6211: $02
    db $10                                        ; $6212: $10
    ld c, c                                       ; $6213: $49
    inc b                                         ; $6214: $04
    add hl, bc                                    ; $6215: $09
    dec e                                         ; $6216: $1D
    ld [$0948], sp                                ; $6217: $08 $48 $09
    dec bc                                        ; $621A: $0B
    ld l, b                                       ; $621B: $68
    ld [$F700], a                                 ; $621C: $EA $00 $F7
    ld [bc], a                                    ; $621F: $02
    add b                                         ; $6220: $80
    ld [$08C4], sp                                ; $6221: $08 $C4 $08

jr_030_6224:
    xor $A0                                       ; $6224: $EE $A0
    db $10                                        ; $6226: $10
    rst RST_18                                    ; $6227: $DF
    add sp, $3F                                   ; $6228: $E8 $3F
    ld a, [de]                                    ; $622A: $1A
    dec sp                                        ; $622B: $3B
    db $10                                        ; $622C: $10
    ld hl, sp-$80                                 ; $622D: $F8 $80
    add hl, bc                                    ; $622F: $09
    ldh a, [$FFFC]                                ; $6230: $F0 $FC

jr_030_6232:
    jr jr_030_6232                                ; $6232: $18 $FE

    inc d                                         ; $6234: $14
    db $F4                                        ; $6235: $F4
    ldh [$FFD6], a                                ; $6236: $E0 $D6
    nop                                           ; $6238: $00
    xor $20                                       ; $6239: $EE $20
    ld [$107F], sp                                ; $623B: $08 $7F $10
    ret z                                         ; $623E: $C8

    rra                                           ; $623F: $1F
    db $E3                                        ; $6240: $E3
    nop                                           ; $6241: $00

jr_030_6242:
    add sp, $08                                   ; $6242: $E8 $08
    inc b                                         ; $6244: $04
    rst RST_38                                    ; $6245: $FF
    add hl, de                                    ; $6246: $19
    ld [$85C0], sp                                ; $6247: $08 $C0 $85
    nop                                           ; $624A: $00
    ld b, h                                       ; $624B: $44
    ld e, h                                       ; $624C: $5C
    ld [$081C], sp                                ; $624D: $08 $1C $08
    rrca                                          ; $6250: $0F
    ld e, b                                       ; $6251: $58
    dec [hl]                                      ; $6252: $35
    rlca                                          ; $6253: $07
    inc bc                                        ; $6254: $03
    nop                                           ; $6255: $00
    cp $40                                        ; $6256: $FE $40
    ld [$10E0], sp                                ; $6258: $08 $E0 $10
    nop                                           ; $625B: $00
    pop af                                        ; $625C: $F1
    jr nz, jr_030_6242                            ; $625D: $20 $E3

    add c                                         ; $625F: $81
    rst RST_20                                    ; $6260: $E7
    ld b, d                                       ; $6261: $42
    xor $C4                                       ; $6262: $EE $C4
    ld d, [hl]                                    ; $6264: $56
    call c, $1DDA                                 ; $6265: $DC $DA $1D
    db $EC                                        ; $6268: $EC
    add e                                         ; $6269: $83
    xor $05                                       ; $626A: $EE $05
    ld hl, sp-$5F                                 ; $626C: $F8 $A1
    ld [$10FC], sp                                ; $626E: $08 $FC $10
    cp $44                                        ; $6271: $FE $44
    rst RST_20                                    ; $6273: $E7
    ld b, d                                       ; $6274: $42
    dec bc                                        ; $6275: $0B
    ld hl, $82C7                                  ; $6276: $21 $C7 $82
    add hl, bc                                    ; $6279: $09
    sbc [hl]                                      ; $627A: $9E
    inc b                                         ; $627B: $04
    inc a                                         ; $627C: $3C
    jr jr_030_627F                                ; $627D: $18 $00

jr_030_627F:
    call nc, Call_000_00E7                        ; $627F: $D4 $E7 $00
    jr nz, @+$0A                                  ; $6282: $20 $08

    ld a, a                                       ; $6284: $7F
    db $10                                        ; $6285: $10
    ccf                                           ; $6286: $3F
    rra                                           ; $6287: $1F
    adc l                                         ; $6288: $8D
    nop                                           ; $6289: $00
    ld bc, $0207                                  ; $628A: $01 $07 $02
    nop                                           ; $628D: $00
    ld c, b                                       ; $628E: $48
    ld b, b                                       ; $628F: $40
    ld [$F06B], sp                                ; $6290: $08 $6B $F0
    db $10                                        ; $6293: $10
    ld l, b                                       ; $6294: $68
    jr nc, @+$6A                                  ; $6295: $30 $68

    rrca                                          ; $6297: $0F
    nop                                           ; $6298: $00
    rst RST_20                                    ; $6299: $E7
    ld [$C002], a                                 ; $629A: $EA $02 $C0
    ld [$0880], sp                                ; $629D: $08 $80 $08
    jp nz, $8710                                  ; $62A0: $C2 $10 $87

    cp d                                          ; $62A3: $BA
    ldh [$FF03], a                                ; $62A4: $E0 $03
    ld b, b                                       ; $62A6: $40
    ld c, c                                       ; $62A7: $49
    ld l, e                                       ; $62A8: $6B
    jp $E710                                      ; $62A9: $C3 $10 $E7


    sbc l                                         ; $62AC: $9D
    ld [hl], b                                    ; $62AD: $70
    adc $04                                       ; $62AE: $CE $04
    nop                                           ; $62B0: $00
    xor $D9                                       ; $62B1: $EE $D9
    ldh a, [rNR10]                                ; $62B3: $F0 $10
    ld [de], a                                    ; $62B5: $12
    ld hl, sp+$70                                 ; $62B6: $F8 $70
    ld a, c                                       ; $62B8: $79
    jr z, @-$02                                   ; $62B9: $28 $FC

    ld a, b                                       ; $62BB: $78
    jr z, @-$6E                                   ; $62BC: $28 $90

    adc [hl]                                      ; $62BE: $8E
    ld c, b                                       ; $62BF: $48
    jr nz, @-$1E                                  ; $62C0: $20 $E0

    ld b, b                                       ; $62C2: $40
    jr jr_030_62D5                                ; $62C3: $18 $10

    jr c, jr_030_62D7                             ; $62C5: $38 $10

    ld c, l                                       ; $62C7: $4D
    ld a, $08                                     ; $62C8: $3E $08
    rra                                           ; $62CA: $1F
    ld c, $00                                     ; $62CB: $0E $00
    cp $31                                        ; $62CD: $FE $31
    ld [$7B50], sp                                ; $62CF: $08 $50 $7B
    db $10                                        ; $62D2: $10
    cp l                                          ; $62D3: $BD
    ld a, b                                       ; $62D4: $78

jr_030_62D5:
    cp $9C                                        ; $62D5: $FE $9C

jr_030_62D7:
    rst RST_38                                    ; $62D7: $FF
    ld [hl], d                                    ; $62D8: $72
    dec h                                         ; $62D9: $25
    ld [hl], a                                    ; $62DA: $77
    ld [hl+], a                                   ; $62DB: $22
    dec bc                                        ; $62DC: $0B
    rst RST_30                                    ; $62DD: $F7
    ld b, d                                       ; $62DE: $42
    ld c, b                                       ; $62DF: $48
    ld d, d                                       ; $62E0: $52
    ld l, b                                       ; $62E1: $68
    ld a, [de]                                    ; $62E2: $1A
    ld c, h                                       ; $62E3: $4C
    call c, $0088                                 ; $62E4: $DC $88 $00
    cp $40                                        ; $62E7: $FE $40
    ld [$C0E3], sp                                ; $62E9: $08 $E3 $C0
    db $10                                        ; $62EC: $10

jr_030_62ED:
    sbc b                                         ; $62ED: $98
    and d                                         ; $62EE: $A2
    and a                                         ; $62EF: $A7
    ld bc, $84CF                                  ; $62F0: $01 $CF $84
    rst RST_20                                    ; $62F3: $E7
    nop                                           ; $62F4: $00
    ld b, e                                       ; $62F5: $43
    ld [hl], e                                    ; $62F6: $73
    jr nz, jr_030_62ED                            ; $62F7: $20 $F4

    ld h, b                                       ; $62F9: $60
    ld l, [hl]                                    ; $62FA: $6E
    inc b                                         ; $62FB: $04
    ld c, $8E                                     ; $62FC: $0E $8E
    ld [$0207], sp                                ; $62FE: $08 $07 $02
    inc bc                                        ; $6301: $03
    ld a, b                                       ; $6302: $78

jr_030_6303:
    nop                                           ; $6303: $00
    cp $C0                                        ; $6304: $FE $C0
    and h                                         ; $6306: $A4
    ld [$10F8], sp                                ; $6307: $08 $F8 $10
    db $FC                                        ; $630A: $FC
    ld e, b                                       ; $630B: $58
    ld [$FEE0], sp                                ; $630C: $08 $E0 $FE
    ld d, b                                       ; $630F: $50
    inc l                                         ; $6310: $2C
    jr jr_030_6303                                ; $6311: $18 $F0

    ld c, b                                       ; $6313: $48
    db $10                                        ; $6314: $10
    ld a, h                                       ; $6315: $7C
    jr c, jr_030_6354                             ; $6316: $38 $3C

    ld a, a                                       ; $6318: $7F
    ld [$8800], sp                                ; $6319: $08 $00 $88
    ld b, b                                       ; $631C: $40
    sbc c                                         ; $631D: $99
    db $10                                        ; $631E: $10
    add hl, de                                    ; $631F: $19
    rlca                                          ; $6320: $07
    ld d, d                                       ; $6321: $52
    jr nz, jr_030_632C                            ; $6322: $20 $08

    ld a, a                                       ; $6324: $7F
    db $10                                        ; $6325: $10
    ccf                                           ; $6326: $3F
    rra                                           ; $6327: $1F
    nop                                           ; $6328: $00
    ld bc, $0737                                  ; $6329: $01 $37 $07

jr_030_632C:
    ld [bc], a                                    ; $632C: $02
    nop                                           ; $632D: $00
    ld c, b                                       ; $632E: $48
    ld b, b                                       ; $632F: $40
    reti                                          ; $6330: $D9


    db $10                                        ; $6331: $10
    ld l, b                                       ; $6332: $68
    ld e, a                                       ; $6333: $5F
    jr nc, jr_030_639E                            ; $6334: $30 $68

    rrca                                          ; $6336: $0F
    nop                                           ; $6337: $00
    rst RST_20                                    ; $6338: $E7
    ld [bc], a                                    ; $6339: $02
    ret nz                                        ; $633A: $C0

    ld [$8055], sp                                ; $633B: $08 $55 $80
    ld [$10C2], sp                                ; $633E: $08 $C2 $10
    add a                                         ; $6341: $87
    ldh [$FF03], a                                ; $6342: $E0 $03
    ld b, b                                       ; $6344: $40
    call nc, Call_030_6B49                        ; $6345: $D4 $49 $6B
    jp $E710                                      ; $6348: $C3 $10 $E7


    ld [hl], b                                    ; $634B: $70
    adc $04                                       ; $634C: $CE $04
    add sp, $00                                   ; $634E: $E8 $00
    xor $D9                                       ; $6350: $EE $D9
    ldh a, [rNR10]                                ; $6352: $F0 $10

jr_030_6354:
    ld hl, sp+$70                                 ; $6354: $F8 $70
    ld a, b                                       ; $6356: $78

jr_030_6357:
    or h                                          ; $6357: $B4

jr_030_6358:
    jr z, jr_030_6357                             ; $6358: $28 $FD

    db $10                                        ; $635A: $10
    jr z, jr_030_62ED                             ; $635B: $28 $90

    ld c, b                                       ; $635D: $48
    jr nz, @-$1E                                  ; $635E: $20 $E0

    ld [hl], d                                    ; $6360: $72
    ld b, b                                       ; $6361: $40
    jr jr_030_6374                                ; $6362: $18 $10

    jr c, @+$12                                   ; $6364: $38 $10

    ccf                                           ; $6366: $3F
    ld [$6E1F], sp                                ; $6367: $08 $1F $6E
    ld c, $00                                     ; $636A: $0E $00
    cp $30                                        ; $636C: $FE $30
    ld [$10C0], sp                                ; $636E: $08 $C0 $10
    ld a, $8A                                     ; $6371: $3E $8A
    ld a, b                                       ; $6373: $78

jr_030_6374:
    rst RST_38                                    ; $6374: $FF
    ld d, $FE                                     ; $6375: $16 $FE
    or b                                          ; $6377: $B0
    ei                                            ; $6378: $FB
    add sp, $77                                   ; $6379: $E8 $77
    inc b                                         ; $637B: $04
    inc hl                                        ; $637C: $23
    ld a, a                                       ; $637D: $7F
    inc h                                         ; $637E: $24
    db $E4                                        ; $637F: $E4
    ld b, b                                       ; $6380: $40
    add hl, bc                                    ; $6381: $09
    rst RST_08                                    ; $6382: $CF
    add h                                         ; $6383: $84
    dec a                                         ; $6384: $3D
    rst RST_00                                    ; $6385: $C7
    add e                                         ; $6386: $83
    nop                                           ; $6387: $00
    cp $07                                        ; $6388: $FE $07
    ld bc, $08C0                                  ; $638A: $01 $C0 $08
    ld a, l                                       ; $638D: $7D
    ldh [rNR10], a                                ; $638E: $E0 $10
    add hl, de                                    ; $6390: $19
    ld c, a                                       ; $6391: $4F
    ld c, l                                       ; $6392: $4D
    ld bc, $083E                                  ; $6393: $01 $3E $08

jr_030_6396:
    ld b, a                                       ; $6396: $47
    ld a, a                                       ; $6397: $7F
    db $10                                        ; $6398: $10
    ld a, [hl]                                    ; $6399: $7E
    jr nz, jr_030_640C                            ; $639A: $20 $70

    rrca                                          ; $639C: $0F
    inc c                                         ; $639D: $0C

jr_030_639E:
    nop                                           ; $639E: $00
    sub $DE                                       ; $639F: $D6 $DE
    dec b                                         ; $63A1: $05
    ld b, b                                       ; $63A2: $40
    ld [$10E0], sp                                ; $63A3: $08 $E0 $10
    cp l                                          ; $63A6: $BD
    ld [hl], h                                    ; $63A7: $74
    add b                                         ; $63A8: $80
    ld [$247E], sp                                ; $63A9: $08 $7E $24
    ld a, h                                       ; $63AC: $7C
    jr z, jr_030_63EB                             ; $63AD: $28 $3C

    jr @+$1E                                      ; $63AF: $18 $1C

    ld [hl], l                                    ; $63B1: $75
    ld [$E700], sp                                ; $63B2: $08 $00 $E7
    ld [bc], a                                    ; $63B5: $02
    ld bc, $4208                                  ; $63B6: $01 $08 $42
    ld [$E742], sp                                ; $63B9: $08 $42 $E7
    db $10                                        ; $63BC: $10
    ld [hl], e                                    ; $63BD: $73
    ld hl, $1039                                  ; $63BE: $21 $39 $10
    add hl, bc                                    ; $63C1: $09
    inc de                                        ; $63C2: $13
    cp l                                          ; $63C3: $BD
    ld h, b                                       ; $63C4: $60
    inc bc                                        ; $63C5: $03
    ld [$9B79], sp                                ; $63C6: $08 $79 $9B
    rlca                                          ; $63C9: $07
    ret nz                                        ; $63CA: $C0

jr_030_63CB:
    ld [$EC41], sp                                ; $63CB: $08 $41 $EC
    db $10                                        ; $63CE: $10
    cp $4C                                        ; $63CF: $FE $4C
    db $FC                                        ; $63D1: $FC
    ld [hl], b                                    ; $63D2: $70
    ldh a, [$FF28]                                ; $63D3: $F0 $28
    and b                                         ; $63D5: $A0
    jr jr_030_6358                                ; $63D6: $18 $80

    jr c, jr_030_6396                             ; $63D8: $38 $BC

    rst RST_38                                    ; $63DA: $FF
    jp nz, Jump_000_02C7                          ; $63DB: $C2 $C7 $02

    ld l, a                                       ; $63DE: $6F
    rrca                                          ; $63DF: $0F
    ld [$0C38], sp                                ; $63E0: $08 $38 $0C
    ld e, b                                       ; $63E3: $58
    ld [hl], b                                    ; $63E4: $70
    nop                                           ; $63E5: $00
    cp $A8                                        ; $63E6: $FE $A8
    ld bc, $0841                                  ; $63E8: $01 $41 $08

jr_030_63EB:
    db $E3                                        ; $63EB: $E3
    db $10                                        ; $63EC: $10
    ld a, c                                       ; $63ED: $79
    jr nz, jr_030_646F                            ; $63EE: $20 $7F

    ld [bc], a                                    ; $63F0: $02
    jr z, @-$0F                                   ; $63F1: $28 $EF

    ld b, a                                       ; $63F3: $47
    rst RST_20                                    ; $63F4: $E7
    ld b, b                                       ; $63F5: $40
    pop af                                        ; $63F6: $F1
    ld [$5BFF], sp                                ; $63F7: $08 $FF $5B
    ld d, b                                       ; $63FA: $50
    ld [$5967], sp                                ; $63FB: $08 $67 $59
    ld [$0027], sp                                ; $63FE: $08 $27 $00
    xor $D2                                       ; $6401: $EE $D2
    ret nz                                        ; $6403: $C0

    ld [$10F0], sp                                ; $6404: $08 $F0 $10
    ld hl, sp-$70                                 ; $6407: $F8 $90
    jr jr_030_63CB                                ; $6409: $18 $C0

    sbc c                                         ; $640B: $99

jr_030_640C:
    ld [$E0A0], sp                                ; $640C: $08 $A0 $E0
    jr jr_030_6411                                ; $640F: $18 $00

jr_030_6411:
    add b                                         ; $6411: $80
    pop bc                                        ; $6412: $C1
    ld a, [bc]                                    ; $6413: $0A
    inc de                                        ; $6414: $13
    jp $E381                                      ; $6415: $C3 $81 $E3


    jr nz, jr_030_6411                            ; $6418: $20 $F7

    ld [hl+], a                                   ; $641A: $22
    nop                                           ; $641B: $00
    cp $66                                        ; $641C: $FE $66
    ld h, b                                       ; $641E: $60
    ld sp, hl                                     ; $641F: $F9
    db $10                                        ; $6420: $10
    ld [hl], b                                    ; $6421: $70
    jr nz, jr_030_642D                            ; $6422: $20 $09

    add sp, $40                                   ; $6424: $E8 $40
    ret nz                                        ; $6426: $C0

    add hl, bc                                    ; $6427: $09
    ld c, c                                       ; $6428: $49
    ld sp, hl                                     ; $6429: $F9
    sub b                                         ; $642A: $90
    ei                                            ; $642B: $FB
    sub c                                         ; $642C: $91

jr_030_642D:
    cp e                                          ; $642D: $BB
    ld de, $BF0E                                  ; $642E: $11 $0E $BF
    ld [de], a                                    ; $6431: $12
    ld e, $0C                                     ; $6432: $1E $0C
    nop                                           ; $6434: $00
    cp $03                                        ; $6435: $FE $03
    inc bc                                        ; $6437: $03
    and c                                         ; $6438: $A1
    ld [$104F], sp                                ; $6439: $08 $4F $10
    rst RST_38                                    ; $643C: $FF
    ld c, h                                       ; $643D: $4C
    db $FC                                        ; $643E: $FC
    ld [hl], b                                    ; $643F: $70
    nop                                           ; $6440: $00
    xor e                                         ; $6441: $AB
    ld e, d                                       ; $6442: $5A
    add b                                         ; $6443: $80
    ld [$0883], sp                                ; $6444: $08 $83 $08
    rlca                                          ; $6447: $07
    ld l, b                                       ; $6448: $68
    adc c                                         ; $6449: $89
    call nc, Call_000_0307                        ; $644A: $D4 $07 $03
    ret nz                                        ; $644D: $C0

    ld [$10E0], sp                                ; $644E: $08 $E0 $10
    ldh a, [rNR41]                                ; $6451: $F0 $20
    jr z, @+$3A                                   ; $6453: $28 $38

    db $10                                        ; $6455: $10
    add hl, bc                                    ; $6456: $09
    add hl, sp                                    ; $6457: $39
    ld [$21F3], sp                                ; $6458: $08 $F3 $21
    rst RST_20                                    ; $645B: $E7
    ld d, $C2                                     ; $645C: $16 $C2
    rst RST_00                                    ; $645E: $C7
    ld [bc], a                                    ; $645F: $02
    ld hl, sp+$01                                 ; $6460: $F8 $01
    nop                                           ; $6462: $00
    sbc $60                                       ; $6463: $DE $60
    add sp, $08                                   ; $6465: $E8 $08
    ret z                                         ; $6467: $C8

    db $10                                        ; $6468: $10
    halt                                          ; $6469: $76
    ret c                                         ; $646A: $D8

    ld a, a                                       ; $646B: $7F
    ld h, $7E                                     ; $646C: $26 $7E
    xor [hl]                                      ; $646E: $AE

jr_030_646F:
    ldh [$FF78], a                                ; $646F: $E0 $78
    jr z, jr_030_64E3                             ; $6471: $28 $70

    ld [$0858], sp                                ; $6473: $08 $58 $08
    ld hl, sp+$21                                 ; $6476: $F8 $21
    ldh [$FFFC], a                                ; $6478: $E0 $FC
    ld c, b                                       ; $647A: $48
    cp $24                                        ; $647B: $FE $24
    rst RST_20                                    ; $647D: $E7
    jp nz, $DF00                                  ; $647E: $C2 $00 $DF

    cp $01                                        ; $6481: $FE $01
    ld b, b                                       ; $6483: $40
    ld [$1090], sp                                ; $6484: $08 $90 $10
    ret                                           ; $6487: $C9


    dec bc                                        ; $6488: $0B
    ld d, b                                       ; $6489: $50
    ld [hl], h                                    ; $648A: $74
    ld [$C87E], sp                                ; $648B: $08 $7E $C8
    ld a, h                                       ; $648E: $7C
    jr z, jr_030_64CD                             ; $648F: $28 $3C

    jr jr_030_64CD                                ; $6491: $18 $3A

    inc e                                         ; $6493: $1C
    ld [$E700], sp                                ; $6494: $08 $00 $E7
    ld [bc], a                                    ; $6497: $02
    inc bc                                        ; $6498: $03
    ld [$0847], sp                                ; $6499: $08 $47 $08
    ld [bc], a                                    ; $649C: $02
    db $E3                                        ; $649D: $E3
    ld b, c                                       ; $649E: $41
    ld [hl], e                                    ; $649F: $73
    ret c                                         ; $64A0: $D8

    ccf                                           ; $64A1: $3F
    ld [de], a                                    ; $64A2: $12
    dec sp                                        ; $64A3: $3B
    ld l, [hl]                                    ; $64A4: $6E
    ld de, $5800                                  ; $64A5: $11 $00 $58
    ld bc, $070A                                  ; $64A8: $01 $0A $07
    inc bc                                        ; $64AB: $03
    ret nz                                        ; $64AC: $C0

    and e                                         ; $64AD: $A3
    ld [$10E0], sp                                ; $64AE: $08 $E0 $10
    ldh a, [rLCDC]                                ; $64B1: $F0 $40
    ld hl, sp+$10                                 ; $64B3: $F8 $10
    add hl, de                                    ; $64B5: $19
    ld d, c                                       ; $64B6: $51
    db $F4                                        ; $64B7: $F4
    ld [$10FE], sp                                ; $64B8: $08 $FE $10
    rst RST_30                                    ; $64BB: $F7
    add d                                         ; $64BC: $82
    rst RST_00                                    ; $64BD: $C7
    ld a, [bc]                                    ; $64BE: $0A
    adc [hl]                                      ; $64BF: $8E
    jr c, jr_030_6506                             ; $64C0: $38 $44

    ld a, h                                       ; $64C2: $7C
    jr c, jr_030_64C5                             ; $64C3: $38 $00

jr_030_64C5:
    cp $03                                        ; $64C5: $FE $03
    rrca                                          ; $64C7: $0F
    and b                                         ; $64C8: $A0
    ld [$101F], sp                                ; $64C9: $08 $1F $10
    ccf                                           ; $64CC: $3F

jr_030_64CD:
    ld [de], a                                    ; $64CD: $12
    ld [hl], a                                    ; $64CE: $77
    ld [hl+], a                                   ; $64CF: $22
    rst RST_20                                    ; $64D0: $E7
    ld d, b                                       ; $64D1: $50
    ld b, d                                       ; $64D2: $42
    add hl, bc                                    ; $64D3: $09
    xor $D8                                       ; $64D4: $EE $D8
    ld a, [hl]                                    ; $64D6: $7E
    inc h                                         ; $64D7: $24
    inc a                                         ; $64D8: $3C
    jr jr_030_6546                                ; $64D9: $18 $6B

    add hl, de                                    ; $64DB: $19
    rst RST_10                                    ; $64DC: $D7
    ld [bc], a                                    ; $64DD: $02
    inc b                                         ; $64DE: $04
    ld [$10CE], sp                                ; $64DF: $08 $CE $10
    cp b                                          ; $64E2: $B8

jr_030_64E3:
    dec h                                         ; $64E3: $25
    jp nz, $E8F7                                  ; $64E4: $C2 $F7 $E8

    ld a, $14                                     ; $64E7: $3E $14
    add hl, bc                                    ; $64E9: $09
    ccf                                           ; $64EA: $3F
    add hl, bc                                    ; $64EB: $09
    ld e, a                                       ; $64EC: $5F
    dec d                                         ; $64ED: $15
    ld [$5916], sp                                ; $64EE: $08 $16 $59
    ld a, c                                       ; $64F1: $79
    nop                                           ; $64F2: $00
    rst RST_30                                    ; $64F3: $F7
    ld [bc], a                                    ; $64F4: $02
    ld d, e                                       ; $64F5: $53
    ld e, $08                                     ; $64F6: $1E $08
    ld a, a                                       ; $64F8: $7F
    db $10                                        ; $64F9: $10
    cp $60                                        ; $64FA: $FE $60
    nop                                           ; $64FC: $00
    ld c, d                                       ; $64FD: $4A
    ld d, c                                       ; $64FE: $51
    ld b, b                                       ; $64FF: $40
    ld [$10E0], sp                                ; $6500: $08 $E0 $10
    ld a, [hl]                                    ; $6503: $7E
    jr nz, jr_030_6545                            ; $6504: $20 $3F

jr_030_6506:
    ld l, b                                       ; $6506: $68
    xor $89                                       ; $6507: $EE $89
    rlca                                          ; $6509: $07
    ld bc, $0810                                  ; $650A: $01 $10 $08
    ld a, b                                       ; $650D: $78
    db $10                                        ; $650E: $10
    rra                                           ; $650F: $1F
    ld h, a                                       ; $6510: $67
    rrca                                          ; $6511: $0F
    nop                                           ; $6512: $00
    jr z, jr_030_6518                             ; $6513: $28 $03

    ld bc, $1800                                  ; $6515: $01 $00 $18

jr_030_6518:
    ret nc                                        ; $6518: $D0

    xor e                                         ; $6519: $AB

jr_030_651A:
    ld [$E978], sp                                ; $651A: $08 $78 $E9
    jr @+$6A                                      ; $651D: $18 $68

    rlca                                          ; $651F: $07
    nop                                           ; $6520: $00
    rst RST_20                                    ; $6521: $E7
    xor b                                         ; $6522: $A8
    inc b                                         ; $6523: $04
    ret nz                                        ; $6524: $C0

    ld [$10E1], sp                                ; $6525: $08 $E1 $10
    jp $8781                                      ; $6528: $C3 $81 $87


    dec d                                         ; $652B: $15
    ld [bc], a                                    ; $652C: $02
    ld c, $04                                     ; $652D: $0E $04
    dec bc                                        ; $652F: $0B
    rst RST_20                                    ; $6530: $E7
    jr c, @-$0B                                   ; $6531: $38 $F3

    ld [hl], b                                    ; $6533: $70
    ld [$D700], a                                 ; $6534: $EA $00 $D7
    inc b                                         ; $6537: $04
    db $FC                                        ; $6538: $FC
    ld [$10FE], sp                                ; $6539: $08 $FE $10
    rst RST_38                                    ; $653C: $FF
    ld [de], a                                    ; $653D: $12
    ld [hl+], a                                   ; $653E: $22
    ld [hl], e                                    ; $653F: $73
    ld hl, $E30B                                  ; $6540: $21 $0B $E3
    ld b, c                                       ; $6543: $41
    add hl, bc                                    ; $6544: $09

jr_030_6545:
    rst RST_08                                    ; $6545: $CF

jr_030_6546:
    dec e                                         ; $6546: $1D
    add d                                         ; $6547: $82
    sbc [hl]                                      ; $6548: $9E
    inc c                                         ; $6549: $0C
    nop                                           ; $654A: $00
    sbc $39                                       ; $654B: $DE $39
    ld e, $10                                     ; $654D: $1E $10
    nop                                           ; $654F: $00
    cpl                                           ; $6550: $2F
    inc b                                         ; $6551: $04
    ld a, a                                       ; $6552: $7F
    daa                                           ; $6553: $27
    ccf                                           ; $6554: $3F
    inc e                                         ; $6555: $1C
    sbc a                                         ; $6556: $9F
    ld [$0891], sp                                ; $6557: $08 $91 $08
    dec bc                                        ; $655A: $0B
    cp a                                          ; $655B: $BF
    jr z, jr_030_651A                             ; $655C: $28 $BC

    db $10                                        ; $655E: $10
    sub b                                         ; $655F: $90
    adc b                                         ; $6560: $88
    ld e, l                                       ; $6561: $5D
    rrca                                          ; $6562: $0F
    ld [$101F], sp                                ; $6563: $08 $1F $10
    add hl, de                                    ; $6566: $19
    dec b                                         ; $6567: $05
    ld bc, $4008                                  ; $6568: $01 $08 $40
    jp $E510                                      ; $656B: $C3 $10 $E5


    ret nz                                        ; $656E: $C0

    rst RST_08                                    ; $656F: $CF
    inc b                                         ; $6570: $04

jr_030_6571:
    rlca                                          ; $6571: $07
    inc bc                                        ; $6572: $03
    add b                                         ; $6573: $80
    add hl, sp                                    ; $6574: $39
    db $E3                                        ; $6575: $E3
    pop bc                                        ; $6576: $C1
    di                                            ; $6577: $F3
    ld hl, $2277                                  ; $6578: $21 $77 $22
    rst RST_30                                    ; $657B: $F7
    adc [hl]                                      ; $657C: $8E
    ld [$C2E7], sp                                ; $657D: $08 $E7 $C2
    adc $78                                       ; $6580: $CE $78
    nop                                           ; $6582: $00
    cp $80                                        ; $6583: $FE $80
    ld [$E008], a                                 ; $6585: $EA $08 $E0
    db $10                                        ; $6588: $10
    db $E4                                        ; $6589: $E4
    ld [$10FE], sp                                ; $658A: $08 $FE $10
    rst RST_38                                    ; $658D: $FF
    inc b                                         ; $658E: $04
    sub d                                         ; $658F: $92
    cp e                                          ; $6590: $BB
    ld de, $13BF                                  ; $6591: $11 $BF $13
    add hl, de                                    ; $6594: $19
    cp c                                          ; $6595: $B9
    db $10                                        ; $6596: $10
    inc bc                                        ; $6597: $03
    ld hl, sp-$70                                 ; $6598: $F8 $90
    ldh a, [$FF60]                                ; $659A: $F0 $60
    ldh [rLCDC], a                                ; $659C: $E0 $40
    nop                                           ; $659E: $00
    cp $50                                        ; $659F: $FE $50
    ld [$1C08], sp                                ; $65A1: $08 $08 $1C
    db $10                                        ; $65A4: $10
    rrca                                          ; $65A5: $0F
    inc b                                         ; $65A6: $04

jr_030_65A7:
    rlca                                          ; $65A7: $07
    inc bc                                        ; $65A8: $03
    ld c, d                                       ; $65A9: $4A
    ccf                                           ; $65AA: $3F
    jr @+$01                                      ; $65AB: $18 $FF

    jr nc, jr_030_65A7                            ; $65AD: $30 $F8

    rla                                           ; $65AF: $17
    jr @+$2A                                      ; $65B0: $18 $28

    ld b, l                                       ; $65B2: $45
    ld a, b                                       ; $65B3: $78
    jr z, @+$72                                   ; $65B4: $28 $70

    jr nz, @+$31                                  ; $65B6: $20 $2F

    sbc b                                         ; $65B8: $98
    rra                                           ; $65B9: $1F
    sub b                                         ; $65BA: $90
    xor $00                                       ; $65BB: $EE $00
    cp $01                                        ; $65BD: $FE $01
    ld [bc], a                                    ; $65BF: $02
    ld [$10E8], sp                                ; $65C0: $08 $E8 $10
    add e                                         ; $65C3: $83
    ld a, b                                       ; $65C4: $78
    ld bc, $2800                                  ; $65C5: $01 $00 $28
    add hl, bc                                    ; $65C8: $09
    add hl, hl                                    ; $65C9: $29
    rst RST_00                                    ; $65CA: $C7
    add d                                         ; $65CB: $82
    ldh [c], a                                    ; $65CC: $E2
    daa                                           ; $65CD: $27
    ld b, b                                       ; $65CE: $40
    pop hl                                        ; $65CF: $E1
    ld [$80C1], sp                                ; $65D0: $08 $C1 $80
    nop                                           ; $65D3: $00
    rst RST_20                                    ; $65D4: $E7
    nop                                           ; $65D5: $00
    ld d, d                                       ; $65D6: $52
    ld h, b                                       ; $65D7: $60
    ld [$10FE], sp                                ; $65D8: $08 $FE $10
    rst RST_38                                    ; $65DB: $FF
    ld l, $18                                     ; $65DC: $2E $18
    ldh a, [$FFDA]                                ; $65DE: $F0 $DA
    nop                                           ; $65E0: $00
    xor b                                         ; $65E1: $A8
    ei                                            ; $65E2: $FB
    db $10                                        ; $65E3: $10
    jr c, jr_030_6571                             ; $65E4: $38 $8B

    ld [$1E3C], sp                                ; $65E6: $08 $3C $1E
    db $FC                                        ; $65E9: $FC
    ld c, b                                       ; $65EA: $48
    ret z                                         ; $65EB: $C8

    ldh [rBCPS], a                                ; $65EC: $E0 $68
    ld [$7E38], sp                                ; $65EE: $08 $38 $7E
    call nc, $FE00                                ; $65F1: $D4 $00 $FE
    ld b, $08                                     ; $65F4: $06 $08
    cpl                                           ; $65F6: $2F
    db $10                                        ; $65F7: $10
    ld a, a                                       ; $65F8: $7F
    ld [hl+], a                                   ; $65F9: $22
    inc h                                         ; $65FA: $24
    ccf                                           ; $65FB: $3F
    rra                                           ; $65FC: $1F
    nop                                           ; $65FD: $00
    ld bc, $480F                                  ; $65FE: $01 $0F $48
    sbc a                                         ; $6601: $9F
    ld c, $86                                     ; $6602: $0E $86
    jr c, @+$13                                   ; $6604: $38 $11

    ld [hl], c                                    ; $6606: $71
    jr nz, jr_030_6679                            ; $6607: $20 $70

    ld [$1028], sp                                ; $6609: $08 $28 $10
    push af                                       ; $660C: $F5

jr_030_660D:
    ld l, b                                       ; $660D: $68
    ld h, b                                       ; $660E: $60
    ld l, c                                       ; $660F: $69
    rlca                                          ; $6610: $07

jr_030_6611:
    ld h, b                                       ; $6611: $60
    ld [$10F4], sp                                ; $6612: $08 $F4 $10
    ld bc, $84EF                                  ; $6615: $01 $EF $84
    add a                                         ; $6618: $87
    inc bc                                        ; $6619: $03
    jp $C180                                      ; $661A: $C3 $80 $C1


    ld [$E10F], sp                                ; $661D: $08 $0F $E1
    ret nz                                        ; $6620: $C0

    ldh [rLCDC], a                                ; $6621: $E0 $40
    nop                                           ; $6623: $00
    ld a, b                                       ; $6624: $78
    jr nc, @+$0A                                  ; $6625: $30 $08

    push af                                       ; $6627: $F5
    jr nc, jr_030_663A                            ; $6628: $30 $10

    add hl, de                                    ; $662A: $19
    dec b                                         ; $662B: $05
    ld a, [hl-]                                   ; $662C: $3A
    ld [$107F], sp                                ; $662D: $08 $7F $10
    jr z, @+$01                                   ; $6630: $28 $FF

    dec d                                         ; $6632: $15
    ld [$00FE], sp                                ; $6633: $08 $FE $00
    db $10                                        ; $6636: $10
    ld hl, sp+$70                                 ; $6637: $F8 $70
    or [hl]                                       ; $6639: $B6

jr_030_663A:
    ld [$0A90], sp                                ; $663A: $08 $90 $0A
    jr z, @+$7A                                   ; $663D: $28 $78

    ld c, b                                       ; $663F: $48
    db $10                                        ; $6640: $10
    jr nz, jr_030_667D                            ; $6641: $20 $3A

    ldh [rLCDC], a                                ; $6643: $E0 $40
    nop                                           ; $6645: $00
    cp $01                                        ; $6646: $FE $01
    ld hl, $F408                                  ; $6648: $21 $08 $F4
    sub e                                         ; $664B: $93
    ld a, b                                       ; $664C: $78
    ccf                                           ; $664D: $3F
    inc d                                         ; $664E: $14
    ld [$7313], sp                                ; $664F: $08 $13 $73
    jr z, jr_030_660D                             ; $6652: $28 $B9

    ld b, b                                       ; $6654: $40
    ld [hl], h                                    ; $6655: $74
    ld [$247E], sp                                ; $6656: $08 $7E $24
    ld a, l                                       ; $6659: $7D
    jr z, @+$3B                                   ; $665A: $28 $39

    db $10                                        ; $665C: $10
    dec [hl]                                      ; $665D: $35
    dec sp                                        ; $665E: $3B
    ld de, $EE00                                  ; $665F: $11 $00 $EE
    ret nz                                        ; $6662: $C0

    ld [$10E0], sp                                ; $6663: $08 $E0 $10
    rrca                                          ; $6666: $0F
    ldh a, [rLCDC]                                ; $6667: $F0 $40
    ld hl, sp+$50                                 ; $6669: $F8 $50
    jr @+$32                                      ; $666B: $18 $30

    nop                                           ; $666D: $00
    jr z, jr_030_6611                             ; $666E: $28 $A1

    add hl, bc                                    ; $6670: $09
    pop hl                                        ; $6671: $E1
    ld [$41E3], sp                                ; $6672: $08 $E3 $41
    rst RST_00                                    ; $6675: $C7
    add d                                         ; $6676: $82
    add hl, bc                                    ; $6677: $09
    scf                                           ; $6678: $37

jr_030_6679:
    add e                                         ; $6679: $83
    ld bc, $FE00                                  ; $667A: $01 $00 $FE

jr_030_667D:
    ld h, b                                       ; $667D: $60
    ld [$10C8], sp                                ; $667E: $08 $C8 $10
    ld bc, $2076                                  ; $6681: $01 $76 $20
    ld a, a                                       ; $6684: $7F
    ld h, $7E                                     ; $6685: $26 $7E
    jr c, jr_030_6701                             ; $6687: $38 $78

    jr z, jr_030_66FC                             ; $6689: $28 $71

    ld [hl], b                                    ; $668B: $70
    ld [$0858], sp                                ; $668C: $08 $58 $08
    ld hl, sp-$20                                 ; $668F: $F8 $E0
    db $FC                                        ; $6691: $FC
    ld c, b                                       ; $6692: $48
    dec c                                         ; $6693: $0D
    cp $24                                        ; $6694: $FE $24
    rst RST_20                                    ; $6696: $E7
    jp nz, $FE00                                  ; $6697: $C2 $00 $FE

    inc c                                         ; $669A: $0C
    ld [$1F45], sp                                ; $669B: $08 $45 $1F
    db $10                                        ; $669E: $10
    rrca                                          ; $669F: $0F
    inc bc                                        ; $66A0: $03
    inc hl                                        ; $66A1: $23
    jr z, jr_030_6723                             ; $66A2: $28 $7F

    db $10                                        ; $66A4: $10
    scf                                           ; $66A5: $37
    ccf                                           ; $66A6: $3F
    inc e                                         ; $66A7: $1C
    nop                                           ; $66A8: $00
    adc h                                         ; $66A9: $8C
    ld bc, $7808                                  ; $66AA: $01 $08 $78
    db $10                                        ; $66AD: $10
    cp d                                          ; $66AE: $BA
    sbc b                                         ; $66AF: $98
    ld c, $00                                     ; $66B0: $0E $00
    cp $01                                        ; $66B2: $FE $01
    add b                                         ; $66B4: $80
    ld [$CDC0], sp                                ; $66B5: $08 $C0 $CD
    db $10                                        ; $66B8: $10
    dec de                                        ; $66B9: $1B
    ldh [rLCDC], a                                ; $66BA: $E0 $40
    dec c                                         ; $66BC: $0D
    ld c, c                                       ; $66BD: $49
    add e                                         ; $66BE: $83
    ld l, b                                       ; $66BF: $68
    ld a, [hl-]                                   ; $66C0: $3A
    rlca                                          ; $66C1: $07
    inc bc                                        ; $66C2: $03
    nop                                           ; $66C3: $00
    rst RST_30                                    ; $66C4: $F7
    nop                                           ; $66C5: $00
    jr nz, @+$0A                                  ; $66C6: $20 $08

    ld [hl], b                                    ; $66C8: $70
    db $EB                                        ; $66C9: $EB
    db $10                                        ; $66CA: $10
    rrca                                          ; $66CB: $0F
    dec c                                         ; $66CC: $0D
    ldh a, [$FF09]                                ; $66CD: $F0 $09
    ldh [rP1], a                                  ; $66CF: $E0 $00
    rst RST_30                                    ; $66D1: $F7
    xor c                                         ; $66D2: $A9
    ld [bc], a                                    ; $66D3: $02
    inc b                                         ; $66D4: $04
    ld [$100F], sp                                ; $66D5: $08 $0F $10
    rlca                                          ; $66D8: $07
    inc bc                                        ; $66D9: $03
    nop                                           ; $66DA: $00
    cp d                                          ; $66DB: $BA
    jr z, jr_030_66DF                             ; $66DC: $28 $01

    ld a, [bc]                                    ; $66DE: $0A

jr_030_66DF:
    rlca                                          ; $66DF: $07
    rlca                                          ; $66E0: $07
    jr nc, jr_030_66EB                            ; $66E1: $30 $08

    ld a, d                                       ; $66E3: $7A
    sbc b                                         ; $66E4: $98
    db $10                                        ; $66E5: $10
    rst RST_38                                    ; $66E6: $FF
    ld [de], a                                    ; $66E7: $12
    ld [$1001], sp                                ; $66E8: $08 $01 $10

jr_030_66EB:
    ld hl, sp+$70                                 ; $66EB: $F8 $70
    or [hl]                                       ; $66ED: $B6
    ld [$0A90], sp                                ; $66EE: $08 $90 $0A
    jr z, jr_030_676B                             ; $66F1: $28 $78

    ld c, b                                       ; $66F3: $48
    db $10                                        ; $66F4: $10
    jr nz, jr_030_6735                            ; $66F5: $20 $3E

    ldh [rLCDC], a                                ; $66F7: $E0 $40
    nop                                           ; $66F9: $00
    cp $01                                        ; $66FA: $FE $01

jr_030_66FC:
    ld c, c                                       ; $66FC: $49
    ld l, c                                       ; $66FD: $69
    ldh a, [$FFE8]                                ; $66FE: $F0 $E8
    adc b                                         ; $6700: $88

jr_030_6701:
    sbc c                                         ; $6701: $99
    add hl, bc                                    ; $6702: $09
    ld [hl], h                                    ; $6703: $74
    ld [$247E], sp                                ; $6704: $08 $7E $24
    ld a, h                                       ; $6707: $7C
    rlca                                          ; $6708: $07
    jr z, @+$3E                                   ; $6709: $28 $3C

    jr jr_030_6729                                ; $670B: $18 $1C

    ld [$E700], sp                                ; $670D: $08 $00 $E7
    rlca                                          ; $6710: $07
    push af                                       ; $6711: $F5
    rlca                                          ; $6712: $07
    rlca                                          ; $6713: $07
    rlca                                          ; $6714: $07
    ld [bc], a                                    ; $6715: $02
    ld bc, $4308                                  ; $6716: $01 $08 $43
    db $10                                        ; $6719: $10
    ld [bc], a                                    ; $671A: $02
    db $E3                                        ; $671B: $E3
    ld b, c                                       ; $671C: $41
    ld [hl], e                                    ; $671D: $73
    ld hl, $113B                                  ; $671E: $21 $3B $11
    add hl, bc                                    ; $6721: $09
    inc de                                        ; $6722: $13

jr_030_6723:
    cp l                                          ; $6723: $BD
    ld c, b                                       ; $6724: $48
    inc bc                                        ; $6725: $03
    ld a, [bc]                                    ; $6726: $0A
    adc c                                         ; $6727: $89
    rlca                                          ; $6728: $07

jr_030_6729:
    dec b                                         ; $6729: $05
    add b                                         ; $672A: $80
    ld [$C074], sp                                ; $672B: $08 $74 $C0
    db $10                                        ; $672E: $10
    add hl, de                                    ; $672F: $19
    dec bc                                        ; $6730: $0B
    add d                                         ; $6731: $82
    ld [$0287], sp                                ; $6732: $08 $87 $02

jr_030_6735:
    inc bc                                        ; $6735: $03
    adc [hl]                                      ; $6736: $8E
    inc b                                         ; $6737: $04
    db $FC                                        ; $6738: $FC
    adc b                                         ; $6739: $88
    ld hl, sp+$70                                 ; $673A: $F8 $70
    nop                                           ; $673C: $00
    rst RST_20                                    ; $673D: $E7
    xor e                                         ; $673E: $AB
    inc b                                         ; $673F: $04
    inc c                                         ; $6740: $0C
    ld [$101E], sp                                ; $6741: $08 $1E $10
    rrca                                          ; $6744: $0F
    cp b                                          ; $6745: $B8
    ld [$0728], sp                                ; $6746: $08 $28 $07
    rra                                           ; $6749: $1F
    jr jr_030_678B                                ; $674A: $18 $3F

    ld b, b                                       ; $674C: $40
    ld a, a                                       ; $674D: $7F
    dec h                                         ; $674E: $25
    dec a                                         ; $674F: $3D
    ld [hl], a                                    ; $6750: $77
    jr jr_030_6753                                ; $6751: $18 $00

jr_030_6753:
    rst RST_00                                    ; $6753: $C7
    nop                                           ; $6754: $00
    inc bc                                        ; $6755: $03
    ld [$10A0], sp                                ; $6756: $08 $A0 $10
    xor c                                         ; $6759: $A9
    add hl, de                                    ; $675A: $19
    ld [$9F08], sp                                ; $675B: $08 $08 $9F
    db $10                                        ; $675E: $10
    rst RST_08                                    ; $675F: $CF
    add a                                         ; $6760: $87
    nop                                           ; $6761: $00
    xor a                                         ; $6762: $AF
    adc h                                         ; $6763: $8C
    add b                                         ; $6764: $80
    ld [$10C3], sp                                ; $6765: $08 $C3 $10
    ld c, b                                       ; $6768: $48
    sbc d                                         ; $6769: $9A
    rlca                                          ; $676A: $07

jr_030_676B:
    ld e, b                                       ; $676B: $58
    ldh [$FF08], a                                ; $676C: $E0 $08
    ldh a, [rNR10]                                ; $676E: $F0 $10
    dec de                                        ; $6770: $1B
    ld sp, hl                                     ; $6771: $F9
    db $10                                        ; $6772: $10
    dec sp                                        ; $6773: $3B
    ld c, b                                       ; $6774: $48
    ld de, $710B                                  ; $6775: $11 $0B $71
    jr nz, jr_030_67CA                            ; $6778: $20 $50

    ld b, b                                       ; $677A: $40
    ret nz                                        ; $677B: $C0

    add b                                         ; $677C: $80
    ld [$F700], a                                 ; $677D: $EA $00 $F7
    ld [bc], a                                    ; $6780: $02
    ccf                                           ; $6781: $3F
    ld [$107F], sp                                ; $6782: $08 $7F $10
    rst RST_38                                    ; $6785: $FF
    inc b                                         ; $6786: $04
    ld c, b                                       ; $6787: $48
    call c, $9C88                                 ; $6788: $DC $88 $9C

jr_030_678B:
    ld [$B809], sp                                ; $678B: $08 $09 $B8
    db $10                                        ; $678E: $10
    inc bc                                        ; $678F: $03
    ld hl, sp-$70                                 ; $6790: $F8 $90
    di                                            ; $6792: $F3
    ld h, b                                       ; $6793: $60
    ld h, a                                       ; $6794: $67
    inc bc                                        ; $6795: $03
    nop                                           ; $6796: $00
    sbc $A0                                       ; $6797: $DE $A0
    add hl, sp                                    ; $6799: $39
    rlca                                          ; $679A: $07
    db $10                                        ; $679B: $10
    dec bc                                        ; $679C: $0B
    ld bc, $099F                                  ; $679D: $01 $9F $09
    rst RST_08                                    ; $67A0: $CF
    ld [de], a                                    ; $67A1: $12
    add a                                         ; $67A2: $87
    rst RST_20                                    ; $67A3: $E7
    ld b, d                                       ; $67A4: $42
    add hl, bc                                    ; $67A5: $09
    rst RST_28                                    ; $67A6: $EF
    ld b, a                                       ; $67A7: $47
    ld [$0E44], sp                                ; $67A8: $08 $44 $0E
    db $E4                                        ; $67AB: $E4

jr_030_67AC:
    ld b, b                                       ; $67AC: $40
    jp Jump_030_6080                              ; $67AD: $C3 $80 $60


    rst RST_38                                    ; $67B0: $FF
    ld [bc], a                                    ; $67B1: $02
    or b                                          ; $67B2: $B0
    add [hl]                                      ; $67B3: $86
    ld [$30F9], sp                                ; $67B4: $08 $F9 $30
    di                                            ; $67B7: $F3
    pop bc                                        ; $67B8: $C1
    nop                                           ; $67B9: $00
    jr z, jr_030_67AC                             ; $67BA: $28 $F0

    and d                                         ; $67BC: $A2
    ld [$10F8], sp                                ; $67BD: $08 $F8 $10
    db $FC                                        ; $67C0: $FC
    ld [$081D], sp                                ; $67C1: $08 $1D $08
    dec a                                         ; $67C4: $3D
    db $EC                                        ; $67C5: $EC
    ld [$057D], sp                                ; $67C6: $08 $7D $05
    ld h, b                                       ; $67C9: $60

jr_030_67CA:
    cp c                                          ; $67CA: $B9
    db $10                                        ; $67CB: $10
    ld a, c                                       ; $67CC: $79
    jr nz, jr_030_67F0                            ; $67CD: $20 $21

    rst RST_38                                    ; $67CF: $FF
    add hl, sp                                    ; $67D0: $39
    ld [$EEE4], sp                                ; $67D1: $08 $E4 $EE
    ld b, h                                       ; $67D4: $44
    rst RST_28                                    ; $67D5: $EF
    ld [$19C0], sp                                ; $67D6: $08 $C0 $19
    ld [$FE84], sp                                ; $67D9: $08 $84 $FE
    and h                                         ; $67DC: $A4
    db $FC                                        ; $67DD: $FC
    sbc b                                         ; $67DE: $98
    cp b                                          ; $67DF: $B8
    ld l, d                                       ; $67E0: $6A
    stop                                          ; $67E1: $10 $00
    cp $02                                        ; $67E3: $FE $02
    ld [$1007], sp                                ; $67E5: $08 $07 $10
    inc bc                                        ; $67E8: $03
    add hl, hl                                    ; $67E9: $29
    ld bc, $2881                                  ; $67EA: $01 $81 $28
    rst RST_08                                    ; $67ED: $CF
    db $10                                        ; $67EE: $10
    rst RST_38                                    ; $67EF: $FF

jr_030_67F0:
    ld c, h                                       ; $67F0: $4C
    ld hl, sp+$40                                 ; $67F1: $F8 $40
    push bc                                       ; $67F3: $C5
    jr jr_030_6840                                ; $67F4: $18 $4A

    ld e, [hl]                                    ; $67F6: $5E
    inc c                                         ; $67F7: $0C
    inc e                                         ; $67F8: $1C
    ld [$FA0B], sp                                ; $67F9: $08 $0B $FA
    sbc c                                         ; $67FC: $99
    sub b                                         ; $67FD: $90
    nop                                           ; $67FE: $00
    cp $03                                        ; $67FF: $FE $03
    pop bc                                        ; $6801: $C1
    ld [$78E0], sp                                ; $6802: $08 $E0 $78
    ret nz                                        ; $6805: $C0

    nop                                           ; $6806: $00
    jr jr_030_6812                                ; $6807: $18 $09

    add hl, hl                                    ; $6809: $29
    pop af                                        ; $680A: $F1
    jr nz, @+$3A                                  ; $680B: $20 $38

    ld e, l                                       ; $680D: $5D
    db $10                                        ; $680E: $10
    add hl, bc                                    ; $680F: $09
    ldh a, [$FF28]                                ; $6810: $F0 $28

jr_030_6812:
    ld a, e                                       ; $6812: $7B
    dec b                                         ; $6813: $05
    jr jr_030_681E                                ; $6814: $18 $08

    ld c, e                                       ; $6816: $4B
    cp a                                          ; $6817: $BF
    db $10                                        ; $6818: $10
    rst RST_38                                    ; $6819: $FF
    adc e                                         ; $681A: $8B
    ld [$007C], sp                                ; $681B: $08 $7C $00

jr_030_681E:
    xor b                                         ; $681E: $A8
    ld a, [hl+]                                   ; $681F: $2A
    ld a, [hl]                                    ; $6820: $7E
    inc a                                         ; $6821: $3C
    jr z, jr_030_6886                             ; $6822: $28 $62

    ld [$688F], sp                                ; $6824: $08 $8F $68
    ld [de], a                                    ; $6827: $12
    ld d, e                                       ; $6828: $53
    ld [hl], d                                    ; $6829: $72
    add sp, $7F                                   ; $682A: $E8 $7F
    ld [$1F3F], sp                                ; $682C: $08 $3F $1F
    nop                                           ; $682F: $00
    cp $AF                                        ; $6830: $FE $AF
    ld bc, $0880                                  ; $6832: $01 $80 $08
    ret nz                                        ; $6835: $C0

    db $10                                        ; $6836: $10
    add hl, de                                    ; $6837: $19
    ld bc, $BE28                                  ; $6838: $01 $28 $BE
    ld [$10E0], sp                                ; $683B: $08 $E0 $10
    add hl, de                                    ; $683E: $19
    adc a                                         ; $683F: $8F

jr_030_6840:
    adc e                                         ; $6840: $8B
    rlca                                          ; $6841: $07
    ld b, a                                       ; $6842: $47
    and b                                         ; $6843: $A0
    ld [$10FF], sp                                ; $6844: $08 $FF $10

jr_030_6847:
    ld a, a                                       ; $6847: $7F
    add hl, sp                                    ; $6848: $39
    ccf                                           ; $6849: $3F
    ld [bc], a                                    ; $684A: $02
    ld c, $53                                     ; $684B: $0E $53
    inc b                                         ; $684D: $04
    dec c                                         ; $684E: $0D
    rlca                                          ; $684F: $07
    ld c, b                                       ; $6850: $48
    inc bc                                        ; $6851: $03
    ld bc, $E700                                  ; $6852: $01 $00 $E7
    xor b                                         ; $6855: $A8
    nop                                           ; $6856: $00
    ld [$FC08], sp                                ; $6857: $08 $08 $FC
    db $10                                        ; $685A: $10
    cp $E4                                        ; $685B: $FE $E4
    rst RST_28                                    ; $685D: $EF
    or h                                          ; $685E: $B4
    xor b                                         ; $685F: $A8
    inc e                                         ; $6860: $1C
    jr z, jr_030_686C                             ; $6861: $28 $09

    ld e, $08                                     ; $6863: $1E $08
    rra                                           ; $6865: $1F
    ld a, [bc]                                    ; $6866: $0A
    sub e                                         ; $6867: $93
    jr jr_030_6876                                ; $6868: $18 $0C

    adc $58                                       ; $686A: $CE $58

jr_030_686C:
    xor $C4                                       ; $686C: $EE $C4
    nop                                           ; $686E: $00
    rst RST_30                                    ; $686F: $F7
    xor c                                         ; $6870: $A9
    ld [bc], a                                    ; $6871: $02
    inc a                                         ; $6872: $3C
    ld [$10FF], sp                                ; $6873: $08 $FF $10

jr_030_6876:
    db $FC                                        ; $6876: $FC
    ret nz                                        ; $6877: $C0

    nop                                           ; $6878: $00
    cp h                                          ; $6879: $BC
    ld c, d                                       ; $687A: $4A
    add b                                         ; $687B: $80
    ld [$1028], sp                                ; $687C: $08 $28 $10
    ld c, b                                       ; $687F: $48
    ld b, b                                       ; $6880: $40
    ld a, [hl]                                    ; $6881: $7E
    ld [$8968], a                                 ; $6882: $EA $68 $89
    rlca                                          ; $6885: $07

jr_030_6886:
    ld b, $08                                     ; $6886: $06 $08
    rrca                                          ; $6888: $0F
    db $10                                        ; $6889: $10
    sbc a                                         ; $688A: $9F
    ld [hl], b                                    ; $688B: $70
    ld [bc], a                                    ; $688C: $02
    ld hl, sp+$10                                 ; $688D: $F8 $10
    ld [$7F62], sp                                ; $688F: $08 $62 $7F
    ld c, $3F                                     ; $6892: $0E $3F
    ld e, [hl]                                    ; $6894: $5E
    ld [de], a                                    ; $6895: $12
    add hl, bc                                    ; $6896: $09
    rra                                           ; $6897: $1F
    jr z, jr_030_6912                             ; $6898: $28 $78

    ld l, b                                       ; $689A: $68
    db $10                                        ; $689B: $10
    inc b                                         ; $689C: $04
    ld a, [hl-]                                   ; $689D: $3A
    inc e                                         ; $689E: $1C
    ld [$FE00], sp                                ; $689F: $08 $00 $FE
    ld bc, $0842                                  ; $68A2: $01 $42 $08
    rst RST_20                                    ; $68A5: $E7
    sbc d                                         ; $68A6: $9A
    db $10                                        ; $68A7: $10
    di                                            ; $68A8: $F3
    pop hl                                        ; $68A9: $E1
    nop                                           ; $68AA: $00
    jr z, @+$03                                   ; $68AB: $28 $01

    ld [$BE03], sp                                ; $68AD: $08 $03 $BE
    db $10                                        ; $68B0: $10
    rlca                                          ; $68B1: $07
    db $10                                        ; $68B2: $10
    add sp, -$28                                  ; $68B3: $E8 $D8

jr_030_68B5:
    jr @+$2B                                      ; $68B5: $18 $29

    ld [bc], a                                    ; $68B7: $02
    ld [$6949], a                                 ; $68B8: $EA $49 $69
    rlca                                          ; $68BB: $07
    ldh [$FF08], a                                ; $68BC: $E0 $08
    ldh a, [rNR10]                                ; $68BE: $F0 $10
    ld hl, sp+$16                                 ; $68C0: $F8 $16
    jr nc, jr_030_68B5                            ; $68C2: $30 $F1

    ld b, b                                       ; $68C4: $40
    jr z, jr_030_6847                             ; $68C5: $28 $80

    jr z, @+$12                                   ; $68C7: $28 $10

    db $FC                                        ; $68C9: $FC
    jr nz, @+$0A                                  ; $68CA: $20 $08

jr_030_68CC:
    adc $F8                                       ; $68CC: $CE $F8
    xor $C4                                       ; $68CE: $EE $C4
    db $FD                                        ; $68D0: $FD
    jr z, jr_030_68CC                             ; $68D1: $28 $F9

    ld a, [$0048]                                 ; $68D3: $FA $48 $00
    xor $C0                                       ; $68D6: $EE $C0
    ld [$1078], sp                                ; $68D8: $08 $78 $10
    ld a, $08                                     ; $68DB: $3E $08
    db $10                                        ; $68DD: $10
    rst RST_38                                    ; $68DE: $FF
    ld d, $FE                                     ; $68DF: $16 $FE
    ldh [$FFFB], a                                ; $68E1: $E0 $FB
    jr nz, @+$79                                  ; $68E3: $20 $77

    inc b                                         ; $68E5: $04
    inc hl                                        ; $68E6: $23
    ld a, a                                       ; $68E7: $7F
    inc h                                         ; $68E8: $24
    db $E4                                        ; $68E9: $E4
    ld b, b                                       ; $68EA: $40
    add hl, bc                                    ; $68EB: $09
    rst RST_08                                    ; $68EC: $CF
    add h                                         ; $68ED: $84
    ld a, [hl-]                                   ; $68EE: $3A
    rst RST_00                                    ; $68EF: $C7
    add e                                         ; $68F0: $83
    nop                                           ; $68F1: $00
    cp $01                                        ; $68F2: $FE $01
    ld b, $08                                     ; $68F4: $06 $08
    rrca                                          ; $68F6: $0F
    sbc b                                         ; $68F7: $98
    db $10                                        ; $68F8: $10
    rlca                                          ; $68F9: $07
    ld [bc], a                                    ; $68FA: $02
    add hl, bc                                    ; $68FB: $09
    sbc b                                         ; $68FC: $98
    inc bc                                        ; $68FD: $03
    rst RST_28                                    ; $68FE: $EF
    push bc                                       ; $68FF: $C5
    rlca                                          ; $6900: $07
    rst RST_18                                    ; $6901: $DF
    add hl, bc                                    ; $6902: $09
    dec e                                         ; $6903: $1D
    ld [$181F], sp                                ; $6904: $08 $1F $18
    ld hl, sp+$78                                 ; $6907: $F8 $78
    dec [hl]                                      ; $6909: $35
    and $C0                                       ; $690A: $E6 $C0
    nop                                           ; $690C: $00
    xor $60                                       ; $690D: $EE $60
    ld [$10F0], sp                                ; $690F: $08 $F0 $10

jr_030_6912:
    inc d                                         ; $6912: $14
    ld [hl], b                                    ; $6913: $70
    jr nz, @-$06                                  ; $6914: $20 $F8

    ld [$10FC], sp                                ; $6916: $08 $FC $10
    cp $44                                        ; $6919: $FE $44
    ld a, [bc]                                    ; $691B: $0A
    rst RST_20                                    ; $691C: $E7
    ld b, d                                       ; $691D: $42
    rst RST_00                                    ; $691E: $C7
    add d                                         ; $691F: $82
    add hl, bc                                    ; $6920: $09
    xor $38                                       ; $6921: $EE $38

jr_030_6923:
    ld a, h                                       ; $6923: $7C
    dec e                                         ; $6924: $1D
    ld [$3078], sp                                ; $6925: $08 $78 $30
    nop                                           ; $6928: $00
    cp $03                                        ; $6929: $FE $03
    rra                                           ; $692B: $1F
    ld [$3F49], sp                                ; $692C: $08 $49 $3F
    db $10                                        ; $692F: $10
    ld a, a                                       ; $6930: $7F

jr_030_6931:
    inc h                                         ; $6931: $24
    cp c                                          ; $6932: $B9
    adc $84                                       ; $6933: $CE $84
    add hl, bc                                    ; $6935: $09
    inc b                                         ; $6936: $04

jr_030_6937:
    call c, $FC88                                 ; $6937: $DC $88 $FC
    ld c, b                                       ; $693A: $48
    ld a, c                                       ; $693B: $79
    ldh [$FF33], a                                ; $693C: $E0 $33
    ld bc, $00D5                                  ; $693E: $01 $D5 $00
    sbc $03                                       ; $6941: $DE $03
    ld [$1007], sp                                ; $6943: $08 $07 $10
    add e                                         ; $6946: $83
    ld h, b                                       ; $6947: $60
    ld bc, $81CF                                  ; $6948: $01 $CF $81
    rst RST_38                                    ; $694B: $FF
    ld c, a                                       ; $694C: $4F
    ld a, a                                       ; $694D: $7F
    ld [hl+], a                                   ; $694E: $22
    ld [hl], a                                    ; $694F: $77
    ld a, [bc]                                    ; $6950: $0A
    ld hl, $247E                                  ; $6951: $21 $7E $24
    add hl, bc                                    ; $6954: $09
    db $FC                                        ; $6955: $FC
    ld c, b                                       ; $6956: $48
    call c, $0088                                 ; $6957: $DC $88 $00
    call nc, $01FE                                ; $695A: $D4 $FE $01
    add b                                         ; $695D: $80
    ld [$08E0], sp                                ; $695E: $08 $E0 $08
    ldh a, [$FF60]                                ; $6961: $F0 $60
    ld e, d                                       ; $6963: $5A
    pop hl                                        ; $6964: $E1
    jr nc, jr_030_6923                            ; $6965: $30 $BC

    jr z, jr_030_6931                             ; $6967: $28 $C8

    inc a                                         ; $6969: $3C
    ret z                                         ; $696A: $C8

    ld b, b                                       ; $696B: $40
    db $EB                                        ; $696C: $EB
    nop                                           ; $696D: $00
    jr z, @+$0B                                   ; $696E: $28 $09

    db $FD                                        ; $6970: $FD
    db $10                                        ; $6971: $10
    ld a, a                                       ; $6972: $7F
    ld c, b                                       ; $6973: $48
    nop                                           ; $6974: $00
    xor b                                         ; $6975: $A8
    xor $30                                       ; $6976: $EE $30
    ld [$1078], sp                                ; $6978: $08 $78 $10
    ld a, $10                                     ; $697B: $3E $10
    rst RST_38                                    ; $697D: $FF
    ld bc, $FE16                                  ; $697E: $01 $16 $FE
    ld hl, sp-$05                                 ; $6981: $F8 $FB
    jr nz, @+$79                                  ; $6983: $20 $77

    inc hl                                        ; $6985: $23
    cp b                                          ; $6986: $B8
    jr nc, jr_030_69AD                            ; $6987: $30 $24

    db $E4                                        ; $6989: $E4
    ret c                                         ; $698A: $D8

    add hl, bc                                    ; $698B: $09
    rst RST_08                                    ; $698C: $CF
    add h                                         ; $698D: $84
    rst RST_00                                    ; $698E: $C7
    add e                                         ; $698F: $83
    call nc, $FE00                                ; $6990: $D4 $00 $FE
    inc bc                                        ; $6993: $03
    ld [$1007], sp                                ; $6994: $08 $07 $10
    dec bc                                        ; $6997: $0B
    ld bc, $1F18                                  ; $6998: $01 $18 $1F
    add hl, bc                                    ; $699B: $09
    rrca                                          ; $699C: $0F
    jr nc, jr_030_6937                            ; $699D: $30 $98

    ld [bc], a                                    ; $699F: $02
    rst RST_20                                    ; $69A0: $E7
    jp nz, $19D6                                  ; $69A1: $C2 $D6 $19

    jr c, @+$06                                   ; $69A4: $38 $04

    ld [$F805], sp                                ; $69A6: $08 $05 $F8
    jr @-$01                                      ; $69A9: $18 $FD

    halt                                          ; $69AB: $76
    ret z                                         ; $69AC: $C8

jr_030_69AD:
    nop                                           ; $69AD: $00
    cp $01                                        ; $69AE: $FE $01
    add b                                         ; $69B0: $80

jr_030_69B1:
    ld [$FC59], sp                                ; $69B1: $08 $59 $FC
    add c                                         ; $69B4: $81
    db $10                                        ; $69B5: $10
    cp $24                                        ; $69B6: $FE $24
    ld [hl], a                                    ; $69B8: $77
    ld [hl+], a                                   ; $69B9: $22
    ld a, a                                       ; $69BA: $7F
    ld h, $19                                     ; $69BB: $26 $19
    inc de                                        ; $69BD: $13
    ld [hl], d                                    ; $69BE: $72
    jr nz, jr_030_69B1                            ; $69BF: $20 $F0

    ld [$C0E0], sp                                ; $69C1: $08 $E0 $C0
    nop                                           ; $69C4: $00
    and b                                         ; $69C5: $A0
    di                                            ; $69C6: $F3
    xor c                                         ; $69C7: $A9
    rlca                                          ; $69C8: $07
    ld bc, $E169                                  ; $69C9: $01 $69 $E1
    ld b, b                                       ; $69CC: $40
    sbc b                                         ; $69CD: $98
    ld a, [bc]                                    ; $69CE: $0A
    ld b, b                                       ; $69CF: $40
    add sp, $08                                   ; $69D0: $E8 $08
    db $FC                                        ; $69D2: $FC
    ld c, b                                       ; $69D3: $48
    ld hl, sp+$50                                 ; $69D4: $F8 $50

jr_030_69D6:
    ld a, b                                       ; $69D6: $78
    jr nc, jr_030_6A13                            ; $69D7: $30 $3A

    jr c, jr_030_69EB                             ; $69D9: $38 $10

    nop                                           ; $69DB: $00
    rst RST_10                                    ; $69DC: $D7
    nop                                           ; $69DD: $00
    inc bc                                        ; $69DE: $03
    ld [$8007], sp                                ; $69DF: $08 $07 $80
    db $10                                        ; $69E2: $10
    adc e                                         ; $69E3: $8B
    ld bc, $89DF                                  ; $69E4: $01 $DF $89
    rst RST_28                                    ; $69E7: $EF
    ld b, a                                       ; $69E8: $47
    ld [hl], a                                    ; $69E9: $77
    ld b, d                                       ; $69EA: $42

jr_030_69EB:
    ld [hl+], a                                   ; $69EB: $22
    add hl, bc                                    ; $69EC: $09
    daa                                           ; $69ED: $27
    ld [bc], a                                    ; $69EE: $02
    rrca                                          ; $69EF: $0F
    inc b                                         ; $69F0: $04
    ld [$9A05], sp                                ; $69F1: $08 $05 $9A
    add hl, de                                    ; $69F4: $19
    dec e                                         ; $69F5: $1D
    ld [$FE00], sp                                ; $69F6: $08 $00 $FE
    inc d                                         ; $69F9: $14
    ld [$C0BE], sp                                ; $69FA: $08 $BE $C0

jr_030_69FD:
    db $10                                        ; $69FD: $10
    add sp, $0A                                   ; $69FE: $E8 $0A
    ld [$FCC0], a                                 ; $6A00: $EA $C0 $FC
    jr z, @+$80                                   ; $6A03: $28 $7E

    ld b, c                                       ; $6A05: $41
    inc h                                         ; $6A06: $24
    ld sp, hl                                     ; $6A07: $F9
    ld a, a                                       ; $6A08: $7F
    ld h, $76                                     ; $6A09: $26 $76
    jr nz, jr_030_69FD                            ; $6A0B: $20 $F0

    ld [$E06E], sp                                ; $6A0D: $08 $6E $E0
    ld l, b                                       ; $6A10: $68
    nop                                           ; $6A11: $00
    add b                                         ; $6A12: $80

jr_030_6A13:
    nop                                           ; $6A13: $00
    cp $01                                        ; $6A14: $FE $01
    ld b, c                                       ; $6A16: $41
    xor [hl]                                      ; $6A17: $AE
    ld [$10E3], sp                                ; $6A18: $08 $E3 $10
    ld a, c                                       ; $6A1B: $79
    sbc b                                         ; $6A1C: $98
    ret z                                         ; $6A1D: $C8

    ld hl, sp-$11                                 ; $6A1E: $F8 $EF
    add hl, bc                                    ; $6A20: $09
    ld b, a                                       ; $6A21: $47
    rst RST_20                                    ; $6A22: $E7
    ld b, b                                       ; $6A23: $40
    pop af                                        ; $6A24: $F1
    ld [$50FF], sp                                ; $6A25: $08 $FF $50
    ld [$676E], sp                                ; $6A28: $08 $6E $67
    ld e, c                                       ; $6A2B: $59
    ld [$0027], sp                                ; $6A2C: $08 $27 $00
    rst RST_30                                    ; $6A2F: $F7
    nop                                           ; $6A30: $00
    add e                                         ; $6A31: $83
    and c                                         ; $6A32: $A1
    ld [$10C7], sp                                ; $6A33: $08 $C7 $10
    db $E3                                        ; $6A36: $E3
    add c                                         ; $6A37: $81
    di                                            ; $6A38: $F3
    and c                                         ; $6A39: $A1
    jr @+$32                                      ; $6A3A: $18 $30

    pop bc                                        ; $6A3C: $C1
    jp Jump_000_0D28                              ; $6A3D: $C3 $28 $0D


    pop hl                                        ; $6A40: $E1
    ret nz                                        ; $6A41: $C0

    ldh a, [rNR41]                                ; $6A42: $F0 $20
    ld [$F700], a                                 ; $6A44: $EA $00 $F7
    ld [bc], a                                    ; $6A47: $02
    adc b                                         ; $6A48: $88
    ld [$10FC], sp                                ; $6A49: $08 $FC $10
    cp $0A                                        ; $6A4C: $FE $0A
    inc h                                         ; $6A4E: $24
    cp h                                          ; $6A4F: $BC
    db $10                                        ; $6A50: $10
    sub b                                         ; $6A51: $90
    jr c, jr_030_69D6                             ; $6A52: $38 $82

    ld [$1387], sp                                ; $6A54: $08 $87 $13
    ld [bc], a                                    ; $6A57: $02
    adc [hl]                                      ; $6A58: $8E
    inc b                                         ; $6A59: $04
    ld l, c                                       ; $6A5A: $69
    ld hl, sp+$70                                 ; $6A5B: $F8 $70

jr_030_6A5D:
    nop                                           ; $6A5D: $00
    sbc $50                                       ; $6A5E: $DE $50
    ld b, $08                                     ; $6A60: $06 $08
    ld c, a                                       ; $6A62: $4F
    db $10                                        ; $6A63: $10
    rst RST_38                                    ; $6A64: $FF
    ld b, e                                       ; $6A65: $43
    ld a, a                                       ; $6A66: $7F
    ld a, $69                                     ; $6A67: $3E $69
    ccf                                           ; $6A69: $3F
    cp b                                          ; $6A6A: $B8
    jr jr_030_6A90                                ; $6A6B: $18 $23

    jr jr_030_6A8D                                ; $6A6D: $18 $1E

    rra                                           ; $6A6F: $1F
    jr z, jr_030_6A5D                             ; $6A70: $28 $EB

    add hl, de                                    ; $6A72: $19
    add hl, sp                                    ; $6A73: $39
    ld [$7022], sp                                ; $6A74: $08 $22 $70
    inc e                                         ; $6A77: $1C
    nop                                           ; $6A78: $00
    cp $AD                                        ; $6A79: $FE $AD
    ld bc, $08E1                                  ; $6A7B: $01 $E1 $08
    di                                            ; $6A7E: $F3
    db $10                                        ; $6A7F: $10
    add hl, de                                    ; $6A80: $19
    ret nz                                        ; $6A81: $C0

    ld [$E050], sp                                ; $6A82: $08 $50 $E0
    db $10                                        ; $6A85: $10
    pop bc                                        ; $6A86: $C1
    jr jr_030_6A8C                                ; $6A87: $18 $03

    ld bc, $0287                                  ; $6A89: $01 $87 $02

jr_030_6A8C:
    inc hl                                        ; $6A8C: $23

jr_030_6A8D:
    jp nz, Jump_030_4880                          ; $6A8D: $C2 $80 $48

jr_030_6A90:
    ld b, b                                       ; $6A90: $40
    ld [hl], c                                    ; $6A91: $71
    jr nz, jr_030_6A94                            ; $6A92: $20 $00

jr_030_6A94:
    rst RST_30                                    ; $6A94: $F7
    xor c                                         ; $6A95: $A9
    nop                                           ; $6A96: $00
    ld [hl], b                                    ; $6A97: $70

jr_030_6A98:
    ld [$10F8], sp                                ; $6A98: $08 $F8 $10
    db $FC                                        ; $6A9B: $FC
    sbc b                                         ; $6A9C: $98
    jr jr_030_6A98                                ; $6A9D: $18 $F9

    add b                                         ; $6A9F: $80
    ld [$28A8], sp                                ; $6AA0: $08 $A8 $28
    db $10                                        ; $6AA3: $10
    cp $84                                        ; $6AA4: $FE $84
    ld sp, hl                                     ; $6AA6: $F9
    ld l, [hl]                                    ; $6AA7: $6E
    rlca                                          ; $6AA8: $07
    ld [$0428], sp                                ; $6AA9: $08 $28 $04
    ld c, c                                       ; $6AAC: $49
    nop                                           ; $6AAD: $00
    xor $0C                                       ; $6AAE: $EE $0C
    and d                                         ; $6AB0: $A2
    ld [$101F], sp                                ; $6AB1: $08 $1F $10
    rrca                                          ; $6AB4: $0F
    inc bc                                        ; $6AB5: $03
    inc hl                                        ; $6AB6: $23
    jr z, @+$81                                   ; $6AB7: $28 $7F

    sbc e                                         ; $6AB9: $9B
    db $10                                        ; $6ABA: $10
    ccf                                           ; $6ABB: $3F
    inc e                                         ; $6ABC: $1C
    nop                                           ; $6ABD: $00
    adc h                                         ; $6ABE: $8C
    ld bc, $7808                                  ; $6ABF: $01 $08 $78
    db $DD                                        ; $6AC2: $DD
    db $10                                        ; $6AC3: $10
    sbc b                                         ; $6AC4: $98
    ld c, $00                                     ; $6AC5: $0E $00
    cp $69                                        ; $6AC7: $FE $69
    add e                                         ; $6AC9: $83
    db $10                                        ; $6ACA: $10
    add hl, de                                    ; $6ACB: $19
    pop bc                                        ; $6ACC: $C1
    add b                                         ; $6ACD: $80
    add c                                         ; $6ACE: $81
    jr z, jr_030_6AEA                             ; $6ACF: $28 $19

    pop hl                                        ; $6AD1: $E1
    ld b, b                                       ; $6AD2: $40
    add hl, bc                                    ; $6AD3: $09
    inc bc                                        ; $6AD4: $03
    db $E3                                        ; $6AD5: $E3
    ld b, c                                       ; $6AD6: $41
    rst RST_20                                    ; $6AD7: $E7
    ld b, d                                       ; $6AD8: $42
    rst RST_00                                    ; $6AD9: $C7
    add d                                         ; $6ADA: $82
    adc c                                         ; $6ADB: $89
    xor c                                         ; $6ADC: $A9
    ld [$B007], a                                 ; $6ADD: $EA $07 $B0
    ld [$10C0], sp                                ; $6AE0: $08 $C0 $10

jr_030_6AE3:
    ldh [rNR10], a                                ; $6AE3: $E0 $10
    call nz, $1883                                ; $6AE5: $C4 $83 $18
    sbc $84                                       ; $6AE8: $DE $84

jr_030_6AEA:
    cp $9C                                        ; $6AEA: $FE $9C
    db $FC                                        ; $6AEC: $FC
    ld b, b                                       ; $6AED: $40
    nop                                           ; $6AEE: $00
    xor a                                         ; $6AEF: $AF
    adc d                                         ; $6AF0: $8A
    ld [bc], a                                    ; $6AF1: $02
    ld [$10FF], sp                                ; $6AF2: $08 $FF $10
    ld [$0060], sp                                ; $6AF5: $08 $60 $00
    call nc, $01FE                                ; $6AF8: $D4 $FE $01
    db $10                                        ; $6AFB: $10
    ld [$1038], sp                                ; $6AFC: $08 $38 $10
    inc a                                         ; $6AFF: $3C
    jr jr_030_6AE3                                ; $6B00: $18 $E1

    add hl, de                                    ; $6B02: $19
    rrca                                          ; $6B03: $0F
    add hl, bc                                    ; $6B04: $09
    rra                                           ; $6B05: $1F
    ld [$070F], sp                                ; $6B06: $08 $0F $07
    nop                                           ; $6B09: $00
    call c, Call_000_02F7                         ; $6B0A: $DC $F7 $02
    ld [bc], a                                    ; $6B0D: $02
    ld [$1068], sp                                ; $6B0E: $08 $68 $10
    inc bc                                        ; $6B11: $03
    ld bc, $00D4                                  ; $6B12: $01 $D4 $00
    ld c, d                                       ; $6B15: $4A
    jr nz, jr_030_6B20                            ; $6B16: $20 $08

    ld [hl], b                                    ; $6B18: $70
    db $10                                        ; $6B19: $10
    ldh [rLCDC], a                                ; $6B1A: $E0 $40
    ld a, [hl-]                                   ; $6B1C: $3A
    ret nz                                        ; $6B1D: $C0

    add b                                         ; $6B1E: $80
    nop                                           ; $6B1F: $00

jr_030_6B20:
    rst RST_10                                    ; $6B20: $D7
    inc b                                         ; $6B21: $04
    ccf                                           ; $6B22: $3F
    ld [$C6FF], sp                                ; $6B23: $08 $FF $C6
    db $10                                        ; $6B26: $10
    ld [$F8C8], sp                                ; $6B27: $08 $C8 $F8
    db $10                                        ; $6B2A: $10
    reti                                          ; $6B2B: $D9


    dec c                                         ; $6B2C: $0D
    ld a, $9D                                     ; $6B2D: $3E $9D
    ld c, b                                       ; $6B2F: $48
    rra                                           ; $6B30: $1F
    ld c, $00                                     ; $6B31: $0E $00
    rst RST_20                                    ; $6B33: $E7
    nop                                           ; $6B34: $00
    ld b, b                                       ; $6B35: $40
    ld [$E054], sp                                ; $6B36: $08 $54 $E0

jr_030_6B39:
    db $10                                        ; $6B39: $10
    ldh a, [$FFBC]                                ; $6B3A: $F0 $BC
    ld [hl], h                                    ; $6B3C: $74
    ld [$247E], sp                                ; $6B3D: $08 $7E $24
    inc bc                                        ; $6B40: $03
    ld a, h                                       ; $6B41: $7C
    jr z, jr_030_6B80                             ; $6B42: $28 $3C

    jr jr_030_6B62                                ; $6B44: $18 $1C

    ld [$E700], sp                                ; $6B46: $08 $00 $E7

Call_030_6B49:
    xor d                                         ; $6B49: $AA
    nop                                           ; $6B4A: $00
    ld bc, $0308                                  ; $6B4B: $01 $08 $03
    db $10                                        ; $6B4E: $10
    ld b, c                                       ; $6B4F: $41
    jr jr_030_6B39                                ; $6B50: $18 $E7

    ld [bc], a                                    ; $6B52: $02
    ld b, b                                       ; $6B53: $40
    ld a, a                                       ; $6B54: $7F
    daa                                           ; $6B55: $27
    ccf                                           ; $6B56: $3F
    ld de, $083B                                  ; $6B57: $11 $3B $08
    inc de                                        ; $6B5A: $13
    sub e                                         ; $6B5B: $93
    ld e, b                                       ; $6B5C: $58
    rlca                                          ; $6B5D: $07
    ld [bc], a                                    ; $6B5E: $02
    add hl, bc                                    ; $6B5F: $09
    ld c, $04                                     ; $6B60: $0E $04

jr_030_6B62:
    add hl, bc                                    ; $6B62: $09
    nop                                           ; $6B63: $00
    xor d                                         ; $6B64: $AA
    cp $80                                        ; $6B65: $FE $80
    ld [$10C0], sp                                ; $6B67: $08 $C0 $10
    ldh a, [$FF08]                                ; $6B6A: $F0 $08
    ld hl, sp+$68                                 ; $6B6C: $F8 $68
    or b                                          ; $6B6E: $B0
    jr jr_030_6BA1                                ; $6B6F: $18 $30

    sbc $48                                       ; $6B71: $DE $48
    cp a                                          ; $6B73: $BF
    ld e, $FE                                     ; $6B74: $1E $FE
    ld [hl], l                                    ; $6B76: $75
    jr nz, jr_030_6B79                            ; $6B77: $20 $00

jr_030_6B79:
    jr z, @+$0B                                   ; $6B79: $28 $09

    ld a, [hl]                                    ; $6B7B: $7E
    db $10                                        ; $6B7C: $10
    ccf                                           ; $6B7D: $3F
    ld c, b                                       ; $6B7E: $48
    push af                                       ; $6B7F: $F5

jr_030_6B80:
    nop                                           ; $6B80: $00
    cp $07                                        ; $6B81: $FE $07
    ld bc, $0866                                  ; $6B83: $01 $66 $08
    rst RST_38                                    ; $6B86: $FF
    db $10                                        ; $6B87: $10
    rst RST_38                                    ; $6B88: $FF
    add hl, bc                                    ; $6B89: $09
    add hl, hl                                    ; $6B8A: $29
    rlca                                          ; $6B8B: $07
    rlca                                          ; $6B8C: $07
    rlca                                          ; $6B8D: $07
    rst RST_38                                    ; $6B8E: $FF
    rlca                                          ; $6B8F: $07
    rlca                                          ; $6B90: $07
    ldh a, [rTAC]                                 ; $6B91: $F0 $07
    rst RST_38                                    ; $6B93: $FF
    rlca                                          ; $6B94: $07
    inc bc                                        ; $6B95: $03
    ld e, l                                       ; $6B96: $5D
    add b                                         ; $6B97: $80
    ld l, d                                       ; $6B98: $6A
    nop                                           ; $6B99: $00
    inc bc                                        ; $6B9A: $03
    nop                                           ; $6B9B: $00
    ld bc, $0300                                  ; $6B9C: $01 $00 $03
    nop                                           ; $6B9F: $00
    rlca                                          ; $6BA0: $07

jr_030_6BA1:
    xor d                                         ; $6BA1: $AA
    nop                                           ; $6BA2: $00
    rrca                                          ; $6BA3: $0F
    nop                                           ; $6BA4: $00
    rra                                           ; $6BA5: $1F
    nop                                           ; $6BA6: $00
    ccf                                           ; $6BA7: $3F
    nop                                           ; $6BA8: $00
    ld a, a                                       ; $6BA9: $7F
    db $FD                                        ; $6BAA: $FD
    inc bc                                        ; $6BAB: $03
    inc bc                                        ; $6BAC: $03
    inc bc                                        ; $6BAD: $03
    nop                                           ; $6BAE: $00
    ld [hl], a                                    ; $6BAF: $77
    ld [bc], a                                    ; $6BB0: $02
    add b                                         ; $6BB1: $80
    inc b                                         ; $6BB2: $04
    ld d, l                                       ; $6BB3: $55
    ret nz                                        ; $6BB4: $C0

    inc b                                         ; $6BB5: $04
    ldh [rDIV], a                                 ; $6BB6: $E0 $04
    ldh a, [rDIV]                                 ; $6BB8: $F0 $04
    ld hl, sp+$04                                 ; $6BBA: $F8 $04
    ld e, a                                       ; $6BBC: $5F
    db $FC                                        ; $6BBD: $FC
    inc b                                         ; $6BBE: $04
    cp $07                                        ; $6BBF: $FE $07
    rlca                                          ; $6BC1: $07
    rlca                                          ; $6BC2: $07
    ld [hl], e                                    ; $6BC3: $73
    rst RST_38                                    ; $6BC4: $FF
    rst RST_38                                    ; $6BC5: $FF
    ld hl, sp+$04                                 ; $6BC6: $F8 $04
    ld hl, sp+$08                                 ; $6BC8: $F8 $08
    ld hl, sp+$08                                 ; $6BCA: $F8 $08
    ld hl, sp+$08                                 ; $6BCC: $F8 $08
    rst RST_38                                    ; $6BCE: $FF
    ld hl, sp+$08                                 ; $6BCF: $F8 $08
    inc b                                         ; $6BD1: $04
    pop de                                        ; $6BD2: $D1
    add hl, bc                                    ; $6BD3: $09
    rlca                                          ; $6BD4: $07
    rlca                                          ; $6BD5: $07
    inc b                                         ; $6BD6: $04
    rst RST_38                                    ; $6BD7: $FF
    ld [hl], a                                    ; $6BD8: $77
    rst RST_38                                    ; $6BD9: $FF

jr_030_6BDA:
    rst RST_38                                    ; $6BDA: $FF
    db $FD                                        ; $6BDB: $FD
    jr jr_030_6BDA                                ; $6BDC: $18 $FC

    inc b                                         ; $6BDE: $04
    db $FC                                        ; $6BDF: $FC
    rst RST_38                                    ; $6BE0: $FF
    inc b                                         ; $6BE1: $04
    call z, $0707                                 ; $6BE2: $CC $07 $07
    rlca                                          ; $6BE5: $07
    ld [hl], e                                    ; $6BE6: $73
    cp $04                                        ; $6BE7: $FE $04
    rst RST_38                                    ; $6BE9: $FF
    rst RST_38                                    ; $6BEA: $FF
    rst RST_38                                    ; $6BEB: $FF
    ret nz                                        ; $6BEC: $C0

    inc b                                         ; $6BED: $04
    inc c                                         ; $6BEE: $0C
    db $FD                                        ; $6BEF: $FD
    add hl, bc                                    ; $6BF0: $09
    rlca                                          ; $6BF1: $07
    rst RST_38                                    ; $6BF2: $FF
    rlca                                          ; $6BF3: $07
    inc b                                         ; $6BF4: $04
    ld [hl], a                                    ; $6BF5: $77
    rst RST_38                                    ; $6BF6: $FF
    rst RST_38                                    ; $6BF7: $FF
    db $10                                        ; $6BF8: $10
    cp $18                                        ; $6BF9: $FE $18
    rst RST_38                                    ; $6BFB: $FF
    db $FC                                        ; $6BFC: $FC
    inc b                                         ; $6BFD: $04
    call z, $0707                                 ; $6BFE: $CC $07 $07
    rlca                                          ; $6C01: $07
    ld [hl], e                                    ; $6C02: $73
    rst RST_38                                    ; $6C03: $FF
    rst RST_38                                    ; $6C04: $FF
    rst RST_38                                    ; $6C05: $FF
    cp $04                                        ; $6C06: $FE $04
    db $FD                                        ; $6C08: $FD
    nop                                           ; $6C09: $00
    db $FD                                        ; $6C0A: $FD
    add hl, bc                                    ; $6C0B: $09
    rlca                                          ; $6C0C: $07
    rst RST_38                                    ; $6C0D: $FF
    rlca                                          ; $6C0E: $07
    inc b                                         ; $6C0F: $04
    ld [hl], a                                    ; $6C10: $77
    rst RST_38                                    ; $6C11: $FF
    db $FD                                        ; $6C12: $FD
    ld [$10FE], sp                                ; $6C13: $08 $FE $10
    rst RST_38                                    ; $6C16: $FF
    cp $18                                        ; $6C17: $FE $18
    call z, $0707                                 ; $6C19: $CC $07 $07
    rlca                                          ; $6C1C: $07
    ld [hl], e                                    ; $6C1D: $73
    cp $FF                                        ; $6C1E: $FE $FF
    nop                                           ; $6C20: $00
    rst RST_38                                    ; $6C21: $FF
    or b                                          ; $6C22: $B0
    inc b                                         ; $6C23: $04
    cp $04                                        ; $6C24: $FE $04
    rst RST_38                                    ; $6C26: $FF
    rlca                                          ; $6C27: $07
    rst RST_38                                    ; $6C28: $FF
    rlca                                          ; $6C29: $07
    rst RST_38                                    ; $6C2A: $FF
    inc bc                                        ; $6C2B: $03
    db $FD                                        ; $6C2C: $FD
    nop                                           ; $6C2D: $00
    ldh [rP1], a                                  ; $6C2E: $E0 $00
    or b                                          ; $6C30: $B0
    rst RST_38                                    ; $6C31: $FF
    inc b                                         ; $6C32: $04
    db $FC                                        ; $6C33: $FC
    ld [$04FC], sp                                ; $6C34: $08 $FC $04
    db $FC                                        ; $6C37: $FC
    db $10                                        ; $6C38: $10
    call z, $07FF                                 ; $6C39: $CC $FF $07
    rlca                                          ; $6C3C: $07
    rlca                                          ; $6C3D: $07
    ld [hl], e                                    ; $6C3E: $73
    cp $04                                        ; $6C3F: $FE $04
    cp $04                                        ; $6C41: $FE $04
    rst RST_38                                    ; $6C43: $FF
    cp $04                                        ; $6C44: $FE $04
    db $FD                                        ; $6C46: $FD
    nop                                           ; $6C47: $00
    db $FD                                        ; $6C48: $FD
    add hl, bc                                    ; $6C49: $09
    rlca                                          ; $6C4A: $07
    rlca                                          ; $6C4B: $07
    rst RST_38                                    ; $6C4C: $FF
    inc b                                         ; $6C4D: $04
    ld [hl], a                                    ; $6C4E: $77
    rst RST_38                                    ; $6C4F: $FF
    rst RST_38                                    ; $6C50: $FF
    rst RST_38                                    ; $6C51: $FF
    rst RST_38                                    ; $6C52: $FF
    rlca                                          ; $6C53: $07
    rlca                                          ; $6C54: $07
    rst RST_38                                    ; $6C55: $FF
    rlca                                          ; $6C56: $07
    ld [hl], e                                    ; $6C57: $73
    rst RST_38                                    ; $6C58: $FF
    rst RST_38                                    ; $6C59: $FF
    db $FC                                        ; $6C5A: $FC
    inc b                                         ; $6C5B: $04
    cp $04                                        ; $6C5C: $FE $04
    rst RST_38                                    ; $6C5E: $FF
    nop                                           ; $6C5F: $00
    db $FD                                        ; $6C60: $FD
    add hl, bc                                    ; $6C61: $09
    rlca                                          ; $6C62: $07
    rlca                                          ; $6C63: $07
    inc b                                         ; $6C64: $04
    ld [hl], a                                    ; $6C65: $77
    rst RST_38                                    ; $6C66: $FF
    rst RST_38                                    ; $6C67: $FF
    rst RST_38                                    ; $6C68: $FF
    nop                                           ; $6C69: $00
    cp b                                          ; $6C6A: $B8
    nop                                           ; $6C6B: $00
    db $FC                                        ; $6C6C: $FC
    inc b                                         ; $6C6D: $04
    db $FC                                        ; $6C6E: $FC
    ld [$CCFF], sp                                ; $6C6F: $08 $FF $CC
    rlca                                          ; $6C72: $07
    rlca                                          ; $6C73: $07
    rlca                                          ; $6C74: $07
    ld [hl], e                                    ; $6C75: $73
    rst RST_38                                    ; $6C76: $FF
    and c                                         ; $6C77: $A1
    db $FC                                        ; $6C78: $FC
    rst RST_38                                    ; $6C79: $FF
    inc b                                         ; $6C7A: $04
    db $FC                                        ; $6C7B: $FC

jr_030_6C7C:
    inc b                                         ; $6C7C: $04
    db $FC                                        ; $6C7D: $FC
    jr nz, jr_030_6C7C                            ; $6C7E: $20 $FC

    inc b                                         ; $6C80: $04
    nop                                           ; $6C81: $00
    rst RST_38                                    ; $6C82: $FF
    db $FD                                        ; $6C83: $FD
    add hl, bc                                    ; $6C84: $09
    rlca                                          ; $6C85: $07
    rlca                                          ; $6C86: $07
    ld h, c                                       ; $6C87: $61
    inc bc                                        ; $6C88: $03
    rst RST_38                                    ; $6C89: $FF
    rst RST_38                                    ; $6C8A: $FF
    rst RST_38                                    ; $6C8B: $FF
    cp $00                                        ; $6C8C: $FE $00
    db $FC                                        ; $6C8E: $FC
    nop                                           ; $6C8F: $00
    call z, $0707                                 ; $6C90: $CC $07 $07
    rlca                                          ; $6C93: $07
    rst RST_38                                    ; $6C94: $FF
    ld [hl], e                                    ; $6C95: $73
    rst RST_38                                    ; $6C96: $FF
    rst RST_38                                    ; $6C97: $FF
    cp $04                                        ; $6C98: $FE $04
    db $FC                                        ; $6C9A: $FC
    ld sp, $FFFD                                  ; $6C9B: $31 $FD $FF
    add hl, bc                                    ; $6C9E: $09
    rlca                                          ; $6C9F: $07
    rlca                                          ; $6CA0: $07
    ld [hl], e                                    ; $6CA1: $73
    ei                                            ; $6CA2: $FB
    ei                                            ; $6CA3: $FB
    ei                                            ; $6CA4: $FB
    ei                                            ; $6CA5: $FB
    db $FC                                        ; $6CA6: $FC
    inc bc                                        ; $6CA7: $03
    inc bc                                        ; $6CA8: $03
    inc bc                                        ; $6CA9: $03
    rst RST_38                                    ; $6CAA: $FF
    rst RST_38                                    ; $6CAB: $FF
    dec b                                         ; $6CAC: $05
    ld [bc], a                                    ; $6CAD: $02
    inc bc                                        ; $6CAE: $03
    nop                                           ; $6CAF: $00
    inc b                                         ; $6CB0: $04
    rlca                                          ; $6CB1: $07
    ld [$100F], sp                                ; $6CB2: $08 $0F $10
    rra                                           ; $6CB5: $1F
    jr nz, @+$42                                  ; $6CB6: $20 $40

    cp a                                          ; $6CB8: $BF
    ret nc                                        ; $6CB9: $D0

    ccf                                           ; $6CBA: $3F
    ld [$0707], sp                                ; $6CBB: $08 $07 $07
    dec b                                         ; $6CBE: $05
    ld [hl], a                                    ; $6CBF: $77
    rst RST_38                                    ; $6CC0: $FF
    db $D3                                        ; $6CC1: $D3
    rst RST_38                                    ; $6CC2: $FF
    cp $78                                        ; $6CC3: $FE $78
    ld hl, sp+$7C                                 ; $6CC5: $F8 $7C
    ld a, [hl]                                    ; $6CC7: $7E
    pop de                                        ; $6CC8: $D1
    add hl, bc                                    ; $6CC9: $09
    rst RST_38                                    ; $6CCA: $FF
    rlca                                          ; $6CCB: $07
    rlca                                          ; $6CCC: $07
    inc b                                         ; $6CCD: $04
    ld [hl], a                                    ; $6CCE: $77
    ld [bc], a                                    ; $6CCF: $02
    ld hl, sp-$01                                 ; $6CD0: $F8 $FF
    rst RST_38                                    ; $6CD2: $FF
    sub a                                         ; $6CD3: $97
    inc b                                         ; $6CD4: $04
    jr nc, jr_030_6D37                            ; $6CD5: $30 $60

    db $FC                                        ; $6CD7: $FC
    rra                                           ; $6CD8: $1F
    ld [$0707], sp                                ; $6CD9: $08 $07 $07
    ld a, [$7305]                                 ; $6CDC: $FA $05 $73
    rst RST_38                                    ; $6CDF: $FF
    rst RST_38                                    ; $6CE0: $FF
    ld hl, sp+$70                                 ; $6CE1: $F8 $70
    cp $3C                                        ; $6CE3: $FE $3C
    ld a, a                                       ; $6CE5: $7F
    ld a, $FD                                     ; $6CE6: $3E $FD
    add hl, bc                                    ; $6CE8: $09
    rlca                                          ; $6CE9: $07
    rlca                                          ; $6CEA: $07
    inc b                                         ; $6CEB: $04
    ld [hl], a                                    ; $6CEC: $77
    rst RST_38                                    ; $6CED: $FF
    rst RST_28                                    ; $6CEE: $EF
    rst RST_38                                    ; $6CEF: $FF
    db $FD                                        ; $6CF0: $FD

jr_030_6CF1:
    inc b                                         ; $6CF1: $04
    jr jr_030_6CF1                                ; $6CF2: $18 $FD

    sub b                                         ; $6CF4: $90
    db $FC                                        ; $6CF5: $FC
    inc c                                         ; $6CF6: $0C
    cp $08                                        ; $6CF7: $FE $08
    rlca                                          ; $6CF9: $07
    rlca                                          ; $6CFA: $07
    dec b                                         ; $6CFB: $05
    ld [hl], e                                    ; $6CFC: $73
    rst RST_38                                    ; $6CFD: $FF
    cp $60                                        ; $6CFE: $FE $60
    xor a                                         ; $6D00: $AF
    cp $38                                        ; $6D01: $FE $38
    db $FD                                        ; $6D03: $FD
    ld e, $FD                                     ; $6D04: $1E $FD
    add hl, bc                                    ; $6D06: $09
    rlca                                          ; $6D07: $07
    rlca                                          ; $6D08: $07
    db $FD                                        ; $6D09: $FD
    inc b                                         ; $6D0A: $04
    ld [hl], a                                    ; $6D0B: $77
    ld a, [$FE05]                                 ; $6D0C: $FA $05 $FE
    inc b                                         ; $6D0F: $04
    inc c                                         ; $6D10: $0C
    db $FD                                        ; $6D11: $FD
    rst RST_38                                    ; $6D12: $FF
    inc b                                         ; $6D13: $04
    add h                                         ; $6D14: $84
    rst RST_38                                    ; $6D15: $FF
    rlca                                          ; $6D16: $07
    rlca                                          ; $6D17: $07
    rst RST_38                                    ; $6D18: $FF
    inc bc                                        ; $6D19: $03
    cp $57                                        ; $6D1A: $FE $57

jr_030_6D1C:
    ld b, b                                       ; $6D1C: $40
    db $FC                                        ; $6D1D: $FC

jr_030_6D1E:
    jr nz, jr_030_6D1C                            ; $6D1E: $20 $FC

    jr nc, jr_030_6D1E                            ; $6D20: $30 $FC

    ld a, h                                       ; $6D22: $7C
    db $FC                                        ; $6D23: $FC
    ccf                                           ; $6D24: $3F
    inc e                                         ; $6D25: $1C
    ld c, $FD                                     ; $6D26: $0E $FD
    add hl, bc                                    ; $6D28: $09
    rlca                                          ; $6D29: $07
    rlca                                          ; $6D2A: $07
    inc b                                         ; $6D2B: $04
    ld [hl], a                                    ; $6D2C: $77
    rst RST_30                                    ; $6D2D: $F7
    ld [bc], a                                    ; $6D2E: $02
    ld hl, sp-$03                                 ; $6D2F: $F8 $FD
    inc b                                         ; $6D31: $04
    ld b, $FD                                     ; $6D32: $06 $FD
    inc b                                         ; $6D34: $04
    ld [hl], h                                    ; $6D35: $74
    rst RST_18                                    ; $6D36: $DF

jr_030_6D37:
    db $FD                                        ; $6D37: $FD
    ld hl, sp+$78                                 ; $6D38: $F8 $78
    inc c                                         ; $6D3A: $0C
    rlca                                          ; $6D3B: $07
    rlca                                          ; $6D3C: $07
    ld b, $73                                     ; $6D3D: $06 $73
    rst RST_38                                    ; $6D3F: $FF
    rst RST_38                                    ; $6D40: $FF
    rst RST_38                                    ; $6D41: $FF
    rst RST_38                                    ; $6D42: $FF
    db $FD                                        ; $6D43: $FD
    rst RST_10                                    ; $6D44: $D7
    rlca                                          ; $6D45: $07
    rlca                                          ; $6D46: $07
    rst RST_38                                    ; $6D47: $FF
    cp $03                                        ; $6D48: $FE $03
    rst RST_38                                    ; $6D4A: $FF
    db $FD                                        ; $6D4B: $FD
    inc b                                         ; $6D4C: $04
    inc [hl]                                      ; $6D4D: $34
    db $FD                                        ; $6D4E: $FD
    inc b                                         ; $6D4F: $04
    inc a                                         ; $6D50: $3C
    cp a                                          ; $6D51: $BF
    db $FC                                        ; $6D52: $FC
    ld a, h                                       ; $6D53: $7C
    inc c                                         ; $6D54: $0C
    rlca                                          ; $6D55: $07
    rlca                                          ; $6D56: $07
    ld b, $73                                     ; $6D57: $06 $73
    rst RST_38                                    ; $6D59: $FF
    push de                                       ; $6D5A: $D5
    rst RST_38                                    ; $6D5B: $FF
    db $FC                                        ; $6D5C: $FC
    db $10                                        ; $6D5D: $10
    db $FC                                        ; $6D5E: $FC
    ld [$0CFC], sp                                ; $6D5F: $08 $FC $0C
    call z, $9CFF                                 ; $6D62: $CC $FF $9C
    rlca                                          ; $6D65: $07
    rlca                                          ; $6D66: $07
    rlca                                          ; $6D67: $07
    ld [hl], a                                    ; $6D68: $77
    rst RST_38                                    ; $6D69: $FF
    inc b                                         ; $6D6A: $04
    xor b                                         ; $6D6B: $A8
    xor d                                         ; $6D6C: $AA
    inc b                                         ; $6D6D: $04
    rlca                                          ; $6D6E: $07
    inc b                                         ; $6D6F: $04
    rrca                                          ; $6D70: $0F
    jr jr_030_6D91                                ; $6D71: $18 $1E

    inc b                                         ; $6D73: $04
    ld a, $BF                                     ; $6D74: $3E $BF
    db $FC                                        ; $6D76: $FC
    ld a, [hl]                                    ; $6D77: $7E
    inc c                                         ; $6D78: $0C
    rlca                                          ; $6D79: $07
    rlca                                          ; $6D7A: $07
    ld b, $73                                     ; $6D7B: $06 $73
    rst RST_38                                    ; $6D7D: $FF
    db $EB                                        ; $6D7E: $EB
    rst RST_38                                    ; $6D7F: $FF
    rst RST_38                                    ; $6D80: $FF
    db $FC                                        ; $6D81: $FC
    inc b                                         ; $6D82: $04
    call z, Call_000_0702                         ; $6D83: $CC $02 $07
    rlca                                          ; $6D86: $07
    db $FD                                        ; $6D87: $FD
    rlca                                          ; $6D88: $07
    ld [hl], a                                    ; $6D89: $77
    rst RST_38                                    ; $6D8A: $FF
    rst RST_38                                    ; $6D8B: $FF
    db $FD                                        ; $6D8C: $FD
    inc b                                         ; $6D8D: $04
    rra                                           ; $6D8E: $1F
    inc b                                         ; $6D8F: $04
    ld a, a                                       ; $6D90: $7F

jr_030_6D91:
    ccf                                           ; $6D91: $3F
    db $FC                                        ; $6D92: $FC
    nop                                           ; $6D93: $00
    inc c                                         ; $6D94: $0C
    rlca                                          ; $6D95: $07
    rlca                                          ; $6D96: $07
    rlca                                          ; $6D97: $07
    inc bc                                        ; $6D98: $03
    rst RST_38                                    ; $6D99: $FF
    db $FD                                        ; $6D9A: $FD
    inc b                                         ; $6D9B: $04
    db $FC                                        ; $6D9C: $FC
    inc b                                         ; $6D9D: $04
    db $FC                                        ; $6D9E: $FC
    inc b                                         ; $6D9F: $04
    db $FC                                        ; $6DA0: $FC
    inc b                                         ; $6DA1: $04
    rst RST_38                                    ; $6DA2: $FF
    db $FC                                        ; $6DA3: $FC
    inc b                                         ; $6DA4: $04
    db $FC                                        ; $6DA5: $FC
    inc b                                         ; $6DA6: $04
    call z, $0707                                 ; $6DA7: $CC $07 $07
    rlca                                          ; $6DAA: $07
    ld [$0373], a                                 ; $6DAB: $EA $73 $03
    db $FC                                        ; $6DAE: $FC
    ld [bc], a                                    ; $6DAF: $02
    db $FC                                        ; $6DB0: $FC
    inc b                                         ; $6DB1: $04
    db $FC                                        ; $6DB2: $FC
    ld [$FCAB], sp                                ; $6DB3: $08 $AB $FC
    db $10                                        ; $6DB6: $10
    db $FC                                        ; $6DB7: $FC

jr_030_6DB8:
    jr nz, jr_030_6DB8                            ; $6DB8: $20 $FE

    ld b, b                                       ; $6DBA: $40
    rlca                                          ; $6DBB: $07
    rlca                                          ; $6DBC: $07
    ld a, [$7306]                                 ; $6DBD: $FA $06 $73
    rst RST_38                                    ; $6DC0: $FF
    rst RST_38                                    ; $6DC1: $FF
    db $FD                                        ; $6DC2: $FD
    ld a, b                                       ; $6DC3: $78
    jr nz, jr_030_6E42                            ; $6DC4: $20 $7C

    rst RST_28                                    ; $6DC6: $EF
    inc b                                         ; $6DC7: $04
    call z, Call_030_7E04                         ; $6DC8: $CC $04 $7E
    rlca                                          ; $6DCB: $07
    rlca                                          ; $6DCC: $07
    ld b, $77                                     ; $6DCD: $06 $77
    push af                                       ; $6DCF: $F5
    ld a, [$FFFF]                                 ; $6DD0: $FA $FF $FF
    db $FC                                        ; $6DD3: $FC

jr_030_6DD4:
    jr nc, jr_030_6DD4                            ; $6DD4: $30 $FE

    ld h, b                                       ; $6DD6: $60
    rlca                                          ; $6DD7: $07
    ei                                            ; $6DD8: $FB
    rlca                                          ; $6DD9: $07
    ld b, $77                                     ; $6DDA: $06 $77
    rst RST_38                                    ; $6DDC: $FF
    rst RST_38                                    ; $6DDD: $FF

jr_030_6DDE:
    ld [hl], b                                    ; $6DDE: $70
    jr jr_030_6DDE                                ; $6DDF: $18 $FD

jr_030_6DE1:
    ld [hl], a                                    ; $6DE1: $77
    inc a                                         ; $6DE2: $3C
    jr nz, jr_030_6DE1                            ; $6DE3: $20 $FC

    inc b                                         ; $6DE5: $04
    ld a, $07                                     ; $6DE6: $3E $07
    rlca                                          ; $6DE8: $07
    ld b, $F7                                     ; $6DE9: $06 $F7
    ld [hl], a                                    ; $6DEB: $77
    rst RST_38                                    ; $6DEC: $FF
    rst RST_38                                    ; $6DED: $FF
    db $FD                                        ; $6DEE: $FD
    jr @+$01                                      ; $6DEF: $18 $FF

    nop                                           ; $6DF1: $00
    sbc h                                         ; $6DF2: $9C
    db $FD                                        ; $6DF3: $FD
    rlca                                          ; $6DF4: $07
    rlca                                          ; $6DF5: $07
    ld b, $77                                     ; $6DF6: $06 $77
    rst RST_38                                    ; $6DF8: $FF
    and c                                         ; $6DF9: $A1
    ld h, b                                       ; $6DFA: $60
    db $10                                        ; $6DFB: $10
    or e                                          ; $6DFC: $B3
    db $FD                                        ; $6DFD: $FD
    jr c, @+$1A                                   ; $6DFE: $38 $18

    cp $E0                                        ; $6E00: $FE $E0
    ld e, $07                                     ; $6E02: $1E $07
    rlca                                          ; $6E04: $07
    ei                                            ; $6E05: $FB
    ld b, $77                                     ; $6E06: $06 $77
    ld [bc], a                                    ; $6E08: $02
    rst RST_38                                    ; $6E09: $FF
    db $FC                                        ; $6E0A: $FC
    inc c                                         ; $6E0B: $0C
    cp $84                                        ; $6E0C: $FE $84
    db $FD                                        ; $6E0E: $FD
    rst RST_38                                    ; $6E0F: $FF
    rlca                                          ; $6E10: $07
    rlca                                          ; $6E11: $07
    rst RST_38                                    ; $6E12: $FF
    inc bc                                        ; $6E13: $03
    cp $40                                        ; $6E14: $FE $40
    ld [$205D], sp                                ; $6E16: $08 $5D $20
    db $E4                                        ; $6E19: $E4
    jr nc, jr_030_6E20                            ; $6E1A: $30 $04

    ld a, h                                       ; $6E1C: $7C
    cp h                                          ; $6E1D: $BC
    inc e                                         ; $6E1E: $1C
    inc b                                         ; $6E1F: $04

jr_030_6E20:
    sbc a                                         ; $6E20: $9F
    db $FC                                        ; $6E21: $FC
    ldh a, [$FF0E]                                ; $6E22: $F0 $0E
    rlca                                          ; $6E24: $07
    rlca                                          ; $6E25: $07
    ld b, $77                                     ; $6E26: $06 $77
    ld a, [$FEBB]                                 ; $6E28: $FA $BB $FE
    ld b, $FE                                     ; $6E2B: $06 $FE
    ld [hl], h                                    ; $6E2D: $74
    cp $78                                        ; $6E2E: $FE $78
    call z, $FF07                                 ; $6E30: $CC $07 $FF
    rlca                                          ; $6E33: $07
    rlca                                          ; $6E34: $07
    ld [hl], a                                    ; $6E35: $77
    rst RST_38                                    ; $6E36: $FF
    rst RST_38                                    ; $6E37: $FF
    rst RST_38                                    ; $6E38: $FF
    db $FD                                        ; $6E39: $FD
    rst RST_10                                    ; $6E3A: $D7
    rst RST_38                                    ; $6E3B: $FF
    rlca                                          ; $6E3C: $07
    rlca                                          ; $6E3D: $07
    rst RST_38                                    ; $6E3E: $FF
    inc bc                                        ; $6E3F: $03
    rst RST_38                                    ; $6E40: $FF
    db $FD                                        ; $6E41: $FD

jr_030_6E42:
    inc [hl]                                      ; $6E42: $34
    cp $5F                                        ; $6E43: $FE $5F
    inc a                                         ; $6E45: $3C
    db $FC                                        ; $6E46: $FC
    ld a, h                                       ; $6E47: $7C
    call z, $0707                                 ; $6E48: $CC $07 $07
    rlca                                          ; $6E4B: $07
    ld [hl], a                                    ; $6E4C: $77
    push de                                       ; $6E4D: $D5
    rst RST_38                                    ; $6E4E: $FF
    rst RST_38                                    ; $6E4F: $FF
    db $10                                        ; $6E50: $10
    db $EC                                        ; $6E51: $EC
    ld [$0CBC], sp                                ; $6E52: $08 $BC $0C
    inc b                                         ; $6E55: $04
    cp a                                          ; $6E56: $BF
    sbc h                                         ; $6E57: $9C
    ld hl, sp+$07                                 ; $6E58: $F8 $07
    rlca                                          ; $6E5A: $07
    rlca                                          ; $6E5B: $07
    ld [hl], a                                    ; $6E5C: $77
    rst RST_38                                    ; $6E5D: $FF
    ld hl, sp-$06                                 ; $6E5E: $F8 $FA
    nop                                           ; $6E60: $00
    ld hl, sp+$00                                 ; $6E61: $F8 $00
    ld hl, sp+$00                                 ; $6E63: $F8 $00
    ld e, $FC                                     ; $6E65: $1E $FC
    ld a, $BF                                     ; $6E67: $3E $BF
    db $FC                                        ; $6E69: $FC
    ld a, [hl]                                    ; $6E6A: $7E
    call z, $0707                                 ; $6E6B: $CC $07 $07
    rlca                                          ; $6E6E: $07
    ld [hl], a                                    ; $6E6F: $77
    rst RST_38                                    ; $6E70: $FF
    db $D3                                        ; $6E71: $D3
    rst RST_38                                    ; $6E72: $FF
    rst RST_38                                    ; $6E73: $FF
    inc b                                         ; $6E74: $04
    call nz, $FC02                                ; $6E75: $C4 $02 $FC
    rlca                                          ; $6E78: $07
    rlca                                          ; $6E79: $07
    and c                                         ; $6E7A: $A1
    rlca                                          ; $6E7B: $07
    add d                                         ; $6E7C: $82
    ld h, h                                       ; $6E7D: $64
    jr z, jr_030_6EC4                             ; $6E7E: $28 $44

    ld l, h                                       ; $6E80: $6C
    jr c, jr_030_6EE7                             ; $6E81: $38 $64

    rst RST_38                                    ; $6E83: $FF
    inc b                                         ; $6E84: $04
    dec c                                         ; $6E85: $0D
    dec e                                         ; $6E86: $1D
    dec l                                         ; $6E87: $2D
    dec b                                         ; $6E88: $05
    inc bc                                        ; $6E89: $03
    inc bc                                        ; $6E8A: $03
    inc bc                                        ; $6E8B: $03
    di                                            ; $6E8C: $F3
    inc bc                                        ; $6E8D: $03
    ld h, h                                       ; $6E8E: $64
    ld a, [bc]                                    ; $6E8F: $0A
    ld [hl], l                                    ; $6E90: $75
    cp d                                          ; $6E91: $BA
    ld a, h                                       ; $6E92: $7C
    dec c                                         ; $6E93: $0D
    ld e, $FF                                     ; $6E94: $1E $FF
    scf                                           ; $6E96: $37
    inc bc                                        ; $6E97: $03
    inc bc                                        ; $6E98: $03
    inc bc                                        ; $6E99: $03
    inc bc                                        ; $6E9A: $03
    nop                                           ; $6E9B: $00
    ret c                                         ; $6E9C: $D8

    ld d, l                                       ; $6E9D: $55
    rst RST_38                                    ; $6E9E: $FF
    add sp, $70                                   ; $6E9F: $E8 $70
    ld l, l                                       ; $6EA1: $6D
    ld sp, hl                                     ; $6EA2: $F9
    inc sp                                        ; $6EA3: $33
    inc bc                                        ; $6EA4: $03
    inc bc                                        ; $6EA5: $03
    inc bc                                        ; $6EA6: $03
    rst RST_30                                    ; $6EA7: $F7
    inc bc                                        ; $6EA8: $03
    ld [bc], a                                    ; $6EA9: $02
    adc $08                                       ; $6EAA: $CE $08
    ld d, h                                       ; $6EAC: $54
    rst RST_30                                    ; $6EAD: $F7
    inc sp                                        ; $6EAE: $33
    inc bc                                        ; $6EAF: $03
    ld a, [$0303]                                 ; $6EB0: $FA $03 $03
    inc bc                                        ; $6EB3: $03
    inc bc                                        ; $6EB4: $03
    nop                                           ; $6EB5: $00
    inc d                                         ; $6EB6: $14
    add hl, bc                                    ; $6EB7: $09
    ld [$0EFF], sp                                ; $6EB8: $08 $FF $0E
    inc bc                                        ; $6EBB: $03
    inc bc                                        ; $6EBC: $03
    inc bc                                        ; $6EBD: $03
    inc bc                                        ; $6EBE: $03
    inc bc                                        ; $6EBF: $03
    inc bc                                        ; $6EC0: $03
    ld [hl], c                                    ; $6EC1: $71
    rst RST_38                                    ; $6EC2: $FF
    add l                                         ; $6EC3: $85

jr_030_6EC4:
    ld [$030D], sp                                ; $6EC4: $08 $0D $03
    inc bc                                        ; $6EC7: $03
    inc bc                                        ; $6EC8: $03
    inc bc                                        ; $6EC9: $03
    inc bc                                        ; $6ECA: $03
    rst RST_38                                    ; $6ECB: $FF
    inc bc                                        ; $6ECC: $03
    inc bc                                        ; $6ECD: $03
    ld [hl], a                                    ; $6ECE: $77
    inc bc                                        ; $6ECF: $03
    inc bc                                        ; $6ED0: $03
    inc bc                                        ; $6ED1: $03
    inc bc                                        ; $6ED2: $03
    inc bc                                        ; $6ED3: $03
    rst RST_38                                    ; $6ED4: $FF
    inc bc                                        ; $6ED5: $03
    inc bc                                        ; $6ED6: $03
    inc bc                                        ; $6ED7: $03
    inc bc                                        ; $6ED8: $03
    inc bc                                        ; $6ED9: $03
    inc bc                                        ; $6EDA: $03
    inc bc                                        ; $6EDB: $03
    inc bc                                        ; $6EDC: $03
    add b                                         ; $6EDD: $80
    ld bc, $4070                                  ; $6EDE: $01 $70 $40
    ld [hl], l                                    ; $6EE1: $75
    nop                                           ; $6EE2: $00
    rlca                                          ; $6EE3: $07
    rlca                                          ; $6EE4: $07
    inc b                                         ; $6EE5: $04
    rrca                                          ; $6EE6: $0F

jr_030_6EE7:
    nop                                           ; $6EE7: $00
    stop                                          ; $6EE8: $10 $00
    ld e, d                                       ; $6EEA: $5A
    daa                                           ; $6EEB: $27
    nop                                           ; $6EEC: $00
    dec l                                         ; $6EED: $2D
    ld [bc], a                                    ; $6EEE: $02
    ld a, l                                       ; $6EEF: $7D
    add b                                         ; $6EF0: $80
    nop                                           ; $6EF1: $00
    ld b, c                                       ; $6EF2: $41
    xor [hl]                                      ; $6EF3: $AE
    nop                                           ; $6EF4: $00
    inc hl                                        ; $6EF5: $23
    nop                                           ; $6EF6: $00
    and c                                         ; $6EF7: $A1
    ld [bc], a                                    ; $6EF8: $02
    ld a, l                                       ; $6EF9: $7D
    ld bc, $B531                                  ; $6EFA: $01 $31 $B5
    nop                                           ; $6EFD: $00
    ld c, d                                       ; $6EFE: $4A
    inc b                                         ; $6EFF: $04
    ld a, a                                       ; $6F00: $7F
    adc h                                         ; $6F01: $8C
    nop                                           ; $6F02: $00
    ld d, d                                       ; $6F03: $52
    inc b                                         ; $6F04: $04
    xor l                                         ; $6F05: $AD
    ld a, a                                       ; $6F06: $7F
    rrca                                          ; $6F07: $0F
    nop                                           ; $6F08: $00
    ld [bc], a                                    ; $6F09: $02
    inc b                                         ; $6F0A: $04
    ld a, a                                       ; $6F0B: $7F
    add b                                         ; $6F0C: $80
    nop                                           ; $6F0D: $00
    xor [hl]                                      ; $6F0E: $AE
    add hl, de                                    ; $6F0F: $19
    ld d, [hl]                                    ; $6F10: $56
    nop                                           ; $6F11: $00
    ld h, c                                       ; $6F12: $61
    nop                                           ; $6F13: $00
    ld a, a                                       ; $6F14: $7F
    inc bc                                        ; $6F15: $03
    ld h, e                                       ; $6F16: $63
    or l                                          ; $6F17: $B5
    nop                                           ; $6F18: $00
    ld d, h                                       ; $6F19: $54
    nop                                           ; $6F1A: $00
    ld e, a                                       ; $6F1B: $5F
    jr nc, jr_030_6F1E                            ; $6F1C: $30 $00

jr_030_6F1E:
    jr nz, jr_030_6F20                            ; $6F1E: $20 $00

jr_030_6F20:
    ld e, l                                       ; $6F20: $5D
    ld [hl+], a                                   ; $6F21: $22
    nop                                           ; $6F22: $00
    ld [hl], l                                    ; $6F23: $75
    nop                                           ; $6F24: $00
    ld a, a                                       ; $6F25: $7F
    inc bc                                        ; $6F26: $03
    ld d, a                                       ; $6F27: $57
    nop                                           ; $6F28: $00
    ld [hl], l                                    ; $6F29: $75
    ld h, l                                       ; $6F2A: $65
    nop                                           ; $6F2B: $00
    ld e, a                                       ; $6F2C: $5F
    inc bc                                        ; $6F2D: $03
    adc c                                         ; $6F2E: $89
    nop                                           ; $6F2F: $00
    ld d, l                                       ; $6F30: $55
    nop                                           ; $6F31: $00
    xor d                                         ; $6F32: $AA
    ld e, a                                       ; $6F33: $5F
    inc bc                                        ; $6F34: $03
    nop                                           ; $6F35: $00
    ld [bc], a                                    ; $6F36: $02
    nop                                           ; $6F37: $00
    ld b, d                                       ; $6F38: $42
    nop                                           ; $6F39: $00
    add d                                         ; $6F3A: $82
    push de                                       ; $6F3B: $D5
    nop                                           ; $6F3C: $00
    ld a, a                                       ; $6F3D: $7F
    add b                                         ; $6F3E: $80
    nop                                           ; $6F3F: $00
    ld b, b                                       ; $6F40: $40
    nop                                           ; $6F41: $00
    ld d, h                                       ; $6F42: $54
    nop                                           ; $6F43: $00
    ld l, d                                       ; $6F44: $6A
    ld e, c                                       ; $6F45: $59
    nop                                           ; $6F46: $00
    ld a, a                                       ; $6F47: $7F
    inc b                                         ; $6F48: $04
    ld [bc], a                                    ; $6F49: $02
    adc l                                         ; $6F4A: $8D
    nop                                           ; $6F4B: $00
    ld d, l                                       ; $6F4C: $55
    db $EB                                        ; $6F4D: $EB
    nop                                           ; $6F4E: $00
    ld a, a                                       ; $6F4F: $7F
    inc bc                                        ; $6F50: $03
    ld c, l                                       ; $6F51: $4D
    nop                                           ; $6F52: $00
    ld d, b                                       ; $6F53: $50
    nop                                           ; $6F54: $00
    ld e, a                                       ; $6F55: $5F
    ld d, a                                       ; $6F56: $57
    sub b                                         ; $6F57: $90
    ld [bc], a                                    ; $6F58: $02
    jp nz, $9500                                  ; $6F59: $C2 $00 $95

    nop                                           ; $6F5C: $00
    ld a, a                                       ; $6F5D: $7F
    rlca                                          ; $6F5E: $07
    ld d, l                                       ; $6F5F: $55
    inc l                                         ; $6F60: $2C
    nop                                           ; $6F61: $00
    dec l                                         ; $6F62: $2D
    ld [bc], a                                    ; $6F63: $02
    daa                                           ; $6F64: $27
    nop                                           ; $6F65: $00
    stop                                          ; $6F66: $10 $00
    ld l, e                                       ; $6F68: $6B
    rrca                                          ; $6F69: $0F
    nop                                           ; $6F6A: $00
    ld a, e                                       ; $6F6B: $7B
    ld hl, $A100                                  ; $6F6C: $21 $00 $A1
    ld [bc], a                                    ; $6F6F: $02
    add hl, hl                                    ; $6F70: $29
    ld e, d                                       ; $6F71: $5A
    ld b, c                                       ; $6F72: $41
    nop                                           ; $6F73: $00
    add b                                         ; $6F74: $80
    nop                                           ; $6F75: $00
    ld a, e                                       ; $6F76: $7B
    ld c, d                                       ; $6F77: $4A
    nop                                           ; $6F78: $00
    add hl, sp                                    ; $6F79: $39
    xor [hl]                                      ; $6F7A: $AE
    nop                                           ; $6F7B: $00
    ld [$7302], sp                                ; $6F7C: $08 $02 $73
    nop                                           ; $6F7F: $00
    ld l, e                                       ; $6F80: $6B
    ld bc, $AB4C                                  ; $6F81: $01 $4C $AB
    nop                                           ; $6F84: $00
    jp nc, $5200                                  ; $6F85: $D2 $00 $52

    ld [bc], a                                    ; $6F88: $02
    adc h                                         ; $6F89: $8C
    nop                                           ; $6F8A: $00
    ld a, l                                       ; $6F8B: $7D
    ld [hl], l                                    ; $6F8C: $75
    ld [bc], a                                    ; $6F8D: $02
    rlca                                          ; $6F8E: $07
    nop                                           ; $6F8F: $00
    ld a, l                                       ; $6F90: $7D
    ld b, e                                       ; $6F91: $43
    nop                                           ; $6F92: $00
    ld b, l                                       ; $6F93: $45
    inc b                                         ; $6F94: $04
    push de                                       ; $6F95: $D5
    add hl, sp                                    ; $6F96: $39
    ld a, l                                       ; $6F97: $7D
    ld d, h                                       ; $6F98: $54
    nop                                           ; $6F99: $00
    ld d, d                                       ; $6F9A: $52
    nop                                           ; $6F9B: $00
    ld d, c                                       ; $6F9C: $51
    ld [bc], a                                    ; $6F9D: $02
    ld l, e                                       ; $6F9E: $6B
    ld d, [hl]                                    ; $6F9F: $56
    nop                                           ; $6FA0: $00
    ld a, l                                       ; $6FA1: $7D
    dec h                                         ; $6FA2: $25
    ld b, $22                                     ; $6FA3: $06 $22
    nop                                           ; $6FA5: $00
    ld a, l                                       ; $6FA6: $7D
    ld [hl], l                                    ; $6FA7: $75
    ld b, l                                       ; $6FA8: $45
    rlca                                          ; $6FA9: $07
    nop                                           ; $6FAA: $00
    ld a, l                                       ; $6FAB: $7D
    ld d, l                                       ; $6FAC: $55
    nop                                           ; $6FAD: $00
    ld e, l                                       ; $6FAE: $5D
    nop                                           ; $6FAF: $00
    ld e, d                                       ; $6FB0: $5A
    ld d, c                                       ; $6FB1: $51
    ld [bc], a                                    ; $6FB2: $02
    ld c, l                                       ; $6FB3: $4D
    nop                                           ; $6FB4: $00
    ld a, l                                       ; $6FB5: $7D
    ld [bc], a                                    ; $6FB6: $02
    nop                                           ; $6FB7: $00
    inc bc                                        ; $6FB8: $03
    ld a, [$1900]                                 ; $6FB9: $FA $00 $19
    inc bc                                        ; $6FBC: $03
    ld a, l                                       ; $6FBD: $7D
    ret                                           ; $6FBE: $C9


    sub c                                         ; $6FBF: $91
    nop                                           ; $6FC0: $00
    ld de, $02B5                                  ; $6FC1: $11 $B5 $02
    stop                                          ; $6FC4: $10 $00
    ld a, l                                       ; $6FC6: $7D
    ld d, l                                       ; $6FC7: $55
    ld b, $8C                                     ; $6FC8: $06 $8C
    nop                                           ; $6FCA: $00
    xor l                                         ; $6FCB: $AD
    ld a, l                                       ; $6FCC: $7D
    ld d, b                                       ; $6FCD: $50
    ld b, $CC                                     ; $6FCE: $06 $CC
    nop                                           ; $6FD0: $00
    ld a, l                                       ; $6FD1: $7D
    sub l                                         ; $6FD2: $95
    ld b, $7A                                     ; $6FD3: $06 $7A
    jp nc, Jump_030_7D00                          ; $6FD5: $D2 $00 $7D

    rlca                                          ; $6FD8: $07
    inc bc                                        ; $6FD9: $03
    ld h, b                                       ; $6FDA: $60
    nop                                           ; $6FDB: $00
    ld d, b                                       ; $6FDC: $50
    push de                                       ; $6FDD: $D5
    nop                                           ; $6FDE: $00
    ld e, a                                       ; $6FDF: $5F
    ld [hl], b                                    ; $6FE0: $70
    nop                                           ; $6FE1: $00
    add b                                         ; $6FE2: $80
    nop                                           ; $6FE3: $00
    add d                                         ; $6FE4: $82
    nop                                           ; $6FE5: $00
    ld [hl], l                                    ; $6FE6: $75
    add l                                         ; $6FE7: $85
    nop                                           ; $6FE8: $00
    ld a, a                                       ; $6FE9: $7F
    inc bc                                        ; $6FEA: $03
    ld a, c                                       ; $6FEB: $79
    nop                                           ; $6FEC: $00
    ld d, l                                       ; $6FED: $55
    nop                                           ; $6FEE: $00
    rst RST_10                                    ; $6FEF: $D7
    ld e, a                                       ; $6FF0: $5F
    inc bc                                        ; $6FF1: $03
    sbc c                                         ; $6FF2: $99
    nop                                           ; $6FF3: $00
    ld b, l                                       ; $6FF4: $45
    nop                                           ; $6FF5: $00
    ld e, a                                       ; $6FF6: $5F
    inc bc                                        ; $6FF7: $03
    ld e, d                                       ; $6FF8: $5A
    sub h                                         ; $6FF9: $94
    nop                                           ; $6FFA: $00
    ld d, h                                       ; $6FFB: $54
    nop                                           ; $6FFC: $00
    ld e, a                                       ; $6FFD: $5F
    jr nz, jr_030_7002                            ; $6FFE: $20 $02

    inc l                                         ; $7000: $2C
    cp d                                          ; $7001: $BA

jr_030_7002:
    nop                                           ; $7002: $00
    ld a, [hl+]                                   ; $7003: $2A
    nop                                           ; $7004: $00
    ld a, a                                       ; $7005: $7F
    inc bc                                        ; $7006: $03
    ld h, b                                       ; $7007: $60
    nop                                           ; $7008: $00
    add b                                         ; $7009: $80
    db $ED                                        ; $700A: $ED
    nop                                           ; $700B: $00
    ld e, a                                       ; $700C: $5F
    dec b                                         ; $700D: $05
    ld bc, $3D00                                  ; $700E: $01 $00 $3D
    stop                                          ; $7011: $10 $00
    ld e, l                                       ; $7013: $5D
    jr nz, jr_030_7016                            ; $7014: $20 $00

jr_030_7016:
    ld b, b                                       ; $7016: $40
    nop                                           ; $7017: $00
    rst RST_28                                    ; $7018: $EF
    inc bc                                        ; $7019: $03
    rlca                                          ; $701A: $07
    nop                                           ; $701B: $00
    db $ED                                        ; $701C: $ED
    reti                                          ; $701D: $D9


    inc bc                                        ; $701E: $03
    ld a, a                                       ; $701F: $7F
    pop bc                                        ; $7020: $C1
    nop                                           ; $7021: $00
    ld e, c                                       ; $7022: $59
    add hl, de                                    ; $7023: $19
    nop                                           ; $7024: $00
    ld [hl], l                                    ; $7025: $75
    dec b                                         ; $7026: $05
    nop                                           ; $7027: $00
    ld a, a                                       ; $7028: $7F
    inc bc                                        ; $7029: $03
    ld e, c                                       ; $702A: $59
    nop                                           ; $702B: $00
    ld b, l                                       ; $702C: $45
    nop                                           ; $702D: $00
    sub $5F                                       ; $702E: $D6 $5F
    inc bc                                        ; $7030: $03
    ld e, b                                       ; $7031: $58
    nop                                           ; $7032: $00
    add h                                         ; $7033: $84
    nop                                           ; $7034: $00
    ld e, a                                       ; $7035: $5F
    inc e                                         ; $7036: $1C
    xor [hl]                                      ; $7037: $AE
    nop                                           ; $7038: $00
    jr nz, @+$04                                  ; $7039: $20 $02

    ld hl, $7F00                                  ; $703B: $21 $00 $7F
    inc bc                                        ; $703E: $03
    add b                                         ; $703F: $80
    or l                                          ; $7040: $B5
    nop                                           ; $7041: $00
    ld b, b                                       ; $7042: $40
    nop                                           ; $7043: $00
    ld e, a                                       ; $7044: $5F
    db $10                                        ; $7045: $10
    ld b, $50                                     ; $7046: $06 $50
    rlca                                          ; $7048: $07
    sub $00                                       ; $7049: $D6 $00
    cp l                                          ; $704B: $BD
    add l                                         ; $704C: $85
    ld b, $72                                     ; $704D: $06 $72
    nop                                           ; $704F: $00
    ld a, l                                       ; $7050: $7D
    ld d, l                                       ; $7051: $55
    db $DB                                        ; $7052: $DB
    rlca                                          ; $7053: $07
    nop                                           ; $7054: $00
    ld bc, $7902                                  ; $7055: $01 $02 $79
    ld c, l                                       ; $7058: $4D
    nop                                           ; $7059: $00
    ld e, e                                       ; $705A: $5B
    ld e, d                                       ; $705B: $5A
    sub l                                         ; $705C: $95
    nop                                           ; $705D: $00
    dec c                                         ; $705E: $0D
    nop                                           ; $705F: $00
    db $FD                                        ; $7060: $FD
    ld d, h                                       ; $7061: $54
    inc b                                         ; $7062: $04
    ld c, h                                       ; $7063: $4C
    xor e                                         ; $7064: $AB
    nop                                           ; $7065: $00
    ld b, h                                       ; $7066: $44
    nop                                           ; $7067: $00
    inc b                                         ; $7068: $04
    nop                                           ; $7069: $00
    jr jr_030_706C                                ; $706A: $18 $00

jr_030_706C:
    ld a, c                                       ; $706C: $79
    ld [hl], l                                    ; $706D: $75
    ld a, [hl+]                                   ; $706E: $2A
    rlca                                          ; $706F: $07
    nop                                           ; $7070: $00
    db $FD                                        ; $7071: $FD
    add b                                         ; $7072: $80
    ld b, $64                                     ; $7073: $06 $64
    nop                                           ; $7075: $00
    xor d                                         ; $7076: $AA
    ld a, l                                       ; $7077: $7D
    ld [bc], a                                    ; $7078: $02
    nop                                           ; $7079: $00
    inc b                                         ; $707A: $04
    nop                                           ; $707B: $00
    ld [$1000], sp                                ; $707C: $08 $00 $10
    xor a                                         ; $707F: $AF
    nop                                           ; $7080: $00
    jr nz, jr_030_7083                            ; $7081: $20 $00

jr_030_7083:
    ld b, b                                       ; $7083: $40
    nop                                           ; $7084: $00
    adc l                                         ; $7085: $8D
    rlca                                          ; $7086: $07
    dec b                                         ; $7087: $05
    ld [hl], l                                    ; $7088: $75
    ld bc, $0007                                  ; $7089: $01 $07 $00
    ld a, l                                       ; $708C: $7D
    dec c                                         ; $708D: $0D
    nop                                           ; $708E: $00
    dec d                                         ; $708F: $15
    inc b                                         ; $7090: $04
    push de                                       ; $7091: $D5
    add hl, sp                                    ; $7092: $39
    ld a, l                                       ; $7093: $7D
    ld c, l                                       ; $7094: $4D
    nop                                           ; $7095: $00
    sub l                                         ; $7096: $95
    nop                                           ; $7097: $00
    ld d, l                                       ; $7098: $55
    ld [bc], a                                    ; $7099: $02
    rst RST_10                                    ; $709A: $D7
    add hl, sp                                    ; $709B: $39
    ld a, l                                       ; $709C: $7D
    inc c                                         ; $709D: $0C
    nop                                           ; $709E: $00
    inc d                                         ; $709F: $14
    inc b                                         ; $70A0: $04
    add hl, sp                                    ; $70A1: $39
    ld a, l                                       ; $70A2: $7D
    ld e, d                                       ; $70A3: $5A
    ld hl, $1C06                                  ; $70A4: $21 $06 $1C
    nop                                           ; $70A7: $00
    ld a, l                                       ; $70A8: $7D
    ld b, b                                       ; $70A9: $40
    ld b, $89                                     ; $70AA: $06 $89
    jp c, Jump_030_5900                           ; $70AC: $DA $00 $59

    ld bc, $1900                                  ; $70AF: $01 $00 $19
    db $10                                        ; $70B2: $10
    ld b, $9E                                     ; $70B3: $06 $9E
    cp d                                          ; $70B5: $BA
    nop                                           ; $70B6: $00
    add b                                         ; $70B7: $80
    nop                                           ; $70B8: $00
    ei                                            ; $70B9: $FB
    rlca                                          ; $70BA: $07
    ld [bc], a                                    ; $70BB: $02
    nop                                           ; $70BC: $00

jr_030_70BD:
    ld b, d                                       ; $70BD: $42
    xor a                                         ; $70BE: $AF
    nop                                           ; $70BF: $00
    ld b, [hl]                                    ; $70C0: $46
    nop                                           ; $70C1: $00
    ld [$7F00], a                                 ; $70C2: $EA $00 $7F
    rlca                                          ; $70C5: $07
    dec b                                         ; $70C6: $05
    ld l, d                                       ; $70C7: $6A
    ld bc, $F900                                  ; $70C8: $01 $00 $F9
    inc b                                         ; $70CB: $04
    nop                                           ; $70CC: $00
    ld [$1000], sp                                ; $70CD: $08 $00 $10
    db $ED                                        ; $70D0: $ED
    nop                                           ; $70D1: $00
    adc a                                         ; $70D2: $8F
    ld bc, $0078                                  ; $70D3: $01 $78 $00
    add hl, de                                    ; $70D6: $19
    db $FC                                        ; $70D7: $FC
    nop                                           ; $70D8: $00
    jp c, $016F                                   ; $70D9: $DA $6F $01

    add c                                         ; $70DC: $81
    inc b                                         ; $70DD: $04
    ld l, a                                       ; $70DE: $6F
    add hl, hl                                    ; $70DF: $29
    nop                                           ; $70E0: $00
    jr z, jr_030_70BD                             ; $70E1: $28 $DA

    nop                                           ; $70E3: $00
    add hl, hl                                    ; $70E4: $29
    ldh a, [rP1]                                  ; $70E5: $F0 $00
    ld l, l                                       ; $70E7: $6D
    stop                                          ; $70E8: $10 $00
    rst RST_38                                    ; $70EA: $FF
    sub $00                                       ; $70EB: $D6 $00
    add hl, de                                    ; $70ED: $19
    cp $00                                        ; $70EE: $FE $00
    sub d                                         ; $70F0: $92
    nop                                           ; $70F1: $00
    ld a, l                                       ; $70F2: $7D
    inc b                                         ; $70F3: $04
    or l                                          ; $70F4: $B5
    nop                                           ; $70F5: $00
    ld a, a                                       ; $70F6: $7F
    nop                                           ; $70F7: $00
    add hl, hl                                    ; $70F8: $29
    ccf                                           ; $70F9: $3F
    nop                                           ; $70FA: $00
    jr nz, jr_030_70FD                            ; $70FB: $20 $00

jr_030_70FD:
    db $DB                                        ; $70FD: $DB
    ld a, l                                       ; $70FE: $7D
    ld bc, $00C0                                  ; $70FF: $01 $C0 $00
    add hl, de                                    ; $7102: $19
    add b                                         ; $7103: $80
    ld [bc], a                                    ; $7104: $02
    ld l, l                                       ; $7105: $6D

jr_030_7106:
    ld d, l                                       ; $7106: $55
    ld bc, $0200                                  ; $7107: $01 $00 $02
    nop                                           ; $710A: $00
    inc b                                         ; $710B: $04
    nop                                           ; $710C: $00
    ld [$6E00], sp                                ; $710D: $08 $00 $6E
    stop                                          ; $7110: $10 $00
    rst RST_38                                    ; $7112: $FF
    inc bc                                        ; $7113: $03
    nop                                           ; $7114: $00
    cpl                                           ; $7115: $2F
    inc bc                                        ; $7116: $03
    ld b, h                                       ; $7117: $44
    xor e                                         ; $7118: $AB
    nop                                           ; $7119: $00
    rst RST_38                                    ; $711A: $FF
    nop                                           ; $711B: $00
    ld d, h                                       ; $711C: $54
    nop                                           ; $711D: $00
    cp $00                                        ; $711E: $FE $00
    add hl, hl                                    ; $7120: $29
    xor e                                         ; $7121: $AB
    ld a, l                                       ; $7122: $7D
    ld bc, $8000                                  ; $7123: $01 $00 $80
    nop                                           ; $7126: $00
    rra                                           ; $7127: $1F
    nop                                           ; $7128: $00
    add hl, hl                                    ; $7129: $29
    ld [hl], a                                    ; $712A: $77
    add c                                         ; $712B: $81
    nop                                           ; $712C: $00
    ld l, e                                       ; $712D: $6B
    ld e, c                                       ; $712E: $59
    ld b, b                                       ; $712F: $40
    nop                                           ; $7130: $00
    add hl, de                                    ; $7131: $19
    add hl, sp                                    ; $7132: $39
    ld e, e                                       ; $7133: $5B
    ccf                                           ; $7134: $3F
    nop                                           ; $7135: $00
    ld hl, $7B00                                  ; $7136: $21 $00 $7B
    ld [bc], a                                    ; $7139: $02
    ld [bc], a                                    ; $713A: $02
    add hl, hl                                    ; $713B: $29
    ld e, l                                       ; $713C: $5D
    ld a, $00                                     ; $713D: $3E $00
    ld [hl+], a                                   ; $713F: $22
    ld [bc], a                                    ; $7140: $02
    db $FD                                        ; $7141: $FD
    db $EB                                        ; $7142: $EB
    ld a, l                                       ; $7143: $7D
    nop                                           ; $7144: $00
    ld d, a                                       ; $7145: $57
    ld b, h                                       ; $7146: $44
    ld [bc], a                                    ; $7147: $02
    ld c, d                                       ; $7148: $4A
    ld b, $66                                     ; $7149: $06 $66
    nop                                           ; $714B: $00
    rlc a                                         ; $714C: $CB $07
    ld d, [hl]                                    ; $714E: $56
    ld bc, $4200                                  ; $714F: $01 $00 $42
    nop                                           ; $7152: $00
    inc b                                         ; $7153: $04
    nop                                           ; $7154: $00
    ld c, e                                       ; $7155: $4B
    jr nz, jr_030_7106                            ; $7156: $20 $AE

    nop                                           ; $7158: $00
    ld b, b                                       ; $7159: $40
    nop                                           ; $715A: $00
    add b                                         ; $715B: $80
    nop                                           ; $715C: $00
    cp a                                          ; $715D: $BF
    ld bc, $EA10                                  ; $715E: $01 $10 $EA
    ld b, $BB                                     ; $7161: $06 $BB
    ld a, e                                       ; $7163: $7B
    add c                                         ; $7164: $81
    ld [bc], a                                    ; $7165: $02
    adc c                                         ; $7166: $89
    nop                                           ; $7167: $00
    sub c                                         ; $7168: $91
    xor a                                         ; $7169: $AF
    nop                                           ; $716A: $00
    and c                                         ; $716B: $A1
    nop                                           ; $716C: $00
    ret nz                                        ; $716D: $C0

    nop                                           ; $716E: $00
    ld a, e                                       ; $716F: $7B
    rlca                                          ; $7170: $07
    ld bc, $F16B                                  ; $7171: $01 $6B $F1
    nop                                           ; $7174: $00
    dec hl                                        ; $7175: $2B
    cp $00                                        ; $7176: $FE $00
    sub d                                         ; $7178: $92
    nop                                           ; $7179: $00
    add hl, de                                    ; $717A: $19
    ld l, l                                       ; $717B: $6D
    ld d, h                                       ; $717C: $54
    nop                                           ; $717D: $00
    add hl, hl                                    ; $717E: $29
    ld de, $7B00                                  ; $717F: $11 $00 $7B
    jr nz, jr_030_7184                            ; $7182: $20 $00

jr_030_7184:
    ld d, l                                       ; $7184: $55
    ccf                                           ; $7185: $3F
    nop                                           ; $7186: $00
    inc b                                         ; $7187: $04
    nop                                           ; $7188: $00
    dec d                                         ; $7189: $15
    nop                                           ; $718A: $00
    inc d                                         ; $718B: $14
    nop                                           ; $718C: $00
    ld l, l                                       ; $718D: $6D
    inc h                                         ; $718E: $24
    nop                                           ; $718F: $00
    ld a, e                                       ; $7190: $7B
    add b                                         ; $7191: $80
    ld [bc], a                                    ; $7192: $02
    add hl, hl                                    ; $7193: $29
    ld bc, $5B00                                  ; $7194: $01 $00 $5B
    add d                                         ; $7197: $82
    nop                                           ; $7198: $00
    add h                                         ; $7199: $84
    nop                                           ; $719A: $00
    db $FD                                        ; $719B: $FD
    ld b, b                                       ; $719C: $40
    nop                                           ; $719D: $00
    adc e                                         ; $719E: $8B
    or $07                                        ; $719F: $F6 $07
    inc bc                                        ; $71A1: $03
    jp hl                                         ; $71A2: $E9


    add hl, de                                    ; $71A3: $19
    inc bc                                        ; $71A4: $03
    nop                                           ; $71A5: $00
    ld e, l                                       ; $71A6: $5D
    add d                                         ; $71A7: $82
    xor e                                         ; $71A8: $AB
    nop                                           ; $71A9: $00
    cp $00                                        ; $71AA: $FE $00
    rst RST_38                                    ; $71AC: $FF
    nop                                           ; $71AD: $00
    ld c, b                                       ; $71AE: $48
    nop                                           ; $71AF: $00
    add hl, de                                    ; $71B0: $19
    ld a, e                                       ; $71B1: $7B
    ld [$DD00], sp                                ; $71B2: $08 $00 $DD
    dec b                                         ; $71B5: $05
    cp c                                          ; $71B6: $B9
    inc c                                         ; $71B7: $0C
    nop                                           ; $71B8: $00
    ld a, e                                       ; $71B9: $7B
    ld e, l                                       ; $71BA: $5D
    ld hl, $3F06                                  ; $71BB: $21 $06 $3F
    nop                                           ; $71BE: $00
    ld l, e                                       ; $71BF: $6B
    ld bc, $0052                                  ; $71C0: $01 $52 $00
    ld d, l                                       ; $71C3: $55
    ld a, [bc]                                    ; $71C4: $0A
    nop                                           ; $71C5: $00
    ld b, $00                                     ; $71C6: $06 $00
    ld [bc], a                                    ; $71C8: $02
    nop                                           ; $71C9: $00
    inc b                                         ; $71CA: $04
    nop                                           ; $71CB: $00
    ld l, [hl]                                    ; $71CC: $6E
    ld a, b                                       ; $71CD: $78
    nop                                           ; $71CE: $00
    ld a, e                                       ; $71CF: $7B
    add l                                         ; $71D0: $85
    nop                                           ; $71D1: $00
    ld c, c                                       ; $71D2: $49
    inc bc                                        ; $71D3: $03
    ld [$00BD], sp                                ; $71D4: $08 $BD $00
    pop af                                        ; $71D7: $F1
    nop                                           ; $71D8: $00
    ld a, e                                       ; $71D9: $7B
    rlca                                          ; $71DA: $07
    ld bc, $0080                                  ; $71DB: $01 $80 $00
    ld a, d                                       ; $71DE: $7A
    ld c, b                                       ; $71DF: $48
    nop                                           ; $71E0: $00
    xor c                                         ; $71E1: $A9
    ld l, a                                       ; $71E2: $6F
    inc bc                                        ; $71E3: $03
    jr c, jr_030_71E6                             ; $71E4: $38 $00

jr_030_71E6:
    inc b                                         ; $71E6: $04
    db $ED                                        ; $71E7: $ED
    nop                                           ; $71E8: $00
    ld e, a                                       ; $71E9: $5F
    inc bc                                        ; $71EA: $03
    add b                                         ; $71EB: $80
    ld [bc], a                                    ; $71EC: $02
    ld c, l                                       ; $71ED: $4D
    ld [bc], a                                    ; $71EE: $02
    nop                                           ; $71EF: $00
    xor e                                         ; $71F0: $AB
    ret                                           ; $71F1: $C9


    ld [$1000], sp                                ; $71F2: $08 $00 $10
    nop                                           ; $71F5: $00
    jr nz, jr_030_71F8                            ; $71F6: $20 $00

jr_030_71F8:
    rst RST_18                                    ; $71F8: $DF
    ld a, e                                       ; $71F9: $7B
    rlca                                          ; $71FA: $07
    nop                                           ; $71FB: $00
    adc c                                         ; $71FC: $89
    inc bc                                        ; $71FD: $03
    ld a, a                                       ; $71FE: $7F
    ldh a, [rP1]                                  ; $71FF: $F0 $00
    jp hl                                         ; $7201: $E9


    ld [hl], l                                    ; $7202: $75
    inc de                                        ; $7203: $13
    nop                                           ; $7204: $00
    add hl, de                                    ; $7205: $19
    ld l, l                                       ; $7206: $6D
    jr nz, jr_030_720D                            ; $7207: $20 $04

    cp $00                                        ; $7209: $FE $00
    ld [hl], l                                    ; $720B: $75
    ld [hl], b                                    ; $720C: $70

jr_030_720D:
    nop                                           ; $720D: $00
    rst RST_38                                    ; $720E: $FF
    ld bc, $007E                                  ; $720F: $01 $7E $00
    ld [bc], a                                    ; $7212: $02
    nop                                           ; $7213: $00
    ld l, d                                       ; $7214: $6A
    ld a, [bc]                                    ; $7215: $0A
    nop                                           ; $7216: $00
    ld e, l                                       ; $7217: $5D
    inc d                                         ; $7218: $14
    ld [bc], a                                    ; $7219: $02
    ld b, c                                       ; $721A: $41
    nop                                           ; $721B: $00
    ld b, b                                       ; $721C: $40
    ld [$EF02], a                                 ; $721D: $EA $02 $EF
    ld bc, $0083                                  ; $7220: $01 $83 $00
    ld c, b                                       ; $7223: $48
    nop                                           ; $7224: $00
    ld [$00EA], sp                                ; $7225: $08 $EA $00
    ld l, a                                       ; $7228: $6F
    ld bc, $00E7                                  ; $7229: $01 $E7 $00
    jr nz, jr_030_722E                            ; $722C: $20 $00

jr_030_722E:
    cpl                                           ; $722E: $2F
    ld [$6F00], a                                 ; $722F: $EA $00 $6F
    ld bc, $0084                                  ; $7232: $01 $84 $00
    inc b                                         ; $7235: $04
    nop                                           ; $7236: $00
    ret z                                         ; $7237: $C8

    db $DB                                        ; $7238: $DB
    nop                                           ; $7239: $00
    ld c, e                                       ; $723A: $4B
    dec b                                         ; $723B: $05
    ld [bc], a                                    ; $723C: $02
    add hl, hl                                    ; $723D: $29
    ld a, h                                       ; $723E: $7C
    nop                                           ; $723F: $00
    ld a, c                                       ; $7240: $79
    cp $01                                        ; $7241: $FE $01
    rst RST_28                                    ; $7243: $EF
    rlca                                          ; $7244: $07
    rlca                                          ; $7245: $07
    rlca                                          ; $7246: $07
    rlca                                          ; $7247: $07
    rlca                                          ; $7248: $07
    adc b                                         ; $7249: $88
    xor d                                         ; $724A: $AA
    nop                                           ; $724B: $00
    ld c, e                                       ; $724C: $4B
    nop                                           ; $724D: $00
    ld [$0B00], sp                                ; $724E: $08 $00 $0B
    nop                                           ; $7251: $00
    db $10                                        ; $7252: $10
    or l                                          ; $7253: $B5
    nop                                           ; $7254: $00
    db $E3                                        ; $7255: $E3
    nop                                           ; $7256: $00
    adc l                                         ; $7257: $8D
    ret nz                                        ; $7258: $C0

    nop                                           ; $7259: $00
    ld b, b                                       ; $725A: $40
    nop                                           ; $725B: $00
    xor l                                         ; $725C: $AD
    add hl, de                                    ; $725D: $19
    ld b, c                                       ; $725E: $41
    nop                                           ; $725F: $00
    sbc $00                                       ; $7260: $DE $00
    ld l, e                                       ; $7262: $6B
    add b                                         ; $7263: $80
    ld [bc], a                                    ; $7264: $02
    ld d, l                                       ; $7265: $55
    add c                                         ; $7266: $81
    nop                                           ; $7267: $00
    add d                                         ; $7268: $82
    nop                                           ; $7269: $00
    inc b                                         ; $726A: $04
    nop                                           ; $726B: $00
    ld [$FB00], sp                                ; $726C: $08 $00 $FB
    ld a, e                                       ; $726F: $7B
    reti                                          ; $7270: $D9


    ld a, c                                       ; $7271: $79
    dec sp                                        ; $7272: $3B
    rlca                                          ; $7273: $07
    rlca                                          ; $7274: $07
    nop                                           ; $7275: $00
    ret                                           ; $7276: $C9


    ld [$3903], a                                 ; $7277: $EA $03 $39
    ld a, l                                       ; $727A: $7D
    ldh a, [rP1]                                  ; $727B: $F0 $00
    ld de, $1200                                  ; $727D: $11 $00 $12
    cp d                                          ; $7280: $BA
    nop                                           ; $7281: $00
    inc d                                         ; $7282: $14
    nop                                           ; $7283: $00
    add hl, sp                                    ; $7284: $39
    ld a, l                                       ; $7285: $7D
    xor b                                         ; $7286: $A8
    nop                                           ; $7287: $00
    inc h                                         ; $7288: $24
    xor e                                         ; $7289: $AB
    nop                                           ; $728A: $00
    ld [hl+], a                                   ; $728B: $22
    nop                                           ; $728C: $00
    ld sp, hl                                     ; $728D: $F9
    nop                                           ; $728E: $00
    jr nz, jr_030_7293                            ; $728F: $20 $02

    ld a, e                                       ; $7291: $7B
    ld d, [hl]                                    ; $7292: $56

jr_030_7293:
    inc c                                         ; $7293: $0C
    nop                                           ; $7294: $00
    ld [$1002], sp                                ; $7295: $08 $02 $10
    ld [bc], a                                    ; $7298: $02
    ld a, l                                       ; $7299: $7D
    ld h, c                                       ; $729A: $61
    xor d                                         ; $729B: $AA
    nop                                           ; $729C: $00
    ld d, b                                       ; $729D: $50
    nop                                           ; $729E: $00
    ld c, b                                       ; $729F: $48
    nop                                           ; $72A0: $00
    ld b, b                                       ; $72A1: $40
    ld [bc], a                                    ; $72A2: $02
    ld b, c                                       ; $72A3: $41
    sbc $00                                       ; $72A4: $DE $00
    ld a, e                                       ; $72A6: $7B
    adc b                                         ; $72A7: $88
    nop                                           ; $72A8: $00
    ld l, c                                       ; $72A9: $69
    ld sp, hl                                     ; $72AA: $F9
    ld bc, $B711                                  ; $72AB: $01 $11 $B7
    nop                                           ; $72AE: $00
    ldh [c], a                                    ; $72AF: $E2
    nop                                           ; $72B0: $00
    ld a, e                                       ; $72B1: $7B
    ld hl, $B900                                  ; $72B2: $21 $00 $B9
    ld bc, $A157                                  ; $72B5: $01 $57 $A1
    nop                                           ; $72B8: $00
    ld [hl+], a                                   ; $72B9: $22
    nop                                           ; $72BA: $00
    inc h                                         ; $72BB: $24
    nop                                           ; $72BC: $00
    ld a, e                                       ; $72BD: $7B
    ret                                           ; $72BE: $C9


    halt                                          ; $72BF: $76
    stop                                          ; $72C0: $10 $00
    reti                                          ; $72C2: $D9


    inc bc                                        ; $72C3: $03
    rra                                           ; $72C4: $1F
    nop                                           ; $72C5: $00
    ld a, e                                       ; $72C6: $7B
    inc b                                         ; $72C7: $04
    db $ED                                        ; $72C8: $ED
    nop                                           ; $72C9: $00
    adc c                                         ; $72CA: $89
    ld bc, $0014                                  ; $72CB: $01 $14 $00
    jp hl                                         ; $72CE: $E9


    ld b, h                                       ; $72CF: $44
    nop                                           ; $72D0: $00
    cp $7B                                        ; $72D1: $FE $7B
    rlca                                          ; $72D3: $07
    rlca                                          ; $72D4: $07
    rlca                                          ; $72D5: $07
    rlca                                          ; $72D6: $07
    rlca                                          ; $72D7: $07
    rlca                                          ; $72D8: $07
    ld [hl+], a                                   ; $72D9: $22
    nop                                           ; $72DA: $00
    ld a, a                                       ; $72DB: $7F
    nop                                           ; $72DC: $00
    rrca                                          ; $72DD: $0F
    rrca                                          ; $72DE: $0F
    rrca                                          ; $72DF: $0F
    rrca                                          ; $72E0: $0F
    rrca                                          ; $72E1: $0F
    rrca                                          ; $72E2: $0F
    rrca                                          ; $72E3: $0F
    push de                                       ; $72E4: $D5
    rrca                                          ; $72E5: $0F
    rlca                                          ; $72E6: $07
    ld bc, $0210                                  ; $72E7: $01 $10 $02
    db $10                                        ; $72EA: $10
    inc bc                                        ; $72EB: $03
    db $10                                        ; $72EC: $10
    ld [hl], l                                    ; $72ED: $75
    inc b                                         ; $72EE: $04
    ld hl, sp+$0F                                 ; $72EF: $F8 $0F
    rlca                                          ; $72F1: $07
    ld de, $1210                                  ; $72F2: $11 $10 $12
    db $10                                        ; $72F5: $10
    ld e, d                                       ; $72F6: $5A
    inc de                                        ; $72F7: $13
    db $10                                        ; $72F8: $10
    inc d                                         ; $72F9: $14
    ld hl, sp+$07                                 ; $72FA: $F8 $07
    dec b                                         ; $72FC: $05
    db $10                                        ; $72FD: $10
    ld b, $AA                                     ; $72FE: $06 $AA
    db $10                                        ; $7300: $10
    rlca                                          ; $7301: $07
    db $10                                        ; $7302: $10
    ld [$0910], sp                                ; $7303: $08 $10 $09
    db $10                                        ; $7306: $10
    ld a, [bc]                                    ; $7307: $0A
    xor d                                         ; $7308: $AA
    db $10                                        ; $7309: $10
    dec bc                                        ; $730A: $0B
    db $10                                        ; $730B: $10
    inc c                                         ; $730C: $0C
    db $10                                        ; $730D: $10
    dec c                                         ; $730E: $0D
    db $10                                        ; $730F: $10
    ld c, $AA                                     ; $7310: $0E $AA
    db $10                                        ; $7312: $10
    rrca                                          ; $7313: $0F
    db $10                                        ; $7314: $10
    jr nz, jr_030_7327                            ; $7315: $20 $10

    ld hl, $2210                                  ; $7317: $21 $10 $22
    xor d                                         ; $731A: $AA
    db $10                                        ; $731B: $10
    inc hl                                        ; $731C: $23
    db $10                                        ; $731D: $10
    inc h                                         ; $731E: $24
    db $10                                        ; $731F: $10
    dec h                                         ; $7320: $25
    db $10                                        ; $7321: $10
    ld h, $AA                                     ; $7322: $26 $AA
    db $10                                        ; $7324: $10
    daa                                           ; $7325: $27
    db $10                                        ; $7326: $10

jr_030_7327:
    jr z, jr_030_7339                             ; $7327: $28 $10

    dec d                                         ; $7329: $15
    db $10                                        ; $732A: $10
    ld d, $AA                                     ; $732B: $16 $AA
    db $10                                        ; $732D: $10
    rla                                           ; $732E: $17
    db $10                                        ; $732F: $10
    jr jr_030_7342                                ; $7330: $18 $10

    add hl, de                                    ; $7332: $19
    db $10                                        ; $7333: $10
    ld a, [de]                                    ; $7334: $1A
    xor d                                         ; $7335: $AA
    db $10                                        ; $7336: $10
    dec de                                        ; $7337: $1B
    db $10                                        ; $7338: $10

jr_030_7339:
    inc e                                         ; $7339: $1C
    db $10                                        ; $733A: $10
    dec e                                         ; $733B: $1D
    db $10                                        ; $733C: $10
    ld e, $AA                                     ; $733D: $1E $AA
    db $10                                        ; $733F: $10
    rra                                           ; $7340: $1F
    db $10                                        ; $7341: $10

jr_030_7342:
    jr nc, jr_030_7354                            ; $7342: $30 $10

    ld sp, $3210                                  ; $7344: $31 $10 $32
    xor d                                         ; $7347: $AA
    db $10                                        ; $7348: $10
    inc sp                                        ; $7349: $33
    db $10                                        ; $734A: $10
    inc [hl]                                      ; $734B: $34
    db $10                                        ; $734C: $10
    dec [hl]                                      ; $734D: $35
    db $10                                        ; $734E: $10
    ld [hl], $AD                                  ; $734F: $36 $AD
    db $10                                        ; $7351: $10
    scf                                           ; $7352: $37
    db $10                                        ; $7353: $10

jr_030_7354:
    jr c, jr_030_7366                             ; $7354: $38 $10

    add hl, bc                                    ; $7356: $09
    add hl, hl                                    ; $7357: $29
    db $10                                        ; $7358: $10
    ld d, l                                       ; $7359: $55
    ld a, [hl+]                                   ; $735A: $2A
    db $10                                        ; $735B: $10
    dec hl                                        ; $735C: $2B
    db $10                                        ; $735D: $10
    inc l                                         ; $735E: $2C
    db $10                                        ; $735F: $10
    dec l                                         ; $7360: $2D
    db $10                                        ; $7361: $10
    ld d, l                                       ; $7362: $55
    ld l, $10                                     ; $7363: $2E $10
    cpl                                           ; $7365: $2F

jr_030_7366:
    db $10                                        ; $7366: $10
    ld b, b                                       ; $7367: $40
    db $10                                        ; $7368: $10
    ld b, c                                       ; $7369: $41
    db $10                                        ; $736A: $10
    ld [hl], l                                    ; $736B: $75
    ld b, d                                       ; $736C: $42
    db $10                                        ; $736D: $10
    rrca                                          ; $736E: $0F
    inc bc                                        ; $736F: $03
    add hl, sp                                    ; $7370: $39
    db $10                                        ; $7371: $10
    ld a, [hl-]                                   ; $7372: $3A
    db $10                                        ; $7373: $10
    ld d, l                                       ; $7374: $55
    dec sp                                        ; $7375: $3B
    db $10                                        ; $7376: $10
    inc a                                         ; $7377: $3C
    db $10                                        ; $7378: $10
    dec a                                         ; $7379: $3D
    db $10                                        ; $737A: $10
    ld a, $10                                     ; $737B: $3E $10
    ld d, l                                       ; $737D: $55
    ccf                                           ; $737E: $3F
    db $10                                        ; $737F: $10
    ld d, b                                       ; $7380: $50
    db $10                                        ; $7381: $10
    ld d, c                                       ; $7382: $51
    db $10                                        ; $7383: $10
    ld d, d                                       ; $7384: $52
    db $10                                        ; $7385: $10
    push de                                       ; $7386: $D5
    rrca                                          ; $7387: $0F
    rlca                                          ; $7388: $07
    ld b, e                                       ; $7389: $43
    db $10                                        ; $738A: $10
    ld b, h                                       ; $738B: $44
    db $10                                        ; $738C: $10
    ld b, l                                       ; $738D: $45
    db $10                                        ; $738E: $10
    ld d, l                                       ; $738F: $55
    ld b, [hl]                                    ; $7390: $46
    db $10                                        ; $7391: $10
    ld b, a                                       ; $7392: $47
    db $10                                        ; $7393: $10
    ld c, b                                       ; $7394: $48
    db $10                                        ; $7395: $10
    ld c, c                                       ; $7396: $49
    ldh a, [c]                                    ; $7397: $F2
    push de                                       ; $7398: $D5
    rrca                                          ; $7399: $0F
    rlca                                          ; $739A: $07
    ld d, e                                       ; $739B: $53
    db $10                                        ; $739C: $10
    ld d, h                                       ; $739D: $54
    db $10                                        ; $739E: $10
    ld d, l                                       ; $739F: $55
    db $10                                        ; $73A0: $10
    ld d, l                                       ; $73A1: $55
    ld d, [hl]                                    ; $73A2: $56
    db $10                                        ; $73A3: $10
    ld d, a                                       ; $73A4: $57
    db $10                                        ; $73A5: $10
    ld e, b                                       ; $73A6: $58
    db $10                                        ; $73A7: $10
    ld e, c                                       ; $73A8: $59
    ldh a, [c]                                    ; $73A9: $F2
    push de                                       ; $73AA: $D5
    rrca                                          ; $73AB: $0F
    inc bc                                        ; $73AC: $03
    ld c, d                                       ; $73AD: $4A
    db $10                                        ; $73AE: $10
    ld c, e                                       ; $73AF: $4B
    db $10                                        ; $73B0: $10
    ld c, h                                       ; $73B1: $4C
    db $10                                        ; $73B2: $10
    ld d, l                                       ; $73B3: $55
    ld c, l                                       ; $73B4: $4D
    db $10                                        ; $73B5: $10
    ld c, [hl]                                    ; $73B6: $4E
    db $10                                        ; $73B7: $10
    ld c, a                                       ; $73B8: $4F
    db $10                                        ; $73B9: $10
    ld h, b                                       ; $73BA: $60
    db $10                                        ; $73BB: $10
    ld d, a                                       ; $73BC: $57
    ld h, c                                       ; $73BD: $61
    db $10                                        ; $73BE: $10
    ld h, d                                       ; $73BF: $62
    db $10                                        ; $73C0: $10
    ld h, e                                       ; $73C1: $63
    db $10                                        ; $73C2: $10
    rrca                                          ; $73C3: $0F
    inc bc                                        ; $73C4: $03
    ld d, l                                       ; $73C5: $55
    ld e, d                                       ; $73C6: $5A
    db $10                                        ; $73C7: $10
    ld e, e                                       ; $73C8: $5B
    db $10                                        ; $73C9: $10
    ld e, h                                       ; $73CA: $5C
    db $10                                        ; $73CB: $10
    ld e, l                                       ; $73CC: $5D
    db $10                                        ; $73CD: $10
    ld d, l                                       ; $73CE: $55
    ld e, [hl]                                    ; $73CF: $5E
    db $10                                        ; $73D0: $10
    ld e, a                                       ; $73D1: $5F
    db $10                                        ; $73D2: $10
    ld [hl], b                                    ; $73D3: $70
    db $10                                        ; $73D4: $10
    ld [hl], c                                    ; $73D5: $71
    db $10                                        ; $73D6: $10
    ld e, l                                       ; $73D7: $5D
    ld [hl], d                                    ; $73D8: $72
    db $10                                        ; $73D9: $10
    ld [hl], e                                    ; $73DA: $73
    db $10                                        ; $73DB: $10
    rrca                                          ; $73DC: $0F
    inc bc                                        ; $73DD: $03
    ld h, h                                       ; $73DE: $64
    db $10                                        ; $73DF: $10
    ld d, l                                       ; $73E0: $55
    ld h, l                                       ; $73E1: $65
    db $10                                        ; $73E2: $10
    ld h, [hl]                                    ; $73E3: $66
    db $10                                        ; $73E4: $10
    ld h, a                                       ; $73E5: $67
    db $10                                        ; $73E6: $10
    ld l, b                                       ; $73E7: $68
    db $10                                        ; $73E8: $10
    ld d, l                                       ; $73E9: $55
    ld l, c                                       ; $73EA: $69
    db $10                                        ; $73EB: $10
    ld l, d                                       ; $73EC: $6A
    db $10                                        ; $73ED: $10
    ld l, e                                       ; $73EE: $6B
    db $10                                        ; $73EF: $10
    ld l, h                                       ; $73F0: $6C
    db $10                                        ; $73F1: $10
    push de                                       ; $73F2: $D5
    rrca                                          ; $73F3: $0F
    dec b                                         ; $73F4: $05
    ld [hl], h                                    ; $73F5: $74
    db $10                                        ; $73F6: $10
    ld [hl], l                                    ; $73F7: $75
    db $10                                        ; $73F8: $10
    halt                                          ; $73F9: $76
    db $10                                        ; $73FA: $10
    ld d, l                                       ; $73FB: $55
    ld [hl], a                                    ; $73FC: $77
    db $10                                        ; $73FD: $10
    ld a, b                                       ; $73FE: $78
    db $10                                        ; $73FF: $10
    ld a, c                                       ; $7400: $79
    db $10                                        ; $7401: $10
    ld a, d                                       ; $7402: $7A
    db $10                                        ; $7403: $10
    ld e, a                                       ; $7404: $5F
    ld a, e                                       ; $7405: $7B
    db $10                                        ; $7406: $10
    ld a, h                                       ; $7407: $7C
    db $10                                        ; $7408: $10
    rrca                                          ; $7409: $0F
    rrca                                          ; $740A: $0F
    rrca                                          ; $740B: $0F
    rrca                                          ; $740C: $0F
    ld hl, sp+$0F                                 ; $740D: $F8 $0F
    rrca                                          ; $740F: $0F
    rrca                                          ; $7410: $0F
    rrca                                          ; $7411: $0F
    ld [bc], a                                    ; $7412: $02
    dec h                                         ; $7413: $25
    ld b, b                                       ; $7414: $40
    ld d, a                                       ; $7415: $57
    nop                                           ; $7416: $00
    ld [bc], a                                    ; $7417: $02
    inc bc                                        ; $7418: $03

jr_030_7419:
    ld [$1007], sp                                ; $7419: $08 $07 $10
    add hl, de                                    ; $741C: $19
    inc bc                                        ; $741D: $03
    ld [hl], e                                    ; $741E: $73
    ld bc, $1059                                  ; $741F: $01 $59 $10
    ld e, c                                       ; $7422: $59
    rrca                                          ; $7423: $0F
    ld b, $0B                                     ; $7424: $06 $0B
    sbc d                                         ; $7426: $9A
    push de                                       ; $7427: $D5
    ld e, b                                       ; $7428: $58
    ld a, c                                       ; $7429: $79
    jr nc, jr_030_7434                            ; $742A: $30 $08

    ld a, b                                       ; $742C: $78
    db $10                                        ; $742D: $10
    rst RST_38                                    ; $742E: $FF
    add hl, bc                                    ; $742F: $09
    and $01                                       ; $7430: $E6 $01
    jr @+$40                                      ; $7432: $18 $3E

jr_030_7434:
    or b                                          ; $7434: $B0
    ld hl, sp+$4A                                 ; $7435: $F8 $4A
    dec bc                                        ; $7437: $0B
    rst RST_30                                    ; $7438: $F7
    dec e                                         ; $7439: $1D
    ld h, b                                       ; $743A: $60
    rst RST_28                                    ; $743B: $EF
    rst RST_00                                    ; $743C: $C7
    nop                                           ; $743D: $00
    add sp, $03                                   ; $743E: $E8 $03
    add b                                         ; $7440: $80
    ld [$C057], sp                                ; $7441: $08 $57 $C0
    db $10                                        ; $7444: $10
    ldh [rNR23], a                                ; $7445: $E0 $18
    ldh a, [$FF78]                                ; $7447: $F0 $78
    ret                                           ; $7449: $C9


    ld [$E8FF], sp                                ; $744A: $08 $FF $E8
    jr z, @+$52                                   ; $744D: $28 $50

    add hl, sp                                    ; $744F: $39
    dec c                                         ; $7450: $0D
    adc b                                         ; $7451: $88
    ld c, b                                       ; $7452: $48
    xor c                                         ; $7453: $A9
    xor d                                         ; $7454: $AA
    ret                                           ; $7455: $C9


    ld bc, $0308                                  ; $7456: $01 $08 $03
    db $10                                        ; $7459: $10
    ccf                                           ; $745A: $3F
    ld [$EE7F], sp                                ; $745B: $08 $7F $EE
    db $10                                        ; $745E: $10
    add hl, de                                    ; $745F: $19
    ccf                                           ; $7460: $3F
    rra                                           ; $7461: $1F
    add hl, sp                                    ; $7462: $39
    db $10                                        ; $7463: $10
    jr c, jr_030_7497                             ; $7464: $38 $31

    dec bc                                        ; $7466: $0B
    di                                            ; $7467: $F3
    ld h, c                                       ; $7468: $61
    rst RST_38                                    ; $7469: $FF
    ld h, e                                       ; $746A: $63
    jr z, jr_030_74AB                             ; $746B: $28 $3E

    nop                                           ; $746D: $00
    add sp, $55                                   ; $746E: $E8 $55
    add b                                         ; $7470: $80
    ld [$10C0], sp                                ; $7471: $08 $C0 $10
    db $FC                                        ; $7474: $FC
    ld [$10FE], sp                                ; $7475: $08 $FE $10
    sub $19                                       ; $7478: $D6 $19
    ccf                                           ; $747A: $3F
    ldh a, [$FF08]                                ; $747B: $F0 $08
    ld hl, sp+$10                                 ; $747D: $F8 $10
    jr z, jr_030_7419                             ; $747F: $28 $98

    rlca                                          ; $7481: $07
    sbc $8C                                       ; $7482: $DE $8C
    sbc [hl]                                      ; $7484: $9E
    inc c                                         ; $7485: $0C
    ld e, $08                                     ; $7486: $1E $08
    nop                                           ; $7488: $00
    add sp, -$54                                  ; $7489: $E8 $AC
    ld bc, $0803                                  ; $748B: $01 $03 $08
    rlca                                          ; $748E: $07
    db $10                                        ; $748F: $10
    add hl, bc                                    ; $7490: $09
    rrca                                          ; $7491: $0F
    ld b, $F6                                     ; $7492: $06 $F6
    rrca                                          ; $7494: $0F
    rrca                                          ; $7495: $0F
    xor e                                         ; $7496: $AB

jr_030_7497:
    reti                                          ; $7497: $D9


    ld bc, $10F9                                  ; $7498: $01 $F9 $10
    add e                                         ; $749B: $83
    xor a                                         ; $749C: $AF
    ld [$09FF], sp                                ; $749D: $08 $FF $09
    ld a, a                                       ; $74A0: $7F
    nop                                           ; $74A1: $00
    jr jr_030_74ED                                ; $74A2: $18 $49

    rrca                                          ; $74A4: $0F
    ld b, h                                       ; $74A5: $44
    jp $E308                                      ; $74A6: $C3 $08 $E3


    pop bc                                        ; $74A9: $C1
    rst RST_08                                    ; $74AA: $CF

jr_030_74AB:
    or b                                          ; $74AB: $B0
    sbc a                                         ; $74AC: $9F
    ld c, $D6                                     ; $74AD: $0E $D6
    nop                                           ; $74AF: $00
    add sp, -$80                                  ; $74B0: $E8 $80
    ld [$10C0], sp                                ; $74B2: $08 $C0 $10
    add hl, bc                                    ; $74B5: $09
    ldh [$FFBF], a                                ; $74B6: $E0 $BF
    ld [$10F0], sp                                ; $74B8: $08 $F0 $10
    add hl, de                                    ; $74BB: $19
    ld c, e                                       ; $74BC: $4B
    rrca                                          ; $74BD: $0F
    add hl, bc                                    ; $74BE: $09
    ret                                           ; $74BF: $C9


    xor d                                         ; $74C0: $AA
    inc bc                                        ; $74C1: $03
    jr jr_030_74C4                                ; $74C2: $18 $00

jr_030_74C4:
    inc h                                         ; $74C4: $24
    nop                                           ; $74C5: $00
    ld h, [hl]                                    ; $74C6: $66
    inc b                                         ; $74C7: $04
    ld a, [hl]                                    ; $74C8: $7E
    db $EB                                        ; $74C9: $EB
    nop                                           ; $74CA: $00
    add hl, de                                    ; $74CB: $19
    adc e                                         ; $74CC: $8B
    ld [$0C00], sp                                ; $74CD: $08 $00 $0C
    nop                                           ; $74D0: $00
    ld e, c                                       ; $74D1: $59
    db $EB                                        ; $74D2: $EB
    add hl, de                                    ; $74D3: $19
    add hl, sp                                    ; $74D4: $39
    ld l, e                                       ; $74D5: $6B
    ld b, d                                       ; $74D6: $42
    nop                                           ; $74D7: $00
    ld e, a                                       ; $74D8: $5F
    nop                                           ; $74D9: $00
    add hl, de                                    ; $74DA: $19
    or [hl]                                       ; $74DB: $B6
    dec b                                         ; $74DC: $05
    inc h                                         ; $74DD: $24
    nop                                           ; $74DE: $00
    ld a, c                                       ; $74DF: $79
    ld bc, $AB00                                  ; $74E0: $01 $00 $AB
    ld a, b                                       ; $74E3: $78
    xor l                                         ; $74E4: $AD
    nop                                           ; $74E5: $00
    inc b                                         ; $74E6: $04
    ld [bc], a                                    ; $74E7: $02
    jr jr_030_74EA                                ; $74E8: $18 $00

jr_030_74EA:
    ld c, c                                       ; $74EA: $49
    db $FD                                        ; $74EB: $FD
    nop                                           ; $74EC: $00

jr_030_74ED:
    ld d, l                                       ; $74ED: $55
    add hl, bc                                    ; $74EE: $09
    nop                                           ; $74EF: $00
    ld de, $2100                                  ; $74F0: $11 $00 $21
    inc b                                         ; $74F3: $04
    inc e                                         ; $74F4: $1C
    nop                                           ; $74F5: $00
    or l                                          ; $74F6: $B5
    db $DB                                        ; $74F7: $DB
    ld [$DB00], sp                                ; $74F8: $08 $00 $DB
    inc h                                         ; $74FB: $24
    nop                                           ; $74FC: $00
    ld b, h                                       ; $74FD: $44
    nop                                           ; $74FE: $00
    ld a, d                                       ; $74FF: $7A
    add b                                         ; $7500: $80
    nop                                           ; $7501: $00
    ld a, e                                       ; $7502: $7B
    rlca                                          ; $7503: $07
    dec b                                         ; $7504: $05
    ld a, h                                       ; $7505: $7C
    nop                                           ; $7506: $00
    ld h, [hl]                                    ; $7507: $66
    ld [$2F02], a                                 ; $7508: $EA $02 $2F
    adc e                                         ; $750B: $8B
    ld [$0C00], sp                                ; $750C: $08 $00 $0C
    nop                                           ; $750F: $00
    ld a, [hl]                                    ; $7510: $7E
    push af                                       ; $7511: $F5
    nop                                           ; $7512: $00
    add hl, de                                    ; $7513: $19
    add hl, sp                                    ; $7514: $39
    ld l, e                                       ; $7515: $6B
    stop                                          ; $7516: $10 $00
    ld a, l                                       ; $7518: $7D
    nop                                           ; $7519: $00
    xor e                                         ; $751A: $AB
    add hl, de                                    ; $751B: $19
    ld a, $00                                     ; $751C: $3E $00
    ld d, c                                       ; $751E: $51
    ld [bc], a                                    ; $751F: $02
    ld [hl+], a                                   ; $7520: $22
    nop                                           ; $7521: $00
    ld a, c                                       ; $7522: $79
    ld d, l                                       ; $7523: $55
    jr nz, jr_030_7526                            ; $7524: $20 $00

jr_030_7526:
    ld l, [hl]                                    ; $7526: $6E
    nop                                           ; $7527: $00
    ld sp, $2100                                  ; $7528: $31 $00 $21
    nop                                           ; $752B: $00
    ld l, l                                       ; $752C: $6D
    ld h, c                                       ; $752D: $61
    ld [bc], a                                    ; $752E: $02
    ld a, e                                       ; $752F: $7B
    ld b, d                                       ; $7530: $42
    ld b, $59                                     ; $7531: $06 $59
    inc b                                         ; $7533: $04
    nop                                           ; $7534: $00
    ld [hl], c                                    ; $7535: $71
    jr c, jr_030_7538                             ; $7536: $38 $00

jr_030_7538:
    ld a, c                                       ; $7538: $79
    nop                                           ; $7539: $00
    rst RST_38                                    ; $753A: $FF
    ld a, a                                       ; $753B: $7F
    cp $08                                        ; $753C: $FE $08
    cpl                                           ; $753E: $2F
    ret nz                                        ; $753F: $C0

    ld h, b                                       ; $7540: $60
    ld c, $E0                                     ; $7541: $0E $E0
    add d                                         ; $7543: $82
    rlca                                          ; $7544: $07
    ld b, $FA                                     ; $7545: $06 $FA
    rla                                           ; $7547: $17
    ei                                            ; $7548: $FB
    ld b, $03                                     ; $7549: $06 $03
    ld c, $07                                     ; $754B: $0E $07
    xor a                                         ; $754D: $AF
    rlca                                          ; $754E: $07
    rlca                                          ; $754F: $07
    call nz, $0107                                ; $7550: $C4 $07 $01
    ldh [$FF60], a                                ; $7553: $E0 $60
    ret nz                                        ; $7555: $C0

    ld c, $DF                                     ; $7556: $0E $DF
    ld a, a                                       ; $7558: $7F

jr_030_7559:
    jr c, jr_030_7559                             ; $7559: $38 $FE

    rst RST_38                                    ; $755B: $FF
    xor a                                         ; $755C: $AF
    rlca                                          ; $755D: $07
    nop                                           ; $755E: $00
    inc b                                         ; $755F: $04
    inc bc                                        ; $7560: $03
    rlca                                          ; $7561: $07
    ld a, b                                       ; $7562: $78
    ld [bc], a                                    ; $7563: $02
    dec c                                         ; $7564: $0D
    ld b, b                                       ; $7565: $40
    add sp, -$05                                  ; $7566: $E8 $FB
    dec c                                         ; $7568: $0D
    add b                                         ; $7569: $80
    ld e, d                                       ; $756A: $5A
    nop                                           ; $756B: $00
    ld [bc], a                                    ; $756C: $02
    inc bc                                        ; $756D: $03
    inc bc                                        ; $756E: $03
    nop                                           ; $756F: $00
    rrca                                          ; $7570: $0F
    nop                                           ; $7571: $00
    rlca                                          ; $7572: $07
    jp c, $1500                                   ; $7573: $DA $00 $15

    ld bc, $4700                                  ; $7576: $01 $00 $47
    rra                                           ; $7579: $1F
    nop                                           ; $757A: $00
    inc d                                         ; $757B: $14
    db $DB                                        ; $757C: $DB
    rlca                                          ; $757D: $07
    inc b                                         ; $757E: $04
    ld a, a                                       ; $757F: $7F
    nop                                           ; $7580: $00
    scf                                           ; $7581: $37
    ldh [$FF03], a                                ; $7582: $E0 $03
    nop                                           ; $7584: $00
    ld e, d                                       ; $7585: $5A
    ld hl, sp+$00                                 ; $7586: $F8 $00
    ldh a, [rP1]                                  ; $7588: $F0 $00
    dec d                                         ; $758A: $15
    ret nz                                        ; $758B: $C0

    nop                                           ; $758C: $00
    add b                                         ; $758D: $80
    jp nc, Jump_030_4500                          ; $758E: $D2 $00 $45

    db $FC                                        ; $7591: $FC
    nop                                           ; $7592: $00
    ld e, h                                       ; $7593: $5C
    and h                                         ; $7594: $A4
    rlca                                          ; $7595: $07
    rst RST_38                                    ; $7596: $FF
    ld a, [$7F00]                                 ; $7597: $FA $00 $7F
    ld bc, $01FF                                  ; $759A: $01 $FF $01
    rrca                                          ; $759D: $0F
    nop                                           ; $759E: $00
    rlca                                          ; $759F: $07
    rst RST_18                                    ; $75A0: $DF
    nop                                           ; $75A1: $00
    dec d                                         ; $75A2: $15
    ld bc, $4700                                  ; $75A3: $01 $00 $47
    add sp, -$01                                  ; $75A6: $E8 $FF
    rst RST_38                                    ; $75A8: $FF
    push af                                       ; $75A9: $F5
    inc bc                                        ; $75AA: $03
    nop                                           ; $75AB: $00
    rst RST_38                                    ; $75AC: $FF
    ld bc, $00F8                                  ; $75AD: $01 $F8 $00
    ldh a, [rP1]                                  ; $75B0: $F0 $00
    xor l                                         ; $75B2: $AD
    dec d                                         ; $75B3: $15
    ret nz                                        ; $75B4: $C0

    nop                                           ; $75B5: $00
    add b                                         ; $75B6: $80
    nop                                           ; $75B7: $00
    ld b, l                                       ; $75B8: $45
    db $FC                                        ; $75B9: $FC
    nop                                           ; $75BA: $00
    db $FD                                        ; $75BB: $FD
    rst RST_38                                    ; $75BC: $FF
    rst RST_38                                    ; $75BD: $FF
    inc bc                                        ; $75BE: $03
    ld bc, $01FF                                  ; $75BF: $01 $FF $01
    rrca                                          ; $75C2: $0F
    nop                                           ; $75C3: $00
    ld l, a                                       ; $75C4: $6F
    rlca                                          ; $75C5: $07
    nop                                           ; $75C6: $00
    dec d                                         ; $75C7: $15
    ld bc, $4700                                  ; $75C8: $01 $00 $47
    ldh a, [rIE]                                  ; $75CB: $F0 $FF
    ld a, [$03FF]                                 ; $75CD: $FA $FF $03
    nop                                           ; $75D0: $00
    rst RST_38                                    ; $75D1: $FF
    ld bc, $00F8                                  ; $75D2: $01 $F8 $00
    ldh a, [$FFD6]                                ; $75D5: $F0 $D6
    nop                                           ; $75D7: $00
    dec d                                         ; $75D8: $15
    ret nz                                        ; $75D9: $C0

    nop                                           ; $75DA: $00
    add b                                         ; $75DB: $80
    nop                                           ; $75DC: $00
    ld b, l                                       ; $75DD: $45
    db $FC                                        ; $75DE: $FC
    ret nz                                        ; $75DF: $C0

    nop                                           ; $75E0: $00
    rst RST_38                                    ; $75E1: $FF
    ld e, $40                                     ; $75E2: $1E $40
    dec c                                         ; $75E4: $0D
    rst RST_38                                    ; $75E5: $FF
    nop                                           ; $75E6: $00
    add b                                         ; $75E7: $80
    ld a, a                                       ; $75E8: $7F
    add hl, bc                                    ; $75E9: $09
    cpl                                           ; $75EA: $2F
    ld bc, $790A                                  ; $75EB: $01 $0A $79
    cp $10                                        ; $75EE: $FE $10
    jr c, jr_030_763B                             ; $75F0: $38 $49

    add hl, bc                                    ; $75F2: $09
    ld b, b                                       ; $75F3: $40
    ret nz                                        ; $75F4: $C0

    sbc c                                         ; $75F5: $99
    pop de                                        ; $75F6: $D1
    ld [$F801], sp                                ; $75F7: $08 $01 $F8
    ld [$E010], sp                                ; $75FA: $08 $10 $E0
    jr nz, jr_030_764F                            ; $75FD: $20 $50

    db $D3                                        ; $75FF: $D3
    db $10                                        ; $7600: $10
    jr z, jr_030_7642                             ; $7601: $28 $3F

    jr jr_030_7635                                ; $7603: $18 $30

    rst RST_08                                    ; $7605: $CF
    sbc b                                         ; $7606: $98
    ld [$3E14], sp                                ; $7607: $08 $14 $3E
    pop bc                                        ; $760A: $C1
    db $E3                                        ; $760B: $E3
    ld [$1A22], sp                                ; $760C: $08 $22 $1A
    jp Jump_000_1581                              ; $760F: $C3 $81 $15


    add e                                         ; $7612: $83
    ld bc, $9803                                  ; $7613: $01 $03 $98
    ld [bc], a                                    ; $7616: $02
    ld a, [$087E]                                 ; $7617: $FA $7E $08
    ld de, $3844                                  ; $761A: $11 $44 $38
    ld c, a                                       ; $761D: $4F
    ret nc                                        ; $761E: $D0

    ld c, h                                       ; $761F: $4C
    inc sp                                        ; $7620: $33
    call z, Call_000_2108                         ; $7621: $CC $08 $21
    rrca                                          ; $7624: $0F
    ldh a, [rP1]                                  ; $7625: $F0 $00
    ldh [$FF60], a                                ; $7627: $E0 $60
    add b                                         ; $7629: $80
    ret nz                                        ; $762A: $C0

    ld [$475D], sp                                ; $762B: $08 $5D $47
    ld [$E0C7], sp                                ; $762E: $08 $C7 $E0
    ld a, [bc]                                    ; $7631: $0A

jr_030_7632:
    ldh [rTMA], a                                 ; $7632: $E0 $06
    ret z                                         ; $7634: $C8

jr_030_7635:
    ld d, c                                       ; $7635: $51
    inc b                                         ; $7636: $04
    ld a, [$081E]                                 ; $7637: $FA $1E $08
    ld [de], a                                    ; $763A: $12

jr_030_763B:
    inc c                                         ; $763B: $0C
    di                                            ; $763C: $F3
    ld [$20A2], sp                                ; $763D: $08 $A2 $20
    rst RST_38                                    ; $7640: $FF
    add hl, bc                                    ; $7641: $09

jr_030_7642:
    db $E3                                        ; $7642: $E3
    inc e                                         ; $7643: $1C
    ld a, $08                                     ; $7644: $3E $08
    ld b, d                                       ; $7646: $42
    inc d                                         ; $7647: $14
    inc a                                         ; $7648: $3C
    cp $6C                                        ; $7649: $FE $6C
    ld a, b                                       ; $764B: $78
    db $EC                                        ; $764C: $EC
    jr @-$32                                      ; $764D: $18 $CC

jr_030_764F:
    sbc $34                                       ; $764F: $DE $34
    adc h                                         ; $7651: $8C
    sbc [hl]                                      ; $7652: $9E
    jp c, Jump_000_3F03                           ; $7653: $DA $03 $3F

    ld [$1F20], sp                                ; $7656: $08 $20 $1F
    ld c, a                                       ; $7659: $4F
    ldh [$FF08], a                                ; $765A: $E0 $08
    ld a, a                                       ; $765C: $7F
    add b                                         ; $765D: $80
    nop                                           ; $765E: $00
    jr c, jr_030_766A                             ; $765F: $38 $09

    adc a                                         ; $7661: $8F
    and $08                                       ; $7662: $E6 $08
    ld a, b                                       ; $7664: $78
    ld a, [bc]                                    ; $7665: $0A
    db $10                                        ; $7666: $10

jr_030_7667:
    jr nc, jr_030_7632                            ; $7667: $30 $C9

    ld l, d                                       ; $7669: $6A

jr_030_766A:
    cp $80                                        ; $766A: $FE $80
    ld [$F807], sp                                ; $766C: $08 $07 $F8
    ld a, [bc]                                    ; $766F: $0A
    pop af                                        ; $7670: $F1
    jp z, Jump_030_4B31                           ; $7671: $CA $31 $4B

    xor d                                         ; $7674: $AA
    ld [hl], b                                    ; $7675: $70
    ld c, b                                       ; $7676: $48
    ld [$1C78], sp                                ; $7677: $08 $78 $1C
    rrc b                                         ; $767A: $CB $08
    ei                                            ; $767C: $FB
    bit 7, b                                      ; $767D: $CB $78
    ld a, [bc]                                    ; $767F: $0A
    ld bc, $C803                                  ; $7680: $01 $03 $C8
    ld [bc], a                                    ; $7683: $02
    ld a, [$4A01]                                 ; $7684: $FA $01 $4A
    rst RST_38                                    ; $7687: $FF
    ld [$F30C], sp                                ; $7688: $08 $0C $F3
    add hl, bc                                    ; $768B: $09
    db $FC                                        ; $768C: $FC
    ld [hl], b                                    ; $768D: $70
    inc b                                         ; $768E: $04
    cp l                                          ; $768F: $BD
    ld [$1C07], sp                                ; $7690: $08 $07 $1C
    ld c, c                                       ; $7693: $49
    adc b                                         ; $7694: $88
    ld bc, $00FE                                  ; $7695: $01 $FE $00
    ldh a, [$FFDC]                                ; $7698: $F0 $DC
    ld bc, $0860                                  ; $769A: $01 $60 $08
    ldh [c], a                                    ; $769D: $E2
    ld bc, $817E                                  ; $769E: $01 $7E $81
    ld a, [hl+]                                   ; $76A1: $2A
    and b                                         ; $76A2: $A0
    rra                                           ; $76A3: $1F
    add hl, bc                                    ; $76A4: $09
    cp [hl]                                       ; $76A5: $BE
    jr c, jr_030_7667                             ; $76A6: $38 $BF

    ld [$77A6], sp                                ; $76A8: $08 $A6 $77
    add hl, de                                    ; $76AB: $19
    jr @+$0A                                      ; $76AC: $18 $08

    dec de                                        ; $76AE: $1B
    ccf                                           ; $76AF: $3F
    add hl, bc                                    ; $76B0: $09
    ld e, b                                       ; $76B1: $58
    ret                                           ; $76B2: $C9


    ld d, b                                       ; $76B3: $50
    ld [bc], a                                    ; $76B4: $02
    ld a, [$08FF]                                 ; $76B5: $FA $FF $08
    ld c, c                                       ; $76B8: $49
    or [hl]                                       ; $76B9: $B6
    ld a, a                                       ; $76BA: $7F
    add b                                         ; $76BB: $80
    add e                                         ; $76BC: $83
    ld c, b                                       ; $76BD: $48
    db $FC                                        ; $76BE: $FC
    rlca                                          ; $76BF: $07
    ld hl, sp+$7E                                 ; $76C0: $F8 $7E
    add c                                         ; $76C2: $81
    ld e, b                                       ; $76C3: $58
    ld [$6737], sp                                ; $76C4: $08 $37 $67
    sbc b                                         ; $76C7: $98
    ld b, b                                       ; $76C8: $40
    ld [$1A64], sp                                ; $76C9: $08 $64 $1A
    ld a, [bc]                                    ; $76CC: $0A
    jp c, $03A9                                   ; $76CD: $DA $A9 $03

    rrca                                          ; $76D0: $0F
    ld [$D008], sp                                ; $76D1: $08 $08 $D0
    add hl, bc                                    ; $76D4: $09
    ld b, $09                                     ; $76D5: $06 $09
    ld c, h                                       ; $76D7: $4C
    ld sp, hl                                     ; $76D8: $F9
    ld [$FE01], sp                                ; $76D9: $08 $01 $FE
    nop                                           ; $76DC: $00
    and b                                         ; $76DD: $A0
    call z, $5930                                 ; $76DE: $CC $30 $59
    ld a, b                                       ; $76E1: $78
    ld [$1A48], sp                                ; $76E2: $08 $48 $1A
    ld a, [bc]                                    ; $76E5: $0A
    jr nz, @+$62                                  ; $76E6: $20 $60

    ret z                                         ; $76E8: $C8

    ld d, a                                       ; $76E9: $57
    ld b, b                                       ; $76EA: $40
    ld a, [$08C0]                                 ; $76EB: $FA $C0 $08
    add b                                         ; $76EE: $80
    ld a, [hl+]                                   ; $76EF: $2A

jr_030_76F0:
    rlca                                          ; $76F0: $07
    rlca                                          ; $76F1: $07
    ret nz                                        ; $76F2: $C0

    rlca                                          ; $76F3: $07
    ld bc, $4017                                  ; $76F4: $01 $17 $40
    nop                                           ; $76F7: $00
    rra                                           ; $76F8: $1F
    nop                                           ; $76F9: $00
    ld [de], a                                    ; $76FA: $12
    dec c                                         ; $76FB: $0D
    di                                            ; $76FC: $F3
    inc c                                         ; $76FD: $0C
    add b                                         ; $76FE: $80
    ld a, a                                       ; $76FF: $7F
    add e                                         ; $7700: $83
    add hl, bc                                    ; $7701: $09
    rst RST_20                                    ; $7702: $E7
    jr @+$7B                                      ; $7703: $18 $79

    jr nc, @+$4B                                  ; $7705: $30 $49

    ld [$0B19], sp                                ; $7707: $08 $19 $0B
    sbc a                                         ; $770A: $9F
    ld h, b                                       ; $770B: $60
    rst RST_38                                    ; $770C: $FF
    ld h, a                                       ; $770D: $67
    ld a, [bc]                                    ; $770E: $0A
    inc b                                         ; $770F: $04
    and b                                         ; $7710: $A0
    ret z                                         ; $7711: $C8

    ld l, b                                       ; $7712: $68
    ld [$0108], sp                                ; $7713: $08 $08 $01
    ld hl, sp+$08                                 ; $7716: $F8 $08
    ld c, a                                       ; $7718: $4F
    or b                                          ; $7719: $B0
    ld sp, hl                                     ; $771A: $F9
    dec b                                         ; $771B: $05
    ld b, $19                                     ; $771C: $06 $19
    and $29                                       ; $771E: $E6 $29
    add $09                                       ; $7720: $C6 $09
    rst RST_28                                    ; $7722: $EF
    rra                                           ; $7723: $1F
    xor c                                         ; $7724: $A9
    ld a, [bc]                                    ; $7725: $0A
    xor $FE                                       ; $7726: $EE $FE
    ldh a, [$FF08]                                ; $7728: $F0 $08
    sub b                                         ; $772A: $90
    ld h, b                                       ; $772B: $60
    dec bc                                        ; $772C: $0B
    ld b, c                                       ; $772D: $41
    sbc a                                         ; $772E: $9F
    ld [$6E91], sp                                ; $772F: $08 $91 $6E
    cp $6C                                        ; $7732: $FE $6C
    sub d                                         ; $7734: $92
    ld [$1B82], sp                                ; $7735: $08 $82 $1B
    rst RST_38                                    ; $7738: $FF
    ld a, h                                       ; $7739: $7C
    db $FD                                        ; $773A: $FD
    ld a, b                                       ; $773B: $78
    ld sp, hl                                     ; $773C: $F9
    cp b                                          ; $773D: $B8
    ld bc, $0AD8                                  ; $773E: $01 $D8 $0A
    ld bc, $0807                                  ; $7741: $01 $07 $08
    ld h, b                                       ; $7744: $60
    inc bc                                        ; $7745: $03
    ld c, a                                       ; $7746: $4F
    jr nc, @+$1C                                  ; $7747: $30 $1A

    ld c, h                                       ; $7749: $4C
    inc sp                                        ; $774A: $33
    call z, $1908                                 ; $774B: $CC $08 $19
    ld a, a                                       ; $774E: $7F
    ld [$204A], sp                                ; $774F: $08 $4A $20
    ld sp, $087B                                  ; $7752: $31 $7B $08
    adc d                                         ; $7755: $8A
    ld [hl], c                                    ; $7756: $71
    pop af                                        ; $7757: $F1
    ldh [$FFE1], a                                ; $7758: $E0 $E1
    dec e                                         ; $775A: $1D
    ret nz                                        ; $775B: $C0

    pop bc                                        ; $775C: $C1
    add b                                         ; $775D: $80
    nop                                           ; $775E: $00
    ld [$FF01], a                                 ; $775F: $EA $01 $FF
    ld [$9901], sp                                ; $7762: $08 $01 $99
    ld h, [hl]                                    ; $7765: $66
    ld sp, hl                                     ; $7766: $F9
    ld b, $49                                     ; $7767: $06 $49
    add [hl]                                      ; $7769: $86
    adc c                                         ; $776A: $89
    jr jr_030_76F0                                ; $776B: $18 $83

    add hl, bc                                    ; $776D: $09
    adc a                                         ; $776E: $8F
    rlca                                          ; $776F: $07
    ld c, b                                       ; $7770: $48
    add a                                         ; $7771: $87
    rst RST_08                                    ; $7772: $CF
    ld c, b                                       ; $7773: $48
    ld e, c                                       ; $7774: $59
    dec h                                         ; $7775: $25
    rst RST_28                                    ; $7776: $EF
    add $0A                                       ; $7777: $C6 $0A
    inc b                                         ; $7779: $04
    inc c                                         ; $777A: $0C
    ret z                                         ; $777B: $C8

    ld [$F5FA], sp                                ; $777C: $08 $FA $F5
    ld bc, $08A0                                  ; $777F: $01 $A0 $08
    ld d, b                                       ; $7782: $50
    inc bc                                        ; $7783: $03
    dec bc                                        ; $7784: $0B
    db $FC                                        ; $7785: $FC
    ld [$FF07], sp                                ; $7786: $08 $07 $FF
    di                                            ; $7789: $F3
    inc d                                         ; $778A: $14
    db $E3                                        ; $778B: $E3
    rst RST_20                                    ; $778C: $E7
    ld c, d                                       ; $778D: $4A
    adc b                                         ; $778E: $88
    dec bc                                        ; $778F: $0B
    inc a                                         ; $7790: $3C
    ld [bc], a                                    ; $7791: $02
    ld b, $B9                                     ; $7792: $06 $B9
    db $FC                                        ; $7794: $FC
    xor b                                         ; $7795: $A8
    ld [de], a                                    ; $7796: $12
    ld bc, $57FE                                  ; $7797: $01 $FE $57
    ld sp, hl                                     ; $779A: $F9
    ld [hl], b                                    ; $779B: $70
    adc c                                         ; $779C: $89
    ld [$1C8F], sp                                ; $779D: $08 $8F $1C
    ld c, c                                       ; $77A0: $49
    ld [hl], b                                    ; $77A1: $70
    pop af                                        ; $77A2: $F1
    ld l, b                                       ; $77A3: $68
    ld a, [bc]                                    ; $77A4: $0A
    call c, $C1FD                                 ; $77A5: $DC $FD $C1
    ld a, $41                                     ; $77A8: $3E $41
    ld [$7F7A], sp                                ; $77AA: $08 $7A $7F
    ld [hl], a                                    ; $77AD: $77
    nop                                           ; $77AE: $00
    ld c, c                                       ; $77AF: $49
    ld [$0A3F], sp                                ; $77B0: $08 $3F $0A
    jr nz, @+$56                                  ; $77B3: $20 $54

    ld h, b                                       ; $77B5: $60
    jr c, jr_030_77F8                             ; $77B6: $38 $40

    ld a, h                                       ; $77B8: $7C
    db $FC                                        ; $77B9: $FC
    ld [$7088], sp                                ; $77BA: $08 $88 $70
    ld l, d                                       ; $77BD: $6A
    sub b                                         ; $77BE: $90
    ld h, b                                       ; $77BF: $60
    dec bc                                        ; $77C0: $0B
    ldh a, [$FF1F]                                ; $77C1: $F0 $1F
    ldh [rP1], a                                  ; $77C3: $E0 $00
    ret nz                                        ; $77C5: $C0

    ldh [rP1], a                                  ; $77C6: $E0 $00
    call c, Call_000_1001                         ; $77C8: $DC $01 $10
    ld b, b                                       ; $77CB: $40
    dec c                                         ; $77CC: $0D
    rst RST_38                                    ; $77CD: $FF
    nop                                           ; $77CE: $00
    add b                                         ; $77CF: $80
    ld a, a                                       ; $77D0: $7F
    add hl, bc                                    ; $77D1: $09
    add hl, hl                                    ; $77D2: $29
    ld bc, $550A                                  ; $77D3: $01 $0A $55
    inc bc                                        ; $77D6: $03
    db $10                                        ; $77D7: $10
    ld [bc], a                                    ; $77D8: $02
    ld [$200F], sp                                ; $77D9: $08 $0F $20
    ldh a, [rNR10]                                ; $77DC: $F0 $10
    adc c                                         ; $77DE: $89
    ld l, b                                       ; $77DF: $68
    ld a, [hl]                                    ; $77E0: $7E
    cp $70                                        ; $77E1: $FE $70
    jr z, @+$42                                   ; $77E3: $28 $40

    ret nz                                        ; $77E5: $C0

    ret                                           ; $77E6: $C9


    ret nc                                        ; $77E7: $D0

    ld [$FB01], sp                                ; $77E8: $08 $01 $FB
    ld [$E112], sp                                ; $77EB: $08 $12 $E1
    ld [hl+], a                                   ; $77EE: $22
    pop bc                                        ; $77EF: $C1
    adc e                                         ; $77F0: $8B
    dec bc                                        ; $77F1: $0B
    inc h                                         ; $77F2: $24
    jp $08E4                                      ; $77F3: $C3 $E4 $08


    ld b, a                                       ; $77F6: $47
    sub b                                         ; $77F7: $90

jr_030_77F8:
    xor b                                         ; $77F8: $A8
    and b                                         ; $77F9: $A0
    ld [$1027], sp                                ; $77FA: $08 $27 $10
    rst RST_30                                    ; $77FD: $F7

jr_030_77FE:
    db $E3                                        ; $77FE: $E3
    rst RST_38                                    ; $77FF: $FF
    ld [hl], e                                    ; $7800: $73
    ld a, a                                       ; $7801: $7F

jr_030_7802:
    ld l, $02                                     ; $7802: $2E $02
    ld b, $C8                                     ; $7804: $06 $C8
    inc b                                         ; $7806: $04
    ld a, [$1248]                                 ; $7807: $FA $48 $12
    ld bc, $FE0A                                  ; $780A: $01 $0A $FE
    ld a, c                                       ; $780D: $79
    add [hl]                                      ; $780E: $86
    ld c, c                                       ; $780F: $49
    ld [$8089], sp                                ; $7810: $08 $89 $80
    adc a                                         ; $7813: $8F
    rst RST_10                                    ; $7814: $D7
    ld [$0F19], sp                                ; $7815: $08 $19 $0F
    ld [$08F9], sp                                ; $7818: $08 $F9 $08
    add b                                         ; $781B: $80
    ld a, b                                       ; $781C: $78
    cp d                                          ; $781D: $BA
    nop                                           ; $781E: $00
    db $FC                                        ; $781F: $FC
    nop                                           ; $7820: $00
    jp c, $C003                                   ; $7821: $DA $03 $C0

    ld [$EF80], sp                                ; $7824: $08 $80 $EF
    ld c, [hl]                                    ; $7827: $4E
    xor b                                         ; $7828: $A8
    add hl, bc                                    ; $7829: $09
    ld a, a                                       ; $782A: $7F
    ld e, b                                       ; $782B: $58
    ld [$0729], sp                                ; $782C: $08 $29 $07
    and l                                         ; $782F: $A5
    rlca                                          ; $7830: $07
    rrca                                          ; $7831: $0F
    ld [$0609], sp                                ; $7832: $08 $09 $06
    dec bc                                        ; $7835: $0B
    ld sp, hl                                     ; $7836: $F9

jr_030_7837:
    ld [$D884], sp                                ; $7837: $08 $84 $D8
    and $29                                       ; $783A: $E6 $29
    add $EF                                       ; $783C: $C6 $EF
    jr z, jr_030_7851                             ; $783E: $28 $11

    ld c, $01                                     ; $7840: $0E $01
    ld a, $1C                                     ; $7842: $3E $1C
    inc a                                         ; $7844: $3C
    jr @+$3A                                      ; $7845: $18 $38

    db $10                                        ; $7847: $10
    jr nc, jr_030_7802                            ; $7848: $30 $B8

    ld d, d                                       ; $784A: $52
    jr nz, jr_030_7837                            ; $784B: $20 $EA

    cp $08                                        ; $784D: $FE $08
    sub d                                         ; $784F: $92
    ld l, h                                       ; $7850: $6C

jr_030_7851:
    add hl, de                                    ; $7851: $19
    adc b                                         ; $7852: $88
    dec d                                         ; $7853: $15
    ld [hl], b                                    ; $7854: $70
    sub b                                         ; $7855: $90
    ld h, b                                       ; $7856: $60

jr_030_7857:
    add hl, bc                                    ; $7857: $09
    ldh a, [$FF08]                                ; $7858: $F0 $08
    ld c, b                                       ; $785A: $48
    and b                                         ; $785B: $A0
    ld a, [hl]                                    ; $785C: $7E
    ld a, b                                       ; $785D: $78
    ld [$E919], sp                                ; $785E: $08 $19 $E9
    ld a, [bc]                                    ; $7861: $0A
    jp c, Jump_000_1803                           ; $7862: $DA $03 $18

    ld b, b                                       ; $7865: $40
    jr z, jr_030_7869                             ; $7866: $28 $01

    nop                                           ; $7868: $00

jr_030_7869:
    dec bc                                        ; $7869: $0B
    dec e                                         ; $786A: $1D
    ld [$0C13], sp                                ; $786B: $08 $13 $0C
    db $10                                        ; $786E: $10
    ld a, [de]                                    ; $786F: $1A
    rrca                                          ; $7870: $0F
    rra                                           ; $7871: $1F
    inc bc                                        ; $7872: $03
    nop                                           ; $7873: $00
    ld e, d                                       ; $7874: $5A
    rst RST_38                                    ; $7875: $FF
    add hl, bc                                    ; $7876: $09
    ld a, a                                       ; $7877: $7F
    sub [hl]                                      ; $7878: $96
    ld a, [bc]                                    ; $7879: $0A
    ld b, b                                       ; $787A: $40
    ret nz                                        ; $787B: $C0

    jr c, jr_030_77FE                             ; $787C: $38 $80

    ld [$F801], sp                                ; $787E: $08 $01 $F8
    ret                                           ; $7881: $C9


    ld [$E0B8], sp                                ; $7882: $08 $B8 $E0
    daa                                           ; $7885: $27
    ld d, b                                       ; $7886: $50
    inc h                                         ; $7887: $24
    jp $8609                                      ; $7888: $C3 $09 $86


    add hl, hl                                    ; $788B: $29
    ei                                            ; $788C: $FB
    pop bc                                        ; $788D: $C1
    ld a, [bc]                                    ; $788E: $0A
    pop af                                        ; $788F: $F1
    jr jr_030_789A                                ; $7890: $18 $08

    inc a                                         ; $7892: $3C
    and e                                         ; $7893: $A3
    ld c, b                                       ; $7894: $48
    rst RST_20                                    ; $7895: $E7
    ld [$83C7], sp                                ; $7896: $08 $C7 $83
    add a                                         ; $7899: $87

jr_030_789A:
    jp c, Jump_030_4203                           ; $789A: $DA $03 $42

    rst RST_38                                    ; $789D: $FF
    ld [$6D92], sp                                ; $789E: $08 $92 $6D
    sbc a                                         ; $78A1: $9F
    ld h, b                                       ; $78A2: $60
    ld sp, $0301                                  ; $78A3: $31 $01 $03
    cp $39                                        ; $78A6: $FE $39
    add $CF                                       ; $78A8: $C6 $CF
    add [hl]                                      ; $78AA: $86

jr_030_78AB:
    ld c, c                                       ; $78AB: $49
    ld [$2A19], sp                                ; $78AC: $08 $19 $2A
    ld sp, hl                                     ; $78AF: $F9
    ld b, $60                                     ; $78B0: $06 $60
    ld a, $0A                                     ; $78B2: $3E $0A
    jr nz, jr_030_7857                            ; $78B4: $20 $A1

    ld b, b                                       ; $78B6: $40
    db $E3                                        ; $78B7: $E3
    db $FC                                        ; $78B8: $FC
    jr c, jr_030_78AB                             ; $78B9: $38 $F0

    ldh [$FF1F], a                                ; $78BB: $E0 $1F
    cp a                                          ; $78BD: $BF
    ld c, d                                       ; $78BE: $4A
    dec b                                         ; $78BF: $05
    ld d, [hl]                                    ; $78C0: $56
    inc bc                                        ; $78C1: $03
    ld [$103C], sp                                ; $78C2: $08 $3C $10
    ccf                                           ; $78C5: $3F
    ld a, b                                       ; $78C6: $78
    ld [$941C], sp                                ; $78C7: $08 $1C $94
    jr z, @+$12                                   ; $78CA: $28 $10

jr_030_78CC:
    jr nc, @+$4A                                  ; $78CC: $30 $48

Jump_030_78CE:
    jr nz, jr_030_78CC                            ; $78CE: $20 $FC

    dec b                                         ; $78D0: $05
    ld hl, sp+$14                                 ; $78D1: $F8 $14
    add hl, bc                                    ; $78D3: $09
    ldh a, [$FFC9]                                ; $78D4: $F0 $C9
    ld h, b                                       ; $78D6: $60
    ld c, c                                       ; $78D7: $49
    ld a, [bc]                                    ; $78D8: $0A
    ld sp, hl                                     ; $78D9: $F9
    ld [hl], b                                    ; $78DA: $70
    ld [$6091], sp                                ; $78DB: $08 $91 $60
    pop af                                        ; $78DE: $F1
    ldh [rBCPD], a                                ; $78DF: $E0 $69
    db $FD                                        ; $78E1: $FD
    cp b                                          ; $78E2: $B8
    cp a                                          ; $78E3: $BF
    xor a                                         ; $78E4: $AF
    ld hl, sp+$1F                                 ; $78E5: $F8 $1F
    cp b                                          ; $78E7: $B8
    ld bc, $010A                                  ; $78E8: $01 $0A $01
    ld [hl], b                                    ; $78EB: $70
    ld [$2028], sp                                ; $78EC: $08 $28 $20
    ret nz                                        ; $78EF: $C0

    dec c                                         ; $78F0: $0D
    ccf                                           ; $78F1: $3F
    ld [$FEFF], sp                                ; $78F2: $08 $FF $FE
    ld [bc], a                                    ; $78F5: $02
    ld a, e                                       ; $78F6: $7B
    db $FC                                        ; $78F7: $FC
    nop                                           ; $78F8: $00
    ld c, d                                       ; $78F9: $4A
    sbc b                                         ; $78FA: $98
    dec bc                                        ; $78FB: $0B
    add b                                         ; $78FC: $80
    nop                                           ; $78FD: $00
    ld [$07F7], a                                 ; $78FE: $EA $F7 $07
    inc bc                                        ; $7901: $03
    add sp, $09                                   ; $7902: $E8 $09
    ld a, a                                       ; $7904: $7F
    sbc b                                         ; $7905: $98
    ld [$D229], sp                                ; $7906: $08 $29 $D2
    rlca                                          ; $7909: $07
    dec b                                         ; $790A: $05
    inc bc                                        ; $790B: $03
    ld [$0102], sp                                ; $790C: $08 $02 $01
    add hl, bc                                    ; $790F: $09
    inc b                                         ; $7910: $04
    ret c                                         ; $7911: $D8

    jr nc, jr_030_791D                            ; $7912: $30 $09

    db $FC                                        ; $7914: $FC
    ld [$E6D8], sp                                ; $7915: $08 $D8 $E6
    add hl, hl                                    ; $7918: $29
    add $84                                       ; $7919: $C6 $84
    jr jr_030_792B                                ; $791B: $18 $0E

jr_030_791D:
    db $10                                        ; $791D: $10
    rrca                                          ; $791E: $0F

jr_030_791F:
    rra                                           ; $791F: $1F
    add hl, bc                                    ; $7920: $09
    ld [$E918], sp                                ; $7921: $08 $18 $E9
    cp b                                          ; $7924: $B8
    jr c, @-$02                                   ; $7925: $38 $FC

    ret nz                                        ; $7927: $C0

    ld [$8040], sp                                ; $7928: $08 $40 $80

jr_030_792B:
    add hl, bc                                    ; $792B: $09
    add sp, $00                                   ; $792C: $E8 $00
    jr z, @+$0D                                   ; $792E: $28 $0B

    ccf                                           ; $7930: $3F
    ld [$1C22], sp                                ; $7931: $08 $22 $1C
    db $FC                                        ; $7934: $FC
    adc h                                         ; $7935: $8C
    ret nz                                        ; $7936: $C0

    inc b                                         ; $7937: $04
    ld hl, sp-$02                                 ; $7938: $F8 $FE
    jr nz, jr_030_7944                            ; $793A: $20 $08

    inc c                                         ; $793C: $0C
    rra                                           ; $793D: $1F
    ld a, $0E                                     ; $793E: $3E $0E
    rrca                                          ; $7940: $0F
    db $FC                                        ; $7941: $FC
    rlca                                          ; $7942: $07
    rlca                                          ; $7943: $07

jr_030_7944:
    rlca                                          ; $7944: $07
    rlca                                          ; $7945: $07
    ld de, $5240                                  ; $7946: $11 $40 $52
    nop                                           ; $7949: $00

jr_030_794A:
    nop                                           ; $794A: $00
    rra                                           ; $794B: $1F
    ld [$0F10], sp                                ; $794C: $08 $10 $0F
    add hl, bc                                    ; $794F: $09
    inc e                                         ; $7950: $1C
    inc hl                                        ; $7951: $23
    inc bc                                        ; $7952: $03
    db $FC                                        ; $7953: $FC
    ld [$7FFF], sp                                ; $7954: $08 $FF $7F
    add b                                         ; $7957: $80
    ld [$AC18], sp                                ; $7958: $08 $18 $AC
    jr z, jr_030_7999                             ; $795B: $28 $3C

    ld [$903F], sp                                ; $795D: $08 $3F $90
    ld [$3E1E], sp                                ; $7960: $08 $1E $3E
    xor l                                         ; $7963: $AD
    sub b                                         ; $7964: $90
    jr nc, jr_030_791F                            ; $7965: $30 $B8

    jr nz, jr_030_794A                            ; $7967: $20 $E1

    nop                                           ; $7969: $00
    ld hl, sp-$17                                 ; $796A: $F8 $E9
    ld e, a                                       ; $796C: $5F
    ldh [$FF38], a                                ; $796D: $E0 $38
    ret nz                                        ; $796F: $C0

    nop                                           ; $7970: $00
    jr z, @-$36                                   ; $7971: $28 $C8

    ld [$9FC8], sp                                ; $7973: $08 $C8 $9F
    add hl, bc                                    ; $7976: $09
    di                                            ; $7977: $F3
    inc c                                         ; $7978: $0C
    ld [$4929], sp                                ; $7979: $08 $29 $49
    add hl, bc                                    ; $797C: $09
    rlca                                          ; $797D: $07
    di                                            ; $797E: $F3
    rlca                                          ; $797F: $07
    inc bc                                        ; $7980: $03
    ld a, [$0100]                                 ; $7981: $FA $00 $01
    cp $29                                        ; $7984: $FE $29
    rlca                                          ; $7986: $07
    and h                                         ; $7987: $A4
    dec b                                         ; $7988: $05
    ccf                                           ; $7989: $3F
    ld [$1F20], sp                                ; $798A: $08 $20 $1F
    add hl, bc                                    ; $798D: $09
    daa                                           ; $798E: $27
    jr @-$5C                                      ; $798F: $18 $A2

    add hl, de                                    ; $7991: $19
    ret nz                                        ; $7992: $C0

    ld d, b                                       ; $7993: $50
    rst RST_08                                    ; $7994: $CF
    jr nc, @+$7A                                  ; $7995: $30 $78

    adc d                                         ; $7997: $8A
    ld a, a                                       ; $7998: $7F

jr_030_7999:
    push af                                       ; $7999: $F5
    add hl, bc                                    ; $799A: $09
    ld c, b                                       ; $799B: $48
    ld a, [bc]                                    ; $799C: $0A
    add b                                         ; $799D: $80
    ld h, b                                       ; $799E: $60
    jr c, @+$42                                   ; $799F: $38 $40

    ld l, d                                       ; $79A1: $6A
    ld b, c                                       ; $79A2: $41
    rst RST_38                                    ; $79A3: $FF
    ld [$F30C], sp                                ; $79A4: $08 $0C $F3
    inc d                                         ; $79A7: $14
    db $E3                                        ; $79A8: $E3
    sub a                                         ; $79A9: $97
    ld h, b                                       ; $79AA: $60
    dec hl                                        ; $79AB: $2B
    db $10                                        ; $79AC: $10
    ldh [$FF09], a                                ; $79AD: $E0 $09
    ldh a, [$FF28]                                ; $79AF: $F0 $28
    sub b                                         ; $79B1: $90
    ld [$A019], sp                                ; $79B2: $08 $19 $A0
    ld e, c                                       ; $79B5: $59
    rst RST_30                                    ; $79B6: $F7
    ld a, b                                       ; $79B7: $78
    rst RST_20                                    ; $79B8: $E7
    jp Jump_000_02C7                              ; $79B9: $C3 $C7 $02


    ld b, $B1                                     ; $79BC: $06 $B1
    ret z                                         ; $79BE: $C8

    inc b                                         ; $79BF: $04
    db $FC                                        ; $79C0: $FC
    ld de, $FE01                                  ; $79C1: $11 $01 $FE
    ld sp, hl                                     ; $79C4: $F9
    ld h, b                                       ; $79C5: $60
    ld b, b                                       ; $79C6: $40
    add hl, bc                                    ; $79C7: $09
    ld a, [bc]                                    ; $79C8: $0A
    rra                                           ; $79C9: $1F
    ld c, $12                                     ; $79CA: $0E $12

jr_030_79CC:
    inc c                                         ; $79CC: $0C
    ld a, [hl]                                    ; $79CD: $7E
    inc e                                         ; $79CE: $1C
    ld l, e                                       ; $79CF: $6B
    add c                                         ; $79D0: $81
    db $10                                        ; $79D1: $10
    add b                                         ; $79D2: $80
    rst RST_30                                    ; $79D3: $F7
    nop                                           ; $79D4: $00
    add e                                         ; $79D5: $83
    nop                                           ; $79D6: $00
    jp c, Jump_000_03AF                           ; $79D7: $DA $AF $03

jr_030_79DA:
    ret nz                                        ; $79DA: $C0

    ld [$4E80], sp                                ; $79DB: $08 $80 $4E
    rlca                                          ; $79DE: $07
    ld bc, $D089                                  ; $79DF: $01 $89 $D0
    xor b                                         ; $79E2: $A8
    db $10                                        ; $79E3: $10
    ldh [$FF5E], a                                ; $79E4: $E0 $5E
    rla                                           ; $79E6: $17
    nop                                           ; $79E7: $00
    nop                                           ; $79E8: $00
    rra                                           ; $79E9: $1F
    nop                                           ; $79EA: $00
    ld [de], a                                    ; $79EB: $12
    dec c                                         ; $79EC: $0D
    di                                            ; $79ED: $F3
    inc c                                         ; $79EE: $0C
    add b                                         ; $79EF: $80
    ld a, a                                       ; $79F0: $7F
    add e                                         ; $79F1: $83
    ld de, $18E7                                  ; $79F2: $11 $E7 $18
    ld a, c                                       ; $79F5: $79
    jr nc, jr_030_7A41                            ; $79F6: $30 $49

    db $10                                        ; $79F8: $10
    ld sp, $9F08                                  ; $79F9: $31 $08 $9F
    ld h, b                                       ; $79FC: $60
    rst RST_38                                    ; $79FD: $FF
    ld h, a                                       ; $79FE: $67
    ld [de], a                                    ; $79FF: $12
    inc b                                         ; $7A00: $04
    inc c                                         ; $7A01: $0C
    nop                                           ; $7A02: $00
    ld l, c                                       ; $7A03: $69
    ld [$0110], sp                                ; $7A04: $08 $10 $01
    ld hl, sp+$10                                 ; $7A07: $F8 $10
    ld c, b                                       ; $7A09: $48
    or b                                          ; $7A0A: $B0
    ld sp, $1001                                  ; $7A0B: $31 $01 $10

Jump_030_7A0E:
    ldh [$FF2F], a                                ; $7A0E: $E0 $2F
    ret nz                                        ; $7A10: $C0

    jr z, jr_030_79DA                             ; $7A11: $28 $C7

    rst RST_28                                    ; $7A13: $EF
    db $10                                        ; $7A14: $10
    xor h                                         ; $7A15: $AC
    ld d, c                                       ; $7A16: $51
    pop hl                                        ; $7A17: $E1
    db $10                                        ; $7A18: $10
    ld hl, $1232                                  ; $7A19: $21 $32 $12
    nop                                           ; $7A1C: $00
    ld bc, $12D0                                  ; $7A1D: $01 $D0 $12
    ld bc, $103F                                  ; $7A20: $01 $3F $10
    ld [hl+], a                                   ; $7A23: $22
    inc e                                         ; $7A24: $1C
    inc h                                         ; $7A25: $24
    jr jr_030_79CC                                ; $7A26: $18 $A4

    ld de, $10E4                                  ; $7A28: $11 $E4 $10
    inc b                                         ; $7A2B: $04
    ld hl, sp+$00                                 ; $7A2C: $F8 $00
    ldh a, [$FF30]                                ; $7A2E: $F0 $30
    dec l                                         ; $7A30: $2D
    ret nz                                        ; $7A31: $C0

    ldh [rNR10], a                                ; $7A32: $E0 $10
    jr nz, jr_030_7A68                            ; $7A34: $20 $32

    ld [de], a                                    ; $7A36: $12
    add b                                         ; $7A37: $80
    nop                                           ; $7A38: $00
    ld d, b                                       ; $7A39: $50
    nop                                           ; $7A3A: $00
    inc bc                                        ; $7A3B: $03
    rrca                                          ; $7A3C: $0F
    db $10                                        ; $7A3D: $10
    ld sp, hl                                     ; $7A3E: $F9
    ld b, $99                                     ; $7A3F: $06 $99

jr_030_7A41:
    ld h, [hl]                                    ; $7A41: $66
    xor b                                         ; $7A42: $A8
    dec d                                         ; $7A43: $15
    rst RST_38                                    ; $7A44: $FF
    scf                                           ; $7A45: $37
    ld h, a                                       ; $7A46: $67
    ld de, $40EF                                  ; $7A47: $11 $EF $40
    ret nz                                        ; $7A4A: $C0

    inc [hl]                                      ; $7A4B: $34
    nop                                           ; $7A4C: $00
    add b                                         ; $7A4D: $80
    db $10                                        ; $7A4E: $10
    ld bc, $1003                                  ; $7A4F: $01 $03 $10
    ld [bc], a                                    ; $7A52: $02
    ld bc, $13A0                                  ; $7A53: $01 $A0 $13
    ld a, [$1410]                                 ; $7A56: $FA $10 $14
    db $E3                                        ; $7A59: $E3
    db $E4                                        ; $7A5A: $E4
    jp Jump_000_3427                              ; $7A5B: $C3 $27 $34


    ret nz                                        ; $7A5E: $C0

    ldh [rNR10], a                                ; $7A5F: $E0 $10
    ld sp, $70E7                                  ; $7A61: $31 $E7 $70
    rst RST_00                                    ; $7A64: $C7
    add e                                         ; $7A65: $83
    ld b, $87                                     ; $7A66: $06 $87

jr_030_7A68:
    ld [bc], a                                    ; $7A68: $02
    ld b, $00                                     ; $7A69: $06 $00
    inc b                                         ; $7A6B: $04
    db $10                                        ; $7A6C: $10
    ld bc, $80FF                                  ; $7A6D: $01 $FF $80
    db $10                                        ; $7A70: $10
    add hl, bc                                    ; $7A71: $09
    or $0F                                        ; $7A72: $F6 $0F
    ldh a, [$FF79]                                ; $7A74: $F0 $79
    add [hl]                                      ; $7A76: $86
    ld bc, $FE67                                  ; $7A77: $01 $67 $FE
    ld de, $06B0                                  ; $7A7A: $11 $B0 $06
    adc c                                         ; $7A7D: $89
    db $10                                        ; $7A7E: $10
    or b                                          ; $7A7F: $B0
    db $10                                        ; $7A80: $10
    ld a, d                                       ; $7A81: $7A
    ld sp, hl                                     ; $7A82: $F9
    db $10                                        ; $7A83: $10
    ld [hl], b                                    ; $7A84: $70
    sub b                                         ; $7A85: $90
    nop                                           ; $7A86: $00
    db $FC                                        ; $7A87: $FC
    nop                                           ; $7A88: $00
    nop                                           ; $7A89: $00
    and [hl]                                      ; $7A8A: $A6
    dec b                                         ; $7A8B: $05
    ldh [rNR10], a                                ; $7A8C: $E0 $10
    jr nz, @-$3E                                  ; $7A8E: $20 $C0

    ld sp, $FF03                                  ; $7A90: $31 $03 $FF
    sbc l                                         ; $7A93: $9D
    ld de, $807F                                  ; $7A94: $11 $7F $80
    db $10                                        ; $7A97: $10
    ld d, c                                       ; $7A98: $51
    dec c                                         ; $7A99: $0D
    rrca                                          ; $7A9A: $0F
    db $10                                        ; $7A9B: $10
    jr z, jr_030_7AA7                             ; $7A9C: $28 $09

    ld b, $15                                     ; $7A9E: $06 $15
    ld sp, hl                                     ; $7AA0: $F9
    db $10                                        ; $7AA1: $10
    rst RST_38                                    ; $7AA2: $FF
    rst RST_20                                    ; $7AA3: $E7
    jr z, jr_030_7ACE                             ; $7AA4: $28 $28

    rst RST_00                                    ; $7AA6: $C7

jr_030_7AA7:
    rst RST_28                                    ; $7AA7: $EF
    sub d                                         ; $7AA8: $92
    rrca                                          ; $7AA9: $0F
    inc de                                        ; $7AAA: $13
    inc b                                         ; $7AAB: $04
    inc c                                         ; $7AAC: $0C
    nop                                           ; $7AAD: $00
    ld l, b                                       ; $7AAE: $68
    ld [$0B10], sp                                ; $7AAF: $08 $10 $0B
    db $FC                                        ; $7AB2: $FC
    db $10                                        ; $7AB3: $10
    ld hl, sp-$10                                 ; $7AB4: $F8 $F0
    db $10                                        ; $7AB6: $10
    ld [hl], b                                    ; $7AB7: $70
    ldh [rP1], a                                  ; $7AB8: $E0 $00

jr_030_7ABA:
    ld hl, sp+$05                                 ; $7ABA: $F8 $05
    stop                                          ; $7ABC: $10 $00
    dec c                                         ; $7ABE: $0D
    rst RST_38                                    ; $7ABF: $FF
    nop                                           ; $7AC0: $00
    add b                                         ; $7AC1: $80
    ld a, a                                       ; $7AC2: $7F
    ld de, $0151                                  ; $7AC3: $11 $51 $01
    jr jr_030_7ABA                                ; $7AC6: $18 $F2

    or c                                          ; $7AC8: $B1
    db $10                                        ; $7AC9: $10
    pop af                                        ; $7ACA: $F1
    ld de, $C040                                  ; $7ACB: $11 $40 $C0

jr_030_7ACE:
    ld [hl], b                                    ; $7ACE: $70
    add b                                         ; $7ACF: $80
    ret nc                                        ; $7AD0: $D0

    db $10                                        ; $7AD1: $10
    ld bc, $10F8                                  ; $7AD2: $01 $F8 $10
    rra                                           ; $7AD5: $1F
    ldh [$FF28], a                                ; $7AD6: $E0 $28
    rst RST_00                                    ; $7AD8: $C7
    xor a                                         ; $7AD9: $AF
    ld de, $E02F                                  ; $7ADA: $11 $2F $E0
    jr nz, jr_030_7AEF                            ; $7ADD: $20 $10

    add b                                         ; $7ADF: $80
    inc [hl]                                      ; $7AE0: $34
    sub c                                         ; $7AE1: $91
    ld h, c                                       ; $7AE2: $61
    rst RST_28                                    ; $7AE3: $EF
    ret nc                                        ; $7AE4: $D0

    ld [de], a                                    ; $7AE5: $12
    inc b                                         ; $7AE6: $04
    inc c                                         ; $7AE7: $0C
    nop                                           ; $7AE8: $00
    ld [$A010], sp                                ; $7AE9: $08 $10 $A0
    inc bc                                        ; $7AEC: $03
    rst RST_38                                    ; $7AED: $FF
    db $10                                        ; $7AEE: $10

jr_030_7AEF:
    ld sp, $32CE                                  ; $7AEF: $31 $CE $32
    call z, $ACF2                                 ; $7AF2: $CC $F2 $AC
    ldh [rNR12], a                                ; $7AF5: $E0 $12
    db $10                                        ; $7AF7: $10
    ld e, $34                                     ; $7AF8: $1E $34
    sub c                                         ; $7AFA: $91
    cp $FC                                        ; $7AFB: $FE $FC
    xor d                                         ; $7AFD: $AA
    nop                                           ; $7AFE: $00
    ld hl, sp+$00                                 ; $7AFF: $F8 $00
    nop                                           ; $7B01: $00
    dec b                                         ; $7B02: $05
    rrca                                          ; $7B03: $0F
    db $10                                        ; $7B04: $10
    adc c                                         ; $7B05: $89
    ld h, $06                                     ; $7B06: $26 $06
    ld sp, hl                                     ; $7B08: $F9
    db $10                                        ; $7B09: $10
    add b                                         ; $7B0A: $80
    ld a, a                                       ; $7B0B: $7F
    ld de, $FF51                                  ; $7B0C: $11 $51 $FF
    sbc [hl]                                      ; $7B0F: $9E
    db $10                                        ; $7B10: $10
    sbc c                                         ; $7B11: $99
    ld h, [hl]                                    ; $7B12: $66
    jr nc, @+$12                                  ; $7B13: $30 $10

    inc sp                                        ; $7B15: $33
    ld [de], a                                    ; $7B16: $12
    inc b                                         ; $7B17: $04
    ld a, [de]                                    ; $7B18: $1A
    inc c                                         ; $7B19: $0C
    nop                                           ; $7B1A: $00
    ld [$0110], sp                                ; $7B1B: $08 $10 $01
    db $FC                                        ; $7B1E: $FC
    db $10                                        ; $7B1F: $10
    inc h                                         ; $7B20: $24
    ld h, b                                       ; $7B21: $60
    ret c                                         ; $7B22: $D8

    ld sp, $F090                                  ; $7B23: $31 $90 $F0
    rra                                           ; $7B26: $1F
    ldh [$FFF8], a                                ; $7B27: $E0 $F8
    rlca                                          ; $7B29: $07
    ld b, l                                       ; $7B2A: $45
    rst RST_38                                    ; $7B2B: $FF
    db $10                                        ; $7B2C: $10
    sbc a                                         ; $7B2D: $9F
    ld h, b                                       ; $7B2E: $60
    pop af                                        ; $7B2F: $F1
    db $10                                        ; $7B30: $10
    sub c                                         ; $7B31: $91
    ld [hl-], a                                   ; $7B32: $32
    sbc d                                         ; $7B33: $9A
    ld [de], a                                    ; $7B34: $12
    nop                                           ; $7B35: $00
    ld bc, $0112                                  ; $7B36: $01 $12 $01
    ccf                                           ; $7B39: $3F
    db $10                                        ; $7B3A: $10
    ld [hl+], a                                   ; $7B3B: $22
    inc d                                         ; $7B3C: $14
    inc e                                         ; $7B3D: $1C
    inc h                                         ; $7B3E: $24
    jr jr_030_7B52                                ; $7B3F: $18 $11

    db $E4                                        ; $7B41: $E4
    db $10                                        ; $7B42: $10
    inc b                                         ; $7B43: $04
    ld hl, sp-$7B                                 ; $7B44: $F8 $85
    nop                                           ; $7B46: $00
    ldh a, [$FF30]                                ; $7B47: $F0 $30

jr_030_7B49:
    ret nz                                        ; $7B49: $C0

    ldh [rNR10], a                                ; $7B4A: $E0 $10
    jr nz, jr_030_7B80                            ; $7B4C: $20 $32

    xor [hl]                                      ; $7B4E: $AE
    ld [de], a                                    ; $7B4F: $12
    add b                                         ; $7B50: $80
    nop                                           ; $7B51: $00

jr_030_7B52:
    nop                                           ; $7B52: $00
    rrca                                          ; $7B53: $0F
    rrca                                          ; $7B54: $0F
    inc bc                                        ; $7B55: $03

jr_030_7B56:
    dec d                                         ; $7B56: $15
    ld b, b                                       ; $7B57: $40
    jr z, jr_030_7B5B                             ; $7B58: $28 $01

    nop                                           ; $7B5A: $00

jr_030_7B5B:
    dec bc                                        ; $7B5B: $0B
    dec e                                         ; $7B5C: $1D
    ld [$0C13], sp                                ; $7B5D: $08 $13 $0C
    db $10                                        ; $7B60: $10
    ld a, [de]                                    ; $7B61: $1A
    rrca                                          ; $7B62: $0F
    rra                                           ; $7B63: $1F
    inc bc                                        ; $7B64: $03
    nop                                           ; $7B65: $00
    ld e, d                                       ; $7B66: $5A
    rst RST_38                                    ; $7B67: $FF
    add hl, bc                                    ; $7B68: $09
    ld a, a                                       ; $7B69: $7F
    sub [hl]                                      ; $7B6A: $96
    ld a, [bc]                                    ; $7B6B: $0A
    ld b, b                                       ; $7B6C: $40
    ret nz                                        ; $7B6D: $C0

    jr c, @-$7E                                   ; $7B6E: $38 $80

    ld [$F801], sp                                ; $7B70: $08 $01 $F8
    ret                                           ; $7B73: $C9


    ld [$E0B8], sp                                ; $7B74: $08 $B8 $E0
    daa                                           ; $7B77: $27
    ld d, b                                       ; $7B78: $50
    inc h                                         ; $7B79: $24
    jp $8609                                      ; $7B7A: $C3 $09 $86


    add hl, hl                                    ; $7B7D: $29
    ei                                            ; $7B7E: $FB
    pop bc                                        ; $7B7F: $C1

jr_030_7B80:
    ld a, [bc]                                    ; $7B80: $0A
    pop af                                        ; $7B81: $F1
    jr jr_030_7B8C                                ; $7B82: $18 $08

    inc a                                         ; $7B84: $3C
    and e                                         ; $7B85: $A3
    ld c, b                                       ; $7B86: $48
    rst RST_20                                    ; $7B87: $E7
    ld [$83C7], sp                                ; $7B88: $08 $C7 $83
    add a                                         ; $7B8B: $87

jr_030_7B8C:
    jp c, Jump_030_4203                           ; $7B8C: $DA $03 $42

    rst RST_38                                    ; $7B8F: $FF
    ld [$6D92], sp                                ; $7B90: $08 $92 $6D
    sbc a                                         ; $7B93: $9F
    ld h, b                                       ; $7B94: $60
    ld sp, $0301                                  ; $7B95: $31 $01 $03
    cp $39                                        ; $7B98: $FE $39
    add $CF                                       ; $7B9A: $C6 $CF
    add [hl]                                      ; $7B9C: $86
    ld c, c                                       ; $7B9D: $49
    ld [$2A19], sp                                ; $7B9E: $08 $19 $2A
    ld sp, hl                                     ; $7BA1: $F9
    ld b, $60                                     ; $7BA2: $06 $60
    ld a, $0A                                     ; $7BA4: $3E $0A
    jr nz, jr_030_7B49                            ; $7BA6: $20 $A1

    ld b, b                                       ; $7BA8: $40
    and b                                         ; $7BA9: $A0
    ld a, [$08FC]                                 ; $7BAA: $FA $FC $08
    ld h, h                                       ; $7BAD: $64
    sbc b                                         ; $7BAE: $98
    db $E4                                        ; $7BAF: $E4
    jr jr_030_7B56                                ; $7BB0: $18 $A4

    xor c                                         ; $7BB2: $A9
    ld [$0824], sp                                ; $7BB3: $08 $24 $08
    daa                                           ; $7BB6: $27
    ld [$1F3F], sp                                ; $7BB7: $08 $3F $1F
    and b                                         ; $7BBA: $A0
    jp hl                                         ; $7BBB: $E9


    ld [$4A18], sp                                ; $7BBC: $08 $18 $4A
    inc a                                         ; $7BBF: $3C
    dec bc                                        ; $7BC0: $0B
    db $10                                        ; $7BC1: $10
    jr nc, jr_030_7B8C                            ; $7BC2: $30 $C8

    db $FD                                        ; $7BC4: $FD
    ld l, b                                       ; $7BC5: $68
    ld a, [$9001]                                 ; $7BC6: $FA $01 $90
    ld [$0F50], sp                                ; $7BC9: $08 $50 $0F
    add hl, bc                                    ; $7BCC: $09
    db $10                                        ; $7BCD: $10
    inc de                                        ; $7BCE: $13

jr_030_7BCF:
    inc c                                         ; $7BCF: $0C
    ldh a, [c]                                    ; $7BD0: $F2
    ld [$CCFE], sp                                ; $7BD1: $08 $FE $CC
    ld d, d                                       ; $7BD4: $52
    adc h                                         ; $7BD5: $8C
    ld a, h                                       ; $7BD6: $7C
    sbc [hl]                                      ; $7BD7: $9E
    jr z, jr_030_7C23                             ; $7BD8: $28 $49

    adc b                                         ; $7BDA: $88
    ld l, b                                       ; $7BDB: $68
    ld a, [bc]                                    ; $7BDC: $0A
    ld [$D018], sp                                ; $7BDD: $08 $18 $D0
    cp c                                          ; $7BE0: $B9
    db $FC                                        ; $7BE1: $FC
    rst RST_38                                    ; $7BE2: $FF
    ld [$FC03], sp                                ; $7BE3: $08 $03 $FC
    dec b                                         ; $7BE6: $05
    ld hl, sp+$56                                 ; $7BE7: $F8 $56
    push hl                                       ; $7BE9: $E5
    ld [hl], b                                    ; $7BEA: $70
    inc h                                         ; $7BEB: $24
    ld [$1C3C], sp                                ; $7BEC: $08 $3C $1C
    ld c, c                                       ; $7BEF: $49
    db $FD                                        ; $7BF0: $FD
    db $EC                                        ; $7BF1: $EC
    ld l, b                                       ; $7BF2: $68
    ld a, [bc]                                    ; $7BF3: $0A
    xor b                                         ; $7BF4: $A8
    ld bc, $FD0A                                  ; $7BF5: $01 $0A $FD
    ld b, $F9                                     ; $7BF8: $06 $F9
    xor e                                         ; $7BFA: $AB
    add hl, bc                                    ; $7BFB: $09
    cp $60                                        ; $7BFC: $FE $60
    ld [bc], a                                    ; $7BFE: $02
    ld [$1C03], sp                                ; $7BFF: $08 $03 $1C
    ld c, c                                       ; $7C02: $49
    db $DD                                        ; $7C03: $DD
    adc b                                         ; $7C04: $88
    inc bc                                        ; $7C05: $03
    add b                                         ; $7C06: $80
    nop                                           ; $7C07: $00
    db $EC                                        ; $7C08: $EC
    ld bc, $08F0                                  ; $7C09: $01 $F0 $08
    rra                                           ; $7C0C: $1F
    jr nz, jr_030_7BCF                            ; $7C0D: $20 $C0

    ld b, b                                       ; $7C0F: $40
    ld h, b                                       ; $7C10: $60
    dec bc                                        ; $7C11: $0B
    jr nc, jr_030_7C33                            ; $7C12: $30 $1F

    rst RST_18                                    ; $7C14: $DF
    add b                                         ; $7C15: $80
    ld [bc], a                                    ; $7C16: $02
    dec de                                        ; $7C17: $1B
    ld b, b                                       ; $7C18: $40
    dec c                                         ; $7C19: $0D
    rst RST_38                                    ; $7C1A: $FF
    nop                                           ; $7C1B: $00
    add b                                         ; $7C1C: $80
    ld a, a                                       ; $7C1D: $7F
    add hl, bc                                    ; $7C1E: $09
    add hl, hl                                    ; $7C1F: $29
    ld bc, $550A                                  ; $7C20: $01 $0A $55

jr_030_7C23:
    inc bc                                        ; $7C23: $03
    db $10                                        ; $7C24: $10
    ld [bc], a                                    ; $7C25: $02
    ld [$200F], sp                                ; $7C26: $08 $0F $20
    ldh a, [rNR10]                                ; $7C29: $F0 $10
    adc c                                         ; $7C2B: $89
    ld l, b                                       ; $7C2C: $68
    ld a, [hl]                                    ; $7C2D: $7E
    cp $70                                        ; $7C2E: $FE $70
    jr z, @+$42                                   ; $7C30: $28 $40

    ret nz                                        ; $7C32: $C0

jr_030_7C33:
    ret                                           ; $7C33: $C9


    ret nc                                        ; $7C34: $D0

    ld [$FB01], sp                                ; $7C35: $08 $01 $FB
    ld [$E112], sp                                ; $7C38: $08 $12 $E1
    ld [hl+], a                                   ; $7C3B: $22
    pop bc                                        ; $7C3C: $C1
    adc e                                         ; $7C3D: $8B
    dec bc                                        ; $7C3E: $0B
    inc h                                         ; $7C3F: $24
    jp $08E4                                      ; $7C40: $C3 $E4 $08


    ld b, a                                       ; $7C43: $47
    sub b                                         ; $7C44: $90
    xor b                                         ; $7C45: $A8
    and b                                         ; $7C46: $A0
    ld [$1027], sp                                ; $7C47: $08 $27 $10
    rst RST_30                                    ; $7C4A: $F7
    db $E3                                        ; $7C4B: $E3
    rst RST_38                                    ; $7C4C: $FF
    ld [hl], e                                    ; $7C4D: $73
    ld a, a                                       ; $7C4E: $7F
    ld l, $02                                     ; $7C4F: $2E $02
    ld b, $C8                                     ; $7C51: $06 $C8
    inc b                                         ; $7C53: $04
    ld a, [$1248]                                 ; $7C54: $FA $48 $12
    ld bc, $FE1E                                  ; $7C57: $01 $1E $FE
    ld a, c                                       ; $7C5A: $79
    add [hl]                                      ; $7C5B: $86
    add hl, de                                    ; $7C5C: $19
    add hl, bc                                    ; $7C5D: $09
    ld b, b                                       ; $7C5E: $40
    sub b                                         ; $7C5F: $90
    adc c                                         ; $7C60: $89
    xor a                                         ; $7C61: $AF
    ld [$080F], sp                                ; $7C62: $08 $0F $08
    ld sp, hl                                     ; $7C65: $F9
    ld [$4838], sp                                ; $7C66: $08 $38 $48
    nop                                           ; $7C69: $00
    ld [hl], l                                    ; $7C6A: $75
    db $FC                                        ; $7C6B: $FC
    nop                                           ; $7C6C: $00
    jp c, $C003                                   ; $7C6D: $DA $03 $C0

    ld [$4E80], sp                                ; $7C70: $08 $80 $4E
    rst RST_18                                    ; $7C73: $DF
    xor b                                         ; $7C74: $A8
    add hl, bc                                    ; $7C75: $09
    ld a, a                                       ; $7C76: $7F
    ld e, b                                       ; $7C77: $58
    ld [$0729], sp                                ; $7C78: $08 $29 $07
    dec b                                         ; $7C7B: $05
    ld c, l                                       ; $7C7C: $4D
    rrca                                          ; $7C7D: $0F
    ld [$0708], sp                                ; $7C7E: $08 $08 $07
    add hl, bc                                    ; $7C81: $09
    add hl, hl                                    ; $7C82: $29
    ld bc, $4108                                  ; $7C83: $01 $08 $41
    ld sp, hl                                     ; $7C86: $F9
    ld [$E0F1], sp                                ; $7C87: $08 $F1 $E0
    ld hl, $E1C0                                  ; $7C8A: $21 $C0 $E1
    jr z, jr_030_7D08                             ; $7C8D: $28 $79

    ld c, $50                                     ; $7C8F: $0E $50
    ld l, b                                       ; $7C91: $68
    ld a, c                                       ; $7C92: $79
    add hl, bc                                    ; $7C93: $09
    inc b                                         ; $7C94: $04
    inc c                                         ; $7C95: $0C
    ret                                           ; $7C96: $C9


    and c                                         ; $7C97: $A1
    ld a, [$C9FF]                                 ; $7C98: $FA $FF $C9
    cp $02                                        ; $7C9B: $FE $02
    db $FC                                        ; $7C9D: $FC
    ldh a, [c]                                    ; $7C9E: $F2
    ld h, b                                       ; $7C9F: $60
    dec b                                         ; $7CA0: $05
    ld [hl-], a                                   ; $7CA1: $32
    call z, $D825                                 ; $7CA2: $CC $25 $D8
    db $FD                                        ; $7CA5: $FD
    ld [$F93D], sp                                ; $7CA6: $08 $3D $F9
    and e                                         ; $7CA9: $A3
    ld [$1A21], sp                                ; $7CAA: $08 $21 $1A
    pop bc                                        ; $7CAD: $C1
    add b                                         ; $7CAE: $80
    add c                                         ; $7CAF: $81
    cp c                                          ; $7CB0: $B9
    ld a, [bc]                                    ; $7CB1: $0A
    db $F4                                        ; $7CB2: $F4
    ld bc, $1A40                                  ; $7CB3: $01 $40 $1A
    dec b                                         ; $7CB6: $05
    rst RST_38                                    ; $7CB7: $FF
    add hl, bc                                    ; $7CB8: $09
    db $DB                                        ; $7CB9: $DB
    inc h                                         ; $7CBA: $24
    jp z, $1908                                   ; $7CBB: $CA $08 $19

    ld hl, sp+$07                                 ; $7CBE: $F8 $07

jr_030_7CC0:
    jr jr_030_7CC0                                ; $7CC0: $18 $FE

    nop                                           ; $7CC2: $00
    db $FC                                        ; $7CC3: $FC
    jp hl                                         ; $7CC4: $E9


    nop                                           ; $7CC5: $00
    ret nz                                        ; $7CC6: $C0

    rst RST_08                                    ; $7CC7: $CF
    rra                                           ; $7CC8: $1F
    ld [$0C13], sp                                ; $7CC9: $08 $13 $0C
    dec bc                                        ; $7CCC: $0B
    ld d, l                                       ; $7CCD: $55
    sub e                                         ; $7CCE: $93
    ld [$089F], sp                                ; $7CCF: $08 $9F $08
    sub d                                         ; $7CD2: $92
    ld [$089E], sp                                ; $7CD3: $08 $9E $08
    nop                                           ; $7CD6: $00
    and d                                         ; $7CD7: $A2
    inc e                                         ; $7CD8: $1C
    ld a, h                                       ; $7CD9: $7C
    jr c, jr_030_7D54                             ; $7CDA: $38 $78

    jr nc, jr_030_7D4E                            ; $7CDC: $30 $70

    jr nz, jr_030_7D35                            ; $7CDE: $20 $55

    ld h, b                                       ; $7CE0: $60
    cp b                                          ; $7CE1: $B8
    ld b, b                                       ; $7CE2: $40
    ld [$08F8], a                                 ; $7CE3: $EA $F8 $08
    adc h                                         ; $7CE6: $8C
    ld d, b                                       ; $7CE7: $50
    jr jr_030_7D0E                                ; $7CE8: $18 $24

    ret c                                         ; $7CEA: $D8

    adc b                                         ; $7CEB: $88
    jr jr_030_7CEE                                ; $7CEC: $18 $00

jr_030_7CEE:
    add b                                         ; $7CEE: $80
    daa                                           ; $7CEF: $27
    ret nz                                        ; $7CF0: $C0

    dec b                                         ; $7CF1: $05
    rst RST_20                                    ; $7CF2: $E7
    jp $6394                                      ; $7CF3: $C3 $94 $63


    rst RST_30                                    ; $7CF6: $F7
    or b                                          ; $7CF7: $B0
    sub b                                         ; $7CF8: $90
    ld [$E9FB], sp                                ; $7CF9: $08 $FB $E9
    ld a, [bc]                                    ; $7CFC: $0A
    jp c, Jump_000_0507                           ; $7CFD: $DA $07 $05

Jump_030_7D00:
    rst RST_38                                    ; $7D00: $FF
    add hl, bc                                    ; $7D01: $09
    nop                                           ; $7D02: $00
    dec a                                         ; $7D03: $3D
    ld bc, $29FE                                  ; $7D04: $01 $FE $29
    rlca                                          ; $7D07: $07

jr_030_7D08:
    rlca                                          ; $7D08: $07
    rlca                                          ; $7D09: $07
    ret nz                                        ; $7D0A: $C0

    ld [$8070], sp                                ; $7D0B: $08 $70 $80

jr_030_7D0E:
    ld d, a                                       ; $7D0E: $57
    rlca                                          ; $7D0F: $07
    ld [bc], a                                    ; $7D10: $02
    rla                                           ; $7D11: $17
    add b                                         ; $7D12: $80
    inc c                                         ; $7D13: $0C
    rst RST_38                                    ; $7D14: $FF
    nop                                           ; $7D15: $00
    add b                                         ; $7D16: $80
    ld a, a                                       ; $7D17: $7F
    dec b                                         ; $7D18: $05
    dec d                                         ; $7D19: $15
    inc de                                        ; $7D1A: $13
    inc c                                         ; $7D1B: $0C
    ld a, [de]                                    ; $7D1C: $1A
    ld [de], a                                    ; $7D1D: $12
    dec c                                         ; $7D1E: $0D
    rra                                           ; $7D1F: $1F
    inc b                                         ; $7D20: $04
    dec d                                         ; $7D21: $15
    ld e, $04                                     ; $7D22: $1E $04
    ldh [c], a                                    ; $7D24: $E2
    nop                                           ; $7D25: $00
    inc e                                         ; $7D26: $1C
    cp $7C                                        ; $7D27: $FE $7C
    db $FC                                        ; $7D29: $FC
    ld a, b                                       ; $7D2A: $78
    ld hl, sp+$40                                 ; $7D2B: $F8 $40
    ret nz                                        ; $7D2D: $C0

    db $FC                                        ; $7D2E: $FC
    ld h, l                                       ; $7D2F: $65
    inc b                                         ; $7D30: $04
    ld bc, $041C                                  ; $7D31: $01 $1C $04
    ld d, h                                       ; $7D34: $54

jr_030_7D35:
    ldh [$FF29], a                                ; $7D35: $E0 $29
    ld b, h                                       ; $7D37: $44
    add $07                                       ; $7D38: $C6 $07
    ld c, c                                       ; $7D3A: $49
    add [hl]                                      ; $7D3B: $86
    rst RST_08                                    ; $7D3C: $CF
    inc b                                         ; $7D3D: $04
    ret                                           ; $7D3E: $C9


    ld b, $59                                     ; $7D3F: $06 $59
    rrca                                          ; $7D41: $0F
    inc b                                         ; $7D42: $04
    add hl, bc                                    ; $7D43: $09
    ld c, $05                                     ; $7D44: $0E $05
    ld c, $04                                     ; $7D46: $0E $04
    and b                                         ; $7D48: $A0
    xor c                                         ; $7D49: $A9
    ld h, h                                       ; $7D4A: $64
    ld [$F07E], sp                                ; $7D4B: $08 $7E $F0

jr_030_7D4E:
    inc b                                         ; $7D4E: $04
    sub b                                         ; $7D4F: $90
    ld h, b                                       ; $7D50: $60
    rlca                                          ; $7D51: $07
    ld c, c                                       ; $7D52: $49
    sbc a                                         ; $7D53: $9F

jr_030_7D54:
    inc b                                         ; $7D54: $04
    sub c                                         ; $7D55: $91
    ld l, [hl]                                    ; $7D56: $6E
    call c, $926C                                 ; $7D57: $DC $6C $92
    inc b                                         ; $7D5A: $04
    ld a, [$FF0F]                                 ; $7D5B: $FA $0F $FF
    db $DD                                        ; $7D5E: $DD
    inc bc                                        ; $7D5F: $03
    ld bc, $043F                                  ; $7D60: $01 $3F $04
    jr nz, @+$6B                                  ; $7D63: $20 $69

    rra                                           ; $7D65: $1F
    dec b                                         ; $7D66: $05
    dec d                                         ; $7D67: $15
    rst RST_38                                    ; $7D68: $FF
    inc b                                         ; $7D69: $04
    add b                                         ; $7D6A: $80
    ld a, a                                       ; $7D6B: $7F
    inc c                                         ; $7D6C: $0C
    rlc h                                         ; $7D6D: $CB $04
    ld e, h                                       ; $7D6F: $5C
    inc bc                                        ; $7D70: $03
    rlca                                          ; $7D71: $07
    inc b                                         ; $7D72: $04
    inc a                                         ; $7D73: $3C
    inc b                                         ; $7D74: $04
    inc [hl]                                      ; $7D75: $34
    add a                                         ; $7D76: $87
    dec a                                         ; $7D77: $3D
    ld e, $3E                                     ; $7D78: $1E $3E
    db $10                                        ; $7D7A: $10
    jr nc, jr_030_7DE2                            ; $7D7B: $30 $65

    ld a, [hl]                                    ; $7D7D: $7E
    ld e, l                                       ; $7D7E: $5D
    inc b                                         ; $7D7F: $04
    inc d                                         ; $7D80: $14
    db $E3                                        ; $7D81: $E3
    inc h                                         ; $7D82: $24
    jp $1EC7                                      ; $7D83: $C3 $C7 $1E


    inc c                                         ; $7D86: $0C
    di                                            ; $7D87: $F3
    db $EB                                        ; $7D88: $EB
    inc c                                         ; $7D89: $0C
    dec b                                         ; $7D8A: $05
    inc d                                         ; $7D8B: $14
    add a                                         ; $7D8C: $87
    inc b                                         ; $7D8D: $04
    add h                                         ; $7D8E: $84
    ld a, h                                       ; $7D8F: $7C
    inc c                                         ; $7D90: $0C
    sub [hl]                                      ; $7D91: $96
    sub l                                         ; $7D92: $95
    ld [bc], a                                    ; $7D93: $02
    ld b, $1C                                     ; $7D94: $06 $1C
    inc b                                         ; $7D96: $04
    ei                                            ; $7D97: $FB
    nop                                           ; $7D98: $00
    ldh a, [$FFB1]                                ; $7D99: $F0 $B1
    inc b                                         ; $7D9B: $04
    rrca                                          ; $7D9C: $0F
    add hl, bc                                    ; $7D9D: $09
    ld e, b                                       ; $7D9E: $58
    pop af                                        ; $7D9F: $F1
    ld c, $FE                                     ; $7DA0: $0E $FE
    db $10                                        ; $7DA2: $10
    or a                                          ; $7DA3: $B7
    ret nc                                        ; $7DA4: $D0

    ldh [rNR23], a                                ; $7DA5: $E0 $18
    db $10                                        ; $7DA7: $10
    pop hl                                        ; $7DA8: $E1
    call c, Call_000_1F85                         ; $7DA9: $DC $85 $1F
    jp c, Jump_000_1C04                           ; $7DAC: $DA $04 $1C

    ccf                                           ; $7DAF: $3F
    ld [hl], e                                    ; $7DB0: $73
    ld [bc], a                                    ; $7DB1: $02
    ld a, a                                       ; $7DB2: $7F
    inc b                                         ; $7DB3: $04
    ret nz                                        ; $7DB4: $C0

    rst RST_30                                    ; $7DB5: $F7
    jr z, jr_030_7DBD                             ; $7DB6: $28 $05

    dec d                                         ; $7DB8: $15
    inc bc                                        ; $7DB9: $03
    ld bc, $E406                                  ; $7DBA: $01 $06 $E4

jr_030_7DBD:
    ld [$7874], sp                                ; $7DBD: $08 $74 $78
    ld [$3D34], sp                                ; $7DC0: $08 $34 $3D
    jr c, jr_030_7DD9                             ; $7DC3: $38 $14

    jr nz, jr_030_7E27                            ; $7DC5: $20 $60

    xor d                                         ; $7DC7: $AA
    inc l                                         ; $7DC8: $2C
    ld b, b                                       ; $7DC9: $40
    ld c, [hl]                                    ; $7DCA: $4E
    db $FC                                        ; $7DCB: $FC
    inc b                                         ; $7DCC: $04
    ld [$10FC], sp                                ; $7DCD: $08 $FC $10
    cp a                                          ; $7DD0: $BF
    call nz, Call_000_3090                        ; $7DD1: $C4 $90 $30
    rlca                                          ; $7DD4: $07
    jr nz, jr_030_7DF3                            ; $7DD5: $20 $1C

    ld d, b                                       ; $7DD7: $50
    xor b                                         ; $7DD8: $A8

jr_030_7DD9:
    ldh [c], a                                    ; $7DD9: $E2
    ld [$3504], sp                                ; $7DDA: $08 $04 $35
    ld hl, sp+$70                                 ; $7DDD: $F8 $70
    ld a, h                                       ; $7DDF: $7C
    ld a, h                                       ; $7DE0: $7C
    inc a                                         ; $7DE1: $3C

jr_030_7DE2:
    ret nz                                        ; $7DE2: $C0

    jp Jump_000_2902                              ; $7DE3: $C3 $02 $29


    add b                                         ; $7DE6: $80
    jr nz, jr_030_7DE9                            ; $7DE7: $20 $00

jr_030_7DE9:
    rrca                                          ; $7DE9: $0F
    inc b                                         ; $7DEA: $04
    rra                                           ; $7DEB: $1F
    dec b                                         ; $7DEC: $05
    ccf                                           ; $7DED: $3F
    ld a, [bc]                                    ; $7DEE: $0A
    ld a, a                                       ; $7DEF: $7F
    ld b, $11                                     ; $7DF0: $06 $11
    ld a, e                                       ; $7DF2: $7B

jr_030_7DF3:
    ld [bc], a                                    ; $7DF3: $02
    ld a, c                                       ; $7DF4: $79
    db $10                                        ; $7DF5: $10
    inc b                                         ; $7DF6: $04
    inc l                                         ; $7DF7: $2C
    ld a, b                                       ; $7DF8: $78
    cp l                                          ; $7DF9: $BD
    inc b                                         ; $7DFA: $04
    rst RST_38                                    ; $7DFB: $FF
    dec b                                         ; $7DFC: $05
    jr nc, jr_030_7E03                            ; $7DFD: $30 $04

    inc bc                                        ; $7DFF: $03
    cp $04                                        ; $7E00: $FE $04
    ld [hl], l                                    ; $7E02: $75

jr_030_7E03:
    add d                                         ; $7E03: $82

Call_030_7E04:
    dec b                                         ; $7E04: $05
    jr nc, jr_030_7E07                            ; $7E05: $30 $00

jr_030_7E07:
    ret nz                                        ; $7E07: $C0

    inc b                                         ; $7E08: $04
    ldh [$FF08], a                                ; $7E09: $E0 $08
    nop                                           ; $7E0B: $00
    ldh a, [$FFA0]                                ; $7E0C: $F0 $A0
    ld hl, sp+$04                                 ; $7E0E: $F8 $04
    cp b                                          ; $7E10: $B8
    sbc h                                         ; $7E11: $9C
    jr nc, jr_030_7E30                            ; $7E12: $30 $1C

    db $FD                                        ; $7E14: $FD
    ld b, $8C                                     ; $7E15: $06 $8C
    add h                                         ; $7E17: $84
    rlca                                          ; $7E18: $07
    or h                                          ; $7E19: $B4
    inc b                                         ; $7E1A: $04
    inc d                                         ; $7E1B: $14
    inc b                                         ; $7E1C: $04
    ld l, $18                                     ; $7E1D: $2E $18
    ld a, d                                       ; $7E1F: $7A
    cp l                                          ; $7E20: $BD

jr_030_7E21:
    dec d                                         ; $7E21: $15
    cp l                                          ; $7E22: $BD
    inc bc                                        ; $7E23: $03
    nop                                           ; $7E24: $00
    add hl, hl                                    ; $7E25: $29
    rla                                           ; $7E26: $17

jr_030_7E27:
    add $AA                                       ; $7E27: $C6 $AA
    ld b, h                                       ; $7E29: $44
    ld a, [de]                                    ; $7E2A: $1A
    ld bc, $0800                                  ; $7E2B: $01 $00 $08
    adc a                                         ; $7E2E: $8F
    xor c                                         ; $7E2F: $A9

jr_030_7E30:
    dec b                                         ; $7E30: $05
    inc c                                         ; $7E31: $0C
    inc b                                         ; $7E32: $04
    ld e, h                                       ; $7E33: $5C
    inc b                                         ; $7E34: $04
    inc l                                         ; $7E35: $2C
    or b                                          ; $7E36: $B0
    dec e                                         ; $7E37: $1D
    ld b, c                                       ; $7E38: $41
    ld c, h                                       ; $7E39: $4C
    inc b                                         ; $7E3A: $04
    add hl, de                                    ; $7E3B: $19
    ld a, [hl]                                    ; $7E3C: $7E
    ld e, $7F                                     ; $7E3D: $1E $7F
    rra                                           ; $7E3F: $1F
    ld b, $17                                     ; $7E40: $06 $17
    rrca                                          ; $7E42: $0F

jr_030_7E43:
    ccf                                           ; $7E43: $3F
    rlca                                          ; $7E44: $07
    db $10                                        ; $7E45: $10
    inc bc                                        ; $7E46: $03
    ld e, b                                       ; $7E47: $58
    inc c                                         ; $7E48: $0C
    adc c                                         ; $7E49: $89
    ld d, [hl]                                    ; $7E4A: $56
    jr c, jr_030_7E21                             ; $7E4B: $38 $D4

    add hl, sp                                    ; $7E4D: $39
    db $F4                                        ; $7E4E: $F4
    cp e                                          ; $7E4F: $BB
    jr jr_030_7E56                                ; $7E50: $18 $04

    sub b                                         ; $7E52: $90
    ld a, $FF                                     ; $7E53: $3E $FF
    xor b                                         ; $7E55: $A8

jr_030_7E56:
    inc b                                         ; $7E56: $04

jr_030_7E57:
    nop                                           ; $7E57: $00
    jr jr_030_7E5F                                ; $7E58: $18 $05

    ld c, b                                       ; $7E5A: $48
    ldh a, [$FF72]                                ; $7E5B: $F0 $72
    adc h                                         ; $7E5D: $8C
    inc b                                         ; $7E5E: $04

jr_030_7E5F:
    dec c                                         ; $7E5F: $0D
    dec b                                         ; $7E60: $05
    jr jr_030_7E43                                ; $7E61: $18 $E0

    xor b                                         ; $7E63: $A8
    ret nz                                        ; $7E64: $C0

    rst RST_38                                    ; $7E65: $FF
    ld [$0834], sp                                ; $7E66: $08 $34 $08
    inc b                                         ; $7E69: $04
    nop                                           ; $7E6A: $00
    and b                                         ; $7E6B: $A0
    inc b                                         ; $7E6C: $04
    sbc h                                         ; $7E6D: $9C
    ld e, [hl]                                    ; $7E6E: $5E
    dec b                                         ; $7E6F: $05
    xor h                                         ; $7E70: $AC
    ld a, [bc]                                    ; $7E71: $0A
    cp h                                          ; $7E72: $BC
    adc h                                         ; $7E73: $8C
    inc b                                         ; $7E74: $04

jr_030_7E75:
    inc e                                         ; $7E75: $1C
    ld a, c                                       ; $7E76: $79
    rra                                           ; $7E77: $1F
    ld [de], a                                    ; $7E78: $12
    ld a, h                                       ; $7E79: $7C
    ld [$8A04], sp                                ; $7E7A: $08 $04 $8A
    inc b                                         ; $7E7D: $04
    jr z, jr_030_7E84                             ; $7E7E: $28 $04

    ld e, [hl]                                    ; $7E80: $5E
    rst RST_00                                    ; $7E81: $C7
    inc b                                         ; $7E82: $04
    add e                                         ; $7E83: $83

jr_030_7E84:
    ld [$E8E0], sp                                ; $7E84: $08 $E0 $E8
    inc h                                         ; $7E87: $24
    add d                                         ; $7E88: $82
    ld a, [hl]                                    ; $7E89: $7E
    cp d                                          ; $7E8A: $BA
    ld a, l                                       ; $7E8B: $7D
    adc c                                         ; $7E8C: $89
    sbc b                                         ; $7E8D: $98
    ld [$08B4], sp                                ; $7E8E: $08 $B4 $08
    ld hl, sp+$51                                 ; $7E91: $F8 $51
    inc h                                         ; $7E93: $24
    inc b                                         ; $7E94: $04
    inc e                                         ; $7E95: $1C
    ret nz                                        ; $7E96: $C0

    cp h                                          ; $7E97: $BC
    ld [hl], b                                    ; $7E98: $70
    inc a                                         ; $7E99: $3C
    inc b                                         ; $7E9A: $04
    ld a, [de]                                    ; $7E9B: $1A
    inc d                                         ; $7E9C: $14
    ld a, d                                       ; $7E9D: $7A
    db $10                                        ; $7E9E: $10
    sbc h                                         ; $7E9F: $9C
    inc b                                         ; $7EA0: $04
    ld a, b                                       ; $7EA1: $78
    rlca                                          ; $7EA2: $07
    add hl, de                                    ; $7EA3: $19
    db $FD                                        ; $7EA4: $FD
    xor h                                         ; $7EA5: $AC
    cpl                                           ; $7EA6: $2F
    add c                                         ; $7EA7: $81
    nop                                           ; $7EA8: $00
    and h                                         ; $7EA9: $A4
    inc b                                         ; $7EAA: $04
    jr z, jr_030_7EB2                             ; $7EAB: $28 $05

    ld a, [hl]                                    ; $7EAD: $7E
    ld b, h                                       ; $7EAE: $44
    jr z, jr_030_7E75                             ; $7EAF: $28 $C4

    dec d                                         ; $7EB1: $15

jr_030_7EB2:
    db $10                                        ; $7EB2: $10
    inc b                                         ; $7EB3: $04
    db $10                                        ; $7EB4: $10
    ld e, h                                       ; $7EB5: $5C
    ld l, e                                       ; $7EB6: $6B
    or b                                          ; $7EB7: $B0
    sbc l                                         ; $7EB8: $9D
    dec b                                         ; $7EB9: $05
    inc c                                         ; $7EBA: $0C
    ld c, $2C                                     ; $7EBB: $0E $2C
    xor h                                         ; $7EBD: $AC
    dec l                                         ; $7EBE: $2D
    xor h                                         ; $7EBF: $AC
    dec e                                         ; $7EC0: $1D
    jr jr_030_7E57                                ; $7EC1: $18 $94

    ld a, [de]                                    ; $7EC3: $1A
    inc b                                         ; $7EC4: $04
    inc l                                         ; $7EC5: $2C
    ld a, a                                       ; $7EC6: $7F
    rra                                           ; $7EC7: $1F
    adc e                                         ; $7EC8: $8B
    inc b                                         ; $7EC9: $04
    rrca                                          ; $7ECA: $0F
    ccf                                           ; $7ECB: $3F
    rlca                                          ; $7ECC: $07
    db $10                                        ; $7ECD: $10
    inc bc                                        ; $7ECE: $03
    jr c, jr_030_7EDD                             ; $7ECF: $38 $0C

    or d                                          ; $7ED1: $B2
    cp d                                          ; $7ED2: $BA
    add d                                         ; $7ED3: $82
    sub h                                         ; $7ED4: $94
    nop                                           ; $7ED5: $00
    rst RST_28                                    ; $7ED6: $EF
    jp nz, $C404                                  ; $7ED7: $C2 $04 $C4

    ccf                                           ; $7EDA: $3F
    rst RST_38                                    ; $7EDB: $FF
    xor b                                         ; $7EDC: $A8

jr_030_7EDD:
    inc b                                         ; $7EDD: $04
    nop                                           ; $7EDE: $00
    inc l                                         ; $7EDF: $2C
    dec b                                         ; $7EE0: $05
    ld c, b                                       ; $7EE1: $48
    sub h                                         ; $7EE2: $94
    ld l, l                                       ; $7EE3: $6D
    adc h                                         ; $7EE4: $8C
    inc b                                         ; $7EE5: $04
    inc c                                         ; $7EE6: $0C
    ldh a, [rTIMA]                                ; $7EE7: $F0 $05
    sbc h                                         ; $7EE9: $9C
    ldh [$FFA8], a                                ; $7EEA: $E0 $A8
    ld a, a                                       ; $7EEC: $7F
    ret nz                                        ; $7EED: $C0

    ld [$0834], sp                                ; $7EEE: $08 $34 $08
    ld a, c                                       ; $7EF1: $79
    and b                                         ; $7EF2: $A0
    inc b                                         ; $7EF3: $04
    sbc h                                         ; $7EF4: $9C
    ld d, l                                       ; $7EF5: $55
    dec b                                         ; $7EF6: $05
    xor h                                         ; $7EF7: $AC
    ld a, [bc]                                    ; $7EF8: $0A
    cp h                                          ; $7EF9: $BC
    dec d                                         ; $7EFA: $15
    inc b                                         ; $7EFB: $04
    dec bc                                        ; $7EFC: $0B
    inc b                                         ; $7EFD: $04
    ld a, a                                       ; $7EFE: $7F
    rla                                           ; $7EFF: $17
    push de                                       ; $7F00: $D5
    inc b                                         ; $7F01: $04
    adc d                                         ; $7F02: $8A
    inc b                                         ; $7F03: $04
    db $10                                        ; $7F04: $10
    and l                                         ; $7F05: $A5
    inc bc                                        ; $7F06: $03
    cp $03                                        ; $7F07: $FE $03
    dec [hl]                                      ; $7F09: $35
    adc c                                         ; $7F0A: $89
    sbc b                                         ; $7F0B: $98
    ld [$08B4], sp                                ; $7F0C: $08 $B4 $08
    ld hl, sp+$5F                                 ; $7F0F: $F8 $5F
    db $E4                                        ; $7F11: $E4
    inc b                                         ; $7F12: $04
    db $FC                                        ; $7F13: $FC
    inc d                                         ; $7F14: $14
    rlca                                          ; $7F15: $07
    or b                                          ; $7F16: $B0
    ld [hl], b                                    ; $7F17: $70
    rlca                                          ; $7F18: $07
    cp $07                                        ; $7F19: $FE $07
    rlca                                          ; $7F1B: $07
    dec b                                         ; $7F1C: $05
    adc a                                         ; $7F1D: $8F
    inc bc                                        ; $7F1E: $03
    inc bc                                        ; $7F1F: $03
    ld bc, $EAFE                                  ; $7F20: $01 $FE $EA
    inc b                                         ; $7F23: $04
    adc a                                         ; $7F24: $8F
    dec b                                         ; $7F25: $05
    db $EC                                        ; $7F26: $EC
    inc b                                         ; $7F27: $04
    call c, $AC04                                 ; $7F28: $DC $04 $AC
    cp b                                          ; $7F2B: $B8
    inc b                                         ; $7F2C: $04
    ld e, h                                       ; $7F2D: $5C
    ld c, $8F                                     ; $7F2E: $0E $8F
    rlca                                          ; $7F30: $07
    rrca                                          ; $7F31: $0F
    ccf                                           ; $7F32: $3F
    rlca                                          ; $7F33: $07
    sub d                                         ; $7F34: $92
    db $10                                        ; $7F35: $10
    inc bc                                        ; $7F36: $03
    inc c                                         ; $7F37: $0C
    inc c                                         ; $7F38: $0C
    nop                                           ; $7F39: $00
    db $FD                                        ; $7F3A: $FD
    add h                                         ; $7F3B: $84
    ld a, [$04AA]                                 ; $7F3C: $FA $AA $04
    push af                                       ; $7F3F: $F5
    inc b                                         ; $7F40: $04
    ld [$D404], a                                 ; $7F41: $EA $04 $D4
    inc b                                         ; $7F44: $04
    xor b                                         ; $7F45: $A8
    db $EB                                        ; $7F46: $EB
    cp c                                          ; $7F47: $B9
    inc [hl]                                      ; $7F48: $34
    dec b                                         ; $7F49: $05
    ld c, h                                       ; $7F4A: $4C
    add h                                         ; $7F4B: $84
    adc h                                         ; $7F4C: $8C
    inc b                                         ; $7F4D: $04
    ld e, b                                       ; $7F4E: $58
    add a                                         ; $7F4F: $87
    ld b, $18                                     ; $7F50: $06 $18
    ldh [$FF30], a                                ; $7F52: $E0 $30
    ret nz                                        ; $7F54: $C0

    ld [$0834], sp                                ; $7F55: $08 $34 $08
    add b                                         ; $7F58: $80
    inc b                                         ; $7F59: $04
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
