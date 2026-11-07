; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    ld a, [bc]                                    ; $4000: $0A
    inc b                                         ; $4001: $04
    rrca                                          ; $4002: $0F
    inc b                                         ; $4003: $04
    rst RST_18                                    ; $4004: $DF
    dec bc                                        ; $4005: $0B
    cp l                                          ; $4006: $BD
    ld b, a                                       ; $4007: $47
    ld sp, hl                                     ; $4008: $F9
    ld l, a                                       ; $4009: $6F
    ld [hl], a                                    ; $400A: $77
    cpl                                           ; $400B: $2F
    ccf                                           ; $400C: $3F
    inc e                                         ; $400D: $1C
    ld a, h                                       ; $400E: $7C
    jr jr_00F_406F                                ; $400F: $18 $5E

    jr z, @+$41                                   ; $4011: $28 $3F

    ld b, $07                                     ; $4013: $06 $07
    ld bc, $011F                                  ; $4015: $01 $1F $01
    daa                                           ; $4018: $27
    ld e, $7E                                     ; $4019: $1E $7E
    inc a                                         ; $401B: $3C
    cp $50                                        ; $401C: $FE $50
    ret nc                                        ; $401E: $D0

    nop                                           ; $401F: $00
    ld d, [hl]                                    ; $4020: $56
    dec l                                         ; $4021: $2D
    rst RST_30                                    ; $4022: $F7
    inc c                                         ; $4023: $0C

jr_00F_4024:
    sub $2D                                       ; $4024: $D6 $2D
    rst RST_38                                    ; $4026: $FF
    inc c                                         ; $4027: $0C
    call z, Call_00F_6133                         ; $4028: $CC $33 $61
    ld e, $52                                     ; $402B: $1E $52
    dec l                                         ; $402D: $2D
    sbc $61                                       ; $402E: $DE $61
    cp a                                          ; $4030: $BF
    ld b, b                                       ; $4031: $40
    ei                                            ; $4032: $FB
    ld b, b                                       ; $4033: $40

jr_00F_4034:
    db $DD                                        ; $4034: $DD
    jr nz, jr_00F_4034                            ; $4035: $20 $FD

    jr nz, jr_00F_4024                            ; $4037: $20 $EB

    db $10                                        ; $4039: $10
    ld a, e                                       ; $403A: $7B
    db $10                                        ; $403B: $10
    pop de                                        ; $403C: $D1
    ld h, b                                       ; $403D: $60
    ldh [rP1], a                                  ; $403E: $E0 $00
    rst RST_18                                    ; $4040: $DF
    ld [bc], a                                    ; $4041: $02
    ld a, a                                       ; $4042: $7F
    adc l                                         ; $4043: $8D
    db $DB                                        ; $4044: $DB
    ld l, $59                                     ; $4045: $2E $59
    xor a                                         ; $4047: $AF
    cp $0F                                        ; $4048: $FE $0F
    rst RST_28                                    ; $404A: $EF
    add e                                         ; $404B: $83
    ld [hl], e                                    ; $404C: $73
    add c                                         ; $404D: $81
    ld [hl], a                                    ; $404E: $77
    pop bc                                        ; $404F: $C1
    ccf                                           ; $4050: $3F
    add $FE                                       ; $4051: $C6 $FE
    ld c, b                                       ; $4053: $48
    cp h                                          ; $4054: $BC
    ld c, b                                       ; $4055: $48
    rst RST_38                                    ; $4056: $FF

jr_00F_4057:
    add h                                         ; $4057: $84
    ld e, [hl]                                    ; $4058: $5E
    add e                                         ; $4059: $83
    rst RST_20                                    ; $405A: $E7
    add e                                         ; $405B: $83
    or e                                          ; $405C: $B3
    ld h, b                                       ; $405D: $60
    ld [hl], b                                    ; $405E: $70
    nop                                           ; $405F: $00
    nop                                           ; $4060: $00
    nop                                           ; $4061: $00
    or b                                          ; $4062: $B0
    nop                                           ; $4063: $00
    ret nc                                        ; $4064: $D0

    jr nz, jr_00F_4057                            ; $4065: $20 $F0

    ld h, b                                       ; $4067: $60
    ldh [rLCDC], a                                ; $4068: $E0 $40
    ret nz                                        ; $406A: $C0

    add b                                         ; $406B: $80
    ldh [$FF80], a                                ; $406C: $E0 $80
    and b                                         ; $406E: $A0

jr_00F_406F:
    ld b, b                                       ; $406F: $40
    ret nz                                        ; $4070: $C0

    nop                                           ; $4071: $00
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00
    nop                                           ; $4074: $00
    nop                                           ; $4075: $00
    add b                                         ; $4076: $80
    nop                                           ; $4077: $00
    ld b, b                                       ; $4078: $40
    add b                                         ; $4079: $80
    ldh [$FFC0], a                                ; $407A: $E0 $C0
    ldh a, [$FFA0]                                ; $407C: $F0 $A0
    or b                                          ; $407E: $B0
    nop                                           ; $407F: $00
    inc b                                         ; $4080: $04
    inc bc                                        ; $4081: $03
    dec b                                         ; $4082: $05
    ld [bc], a                                    ; $4083: $02
    dec bc                                        ; $4084: $0B
    ld b, $0A                                     ; $4085: $06 $0A
    dec b                                         ; $4087: $05
    rla                                           ; $4088: $17
    dec c                                         ; $4089: $0D
    rra                                           ; $408A: $1F
    dec b                                         ; $408B: $05
    rlca                                          ; $408C: $07
    nop                                           ; $408D: $00
    inc bc                                        ; $408E: $03
    ld bc, $0107                                  ; $408F: $01 $07 $01
    rlca                                          ; $4092: $07
    ld [bc], a                                    ; $4093: $02
    rrca                                          ; $4094: $0F
    ld [bc], a                                    ; $4095: $02
    ld a, [bc]                                    ; $4096: $0A
    dec b                                         ; $4097: $05
    ld a, [de]                                    ; $4098: $1A
    dec b                                         ; $4099: $05
    rla                                           ; $409A: $17
    dec bc                                        ; $409B: $0B
    db $DD                                        ; $409C: $DD
    dec bc                                        ; $409D: $0B
    ld e, a                                       ; $409E: $5F
    add e                                         ; $409F: $83
    ld hl, sp-$50                                 ; $40A0: $F8 $B0
    db $FC                                        ; $40A2: $FC
    ret c                                         ; $40A3: $D8

    cp h                                          ; $40A4: $BC
    ret c                                         ; $40A5: $D8

    cp $EC                                        ; $40A6: $FE $EC
    cp $E8                                        ; $40A8: $FE $E8
    ld hl, sp-$80                                 ; $40AA: $F8 $80
    ldh a, [rNR41]                                ; $40AC: $F0 $20
    ld hl, sp+$60                                 ; $40AE: $F8 $60
    ld a, b                                       ; $40B0: $78
    or b                                          ; $40B1: $B0
    ld a, h                                       ; $40B2: $7C
    or b                                          ; $40B3: $B0
    ld a, h                                       ; $40B4: $7C
    ret c                                         ; $40B5: $D8

    cp $D8                                        ; $40B6: $FE $D8
    cp $EC                                        ; $40B8: $FE $EC
    sbc [hl]                                      ; $40BA: $9E
    db $EC                                        ; $40BB: $EC
    cp $CC                                        ; $40BC: $FE $CC
    call z, Call_000_00B0                         ; $40BE: $CC $B0 $00
    nop                                           ; $40C1: $00
    nop                                           ; $40C2: $00
    nop                                           ; $40C3: $00
    nop                                           ; $40C4: $00
    nop                                           ; $40C5: $00
    nop                                           ; $40C6: $00
    nop                                           ; $40C7: $00
    nop                                           ; $40C8: $00
    nop                                           ; $40C9: $00
    nop                                           ; $40CA: $00
    nop                                           ; $40CB: $00
    nop                                           ; $40CC: $00
    nop                                           ; $40CD: $00
    nop                                           ; $40CE: $00
    nop                                           ; $40CF: $00
    nop                                           ; $40D0: $00
    nop                                           ; $40D1: $00
    nop                                           ; $40D2: $00
    nop                                           ; $40D3: $00
    nop                                           ; $40D4: $00
    nop                                           ; $40D5: $00
    nop                                           ; $40D6: $00
    nop                                           ; $40D7: $00
    nop                                           ; $40D8: $00
    nop                                           ; $40D9: $00
    nop                                           ; $40DA: $00
    nop                                           ; $40DB: $00
    ret nz                                        ; $40DC: $C0

    nop                                           ; $40DD: $00
    and b                                         ; $40DE: $A0
    ld b, b                                       ; $40DF: $40
    nop                                           ; $40E0: $00
    nop                                           ; $40E1: $00
    nop                                           ; $40E2: $00
    nop                                           ; $40E3: $00
    nop                                           ; $40E4: $00
    nop                                           ; $40E5: $00
    nop                                           ; $40E6: $00
    nop                                           ; $40E7: $00
    nop                                           ; $40E8: $00
    nop                                           ; $40E9: $00
    nop                                           ; $40EA: $00
    nop                                           ; $40EB: $00
    nop                                           ; $40EC: $00
    nop                                           ; $40ED: $00
    nop                                           ; $40EE: $00
    nop                                           ; $40EF: $00
    nop                                           ; $40F0: $00
    nop                                           ; $40F1: $00
    nop                                           ; $40F2: $00
    nop                                           ; $40F3: $00
    nop                                           ; $40F4: $00
    nop                                           ; $40F5: $00
    nop                                           ; $40F6: $00
    nop                                           ; $40F7: $00
    jr jr_00F_40FA                                ; $40F8: $18 $00

jr_00F_40FA:
    inc l                                         ; $40FA: $2C
    jr jr_00F_415B                                ; $40FB: $18 $5E

    inc a                                         ; $40FD: $3C
    sbc a                                         ; $40FE: $9F
    ld l, [hl]                                    ; $40FF: $6E
    stop                                          ; $4100: $10 $00
    dec sp                                        ; $4102: $3B
    db $10                                        ; $4103: $10
    dec a                                         ; $4104: $3D
    inc bc                                        ; $4105: $03
    ccf                                           ; $4106: $3F
    inc e                                         ; $4107: $1C
    ld a, h                                       ; $4108: $7C
    daa                                           ; $4109: $27
    rst RST_20                                    ; $410A: $E7
    ld b, e                                       ; $410B: $43
    db $E3                                        ; $410C: $E3
    ld b, c                                       ; $410D: $41
    ld [hl], c                                    ; $410E: $71
    nop                                           ; $410F: $00
    ld a, h                                       ; $4110: $7C
    jr nc, jr_00F_4171                            ; $4111: $30 $5E

    inc a                                         ; $4113: $3C
    cpl                                           ; $4114: $2F
    jr jr_00F_4136                                ; $4115: $18 $1F

    ld b, $06                                     ; $4117: $06 $06
    nop                                           ; $4119: $00
    nop                                           ; $411A: $00
    nop                                           ; $411B: $00
    nop                                           ; $411C: $00
    nop                                           ; $411D: $00
    nop                                           ; $411E: $00
    nop                                           ; $411F: $00
    sbc a                                         ; $4120: $9F
    ld [bc], a                                    ; $4121: $02
    xor a                                         ; $4122: $AF
    db $10                                        ; $4123: $10
    ld a, c                                       ; $4124: $79
    jr nc, @+$01                                  ; $4125: $30 $FF

    nop                                           ; $4127: $00
    adc a                                         ; $4128: $8F
    db $FC                                        ; $4129: $FC
    rst RST_00                                    ; $412A: $C7
    db $FC                                        ; $412B: $FC
    rst RST_38                                    ; $412C: $FF
    ld a, h                                       ; $412D: $7C
    ld a, a                                       ; $412E: $7F
    jr jr_00F_414F                                ; $412F: $18 $1E

    inc bc                                        ; $4131: $03
    dec bc                                        ; $4132: $0B
    inc b                                         ; $4133: $04
    rrca                                          ; $4134: $0F
    inc b                                         ; $4135: $04

jr_00F_4136:
    dec b                                         ; $4136: $05
    inc bc                                        ; $4137: $03
    inc bc                                        ; $4138: $03
    nop                                           ; $4139: $00
    ld bc, $0300                                  ; $413A: $01 $00 $03
    ld bc, $0003                                  ; $413D: $01 $03 $00
    ld [hl], c                                    ; $4140: $71
    cp $FF                                        ; $4141: $FE $FF
    ld a, c                                       ; $4143: $79
    ld e, c                                       ; $4144: $59
    or [hl]                                       ; $4145: $B6
    rst RST_18                                    ; $4146: $DF
    jr nc, jr_00F_41A2                            ; $4147: $30 $59

    or [hl]                                       ; $4149: $B6
    rst RST_38                                    ; $414A: $FF
    jr nc, jr_00F_417E                            ; $414B: $30 $31

    adc $87                                       ; $414D: $CE $87

jr_00F_414F:
    ld a, b                                       ; $414F: $78
    call $FFB7                                    ; $4150: $CD $B7 $FF
    nop                                           ; $4153: $00
    rst RST_00                                    ; $4154: $C7
    nop                                           ; $4155: $00
    rst RST_28                                    ; $4156: $EF
    nop                                           ; $4157: $00
    ld a, l                                       ; $4158: $7D
    add e                                         ; $4159: $83
    rst RST_38                                    ; $415A: $FF

jr_00F_415B:
    add h                                         ; $415B: $84
    ld l, e                                       ; $415C: $6B
    add h                                         ; $415D: $84
    add $03                                       ; $415E: $C6 $03
    ld sp, hl                                     ; $4160: $F9
    ret nz                                        ; $4161: $C0

    push af                                       ; $4162: $F5
    ret z                                         ; $4163: $C8

    cp $0C                                        ; $4164: $FE $0C
    ld a, a                                       ; $4166: $7F
    nop                                           ; $4167: $00
    db $E3                                        ; $4168: $E3
    ccf                                           ; $4169: $3F
    ld [hl], c                                    ; $416A: $71
    cp a                                          ; $416B: $BF
    ld a, a                                       ; $416C: $7F
    cp [hl]                                       ; $416D: $BE
    cp $38                                        ; $416E: $FE $38
    cp b                                          ; $4170: $B8

jr_00F_4171:
    nop                                           ; $4171: $00
    ld b, b                                       ; $4172: $40
    add b                                         ; $4173: $80
    ret nz                                        ; $4174: $C0

    add b                                         ; $4175: $80
    ld b, b                                       ; $4176: $40
    add b                                         ; $4177: $80
    ret nz                                        ; $4178: $C0

    nop                                           ; $4179: $00
    ret nz                                        ; $417A: $C0

    nop                                           ; $417B: $00
    add b                                         ; $417C: $80
    nop                                           ; $417D: $00

jr_00F_417E:
    ret nz                                        ; $417E: $C0

    add b                                         ; $417F: $80
    ret nz                                        ; $4180: $C0

    nop                                           ; $4181: $00
    ld a, b                                       ; $4182: $78
    ret nz                                        ; $4183: $C0

    db $FC                                        ; $4184: $FC

jr_00F_4185:
    jr c, jr_00F_4185                             ; $4185: $38 $FE

    db $E4                                        ; $4187: $E4
    rst RST_20                                    ; $4188: $E7
    jp nz, $82C7                                  ; $4189: $C2 $C7 $82

    adc [hl]                                      ; $418C: $8E

jr_00F_418D:
    nop                                           ; $418D: $00
    ld a, $0C                                     ; $418E: $3E $0C
    ld a, d                                       ; $4190: $7A
    inc a                                         ; $4191: $3C
    db $F4                                        ; $4192: $F4
    jr jr_00F_418D                                ; $4193: $18 $F8

    ld h, b                                       ; $4195: $60
    ld h, b                                       ; $4196: $60
    nop                                           ; $4197: $00
    nop                                           ; $4198: $00
    nop                                           ; $4199: $00
    nop                                           ; $419A: $00
    nop                                           ; $419B: $00
    nop                                           ; $419C: $00
    nop                                           ; $419D: $00
    nop                                           ; $419E: $00
    nop                                           ; $419F: $00
    inc bc                                        ; $41A0: $03
    nop                                           ; $41A1: $00

jr_00F_41A2:
    dec b                                         ; $41A2: $05
    inc bc                                        ; $41A3: $03
    dec bc                                        ; $41A4: $0B
    rlca                                          ; $41A5: $07
    inc de                                        ; $41A6: $13
    dec c                                         ; $41A7: $0D
    daa                                           ; $41A8: $27
    ld a, [de]                                    ; $41A9: $1A
    cpl                                           ; $41AA: $2F
    dec de                                        ; $41AB: $1B
    ld c, d                                       ; $41AC: $4A
    scf                                           ; $41AD: $37
    ld e, a                                       ; $41AE: $5F
    scf                                           ; $41AF: $37
    ld a, a                                       ; $41B0: $7F
    rla                                           ; $41B1: $17
    rra                                           ; $41B2: $1F
    ld [bc], a                                    ; $41B3: $02
    rra                                           ; $41B4: $1F
    dec c                                         ; $41B5: $0D
    dec a                                         ; $41B6: $3D
    ld a, [bc]                                    ; $41B7: $0A
    add hl, sp                                    ; $41B8: $39
    rla                                           ; $41B9: $17
    ld a, c                                       ; $41BA: $79
    rla                                           ; $41BB: $17
    ld [hl], a                                    ; $41BC: $77
    cpl                                           ; $41BD: $2F
    rst RST_38                                    ; $41BE: $FF
    cpl                                           ; $41BF: $2F
    nop                                           ; $41C0: $00
    nop                                           ; $41C1: $00
    add b                                         ; $41C2: $80
    nop                                           ; $41C3: $00
    ret nz                                        ; $41C4: $C0

    add b                                         ; $41C5: $80
    ldh [$FFC0], a                                ; $41C6: $E0 $C0
    ldh a, [$FFE0]                                ; $41C8: $F0 $E0
    ldh a, [$FF60]                                ; $41CA: $F0 $60
    ld hl, sp+$70                                 ; $41CC: $F8 $70
    ld hl, sp-$50                                 ; $41CE: $F8 $B0
    ld hl, sp-$60                                 ; $41D0: $F8 $A0
    ldh [rP1], a                                  ; $41D2: $E0 $00
    ldh [$FFC0], a                                ; $41D4: $E0 $C0
    ldh a, [$FFC0]                                ; $41D6: $F0 $C0
    ldh a, [$FF60]                                ; $41D8: $F0 $60
    ld hl, sp+$60                                 ; $41DA: $F8 $60
    ld hl, sp-$50                                 ; $41DC: $F8 $B0
    db $FC                                        ; $41DE: $FC
    or b                                          ; $41DF: $B0
    ld a, b                                       ; $41E0: $78
    nop                                           ; $41E1: $00
    nop                                           ; $41E2: $00
    nop                                           ; $41E3: $00
    nop                                           ; $41E4: $00
    nop                                           ; $41E5: $00
    nop                                           ; $41E6: $00
    nop                                           ; $41E7: $00
    nop                                           ; $41E8: $00
    nop                                           ; $41E9: $00
    nop                                           ; $41EA: $00
    nop                                           ; $41EB: $00
    nop                                           ; $41EC: $00
    nop                                           ; $41ED: $00
    nop                                           ; $41EE: $00
    nop                                           ; $41EF: $00
    nop                                           ; $41F0: $00
    nop                                           ; $41F1: $00
    nop                                           ; $41F2: $00
    nop                                           ; $41F3: $00
    nop                                           ; $41F4: $00
    nop                                           ; $41F5: $00
    nop                                           ; $41F6: $00
    nop                                           ; $41F7: $00
    nop                                           ; $41F8: $00
    nop                                           ; $41F9: $00
    nop                                           ; $41FA: $00
    nop                                           ; $41FB: $00
    nop                                           ; $41FC: $00
    nop                                           ; $41FD: $00
    nop                                           ; $41FE: $00
    nop                                           ; $41FF: $00
    inc bc                                        ; $4200: $03
    nop                                           ; $4201: $00
    inc c                                         ; $4202: $0C
    inc bc                                        ; $4203: $03
    scf                                           ; $4204: $37
    inc c                                         ; $4205: $0C
    ld c, [hl]                                    ; $4206: $4E
    inc a                                         ; $4207: $3C
    db $FC                                        ; $4208: $FC
    ld h, b                                       ; $4209: $60
    ld sp, hl                                     ; $420A: $F9
    db $10                                        ; $420B: $10
    inc sp                                        ; $420C: $33
    ld bc, $0103                                  ; $420D: $01 $03 $01
    inc bc                                        ; $4210: $03
    ld bc, $0103                                  ; $4211: $01 $03 $01
    ld bc, $0100                                  ; $4214: $01 $00 $01
    nop                                           ; $4217: $00
    nop                                           ; $4218: $00
    nop                                           ; $4219: $00
    nop                                           ; $421A: $00
    nop                                           ; $421B: $00
    nop                                           ; $421C: $00
    nop                                           ; $421D: $00
    nop                                           ; $421E: $00
    nop                                           ; $421F: $00
    ld bc, $0200                                  ; $4220: $01 $00 $02
    ld bc, $0102                                  ; $4223: $01 $02 $01
    inc b                                         ; $4226: $04
    inc bc                                        ; $4227: $03
    dec b                                         ; $4228: $05
    ld [bc], a                                    ; $4229: $02
    rlca                                          ; $422A: $07
    nop                                           ; $422B: $00
    ld bc, $8300                                  ; $422C: $01 $00 $83
    nop                                           ; $422F: $00
    ld b, e                                       ; $4230: $43
    add c                                         ; $4231: $81
    rst RST_20                                    ; $4232: $E7
    ld b, c                                       ; $4233: $41
    rst RST_20                                    ; $4234: $E7
    ld b, e                                       ; $4235: $43
    rst RST_38                                    ; $4236: $FF
    ld b, d                                       ; $4237: $42
    rst RST_38                                    ; $4238: $FF
    and [hl]                                      ; $4239: $A6
    cp $45                                        ; $423A: $FE $45
    rst RST_38                                    ; $423C: $FF
    ld d, b                                       ; $423D: $50
    ld a, d                                       ; $423E: $7A
    or c                                          ; $423F: $B1
    ld a, b                                       ; $4240: $78
    nop                                           ; $4241: $00
    cp h                                          ; $4242: $BC
    ld a, b                                       ; $4243: $78
    ld a, $CC                                     ; $4244: $3E $CC
    ld a, a                                       ; $4246: $7F
    or [hl]                                       ; $4247: $B6
    rst RST_38                                    ; $4248: $FF
    ld a, d                                       ; $4249: $7A
    and a                                         ; $424A: $A7
    ld a, e                                       ; $424B: $7B
    rst RST_38                                    ; $424C: $FF
    db $FD                                        ; $424D: $FD
    rst RST_38                                    ; $424E: $FF
    db $FC                                        ; $424F: $FC
    cp $20                                        ; $4250: $FE $20
    rst RST_38                                    ; $4252: $FF
    call c, $AEDF                                 ; $4253: $DC $DF $AE
    sbc a                                         ; $4256: $9F
    halt                                          ; $4257: $76
    cp a                                          ; $4258: $BF
    ld [hl], a                                    ; $4259: $77
    ld a, a                                       ; $425A: $7F
    ei                                            ; $425B: $FB
    rst RST_38                                    ; $425C: $FF
    ei                                            ; $425D: $FB
    di                                            ; $425E: $F3
    db $FD                                        ; $425F: $FD
    ccf                                           ; $4260: $3F
    ret nz                                        ; $4261: $C0

    sbc [hl]                                      ; $4262: $9E
    ld sp, hl                                     ; $4263: $F9
    rst RST_38                                    ; $4264: $FF
    ldh a, [$FFFB]                                ; $4265: $F0 $FB
    ld l, h                                       ; $4267: $6C
    ld l, a                                       ; $4268: $6F
    ld [de], a                                    ; $4269: $12
    ld a, $11                                     ; $426A: $3E $11
    rla                                           ; $426C: $17
    inc c                                         ; $426D: $0C
    dec c                                         ; $426E: $0D
    ld [bc], a                                    ; $426F: $02
    inc bc                                        ; $4270: $03
    ld bc, $0306                                  ; $4271: $01 $06 $03
    rlca                                          ; $4274: $07
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
    rst RST_38                                    ; $4280: $FF
    pop af                                        ; $4281: $F1
    or e                                          ; $4282: $B3
    ld l, h                                       ; $4283: $6C
    cp [hl]                                       ; $4284: $BE
    ld h, b                                       ; $4285: $60
    or e                                          ; $4286: $B3
    ld l, h                                       ; $4287: $6C
    cp $61                                        ; $4288: $FE $61
    ld h, e                                       ; $428A: $63
    sbc h                                         ; $428B: $9C
    adc [hl]                                      ; $428C: $8E
    ld [hl], e                                    ; $428D: $73
    sbc e                                         ; $428E: $9B
    ld l, h                                       ; $428F: $6C
    rst RST_38                                    ; $4290: $FF
    nop                                           ; $4291: $00
    adc l                                         ; $4292: $8D
    inc bc                                        ; $4293: $03
    rst RST_18                                    ; $4294: $DF
    inc b                                         ; $4295: $04
    rst RST_10                                    ; $4296: $D7
    ld [$078D], sp                                ; $4297: $08 $8D $07
    rlca                                          ; $429A: $07
    nop                                           ; $429B: $00
    nop                                           ; $429C: $00

jr_00F_429D:
    nop                                           ; $429D: $00
    nop                                           ; $429E: $00
    nop                                           ; $429F: $00
    add b                                         ; $42A0: $80
    nop                                           ; $42A1: $00
    add b                                         ; $42A2: $80
    nop                                           ; $42A3: $00
    add b                                         ; $42A4: $80
    nop                                           ; $42A5: $00
    nop                                           ; $42A6: $00
    nop                                           ; $42A7: $00
    rlca                                          ; $42A8: $07
    nop                                           ; $42A9: $00
    ld [$9F07], sp                                ; $42AA: $08 $07 $9F
    ld [$089D], sp                                ; $42AD: $08 $9D $08
    db $FC                                        ; $42B0: $FC
    ld [$94FE], sp                                ; $42B1: $08 $FE $94
    rst RST_38                                    ; $42B4: $FF
    adc d                                         ; $42B5: $8A
    rst RST_38                                    ; $42B6: $FF
    ld a, [hl+]                                   ; $42B7: $2A
    ld a, e                                       ; $42B8: $7B
    ld [hl], $F3                                  ; $42B9: $36 $F3
    ld c, $E6                                     ; $42BB: $0E $E6
    ld a, h                                       ; $42BD: $7C
    cp $7C                                        ; $42BE: $FE $7C
    db $FC                                        ; $42C0: $FC
    ld a, b                                       ; $42C1: $78
    ld hl, sp+$70                                 ; $42C2: $F8 $70
    ldh a, [$FF80]                                ; $42C4: $F0 $80
    ld b, b                                       ; $42C6: $40
    add b                                         ; $42C7: $80
    ret nz                                        ; $42C8: $C0

    nop                                           ; $42C9: $00
    add b                                         ; $42CA: $80
    nop                                           ; $42CB: $00
    nop                                           ; $42CC: $00
    nop                                           ; $42CD: $00
    add b                                         ; $42CE: $80
    nop                                           ; $42CF: $00
    add b                                         ; $42D0: $80
    nop                                           ; $42D1: $00
    nop                                           ; $42D2: $00
    nop                                           ; $42D3: $00
    nop                                           ; $42D4: $00
    nop                                           ; $42D5: $00
    nop                                           ; $42D6: $00
    nop                                           ; $42D7: $00
    nop                                           ; $42D8: $00
    nop                                           ; $42D9: $00
    nop                                           ; $42DA: $00
    nop                                           ; $42DB: $00
    nop                                           ; $42DC: $00
    nop                                           ; $42DD: $00
    nop                                           ; $42DE: $00
    nop                                           ; $42DF: $00
    nop                                           ; $42E0: $00
    nop                                           ; $42E1: $00
    nop                                           ; $42E2: $00
    nop                                           ; $42E3: $00
    nop                                           ; $42E4: $00
    nop                                           ; $42E5: $00
    nop                                           ; $42E6: $00
    nop                                           ; $42E7: $00
    nop                                           ; $42E8: $00
    nop                                           ; $42E9: $00
    nop                                           ; $42EA: $00
    nop                                           ; $42EB: $00
    nop                                           ; $42EC: $00
    nop                                           ; $42ED: $00
    nop                                           ; $42EE: $00
    nop                                           ; $42EF: $00
    nop                                           ; $42F0: $00

jr_00F_42F1:
    nop                                           ; $42F1: $00
    nop                                           ; $42F2: $00
    nop                                           ; $42F3: $00
    ret nz                                        ; $42F4: $C0

    nop                                           ; $42F5: $00
    or b                                          ; $42F6: $B0
    ret nz                                        ; $42F7: $C0

    ret z                                         ; $42F8: $C8

    ldh a, [$FFFC]                                ; $42F9: $F0 $FC
    jr jr_00F_4379                                ; $42FB: $18 $7C

    jr nz, @+$32                                  ; $42FD: $20 $30

    nop                                           ; $42FF: $00
    jr jr_00F_4302                                ; $4300: $18 $00

jr_00F_4302:
    inc e                                         ; $4302: $1C
    ld [$183C], sp                                ; $4303: $08 $3C $18
    db $EC                                        ; $4306: $EC
    jr jr_00F_42F1                                ; $4307: $18 $E8

    ld d, b                                       ; $4309: $50
    ret c                                         ; $430A: $D8

    jr nc, jr_00F_429D                            ; $430B: $30 $90

    ld h, b                                       ; $430D: $60
    ldh a, [$FF60]                                ; $430E: $F0 $60
    ld h, b                                       ; $4310: $60
    nop                                           ; $4311: $00
    ldh [rLCDC], a                                ; $4312: $E0 $40
    ldh [rLCDC], a                                ; $4314: $E0 $40
    and $40                                       ; $4316: $E6 $40
    ld a, d                                       ; $4318: $7A
    inc h                                         ; $4319: $24
    ld a, l                                       ; $431A: $7D
    jr nc, jr_00F_435C                            ; $431B: $30 $3F

    jr jr_00F_435A                                ; $431D: $18 $3B

    ld e, $01                                     ; $431F: $1E $01
    nop                                           ; $4321: $00
    ld [bc], a                                    ; $4322: $02
    ld bc, $0102                                  ; $4323: $01 $02 $01
    inc b                                         ; $4326: $04
    inc bc                                        ; $4327: $03
    dec b                                         ; $4328: $05
    inc bc                                        ; $4329: $03
    rlca                                          ; $432A: $07
    ld bc, $0001                                  ; $432B: $01 $01 $00
    ld bc, $0300                                  ; $432E: $01 $00 $03
    nop                                           ; $4331: $00
    inc bc                                        ; $4332: $03
    ld bc, $0107                                  ; $4333: $01 $07 $01
    rlca                                          ; $4336: $07
    ld [bc], a                                    ; $4337: $02
    rst RST_08                                    ; $4338: $CF
    ld [bc], a                                    ; $4339: $02
    ld e, [hl]                                    ; $433A: $5E
    add l                                         ; $433B: $85
    rst RST_28                                    ; $433C: $EF
    sub b                                         ; $433D: $90
    ld a, [$3031]                                 ; $433E: $FA $31 $30
    nop                                           ; $4341: $00
    ld e, b                                       ; $4342: $58
    jr nc, @-$42                                  ; $4343: $30 $BC

    ld a, b                                       ; $4345: $78
    ld a, $DC                                     ; $4346: $3E $DC
    ld a, a                                       ; $4348: $7F
    xor [hl]                                      ; $4349: $AE
    rst RST_38                                    ; $434A: $FF
    or [hl]                                       ; $434B: $B6
    xor a                                         ; $434C: $AF
    ld [hl], a                                    ; $434D: $77
    rst RST_38                                    ; $434E: $FF
    ld a, e                                       ; $434F: $7B
    rst RST_38                                    ; $4350: $FF
    ld a, d                                       ; $4351: $7A
    cp $20                                        ; $4352: $FE $20
    cp $DC                                        ; $4354: $FE $DC
    rst RST_18                                    ; $4356: $DF
    xor h                                         ; $4357: $AC
    sbc a                                         ; $4358: $9F
    halt                                          ; $4359: $76

jr_00F_435A:
    sbc a                                         ; $435A: $9F
    halt                                          ; $435B: $76

jr_00F_435C:
    ld a, a                                       ; $435C: $7F
    ei                                            ; $435D: $FB
    rst RST_38                                    ; $435E: $FF
    ei                                            ; $435F: $FB
    di                                            ; $4360: $F3
    ld a, [hl]                                    ; $4361: $7E
    ld a, b                                       ; $4362: $78
    ccf                                           ; $4363: $3F
    ld a, $1F                                     ; $4364: $3E $1F
    rra                                           ; $4366: $1F
    rlca                                          ; $4367: $07
    rlca                                          ; $4368: $07
    ld bc, $0001                                  ; $4369: $01 $01 $00
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

jr_00F_4379:
    nop                                           ; $4379: $00
    nop                                           ; $437A: $00
    nop                                           ; $437B: $00
    nop                                           ; $437C: $00
    nop                                           ; $437D: $00
    nop                                           ; $437E: $00
    nop                                           ; $437F: $00
    rst RST_30                                    ; $4380: $F7
    cpl                                           ; $4381: $2F
    ld a, a                                       ; $4382: $7F
    add a                                         ; $4383: $87
    push de                                       ; $4384: $D5
    adc e                                         ; $4385: $8B
    db $FD                                        ; $4386: $FD
    inc bc                                        ; $4387: $03
    push af                                       ; $4388: $F5
    bit 7, a                                      ; $4389: $CB $7F
    jp $CCF3                                      ; $438B: $C3 $F3 $CC


    ld hl, sp-$39                                 ; $438E: $F8 $C7
    db $EC                                        ; $4390: $EC
    dec sp                                        ; $4391: $3B
    cp a                                          ; $4392: $BF
    ld b, b                                       ; $4393: $40
    db $FC                                        ; $4394: $FC
    ld b, b                                       ; $4395: $40
    ld e, [hl]                                    ; $4396: $5E
    jr nc, jr_00F_43D0                            ; $4397: $30 $37

    ld [$081F], sp                                ; $4399: $08 $1F $08
    ld [hl], $18                                  ; $439C: $36 $18
    inc a                                         ; $439E: $3C
    nop                                           ; $439F: $00
    ld a, h                                       ; $43A0: $7C
    cp b                                          ; $43A1: $B8
    db $FC                                        ; $43A2: $FC
    ret c                                         ; $43A3: $D8

    db $FC                                        ; $43A4: $FC
    ret nc                                        ; $43A5: $D0

    ldh a, [rP1]                                  ; $43A6: $F0 $00
    ldh a, [$FFE0]                                ; $43A8: $F0 $E0
    ld hl, sp+$60                                 ; $43AA: $F8 $60
    ld hl, sp-$50                                 ; $43AC: $F8 $B0
    db $FC                                        ; $43AE: $FC
    or b                                          ; $43AF: $B0
    db $FC                                        ; $43B0: $FC
    ret c                                         ; $43B1: $D8

    cp $D8                                        ; $43B2: $FE $D8
    rra                                           ; $43B4: $1F
    db $EC                                        ; $43B5: $EC
    cp $9D                                        ; $43B6: $FE $9D
    sbc a                                         ; $43B8: $9F
    ld h, c                                       ; $43B9: $61
    rst RST_30                                    ; $43BA: $F7
    nop                                           ; $43BB: $00
    sbc a                                         ; $43BC: $9F
    ld h, e                                       ; $43BD: $63
    or $0B                                        ; $43BE: $F6 $0B
    rla                                           ; $43C0: $17
    db $EB                                        ; $43C1: $EB
    ld a, a                                       ; $43C2: $7F
    add e                                         ; $43C3: $83
    db $DB                                        ; $43C4: $DB
    ld [hl], b                                    ; $43C5: $70
    db $F4                                        ; $43C6: $F4
    ld [$087C], sp                                ; $43C7: $08 $7C $08
    db $F4                                        ; $43CA: $F4
    ld [$30DC], sp                                ; $43CB: $08 $DC $30
    ld hl, sp+$40                                 ; $43CE: $F8 $40

jr_00F_43D0:
    cp b                                          ; $43D0: $B8
    ld b, b                                       ; $43D1: $40
    ld l, h                                       ; $43D2: $6C
    jr c, jr_00F_4411                             ; $43D3: $38 $3C

    nop                                           ; $43D5: $00
    nop                                           ; $43D6: $00
    nop                                           ; $43D7: $00
    nop                                           ; $43D8: $00
    nop                                           ; $43D9: $00
    nop                                           ; $43DA: $00
    nop                                           ; $43DB: $00
    nop                                           ; $43DC: $00
    nop                                           ; $43DD: $00
    nop                                           ; $43DE: $00
    nop                                           ; $43DF: $00
    inc bc                                        ; $43E0: $03
    nop                                           ; $43E1: $00
    rlca                                          ; $43E2: $07
    ld [bc], a                                    ; $43E3: $02
    rlca                                          ; $43E4: $07
    inc bc                                        ; $43E5: $03
    ld b, $03                                     ; $43E6: $06 $03
    ld [bc], a                                    ; $43E8: $02
    ld bc, $0103                                  ; $43E9: $01 $03 $01
    ld bc, $0100                                  ; $43EC: $01 $00 $01
    nop                                           ; $43EF: $00
    nop                                           ; $43F0: $00
    nop                                           ; $43F1: $00
    nop                                           ; $43F2: $00
    nop                                           ; $43F3: $00
    nop                                           ; $43F4: $00
    nop                                           ; $43F5: $00
    ld b, $00                                     ; $43F6: $06 $00
    dec [hl]                                      ; $43F8: $35
    ld [bc], a                                    ; $43F9: $02
    dec hl                                        ; $43FA: $2B
    ld de, $13BF                                  ; $43FB: $11 $BF $13
    ei                                            ; $43FE: $FB
    adc a                                         ; $43FF: $8F
    rst RST_08                                    ; $4400: $CF
    ld a, [hl]                                    ; $4401: $7E
    ld e, $FC                                     ; $4402: $1E $FC
    ld a, h                                       ; $4404: $7C
    ld hl, sp-$08                                 ; $4405: $F8 $F8
    ldh [$FFE0], a                                ; $4407: $E0 $E0
    add b                                         ; $4409: $80
    add b                                         ; $440A: $80
    nop                                           ; $440B: $00
    nop                                           ; $440C: $00
    nop                                           ; $440D: $00
    nop                                           ; $440E: $00
    nop                                           ; $440F: $00
    nop                                           ; $4410: $00

jr_00F_4411:
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
    nop                                           ; $4420: $00
    nop                                           ; $4421: $00
    nop                                           ; $4422: $00
    nop                                           ; $4423: $00
    add b                                         ; $4424: $80
    nop                                           ; $4425: $00
    ldh [rP1], a                                  ; $4426: $E0 $00
    ldh [rLCDC], a                                ; $4428: $E0 $40
    ld h, b                                       ; $442A: $60
    add b                                         ; $442B: $80
    jr nz, @-$3E                                  ; $442C: $20 $C0

    ldh [$FFC0], a                                ; $442E: $E0 $C0
    ret nz                                        ; $4430: $C0

    nop                                           ; $4431: $00
    ldh [rLCDC], a                                ; $4432: $E0 $40
    ldh [rLCDC], a                                ; $4434: $E0 $40
    ldh [rLCDC], a                                ; $4436: $E0 $40
    ret nz                                        ; $4438: $C0

    add b                                         ; $4439: $80
    ret nz                                        ; $443A: $C0

    add b                                         ; $443B: $80
    add b                                         ; $443C: $80
    nop                                           ; $443D: $00
    add b                                         ; $443E: $80
    nop                                           ; $443F: $00
    inc bc                                        ; $4440: $03
    nop                                           ; $4441: $00
    rrca                                          ; $4442: $0F
    ld bc, $0E33                                  ; $4443: $01 $33 $0E
    ld c, a                                       ; $4446: $4F
    ld a, $FE                                     ; $4447: $3E $FE
    ld [hl], b                                    ; $4449: $70
    cp $0C                                        ; $444A: $FE $0C
    ld c, $00                                     ; $444C: $0E $00
    nop                                           ; $444E: $00
    nop                                           ; $444F: $00
    nop                                           ; $4450: $00
    nop                                           ; $4451: $00
    nop                                           ; $4452: $00
    nop                                           ; $4453: $00
    nop                                           ; $4454: $00
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
    inc bc                                        ; $4460: $03
    nop                                           ; $4461: $00
    dec b                                         ; $4462: $05
    ld [bc], a                                    ; $4463: $02
    rrca                                          ; $4464: $0F
    inc b                                         ; $4465: $04
    ld l, [hl]                                    ; $4466: $6E
    inc bc                                        ; $4467: $03
    cp a                                          ; $4468: $BF
    ld c, a                                       ; $4469: $4F
    rst RST_38                                    ; $446A: $FF
    ld a, $FE                                     ; $446B: $3E $FE
    ldh [$FFE0], a                                ; $446D: $E0 $E0
    nop                                           ; $446F: $00
    nop                                           ; $4470: $00
    nop                                           ; $4471: $00
    nop                                           ; $4472: $00
    nop                                           ; $4473: $00
    nop                                           ; $4474: $00
    nop                                           ; $4475: $00
    nop                                           ; $4476: $00
    nop                                           ; $4477: $00
    nop                                           ; $4478: $00
    nop                                           ; $4479: $00
    nop                                           ; $447A: $00
    nop                                           ; $447B: $00
    nop                                           ; $447C: $00
    nop                                           ; $447D: $00
    nop                                           ; $447E: $00
    nop                                           ; $447F: $00
    add hl, hl                                    ; $4480: $29
    db $10                                        ; $4481: $10
    ld a, a                                       ; $4482: $7F
    jr nc, jr_00F_4504                            ; $4483: $30 $7F

    inc c                                         ; $4485: $0C
    rst RST_30                                    ; $4486: $F7
    inc a                                         ; $4487: $3C
    adc a                                         ; $4488: $8F
    db $FC                                        ; $4489: $FC
    rra                                           ; $448A: $1F
    db $FC                                        ; $448B: $FC
    db $FD                                        ; $448C: $FD
    ldh [$FFE3], a                                ; $448D: $E0 $E3
    ld bc, $0102                                  ; $448F: $01 $02 $01
    inc bc                                        ; $4492: $03
    ld bc, $0003                                  ; $4493: $01 $03 $00
    inc bc                                        ; $4496: $03
    nop                                           ; $4497: $00
    ld bc, $0100                                  ; $4498: $01 $00 $01
    nop                                           ; $449B: $00
    inc bc                                        ; $449C: $03
    ld bc, $0003                                  ; $449D: $01 $03 $00
    ld e, c                                       ; $44A0: $59
    or [hl]                                       ; $44A1: $B6
    rst RST_18                                    ; $44A2: $DF
    jr nc, jr_00F_451E                            ; $44A3: $30 $79

    or [hl]                                       ; $44A5: $B6
    ld sp, $87CE                                  ; $44A6: $31 $CE $87
    ld a, b                                       ; $44A9: $78
    ld c, e                                       ; $44AA: $4B
    or [hl]                                       ; $44AB: $B6
    ld a, c                                       ; $44AC: $79
    add [hl]                                      ; $44AD: $86
    db $FD                                        ; $44AE: $FD
    inc bc                                        ; $44AF: $03
    db $EC                                        ; $44B0: $EC
    inc bc                                        ; $44B1: $03
    ld [hl], a                                    ; $44B2: $77
    add c                                         ; $44B3: $81
    or $81                                        ; $44B4: $F6 $81
    xor a                                         ; $44B6: $AF
    ld b, d                                       ; $44B7: $42
    db $ED                                        ; $44B8: $ED
    ld b, d                                       ; $44B9: $42
    ld b, a                                       ; $44BA: $47
    add d                                         ; $44BB: $82
    add d                                         ; $44BC: $82
    ld bc, $0001                                  ; $44BD: $01 $01 $00
    ld a, [hl]                                    ; $44C0: $7E
    inc c                                         ; $44C1: $0C
    cp $30                                        ; $44C2: $FE $30
    ld l, a                                       ; $44C4: $6F
    cp h                                          ; $44C5: $BC
    ld [hl], c                                    ; $44C6: $71
    cp a                                          ; $44C7: $BF
    ld hl, sp+$3F                                 ; $44C8: $F8 $3F
    cp a                                          ; $44CA: $BF
    rlca                                          ; $44CB: $07
    rst RST_00                                    ; $44CC: $C7
    nop                                           ; $44CD: $00
    ret nz                                        ; $44CE: $C0

    nop                                           ; $44CF: $00
    ret nz                                        ; $44D0: $C0

    nop                                           ; $44D1: $00
    ret nz                                        ; $44D2: $C0

    nop                                           ; $44D3: $00
    ret nz                                        ; $44D4: $C0

    nop                                           ; $44D5: $00
    add b                                         ; $44D6: $80
    nop                                           ; $44D7: $00
    nop                                           ; $44D8: $00
    nop                                           ; $44D9: $00
    add b                                         ; $44DA: $80
    nop                                           ; $44DB: $00
    ret nz                                        ; $44DC: $C0

    add b                                         ; $44DD: $80
    ret nz                                        ; $44DE: $C0

    nop                                           ; $44DF: $00
    ret nz                                        ; $44E0: $C0

    nop                                           ; $44E1: $00
    and b                                         ; $44E2: $A0
    ld b, b                                       ; $44E3: $40
    ldh a, [rNR41]                                ; $44E4: $F0 $20
    halt                                          ; $44E6: $76
    ret nz                                        ; $44E7: $C0

    db $FD                                        ; $44E8: $FD
    ldh a, [c]                                    ; $44E9: $F2
    rst RST_38                                    ; $44EA: $FF
    ld a, h                                       ; $44EB: $7C
    ld a, a                                       ; $44EC: $7F
    rlca                                          ; $44ED: $07
    rlca                                          ; $44EE: $07
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
    nop                                           ; $44FA: $00
    nop                                           ; $44FB: $00
    nop                                           ; $44FC: $00
    nop                                           ; $44FD: $00
    nop                                           ; $44FE: $00
    nop                                           ; $44FF: $00
    ret nz                                        ; $4500: $C0

    nop                                           ; $4501: $00
    ldh a, [$FF80]                                ; $4502: $F0 $80

jr_00F_4504:
    call z, $F270                                 ; $4504: $CC $70 $F2
    ld a, h                                       ; $4507: $7C
    ld a, a                                       ; $4508: $7F
    ld c, $7F                                     ; $4509: $0E $7F
    jr nc, jr_00F_457D                            ; $450B: $30 $70

    nop                                           ; $450D: $00
    nop                                           ; $450E: $00
    nop                                           ; $450F: $00
    nop                                           ; $4510: $00
    nop                                           ; $4511: $00
    nop                                           ; $4512: $00
    nop                                           ; $4513: $00
    nop                                           ; $4514: $00
    nop                                           ; $4515: $00
    nop                                           ; $4516: $00
    nop                                           ; $4517: $00
    nop                                           ; $4518: $00
    nop                                           ; $4519: $00
    nop                                           ; $451A: $00
    nop                                           ; $451B: $00
    nop                                           ; $451C: $00
    nop                                           ; $451D: $00

jr_00F_451E:
    nop                                           ; $451E: $00
    nop                                           ; $451F: $00
    dec b                                         ; $4520: $05
    ld [bc], a                                    ; $4521: $02
    ld a, [bc]                                    ; $4522: $0A
    dec b                                         ; $4523: $05
    dec bc                                        ; $4524: $0B
    dec b                                         ; $4525: $05
    rrca                                          ; $4526: $0F
    dec b                                         ; $4527: $05
    rlca                                          ; $4528: $07
    nop                                           ; $4529: $00
    inc bc                                        ; $452A: $03
    ld bc, $0107                                  ; $452B: $01 $07 $01
    rlca                                          ; $452E: $07
    ld [bc], a                                    ; $452F: $02
    rrca                                          ; $4530: $0F
    ld [bc], a                                    ; $4531: $02
    rrca                                          ; $4532: $0F
    ld b, $0A                                     ; $4533: $06 $0A
    dec b                                         ; $4535: $05
    ld a, [de]                                    ; $4536: $1A
    dec b                                         ; $4537: $05
    dec d                                         ; $4538: $15
    dec bc                                        ; $4539: $0B
    rra                                           ; $453A: $1F
    dec bc                                        ; $453B: $0B
    jp c, Jump_00F_4E05                           ; $453C: $DA $05 $4E

    add c                                         ; $453F: $81
    ld hl, sp-$30                                 ; $4540: $F8 $D0
    cp h                                          ; $4542: $BC
    add sp, -$04                                  ; $4543: $E8 $FC
    add sp, -$04                                  ; $4545: $E8 $FC
    add sp, -$08                                  ; $4547: $E8 $F8
    add b                                         ; $4549: $80
    ldh a, [rNR41]                                ; $454A: $F0 $20
    ld hl, sp+$60                                 ; $454C: $F8 $60
    ld a, b                                       ; $454E: $78
    or b                                          ; $454F: $B0
    ld a, h                                       ; $4550: $7C
    or b                                          ; $4551: $B0
    ld a, h                                       ; $4552: $7C
    cp b                                          ; $4553: $B8
    db $FC                                        ; $4554: $FC
    ret c                                         ; $4555: $D8

    cp $D8                                        ; $4556: $FE $D8
    sbc [hl]                                      ; $4558: $9E
    db $EC                                        ; $4559: $EC
    cp $CC                                        ; $455A: $FE $CC
    adc $B4                                       ; $455C: $CE $B4
    db $FC                                        ; $455E: $FC
    add b                                         ; $455F: $80
    nop                                           ; $4560: $00
    nop                                           ; $4561: $00
    nop                                           ; $4562: $00
    nop                                           ; $4563: $00
    nop                                           ; $4564: $00
    nop                                           ; $4565: $00
    nop                                           ; $4566: $00
    nop                                           ; $4567: $00
    nop                                           ; $4568: $00
    nop                                           ; $4569: $00
    nop                                           ; $456A: $00
    nop                                           ; $456B: $00
    nop                                           ; $456C: $00
    nop                                           ; $456D: $00
    nop                                           ; $456E: $00
    nop                                           ; $456F: $00
    nop                                           ; $4570: $00
    nop                                           ; $4571: $00
    nop                                           ; $4572: $00
    nop                                           ; $4573: $00
    nop                                           ; $4574: $00
    nop                                           ; $4575: $00
    nop                                           ; $4576: $00
    nop                                           ; $4577: $00
    nop                                           ; $4578: $00
    nop                                           ; $4579: $00
    nop                                           ; $457A: $00
    nop                                           ; $457B: $00
    ret nz                                        ; $457C: $C0

jr_00F_457D:
    nop                                           ; $457D: $00
    and b                                         ; $457E: $A0
    ld b, b                                       ; $457F: $40
    nop                                           ; $4580: $00
    nop                                           ; $4581: $00
    nop                                           ; $4582: $00
    nop                                           ; $4583: $00
    nop                                           ; $4584: $00
    nop                                           ; $4585: $00
    nop                                           ; $4586: $00
    nop                                           ; $4587: $00
    nop                                           ; $4588: $00
    nop                                           ; $4589: $00
    nop                                           ; $458A: $00
    nop                                           ; $458B: $00
    nop                                           ; $458C: $00
    nop                                           ; $458D: $00
    nop                                           ; $458E: $00
    nop                                           ; $458F: $00
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    nop                                           ; $4593: $00
    jr jr_00F_4596                                ; $4594: $18 $00

jr_00F_4596:
    inc l                                         ; $4596: $2C
    jr jr_00F_45C5                                ; $4597: $18 $2C

    jr jr_00F_45F9                                ; $4599: $18 $5E

    inc l                                         ; $459B: $2C
    ld e, [hl]                                    ; $459C: $5E
    inc h                                         ; $459D: $24
    cp a                                          ; $459E: $BF
    ld e, d                                       ; $459F: $5A
    inc sp                                        ; $45A0: $33
    nop                                           ; $45A1: $00
    ld d, h                                       ; $45A2: $54
    inc hl                                        ; $45A3: $23
    ld a, a                                       ; $45A4: $7F
    ld hl, $1E7F                                  ; $45A5: $21 $7F $1E
    ld a, a                                       ; $45A8: $7F
    ccf                                           ; $45A9: $3F
    ld a, a                                       ; $45AA: $7F
    ccf                                           ; $45AB: $3F
    rst RST_38                                    ; $45AC: $FF
    ld c, e                                       ; $45AD: $4B
    rst RST_38                                    ; $45AE: $FF
    dec hl                                        ; $45AF: $2B
    rst RST_38                                    ; $45B0: $FF
    ld c, l                                       ; $45B1: $4D
    ld e, a                                       ; $45B2: $5F
    ld a, $27                                     ; $45B3: $3E $27
    rra                                           ; $45B5: $1F
    dec de                                        ; $45B6: $1B
    rlca                                          ; $45B7: $07
    rlca                                          ; $45B8: $07
    nop                                           ; $45B9: $00
    inc bc                                        ; $45BA: $03
    ld bc, $0003                                  ; $45BB: $01 $03 $00
    ld bc, $0400                                  ; $45BE: $01 $00 $04
    nop                                           ; $45C1: $00
    ld a, [bc]                                    ; $45C2: $0A
    inc b                                         ; $45C3: $04
    rrca                                          ; $45C4: $0F

jr_00F_45C5:
    ld b, $17                                     ; $45C5: $06 $17
    ld c, $17                                     ; $45C7: $0E $17
    rrca                                          ; $45C9: $0F
    cpl                                           ; $45CA: $2F
    rla                                           ; $45CB: $17
    cpl                                           ; $45CC: $2F
    rla                                           ; $45CD: $17
    ld e, a                                       ; $45CE: $5F
    dec sp                                        ; $45CF: $3B
    ld e, a                                       ; $45D0: $5F
    dec sp                                        ; $45D1: $3B
    ld e, a                                       ; $45D2: $5F
    dec sp                                        ; $45D3: $3B
    ccf                                           ; $45D4: $3F
    nop                                           ; $45D5: $00
    rla                                           ; $45D6: $17
    dec bc                                        ; $45D7: $0B
    rra                                           ; $45D8: $1F
    dec bc                                        ; $45D9: $0B
    cpl                                           ; $45DA: $2F
    dec e                                         ; $45DB: $1D
    cpl                                           ; $45DC: $2F
    dec e                                         ; $45DD: $1D
    ld e, a                                       ; $45DE: $5F
    ld a, $00                                     ; $45DF: $3E $00
    nop                                           ; $45E1: $00
    nop                                           ; $45E2: $00
    nop                                           ; $45E3: $00
    nop                                           ; $45E4: $00
    nop                                           ; $45E5: $00
    nop                                           ; $45E6: $00
    nop                                           ; $45E7: $00
    add b                                         ; $45E8: $80
    nop                                           ; $45E9: $00
    add b                                         ; $45EA: $80
    nop                                           ; $45EB: $00
    add b                                         ; $45EC: $80
    nop                                           ; $45ED: $00
    ret nz                                        ; $45EE: $C0

    add b                                         ; $45EF: $80
    ret nz                                        ; $45F0: $C0

    add b                                         ; $45F1: $80
    ret nz                                        ; $45F2: $C0

    add b                                         ; $45F3: $80
    ret nz                                        ; $45F4: $C0

    nop                                           ; $45F5: $00
    add b                                         ; $45F6: $80
    nop                                           ; $45F7: $00
    ret nz                                        ; $45F8: $C0

jr_00F_45F9:
    add b                                         ; $45F9: $80
    ret nz                                        ; $45FA: $C0

    add b                                         ; $45FB: $80
    ldh [$FFC0], a                                ; $45FC: $E0 $C0
    ldh [$FFC0], a                                ; $45FE: $E0 $C0

jr_00F_4600:
    rst RST_18                                    ; $4600: $DF
    ld a, $DF                                     ; $4601: $3E $DF
    ld a, $BF                                     ; $4603: $3E $BF
    jr jr_00F_4600                                ; $4605: $18 $F9

    ld d, $FF                                     ; $4607: $16 $FF
    sub b                                         ; $4609: $90
    ld sp, hl                                     ; $460A: $F9
    sub [hl]                                      ; $460B: $96

jr_00F_460C:
    rst RST_38                                    ; $460C: $FF
    sub b                                         ; $460D: $90
    pop de                                        ; $460E: $D1
    xor [hl]                                      ; $460F: $AE
    pop hl                                        ; $4610: $E1
    sbc $EF                                       ; $4611: $DE $EF
    db $10                                        ; $4613: $10
    rst RST_38                                    ; $4614: $FF
    inc l                                         ; $4615: $2C
    ldh a, [c]                                    ; $4616: $F2
    dec c                                         ; $4617: $0D
    ld a, a                                       ; $4618: $7F
    ret z                                         ; $4619: $C8

    sub $2B                                       ; $461A: $D6 $2B
    ld a, l                                       ; $461C: $7D
    ld d, $EF                                     ; $461D: $16 $EF
    db $10                                        ; $461F: $10
    ldh a, [$FFE0]                                ; $4620: $F0 $E0
    ldh a, [$FFC0]                                ; $4622: $F0 $C0
    add sp, $10                                   ; $4624: $E8 $10
    db $FD                                        ; $4626: $FD
    sbc b                                         ; $4627: $98
    cp $01                                        ; $4628: $FE $01
    rst RST_38                                    ; $462A: $FF
    ld a, c                                       ; $462B: $79
    add a                                         ; $462C: $87
    cp $E3                                        ; $462D: $FE $E3
    rst RST_38                                    ; $462F: $FF
    cp $FF                                        ; $4630: $FE $FF
    rst RST_38                                    ; $4632: $FF
    rrca                                          ; $4633: $0F
    rst RST_08                                    ; $4634: $CF
    inc bc                                        ; $4635: $03
    and e                                         ; $4636: $A3
    pop bc                                        ; $4637: $C1
    pop af                                        ; $4638: $F1
    jr nz, jr_00F_460C                            ; $4639: $20 $D1

    jr nz, jr_00F_46B0                            ; $463B: $20 $73

    ld hl, $03F7                                  ; $463D: $21 $F7 $03
    add b                                         ; $4640: $80
    nop                                           ; $4641: $00
    add b                                         ; $4642: $80
    nop                                           ; $4643: $00
    add b                                         ; $4644: $80
    nop                                           ; $4645: $00
    or b                                          ; $4646: $B0
    nop                                           ; $4647: $00
    ldh a, [rNR41]                                ; $4648: $F0 $20
    ldh [$FF80], a                                ; $464A: $E0 $80
    ld b, b                                       ; $464C: $40
    add b                                         ; $464D: $80
    ld h, b                                       ; $464E: $60
    ret nz                                        ; $464F: $C0

    ldh [$FFC0], a                                ; $4650: $E0 $C0
    ldh [$FFC0], a                                ; $4652: $E0 $C0
    ldh [$FFC0], a                                ; $4654: $E0 $C0
    ldh [$FFC0], a                                ; $4656: $E0 $C0
    ret nz                                        ; $4658: $C0

    add b                                         ; $4659: $80
    add b                                         ; $465A: $80
    nop                                           ; $465B: $00
    nop                                           ; $465C: $00
    nop                                           ; $465D: $00
    nop                                           ; $465E: $00
    nop                                           ; $465F: $00
    ld a, a                                       ; $4660: $7F
    and $FE                                       ; $4661: $E6 $FE
    add sp, -$03                                  ; $4663: $E8 $FD
    ld [bc], a                                    ; $4665: $02
    add e                                         ; $4666: $83
    nop                                           ; $4667: $00
    nop                                           ; $4668: $00
    nop                                           ; $4669: $00
    nop                                           ; $466A: $00
    nop                                           ; $466B: $00
    nop                                           ; $466C: $00
    nop                                           ; $466D: $00
    nop                                           ; $466E: $00
    nop                                           ; $466F: $00
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    nop                                           ; $4673: $00
    nop                                           ; $4674: $00
    nop                                           ; $4675: $00
    nop                                           ; $4676: $00
    nop                                           ; $4677: $00
    nop                                           ; $4678: $00
    nop                                           ; $4679: $00
    nop                                           ; $467A: $00
    nop                                           ; $467B: $00
    nop                                           ; $467C: $00
    nop                                           ; $467D: $00
    nop                                           ; $467E: $00
    nop                                           ; $467F: $00
    or $21                                        ; $4680: $F6 $21
    xor a                                         ; $4682: $AF
    rst RST_00                                    ; $4683: $C7
    rst RST_08                                    ; $4684: $CF
    ld bc, $0081                                  ; $4685: $01 $81 $00
    nop                                           ; $4688: $00
    nop                                           ; $4689: $00
    nop                                           ; $468A: $00
    nop                                           ; $468B: $00
    nop                                           ; $468C: $00
    nop                                           ; $468D: $00
    nop                                           ; $468E: $00
    nop                                           ; $468F: $00
    nop                                           ; $4690: $00
    nop                                           ; $4691: $00
    nop                                           ; $4692: $00
    nop                                           ; $4693: $00
    nop                                           ; $4694: $00
    nop                                           ; $4695: $00
    nop                                           ; $4696: $00
    nop                                           ; $4697: $00
    nop                                           ; $4698: $00
    nop                                           ; $4699: $00
    nop                                           ; $469A: $00
    nop                                           ; $469B: $00
    nop                                           ; $469C: $00
    nop                                           ; $469D: $00
    nop                                           ; $469E: $00
    nop                                           ; $469F: $00
    ld [bc], a                                    ; $46A0: $02
    ld bc, $0205                                  ; $46A1: $01 $05 $02
    ld b, $01                                     ; $46A4: $06 $01
    inc bc                                        ; $46A6: $03
    ld bc, $0003                                  ; $46A7: $01 $03 $00
    nop                                           ; $46AA: $00
    nop                                           ; $46AB: $00
    nop                                           ; $46AC: $00
    nop                                           ; $46AD: $00
    nop                                           ; $46AE: $00
    nop                                           ; $46AF: $00

jr_00F_46B0:
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
    ld [$1400], sp                                ; $46C0: $08 $00 $14
    ld [$0C1E], sp                                ; $46C3: $08 $1E $0C
    ld l, $1C                                     ; $46C6: $2E $1C
    cpl                                           ; $46C8: $2F
    ld e, $5F                                     ; $46C9: $1E $5F
    ld l, $5F                                     ; $46CB: $2E $5F
    ld l, $BF                                     ; $46CD: $2E $BF
    ld [hl], a                                    ; $46CF: $77
    cp a                                          ; $46D0: $BF
    ld [hl], a                                    ; $46D1: $77
    cp a                                          ; $46D2: $BF
    ld [hl], a                                    ; $46D3: $77
    ld a, a                                       ; $46D4: $7F
    nop                                           ; $46D5: $00
    cpl                                           ; $46D6: $2F
    ld d, $3F                                     ; $46D7: $16 $3F
    rla                                           ; $46D9: $17
    ld e, a                                       ; $46DA: $5F
    dec sp                                        ; $46DB: $3B
    ld e, a                                       ; $46DC: $5F
    dec sp                                        ; $46DD: $3B
    cp a                                          ; $46DE: $BF
    ld c, h                                       ; $46DF: $4C
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
    nop                                           ; $46F0: $00
    nop                                           ; $46F1: $00
    nop                                           ; $46F2: $00
    nop                                           ; $46F3: $00
    inc e                                         ; $46F4: $1C
    nop                                           ; $46F5: $00
    ld h, a                                       ; $46F6: $67
    inc e                                         ; $46F7: $1C
    rst RST_38                                    ; $46F8: $FF
    ld a, [hl]                                    ; $46F9: $7E
    rst RST_38                                    ; $46FA: $FF
    inc c                                         ; $46FB: $0C
    ld c, $04                                     ; $46FC: $0E $04
    inc c                                         ; $46FE: $0C
    nop                                           ; $46FF: $00
    nop                                           ; $4700: $00
    nop                                           ; $4701: $00
    nop                                           ; $4702: $00
    nop                                           ; $4703: $00
    ret nz                                        ; $4704: $C0

    nop                                           ; $4705: $00
    and $C0                                       ; $4706: $E6 $C0
    cp $64                                        ; $4708: $FE $64
    ld l, a                                       ; $470A: $6F
    jr c, jr_00F_4744                             ; $470B: $38 $37

    rra                                           ; $470D: $1F
    add hl, de                                    ; $470E: $19
    rrca                                          ; $470F: $0F
    rrca                                          ; $4710: $0F
    rlca                                          ; $4711: $07
    rlca                                          ; $4712: $07
    ld bc, $0001                                  ; $4713: $01 $01 $00
    nop                                           ; $4716: $00
    nop                                           ; $4717: $00
    nop                                           ; $4718: $00
    nop                                           ; $4719: $00
    nop                                           ; $471A: $00
    nop                                           ; $471B: $00
    nop                                           ; $471C: $00
    nop                                           ; $471D: $00
    nop                                           ; $471E: $00
    nop                                           ; $471F: $00
    call c, $FF2B                                 ; $4720: $DC $2B $FF
    ld hl, $1E67                                  ; $4723: $21 $67 $1E
    ld e, a                                       ; $4726: $5F
    ccf                                           ; $4727: $3F
    rst RST_38                                    ; $4728: $FF
    ccf                                           ; $4729: $3F
    rst RST_38                                    ; $472A: $FF
    dec bc                                        ; $472B: $0B
    rst RST_38                                    ; $472C: $FF
    dec hl                                        ; $472D: $2B
    rst RST_38                                    ; $472E: $FF
    ld c, l                                       ; $472F: $4D
    rst RST_18                                    ; $4730: $DF
    cp [hl]                                       ; $4731: $BE
    rst RST_20                                    ; $4732: $E7
    sbc a                                         ; $4733: $9F
    ei                                            ; $4734: $FB
    rlca                                          ; $4735: $07
    ld [hl], a                                    ; $4736: $77
    add hl, hl                                    ; $4737: $29
    ccf                                           ; $4738: $3F
    db $10                                        ; $4739: $10
    ld d, [hl]                                    ; $473A: $56
    dec hl                                        ; $473B: $2B
    ld a, e                                       ; $473C: $7B
    inc h                                         ; $473D: $24
    xor $59                                       ; $473E: $EE $59
    add b                                         ; $4740: $80
    nop                                           ; $4741: $00
    add b                                         ; $4742: $80
    nop                                           ; $4743: $00

jr_00F_4744:
    add b                                         ; $4744: $80
    nop                                           ; $4745: $00
    add b                                         ; $4746: $80
    nop                                           ; $4747: $00
    nop                                           ; $4748: $00
    nop                                           ; $4749: $00
    add b                                         ; $474A: $80
    nop                                           ; $474B: $00
    add b                                         ; $474C: $80
    nop                                           ; $474D: $00
    ret nz                                        ; $474E: $C0

    add b                                         ; $474F: $80
    ret nz                                        ; $4750: $C0

    nop                                           ; $4751: $00
    ldh [rLCDC], a                                ; $4752: $E0 $40
    ldh [rLCDC], a                                ; $4754: $E0 $40
    ldh [rP1], a                                  ; $4756: $E0 $00
    ret nz                                        ; $4758: $C0

    add b                                         ; $4759: $80
    ldh [$FFC0], a                                ; $475A: $E0 $C0
    ldh [$FFC0], a                                ; $475C: $E0 $C0
    ldh [$FFC0], a                                ; $475E: $E0 $C0
    ldh [$FFC0], a                                ; $4760: $E0 $C0
    ret nz                                        ; $4762: $C0

    nop                                           ; $4763: $00
    ret nz                                        ; $4764: $C0

    nop                                           ; $4765: $00
    ret nz                                        ; $4766: $C0

    add b                                         ; $4767: $80
    ldh [$FFC0], a                                ; $4768: $E0 $C0
    ldh [rLCDC], a                                ; $476A: $E0 $40
    ldh a, [$FFA0]                                ; $476C: $F0 $A0
    ldh a, [rNR41]                                ; $476E: $F0 $20
    ld h, b                                       ; $4770: $60
    ret nz                                        ; $4771: $C0

    ldh [$FFC0], a                                ; $4772: $E0 $C0
    ret nz                                        ; $4774: $C0

    nop                                           ; $4775: $00
    nop                                           ; $4776: $00
    nop                                           ; $4777: $00
    nop                                           ; $4778: $00
    nop                                           ; $4779: $00
    nop                                           ; $477A: $00
    nop                                           ; $477B: $00
    nop                                           ; $477C: $00
    nop                                           ; $477D: $00
    nop                                           ; $477E: $00
    nop                                           ; $477F: $00
    db $DD                                        ; $4780: $DD
    inc hl                                        ; $4781: $23
    ccf                                           ; $4782: $3F
    ld [bc], a                                    ; $4783: $02
    inc bc                                        ; $4784: $03
    nop                                           ; $4785: $00
    nop                                           ; $4786: $00
    nop                                           ; $4787: $00
    nop                                           ; $4788: $00
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
    dec b                                         ; $47A0: $05
    inc bc                                        ; $47A1: $03
    inc bc                                        ; $47A2: $03
    ld bc, $0007                                  ; $47A3: $01 $07 $00
    ld b, $01                                     ; $47A6: $06 $01
    rlca                                          ; $47A8: $07
    ld bc, $001F                                  ; $47A9: $01 $1F $00
    ld h, a                                       ; $47AC: $67
    dec de                                        ; $47AD: $1B
    cp a                                          ; $47AE: $BF
    ld a, c                                       ; $47AF: $79
    ei                                            ; $47B0: $FB
    dec b                                         ; $47B1: $05
    rra                                           ; $47B2: $1F
    inc bc                                        ; $47B3: $03
    ccf                                           ; $47B4: $3F
    rla                                           ; $47B5: $17
    scf                                           ; $47B6: $37
    inc bc                                        ; $47B7: $03
    inc bc                                        ; $47B8: $03
    nop                                           ; $47B9: $00
    ld c, $03                                     ; $47BA: $0E $03
    dec de                                        ; $47BC: $1B
    inc c                                         ; $47BD: $0C
    inc e                                         ; $47BE: $1C
    nop                                           ; $47BF: $00
    rst RST_38                                    ; $47C0: $FF
    adc $DF                                       ; $47C1: $CE $DF
    xor [hl]                                      ; $47C3: $AE
    cp a                                          ; $47C4: $BF
    ld h, b                                       ; $47C5: $60
    rst RST_38                                    ; $47C6: $FF
    ld b, e                                       ; $47C7: $43
    rst RST_38                                    ; $47C8: $FF
    dec a                                         ; $47C9: $3D
    rst RST_08                                    ; $47CA: $CF
    ld a, l                                       ; $47CB: $7D
    sbc a                                         ; $47CC: $9F
    db $FD                                        ; $47CD: $FD
    ld a, a                                       ; $47CE: $7F
    db $FC                                        ; $47CF: $FC
    rst RST_38                                    ; $47D0: $FF
    pop af                                        ; $47D1: $F1
    rst RST_38                                    ; $47D2: $FF
    add c                                         ; $47D3: $81
    rst RST_38                                    ; $47D4: $FF
    jr nz, @+$01                                  ; $47D5: $20 $FF

    rla                                           ; $47D7: $17
    rst RST_38                                    ; $47D8: $FF
    db $E3                                        ; $47D9: $E3
    rst RST_38                                    ; $47DA: $FF
    ld bc, $0087                                  ; $47DB: $01 $87 $00
    inc bc                                        ; $47DE: $03
    nop                                           ; $47DF: $00
    db $FD                                        ; $47E0: $FD
    ld a, $F2                                     ; $47E1: $3E $F2
    ld a, h                                       ; $47E3: $7C
    db $FC                                        ; $47E4: $FC
    ld b, b                                       ; $47E5: $40
    add sp, $10                                   ; $47E6: $E8 $10
    db $FC                                        ; $47E8: $FC
    ldh [$FFFC], a                                ; $47E9: $E0 $FC

jr_00F_47EB:
    ld hl, sp-$04                                 ; $47EB: $F8 $FC
    ld b, b                                       ; $47ED: $40
    ldh a, [rP1]                                  ; $47EE: $F0 $00
    ret c                                         ; $47F0: $D8

    jr nc, jr_00F_47EB                            ; $47F1: $30 $F8

    nop                                           ; $47F3: $00
    ld h, b                                       ; $47F4: $60
    nop                                           ; $47F5: $00
    nop                                           ; $47F6: $00
    nop                                           ; $47F7: $00
    nop                                           ; $47F8: $00
    nop                                           ; $47F9: $00
    nop                                           ; $47FA: $00
    nop                                           ; $47FB: $00
    nop                                           ; $47FC: $00
    nop                                           ; $47FD: $00
    nop                                           ; $47FE: $00
    nop                                           ; $47FF: $00
    nop                                           ; $4800: $00
    nop                                           ; $4801: $00
    nop                                           ; $4802: $00
    nop                                           ; $4803: $00
    ld bc, $0100                                  ; $4804: $01 $00 $01
    nop                                           ; $4807: $00
    ld [bc], a                                    ; $4808: $02
    ld bc, $0102                                  ; $4809: $01 $02 $01
    dec b                                         ; $480C: $05
    inc bc                                        ; $480D: $03
    dec b                                         ; $480E: $05
    inc bc                                        ; $480F: $03
    dec b                                         ; $4810: $05
    inc bc                                        ; $4811: $03
    inc bc                                        ; $4812: $03
    nop                                           ; $4813: $00
    ld bc, $0100                                  ; $4814: $01 $00 $01
    nop                                           ; $4817: $00
    ld [bc], a                                    ; $4818: $02
    ld bc, $0102                                  ; $4819: $01 $02 $01
    dec b                                         ; $481C: $05
    inc bc                                        ; $481D: $03
    dec b                                         ; $481E: $05
    inc bc                                        ; $481F: $03
    ld b, b                                       ; $4820: $40
    nop                                           ; $4821: $00
    and b                                         ; $4822: $A0
    ld b, b                                       ; $4823: $40
    ldh a, [$FF60]                                ; $4824: $F0 $60
    ld [hl], b                                    ; $4826: $70
    ldh [$FF78], a                                ; $4827: $E0 $78
    ldh a, [$FFF8]                                ; $4829: $F0 $F8
    ld [hl], b                                    ; $482B: $70
    ld hl, sp+$70                                 ; $482C: $F8 $70
    db $FC                                        ; $482E: $FC
    cp b                                          ; $482F: $B8
    db $FC                                        ; $4830: $FC
    cp b                                          ; $4831: $B8
    db $FC                                        ; $4832: $FC
    cp b                                          ; $4833: $B8
    db $FC                                        ; $4834: $FC
    nop                                           ; $4835: $00
    ld a, b                                       ; $4836: $78
    or b                                          ; $4837: $B0
    db $FC                                        ; $4838: $FC
    cp b                                          ; $4839: $B8
    db $FC                                        ; $483A: $FC
    ret c                                         ; $483B: $D8

    rst RST_38                                    ; $483C: $FF
    call c, $EDFE                                 ; $483D: $DC $FE $ED
    nop                                           ; $4840: $00
    nop                                           ; $4841: $00
    nop                                           ; $4842: $00
    nop                                           ; $4843: $00
    nop                                           ; $4844: $00
    nop                                           ; $4845: $00
    nop                                           ; $4846: $00
    nop                                           ; $4847: $00
    nop                                           ; $4848: $00
    nop                                           ; $4849: $00
    nop                                           ; $484A: $00
    nop                                           ; $484B: $00
    nop                                           ; $484C: $00
    nop                                           ; $484D: $00
    sbc b                                         ; $484E: $98
    nop                                           ; $484F: $00
    ld d, h                                       ; $4850: $54
    adc b                                         ; $4851: $88
    db $FC                                        ; $4852: $FC
    ld [$F0FC], sp                                ; $4853: $08 $FC $F0
    db $FC                                        ; $4856: $FC
    ld hl, sp-$04                                 ; $4857: $F8 $FC
    ld hl, sp-$02                                 ; $4859: $F8 $FE
    and h                                         ; $485B: $A4
    cp $A8                                        ; $485C: $FE $A8
    cp $64                                        ; $485E: $FE $64
    rra                                           ; $4860: $1F
    inc c                                         ; $4861: $0C
    scf                                           ; $4862: $37
    inc e                                         ; $4863: $1C
    ld l, a                                       ; $4864: $6F
    inc a                                         ; $4865: $3C
    ld c, [hl]                                    ; $4866: $4E
    dec a                                         ; $4867: $3D
    db $DD                                        ; $4868: $DD
    ld a, b                                       ; $4869: $78
    ei                                            ; $486A: $FB
    ld [hl], b                                    ; $486B: $70
    rst RST_38                                    ; $486C: $FF
    ld h, d                                       ; $486D: $62
    ld a, a                                       ; $486E: $7F
    inc a                                         ; $486F: $3C
    inc a                                         ; $4870: $3C
    nop                                           ; $4871: $00
    ld bc, $0100                                  ; $4872: $01 $00 $01
    nop                                           ; $4875: $00
    inc bc                                        ; $4876: $03
    ld bc, $0003                                  ; $4877: $01 $03 $00
    nop                                           ; $487A: $00
    nop                                           ; $487B: $00
    nop                                           ; $487C: $00
    nop                                           ; $487D: $00
    nop                                           ; $487E: $00
    nop                                           ; $487F: $00
    rst RST_38                                    ; $4880: $FF
    add a                                         ; $4881: $87
    call z, $FEB7                                 ; $4882: $CC $B7 $FE
    add a                                         ; $4885: $87
    adc a                                         ; $4886: $8F
    ld [hl], a                                    ; $4887: $77
    rrca                                          ; $4888: $0F
    pop af                                        ; $4889: $F1
    ccf                                           ; $488A: $3F
    ret nz                                        ; $488B: $C0

    rst RST_38                                    ; $488C: $FF
    inc hl                                        ; $488D: $23
    reti                                          ; $488E: $D9


    and [hl]                                      ; $488F: $A6
    ei                                            ; $4890: $FB
    ld b, a                                       ; $4891: $47
    ld d, a                                       ; $4892: $57
    xor [hl]                                      ; $4893: $AE
    rst RST_38                                    ; $4894: $FF
    adc h                                         ; $4895: $8C
    cp l                                          ; $4896: $BD
    ld e, d                                       ; $4897: $5A
    ld a, a                                       ; $4898: $7F
    sub c                                         ; $4899: $91
    rst RST_38                                    ; $489A: $FF
    dec de                                        ; $489B: $1B
    rra                                           ; $489C: $1F
    nop                                           ; $489D: $00
    nop                                           ; $489E: $00
    nop                                           ; $489F: $00
    ldh [$FF80], a                                ; $48A0: $E0 $80
    ldh a, [$FFC0]                                ; $48A2: $F0 $C0
    ld d, b                                       ; $48A4: $50
    and b                                         ; $48A5: $A0
    ld [hl], b                                    ; $48A6: $70
    and b                                         ; $48A7: $A0
    ldh a, [$FFC0]                                ; $48A8: $F0 $C0
    ldh a, [$FFE0]                                ; $48AA: $F0 $E0
    ldh [rP1], a                                  ; $48AC: $E0 $00
    ld b, b                                       ; $48AE: $40
    add b                                         ; $48AF: $80
    add b                                         ; $48B0: $80
    nop                                           ; $48B1: $00
    ret nz                                        ; $48B2: $C0

    nop                                           ; $48B3: $00
    ld hl, sp+$40                                 ; $48B4: $F8 $40
    ld hl, sp-$10                                 ; $48B6: $F8 $F0
    ldh a, [$FFE0]                                ; $48B8: $F0 $E0
    ldh [$FF80], a                                ; $48BA: $E0 $80
    add b                                         ; $48BC: $80
    nop                                           ; $48BD: $00
    nop                                           ; $48BE: $00
    nop                                           ; $48BF: $00
    dec bc                                        ; $48C0: $0B
    rlca                                          ; $48C1: $07
    rla                                           ; $48C2: $17
    dec bc                                        ; $48C3: $0B
    rla                                           ; $48C4: $17
    dec bc                                        ; $48C5: $0B
    cpl                                           ; $48C6: $2F
    dec e                                         ; $48C7: $1D
    cpl                                           ; $48C8: $2F
    dec e                                         ; $48C9: $1D
    cpl                                           ; $48CA: $2F
    dec e                                         ; $48CB: $1D
    rra                                           ; $48CC: $1F
    nop                                           ; $48CD: $00
    dec bc                                        ; $48CE: $0B
    dec b                                         ; $48CF: $05
    rra                                           ; $48D0: $1F
    dec b                                         ; $48D1: $05
    rla                                           ; $48D2: $17
    ld c, $37                                     ; $48D3: $0E $37
    ld c, $2F                                     ; $48D5: $0E $2F
    rra                                           ; $48D7: $1F
    cpl                                           ; $48D8: $2F
    rra                                           ; $48D9: $1F
    cpl                                           ; $48DA: $2F
    rra                                           ; $48DB: $1F
    ld a, a                                       ; $48DC: $7F
    inc c                                         ; $48DD: $0C
    db $FC                                        ; $48DE: $FC
    ld c, e                                       ; $48DF: $4B
    ret nz                                        ; $48E0: $C0

    add b                                         ; $48E1: $80
    ret nz                                        ; $48E2: $C0

    add b                                         ; $48E3: $80
    ret nz                                        ; $48E4: $C0

    add b                                         ; $48E5: $80
    ldh [$FFC0], a                                ; $48E6: $E0 $C0
    ldh [$FFC0], a                                ; $48E8: $E0 $C0
    ldh [$FFC0], a                                ; $48EA: $E0 $C0
    ldh [rP1], a                                  ; $48EC: $E0 $00
    ret nz                                        ; $48EE: $C0

    add b                                         ; $48EF: $80
    ldh [$FFC0], a                                ; $48F0: $E0 $C0
    ldh [$FFC0], a                                ; $48F2: $E0 $C0
    ldh a, [$FFE0]                                ; $48F4: $F0 $E0
    ldh a, [$FF60]                                ; $48F6: $F0 $60
    ld hl, sp+$60                                 ; $48F8: $F8 $60
    db $F4                                        ; $48FA: $F4
    ld l, b                                       ; $48FB: $68
    db $FC                                        ; $48FC: $FC
    ld [$04FA], sp                                ; $48FD: $08 $FA $04
    nop                                           ; $4900: $00
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    nop                                           ; $4903: $00
    nop                                           ; $4904: $00
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
    ld [$1400], sp                                ; $4918: $08 $00 $14
    ld [$0C1E], sp                                ; $491B: $08 $1E $0C
    ld l, $1C                                     ; $491E: $2E $1C
    ld [bc], a                                    ; $4920: $02
    ld bc, $0102                                  ; $4921: $01 $02 $01
    ld c, $01                                     ; $4924: $0E $01
    rra                                           ; $4926: $1F
    dec c                                         ; $4927: $0D
    inc sp                                        ; $4928: $33
    ld e, $37                                     ; $4929: $1E $37
    ld e, $3F                                     ; $492B: $1E $3F
    ld e, $3F                                     ; $492D: $1E $3F
    nop                                           ; $492F: $00
    ld e, e                                       ; $4930: $5B
    inc l                                         ; $4931: $2C
    xor a                                         ; $4932: $AF
    ld d, d                                       ; $4933: $52
    rst RST_38                                    ; $4934: $FF
    ld d, b                                       ; $4935: $50
    rst RST_30                                    ; $4936: $F7
    ld l, h                                       ; $4937: $6C
    ld a, l                                       ; $4938: $7D
    ld [hl-], a                                   ; $4939: $32
    ccf                                           ; $493A: $3F
    ld bc, $0306                                  ; $493B: $01 $06 $03
    rlca                                          ; $493E: $07
    nop                                           ; $493F: $00
    rst RST_38                                    ; $4940: $FF
    rst RST_30                                    ; $4941: $F7
    rst RST_38                                    ; $4942: $FF
    rst RST_30                                    ; $4943: $F7
    rst RST_38                                    ; $4944: $FF
    rst RST_00                                    ; $4945: $C7
    rst RST_08                                    ; $4946: $CF
    or b                                          ; $4947: $B0
    ei                                            ; $4948: $FB
    add l                                         ; $4949: $85
    adc $B3                                       ; $494A: $CE $B3
    cp $83                                        ; $494C: $FE $83
    add a                                         ; $494E: $87

jr_00F_494F:
    ld a, e                                       ; $494F: $7B
    rlca                                          ; $4950: $07
    ld hl, sp+$39                                 ; $4951: $F8 $39
    rst RST_00                                    ; $4953: $C7
    rst RST_10                                    ; $4954: $D7

jr_00F_4955:
    cpl                                           ; $4955: $2F
    rst RST_38                                    ; $4956: $FF
    ld l, $DF                                     ; $4957: $2E $DF
    inc l                                         ; $4959: $2C
    rst RST_38                                    ; $495A: $FF
    scf                                           ; $495B: $37
    xor a                                         ; $495C: $AF
    jr jr_00F_497E                                ; $495D: $18 $1F

jr_00F_495F:
    nop                                           ; $495F: $00
    ldh [rP1], a                                  ; $4960: $E0 $00
    ret nc                                        ; $4962: $D0

    jr nz, jr_00F_4955                            ; $4963: $20 $F0

    jr nz, jr_00F_494F                            ; $4965: $20 $E8

    db $10                                        ; $4967: $10
    db $FC                                        ; $4968: $FC
    ldh [$FF74], a                                ; $4969: $E0 $74
    add sp, $3C                                   ; $496B: $E8 $3C
    add sp, -$44                                  ; $496D: $E8 $BC
    ldh a, [$FFFC]                                ; $496F: $F0 $FC
    add sp, -$18                                  ; $4971: $E8 $E8
    ret nc                                        ; $4973: $D0

    pop af                                        ; $4974: $F1
    ret nz                                        ; $4975: $C0

    or $21                                        ; $4976: $F6 $21
    rst RST_28                                    ; $4978: $EF
    rla                                           ; $4979: $17
    rst RST_38                                    ; $497A: $FF
    rst RST_28                                    ; $497B: $EF
    rst RST_38                                    ; $497C: $FF
    nop                                           ; $497D: $00

jr_00F_497E:
    add b                                         ; $497E: $80
    nop                                           ; $497F: $00
    ldh [rP1], a                                  ; $4980: $E0 $00
    ld h, b                                       ; $4982: $60
    ret nz                                        ; $4983: $C0

    ret nz                                        ; $4984: $C0

    add b                                         ; $4985: $80
    add b                                         ; $4986: $80
    nop                                           ; $4987: $00
    nop                                           ; $4988: $00
    nop                                           ; $4989: $00
    nop                                           ; $498A: $00
    nop                                           ; $498B: $00
    nop                                           ; $498C: $00
    nop                                           ; $498D: $00
    nop                                           ; $498E: $00
    nop                                           ; $498F: $00
    nop                                           ; $4990: $00
    nop                                           ; $4991: $00
    nop                                           ; $4992: $00
    nop                                           ; $4993: $00
    nop                                           ; $4994: $00
    nop                                           ; $4995: $00
    nop                                           ; $4996: $00
    nop                                           ; $4997: $00
    nop                                           ; $4998: $00
    nop                                           ; $4999: $00
    nop                                           ; $499A: $00
    nop                                           ; $499B: $00
    nop                                           ; $499C: $00
    nop                                           ; $499D: $00
    nop                                           ; $499E: $00
    nop                                           ; $499F: $00
    jr nz, jr_00F_49A2                            ; $49A0: $20 $00

jr_00F_49A2:
    ld d, b                                       ; $49A2: $50
    jr nz, jr_00F_4A1D                            ; $49A3: $20 $78

    jr nc, jr_00F_495F                            ; $49A5: $30 $B8

    ld [hl], b                                    ; $49A7: $70
    cp h                                          ; $49A8: $BC
    ld a, b                                       ; $49A9: $78
    ld a, h                                       ; $49AA: $7C
    cp b                                          ; $49AB: $B8
    ld a, h                                       ; $49AC: $7C
    cp b                                          ; $49AD: $B8
    cp [hl]                                       ; $49AE: $BE
    call c, $DCFE                                 ; $49AF: $DC $FE $DC
    cp $DC                                        ; $49B2: $FE $DC
    cp $00                                        ; $49B4: $FE $00
    cp h                                          ; $49B6: $BC
    ld e, b                                       ; $49B7: $58
    cp $4C                                        ; $49B8: $FE $4C
    ld a, [hl]                                    ; $49BA: $7E
    db $EC                                        ; $49BB: $EC
    ld a, a                                       ; $49BC: $7F
    and $FF                                       ; $49BD: $E6 $FF
    or $00                                        ; $49BF: $F6 $00
    nop                                           ; $49C1: $00
    nop                                           ; $49C2: $00
    nop                                           ; $49C3: $00
    nop                                           ; $49C4: $00
    nop                                           ; $49C5: $00
    nop                                           ; $49C6: $00
    nop                                           ; $49C7: $00
    nop                                           ; $49C8: $00
    nop                                           ; $49C9: $00
    nop                                           ; $49CA: $00
    nop                                           ; $49CB: $00
    ld bc, $0100                                  ; $49CC: $01 $00 $01
    nop                                           ; $49CF: $00
    ld [bc], a                                    ; $49D0: $02
    ld bc, $0102                                  ; $49D1: $01 $02 $01
    ld [bc], a                                    ; $49D4: $02
    ld bc, $0001                                  ; $49D5: $01 $01 $00
    nop                                           ; $49D8: $00
    nop                                           ; $49D9: $00
    ld bc, $0100                                  ; $49DA: $01 $00 $01
    nop                                           ; $49DD: $00
    inc bc                                        ; $49DE: $03
    nop                                           ; $49DF: $00
    dec a                                         ; $49E0: $3D
    ld a, [bc]                                    ; $49E1: $0A
    rra                                           ; $49E2: $1F
    ld a, [bc]                                    ; $49E3: $0A
    dec e                                         ; $49E4: $1D
    ld a, [bc]                                    ; $49E5: $0A
    rra                                           ; $49E6: $1F
    ld a, [bc]                                    ; $49E7: $0A
    ld c, $04                                     ; $49E8: $0E $04
    ld c, $04                                     ; $49EA: $0E $04
    ld c, $04                                     ; $49EC: $0E $04
    ld c, $00                                     ; $49EE: $0E $00
    ld c, $04                                     ; $49F0: $0E $04
    dec bc                                        ; $49F2: $0B
    ld b, $0F                                     ; $49F3: $06 $0F
    ld [bc], a                                    ; $49F5: $02
    rrca                                          ; $49F6: $0F
    ld [bc], a                                    ; $49F7: $02
    dec bc                                        ; $49F8: $0B
    inc b                                         ; $49F9: $04
    rlca                                          ; $49FA: $07
    ld [bc], a                                    ; $49FB: $02
    rlca                                          ; $49FC: $07
    ld [bc], a                                    ; $49FD: $02
    inc bc                                        ; $49FE: $03
    nop                                           ; $49FF: $00
    cp h                                          ; $4A00: $BC
    inc de                                        ; $4A01: $13
    xor h                                         ; $4A02: $AC
    inc de                                        ; $4A03: $13
    cp l                                          ; $4A04: $BD
    inc de                                        ; $4A05: $13
    xor l                                         ; $4A06: $AD
    inc de                                        ; $4A07: $13
    cp a                                          ; $4A08: $BF
    inc de                                        ; $4A09: $13
    cpl                                           ; $4A0A: $2F
    inc de                                        ; $4A0B: $13
    ccf                                           ; $4A0C: $3F
    ld [de], a                                    ; $4A0D: $12
    rra                                           ; $4A0E: $1F
    ld [bc], a                                    ; $4A0F: $02
    rlca                                          ; $4A10: $07
    ld [bc], a                                    ; $4A11: $02
    rlca                                          ; $4A12: $07
    ld [bc], a                                    ; $4A13: $02
    rlca                                          ; $4A14: $07
    nop                                           ; $4A15: $00
    dec bc                                        ; $4A16: $0B
    ld b, $0B                                     ; $4A17: $06 $0B
    ld b, $17                                     ; $4A19: $06 $17
    ld c, $17                                     ; $4A1B: $0E $17

jr_00F_4A1D:
    ld a, [bc]                                    ; $4A1D: $0A
    rrca                                          ; $4A1E: $0F
    ld b, $0B                                     ; $4A1F: $06 $0B
    dec b                                         ; $4A21: $05
    ld c, $05                                     ; $4A22: $0E $05
    rrca                                          ; $4A24: $0F
    ld bc, $0205                                  ; $4A25: $01 $05 $02
    rrca                                          ; $4A28: $0F
    nop                                           ; $4A29: $00
    dec c                                         ; $4A2A: $0D
    ld [bc], a                                    ; $4A2B: $02
    rla                                           ; $4A2C: $17
    ld [$133C], sp                                ; $4A2D: $08 $3C $13
    cp $19                                        ; $4A30: $FE $19
    rst RST_28                                    ; $4A32: $EF
    ld e, d                                       ; $4A33: $5A
    db $ED                                        ; $4A34: $ED
    ld e, d                                       ; $4A35: $5A
    ld l, a                                       ; $4A36: $6F
    ld a, [de]                                    ; $4A37: $1A
    ld [hl], l                                    ; $4A38: $75
    ld a, [hl+]                                   ; $4A39: $2A
    scf                                           ; $4A3A: $37
    ld a, [bc]                                    ; $4A3B: $0A
    ld [hl], l                                    ; $4A3C: $75
    ld a, [bc]                                    ; $4A3D: $0A
    ld [hl], a                                    ; $4A3E: $77
    ld a, [hl+]                                   ; $4A3F: $2A
    ld a, $EC                                     ; $4A40: $3E $EC
    ld a, [hl]                                    ; $4A42: $7E
    db $EC                                        ; $4A43: $EC
    rst RST_38                                    ; $4A44: $FF
    or $CF                                        ; $4A45: $F6 $CF
    or $FF                                        ; $4A47: $F6 $FF
    and $66                                       ; $4A49: $E6 $66
    ret c                                         ; $4A4B: $D8

    ld a, h                                       ; $4A4C: $7C
    ret nz                                        ; $4A4D: $C0

    ld h, [hl]                                    ; $4A4E: $66
    ret c                                         ; $4A4F: $D8

    db $FD                                        ; $4A50: $FD
    jp nz, Jump_000_3BC4                          ; $4A51: $C2 $C4 $3B

    rra                                           ; $4A54: $1F
    ldh [$FF27], a                                ; $4A55: $E0 $27
    db $DB                                        ; $4A57: $DB
    rst RST_38                                    ; $4A58: $FF
    dec de                                        ; $4A59: $1B
    rst RST_20                                    ; $4A5A: $E7
    dec de                                        ; $4A5B: $1B
    cp [hl]                                       ; $4A5C: $BE
    dec de                                        ; $4A5D: $1B
    xor [hl]                                      ; $4A5E: $AE
    inc de                                        ; $4A5F: $13
    ret nz                                        ; $4A60: $C0

    nop                                           ; $4A61: $00
    ldh [$FFC0], a                                ; $4A62: $E0 $C0
    ld hl, sp-$40                                 ; $4A64: $F8 $C0
    ld hl, sp-$30                                 ; $4A66: $F8 $D0
    ld hl, sp-$30                                 ; $4A68: $F8 $D0
    ldh a, [$FFA0]                                ; $4A6A: $F0 $A0
    ld hl, sp-$80                                 ; $4A6C: $F8 $80
    ld hl, sp-$50                                 ; $4A6E: $F8 $B0
    ldh a, [$FFA0]                                ; $4A70: $F0 $A0
    ldh [rP1], a                                  ; $4A72: $E0 $00
    ret nz                                        ; $4A74: $C0

    nop                                           ; $4A75: $00
    ldh [rLCDC], a                                ; $4A76: $E0 $40
    ret nz                                        ; $4A78: $C0

    nop                                           ; $4A79: $00
    nop                                           ; $4A7A: $00
    nop                                           ; $4A7B: $00
    nop                                           ; $4A7C: $00
    nop                                           ; $4A7D: $00
    nop                                           ; $4A7E: $00
    nop                                           ; $4A7F: $00
    ld bc, $0200                                  ; $4A80: $01 $00 $02
    ld bc, $0102                                  ; $4A83: $01 $02 $01
    dec b                                         ; $4A86: $05
    inc bc                                        ; $4A87: $03
    dec b                                         ; $4A88: $05
    ld [bc], a                                    ; $4A89: $02
    dec bc                                        ; $4A8A: $0B
    ld b, $0F                                     ; $4A8B: $06 $0F
    ld [bc], a                                    ; $4A8D: $02
    inc bc                                        ; $4A8E: $03
    nop                                           ; $4A8F: $00
    ld bc, $0100                                  ; $4A90: $01 $00 $01
    nop                                           ; $4A93: $00
    ld [bc], a                                    ; $4A94: $02
    ld bc, $0102                                  ; $4A95: $01 $02 $01
    ld [bc], a                                    ; $4A98: $02
    ld bc, $0305                                  ; $4A99: $01 $05 $03
    dec b                                         ; $4A9C: $05
    ld [bc], a                                    ; $4A9D: $02
    rlca                                          ; $4A9E: $07
    ld [bc], a                                    ; $4A9F: $02
    ld h, b                                       ; $4AA0: $60
    nop                                           ; $4AA1: $00
    or b                                          ; $4AA2: $B0
    ld h, b                                       ; $4AA3: $60
    ld a, b                                       ; $4AA4: $78
    ldh a, [$FF7C]                                ; $4AA5: $F0 $7C
    cp b                                          ; $4AA7: $B8
    db $FC                                        ; $4AA8: $FC
    ld e, b                                       ; $4AA9: $58
    cp $6C                                        ; $4AAA: $FE $6C
    ld e, [hl]                                    ; $4AAC: $5E
    db $EC                                        ; $4AAD: $EC
    rst RST_38                                    ; $4AAE: $FF
    or $FF                                        ; $4AAF: $F6 $FF
    db $F4                                        ; $4AB1: $F4
    db $FC                                        ; $4AB2: $FC
    ld b, b                                       ; $4AB3: $40
    ld hl, sp-$70                                 ; $4AB4: $F8 $90
    ld hl, sp-$50                                 ; $4AB6: $F8 $B0
    db $FC                                        ; $4AB8: $FC
    cp b                                          ; $4AB9: $B8
    db $FC                                        ; $4ABA: $FC
    cp b                                          ; $4ABB: $B8
    cp h                                          ; $4ABC: $BC
    ld e, b                                       ; $4ABD: $58
    cp [hl]                                       ; $4ABE: $BE
    ld e, h                                       ; $4ABF: $5C
    ld c, $04                                     ; $4AC0: $0E $04
    ld c, $04                                     ; $4AC2: $0E $04

jr_00F_4AC4:
    inc c                                         ; $4AC4: $0C
    nop                                           ; $4AC5: $00
    nop                                           ; $4AC6: $00
    nop                                           ; $4AC7: $00
    nop                                           ; $4AC8: $00
    nop                                           ; $4AC9: $00
    nop                                           ; $4ACA: $00
    nop                                           ; $4ACB: $00
    nop                                           ; $4ACC: $00
    nop                                           ; $4ACD: $00
    nop                                           ; $4ACE: $00
    nop                                           ; $4ACF: $00
    nop                                           ; $4AD0: $00
    nop                                           ; $4AD1: $00
    nop                                           ; $4AD2: $00
    nop                                           ; $4AD3: $00
    nop                                           ; $4AD4: $00
    nop                                           ; $4AD5: $00
    nop                                           ; $4AD6: $00
    nop                                           ; $4AD7: $00
    nop                                           ; $4AD8: $00
    nop                                           ; $4AD9: $00
    nop                                           ; $4ADA: $00
    nop                                           ; $4ADB: $00
    nop                                           ; $4ADC: $00
    nop                                           ; $4ADD: $00
    nop                                           ; $4ADE: $00
    nop                                           ; $4ADF: $00
    nop                                           ; $4AE0: $00
    nop                                           ; $4AE1: $00
    nop                                           ; $4AE2: $00
    nop                                           ; $4AE3: $00
    inc c                                         ; $4AE4: $0C
    nop                                           ; $4AE5: $00
    rra                                           ; $4AE6: $1F
    ld [$031E], sp                                ; $4AE7: $08 $1E $03
    ccf                                           ; $4AEA: $3F
    inc e                                         ; $4AEB: $1C
    ld a, a                                       ; $4AEC: $7F
    daa                                           ; $4AED: $27
    rst RST_20                                    ; $4AEE: $E7
    ld b, e                                       ; $4AEF: $43
    db $E3                                        ; $4AF0: $E3
    ld b, c                                       ; $4AF1: $41
    ld [hl], c                                    ; $4AF2: $71
    nop                                           ; $4AF3: $00
    ld a, h                                       ; $4AF4: $7C
    jr nc, jr_00F_4B55                            ; $4AF5: $30 $5E

    inc a                                         ; $4AF7: $3C
    cpl                                           ; $4AF8: $2F
    jr jr_00F_4B1A                                ; $4AF9: $18 $1F

    ld b, $06                                     ; $4AFB: $06 $06
    nop                                           ; $4AFD: $00
    nop                                           ; $4AFE: $00
    nop                                           ; $4AFF: $00
    nop                                           ; $4B00: $00
    nop                                           ; $4B01: $00
    nop                                           ; $4B02: $00
    nop                                           ; $4B03: $00
    nop                                           ; $4B04: $00
    nop                                           ; $4B05: $00
    ld bc, $0200                                  ; $4B06: $01 $00 $02
    ld bc, $0307                                  ; $4B09: $01 $07 $03
    rlca                                          ; $4B0C: $07
    nop                                           ; $4B0D: $00
    nop                                           ; $4B0E: $00
    nop                                           ; $4B0F: $00
    ld bc, $0100                                  ; $4B10: $01 $00 $01
    nop                                           ; $4B13: $00
    ld [bc], a                                    ; $4B14: $02
    ld bc, $019A                                  ; $4B15: $01 $9A $01
    xor a                                         ; $4B18: $AF
    inc de                                        ; $4B19: $13

jr_00F_4B1A:
    ld a, a                                       ; $4B1A: $7F
    ld [hl-], a                                   ; $4B1B: $32
    rst RST_38                                    ; $4B1C: $FF
    nop                                           ; $4B1D: $00
    rst RST_00                                    ; $4B1E: $C7
    db $FC                                        ; $4B1F: $FC
    jr jr_00F_4B22                                ; $4B20: $18 $00

jr_00F_4B22:
    ld l, [hl]                                    ; $4B22: $6E
    jr jr_00F_4AC4                                ; $4B23: $18 $9F

    ld a, [hl]                                    ; $4B25: $7E
    ccf                                           ; $4B26: $3F
    rst RST_28                                    ; $4B27: $EF
    rst RST_38                                    ; $4B28: $FF
    rst RST_10                                    ; $4B29: $D7
    rst RST_38                                    ; $4B2A: $FF
    cp l                                          ; $4B2B: $BD
    rst RST_38                                    ; $4B2C: $FF
    db $10                                        ; $4B2D: $10
    rst RST_38                                    ; $4B2E: $FF
    ld h, [hl]                                    ; $4B2F: $66
    ld a, a                                       ; $4B30: $7F
    rst RST_28                                    ; $4B31: $EF
    ld l, a                                       ; $4B32: $6F
    rst RST_10                                    ; $4B33: $D7
    ld e, a                                       ; $4B34: $5F
    cp e                                          ; $4B35: $BB
    cp a                                          ; $4B36: $BF
    ld a, l                                       ; $4B37: $7D
    cp a                                          ; $4B38: $BF
    ld a, l                                       ; $4B39: $7D
    ld a, c                                       ; $4B3A: $79
    cp $FF                                        ; $4B3B: $FE $FF
    ld a, b                                       ; $4B3D: $78
    ld e, c                                       ; $4B3E: $59
    or [hl]                                       ; $4B3F: $B6
    nop                                           ; $4B40: $00
    nop                                           ; $4B41: $00
    nop                                           ; $4B42: $00
    nop                                           ; $4B43: $00
    nop                                           ; $4B44: $00
    nop                                           ; $4B45: $00
    add b                                         ; $4B46: $80
    nop                                           ; $4B47: $00
    ret nz                                        ; $4B48: $C0

    add b                                         ; $4B49: $80
    ldh [$FFC0], a                                ; $4B4A: $E0 $C0
    ldh [rP1], a                                  ; $4B4C: $E0 $00
    nop                                           ; $4B4E: $00
    nop                                           ; $4B4F: $00
    add b                                         ; $4B50: $80
    nop                                           ; $4B51: $00
    ret nz                                        ; $4B52: $C0

    add b                                         ; $4B53: $80
    ret nz                                        ; $4B54: $C0

jr_00F_4B55:
    add b                                         ; $4B55: $80
    ldh [$FFC0], a                                ; $4B56: $E0 $C0
    ld sp, hl                                     ; $4B58: $F9
    ret nz                                        ; $4B59: $C0

    push af                                       ; $4B5A: $F5
    add sp, -$02                                  ; $4B5B: $E8 $FE
    db $EC                                        ; $4B5D: $EC
    rst RST_38                                    ; $4B5E: $FF
    nop                                           ; $4B5F: $00
    adc a                                         ; $4B60: $8F
    db $FC                                        ; $4B61: $FC
    rst RST_38                                    ; $4B62: $FF
    ld a, b                                       ; $4B63: $78
    ld a, l                                       ; $4B64: $7D
    ld d, $17                                     ; $4B65: $16 $17
    add hl, bc                                    ; $4B67: $09
    rra                                           ; $4B68: $1F
    ld [$060B], sp                                ; $4B69: $08 $0B $06
    ld b, $01                                     ; $4B6C: $06 $01
    ld bc, $0300                                  ; $4B6E: $01 $00 $03
    ld bc, $0003                                  ; $4B71: $01 $03 $00
    nop                                           ; $4B74: $00
    nop                                           ; $4B75: $00
    nop                                           ; $4B76: $00
    nop                                           ; $4B77: $00
    nop                                           ; $4B78: $00
    nop                                           ; $4B79: $00
    nop                                           ; $4B7A: $00
    nop                                           ; $4B7B: $00
    nop                                           ; $4B7C: $00
    nop                                           ; $4B7D: $00
    nop                                           ; $4B7E: $00
    nop                                           ; $4B7F: $00
    rst RST_18                                    ; $4B80: $DF
    jr nc, @+$5B                                  ; $4B81: $30 $59

    or [hl]                                       ; $4B83: $B6
    or a                                          ; $4B84: $B7
    ld c, b                                       ; $4B85: $48
    rst RST_00                                    ; $4B86: $C7
    add hl, sp                                    ; $4B87: $39
    ld c, l                                       ; $4B88: $4D
    or [hl]                                       ; $4B89: $B6
    rst RST_38                                    ; $4B8A: $FF
    nop                                           ; $4B8B: $00
    add $01                                       ; $4B8C: $C6 $01
    rst RST_28                                    ; $4B8E: $EF
    add d                                         ; $4B8F: $82
    ld l, e                                       ; $4B90: $6B
    add h                                         ; $4B91: $84
    add $03                                       ; $4B92: $C6 $03
    inc bc                                        ; $4B94: $03
    nop                                           ; $4B95: $00
    nop                                           ; $4B96: $00
    nop                                           ; $4B97: $00
    nop                                           ; $4B98: $00
    nop                                           ; $4B99: $00
    nop                                           ; $4B9A: $00
    nop                                           ; $4B9B: $00
    nop                                           ; $4B9C: $00
    nop                                           ; $4B9D: $00
    nop                                           ; $4B9E: $00
    nop                                           ; $4B9F: $00
    db $E3                                        ; $4BA0: $E3
    ccf                                           ; $4BA1: $3F
    ld [hl], c                                    ; $4BA2: $71
    cp a                                          ; $4BA3: $BF
    rst RST_38                                    ; $4BA4: $FF
    ld a, $7E                                     ; $4BA5: $3E $7E
    cp b                                          ; $4BA7: $B8
    ld hl, sp+$40                                 ; $4BA8: $F8 $40
    and b                                         ; $4BAA: $A0
    ld b, b                                       ; $4BAB: $40
    ldh [$FF80], a                                ; $4BAC: $E0 $80
    ret nz                                        ; $4BAE: $C0

    nop                                           ; $4BAF: $00
    add b                                         ; $4BB0: $80
    nop                                           ; $4BB1: $00
    ret nz                                        ; $4BB2: $C0

    add b                                         ; $4BB3: $80
    ret nz                                        ; $4BB4: $C0

    nop                                           ; $4BB5: $00
    nop                                           ; $4BB6: $00
    nop                                           ; $4BB7: $00
    nop                                           ; $4BB8: $00
    nop                                           ; $4BB9: $00
    nop                                           ; $4BBA: $00
    nop                                           ; $4BBB: $00
    nop                                           ; $4BBC: $00
    nop                                           ; $4BBD: $00
    nop                                           ; $4BBE: $00

jr_00F_4BBF:
    nop                                           ; $4BBF: $00
    nop                                           ; $4BC0: $00
    nop                                           ; $4BC1: $00
    nop                                           ; $4BC2: $00
    nop                                           ; $4BC3: $00
    nop                                           ; $4BC4: $00
    nop                                           ; $4BC5: $00
    jr nc, jr_00F_4BC8                            ; $4BC6: $30 $00

jr_00F_4BC8:
    ld hl, sp+$10                                 ; $4BC8: $F8 $10
    ld a, b                                       ; $4BCA: $78
    ret nz                                        ; $4BCB: $C0

    db $FC                                        ; $4BCC: $FC

jr_00F_4BCD:
    jr c, jr_00F_4BCD                             ; $4BCD: $38 $FE

    db $E4                                        ; $4BCF: $E4
    rst RST_20                                    ; $4BD0: $E7
    jp nz, $82C7                                  ; $4BD1: $C2 $C7 $82

    adc [hl]                                      ; $4BD4: $8E

jr_00F_4BD5:
    nop                                           ; $4BD5: $00
    ld a, $0C                                     ; $4BD6: $3E $0C
    ld a, d                                       ; $4BD8: $7A
    inc a                                         ; $4BD9: $3C
    db $F4                                        ; $4BDA: $F4
    jr jr_00F_4BD5                                ; $4BDB: $18 $F8

    ld h, b                                       ; $4BDD: $60
    ld h, b                                       ; $4BDE: $60
    nop                                           ; $4BDF: $00
    rrca                                          ; $4BE0: $0F
    ld [bc], a                                    ; $4BE1: $02
    rrca                                          ; $4BE2: $0F
    nop                                           ; $4BE3: $00
    rst RST_18                                    ; $4BE4: $DF
    dec bc                                        ; $4BE5: $0B
    cp a                                          ; $4BE6: $BF
    ld b, [hl]                                    ; $4BE7: $46
    cp [hl]                                       ; $4BE8: $BE
    ld l, a                                       ; $4BE9: $6F
    ld a, a                                       ; $4BEA: $7F
    cpl                                           ; $4BEB: $2F
    ccf                                           ; $4BEC: $3F
    inc de                                        ; $4BED: $13
    rra                                           ; $4BEE: $1F
    inc b                                         ; $4BEF: $04
    ld c, $03                                     ; $4BF0: $0E $03
    add hl, bc                                    ; $4BF2: $09
    ld b, $37                                     ; $4BF3: $06 $37
    inc c                                         ; $4BF5: $0C
    ld e, a                                       ; $4BF6: $5F

jr_00F_4BF7:
    jr nc, jr_00F_4BF7                            ; $4BF7: $30 $FE

    ld b, b                                       ; $4BF9: $40
    call z, RST_00                                ; $4BFA: $CC $00 $00
    nop                                           ; $4BFD: $00
    nop                                           ; $4BFE: $00
    nop                                           ; $4BFF: $00
    rst RST_38                                    ; $4C00: $FF
    jp Jump_00F_52FF                              ; $4C01: $C3 $FF $52


    ei                                            ; $4C04: $FB
    inc e                                         ; $4C05: $1C
    inc a                                         ; $4C06: $3C
    rst RST_28                                    ; $4C07: $EF
    rst RST_38                                    ; $4C08: $FF
    rst RST_20                                    ; $4C09: $E7
    rst RST_20                                    ; $4C0A: $E7
    db $DB                                        ; $4C0B: $DB
    rst RST_20                                    ; $4C0C: $E7
    sbc c                                         ; $4C0D: $99
    sbc a                                         ; $4C0E: $9F
    ld h, [hl]                                    ; $4C0F: $66
    ldh a, [c]                                    ; $4C10: $F2
    dec c                                         ; $4C11: $0D
    rst RST_38                                    ; $4C12: $FF

jr_00F_4C13:
    jr jr_00F_4BBF                                ; $4C13: $18 $AA

    ld de, $2173                                  ; $4C15: $11 $73 $21
    ld d, l                                       ; $4C18: $55
    ld [hl+], a                                   ; $4C19: $22
    ld a, d                                       ; $4C1A: $7A
    inc h                                         ; $4C1B: $24
    inc l                                         ; $4C1C: $2C
    jr @+$1E                                      ; $4C1D: $18 $1C

    nop                                           ; $4C1F: $00

jr_00F_4C20:
    ret nc                                        ; $4C20: $D0

    jr nz, jr_00F_4C13                            ; $4C21: $20 $F0

    jr nz, jr_00F_4C20                            ; $4C23: $20 $FB

    ret nc                                        ; $4C25: $D0

    db $FD                                        ; $4C26: $FD
    ld h, d                                       ; $4C27: $62
    ld a, l                                       ; $4C28: $7D
    or $FE                                        ; $4C29: $F6 $FE
    db $F4                                        ; $4C2B: $F4
    db $FC                                        ; $4C2C: $FC
    ret z                                         ; $4C2D: $C8

    ld hl, sp+$20                                 ; $4C2E: $F8 $20
    ldh a, [rP1]                                  ; $4C30: $F0 $00
    ldh a, [$FFA0]                                ; $4C32: $F0 $A0
    xor b                                         ; $4C34: $A8
    ld d, b                                       ; $4C35: $50
    db $FC                                        ; $4C36: $FC
    jr z, jr_00F_4C93                             ; $4C37: $28 $5A

    inc h                                         ; $4C39: $24
    xor $44                                       ; $4C3A: $EE $44
    add $00                                       ; $4C3C: $C6 $00
    nop                                           ; $4C3E: $00
    nop                                           ; $4C3F: $00
    inc b                                         ; $4C40: $04
    inc bc                                        ; $4C41: $03
    dec b                                         ; $4C42: $05
    ld [bc], a                                    ; $4C43: $02
    dec bc                                        ; $4C44: $0B
    ld b, $0A                                     ; $4C45: $06 $0A
    dec b                                         ; $4C47: $05
    rla                                           ; $4C48: $17
    dec c                                         ; $4C49: $0D
    rra                                           ; $4C4A: $1F
    dec b                                         ; $4C4B: $05
    rlca                                          ; $4C4C: $07
    nop                                           ; $4C4D: $00
    inc bc                                        ; $4C4E: $03
    ld bc, $0107                                  ; $4C4F: $01 $07 $01
    rlca                                          ; $4C52: $07
    ld [bc], a                                    ; $4C53: $02
    rrca                                          ; $4C54: $0F
    ld [bc], a                                    ; $4C55: $02
    ld a, [bc]                                    ; $4C56: $0A
    dec b                                         ; $4C57: $05
    ld a, d                                       ; $4C58: $7A
    dec b                                         ; $4C59: $05
    rst RST_18                                    ; $4C5A: $DF

jr_00F_4C5B:
    ld h, e                                       ; $4C5B: $63
    push hl                                       ; $4C5C: $E5
    dec sp                                        ; $4C5D: $3B
    ld a, e                                       ; $4C5E: $7B
    dec e                                         ; $4C5F: $1D
    ld hl, sp+$70                                 ; $4C60: $F8 $70
    ld hl, sp-$50                                 ; $4C62: $F8 $B0
    db $FC                                        ; $4C64: $FC
    ret c                                         ; $4C65: $D8

    cp h                                          ; $4C66: $BC
    ret c                                         ; $4C67: $D8

    cp $EC                                        ; $4C68: $FE $EC
    cp $E8                                        ; $4C6A: $FE $E8
    ld hl, sp-$80                                 ; $4C6C: $F8 $80
    ldh a, [rNR41]                                ; $4C6E: $F0 $20
    ld hl, sp+$60                                 ; $4C70: $F8 $60
    ld a, b                                       ; $4C72: $78
    or b                                          ; $4C73: $B0
    ld a, h                                       ; $4C74: $7C
    or b                                          ; $4C75: $B0
    ld a, h                                       ; $4C76: $7C
    ret c                                         ; $4C77: $D8

    cp $D8                                        ; $4C78: $FE $D8
    ei                                            ; $4C7A: $FB
    and $A7                                       ; $4C7B: $E6 $A7
    call c, $B8DE                                 ; $4C7D: $DC $DE $B8
    nop                                           ; $4C80: $00
    nop                                           ; $4C81: $00
    nop                                           ; $4C82: $00
    nop                                           ; $4C83: $00
    nop                                           ; $4C84: $00
    nop                                           ; $4C85: $00
    nop                                           ; $4C86: $00
    nop                                           ; $4C87: $00
    nop                                           ; $4C88: $00
    nop                                           ; $4C89: $00
    nop                                           ; $4C8A: $00
    nop                                           ; $4C8B: $00
    nop                                           ; $4C8C: $00
    nop                                           ; $4C8D: $00
    nop                                           ; $4C8E: $00
    nop                                           ; $4C8F: $00
    nop                                           ; $4C90: $00
    nop                                           ; $4C91: $00
    nop                                           ; $4C92: $00

jr_00F_4C93:
    nop                                           ; $4C93: $00
    nop                                           ; $4C94: $00
    nop                                           ; $4C95: $00
    nop                                           ; $4C96: $00
    nop                                           ; $4C97: $00
    nop                                           ; $4C98: $00
    nop                                           ; $4C99: $00
    jr nc, jr_00F_4C9C                            ; $4C9A: $30 $00

jr_00F_4C9C:
    ld e, b                                       ; $4C9C: $58
    jr nc, jr_00F_4C5B                            ; $4C9D: $30 $BC

    ld a, b                                       ; $4C9F: $78
    ld c, $03                                     ; $4CA0: $0E $03
    rlca                                          ; $4CA2: $07
    ld bc, $020F                                  ; $4CA3: $01 $0F $02
    rrca                                          ; $4CA6: $0F
    nop                                           ; $4CA7: $00
    rst RST_18                                    ; $4CA8: $DF
    dec bc                                        ; $4CA9: $0B
    cp a                                          ; $4CAA: $BF
    ld b, [hl]                                    ; $4CAB: $46
    cp [hl]                                       ; $4CAC: $BE
    ld l, a                                       ; $4CAD: $6F
    ld a, a                                       ; $4CAE: $7F
    cpl                                           ; $4CAF: $2F
    ccf                                           ; $4CB0: $3F
    inc de                                        ; $4CB1: $13
    rra                                           ; $4CB2: $1F
    inc b                                         ; $4CB3: $04
    rrca                                          ; $4CB4: $0F
    ld [bc], a                                    ; $4CB5: $02
    rrca                                          ; $4CB6: $0F
    ld bc, $0E75                                  ; $4CB7: $01 $75 $0E
    rst RST_18                                    ; $4CBA: $DF
    ld [hl], b                                    ; $4CBB: $70
    di                                            ; $4CBC: $F3
    nop                                           ; $4CBD: $00
    nop                                           ; $4CBE: $00
    nop                                           ; $4CBF: $00
    ld e, d                                       ; $4CC0: $5A
    cp l                                          ; $4CC1: $BD
    cp l                                          ; $4CC2: $BD
    db $DB                                        ; $4CC3: $DB
    rst RST_38                                    ; $4CC4: $FF
    jp Jump_00F_52FF                              ; $4CC5: $C3 $FF $52


    ei                                            ; $4CC8: $FB
    inc e                                         ; $4CC9: $1C
    inc a                                         ; $4CCA: $3C
    rst RST_28                                    ; $4CCB: $EF
    rst RST_38                                    ; $4CCC: $FF
    rst RST_20                                    ; $4CCD: $E7
    rst RST_30                                    ; $4CCE: $F7
    set 0, a                                      ; $4CCF: $CB $C7
    cp b                                          ; $4CD1: $B8
    call $FF36                                    ; $4CD2: $CD $36 $FF
    nop                                           ; $4CD5: $00
    ld [hl], d                                    ; $4CD6: $72

jr_00F_4CD7:
    add c                                         ; $4CD7: $81
    rst RST_20                                    ; $4CD8: $E7
    ld [bc], a                                    ; $4CD9: $02
    push bc                                       ; $4CDA: $C5
    ld [bc], a                                    ; $4CDB: $02
    add d                                         ; $4CDC: $82
    ld bc, $0001                                  ; $4CDD: $01 $01 $00
    ld [hl], b                                    ; $4CE0: $70
    ret nz                                        ; $4CE1: $C0

    ldh [$FF80], a                                ; $4CE2: $E0 $80

jr_00F_4CE4:
    ret nc                                        ; $4CE4: $D0

    jr nz, jr_00F_4CD7                            ; $4CE5: $20 $F0

    jr nz, jr_00F_4CE4                            ; $4CE7: $20 $FB

    ret nc                                        ; $4CE9: $D0

    db $FD                                        ; $4CEA: $FD
    ld h, d                                       ; $4CEB: $62
    ld a, l                                       ; $4CEC: $7D
    or $FE                                        ; $4CED: $F6 $FE
    db $F4                                        ; $4CEF: $F4
    db $FC                                        ; $4CF0: $FC
    ret z                                         ; $4CF1: $C8

    ld hl, sp+$20                                 ; $4CF2: $F8 $20
    or [hl]                                       ; $4CF4: $B6
    ld c, b                                       ; $4CF5: $48
    db $ED                                        ; $4CF6: $ED
    sub [hl]                                      ; $4CF7: $96
    rst RST_38                                    ; $4CF8: $FF
    add hl, hl                                    ; $4CF9: $29
    xor e                                         ; $4CFA: $AB
    ld d, $DE                                     ; $4CFB: $16 $DE
    adc c                                         ; $4CFD: $89
    reti                                          ; $4CFE: $D9


    nop                                           ; $4CFF: $00
    add b                                         ; $4D00: $80
    nop                                           ; $4D01: $00
    ld b, b                                       ; $4D02: $40
    add b                                         ; $4D03: $80
    ldh [rLCDC], a                                ; $4D04: $E0 $40
    ldh [$FF80], a                                ; $4D06: $E0 $80
    add b                                         ; $4D08: $80
    nop                                           ; $4D09: $00
    nop                                           ; $4D0A: $00
    nop                                           ; $4D0B: $00
    nop                                           ; $4D0C: $00
    nop                                           ; $4D0D: $00
    nop                                           ; $4D0E: $00
    nop                                           ; $4D0F: $00
    nop                                           ; $4D10: $00
    nop                                           ; $4D11: $00
    nop                                           ; $4D12: $00
    nop                                           ; $4D13: $00
    nop                                           ; $4D14: $00
    nop                                           ; $4D15: $00
    nop                                           ; $4D16: $00
    nop                                           ; $4D17: $00
    nop                                           ; $4D18: $00
    nop                                           ; $4D19: $00
    nop                                           ; $4D1A: $00
    nop                                           ; $4D1B: $00
    nop                                           ; $4D1C: $00
    nop                                           ; $4D1D: $00
    nop                                           ; $4D1E: $00
    nop                                           ; $4D1F: $00
    ld bc, $0200                                  ; $4D20: $01 $00 $02
    ld bc, $0304                                  ; $4D23: $01 $04 $03
    dec b                                         ; $4D26: $05
    ld [bc], a                                    ; $4D27: $02
    dec bc                                        ; $4D28: $0B
    ld b, $0A                                     ; $4D29: $06 $0A
    dec b                                         ; $4D2B: $05
    rla                                           ; $4D2C: $17
    dec c                                         ; $4D2D: $0D
    rra                                           ; $4D2E: $1F
    dec b                                         ; $4D2F: $05
    rlca                                          ; $4D30: $07
    nop                                           ; $4D31: $00
    inc bc                                        ; $4D32: $03
    ld bc, $0107                                  ; $4D33: $01 $07 $01
    rlca                                          ; $4D36: $07
    ld [bc], a                                    ; $4D37: $02
    rrca                                          ; $4D38: $0F
    ld [bc], a                                    ; $4D39: $02
    ld a, [bc]                                    ; $4D3A: $0A
    dec b                                         ; $4D3B: $05
    ld a, d                                       ; $4D3C: $7A
    dec b                                         ; $4D3D: $05
    rst RST_18                                    ; $4D3E: $DF
    ld h, e                                       ; $4D3F: $63
    ld h, b                                       ; $4D40: $60
    ret nz                                        ; $4D41: $C0

    ldh a, [$FFE0]                                ; $4D42: $F0 $E0
    ld hl, sp+$70                                 ; $4D44: $F8 $70
    ld hl, sp-$50                                 ; $4D46: $F8 $B0
    db $FC                                        ; $4D48: $FC
    ret c                                         ; $4D49: $D8

    cp h                                          ; $4D4A: $BC
    ret c                                         ; $4D4B: $D8

    cp $EC                                        ; $4D4C: $FE $EC
    cp $E8                                        ; $4D4E: $FE $E8
    ld hl, sp-$80                                 ; $4D50: $F8 $80
    ldh a, [rNR41]                                ; $4D52: $F0 $20
    ld hl, sp+$60                                 ; $4D54: $F8 $60
    ld a, b                                       ; $4D56: $78
    or b                                          ; $4D57: $B0
    ld a, h                                       ; $4D58: $7C
    or b                                          ; $4D59: $B0
    ld a, h                                       ; $4D5A: $7C
    ret c                                         ; $4D5B: $D8

    cp $D8                                        ; $4D5C: $FE $D8
    ei                                            ; $4D5E: $FB
    and $00                                       ; $4D5F: $E6 $00
    nop                                           ; $4D61: $00
    nop                                           ; $4D62: $00
    nop                                           ; $4D63: $00
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
    nop                                           ; $4D7B: $00
    nop                                           ; $4D7C: $00
    nop                                           ; $4D7D: $00
    ret nz                                        ; $4D7E: $C0

    nop                                           ; $4D7F: $00
    ld de, $0F0E                                  ; $4D80: $11 $0E $0F
    nop                                           ; $4D83: $00
    inc bc                                        ; $4D84: $03
    ld bc, $00FF                                  ; $4D85: $01 $FF $00
    xor d                                         ; $4D88: $AA
    ld [hl], a                                    ; $4D89: $77
    ld a, a                                       ; $4D8A: $7F
    nop                                           ; $4D8B: $00
    nop                                           ; $4D8C: $00
    nop                                           ; $4D8D: $00
    nop                                           ; $4D8E: $00
    nop                                           ; $4D8F: $00
    ld bc, $0100                                  ; $4D90: $01 $00 $01
    nop                                           ; $4D93: $00
    ld [bc], a                                    ; $4D94: $02
    ld bc, $0103                                  ; $4D95: $01 $03 $01
    ld [bc], a                                    ; $4D98: $02
    ld bc, $0103                                  ; $4D99: $01 $03 $01
    inc bc                                        ; $4D9C: $03
    nop                                           ; $4D9D: $00
    nop                                           ; $4D9E: $00
    nop                                           ; $4D9F: $00
    rst RST_00                                    ; $4DA0: $C7
    jr c, @+$01                                   ; $4DA1: $38 $FF

    ld b, $66                                     ; $4DA3: $06 $66
    sbc c                                         ; $4DA5: $99
    rst RST_38                                    ; $4DA6: $FF
    nop                                           ; $4DA7: $00
    xor d                                         ; $4DA8: $AA
    rst RST_38                                    ; $4DA9: $FF
    ld a, [$BF07]                                 ; $4DAA: $FA $07 $BF
    ld b, b                                       ; $4DAD: $40
    db $FD                                        ; $4DAE: $FD
    ld b, d                                       ; $4DAF: $42
    ld a, a                                       ; $4DB0: $7F
    add l                                         ; $4DB1: $85
    ld a, [$BF85]                                 ; $4DB2: $FA $85 $BF
    add hl, bc                                    ; $4DB5: $09
    or [hl]                                       ; $4DB6: $B6
    add hl, bc                                    ; $4DB7: $09
    cp a                                          ; $4DB8: $BF
    add hl, bc                                    ; $4DB9: $09
    or l                                          ; $4DBA: $B5
    ld [$041E], sp                                ; $4DBB: $08 $1E $04
    ld b, $00                                     ; $4DBE: $06 $00
    cp $07                                        ; $4DC0: $FE $07
    rst RST_28                                    ; $4DC2: $EF
    rla                                           ; $4DC3: $17
    cpl                                           ; $4DC4: $2F
    rst RST_10                                    ; $4DC5: $D7
    rst RST_38                                    ; $4DC6: $FF
    ld b, $AF                                     ; $4DC7: $06 $AF
    ret nc                                        ; $4DC9: $D0

    or c                                          ; $4DCA: $B1
    ret nz                                        ; $4DCB: $C0

    pop hl                                        ; $4DCC: $E1
    nop                                           ; $4DCD: $00
    ld b, b                                       ; $4DCE: $40
    add b                                         ; $4DCF: $80
    add b                                         ; $4DD0: $80
    nop                                           ; $4DD1: $00
    add b                                         ; $4DD2: $80
    nop                                           ; $4DD3: $00
    add b                                         ; $4DD4: $80
    nop                                           ; $4DD5: $00
    add b                                         ; $4DD6: $80
    nop                                           ; $4DD7: $00
    add b                                         ; $4DD8: $80
    nop                                           ; $4DD9: $00
    ld b, b                                       ; $4DDA: $40
    add b                                         ; $4DDB: $80
    ldh [rLCDC], a                                ; $4DDC: $E0 $40
    ld h, b                                       ; $4DDE: $60
    nop                                           ; $4DDF: $00
    nop                                           ; $4DE0: $00
    nop                                           ; $4DE1: $00
    nop                                           ; $4DE2: $00
    nop                                           ; $4DE3: $00
    nop                                           ; $4DE4: $00
    nop                                           ; $4DE5: $00
    nop                                           ; $4DE6: $00
    nop                                           ; $4DE7: $00
    nop                                           ; $4DE8: $00
    nop                                           ; $4DE9: $00
    nop                                           ; $4DEA: $00
    nop                                           ; $4DEB: $00
    nop                                           ; $4DEC: $00
    nop                                           ; $4DED: $00
    nop                                           ; $4DEE: $00
    nop                                           ; $4DEF: $00
    nop                                           ; $4DF0: $00
    nop                                           ; $4DF1: $00
    nop                                           ; $4DF2: $00
    nop                                           ; $4DF3: $00
    nop                                           ; $4DF4: $00
    nop                                           ; $4DF5: $00
    nop                                           ; $4DF6: $00
    nop                                           ; $4DF7: $00
    ld [hl], c                                    ; $4DF8: $71
    nop                                           ; $4DF9: $00
    adc d                                         ; $4DFA: $8A
    ld [hl], c                                    ; $4DFB: $71
    rst RST_28                                    ; $4DFC: $EF
    db $10                                        ; $4DFD: $10
    db $EB                                        ; $4DFE: $EB
    inc d                                         ; $4DFF: $14
    nop                                           ; $4E00: $00
    nop                                           ; $4E01: $00
    nop                                           ; $4E02: $00
    nop                                           ; $4E03: $00

jr_00F_4E04:
    nop                                           ; $4E04: $00

Jump_00F_4E05:
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
    nop                                           ; $4E10: $00
    nop                                           ; $4E11: $00
    rlca                                          ; $4E12: $07
    nop                                           ; $4E13: $00
    jr jr_00F_4E1D                                ; $4E14: $18 $07

    ld h, a                                       ; $4E16: $67
    rra                                           ; $4E17: $1F
    rst RST_38                                    ; $4E18: $FF
    inc a                                         ; $4E19: $3C
    ccf                                           ; $4E1A: $3F
    db $D3                                        ; $4E1B: $D3
    cp a                                          ; $4E1C: $BF

jr_00F_4E1D:
    ld b, c                                       ; $4E1D: $41
    and a                                         ; $4E1E: $A7
    ld e, c                                       ; $4E1F: $59
    nop                                           ; $4E20: $00
    nop                                           ; $4E21: $00
    nop                                           ; $4E22: $00
    nop                                           ; $4E23: $00
    nop                                           ; $4E24: $00
    nop                                           ; $4E25: $00
    nop                                           ; $4E26: $00
    nop                                           ; $4E27: $00
    nop                                           ; $4E28: $00
    nop                                           ; $4E29: $00
    nop                                           ; $4E2A: $00
    nop                                           ; $4E2B: $00
    nop                                           ; $4E2C: $00
    nop                                           ; $4E2D: $00
    nop                                           ; $4E2E: $00
    nop                                           ; $4E2F: $00
    ld a, [hl]                                    ; $4E30: $7E
    nop                                           ; $4E31: $00
    ld sp, hl                                     ; $4E32: $F9
    ld b, $FF                                     ; $4E33: $06 $FF
    db $DB                                        ; $4E35: $DB
    rst RST_38                                    ; $4E36: $FF
    inc a                                         ; $4E37: $3C
    rst RST_38                                    ; $4E38: $FF
    db $FD                                        ; $4E39: $FD
    rst RST_38                                    ; $4E3A: $FF
    db $FD                                        ; $4E3B: $FD
    rst RST_38                                    ; $4E3C: $FF
    ld hl, sp-$08                                 ; $4E3D: $F8 $F8
    add a                                         ; $4E3F: $87
    ret nz                                        ; $4E40: $C0

    nop                                           ; $4E41: $00
    jr nc, jr_00F_4E04                            ; $4E42: $30 $C0

    ld hl, sp+$70                                 ; $4E44: $F8 $70
    db $FD                                        ; $4E46: $FD
    adc b                                         ; $4E47: $88
    cp $B9                                        ; $4E48: $FE $B9
    rst RST_38                                    ; $4E4A: $FF
    cp b                                          ; $4E4B: $B8
    rst RST_38                                    ; $4E4C: $FF
    rlca                                          ; $4E4D: $07
    rrca                                          ; $4E4E: $0F
    cp $7E                                        ; $4E4F: $FE $7E
    ld hl, sp-$02                                 ; $4E51: $F8 $FE
    db $E4                                        ; $4E53: $E4
    db $FC                                        ; $4E54: $FC
    sub b                                         ; $4E55: $90
    ld hl, sp+$50                                 ; $4E56: $F8 $50
    ret nc                                        ; $4E58: $D0

    add b                                         ; $4E59: $80
    ret nz                                        ; $4E5A: $C0

    add b                                         ; $4E5B: $80
    add b                                         ; $4E5C: $80
    nop                                           ; $4E5D: $00
    nop                                           ; $4E5E: $00
    nop                                           ; $4E5F: $00
    nop                                           ; $4E60: $00
    nop                                           ; $4E61: $00
    nop                                           ; $4E62: $00
    nop                                           ; $4E63: $00
    nop                                           ; $4E64: $00
    nop                                           ; $4E65: $00
    nop                                           ; $4E66: $00
    nop                                           ; $4E67: $00
    nop                                           ; $4E68: $00
    nop                                           ; $4E69: $00
    nop                                           ; $4E6A: $00
    nop                                           ; $4E6B: $00
    nop                                           ; $4E6C: $00
    nop                                           ; $4E6D: $00
    nop                                           ; $4E6E: $00

jr_00F_4E6F:
    nop                                           ; $4E6F: $00
    nop                                           ; $4E70: $00
    nop                                           ; $4E71: $00
    nop                                           ; $4E72: $00
    nop                                           ; $4E73: $00
    nop                                           ; $4E74: $00
    nop                                           ; $4E75: $00
    db $FC                                        ; $4E76: $FC
    nop                                           ; $4E77: $00
    inc a                                         ; $4E78: $3C
    ld hl, sp-$08                                 ; $4E79: $F8 $F8
    ld h, b                                       ; $4E7B: $60
    ldh [$FF80], a                                ; $4E7C: $E0 $80
    add b                                         ; $4E7E: $80
    nop                                           ; $4E7F: $00
    ld [hl], b                                    ; $4E80: $70
    nop                                           ; $4E81: $00
    ld d, b                                       ; $4E82: $50
    jr nz, @+$6A                                  ; $4E83: $20 $68

    jr nc, jr_00F_4E6F                            ; $4E85: $30 $E8

    ld [hl], b                                    ; $4E87: $70
    ld hl, sp+$70                                 ; $4E88: $F8 $70
    rst RST_30                                    ; $4E8A: $F7
    ld a, b                                       ; $4E8B: $78
    rst RST_38                                    ; $4E8C: $FF
    ld [hl], d                                    ; $4E8D: $72
    rst RST_38                                    ; $4E8E: $FF
    ld l, a                                       ; $4E8F: $6F
    ld a, a                                       ; $4E90: $7F
    nop                                           ; $4E91: $00
    nop                                           ; $4E92: $00
    nop                                           ; $4E93: $00
    nop                                           ; $4E94: $00
    nop                                           ; $4E95: $00
    nop                                           ; $4E96: $00
    nop                                           ; $4E97: $00
    ld bc, $0300                                  ; $4E98: $01 $00 $03
    ld bc, $0003                                  ; $4E9B: $01 $03 $00
    nop                                           ; $4E9E: $00
    nop                                           ; $4E9F: $00
    inc bc                                        ; $4EA0: $03
    nop                                           ; $4EA1: $00
    ld c, $01                                     ; $4EA2: $0E $01
    inc [hl]                                      ; $4EA4: $34
    dec bc                                        ; $4EA5: $0B
    ld c, [hl]                                    ; $4EA6: $4E
    dec sp                                        ; $4EA7: $3B
    sbc a                                         ; $4EA8: $9F
    ld a, e                                       ; $4EA9: $7B
    rrca                                          ; $4EAA: $0F
    di                                            ; $4EAB: $F3
    ei                                            ; $4EAC: $FB
    rst RST_30                                    ; $4EAD: $F7
    db $FC                                        ; $4EAE: $FC
    ld [hl], e                                    ; $4EAF: $73
    rst RST_38                                    ; $4EB0: $FF
    cp b                                          ; $4EB1: $B8
    rst RST_38                                    ; $4EB2: $FF
    ld [bc], a                                    ; $4EB3: $02
    ccf                                           ; $4EB4: $3F
    ld c, $0F                                     ; $4EB5: $0E $0F
    nop                                           ; $4EB7: $00
    db $FD                                        ; $4EB8: $FD
    ld b, $57                                     ; $4EB9: $06 $57
    ld hl, sp-$01                                 ; $4EBB: $F8 $FF
    ld bc, $011E                                  ; $4EBD: $01 $1E $01
    ret nz                                        ; $4EC0: $C0

    nop                                           ; $4EC1: $00
    ld hl, sp+$40                                 ; $4EC2: $F8 $40
    cp $58                                        ; $4EC4: $FE $58
    rst RST_38                                    ; $4EC6: $FF
    ld e, h                                       ; $4EC7: $5C
    ld a, l                                       ; $4EC8: $7D
    cp d                                          ; $4EC9: $BA
    rst RST_38                                    ; $4ECA: $FF
    add b                                         ; $4ECB: $80
    db $FC                                        ; $4ECC: $FC
    rst RST_18                                    ; $4ECD: $DF
    rst RST_38                                    ; $4ECE: $FF
    rst RST_18                                    ; $4ECF: $DF
    rst RST_38                                    ; $4ED0: $FF
    rlca                                          ; $4ED1: $07
    scf                                           ; $4ED2: $37
    ret                                           ; $4ED3: $C9


    add a                                         ; $4ED4: $87
    ld a, b                                       ; $4ED5: $78
    ld c, a                                       ; $4ED6: $4F
    or [hl]                                       ; $4ED7: $B6
    ld sp, hl                                     ; $4ED8: $F9
    add [hl]                                      ; $4ED9: $86
    ld a, a                                       ; $4EDA: $7F
    add [hl]                                      ; $4EDB: $86
    ei                                            ; $4EDC: $FB
    inc b                                         ; $4EDD: $04

jr_00F_4EDE:
    rst RST_38                                    ; $4EDE: $FF
    inc c                                         ; $4EDF: $0C
    nop                                           ; $4EE0: $00
    nop                                           ; $4EE1: $00
    nop                                           ; $4EE2: $00
    nop                                           ; $4EE3: $00
    or b                                          ; $4EE4: $B0
    nop                                           ; $4EE5: $00
    ld d, b                                       ; $4EE6: $50
    and b                                         ; $4EE7: $A0
    ldh a, [$FFA0]                                ; $4EE8: $F0 $A0
    ldh a, [rP1]                                  ; $4EEA: $F0 $00
    jr jr_00F_4EDE                                ; $4EEC: $18 $F0

    adc h                                         ; $4EEE: $8C
    ld hl, sp-$04                                 ; $4EEF: $F8 $FC
    ld hl, sp-$04                                 ; $4EF1: $F8 $FC
    ld hl, sp-$08                                 ; $4EF3: $F8 $F8
    ld [hl], b                                    ; $4EF5: $70
    ldh a, [rP1]                                  ; $4EF6: $F0 $00
    add b                                         ; $4EF8: $80
    nop                                           ; $4EF9: $00
    add b                                         ; $4EFA: $80
    nop                                           ; $4EFB: $00
    add b                                         ; $4EFC: $80
    nop                                           ; $4EFD: $00
    add b                                         ; $4EFE: $80
    nop                                           ; $4EFF: $00
    rst RST_38                                    ; $4F00: $FF
    ld bc, $06FD                                  ; $4F01: $01 $FD $06
    ld c, $00                                     ; $4F04: $0E $00
    nop                                           ; $4F06: $00
    nop                                           ; $4F07: $00
    nop                                           ; $4F08: $00
    nop                                           ; $4F09: $00
    nop                                           ; $4F0A: $00
    nop                                           ; $4F0B: $00
    nop                                           ; $4F0C: $00
    nop                                           ; $4F0D: $00
    nop                                           ; $4F0E: $00
    nop                                           ; $4F0F: $00
    nop                                           ; $4F10: $00
    nop                                           ; $4F11: $00
    nop                                           ; $4F12: $00
    nop                                           ; $4F13: $00
    nop                                           ; $4F14: $00
    nop                                           ; $4F15: $00
    nop                                           ; $4F16: $00
    nop                                           ; $4F17: $00
    nop                                           ; $4F18: $00
    nop                                           ; $4F19: $00
    nop                                           ; $4F1A: $00
    nop                                           ; $4F1B: $00
    nop                                           ; $4F1C: $00
    nop                                           ; $4F1D: $00
    nop                                           ; $4F1E: $00
    nop                                           ; $4F1F: $00
    ld a, [$DD04]                                 ; $4F20: $FA $04 $DD
    ld [$102B], sp                                ; $4F23: $08 $2B $10
    ld [hl], a                                    ; $4F26: $77
    jr nz, @+$68                                  ; $4F27: $20 $66

    nop                                           ; $4F29: $00
    nop                                           ; $4F2A: $00
    nop                                           ; $4F2B: $00
    nop                                           ; $4F2C: $00
    nop                                           ; $4F2D: $00
    nop                                           ; $4F2E: $00
    nop                                           ; $4F2F: $00
    nop                                           ; $4F30: $00
    nop                                           ; $4F31: $00
    nop                                           ; $4F32: $00
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
    ret nz                                        ; $4F40: $C0

    nop                                           ; $4F41: $00
    add b                                         ; $4F42: $80
    nop                                           ; $4F43: $00
    add b                                         ; $4F44: $80
    nop                                           ; $4F45: $00
    nop                                           ; $4F46: $00
    nop                                           ; $4F47: $00
    nop                                           ; $4F48: $00
    nop                                           ; $4F49: $00
    nop                                           ; $4F4A: $00
    nop                                           ; $4F4B: $00
    nop                                           ; $4F4C: $00
    nop                                           ; $4F4D: $00
    nop                                           ; $4F4E: $00
    nop                                           ; $4F4F: $00
    nop                                           ; $4F50: $00
    nop                                           ; $4F51: $00
    nop                                           ; $4F52: $00
    nop                                           ; $4F53: $00
    nop                                           ; $4F54: $00
    nop                                           ; $4F55: $00
    nop                                           ; $4F56: $00
    nop                                           ; $4F57: $00
    nop                                           ; $4F58: $00
    nop                                           ; $4F59: $00
    nop                                           ; $4F5A: $00
    nop                                           ; $4F5B: $00
    nop                                           ; $4F5C: $00
    nop                                           ; $4F5D: $00
    nop                                           ; $4F5E: $00
    nop                                           ; $4F5F: $00
    ld bc, $0100                                  ; $4F60: $01 $00 $01
    nop                                           ; $4F63: $00
    ld bc, $0100                                  ; $4F64: $01 $00 $01
    nop                                           ; $4F67: $00
    ld bc, $0000                                  ; $4F68: $01 $00 $00
    nop                                           ; $4F6B: $00
    ccf                                           ; $4F6C: $3F
    nop                                           ; $4F6D: $00
    ld a, [hl+]                                   ; $4F6E: $2A
    dec e                                         ; $4F6F: $1D
    rra                                           ; $4F70: $1F
    nop                                           ; $4F71: $00
    nop                                           ; $4F72: $00
    nop                                           ; $4F73: $00
    ld bc, $0300                                  ; $4F74: $01 $00 $03
    ld bc, $0003                                  ; $4F77: $01 $03 $00
    nop                                           ; $4F7A: $00
    nop                                           ; $4F7B: $00
    nop                                           ; $4F7C: $00
    nop                                           ; $4F7D: $00
    nop                                           ; $4F7E: $00
    nop                                           ; $4F7F: $00
    inc bc                                        ; $4F80: $03
    nop                                           ; $4F81: $00
    inc b                                         ; $4F82: $04
    inc bc                                        ; $4F83: $03
    rst RST_08                                    ; $4F84: $CF
    ld bc, $C6BD                                  ; $4F85: $01 $BD $C6
    rst RST_28                                    ; $4F88: $EF
    db $10                                        ; $4F89: $10
    cp l                                          ; $4F8A: $BD
    add $FF                                       ; $4F8B: $C6 $FF
    ld bc, $66D9                                  ; $4F8D: $01 $D9 $66
    rst RST_38                                    ; $4F90: $FF
    nop                                           ; $4F91: $00
    xor d                                         ; $4F92: $AA
    rst RST_38                                    ; $4F93: $FF
    cp $01                                        ; $4F94: $FE $01
    ld a, a                                       ; $4F96: $7F
    db $10                                        ; $4F97: $10
    db $DD                                        ; $4F98: $DD
    ld h, b                                       ; $4F99: $60
    ld a, [hl]                                    ; $4F9A: $7E
    add c                                         ; $4F9B: $81
    sbc e                                         ; $4F9C: $9B
    ld c, $1E                                     ; $4F9D: $0E $1E
    nop                                           ; $4F9F: $00
    rst RST_00                                    ; $4FA0: $C7
    ld a, $3F                                     ; $4FA1: $3E $3F
    ld sp, hl                                     ; $4FA3: $F9
    rst RST_38                                    ; $4FA4: $FF
    rst RST_20                                    ; $4FA5: $E7
    rst RST_38                                    ; $4FA6: $FF
    sbc a                                         ; $4FA7: $9F
    rst RST_38                                    ; $4FA8: $FF
    rrca                                          ; $4FA9: $0F
    ccf                                           ; $4FAA: $3F
    call z, Call_000_01FF                         ; $4FAB: $CC $FF $01
    ei                                            ; $4FAE: $FB
    add l                                         ; $4FAF: $85
    adc e                                         ; $4FB0: $8B
    ld [hl], l                                    ; $4FB1: $75
    rst RST_38                                    ; $4FB2: $FF
    ld bc, $F4AB                                  ; $4FB3: $01 $AB $F4
    xor [hl]                                      ; $4FB6: $AE
    ldh a, [$FFF6]                                ; $4FB7: $F0 $F6
    inc c                                         ; $4FB9: $0C
    cp l                                          ; $4FBA: $BD
    ld h, d                                       ; $4FBB: $62
    ei                                            ; $4FBC: $FB
    adc [hl]                                      ; $4FBD: $8E
    cp $00                                        ; $4FBE: $FE $00
    nop                                           ; $4FC0: $00
    nop                                           ; $4FC1: $00
    ldh a, [rP1]                                  ; $4FC2: $F0 $00
    call z, $FE30                                 ; $4FC4: $CC $30 $FE
    call c, $E2FF                                 ; $4FC7: $DC $FF $E2
    rst RST_38                                    ; $4FCA: $FF
    xor $FF                                       ; $4FCB: $EE $FF
    xor $FF                                       ; $4FCD: $EE $FF
    pop bc                                        ; $4FCF: $C1
    jp $9F3F                                      ; $4FD0: $C3 $3F $9F


    cp $FF                                        ; $4FD3: $FE $FF
    ld sp, hl                                     ; $4FD5: $F9
    rst RST_38                                    ; $4FD6: $FF
    db $E4                                        ; $4FD7: $E4
    cp $94                                        ; $4FD8: $FE $94
    db $F4                                        ; $4FDA: $F4
    jr nz, jr_00F_504D                            ; $4FDB: $20 $70

    jr nz, jr_00F_503F                            ; $4FDD: $20 $60

    nop                                           ; $4FDF: $00
    nop                                           ; $4FE0: $00
    nop                                           ; $4FE1: $00
    nop                                           ; $4FE2: $00
    nop                                           ; $4FE3: $00
    nop                                           ; $4FE4: $00
    nop                                           ; $4FE5: $00
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
    ld a, a                                       ; $4FF2: $7F
    nop                                           ; $4FF3: $00
    adc a                                         ; $4FF4: $8F
    ld a, [hl]                                    ; $4FF5: $7E
    cp $18                                        ; $4FF6: $FE $18
    ld hl, sp-$20                                 ; $4FF8: $F8 $E0
    ldh [$FF80], a                                ; $4FFA: $E0 $80
    add b                                         ; $4FFC: $80
    nop                                           ; $4FFD: $00
    add b                                         ; $4FFE: $80
    nop                                           ; $4FFF: $00
    nop                                           ; $5000: $00
    nop                                           ; $5001: $00
    nop                                           ; $5002: $00
    nop                                           ; $5003: $00
    nop                                           ; $5004: $00
    nop                                           ; $5005: $00
    nop                                           ; $5006: $00
    nop                                           ; $5007: $00
    nop                                           ; $5008: $00
    nop                                           ; $5009: $00
    nop                                           ; $500A: $00
    nop                                           ; $500B: $00
    nop                                           ; $500C: $00
    nop                                           ; $500D: $00
    nop                                           ; $500E: $00
    nop                                           ; $500F: $00
    nop                                           ; $5010: $00
    nop                                           ; $5011: $00
    nop                                           ; $5012: $00
    nop                                           ; $5013: $00
    nop                                           ; $5014: $00
    nop                                           ; $5015: $00
    nop                                           ; $5016: $00
    nop                                           ; $5017: $00
    nop                                           ; $5018: $00
    nop                                           ; $5019: $00
    nop                                           ; $501A: $00
    nop                                           ; $501B: $00
    inc bc                                        ; $501C: $03
    nop                                           ; $501D: $00
    ccf                                           ; $501E: $3F
    nop                                           ; $501F: $00
    inc bc                                        ; $5020: $03
    nop                                           ; $5021: $00
    rrca                                          ; $5022: $0F
    ld bc, $0E33                                  ; $5023: $01 $33 $0E
    ld c, a                                       ; $5026: $4F
    ld a, $FE                                     ; $5027: $3E $FE
    ld a, h                                       ; $5029: $7C
    cp $04                                        ; $502A: $FE $04
    inc c                                         ; $502C: $0C
    nop                                           ; $502D: $00
    inc bc                                        ; $502E: $03
    nop                                           ; $502F: $00
    rrca                                          ; $5030: $0F
    ld bc, $0E33                                  ; $5031: $01 $33 $0E
    ld c, a                                       ; $5034: $4F
    ld a, $FE                                     ; $5035: $3E $FE
    ld a, b                                       ; $5037: $78
    cp $04                                        ; $5038: $FE $04
    inc c                                         ; $503A: $0C
    nop                                           ; $503B: $00
    nop                                           ; $503C: $00
    nop                                           ; $503D: $00
    nop                                           ; $503E: $00

jr_00F_503F:
    nop                                           ; $503F: $00
    inc bc                                        ; $5040: $03
    nop                                           ; $5041: $00
    ld c, $03                                     ; $5042: $0E $03
    dec sp                                        ; $5044: $3B
    inc c                                         ; $5045: $0C
    ld l, a                                       ; $5046: $6F

jr_00F_5047:
    ld [hl-], a                                   ; $5047: $32
    rst RST_38                                    ; $5048: $FF
    inc c                                         ; $5049: $0C
    rst RST_38                                    ; $504A: $FF
    jr c, jr_00F_5047                             ; $504B: $38 $FA

jr_00F_504D:
    rst RST_20                                    ; $504D: $E7
    db $EB                                        ; $504E: $EB
    inc e                                         ; $504F: $1C
    ld a, l                                       ; $5050: $7D
    ld [hl+], a                                   ; $5051: $22
    ld l, a                                       ; $5052: $6F
    inc b                                         ; $5053: $04
    ld l, [hl]                                    ; $5054: $6E
    inc bc                                        ; $5055: $03
    cp a                                          ; $5056: $BF
    ld c, a                                       ; $5057: $4F
    rst RST_38                                    ; $5058: $FF
    ld a, $FE                                     ; $5059: $3E $FE
    pop hl                                        ; $505B: $E1
    rst RST_30                                    ; $505C: $F7
    add hl, bc                                    ; $505D: $09
    ld e, $09                                     ; $505E: $1E $09

jr_00F_5060:
    jr jr_00F_5062                                ; $5060: $18 $00

jr_00F_5062:
    jr z, jr_00F_5074                             ; $5062: $28 $10

    ld a, a                                       ; $5064: $7F
    jr nc, jr_00F_5060                            ; $5065: $30 $F9

    ld b, $B3                                     ; $5067: $06 $B3
    db $ED                                        ; $5069: $ED
    db $E3                                        ; $506A: $E3
    inc e                                         ; $506B: $1C
    pop hl                                        ; $506C: $E1
    ld e, $F9                                     ; $506D: $1E $F9
    ld b, $A9                                     ; $506F: $06 $A9
    sub $FF                                       ; $5071: $D6 $FF
    or b                                          ; $5073: $B0

jr_00F_5074:
    cp $0D                                        ; $5074: $FE $0D
    or $3D                                        ; $5076: $F6 $3D
    adc [hl]                                      ; $5078: $8E
    db $FD                                        ; $5079: $FD
    rra                                           ; $507A: $1F
    db $FC                                        ; $507B: $FC
    db $FC                                        ; $507C: $FC
    ldh [$FFE0], a                                ; $507D: $E0 $E0
    nop                                           ; $507F: $00
    ldh a, [rP1]                                  ; $5080: $F0 $00
    cp $10                                        ; $5082: $FE $10
    ld sp, hl                                     ; $5084: $F9
    cp $FE                                        ; $5085: $FE $FE
    rst RST_38                                    ; $5087: $FF
    rst RST_38                                    ; $5088: $FF
    rra                                           ; $5089: $1F
    ld e, a                                       ; $508A: $5F
    xor a                                         ; $508B: $AF
    ld e, a                                       ; $508C: $5F
    xor a                                         ; $508D: $AF
    rst RST_38                                    ; $508E: $FF
    nop                                           ; $508F: $00
    ld a, a                                       ; $5090: $7F
    cp a                                          ; $5091: $BF
    ld a, a                                       ; $5092: $7F
    cp a                                          ; $5093: $BF
    rst RST_38                                    ; $5094: $FF
    ld [hl], b                                    ; $5095: $70
    ldh a, [rP1]                                  ; $5096: $F0 $00
    nop                                           ; $5098: $00
    nop                                           ; $5099: $00
    nop                                           ; $509A: $00
    nop                                           ; $509B: $00
    nop                                           ; $509C: $00
    nop                                           ; $509D: $00
    nop                                           ; $509E: $00
    nop                                           ; $509F: $00
    add b                                         ; $50A0: $80
    nop                                           ; $50A1: $00
    ld h, b                                       ; $50A2: $60
    add b                                         ; $50A3: $80
    sub b                                         ; $50A4: $90
    ldh [$FFEB], a                                ; $50A5: $E0 $EB
    ldh a, [$FFF6]                                ; $50A7: $F0 $F6
    ld sp, hl                                     ; $50A9: $F9
    rst RST_38                                    ; $50AA: $FF
    dec a                                         ; $50AB: $3D
    rst RST_38                                    ; $50AC: $FF
    set 7, a                                      ; $50AD: $CB $FF
    di                                            ; $50AF: $F3
    rst RST_38                                    ; $50B0: $FF
    jr nc, jr_00F_50F2                            ; $50B1: $30 $3F

    rlca                                          ; $50B3: $07
    rra                                           ; $50B4: $1F
    rrca                                          ; $50B5: $0F
    rra                                           ; $50B6: $1F
    ld c, $0E                                     ; $50B7: $0E $0E
    nop                                           ; $50B9: $00
    nop                                           ; $50BA: $00
    nop                                           ; $50BB: $00
    nop                                           ; $50BC: $00
    nop                                           ; $50BD: $00
    nop                                           ; $50BE: $00
    nop                                           ; $50BF: $00
    add b                                         ; $50C0: $80
    nop                                           ; $50C1: $00
    ld b, b                                       ; $50C2: $40
    add b                                         ; $50C3: $80
    and b                                         ; $50C4: $A0
    ret nz                                        ; $50C5: $C0

    ret nc                                        ; $50C6: $D0

    ldh [rBCPS], a                                ; $50C7: $E0 $68
    ldh a, [$FFF8]                                ; $50C9: $F0 $F8
    nop                                           ; $50CB: $00
    ldh a, [$FFC0]                                ; $50CC: $F0 $C0
    ret nz                                        ; $50CE: $C0

    nop                                           ; $50CF: $00
    nop                                           ; $50D0: $00
    nop                                           ; $50D1: $00
    nop                                           ; $50D2: $00
    nop                                           ; $50D3: $00
    nop                                           ; $50D4: $00
    nop                                           ; $50D5: $00
    nop                                           ; $50D6: $00
    nop                                           ; $50D7: $00
    nop                                           ; $50D8: $00
    nop                                           ; $50D9: $00
    nop                                           ; $50DA: $00
    nop                                           ; $50DB: $00
    nop                                           ; $50DC: $00
    nop                                           ; $50DD: $00
    nop                                           ; $50DE: $00
    nop                                           ; $50DF: $00
    db $FD                                        ; $50E0: $FD
    jp nz, $12EF                                  ; $50E1: $C2 $EF $12

    dec a                                         ; $50E4: $3D
    ld [de], a                                    ; $50E5: $12
    scf                                           ; $50E6: $37
    ld [bc], a                                    ; $50E7: $02
    inc bc                                        ; $50E8: $03
    nop                                           ; $50E9: $00
    nop                                           ; $50EA: $00
    nop                                           ; $50EB: $00
    nop                                           ; $50EC: $00
    nop                                           ; $50ED: $00
    nop                                           ; $50EE: $00
    nop                                           ; $50EF: $00
    nop                                           ; $50F0: $00
    nop                                           ; $50F1: $00

jr_00F_50F2:
    nop                                           ; $50F2: $00
    nop                                           ; $50F3: $00
    nop                                           ; $50F4: $00
    nop                                           ; $50F5: $00
    nop                                           ; $50F6: $00
    nop                                           ; $50F7: $00
    nop                                           ; $50F8: $00
    nop                                           ; $50F9: $00
    nop                                           ; $50FA: $00
    nop                                           ; $50FB: $00
    nop                                           ; $50FC: $00
    nop                                           ; $50FD: $00
    nop                                           ; $50FE: $00
    nop                                           ; $50FF: $00
    nop                                           ; $5100: $00
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    nop                                           ; $5103: $00
    nop                                           ; $5104: $00
    nop                                           ; $5105: $00
    nop                                           ; $5106: $00
    nop                                           ; $5107: $00
    nop                                           ; $5108: $00
    nop                                           ; $5109: $00
    nop                                           ; $510A: $00
    nop                                           ; $510B: $00
    nop                                           ; $510C: $00
    nop                                           ; $510D: $00
    rrca                                          ; $510E: $0F
    nop                                           ; $510F: $00
    ld sp, $6F0F                                  ; $5110: $31 $0F $6F
    ccf                                           ; $5113: $3F
    ld a, a                                       ; $5114: $7F
    nop                                           ; $5115: $00
    nop                                           ; $5116: $00
    nop                                           ; $5117: $00
    rra                                           ; $5118: $1F
    nop                                           ; $5119: $00
    ld h, e                                       ; $511A: $63
    ld e, $DF                                     ; $511B: $1E $DF
    ld a, a                                       ; $511D: $7F
    rst RST_38                                    ; $511E: $FF
    nop                                           ; $511F: $00
    nop                                           ; $5120: $00
    nop                                           ; $5121: $00
    nop                                           ; $5122: $00
    nop                                           ; $5123: $00
    ld bc, $0300                                  ; $5124: $01 $00 $03
    ld bc, $0102                                  ; $5127: $01 $02 $01
    rlca                                          ; $512A: $07

jr_00F_512B:
    ld [bc], a                                    ; $512B: $02
    dec b                                         ; $512C: $05
    ld [bc], a                                    ; $512D: $02
    rlca                                          ; $512E: $07
    ld [bc], a                                    ; $512F: $02
    ld a, [$FF05]                                 ; $5130: $FA $05 $FF
    ld [hl], h                                    ; $5133: $74
    rst RST_38                                    ; $5134: $FF
    add d                                         ; $5135: $82
    cp d                                          ; $5136: $BA
    dec c                                         ; $5137: $0D
    ld l, a                                       ; $5138: $6F
    jr nc, jr_00F_512B                            ; $5139: $30 $F0

    rrca                                          ; $513B: $0F
    rst RST_38                                    ; $513C: $FF
    rst RST_38                                    ; $513D: $FF

jr_00F_513E:
    rst RST_38                                    ; $513E: $FF
    nop                                           ; $513F: $00
    nop                                           ; $5140: $00
    nop                                           ; $5141: $00
    ret nz                                        ; $5142: $C0

    nop                                           ; $5143: $00
    ld h, b                                       ; $5144: $60
    ret nz                                        ; $5145: $C0

    db $D3                                        ; $5146: $D3
    jr nz, jr_00F_513E                            ; $5147: $20 $F5

    ld [hl+], a                                   ; $5149: $22
    rst RST_08                                    ; $514A: $CF
    jr nc, jr_00F_51C0                            ; $514B: $30 $73

    adc l                                         ; $514D: $8D
    di                                            ; $514E: $F3
    dec c                                         ; $514F: $0D
    ld [hl], a                                    ; $5150: $77
    adc b                                         ; $5151: $88
    xor e                                         ; $5152: $AB
    ld d, h                                       ; $5153: $54
    rst RST_10                                    ; $5154: $D7
    xor h                                         ; $5155: $AC
    rst RST_38                                    ; $5156: $FF
    jr nz, @+$01                                  ; $5157: $20 $FF

    ld e, $7F                                     ; $5159: $1E $7F
    cp $FF                                        ; $515B: $FE $FF
    cp $FF                                        ; $515D: $FE $FF
    nop                                           ; $515F: $00
    nop                                           ; $5160: $00
    nop                                           ; $5161: $00
    nop                                           ; $5162: $00
    nop                                           ; $5163: $00
    nop                                           ; $5164: $00
    nop                                           ; $5165: $00
    nop                                           ; $5166: $00
    nop                                           ; $5167: $00
    inc a                                         ; $5168: $3C
    nop                                           ; $5169: $00
    db $E3                                        ; $516A: $E3
    inc e                                         ; $516B: $1C
    jr @+$01                                      ; $516C: $18 $FF

    rst RST_38                                    ; $516E: $FF
    rst RST_38                                    ; $516F: $FF
    rst RST_38                                    ; $5170: $FF
    rra                                           ; $5171: $1F
    ld e, a                                       ; $5172: $5F
    xor a                                         ; $5173: $AF
    ld e, a                                       ; $5174: $5F
    and b                                         ; $5175: $A0
    rst RST_38                                    ; $5176: $FF
    rrca                                          ; $5177: $0F
    ccf                                           ; $5178: $3F
    rst RST_08                                    ; $5179: $CF
    ccf                                           ; $517A: $3F
    rst RST_18                                    ; $517B: $DF
    rst RST_38                                    ; $517C: $FF
    rra                                           ; $517D: $1F
    rra                                           ; $517E: $1F
    nop                                           ; $517F: $00
    nop                                           ; $5180: $00
    nop                                           ; $5181: $00
    nop                                           ; $5182: $00
    nop                                           ; $5183: $00
    nop                                           ; $5184: $00
    nop                                           ; $5185: $00
    nop                                           ; $5186: $00
    nop                                           ; $5187: $00
    nop                                           ; $5188: $00
    nop                                           ; $5189: $00
    nop                                           ; $518A: $00
    nop                                           ; $518B: $00
    pop bc                                        ; $518C: $C1
    nop                                           ; $518D: $00
    ld [hl-], a                                   ; $518E: $32
    pop bc                                        ; $518F: $C1
    rst RST_38                                    ; $5190: $FF
    pop af                                        ; $5191: $F1
    rst RST_38                                    ; $5192: $FF
    db $FD                                        ; $5193: $FD
    rst RST_38                                    ; $5194: $FF
    db $FD                                        ; $5195: $FD
    rst RST_38                                    ; $5196: $FF
    nop                                           ; $5197: $00
    rst RST_38                                    ; $5198: $FF
    db $FD                                        ; $5199: $FD
    rst RST_38                                    ; $519A: $FF
    db $FD                                        ; $519B: $FD
    rst RST_38                                    ; $519C: $FF
    add c                                         ; $519D: $81
    add e                                         ; $519E: $83

jr_00F_519F:
    nop                                           ; $519F: $00
    add b                                         ; $51A0: $80
    nop                                           ; $51A1: $00
    ld h, b                                       ; $51A2: $60
    add b                                         ; $51A3: $80
    sbc b                                         ; $51A4: $98
    ldh [$FFFC], a                                ; $51A5: $E0 $FC
    ld hl, sp-$02                                 ; $51A7: $F8 $FE
    call nz, Call_000_3EFF                        ; $51A9: $C4 $FF $3E
    cp $F8                                        ; $51AC: $FE $F8
    ld hl, sp-$20                                 ; $51AE: $F8 $E0
    ldh [$FF80], a                                ; $51B0: $E0 $80
    add b                                         ; $51B2: $80
    nop                                           ; $51B3: $00
    nop                                           ; $51B4: $00
    nop                                           ; $51B5: $00
    nop                                           ; $51B6: $00
    nop                                           ; $51B7: $00
    nop                                           ; $51B8: $00
    nop                                           ; $51B9: $00
    nop                                           ; $51BA: $00
    nop                                           ; $51BB: $00
    nop                                           ; $51BC: $00
    nop                                           ; $51BD: $00
    nop                                           ; $51BE: $00
    nop                                           ; $51BF: $00

jr_00F_51C0:
    ccf                                           ; $51C0: $3F
    nop                                           ; $51C1: $00
    ld b, c                                       ; $51C2: $41
    ld a, $FF                                     ; $51C3: $3E $FF
    ld c, c                                       ; $51C5: $49
    rst RST_38                                    ; $51C6: $FF
    dec d                                         ; $51C7: $15
    ccf                                           ; $51C8: $3F
    nop                                           ; $51C9: $00
    ld bc, $0000                                  ; $51CA: $01 $00 $00
    nop                                           ; $51CD: $00
    nop                                           ; $51CE: $00
    nop                                           ; $51CF: $00
    ld bc, $0200                                  ; $51D0: $01 $00 $02
    ld bc, $0207                                  ; $51D3: $01 $07 $02
    dec b                                         ; $51D6: $05
    ld [bc], a                                    ; $51D7: $02
    ld c, $04                                     ; $51D8: $0E $04
    ld a, [bc]                                    ; $51DA: $0A
    inc b                                         ; $51DB: $04
    ld c, $04                                     ; $51DC: $0E $04
    inc c                                         ; $51DE: $0C
    nop                                           ; $51DF: $00
    jp $F77C                                      ; $51E0: $C3 $7C $F7


    rst RST_38                                    ; $51E3: $FF
    rst RST_38                                    ; $51E4: $FF
    ld a, a                                       ; $51E5: $7F
    ld a, a                                       ; $51E6: $7F
    rra                                           ; $51E7: $1F
    rst RST_18                                    ; $51E8: $DF
    daa                                           ; $51E9: $27
    and a                                         ; $51EA: $A7
    reti                                          ; $51EB: $D9


    di                                            ; $51EC: $F3
    inc c                                         ; $51ED: $0C

Call_00F_51EE:
    inc e                                         ; $51EE: $1C
    inc bc                                        ; $51EF: $03
    rra                                           ; $51F0: $1F
    ld a, [bc]                                    ; $51F1: $0A
    add hl, bc                                    ; $51F2: $09
    ld b, $0F                                     ; $51F3: $06 $0F
    inc b                                         ; $51F5: $04
    rla                                           ; $51F6: $17
    ld [$183F], sp                                ; $51F7: $08 $3F $18
    ld l, $10                                     ; $51FA: $2E $10
    dec de                                        ; $51FC: $1B
    ld c, $0F                                     ; $51FD: $0E $0F
    nop                                           ; $51FF: $00
    cp $EC                                        ; $5200: $FE $EC
    cp $EC                                        ; $5202: $FE $EC
    db $FC                                        ; $5204: $FC
    add sp, -$04                                  ; $5205: $E8 $FC
    ld [$D0E8], sp                                ; $5207: $08 $E8 $D0
    ld hl, sp-$40                                 ; $520A: $F8 $C0
    db $E4                                        ; $520C: $E4
    ret c                                         ; $520D: $D8

    db $E4                                        ; $520E: $E4
    sbc b                                         ; $520F: $98
    ld hl, sp-$80                                 ; $5210: $F8 $80
    or b                                          ; $5212: $B0
    ld b, b                                       ; $5213: $40
    ret nc                                        ; $5214: $D0

    jr nz, jr_00F_519F                            ; $5215: $20 $88

    ld [hl], b                                    ; $5217: $70
    sbc b                                         ; $5218: $98
    ld [hl], b                                    ; $5219: $70
    db $FC                                        ; $521A: $FC
    ld e, b                                       ; $521B: $58
    cp $54                                        ; $521C: $FE $54
    ld d, l                                       ; $521E: $55
    ld a, [hl+]                                   ; $521F: $2A
    ld bc, $0100                                  ; $5220: $01 $00 $01
    nop                                           ; $5223: $00
    ld [bc], a                                    ; $5224: $02
    ld bc, $0102                                  ; $5225: $01 $02 $01
    dec b                                         ; $5228: $05
    inc bc                                        ; $5229: $03
    dec b                                         ; $522A: $05
    inc bc                                        ; $522B: $03
    inc bc                                        ; $522C: $03
    nop                                           ; $522D: $00
    inc bc                                        ; $522E: $03
    ld bc, $0305                                  ; $522F: $01 $05 $03
    dec b                                         ; $5232: $05
    inc bc                                        ; $5233: $03
    dec bc                                        ; $5234: $0B
    rlca                                          ; $5235: $07
    dec bc                                        ; $5236: $0B
    rlca                                          ; $5237: $07
    rla                                           ; $5238: $17
    rrca                                          ; $5239: $0F
    rst RST_10                                    ; $523A: $D7
    ld c, $BF                                     ; $523B: $0E $BF
    adc $FF                                       ; $523D: $CE $FF
    ld [bc], a                                    ; $523F: $02
    ld b, b                                       ; $5240: $40
    nop                                           ; $5241: $00
    ldh [rLCDC], a                                ; $5242: $E0 $40
    ldh a, [$FF60]                                ; $5244: $F0 $60
    ld [hl], b                                    ; $5246: $70
    ldh [$FFF8], a                                ; $5247: $E0 $F8
    ld [hl], b                                    ; $5249: $70
    ld hl, sp+$70                                 ; $524A: $F8 $70
    db $FC                                        ; $524C: $FC
    cp b                                          ; $524D: $B8
    db $FC                                        ; $524E: $FC
    cp b                                          ; $524F: $B8
    cp $DC                                        ; $5250: $FE $DC
    cp $1C                                        ; $5252: $FE $1C
    db $FC                                        ; $5254: $FC
    and b                                         ; $5255: $A0
    rst RST_38                                    ; $5256: $FF
    or b                                          ; $5257: $B0
    ld hl, sp+$77                                 ; $5258: $F8 $77
    ei                                            ; $525A: $FB
    ld [hl], a                                    ; $525B: $77
    rst RST_38                                    ; $525C: $FF
    ld [hl], a                                    ; $525D: $77
    rst RST_38                                    ; $525E: $FF
    ld l, [hl]                                    ; $525F: $6E
    nop                                           ; $5260: $00
    nop                                           ; $5261: $00
    nop                                           ; $5262: $00
    nop                                           ; $5263: $00
    nop                                           ; $5264: $00
    nop                                           ; $5265: $00
    inc c                                         ; $5266: $0C
    nop                                           ; $5267: $00
    ld d, $08                                     ; $5268: $16 $08
    ld d, $0C                                     ; $526A: $16 $0C
    rra                                           ; $526C: $1F
    ld c, $3F                                     ; $526D: $0E $3F
    ld [de], a                                    ; $526F: $12
    ccf                                           ; $5270: $3F
    ld [de], a                                    ; $5271: $12
    sbc a                                         ; $5272: $9F
    ld c, $DE                                     ; $5273: $0E $DE
    adc h                                         ; $5275: $8C
    xor $C0                                       ; $5276: $EE $C0
    xor $C4                                       ; $5278: $EE $C4
    cp $64                                        ; $527A: $FE $64
    ld a, h                                       ; $527C: $7C
    jr c, jr_00F_52B7                             ; $527D: $38 $38

    nop                                           ; $527F: $00
    rst RST_38                                    ; $5280: $FF
    ld d, d                                       ; $5281: $52
    ld e, e                                       ; $5282: $5B
    nop                                           ; $5283: $00
    nop                                           ; $5284: $00
    nop                                           ; $5285: $00
    nop                                           ; $5286: $00
    nop                                           ; $5287: $00
    nop                                           ; $5288: $00
    nop                                           ; $5289: $00
    nop                                           ; $528A: $00
    nop                                           ; $528B: $00
    nop                                           ; $528C: $00
    nop                                           ; $528D: $00
    nop                                           ; $528E: $00
    nop                                           ; $528F: $00
    nop                                           ; $5290: $00
    nop                                           ; $5291: $00
    nop                                           ; $5292: $00
    nop                                           ; $5293: $00
    nop                                           ; $5294: $00
    nop                                           ; $5295: $00
    nop                                           ; $5296: $00
    nop                                           ; $5297: $00
    nop                                           ; $5298: $00
    nop                                           ; $5299: $00
    nop                                           ; $529A: $00
    nop                                           ; $529B: $00
    nop                                           ; $529C: $00
    nop                                           ; $529D: $00
    nop                                           ; $529E: $00
    nop                                           ; $529F: $00
    inc bc                                        ; $52A0: $03
    nop                                           ; $52A1: $00
    dec d                                         ; $52A2: $15
    ld [bc], a                                    ; $52A3: $02
    xor e                                         ; $52A4: $AB
    ld d, $7F                                     ; $52A5: $16 $7F
    sub b                                         ; $52A7: $90
    rst RST_38                                    ; $52A8: $FF
    rrca                                          ; $52A9: $0F
    ccf                                           ; $52AA: $3F
    rst RST_38                                    ; $52AB: $FF
    rst RST_38                                    ; $52AC: $FF
    rst RST_38                                    ; $52AD: $FF
    rst RST_38                                    ; $52AE: $FF
    nop                                           ; $52AF: $00
    nop                                           ; $52B0: $00
    nop                                           ; $52B1: $00
    nop                                           ; $52B2: $00
    nop                                           ; $52B3: $00
    nop                                           ; $52B4: $00
    nop                                           ; $52B5: $00
    nop                                           ; $52B6: $00

jr_00F_52B7:
    nop                                           ; $52B7: $00
    nop                                           ; $52B8: $00
    nop                                           ; $52B9: $00
    nop                                           ; $52BA: $00
    nop                                           ; $52BB: $00
    nop                                           ; $52BC: $00
    nop                                           ; $52BD: $00
    nop                                           ; $52BE: $00
    nop                                           ; $52BF: $00
    nop                                           ; $52C0: $00
    nop                                           ; $52C1: $00
    nop                                           ; $52C2: $00
    nop                                           ; $52C3: $00
    nop                                           ; $52C4: $00
    nop                                           ; $52C5: $00
    nop                                           ; $52C6: $00
    nop                                           ; $52C7: $00
    nop                                           ; $52C8: $00
    nop                                           ; $52C9: $00
    nop                                           ; $52CA: $00
    nop                                           ; $52CB: $00
    nop                                           ; $52CC: $00
    nop                                           ; $52CD: $00
    nop                                           ; $52CE: $00
    nop                                           ; $52CF: $00
    nop                                           ; $52D0: $00
    nop                                           ; $52D1: $00
    nop                                           ; $52D2: $00
    nop                                           ; $52D3: $00
    ld bc, $0700                                  ; $52D4: $01 $00 $07
    nop                                           ; $52D7: $00
    ld hl, sp+$07                                 ; $52D8: $F8 $07
    rst RST_38                                    ; $52DA: $FF
    ld a, a                                       ; $52DB: $7F
    rst RST_38                                    ; $52DC: $FF
    add b                                         ; $52DD: $80
    add b                                         ; $52DE: $80
    nop                                           ; $52DF: $00
    rrca                                          ; $52E0: $0F
    nop                                           ; $52E1: $00
    ld sp, $6F0F                                  ; $52E2: $31 $0F $6F
    ccf                                           ; $52E5: $3F
    ld a, a                                       ; $52E6: $7F
    ld b, $06                                     ; $52E7: $06 $06
    nop                                           ; $52E9: $00
    nop                                           ; $52EA: $00
    nop                                           ; $52EB: $00
    nop                                           ; $52EC: $00
    nop                                           ; $52ED: $00
    nop                                           ; $52EE: $00
    nop                                           ; $52EF: $00
    nop                                           ; $52F0: $00
    nop                                           ; $52F1: $00
    nop                                           ; $52F2: $00
    nop                                           ; $52F3: $00
    nop                                           ; $52F4: $00
    nop                                           ; $52F5: $00
    nop                                           ; $52F6: $00
    nop                                           ; $52F7: $00
    nop                                           ; $52F8: $00
    nop                                           ; $52F9: $00
    nop                                           ; $52FA: $00
    nop                                           ; $52FB: $00
    nop                                           ; $52FC: $00
    nop                                           ; $52FD: $00
    nop                                           ; $52FE: $00

Jump_00F_52FF:
    nop                                           ; $52FF: $00
    ld bc, $0200                                  ; $5300: $01 $00 $02
    ld bc, $0305                                  ; $5303: $01 $05 $03
    add hl, bc                                    ; $5306: $09
    ld b, $0B                                     ; $5307: $06 $0B
    dec b                                         ; $5309: $05
    rla                                           ; $530A: $17
    dec c                                         ; $530B: $0D
    dec d                                         ; $530C: $15
    dec bc                                        ; $530D: $0B
    cpl                                           ; $530E: $2F
    dec de                                        ; $530F: $1B
    ccf                                           ; $5310: $3F
    dec bc                                        ; $5311: $0B
    rrca                                          ; $5312: $0F
    ld bc, $0207                                  ; $5313: $01 $07 $02
    rrca                                          ; $5316: $0F
    ld [bc], a                                    ; $5317: $02
    ld c, $05                                     ; $5318: $0E $05
    ld e, $05                                     ; $531A: $1E $05
    inc d                                         ; $531C: $14
    dec bc                                        ; $531D: $0B
    dec [hl]                                      ; $531E: $35
    dec bc                                        ; $531F: $0B
    add b                                         ; $5320: $80
    nop                                           ; $5321: $00
    ret nz                                        ; $5322: $C0

    add b                                         ; $5323: $80
    ldh [$FFC0], a                                ; $5324: $E0 $C0
    ldh a, [$FFE0]                                ; $5326: $F0 $E0
    ldh a, [$FF60]                                ; $5328: $F0 $60
    ld hl, sp-$50                                 ; $532A: $F8 $B0
    ld a, b                                       ; $532C: $78
    or b                                          ; $532D: $B0
    db $FC                                        ; $532E: $FC
    ret c                                         ; $532F: $D8

    db $FC                                        ; $5330: $FC
    ret nc                                        ; $5331: $D0

    ldh a, [rP1]                                  ; $5332: $F0 $00
    ldh [rLCDC], a                                ; $5334: $E0 $40
    ldh a, [$FFC0]                                ; $5336: $F0 $C0
    ldh a, [$FF60]                                ; $5338: $F0 $60
    ld hl, sp+$60                                 ; $533A: $F8 $60
    ld hl, sp-$50                                 ; $533C: $F8 $B0
    db $FC                                        ; $533E: $FC
    or b                                          ; $533F: $B0
    rla                                           ; $5340: $17
    dec bc                                        ; $5341: $0B
    dec e                                         ; $5342: $1D
    dec bc                                        ; $5343: $0B
    rra                                           ; $5344: $1F
    inc bc                                        ; $5345: $03
    ld c, d                                       ; $5346: $4A
    dec b                                         ; $5347: $05
    ld a, [hl]                                    ; $5348: $7E
    ld bc, $255A                                  ; $5349: $01 $5A $25
    ld e, a                                       ; $534C: $5F
    ld hl, $0679                                  ; $534D: $21 $79 $06
    inc c                                         ; $5350: $0C
    inc bc                                        ; $5351: $03
    ld b, $01                                     ; $5352: $06 $01
    dec b                                         ; $5354: $05
    ld [bc], a                                    ; $5355: $02
    rlca                                          ; $5356: $07
    inc bc                                        ; $5357: $03
    ld [bc], a                                    ; $5358: $02
    ld bc, $0103                                  ; $5359: $01 $03 $01
    ld bc, $0100                                  ; $535C: $01 $00 $01
    nop                                           ; $535F: $00
    cp $EC                                        ; $5360: $FE $EC
    sbc [hl]                                      ; $5362: $9E
    db $EC                                        ; $5363: $EC
    cp $CC                                        ; $5364: $FE $CC
    call z, $FBB0                                 ; $5366: $CC $B0 $FB
    add b                                         ; $5369: $80
    rst RST_08                                    ; $536A: $CF
    or c                                          ; $536B: $B1
    ei                                            ; $536C: $FB
    add l                                         ; $536D: $85
    adc e                                         ; $536E: $8B
    ld [hl], l                                    ; $536F: $75
    ccf                                           ; $5370: $3F
    pop bc                                        ; $5371: $C1
    ld c, e                                       ; $5372: $4B
    or h                                          ; $5373: $B4
    ld sp, hl                                     ; $5374: $F9
    ld [hl], $E5                                  ; $5375: $36 $E5
    dec de                                        ; $5377: $1B
    db $FC                                        ; $5378: $FC
    dec de                                        ; $5379: $1B
    push af                                       ; $537A: $F5
    ld a, [bc]                                    ; $537B: $0A
    ld a, a                                       ; $537C: $7F
    adc d                                         ; $537D: $8A
    ld a, [$C085]                                 ; $537E: $FA $85 $C0
    nop                                           ; $5381: $00
    ldh [rLCDC], a                                ; $5382: $E0 $40
    ldh [rLCDC], a                                ; $5384: $E0 $40
    db $FC                                        ; $5386: $FC
    and b                                         ; $5387: $A0
    ld a, h                                       ; $5388: $7C
    ret z                                         ; $5389: $C8

    inc a                                         ; $538A: $3C
    add sp, -$22                                  ; $538B: $E8 $DE
    ldh a, [rIE]                                  ; $538D: $F0 $FF
    ld a, d                                       ; $538F: $7A
    ld a, a                                       ; $5390: $7F
    inc e                                         ; $5391: $1C
    sbc a                                         ; $5392: $9F
    ld b, $C7                                     ; $5393: $06 $C7
    add c                                         ; $5395: $81
    pop hl                                        ; $5396: $E1
    ret nz                                        ; $5397: $C0

    ldh a, [$FFA0]                                ; $5398: $F0 $A0
    xor b                                         ; $539A: $A8
    ld d, b                                       ; $539B: $50
    db $FC                                        ; $539C: $FC
    xor b                                         ; $539D: $A8
    xor h                                         ; $539E: $AC
    nop                                           ; $539F: $00
    ret nz                                        ; $53A0: $C0

    nop                                           ; $53A1: $00
    ldh a, [$FF80]                                ; $53A2: $F0 $80
    db $FC                                        ; $53A4: $FC
    ld [hl], b                                    ; $53A5: $70
    cp $3C                                        ; $53A6: $FE $3C
    ld a, a                                       ; $53A8: $7F
    ld c, $7F                                     ; $53A9: $0E $7F
    jr nz, jr_00F_53DD                            ; $53AB: $20 $30

    nop                                           ; $53AD: $00
    nop                                           ; $53AE: $00
    nop                                           ; $53AF: $00
    nop                                           ; $53B0: $00
    nop                                           ; $53B1: $00
    nop                                           ; $53B2: $00
    nop                                           ; $53B3: $00
    nop                                           ; $53B4: $00
    nop                                           ; $53B5: $00
    nop                                           ; $53B6: $00
    nop                                           ; $53B7: $00
    nop                                           ; $53B8: $00
    nop                                           ; $53B9: $00
    nop                                           ; $53BA: $00
    nop                                           ; $53BB: $00
    nop                                           ; $53BC: $00
    nop                                           ; $53BD: $00
    nop                                           ; $53BE: $00
    nop                                           ; $53BF: $00
    cp a                                          ; $53C0: $BF
    ld b, h                                       ; $53C1: $44
    db $ED                                        ; $53C2: $ED
    ld b, d                                       ; $53C3: $42
    ld h, a                                       ; $53C4: $67
    ld [bc], a                                    ; $53C5: $02
    inc bc                                        ; $53C6: $03
    nop                                           ; $53C7: $00
    nop                                           ; $53C8: $00
    nop                                           ; $53C9: $00

jr_00F_53CA:
    nop                                           ; $53CA: $00
    nop                                           ; $53CB: $00

jr_00F_53CC:
    nop                                           ; $53CC: $00
    nop                                           ; $53CD: $00
    nop                                           ; $53CE: $00
    nop                                           ; $53CF: $00
    nop                                           ; $53D0: $00
    nop                                           ; $53D1: $00
    nop                                           ; $53D2: $00
    nop                                           ; $53D3: $00
    nop                                           ; $53D4: $00
    nop                                           ; $53D5: $00
    nop                                           ; $53D6: $00
    nop                                           ; $53D7: $00
    nop                                           ; $53D8: $00
    nop                                           ; $53D9: $00
    nop                                           ; $53DA: $00
    nop                                           ; $53DB: $00
    nop                                           ; $53DC: $00

jr_00F_53DD:
    nop                                           ; $53DD: $00
    nop                                           ; $53DE: $00
    nop                                           ; $53DF: $00
    ld bc, $0100                                  ; $53E0: $01 $00 $01
    nop                                           ; $53E3: $00
    ld bc, $0100                                  ; $53E4: $01 $00 $01
    nop                                           ; $53E7: $00
    ld bc, $0100                                  ; $53E8: $01 $00 $01
    nop                                           ; $53EB: $00
    nop                                           ; $53EC: $00
    nop                                           ; $53ED: $00
    jr jr_00F_53F0                                ; $53EE: $18 $00

jr_00F_53F0:
    inc d                                         ; $53F0: $14
    ld [$040A], sp                                ; $53F1: $08 $0A $04
    add hl, bc                                    ; $53F4: $09
    ld b, $08                                     ; $53F5: $06 $08
    rlca                                          ; $53F7: $07
    call nz, $A403                                ; $53F8: $C4 $03 $A4

jr_00F_53FB:
    ld b, e                                       ; $53FB: $43
    ld d, h                                       ; $53FC: $54
    inc hl                                        ; $53FD: $23
    ld c, [hl]                                    ; $53FE: $4E
    ld sp, $0000                                  ; $53FF: $31 $00 $00
    ret nz                                        ; $5402: $C0

    nop                                           ; $5403: $00
    ld b, b                                       ; $5404: $40
    add b                                         ; $5405: $80
    ld b, b                                       ; $5406: $40
    add b                                         ; $5407: $80
    jr nz, jr_00F_53CA                            ; $5408: $20 $C0

    jr nz, jr_00F_53CC                            ; $540A: $20 $C0

    db $10                                        ; $540C: $10
    ldh [$FF91], a                                ; $540D: $E0 $91
    ld h, b                                       ; $540F: $60
    adc e                                         ; $5410: $8B
    ld [hl], c                                    ; $5411: $71
    adc d                                         ; $5412: $8A
    ld [hl], c                                    ; $5413: $71
    ld b, a                                       ; $5414: $47
    ld a, [hl-]                                   ; $5415: $3A
    ld b, [hl]                                    ; $5416: $46
    jr c, jr_00F_53FB                             ; $5417: $38 $E2

    inc e                                         ; $5419: $1C
    ld [bc], a                                    ; $541A: $02
    db $FC                                        ; $541B: $FC
    inc bc                                        ; $541C: $03
    cp $81                                        ; $541D: $FE $81
    rst RST_38                                    ; $541F: $FF
    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    ld bc, $0100                                  ; $5424: $01 $00 $01
    nop                                           ; $5427: $00
    ld [bc], a                                    ; $5428: $02
    ld bc, $0102                                  ; $5429: $01 $02 $01
    dec b                                         ; $542C: $05
    inc bc                                        ; $542D: $03
    add l                                         ; $542E: $85
    inc bc                                        ; $542F: $03
    ld b, e                                       ; $5430: $43
    add b                                         ; $5431: $80
    rst RST_20                                    ; $5432: $E7
    ld b, c                                       ; $5433: $41
    and l                                         ; $5434: $A5
    ld b, e                                       ; $5435: $43
    push hl                                       ; $5436: $E5
    ld b, e                                       ; $5437: $43
    xor e                                         ; $5438: $AB
    ld b, a                                       ; $5439: $47
    db $EB                                        ; $543A: $EB
    ld b, a                                       ; $543B: $47
    or a                                          ; $543C: $B7
    ld c, a                                       ; $543D: $4F
    rst RST_38                                    ; $543E: $FF
    ld c, [hl]                                    ; $543F: $4E
    ld b, b                                       ; $5440: $40
    nop                                           ; $5441: $00
    ldh [rLCDC], a                                ; $5442: $E0 $40
    ldh a, [$FF60]                                ; $5444: $F0 $60
    ld [hl], b                                    ; $5446: $70
    ldh [$FFF8], a                                ; $5447: $E0 $F8
    ld [hl], b                                    ; $5449: $70
    ld hl, sp+$70                                 ; $544A: $F8 $70
    db $FC                                        ; $544C: $FC
    cp b                                          ; $544D: $B8
    db $FC                                        ; $544E: $FC
    cp b                                          ; $544F: $B8
    cp $DC                                        ; $5450: $FE $DC
    cp $1C                                        ; $5452: $FE $1C
    db $FC                                        ; $5454: $FC
    and b                                         ; $5455: $A0
    ld hl, sp-$50                                 ; $5456: $F8 $B0
    ld hl, sp+$70                                 ; $5458: $F8 $70
    ld hl, sp+$70                                 ; $545A: $F8 $70
    ld hl, sp+$70                                 ; $545C: $F8 $70
    ld hl, sp+$70                                 ; $545E: $F8 $70
    add hl, sp                                    ; $5460: $39
    rst RST_00                                    ; $5461: $C7
    adc c                                         ; $5462: $89
    ld [hl], a                                    ; $5463: $77
    add b                                         ; $5464: $80
    ld a, a                                       ; $5465: $7F
    ld b, b                                       ; $5466: $40
    ccf                                           ; $5467: $3F
    ld b, h                                       ; $5468: $44
    ccf                                           ; $5469: $3F
    inc hl                                        ; $546A: $23
    rra                                           ; $546B: $1F
    inc de                                        ; $546C: $13
    rrca                                          ; $546D: $0F
    add hl, bc                                    ; $546E: $09
    rlca                                          ; $546F: $07
    inc b                                         ; $5470: $04
    inc bc                                        ; $5471: $03
    ld [bc], a                                    ; $5472: $02
    ld bc, $0001                                  ; $5473: $01 $01 $00
    nop                                           ; $5476: $00
    nop                                           ; $5477: $00
    nop                                           ; $5478: $00
    nop                                           ; $5479: $00
    nop                                           ; $547A: $00
    nop                                           ; $547B: $00
    nop                                           ; $547C: $00
    nop                                           ; $547D: $00
    nop                                           ; $547E: $00
    nop                                           ; $547F: $00
    add a                                         ; $5480: $87
    cp $F3                                        ; $5481: $FE $F3
    rst RST_38                                    ; $5483: $FF
    rst RST_38                                    ; $5484: $FF
    rst RST_38                                    ; $5485: $FF
    ld a, a                                       ; $5486: $7F
    rst RST_38                                    ; $5487: $FF
    ccf                                           ; $5488: $3F
    rst RST_38                                    ; $5489: $FF
    rra                                           ; $548A: $1F
    rst RST_38                                    ; $548B: $FF
    rst RST_28                                    ; $548C: $EF
    rst RST_38                                    ; $548D: $FF
    rst RST_38                                    ; $548E: $FF
    rst RST_38                                    ; $548F: $FF
    rst RST_38                                    ; $5490: $FF
    rst RST_38                                    ; $5491: $FF
    ld a, a                                       ; $5492: $7F
    rst RST_38                                    ; $5493: $FF
    ccf                                           ; $5494: $3F
    rst RST_38                                    ; $5495: $FF
    rst RST_08                                    ; $5496: $CF
    ccf                                           ; $5497: $3F
    dec sp                                        ; $5498: $3B
    rlca                                          ; $5499: $07
    rra                                           ; $549A: $1F
    nop                                           ; $549B: $00
    dec e                                         ; $549C: $1D
    nop                                           ; $549D: $00
    dec c                                         ; $549E: $0D
    nop                                           ; $549F: $00
    rst RST_38                                    ; $54A0: $FF
    dec sp                                        ; $54A1: $3B
    rst RST_38                                    ; $54A2: $FF
    ld a, e                                       ; $54A3: $7B
    rst RST_38                                    ; $54A4: $FF
    ld a, e                                       ; $54A5: $7B
    rst RST_38                                    ; $54A6: $FF
    sbc b                                         ; $54A7: $98
    cp $E5                                        ; $54A8: $FE $E5
    rst RST_38                                    ; $54AA: $FF
    ld hl, sp-$01                                 ; $54AB: $F8 $FF
    cp $FF                                        ; $54AD: $FE $FF
    rst RST_38                                    ; $54AF: $FF
    rst RST_38                                    ; $54B0: $FF
    rst RST_38                                    ; $54B1: $FF
    rst RST_38                                    ; $54B2: $FF
    rst RST_38                                    ; $54B3: $FF
    rst RST_38                                    ; $54B4: $FF
    ld hl, sp-$01                                 ; $54B5: $F8 $FF
    db $FC                                        ; $54B7: $FC
    rst RST_38                                    ; $54B8: $FF
    rst RST_38                                    ; $54B9: $FF
    rst RST_38                                    ; $54BA: $FF
    rst RST_38                                    ; $54BB: $FF
    ld a, a                                       ; $54BC: $7F
    rst RST_38                                    ; $54BD: $FF
    rst RST_38                                    ; $54BE: $FF
    nop                                           ; $54BF: $00
    ldh [$FFC0], a                                ; $54C0: $E0 $C0
    ldh [$FFC0], a                                ; $54C2: $E0 $C0
    ldh [$FFC0], a                                ; $54C4: $E0 $C0
    ldh [rLCDC], a                                ; $54C6: $E0 $40
    ld b, b                                       ; $54C8: $40
    add b                                         ; $54C9: $80
    ret nz                                        ; $54CA: $C0

    nop                                           ; $54CB: $00
    and b                                         ; $54CC: $A0
    ld b, b                                       ; $54CD: $40
    ldh a, [$FF80]                                ; $54CE: $F0 $80
    ld hl, sp-$10                                 ; $54D0: $F8 $F0
    ldh a, [rP1]                                  ; $54D2: $F0 $00
    nop                                           ; $54D4: $00
    nop                                           ; $54D5: $00
    nop                                           ; $54D6: $00
    nop                                           ; $54D7: $00
    ret nz                                        ; $54D8: $C0

    nop                                           ; $54D9: $00
    ldh a, [$FFC0]                                ; $54DA: $F0 $C0
    ld hl, sp-$10                                 ; $54DC: $F8 $F0
    ld hl, sp+$00                                 ; $54DE: $F8 $00
    ld d, a                                       ; $54E0: $57
    ld a, [hl+]                                   ; $54E1: $2A
    ld a, [$BE54]                                 ; $54E2: $FA $54 $BE
    ld b, h                                       ; $54E5: $44
    db $EC                                        ; $54E6: $EC

jr_00F_54E7:
    ld b, b                                       ; $54E7: $40
    ret nz                                        ; $54E8: $C0

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
    nop                                           ; $54F9: $00
    nop                                           ; $54FA: $00
    nop                                           ; $54FB: $00
    nop                                           ; $54FC: $00
    nop                                           ; $54FD: $00
    nop                                           ; $54FE: $00
    nop                                           ; $54FF: $00
    inc bc                                        ; $5500: $03
    nop                                           ; $5501: $00
    ld b, $03                                     ; $5502: $06 $03
    dec bc                                        ; $5504: $0B
    inc b                                         ; $5505: $04
    rrca                                          ; $5506: $0F
    inc b                                         ; $5507: $04
    rla                                           ; $5508: $17
    add hl, bc                                    ; $5509: $09
    dec e                                         ; $550A: $1D
    ld b, $76                                     ; $550B: $06 $76
    jr jr_00F_54E7                                ; $550D: $18 $D8

    ld h, b                                       ; $550F: $60
    ldh [rP1], a                                  ; $5510: $E0 $00
    nop                                           ; $5512: $00
    nop                                           ; $5513: $00
    nop                                           ; $5514: $00
    nop                                           ; $5515: $00
    nop                                           ; $5516: $00
    nop                                           ; $5517: $00
    nop                                           ; $5518: $00
    nop                                           ; $5519: $00
    nop                                           ; $551A: $00
    nop                                           ; $551B: $00
    nop                                           ; $551C: $00
    nop                                           ; $551D: $00
    nop                                           ; $551E: $00
    nop                                           ; $551F: $00
    ld bc, $8700                                  ; $5520: $01 $00 $87
    ld bc, $86FD                                  ; $5523: $01 $FD $86
    cp [hl]                                       ; $5526: $BE
    ld h, c                                       ; $5527: $61
    db $EB                                        ; $5528: $EB
    ld e, $7E                                     ; $5529: $1E $7E
    add b                                         ; $552B: $80
    add b                                         ; $552C: $80
    nop                                           ; $552D: $00
    nop                                           ; $552E: $00
    nop                                           ; $552F: $00
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    nop                                           ; $5534: $00
    nop                                           ; $5535: $00
    nop                                           ; $5536: $00
    nop                                           ; $5537: $00
    nop                                           ; $5538: $00
    nop                                           ; $5539: $00
    nop                                           ; $553A: $00
    nop                                           ; $553B: $00
    nop                                           ; $553C: $00
    nop                                           ; $553D: $00
    nop                                           ; $553E: $00
    nop                                           ; $553F: $00
    ld a, a                                       ; $5540: $7F
    inc a                                         ; $5541: $3C
    ld a, h                                       ; $5542: $7C
    dec de                                        ; $5543: $1B
    ld a, a                                       ; $5544: $7F
    jr @+$7E                                      ; $5545: $18 $7C

    dec de                                        ; $5547: $1B
    cp a                                          ; $5548: $BF
    ld d, b                                       ; $5549: $50

jr_00F_554A:
    sbc b                                         ; $554A: $98
    ld h, a                                       ; $554B: $67
    ret nz                                        ; $554C: $C0

    ccf                                           ; $554D: $3F
    and a                                         ; $554E: $A7
    ld e, b                                       ; $554F: $58

jr_00F_5550:
    ld sp, hl                                     ; $5550: $F9
    add [hl]                                      ; $5551: $86
    rst RST_38                                    ; $5552: $FF
    ld b, $7D                                     ; $5553: $06 $7D
    ld [bc], a                                    ; $5555: $02
    ld h, a                                       ; $5556: $67
    inc bc                                        ; $5557: $03
    ld h, [hl]                                    ; $5558: $66
    ld bc, $0167                                  ; $5559: $01 $67 $01
    ld [hl], e                                    ; $555C: $73
    nop                                           ; $555D: $00
    jr c, jr_00F_5560                             ; $555E: $38 $00

jr_00F_5560:
    cp $10                                        ; $5560: $FE $10
    cp l                                          ; $5562: $BD
    ld b, d                                       ; $5563: $42
    cp a                                          ; $5564: $BF
    ld c, d                                       ; $5565: $4A
    rst RST_08                                    ; $5566: $CF
    inc [hl]                                      ; $5567: $34
    ld b, a                                       ; $5568: $47
    cp d                                          ; $5569: $BA
    daa                                           ; $556A: $27
    db $DB                                        ; $556B: $DB
    ld a, [hl]                                    ; $556C: $7E
    add a                                         ; $556D: $87
    rst RST_38                                    ; $556E: $FF
    rrca                                          ; $556F: $0F
    rst RST_28                                    ; $5570: $EF
    jp $C073                                      ; $5571: $C3 $73 $C0


    cp $50                                        ; $5574: $FE $50
    rst RST_38                                    ; $5576: $FF
    ld l, [hl]                                    ; $5577: $6E
    rst RST_28                                    ; $5578: $EF
    ld d, c                                       ; $5579: $51
    ld a, e                                       ; $557A: $7B
    adc [hl]                                      ; $557B: $8E
    rst RST_18                                    ; $557C: $DF
    ld [hl], b                                    ; $557D: $70
    ld a, b                                       ; $557E: $78
    nop                                           ; $557F: $00
    add b                                         ; $5580: $80
    nop                                           ; $5581: $00
    ret nz                                        ; $5582: $C0

    add b                                         ; $5583: $80
    ldh [rP1], a                                  ; $5584: $E0 $00
    ld [hl], b                                    ; $5586: $70
    and b                                         ; $5587: $A0
    jr nc, jr_00F_554A                            ; $5588: $30 $C0

    ret nc                                        ; $558A: $D0

    ldh [$FFF8], a                                ; $558B: $E0 $F8
    ldh a, [$FFFC]                                ; $558D: $F0 $FC
    jr c, jr_00F_5550                             ; $558F: $38 $BF

    inc c                                         ; $5591: $0C
    adc $83                                       ; $5592: $CE $83
    rst RST_08                                    ; $5594: $CF
    rlca                                          ; $5595: $07
    rlca                                          ; $5596: $07
    nop                                           ; $5597: $00
    nop                                           ; $5598: $00
    nop                                           ; $5599: $00
    nop                                           ; $559A: $00
    nop                                           ; $559B: $00
    nop                                           ; $559C: $00
    nop                                           ; $559D: $00
    nop                                           ; $559E: $00
    nop                                           ; $559F: $00
    add b                                         ; $55A0: $80
    nop                                           ; $55A1: $00
    ld h, b                                       ; $55A2: $60
    add b                                         ; $55A3: $80
    ldh a, [$FFE0]                                ; $55A4: $F0 $E0
    ldh a, [rLCDC]                                ; $55A6: $F0 $40
    ret nz                                        ; $55A8: $C0

    nop                                           ; $55A9: $00
    nop                                           ; $55AA: $00
    nop                                           ; $55AB: $00
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
    ld bc, $0103                                  ; $55C1: $01 $03 $01
    dec b                                         ; $55C4: $05
    inc bc                                        ; $55C5: $03
    rlca                                          ; $55C6: $07
    ld bc, $050B                                  ; $55C7: $01 $0B $05
    dec bc                                        ; $55CA: $0B
    ld b, $17                                     ; $55CB: $06 $17
    ld c, $17                                     ; $55CD: $0E $17
    rrca                                          ; $55CF: $0F
    rrca                                          ; $55D0: $0F
    nop                                           ; $55D1: $00
    dec bc                                        ; $55D2: $0B
    ld b, $0B                                     ; $55D3: $06 $0B
    ld b, $17                                     ; $55D5: $06 $17
    ld c, $17                                     ; $55D7: $0E $17
    ld c, $2F                                     ; $55D9: $0E $2F
    rra                                           ; $55DB: $1F
    cpl                                           ; $55DC: $2F
    rra                                           ; $55DD: $1F
    ccf                                           ; $55DE: $3F
    rra                                           ; $55DF: $1F
    ret nz                                        ; $55E0: $C0

    add b                                         ; $55E1: $80
    ret nz                                        ; $55E2: $C0

    add b                                         ; $55E3: $80
    ldh [$FFC0], a                                ; $55E4: $E0 $C0
    ldh [$FFC0], a                                ; $55E6: $E0 $C0
    ldh a, [$FFE0]                                ; $55E8: $F0 $E0
    ldh a, [$FFE0]                                ; $55EA: $F0 $E0
    ld hl, sp+$70                                 ; $55EC: $F8 $70
    ld hl, sp+$70                                 ; $55EE: $F8 $70
    ld hl, sp-$80                                 ; $55F0: $F8 $80
    ldh [$FFC0], a                                ; $55F2: $E0 $C0
    ldh [$FFC0], a                                ; $55F4: $E0 $C0
    ldh [$FFC0], a                                ; $55F6: $E0 $C0
    ldh a, [$FF60]                                ; $55F8: $F0 $60
    ldh a, [$FF60]                                ; $55FA: $F0 $60
    ldh a, [$FF60]                                ; $55FC: $F0 $60
    ld hl, sp+$70                                 ; $55FE: $F8 $70
    nop                                           ; $5600: $00
    nop                                           ; $5601: $00
    nop                                           ; $5602: $00
    nop                                           ; $5603: $00
    nop                                           ; $5604: $00
    nop                                           ; $5605: $00
    nop                                           ; $5606: $00
    nop                                           ; $5607: $00
    nop                                           ; $5608: $00
    nop                                           ; $5609: $00
    nop                                           ; $560A: $00
    nop                                           ; $560B: $00
    nop                                           ; $560C: $00
    nop                                           ; $560D: $00
    nop                                           ; $560E: $00
    nop                                           ; $560F: $00
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    nop                                           ; $5614: $00
    nop                                           ; $5615: $00
    nop                                           ; $5616: $00
    nop                                           ; $5617: $00
    nop                                           ; $5618: $00
    nop                                           ; $5619: $00
    nop                                           ; $561A: $00
    nop                                           ; $561B: $00
    add b                                         ; $561C: $80
    nop                                           ; $561D: $00
    ret nz                                        ; $561E: $C0

    add b                                         ; $561F: $80
    inc bc                                        ; $5620: $03
    nop                                           ; $5621: $00
    rrca                                          ; $5622: $0F
    ld bc, $0E33                                  ; $5623: $01 $33 $0E
    ld c, a                                       ; $5626: $4F
    ld a, $FF                                     ; $5627: $3E $FF
    ld [hl], b                                    ; $5629: $70
    rst RST_38                                    ; $562A: $FF
    dec c                                         ; $562B: $0D
    rrca                                          ; $562C: $0F
    nop                                           ; $562D: $00
    nop                                           ; $562E: $00
    nop                                           ; $562F: $00
    nop                                           ; $5630: $00
    nop                                           ; $5631: $00
    nop                                           ; $5632: $00
    nop                                           ; $5633: $00
    nop                                           ; $5634: $00
    nop                                           ; $5635: $00
    nop                                           ; $5636: $00
    nop                                           ; $5637: $00
    nop                                           ; $5638: $00
    nop                                           ; $5639: $00
    nop                                           ; $563A: $00
    nop                                           ; $563B: $00
    nop                                           ; $563C: $00
    nop                                           ; $563D: $00
    nop                                           ; $563E: $00
    nop                                           ; $563F: $00
    inc bc                                        ; $5640: $03
    nop                                           ; $5641: $00
    dec b                                         ; $5642: $05
    ld [bc], a                                    ; $5643: $02
    rrca                                          ; $5644: $0F
    inc b                                         ; $5645: $04
    ld l, [hl]                                    ; $5646: $6E
    inc bc                                        ; $5647: $03
    cp a                                          ; $5648: $BF
    ld c, [hl]                                    ; $5649: $4E
    cp $3D                                        ; $564A: $FE $3D
    rst RST_38                                    ; $564C: $FF
    ldh [$FFEF], a                                ; $564D: $E0 $EF
    inc bc                                        ; $564F: $03
    ccf                                           ; $5650: $3F
    inc b                                         ; $5651: $04
    call z, Call_000_3C38                         ; $5652: $CC $38 $3C
    ld hl, sp-$07                                 ; $5655: $F8 $F9
    ldh [$FFE3], a                                ; $5657: $E0 $E3
    ld bc, $0003                                  ; $5659: $01 $03 $00
    nop                                           ; $565C: $00
    nop                                           ; $565D: $00
    nop                                           ; $565E: $00
    nop                                           ; $565F: $00
    ld a, a                                       ; $5660: $7F
    inc sp                                        ; $5661: $33

jr_00F_5662:
    ld a, a                                       ; $5662: $7F
    ld [bc], a                                    ; $5663: $02
    rst RST_38                                    ; $5664: $FF
    ld [hl+], a                                   ; $5665: $22
    sub a                                         ; $5666: $97
    add sp, $3E                                   ; $5667: $E8 $3E
    db $D3                                        ; $5669: $D3
    ld hl, sp+$4F                                 ; $566A: $F8 $4F
    rst RST_38                                    ; $566C: $FF
    ccf                                           ; $566D: $3F
    rst RST_38                                    ; $566E: $FF
    ld hl, sp-$01                                 ; $566F: $F8 $FF
    add h                                         ; $5671: $84
    sub a                                         ; $5672: $97
    ld [$113E], sp                                ; $5673: $08 $3E $11
    ld d, a                                       ; $5676: $57
    ld hl, $42E5                                  ; $5677: $21 $E5 $42
    ld b, a                                       ; $567A: $47
    add d                                         ; $567B: $82
    add l                                         ; $567C: $85
    inc bc                                        ; $567D: $03
    inc bc                                        ; $567E: $03
    nop                                           ; $567F: $00
    cp a                                          ; $5680: $BF
    ld b, d                                       ; $5681: $42
    ei                                            ; $5682: $FB
    call nz, Call_000_30FE                        ; $5683: $C4 $FE $30
    reti                                          ; $5686: $D9


    or $39                                        ; $5687: $F6 $39
    or $7E                                        ; $5689: $F6 $7E
    ldh a, [$FFF4]                                ; $568B: $F0 $F4
    adc b                                         ; $568D: $88
    ld hl, sp+$40                                 ; $568E: $F8 $40
    jr c, jr_00F_5662                             ; $5690: $38 $D0

    ld hl, sp-$50                                 ; $5692: $F8 $B0
    db $FC                                        ; $5694: $FC
    ld a, b                                       ; $5695: $78
    db $F4                                        ; $5696: $F4
    ld c, b                                       ; $5697: $48
    xor a                                         ; $5698: $AF
    ld d, h                                       ; $5699: $54
    db $FD                                        ; $569A: $FD
    dec hl                                        ; $569B: $2B
    ei                                            ; $569C: $FB
    nop                                           ; $569D: $00
    add b                                         ; $569E: $80
    nop                                           ; $569F: $00
    nop                                           ; $56A0: $00
    nop                                           ; $56A1: $00
    nop                                           ; $56A2: $00
    nop                                           ; $56A3: $00
    nop                                           ; $56A4: $00
    nop                                           ; $56A5: $00
    nop                                           ; $56A6: $00
    nop                                           ; $56A7: $00
    nop                                           ; $56A8: $00
    nop                                           ; $56A9: $00
    nop                                           ; $56AA: $00
    nop                                           ; $56AB: $00
    nop                                           ; $56AC: $00
    nop                                           ; $56AD: $00
    nop                                           ; $56AE: $00
    nop                                           ; $56AF: $00
    nop                                           ; $56B0: $00
    nop                                           ; $56B1: $00
    ld bc, $0200                                  ; $56B2: $01 $00 $02
    ld bc, $0304                                  ; $56B5: $01 $04 $03
    add hl, bc                                    ; $56B8: $09
    rlca                                          ; $56B9: $07
    dec bc                                        ; $56BA: $0B
    rlca                                          ; $56BB: $07
    ld [hl], a                                    ; $56BC: $77
    rrca                                          ; $56BD: $0F
    or a                                          ; $56BE: $B7
    ld c, [hl]                                    ; $56BF: $4E
    nop                                           ; $56C0: $00
    nop                                           ; $56C1: $00
    nop                                           ; $56C2: $00
    nop                                           ; $56C3: $00
    nop                                           ; $56C4: $00
    nop                                           ; $56C5: $00
    nop                                           ; $56C6: $00
    nop                                           ; $56C7: $00
    nop                                           ; $56C8: $00
    nop                                           ; $56C9: $00
    ld bc, $0F00                                  ; $56CA: $01 $00 $0F
    ld bc, $0C3F                                  ; $56CD: $01 $3F $0C
    rst RST_38                                    ; $56D0: $FF
    dec sp                                        ; $56D1: $3B
    rst RST_38                                    ; $56D2: $FF
    rst RST_30                                    ; $56D3: $F7
    ld a, a                                       ; $56D4: $7F
    rst RST_28                                    ; $56D5: $EF
    rst RST_38                                    ; $56D6: $FF
    rst RST_18                                    ; $56D7: $DF
    rst RST_38                                    ; $56D8: $FF
    rst RST_18                                    ; $56D9: $DF
    rst RST_38                                    ; $56DA: $FF
    cp [hl]                                       ; $56DB: $BE
    cp $BC                                        ; $56DC: $FE $BC
    cp $3C                                        ; $56DE: $FE $3C
    nop                                           ; $56E0: $00
    nop                                           ; $56E1: $00
    nop                                           ; $56E2: $00
    nop                                           ; $56E3: $00
    nop                                           ; $56E4: $00
    nop                                           ; $56E5: $00
    nop                                           ; $56E6: $00
    nop                                           ; $56E7: $00
    nop                                           ; $56E8: $00
    nop                                           ; $56E9: $00
    nop                                           ; $56EA: $00
    nop                                           ; $56EB: $00
    nop                                           ; $56EC: $00
    nop                                           ; $56ED: $00
    nop                                           ; $56EE: $00
    nop                                           ; $56EF: $00
    db $FC                                        ; $56F0: $FC
    nop                                           ; $56F1: $00
    rst RST_38                                    ; $56F2: $FF
    inc b                                         ; $56F3: $04
    rst RST_38                                    ; $56F4: $FF
    db $E3                                        ; $56F5: $E3
    rst RST_38                                    ; $56F6: $FF
    di                                            ; $56F7: $F3
    rst RST_38                                    ; $56F8: $FF
    di                                            ; $56F9: $F3
    rst RST_38                                    ; $56FA: $FF
    db $E3                                        ; $56FB: $E3
    rst RST_38                                    ; $56FC: $FF
    add h                                         ; $56FD: $84
    db $FC                                        ; $56FE: $FC
    nop                                           ; $56FF: $00
    add b                                         ; $5700: $80
    nop                                           ; $5701: $00
    ret nz                                        ; $5702: $C0

    add b                                         ; $5703: $80
    ret nz                                        ; $5704: $C0

    add b                                         ; $5705: $80
    add b                                         ; $5706: $80
    nop                                           ; $5707: $00
    nop                                           ; $5708: $00
    nop                                           ; $5709: $00
    nop                                           ; $570A: $00
    nop                                           ; $570B: $00
    nop                                           ; $570C: $00
    nop                                           ; $570D: $00
    nop                                           ; $570E: $00
    nop                                           ; $570F: $00
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    nop                                           ; $5712: $00
    nop                                           ; $5713: $00
    nop                                           ; $5714: $00
    nop                                           ; $5715: $00
    nop                                           ; $5716: $00
    nop                                           ; $5717: $00
    nop                                           ; $5718: $00
    nop                                           ; $5719: $00
    nop                                           ; $571A: $00
    nop                                           ; $571B: $00
    nop                                           ; $571C: $00
    nop                                           ; $571D: $00
    nop                                           ; $571E: $00
    nop                                           ; $571F: $00
    add b                                         ; $5720: $80
    nop                                           ; $5721: $00
    add b                                         ; $5722: $80
    nop                                           ; $5723: $00
    nop                                           ; $5724: $00
    nop                                           ; $5725: $00
    nop                                           ; $5726: $00
    nop                                           ; $5727: $00
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    nop                                           ; $572A: $00
    nop                                           ; $572B: $00
    nop                                           ; $572C: $00
    nop                                           ; $572D: $00
    nop                                           ; $572E: $00
    nop                                           ; $572F: $00
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    nop                                           ; $5734: $00
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
    inc c                                         ; $5740: $0C
    nop                                           ; $5741: $00
    ld a, [bc]                                    ; $5742: $0A
    inc b                                         ; $5743: $04
    dec b                                         ; $5744: $05
    ld [bc], a                                    ; $5745: $02
    ld h, h                                       ; $5746: $64
    inc bc                                        ; $5747: $03
    ld e, e                                       ; $5748: $5B
    jr nz, jr_00F_5771                            ; $5749: $20 $26

    add hl, de                                    ; $574B: $19
    ld de, $080E                                  ; $574C: $11 $0E $08

jr_00F_574F:
    rlca                                          ; $574F: $07
    inc b                                         ; $5750: $04
    inc bc                                        ; $5751: $03
    ld [bc], a                                    ; $5752: $02
    ld bc, $0001                                  ; $5753: $01 $01 $00
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
    nop                                           ; $5760: $00
    nop                                           ; $5761: $00
    ld h, b                                       ; $5762: $60
    nop                                           ; $5763: $00
    ld d, b                                       ; $5764: $50
    jr nz, jr_00F_574F                            ; $5765: $20 $E8

    db $10                                        ; $5767: $10
    ld h, $D8                                     ; $5768: $26 $D8
    pop de                                        ; $576A: $D1
    ld l, $30                                     ; $576B: $2E $30
    rst RST_08                                    ; $576D: $CF
    adc b                                         ; $576E: $88
    ld [hl], a                                    ; $576F: $77
    ld b, b                                       ; $5770: $40

jr_00F_5771:
    cp a                                          ; $5771: $BF
    ld h, b                                       ; $5772: $60
    rst RST_18                                    ; $5773: $DF
    ld [hl-], a                                   ; $5774: $32
    rst RST_28                                    ; $5775: $EF
    reti                                          ; $5776: $D9


    scf                                           ; $5777: $37
    ld [hl], $09                                  ; $5778: $36 $09
    dec c                                         ; $577A: $0D
    ld [bc], a                                    ; $577B: $02
    inc bc                                        ; $577C: $03
    nop                                           ; $577D: $00
    nop                                           ; $577E: $00
    nop                                           ; $577F: $00
    nop                                           ; $5780: $00
    nop                                           ; $5781: $00
    ld bc, $0300                                  ; $5782: $01 $00 $03
    ld bc, $0307                                  ; $5785: $01 $07 $03
    rrca                                          ; $5788: $0F
    rlca                                          ; $5789: $07
    rra                                           ; $578A: $1F
    rrca                                          ; $578B: $0F
    rra                                           ; $578C: $1F
    rrca                                          ; $578D: $0F
    ccf                                           ; $578E: $3F
    rra                                           ; $578F: $1F
    ccf                                           ; $5790: $3F
    rra                                           ; $5791: $1F
    ld a, a                                       ; $5792: $7F
    ccf                                           ; $5793: $3F
    ld a, a                                       ; $5794: $7F
    ccf                                           ; $5795: $3F
    rst RST_38                                    ; $5796: $FF
    ccf                                           ; $5797: $3F
    ld a, a                                       ; $5798: $7F
    adc a                                         ; $5799: $8F
    ccf                                           ; $579A: $3F
    ldh a, [$FF8F]                                ; $579B: $F0 $8F
    cp $73                                        ; $579D: $FE $73
    rst RST_38                                    ; $579F: $FF
    rrca                                          ; $57A0: $0F
    ld bc, $0F3E                                  ; $57A1: $01 $3E $0F
    rst RST_38                                    ; $57A4: $FF
    ccf                                           ; $57A5: $3F
    jp $FCFC                                      ; $57A6: $C3 $FC $FC


    ei                                            ; $57A9: $FB
    rst RST_38                                    ; $57AA: $FF
    ldh a, [$FF80]                                ; $57AB: $F0 $80
    rst RST_38                                    ; $57AD: $FF
    db $FC                                        ; $57AE: $FC
    jp $DFFE                                      ; $57AF: $C3 $FE $DF


    ldh a, [$FFBF]                                ; $57B2: $F0 $BF
    rst RST_38                                    ; $57B4: $FF
    cp a                                          ; $57B5: $BF
    db $FC                                        ; $57B6: $FC
    cp a                                          ; $57B7: $BF
    ldh [$FF7F], a                                ; $57B8: $E0 $7F
    rst RST_38                                    ; $57BA: $FF
    ld a, h                                       ; $57BB: $7C
    db $FC                                        ; $57BC: $FC
    ld a, b                                       ; $57BD: $78
    ld hl, sp-$10                                 ; $57BE: $F8 $F0
    rrca                                          ; $57C0: $0F
    nop                                           ; $57C1: $00
    rst RST_38                                    ; $57C2: $FF
    rrca                                          ; $57C3: $0F
    ldh [rIE], a                                  ; $57C4: $E0 $FF
    ld bc, $F6FE                                  ; $57C6: $01 $FE $F6
    adc b                                         ; $57C9: $88
    add c                                         ; $57CA: $81
    ld a, [hl]                                    ; $57CB: $7E
    nop                                           ; $57CC: $00
    rst RST_38                                    ; $57CD: $FF
    ldh [$FF7F], a                                ; $57CE: $E0 $7F
    rlca                                          ; $57D0: $07
    ld hl, sp+$18                                 ; $57D1: $F8 $18
    ldh [rTMA], a                                 ; $57D3: $E0 $06
    ld hl, sp+$01                                 ; $57D5: $F8 $01
    cp $FE                                        ; $57D7: $FE $FE
    ldh a, [rSVBK]                                ; $57D9: $F0 $70
    add b                                         ; $57DB: $80
    jr nz, @-$3E                                  ; $57DC: $20 $C0

    ldh a, [rP1]                                  ; $57DE: $F0 $00
    ccf                                           ; $57E0: $3F
    rst RST_38                                    ; $57E1: $FF
    rst RST_38                                    ; $57E2: $FF
    rst RST_38                                    ; $57E3: $FF
    rst RST_38                                    ; $57E4: $FF
    rst RST_38                                    ; $57E5: $FF
    cp a                                          ; $57E6: $BF
    ld a, a                                       ; $57E7: $7F
    rst RST_28                                    ; $57E8: $EF
    rra                                           ; $57E9: $1F
    ld e, a                                       ; $57EA: $5F
    inc hl                                        ; $57EB: $23
    ld [hl], e                                    ; $57EC: $73
    jr nz, jr_00F_5819                            ; $57ED: $20 $2A

    ld de, $1039                                  ; $57EF: $11 $39 $10
    add hl, hl                                    ; $57F2: $29
    db $10                                        ; $57F3: $10
    ld a, b                                       ; $57F4: $78
    db $10                                        ; $57F5: $10
    ret nc                                        ; $57F6: $D0

    ld h, b                                       ; $57F7: $60
    ldh [rP1], a                                  ; $57F8: $E0 $00
    nop                                           ; $57FA: $00
    nop                                           ; $57FB: $00
    nop                                           ; $57FC: $00
    nop                                           ; $57FD: $00
    nop                                           ; $57FE: $00
    nop                                           ; $57FF: $00
    ld hl, sp+$10                                 ; $5800: $F8 $10
    cp $E0                                        ; $5802: $FE $E0
    rst RST_38                                    ; $5804: $FF
    cp $FF                                        ; $5805: $FE $FF
    rst RST_38                                    ; $5807: $FF
    rst RST_38                                    ; $5808: $FF
    ldh a, [rIE]                                  ; $5809: $F0 $FF
    db $FC                                        ; $580B: $FC
    rst RST_38                                    ; $580C: $FF
    rst RST_38                                    ; $580D: $FF
    rst RST_38                                    ; $580E: $FF
    rst RST_38                                    ; $580F: $FF
    rst RST_38                                    ; $5810: $FF
    nop                                           ; $5811: $00
    ld c, l                                       ; $5812: $4D
    cp [hl]                                       ; $5813: $BE
    rst RST_28                                    ; $5814: $EF
    cp l                                          ; $5815: $BD
    ld a, a                                       ; $5816: $7F
    sub h                                         ; $5817: $94
    push af                                       ; $5818: $F5

jr_00F_5819:
    ld c, d                                       ; $5819: $4A
    ld e, a                                       ; $581A: $5F
    dec h                                         ; $581B: $25
    dec a                                         ; $581C: $3D
    db $10                                        ; $581D: $10
    jr jr_00F_5820                                ; $581E: $18 $00

jr_00F_5820:
    ret nz                                        ; $5820: $C0

    nop                                           ; $5821: $00
    ldh a, [$FFC0]                                ; $5822: $F0 $C0
    db $FC                                        ; $5824: $FC
    nop                                           ; $5825: $00
    nop                                           ; $5826: $00
    nop                                           ; $5827: $00
    ldh [rP1], a                                  ; $5828: $E0 $00
    ld hl, sp-$20                                 ; $582A: $F8 $E0
    cp $00                                        ; $582C: $FE $00
    add b                                         ; $582E: $80
    nop                                           ; $582F: $00
    ld b, b                                       ; $5830: $40
    add b                                         ; $5831: $80
    ldh [rLCDC], a                                ; $5832: $E0 $40
    ld h, b                                       ; $5834: $60
    nop                                           ; $5835: $00
    add b                                         ; $5836: $80
    nop                                           ; $5837: $00
    add b                                         ; $5838: $80
    nop                                           ; $5839: $00
    nop                                           ; $583A: $00
    nop                                           ; $583B: $00
    nop                                           ; $583C: $00
    nop                                           ; $583D: $00
    nop                                           ; $583E: $00
    nop                                           ; $583F: $00
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    nop                                           ; $5844: $00
    nop                                           ; $5845: $00
    nop                                           ; $5846: $00
    nop                                           ; $5847: $00
    db $FC                                        ; $5848: $FC
    nop                                           ; $5849: $00
    ld hl, sp-$20                                 ; $584A: $F8 $E0
    ld h, b                                       ; $584C: $60
    add b                                         ; $584D: $80
    add b                                         ; $584E: $80
    nop                                           ; $584F: $00
    nop                                           ; $5850: $00
    nop                                           ; $5851: $00
    ldh [rP1], a                                  ; $5852: $E0 $00
    db $10                                        ; $5854: $10
    ldh [$FFE0], a                                ; $5855: $E0 $E0
    nop                                           ; $5857: $00
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    nop                                           ; $585A: $00
    nop                                           ; $585B: $00
    nop                                           ; $585C: $00
    nop                                           ; $585D: $00
    add b                                         ; $585E: $80
    nop                                           ; $585F: $00
    inc bc                                        ; $5860: $03
    ld bc, $0307                                  ; $5861: $01 $07 $03
    rrca                                          ; $5864: $0F
    rlca                                          ; $5865: $07
    rra                                           ; $5866: $1F
    rrca                                          ; $5867: $0F
    ccf                                           ; $5868: $3F
    rra                                           ; $5869: $1F
    ld a, a                                       ; $586A: $7F
    ccf                                           ; $586B: $3F
    ld a, a                                       ; $586C: $7F
    ccf                                           ; $586D: $3F
    rst RST_38                                    ; $586E: $FF
    ld a, a                                       ; $586F: $7F
    rst RST_38                                    ; $5870: $FF
    ld a, a                                       ; $5871: $7F
    rst RST_38                                    ; $5872: $FF
    ld a, a                                       ; $5873: $7F
    rst RST_38                                    ; $5874: $FF
    ld a, a                                       ; $5875: $7F
    ld a, a                                       ; $5876: $7F
    ccf                                           ; $5877: $3F
    ld a, a                                       ; $5878: $7F
    ccf                                           ; $5879: $3F
    ccf                                           ; $587A: $3F
    rra                                           ; $587B: $1F
    rra                                           ; $587C: $1F
    rlca                                          ; $587D: $07
    rlca                                          ; $587E: $07
    nop                                           ; $587F: $00
    rst RST_38                                    ; $5880: $FF
    rst RST_38                                    ; $5881: $FF
    rst RST_38                                    ; $5882: $FF
    rst RST_38                                    ; $5883: $FF
    rst RST_38                                    ; $5884: $FF
    rst RST_38                                    ; $5885: $FF
    rst RST_38                                    ; $5886: $FF
    rst RST_38                                    ; $5887: $FF
    rst RST_38                                    ; $5888: $FF
    rst RST_38                                    ; $5889: $FF
    rst RST_38                                    ; $588A: $FF
    rst RST_38                                    ; $588B: $FF
    rst RST_38                                    ; $588C: $FF
    rst RST_38                                    ; $588D: $FF
    rst RST_38                                    ; $588E: $FF
    rst RST_38                                    ; $588F: $FF
    rst RST_38                                    ; $5890: $FF
    rst RST_38                                    ; $5891: $FF
    rst RST_38                                    ; $5892: $FF
    rst RST_38                                    ; $5893: $FF
    rst RST_38                                    ; $5894: $FF
    rst RST_38                                    ; $5895: $FF
    rst RST_38                                    ; $5896: $FF
    rst RST_38                                    ; $5897: $FF
    rst RST_38                                    ; $5898: $FF
    rst RST_38                                    ; $5899: $FF
    rst RST_38                                    ; $589A: $FF
    rst RST_38                                    ; $589B: $FF
    rst RST_38                                    ; $589C: $FF
    db $FC                                        ; $589D: $FC
    db $FC                                        ; $589E: $FC
    nop                                           ; $589F: $00
    ret nz                                        ; $58A0: $C0

    rst RST_38                                    ; $58A1: $FF
    add a                                         ; $58A2: $87
    rst RST_38                                    ; $58A3: $FF
    ccf                                           ; $58A4: $3F
    rst RST_38                                    ; $58A5: $FF
    rst RST_38                                    ; $58A6: $FF
    rst RST_38                                    ; $58A7: $FF
    rst RST_38                                    ; $58A8: $FF
    rst RST_38                                    ; $58A9: $FF
    rst RST_38                                    ; $58AA: $FF
    rst RST_38                                    ; $58AB: $FF
    rst RST_38                                    ; $58AC: $FF
    rst RST_38                                    ; $58AD: $FF
    rst RST_38                                    ; $58AE: $FF
    rst RST_38                                    ; $58AF: $FF
    rst RST_38                                    ; $58B0: $FF
    rst RST_38                                    ; $58B1: $FF
    rst RST_38                                    ; $58B2: $FF
    rst RST_38                                    ; $58B3: $FF
    rst RST_38                                    ; $58B4: $FF
    rst RST_38                                    ; $58B5: $FF
    rst RST_38                                    ; $58B6: $FF
    rst RST_38                                    ; $58B7: $FF
    rst RST_38                                    ; $58B8: $FF
    rst RST_38                                    ; $58B9: $FF
    rst RST_38                                    ; $58BA: $FF
    rst RST_38                                    ; $58BB: $FF
    rst RST_38                                    ; $58BC: $FF
    nop                                           ; $58BD: $00
    nop                                           ; $58BE: $00
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
    ld bc, $0600                                  ; $58D6: $01 $00 $06
    ld bc, $0718                                  ; $58D9: $01 $18 $07
    ld a, a                                       ; $58DC: $7F
    rra                                           ; $58DD: $1F
    rst RST_38                                    ; $58DE: $FF
    ld a, a                                       ; $58DF: $7F
    nop                                           ; $58E0: $00
    nop                                           ; $58E1: $00
    nop                                           ; $58E2: $00
    nop                                           ; $58E3: $00
    nop                                           ; $58E4: $00
    nop                                           ; $58E5: $00
    nop                                           ; $58E6: $00
    nop                                           ; $58E7: $00
    nop                                           ; $58E8: $00
    nop                                           ; $58E9: $00
    nop                                           ; $58EA: $00
    nop                                           ; $58EB: $00
    nop                                           ; $58EC: $00
    nop                                           ; $58ED: $00
    nop                                           ; $58EE: $00
    nop                                           ; $58EF: $00
    ld bc, $0E00                                  ; $58F0: $01 $00 $0E
    ld bc, $0F70                                  ; $58F3: $01 $70 $0F
    add c                                         ; $58F6: $81
    ld a, a                                       ; $58F7: $7F
    ld e, $FF                                     ; $58F8: $1E $FF
    db $FC                                        ; $58FA: $FC
    rst RST_38                                    ; $58FB: $FF
    ld hl, sp-$01                                 ; $58FC: $F8 $FF
    ldh a, [rIE]                                  ; $58FE: $F0 $FF
    nop                                           ; $5900: $00
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    nop                                           ; $5903: $00
    nop                                           ; $5904: $00
    nop                                           ; $5905: $00
    nop                                           ; $5906: $00
    nop                                           ; $5907: $00
    nop                                           ; $5908: $00
    nop                                           ; $5909: $00
    nop                                           ; $590A: $00
    nop                                           ; $590B: $00
    nop                                           ; $590C: $00
    nop                                           ; $590D: $00
    rra                                           ; $590E: $1F
    nop                                           ; $590F: $00
    ldh [$FF1F], a                                ; $5910: $E0 $1F
    nop                                           ; $5912: $00
    rst RST_38                                    ; $5913: $FF
    ld bc, $06FE                                  ; $5914: $01 $FE $06
    ld hl, sp+$18                                 ; $5917: $F8 $18
    ldh [$FF60], a                                ; $5919: $E0 $60
    add b                                         ; $591B: $80
    rst RST_38                                    ; $591C: $FF
    nop                                           ; $591D: $00
    nop                                           ; $591E: $00
    rst RST_38                                    ; $591F: $FF
    ldh a, [c]                                    ; $5920: $F2
    db $FC                                        ; $5921: $FC
    call nz, $8FF8                                ; $5922: $C4 $F8 $8F
    ldh a, [rP1]                                  ; $5925: $F0 $00
    rst RST_38                                    ; $5927: $FF
    add hl, bc                                    ; $5928: $09
    cp $F0                                        ; $5929: $FE $F0
    rst RST_38                                    ; $592B: $FF
    pop hl                                        ; $592C: $E1
    rst RST_38                                    ; $592D: $FF
    rst RST_38                                    ; $592E: $FF
    rst RST_38                                    ; $592F: $FF
    rst RST_38                                    ; $5930: $FF
    rst RST_38                                    ; $5931: $FF

jr_00F_5932:
    rst RST_38                                    ; $5932: $FF
    rst RST_38                                    ; $5933: $FF
    rst RST_38                                    ; $5934: $FF
    rst RST_38                                    ; $5935: $FF
    rst RST_38                                    ; $5936: $FF
    ldh a, [rIE]                                  ; $5937: $F0 $FF
    rst RST_38                                    ; $5939: $FF
    rst RST_38                                    ; $593A: $FF
    rst RST_38                                    ; $593B: $FF
    rst RST_38                                    ; $593C: $FF
    ld bc, $0619                                  ; $593D: $01 $19 $06
    nop                                           ; $5940: $00
    nop                                           ; $5941: $00
    nop                                           ; $5942: $00
    nop                                           ; $5943: $00
    nop                                           ; $5944: $00
    nop                                           ; $5945: $00
    nop                                           ; $5946: $00
    nop                                           ; $5947: $00
    nop                                           ; $5948: $00
    nop                                           ; $5949: $00
    nop                                           ; $594A: $00
    nop                                           ; $594B: $00
    nop                                           ; $594C: $00
    nop                                           ; $594D: $00
    ld hl, sp+$00                                 ; $594E: $F8 $00
    jr jr_00F_5932                                ; $5950: $18 $E0

    ld h, b                                       ; $5952: $60
    add b                                         ; $5953: $80
    add b                                         ; $5954: $80
    nop                                           ; $5955: $00
    nop                                           ; $5956: $00
    nop                                           ; $5957: $00
    nop                                           ; $5958: $00
    nop                                           ; $5959: $00
    nop                                           ; $595A: $00
    nop                                           ; $595B: $00
    ret nz                                        ; $595C: $C0

    nop                                           ; $595D: $00
    add b                                         ; $595E: $80
    nop                                           ; $595F: $00
    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    ldh [rP1], a                                  ; $5964: $E0 $00
    ld b, b                                       ; $5966: $40
    add b                                         ; $5967: $80
    rst RST_38                                    ; $5968: $FF
    nop                                           ; $5969: $00
    ld bc, $F2FE                                  ; $596A: $01 $FE $F2
    db $FC                                        ; $596D: $FC
    db $E4                                        ; $596E: $E4
    ld hl, sp-$04                                 ; $596F: $F8 $FC
    ld hl, sp-$02                                 ; $5971: $F8 $FE
    db $FC                                        ; $5973: $FC
    rst RST_38                                    ; $5974: $FF
    cp $FF                                        ; $5975: $FE $FF
    ld b, $FF                                     ; $5977: $06 $FF
    add h                                         ; $5979: $84
    call $F2B2                                    ; $597A: $CD $B2 $F2
    adc l                                         ; $597D: $8D
    add d                                         ; $597E: $82
    ld a, l                                       ; $597F: $7D
    ld h, c                                       ; $5980: $61
    ld e, $73                                     ; $5981: $1E $73
    dec l                                         ; $5983: $2D
    ld l, $11                                     ; $5984: $2E $11
    ccf                                           ; $5986: $3F
    db $10                                        ; $5987: $10
    rla                                           ; $5988: $17
    ld [$081F], sp                                ; $5989: $08 $1F $08
    dec d                                         ; $598C: $15
    ld [$1079], sp                                ; $598D: $08 $79 $10
    ret nc                                        ; $5990: $D0

    ld h, b                                       ; $5991: $60
    ldh [rP1], a                                  ; $5992: $E0 $00
    nop                                           ; $5994: $00
    nop                                           ; $5995: $00
    nop                                           ; $5996: $00
    nop                                           ; $5997: $00
    nop                                           ; $5998: $00
    nop                                           ; $5999: $00
    nop                                           ; $599A: $00
    nop                                           ; $599B: $00
    nop                                           ; $599C: $00
    nop                                           ; $599D: $00
    nop                                           ; $599E: $00
    nop                                           ; $599F: $00
    ld sp, hl                                     ; $59A0: $F9
    jr nc, @+$01                                  ; $59A1: $30 $FF

    jr nz, jr_00F_5A14                            ; $59A3: $20 $6F

    sub d                                         ; $59A5: $92
    sub e                                         ; $59A6: $93
    ld l, l                                       ; $59A7: $6D
    ld de, $D9EE                                  ; $59A8: $11 $EE $D9
    ld h, $FF                                     ; $59AB: $26 $FF
    add c                                         ; $59AD: $81
    ld a, a                                       ; $59AE: $7F
    or e                                          ; $59AF: $B3
    rst RST_00                                    ; $59B0: $C7
    cp h                                          ; $59B1: $BC
    ld l, a                                       ; $59B2: $6F
    or [hl]                                       ; $59B3: $B6
    ld a, [$BF95]                                 ; $59B4: $FA $95 $BF
    ld c, d                                       ; $59B7: $4A
    ld [$D745], a                                 ; $59B8: $EA $45 $D7
    ld [hl+], a                                   ; $59BB: $22
    ld a, [hl-]                                   ; $59BC: $3A
    db $10                                        ; $59BD: $10
    jr jr_00F_59C0                                ; $59BE: $18 $00

jr_00F_59C0:
    add b                                         ; $59C0: $80
    nop                                           ; $59C1: $00
    ld b, b                                       ; $59C2: $40
    add b                                         ; $59C3: $80
    ret nz                                        ; $59C4: $C0

    add b                                         ; $59C5: $80
    ldh [rP1], a                                  ; $59C6: $E0 $00
    ldh a, [$FFA0]                                ; $59C8: $F0 $A0
    ld hl, sp-$40                                 ; $59CA: $F8 $C0
    sbc h                                         ; $59CC: $9C
    add sp, -$34                                  ; $59CD: $E8 $CC
    ldh a, [$FFF4]                                ; $59CF: $F0 $F4
    ld hl, sp-$02                                 ; $59D1: $F8 $FE
    inc a                                         ; $59D3: $3C
    cp a                                          ; $59D4: $BF
    ld c, $EF                                     ; $59D5: $0E $EF
    add e                                         ; $59D7: $83
    or e                                          ; $59D8: $B3
    ld h, b                                       ; $59D9: $60
    di                                            ; $59DA: $F3
    add c                                         ; $59DB: $81
    pop bc                                        ; $59DC: $C1
    nop                                           ; $59DD: $00
    nop                                           ; $59DE: $00
    nop                                           ; $59DF: $00
    ldh [rP1], a                                  ; $59E0: $E0 $00
    sbc b                                         ; $59E2: $98
    ldh [$FFFC], a                                ; $59E3: $E0 $FC
    ld hl, sp-$04                                 ; $59E5: $F8 $FC
    db $10                                        ; $59E7: $10
    jr nc, jr_00F_59EA                            ; $59E8: $30 $00

jr_00F_59EA:
    nop                                           ; $59EA: $00
    nop                                           ; $59EB: $00
    nop                                           ; $59EC: $00
    nop                                           ; $59ED: $00
    nop                                           ; $59EE: $00
    nop                                           ; $59EF: $00
    nop                                           ; $59F0: $00
    nop                                           ; $59F1: $00
    nop                                           ; $59F2: $00
    nop                                           ; $59F3: $00
    nop                                           ; $59F4: $00
    nop                                           ; $59F5: $00
    nop                                           ; $59F6: $00
    nop                                           ; $59F7: $00
    nop                                           ; $59F8: $00
    nop                                           ; $59F9: $00
    nop                                           ; $59FA: $00
    nop                                           ; $59FB: $00
    nop                                           ; $59FC: $00
    nop                                           ; $59FD: $00
    nop                                           ; $59FE: $00
    nop                                           ; $59FF: $00
    rlca                                          ; $5A00: $07
    nop                                           ; $5A01: $00
    jr jr_00F_5A0B                                ; $5A02: $18 $07

    ld hl, $431F                                  ; $5A04: $21 $1F $43
    ccf                                           ; $5A07: $3F
    add a                                         ; $5A08: $87
    ld a, a                                       ; $5A09: $7F
    add c                                         ; $5A0A: $81

jr_00F_5A0B:
    ld a, a                                       ; $5A0B: $7F
    rst RST_38                                    ; $5A0C: $FF
    ld a, b                                       ; $5A0D: $78
    ld a, a                                       ; $5A0E: $7F
    dec de                                        ; $5A0F: $1B
    rra                                           ; $5A10: $1F
    inc b                                         ; $5A11: $04
    rlca                                          ; $5A12: $07
    nop                                           ; $5A13: $00

jr_00F_5A14:
    nop                                           ; $5A14: $00
    nop                                           ; $5A15: $00
    nop                                           ; $5A16: $00
    nop                                           ; $5A17: $00
    nop                                           ; $5A18: $00
    nop                                           ; $5A19: $00
    nop                                           ; $5A1A: $00
    nop                                           ; $5A1B: $00
    nop                                           ; $5A1C: $00
    nop                                           ; $5A1D: $00
    nop                                           ; $5A1E: $00
    nop                                           ; $5A1F: $00
    rst RST_38                                    ; $5A20: $FF
    nop                                           ; $5A21: $00
    ld a, b                                       ; $5A22: $78
    rst RST_20                                    ; $5A23: $E7
    rst RST_38                                    ; $5A24: $FF
    ei                                            ; $5A25: $FB
    rst RST_38                                    ; $5A26: $FF
    db $FC                                        ; $5A27: $FC
    rst RST_38                                    ; $5A28: $FF
    rst RST_38                                    ; $5A29: $FF
    rst RST_38                                    ; $5A2A: $FF
    rst RST_38                                    ; $5A2B: $FF
    rst RST_38                                    ; $5A2C: $FF
    rst RST_38                                    ; $5A2D: $FF
    rst RST_38                                    ; $5A2E: $FF
    ld bc, $FEEF                                  ; $5A2F: $01 $EF $FE
    ld a, a                                       ; $5A32: $7F
    db $FC                                        ; $5A33: $FC
    rst RST_38                                    ; $5A34: $FF
    ld [hl], e                                    ; $5A35: $73
    ld a, a                                       ; $5A36: $7F
    nop                                           ; $5A37: $00
    nop                                           ; $5A38: $00
    nop                                           ; $5A39: $00
    nop                                           ; $5A3A: $00
    nop                                           ; $5A3B: $00
    nop                                           ; $5A3C: $00
    nop                                           ; $5A3D: $00
    nop                                           ; $5A3E: $00
    nop                                           ; $5A3F: $00
    add b                                         ; $5A40: $80
    nop                                           ; $5A41: $00
    ld [hl], b                                    ; $5A42: $70
    add b                                         ; $5A43: $80
    adc [hl]                                      ; $5A44: $8E
    ldh a, [$FFF1]                                ; $5A45: $F0 $F1
    cp $FE                                        ; $5A47: $FE $FE
    ld a, a                                       ; $5A49: $7F
    rst RST_38                                    ; $5A4A: $FF
    cp a                                          ; $5A4B: $BF
    rst RST_38                                    ; $5A4C: $FF
    cp a                                          ; $5A4D: $BF
    rst RST_38                                    ; $5A4E: $FF
    cp a                                          ; $5A4F: $BF
    rst RST_38                                    ; $5A50: $FF
    ld b, b                                       ; $5A51: $40
    rst RST_38                                    ; $5A52: $FF
    rst RST_38                                    ; $5A53: $FF
    rst RST_38                                    ; $5A54: $FF
    rst RST_38                                    ; $5A55: $FF
    rst RST_38                                    ; $5A56: $FF
    rrca                                          ; $5A57: $0F
    ccf                                           ; $5A58: $3F
    inc bc                                        ; $5A59: $03
    inc sp                                        ; $5A5A: $33
    inc c                                         ; $5A5B: $0C
    jr jr_00F_5A65                                ; $5A5C: $18 $07

    inc e                                         ; $5A5E: $1C
    dec bc                                        ; $5A5F: $0B
    nop                                           ; $5A60: $00
    nop                                           ; $5A61: $00
    nop                                           ; $5A62: $00
    nop                                           ; $5A63: $00
    nop                                           ; $5A64: $00

jr_00F_5A65:
    nop                                           ; $5A65: $00
    add b                                         ; $5A66: $80
    nop                                           ; $5A67: $00
    ld h, b                                       ; $5A68: $60
    add b                                         ; $5A69: $80
    ldh a, [$FFE0]                                ; $5A6A: $F0 $E0
    ld hl, sp-$10                                 ; $5A6C: $F8 $F0
    db $FC                                        ; $5A6E: $FC
    ld hl, sp-$02                                 ; $5A6F: $F8 $FE
    ld a, h                                       ; $5A71: $7C
    cp $8C                                        ; $5A72: $FE $8C
    rst RST_38                                    ; $5A74: $FF
    ld [$649B], sp                                ; $5A75: $08 $9B $64
    db $E4                                        ; $5A78: $E4
    dec de                                        ; $5A79: $1B
    inc b                                         ; $5A7A: $04
    ei                                            ; $5A7B: $FB
    halt                                          ; $5A7C: $76
    adc c                                         ; $5A7D: $89
    rst RST_38                                    ; $5A7E: $FF
    ld h, b                                       ; $5A7F: $60
    dec bc                                        ; $5A80: $0B
    inc b                                         ; $5A81: $04
    rrca                                          ; $5A82: $0F
    inc b                                         ; $5A83: $04
    dec b                                         ; $5A84: $05
    ld [bc], a                                    ; $5A85: $02
    rlca                                          ; $5A86: $07
    ld [bc], a                                    ; $5A87: $02
    dec b                                         ; $5A88: $05
    ld [bc], a                                    ; $5A89: $02
    ld e, $04                                     ; $5A8A: $1E $04
    inc [hl]                                      ; $5A8C: $34
    jr jr_00F_5AC7                                ; $5A8D: $18 $38

    nop                                           ; $5A8F: $00
    nop                                           ; $5A90: $00
    nop                                           ; $5A91: $00
    nop                                           ; $5A92: $00
    nop                                           ; $5A93: $00
    nop                                           ; $5A94: $00
    nop                                           ; $5A95: $00
    nop                                           ; $5A96: $00
    nop                                           ; $5A97: $00
    nop                                           ; $5A98: $00
    nop                                           ; $5A99: $00
    nop                                           ; $5A9A: $00
    nop                                           ; $5A9B: $00
    nop                                           ; $5A9C: $00
    nop                                           ; $5A9D: $00
    nop                                           ; $5A9E: $00
    nop                                           ; $5A9F: $00
    sbc a                                         ; $5AA0: $9F
    ld l, h                                       ; $5AA1: $6C
    pop af                                        ; $5AA2: $F1
    cpl                                           ; $5AA3: $2F
    db $DB                                        ; $5AA4: $DB
    dec l                                         ; $5AA5: $2D
    cp $25                                        ; $5AA6: $FE $25
    ld l, a                                       ; $5AA8: $6F
    ld [de], a                                    ; $5AA9: $12
    ld a, d                                       ; $5AAA: $7A
    ld de, $0835                                  ; $5AAB: $11 $35 $08
    ld c, $04                                     ; $5AAE: $0E $04
    ld b, $00                                     ; $5AB0: $06 $00
    nop                                           ; $5AB2: $00
    nop                                           ; $5AB3: $00
    nop                                           ; $5AB4: $00
    nop                                           ; $5AB5: $00
    nop                                           ; $5AB6: $00

jr_00F_5AB7:
    nop                                           ; $5AB7: $00
    nop                                           ; $5AB8: $00
    nop                                           ; $5AB9: $00
    nop                                           ; $5ABA: $00
    nop                                           ; $5ABB: $00
    nop                                           ; $5ABC: $00
    nop                                           ; $5ABD: $00
    nop                                           ; $5ABE: $00
    nop                                           ; $5ABF: $00
    nop                                           ; $5AC0: $00
    nop                                           ; $5AC1: $00
    ld h, b                                       ; $5AC2: $60
    nop                                           ; $5AC3: $00
    ret nc                                        ; $5AC4: $D0

    jr nz, jr_00F_5AB7                            ; $5AC5: $20 $F0

jr_00F_5AC7:
    and b                                         ; $5AC7: $A0
    ld hl, sp+$40                                 ; $5AC8: $F8 $40
    ld a, h                                       ; $5ACA: $7C
    xor b                                         ; $5ACB: $A8
    ld a, [hl]                                    ; $5ACC: $7E
    or b                                          ; $5ACD: $B0
    rst RST_20                                    ; $5ACE: $E7
    ld a, d                                       ; $5ACF: $7A
    di                                            ; $5AD0: $F3
    db $FC                                        ; $5AD1: $FC
    db $FD                                        ; $5AD2: $FD
    ld a, $FF                                     ; $5AD3: $3E $FF
    adc a                                         ; $5AD5: $8F
    xor a                                         ; $5AD6: $AF
    ld b, e                                       ; $5AD7: $43
    ei                                            ; $5AD8: $FB
    and b                                         ; $5AD9: $A0
    xor h                                         ; $5ADA: $AC
    ld e, b                                       ; $5ADB: $58
    db $FC                                        ; $5ADC: $FC
    and b                                         ; $5ADD: $A0
    or b                                          ; $5ADE: $B0
    nop                                           ; $5ADF: $00
    add b                                         ; $5AE0: $80
    nop                                           ; $5AE1: $00
    ret nz                                        ; $5AE2: $C0

    add b                                         ; $5AE3: $80

jr_00F_5AE4:
    ld hl, sp-$40                                 ; $5AE4: $F8 $C0
    and $38                                       ; $5AE6: $E6 $38
    rst RST_38                                    ; $5AE8: $FF
    ld a, [hl]                                    ; $5AE9: $7E
    ld a, a                                       ; $5AEA: $7F
    inc b                                         ; $5AEB: $04
    inc c                                         ; $5AEC: $0C
    nop                                           ; $5AED: $00
    nop                                           ; $5AEE: $00
    nop                                           ; $5AEF: $00
    nop                                           ; $5AF0: $00
    nop                                           ; $5AF1: $00
    nop                                           ; $5AF2: $00
    nop                                           ; $5AF3: $00
    nop                                           ; $5AF4: $00
    nop                                           ; $5AF5: $00
    nop                                           ; $5AF6: $00
    nop                                           ; $5AF7: $00
    nop                                           ; $5AF8: $00
    nop                                           ; $5AF9: $00
    nop                                           ; $5AFA: $00
    nop                                           ; $5AFB: $00
    nop                                           ; $5AFC: $00
    nop                                           ; $5AFD: $00
    nop                                           ; $5AFE: $00
    nop                                           ; $5AFF: $00
    rlca                                          ; $5B00: $07
    nop                                           ; $5B01: $00
    ld [$1F07], sp                                ; $5B02: $08 $07 $1F
    rlca                                          ; $5B05: $07
    ccf                                           ; $5B06: $3F
    rlca                                          ; $5B07: $07
    ld a, a                                       ; $5B08: $7F
    inc b                                         ; $5B09: $04
    adc a                                         ; $5B0A: $8F
    dec b                                         ; $5B0B: $05
    rrca                                          ; $5B0C: $0F
    dec b                                         ; $5B0D: $05
    ld c, $05                                     ; $5B0E: $0E $05
    rrca                                          ; $5B10: $0F
    ld b, $07                                     ; $5B11: $06 $07
    nop                                           ; $5B13: $00
    ld b, $00                                     ; $5B14: $06 $00
    ld a, [bc]                                    ; $5B16: $0A
    inc b                                         ; $5B17: $04
    rrca                                          ; $5B18: $0F
    inc b                                         ; $5B19: $04
    inc c                                         ; $5B1A: $0C
    inc bc                                        ; $5B1B: $03
    dec de                                        ; $5B1C: $1B
    rlca                                          ; $5B1D: $07
    ccf                                           ; $5B1E: $3F
    rlca                                          ; $5B1F: $07
    ret nz                                        ; $5B20: $C0

    nop                                           ; $5B21: $00
    jr c, jr_00F_5AE4                             ; $5B22: $38 $C0

    add [hl]                                      ; $5B24: $86
    ld hl, sp-$07                                 ; $5B25: $F8 $F9
    cp $FF                                        ; $5B27: $FE $FF
    ld a, [hl]                                    ; $5B29: $7E
    cp $9C                                        ; $5B2A: $FE $9C
    cp l                                          ; $5B2C: $BD
    ldh [c], a                                    ; $5B2D: $E2
    cp $E7                                        ; $5B2E: $FE $E7
    rst RST_38                                    ; $5B30: $FF
    sub a                                         ; $5B31: $97
    rst RST_38                                    ; $5B32: $FF
    ld a, e                                       ; $5B33: $7B
    ld a, a                                       ; $5B34: $7F
    dec a                                         ; $5B35: $3D
    rst RST_38                                    ; $5B36: $FF
    ld a, $FF                                     ; $5B37: $3E $FF
    inc e                                         ; $5B39: $1C
    db $FD                                        ; $5B3A: $FD
    jp c, $DAFF                                   ; $5B3B: $DA $FF $DA

    cp $C9                                        ; $5B3E: $FE $C9
    ld a, a                                       ; $5B40: $7F
    ld bc, $057F                                  ; $5B41: $01 $7F $05
    sbc a                                         ; $5B44: $9F
    add hl, bc                                    ; $5B45: $09
    dec bc                                        ; $5B46: $0B
    rlca                                          ; $5B47: $07
    inc b                                         ; $5B48: $04
    inc bc                                        ; $5B49: $03
    rrca                                          ; $5B4A: $0F
    nop                                           ; $5B4B: $00
    rrca                                          ; $5B4C: $0F
    nop                                           ; $5B4D: $00
    stop                                          ; $5B4E: $10 $00
    nop                                           ; $5B50: $00
    nop                                           ; $5B51: $00
    nop                                           ; $5B52: $00
    nop                                           ; $5B53: $00
    nop                                           ; $5B54: $00
    nop                                           ; $5B55: $00
    nop                                           ; $5B56: $00
    nop                                           ; $5B57: $00
    nop                                           ; $5B58: $00
    nop                                           ; $5B59: $00
    nop                                           ; $5B5A: $00
    nop                                           ; $5B5B: $00
    nop                                           ; $5B5C: $00
    nop                                           ; $5B5D: $00
    nop                                           ; $5B5E: $00
    nop                                           ; $5B5F: $00
    db $FD                                        ; $5B60: $FD
    ld c, e                                       ; $5B61: $4B
    rst RST_38                                    ; $5B62: $FF
    ld c, e                                       ; $5B63: $4B
    rst RST_38                                    ; $5B64: $FF
    adc b                                         ; $5B65: $88
    rst RST_38                                    ; $5B66: $FF
    jp nz, $D4EF                                  ; $5B67: $C2 $EF $D4

    ld [hl], l                                    ; $5B6A: $75
    db $EB                                        ; $5B6B: $EB
    ld a, [$3725]                                 ; $5B6C: $FA $25 $37
    ld [$081E], sp                                ; $5B6F: $08 $1E $08
    ld a, [hl-]                                   ; $5B72: $3A
    inc b                                         ; $5B73: $04
    ld c, [hl]                                    ; $5B74: $4E
    inc [hl]                                      ; $5B75: $34
    cp d                                          ; $5B76: $BA
    ld [hl], h                                    ; $5B77: $74
    cp $44                                        ; $5B78: $FE $44
    ld [hl], h                                    ; $5B7A: $74
    jr jr_00F_5BB5                                ; $5B7B: $18 $38

    nop                                           ; $5B7D: $00
    nop                                           ; $5B7E: $00
    nop                                           ; $5B7F: $00
    add b                                         ; $5B80: $80
    nop                                           ; $5B81: $00
    ld b, b                                       ; $5B82: $40
    add b                                         ; $5B83: $80
    and b                                         ; $5B84: $A0
    ret nz                                        ; $5B85: $C0

    ret nc                                        ; $5B86: $D0

    ldh [$FFF0], a                                ; $5B87: $E0 $F0
    ldh [$FFF8], a                                ; $5B89: $E0 $F8

jr_00F_5B8B:
    ld b, b                                       ; $5B8B: $40
    ret z                                         ; $5B8C: $C8

    jr nc, jr_00F_5B8B                            ; $5B8D: $30 $FC

    db $10                                        ; $5B8F: $10
    ld a, h                                       ; $5B90: $7C
    ldh [$FFFC], a                                ; $5B91: $E0 $FC
    ld hl, sp-$02                                 ; $5B93: $F8 $FE
    db $FC                                        ; $5B95: $FC
    cp $BC                                        ; $5B96: $FE $BC
    cp $BC                                        ; $5B98: $FE $BC
    cp $DC                                        ; $5B9A: $FE $DC
    cp $E0                                        ; $5B9C: $FE $E0
    ld a, c                                       ; $5B9E: $79
    or $BF                                        ; $5B9F: $F6 $BF
    ld a, d                                       ; $5BA1: $7A
    cp $1D                                        ; $5BA2: $FE $1D
    sbc a                                         ; $5BA4: $9F
    ld h, l                                       ; $5BA5: $65
    ld [hl], a                                    ; $5BA6: $77
    ld [hl+], a                                   ; $5BA7: $22
    ld e, a                                       ; $5BA8: $5F
    ld [hl+], a                                   ; $5BA9: $22
    ld h, $1D                                     ; $5BAA: $26 $1D
    ld e, a                                       ; $5BAC: $5F
    dec a                                         ; $5BAD: $3D
    ld a, a                                       ; $5BAE: $7F
    jr nz, jr_00F_5BE7                            ; $5BAF: $20 $36

    nop                                           ; $5BB1: $00
    nop                                           ; $5BB2: $00
    nop                                           ; $5BB3: $00
    nop                                           ; $5BB4: $00

jr_00F_5BB5:
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
    nop                                           ; $5BBF: $00
    add b                                         ; $5BC0: $80
    nop                                           ; $5BC1: $00
    add b                                         ; $5BC2: $80
    nop                                           ; $5BC3: $00
    ld b, b                                       ; $5BC4: $40
    add b                                         ; $5BC5: $80
    ret nz                                        ; $5BC6: $C0

    add b                                         ; $5BC7: $80
    and b                                         ; $5BC8: $A0
    ld b, b                                       ; $5BC9: $40
    ldh [rLCDC], a                                ; $5BCA: $E0 $40
    ld h, b                                       ; $5BCC: $60
    nop                                           ; $5BCD: $00
    nop                                           ; $5BCE: $00
    nop                                           ; $5BCF: $00
    nop                                           ; $5BD0: $00
    nop                                           ; $5BD1: $00
    nop                                           ; $5BD2: $00
    nop                                           ; $5BD3: $00
    nop                                           ; $5BD4: $00
    nop                                           ; $5BD5: $00
    nop                                           ; $5BD6: $00
    nop                                           ; $5BD7: $00
    nop                                           ; $5BD8: $00
    nop                                           ; $5BD9: $00
    nop                                           ; $5BDA: $00
    nop                                           ; $5BDB: $00
    nop                                           ; $5BDC: $00
    nop                                           ; $5BDD: $00
    nop                                           ; $5BDE: $00
    nop                                           ; $5BDF: $00
    rra                                           ; $5BE0: $1F
    nop                                           ; $5BE1: $00
    ld h, e                                       ; $5BE2: $63
    ld e, $DF                                     ; $5BE3: $1E $DF
    ld a, a                                       ; $5BE5: $7F
    rst RST_38                                    ; $5BE6: $FF

jr_00F_5BE7:
    inc c                                         ; $5BE7: $0C
    inc c                                         ; $5BE8: $0C
    nop                                           ; $5BE9: $00
    nop                                           ; $5BEA: $00
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
    nop                                           ; $5BFD: $00
    nop                                           ; $5BFE: $00
    nop                                           ; $5BFF: $00
    nop                                           ; $5C00: $00
    nop                                           ; $5C01: $00
    nop                                           ; $5C02: $00
    nop                                           ; $5C03: $00
    nop                                           ; $5C04: $00
    nop                                           ; $5C05: $00
    nop                                           ; $5C06: $00
    nop                                           ; $5C07: $00
    nop                                           ; $5C08: $00
    nop                                           ; $5C09: $00
    nop                                           ; $5C0A: $00
    nop                                           ; $5C0B: $00
    nop                                           ; $5C0C: $00
    nop                                           ; $5C0D: $00
    nop                                           ; $5C0E: $00
    nop                                           ; $5C0F: $00
    nop                                           ; $5C10: $00
    nop                                           ; $5C11: $00
    nop                                           ; $5C12: $00
    nop                                           ; $5C13: $00
    ld bc, $0200                                  ; $5C14: $01 $00 $02
    ld bc, $000F                                  ; $5C17: $01 $0F $00
    ldh a, [rIF]                                  ; $5C1A: $F0 $0F
    rst RST_38                                    ; $5C1C: $FF
    rst RST_38                                    ; $5C1D: $FF
    rst RST_38                                    ; $5C1E: $FF
    nop                                           ; $5C1F: $00
    nop                                           ; $5C20: $00
    nop                                           ; $5C21: $00
    nop                                           ; $5C22: $00
    nop                                           ; $5C23: $00
    nop                                           ; $5C24: $00
    nop                                           ; $5C25: $00
    nop                                           ; $5C26: $00
    nop                                           ; $5C27: $00
    nop                                           ; $5C28: $00
    nop                                           ; $5C29: $00

jr_00F_5C2A:
    nop                                           ; $5C2A: $00
    nop                                           ; $5C2B: $00
    nop                                           ; $5C2C: $00
    nop                                           ; $5C2D: $00
    nop                                           ; $5C2E: $00
    nop                                           ; $5C2F: $00
    ld b, $00                                     ; $5C30: $06 $00
    ld a, [hl+]                                   ; $5C32: $2A
    inc b                                         ; $5C33: $04
    ld d, [hl]                                    ; $5C34: $56
    inc l                                         ; $5C35: $2C
    rst RST_38                                    ; $5C36: $FF
    jr nz, @+$01                                  ; $5C37: $20 $FF

    ld e, $7F                                     ; $5C39: $1E $7F
    cp $FF                                        ; $5C3B: $FE $FF
    cp $FF                                        ; $5C3D: $FE $FF
    nop                                           ; $5C3F: $00
    ld l, e                                       ; $5C40: $6B
    rla                                           ; $5C41: $17
    ld e, a                                       ; $5C42: $5F
    cpl                                           ; $5C43: $2F
    halt                                          ; $5C44: $76
    cpl                                           ; $5C45: $2F
    ld a, a                                       ; $5C46: $7F
    rrca                                          ; $5C47: $0F
    dec hl                                        ; $5C48: $2B
    ld d, $FB                                     ; $5C49: $16 $FB
    ld b, $6B                                     ; $5C4B: $06 $6B
    sub [hl]                                      ; $5C4D: $96
    ld a, a                                       ; $5C4E: $7F
    add [hl]                                      ; $5C4F: $86
    and $19                                       ; $5C50: $E6 $19
    jr nc, @+$11                                  ; $5C52: $30 $0F

    ld e, a                                       ; $5C54: $5F
    jr nz, jr_00F_5CCC                            ; $5C55: $20 $75

    ld l, $5F                                     ; $5C57: $2E $5F
    add hl, hl                                    ; $5C59: $29
    ld l, [hl]                                    ; $5C5A: $6E
    ld sp, $003F                                  ; $5C5B: $31 $3F $00
    ld bc, $F800                                  ; $5C5E: $01 $00 $F8
    ld h, b                                       ; $5C61: $60
    ld hl, sp-$50                                 ; $5C62: $F8 $B0
    ld a, b                                       ; $5C64: $78
    or b                                          ; $5C65: $B0
    ld hl, sp+$30                                 ; $5C66: $F8 $30
    jr nc, jr_00F_5C2A                            ; $5C68: $30 $C0

    rst RST_28                                    ; $5C6A: $EF
    nop                                           ; $5C6B: $00
    ccf                                           ; $5C6C: $3F
    add $EF                                       ; $5C6D: $C6 $EF
    rla                                           ; $5C6F: $17
    ld l, $D7                                     ; $5C70: $2E $D7
    cp $07                                        ; $5C72: $FE $07
    rst RST_38                                    ; $5C74: $FF
    jp $C03F                                      ; $5C75: $C3 $3F $C0


    db $FD                                        ; $5C78: $FD
    ld h, d                                       ; $5C79: $62
    rst RST_08                                    ; $5C7A: $CF
    dec [hl]                                      ; $5C7B: $35
    rst RST_30                                    ; $5C7C: $F7
    sbc b                                         ; $5C7D: $98
    sbc e                                         ; $5C7E: $9B
    nop                                           ; $5C7F: $00
    add b                                         ; $5C80: $80
    nop                                           ; $5C81: $00
    ld b, b                                       ; $5C82: $40
    add b                                         ; $5C83: $80
    ret nc                                        ; $5C84: $D0

    add b                                         ; $5C85: $80
    add sp, $50                                   ; $5C86: $E8 $50
    ld hl, sp-$70                                 ; $5C88: $F8 $90
    ld a, h                                       ; $5C8A: $7C
    ret nz                                        ; $5C8B: $C0

    ld a, [hl-]                                   ; $5C8C: $3A
    db $F4                                        ; $5C8D: $F4
    adc $F8                                       ; $5C8E: $CE $F8
    rst RST_38                                    ; $5C90: $FF
    ld c, $EF                                     ; $5C91: $0E $EF
    ld bc, $8071                                  ; $5C93: $01 $71 $80
    ldh a, [rLCDC]                                ; $5C96: $F0 $40
    ld h, b                                       ; $5C98: $60
    nop                                           ; $5C99: $00
    nop                                           ; $5C9A: $00
    nop                                           ; $5C9B: $00
    nop                                           ; $5C9C: $00
    nop                                           ; $5C9D: $00
    nop                                           ; $5C9E: $00
    nop                                           ; $5C9F: $00
    ld hl, sp+$00                                 ; $5CA0: $F8 $00
    and $78                                       ; $5CA2: $E6 $78
    rst RST_38                                    ; $5CA4: $FF
    ld l, [hl]                                    ; $5CA5: $6E
    ld a, a                                       ; $5CA6: $7F
    db $10                                        ; $5CA7: $10
    jr jr_00F_5CAA                                ; $5CA8: $18 $00

jr_00F_5CAA:
    nop                                           ; $5CAA: $00
    nop                                           ; $5CAB: $00
    nop                                           ; $5CAC: $00
    nop                                           ; $5CAD: $00
    nop                                           ; $5CAE: $00
    nop                                           ; $5CAF: $00
    nop                                           ; $5CB0: $00
    nop                                           ; $5CB1: $00
    nop                                           ; $5CB2: $00
    nop                                           ; $5CB3: $00
    nop                                           ; $5CB4: $00
    nop                                           ; $5CB5: $00
    nop                                           ; $5CB6: $00
    nop                                           ; $5CB7: $00
    nop                                           ; $5CB8: $00
    nop                                           ; $5CB9: $00
    nop                                           ; $5CBA: $00
    nop                                           ; $5CBB: $00
    nop                                           ; $5CBC: $00
    nop                                           ; $5CBD: $00
    nop                                           ; $5CBE: $00
    nop                                           ; $5CBF: $00
    nop                                           ; $5CC0: $00
    nop                                           ; $5CC1: $00
    inc bc                                        ; $5CC2: $03
    nop                                           ; $5CC3: $00
    dec b                                         ; $5CC4: $05
    inc bc                                        ; $5CC5: $03
    dec bc                                        ; $5CC6: $0B
    rlca                                          ; $5CC7: $07
    inc de                                        ; $5CC8: $13
    dec c                                         ; $5CC9: $0D
    rla                                           ; $5CCA: $17
    ld a, [bc]                                    ; $5CCB: $0A

jr_00F_5CCC:
    cpl                                           ; $5CCC: $2F
    dec de                                        ; $5CCD: $1B
    ld a, [hl+]                                   ; $5CCE: $2A
    rla                                           ; $5CCF: $17
    ld e, a                                       ; $5CD0: $5F
    scf                                           ; $5CD1: $37
    ld a, a                                       ; $5CD2: $7F
    rla                                           ; $5CD3: $17
    rra                                           ; $5CD4: $1F
    ld [bc], a                                    ; $5CD5: $02
    rrca                                          ; $5CD6: $0F
    inc b                                         ; $5CD7: $04
    rra                                           ; $5CD8: $1F
    dec b                                         ; $5CD9: $05
    dec e                                         ; $5CDA: $1D
    ld a, [bc]                                    ; $5CDB: $0A
    dec a                                         ; $5CDC: $3D
    ld a, [bc]                                    ; $5CDD: $0A
    add hl, hl                                    ; $5CDE: $29
    rla                                           ; $5CDF: $17
    nop                                           ; $5CE0: $00
    nop                                           ; $5CE1: $00
    nop                                           ; $5CE2: $00
    nop                                           ; $5CE3: $00
    add b                                         ; $5CE4: $80
    nop                                           ; $5CE5: $00
    ret nz                                        ; $5CE6: $C0

    add b                                         ; $5CE7: $80
    ldh [$FFC0], a                                ; $5CE8: $E0 $C0
    ldh [$FFC0], a                                ; $5CEA: $E0 $C0
    ldh a, [$FF60]                                ; $5CEC: $F0 $60
    ldh a, [$FF60]                                ; $5CEE: $F0 $60
    ld hl, sp-$50                                 ; $5CF0: $F8 $B0
    ld hl, sp-$60                                 ; $5CF2: $F8 $A0
    ldh [rP1], a                                  ; $5CF4: $E0 $00
    ret nz                                        ; $5CF6: $C0

    add b                                         ; $5CF7: $80
    ldh [$FF80], a                                ; $5CF8: $E0 $80
    ldh [$FFC0], a                                ; $5CFA: $E0 $C0
    ldh a, [$FFC0]                                ; $5CFC: $F0 $C0
    ldh a, [$FF60]                                ; $5CFE: $F0 $60
    rra                                           ; $5D00: $1F
    nop                                           ; $5D01: $00
    ld h, a                                       ; $5D02: $67
    ld e, $FF                                     ; $5D03: $1E $FF
    halt                                          ; $5D05: $76
    cp $08                                        ; $5D06: $FE $08
    jr jr_00F_5D0A                                ; $5D08: $18 $00

jr_00F_5D0A:
    nop                                           ; $5D0A: $00
    nop                                           ; $5D0B: $00
    nop                                           ; $5D0C: $00
    nop                                           ; $5D0D: $00
    nop                                           ; $5D0E: $00
    nop                                           ; $5D0F: $00
    nop                                           ; $5D10: $00
    nop                                           ; $5D11: $00
    nop                                           ; $5D12: $00
    nop                                           ; $5D13: $00
    nop                                           ; $5D14: $00
    nop                                           ; $5D15: $00
    nop                                           ; $5D16: $00
    nop                                           ; $5D17: $00
    nop                                           ; $5D18: $00
    nop                                           ; $5D19: $00
    nop                                           ; $5D1A: $00
    nop                                           ; $5D1B: $00
    nop                                           ; $5D1C: $00
    nop                                           ; $5D1D: $00
    nop                                           ; $5D1E: $00
    nop                                           ; $5D1F: $00
    nop                                           ; $5D20: $00
    nop                                           ; $5D21: $00
    nop                                           ; $5D22: $00
    nop                                           ; $5D23: $00
    nop                                           ; $5D24: $00
    nop                                           ; $5D25: $00
    nop                                           ; $5D26: $00
    nop                                           ; $5D27: $00
    nop                                           ; $5D28: $00
    nop                                           ; $5D29: $00
    nop                                           ; $5D2A: $00
    nop                                           ; $5D2B: $00
    inc bc                                        ; $5D2C: $03
    nop                                           ; $5D2D: $00
    dec b                                         ; $5D2E: $05
    ld [bc], a                                    ; $5D2F: $02
    rlca                                          ; $5D30: $07
    ld [bc], a                                    ; $5D31: $02
    rrca                                          ; $5D32: $0F

jr_00F_5D33:
    ld bc, $0B16                                  ; $5D33: $01 $16 $0B
    dec a                                         ; $5D36: $3D
    ld b, $59                                     ; $5D37: $06 $59
    ld l, $EF                                     ; $5D39: $2E $EF
    inc e                                         ; $5D3B: $1C
    db $FC                                        ; $5D3C: $FC
    ldh [$FFE0], a                                ; $5D3D: $E0 $E0
    nop                                           ; $5D3F: $00
    dec h                                         ; $5D40: $25
    dec de                                        ; $5D41: $1B
    dec hl                                        ; $5D42: $2B
    rla                                           ; $5D43: $17
    ld a, e                                       ; $5D44: $7B
    scf                                           ; $5D45: $37
    ld [hl], a                                    ; $5D46: $77
    cpl                                           ; $5D47: $2F
    ld a, a                                       ; $5D48: $7F
    rlca                                          ; $5D49: $07
    push de                                       ; $5D4A: $D5
    dec bc                                        ; $5D4B: $0B
    db $FD                                        ; $5D4C: $FD
    jp $8BF5                                      ; $5D4D: $C3 $F5 $8B


    db $DB                                        ; $5D50: $DB
    ld h, h                                       ; $5D51: $64
    ld a, h                                       ; $5D52: $7C
    sub e                                         ; $5D53: $93
    db $F4                                        ; $5D54: $F4
    adc e                                         ; $5D55: $8B
    cp a                                          ; $5D56: $BF
    ld h, b                                       ; $5D57: $60
    ld l, h                                       ; $5D58: $6C
    db $10                                        ; $5D59: $10
    ld e, $08                                     ; $5D5A: $1E $08
    ld [hl], $18                                  ; $5D5C: $36 $18
    inc a                                         ; $5D5E: $3C
    nop                                           ; $5D5F: $00
    cp $DC                                        ; $5D60: $FE $DC
    cp $DC                                        ; $5D62: $FE $DC
    sbc a                                         ; $5D64: $9F
    xor $FF                                       ; $5D65: $EE $FF
    adc [hl]                                      ; $5D67: $8E
    sbc a                                         ; $5D68: $9F
    ld h, b                                       ; $5D69: $60
    rst RST_38                                    ; $5D6A: $FF
    inc bc                                        ; $5D6B: $03
    sub a                                         ; $5D6C: $97
    ld l, e                                       ; $5D6D: $6B
    ld a, a                                       ; $5D6E: $7F
    add e                                         ; $5D6F: $83
    ld [hl], a                                    ; $5D70: $77
    sbc e                                         ; $5D71: $9B
    rst RST_18                                    ; $5D72: $DF
    ld h, l                                       ; $5D73: $65
    ei                                            ; $5D74: $FB

jr_00F_5D75:
    inc b                                         ; $5D75: $04
    ld l, [hl]                                    ; $5D76: $6E
    jr jr_00F_5D75                                ; $5D77: $18 $FC

    jr nz, jr_00F_5D33                            ; $5D79: $20 $B8

    ld b, b                                       ; $5D7B: $40
    ld l, h                                       ; $5D7C: $6C
    jr c, jr_00F_5DBB                             ; $5D7D: $38 $3C

    nop                                           ; $5D7F: $00
    ld b, b                                       ; $5D80: $40
    nop                                           ; $5D81: $00
    and b                                         ; $5D82: $A0
    ld b, b                                       ; $5D83: $40
    add sp, $40                                   ; $5D84: $E8 $40
    db $F4                                        ; $5D86: $F4
    xor b                                         ; $5D87: $A8
    ld a, h                                       ; $5D88: $7C
    ret z                                         ; $5D89: $C8

    ld a, $E0                                     ; $5D8A: $3E $E0
    sbc l                                         ; $5D8C: $9D
    ld a, [$7CE7]                                 ; $5D8D: $FA $E7 $7C
    ld a, a                                       ; $5D90: $7F
    rlca                                          ; $5D91: $07
    rlca                                          ; $5D92: $07
    nop                                           ; $5D93: $00
    nop                                           ; $5D94: $00
    nop                                           ; $5D95: $00
    nop                                           ; $5D96: $00
    nop                                           ; $5D97: $00
    nop                                           ; $5D98: $00
    nop                                           ; $5D99: $00
    nop                                           ; $5D9A: $00
    nop                                           ; $5D9B: $00
    nop                                           ; $5D9C: $00
    nop                                           ; $5D9D: $00
    nop                                           ; $5D9E: $00
    nop                                           ; $5D9F: $00
    db $FC                                        ; $5DA0: $FC
    nop                                           ; $5DA1: $00
    di                                            ; $5DA2: $F3
    cp h                                          ; $5DA3: $BC
    rst RST_38                                    ; $5DA4: $FF
    scf                                           ; $5DA5: $37
    ccf                                           ; $5DA6: $3F
    ld [$000C], sp                                ; $5DA7: $08 $0C $00
    nop                                           ; $5DAA: $00
    nop                                           ; $5DAB: $00
    nop                                           ; $5DAC: $00
    nop                                           ; $5DAD: $00
    nop                                           ; $5DAE: $00
    nop                                           ; $5DAF: $00
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

jr_00F_5DBB:
    nop                                           ; $5DBB: $00
    nop                                           ; $5DBC: $00
    nop                                           ; $5DBD: $00
    nop                                           ; $5DBE: $00
    nop                                           ; $5DBF: $00
    nop                                           ; $5DC0: $00
    nop                                           ; $5DC1: $00
    nop                                           ; $5DC2: $00
    nop                                           ; $5DC3: $00
    nop                                           ; $5DC4: $00
    nop                                           ; $5DC5: $00
    nop                                           ; $5DC6: $00
    nop                                           ; $5DC7: $00
    nop                                           ; $5DC8: $00
    nop                                           ; $5DC9: $00
    nop                                           ; $5DCA: $00
    nop                                           ; $5DCB: $00
    ld bc, $0600                                  ; $5DCC: $01 $00 $06
    ld bc, $0709                                  ; $5DCF: $01 $09 $07
    inc de                                        ; $5DD2: $13
    ld c, $2F                                     ; $5DD3: $0E $2F
    dec e                                         ; $5DD5: $1D
    ld a, a                                       ; $5DD6: $7F
    dec sp                                        ; $5DD7: $3B
    ld a, a                                       ; $5DD8: $7F
    ld bc, $060F                                  ; $5DD9: $01 $0F $06
    rla                                           ; $5DDC: $17
    ld c, $16                                     ; $5DDD: $0E $16
    dec c                                         ; $5DDF: $0D
    nop                                           ; $5DE0: $00
    nop                                           ; $5DE1: $00
    nop                                           ; $5DE2: $00
    nop                                           ; $5DE3: $00
    nop                                           ; $5DE4: $00
    nop                                           ; $5DE5: $00
    nop                                           ; $5DE6: $00
    nop                                           ; $5DE7: $00
    nop                                           ; $5DE8: $00
    nop                                           ; $5DE9: $00
    add b                                         ; $5DEA: $80
    nop                                           ; $5DEB: $00
    ldh [$FF80], a                                ; $5DEC: $E0 $80
    ldh a, [$FFE0]                                ; $5DEE: $F0 $E0
    ld hl, sp-$10                                 ; $5DF0: $F8 $F0
    db $FC                                        ; $5DF2: $FC
    ld a, b                                       ; $5DF3: $78
    cp $DC                                        ; $5DF4: $FE $DC
    cp $00                                        ; $5DF6: $FE $00
    ldh a, [$FF60]                                ; $5DF8: $F0 $60
    ld hl, sp-$10                                 ; $5DFA: $F8 $F0
    db $FC                                        ; $5DFC: $FC
    ld a, b                                       ; $5DFD: $78
    db $FC                                        ; $5DFE: $FC
    cp b                                          ; $5DFF: $B8
    nop                                           ; $5E00: $00
    nop                                           ; $5E01: $00
    nop                                           ; $5E02: $00
    nop                                           ; $5E03: $00
    nop                                           ; $5E04: $00
    nop                                           ; $5E05: $00
    nop                                           ; $5E06: $00
    nop                                           ; $5E07: $00
    nop                                           ; $5E08: $00
    nop                                           ; $5E09: $00
    ld bc, $0300                                  ; $5E0A: $01 $00 $03
    ld bc, $0102                                  ; $5E0D: $01 $02 $01
    rlca                                          ; $5E10: $07
    ld [bc], a                                    ; $5E11: $02
    ld b, $01                                     ; $5E12: $06 $01
    dec sp                                        ; $5E14: $3B
    inc b                                         ; $5E15: $04
    cpl                                           ; $5E16: $2F
    db $10                                        ; $5E17: $10
    inc de                                        ; $5E18: $13
    inc c                                         ; $5E19: $0C
    ld hl, sp+$07                                 ; $5E1A: $F8 $07
    add b                                         ; $5E1C: $80
    ld a, a                                       ; $5E1D: $7F
    ld h, c                                       ; $5E1E: $61
    rra                                           ; $5E1F: $1F
    ld bc, $0100                                  ; $5E20: $01 $00 $01
    nop                                           ; $5E23: $00
    ld [bc], a                                    ; $5E24: $02
    ld bc, $0102                                  ; $5E25: $01 $02 $01
    dec b                                         ; $5E28: $05
    inc bc                                        ; $5E29: $03

jr_00F_5E2A:
    add l                                         ; $5E2A: $85
    inc bc                                        ; $5E2B: $03
    ld b, e                                       ; $5E2C: $43
    add b                                         ; $5E2D: $80
    rst RST_20                                    ; $5E2E: $E7
    ld b, c                                       ; $5E2F: $41
    and l                                         ; $5E30: $A5
    ld b, e                                       ; $5E31: $43
    push hl                                       ; $5E32: $E5
    ld b, e                                       ; $5E33: $43
    ld l, e                                       ; $5E34: $6B
    add a                                         ; $5E35: $87
    dec hl                                        ; $5E36: $2B
    rst RST_00                                    ; $5E37: $C7
    sub a                                         ; $5E38: $97
    ld l, a                                       ; $5E39: $6F
    sbc a                                         ; $5E3A: $9F
    halt                                          ; $5E3B: $76
    rrca                                          ; $5E3C: $0F
    ld a, [$FC8F]                                 ; $5E3D: $FA $8F $FC
    ld b, b                                       ; $5E40: $40
    nop                                           ; $5E41: $00
    ldh [rLCDC], a                                ; $5E42: $E0 $40
    ldh a, [$FF60]                                ; $5E44: $F0 $60
    ld [hl], b                                    ; $5E46: $70
    ldh [$FFF8], a                                ; $5E47: $E0 $F8
    ld [hl], b                                    ; $5E49: $70
    ld hl, sp+$70                                 ; $5E4A: $F8 $70
    db $FC                                        ; $5E4C: $FC
    cp b                                          ; $5E4D: $B8
    db $FC                                        ; $5E4E: $FC
    cp b                                          ; $5E4F: $B8
    cp $DC                                        ; $5E50: $FE $DC
    cp $1C                                        ; $5E52: $FE $1C
    db $FC                                        ; $5E54: $FC
    and b                                         ; $5E55: $A0
    ld hl, sp-$50                                 ; $5E56: $F8 $B0
    ld hl, sp+$70                                 ; $5E58: $F8 $70
    ld hl, sp+$70                                 ; $5E5A: $F8 $70
    ld hl, sp+$70                                 ; $5E5C: $F8 $70
    ld hl, sp+$70                                 ; $5E5E: $F8 $70
    ldh a, [$FFE0]                                ; $5E60: $F0 $E0
    ldh a, [$FFE0]                                ; $5E62: $F0 $E0
    ldh a, [$FFE0]                                ; $5E64: $F0 $E0
    ldh a, [rNR41]                                ; $5E66: $F0 $20
    jr nz, jr_00F_5E2A                            ; $5E68: $20 $C0

    ldh [rP1], a                                  ; $5E6A: $E0 $00
    ret nc                                        ; $5E6C: $D0

    and b                                         ; $5E6D: $A0
    ldh a, [$FFC0]                                ; $5E6E: $F0 $C0
    ldh a, [$FFE0]                                ; $5E70: $F0 $E0
    ld hl, sp-$10                                 ; $5E72: $F8 $F0
    db $FC                                        ; $5E74: $FC
    jr c, @+$40                                   ; $5E75: $38 $3E

    inc c                                         ; $5E77: $0C
    rrca                                          ; $5E78: $0F
    ld [bc], a                                    ; $5E79: $02
    inc bc                                        ; $5E7A: $03
    nop                                           ; $5E7B: $00
    nop                                           ; $5E7C: $00
    nop                                           ; $5E7D: $00
    nop                                           ; $5E7E: $00
    nop                                           ; $5E7F: $00
    ccf                                           ; $5E80: $3F
    db $ED                                        ; $5E81: $ED
    rra                                           ; $5E82: $1F
    push af                                       ; $5E83: $F5
    rra                                           ; $5E84: $1F
    ld sp, hl                                     ; $5E85: $F9
    rst RST_28                                    ; $5E86: $EF
    db $FC                                        ; $5E87: $FC
    rst RST_38                                    ; $5E88: $FF
    cp $7F                                        ; $5E89: $FE $7F
    rst RST_38                                    ; $5E8B: $FF
    rst RST_38                                    ; $5E8C: $FF
    ccf                                           ; $5E8D: $3F
    ccf                                           ; $5E8E: $3F
    rst RST_08                                    ; $5E8F: $CF
    adc a                                         ; $5E90: $8F
    ld [hl], e                                    ; $5E91: $73
    adc a                                         ; $5E92: $8F
    ld [hl], b                                    ; $5E93: $70
    rst RST_38                                    ; $5E94: $FF
    rrca                                          ; $5E95: $0F
    db $DB                                        ; $5E96: $DB
    halt                                          ; $5E97: $76
    halt                                          ; $5E98: $76
    adc h                                         ; $5E99: $8C
    call c, $F030                                 ; $5E9A: $DC $30 $F0
    ld b, b                                       ; $5E9D: $40
    ret nz                                        ; $5E9E: $C0

    nop                                           ; $5E9F: $00
    ld sp, $5C0F                                  ; $5EA0: $31 $0F $5C
    inc hl                                        ; $5EA3: $23
    rst RST_38                                    ; $5EA4: $FF
    ld b, b                                       ; $5EA5: $40
    rst RST_38                                    ; $5EA6: $FF
    ld [bc], a                                    ; $5EA7: $02
    ld a, e                                       ; $5EA8: $7B
    inc b                                         ; $5EA9: $04
    ld l, [hl]                                    ; $5EAA: $6E
    dec b                                         ; $5EAB: $05
    dec d                                         ; $5EAC: $15
    ld [$103B], sp                                ; $5EAD: $08 $3B $10
    ccf                                           ; $5EB0: $3F
    nop                                           ; $5EB1: $00
    rra                                           ; $5EB2: $1F
    ld bc, $0003                                  ; $5EB3: $01 $03 $00
    nop                                           ; $5EB6: $00
    nop                                           ; $5EB7: $00
    nop                                           ; $5EB8: $00
    nop                                           ; $5EB9: $00
    nop                                           ; $5EBA: $00
    nop                                           ; $5EBB: $00
    nop                                           ; $5EBC: $00
    nop                                           ; $5EBD: $00
    nop                                           ; $5EBE: $00
    nop                                           ; $5EBF: $00
    jr jr_00F_5EC2                                ; $5EC0: $18 $00

jr_00F_5EC2:
    inc [hl]                                      ; $5EC2: $34
    jr @+$01                                      ; $5EC3: $18 $FF

    nop                                           ; $5EC5: $00
    push de                                       ; $5EC6: $D5
    ld a, [hl]                                    ; $5EC7: $7E
    ld a, a                                       ; $5EC8: $7F
    nop                                           ; $5EC9: $00
    ld a, [de]                                    ; $5ECA: $1A
    rrca                                          ; $5ECB: $0F
    rrca                                          ; $5ECC: $0F
    nop                                           ; $5ECD: $00
    nop                                           ; $5ECE: $00
    nop                                           ; $5ECF: $00
    nop                                           ; $5ED0: $00
    nop                                           ; $5ED1: $00
    nop                                           ; $5ED2: $00
    nop                                           ; $5ED3: $00
    nop                                           ; $5ED4: $00
    nop                                           ; $5ED5: $00
    nop                                           ; $5ED6: $00
    nop                                           ; $5ED7: $00
    nop                                           ; $5ED8: $00
    nop                                           ; $5ED9: $00
    nop                                           ; $5EDA: $00
    nop                                           ; $5EDB: $00
    nop                                           ; $5EDC: $00
    nop                                           ; $5EDD: $00
    nop                                           ; $5EDE: $00
    nop                                           ; $5EDF: $00
    inc a                                         ; $5EE0: $3C
    nop                                           ; $5EE1: $00
    ld l, d                                       ; $5EE2: $6A

jr_00F_5EE3:
    inc a                                         ; $5EE3: $3C
    cp a                                          ; $5EE4: $BF
    ld b, d                                       ; $5EE5: $42
    sub $BD                                       ; $5EE6: $D6 $BD
    rst RST_38                                    ; $5EE8: $FF
    nop                                           ; $5EE9: $00
    xor e                                         ; $5EEA: $AB
    cp $FF                                        ; $5EEB: $FE $FF
    nop                                           ; $5EED: $00
    nop                                           ; $5EEE: $00
    nop                                           ; $5EEF: $00
    nop                                           ; $5EF0: $00
    nop                                           ; $5EF1: $00
    nop                                           ; $5EF2: $00
    nop                                           ; $5EF3: $00
    nop                                           ; $5EF4: $00
    nop                                           ; $5EF5: $00
    nop                                           ; $5EF6: $00
    nop                                           ; $5EF7: $00
    nop                                           ; $5EF8: $00
    nop                                           ; $5EF9: $00
    nop                                           ; $5EFA: $00
    nop                                           ; $5EFB: $00
    nop                                           ; $5EFC: $00
    nop                                           ; $5EFD: $00
    nop                                           ; $5EFE: $00
    nop                                           ; $5EFF: $00
    dec b                                         ; $5F00: $05
    inc bc                                        ; $5F01: $03
    dec bc                                        ; $5F02: $0B
    rlca                                          ; $5F03: $07
    dec bc                                        ; $5F04: $0B
    rlca                                          ; $5F05: $07
    rla                                           ; $5F06: $17
    rrca                                          ; $5F07: $0F
    rla                                           ; $5F08: $17
    rrca                                          ; $5F09: $0F
    rra                                           ; $5F0A: $1F
    rrca                                          ; $5F0B: $0F
    ccf                                           ; $5F0C: $3F
    ld e, $3E                                     ; $5F0D: $1E $3E
    dec c                                         ; $5F0F: $0D
    ccf                                           ; $5F10: $3F
    inc c                                         ; $5F11: $0C
    ld a, $0D                                     ; $5F12: $3E $0D
    ld e, a                                       ; $5F14: $5F
    jr z, jr_00F_5EE3                             ; $5F15: $28 $CC

    inc sp                                        ; $5F17: $33
    rst RST_20                                    ; $5F18: $E7
    ld e, b                                       ; $5F19: $58
    ld a, [$AF07]                                 ; $5F1A: $FA $07 $AF
    ld hl, sp-$02                                 ; $5F1D: $F8 $FE
    nop                                           ; $5F1F: $00
    ldh a, [$FF60]                                ; $5F20: $F0 $60
    ldh a, [$FF60]                                ; $5F22: $F0 $60
    ldh a, [$FF60]                                ; $5F24: $F0 $60
    ld hl, sp-$50                                 ; $5F26: $F8 $B0
    ld hl, sp-$50                                 ; $5F28: $F8 $B0
    ei                                            ; $5F2A: $FB
    or b                                          ; $5F2B: $B0
    cp $21                                        ; $5F2C: $FE $21
    ld a, a                                       ; $5F2E: $7F
    adc l                                         ; $5F2F: $8D
    rst RST_18                                    ; $5F30: $DF
    ld l, $5D                                     ; $5F31: $2E $5D
    xor a                                         ; $5F33: $AF
    db $FC                                        ; $5F34: $FC
    rrca                                          ; $5F35: $0F
    ld e, $E7                                     ; $5F36: $1E $E7
    rst RST_28                                    ; $5F38: $EF
    ld de, $E2BD                                  ; $5F39: $11 $BD $E2
    ldh [c], a                                    ; $5F3C: $E2
    inc e                                         ; $5F3D: $1C
    ld a, h                                       ; $5F3E: $7C
    nop                                           ; $5F3F: $00
    add b                                         ; $5F40: $80
    nop                                           ; $5F41: $00
    and b                                         ; $5F42: $A0
    nop                                           ; $5F43: $00
    ret nc                                        ; $5F44: $D0

    and b                                         ; $5F45: $A0
    ld hl, sp+$20                                 ; $5F46: $F8 $20
    db $FC                                        ; $5F48: $FC
    adc b                                         ; $5F49: $88
    ld a, h                                       ; $5F4A: $7C
    ldh [$FF9F], a                                ; $5F4B: $E0 $9F
    db $FC                                        ; $5F4D: $FC
    rst RST_38                                    ; $5F4E: $FF
    rrca                                          ; $5F4F: $0F
    rrca                                          ; $5F50: $0F
    nop                                           ; $5F51: $00
    nop                                           ; $5F52: $00
    nop                                           ; $5F53: $00
    nop                                           ; $5F54: $00
    nop                                           ; $5F55: $00
    nop                                           ; $5F56: $00
    nop                                           ; $5F57: $00
    nop                                           ; $5F58: $00
    nop                                           ; $5F59: $00
    nop                                           ; $5F5A: $00
    nop                                           ; $5F5B: $00
    nop                                           ; $5F5C: $00
    nop                                           ; $5F5D: $00
    nop                                           ; $5F5E: $00
    nop                                           ; $5F5F: $00
    inc a                                         ; $5F60: $3C
    nop                                           ; $5F61: $00
    di                                            ; $5F62: $F3
    inc a                                         ; $5F63: $3C
    rst RST_38                                    ; $5F64: $FF
    or a                                          ; $5F65: $B7
    rst RST_38                                    ; $5F66: $FF
    ld [$000C], sp                                ; $5F67: $08 $0C $00
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
    nop                                           ; $5F80: $00
    nop                                           ; $5F81: $00
    nop                                           ; $5F82: $00
    nop                                           ; $5F83: $00
    nop                                           ; $5F84: $00
    nop                                           ; $5F85: $00
    nop                                           ; $5F86: $00
    nop                                           ; $5F87: $00
    nop                                           ; $5F88: $00
    nop                                           ; $5F89: $00
    nop                                           ; $5F8A: $00
    nop                                           ; $5F8B: $00
    nop                                           ; $5F8C: $00
    nop                                           ; $5F8D: $00
    nop                                           ; $5F8E: $00
    nop                                           ; $5F8F: $00
    nop                                           ; $5F90: $00
    nop                                           ; $5F91: $00
    nop                                           ; $5F92: $00
    nop                                           ; $5F93: $00
    nop                                           ; $5F94: $00
    nop                                           ; $5F95: $00
    nop                                           ; $5F96: $00
    nop                                           ; $5F97: $00
    nop                                           ; $5F98: $00
    nop                                           ; $5F99: $00
    nop                                           ; $5F9A: $00
    nop                                           ; $5F9B: $00
    add b                                         ; $5F9C: $80
    nop                                           ; $5F9D: $00
    add b                                         ; $5F9E: $80
    nop                                           ; $5F9F: $00
    nop                                           ; $5FA0: $00
    nop                                           ; $5FA1: $00
    nop                                           ; $5FA2: $00
    nop                                           ; $5FA3: $00
    nop                                           ; $5FA4: $00
    nop                                           ; $5FA5: $00
    nop                                           ; $5FA6: $00
    nop                                           ; $5FA7: $00
    nop                                           ; $5FA8: $00
    nop                                           ; $5FA9: $00
    ld [$1C00], sp                                ; $5FAA: $08 $00 $1C
    ld [$0C1E], sp                                ; $5FAD: $08 $1E $0C
    ld l, $1C                                     ; $5FB0: $2E $1C
    ccf                                           ; $5FB2: $3F
    ld c, $5F                                     ; $5FB3: $0E $5F
    ld l, $5F                                     ; $5FB5: $2E $5F
    scf                                           ; $5FB7: $37
    cp a                                          ; $5FB8: $BF
    ld [hl], a                                    ; $5FB9: $77
    cp a                                          ; $5FBA: $BF
    ld a, e                                       ; $5FBB: $7B
    ld a, a                                       ; $5FBC: $7F
    inc bc                                        ; $5FBD: $03
    ld e, a                                       ; $5FBE: $5F
    inc [hl]                                      ; $5FBF: $34
    nop                                           ; $5FC0: $00
    nop                                           ; $5FC1: $00
    nop                                           ; $5FC2: $00
    nop                                           ; $5FC3: $00
    nop                                           ; $5FC4: $00
    nop                                           ; $5FC5: $00
    nop                                           ; $5FC6: $00
    nop                                           ; $5FC7: $00
    nop                                           ; $5FC8: $00
    nop                                           ; $5FC9: $00
    nop                                           ; $5FCA: $00
    nop                                           ; $5FCB: $00
    nop                                           ; $5FCC: $00
    nop                                           ; $5FCD: $00
    nop                                           ; $5FCE: $00
    nop                                           ; $5FCF: $00
    nop                                           ; $5FD0: $00
    nop                                           ; $5FD1: $00
    nop                                           ; $5FD2: $00
    nop                                           ; $5FD3: $00
    nop                                           ; $5FD4: $00
    nop                                           ; $5FD5: $00
    add b                                         ; $5FD6: $80
    nop                                           ; $5FD7: $00
    add b                                         ; $5FD8: $80
    nop                                           ; $5FD9: $00
    ret nz                                        ; $5FDA: $C0

    add b                                         ; $5FDB: $80
    ret nz                                        ; $5FDC: $C0

    add b                                         ; $5FDD: $80
    ret nz                                        ; $5FDE: $C0

    nop                                           ; $5FDF: $00
    ld bc, $0200                                  ; $5FE0: $01 $00 $02
    ld bc, $0207                                  ; $5FE3: $01 $07 $02
    dec b                                         ; $5FE6: $05
    ld [bc], a                                    ; $5FE7: $02
    ld c, $04                                     ; $5FE8: $0E $04
    dec bc                                        ; $5FEA: $0B
    inc b                                         ; $5FEB: $04
    ld a, a                                       ; $5FEC: $7F
    ld bc, $7ED5                                  ; $5FED: $01 $D5 $7E
    rst RST_38                                    ; $5FF0: $FF
    nop                                           ; $5FF1: $00
    nop                                           ; $5FF2: $00
    nop                                           ; $5FF3: $00
    nop                                           ; $5FF4: $00
    nop                                           ; $5FF5: $00
    nop                                           ; $5FF6: $00
    nop                                           ; $5FF7: $00
    nop                                           ; $5FF8: $00
    nop                                           ; $5FF9: $00
    nop                                           ; $5FFA: $00
    nop                                           ; $5FFB: $00
    nop                                           ; $5FFC: $00
    nop                                           ; $5FFD: $00
    nop                                           ; $5FFE: $00
    nop                                           ; $5FFF: $00
    dec b                                         ; $6000: $05
    inc bc                                        ; $6001: $03
    dec bc                                        ; $6002: $0B
    rlca                                          ; $6003: $07
    dec bc                                        ; $6004: $0B
    rlca                                          ; $6005: $07
    rrca                                          ; $6006: $0F
    rlca                                          ; $6007: $07
    rra                                           ; $6008: $1F
    rrca                                          ; $6009: $0F
    rra                                           ; $600A: $1F
    ld b, $DF                                     ; $600B: $06 $DF
    ld b, $BF                                     ; $600D: $06 $BF
    add $EF                                       ; $600F: $C6 $EF
    ld d, h                                       ; $6011: $54
    and [hl]                                      ; $6012: $A6
    ld e, c                                       ; $6013: $59
    ld [hl], b                                    ; $6014: $70
    cpl                                           ; $6015: $2F
    rst RST_18                                    ; $6016: $DF
    jr nz, jr_00F_6098                            ; $6017: $20 $7F

    jp $03F4                                      ; $6019: $C3 $F4 $03


    push hl                                       ; $601C: $E5
    inc bc                                        ; $601D: $03
    inc bc                                        ; $601E: $03
    nop                                           ; $601F: $00
    ld hl, sp-$50                                 ; $6020: $F8 $B0
    db $FC                                        ; $6022: $FC
    ret c                                         ; $6023: $D8

    rst RST_38                                    ; $6024: $FF
    ret c                                         ; $6025: $D8

    cp $D9                                        ; $6026: $FE $D9
    rst RST_38                                    ; $6028: $FF
    dec e                                         ; $6029: $1D
    ccf                                           ; $602A: $3F
    ret nz                                        ; $602B: $C0

    rst RST_38                                    ; $602C: $FF
    rrca                                          ; $602D: $0F
    inc sp                                        ; $602E: $33
    rst RST_08                                    ; $602F: $CF
    pop af                                        ; $6030: $F1
    rrca                                          ; $6031: $0F
    dec e                                         ; $6032: $1D
    rst RST_28                                    ; $6033: $EF
    ld e, $EF                                     ; $6034: $1E $EF
    cp $07                                        ; $6036: $FE $07
    rst RST_38                                    ; $6038: $FF
    ld [hl], e                                    ; $6039: $73
    ei                                            ; $603A: $FB
    dec c                                         ; $603B: $0D
    ld e, a                                       ; $603C: $5F
    ldh a, [$FFF8]                                ; $603D: $F0 $F8
    nop                                           ; $603F: $00
    add b                                         ; $6040: $80
    nop                                           ; $6041: $00
    add b                                         ; $6042: $80
    nop                                           ; $6043: $00
    ld b, b                                       ; $6044: $40
    add b                                         ; $6045: $80
    ldh [rP1], a                                  ; $6046: $E0 $00
    and b                                         ; $6048: $A0
    ld b, b                                       ; $6049: $40
    ldh [rLCDC], a                                ; $604A: $E0 $40
    ldh [$FF80], a                                ; $604C: $E0 $80
    ldh a, [$FFC0]                                ; $604E: $F0 $C0
    ldh a, [$FFA0]                                ; $6050: $F0 $A0
    pop af                                        ; $6052: $F1
    ret nz                                        ; $6053: $C0

    cp $F1                                        ; $6054: $FE $F1
    rst RST_38                                    ; $6056: $FF
    ld a, l                                       ; $6057: $7D
    ld a, a                                       ; $6058: $7F
    nop                                           ; $6059: $00
    nop                                           ; $605A: $00
    nop                                           ; $605B: $00
    nop                                           ; $605C: $00
    nop                                           ; $605D: $00
    nop                                           ; $605E: $00
    nop                                           ; $605F: $00
    ld h, b                                       ; $6060: $60
    nop                                           ; $6061: $00
    sub b                                         ; $6062: $90
    ld h, b                                       ; $6063: $60
    ld hl, sp-$10                                 ; $6064: $F8 $F0
    db $FC                                        ; $6066: $FC
    ld hl, sp-$04                                 ; $6067: $F8 $FC
    nop                                           ; $6069: $00
    nop                                           ; $606A: $00
    nop                                           ; $606B: $00
    nop                                           ; $606C: $00
    nop                                           ; $606D: $00
    nop                                           ; $606E: $00
    nop                                           ; $606F: $00
    nop                                           ; $6070: $00
    nop                                           ; $6071: $00
    nop                                           ; $6072: $00
    nop                                           ; $6073: $00
    nop                                           ; $6074: $00
    nop                                           ; $6075: $00
    nop                                           ; $6076: $00
    nop                                           ; $6077: $00
    nop                                           ; $6078: $00
    nop                                           ; $6079: $00
    nop                                           ; $607A: $00
    nop                                           ; $607B: $00
    nop                                           ; $607C: $00
    nop                                           ; $607D: $00
    nop                                           ; $607E: $00
    nop                                           ; $607F: $00
    nop                                           ; $6080: $00
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    ld [$1C00], sp                                ; $6086: $08 $00 $1C
    ld [$0C1E], sp                                ; $6089: $08 $1E $0C
    ld l, $1C                                     ; $608C: $2E $1C
    ccf                                           ; $608E: $3F
    ld c, $5F                                     ; $608F: $0E $5F
    ld l, $5F                                     ; $6091: $2E $5F
    scf                                           ; $6093: $37
    cp a                                          ; $6094: $BF
    ld [hl], a                                    ; $6095: $77
    cp a                                          ; $6096: $BF
    ld a, e                                       ; $6097: $7B

jr_00F_6098:
    ld a, a                                       ; $6098: $7F
    inc bc                                        ; $6099: $03
    ld e, a                                       ; $609A: $5F
    inc [hl]                                      ; $609B: $34
    ld e, a                                       ; $609C: $5F
    ld [hl], $BF                                  ; $609D: $36 $BF
    halt                                          ; $609F: $76
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
    add b                                         ; $60B6: $80
    nop                                           ; $60B7: $00
    add b                                         ; $60B8: $80
    nop                                           ; $60B9: $00
    ret nz                                        ; $60BA: $C0

    add b                                         ; $60BB: $80
    ret nz                                        ; $60BC: $C0

    add b                                         ; $60BD: $80
    ret nz                                        ; $60BE: $C0

    nop                                           ; $60BF: $00
    nop                                           ; $60C0: $00
    nop                                           ; $60C1: $00
    nop                                           ; $60C2: $00
    nop                                           ; $60C3: $00
    nop                                           ; $60C4: $00
    nop                                           ; $60C5: $00
    ld bc, $0100                                  ; $60C6: $01 $00 $01
    nop                                           ; $60C9: $00
    ld [bc], a                                    ; $60CA: $02
    ld bc, $0003                                  ; $60CB: $01 $03 $00
    dec b                                         ; $60CE: $05
    ld [bc], a                                    ; $60CF: $02
    dec b                                         ; $60D0: $05
    inc bc                                        ; $60D1: $03
    dec bc                                        ; $60D2: $0B
    rlca                                          ; $60D3: $07
    dec bc                                        ; $60D4: $0B
    rlca                                          ; $60D5: $07
    rlca                                          ; $60D6: $07
    nop                                           ; $60D7: $00
    dec e                                         ; $60D8: $1D
    inc bc                                        ; $60D9: $03
    ld a, l                                       ; $60DA: $7D
    dec de                                        ; $60DB: $1B
    ei                                            ; $60DC: $FB
    ld [hl], a                                    ; $60DD: $77
    ei                                            ; $60DE: $FB
    rlca                                          ; $60DF: $07
    nop                                           ; $60E0: $00
    nop                                           ; $60E1: $00
    nop                                           ; $60E2: $00
    nop                                           ; $60E3: $00
    add b                                         ; $60E4: $80
    nop                                           ; $60E5: $00
    ret nz                                        ; $60E6: $C0

    add b                                         ; $60E7: $80
    ldh [$FFC0], a                                ; $60E8: $E0 $C0
    ldh [$FFC0], a                                ; $60EA: $E0 $C0
    ldh a, [$FFE0]                                ; $60EC: $F0 $E0
    ldh a, [$FFE0]                                ; $60EE: $F0 $E0
    ld hl, sp+$70                                 ; $60F0: $F8 $70
    ld hl, sp+$70                                 ; $60F2: $F8 $70
    db $FC                                        ; $60F4: $FC

jr_00F_60F5:
    cp b                                          ; $60F5: $B8
    db $FC                                        ; $60F6: $FC
    jr c, jr_00F_60F5                             ; $60F7: $38 $FC

    ld b, b                                       ; $60F9: $40
    pop af                                        ; $60FA: $F1
    ld h, b                                       ; $60FB: $60
    di                                            ; $60FC: $F3
    ld h, c                                       ; $60FD: $61
    di                                            ; $60FE: $F3
    ld h, b                                       ; $60FF: $60
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    nop                                           ; $6103: $00
    nop                                           ; $6104: $00
    nop                                           ; $6105: $00
    nop                                           ; $6106: $00
    nop                                           ; $6107: $00
    nop                                           ; $6108: $00
    nop                                           ; $6109: $00
    nop                                           ; $610A: $00
    nop                                           ; $610B: $00
    nop                                           ; $610C: $00
    nop                                           ; $610D: $00
    nop                                           ; $610E: $00
    nop                                           ; $610F: $00
    nop                                           ; $6110: $00
    nop                                           ; $6111: $00
    nop                                           ; $6112: $00
    nop                                           ; $6113: $00
    nop                                           ; $6114: $00
    nop                                           ; $6115: $00

jr_00F_6116:
    ld a, $00                                     ; $6116: $3E $00
    rst RST_18                                    ; $6118: $DF
    ld [hl], $7F                                  ; $6119: $36 $7F
    ld sp, hl                                     ; $611B: $F9
    ld sp, hl                                     ; $611C: $F9
    ret nz                                        ; $611D: $C0

    pop af                                        ; $611E: $F1
    jr nz, jr_00F_6116                            ; $611F: $20 $F5

    inc bc                                        ; $6121: $03
    ei                                            ; $6122: $FB
    rlca                                          ; $6123: $07
    dec de                                        ; $6124: $1B
    rlca                                          ; $6125: $07
    rrca                                          ; $6126: $0F
    rlca                                          ; $6127: $07
    rra                                           ; $6128: $1F
    rrca                                          ; $6129: $0F
    ccf                                           ; $612A: $3F
    ld b, $FF                                     ; $612B: $06 $FF
    ld b, $BF                                     ; $612D: $06 $BF
    add $EF                                       ; $612F: $C6 $EF
    ld d, h                                       ; $6131: $54
    and [hl]                                      ; $6132: $A6

Call_00F_6133:
    ld e, c                                       ; $6133: $59
    ld [hl], b                                    ; $6134: $70
    cpl                                           ; $6135: $2F
    rst RST_18                                    ; $6136: $DF
    jr nz, jr_00F_61A8                            ; $6137: $20 $6F

    add $D3                                       ; $6139: $C6 $D3
    inc c                                         ; $613B: $0C
    dec e                                         ; $613C: $1D
    rrca                                          ; $613D: $0F
    rrca                                          ; $613E: $0F
    nop                                           ; $613F: $00
    db $FC                                        ; $6140: $FC
    cp b                                          ; $6141: $B8
    db $FD                                        ; $6142: $FD
    ret c                                         ; $6143: $D8

    db $FD                                        ; $6144: $FD
    ret c                                         ; $6145: $D8

    rst RST_38                                    ; $6146: $FF
    ret c                                         ; $6147: $D8

    rst RST_38                                    ; $6148: $FF
    rla                                           ; $6149: $17
    add hl, sp                                    ; $614A: $39
    rst RST_00                                    ; $614B: $C7
    add sp, $17                                   ; $614C: $E8 $17
    inc l                                         ; $614E: $2C
    rst RST_10                                    ; $614F: $D7
    rst RST_38                                    ; $6150: $FF
    rlca                                          ; $6151: $07
    rrca                                          ; $6152: $0F
    pop af                                        ; $6153: $F1
    rrca                                          ; $6154: $0F
    ldh a, [rIE]                                  ; $6155: $F0 $FF
    ld [$70FF], sp                                ; $6157: $08 $FF $70
    ld a, [$5F0F]                                 ; $615A: $FA $0F $5F
    ldh a, [$FFF8]                                ; $615D: $F0 $F8
    nop                                           ; $615F: $00
    jr nc, jr_00F_6162                            ; $6160: $30 $00

jr_00F_6162:
    add a                                         ; $6162: $87
    nop                                           ; $6163: $00
    ld e, a                                       ; $6164: $5F
    add d                                         ; $6165: $82
    db $EB                                        ; $6166: $EB
    pop de                                        ; $6167: $D1
    rst RST_38                                    ; $6168: $FF
    inc de                                        ; $6169: $13
    rst RST_38                                    ; $616A: $FF
    rst RST_08                                    ; $616B: $CF
    rst RST_38                                    ; $616C: $FF
    cp $3E                                        ; $616D: $FE $3E
    db $FC                                        ; $616F: $FC
    db $FC                                        ; $6170: $FC
    ld hl, sp-$08                                 ; $6171: $F8 $F8
    ldh [$FFE0], a                                ; $6173: $E0 $E0
    nop                                           ; $6175: $00
    ldh [rP1], a                                  ; $6176: $E0 $00
    db $FC                                        ; $6178: $FC
    nop                                           ; $6179: $00
    cp [hl]                                       ; $617A: $BE
    ldh [$FFF0], a                                ; $617B: $E0 $F0
    nop                                           ; $617D: $00
    nop                                           ; $617E: $00
    nop                                           ; $617F: $00
    ret nz                                        ; $6180: $C0

    add b                                         ; $6181: $80
    ldh [rLCDC], a                                ; $6182: $E0 $40
    ldh [rLCDC], a                                ; $6184: $E0 $40
    ldh [rLCDC], a                                ; $6186: $E0 $40
    ldh [$FFC0], a                                ; $6188: $E0 $C0
    ret nz                                        ; $618A: $C0

    add b                                         ; $618B: $80
    ret nz                                        ; $618C: $C0

    add b                                         ; $618D: $80
    add b                                         ; $618E: $80
    nop                                           ; $618F: $00
    add b                                         ; $6190: $80
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    nop                                           ; $6193: $00
    nop                                           ; $6194: $00
    nop                                           ; $6195: $00
    nop                                           ; $6196: $00
    nop                                           ; $6197: $00
    nop                                           ; $6198: $00
    nop                                           ; $6199: $00
    nop                                           ; $619A: $00
    nop                                           ; $619B: $00
    nop                                           ; $619C: $00
    nop                                           ; $619D: $00
    nop                                           ; $619E: $00
    nop                                           ; $619F: $00
    ld bc, $0200                                  ; $61A0: $01 $00 $02
    ld bc, $0207                                  ; $61A3: $01 $07 $02
    dec b                                         ; $61A6: $05
    ld [bc], a                                    ; $61A7: $02

jr_00F_61A8:
    ld c, $04                                     ; $61A8: $0E $04
    dec bc                                        ; $61AA: $0B
    inc b                                         ; $61AB: $04
    ld a, a                                       ; $61AC: $7F
    ld bc, $7ED5                                  ; $61AD: $01 $D5 $7E
    cp $00                                        ; $61B0: $FE $00
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
    ccf                                           ; $61C0: $3F
    nop                                           ; $61C1: $00
    rra                                           ; $61C2: $1F
    inc bc                                        ; $61C3: $03
    ld [hl], $1D                                  ; $61C4: $36 $1D
    rst RST_38                                    ; $61C6: $FF
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
    rra                                           ; $61E2: $1F
    inc bc                                        ; $61E3: $03
    cp $19                                        ; $61E4: $FE $19
    sub c                                         ; $61E6: $91
    ld l, [hl]                                    ; $61E7: $6E
    ld a, a                                       ; $61E8: $7F
    or e                                          ; $61E9: $B3
    rst RST_20                                    ; $61EA: $E7
    call c, Call_000_00DC                         ; $61EB: $DC $DC $00
    nop                                           ; $61EE: $00
    nop                                           ; $61EF: $00
    nop                                           ; $61F0: $00
    nop                                           ; $61F1: $00
    nop                                           ; $61F2: $00
    nop                                           ; $61F3: $00
    nop                                           ; $61F4: $00
    nop                                           ; $61F5: $00
    nop                                           ; $61F6: $00
    nop                                           ; $61F7: $00

jr_00F_61F8:
    nop                                           ; $61F8: $00
    nop                                           ; $61F9: $00
    nop                                           ; $61FA: $00
    nop                                           ; $61FB: $00
    nop                                           ; $61FC: $00
    nop                                           ; $61FD: $00
    nop                                           ; $61FE: $00
    nop                                           ; $61FF: $00
    ld bc, $0300                                  ; $6200: $01 $00 $03
    nop                                           ; $6203: $00
    rrca                                          ; $6204: $0F
    ld bc, $0F7F                                  ; $6205: $01 $7F $0F
    sbc a                                         ; $6208: $9F
    ld [hl], c                                    ; $6209: $71
    rst RST_38                                    ; $620A: $FF
    ld e, $1B                                     ; $620B: $1E $1B
    rst RST_20                                    ; $620D: $E7
    rst RST_38                                    ; $620E: $FF
    ld a, e                                       ; $620F: $7B
    db $E3                                        ; $6210: $E3
    sbc h                                         ; $6211: $9C
    ccf                                           ; $6212: $3F
    rst RST_00                                    ; $6213: $C7
    rst RST_00                                    ; $6214: $C7
    nop                                           ; $6215: $00
    inc bc                                        ; $6216: $03
    ld bc, $0001                                  ; $6217: $01 $01 $00
    nop                                           ; $621A: $00
    nop                                           ; $621B: $00
    nop                                           ; $621C: $00
    nop                                           ; $621D: $00
    nop                                           ; $621E: $00
    nop                                           ; $621F: $00
    ld bc, $0200                                  ; $6220: $01 $00 $02
    ld bc, $02CF                                  ; $6223: $01 $CF $02
    ld d, [hl]                                    ; $6226: $56
    adc c                                         ; $6227: $89
    db $FD                                        ; $6228: $FD
    dec bc                                        ; $6229: $0B
    rst RST_38                                    ; $622A: $FF
    ldh [$FF9F], a                                ; $622B: $E0 $9F
    rst RST_38                                    ; $622D: $FF
    ldh [rIE], a                                  ; $622E: $E0 $FF
    ld hl, sp+$7F                                 ; $6230: $F8 $7F
    rst RST_38                                    ; $6232: $FF
    sbc a                                         ; $6233: $9F
    rst RST_38                                    ; $6234: $FF
    ldh [$FF3F], a                                ; $6235: $E0 $3F
    db $FC                                        ; $6237: $FC
    rst RST_38                                    ; $6238: $FF
    jr c, jr_00F_61F8                             ; $6239: $38 $BD

    ld b, a                                       ; $623B: $47
    ld d, [hl]                                    ; $623C: $56
    pop hl                                        ; $623D: $E1
    pop hl                                        ; $623E: $E1
    nop                                           ; $623F: $00
    ccf                                           ; $6240: $3F
    rst RST_30                                    ; $6241: $F7
    rst RST_38                                    ; $6242: $FF
    rst RST_28                                    ; $6243: $EF
    rst RST_38                                    ; $6244: $FF
    ld e, a                                       ; $6245: $5F
    rst RST_38                                    ; $6246: $FF
    ld e, a                                       ; $6247: $5F
    rst RST_38                                    ; $6248: $FF
    ld a, $FE                                     ; $6249: $3E $FE
    inc c                                         ; $624B: $0C
    adc $B4                                       ; $624C: $CE $B4
    call z, $FCB0                                 ; $624E: $CC $B0 $FC
    add b                                         ; $6251: $80
    ret c                                         ; $6252: $D8

    and b                                         ; $6253: $A0
    sub e                                         ; $6254: $93
    ld h, b                                       ; $6255: $60
    db $ED                                        ; $6256: $ED
    inc de                                        ; $6257: $13
    rst RST_30                                    ; $6258: $F7
    call z, $02FD                                 ; $6259: $CC $FD $02
    xor [hl]                                      ; $625C: $AE
    ld hl, sp-$04                                 ; $625D: $F8 $FC
    nop                                           ; $625F: $00
    add b                                         ; $6260: $80
    nop                                           ; $6261: $00
    ld b, b                                       ; $6262: $40
    add b                                         ; $6263: $80
    ret nz                                        ; $6264: $C0

    add b                                         ; $6265: $80
    ret nz                                        ; $6266: $C0

    nop                                           ; $6267: $00
    nop                                           ; $6268: $00
    nop                                           ; $6269: $00
    nop                                           ; $626A: $00
    nop                                           ; $626B: $00
    nop                                           ; $626C: $00
    nop                                           ; $626D: $00
    nop                                           ; $626E: $00
    nop                                           ; $626F: $00
    nop                                           ; $6270: $00
    nop                                           ; $6271: $00
    nop                                           ; $6272: $00
    nop                                           ; $6273: $00
    nop                                           ; $6274: $00
    nop                                           ; $6275: $00
    nop                                           ; $6276: $00
    nop                                           ; $6277: $00
    nop                                           ; $6278: $00
    nop                                           ; $6279: $00
    nop                                           ; $627A: $00
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
    nop                                           ; $628C: $00
    nop                                           ; $628D: $00
    nop                                           ; $628E: $00
    nop                                           ; $628F: $00
    nop                                           ; $6290: $00
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    nop                                           ; $6293: $00
    nop                                           ; $6294: $00
    nop                                           ; $6295: $00
    nop                                           ; $6296: $00
    nop                                           ; $6297: $00
    ld bc, $0F00                                  ; $6298: $01 $00 $0F
    ld bc, $0C3F                                  ; $629B: $01 $3F $0C
    rst RST_08                                    ; $629E: $CF
    dec sp                                        ; $629F: $3B
    nop                                           ; $62A0: $00
    nop                                           ; $62A1: $00
    nop                                           ; $62A2: $00
    nop                                           ; $62A3: $00
    nop                                           ; $62A4: $00
    nop                                           ; $62A5: $00
    nop                                           ; $62A6: $00
    nop                                           ; $62A7: $00
    nop                                           ; $62A8: $00
    nop                                           ; $62A9: $00
    nop                                           ; $62AA: $00
    nop                                           ; $62AB: $00
    nop                                           ; $62AC: $00
    nop                                           ; $62AD: $00
    nop                                           ; $62AE: $00
    nop                                           ; $62AF: $00
    db $FC                                        ; $62B0: $FC
    nop                                           ; $62B1: $00
    rst RST_38                                    ; $62B2: $FF
    inc b                                         ; $62B3: $04
    rst RST_38                                    ; $62B4: $FF
    db $E3                                        ; $62B5: $E3
    rst RST_38                                    ; $62B6: $FF
    di                                            ; $62B7: $F3
    rst RST_38                                    ; $62B8: $FF
    di                                            ; $62B9: $F3
    rst RST_38                                    ; $62BA: $FF
    db $E3                                        ; $62BB: $E3
    rst RST_38                                    ; $62BC: $FF
    add h                                         ; $62BD: $84
    db $FC                                        ; $62BE: $FC
    nop                                           ; $62BF: $00
    nop                                           ; $62C0: $00
    nop                                           ; $62C1: $00
    nop                                           ; $62C2: $00
    nop                                           ; $62C3: $00
    nop                                           ; $62C4: $00
    nop                                           ; $62C5: $00
    nop                                           ; $62C6: $00
    nop                                           ; $62C7: $00
    nop                                           ; $62C8: $00
    nop                                           ; $62C9: $00
    nop                                           ; $62CA: $00
    nop                                           ; $62CB: $00
    nop                                           ; $62CC: $00
    nop                                           ; $62CD: $00
    nop                                           ; $62CE: $00
    nop                                           ; $62CF: $00
    nop                                           ; $62D0: $00
    nop                                           ; $62D1: $00
    nop                                           ; $62D2: $00
    nop                                           ; $62D3: $00
    nop                                           ; $62D4: $00
    nop                                           ; $62D5: $00
    nop                                           ; $62D6: $00
    nop                                           ; $62D7: $00
    add b                                         ; $62D8: $80
    nop                                           ; $62D9: $00
    ret nz                                        ; $62DA: $C0

    add b                                         ; $62DB: $80
    ret nz                                        ; $62DC: $C0

    add b                                         ; $62DD: $80
    add b                                         ; $62DE: $80
    nop                                           ; $62DF: $00
    ld a, h                                       ; $62E0: $7C
    nop                                           ; $62E1: $00
    add e                                         ; $62E2: $83
    ld a, h                                       ; $62E3: $7C
    ld hl, sp+$7F                                 ; $62E4: $F8 $7F
    rst RST_38                                    ; $62E6: $FF
    ld a, a                                       ; $62E7: $7F
    rst RST_38                                    ; $62E8: $FF
    ld b, a                                       ; $62E9: $47
    rst RST_38                                    ; $62EA: $FF
    ld e, c                                       ; $62EB: $59
    ei                                            ; $62EC: $FB
    ld e, [hl]                                    ; $62ED: $5E
    rst RST_28                                    ; $62EE: $EF
    ld e, [hl]                                    ; $62EF: $5E
    rra                                           ; $62F0: $1F
    add hl, bc                                    ; $62F1: $09
    rra                                           ; $62F2: $1F
    rlca                                          ; $62F3: $07
    rrca                                          ; $62F4: $0F
    inc bc                                        ; $62F5: $03
    rlca                                          ; $62F6: $07
    inc bc                                        ; $62F7: $03
    inc bc                                        ; $62F8: $03
    ld bc, $0103                                  ; $62F9: $01 $03 $01
    inc bc                                        ; $62FC: $03
    ld bc, $0207                                  ; $62FD: $01 $07 $02
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    add b                                         ; $6302: $80
    nop                                           ; $6303: $00
    ld h, b                                       ; $6304: $60
    add b                                         ; $6305: $80
    sub b                                         ; $6306: $90
    ldh [$FFF0], a                                ; $6307: $E0 $F0
    ldh [$FFE0], a                                ; $6309: $E0 $E0
    ret nz                                        ; $630B: $C0

    ldh a, [rNR41]                                ; $630C: $F0 $20
    ld hl, sp+$70                                 ; $630E: $F8 $70
    db $FC                                        ; $6310: $FC
    ld a, b                                       ; $6311: $78
    cp $BC                                        ; $6312: $FE $BC
    cp $DC                                        ; $6314: $FE $DC
    rst RST_38                                    ; $6316: $FF
    xor $FF                                       ; $6317: $EE $FF
    or $FF                                        ; $6319: $F6 $FF
    rst RST_30                                    ; $631B: $F7
    rst RST_38                                    ; $631C: $FF
    ei                                            ; $631D: $FB
    rst RST_38                                    ; $631E: $FF
    jp $153E                                      ; $631F: $C3 $3E $15


    ccf                                           ; $6322: $3F
    dec d                                         ; $6323: $15
    dec a                                         ; $6324: $3D
    ld [de], a                                    ; $6325: $12
    ld [hl], $09                                  ; $6326: $36 $09
    ld a, h                                       ; $6328: $7C
    dec hl                                        ; $6329: $2B
    cp c                                          ; $632A: $B9
    ld b, a                                       ; $632B: $47
    db $E3                                        ; $632C: $E3
    rra                                           ; $632D: $1F
    adc a                                         ; $632E: $8F
    ld a, a                                       ; $632F: $7F
    rst RST_38                                    ; $6330: $FF
    cp $FF                                        ; $6331: $FE $FF
    ld sp, hl                                     ; $6333: $F9
    db $FC                                        ; $6334: $FC
    add e                                         ; $6335: $83
    or a                                          ; $6336: $B7
    ld h, d                                       ; $6337: $62
    db $EB                                        ; $6338: $EB
    call nz, $88FF                                ; $6339: $C4 $FF $88
    add sp, $30                                   ; $633C: $E8 $30
    ld [hl], b                                    ; $633E: $70
    nop                                           ; $633F: $00
    db $FC                                        ; $6340: $FC
    cp b                                          ; $6341: $B8
    db $FC                                        ; $6342: $FC

jr_00F_6343:
    ret c                                         ; $6343: $D8

    db $FC                                        ; $6344: $FC
    jr jr_00F_6343                                ; $6345: $18 $FC

    nop                                           ; $6347: $00
    db $F4                                        ; $6348: $F4
    ld l, b                                       ; $6349: $68
    ld [hl], h                                    ; $634A: $74

jr_00F_634B:
    add sp, -$04                                  ; $634B: $E8 $FC
    ldh [$FFF6], a                                ; $634D: $E0 $F6
    add sp, -$05                                  ; $634F: $E8 $FB
    db $E4                                        ; $6351: $E4
    cp $C5                                        ; $6352: $FE $C5
    ei                                            ; $6354: $FB
    add h                                         ; $6355: $84
    rst RST_38                                    ; $6356: $FF
    ld [$88F7], sp                                ; $6357: $08 $F7 $88
    ei                                            ; $635A: $FB
    db $10                                        ; $635B: $10
    db $EB                                        ; $635C: $EB
    db $10                                        ; $635D: $10
    rst RST_30                                    ; $635E: $F7
    jr nz, jr_00F_63C7                            ; $635F: $20 $66

    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    nop                                           ; $6363: $00
    nop                                           ; $6364: $00
    nop                                           ; $6365: $00
    nop                                           ; $6366: $00
    nop                                           ; $6367: $00
    nop                                           ; $6368: $00
    nop                                           ; $6369: $00
    nop                                           ; $636A: $00
    nop                                           ; $636B: $00
    nop                                           ; $636C: $00
    nop                                           ; $636D: $00
    nop                                           ; $636E: $00
    nop                                           ; $636F: $00
    nop                                           ; $6370: $00
    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    nop                                           ; $6374: $00
    nop                                           ; $6375: $00
    nop                                           ; $6376: $00
    nop                                           ; $6377: $00
    nop                                           ; $6378: $00
    nop                                           ; $6379: $00
    nop                                           ; $637A: $00
    nop                                           ; $637B: $00
    nop                                           ; $637C: $00
    nop                                           ; $637D: $00
    nop                                           ; $637E: $00
    nop                                           ; $637F: $00
    add b                                         ; $6380: $80
    nop                                           ; $6381: $00
    ret nz                                        ; $6382: $C0

    add b                                         ; $6383: $80
    ld b, b                                       ; $6384: $40
    add b                                         ; $6385: $80
    ldh [rLCDC], a                                ; $6386: $E0 $40
    and b                                         ; $6388: $A0
    ld b, b                                       ; $6389: $40
    ret nz                                        ; $638A: $C0

    add b                                         ; $638B: $80
    add b                                         ; $638C: $80
    nop                                           ; $638D: $00
    nop                                           ; $638E: $00
    nop                                           ; $638F: $00
    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    nop                                           ; $6393: $00
    nop                                           ; $6394: $00
    nop                                           ; $6395: $00
    nop                                           ; $6396: $00
    nop                                           ; $6397: $00
    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    nop                                           ; $639A: $00
    nop                                           ; $639B: $00
    nop                                           ; $639C: $00
    nop                                           ; $639D: $00
    nop                                           ; $639E: $00
    nop                                           ; $639F: $00
    ld e, [hl]                                    ; $63A0: $5E
    ccf                                           ; $63A1: $3F
    ld a, [hl]                                    ; $63A2: $7E
    ccf                                           ; $63A3: $3F
    ld a, [hl]                                    ; $63A4: $7E
    ccf                                           ; $63A5: $3F
    db $FC                                        ; $63A6: $FC
    ld a, a                                       ; $63A7: $7F
    db $FD                                        ; $63A8: $FD
    ld a, a                                       ; $63A9: $7F
    rst RST_38                                    ; $63AA: $FF
    ld a, a                                       ; $63AB: $7F
    rst RST_38                                    ; $63AC: $FF
    ld a, a                                       ; $63AD: $7F
    rst RST_38                                    ; $63AE: $FF
    ld a, a                                       ; $63AF: $7F
    rst RST_38                                    ; $63B0: $FF
    ld a, a                                       ; $63B1: $7F
    ld a, a                                       ; $63B2: $7F
    inc a                                         ; $63B3: $3C
    dec a                                         ; $63B4: $3D
    inc bc                                        ; $63B5: $03
    rrca                                          ; $63B6: $0F
    rlca                                          ; $63B7: $07
    rrca                                          ; $63B8: $0F
    rlca                                          ; $63B9: $07
    rrca                                          ; $63BA: $0F
    rlca                                          ; $63BB: $07
    rlca                                          ; $63BC: $07
    inc bc                                        ; $63BD: $03
    inc bc                                        ; $63BE: $03
    nop                                           ; $63BF: $00
    ret z                                         ; $63C0: $C8

    jr nc, jr_00F_634B                            ; $63C1: $30 $88

    ld [hl], b                                    ; $63C3: $70
    ld d, b                                       ; $63C4: $50
    ldh [$FFDC], a                                ; $63C5: $E0 $DC

jr_00F_63C7:
    ldh [$FFD5], a                                ; $63C7: $E0 $D5
    add sp, -$12                                  ; $63C9: $E8 $EE
    pop de                                        ; $63CB: $D1
    db $DB                                        ; $63CC: $DB
    rst RST_30                                    ; $63CD: $F7
    rst RST_38                                    ; $63CE: $FF
    rst RST_38                                    ; $63CF: $FF
    rst RST_38                                    ; $63D0: $FF
    ld hl, sp-$06                                 ; $63D1: $F8 $FA
    dec b                                         ; $63D3: $05
    sub c                                         ; $63D4: $91
    rst RST_38                                    ; $63D5: $FF
    rst RST_38                                    ; $63D6: $FF
    cp $FE                                        ; $63D7: $FE $FE
    ld hl, sp-$08                                 ; $63D9: $F8 $F8
    ldh [$FFF0], a                                ; $63DB: $E0 $F0
    ret nz                                        ; $63DD: $C0

    ret nz                                        ; $63DE: $C0

    nop                                           ; $63DF: $00
    nop                                           ; $63E0: $00
    nop                                           ; $63E1: $00
    nop                                           ; $63E2: $00
    nop                                           ; $63E3: $00
    nop                                           ; $63E4: $00
    nop                                           ; $63E5: $00
    nop                                           ; $63E6: $00
    nop                                           ; $63E7: $00
    nop                                           ; $63E8: $00
    nop                                           ; $63E9: $00
    nop                                           ; $63EA: $00
    nop                                           ; $63EB: $00
    nop                                           ; $63EC: $00
    nop                                           ; $63ED: $00
    nop                                           ; $63EE: $00
    nop                                           ; $63EF: $00
    ld bc, $0600                                  ; $63F0: $01 $00 $06
    ld bc, $0709                                  ; $63F3: $01 $09 $07
    ld d, $0F                                     ; $63F6: $16 $0F
    ld l, $1F                                     ; $63F8: $2E $1F
    ld e, h                                       ; $63FA: $5C
    ccf                                           ; $63FB: $3F
    cp l                                          ; $63FC: $BD
    ld a, [hl]                                    ; $63FD: $7E
    db $FD                                        ; $63FE: $FD
    ld a, [hl]                                    ; $63FF: $7E
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    nop                                           ; $6408: $00
    nop                                           ; $6409: $00
    inc e                                         ; $640A: $1C
    inc c                                         ; $640B: $0C
    inc c                                         ; $640C: $0C
    nop                                           ; $640D: $00
    ld [hl], h                                    ; $640E: $74
    ld [$7088], sp                                ; $640F: $08 $88 $70
    db $10                                        ; $6412: $10
    ldh [rNR41], a                                ; $6413: $E0 $20
    ret nz                                        ; $6415: $C0

    ld b, b                                       ; $6416: $40
    add b                                         ; $6417: $80
    add b                                         ; $6418: $80
    nop                                           ; $6419: $00
    add b                                         ; $641A: $80
    nop                                           ; $641B: $00
    jr nc, jr_00F_641E                            ; $641C: $30 $00

jr_00F_641E:
    ret nc                                        ; $641E: $D0

    jr nz, jr_00F_6422                            ; $641F: $20 $01

    nop                                           ; $6421: $00

jr_00F_6422:
    ld b, $01                                     ; $6422: $06 $01
    dec de                                        ; $6424: $1B
    rlca                                          ; $6425: $07
    rst RST_38                                    ; $6426: $FF
    rra                                           ; $6427: $1F
    rst RST_38                                    ; $6428: $FF
    ld hl, sp-$06                                 ; $6429: $F8 $FA
    ld bc, $0305                                  ; $642B: $01 $05 $03
    rrca                                          ; $642E: $0F
    ld b, $FE                                     ; $642F: $06 $FE
    ld [$E0F8], sp                                ; $6431: $08 $F8 $E0
    ldh a, [$FFC0]                                ; $6434: $F0 $C0
    ret nz                                        ; $6436: $C0

    nop                                           ; $6437: $00
    nop                                           ; $6438: $00
    nop                                           ; $6439: $00
    nop                                           ; $643A: $00
    nop                                           ; $643B: $00
    nop                                           ; $643C: $00
    nop                                           ; $643D: $00
    nop                                           ; $643E: $00
    nop                                           ; $643F: $00
    add b                                         ; $6440: $80
    nop                                           ; $6441: $00
    ret nz                                        ; $6442: $C0

    nop                                           ; $6443: $00
    and b                                         ; $6444: $A0
    ld b, b                                       ; $6445: $40
    sbc b                                         ; $6446: $98
    ld h, b                                       ; $6447: $60
    rst RST_20                                    ; $6448: $E7
    ld a, b                                       ; $6449: $78
    rst RST_38                                    ; $644A: $FF
    ld a, [hl]                                    ; $644B: $7E
    ld a, a                                       ; $644C: $7F
    inc a                                         ; $644D: $3C
    inc a                                         ; $644E: $3C
    nop                                           ; $644F: $00
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    rrca                                          ; $6452: $0F
    nop                                           ; $6453: $00
    ld [$0707], sp                                ; $6454: $08 $07 $07
    inc bc                                        ; $6457: $03
    inc bc                                        ; $6458: $03
    nop                                           ; $6459: $00
    nop                                           ; $645A: $00
    nop                                           ; $645B: $00
    nop                                           ; $645C: $00
    nop                                           ; $645D: $00
    nop                                           ; $645E: $00
    nop                                           ; $645F: $00
    nop                                           ; $6460: $00
    nop                                           ; $6461: $00
    nop                                           ; $6462: $00
    nop                                           ; $6463: $00
    nop                                           ; $6464: $00
    nop                                           ; $6465: $00
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    nop                                           ; $6469: $00
    nop                                           ; $646A: $00
    nop                                           ; $646B: $00
    nop                                           ; $646C: $00
    nop                                           ; $646D: $00
    nop                                           ; $646E: $00
    nop                                           ; $646F: $00
    nop                                           ; $6470: $00
    nop                                           ; $6471: $00
    nop                                           ; $6472: $00
    nop                                           ; $6473: $00
    nop                                           ; $6474: $00
    nop                                           ; $6475: $00
    nop                                           ; $6476: $00
    nop                                           ; $6477: $00
    nop                                           ; $6478: $00
    nop                                           ; $6479: $00
    nop                                           ; $647A: $00
    nop                                           ; $647B: $00
    rlca                                          ; $647C: $07
    inc bc                                        ; $647D: $03
    inc bc                                        ; $647E: $03
    nop                                           ; $647F: $00
    nop                                           ; $6480: $00
    nop                                           ; $6481: $00
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00
    nop                                           ; $6484: $00
    nop                                           ; $6485: $00
    nop                                           ; $6486: $00
    nop                                           ; $6487: $00
    nop                                           ; $6488: $00
    nop                                           ; $6489: $00
    nop                                           ; $648A: $00
    nop                                           ; $648B: $00
    nop                                           ; $648C: $00
    nop                                           ; $648D: $00
    nop                                           ; $648E: $00
    nop                                           ; $648F: $00
    nop                                           ; $6490: $00
    nop                                           ; $6491: $00
    inc bc                                        ; $6492: $03
    nop                                           ; $6493: $00
    inc b                                         ; $6494: $04
    inc bc                                        ; $6495: $03
    add hl, bc                                    ; $6496: $09
    rlca                                          ; $6497: $07
    dec bc                                        ; $6498: $0B
    rlca                                          ; $6499: $07
    rlca                                          ; $649A: $07
    inc bc                                        ; $649B: $03
    inc bc                                        ; $649C: $03
    ld bc, $0001                                  ; $649D: $01 $01 $00
    nop                                           ; $64A0: $00
    nop                                           ; $64A1: $00
    nop                                           ; $64A2: $00
    nop                                           ; $64A3: $00
    nop                                           ; $64A4: $00
    nop                                           ; $64A5: $00
    nop                                           ; $64A6: $00
    nop                                           ; $64A7: $00
    add b                                         ; $64A8: $80
    nop                                           ; $64A9: $00
    ld h, b                                       ; $64AA: $60
    add b                                         ; $64AB: $80
    rst RST_38                                    ; $64AC: $FF
    ldh [$FFF0], a                                ; $64AD: $E0 $F0
    rst RST_28                                    ; $64AF: $EF
    rst RST_38                                    ; $64B0: $FF
    rra                                           ; $64B1: $1F
    rst RST_38                                    ; $64B2: $FF
    inc bc                                        ; $64B3: $03
    add a                                         ; $64B4: $87
    nop                                           ; $64B5: $00
    rra                                           ; $64B6: $1F
    ld [bc], a                                    ; $64B7: $02
    rra                                           ; $64B8: $1F
    ld [$070A], sp                                ; $64B9: $08 $0A $07
    rlca                                          ; $64BC: $07
    nop                                           ; $64BD: $00
    ld bc, $0500                                  ; $64BE: $01 $00 $05
    inc bc                                        ; $64C1: $03
    rlca                                          ; $64C2: $07
    inc bc                                        ; $64C3: $03
    rrca                                          ; $64C4: $0F
    rlca                                          ; $64C5: $07
    ld l, a                                       ; $64C6: $6F
    ld [bc], a                                    ; $64C7: $02
    xor [hl]                                      ; $64C8: $AE
    ld b, c                                       ; $64C9: $41
    db $FD                                        ; $64CA: $FD
    inc bc                                        ; $64CB: $03
    rrca                                          ; $64CC: $0F
    ldh a, [$FFFB]                                ; $64CD: $F0 $FB
    db $F4                                        ; $64CF: $F4
    ld hl, sp-$09                                 ; $64D0: $F8 $F7
    db $FC                                        ; $64D2: $FC
    dec sp                                        ; $64D3: $3B
    ld a, [hl]                                    ; $64D4: $7E
    ld bc, $7EAB                                  ; $64D5: $01 $AB $7E
    rst RST_38                                    ; $64D8: $FF
    add b                                         ; $64D9: $80
    cp $04                                        ; $64DA: $FE $04
    and [hl]                                      ; $64DC: $A6
    ld a, b                                       ; $64DD: $78
    ld a, b                                       ; $64DE: $78

jr_00F_64DF:
    nop                                           ; $64DF: $00
    cp $EC                                        ; $64E0: $FE $EC
    rst RST_38                                    ; $64E2: $FF
    adc [hl]                                      ; $64E3: $8E
    rst RST_38                                    ; $64E4: $FF
    ld [bc], a                                    ; $64E5: $02
    dec de                                        ; $64E6: $1B
    db $E4                                        ; $64E7: $E4
    rst RST_38                                    ; $64E8: $FF
    ld hl, sp-$01                                 ; $64E9: $F8 $FF
    ld a, e                                       ; $64EB: $7B
    ld a, a                                       ; $64EC: $7F
    and b                                         ; $64ED: $A0
    ld h, a                                       ; $64EE: $67
    sbc c                                         ; $64EF: $99
    dec a                                         ; $64F0: $3D
    ret nz                                        ; $64F1: $C0

    ld a, a                                       ; $64F2: $7F
    add b                                         ; $64F3: $80
    push af                                       ; $64F4: $F5
    rra                                           ; $64F5: $1F
    dec [hl]                                      ; $64F6: $35
    rra                                           ; $64F7: $1F
    rra                                           ; $64F8: $1F
    nop                                           ; $64F9: $00
    ld [hl], l                                    ; $64FA: $75
    ld e, $D5                                     ; $64FB: $1E $D5
    ld a, [hl]                                    ; $64FD: $7E
    cp $00                                        ; $64FE: $FE $00
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    nop                                           ; $6506: $00
    nop                                           ; $6507: $00
    nop                                           ; $6508: $00
    nop                                           ; $6509: $00
    nop                                           ; $650A: $00
    nop                                           ; $650B: $00
    ld bc, $0100                                  ; $650C: $01 $00 $01
    nop                                           ; $650F: $00
    ld [bc], a                                    ; $6510: $02
    ld bc, $0102                                  ; $6511: $01 $02 $01
    ld bc, $0100                                  ; $6514: $01 $00 $01
    nop                                           ; $6517: $00
    ld bc, $0200                                  ; $6518: $01 $00 $02
    ld bc, $0102                                  ; $651B: $01 $02 $01
    dec b                                         ; $651E: $05
    inc bc                                        ; $651F: $03
    jr nz, jr_00F_6522                            ; $6520: $20 $00

jr_00F_6522:
    ld [hl], b                                    ; $6522: $70
    jr nz, jr_00F_659D                            ; $6523: $20 $78

    jr nc, jr_00F_64DF                            ; $6525: $30 $B8

    ld [hl], b                                    ; $6527: $70
    db $FC                                        ; $6528: $FC
    jr c, jr_00F_65A7                             ; $6529: $38 $7C

    cp b                                          ; $652B: $B8
    ld a, [hl]                                    ; $652C: $7E
    call c, $DCFE                                 ; $652D: $DC $FE $DC
    rst RST_38                                    ; $6530: $FF
    xor $FF                                       ; $6531: $EE $FF
    ld c, $7F                                     ; $6533: $0E $7F
    ret nc                                        ; $6535: $D0

    ld a, h                                       ; $6536: $7C
    ret c                                         ; $6537: $D8

    db $FC                                        ; $6538: $FC
    ret c                                         ; $6539: $D8

    db $FC                                        ; $653A: $FC
    ret c                                         ; $653B: $D8

    cp $EC                                        ; $653C: $FE $EC
    cp $EC                                        ; $653E: $FE $EC
    jr c, jr_00F_6542                             ; $6540: $38 $00

jr_00F_6542:
    call nz, Call_000_3E38                        ; $6542: $C4 $38 $3E
    db $FC                                        ; $6545: $FC
    cp $FC                                        ; $6546: $FE $FC
    cp $7C                                        ; $6548: $FE $7C
    db $FC                                        ; $654A: $FC
    ld hl, sp-$08                                 ; $654B: $F8 $F8
    nop                                           ; $654D: $00
    add b                                         ; $654E: $80
    nop                                           ; $654F: $00
    ld b, b                                       ; $6550: $40
    add b                                         ; $6551: $80
    ld b, b                                       ; $6552: $40
    add b                                         ; $6553: $80
    add b                                         ; $6554: $80
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    nop                                           ; $655A: $00
    nop                                           ; $655B: $00
    nop                                           ; $655C: $00
    nop                                           ; $655D: $00
    nop                                           ; $655E: $00
    nop                                           ; $655F: $00
    ld bc, $0700                                  ; $6560: $01 $00 $07
    nop                                           ; $6563: $00
    dec b                                         ; $6564: $05
    ld [bc], a                                    ; $6565: $02
    rlca                                          ; $6566: $07
    ld [bc], a                                    ; $6567: $02
    rrca                                          ; $6568: $0F
    ld bc, $0917                                  ; $6569: $01 $17 $09
    rra                                           ; $656C: $1F
    ld [bc], a                                    ; $656D: $02
    add hl, bc                                    ; $656E: $09
    ld b, $09                                     ; $656F: $06 $09
    ld b, $0C                                     ; $6571: $06 $0C
    rlca                                          ; $6573: $07
    rlca                                          ; $6574: $07
    inc bc                                        ; $6575: $03

jr_00F_6576:
    inc bc                                        ; $6576: $03
    nop                                           ; $6577: $00
    ld bc, $0100                                  ; $6578: $01 $00 $01
    nop                                           ; $657B: $00
    nop                                           ; $657C: $00
    nop                                           ; $657D: $00
    nop                                           ; $657E: $00
    nop                                           ; $657F: $00
    db $FD                                        ; $6580: $FD
    ld [bc], a                                    ; $6581: $02

jr_00F_6582:
    rst RST_38                                    ; $6582: $FF
    jr nc, jr_00F_6582                            ; $6583: $30 $FD

    or d                                          ; $6585: $B2
    rst RST_38                                    ; $6586: $FF
    ret nc                                        ; $6587: $D0

    db $FD                                        ; $6588: $FD
    jp c, $D1FF                                   ; $6589: $DA $FF $D1

    rst RST_38                                    ; $658C: $FF
    db $E3                                        ; $658D: $E3
    rst RST_38                                    ; $658E: $FF
    ld d, a                                       ; $658F: $57
    ld a, a                                       ; $6590: $7F
    add a                                         ; $6591: $87
    rst RST_38                                    ; $6592: $FF
    ld hl, sp-$02                                 ; $6593: $F8 $FE
    ld bc, $D06F                                  ; $6595: $01 $6F $D0
    ld a, [$7F0F]                                 ; $6598: $FA $0F $7F
    jr nz, jr_00F_65F3                            ; $659B: $20 $56

jr_00F_659D:
    inc a                                         ; $659D: $3C
    inc a                                         ; $659E: $3C
    nop                                           ; $659F: $00
    ld h, [hl]                                    ; $65A0: $66
    ret c                                         ; $65A1: $D8

    ld a, a                                       ; $65A2: $7F
    ret nz                                        ; $65A3: $C0

    ld h, a                                       ; $65A4: $67
    db $DB                                        ; $65A5: $DB
    rst RST_38                                    ; $65A6: $FF

jr_00F_65A7:
    jp Jump_000_33CF                              ; $65A7: $C3 $CF $33


    rst RST_38                                    ; $65AA: $FF
    rst RST_08                                    ; $65AB: $CF
    rst RST_38                                    ; $65AC: $FF
    sbc $FE                                       ; $65AD: $DE $FE
    cp l                                          ; $65AF: $BD
    rst RST_38                                    ; $65B0: $FF
    ld a, [hl]                                    ; $65B1: $7E
    rst RST_38                                    ; $65B2: $FF
    nop                                           ; $65B3: $00
    ld a, [hl]                                    ; $65B4: $7E
    sbc c                                         ; $65B5: $99
    db $ED                                        ; $65B6: $ED
    jr nc, jr_00F_6576                            ; $65B7: $30 $BD

    ret nz                                        ; $65B9: $C0

    cp $11                                        ; $65BA: $FE $11
    dec d                                         ; $65BC: $15
    rrca                                          ; $65BD: $0F
    rrca                                          ; $65BE: $0F
    nop                                           ; $65BF: $00
    ld h, b                                       ; $65C0: $60
    nop                                           ; $65C1: $00
    and b                                         ; $65C2: $A0
    ld b, b                                       ; $65C3: $40
    ldh [rLCDC], a                                ; $65C4: $E0 $40
    ldh [rLCDC], a                                ; $65C6: $E0 $40
    ldh a, [$FF80]                                ; $65C8: $F0 $80
    ret nc                                        ; $65CA: $D0

    and b                                         ; $65CB: $A0
    ldh a, [$FFA0]                                ; $65CC: $F0 $A0
    ldh [rP1], a                                  ; $65CE: $E0 $00
    ret nz                                        ; $65D0: $C0

    nop                                           ; $65D1: $00
    add b                                         ; $65D2: $80
    nop                                           ; $65D3: $00
    add b                                         ; $65D4: $80
    nop                                           ; $65D5: $00
    ret nz                                        ; $65D6: $C0

    add b                                         ; $65D7: $80
    ld b, b                                       ; $65D8: $40
    add b                                         ; $65D9: $80
    ret nz                                        ; $65DA: $C0

    add b                                         ; $65DB: $80
    ld b, b                                       ; $65DC: $40
    add b                                         ; $65DD: $80
    add b                                         ; $65DE: $80
    nop                                           ; $65DF: $00
    ld [bc], a                                    ; $65E0: $02
    ld bc, $0102                                  ; $65E1: $01 $02 $01
    dec b                                         ; $65E4: $05
    inc bc                                        ; $65E5: $03
    dec b                                         ; $65E6: $05
    ld [bc], a                                    ; $65E7: $02
    dec bc                                        ; $65E8: $0B
    ld b, $0F                                     ; $65E9: $06 $0F
    ld [bc], a                                    ; $65EB: $02
    inc bc                                        ; $65EC: $03
    nop                                           ; $65ED: $00
    ld bc, $0300                                  ; $65EE: $01 $00 $03
    nop                                           ; $65F1: $00
    inc bc                                        ; $65F2: $03

jr_00F_65F3:
    ld bc, $0107                                  ; $65F3: $01 $07 $01
    dec b                                         ; $65F6: $05
    ld [bc], a                                    ; $65F7: $02
    dec c                                         ; $65F8: $0D
    ld [bc], a                                    ; $65F9: $02
    ld l, e                                       ; $65FA: $6B
    dec b                                         ; $65FB: $05
    xor [hl]                                      ; $65FC: $AE
    ld b, l                                       ; $65FD: $45
    ld l, a                                       ; $65FE: $6F
    pop bc                                        ; $65FF: $C1
    ld a, h                                       ; $6600: $7C
    cp b                                          ; $6601: $B8
    db $FC                                        ; $6602: $FC
    ld e, b                                       ; $6603: $58
    cp $6C                                        ; $6604: $FE $6C
    ld e, [hl]                                    ; $6606: $5E
    db $EC                                        ; $6607: $EC
    rst RST_38                                    ; $6608: $FF
    or $FF                                        ; $6609: $F6 $FF
    db $F4                                        ; $660B: $F4
    db $FC                                        ; $660C: $FC
    ld b, b                                       ; $660D: $40
    ld hl, sp-$70                                 ; $660E: $F8 $90
    db $FC                                        ; $6610: $FC
    or b                                          ; $6611: $B0
    cp h                                          ; $6612: $BC
    ld e, b                                       ; $6613: $58
    cp [hl]                                       ; $6614: $BE
    ld e, b                                       ; $6615: $58
    ld a, $EC                                     ; $6616: $3E $EC
    ld a, a                                       ; $6618: $7F
    db $EC                                        ; $6619: $EC
    rst RST_38                                    ; $661A: $FF
    or $CF                                        ; $661B: $F6 $CF
    or $FF                                        ; $661D: $F6 $FF
    and $00                                       ; $661F: $E6 $00
    nop                                           ; $6621: $00
    nop                                           ; $6622: $00
    nop                                           ; $6623: $00
    nop                                           ; $6624: $00
    nop                                           ; $6625: $00
    nop                                           ; $6626: $00
    nop                                           ; $6627: $00
    nop                                           ; $6628: $00
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
    inc c                                         ; $663A: $0C
    nop                                           ; $663B: $00
    ld d, $0C                                     ; $663C: $16 $0C
    cpl                                           ; $663E: $2F
    ld e, $01                                     ; $663F: $1E $01
    nop                                           ; $6641: $00
    ld [bc], a                                    ; $6642: $02
    ld bc, $0305                                  ; $6643: $01 $05 $03
    dec bc                                        ; $6646: $0B
    rlca                                          ; $6647: $07
    ccf                                           ; $6648: $3F
    nop                                           ; $6649: $00
    daa                                           ; $664A: $27
    jr jr_00F_668C                                ; $664B: $18 $3F

    ld a, [de]                                    ; $664D: $1A
    ld a, a                                       ; $664E: $7F
    rlca                                          ; $664F: $07
    sbc a                                         ; $6650: $9F
    ld h, a                                       ; $6651: $67
    rst RST_38                                    ; $6652: $FF
    dec bc                                        ; $6653: $0B
    ld h, a                                       ; $6654: $67
    dec sp                                        ; $6655: $3B
    ld h, a                                       ; $6656: $67
    add hl, sp                                    ; $6657: $39
    ld [hl], c                                    ; $6658: $71
    ld a, $3F                                     ; $6659: $3E $3F
    rra                                           ; $665B: $1F
    rra                                           ; $665C: $1F
    rrca                                          ; $665D: $0F
    rrca                                          ; $665E: $0F
    nop                                           ; $665F: $00
    rst RST_38                                    ; $6660: $FF

jr_00F_6661:
    jr jr_00F_6661                                ; $6661: $18 $FE

    ld e, c                                       ; $6663: $59
    rst RST_38                                    ; $6664: $FF
    add sp, -$02                                  ; $6665: $E8 $FE
    db $ED                                        ; $6667: $ED
    rst RST_38                                    ; $6668: $FF
    ld l, b                                       ; $6669: $68
    rst RST_38                                    ; $666A: $FF
    ld [hl], c                                    ; $666B: $71
    rst RST_38                                    ; $666C: $FF
    dec hl                                        ; $666D: $2B
    ccf                                           ; $666E: $3F
    jp $FCFF                                      ; $666F: $C3 $FF $FC


    rst RST_38                                    ; $6672: $FF
    ld hl, sp-$01                                 ; $6673: $F8 $FF
    nop                                           ; $6675: $00
    db $FD                                        ; $6676: $FD
    rlca                                          ; $6677: $07
    ld a, l                                       ; $6678: $7D
    scf                                           ; $6679: $37
    ld c, a                                       ; $667A: $4F
    jr nc, jr_00F_66A8                            ; $667B: $30 $2B

    ld e, $1E                                     ; $667D: $1E $1E
    nop                                           ; $667F: $00
    cp a                                          ; $6680: $BF
    ld h, c                                       ; $6681: $61
    or e                                          ; $6682: $B3
    ld l, l                                       ; $6683: $6D
    rst RST_38                                    ; $6684: $FF
    ld h, c                                       ; $6685: $61
    rst RST_20                                    ; $6686: $E7
    add hl, de                                    ; $6687: $19
    rst RST_38                                    ; $6688: $FF
    rst RST_20                                    ; $6689: $E7
    rst RST_38                                    ; $668A: $FF
    rst RST_28                                    ; $668B: $EF

jr_00F_668C:
    rst RST_38                                    ; $668C: $FF
    rst RST_18                                    ; $668D: $DF
    rst RST_38                                    ; $668E: $FF
    cp a                                          ; $668F: $BF
    rst RST_38                                    ; $6690: $FF
    ld a, a                                       ; $6691: $7F
    rst RST_38                                    ; $6692: $FF
    nop                                           ; $6693: $00
    or $18                                        ; $6694: $F6 $18
    ld e, [hl]                                    ; $6696: $5E
    ldh a, [$FF5F]                                ; $6697: $F0 $5F
    ldh [$FFF2], a                                ; $6699: $E0 $F2
    rrca                                          ; $669B: $0F
    ld a, [bc]                                    ; $669C: $0A
    rlca                                          ; $669D: $07
    rlca                                          ; $669E: $07
    nop                                           ; $669F: $00
    ret nc                                        ; $66A0: $D0

    ld h, b                                       ; $66A1: $60
    ldh a, [$FFA0]                                ; $66A2: $F0 $A0
    ldh a, [$FFC0]                                ; $66A4: $F0 $C0
    cp $E0                                        ; $66A6: $FE $E0

jr_00F_66A8:
    ld a, [$F4EC]                                 ; $66A8: $FA $EC $F4
    add sp, -$08                                  ; $66AB: $E8 $F8
    ldh [$FFF0], a                                ; $66AD: $E0 $F0
    ret nz                                        ; $66AF: $C0

    ret nc                                        ; $66B0: $D0

    and b                                         ; $66B1: $A0
    ldh a, [rP1]                                  ; $66B2: $F0 $00
    ldh a, [$FFE0]                                ; $66B4: $F0 $E0
    sub b                                         ; $66B6: $90
    ld h, b                                       ; $66B7: $60
    ldh a, [$FF60]                                ; $66B8: $F0 $60
    sub b                                         ; $66BA: $90
    ldh [$FFA0], a                                ; $66BB: $E0 $A0
    ret nz                                        ; $66BD: $C0

    ret nz                                        ; $66BE: $C0

    add b                                         ; $66BF: $80
    dec bc                                        ; $66C0: $0B
    dec b                                         ; $66C1: $05
    rla                                           ; $66C2: $17
    dec c                                         ; $66C3: $0D
    dec d                                         ; $66C4: $15
    dec bc                                        ; $66C5: $0B
    cpl                                           ; $66C6: $2F
    dec de                                        ; $66C7: $1B
    ccf                                           ; $66C8: $3F
    dec bc                                        ; $66C9: $0B
    rrca                                          ; $66CA: $0F
    ld bc, $0207                                  ; $66CB: $01 $07 $02
    rrca                                          ; $66CE: $0F
    ld [bc], a                                    ; $66CF: $02
    ld c, $05                                     ; $66D0: $0E $05
    ld e, $05                                     ; $66D2: $1E $05
    inc d                                         ; $66D4: $14
    dec bc                                        ; $66D5: $0B
    or l                                          ; $66D6: $B5
    dec bc                                        ; $66D7: $0B
    xor a                                         ; $66D8: $AF
    rla                                           ; $66D9: $17
    cp e                                          ; $66DA: $BB
    rla                                           ; $66DB: $17
    cp a                                          ; $66DC: $BF
    rlca                                          ; $66DD: $07
    push af                                       ; $66DE: $F5
    dec bc                                        ; $66DF: $0B
    ldh a, [$FF60]                                ; $66E0: $F0 $60
    ld hl, sp-$50                                 ; $66E2: $F8 $B0
    ld a, b                                       ; $66E4: $78
    or b                                          ; $66E5: $B0
    db $FC                                        ; $66E6: $FC
    ret c                                         ; $66E7: $D8

    db $FC                                        ; $66E8: $FC
    ret nc                                        ; $66E9: $D0

    ldh a, [rP1]                                  ; $66EA: $F0 $00
    ldh [rLCDC], a                                ; $66EC: $E0 $40
    ldh a, [$FFC0]                                ; $66EE: $F0 $C0
    ldh a, [$FF60]                                ; $66F0: $F0 $60
    ld hl, sp+$60                                 ; $66F2: $F8 $60
    ld hl, sp-$50                                 ; $66F4: $F8 $B0
    db $FC                                        ; $66F6: $FC
    or b                                          ; $66F7: $B0
    db $FC                                        ; $66F8: $FC
    ret c                                         ; $66F9: $D8

    ccf                                           ; $66FA: $3F
    ret c                                         ; $66FB: $D8

    db $FD                                        ; $66FC: $FD
    sbc d                                         ; $66FD: $9A
    sbc [hl]                                      ; $66FE: $9E
    ld h, e                                       ; $66FF: $63
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
    nop                                           ; $670C: $00
    nop                                           ; $670D: $00
    nop                                           ; $670E: $00
    nop                                           ; $670F: $00
    nop                                           ; $6710: $00
    nop                                           ; $6711: $00
    nop                                           ; $6712: $00
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    nop                                           ; $6715: $00
    nop                                           ; $6716: $00
    nop                                           ; $6717: $00
    jr jr_00F_671A                                ; $6718: $18 $00

jr_00F_671A:
    inc l                                         ; $671A: $2C
    jr @+$60                                      ; $671B: $18 $5E

    inc a                                         ; $671D: $3C
    sbc a                                         ; $671E: $9F
    ld l, [hl]                                    ; $671F: $6E
    add b                                         ; $6720: $80
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
    nop                                           ; $6736: $00
    nop                                           ; $6737: $00
    nop                                           ; $6738: $00
    nop                                           ; $6739: $00
    nop                                           ; $673A: $00
    nop                                           ; $673B: $00
    nop                                           ; $673C: $00
    nop                                           ; $673D: $00
    nop                                           ; $673E: $00
    nop                                           ; $673F: $00
    ld sp, hl                                     ; $6740: $F9
    ld [hl], $FF                                  ; $6741: $36 $FF
    jr nz, @-$4E                                  ; $6743: $20 $B0

    ld c, a                                       ; $6745: $4F
    add b                                         ; $6746: $80
    ld a, a                                       ; $6747: $7F
    ld b, e                                       ; $6748: $43
    inc a                                         ; $6749: $3C
    ld h, h                                       ; $674A: $64
    dec de                                        ; $674B: $1B
    ld e, a                                       ; $674C: $5F
    inc hl                                        ; $674D: $23
    ld a, [hl]                                    ; $674E: $7E
    ld sp, $112F                                  ; $674F: $31 $2F $11
    ccf                                           ; $6752: $3F
    db $10                                        ; $6753: $10
    rla                                           ; $6754: $17
    ld [$081F], sp                                ; $6755: $08 $1F $08
    dec bc                                        ; $6758: $0B
    inc b                                         ; $6759: $04
    ld c, $04                                     ; $675A: $0E $04
    ld b, $00                                     ; $675C: $06 $00
    nop                                           ; $675E: $00
    nop                                           ; $675F: $00
    ccf                                           ; $6760: $3F
    jp c, $DC37                                   ; $6761: $DA $37 $DC

    or e                                          ; $6764: $B3
    ld e, [hl]                                    ; $6765: $5E
    ld a, l                                       ; $6766: $7D
    sbc a                                         ; $6767: $9F
    rst RST_38                                    ; $6768: $FF
    rlca                                          ; $6769: $07
    and a                                         ; $676A: $A7
    ld b, c                                       ; $676B: $41
    sbc c                                         ; $676C: $99
    ld h, b                                       ; $676D: $60
    ld e, [hl]                                    ; $676E: $5E
    or b                                          ; $676F: $B0
    rst RST_08                                    ; $6770: $CF
    cp d                                          ; $6771: $BA
    ld e, a                                       ; $6772: $5F
    xor l                                         ; $6773: $AD
    rst RST_38                                    ; $6774: $FF
    xor d                                         ; $6775: $AA
    xor d                                         ; $6776: $AA
    ld d, l                                       ; $6777: $55
    rst RST_38                                    ; $6778: $FF
    ld c, d                                       ; $6779: $4A
    jp c, $7020                                   ; $677A: $DA $20 $70

    jr nz, jr_00F_67AF                            ; $677D: $20 $30

    nop                                           ; $677F: $00
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    ret nz                                        ; $6784: $C0

    nop                                           ; $6785: $00
    ret nz                                        ; $6786: $C0

    add b                                         ; $6787: $80
    ret nz                                        ; $6788: $C0

    add b                                         ; $6789: $80
    ldh [rP1], a                                  ; $678A: $E0 $00
    ldh a, [$FFA0]                                ; $678C: $F0 $A0
    ldh a, [$FFC0]                                ; $678E: $F0 $C0
    ldh a, [$FF60]                                ; $6790: $F0 $60
    ld a, h                                       ; $6792: $7C
    db $10                                        ; $6793: $10
    sbc a                                         ; $6794: $9F
    ld [$87CF], sp                                ; $6795: $08 $CF $87
    rst RST_28                                    ; $6798: $EF
    jp Jump_000_00E7                              ; $6799: $C3 $E7 $00


    rst RST_00                                    ; $679C: $C7
    add d                                         ; $679D: $82
    jp $C000                                      ; $679E: $C3 $00 $C0


jr_00F_67A1:
    nop                                           ; $67A1: $00
    ldh [$FFC0], a                                ; $67A2: $E0 $C0
    ldh a, [$FFE0]                                ; $67A4: $F0 $E0
    ldh a, [rP1]                                  ; $67A6: $F0 $00
    nop                                           ; $67A8: $00
    nop                                           ; $67A9: $00
    nop                                           ; $67AA: $00
    nop                                           ; $67AB: $00
    nop                                           ; $67AC: $00
    nop                                           ; $67AD: $00
    nop                                           ; $67AE: $00

jr_00F_67AF:
    nop                                           ; $67AF: $00
    nop                                           ; $67B0: $00
    nop                                           ; $67B1: $00
    nop                                           ; $67B2: $00
    nop                                           ; $67B3: $00
    nop                                           ; $67B4: $00
    nop                                           ; $67B5: $00
    nop                                           ; $67B6: $00
    nop                                           ; $67B7: $00
    nop                                           ; $67B8: $00
    nop                                           ; $67B9: $00
    nop                                           ; $67BA: $00
    nop                                           ; $67BB: $00
    nop                                           ; $67BC: $00
    nop                                           ; $67BD: $00
    nop                                           ; $67BE: $00
    nop                                           ; $67BF: $00
    rrca                                          ; $67C0: $0F
    inc bc                                        ; $67C1: $03
    rla                                           ; $67C2: $17
    dec bc                                        ; $67C3: $0B
    rla                                           ; $67C4: $17
    dec c                                         ; $67C5: $0D
    cpl                                           ; $67C6: $2F
    dec e                                         ; $67C7: $1D
    cpl                                           ; $67C8: $2F
    ld e, $1F                                     ; $67C9: $1E $1F
    nop                                           ; $67CB: $00
    rla                                           ; $67CC: $17
    dec c                                         ; $67CD: $0D
    rla                                           ; $67CE: $17
    dec c                                         ; $67CF: $0D
    cpl                                           ; $67D0: $2F
    dec e                                         ; $67D1: $1D
    cpl                                           ; $67D2: $2F
    dec e                                         ; $67D3: $1D
    ld e, a                                       ; $67D4: $5F
    ld a, $5F                                     ; $67D5: $3E $5F

jr_00F_67D7:
    ld a, $7F                                     ; $67D7: $3E $7F
    ld a, $FF                                     ; $67D9: $3E $FF
    ld a, b                                       ; $67DB: $78
    ld sp, hl                                     ; $67DC: $F9
    ld [hl], $FF                                  ; $67DD: $36 $FF
    jr nc, jr_00F_67A1                            ; $67DF: $30 $C0

    add b                                         ; $67E1: $80
    ret nz                                        ; $67E2: $C0

    add b                                         ; $67E3: $80
    ldh [$FFC0], a                                ; $67E4: $E0 $C0
    ldh [$FFC0], a                                ; $67E6: $E0 $C0
    ldh a, [$FFE0]                                ; $67E8: $F0 $E0
    ldh a, [$FFE0]                                ; $67EA: $F0 $E0
    ldh a, [rP1]                                  ; $67EC: $F0 $00
    ret nz                                        ; $67EE: $C0

    add b                                         ; $67EF: $80
    ret nz                                        ; $67F0: $C0

    add b                                         ; $67F1: $80
    ret nz                                        ; $67F2: $C0

    add b                                         ; $67F3: $80
    ldh [$FFC0], a                                ; $67F4: $E0 $C0
    ldh [$FFC0], a                                ; $67F6: $E0 $C0
    ldh [$FFC0], a                                ; $67F8: $E0 $C0
    db $FC                                        ; $67FA: $FC
    ldh [$FFFE], a                                ; $67FB: $E0 $FE
    inc h                                         ; $67FD: $24
    cp $04                                        ; $67FE: $FE $04
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
    nop                                           ; $6813: $00
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    nop                                           ; $6816: $00
    nop                                           ; $6817: $00
    jr nz, jr_00F_681A                            ; $6818: $20 $00

jr_00F_681A:
    ld [hl], b                                    ; $681A: $70
    jr nz, jr_00F_6895                            ; $681B: $20 $78

    jr nc, jr_00F_67D7                            ; $681D: $30 $B8

    ld [hl], b                                    ; $681F: $70
    inc bc                                        ; $6820: $03
    nop                                           ; $6821: $00
    rrca                                          ; $6822: $0F
    ld bc, $0E33                                  ; $6823: $01 $33 $0E
    ld c, a                                       ; $6826: $4F
    ld a, $FE                                     ; $6827: $3E $FE
    ld [hl], c                                    ; $6829: $71
    ld sp, hl                                     ; $682A: $F9
    rlca                                          ; $682B: $07
    rra                                           ; $682C: $1F
    ld c, $1F                                     ; $682D: $0E $1F
    ld bc, $0001                                  ; $682F: $01 $01 $00
    nop                                           ; $6832: $00
    nop                                           ; $6833: $00
    nop                                           ; $6834: $00
    nop                                           ; $6835: $00
    nop                                           ; $6836: $00
    nop                                           ; $6837: $00
    nop                                           ; $6838: $00
    nop                                           ; $6839: $00
    nop                                           ; $683A: $00
    nop                                           ; $683B: $00
    nop                                           ; $683C: $00
    nop                                           ; $683D: $00
    nop                                           ; $683E: $00
    nop                                           ; $683F: $00
    inc bc                                        ; $6840: $03
    nop                                           ; $6841: $00
    dec b                                         ; $6842: $05
    ld [bc], a                                    ; $6843: $02
    rrca                                          ; $6844: $0F
    inc b                                         ; $6845: $04
    ld l, [hl]                                    ; $6846: $6E
    inc bc                                        ; $6847: $03
    cp a                                          ; $6848: $BF
    ld c, [hl]                                    ; $6849: $4E
    rst RST_38                                    ; $684A: $FF
    ld [hl-], a                                   ; $684B: $32
    rst RST_30                                    ; $684C: $F7
    jp hl                                         ; $684D: $E9


    rst RST_38                                    ; $684E: $FF
    rlca                                          ; $684F: $07
    ld a, a                                       ; $6850: $7F
    inc e                                         ; $6851: $1C
    db $FD                                        ; $6852: $FD
    ld [hl+], a                                   ; $6853: $22
    halt                                          ; $6854: $76
    ret c                                         ; $6855: $D8

    ei                                            ; $6856: $FB
    ret nz                                        ; $6857: $C0

    add $03                                       ; $6858: $C6 $03
    rst RST_00                                    ; $685A: $C7
    add b                                         ; $685B: $80
    ret nz                                        ; $685C: $C0

    nop                                           ; $685D: $00
    nop                                           ; $685E: $00
    nop                                           ; $685F: $00
    ld a, a                                       ; $6860: $7F
    inc e                                         ; $6861: $1C
    ld a, l                                       ; $6862: $7D
    ld a, [de]                                    ; $6863: $1A
    rst RST_38                                    ; $6864: $FF
    ld d, $FF                                     ; $6865: $16 $FF
    sub c                                         ; $6867: $91
    cp [hl]                                       ; $6868: $BE
    ld b, a                                       ; $6869: $47
    pop af                                        ; $686A: $F1
    sbc a                                         ; $686B: $9F
    jp $FF7F                                      ; $686C: $C3 $7F $FF


    db $FC                                        ; $686F: $FC
    db $FC                                        ; $6870: $FC
    jp $06CF                                      ; $6871: $C3 $CF $06


    cp e                                          ; $6874: $BB
    dec c                                         ; $6875: $0D
    rst RST_28                                    ; $6876: $EF
    ld [hl-], a                                   ; $6877: $32
    cp d                                          ; $6878: $BA
    call Call_000_32EF                            ; $6879: $CD $EF $32
    ld a, d                                       ; $687C: $7A
    inc c                                         ; $687D: $0C
    inc e                                         ; $687E: $1C
    nop                                           ; $687F: $00
    nop                                           ; $6880: $00
    nop                                           ; $6881: $00
    ld bc, $0100                                  ; $6882: $01 $00 $01
    nop                                           ; $6885: $00
    ld [bc], a                                    ; $6886: $02
    ld bc, $0102                                  ; $6887: $01 $02 $01
    dec b                                         ; $688A: $05
    inc bc                                        ; $688B: $03
    dec b                                         ; $688C: $05
    inc bc                                        ; $688D: $03
    inc bc                                        ; $688E: $03
    nop                                           ; $688F: $00
    inc bc                                        ; $6890: $03
    ld bc, $0103                                  ; $6891: $01 $03 $01
    dec b                                         ; $6894: $05

jr_00F_6895:
    inc bc                                        ; $6895: $03
    rlca                                          ; $6896: $07
    inc bc                                        ; $6897: $03
    rrca                                          ; $6898: $0F
    rlca                                          ; $6899: $07
    rrca                                          ; $689A: $0F
    rlca                                          ; $689B: $07
    rra                                           ; $689C: $1F
    rrca                                          ; $689D: $0F
    ccf                                           ; $689E: $3F
    rrca                                          ; $689F: $0F
    ld b, b                                       ; $68A0: $40
    nop                                           ; $68A1: $00
    ldh [rLCDC], a                                ; $68A2: $E0 $40
    ldh a, [$FF60]                                ; $68A4: $F0 $60
    ld [hl], b                                    ; $68A6: $70
    ldh [$FFF8], a                                ; $68A7: $E0 $F8

jr_00F_68A9:
    ld [hl], b                                    ; $68A9: $70
    ld hl, sp+$70                                 ; $68AA: $F8 $70
    db $FC                                        ; $68AC: $FC
    cp b                                          ; $68AD: $B8
    db $FC                                        ; $68AE: $FC
    cp b                                          ; $68AF: $B8
    cp $DC                                        ; $68B0: $FE $DC
    cp $1C                                        ; $68B2: $FE $1C
    db $FC                                        ; $68B4: $FC
    and b                                         ; $68B5: $A0
    ld hl, sp-$50                                 ; $68B6: $F8 $B0
    ld hl, sp-$50                                 ; $68B8: $F8 $B0
    ld hl, sp-$50                                 ; $68BA: $F8 $B0
    ld hl, sp-$50                                 ; $68BC: $F8 $B0
    ld hl, sp-$50                                 ; $68BE: $F8 $B0
    ld hl, sp+$70                                 ; $68C0: $F8 $70
    ld hl, sp+$70                                 ; $68C2: $F8 $70
    ld hl, sp+$70                                 ; $68C4: $F8 $70
    ld hl, sp+$10                                 ; $68C6: $F8 $10
    cp b                                          ; $68C8: $B8
    ld b, b                                       ; $68C9: $40
    ret c                                         ; $68CA: $D8

    and b                                         ; $68CB: $A0
    ret nc                                        ; $68CC: $D0

    and b                                         ; $68CD: $A0
    ldh a, [$FF80]                                ; $68CE: $F0 $80
    ret nc                                        ; $68D0: $D0

    and b                                         ; $68D1: $A0
    ldh [rP1], a                                  ; $68D2: $E0 $00
    ldh [rLCDC], a                                ; $68D4: $E0 $40
    ldh [$FFC0], a                                ; $68D6: $E0 $C0
    ret nz                                        ; $68D8: $C0

    add b                                         ; $68D9: $80
    ret nz                                        ; $68DA: $C0

    add b                                         ; $68DB: $80
    add b                                         ; $68DC: $80
    nop                                           ; $68DD: $00
    nop                                           ; $68DE: $00
    nop                                           ; $68DF: $00
    ld bc, $0200                                  ; $68E0: $01 $00 $02
    ld bc, $0102                                  ; $68E3: $01 $02 $01
    inc bc                                        ; $68E6: $03
    ld bc, $0103                                  ; $68E7: $01 $03 $01
    inc bc                                        ; $68EA: $03
    nop                                           ; $68EB: $00
    rlca                                          ; $68EC: $07
    ld [bc], a                                    ; $68ED: $02
    ld c, $04                                     ; $68EE: $0E $04
    inc d                                         ; $68F0: $14
    ld [$182C], sp                                ; $68F1: $08 $2C $18
    ld e, b                                       ; $68F4: $58
    jr nc, jr_00F_694F                            ; $68F5: $30 $58

    jr nc, jr_00F_68A9                            ; $68F7: $30 $B0

    ld h, b                                       ; $68F9: $60
    or e                                          ; $68FA: $B3
    ld h, b                                       ; $68FB: $60
    db $FC                                        ; $68FC: $FC
    ld [hl], e                                    ; $68FD: $73
    rst RST_38                                    ; $68FE: $FF
    ld a, a                                       ; $68FF: $7F
    ldh [rP1], a                                  ; $6900: $E0 $00
    ret nc                                        ; $6902: $D0

    jr nz, @+$7A                                  ; $6903: $20 $78

    ret nc                                        ; $6905: $D0

    db $FC                                        ; $6906: $FC
    ret nc                                        ; $6907: $D0

    db $FC                                        ; $6908: $FC
    adc b                                         ; $6909: $88
    ld sp, hl                                     ; $690A: $F9
    or b                                          ; $690B: $B0
    or $E1                                        ; $690C: $F6 $E1
    jp hl                                         ; $690E: $E9


    ld b, $17                                     ; $690F: $06 $17
    ld c, $1F                                     ; $6911: $0E $1F
    ld [$001F], sp                                ; $6913: $08 $1F $00
    rrca                                          ; $6916: $0F
    ld bc, $0207                                  ; $6917: $01 $07 $02
    rlca                                          ; $691A: $07
    ld [bc], a                                    ; $691B: $02
    adc [hl]                                      ; $691C: $8E
    dec b                                         ; $691D: $05
    ld c, [hl]                                    ; $691E: $4E
    add l                                         ; $691F: $85
    ld bc, $0300                                  ; $6920: $01 $00 $03
    ld bc, $0107                                  ; $6923: $01 $07 $01
    ld b, a                                       ; $6926: $47
    ld [bc], a                                    ; $6927: $02
    or e                                          ; $6928: $B3
    ld b, c                                       ; $6929: $41
    cp l                                          ; $692A: $BD
    ld d, b                                       ; $692B: $50
    ld a, [hl]                                    ; $692C: $7E
    db $EC                                        ; $692D: $EC
    rst RST_38                                    ; $692E: $FF
    ld c, $FF                                     ; $692F: $0E $FF
    ld [bc], a                                    ; $6931: $02
    rst RST_38                                    ; $6932: $FF
    and b                                         ; $6933: $A0
    cp [hl]                                       ; $6934: $BE
    ld d, b                                       ; $6935: $50
    inc a                                         ; $6936: $3C
    add sp, $7C                                   ; $6937: $E8 $7C
    add sp, $7E                                   ; $6939: $E8 $7E
    db $F4                                        ; $693B: $F4
    cp $F4                                        ; $693C: $FE $F4
    rst RST_38                                    ; $693E: $FF
    ldh a, [$FFE0]                                ; $693F: $F0 $E0
    nop                                           ; $6941: $00
    ld [hl], b                                    ; $6942: $70
    add b                                         ; $6943: $80
    ret z                                         ; $6944: $C8

    ld [hl], b                                    ; $6945: $70
    add sp, $70                                   ; $6946: $E8 $70
    ld hl, sp+$30                                 ; $6948: $F8 $30
    ld hl, sp-$50                                 ; $694A: $F8 $B0
    ld hl, sp-$20                                 ; $694C: $F8 $E0
    db $FC                                        ; $694E: $FC

jr_00F_694F:
    ld [$040E], sp                                ; $694F: $08 $0E $04
    rlca                                          ; $6952: $07
    ld [bc], a                                    ; $6953: $02
    dec b                                         ; $6954: $05
    inc bc                                        ; $6955: $03
    ld [bc], a                                    ; $6956: $02
    ld bc, $0102                                  ; $6957: $01 $02 $01
    ld bc, $3900                                  ; $695A: $01 $00 $39
    nop                                           ; $695D: $00
    ld b, a                                       ; $695E: $47
    add hl, sp                                    ; $695F: $39
    rst RST_30                                    ; $6960: $F7
    ld a, a                                       ; $6961: $7F
    ld a, b                                       ; $6962: $78
    ccf                                           ; $6963: $3F
    ld a, [hl]                                    ; $6964: $7E
    ccf                                           ; $6965: $3F
    ccf                                           ; $6966: $3F
    rra                                           ; $6967: $1F
    rra                                           ; $6968: $1F
    rlca                                          ; $6969: $07
    rlca                                          ; $696A: $07
    nop                                           ; $696B: $00
    nop                                           ; $696C: $00
    nop                                           ; $696D: $00
    nop                                           ; $696E: $00
    nop                                           ; $696F: $00
    nop                                           ; $6970: $00
    nop                                           ; $6971: $00
    inc bc                                        ; $6972: $03
    nop                                           ; $6973: $00
    ld c, $03                                     ; $6974: $0E $03
    dec de                                        ; $6976: $1B
    inc c                                         ; $6977: $0C
    ld e, $01                                     ; $6978: $1E $01
    rlca                                          ; $697A: $07
    ld [bc], a                                    ; $697B: $02
    ld b, $00                                     ; $697C: $06 $00
    nop                                           ; $697E: $00
    nop                                           ; $697F: $00
    ld a, $C1                                     ; $6980: $3E $C1
    di                                            ; $6982: $F3
    db $ED                                        ; $6983: $ED
    ld [hl], l                                    ; $6984: $75
    xor $3F                                       ; $6985: $EE $3F
    ldh [$FFB8], a                                ; $6987: $E0 $B8
    rst RST_20                                    ; $6989: $E7
    ld hl, sp-$19                                 ; $698A: $F8 $E7
    db $FC                                        ; $698C: $FC
    dec bc                                        ; $698D: $0B
    ld e, $09                                     ; $698E: $1E $09
    ccf                                           ; $6990: $3F
    ld a, [de]                                    ; $6991: $1A
    db $FD                                        ; $6992: $FD
    ld a, [hl-]                                   ; $6993: $3A
    cp a                                          ; $6994: $BF
    jp c, $3AFD                                   ; $6995: $DA $FD $3A

    cp [hl]                                       ; $6998: $BE
    ld d, h                                       ; $6999: $54
    ld a, [$DEA4]                                 ; $699A: $FA $A4 $DE
    inc h                                         ; $699D: $24
    db $F4                                        ; $699E: $F4
    ld c, b                                       ; $699F: $48
    ld sp, hl                                     ; $69A0: $F9
    or $F5                                        ; $69A1: $F6 $F5
    xor $FF                                       ; $69A3: $EE $FF
    ldh [$FFE3], a                                ; $69A5: $E0 $E3
    inc e                                         ; $69A7: $1C
    inc bc                                        ; $69A8: $03
    db $FC                                        ; $69A9: $FC
    rlca                                          ; $69AA: $07
    ld hl, sp+$0F                                 ; $69AB: $F8 $0F
    ldh a, [c]                                    ; $69AD: $F2
    rst RST_30                                    ; $69AE: $F7
    ld a, [bc]                                    ; $69AF: $0A
    ccf                                           ; $69B0: $3F
    dec de                                        ; $69B1: $1B
    daa                                           ; $69B2: $27
    dec de                                        ; $69B3: $1B
    rra                                           ; $69B4: $1F
    dec bc                                        ; $69B5: $0B
    rla                                           ; $69B6: $17
    add hl, bc                                    ; $69B7: $09
    ld e, $0D                                     ; $69B8: $1E $0D
    dec bc                                        ; $69BA: $0B
    inc b                                         ; $69BB: $04
    rrca                                          ; $69BC: $0F
    inc b                                         ; $69BD: $04
    dec b                                         ; $69BE: $05
    ld [bc], a                                    ; $69BF: $02
    sbc a                                         ; $69C0: $9F
    ld a, a                                       ; $69C1: $7F
    db $FD                                        ; $69C2: $FD
    ld a, a                                       ; $69C3: $7F
    jp $87FF                                      ; $69C4: $C3 $FF $87


    rst RST_38                                    ; $69C7: $FF
    cp a                                          ; $69C8: $BF
    rst RST_38                                    ; $69C9: $FF
    rst RST_38                                    ; $69CA: $FF
    db $FC                                        ; $69CB: $FC
    db $FC                                        ; $69CC: $FC
    nop                                           ; $69CD: $00
    nop                                           ; $69CE: $00
    nop                                           ; $69CF: $00
    nop                                           ; $69D0: $00
    nop                                           ; $69D1: $00
    add b                                         ; $69D2: $80
    nop                                           ; $69D3: $00
    ldh [$FF80], a                                ; $69D4: $E0 $80
    cp b                                          ; $69D6: $B8
    ld h, b                                       ; $69D7: $60
    xor $98                                       ; $69D8: $EE $98
    cp e                                          ; $69DA: $BB
    ld b, [hl]                                    ; $69DB: $46
    rst RST_28                                    ; $69DC: $EF
    or b                                          ; $69DD: $B0
    ld a, h                                       ; $69DE: $7C
    adc b                                         ; $69DF: $88
    nop                                           ; $69E0: $00
    nop                                           ; $69E1: $00
    nop                                           ; $69E2: $00
    nop                                           ; $69E3: $00
    nop                                           ; $69E4: $00
    nop                                           ; $69E5: $00
    nop                                           ; $69E6: $00
    nop                                           ; $69E7: $00
    nop                                           ; $69E8: $00
    nop                                           ; $69E9: $00
    add b                                         ; $69EA: $80
    nop                                           ; $69EB: $00
    ret nz                                        ; $69EC: $C0

    add b                                         ; $69ED: $80
    ld b, b                                       ; $69EE: $40
    add b                                         ; $69EF: $80
    ld h, b                                       ; $69F0: $60
    ret nz                                        ; $69F1: $C0

    ld h, b                                       ; $69F2: $60
    ret nz                                        ; $69F3: $C0

    ldh [$FFC0], a                                ; $69F4: $E0 $C0
    ldh [$FFC0], a                                ; $69F6: $E0 $C0
    ldh [$FFC0], a                                ; $69F8: $E0 $C0
    ret nz                                        ; $69FA: $C0

    add b                                         ; $69FB: $80
    ret nz                                        ; $69FC: $C0

    add b                                         ; $69FD: $80
    add b                                         ; $69FE: $80
    nop                                           ; $69FF: $00
    call c, $1808                                 ; $6A00: $DC $08 $18
    nop                                           ; $6A03: $00
    nop                                           ; $6A04: $00
    nop                                           ; $6A05: $00
    nop                                           ; $6A06: $00
    nop                                           ; $6A07: $00
    nop                                           ; $6A08: $00
    nop                                           ; $6A09: $00
    nop                                           ; $6A0A: $00
    nop                                           ; $6A0B: $00
    nop                                           ; $6A0C: $00
    nop                                           ; $6A0D: $00
    nop                                           ; $6A0E: $00
    nop                                           ; $6A0F: $00
    nop                                           ; $6A10: $00
    nop                                           ; $6A11: $00
    nop                                           ; $6A12: $00
    nop                                           ; $6A13: $00
    nop                                           ; $6A14: $00
    nop                                           ; $6A15: $00
    nop                                           ; $6A16: $00
    nop                                           ; $6A17: $00
    nop                                           ; $6A18: $00
    nop                                           ; $6A19: $00
    nop                                           ; $6A1A: $00
    nop                                           ; $6A1B: $00
    nop                                           ; $6A1C: $00
    nop                                           ; $6A1D: $00
    nop                                           ; $6A1E: $00
    nop                                           ; $6A1F: $00
    ld a, e                                       ; $6A20: $7B
    sub b                                         ; $6A21: $90
    ld hl, sp+$40                                 ; $6A22: $F8 $40
    ld h, b                                       ; $6A24: $60
    nop                                           ; $6A25: $00
    nop                                           ; $6A26: $00
    nop                                           ; $6A27: $00
    nop                                           ; $6A28: $00
    nop                                           ; $6A29: $00
    nop                                           ; $6A2A: $00
    nop                                           ; $6A2B: $00
    nop                                           ; $6A2C: $00
    nop                                           ; $6A2D: $00
    nop                                           ; $6A2E: $00
    nop                                           ; $6A2F: $00
    nop                                           ; $6A30: $00
    nop                                           ; $6A31: $00
    nop                                           ; $6A32: $00
    nop                                           ; $6A33: $00
    nop                                           ; $6A34: $00
    nop                                           ; $6A35: $00
    nop                                           ; $6A36: $00
    nop                                           ; $6A37: $00
    nop                                           ; $6A38: $00
    nop                                           ; $6A39: $00
    nop                                           ; $6A3A: $00
    nop                                           ; $6A3B: $00
    nop                                           ; $6A3C: $00
    nop                                           ; $6A3D: $00
    nop                                           ; $6A3E: $00
    nop                                           ; $6A3F: $00
    ld bc, $0300                                  ; $6A40: $01 $00 $03
    ld bc, $0103                                  ; $6A43: $01 $03 $01
    inc bc                                        ; $6A46: $03
    ld bc, $0103                                  ; $6A47: $01 $03 $01
    inc bc                                        ; $6A4A: $03
    ld bc, $0306                                  ; $6A4B: $01 $06 $03
    dec c                                         ; $6A4E: $0D
    rlca                                          ; $6A4F: $07
    dec de                                        ; $6A50: $1B
    ld c, $33                                     ; $6A51: $0E $33
    ld e, $66                                     ; $6A53: $1E $66
    inc a                                         ; $6A55: $3C
    ld h, [hl]                                    ; $6A56: $66
    inc a                                         ; $6A57: $3C
    call $CF78                                    ; $6A58: $CD $78 $CF
    ld a, c                                       ; $6A5B: $79
    add $7F                                       ; $6A5C: $C6 $7F
    ret nz                                        ; $6A5E: $C0

    ld a, a                                       ; $6A5F: $7F
    ld [hl], b                                    ; $6A60: $70
    nop                                           ; $6A61: $00
    ld hl, sp+$70                                 ; $6A62: $F8 $70
    adc h                                         ; $6A64: $8C
    ld hl, sp+$06                                 ; $6A65: $F8 $06
    db $FC                                        ; $6A67: $FC
    rlca                                          ; $6A68: $07
    cp $03                                        ; $6A69: $FE $03
    cp $07                                        ; $6A6B: $FE $07
    db $FC                                        ; $6A6D: $FC
    rrca                                          ; $6A6E: $0F
    ei                                            ; $6A6F: $FB
    db $FC                                        ; $6A70: $FC
    rst RST_30                                    ; $6A71: $F7
    ld hl, sp+$0F                                 ; $6A72: $F8 $0F
    jr @+$11                                      ; $6A74: $18 $0F

    jr @+$11                                      ; $6A76: $18 $0F

    inc c                                         ; $6A78: $0C
    rlca                                          ; $6A79: $07
    ld b, $03                                     ; $6A7A: $06 $03
    add $03                                       ; $6A7C: $C6 $03
    db $EC                                        ; $6A7E: $EC
    rst RST_00                                    ; $6A7F: $C7
    ld bc, $0300                                  ; $6A80: $01 $00 $03
    ld bc, $0327                                  ; $6A83: $01 $27 $03
    cp $23                                        ; $6A86: $FE $23
    rst RST_18                                    ; $6A88: $DF
    ld sp, hl                                     ; $6A89: $F9
    rlca                                          ; $6A8A: $07
    cp $01                                        ; $6A8B: $FE $01
    rst RST_38                                    ; $6A8D: $FF
    nop                                           ; $6A8E: $00
    rst RST_38                                    ; $6A8F: $FF
    nop                                           ; $6A90: $00
    rst RST_38                                    ; $6A91: $FF
    nop                                           ; $6A92: $00
    rst RST_38                                    ; $6A93: $FF
    ld bc, $03FF                                  ; $6A94: $01 $FF $03
    cp $03                                        ; $6A97: $FE $03
    cp $01                                        ; $6A99: $FE $01
    rst RST_38                                    ; $6A9B: $FF
    ld bc, $03FF                                  ; $6A9C: $01 $FF $03
    db $FC                                        ; $6A9F: $FC
    ld [hl], b                                    ; $6AA0: $70
    nop                                           ; $6AA1: $00
    ld hl, sp+$70                                 ; $6AA2: $F8 $70
    adc h                                         ; $6AA4: $8C
    ld hl, sp+$06                                 ; $6AA5: $F8 $06
    db $FC                                        ; $6AA7: $FC
    ld b, $FC                                     ; $6AA8: $06 $FC
    ld b, $FC                                     ; $6AAA: $06 $FC
    ld b, $FC                                     ; $6AAC: $06 $FC
    add [hl]                                      ; $6AAE: $86
    db $FC                                        ; $6AAF: $FC
    ei                                            ; $6AB0: $FB
    ld a, [hl]                                    ; $6AB1: $7E
    db $FD                                        ; $6AB2: $FD
    add a                                         ; $6AB3: $87
    add $83                                       ; $6AB4: $C6 $83
    add $83                                       ; $6AB6: $C6 $83
    add e                                         ; $6AB8: $83
    ld bc, $0103                                  ; $6AB9: $01 $03 $01
    dec e                                         ; $6ABC: $1D
    nop                                           ; $6ABD: $00
    cp a                                          ; $6ABE: $BF
    inc e                                         ; $6ABF: $1C
    ret nz                                        ; $6AC0: $C0

    ld a, a                                       ; $6AC1: $7F
    ld h, b                                       ; $6AC2: $60
    ccf                                           ; $6AC3: $3F
    ld h, b                                       ; $6AC4: $60
    ccf                                           ; $6AC5: $3F
    jr nc, jr_00F_6AE7                            ; $6AC6: $30 $1F

    inc e                                         ; $6AC8: $1C
    rrca                                          ; $6AC9: $0F
    rrca                                          ; $6ACA: $0F
    inc bc                                        ; $6ACB: $03
    inc bc                                        ; $6ACC: $03
    nop                                           ; $6ACD: $00
    nop                                           ; $6ACE: $00
    nop                                           ; $6ACF: $00
    ld bc, $0700                                  ; $6AD0: $01 $00 $07
    ld bc, $070E                                  ; $6AD3: $01 $0E $07
    jr jr_00F_6AE7                                ; $6AD6: $18 $0F

    inc e                                         ; $6AD8: $1C
    rrca                                          ; $6AD9: $0F
    ld e, $03                                     ; $6ADA: $1E $03
    rlca                                          ; $6ADC: $07
    inc bc                                        ; $6ADD: $03
    inc bc                                        ; $6ADE: $03
    nop                                           ; $6ADF: $00
    inc a                                         ; $6AE0: $3C
    rst RST_20                                    ; $6AE1: $E7
    ld e, $F9                                     ; $6AE2: $1E $F9
    add hl, bc                                    ; $6AE4: $09
    or $0A                                        ; $6AE5: $F6 $0A

jr_00F_6AE7:
    rst RST_30                                    ; $6AE7: $F7
    rlca                                          ; $6AE8: $07
    ld hl, sp+$00                                 ; $6AE9: $F8 $00
    rst RST_38                                    ; $6AEB: $FF
    nop                                           ; $6AEC: $00
    rst RST_38                                    ; $6AED: $FF
    ldh a, [rIE]                                  ; $6AEE: $F0 $FF
    ld hl, sp+$0F                                 ; $6AF0: $F8 $0F
    ld [hl], b                                    ; $6AF2: $70
    rra                                           ; $6AF3: $1F
    ldh [$FF7F], a                                ; $6AF4: $E0 $7F
    add b                                         ; $6AF6: $80
    rst RST_38                                    ; $6AF7: $FF
    nop                                           ; $6AF8: $00
    rst RST_38                                    ; $6AF9: $FF
    ld bc, $01FF                                  ; $6AFA: $01 $FF $01
    rst RST_38                                    ; $6AFD: $FF
    add c                                         ; $6AFE: $81
    rst RST_38                                    ; $6AFF: $FF
    inc b                                         ; $6B00: $04
    ei                                            ; $6B01: $FB
    adc d                                         ; $6B02: $8A
    ld [hl], a                                    ; $6B03: $77
    adc a                                         ; $6B04: $8F
    ld [hl], b                                    ; $6B05: $70
    ld [hl], b                                    ; $6B06: $70
    adc a                                         ; $6B07: $8F
    nop                                           ; $6B08: $00
    rst RST_38                                    ; $6B09: $FF
    nop                                           ; $6B0A: $00
    rst RST_38                                    ; $6B0B: $FF
    nop                                           ; $6B0C: $00
    rst RST_38                                    ; $6B0D: $FF
    nop                                           ; $6B0E: $00
    rst RST_38                                    ; $6B0F: $FF
    ldh a, [rIE]                                  ; $6B10: $F0 $FF
    ldh a, [$FF9F]                                ; $6B12: $F0 $9F
    ret c                                         ; $6B14: $D8

    adc a                                         ; $6B15: $8F
    sbc b                                         ; $6B16: $98
    rrca                                          ; $6B17: $0F
    sbc b                                         ; $6B18: $98
    rrca                                          ; $6B19: $0F
    adc h                                         ; $6B1A: $8C
    rlca                                          ; $6B1B: $07
    inc c                                         ; $6B1C: $0C
    rlca                                          ; $6B1D: $07
    ld b, $03                                     ; $6B1E: $06 $03
    db $E3                                        ; $6B20: $E3
    ccf                                           ; $6B21: $3F
    ret nz                                        ; $6B22: $C0

    rst RST_38                                    ; $6B23: $FF
    add b                                         ; $6B24: $80
    ld a, a                                       ; $6B25: $7F
    add b                                         ; $6B26: $80
    ld a, a                                       ; $6B27: $7F

jr_00F_6B28:
    nop                                           ; $6B28: $00
    rst RST_38                                    ; $6B29: $FF

jr_00F_6B2A:
    nop                                           ; $6B2A: $00
    rst RST_38                                    ; $6B2B: $FF
    ld bc, $FFFF                                  ; $6B2C: $01 $FF $FF
    cp $FE                                        ; $6B2F: $FE $FE
    add b                                         ; $6B31: $80
    ret nz                                        ; $6B32: $C0

    add b                                         ; $6B33: $80
    ld [hl], b                                    ; $6B34: $70
    ret nz                                        ; $6B35: $C0

    inc a                                         ; $6B36: $3C
    ldh a, [rIF]                                  ; $6B37: $F0 $0F
    db $FC                                        ; $6B39: $FC
    inc bc                                        ; $6B3A: $03
    rst RST_38                                    ; $6B3B: $FF
    nop                                           ; $6B3C: $00
    rst RST_38                                    ; $6B3D: $FF
    ld bc, $80FF                                  ; $6B3E: $01 $FF $80
    nop                                           ; $6B41: $00
    ret nz                                        ; $6B42: $C0

    add b                                         ; $6B43: $80
    ld h, b                                       ; $6B44: $60
    ret nz                                        ; $6B45: $C0

    jr nc, jr_00F_6B28                            ; $6B46: $30 $E0

    jr nc, jr_00F_6B2A                            ; $6B48: $30 $E0

    sbc b                                         ; $6B4A: $98
    ldh a, [$FF98]                                ; $6B4B: $F0 $98
    ldh a, [rNR23]                                ; $6B4D: $F0 $18
    ldh a, [rNR23]                                ; $6B4F: $F0 $18
    ldh a, [rNR23]                                ; $6B51: $F0 $18
    ldh a, [$FF30]                                ; $6B53: $F0 $30
    ldh [$FF30], a                                ; $6B55: $E0 $30
    ldh [$FF60], a                                ; $6B57: $E0 $60
    ret nz                                        ; $6B59: $C0

    ret nz                                        ; $6B5A: $C0

    add b                                         ; $6B5B: $80
    add b                                         ; $6B5C: $80
    nop                                           ; $6B5D: $00
    nop                                           ; $6B5E: $00
    nop                                           ; $6B5F: $00
    db $DB                                        ; $6B60: $DB
    ld a, [hl]                                    ; $6B61: $7E
    ei                                            ; $6B62: $FB
    ld l, [hl]                                    ; $6B63: $6E
    ld a, [hl]                                    ; $6B64: $7E
    inc c                                         ; $6B65: $0C
    nop                                           ; $6B66: $00
    nop                                           ; $6B67: $00
    nop                                           ; $6B68: $00
    nop                                           ; $6B69: $00
    nop                                           ; $6B6A: $00
    nop                                           ; $6B6B: $00
    nop                                           ; $6B6C: $00
    nop                                           ; $6B6D: $00
    nop                                           ; $6B6E: $00
    nop                                           ; $6B6F: $00
    nop                                           ; $6B70: $00
    nop                                           ; $6B71: $00
    nop                                           ; $6B72: $00
    nop                                           ; $6B73: $00
    nop                                           ; $6B74: $00
    nop                                           ; $6B75: $00
    nop                                           ; $6B76: $00
    nop                                           ; $6B77: $00
    nop                                           ; $6B78: $00
    nop                                           ; $6B79: $00
    nop                                           ; $6B7A: $00
    nop                                           ; $6B7B: $00
    nop                                           ; $6B7C: $00
    nop                                           ; $6B7D: $00
    nop                                           ; $6B7E: $00
    nop                                           ; $6B7F: $00
    ld [bc], a                                    ; $6B80: $02
    rst RST_38                                    ; $6B81: $FF
    add a                                         ; $6B82: $87
    db $FD                                        ; $6B83: $FD

jr_00F_6B84:
    rst RST_08                                    ; $6B84: $CF
    ld a, h                                       ; $6B85: $7C
    ld a, h                                       ; $6B86: $7C
    jr nc, jr_00F_6B89                            ; $6B87: $30 $00

jr_00F_6B89:
    nop                                           ; $6B89: $00
    nop                                           ; $6B8A: $00
    nop                                           ; $6B8B: $00
    nop                                           ; $6B8C: $00
    nop                                           ; $6B8D: $00
    nop                                           ; $6B8E: $00
    nop                                           ; $6B8F: $00
    nop                                           ; $6B90: $00
    nop                                           ; $6B91: $00
    nop                                           ; $6B92: $00
    nop                                           ; $6B93: $00
    nop                                           ; $6B94: $00
    nop                                           ; $6B95: $00
    nop                                           ; $6B96: $00
    nop                                           ; $6B97: $00
    nop                                           ; $6B98: $00
    nop                                           ; $6B99: $00
    nop                                           ; $6B9A: $00
    nop                                           ; $6B9B: $00
    nop                                           ; $6B9C: $00
    nop                                           ; $6B9D: $00
    nop                                           ; $6B9E: $00
    nop                                           ; $6B9F: $00
    ldh [$FFC0], a                                ; $6BA0: $E0 $C0
    jr nc, jr_00F_6B84                            ; $6BA2: $30 $E0

    ld [hl], b                                    ; $6BA4: $70
    ldh [$FFE0], a                                ; $6BA5: $E0 $E0
    add b                                         ; $6BA7: $80
    ret nz                                        ; $6BA8: $C0

    add b                                         ; $6BA9: $80
    add b                                         ; $6BAA: $80
    nop                                           ; $6BAB: $00
    nop                                           ; $6BAC: $00
    nop                                           ; $6BAD: $00
    nop                                           ; $6BAE: $00
    nop                                           ; $6BAF: $00
    nop                                           ; $6BB0: $00
    nop                                           ; $6BB1: $00
    nop                                           ; $6BB2: $00
    nop                                           ; $6BB3: $00
    nop                                           ; $6BB4: $00
    nop                                           ; $6BB5: $00
    nop                                           ; $6BB6: $00
    nop                                           ; $6BB7: $00
    nop                                           ; $6BB8: $00
    nop                                           ; $6BB9: $00
    nop                                           ; $6BBA: $00
    nop                                           ; $6BBB: $00

jr_00F_6BBC:
    nop                                           ; $6BBC: $00
    nop                                           ; $6BBD: $00
    nop                                           ; $6BBE: $00
    nop                                           ; $6BBF: $00
    nop                                           ; $6BC0: $00
    nop                                           ; $6BC1: $00
    nop                                           ; $6BC2: $00
    nop                                           ; $6BC3: $00
    nop                                           ; $6BC4: $00
    nop                                           ; $6BC5: $00
    nop                                           ; $6BC6: $00
    nop                                           ; $6BC7: $00
    ldh a, [rP1]                                  ; $6BC8: $F0 $00
    jr jr_00F_6BBC                                ; $6BCA: $18 $F0

    db $FC                                        ; $6BCC: $FC
    ld hl, sp-$04                                 ; $6BCD: $F8 $FC
    jr jr_00F_6BED                                ; $6BCF: $18 $1C

    ld [$000C], sp                                ; $6BD1: $08 $0C $00
    ld c, $04                                     ; $6BD4: $0E $04
    ld c, $04                                     ; $6BD6: $0E $04
    ld c, $04                                     ; $6BD8: $0E $04
    ld c, $04                                     ; $6BDA: $0E $04
    rrca                                          ; $6BDC: $0F
    ld b, $0F                                     ; $6BDD: $06 $0F
    ld b, $00                                     ; $6BDF: $06 $00
    nop                                           ; $6BE1: $00
    nop                                           ; $6BE2: $00
    nop                                           ; $6BE3: $00
    nop                                           ; $6BE4: $00
    nop                                           ; $6BE5: $00
    nop                                           ; $6BE6: $00
    nop                                           ; $6BE7: $00
    nop                                           ; $6BE8: $00
    nop                                           ; $6BE9: $00
    nop                                           ; $6BEA: $00
    nop                                           ; $6BEB: $00
    nop                                           ; $6BEC: $00

jr_00F_6BED:
    nop                                           ; $6BED: $00
    nop                                           ; $6BEE: $00
    nop                                           ; $6BEF: $00
    nop                                           ; $6BF0: $00
    nop                                           ; $6BF1: $00
    nop                                           ; $6BF2: $00
    nop                                           ; $6BF3: $00
    nop                                           ; $6BF4: $00
    nop                                           ; $6BF5: $00
    nop                                           ; $6BF6: $00
    nop                                           ; $6BF7: $00
    nop                                           ; $6BF8: $00
    nop                                           ; $6BF9: $00
    ld bc, $0200                                  ; $6BFA: $01 $00 $02
    ld bc, $0003                                  ; $6BFD: $01 $03 $00
    ld b, $03                                     ; $6C00: $06 $03
    ld b, $03                                     ; $6C02: $06 $03
    ld b, $03                                     ; $6C04: $06 $03
    inc bc                                        ; $6C06: $03
    ld bc, $0103                                  ; $6C07: $01 $03 $01
    ld bc, $0100                                  ; $6C0A: $01 $00 $01
    nop                                           ; $6C0D: $00
    ld [bc], a                                    ; $6C0E: $02
    ld bc, $0207                                  ; $6C0F: $01 $07 $02
    dec b                                         ; $6C12: $05
    ld [bc], a                                    ; $6C13: $02
    ld c, $04                                     ; $6C14: $0E $04
    dec bc                                        ; $6C16: $0B
    inc b                                         ; $6C17: $04
    ld a, a                                       ; $6C18: $7F
    ld bc, $7ED5                                  ; $6C19: $01 $D5 $7E
    rst RST_38                                    ; $6C1C: $FF
    nop                                           ; $6C1D: $00
    nop                                           ; $6C1E: $00
    nop                                           ; $6C1F: $00
    push bc                                       ; $6C20: $C5
    add e                                         ; $6C21: $83
    db $DB                                        ; $6C22: $DB
    add a                                         ; $6C23: $87
    ld a, e                                       ; $6C24: $7B
    rst RST_10                                    ; $6C25: $D7
    ld a, a                                       ; $6C26: $7F
    rst RST_20                                    ; $6C27: $E7
    cp a                                          ; $6C28: $BF
    rst RST_28                                    ; $6C29: $EF
    rst RST_38                                    ; $6C2A: $FF
    and $FF                                       ; $6C2B: $E6 $FF
    ld h, $BF                                     ; $6C2D: $26 $BF
    add $EF                                       ; $6C2F: $C6 $EF
    ld d, h                                       ; $6C31: $54
    and [hl]                                      ; $6C32: $A6
    ld e, c                                       ; $6C33: $59
    ld [hl], b                                    ; $6C34: $70
    cpl                                           ; $6C35: $2F
    rst RST_18                                    ; $6C36: $DF
    jr nz, jr_00F_6CB8                            ; $6C37: $20 $7F

    jp $03F4                                      ; $6C39: $C3 $F4 $03


    push hl                                       ; $6C3C: $E5
    inc bc                                        ; $6C3D: $03
    inc bc                                        ; $6C3E: $03
    nop                                           ; $6C3F: $00
    ld hl, sp-$50                                 ; $6C40: $F8 $B0
    db $FC                                        ; $6C42: $FC
    ret c                                         ; $6C43: $D8

    rst RST_38                                    ; $6C44: $FF
    ret c                                         ; $6C45: $D8

    cp $D9                                        ; $6C46: $FE $D9
    rst RST_38                                    ; $6C48: $FF
    dec e                                         ; $6C49: $1D
    ccf                                           ; $6C4A: $3F
    ret nz                                        ; $6C4B: $C0

    rst RST_38                                    ; $6C4C: $FF
    rrca                                          ; $6C4D: $0F
    inc sp                                        ; $6C4E: $33
    rst RST_08                                    ; $6C4F: $CF
    pop af                                        ; $6C50: $F1
    rrca                                          ; $6C51: $0F
    dec e                                         ; $6C52: $1D
    rst RST_28                                    ; $6C53: $EF
    ld e, $EF                                     ; $6C54: $1E $EF
    cp $07                                        ; $6C56: $FE $07
    rst RST_38                                    ; $6C58: $FF
    ld [hl], e                                    ; $6C59: $73
    ei                                            ; $6C5A: $FB
    dec c                                         ; $6C5B: $0D
    ld e, a                                       ; $6C5C: $5F
    ldh a, [$FFF8]                                ; $6C5D: $F0 $F8
    nop                                           ; $6C5F: $00
    add b                                         ; $6C60: $80
    nop                                           ; $6C61: $00
    add b                                         ; $6C62: $80
    nop                                           ; $6C63: $00
    ld b, b                                       ; $6C64: $40
    add b                                         ; $6C65: $80
    ldh [rP1], a                                  ; $6C66: $E0 $00
    and b                                         ; $6C68: $A0
    ld b, b                                       ; $6C69: $40
    ldh [rLCDC], a                                ; $6C6A: $E0 $40
    ldh [$FF80], a                                ; $6C6C: $E0 $80
    ldh a, [$FFC0]                                ; $6C6E: $F0 $C0
    ldh a, [$FFA0]                                ; $6C70: $F0 $A0
    pop af                                        ; $6C72: $F1
    ret nz                                        ; $6C73: $C0

    cp $F1                                        ; $6C74: $FE $F1
    rst RST_38                                    ; $6C76: $FF
    ld a, l                                       ; $6C77: $7D
    ld a, a                                       ; $6C78: $7F
    nop                                           ; $6C79: $00
    nop                                           ; $6C7A: $00
    nop                                           ; $6C7B: $00
    nop                                           ; $6C7C: $00
    nop                                           ; $6C7D: $00
    nop                                           ; $6C7E: $00
    nop                                           ; $6C7F: $00
    ld h, b                                       ; $6C80: $60
    nop                                           ; $6C81: $00
    sub b                                         ; $6C82: $90
    ld h, b                                       ; $6C83: $60
    ld hl, sp-$10                                 ; $6C84: $F8 $F0
    db $FC                                        ; $6C86: $FC
    ld hl, sp-$04                                 ; $6C87: $F8 $FC
    nop                                           ; $6C89: $00
    nop                                           ; $6C8A: $00
    nop                                           ; $6C8B: $00
    nop                                           ; $6C8C: $00
    nop                                           ; $6C8D: $00
    nop                                           ; $6C8E: $00
    nop                                           ; $6C8F: $00
    nop                                           ; $6C90: $00
    nop                                           ; $6C91: $00
    nop                                           ; $6C92: $00
    nop                                           ; $6C93: $00
    nop                                           ; $6C94: $00
    nop                                           ; $6C95: $00
    nop                                           ; $6C96: $00
    nop                                           ; $6C97: $00
    nop                                           ; $6C98: $00
    nop                                           ; $6C99: $00
    nop                                           ; $6C9A: $00
    nop                                           ; $6C9B: $00
    nop                                           ; $6C9C: $00
    nop                                           ; $6C9D: $00
    nop                                           ; $6C9E: $00
    nop                                           ; $6C9F: $00
    nop                                           ; $6CA0: $00
    nop                                           ; $6CA1: $00
    nop                                           ; $6CA2: $00
    nop                                           ; $6CA3: $00
    nop                                           ; $6CA4: $00
    nop                                           ; $6CA5: $00
    nop                                           ; $6CA6: $00
    nop                                           ; $6CA7: $00
    ld bc, $0100                                  ; $6CA8: $01 $00 $01
    nop                                           ; $6CAB: $00
    ld [bc], a                                    ; $6CAC: $02
    ld bc, $0003                                  ; $6CAD: $01 $03 $00
    dec b                                         ; $6CB0: $05
    ld [bc], a                                    ; $6CB1: $02
    dec b                                         ; $6CB2: $05
    inc bc                                        ; $6CB3: $03
    dec bc                                        ; $6CB4: $0B
    rlca                                          ; $6CB5: $07
    dec bc                                        ; $6CB6: $0B
    rlca                                          ; $6CB7: $07

jr_00F_6CB8:
    rlca                                          ; $6CB8: $07
    nop                                           ; $6CB9: $00
    dec b                                         ; $6CBA: $05
    inc bc                                        ; $6CBB: $03
    push bc                                       ; $6CBC: $C5
    inc bc                                        ; $6CBD: $03
    res 0, a                                      ; $6CBE: $CB $87
    nop                                           ; $6CC0: $00
    nop                                           ; $6CC1: $00
    nop                                           ; $6CC2: $00
    nop                                           ; $6CC3: $00
    nop                                           ; $6CC4: $00
    nop                                           ; $6CC5: $00
    add b                                         ; $6CC6: $80
    nop                                           ; $6CC7: $00
    ret nz                                        ; $6CC8: $C0

    add b                                         ; $6CC9: $80
    ldh [$FFC0], a                                ; $6CCA: $E0 $C0
    ldh [$FFC0], a                                ; $6CCC: $E0 $C0
    ldh a, [$FFE0]                                ; $6CCE: $F0 $E0
    ldh a, [$FFE0]                                ; $6CD0: $F0 $E0
    ld hl, sp+$70                                 ; $6CD2: $F8 $70
    ld hl, sp+$70                                 ; $6CD4: $F8 $70
    db $FC                                        ; $6CD6: $FC

jr_00F_6CD7:
    cp b                                          ; $6CD7: $B8
    db $FC                                        ; $6CD8: $FC
    jr c, jr_00F_6CD7                             ; $6CD9: $38 $FC

    ld b, b                                       ; $6CDB: $40
    ldh a, [$FF60]                                ; $6CDC: $F0 $60
    ldh a, [$FF60]                                ; $6CDE: $F0 $60
    nop                                           ; $6CE0: $00
    nop                                           ; $6CE1: $00
    jr nc, jr_00F_6CE4                            ; $6CE2: $30 $00

jr_00F_6CE4:
    jr z, jr_00F_6CF6                             ; $6CE4: $28 $10

    jr z, jr_00F_6CF8                             ; $6CE6: $28 $10

    inc l                                         ; $6CE8: $2C
    jr @+$2E                                      ; $6CE9: $18 $2C

    jr jr_00F_6D29                                ; $6CEB: $18 $3C

    jr jr_00F_6D0B                                ; $6CED: $18 $1C

    ld [$081C], sp                                ; $6CEF: $08 $1C $08
    inc e                                         ; $6CF2: $1C
    nop                                           ; $6CF3: $00
    ld c, $04                                     ; $6CF4: $0E $04

jr_00F_6CF6:
    ld c, $04                                     ; $6CF6: $0E $04

jr_00F_6CF8:
    ld c, $04                                     ; $6CF8: $0E $04
    ld c, $04                                     ; $6CFA: $0E $04
    rrca                                          ; $6CFC: $0F
    ld b, $0F                                     ; $6CFD: $06 $0F
    ld b, $B1                                     ; $6CFF: $06 $B1
    ld e, a                                       ; $6D01: $5F
    rst RST_28                                    ; $6D02: $EF
    ccf                                           ; $6D03: $3F
    ld a, a                                       ; $6D04: $7F
    ccf                                           ; $6D05: $3F
    ld a, a                                       ; $6D06: $7F
    inc a                                         ; $6D07: $3C
    ld a, h                                       ; $6D08: $7C
    jr c, jr_00F_6D88                             ; $6D09: $38 $7D

jr_00F_6D0B:
    jr c, jr_00F_6D4C                             ; $6D0B: $38 $3F

    inc e                                         ; $6D0D: $1C
    rra                                           ; $6D0E: $1F
    rlca                                          ; $6D0F: $07
    rlca                                          ; $6D10: $07
    nop                                           ; $6D11: $00
    nop                                           ; $6D12: $00
    nop                                           ; $6D13: $00
    inc bc                                        ; $6D14: $03
    nop                                           ; $6D15: $00
    ld c, $03                                     ; $6D16: $0E $03
    dec de                                        ; $6D18: $1B
    inc c                                         ; $6D19: $0C
    ld e, $03                                     ; $6D1A: $1E $03
    rlca                                          ; $6D1C: $07

jr_00F_6D1D:
    nop                                           ; $6D1D: $00
    nop                                           ; $6D1E: $00
    nop                                           ; $6D1F: $00
    rst RST_38                                    ; $6D20: $FF
    sbc b                                         ; $6D21: $98
    db $FC                                        ; $6D22: $FC
    sbc e                                         ; $6D23: $9B
    rst RST_38                                    ; $6D24: $FF
    sub b                                         ; $6D25: $90
    ret c                                         ; $6D26: $D8

    daa                                           ; $6D27: $27
    and b                                         ; $6D28: $A0

jr_00F_6D29:
    ld e, a                                       ; $6D29: $5F
    ld h, b                                       ; $6D2A: $60
    rst RST_18                                    ; $6D2B: $DF
    ld [hl], e                                    ; $6D2C: $73
    call z, Call_00F_51EE                         ; $6D2D: $CC $EE $51
    rst RST_38                                    ; $6D30: $FF
    ld de, $51EE                                  ; $6D31: $11 $EE $51
    rst RST_38                                    ; $6D34: $FF
    sub b                                         ; $6D35: $90
    xor e                                         ; $6D36: $AB
    ld d, b                                       ; $6D37: $50
    ld sp, hl                                     ; $6D38: $F9
    sub b                                         ; $6D39: $90
    ret nc                                        ; $6D3A: $D0

    jr nz, jr_00F_6D1D                            ; $6D3B: $20 $E0

    ld b, b                                       ; $6D3D: $40
    ret nz                                        ; $6D3E: $C0

    nop                                           ; $6D3F: $00
    rst RST_38                                    ; $6D40: $FF
    ld l, a                                       ; $6D41: $6F
    ld hl, sp+$1F                                 ; $6D42: $F8 $1F
    cp h                                          ; $6D44: $BC
    ld e, a                                       ; $6D45: $5F
    cp a                                          ; $6D46: $BF
    ld e, a                                       ; $6D47: $5F
    ld a, a                                       ; $6D48: $7F
    adc a                                         ; $6D49: $8F
    ld a, a                                       ; $6D4A: $7F
    and b                                         ; $6D4B: $A0

jr_00F_6D4C:
    ld a, b                                       ; $6D4C: $78
    or b                                          ; $6D4D: $B0
    or $18                                        ; $6D4E: $F6 $18
    ld [hl], e                                    ; $6D50: $73
    cp [hl]                                       ; $6D51: $BE
    rst RST_38                                    ; $6D52: $FF
    sbc l                                         ; $6D53: $9D
    ld a, a                                       ; $6D54: $7F
    and b                                         ; $6D55: $A0
    db $EC                                        ; $6D56: $EC
    or b                                          ; $6D57: $B0
    ld [hl], a                                    ; $6D58: $77
    xor h                                         ; $6D59: $AC
    db $FD                                        ; $6D5A: $FD
    sub e                                         ; $6D5B: $93
    or a                                          ; $6D5C: $B7
    ld c, h                                       ; $6D5D: $4C
    db $FD                                        ; $6D5E: $FD
    ld b, e                                       ; $6D5F: $43
    db $FC                                        ; $6D60: $FC
    ldh [$FF3C], a                                ; $6D61: $E0 $3C
    add sp, -$64                                  ; $6D63: $E8 $9C
    ldh a, [$FFEC]                                ; $6D65: $F0 $EC

jr_00F_6D67:
    ld hl, sp-$04                                 ; $6D67: $F8 $FC
    ld a, b                                       ; $6D69: $78
    ld a, h                                       ; $6D6A: $7C
    jr c, jr_00F_6DE9                             ; $6D6B: $38 $7C

    jr c, jr_00F_6D67                             ; $6D6D: $38 $F8

    ld [hl], b                                    ; $6D6F: $70
    ldh a, [$FFC0]                                ; $6D70: $F0 $C0
    ret nz                                        ; $6D72: $C0

    nop                                           ; $6D73: $00
    nop                                           ; $6D74: $00
    nop                                           ; $6D75: $00
    nop                                           ; $6D76: $00
    nop                                           ; $6D77: $00
    ret nz                                        ; $6D78: $C0

    nop                                           ; $6D79: $00
    ld h, b                                       ; $6D7A: $60
    ret nz                                        ; $6D7B: $C0

    ldh [rP1], a                                  ; $6D7C: $E0 $00
    add b                                         ; $6D7E: $80
    nop                                           ; $6D7F: $00
    nop                                           ; $6D80: $00
    nop                                           ; $6D81: $00
    nop                                           ; $6D82: $00
    nop                                           ; $6D83: $00
    nop                                           ; $6D84: $00
    nop                                           ; $6D85: $00
    nop                                           ; $6D86: $00
    nop                                           ; $6D87: $00

jr_00F_6D88:
    nop                                           ; $6D88: $00
    nop                                           ; $6D89: $00
    nop                                           ; $6D8A: $00
    nop                                           ; $6D8B: $00
    nop                                           ; $6D8C: $00
    nop                                           ; $6D8D: $00
    nop                                           ; $6D8E: $00
    nop                                           ; $6D8F: $00
    nop                                           ; $6D90: $00
    nop                                           ; $6D91: $00
    nop                                           ; $6D92: $00
    nop                                           ; $6D93: $00
    nop                                           ; $6D94: $00
    nop                                           ; $6D95: $00
    ld bc, $0200                                  ; $6D96: $01 $00 $02
    ld bc, $011F                                  ; $6D99: $01 $1F $01
    rla                                           ; $6D9C: $17
    ld [$0778], sp                                ; $6D9D: $08 $78 $07
    nop                                           ; $6DA0: $00
    nop                                           ; $6DA1: $00
    nop                                           ; $6DA2: $00
    nop                                           ; $6DA3: $00
    ld bc, $0200                                  ; $6DA4: $01 $00 $02
    ld bc, $0305                                  ; $6DA7: $01 $05 $03
    rlca                                          ; $6DAA: $07
    nop                                           ; $6DAB: $00
    inc bc                                        ; $6DAC: $03
    ld bc, $0305                                  ; $6DAD: $01 $05 $03
    dec bc                                        ; $6DB0: $0B
    rlca                                          ; $6DB1: $07
    ld a, [bc]                                    ; $6DB2: $0A
    rlca                                          ; $6DB3: $07
    rla                                           ; $6DB4: $17
    rrca                                          ; $6DB5: $0F
    sub a                                         ; $6DB6: $97
    rrca                                          ; $6DB7: $0F
    xor h                                         ; $6DB8: $AC
    rra                                           ; $6DB9: $1F
    xor a                                         ; $6DBA: $AF
    rra                                           ; $6DBB: $1F
    rst RST_38                                    ; $6DBC: $FF
    inc a                                         ; $6DBD: $3C
    db $FC                                        ; $6DBE: $FC
    sbc e                                         ; $6DBF: $9B
    jr nc, jr_00F_6DC2                            ; $6DC0: $30 $00

jr_00F_6DC2:
    ld a, b                                       ; $6DC2: $78
    jr nc, @-$46                                  ; $6DC3: $30 $B8

    ld d, b                                       ; $6DC5: $50
    ld a, h                                       ; $6DC6: $7C
    ret c                                         ; $6DC7: $D8

    cp h                                          ; $6DC8: $BC
    ret c                                         ; $6DC9: $D8

    db $FC                                        ; $6DCA: $FC
    ret c                                         ; $6DCB: $D8

    cp $5C                                        ; $6DCC: $FE $5C
    cp $1C                                        ; $6DCE: $FE $1C
    cp $64                                        ; $6DD0: $FE $64
    cp $70                                        ; $6DD2: $FE $70
    ld hl, sp+$70                                 ; $6DD4: $F8 $70
    ldh a, [$FF60]                                ; $6DD6: $F0 $60
    or $60                                        ; $6DD8: $F6 $60
    push af                                       ; $6DDA: $F5
    ld h, d                                       ; $6DDB: $62
    or $63                                        ; $6DDC: $F6 $63
    rst RST_38                                    ; $6DDE: $FF
    ld h, b                                       ; $6DDF: $60
    nop                                           ; $6DE0: $00
    nop                                           ; $6DE1: $00
    nop                                           ; $6DE2: $00
    nop                                           ; $6DE3: $00
    nop                                           ; $6DE4: $00
    nop                                           ; $6DE5: $00
    nop                                           ; $6DE6: $00
    nop                                           ; $6DE7: $00
    nop                                           ; $6DE8: $00

jr_00F_6DE9:
    nop                                           ; $6DE9: $00
    nop                                           ; $6DEA: $00
    nop                                           ; $6DEB: $00
    nop                                           ; $6DEC: $00

jr_00F_6DED:
    nop                                           ; $6DED: $00
    nop                                           ; $6DEE: $00

jr_00F_6DEF:
    nop                                           ; $6DEF: $00
    nop                                           ; $6DF0: $00
    nop                                           ; $6DF1: $00
    nop                                           ; $6DF2: $00
    nop                                           ; $6DF3: $00
    nop                                           ; $6DF4: $00
    nop                                           ; $6DF5: $00
    nop                                           ; $6DF6: $00
    nop                                           ; $6DF7: $00
    ld h, b                                       ; $6DF8: $60
    nop                                           ; $6DF9: $00
    ret nc                                        ; $6DFA: $D0

    jr nz, jr_00F_6DED                            ; $6DFB: $20 $F0

    jr nz, jr_00F_6DEF                            ; $6DFD: $20 $F0

    add b                                         ; $6DFF: $80
    ld e, e                                       ; $6E00: $5B
    jr nc, @+$3A                                  ; $6E01: $30 $38

    nop                                           ; $6E03: $00
    nop                                           ; $6E04: $00
    nop                                           ; $6E05: $00
    nop                                           ; $6E06: $00
    nop                                           ; $6E07: $00
    nop                                           ; $6E08: $00
    nop                                           ; $6E09: $00
    nop                                           ; $6E0A: $00
    nop                                           ; $6E0B: $00
    nop                                           ; $6E0C: $00
    nop                                           ; $6E0D: $00
    nop                                           ; $6E0E: $00
    nop                                           ; $6E0F: $00
    nop                                           ; $6E10: $00
    nop                                           ; $6E11: $00
    nop                                           ; $6E12: $00
    nop                                           ; $6E13: $00
    nop                                           ; $6E14: $00
    nop                                           ; $6E15: $00
    nop                                           ; $6E16: $00
    nop                                           ; $6E17: $00
    nop                                           ; $6E18: $00
    nop                                           ; $6E19: $00
    nop                                           ; $6E1A: $00
    nop                                           ; $6E1B: $00
    nop                                           ; $6E1C: $00
    nop                                           ; $6E1D: $00
    nop                                           ; $6E1E: $00
    nop                                           ; $6E1F: $00
    add b                                         ; $6E20: $80
    nop                                           ; $6E21: $00
    ld h, b                                       ; $6E22: $60
    nop                                           ; $6E23: $00
    ld a, b                                       ; $6E24: $78
    jr nz, @+$40                                  ; $6E25: $20 $3E

    jr jr_00F_6E60                                ; $6E27: $18 $37

    ld e, $19                                     ; $6E29: $1E $19
    rrca                                          ; $6E2B: $0F
    jr jr_00F_6E3D                                ; $6E2C: $18 $0F

    inc c                                         ; $6E2E: $0C
    rlca                                          ; $6E2F: $07
    inc c                                         ; $6E30: $0C
    rlca                                          ; $6E31: $07
    ld b, $03                                     ; $6E32: $06 $03
    ld b, $03                                     ; $6E34: $06 $03
    inc bc                                        ; $6E36: $03
    ld bc, $0103                                  ; $6E37: $01 $03 $01
    ld bc, $0100                                  ; $6E3A: $01 $00 $01

jr_00F_6E3D:
    nop                                           ; $6E3D: $00
    nop                                           ; $6E3E: $00
    nop                                           ; $6E3F: $00
    rra                                           ; $6E40: $1F
    dec c                                         ; $6E41: $0D
    rrca                                          ; $6E42: $0F
    dec b                                         ; $6E43: $05
    rlca                                          ; $6E44: $07
    ld bc, $0103                                  ; $6E45: $01 $03 $01
    inc bc                                        ; $6E48: $03
    ld bc, $0103                                  ; $6E49: $01 $03 $01
    jp $F301                                      ; $6E4C: $C3 $01 $F3


    pop bc                                        ; $6E4F: $C1
    ccf                                           ; $6E50: $3F
    ldh a, [$FF0E]                                ; $6E51: $F0 $0E
    ld sp, hl                                     ; $6E53: $F9
    rlca                                          ; $6E54: $07
    ld hl, sp+$01                                 ; $6E55: $F8 $01
    cp $01                                        ; $6E57: $FE $01
    cp $00                                        ; $6E59: $FE $00
    rst RST_38                                    ; $6E5B: $FF
    add b                                         ; $6E5C: $80
    rst RST_38                                    ; $6E5D: $FF
    add b                                         ; $6E5E: $80
    rst RST_38                                    ; $6E5F: $FF

jr_00F_6E60:
    ld l, a                                       ; $6E60: $6F
    ret c                                         ; $6E61: $D8

    ld a, $E9                                     ; $6E62: $3E $E9
    ld e, $F1                                     ; $6E64: $1E $F1
    rrca                                          ; $6E66: $0F
    ld a, [$FC03]                                 ; $6E67: $FA $03 $FC
    add hl, bc                                    ; $6E6A: $09
    or $30                                        ; $6E6B: $F6 $30
    rst RST_08                                    ; $6E6D: $CF
    ret                                           ; $6E6E: $C9


    ld [hl], $31                                  ; $6E6F: $36 $31
    adc $EA                                       ; $6E71: $CE $EA
    dec d                                         ; $6E73: $15
    sub [hl]                                      ; $6E74: $96
    ld l, c                                       ; $6E75: $69
    halt                                          ; $6E76: $76
    adc c                                         ; $6E77: $89
    xor l                                         ; $6E78: $AD
    ld d, d                                       ; $6E79: $52
    dec [hl]                                      ; $6E7A: $35
    jp z, $F906                                   ; $6E7B: $CA $06 $F9

    nop                                           ; $6E7E: $00
    rst RST_38                                    ; $6E7F: $FF
    rst RST_38                                    ; $6E80: $FF
    ld a, [hl-]                                   ; $6E81: $3A
    inc a                                         ; $6E82: $3C
    rst RST_00                                    ; $6E83: $C7
    inc c                                         ; $6E84: $0C
    rst RST_30                                    ; $6E85: $F7
    add hl, de                                    ; $6E86: $19
    xor $9B                                       ; $6E87: $EE $9B
    ld l, h                                       ; $6E89: $6C
    ld a, l                                       ; $6E8A: $7D
    sub d                                         ; $6E8B: $92
    ld sp, hl                                     ; $6E8C: $F9
    ld d, $69                                     ; $6E8D: $16 $69
    or [hl]                                       ; $6E8F: $B6
    dec b                                         ; $6E90: $05
    ld a, [$7A85]                                 ; $6E91: $FA $85 $7A
    add h                                         ; $6E94: $84
    ld a, e                                       ; $6E95: $7B
    add d                                         ; $6E96: $82
    ld a, l                                       ; $6E97: $7D
    ld [bc], a                                    ; $6E98: $02
    db $FD                                        ; $6E99: $FD
    ld bc, $00FE                                  ; $6E9A: $01 $FE $00
    rst RST_38                                    ; $6E9D: $FF
    nop                                           ; $6E9E: $00
    rst RST_38                                    ; $6E9F: $FF
    rst RST_20                                    ; $6EA0: $E7
    ld e, e                                       ; $6EA1: $5B
    rst RST_28                                    ; $6EA2: $EF
    ld e, e                                       ; $6EA3: $5B
    rst RST_38                                    ; $6EA4: $FF
    ld d, a                                       ; $6EA5: $57
    db $FD                                        ; $6EA6: $FD
    ld b, a                                       ; $6EA7: $47
    ld a, c                                       ; $6EA8: $79
    rst RST_08                                    ; $6EA9: $CF
    ld a, c                                       ; $6EAA: $79
    rst RST_08                                    ; $6EAB: $CF
    ld [hl], c                                    ; $6EAC: $71

jr_00F_6EAD:
    rst RST_18                                    ; $6EAD: $DF
    ld a, c                                       ; $6EAE: $79
    rst RST_10                                    ; $6EAF: $D7
    ld h, [hl]                                    ; $6EB0: $66
    ld sp, hl                                     ; $6EB1: $F9
    cp c                                          ; $6EB2: $B9
    ld h, [hl]                                    ; $6EB3: $66
    xor [hl]                                      ; $6EB4: $AE
    ld d, c                                       ; $6EB5: $51
    db $D3                                        ; $6EB6: $D3
    inc l                                         ; $6EB7: $2C
    db $DD                                        ; $6EB8: $DD
    ld [hl+], a                                   ; $6EB9: $22
    ld l, e                                       ; $6EBA: $6B
    sub h                                         ; $6EBB: $94
    cp b                                          ; $6EBC: $B8
    ld b, a                                       ; $6EBD: $47
    ld h, b                                       ; $6EBE: $60
    sbc a                                         ; $6EBF: $9F
    pop af                                        ; $6EC0: $F1
    ld h, b                                       ; $6EC1: $60
    db $E3                                        ; $6EC2: $E3
    ld b, c                                       ; $6EC3: $41
    add $03                                       ; $6EC4: $C6 $03
    adc h                                         ; $6EC6: $8C
    rlca                                          ; $6EC7: $07
    sbc c                                         ; $6EC8: $99
    rrca                                          ; $6EC9: $0F
    or c                                          ; $6ECA: $B1
    rra                                           ; $6ECB: $1F
    db $E3                                        ; $6ECC: $E3
    ld a, $C3                                     ; $6ECD: $3E $C3
    ld a, [hl]                                    ; $6ECF: $7E
    add [hl]                                      ; $6ED0: $86
    db $FC                                        ; $6ED1: $FC
    add [hl]                                      ; $6ED2: $86
    ld a, h                                       ; $6ED3: $7C
    ld c, h                                       ; $6ED4: $4C
    cp b                                          ; $6ED5: $B8
    call z, Call_000_1838                         ; $6ED6: $CC $38 $18
    ldh a, [rNR23]                                ; $6ED9: $F0 $18
    ldh a, [$FF30]                                ; $6EDB: $F0 $30
    ldh [$FF30], a                                ; $6EDD: $E0 $30
    ldh [rP1], a                                  ; $6EDF: $E0 $00
    nop                                           ; $6EE1: $00
    nop                                           ; $6EE2: $00
    nop                                           ; $6EE3: $00
    nop                                           ; $6EE4: $00
    nop                                           ; $6EE5: $00
    nop                                           ; $6EE6: $00
    nop                                           ; $6EE7: $00
    nop                                           ; $6EE8: $00
    nop                                           ; $6EE9: $00
    nop                                           ; $6EEA: $00
    nop                                           ; $6EEB: $00
    nop                                           ; $6EEC: $00
    nop                                           ; $6EED: $00
    ld bc, $0200                                  ; $6EEE: $01 $00 $02
    ld bc, $0102                                  ; $6EF1: $01 $02 $01
    dec b                                         ; $6EF4: $05
    inc bc                                        ; $6EF5: $03
    dec b                                         ; $6EF6: $05
    inc bc                                        ; $6EF7: $03
    rlca                                          ; $6EF8: $07
    inc bc                                        ; $6EF9: $03
    rlca                                          ; $6EFA: $07
    inc bc                                        ; $6EFB: $03
    rlca                                          ; $6EFC: $07
    inc bc                                        ; $6EFD: $03
    inc bc                                        ; $6EFE: $03
    ld bc, $0E17                                  ; $6EFF: $01 $17 $0E
    rra                                           ; $6F02: $1F
    inc c                                         ; $6F03: $0C
    rra                                           ; $6F04: $1F
    dec c                                         ; $6F05: $0D
    rra                                           ; $6F06: $1F
    rlca                                          ; $6F07: $07
    ccf                                           ; $6F08: $3F
    db $10                                        ; $6F09: $10
    ld [hl], b                                    ; $6F0A: $70
    jr nz, jr_00F_6EAD                            ; $6F0B: $20 $A0

    ld b, b                                       ; $6F0D: $40
    ld h, b                                       ; $6F0E: $60
    ret nz                                        ; $6F0F: $C0

    ret nz                                        ; $6F10: $C0

    add b                                         ; $6F11: $80
    ret nz                                        ; $6F12: $C0

    add b                                         ; $6F13: $80
    add b                                         ; $6F14: $80
    nop                                           ; $6F15: $00
    sbc h                                         ; $6F16: $9C
    nop                                           ; $6F17: $00
    ldh [c], a                                    ; $6F18: $E2
    sbc h                                         ; $6F19: $9C
    ld sp, hl                                     ; $6F1A: $F9
    sbc [hl]                                      ; $6F1B: $9E
    rst RST_38                                    ; $6F1C: $FF
    xor a                                         ; $6F1D: $AF
    ei                                            ; $6F1E: $FB
    or a                                          ; $6F1F: $B7
    ldh [$FF80], a                                ; $6F20: $E0 $80
    ldh [c], a                                    ; $6F22: $E2
    ld b, b                                       ; $6F23: $40
    call $B582                                    ; $6F24: $CD $82 $B5
    ld a, [bc]                                    ; $6F27: $0A
    ld c, e                                       ; $6F28: $4B
    scf                                           ; $6F29: $37
    cp a                                          ; $6F2A: $BF
    ld [hl], b                                    ; $6F2B: $70
    rst RST_38                                    ; $6F2C: $FF
    ld b, b                                       ; $6F2D: $40
    rst RST_38                                    ; $6F2E: $FF
    dec b                                         ; $6F2F: $05
    ld a, l                                       ; $6F30: $7D
    ld a, [bc]                                    ; $6F31: $0A
    add hl, sp                                    ; $6F32: $39
    rla                                           ; $6F33: $17
    dec sp                                        ; $6F34: $3B
    rla                                           ; $6F35: $17
    ld [hl], e                                    ; $6F36: $73
    cpl                                           ; $6F37: $2F
    ld [hl], a                                    ; $6F38: $77
    cpl                                           ; $6F39: $2F
    rst RST_30                                    ; $6F3A: $F7
    rrca                                          ; $6F3B: $0F
    sbc a                                         ; $6F3C: $9F
    ld l, a                                       ; $6F3D: $6F
    xor a                                         ; $6F3E: $AF
    ld [hl], a                                    ; $6F3F: $77
    ccf                                           ; $6F40: $3F
    dec bc                                        ; $6F41: $0B
    ccf                                           ; $6F42: $3F
    ld de, $0D9F                                  ; $6F43: $11 $9F $0D
    rst RST_28                                    ; $6F46: $EF
    add a                                         ; $6F47: $87
    rst RST_30                                    ; $6F48: $F7
    ld h, b                                       ; $6F49: $60
    db $FC                                        ; $6F4A: $FC
    ld [hl], b                                    ; $6F4B: $70
    db $FC                                        ; $6F4C: $FC
    db $10                                        ; $6F4D: $10
    db $FC                                        ; $6F4E: $FC
    nop                                           ; $6F4F: $00
    db $FC                                        ; $6F50: $FC
    add b                                         ; $6F51: $80
    db $FC                                        ; $6F52: $FC
    ld c, b                                       ; $6F53: $48
    db $FC                                        ; $6F54: $FC
    ld c, b                                       ; $6F55: $48
    db $FD                                        ; $6F56: $FD
    sbc b                                         ; $6F57: $98
    cp $99                                        ; $6F58: $FE $99
    db $FC                                        ; $6F5A: $FC
    xor e                                         ; $6F5B: $AB
    rst RST_28                                    ; $6F5C: $EF
    cp e                                          ; $6F5D: $BB
    xor $7B                                       ; $6F5E: $EE $7B
    ld b, b                                       ; $6F60: $40
    add b                                         ; $6F61: $80
    ret nz                                        ; $6F62: $C0

    add b                                         ; $6F63: $80
    ret nz                                        ; $6F64: $C0

    add b                                         ; $6F65: $80
    ret nz                                        ; $6F66: $C0

    nop                                           ; $6F67: $00
    ldh [rLCDC], a                                ; $6F68: $E0 $40
    ld [hl], b                                    ; $6F6A: $70
    jr nz, jr_00F_6FA5                            ; $6F6B: $20 $38

    db $10                                        ; $6F6D: $10
    inc l                                         ; $6F6E: $2C
    jr jr_00F_6F87                                ; $6F6F: $18 $16

    inc c                                         ; $6F71: $0C
    ld [de], a                                    ; $6F72: $12
    inc c                                         ; $6F73: $0C
    dec de                                        ; $6F74: $1B
    ld b, $DB                                     ; $6F75: $06 $DB
    ld b, $3F                                     ; $6F77: $06 $3F
    adc $FF                                       ; $6F79: $CE $FF
    adc $FF                                       ; $6F7B: $CE $FF
    xor [hl]                                      ; $6F7D: $AE
    ld a, [hl]                                    ; $6F7E: $7E
    xor h                                         ; $6F7F: $AC
    nop                                           ; $6F80: $00
    nop                                           ; $6F81: $00
    nop                                           ; $6F82: $00

jr_00F_6F83:
    nop                                           ; $6F83: $00
    nop                                           ; $6F84: $00
    nop                                           ; $6F85: $00
    ld [bc], a                                    ; $6F86: $02

jr_00F_6F87:
    nop                                           ; $6F87: $00
    inc b                                         ; $6F88: $04
    nop                                           ; $6F89: $00
    inc c                                         ; $6F8A: $0C
    nop                                           ; $6F8B: $00
    jr jr_00F_6F8E                                ; $6F8C: $18 $00

jr_00F_6F8E:
    jr c, jr_00F_6FA0                             ; $6F8E: $38 $10

    ld [hl], b                                    ; $6F90: $70
    jr nz, jr_00F_6F83                            ; $6F91: $20 $F0

    ld h, b                                       ; $6F93: $60
    ldh [$FFC0], a                                ; $6F94: $E0 $C0
    ld h, b                                       ; $6F96: $60
    ret nz                                        ; $6F97: $C0

    ret nz                                        ; $6F98: $C0

    add b                                         ; $6F99: $80
    ret nz                                        ; $6F9A: $C0

    add b                                         ; $6F9B: $80
    add b                                         ; $6F9C: $80
    nop                                           ; $6F9D: $00
    add b                                         ; $6F9E: $80
    nop                                           ; $6F9F: $00

jr_00F_6FA0:
    nop                                           ; $6FA0: $00
    nop                                           ; $6FA1: $00
    nop                                           ; $6FA2: $00
    nop                                           ; $6FA3: $00
    nop                                           ; $6FA4: $00

jr_00F_6FA5:
    nop                                           ; $6FA5: $00
    nop                                           ; $6FA6: $00
    nop                                           ; $6FA7: $00
    nop                                           ; $6FA8: $00
    nop                                           ; $6FA9: $00
    nop                                           ; $6FAA: $00
    nop                                           ; $6FAB: $00
    nop                                           ; $6FAC: $00
    nop                                           ; $6FAD: $00
    nop                                           ; $6FAE: $00
    nop                                           ; $6FAF: $00
    nop                                           ; $6FB0: $00
    nop                                           ; $6FB1: $00
    nop                                           ; $6FB2: $00
    nop                                           ; $6FB3: $00
    nop                                           ; $6FB4: $00
    nop                                           ; $6FB5: $00
    nop                                           ; $6FB6: $00
    nop                                           ; $6FB7: $00
    nop                                           ; $6FB8: $00
    nop                                           ; $6FB9: $00
    inc e                                         ; $6FBA: $1C
    nop                                           ; $6FBB: $00
    ld a, [hl-]                                   ; $6FBC: $3A
    inc b                                         ; $6FBD: $04
    ld c, a                                       ; $6FBE: $4F
    ld a, [hl-]                                   ; $6FBF: $3A
    nop                                           ; $6FC0: $00
    nop                                           ; $6FC1: $00
    nop                                           ; $6FC2: $00
    nop                                           ; $6FC3: $00
    nop                                           ; $6FC4: $00
    nop                                           ; $6FC5: $00
    nop                                           ; $6FC6: $00
    nop                                           ; $6FC7: $00
    nop                                           ; $6FC8: $00
    nop                                           ; $6FC9: $00
    nop                                           ; $6FCA: $00
    nop                                           ; $6FCB: $00
    nop                                           ; $6FCC: $00
    nop                                           ; $6FCD: $00
    nop                                           ; $6FCE: $00
    nop                                           ; $6FCF: $00
    nop                                           ; $6FD0: $00

jr_00F_6FD1:
    nop                                           ; $6FD1: $00
    nop                                           ; $6FD2: $00
    nop                                           ; $6FD3: $00
    nop                                           ; $6FD4: $00
    nop                                           ; $6FD5: $00
    nop                                           ; $6FD6: $00
    nop                                           ; $6FD7: $00
    nop                                           ; $6FD8: $00
    nop                                           ; $6FD9: $00
    jr c, jr_00F_6FDC                             ; $6FDA: $38 $00

jr_00F_6FDC:
    ld e, h                                       ; $6FDC: $5C
    jr nz, jr_00F_6FD1                            ; $6FDD: $20 $F2

    ld e, h                                       ; $6FDF: $5C
    rst RST_38                                    ; $6FE0: $FF
    ld b, d                                       ; $6FE1: $42
    rst RST_38                                    ; $6FE2: $FF
    ld b, b                                       ; $6FE3: $40
    rst RST_38                                    ; $6FE4: $FF
    ld b, b                                       ; $6FE5: $40
    cp $41                                        ; $6FE6: $FE $41
    db $FC                                        ; $6FE8: $FC
    inc sp                                        ; $6FE9: $33
    ld [hl], b                                    ; $6FEA: $70
    rrca                                          ; $6FEB: $0F
    add hl, de                                    ; $6FEC: $19
    ld b, $17                                     ; $6FED: $06 $17
    ld [$0C1F], sp                                ; $6FEF: $08 $1F $0C
    dec bc                                        ; $6FF2: $0B
    inc b                                         ; $6FF3: $04
    rrca                                          ; $6FF4: $0F
    inc b                                         ; $6FF5: $04
    dec b                                         ; $6FF6: $05
    ld [bc], a                                    ; $6FF7: $02
    rlca                                          ; $6FF8: $07
    ld [bc], a                                    ; $6FF9: $02
    ld [bc], a                                    ; $6FFA: $02
    ld bc, $0103                                  ; $6FFB: $01 $03 $01
    ld bc, $0000                                  ; $6FFE: $01 $00 $00
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    nop                                           ; $7005: $00
    nop                                           ; $7006: $00
    nop                                           ; $7007: $00
    nop                                           ; $7008: $00
    nop                                           ; $7009: $00
    nop                                           ; $700A: $00
    nop                                           ; $700B: $00
    nop                                           ; $700C: $00
    nop                                           ; $700D: $00
    ld bc, $0100                                  ; $700E: $01 $00 $01
    nop                                           ; $7011: $00
    ld [bc], a                                    ; $7012: $02
    ld bc, $0102                                  ; $7013: $01 $02 $01
    dec b                                         ; $7016: $05
    inc bc                                        ; $7017: $03
    dec b                                         ; $7018: $05
    inc bc                                        ; $7019: $03
    dec bc                                        ; $701A: $0B
    rlca                                          ; $701B: $07
    ld a, a                                       ; $701C: $7F
    rlca                                          ; $701D: $07
    rst RST_38                                    ; $701E: $FF
    ld [hl], $2F                                  ; $701F: $36 $2F
    dec de                                        ; $7021: $1B
    ld d, a                                       ; $7022: $57
    dec sp                                        ; $7023: $3B
    cp a                                          ; $7024: $BF
    ld a, e                                       ; $7025: $7B
    rst RST_38                                    ; $7026: $FF
    dec de                                        ; $7027: $1B
    ld a, a                                       ; $7028: $7F
    inc hl                                        ; $7029: $23
    cp a                                          ; $702A: $BF
    ld l, b                                       ; $702B: $68
    ld a, a                                       ; $702C: $7F
    db $EC                                        ; $702D: $EC
    ld a, [hl]                                    ; $702E: $7E
    db $EC                                        ; $702F: $EC
    sbc $EC                                       ; $7030: $DE $EC
    cp $DC                                        ; $7032: $FE $DC
    cp $DC                                        ; $7034: $FE $DC
    ld a, $DC                                     ; $7036: $3E $DC
    cp $DC                                        ; $7038: $FE $DC
    cp $1C                                        ; $703A: $FE $1C
    ccf                                           ; $703C: $3F
    call c, Call_000_00FF                         ; $703D: $DC $FF $00
    add b                                         ; $7040: $80
    nop                                           ; $7041: $00
    add b                                         ; $7042: $80
    nop                                           ; $7043: $00
    add b                                         ; $7044: $80
    nop                                           ; $7045: $00
    ret nz                                        ; $7046: $C0

    add b                                         ; $7047: $80
    ret nz                                        ; $7048: $C0

    add b                                         ; $7049: $80
    ret nz                                        ; $704A: $C0

    add b                                         ; $704B: $80
    add b                                         ; $704C: $80
    nop                                           ; $704D: $00
    nop                                           ; $704E: $00
    nop                                           ; $704F: $00
    nop                                           ; $7050: $00
    nop                                           ; $7051: $00
    nop                                           ; $7052: $00
    nop                                           ; $7053: $00
    nop                                           ; $7054: $00
    nop                                           ; $7055: $00
    nop                                           ; $7056: $00
    nop                                           ; $7057: $00
    nop                                           ; $7058: $00
    nop                                           ; $7059: $00
    nop                                           ; $705A: $00
    nop                                           ; $705B: $00
    add b                                         ; $705C: $80
    nop                                           ; $705D: $00
    ld b, b                                       ; $705E: $40
    add b                                         ; $705F: $80
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    nop                                           ; $7062: $00
    nop                                           ; $7063: $00
    nop                                           ; $7064: $00
    nop                                           ; $7065: $00
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    nop                                           ; $7068: $00
    nop                                           ; $7069: $00
    nop                                           ; $706A: $00
    nop                                           ; $706B: $00
    nop                                           ; $706C: $00
    nop                                           ; $706D: $00
    nop                                           ; $706E: $00
    nop                                           ; $706F: $00
    nop                                           ; $7070: $00
    nop                                           ; $7071: $00
    nop                                           ; $7072: $00
    nop                                           ; $7073: $00
    nop                                           ; $7074: $00
    nop                                           ; $7075: $00
    nop                                           ; $7076: $00
    nop                                           ; $7077: $00
    nop                                           ; $7078: $00
    nop                                           ; $7079: $00
    ld b, $00                                     ; $707A: $06 $00
    rrca                                          ; $707C: $0F
    ld b, $17                                     ; $707D: $06 $17
    ld a, [bc]                                    ; $707F: $0A
    cpl                                           ; $7080: $2F
    jp nc, Jump_000_0DF3                          ; $7081: $D2 $F3 $0D

    ld de, $19EE                                  ; $7084: $11 $EE $19
    and $FF                                       ; $7087: $E6 $FF
    ld bc, $FF01                                  ; $7089: $01 $01 $FF
    rst RST_08                                    ; $708C: $CF
    ccf                                           ; $708D: $3F
    or e                                          ; $708E: $B3
    ld c, a                                       ; $708F: $4F
    db $FC                                        ; $7090: $FC
    ld b, e                                       ; $7091: $43
    ldh [$FF1F], a                                ; $7092: $E0 $1F
    ld sp, hl                                     ; $7094: $F9
    daa                                           ; $7095: $27
    rst RST_28                                    ; $7096: $EF
    db $10                                        ; $7097: $10
    rst RST_38                                    ; $7098: $FF
    ld [de], a                                    ; $7099: $12
    or [hl]                                       ; $709A: $B6
    ld [$089C], sp                                ; $709B: $08 $9C $08
    inc c                                         ; $709E: $0C
    nop                                           ; $709F: $00
    ret nz                                        ; $70A0: $C0

    add b                                         ; $70A1: $80
    ldh [rP1], a                                  ; $70A2: $E0 $00
    ldh a, [$FFA0]                                ; $70A4: $F0 $A0
    ld hl, sp-$40                                 ; $70A6: $F8 $C0
    db $FC                                        ; $70A8: $FC
    add sp, -$04                                  ; $70A9: $E8 $FC
    ldh a, [$FFFC]                                ; $70AB: $F0 $FC
    ld hl, sp-$02                                 ; $70AD: $F8 $FE
    db $FC                                        ; $70AF: $FC
    rst RST_38                                    ; $70B0: $FF
    cp $3F                                        ; $70B1: $FE $3F
    rst RST_38                                    ; $70B3: $FF
    rst RST_38                                    ; $70B4: $FF
    rst RST_38                                    ; $70B5: $FF
    rrca                                          ; $70B6: $0F
    rst RST_38                                    ; $70B7: $FF
    pop hl                                        ; $70B8: $E1
    rra                                           ; $70B9: $1F
    cp a                                          ; $70BA: $BF
    nop                                           ; $70BB: $00
    nop                                           ; $70BC: $00
    nop                                           ; $70BD: $00
    nop                                           ; $70BE: $00
    nop                                           ; $70BF: $00
    ldh [rP1], a                                  ; $70C0: $E0 $00
    ld hl, sp-$20                                 ; $70C2: $F8 $E0
    db $FC                                        ; $70C4: $FC
    ld hl, sp-$04                                 ; $70C5: $F8 $FC
    ldh a, [$FFF0]                                ; $70C7: $F0 $F0
    nop                                           ; $70C9: $00
    nop                                           ; $70CA: $00
    nop                                           ; $70CB: $00
    nop                                           ; $70CC: $00
    nop                                           ; $70CD: $00
    nop                                           ; $70CE: $00
    nop                                           ; $70CF: $00
    nop                                           ; $70D0: $00
    nop                                           ; $70D1: $00
    nop                                           ; $70D2: $00
    nop                                           ; $70D3: $00
    nop                                           ; $70D4: $00
    nop                                           ; $70D5: $00
    nop                                           ; $70D6: $00
    nop                                           ; $70D7: $00
    nop                                           ; $70D8: $00
    nop                                           ; $70D9: $00
    nop                                           ; $70DA: $00
    nop                                           ; $70DB: $00
    nop                                           ; $70DC: $00
    nop                                           ; $70DD: $00
    nop                                           ; $70DE: $00
    nop                                           ; $70DF: $00
    cpl                                           ; $70E0: $2F
    jp nc, Jump_000_0DF3                          ; $70E1: $D2 $F3 $0D

    ld de, $19EE                                  ; $70E4: $11 $EE $19
    and $F7                                       ; $70E7: $E6 $F7
    ld bc, $D33F                                  ; $70E9: $01 $3F $D3
    rst RST_38                                    ; $70EC: $FF
    ret c                                         ; $70ED: $D8

    sbc [hl]                                      ; $70EE: $9E
    ld l, h                                       ; $70EF: $6C
    rst RST_38                                    ; $70F0: $FF
    ld l, [hl]                                    ; $70F1: $6E
    sub $2B                                       ; $70F2: $D6 $2B
    rst RST_38                                    ; $70F4: $FF
    ld a, [hl+]                                   ; $70F5: $2A
    ld [$FF15], a                                 ; $70F6: $EA $15 $FF
    ld [de], a                                    ; $70F9: $12
    or [hl]                                       ; $70FA: $B6
    ld [$089C], sp                                ; $70FB: $08 $9C $08
    inc c                                         ; $70FE: $0C
    nop                                           ; $70FF: $00
    ret nz                                        ; $7100: $C0

    add b                                         ; $7101: $80
    ldh [rP1], a                                  ; $7102: $E0 $00
    ldh a, [$FFA0]                                ; $7104: $F0 $A0
    ld hl, sp-$40                                 ; $7106: $F8 $C0
    sbc h                                         ; $7108: $9C
    add sp, -$34                                  ; $7109: $E8 $CC
    ldh a, [$FFF4]                                ; $710B: $F0 $F4
    ld hl, sp-$02                                 ; $710D: $F8 $FE
    inc a                                         ; $710F: $3C
    ccf                                           ; $7110: $3F
    ld c, $8F                                     ; $7111: $0E $8F
    inc bc                                        ; $7113: $03
    jp $A380                                      ; $7114: $C3 $80 $A3


    ld b, c                                       ; $7117: $41
    pop af                                        ; $7118: $F1
    and b                                         ; $7119: $A0
    or b                                          ; $711A: $B0
    nop                                           ; $711B: $00
    nop                                           ; $711C: $00
    nop                                           ; $711D: $00
    nop                                           ; $711E: $00
    nop                                           ; $711F: $00
    ldh [rP1], a                                  ; $7120: $E0 $00
    sbc b                                         ; $7122: $98
    ldh [$FFFC], a                                ; $7123: $E0 $FC
    ld hl, sp-$04                                 ; $7125: $F8 $FC
    db $10                                        ; $7127: $10
    jr nc, jr_00F_712A                            ; $7128: $30 $00

jr_00F_712A:
    nop                                           ; $712A: $00
    nop                                           ; $712B: $00
    nop                                           ; $712C: $00
    nop                                           ; $712D: $00
    nop                                           ; $712E: $00
    nop                                           ; $712F: $00
    nop                                           ; $7130: $00
    nop                                           ; $7131: $00
    nop                                           ; $7132: $00
    nop                                           ; $7133: $00
    nop                                           ; $7134: $00
    nop                                           ; $7135: $00
    nop                                           ; $7136: $00
    nop                                           ; $7137: $00
    nop                                           ; $7138: $00
    nop                                           ; $7139: $00
    nop                                           ; $713A: $00
    nop                                           ; $713B: $00
    nop                                           ; $713C: $00
    nop                                           ; $713D: $00
    nop                                           ; $713E: $00
    nop                                           ; $713F: $00
    rra                                           ; $7140: $1F
    nop                                           ; $7141: $00
    pop hl                                        ; $7142: $E1
    ld e, $06                                     ; $7143: $1E $06
    ld hl, sp+$18                                 ; $7145: $F8 $18
    ldh [rNR41], a                                ; $7147: $E0 $20
    ret nz                                        ; $7149: $C0

    ld b, b                                       ; $714A: $40
    add b                                         ; $714B: $80
    add c                                         ; $714C: $81
    nop                                           ; $714D: $00
    ld [bc], a                                    ; $714E: $02
    ld bc, $0305                                  ; $714F: $01 $05 $03
    add hl, bc                                    ; $7152: $09
    ld b, $0B                                     ; $7153: $06 $0B
    dec b                                         ; $7155: $05
    rla                                           ; $7156: $17
    dec c                                         ; $7157: $0D
    dec d                                         ; $7158: $15
    dec bc                                        ; $7159: $0B
    cpl                                           ; $715A: $2F
    dec de                                        ; $715B: $1B
    ccf                                           ; $715C: $3F
    dec bc                                        ; $715D: $0B
    adc a                                         ; $715E: $8F
    ld bc, $0060                                  ; $715F: $01 $60 $00
    and b                                         ; $7162: $A0
    ld b, b                                       ; $7163: $40
    ld b, a                                       ; $7164: $47
    add b                                         ; $7165: $80
    ld e, b                                       ; $7166: $58
    add a                                         ; $7167: $87
    ldh [c], a                                    ; $7168: $E2
    rra                                           ; $7169: $1F
    adc h                                         ; $716A: $8C
    ld a, a                                       ; $716B: $7F
    jr c, @+$01                                   ; $716C: $38 $FF

    pop af                                        ; $716E: $F1
    cp $E2                                        ; $716F: $FE $E2
    db $FC                                        ; $7171: $FC
    db $E4                                        ; $7172: $E4
    ld hl, sp-$38                                 ; $7173: $F8 $C8
    ldh a, [$FFD0]                                ; $7175: $F0 $D0
    ldh [$FFA0], a                                ; $7177: $E0 $A0
    ret nz                                        ; $7179: $C0

    ret nz                                        ; $717A: $C0

    add b                                         ; $717B: $80
    ret nz                                        ; $717C: $C0

    add b                                         ; $717D: $80
    add c                                         ; $717E: $81
    nop                                           ; $717F: $00
    nop                                           ; $7180: $00
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00
    nop                                           ; $7183: $00
    ld bc, $0200                                  ; $7184: $01 $00 $02
    ld bc, $0306                                  ; $7187: $01 $06 $03
    inc c                                         ; $718A: $0C
    rlca                                          ; $718B: $07
    inc e                                         ; $718C: $1C
    rrca                                          ; $718D: $0F
    jr c, jr_00F_71AF                             ; $718E: $38 $1F

    ld a, c                                       ; $7190: $79
    ccf                                           ; $7191: $3F
    di                                            ; $7192: $F3
    ld a, a                                       ; $7193: $7F
    rst RST_30                                    ; $7194: $F7
    ld a, a                                       ; $7195: $7F
    rst RST_38                                    ; $7196: $FF
    rst RST_38                                    ; $7197: $FF
    rst RST_38                                    ; $7198: $FF
    rst RST_38                                    ; $7199: $FF
    rst RST_38                                    ; $719A: $FF
    rst RST_38                                    ; $719B: $FF
    rst RST_38                                    ; $719C: $FF
    rst RST_38                                    ; $719D: $FF
    rst RST_38                                    ; $719E: $FF
    db $FD                                        ; $719F: $FD
    inc bc                                        ; $71A0: $03
    ld bc, $0103                                  ; $71A1: $01 $03 $01
    rlca                                          ; $71A4: $07
    inc bc                                        ; $71A5: $03
    rlca                                          ; $71A6: $07
    inc bc                                        ; $71A7: $03
    rrca                                          ; $71A8: $0F
    rlca                                          ; $71A9: $07
    rrca                                          ; $71AA: $0F
    rlca                                          ; $71AB: $07
    rra                                           ; $71AC: $1F
    rrca                                          ; $71AD: $0F
    rra                                           ; $71AE: $1F

jr_00F_71AF:
    rrca                                          ; $71AF: $0F
    ccf                                           ; $71B0: $3F
    dec e                                         ; $71B1: $1D
    ccf                                           ; $71B2: $3F
    add hl, de                                    ; $71B3: $19
    dec sp                                        ; $71B4: $3B
    ld de, $2173                                  ; $71B5: $11 $73 $21
    ld [hl], e                                    ; $71B8: $73
    ld hl, $0163                                  ; $71B9: $21 $63 $01
    ld bc, $0000                                  ; $71BC: $01 $00 $00
    nop                                           ; $71BF: $00
    rst RST_38                                    ; $71C0: $FF
    or $FE                                        ; $71C1: $F6 $FE
    db $E4                                        ; $71C3: $E4
    cp $E4                                        ; $71C4: $FE $E4
    cp $CC                                        ; $71C6: $FE $CC
    db $FC                                        ; $71C8: $FC
    ret z                                         ; $71C9: $C8

    call c, $DC88                                 ; $71CA: $DC $88 $DC
    adc b                                         ; $71CD: $88
    sbc b                                         ; $71CE: $98
    nop                                           ; $71CF: $00
    add b                                         ; $71D0: $80
    nop                                           ; $71D1: $00
    ld bc, $0100                                  ; $71D2: $01 $00 $01
    nop                                           ; $71D5: $00
    inc bc                                        ; $71D6: $03
    ld bc, $0103                                  ; $71D7: $01 $03 $01
    rlca                                          ; $71DA: $07
    ld [bc], a                                    ; $71DB: $02
    ld b, $00                                     ; $71DC: $06 $00
    nop                                           ; $71DE: $00
    nop                                           ; $71DF: $00
    dec b                                         ; $71E0: $05
    ld [bc], a                                    ; $71E1: $02
    ld a, [bc]                                    ; $71E2: $0A
    inc b                                         ; $71E3: $04
    ld a, [de]                                    ; $71E4: $1A
    inc c                                         ; $71E5: $0C
    scf                                           ; $71E6: $37
    jr jr_00F_721E                                ; $71E7: $18 $35

    ld a, [de]                                    ; $71E9: $1A
    ld [hl], d                                    ; $71EA: $72
    inc a                                         ; $71EB: $3C
    ld l, a                                       ; $71EC: $6F

jr_00F_71ED:
    jr c, jr_00F_71ED                             ; $71ED: $38 $FE

    ld [hl], l                                    ; $71EF: $75
    rst RST_38                                    ; $71F0: $FF
    ld a, h                                       ; $71F1: $7C
    rst RST_38                                    ; $71F2: $FF
    db $FC                                        ; $71F3: $FC
    rst RST_38                                    ; $71F4: $FF
    db $FC                                        ; $71F5: $FC
    rst RST_38                                    ; $71F6: $FF
    xor [hl]                                      ; $71F7: $AE
    rst RST_38                                    ; $71F8: $FF
    ld c, [hl]                                    ; $71F9: $4E
    ld e, a                                       ; $71FA: $5F
    ld c, $1F                                     ; $71FB: $0E $1F
    nop                                           ; $71FD: $00
    ld bc, $0F00                                  ; $71FE: $01 $00 $0F
    inc b                                         ; $7201: $04
    rra                                           ; $7202: $1F
    dec b                                         ; $7203: $05
    dec e                                         ; $7204: $1D
    ld a, [bc]                                    ; $7205: $0A
    dec a                                         ; $7206: $3D
    ld a, [bc]                                    ; $7207: $0A
    add hl, hl                                    ; $7208: $29
    rla                                           ; $7209: $17
    ld l, e                                       ; $720A: $6B
    rla                                           ; $720B: $17
    ld e, a                                       ; $720C: $5F
    cpl                                           ; $720D: $2F
    or $2F                                        ; $720E: $F6 $2F
    ccf                                           ; $7210: $3F
    rst RST_08                                    ; $7211: $CF
    adc a                                         ; $7212: $8F
    ld [hl], b                                    ; $7213: $70
    pop bc                                        ; $7214: $C1
    ld a, $6F                                     ; $7215: $3E $6F
    sbc a                                         ; $7217: $9F
    ld [hl], e                                    ; $7218: $73
    adc a                                         ; $7219: $8F
    ld hl, sp+$07                                 ; $721A: $F8 $07
    db $FC                                        ; $721C: $FC
    inc bc                                        ; $721D: $03

jr_00F_721E:
    nop                                           ; $721E: $00
    rst RST_38                                    ; $721F: $FF
    add b                                         ; $7220: $80
    nop                                           ; $7221: $00
    ret nz                                        ; $7222: $C0

    add b                                         ; $7223: $80
    ldh [$FFC0], a                                ; $7224: $E0 $C0
    ldh a, [$FFE0]                                ; $7226: $F0 $E0
    ldh a, [$FF60]                                ; $7228: $F0 $60
    ld hl, sp-$50                                 ; $722A: $F8 $B0
    ld a, b                                       ; $722C: $78
    or b                                          ; $722D: $B0
    db $FC                                        ; $722E: $FC
    ret c                                         ; $722F: $D8

    db $FC                                        ; $7230: $FC
    ret nc                                        ; $7231: $D0

    ldh a, [rP1]                                  ; $7232: $F0 $00
    ldh [rLCDC], a                                ; $7234: $E0 $40
    ldh a, [$FFC0]                                ; $7236: $F0 $C0
    ldh a, [$FF60]                                ; $7238: $F0 $60
    ld hl, sp+$60                                 ; $723A: $F8 $60
    ld hl, sp-$50                                 ; $723C: $F8 $B0
    db $FC                                        ; $723E: $FC
    or b                                          ; $723F: $B0
    ld hl, sp-$50                                 ; $7240: $F8 $B0
    ld a, b                                       ; $7242: $78
    or b                                          ; $7243: $B0
    ei                                            ; $7244: $FB
    jr nc, jr_00F_727A                            ; $7245: $30 $33

    pop bc                                        ; $7247: $C1
    rst RST_38                                    ; $7248: $FF
    ld bc, $FEFF                                  ; $7249: $01 $FF $FE
    rst RST_38                                    ; $724C: $FF
    rst RST_38                                    ; $724D: $FF
    rst RST_38                                    ; $724E: $FF
    rst RST_38                                    ; $724F: $FF
    rra                                           ; $7250: $1F
    rst RST_38                                    ; $7251: $FF
    inc bc                                        ; $7252: $03
    rst RST_38                                    ; $7253: $FF
    rst RST_38                                    ; $7254: $FF
    rst RST_38                                    ; $7255: $FF
    rst RST_38                                    ; $7256: $FF
    rst RST_38                                    ; $7257: $FF
    ld a, a                                       ; $7258: $7F
    rst RST_38                                    ; $7259: $FF
    rrca                                          ; $725A: $0F
    rst RST_38                                    ; $725B: $FF
    rst RST_38                                    ; $725C: $FF
    ccf                                           ; $725D: $3F
    inc bc                                        ; $725E: $03
    rst RST_38                                    ; $725F: $FF
    add b                                         ; $7260: $80
    nop                                           ; $7261: $00
    add b                                         ; $7262: $80
    nop                                           ; $7263: $00
    ldh a, [$FF80]                                ; $7264: $F0 $80
    ldh a, [rNR41]                                ; $7266: $F0 $20
    ldh a, [$FFA0]                                ; $7268: $F0 $A0
    ld hl, sp-$40                                 ; $726A: $F8 $C0
    db $FC                                        ; $726C: $FC
    add sp, -$04                                  ; $726D: $E8 $FC
    ldh a, [$FFFC]                                ; $726F: $F0 $FC
    ld hl, sp-$01                                 ; $7271: $F8 $FF
    db $FC                                        ; $7273: $FC
    rst RST_38                                    ; $7274: $FF
    cp $FF                                        ; $7275: $FE $FF
    rst RST_38                                    ; $7277: $FF
    rst RST_38                                    ; $7278: $FF
    rst RST_38                                    ; $7279: $FF

jr_00F_727A:
    ccf                                           ; $727A: $3F
    rst RST_38                                    ; $727B: $FF
    rst RST_38                                    ; $727C: $FF
    rst RST_38                                    ; $727D: $FF
    rst RST_38                                    ; $727E: $FF
    nop                                           ; $727F: $00
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    ret nz                                        ; $7282: $C0

    nop                                           ; $7283: $00
    ldh a, [$FFC0]                                ; $7284: $F0 $C0
    ld hl, sp-$10                                 ; $7286: $F8 $F0
    db $FC                                        ; $7288: $FC
    ld hl, sp-$04                                 ; $7289: $F8 $FC
    add b                                         ; $728B: $80
    ret nz                                        ; $728C: $C0

    nop                                           ; $728D: $00
    nop                                           ; $728E: $00
    nop                                           ; $728F: $00
    nop                                           ; $7290: $00
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    nop                                           ; $7293: $00
    nop                                           ; $7294: $00
    nop                                           ; $7295: $00
    nop                                           ; $7296: $00
    nop                                           ; $7297: $00
    nop                                           ; $7298: $00
    nop                                           ; $7299: $00
    nop                                           ; $729A: $00
    nop                                           ; $729B: $00
    nop                                           ; $729C: $00
    nop                                           ; $729D: $00
    nop                                           ; $729E: $00
    nop                                           ; $729F: $00
    ldh [$FF1F], a                                ; $72A0: $E0 $1F
    sbc a                                         ; $72A2: $9F
    ld bc, $089D                                  ; $72A3: $01 $9D $08
    inc c                                         ; $72A6: $0C
    nop                                           ; $72A7: $00
    nop                                           ; $72A8: $00
    nop                                           ; $72A9: $00
    nop                                           ; $72AA: $00
    nop                                           ; $72AB: $00
    nop                                           ; $72AC: $00

jr_00F_72AD:
    nop                                           ; $72AD: $00
    nop                                           ; $72AE: $00
    nop                                           ; $72AF: $00
    nop                                           ; $72B0: $00
    nop                                           ; $72B1: $00
    nop                                           ; $72B2: $00
    nop                                           ; $72B3: $00
    nop                                           ; $72B4: $00
    nop                                           ; $72B5: $00
    nop                                           ; $72B6: $00
    nop                                           ; $72B7: $00
    nop                                           ; $72B8: $00
    nop                                           ; $72B9: $00
    nop                                           ; $72BA: $00
    nop                                           ; $72BB: $00
    nop                                           ; $72BC: $00
    nop                                           ; $72BD: $00
    nop                                           ; $72BE: $00
    nop                                           ; $72BF: $00
    rst RST_00                                    ; $72C0: $C7
    ccf                                           ; $72C1: $3F
    ld sp, $0C0F                                  ; $72C2: $31 $0F $0C
    inc bc                                        ; $72C5: $03
    inc bc                                        ; $72C6: $03
    nop                                           ; $72C7: $00
    ld b, $01                                     ; $72C8: $06 $01
    dec b                                         ; $72CA: $05
    ld [bc], a                                    ; $72CB: $02
    ld [bc], a                                    ; $72CC: $02
    ld bc, $0103                                  ; $72CD: $01 $03 $01

jr_00F_72D0:
    ld bc, $0000                                  ; $72D0: $01 $00 $00
    nop                                           ; $72D3: $00
    nop                                           ; $72D4: $00
    nop                                           ; $72D5: $00
    nop                                           ; $72D6: $00
    nop                                           ; $72D7: $00
    nop                                           ; $72D8: $00
    nop                                           ; $72D9: $00
    nop                                           ; $72DA: $00
    nop                                           ; $72DB: $00
    nop                                           ; $72DC: $00
    nop                                           ; $72DD: $00
    nop                                           ; $72DE: $00
    nop                                           ; $72DF: $00
    ld bc, $0200                                  ; $72E0: $01 $00 $02
    ld bc, $0205                                  ; $72E3: $01 $05 $02
    add hl, bc                                    ; $72E6: $09
    ld b, $11                                     ; $72E7: $06 $11
    ld c, $12                                     ; $72E9: $0E $12
    inc c                                         ; $72EB: $0C
    ld a, [hl+]                                   ; $72EC: $2A
    inc e                                         ; $72ED: $1C
    dec hl                                        ; $72EE: $2B
    inc e                                         ; $72EF: $1C
    ld e, d                                       ; $72F0: $5A
    dec a                                         ; $72F1: $3D
    ld e, b                                       ; $72F2: $58
    ccf                                           ; $72F3: $3F
    cp c                                          ; $72F4: $B9
    ld a, a                                       ; $72F5: $7F
    cp e                                          ; $72F6: $BB
    ld a, a                                       ; $72F7: $7F
    rst RST_38                                    ; $72F8: $FF
    ld a, a                                       ; $72F9: $7F
    rst RST_38                                    ; $72FA: $FF
    ld a, a                                       ; $72FB: $7F
    rst RST_38                                    ; $72FC: $FF
    ld a, a                                       ; $72FD: $7F
    ld a, a                                       ; $72FE: $7F
    ccf                                           ; $72FF: $3F
    add b                                         ; $7300: $80
    nop                                           ; $7301: $00
    add b                                         ; $7302: $80
    nop                                           ; $7303: $00
    nop                                           ; $7304: $00
    nop                                           ; $7305: $00
    nop                                           ; $7306: $00
    nop                                           ; $7307: $00
    jr nc, jr_00F_730A                            ; $7308: $30 $00

jr_00F_730A:
    ld d, b                                       ; $730A: $50
    jr nz, jr_00F_72AD                            ; $730B: $20 $A0

    ld b, b                                       ; $730D: $40
    jr nz, jr_00F_72D0                            ; $730E: $20 $C0

    jr nz, @-$3E                                  ; $7310: $20 $C0

    ld c, h                                       ; $7312: $4C
    add b                                         ; $7313: $80
    ld d, h                                       ; $7314: $54
    adc b                                         ; $7315: $88
    ld l, b                                       ; $7316: $68
    sub b                                         ; $7317: $90
    ld c, e                                       ; $7318: $4B
    or b                                          ; $7319: $B0
    dec l                                         ; $731A: $2D
    ldh a, [c]                                    ; $731B: $F2
    ld c, d                                       ; $731C: $4A
    db $F4                                        ; $731D: $F4
    jp nz, $FFFC                                  ; $731E: $C2 $FC $FF

    ld a, a                                       ; $7321: $7F
    ld a, a                                       ; $7322: $7F
    ccf                                           ; $7323: $3F
    ccf                                           ; $7324: $3F
    rra                                           ; $7325: $1F
    rra                                           ; $7326: $1F
    rlca                                          ; $7327: $07
    rlca                                          ; $7328: $07
    nop                                           ; $7329: $00
    nop                                           ; $732A: $00
    nop                                           ; $732B: $00
    nop                                           ; $732C: $00
    nop                                           ; $732D: $00
    nop                                           ; $732E: $00
    nop                                           ; $732F: $00
    nop                                           ; $7330: $00
    nop                                           ; $7331: $00
    nop                                           ; $7332: $00
    nop                                           ; $7333: $00
    nop                                           ; $7334: $00
    nop                                           ; $7335: $00
    nop                                           ; $7336: $00
    nop                                           ; $7337: $00
    nop                                           ; $7338: $00
    nop                                           ; $7339: $00
    nop                                           ; $733A: $00
    nop                                           ; $733B: $00
    nop                                           ; $733C: $00
    nop                                           ; $733D: $00
    nop                                           ; $733E: $00
    nop                                           ; $733F: $00
    sub a                                         ; $7340: $97
    db $FC                                        ; $7341: $FC
    cp a                                          ; $7342: $BF
    rst RST_38                                    ; $7343: $FF
    cp $FF                                        ; $7344: $FE $FF
    rst RST_38                                    ; $7346: $FF
    rst RST_38                                    ; $7347: $FF
    rst RST_38                                    ; $7348: $FF
    db $FC                                        ; $7349: $FC
    db $FC                                        ; $734A: $FC
    nop                                           ; $734B: $00
    nop                                           ; $734C: $00
    nop                                           ; $734D: $00
    nop                                           ; $734E: $00
    nop                                           ; $734F: $00
    nop                                           ; $7350: $00
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    nop                                           ; $7353: $00
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    nop                                           ; $7358: $00
    nop                                           ; $7359: $00
    nop                                           ; $735A: $00
    nop                                           ; $735B: $00
    nop                                           ; $735C: $00
    nop                                           ; $735D: $00
    nop                                           ; $735E: $00
    nop                                           ; $735F: $00
    ld bc, $0700                                  ; $7360: $01 $00 $07
    ld bc, $070D                                  ; $7363: $01 $0D $07
    dec de                                        ; $7366: $1B
    rrca                                          ; $7367: $0F
    inc sp                                        ; $7368: $33
    rra                                           ; $7369: $1F
    ld d, a                                       ; $736A: $57
    ccf                                           ; $736B: $3F
    cp a                                          ; $736C: $BF
    ld a, [hl]                                    ; $736D: $7E
    ld a, $FC                                     ; $736E: $3E $FC
    ld a, h                                       ; $7370: $7C
    ld hl, sp-$08                                 ; $7371: $F8 $F8
    ldh [$FFE0], a                                ; $7373: $E0 $E0
    add b                                         ; $7375: $80
    add b                                         ; $7376: $80
    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    nop                                           ; $737A: $00
    nop                                           ; $737B: $00
    nop                                           ; $737C: $00
    nop                                           ; $737D: $00
    nop                                           ; $737E: $00
    nop                                           ; $737F: $00
    ld b, $00                                     ; $7380: $06 $00
    dec bc                                        ; $7382: $0B
    ld b, $17                                     ; $7383: $06 $17
    rrca                                          ; $7385: $0F
    daa                                           ; $7386: $27
    dec de                                        ; $7387: $1B
    cpl                                           ; $7388: $2F
    dec d                                         ; $7389: $15
    ld e, a                                       ; $738A: $5F
    ld [hl], $55                                  ; $738B: $36 $55
    ld l, $BF                                     ; $738D: $2E $BF
    ld l, a                                       ; $738F: $6F
    rst RST_38                                    ; $7390: $FF
    cpl                                           ; $7391: $2F
    ccf                                           ; $7392: $3F
    inc b                                         ; $7393: $04
    rra                                           ; $7394: $1F
    add hl, bc                                    ; $7395: $09
    ccf                                           ; $7396: $3F
    dec bc                                        ; $7397: $0B
    dec sp                                        ; $7398: $3B
    dec d                                         ; $7399: $15
    ld a, e                                       ; $739A: $7B
    dec d                                         ; $739B: $15
    ld d, e                                       ; $739C: $53
    ld l, $D7                                     ; $739D: $2E $D7
    ld l, $00                                     ; $739F: $2E $00
    nop                                           ; $73A1: $00
    nop                                           ; $73A2: $00
    nop                                           ; $73A3: $00
    add b                                         ; $73A4: $80
    nop                                           ; $73A5: $00
    ret nz                                        ; $73A6: $C0

    add b                                         ; $73A7: $80
    ret nz                                        ; $73A8: $C0

    add b                                         ; $73A9: $80
    ldh [$FFC0], a                                ; $73AA: $E0 $C0
    ldh [$FFC0], a                                ; $73AC: $E0 $C0
    ldh a, [$FF60]                                ; $73AE: $F0 $60
    ldh a, [rLCDC]                                ; $73B0: $F0 $40
    ret nz                                        ; $73B2: $C0

    nop                                           ; $73B3: $00
    add b                                         ; $73B4: $80
    nop                                           ; $73B5: $00
    ret nz                                        ; $73B6: $C0

    nop                                           ; $73B7: $00
    ret nz                                        ; $73B8: $C0

    add b                                         ; $73B9: $80
    ldh [$FF80], a                                ; $73BA: $E0 $80
    ldh [$FFC0], a                                ; $73BC: $E0 $C0
    ldh a, [$FFC0]                                ; $73BE: $F0 $C0
    rla                                           ; $73C0: $17
    dec bc                                        ; $73C1: $0B
    dec e                                         ; $73C2: $1D
    dec bc                                        ; $73C3: $0B
    rra                                           ; $73C4: $1F
    inc bc                                        ; $73C5: $03
    jp z, $FE05                                   ; $73C6: $CA $05 $FE

    add c                                         ; $73C9: $81
    jp c, $DFA5                                   ; $73CA: $DA $A5 $DF

    and c                                         ; $73CD: $A1
    ld sp, hl                                     ; $73CE: $F9
    add [hl]                                      ; $73CF: $86
    adc h                                         ; $73D0: $8C
    inc bc                                        ; $73D1: $03
    ld b, $01                                     ; $73D2: $06 $01
    dec b                                         ; $73D4: $05
    ld [bc], a                                    ; $73D5: $02
    rlca                                          ; $73D6: $07
    inc bc                                        ; $73D7: $03
    ld [bc], a                                    ; $73D8: $02
    ld bc, $0103                                  ; $73D9: $01 $03 $01
    ld bc, $0100                                  ; $73DC: $01 $00 $01
    nop                                           ; $73DF: $00
    cp $EC                                        ; $73E0: $FE $EC
    sbc [hl]                                      ; $73E2: $9E
    db $EC                                        ; $73E3: $EC
    cp $CC                                        ; $73E4: $FE $CC
    call z, $FBB0                                 ; $73E6: $CC $B0 $FB
    add b                                         ; $73E9: $80
    rst RST_08                                    ; $73EA: $CF
    or c                                          ; $73EB: $B1
    ei                                            ; $73EC: $FB
    add l                                         ; $73ED: $85
    adc e                                         ; $73EE: $8B
    ld [hl], l                                    ; $73EF: $75
    ccf                                           ; $73F0: $3F
    pop bc                                        ; $73F1: $C1
    ld c, e                                       ; $73F2: $4B
    or h                                          ; $73F3: $B4
    ld sp, hl                                     ; $73F4: $F9
    ld [hl], $E5                                  ; $73F5: $36 $E5
    dec de                                        ; $73F7: $1B
    db $FC                                        ; $73F8: $FC
    dec de                                        ; $73F9: $1B
    push af                                       ; $73FA: $F5
    ld a, [bc]                                    ; $73FB: $0A
    ld a, a                                       ; $73FC: $7F
    adc d                                         ; $73FD: $8A
    ld a, [$C085]                                 ; $73FE: $FA $85 $C0
    nop                                           ; $7401: $00
    ldh [rLCDC], a                                ; $7402: $E0 $40
    ldh [rLCDC], a                                ; $7404: $E0 $40
    db $FC                                        ; $7406: $FC
    and b                                         ; $7407: $A0
    ld a, h                                       ; $7408: $7C
    ret z                                         ; $7409: $C8

    inc a                                         ; $740A: $3C
    add sp, -$22                                  ; $740B: $E8 $DE
    ldh a, [rIE]                                  ; $740D: $F0 $FF
    ld a, d                                       ; $740F: $7A
    ld a, a                                       ; $7410: $7F
    inc e                                         ; $7411: $1C
    sbc a                                         ; $7412: $9F
    ld b, $C7                                     ; $7413: $06 $C7
    add c                                         ; $7415: $81
    pop hl                                        ; $7416: $E1
    ret nz                                        ; $7417: $C0

    ldh a, [$FFA0]                                ; $7418: $F0 $A0
    xor b                                         ; $741A: $A8
    ld d, b                                       ; $741B: $50
    db $FC                                        ; $741C: $FC
    xor b                                         ; $741D: $A8
    xor h                                         ; $741E: $AC
    nop                                           ; $741F: $00
    cp a                                          ; $7420: $BF
    ld b, h                                       ; $7421: $44
    db $ED                                        ; $7422: $ED
    ld b, d                                       ; $7423: $42
    ld h, a                                       ; $7424: $67
    ld [bc], a                                    ; $7425: $02
    inc bc                                        ; $7426: $03
    nop                                           ; $7427: $00
    nop                                           ; $7428: $00
    nop                                           ; $7429: $00
    nop                                           ; $742A: $00
    nop                                           ; $742B: $00
    nop                                           ; $742C: $00
    nop                                           ; $742D: $00
    nop                                           ; $742E: $00
    nop                                           ; $742F: $00
    nop                                           ; $7430: $00
    nop                                           ; $7431: $00
    nop                                           ; $7432: $00
    nop                                           ; $7433: $00
    nop                                           ; $7434: $00
    nop                                           ; $7435: $00
    nop                                           ; $7436: $00
    nop                                           ; $7437: $00
    nop                                           ; $7438: $00
    nop                                           ; $7439: $00
    nop                                           ; $743A: $00
    nop                                           ; $743B: $00
    nop                                           ; $743C: $00
    nop                                           ; $743D: $00
    nop                                           ; $743E: $00
    nop                                           ; $743F: $00
    ret nz                                        ; $7440: $C0

    nop                                           ; $7441: $00
    ldh a, [$FF80]                                ; $7442: $F0 $80
    db $FC                                        ; $7444: $FC
    ld [hl], b                                    ; $7445: $70
    cp $3C                                        ; $7446: $FE $3C
    ld a, a                                       ; $7448: $7F
    ld c, $7F                                     ; $7449: $0E $7F
    jr nz, jr_00F_747D                            ; $744B: $20 $30

    nop                                           ; $744D: $00
    nop                                           ; $744E: $00
    nop                                           ; $744F: $00
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    nop                                           ; $7454: $00
    nop                                           ; $7455: $00
    nop                                           ; $7456: $00
    nop                                           ; $7457: $00
    nop                                           ; $7458: $00
    nop                                           ; $7459: $00
    nop                                           ; $745A: $00
    nop                                           ; $745B: $00
    nop                                           ; $745C: $00
    nop                                           ; $745D: $00
    nop                                           ; $745E: $00

jr_00F_745F:
    nop                                           ; $745F: $00
    ld h, b                                       ; $7460: $60
    nop                                           ; $7461: $00
    ld [hl], b                                    ; $7462: $70
    jr nz, @+$3E                                  ; $7463: $20 $3C

    db $10                                        ; $7465: $10
    ccf                                           ; $7466: $3F
    inc e                                         ; $7467: $1C
    rra                                           ; $7468: $1F
    rrca                                          ; $7469: $0F
    rst RST_18                                    ; $746A: $DF
    rrca                                          ; $746B: $0F
    rst RST_38                                    ; $746C: $FF
    ld b, a                                       ; $746D: $47
    ld a, a                                       ; $746E: $7F
    inc sp                                        ; $746F: $33
    ld a, a                                       ; $7470: $7F
    ccf                                           ; $7471: $3F
    ccf                                           ; $7472: $3F
    rra                                           ; $7473: $1F
    rst RST_18                                    ; $7474: $DF
    rrca                                          ; $7475: $0F
    rst RST_38                                    ; $7476: $FF
    ld b, e                                       ; $7477: $43
    ld a, a                                       ; $7478: $7F
    ld sp, $1F3F                                  ; $7479: $31 $3F $1F
    rra                                           ; $747C: $1F

jr_00F_747D:
    rlca                                          ; $747D: $07
    rlca                                          ; $747E: $07
    ld bc, $0001                                  ; $747F: $01 $01 $00
    ld bc, $0200                                  ; $7482: $01 $00 $02
    ld bc, $0102                                  ; $7485: $01 $02 $01
    ld bc, $0100                                  ; $7488: $01 $00 $01
    nop                                           ; $748B: $00
    ld bc, $0200                                  ; $748C: $01 $00 $02
    ld bc, $011E                                  ; $748F: $01 $1E $01
    ld h, l                                       ; $7492: $65
    dec de                                        ; $7493: $1B
    sbc l                                         ; $7494: $9D
    ld a, e                                       ; $7495: $7B
    ld a, a                                       ; $7496: $7F
    ei                                            ; $7497: $FB
    rst RST_38                                    ; $7498: $FF
    rlca                                          ; $7499: $07
    rrca                                          ; $749A: $0F
    inc bc                                        ; $749B: $03
    rrca                                          ; $749C: $0F
    inc bc                                        ; $749D: $03
    rrca                                          ; $749E: $0F
    inc bc                                        ; $749F: $03
    jr nz, jr_00F_74A2                            ; $74A0: $20 $00

jr_00F_74A2:
    ld [hl], b                                    ; $74A2: $70
    jr nz, jr_00F_751D                            ; $74A3: $20 $78

    jr nc, jr_00F_745F                            ; $74A5: $30 $B8

    ld [hl], b                                    ; $74A7: $70
    db $FC                                        ; $74A8: $FC
    jr c, jr_00F_7527                             ; $74A9: $38 $7C

    cp b                                          ; $74AB: $B8
    ld a, [hl]                                    ; $74AC: $7E
    call c, $DCFE                                 ; $74AD: $DC $FE $DC
    rst RST_38                                    ; $74B0: $FF
    xor $FF                                       ; $74B1: $EE $FF
    ld c, $7F                                     ; $74B3: $0E $7F
    ret nc                                        ; $74B5: $D0

    ld a, h                                       ; $74B6: $7C
    ret c                                         ; $74B7: $D8

    rst RST_38                                    ; $74B8: $FF
    ret c                                         ; $74B9: $D8

    rst RST_38                                    ; $74BA: $FF
    db $DB                                        ; $74BB: $DB
    rst RST_38                                    ; $74BC: $FF
    db $ED                                        ; $74BD: $ED
    rst RST_38                                    ; $74BE: $FF
    db $EC                                        ; $74BF: $EC
    rrca                                          ; $74C0: $0F
    ld [bc], a                                    ; $74C1: $02
    ei                                            ; $74C2: $FB
    inc b                                         ; $74C3: $04
    rst RST_00                                    ; $74C4: $C7
    ld hl, sp-$08                                 ; $74C5: $F8 $F8
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
    ccf                                           ; $74DB: $3F
    ccf                                           ; $74DC: $3F
    nop                                           ; $74DD: $00
    nop                                           ; $74DE: $00
    nop                                           ; $74DF: $00
    rst RST_38                                    ; $74E0: $FF
    db $EC                                        ; $74E1: $EC
    rst RST_38                                    ; $74E2: $FF
    adc [hl]                                      ; $74E3: $8E
    sbc a                                         ; $74E4: $9F
    ld h, d                                       ; $74E5: $62
    di                                            ; $74E6: $F3
    inc c                                         ; $74E7: $0C
    sub e                                         ; $74E8: $93
    ld l, h                                       ; $74E9: $6C
    rst RST_38                                    ; $74EA: $FF
    nop                                           ; $74EB: $00
    ld b, $F9                                     ; $74EC: $06 $F9
    ld hl, sp+$07                                 ; $74EE: $F8 $07
    nop                                           ; $74F0: $00
    rst RST_38                                    ; $74F1: $FF
    ld hl, sp-$01                                 ; $74F2: $F8 $FF
    ldh [rIE], a                                  ; $74F4: $E0 $FF
    add b                                         ; $74F6: $80
    rst RST_38                                    ; $74F7: $FF
    rst RST_38                                    ; $74F8: $FF
    rst RST_38                                    ; $74F9: $FF
    rst RST_38                                    ; $74FA: $FF
    rst RST_38                                    ; $74FB: $FF
    rst RST_38                                    ; $74FC: $FF
    rst RST_38                                    ; $74FD: $FF
    db $FC                                        ; $74FE: $FC
    rst RST_38                                    ; $74FF: $FF
    add b                                         ; $7500: $80
    nop                                           ; $7501: $00
    ret nz                                        ; $7502: $C0

    add b                                         ; $7503: $80
    ldh [$FFC0], a                                ; $7504: $E0 $C0
    ldh a, [$FFE0]                                ; $7506: $F0 $E0
    ldh a, [$FF60]                                ; $7508: $F0 $60
    ld hl, sp+$70                                 ; $750A: $F8 $70
    cp $70                                        ; $750C: $FE $70
    ld a, [$E464]                                 ; $750E: $FA $64 $E4
    sbc b                                         ; $7511: $98
    adc b                                         ; $7512: $88
    ld [hl], b                                    ; $7513: $70
    ld de, $36E0                                  ; $7514: $11 $E0 $36
    pop bc                                        ; $7517: $C1
    ld a, b                                       ; $7518: $78
    and a                                         ; $7519: $A7
    ldh [$FF1F], a                                ; $751A: $E0 $1F
    add hl, bc                                    ; $751C: $09

jr_00F_751D:
    cp $71                                        ; $751D: $FE $71
    cp $F0                                        ; $751F: $FE $F0
    rst RST_38                                    ; $7521: $FF
    add c                                         ; $7522: $81
    cp $FF                                        ; $7523: $FE $FF
    ldh a, [$FFF3]                                ; $7525: $F0 $F3

jr_00F_7527:
    nop                                           ; $7527: $00
    nop                                           ; $7528: $00
    nop                                           ; $7529: $00
    nop                                           ; $752A: $00
    nop                                           ; $752B: $00
    nop                                           ; $752C: $00
    nop                                           ; $752D: $00
    nop                                           ; $752E: $00
    nop                                           ; $752F: $00
    nop                                           ; $7530: $00
    nop                                           ; $7531: $00
    nop                                           ; $7532: $00
    nop                                           ; $7533: $00
    nop                                           ; $7534: $00
    nop                                           ; $7535: $00
    nop                                           ; $7536: $00
    nop                                           ; $7537: $00
    nop                                           ; $7538: $00
    nop                                           ; $7539: $00
    nop                                           ; $753A: $00
    nop                                           ; $753B: $00
    nop                                           ; $753C: $00
    nop                                           ; $753D: $00
    nop                                           ; $753E: $00
    nop                                           ; $753F: $00
    ldh [c], a                                    ; $7540: $E2
    db $FC                                        ; $7541: $FC
    call nz, Call_000_08F8                        ; $7542: $C4 $F8 $08
    ldh a, [rNR23]                                ; $7545: $F0 $18
    ldh [$FF7C], a                                ; $7547: $E0 $7C
    adc b                                         ; $7549: $88
    db $EC                                        ; $754A: $EC
    nop                                           ; $754B: $00
    nop                                           ; $754C: $00
    nop                                           ; $754D: $00
    nop                                           ; $754E: $00
    nop                                           ; $754F: $00
    nop                                           ; $7550: $00
    nop                                           ; $7551: $00
    nop                                           ; $7552: $00
    nop                                           ; $7553: $00
    nop                                           ; $7554: $00
    nop                                           ; $7555: $00
    nop                                           ; $7556: $00
    nop                                           ; $7557: $00
    nop                                           ; $7558: $00
    nop                                           ; $7559: $00
    nop                                           ; $755A: $00
    nop                                           ; $755B: $00
    nop                                           ; $755C: $00
    nop                                           ; $755D: $00
    nop                                           ; $755E: $00
    nop                                           ; $755F: $00
    ret nz                                        ; $7560: $C0

    nop                                           ; $7561: $00
    ld b, b                                       ; $7562: $40
    add b                                         ; $7563: $80
    ld b, b                                       ; $7564: $40
    add b                                         ; $7565: $80
    add b                                         ; $7566: $80
    nop                                           ; $7567: $00
    add b                                         ; $7568: $80
    nop                                           ; $7569: $00
    nop                                           ; $756A: $00
    nop                                           ; $756B: $00
    nop                                           ; $756C: $00
    nop                                           ; $756D: $00
    nop                                           ; $756E: $00
    nop                                           ; $756F: $00
    nop                                           ; $7570: $00
    nop                                           ; $7571: $00
    nop                                           ; $7572: $00
    nop                                           ; $7573: $00
    nop                                           ; $7574: $00
    nop                                           ; $7575: $00
    nop                                           ; $7576: $00
    nop                                           ; $7577: $00
    nop                                           ; $7578: $00
    nop                                           ; $7579: $00
    nop                                           ; $757A: $00
    nop                                           ; $757B: $00
    nop                                           ; $757C: $00
    nop                                           ; $757D: $00
    nop                                           ; $757E: $00
    nop                                           ; $757F: $00
    ld bc, $0200                                  ; $7580: $01 $00 $02
    ld bc, $0305                                  ; $7583: $01 $05 $03
    add hl, bc                                    ; $7586: $09
    ld b, $0B                                     ; $7587: $06 $0B
    dec b                                         ; $7589: $05
    rla                                           ; $758A: $17
    dec c                                         ; $758B: $0D
    rla                                           ; $758C: $17
    dec bc                                        ; $758D: $0B
    cpl                                           ; $758E: $2F
    dec de                                        ; $758F: $1B
    ccf                                           ; $7590: $3F
    ld a, [bc]                                    ; $7591: $0A
    rrca                                          ; $7592: $0F
    ld bc, $0307                                  ; $7593: $01 $07 $03
    rrca                                          ; $7596: $0F
    ld [bc], a                                    ; $7597: $02
    ld c, $05                                     ; $7598: $0E $05
    ld e, $05                                     ; $759A: $1E $05
    dec e                                         ; $759C: $1D
    dec bc                                        ; $759D: $0B
    db $FD                                        ; $759E: $FD
    dec bc                                        ; $759F: $0B
    rst RST_38                                    ; $75A0: $FF
    rst RST_10                                    ; $75A1: $D7
    rst RST_38                                    ; $75A2: $FF
    rst RST_10                                    ; $75A3: $D7
    ld a, a                                       ; $75A4: $7F
    add a                                         ; $75A5: $87
    sbc a                                         ; $75A6: $9F
    ld l, d                                       ; $75A7: $6A
    cp a                                          ; $75A8: $BF
    ld c, c                                       ; $75A9: $49
    cp [hl]                                       ; $75AA: $BE
    ld c, e                                       ; $75AB: $4B
    ld a, h                                       ; $75AC: $7C
    rlca                                          ; $75AD: $07
    dec a                                         ; $75AE: $3D
    rlca                                          ; $75AF: $07
    ccf                                           ; $75B0: $3F
    rla                                           ; $75B1: $17
    ld e, a                                       ; $75B2: $5F
    scf                                           ; $75B3: $37
    sbc a                                         ; $75B4: $9F
    ld [hl], a                                    ; $75B5: $77
    cp a                                          ; $75B6: $BF
    ei                                            ; $75B7: $FB
    sbc a                                         ; $75B8: $9F
    ld a, e                                       ; $75B9: $7B
    ld a, a                                       ; $75BA: $7F
    or h                                          ; $75BB: $B4
    cp d                                          ; $75BC: $BA
    ld h, h                                       ; $75BD: $64
    rst RST_20                                    ; $75BE: $E7
    ld b, d                                       ; $75BF: $42
    ld b, l                                       ; $75C0: $45
    add d                                         ; $75C1: $82
    add a                                         ; $75C2: $87
    ld [bc], a                                    ; $75C3: $02
    inc bc                                        ; $75C4: $03
    nop                                           ; $75C5: $00
    nop                                           ; $75C6: $00
    nop                                           ; $75C7: $00
    nop                                           ; $75C8: $00
    nop                                           ; $75C9: $00
    nop                                           ; $75CA: $00
    nop                                           ; $75CB: $00
    nop                                           ; $75CC: $00
    nop                                           ; $75CD: $00
    nop                                           ; $75CE: $00
    nop                                           ; $75CF: $00
    nop                                           ; $75D0: $00
    nop                                           ; $75D1: $00
    nop                                           ; $75D2: $00
    nop                                           ; $75D3: $00
    nop                                           ; $75D4: $00
    nop                                           ; $75D5: $00
    nop                                           ; $75D6: $00
    nop                                           ; $75D7: $00
    nop                                           ; $75D8: $00
    nop                                           ; $75D9: $00
    nop                                           ; $75DA: $00
    nop                                           ; $75DB: $00
    nop                                           ; $75DC: $00
    nop                                           ; $75DD: $00
    nop                                           ; $75DE: $00
    nop                                           ; $75DF: $00
    ld h, b                                       ; $75E0: $60
    nop                                           ; $75E1: $00
    ldh [rLCDC], a                                ; $75E2: $E0 $40
    ret nz                                        ; $75E4: $C0

    add b                                         ; $75E5: $80
    ret nz                                        ; $75E6: $C0

    add b                                         ; $75E7: $80
    add b                                         ; $75E8: $80
    nop                                           ; $75E9: $00
    add b                                         ; $75EA: $80
    nop                                           ; $75EB: $00
    nop                                           ; $75EC: $00
    nop                                           ; $75ED: $00
    jr nz, jr_00F_75F0                            ; $75EE: $20 $00

jr_00F_75F0:
    jr nz, jr_00F_75F2                            ; $75F0: $20 $00

jr_00F_75F2:
    ld h, b                                       ; $75F2: $60
    nop                                           ; $75F3: $00
    ld h, b                                       ; $75F4: $60
    nop                                           ; $75F5: $00
    ld [hl], b                                    ; $75F6: $70
    jr nz, jr_00F_7669                            ; $75F7: $20 $70

    jr nz, jr_00F_7673                            ; $75F9: $20 $78

    jr nc, @+$7A                                  ; $75FB: $30 $78

    jr nc, @+$5E                                  ; $75FD: $30 $5C

    jr c, @+$60                                   ; $75FF: $38 $5E

    inc a                                         ; $7601: $3C
    ld c, a                                       ; $7602: $4F
    ld a, $2F                                     ; $7603: $3E $2F
    rra                                           ; $7605: $1F
    daa                                           ; $7606: $27
    rra                                           ; $7607: $1F
    and e                                         ; $7608: $A3
    rra                                           ; $7609: $1F
    sub l                                         ; $760A: $95
    dec bc                                        ; $760B: $0B
    ld d, d                                       ; $760C: $52
    adc l                                         ; $760D: $8D
    xor e                                         ; $760E: $AB
    ld b, h                                       ; $760F: $44
    ld h, l                                       ; $7610: $65
    ld [bc], a                                    ; $7611: $02
    add e                                         ; $7612: $83
    nop                                           ; $7613: $00
    ld b, b                                       ; $7614: $40
    add b                                         ; $7615: $80
    ret nz                                        ; $7616: $C0

    nop                                           ; $7617: $00
    nop                                           ; $7618: $00
    nop                                           ; $7619: $00
    inc bc                                        ; $761A: $03
    nop                                           ; $761B: $00
    ld c, $03                                     ; $761C: $0E $03
    dec de                                        ; $761E: $1B
    inc c                                         ; $761F: $0C
    rra                                           ; $7620: $1F
    ld bc, $060D                                  ; $7621: $01 $0D $06
    rrca                                          ; $7624: $0F
    nop                                           ; $7625: $00
    inc bc                                        ; $7626: $03
    ld bc, $0003                                  ; $7627: $01 $03 $00
    nop                                           ; $762A: $00
    nop                                           ; $762B: $00
    nop                                           ; $762C: $00
    nop                                           ; $762D: $00
    nop                                           ; $762E: $00
    nop                                           ; $762F: $00
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    nop                                           ; $7632: $00
    nop                                           ; $7633: $00
    nop                                           ; $7634: $00
    nop                                           ; $7635: $00
    nop                                           ; $7636: $00
    nop                                           ; $7637: $00
    nop                                           ; $7638: $00
    nop                                           ; $7639: $00
    nop                                           ; $763A: $00
    nop                                           ; $763B: $00
    nop                                           ; $763C: $00
    nop                                           ; $763D: $00
    nop                                           ; $763E: $00
    nop                                           ; $763F: $00
    ld b, $00                                     ; $7640: $06 $00
    ld c, $04                                     ; $7642: $0E $04
    inc e                                         ; $7644: $1C
    ld [$183C], sp                                ; $7645: $08 $3C $18
    ld a, b                                       ; $7648: $78
    jr nc, @-$06                                  ; $7649: $30 $F8

    ld [hl], b                                    ; $764B: $70
    pop af                                        ; $764C: $F1
    ldh [$FFF3], a                                ; $764D: $E0 $F3
    pop hl                                        ; $764F: $E1
    rst RST_20                                    ; $7650: $E7
    jp $C7EF                                      ; $7651: $C3 $EF $C7


    rst RST_38                                    ; $7654: $FF
    adc $FF                                       ; $7655: $CE $FF
    sbc [hl]                                      ; $7657: $9E
    rst RST_38                                    ; $7658: $FF
    sbc [hl]                                      ; $7659: $9E
    cp $BC                                        ; $765A: $FE $BC
    cp $BC                                        ; $765C: $FE $BC
    cp $FC                                        ; $765E: $FE $FC
    cp $FC                                        ; $7660: $FE $FC
    ld a, [$FAFC]                                 ; $7662: $FA $FC $FA
    db $FC                                        ; $7665: $FC
    ld a, [$FAFC]                                 ; $7666: $FA $FC $FA

jr_00F_7669:
    db $FC                                        ; $7669: $FC
    ld a, d                                       ; $766A: $7A
    db $FC                                        ; $766B: $FC
    add hl, sp                                    ; $766C: $39
    cp $99                                        ; $766D: $FE $99
    cp $84                                        ; $766F: $FE $84
    rst RST_38                                    ; $7671: $FF
    adc b                                         ; $7672: $88

jr_00F_7673:
    rst RST_30                                    ; $7673: $F7
    add $F9                                       ; $7674: $C6 $F9
    jp $E1FC                                      ; $7676: $C3 $FC $E1


    sbc $78                                       ; $7679: $DE $78
    rst RST_20                                    ; $767B: $E7
    rla                                           ; $767C: $17
    ldh [$FF08], a                                ; $767D: $E0 $08
    ldh a, [$FFC6]                                ; $767F: $F0 $C6
    jr c, jr_00F_76B4                             ; $7681: $38 $31

    ld c, $0F                                     ; $7683: $0E $0F
    nop                                           ; $7685: $00
    nop                                           ; $7686: $00
    nop                                           ; $7687: $00
    nop                                           ; $7688: $00
    nop                                           ; $7689: $00
    nop                                           ; $768A: $00
    nop                                           ; $768B: $00
    nop                                           ; $768C: $00
    nop                                           ; $768D: $00
    nop                                           ; $768E: $00
    nop                                           ; $768F: $00
    nop                                           ; $7690: $00
    nop                                           ; $7691: $00
    nop                                           ; $7692: $00
    nop                                           ; $7693: $00
    nop                                           ; $7694: $00
    nop                                           ; $7695: $00
    nop                                           ; $7696: $00
    nop                                           ; $7697: $00
    nop                                           ; $7698: $00
    nop                                           ; $7699: $00
    nop                                           ; $769A: $00
    nop                                           ; $769B: $00
    nop                                           ; $769C: $00
    nop                                           ; $769D: $00
    nop                                           ; $769E: $00
    nop                                           ; $769F: $00
    ld bc, $0300                                  ; $76A0: $01 $00 $03
    ld bc, $0103                                  ; $76A3: $01 $03 $01
    rlca                                          ; $76A6: $07
    inc bc                                        ; $76A7: $03
    rlca                                          ; $76A8: $07
    inc bc                                        ; $76A9: $03
    rrca                                          ; $76AA: $0F
    rlca                                          ; $76AB: $07
    rrca                                          ; $76AC: $0F
    rlca                                          ; $76AD: $07
    rra                                           ; $76AE: $1F
    rrca                                          ; $76AF: $0F
    rra                                           ; $76B0: $1F
    rrca                                          ; $76B1: $0F
    rra                                           ; $76B2: $1F
    rrca                                          ; $76B3: $0F

jr_00F_76B4:
    ccf                                           ; $76B4: $3F
    rra                                           ; $76B5: $1F
    ccf                                           ; $76B6: $3F
    rra                                           ; $76B7: $1F
    ccf                                           ; $76B8: $3F
    rra                                           ; $76B9: $1F
    ccf                                           ; $76BA: $3F
    rra                                           ; $76BB: $1F
    ccf                                           ; $76BC: $3F
    rra                                           ; $76BD: $1F
    ccf                                           ; $76BE: $3F
    rra                                           ; $76BF: $1F
    ccf                                           ; $76C0: $3F
    rra                                           ; $76C1: $1F
    ccf                                           ; $76C2: $3F
    rra                                           ; $76C3: $1F
    rra                                           ; $76C4: $1F
    rrca                                          ; $76C5: $0F
    rra                                           ; $76C6: $1F
    rrca                                          ; $76C7: $0F
    dec de                                        ; $76C8: $1B
    rrca                                          ; $76C9: $0F
    dec c                                         ; $76CA: $0D
    rlca                                          ; $76CB: $07
    inc c                                         ; $76CC: $0C
    rlca                                          ; $76CD: $07
    ld b, $03                                     ; $76CE: $06 $03
    ld [bc], a                                    ; $76D0: $02
    ld bc, $0001                                  ; $76D1: $01 $01 $00
    nop                                           ; $76D4: $00
    nop                                           ; $76D5: $00
    nop                                           ; $76D6: $00
    nop                                           ; $76D7: $00
    nop                                           ; $76D8: $00
    nop                                           ; $76D9: $00
    nop                                           ; $76DA: $00
    nop                                           ; $76DB: $00
    nop                                           ; $76DC: $00
    nop                                           ; $76DD: $00
    nop                                           ; $76DE: $00
    nop                                           ; $76DF: $00
    add b                                         ; $76E0: $80
    nop                                           ; $76E1: $00
    ret nz                                        ; $76E2: $C0

    add b                                         ; $76E3: $80
    ldh [$FFC0], a                                ; $76E4: $E0 $C0
    ldh a, [$FFE0]                                ; $76E6: $F0 $E0
    ldh a, [$FF60]                                ; $76E8: $F0 $60
    ld hl, sp-$50                                 ; $76EA: $F8 $B0
    ld hl, sp-$50                                 ; $76EC: $F8 $B0
    db $FC                                        ; $76EE: $FC
    ret c                                         ; $76EF: $D8

    db $FC                                        ; $76F0: $FC
    ret nc                                        ; $76F1: $D0

    ldh a, [rP1]                                  ; $76F2: $F0 $00
    ldh [$FFC0], a                                ; $76F4: $E0 $C0
    ldh a, [$FFC0]                                ; $76F6: $F0 $C0
    ldh a, [$FF60]                                ; $76F8: $F0 $60
    ld hl, sp+$60                                 ; $76FA: $F8 $60
    ld hl, sp-$50                                 ; $76FC: $F8 $B0
    db $FC                                        ; $76FE: $FC

jr_00F_76FF:
    or b                                          ; $76FF: $B0
    db $FC                                        ; $7700: $FC
    ret c                                         ; $7701: $D8

    db $FC                                        ; $7702: $FC
    ret c                                         ; $7703: $D8

    db $FC                                        ; $7704: $FC
    sbc b                                         ; $7705: $98
    ld hl, sp+$00                                 ; $7706: $F8 $00
    ld hl, sp-$10                                 ; $7708: $F8 $F0
    inc a                                         ; $770A: $3C
    ld hl, sp+$7E                                 ; $770B: $F8 $7E
    db $FC                                        ; $770D: $FC
    cp $FC                                        ; $770E: $FE $FC
    cp $FC                                        ; $7710: $FE $FC
    cp $EC                                        ; $7712: $FE $EC
    db $FC                                        ; $7714: $FC
    ldh a, [rIE]                                  ; $7715: $F0 $FF
    ld hl, sp-$01                                 ; $7717: $F8 $FF
    rst RST_38                                    ; $7719: $FF
    rst RST_38                                    ; $771A: $FF
    rst RST_38                                    ; $771B: $FF
    rst RST_38                                    ; $771C: $FF
    ld a, $3F                                     ; $771D: $3E $3F
    nop                                           ; $771F: $00
    ccf                                           ; $7720: $3F
    ld [de], a                                    ; $7721: $12
    ld d, $09                                     ; $7722: $16 $09
    rrca                                          ; $7724: $0F
    inc b                                         ; $7725: $04
    ld b, $00                                     ; $7726: $06 $00
    nop                                           ; $7728: $00
    nop                                           ; $7729: $00
    nop                                           ; $772A: $00
    nop                                           ; $772B: $00
    nop                                           ; $772C: $00
    nop                                           ; $772D: $00
    nop                                           ; $772E: $00
    nop                                           ; $772F: $00
    nop                                           ; $7730: $00

jr_00F_7731:
    nop                                           ; $7731: $00
    nop                                           ; $7732: $00
    nop                                           ; $7733: $00
    nop                                           ; $7734: $00
    nop                                           ; $7735: $00
    nop                                           ; $7736: $00
    nop                                           ; $7737: $00
    nop                                           ; $7738: $00
    nop                                           ; $7739: $00
    nop                                           ; $773A: $00
    nop                                           ; $773B: $00
    nop                                           ; $773C: $00
    nop                                           ; $773D: $00
    nop                                           ; $773E: $00

jr_00F_773F:
    nop                                           ; $773F: $00
    ld h, b                                       ; $7740: $60
    nop                                           ; $7741: $00
    ld d, b                                       ; $7742: $50
    jr nz, jr_00F_779D                            ; $7743: $20 $58

    jr nc, jr_00F_76FF                            ; $7745: $30 $B8

    ld [hl], b                                    ; $7747: $70
    ld hl, sp+$30                                 ; $7748: $F8 $30
    ld a, b                                       ; $774A: $78
    jr nc, jr_00F_77C5                            ; $774B: $30 $78

    jr nc, jr_00F_773F                            ; $774D: $30 $F0

    jr nz, jr_00F_7731                            ; $774F: $20 $E0

    ret nz                                        ; $7751: $C0

    ret nz                                        ; $7752: $C0

    add b                                         ; $7753: $80
    ret nz                                        ; $7754: $C0

    nop                                           ; $7755: $00
    ld h, b                                       ; $7756: $60
    ret nz                                        ; $7757: $C0

    ldh [rP1], a                                  ; $7758: $E0 $00
    ret nz                                        ; $775A: $C0

    add b                                         ; $775B: $80
    ret nz                                        ; $775C: $C0

    nop                                           ; $775D: $00
    nop                                           ; $775E: $00
    nop                                           ; $775F: $00
    rrca                                          ; $7760: $0F
    nop                                           ; $7761: $00
    inc sp                                        ; $7762: $33
    ld c, $4E                                     ; $7763: $0E $4E
    inc a                                         ; $7765: $3C
    sbc h                                         ; $7766: $9C
    ld a, b                                       ; $7767: $78
    ld hl, sp+$70                                 ; $7768: $F8 $70
    ldh a, [rP1]                                  ; $776A: $F0 $00
    nop                                           ; $776C: $00
    nop                                           ; $776D: $00
    nop                                           ; $776E: $00
    nop                                           ; $776F: $00
    inc b                                         ; $7770: $04
    nop                                           ; $7771: $00
    ld [$1404], sp                                ; $7772: $08 $04 $14
    inc c                                         ; $7775: $0C
    inc h                                         ; $7776: $24
    jr jr_00F_77A5                                ; $7777: $18 $2C

    inc d                                         ; $7779: $14
    ld e, h                                       ; $777A: $5C
    inc [hl]                                      ; $777B: $34
    ld e, h                                       ; $777C: $5C
    inc l                                         ; $777D: $2C
    cp h                                          ; $777E: $BC
    ld l, h                                       ; $777F: $6C
    rst RST_38                                    ; $7780: $FF
    ld a, [bc]                                    ; $7781: $0A
    rst RST_28                                    ; $7782: $EF
    pop bc                                        ; $7783: $C1
    rst RST_00                                    ; $7784: $C7
    inc bc                                        ; $7785: $03
    rst RST_08                                    ; $7786: $CF
    ld [bc], a                                    ; $7787: $02
    xor $45                                       ; $7788: $EE $45
    cp $45                                        ; $778A: $FE $45
    db $DD                                        ; $778C: $DD
    adc e                                         ; $778D: $8B
    db $FD                                        ; $778E: $FD
    set 7, a                                      ; $778F: $CB $FF
    rst RST_10                                    ; $7791: $D7
    rst RST_38                                    ; $7792: $FF
    rst RST_10                                    ; $7793: $D7
    rst RST_38                                    ; $7794: $FF
    add a                                         ; $7795: $87
    sbc a                                         ; $7796: $9F
    ld l, d                                       ; $7797: $6A
    cp a                                          ; $7798: $BF
    ld c, c                                       ; $7799: $49
    cp [hl]                                       ; $779A: $BE
    ld c, e                                       ; $779B: $4B
    ld a, h                                       ; $779C: $7C

jr_00F_779D:
    rlca                                          ; $779D: $07
    dec a                                         ; $779E: $3D
    rlca                                          ; $779F: $07
    ccf                                           ; $77A0: $3F
    rla                                           ; $77A1: $17
    ld e, a                                       ; $77A2: $5F
    scf                                           ; $77A3: $37
    sbc a                                         ; $77A4: $9F

jr_00F_77A5:
    ld [hl], a                                    ; $77A5: $77
    cp a                                          ; $77A6: $BF
    ei                                            ; $77A7: $FB
    sbc a                                         ; $77A8: $9F
    ld a, e                                       ; $77A9: $7B
    ld a, a                                       ; $77AA: $7F
    or h                                          ; $77AB: $B4
    cp d                                          ; $77AC: $BA
    ld h, h                                       ; $77AD: $64
    rst RST_20                                    ; $77AE: $E7
    ld b, d                                       ; $77AF: $42
    ld b, l                                       ; $77B0: $45
    add d                                         ; $77B1: $82
    add a                                         ; $77B2: $87
    ld [bc], a                                    ; $77B3: $02
    inc bc                                        ; $77B4: $03
    nop                                           ; $77B5: $00
    nop                                           ; $77B6: $00
    nop                                           ; $77B7: $00
    nop                                           ; $77B8: $00
    nop                                           ; $77B9: $00
    nop                                           ; $77BA: $00
    nop                                           ; $77BB: $00
    nop                                           ; $77BC: $00
    nop                                           ; $77BD: $00
    nop                                           ; $77BE: $00
    nop                                           ; $77BF: $00
    add hl, de                                    ; $77C0: $19
    rrca                                          ; $77C1: $0F
    add hl, de                                    ; $77C2: $19
    rrca                                          ; $77C3: $0F
    dec e                                         ; $77C4: $1D

jr_00F_77C5:
    rrca                                          ; $77C5: $0F
    dec c                                         ; $77C6: $0D
    rlca                                          ; $77C7: $07
    ld c, $07                                     ; $77C8: $0E $07
    rlca                                          ; $77CA: $07
    inc bc                                        ; $77CB: $03
    rlca                                          ; $77CC: $07
    inc bc                                        ; $77CD: $03
    inc bc                                        ; $77CE: $03
    ld bc, $0001                                  ; $77CF: $01 $01 $00
    nop                                           ; $77D2: $00
    nop                                           ; $77D3: $00
    nop                                           ; $77D4: $00
    nop                                           ; $77D5: $00
    nop                                           ; $77D6: $00
    nop                                           ; $77D7: $00
    nop                                           ; $77D8: $00
    nop                                           ; $77D9: $00
    nop                                           ; $77DA: $00
    nop                                           ; $77DB: $00
    nop                                           ; $77DC: $00
    nop                                           ; $77DD: $00
    inc bc                                        ; $77DE: $03
    nop                                           ; $77DF: $00
    ld bc, $0300                                  ; $77E0: $01 $00 $03
    ld bc, $0207                                  ; $77E3: $01 $07 $02
    rrca                                          ; $77E6: $0F
    ld b, $1A                                     ; $77E7: $06 $1A
    inc c                                         ; $77E9: $0C
    ld a, [de]                                    ; $77EA: $1A
    inc c                                         ; $77EB: $0C
    ld [hl], $1C                                  ; $77EC: $36 $1C
    inc [hl]                                      ; $77EE: $34
    jr @+$36                                      ; $77EF: $18 $34

    jr jr_00F_7859                                ; $77F1: $18 $66

    jr c, jr_00F_785C                             ; $77F3: $38 $67

    ld a, [hl-]                                   ; $77F5: $3A
    ld h, a                                       ; $77F6: $67
    jr c, jr_00F_7860                             ; $77F7: $38 $67

    jr c, jr_00F_7862                             ; $77F9: $38 $67

    dec sp                                        ; $77FB: $3B
    ld h, a                                       ; $77FC: $67
    jr c, jr_00F_7866                             ; $77FD: $38 $67

    jr c, jr_00F_780F                             ; $77FF: $38 $0E

    inc bc                                        ; $7801: $03
    dec de                                        ; $7802: $1B
    inc c                                         ; $7803: $0C
    rra                                           ; $7804: $1F

jr_00F_7805:
    ld bc, $060D                                  ; $7805: $01 $0D $06
    rrca                                          ; $7808: $0F
    nop                                           ; $7809: $00
    inc bc                                        ; $780A: $03
    ld bc, $0003                                  ; $780B: $01 $03 $00
    nop                                           ; $780E: $00

jr_00F_780F:
    nop                                           ; $780F: $00
    nop                                           ; $7810: $00
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    nop                                           ; $7813: $00
    nop                                           ; $7814: $00
    nop                                           ; $7815: $00
    nop                                           ; $7816: $00
    nop                                           ; $7817: $00
    nop                                           ; $7818: $00
    nop                                           ; $7819: $00
    nop                                           ; $781A: $00

jr_00F_781B:
    nop                                           ; $781B: $00
    nop                                           ; $781C: $00
    nop                                           ; $781D: $00
    nop                                           ; $781E: $00
    nop                                           ; $781F: $00
    inc b                                         ; $7820: $04
    nop                                           ; $7821: $00
    ld c, $04                                     ; $7822: $0E $04
    ld e, $0C                                     ; $7824: $1E $0C
    dec e                                         ; $7826: $1D
    ld c, $3F                                     ; $7827: $0E $3F
    inc e                                         ; $7829: $1C
    ld a, $1D                                     ; $782A: $3E $1D
    ld a, [hl]                                    ; $782C: $7E
    dec sp                                        ; $782D: $3B
    ld a, a                                       ; $782E: $7F
    dec sp                                        ; $782F: $3B
    rst RST_38                                    ; $7830: $FF
    ld [hl], a                                    ; $7831: $77
    rst RST_38                                    ; $7832: $FF
    ld [hl], b                                    ; $7833: $70
    ld a, a                                       ; $7834: $7F
    dec bc                                        ; $7835: $0B
    ccf                                           ; $7836: $3F
    dec de                                        ; $7837: $1B
    ccf                                           ; $7838: $3F
    dec e                                         ; $7839: $1D
    ccf                                           ; $783A: $3F
    dec e                                         ; $783B: $1D
    ccf                                           ; $783C: $3F
    dec e                                         ; $783D: $1D
    ccf                                           ; $783E: $3F
    dec e                                         ; $783F: $1D
    add b                                         ; $7840: $80
    nop                                           ; $7841: $00
    add b                                         ; $7842: $80
    nop                                           ; $7843: $00
    ld b, b                                       ; $7844: $40
    add b                                         ; $7845: $80
    ld b, e                                       ; $7846: $43
    add b                                         ; $7847: $80

jr_00F_7848:
    add l                                         ; $7848: $85
    inc bc                                        ; $7849: $03

jr_00F_784A:
    adc $05                                       ; $784A: $CE $05
    ld c, e                                       ; $784C: $4B
    add h                                         ; $784D: $84
    ld c, [hl]                                    ; $784E: $4E
    add h                                         ; $784F: $84
    xor d                                         ; $7850: $AA
    call nz, $C4AE                                ; $7851: $C4 $AE $C4
    db $DB                                        ; $7854: $DB
    db $E4                                        ; $7855: $E4
    rst RST_38                                    ; $7856: $FF
    push hl                                       ; $7857: $E5
    rst RST_38                                    ; $7858: $FF

jr_00F_7859:
    di                                            ; $7859: $F3
    cp $F7                                        ; $785A: $FE $F7

jr_00F_785C:
    rst RST_38                                    ; $785C: $FF
    rst RST_08                                    ; $785D: $CF
    rst RST_38                                    ; $785E: $FF
    ccf                                           ; $785F: $3F

jr_00F_7860:
    rlca                                          ; $7860: $07
    nop                                           ; $7861: $00

jr_00F_7862:
    dec b                                         ; $7862: $05
    ld [bc], a                                    ; $7863: $02
    dec b                                         ; $7864: $05
    ld [bc], a                                    ; $7865: $02

jr_00F_7866:
    add hl, bc                                    ; $7866: $09
    ld b, $09                                     ; $7867: $06 $09
    ld b, $11                                     ; $7869: $06 $11
    ld c, $12                                     ; $786B: $0E $12
    inc c                                         ; $786D: $0C
    and d                                         ; $786E: $A2
    inc e                                         ; $786F: $1C
    and d                                         ; $7870: $A2
    inc e                                         ; $7871: $1C
    call nz, $C5B8                                ; $7872: $C4 $B8 $C5
    jr c, jr_00F_7805                             ; $7875: $38 $8E

    ld [hl], c                                    ; $7877: $71
    add b                                         ; $7878: $80
    ld a, a                                       ; $7879: $7F
    add b                                         ; $787A: $80
    rst RST_38                                    ; $787B: $FF
    ld [bc], a                                    ; $787C: $02
    rst RST_38                                    ; $787D: $FF
    inc c                                         ; $787E: $0C
    rst RST_38                                    ; $787F: $FF
    jr nc, jr_00F_7882                            ; $7880: $30 $00

jr_00F_7882:
    ld d, b                                       ; $7882: $50
    jr nz, @-$5E                                  ; $7883: $20 $A0

    ld b, b                                       ; $7885: $40
    jr nz, jr_00F_7848                            ; $7886: $20 $C0

    jr nz, jr_00F_784A                            ; $7888: $20 $C0

    ld b, [hl]                                    ; $788A: $46
    add b                                         ; $788B: $80
    ld c, d                                       ; $788C: $4A
    add h                                         ; $788D: $84
    ld d, h                                       ; $788E: $54
    adc b                                         ; $788F: $88
    db $E4                                        ; $7890: $E4
    jr jr_00F_781B                                ; $7891: $18 $88

    ld [hl], b                                    ; $7893: $70
    ld [$10F0], sp                                ; $7894: $08 $F0 $10
    ldh [rNR10], a                                ; $7897: $E0 $10
    ldh [rNR41], a                                ; $7899: $E0 $20
    ret nz                                        ; $789B: $C0

    ld b, b                                       ; $789C: $40
    add b                                         ; $789D: $80
    add b                                         ; $789E: $80
    nop                                           ; $789F: $00
    ccf                                           ; $78A0: $3F
    ld e, $3F                                     ; $78A1: $1E $3F
    ld e, $3F                                     ; $78A3: $1E $3F
    ld e, $3F                                     ; $78A5: $1E $3F
    db $10                                        ; $78A7: $10
    inc de                                        ; $78A8: $13
    dec c                                         ; $78A9: $0D
    rra                                           ; $78AA: $1F
    nop                                           ; $78AB: $00
    cpl                                           ; $78AC: $2F
    inc de                                        ; $78AD: $13
    ld a, a                                       ; $78AE: $7F
    rrca                                          ; $78AF: $0F
    rst RST_38                                    ; $78B0: $FF
    ld a, a                                       ; $78B1: $7F
    ld a, a                                       ; $78B2: $7F
    rlca                                          ; $78B3: $07
    rlca                                          ; $78B4: $07
    nop                                           ; $78B5: $00
    rlca                                          ; $78B6: $07
    ld bc, $071F                                  ; $78B7: $01 $1F $07
    ld a, a                                       ; $78BA: $7F
    rra                                           ; $78BB: $1F
    rst RST_38                                    ; $78BC: $FF
    ld a, a                                       ; $78BD: $7F
    rst RST_38                                    ; $78BE: $FF
    nop                                           ; $78BF: $00
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
    cp $FF                                        ; $78D0: $FE $FF
    rst RST_30                                    ; $78D2: $F7
    ld hl, sp-$03                                 ; $78D3: $F8 $FD
    nop                                           ; $78D5: $00
    push de                                       ; $78D6: $D5
    xor b                                         ; $78D7: $A8
    cp [hl]                                       ; $78D8: $BE
    ld d, h                                       ; $78D9: $54
    ld a, [$6E44]                                 ; $78DA: $FA $44 $6E
    inc b                                         ; $78DD: $04
    ld b, $00                                     ; $78DE: $06 $00
    ld a, h                                       ; $78E0: $7C
    rst RST_38                                    ; $78E1: $FF
    ld hl, sp-$01                                 ; $78E2: $F8 $FF
    ldh a, [rIE]                                  ; $78E4: $F0 $FF
    pop hl                                        ; $78E6: $E1
    rst RST_38                                    ; $78E7: $FF
    add $FF                                       ; $78E8: $C6 $FF
    cp [hl]                                       ; $78EA: $BE
    rst RST_38                                    ; $78EB: $FF
    db $FC                                        ; $78EC: $FC
    rst RST_38                                    ; $78ED: $FF
    ld sp, hl                                     ; $78EE: $F9
    cp $F2                                        ; $78EF: $FE $F2
    db $FC                                        ; $78F1: $FC
    db $E4                                        ; $78F2: $E4
    ld hl, sp-$68                                 ; $78F3: $F8 $98
    ldh [$FFE0], a                                ; $78F5: $E0 $E0
    nop                                           ; $78F7: $00
    ret nz                                        ; $78F8: $C0

    nop                                           ; $78F9: $00
    ret nz                                        ; $78FA: $C0

    nop                                           ; $78FB: $00
    add b                                         ; $78FC: $80
    nop                                           ; $78FD: $00
    nop                                           ; $78FE: $00
    nop                                           ; $78FF: $00
    ld bc, $0000                                  ; $7900: $01 $00 $00
    nop                                           ; $7903: $00
    nop                                           ; $7904: $00
    nop                                           ; $7905: $00
    nop                                           ; $7906: $00
    nop                                           ; $7907: $00
    nop                                           ; $7908: $00
    nop                                           ; $7909: $00
    nop                                           ; $790A: $00
    nop                                           ; $790B: $00
    nop                                           ; $790C: $00
    nop                                           ; $790D: $00
    nop                                           ; $790E: $00
    nop                                           ; $790F: $00
    nop                                           ; $7910: $00
    nop                                           ; $7911: $00
    nop                                           ; $7912: $00
    nop                                           ; $7913: $00
    nop                                           ; $7914: $00
    nop                                           ; $7915: $00
    nop                                           ; $7916: $00
    nop                                           ; $7917: $00
    nop                                           ; $7918: $00
    nop                                           ; $7919: $00
    nop                                           ; $791A: $00
    nop                                           ; $791B: $00
    nop                                           ; $791C: $00
    nop                                           ; $791D: $00
    nop                                           ; $791E: $00
    nop                                           ; $791F: $00
    ld [bc], a                                    ; $7920: $02
    ld bc, $0305                                  ; $7921: $01 $05 $03
    dec b                                         ; $7924: $05
    inc bc                                        ; $7925: $03
    add hl, bc                                    ; $7926: $09
    rlca                                          ; $7927: $07
    dec bc                                        ; $7928: $0B
    rlca                                          ; $7929: $07
    ld [de], a                                    ; $792A: $12
    rrca                                          ; $792B: $0F
    inc d                                         ; $792C: $14
    rrca                                          ; $792D: $0F
    ld hl, $221E                                  ; $792E: $21 $1E $22
    inc e                                         ; $7931: $1C
    dec h                                         ; $7932: $25
    jr jr_00F_797E                                ; $7933: $18 $49

    jr nc, jr_00F_7987                            ; $7935: $30 $50

    jr nz, @+$52                                  ; $7937: $20 $50

    jr nz, @-$5E                                  ; $7939: $20 $A0

    ld b, b                                       ; $793B: $40
    and b                                         ; $793C: $A0
    ld b, b                                       ; $793D: $40
    ret nz                                        ; $793E: $C0

    nop                                           ; $793F: $00
    nop                                           ; $7940: $00
    nop                                           ; $7941: $00
    nop                                           ; $7942: $00
    nop                                           ; $7943: $00
    nop                                           ; $7944: $00
    nop                                           ; $7945: $00
    nop                                           ; $7946: $00
    nop                                           ; $7947: $00
    nop                                           ; $7948: $00
    nop                                           ; $7949: $00
    nop                                           ; $794A: $00
    nop                                           ; $794B: $00
    nop                                           ; $794C: $00
    nop                                           ; $794D: $00
    nop                                           ; $794E: $00
    nop                                           ; $794F: $00
    ld bc, $0300                                  ; $7950: $01 $00 $03
    ld bc, $0307                                  ; $7953: $01 $07 $03
    rrca                                          ; $7956: $0F
    rlca                                          ; $7957: $07
    rla                                           ; $7958: $17
    rrca                                          ; $7959: $0F
    cpl                                           ; $795A: $2F
    rra                                           ; $795B: $1F
    ld e, a                                       ; $795C: $5F
    ccf                                           ; $795D: $3F
    cp a                                          ; $795E: $BF
    ld a, a                                       ; $795F: $7F
    nop                                           ; $7960: $00
    nop                                           ; $7961: $00
    nop                                           ; $7962: $00
    nop                                           ; $7963: $00
    nop                                           ; $7964: $00
    nop                                           ; $7965: $00
    nop                                           ; $7966: $00
    nop                                           ; $7967: $00
    nop                                           ; $7968: $00

jr_00F_7969:
    nop                                           ; $7969: $00
    ld c, $00                                     ; $796A: $0E $00
    ccf                                           ; $796C: $3F
    ld b, $FF                                     ; $796D: $06 $FF
    ccf                                           ; $796F: $3F
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

jr_00F_797E:
    rst RST_38                                    ; $797E: $FF
    rst RST_38                                    ; $797F: $FF
    rst RST_38                                    ; $7980: $FF
    rst RST_38                                    ; $7981: $FF
    rst RST_28                                    ; $7982: $EF
    rst RST_38                                    ; $7983: $FF
    adc $FF                                       ; $7984: $CE $FF
    adc h                                         ; $7986: $8C

jr_00F_7987:
    rst RST_38                                    ; $7987: $FF
    jr z, jr_00F_7969                             ; $7988: $28 $DF

    ld b, b                                       ; $798A: $40
    cp a                                          ; $798B: $BF
    call z, $9533                                 ; $798C: $CC $33 $95
    ld h, e                                       ; $798F: $63
    and h                                         ; $7990: $A4
    ld b, e                                       ; $7991: $43
    ld c, b                                       ; $7992: $48
    add a                                         ; $7993: $87
    adc c                                         ; $7994: $89
    ld b, $0A                                     ; $7995: $06 $0A
    inc b                                         ; $7997: $04
    inc d                                         ; $7998: $14
    ld [$0018], sp                                ; $7999: $08 $18 $00
    nop                                           ; $799C: $00
    nop                                           ; $799D: $00
    nop                                           ; $799E: $00
    nop                                           ; $799F: $00
    rst RST_18                                    ; $79A0: $DF
    cp $3F                                        ; $79A1: $FE $3F
    cp $3F                                        ; $79A3: $FE $3F
    cp $7F                                        ; $79A5: $FE $7F
    cp $6E                                        ; $79A7: $FE $6E
    db $FD                                        ; $79A9: $FD
    adc $FD                                       ; $79AA: $CE $FD
    sbc l                                         ; $79AC: $9D
    ei                                            ; $79AD: $FB
    dec a                                         ; $79AE: $3D
    ei                                            ; $79AF: $FB
    ld a, a                                       ; $79B0: $7F
    xor e                                         ; $79B1: $AB
    cp a                                          ; $79B2: $BF
    ld b, $0F                                     ; $79B3: $06 $0F
    ld [bc], a                                    ; $79B5: $02
    rrca                                          ; $79B6: $0F
    ld [bc], a                                    ; $79B7: $02
    rrca                                          ; $79B8: $0F
    ld [bc], a                                    ; $79B9: $02
    ld c, $01                                     ; $79BA: $0E $01
    ld a, [bc]                                    ; $79BC: $0A
    dec b                                         ; $79BD: $05
    ld a, [bc]                                    ; $79BE: $0A
    dec b                                         ; $79BF: $05
    nop                                           ; $79C0: $00
    nop                                           ; $79C1: $00
    nop                                           ; $79C2: $00
    nop                                           ; $79C3: $00
    nop                                           ; $79C4: $00
    nop                                           ; $79C5: $00
    nop                                           ; $79C6: $00
    nop                                           ; $79C7: $00
    nop                                           ; $79C8: $00
    nop                                           ; $79C9: $00
    nop                                           ; $79CA: $00
    nop                                           ; $79CB: $00
    ret nz                                        ; $79CC: $C0

    nop                                           ; $79CD: $00
    ldh [$FFC0], a                                ; $79CE: $E0 $C0
    ldh [$FFC0], a                                ; $79D0: $E0 $C0
    pop bc                                        ; $79D2: $C1
    add b                                         ; $79D3: $80
    jp nz, $C581                                  ; $79D4: $C2 $81 $C5

    add e                                         ; $79D7: $83
    res 0, a                                      ; $79D8: $CB $87
    rst RST_10                                    ; $79DA: $D7
    adc a                                         ; $79DB: $8F
    rst RST_18                                    ; $79DC: $DF
    add e                                         ; $79DD: $83
    rst RST_08                                    ; $79DE: $CF
    add h                                         ; $79DF: $84
    nop                                           ; $79E0: $00
    nop                                           ; $79E1: $00
    nop                                           ; $79E2: $00
    nop                                           ; $79E3: $00
    nop                                           ; $79E4: $00
    nop                                           ; $79E5: $00
    nop                                           ; $79E6: $00
    nop                                           ; $79E7: $00
    nop                                           ; $79E8: $00
    nop                                           ; $79E9: $00
    nop                                           ; $79EA: $00
    nop                                           ; $79EB: $00
    nop                                           ; $79EC: $00
    nop                                           ; $79ED: $00
    nop                                           ; $79EE: $00
    nop                                           ; $79EF: $00
    ret nz                                        ; $79F0: $C0

    nop                                           ; $79F1: $00
    ld h, c                                       ; $79F2: $61
    add b                                         ; $79F3: $80

jr_00F_79F4:
    rst RST_20                                    ; $79F4: $E7
    add c                                         ; $79F5: $81
    rst RST_38                                    ; $79F6: $FF
    and a                                         ; $79F7: $A7
    ld a, a                                       ; $79F8: $7F
    xor a                                         ; $79F9: $AF
    rst RST_28                                    ; $79FA: $EF
    ld e, a                                       ; $79FB: $5F
    rst RST_18                                    ; $79FC: $DF
    ccf                                           ; $79FD: $3F
    cp a                                          ; $79FE: $BF
    ld a, a                                       ; $79FF: $7F
    ld e, l                                       ; $7A00: $5D
    dec sp                                        ; $7A01: $3B
    cp c                                          ; $7A02: $B9
    ld [hl], a                                    ; $7A03: $77
    ld [hl], e                                    ; $7A04: $73
    rst RST_28                                    ; $7A05: $EF
    ld h, a                                       ; $7A06: $67
    rst RST_18                                    ; $7A07: $DF
    ld c, a                                       ; $7A08: $4F
    cp a                                          ; $7A09: $BF
    ld c, a                                       ; $7A0A: $4F
    cp a                                          ; $7A0B: $BF
    sbc a                                         ; $7A0C: $9F
    ld a, a                                       ; $7A0D: $7F
    sbc a                                         ; $7A0E: $9F
    ld a, a                                       ; $7A0F: $7F
    cp e                                          ; $7A10: $BB
    ld a, a                                       ; $7A11: $7F
    scf                                           ; $7A12: $37
    ei                                            ; $7A13: $FB
    ld l, [hl]                                    ; $7A14: $6E
    di                                            ; $7A15: $F3
    ld e, h                                       ; $7A16: $5C
    db $E3                                        ; $7A17: $E3
    dec d                                         ; $7A18: $15
    ld [$CA35], a                                 ; $7A19: $EA $35 $CA
    ld l, $D0                                     ; $7A1C: $2E $D0
    ld b, h                                       ; $7A1E: $44
    cp b                                          ; $7A1F: $B8
    cp $FC                                        ; $7A20: $FE $FC
    cp $FC                                        ; $7A22: $FE $FC
    db $FC                                        ; $7A24: $FC
    ld hl, sp-$04                                 ; $7A25: $F8 $FC
    ld hl, sp-$08                                 ; $7A27: $F8 $F8
    ldh a, [$FFF8]                                ; $7A29: $F0 $F8
    ldh a, [$FFF0]                                ; $7A2B: $F0 $F0
    ldh [$FFF0], a                                ; $7A2D: $E0 $F0
    ldh [$FFA0], a                                ; $7A2F: $E0 $A0
    ret nz                                        ; $7A31: $C0

    jr nz, jr_00F_79F4                            ; $7A32: $20 $C0

    ld b, b                                       ; $7A34: $40
    add b                                         ; $7A35: $80
    ld b, b                                       ; $7A36: $40
    add b                                         ; $7A37: $80
    add b                                         ; $7A38: $80
    nop                                           ; $7A39: $00
    nop                                           ; $7A3A: $00
    nop                                           ; $7A3B: $00
    nop                                           ; $7A3C: $00
    nop                                           ; $7A3D: $00
    nop                                           ; $7A3E: $00
    nop                                           ; $7A3F: $00
    nop                                           ; $7A40: $00
    nop                                           ; $7A41: $00
    nop                                           ; $7A42: $00
    nop                                           ; $7A43: $00
    nop                                           ; $7A44: $00
    nop                                           ; $7A45: $00
    nop                                           ; $7A46: $00
    nop                                           ; $7A47: $00
    nop                                           ; $7A48: $00
    nop                                           ; $7A49: $00
    nop                                           ; $7A4A: $00
    nop                                           ; $7A4B: $00
    nop                                           ; $7A4C: $00
    nop                                           ; $7A4D: $00
    rrca                                          ; $7A4E: $0F
    nop                                           ; $7A4F: $00
    ld a, a                                       ; $7A50: $7F
    ld c, $FF                                     ; $7A51: $0E $FF
    ld a, h                                       ; $7A53: $7C
    rst RST_38                                    ; $7A54: $FF
    rst RST_38                                    ; $7A55: $FF
    rst RST_38                                    ; $7A56: $FF
    cp $FE                                        ; $7A57: $FE $FE
    ldh [$FFE0], a                                ; $7A59: $E0 $E0
    ret nz                                        ; $7A5B: $C0

    ret nz                                        ; $7A5C: $C0

    add b                                         ; $7A5D: $80
    ret nz                                        ; $7A5E: $C0

    add b                                         ; $7A5F: $80
    nop                                           ; $7A60: $00
    nop                                           ; $7A61: $00
    nop                                           ; $7A62: $00
    nop                                           ; $7A63: $00
    nop                                           ; $7A64: $00
    nop                                           ; $7A65: $00
    nop                                           ; $7A66: $00
    nop                                           ; $7A67: $00
    nop                                           ; $7A68: $00
    nop                                           ; $7A69: $00
    nop                                           ; $7A6A: $00
    nop                                           ; $7A6B: $00
    nop                                           ; $7A6C: $00
    nop                                           ; $7A6D: $00
    nop                                           ; $7A6E: $00
    nop                                           ; $7A6F: $00
    nop                                           ; $7A70: $00
    nop                                           ; $7A71: $00
    nop                                           ; $7A72: $00
    nop                                           ; $7A73: $00
    nop                                           ; $7A74: $00
    nop                                           ; $7A75: $00
    nop                                           ; $7A76: $00
    nop                                           ; $7A77: $00
    nop                                           ; $7A78: $00
    nop                                           ; $7A79: $00
    ldh [rP1], a                                  ; $7A7A: $E0 $00
    ldh [$FFC0], a                                ; $7A7C: $E0 $C0
    ret nz                                        ; $7A7E: $C0

    nop                                           ; $7A7F: $00
    inc c                                         ; $7A80: $0C
    inc bc                                        ; $7A81: $03
    dec c                                         ; $7A82: $0D
    ld [bc], a                                    ; $7A83: $02
    dec c                                         ; $7A84: $0D
    ld [bc], a                                    ; $7A85: $02
    rra                                           ; $7A86: $1F
    nop                                           ; $7A87: $00
    dec sp                                        ; $7A88: $3B
    inc b                                         ; $7A89: $04
    ld a, a                                       ; $7A8A: $7F
    ld [$0836], sp                                ; $7A8B: $08 $36 $08
    db $FC                                        ; $7A8E: $FC
    db $10                                        ; $7A8F: $10
    jr z, jr_00F_7AA2                             ; $7A90: $28 $10

    ld [hl], b                                    ; $7A92: $70
    jr nz, jr_00F_7AF5                            ; $7A93: $20 $60

    nop                                           ; $7A95: $00
    nop                                           ; $7A96: $00
    nop                                           ; $7A97: $00
    nop                                           ; $7A98: $00
    nop                                           ; $7A99: $00
    nop                                           ; $7A9A: $00
    nop                                           ; $7A9B: $00
    nop                                           ; $7A9C: $00
    nop                                           ; $7A9D: $00
    nop                                           ; $7A9E: $00
    nop                                           ; $7A9F: $00
    ld hl, sp+$00                                 ; $7AA0: $F8 $00

jr_00F_7AA2:
    sbc h                                         ; $7AA2: $9C
    ld l, b                                       ; $7AA3: $68
    ld a, [$996C]                                 ; $7AA4: $FA $6C $99
    ld l, [hl]                                    ; $7AA7: $6E
    cp $6F                                        ; $7AA8: $FE $6F
    ld e, [hl]                                    ; $7AAA: $5E
    dec l                                         ; $7AAB: $2D
    ld a, a                                       ; $7AAC: $7F
    ld a, [hl+]                                   ; $7AAD: $2A
    ld c, d                                       ; $7AAE: $4A
    dec [hl]                                      ; $7AAF: $35
    ccf                                           ; $7AB0: $3F
    ld [de], a                                    ; $7AB1: $12
    ld a, [hl+]                                   ; $7AB2: $2A
    ld de, $081D                                  ; $7AB3: $11 $1D $08
    inc c                                         ; $7AB6: $0C
    nop                                           ; $7AB7: $00
    nop                                           ; $7AB8: $00
    nop                                           ; $7AB9: $00
    nop                                           ; $7ABA: $00
    nop                                           ; $7ABB: $00
    nop                                           ; $7ABC: $00
    nop                                           ; $7ABD: $00
    nop                                           ; $7ABE: $00
    nop                                           ; $7ABF: $00
    add b                                         ; $7AC0: $80
    nop                                           ; $7AC1: $00
    ldh [$FF80], a                                ; $7AC2: $E0 $80
    cp b                                          ; $7AC4: $B8
    ld h, b                                       ; $7AC5: $60
    db $EC                                        ; $7AC6: $EC
    sbc b                                         ; $7AC7: $98
    cp h                                          ; $7AC8: $BC
    ld h, b                                       ; $7AC9: $60
    ldh a, [$FF80]                                ; $7ACA: $F0 $80
    add b                                         ; $7ACC: $80
    nop                                           ; $7ACD: $00
    nop                                           ; $7ACE: $00
    nop                                           ; $7ACF: $00
    nop                                           ; $7AD0: $00
    nop                                           ; $7AD1: $00
    nop                                           ; $7AD2: $00
    nop                                           ; $7AD3: $00
    nop                                           ; $7AD4: $00
    nop                                           ; $7AD5: $00
    nop                                           ; $7AD6: $00
    nop                                           ; $7AD7: $00
    nop                                           ; $7AD8: $00
    nop                                           ; $7AD9: $00
    nop                                           ; $7ADA: $00
    nop                                           ; $7ADB: $00
    nop                                           ; $7ADC: $00
    nop                                           ; $7ADD: $00
    nop                                           ; $7ADE: $00
    nop                                           ; $7ADF: $00
    ldh [rP1], a                                  ; $7AE0: $E0 $00
    cp h                                          ; $7AE2: $BC
    ld h, b                                       ; $7AE3: $60
    ld e, [hl]                                    ; $7AE4: $5E
    inc a                                         ; $7AE5: $3C
    ld l, $1C                                     ; $7AE6: $2E $1C
    inc e                                         ; $7AE8: $1C
    ld [$081C], sp                                ; $7AE9: $08 $1C $08
    inc e                                         ; $7AEC: $1C
    ld [$081C], sp                                ; $7AED: $08 $1C $08
    dec e                                         ; $7AF0: $1D
    ld [$182D], sp                                ; $7AF1: $08 $2D $18
    inc l                                         ; $7AF4: $2C

jr_00F_7AF5:
    jr @+$2F                                      ; $7AF5: $18 $2D

    jr @+$30                                      ; $7AF7: $18 $2E

    add hl, de                                    ; $7AF9: $19
    dec l                                         ; $7AFA: $2D
    dec de                                        ; $7AFB: $1B
    ld e, l                                       ; $7AFC: $5D
    dec sp                                        ; $7AFD: $3B
    ld e, c                                       ; $7AFE: $59
    scf                                           ; $7AFF: $37
    inc c                                         ; $7B00: $0C
    nop                                           ; $7B01: $00
    ld d, $08                                     ; $7B02: $16 $08
    ld l, $18                                     ; $7B04: $2E $18
    ld e, a                                       ; $7B06: $5F
    ld a, [hl-]                                   ; $7B07: $3A
    or a                                          ; $7B08: $B7
    ld a, d                                       ; $7B09: $7A
    ld a, a                                       ; $7B0A: $7F
    or $FF                                        ; $7B0B: $F6 $FF
    scf                                           ; $7B0D: $37
    rst RST_38                                    ; $7B0E: $FF
    ld b, a                                       ; $7B0F: $47
    ld a, a                                       ; $7B10: $7F
    db $E3                                        ; $7B11: $E3
    rst RST_38                                    ; $7B12: $FF
    ret c                                         ; $7B13: $D8

    db $FD                                        ; $7B14: $FD
    ret c                                         ; $7B15: $D8

    ei                                            ; $7B16: $FB
    or c                                          ; $7B17: $B1
    cp $B3                                        ; $7B18: $FE $B3
    db $FC                                        ; $7B1A: $FC
    or a                                          ; $7B1B: $B7
    db $FC                                        ; $7B1C: $FC
    or a                                          ; $7B1D: $B7
    db $FD                                        ; $7B1E: $FD
    xor a                                         ; $7B1F: $AF
    ld bc, $0300                                  ; $7B20: $01 $00 $03
    ld bc, $0207                                  ; $7B23: $01 $07 $02
    ld c, $04                                     ; $7B26: $0E $04
    sbc h                                         ; $7B28: $9C
    ld [$18BC], sp                                ; $7B29: $08 $BC $18
    ld hl, sp+$30                                 ; $7B2C: $F8 $30
    ret c                                         ; $7B2E: $D8

    ld [hl], b                                    ; $7B2F: $70
    or b                                          ; $7B30: $B0
    ldh [$FF30], a                                ; $7B31: $E0 $30
    ldh [$FF60], a                                ; $7B33: $E0 $60
    ret nz                                        ; $7B35: $C0

    ldh [$FFC0], a                                ; $7B36: $E0 $C0
    ret nz                                        ; $7B38: $C0

    add b                                         ; $7B39: $80
    ret nz                                        ; $7B3A: $C0

    add b                                         ; $7B3B: $80
    add b                                         ; $7B3C: $80
    nop                                           ; $7B3D: $00
    add b                                         ; $7B3E: $80
    nop                                           ; $7B3F: $00
    nop                                           ; $7B40: $00
    nop                                           ; $7B41: $00
    nop                                           ; $7B42: $00
    nop                                           ; $7B43: $00
    nop                                           ; $7B44: $00
    nop                                           ; $7B45: $00
    nop                                           ; $7B46: $00
    nop                                           ; $7B47: $00
    nop                                           ; $7B48: $00
    nop                                           ; $7B49: $00
    nop                                           ; $7B4A: $00
    nop                                           ; $7B4B: $00
    nop                                           ; $7B4C: $00
    nop                                           ; $7B4D: $00
    nop                                           ; $7B4E: $00
    nop                                           ; $7B4F: $00
    nop                                           ; $7B50: $00
    nop                                           ; $7B51: $00
    nop                                           ; $7B52: $00
    nop                                           ; $7B53: $00
    jr nc, jr_00F_7B56                            ; $7B54: $30 $00

jr_00F_7B56:
    ld [hl], b                                    ; $7B56: $70

jr_00F_7B57:
    jr nz, jr_00F_7B57                            ; $7B57: $20 $FE

    ld b, b                                       ; $7B59: $40
    adc [hl]                                      ; $7B5A: $8E
    db $FC                                        ; $7B5B: $FC
    inc a                                         ; $7B5C: $3C
    ldh [$FFE0], a                                ; $7B5D: $E0 $E0
    nop                                           ; $7B5F: $00
    ld e, e                                       ; $7B60: $5B
    scf                                           ; $7B61: $37
    ld d, a                                       ; $7B62: $57
    cpl                                           ; $7B63: $2F

jr_00F_7B64:
    ld d, a                                       ; $7B64: $57
    cpl                                           ; $7B65: $2F
    ld e, a                                       ; $7B66: $5F
    cpl                                           ; $7B67: $2F
    ld a, a                                       ; $7B68: $7F
    ld e, $3E                                     ; $7B69: $1E $3E
    dec c                                         ; $7B6B: $0D
    ccf                                           ; $7B6C: $3F
    inc c                                         ; $7B6D: $0C
    ld a, $0D                                     ; $7B6E: $3E $0D
    ccf                                           ; $7B70: $3F
    ld [$132C], sp                                ; $7B71: $08 $2C $13
    jr nz, jr_00F_7B95                            ; $7B74: $20 $1F

    db $10                                        ; $7B76: $10
    rrca                                          ; $7B77: $0F
    add hl, de                                    ; $7B78: $19
    ld b, $17                                     ; $7B79: $06 $17
    ld [$083F], sp                                ; $7B7B: $08 $3F $08
    ld [hl], a                                    ; $7B7E: $77
    ld [$AFFF], sp                                ; $7B7F: $08 $FF $AF
    rst RST_38                                    ; $7B82: $FF
    rra                                           ; $7B83: $1F
    ld a, a                                       ; $7B84: $7F
    add [hl]                                      ; $7B85: $86
    rst RST_20                                    ; $7B86: $E7
    ld a, [de]                                    ; $7B87: $1A
    ld b, [hl]                                    ; $7B88: $46
    cp b                                          ; $7B89: $B8
    ret z                                         ; $7B8A: $C8

    jr nc, jr_00F_7BBD                            ; $7B8B: $30 $30

    ret nz                                        ; $7B8D: $C0

    db $10                                        ; $7B8E: $10
    ldh [$FFF0], a                                ; $7B8F: $E0 $F0
    nop                                           ; $7B91: $00
    jr c, jr_00F_7B64                             ; $7B92: $38 $D0

    db $F4                                        ; $7B94: $F4

jr_00F_7B95:
    ret c                                         ; $7B95: $D8

    ld [hl-], a                                   ; $7B96: $32
    call c, $DEFD                                 ; $7B97: $DC $FD $DE
    cp l                                          ; $7B9A: $BD
    ld e, e                                       ; $7B9B: $5B
    rst RST_38                                    ; $7B9C: $FF
    ld d, h                                       ; $7B9D: $54
    sub l                                         ; $7B9E: $95
    ld l, e                                       ; $7B9F: $6B
    ld a, a                                       ; $7BA0: $7F
    ld [$0836], sp                                ; $7BA1: $08 $36 $08
    db $FC                                        ; $7BA4: $FC
    db $10                                        ; $7BA5: $10
    jr z, jr_00F_7BB8                             ; $7BA6: $28 $10

    ld [hl], b                                    ; $7BA8: $70
    jr nz, jr_00F_7C0B                            ; $7BA9: $20 $60

    nop                                           ; $7BAB: $00
    nop                                           ; $7BAC: $00
    nop                                           ; $7BAD: $00
    nop                                           ; $7BAE: $00
    nop                                           ; $7BAF: $00
    nop                                           ; $7BB0: $00
    nop                                           ; $7BB1: $00
    nop                                           ; $7BB2: $00
    nop                                           ; $7BB3: $00
    nop                                           ; $7BB4: $00
    nop                                           ; $7BB5: $00
    nop                                           ; $7BB6: $00
    nop                                           ; $7BB7: $00

jr_00F_7BB8:
    nop                                           ; $7BB8: $00
    nop                                           ; $7BB9: $00
    nop                                           ; $7BBA: $00
    nop                                           ; $7BBB: $00
    nop                                           ; $7BBC: $00

jr_00F_7BBD:
    nop                                           ; $7BBD: $00
    nop                                           ; $7BBE: $00
    nop                                           ; $7BBF: $00
    ld a, a                                       ; $7BC0: $7F
    inc h                                         ; $7BC1: $24
    ld d, l                                       ; $7BC2: $55
    inc hl                                        ; $7BC3: $23
    dec sp                                        ; $7BC4: $3B
    db $10                                        ; $7BC5: $10
    jr jr_00F_7BC8                                ; $7BC6: $18 $00

jr_00F_7BC8:
    nop                                           ; $7BC8: $00
    nop                                           ; $7BC9: $00
    nop                                           ; $7BCA: $00
    nop                                           ; $7BCB: $00
    nop                                           ; $7BCC: $00
    nop                                           ; $7BCD: $00
    nop                                           ; $7BCE: $00
    nop                                           ; $7BCF: $00
    nop                                           ; $7BD0: $00
    nop                                           ; $7BD1: $00
    nop                                           ; $7BD2: $00
    nop                                           ; $7BD3: $00
    nop                                           ; $7BD4: $00
    nop                                           ; $7BD5: $00
    nop                                           ; $7BD6: $00
    nop                                           ; $7BD7: $00
    nop                                           ; $7BD8: $00
    nop                                           ; $7BD9: $00
    nop                                           ; $7BDA: $00
    nop                                           ; $7BDB: $00
    nop                                           ; $7BDC: $00
    nop                                           ; $7BDD: $00
    nop                                           ; $7BDE: $00
    nop                                           ; $7BDF: $00
    ret nz                                        ; $7BE0: $C0

    nop                                           ; $7BE1: $00
    ld [hl], b                                    ; $7BE2: $70
    ret nz                                        ; $7BE3: $C0

    ret c                                         ; $7BE4: $D8

    jr nc, jr_00F_7C5F                            ; $7BE5: $30 $78

    ret nz                                        ; $7BE7: $C0

    ldh [rP1], a                                  ; $7BE8: $E0 $00
    nop                                           ; $7BEA: $00
    nop                                           ; $7BEB: $00
    nop                                           ; $7BEC: $00
    nop                                           ; $7BED: $00
    nop                                           ; $7BEE: $00
    nop                                           ; $7BEF: $00
    nop                                           ; $7BF0: $00
    nop                                           ; $7BF1: $00
    nop                                           ; $7BF2: $00
    nop                                           ; $7BF3: $00
    nop                                           ; $7BF4: $00
    nop                                           ; $7BF5: $00
    nop                                           ; $7BF6: $00
    nop                                           ; $7BF7: $00
    nop                                           ; $7BF8: $00
    nop                                           ; $7BF9: $00
    nop                                           ; $7BFA: $00
    nop                                           ; $7BFB: $00
    nop                                           ; $7BFC: $00
    nop                                           ; $7BFD: $00
    nop                                           ; $7BFE: $00
    nop                                           ; $7BFF: $00
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

jr_00F_7C0B:
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

jr_00F_7C5F:
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
