; Disassembly of "original.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

Jump_010_4000:
    ccf                                           ; $4000: $3F
    db $10                                        ; $4001: $10
    inc a                                         ; $4002: $3C
    rlca                                          ; $4003: $07

jr_010_4004:
    rrca                                          ; $4004: $0F
    rlca                                          ; $4005: $07
    rrca                                          ; $4006: $0F
    nop                                           ; $4007: $00
    ld de, $120E                                  ; $4008: $11 $0E $12
    inc c                                         ; $400B: $0C
    ld [de], a                                    ; $400C: $12
    inc c                                         ; $400D: $0C
    inc e                                         ; $400E: $1C
    nop                                           ; $400F: $00
    inc a                                         ; $4010: $3C
    jr jr_010_404B                                ; $4011: $18 $38

    db $10                                        ; $4013: $10
    jr c, jr_010_4026                             ; $4014: $38 $10

    jr c, jr_010_4018                             ; $4016: $38 $00

jr_010_4018:
    inc a                                         ; $4018: $3C
    nop                                           ; $4019: $00
    inc a                                         ; $401A: $3C
    nop                                           ; $401B: $00
    ld a, [hl+]                                   ; $401C: $2A
    inc d                                         ; $401D: $14
    inc d                                         ; $401E: $14
    nop                                           ; $401F: $00
    nop                                           ; $4020: $00
    nop                                           ; $4021: $00
    nop                                           ; $4022: $00
    nop                                           ; $4023: $00
    nop                                           ; $4024: $00
    nop                                           ; $4025: $00

jr_010_4026:
    nop                                           ; $4026: $00
    nop                                           ; $4027: $00
    nop                                           ; $4028: $00
    nop                                           ; $4029: $00
    nop                                           ; $402A: $00
    nop                                           ; $402B: $00
    nop                                           ; $402C: $00
    nop                                           ; $402D: $00
    nop                                           ; $402E: $00
    nop                                           ; $402F: $00
    nop                                           ; $4030: $00
    nop                                           ; $4031: $00
    nop                                           ; $4032: $00
    nop                                           ; $4033: $00
    nop                                           ; $4034: $00
    nop                                           ; $4035: $00
    nop                                           ; $4036: $00
    nop                                           ; $4037: $00
    nop                                           ; $4038: $00
    nop                                           ; $4039: $00
    rrca                                          ; $403A: $0F
    nop                                           ; $403B: $00
    add hl, de                                    ; $403C: $19
    rrca                                          ; $403D: $0F
    ccf                                           ; $403E: $3F
    jr jr_010_4004                                ; $403F: $18 $C3

    nop                                           ; $4041: $00
    cp l                                          ; $4042: $BD
    ld b, d                                       ; $4043: $42
    cp e                                          ; $4044: $BB
    ld d, [hl]                                    ; $4045: $56
    or [hl]                                       ; $4046: $B6
    ld c, l                                       ; $4047: $4D
    adc $7B                                       ; $4048: $CE $7B
    rst RST_38                                    ; $404A: $FF

jr_010_404B:
    inc sp                                        ; $404B: $33
    rst RST_30                                    ; $404C: $F7
    adc e                                         ; $404D: $8B
    rst RST_38                                    ; $404E: $FF
    scf                                           ; $404F: $37
    rst RST_38                                    ; $4050: $FF
    ld d, $FF                                     ; $4051: $16 $FF
    ld b, b                                       ; $4053: $40
    rst RST_38                                    ; $4054: $FF
    ld a, a                                       ; $4055: $7F
    rst RST_38                                    ; $4056: $FF
    ld b, a                                       ; $4057: $47
    rst RST_30                                    ; $4058: $F7
    ld l, e                                       ; $4059: $6B
    rst RST_38                                    ; $405A: $FF
    ld [hl], a                                    ; $405B: $77
    rst RST_38                                    ; $405C: $FF
    ld b, h                                       ; $405D: $44

jr_010_405E:
    ld a, a                                       ; $405E: $7F
    jr jr_010_40E0                                ; $405F: $18 $7F

    rlca                                          ; $4061: $07
    ld a, a                                       ; $4062: $7F
    nop                                           ; $4063: $00
    adc [hl]                                      ; $4064: $8E
    ld [hl], c                                    ; $4065: $71
    adc h                                         ; $4066: $8C
    ld [hl], e                                    ; $4067: $73
    adc b                                         ; $4068: $88
    ld [hl], a                                    ; $4069: $77

jr_010_406A:
    ld a, h                                       ; $406A: $7C
    inc bc                                        ; $406B: $03
    ld l, e                                       ; $406C: $6B
    jr nc, jr_010_405E                            ; $406D: $30 $EF

    ld a, e                                       ; $406F: $7B
    rst RST_28                                    ; $4070: $EF
    ld a, e                                       ; $4071: $7B
    rst RST_38                                    ; $4072: $FF
    ld [hl], a                                    ; $4073: $77
    ld a, a                                       ; $4074: $7F
    inc [hl]                                      ; $4075: $34
    ld a, h                                       ; $4076: $7C
    jr z, @+$7E                                   ; $4077: $28 $7C

    jr nz, jr_010_40FA                            ; $4079: $20 $7F

    inc c                                         ; $407B: $0C
    rst RST_38                                    ; $407C: $FF
    ld [hl], a                                    ; $407D: $77
    rst RST_38                                    ; $407E: $FF
    ldh a, [$FF80]                                ; $407F: $F0 $80
    nop                                           ; $4081: $00
    cp b                                          ; $4082: $B8
    nop                                           ; $4083: $00
    ld h, h                                       ; $4084: $64
    cp b                                          ; $4085: $B8
    ld a, [hl]                                    ; $4086: $7E
    adc h                                         ; $4087: $8C
    cp $04                                        ; $4088: $FE $04
    xor $30                                       ; $408A: $EE $30
    ld hl, sp-$50                                 ; $408C: $F8 $B0
    db $F4                                        ; $408E: $F4
    adc b                                         ; $408F: $88
    ldh [c], a                                    ; $4090: $E2
    inc e                                         ; $4091: $1C
    sub $08                                       ; $4092: $D6 $08
    rst RST_08                                    ; $4094: $CF
    add [hl]                                      ; $4095: $86
    rst RST_08                                    ; $4096: $CF
    add [hl]                                      ; $4097: $86
    adc [hl]                                      ; $4098: $8E
    inc b                                         ; $4099: $04
    sbc h                                         ; $409A: $9C
    nop                                           ; $409B: $00
    inc a                                         ; $409C: $3C
    nop                                           ; $409D: $00
    call c, $B420                                 ; $409E: $DC $20 $B4
    ld [$8048], sp                                ; $40A1: $08 $48 $80
    ld b, b                                       ; $40A4: $40
    add b                                         ; $40A5: $80
    ldh [rP1], a                                  ; $40A6: $E0 $00
    jr nz, jr_010_406A                            ; $40A8: $20 $C0

    ld b, b                                       ; $40AA: $40
    add b                                         ; $40AB: $80
    add b                                         ; $40AC: $80
    nop                                           ; $40AD: $00
    nop                                           ; $40AE: $00
    nop                                           ; $40AF: $00
    nop                                           ; $40B0: $00
    nop                                           ; $40B1: $00
    nop                                           ; $40B2: $00
    nop                                           ; $40B3: $00
    nop                                           ; $40B4: $00
    nop                                           ; $40B5: $00
    add b                                         ; $40B6: $80
    nop                                           ; $40B7: $00
    add b                                         ; $40B8: $80
    nop                                           ; $40B9: $00
    nop                                           ; $40BA: $00
    nop                                           ; $40BB: $00
    nop                                           ; $40BC: $00
    nop                                           ; $40BD: $00
    nop                                           ; $40BE: $00
    nop                                           ; $40BF: $00
    ccf                                           ; $40C0: $3F
    ld e, $3F                                     ; $40C1: $1E $3F
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
    nop                                           ; $40DC: $00
    nop                                           ; $40DD: $00
    nop                                           ; $40DE: $00
    nop                                           ; $40DF: $00

jr_010_40E0:
    ccf                                           ; $40E0: $3F
    db $10                                        ; $40E1: $10
    inc a                                         ; $40E2: $3C
    rlca                                          ; $40E3: $07

jr_010_40E4:
    rrca                                          ; $40E4: $0F
    rlca                                          ; $40E5: $07
    rrca                                          ; $40E6: $0F
    nop                                           ; $40E7: $00
    ld de, $120E                                  ; $40E8: $11 $0E $12
    inc c                                         ; $40EB: $0C
    ld [de], a                                    ; $40EC: $12
    inc c                                         ; $40ED: $0C
    inc e                                         ; $40EE: $1C
    nop                                           ; $40EF: $00
    inc a                                         ; $40F0: $3C
    jr jr_010_412B                                ; $40F1: $18 $38

    db $10                                        ; $40F3: $10
    jr c, jr_010_4106                             ; $40F4: $38 $10

    jr c, jr_010_40F8                             ; $40F6: $38 $00

jr_010_40F8:
    inc a                                         ; $40F8: $3C
    nop                                           ; $40F9: $00

jr_010_40FA:
    inc a                                         ; $40FA: $3C
    nop                                           ; $40FB: $00
    ld a, [hl+]                                   ; $40FC: $2A
    inc d                                         ; $40FD: $14
    inc d                                         ; $40FE: $14
    nop                                           ; $40FF: $00
    nop                                           ; $4100: $00
    nop                                           ; $4101: $00
    nop                                           ; $4102: $00
    nop                                           ; $4103: $00
    nop                                           ; $4104: $00
    nop                                           ; $4105: $00

jr_010_4106:
    nop                                           ; $4106: $00
    nop                                           ; $4107: $00
    nop                                           ; $4108: $00
    nop                                           ; $4109: $00
    nop                                           ; $410A: $00
    nop                                           ; $410B: $00
    nop                                           ; $410C: $00
    nop                                           ; $410D: $00
    nop                                           ; $410E: $00
    nop                                           ; $410F: $00
    nop                                           ; $4110: $00
    nop                                           ; $4111: $00
    nop                                           ; $4112: $00
    nop                                           ; $4113: $00
    nop                                           ; $4114: $00
    nop                                           ; $4115: $00
    nop                                           ; $4116: $00
    nop                                           ; $4117: $00
    nop                                           ; $4118: $00
    nop                                           ; $4119: $00
    rrca                                          ; $411A: $0F
    nop                                           ; $411B: $00
    db $10                                        ; $411C: $10
    rrca                                          ; $411D: $0F
    ccf                                           ; $411E: $3F
    jr jr_010_40E4                                ; $411F: $18 $C3

    nop                                           ; $4121: $00
    cp l                                          ; $4122: $BD
    ld b, d                                       ; $4123: $42
    cp e                                          ; $4124: $BB
    ld d, [hl]                                    ; $4125: $56
    or [hl]                                       ; $4126: $B6
    ld c, l                                       ; $4127: $4D
    adc $7B                                       ; $4128: $CE $7B
    rst RST_38                                    ; $412A: $FF

jr_010_412B:
    inc sp                                        ; $412B: $33
    rst RST_30                                    ; $412C: $F7
    adc e                                         ; $412D: $8B
    rst RST_38                                    ; $412E: $FF
    scf                                           ; $412F: $37
    rst RST_38                                    ; $4130: $FF
    ld d, $FF                                     ; $4131: $16 $FF
    ld b, b                                       ; $4133: $40
    rst RST_38                                    ; $4134: $FF
    ld a, a                                       ; $4135: $7F
    rst RST_38                                    ; $4136: $FF
    ld b, a                                       ; $4137: $47
    rst RST_30                                    ; $4138: $F7
    ld l, e                                       ; $4139: $6B
    rst RST_38                                    ; $413A: $FF
    ld [hl], a                                    ; $413B: $77
    rst RST_38                                    ; $413C: $FF
    ld b, h                                       ; $413D: $44
    ld a, a                                       ; $413E: $7F
    jr jr_010_41C0                                ; $413F: $18 $7F

    rlca                                          ; $4141: $07
    ld a, a                                       ; $4142: $7F
    nop                                           ; $4143: $00
    adc [hl]                                      ; $4144: $8E
    ld [hl], c                                    ; $4145: $71
    add h                                         ; $4146: $84
    ld a, e                                       ; $4147: $7B
    add h                                         ; $4148: $84
    ld a, e                                       ; $4149: $7B
    ld c, c                                       ; $414A: $49
    ld [hl], $7F                                  ; $414B: $36 $7F
    nop                                           ; $414D: $00
    ld l, a                                       ; $414E: $6F
    inc sp                                        ; $414F: $33
    rst RST_28                                    ; $4150: $EF
    ld a, e                                       ; $4151: $7B
    rst RST_28                                    ; $4152: $EF
    ld a, d                                       ; $4153: $7A
    ld a, a                                       ; $4154: $7F
    ld a, [hl-]                                   ; $4155: $3A
    ld a, [hl]                                    ; $4156: $7E
    inc [hl]                                      ; $4157: $34
    ld a, $14                                     ; $4158: $3E $14
    ld a, $10                                     ; $415A: $3E $10
    ld a, $04                                     ; $415C: $3E $04
    ld a, a                                       ; $415E: $7F
    ld a, [hl-]                                   ; $415F: $3A
    add b                                         ; $4160: $80
    nop                                           ; $4161: $00
    cp b                                          ; $4162: $B8
    nop                                           ; $4163: $00
    ld b, h                                       ; $4164: $44
    cp b                                          ; $4165: $B8
    ld a, [hl]                                    ; $4166: $7E
    adc h                                         ; $4167: $8C
    cp $04                                        ; $4168: $FE $04
    xor $30                                       ; $416A: $EE $30
    ld hl, sp-$50                                 ; $416C: $F8 $B0
    db $F4                                        ; $416E: $F4
    adc b                                         ; $416F: $88
    ldh [c], a                                    ; $4170: $E2
    inc e                                         ; $4171: $1C
    sub $08                                       ; $4172: $D6 $08
    rst RST_08                                    ; $4174: $CF
    add [hl]                                      ; $4175: $86
    rst RST_08                                    ; $4176: $CF
    add [hl]                                      ; $4177: $86
    adc [hl]                                      ; $4178: $8E
    inc b                                         ; $4179: $04
    sbc h                                         ; $417A: $9C
    nop                                           ; $417B: $00
    inc a                                         ; $417C: $3C
    nop                                           ; $417D: $00
    call c, Call_010_7F20                         ; $417E: $DC $20 $7F
    ld a, [hl-]                                   ; $4181: $3A
    ld a, [hl]                                    ; $4182: $7E
    jr c, jr_010_41BD                             ; $4183: $38 $38

    db $10                                        ; $4185: $10
    stop                                          ; $4186: $10 $00
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
    nop                                           ; $4196: $00
    nop                                           ; $4197: $00
    nop                                           ; $4198: $00
    nop                                           ; $4199: $00
    nop                                           ; $419A: $00
    nop                                           ; $419B: $00
    nop                                           ; $419C: $00
    nop                                           ; $419D: $00
    nop                                           ; $419E: $00
    nop                                           ; $419F: $00
    or h                                          ; $41A0: $B4
    ld [$0088], sp                                ; $41A1: $08 $88 $00
    nop                                           ; $41A4: $00
    nop                                           ; $41A5: $00
    add b                                         ; $41A6: $80
    nop                                           ; $41A7: $00
    add b                                         ; $41A8: $80
    nop                                           ; $41A9: $00
    add b                                         ; $41AA: $80
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

jr_010_41BD:
    nop                                           ; $41BD: $00
    nop                                           ; $41BE: $00
    nop                                           ; $41BF: $00

jr_010_41C0:
    ld a, a                                       ; $41C0: $7F
    jr nz, jr_010_423C                            ; $41C1: $20 $79

    ld c, $1F                                     ; $41C3: $0E $1F
    ld c, $1F                                     ; $41C5: $0E $1F
    nop                                           ; $41C7: $00
    inc hl                                        ; $41C8: $23
    inc e                                         ; $41C9: $1C
    daa                                           ; $41CA: $27
    jr jr_010_41F2                                ; $41CB: $18 $25

    jr jr_010_4208                                ; $41CD: $18 $39

    nop                                           ; $41CF: $00
    ld a, c                                       ; $41D0: $79
    jr nc, jr_010_4243                            ; $41D1: $30 $70

    jr nz, jr_010_4245                            ; $41D3: $20 $70

    jr nz, jr_010_4247                            ; $41D5: $20 $70

    nop                                           ; $41D7: $00
    ld a, c                                       ; $41D8: $79
    nop                                           ; $41D9: $00
    ld a, c                                       ; $41DA: $79
    nop                                           ; $41DB: $00
    ld d, l                                       ; $41DC: $55
    jr z, jr_010_4207                             ; $41DD: $28 $28

    nop                                           ; $41DF: $00
    nop                                           ; $41E0: $00
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

jr_010_41F2:
    nop                                           ; $41F2: $00
    nop                                           ; $41F3: $00
    ld bc, $0100                                  ; $41F4: $01 $00 $01
    nop                                           ; $41F7: $00
    ld bc, $1F00                                  ; $41F8: $01 $00 $1F
    nop                                           ; $41FB: $00
    inc hl                                        ; $41FC: $23
    ld e, $5F                                     ; $41FD: $1E $5F
    ld sp, $0000                                  ; $41FF: $31 $00 $00
    nop                                           ; $4202: $00
    nop                                           ; $4203: $00
    nop                                           ; $4204: $00
    nop                                           ; $4205: $00
    nop                                           ; $4206: $00

jr_010_4207:
    nop                                           ; $4207: $00

jr_010_4208:
    nop                                           ; $4208: $00
    nop                                           ; $4209: $00
    nop                                           ; $420A: $00
    nop                                           ; $420B: $00
    nop                                           ; $420C: $00
    nop                                           ; $420D: $00
    add [hl]                                      ; $420E: $86
    nop                                           ; $420F: $00

jr_010_4210:
    ld a, d                                       ; $4210: $7A
    add h                                         ; $4211: $84
    halt                                          ; $4212: $76
    xor h                                         ; $4213: $AC
    ld l, l                                       ; $4214: $6D

jr_010_4215:
    sbc d                                         ; $4215: $9A
    sbc l                                         ; $4216: $9D
    or $FE                                        ; $4217: $F6 $FE
    ld h, a                                       ; $4219: $67
    xor $17                                       ; $421A: $EE $17
    rst RST_38                                    ; $421C: $FF
    ld l, [hl]                                    ; $421D: $6E
    rst RST_38                                    ; $421E: $FF
    inc l                                         ; $421F: $2C
    rst RST_38                                    ; $4220: $FF
    add c                                         ; $4221: $81
    rst RST_38                                    ; $4222: $FF
    rst RST_38                                    ; $4223: $FF
    rst RST_38                                    ; $4224: $FF
    adc [hl]                                      ; $4225: $8E
    rst RST_28                                    ; $4226: $EF
    sub $FF                                       ; $4227: $D6 $FF
    rst RST_28                                    ; $4229: $EF
    rst RST_38                                    ; $422A: $FF
    adc c                                         ; $422B: $89
    rst RST_38                                    ; $422C: $FF
    jr nc, @+$01                                  ; $422D: $30 $FF

    ld c, $FE                                     ; $422F: $0E $FE
    nop                                           ; $4231: $00
    dec e                                         ; $4232: $1D
    ldh [c], a                                    ; $4233: $E2
    add hl, bc                                    ; $4234: $09
    or $09                                        ; $4235: $F6 $09
    or $92                                        ; $4237: $F6 $92
    ld l, h                                       ; $4239: $6C
    rst RST_38                                    ; $423A: $FF
    nop                                           ; $423B: $00

jr_010_423C:
    rst RST_18                                    ; $423C: $DF
    ld h, [hl]                                    ; $423D: $66
    rst RST_18                                    ; $423E: $DF
    or $70                                        ; $423F: $F6 $70
    nop                                           ; $4241: $00
    adc b                                         ; $4242: $88

jr_010_4243:
    ld [hl], b                                    ; $4243: $70
    db $F4                                        ; $4244: $F4

jr_010_4245:
    jr jr_010_4243                                ; $4245: $18 $FC

jr_010_4247:
    ld [$60DC], sp                                ; $4247: $08 $DC $60
    ld hl, sp+$60                                 ; $424A: $F8 $60
    db $E4                                        ; $424C: $E4
    jr jr_010_4215                                ; $424D: $18 $C6

    jr c, jr_010_4210                             ; $424F: $38 $BF

    ld b, $8F                                     ; $4251: $06 $8F
    ld b, $8E                                     ; $4253: $06 $8E
    inc b                                         ; $4255: $04
    sbc h                                         ; $4256: $9C
    nop                                           ; $4257: $00
    inc a                                         ; $4258: $3C
    nop                                           ; $4259: $00
    ld e, h                                       ; $425A: $5C
    jr nz, @+$36                                  ; $425B: $20 $34

    ld [$0008], sp                                ; $425D: $08 $08 $00
    rst RST_28                                    ; $4260: $EF
    ld a, e                                       ; $4261: $7B
    rst RST_28                                    ; $4262: $EF
    ld a, d                                       ; $4263: $7A
    ld a, a                                       ; $4264: $7F
    ld a, [hl-]                                   ; $4265: $3A
    ld a, [hl]                                    ; $4266: $7E
    inc [hl]                                      ; $4267: $34
    ld a, $14                                     ; $4268: $3E $14
    ld a, $10                                     ; $426A: $3E $10
    ld a, $04                                     ; $426C: $3E $04
    ld a, a                                       ; $426E: $7F
    ld a, [hl-]                                   ; $426F: $3A
    ld a, a                                       ; $4270: $7F
    ld a, [hl-]                                   ; $4271: $3A
    ld a, [hl]                                    ; $4272: $7E
    jr c, jr_010_42AD                             ; $4273: $38 $38

    db $10                                        ; $4275: $10
    stop                                          ; $4276: $10 $00
    nop                                           ; $4278: $00
    nop                                           ; $4279: $00
    nop                                           ; $427A: $00
    nop                                           ; $427B: $00
    nop                                           ; $427C: $00
    nop                                           ; $427D: $00
    nop                                           ; $427E: $00
    nop                                           ; $427F: $00
    rst RST_38                                    ; $4280: $FF
    nop                                           ; $4281: $00
    inc sp                                        ; $4282: $33
    inc e                                         ; $4283: $1C
    ccf                                           ; $4284: $3F
    dec e                                         ; $4285: $1D
    ccf                                           ; $4286: $3F
    ld bc, $3947                                  ; $4287: $01 $47 $39
    ld c, e                                       ; $428A: $4B
    ld sp, $314B                                  ; $428B: $31 $4B $31
    ld [hl], e                                    ; $428E: $73
    ld bc, $60F1                                  ; $428F: $01 $F1 $60
    ldh [rLCDC], a                                ; $4292: $E0 $40
    ldh [rLCDC], a                                ; $4294: $E0 $40
    pop hl                                        ; $4296: $E1
    nop                                           ; $4297: $00
    pop af                                        ; $4298: $F1
    nop                                           ; $4299: $00
    ldh a, [rP1]                                  ; $429A: $F0 $00
    xor b                                         ; $429C: $A8
    ld d, b                                       ; $429D: $50
    ld d, b                                       ; $429E: $50
    nop                                           ; $429F: $00
    nop                                           ; $42A0: $00
    nop                                           ; $42A1: $00
    nop                                           ; $42A2: $00
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

jr_010_42AD:
    nop                                           ; $42AD: $00
    nop                                           ; $42AE: $00
    nop                                           ; $42AF: $00
    nop                                           ; $42B0: $00
    nop                                           ; $42B1: $00
    inc bc                                        ; $42B2: $03
    nop                                           ; $42B3: $00
    ld [bc], a                                    ; $42B4: $02
    ld bc, $0102                                  ; $42B5: $01 $02 $01
    ld a, $01                                     ; $42B8: $3E $01
    ld h, a                                       ; $42BA: $67
    dec a                                         ; $42BB: $3D
    rst RST_38                                    ; $42BC: $FF
    ld h, d                                       ; $42BD: $62
    rst RST_38                                    ; $42BE: $FF
    ld b, b                                       ; $42BF: $40
    inc c                                         ; $42C0: $0C
    nop                                           ; $42C1: $00
    db $F4                                        ; $42C2: $F4
    ld [$58EC], sp                                ; $42C3: $08 $EC $58
    jp c, $3B34                                   ; $42C6: $DA $34 $3B

    db $EC                                        ; $42C9: $EC
    db $FD                                        ; $42CA: $FD
    adc $DD                                       ; $42CB: $CE $DD
    ld l, $FF                                     ; $42CD: $2E $FF
    call c, Call_010_58FF                         ; $42CF: $DC $FF $58
    rst RST_38                                    ; $42D2: $FF
    ld [bc], a                                    ; $42D3: $02
    rst RST_38                                    ; $42D4: $FF
    cp $FF                                        ; $42D5: $FE $FF
    inc e                                         ; $42D7: $1C
    rst RST_38                                    ; $42D8: $FF
    xor h                                         ; $42D9: $AC
    rst RST_38                                    ; $42DA: $FF
    sbc $FF                                       ; $42DB: $DE $FF
    ld [de], a                                    ; $42DD: $12
    cp $60                                        ; $42DE: $FE $60
    cp $1C                                        ; $42E0: $FE $1C
    db $FC                                        ; $42E2: $FC
    nop                                           ; $42E3: $00
    dec de                                        ; $42E4: $1B
    db $E4                                        ; $42E5: $E4
    ld a, [bc]                                    ; $42E6: $0A
    db $F4                                        ; $42E7: $F4
    adc d                                         ; $42E8: $8A
    ld [hl], h                                    ; $42E9: $74
    adc d                                         ; $42EA: $8A
    ld [hl], h                                    ; $42EB: $74
    ld e, a                                       ; $42EC: $5F
    jr nz, jr_010_4326                            ; $42ED: $20 $37

    dec de                                        ; $42EF: $1B
    ld [hl], e                                    ; $42F0: $73
    dec a                                         ; $42F1: $3D
    ld a, e                                       ; $42F2: $7B
    inc a                                         ; $42F3: $3C
    ccf                                           ; $42F4: $3F
    inc e                                         ; $42F5: $1C
    rra                                           ; $42F6: $1F
    inc c                                         ; $42F7: $0C
    ld e, $0C                                     ; $42F8: $1E $0C
    ld c, $04                                     ; $42FA: $0E $04
    ld c, $00                                     ; $42FC: $0E $00
    rrca                                          ; $42FE: $0F
    ld b, $E0                                     ; $42FF: $06 $E0
    ret nz                                        ; $4301: $C0

    ret nc                                        ; $4302: $D0

    jr nz, @-$76                                  ; $4303: $20 $88

    ld [hl], b                                    ; $4305: $70
    ld e, b                                       ; $4306: $58
    jr nz, jr_010_4345                            ; $4307: $20 $3C

    jr jr_010_4347                                ; $4309: $18 $3C

    jr jr_010_4345                                ; $430B: $18 $38

    db $10                                        ; $430D: $10
    ld [hl], b                                    ; $430E: $70
    nop                                           ; $430F: $00
    ldh a, [rP1]                                  ; $4310: $F0 $00
    ld [hl], b                                    ; $4312: $70
    add b                                         ; $4313: $80
    ret nc                                        ; $4314: $D0

    jr nz, jr_010_4337                            ; $4315: $20 $20

    nop                                           ; $4317: $00
    nop                                           ; $4318: $00
    nop                                           ; $4319: $00
    add b                                         ; $431A: $80
    nop                                           ; $431B: $00
    add b                                         ; $431C: $80
    nop                                           ; $431D: $00
    add b                                         ; $431E: $80
    nop                                           ; $431F: $00
    nop                                           ; $4320: $00
    nop                                           ; $4321: $00
    nop                                           ; $4322: $00
    nop                                           ; $4323: $00
    nop                                           ; $4324: $00
    nop                                           ; $4325: $00

jr_010_4326:
    nop                                           ; $4326: $00
    nop                                           ; $4327: $00
    nop                                           ; $4328: $00
    nop                                           ; $4329: $00
    nop                                           ; $432A: $00
    nop                                           ; $432B: $00
    nop                                           ; $432C: $00
    nop                                           ; $432D: $00
    nop                                           ; $432E: $00
    nop                                           ; $432F: $00
    nop                                           ; $4330: $00
    nop                                           ; $4331: $00
    nop                                           ; $4332: $00

jr_010_4333:
    nop                                           ; $4333: $00
    ldh [rP1], a                                  ; $4334: $E0 $00
    db $10                                        ; $4336: $10

jr_010_4337:
    ldh [$FFF8], a                                ; $4337: $E0 $F8
    jr nc, jr_010_4333                            ; $4339: $30 $F8

    db $10                                        ; $433B: $10
    ld hl, sp+$00                                 ; $433C: $F8 $00
    and b                                         ; $433E: $A0
    ret nz                                        ; $433F: $C0

    rra                                           ; $4340: $1F
    ld c, $0F                                     ; $4341: $0E $0F
    ld b, $07                                     ; $4343: $06 $07

jr_010_4345:
    nop                                           ; $4345: $00
    nop                                           ; $4346: $00

jr_010_4347:
    nop                                           ; $4347: $00
    nop                                           ; $4348: $00
    nop                                           ; $4349: $00
    nop                                           ; $434A: $00
    nop                                           ; $434B: $00
    nop                                           ; $434C: $00
    nop                                           ; $434D: $00
    nop                                           ; $434E: $00
    nop                                           ; $434F: $00
    nop                                           ; $4350: $00
    nop                                           ; $4351: $00
    nop                                           ; $4352: $00
    nop                                           ; $4353: $00
    nop                                           ; $4354: $00
    nop                                           ; $4355: $00
    nop                                           ; $4356: $00
    nop                                           ; $4357: $00
    nop                                           ; $4358: $00
    nop                                           ; $4359: $00
    nop                                           ; $435A: $00
    nop                                           ; $435B: $00
    nop                                           ; $435C: $00
    nop                                           ; $435D: $00
    nop                                           ; $435E: $00
    nop                                           ; $435F: $00
    rra                                           ; $4360: $1F
    nop                                           ; $4361: $00
    inc sp                                        ; $4362: $33
    ld e, $7F                                     ; $4363: $1E $7F
    ld sp, $2E79                                  ; $4365: $31 $79 $2E
    ld a, a                                       ; $4368: $7F
    ld c, $1F                                     ; $4369: $0E $1F
    nop                                           ; $436B: $00
    inc hl                                        ; $436C: $23
    inc e                                         ; $436D: $1C
    dec h                                         ; $436E: $25
    jr jr_010_43BA                                ; $436F: $18 $49

    jr nc, jr_010_43E4                            ; $4371: $30 $71

    nop                                           ; $4373: $00
    ldh a, [$FF60]                                ; $4374: $F0 $60
    ldh [rLCDC], a                                ; $4376: $E0 $40
    ldh [rLCDC], a                                ; $4378: $E0 $40
    pop hl                                        ; $437A: $E1
    nop                                           ; $437B: $00
    pop af                                        ; $437C: $F1
    nop                                           ; $437D: $00
    ldh a, [c]                                    ; $437E: $F2
    ld bc, $0000                                  ; $437F: $01 $00 $00
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
    nop                                           ; $438C: $00
    nop                                           ; $438D: $00
    nop                                           ; $438E: $00
    nop                                           ; $438F: $00
    nop                                           ; $4390: $00
    nop                                           ; $4391: $00
    nop                                           ; $4392: $00
    nop                                           ; $4393: $00
    nop                                           ; $4394: $00
    nop                                           ; $4395: $00
    add [hl]                                      ; $4396: $86
    nop                                           ; $4397: $00
    ld a, d                                       ; $4398: $7A
    add h                                         ; $4399: $84
    halt                                          ; $439A: $76
    xor h                                         ; $439B: $AC
    ld l, l                                       ; $439C: $6D
    sbc d                                         ; $439D: $9A
    sbc l                                         ; $439E: $9D
    or $FE                                        ; $439F: $F6 $FE
    ld h, a                                       ; $43A1: $67
    xor $17                                       ; $43A2: $EE $17
    rst RST_38                                    ; $43A4: $FF
    ld l, [hl]                                    ; $43A5: $6E
    rst RST_38                                    ; $43A6: $FF
    inc l                                         ; $43A7: $2C
    rst RST_38                                    ; $43A8: $FF
    add c                                         ; $43A9: $81
    rst RST_38                                    ; $43AA: $FF
    rst RST_38                                    ; $43AB: $FF
    rst RST_38                                    ; $43AC: $FF
    adc [hl]                                      ; $43AD: $8E

jr_010_43AE:
    rst RST_28                                    ; $43AE: $EF
    sub $FF                                       ; $43AF: $D6 $FF
    rst RST_28                                    ; $43B1: $EF
    rst RST_38                                    ; $43B2: $FF

jr_010_43B3:
    adc c                                         ; $43B3: $89
    rst RST_38                                    ; $43B4: $FF
    jr nc, @+$01                                  ; $43B5: $30 $FF

    ld c, $FE                                     ; $43B7: $0E $FE
    nop                                           ; $43B9: $00

jr_010_43BA:
    dec e                                         ; $43BA: $1D
    ldh [c], a                                    ; $43BB: $E2
    add hl, de                                    ; $43BC: $19
    and $12                                       ; $43BD: $E6 $12
    db $EC                                        ; $43BF: $EC
    ld de, $FEEE                                  ; $43C0: $11 $EE $FE

jr_010_43C3:
    nop                                           ; $43C3: $00
    cp d                                          ; $43C4: $BA
    call c, $DC3A                                 ; $43C5: $DC $3A $DC
    ld [hl], h                                    ; $43C8: $74
    ret c                                         ; $43C9: $D8

    ld hl, sp-$50                                 ; $43CA: $F8 $B0
    ldh a, [$FF60]                                ; $43CC: $F0 $60
    ldh [rLCDC], a                                ; $43CE: $E0 $40
    ret nz                                        ; $43D0: $C0

    nop                                           ; $43D1: $00
    ret nz                                        ; $43D2: $C0

    add b                                         ; $43D3: $80
    ldh [$FFC0], a                                ; $43D4: $E0 $C0
    ldh [$FFC0], a                                ; $43D6: $E0 $C0
    ldh [rP1], a                                  ; $43D8: $E0 $00
    nop                                           ; $43DA: $00
    nop                                           ; $43DB: $00
    nop                                           ; $43DC: $00
    nop                                           ; $43DD: $00
    nop                                           ; $43DE: $00
    nop                                           ; $43DF: $00
    ldh a, [rP1]                                  ; $43E0: $F0 $00
    ret z                                         ; $43E2: $C8

    ld [hl], b                                    ; $43E3: $70

jr_010_43E4:
    db $FC                                        ; $43E4: $FC
    jr jr_010_43C3                                ; $43E5: $18 $DC

    ld l, b                                       ; $43E7: $68
    ld hl, sp+$60                                 ; $43E8: $F8 $60
    db $E4                                        ; $43EA: $E4
    jr jr_010_43B3                                ; $43EB: $18 $C6

    jr c, jr_010_43AE                             ; $43ED: $38 $BF

    ld b, $8F                                     ; $43EF: $06 $8F
    ld b, $8E                                     ; $43F1: $06 $8E
    inc b                                         ; $43F3: $04
    inc e                                         ; $43F4: $1C
    nop                                           ; $43F5: $00
    inc a                                         ; $43F6: $3C
    nop                                           ; $43F7: $00
    ld e, h                                       ; $43F8: $5C
    jr nz, jr_010_442F                            ; $43F9: $20 $34

    ld [$0008], sp                                ; $43FB: $08 $08 $00
    nop                                           ; $43FE: $00
    nop                                           ; $43FF: $00
    xor c                                         ; $4400: $A9
    ld d, b                                       ; $4401: $50
    db $D3                                        ; $4402: $D3
    nop                                           ; $4403: $00
    rlca                                          ; $4404: $07
    inc bc                                        ; $4405: $03
    rlca                                          ; $4406: $07
    inc bc                                        ; $4407: $03
    rlca                                          ; $4408: $07
    inc bc                                        ; $4409: $03
    rlca                                          ; $440A: $07
    inc bc                                        ; $440B: $03
    rlca                                          ; $440C: $07
    inc bc                                        ; $440D: $03
    rrca                                          ; $440E: $0F
    ld b, $0F                                     ; $440F: $06 $0F
    nop                                           ; $4411: $00
    rra                                           ; $4412: $1F
    ld c, $3F                                     ; $4413: $0E $3F
    dec e                                         ; $4415: $1D
    ld a, l                                       ; $4416: $7D
    jr c, @+$7A                                   ; $4417: $38 $78

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
    nop                                           ; $4424: $00
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

jr_010_442F:
    nop                                           ; $442F: $00
    nop                                           ; $4430: $00
    nop                                           ; $4431: $00
    nop                                           ; $4432: $00
    nop                                           ; $4433: $00
    nop                                           ; $4434: $00
    nop                                           ; $4435: $00
    ld bc, $0100                                  ; $4436: $01 $00 $01
    nop                                           ; $4439: $00
    ld bc, $0100                                  ; $443A: $01 $00 $01
    nop                                           ; $443D: $00
    ld bc, $0300                                  ; $443E: $01 $00 $03
    nop                                           ; $4441: $00
    ld [bc], a                                    ; $4442: $02
    ld bc, $0102                                  ; $4443: $01 $02 $01
    ld [bc], a                                    ; $4446: $02
    ld bc, HeaderManufacturerCode                 ; $4447: $01 $3F $01
    ld h, a                                       ; $444A: $67
    inc a                                         ; $444B: $3C
    rst RST_38                                    ; $444C: $FF
    ld h, d                                       ; $444D: $62
    rst RST_38                                    ; $444E: $FF
    ld b, b                                       ; $444F: $40
    di                                            ; $4450: $F3
    inc e                                         ; $4451: $1C
    ccf                                           ; $4452: $3F
    dec e                                         ; $4453: $1D
    ccf                                           ; $4454: $3F
    ld bc, $3947                                  ; $4455: $01 $47 $39
    ld c, e                                       ; $4458: $4B
    ld sp, $314B                                  ; $4459: $31 $4B $31
    ld [hl], e                                    ; $445C: $73
    ld bc, $60F1                                  ; $445D: $01 $F1 $60
    pop hl                                        ; $4460: $E1
    ld b, b                                       ; $4461: $40
    db $E3                                        ; $4462: $E3
    ld b, c                                       ; $4463: $41
    db $E3                                        ; $4464: $E3
    ld bc, $01F3                                  ; $4465: $01 $F3 $01
    pop af                                        ; $4468: $F1
    nop                                           ; $4469: $00
    xor c                                         ; $446A: $A9
    ld d, b                                       ; $446B: $50
    ld d, c                                       ; $446C: $51
    nop                                           ; $446D: $00
    ld bc, $0300                                  ; $446E: $01 $00 $03
    ld bc, $0307                                  ; $4471: $01 $07 $03
    rlca                                          ; $4474: $07
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
    inc c                                         ; $4480: $0C
    nop                                           ; $4481: $00
    db $F4                                        ; $4482: $F4
    ld [$58EC], sp                                ; $4483: $08 $EC $58
    jp c, Jump_000_3A34                           ; $4486: $DA $34 $3A

    db $EC                                        ; $4489: $EC
    db $FD                                        ; $448A: $FD
    adc $DD                                       ; $448B: $CE $DD
    ld l, $FF                                     ; $448D: $2E $FF
    call c, Call_010_58FF                         ; $448F: $DC $FF $58
    rst RST_38                                    ; $4492: $FF
    ld [bc], a                                    ; $4493: $02
    rst RST_38                                    ; $4494: $FF
    cp $FF                                        ; $4495: $FE $FF
    inc e                                         ; $4497: $1C
    rst RST_18                                    ; $4498: $DF
    xor h                                         ; $4499: $AC
    rst RST_38                                    ; $449A: $FF
    sbc $FF                                       ; $449B: $DE $FF
    ld [de], a                                    ; $449D: $12
    cp $20                                        ; $449E: $FE $20
    cp [hl]                                       ; $44A0: $BE
    call c, $E0BF                                 ; $44A1: $DC $BF $E0
    cp a                                          ; $44A4: $BF
    ldh [$FFBC], a                                ; $44A5: $E0 $BC
    db $E3                                        ; $44A7: $E3
    ld hl, sp-$39                                 ; $44A8: $F8 $C7
    call z, $DE83                                 ; $44AA: $CC $83 $DE
    adc c                                         ; $44AD: $89
    rst RST_18                                    ; $44AE: $DF
    ld a, [bc]                                    ; $44AF: $0A
    rst RST_38                                    ; $44B0: $FF
    call $C0FD                                    ; $44B1: $CD $FD $C0
    ldh [rP1], a                                  ; $44B4: $E0 $00
    nop                                           ; $44B6: $00
    nop                                           ; $44B7: $00
    nop                                           ; $44B8: $00
    nop                                           ; $44B9: $00
    nop                                           ; $44BA: $00
    nop                                           ; $44BB: $00
    nop                                           ; $44BC: $00
    nop                                           ; $44BD: $00
    nop                                           ; $44BE: $00

jr_010_44BF:
    nop                                           ; $44BF: $00
    ldh [rP1], a                                  ; $44C0: $E0 $00
    sub b                                         ; $44C2: $90
    ldh [$FFF8], a                                ; $44C3: $E0 $F8
    jr nc, jr_010_44BF                            ; $44C5: $30 $F8

    db $10                                        ; $44C7: $10
    cp b                                          ; $44C8: $B8
    ret nz                                        ; $44C9: $C0

    ldh [$FFC0], a                                ; $44CA: $E0 $C0
    ret nc                                        ; $44CC: $D0

    jr nz, @-$76                                  ; $44CD: $20 $88

    ld [hl], b                                    ; $44CF: $70
    ld e, b                                       ; $44D0: $58
    jr nz, jr_010_450F                            ; $44D1: $20 $3C

    jr jr_010_4511                                ; $44D3: $18 $3C

    jr jr_010_450F                                ; $44D5: $18 $38

    db $10                                        ; $44D7: $10
    ld [hl], b                                    ; $44D8: $70
    nop                                           ; $44D9: $00
    ldh a, [rP1]                                  ; $44DA: $F0 $00
    ld [hl], b                                    ; $44DC: $70
    add b                                         ; $44DD: $80
    ret nc                                        ; $44DE: $D0

    jr nz, jr_010_4541                            ; $44DF: $20 $60

    add b                                         ; $44E1: $80
    ld b, b                                       ; $44E2: $40
    add b                                         ; $44E3: $80
    jr nz, @-$3E                                  ; $44E4: $20 $C0

    ldh [rP1], a                                  ; $44E6: $E0 $00
    ldh [$FFC0], a                                ; $44E8: $E0 $C0
    ret nz                                        ; $44EA: $C0

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
    nop                                           ; $44FA: $00
    nop                                           ; $44FB: $00
    nop                                           ; $44FC: $00
    nop                                           ; $44FD: $00
    nop                                           ; $44FE: $00
    nop                                           ; $44FF: $00
    nop                                           ; $4500: $00
    nop                                           ; $4501: $00
    ld bc, $0100                                  ; $4502: $01 $00 $01
    nop                                           ; $4505: $00
    ld bc, $0100                                  ; $4506: $01 $00 $01
    nop                                           ; $4509: $00
    ld bc, $4300                                  ; $450A: $01 $00 $43
    nop                                           ; $450D: $00
    or a                                          ; $450E: $B7

jr_010_450F:
    ld b, e                                       ; $450F: $43
    rst RST_28                                    ; $4510: $EF

jr_010_4511:
    ld de, $06FB                                  ; $4511: $11 $FB $06
    rst RST_38                                    ; $4514: $FF
    ld b, $7F                                     ; $4515: $06 $7F
    nop                                           ; $4517: $00
    ld [hl], e                                    ; $4518: $73
    inc l                                         ; $4519: $2C
    ld [hl], l                                    ; $451A: $75
    jr z, @+$7F                                   ; $451B: $28 $7D

    jr nc, jr_010_4598                            ; $451D: $30 $79

    jr nc, jr_010_4521                            ; $451F: $30 $00

jr_010_4521:
    nop                                           ; $4521: $00
    add [hl]                                      ; $4522: $86
    nop                                           ; $4523: $00
    ld a, d                                       ; $4524: $7A
    add h                                         ; $4525: $84
    halt                                          ; $4526: $76
    xor h                                         ; $4527: $AC
    ld l, l                                       ; $4528: $6D
    sbc d                                         ; $4529: $9A
    sbc l                                         ; $452A: $9D
    or $FE                                        ; $452B: $F6 $FE
    ld h, a                                       ; $452D: $67
    xor $17                                       ; $452E: $EE $17
    rst RST_38                                    ; $4530: $FF
    ld l, [hl]                                    ; $4531: $6E
    rst RST_38                                    ; $4532: $FF
    inc l                                         ; $4533: $2C
    rst RST_38                                    ; $4534: $FF
    add c                                         ; $4535: $81
    rst RST_38                                    ; $4536: $FF
    rst RST_38                                    ; $4537: $FF
    rst RST_38                                    ; $4538: $FF
    adc b                                         ; $4539: $88
    db $EB                                        ; $453A: $EB
    call nc, $E8FF                                ; $453B: $D4 $FF $E8
    db $FD                                        ; $453E: $FD
    adc d                                         ; $453F: $8A
    nop                                           ; $4540: $00

jr_010_4541:
    nop                                           ; $4541: $00
    nop                                           ; $4542: $00
    nop                                           ; $4543: $00
    nop                                           ; $4544: $00
    nop                                           ; $4545: $00
    nop                                           ; $4546: $00
    nop                                           ; $4547: $00
    nop                                           ; $4548: $00
    nop                                           ; $4549: $00
    ld [hl], b                                    ; $454A: $70
    nop                                           ; $454B: $00
    ret z                                         ; $454C: $C8

jr_010_454D:
    ld [hl], b                                    ; $454D: $70
    db $FC                                        ; $454E: $FC
    jr jr_010_454D                                ; $454F: $18 $FC

    ld [$60DC], sp                                ; $4551: $08 $DC $60
    ldh a, [$FF60]                                ; $4554: $F0 $60
    add sp, $10                                   ; $4556: $E8 $10
    call nz, $AC38                                ; $4558: $C4 $38 $AC
    db $10                                        ; $455B: $10
    cp $0C                                        ; $455C: $FE $0C
    cp $3C                                        ; $455E: $FE $3C
    ld a, b                                       ; $4560: $78
    jr nc, @+$32                                  ; $4561: $30 $30

    nop                                           ; $4563: $00
    nop                                           ; $4564: $00
    nop                                           ; $4565: $00
    ld bc, $0100                                  ; $4566: $01 $00 $01
    nop                                           ; $4569: $00
    ld bc, $0300                                  ; $456A: $01 $00 $03
    nop                                           ; $456D: $00
    rlca                                          ; $456E: $07
    inc bc                                        ; $456F: $03
    rlca                                          ; $4570: $07

jr_010_4571:
    inc bc                                        ; $4571: $03
    rlca                                          ; $4572: $07

jr_010_4573:
    inc bc                                        ; $4573: $03
    rrca                                          ; $4574: $0F
    ld b, $1E                                     ; $4575: $06 $1E
    inc c                                         ; $4577: $0C
    inc a                                         ; $4578: $3C

jr_010_4579:
    nop                                           ; $4579: $00
    ld a, h                                       ; $457A: $7C
    jr c, jr_010_4579                             ; $457B: $38 $FC

    ld a, b                                       ; $457D: $78
    db $FC                                        ; $457E: $FC
    nop                                           ; $457F: $00
    rst RST_38                                    ; $4580: $FF
    jr nc, @+$01                                  ; $4581: $30 $FF

    ld c, $FE                                     ; $4583: $0E $FE
    nop                                           ; $4585: $00
    dec e                                         ; $4586: $1D
    ldh [c], a                                    ; $4587: $E2
    jr jr_010_4571                                ; $4588: $18 $E7

    jr jr_010_4573                                ; $458A: $18 $E7

    rst RST_20                                    ; $458C: $E7
    nop                                           ; $458D: $00
    and e                                         ; $458E: $A3
    pop bc                                        ; $458F: $C1
    daa                                           ; $4590: $27
    jp $8347                                      ; $4591: $C3 $47 $83


    adc a                                         ; $4594: $8F
    ld b, $0E                                     ; $4595: $06 $0E
    inc b                                         ; $4597: $04

jr_010_4598:
    rra                                           ; $4598: $1F
    ld [$0F1F], sp                                ; $4599: $08 $1F $0F
    rra                                           ; $459C: $1F
    nop                                           ; $459D: $00
    nop                                           ; $459E: $00
    nop                                           ; $459F: $00
    db $FC                                        ; $45A0: $FC
    nop                                           ; $45A1: $00
    nop                                           ; $45A2: $00
    nop                                           ; $45A3: $00
    nop                                           ; $45A4: $00
    nop                                           ; $45A5: $00
    nop                                           ; $45A6: $00
    nop                                           ; $45A7: $00
    add b                                         ; $45A8: $80
    nop                                           ; $45A9: $00
    ld b, b                                       ; $45AA: $40
    add b                                         ; $45AB: $80
    ldh a, [rP1]                                  ; $45AC: $F0 $00
    ret nc                                        ; $45AE: $D0

    ldh [$FFA0], a                                ; $45AF: $E0 $A0
    ret nz                                        ; $45B1: $C0

    ret nz                                        ; $45B2: $C0

    add b                                         ; $45B3: $80
    add b                                         ; $45B4: $80
    nop                                           ; $45B5: $00
    nop                                           ; $45B6: $00
    nop                                           ; $45B7: $00
    nop                                           ; $45B8: $00
    nop                                           ; $45B9: $00
    add b                                         ; $45BA: $80
    nop                                           ; $45BB: $00
    add b                                         ; $45BC: $80
    nop                                           ; $45BD: $00
    nop                                           ; $45BE: $00
    nop                                           ; $45BF: $00
    di                                            ; $45C0: $F3
    ld h, b                                       ; $45C1: $60
    ld h, a                                       ; $45C2: $67
    inc bc                                        ; $45C3: $03
    rrca                                          ; $45C4: $0F
    rlca                                          ; $45C5: $07
    ld c, $07                                     ; $45C6: $0E $07
    ld c, $07                                     ; $45C8: $0E $07
    rrca                                          ; $45CA: $0F
    ld b, $1E                                     ; $45CB: $06 $1E
    inc c                                         ; $45CD: $0C
    inc e                                         ; $45CE: $1C
    ld [$003C], sp                                ; $45CF: $08 $3C $00
    ld a, h                                       ; $45D2: $7C
    jr c, @-$02                                   ; $45D3: $38 $FC

    ld a, b                                       ; $45D5: $78
    db $FC                                        ; $45D6: $FC
    nop                                           ; $45D7: $00
    nop                                           ; $45D8: $00
    nop                                           ; $45D9: $00
    nop                                           ; $45DA: $00
    nop                                           ; $45DB: $00
    nop                                           ; $45DC: $00
    nop                                           ; $45DD: $00
    nop                                           ; $45DE: $00
    nop                                           ; $45DF: $00
    rst RST_38                                    ; $45E0: $FF
    jr nz, @+$80                                  ; $45E1: $20 $7E

    sbc h                                         ; $45E3: $9C
    ld a, h                                       ; $45E4: $7C
    add b                                         ; $45E5: $80
    ld a, d                                       ; $45E6: $7A
    add h                                         ; $45E7: $84
    ldh a, [c]                                    ; $45E8: $F2
    inc c                                         ; $45E9: $0C
    ld hl, $311E                                  ; $45EA: $21 $1E $31
    ld c, $78                                     ; $45ED: $0E $78
    daa                                           ; $45EF: $27
    ld a, a                                       ; $45F0: $7F
    jr z, jr_010_4672                             ; $45F1: $28 $7F

    scf                                           ; $45F3: $37
    ld a, a                                       ; $45F4: $7F
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
    ld hl, sp+$00                                 ; $4600: $F8 $00
    nop                                           ; $4602: $00
    nop                                           ; $4603: $00
    nop                                           ; $4604: $00
    nop                                           ; $4605: $00
    nop                                           ; $4606: $00
    nop                                           ; $4607: $00
    nop                                           ; $4608: $00
    nop                                           ; $4609: $00
    nop                                           ; $460A: $00
    nop                                           ; $460B: $00
    nop                                           ; $460C: $00
    nop                                           ; $460D: $00
    add b                                         ; $460E: $80
    nop                                           ; $460F: $00
    add b                                         ; $4610: $80
    nop                                           ; $4611: $00
    add b                                         ; $4612: $80
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
    pop af                                        ; $4620: $F1
    ld h, b                                       ; $4621: $60
    ld h, c                                       ; $4622: $61
    nop                                           ; $4623: $00
    inc bc                                        ; $4624: $03
    ld bc, $0307                                  ; $4625: $01 $07 $03
    rlca                                          ; $4628: $07
    inc bc                                        ; $4629: $03
    rlca                                          ; $462A: $07
    inc bc                                        ; $462B: $03
    inc bc                                        ; $462C: $03
    ld bc, $0103                                  ; $462D: $01 $03 $01
    inc bc                                        ; $4630: $03
    ld bc, $0003                                  ; $4631: $01 $03 $00
    rlca                                          ; $4634: $07
    inc bc                                        ; $4635: $03
    rlca                                          ; $4636: $07
    inc bc                                        ; $4637: $03
    rlca                                          ; $4638: $07
    inc bc                                        ; $4639: $03
    inc bc                                        ; $463A: $03
    ld bc, $0001                                  ; $463B: $01 $01 $00
    nop                                           ; $463E: $00
    nop                                           ; $463F: $00
    rst RST_38                                    ; $4640: $FF
    ld h, b                                       ; $4641: $60
    cp $1C                                        ; $4642: $FE $1C
    ld a, h                                       ; $4644: $7C
    add b                                         ; $4645: $80
    inc a                                         ; $4646: $3C
    ret nz                                        ; $4647: $C0

    ld [hl], d                                    ; $4648: $72
    call z, $DE61                                 ; $4649: $CC $61 $DE
    pop af                                        ; $464C: $F1
    adc [hl]                                      ; $464D: $8E
    ld hl, sp+$27                                 ; $464E: $F8 $27
    rst RST_38                                    ; $4650: $FF
    jr z, @+$01                                   ; $4651: $28 $FF

    scf                                           ; $4653: $37
    rst RST_30                                    ; $4654: $F7
    add b                                         ; $4655: $80
    ret nz                                        ; $4656: $C0

    add b                                         ; $4657: $80
    ret nz                                        ; $4658: $C0

    add b                                         ; $4659: $80
    add b                                         ; $465A: $80
    nop                                           ; $465B: $00
    nop                                           ; $465C: $00
    nop                                           ; $465D: $00
    nop                                           ; $465E: $00
    nop                                           ; $465F: $00
    ld hl, sp+$00                                 ; $4660: $F8 $00
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    nop                                           ; $4664: $00
    nop                                           ; $4665: $00
    nop                                           ; $4666: $00
    nop                                           ; $4667: $00
    nop                                           ; $4668: $00
    nop                                           ; $4669: $00
    nop                                           ; $466A: $00
    nop                                           ; $466B: $00
    nop                                           ; $466C: $00
    nop                                           ; $466D: $00
    add b                                         ; $466E: $80
    nop                                           ; $466F: $00
    add b                                         ; $4670: $80
    nop                                           ; $4671: $00

jr_010_4672:
    add b                                         ; $4672: $80
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
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    nop                                           ; $4682: $00
    nop                                           ; $4683: $00
    nop                                           ; $4684: $00
    nop                                           ; $4685: $00
    nop                                           ; $4686: $00
    nop                                           ; $4687: $00
    inc bc                                        ; $4688: $03
    nop                                           ; $4689: $00
    ld b, $03                                     ; $468A: $06 $03
    rrca                                          ; $468C: $0F
    ld b, $0F                                     ; $468D: $06 $0F
    inc b                                         ; $468F: $04
    ld c, $03                                     ; $4690: $0E $03
    rlca                                          ; $4692: $07
    inc bc                                        ; $4693: $03
    rlca                                          ; $4694: $07

jr_010_4695:
    inc bc                                        ; $4695: $03
    dec bc                                        ; $4696: $0B
    inc b                                         ; $4697: $04
    ld de, $1A0E                                  ; $4698: $11 $0E $1A
    inc b                                         ; $469B: $04
    inc a                                         ; $469C: $3C
    jr jr_010_46DB                                ; $469D: $18 $3C

    jr @+$0E                                      ; $469F: $18 $0C

    nop                                           ; $46A1: $00
    dec bc                                        ; $46A2: $0B
    inc b                                         ; $46A3: $04
    dec c                                         ; $46A4: $0D
    ld b, $16                                     ; $46A5: $06 $16
    dec bc                                        ; $46A7: $0B
    rst RST_30                                    ; $46A8: $F7
    dec c                                         ; $46A9: $0D
    ld l, a                                       ; $46AA: $6F
    call c, $1DEE                                 ; $46AB: $DC $EE $1D
    rst RST_38                                    ; $46AE: $FF

jr_010_46AF:
    ld c, $7F                                     ; $46AF: $0E $7F
    sub [hl]                                      ; $46B1: $96
    rst RST_38                                    ; $46B2: $FF
    ld b, b                                       ; $46B3: $40
    rst RST_38                                    ; $46B4: $FF
    ld a, a                                       ; $46B5: $7F
    rst RST_38                                    ; $46B6: $FF
    ld b, h                                       ; $46B7: $44
    push af                                       ; $46B8: $F5
    ld l, d                                       ; $46B9: $6A
    rst RST_38                                    ; $46BA: $FF
    ld [hl], h                                    ; $46BB: $74
    cp $45                                        ; $46BC: $FE $45
    ld a, a                                       ; $46BE: $7F
    jr jr_010_46F1                                ; $46BF: $18 $30

    nop                                           ; $46C1: $00
    ret nc                                        ; $46C2: $D0

    jr nz, jr_010_4695                            ; $46C3: $20 $D0

    and b                                         ; $46C5: $A0
    ret nc                                        ; $46C6: $D0

    jr nz, jr_010_4701                            ; $46C7: $20 $38

    ldh [$FFF4], a                                ; $46C9: $E0 $F4
    ret c                                         ; $46CB: $D8

    ld a, [$FE0C]                                 ; $46CC: $FA $0C $FE
    call nz, $90EE                                ; $46CF: $C4 $EE $90
    ld hl, sp+$30                                 ; $46D2: $F8 $30
    db $F4                                        ; $46D4: $F4
    adc b                                         ; $46D5: $88
    ldh [c], a                                    ; $46D6: $E2
    inc e                                         ; $46D7: $1C
    sub $08                                       ; $46D8: $D6 $08
    rst RST_38                                    ; $46DA: $FF

jr_010_46DB:
    ld b, $FF                                     ; $46DB: $06 $FF
    ld e, $FE                                     ; $46DD: $1E $FE
    nop                                           ; $46DF: $00
    rlca                                          ; $46E0: $07
    ld [bc], a                                    ; $46E1: $02
    rlca                                          ; $46E2: $07
    ld [bc], a                                    ; $46E3: $02
    ld c, $00                                     ; $46E4: $0E $00
    ld e, $00                                     ; $46E6: $1E $00
    ld e, $00                                     ; $46E8: $1E $00
    ld l, $10                                     ; $46EA: $2E $10
    ld a, [de]                                    ; $46EC: $1A
    inc b                                         ; $46ED: $04
    inc b                                         ; $46EE: $04
    nop                                           ; $46EF: $00
    nop                                           ; $46F0: $00

jr_010_46F1:
    nop                                           ; $46F1: $00
    nop                                           ; $46F2: $00
    nop                                           ; $46F3: $00
    ld bc, $0300                                  ; $46F4: $01 $00 $03
    nop                                           ; $46F7: $00
    rlca                                          ; $46F8: $07
    inc bc                                        ; $46F9: $03
    rrca                                          ; $46FA: $0F
    rlca                                          ; $46FB: $07
    rrca                                          ; $46FC: $0F
    nop                                           ; $46FD: $00
    nop                                           ; $46FE: $00
    nop                                           ; $46FF: $00
    rrca                                          ; $4700: $0F

jr_010_4701:
    nop                                           ; $4701: $00
    rrca                                          ; $4702: $0F
    nop                                           ; $4703: $00
    ld de, $110E                                  ; $4704: $11 $0E $11
    ld c, $11                                     ; $4707: $0E $11
    ld c, $3E                                     ; $4709: $0E $3E

jr_010_470B:
    nop                                           ; $470B: $00
    ld a, d                                       ; $470C: $7A
    inc a                                         ; $470D: $3C
    ld [hl], d                                    ; $470E: $72
    inc a                                         ; $470F: $3C
    ld [hl], h                                    ; $4710: $74
    jr c, jr_010_470B                             ; $4711: $38 $F8

    ld h, b                                       ; $4713: $60
    ldh [$FFC0], a                                ; $4714: $E0 $C0
    pop bc                                        ; $4716: $C1
    nop                                           ; $4717: $00
    pop bc                                        ; $4718: $C1
    add b                                         ; $4719: $80
    pop bc                                        ; $471A: $C1
    add b                                         ; $471B: $80
    ret nz                                        ; $471C: $C0

    nop                                           ; $471D: $00
    nop                                           ; $471E: $00
    nop                                           ; $471F: $00
    ldh a, [$FFE0]                                ; $4720: $F0 $E0
    ldh [rP1], a                                  ; $4722: $E0 $00
    ret nc                                        ; $4724: $D0

    jr nz, jr_010_46AF                            ; $4725: $20 $88

    ld [hl], b                                    ; $4727: $70
    add h                                         ; $4728: $84
    ld a, b                                       ; $4729: $78
    ld a, a                                       ; $472A: $7F

jr_010_472B:
    nop                                           ; $472B: $00
    dec a                                         ; $472C: $3D
    ld e, $7A                                     ; $472D: $1E $7A
    inc a                                         ; $472F: $3C
    ld a, h                                       ; $4730: $7C
    jr c, jr_010_472B                             ; $4731: $38 $F8

    ld h, b                                       ; $4733: $60
    ldh [rLCDC], a                                ; $4734: $E0 $40
    ldh a, [$FF80]                                ; $4736: $F0 $80
    ld hl, sp-$10                                 ; $4738: $F8 $F0
    ld hl, sp+$00                                 ; $473A: $F8 $00
    nop                                           ; $473C: $00

jr_010_473D:
    nop                                           ; $473D: $00
    nop                                           ; $473E: $00
    nop                                           ; $473F: $00
    ld bc, $1B00                                  ; $4740: $01 $00 $1B
    nop                                           ; $4743: $00
    rla                                           ; $4744: $17
    add hl, bc                                    ; $4745: $09
    dec bc                                        ; $4746: $0B
    inc b                                         ; $4747: $04
    inc c                                         ; $4748: $0C
    rlca                                          ; $4749: $07
    rra                                           ; $474A: $1F
    inc bc                                        ; $474B: $03
    cpl                                           ; $474C: $2F
    jr jr_010_478E                                ; $474D: $18 $3F

    ld de, $0C3B                                  ; $474F: $11 $3B $0C
    rra                                           ; $4752: $1F
    dec c                                         ; $4753: $0D
    rrca                                          ; $4754: $0F
    ld bc, $040F                                  ; $4755: $01 $0F $04
    rra                                           ; $4758: $1F
    inc c                                         ; $4759: $0C
    rra                                           ; $475A: $1F
    add hl, bc                                    ; $475B: $09
    dec sp                                        ; $475C: $3B
    ld bc, $0079                                  ; $475D: $01 $79 $00
    ld a, c                                       ; $4760: $79
    nop                                           ; $4761: $00
    cp b                                          ; $4762: $B8
    ld b, b                                       ; $4763: $40
    ld l, b                                       ; $4764: $68
    db $10                                        ; $4765: $10
    ld de, $0200                                  ; $4766: $11 $00 $02
    ld bc, $000F                                  ; $4769: $01 $0F $00
    dec bc                                        ; $476C: $0B
    rlca                                          ; $476D: $07
    dec b                                         ; $476E: $05
    inc bc                                        ; $476F: $03
    inc bc                                        ; $4770: $03
    ld bc, $0001                                  ; $4771: $01 $01 $00
    nop                                           ; $4774: $00
    nop                                           ; $4775: $00
    nop                                           ; $4776: $00
    nop                                           ; $4777: $00
    ld bc, $0100                                  ; $4778: $01 $00 $01
    nop                                           ; $477B: $00
    nop                                           ; $477C: $00
    nop                                           ; $477D: $00
    nop                                           ; $477E: $00
    nop                                           ; $477F: $00
    or b                                          ; $4780: $B0
    nop                                           ; $4781: $00
    ret nc                                        ; $4782: $D0

    jr nz, jr_010_473D                            ; $4783: $20 $B8

    ld h, b                                       ; $4785: $60
    ld h, h                                       ; $4786: $64
    ret c                                         ; $4787: $D8

    rst RST_30                                    ; $4788: $F7
    ret c                                         ; $4789: $D8

    ei                                            ; $478A: $FB
    cp l                                          ; $478B: $BD
    ei                                            ; $478C: $FB
    inc e                                         ; $478D: $1C

jr_010_478E:
    rst RST_38                                    ; $478E: $FF

jr_010_478F:
    ret c                                         ; $478F: $D8

    rst RST_38                                    ; $4790: $FF

jr_010_4791:
    or b                                          ; $4791: $B0
    rst RST_38                                    ; $4792: $FF
    ld [bc], a                                    ; $4793: $02
    rst RST_38                                    ; $4794: $FF
    cp $FF                                        ; $4795: $FE $FF
    ldh [c], a                                    ; $4797: $E2
    rst RST_28                                    ; $4798: $EF
    sub $FF                                       ; $4799: $D6 $FF
    xor $FF                                       ; $479B: $EE $FF
    ld [hl+], a                                   ; $479D: $22
    rst RST_38                                    ; $479E: $FF
    jr @+$01                                      ; $479F: $18 $FF

    ldh [rIE], a                                  ; $47A1: $E0 $FF
    nop                                           ; $47A3: $00
    cp b                                          ; $47A4: $B8
    ld b, a                                       ; $47A5: $47
    jr jr_010_478F                                ; $47A6: $18 $E7

    jr jr_010_4791                                ; $47A8: $18 $E7

    rst RST_20                                    ; $47AA: $E7
    nop                                           ; $47AB: $00
    push bc                                       ; $47AC: $C5
    add e                                         ; $47AD: $83
    db $E4                                        ; $47AE: $E4

jr_010_47AF:
    jp $C1E2                                      ; $47AF: $C3 $E2 $C1


    pop af                                        ; $47B2: $F1
    ld h, b                                       ; $47B3: $60

jr_010_47B4:
    ld [hl], b                                    ; $47B4: $70
    jr nz, jr_010_47AF                            ; $47B5: $20 $F8

    db $10                                        ; $47B7: $10
    ld hl, sp-$10                                 ; $47B8: $F8 $F0
    ld hl, sp+$00                                 ; $47BA: $F8 $00
    nop                                           ; $47BC: $00
    nop                                           ; $47BD: $00
    nop                                           ; $47BE: $00
    nop                                           ; $47BF: $00
    ldh a, [rP1]                                  ; $47C0: $F0 $00
    jr jr_010_47B4                                ; $47C2: $18 $F0

    db $FC                                        ; $47C4: $FC
    jr @-$02                                      ; $47C5: $18 $FC

    ld [$60B8], sp                                ; $47C7: $08 $B8 $60
    db $FC                                        ; $47CA: $FC
    ldh a, [$FFF2]                                ; $47CB: $F0 $F2
    ld l, h                                       ; $47CD: $6C
    pop af                                        ; $47CE: $F1
    ld c, $8F                                     ; $47CF: $0E $8F
    ld bc, $0183                                  ; $47D1: $01 $83 $01
    add e                                         ; $47D4: $83
    ld bc, $0007                                  ; $47D5: $01 $07 $00
    rrca                                          ; $47D8: $0F
    nop                                           ; $47D9: $00
    rla                                           ; $47DA: $17
    ld [$020D], sp                                ; $47DB: $08 $0D $02
    add d                                         ; $47DE: $82
    nop                                           ; $47DF: $00
    add b                                         ; $47E0: $80
    nop                                           ; $47E1: $00
    add b                                         ; $47E2: $80
    nop                                           ; $47E3: $00
    ret nz                                        ; $47E4: $C0

    nop                                           ; $47E5: $00
    ldh [$FFC0], a                                ; $47E6: $E0 $C0
    ldh [$FFC0], a                                ; $47E8: $E0 $C0
    ldh [$FFC0], a                                ; $47EA: $E0 $C0
    ldh a, [$FF60]                                ; $47EC: $F0 $60
    ld a, b                                       ; $47EE: $78
    jr nc, jr_010_482D                            ; $47EF: $30 $3C

    nop                                           ; $47F1: $00
    ld a, $1C                                     ; $47F2: $3E $1C
    ccf                                           ; $47F4: $3F
    ld e, $3F                                     ; $47F5: $1E $3F
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
    nop                                           ; $4804: $00
    nop                                           ; $4805: $00
    nop                                           ; $4806: $00
    nop                                           ; $4807: $00
    nop                                           ; $4808: $00
    nop                                           ; $4809: $00
    nop                                           ; $480A: $00
    nop                                           ; $480B: $00
    nop                                           ; $480C: $00
    nop                                           ; $480D: $00
    nop                                           ; $480E: $00
    nop                                           ; $480F: $00
    nop                                           ; $4810: $00
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    nop                                           ; $4813: $00
    nop                                           ; $4814: $00
    nop                                           ; $4815: $00
    nop                                           ; $4816: $00
    nop                                           ; $4817: $00
    add b                                         ; $4818: $80
    nop                                           ; $4819: $00
    ret nz                                        ; $481A: $C0

    add b                                         ; $481B: $80
    ret nz                                        ; $481C: $C0

    add b                                         ; $481D: $80
    add b                                         ; $481E: $80
    nop                                           ; $481F: $00
    ld bc, $0100                                  ; $4820: $01 $00 $01
    nop                                           ; $4823: $00
    inc bc                                        ; $4824: $03
    ld bc, $0103                                  ; $4825: $01 $03 $01
    inc bc                                        ; $4828: $03
    ld bc, $0103                                  ; $4829: $01 $03 $01
    rlca                                          ; $482C: $07

jr_010_482D:
    nop                                           ; $482D: $00
    rrca                                          ; $482E: $0F
    nop                                           ; $482F: $00
    rrca                                          ; $4830: $0F
    nop                                           ; $4831: $00
    rla                                           ; $4832: $17
    ld [$020D], sp                                ; $4833: $08 $0D $02
    ld [bc], a                                    ; $4836: $02
    nop                                           ; $4837: $00
    ld bc, $0300                                  ; $4838: $01 $00 $03
    ld bc, $0003                                  ; $483B: $01 $03 $00
    nop                                           ; $483E: $00
    nop                                           ; $483F: $00
    dec sp                                        ; $4840: $3B
    inc e                                         ; $4841: $1C
    inc a                                         ; $4842: $3C
    jr jr_010_48BD                                ; $4843: $18 $78

    jr nc, jr_010_48B8                            ; $4845: $30 $71

    jr nz, @-$0D                                  ; $4847: $20 $F1

    nop                                           ; $4849: $00
    pop af                                        ; $484A: $F1
    ldh [$FFF1], a                                ; $484B: $E0 $F1
    ldh [$FFF0], a                                ; $484D: $E0 $F0
    nop                                           ; $484F: $00
    nop                                           ; $4850: $00
    nop                                           ; $4851: $00
    nop                                           ; $4852: $00
    nop                                           ; $4853: $00
    nop                                           ; $4854: $00
    nop                                           ; $4855: $00
    nop                                           ; $4856: $00
    nop                                           ; $4857: $00

jr_010_4858:
    nop                                           ; $4858: $00
    nop                                           ; $4859: $00
    nop                                           ; $485A: $00
    nop                                           ; $485B: $00
    nop                                           ; $485C: $00
    nop                                           ; $485D: $00
    nop                                           ; $485E: $00
    nop                                           ; $485F: $00
    ld hl, sp+$70                                 ; $4860: $F8 $70
    ldh a, [rP1]                                  ; $4862: $F0 $00
    add sp, $10                                   ; $4864: $E8 $10
    ret z                                         ; $4866: $C8

    jr nc, @-$7A                                  ; $4867: $30 $84

    ld a, b                                       ; $4869: $78
    call nz, $E238                                ; $486A: $C4 $38 $E2
    sbc h                                         ; $486D: $9C
    cp $A0                                        ; $486E: $FE $A0
    cp $DC                                        ; $4870: $FE $DC
    call c, RST_00                                ; $4872: $DC $00 $00
    nop                                           ; $4875: $00
    nop                                           ; $4876: $00
    nop                                           ; $4877: $00
    nop                                           ; $4878: $00
    nop                                           ; $4879: $00
    nop                                           ; $487A: $00
    nop                                           ; $487B: $00
    nop                                           ; $487C: $00
    nop                                           ; $487D: $00
    nop                                           ; $487E: $00
    nop                                           ; $487F: $00
    nop                                           ; $4880: $00
    nop                                           ; $4881: $00
    nop                                           ; $4882: $00
    nop                                           ; $4883: $00
    nop                                           ; $4884: $00
    nop                                           ; $4885: $00
    nop                                           ; $4886: $00
    nop                                           ; $4887: $00
    add b                                         ; $4888: $80
    nop                                           ; $4889: $00
    ld b, b                                       ; $488A: $40
    add b                                         ; $488B: $80
    and b                                         ; $488C: $A0
    ret nz                                        ; $488D: $C0

    ldh [rLCDC], a                                ; $488E: $E0 $40
    ldh [rP1], a                                  ; $4890: $E0 $00
    add b                                         ; $4892: $80
    nop                                           ; $4893: $00
    ld b, b                                       ; $4894: $40
    add b                                         ; $4895: $80
    jr nz, jr_010_4858                            ; $4896: $20 $C0

    ld h, b                                       ; $4898: $60
    add b                                         ; $4899: $80
    ldh a, [$FF60]                                ; $489A: $F0 $60
    ldh a, [$FFE0]                                ; $489C: $F0 $E0
    ldh [rP1], a                                  ; $489E: $E0 $00
    ld bc, $3F00                                  ; $48A0: $01 $00 $3F
    nop                                           ; $48A3: $00
    ld h, [hl]                                    ; $48A4: $66
    dec a                                         ; $48A5: $3D
    cp $61                                        ; $48A6: $FE $61
    rst RST_38                                    ; $48A8: $FF
    ld b, b                                       ; $48A9: $40
    rst RST_20                                    ; $48AA: $E7
    add hl, sp                                    ; $48AB: $39
    ld a, a                                       ; $48AC: $7F
    inc [hl]                                      ; $48AD: $34
    ld a, a                                       ; $48AE: $7F
    scf                                           ; $48AF: $37
    cp a                                          ; $48B0: $BF
    ld b, h                                       ; $48B1: $44
    rra                                           ; $48B2: $1F
    and $AF                                       ; $48B3: $E6 $AF
    ld b, a                                       ; $48B5: $47
    rst RST_08                                    ; $48B6: $CF
    add h                                         ; $48B7: $84

jr_010_48B8:
    rst RST_08                                    ; $48B8: $CF
    add b                                         ; $48B9: $80
    sbc l                                         ; $48BA: $9D
    ld c, $BD                                     ; $48BB: $0E $BD

jr_010_48BD:
    ld e, $39                                     ; $48BD: $1E $39
    ld e, $C3                                     ; $48BF: $1E $C3
    nop                                           ; $48C1: $00
    cp l                                          ; $48C2: $BD
    ld b, d                                       ; $48C3: $42
    db $DD                                        ; $48C4: $DD
    ld l, d                                       ; $48C5: $6A
    ld l, l                                       ; $48C6: $6D
    or d                                          ; $48C7: $B2
    ld [hl], e                                    ; $48C8: $73
    sbc $FE                                       ; $48C9: $DE $FE
    call $D0EF                                    ; $48CB: $CD $EF $D0
    rst RST_38                                    ; $48CE: $FF
    db $EC                                        ; $48CF: $EC
    cp $69                                        ; $48D0: $FE $69
    rst RST_38                                    ; $48D2: $FF
    inc bc                                        ; $48D3: $03
    rst RST_38                                    ; $48D4: $FF
    ld hl, sp-$02                                 ; $48D5: $F8 $FE
    ld e, c                                       ; $48D7: $59
    ld e, l                                       ; $48D8: $5D
    and b                                         ; $48D9: $A0
    rst RST_38                                    ; $48DA: $FF
    ld b, b                                       ; $48DB: $40
    rst RST_28                                    ; $48DC: $EF
    ld d, c                                       ; $48DD: $51
    rst RST_38                                    ; $48DE: $FF
    add b                                         ; $48DF: $80
    ld bc, $0300                                  ; $48E0: $01 $00 $03
    ld bc, $0003                                  ; $48E3: $01 $03 $00
    nop                                           ; $48E6: $00
    nop                                           ; $48E7: $00
    nop                                           ; $48E8: $00
    nop                                           ; $48E9: $00
    nop                                           ; $48EA: $00
    nop                                           ; $48EB: $00
    nop                                           ; $48EC: $00
    nop                                           ; $48ED: $00
    nop                                           ; $48EE: $00
    nop                                           ; $48EF: $00
    ld bc, $0100                                  ; $48F0: $01 $00 $01
    nop                                           ; $48F3: $00
    ld bc, $0000                                  ; $48F4: $01 $00 $00
    nop                                           ; $48F7: $00
    nop                                           ; $48F8: $00
    nop                                           ; $48F9: $00
    nop                                           ; $48FA: $00
    nop                                           ; $48FB: $00
    nop                                           ; $48FC: $00
    nop                                           ; $48FD: $00
    nop                                           ; $48FE: $00
    nop                                           ; $48FF: $00
    ld bc, $0200                                  ; $4900: $01 $00 $02
    ld bc, $0305                                  ; $4903: $01 $05 $03
    rrca                                          ; $4906: $0F
    rlca                                          ; $4907: $07
    dec bc                                        ; $4908: $0B
    rlca                                          ; $4909: $07

jr_010_490A:
    rra                                           ; $490A: $1F
    ld c, $7F                                     ; $490B: $0E $7F
    jr jr_010_490A                                ; $490D: $18 $FB

    ld h, c                                       ; $490F: $61
    or $E3                                        ; $4910: $F6 $E3
    push hl                                       ; $4912: $E5
    inc bc                                        ; $4913: $03
    rlca                                          ; $4914: $07
    inc bc                                        ; $4915: $03
    rrca                                          ; $4916: $0F
    rlca                                          ; $4917: $07
    rra                                           ; $4918: $1F
    inc c                                         ; $4919: $0C
    ld a, h                                       ; $491A: $7C
    ld [$60F9], sp                                ; $491B: $08 $F9 $60
    ldh a, [c]                                    ; $491E: $F2
    pop hl                                        ; $491F: $E1
    stop                                          ; $4920: $10 $00
    jr z, jr_010_4934                             ; $4922: $28 $10

    inc a                                         ; $4924: $3C
    nop                                           ; $4925: $00
    ld e, [hl]                                    ; $4926: $5E
    jr nz, jr_010_4968                            ; $4927: $20 $3F

    ld [bc], a                                    ; $4929: $02
    add a                                         ; $492A: $87
    inc bc                                        ; $492B: $03
    db $E3                                        ; $492C: $E3
    nop                                           ; $492D: $00
    sbc a                                         ; $492E: $9F
    ld h, d                                       ; $492F: $62
    add a                                         ; $4930: $87
    ld a, d                                       ; $4931: $7A
    adc a                                         ; $4932: $8F
    ld [hl], d                                    ; $4933: $72

jr_010_4934:
    ld e, a                                       ; $4934: $5F
    ld hl, $01BF                                  ; $4935: $21 $BF $01
    ld b, a                                       ; $4938: $47
    cp b                                          ; $4939: $B8
    rst RST_00                                    ; $493A: $C7
    cp b                                          ; $493B: $B8
    rst RST_00                                    ; $493C: $C7
    cp b                                          ; $493D: $B8
    ld hl, sp-$80                                 ; $493E: $F8 $80
    xor $00                                       ; $4940: $EE $00
    cp $4C                                        ; $4942: $FE $4C
    db $FD                                        ; $4944: $FD
    ld a, b                                       ; $4945: $78
    db $FD                                        ; $4946: $FD
    ret c                                         ; $4947: $D8

    rst RST_18                                    ; $4948: $DF
    xor c                                         ; $4949: $A9
    rst RST_38                                    ; $494A: $FF
    ld c, b                                       ; $494B: $48
    rst RST_38                                    ; $494C: $FF
    ld l, c                                       ; $494D: $69
    rst RST_38                                    ; $494E: $FF
    ld sp, hl                                     ; $494F: $F9
    rst RST_38                                    ; $4950: $FF
    db $FD                                        ; $4951: $FD
    rst RST_38                                    ; $4952: $FF
    nop                                           ; $4953: $00
    rst RST_38                                    ; $4954: $FF
    ld bc, $0D3E                                  ; $4955: $01 $3E $0D
    ld a, [$3E1D]                                 ; $4958: $FA $1D $3E
    db $DD                                        ; $495B: $DD
    rra                                           ; $495C: $1F
    db $E3                                        ; $495D: $E3
    rst RST_28                                    ; $495E: $EF
    ld b, $CE                                     ; $495F: $06 $CE
    nop                                           ; $4961: $00
    ldh a, [c]                                    ; $4962: $F2
    inc c                                         ; $4963: $0C
    db $EC                                        ; $4964: $EC
    or b                                          ; $4965: $B0
    xor $B4                                       ; $4966: $EE $B4

jr_010_4968:
    cp [hl]                                       ; $4968: $BE
    ld d, b                                       ; $4969: $50
    or $18                                        ; $496A: $F6 $18
    ld a, [$CDCC]                                 ; $496C: $FA $CC $CD
    or $B7                                        ; $496F: $F6 $B7
    ld b, b                                       ; $4971: $40
    ret nz                                        ; $4972: $C0

    nop                                           ; $4973: $00
    add b                                         ; $4974: $80
    nop                                           ; $4975: $00
    add b                                         ; $4976: $80
    nop                                           ; $4977: $00
    add b                                         ; $4978: $80
    nop                                           ; $4979: $00
    nop                                           ; $497A: $00
    nop                                           ; $497B: $00
    nop                                           ; $497C: $00
    nop                                           ; $497D: $00
    nop                                           ; $497E: $00
    nop                                           ; $497F: $00
    pop hl                                        ; $4980: $E1
    ret nz                                        ; $4981: $C0

    pop bc                                        ; $4982: $C1
    nop                                           ; $4983: $00
    nop                                           ; $4984: $00
    nop                                           ; $4985: $00
    nop                                           ; $4986: $00
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
    add b                                         ; $49A0: $80
    nop                                           ; $49A1: $00
    nop                                           ; $49A2: $00
    nop                                           ; $49A3: $00
    inc bc                                        ; $49A4: $03
    nop                                           ; $49A5: $00
    rst RST_38                                    ; $49A6: $FF
    ld [bc], a                                    ; $49A7: $02
    rst RST_38                                    ; $49A8: $FF
    ld c, $FE                                     ; $49A9: $0E $FE
    nop                                           ; $49AB: $00
    ld h, b                                       ; $49AC: $60
    add b                                         ; $49AD: $80
    add b                                         ; $49AE: $80
    nop                                           ; $49AF: $00
    nop                                           ; $49B0: $00
    nop                                           ; $49B1: $00
    nop                                           ; $49B2: $00
    nop                                           ; $49B3: $00
    nop                                           ; $49B4: $00
    nop                                           ; $49B5: $00
    nop                                           ; $49B6: $00
    nop                                           ; $49B7: $00
    nop                                           ; $49B8: $00
    nop                                           ; $49B9: $00
    nop                                           ; $49BA: $00
    nop                                           ; $49BB: $00
    nop                                           ; $49BC: $00
    nop                                           ; $49BD: $00
    nop                                           ; $49BE: $00
    nop                                           ; $49BF: $00
    ld c, $00                                     ; $49C0: $0E $00
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
    nop                                           ; $49CC: $00
    nop                                           ; $49CD: $00
    nop                                           ; $49CE: $00
    nop                                           ; $49CF: $00
    nop                                           ; $49D0: $00
    nop                                           ; $49D1: $00
    nop                                           ; $49D2: $00
    nop                                           ; $49D3: $00
    nop                                           ; $49D4: $00
    nop                                           ; $49D5: $00
    nop                                           ; $49D6: $00
    nop                                           ; $49D7: $00
    nop                                           ; $49D8: $00
    nop                                           ; $49D9: $00
    nop                                           ; $49DA: $00
    nop                                           ; $49DB: $00
    nop                                           ; $49DC: $00
    nop                                           ; $49DD: $00
    nop                                           ; $49DE: $00
    nop                                           ; $49DF: $00
    inc bc                                        ; $49E0: $03
    nop                                           ; $49E1: $00
    rlca                                          ; $49E2: $07
    inc bc                                        ; $49E3: $03
    rrca                                          ; $49E4: $0F
    rlca                                          ; $49E5: $07
    rlca                                          ; $49E6: $07
    inc bc                                        ; $49E7: $03
    inc bc                                        ; $49E8: $03
    nop                                           ; $49E9: $00
    nop                                           ; $49EA: $00
    nop                                           ; $49EB: $00
    nop                                           ; $49EC: $00
    nop                                           ; $49ED: $00
    nop                                           ; $49EE: $00
    nop                                           ; $49EF: $00
    nop                                           ; $49F0: $00
    nop                                           ; $49F1: $00
    nop                                           ; $49F2: $00
    nop                                           ; $49F3: $00
    nop                                           ; $49F4: $00
    nop                                           ; $49F5: $00
    nop                                           ; $49F6: $00
    nop                                           ; $49F7: $00
    nop                                           ; $49F8: $00
    nop                                           ; $49F9: $00
    nop                                           ; $49FA: $00
    nop                                           ; $49FB: $00
    nop                                           ; $49FC: $00
    nop                                           ; $49FD: $00
    nop                                           ; $49FE: $00
    nop                                           ; $49FF: $00
    ld [bc], a                                    ; $4A00: $02
    ld bc, $0307                                  ; $4A01: $01 $07 $03
    rrca                                          ; $4A04: $0F
    rlca                                          ; $4A05: $07
    rrca                                          ; $4A06: $0F
    rlca                                          ; $4A07: $07
    rra                                           ; $4A08: $1F
    inc c                                         ; $4A09: $0C
    rst RST_38                                    ; $4A0A: $FF
    inc bc                                        ; $4A0B: $03
    db $FC                                        ; $4A0C: $FC
    adc a                                         ; $4A0D: $8F
    rst RST_38                                    ; $4A0E: $FF
    cp a                                          ; $4A0F: $BF
    rst RST_38                                    ; $4A10: $FF
    add a                                         ; $4A11: $87
    add a                                         ; $4A12: $87
    nop                                           ; $4A13: $00
    nop                                           ; $4A14: $00
    nop                                           ; $4A15: $00
    ld bc, $0200                                  ; $4A16: $01 $00 $02
    ld bc, $0001                                  ; $4A19: $01 $01 $00
    ld [bc], a                                    ; $4A1C: $02
    ld bc, $0003                                  ; $4A1D: $01 $03 $00
    ret nz                                        ; $4A20: $C0

    nop                                           ; $4A21: $00
    ld h, c                                       ; $4A22: $61
    add b                                         ; $4A23: $80
    db $D3                                        ; $4A24: $D3
    and c                                         ; $4A25: $A1
    res 6, c                                      ; $4A26: $CB $B1
    rst RST_00                                    ; $4A28: $C7
    cp c                                          ; $4A29: $B9
    xor a                                         ; $4A2A: $AF
    db $10                                        ; $4A2B: $10
    rst RST_38                                    ; $4A2C: $FF
    add b                                         ; $4A2D: $80
    inc hl                                        ; $4A2E: $23
    call c, $DCE3                                 ; $4A2F: $DC $E3 $DC
    db $E3                                        ; $4A32: $E3
    sbc h                                         ; $4A33: $9C
    sbc h                                         ; $4A34: $9C
    nop                                           ; $4A35: $00
    nop                                           ; $4A36: $00
    nop                                           ; $4A37: $00
    rst RST_38                                    ; $4A38: $FF
    nop                                           ; $4A39: $00
    ld a, a                                       ; $4A3A: $7F
    adc a                                         ; $4A3B: $8F
    rst RST_38                                    ; $4A3C: $FF
    inc bc                                        ; $4A3D: $03
    ld [hl], e                                    ; $4A3E: $73
    add b                                         ; $4A3F: $80
    scf                                           ; $4A40: $37
    nop                                           ; $4A41: $00
    rst RST_38                                    ; $4A42: $FF
    ld h, $FE                                     ; $4A43: $26 $FE
    inc a                                         ; $4A45: $3C
    cp $6C                                        ; $4A46: $FE $6C
    xor $54                                       ; $4A48: $EE $54
    rst RST_38                                    ; $4A4A: $FF
    call nz, $B4FF                                ; $4A4B: $C4 $FF $B4
    rst RST_38                                    ; $4A4E: $FF
    inc a                                         ; $4A4F: $3C
    rst RST_38                                    ; $4A50: $FF
    ld a, [hl]                                    ; $4A51: $7E
    rst RST_38                                    ; $4A52: $FF
    nop                                           ; $4A53: $00
    ld a, a                                       ; $4A54: $7F
    nop                                           ; $4A55: $00
    ld a, a                                       ; $4A56: $7F
    ld c, $9D                                     ; $4A57: $0E $9D
    ld l, [hl]                                    ; $4A59: $6E
    sbc a                                         ; $4A5A: $9F
    ld l, [hl]                                    ; $4A5B: $6E
    rst RST_38                                    ; $4A5C: $FF
    ld bc, $070F                                  ; $4A5D: $01 $0F $07
    ldh [rP1], a                                  ; $4A60: $E0 $00
    sbc e                                         ; $4A62: $9B
    ld h, b                                       ; $4A63: $60
    push hl                                       ; $4A64: $E5
    ld a, [$E4FA]                                 ; $4A65: $FA $FA $E4
    ei                                            ; $4A68: $FB
    adc h                                         ; $4A69: $8C
    rst RST_10                                    ; $4A6A: $D7
    xor b                                         ; $4A6B: $A8
    rst RST_30                                    ; $4A6C: $F7
    ld e, d                                       ; $4A6D: $5A
    cp $D8                                        ; $4A6E: $FE $D8
    cp $0C                                        ; $4A70: $FE $0C
    rst RST_08                                    ; $4A72: $CF
    add d                                         ; $4A73: $82
    ld b, e                                       ; $4A74: $43
    add b                                         ; $4A75: $80
    ld b, b                                       ; $4A76: $40
    add b                                         ; $4A77: $80
    add b                                         ; $4A78: $80
    nop                                           ; $4A79: $00
    nop                                           ; $4A7A: $00
    nop                                           ; $4A7B: $00
    nop                                           ; $4A7C: $00
    nop                                           ; $4A7D: $00
    nop                                           ; $4A7E: $00
    nop                                           ; $4A7F: $00
    rrca                                          ; $4A80: $0F
    nop                                           ; $4A81: $00
    nop                                           ; $4A82: $00
    nop                                           ; $4A83: $00
    nop                                           ; $4A84: $00
    nop                                           ; $4A85: $00
    nop                                           ; $4A86: $00
    nop                                           ; $4A87: $00
    nop                                           ; $4A88: $00
    nop                                           ; $4A89: $00
    nop                                           ; $4A8A: $00
    nop                                           ; $4A8B: $00
    nop                                           ; $4A8C: $00
    nop                                           ; $4A8D: $00
    nop                                           ; $4A8E: $00
    nop                                           ; $4A8F: $00
    nop                                           ; $4A90: $00
    nop                                           ; $4A91: $00
    nop                                           ; $4A92: $00
    nop                                           ; $4A93: $00
    nop                                           ; $4A94: $00
    nop                                           ; $4A95: $00
    nop                                           ; $4A96: $00
    nop                                           ; $4A97: $00
    nop                                           ; $4A98: $00
    nop                                           ; $4A99: $00
    nop                                           ; $4A9A: $00
    nop                                           ; $4A9B: $00
    nop                                           ; $4A9C: $00
    nop                                           ; $4A9D: $00
    nop                                           ; $4A9E: $00
    nop                                           ; $4A9F: $00
    nop                                           ; $4AA0: $00
    nop                                           ; $4AA1: $00
    nop                                           ; $4AA2: $00
    nop                                           ; $4AA3: $00
    nop                                           ; $4AA4: $00
    nop                                           ; $4AA5: $00
    nop                                           ; $4AA6: $00
    nop                                           ; $4AA7: $00
    nop                                           ; $4AA8: $00
    nop                                           ; $4AA9: $00
    nop                                           ; $4AAA: $00
    nop                                           ; $4AAB: $00
    nop                                           ; $4AAC: $00
    nop                                           ; $4AAD: $00
    nop                                           ; $4AAE: $00
    nop                                           ; $4AAF: $00
    inc bc                                        ; $4AB0: $03
    nop                                           ; $4AB1: $00
    inc b                                         ; $4AB2: $04
    inc bc                                        ; $4AB3: $03
    rlca                                          ; $4AB4: $07
    nop                                           ; $4AB5: $00
    dec bc                                        ; $4AB6: $0B
    inc b                                         ; $4AB7: $04
    rrca                                          ; $4AB8: $0F
    nop                                           ; $4AB9: $00
    rlca                                          ; $4ABA: $07
    nop                                           ; $4ABB: $00
    inc bc                                        ; $4ABC: $03
    ld bc, $0001                                  ; $4ABD: $01 $01 $00
    nop                                           ; $4AC0: $00
    nop                                           ; $4AC1: $00
    inc bc                                        ; $4AC2: $03
    nop                                           ; $4AC3: $00
    ld [bc], a                                    ; $4AC4: $02
    ld bc, $0102                                  ; $4AC5: $01 $02 $01
    ld [bc], a                                    ; $4AC8: $02
    ld bc, $0107                                  ; $4AC9: $01 $07 $01
    adc c                                         ; $4ACC: $89
    ld b, $5F                                     ; $4ACD: $06 $5F
    adc h                                         ; $4ACF: $8C
    db $DD                                        ; $4AD0: $DD
    dec bc                                        ; $4AD1: $0B
    adc a                                         ; $4AD2: $8F
    ld [bc], a                                    ; $4AD3: $02
    add a                                         ; $4AD4: $87
    nop                                           ; $4AD5: $00
    ret                                           ; $4AD6: $C9


    add [hl]                                      ; $4AD7: $86
    pop af                                        ; $4AD8: $F1
    adc $FB                                       ; $4AD9: $CE $FB
    ld [hl], h                                    ; $4ADB: $74
    db $FD                                        ; $4ADC: $FD
    ld [hl], b                                    ; $4ADD: $70
    ld [hl], c                                    ; $4ADE: $71
    nop                                           ; $4ADF: $00
    nop                                           ; $4AE0: $00
    nop                                           ; $4AE1: $00
    inc c                                         ; $4AE2: $0C
    nop                                           ; $4AE3: $00
    db $F4                                        ; $4AE4: $F4
    ld [$58EC], sp                                ; $4AE5: $08 $EC $58
    db $DB                                        ; $4AE8: $DB
    inc [hl]                                      ; $4AE9: $34
    dec sp                                        ; $4AEA: $3B
    db $EC                                        ; $4AEB: $EC
    db $FD                                        ; $4AEC: $FD
    adc $DD                                       ; $4AED: $CE $DD
    ld l, $FF                                     ; $4AEF: $2E $FF
    ld e, h                                       ; $4AF1: $5C
    rst RST_38                                    ; $4AF2: $FF
    ld e, d                                       ; $4AF3: $5A
    rst RST_38                                    ; $4AF4: $FF
    add e                                         ; $4AF5: $83
    rst RST_38                                    ; $4AF6: $FF
    db $FC                                        ; $4AF7: $FC
    db $FD                                        ; $4AF8: $FD
    ld [hl], d                                    ; $4AF9: $72
    rst RST_30                                    ; $4AFA: $F7
    ld l, b                                       ; $4AFB: $68
    cp $F5                                        ; $4AFC: $FE $F5
    rst RST_38                                    ; $4AFE: $FF
    sub b                                         ; $4AFF: $90
    nop                                           ; $4B00: $00
    nop                                           ; $4B01: $00
    nop                                           ; $4B02: $00
    nop                                           ; $4B03: $00
    nop                                           ; $4B04: $00
    nop                                           ; $4B05: $00
    nop                                           ; $4B06: $00
    nop                                           ; $4B07: $00
    ldh a, [rP1]                                  ; $4B08: $F0 $00
    sbc b                                         ; $4B0A: $98

jr_010_4B0B:
    ldh a, [$FFFC]                                ; $4B0B: $F0 $FC
    jr jr_010_4B0B                                ; $4B0D: $18 $FC

    ld [$70CC], sp                                ; $4B0F: $08 $CC $70
    ld hl, sp-$10                                 ; $4B12: $F8 $F0
    db $F4                                        ; $4B14: $F4
    ld l, b                                       ; $4B15: $68
    ldh [c], a                                    ; $4B16: $E2
    inc e                                         ; $4B17: $1C
    sub $08                                       ; $4B18: $D6 $08
    rst RST_38                                    ; $4B1A: $FF
    ld b, $FF                                     ; $4B1B: $06 $FF
    ld e, $FF                                     ; $4B1D: $1E $FF
    nop                                           ; $4B1F: $00
    inc bc                                        ; $4B20: $03
    nop                                           ; $4B21: $00
    dec b                                         ; $4B22: $05
    ld [bc], a                                    ; $4B23: $02
    dec b                                         ; $4B24: $05
    inc bc                                        ; $4B25: $03
    dec bc                                        ; $4B26: $0B
    rlca                                          ; $4B27: $07
    dec bc                                        ; $4B28: $0B
    rlca                                          ; $4B29: $07
    rrca                                          ; $4B2A: $0F
    ld b, $1E                                     ; $4B2B: $06 $1E
    inc c                                         ; $4B2D: $0C
    inc a                                         ; $4B2E: $3C
    ld [$307C], sp                                ; $4B2F: $08 $7C $30
    db $FC                                        ; $4B32: $FC
    ld a, b                                       ; $4B33: $78
    db $FC                                        ; $4B34: $FC
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
    rst RST_38                                    ; $4B40: $FF
    inc c                                         ; $4B41: $0C
    rst RST_38                                    ; $4B42: $FF
    ld [hl], b                                    ; $4B43: $70
    ld a, a                                       ; $4B44: $7F
    nop                                           ; $4B45: $00
    ld e, [hl]                                    ; $4B46: $5E
    ld hl, $738C                                  ; $4B47: $21 $8C $73
    inc c                                         ; $4B4A: $0C
    di                                            ; $4B4B: $F3
    inc sp                                        ; $4B4C: $33
    ret nz                                        ; $4B4D: $C0

    jp nz, $C201                                  ; $4B4E: $C2 $01 $C2

    add c                                         ; $4B51: $81
    pop bc                                        ; $4B52: $C1
    add b                                         ; $4B53: $80
    add b                                         ; $4B54: $80
    nop                                           ; $4B55: $00
    nop                                           ; $4B56: $00
    nop                                           ; $4B57: $00
    nop                                           ; $4B58: $00
    nop                                           ; $4B59: $00
    nop                                           ; $4B5A: $00
    nop                                           ; $4B5B: $00
    nop                                           ; $4B5C: $00
    nop                                           ; $4B5D: $00
    nop                                           ; $4B5E: $00
    nop                                           ; $4B5F: $00
    add b                                         ; $4B60: $80
    nop                                           ; $4B61: $00
    add b                                         ; $4B62: $80
    nop                                           ; $4B63: $00
    add b                                         ; $4B64: $80
    nop                                           ; $4B65: $00
    ld b, b                                       ; $4B66: $40
    add b                                         ; $4B67: $80
    ld b, b                                       ; $4B68: $40
    add b                                         ; $4B69: $80
    ld b, b                                       ; $4B6A: $40
    add b                                         ; $4B6B: $80
    ldh [rP1], a                                  ; $4B6C: $E0 $00
    ldh a, [$FFE0]                                ; $4B6E: $F0 $E0
    ld [hl], b                                    ; $4B70: $70
    ldh [$FF30], a                                ; $4B71: $E0 $30
    ldh [$FFF8], a                                ; $4B73: $E0 $F8
    jr nc, jr_010_4BB3                            ; $4B75: $30 $3C

    jr jr_010_4B97                                ; $4B77: $18 $1E

    nop                                           ; $4B79: $00
    rra                                           ; $4B7A: $1F
    ld c, $1F                                     ; $4B7B: $0E $1F
    rrca                                          ; $4B7D: $0F
    rrca                                          ; $4B7E: $0F
    nop                                           ; $4B7F: $00
    add b                                         ; $4B80: $80
    nop                                           ; $4B81: $00
    add b                                         ; $4B82: $80
    nop                                           ; $4B83: $00
    nop                                           ; $4B84: $00
    nop                                           ; $4B85: $00
    nop                                           ; $4B86: $00
    nop                                           ; $4B87: $00
    nop                                           ; $4B88: $00
    nop                                           ; $4B89: $00
    nop                                           ; $4B8A: $00
    nop                                           ; $4B8B: $00
    nop                                           ; $4B8C: $00
    nop                                           ; $4B8D: $00
    nop                                           ; $4B8E: $00
    nop                                           ; $4B8F: $00
    nop                                           ; $4B90: $00
    nop                                           ; $4B91: $00
    nop                                           ; $4B92: $00
    nop                                           ; $4B93: $00
    nop                                           ; $4B94: $00
    nop                                           ; $4B95: $00
    nop                                           ; $4B96: $00

jr_010_4B97:
    nop                                           ; $4B97: $00
    nop                                           ; $4B98: $00
    nop                                           ; $4B99: $00
    nop                                           ; $4B9A: $00
    nop                                           ; $4B9B: $00
    nop                                           ; $4B9C: $00
    nop                                           ; $4B9D: $00
    nop                                           ; $4B9E: $00
    nop                                           ; $4B9F: $00
    nop                                           ; $4BA0: $00
    nop                                           ; $4BA1: $00
    nop                                           ; $4BA2: $00
    nop                                           ; $4BA3: $00
    nop                                           ; $4BA4: $00
    nop                                           ; $4BA5: $00
    nop                                           ; $4BA6: $00
    nop                                           ; $4BA7: $00
    nop                                           ; $4BA8: $00
    nop                                           ; $4BA9: $00
    nop                                           ; $4BAA: $00
    nop                                           ; $4BAB: $00
    nop                                           ; $4BAC: $00
    nop                                           ; $4BAD: $00
    nop                                           ; $4BAE: $00
    nop                                           ; $4BAF: $00
    nop                                           ; $4BB0: $00
    nop                                           ; $4BB1: $00
    nop                                           ; $4BB2: $00

jr_010_4BB3:
    nop                                           ; $4BB3: $00
    nop                                           ; $4BB4: $00
    nop                                           ; $4BB5: $00
    rst RST_38                                    ; $4BB6: $FF
    nop                                           ; $4BB7: $00
    rst RST_38                                    ; $4BB8: $FF
    inc bc                                        ; $4BB9: $03
    rst RST_38                                    ; $4BBA: $FF
    nop                                           ; $4BBB: $00
    ld e, b                                       ; $4BBC: $58
    jr nz, jr_010_4C2F                            ; $4BBD: $20 $70

    nop                                           ; $4BBF: $00
    nop                                           ; $4BC0: $00
    nop                                           ; $4BC1: $00
    nop                                           ; $4BC2: $00
    nop                                           ; $4BC3: $00
    nop                                           ; $4BC4: $00
    nop                                           ; $4BC5: $00
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
    nop                                           ; $4BD4: $00
    nop                                           ; $4BD5: $00
    nop                                           ; $4BD6: $00
    nop                                           ; $4BD7: $00
    rst RST_28                                    ; $4BD8: $EF
    nop                                           ; $4BD9: $00
    pop af                                        ; $4BDA: $F1
    xor $F1                                       ; $4BDB: $EE $F1
    ld l, [hl]                                    ; $4BDD: $6E
    ld l, a                                       ; $4BDE: $6F
    nop                                           ; $4BDF: $00
    nop                                           ; $4BE0: $00
    nop                                           ; $4BE1: $00
    jr nc, jr_010_4BE4                            ; $4BE2: $30 $00

jr_010_4BE4:
    cpl                                           ; $4BE4: $2F
    db $10                                        ; $4BE5: $10
    ld l, $15                                     ; $4BE6: $2E $15
    dec l                                         ; $4BE8: $2D
    inc de                                        ; $4BE9: $13
    inc sp                                        ; $4BEA: $33
    ld e, $3F                                     ; $4BEB: $1E $3F
    inc c                                         ; $4BED: $0C
    ld a, l                                       ; $4BEE: $7D
    ld [hl+], a                                   ; $4BEF: $22
    rst RST_38                                    ; $4BF0: $FF
    dec c                                         ; $4BF1: $0D
    ld a, a                                       ; $4BF2: $7F
    push bc                                       ; $4BF3: $C5
    rst RST_38                                    ; $4BF4: $FF
    ret nc                                        ; $4BF5: $D0

    rst RST_38                                    ; $4BF6: $FF
    rra                                           ; $4BF7: $1F
    rra                                           ; $4BF8: $1F
    inc c                                         ; $4BF9: $0C
    dec e                                         ; $4BFA: $1D
    ld a, [bc]                                    ; $4BFB: $0A
    ccf                                           ; $4BFC: $3F
    dec e                                         ; $4BFD: $1D
    ccf                                           ; $4BFE: $3F
    ld b, $00                                     ; $4BFF: $06 $00
    nop                                           ; $4C01: $00
    ret nz                                        ; $4C02: $C0

    nop                                           ; $4C03: $00
    ld b, b                                       ; $4C04: $40
    add b                                         ; $4C05: $80
    ret nz                                        ; $4C06: $C0

    add b                                         ; $4C07: $80
    cp a                                          ; $4C08: $BF
    ld b, b                                       ; $4C09: $40
    cp c                                          ; $4C0A: $B9
    rst RST_18                                    ; $4C0B: $DF
    rst RST_18                                    ; $4C0C: $DF
    pop hl                                        ; $4C0D: $E1
    rst RST_18                                    ; $4C0E: $DF
    ldh [$FFF9], a                                ; $4C0F: $E0 $F9
    adc $FF                                       ; $4C11: $CE $FF
    adc [hl]                                      ; $4C13: $8E
    cp $21                                        ; $4C14: $FE $21
    db $FC                                        ; $4C16: $FC
    db $E3                                        ; $4C17: $E3
    rst RST_30                                    ; $4C18: $F7
    ld c, b                                       ; $4C19: $48
    rst RST_38                                    ; $4C1A: $FF
    ldh [$FFFB], a                                ; $4C1B: $E0 $FB
    db $E4                                        ; $4C1D: $E4
    rst RST_38                                    ; $4C1E: $FF
    ld b, b                                       ; $4C1F: $40
    nop                                           ; $4C20: $00
    nop                                           ; $4C21: $00
    nop                                           ; $4C22: $00
    nop                                           ; $4C23: $00
    nop                                           ; $4C24: $00
    nop                                           ; $4C25: $00
    nop                                           ; $4C26: $00
    nop                                           ; $4C27: $00
    nop                                           ; $4C28: $00
    nop                                           ; $4C29: $00
    add b                                         ; $4C2A: $80
    nop                                           ; $4C2B: $00

jr_010_4C2C:
    ret nz                                        ; $4C2C: $C0

    add b                                         ; $4C2D: $80
    ret nz                                        ; $4C2E: $C0

jr_010_4C2F:
    add b                                         ; $4C2F: $80
    ret nz                                        ; $4C30: $C0

    nop                                           ; $4C31: $00
    nop                                           ; $4C32: $00
    nop                                           ; $4C33: $00
    add b                                         ; $4C34: $80
    nop                                           ; $4C35: $00
    ld b, b                                       ; $4C36: $40
    add b                                         ; $4C37: $80
    ld h, b                                       ; $4C38: $60
    add b                                         ; $4C39: $80
    ldh a, [$FF60]                                ; $4C3A: $F0 $60
    ldh a, [$FF60]                                ; $4C3C: $F0 $60
    ldh [rP1], a                                  ; $4C3E: $E0 $00
    rst RST_38                                    ; $4C40: $FF
    inc c                                         ; $4C41: $0C
    rst RST_38                                    ; $4C42: $FF
    ld [hl], b                                    ; $4C43: $70
    ld a, a                                       ; $4C44: $7F
    nop                                           ; $4C45: $00
    ld e, [hl]                                    ; $4C46: $5E
    ld hl, $738C                                  ; $4C47: $21 $8C $73
    ld a, [bc]                                    ; $4C4A: $0A
    pop af                                        ; $4C4B: $F1
    ld sp, $C1C0                                  ; $4C4C: $31 $C0 $C1
    nop                                           ; $4C4F: $00
    pop bc                                        ; $4C50: $C1
    add b                                         ; $4C51: $80
    ret nz                                        ; $4C52: $C0

    add b                                         ; $4C53: $80
    add b                                         ; $4C54: $80
    nop                                           ; $4C55: $00
    nop                                           ; $4C56: $00
    nop                                           ; $4C57: $00
    nop                                           ; $4C58: $00
    nop                                           ; $4C59: $00
    nop                                           ; $4C5A: $00
    nop                                           ; $4C5B: $00
    nop                                           ; $4C5C: $00
    nop                                           ; $4C5D: $00
    nop                                           ; $4C5E: $00
    nop                                           ; $4C5F: $00
    add b                                         ; $4C60: $80
    nop                                           ; $4C61: $00
    add b                                         ; $4C62: $80
    nop                                           ; $4C63: $00
    add b                                         ; $4C64: $80
    nop                                           ; $4C65: $00
    ld b, b                                       ; $4C66: $40
    add b                                         ; $4C67: $80
    ld b, b                                       ; $4C68: $40
    add b                                         ; $4C69: $80
    jr nz, jr_010_4C2C                            ; $4C6A: $20 $C0

    ldh a, [rP1]                                  ; $4C6C: $F0 $00
    ld a, b                                       ; $4C6E: $78
    ldh a, [$FF38]                                ; $4C6F: $F0 $38
    ldh a, [$FF98]                                ; $4C71: $F0 $98
    ld [hl], b                                    ; $4C73: $70
    ld a, h                                       ; $4C74: $7C
    jr jr_010_4C95                                ; $4C75: $18 $1E

    inc c                                         ; $4C77: $0C
    rrca                                          ; $4C78: $0F
    nop                                           ; $4C79: $00
    rrca                                          ; $4C7A: $0F
    rlca                                          ; $4C7B: $07
    rrca                                          ; $4C7C: $0F
    rlca                                          ; $4C7D: $07
    rrca                                          ; $4C7E: $0F
    nop                                           ; $4C7F: $00
    rlca                                          ; $4C80: $07
    nop                                           ; $4C81: $00
    dec b                                         ; $4C82: $05
    ld [bc], a                                    ; $4C83: $02
    dec b                                         ; $4C84: $05
    inc bc                                        ; $4C85: $03
    dec b                                         ; $4C86: $05
    inc bc                                        ; $4C87: $03
    dec b                                         ; $4C88: $05
    inc bc                                        ; $4C89: $03
    rlca                                          ; $4C8A: $07
    inc bc                                        ; $4C8B: $03
    rlca                                          ; $4C8C: $07
    ld [bc], a                                    ; $4C8D: $02
    rrca                                          ; $4C8E: $0F
    ld [bc], a                                    ; $4C8F: $02
    rra                                           ; $4C90: $1F
    inc c                                         ; $4C91: $0C
    ccf                                           ; $4C92: $3F
    ld e, $3F                                     ; $4C93: $1E $3F

jr_010_4C95:
    nop                                           ; $4C95: $00
    nop                                           ; $4C96: $00
    nop                                           ; $4C97: $00
    nop                                           ; $4C98: $00
    nop                                           ; $4C99: $00
    nop                                           ; $4C9A: $00
    nop                                           ; $4C9B: $00
    nop                                           ; $4C9C: $00
    nop                                           ; $4C9D: $00
    nop                                           ; $4C9E: $00
    nop                                           ; $4C9F: $00
    add b                                         ; $4CA0: $80
    nop                                           ; $4CA1: $00
    ret nz                                        ; $4CA2: $C0

    add b                                         ; $4CA3: $80
    ret nz                                        ; $4CA4: $C0

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
    nop                                           ; $4CB4: $00
    nop                                           ; $4CB5: $00
    nop                                           ; $4CB6: $00
    nop                                           ; $4CB7: $00
    nop                                           ; $4CB8: $00
    nop                                           ; $4CB9: $00
    nop                                           ; $4CBA: $00
    nop                                           ; $4CBB: $00
    nop                                           ; $4CBC: $00
    nop                                           ; $4CBD: $00
    nop                                           ; $4CBE: $00
    nop                                           ; $4CBF: $00
    rrca                                          ; $4CC0: $0F
    dec b                                         ; $4CC1: $05
    rlca                                          ; $4CC2: $07
    ld [bc], a                                    ; $4CC3: $02
    inc bc                                        ; $4CC4: $03
    ld bc, $0023                                  ; $4CC5: $01 $23 $00

jr_010_4CC8:
    ld d, c                                       ; $4CC8: $51
    jr nz, @+$55                                  ; $4CC9: $20 $53

    jr nz, jr_010_4D48                            ; $4CCB: $20 $7B

    nop                                           ; $4CCD: $00
    cp c                                          ; $4CCE: $B9
    ld b, b                                       ; $4CCF: $40
    ei                                            ; $4CD0: $FB
    ld bc, $183F                                  ; $4CD1: $01 $3F $18
    rra                                           ; $4CD4: $1F
    dec bc                                        ; $4CD5: $0B

jr_010_4CD6:
    rrca                                          ; $4CD6: $0F
    inc bc                                        ; $4CD7: $03
    inc bc                                        ; $4CD8: $03
    nop                                           ; $4CD9: $00
    ld bc, $0000                                  ; $4CDA: $01 $00 $00
    nop                                           ; $4CDD: $00
    inc bc                                        ; $4CDE: $03
    nop                                           ; $4CDF: $00
    or h                                          ; $4CE0: $B4
    ld l, b                                       ; $4CE1: $68
    ld a, d                                       ; $4CE2: $7A
    call c, $98FF                                 ; $4CE3: $DC $FF $98
    cp h                                          ; $4CE6: $BC
    ld d, a                                       ; $4CE7: $57
    rst RST_38                                    ; $4CE8: $FF
    or c                                          ; $4CE9: $B1
    rst RST_38                                    ; $4CEA: $FF
    ld h, $F7                                     ; $4CEB: $26 $F7
    rrca                                          ; $4CED: $0F
    rst RST_38                                    ; $4CEE: $FF
    db $EC                                        ; $4CEF: $EC
    db $FC                                        ; $4CF0: $FC
    dec bc                                        ; $4CF1: $0B
    ld a, h                                       ; $4CF2: $7C
    or e                                          ; $4CF3: $B3
    cp $7D                                        ; $4CF4: $FE $7D
    rst RST_38                                    ; $4CF6: $FF
    sbc h                                         ; $4CF7: $9C
    rst RST_38                                    ; $4CF8: $FF
    ld l, d                                       ; $4CF9: $6A
    cp $84                                        ; $4CFA: $FE $84
    db $FC                                        ; $4CFC: $FC
    nop                                           ; $4CFD: $00
    db $FC                                        ; $4CFE: $FC
    nop                                           ; $4CFF: $00
    nop                                           ; $4D00: $00
    nop                                           ; $4D01: $00
    nop                                           ; $4D02: $00
    nop                                           ; $4D03: $00
    ret nz                                        ; $4D04: $C0

    nop                                           ; $4D05: $00
    jr nz, jr_010_4CC8                            ; $4D06: $20 $C0

    ret nc                                        ; $4D08: $D0

    ldh [$FFF0], a                                ; $4D09: $E0 $F0
    ldh [$FFF8], a                                ; $4D0B: $E0 $F8
    ld [hl], b                                    ; $4D0D: $70
    cp $18                                        ; $4D0E: $FE $18
    sbc a                                         ; $4D10: $9F
    ld b, $47                                     ; $4D11: $06 $47
    add b                                         ; $4D13: $80
    jr nz, jr_010_4CD6                            ; $4D14: $20 $C0

    ld [hl], b                                    ; $4D16: $70
    add b                                         ; $4D17: $80
    ld hl, sp+$30                                 ; $4D18: $F8 $30
    ld a, b                                       ; $4D1A: $78
    jr nc, jr_010_4D8D                            ; $4D1B: $30 $70

    jr nz, jr_010_4D8F                            ; $4D1D: $20 $70

    nop                                           ; $4D1F: $00
    nop                                           ; $4D20: $00
    nop                                           ; $4D21: $00
    nop                                           ; $4D22: $00
    nop                                           ; $4D23: $00
    nop                                           ; $4D24: $00
    nop                                           ; $4D25: $00
    nop                                           ; $4D26: $00
    nop                                           ; $4D27: $00
    nop                                           ; $4D28: $00
    nop                                           ; $4D29: $00
    nop                                           ; $4D2A: $00
    nop                                           ; $4D2B: $00
    nop                                           ; $4D2C: $00
    nop                                           ; $4D2D: $00
    nop                                           ; $4D2E: $00
    nop                                           ; $4D2F: $00
    nop                                           ; $4D30: $00
    nop                                           ; $4D31: $00
    nop                                           ; $4D32: $00
    nop                                           ; $4D33: $00
    nop                                           ; $4D34: $00
    nop                                           ; $4D35: $00
    nop                                           ; $4D36: $00
    nop                                           ; $4D37: $00
    ld [bc], a                                    ; $4D38: $02
    nop                                           ; $4D39: $00
    dec b                                         ; $4D3A: $05
    ld [bc], a                                    ; $4D3B: $02
    dec b                                         ; $4D3C: $05
    ld [bc], a                                    ; $4D3D: $02
    db $DD                                        ; $4D3E: $DD
    ld [bc], a                                    ; $4D3F: $02
    nop                                           ; $4D40: $00
    nop                                           ; $4D41: $00
    nop                                           ; $4D42: $00
    nop                                           ; $4D43: $00
    nop                                           ; $4D44: $00
    nop                                           ; $4D45: $00
    nop                                           ; $4D46: $00
    nop                                           ; $4D47: $00

jr_010_4D48:
    nop                                           ; $4D48: $00
    nop                                           ; $4D49: $00
    nop                                           ; $4D4A: $00
    nop                                           ; $4D4B: $00
    nop                                           ; $4D4C: $00
    nop                                           ; $4D4D: $00
    nop                                           ; $4D4E: $00
    nop                                           ; $4D4F: $00
    nop                                           ; $4D50: $00
    nop                                           ; $4D51: $00
    nop                                           ; $4D52: $00
    nop                                           ; $4D53: $00
    nop                                           ; $4D54: $00
    nop                                           ; $4D55: $00
    nop                                           ; $4D56: $00
    nop                                           ; $4D57: $00
    nop                                           ; $4D58: $00
    nop                                           ; $4D59: $00
    nop                                           ; $4D5A: $00
    nop                                           ; $4D5B: $00
    nop                                           ; $4D5C: $00
    nop                                           ; $4D5D: $00
    add b                                         ; $4D5E: $80
    nop                                           ; $4D5F: $00
    inc bc                                        ; $4D60: $03
    nop                                           ; $4D61: $00
    rrca                                          ; $4D62: $0F
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
    nop                                           ; $4D7E: $00
    nop                                           ; $4D7F: $00
    rrca                                          ; $4D80: $0F
    nop                                           ; $4D81: $00
    ldh a, [rIF]                                  ; $4D82: $F0 $0F
    rst RST_38                                    ; $4D84: $FF
    ccf                                           ; $4D85: $3F
    rst RST_38                                    ; $4D86: $FF
    rlca                                          ; $4D87: $07
    rra                                           ; $4D88: $1F
    nop                                           ; $4D89: $00
    nop                                           ; $4D8A: $00
    nop                                           ; $4D8B: $00
    rlca                                          ; $4D8C: $07

jr_010_4D8D:
    nop                                           ; $4D8D: $00
    nop                                           ; $4D8E: $00

jr_010_4D8F:
    nop                                           ; $4D8F: $00
    nop                                           ; $4D90: $00
    nop                                           ; $4D91: $00
    nop                                           ; $4D92: $00
    nop                                           ; $4D93: $00
    nop                                           ; $4D94: $00
    nop                                           ; $4D95: $00
    nop                                           ; $4D96: $00
    nop                                           ; $4D97: $00
    nop                                           ; $4D98: $00
    nop                                           ; $4D99: $00
    nop                                           ; $4D9A: $00
    nop                                           ; $4D9B: $00
    nop                                           ; $4D9C: $00
    nop                                           ; $4D9D: $00
    nop                                           ; $4D9E: $00
    nop                                           ; $4D9F: $00
    rrca                                          ; $4DA0: $0F
    ldh a, [$FF0E]                                ; $4DA1: $F0 $0E
    pop af                                        ; $4DA3: $F1
    ld hl, sp-$19                                 ; $4DA4: $F8 $E7
    cp $F9                                        ; $4DA6: $FE $F9
    rst RST_38                                    ; $4DA8: $FF
    ld c, $FF                                     ; $4DA9: $0E $FF
    rra                                           ; $4DAB: $1F
    rst RST_38                                    ; $4DAC: $FF
    nop                                           ; $4DAD: $00
    inc bc                                        ; $4DAE: $03
    nop                                           ; $4DAF: $00
    ld bc, $0000                                  ; $4DB0: $01 $00 $00
    nop                                           ; $4DB3: $00
    nop                                           ; $4DB4: $00
    nop                                           ; $4DB5: $00
    nop                                           ; $4DB6: $00
    nop                                           ; $4DB7: $00
    nop                                           ; $4DB8: $00
    nop                                           ; $4DB9: $00
    nop                                           ; $4DBA: $00
    nop                                           ; $4DBB: $00
    nop                                           ; $4DBC: $00
    nop                                           ; $4DBD: $00
    nop                                           ; $4DBE: $00
    nop                                           ; $4DBF: $00
    ld a, $00                                     ; $4DC0: $3E $00
    cp [hl]                                       ; $4DC2: $BE
    nop                                           ; $4DC3: $00
    xor d                                         ; $4DC4: $AA
    inc d                                         ; $4DC5: $14
    sub [hl]                                      ; $4DC6: $96
    nop                                           ; $4DC7: $00
    ret nz                                        ; $4DC8: $C0

    nop                                           ; $4DC9: $00
    ldh [$FF80], a                                ; $4DCA: $E0 $80
    ld hl, sp-$20                                 ; $4DCC: $F8 $E0
    db $FC                                        ; $4DCE: $FC
    nop                                           ; $4DCF: $00
    rst RST_38                                    ; $4DD0: $FF
    ret nz                                        ; $4DD1: $C0

    ldh a, [$FF60]                                ; $4DD2: $F0 $60
    ld [hl], b                                    ; $4DD4: $70
    jr nz, @+$7A                                  ; $4DD5: $20 $78

    nop                                           ; $4DD7: $00
    ld a, h                                       ; $4DD8: $7C
    jr c, jr_010_4E57                             ; $4DD9: $38 $7C

    jr c, jr_010_4E1B                             ; $4DDB: $38 $3E

    inc b                                         ; $4DDD: $04
    ld e, $00                                     ; $4DDE: $1E $00
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
    nop                                           ; $4DF8: $00
    nop                                           ; $4DF9: $00
    nop                                           ; $4DFA: $00
    nop                                           ; $4DFB: $00
    ld e, $00                                     ; $4DFC: $1E $00
    ld a, a                                       ; $4DFE: $7F
    ld e, $00                                     ; $4DFF: $1E $00
    nop                                           ; $4E01: $00
    nop                                           ; $4E02: $00
    nop                                           ; $4E03: $00
    nop                                           ; $4E04: $00
    nop                                           ; $4E05: $00
    nop                                           ; $4E06: $00
    nop                                           ; $4E07: $00
    inc c                                         ; $4E08: $0C
    nop                                           ; $4E09: $00
    ld a, [bc]                                    ; $4E0A: $0A
    inc b                                         ; $4E0B: $04
    dec b                                         ; $4E0C: $05
    ld [bc], a                                    ; $4E0D: $02
    rrca                                          ; $4E0E: $0F
    nop                                           ; $4E0F: $00

jr_010_4E10:
    rla                                           ; $4E10: $17
    ld [$001F], sp                                ; $4E11: $08 $1F $00
    inc bc                                        ; $4E14: $03
    nop                                           ; $4E15: $00
    nop                                           ; $4E16: $00
    nop                                           ; $4E17: $00
    nop                                           ; $4E18: $00
    nop                                           ; $4E19: $00
    rlca                                          ; $4E1A: $07

jr_010_4E1B:
    nop                                           ; $4E1B: $00
    ld hl, sp+$07                                 ; $4E1C: $F8 $07
    rst RST_38                                    ; $4E1E: $FF
    rst RST_38                                    ; $4E1F: $FF
    rst RST_30                                    ; $4E20: $F7
    ld [$5BEC], sp                                ; $4E21: $08 $EC $5B
    rst RST_38                                    ; $4E24: $FF
    ld [hl], $FF                                  ; $4E25: $36 $FF
    ld c, l                                       ; $4E27: $4D
    ld a, a                                       ; $4E28: $7F
    inc e                                         ; $4E29: $1C
    inc a                                         ; $4E2A: $3C
    dec de                                        ; $4E2B: $1B
    ld a, l                                       ; $4E2C: $7D
    scf                                           ; $4E2D: $37
    cp a                                          ; $4E2E: $BF
    ld b, $9F                                     ; $4E2F: $06 $9F
    ld b, $FF                                     ; $4E31: $06 $FF
    db $10                                        ; $4E33: $10
    rst RST_30                                    ; $4E34: $F7
    set 7, a                                      ; $4E35: $CB $FF
    daa                                           ; $4E37: $27
    ld a, a                                       ; $4E38: $7F
    dec sp                                        ; $4E39: $3B
    ccf                                           ; $4E3A: $3F
    dec bc                                        ; $4E3B: $0B
    cp a                                          ; $4E3C: $BF
    nop                                           ; $4E3D: $00
    rst RST_00                                    ; $4E3E: $C7
    cp b                                          ; $4E3F: $B8
    nop                                           ; $4E40: $00
    nop                                           ; $4E41: $00
    ldh a, [rP1]                                  ; $4E42: $F0 $00
    adc b                                         ; $4E44: $88
    ldh a, [$FFF6]                                ; $4E45: $F0 $F6
    ld hl, sp-$07                                 ; $4E47: $F8 $F9
    ld a, [hl]                                    ; $4E49: $7E
    rst RST_38                                    ; $4E4A: $FF
    cp a                                          ; $4E4B: $BF
    rst RST_38                                    ; $4E4C: $FF
    nop                                           ; $4E4D: $00
    jr c, jr_010_4E10                             ; $4E4E: $38 $C0

    inc c                                         ; $4E50: $0C
    ldh a, [$FFDE]                                ; $4E51: $F0 $DE
    inc l                                         ; $4E53: $2C
    rst RST_38                                    ; $4E54: $FF
    adc $FF                                       ; $4E55: $CE $FF

jr_010_4E57:
    db $D3                                        ; $4E57: $D3
    ei                                            ; $4E58: $FB
    or b                                          ; $4E59: $B0
    ldh a, [$FFA0]                                ; $4E5A: $F0 $A0
    ldh [rLCDC], a                                ; $4E5C: $E0 $40
    ldh [rP1], a                                  ; $4E5E: $E0 $00
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
    ret nz                                        ; $4E6C: $C0

    nop                                           ; $4E6D: $00
    ldh [$FFC0], a                                ; $4E6E: $E0 $C0
    ldh [rP1], a                                  ; $4E70: $E0 $00
    nop                                           ; $4E72: $00
    nop                                           ; $4E73: $00
    nop                                           ; $4E74: $00
    nop                                           ; $4E75: $00
    jr jr_010_4E78                                ; $4E76: $18 $00

jr_010_4E78:
    add sp, $10                                   ; $4E78: $E8 $10
    ldh a, [rP1]                                  ; $4E7A: $F0 $00
    ldh a, [rP1]                                  ; $4E7C: $F0 $00
    ld h, b                                       ; $4E7E: $60
    nop                                           ; $4E7F: $00
    nop                                           ; $4E80: $00
    nop                                           ; $4E81: $00
    nop                                           ; $4E82: $00
    nop                                           ; $4E83: $00
    nop                                           ; $4E84: $00
    nop                                           ; $4E85: $00
    nop                                           ; $4E86: $00
    nop                                           ; $4E87: $00
    nop                                           ; $4E88: $00
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
    ld b, $00                                     ; $4E9C: $06 $00
    ld a, [bc]                                    ; $4E9E: $0A
    inc b                                         ; $4E9F: $04
    rst RST_38                                    ; $4EA0: $FF
    ld h, b                                       ; $4EA1: $60
    rst RST_38                                    ; $4EA2: $FF
    nop                                           ; $4EA3: $00
    ld [hl], b                                    ; $4EA4: $70
    nop                                           ; $4EA5: $00
    nop                                           ; $4EA6: $00
    nop                                           ; $4EA7: $00
    nop                                           ; $4EA8: $00
    nop                                           ; $4EA9: $00
    nop                                           ; $4EAA: $00
    nop                                           ; $4EAB: $00
    nop                                           ; $4EAC: $00
    nop                                           ; $4EAD: $00
    nop                                           ; $4EAE: $00
    nop                                           ; $4EAF: $00
    nop                                           ; $4EB0: $00
    nop                                           ; $4EB1: $00
    nop                                           ; $4EB2: $00
    nop                                           ; $4EB3: $00
    nop                                           ; $4EB4: $00
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
    rst RST_38                                    ; $4EC0: $FF
    ccf                                           ; $4EC1: $3F
    ccf                                           ; $4EC2: $3F
    rlca                                          ; $4EC3: $07
    rlca                                          ; $4EC4: $07
    nop                                           ; $4EC5: $00
    nop                                           ; $4EC6: $00
    nop                                           ; $4EC7: $00
    nop                                           ; $4EC8: $00
    nop                                           ; $4EC9: $00
    nop                                           ; $4ECA: $00
    nop                                           ; $4ECB: $00
    nop                                           ; $4ECC: $00
    nop                                           ; $4ECD: $00
    nop                                           ; $4ECE: $00
    nop                                           ; $4ECF: $00
    nop                                           ; $4ED0: $00
    nop                                           ; $4ED1: $00
    nop                                           ; $4ED2: $00
    nop                                           ; $4ED3: $00
    nop                                           ; $4ED4: $00
    nop                                           ; $4ED5: $00
    nop                                           ; $4ED6: $00
    nop                                           ; $4ED7: $00
    nop                                           ; $4ED8: $00
    nop                                           ; $4ED9: $00
    nop                                           ; $4EDA: $00
    nop                                           ; $4EDB: $00
    nop                                           ; $4EDC: $00
    nop                                           ; $4EDD: $00
    nop                                           ; $4EDE: $00
    nop                                           ; $4EDF: $00
    jp $F1BC                                      ; $4EE0: $C3 $BC $F1


    ld c, $0F                                     ; $4EE3: $0E $0F
    nop                                           ; $4EE5: $00
    ld bc, $0000                                  ; $4EE6: $01 $00 $00
    nop                                           ; $4EE9: $00
    nop                                           ; $4EEA: $00
    nop                                           ; $4EEB: $00
    nop                                           ; $4EEC: $00
    nop                                           ; $4EED: $00
    nop                                           ; $4EEE: $00
    nop                                           ; $4EEF: $00
    nop                                           ; $4EF0: $00
    nop                                           ; $4EF1: $00
    nop                                           ; $4EF2: $00
    nop                                           ; $4EF3: $00
    nop                                           ; $4EF4: $00
    nop                                           ; $4EF5: $00
    nop                                           ; $4EF6: $00
    nop                                           ; $4EF7: $00
    nop                                           ; $4EF8: $00
    nop                                           ; $4EF9: $00
    nop                                           ; $4EFA: $00
    nop                                           ; $4EFB: $00
    nop                                           ; $4EFC: $00
    nop                                           ; $4EFD: $00
    nop                                           ; $4EFE: $00
    nop                                           ; $4EFF: $00
    ldh [rP1], a                                  ; $4F00: $E0 $00
    ldh [rP1], a                                  ; $4F02: $E0 $00
    ret nc                                        ; $4F04: $D0

    jr nz, jr_010_4F17                            ; $4F05: $20 $10

    ldh [$FF90], a                                ; $4F07: $E0 $90
    ld h, b                                       ; $4F09: $60
    ld c, b                                       ; $4F0A: $48
    jr nc, jr_010_4F4B                            ; $4F0B: $30 $3E

    nop                                           ; $4F0D: $00
    ld a, $1C                                     ; $4F0E: $3E $1C
    ccf                                           ; $4F10: $3F
    ld e, $1F                                     ; $4F11: $1E $1F
    ld c, $0F                                     ; $4F13: $0E $0F
    ld b, $07                                     ; $4F15: $06 $07

jr_010_4F17:
    ld [bc], a                                    ; $4F17: $02
    rlca                                          ; $4F18: $07
    nop                                           ; $4F19: $00
    rlca                                          ; $4F1A: $07
    inc bc                                        ; $4F1B: $03
    rlca                                          ; $4F1C: $07
    inc bc                                        ; $4F1D: $03
    rlca                                          ; $4F1E: $07
    nop                                           ; $4F1F: $00
    add b                                         ; $4F20: $80
    nop                                           ; $4F21: $00
    ret nz                                        ; $4F22: $C0

    add b                                         ; $4F23: $80
    ldh [$FFC0], a                                ; $4F24: $E0 $C0
    ldh [rP1], a                                  ; $4F26: $E0 $00
    nop                                           ; $4F28: $00
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
    inc bc                                        ; $4F40: $03
    nop                                           ; $4F41: $00
    rrca                                          ; $4F42: $0F
    inc bc                                        ; $4F43: $03
    rrca                                          ; $4F44: $0F
    rlca                                          ; $4F45: $07
    rlca                                          ; $4F46: $07
    nop                                           ; $4F47: $00
    nop                                           ; $4F48: $00
    nop                                           ; $4F49: $00

jr_010_4F4A:
    nop                                           ; $4F4A: $00

jr_010_4F4B:
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
    add a                                         ; $4F60: $87
    ld a, b                                       ; $4F61: $78
    rst RST_20                                    ; $4F62: $E7
    sbc b                                         ; $4F63: $98
    db $FC                                        ; $4F64: $FC
    db $E3                                        ; $4F65: $E3
    ld a, [$FFF1]                                 ; $4F66: $FA $F1 $FF
    jr jr_010_4F8A                                ; $4F69: $18 $1F

    rlca                                          ; $4F6B: $07
    rlca                                          ; $4F6C: $07
    inc bc                                        ; $4F6D: $03
    inc bc                                        ; $4F6E: $03
    ld bc, $0103                                  ; $4F6F: $01 $03 $01
    ld bc, $0000                                  ; $4F72: $01 $00 $00
    nop                                           ; $4F75: $00
    nop                                           ; $4F76: $00
    nop                                           ; $4F77: $00
    nop                                           ; $4F78: $00
    nop                                           ; $4F79: $00
    nop                                           ; $4F7A: $00
    nop                                           ; $4F7B: $00
    nop                                           ; $4F7C: $00
    nop                                           ; $4F7D: $00
    nop                                           ; $4F7E: $00
    nop                                           ; $4F7F: $00
    sbc a                                         ; $4F80: $9F
    nop                                           ; $4F81: $00
    ld e, a                                       ; $4F82: $5F
    add b                                         ; $4F83: $80
    ld d, l                                       ; $4F84: $55
    adc d                                         ; $4F85: $8A
    ld c, e                                       ; $4F86: $4B
    add b                                         ; $4F87: $80
    jr nz, jr_010_4F4A                            ; $4F88: $20 $C0

jr_010_4F8A:
    ldh a, [rP1]                                  ; $4F8A: $F0 $00
    ld hl, sp+$70                                 ; $4F8C: $F8 $70
    ld hl, sp+$70                                 ; $4F8E: $F8 $70
    ld hl, sp+$70                                 ; $4F90: $F8 $70
    ld a, b                                       ; $4F92: $78
    jr nc, @+$3A                                  ; $4F93: $30 $38

    db $10                                        ; $4F95: $10
    inc a                                         ; $4F96: $3C
    nop                                           ; $4F97: $00
    ld a, $1C                                     ; $4F98: $3E $1C
    ld a, $1C                                     ; $4F9A: $3E $1C
    rra                                           ; $4F9C: $1F
    ld [bc], a                                    ; $4F9D: $02
    rrca                                          ; $4F9E: $0F
    nop                                           ; $4F9F: $00
    nop                                           ; $4FA0: $00
    nop                                           ; $4FA1: $00
    nop                                           ; $4FA2: $00
    nop                                           ; $4FA3: $00
    nop                                           ; $4FA4: $00
    nop                                           ; $4FA5: $00
    nop                                           ; $4FA6: $00
    nop                                           ; $4FA7: $00
    nop                                           ; $4FA8: $00
    nop                                           ; $4FA9: $00
    nop                                           ; $4FAA: $00
    nop                                           ; $4FAB: $00
    nop                                           ; $4FAC: $00
    nop                                           ; $4FAD: $00
    ld [bc], a                                    ; $4FAE: $02
    nop                                           ; $4FAF: $00
    ld [bc], a                                    ; $4FB0: $02
    nop                                           ; $4FB1: $00
    inc bc                                        ; $4FB2: $03
    nop                                           ; $4FB3: $00
    inc bc                                        ; $4FB4: $03
    nop                                           ; $4FB5: $00
    ld [bc], a                                    ; $4FB6: $02
    ld bc, $0102                                  ; $4FB7: $01 $02 $01
    ld bc, $0100                                  ; $4FBA: $01 $00 $01
    nop                                           ; $4FBD: $00
    ld bc, $1100                                  ; $4FBE: $01 $00 $11
    nop                                           ; $4FC1: $00
    add hl, de                                    ; $4FC2: $19
    nop                                           ; $4FC3: $00
    sbc h                                         ; $4FC4: $9C
    ld [$048E], sp                                ; $4FC5: $08 $8E $04
    ld c, e                                       ; $4FC8: $4B
    add [hl]                                      ; $4FC9: $86
    dec h                                         ; $4FCA: $25
    jp $E335                                      ; $4FCB: $C3 $35 $E3


    sbc d                                         ; $4FCE: $9A
    ld [hl], c                                    ; $4FCF: $71
    adc a                                         ; $4FD0: $8F
    ld a, c                                       ; $4FD1: $79
    ld b, e                                       ; $4FD2: $43
    ccf                                           ; $4FD3: $3F
    ld b, c                                       ; $4FD4: $41
    ccf                                           ; $4FD5: $3F
    jr nz, jr_010_4FF7                            ; $4FD6: $20 $1F

    ld [hl], $1F                                  ; $4FD8: $36 $1F
    dec de                                        ; $4FDA: $1B
    rrca                                          ; $4FDB: $0F
    dec c                                         ; $4FDC: $0D
    rlca                                          ; $4FDD: $07
    ld b, $03                                     ; $4FDE: $06 $03
    ld bc, $0200                                  ; $4FE0: $01 $00 $02
    ld bc, $0102                                  ; $4FE3: $01 $02 $01
    ld [bc], a                                    ; $4FE6: $02
    ld bc, $0103                                  ; $4FE7: $01 $03 $01
    rlca                                          ; $4FEA: $07
    ld [bc], a                                    ; $4FEB: $02
    rlca                                          ; $4FEC: $07
    nop                                           ; $4FED: $00
    dec c                                         ; $4FEE: $0D
    ld b, $0F                                     ; $4FEF: $06 $0F
    ld b, $8F                                     ; $4FF1: $06 $8F
    ld b, $CF                                     ; $4FF3: $06 $CF
    ld [bc], a                                    ; $4FF5: $02
    or e                                          ; $4FF6: $B3

jr_010_4FF7:
    ld c, h                                       ; $4FF7: $4C
    ld c, c                                       ; $4FF8: $49
    ld [hl], $E1                                  ; $4FF9: $36 $E1
    ld e, $F1                                     ; $4FFB: $1E $F1
    adc $F8                                       ; $4FFD: $CE $F8
    rst RST_30                                    ; $4FFF: $F7
    ld a, [hl]                                    ; $5000: $7E
    ld sp, hl                                     ; $5001: $F9
    cp a                                          ; $5002: $BF
    cp $FF                                        ; $5003: $FE $FF
    rst RST_38                                    ; $5005: $FF
    rst RST_38                                    ; $5006: $FF
    ld hl, sp+$7F                                 ; $5007: $F8 $7F
    db $FC                                        ; $5009: $FC
    rst RST_18                                    ; $500A: $DF
    cp $FF                                        ; $500B: $FE $FF
    db $FC                                        ; $500D: $FC
    rst RST_38                                    ; $500E: $FF
    di                                            ; $500F: $F3
    ld a, a                                       ; $5010: $7F
    ei                                            ; $5011: $FB
    sbc $3B                                       ; $5012: $DE $3B
    ccf                                           ; $5014: $3F
    ld b, $1F                                     ; $5015: $06 $1F
    inc c                                         ; $5017: $0C
    inc a                                         ; $5018: $3C

jr_010_5019:
    nop                                           ; $5019: $00

jr_010_501A:
    ld a, h                                       ; $501A: $7C
    jr c, jr_010_5019                             ; $501B: $38 $FC

    ld a, b                                       ; $501D: $78
    ld hl, sp+$00                                 ; $501E: $F8 $00
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    nop                                           ; $5022: $00
    nop                                           ; $5023: $00
    nop                                           ; $5024: $00
    nop                                           ; $5025: $00
    nop                                           ; $5026: $00
    nop                                           ; $5027: $00
    inc c                                         ; $5028: $0C
    nop                                           ; $5029: $00
    db $F4                                        ; $502A: $F4
    ld [$58EC], sp                                ; $502B: $08 $EC $58
    db $DB                                        ; $502E: $DB
    inc [hl]                                      ; $502F: $34
    ld a, [hl-]                                   ; $5030: $3A
    db $ED                                        ; $5031: $ED
    db $FD                                        ; $5032: $FD
    adc $DD                                       ; $5033: $CE $DD
    ld l, $FF                                     ; $5035: $2E $FF
    call c, Call_010_58FF                         ; $5037: $DC $FF $58
    rst RST_38                                    ; $503A: $FF
    add c                                         ; $503B: $81
    rst RST_38                                    ; $503C: $FF
    rst RST_38                                    ; $503D: $FF
    rst RST_38                                    ; $503E: $FF
    adc [hl]                                      ; $503F: $8E
    rst RST_28                                    ; $5040: $EF
    sub $FF                                       ; $5041: $D6 $FF
    rst RST_28                                    ; $5043: $EF
    rst RST_38                                    ; $5044: $FF
    adc c                                         ; $5045: $89

jr_010_5046:
    rst RST_38                                    ; $5046: $FF
    jr nc, jr_010_50C8                            ; $5047: $30 $7F

    adc [hl]                                      ; $5049: $8E
    rst RST_38                                    ; $504A: $FF
    nop                                           ; $504B: $00
    rst RST_38                                    ; $504C: $FF
    nop                                           ; $504D: $00
    sbc [hl]                                      ; $504E: $9E
    ld h, c                                       ; $504F: $61
    adc h                                         ; $5050: $8C
    ld [hl], e                                    ; $5051: $73
    inc d                                         ; $5052: $14
    db $E3                                        ; $5053: $E3
    ei                                            ; $5054: $FB
    nop                                           ; $5055: $00
    cp [hl]                                       ; $5056: $BE
    ret nz                                        ; $5057: $C0

jr_010_5058:
    jr nz, jr_010_501A                            ; $5058: $20 $C0

    ld [hl], b                                    ; $505A: $70
    add b                                         ; $505B: $80
    db $FC                                        ; $505C: $FC
    nop                                           ; $505D: $00
    rst RST_38                                    ; $505E: $FF
    nop                                           ; $505F: $00
    nop                                           ; $5060: $00
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    nop                                           ; $5063: $00
    ret nz                                        ; $5064: $C0

    nop                                           ; $5065: $00
    ld h, b                                       ; $5066: $60
    ret nz                                        ; $5067: $C0

    ldh a, [$FFE0]                                ; $5068: $F0 $E0
    ldh a, [rNR41]                                ; $506A: $F0 $20
    or b                                          ; $506C: $B0
    ret nz                                        ; $506D: $C0

    ldh [rLCDC], a                                ; $506E: $E0 $40
    ldh [rLCDC], a                                ; $5070: $E0 $40
    ret nz                                        ; $5072: $C0

    nop                                           ; $5073: $00
    and [hl]                                      ; $5074: $A6
    ld b, b                                       ; $5075: $40
    xor c                                         ; $5076: $A9
    ld b, [hl]                                    ; $5077: $46
    rst RST_08                                    ; $5078: $CF
    nop                                           ; $5079: $00
    db $FD                                        ; $507A: $FD
    ld [bc], a                                    ; $507B: $02
    cp $E0                                        ; $507C: $FE $E0
    db $FC                                        ; $507E: $FC
    nop                                           ; $507F: $00
    add b                                         ; $5080: $80
    nop                                           ; $5081: $00
    ld b, b                                       ; $5082: $40
    add b                                         ; $5083: $80
    jr c, jr_010_5046                             ; $5084: $38 $C0

    jr z, jr_010_5058                             ; $5086: $28 $D0

    add sp, $30                                   ; $5088: $E8 $30
    add sp, $70                                   ; $508A: $E8 $70
    add sp, $70                                   ; $508C: $E8 $70
    ld a, b                                       ; $508E: $78
    jr nc, @+$3A                                  ; $508F: $30 $38

    db $10                                        ; $5091: $10
    inc a                                         ; $5092: $3C
    db $10                                        ; $5093: $10
    ld a, $0C                                     ; $5094: $3E $0C
    ccf                                           ; $5096: $3F

jr_010_5097:
    ld e, $3F                                     ; $5097: $1E $3F
    nop                                           ; $5099: $00
    nop                                           ; $509A: $00
    nop                                           ; $509B: $00
    nop                                           ; $509C: $00
    nop                                           ; $509D: $00
    nop                                           ; $509E: $00
    nop                                           ; $509F: $00
    inc bc                                        ; $50A0: $03
    nop                                           ; $50A1: $00
    nop                                           ; $50A2: $00
    nop                                           ; $50A3: $00
    nop                                           ; $50A4: $00
    nop                                           ; $50A5: $00
    nop                                           ; $50A6: $00
    nop                                           ; $50A7: $00
    nop                                           ; $50A8: $00
    nop                                           ; $50A9: $00
    nop                                           ; $50AA: $00
    nop                                           ; $50AB: $00
    nop                                           ; $50AC: $00
    nop                                           ; $50AD: $00
    nop                                           ; $50AE: $00
    nop                                           ; $50AF: $00
    nop                                           ; $50B0: $00
    nop                                           ; $50B1: $00
    nop                                           ; $50B2: $00
    nop                                           ; $50B3: $00
    nop                                           ; $50B4: $00
    nop                                           ; $50B5: $00
    nop                                           ; $50B6: $00
    nop                                           ; $50B7: $00
    nop                                           ; $50B8: $00
    nop                                           ; $50B9: $00
    nop                                           ; $50BA: $00
    nop                                           ; $50BB: $00
    nop                                           ; $50BC: $00
    nop                                           ; $50BD: $00
    nop                                           ; $50BE: $00
    nop                                           ; $50BF: $00
    nop                                           ; $50C0: $00
    nop                                           ; $50C1: $00
    nop                                           ; $50C2: $00
    nop                                           ; $50C3: $00
    ld bc, $0C00                                  ; $50C4: $01 $00 $0C
    nop                                           ; $50C7: $00

jr_010_50C8:
    jr c, jr_010_50CA                             ; $50C8: $38 $00

jr_010_50CA:
    ret nc                                        ; $50CA: $D0

    jr nz, @+$23                                  ; $50CB: $20 $21

    ret nz                                        ; $50CD: $C0

    ld b, [hl]                                    ; $50CE: $46
    add b                                         ; $50CF: $80
    ld c, [hl]                                    ; $50D0: $4E
    add b                                         ; $50D1: $80
    db $F4                                        ; $50D2: $F4
    ld [$10E8], sp                                ; $50D3: $08 $E8 $10
    db $DB                                        ; $50D6: $DB
    jr nc, jr_010_5097                            ; $50D7: $30 $BE

    ld h, b                                       ; $50D9: $60
    ld a, [hl]                                    ; $50DA: $7E
    db $E4                                        ; $50DB: $E4
    ld a, h                                       ; $50DC: $7C
    ret z                                         ; $50DD: $C8

    db $FC                                        ; $50DE: $FC
    ret c                                         ; $50DF: $D8

    ld hl, sp-$10                                 ; $50E0: $F8 $F0
    ld hl, sp-$10                                 ; $50E2: $F8 $F0
    db $F4                                        ; $50E4: $F4
    add sp, -$0D                                  ; $50E5: $E8 $F3
    db $EC                                        ; $50E7: $EC
    pop af                                        ; $50E8: $F1
    xor $E1                                       ; $50E9: $EE $E1
    sbc $E5                                       ; $50EB: $DE $E5
    jp c, $D1EF                                   ; $50ED: $DA $EF $D1

    rst RST_28                                    ; $50F0: $EF
    ld d, e                                       ; $50F1: $53
    di                                            ; $50F2: $F3
    ld b, c                                       ; $50F3: $41
    pop af                                        ; $50F4: $F1
    nop                                           ; $50F5: $00
    ldh a, [rP1]                                  ; $50F6: $F0 $00
    ld hl, sp+$00                                 ; $50F8: $F8 $00
    cp b                                          ; $50FA: $B8
    nop                                           ; $50FB: $00
    sbc h                                         ; $50FC: $9C
    nop                                           ; $50FD: $00
    call z, $C200                                 ; $50FE: $CC $00 $C2
    nop                                           ; $5101: $00
    pop hl                                        ; $5102: $E1
    nop                                           ; $5103: $00
    ldh [rP1], a                                  ; $5104: $E0 $00
    ld [hl], b                                    ; $5106: $70
    nop                                           ; $5107: $00
    jr jr_010_510A                                ; $5108: $18 $00

jr_010_510A:
    ld bc, $0100                                  ; $510A: $01 $00 $01
    nop                                           ; $510D: $00
    ld bc, $0100                                  ; $510E: $01 $00 $01
    nop                                           ; $5111: $00
    ld bc, $0100                                  ; $5112: $01 $00 $01
    nop                                           ; $5115: $00
    ld bc, $0300                                  ; $5116: $01 $00 $03
    ld bc, $0103                                  ; $5119: $01 $03 $01
    rlca                                          ; $511C: $07
    inc bc                                        ; $511D: $03
    rlca                                          ; $511E: $07
    nop                                           ; $511F: $00
    ld bc, $0200                                  ; $5120: $01 $00 $02
    ld bc, $0304                                  ; $5123: $01 $04 $03
    ld [$1007], sp                                ; $5126: $08 $07 $10
    rrca                                          ; $5129: $0F
    ld sp, $611E                                  ; $512A: $31 $1E $61
    ld a, $65                                     ; $512D: $3E $65
    ld a, $CC                                     ; $512F: $3E $CC
    ld a, a                                       ; $5131: $7F
    call z, $9C7F                                 ; $5132: $CC $7F $9C
    ld a, a                                       ; $5135: $7F
    sbc l                                         ; $5136: $9D
    rst RST_38                                    ; $5137: $FF
    sbc l                                         ; $5138: $9D
    rst RST_38                                    ; $5139: $FF
    cp a                                          ; $513A: $BF
    rst RST_38                                    ; $513B: $FF
    cp a                                          ; $513C: $BF
    rst RST_38                                    ; $513D: $FF
    rst RST_38                                    ; $513E: $FF
    cp $FF                                        ; $513F: $FE $FF
    cp $FF                                        ; $5141: $FE $FF
    call c, $DCFF                                 ; $5143: $DC $FF $DC
    rst RST_38                                    ; $5146: $FF
    call z, $8CFF                                 ; $5147: $CC $FF $8C
    rst RST_38                                    ; $514A: $FF
    add [hl]                                      ; $514B: $86
    rst RST_38                                    ; $514C: $FF
    add [hl]                                      ; $514D: $86
    rst RST_38                                    ; $514E: $FF
    add d                                         ; $514F: $82
    rst RST_38                                    ; $5150: $FF
    add c                                         ; $5151: $81
    rst RST_30                                    ; $5152: $F7
    add b                                         ; $5153: $80
    di                                            ; $5154: $F3
    nop                                           ; $5155: $00
    pop af                                        ; $5156: $F1
    nop                                           ; $5157: $00
    ld hl, sp+$00                                 ; $5158: $F8 $00
    ld a, b                                       ; $515A: $78
    nop                                           ; $515B: $00
    ld a, b                                       ; $515C: $78
    nop                                           ; $515D: $00
    inc a                                         ; $515E: $3C
    nop                                           ; $515F: $00
    inc e                                         ; $5160: $1C
    nop                                           ; $5161: $00
    ld c, $00                                     ; $5162: $0E $00
    ld b, $00                                     ; $5164: $06 $00
    ld bc, $0000                                  ; $5166: $01 $00 $00
    nop                                           ; $5169: $00
    nop                                           ; $516A: $00
    nop                                           ; $516B: $00
    nop                                           ; $516C: $00
    nop                                           ; $516D: $00
    nop                                           ; $516E: $00
    nop                                           ; $516F: $00
    nop                                           ; $5170: $00
    nop                                           ; $5171: $00
    nop                                           ; $5172: $00
    nop                                           ; $5173: $00
    nop                                           ; $5174: $00
    nop                                           ; $5175: $00
    nop                                           ; $5176: $00
    nop                                           ; $5177: $00
    nop                                           ; $5178: $00
    nop                                           ; $5179: $00
    nop                                           ; $517A: $00
    nop                                           ; $517B: $00
    nop                                           ; $517C: $00
    nop                                           ; $517D: $00
    nop                                           ; $517E: $00
    nop                                           ; $517F: $00
    nop                                           ; $5180: $00
    nop                                           ; $5181: $00
    ld bc, $0100                                  ; $5182: $01 $00 $01
    nop                                           ; $5185: $00
    ld bc, $0100                                  ; $5186: $01 $00 $01
    nop                                           ; $5189: $00
    inc bc                                        ; $518A: $03
    ld bc, $0103                                  ; $518B: $01 $03 $01
    inc bc                                        ; $518E: $03
    ld bc, $0103                                  ; $518F: $01 $03 $01
    inc bc                                        ; $5192: $03
    ld bc, $0103                                  ; $5193: $01 $03 $01
    inc bc                                        ; $5196: $03
    ld bc, $0103                                  ; $5197: $01 $03 $01
    ld bc, $0100                                  ; $519A: $01 $00 $01
    nop                                           ; $519D: $00
    ld bc, $C300                                  ; $519E: $01 $00 $C3
    nop                                           ; $51A1: $00
    cp l                                          ; $51A2: $BD
    ld b, d                                       ; $51A3: $42
    cp e                                          ; $51A4: $BB
    ld d, [hl]                                    ; $51A5: $56
    or [hl]                                       ; $51A6: $B6
    ld c, l                                       ; $51A7: $4D
    adc $7B                                       ; $51A8: $CE $7B
    rst RST_38                                    ; $51AA: $FF
    or e                                          ; $51AB: $B3
    rst RST_30                                    ; $51AC: $F7
    dec bc                                        ; $51AD: $0B
    ld a, a                                       ; $51AE: $7F
    or a                                          ; $51AF: $B7
    ld a, a                                       ; $51B0: $7F
    sub [hl]                                      ; $51B1: $96
    rst RST_38                                    ; $51B2: $FF
    and b                                         ; $51B3: $A0
    rst RST_38                                    ; $51B4: $FF
    cp a                                          ; $51B5: $BF
    rst RST_38                                    ; $51B6: $FF
    inc hl                                        ; $51B7: $23
    ei                                            ; $51B8: $FB
    dec [hl]                                      ; $51B9: $35
    ld a, a                                       ; $51BA: $7F
    dec sp                                        ; $51BB: $3B
    ld a, a                                       ; $51BC: $7F
    ld [hl+], a                                   ; $51BD: $22
    ccf                                           ; $51BE: $3F
    inc c                                         ; $51BF: $0C
    ccf                                           ; $51C0: $3F
    inc bc                                        ; $51C1: $03

jr_010_51C2:
    ccf                                           ; $51C2: $3F
    nop                                           ; $51C3: $00
    ld b, a                                       ; $51C4: $47
    jr c, @+$48                                   ; $51C5: $38 $46

    add hl, sp                                    ; $51C7: $39
    ld b, [hl]                                    ; $51C8: $46
    add hl, sp                                    ; $51C9: $39
    ld sp, hl                                     ; $51CA: $F9
    nop                                           ; $51CB: $00
    add sp, -$10                                  ; $51CC: $E8 $F0
    ret z                                         ; $51CE: $C8

    ldh a, [$FFD0]                                ; $51CF: $F0 $D0
    ldh [$FFA0], a                                ; $51D1: $E0 $A0
    ret nz                                        ; $51D3: $C0

    ldh [$FFC0], a                                ; $51D4: $E0 $C0
    ret nz                                        ; $51D6: $C0

    add b                                         ; $51D7: $80
    ret nz                                        ; $51D8: $C0

    nop                                           ; $51D9: $00
    ret nz                                        ; $51DA: $C0

    add b                                         ; $51DB: $80
    ret nz                                        ; $51DC: $C0

    add b                                         ; $51DD: $80
    ret nz                                        ; $51DE: $C0

    add b                                         ; $51DF: $80
    ldh a, [rP1]                                  ; $51E0: $F0 $00
    sbc b                                         ; $51E2: $98

jr_010_51E3:
    ld [hl], b                                    ; $51E3: $70

jr_010_51E4:
    ld a, h                                       ; $51E4: $7C
    cp b                                          ; $51E5: $B8
    ld a, h                                       ; $51E6: $7C
    adc b                                         ; $51E7: $88
    db $EC                                        ; $51E8: $EC
    jr nc, jr_010_51E3                            ; $51E9: $30 $F8

    db $10                                        ; $51EB: $10
    ld hl, sp+$50                                 ; $51EC: $F8 $50
    ldh a, [$FFC0]                                ; $51EE: $F0 $C0
    jp hl                                         ; $51F0: $E9


    sub b                                         ; $51F1: $90
    ld [$F391], a                                 ; $51F2: $EA $91 $F3
    ret nz                                        ; $51F5: $C0

    rst RST_38                                    ; $51F6: $FF
    ld b, b                                       ; $51F7: $40
    rst RST_38                                    ; $51F8: $FF
    jr c, @+$01                                   ; $51F9: $38 $FF

    add b                                         ; $51FB: $80
    add b                                         ; $51FC: $80
    nop                                           ; $51FD: $00
    ld b, b                                       ; $51FE: $40
    add b                                         ; $51FF: $80
    jr nz, jr_010_51C2                            ; $5200: $20 $C0

    jr jr_010_51E4                                ; $5202: $18 $E0

    sub h                                         ; $5204: $94
    ld l, b                                       ; $5205: $68
    ld [hl], h                                    ; $5206: $74
    jr jr_010_5283                                ; $5207: $18 $7A

    inc a                                         ; $5209: $3C
    ld a, d                                       ; $520A: $7A
    inc a                                         ; $520B: $3C
    ld a, $0C                                     ; $520C: $3E $0C
    rrca                                          ; $520E: $0F
    ld b, $07                                     ; $520F: $06 $07
    ld [bc], a                                    ; $5211: $02
    inc bc                                        ; $5212: $03
    ld bc, $0103                                  ; $5213: $01 $03 $01
    ld bc, $0000                                  ; $5216: $01 $00 $00
    nop                                           ; $5219: $00
    nop                                           ; $521A: $00
    nop                                           ; $521B: $00
    nop                                           ; $521C: $00
    nop                                           ; $521D: $00
    nop                                           ; $521E: $00
    nop                                           ; $521F: $00
    nop                                           ; $5220: $00
    nop                                           ; $5221: $00
    nop                                           ; $5222: $00
    nop                                           ; $5223: $00
    nop                                           ; $5224: $00
    nop                                           ; $5225: $00
    nop                                           ; $5226: $00
    nop                                           ; $5227: $00
    nop                                           ; $5228: $00
    nop                                           ; $5229: $00
    nop                                           ; $522A: $00
    nop                                           ; $522B: $00
    nop                                           ; $522C: $00
    nop                                           ; $522D: $00
    nop                                           ; $522E: $00
    nop                                           ; $522F: $00
    nop                                           ; $5230: $00
    nop                                           ; $5231: $00
    nop                                           ; $5232: $00
    nop                                           ; $5233: $00
    nop                                           ; $5234: $00
    nop                                           ; $5235: $00
    add b                                         ; $5236: $80
    nop                                           ; $5237: $00
    ld b, b                                       ; $5238: $40
    add b                                         ; $5239: $80
    ret nz                                        ; $523A: $C0

    nop                                           ; $523B: $00
    ld b, b                                       ; $523C: $40
    add b                                         ; $523D: $80
    add b                                         ; $523E: $80
    nop                                           ; $523F: $00
    add b                                         ; $5240: $80
    nop                                           ; $5241: $00
    ret nz                                        ; $5242: $C0

    add b                                         ; $5243: $80
    ldh [$FFC0], a                                ; $5244: $E0 $C0
    ldh [$FFC0], a                                ; $5246: $E0 $C0
    ldh [rP1], a                                  ; $5248: $E0 $00
    nop                                           ; $524A: $00
    nop                                           ; $524B: $00
    nop                                           ; $524C: $00
    nop                                           ; $524D: $00
    nop                                           ; $524E: $00
    nop                                           ; $524F: $00
    nop                                           ; $5250: $00
    nop                                           ; $5251: $00
    nop                                           ; $5252: $00
    nop                                           ; $5253: $00
    nop                                           ; $5254: $00
    nop                                           ; $5255: $00
    nop                                           ; $5256: $00
    nop                                           ; $5257: $00
    nop                                           ; $5258: $00
    nop                                           ; $5259: $00
    nop                                           ; $525A: $00
    nop                                           ; $525B: $00
    nop                                           ; $525C: $00
    nop                                           ; $525D: $00
    nop                                           ; $525E: $00
    nop                                           ; $525F: $00
    ret nz                                        ; $5260: $C0

    nop                                           ; $5261: $00
    nop                                           ; $5262: $00
    nop                                           ; $5263: $00
    nop                                           ; $5264: $00
    nop                                           ; $5265: $00
    nop                                           ; $5266: $00
    nop                                           ; $5267: $00
    nop                                           ; $5268: $00
    nop                                           ; $5269: $00
    nop                                           ; $526A: $00
    nop                                           ; $526B: $00
    nop                                           ; $526C: $00
    nop                                           ; $526D: $00
    nop                                           ; $526E: $00
    nop                                           ; $526F: $00
    nop                                           ; $5270: $00
    nop                                           ; $5271: $00
    nop                                           ; $5272: $00
    nop                                           ; $5273: $00
    nop                                           ; $5274: $00
    nop                                           ; $5275: $00
    nop                                           ; $5276: $00
    nop                                           ; $5277: $00
    nop                                           ; $5278: $00
    nop                                           ; $5279: $00
    nop                                           ; $527A: $00
    nop                                           ; $527B: $00
    nop                                           ; $527C: $00
    nop                                           ; $527D: $00
    nop                                           ; $527E: $00
    nop                                           ; $527F: $00
    nop                                           ; $5280: $00
    nop                                           ; $5281: $00
    nop                                           ; $5282: $00

jr_010_5283:
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
    inc bc                                        ; $5296: $03
    nop                                           ; $5297: $00
    inc b                                         ; $5298: $04
    inc bc                                        ; $5299: $03
    rrca                                          ; $529A: $0F
    nop                                           ; $529B: $00
    dec e                                         ; $529C: $1D
    ld [bc], a                                    ; $529D: $02
    ccf                                           ; $529E: $3F
    nop                                           ; $529F: $00
    inc a                                         ; $52A0: $3C
    nop                                           ; $52A1: $00
    jr c, @+$12                                   ; $52A2: $38 $10

    jr c, @+$12                                   ; $52A4: $38 $10

    jr c, jr_010_52B8                             ; $52A6: $38 $10

    inc a                                         ; $52A8: $3C
    jr jr_010_52E7                                ; $52A9: $18 $3C

    jr @+$1E                                      ; $52AB: $18 $1C

    nop                                           ; $52AD: $00
    ld [de], a                                    ; $52AE: $12
    inc c                                         ; $52AF: $0C
    inc de                                        ; $52B0: $13
    inc c                                         ; $52B1: $0C
    add hl, bc                                    ; $52B2: $09
    ld b, $09                                     ; $52B3: $06 $09
    ld b, $05                                     ; $52B5: $06 $05
    ld [bc], a                                    ; $52B7: $02

jr_010_52B8:
    rlca                                          ; $52B8: $07
    ld bc, $0307                                  ; $52B9: $01 $07 $03
    inc bc                                        ; $52BC: $03
    ld bc, $0001                                  ; $52BD: $01 $01 $00
    ld bc, $0100                                  ; $52C0: $01 $00 $01
    nop                                           ; $52C3: $00
    ld bc, $0100                                  ; $52C4: $01 $00 $01
    nop                                           ; $52C7: $00
    ld bc, $0100                                  ; $52C8: $01 $00 $01
    nop                                           ; $52CB: $00
    ld bc, $0300                                  ; $52CC: $01 $00 $03
    ld bc, $0103                                  ; $52CF: $01 $03 $01
    rlca                                          ; $52D2: $07
    inc bc                                        ; $52D3: $03
    rlca                                          ; $52D4: $07
    nop                                           ; $52D5: $00
    nop                                           ; $52D6: $00
    nop                                           ; $52D7: $00
    nop                                           ; $52D8: $00
    nop                                           ; $52D9: $00
    nop                                           ; $52DA: $00
    nop                                           ; $52DB: $00
    nop                                           ; $52DC: $00
    nop                                           ; $52DD: $00
    nop                                           ; $52DE: $00
    nop                                           ; $52DF: $00
    nop                                           ; $52E0: $00
    nop                                           ; $52E1: $00
    nop                                           ; $52E2: $00
    nop                                           ; $52E3: $00
    nop                                           ; $52E4: $00
    nop                                           ; $52E5: $00
    nop                                           ; $52E6: $00

jr_010_52E7:
    nop                                           ; $52E7: $00
    nop                                           ; $52E8: $00
    nop                                           ; $52E9: $00
    ld de, $2B00                                  ; $52EA: $11 $00 $2B
    ld de, $116B                                  ; $52ED: $11 $6B $11
    cp e                                          ; $52F0: $BB
    ld b, b                                       ; $52F1: $40
    ld hl, sp+$00                                 ; $52F2: $F8 $00
    ld a, b                                       ; $52F4: $78
    nop                                           ; $52F5: $00
    ccf                                           ; $52F6: $3F
    ld [$0E1F], sp                                ; $52F7: $08 $1F $0E
    rrca                                          ; $52FA: $0F
    rlca                                          ; $52FB: $07
    rlca                                          ; $52FC: $07
    inc bc                                        ; $52FD: $03
    inc bc                                        ; $52FE: $03
    nop                                           ; $52FF: $00
    jr c, jr_010_5302                             ; $5300: $38 $00

jr_010_5302:
    cpl                                           ; $5302: $2F
    db $10                                        ; $5303: $10
    ld l, $15                                     ; $5304: $2E $15
    dec l                                         ; $5306: $2D
    inc de                                        ; $5307: $13
    di                                            ; $5308: $F3
    ld e, $BF                                     ; $5309: $1E $BF
    call z, $82FD                                 ; $530B: $CC $FD $82
    rst RST_38                                    ; $530E: $FF
    dec c                                         ; $530F: $0D
    cp a                                          ; $5310: $BF
    ld h, l                                       ; $5311: $65
    rst RST_38                                    ; $5312: $FF
    ld h, b                                       ; $5313: $60
    rst RST_38                                    ; $5314: $FF
    rrca                                          ; $5315: $0F
    rra                                           ; $5316: $1F
    add sp, $3E                                   ; $5317: $E8 $3E
    call Call_000_0EDF                            ; $5319: $CD $DF $0E
    sbc a                                         ; $531C: $9F
    ld [$010F], sp                                ; $531D: $08 $0F $01
    ret nz                                        ; $5320: $C0

    nop                                           ; $5321: $00
    ld b, b                                       ; $5322: $40
    add b                                         ; $5323: $80
    ret nz                                        ; $5324: $C0

    add b                                         ; $5325: $80
    and b                                         ; $5326: $A0
    ld b, b                                       ; $5327: $40
    xor a                                         ; $5328: $AF
    ret nz                                        ; $5329: $C0

    reti                                          ; $532A: $D9


    rst RST_28                                    ; $532B: $EF
    rst RST_18                                    ; $532C: $DF
    pop hl                                        ; $532D: $E1
    rst RST_38                                    ; $532E: $FF
    ret nz                                        ; $532F: $C0

    db $FC                                        ; $5330: $FC
    and a                                         ; $5331: $A7
    rst RST_38                                    ; $5332: $FF
    rlca                                          ; $5333: $07
    rst RST_38                                    ; $5334: $FF
    ldh a, [$FFFA]                                ; $5335: $F0 $FA
    pop bc                                        ; $5337: $C1
    db $DD                                        ; $5338: $DD
    jr nz, @+$01                                  ; $5339: $20 $FF

    add b                                         ; $533B: $80
    rst RST_28                                    ; $533C: $EF
    sub c                                         ; $533D: $91
    rst RST_38                                    ; $533E: $FF
    nop                                           ; $533F: $00
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    nop                                           ; $5342: $00
    nop                                           ; $5343: $00
    nop                                           ; $5344: $00
    nop                                           ; $5345: $00
    nop                                           ; $5346: $00
    nop                                           ; $5347: $00
    nop                                           ; $5348: $00
    nop                                           ; $5349: $00
    add b                                         ; $534A: $80
    nop                                           ; $534B: $00
    ret nz                                        ; $534C: $C0

    add b                                         ; $534D: $80
    ret nz                                        ; $534E: $C0

    add b                                         ; $534F: $80
    ret nz                                        ; $5350: $C0

    nop                                           ; $5351: $00
    add b                                         ; $5352: $80
    nop                                           ; $5353: $00
    ld b, b                                       ; $5354: $40
    add b                                         ; $5355: $80
    jr nz, @-$3E                                  ; $5356: $20 $C0

    ld h, b                                       ; $5358: $60
    add b                                         ; $5359: $80
    ldh a, [$FF60]                                ; $535A: $F0 $60
    ldh a, [$FFE0]                                ; $535C: $F0 $E0
    ldh a, [rP1]                                  ; $535E: $F0 $00
    scf                                           ; $5360: $37
    dec de                                        ; $5361: $1B
    ld [hl], a                                    ; $5362: $77
    inc a                                         ; $5363: $3C
    ld [hl], a                                    ; $5364: $77
    inc a                                         ; $5365: $3C
    ld [hl], a                                    ; $5366: $77
    inc a                                         ; $5367: $3C
    ccf                                           ; $5368: $3F
    jr jr_010_53A4                                ; $5369: $18 $39

    db $10                                        ; $536B: $10
    dec sp                                        ; $536C: $3B
    ld de, $013B                                  ; $536D: $11 $3B $01
    ld a, a                                       ; $5370: $7F
    add hl, sp                                    ; $5371: $39
    rst RST_38                                    ; $5372: $FF
    ld a, b                                       ; $5373: $78
    db $FC                                        ; $5374: $FC
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
    ret nz                                        ; $5380: $C0

    add b                                         ; $5381: $80
    ldh [rP1], a                                  ; $5382: $E0 $00
    ldh [rP1], a                                  ; $5384: $E0 $00
    sub b                                         ; $5386: $90
    ld h, b                                       ; $5387: $60
    ld [$88F0], sp                                ; $5388: $08 $F0 $88
    ld [hl], b                                    ; $538B: $70
    call nz, $FC38                                ; $538C: $C4 $38 $FC
    ld b, b                                       ; $538F: $40
    db $FC                                        ; $5390: $FC
    cp b                                          ; $5391: $B8
    cp b                                          ; $5392: $B8
    nop                                           ; $5393: $00
    nop                                           ; $5394: $00
    nop                                           ; $5395: $00
    nop                                           ; $5396: $00
    nop                                           ; $5397: $00
    nop                                           ; $5398: $00
    nop                                           ; $5399: $00
    nop                                           ; $539A: $00
    nop                                           ; $539B: $00
    nop                                           ; $539C: $00
    nop                                           ; $539D: $00
    nop                                           ; $539E: $00
    nop                                           ; $539F: $00
    nop                                           ; $53A0: $00
    nop                                           ; $53A1: $00
    nop                                           ; $53A2: $00
    nop                                           ; $53A3: $00

jr_010_53A4:
    nop                                           ; $53A4: $00
    nop                                           ; $53A5: $00
    nop                                           ; $53A6: $00
    nop                                           ; $53A7: $00
    nop                                           ; $53A8: $00
    nop                                           ; $53A9: $00
    nop                                           ; $53AA: $00
    nop                                           ; $53AB: $00
    nop                                           ; $53AC: $00
    nop                                           ; $53AD: $00
    nop                                           ; $53AE: $00
    nop                                           ; $53AF: $00
    nop                                           ; $53B0: $00
    nop                                           ; $53B1: $00
    nop                                           ; $53B2: $00
    nop                                           ; $53B3: $00
    nop                                           ; $53B4: $00
    nop                                           ; $53B5: $00
    ld a, a                                       ; $53B6: $7F
    nop                                           ; $53B7: $00
    ld a, a                                       ; $53B8: $7F
    ld bc, $007F                                  ; $53B9: $01 $7F $00
    inc l                                         ; $53BC: $2C
    db $10                                        ; $53BD: $10
    jr c, jr_010_53C0                             ; $53BE: $38 $00

jr_010_53C0:
    nop                                           ; $53C0: $00
    nop                                           ; $53C1: $00
    nop                                           ; $53C2: $00
    nop                                           ; $53C3: $00
    nop                                           ; $53C4: $00
    nop                                           ; $53C5: $00
    nop                                           ; $53C6: $00
    nop                                           ; $53C7: $00
    nop                                           ; $53C8: $00
    nop                                           ; $53C9: $00
    nop                                           ; $53CA: $00
    nop                                           ; $53CB: $00
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
    rst RST_30                                    ; $53D6: $F7
    nop                                           ; $53D7: $00
    ld hl, sp-$09                                 ; $53D8: $F8 $F7
    ld hl, sp+$37                                 ; $53DA: $F8 $37
    scf                                           ; $53DC: $37
    nop                                           ; $53DD: $00
    nop                                           ; $53DE: $00
    nop                                           ; $53DF: $00
    jr jr_010_53E2                                ; $53E0: $18 $00

jr_010_53E2:
    rla                                           ; $53E2: $17
    ld [$0A17], sp                                ; $53E3: $08 $17 $0A
    ld d, $09                                     ; $53E6: $16 $09
    add hl, de                                    ; $53E8: $19
    rrca                                          ; $53E9: $0F
    rra                                           ; $53EA: $1F
    ld b, $3E                                     ; $53EB: $06 $3E
    ld de, $06FF                                  ; $53ED: $11 $FF $06
    cp a                                          ; $53F0: $BF
    ld h, d                                       ; $53F1: $62
    rst RST_38                                    ; $53F2: $FF
    ld l, b                                       ; $53F3: $68
    rst RST_38                                    ; $53F4: $FF
    rrca                                          ; $53F5: $0F
    rra                                           ; $53F6: $1F
    ld [$0D1E], sp                                ; $53F7: $08 $1E $0D
    rra                                           ; $53FA: $1F
    ld c, $0F                                     ; $53FB: $0E $0F
    nop                                           ; $53FD: $00
    rrca                                          ; $53FE: $0F
    ld [bc], a                                    ; $53FF: $02
    ld h, b                                       ; $5400: $60
    nop                                           ; $5401: $00
    and b                                         ; $5402: $A0
    ld b, b                                       ; $5403: $40
    ld h, b                                       ; $5404: $60
    ret nz                                        ; $5405: $C0

    ret nc                                        ; $5406: $D0

    and b                                         ; $5407: $A0
    rst RST_18                                    ; $5408: $DF
    ld h, b                                       ; $5409: $60
    db $EC                                        ; $540A: $EC
    ld [hl], a                                    ; $540B: $77
    rst RST_28                                    ; $540C: $EF
    ld [hl], b                                    ; $540D: $70
    rst RST_38                                    ; $540E: $FF
    ldh [$FFFC], a                                ; $540F: $E0 $FC
    rst RST_00                                    ; $5411: $C7
    rst RST_38                                    ; $5412: $FF
    rla                                           ; $5413: $17
    rst RST_38                                    ; $5414: $FF
    ldh a, [$FFFE]                                ; $5415: $F0 $FE
    pop hl                                        ; $5417: $E1
    ei                                            ; $5418: $FB
    ld h, h                                       ; $5419: $64
    rst RST_38                                    ; $541A: $FF
    ldh a, [$FFFD]                                ; $541B: $F0 $FD
    sub d                                         ; $541D: $92
    ei                                            ; $541E: $FB
    nop                                           ; $541F: $00
    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    nop                                           ; $5424: $00
    nop                                           ; $5425: $00
    nop                                           ; $5426: $00
    nop                                           ; $5427: $00

jr_010_5428:
    add b                                         ; $5428: $80
    nop                                           ; $5429: $00
    ret nz                                        ; $542A: $C0

    add b                                         ; $542B: $80
    ldh [$FFC0], a                                ; $542C: $E0 $C0
    ldh [rLCDC], a                                ; $542E: $E0 $40
    ldh [rP1], a                                  ; $5430: $E0 $00
    add b                                         ; $5432: $80
    nop                                           ; $5433: $00
    ld b, b                                       ; $5434: $40
    add b                                         ; $5435: $80
    jr nz, @-$3E                                  ; $5436: $20 $C0

    or b                                          ; $5438: $B0
    ld b, b                                       ; $5439: $40
    ld hl, sp+$30                                 ; $543A: $F8 $30
    ld hl, sp+$30                                 ; $543C: $F8 $30
    ldh a, [rP1]                                  ; $543E: $F0 $00
    ld [hl], a                                    ; $5440: $77
    dec de                                        ; $5441: $1B
    ld [hl], a                                    ; $5442: $77
    inc a                                         ; $5443: $3C
    ld [hl], a                                    ; $5444: $77
    inc a                                         ; $5445: $3C
    ld [hl], a                                    ; $5446: $77
    inc a                                         ; $5447: $3C
    ld a, $19                                     ; $5448: $3E $19
    dec e                                         ; $544A: $1D
    ld [$081D], sp                                ; $544B: $08 $1D $08
    dec e                                         ; $544E: $1D
    nop                                           ; $544F: $00
    ccf                                           ; $5450: $3F
    inc e                                         ; $5451: $1C
    ld a, [hl]                                    ; $5452: $7E
    inc a                                         ; $5453: $3C
    ld a, [hl]                                    ; $5454: $7E
    nop                                           ; $5455: $00
    nop                                           ; $5456: $00
    nop                                           ; $5457: $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    nop                                           ; $545A: $00
    nop                                           ; $545B: $00
    nop                                           ; $545C: $00
    nop                                           ; $545D: $00
    nop                                           ; $545E: $00
    nop                                           ; $545F: $00
    add b                                         ; $5460: $80
    nop                                           ; $5461: $00
    ret nz                                        ; $5462: $C0

    nop                                           ; $5463: $00
    ret nz                                        ; $5464: $C0

    nop                                           ; $5465: $00
    jr nz, jr_010_5428                            ; $5466: $20 $C0

    db $10                                        ; $5468: $10
    ldh [rNR10], a                                ; $5469: $E0 $10
    ldh [$FF88], a                                ; $546B: $E0 $88
    ld [hl], b                                    ; $546D: $70
    db $FC                                        ; $546E: $FC
    ld [$78FC], sp                                ; $546F: $08 $FC $78
    ld hl, sp+$00                                 ; $5472: $F8 $00
    nop                                           ; $5474: $00
    nop                                           ; $5475: $00
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
    rst RST_38                                    ; $5480: $FF
    ld h, b                                       ; $5481: $60
    rst RST_38                                    ; $5482: $FF
    nop                                           ; $5483: $00
    ld [hl], b                                    ; $5484: $70
    nop                                           ; $5485: $00
    nop                                           ; $5486: $00
    nop                                           ; $5487: $00
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    nop                                           ; $548A: $00
    nop                                           ; $548B: $00
    nop                                           ; $548C: $00
    nop                                           ; $548D: $00
    nop                                           ; $548E: $00
    nop                                           ; $548F: $00
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00
    nop                                           ; $5493: $00
    nop                                           ; $5494: $00
    nop                                           ; $5495: $00
    nop                                           ; $5496: $00
    nop                                           ; $5497: $00
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    nop                                           ; $549A: $00
    nop                                           ; $549B: $00
    nop                                           ; $549C: $00
    nop                                           ; $549D: $00
    nop                                           ; $549E: $00
    nop                                           ; $549F: $00
    rst RST_38                                    ; $54A0: $FF
    ccf                                           ; $54A1: $3F
    ccf                                           ; $54A2: $3F
    rlca                                          ; $54A3: $07
    rlca                                          ; $54A4: $07
    nop                                           ; $54A5: $00
    nop                                           ; $54A6: $00
    nop                                           ; $54A7: $00
    nop                                           ; $54A8: $00
    nop                                           ; $54A9: $00
    nop                                           ; $54AA: $00
    nop                                           ; $54AB: $00
    nop                                           ; $54AC: $00
    nop                                           ; $54AD: $00
    nop                                           ; $54AE: $00
    nop                                           ; $54AF: $00
    nop                                           ; $54B0: $00
    nop                                           ; $54B1: $00
    nop                                           ; $54B2: $00
    nop                                           ; $54B3: $00
    nop                                           ; $54B4: $00
    nop                                           ; $54B5: $00
    nop                                           ; $54B6: $00
    nop                                           ; $54B7: $00
    nop                                           ; $54B8: $00
    nop                                           ; $54B9: $00
    nop                                           ; $54BA: $00
    nop                                           ; $54BB: $00
    nop                                           ; $54BC: $00
    nop                                           ; $54BD: $00
    nop                                           ; $54BE: $00
    nop                                           ; $54BF: $00
    jp $F1BC                                      ; $54C0: $C3 $BC $F1


    ld c, $0F                                     ; $54C3: $0E $0F
    nop                                           ; $54C5: $00
    ld [bc], a                                    ; $54C6: $02
    ld bc, $0102                                  ; $54C7: $01 $02 $01
    ld bc, $0300                                  ; $54CA: $01 $00 $03
    ld bc, $0003                                  ; $54CD: $01 $03 $00
    nop                                           ; $54D0: $00
    nop                                           ; $54D1: $00
    nop                                           ; $54D2: $00
    nop                                           ; $54D3: $00
    nop                                           ; $54D4: $00
    nop                                           ; $54D5: $00
    nop                                           ; $54D6: $00
    nop                                           ; $54D7: $00
    nop                                           ; $54D8: $00
    nop                                           ; $54D9: $00
    nop                                           ; $54DA: $00
    nop                                           ; $54DB: $00
    nop                                           ; $54DC: $00
    nop                                           ; $54DD: $00
    nop                                           ; $54DE: $00
    nop                                           ; $54DF: $00
    ret nz                                        ; $54E0: $C0

    nop                                           ; $54E1: $00
    rst RST_00                                    ; $54E2: $C7
    nop                                           ; $54E3: $00
    xor a                                         ; $54E4: $AF
    ld b, [hl]                                    ; $54E5: $46
    ld a, a                                       ; $54E6: $7F
    add [hl]                                      ; $54E7: $86
    rst RST_38                                    ; $54E8: $FF
    ld a, d                                       ; $54E9: $7A
    rst RST_38                                    ; $54EA: $FF
    ld [hl], c                                    ; $54EB: $71
    di                                            ; $54EC: $F3
    pop hl                                        ; $54ED: $E1
    db $E3                                        ; $54EE: $E3
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
    add b                                         ; $5500: $80
    nop                                           ; $5501: $00
    add b                                         ; $5502: $80
    nop                                           ; $5503: $00
    ret nz                                        ; $5504: $C0

    nop                                           ; $5505: $00
    ret nz                                        ; $5506: $C0

    nop                                           ; $5507: $00
    ret nz                                        ; $5508: $C0

    nop                                           ; $5509: $00
    ret nz                                        ; $550A: $C0

    nop                                           ; $550B: $00
    ret nz                                        ; $550C: $C0

    nop                                           ; $550D: $00
    nop                                           ; $550E: $00
    nop                                           ; $550F: $00
    nop                                           ; $5510: $00
    nop                                           ; $5511: $00
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
    rrca                                          ; $5520: $0F
    nop                                           ; $5521: $00
    ccf                                           ; $5522: $3F
    inc bc                                        ; $5523: $03
    rst RST_38                                    ; $5524: $FF
    nop                                           ; $5525: $00
    ld bc, $0000                                  ; $5526: $01 $00 $00
    nop                                           ; $5529: $00
    nop                                           ; $552A: $00
    nop                                           ; $552B: $00
    nop                                           ; $552C: $00
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
    ldh a, [rIF]                                  ; $5540: $F0 $0F
    nop                                           ; $5542: $00
    rst RST_38                                    ; $5543: $FF
    rst RST_38                                    ; $5544: $FF
    cp $FF                                        ; $5545: $FE $FF
    ld a, a                                       ; $5547: $7F
    rst RST_38                                    ; $5548: $FF
    nop                                           ; $5549: $00
    rrca                                          ; $554A: $0F
    ld bc, $007F                                  ; $554B: $01 $7F $00
    nop                                           ; $554E: $00
    nop                                           ; $554F: $00
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    nop                                           ; $5552: $00
    nop                                           ; $5553: $00
    nop                                           ; $5554: $00
    nop                                           ; $5555: $00
    nop                                           ; $5556: $00
    nop                                           ; $5557: $00
    nop                                           ; $5558: $00
    nop                                           ; $5559: $00
    nop                                           ; $555A: $00
    nop                                           ; $555B: $00
    nop                                           ; $555C: $00
    nop                                           ; $555D: $00
    nop                                           ; $555E: $00
    nop                                           ; $555F: $00
    di                                            ; $5560: $F3
    nop                                           ; $5561: $00
    db $EB                                        ; $5562: $EB
    db $10                                        ; $5563: $10
    rst RST_38                                    ; $5564: $FF
    nop                                           ; $5565: $00
    rst RST_38                                    ; $5566: $FF
    rst RST_38                                    ; $5567: $FF
    rst RST_38                                    ; $5568: $FF
    db $FC                                        ; $5569: $FC
    rst RST_38                                    ; $556A: $FF
    cp $FF                                        ; $556B: $FE $FF
    nop                                           ; $556D: $00
    nop                                           ; $556E: $00
    nop                                           ; $556F: $00
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    nop                                           ; $5575: $00
    nop                                           ; $5576: $00
    nop                                           ; $5577: $00
    nop                                           ; $5578: $00
    nop                                           ; $5579: $00
    nop                                           ; $557A: $00
    nop                                           ; $557B: $00
    nop                                           ; $557C: $00
    nop                                           ; $557D: $00
    nop                                           ; $557E: $00
    nop                                           ; $557F: $00
    ldh [rP1], a                                  ; $5580: $E0 $00
    ldh [rP1], a                                  ; $5582: $E0 $00
    rst RST_38                                    ; $5584: $FF
    nop                                           ; $5585: $00
    rst RST_38                                    ; $5586: $FF
    ret nz                                        ; $5587: $C0

    db $FC                                        ; $5588: $FC
    nop                                           ; $5589: $00
    ldh [rP1], a                                  ; $558A: $E0 $00
    ld hl, sp+$00                                 ; $558C: $F8 $00
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
    ret nz                                        ; $55A0: $C0

    nop                                           ; $55A1: $00
    nop                                           ; $55A2: $00
    nop                                           ; $55A3: $00
    nop                                           ; $55A4: $00
    nop                                           ; $55A5: $00
    nop                                           ; $55A6: $00
    nop                                           ; $55A7: $00
    nop                                           ; $55A8: $00
    nop                                           ; $55A9: $00
    nop                                           ; $55AA: $00
    nop                                           ; $55AB: $00
    nop                                           ; $55AC: $00
    nop                                           ; $55AD: $00

jr_010_55AE:
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
    rra                                           ; $55C0: $1F
    nop                                           ; $55C1: $00

jr_010_55C2:
    dec d                                         ; $55C2: $15
    ld a, [bc]                                    ; $55C3: $0A
    rrca                                          ; $55C4: $0F
    nop                                           ; $55C5: $00
    rra                                           ; $55C6: $1F
    rlca                                          ; $55C7: $07
    ccf                                           ; $55C8: $3F
    dec de                                        ; $55C9: $1B
    ld a, a                                       ; $55CA: $7F
    inc a                                         ; $55CB: $3C
    db $FC                                        ; $55CC: $FC
    ld a, b                                       ; $55CD: $78
    db $FC                                        ; $55CE: $FC
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
    inc hl                                        ; $55E0: $23
    inc e                                         ; $55E1: $1C
    ld [hl+], a                                   ; $55E2: $22
    dec e                                         ; $55E3: $1D
    rst RST_00                                    ; $55E4: $C7
    jr c, jr_010_55AE                             ; $55E5: $38 $C7

    cp b                                          ; $55E7: $B8
    ret z                                         ; $55E8: $C8

    or b                                          ; $55E9: $B0
    ld hl, sp-$40                                 ; $55EA: $F8 $C0
    ld hl, sp+$70                                 ; $55EC: $F8 $70
    ld [hl], b                                    ; $55EE: $70
    nop                                           ; $55EF: $00
    nop                                           ; $55F0: $00
    nop                                           ; $55F1: $00
    nop                                           ; $55F2: $00
    nop                                           ; $55F3: $00
    nop                                           ; $55F4: $00
    nop                                           ; $55F5: $00
    nop                                           ; $55F6: $00
    nop                                           ; $55F7: $00
    nop                                           ; $55F8: $00
    nop                                           ; $55F9: $00
    nop                                           ; $55FA: $00
    nop                                           ; $55FB: $00
    nop                                           ; $55FC: $00
    nop                                           ; $55FD: $00
    nop                                           ; $55FE: $00
    nop                                           ; $55FF: $00
    jr nc, jr_010_55C2                            ; $5600: $30 $C0

    ld [$8CF0], sp                                ; $5602: $08 $F0 $8C
    ld [hl], b                                    ; $5605: $70
    db $FC                                        ; $5606: $FC
    ld [$38FC], sp                                ; $5607: $08 $FC $38
    jr c, jr_010_560C                             ; $560A: $38 $00

jr_010_560C:
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
    nop                                           ; $561C: $00
    nop                                           ; $561D: $00
    nop                                           ; $561E: $00
    nop                                           ; $561F: $00
    ld bc, $0000                                  ; $5620: $01 $00 $00
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00
    nop                                           ; $5625: $00
    nop                                           ; $5626: $00
    nop                                           ; $5627: $00
    ld bc, $0000                                  ; $5628: $01 $00 $00
    nop                                           ; $562B: $00
    nop                                           ; $562C: $00
    nop                                           ; $562D: $00
    nop                                           ; $562E: $00
    nop                                           ; $562F: $00
    nop                                           ; $5630: $00
    nop                                           ; $5631: $00
    ld bc, $0200                                  ; $5632: $01 $00 $02
    ld bc, $0102                                  ; $5635: $01 $02 $01
    ld l, [hl]                                    ; $5638: $6E
    ld bc, $2B7D                                  ; $5639: $01 $7D $2B
    dec sp                                        ; $563C: $3B
    ld d, $1F                                     ; $563D: $16 $1F
    inc c                                         ; $563F: $0C
    dec e                                         ; $5640: $1D
    ld [bc], a                                    ; $5641: $02
    rrca                                          ; $5642: $0F
    dec b                                         ; $5643: $05
    rra                                           ; $5644: $1F
    ld bc, $001F                                  ; $5645: $01 $1F $00
    rrca                                          ; $5648: $0F
    rlca                                          ; $5649: $07
    rra                                           ; $564A: $1F
    ld [$053B], sp                                ; $564B: $08 $3B $05
    ccf                                           ; $564E: $3F
    dec de                                        ; $564F: $1B
    ccf                                           ; $5650: $3F
    inc e                                         ; $5651: $1C
    rra                                           ; $5652: $1F
    inc bc                                        ; $5653: $03
    rrca                                          ; $5654: $0F
    inc b                                         ; $5655: $04
    rlca                                          ; $5656: $07
    nop                                           ; $5657: $00
    rlca                                          ; $5658: $07
    nop                                           ; $5659: $00
    rlca                                          ; $565A: $07
    nop                                           ; $565B: $00
    inc bc                                        ; $565C: $03
    nop                                           ; $565D: $00
    ld bc, $F800                                  ; $565E: $01 $00 $F8
    nop                                           ; $5661: $00
    ld h, a                                       ; $5662: $67
    jr @+$1A                                      ; $5663: $18 $18

    rlca                                          ; $5665: $07
    inc b                                         ; $5666: $04
    inc bc                                        ; $5667: $03
    inc bc                                        ; $5668: $03
    ld bc, $0071                                  ; $5669: $01 $71 $00
    inc a                                         ; $566C: $3C
    db $10                                        ; $566D: $10
    dec de                                        ; $566E: $1B
    inc c                                         ; $566F: $0C
    inc c                                         ; $5670: $0C
    rlca                                          ; $5671: $07
    ld b, $03                                     ; $5672: $06 $03
    adc a                                         ; $5674: $8F
    rlca                                          ; $5675: $07
    cp a                                          ; $5676: $BF
    dec c                                         ; $5677: $0D
    rst RST_38                                    ; $5678: $FF
    dec sp                                        ; $5679: $3B
    rst RST_38                                    ; $567A: $FF
    ld d, [hl]                                    ; $567B: $56
    or $E8                                        ; $567C: $F6 $E8
    ldh a, [c]                                    ; $567E: $F2
    call z, $9AE7                                 ; $567F: $CC $E7 $9A
    rst RST_20                                    ; $5682: $E7

jr_010_5683:
    ld e, e                                       ; $5683: $5B
    cp a                                          ; $5684: $BF
    ld h, e                                       ; $5685: $63
    sbc a                                         ; $5686: $9F
    ld a, e                                       ; $5687: $7B
    ei                                            ; $5688: $FB
    jr nc, jr_010_5683                            ; $5689: $30 $F8

    ld b, b                                       ; $568B: $40
    ld hl, sp-$10                                 ; $568C: $F8 $F0
    ldh a, [$FFE0]                                ; $568E: $F0 $E0
    db $E3                                        ; $5690: $E3
    ret nz                                        ; $5691: $C0

    db $E3                                        ; $5692: $E3
    ld b, c                                       ; $5693: $41
    db $E3                                        ; $5694: $E3
    nop                                           ; $5695: $00
    rst RST_20                                    ; $5696: $E7
    inc bc                                        ; $5697: $03
    rst RST_28                                    ; $5698: $EF
    rlca                                          ; $5699: $07
    cp a                                          ; $569A: $BF
    ld c, [hl]                                    ; $569B: $4E
    rra                                           ; $569C: $1F
    jp hl                                         ; $569D: $E9


    rrca                                          ; $569E: $0F
    rst RST_30                                    ; $569F: $F7
    ret nz                                        ; $56A0: $C0

    nop                                           ; $56A1: $00
    jr nc, @-$3E                                  ; $56A2: $30 $C0

    inc e                                         ; $56A4: $1C
    ldh a, [$FF8E]                                ; $56A5: $F0 $8E
    ld hl, sp-$39                                 ; $56A7: $F8 $C7
    ld a, [hl]                                    ; $56A9: $7E
    ld h, e                                       ; $56AA: $63
    ld a, $F3                                     ; $56AB: $3E $F3
    ccf                                           ; $56AD: $3F
    ld a, c                                       ; $56AE: $79
    rst RST_38                                    ; $56AF: $FF
    cp l                                          ; $56B0: $BD
    rst RST_38                                    ; $56B1: $FF
    cp $FF                                        ; $56B2: $FE $FF
    rst RST_28                                    ; $56B4: $EF
    sbc l                                         ; $56B5: $9D
    rst RST_38                                    ; $56B6: $FF
    ld c, h                                       ; $56B7: $4C
    ld a, a                                       ; $56B8: $7F
    ld h, $7F                                     ; $56B9: $26 $7F
    ld [hl+], a                                   ; $56BB: $22
    ccf                                           ; $56BC: $3F
    ld de, $10BF                                  ; $56BD: $11 $BF $10
    sbc a                                         ; $56C0: $9F
    nop                                           ; $56C1: $00
    rst RST_18                                    ; $56C2: $DF
    add b                                         ; $56C3: $80
    rst RST_38                                    ; $56C4: $FF
    ret nz                                        ; $56C5: $C0

    rst RST_38                                    ; $56C6: $FF
    jr nc, @+$3F                                  ; $56C7: $30 $3D

    nop                                           ; $56C9: $00
    inc b                                         ; $56CA: $04
    nop                                           ; $56CB: $00
    db $FC                                        ; $56CC: $FC
    nop                                           ; $56CD: $00
    ld hl, sp-$10                                 ; $56CE: $F8 $F0
    db $F4                                        ; $56D0: $F4
    add b                                         ; $56D1: $80
    adc [hl]                                      ; $56D2: $8E
    inc b                                         ; $56D3: $04
    cp a                                          ; $56D4: $BF
    ld c, $FF                                     ; $56D5: $0E $FF
    scf                                           ; $56D7: $37
    rst RST_38                                    ; $56D8: $FF
    pop hl                                        ; $56D9: $E1
    pop hl                                        ; $56DA: $E1
    ret nz                                        ; $56DB: $C0

    ld b, b                                       ; $56DC: $40
    add b                                         ; $56DD: $80
    add b                                         ; $56DE: $80
    nop                                           ; $56DF: $00
    add b                                         ; $56E0: $80
    nop                                           ; $56E1: $00
    add b                                         ; $56E2: $80
    nop                                           ; $56E3: $00
    ret nz                                        ; $56E4: $C0

    add b                                         ; $56E5: $80
    ldh [$FFC0], a                                ; $56E6: $E0 $C0
    ldh [$FFC0], a                                ; $56E8: $E0 $C0

jr_010_56EA:
    ldh a, [$FFC0]                                ; $56EA: $F0 $C0
    ldh a, [$FFE0]                                ; $56EC: $F0 $E0
    ld hl, sp+$60                                 ; $56EE: $F8 $60
    ld hl, sp+$20                                 ; $56F0: $F8 $20
    ld hl, sp+$10                                 ; $56F2: $F8 $10
    db $FC                                        ; $56F4: $FC
    nop                                           ; $56F5: $00
    db $FC                                        ; $56F6: $FC
    nop                                           ; $56F7: $00
    db $FC                                        ; $56F8: $FC
    nop                                           ; $56F9: $00
    cp $00                                        ; $56FA: $FE $00
    sbc $00                                       ; $56FC: $DE $00
    adc $00                                       ; $56FE: $CE $00
    adc a                                         ; $5700: $8F
    ld [hl], a                                    ; $5701: $77
    ld l, [hl]                                    ; $5702: $6E
    rla                                           ; $5703: $17
    dec e                                         ; $5704: $1D
    ld b, $0E                                     ; $5705: $06 $0E
    inc b                                         ; $5707: $04
    inc c                                         ; $5708: $0C
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
    add $00                                       ; $5720: $C6 $00
    jp nz, Jump_010_4000                          ; $5722: $C2 $00 $40

    nop                                           ; $5725: $00
    ld b, b                                       ; $5726: $40
    nop                                           ; $5727: $00
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    nop                                           ; $572A: $00
    nop                                           ; $572B: $00
    add b                                         ; $572C: $80
    nop                                           ; $572D: $00
    ret nz                                        ; $572E: $C0

    add b                                         ; $572F: $80
    ret nz                                        ; $5730: $C0

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
    rlca                                          ; $5740: $07
    ld [bc], a                                    ; $5741: $02
    rlca                                          ; $5742: $07
    ld [bc], a                                    ; $5743: $02
    rst RST_38                                    ; $5744: $FF
    ld [bc], a                                    ; $5745: $02
    ccf                                           ; $5746: $3F
    ret nz                                        ; $5747: $C0

    rst RST_38                                    ; $5748: $FF
    nop                                           ; $5749: $00
    and a                                         ; $574A: $A7
    jr jr_010_56EA                                ; $574B: $18 $9D

    ld [bc], a                                    ; $574D: $02
    jp z, Jump_000_0C04                           ; $574E: $CA $04 $0C

    nop                                           ; $5751: $00
    nop                                           ; $5752: $00
    nop                                           ; $5753: $00
    add b                                         ; $5754: $80
    nop                                           ; $5755: $00
    add b                                         ; $5756: $80
    nop                                           ; $5757: $00
    ld b, b                                       ; $5758: $40
    nop                                           ; $5759: $00
    nop                                           ; $575A: $00
    nop                                           ; $575B: $00
    nop                                           ; $575C: $00
    nop                                           ; $575D: $00
    nop                                           ; $575E: $00
    nop                                           ; $575F: $00
    rst RST_28                                    ; $5760: $EF
    call nz, $C6EF                                ; $5761: $C4 $EF $C6
    rst RST_18                                    ; $5764: $DF
    adc [hl]                                      ; $5765: $8E
    cp $9C                                        ; $5766: $FE $9C
    db $FC                                        ; $5768: $FC
    jr nz, @-$06                                  ; $5769: $20 $F8

    ld [hl], b                                    ; $576B: $70
    cp $00                                        ; $576C: $FE $00
    rra                                           ; $576E: $1F
    ld b, $1F                                     ; $576F: $06 $1F
    ld bc, $001F                                  ; $5771: $01 $1F $00
    rlca                                          ; $5774: $07
    nop                                           ; $5775: $00
    ld bc, $0000                                  ; $5776: $01 $00 $00
    nop                                           ; $5779: $00
    nop                                           ; $577A: $00
    nop                                           ; $577B: $00
    nop                                           ; $577C: $00
    nop                                           ; $577D: $00
    nop                                           ; $577E: $00
    nop                                           ; $577F: $00
    ld a, h                                       ; $5780: $7C
    ld hl, sp+$7E                                 ; $5781: $F8 $7E
    db $FC                                        ; $5783: $FC
    ccf                                           ; $5784: $3F
    db $FC                                        ; $5785: $FC
    ccf                                           ; $5786: $3F
    or $1F                                        ; $5787: $F6 $1F
    ldh a, [c]                                    ; $5789: $F2
    ld e, a                                       ; $578A: $5F
    cp c                                          ; $578B: $B9
    ld l, a                                       ; $578C: $6F
    sbc b                                         ; $578D: $98
    halt                                          ; $578E: $76
    adc h                                         ; $578F: $8C
    ld a, [hl-]                                   ; $5790: $3A
    call nz, $C23D                                ; $5791: $C4 $3D $C2
    inc de                                        ; $5794: $13
    ldh [$FF91], a                                ; $5795: $E0 $91
    ld h, b                                       ; $5797: $60
    ld c, b                                       ; $5798: $48
    jr nc, jr_010_57CF                            ; $5799: $30 $34

    ld [$000E], sp                                ; $579B: $08 $0E $00
    inc bc                                        ; $579E: $03
    nop                                           ; $579F: $00
    inc bc                                        ; $57A0: $03
    nop                                           ; $57A1: $00
    rlca                                          ; $57A2: $07
    nop                                           ; $57A3: $00
    rrca                                          ; $57A4: $0F
    nop                                           ; $57A5: $00
    ld e, $00                                     ; $57A6: $1E $00
    ld e, $00                                     ; $57A8: $1E $00
    ld a, $00                                     ; $57AA: $3E $00
    inc a                                         ; $57AC: $3C
    nop                                           ; $57AD: $00
    inc a                                         ; $57AE: $3C
    nop                                           ; $57AF: $00
    ld a, l                                       ; $57B0: $7D
    jr nz, jr_010_5832                            ; $57B1: $20 $7F

    jr nz, jr_010_5834                            ; $57B3: $20 $7F

    jr nz, @+$01                                  ; $57B5: $20 $FF

    ld h, c                                       ; $57B7: $61
    rst RST_38                                    ; $57B8: $FF
    ld h, c                                       ; $57B9: $61
    rst RST_38                                    ; $57BA: $FF
    ld h, e                                       ; $57BB: $63
    rst RST_38                                    ; $57BC: $FF
    ld [hl], e                                    ; $57BD: $73
    rst RST_38                                    ; $57BE: $FF
    ld [hl], a                                    ; $57BF: $77
    rst RST_38                                    ; $57C0: $FF
    ld [hl], a                                    ; $57C1: $77
    rst RST_38                                    ; $57C2: $FF
    ld a, a                                       ; $57C3: $7F
    rst RST_38                                    ; $57C4: $FF
    ld a, a                                       ; $57C5: $7F
    ld l, a                                       ; $57C6: $6F
    ccf                                           ; $57C7: $3F
    ld l, a                                       ; $57C8: $6F
    ccf                                           ; $57C9: $3F
    ld h, a                                       ; $57CA: $67
    ccf                                           ; $57CB: $3F
    ld h, a                                       ; $57CC: $67
    ccf                                           ; $57CD: $3F
    daa                                           ; $57CE: $27

jr_010_57CF:
    rra                                           ; $57CF: $1F
    inc sp                                        ; $57D0: $33
    rra                                           ; $57D1: $1F
    inc sp                                        ; $57D2: $33
    rra                                           ; $57D3: $1F
    add hl, de                                    ; $57D4: $19
    rrca                                          ; $57D5: $0F
    jr jr_010_57E7                                ; $57D6: $18 $0F

    inc c                                         ; $57D8: $0C
    rlca                                          ; $57D9: $07
    inc b                                         ; $57DA: $04
    inc bc                                        ; $57DB: $03
    ld [bc], a                                    ; $57DC: $02
    ld bc, $0001                                  ; $57DD: $01 $01 $00
    jr c, jr_010_57E2                             ; $57E0: $38 $00

jr_010_57E2:
    ld a, b                                       ; $57E2: $78
    nop                                           ; $57E3: $00
    ldh a, [rP1]                                  ; $57E4: $F0 $00
    pop af                                        ; $57E6: $F1

jr_010_57E7:
    nop                                           ; $57E7: $00
    and $40                                       ; $57E8: $E6 $40
    xor $80                                       ; $57EA: $EE $80
    db $FC                                        ; $57EC: $FC
    add b                                         ; $57ED: $80
    db $FC                                        ; $57EE: $FC
    add b                                         ; $57EF: $80
    db $FC                                        ; $57F0: $FC
    nop                                           ; $57F1: $00
    db $FC                                        ; $57F2: $FC
    db $10                                        ; $57F3: $10
    ld hl, sp+$10                                 ; $57F4: $F8 $10
    ld hl, sp+$30                                 ; $57F6: $F8 $30
    ld hl, sp-$50                                 ; $57F8: $F8 $B0
    ld hl, sp-$50                                 ; $57FA: $F8 $B0
    db $FC                                        ; $57FC: $FC
    ld hl, sp-$04                                 ; $57FD: $F8 $FC
    ld hl, sp+$00                                 ; $57FF: $F8 $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    nop                                           ; $5805: $00
    nop                                           ; $5806: $00
    nop                                           ; $5807: $00
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    nop                                           ; $580A: $00
    nop                                           ; $580B: $00
    nop                                           ; $580C: $00
    nop                                           ; $580D: $00
    nop                                           ; $580E: $00
    nop                                           ; $580F: $00
    nop                                           ; $5810: $00
    nop                                           ; $5811: $00
    jr nz, jr_010_5814                            ; $5812: $20 $00

jr_010_5814:
    ret nz                                        ; $5814: $C0

    nop                                           ; $5815: $00
    ret nz                                        ; $5816: $C0

    nop                                           ; $5817: $00
    add b                                         ; $5818: $80
    nop                                           ; $5819: $00
    add b                                         ; $581A: $80
    nop                                           ; $581B: $00
    inc bc                                        ; $581C: $03
    nop                                           ; $581D: $00
    ld c, $00                                     ; $581E: $0E $00
    rra                                           ; $5820: $1F
    dec c                                         ; $5821: $0D
    ld d, $0D                                     ; $5822: $16 $0D
    dec d                                         ; $5824: $15
    dec bc                                        ; $5825: $0B
    dec d                                         ; $5826: $15
    dec bc                                        ; $5827: $0B
    dec e                                         ; $5828: $1D
    inc bc                                        ; $5829: $03
    dec l                                         ; $582A: $2D
    dec de                                        ; $582B: $1B
    ld e, a                                       ; $582C: $5F
    inc a                                         ; $582D: $3C
    ld a, a                                       ; $582E: $7F
    rrca                                          ; $582F: $0F
    sbc a                                         ; $5830: $9F
    ld [hl], b                                    ; $5831: $70

jr_010_5832:
    ld l, l                                       ; $5832: $6D
    dec de                                        ; $5833: $1B

jr_010_5834:
    ld [hl], a                                    ; $5834: $77
    dec l                                         ; $5835: $2D
    ld [hl], a                                    ; $5836: $77
    inc c                                         ; $5837: $0C
    ld c, $01                                     ; $5838: $0E $01
    ld [bc], a                                    ; $583A: $02
    ld bc, $0003                                  ; $583B: $01 $03 $00
    rlca                                          ; $583E: $07
    ld [bc], a                                    ; $583F: $02
    ldh [$FFC0], a                                ; $5840: $E0 $C0
    ret nz                                        ; $5842: $C0

    add b                                         ; $5843: $80
    db $FC                                        ; $5844: $FC
    add b                                         ; $5845: $80
    rst RST_38                                    ; $5846: $FF
    cp h                                          ; $5847: $BC
    rst RST_38                                    ; $5848: $FF
    cp a                                          ; $5849: $BF
    rst RST_38                                    ; $584A: $FF
    adc a                                         ; $584B: $8F
    rst RST_38                                    ; $584C: $FF
    halt                                          ; $584D: $76
    cp a                                          ; $584E: $BF
    ld [hl], l                                    ; $584F: $75
    cp a                                          ; $5850: $BF
    ld [hl], l                                    ; $5851: $75
    rst RST_30                                    ; $5852: $F7
    ld a, [bc]                                    ; $5853: $0A
    sbc a                                         ; $5854: $9F
    ld h, [hl]                                    ; $5855: $66
    sbc a                                         ; $5856: $9F
    ld h, [hl]                                    ; $5857: $66
    xor [hl]                                      ; $5858: $AE
    ld b, c                                       ; $5859: $41
    and d                                         ; $585A: $A2
    ld b, c                                       ; $585B: $41
    push hl                                       ; $585C: $E5
    ld [bc], a                                    ; $585D: $02
    push hl                                       ; $585E: $E5
    jp nz, $B048                                  ; $585F: $C2 $48 $B0

    ret z                                         ; $5862: $C8

    jr nc, jr_010_58D5                            ; $5863: $30 $70

    ret nz                                        ; $5865: $C0

    ld a, b                                       ; $5866: $78
    ldh a, [$FF78]                                ; $5867: $F0 $78
    ldh a, [$FF78]                                ; $5869: $F0 $78
    ldh a, [$FFF0]                                ; $586B: $F0 $F0
    ld h, b                                       ; $586D: $60
    ldh a, [$FF60]                                ; $586E: $F0 $60
    ldh a, [$FF60]                                ; $5870: $F0 $60
    ldh [rLCDC], a                                ; $5872: $E0 $40
    ldh [rLCDC], a                                ; $5874: $E0 $40
    ldh [$FF80], a                                ; $5876: $E0 $80
    ldh [rLCDC], a                                ; $5878: $E0 $40
    ldh [rP1], a                                  ; $587A: $E0 $00
    ret nz                                        ; $587C: $C0

    nop                                           ; $587D: $00
    nop                                           ; $587E: $00
    nop                                           ; $587F: $00
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
    nop                                           ; $5883: $00
    nop                                           ; $5884: $00
    nop                                           ; $5885: $00
    nop                                           ; $5886: $00
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    nop                                           ; $5889: $00
    nop                                           ; $588A: $00
    nop                                           ; $588B: $00
    nop                                           ; $588C: $00
    nop                                           ; $588D: $00
    ldh [rP1], a                                  ; $588E: $E0 $00
    ldh a, [rP1]                                  ; $5890: $F0 $00
    ld hl, sp+$00                                 ; $5892: $F8 $00
    ld hl, sp+$00                                 ; $5894: $F8 $00
    ld hl, sp+$00                                 ; $5896: $F8 $00
    db $E4                                        ; $5898: $E4
    sbc b                                         ; $5899: $98
    call nz, $4438                                ; $589A: $C4 $38 $44
    cp b                                          ; $589D: $B8
    ld b, h                                       ; $589E: $44
    cp b                                          ; $589F: $B8
    nop                                           ; $58A0: $00
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
    nop                                           ; $58B0: $00
    nop                                           ; $58B1: $00
    nop                                           ; $58B2: $00
    nop                                           ; $58B3: $00
    ld bc, $3300                                  ; $58B4: $01 $00 $33
    ld bc, $2173                                  ; $58B7: $01 $73 $21
    ld [hl], a                                    ; $58BA: $77
    ld [hl+], a                                   ; $58BB: $22
    rst RST_28                                    ; $58BC: $EF
    ld b, [hl]                                    ; $58BD: $46
    cp $4C                                        ; $58BE: $FE $4C
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

jr_010_58D5:
    nop                                           ; $58D5: $00
    nop                                           ; $58D6: $00
    nop                                           ; $58D7: $00
    nop                                           ; $58D8: $00
    nop                                           ; $58D9: $00
    add b                                         ; $58DA: $80
    nop                                           ; $58DB: $00
    add b                                         ; $58DC: $80
    nop                                           ; $58DD: $00
    add b                                         ; $58DE: $80
    nop                                           ; $58DF: $00
    rlca                                          ; $58E0: $07
    ld [bc], a                                    ; $58E1: $02
    rlca                                          ; $58E2: $07
    ld [bc], a                                    ; $58E3: $02
    rst RST_38                                    ; $58E4: $FF
    ld [bc], a                                    ; $58E5: $02
    ccf                                           ; $58E6: $3F
    ret nz                                        ; $58E7: $C0

    rst RST_38                                    ; $58E8: $FF
    nop                                           ; $58E9: $00
    daa                                           ; $58EA: $27
    jr @+$1F                                      ; $58EB: $18 $1D

    ld [bc], a                                    ; $58ED: $02
    ld a, [bc]                                    ; $58EE: $0A
    inc b                                         ; $58EF: $04
    inc c                                         ; $58F0: $0C
    nop                                           ; $58F1: $00
    nop                                           ; $58F2: $00
    nop                                           ; $58F3: $00
    nop                                           ; $58F4: $00
    nop                                           ; $58F5: $00

jr_010_58F6:
    nop                                           ; $58F6: $00
    nop                                           ; $58F7: $00
    nop                                           ; $58F8: $00
    nop                                           ; $58F9: $00
    nop                                           ; $58FA: $00
    nop                                           ; $58FB: $00
    nop                                           ; $58FC: $00
    nop                                           ; $58FD: $00
    nop                                           ; $58FE: $00

Call_010_58FF:
    nop                                           ; $58FF: $00
    rst RST_28                                    ; $5900: $EF
    call nz, $C6EF                                ; $5901: $C4 $EF $C6
    rst RST_18                                    ; $5904: $DF
    adc [hl]                                      ; $5905: $8E
    cp $9C                                        ; $5906: $FE $9C
    db $FC                                        ; $5908: $FC
    jr nz, @-$06                                  ; $5909: $20 $F8

    ld [hl], b                                    ; $590B: $70
    cp $00                                        ; $590C: $FE $00
    rra                                           ; $590E: $1F
    ld b, $1F                                     ; $590F: $06 $1F
    ld bc, $001F                                  ; $5911: $01 $1F $00
    rlca                                          ; $5914: $07
    nop                                           ; $5915: $00
    ld bc, $0000                                  ; $5916: $01 $00 $00
    nop                                           ; $5919: $00
    nop                                           ; $591A: $00
    nop                                           ; $591B: $00
    nop                                           ; $591C: $00
    nop                                           ; $591D: $00
    nop                                           ; $591E: $00
    nop                                           ; $591F: $00
    ld bc, $0100                                  ; $5920: $01 $00 $01
    nop                                           ; $5923: $00
    nop                                           ; $5924: $00
    nop                                           ; $5925: $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    nop                                           ; $5929: $00
    nop                                           ; $592A: $00
    nop                                           ; $592B: $00
    nop                                           ; $592C: $00
    nop                                           ; $592D: $00
    nop                                           ; $592E: $00
    nop                                           ; $592F: $00
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    nop                                           ; $5932: $00
    nop                                           ; $5933: $00
    nop                                           ; $5934: $00
    nop                                           ; $5935: $00
    nop                                           ; $5936: $00
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    nop                                           ; $593A: $00
    nop                                           ; $593B: $00
    nop                                           ; $593C: $00
    nop                                           ; $593D: $00
    nop                                           ; $593E: $00
    nop                                           ; $593F: $00
    ld [bc], a                                    ; $5940: $02
    nop                                           ; $5941: $00
    dec b                                         ; $5942: $05
    ld [bc], a                                    ; $5943: $02
    dec b                                         ; $5944: $05
    inc bc                                        ; $5945: $03
    rlca                                          ; $5946: $07
    inc bc                                        ; $5947: $03
    dec bc                                        ; $5948: $0B
    rlca                                          ; $5949: $07
    rrca                                          ; $594A: $0F
    rlca                                          ; $594B: $07
    rrca                                          ; $594C: $0F
    ld b, $1F                                     ; $594D: $06 $1F
    inc c                                         ; $594F: $0C
    rra                                           ; $5950: $1F
    nop                                           ; $5951: $00
    ccf                                           ; $5952: $3F
    jr jr_010_59D4                                ; $5953: $18 $7F

jr_010_5955:
    jr c, jr_010_59D6                             ; $5955: $38 $7F

jr_010_5957:
    jr nz, jr_010_5955                            ; $5957: $20 $FC

    ld b, b                                       ; $5959: $40
    ret c                                         ; $595A: $D8

    nop                                           ; $595B: $00
    stop                                          ; $595C: $10 $00
    nop                                           ; $595E: $00
    nop                                           ; $595F: $00
    ld bc, $0300                                  ; $5960: $01 $00 $03
    ld bc, $000F                                  ; $5963: $01 $0F $00
    rra                                           ; $5966: $1F
    nop                                           ; $5967: $00
    ccf                                           ; $5968: $3F
    nop                                           ; $5969: $00
    ld c, a                                       ; $596A: $4F
    jr nc, jr_010_59B4                            ; $596B: $30 $47

    jr c, jr_010_58F6                             ; $596D: $38 $87

    ld a, b                                       ; $596F: $78
    adc a                                         ; $5970: $8F
    ld [hl], b                                    ; $5971: $70
    call c, $F8A0                                 ; $5972: $DC $A0 $F8
    ret nz                                        ; $5975: $C0

    ldh a, [$FFC0]                                ; $5976: $F0 $C0
    ldh a, [$FF80]                                ; $5978: $F0 $80
    pop hl                                        ; $597A: $E1
    nop                                           ; $597B: $00
    add e                                         ; $597C: $83
    ld bc, $0003                                  ; $597D: $01 $03 $00
    ld [hl], b                                    ; $5980: $70
    nop                                           ; $5981: $00
    ld hl, sp+$60                                 ; $5982: $F8 $60
    db $FC                                        ; $5984: $FC
    ld l, b                                       ; $5985: $68
    rst RST_28                                    ; $5986: $EF
    ld d, h                                       ; $5987: $54
    rst RST_38                                    ; $5988: $FF
    and l                                         ; $5989: $A5
    rst RST_38                                    ; $598A: $FF
    or l                                          ; $598B: $B5
    rst RST_38                                    ; $598C: $FF
    ld [hl], c                                    ; $598D: $71
    rst RST_38                                    ; $598E: $FF
    ld hl, sp-$02                                 ; $598F: $F8 $FE
    ei                                            ; $5991: $FB
    rst RST_38                                    ; $5992: $FF
    dec sp                                        ; $5993: $3B
    ccf                                           ; $5994: $3F
    inc bc                                        ; $5995: $03
    rra                                           ; $5996: $1F
    ld [$1B3C], sp                                ; $5997: $08 $3C $1B
    ld a, h                                       ; $599A: $7C
    dec sp                                        ; $599B: $3B
    db $FC                                        ; $599C: $FC
    ld [hl], e                                    ; $599D: $73
    rst RST_38                                    ; $599E: $FF
    add h                                         ; $599F: $84
    nop                                           ; $59A0: $00
    nop                                           ; $59A1: $00
    nop                                           ; $59A2: $00
    nop                                           ; $59A3: $00
    jr nz, jr_010_59A6                            ; $59A4: $20 $00

jr_010_59A6:
    ld hl, sp+$20                                 ; $59A6: $F8 $20
    db $FC                                        ; $59A8: $FC

jr_010_59A9:
    jr z, jr_010_5957                             ; $59A9: $28 $AC

    ld d, b                                       ; $59AB: $50
    db $F4                                        ; $59AC: $F4
    jr jr_010_59A9                                ; $59AD: $18 $FA

    db $EC                                        ; $59AF: $EC
    db $FD                                        ; $59B0: $FD
    ld [hl], d                                    ; $59B1: $72
    ei                                            ; $59B2: $FB
    sub b                                         ; $59B3: $90

jr_010_59B4:
    ret nc                                        ; $59B4: $D0

    and b                                         ; $59B5: $A0
    ret nc                                        ; $59B6: $D0

    and b                                         ; $59B7: $A0
    ldh a, [$FF60]                                ; $59B8: $F0 $60
    ldh [rLCDC], a                                ; $59BA: $E0 $40
    ret nz                                        ; $59BC: $C0

    nop                                           ; $59BD: $00
    add b                                         ; $59BE: $80
    nop                                           ; $59BF: $00
    adc a                                         ; $59C0: $8F
    ld b, $0F                                     ; $59C1: $06 $0F
    ld b, $0E                                     ; $59C3: $06 $0E
    inc b                                         ; $59C5: $04
    ld c, $04                                     ; $59C6: $0E $04
    ld e, $00                                     ; $59C8: $1E $00
    ld e, $00                                     ; $59CA: $1E $00
    ld l, $10                                     ; $59CC: $2E $10
    ld a, [de]                                    ; $59CE: $1A
    inc b                                         ; $59CF: $04
    ld a, [bc]                                    ; $59D0: $0A
    inc b                                         ; $59D1: $04
    inc b                                         ; $59D2: $04
    nop                                           ; $59D3: $00

jr_010_59D4:
    nop                                           ; $59D4: $00
    nop                                           ; $59D5: $00

jr_010_59D6:
    nop                                           ; $59D6: $00
    nop                                           ; $59D7: $00
    nop                                           ; $59D8: $00
    nop                                           ; $59D9: $00
    nop                                           ; $59DA: $00
    nop                                           ; $59DB: $00
    nop                                           ; $59DC: $00
    nop                                           ; $59DD: $00
    nop                                           ; $59DE: $00
    nop                                           ; $59DF: $00
    nop                                           ; $59E0: $00
    nop                                           ; $59E1: $00
    ld bc, $0100                                  ; $59E2: $01 $00 $01
    nop                                           ; $59E5: $00
    ld bc, $0100                                  ; $59E6: $01 $00 $01
    nop                                           ; $59E9: $00
    nop                                           ; $59EA: $00
    nop                                           ; $59EB: $00
    nop                                           ; $59EC: $00
    nop                                           ; $59ED: $00
    nop                                           ; $59EE: $00
    nop                                           ; $59EF: $00
    ld h, b                                       ; $59F0: $60
    nop                                           ; $59F1: $00
    ld d, b                                       ; $59F2: $50
    jr nz, jr_010_5A1D                            ; $59F3: $20 $28

    db $10                                        ; $59F5: $10
    ld a, h                                       ; $59F6: $7C
    nop                                           ; $59F7: $00
    cp a                                          ; $59F8: $BF
    ld b, b                                       ; $59F9: $40
    cp a                                          ; $59FA: $BF
    ld b, a                                       ; $59FB: $47
    rst RST_00                                    ; $59FC: $C7
    inc bc                                        ; $59FD: $03
    inc bc                                        ; $59FE: $03
    nop                                           ; $59FF: $00
    nop                                           ; $5A00: $00
    nop                                           ; $5A01: $00
    nop                                           ; $5A02: $00
    nop                                           ; $5A03: $00
    nop                                           ; $5A04: $00
    nop                                           ; $5A05: $00
    nop                                           ; $5A06: $00
    nop                                           ; $5A07: $00
    nop                                           ; $5A08: $00
    nop                                           ; $5A09: $00
    nop                                           ; $5A0A: $00
    nop                                           ; $5A0B: $00
    nop                                           ; $5A0C: $00
    nop                                           ; $5A0D: $00
    inc c                                         ; $5A0E: $0C
    nop                                           ; $5A0F: $00
    inc [hl]                                      ; $5A10: $34
    ld [$18EC], sp                                ; $5A11: $08 $EC $18
    sbc $B0                                       ; $5A14: $DE $B0
    cp a                                          ; $5A16: $BF
    ld l, [hl]                                    ; $5A17: $6E
    rst RST_38                                    ; $5A18: $FF
    adc $DE                                       ; $5A19: $CE $DE
    dec l                                         ; $5A1B: $2D
    ld a, a                                       ; $5A1C: $7F

jr_010_5A1D:
    dec e                                         ; $5A1D: $1D
    rst RST_38                                    ; $5A1E: $FF
    ld [de], a                                    ; $5A1F: $12
    rst RST_38                                    ; $5A20: $FF
    add hl, bc                                    ; $5A21: $09
    dec sp                                        ; $5A22: $3B
    dec b                                         ; $5A23: $05
    ld a, a                                       ; $5A24: $7F
    dec de                                        ; $5A25: $1B
    cp a                                          ; $5A26: $BF
    ld e, h                                       ; $5A27: $5C
    sbc a                                         ; $5A28: $9F
    ld h, e                                       ; $5A29: $63
    cpl                                           ; $5A2A: $2F
    call nz, Call_000_00C5                        ; $5A2B: $C4 $C5 $00
    add c                                         ; $5A2E: $81
    nop                                           ; $5A2F: $00
    ld [bc], a                                    ; $5A30: $02
    ld bc, $0304                                  ; $5A31: $01 $04 $03

jr_010_5A34:
    inc b                                         ; $5A34: $04
    inc bc                                        ; $5A35: $03
    dec bc                                        ; $5A36: $0B
    inc b                                         ; $5A37: $04
    rrca                                          ; $5A38: $0F
    inc bc                                        ; $5A39: $03
    rra                                           ; $5A3A: $1F
    rrca                                          ; $5A3B: $0F
    rra                                           ; $5A3C: $1F
    ld c, $0E                                     ; $5A3D: $0E $0E
    nop                                           ; $5A3F: $00
    ldh a, [rP1]                                  ; $5A40: $F0 $00
    jr c, jr_010_5A34                             ; $5A42: $38 $F0

    rst RST_38                                    ; $5A44: $FF
    ld hl, sp-$08                                 ; $5A45: $F8 $F8
    rlca                                          ; $5A47: $07
    db $DB                                        ; $5A48: $DB
    ld [hl], h                                    ; $5A49: $74
    rst RST_38                                    ; $5A4A: $FF
    ld [hl], d                                    ; $5A4B: $72
    rst RST_38                                    ; $5A4C: $FF
    ld h, e                                       ; $5A4D: $63
    di                                            ; $5A4E: $F3
    add c                                         ; $5A4F: $81
    pop af                                        ; $5A50: $F1
    ldh [$FFF8], a                                ; $5A51: $E0 $F8
    ld b, b                                       ; $5A53: $40
    db $FC                                        ; $5A54: $FC
    nop                                           ; $5A55: $00

jr_010_5A56:
    cp $00                                        ; $5A56: $FE $00
    dec e                                         ; $5A58: $1D
    ldh [c], a                                    ; $5A59: $E2
    inc e                                         ; $5A5A: $1C
    db $E3                                        ; $5A5B: $E3
    ld a, $CD                                     ; $5A5C: $3E $CD
    rst RST_38                                    ; $5A5E: $FF
    inc c                                         ; $5A5F: $0C
    cp $EC                                        ; $5A60: $FE $EC
    rst RST_38                                    ; $5A62: $FF
    add $C7                                       ; $5A63: $C6 $C7
    add d                                         ; $5A65: $82

jr_010_5A66:
    add a                                         ; $5A66: $87
    ld [bc], a                                    ; $5A67: $02
    inc bc                                        ; $5A68: $03
    nop                                           ; $5A69: $00
    nop                                           ; $5A6A: $00
    nop                                           ; $5A6B: $00
    nop                                           ; $5A6C: $00
    nop                                           ; $5A6D: $00
    nop                                           ; $5A6E: $00
    nop                                           ; $5A6F: $00
    nop                                           ; $5A70: $00
    nop                                           ; $5A71: $00
    nop                                           ; $5A72: $00
    nop                                           ; $5A73: $00
    nop                                           ; $5A74: $00
    nop                                           ; $5A75: $00
    nop                                           ; $5A76: $00
    nop                                           ; $5A77: $00
    nop                                           ; $5A78: $00
    nop                                           ; $5A79: $00
    nop                                           ; $5A7A: $00
    nop                                           ; $5A7B: $00
    nop                                           ; $5A7C: $00
    nop                                           ; $5A7D: $00
    nop                                           ; $5A7E: $00
    nop                                           ; $5A7F: $00
    nop                                           ; $5A80: $00
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
    ret nz                                        ; $5A8C: $C0

    nop                                           ; $5A8D: $00
    ldh [$FFC0], a                                ; $5A8E: $E0 $C0
    ldh a, [$FF60]                                ; $5A90: $F0 $60
    ldh a, [$FF60]                                ; $5A92: $F0 $60
    ld a, b                                       ; $5A94: $78
    jr nc, jr_010_5A56                            ; $5A95: $30 $BF

    db $10                                        ; $5A97: $10
    sbc [hl]                                      ; $5A98: $9E
    ld bc, $80CF                                  ; $5A99: $01 $CF $80
    push bc                                       ; $5A9C: $C5
    ld [bc], a                                    ; $5A9D: $02
    inc bc                                        ; $5A9E: $03
    nop                                           ; $5A9F: $00
    add b                                         ; $5AA0: $80
    nop                                           ; $5AA1: $00
    ld b, b                                       ; $5AA2: $40
    add b                                         ; $5AA3: $80
    jr c, jr_010_5A66                             ; $5AA4: $38 $C0

    inc a                                         ; $5AA6: $3C
    ret c                                         ; $5AA7: $D8

    rst RST_38                                    ; $5AA8: $FF
    inc a                                         ; $5AA9: $3C
    rst RST_38                                    ; $5AAA: $FF
    ld a, a                                       ; $5AAB: $7F
    rst RST_38                                    ; $5AAC: $FF
    ld bc, $0001                                  ; $5AAD: $01 $01 $00
    nop                                           ; $5AB0: $00
    nop                                           ; $5AB1: $00
    nop                                           ; $5AB2: $00
    nop                                           ; $5AB3: $00
    nop                                           ; $5AB4: $00
    nop                                           ; $5AB5: $00
    nop                                           ; $5AB6: $00
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
    nop                                           ; $5AC2: $00
    nop                                           ; $5AC3: $00
    nop                                           ; $5AC4: $00
    nop                                           ; $5AC5: $00
    nop                                           ; $5AC6: $00
    nop                                           ; $5AC7: $00
    nop                                           ; $5AC8: $00
    nop                                           ; $5AC9: $00
    nop                                           ; $5ACA: $00
    nop                                           ; $5ACB: $00
    nop                                           ; $5ACC: $00
    nop                                           ; $5ACD: $00
    nop                                           ; $5ACE: $00
    nop                                           ; $5ACF: $00
    nop                                           ; $5AD0: $00
    nop                                           ; $5AD1: $00
    nop                                           ; $5AD2: $00
    nop                                           ; $5AD3: $00
    nop                                           ; $5AD4: $00
    nop                                           ; $5AD5: $00
    nop                                           ; $5AD6: $00
    nop                                           ; $5AD7: $00
    nop                                           ; $5AD8: $00
    nop                                           ; $5AD9: $00
    ret nz                                        ; $5ADA: $C0

    nop                                           ; $5ADB: $00
    ld b, b                                       ; $5ADC: $40
    add b                                         ; $5ADD: $80
    add b                                         ; $5ADE: $80
    nop                                           ; $5ADF: $00
    add b                                         ; $5AE0: $80
    nop                                           ; $5AE1: $00
    ldh a, [$FF80]                                ; $5AE2: $F0 $80
    ld hl, sp+$30                                 ; $5AE4: $F8 $30
    ld a, b                                       ; $5AE6: $78
    jr nc, @+$3E                                  ; $5AE7: $30 $3C

    jr jr_010_5B07                                ; $5AE9: $18 $1C

    ld [$081C], sp                                ; $5AEB: $08 $1C $08
    inc c                                         ; $5AEE: $0C
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
    inc bc                                        ; $5B00: $03
    nop                                           ; $5B01: $00
    inc b                                         ; $5B02: $04
    inc bc                                        ; $5B03: $03
    inc c                                         ; $5B04: $0C
    rlca                                          ; $5B05: $07
    dec bc                                        ; $5B06: $0B

jr_010_5B07:
    rlca                                          ; $5B07: $07
    ld a, [bc]                                    ; $5B08: $0A
    rlca                                          ; $5B09: $07
    inc b                                         ; $5B0A: $04
    inc bc                                        ; $5B0B: $03
    ld b, $01                                     ; $5B0C: $06 $01
    inc b                                         ; $5B0E: $04
    inc bc                                        ; $5B0F: $03
    ld a, h                                       ; $5B10: $7C
    inc bc                                        ; $5B11: $03
    add b                                         ; $5B12: $80
    ld a, a                                       ; $5B13: $7F
    add h                                         ; $5B14: $84
    ld a, a                                       ; $5B15: $7F
    add [hl]                                      ; $5B16: $86
    ld a, a                                       ; $5B17: $7F
    add [hl]                                      ; $5B18: $86
    ld a, a                                       ; $5B19: $7F
    ld b, c                                       ; $5B1A: $41
    ld a, $3E                                     ; $5B1B: $3E $3E
    nop                                           ; $5B1D: $00
    nop                                           ; $5B1E: $00
    nop                                           ; $5B1F: $00
    ld bc, $0200                                  ; $5B20: $01 $00 $02
    ld bc, $0102                                  ; $5B23: $01 $02 $01
    inc b                                         ; $5B26: $04
    inc bc                                        ; $5B27: $03
    inc b                                         ; $5B28: $04
    inc bc                                        ; $5B29: $03
    inc b                                         ; $5B2A: $04
    inc bc                                        ; $5B2B: $03
    dec c                                         ; $5B2C: $0D
    rlca                                          ; $5B2D: $07
    dec de                                        ; $5B2E: $1B
    rlca                                          ; $5B2F: $07
    ld [hl-], a                                   ; $5B30: $32
    rra                                           ; $5B31: $1F
    ld l, h                                       ; $5B32: $6C
    ccf                                           ; $5B33: $3F
    ld e, [hl]                                    ; $5B34: $5E
    ccf                                           ; $5B35: $3F
    ld b, b                                       ; $5B36: $40
    ccf                                           ; $5B37: $3F
    nop                                           ; $5B38: $00
    nop                                           ; $5B39: $00
    nop                                           ; $5B3A: $00
    nop                                           ; $5B3B: $00
    nop                                           ; $5B3C: $00
    nop                                           ; $5B3D: $00
    nop                                           ; $5B3E: $00
    nop                                           ; $5B3F: $00
    ld bc, $EE00                                  ; $5B40: $01 $00 $EE
    ld bc, $EF10                                  ; $5B43: $01 $10 $EF
    add hl, bc                                    ; $5B46: $09
    rst RST_38                                    ; $5B47: $FF
    ld [bc], a                                    ; $5B48: $02
    rst RST_38                                    ; $5B49: $FF
    ld h, $FF                                     ; $5B4A: $26 $FF
    dec e                                         ; $5B4C: $1D
    rst RST_38                                    ; $5B4D: $FF
    ld b, b                                       ; $5B4E: $40
    rst RST_38                                    ; $5B4F: $FF
    adc $FF                                       ; $5B50: $CE $FF
    dec b                                         ; $5B52: $05
    rst RST_38                                    ; $5B53: $FF
    db $10                                        ; $5B54: $10
    rst RST_38                                    ; $5B55: $FF
    rra                                           ; $5B56: $1F
    rst RST_38                                    ; $5B57: $FF
    ld c, [hl]                                    ; $5B58: $4E
    cp a                                          ; $5B59: $BF
    call z, $DE3F                                 ; $5B5A: $CC $3F $DE
    ccf                                           ; $5B5D: $3F
    ld d, d                                       ; $5B5E: $52
    ccf                                           ; $5B5F: $3F
    ld hl, $2E1F                                  ; $5B60: $21 $1F $2E
    rra                                           ; $5B63: $1F
    ld b, b                                       ; $5B64: $40
    ccf                                           ; $5B65: $3F
    ret nz                                        ; $5B66: $C0

    ccf                                           ; $5B67: $3F
    nop                                           ; $5B68: $00
    rst RST_38                                    ; $5B69: $FF
    inc bc                                        ; $5B6A: $03
    db $FC                                        ; $5B6B: $FC
    ld c, a                                       ; $5B6C: $4F
    ldh a, [$FFE9]                                ; $5B6D: $F0 $E9
    ldh a, [$FFE8]                                ; $5B6F: $F0 $E8
    ldh a, [$FF90]                                ; $5B71: $F0 $90
    ldh [$FF60], a                                ; $5B73: $E0 $60
    add b                                         ; $5B75: $80
    add b                                         ; $5B76: $80
    nop                                           ; $5B77: $00
    add b                                         ; $5B78: $80
    nop                                           ; $5B79: $00
    add b                                         ; $5B7A: $80
    nop                                           ; $5B7B: $00
    add b                                         ; $5B7C: $80
    nop                                           ; $5B7D: $00
    nop                                           ; $5B7E: $00
    nop                                           ; $5B7F: $00
    add b                                         ; $5B80: $80
    nop                                           ; $5B81: $00
    ld e, a                                       ; $5B82: $5F
    add b                                         ; $5B83: $80
    ld h, b                                       ; $5B84: $60
    sbc a                                         ; $5B85: $9F
    ld bc, $11FF                                  ; $5B86: $01 $FF $11
    rst RST_38                                    ; $5B89: $FF
    add b                                         ; $5B8A: $80
    rst RST_38                                    ; $5B8B: $FF

jr_010_5B8C:
    add $FF                                       ; $5B8C: $C6 $FF
    adc $FF                                       ; $5B8E: $CE $FF

jr_010_5B90:
    call z, $80FF                                 ; $5B90: $CC $FF $80
    rst RST_38                                    ; $5B93: $FF
    inc l                                         ; $5B94: $2C
    di                                            ; $5B95: $F3
    db $EC                                        ; $5B96: $EC
    di                                            ; $5B97: $F3
    inc l                                         ; $5B98: $2C
    di                                            ; $5B99: $F3
    ld l, h                                       ; $5B9A: $6C
    di                                            ; $5B9B: $F3
    ld [$2AF1], a                                 ; $5B9C: $EA $F1 $2A
    pop af                                        ; $5B9F: $F1
    sub c                                         ; $5BA0: $91
    ldh [$FF08], a                                ; $5BA1: $E0 $08
    ldh a, [$FF08]                                ; $5BA3: $F0 $08
    ldh a, [$FF08]                                ; $5BA5: $F0 $08
    ldh a, [$FF0C]                                ; $5BA7: $F0 $0C
    ldh a, [rTMA]                                 ; $5BA9: $F0 $06
    db $FC                                        ; $5BAB: $FC
    ld a, [hl-]                                   ; $5BAC: $3A
    db $FC                                        ; $5BAD: $FC
    dec de                                        ; $5BAE: $1B
    db $FC                                        ; $5BAF: $FC
    adc e                                         ; $5BB0: $8B
    ld a, [hl]                                    ; $5BB1: $7E
    ld c, l                                       ; $5BB2: $4D
    ccf                                           ; $5BB3: $3F
    ld [hl], $0F                                  ; $5BB4: $36 $0F
    ld [$0B07], sp                                ; $5BB6: $08 $07 $0B
    rlca                                          ; $5BB9: $07
    dec bc                                        ; $5BBA: $0B
    rlca                                          ; $5BBB: $07
    inc c                                         ; $5BBC: $0C
    inc bc                                        ; $5BBD: $03
    nop                                           ; $5BBE: $00
    nop                                           ; $5BBF: $00
    add b                                         ; $5BC0: $80
    nop                                           ; $5BC1: $00
    ret nz                                        ; $5BC2: $C0

    add b                                         ; $5BC3: $80
    ld h, b                                       ; $5BC4: $60
    ret nz                                        ; $5BC5: $C0

    and b                                         ; $5BC6: $A0
    ret nz                                        ; $5BC7: $C0

    and b                                         ; $5BC8: $A0
    ret nz                                        ; $5BC9: $C0

    jr nz, jr_010_5B8C                            ; $5BCA: $20 $C0

    ld b, b                                       ; $5BCC: $40
    add b                                         ; $5BCD: $80
    jr nz, jr_010_5B90                            ; $5BCE: $20 $C0

    db $10                                        ; $5BD0: $10
    ldh [rNR23], a                                ; $5BD1: $E0 $18
    ldh [$FF0C], a                                ; $5BD3: $E0 $0C
    ld hl, sp+$14                                 ; $5BD5: $F8 $14
    ld hl, sp+$14                                 ; $5BD7: $F8 $14
    ld hl, sp+$14                                 ; $5BD9: $F8 $14
    ld hl, sp+$08                                 ; $5BDB: $F8 $08
    ldh a, [$FFF0]                                ; $5BDD: $F0 $F0
    nop                                           ; $5BDF: $00
    add b                                         ; $5BE0: $80
    nop                                           ; $5BE1: $00
    ret nz                                        ; $5BE2: $C0

    nop                                           ; $5BE3: $00
    ld h, b                                       ; $5BE4: $60
    ret nz                                        ; $5BE5: $C0

    or b                                          ; $5BE6: $B0
    ldh [$FFD0], a                                ; $5BE7: $E0 $D0
    ldh [rNR10], a                                ; $5BE9: $E0 $10
    ldh [rP1], a                                  ; $5BEB: $E0 $00
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
    ld bc, $0300                                  ; $5C04: $01 $00 $03
    nop                                           ; $5C07: $00
    inc b                                         ; $5C08: $04
    inc bc                                        ; $5C09: $03
    rrca                                          ; $5C0A: $0F
    ld b, $0F                                     ; $5C0B: $06 $0F
    inc b                                         ; $5C0D: $04
    ld b, $01                                     ; $5C0E: $06 $01
    inc bc                                        ; $5C10: $03
    ld bc, $0003                                  ; $5C11: $01 $03 $00
    inc b                                         ; $5C14: $04
    inc bc                                        ; $5C15: $03
    db $FC                                        ; $5C16: $FC
    inc bc                                        ; $5C17: $03
    sbc a                                         ; $5C18: $9F
    ld l, b                                       ; $5C19: $68
    cp $0C                                        ; $5C1A: $FE $0C
    cp [hl]                                       ; $5C1C: $BE
    ld c, h                                       ; $5C1D: $4C
    ld a, h                                       ; $5C1E: $7C
    nop                                           ; $5C1F: $00
    ld bc, $0200                                  ; $5C20: $01 $00 $02
    ld bc, $0102                                  ; $5C23: $01 $02 $01
    dec b                                         ; $5C26: $05
    inc bc                                        ; $5C27: $03
    dec b                                         ; $5C28: $05
    inc bc                                        ; $5C29: $03
    rlca                                          ; $5C2A: $07
    inc bc                                        ; $5C2B: $03
    rrca                                          ; $5C2C: $0F
    ld b, $1E                                     ; $5C2D: $06 $1E
    inc b                                         ; $5C2F: $04
    ld a, $18                                     ; $5C30: $3E $18
    ld a, [hl]                                    ; $5C32: $7E
    inc a                                         ; $5C33: $3C
    ld a, [hl]                                    ; $5C34: $7E
    nop                                           ; $5C35: $00
    nop                                           ; $5C36: $00
    nop                                           ; $5C37: $00
    nop                                           ; $5C38: $00
    nop                                           ; $5C39: $00
    nop                                           ; $5C3A: $00
    nop                                           ; $5C3B: $00
    nop                                           ; $5C3C: $00
    nop                                           ; $5C3D: $00
    nop                                           ; $5C3E: $00
    nop                                           ; $5C3F: $00
    nop                                           ; $5C40: $00
    nop                                           ; $5C41: $00
    nop                                           ; $5C42: $00
    nop                                           ; $5C43: $00
    nop                                           ; $5C44: $00
    nop                                           ; $5C45: $00
    nop                                           ; $5C46: $00
    nop                                           ; $5C47: $00
    nop                                           ; $5C48: $00
    nop                                           ; $5C49: $00
    nop                                           ; $5C4A: $00
    nop                                           ; $5C4B: $00
    nop                                           ; $5C4C: $00
    nop                                           ; $5C4D: $00
    inc bc                                        ; $5C4E: $03
    nop                                           ; $5C4F: $00
    sbc l                                         ; $5C50: $9D
    ld [bc], a                                    ; $5C51: $02
    ld a, e                                       ; $5C52: $7B
    sub [hl]                                      ; $5C53: $96
    or [hl]                                       ; $5C54: $B6
    ld c, l                                       ; $5C55: $4D
    rst RST_08                                    ; $5C56: $CF
    ld a, l                                       ; $5C57: $7D
    rst RST_38                                    ; $5C58: $FF
    dec sp                                        ; $5C59: $3B
    rst RST_38                                    ; $5C5A: $FF
    add c                                         ; $5C5B: $81
    rst RST_38                                    ; $5C5C: $FF
    sbc l                                         ; $5C5D: $9D
    rst RST_38                                    ; $5C5E: $FF
    dec bc                                        ; $5C5F: $0B
    rst RST_38                                    ; $5C60: $FF
    jr nz, @+$01                                  ; $5C61: $20 $FF

    ccf                                           ; $5C63: $3F

jr_010_5C64:
    ld a, a                                       ; $5C64: $7F
    inc e                                         ; $5C65: $1C

jr_010_5C66:
    ld a, l                                       ; $5C66: $7D
    ld a, [de]                                    ; $5C67: $1A
    ld a, a                                       ; $5C68: $7F
    dec a                                         ; $5C69: $3D
    ld a, a                                       ; $5C6A: $7F
    inc h                                         ; $5C6B: $24
    ccf                                           ; $5C6C: $3F
    inc bc                                        ; $5C6D: $03
    ccf                                           ; $5C6E: $3F
    inc e                                         ; $5C6F: $1C
    ccf                                           ; $5C70: $3F
    nop                                           ; $5C71: $00
    ld b, [hl]                                    ; $5C72: $46
    add hl, sp                                    ; $5C73: $39
    add [hl]                                      ; $5C74: $86
    ld a, c                                       ; $5C75: $79
    sbc c                                         ; $5C76: $99
    ld h, b                                       ; $5C77: $60
    pop hl                                        ; $5C78: $E1
    add b                                         ; $5C79: $80
    pop hl                                        ; $5C7A: $E1
    ret nz                                        ; $5C7B: $C0

    ldh [$FFC0], a                                ; $5C7C: $E0 $C0
    ret nz                                        ; $5C7E: $C0

    nop                                           ; $5C7F: $00
    ld e, $00                                     ; $5C80: $1E $00
    and e                                         ; $5C82: $A3
    ld e, $7F                                     ; $5C83: $1E $7F
    and e                                         ; $5C85: $A3
    ld a, a                                       ; $5C86: $7F
    add c                                         ; $5C87: $81
    xor a                                         ; $5C88: $AF
    call c, $DCBE                                 ; $5C89: $DC $BE $DC
    db $FD                                        ; $5C8C: $FD
    sbc d                                         ; $5C8D: $9A
    ld hl, sp+$07                                 ; $5C8E: $F8 $07
    db $E4                                        ; $5C90: $E4
    ld b, e                                       ; $5C91: $43
    rst RST_20                                    ; $5C92: $E7
    ret nz                                        ; $5C93: $C0

    db $E4                                        ; $5C94: $E4
    ld b, e                                       ; $5C95: $43
    rst RST_20                                    ; $5C96: $E7
    ret nz                                        ; $5C97: $C0

    ldh [c], a                                    ; $5C98: $E2
    pop bc                                        ; $5C99: $C1
    db $E3                                        ; $5C9A: $E3
    ld b, b                                       ; $5C9B: $40
    ret nz                                        ; $5C9C: $C0

    nop                                           ; $5C9D: $00
    ret nz                                        ; $5C9E: $C0

    nop                                           ; $5C9F: $00
    jr nz, @-$3E                                  ; $5CA0: $20 $C0

    jr nz, jr_010_5C64                            ; $5CA2: $20 $C0

    jr nz, jr_010_5C66                            ; $5CA4: $20 $C0

    ldh a, [rP1]                                  ; $5CA6: $F0 $00
    ld a, b                                       ; $5CA8: $78
    ldh a, [$FF38]                                ; $5CA9: $F0 $38
    ldh a, [$FF98]                                ; $5CAB: $F0 $98
    ld [hl], b                                    ; $5CAD: $70
    ld a, h                                       ; $5CAE: $7C
    jr jr_010_5CCF                                ; $5CAF: $18 $1E

    inc c                                         ; $5CB1: $0C
    rrca                                          ; $5CB2: $0F
    nop                                           ; $5CB3: $00
    rrca                                          ; $5CB4: $0F
    rlca                                          ; $5CB5: $07
    rrca                                          ; $5CB6: $0F
    rlca                                          ; $5CB7: $07
    rlca                                          ; $5CB8: $07
    nop                                           ; $5CB9: $00
    nop                                           ; $5CBA: $00
    nop                                           ; $5CBB: $00
    nop                                           ; $5CBC: $00
    nop                                           ; $5CBD: $00
    nop                                           ; $5CBE: $00
    nop                                           ; $5CBF: $00
    nop                                           ; $5CC0: $00
    nop                                           ; $5CC1: $00
    nop                                           ; $5CC2: $00
    nop                                           ; $5CC3: $00
    nop                                           ; $5CC4: $00
    nop                                           ; $5CC5: $00
    nop                                           ; $5CC6: $00
    nop                                           ; $5CC7: $00
    add b                                         ; $5CC8: $80
    nop                                           ; $5CC9: $00
    add b                                         ; $5CCA: $80
    nop                                           ; $5CCB: $00
    add b                                         ; $5CCC: $80
    nop                                           ; $5CCD: $00
    nop                                           ; $5CCE: $00

jr_010_5CCF:
    nop                                           ; $5CCF: $00
    nop                                           ; $5CD0: $00
    nop                                           ; $5CD1: $00
    add b                                         ; $5CD2: $80
    nop                                           ; $5CD3: $00
    ld b, b                                       ; $5CD4: $40
    add b                                         ; $5CD5: $80
    ldh [rP1], a                                  ; $5CD6: $E0 $00
    ldh a, [rNR41]                                ; $5CD8: $F0 $20
    ldh a, [rNR41]                                ; $5CDA: $F0 $20
    ld [hl], b                                    ; $5CDC: $70
    and b                                         ; $5CDD: $A0
    ldh [rP1], a                                  ; $5CDE: $E0 $00
    add b                                         ; $5CE0: $80
    nop                                           ; $5CE1: $00
    ret nz                                        ; $5CE2: $C0

    add b                                         ; $5CE3: $80
    ret nz                                        ; $5CE4: $C0

    nop                                           ; $5CE5: $00
    nop                                           ; $5CE6: $00
    nop                                           ; $5CE7: $00
    nop                                           ; $5CE8: $00
    nop                                           ; $5CE9: $00
    nop                                           ; $5CEA: $00
    nop                                           ; $5CEB: $00
    nop                                           ; $5CEC: $00
    nop                                           ; $5CED: $00
    nop                                           ; $5CEE: $00
    nop                                           ; $5CEF: $00
    nop                                           ; $5CF0: $00
    nop                                           ; $5CF1: $00
    nop                                           ; $5CF2: $00
    nop                                           ; $5CF3: $00
    nop                                           ; $5CF4: $00
    nop                                           ; $5CF5: $00
    nop                                           ; $5CF6: $00
    nop                                           ; $5CF7: $00
    nop                                           ; $5CF8: $00
    nop                                           ; $5CF9: $00
    nop                                           ; $5CFA: $00
    nop                                           ; $5CFB: $00
    nop                                           ; $5CFC: $00
    nop                                           ; $5CFD: $00
    nop                                           ; $5CFE: $00
    nop                                           ; $5CFF: $00
    nop                                           ; $5D00: $00
    nop                                           ; $5D01: $00
    nop                                           ; $5D02: $00
    nop                                           ; $5D03: $00
    nop                                           ; $5D04: $00
    nop                                           ; $5D05: $00
    nop                                           ; $5D06: $00
    nop                                           ; $5D07: $00
    nop                                           ; $5D08: $00
    nop                                           ; $5D09: $00
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
    inc c                                         ; $5D16: $0C
    nop                                           ; $5D17: $00
    ld a, [bc]                                    ; $5D18: $0A
    inc b                                         ; $5D19: $04
    ld a, a                                       ; $5D1A: $7F
    nop                                           ; $5D1B: $00
    adc a                                         ; $5D1C: $8F
    ld [hl], b                                    ; $5D1D: $70
    rst RST_38                                    ; $5D1E: $FF
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
    ld bc, $0300                                  ; $5D2C: $01 $00 $03
    ld bc, $0103                                  ; $5D2F: $01 $03 $01
    ld bc, $C300                                  ; $5D32: $01 $00 $C3
    nop                                           ; $5D35: $00
    db $F4                                        ; $5D36: $F4
    jp Jump_010_77F8                              ; $5D37: $C3 $F8 $77


    ld a, c                                       ; $5D3A: $79
    ld [hl], $3E                                  ; $5D3B: $36 $3E
    jr jr_010_5D57                                ; $5D3D: $18 $18

    nop                                           ; $5D3F: $00
    nop                                           ; $5D40: $00
    nop                                           ; $5D41: $00
    jr nc, jr_010_5D44                            ; $5D42: $30 $00

jr_010_5D44:
    cpl                                           ; $5D44: $2F
    db $10                                        ; $5D45: $10
    ld l, $15                                     ; $5D46: $2E $15
    dec l                                         ; $5D48: $2D
    inc de                                        ; $5D49: $13
    di                                            ; $5D4A: $F3
    ld e, $3F                                     ; $5D4B: $1E $3F
    call z, $E2FD                                 ; $5D4D: $CC $FD $E2
    rst RST_38                                    ; $5D50: $FF
    dec c                                         ; $5D51: $0D
    ld a, a                                       ; $5D52: $7F
    push bc                                       ; $5D53: $C5
    rst RST_38                                    ; $5D54: $FF
    ret nc                                        ; $5D55: $D0

    rst RST_38                                    ; $5D56: $FF

jr_010_5D57:
    rra                                           ; $5D57: $1F
    sbc a                                         ; $5D58: $9F
    inc c                                         ; $5D59: $0C
    dec e                                         ; $5D5A: $1D
    ld a, [bc]                                    ; $5D5B: $0A
    ccf                                           ; $5D5C: $3F
    dec e                                         ; $5D5D: $1D
    ccf                                           ; $5D5E: $3F
    ld b, $00                                     ; $5D5F: $06 $00
    nop                                           ; $5D61: $00
    ret nz                                        ; $5D62: $C0

    nop                                           ; $5D63: $00
    ld b, b                                       ; $5D64: $40
    add b                                         ; $5D65: $80
    ret nz                                        ; $5D66: $C0

    add b                                         ; $5D67: $80
    cp a                                          ; $5D68: $BF
    ld b, b                                       ; $5D69: $40
    cp c                                          ; $5D6A: $B9
    rst RST_18                                    ; $5D6B: $DF
    rst RST_18                                    ; $5D6C: $DF
    pop hl                                        ; $5D6D: $E1
    rst RST_18                                    ; $5D6E: $DF
    ldh [$FFF9], a                                ; $5D6F: $E0 $F9
    adc $FF                                       ; $5D71: $CE $FF
    adc [hl]                                      ; $5D73: $8E
    cp $21                                        ; $5D74: $FE $21
    db $FC                                        ; $5D76: $FC
    db $E3                                        ; $5D77: $E3
    rst RST_30                                    ; $5D78: $F7
    ld c, b                                       ; $5D79: $48
    rst RST_38                                    ; $5D7A: $FF
    ldh [$FFFB], a                                ; $5D7B: $E0 $FB
    db $E4                                        ; $5D7D: $E4
    rst RST_20                                    ; $5D7E: $E7
    ld b, b                                       ; $5D7F: $40
    nop                                           ; $5D80: $00
    nop                                           ; $5D81: $00
    nop                                           ; $5D82: $00
    nop                                           ; $5D83: $00
    nop                                           ; $5D84: $00
    nop                                           ; $5D85: $00
    nop                                           ; $5D86: $00
    nop                                           ; $5D87: $00
    nop                                           ; $5D88: $00
    nop                                           ; $5D89: $00
    add b                                         ; $5D8A: $80
    nop                                           ; $5D8B: $00
    ret nz                                        ; $5D8C: $C0

    add b                                         ; $5D8D: $80
    ret nz                                        ; $5D8E: $C0

    add b                                         ; $5D8F: $80
    ret nz                                        ; $5D90: $C0

    nop                                           ; $5D91: $00
    nop                                           ; $5D92: $00
    nop                                           ; $5D93: $00
    add b                                         ; $5D94: $80
    nop                                           ; $5D95: $00
    ld b, b                                       ; $5D96: $40
    add b                                         ; $5D97: $80
    ld h, b                                       ; $5D98: $60
    add b                                         ; $5D99: $80
    ldh a, [$FF60]                                ; $5D9A: $F0 $60
    ldh a, [$FF60]                                ; $5D9C: $F0 $60
    ldh [rP1], a                                  ; $5D9E: $E0 $00
    nop                                           ; $5DA0: $00
    nop                                           ; $5DA1: $00
    nop                                           ; $5DA2: $00
    nop                                           ; $5DA3: $00
    nop                                           ; $5DA4: $00
    nop                                           ; $5DA5: $00
    inc c                                         ; $5DA6: $0C
    nop                                           ; $5DA7: $00
    inc d                                         ; $5DA8: $14
    ld [$1028], sp                                ; $5DA9: $08 $28 $10
    ld l, $10                                     ; $5DAC: $2E $10
    ld a, [hl+]                                   ; $5DAE: $2A
    inc d                                         ; $5DAF: $14
    inc a                                         ; $5DB0: $3C
    nop                                           ; $5DB1: $00
    inc a                                         ; $5DB2: $3C
    nop                                           ; $5DB3: $00
    ld e, $04                                     ; $5DB4: $1E $04
    rrca                                          ; $5DB6: $0F
    ld b, $07                                     ; $5DB7: $06 $07
    inc bc                                        ; $5DB9: $03
    rlca                                          ; $5DBA: $07
    inc bc                                        ; $5DBB: $03
    inc bc                                        ; $5DBC: $03
    ld bc, $0001                                  ; $5DBD: $01 $01 $00
    nop                                           ; $5DC0: $00
    nop                                           ; $5DC1: $00
    inc bc                                        ; $5DC2: $03
    nop                                           ; $5DC3: $00
    ld [bc], a                                    ; $5DC4: $02
    ld bc, $0102                                  ; $5DC5: $01 $02 $01
    ld [bc], a                                    ; $5DC8: $02
    ld bc, $010F                                  ; $5DC9: $01 $0F $01
    inc de                                        ; $5DCC: $13
    inc c                                         ; $5DCD: $0C
    ccf                                           ; $5DCE: $3F
    ld e, $3F                                     ; $5DCF: $1E $3F
    db $10                                        ; $5DD1: $10
    rla                                           ; $5DD2: $17
    inc c                                         ; $5DD3: $0C
    ccf                                           ; $5DD4: $3F
    dec c                                         ; $5DD5: $0D
    ld c, a                                       ; $5DD6: $4F
    ld sp, $7089                                  ; $5DD7: $31 $89 $70
    sub c                                         ; $5DDA: $91
    ld h, b                                       ; $5DDB: $60
    db $E3                                        ; $5DDC: $E3
    add c                                         ; $5DDD: $81
    add e                                         ; $5DDE: $83
    nop                                           ; $5DDF: $00
    nop                                           ; $5DE0: $00
    nop                                           ; $5DE1: $00
    inc c                                         ; $5DE2: $0C
    nop                                           ; $5DE3: $00
    db $F4                                        ; $5DE4: $F4
    ld [$58EC], sp                                ; $5DE5: $08 $EC $58
    db $DB                                        ; $5DE8: $DB
    inc [hl]                                      ; $5DE9: $34
    dec sp                                        ; $5DEA: $3B
    db $ED                                        ; $5DEB: $ED
    db $FD                                        ; $5DEC: $FD
    adc $DD                                       ; $5DED: $CE $DD
    ld l, $FF                                     ; $5DEF: $2E $FF
    call c, Call_010_58FF                         ; $5DF1: $DC $FF $58
    rst RST_38                                    ; $5DF4: $FF
    ld [bc], a                                    ; $5DF5: $02
    rst RST_38                                    ; $5DF6: $FF
    cp $FF                                        ; $5DF7: $FE $FF
    call nz, $AEDF                                ; $5DF9: $C4 $DF $AE
    rst RST_38                                    ; $5DFC: $FF
    sbc $FE                                       ; $5DFD: $DE $FE
    ld h, h                                       ; $5DFF: $64
    nop                                           ; $5E00: $00
    nop                                           ; $5E01: $00
    nop                                           ; $5E02: $00
    nop                                           ; $5E03: $00
    nop                                           ; $5E04: $00
    nop                                           ; $5E05: $00
    nop                                           ; $5E06: $00
    nop                                           ; $5E07: $00
    ldh a, [rP1]                                  ; $5E08: $F0 $00
    sbc b                                         ; $5E0A: $98

jr_010_5E0B:
    ldh a, [$FFFC]                                ; $5E0B: $F0 $FC
    jr jr_010_5E0B                                ; $5E0D: $18 $FC

    ld [$E09C], sp                                ; $5E0F: $08 $9C $E0
    ldh a, [$FFE0]                                ; $5E12: $F0 $E0
    add sp, $10                                   ; $5E14: $E8 $10
    call nz, Call_010_7638                        ; $5E16: $C4 $38 $76
    adc b                                         ; $5E19: $88
    rst RST_38                                    ; $5E1A: $FF
    ld b, $BF                                     ; $5E1B: $06 $BF
    ld b, [hl]                                    ; $5E1D: $46
    ld a, [hl]                                    ; $5E1E: $7E
    nop                                           ; $5E1F: $00
    ld hl, sp+$70                                 ; $5E20: $F8 $70
    ei                                            ; $5E22: $FB
    ld [hl], b                                    ; $5E23: $70
    ld a, [$7271]                                 ; $5E24: $FA $71 $72
    ld bc, $314A                                  ; $5E27: $01 $4A $31
    cpl                                           ; $5E2A: $2F
    ld de, $1A27                                  ; $5E2B: $11 $27 $1A
    daa                                           ; $5E2E: $27
    jr jr_010_5E46                                ; $5E2F: $18 $15

    ld a, [bc]                                    ; $5E31: $0A
    dec e                                         ; $5E32: $1D
    ld b, $1F                                     ; $5E33: $06 $1F
    ld c, $0F                                     ; $5E35: $0E $0F
    ld b, $07                                     ; $5E37: $06 $07
    nop                                           ; $5E39: $00
    inc bc                                        ; $5E3A: $03
    nop                                           ; $5E3B: $00
    ld bc, $0100                                  ; $5E3C: $01 $00 $01
    nop                                           ; $5E3F: $00
    nop                                           ; $5E40: $00
    nop                                           ; $5E41: $00
    nop                                           ; $5E42: $00
    nop                                           ; $5E43: $00
    nop                                           ; $5E44: $00
    nop                                           ; $5E45: $00

jr_010_5E46:
    nop                                           ; $5E46: $00
    nop                                           ; $5E47: $00
    nop                                           ; $5E48: $00
    nop                                           ; $5E49: $00
    nop                                           ; $5E4A: $00
    nop                                           ; $5E4B: $00
    inc c                                         ; $5E4C: $0C
    nop                                           ; $5E4D: $00
    inc d                                         ; $5E4E: $14
    ld [$1028], sp                                ; $5E4F: $08 $28 $10
    ld a, $00                                     ; $5E52: $3E $00
    ld [hl], d                                    ; $5E54: $72
    inc c                                         ; $5E55: $0C
    ld a, h                                       ; $5E56: $7C
    nop                                           ; $5E57: $00
    ld a, b                                       ; $5E58: $78
    nop                                           ; $5E59: $00
    ld [hl], b                                    ; $5E5A: $70
    jr nz, jr_010_5ECD                            ; $5E5B: $20 $70

    jr nz, jr_010_5ED7                            ; $5E5D: $20 $78

    jr nc, jr_010_5E62                            ; $5E5F: $30 $01

    nop                                           ; $5E61: $00

jr_010_5E62:
    inc bc                                        ; $5E62: $03
    nop                                           ; $5E63: $00
    rlca                                          ; $5E64: $07
    inc bc                                        ; $5E65: $03
    rlca                                          ; $5E66: $07
    inc bc                                        ; $5E67: $03
    ld b, $03                                     ; $5E68: $06 $03
    rrca                                          ; $5E6A: $0F
    ld b, $1E                                     ; $5E6B: $06 $1E
    inc c                                         ; $5E6D: $0C
    inc a                                         ; $5E6E: $3C

jr_010_5E6F:
    nop                                           ; $5E6F: $00
    ld a, h                                       ; $5E70: $7C
    jr c, jr_010_5E6F                             ; $5E71: $38 $FC

    ld a, b                                       ; $5E73: $78
    ld hl, sp+$00                                 ; $5E74: $F8 $00
    nop                                           ; $5E76: $00
    nop                                           ; $5E77: $00
    nop                                           ; $5E78: $00
    nop                                           ; $5E79: $00
    nop                                           ; $5E7A: $00
    nop                                           ; $5E7B: $00

jr_010_5E7C:
    nop                                           ; $5E7C: $00
    nop                                           ; $5E7D: $00
    nop                                           ; $5E7E: $00
    nop                                           ; $5E7F: $00
    nop                                           ; $5E80: $00
    nop                                           ; $5E81: $00
    nop                                           ; $5E82: $00
    nop                                           ; $5E83: $00
    nop                                           ; $5E84: $00
    nop                                           ; $5E85: $00
    nop                                           ; $5E86: $00
    nop                                           ; $5E87: $00
    nop                                           ; $5E88: $00
    nop                                           ; $5E89: $00
    inc c                                         ; $5E8A: $0C
    nop                                           ; $5E8B: $00
    db $F4                                        ; $5E8C: $F4
    ld [$58EC], sp                                ; $5E8D: $08 $EC $58
    db $DB                                        ; $5E90: $DB
    inc [hl]                                      ; $5E91: $34
    ld a, [hl-]                                   ; $5E92: $3A
    db $ED                                        ; $5E93: $ED
    db $FD                                        ; $5E94: $FD
    adc $DD                                       ; $5E95: $CE $DD
    ld l, $FF                                     ; $5E97: $2E $FF
    call c, Call_010_58FF                         ; $5E99: $DC $FF $58
    rst RST_38                                    ; $5E9C: $FF
    add c                                         ; $5E9D: $81
    rst RST_38                                    ; $5E9E: $FF
    rst RST_38                                    ; $5E9F: $FF
    rst RST_38                                    ; $5EA0: $FF
    adc [hl]                                      ; $5EA1: $8E
    rst RST_28                                    ; $5EA2: $EF
    sub $FF                                       ; $5EA3: $D6 $FF
    rst RST_28                                    ; $5EA5: $EF

jr_010_5EA6:
    rst RST_38                                    ; $5EA6: $FF
    adc c                                         ; $5EA7: $89
    rst RST_38                                    ; $5EA8: $FF
    jr nc, jr_010_5F2A                            ; $5EA9: $30 $7F

    ld c, $7F                                     ; $5EAB: $0E $7F
    nop                                           ; $5EAD: $00
    ld a, a                                       ; $5EAE: $7F
    nop                                           ; $5EAF: $00
    sbc [hl]                                      ; $5EB0: $9E
    ld h, c                                       ; $5EB1: $61
    adc h                                         ; $5EB2: $8C
    ld [hl], e                                    ; $5EB3: $73
    inc d                                         ; $5EB4: $14
    db $E3                                        ; $5EB5: $E3
    db $E3                                        ; $5EB6: $E3
    nop                                           ; $5EB7: $00

jr_010_5EB8:
    and b                                         ; $5EB8: $A0
    ret nz                                        ; $5EB9: $C0

    jr nz, jr_010_5E7C                            ; $5EBA: $20 $C0

    ld b, b                                       ; $5EBC: $40
    add b                                         ; $5EBD: $80
    add b                                         ; $5EBE: $80
    nop                                           ; $5EBF: $00
    nop                                           ; $5EC0: $00
    nop                                           ; $5EC1: $00
    nop                                           ; $5EC2: $00
    nop                                           ; $5EC3: $00
    ret nz                                        ; $5EC4: $C0

    nop                                           ; $5EC5: $00
    ld h, b                                       ; $5EC6: $60
    ret nz                                        ; $5EC7: $C0

    ldh a, [$FFE0]                                ; $5EC8: $F0 $E0
    ldh a, [rNR41]                                ; $5ECA: $F0 $20
    or b                                          ; $5ECC: $B0

jr_010_5ECD:
    ret nz                                        ; $5ECD: $C0

    ldh [rLCDC], a                                ; $5ECE: $E0 $40
    ldh [rLCDC], a                                ; $5ED0: $E0 $40
    ret nz                                        ; $5ED2: $C0

    nop                                           ; $5ED3: $00
    and [hl]                                      ; $5ED4: $A6
    ld b, b                                       ; $5ED5: $40
    xor c                                         ; $5ED6: $A9

jr_010_5ED7:
    ld b, [hl]                                    ; $5ED7: $46
    rst RST_08                                    ; $5ED8: $CF
    nop                                           ; $5ED9: $00
    db $FD                                        ; $5EDA: $FD
    ld [bc], a                                    ; $5EDB: $02
    cp $E0                                        ; $5EDC: $FE $E0
    db $FC                                        ; $5EDE: $FC
    nop                                           ; $5EDF: $00
    add b                                         ; $5EE0: $80
    nop                                           ; $5EE1: $00
    ld b, b                                       ; $5EE2: $40
    add b                                         ; $5EE3: $80
    jr c, jr_010_5EA6                             ; $5EE4: $38 $C0

    jr z, jr_010_5EB8                             ; $5EE6: $28 $D0

    add sp, $30                                   ; $5EE8: $E8 $30
    add sp, $70                                   ; $5EEA: $E8 $70
    add sp, $70                                   ; $5EEC: $E8 $70
    ld a, b                                       ; $5EEE: $78
    jr nc, jr_010_5F29                            ; $5EEF: $30 $38

    db $10                                        ; $5EF1: $10
    inc a                                         ; $5EF2: $3C
    db $10                                        ; $5EF3: $10
    ld a, $0C                                     ; $5EF4: $3E $0C
    ccf                                           ; $5EF6: $3F
    ld e, $3F                                     ; $5EF7: $1E $3F
    nop                                           ; $5EF9: $00
    nop                                           ; $5EFA: $00
    nop                                           ; $5EFB: $00
    nop                                           ; $5EFC: $00
    nop                                           ; $5EFD: $00
    nop                                           ; $5EFE: $00
    nop                                           ; $5EFF: $00
    nop                                           ; $5F00: $00
    nop                                           ; $5F01: $00
    nop                                           ; $5F02: $00
    nop                                           ; $5F03: $00
    nop                                           ; $5F04: $00
    nop                                           ; $5F05: $00
    nop                                           ; $5F06: $00
    nop                                           ; $5F07: $00
    nop                                           ; $5F08: $00
    nop                                           ; $5F09: $00
    nop                                           ; $5F0A: $00
    nop                                           ; $5F0B: $00
    nop                                           ; $5F0C: $00
    nop                                           ; $5F0D: $00
    nop                                           ; $5F0E: $00
    nop                                           ; $5F0F: $00
    nop                                           ; $5F10: $00
    nop                                           ; $5F11: $00
    nop                                           ; $5F12: $00
    nop                                           ; $5F13: $00
    nop                                           ; $5F14: $00
    nop                                           ; $5F15: $00
    nop                                           ; $5F16: $00
    nop                                           ; $5F17: $00
    nop                                           ; $5F18: $00
    nop                                           ; $5F19: $00
    nop                                           ; $5F1A: $00
    nop                                           ; $5F1B: $00
    ld [hl], b                                    ; $5F1C: $70
    nop                                           ; $5F1D: $00
    adc c                                         ; $5F1E: $89
    ld [hl], b                                    ; $5F1F: $70
    nop                                           ; $5F20: $00
    nop                                           ; $5F21: $00
    nop                                           ; $5F22: $00
    nop                                           ; $5F23: $00
    nop                                           ; $5F24: $00
    nop                                           ; $5F25: $00
    nop                                           ; $5F26: $00
    nop                                           ; $5F27: $00
    nop                                           ; $5F28: $00

jr_010_5F29:
    nop                                           ; $5F29: $00

jr_010_5F2A:
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
    ld h, c                                       ; $5F34: $61
    nop                                           ; $5F35: $00
    ld e, [hl]                                    ; $5F36: $5E
    ld hl, $2B5D                                  ; $5F37: $21 $5D $2B
    ld e, e                                       ; $5F3A: $5B
    ld h, $67                                     ; $5F3B: $26 $67
    dec a                                         ; $5F3D: $3D
    rst RST_38                                    ; $5F3E: $FF
    add hl, de                                    ; $5F3F: $19
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
    add b                                         ; $5F54: $80
    nop                                           ; $5F55: $00
    add b                                         ; $5F56: $80
    nop                                           ; $5F57: $00
    add b                                         ; $5F58: $80
    nop                                           ; $5F59: $00
    ld a, b                                       ; $5F5A: $78
    add b                                         ; $5F5B: $80
    ld c, h                                       ; $5F5C: $4C
    cp b                                          ; $5F5D: $B8
    cp [hl]                                       ; $5F5E: $BE
    call c, Call_000_01F2                         ; $5F5F: $DC $F2 $01
    sub a                                         ; $5F62: $97
    ld h, e                                       ; $5F63: $63
    rst RST_30                                    ; $5F64: $F7
    ld [bc], a                                    ; $5F65: $02
    db $E3                                        ; $5F66: $E3
    ld bc, $00E3                                  ; $5F67: $01 $E3 $00
    db $E4                                        ; $5F6A: $E4
    ld b, e                                       ; $5F6B: $43
    ld hl, sp+$67                                 ; $5F6C: $F8 $67
    di                                            ; $5F6E: $F3
    ld l, h                                       ; $5F6F: $6C
    ld a, h                                       ; $5F70: $7C
    jr nc, jr_010_5FEB                            ; $5F71: $30 $78

    jr nc, jr_010_5FA5                            ; $5F73: $30 $30

    nop                                           ; $5F75: $00
    nop                                           ; $5F76: $00
    nop                                           ; $5F77: $00
    nop                                           ; $5F78: $00
    nop                                           ; $5F79: $00

jr_010_5F7A:
    rlca                                          ; $5F7A: $07
    nop                                           ; $5F7B: $00
    dec b                                         ; $5F7C: $05
    ld [bc], a                                    ; $5F7D: $02
    dec b                                         ; $5F7E: $05
    inc bc                                        ; $5F7F: $03
    ld a, e                                       ; $5F80: $7B
    push bc                                       ; $5F81: $C5
    rst RST_38                                    ; $5F82: $FF
    dec de                                        ; $5F83: $1B
    rst RST_38                                    ; $5F84: $FF
    dec bc                                        ; $5F85: $0B
    cp a                                          ; $5F86: $BF
    ret nc                                        ; $5F87: $D0

    rst RST_38                                    ; $5F88: $FF
    rst RST_18                                    ; $5F89: $DF
    rst RST_38                                    ; $5F8A: $FF
    ld d, c                                       ; $5F8B: $51
    db $FD                                        ; $5F8C: $FD
    ld a, [de]                                    ; $5F8D: $1A
    ccf                                           ; $5F8E: $3F
    dec e                                         ; $5F8F: $1D
    ccf                                           ; $5F90: $3F
    ld de, $061F                                  ; $5F91: $11 $1F $06
    rra                                           ; $5F94: $1F
    ld bc, $001F                                  ; $5F95: $01 $1F $00
    ld l, a                                       ; $5F98: $6F
    db $10                                        ; $5F99: $10
    add [hl]                                      ; $5F9A: $86
    ld a, c                                       ; $5F9B: $79
    rlca                                          ; $5F9C: $07
    ld hl, sp-$08                                 ; $5F9D: $F8 $F8
    nop                                           ; $5F9F: $00
    cp [hl]                                       ; $5FA0: $BE
    call nz, $98F6                                ; $5FA1: $C4 $F6 $98
    db $FC                                        ; $5FA4: $FC

jr_010_5FA5:
    ld [$28FC], sp                                ; $5FA5: $08 $FC $28
    ld hl, sp-$20                                 ; $5FA8: $F8 $E0
    push af                                       ; $5FAA: $F5
    ret z                                         ; $5FAB: $C8

    ld a, [$F3C1]                                 ; $5FAC: $FA $C1 $F3
    ldh [rIE], a                                  ; $5FAF: $E0 $FF
    jr nz, @+$01                                  ; $5FB1: $20 $FF

    jr @+$01                                      ; $5FB3: $18 $FF

    ret nz                                        ; $5FB5: $C0

    ret nz                                        ; $5FB6: $C0

    nop                                           ; $5FB7: $00
    jr nz, jr_010_5F7A                            ; $5FB8: $20 $C0

    db $10                                        ; $5FBA: $10
    ldh [$FF3C], a                                ; $5FBB: $E0 $3C
    ret nz                                        ; $5FBD: $C0

    sbc $3C                                       ; $5FBE: $DE $3C
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
    add b                                         ; $5FCA: $80
    nop                                           ; $5FCB: $00
    ld b, b                                       ; $5FCC: $40
    add b                                         ; $5FCD: $80
    ret nz                                        ; $5FCE: $C0

    nop                                           ; $5FCF: $00
    ld b, b                                       ; $5FD0: $40
    add b                                         ; $5FD1: $80
    add b                                         ; $5FD2: $80
    nop                                           ; $5FD3: $00
    nop                                           ; $5FD4: $00
    nop                                           ; $5FD5: $00
    nop                                           ; $5FD6: $00
    nop                                           ; $5FD7: $00
    nop                                           ; $5FD8: $00
    nop                                           ; $5FD9: $00
    nop                                           ; $5FDA: $00
    nop                                           ; $5FDB: $00
    nop                                           ; $5FDC: $00
    nop                                           ; $5FDD: $00
    nop                                           ; $5FDE: $00
    nop                                           ; $5FDF: $00
    rla                                           ; $5FE0: $17
    ld c, $17                                     ; $5FE1: $0E $17
    ld c, $1E                                     ; $5FE3: $0E $1E
    inc c                                         ; $5FE5: $0C
    inc e                                         ; $5FE6: $1C
    ld [$083C], sp                                ; $5FE7: $08 $3C $08
    ld a, h                                       ; $5FEA: $7C

jr_010_5FEB:
    jr nc, @-$02                                  ; $5FEB: $30 $FC

    ld a, b                                       ; $5FED: $78
    db $FC                                        ; $5FEE: $FC
    nop                                           ; $5FEF: $00
    nop                                           ; $5FF0: $00
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
    sbc [hl]                                      ; $6000: $9E
    ld a, h                                       ; $6001: $7C
    ld c, [hl]                                    ; $6002: $4E
    inc a                                         ; $6003: $3C
    dec sp                                        ; $6004: $3B
    ld b, $07                                     ; $6005: $06 $07
    inc bc                                        ; $6007: $03
    inc bc                                        ; $6008: $03
    nop                                           ; $6009: $00
    inc bc                                        ; $600A: $03
    ld bc, $0103                                  ; $600B: $01 $03 $01
    ld bc, $0000                                  ; $600E: $01 $00 $00
    nop                                           ; $6011: $00
    nop                                           ; $6012: $00
    nop                                           ; $6013: $00
    nop                                           ; $6014: $00
    nop                                           ; $6015: $00
    nop                                           ; $6016: $00
    nop                                           ; $6017: $00
    nop                                           ; $6018: $00
    nop                                           ; $6019: $00
    nop                                           ; $601A: $00
    nop                                           ; $601B: $00
    nop                                           ; $601C: $00
    nop                                           ; $601D: $00
    nop                                           ; $601E: $00
    nop                                           ; $601F: $00
    add b                                         ; $6020: $80
    nop                                           ; $6021: $00
    ret nz                                        ; $6022: $C0

    nop                                           ; $6023: $00
    ldh [$FFC0], a                                ; $6024: $E0 $C0
    ldh a, [$FFE0]                                ; $6026: $F0 $E0
    ldh a, [rP1]                                  ; $6028: $F0 $00
    nop                                           ; $602A: $00
    nop                                           ; $602B: $00
    nop                                           ; $602C: $00
    nop                                           ; $602D: $00
    nop                                           ; $602E: $00
    nop                                           ; $602F: $00
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    nop                                           ; $6034: $00
    nop                                           ; $6035: $00
    nop                                           ; $6036: $00
    nop                                           ; $6037: $00
    nop                                           ; $6038: $00
    nop                                           ; $6039: $00
    nop                                           ; $603A: $00
    nop                                           ; $603B: $00
    nop                                           ; $603C: $00
    nop                                           ; $603D: $00
    nop                                           ; $603E: $00
    nop                                           ; $603F: $00
    ccf                                           ; $6040: $3F
    nop                                           ; $6041: $00
    ld b, b                                       ; $6042: $40
    ccf                                           ; $6043: $3F
    add h                                         ; $6044: $84
    ld a, e                                       ; $6045: $7B
    add a                                         ; $6046: $87
    ld a, b                                       ; $6047: $78
    add h                                         ; $6048: $84
    ld a, e                                       ; $6049: $7B
    sbc [hl]                                      ; $604A: $9E
    ld h, c                                       ; $604B: $61
    and l                                         ; $604C: $A5
    ld e, d                                       ; $604D: $5A
    sbc h                                         ; $604E: $9C
    ld h, e                                       ; $604F: $63
    ld b, b                                       ; $6050: $40
    ccf                                           ; $6051: $3F
    jr c, jr_010_605B                             ; $6052: $38 $07

    inc b                                         ; $6054: $04
    inc bc                                        ; $6055: $03
    ld [bc], a                                    ; $6056: $02
    ld bc, $0001                                  ; $6057: $01 $01 $00
    nop                                           ; $605A: $00

jr_010_605B:
    nop                                           ; $605B: $00
    nop                                           ; $605C: $00
    nop                                           ; $605D: $00
    nop                                           ; $605E: $00
    nop                                           ; $605F: $00
    rst RST_38                                    ; $6060: $FF
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    rst RST_38                                    ; $6063: $FF
    ld [bc], a                                    ; $6064: $02
    db $FD                                        ; $6065: $FD
    ld [bc], a                                    ; $6066: $02
    db $FD                                        ; $6067: $FD
    ld [bc], a                                    ; $6068: $02
    db $FD                                        ; $6069: $FD
    ld a, d                                       ; $606A: $7A
    add l                                         ; $606B: $85
    ld a, [bc]                                    ; $606C: $0A
    push af                                       ; $606D: $F5
    ld sp, $00CE                                  ; $606E: $31 $CE $00
    rst RST_38                                    ; $6071: $FF
    rst RST_38                                    ; $6072: $FF
    nop                                           ; $6073: $00
    add b                                         ; $6074: $80
    nop                                           ; $6075: $00
    add b                                         ; $6076: $80
    nop                                           ; $6077: $00
    add b                                         ; $6078: $80
    nop                                           ; $6079: $00
    nop                                           ; $607A: $00
    nop                                           ; $607B: $00
    nop                                           ; $607C: $00
    nop                                           ; $607D: $00
    nop                                           ; $607E: $00
    nop                                           ; $607F: $00
    rst RST_38                                    ; $6080: $FF
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    rst RST_38                                    ; $6083: $FF
    nop                                           ; $6084: $00
    rst RST_38                                    ; $6085: $FF
    inc d                                         ; $6086: $14
    db $EB                                        ; $6087: $EB
    inc a                                         ; $6088: $3C
    jp $ED12                                      ; $6089: $C3 $12 $ED


    ld d, h                                       ; $608C: $54
    xor e                                         ; $608D: $AB
    sub b                                         ; $608E: $90
    ld l, a                                       ; $608F: $6F
    nop                                           ; $6090: $00
    rst RST_38                                    ; $6091: $FF
    rst RST_38                                    ; $6092: $FF
    nop                                           ; $6093: $00
    nop                                           ; $6094: $00
    nop                                           ; $6095: $00
    nop                                           ; $6096: $00
    nop                                           ; $6097: $00
    nop                                           ; $6098: $00
    nop                                           ; $6099: $00
    nop                                           ; $609A: $00
    nop                                           ; $609B: $00
    nop                                           ; $609C: $00
    nop                                           ; $609D: $00
    nop                                           ; $609E: $00
    nop                                           ; $609F: $00
    db $FC                                        ; $60A0: $FC
    nop                                           ; $60A1: $00
    ld [bc], a                                    ; $60A2: $02
    db $FC                                        ; $60A3: $FC
    reti                                          ; $60A4: $D9


    ld h, $D9                                     ; $60A5: $26 $D9
    ld h, $D9                                     ; $60A7: $26 $D9
    ld h, $01                                     ; $60A9: $26 $01
    cp $D9                                        ; $60AB: $FE $D9
    ld h, $01                                     ; $60AD: $26 $01
    cp $02                                        ; $60AF: $FE $02
    db $FC                                        ; $60B1: $FC
    db $FC                                        ; $60B2: $FC
    nop                                           ; $60B3: $00
    nop                                           ; $60B4: $00
    nop                                           ; $60B5: $00
    nop                                           ; $60B6: $00
    nop                                           ; $60B7: $00
    nop                                           ; $60B8: $00
    nop                                           ; $60B9: $00
    nop                                           ; $60BA: $00
    nop                                           ; $60BB: $00
    nop                                           ; $60BC: $00
    nop                                           ; $60BD: $00
    nop                                           ; $60BE: $00
    nop                                           ; $60BF: $00
    nop                                           ; $60C0: $00
    nop                                           ; $60C1: $00
    nop                                           ; $60C2: $00
    nop                                           ; $60C3: $00
    nop                                           ; $60C4: $00
    nop                                           ; $60C5: $00
    ld [hl], b                                    ; $60C6: $70
    nop                                           ; $60C7: $00
    adc c                                         ; $60C8: $89
    ld [hl], b                                    ; $60C9: $70
    ldh a, [c]                                    ; $60CA: $F2
    ld bc, $6397                                  ; $60CB: $01 $97 $63
    rst RST_30                                    ; $60CE: $F7
    ld [bc], a                                    ; $60CF: $02
    db $E3                                        ; $60D0: $E3
    ld bc, $00E3                                  ; $60D1: $01 $E3 $00
    db $E4                                        ; $60D4: $E4
    ld b, e                                       ; $60D5: $43
    ld hl, sp+$67                                 ; $60D6: $F8 $67
    di                                            ; $60D8: $F3
    ld l, h                                       ; $60D9: $6C
    ld a, h                                       ; $60DA: $7C
    jr nc, jr_010_6155                            ; $60DB: $30 $78

    jr nc, @+$32                                  ; $60DD: $30 $30

    nop                                           ; $60DF: $00
    ld h, c                                       ; $60E0: $61
    nop                                           ; $60E1: $00
    ld e, [hl]                                    ; $60E2: $5E
    ld hl, $2B5D                                  ; $60E3: $21 $5D $2B
    ld e, e                                       ; $60E6: $5B
    ld h, $67                                     ; $60E7: $26 $67
    dec a                                         ; $60E9: $3D
    rst RST_38                                    ; $60EA: $FF
    add hl, de                                    ; $60EB: $19
    ld a, e                                       ; $60EC: $7B
    push bc                                       ; $60ED: $C5
    rst RST_38                                    ; $60EE: $FF
    dec de                                        ; $60EF: $1B
    rst RST_38                                    ; $60F0: $FF
    dec bc                                        ; $60F1: $0B
    cp a                                          ; $60F2: $BF
    ret nc                                        ; $60F3: $D0

    rst RST_38                                    ; $60F4: $FF
    rst RST_18                                    ; $60F5: $DF
    rst RST_38                                    ; $60F6: $FF
    ld d, c                                       ; $60F7: $51
    db $FD                                        ; $60F8: $FD
    ld a, [de]                                    ; $60F9: $1A
    ccf                                           ; $60FA: $3F
    dec e                                         ; $60FB: $1D
    ccf                                           ; $60FC: $3F
    ld de, $061F                                  ; $60FD: $11 $1F $06
    add b                                         ; $6100: $80
    nop                                           ; $6101: $00
    add b                                         ; $6102: $80
    nop                                           ; $6103: $00
    add b                                         ; $6104: $80
    nop                                           ; $6105: $00
    ld a, b                                       ; $6106: $78
    add b                                         ; $6107: $80
    ld c, h                                       ; $6108: $4C
    cp b                                          ; $6109: $B8
    cp [hl]                                       ; $610A: $BE
    call c, $C4BE                                 ; $610B: $DC $BE $C4
    or $98                                        ; $610E: $F6 $98
    db $FC                                        ; $6110: $FC
    ld [$28FC], sp                                ; $6111: $08 $FC $28
    ld hl, sp-$20                                 ; $6114: $F8 $E0
    push af                                       ; $6116: $F5
    ret z                                         ; $6117: $C8

    ld a, [$F3C1]                                 ; $6118: $FA $C1 $F3
    ldh [rIE], a                                  ; $611B: $E0 $FF
    jr nz, @+$01                                  ; $611D: $20 $FF

    jr jr_010_6122                                ; $611F: $18 $01

    nop                                           ; $6121: $00

jr_010_6122:
    ld e, $01                                     ; $6122: $1E $01
    inc d                                         ; $6124: $14
    dec bc                                        ; $6125: $0B
    rla                                           ; $6126: $17
    inc c                                         ; $6127: $0C
    rla                                           ; $6128: $17
    ld c, $17                                     ; $6129: $0E $17
    ld c, $1E                                     ; $612B: $0E $1E
    inc c                                         ; $612D: $0C
    inc e                                         ; $612E: $1C

jr_010_612F:
    ld [$083C], sp                                ; $612F: $08 $3C $08
    ld a, h                                       ; $6132: $7C
    jr nc, @-$02                                  ; $6133: $30 $FC

    ld a, b                                       ; $6135: $78
    db $FC                                        ; $6136: $FC
    nop                                           ; $6137: $00
    nop                                           ; $6138: $00
    nop                                           ; $6139: $00
    nop                                           ; $613A: $00
    nop                                           ; $613B: $00
    nop                                           ; $613C: $00
    nop                                           ; $613D: $00
    nop                                           ; $613E: $00
    nop                                           ; $613F: $00
    ld a, a                                       ; $6140: $7F
    rlca                                          ; $6141: $07
    ld a, a                                       ; $6142: $7F
    nop                                           ; $6143: $00
    cp h                                          ; $6144: $BC
    ld b, e                                       ; $6145: $43
    jr jr_010_612F                                ; $6146: $18 $E7

    inc e                                         ; $6148: $1C
    db $E3                                        ; $6149: $E3
    db $E3                                        ; $614A: $E3
    nop                                           ; $614B: $00
    ld bc, $0000                                  ; $614C: $01 $00 $00
    nop                                           ; $614F: $00
    nop                                           ; $6150: $00
    nop                                           ; $6151: $00
    nop                                           ; $6152: $00
    nop                                           ; $6153: $00
    nop                                           ; $6154: $00

jr_010_6155:
    nop                                           ; $6155: $00
    nop                                           ; $6156: $00
    nop                                           ; $6157: $00
    nop                                           ; $6158: $00
    nop                                           ; $6159: $00
    nop                                           ; $615A: $00
    nop                                           ; $615B: $00
    nop                                           ; $615C: $00
    nop                                           ; $615D: $00
    nop                                           ; $615E: $00
    nop                                           ; $615F: $00
    sub $20                                       ; $6160: $D6 $20
    jp hl                                         ; $6162: $E9


    ld b, $CF                                     ; $6163: $06 $CF
    add b                                         ; $6165: $80
    db $FD                                        ; $6166: $FD
    add d                                         ; $6167: $82
    cp $60                                        ; $6168: $FE $60
    db $FC                                        ; $616A: $FC
    nop                                           ; $616B: $00
    nop                                           ; $616C: $00
    nop                                           ; $616D: $00
    add b                                         ; $616E: $80
    nop                                           ; $616F: $00
    ld b, b                                       ; $6170: $40
    add b                                         ; $6171: $80
    ldh a, [rP1]                                  ; $6172: $F0 $00
    ld a, b                                       ; $6174: $78
    ldh a, [$FF3C]                                ; $6175: $F0 $3C
    ld hl, sp-$64                                 ; $6177: $F8 $9C
    ld a, b                                       ; $6179: $78
    halt                                          ; $617A: $76
    inc c                                         ; $617B: $0C
    rrca                                          ; $617C: $0F
    ld b, $07                                     ; $617D: $06 $07
    nop                                           ; $617F: $00
    ldh a, [rP1]                                  ; $6180: $F0 $00
    ld hl, sp+$70                                 ; $6182: $F8 $70
    db $FC                                        ; $6184: $FC
    ld a, b                                       ; $6185: $78
    ld a, h                                       ; $6186: $7C
    nop                                           ; $6187: $00
    nop                                           ; $6188: $00
    nop                                           ; $6189: $00
    nop                                           ; $618A: $00
    nop                                           ; $618B: $00
    nop                                           ; $618C: $00
    nop                                           ; $618D: $00
    nop                                           ; $618E: $00
    nop                                           ; $618F: $00
    nop                                           ; $6190: $00
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
    nop                                           ; $61A0: $00
    nop                                           ; $61A1: $00
    nop                                           ; $61A2: $00
    nop                                           ; $61A3: $00
    nop                                           ; $61A4: $00
    nop                                           ; $61A5: $00
    nop                                           ; $61A6: $00
    nop                                           ; $61A7: $00
    nop                                           ; $61A8: $00
    nop                                           ; $61A9: $00
    nop                                           ; $61AA: $00
    nop                                           ; $61AB: $00
    ld bc, $0100                                  ; $61AC: $01 $00 $01
    nop                                           ; $61AF: $00
    ld bc, $0300                                  ; $61B0: $01 $00 $03
    ld bc, $0103                                  ; $61B3: $01 $03 $01
    inc bc                                        ; $61B6: $03
    ld bc, $0207                                  ; $61B7: $01 $07 $02
    rra                                           ; $61BA: $1F
    nop                                           ; $61BB: $00
    ccf                                           ; $61BC: $3F
    ld d, $3F                                     ; $61BD: $16 $3F
    nop                                           ; $61BF: $00
    rst RST_38                                    ; $61C0: $FF
    add c                                         ; $61C1: $81
    rst RST_28                                    ; $61C2: $EF
    sbc b                                         ; $61C3: $98
    rst RST_38                                    ; $61C4: $FF
    sbc b                                         ; $61C5: $98
    rst RST_38                                    ; $61C6: $FF
    inc bc                                        ; $61C7: $03
    rst RST_18                                    ; $61C8: $DF
    inc b                                         ; $61C9: $04
    call $9F02                                    ; $61CA: $CD $02 $9F
    dec c                                         ; $61CD: $0D
    add hl, de                                    ; $61CE: $19
    ld c, $0E                                     ; $61CF: $0E $0E
    ld bc, $0A1D                                  ; $61D1: $01 $1D $0A
    ld e, $08                                     ; $61D4: $1E $08
    dec a                                         ; $61D6: $3D
    jr jr_010_6252                                ; $61D7: $18 $79

    nop                                           ; $61D9: $00
    cp d                                          ; $61DA: $BA
    ld b, c                                       ; $61DB: $41
    ld l, c                                       ; $61DC: $69
    db $10                                        ; $61DD: $10
    stop                                          ; $61DE: $10 $00
    nop                                           ; $61E0: $00
    nop                                           ; $61E1: $00
    nop                                           ; $61E2: $00
    nop                                           ; $61E3: $00
    nop                                           ; $61E4: $00
    nop                                           ; $61E5: $00
    nop                                           ; $61E6: $00
    nop                                           ; $61E7: $00
    nop                                           ; $61E8: $00
    nop                                           ; $61E9: $00
    nop                                           ; $61EA: $00
    nop                                           ; $61EB: $00
    nop                                           ; $61EC: $00
    nop                                           ; $61ED: $00
    nop                                           ; $61EE: $00
    nop                                           ; $61EF: $00
    nop                                           ; $61F0: $00
    nop                                           ; $61F1: $00
    nop                                           ; $61F2: $00
    nop                                           ; $61F3: $00
    add hl, de                                    ; $61F4: $19
    nop                                           ; $61F5: $00
    scf                                           ; $61F6: $37
    add hl, bc                                    ; $61F7: $09
    ld c, e                                       ; $61F8: $4B
    inc [hl]                                      ; $61F9: $34
    db $FC                                        ; $61FA: $FC
    ld h, a                                       ; $61FB: $67
    rst RST_38                                    ; $61FC: $FF
    ld b, e                                       ; $61FD: $43
    rst RST_38                                    ; $61FE: $FF
    ld b, b                                       ; $61FF: $40
    jr nc, jr_010_6202                            ; $6200: $30 $00

jr_010_6202:
    ret nc                                        ; $6202: $D0

    jr nz, @-$45                                  ; $6203: $20 $B9

    ld h, b                                       ; $6205: $60
    ld h, a                                       ; $6206: $67
    reti                                          ; $6207: $D9


    rst RST_30                                    ; $6208: $F7
    reti                                          ; $6209: $D9


    ei                                            ; $620A: $FB
    cp l                                          ; $620B: $BD
    rst RST_38                                    ; $620C: $FF
    add hl, de                                    ; $620D: $19
    rst RST_38                                    ; $620E: $FF
    jp nc, $87FB                                  ; $620F: $D2 $FB $87

    rst RST_38                                    ; $6212: $FF
    ld h, a                                       ; $6213: $67
    rst RST_38                                    ; $6214: $FF
    ldh [rIE], a                                  ; $6215: $E0 $FF
    ret nc                                        ; $6217: $D0

    rst RST_38                                    ; $6218: $FF
    ldh a, [rVBK]                                 ; $6219: $F0 $4F
    ldh a, [$FFBF]                                ; $621B: $F0 $BF
    ld b, b                                       ; $621D: $40
    ld sp, hl                                     ; $621E: $F9
    ld b, $49                                     ; $621F: $06 $49
    ld [hl], $8B                                  ; $6221: $36 $8B
    ld [hl], h                                    ; $6223: $74
    dec e                                         ; $6224: $1D
    ldh [c], a                                    ; $6225: $E2
    db $EB                                        ; $6226: $EB
    inc b                                         ; $6227: $04
    ld a, e                                       ; $6228: $7B
    rst RST_28                                    ; $6229: $EF
    ld a, e                                       ; $622A: $7B
    rst RST_28                                    ; $622B: $EF
    rst RST_38                                    ; $622C: $FF
    ld [hl], a                                    ; $622D: $77
    ld a, a                                       ; $622E: $7F
    ld d, $1F                                     ; $622F: $16 $1F
    ld a, [bc]                                    ; $6231: $0A
    rra                                           ; $6232: $1F
    ld [bc], a                                    ; $6233: $02
    ld a, a                                       ; $6234: $7F
    jr @+$01                                      ; $6235: $18 $FF

    ld [hl], a                                    ; $6237: $77
    rst RST_38                                    ; $6238: $FF
    dec b                                         ; $6239: $05
    rrca                                          ; $623A: $0F
    nop                                           ; $623B: $00
    nop                                           ; $623C: $00
    nop                                           ; $623D: $00
    nop                                           ; $623E: $00
    nop                                           ; $623F: $00
    ldh [rP1], a                                  ; $6240: $E0 $00
    ldh a, [$FFE0]                                ; $6242: $F0 $E0
    ld hl, sp-$50                                 ; $6244: $F8 $B0
    ld hl, sp+$30                                 ; $6246: $F8 $30
    db $FC                                        ; $6248: $FC
    add sp, -$04                                  ; $6249: $E8 $FC
    xor b                                         ; $624B: $A8
    db $FC                                        ; $624C: $FC
    ld hl, sp-$02                                 ; $624D: $F8 $FE
    ld e, b                                       ; $624F: $58
    cp $7C                                        ; $6250: $FE $7C

jr_010_6252:
    ld a, [hl]                                    ; $6252: $7E
    or h                                          ; $6253: $B4
    ccf                                           ; $6254: $3F
    call c, $06FF                                 ; $6255: $DC $FF $06
    rst RST_38                                    ; $6258: $FF
    ld h, [hl]                                    ; $6259: $66
    rst RST_30                                    ; $625A: $F7
    ld h, d                                       ; $625B: $62
    rst RST_20                                    ; $625C: $E7
    ld b, d                                       ; $625D: $42
    rst RST_38                                    ; $625E: $FF
    ret nz                                        ; $625F: $C0

    rst RST_38                                    ; $6260: $FF
    ld d, $FF                                     ; $6261: $16 $FF
    nop                                           ; $6263: $00
    ld b, b                                       ; $6264: $40
    add b                                         ; $6265: $80
    add b                                         ; $6266: $80
    nop                                           ; $6267: $00
    add b                                         ; $6268: $80
    nop                                           ; $6269: $00
    add b                                         ; $626A: $80
    nop                                           ; $626B: $00
    nop                                           ; $626C: $00
    nop                                           ; $626D: $00

jr_010_626E:
    nop                                           ; $626E: $00
    nop                                           ; $626F: $00
    nop                                           ; $6270: $00
    nop                                           ; $6271: $00
    nop                                           ; $6272: $00
    nop                                           ; $6273: $00
    add b                                         ; $6274: $80
    nop                                           ; $6275: $00
    ret nz                                        ; $6276: $C0

    add b                                         ; $6277: $80

Call_010_6278:
    ret nz                                        ; $6278: $C0

    nop                                           ; $6279: $00
    nop                                           ; $627A: $00
    nop                                           ; $627B: $00
    nop                                           ; $627C: $00
    nop                                           ; $627D: $00
    nop                                           ; $627E: $00
    nop                                           ; $627F: $00
    nop                                           ; $6280: $00
    nop                                           ; $6281: $00
    ld bc, $0100                                  ; $6282: $01 $00 $01
    nop                                           ; $6285: $00
    ld bc, $0100                                  ; $6286: $01 $00 $01
    nop                                           ; $6289: $00
    inc bc                                        ; $628A: $03
    ld bc, $0103                                  ; $628B: $01 $03 $01
    ld bc, $0000                                  ; $628E: $01 $00 $00
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    nop                                           ; $6293: $00
    nop                                           ; $6294: $00
    nop                                           ; $6295: $00
    nop                                           ; $6296: $00
    nop                                           ; $6297: $00
    nop                                           ; $6298: $00
    nop                                           ; $6299: $00
    rlca                                          ; $629A: $07
    nop                                           ; $629B: $00
    rrca                                          ; $629C: $0F
    dec b                                         ; $629D: $05
    rrca                                          ; $629E: $0F
    nop                                           ; $629F: $00
    rst RST_38                                    ; $62A0: $FF
    ld [hl], b                                    ; $62A1: $70
    rst RST_38                                    ; $62A2: $FF
    adc h                                         ; $62A3: $8C
    rst RST_38                                    ; $62A4: $FF
    ld a, h                                       ; $62A5: $7C
    rst RST_38                                    ; $62A6: $FF
    sbc e                                         ; $62A7: $9B
    cp a                                          ; $62A8: $BF

jr_010_62A9:
    ld e, a                                       ; $62A9: $5F
    jp hl                                         ; $62AA: $E9


    cp a                                          ; $62AB: $BF
    ld [hl], $C9                                  ; $62AC: $36 $C9
    rst RST_18                                    ; $62AE: $DF
    jr nz, jr_010_626E                            ; $62AF: $20 $BD

    ld e, d                                       ; $62B1: $5A
    ld a, [hl]                                    ; $62B2: $7E
    add hl, sp                                    ; $62B3: $39
    ld a, l                                       ; $62B4: $7D
    jr c, jr_010_632F                             ; $62B5: $38 $78

    jr nc, jr_010_62A9                            ; $62B7: $30 $F0

    ld h, b                                       ; $62B9: $60
    ldh [$FFC0], a                                ; $62BA: $E0 $C0
    ret nz                                        ; $62BC: $C0

    add b                                         ; $62BD: $80
    add b                                         ; $62BE: $80
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
    ld bc, $0700                                  ; $62D6: $01 $00 $07
    ld bc, $070F                                  ; $62D9: $01 $0F $07
    rra                                           ; $62DC: $1F
    ld [$007F], sp                                ; $62DD: $08 $7F $00
    nop                                           ; $62E0: $00
    nop                                           ; $62E1: $00
    nop                                           ; $62E2: $00
    nop                                           ; $62E3: $00
    nop                                           ; $62E4: $00
    nop                                           ; $62E5: $00
    nop                                           ; $62E6: $00
    nop                                           ; $62E7: $00
    ldh [rP1], a                                  ; $62E8: $E0 $00
    ld hl, sp+$60                                 ; $62EA: $F8 $60
    db $FC                                        ; $62EC: $FC
    ret c                                         ; $62ED: $D8

    cp $34                                        ; $62EE: $FE $34
    cp $10                                        ; $62F0: $FE $10
    rst RST_38                                    ; $62F2: $FF
    ld c, $FF                                     ; $62F3: $0E $FF
    dec de                                        ; $62F5: $1B
    rst RST_38                                    ; $62F6: $FF
    inc de                                        ; $62F7: $13
    rst RST_38                                    ; $62F8: $FF
    ld e, $FF                                     ; $62F9: $1E $FF
    ld a, [de]                                    ; $62FB: $1A
    rst RST_38                                    ; $62FC: $FF
    rrca                                          ; $62FD: $0F
    rst RST_18                                    ; $62FE: $DF
    dec l                                         ; $62FF: $2D
    rst RST_08                                    ; $6300: $CF
    scf                                           ; $6301: $37
    add a                                         ; $6302: $87
    ld a, e                                       ; $6303: $7B
    rrca                                          ; $6304: $0F
    pop af                                        ; $6305: $F1
    rst RST_38                                    ; $6306: $FF
    nop                                           ; $6307: $00
    rrca                                          ; $6308: $0F
    inc b                                         ; $6309: $04
    rrca                                          ; $630A: $0F
    ld b, $0F                                     ; $630B: $06 $0F
    ld b, $0E                                     ; $630D: $06 $0E
    inc b                                         ; $630F: $04
    rra                                           ; $6310: $1F
    inc c                                         ; $6311: $0C
    ccf                                           ; $6312: $3F
    add hl, de                                    ; $6313: $19
    ld a, l                                       ; $6314: $7D
    ld [$50F8], sp                                ; $6315: $08 $F8 $50
    ldh a, [rP1]                                  ; $6318: $F0 $00
    nop                                           ; $631A: $00
    nop                                           ; $631B: $00
    nop                                           ; $631C: $00
    nop                                           ; $631D: $00
    nop                                           ; $631E: $00
    nop                                           ; $631F: $00
    add b                                         ; $6320: $80
    nop                                           ; $6321: $00
    add b                                         ; $6322: $80
    nop                                           ; $6323: $00
    ret nz                                        ; $6324: $C0

    add b                                         ; $6325: $80
    ldh a, [$FF80]                                ; $6326: $F0 $80
    db $FC                                        ; $6328: $FC
    or b                                          ; $6329: $B0
    cp $B4                                        ; $632A: $FE $B4
    cp $D4                                        ; $632C: $FE $D4
    rst RST_38                                    ; $632E: $FF

jr_010_632F:
    ld e, d                                       ; $632F: $5A
    rst RST_38                                    ; $6330: $FF
    jp z, Jump_010_6AFF                           ; $6331: $CA $FF $6A

    rst RST_38                                    ; $6334: $FF
    ld l, d                                       ; $6335: $6A
    ld a, a                                       ; $6336: $7F

jr_010_6337:
    ld a, [hl+]                                   ; $6337: $2A
    ld a, [hl]                                    ; $6338: $7E
    jr z, jr_010_6337                             ; $6339: $28 $FC

jr_010_633B:
    ld l, b                                       ; $633B: $68
    db $FC                                        ; $633C: $FC
    jr z, jr_010_633B                             ; $633D: $28 $FC

    ld c, b                                       ; $633F: $48
    call c, Call_000_3C08                         ; $6340: $DC $08 $3C
    jr @+$7A                                      ; $6343: $18 $78

    nop                                           ; $6345: $00
    ld hl, sp+$50                                 ; $6346: $F8 $50
    ldh a, [rP1]                                  ; $6348: $F0 $00
    nop                                           ; $634A: $00
    nop                                           ; $634B: $00
    nop                                           ; $634C: $00
    nop                                           ; $634D: $00
    nop                                           ; $634E: $00
    nop                                           ; $634F: $00
    nop                                           ; $6350: $00
    nop                                           ; $6351: $00
    nop                                           ; $6352: $00
    nop                                           ; $6353: $00
    nop                                           ; $6354: $00
    nop                                           ; $6355: $00
    nop                                           ; $6356: $00
    nop                                           ; $6357: $00
    nop                                           ; $6358: $00
    nop                                           ; $6359: $00
    nop                                           ; $635A: $00
    nop                                           ; $635B: $00
    nop                                           ; $635C: $00
    nop                                           ; $635D: $00
    nop                                           ; $635E: $00

jr_010_635F:
    nop                                           ; $635F: $00
    add hl, de                                    ; $6360: $19
    nop                                           ; $6361: $00
    ccf                                           ; $6362: $3F
    add hl, bc                                    ; $6363: $09
    ld c, a                                       ; $6364: $4F
    inc [hl]                                      ; $6365: $34
    ei                                            ; $6366: $FB
    ld h, a                                       ; $6367: $67
    db $FC                                        ; $6368: $FC
    ld b, e                                       ; $6369: $43
    ld a, a                                       ; $636A: $7F
    jr jr_010_6394                                ; $636B: $18 $27

    add hl, de                                    ; $636D: $19
    ccf                                           ; $636E: $3F
    nop                                           ; $636F: $00
    ld c, a                                       ; $6370: $4F
    ld [hl-], a                                   ; $6371: $32
    rst RST_08                                    ; $6372: $CF
    inc sp                                        ; $6373: $33
    rst RST_30                                    ; $6374: $F7
    pop bc                                        ; $6375: $C1
    and a                                         ; $6376: $A7
    ld b, c                                       ; $6377: $41
    and $83                                       ; $6378: $E6 $83
    push hl                                       ; $637A: $E5
    ld b, d                                       ; $637B: $42
    inc sp                                        ; $637C: $33
    ldh [rNR30], a                                ; $637D: $E0 $1A
    pop af                                        ; $637F: $F1
    jr nc, jr_010_6382                            ; $6380: $30 $00

jr_010_6382:
    pop af                                        ; $6382: $F1
    jr nz, jr_010_635F                            ; $6383: $20 $DA

    ld h, c                                       ; $6385: $61
    cp a                                          ; $6386: $BF
    jp c, $D8BF                                   ; $6387: $DA $BF $D8

    ld a, a                                       ; $638A: $7F
    cp l                                          ; $638B: $BD
    and $1D                                       ; $638C: $E6 $1D
    and $D9                                       ; $638E: $E6 $D9
    rst RST_08                                    ; $6390: $CF
    or b                                          ; $6391: $B0
    rst RST_38                                    ; $6392: $FF
    inc b                                         ; $6393: $04

jr_010_6394:
    rst RST_38                                    ; $6394: $FF
    db $FC                                        ; $6395: $FC
    rst RST_38                                    ; $6396: $FF
    push bc                                       ; $6397: $C5
    db $DB                                        ; $6398: $DB
    xor l                                         ; $6399: $AD
    ld h, [hl]                                    ; $639A: $66
    db $DB                                        ; $639B: $DB
    cp [hl]                                       ; $639C: $BE
    ld b, e                                       ; $639D: $43
    call z, $E037                                 ; $639E: $CC $37 $E0
    nop                                           ; $63A1: $00
    jr nc, @-$1E                                  ; $63A2: $30 $E0

    ld hl, sp+$10                                 ; $63A4: $F8 $10
    ld hl, sp+$10                                 ; $63A6: $F8 $10
    ld hl, sp-$80                                 ; $63A8: $F8 $80
    ldh [$FF80], a                                ; $63AA: $E0 $80
    ldh a, [rLCDC]                                ; $63AC: $F0 $40
    add sp, $50                                   ; $63AE: $E8 $50
    db $EC                                        ; $63B0: $EC
    ret nc                                        ; $63B1: $D0

    rst RST_38                                    ; $63B2: $FF
    call nz, $CE73                                ; $63B3: $C4 $73 $CE
    ld [hl], e                                    ; $63B6: $73

jr_010_63B7:
    call z, $C06F                                 ; $63B7: $CC $6F $C0
    ld h, a                                       ; $63BA: $67
    jp nz, $C267                                  ; $63BB: $C2 $67 $C2

    ld l, a                                       ; $63BE: $6F
    add $0F                                       ; $63BF: $C6 $0F
    ld hl, sp+$06                                 ; $63C1: $F8 $06
    db $FD                                        ; $63C3: $FD
    dec de                                        ; $63C4: $1B
    and $29                                       ; $63C5: $E6 $29
    rst RST_10                                    ; $63C7: $D7
    ld h, $D9                                     ; $63C8: $26 $D9
    ld b, d                                       ; $63CA: $42
    cp l                                          ; $63CB: $BD
    ld b, d                                       ; $63CC: $42
    cp l                                          ; $63CD: $BD
    ld c, h                                       ; $63CE: $4C
    or e                                          ; $63CF: $B3
    sub b                                         ; $63D0: $90
    ld l, a                                       ; $63D1: $6F
    and b                                         ; $63D2: $A0
    ld e, a                                       ; $63D3: $5F
    ld h, b                                       ; $63D4: $60
    sbc a                                         ; $63D5: $9F
    jr nz, jr_010_63B7                            ; $63D6: $20 $DF

    ldh [$FF1F], a                                ; $63D8: $E0 $1F
    nop                                           ; $63DA: $00
    nop                                           ; $63DB: $00
    nop                                           ; $63DC: $00
    nop                                           ; $63DD: $00
    nop                                           ; $63DE: $00
    nop                                           ; $63DF: $00
    inc a                                         ; $63E0: $3C
    rst RST_00                                    ; $63E1: $C7
    cp $09                                        ; $63E2: $FE $09
    ld a, c                                       ; $63E4: $79
    adc [hl]                                      ; $63E5: $8E
    ld [hl], b                                    ; $63E6: $70
    sbc a                                         ; $63E7: $9F
    cp l                                          ; $63E8: $BD
    ld [de], a                                    ; $63E9: $12
    ldh [c], a                                    ; $63EA: $E2
    cp l                                          ; $63EB: $BD
    ld b, d                                       ; $63EC: $42
    db $FD                                        ; $63ED: $FD
    ld bc, $00FE                                  ; $63EE: $01 $FE $00
    rst RST_38                                    ; $63F1: $FF
    nop                                           ; $63F2: $00
    rst RST_38                                    ; $63F3: $FF
    nop                                           ; $63F4: $00
    rst RST_38                                    ; $63F5: $FF
    nop                                           ; $63F6: $00
    rst RST_38                                    ; $63F7: $FF
    nop                                           ; $63F8: $00
    rst RST_38                                    ; $63F9: $FF
    nop                                           ; $63FA: $00
    rst RST_38                                    ; $63FB: $FF
    nop                                           ; $63FC: $00
    nop                                           ; $63FD: $00
    nop                                           ; $63FE: $00
    nop                                           ; $63FF: $00
    ld l, a                                       ; $6400: $6F
    add $7B                                       ; $6401: $C6 $7B
    adc $FB                                       ; $6403: $CE $FB
    ld c, [hl]                                    ; $6405: $4E
    di                                            ; $6406: $F3
    ld e, [hl]                                    ; $6407: $5E
    ld [hl], e                                    ; $6408: $73
    sbc $33                                       ; $6409: $DE $33
    xor $33                                       ; $640B: $EE $33
    rst RST_28                                    ; $640D: $EF
    jp z, Jump_000_2437                           ; $640E: $CA $37 $24

    db $DB                                        ; $6411: $DB
    ld e, $E1                                     ; $6412: $1E $E1
    ld de, $10EE                                  ; $6414: $11 $EE $10
    rst RST_28                                    ; $6417: $EF
    rra                                           ; $6418: $1F
    ldh [rP1], a                                  ; $6419: $E0 $00
    nop                                           ; $641B: $00
    nop                                           ; $641C: $00
    nop                                           ; $641D: $00
    nop                                           ; $641E: $00
    nop                                           ; $641F: $00
    ld [bc], a                                    ; $6420: $02
    nop                                           ; $6421: $00
    inc bc                                        ; $6422: $03
    nop                                           ; $6423: $00
    inc bc                                        ; $6424: $03
    ld bc, $0103                                  ; $6425: $01 $03 $01
    inc bc                                        ; $6428: $03
    ld bc, $011F                                  ; $6429: $01 $1F $01
    cpl                                           ; $642C: $2F
    ld de, $112F                                  ; $642D: $11 $2F $11
    rla                                           ; $6430: $17
    add hl, bc                                    ; $6431: $09
    rrca                                          ; $6432: $0F
    ld bc, $01C3                                  ; $6433: $01 $C3 $01
    di                                            ; $6436: $F3
    pop bc                                        ; $6437: $C1

jr_010_6438:
    ccf                                           ; $6438: $3F
    pop af                                        ; $6439: $F1
    rrca                                          ; $643A: $0F
    db $FD                                        ; $643B: $FD
    inc bc                                        ; $643C: $03
    rst RST_38                                    ; $643D: $FF
    nop                                           ; $643E: $00
    rst RST_38                                    ; $643F: $FF
    ldh [rP1], a                                  ; $6440: $E0 $00
    pop de                                        ; $6442: $D1
    jr nz, jr_010_6438                            ; $6443: $20 $F3

    ld bc, $43A6                                  ; $6445: $01 $A6 $43
    call z, Call_000_1907                         ; $6448: $CC $07 $19
    rrca                                          ; $644B: $0F
    ld sp, $631F                                  ; $644C: $31 $1F $63
    ld a, $C3                                     ; $644F: $3E $C3
    ld a, [hl]                                    ; $6451: $7E
    add [hl]                                      ; $6452: $86
    db $FC                                        ; $6453: $FC
    ld b, $FC                                     ; $6454: $06 $FC
    inc c                                         ; $6456: $0C
    ld hl, sp+$0C                                 ; $6457: $F8 $0C
    ld hl, sp+$18                                 ; $6459: $F8 $18
    ldh a, [rNR23]                                ; $645B: $F0 $18
    ldh a, [$FFB0]                                ; $645D: $F0 $B0
    ld h, b                                       ; $645F: $60
    ld bc, $02FE                                  ; $6460: $01 $FE $02
    db $FD                                        ; $6463: $FD
    add h                                         ; $6464: $84
    ei                                            ; $6465: $FB
    add a                                         ; $6466: $87
    ld hl, sp+$00                                 ; $6467: $F8 $00
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
    nop                                           ; $647C: $00
    nop                                           ; $647D: $00
    nop                                           ; $647E: $00
    nop                                           ; $647F: $00
    add b                                         ; $6480: $80
    nop                                           ; $6481: $00
    ld h, b                                       ; $6482: $60
    nop                                           ; $6483: $00
    ld a, b                                       ; $6484: $78
    jr nz, jr_010_64C5                            ; $6485: $20 $3E

    jr jr_010_64C0                                ; $6487: $18 $37

    ld e, $19                                     ; $6489: $1E $19
    rrca                                          ; $648B: $0F
    jr jr_010_649D                                ; $648C: $18 $0F

    inc c                                         ; $648E: $0C
    rlca                                          ; $648F: $07
    inc c                                         ; $6490: $0C
    rlca                                          ; $6491: $07
    ld b, $03                                     ; $6492: $06 $03
    ld b, $03                                     ; $6494: $06 $03
    inc bc                                        ; $6496: $03
    ld bc, $0103                                  ; $6497: $01 $03 $01
    ld bc, $0100                                  ; $649A: $01 $00 $01

jr_010_649D:
    nop                                           ; $649D: $00
    nop                                           ; $649E: $00
    nop                                           ; $649F: $00
    nop                                           ; $64A0: $00
    nop                                           ; $64A1: $00
    nop                                           ; $64A2: $00

jr_010_64A3:
    nop                                           ; $64A3: $00
    nop                                           ; $64A4: $00
    nop                                           ; $64A5: $00
    ld [bc], a                                    ; $64A6: $02
    nop                                           ; $64A7: $00
    inc b                                         ; $64A8: $04
    nop                                           ; $64A9: $00
    inc c                                         ; $64AA: $0C
    nop                                           ; $64AB: $00
    jr jr_010_64AE                                ; $64AC: $18 $00

jr_010_64AE:
    jr c, jr_010_64C0                             ; $64AE: $38 $10

    ld [hl], b                                    ; $64B0: $70
    jr nz, jr_010_64A3                            ; $64B1: $20 $F0

    ld h, b                                       ; $64B3: $60
    ldh [$FFC0], a                                ; $64B4: $E0 $C0
    ld h, b                                       ; $64B6: $60
    ret nz                                        ; $64B7: $C0

    ret nz                                        ; $64B8: $C0

    add b                                         ; $64B9: $80
    ret nz                                        ; $64BA: $C0

    add b                                         ; $64BB: $80
    add b                                         ; $64BC: $80
    nop                                           ; $64BD: $00
    add b                                         ; $64BE: $80
    nop                                           ; $64BF: $00

jr_010_64C0:
    or b                                          ; $64C0: $B0
    ld h, b                                       ; $64C1: $60
    nop                                           ; $64C2: $00
    nop                                           ; $64C3: $00
    nop                                           ; $64C4: $00

jr_010_64C5:
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
    nop                                           ; $64D2: $00
    nop                                           ; $64D3: $00
    nop                                           ; $64D4: $00
    nop                                           ; $64D5: $00
    nop                                           ; $64D6: $00
    nop                                           ; $64D7: $00
    nop                                           ; $64D8: $00
    nop                                           ; $64D9: $00
    nop                                           ; $64DA: $00
    nop                                           ; $64DB: $00
    nop                                           ; $64DC: $00
    nop                                           ; $64DD: $00
    nop                                           ; $64DE: $00
    nop                                           ; $64DF: $00
    nop                                           ; $64E0: $00
    nop                                           ; $64E1: $00
    nop                                           ; $64E2: $00
    nop                                           ; $64E3: $00
    inc bc                                        ; $64E4: $03
    nop                                           ; $64E5: $00
    ld b, $01                                     ; $64E6: $06 $01
    add hl, bc                                    ; $64E8: $09
    ld b, $1F                                     ; $64E9: $06 $1F
    inc c                                         ; $64EB: $0C
    rra                                           ; $64EC: $1F
    ld [$030D], sp                                ; $64ED: $08 $0D $03
    rlca                                          ; $64F0: $07
    inc bc                                        ; $64F1: $03
    rlca                                          ; $64F2: $07
    nop                                           ; $64F3: $00
    add hl, bc                                    ; $64F4: $09
    ld b, $19                                     ; $64F5: $06 $19
    ld b, $3E                                     ; $64F7: $06 $3E
    jr jr_010_6577                                ; $64F9: $18 $7C

    jr c, @+$7E                                   ; $64FB: $38 $7C

    jr c, jr_010_6577                             ; $64FD: $38 $78

    jr nz, jr_010_6501                            ; $64FF: $20 $00

jr_010_6501:
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
    nop                                           ; $650C: $00
    nop                                           ; $650D: $00
    ld b, $00                                     ; $650E: $06 $00
    ld a, [hl-]                                   ; $6510: $3A
    inc b                                         ; $6511: $04
    rst RST_30                                    ; $6512: $F7
    inc l                                         ; $6513: $2C
    ld l, h                                       ; $6514: $6C
    sbc e                                         ; $6515: $9B
    sbc [hl]                                      ; $6516: $9E
    ei                                            ; $6517: $FB
    rst RST_38                                    ; $6518: $FF
    ld [hl], a                                    ; $6519: $77
    rst RST_38                                    ; $651A: $FF
    inc bc                                        ; $651B: $03
    rst RST_38                                    ; $651C: $FF
    dec sp                                        ; $651D: $3B
    rst RST_38                                    ; $651E: $FF
    ld d, $00                                     ; $651F: $16 $00
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    inc a                                         ; $6524: $3C
    nop                                           ; $6525: $00
    ld b, [hl]                                    ; $6526: $46
    inc a                                         ; $6527: $3C
    rst RST_38                                    ; $6528: $FF
    ld b, [hl]                                    ; $6529: $46
    rst RST_38                                    ; $652A: $FF
    ld [bc], a                                    ; $652B: $02
    ld e, a                                       ; $652C: $5F
    cp b                                          ; $652D: $B8
    ld a, h                                       ; $652E: $7C
    cp b                                          ; $652F: $B8
    ld a, [$F134]                                 ; $6530: $FA $34 $F1
    ld c, $C9                                     ; $6533: $0E $C9
    add [hl]                                      ; $6535: $86
    rst RST_00                                    ; $6536: $C7
    add b                                         ; $6537: $80
    jp $C381                                      ; $6538: $C3 $81 $C3


    add c                                         ; $653B: $81
    pop bc                                        ; $653C: $C1
    add b                                         ; $653D: $80
    ret nz                                        ; $653E: $C0

    add b                                         ; $653F: $80
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    nop                                           ; $6544: $00
    nop                                           ; $6545: $00
    nop                                           ; $6546: $00
    nop                                           ; $6547: $00
    nop                                           ; $6548: $00
    nop                                           ; $6549: $00
    nop                                           ; $654A: $00
    nop                                           ; $654B: $00
    nop                                           ; $654C: $00
    nop                                           ; $654D: $00
    add b                                         ; $654E: $80
    nop                                           ; $654F: $00
    ret nz                                        ; $6550: $C0

    add b                                         ; $6551: $80
    ldh [$FFC0], a                                ; $6552: $E0 $C0
    ldh [$FFC0], a                                ; $6554: $E0 $C0
    db $FC                                        ; $6556: $FC
    ld h, b                                       ; $6557: $60
    ld a, d                                       ; $6558: $7A
    inc b                                         ; $6559: $04
    ld a, $00                                     ; $655A: $3E $00
    inc d                                         ; $655C: $14
    ld [$0018], sp                                ; $655D: $08 $18 $00
    ldh [rLCDC], a                                ; $6560: $E0 $40
    ret nz                                        ; $6562: $C0

    nop                                           ; $6563: $00
    ret nz                                        ; $6564: $C0

    nop                                           ; $6565: $00
    ret nz                                        ; $6566: $C0

    nop                                           ; $6567: $00

jr_010_6568:
    add e                                         ; $6568: $83
    nop                                           ; $6569: $00
    dec b                                         ; $656A: $05
    ld [bc], a                                    ; $656B: $02
    dec b                                         ; $656C: $05
    inc bc                                        ; $656D: $03
    dec bc                                        ; $656E: $0B
    rlca                                          ; $656F: $07
    dec bc                                        ; $6570: $0B
    rlca                                          ; $6571: $07
    rrca                                          ; $6572: $0F
    ld b, $1E                                     ; $6573: $06 $1E
    inc c                                         ; $6575: $0C
    inc a                                         ; $6576: $3C

jr_010_6577:
    ld [$307C], sp                                ; $6577: $08 $7C $30
    db $FC                                        ; $657A: $FC
    ld a, b                                       ; $657B: $78
    db $FC                                        ; $657C: $FC
    nop                                           ; $657D: $00
    nop                                           ; $657E: $00
    nop                                           ; $657F: $00
    rst RST_38                                    ; $6580: $FF
    ld b, b                                       ; $6581: $40

jr_010_6582:
    rst RST_38                                    ; $6582: $FF
    ld a, a                                       ; $6583: $7F
    rst RST_38                                    ; $6584: $FF
    jr c, jr_010_6582                             ; $6585: $38 $FB

    dec [hl]                                      ; $6587: $35
    rst RST_38                                    ; $6588: $FF
    ld a, e                                       ; $6589: $7B
    rst RST_38                                    ; $658A: $FF
    ld c, b                                       ; $658B: $48
    ld a, a                                       ; $658C: $7F
    ld b, $7F                                     ; $658D: $06 $7F
    jr c, jr_010_6610                             ; $658F: $38 $7F

    nop                                           ; $6591: $00
    adc [hl]                                      ; $6592: $8E
    ld [hl], c                                    ; $6593: $71
    ld c, $F1                                     ; $6594: $0E $F1
    ld sp, $C0C0                                  ; $6596: $31 $C0 $C0
    nop                                           ; $6599: $00
    ret nz                                        ; $659A: $C0

    add b                                         ; $659B: $80
    ret nz                                        ; $659C: $C0

    add b                                         ; $659D: $80
    add b                                         ; $659E: $80
    nop                                           ; $659F: $00
    add b                                         ; $65A0: $80
    nop                                           ; $65A1: $00
    add b                                         ; $65A2: $80
    nop                                           ; $65A3: $00
    ret nz                                        ; $65A4: $C0

    nop                                           ; $65A5: $00
    jr nz, jr_010_6568                            ; $65A6: $20 $C0

    db $10                                        ; $65A8: $10
    ldh [$FFBC], a                                ; $65A9: $E0 $BC
    ld b, b                                       ; $65AB: $40
    ld e, [hl]                                    ; $65AC: $5E
    inc a                                         ; $65AD: $3C
    ld c, [hl]                                    ; $65AE: $4E
    inc a                                         ; $65AF: $3C
    ld h, $1C                                     ; $65B0: $26 $1C
    rra                                           ; $65B2: $1F
    ld b, $07                                     ; $65B3: $06 $07
    inc bc                                        ; $65B5: $03
    inc bc                                        ; $65B6: $03
    nop                                           ; $65B7: $00
    inc bc                                        ; $65B8: $03
    ld bc, $0103                                  ; $65B9: $01 $03 $01
    inc bc                                        ; $65BC: $03
    nop                                           ; $65BD: $00
    nop                                           ; $65BE: $00
    nop                                           ; $65BF: $00
    inc bc                                        ; $65C0: $03
    nop                                           ; $65C1: $00
    dec b                                         ; $65C2: $05
    ld [bc], a                                    ; $65C3: $02
    dec b                                         ; $65C4: $05
    ld [bc], a                                    ; $65C5: $02
    ld [bc], a                                    ; $65C6: $02
    ld bc, $0001                                  ; $65C7: $01 $01 $00
    nop                                           ; $65CA: $00
    nop                                           ; $65CB: $00
    nop                                           ; $65CC: $00
    nop                                           ; $65CD: $00
    nop                                           ; $65CE: $00
    nop                                           ; $65CF: $00
    nop                                           ; $65D0: $00
    nop                                           ; $65D1: $00
    nop                                           ; $65D2: $00
    nop                                           ; $65D3: $00
    nop                                           ; $65D4: $00
    nop                                           ; $65D5: $00
    nop                                           ; $65D6: $00
    nop                                           ; $65D7: $00
    nop                                           ; $65D8: $00
    nop                                           ; $65D9: $00
    nop                                           ; $65DA: $00
    nop                                           ; $65DB: $00
    nop                                           ; $65DC: $00
    nop                                           ; $65DD: $00
    nop                                           ; $65DE: $00
    nop                                           ; $65DF: $00
    add b                                         ; $65E0: $80
    nop                                           ; $65E1: $00
    ret nz                                        ; $65E2: $C0

    nop                                           ; $65E3: $00
    ldh [$FFC0], a                                ; $65E4: $E0 $C0
    ldh a, [$FFE0]                                ; $65E6: $F0 $E0
    ldh a, [rP1]                                  ; $65E8: $F0 $00
    nop                                           ; $65EA: $00
    nop                                           ; $65EB: $00
    nop                                           ; $65EC: $00
    nop                                           ; $65ED: $00
    nop                                           ; $65EE: $00
    nop                                           ; $65EF: $00
    nop                                           ; $65F0: $00
    nop                                           ; $65F1: $00
    nop                                           ; $65F2: $00
    nop                                           ; $65F3: $00
    nop                                           ; $65F4: $00
    nop                                           ; $65F5: $00
    nop                                           ; $65F6: $00
    nop                                           ; $65F7: $00
    nop                                           ; $65F8: $00
    nop                                           ; $65F9: $00
    nop                                           ; $65FA: $00
    nop                                           ; $65FB: $00
    nop                                           ; $65FC: $00
    nop                                           ; $65FD: $00
    nop                                           ; $65FE: $00
    nop                                           ; $65FF: $00
    nop                                           ; $6600: $00
    nop                                           ; $6601: $00
    nop                                           ; $6602: $00
    nop                                           ; $6603: $00
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    nop                                           ; $6606: $00
    nop                                           ; $6607: $00
    nop                                           ; $6608: $00
    nop                                           ; $6609: $00
    inc b                                         ; $660A: $04
    nop                                           ; $660B: $00
    inc b                                         ; $660C: $04
    nop                                           ; $660D: $00
    ld c, $04                                     ; $660E: $0E $04

jr_010_6610:
    ld c, $04                                     ; $6610: $0E $04
    dec sp                                        ; $6612: $3B
    ld c, $F1                                     ; $6613: $0E $F1
    ccf                                           ; $6615: $3F
    dec sp                                        ; $6616: $3B
    ld c, $0E                                     ; $6617: $0E $0E
    inc b                                         ; $6619: $04
    ld c, $04                                     ; $661A: $0E $04
    inc b                                         ; $661C: $04
    nop                                           ; $661D: $00
    inc b                                         ; $661E: $04
    nop                                           ; $661F: $00
    nop                                           ; $6620: $00
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
    ld [$F500], a                                 ; $6632: $EA $00 $F5
    adc d                                         ; $6635: $8A
    rst RST_38                                    ; $6636: $FF
    ld l, d                                       ; $6637: $6A
    ld [$0000], a                                 ; $6638: $EA $00 $00
    nop                                           ; $663B: $00
    nop                                           ; $663C: $00
    nop                                           ; $663D: $00
    nop                                           ; $663E: $00
    nop                                           ; $663F: $00
    nop                                           ; $6640: $00
    nop                                           ; $6641: $00
    nop                                           ; $6642: $00
    nop                                           ; $6643: $00
    nop                                           ; $6644: $00
    nop                                           ; $6645: $00
    nop                                           ; $6646: $00
    nop                                           ; $6647: $00
    nop                                           ; $6648: $00
    nop                                           ; $6649: $00
    nop                                           ; $664A: $00
    nop                                           ; $664B: $00
    nop                                           ; $664C: $00
    nop                                           ; $664D: $00
    ld a, a                                       ; $664E: $7F
    nop                                           ; $664F: $00
    pop bc                                        ; $6650: $C1
    ld a, a                                       ; $6651: $7F
    nop                                           ; $6652: $00
    rst RST_38                                    ; $6653: $FF
    rst RST_38                                    ; $6654: $FF
    rst RST_38                                    ; $6655: $FF
    rst RST_38                                    ; $6656: $FF
    nop                                           ; $6657: $00
    inc hl                                        ; $6658: $23
    inc e                                         ; $6659: $1C
    rra                                           ; $665A: $1F
    nop                                           ; $665B: $00
    inc de                                        ; $665C: $13
    inc c                                         ; $665D: $0C
    ld c, $00                                     ; $665E: $0E $00
    add b                                         ; $6660: $80
    nop                                           ; $6661: $00
    pop bc                                        ; $6662: $C1
    add b                                         ; $6663: $80
    add e                                         ; $6664: $83
    ld bc, $0037                                  ; $6665: $01 $37 $00
    ld hl, sp+$37                                 ; $6668: $F8 $37
    ld hl, sp-$09                                 ; $666A: $F8 $F7
    rst RST_30                                    ; $666C: $F7
    nop                                           ; $666D: $00
    nop                                           ; $666E: $00
    nop                                           ; $666F: $00
    nop                                           ; $6670: $00
    nop                                           ; $6671: $00
    nop                                           ; $6672: $00
    nop                                           ; $6673: $00
    nop                                           ; $6674: $00
    nop                                           ; $6675: $00
    nop                                           ; $6676: $00
    nop                                           ; $6677: $00
    nop                                           ; $6678: $00
    nop                                           ; $6679: $00
    nop                                           ; $667A: $00
    nop                                           ; $667B: $00
    nop                                           ; $667C: $00
    nop                                           ; $667D: $00
    nop                                           ; $667E: $00
    nop                                           ; $667F: $00
    ld bc, $0300                                  ; $6680: $01 $00 $03
    ld bc, $0307                                  ; $6683: $01 $07 $03
    rlca                                          ; $6686: $07
    nop                                           ; $6687: $00
    nop                                           ; $6688: $00
    nop                                           ; $6689: $00
    nop                                           ; $668A: $00
    nop                                           ; $668B: $00
    nop                                           ; $668C: $00
    nop                                           ; $668D: $00
    nop                                           ; $668E: $00
    nop                                           ; $668F: $00
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    nop                                           ; $6692: $00
    nop                                           ; $6693: $00
    nop                                           ; $6694: $00
    nop                                           ; $6695: $00
    nop                                           ; $6696: $00
    nop                                           ; $6697: $00
    nop                                           ; $6698: $00
    nop                                           ; $6699: $00
    nop                                           ; $669A: $00
    nop                                           ; $669B: $00
    nop                                           ; $669C: $00
    nop                                           ; $669D: $00
    nop                                           ; $669E: $00
    nop                                           ; $669F: $00
    nop                                           ; $66A0: $00
    nop                                           ; $66A1: $00
    nop                                           ; $66A2: $00
    nop                                           ; $66A3: $00
    nop                                           ; $66A4: $00
    nop                                           ; $66A5: $00
    nop                                           ; $66A6: $00
    nop                                           ; $66A7: $00
    nop                                           ; $66A8: $00
    nop                                           ; $66A9: $00
    nop                                           ; $66AA: $00
    nop                                           ; $66AB: $00
    nop                                           ; $66AC: $00
    nop                                           ; $66AD: $00
    nop                                           ; $66AE: $00
    nop                                           ; $66AF: $00
    nop                                           ; $66B0: $00
    nop                                           ; $66B1: $00
    nop                                           ; $66B2: $00
    nop                                           ; $66B3: $00
    nop                                           ; $66B4: $00
    nop                                           ; $66B5: $00
    nop                                           ; $66B6: $00
    nop                                           ; $66B7: $00
    nop                                           ; $66B8: $00
    nop                                           ; $66B9: $00
    rlca                                          ; $66BA: $07
    nop                                           ; $66BB: $00
    rra                                           ; $66BC: $1F
    rlca                                          ; $66BD: $07
    rlca                                          ; $66BE: $07
    nop                                           ; $66BF: $00
    ld c, $04                                     ; $66C0: $0E $04
    ld a, [bc]                                    ; $66C2: $0A
    inc b                                         ; $66C3: $04
    dec de                                        ; $66C4: $1B
    ld c, $1B                                     ; $66C5: $0E $1B
    ld c, $71                                     ; $66C7: $0E $71
    ld c, $E0                                     ; $66C9: $0E $E0
    ld a, a                                       ; $66CB: $7F
    nop                                           ; $66CC: $00
    rst RST_38                                    ; $66CD: $FF
    ldh [$FF7F], a                                ; $66CE: $E0 $7F
    pop af                                        ; $66D0: $F1
    ld c, $1B                                     ; $66D1: $0E $1B
    ld c, $1B                                     ; $66D3: $0E $1B
    ld c, $0A                                     ; $66D5: $0E $0A
    inc b                                         ; $66D7: $04
    ld c, $04                                     ; $66D8: $0E $04
    ld c, $04                                     ; $66DA: $0E $04
    inc b                                         ; $66DC: $04
    nop                                           ; $66DD: $00
    inc b                                         ; $66DE: $04
    nop                                           ; $66DF: $00
    nop                                           ; $66E0: $00
    nop                                           ; $66E1: $00
    nop                                           ; $66E2: $00
    nop                                           ; $66E3: $00
    nop                                           ; $66E4: $00
    nop                                           ; $66E5: $00
    nop                                           ; $66E6: $00
    nop                                           ; $66E7: $00
    nop                                           ; $66E8: $00
    nop                                           ; $66E9: $00
    nop                                           ; $66EA: $00
    nop                                           ; $66EB: $00
    nop                                           ; $66EC: $00
    nop                                           ; $66ED: $00
    nop                                           ; $66EE: $00
    nop                                           ; $66EF: $00
    nop                                           ; $66F0: $00
    nop                                           ; $66F1: $00
    nop                                           ; $66F2: $00
    nop                                           ; $66F3: $00
    nop                                           ; $66F4: $00
    nop                                           ; $66F5: $00
    ldh [rP1], a                                  ; $66F6: $E0 $00
    cp $C0                                        ; $66F8: $FE $C0
    rra                                           ; $66FA: $1F
    db $FC                                        ; $66FB: $FC
    rst RST_38                                    ; $66FC: $FF
    jp nz, Jump_000_00EA                          ; $66FD: $C2 $EA $00

    ld a, a                                       ; $6700: $7F
    nop                                           ; $6701: $00
    pop bc                                        ; $6702: $C1
    ld a, a                                       ; $6703: $7F
    nop                                           ; $6704: $00
    rst RST_38                                    ; $6705: $FF
    rst RST_38                                    ; $6706: $FF
    rst RST_38                                    ; $6707: $FF
    rst RST_38                                    ; $6708: $FF
    nop                                           ; $6709: $00
    inc hl                                        ; $670A: $23
    inc e                                         ; $670B: $1C
    rra                                           ; $670C: $1F
    nop                                           ; $670D: $00
    inc de                                        ; $670E: $13
    inc c                                         ; $670F: $0C
    ld c, $00                                     ; $6710: $0E $00
    nop                                           ; $6712: $00
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    nop                                           ; $6715: $00
    nop                                           ; $6716: $00
    nop                                           ; $6717: $00
    nop                                           ; $6718: $00
    nop                                           ; $6719: $00
    nop                                           ; $671A: $00
    nop                                           ; $671B: $00
    nop                                           ; $671C: $00
    nop                                           ; $671D: $00
    nop                                           ; $671E: $00
    nop                                           ; $671F: $00
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
    nop                                           ; $672B: $00
    nop                                           ; $672C: $00
    nop                                           ; $672D: $00
    nop                                           ; $672E: $00
    nop                                           ; $672F: $00
    nop                                           ; $6730: $00
    nop                                           ; $6731: $00
    add b                                         ; $6732: $80
    nop                                           ; $6733: $00
    pop bc                                        ; $6734: $C1
    add b                                         ; $6735: $80
    add e                                         ; $6736: $83
    ld bc, $0037                                  ; $6737: $01 $37 $00
    ld hl, sp+$37                                 ; $673A: $F8 $37
    ld hl, sp-$09                                 ; $673C: $F8 $F7
    rst RST_30                                    ; $673E: $F7
    nop                                           ; $673F: $00
    ld bc, $0300                                  ; $6740: $01 $00 $03
    ld bc, $0307                                  ; $6743: $01 $07 $03
    rlca                                          ; $6746: $07
    nop                                           ; $6747: $00
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    nop                                           ; $674A: $00
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
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    nop                                           ; $6764: $00
    nop                                           ; $6765: $00
    nop                                           ; $6766: $00
    nop                                           ; $6767: $00
    nop                                           ; $6768: $00
    nop                                           ; $6769: $00
    nop                                           ; $676A: $00
    nop                                           ; $676B: $00
    nop                                           ; $676C: $00
    nop                                           ; $676D: $00
    nop                                           ; $676E: $00
    nop                                           ; $676F: $00
    nop                                           ; $6770: $00
    nop                                           ; $6771: $00
    nop                                           ; $6772: $00
    nop                                           ; $6773: $00
    nop                                           ; $6774: $00
    nop                                           ; $6775: $00
    nop                                           ; $6776: $00
    nop                                           ; $6777: $00
    nop                                           ; $6778: $00
    nop                                           ; $6779: $00
    inc b                                         ; $677A: $04
    nop                                           ; $677B: $00
    inc b                                         ; $677C: $04
    nop                                           ; $677D: $00
    ld c, $04                                     ; $677E: $0E $04
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    nop                                           ; $6784: $00
    nop                                           ; $6785: $00
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    nop                                           ; $6788: $00
    nop                                           ; $6789: $00
    nop                                           ; $678A: $00
    nop                                           ; $678B: $00
    nop                                           ; $678C: $00
    nop                                           ; $678D: $00
    nop                                           ; $678E: $00
    nop                                           ; $678F: $00
    nop                                           ; $6790: $00
    nop                                           ; $6791: $00
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    nop                                           ; $6794: $00
    nop                                           ; $6795: $00
    nop                                           ; $6796: $00
    nop                                           ; $6797: $00
    ld [$1500], a                                 ; $6798: $EA $00 $15
    ld [$EAFF], a                                 ; $679B: $EA $FF $EA
    ld [$0000], a                                 ; $679E: $EA $00 $00
    nop                                           ; $67A1: $00
    nop                                           ; $67A2: $00
    nop                                           ; $67A3: $00
    nop                                           ; $67A4: $00
    nop                                           ; $67A5: $00
    nop                                           ; $67A6: $00
    nop                                           ; $67A7: $00
    nop                                           ; $67A8: $00
    nop                                           ; $67A9: $00
    nop                                           ; $67AA: $00
    nop                                           ; $67AB: $00
    nop                                           ; $67AC: $00
    nop                                           ; $67AD: $00
    ld a, a                                       ; $67AE: $7F
    nop                                           ; $67AF: $00
    pop bc                                        ; $67B0: $C1
    ld a, a                                       ; $67B1: $7F
    nop                                           ; $67B2: $00
    rst RST_38                                    ; $67B3: $FF
    rst RST_38                                    ; $67B4: $FF
    rst RST_38                                    ; $67B5: $FF
    rst RST_38                                    ; $67B6: $FF
    nop                                           ; $67B7: $00
    inc hl                                        ; $67B8: $23
    inc e                                         ; $67B9: $1C
    rra                                           ; $67BA: $1F
    nop                                           ; $67BB: $00
    inc de                                        ; $67BC: $13
    inc c                                         ; $67BD: $0C
    ld c, $00                                     ; $67BE: $0E $00
    nop                                           ; $67C0: $00
    nop                                           ; $67C1: $00
    nop                                           ; $67C2: $00
    nop                                           ; $67C3: $00
    nop                                           ; $67C4: $00
    nop                                           ; $67C5: $00
    nop                                           ; $67C6: $00
    nop                                           ; $67C7: $00
    nop                                           ; $67C8: $00
    nop                                           ; $67C9: $00
    nop                                           ; $67CA: $00
    nop                                           ; $67CB: $00
    nop                                           ; $67CC: $00
    nop                                           ; $67CD: $00
    nop                                           ; $67CE: $00
    nop                                           ; $67CF: $00
    add b                                         ; $67D0: $80
    nop                                           ; $67D1: $00
    pop bc                                        ; $67D2: $C1
    add b                                         ; $67D3: $80
    add e                                         ; $67D4: $83
    ld bc, $0037                                  ; $67D5: $01 $37 $00
    ld hl, sp+$37                                 ; $67D8: $F8 $37
    ld hl, sp-$09                                 ; $67DA: $F8 $F7
    rst RST_30                                    ; $67DC: $F7
    nop                                           ; $67DD: $00
    nop                                           ; $67DE: $00
    nop                                           ; $67DF: $00
    nop                                           ; $67E0: $00
    nop                                           ; $67E1: $00
    ld bc, $0100                                  ; $67E2: $01 $00 $01
    nop                                           ; $67E5: $00
    nop                                           ; $67E6: $00
    nop                                           ; $67E7: $00
    nop                                           ; $67E8: $00
    nop                                           ; $67E9: $00
    nop                                           ; $67EA: $00
    nop                                           ; $67EB: $00
    nop                                           ; $67EC: $00
    nop                                           ; $67ED: $00
    nop                                           ; $67EE: $00
    nop                                           ; $67EF: $00
    nop                                           ; $67F0: $00
    nop                                           ; $67F1: $00
    nop                                           ; $67F2: $00
    nop                                           ; $67F3: $00
    nop                                           ; $67F4: $00
    nop                                           ; $67F5: $00
    nop                                           ; $67F6: $00
    nop                                           ; $67F7: $00
    nop                                           ; $67F8: $00
    nop                                           ; $67F9: $00
    nop                                           ; $67FA: $00
    nop                                           ; $67FB: $00
    nop                                           ; $67FC: $00
    nop                                           ; $67FD: $00
    nop                                           ; $67FE: $00
    nop                                           ; $67FF: $00
    ld bc, $0300                                  ; $6800: $01 $00 $03
    ld bc, $0307                                  ; $6803: $01 $07 $03
    rlca                                          ; $6806: $07
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
    nop                                           ; $6818: $00
    nop                                           ; $6819: $00
    nop                                           ; $681A: $00
    nop                                           ; $681B: $00
    nop                                           ; $681C: $00
    nop                                           ; $681D: $00
    nop                                           ; $681E: $00
    nop                                           ; $681F: $00
    ld [$1700], sp                                ; $6820: $08 $00 $17
    ld [$0A17], sp                                ; $6823: $08 $17 $0A
    ld d, $09                                     ; $6826: $16 $09
    ld sp, hl                                     ; $6828: $F9
    rrca                                          ; $6829: $0F
    rra                                           ; $682A: $1F
    or $FE                                        ; $682B: $F6 $FE
    pop bc                                        ; $682D: $C1
    rst RST_18                                    ; $682E: $DF
    ld [hl], $9F                                  ; $682F: $36 $9F
    ld [hl], d                                    ; $6831: $72
    rst RST_38                                    ; $6832: $FF
    ld [hl], h                                    ; $6833: $74
    rst RST_38                                    ; $6834: $FF
    scf                                           ; $6835: $37
    ccf                                           ; $6836: $3F
    inc b                                         ; $6837: $04
    rrca                                          ; $6838: $0F
    ld b, $0F                                     ; $6839: $06 $0F
    rlca                                          ; $683B: $07
    rrca                                          ; $683C: $0F
    inc b                                         ; $683D: $04
    rlca                                          ; $683E: $07
    ld bc, $0060                                  ; $683F: $01 $60 $00
    and b                                         ; $6842: $A0
    ld b, b                                       ; $6843: $40
    ld h, b                                       ; $6844: $60
    ret nz                                        ; $6845: $C0

    sbc $A0                                       ; $6846: $DE $A0
    db $D3                                        ; $6848: $D3
    ld l, [hl]                                    ; $6849: $6E
    rst RST_28                                    ; $684A: $EF
    ld [hl], a                                    ; $684B: $77
    rst RST_28                                    ; $684C: $EF
    ld [hl], c                                    ; $684D: $71
    db $FD                                        ; $684E: $FD
    and $FF                                       ; $684F: $E6 $FF
    jp nz, Jump_000_0AFF                          ; $6851: $C2 $FF $0A

    cp $F8                                        ; $6854: $FE $F8
    db $FD                                        ; $6856: $FD
    ld [hl], d                                    ; $6857: $72
    ld a, l                                       ; $6858: $7D
    or d                                          ; $6859: $B2
    cp $78                                        ; $685A: $FE $78
    rst RST_38                                    ; $685C: $FF
    ld c, b                                       ; $685D: $48
    rst RST_38                                    ; $685E: $FF
    add a                                         ; $685F: $87
    add b                                         ; $6860: $80
    nop                                           ; $6861: $00
    add b                                         ; $6862: $80
    nop                                           ; $6863: $00
    add b                                         ; $6864: $80
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    nop                                           ; $6867: $00
    nop                                           ; $6868: $00
    nop                                           ; $6869: $00
    nop                                           ; $686A: $00
    nop                                           ; $686B: $00
    jr nc, jr_010_686E                            ; $686C: $30 $00

jr_010_686E:
    ld c, b                                       ; $686E: $48
    jr nc, jr_010_68E9                            ; $686F: $30 $78

    nop                                           ; $6871: $00
    add sp, $10                                   ; $6872: $E8 $10
    ldh a, [rP1]                                  ; $6874: $F0 $00
    ldh [rP1], a                                  ; $6876: $E0 $00
    nop                                           ; $6878: $00
    nop                                           ; $6879: $00
    nop                                           ; $687A: $00
    nop                                           ; $687B: $00
    nop                                           ; $687C: $00
    nop                                           ; $687D: $00
    nop                                           ; $687E: $00
    nop                                           ; $687F: $00
    rlca                                          ; $6880: $07
    nop                                           ; $6881: $00
    rlca                                          ; $6882: $07
    nop                                           ; $6883: $00
    add hl, bc                                    ; $6884: $09

jr_010_6885:
    ld b, $08                                     ; $6885: $06 $08
    rlca                                          ; $6887: $07
    ld [$1F07], sp                                ; $6888: $08 $07 $1F
    nop                                           ; $688B: $00
    dec a                                         ; $688C: $3D
    ld e, $39                                     ; $688D: $1E $39
    ld e, $32                                     ; $688F: $1E $32
    inc e                                         ; $6891: $1C
    ld a, h                                       ; $6892: $7C
    jr nc, jr_010_6885                            ; $6893: $30 $F0

    ld h, b                                       ; $6895: $60
    ldh [rP1], a                                  ; $6896: $E0 $00
    ldh [$FFC0], a                                ; $6898: $E0 $C0
    ldh [$FFC0], a                                ; $689A: $E0 $C0
    ret nz                                        ; $689C: $C0

    nop                                           ; $689D: $00
    nop                                           ; $689E: $00
    nop                                           ; $689F: $00
    rst RST_38                                    ; $68A0: $FF
    ld [hl], b                                    ; $68A1: $70
    ld hl, sp+$00                                 ; $68A2: $F8 $00
    add sp, $10                                   ; $68A4: $E8 $10
    call nz, $C338                                ; $68A6: $C4 $38 $C3
    inc a                                         ; $68A9: $3C
    ld [hl-], a                                   ; $68AA: $32
    dec c                                         ; $68AB: $0D
    ld c, $03                                     ; $68AC: $0E $03
    rrca                                          ; $68AE: $0F
    rlca                                          ; $68AF: $07
    rrca                                          ; $68B0: $0F
    rlca                                          ; $68B1: $07
    rlca                                          ; $68B2: $07
    ld bc, $0001                                  ; $68B3: $01 $01 $00
    nop                                           ; $68B6: $00
    nop                                           ; $68B7: $00
    nop                                           ; $68B8: $00
    nop                                           ; $68B9: $00
    nop                                           ; $68BA: $00
    nop                                           ; $68BB: $00
    nop                                           ; $68BC: $00
    nop                                           ; $68BD: $00
    nop                                           ; $68BE: $00
    nop                                           ; $68BF: $00
    add b                                         ; $68C0: $80
    nop                                           ; $68C1: $00
    add b                                         ; $68C2: $80
    nop                                           ; $68C3: $00
    ld b, b                                       ; $68C4: $40
    add b                                         ; $68C5: $80
    ld b, b                                       ; $68C6: $40
    add b                                         ; $68C7: $80
    ret nz                                        ; $68C8: $C0

    add b                                         ; $68C9: $80
    ldh [$FFC0], a                                ; $68CA: $E0 $C0
    ldh a, [rLCDC]                                ; $68CC: $F0 $40
    ld hl, sp+$30                                 ; $68CE: $F8 $30
    db $FC                                        ; $68D0: $FC
    ld a, b                                       ; $68D1: $78
    db $FC                                        ; $68D2: $FC
    nop                                           ; $68D3: $00
    nop                                           ; $68D4: $00
    nop                                           ; $68D5: $00
    nop                                           ; $68D6: $00
    nop                                           ; $68D7: $00
    nop                                           ; $68D8: $00
    nop                                           ; $68D9: $00
    nop                                           ; $68DA: $00
    nop                                           ; $68DB: $00
    nop                                           ; $68DC: $00
    nop                                           ; $68DD: $00
    nop                                           ; $68DE: $00
    nop                                           ; $68DF: $00
    nop                                           ; $68E0: $00
    nop                                           ; $68E1: $00
    nop                                           ; $68E2: $00
    nop                                           ; $68E3: $00
    nop                                           ; $68E4: $00
    nop                                           ; $68E5: $00
    nop                                           ; $68E6: $00
    nop                                           ; $68E7: $00
    nop                                           ; $68E8: $00

jr_010_68E9:
    nop                                           ; $68E9: $00
    nop                                           ; $68EA: $00
    nop                                           ; $68EB: $00
    nop                                           ; $68EC: $00
    nop                                           ; $68ED: $00
    nop                                           ; $68EE: $00
    nop                                           ; $68EF: $00
    nop                                           ; $68F0: $00
    nop                                           ; $68F1: $00
    nop                                           ; $68F2: $00
    nop                                           ; $68F3: $00
    nop                                           ; $68F4: $00
    nop                                           ; $68F5: $00
    nop                                           ; $68F6: $00
    nop                                           ; $68F7: $00
    rlca                                          ; $68F8: $07
    nop                                           ; $68F9: $00
    ld [$0F07], sp                                ; $68FA: $08 $07 $0F
    rlca                                          ; $68FD: $07
    rlca                                          ; $68FE: $07
    nop                                           ; $68FF: $00
    nop                                           ; $6900: $00
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
    inc bc                                        ; $690E: $03
    nop                                           ; $690F: $00
    ld d, [hl]                                    ; $6910: $56
    inc bc                                        ; $6911: $03
    xor b                                         ; $6912: $A8
    ld d, a                                       ; $6913: $57
    rst RST_38                                    ; $6914: $FF
    ld d, a                                       ; $6915: $57
    ld d, a                                       ; $6916: $57
    nop                                           ; $6917: $00
    ld bc, $0000                                  ; $6918: $01 $00 $00
    nop                                           ; $691B: $00
    nop                                           ; $691C: $00
    nop                                           ; $691D: $00
    nop                                           ; $691E: $00
    nop                                           ; $691F: $00
    nop                                           ; $6920: $00
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    nop                                           ; $6923: $00
    nop                                           ; $6924: $00
    nop                                           ; $6925: $00
    nop                                           ; $6926: $00
    nop                                           ; $6927: $00
    nop                                           ; $6928: $00
    nop                                           ; $6929: $00
    nop                                           ; $692A: $00
    nop                                           ; $692B: $00
    nop                                           ; $692C: $00
    nop                                           ; $692D: $00
    ld hl, sp+$00                                 ; $692E: $F8 $00
    inc c                                         ; $6930: $0C
    ld hl, sp+$06                                 ; $6931: $F8 $06
    db $FC                                        ; $6933: $FC
    db $FC                                        ; $6934: $FC
    ld hl, sp-$05                                 ; $6935: $F8 $FB
    nop                                           ; $6937: $00
    rra                                           ; $6938: $1F
    pop hl                                        ; $6939: $E1
    rst RST_38                                    ; $693A: $FF
    rlca                                          ; $693B: $07
    sbc a                                         ; $693C: $9F
    ld h, b                                       ; $693D: $60
    ld [hl], b                                    ; $693E: $70
    nop                                           ; $693F: $00
    nop                                           ; $6940: $00
    nop                                           ; $6941: $00
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    nop                                           ; $6944: $00
    nop                                           ; $6945: $00
    nop                                           ; $6946: $00
    nop                                           ; $6947: $00
    nop                                           ; $6948: $00
    nop                                           ; $6949: $00
    ld bc, $0100                                  ; $694A: $01 $00 $01
    nop                                           ; $694D: $00
    ld bc, $0F00                                  ; $694E: $01 $00 $0F
    nop                                           ; $6951: $00
    ld de, $3F0F                                  ; $6952: $11 $0F $3F
    inc e                                         ; $6955: $1C
    db $FD                                        ; $6956: $FD
    inc bc                                        ; $6957: $03
    ret                                           ; $6958: $C9


    or a                                          ; $6959: $B7
    rst RST_08                                    ; $695A: $CF
    or a                                          ; $695B: $B7
    rst RST_38                                    ; $695C: $FF
    inc bc                                        ; $695D: $03
    inc bc                                        ; $695E: $03
    nop                                           ; $695F: $00
    add [hl]                                      ; $6960: $86
    nop                                           ; $6961: $00
    ld a, d                                       ; $6962: $7A
    add h                                         ; $6963: $84
    halt                                          ; $6964: $76
    xor h                                         ; $6965: $AC
    ld l, l                                       ; $6966: $6D
    sbc d                                         ; $6967: $9A
    sbc l                                         ; $6968: $9D
    or $FE                                        ; $6969: $F6 $FE
    ld h, a                                       ; $696B: $67
    xor $17                                       ; $696C: $EE $17
    rst RST_38                                    ; $696E: $FF
    ld l, [hl]                                    ; $696F: $6E
    rst RST_38                                    ; $6970: $FF
    inc l                                         ; $6971: $2C
    rst RST_38                                    ; $6972: $FF
    ld b, b                                       ; $6973: $40
    rst RST_38                                    ; $6974: $FF
    ld a, a                                       ; $6975: $7F
    rst RST_38                                    ; $6976: $FF
    ld b, a                                       ; $6977: $47
    rst RST_30                                    ; $6978: $F7
    ld l, e                                       ; $6979: $6B
    rst RST_38                                    ; $697A: $FF
    ld [hl], a                                    ; $697B: $77
    rst RST_38                                    ; $697C: $FF
    ld b, h                                       ; $697D: $44
    rst RST_38                                    ; $697E: $FF
    jr jr_010_6981                                ; $697F: $18 $00

jr_010_6981:
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    nop                                           ; $6984: $00
    nop                                           ; $6985: $00
    ldh [rP1], a                                  ; $6986: $E0 $00
    jr nc, @-$1E                                  ; $6988: $30 $E0

    ld hl, sp+$70                                 ; $698A: $F8 $70
    ld hl, sp+$10                                 ; $698C: $F8 $10
    ret c                                         ; $698E: $D8

    ld h, b                                       ; $698F: $60

jr_010_6990:
    ldh a, [rNR41]                                ; $6990: $F0 $20
    ldh a, [$FFA0]                                ; $6992: $F0 $A0
    ldh [$FF80], a                                ; $6994: $E0 $80
    sub $20                                       ; $6996: $D6 $20
    jp hl                                         ; $6998: $E9


    ld b, $CF                                     ; $6999: $06 $CF
    add b                                         ; $699B: $80
    db $FD                                        ; $699C: $FD
    add d                                         ; $699D: $82
    cp $60                                        ; $699E: $FE $60
    ld bc, $0300                                  ; $69A0: $01 $00 $03
    nop                                           ; $69A3: $00
    rlca                                          ; $69A4: $07
    inc bc                                        ; $69A5: $03
    rlca                                          ; $69A6: $07
    inc bc                                        ; $69A7: $03
    ld b, $03                                     ; $69A8: $06 $03

jr_010_69AA:
    rrca                                          ; $69AA: $0F
    ld b, $1E                                     ; $69AB: $06 $1E
    inc c                                         ; $69AD: $0C
    inc a                                         ; $69AE: $3C

jr_010_69AF:
    nop                                           ; $69AF: $00
    ld a, h                                       ; $69B0: $7C
    jr c, jr_010_69AF                             ; $69B1: $38 $FC

    ld a, b                                       ; $69B3: $78
    ld hl, sp+$00                                 ; $69B4: $F8 $00
    nop                                           ; $69B6: $00
    nop                                           ; $69B7: $00
    nop                                           ; $69B8: $00
    nop                                           ; $69B9: $00
    nop                                           ; $69BA: $00
    nop                                           ; $69BB: $00

jr_010_69BC:
    nop                                           ; $69BC: $00
    nop                                           ; $69BD: $00
    nop                                           ; $69BE: $00
    nop                                           ; $69BF: $00
    ld a, a                                       ; $69C0: $7F
    inc bc                                        ; $69C1: $03
    ld a, a                                       ; $69C2: $7F
    nop                                           ; $69C3: $00
    sbc [hl]                                      ; $69C4: $9E
    ld h, c                                       ; $69C5: $61
    adc h                                         ; $69C6: $8C
    ld [hl], e                                    ; $69C7: $73
    inc d                                         ; $69C8: $14
    db $E3                                        ; $69C9: $E3

jr_010_69CA:
    db $E3                                        ; $69CA: $E3
    nop                                           ; $69CB: $00
    and b                                         ; $69CC: $A0
    ret nz                                        ; $69CD: $C0

    jr nz, jr_010_6990                            ; $69CE: $20 $C0

    ld b, b                                       ; $69D0: $40
    add b                                         ; $69D1: $80
    add b                                         ; $69D2: $80
    nop                                           ; $69D3: $00
    nop                                           ; $69D4: $00
    nop                                           ; $69D5: $00
    nop                                           ; $69D6: $00
    nop                                           ; $69D7: $00
    nop                                           ; $69D8: $00
    nop                                           ; $69D9: $00
    nop                                           ; $69DA: $00
    nop                                           ; $69DB: $00
    nop                                           ; $69DC: $00
    nop                                           ; $69DD: $00
    nop                                           ; $69DE: $00
    nop                                           ; $69DF: $00
    cp $80                                        ; $69E0: $FE $80
    add b                                         ; $69E2: $80
    nop                                           ; $69E3: $00
    add b                                         ; $69E4: $80
    nop                                           ; $69E5: $00
    ld b, b                                       ; $69E6: $40
    add b                                         ; $69E7: $80
    jr c, jr_010_69AA                             ; $69E8: $38 $C0

    jr z, jr_010_69BC                             ; $69EA: $28 $D0

    add sp, $30                                   ; $69EC: $E8 $30
    add sp, $70                                   ; $69EE: $E8 $70
    add sp, $70                                   ; $69F0: $E8 $70
    ld a, b                                       ; $69F2: $78
    jr nc, @+$3A                                  ; $69F3: $30 $38

    db $10                                        ; $69F5: $10
    inc a                                         ; $69F6: $3C
    db $10                                        ; $69F7: $10
    ld a, $0C                                     ; $69F8: $3E $0C
    ccf                                           ; $69FA: $3F
    ld e, $3F                                     ; $69FB: $1E $3F
    nop                                           ; $69FD: $00
    nop                                           ; $69FE: $00
    nop                                           ; $69FF: $00
    nop                                           ; $6A00: $00
    nop                                           ; $6A01: $00
    nop                                           ; $6A02: $00
    nop                                           ; $6A03: $00
    add b                                         ; $6A04: $80
    nop                                           ; $6A05: $00
    ld b, b                                       ; $6A06: $40
    add b                                         ; $6A07: $80
    jr nz, jr_010_69CA                            ; $6A08: $20 $C0

    db $10                                        ; $6A0A: $10
    ldh [$FF98], a                                ; $6A0B: $E0 $98
    ldh a, [$FFF8]                                ; $6A0D: $F0 $F8
    ld [hl], b                                    ; $6A0F: $70
    ld hl, sp+$00                                 ; $6A10: $F8 $00
    add b                                         ; $6A12: $80
    nop                                           ; $6A13: $00
    pop bc                                        ; $6A14: $C1
    nop                                           ; $6A15: $00
    di                                            ; $6A16: $F3
    pop bc                                        ; $6A17: $C1
    rst RST_38                                    ; $6A18: $FF
    ld [hl], b                                    ; $6A19: $70
    ld a, b                                       ; $6A1A: $78
    scf                                           ; $6A1B: $37
    jr c, @+$09                                   ; $6A1C: $38 $07

    rlca                                          ; $6A1E: $07
    nop                                           ; $6A1F: $00
    ld b, b                                       ; $6A20: $40
    add b                                         ; $6A21: $80
    and b                                         ; $6A22: $A0
    ret nz                                        ; $6A23: $C0

    ldh [$FFC0], a                                ; $6A24: $E0 $C0
    ldh a, [rP1]                                  ; $6A26: $F0 $00
    jr c, jr_010_6A3A                             ; $6A28: $38 $10

    rra                                           ; $6A2A: $1F
    ld [$030F], sp                                ; $6A2B: $08 $0F $03
    inc c                                         ; $6A2E: $0C
    rlca                                          ; $6A2F: $07
    ld b, $03                                     ; $6A30: $06 $03
    inc bc                                        ; $6A32: $03
    ld bc, $0003                                  ; $6A33: $01 $03 $00
    dec b                                         ; $6A36: $05
    ld [bc], a                                    ; $6A37: $02
    ld b, $01                                     ; $6A38: $06 $01

jr_010_6A3A:
    dec bc                                        ; $6A3A: $0B
    inc b                                         ; $6A3B: $04
    rrca                                          ; $6A3C: $0F
    nop                                           ; $6A3D: $00
    rlca                                          ; $6A3E: $07
    nop                                           ; $6A3F: $00
    nop                                           ; $6A40: $00
    nop                                           ; $6A41: $00
    nop                                           ; $6A42: $00
    nop                                           ; $6A43: $00
    nop                                           ; $6A44: $00
    nop                                           ; $6A45: $00

jr_010_6A46:
    nop                                           ; $6A46: $00
    nop                                           ; $6A47: $00
    nop                                           ; $6A48: $00
    nop                                           ; $6A49: $00
    nop                                           ; $6A4A: $00
    nop                                           ; $6A4B: $00
    nop                                           ; $6A4C: $00
    nop                                           ; $6A4D: $00
    nop                                           ; $6A4E: $00
    nop                                           ; $6A4F: $00
    nop                                           ; $6A50: $00
    nop                                           ; $6A51: $00
    nop                                           ; $6A52: $00
    nop                                           ; $6A53: $00
    nop                                           ; $6A54: $00
    nop                                           ; $6A55: $00
    nop                                           ; $6A56: $00
    nop                                           ; $6A57: $00
    rlca                                          ; $6A58: $07
    nop                                           ; $6A59: $00
    ld b, $03                                     ; $6A5A: $06 $03
    rlca                                          ; $6A5C: $07
    inc bc                                        ; $6A5D: $03
    inc bc                                        ; $6A5E: $03
    ld bc, $0001                                  ; $6A5F: $01 $01 $00
    inc bc                                        ; $6A62: $03
    ld bc, $0307                                  ; $6A63: $01 $07 $03
    rlca                                          ; $6A66: $07
    nop                                           ; $6A67: $00
    nop                                           ; $6A68: $00
    nop                                           ; $6A69: $00
    nop                                           ; $6A6A: $00
    nop                                           ; $6A6B: $00
    nop                                           ; $6A6C: $00
    nop                                           ; $6A6D: $00
    nop                                           ; $6A6E: $00
    nop                                           ; $6A6F: $00
    nop                                           ; $6A70: $00
    nop                                           ; $6A71: $00
    nop                                           ; $6A72: $00
    nop                                           ; $6A73: $00
    nop                                           ; $6A74: $00
    nop                                           ; $6A75: $00
    nop                                           ; $6A76: $00
    nop                                           ; $6A77: $00
    nop                                           ; $6A78: $00
    nop                                           ; $6A79: $00
    nop                                           ; $6A7A: $00
    nop                                           ; $6A7B: $00
    nop                                           ; $6A7C: $00
    nop                                           ; $6A7D: $00
    nop                                           ; $6A7E: $00
    nop                                           ; $6A7F: $00
    add b                                         ; $6A80: $80
    nop                                           ; $6A81: $00
    ld b, b                                       ; $6A82: $40
    add b                                         ; $6A83: $80
    jr nz, jr_010_6A46                            ; $6A84: $20 $C0

    db $10                                        ; $6A86: $10
    ldh [$FF98], a                                ; $6A87: $E0 $98
    ldh a, [$FFF8]                                ; $6A89: $F0 $F8
    ld [hl], b                                    ; $6A8B: $70
    ldh a, [rP1]                                  ; $6A8C: $F0 $00
    ret nz                                        ; $6A8E: $C0

    nop                                           ; $6A8F: $00
    ret nz                                        ; $6A90: $C0

    nop                                           ; $6A91: $00
    pop hl                                        ; $6A92: $E1
    nop                                           ; $6A93: $00
    ld sp, hl                                     ; $6A94: $F9
    ld h, b                                       ; $6A95: $60
    rst RST_38                                    ; $6A96: $FF
    jr c, @+$01                                   ; $6A97: $38 $FF

    sbc b                                         ; $6A99: $98
    reti                                          ; $6A9A: $D9


    add [hl]                                      ; $6A9B: $86
    call z, $FE83                                 ; $6A9C: $CC $83 $FE
    pop bc                                        ; $6A9F: $C1
    rst RST_20                                    ; $6AA0: $E7
    ret c                                         ; $6AA1: $D8

    rst RST_00                                    ; $6AA2: $C7
    jr c, jr_010_6AE4                             ; $6AA3: $38 $3F

    nop                                           ; $6AA5: $00
    rlca                                          ; $6AA6: $07
    inc bc                                        ; $6AA7: $03
    rrca                                          ; $6AA8: $0F
    inc b                                         ; $6AA9: $04
    dec e                                         ; $6AAA: $1D
    ld [bc], a                                    ; $6AAB: $02
    rra                                           ; $6AAC: $1F
    dec c                                         ; $6AAD: $0D
    rra                                           ; $6AAE: $1F
    ld c, $0F                                     ; $6AAF: $0E $0F
    ld bc, $02DF                                  ; $6AB1: $01 $DF $02
    ld h, e                                       ; $6AB4: $63
    call c, $EC73                                 ; $6AB5: $DC $73 $EC
    cp l                                          ; $6AB8: $BD
    ld h, d                                       ; $6AB9: $62
    cp e                                          ; $6ABA: $BB
    ld [hl], b                                    ; $6ABB: $70
    ld a, b                                       ; $6ABC: $78
    jr nc, @+$3A                                  ; $6ABD: $30 $38

    db $10                                        ; $6ABF: $10
    inc e                                         ; $6AC0: $1C
    ld [$047E], sp                                ; $6AC1: $08 $7E $04
    cp $7C                                        ; $6AC4: $FE $7C
    cp $00                                        ; $6AC6: $FE $00
    nop                                           ; $6AC8: $00
    nop                                           ; $6AC9: $00
    nop                                           ; $6ACA: $00
    nop                                           ; $6ACB: $00
    nop                                           ; $6ACC: $00
    nop                                           ; $6ACD: $00
    nop                                           ; $6ACE: $00
    nop                                           ; $6ACF: $00
    nop                                           ; $6AD0: $00
    nop                                           ; $6AD1: $00
    nop                                           ; $6AD2: $00
    nop                                           ; $6AD3: $00
    nop                                           ; $6AD4: $00
    nop                                           ; $6AD5: $00
    nop                                           ; $6AD6: $00
    nop                                           ; $6AD7: $00
    nop                                           ; $6AD8: $00
    nop                                           ; $6AD9: $00
    nop                                           ; $6ADA: $00
    nop                                           ; $6ADB: $00
    nop                                           ; $6ADC: $00
    nop                                           ; $6ADD: $00
    nop                                           ; $6ADE: $00
    nop                                           ; $6ADF: $00
    nop                                           ; $6AE0: $00
    nop                                           ; $6AE1: $00
    nop                                           ; $6AE2: $00
    nop                                           ; $6AE3: $00

jr_010_6AE4:
    nop                                           ; $6AE4: $00
    nop                                           ; $6AE5: $00
    nop                                           ; $6AE6: $00
    nop                                           ; $6AE7: $00
    nop                                           ; $6AE8: $00
    nop                                           ; $6AE9: $00
    nop                                           ; $6AEA: $00
    nop                                           ; $6AEB: $00
    nop                                           ; $6AEC: $00
    nop                                           ; $6AED: $00
    nop                                           ; $6AEE: $00
    nop                                           ; $6AEF: $00
    nop                                           ; $6AF0: $00
    nop                                           ; $6AF1: $00
    nop                                           ; $6AF2: $00
    nop                                           ; $6AF3: $00
    stop                                          ; $6AF4: $10 $00
    jr nc, jr_010_6AF8                            ; $6AF6: $30 $00

jr_010_6AF8:
    ld a, b                                       ; $6AF8: $78
    db $10                                        ; $6AF9: $10
    ld a, h                                       ; $6AFA: $7C

jr_010_6AFB:
    jr c, jr_010_6AFB                             ; $6AFB: $38 $FE

    ld a, h                                       ; $6AFD: $7C
    rst RST_18                                    ; $6AFE: $DF

Jump_010_6AFF:
    cp $7C                                        ; $6AFF: $FE $7C
    ld hl, sp-$02                                 ; $6B01: $F8 $FE
    db $FC                                        ; $6B03: $FC
    rst RST_20                                    ; $6B04: $E7
    cp $81                                        ; $6B05: $FE $81
    rst RST_38                                    ; $6B07: $FF
    inc b                                         ; $6B08: $04
    rst RST_38                                    ; $6B09: $FF
    ld c, $FF                                     ; $6B0A: $0E $FF
    rra                                           ; $6B0C: $1F
    db $FD                                        ; $6B0D: $FD
    ccf                                           ; $6B0E: $3F
    db $FC                                        ; $6B0F: $FC
    dec a                                         ; $6B10: $3D
    ld a, [$F87F]                                 ; $6B11: $FA $7F $F8
    ei                                            ; $6B14: $FB
    db $F4                                        ; $6B15: $F4
    rst RST_38                                    ; $6B16: $FF
    ldh a, [rIE]                                  ; $6B17: $F0 $FF
    ldh a, [$FFF3]                                ; $6B19: $F0 $F3
    ldh [$FFF1], a                                ; $6B1B: $E0 $F1
    ldh [$FFF1], a                                ; $6B1D: $E0 $F1
    ldh [$FFE1], a                                ; $6B1F: $E0 $E1
    ret nz                                        ; $6B21: $C0

    pop hl                                        ; $6B22: $E1
    ret nz                                        ; $6B23: $C0

    pop hl                                        ; $6B24: $E1
    ret nz                                        ; $6B25: $C0

    pop hl                                        ; $6B26: $E1
    ld b, b                                       ; $6B27: $40
    pop af                                        ; $6B28: $F1
    ld b, b                                       ; $6B29: $40
    ldh a, [rP1]                                  ; $6B2A: $F0 $00
    ldh a, [rP1]                                  ; $6B2C: $F0 $00
    ld hl, sp+$00                                 ; $6B2E: $F8 $00
    cp b                                          ; $6B30: $B8
    nop                                           ; $6B31: $00
    sbc h                                         ; $6B32: $9C
    nop                                           ; $6B33: $00
    call z, $C200                                 ; $6B34: $CC $00 $C2
    nop                                           ; $6B37: $00
    pop hl                                        ; $6B38: $E1
    nop                                           ; $6B39: $00
    pop hl                                        ; $6B3A: $E1
    nop                                           ; $6B3B: $00
    ld [hl], c                                    ; $6B3C: $71
    nop                                           ; $6B3D: $00
    jr jr_010_6B40                                ; $6B3E: $18 $00

jr_010_6B40:
    ld c, $07                                     ; $6B40: $0E $07
    inc c                                         ; $6B42: $0C
    rlca                                          ; $6B43: $07
    inc e                                         ; $6B44: $1C
    rrca                                          ; $6B45: $0F
    jr @+$11                                      ; $6B46: $18 $0F

    add hl, sp                                    ; $6B48: $39
    rrca                                          ; $6B49: $0F
    ld sp, $731F                                  ; $6B4A: $31 $1F $73
    ccf                                           ; $6B4D: $3F
    ld h, e                                       ; $6B4E: $63
    ccf                                           ; $6B4F: $3F
    ld h, [hl]                                    ; $6B50: $66
    ccf                                           ; $6B51: $3F
    xor $7F                                       ; $6B52: $EE $7F
    adc $7F                                       ; $6B54: $CE $7F
    call c, $DC7F                                 ; $6B56: $DC $7F $DC
    ld a, a                                       ; $6B59: $7F
    cp l                                          ; $6B5A: $BD
    rst RST_38                                    ; $6B5B: $FF
    cp c                                          ; $6B5C: $B9
    rst RST_38                                    ; $6B5D: $FF
    ei                                            ; $6B5E: $FB
    rst RST_38                                    ; $6B5F: $FF
    cp e                                          ; $6B60: $BB
    rst RST_38                                    ; $6B61: $FF
    ei                                            ; $6B62: $FB
    cp $FF                                        ; $6B63: $FE $FF
    cp $FF                                        ; $6B65: $FE $FF
    call c, $DCFF                                 ; $6B67: $DC $FF $DC
    rst RST_38                                    ; $6B6A: $FF
    call z, $8CFF                                 ; $6B6B: $CC $FF $8C
    rst RST_38                                    ; $6B6E: $FF
    add [hl]                                      ; $6B6F: $86
    rst RST_38                                    ; $6B70: $FF
    add [hl]                                      ; $6B71: $86
    rst RST_38                                    ; $6B72: $FF
    add d                                         ; $6B73: $82
    rst RST_38                                    ; $6B74: $FF
    add c                                         ; $6B75: $81
    rst RST_30                                    ; $6B76: $F7
    add b                                         ; $6B77: $80
    di                                            ; $6B78: $F3
    nop                                           ; $6B79: $00
    pop af                                        ; $6B7A: $F1
    nop                                           ; $6B7B: $00
    ld hl, sp+$00                                 ; $6B7C: $F8 $00
    ld a, b                                       ; $6B7E: $78
    nop                                           ; $6B7F: $00
    ld a, b                                       ; $6B80: $78
    nop                                           ; $6B81: $00
    inc a                                         ; $6B82: $3C
    nop                                           ; $6B83: $00
    inc e                                         ; $6B84: $1C
    nop                                           ; $6B85: $00
    ld c, $00                                     ; $6B86: $0E $00
    ld b, $00                                     ; $6B88: $06 $00
    ld bc, $0000                                  ; $6B8A: $01 $00 $00
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
    nop                                           ; $6BA0: $00
    nop                                           ; $6BA1: $00
    ld bc, $0100                                  ; $6BA2: $01 $00 $01
    nop                                           ; $6BA5: $00
    ld bc, $0100                                  ; $6BA6: $01 $00 $01
    nop                                           ; $6BA9: $00
    inc bc                                        ; $6BAA: $03
    ld bc, $0103                                  ; $6BAB: $01 $03 $01
    inc bc                                        ; $6BAE: $03
    ld bc, $0103                                  ; $6BAF: $01 $03 $01
    inc bc                                        ; $6BB2: $03
    ld bc, $0103                                  ; $6BB3: $01 $03 $01
    inc bc                                        ; $6BB6: $03
    ld bc, $0103                                  ; $6BB7: $01 $03 $01
    ld bc, $0100                                  ; $6BBA: $01 $00 $01
    nop                                           ; $6BBD: $00
    ld bc, $8000                                  ; $6BBE: $01 $00 $80
    nop                                           ; $6BC1: $00
    ld b, b                                       ; $6BC2: $40
    add b                                         ; $6BC3: $80
    ld b, b                                       ; $6BC4: $40
    add b                                         ; $6BC5: $80
    ld h, b                                       ; $6BC6: $60
    add b                                         ; $6BC7: $80
    ldh a, [$FFA0]                                ; $6BC8: $F0 $A0
    cp $70                                        ; $6BCA: $FE $70
    ld a, a                                       ; $6BCC: $7F
    xor [hl]                                      ; $6BCD: $AE
    ccf                                           ; $6BCE: $3F
    jp $BD63                                      ; $6BCF: $C3 $63 $BD


    ei                                            ; $6BD2: $FB
    dec a                                         ; $6BD3: $3D
    rst RST_38                                    ; $6BD4: $FF
    dec a                                         ; $6BD5: $3D
    rst RST_38                                    ; $6BD6: $FF
    sbc h                                         ; $6BD7: $9C
    cp $20                                        ; $6BD8: $FE $20
    db $FC                                        ; $6BDA: $FC
    ld hl, sp-$08                                 ; $6BDB: $F8 $F8
    ldh a, [$FFF8]                                ; $6BDD: $F0 $F8
    ld [hl], b                                    ; $6BDF: $70
    ldh a, [$FFA0]                                ; $6BE0: $F0 $A0
    ldh a, [rP1]                                  ; $6BE2: $F0 $00
    ldh a, [rP1]                                  ; $6BE4: $F0 $00
    ldh a, [rP1]                                  ; $6BE6: $F0 $00
    ldh a, [rP1]                                  ; $6BE8: $F0 $00
    adc b                                         ; $6BEA: $88
    ld [hl], b                                    ; $6BEB: $70
    ld c, e                                       ; $6BEC: $4B
    jr nc, jr_010_6C36                            ; $6BED: $30 $47

    dec sp                                        ; $6BEF: $3B
    daa                                           ; $6BF0: $27
    dec de                                        ; $6BF1: $1B
    daa                                           ; $6BF2: $27
    dec de                                        ; $6BF3: $1B
    rra                                           ; $6BF4: $1F
    ld b, $1E                                     ; $6BF5: $06 $1E
    nop                                           ; $6BF7: $00
    nop                                           ; $6BF8: $00
    nop                                           ; $6BF9: $00
    nop                                           ; $6BFA: $00
    nop                                           ; $6BFB: $00
    nop                                           ; $6BFC: $00
    nop                                           ; $6BFD: $00
    nop                                           ; $6BFE: $00
    nop                                           ; $6BFF: $00
    add b                                         ; $6C00: $80
    nop                                           ; $6C01: $00
    ret nz                                        ; $6C02: $C0

    add b                                         ; $6C03: $80
    ret nz                                        ; $6C04: $C0

    add b                                         ; $6C05: $80

jr_010_6C06:
    ldh [$FFC0], a                                ; $6C06: $E0 $C0
    ld hl, sp+$60                                 ; $6C08: $F8 $60
    ld a, h                                       ; $6C0A: $7C
    jr @+$1E                                      ; $6C0B: $18 $1C

    nop                                           ; $6C0D: $00
    nop                                           ; $6C0E: $00
    nop                                           ; $6C0F: $00
    nop                                           ; $6C10: $00
    nop                                           ; $6C11: $00
    nop                                           ; $6C12: $00
    nop                                           ; $6C13: $00
    nop                                           ; $6C14: $00
    nop                                           ; $6C15: $00
    nop                                           ; $6C16: $00
    nop                                           ; $6C17: $00
    nop                                           ; $6C18: $00
    nop                                           ; $6C19: $00
    nop                                           ; $6C1A: $00
    nop                                           ; $6C1B: $00
    ret nz                                        ; $6C1C: $C0

    nop                                           ; $6C1D: $00
    ldh [$FFC0], a                                ; $6C1E: $E0 $C0
    ldh [$FFC0], a                                ; $6C20: $E0 $C0
    ldh [rLCDC], a                                ; $6C22: $E0 $40
    ldh [rLCDC], a                                ; $6C24: $E0 $40
    ldh [$FFC0], a                                ; $6C26: $E0 $C0
    ldh [rP1], a                                  ; $6C28: $E0 $00
    nop                                           ; $6C2A: $00
    nop                                           ; $6C2B: $00
    nop                                           ; $6C2C: $00
    nop                                           ; $6C2D: $00
    nop                                           ; $6C2E: $00
    nop                                           ; $6C2F: $00
    nop                                           ; $6C30: $00
    nop                                           ; $6C31: $00
    nop                                           ; $6C32: $00
    nop                                           ; $6C33: $00
    nop                                           ; $6C34: $00
    nop                                           ; $6C35: $00

jr_010_6C36:
    nop                                           ; $6C36: $00
    nop                                           ; $6C37: $00
    nop                                           ; $6C38: $00
    nop                                           ; $6C39: $00
    nop                                           ; $6C3A: $00
    nop                                           ; $6C3B: $00
    nop                                           ; $6C3C: $00
    nop                                           ; $6C3D: $00
    nop                                           ; $6C3E: $00
    nop                                           ; $6C3F: $00
    add b                                         ; $6C40: $80
    nop                                           ; $6C41: $00
    ld b, b                                       ; $6C42: $40
    add b                                         ; $6C43: $80
    jr nz, jr_010_6C06                            ; $6C44: $20 $C0

    db $10                                        ; $6C46: $10
    ldh [$FF98], a                                ; $6C47: $E0 $98
    ldh a, [$FFF8]                                ; $6C49: $F0 $F8
    ld [hl], b                                    ; $6C4B: $70
    ldh a, [rP1]                                  ; $6C4C: $F0 $00
    ret nz                                        ; $6C4E: $C0

    nop                                           ; $6C4F: $00
    ret nz                                        ; $6C50: $C0

    nop                                           ; $6C51: $00
    pop hl                                        ; $6C52: $E1
    nop                                           ; $6C53: $00
    ld sp, hl                                     ; $6C54: $F9
    ld h, b                                       ; $6C55: $60
    rst RST_38                                    ; $6C56: $FF
    jr c, @+$01                                   ; $6C57: $38 $FF

    sbc b                                         ; $6C59: $98
    reti                                          ; $6C5A: $D9


    add [hl]                                      ; $6C5B: $86
    call z, $FE83                                 ; $6C5C: $CC $83 $FE
    pop bc                                        ; $6C5F: $C1
    rst RST_20                                    ; $6C60: $E7
    ret c                                         ; $6C61: $D8

    rst RST_00                                    ; $6C62: $C7
    jr c, jr_010_6CA4                             ; $6C63: $38 $3F

    nop                                           ; $6C65: $00
    rlca                                          ; $6C66: $07
    inc bc                                        ; $6C67: $03
    rrca                                          ; $6C68: $0F
    inc b                                         ; $6C69: $04
    dec e                                         ; $6C6A: $1D
    ld [bc], a                                    ; $6C6B: $02
    rra                                           ; $6C6C: $1F
    dec c                                         ; $6C6D: $0D
    rra                                           ; $6C6E: $1F
    ld c, $0F                                     ; $6C6F: $0E $0F
    ld bc, $02DF                                  ; $6C71: $01 $DF $02
    ld h, e                                       ; $6C74: $63
    call c, $EC73                                 ; $6C75: $DC $73 $EC
    cp l                                          ; $6C78: $BD
    ld h, d                                       ; $6C79: $62
    cp e                                          ; $6C7A: $BB
    ld [hl], b                                    ; $6C7B: $70
    ld a, b                                       ; $6C7C: $78
    jr nc, jr_010_6CB7                            ; $6C7D: $30 $38

    db $10                                        ; $6C7F: $10
    ld c, $04                                     ; $6C80: $0E $04
    ccf                                           ; $6C82: $3F
    ld [bc], a                                    ; $6C83: $02
    ld a, a                                       ; $6C84: $7F
    ld a, $7F                                     ; $6C85: $3E $7F
    nop                                           ; $6C87: $00
    nop                                           ; $6C88: $00
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
    ldh a, [rP1]                                  ; $6CA0: $F0 $00
    jr c, jr_010_6CB4                             ; $6CA2: $38 $10

jr_010_6CA4:
    rra                                           ; $6CA4: $1F
    ld [$070F], sp                                ; $6CA5: $08 $0F $07
    inc c                                         ; $6CA8: $0C
    rlca                                          ; $6CA9: $07
    ld b, $03                                     ; $6CAA: $06 $03
    inc bc                                        ; $6CAC: $03
    ld bc, $0003                                  ; $6CAD: $01 $03 $00
    dec b                                         ; $6CB0: $05
    ld [bc], a                                    ; $6CB1: $02
    rlca                                          ; $6CB2: $07
    nop                                           ; $6CB3: $00

jr_010_6CB4:
    dec bc                                        ; $6CB4: $0B
    inc b                                         ; $6CB5: $04
    rrca                                          ; $6CB6: $0F

jr_010_6CB7:
    nop                                           ; $6CB7: $00
    rlca                                          ; $6CB8: $07
    nop                                           ; $6CB9: $00
    inc bc                                        ; $6CBA: $03
    nop                                           ; $6CBB: $00
    ld bc, $0100                                  ; $6CBC: $01 $00 $01
    nop                                           ; $6CBF: $00
    ld bc, $0100                                  ; $6CC0: $01 $00 $01
    nop                                           ; $6CC3: $00
    ld bc, $0100                                  ; $6CC4: $01 $00 $01
    nop                                           ; $6CC7: $00
    ld bc, $0000                                  ; $6CC8: $01 $00 $00
    nop                                           ; $6CCB: $00
    nop                                           ; $6CCC: $00
    nop                                           ; $6CCD: $00
    nop                                           ; $6CCE: $00
    nop                                           ; $6CCF: $00
    nop                                           ; $6CD0: $00
    nop                                           ; $6CD1: $00
    nop                                           ; $6CD2: $00
    nop                                           ; $6CD3: $00
    nop                                           ; $6CD4: $00
    nop                                           ; $6CD5: $00
    nop                                           ; $6CD6: $00
    nop                                           ; $6CD7: $00
    ld bc, $0100                                  ; $6CD8: $01 $00 $01
    nop                                           ; $6CDB: $00
    ld bc, $0000                                  ; $6CDC: $01 $00 $00
    nop                                           ; $6CDF: $00
    nop                                           ; $6CE0: $00
    nop                                           ; $6CE1: $00
    nop                                           ; $6CE2: $00
    nop                                           ; $6CE3: $00
    nop                                           ; $6CE4: $00
    nop                                           ; $6CE5: $00
    nop                                           ; $6CE6: $00
    nop                                           ; $6CE7: $00
    nop                                           ; $6CE8: $00
    nop                                           ; $6CE9: $00
    nop                                           ; $6CEA: $00
    nop                                           ; $6CEB: $00
    nop                                           ; $6CEC: $00
    nop                                           ; $6CED: $00
    nop                                           ; $6CEE: $00
    nop                                           ; $6CEF: $00
    nop                                           ; $6CF0: $00
    nop                                           ; $6CF1: $00
    nop                                           ; $6CF2: $00
    nop                                           ; $6CF3: $00
    nop                                           ; $6CF4: $00
    nop                                           ; $6CF5: $00
    nop                                           ; $6CF6: $00
    nop                                           ; $6CF7: $00
    inc e                                         ; $6CF8: $1C
    nop                                           ; $6CF9: $00
    ld a, [de]                                    ; $6CFA: $1A
    inc c                                         ; $6CFB: $0C
    dec e                                         ; $6CFC: $1D
    ld c, $0F                                     ; $6CFD: $0E $0F
    ld b, $00                                     ; $6CFF: $06 $00
    nop                                           ; $6D01: $00
    ld [hl], b                                    ; $6D02: $70
    nop                                           ; $6D03: $00
    ld l, b                                       ; $6D04: $68
    jr nc, jr_010_6D7B                            ; $6D05: $30 $74

    jr c, jr_010_6D45                             ; $6D07: $38 $3C

    jr jr_010_6D29                                ; $6D09: $18 $1E

    nop                                           ; $6D0B: $00
    rlca                                          ; $6D0C: $07
    ld [bc], a                                    ; $6D0D: $02
    inc bc                                        ; $6D0E: $03
    ld bc, $0001                                  ; $6D0F: $01 $01 $00
    ld bc, $0000                                  ; $6D12: $01 $00 $00
    nop                                           ; $6D15: $00
    nop                                           ; $6D16: $00
    nop                                           ; $6D17: $00
    nop                                           ; $6D18: $00
    nop                                           ; $6D19: $00
    nop                                           ; $6D1A: $00
    nop                                           ; $6D1B: $00
    nop                                           ; $6D1C: $00
    nop                                           ; $6D1D: $00
    ld bc, $E000                                  ; $6D1E: $01 $00 $E0
    nop                                           ; $6D21: $00
    ldh a, [$FFE0]                                ; $6D22: $F0 $E0
    adc b                                         ; $6D24: $88
    ldh a, [$FFC4]                                ; $6D25: $F0 $C4
    ld a, b                                       ; $6D27: $78
    ld h, d                                       ; $6D28: $62

jr_010_6D29:
    inc a                                         ; $6D29: $3C
    ld [hl], e                                    ; $6D2A: $73
    ld e, $BF                                     ; $6D2B: $1E $BF
    ld c, [hl]                                    ; $6D2D: $4E
    cp $00                                        ; $6D2E: $FE $00
    ld a, b                                       ; $6D30: $78
    add b                                         ; $6D31: $80
    ld hl, sp+$00                                 ; $6D32: $F8 $00
    ld a, h                                       ; $6D34: $7C
    nop                                           ; $6D35: $00
    ccf                                           ; $6D36: $3F
    inc c                                         ; $6D37: $0C
    ccf                                           ; $6D38: $3F
    rlca                                          ; $6D39: $07
    ccf                                           ; $6D3A: $3F
    inc de                                        ; $6D3B: $13
    dec sp                                        ; $6D3C: $3B
    db $10                                        ; $6D3D: $10
    add hl, sp                                    ; $6D3E: $39

jr_010_6D3F:
    db $10                                        ; $6D3F: $10
    jr nz, jr_010_6D42                            ; $6D40: $20 $00

jr_010_6D42:
    ld d, b                                       ; $6D42: $50
    jr nz, jr_010_6D95                            ; $6D43: $20 $50

jr_010_6D45:
    jr nz, jr_010_6D9F                            ; $6D45: $20 $58

    jr nz, jr_010_6D45                            ; $6D47: $20 $FC

    jr z, @+$01                                   ; $6D49: $28 $FF

    inc e                                         ; $6D4B: $1C
    ccf                                           ; $6D4C: $3F
    res 1, a                                      ; $6D4D: $CB $8F
    ld [hl], e                                    ; $6D4F: $73
    rst RST_00                                    ; $6D50: $C7
    jr c, jr_010_6D3F                             ; $6D51: $38 $EC

    rla                                           ; $6D53: $17
    rst RST_38                                    ; $6D54: $FF
    rlca                                          ; $6D55: $07
    rst RST_38                                    ; $6D56: $FF
    rst RST_20                                    ; $6D57: $E7
    rst RST_38                                    ; $6D58: $FF
    dec bc                                        ; $6D59: $0B
    ld a, a                                       ; $6D5A: $7F
    cp h                                          ; $6D5B: $BC
    cp $7C                                        ; $6D5C: $FE $7C
    cp $9C                                        ; $6D5E: $FE $9C
    add b                                         ; $6D60: $80
    nop                                           ; $6D61: $00
    ret nz                                        ; $6D62: $C0

    add b                                         ; $6D63: $80
    ldh [$FFC0], a                                ; $6D64: $E0 $C0
    ldh a, [$FF60]                                ; $6D66: $F0 $60
    ld [hl], b                                    ; $6D68: $70
    and b                                         ; $6D69: $A0
    ld a, b                                       ; $6D6A: $78
    or b                                          ; $6D6B: $B0
    cp $98                                        ; $6D6C: $FE $98
    rst RST_18                                    ; $6D6E: $DF
    add [hl]                                      ; $6D6F: $86
    add a                                         ; $6D70: $87
    nop                                           ; $6D71: $00
    nop                                           ; $6D72: $00
    nop                                           ; $6D73: $00
    nop                                           ; $6D74: $00
    nop                                           ; $6D75: $00
    nop                                           ; $6D76: $00
    nop                                           ; $6D77: $00
    nop                                           ; $6D78: $00
    nop                                           ; $6D79: $00
    nop                                           ; $6D7A: $00

jr_010_6D7B:
    nop                                           ; $6D7B: $00
    nop                                           ; $6D7C: $00
    nop                                           ; $6D7D: $00
    nop                                           ; $6D7E: $00
    nop                                           ; $6D7F: $00
    ccf                                           ; $6D80: $3F
    jr jr_010_6DBF                                ; $6D81: $18 $3C

    dec de                                        ; $6D83: $1B
    jr jr_010_6D8D                                ; $6D84: $18 $07

    rlca                                          ; $6D86: $07
    nop                                           ; $6D87: $00
    inc bc                                        ; $6D88: $03
    ld bc, $0007                                  ; $6D89: $01 $07 $00
    rlca                                          ; $6D8C: $07

jr_010_6D8D:
    inc bc                                        ; $6D8D: $03
    rlca                                          ; $6D8E: $07
    inc bc                                        ; $6D8F: $03
    inc bc                                        ; $6D90: $03
    nop                                           ; $6D91: $00
    ld [hl], a                                    ; $6D92: $77
    nop                                           ; $6D93: $00
    ld e, b                                       ; $6D94: $58

jr_010_6D95:
    scf                                           ; $6D95: $37
    ld e, h                                       ; $6D96: $5C
    dec sp                                        ; $6D97: $3B
    ld l, a                                       ; $6D98: $6F
    inc e                                         ; $6D99: $1C
    ld l, $1C                                     ; $6D9A: $2E $1C
    ld l, $1C                                     ; $6D9C: $2E $1C
    inc e                                         ; $6D9E: $1C

jr_010_6D9F:
    ld [$68FC], sp                                ; $6D9F: $08 $FC $68
    db $FC                                        ; $6DA2: $FC
    add b                                         ; $6DA3: $80
    db $FC                                        ; $6DA4: $FC
    nop                                           ; $6DA5: $00
    db $FC                                        ; $6DA6: $FC
    nop                                           ; $6DA7: $00
    ld a, h                                       ; $6DA8: $7C
    add b                                         ; $6DA9: $80
    db $E4                                        ; $6DAA: $E4
    jr jr_010_6DD0                                ; $6DAB: $18 $23

    inc e                                         ; $6DAD: $1C
    inc hl                                        ; $6DAE: $23
    dec e                                         ; $6DAF: $1D
    inc de                                        ; $6DB0: $13
    dec c                                         ; $6DB1: $0D
    inc de                                        ; $6DB2: $13
    dec c                                         ; $6DB3: $0D
    rrca                                          ; $6DB4: $0F
    ld [bc], a                                    ; $6DB5: $02
    ld c, $00                                     ; $6DB6: $0E $00
    nop                                           ; $6DB8: $00
    nop                                           ; $6DB9: $00
    nop                                           ; $6DBA: $00
    nop                                           ; $6DBB: $00
    nop                                           ; $6DBC: $00
    nop                                           ; $6DBD: $00
    nop                                           ; $6DBE: $00

jr_010_6DBF:
    nop                                           ; $6DBF: $00
    ld [hl], b                                    ; $6DC0: $70
    nop                                           ; $6DC1: $00
    ldh a, [$FF60]                                ; $6DC2: $F0 $60
    ldh a, [$FFE0]                                ; $6DC4: $F0 $E0
    ldh a, [$FFA0]                                ; $6DC6: $F0 $A0
    ldh a, [$FF60]                                ; $6DC8: $F0 $60
    ldh [$FFC0], a                                ; $6DCA: $E0 $C0

jr_010_6DCC:
    ldh [rP1], a                                  ; $6DCC: $E0 $00
    nop                                           ; $6DCE: $00
    nop                                           ; $6DCF: $00

jr_010_6DD0:
    nop                                           ; $6DD0: $00
    nop                                           ; $6DD1: $00
    nop                                           ; $6DD2: $00
    nop                                           ; $6DD3: $00
    nop                                           ; $6DD4: $00
    nop                                           ; $6DD5: $00
    nop                                           ; $6DD6: $00
    nop                                           ; $6DD7: $00
    nop                                           ; $6DD8: $00
    nop                                           ; $6DD9: $00
    nop                                           ; $6DDA: $00
    nop                                           ; $6DDB: $00
    nop                                           ; $6DDC: $00
    nop                                           ; $6DDD: $00
    nop                                           ; $6DDE: $00
    nop                                           ; $6DDF: $00
    ld c, $04                                     ; $6DE0: $0E $04
    ld a, [hl]                                    ; $6DE2: $7E
    nop                                           ; $6DE3: $00
    cp $7C                                        ; $6DE4: $FE $7C
    cp $00                                        ; $6DE6: $FE $00
    nop                                           ; $6DE8: $00
    nop                                           ; $6DE9: $00
    nop                                           ; $6DEA: $00
    nop                                           ; $6DEB: $00
    nop                                           ; $6DEC: $00
    nop                                           ; $6DED: $00
    nop                                           ; $6DEE: $00
    nop                                           ; $6DEF: $00
    nop                                           ; $6DF0: $00
    nop                                           ; $6DF1: $00
    nop                                           ; $6DF2: $00
    nop                                           ; $6DF3: $00
    nop                                           ; $6DF4: $00
    nop                                           ; $6DF5: $00
    nop                                           ; $6DF6: $00
    nop                                           ; $6DF7: $00
    nop                                           ; $6DF8: $00
    nop                                           ; $6DF9: $00
    nop                                           ; $6DFA: $00
    nop                                           ; $6DFB: $00
    nop                                           ; $6DFC: $00
    nop                                           ; $6DFD: $00
    nop                                           ; $6DFE: $00
    nop                                           ; $6DFF: $00
    nop                                           ; $6E00: $00
    nop                                           ; $6E01: $00
    nop                                           ; $6E02: $00
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
    ld bc, $C300                                  ; $6E1C: $01 $00 $C3
    ld bc, $0001                                  ; $6E1F: $01 $01 $00
    ld [bc], a                                    ; $6E22: $02
    ld bc, $0102                                  ; $6E23: $01 $02 $01
    ld [bc], a                                    ; $6E26: $02
    ld bc, $011F                                  ; $6E27: $01 $1F $01
    inc hl                                        ; $6E2A: $23
    ld e, $7F                                     ; $6E2B: $1E $7F
    jr c, @+$7D                                   ; $6E2D: $38 $7B

    ld b, $13                                     ; $6E2F: $06 $13
    ld c, $1F                                     ; $6E31: $0E $1F
    ld c, $2F                                     ; $6E33: $0E $2F
    ld [de], a                                    ; $6E35: $12
    ld b, a                                       ; $6E36: $47
    jr c, jr_010_6E82                             ; $6E37: $38 $49

    jr nc, jr_010_6DCC                            ; $6E39: $30 $91

    ld h, b                                       ; $6E3B: $60

jr_010_6E3C:
    and c                                         ; $6E3C: $A1
    ld b, b                                       ; $6E3D: $40
    ret nz                                        ; $6E3E: $C0

    add b                                         ; $6E3F: $80
    inc c                                         ; $6E40: $0C
    nop                                           ; $6E41: $00
    db $F4                                        ; $6E42: $F4
    ld [$58EC], sp                                ; $6E43: $08 $EC $58
    db $DB                                        ; $6E46: $DB
    inc [hl]                                      ; $6E47: $34
    ld a, [hl-]                                   ; $6E48: $3A
    db $ED                                        ; $6E49: $ED
    db $FD                                        ; $6E4A: $FD
    adc $DD                                       ; $6E4B: $CE $DD
    ld l, $FF                                     ; $6E4D: $2E $FF
    call c, Call_010_58FF                         ; $6E4F: $DC $FF $58
    rst RST_38                                    ; $6E52: $FF
    add c                                         ; $6E53: $81
    rst RST_38                                    ; $6E54: $FF
    rst RST_38                                    ; $6E55: $FF
    rst RST_38                                    ; $6E56: $FF
    adc [hl]                                      ; $6E57: $8E
    rst RST_28                                    ; $6E58: $EF
    sub $FF                                       ; $6E59: $D6 $FF
    rst RST_28                                    ; $6E5B: $EF
    rst RST_38                                    ; $6E5C: $FF
    adc c                                         ; $6E5D: $89
    rst RST_38                                    ; $6E5E: $FF
    jr nc, jr_010_6E61                            ; $6E5F: $30 $00

jr_010_6E61:
    nop                                           ; $6E61: $00
    nop                                           ; $6E62: $00
    nop                                           ; $6E63: $00
    nop                                           ; $6E64: $00
    nop                                           ; $6E65: $00
    ret nz                                        ; $6E66: $C0

    nop                                           ; $6E67: $00
    ld h, b                                       ; $6E68: $60
    ret nz                                        ; $6E69: $C0

    ldh a, [$FFE0]                                ; $6E6A: $F0 $E0
    ldh a, [rNR41]                                ; $6E6C: $F0 $20
    or b                                          ; $6E6E: $B0
    ret nz                                        ; $6E6F: $C0

    ldh [rLCDC], a                                ; $6E70: $E0 $40
    ldh [rLCDC], a                                ; $6E72: $E0 $40
    ret nz                                        ; $6E74: $C0

    nop                                           ; $6E75: $00
    and [hl]                                      ; $6E76: $A6
    ld b, b                                       ; $6E77: $40
    xor c                                         ; $6E78: $A9
    ld b, [hl]                                    ; $6E79: $46
    rst RST_08                                    ; $6E7A: $CF
    nop                                           ; $6E7B: $00
    db $FD                                        ; $6E7C: $FD
    ld [bc], a                                    ; $6E7D: $02
    cp $E0                                        ; $6E7E: $FE $E0
    nop                                           ; $6E80: $00
    nop                                           ; $6E81: $00

jr_010_6E82:
    ld hl, $1900                                  ; $6E82: $21 $00 $19
    nop                                           ; $6E85: $00
    ld e, $01                                     ; $6E86: $1E $01
    adc e                                         ; $6E88: $8B
    inc b                                         ; $6E89: $04
    push bc                                       ; $6E8A: $C5
    inc bc                                        ; $6E8B: $03
    and [hl]                                      ; $6E8C: $A6
    ld b, c                                       ; $6E8D: $41
    ld e, a                                       ; $6E8E: $5F
    jr nz, jr_010_6ED8                            ; $6E8F: $20 $47

    jr c, jr_010_6EB4                             ; $6E91: $38 $21

    ld e, $10                                     ; $6E93: $1E $10
    rrca                                          ; $6E95: $0F
    ld [$0407], sp                                ; $6E96: $08 $07 $04
    inc bc                                        ; $6E99: $03
    inc bc                                        ; $6E9A: $03
    ld bc, $0001                                  ; $6E9B: $01 $01 $00
    nop                                           ; $6E9E: $00
    nop                                           ; $6E9F: $00
    ld a, b                                       ; $6EA0: $78
    jr nc, jr_010_6E3C                            ; $6EA1: $30 $99

    ld [hl], b                                    ; $6EA3: $70
    rst RST_18                                    ; $6EA4: $DF
    jr nc, @+$01                                  ; $6EA5: $30 $FF

    ld b, b                                       ; $6EA7: $40
    rst RST_38                                    ; $6EA8: $FF
    jr nc, @+$01                                  ; $6EA9: $30 $FF

    inc e                                         ; $6EAB: $1C
    rst RST_38                                    ; $6EAC: $FF
    rst RST_08                                    ; $6EAD: $CF
    ld a, a                                       ; $6EAE: $7F
    rst RST_38                                    ; $6EAF: $FF
    sbc a                                         ; $6EB0: $9F
    ld a, a                                       ; $6EB1: $7F
    rst RST_00                                    ; $6EB2: $C7
    ccf                                           ; $6EB3: $3F

jr_010_6EB4:
    ld bc, $7FFF                                  ; $6EB4: $01 $FF $7F
    rst RST_38                                    ; $6EB7: $FF
    ccf                                           ; $6EB8: $3F
    rst RST_38                                    ; $6EB9: $FF
    rrca                                          ; $6EBA: $0F
    rst RST_38                                    ; $6EBB: $FF
    pop bc                                        ; $6EBC: $C1
    rst RST_38                                    ; $6EBD: $FF
    ldh a, [$FF3F]                                ; $6EBE: $F0 $3F
    ldh a, [$FF60]                                ; $6EC0: $F0 $60
    ldh [$FFC0], a                                ; $6EC2: $E0 $C0
    ret nz                                        ; $6EC4: $C0

    add b                                         ; $6EC5: $80
    add b                                         ; $6EC6: $80
    nop                                           ; $6EC7: $00
    add b                                         ; $6EC8: $80
    nop                                           ; $6EC9: $00
    add a                                         ; $6ECA: $87
    nop                                           ; $6ECB: $00
    rst RST_38                                    ; $6ECC: $FF
    add b                                         ; $6ECD: $80
    rst RST_38                                    ; $6ECE: $FF
    db $FC                                        ; $6ECF: $FC
    rst RST_38                                    ; $6ED0: $FF
    ldh a, [rIE]                                  ; $6ED1: $F0 $FF
    add b                                         ; $6ED3: $80
    rst RST_38                                    ; $6ED4: $FF
    pop hl                                        ; $6ED5: $E1
    rst RST_38                                    ; $6ED6: $FF
    rst RST_38                                    ; $6ED7: $FF

jr_010_6ED8:
    rst RST_38                                    ; $6ED8: $FF
    cp $FF                                        ; $6ED9: $FE $FF
    ld hl, sp-$01                                 ; $6EDB: $F8 $FF
    ldh [$FF7F], a                                ; $6EDD: $E0 $7F
    db $FC                                        ; $6EDF: $FC
    rra                                           ; $6EE0: $1F
    inc bc                                        ; $6EE1: $03
    rra                                           ; $6EE2: $1F
    nop                                           ; $6EE3: $00
    rra                                           ; $6EE4: $1F
    nop                                           ; $6EE5: $00
    inc hl                                        ; $6EE6: $23
    inc e                                         ; $6EE7: $1C
    pop hl                                        ; $6EE8: $E1
    ld e, $E1                                     ; $6EE9: $1E $E1
    ld e, $D3                                     ; $6EEB: $1E $D3
    inc c                                         ; $6EED: $0C
    sbc a                                         ; $6EEE: $9F
    ld bc, $0DFB                                  ; $6EEF: $01 $FB $0D
    ei                                            ; $6EF2: $FB
    ld e, $FB                                     ; $6EF3: $1E $FB
    sbc $FF                                       ; $6EF5: $DE $FF
    adc [hl]                                      ; $6EF7: $8E
    rst RST_38                                    ; $6EF8: $FF
    inc c                                         ; $6EF9: $0C
    rst RST_38                                    ; $6EFA: $FF
    inc b                                         ; $6EFB: $04
    rst RST_38                                    ; $6EFC: $FF
    inc b                                         ; $6EFD: $04
    rst RST_38                                    ; $6EFE: $FF
    nop                                           ; $6EFF: $00
    rst RST_38                                    ; $6F00: $FF
    add b                                         ; $6F01: $80
    ret nz                                        ; $6F02: $C0

    nop                                           ; $6F03: $00
    ldh [rP1], a                                  ; $6F04: $E0 $00
    sbc b                                         ; $6F06: $98
    ld h, b                                       ; $6F07: $60
    inc b                                         ; $6F08: $04
    ld hl, sp-$3A                                 ; $6F09: $F8 $C6

jr_010_6F0B:
    jr c, jr_010_6F0B                             ; $6F0B: $38 $FE

    call nz, Call_000_3CFE                        ; $6F0D: $C4 $FE $3C
    cp h                                          ; $6F10: $BC
    nop                                           ; $6F11: $00
    inc b                                         ; $6F12: $04
    nop                                           ; $6F13: $00
    jr jr_010_6F16                                ; $6F14: $18 $00

jr_010_6F16:
    ld a, b                                       ; $6F16: $78
    nop                                           ; $6F17: $00
    ldh a, [rP1]                                  ; $6F18: $F0 $00
    ldh [rP1], a                                  ; $6F1A: $E0 $00
    ret nz                                        ; $6F1C: $C0

    nop                                           ; $6F1D: $00
    add b                                         ; $6F1E: $80
    nop                                           ; $6F1F: $00
    ccf                                           ; $6F20: $3F
    rlca                                          ; $6F21: $07
    rlca                                          ; $6F22: $07
    nop                                           ; $6F23: $00
    nop                                           ; $6F24: $00
    nop                                           ; $6F25: $00
    nop                                           ; $6F26: $00
    nop                                           ; $6F27: $00
    nop                                           ; $6F28: $00
    nop                                           ; $6F29: $00
    nop                                           ; $6F2A: $00
    nop                                           ; $6F2B: $00
    nop                                           ; $6F2C: $00
    nop                                           ; $6F2D: $00
    nop                                           ; $6F2E: $00
    nop                                           ; $6F2F: $00
    nop                                           ; $6F30: $00
    nop                                           ; $6F31: $00
    nop                                           ; $6F32: $00
    nop                                           ; $6F33: $00
    nop                                           ; $6F34: $00
    nop                                           ; $6F35: $00
    nop                                           ; $6F36: $00
    nop                                           ; $6F37: $00
    nop                                           ; $6F38: $00
    nop                                           ; $6F39: $00
    nop                                           ; $6F3A: $00
    nop                                           ; $6F3B: $00
    nop                                           ; $6F3C: $00
    nop                                           ; $6F3D: $00
    nop                                           ; $6F3E: $00
    nop                                           ; $6F3F: $00
    rst RST_38                                    ; $6F40: $FF
    rst RST_38                                    ; $6F41: $FF
    rst RST_38                                    ; $6F42: $FF
    ld a, a                                       ; $6F43: $7F
    ld a, a                                       ; $6F44: $7F
    nop                                           ; $6F45: $00
    nop                                           ; $6F46: $00
    nop                                           ; $6F47: $00
    nop                                           ; $6F48: $00
    nop                                           ; $6F49: $00
    nop                                           ; $6F4A: $00
    nop                                           ; $6F4B: $00
    nop                                           ; $6F4C: $00
    nop                                           ; $6F4D: $00
    nop                                           ; $6F4E: $00
    nop                                           ; $6F4F: $00
    nop                                           ; $6F50: $00
    nop                                           ; $6F51: $00
    nop                                           ; $6F52: $00
    nop                                           ; $6F53: $00
    nop                                           ; $6F54: $00
    nop                                           ; $6F55: $00
    nop                                           ; $6F56: $00
    nop                                           ; $6F57: $00
    nop                                           ; $6F58: $00
    nop                                           ; $6F59: $00
    nop                                           ; $6F5A: $00
    nop                                           ; $6F5B: $00
    nop                                           ; $6F5C: $00
    nop                                           ; $6F5D: $00
    nop                                           ; $6F5E: $00
    nop                                           ; $6F5F: $00
    rst RST_38                                    ; $6F60: $FF
    xor $FF                                       ; $6F61: $EE $FF
    adc [hl]                                      ; $6F63: $8E
    sbc a                                         ; $6F64: $9F
    ld c, $0E                                     ; $6F65: $0E $0E
    inc b                                         ; $6F67: $04
    inc b                                         ; $6F68: $04
    nop                                           ; $6F69: $00
    nop                                           ; $6F6A: $00
    nop                                           ; $6F6B: $00
    nop                                           ; $6F6C: $00
    nop                                           ; $6F6D: $00
    nop                                           ; $6F6E: $00
    nop                                           ; $6F6F: $00
    nop                                           ; $6F70: $00
    nop                                           ; $6F71: $00
    nop                                           ; $6F72: $00
    nop                                           ; $6F73: $00
    nop                                           ; $6F74: $00
    nop                                           ; $6F75: $00
    nop                                           ; $6F76: $00
    nop                                           ; $6F77: $00
    nop                                           ; $6F78: $00
    nop                                           ; $6F79: $00
    nop                                           ; $6F7A: $00
    nop                                           ; $6F7B: $00
    nop                                           ; $6F7C: $00
    nop                                           ; $6F7D: $00
    nop                                           ; $6F7E: $00
    nop                                           ; $6F7F: $00
    ld bc, $0100                                  ; $6F80: $01 $00 $01
    nop                                           ; $6F83: $00
    nop                                           ; $6F84: $00
    nop                                           ; $6F85: $00
    nop                                           ; $6F86: $00
    nop                                           ; $6F87: $00
    nop                                           ; $6F88: $00
    nop                                           ; $6F89: $00
    nop                                           ; $6F8A: $00
    nop                                           ; $6F8B: $00
    nop                                           ; $6F8C: $00
    nop                                           ; $6F8D: $00
    nop                                           ; $6F8E: $00
    nop                                           ; $6F8F: $00
    nop                                           ; $6F90: $00
    nop                                           ; $6F91: $00
    nop                                           ; $6F92: $00
    nop                                           ; $6F93: $00
    nop                                           ; $6F94: $00
    nop                                           ; $6F95: $00
    nop                                           ; $6F96: $00
    nop                                           ; $6F97: $00
    nop                                           ; $6F98: $00
    nop                                           ; $6F99: $00
    nop                                           ; $6F9A: $00
    nop                                           ; $6F9B: $00
    nop                                           ; $6F9C: $00
    nop                                           ; $6F9D: $00
    nop                                           ; $6F9E: $00

jr_010_6F9F:
    nop                                           ; $6F9F: $00
    rlca                                          ; $6FA0: $07
    inc bc                                        ; $6FA1: $03
    add hl, bc                                    ; $6FA2: $09
    rlca                                          ; $6FA3: $07
    ld de, $230F                                  ; $6FA4: $11 $0F $23
    ld e, $67                                     ; $6FA7: $1E $67
    inc a                                         ; $6FA9: $3C
    ld l, [hl]                                    ; $6FAA: $6E
    add hl, sp                                    ; $6FAB: $39
    ld a, c                                       ; $6FAC: $79
    jr nc, jr_010_6F9F                            ; $6FAD: $30 $F0

    ld b, b                                       ; $6FAF: $40
    ret nz                                        ; $6FB0: $C0

    add b                                         ; $6FB1: $80
    add b                                         ; $6FB2: $80
    nop                                           ; $6FB3: $00
    nop                                           ; $6FB4: $00
    nop                                           ; $6FB5: $00
    nop                                           ; $6FB6: $00
    nop                                           ; $6FB7: $00
    nop                                           ; $6FB8: $00
    nop                                           ; $6FB9: $00
    nop                                           ; $6FBA: $00
    nop                                           ; $6FBB: $00
    nop                                           ; $6FBC: $00
    nop                                           ; $6FBD: $00
    nop                                           ; $6FBE: $00
    nop                                           ; $6FBF: $00
    adc a                                         ; $6FC0: $8F
    ld b, $9E                                     ; $6FC1: $06 $9E
    inc c                                         ; $6FC3: $0C
    db $FC                                        ; $6FC4: $FC
    ld [$00F8], sp                                ; $6FC5: $08 $F8 $00
    ld hl, sp+$00                                 ; $6FC8: $F8 $00
    ldh a, [rP1]                                  ; $6FCA: $F0 $00
    or b                                          ; $6FCC: $B0
    ld b, b                                       ; $6FCD: $40
    ld h, b                                       ; $6FCE: $60
    nop                                           ; $6FCF: $00
    nop                                           ; $6FD0: $00
    nop                                           ; $6FD1: $00
    nop                                           ; $6FD2: $00
    nop                                           ; $6FD3: $00
    nop                                           ; $6FD4: $00
    nop                                           ; $6FD5: $00
    nop                                           ; $6FD6: $00
    nop                                           ; $6FD7: $00
    nop                                           ; $6FD8: $00
    nop                                           ; $6FD9: $00
    nop                                           ; $6FDA: $00
    nop                                           ; $6FDB: $00
    nop                                           ; $6FDC: $00
    nop                                           ; $6FDD: $00
    nop                                           ; $6FDE: $00
    nop                                           ; $6FDF: $00
    ld a, a                                       ; $6FE0: $7F
    ld c, $7F                                     ; $6FE1: $0E $7F
    nop                                           ; $6FE3: $00
    ld a, a                                       ; $6FE4: $7F
    nop                                           ; $6FE5: $00
    adc [hl]                                      ; $6FE6: $8E
    ld [hl], c                                    ; $6FE7: $71
    add h                                         ; $6FE8: $84
    ld a, e                                       ; $6FE9: $7B
    add a                                         ; $6FEA: $87
    ld a, b                                       ; $6FEB: $78
    ld c, a                                       ; $6FEC: $4F
    inc sp                                        ; $6FED: $33
    ld a, a                                       ; $6FEE: $7F
    inc b                                         ; $6FEF: $04
    ld l, [hl]                                    ; $6FF0: $6E
    inc [hl]                                      ; $6FF1: $34
    db $EC                                        ; $6FF2: $EC
    ld a, b                                       ; $6FF3: $78
    db $EC                                        ; $6FF4: $EC
    ld a, b                                       ; $6FF5: $78
    ld a, h                                       ; $6FF6: $7C
    jr c, jr_010_7071                             ; $6FF7: $38 $78

    jr nc, jr_010_7033                            ; $6FF9: $30 $38

    db $10                                        ; $6FFB: $10
    jr c, jr_010_700E                             ; $6FFC: $38 $10

    jr c, jr_010_7000                             ; $6FFE: $38 $00

jr_010_7000:
    db $FC                                        ; $7000: $FC
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    add b                                         ; $7004: $80
    nop                                           ; $7005: $00
    ld h, b                                       ; $7006: $60
    add b                                         ; $7007: $80
    db $10                                        ; $7008: $10
    ldh [rNR23], a                                ; $7009: $E0 $18
    ldh [$FFF8], a                                ; $700B: $E0 $F8
    db $10                                        ; $700D: $10

jr_010_700E:
    ld hl, sp-$10                                 ; $700E: $F8 $F0
    ldh a, [rP1]                                  ; $7010: $F0 $00
    nop                                           ; $7012: $00
    nop                                           ; $7013: $00
    nop                                           ; $7014: $00
    nop                                           ; $7015: $00
    nop                                           ; $7016: $00
    nop                                           ; $7017: $00
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    nop                                           ; $701A: $00
    nop                                           ; $701B: $00
    nop                                           ; $701C: $00
    nop                                           ; $701D: $00
    nop                                           ; $701E: $00
    nop                                           ; $701F: $00
    ld bc, $0700                                  ; $7020: $01 $00 $07
    nop                                           ; $7023: $00
    dec bc                                        ; $7024: $0B
    ld b, $17                                     ; $7025: $06 $17
    ld c, $1E                                     ; $7027: $0E $1E
    inc c                                         ; $7029: $0C
    inc e                                         ; $702A: $1C
    nop                                           ; $702B: $00
    nop                                           ; $702C: $00
    nop                                           ; $702D: $00
    nop                                           ; $702E: $00
    nop                                           ; $702F: $00
    nop                                           ; $7030: $00
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00

jr_010_7033:
    nop                                           ; $7033: $00
    nop                                           ; $7034: $00
    nop                                           ; $7035: $00
    nop                                           ; $7036: $00
    nop                                           ; $7037: $00
    nop                                           ; $7038: $00
    nop                                           ; $7039: $00
    nop                                           ; $703A: $00
    nop                                           ; $703B: $00
    nop                                           ; $703C: $00
    nop                                           ; $703D: $00
    nop                                           ; $703E: $00
    nop                                           ; $703F: $00
    ld hl, sp+$70                                 ; $7040: $F8 $70
    ld hl, sp+$70                                 ; $7042: $F8 $70
    ld hl, sp+$70                                 ; $7044: $F8 $70
    ld [hl], b                                    ; $7046: $70
    jr nz, @+$22                                  ; $7047: $20 $20

    nop                                           ; $7049: $00
    nop                                           ; $704A: $00
    nop                                           ; $704B: $00
    nop                                           ; $704C: $00
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
    nop                                           ; $705C: $00
    nop                                           ; $705D: $00
    nop                                           ; $705E: $00
    nop                                           ; $705F: $00
    nop                                           ; $7060: $00
    nop                                           ; $7061: $00
    add b                                         ; $7062: $80
    nop                                           ; $7063: $00
    ldh a, [$FF80]                                ; $7064: $F0 $80
    ld hl, sp+$30                                 ; $7066: $F8 $30
    call nz, Call_010_6278                        ; $7068: $C4 $78 $62
    inc a                                         ; $706B: $3C
    ld sp, $391E                                  ; $706C: $31 $1E $39
    rrca                                          ; $706F: $0F
    ld e, a                                       ; $7070: $5F

jr_010_7071:
    daa                                           ; $7071: $27
    ld l, a                                       ; $7072: $6F
    db $10                                        ; $7073: $10
    cp b                                          ; $7074: $B8
    ld b, b                                       ; $7075: $40
    db $FC                                        ; $7076: $FC
    nop                                           ; $7077: $00
    ld a, a                                       ; $7078: $7F
    inc c                                         ; $7079: $0C
    rrca                                          ; $707A: $0F
    rlca                                          ; $707B: $07
    rlca                                          ; $707C: $07
    inc bc                                        ; $707D: $03
    inc bc                                        ; $707E: $03
    nop                                           ; $707F: $00
    add c                                         ; $7080: $81
    nop                                           ; $7081: $00
    add d                                         ; $7082: $82
    ld bc, $0182                                  ; $7083: $01 $82 $01
    ld [bc], a                                    ; $7086: $02
    ld bc, $011F                                  ; $7087: $01 $1F $01
    inc hl                                        ; $708A: $23
    ld e, $FF                                     ; $708B: $1E $FF
    nop                                           ; $708D: $00
    adc e                                         ; $708E: $8B
    halt                                          ; $708F: $76
    adc e                                         ; $7090: $8B
    halt                                          ; $7091: $76
    ld a, a                                       ; $7092: $7F
    inc b                                         ; $7093: $04
    rlca                                          ; $7094: $07
    nop                                           ; $7095: $00
    ld bc, $0100                                  ; $7096: $01 $00 $01
    nop                                           ; $7099: $00
    ld bc, $0100                                  ; $709A: $01 $00 $01
    nop                                           ; $709D: $00
    nop                                           ; $709E: $00
    nop                                           ; $709F: $00
    inc c                                         ; $70A0: $0C
    nop                                           ; $70A1: $00
    db $F4                                        ; $70A2: $F4
    ld [$58EC], sp                                ; $70A3: $08 $EC $58
    db $DB                                        ; $70A6: $DB
    inc [hl]                                      ; $70A7: $34
    ld a, [hl-]                                   ; $70A8: $3A
    db $ED                                        ; $70A9: $ED
    db $FD                                        ; $70AA: $FD
    adc $DD                                       ; $70AB: $CE $DD
    ld l, $FF                                     ; $70AD: $2E $FF
    call c, Call_010_58FF                         ; $70AF: $DC $FF $58
    rst RST_38                                    ; $70B2: $FF
    add c                                         ; $70B3: $81
    rst RST_38                                    ; $70B4: $FF
    rst RST_38                                    ; $70B5: $FF
    rst RST_38                                    ; $70B6: $FF
    adc [hl]                                      ; $70B7: $8E
    rst RST_28                                    ; $70B8: $EF
    sub $FF                                       ; $70B9: $D6 $FF
    rst RST_28                                    ; $70BB: $EF
    rst RST_38                                    ; $70BC: $FF
    adc c                                         ; $70BD: $89
    rst RST_38                                    ; $70BE: $FF
    jr nc, jr_010_70C1                            ; $70BF: $30 $00

jr_010_70C1:
    nop                                           ; $70C1: $00
    nop                                           ; $70C2: $00
    nop                                           ; $70C3: $00
    ret nz                                        ; $70C4: $C0

    nop                                           ; $70C5: $00
    ld h, b                                       ; $70C6: $60
    ret nz                                        ; $70C7: $C0

    ldh a, [$FFE0]                                ; $70C8: $F0 $E0
    ldh a, [rNR41]                                ; $70CA: $F0 $20
    or b                                          ; $70CC: $B0
    ret nz                                        ; $70CD: $C0

    ldh [rLCDC], a                                ; $70CE: $E0 $40
    ldh [rLCDC], a                                ; $70D0: $E0 $40
    ret nz                                        ; $70D2: $C0

    nop                                           ; $70D3: $00
    and [hl]                                      ; $70D4: $A6
    ld b, b                                       ; $70D5: $40
    xor c                                         ; $70D6: $A9
    ld b, [hl]                                    ; $70D7: $46
    rst RST_08                                    ; $70D8: $CF
    nop                                           ; $70D9: $00
    db $FD                                        ; $70DA: $FD
    ld [bc], a                                    ; $70DB: $02
    cp $E0                                        ; $70DC: $FE $E0
    db $FC                                        ; $70DE: $FC
    nop                                           ; $70DF: $00
    ld a, a                                       ; $70E0: $7F
    ld c, $7F                                     ; $70E1: $0E $7F
    nop                                           ; $70E3: $00
    ld a, a                                       ; $70E4: $7F
    nop                                           ; $70E5: $00
    adc [hl]                                      ; $70E6: $8E
    ld [hl], c                                    ; $70E7: $71
    add h                                         ; $70E8: $84
    ld a, e                                       ; $70E9: $7B
    add a                                         ; $70EA: $87
    ld a, b                                       ; $70EB: $78
    ld c, a                                       ; $70EC: $4F
    inc sp                                        ; $70ED: $33
    ld a, a                                       ; $70EE: $7F
    inc b                                         ; $70EF: $04
    ld l, [hl]                                    ; $70F0: $6E
    inc [hl]                                      ; $70F1: $34
    db $EC                                        ; $70F2: $EC
    ld a, b                                       ; $70F3: $78
    db $EC                                        ; $70F4: $EC
    ld a, b                                       ; $70F5: $78
    ld a, h                                       ; $70F6: $7C
    jr c, jr_010_7171                             ; $70F7: $38 $78

    jr nc, jr_010_7133                            ; $70F9: $30 $38

    db $10                                        ; $70FB: $10
    jr c, jr_010_710E                             ; $70FC: $38 $10

    jr c, jr_010_7100                             ; $70FE: $38 $00

jr_010_7100:
    add b                                         ; $7100: $80
    nop                                           ; $7101: $00
    ld h, b                                       ; $7102: $60
    add b                                         ; $7103: $80
    db $10                                        ; $7104: $10
    ldh [rNR23], a                                ; $7105: $E0 $18
    ldh [$FFF8], a                                ; $7107: $E0 $F8
    db $10                                        ; $7109: $10
    ld hl, sp-$10                                 ; $710A: $F8 $F0
    ldh a, [rP1]                                  ; $710C: $F0 $00

jr_010_710E:
    nop                                           ; $710E: $00
    nop                                           ; $710F: $00
    nop                                           ; $7110: $00
    nop                                           ; $7111: $00
    nop                                           ; $7112: $00
    nop                                           ; $7113: $00
    nop                                           ; $7114: $00
    nop                                           ; $7115: $00
    nop                                           ; $7116: $00
    nop                                           ; $7117: $00
    nop                                           ; $7118: $00
    nop                                           ; $7119: $00
    nop                                           ; $711A: $00
    nop                                           ; $711B: $00
    nop                                           ; $711C: $00
    nop                                           ; $711D: $00
    nop                                           ; $711E: $00
    nop                                           ; $711F: $00
    ld a, h                                       ; $7120: $7C
    jr c, jr_010_719F                             ; $7121: $38 $7C

    jr c, @+$7E                                   ; $7123: $38 $7C

    jr c, @+$3A                                   ; $7125: $38 $38

    db $10                                        ; $7127: $10
    stop                                          ; $7128: $10 $00
    nop                                           ; $712A: $00
    nop                                           ; $712B: $00
    nop                                           ; $712C: $00
    nop                                           ; $712D: $00
    nop                                           ; $712E: $00
    nop                                           ; $712F: $00
    nop                                           ; $7130: $00
    nop                                           ; $7131: $00
    nop                                           ; $7132: $00

jr_010_7133:
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
    nop                                           ; $7140: $00
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    nop                                           ; $7143: $00
    nop                                           ; $7144: $00
    nop                                           ; $7145: $00
    nop                                           ; $7146: $00
    nop                                           ; $7147: $00
    nop                                           ; $7148: $00
    nop                                           ; $7149: $00
    nop                                           ; $714A: $00
    nop                                           ; $714B: $00
    nop                                           ; $714C: $00
    nop                                           ; $714D: $00
    nop                                           ; $714E: $00
    nop                                           ; $714F: $00
    nop                                           ; $7150: $00
    nop                                           ; $7151: $00
    jr c, jr_010_7154                             ; $7152: $38 $00

jr_010_7154:
    inc [hl]                                      ; $7154: $34
    jr @+$3C                                      ; $7155: $18 $3A

    inc e                                         ; $7157: $1C
    ld e, $0C                                     ; $7158: $1E $0C
    rrca                                          ; $715A: $0F
    nop                                           ; $715B: $00
    inc bc                                        ; $715C: $03
    ld bc, $0001                                  ; $715D: $01 $01 $00
    ld bc, $0300                                  ; $7160: $01 $00 $03
    ld bc, $0305                                  ; $7163: $01 $05 $03
    rlca                                          ; $7166: $07
    inc bc                                        ; $7167: $03
    dec bc                                        ; $7168: $0B
    rlca                                          ; $7169: $07
    dec bc                                        ; $716A: $0B
    ld b, $0F                                     ; $716B: $06 $0F
    ld b, $17                                     ; $716D: $06 $17
    ld a, [bc]                                    ; $716F: $0A
    cpl                                           ; $7170: $2F

jr_010_7171:
    inc e                                         ; $7171: $1C
    rst RST_38                                    ; $7172: $FF
    ld c, $1F                                     ; $7173: $0E $1F
    pop af                                        ; $7175: $F1
    db $ED                                        ; $7176: $ED
    ld a, [de]                                    ; $7177: $1A
    scf                                           ; $7178: $37
    dec c                                         ; $7179: $0D
    ccf                                           ; $717A: $3F
    inc d                                         ; $717B: $14
    inc e                                         ; $717C: $1C
    ld [$1038], sp                                ; $717D: $08 $38 $10
    jr jr_010_7182                                ; $7180: $18 $00

jr_010_7182:
    jr c, @+$12                                   ; $7182: $38 $10

    dec sp                                        ; $7184: $3B
    db $10                                        ; $7185: $10
    ld [hl], a                                    ; $7186: $77
    inc hl                                        ; $7187: $23
    rst RST_30                                    ; $7188: $F7
    ld h, e                                       ; $7189: $63
    db $EB                                        ; $718A: $EB
    call nz, $CCF2                                ; $718B: $C4 $F2 $CC
    db $E4                                        ; $718E: $E4
    sbc b                                         ; $718F: $98
    add $38                                       ; $7190: $C6 $38
    rst RST_28                                    ; $7192: $EF
    sub $7F                                       ; $7193: $D6 $7F
    rst RST_28                                    ; $7195: $EF
    ld a, a                                       ; $7196: $7F
    rst RST_28                                    ; $7197: $EF
    rst RST_38                                    ; $7198: $FF
    ld e, $FF                                     ; $7199: $1E $FF
    dec e                                         ; $719B: $1D
    rst RST_38                                    ; $719C: $FF
    add l                                         ; $719D: $85
    rst RST_30                                    ; $719E: $F7

jr_010_719F:
    ld a, [hl+]                                   ; $719F: $2A
    ldh [rP1], a                                  ; $71A0: $E0 $00
    db $FC                                        ; $71A2: $FC
    ldh [$FFFA], a                                ; $71A3: $E0 $FA
    inc b                                         ; $71A5: $04
    inc a                                         ; $71A6: $3C
    nop                                           ; $71A7: $00
    inc d                                         ; $71A8: $14
    ld [$0018], sp                                ; $71A9: $08 $18 $00
    nop                                           ; $71AC: $00
    nop                                           ; $71AD: $00
    ret nz                                        ; $71AE: $C0

    nop                                           ; $71AF: $00
    ld sp, hl                                     ; $71B0: $F9
    nop                                           ; $71B1: $00
    db $FD                                        ; $71B2: $FD
    nop                                           ; $71B3: $00
    db $FD                                        ; $71B4: $FD
    nop                                           ; $71B5: $00
    rst RST_38                                    ; $71B6: $FF
    ld bc, $99E6                                  ; $71B7: $01 $E6 $99
    add $3B                                       ; $71BA: $C6 $3B
    ld b, [hl]                                    ; $71BC: $46
    cp e                                          ; $71BD: $BB
    ld b, [hl]                                    ; $71BE: $46
    cp e                                          ; $71BF: $BB
    add b                                         ; $71C0: $80
    nop                                           ; $71C1: $00
    ret nz                                        ; $71C2: $C0

    nop                                           ; $71C3: $00
    ldh [rP1], a                                  ; $71C4: $E0 $00
    and b                                         ; $71C6: $A0
    ld b, b                                       ; $71C7: $40
    sub b                                         ; $71C8: $90
    ld h, b                                       ; $71C9: $60
    adc b                                         ; $71CA: $88
    ld [hl], b                                    ; $71CB: $70
    adc b                                         ; $71CC: $88
    ld [hl], b                                    ; $71CD: $70
    add h                                         ; $71CE: $84
    ld a, b                                       ; $71CF: $78
    add h                                         ; $71D0: $84
    ld a, b                                       ; $71D1: $78
    add h                                         ; $71D2: $84
    ld a, b                                       ; $71D3: $78
    add d                                         ; $71D4: $82
    ld a, h                                       ; $71D5: $7C
    add d                                         ; $71D6: $82
    ld a, h                                       ; $71D7: $7C
    ld [bc], a                                    ; $71D8: $02
    db $FC                                        ; $71D9: $FC
    ld [bc], a                                    ; $71DA: $02
    db $FC                                        ; $71DB: $FC
    ld [bc], a                                    ; $71DC: $02
    db $FC                                        ; $71DD: $FC
    ld [bc], a                                    ; $71DE: $02
    db $FC                                        ; $71DF: $FC
    cp a                                          ; $71E0: $BF
    ld d, $1F                                     ; $71E1: $16 $1F
    ld b, $0E                                     ; $71E3: $06 $0E
    ld bc, $0102                                  ; $71E5: $01 $02 $01
    dec b                                         ; $71E8: $05
    ld [bc], a                                    ; $71E9: $02
    dec b                                         ; $71EA: $05
    ld [bc], a                                    ; $71EB: $02
    rrca                                          ; $71EC: $0F
    inc b                                         ; $71ED: $04
    rrca                                          ; $71EE: $0F
    ld b, $0F                                     ; $71EF: $06 $0F
    nop                                           ; $71F1: $00
    ld bc, $0700                                  ; $71F2: $01 $00 $07
    nop                                           ; $71F5: $00
    ccf                                           ; $71F6: $3F
    nop                                           ; $71F7: $00
    rst RST_38                                    ; $71F8: $FF
    inc bc                                        ; $71F9: $03
    rst RST_38                                    ; $71FA: $FF
    ld c, $FF                                     ; $71FB: $0E $FF
    nop                                           ; $71FD: $00
    rst RST_38                                    ; $71FE: $FF
    nop                                           ; $71FF: $00
    ld c, [hl]                                    ; $7200: $4E
    or a                                          ; $7201: $B7
    call c, $FD27                                 ; $7202: $DC $27 $FD
    rst RST_08                                    ; $7205: $CF
    ld a, e                                       ; $7206: $7B
    rst RST_08                                    ; $7207: $CF
    ld a, a                                       ; $7208: $7F
    sbc a                                         ; $7209: $9F
    rst RST_38                                    ; $720A: $FF
    ccf                                           ; $720B: $3F
    rst RST_38                                    ; $720C: $FF
    ccf                                           ; $720D: $3F
    rst RST_38                                    ; $720E: $FF
    ld a, a                                       ; $720F: $7F
    rst RST_38                                    ; $7210: $FF
    rst RST_30                                    ; $7211: $F7
    rst RST_38                                    ; $7212: $FF
    rst RST_00                                    ; $7213: $C7
    rst RST_38                                    ; $7214: $FF
    rrca                                          ; $7215: $0F
    rst RST_38                                    ; $7216: $FF
    ld e, $FF                                     ; $7217: $1E $FF
    inc a                                         ; $7219: $3C
    cp $70                                        ; $721A: $FE $70
    db $FC                                        ; $721C: $FC
    ret nz                                        ; $721D: $C0

    ld hl, sp+$00                                 ; $721E: $F8 $00
    ld [hl+], a                                   ; $7220: $22
    db $FC                                        ; $7221: $FC
    ld [hl+], a                                   ; $7222: $22
    db $FC                                        ; $7223: $FC
    ld h, $FC                                     ; $7224: $26 $FC
    ld h, [hl]                                    ; $7226: $66
    db $FC                                        ; $7227: $FC
    and $FC                                       ; $7228: $E6 $FC
    xor $FC                                       ; $722A: $EE $FC
    db $EC                                        ; $722C: $EC
    ld hl, sp-$34                                 ; $722D: $F8 $CC
    ld hl, sp-$24                                 ; $722F: $F8 $DC
    ld hl, sp-$08                                 ; $7231: $F8 $F8
    ldh a, [$FFB8]                                ; $7233: $F0 $B8
    ldh [$FFF0], a                                ; $7235: $E0 $F0
    ldh [$FFF0], a                                ; $7237: $E0 $F0
    ret nz                                        ; $7239: $C0

    ldh [$FF80], a                                ; $723A: $E0 $80
    ret nz                                        ; $723C: $C0

    add b                                         ; $723D: $80
    add b                                         ; $723E: $80
    nop                                           ; $723F: $00
    rst RST_38                                    ; $7240: $FF
    nop                                           ; $7241: $00
    rst RST_38                                    ; $7242: $FF
    nop                                           ; $7243: $00
    ld a, a                                       ; $7244: $7F
    nop                                           ; $7245: $00
    rra                                           ; $7246: $1F
    nop                                           ; $7247: $00
    inc bc                                        ; $7248: $03
    nop                                           ; $7249: $00
    nop                                           ; $724A: $00
    nop                                           ; $724B: $00
    ld bc, $0700                                  ; $724C: $01 $00 $07
    nop                                           ; $724F: $00
    rra                                           ; $7250: $1F
    nop                                           ; $7251: $00
    ld a, a                                       ; $7252: $7F
    nop                                           ; $7253: $00
    nop                                           ; $7254: $00
    nop                                           ; $7255: $00
    nop                                           ; $7256: $00
    nop                                           ; $7257: $00
    nop                                           ; $7258: $00
    nop                                           ; $7259: $00
    nop                                           ; $725A: $00
    nop                                           ; $725B: $00
    nop                                           ; $725C: $00
    nop                                           ; $725D: $00
    nop                                           ; $725E: $00
    nop                                           ; $725F: $00
    rst RST_38                                    ; $7260: $FF
    inc bc                                        ; $7261: $03
    ld a, a                                       ; $7262: $7F
    ld b, $FF                                     ; $7263: $06 $FF
    db $10                                        ; $7265: $10
    rst RST_38                                    ; $7266: $FF
    nop                                           ; $7267: $00
    db $FC                                        ; $7268: $FC
    nop                                           ; $7269: $00
    ret nz                                        ; $726A: $C0

    nop                                           ; $726B: $00
    nop                                           ; $726C: $00
    nop                                           ; $726D: $00
    nop                                           ; $726E: $00
    nop                                           ; $726F: $00
    nop                                           ; $7270: $00
    nop                                           ; $7271: $00
    nop                                           ; $7272: $00
    nop                                           ; $7273: $00
    nop                                           ; $7274: $00
    nop                                           ; $7275: $00
    nop                                           ; $7276: $00
    nop                                           ; $7277: $00
    nop                                           ; $7278: $00
    nop                                           ; $7279: $00
    nop                                           ; $727A: $00
    nop                                           ; $727B: $00
    nop                                           ; $727C: $00
    nop                                           ; $727D: $00
    nop                                           ; $727E: $00
    nop                                           ; $727F: $00
    rra                                           ; $7280: $1F
    nop                                           ; $7281: $00
    ld de, $0E0F                                  ; $7282: $11 $0F $0E
    ld bc, $0003                                  ; $7285: $01 $03 $00
    inc bc                                        ; $7288: $03
    ld bc, $0001                                  ; $7289: $01 $01 $00
    inc bc                                        ; $728C: $03
    ld bc, $0003                                  ; $728D: $01 $03 $00
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
    inc bc                                        ; $729E: $03
    nop                                           ; $729F: $00
    nop                                           ; $72A0: $00
    nop                                           ; $72A1: $00
    nop                                           ; $72A2: $00
    nop                                           ; $72A3: $00
    nop                                           ; $72A4: $00
    nop                                           ; $72A5: $00
    nop                                           ; $72A6: $00
    nop                                           ; $72A7: $00
    nop                                           ; $72A8: $00
    nop                                           ; $72A9: $00
    nop                                           ; $72AA: $00
    nop                                           ; $72AB: $00
    nop                                           ; $72AC: $00
    nop                                           ; $72AD: $00
    nop                                           ; $72AE: $00
    nop                                           ; $72AF: $00
    ld bc, $0700                                  ; $72B0: $01 $00 $07
    ld bc, $071E                                  ; $72B3: $01 $1E $07
    jr nc, jr_010_72D7                            ; $72B6: $30 $1F

    ld h, b                                       ; $72B8: $60
    ccf                                           ; $72B9: $3F
    ld a, b                                       ; $72BA: $78
    rlca                                          ; $72BB: $07
    ld b, $01                                     ; $72BC: $06 $01
    ld bc, $0E00                                  ; $72BE: $01 $00 $0E
    nop                                           ; $72C1: $00
    rrca                                          ; $72C2: $0F
    ld b, $07                                     ; $72C3: $06 $07
    inc bc                                        ; $72C5: $03
    rlca                                          ; $72C6: $07
    inc bc                                        ; $72C7: $03
    inc bc                                        ; $72C8: $03
    ld bc, $0001                                  ; $72C9: $01 $01 $00
    ld bc, $0000                                  ; $72CC: $01 $00 $00
    nop                                           ; $72CF: $00
    nop                                           ; $72D0: $00
    nop                                           ; $72D1: $00
    nop                                           ; $72D2: $00
    nop                                           ; $72D3: $00
    nop                                           ; $72D4: $00
    nop                                           ; $72D5: $00
    nop                                           ; $72D6: $00

jr_010_72D7:
    nop                                           ; $72D7: $00
    nop                                           ; $72D8: $00
    nop                                           ; $72D9: $00
    nop                                           ; $72DA: $00
    nop                                           ; $72DB: $00
    nop                                           ; $72DC: $00
    nop                                           ; $72DD: $00
    nop                                           ; $72DE: $00
    nop                                           ; $72DF: $00
    rra                                           ; $72E0: $1F
    nop                                           ; $72E1: $00
    rst RST_38                                    ; $72E2: $FF
    rra                                           ; $72E3: $1F
    ret nz                                        ; $72E4: $C0

    rst RST_38                                    ; $72E5: $FF
    rlca                                          ; $72E6: $07
    rst RST_38                                    ; $72E7: $FF
    rra                                           ; $72E8: $1F
    rst RST_38                                    ; $72E9: $FF
    ccf                                           ; $72EA: $3F
    rst RST_38                                    ; $72EB: $FF
    inc bc                                        ; $72EC: $03
    rst RST_38                                    ; $72ED: $FF
    rlca                                          ; $72EE: $07
    rst RST_38                                    ; $72EF: $FF
    add b                                         ; $72F0: $80
    ld a, a                                       ; $72F1: $7F
    ld b, b                                       ; $72F2: $40
    ccf                                           ; $72F3: $3F
    ccf                                           ; $72F4: $3F
    db $10                                        ; $72F5: $10
    rra                                           ; $72F6: $1F
    ld b, $CF                                     ; $72F7: $06 $CF
    ld b, $FE                                     ; $72F9: $06 $FE
    rst RST_08                                    ; $72FB: $CF
    cp $EF                                        ; $72FC: $FE $EF
    cp $EF                                        ; $72FE: $FE $EF
    rst RST_38                                    ; $7300: $FF
    jp Jump_000_0CD3                              ; $7301: $C3 $D3 $0C


    ld [de], a                                    ; $7304: $12
    dec c                                         ; $7305: $0D
    ld [hl+], a                                   ; $7306: $22
    dec e                                         ; $7307: $1D
    ld [hl+], a                                   ; $7308: $22
    dec e                                         ; $7309: $1D
    inc hl                                        ; $730A: $23
    inc e                                         ; $730B: $1C
    daa                                           ; $730C: $27
    add hl, de                                    ; $730D: $19
    ccf                                           ; $730E: $3F
    nop                                           ; $730F: $00
    ccf                                           ; $7310: $3F
    nop                                           ; $7311: $00
    ccf                                           ; $7312: $3F
    nop                                           ; $7313: $00
    rra                                           ; $7314: $1F
    nop                                           ; $7315: $00
    inc bc                                        ; $7316: $03
    nop                                           ; $7317: $00
    nop                                           ; $7318: $00
    nop                                           ; $7319: $00
    jr jr_010_731C                                ; $731A: $18 $00

jr_010_731C:
    jr z, jr_010_732E                             ; $731C: $28 $10

    inc a                                         ; $731E: $3C
    nop                                           ; $731F: $00
    ld hl, sp+$00                                 ; $7320: $F8 $00
    rst RST_38                                    ; $7322: $FF
    ld hl, sp+$7F                                 ; $7323: $F8 $7F
    rst RST_38                                    ; $7325: $FF
    rst RST_38                                    ; $7326: $FF
    rst RST_38                                    ; $7327: $FF
    rst RST_38                                    ; $7328: $FF
    rst RST_38                                    ; $7329: $FF
    rst RST_38                                    ; $732A: $FF
    rst RST_38                                    ; $732B: $FF
    rst RST_38                                    ; $732C: $FF
    rst RST_38                                    ; $732D: $FF

jr_010_732E:
    rst RST_38                                    ; $732E: $FF
    rst RST_38                                    ; $732F: $FF
    ccf                                           ; $7330: $3F
    rst RST_38                                    ; $7331: $FF
    rrca                                          ; $7332: $0F
    rst RST_38                                    ; $7333: $FF
    pop af                                        ; $7334: $F1
    rrca                                          ; $7335: $0F
    ld c, $01                                     ; $7336: $0E $01
    ld bc, $F000                                  ; $7338: $01 $00 $F0
    nop                                           ; $733B: $00
    ldh a, [$FF60]                                ; $733C: $F0 $60
    ldh a, [rNR41]                                ; $733E: $F0 $20
    and b                                         ; $7340: $A0
    ld b, b                                       ; $7341: $40
    and b                                         ; $7342: $A0
    ld b, b                                       ; $7343: $40
    ld b, b                                       ; $7344: $40
    add b                                         ; $7345: $80
    ld [hl], b                                    ; $7346: $70
    add b                                         ; $7347: $80
    ld hl, sp+$60                                 ; $7348: $F8 $60
    db $FD                                        ; $734A: $FD
    ld l, b                                       ; $734B: $68
    rst RST_28                                    ; $734C: $EF
    ld d, h                                       ; $734D: $54
    rst RST_38                                    ; $734E: $FF
    and c                                         ; $734F: $A1
    rst RST_38                                    ; $7350: $FF
    cp b                                          ; $7351: $B8
    rst RST_38                                    ; $7352: $FF
    ld a, b                                       ; $7353: $78
    cp $F7                                        ; $7354: $FE $F7
    cp $F7                                        ; $7356: $FE $F7
    rst RST_30                                    ; $7358: $F7
    ld l, e                                       ; $7359: $6B
    ld h, e                                       ; $735A: $63
    inc e                                         ; $735B: $1C
    daa                                           ; $735C: $27
    add hl, de                                    ; $735D: $19
    ld c, a                                       ; $735E: $4F
    inc sp                                        ; $735F: $33
    add b                                         ; $7360: $80
    nop                                           ; $7361: $00
    ldh [rP1], a                                  ; $7362: $E0 $00
    ldh a, [$FFC0]                                ; $7364: $F0 $C0
    db $FC                                        ; $7366: $FC
    ldh a, [$FFFE]                                ; $7367: $F0 $FE
    ld hl, sp-$01                                 ; $7369: $F8 $FF
    db $FC                                        ; $736B: $FC
    rst RST_38                                    ; $736C: $FF
    cp $FF                                        ; $736D: $FE $FF
    cp a                                          ; $736F: $BF
    rst RST_38                                    ; $7370: $FF
    rst RST_20                                    ; $7371: $E7
    rst RST_38                                    ; $7372: $FF
    pop af                                        ; $7373: $F1
    ld a, a                                       ; $7374: $7F
    ld hl, sp-$41                                 ; $7375: $F8 $BF
    ld a, h                                       ; $7377: $7C
    ld a, a                                       ; $7378: $7F
    inc a                                         ; $7379: $3C
    ccf                                           ; $737A: $3F
    ld e, $1F                                     ; $737B: $1E $1F
    ld c, $0F                                     ; $737D: $0E $0F
    ld b, $0F                                     ; $737F: $06 $0F
    inc bc                                        ; $7381: $03
    rra                                           ; $7382: $1F
    dec bc                                        ; $7383: $0B
    ccf                                           ; $7384: $3F
    ld de, $29FF                                  ; $7385: $11 $FF $29
    rst RST_28                                    ; $7388: $EF
    or b                                          ; $7389: $B0
    or a                                          ; $738A: $B7
    ld e, b                                       ; $738B: $58
    ei                                            ; $738C: $FB
    adc h                                         ; $738D: $8C
    rst RST_38                                    ; $738E: $FF
    ld [hl], b                                    ; $738F: $70
    rst RST_30                                    ; $7390: $F7
    jr c, @-$13                                   ; $7391: $38 $EB

    ld d, b                                       ; $7393: $50
    di                                            ; $7394: $F3
    ld h, b                                       ; $7395: $60
    rst RST_10                                    ; $7396: $D7
    ld h, b                                       ; $7397: $60
    rst RST_10                                    ; $7398: $D7
    ldh [$FFE6], a                                ; $7399: $E0 $E6
    ret nz                                        ; $739B: $C0

    xor [hl]                                      ; $739C: $AE
    ret nz                                        ; $739D: $C0

    call z, $F880                                 ; $739E: $CC $80 $F8
    jr nz, @-$02                                  ; $73A1: $20 $FC

    nop                                           ; $73A3: $00
    db $FC                                        ; $73A4: $FC
    nop                                           ; $73A5: $00
    cp $00                                        ; $73A6: $FE $00
    xor $00                                       ; $73A8: $EE $00
    xor $00                                       ; $73AA: $EE $00
    rst RST_20                                    ; $73AC: $E7
    nop                                           ; $73AD: $00
    rst RST_20                                    ; $73AE: $E7
    nop                                           ; $73AF: $00
    db $E3                                        ; $73B0: $E3
    nop                                           ; $73B1: $00
    db $E3                                        ; $73B2: $E3
    nop                                           ; $73B3: $00
    db $E3                                        ; $73B4: $E3
    nop                                           ; $73B5: $00
    pop bc                                        ; $73B6: $C1
    nop                                           ; $73B7: $00
    pop bc                                        ; $73B8: $C1
    nop                                           ; $73B9: $00
    ret nz                                        ; $73BA: $C0

    nop                                           ; $73BB: $00
    add b                                         ; $73BC: $80
    nop                                           ; $73BD: $00
    add b                                         ; $73BE: $80
    nop                                           ; $73BF: $00
    ld e, a                                       ; $73C0: $5F
    jr nz, jr_010_7402                            ; $73C1: $20 $3F

    rlca                                          ; $73C3: $07
    rlca                                          ; $73C4: $07
    nop                                           ; $73C5: $00
    nop                                           ; $73C6: $00
    nop                                           ; $73C7: $00
    nop                                           ; $73C8: $00
    nop                                           ; $73C9: $00
    nop                                           ; $73CA: $00
    nop                                           ; $73CB: $00
    nop                                           ; $73CC: $00
    nop                                           ; $73CD: $00
    nop                                           ; $73CE: $00
    nop                                           ; $73CF: $00
    nop                                           ; $73D0: $00
    nop                                           ; $73D1: $00
    nop                                           ; $73D2: $00
    nop                                           ; $73D3: $00
    nop                                           ; $73D4: $00
    nop                                           ; $73D5: $00
    nop                                           ; $73D6: $00
    nop                                           ; $73D7: $00
    nop                                           ; $73D8: $00
    nop                                           ; $73D9: $00
    nop                                           ; $73DA: $00
    nop                                           ; $73DB: $00
    nop                                           ; $73DC: $00
    nop                                           ; $73DD: $00
    nop                                           ; $73DE: $00
    nop                                           ; $73DF: $00
    rst RST_10                                    ; $73E0: $D7
    inc hl                                        ; $73E1: $23
    rst RST_28                                    ; $73E2: $EF
    add $EE                                       ; $73E3: $C6 $EE
    call nz, $08DC                                ; $73E5: $C4 $DC $08
    inc e                                         ; $73E8: $1C
    ld [$0018], sp                                ; $73E9: $08 $18 $00
    nop                                           ; $73EC: $00
    nop                                           ; $73ED: $00
    nop                                           ; $73EE: $00
    nop                                           ; $73EF: $00
    nop                                           ; $73F0: $00
    nop                                           ; $73F1: $00
    nop                                           ; $73F2: $00
    nop                                           ; $73F3: $00
    nop                                           ; $73F4: $00
    nop                                           ; $73F5: $00
    nop                                           ; $73F6: $00
    nop                                           ; $73F7: $00
    nop                                           ; $73F8: $00
    nop                                           ; $73F9: $00
    nop                                           ; $73FA: $00
    nop                                           ; $73FB: $00
    nop                                           ; $73FC: $00
    nop                                           ; $73FD: $00
    nop                                           ; $73FE: $00
    nop                                           ; $73FF: $00
    sbc b                                         ; $7400: $98
    nop                                           ; $7401: $00

jr_010_7402:
    jr nc, jr_010_7404                            ; $7402: $30 $00

jr_010_7404:
    jr nz, jr_010_7406                            ; $7404: $20 $00

jr_010_7406:
    nop                                           ; $7406: $00
    nop                                           ; $7407: $00

Call_010_7408:
    nop                                           ; $7408: $00
    nop                                           ; $7409: $00
    nop                                           ; $740A: $00
    nop                                           ; $740B: $00
    nop                                           ; $740C: $00
    nop                                           ; $740D: $00
    nop                                           ; $740E: $00
    nop                                           ; $740F: $00
    nop                                           ; $7410: $00
    nop                                           ; $7411: $00
    nop                                           ; $7412: $00
    nop                                           ; $7413: $00
    nop                                           ; $7414: $00
    nop                                           ; $7415: $00
    nop                                           ; $7416: $00
    nop                                           ; $7417: $00
    nop                                           ; $7418: $00
    nop                                           ; $7419: $00
    nop                                           ; $741A: $00
    nop                                           ; $741B: $00
    nop                                           ; $741C: $00
    nop                                           ; $741D: $00
    nop                                           ; $741E: $00
    nop                                           ; $741F: $00
    nop                                           ; $7420: $00
    nop                                           ; $7421: $00
    nop                                           ; $7422: $00
    nop                                           ; $7423: $00
    nop                                           ; $7424: $00
    nop                                           ; $7425: $00
    nop                                           ; $7426: $00
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
    add b                                         ; $7436: $80
    nop                                           ; $7437: $00
    ret nz                                        ; $7438: $C0

    nop                                           ; $7439: $00
    ldh [$FF80], a                                ; $743A: $E0 $80
    ldh a, [$FFC0]                                ; $743C: $F0 $C0
    ldh a, [rLCDC]                                ; $743E: $F0 $40
    ret z                                         ; $7440: $C8

    ld a, a                                       ; $7441: $7F
    pop bc                                        ; $7442: $C1
    ld a, a                                       ; $7443: $7F
    add c                                         ; $7444: $81
    ld a, [hl]                                    ; $7445: $7E
    add c                                         ; $7446: $81
    ld a, [hl]                                    ; $7447: $7E
    add c                                         ; $7448: $81
    ld a, [hl]                                    ; $7449: $7E
    add d                                         ; $744A: $82
    ld a, h                                       ; $744B: $7C
    add d                                         ; $744C: $82
    ld a, h                                       ; $744D: $7C
    ld b, d                                       ; $744E: $42
    inc a                                         ; $744F: $3C
    ld b, e                                       ; $7450: $43
    inc a                                         ; $7451: $3C
    ld b, e                                       ; $7452: $43
    dec a                                         ; $7453: $3D
    inc hl                                        ; $7454: $23
    inc e                                         ; $7455: $1C
    inc hl                                        ; $7456: $23
    inc e                                         ; $7457: $1C
    ld [de], a                                    ; $7458: $12
    inc c                                         ; $7459: $0C
    ld a, [bc]                                    ; $745A: $0A
    inc b                                         ; $745B: $04
    ld c, $00                                     ; $745C: $0E $00
    ld b, $00                                     ; $745E: $06 $00
    ld bc, $0300                                  ; $7460: $01 $00 $03
    nop                                           ; $7463: $00
    rlca                                          ; $7464: $07
    inc bc                                        ; $7465: $03
    rrca                                          ; $7466: $0F
    inc bc                                        ; $7467: $03
    rra                                           ; $7468: $1F
    rlca                                          ; $7469: $07
    rra                                           ; $746A: $1F
    rrca                                          ; $746B: $0F
    dec sp                                        ; $746C: $3B
    rrca                                          ; $746D: $0F
    ccf                                           ; $746E: $3F
    rra                                           ; $746F: $1F
    ld [hl], a                                    ; $7470: $77
    ccf                                           ; $7471: $3F
    ld [hl], a                                    ; $7472: $77
    ccf                                           ; $7473: $3F
    ld l, a                                       ; $7474: $6F
    ccf                                           ; $7475: $3F
    xor $7F                                       ; $7476: $EE $7F
    xor $7F                                       ; $7478: $EE $7F
    call z, $C87F                                 ; $747A: $CC $7F $C8
    ld a, a                                       ; $747D: $7F
    ret z                                         ; $747E: $C8

    ld a, a                                       ; $747F: $7F
    rst RST_38                                    ; $7480: $FF
    ldh [rIE], a                                  ; $7481: $E0 $FF
    rst RST_00                                    ; $7483: $C7
    rst RST_38                                    ; $7484: $FF
    sbc $FF                                       ; $7485: $DE $FF
    db $FC                                        ; $7487: $FC
    rst RST_38                                    ; $7488: $FF
    ld hl, sp-$02                                 ; $7489: $F8 $FE
    ld hl, sp-$04                                 ; $748B: $F8 $FC
    ldh a, [$FFB8]                                ; $748D: $F0 $B8
    ldh [rSVBK], a                                ; $748F: $E0 $70
    ldh [rSVBK], a                                ; $7491: $E0 $70
    ret nz                                        ; $7493: $C0

    ldh [$FFC0], a                                ; $7494: $E0 $C0
    ret nz                                        ; $7496: $C0

    add b                                         ; $7497: $80
    ret nz                                        ; $7498: $C0

    add b                                         ; $7499: $80
    ret nz                                        ; $749A: $C0

    add b                                         ; $749B: $80
    add b                                         ; $749C: $80
    nop                                           ; $749D: $00
    add b                                         ; $749E: $80
    nop                                           ; $749F: $00
    nop                                           ; $74A0: $00
    nop                                           ; $74A1: $00
    nop                                           ; $74A2: $00
    nop                                           ; $74A3: $00
    nop                                           ; $74A4: $00
    nop                                           ; $74A5: $00
    nop                                           ; $74A6: $00
    nop                                           ; $74A7: $00
    nop                                           ; $74A8: $00
    nop                                           ; $74A9: $00
    nop                                           ; $74AA: $00
    nop                                           ; $74AB: $00
    nop                                           ; $74AC: $00
    nop                                           ; $74AD: $00
    nop                                           ; $74AE: $00
    nop                                           ; $74AF: $00
    nop                                           ; $74B0: $00
    nop                                           ; $74B1: $00
    inc bc                                        ; $74B2: $03
    nop                                           ; $74B3: $00
    rrca                                          ; $74B4: $0F
    nop                                           ; $74B5: $00
    ccf                                           ; $74B6: $3F
    nop                                           ; $74B7: $00
    ld a, a                                       ; $74B8: $7F
    ld b, $FF                                     ; $74B9: $06 $FF
    inc e                                         ; $74BB: $1C
    rst RST_38                                    ; $74BC: $FF
    ld a, b                                       ; $74BD: $78
    rst RST_38                                    ; $74BE: $FF
    ldh a, [rP1]                                  ; $74BF: $F0 $00
    nop                                           ; $74C1: $00
    nop                                           ; $74C2: $00
    nop                                           ; $74C3: $00
    nop                                           ; $74C4: $00
    nop                                           ; $74C5: $00
    ld a, a                                       ; $74C6: $7F
    nop                                           ; $74C7: $00
    rst RST_38                                    ; $74C8: $FF
    nop                                           ; $74C9: $00
    rst RST_38                                    ; $74CA: $FF
    nop                                           ; $74CB: $00
    rst RST_38                                    ; $74CC: $FF
    add b                                         ; $74CD: $80
    db $FC                                        ; $74CE: $FC
    nop                                           ; $74CF: $00
    ldh a, [rP1]                                  ; $74D0: $F0 $00
    rst RST_38                                    ; $74D2: $FF
    nop                                           ; $74D3: $00
    rst RST_38                                    ; $74D4: $FF
    nop                                           ; $74D5: $00
    rst RST_38                                    ; $74D6: $FF
    ldh [rIE], a                                  ; $74D7: $E0 $FF
    add b                                         ; $74D9: $80
    ld hl, sp+$00                                 ; $74DA: $F8 $00
    ret nz                                        ; $74DC: $C0

    nop                                           ; $74DD: $00
    add b                                         ; $74DE: $80
    nop                                           ; $74DF: $00
    nop                                           ; $74E0: $00
    nop                                           ; $74E1: $00
    nop                                           ; $74E2: $00
    nop                                           ; $74E3: $00
    nop                                           ; $74E4: $00
    nop                                           ; $74E5: $00
    nop                                           ; $74E6: $00
    nop                                           ; $74E7: $00
    nop                                           ; $74E8: $00
    nop                                           ; $74E9: $00
    nop                                           ; $74EA: $00
    nop                                           ; $74EB: $00
    ldh [rP1], a                                  ; $74EC: $E0 $00
    db $FC                                        ; $74EE: $FC
    nop                                           ; $74EF: $00
    rst RST_38                                    ; $74F0: $FF
    nop                                           ; $74F1: $00
    add b                                         ; $74F2: $80
    nop                                           ; $74F3: $00
    nop                                           ; $74F4: $00
    nop                                           ; $74F5: $00
    nop                                           ; $74F6: $00
    nop                                           ; $74F7: $00
    nop                                           ; $74F8: $00
    nop                                           ; $74F9: $00
    ret nz                                        ; $74FA: $C0

    nop                                           ; $74FB: $00
    ldh a, [rP1]                                  ; $74FC: $F0 $00
    ld hl, sp+$00                                 ; $74FE: $F8 $00
    add c                                         ; $7500: $81
    nop                                           ; $7501: $00
    add c                                         ; $7502: $81
    nop                                           ; $7503: $00
    add c                                         ; $7504: $81
    nop                                           ; $7505: $00
    pop bc                                        ; $7506: $C1
    nop                                           ; $7507: $00
    cp $41                                        ; $7508: $FE $41
    rst RST_38                                    ; $750A: $FF
    ccf                                           ; $750B: $3F
    rst RST_38                                    ; $750C: $FF
    rrca                                          ; $750D: $0F
    adc a                                         ; $750E: $8F
    ld bc, $0081                                  ; $750F: $01 $81 $00
    add b                                         ; $7512: $80
    nop                                           ; $7513: $00
    add b                                         ; $7514: $80
    nop                                           ; $7515: $00
    add c                                         ; $7516: $81
    nop                                           ; $7517: $00
    inc bc                                        ; $7518: $03
    ld bc, $0003                                  ; $7519: $01 $03 $00
    nop                                           ; $751C: $00
    nop                                           ; $751D: $00
    nop                                           ; $751E: $00
    nop                                           ; $751F: $00
    add b                                         ; $7520: $80
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
    nop                                           ; $7523: $00
    nop                                           ; $7524: $00
    nop                                           ; $7525: $00
    inc bc                                        ; $7526: $03
    nop                                           ; $7527: $00
    dec b                                         ; $7528: $05
    ld [bc], a                                    ; $7529: $02
    dec b                                         ; $752A: $05
    ld [bc], a                                    ; $752B: $02
    db $DD                                        ; $752C: $DD
    ld [bc], a                                    ; $752D: $02
    ei                                            ; $752E: $FB
    ld d, [hl]                                    ; $752F: $56
    ld [hl], a                                    ; $7530: $77
    dec l                                         ; $7531: $2D
    ccf                                           ; $7532: $3F
    add hl, de                                    ; $7533: $19
    dec de                                        ; $7534: $1B
    dec b                                         ; $7535: $05
    rra                                           ; $7536: $1F
    ld a, [bc]                                    ; $7537: $0A
    rrca                                          ; $7538: $0F
    ld [bc], a                                    ; $7539: $02
    rlca                                          ; $753A: $07
    nop                                           ; $753B: $00
    rrca                                          ; $753C: $0F
    inc b                                         ; $753D: $04
    rra                                           ; $753E: $1F
    add hl, bc                                    ; $753F: $09
    rst RST_00                                    ; $7540: $C7
    nop                                           ; $7541: $00
    rst RST_30                                    ; $7542: $F7
    jp $B3CF                                      ; $7543: $C3 $CF $B3


    di                                            ; $7546: $F3
    inc c                                         ; $7547: $0C
    ld sp, $FFEE                                  ; $7548: $31 $EE $FF
    ldh [$FFE0], a                                ; $754B: $E0 $E0
    rst RST_18                                    ; $754D: $DF
    ldh [$FFDF], a                                ; $754E: $E0 $DF
    ld hl, sp+$07                                 ; $7550: $F8 $07
    rst RST_20                                    ; $7552: $E7
    ld b, b                                       ; $7553: $40
    ldh a, [$FF60]                                ; $7554: $F0 $60
    ldh a, [$FFC0]                                ; $7556: $F0 $C0
    ret nz                                        ; $7558: $C0

    add b                                         ; $7559: $80
    add b                                         ; $755A: $80
    nop                                           ; $755B: $00
    nop                                           ; $755C: $00
    nop                                           ; $755D: $00
    nop                                           ; $755E: $00
    nop                                           ; $755F: $00
    nop                                           ; $7560: $00
    nop                                           ; $7561: $00
    nop                                           ; $7562: $00
    nop                                           ; $7563: $00
    nop                                           ; $7564: $00
    nop                                           ; $7565: $00
    nop                                           ; $7566: $00
    nop                                           ; $7567: $00
    nop                                           ; $7568: $00
    nop                                           ; $7569: $00
    nop                                           ; $756A: $00
    nop                                           ; $756B: $00
    add b                                         ; $756C: $80
    nop                                           ; $756D: $00
    ld b, b                                       ; $756E: $40
    add b                                         ; $756F: $80
    cp b                                          ; $7570: $B8
    ret nz                                        ; $7571: $C0

    and $B8                                       ; $7572: $E6 $B8
    db $FD                                        ; $7574: $FD
    ld a, [hl]                                    ; $7575: $7E
    rst RST_38                                    ; $7576: $FF
    rrca                                          ; $7577: $0F
    sbc a                                         ; $7578: $9F
    ld [hl], a                                    ; $7579: $77
    rst RST_38                                    ; $757A: $FF
    ld [hl], e                                    ; $757B: $73
    rst RST_30                                    ; $757C: $F7
    ld l, b                                       ; $757D: $68
    ldh [c], a                                    ; $757E: $E2
    sbc h                                         ; $757F: $9C
    ld a, [hl]                                    ; $7580: $7E
    cp l                                          ; $7581: $BD
    rst RST_38                                    ; $7582: $FF
    ld a, [hl]                                    ; $7583: $7E
    rst RST_38                                    ; $7584: $FF
    sbc [hl]                                      ; $7585: $9E
    cp $6C                                        ; $7586: $FE $6C
    db $FC                                        ; $7588: $FC
    add b                                         ; $7589: $80
    db $FC                                        ; $758A: $FC
    nop                                           ; $758B: $00
    ld hl, sp+$00                                 ; $758C: $F8 $00
    ld a, c                                       ; $758E: $79
    add b                                         ; $758F: $80
    ld a, c                                       ; $7590: $79
    add b                                         ; $7591: $80
    ldh a, [rP1]                                  ; $7592: $F0 $00
    nop                                           ; $7594: $00
    nop                                           ; $7595: $00
    nop                                           ; $7596: $00
    nop                                           ; $7597: $00
    nop                                           ; $7598: $00
    nop                                           ; $7599: $00
    nop                                           ; $759A: $00
    nop                                           ; $759B: $00
    nop                                           ; $759C: $00
    nop                                           ; $759D: $00
    nop                                           ; $759E: $00
    nop                                           ; $759F: $00
    ldh a, [$FFE0]                                ; $75A0: $F0 $E0
    ldh a, [$FFE0]                                ; $75A2: $F0 $E0
    ld hl, sp+$70                                 ; $75A4: $F8 $70
    cp $18                                        ; $75A6: $FE $18
    ld e, a                                       ; $75A8: $5F
    add [hl]                                      ; $75A9: $86
    daa                                           ; $75AA: $27
    ret nz                                        ; $75AB: $C0

    sbc b                                         ; $75AC: $98
    ld h, b                                       ; $75AD: $60
    ld a, h                                       ; $75AE: $7C
    jr jr_010_75ED                                ; $75AF: $18 $3C

    jr jr_010_75EB                                ; $75B1: $18 $38

    db $10                                        ; $75B3: $10
    jr c, jr_010_75C6                             ; $75B4: $38 $10

    ld a, b                                       ; $75B6: $78
    db $10                                        ; $75B7: $10
    ldh a, [rP1]                                  ; $75B8: $F0 $00
    ld [hl], b                                    ; $75BA: $70
    add b                                         ; $75BB: $80
    ret nc                                        ; $75BC: $D0

    jr nz, jr_010_75DF                            ; $75BD: $20 $20

    nop                                           ; $75BF: $00
    jr nz, jr_010_75C2                            ; $75C0: $20 $00

jr_010_75C2:
    jr nz, jr_010_75C4                            ; $75C2: $20 $00

jr_010_75C4:
    ld h, b                                       ; $75C4: $60
    nop                                           ; $75C5: $00

jr_010_75C6:
    ld h, b                                       ; $75C6: $60
    nop                                           ; $75C7: $00
    ld h, b                                       ; $75C8: $60
    nop                                           ; $75C9: $00
    ldh [rP1], a                                  ; $75CA: $E0 $00
    pop hl                                        ; $75CC: $E1
    nop                                           ; $75CD: $00
    pop af                                        ; $75CE: $F1
    nop                                           ; $75CF: $00
    di                                            ; $75D0: $F3
    nop                                           ; $75D1: $00
    di                                            ; $75D2: $F3
    nop                                           ; $75D3: $00
    ei                                            ; $75D4: $FB
    nop                                           ; $75D5: $00
    ei                                            ; $75D6: $FB
    nop                                           ; $75D7: $00
    rst RST_38                                    ; $75D8: $FF
    nop                                           ; $75D9: $00
    rst RST_38                                    ; $75DA: $FF
    nop                                           ; $75DB: $00
    rst RST_38                                    ; $75DC: $FF
    nop                                           ; $75DD: $00
    ld a, a                                       ; $75DE: $7F

jr_010_75DF:
    db $10                                        ; $75DF: $10
    ld a, a                                       ; $75E0: $7F
    nop                                           ; $75E1: $00
    ld a, a                                       ; $75E2: $7F
    ld [$0C3F], sp                                ; $75E3: $08 $3F $0C
    ccf                                           ; $75E6: $3F
    ld b, $1F                                     ; $75E7: $06 $1F
    rlca                                          ; $75E9: $07
    rra                                           ; $75EA: $1F

jr_010_75EB:
    inc bc                                        ; $75EB: $03
    rrca                                          ; $75EC: $0F

jr_010_75ED:
    inc bc                                        ; $75ED: $03
    rlca                                          ; $75EE: $07
    ld bc, $0003                                  ; $75EF: $01 $03 $00
    ld bc, $0000                                  ; $75F2: $01 $00 $00
    nop                                           ; $75F5: $00
    nop                                           ; $75F6: $00
    nop                                           ; $75F7: $00
    nop                                           ; $75F8: $00
    nop                                           ; $75F9: $00
    nop                                           ; $75FA: $00
    nop                                           ; $75FB: $00
    nop                                           ; $75FC: $00
    nop                                           ; $75FD: $00
    nop                                           ; $75FE: $00
    nop                                           ; $75FF: $00
    nop                                           ; $7600: $00
    nop                                           ; $7601: $00
    nop                                           ; $7602: $00
    nop                                           ; $7603: $00
    nop                                           ; $7604: $00
    nop                                           ; $7605: $00
    ld b, b                                       ; $7606: $40
    nop                                           ; $7607: $00
    ret nz                                        ; $7608: $C0

    nop                                           ; $7609: $00
    pop bc                                        ; $760A: $C1
    nop                                           ; $760B: $00
    pop bc                                        ; $760C: $C1
    nop                                           ; $760D: $00
    ret nz                                        ; $760E: $C0

    nop                                           ; $760F: $00
    ret nz                                        ; $7610: $C0

    nop                                           ; $7611: $00
    ret nz                                        ; $7612: $C0

    nop                                           ; $7613: $00
    ret nz                                        ; $7614: $C0

    nop                                           ; $7615: $00
    ldh [rP1], a                                  ; $7616: $E0 $00
    ldh [rP1], a                                  ; $7618: $E0 $00
    ldh [$FF80], a                                ; $761A: $E0 $80
    ldh a, [$FF80]                                ; $761C: $F0 $80
    ld hl, sp-$40                                 ; $761E: $F8 $C0
    ld hl, sp+$40                                 ; $7620: $F8 $40
    db $FC                                        ; $7622: $FC
    ld h, b                                       ; $7623: $60
    cp $70                                        ; $7624: $FE $70
    rst RST_38                                    ; $7626: $FF
    inc a                                         ; $7627: $3C
    rst RST_38                                    ; $7628: $FF
    ld a, $FF                                     ; $7629: $3E $FF
    sbc a                                         ; $762B: $9F
    cp $FF                                        ; $762C: $FE $FF
    rst RST_38                                    ; $762E: $FF
    rst RST_38                                    ; $762F: $FF
    rst RST_38                                    ; $7630: $FF
    rst RST_38                                    ; $7631: $FF
    rst RST_38                                    ; $7632: $FF
    rst RST_38                                    ; $7633: $FF
    rst RST_30                                    ; $7634: $F7
    ccf                                           ; $7635: $3F
    ld a, h                                       ; $7636: $7C
    rra                                           ; $7637: $1F

Call_010_7638:
    ld a, $07                                     ; $7638: $3E $07
    rrca                                          ; $763A: $0F
    inc bc                                        ; $763B: $03
    inc bc                                        ; $763C: $03
    nop                                           ; $763D: $00
    nop                                           ; $763E: $00
    nop                                           ; $763F: $00
    inc bc                                        ; $7640: $03
    ld bc, $0305                                  ; $7641: $01 $05 $03
    rlca                                          ; $7644: $07
    inc bc                                        ; $7645: $03
    dec bc                                        ; $7646: $0B
    rlca                                          ; $7647: $07
    dec bc                                        ; $7648: $0B
    ld b, $0F                                     ; $7649: $06 $0F
    ld b, $17                                     ; $764B: $06 $17
    ld a, [bc]                                    ; $764D: $0A
    cpl                                           ; $764E: $2F
    inc e                                         ; $764F: $1C
    rst RST_38                                    ; $7650: $FF
    ld c, $1F                                     ; $7651: $0E $1F
    pop af                                        ; $7653: $F1
    db $ED                                        ; $7654: $ED
    ld a, [de]                                    ; $7655: $1A
    scf                                           ; $7656: $37
    dec c                                         ; $7657: $0D
    ccf                                           ; $7658: $3F
    inc d                                         ; $7659: $14
    inc e                                         ; $765A: $1C
    ld [$1038], sp                                ; $765B: $08 $38 $10
    jr nc, jr_010_7660                            ; $765E: $30 $00

jr_010_7660:
    ret nz                                        ; $7660: $C0

    nop                                           ; $7661: $00
    ldh [$FF80], a                                ; $7662: $E0 $80
    db $FC                                        ; $7664: $FC
    ldh [$FF3F], a                                ; $7665: $E0 $3F
    db $FC                                        ; $7667: $FC
    add c                                         ; $7668: $81
    rst RST_38                                    ; $7669: $FF
    ldh [rIE], a                                  ; $766A: $E0 $FF
    ldh a, [rIE]                                  ; $766C: $F0 $FF
    cp $FF                                        ; $766E: $FE $FF
    nop                                           ; $7670: $00
    rst RST_38                                    ; $7671: $FF
    ret nz                                        ; $7672: $C0

    rst RST_38                                    ; $7673: $FF
    db $FC                                        ; $7674: $FC
    ld a, a                                       ; $7675: $7F
    ld a, a                                       ; $7676: $7F
    nop                                           ; $7677: $00
    nop                                           ; $7678: $00
    nop                                           ; $7679: $00
    nop                                           ; $767A: $00
    nop                                           ; $767B: $00
    nop                                           ; $767C: $00
    nop                                           ; $767D: $00
    nop                                           ; $767E: $00
    nop                                           ; $767F: $00
    inc c                                         ; $7680: $0C
    nop                                           ; $7681: $00
    inc e                                         ; $7682: $1C
    ld [$081D], sp                                ; $7683: $08 $1D $08
    dec sp                                        ; $7686: $3B
    ld de, $31FB                                  ; $7687: $11 $FB $31
    push af                                       ; $768A: $F5
    ldh [c], a                                    ; $768B: $E2
    ld sp, hl                                     ; $768C: $F9
    and $F2                                       ; $768D: $E6 $F2
    call z, $9CE3                                 ; $768F: $CC $E3 $9C
    rst RST_30                                    ; $7692: $F7
    ld l, e                                       ; $7693: $6B
    cp a                                          ; $7694: $BF
    ld [hl], a                                    ; $7695: $77
    cp a                                          ; $7696: $BF
    ld [hl], a                                    ; $7697: $77
    rst RST_38                                    ; $7698: $FF
    rrca                                          ; $7699: $0F
    rst RST_38                                    ; $769A: $FF
    ld c, $FF                                     ; $769B: $0E $FF
    jp nz, Jump_000_15FB                          ; $769D: $C2 $FB $15

    cp a                                          ; $76A0: $BF
    ld d, $1F                                     ; $76A1: $16 $1F
    ld b, $0E                                     ; $76A3: $06 $0E
    ld bc, $0102                                  ; $76A5: $01 $02 $01
    dec b                                         ; $76A8: $05
    ld [bc], a                                    ; $76A9: $02
    dec b                                         ; $76AA: $05
    ld [bc], a                                    ; $76AB: $02
    rrca                                          ; $76AC: $0F
    inc b                                         ; $76AD: $04
    rrca                                          ; $76AE: $0F
    ld b, $0F                                     ; $76AF: $06 $0F
    nop                                           ; $76B1: $00
    nop                                           ; $76B2: $00
    nop                                           ; $76B3: $00
    nop                                           ; $76B4: $00
    nop                                           ; $76B5: $00
    nop                                           ; $76B6: $00
    nop                                           ; $76B7: $00
    nop                                           ; $76B8: $00
    nop                                           ; $76B9: $00
    nop                                           ; $76BA: $00
    nop                                           ; $76BB: $00
    ld bc, $0100                                  ; $76BC: $01 $00 $01
    nop                                           ; $76BF: $00
    rst RST_20                                    ; $76C0: $E7
    ld bc, $E01F                                  ; $76C1: $01 $1F $E0
    nop                                           ; $76C4: $00
    rst RST_38                                    ; $76C5: $FF
    nop                                           ; $76C6: $00
    rst RST_38                                    ; $76C7: $FF
    nop                                           ; $76C8: $00
    rst RST_38                                    ; $76C9: $FF
    nop                                           ; $76CA: $00
    rst RST_38                                    ; $76CB: $FF
    rlca                                          ; $76CC: $07
    ld hl, sp-$08                                 ; $76CD: $F8 $F8
    nop                                           ; $76CF: $00
    nop                                           ; $76D0: $00
    nop                                           ; $76D1: $00
    nop                                           ; $76D2: $00
    nop                                           ; $76D3: $00
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
    nop                                           ; $76E0: $00
    nop                                           ; $76E1: $00
    nop                                           ; $76E2: $00
    nop                                           ; $76E3: $00
    add b                                         ; $76E4: $80
    nop                                           ; $76E5: $00
    ldh a, [$FF80]                                ; $76E6: $F0 $80
    cp $F0                                        ; $76E8: $FE $F0
    db $FD                                        ; $76EA: $FD
    ld [bc], a                                    ; $76EB: $02
    ld e, $00                                     ; $76EC: $1E $00
    ld a, [bc]                                    ; $76EE: $0A
    inc b                                         ; $76EF: $04
    inc c                                         ; $76F0: $0C
    nop                                           ; $76F1: $00
    add b                                         ; $76F2: $80
    nop                                           ; $76F3: $00
    ldh [$FF80], a                                ; $76F4: $E0 $80
    db $FC                                        ; $76F6: $FC
    add b                                         ; $76F7: $80
    cp $00                                        ; $76F8: $FE $00
    cp $80                                        ; $76FA: $FE $80
    cp $80                                        ; $76FC: $FE $80
    ldh a, [c]                                    ; $76FE: $F2
    ld c, h                                       ; $76FF: $4C
    call nz, $4438                                ; $7700: $C4 $38 $44
    cp b                                          ; $7703: $B8
    ld b, h                                       ; $7704: $44
    cp b                                          ; $7705: $B8
    ld c, b                                       ; $7706: $48
    or b                                          ; $7707: $B0
    swap b                                        ; $7708: $CB $30
    rst RST_38                                    ; $770A: $FF
    jp nz, $F77F                                  ; $770B: $C2 $7F $F7

    ld a, a                                       ; $770E: $7F
    pop af                                        ; $770F: $F1
    ld a, c                                       ; $7710: $79
    ldh a, [$FFF0]                                ; $7711: $F0 $F0
    ld h, b                                       ; $7713: $60
    ldh a, [$FF60]                                ; $7714: $F0 $60
    ldh a, [$FF60]                                ; $7716: $F0 $60
    ldh [rLCDC], a                                ; $7718: $E0 $40
    ldh [rLCDC], a                                ; $771A: $E0 $40
    ldh [$FF80], a                                ; $771C: $E0 $80
    ldh [$FFC0], a                                ; $771E: $E0 $C0
    ldh [$FF80], a                                ; $7720: $E0 $80
    cp $00                                        ; $7722: $FE $00
    inc c                                         ; $7724: $0C
    ldh a, [rNR23]                                ; $7725: $F0 $18
    ldh [rNR41], a                                ; $7727: $E0 $20
    ret nz                                        ; $7729: $C0

    ret nz                                        ; $772A: $C0

    nop                                           ; $772B: $00
    nop                                           ; $772C: $00
    nop                                           ; $772D: $00
    nop                                           ; $772E: $00
    nop                                           ; $772F: $00
    nop                                           ; $7730: $00
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
    nop                                           ; $773F: $00
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    nop                                           ; $7742: $00
    nop                                           ; $7743: $00
    nop                                           ; $7744: $00
    nop                                           ; $7745: $00
    nop                                           ; $7746: $00
    nop                                           ; $7747: $00
    nop                                           ; $7748: $00
    nop                                           ; $7749: $00
    nop                                           ; $774A: $00
    nop                                           ; $774B: $00
    add b                                         ; $774C: $80
    nop                                           ; $774D: $00
    ret nz                                        ; $774E: $C0

    add b                                         ; $774F: $80
    ret nz                                        ; $7750: $C0

    add b                                         ; $7751: $80
    ret nz                                        ; $7752: $C0

    nop                                           ; $7753: $00
    nop                                           ; $7754: $00
    nop                                           ; $7755: $00
    nop                                           ; $7756: $00
    nop                                           ; $7757: $00
    nop                                           ; $7758: $00
    nop                                           ; $7759: $00
    nop                                           ; $775A: $00
    nop                                           ; $775B: $00
    nop                                           ; $775C: $00
    nop                                           ; $775D: $00
    nop                                           ; $775E: $00
    nop                                           ; $775F: $00
    db $10                                        ; $7760: $10
    rrca                                          ; $7761: $0F
    db $10                                        ; $7762: $10
    rrca                                          ; $7763: $0F
    ld [$0B07], sp                                ; $7764: $08 $07 $0B
    dec b                                         ; $7767: $05
    add l                                         ; $7768: $85
    ld [bc], a                                    ; $7769: $02
    ld h, h                                       ; $776A: $64
    inc bc                                        ; $776B: $03
    ld a, [hl]                                    ; $776C: $7E
    ld hl, $193E                                  ; $776D: $21 $3E $19
    rra                                           ; $7770: $1F
    inc c                                         ; $7771: $0C
    rrca                                          ; $7772: $0F
    rlca                                          ; $7773: $07
    rlca                                          ; $7774: $07
    inc bc                                        ; $7775: $03
    inc bc                                        ; $7776: $03
    ld bc, $0001                                  ; $7777: $01 $01 $00
    inc b                                         ; $777A: $04
    nop                                           ; $777B: $00
    inc bc                                        ; $777C: $03
    nop                                           ; $777D: $00
    ld bc, $0000                                  ; $777E: $01 $00 $00
    nop                                           ; $7781: $00
    nop                                           ; $7782: $00
    nop                                           ; $7783: $00
    nop                                           ; $7784: $00
    nop                                           ; $7785: $00
    nop                                           ; $7786: $00
    nop                                           ; $7787: $00
    nop                                           ; $7788: $00
    nop                                           ; $7789: $00
    nop                                           ; $778A: $00
    nop                                           ; $778B: $00
    nop                                           ; $778C: $00
    nop                                           ; $778D: $00
    nop                                           ; $778E: $00
    nop                                           ; $778F: $00
    nop                                           ; $7790: $00
    nop                                           ; $7791: $00
    ld [bc], a                                    ; $7792: $02
    nop                                           ; $7793: $00
    inc bc                                        ; $7794: $03
    nop                                           ; $7795: $00
    ld bc, $0100                                  ; $7796: $01 $00 $01
    nop                                           ; $7799: $00
    ld bc, $4200                                  ; $779A: $01 $00 $42
    ld bc, $033C                                  ; $779D: $01 $3C $03
    ld [hl+], a                                   ; $77A0: $22
    nop                                           ; $77A1: $00
    ld de, $1D00                                  ; $77A2: $11 $00 $1D
    nop                                           ; $77A5: $00
    adc [hl]                                      ; $77A6: $8E
    nop                                           ; $77A7: $00
    ld l, e                                       ; $77A8: $6B
    add h                                         ; $77A9: $84
    sbc h                                         ; $77AA: $9C
    rst RST_20                                    ; $77AB: $E7
    db $EC                                        ; $77AC: $EC
    ld [hl], e                                    ; $77AD: $73
    or $7D                                        ; $77AE: $F6 $7D
    ld a, a                                       ; $77B0: $7F
    cp a                                          ; $77B1: $BF
    ld a, a                                       ; $77B2: $7F
    rst RST_18                                    ; $77B3: $DF
    rst RST_38                                    ; $77B4: $FF
    rst RST_10                                    ; $77B5: $D7
    rst RST_38                                    ; $77B6: $FF
    reti                                          ; $77B7: $D9


    rst RST_38                                    ; $77B8: $FF
    ld [$63FF], a                                 ; $77B9: $EA $FF $63
    ld a, a                                       ; $77BC: $7F
    sbc a                                         ; $77BD: $9F
    ccf                                           ; $77BE: $3F
    sbc $7F                                       ; $77BF: $DE $7F
    cp a                                          ; $77C1: $BF
    db $FD                                        ; $77C2: $FD
    dec de                                        ; $77C3: $1B
    cp $DD                                        ; $77C4: $FE $DD
    rst RST_38                                    ; $77C6: $FF
    xor $FF                                       ; $77C7: $EE $FF
    add $EF                                       ; $77C9: $C6 $EF
    inc de                                        ; $77CB: $13
    di                                            ; $77CC: $F3
    dec c                                         ; $77CD: $0D
    ld a, c                                       ; $77CE: $79
    add [hl]                                      ; $77CF: $86
    sub b                                         ; $77D0: $90
    ld l, a                                       ; $77D1: $6F
    pop bc                                        ; $77D2: $C1
    ccf                                           ; $77D3: $3F
    ld h, e                                       ; $77D4: $63
    rra                                           ; $77D5: $1F
    ld a, a                                       ; $77D6: $7F
    rra                                           ; $77D7: $1F
    ccf                                           ; $77D8: $3F
    dec e                                         ; $77D9: $1D
    dec e                                         ; $77DA: $1D
    nop                                           ; $77DB: $00
    nop                                           ; $77DC: $00
    nop                                           ; $77DD: $00
    nop                                           ; $77DE: $00
    nop                                           ; $77DF: $00
    add b                                         ; $77E0: $80
    nop                                           ; $77E1: $00
    ret nz                                        ; $77E2: $C0

    nop                                           ; $77E3: $00
    and b                                         ; $77E4: $A0
    ret nz                                        ; $77E5: $C0

    ret nc                                        ; $77E6: $D0

    ld h, b                                       ; $77E7: $60
    add sp, $70                                   ; $77E8: $E8 $70
    ld h, h                                       ; $77EA: $64
    cp b                                          ; $77EB: $B8
    ld [hl], d                                    ; $77EC: $72
    cp h                                          ; $77ED: $BC
    or c                                          ; $77EE: $B1
    sbc $FF                                       ; $77EF: $DE $FF
    rst RST_18                                    ; $77F1: $DF
    rst RST_38                                    ; $77F2: $FF
    sbc a                                         ; $77F3: $9F
    rst RST_28                                    ; $77F4: $EF
    rst RST_18                                    ; $77F5: $DF
    di                                            ; $77F6: $F3
    adc [hl]                                      ; $77F7: $8E

Jump_010_77F8:
    ld sp, hl                                     ; $77F8: $F9
    and $F8                                       ; $77F9: $E6 $F8
    rst RST_30                                    ; $77FB: $F7
    rst RST_38                                    ; $77FC: $FF
    scf                                           ; $77FD: $37
    rst RST_38                                    ; $77FE: $FF
    ld d, e                                       ; $77FF: $53
    rst RST_38                                    ; $7800: $FF
    and e                                         ; $7801: $A3
    ld a, a                                       ; $7802: $7F
    or c                                          ; $7803: $B1
    ccf                                           ; $7804: $3F
    ld hl, sp-$61                                 ; $7805: $F8 $9F
    ld a, h                                       ; $7807: $7C
    rst RST_18                                    ; $7808: $DF
    cp h                                          ; $7809: $BC
    rst RST_28                                    ; $780A: $EF
    sbc h                                         ; $780B: $9C
    cp a                                          ; $780C: $BF
    inc e                                         ; $780D: $1C
    sbc a                                         ; $780E: $9F
    ld c, $CF                                     ; $780F: $0E $CF
    add a                                         ; $7811: $87
    rst RST_08                                    ; $7812: $CF
    add a                                         ; $7813: $87
    rst RST_00                                    ; $7814: $C7
    add e                                         ; $7815: $83
    rst RST_00                                    ; $7816: $C7
    inc bc                                        ; $7817: $03
    rlca                                          ; $7818: $07
    nop                                           ; $7819: $00
    nop                                           ; $781A: $00
    nop                                           ; $781B: $00
    nop                                           ; $781C: $00
    nop                                           ; $781D: $00
    nop                                           ; $781E: $00
    nop                                           ; $781F: $00
    add b                                         ; $7820: $80
    nop                                           ; $7821: $00
    ret nz                                        ; $7822: $C0

jr_010_7823:
    add b                                         ; $7823: $80
    ldh [$FFC0], a                                ; $7824: $E0 $C0
    ldh [$FFC0], a                                ; $7826: $E0 $C0
    ldh a, [$FF60]                                ; $7828: $F0 $60
    ld hl, sp+$30                                 ; $782A: $F8 $30
    ld a, b                                       ; $782C: $78
    sub b                                         ; $782D: $90
    db $FC                                        ; $782E: $FC
    adc b                                         ; $782F: $88
    db $EC                                        ; $7830: $EC
    ret nz                                        ; $7831: $C0

    ldh [c], a                                    ; $7832: $E2
    ret nz                                        ; $7833: $C0

    ldh [$FFC0], a                                ; $7834: $E0 $C0
    ldh a, [rLCDC]                                ; $7836: $F0 $40
    ldh a, [rP1]                                  ; $7838: $F0 $00
    ld hl, sp+$00                                 ; $783A: $F8 $00
    ld l, h                                       ; $783C: $6C
    sub b                                         ; $783D: $90
    or h                                          ; $783E: $B4
    ld c, b                                       ; $783F: $48
    ret c                                         ; $7840: $D8

    jr nz, jr_010_7823                            ; $7841: $20 $E0

    nop                                           ; $7843: $00
    ret nz                                        ; $7844: $C0

    add b                                         ; $7845: $80
    ldh [$FFC0], a                                ; $7846: $E0 $C0
    ldh [rP1], a                                  ; $7848: $E0 $00
    nop                                           ; $784A: $00
    nop                                           ; $784B: $00
    nop                                           ; $784C: $00
    nop                                           ; $784D: $00
    nop                                           ; $784E: $00
    nop                                           ; $784F: $00
    nop                                           ; $7850: $00
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    nop                                           ; $7853: $00
    nop                                           ; $7854: $00
    nop                                           ; $7855: $00
    nop                                           ; $7856: $00
    nop                                           ; $7857: $00
    nop                                           ; $7858: $00
    nop                                           ; $7859: $00
    nop                                           ; $785A: $00
    nop                                           ; $785B: $00
    nop                                           ; $785C: $00
    nop                                           ; $785D: $00
    nop                                           ; $785E: $00
    nop                                           ; $785F: $00
    nop                                           ; $7860: $00
    nop                                           ; $7861: $00
    nop                                           ; $7862: $00
    nop                                           ; $7863: $00
    nop                                           ; $7864: $00
    nop                                           ; $7865: $00
    nop                                           ; $7866: $00
    nop                                           ; $7867: $00
    nop                                           ; $7868: $00
    nop                                           ; $7869: $00
    nop                                           ; $786A: $00
    nop                                           ; $786B: $00
    nop                                           ; $786C: $00
    nop                                           ; $786D: $00
    inc bc                                        ; $786E: $03
    nop                                           ; $786F: $00
    rlca                                          ; $7870: $07
    ld [bc], a                                    ; $7871: $02
    rlca                                          ; $7872: $07
    ld [bc], a                                    ; $7873: $02
    ld c, $04                                     ; $7874: $0E $04
    rrca                                          ; $7876: $0F
    inc b                                         ; $7877: $04
    rra                                           ; $7878: $1F
    dec c                                         ; $7879: $0D
    ld d, $0D                                     ; $787A: $16 $0D
    inc d                                         ; $787C: $14
    dec bc                                        ; $787D: $0B
    inc d                                         ; $787E: $14
    dec bc                                        ; $787F: $0B
    inc e                                         ; $7880: $1C
    inc bc                                        ; $7881: $03
    inc a                                         ; $7882: $3C
    dec de                                        ; $7883: $1B
    ld a, a                                       ; $7884: $7F
    inc a                                         ; $7885: $3C
    ld [hl], b                                    ; $7886: $70
    rrca                                          ; $7887: $0F
    sbc a                                         ; $7888: $9F
    ld [hl], b                                    ; $7889: $70
    ld l, l                                       ; $788A: $6D
    dec de                                        ; $788B: $1B
    ld d, d                                       ; $788C: $52
    dec l                                         ; $788D: $2D
    ld [hl], e                                    ; $788E: $73
    inc c                                         ; $788F: $0C
    ld c, $01                                     ; $7890: $0E $01
    ld [bc], a                                    ; $7892: $02
    ld bc, $0003                                  ; $7893: $01 $03 $00
    rlca                                          ; $7896: $07
    ld [bc], a                                    ; $7897: $02
    dec b                                         ; $7898: $05
    ld [bc], a                                    ; $7899: $02
    dec c                                         ; $789A: $0D
    ld [bc], a                                    ; $789B: $02
    dec e                                         ; $789C: $1D
    ld a, [bc]                                    ; $789D: $0A
    ccf                                           ; $789E: $3F
    inc e                                         ; $789F: $1C
    ccf                                           ; $78A0: $3F
    inc e                                         ; $78A1: $1C
    ld l, $1D                                     ; $78A2: $2E $1D
    ld l, $1D                                     ; $78A4: $2E $1D
    ld h, $1D                                     ; $78A6: $26 $1D
    daa                                           ; $78A8: $27
    inc e                                         ; $78A9: $1C
    ld h, $1C                                     ; $78AA: $26 $1C
    ld d, $0C                                     ; $78AC: $16 $0C
    inc c                                         ; $78AE: $0C
    nop                                           ; $78AF: $00
    ld a, [de]                                    ; $78B0: $1A
    inc c                                         ; $78B1: $0C
    inc c                                         ; $78B2: $0C
    nop                                           ; $78B3: $00
    ld a, [de]                                    ; $78B4: $1A
    inc c                                         ; $78B5: $0C
    inc c                                         ; $78B6: $0C
    nop                                           ; $78B7: $00
    ld a, [de]                                    ; $78B8: $1A

jr_010_78B9:
    inc c                                         ; $78B9: $0C
    ld a, [de]                                    ; $78BA: $1A
    inc c                                         ; $78BB: $0C
    ld a, [de]                                    ; $78BC: $1A
    inc c                                         ; $78BD: $0C
    inc c                                         ; $78BE: $0C
    nop                                           ; $78BF: $00
    jr jr_010_78C2                                ; $78C0: $18 $00

jr_010_78C2:
    jr c, jr_010_78D4                             ; $78C2: $38 $10

    jr c, jr_010_78D6                             ; $78C4: $38 $10

    ld [hl], b                                    ; $78C6: $70
    jr nz, jr_010_78B9                            ; $78C7: $20 $F0

    ld h, b                                       ; $78C9: $60
    ldh [$FFC0], a                                ; $78CA: $E0 $C0
    ldh [$FFC0], a                                ; $78CC: $E0 $C0
    ret nz                                        ; $78CE: $C0

    add b                                         ; $78CF: $80
    db $FC                                        ; $78D0: $FC
    add b                                         ; $78D1: $80
    rst RST_38                                    ; $78D2: $FF
    cp h                                          ; $78D3: $BC

jr_010_78D4:
    ld a, a                                       ; $78D4: $7F
    cp a                                          ; $78D5: $BF

jr_010_78D6:
    ld a, a                                       ; $78D6: $7F
    adc a                                         ; $78D7: $8F
    rst RST_38                                    ; $78D8: $FF
    halt                                          ; $78D9: $76
    adc a                                         ; $78DA: $8F
    ld [hl], l                                    ; $78DB: $75
    adc a                                         ; $78DC: $8F
    ld [hl], l                                    ; $78DD: $75
    push af                                       ; $78DE: $F5
    ld a, [bc]                                    ; $78DF: $0A
    sbc c                                         ; $78E0: $99
    ld h, [hl]                                    ; $78E1: $66
    sbc c                                         ; $78E2: $99
    ld h, [hl]                                    ; $78E3: $66
    xor [hl]                                      ; $78E4: $AE
    ld b, c                                       ; $78E5: $41
    and d                                         ; $78E6: $A2
    ld b, c                                       ; $78E7: $41
    push hl                                       ; $78E8: $E5
    ld [bc], a                                    ; $78E9: $02
    push hl                                       ; $78EA: $E5
    jp nz, $C42F                                  ; $78EB: $C2 $2F $C4

    cpl                                           ; $78EE: $2F
    add $51                                       ; $78EF: $C6 $51
    adc [hl]                                      ; $78F1: $8E
    ldh [c], a                                    ; $78F2: $E2
    inc e                                         ; $78F3: $1C
    db $FC                                        ; $78F4: $FC
    nop                                           ; $78F5: $00
    xor b                                         ; $78F6: $A8
    ld d, b                                       ; $78F7: $50
    cp [hl]                                       ; $78F8: $BE
    ld b, b                                       ; $78F9: $40
    db $DB                                        ; $78FA: $DB
    ld b, $1E                                     ; $78FB: $06 $1E
    ld bc, $001F                                  ; $78FD: $01 $1F $00
    ldh [rP1], a                                  ; $7900: $E0 $00
    ldh a, [rP1]                                  ; $7902: $F0 $00
    ld hl, sp+$00                                 ; $7904: $F8 $00
    ld hl, sp+$00                                 ; $7906: $F8 $00
    ld hl, sp+$00                                 ; $7908: $F8 $00
    db $E4                                        ; $790A: $E4
    sbc b                                         ; $790B: $98
    call nz, $4438                                ; $790C: $C4 $38 $44
    cp b                                          ; $790F: $B8
    ld b, h                                       ; $7910: $44
    cp b                                          ; $7911: $B8
    ld c, b                                       ; $7912: $48
    or b                                          ; $7913: $B0
    ret z                                         ; $7914: $C8

    jr nc, jr_010_7987                            ; $7915: $30 $70

    ret nz                                        ; $7917: $C0

    ld a, b                                       ; $7918: $78
    ldh a, [$FF78]                                ; $7919: $F0 $78
    ldh a, [$FF38]                                ; $791B: $F0 $38
    ldh a, [$FFB0]                                ; $791D: $F0 $B0
    ld h, b                                       ; $791F: $60
    sub d                                         ; $7920: $92
    inc c                                         ; $7921: $0C
    ld [de], a                                    ; $7922: $12
    inc c                                         ; $7923: $0C
    call nc, Call_010_7408                        ; $7924: $D4 $08 $74
    ret z                                         ; $7927: $C8

    call c, $F430                                 ; $7928: $DC $30 $F4
    ld [$00FC], sp                                ; $792B: $08 $FC $00
    jr c, jr_010_7930                             ; $792E: $38 $00

jr_010_7930:
    nop                                           ; $7930: $00
    nop                                           ; $7931: $00
    nop                                           ; $7932: $00
    nop                                           ; $7933: $00
    nop                                           ; $7934: $00
    nop                                           ; $7935: $00
    nop                                           ; $7936: $00
    nop                                           ; $7937: $00
    nop                                           ; $7938: $00
    nop                                           ; $7939: $00
    nop                                           ; $793A: $00
    nop                                           ; $793B: $00
    nop                                           ; $793C: $00
    nop                                           ; $793D: $00
    nop                                           ; $793E: $00
    nop                                           ; $793F: $00
    rlca                                          ; $7940: $07
    ld [bc], a                                    ; $7941: $02
    rrca                                          ; $7942: $0F
    ld [bc], a                                    ; $7943: $02
    rra                                           ; $7944: $1F
    ld a, [bc]                                    ; $7945: $0A
    ccf                                           ; $7946: $3F
    inc e                                         ; $7947: $1C
    ccf                                           ; $7948: $3F
    inc e                                         ; $7949: $1C
    ld a, $1D                                     ; $794A: $3E $1D
    ld a, $1D                                     ; $794C: $3E $1D
    ld l, $1D                                     ; $794E: $2E $1D
    cpl                                           ; $7950: $2F
    inc e                                         ; $7951: $1C
    ld [hl], $1C                                  ; $7952: $36 $1C
    ld d, $0C                                     ; $7954: $16 $0C
    inc c                                         ; $7956: $0C
    nop                                           ; $7957: $00
    ld d, $0C                                     ; $7958: $16 $0C
    inc c                                         ; $795A: $0C
    nop                                           ; $795B: $00
    ld d, $0C                                     ; $795C: $16 $0C
    inc c                                         ; $795E: $0C
    nop                                           ; $795F: $00
    rst RST_28                                    ; $7960: $EF
    call nz, $C6EF                                ; $7961: $C4 $EF $C6
    rst RST_18                                    ; $7964: $DF
    adc [hl]                                      ; $7965: $8E
    cp $1C                                        ; $7966: $FE $1C
    db $FC                                        ; $7968: $FC
    nop                                           ; $7969: $00
    cp b                                          ; $796A: $B8
    ld d, b                                       ; $796B: $50
    cp [hl]                                       ; $796C: $BE
    ld b, b                                       ; $796D: $40
    rst RST_38                                    ; $796E: $FF
    ld b, $1F                                     ; $796F: $06 $1F
    ld bc, $001F                                  ; $7971: $01 $1F $00
    rlca                                          ; $7974: $07
    nop                                           ; $7975: $00
    ld bc, $0000                                  ; $7976: $01 $00 $00
    nop                                           ; $7979: $00
    nop                                           ; $797A: $00
    nop                                           ; $797B: $00
    nop                                           ; $797C: $00
    nop                                           ; $797D: $00
    nop                                           ; $797E: $00
    nop                                           ; $797F: $00
    ld e, $0C                                     ; $7980: $1E $0C
    ld d, $0C                                     ; $7982: $16 $0C
    ld d, $0C                                     ; $7984: $16 $0C
    inc c                                         ; $7986: $0C

jr_010_7987:
    nop                                           ; $7987: $00
    nop                                           ; $7988: $00
    nop                                           ; $7989: $00
    nop                                           ; $798A: $00
    nop                                           ; $798B: $00
    nop                                           ; $798C: $00
    nop                                           ; $798D: $00
    nop                                           ; $798E: $00
    nop                                           ; $798F: $00
    nop                                           ; $7990: $00
    nop                                           ; $7991: $00
    nop                                           ; $7992: $00
    nop                                           ; $7993: $00
    nop                                           ; $7994: $00
    nop                                           ; $7995: $00
    nop                                           ; $7996: $00
    nop                                           ; $7997: $00
    nop                                           ; $7998: $00
    nop                                           ; $7999: $00
    nop                                           ; $799A: $00
    nop                                           ; $799B: $00
    nop                                           ; $799C: $00
    nop                                           ; $799D: $00
    nop                                           ; $799E: $00
    nop                                           ; $799F: $00
    ccf                                           ; $79A0: $3F
    nop                                           ; $79A1: $00
    daa                                           ; $79A2: $27
    jr jr_010_79C4                                ; $79A3: $18 $1F

    nop                                           ; $79A5: $00
    rrca                                          ; $79A6: $0F
    nop                                           ; $79A7: $00
    ld a, $00                                     ; $79A8: $3E $00
    ld d, h                                       ; $79AA: $54
    jr z, jr_010_7A15                             ; $79AB: $28 $68

    db $10                                        ; $79AD: $10
    jr z, jr_010_79C0                             ; $79AE: $28 $10

    ld sp, $0100                                  ; $79B0: $31 $00 $01
    nop                                           ; $79B3: $00
    nop                                           ; $79B4: $00
    nop                                           ; $79B5: $00
    nop                                           ; $79B6: $00
    nop                                           ; $79B7: $00
    ld bc, $0100                                  ; $79B8: $01 $00 $01
    nop                                           ; $79BB: $00
    inc bc                                        ; $79BC: $03
    ld bc, $0107                                  ; $79BD: $01 $07 $01

jr_010_79C0:
    rrca                                          ; $79C0: $0F
    ld b, $1E                                     ; $79C1: $06 $1E
    inc c                                         ; $79C3: $0C

jr_010_79C4:
    ld a, $1C                                     ; $79C4: $3E $1C
    ld a, [hl]                                    ; $79C6: $7E
    jr nc, jr_010_7A39                            ; $79C7: $30 $70

    nop                                           ; $79C9: $00
    nop                                           ; $79CA: $00
    nop                                           ; $79CB: $00
    nop                                           ; $79CC: $00
    nop                                           ; $79CD: $00
    nop                                           ; $79CE: $00
    nop                                           ; $79CF: $00
    nop                                           ; $79D0: $00
    nop                                           ; $79D1: $00
    nop                                           ; $79D2: $00
    nop                                           ; $79D3: $00
    nop                                           ; $79D4: $00
    nop                                           ; $79D5: $00
    nop                                           ; $79D6: $00
    nop                                           ; $79D7: $00
    nop                                           ; $79D8: $00
    nop                                           ; $79D9: $00
    nop                                           ; $79DA: $00
    nop                                           ; $79DB: $00
    nop                                           ; $79DC: $00
    nop                                           ; $79DD: $00
    nop                                           ; $79DE: $00
    nop                                           ; $79DF: $00
    nop                                           ; $79E0: $00
    nop                                           ; $79E1: $00
    nop                                           ; $79E2: $00
    nop                                           ; $79E3: $00
    nop                                           ; $79E4: $00
    nop                                           ; $79E5: $00
    nop                                           ; $79E6: $00
    nop                                           ; $79E7: $00
    ld bc, $0100                                  ; $79E8: $01 $00 $01
    nop                                           ; $79EB: $00
    scf                                           ; $79EC: $37
    nop                                           ; $79ED: $00
    ld a, $15                                     ; $79EE: $3E $15
    dec e                                         ; $79F0: $1D
    dec bc                                        ; $79F1: $0B
    rrca                                          ; $79F2: $0F
    ld b, $0E                                     ; $79F3: $06 $0E
    ld bc, $0207                                  ; $79F5: $01 $07 $02
    rrca                                          ; $79F8: $0F
    nop                                           ; $79F9: $00
    rrca                                          ; $79FA: $0F
    nop                                           ; $79FB: $00
    rlca                                          ; $79FC: $07
    inc bc                                        ; $79FD: $03
    rrca                                          ; $79FE: $0F
    inc b                                         ; $79FF: $04
    dec e                                         ; $7A00: $1D
    ld [bc], a                                    ; $7A01: $02
    cp $01                                        ; $7A02: $FE $01
    cp $7D                                        ; $7A04: $FE $7D
    rst RST_38                                    ; $7A06: $FF
    inc c                                         ; $7A07: $0C
    rrca                                          ; $7A08: $0F
    nop                                           ; $7A09: $00
    inc bc                                        ; $7A0A: $03
    nop                                           ; $7A0B: $00
    inc c                                         ; $7A0C: $0C
    inc bc                                        ; $7A0D: $03
    ld [hl], b                                    ; $7A0E: $70
    rrca                                          ; $7A0F: $0F
    db $FD                                        ; $7A10: $FD
    ld [hl], d                                    ; $7A11: $72
    ld a, $FC                                     ; $7A12: $3E $FC
    rst RST_10                                    ; $7A14: $D7

jr_010_7A15:
    ld a, $FF                                     ; $7A15: $3E $FF
    ld b, e                                       ; $7A17: $43
    ei                                            ; $7A18: $FB
    ldh a, [$FFF0]                                ; $7A19: $F0 $F0
    ldh [$FFE0], a                                ; $7A1B: $E0 $E0
    add b                                         ; $7A1D: $80
    add b                                         ; $7A1E: $80
    nop                                           ; $7A1F: $00
    add b                                         ; $7A20: $80
    nop                                           ; $7A21: $00
    ld b, b                                       ; $7A22: $40
    add b                                         ; $7A23: $80
    ld b, b                                       ; $7A24: $40
    add b                                         ; $7A25: $80
    ld h, b                                       ; $7A26: $60
    add b                                         ; $7A27: $80
    ret nc                                        ; $7A28: $D0

    and b                                         ; $7A29: $A0
    xor $70                                       ; $7A2A: $EE $70
    ld sp, hl                                     ; $7A2C: $F9
    ld l, [hl]                                    ; $7A2D: $6E
    cp $47                                        ; $7A2E: $FE $47
    rst RST_00                                    ; $7A30: $C7
    cp e                                          ; $7A31: $BB
    rst RST_18                                    ; $7A32: $DF
    cp l                                          ; $7A33: $BD
    rst RST_38                                    ; $7A34: $FF
    dec a                                         ; $7A35: $3D
    cp a                                          ; $7A36: $BF
    ld e, c                                       ; $7A37: $59
    rra                                           ; $7A38: $1F

jr_010_7A39:
    db $E4                                        ; $7A39: $E4
    ld a, $DC                                     ; $7A3A: $3E $DC
    ld a, h                                       ; $7A3C: $7C
    cp b                                          ; $7A3D: $B8
    db $FC                                        ; $7A3E: $FC
    ld a, b                                       ; $7A3F: $78
    ld hl, sp-$50                                 ; $7A40: $F8 $B0
    ldh a, [rP1]                                  ; $7A42: $F0 $00
    ldh a, [rP1]                                  ; $7A44: $F0 $00
    ldh a, [rP1]                                  ; $7A46: $F0 $00
    ld h, b                                       ; $7A48: $60
    add b                                         ; $7A49: $80
    add b                                         ; $7A4A: $80
    nop                                           ; $7A4B: $00
    nop                                           ; $7A4C: $00
    nop                                           ; $7A4D: $00
    nop                                           ; $7A4E: $00
    nop                                           ; $7A4F: $00
    ldh [rP1], a                                  ; $7A50: $E0 $00
    ldh a, [$FFE0]                                ; $7A52: $F0 $E0
    ldh a, [$FF60]                                ; $7A54: $F0 $60
    ld [hl], b                                    ; $7A56: $70
    jr nz, jr_010_7AC9                            ; $7A57: $20 $70

    jr nz, jr_010_7A8B                            ; $7A59: $20 $30

    nop                                           ; $7A5B: $00
    nop                                           ; $7A5C: $00
    nop                                           ; $7A5D: $00
    nop                                           ; $7A5E: $00
    nop                                           ; $7A5F: $00
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
    add b                                         ; $7A6C: $80
    nop                                           ; $7A6D: $00
    ld b, b                                       ; $7A6E: $40
    add b                                         ; $7A6F: $80
    ret nz                                        ; $7A70: $C0

    add b                                         ; $7A71: $80
    and b                                         ; $7A72: $A0
    ret nz                                        ; $7A73: $C0

    ldh [$FFC0], a                                ; $7A74: $E0 $C0
    ldh [$FFC0], a                                ; $7A76: $E0 $C0
    ldh a, [$FF60]                                ; $7A78: $F0 $60
    ld [hl], b                                    ; $7A7A: $70
    jr nz, jr_010_7AB5                            ; $7A7B: $20 $38

    db $10                                        ; $7A7D: $10
    jr jr_010_7A80                                ; $7A7E: $18 $00

jr_010_7A80:
    nop                                           ; $7A80: $00
    nop                                           ; $7A81: $00
    ccf                                           ; $7A82: $3F
    nop                                           ; $7A83: $00
    ld b, b                                       ; $7A84: $40
    ccf                                           ; $7A85: $3F
    sub b                                         ; $7A86: $90
    ld l, a                                       ; $7A87: $6F
    adc [hl]                                      ; $7A88: $8E
    ld [hl], c                                    ; $7A89: $71
    add b                                         ; $7A8A: $80

jr_010_7A8B:
    ld a, a                                       ; $7A8B: $7F
    add b                                         ; $7A8C: $80
    ld a, a                                       ; $7A8D: $7F
    add b                                         ; $7A8E: $80
    ld a, a                                       ; $7A8F: $7F
    and c                                         ; $7A90: $A1
    ld e, [hl]                                    ; $7A91: $5E
    sbc [hl]                                      ; $7A92: $9E
    ld h, c                                       ; $7A93: $61
    ld b, b                                       ; $7A94: $40
    ccf                                           ; $7A95: $3F
    jr nc, jr_010_7AA7                            ; $7A96: $30 $0F

    ld [$0407], sp                                ; $7A98: $08 $07 $04
    inc bc                                        ; $7A9B: $03
    ld [bc], a                                    ; $7A9C: $02
    ld bc, $0001                                  ; $7A9D: $01 $01 $00
    nop                                           ; $7AA0: $00
    nop                                           ; $7AA1: $00
    rst RST_38                                    ; $7AA2: $FF
    nop                                           ; $7AA3: $00
    nop                                           ; $7AA4: $00
    rst RST_38                                    ; $7AA5: $FF
    db $10                                        ; $7AA6: $10

jr_010_7AA7:
    rst RST_28                                    ; $7AA7: $EF
    halt                                          ; $7AA8: $76
    adc c                                         ; $7AA9: $89
    ld a, [de]                                    ; $7AAA: $1A
    push hl                                       ; $7AAB: $E5
    ld [de], a                                    ; $7AAC: $12
    db $ED                                        ; $7AAD: $ED
    ld [hl-], a                                   ; $7AAE: $32
    call $AD52                                    ; $7AAF: $CD $52 $AD
    ld de, $00EE                                  ; $7AB2: $11 $EE $00

jr_010_7AB5:
    rst RST_38                                    ; $7AB5: $FF
    rst RST_38                                    ; $7AB6: $FF
    nop                                           ; $7AB7: $00
    add b                                         ; $7AB8: $80
    nop                                           ; $7AB9: $00
    add b                                         ; $7ABA: $80
    nop                                           ; $7ABB: $00
    add b                                         ; $7ABC: $80
    nop                                           ; $7ABD: $00
    add b                                         ; $7ABE: $80
    nop                                           ; $7ABF: $00
    nop                                           ; $7AC0: $00
    nop                                           ; $7AC1: $00
    nop                                           ; $7AC2: $00
    nop                                           ; $7AC3: $00
    nop                                           ; $7AC4: $00
    nop                                           ; $7AC5: $00
    nop                                           ; $7AC6: $00
    nop                                           ; $7AC7: $00
    nop                                           ; $7AC8: $00

jr_010_7AC9:
    nop                                           ; $7AC9: $00
    rst RST_38                                    ; $7ACA: $FF
    nop                                           ; $7ACB: $00
    nop                                           ; $7ACC: $00
    rst RST_38                                    ; $7ACD: $FF
    ld a, $C1                                     ; $7ACE: $3E $C1
    ret z                                         ; $7AD0: $C8

    scf                                           ; $7AD1: $37
    ld d, $E9                                     ; $7AD2: $16 $E9
    jr nz, jr_010_7AB5                            ; $7AD4: $20 $DF

    and b                                         ; $7AD6: $A0
    ld e, a                                       ; $7AD7: $5F
    and b                                         ; $7AD8: $A0
    ld e, a                                       ; $7AD9: $5F
    inc e                                         ; $7ADA: $1C
    db $E3                                        ; $7ADB: $E3
    nop                                           ; $7ADC: $00
    rst RST_38                                    ; $7ADD: $FF
    rst RST_38                                    ; $7ADE: $FF
    nop                                           ; $7ADF: $00
    nop                                           ; $7AE0: $00
    nop                                           ; $7AE1: $00
    nop                                           ; $7AE2: $00
    nop                                           ; $7AE3: $00
    nop                                           ; $7AE4: $00
    nop                                           ; $7AE5: $00
    nop                                           ; $7AE6: $00
    nop                                           ; $7AE7: $00
    nop                                           ; $7AE8: $00
    nop                                           ; $7AE9: $00
    db $FC                                        ; $7AEA: $FC
    nop                                           ; $7AEB: $00
    ld [bc], a                                    ; $7AEC: $02
    db $FC                                        ; $7AED: $FC
    ld hl, $F1DE                                  ; $7AEE: $21 $DE $F1
    ld c, $21                                     ; $7AF1: $0E $21
    sbc $F5                                       ; $7AF3: $DE $F5
    ld a, [bc]                                    ; $7AF5: $0A
    ld b, l                                       ; $7AF6: $45
    cp d                                          ; $7AF7: $BA
    ld b, l                                       ; $7AF8: $45
    cp d                                          ; $7AF9: $BA
    add hl, sp                                    ; $7AFA: $39
    add $02                                       ; $7AFB: $C6 $02
    db $FC                                        ; $7AFD: $FC
    db $FC                                        ; $7AFE: $FC
    nop                                           ; $7AFF: $00
    nop                                           ; $7B00: $00
    nop                                           ; $7B01: $00
    ld a, a                                       ; $7B02: $7F
    nop                                           ; $7B03: $00
    add b                                         ; $7B04: $80
    ld a, a                                       ; $7B05: $7F
    add h                                         ; $7B06: $84
    ld a, e                                       ; $7B07: $7B
    adc b                                         ; $7B08: $88
    ld [hl], a                                    ; $7B09: $77
    sub b                                         ; $7B0A: $90
    ld l, a                                       ; $7B0B: $6F
    and b                                         ; $7B0C: $A0
    ld e, a                                       ; $7B0D: $5F
    sbc b                                         ; $7B0E: $98

jr_010_7B0F:
    ld h, a                                       ; $7B0F: $67
    add h                                         ; $7B10: $84
    ld a, e                                       ; $7B11: $7B
    add d                                         ; $7B12: $82
    ld a, l                                       ; $7B13: $7D
    add b                                         ; $7B14: $80
    ld a, a                                       ; $7B15: $7F
    ld [hl], b                                    ; $7B16: $70
    rrca                                          ; $7B17: $0F
    ld [$0407], sp                                ; $7B18: $08 $07 $04
    inc bc                                        ; $7B1B: $03
    ld [bc], a                                    ; $7B1C: $02
    ld bc, $0001                                  ; $7B1D: $01 $01 $00
    nop                                           ; $7B20: $00
    nop                                           ; $7B21: $00
    rst RST_38                                    ; $7B22: $FF
    nop                                           ; $7B23: $00
    nop                                           ; $7B24: $00
    rst RST_38                                    ; $7B25: $FF
    jr jr_010_7B0F                                ; $7B26: $18 $E7

    ld b, b                                       ; $7B28: $40
    cp a                                          ; $7B29: $BF
    ld e, h                                       ; $7B2A: $5C
    and e                                         ; $7B2B: $A3
    ld h, d                                       ; $7B2C: $62
    sbc l                                         ; $7B2D: $9D
    ld b, d                                       ; $7B2E: $42
    cp l                                          ; $7B2F: $BD
    ld [bc], a                                    ; $7B30: $02
    db $FD                                        ; $7B31: $FD
    inc e                                         ; $7B32: $1C
    db $E3                                        ; $7B33: $E3
    nop                                           ; $7B34: $00
    rst RST_38                                    ; $7B35: $FF
    rst RST_38                                    ; $7B36: $FF
    nop                                           ; $7B37: $00
    add b                                         ; $7B38: $80
    nop                                           ; $7B39: $00
    add b                                         ; $7B3A: $80
    nop                                           ; $7B3B: $00
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
    rst RST_38                                    ; $7B4A: $FF
    nop                                           ; $7B4B: $00
    nop                                           ; $7B4C: $00
    rst RST_38                                    ; $7B4D: $FF
    inc a                                         ; $7B4E: $3C
    jp $FF00                                      ; $7B4F: $C3 $00 $FF


    ld a, h                                       ; $7B52: $7C
    add e                                         ; $7B53: $83
    ld [$18F7], sp                                ; $7B54: $08 $F7 $18
    rst RST_20                                    ; $7B57: $E7
    inc h                                         ; $7B58: $24
    db $DB                                        ; $7B59: $DB
    ld b, e                                       ; $7B5A: $43
    cp h                                          ; $7B5B: $BC
    nop                                           ; $7B5C: $00
    rst RST_38                                    ; $7B5D: $FF
    rst RST_38                                    ; $7B5E: $FF
    nop                                           ; $7B5F: $00
    nop                                           ; $7B60: $00
    nop                                           ; $7B61: $00
    nop                                           ; $7B62: $00
    nop                                           ; $7B63: $00
    nop                                           ; $7B64: $00
    nop                                           ; $7B65: $00
    nop                                           ; $7B66: $00
    nop                                           ; $7B67: $00
    nop                                           ; $7B68: $00
    nop                                           ; $7B69: $00
    cp $00                                        ; $7B6A: $FE $00
    ld bc, $6DFE                                  ; $7B6C: $01 $FE $6D
    sub d                                         ; $7B6F: $92
    ld l, l                                       ; $7B70: $6D
    sub d                                         ; $7B71: $92
    ld l, l                                       ; $7B72: $6D
    sub d                                         ; $7B73: $92
    ld l, l                                       ; $7B74: $6D
    sub d                                         ; $7B75: $92
    ld l, l                                       ; $7B76: $6D
    sub d                                         ; $7B77: $92
    ld bc, $6DFE                                  ; $7B78: $01 $FE $6D
    sub d                                         ; $7B7B: $92
    ld bc, $FEFE                                  ; $7B7C: $01 $FE $FE
    nop                                           ; $7B7F: $00
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

Call_010_7F20:
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
